import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C012
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A121801: Expansion of 2*x^2*(3-x)/((1+x)*(1-3*x+x^2)).

The programs for A121801, the canonical program `A121801.P5580825109357740483` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121801 has offset 1).

The definition of A121801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((6x-2x^2)/(1-2x-2x^2+x^3))` (program `A121801.P5580825109357740483`, by `A121801.P5580825109357740483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121801.P5580825109357740483

`ogf((6x-2x^2)/(1-2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121801

/-- `ogf((6x-2x^2)/(1-2x-2x^2+x^3))` -/
def P5580825109357740483.Spec : Prop :=
  ∀ n, P5580825109357740483.a n = A121801 (n + 1)

theorem P5580825109357740483.correct : P5580825109357740483.Spec := by
  intro n
  simp only [A121801, Nat.add_sub_cancel]

end A121801

/-! ## A121801.P15812861154374037724

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=6, a(2)=10`
-/

namespace A121801.P15812861154374037724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 10] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A121801.P15812861154374037724

namespace A121801

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P15812861154374037724.Spec : Prop :=
  ∀ n, P15812861154374037724.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P6580856578069126866

`2*(A000045(n+1)*A000045(n+2)+(-1)^(n+1))`
-/

namespace A121801.P6580856578069126866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000045 (n + 1) * A000045 (n + 2) + (-1) ^ (n + 1))

end

end A121801.P6580856578069126866

namespace A121801

/-- `2*(A000045(n+1)*A000045(n+2)+(-1)^(n+1))` -/
def P6580856578069126866.Spec : Prop :=
  ∀ n, P6580856578069126866.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P1720385800636586880

`2*(A000032(2*(n+1)+1)+4*(-1)^(n+1))/5`
-/

namespace A121801.P1720385800636586880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (A000032 (2 * (n + 1) + 1) + 4 * (-1) ^ (n + 1)) : ℚ) / 5

end

end A121801.P1720385800636586880

namespace A121801

/-- `2*(A000032(2*(n+1)+1)+4*(-1)^(n+1))/5` -/
def P1720385800636586880.Spec : Prop :=
  ∀ n, P1720385800636586880.a n = (A121801 (n + 1) : ℚ)

end A121801

/-! ## A121801.P17883955844691147733

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=6, a(2)=10`
-/

namespace A121801.P17883955844691147733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 10] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A121801.P17883955844691147733

namespace A121801

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P17883955844691147733.Spec : Prop :=
  ∀ n, P17883955844691147733.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P4702176548120724684

`Δ[A175395(n+1)]`
-/

namespace A121801.P4702176548120724684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P4702176548120724684

namespace A121801

/-- `Δ[A175395(n+1)]` -/
def P4702176548120724684.Spec : Prop :=
  ∀ n, P4702176548120724684.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P6247473582314573836

`Δ[A382845(n+1)]`
-/

namespace A121801.P6247473582314573836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P6247473582314573836

namespace A121801

/-- `Δ[A382845(n+1)]` -/
def P6247473582314573836.Spec : Prop :=
  ∀ n, P6247473582314573836.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P11519474943837436517

`Δ[A392415(n+2)]`
-/

namespace A121801.P11519474943837436517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P11519474943837436517

namespace A121801

/-- `Δ[A392415(n+2)]` -/
def P11519474943837436517.Spec : Prop :=
  ∀ n, P11519474943837436517.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P5342324853500433436

`2*A226205(n+2)`
-/

namespace A121801.P5342324853500433436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226205 (n + 2)

end

end A121801.P5342324853500433436

namespace A121801

/-- `2*A226205(n+2)` -/
def P5342324853500433436.Spec : Prop :=
  ∀ n, P5342324853500433436.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P225466138786928016

`2*A195971(2*n)`
-/

namespace A121801.P225466138786928016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195971 (2 * n)

end

end A121801.P225466138786928016

namespace A121801

/-- `2*A195971(2*n)` -/
def P225466138786928016.Spec : Prop :=
  ∀ n, P225466138786928016.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P13745750433107928473

`Δ[2*Δ[A001654(n)]]`
-/

namespace A121801.P13745750433107928473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P13745750433107928473

namespace A121801

/-- `Δ[2*Δ[A001654(n)]]` -/
def P13745750433107928473.Spec : Prop :=
  ∀ n, P13745750433107928473.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P13128271103559069325

`abs(2*A121646(n+2))`
-/

namespace A121801.P13128271103559069325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A121646 (n + 2)|

end

end A121801.P13128271103559069325

namespace A121801

/-- `abs(2*A121646(n+2))` -/
def P13128271103559069325.Spec : Prop :=
  ∀ n, P13128271103559069325.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P1800563054281472502

`Δ[2*A007598(n+1)]`
-/

namespace A121801.P1800563054281472502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P1800563054281472502

namespace A121801

/-- `Δ[2*A007598(n+1)]` -/
def P1800563054281472502.Spec : Prop :=
  ∀ n, P1800563054281472502.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P17088211684838091625

`Δ[2*A245306(n+1)]`
-/

namespace A121801.P17088211684838091625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A245306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P17088211684838091625

namespace A121801

/-- `Δ[2*A245306(n+1)]` -/
def P17088211684838091625.Spec : Prop :=
  ∀ n, P17088211684838091625.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P2928439391755583934

`Δ[A295680(2*n+3)]`
-/

namespace A121801.P2928439391755583934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P2928439391755583934

namespace A121801

/-- `Δ[A295680(2*n+3)]` -/
def P2928439391755583934.Spec : Prop :=
  ∀ n, P2928439391755583934.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P9585355538275637337

`Δ[2*A006498(2*n)]`
-/

namespace A121801.P9585355538275637337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006498 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P9585355538275637337

namespace A121801

/-- `Δ[2*A006498(2*n)]` -/
def P9585355538275637337.Spec : Prop :=
  ∀ n, P9585355538275637337.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P4983645470201204008

`Δ[2*∑[A212804(n)]²]`
-/

namespace A121801.P4983645470201204008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P4983645470201204008

namespace A121801

/-- `Δ[2*∑[A212804(n)]²]` -/
def P4983645470201204008.Spec : Prop :=
  ∀ n, P4983645470201204008.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P308219218957161973

`Δ[2*A074677(Δ[n²])]`
-/

namespace A121801.P308219218957161973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074677 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P308219218957161973

namespace A121801

/-- `Δ[2*A074677(Δ[n²])]` -/
def P308219218957161973.Spec : Prop :=
  ∀ n, P308219218957161973.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P12801061327305780202

`2*A236165(2*n+3)`
-/

namespace A121801.P12801061327305780202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A236165 (2 * n + 3)

end

end A121801.P12801061327305780202

namespace A121801

/-- `2*A236165(2*n+3)` -/
def P12801061327305780202.Spec : Prop :=
  ∀ n, P12801061327305780202.a n = A121801 (n + 1)

end A121801

/-! ## A121801.P7001948299683566841

`Δ[2*A000045(n+1)²]`
-/

namespace A121801.P7001948299683566841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121801.P7001948299683566841

namespace A121801

/-- `Δ[2*A000045(n+1)²]` -/
def P7001948299683566841.Spec : Prop :=
  ∀ n, P7001948299683566841.a n = A121801 (n + 1)

end A121801

/-!
# A121802: The numbers A121263(n) converge 2-adically. This sequence shows their 2-adic limit.

The programs for A121802, there is no canonical definition to state claims against.
-/

/-! ## A121802.P5873221328329187466

`A156258(A034886(A314433(n)-A005408(n)))`
-/

namespace A121802.P5873221328329187466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156258 (A034886 (A314433 n - A005408 n).toNat).toNat

end

end A121802.P5873221328329187466

/-! ## A121802.P14391812289897293145

`A004547(A000593(n+1)*A329052(2*(n+2)))`
-/

namespace A121802.P14391812289897293145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A000593 (n + 1) * A329052 (2 * (n + 2))).toNat

end

end A121802.P14391812289897293145

/-! ## A121802.P16331129096658136489

`A190545(A288344(n))%2`
-/

namespace A121802.P16331129096658136489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190545 (A288344 n).toNat) 2

end

end A121802.P16331129096658136489

/-! ## A121802.P1789175131405900450

`A010060(A071542(A248100(n))+1)`
-/

namespace A121802.P1789175131405900450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A071542 (A248100 n).toNat + 1).toNat

end

end A121802.P1789175131405900450

/-! ## A121802.P12574251517585358893

`and(A126646(n)², A190545(A288344(n)))`
-/

namespace A121802.P12574251517585358893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n ^ 2) (A190545 (A288344 n).toNat)

end

end A121802.P12574251517585358893

/-!
# A121805: The "comma sequence": the lexicographically earliest sequence of positive numbers with the property that the sequence formed by the pairs of digits adjacent to the commas between the terms is the same as the sequence of successive differences between the terms.

The programs for A121805, there is no canonical definition to state claims against.
-/

/-! ## A121805.P809560140428178641

`A366487(n)+a(n-1)` with `a(0)=1`
-/

namespace A121805.P809560140428178641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A366487 n + a (n - 1)

end

end A121805.P809560140428178641

/-! ## A121805.P1837537238751455768

`A367338(a(n-1))` with `a(0)=1`
-/

namespace A121805.P1837537238751455768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A121805.P1837537238751455768

/-! ## A121805.P4423222780332774482

`eq[1, A367366(n+1)]+1`
-/

namespace A121805.P4423222780332774482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121805.P4423222780332774482

/-!
# A121807: Partial sums of A004676.

The programs for A121807, the canonical program `A121807.P13313933923101862632` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121807 has offset 1).

The definition of A121807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121807.P13313933923101862632

`∑[A004676(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121807

/-- `∑[A004676(n+1)]` -/
def P13313933923101862632.Spec : Prop :=
  ∀ n, P13313933923101862632.a n = A121807 (n + 1)

theorem P13313933923101862632.correct : P13313933923101862632.Spec := by
  intro n
  simp only [A121807, Nat.add_sub_cancel]

end A121807

/-! ## A121807.P9918346119519006307

`∑[A303593(A303595(n+1))]`
-/

namespace A121807.P9918346119519006307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303593 (A303595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P9918346119519006307

namespace A121807

/-- `∑[A303593(A303595(n+1))]` -/
def P9918346119519006307.Spec : Prop :=
  ∀ n, P9918346119519006307.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P6550479972888790800

`∑[A007088(A000040(n+1))]`
-/

namespace A121807.P6550479972888790800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P6550479972888790800

namespace A121807

/-- `∑[A007088(A000040(n+1))]` -/
def P6550479972888790800.Spec : Prop :=
  ∀ n, P6550479972888790800.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P8588063218922762098

`∑[A007088(A008578(n+2))]`
-/

namespace A121807.P8588063218922762098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P8588063218922762098

namespace A121807

/-- `∑[A007088(A008578(n+2))]` -/
def P8588063218922762098.Spec : Prop :=
  ∀ n, P8588063218922762098.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P16952443714128367941

`∑[A007088(record[A006530(n+2)])]`
-/

namespace A121807.P16952443714128367941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P16952443714128367941

namespace A121807

/-- `∑[A007088(record[A006530(n+2)])]` -/
def P16952443714128367941.Spec : Prop :=
  ∀ n, P16952443714128367941.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P8442693324866126286

`∑[A007088(A207790(2*(n+1)))]`
-/

namespace A121807.P8442693324866126286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A207790 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P8442693324866126286

namespace A121807

/-- `∑[A007088(A207790(2*(n+1)))]` -/
def P8442693324866126286.Spec : Prop :=
  ∀ n, P8442693324866126286.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P9939932694005537471

`∑[A007088(record[A000010(n+1)+1])]`
-/

namespace A121807.P9939932694005537471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P9939932694005537471

namespace A121807

/-- `∑[A007088(record[A000010(n+1)+1])]` -/
def P9939932694005537471.Spec : Prop :=
  ∀ n, P9939932694005537471.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P10813427002671737740

`∑[A007088(eq[2, A000005(n+1)]+1)]`
-/

namespace A121807.P10813427002671737740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P10813427002671737740

namespace A121807

/-- `∑[A007088(eq[2, A000005(n+1)]+1)]` -/
def P10813427002671737740.Spec : Prop :=
  ∀ n, P10813427002671737740.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P14465248156244424624

`∑[record[A097585(n+2)]]`
-/

namespace A121807.P14465248156244424624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097585 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P14465248156244424624

namespace A121807

/-- `∑[record[A097585(n+2)]]` -/
def P14465248156244424624.Spec : Prop :=
  ∀ n, P14465248156244424624.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P8399987304335991353

`∑[A007088(record[A074399(n+1)])]`
-/

namespace A121807.P8399987304335991353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P8399987304335991353

namespace A121807

/-- `∑[A007088(record[A074399(n+1)])]` -/
def P8399987304335991353.Spec : Prop :=
  ∀ n, P8399987304335991353.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P14921875219248465774

`∑[A007088(record[A014963(n+2)])]`
-/

namespace A121807.P14921875219248465774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P14921875219248465774

namespace A121807

/-- `∑[A007088(record[A014963(n+2)])]` -/
def P14921875219248465774.Spec : Prop :=
  ∀ n, P14921875219248465774.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P3511778793310427729

`∑[A099820(record[A006530(n+2)])/10]`
-/

namespace A121807.P3511778793310427729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P3511778793310427729

namespace A121807

/-- `∑[A099820(record[A006530(n+2)])/10]` -/
def P3511778793310427729.Spec : Prop :=
  ∀ n, P3511778793310427729.a n = (A121807 (n + 1) : ℚ)

end A121807

/-! ## A121807.P8863253648988244576

`∑[A099820(record[A014963(n+2)])/10]`
-/

namespace A121807.P8863253648988244576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P8863253648988244576

namespace A121807

/-- `∑[A099820(record[A014963(n+2)])/10]` -/
def P8863253648988244576.Spec : Prop :=
  ∀ n, P8863253648988244576.a n = (A121807 (n + 1) : ℚ)

end A121807

/-! ## A121807.P14296515041629023933

`∑[A185544(A100484(n+1))]`
-/

namespace A121807.P14296515041629023933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P14296515041629023933

namespace A121807

/-- `∑[A185544(A100484(n+1))]` -/
def P14296515041629023933.Spec : Prop :=
  ∀ n, P14296515041629023933.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P18049311014702806890

`∑[A185544(A001747(n+2))]`
-/

namespace A121807.P18049311014702806890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A001747 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P18049311014702806890

namespace A121807

/-- `∑[A185544(A001747(n+2))]` -/
def P18049311014702806890.Spec : Prop :=
  ∀ n, P18049311014702806890.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P17682944775166393612

`∑[A007088(eq[2, A226378(2*n)])]`
-/

namespace A121807.P17682944775166393612
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P17682944775166393612

namespace A121807

/-- `∑[A007088(eq[2, A226378(2*n)])]` -/
def P17682944775166393612.Spec : Prop :=
  ∀ n, P17682944775166393612.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P12240510016607615347

`∑[A099821(ceil((A000040(n+1)-1)/2)+1)]-1`
-/

namespace A121807.P12240510016607615347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (⌈(A000040 (n + 1) - 1 : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A121807.P12240510016607615347

namespace A121807

/-- `∑[A099821(ceil((A000040(n+1)-1)/2)+1)]-1` -/
def P12240510016607615347.Spec : Prop :=
  ∀ n, P12240510016607615347.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P14403986687940952859

`∑[A182620(A253769(n+1))]`
-/

namespace A121807.P14403986687940952859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (A253769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P14403986687940952859

namespace A121807

/-- `∑[A182620(A253769(n+1))]` -/
def P14403986687940952859.Spec : Prop :=
  ∀ n, P14403986687940952859.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P5951608283922493855

`∑[floor(A099821(A000040(n+1)+1)/10)]`
-/

namespace A121807.P5951608283922493855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099821 (A000040 (n + 1) + 1).toNat : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P5951608283922493855

namespace A121807

/-- `∑[floor(A099821(A000040(n+1)+1)/10)]` -/
def P5951608283922493855.Spec : Prop :=
  ∀ n, P5951608283922493855.a n = A121807 (n + 1)

end A121807

/-! ## A121807.P2113101097124136777

`∑[A007088(A037126(∑[n+1]))]`
-/

namespace A121807.P2113101097124136777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A037126 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121807.P2113101097124136777

namespace A121807

/-- `∑[A007088(A037126(∑[n+1]))]` -/
def P2113101097124136777.Spec : Prop :=
  ∀ n, P2113101097124136777.a n = A121807 (n + 1)

end A121807

/-!
# A121808: Say what you see in previous term, reporting each digit encountered followed by frequency.

The programs for A121808, there is no canonical definition to state claims against.
-/

/-! ## A121808.P14627845873486024383

`A160265(∑[floor((2-n)/gcd(4, n))²!])`
-/

namespace A121808.P14627845873486024383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (⌊(2 - (n : ℤ) : ℚ) / (Nat.gcd 4 n : ℚ)⌋ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121808.P14627845873486024383

/-!
# A121810: a(n) = a(n - 1)*a(n - 2) + a(n - 2)*a(n - 3) + a(n - 1)*a(n - 3).

The programs for A121810, there is no canonical definition to state claims against.
-/

/-! ## A121810.P14631506670078238567

`a(n-1)*a(n-2)+a(n-2)*a(n-3)+a(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121810.P14631506670078238567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) * a (n - 2) + a (n - 2) * a (n - 3) + a (n - 1) * a (n - 3)

end

end A121810.P14631506670078238567

/-!
# A121811: a(n) is the floor of the first component of M^n * (0, 1, 2, 3) where M is the matrix [[c, 1/2, 1/2, 1/2], [1/2, c, 1/2, 1/2], [1/2, 1/2, c, 1/2], [1/2, 1/2, 1/2, c]] and c=sqrt(3)/2.

The programs for A121811, there is no canonical definition to state claims against.
-/

/-! ## A121811.P11651918015445264077

`A253092(A223626(n+1))`
-/

namespace A121811.P11651918015445264077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A223626 (n + 1)).toNat

end

end A121811.P11651918015445264077

/-! ## A121811.P14019905111785142938

`A000006(∑[∑[A001003(n+1)]+1])-1`
-/

namespace A121811.P14019905111785142938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A121811.P14019905111785142938

/-!
# A121812: a(n) = a(n-4)*a(n-3) + a(n-4)*a(n-2) + a(n-3)*a(n-2) + a(n-4)*a(n-1) + a(n-3)*a(n-1) + a(n-2)*a(n-1).

The programs for A121812, there is no canonical definition to state claims against.
-/

/-! ## A121812.P9022555915562889866

`a(n-4)*a(n-3)+a(n-4)*a(n-2)+a(n-3)*a(n-2)+a(n-4)*a(n-1)+a(n-3)*a(n-1)+a(n-2)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A121812.P9022555915562889866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 4) * a (n - 3) + a (n - 4) * a (n - 2) + a (n - 3) * a (n - 2) + a (n - 4) * a (n - 1) + a (n - 3) * a (n - 1) + a (n - 2) * a (n - 1)

end

end A121812.P9022555915562889866

/-!
# A121813: a(n) = sum_{j=1..4} product_{k=1..4, k<>j} a(n-k).

The programs for A121813, there is no canonical definition to state claims against.
-/

/-! ## A121813.P13381577511719632271

`∑{d}[a(n-1)², A037213(#)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=3`
-/

namespace A121813.P13381577511719632271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 3] fun n f1 =>
  f1 (n - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d

end

end A121813.P13381577511719632271

/-! ## A121813.P13859238879900438874

`A107680(floor((4-6/(n+1))*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A121813.P13859238879900438874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A107680 ⌊(4 - 6 / (n + 1 : ℚ)) * (a (n - 1) : ℚ)⌋.toNat

end

end A121813.P13859238879900438874

/-! ## A121813.P13946811352999920338

`A107680(a(n-1)+n*a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A121813.P13946811352999920338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n a =>
  A107680 (a (n - 1) + (n : ℤ) * a (n - 2)).toNat

end

end A121813.P13946811352999920338

/-! ## A121813.P15686812063888151811

`A107680(a(n-1)-(n*(1-a(n-2))-n))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A121813.P15686812063888151811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n a =>
  A107680 (a (n - 1) - ((n : ℤ) * (1 - a (n - 2)) - (n : ℤ))).toNat

end

end A121813.P15686812063888151811

/-!
# A121814: A 3 X 3 determinant based recursion.

The programs for A121814, there is no canonical definition to state claims against.
-/

/-! ## A121814.P14851990395253883287

`3*a(n-1)*a(n-2)*a(n-3)-a(n-1)^3-a(n-2)^3-a(n-3)^3` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A121814.P14851990395253883287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  3 * (a (n - 1) * (a (n - 2) * a (n - 3))) - a (n - 1) ^ 3 - a (n - 2) ^ 3 - a (n - 3) ^ 3

end

end A121814.P14851990395253883287

/-!
# A121816: Conjectured chromatic number of the square of an outerplanar graph G^2 as a function of the maximum degree of a vertex of G.

The programs for A121816, the canonical program `A121816.P9947323860262936759` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121816 has offset 4).

The definition of A121816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121816.P9947323860262936759

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=9, a(1)=10, a(2)=11, a(3)=12, a(4)=13, a(5)=14, a(6)=16`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121816

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P9947323860262936759.Spec : Prop :=
  ∀ n, P9947323860262936759.a n = A121816 (n + 4)

theorem P9947323860262936759.correct : P9947323860262936759.Spec := by
  intro n
  simp only [A121816, Nat.add_sub_cancel]

end A121816

/-! ## A121816.P14197834521606514189

`comp[3*(n+2)]+9`
-/

namespace A121816.P14197834521606514189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 9

end

end A121816.P14197834521606514189

namespace A121816

/-- `comp[3*(n+2)]+9` -/
def P14197834521606514189.Spec : Prop :=
  ∀ n, (P14197834521606514189.a n : ℤ) = A121816 (n + 4)

end A121816

/-! ## A121816.P18387143748053915751

`∑[A010163(A163985(A267261(n)))]`
-/

namespace A121816.P18387143748053915751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010163 (A163985 (A267261 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121816.P18387143748053915751

namespace A121816

/-- `∑[A010163(A163985(A267261(n)))]` -/
def P18387143748053915751.Spec : Prop :=
  ∀ n, P18387143748053915751.a n = A121816 (n + 4)

end A121816

/-! ## A121816.P12208338768605124220

`record[A006368(A246416(n))+9]`
-/

namespace A121816.P12208338768605124220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A246416 n).toNat + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121816.P12208338768605124220

namespace A121816

/-- `record[A006368(A246416(n))+9]` -/
def P12208338768605124220.Spec : Prop :=
  ∀ n, P12208338768605124220.a n = A121816 (n + 4)

end A121816

/-! ## A121816.P1549227542675682332

`record[n+9-A029578(A008619(n))]`
-/

namespace A121816.P1549227542675682332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 9 : ℤ) - A029578 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121816.P1549227542675682332

namespace A121816

/-- `record[n+9-A029578(A008619(n))]` -/
def P1549227542675682332.Spec : Prop :=
  ∀ n, P1549227542675682332.a n = A121816 (n + 4)

end A121816

/-! ## A121816.P5285389258333156692

`∑[gcd(A051161(3*(n+1)), A257260(3*n+1))]`
-/

namespace A121816.P5285389258333156692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051161 (3 * (n + 1))) (A257260 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121816.P5285389258333156692

namespace A121816

/-- `∑[gcd(A051161(3*(n+1)), A257260(3*n+1))]` -/
def P5285389258333156692.Spec : Prop :=
  ∀ n, (P5285389258333156692.a n : ℤ) = A121816 (n + 4)

end A121816

/-! ## A121816.P11311077703585105017

`record[gcd(n, A250122(A008576(n))²)]`
-/

namespace A121816.P11311077703585105017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A250122 (A008576 n).toNat ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121816.P11311077703585105017

namespace A121816

/-- `record[gcd(n, A250122(A008576(n))²)]` -/
def P11311077703585105017.Spec : Prop :=
  ∀ n, (P11311077703585105017.a n : ℤ) = A121816 (n + 4)

end A121816

/-!
# A121817: Numbers m such that 23 + 36*m*(m+1) is prime.

The programs for A121817, there is no canonical definition to state claims against.
-/

/-! ## A121817.P490917831274489236

`floor(A121250(n+1)/6)`
-/

namespace A121817.P490917831274489236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121250 (n + 1) : ℚ) / 6⌋

end

end A121817.P490917831274489236

/-! ## A121817.P2754183283999885411

`floor(sqrt(A243449(n+1))/6)`
-/

namespace A121817.P2754183283999885411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A243449 (n + 1) : ℝ) / 6⌋

end

end A121817.P2754183283999885411

/-! ## A121817.P2792620195339058138

`A004524(A121250(n+1)/3)`
-/

namespace A121817.P2792620195339058138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.roundAway ((A121250 (n + 1) : ℚ) / 3)).toNat

end

end A121817.P2792620195339058138

/-! ## A121817.P17248770877281021709

`A004526(A121250(n+1)/3)`
-/

namespace A121817.P17248770877281021709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A121250 (n + 1) : ℚ) / 3)).toNat

end

end A121817.P17248770877281021709

/-! ## A121817.P13316083535814162709

`A028242(A121250(n+1)/3)`
-/

namespace A121817.P13316083535814162709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.roundAway ((A121250 (n + 1) : ℚ) / 3)).toNat

end

end A121817.P13316083535814162709

/-! ## A121817.P13070831772972046387

`A008615(A121250(n+1))`
-/

namespace A121817.P13070831772972046387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A121250 (n + 1)).toNat

end

end A121817.P13070831772972046387

/-! ## A121817.P11432137895114352153

`A152467(A121250(n+1)+1)`
-/

namespace A121817.P11432137895114352153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A121250 (n + 1) + 1).toNat

end

end A121817.P11432137895114352153

/-! ## A121817.P15544917105065517659

`A024164(A121250(n+1)+3)`
-/

namespace A121817.P15544917105065517659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (A121250 (n + 1) + 3).toNat

end

end A121817.P15544917105065517659

/-! ## A121817.P3030749378011893255

`A112689(A121250(n+1)-3)`
-/

namespace A121817.P3030749378011893255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A121250 (n + 1) - 3).toNat

end

end A121817.P3030749378011893255

/-! ## A121817.P12336473142858827373

`A214394(A121250(n+1)-3)`
-/

namespace A121817.P12336473142858827373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (A121250 (n + 1) - 3).toNat

end

end A121817.P12336473142858827373

/-!
# A121818: Average of atomic weights of all isotopes of first n elements, rounded to nearest integer.

The programs for A121818, there is no canonical definition to state claims against.
-/

/-! ## A121818.P15927279316914579381

`ceil(∑[root(A210611(n+1), 99)])`
-/

namespace A121818.P15927279316914579381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210611 (n + 1) : ℝ) ^ (1 / (99 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A121818.P15927279316914579381

/-! ## A121818.P8367142517332519421

`lt[A266477(n), A116608(A181821(n+1))]`
-/

namespace A121818.P8367142517332519421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266477 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116608 (A181821 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121818.P8367142517332519421

/-! ## A121818.P3150405088202539284

`lt[A285332(n+3), A283942(A114949(n))]`
-/

namespace A121818.P3150405088202539284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285332 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283942 (A114949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121818.P3150405088202539284

/-! ## A121818.P12282167411256734565

`lt[A025837(A025833(2*n+1)), A000003(3*n+1)]`
-/

namespace A121818.P12282167411256734565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025837 (A025833 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121818.P12282167411256734565

/-! ## A121818.P17617779772680588109

`lt[A324924(2*n+3), A238279(A080197(3*n+1))]`
-/

namespace A121818.P17617779772680588109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238279 (A080197 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121818.P17617779772680588109

/-!
# A121820: Numbers m such that greatest prime divisor of (m-th prime + 1) is 3.

The programs for A121820, there is no canonical definition to state claims against.
-/

/-! ## A121820.P15151139892662897042

`eq[3, A006530(A028815(n))]`
-/

namespace A121820.P15151139892662897042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121820.P15151139892662897042

/-! ## A121820.P14781835965563168041

`record[A061395(A306073(n+1))]`
-/

namespace A121820.P14781835965563168041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A306073 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121820.P14781835965563168041

/-! ## A121820.P9369733280653952844

`A000720(p?[A306073(n+1)])`
-/

namespace A121820.P9369733280653952844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121820.P9369733280653952844

/-! ## A121820.P18085369799036259797

`eq[3, A006530(A000040(n+1)+1)]+1`
-/

namespace A121820.P18085369799036259797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121820.P18085369799036259797

/-! ## A121820.P5156162853895072918

`eq[2, A061395(∏{p}[A000040(n+1)+1, #])]+1`
-/

namespace A121820.P5156162853895072918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121820.P5156162853895072918

/-!
# A121822: Number of closed walks of length 2*n on the 5-cube.

The programs for A121822, the canonical program `A121822.P4593645947690941127` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121822 has offset 0).

The definition of A121822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121822.P4593645947690941127

`(25^n+5*9^n+10)/16`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121822

/-- `(25^n+5*9^n+10)/16` -/
def P4593645947690941127.Spec : Prop :=
  ∀ n, P4593645947690941127.a n = (A121822 n : ℚ)

end A121822

/-! ## A121822.P1358835802251908301

`A286899(A167499(n+2))`
-/

namespace A121822.P1358835802251908301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286899 (A167499 (n + 2)).toNat

end

end A121822.P1358835802251908301

namespace A121822

/-- `A286899(A167499(n+2))` -/
def P1358835802251908301.Spec : Prop :=
  ∀ n, P1358835802251908301.a n = A121822 n

end A121822

/-! ## A121822.P5026555834182492197

`A286899(A141214(n)+8)`
-/

namespace A121822.P5026555834182492197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286899 (A141214 n + 8).toNat

end

end A121822.P5026555834182492197

namespace A121822

/-- `A286899(A141214(n)+8)` -/
def P5026555834182492197.Spec : Prop :=
  ∀ n, P5026555834182492197.a n = A121822 n

end A121822

/-! ## A121822.P4538566062189456138

`A286899(A052905(n)+10)`
-/

namespace A121822.P4538566062189456138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286899 (A052905 n + 10).toNat

end

end A121822.P4538566062189456138

namespace A121822

/-- `A286899(A052905(n)+10)` -/
def P4538566062189456138.Spec : Prop :=
  ∀ n, P4538566062189456138.a n = A121822 n

end A121822

/-! ## A121822.P13648077639989513

`A286899(A055999(n)+11)`
-/

namespace A121822.P13648077639989513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286899 (A055999 n + 11).toNat

end

end A121822.P13648077639989513

namespace A121822

/-- `A286899(A055999(n)+11)` -/
def P13648077639989513.Spec : Prop :=
  ∀ n, P13648077639989513.a n = A121822 n

end A121822

/-!
# A121823: (3^p+p)/(p+1) with (p + 1) odd prime > 3.

The programs for A121823, there is no canonical definition to state claims against.
-/

/-! ## A121823.P7044792689459367102

`A364210(A066047(n+1))`
-/

namespace A121823.P7044792689459367102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364210 (A066047 (n + 1)).toNat

end

end A121823.P7044792689459367102

/-! ## A121823.P15503571131812054494

`A364210(A215848(n+1))`
-/

namespace A121823.P15503571131812054494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364210 (A215848 (n + 1)).toNat

end

end A121823.P15503571131812054494

/-! ## A121823.P14098294035577963997

`A364210(A240710(n+1))`
-/

namespace A121823.P14098294035577963997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364210 (A240710 (n + 1)).toNat

end

end A121823.P14098294035577963997

/-! ## A121823.P14025728214796161929

`A364210(A045344(n+2))`
-/

namespace A121823.P14025728214796161929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364210 (A045344 (n + 2)).toNat

end

end A121823.P14025728214796161929

/-! ## A121823.P8994074412329728032

`A364210(A065091(n+2))`
-/

namespace A121823.P8994074412329728032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364210 (A065091 (n + 2)).toNat

end

end A121823.P8994074412329728032

/-!
# A121826: a(n) = Product_{k=1..n} D(k), where D() are the doublets, A020338.

The programs for A121826, there is no canonical definition to state claims against.
-/

/-! ## A121826.P16393323764101184759

`(∑[2*(n+1)]+(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1)))*a(n-1)` with `a(0)=11`
-/

namespace A121826.P16393323764101184759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))) * a (n - 1)

end

end A121826.P16393323764101184759

/-! ## A121826.P890244850530020982

`∏[A020338(n+1)]`
-/

namespace A121826.P890244850530020982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121826.P890244850530020982

/-! ## A121826.P922153449651150932

`∏[record[A020338(A133310(n))]]`
-/

namespace A121826.P922153449651150932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121826.P922153449651150932

/-!
# A121827: Ceiling ((Pi+e)n).

The programs for A121827, the canonical program `A121827.P8700157708535989383` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121827 has offset 1).

The definition of A121827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((π+e)*(n+1))` (program `A121827.P8700157708535989383`, by `A121827.P8700157708535989383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121827.P8700157708535989383

`ceil((π+e)*(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121827

/-- `ceil((π+e)*(n+1))` -/
def P8700157708535989383.Spec : Prop :=
  ∀ n, P8700157708535989383.a n = A121827 (n + 1)

theorem P8700157708535989383.correct : P8700157708535989383.Spec := by
  intro n
  simp only [A121827, Nat.add_sub_cancel]

end A121827

/-! ## A121827.P2104938275719247829

`floor(A005171(A121495(n+1))+(e+π)*(n+1))`
-/

namespace A121827.P2104938275719247829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005171 (A121495 (n + 1)).toNat : ℝ) + (Real.exp 1 + Real.pi) * (n + 1 : ℝ)⌋

end

end A121827.P2104938275719247829

namespace A121827

/-- `floor(A005171(A121495(n+1))+(e+π)*(n+1))` -/
def P2104938275719247829.Spec : Prop :=
  ∀ n, P2104938275719247829.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P186343257617315779

`A105644(n+1)+1`
-/

namespace A121827.P186343257617315779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105644 (n + 1) + 1

end

end A121827.P186343257617315779

namespace A121827

/-- `A105644(n+1)+1` -/
def P186343257617315779.Spec : Prop :=
  ∀ n, P186343257617315779.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P924370619633665682

`floor(A033999(2*n)+(e+π)*(n+1))`
-/

namespace A121827.P924370619633665682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033999 (2 * n) : ℝ) + (Real.exp 1 + Real.pi) * (n + 1 : ℝ)⌋

end

end A121827.P924370619633665682

namespace A121827

/-- `floor(A033999(2*n)+(e+π)*(n+1))` -/
def P924370619633665682.Spec : Prop :=
  ∀ n, P924370619633665682.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P2039216872400339778

`A020725(floor((e+π)*(n+1)))`
-/

namespace A121827.P2039216872400339778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 ⌊(Real.exp 1 + Real.pi) * (n + 1 : ℝ)⌋.toNat

end

end A121827.P2039216872400339778

namespace A121827

/-- `A020725(floor((e+π)*(n+1)))` -/
def P2039216872400339778.Spec : Prop :=
  ∀ n, P2039216872400339778.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P5831301190259361112

`floor(A001222(A034844(n+1))+(e+π)*(n+1))`
-/

namespace A121827.P5831301190259361112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (A034844 (n + 1)).toNat : ℝ) + (Real.exp 1 + Real.pi) * (n + 1 : ℝ)⌋

end

end A121827.P5831301190259361112

namespace A121827

/-- `floor(A001222(A034844(n+1))+(e+π)*(n+1))` -/
def P5831301190259361112.Spec : Prop :=
  ∀ n, P5831301190259361112.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P4017064967150373178

`A121899((n+1)²)`
-/

namespace A121827.P4017064967150373178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 ((n + 1) ^ 2)

end

end A121827.P4017064967150373178

namespace A121827

/-- `A121899((n+1)²)` -/
def P4017064967150373178.Spec : Prop :=
  ∀ n, P4017064967150373178.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P4187882655409647453

`record[A121899((1-n)²)]`
-/

namespace A121827.P4187882655409647453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121899 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121827.P4187882655409647453

namespace A121827

/-- `record[A121899((1-n)²)]` -/
def P4187882655409647453.Spec : Prop :=
  ∀ n, P4187882655409647453.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P2847303103029562635

`A121901((n+1)²)+1`
-/

namespace A121827.P2847303103029562635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 ((n + 1) ^ 2) + 1

end

end A121827.P2847303103029562635

namespace A121827

/-- `A121901((n+1)²)+1` -/
def P2847303103029562635.Spec : Prop :=
  ∀ n, P2847303103029562635.a n = A121827 (n + 1)

end A121827

/-! ## A121827.P6672851256950072739

`floor(log2(A004297(n+1)))+1`
-/

namespace A121827.P6672851256950072739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A004297 (n + 1)).toNat + 1

end

end A121827.P6672851256950072739

namespace A121827

/-- `floor(log2(A004297(n+1)))+1` -/
def P6672851256950072739.Spec : Prop :=
  ∀ n, (P6672851256950072739.a n : ℤ) = A121827 (n + 1)

end A121827

/-!
# A121828: Ceiling((Pi-e)n).

The programs for A121828, the canonical program `A121828.P11757433379804446537` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121828 has offset 1).

The definition of A121828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((π-e)*(n+1))` (program `A121828.P11757433379804446537`, by `A121828.P11757433379804446537.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121828.P11757433379804446537

`ceil((π-e)*(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121828

/-- `ceil((π-e)*(n+1))` -/
def P11757433379804446537.Spec : Prop :=
  ∀ n, P11757433379804446537.a n = A121828 (n + 1)

theorem P11757433379804446537.correct : P11757433379804446537.Spec := by
  intro n
  simp only [A121828, Nat.add_sub_cancel]

end A121828

/-! ## A121828.P7811285459617986482

`floor((n+1)*(π-e)-A008683(A151800(n)))`
-/

namespace A121828.P7811285459617986482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.pi - Real.exp 1) - (A008683 (A151800 n).toNat : ℝ)⌋

end

end A121828.P7811285459617986482

namespace A121828

/-- `floor((n+1)*(π-e)-A008683(A151800(n)))` -/
def P7811285459617986482.Spec : Prop :=
  ∀ n, P7811285459617986482.a n = A121828 (n + 1)

end A121828

/-! ## A121828.P11946566644699325539

`A121830(n+1)+1`
-/

namespace A121828.P11946566644699325539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121830 (n + 1) + 1

end

end A121828.P11946566644699325539

namespace A121828

/-- `A121830(n+1)+1` -/
def P11946566644699325539.Spec : Prop :=
  ∀ n, P11946566644699325539.a n = A121828 (n + 1)

end A121828

/-! ## A121828.P11167010497119367575

`∑[Δ[A121830(n)]^n]`
-/

namespace A121828.P11167010497119367575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121830 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121828.P11167010497119367575

namespace A121828

/-- `∑[Δ[A121830(n)]^n]` -/
def P11167010497119367575.Spec : Prop :=
  ∀ n, P11167010497119367575.a n = A121828 (n + 1)

end A121828

/-! ## A121828.P9720234966770318165

`floor((n+1)*(π-e)-(A000035(2*n)-1))`
-/

namespace A121828.P9720234966770318165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.pi - Real.exp 1) - (A000035 (2 * n) - 1 : ℝ)⌋

end

end A121828.P9720234966770318165

namespace A121828

/-- `floor((n+1)*(π-e)-(A000035(2*n)-1))` -/
def P9720234966770318165.Spec : Prop :=
  ∀ n, P9720234966770318165.a n = A121828 (n + 1)

end A121828

/-! ## A121828.P16475232102848404321

`A121900((n+1)²)`
-/

namespace A121828.P16475232102848404321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 ((n + 1) ^ 2)

end

end A121828.P16475232102848404321

namespace A121828

/-- `A121900((n+1)²)` -/
def P16475232102848404321.Spec : Prop :=
  ∀ n, P16475232102848404321.a n = A121828 (n + 1)

end A121828

/-! ## A121828.P3338689644313053121

`A121902((n+1)²)+1`
-/

namespace A121828.P3338689644313053121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 ((n + 1) ^ 2) + 1

end

end A121828.P3338689644313053121

namespace A121828

/-- `A121902((n+1)²)+1` -/
def P3338689644313053121.Spec : Prop :=
  ∀ n, P3338689644313053121.a n = A121828 (n + 1)

end A121828

/-!
# A121830: a(n) = floor((Pi - e)*n).

The programs for A121830, the canonical program `A121830.P7739147912403787484` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121830 has offset 0).

The definition of A121830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((π-e)*n)` (program `A121830.P7739147912403787484`, by `A121830.P7739147912403787484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121830.P7739147912403787484

`floor((π-e)*n)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121830

/-- `floor((π-e)*n)` -/
def P7739147912403787484.Spec : Prop :=
  ∀ n, P7739147912403787484.a n = A121830 n

theorem P7739147912403787484.correct : P7739147912403787484.Spec := by
  intro n
  simp only [A121830]

end A121830

/-! ## A121830.P1829689496251769345

`A121828(A000007(n)+n)-1`
-/

namespace A121830.P1829689496251769345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (A000007 n + (n : ℤ)).toNat - 1

end

end A121830.P1829689496251769345

namespace A121830

/-- `A121828(A000007(n)+n)-1` -/
def P1829689496251769345.Spec : Prop :=
  ∀ n, P1829689496251769345.a n = A121830 n

end A121830

/-! ## A121830.P11468337297444705012

`A121828(gcd(n, A008574(n)))-1`
-/

namespace A121830.P11468337297444705012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (Int.gcd (n : ℤ) (A008574 n)) - 1

end

end A121830.P11468337297444705012

namespace A121830

/-- `A121828(gcd(n, A008574(n)))-1` -/
def P11468337297444705012.Spec : Prop :=
  ∀ n, P11468337297444705012.a n = A121830 n

end A121830

/-! ## A121830.P4002675795409014668

`A121828(1-A057427(n)+n)-1`
-/

namespace A121830.P4002675795409014668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (1 - A057427 n + (n : ℤ)).toNat - 1

end

end A121830.P4002675795409014668

namespace A121830

/-- `A121828(1-A057427(n)+n)-1` -/
def P4002675795409014668.Spec : Prop :=
  ∀ n, P4002675795409014668.a n = A121830 n

end A121830

/-! ## A121830.P941400131904105692

`∑{e}[A006530(n+1), A121828(n)-#]`
-/

namespace A121830.P941400131904105692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A121828 n - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A121830.P941400131904105692

namespace A121830

/-- `∑{e}[A006530(n+1), A121828(n)-#]` -/
def P941400131904105692.Spec : Prop :=
  ∀ n, P941400131904105692.a n = A121830 n

end A121830

/-! ## A121830.P10482931004526149852

`A121828(A233583(n+1))-1`
-/

namespace A121830.P10482931004526149852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (A233583 (n + 1)).toNat - 1

end

end A121830.P10482931004526149852

namespace A121830

/-- `A121828(A233583(n+1))-1` -/
def P10482931004526149852.Spec : Prop :=
  ∀ n, P10482931004526149852.a n = A121830 n

end A121830

/-! ## A121830.P14256619564118687667

`A121902(n²)`
-/

namespace A121830.P14256619564118687667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (n ^ 2)

end

end A121830.P14256619564118687667

namespace A121830

/-- `A121902(n²)` -/
def P14256619564118687667.Spec : Prop :=
  ∀ n, P14256619564118687667.a n = A121830 n

end A121830

/-! ## A121830.P10543696765556452186

`round(log(cosh(A121900(n²))))`
-/

namespace A121830.P10543696765556452186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (A121900 (n ^ 2) : ℝ)))

end

end A121830.P10543696765556452186

namespace A121830

/-- `round(log(cosh(A121900(n²))))` -/
def P10543696765556452186.Spec : Prop :=
  ∀ n, P10543696765556452186.a n = A121830 n

end A121830

/-! ## A121830.P4307255283789522982

`A121900(n²)+A057428(n)`
-/

namespace A121830.P4307255283789522982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (n ^ 2) + A057428 n

end

end A121830.P4307255283789522982

namespace A121830

/-- `A121900(n²)+A057428(n)` -/
def P4307255283789522982.Spec : Prop :=
  ∀ n, P4307255283789522982.a n = A121830 n

end A121830

/-! ## A121830.P875686269997636083

`A121900(n²)-A057427(n)`
-/

namespace A121830.P875686269997636083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (n ^ 2) - A057427 n

end

end A121830.P875686269997636083

namespace A121830

/-- `A121900(n²)-A057427(n)` -/
def P875686269997636083.Spec : Prop :=
  ∀ n, P875686269997636083.a n = A121830 n

end A121830

/-! ## A121830.P16392851708373890131

`A121900(n²)-A178334(n)`
-/

namespace A121830.P16392851708373890131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (n ^ 2) - A178334 n

end

end A121830.P16392851708373890131

namespace A121830

/-- `A121900(n²)-A178334(n)` -/
def P16392851708373890131.Spec : Prop :=
  ∀ n, P16392851708373890131.a n = A121830 n

end A121830

/-!
# A121831: a(n) = floor((Pi + e)^n).

The programs for A121831, the canonical program `A121831.P6936268610044933257` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121831 has offset 0).

The definition of A121831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121831.P6936268610044933257

`floor((π+e)^n)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121831

/-- `floor((π+e)^n)` -/
def P6936268610044933257.Spec : Prop :=
  ∀ n, P6936268610044933257.a n = A121831 n

theorem P6936268610044933257.correct : P6936268610044933257.Spec := by
  intro n
  simp only [A121831]

end A121831

/-!
# A121832: Expansion of 1/(1-x-x^5-x^6).

The programs for A121832, the canonical program `A121832.P1474978906517595253` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121832 has offset 0).

The definition of A121832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^5-x^6))` (program `A121832.P1474978906517595253`, by `A121832.P1474978906517595253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121832.P1474978906517595253

`ogf(1/(1-x-x^5-x^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121832

/-- `ogf(1/(1-x-x^5-x^6))` -/
def P1474978906517595253.Spec : Prop :=
  ∀ n, P1474978906517595253.a n = A121832 n

theorem P1474978906517595253.correct : P1474978906517595253.Spec := by
  intro n
  simp only [A121832]

end A121832

/-! ## A121832.P11143732249057883442

`a(n-1)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A121832.P11143732249057883442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 5) + a (n - 6)

end

end A121832.P11143732249057883442

namespace A121832

/-- `a(n-1)+a(n-5)+a(n-6)` -/
def P11143732249057883442.Spec : Prop :=
  ∀ n, (P11143732249057883442.a n : ℤ) = A121832 n

end A121832

/-! ## A121832.P1543034414596523955

`A351870(A346077(n+1))+A143284(n)`
-/

namespace A121832.P1543034414596523955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A346077 (n + 1)).toNat + A143284 n

end

end A121832.P1543034414596523955

namespace A121832

/-- `A351870(A346077(n+1))+A143284(n)` -/
def P1543034414596523955.Spec : Prop :=
  ∀ n, P1543034414596523955.a n = A121832 n

end A121832

/-! ## A121832.P9995117439759024928

`A346077(A187829(n+1))+A143284(n)`
-/

namespace A121832.P9995117439759024928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346077 (A187829 (n + 1)).toNat + A143284 n

end

end A121832.P9995117439759024928

namespace A121832

/-- `A346077(A187829(n+1))+A143284(n)` -/
def P9995117439759024928.Spec : Prop :=
  ∀ n, P9995117439759024928.a n = A121832 n

end A121832

/-! ## A121832.P17607081484073936863

`A351870(A143284(n)+1)+A143284(A187829(n+1))`
-/

namespace A121832.P17607081484073936863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A143284 n + 1).toNat + A143284 (A187829 (n + 1)).toNat

end

end A121832.P17607081484073936863

namespace A121832

/-- `A351870(A143284(n)+1)+A143284(A187829(n+1))` -/
def P17607081484073936863.Spec : Prop :=
  ∀ n, P17607081484073936863.a n = A121832 n

end A121832

/-!
# A121833: Expansion of 1/(1-x^2-x^3-x^6).

The programs for A121833, the canonical program `A121833.P11702652553182934318` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121833 has offset 0).

The definition of A121833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3-x^6))` (program `A121833.P11702652553182934318`, by `A121833.P11702652553182934318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121833.P11702652553182934318

`ogf(1/(1-x^2-x^3-x^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121833

/-- `ogf(1/(1-x^2-x^3-x^6))` -/
def P11702652553182934318.Spec : Prop :=
  ∀ n, P11702652553182934318.a n = A121833 n

theorem P11702652553182934318.correct : P11702652553182934318.Spec := by
  intro n
  simp only [A121833]

end A121833

/-! ## A121833.P1596698060067228472

`a(n-2)+a(n-3)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A121833.P1596698060067228472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 1, 2] fun n a =>
  a (n - 2) + a (n - 3) + a (n - 6)

end

end A121833.P1596698060067228472

namespace A121833

/-- `a(n-2)+a(n-3)+a(n-6)` -/
def P1596698060067228472.Spec : Prop :=
  ∀ n, (P1596698060067228472.a n : ℤ) = A121833 n

end A121833

/-!
# A121834: Primes p of the form 4*n^2 + 1 such that 4*p^2+1 is also prime.

The programs for A121834, there is no canonical definition to state claims against.
-/

/-! ## A121834.P8960197871112442180

`A002522(A390701(n+2))`
-/

namespace A121834.P8960197871112442180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A390701 (n + 2)).toNat

end

end A121834.P8960197871112442180

/-! ## A121834.P11027731551788633125

`∩[A052291(n+1), A053755(n)]`
-/

namespace A121834.P11027731551788633125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121834.P11027731551788633125

/-! ## A121834.P1978145869971354203

`∩[A052291(n+1), A080335(n)]`
-/

namespace A121834.P1978145869971354203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121834.P1978145869971354203

/-! ## A121834.P14691881290185289776

`∩[A052291(n+1), A081345(n)]`
-/

namespace A121834.P14691881290185289776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121834.P14691881290185289776

/-! ## A121834.P179255180521010429

`∩[A052291(n+1), A168024(n)]`
-/

namespace A121834.P179255180521010429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121834.P179255180521010429

/-!
# A121835: Hankel transform of A014307.

The programs for A121835, there is no canonical definition to state claims against.
-/

/-! ## A121835.P5274597420261622437

`A000178(n)*A057863(n)`
-/

namespace A121835.P5274597420261622437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A057863 n

end

end A121835.P5274597420261622437

/-! ## A121835.P13672266960024085272

`∏[(2*n)!/2^n]`
-/

namespace A121835.P13672266960024085272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121835.P13672266960024085272

/-! ## A121835.P7419633664550413011

`∏[A000680(n)]`
-/

namespace A121835.P7419633664550413011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121835.P7419633664550413011

/-! ## A121835.P8623189690935547272

`∏[A087127((n+1)²)]`
-/

namespace A121835.P8623189690935547272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087127 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121835.P8623189690935547272

/-! ## A121835.P5407408941228626331

`∏[∏[A028310(A161680(2*n))]]`
-/

namespace A121835.P5407408941228626331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A161680 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121835.P5407408941228626331

/-!
# A121838: Ceiling((Pi+e)^n).

The programs for A121838, the canonical program `A121838.P16436035567511670183` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121838 has offset 1).

The definition of A121838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121838.P9811143478097123200

`ceil((e+π)^(n+1))`
-/

namespace A121838.P9811143478097123200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.exp 1 + Real.pi) ^ (n + 1)⌉

end

end A121838.P9811143478097123200

namespace A121838

/-- `ceil((e+π)^(n+1))` -/
def P9811143478097123200.Spec : Prop :=
  ∀ n, P9811143478097123200.a n = A121838 (n + 1)

end A121838

/-! ## A121838.P16436035567511670183

`A121831(n+1)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121838

/-- `A121831(n+1)+1` -/
def P16436035567511670183.Spec : Prop :=
  ∀ n, P16436035567511670183.a n = A121838 (n + 1)

theorem P16436035567511670183.correct : P16436035567511670183.Spec := by
  intro n
  simp only [A121838, Nat.add_sub_cancel]

end A121838

/-!
# A121840: (n*10^6)th prime.

The programs for A121840, the canonical program `A121840.P11802573148131771096` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121840 has offset 1).

The definition of A121840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121840.P11802573148131771096

`A031922(1000*(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121840

/-- `A031922(1000*(n+1))` -/
def P11802573148131771096.Spec : Prop :=
  ∀ n, P11802573148131771096.a n = A121840 (n + 1)

theorem P11802573148131771096.correct : P11802573148131771096.Spec := by
  intro n
  simp only [A121840, Nat.add_sub_cancel]

end A121840

/-! ## A121840.P7799990804979208610

`or(1, A031922(A168650(n+1)))`
-/

namespace A121840.P7799990804979208610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031922 (A168650 (n + 1)).toNat)

end

end A121840.P7799990804979208610

namespace A121840

/-- `or(1, A031922(A168650(n+1)))` -/
def P7799990804979208610.Spec : Prop :=
  ∀ n, P7799990804979208610.a n = A121840 (n + 1)

end A121840

/-! ## A121840.P18317608342923539075

`A031922(A168650(n+1))+A000007(n+2)`
-/

namespace A121840.P18317608342923539075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031922 (A168650 (n + 1)).toNat + A000007 (n + 2)

end

end A121840.P18317608342923539075

namespace A121840

/-- `A031922(A168650(n+1))+A000007(n+2)` -/
def P18317608342923539075.Spec : Prop :=
  ∀ n, P18317608342923539075.a n = A121840 (n + 1)

end A121840

/-!
# A121842: Difference between n^3 and next prime.

The programs for A121842, the canonical program `A121842.P4729088766007939738` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121842 has offset 0).

The definition of A121842 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121842.P4729088766007939738

`A013632(n^3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121842

/-- `A013632(n^3)` -/
def P4729088766007939738.Spec : Prop :=
  ∀ n, P4729088766007939738.a n = A121842 n

theorem P4729088766007939738.correct : P4729088766007939738.Spec := by
  intro n
  simp only [A121842]

end A121842

/-! ## A121842.P14780048738543668886

`A014220(n)-n^3`
-/

namespace A121842.P14780048738543668886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014220 n - (n ^ 3 : ℤ)

end

end A121842.P14780048738543668886

namespace A121842

/-- `A014220(n)-n^3` -/
def P14780048738543668886.Spec : Prop :=
  ∀ n, P14780048738543668886.a n = A121842 n

theorem P14780048738543668886.correct : P14780048738543668886.Spec := by
  intro n
  simp only [A121842, Nat.add_sub_cancel, A121842.P14780048738543668886.a, A121842.P4729088766007939738.a, A013632, A013632.P6559946879985956067.a, A014220, A014220.P16701128890246734141.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121842

/-! ## A121842.P6920497105008289855

`abs(A000578(n)-A014220(n))`
-/

namespace A121842.P6920497105008289855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n - A014220 n|

end

end A121842.P6920497105008289855

namespace A121842

/-- `abs(A000578(n)-A014220(n))` -/
def P6920497105008289855.Spec : Prop :=
  ∀ n, P6920497105008289855.a n = A121842 n

end A121842

/-! ## A121842.P16929047126751522902

`A000027(A014220(n)-A000578(n))`
-/

namespace A121842.P16929047126751522902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A014220 n - A000578 n).toNat

end

end A121842.P16929047126751522902

namespace A121842

/-- `A000027(A014220(n)-A000578(n))` -/
def P16929047126751522902.Spec : Prop :=
  ∀ n, P16929047126751522902.a n = A121842 n

end A121842

/-! ## A121842.P7979513447986056509

`A028310(A014220(n)-A000578(n))`
-/

namespace A121842.P7979513447986056509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A014220 n - A000578 n).toNat

end

end A121842.P7979513447986056509

namespace A121842

/-- `A028310(A014220(n)-A000578(n))` -/
def P7979513447986056509.Spec : Prop :=
  ∀ n, P7979513447986056509.a n = A121842 n

end A121842

/-! ## A121842.P14822551209126260695

`lcm(A000578(n)-A014220(n), A033999(n))`
-/

namespace A121842.P14822551209126260695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000578 n - A014220 n) (A033999 n)

end

end A121842.P14822551209126260695

namespace A121842

/-- `lcm(A000578(n)-A014220(n), A033999(n))` -/
def P14822551209126260695.Spec : Prop :=
  ∀ n, (P14822551209126260695.a n : ℤ) = A121842 n

end A121842

/-! ## A121842.P2651816229987428977

`(A014220(n)-A000578(n))%A014613(n+1)`
-/

namespace A121842.P2651816229987428977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014220 n - A000578 n) (A014613 (n + 1))

end

end A121842.P2651816229987428977

namespace A121842

/-- `(A014220(n)-A000578(n))%A014613(n+1)` -/
def P2651816229987428977.Spec : Prop :=
  ∀ n, P2651816229987428977.a n = A121842 n

end A121842

/-! ## A121842.P106609296524440614

`-((A000578(n)-A014220(n))%A019429(2*n+1))`
-/

namespace A121842.P106609296524440614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A000578 n - A014220 n) (A019429 (2 * n + 1))

end

end A121842.P106609296524440614

namespace A121842

/-- `-((A000578(n)-A014220(n))%A019429(2*n+1))` -/
def P106609296524440614.Spec : Prop :=
  ∀ n, P106609296524440614.a n = A121842 n

end A121842

/-! ## A121842.P6134934024430438904

`(A000578(n)-A014220(n))*A033999(A099375(n))`
-/

namespace A121842.P6134934024430438904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - A014220 n) * A033999 (A099375 n).toNat

end

end A121842.P6134934024430438904

namespace A121842

/-- `(A000578(n)-A014220(n))*A033999(A099375(n))` -/
def P6134934024430438904.Spec : Prop :=
  ∀ n, P6134934024430438904.a n = A121842 n

end A121842

/-! ## A121842.P10601722198668728024

`A059841(2*n+1)-(A000578(n)-A014220(n))`
-/

namespace A121842.P10601722198668728024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n + 1) - (A000578 n - A014220 n)

end

end A121842.P10601722198668728024

namespace A121842

/-- `A059841(2*n+1)-(A000578(n)-A014220(n))` -/
def P10601722198668728024.Spec : Prop :=
  ∀ n, P10601722198668728024.a n = A121842 n

end A121842

/-! ## A121842.P719444719770086864

`(A000578(n)-A014220(n))*A062157(2*(n+2))`
-/

namespace A121842.P719444719770086864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - A014220 n) * A062157 (2 * (n + 2))

end

end A121842.P719444719770086864

namespace A121842

/-- `(A000578(n)-A014220(n))*A062157(2*(n+2))` -/
def P719444719770086864.Spec : Prop :=
  ∀ n, P719444719770086864.a n = A121842 n

end A121842

/-! ## A121842.P11251763628118545396

`(A000578(n)-A014220(n))*A033999(A165704(n))`
-/

namespace A121842.P11251763628118545396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 n - A014220 n) * A033999 (A165704 n).toNat

end

end A121842.P11251763628118545396

namespace A121842

/-- `(A000578(n)-A014220(n))*A033999(A165704(n))` -/
def P11251763628118545396.Spec : Prop :=
  ∀ n, P11251763628118545396.a n = A121842 n

end A121842

/-!
# A121844: Excess of n^3 over previous prime.

The programs for A121844, the canonical program `A121844.P14388829942149941147` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121844 has offset 2).

The definition of A121844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121844.P14388829942149941147

`(n+2)^3-A000040(A000720((n+2)^3))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121844

/-- `(n+2)^3-A000040(A000720((n+2)^3))` -/
def P14388829942149941147.Spec : Prop :=
  ∀ n, P14388829942149941147.a n = A121844 (n + 2)

theorem P14388829942149941147.correct : P14388829942149941147.Spec := by
  intro n
  simp only [A121844, Nat.add_sub_cancel]

end A121844

/-! ## A121844.P2005768732771996047

`(n+2)^3-A007917((n+2)^3)`
-/

namespace A121844.P2005768732771996047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - A007917 ((n + 2) ^ 3)

end

end A121844.P2005768732771996047

namespace A121844

/-- `(n+2)^3-A007917((n+2)^3)` -/
def P2005768732771996047.Spec : Prop :=
  ∀ n, P2005768732771996047.a n = A121844 (n + 2)

end A121844

/-! ## A121844.P3017171479019080717

`(n+2)^3-A077037(n+2)`
-/

namespace A121844.P3017171479019080717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - A077037 (n + 2)

end

end A121844.P3017171479019080717

namespace A121844

/-- `(n+2)^3-A077037(n+2)` -/
def P3017171479019080717.Spec : Prop :=
  ∀ n, P3017171479019080717.a n = A121844 (n + 2)

end A121844

/-! ## A121844.P7892595792319166016

`A077038(n+2)-A121842(n+2)`
-/

namespace A121844.P7892595792319166016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077038 (n + 2) - A121842 (n + 2)

end

end A121844.P7892595792319166016

namespace A121844

/-- `A077038(n+2)-A121842(n+2)` -/
def P7892595792319166016.Spec : Prop :=
  ∀ n, P7892595792319166016.a n = A121844 (n + 2)

end A121844

/-! ## A121844.P4688713146776396356

`A000578(n+2)%A077037(n+2)`
-/

namespace A121844.P4688713146776396356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (n + 2)) (A077037 (n + 2))

end

end A121844.P4688713146776396356

namespace A121844

/-- `A000578(n+2)%A077037(n+2)` -/
def P4688713146776396356.Spec : Prop :=
  ∀ n, P4688713146776396356.a n = A121844 (n + 2)

end A121844

/-! ## A121844.P6975453023398408356

`Δ[A000537(n+1)]%A077037(n+2)`
-/

namespace A121844.P6975453023398408356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A077037 (n + 2))

end

end A121844.P6975453023398408356

namespace A121844

/-- `Δ[A000537(n+1)]%A077037(n+2)` -/
def P6975453023398408356.Spec : Prop :=
  ∀ n, P6975453023398408356.a n = A121844 (n + 2)

end A121844

/-!
# A121846: Numbers m such that greatest prime divisor of (m-th prime + 1) is 5.

The programs for A121846, there is no canonical definition to state claims against.
-/

/-! ## A121846.P17657700550666364160

`eq[5, A006530(A028815(n))]`
-/

namespace A121846.P17657700550666364160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028815 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121846.P17657700550666364160

/-! ## A121846.P7991259888089781537

`eq[5, A023509(A028310(n))]`
-/

namespace A121846.P7991259888089781537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121846.P7991259888089781537

/-! ## A121846.P2983956708713891655

`A000720(p?[A080193(n+1)-1])`
-/

namespace A121846.P2983956708713891655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121846.P2983956708713891655

/-! ## A121846.P17559217616899815762

`A061395(p?[A080193(n+1)-1])`
-/

namespace A121846.P17559217616899815762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121846.P17559217616899815762

/-! ## A121846.P1125143161158197450

`A000720(p?[A325198(n+1)-1])`
-/

namespace A121846.P1125143161158197450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325198 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121846.P1125143161158197450

/-! ## A121846.P10760005315118602477

`A061395(p?[A325198(n+1)-1])`
-/

namespace A121846.P10760005315118602477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325198 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121846.P10760005315118602477

/-! ## A121846.P14431010164489210476

`record[A061395(A325198(n+2)-1)]`
-/

namespace A121846.P14431010164489210476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A325198 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121846.P14431010164489210476

/-! ## A121846.P13666882387506286742

`A066328(p?[A080193(n+1)-1])`
-/

namespace A121846.P13666882387506286742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121846.P13666882387506286742

/-! ## A121846.P6280364075180361802

`A000720(p?[A066182(A080193(n+1))])`
-/

namespace A121846.P6280364075180361802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A080193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A121846.P6280364075180361802

/-!
# A121852: Numbers n such that partial sum of Catalan numbers A014137(n) is a prime.

The programs for A121852, there is no canonical definition to state claims against.
-/

/-! ## A121852.P1029764061992324670

`A299479(A232533(n+1))`
-/

namespace A121852.P1029764061992324670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299479 (A232533 (n + 1)).toNat

end

end A121852.P1029764061992324670

/-! ## A121852.P6463736208790143543

`∩[A098151(n), A298811(n)]`
-/

namespace A121852.P6463736208790143543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098151 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298811 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121852.P6463736208790143543

/-!
# A121853: Cumulative product of A000120.

The programs for A121853, the canonical program `A121853.P7432106883180515481` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121853 has offset 0).

The definition of A121853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121853.P7432106883180515481

`∏[a(floor(n/2))+n%2]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121853

/-- `∏[a(floor(n/2))+n%2]` -/
def P7432106883180515481.Spec : Prop :=
  ∀ n, (P7432106883180515481.a n : ℤ) = A121853 n

theorem P7432106883180515481.correct : P7432106883180515481.Spec := by
  intro n
  simp only [A121853]

end A121853

/-! ## A121853.P6320324590998967408

`∏[a(floor(n/2))+and(1, n)]` with `a(0)=1, a(1)=1`
-/

namespace A121853.P6320324590998967408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121853.P6320324590998967408

namespace A121853

/-- `∏[a(floor(n/2))+and(1, n)]` -/
def P6320324590998967408.Spec : Prop :=
  ∀ n, (P6320324590998967408.a n : ℤ) = A121853 n

theorem P6320324590998967408.correct : P6320324590998967408.Spec := by
  intro n
  simp only [A121853, Nat.add_sub_cancel, A121853.P6320324590998967408.f1, A121853.P6320324590998967408.a, A121853.P7432106883180515481.f1, A121853.P7432106883180515481.a, SequenceMachineLib.memo_apply]
  try simp

end A121853

/-! ## A121853.P1730206957592892500

`∏[∏{e}[2*a(and(n, n-1)), #]]` with `a(0)=1`
-/

namespace A121853.P1730206957592892500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121853.P1730206957592892500

namespace A121853

/-- `∏[∏{e}[2*a(and(n, n-1)), #]]` -/
def P1730206957592892500.Spec : Prop :=
  ∀ n, (P1730206957592892500.a n : ℤ) = A121853 n

end A121853

/-! ## A121853.P2938154444408132896

`∏[dr(A171758(n+1))]`
-/

namespace A121853.P2938154444408132896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A171758 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121853.P2938154444408132896

namespace A121853

/-- `∏[dr(A171758(n+1))]` -/
def P2938154444408132896.Spec : Prop :=
  ∀ n, (P2938154444408132896.a n : ℤ) = A121853 n

end A121853

/-! ## A121853.P14650493015475416264

`a(n-1)*A000120(n)` with `a(0)=1`
-/

namespace A121853.P14650493015475416264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000120 n

end

end A121853.P14650493015475416264

namespace A121853

/-- `a(n-1)*A000120(n)` -/
def P14650493015475416264.Spec : Prop :=
  ∀ n, P14650493015475416264.a n = A121853 n

end A121853

/-! ## A121853.P12128175162353274857

`∏[log2(A243036(2*n+1))]`
-/

namespace A121853.P12128175162353274857
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A243036 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121853.P12128175162353274857

namespace A121853

/-- `∏[log2(A243036(2*n+1))]` -/
def P12128175162353274857.Spec : Prop :=
  ∀ n, P12128175162353274857.a n = (A121853 n : ℝ)

end A121853

/-! ## A121853.P7411284490891221145

`(n-val(n!, 2))*a(n-1)` with `a(0)=1`
-/

namespace A121853.P7411284490891221145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - (SequenceMachineLib.valuation (Nat.factorial n) 2 : ℤ)) * a (n - 1)

end

end A121853.P7411284490891221145

namespace A121853

/-- `(n-val(n!, 2))*a(n-1)` -/
def P7411284490891221145.Spec : Prop :=
  ∀ n, P7411284490891221145.a n = A121853 n

end A121853

/-!
# A121854: a(n) = floor(Pi*(sqrt(n))).

The programs for A121854, the canonical program `A121854.P3566213335979130551` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121854 has offset 0).

The definition of A121854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π*sqrt(n))` (program `A121854.P3566213335979130551`, by `A121854.P3566213335979130551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121854.P3566213335979130551

`floor(π*sqrt(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121854

/-- `floor(π*sqrt(n))` -/
def P3566213335979130551.Spec : Prop :=
  ∀ n, P3566213335979130551.a n = A121854 n

theorem P3566213335979130551.correct : P3566213335979130551.Spec := by
  intro n
  simp only [A121854]

end A121854

/-! ## A121854.P17471377864737595488

`A121855(n)-char[xor(1, n)+1]`
-/

namespace A121854.P17471377864737595488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121854.P17471377864737595488

namespace A121854

/-- `A121855(n)-char[xor(1, n)+1]` -/
def P17471377864737595488.Spec : Prop :=
  ∀ n, P17471377864737595488.a n = A121854 n

end A121854

/-! ## A121854.P12379229091812509347

`A028310(A121855(n))-1`
-/

namespace A121854.P12379229091812509347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A121855 n).toNat - 1

end

end A121854.P12379229091812509347

namespace A121854

/-- `A028310(A121855(n))-1` -/
def P12379229091812509347.Spec : Prop :=
  ∀ n, P12379229091812509347.a n = A121854 n

end A121854

/-! ## A121854.P15749836980509173558

`A121855(n)+A057428(n)`
-/

namespace A121854.P15749836980509173558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + A057428 n

end

end A121854.P15749836980509173558

namespace A121854

/-- `A121855(n)+A057428(n)` -/
def P15749836980509173558.Spec : Prop :=
  ∀ n, P15749836980509173558.a n = A121854 n

end A121854

/-! ## A121854.P3508423124630782209

`A121855(n)-A057427(n)`
-/

namespace A121854.P3508423124630782209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n - A057427 n

end

end A121854.P3508423124630782209

namespace A121854

/-- `A121855(n)-A057427(n)` -/
def P3508423124630782209.Spec : Prop :=
  ∀ n, P3508423124630782209.a n = A121854 n

end A121854

/-! ## A121854.P521877085340630444

`A121855(n)-A019432(2*n)`
-/

namespace A121854.P521877085340630444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n - A019432 (2 * n)

end

end A121854.P521877085340630444

namespace A121854

/-- `A121855(n)-A019432(2*n)` -/
def P521877085340630444.Spec : Prop :=
  ∀ n, P521877085340630444.a n = A121854 n

end A121854

/-! ## A121854.P1724095491769587391

`(A121855(n)-1)%∑[A082895(n+1)]`
-/

namespace A121854.P1724095491769587391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121855 n - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121854.P1724095491769587391

namespace A121854

/-- `(A121855(n)-1)%∑[A082895(n+1)]` -/
def P1724095491769587391.Spec : Prop :=
  ∀ n, P1724095491769587391.a n = A121854 n

end A121854

/-! ## A121854.P16048889693383022437

`A121855(n)+A121856(n)-A121857(n)`
-/

namespace A121854.P16048889693383022437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121856 n - A121857 n)

end

end A121854.P16048889693383022437

namespace A121854

/-- `A121855(n)+A121856(n)-A121857(n)` -/
def P16048889693383022437.Spec : Prop :=
  ∀ n, P16048889693383022437.a n = A121854 n

end A121854

/-! ## A121854.P1558232837353739014

`A121855(n)+A121901(n)-A121899(n)`
-/

namespace A121854.P1558232837353739014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121901 n - A121899 n)

end

end A121854.P1558232837353739014

namespace A121854

/-- `A121855(n)+A121901(n)-A121899(n)` -/
def P1558232837353739014.Spec : Prop :=
  ∀ n, P1558232837353739014.a n = A121854 n

end A121854

/-! ## A121854.P3567296307461936413

`A121855(n)+A121925(n)-A121929(n)`
-/

namespace A121854.P3567296307461936413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121925 n - A121929 n)

end

end A121854.P3567296307461936413

namespace A121854

/-- `A121855(n)+A121925(n)-A121929(n)` -/
def P3567296307461936413.Spec : Prop :=
  ∀ n, P3567296307461936413.a n = A121854 n

end A121854

/-! ## A121854.P13014888266160860763

`A121855(n)+A121930(n)-A121928(n)`
-/

namespace A121854.P13014888266160860763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121930 n - A121928 n)

end

end A121854.P13014888266160860763

namespace A121854

/-- `A121855(n)+A121930(n)-A121928(n)` -/
def P13014888266160860763.Spec : Prop :=
  ∀ n, P13014888266160860763.a n = A121854 n

end A121854

/-! ## A121854.P10411014146468937470

`A121855(n)-A121381(n)/A004084(n+1)`
-/

namespace A121854.P10411014146468937470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121855 n : ℚ) - (A121381 n : ℚ) / (A004084 (n + 1) : ℚ)

end

end A121854.P10411014146468937470

namespace A121854

/-- `A121855(n)-A121381(n)/A004084(n+1)` -/
def P10411014146468937470.Spec : Prop :=
  ∀ n, P10411014146468937470.a n = (A121854 n : ℚ)

end A121854

/-! ## A121854.P5468087044508763625

`A121855(n)-A329644(A020639(n+1))`
-/

namespace A121854.P5468087044508763625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n - A329644 (A020639 (n + 1)).toNat

end

end A121854.P5468087044508763625

namespace A121854

/-- `A121855(n)-A329644(A020639(n+1))` -/
def P5468087044508763625.Spec : Prop :=
  ∀ n, P5468087044508763625.a n = A121854 n

end A121854

/-! ## A121854.P6590970662594086514

`A000196(A037085(n))`
-/

namespace A121854.P6590970662594086514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A037085 n).toNat

end

end A121854.P6590970662594086514

namespace A121854

/-- `A000196(A037085(n))` -/
def P6590970662594086514.Spec : Prop :=
  ∀ n, P6590970662594086514.a n = A121854 n

end A121854

/-! ## A121854.P7492500700192963925

`A121902(5*11*n)`
-/

namespace A121854.P7492500700192963925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (5 * (11 * n))

end

end A121854.P7492500700192963925

namespace A121854

/-- `A121902(5*11*n)` -/
def P7492500700192963925.Spec : Prop :=
  ∀ n, P7492500700192963925.a n = A121854 n

end A121854

/-!
# A121855: a(n) = ceiling(Pi*sqrt(n)).

The programs for A121855, the canonical program `A121855.P2836291257622636689` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121855 has offset 0).

The definition of A121855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(π*sqrt(n))` (program `A121855.P2836291257622636689`, by `A121855.P2836291257622636689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121855.P2836291257622636689

`ceil(π*sqrt(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121855

/-- `ceil(π*sqrt(n))` -/
def P2836291257622636689.Spec : Prop :=
  ∀ n, P2836291257622636689.a n = A121855 n

theorem P2836291257622636689.correct : P2836291257622636689.Spec := by
  intro n
  simp only [A121855]

end A121855

/-! ## A121855.P14746629638683510333

`A326178(A121854(n))`
-/

namespace A121855.P14746629638683510333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A121854 n).toNat

end

end A121855.P14746629638683510333

namespace A121855

/-- `A326178(A121854(n))` -/
def P14746629638683510333.Spec : Prop :=
  ∀ n, P14746629638683510333.a n = A121855 n

end A121855

/-! ## A121855.P17052849503148907988

`A121854(n)+A057427(n)`
-/

namespace A121855.P17052849503148907988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + A057427 n

end

end A121855.P17052849503148907988

namespace A121855

/-- `A121854(n)+A057427(n)` -/
def P17052849503148907988.Spec : Prop :=
  ∀ n, P17052849503148907988.a n = A121855 n

end A121855

/-! ## A121855.P16091132889415738130

`A121854(n)-A057428(n)`
-/

namespace A121855.P16091132889415738130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n - A057428 n

end

end A121855.P16091132889415738130

namespace A121855

/-- `A121854(n)-A057428(n)` -/
def P16091132889415738130.Spec : Prop :=
  ∀ n, P16091132889415738130.a n = A121855 n

end A121855

/-! ## A121855.P15174083598943185090

`A121854(n)+1-A000007(n)`
-/

namespace A121855.P15174083598943185090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (1 - A000007 n)

end

end A121855.P15174083598943185090

namespace A121855

/-- `A121854(n)+1-A000007(n)` -/
def P15174083598943185090.Spec : Prop :=
  ∀ n, P15174083598943185090.a n = A121855 n

end A121855

/-! ## A121855.P7821433304402469395

`A121854(n)+n/A028310(n)`
-/

namespace A121855.P7821433304402469395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121854 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A121855.P7821433304402469395

namespace A121855

/-- `A121854(n)+n/A028310(n)` -/
def P7821433304402469395.Spec : Prop :=
  ∀ n, P7821433304402469395.a n = (A121855 n : ℚ)

end A121855

/-! ## A121855.P4149214956291950389

`A121854(n)+A000120(and(n, -n))`
-/

namespace A121855.P4149214956291950389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + A000120 (Int.land (n : ℤ) (-(n : ℤ))).toNat

end

end A121855.P4149214956291950389

namespace A121855

/-- `A121854(n)+A000120(and(n, -n))` -/
def P4149214956291950389.Spec : Prop :=
  ∀ n, P4149214956291950389.a n = A121855 n

end A121855

/-! ## A121855.P10586651968064873801

`A121854(n)+A121857(n)-A121856(n)`
-/

namespace A121855.P10586651968064873801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121857 n - A121856 n)

end

end A121855.P10586651968064873801

namespace A121855

/-- `A121854(n)+A121857(n)-A121856(n)` -/
def P10586651968064873801.Spec : Prop :=
  ∀ n, P10586651968064873801.a n = A121855 n

end A121855

/-! ## A121855.P11835932811666207381

`A121854(n)+A121899(n)-A121901(n)`
-/

namespace A121855.P11835932811666207381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121899 n - A121901 n)

end

end A121855.P11835932811666207381

namespace A121855

/-- `A121854(n)+A121899(n)-A121901(n)` -/
def P11835932811666207381.Spec : Prop :=
  ∀ n, P11835932811666207381.a n = A121855 n

end A121855

/-! ## A121855.P13411671884704707536

`A121854(n)+A121900(n)-A121902(n)`
-/

namespace A121855.P13411671884704707536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121900 n - A121902 n)

end

end A121855.P13411671884704707536

namespace A121855

/-- `A121854(n)+A121900(n)-A121902(n)` -/
def P13411671884704707536.Spec : Prop :=
  ∀ n, P13411671884704707536.a n = A121855 n

end A121855

/-! ## A121855.P5885079410177320399

`A121854(n)+A121928(n)-A121930(n)`
-/

namespace A121855.P5885079410177320399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121928 n - A121930 n)

end

end A121855.P5885079410177320399

namespace A121855

/-- `A121854(n)+A121928(n)-A121930(n)` -/
def P5885079410177320399.Spec : Prop :=
  ∀ n, P5885079410177320399.a n = A121855 n

end A121855

/-! ## A121855.P6976931102013659003

`A121854(n)+A121929(n)-A121925(n)`
-/

namespace A121855.P6976931102013659003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121929 n - A121925 n)

end

end A121855.P6976931102013659003

namespace A121855

/-- `A121854(n)+A121929(n)-A121925(n)` -/
def P6976931102013659003.Spec : Prop :=
  ∀ n, P6976931102013659003.a n = A121855 n

end A121855

/-! ## A121855.P9449471918069847129

`(A121854(n)+1)%A018252(A018252(n+1))`
-/

namespace A121855.P9449471918069847129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121854 n + 1) (A018252 (A018252 (n + 1)).toNat)

end

end A121855.P9449471918069847129

namespace A121855

/-- `(A121854(n)+1)%A018252(A018252(n+1))` -/
def P9449471918069847129.Spec : Prop :=
  ∀ n, P9449471918069847129.a n = A121855 n

end A121855

/-! ## A121855.P15210766966588206013

`A121854(n)+A121381(n)/A004084(n+1)`
-/

namespace A121855.P15210766966588206013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121854 n : ℚ) + (A121381 n : ℚ) / (A004084 (n + 1) : ℚ)

end

end A121855.P15210766966588206013

namespace A121855

/-- `A121854(n)+A121381(n)/A004084(n+1)` -/
def P15210766966588206013.Spec : Prop :=
  ∀ n, P15210766966588206013.a n = (A121855 n : ℚ)

end A121855

/-! ## A121855.P13574005688326045647

`A121900(5*11*n)`
-/

namespace A121855.P13574005688326045647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (5 * (11 * n))

end

end A121855.P13574005688326045647

namespace A121855

/-- `A121900(5*11*n)` -/
def P13574005688326045647.Spec : Prop :=
  ∀ n, P13574005688326045647.a n = A121855 n

end A121855

/-!
# A121856: a(n) = Floor(e*sqrt(n)).

The programs for A121856, the canonical program `A121856.P2679387530233912881` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121856 has offset 0).

The definition of A121856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(e*sqrt(n))` (program `A121856.P2679387530233912881`, by `A121856.P2679387530233912881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121856.P2679387530233912881

`floor(e*sqrt(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121856

/-- `floor(e*sqrt(n))` -/
def P2679387530233912881.Spec : Prop :=
  ∀ n, P2679387530233912881.a n = A121856 n

theorem P2679387530233912881.correct : P2679387530233912881.Spec := by
  intro n
  simp only [A121856]

end A121856

/-! ## A121856.P9875386646586967109

`round(sqrt(A121857(n)²+1))-1`
-/

namespace A121856.P9875386646586967109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A121857 n ^ 2 + 1 : ℝ)) - 1

end

end A121856.P9875386646586967109

namespace A121856

/-- `round(sqrt(A121857(n)²+1))-1` -/
def P9875386646586967109.Spec : Prop :=
  ∀ n, P9875386646586967109.a n = A121856 n

end A121856

/-! ## A121856.P3559620422751636489

`A121857(n)+A057428(n)`
-/

namespace A121856.P3559620422751636489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + A057428 n

end

end A121856.P3559620422751636489

namespace A121856

/-- `A121857(n)+A057428(n)` -/
def P3559620422751636489.Spec : Prop :=
  ∀ n, P3559620422751636489.a n = A121856 n

end A121856

/-! ## A121856.P7578466839838979354

`A121857(n)-A057427(n)`
-/

namespace A121856.P7578466839838979354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n - A057427 n

end

end A121856.P7578466839838979354

namespace A121856

/-- `A121857(n)-A057427(n)` -/
def P7578466839838979354.Spec : Prop :=
  ∀ n, P7578466839838979354.a n = A121856 n

end A121856

/-! ## A121856.P6957523756880137252

`A121857(n)-A070747(n)²`
-/

namespace A121856.P6957523756880137252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n - A070747 n ^ 2

end

end A121856.P6957523756880137252

namespace A121856

/-- `A121857(n)-A070747(n)²` -/
def P6957523756880137252.Spec : Prop :=
  ∀ n, P6957523756880137252.a n = A121856 n

end A121856

/-! ## A121856.P1278025541768498586

`A121857(n)+-1%A001316(n)`
-/

namespace A121856.P1278025541768498586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + Int.tmod (-1) (A001316 n)

end

end A121856.P1278025541768498586

namespace A121856

/-- `A121857(n)+-1%A001316(n)` -/
def P1278025541768498586.Spec : Prop :=
  ∀ n, P1278025541768498586.a n = A121856 n

end A121856

/-! ## A121856.P3916970419070515248

`(A121857(n)-1)%A191119(n+1)²`
-/

namespace A121856.P3916970419070515248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121857 n - 1) (A191119 (n + 1) ^ 2)

end

end A121856.P3916970419070515248

namespace A121856

/-- `(A121857(n)-1)%A191119(n+1)²` -/
def P3916970419070515248.Spec : Prop :=
  ∀ n, P3916970419070515248.a n = A121856 n

end A121856

/-! ## A121856.P15548897147091514617

`A121857(n)-A004396(n²%(n+1))`
-/

namespace A121856.P15548897147091514617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n - A004396 (n ^ 2 % (n + 1))

end

end A121856.P15548897147091514617

namespace A121856

/-- `A121857(n)-A004396(n²%(n+1))` -/
def P15548897147091514617.Spec : Prop :=
  ∀ n, P15548897147091514617.a n = A121856 n

end A121856

/-! ## A121856.P15903195484402425881

`A121854(n)+A121857(n)-A121855(n)`
-/

namespace A121856.P15903195484402425881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 n + (A121857 n - A121855 n)

end

end A121856.P15903195484402425881

namespace A121856

/-- `A121854(n)+A121857(n)-A121855(n)` -/
def P15903195484402425881.Spec : Prop :=
  ∀ n, P15903195484402425881.a n = A121856 n

end A121856

/-! ## A121856.P1581568286194825729

`A121857(n)+A121901(n)-A121899(n)`
-/

namespace A121856.P1581568286194825729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + (A121901 n - A121899 n)

end

end A121856.P1581568286194825729

namespace A121856

/-- `A121857(n)+A121901(n)-A121899(n)` -/
def P1581568286194825729.Spec : Prop :=
  ∀ n, P1581568286194825729.a n = A121856 n

end A121856

/-! ## A121856.P12683348354287085507

`A121857(n)+A121925(n)-A121929(n)`
-/

namespace A121856.P12683348354287085507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + (A121925 n - A121929 n)

end

end A121856.P12683348354287085507

namespace A121856

/-- `A121857(n)+A121925(n)-A121929(n)` -/
def P12683348354287085507.Spec : Prop :=
  ∀ n, P12683348354287085507.a n = A121856 n

end A121856

/-! ## A121856.P5693748515882571047

`A121857(n)+A121930(n)-A121928(n)`
-/

namespace A121856.P5693748515882571047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + (A121930 n - A121928 n)

end

end A121856.P5693748515882571047

namespace A121856

/-- `A121857(n)+A121930(n)-A121928(n)` -/
def P5693748515882571047.Spec : Prop :=
  ∀ n, P5693748515882571047.a n = A121856 n

end A121856

/-! ## A121856.P18319133296635038369

`A121857(n)-A121381(n)/A004084(n+1)`
-/

namespace A121856.P18319133296635038369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121857 n : ℚ) - (A121381 n : ℚ) / (A004084 (n + 1) : ℚ)

end

end A121856.P18319133296635038369

namespace A121856

/-- `A121857(n)-A121381(n)/A004084(n+1)` -/
def P18319133296635038369.Spec : Prop :=
  ∀ n, P18319133296635038369.a n = (A121856 n : ℚ)

end A121856

/-! ## A121856.P12134290195010014692

`A000196(floor(n*exp(2)))`
-/

namespace A121856.P12134290195010014692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(n : ℝ) * Real.exp (2 : ℝ)⌋.toNat

end

end A121856.P12134290195010014692

namespace A121856

/-- `A000196(floor(n*exp(2)))` -/
def P12134290195010014692.Spec : Prop :=
  ∀ n, P12134290195010014692.a n = A121856 n

end A121856

/-! ## A121856.P8539080267424520451

`A032615(A121854(A121857(n)²))`
-/

namespace A121856.P8539080267424520451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032615 (A121854 (A121857 n ^ 2).toNat).toNat

end

end A121856.P8539080267424520451

namespace A121856

/-- `A032615(A121854(A121857(n)²))` -/
def P8539080267424520451.Spec : Prop :=
  ∀ n, P8539080267424520451.a n = A121856 n

end A121856

/-!
# A121857: a(n) = ceiling(e*sqrt(n)).

The programs for A121857, the canonical program `A121857.P15115864098081041709` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121857 has offset 0).

The definition of A121857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(e*sqrt(n))` (program `A121857.P15115864098081041709`, by `A121857.P15115864098081041709.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121857.P15115864098081041709

`ceil(e*sqrt(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121857

/-- `ceil(e*sqrt(n))` -/
def P15115864098081041709.Spec : Prop :=
  ∀ n, P15115864098081041709.a n = A121857 n

theorem P15115864098081041709.correct : P15115864098081041709.Spec := by
  intro n
  simp only [A121857]

end A121857

/-! ## A121857.P7449426990601682701

`(A121856(n)+1)%(n+1)²`
-/

namespace A121857.P7449426990601682701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121856 n + 1) ((n + 1) ^ 2 : ℤ)

end

end A121857.P7449426990601682701

namespace A121857

/-- `(A121856(n)+1)%(n+1)²` -/
def P7449426990601682701.Spec : Prop :=
  ∀ n, P7449426990601682701.a n = A121857 n

end A121857

/-! ## A121857.P11262112679886059598

`char[A322021(n+1)]+floor(e*sqrt(n))`
-/

namespace A121857.P11262112679886059598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322021 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.exp 1 * Real.sqrt (n : ℝ)⌋

end

end A121857.P11262112679886059598

namespace A121857

/-- `char[A322021(n+1)]+floor(e*sqrt(n))` -/
def P11262112679886059598.Spec : Prop :=
  ∀ n, P11262112679886059598.a n = A121857 n

end A121857

/-! ## A121857.P5274357467527204285

`A121856(n)+A057427(n)`
-/

namespace A121857.P5274357467527204285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + A057427 n

end

end A121857.P5274357467527204285

namespace A121857

/-- `A121856(n)+A057427(n)` -/
def P5274357467527204285.Spec : Prop :=
  ∀ n, P5274357467527204285.a n = A121857 n

end A121857

/-! ## A121857.P6739852914790936309

`A121856(n)-A057428(n)`
-/

namespace A121857.P6739852914790936309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n - A057428 n

end

end A121857.P6739852914790936309

namespace A121857

/-- `A121856(n)-A057428(n)` -/
def P6739852914790936309.Spec : Prop :=
  ∀ n, P6739852914790936309.a n = A121857 n

end A121857

/-! ## A121857.P14729389344755222083

`A121856(n)+A070747(n)²`
-/

namespace A121857.P14729389344755222083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + A070747 n ^ 2

end

end A121857.P14729389344755222083

namespace A121857

/-- `A121856(n)+A070747(n)²` -/
def P14729389344755222083.Spec : Prop :=
  ∀ n, P14729389344755222083.a n = A121857 n

end A121857

/-! ## A121857.P2484593751807137969

`A121856(n)+1-A000007(n)`
-/

namespace A121857.P2484593751807137969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (1 - A000007 n)

end

end A121857.P2484593751807137969

namespace A121857

/-- `A121856(n)+1-A000007(n)` -/
def P2484593751807137969.Spec : Prop :=
  ∀ n, P2484593751807137969.a n = A121857 n

end A121857

/-! ## A121857.P8152454149453642701

`A001222(A006530(n+1))+floor(e*sqrt(n))`
-/

namespace A121857.P8152454149453642701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006530 (n + 1)).toNat + ⌊Real.exp 1 * Real.sqrt (n : ℝ)⌋

end

end A121857.P8152454149453642701

namespace A121857

/-- `A001222(A006530(n+1))+floor(e*sqrt(n))` -/
def P8152454149453642701.Spec : Prop :=
  ∀ n, P8152454149453642701.a n = A121857 n

end A121857

/-! ## A121857.P11303489739703324798

`A121856(n)+A107286(A107286(n))`
-/

namespace A121857.P11303489739703324798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + A107286 (A107286 n).toNat

end

end A121857.P11303489739703324798

namespace A121857

/-- `A121856(n)+A107286(A107286(n))` -/
def P11303489739703324798.Spec : Prop :=
  ∀ n, P11303489739703324798.a n = A121857 n

end A121857

/-! ## A121857.P14804389288134962303

`A121855(n)+A121856(n)-A121854(n)`
-/

namespace A121857.P14804389288134962303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121856 n - A121854 n)

end

end A121857.P14804389288134962303

namespace A121857

/-- `A121855(n)+A121856(n)-A121854(n)` -/
def P14804389288134962303.Spec : Prop :=
  ∀ n, P14804389288134962303.a n = A121857 n

end A121857

/-! ## A121857.P13155769577005600469

`A121856(n)+A121899(n)-A121901(n)`
-/

namespace A121857.P13155769577005600469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (A121899 n - A121901 n)

end

end A121857.P13155769577005600469

namespace A121857

/-- `A121856(n)+A121899(n)-A121901(n)` -/
def P13155769577005600469.Spec : Prop :=
  ∀ n, P13155769577005600469.a n = A121857 n

end A121857

/-! ## A121857.P16255183335715694788

`A121856(n)+A121900(n)-A121902(n)`
-/

namespace A121857.P16255183335715694788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (A121900 n - A121902 n)

end

end A121857.P16255183335715694788

namespace A121857

/-- `A121856(n)+A121900(n)-A121902(n)` -/
def P16255183335715694788.Spec : Prop :=
  ∀ n, P16255183335715694788.a n = A121857 n

end A121857

/-! ## A121857.P8264858000976769451

`A121856(n)+A121928(n)-A121930(n)`
-/

namespace A121857.P8264858000976769451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (A121928 n - A121930 n)

end

end A121857.P8264858000976769451

namespace A121857

/-- `A121856(n)+A121928(n)-A121930(n)` -/
def P8264858000976769451.Spec : Prop :=
  ∀ n, P8264858000976769451.a n = A121857 n

end A121857

/-! ## A121857.P14557938588685045357

`A121856(n)+A121929(n)-A121925(n)`
-/

namespace A121857.P14557938588685045357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 n + (A121929 n - A121925 n)

end

end A121857.P14557938588685045357

namespace A121857

/-- `A121856(n)+A121929(n)-A121925(n)` -/
def P14557938588685045357.Spec : Prop :=
  ∀ n, P14557938588685045357.a n = A121857 n

end A121857

/-! ## A121857.P18100654342358199867

`A121856(n)+A121381(n)/A004084(n+1)`
-/

namespace A121857.P18100654342358199867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121856 n : ℚ) + (A121381 n : ℚ) / (A004084 (n + 1) : ℚ)

end

end A121857.P18100654342358199867

namespace A121857

/-- `A121856(n)+A121381(n)/A004084(n+1)` -/
def P18100654342358199867.Spec : Prop :=
  ∀ n, P18100654342358199867.a n = (A121857 n : ℚ)

end A121857

/-! ## A121857.P7018884895922307604

`A136579(A049084(2*(n+1)))+A121856(n)`
-/

namespace A121857.P7018884895922307604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136579 (A049084 (2 * (n + 1))).toNat + A121856 n

end

end A121857.P7018884895922307604

namespace A121857

/-- `A136579(A049084(2*(n+1)))+A121856(n)` -/
def P7018884895922307604.Spec : Prop :=
  ∀ n, P7018884895922307604.a n = A121857 n

end A121857

/-! ## A121857.P601621302912094399

`char[A166133(n+1)]+floor(e*sqrt(n))`
-/

namespace A121857.P601621302912094399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166133 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.exp 1 * Real.sqrt (n : ℝ)⌋

end

end A121857.P601621302912094399

namespace A121857

/-- `char[A166133(n+1)]+floor(e*sqrt(n))` -/
def P601621302912094399.Spec : Prop :=
  ∀ n, P601621302912094399.a n = A121857 n

end A121857

/-! ## A121857.P340224434907566874

`A135034(ceil(n*exp(2)))`
-/

namespace A121857.P340224434907566874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 ⌈(n : ℝ) * Real.exp (2 : ℝ)⌉.toNat

end

end A121857.P340224434907566874

namespace A121857

/-- `A135034(ceil(n*exp(2)))` -/
def P340224434907566874.Spec : Prop :=
  ∀ n, P340224434907566874.a n = A121857 n

end A121857

/-! ## A121857.P2423261202059937705

`char[A001058(n+2)]+floor(e*sqrt(n))`
-/

namespace A121857.P2423261202059937705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001058 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊Real.exp 1 * Real.sqrt (n : ℝ)⌋

end

end A121857.P2423261202059937705

namespace A121857

/-- `char[A001058(n+2)]+floor(e*sqrt(n))` -/
def P2423261202059937705.Spec : Prop :=
  ∀ n, P2423261202059937705.a n = A121857 n

end A121857

/-!
# A121858: Smallest odd number having prime(n) divisors, where prime(n) is the n-th prime=A000040(n).

The programs for A121858, the canonical program `A121858.P4793984350226281940` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121858 has offset 1).

The definition of A121858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121858.P4793984350226281940

`3^A006093(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121858

/-- `3^A006093(n+1)` -/
def P4793984350226281940.Spec : Prop :=
  ∀ n, P4793984350226281940.a n = (A121858 (n + 1) : ℚ)

end A121858

/-! ## A121858.P16295576514614281958

`3^(A000040(n+1)-1)`
-/

namespace A121858.P16295576514614281958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000040 (n + 1) - 1 : ℤ)

end

end A121858.P16295576514614281958

namespace A121858

/-- `3^(A000040(n+1)-1)` -/
def P16295576514614281958.Spec : Prop :=
  ∀ n, P16295576514614281958.a n = (A121858 (n + 1) : ℚ)

end A121858

/-! ## A121858.P14004721204837162370

`A038547(A000040(n+1))`
-/

namespace A121858.P14004721204837162370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (A000040 (n + 1)).toNat

end

end A121858.P14004721204837162370

namespace A121858

/-- `A038547(A000040(n+1))` -/
def P14004721204837162370.Spec : Prop :=
  ∀ n, P14004721204837162370.a n = A121858 (n + 1)

end A121858

/-! ## A121858.P750592682335486813

`record[3^∏{p}[n, #-1]]`
-/

namespace A121858.P750592682335486813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121858.P750592682335486813

namespace A121858

/-- `record[3^∏{p}[n, #-1]]` -/
def P750592682335486813.Spec : Prop :=
  ∀ n, P750592682335486813.a n = (A121858 (n + 1) : ℚ)

end A121858

/-! ## A121858.P16240381969231167135

`3^(p?[comp[n²]]-1)`
-/

namespace A121858.P16240381969231167135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℤ)

end

end A121858.P16240381969231167135

namespace A121858

/-- `3^(p?[comp[n²]]-1)` -/
def P16240381969231167135.Spec : Prop :=
  ∀ n, P16240381969231167135.a n = (A121858 (n + 1) : ℚ)

end A121858

/-!
# A121859: Numbers n such that n!*3^n - 1 is prime.

The programs for A121859, there is no canonical definition to state claims against.
-/

/-! ## A121859.P11912067571782822592

`record[A135997(A084438(n+1))]`
-/

namespace A121859.P11912067571782822592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A084438 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121859.P11912067571782822592

/-!
# A121860: a(n) = Sum_{d|n} n!/(d!*(n/d)!).

The programs for A121860, the canonical program `A121860.P3803504255488957288` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121860 has offset 1).

The definition of A121860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121860.P3803504255488957288

`∑{d}[n+1, (n+1)!/(#!*((n+1)/#)!)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121860

/-- `∑{d}[n+1, (n+1)!/(#!*((n+1)/#)!)]` -/
def P3803504255488957288.Spec : Prop :=
  ∀ n, P3803504255488957288.a n = (A121860 (n + 1) : ℚ)

end A121860

/-! ## A121860.P16121738163371581133

`floor(A079242(n+1)+acot(n))`
-/

namespace A121860.P16121738163371581133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079242 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A121860.P16121738163371581133

namespace A121860

/-- `floor(A079242(n+1)+acot(n))` -/
def P16121738163371581133.Spec : Prop :=
  ∀ n, P16121738163371581133.a n = A121860 (n + 1)

end A121860

/-! ## A121860.P5902944892895852258

`A028310(A079242(n+1))`
-/

namespace A121860.P5902944892895852258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A079242 (n + 1)).toNat

end

end A121860.P5902944892895852258

namespace A121860

/-- `A028310(A079242(n+1))` -/
def P5902944892895852258.Spec : Prop :=
  ∀ n, P5902944892895852258.a n = A121860 (n + 1)

end A121860

/-! ## A121860.P10683487473899671658

`A079242(n+1)+A000007(n)`
-/

namespace A121860.P10683487473899671658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079242 (n + 1) + A000007 n

end

end A121860.P10683487473899671658

namespace A121860

/-- `A079242(n+1)+A000007(n)` -/
def P10683487473899671658.Spec : Prop :=
  ∀ n, P10683487473899671658.a n = A121860 (n + 1)

end A121860

/-!
# A121861: Least previously nonoccurring positive integer such that partial sum + 1 is prime.

The programs for A121861, there is no canonical definition to state claims against.
-/

/-! ## A121861.P5421262665319515710

`Δ[A159477(A138244(n+1))]`
-/

namespace A121861.P5421262665319515710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A138244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121861.P5421262665319515710

/-!
# A121862: Least previously nonoccurring positive integer such that partial sum + 2 is prime.

The programs for A121862, there is no canonical definition to state claims against.
-/

/-! ## A121862.P7347832824454668653

`Δ[A084758(n+1)]`
-/

namespace A121862.P7347832824454668653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121862.P7347832824454668653

/-! ## A121862.P5522247131724291469

`A084758(n+2)-A084758(n+1)`
-/

namespace A121862.P5522247131724291469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (n + 2) - A084758 (n + 1)

end

end A121862.P5522247131724291469

/-! ## A121862.P5108256500267724986

`abs(Δ[A084758(A028242(2*n))])`
-/

namespace A121862.P5108256500267724986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A121862.P5108256500267724986

/-! ## A121862.P11830504097317918683

`Δ[A084758(A028242(2*n))%A017138(n)]`
-/

namespace A121862.P11830504097317918683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084758 (A028242 (2 * n)).toNat) (A017138 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121862.P11830504097317918683

/-! ## A121862.P5135077110268210979

`Δ[A084758(A028242(2*n))]%A017185(n)`
-/

namespace A121862.P5135077110268210979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A017185 n)

end

end A121862.P5135077110268210979

/-! ## A121862.P10494653364376077009

`Δ[A084758(A028242(2*n))]*A010052(n²)`
-/

namespace A121862.P10494653364376077009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084758 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010052 (n ^ 2)

end

end A121862.P10494653364376077009

/-! ## A121862.P4023074822454871827

`C(2, n+2)+2*A166108(n)`
-/

namespace A121862.P4023074822454871827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + 2 * A166108 n

end

end A121862.P4023074822454871827

/-! ## A121862.P14760840322385828910

`A004277(A166108(n))`
-/

namespace A121862.P14760840322385828910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A166108 n).toNat

end

end A121862.P14760840322385828910

/-! ## A121862.P9788868723876935788

`A020639(a(n-1))*A166108(n)` with `a(0)=1, a(1)=2`
-/

namespace A121862.P9788868723876935788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A166108 n

end

end A121862.P9788868723876935788

/-! ## A121862.P15543780001523181251

`A000010(n+2)%2+2*A166108(n)`
-/

namespace A121862.P15543780001523181251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2 + 2 * A166108 n

end

end A121862.P15543780001523181251

/-!
# A121867: Let A(0) = 1, B(0) = 0; A(n+1) = Sum_{k=0..n} binomial(n,k)*B(k), B(n+1) = Sum_{k=0..n} -binomial(n,k)*A(k); entry gives A sequence (cf. A121868).

The programs for A121867, there is no canonical definition to state claims against.
-/

/-! ## A121867.P12472621745932465452

`A365525(n)-A365527(n)`
-/

namespace A121867.P12472621745932465452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365525 n - A365527 n

end

end A121867.P12472621745932465452

/-! ## A121867.P12126934657322179033

`A357728(∑[n+2]-1)`
-/

namespace A121867.P12126934657322179033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A121867.P12126934657322179033

/-! ## A121867.P177399305572497350

`A357728(A034856(n+1))+C(n, A000124(n))`
-/

namespace A121867.P177399305572497350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A034856 (n + 1)).toNat + (Nat.choose n (A000124 n).toNat : ℤ)

end

end A121867.P177399305572497350

/-! ## A121867.P2628546361506237537

`A357728(A034856(n+1))+C(n, A002496(n+1))`
-/

namespace A121867.P2628546361506237537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A034856 (n + 1)).toNat + (Nat.choose n (A002496 (n + 1)).toNat : ℤ)

end

end A121867.P2628546361506237537

/-! ## A121867.P9323081518062630791

`A357728(A034856(n+1))+C(n, A070858(n+1))`
-/

namespace A121867.P9323081518062630791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A034856 (n + 1)).toNat + (Nat.choose n (A070858 (n + 1)).toNat : ℤ)

end

end A121867.P9323081518062630791

/-! ## A121867.P6014633222394645990

`A357728(A034856(n+1))^A178489(n)`
-/

namespace A121867.P6014633222394645990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357728 (A034856 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A121867.P6014633222394645990

/-! ## A121867.P11963906280335481759

`A357728(A034856(n+1))^A323022(n+1)`
-/

namespace A121867.P11963906280335481759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357728 (A034856 (n + 1)).toNat : ℚ) ^ (A323022 (n + 1) : ℤ)

end

end A121867.P11963906280335481759

/-! ## A121867.P6667747053336321908

`A357728(A034856(n+1))+C(n, A010350(n+1))`
-/

namespace A121867.P6667747053336321908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357728 (A034856 (n + 1)).toNat + (Nat.choose n (A010350 (n + 1)).toNat : ℤ)

end

end A121867.P6667747053336321908

/-!
# A121869: Monthly Problem 10791, first expression.

The programs for A121869, there is no canonical definition to state claims against.
-/

/-! ## A121869.P4361876793628042938

`A024429(n)²-A024430(n)²`
-/

namespace A121869.P4361876793628042938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024429 n ^ 2 - A024430 n ^ 2

end

end A121869.P4361876793628042938

/-! ## A121869.P3845043578045165679

`-(A000110(n)*A000587(n))`
-/

namespace A121869.P3845043578045165679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000110 n * A000587 n)

end

end A121869.P3845043578045165679

/-! ## A121869.P16787713533864922671

`-(A000587(n)*A095149(A000096(n)))`
-/

namespace A121869.P16787713533864922671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000587 n * A095149 (A000096 n).toNat)

end

end A121869.P16787713533864922671

/-! ## A121869.P6784560746977432708

`-(A000110(n)*A293015(A000096(n)))`
-/

namespace A121869.P6784560746977432708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000110 n * A293015 (A000096 n).toNat)

end

end A121869.P6784560746977432708

/-! ## A121869.P16178128278824692067

`(A024429(n)-A024430(n))*A000110(n)`
-/

namespace A121869.P16178128278824692067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024429 n - A024430 n) * A000110 n

end

end A121869.P16178128278824692067

/-! ## A121869.P2573113010221124970

`-(A000587(n)*A212431(A034856(n+1)))`
-/

namespace A121869.P2573113010221124970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000587 n * A212431 (A034856 (n + 1)).toNat)

end

end A121869.P2573113010221124970

/-! ## A121869.P6911334676559969395

`-(A000110(n)*A292861(A034856(n+1)))`
-/

namespace A121869.P6911334676559969395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000110 n * A292861 (A034856 (n + 1)).toNat)

end

end A121869.P6911334676559969395

/-! ## A121869.P12692209508586713777

`A000007(n+1)-A000110(n)*A000587(n)`
-/

namespace A121869.P12692209508586713777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A000110 n * A000587 n

end

end A121869.P12692209508586713777

/-!
# A121870: Monthly Problem 10791, second expression.

The programs for A121870, there is no canonical definition to state claims against.
-/

/-! ## A121870.P16471093532645807611

`A121867(n)²+A121868(n)²`
-/

namespace A121870.P16471093532645807611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121867 n ^ 2 + A121868 n ^ 2

end

end A121870.P16471093532645807611

/-! ## A121870.P10555682981512910890

`A311613((n-1)*a(n-1))/2` with `a(0)=1, a(1)=1`
-/

namespace A121870.P10555682981512910890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A311613 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * a (n - 1))).toNat : ℚ) / 2

end

end A121870.P10555682981512910890

/-!
# A121872: Triangle T(n, k) = (k*ChebyshevU(n, (k+2)/2) + 2*ChebyshevT(n+1, (k+2)/2))/2.

The programs for A121872, there is no canonical definition to state claims against.
-/

/-! ## A121872.P14022612666733170948

`A085601(n)%A262749(A124461(n))`
-/

namespace A121872.P14022612666733170948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085601 n) (A262749 (A124461 n).toNat)

end

end A121872.P14022612666733170948

/-!
# A121874: Numbers k such that Fibonacci(k) == 0 (mod triangular(k)).

The programs for A121874, there is no canonical definition to state claims against.
-/

/-! ## A121874.P5129436073270164509

`eq[A000007(n), A121343(n)]`
-/

namespace A121874.P5129436073270164509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121874.P5129436073270164509

/-! ## A121874.P13028805286279272145

`eq[A000038(n), A121343(n)]`
-/

namespace A121874.P13028805286279272145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121874.P13028805286279272145

/-! ## A121874.P12932320845736464113

`eq[n+1, A028310(n)+A121343(n)+1]`
-/

namespace A121874.P12932320845736464113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A121343 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121874.P12932320845736464113

/-! ## A121874.P1514046557912879587

`eq[A121343(n)+1, A000045(round(n/(n+1)))]`
-/

namespace A121874.P1514046557912879587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121343 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121874.P1514046557912879587

/-! ## A121874.P13258796279280316280

`eq[A008683(A008574(n)), A121343(n)]`
-/

namespace A121874.P13258796279280316280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121874.P13258796279280316280

/-! ## A121874.P4562420786961530491

`eq[A033716(A061389(n+1)), A121343(n)]`
-/

namespace A121874.P4562420786961530491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (A061389 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121874.P4562420786961530491

/-!
# A121875: Triangular array read by rows: see Comments for definition.

The programs for A121875, there is no canonical definition to state claims against.
-/

/-! ## A121875.P4712360038031367807

`A006530(A209664(n+1)+A029577(n))`
-/

namespace A121875.P4712360038031367807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A209664 (n + 1) + A029577 n).toNat

end

end A121875.P4712360038031367807

/-! ## A121875.P7506025031947378360

`A006530(A209664(n+1)%A358886(n+1))`
-/

namespace A121875.P7506025031947378360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A209664 (n + 1)) (A358886 (n + 1))).toNat

end

end A121875.P7506025031947378360

/-! ## A121875.P13210530876772356595

`A006530(lcm(A120065(n+1), A209664(n+1)))`
-/

namespace A121875.P13210530876772356595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A120065 (n + 1)) (A209664 (n + 1)))

end

end A121875.P13210530876772356595

/-! ## A121875.P6125711255471940948

`A006530(A209664(n+1))%A061954(2*(n+1))`
-/

namespace A121875.P6125711255471940948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A209664 (n + 1)).toNat) (A061954 (2 * (n + 1)))

end

end A121875.P6125711255471940948

/-! ## A121875.P10310706555474724786

`A006530(A209664(n+1)²)`
-/

namespace A121875.P10310706555474724786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A209664 (n + 1) ^ 2).toNat

end

end A121875.P10310706555474724786

/-!
# A121876: a(n) = number of solutions to the Diophantine equation x+y^2+z^3=n^4 with positive x,y,z.

The programs for A121876, there is no canonical definition to state claims against.
-/

/-! ## A121876.P18175281532397321836

`∑[n*A282429(3*n+1)]`
-/

namespace A121876.P18175281532397321836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282429 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121876.P18175281532397321836

/-! ## A121876.P5778330622957513732

`A005898(n)-A373811(A005898(n))`
-/

namespace A121876.P5778330622957513732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A373811 (A005898 n).toNat

end

end A121876.P5778330622957513732

/-!
# A121877: Numbers k such that (5^k - 3^k)/2 = A005059(k) is prime.

The programs for A121877, there is no canonical definition to state claims against.
-/

/-! ## A121877.P3891039003114273609

`A000040(A123704(n+1))`
-/

namespace A121877.P3891039003114273609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123704 (n + 1)).toNat

end

end A121877.P3891039003114273609

/-! ## A121877.P16598305821312704176

`A008578(A123704(n+1)+1)`
-/

namespace A121877.P16598305821312704176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A123704 (n + 1) + 1).toNat

end

end A121877.P16598305821312704176

/-! ## A121877.P4775307280995009111

`A065091(A123704(n+1)-1)`
-/

namespace A121877.P4775307280995009111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A123704 (n + 1) - 1).toNat

end

end A121877.P4775307280995009111

/-! ## A121877.P15474338066911608373

`A158611(A123704(n+1)+2)`
-/

namespace A121877.P15474338066911608373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A123704 (n + 1) + 2).toNat

end

end A121877.P15474338066911608373

/-! ## A121877.P10471394489814000040

`∑{d}[A123704(n+1), A007444(#)]`
-/

namespace A121877.P10471394489814000040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A121877.P10471394489814000040

/-!
# A121878: a(1)=1. a(n) = the smallest positive integer not occurring earlier in the sequence such that a(n-1)+a(n) is squarefree.

The programs for A121878, there is no canonical definition to state claims against.
-/

/-! ## A121878.P10513415997019619186

`A167905(A167904(n+1))`
-/

namespace A121878.P10513415997019619186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167905 (A167904 (n + 1)).toNat

end

end A121878.P10513415997019619186

/-! ## A121878.P9776011492728890554

`A167904(A167905(n-log2(1/2)))`
-/

namespace A121878.P9776011492728890554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A167905 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat

end

end A121878.P9776011492728890554

/-! ## A121878.P5210719045108889564

`A167907(n)-a(n-1)` with `a(0)=1`
-/

namespace A121878.P5210719045108889564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167907 n - a (n - 1)

end

end A121878.P5210719045108889564

/-! ## A121878.P14955414907531598564

`A007302(A288053(n))+n`
-/

namespace A121878.P14955414907531598564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A288053 n).toNat + (n : ℤ)

end

end A121878.P14955414907531598564

/-! ## A121878.P1423885088474598390

`A167905(n+1)-A044939(A333476(n))`
-/

namespace A121878.P1423885088474598390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167905 (n + 1) - A044939 (A333476 n).toNat

end

end A121878.P1423885088474598390

/-!
# A121879: a(n) = Fibonacci(n-1)*a(n-1) - a(n-2), with a(1)=0, a(2)=1.

The programs for A121879, the canonical program `A121879.P1824838234660919124` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121879 has offset 1).

The definition of A121879 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*a(n-1)-a(n-2)` (program `A121879.P1824838234660919124`, by `A121879.P1824838234660919124.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121879.P1824838234660919124

`A000045(n)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121879

/-- `A000045(n)*a(n-1)-a(n-2)` -/
def P1824838234660919124.Spec : Prop :=
  ∀ n, P1824838234660919124.a n = A121879 (n + 1)

theorem P1824838234660919124.correct : P1824838234660919124.Spec := by
  intro n
  simp only [A121879, Nat.add_sub_cancel]

end A121879

/-! ## A121879.P10623408013748185663

`a(n-1)*A324969(n+1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A121879.P10623408013748185663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * A324969 (n + 1) - a (n - 2)

end

end A121879.P10623408013748185663

namespace A121879

/-- `a(n-1)*A324969(n+1)-a(n-2)` -/
def P10623408013748185663.Spec : Prop :=
  ∀ n, P10623408013748185663.a n = A121879 (n + 1)

end A121879

/-! ## A121879.P15752610841569166737

`(A157725(n)-2)*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A121879.P15752610841569166737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (A157725 n - 2) * a (n - 1) - a (n - 2)

end

end A121879.P15752610841569166737

namespace A121879

/-- `(A157725(n)-2)*a(n-1)-a(n-2)` -/
def P15752610841569166737.Spec : Prop :=
  ∀ n, P15752610841569166737.a n = A121879 (n + 1)

theorem P15752610841569166737.correct : P15752610841569166737.Spec := by
  intro n
  simp only [A121879, Nat.add_sub_cancel, A121879.P15752610841569166737.a, A121879.P1824838234660919124.a, A000045, A000045.P11838749114346432762.a, A157725, A157725.P13486500630838488650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121879

/-!
# A121880: a(n) = 2^n - A122536(n).

The programs for A121880, there is no canonical definition to state claims against.
-/

/-! ## A121880.P18038113568702485946

`2^(n+1)-A122536(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121880.P18038113568702485946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A122536 (n + 1)

end

end A121880.P18038113568702485946

/-! ## A121880.P5416386296389624431

`and(-A122536(n+1), A126646(n))`
-/

namespace A121880.P5416386296389624431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A122536 (n + 1)) (A126646 n)

end

end A121880.P5416386296389624431

/-! ## A121880.P5188542460954784600

`abs(A122536(n+1)-A166444(n+3))`
-/

namespace A121880.P5188542460954784600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122536 (n + 1) - A166444 (n + 3)|

end

end A121880.P5188542460954784600

/-! ## A121880.P6311846325907225452

`∑[A000079(n)]-A122536(n+1)+1`
-/

namespace A121880.P6311846325907225452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122536 (n + 1) + 1

end

end A121880.P6311846325907225452

/-! ## A121880.P17823623541332450620

`A000225(n+1)-A122536(n+1)+1`
-/

namespace A121880.P17823623541332450620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A122536 (n + 1) + 1

end

end A121880.P17823623541332450620

/-! ## A121880.P13503071661919041970

`A003000(n+1)+A094536(n+1)-A122536(n+1)`
-/

namespace A121880.P13503071661919041970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 (n + 1) + (A094536 (n + 1) - A122536 (n + 1))

end

end A121880.P13503071661919041970

/-! ## A121880.P4116515883655002135

`A094536(n+1)-A122536(n+1)%A045690(n+1)`
-/

namespace A121880.P4116515883655002135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094536 (n + 1) - Int.tmod (A122536 (n + 1)) (A045690 (n + 1))

end

end A121880.P4116515883655002135

/-! ## A121880.P10207866787157736131

`A000079(n+1)-A216955(A008619(n²+n))`
-/

namespace A121880.P10207866787157736131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A216955 (A008619 (n ^ 2 + n)).toNat

end

end A121880.P10207866787157736131

/-!
# A121881: a(n) = (4*a(n-1)*a(n-3) + a(n-2)^2)/a(n-4), with a(1)=...=a(4)=1.

The programs for A121881, the canonical program `A121881.P16021117183419309708` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121881 has offset 1).

The definition of A121881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121881.P16021117183419309708

`(4*a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121881

/-- `(4*a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P16021117183419309708.Spec : Prop :=
  ∀ n, P16021117183419309708.a n = (A121881 (n + 1) : ℚ)

end A121881

/-! ## A121881.P15211639423647215050

`A147243(∏{e}[9^n, #])`
-/

namespace A121881.P15211639423647215050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147243 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A121881.P15211639423647215050

namespace A121881

/-- `A147243(∏{e}[9^n, #])` -/
def P15211639423647215050.Spec : Prop :=
  ∀ n, P15211639423647215050.a n = A121881 (n + 1)

end A121881

/-! ## A121881.P596157568638428027

`A354934(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A121881.P596157568638428027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A354934 (a (n - 1)).toNat

end

end A121881.P596157568638428027

namespace A121881

/-- `A354934(a(n-1))` -/
def P596157568638428027.Spec : Prop :=
  ∀ n, P596157568638428027.a n = A121881 (n + 1)

end A121881

/-!
# A121882: Numbers k such that k + D(k) + 1 is prime, where D() are the doublets, A020338.

The programs for A121882, there is no canonical definition to state claims against.
-/

/-! ## A121882.P18353445498101951438

`eq[2, A000005(A020338(n+1)+2+n)]+1`
-/

namespace A121882.P18353445498101951438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A020338 (n + 1) + 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121882.P18353445498101951438

/-! ## A121882.P17705822345249940727

`lt[A001222(A020338(n+1)+2+n), 2]+1`
-/

namespace A121882.P17705822345249940727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020338 (n + 1) + 2 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A121882.P17705822345249940727

/-! ## A121882.P13862077777451319404

`eq[0, A050372(A127421(n+1)+n)]`
-/

namespace A121882.P13862077777451319404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (A127421 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121882.P13862077777451319404

/-! ## A121882.P9717887659441511952

`eq[1, A010051(A127421(n+1)+n)]`
-/

namespace A121882.P9717887659441511952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A127421 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121882.P9717887659441511952

/-! ## A121882.P15153276251289943331

`eq[1, A023645(A127421(n+1)+n)]`
-/

namespace A121882.P15153276251289943331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A127421 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121882.P15153276251289943331

/-!
# A121883: a(n) = (2*a(n-1)*a(n-3) + a(n-2)^2)/a(n-4), with a(1)=..=a(4)=1.

The programs for A121883, the canonical program `A121883.P5381704327631257918` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121883 has offset 1).

The definition of A121883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121883.P5381704327631257918

`(2*a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121883

/-- `(2*a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P5381704327631257918.Spec : Prop :=
  ∀ n, P5381704327631257918.a n = (A121883 (n + 1) : ℚ)

end A121883

/-! ## A121883.P11504266418588404199

`or(floor(n/2), A112739(ceil(3*2^(n-3))))`
-/

namespace A121883.P11504266418588404199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(n : ℚ) / 2⌋ (A112739 ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉.toNat)

end

end A121883.P11504266418588404199

namespace A121883

/-- `or(floor(n/2), A112739(ceil(3*2^(n-3))))` -/
def P11504266418588404199.Spec : Prop :=
  ∀ n, P11504266418588404199.a n = A121883 (n + 1)

end A121883

/-! ## A121883.P12905983576022215747

`or(1, A230493(∑[4*a(n-1)+6]))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A121883.P12905983576022215747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n f1 =>
  4 * f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A230493 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A121883.P12905983576022215747

namespace A121883

/-- `or(1, A230493(∑[4*a(n-1)+6]))` -/
def P12905983576022215747.Spec : Prop :=
  ∀ n, P12905983576022215747.a n = A121883 (n + 1)

end A121883

/-! ## A121883.P11135297692795517022

`A025454(A150122(n))`
-/

namespace A121883.P11135297692795517022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025454 (A150122 n).toNat

end

end A121883.P11135297692795517022

namespace A121883

/-- `A025454(A150122(n))` -/
def P11135297692795517022.Spec : Prop :=
  ∀ n, P11135297692795517022.a n = A121883 (n + 1)

end A121883

/-!
# A121884: Excess of n-th semiprime over previous prime.

The programs for A121884, the canonical program `A121884.P5648599266500705925` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121884 has offset 1).

The definition of A121884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121884.P13426095223820155304

`A049711(A001358(n+1))`
-/

namespace A121884.P13426095223820155304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A001358 (n + 1)).toNat

end

end A121884.P13426095223820155304

namespace A121884

/-- `A049711(A001358(n+1))` -/
def P13426095223820155304.Spec : Prop :=
  ∀ n, P13426095223820155304.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P6755307362020183627

`A175851(A186621(n+1))`
-/

namespace A121884.P6755307362020183627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A186621 (n + 1)).toNat

end

end A121884.P6755307362020183627

namespace A121884

/-- `A175851(A186621(n+1))` -/
def P6755307362020183627.Spec : Prop :=
  ∀ n, P6755307362020183627.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P3748947009437299129

`A049711(A176540(n+2))`
-/

namespace A121884.P3748947009437299129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A176540 (n + 2)).toNat

end

end A121884.P3748947009437299129

namespace A121884

/-- `A049711(A176540(n+2))` -/
def P3748947009437299129.Spec : Prop :=
  ∀ n, P3748947009437299129.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P18094440992258987556

`A064722(eq[2, A226378(n)])`
-/

namespace A121884.P18094440992258987556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P18094440992258987556

namespace A121884

/-- `A064722(eq[2, A226378(n)])` -/
def P18094440992258987556.Spec : Prop :=
  ∀ n, P18094440992258987556.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P10383338180544144974

`A049711(A088707(n+1)-1)`
-/

namespace A121884.P10383338180544144974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A088707 (n + 1) - 1).toNat

end

end A121884.P10383338180544144974

namespace A121884

/-- `A049711(A088707(n+1)-1)` -/
def P10383338180544144974.Spec : Prop :=
  ∀ n, P10383338180544144974.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P18316481514654041370

`A175851(A001358(n+1)-1)`
-/

namespace A121884.P18316481514654041370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A001358 (n + 1) - 1).toNat

end

end A121884.P18316481514654041370

namespace A121884

/-- `A175851(A001358(n+1)-1)` -/
def P18316481514654041370.Spec : Prop :=
  ∀ n, P18316481514654041370.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P9245924163247395018

`A175851(eq[1, A064911(n+1)])`
-/

namespace A121884.P9245924163247395018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P9245924163247395018

namespace A121884

/-- `A175851(eq[1, A064911(n+1)])` -/
def P9245924163247395018.Spec : Prop :=
  ∀ n, P9245924163247395018.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P253277336834951896

`A175851(eq[2, A001222(n+1)])`
-/

namespace A121884.P253277336834951896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P253277336834951896

namespace A121884

/-- `A175851(eq[2, A001222(n+1)])` -/
def P253277336834951896.Spec : Prop :=
  ∀ n, P253277336834951896.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P4342072753145894447

`A175851(eq[2, A008481(n+1)])`
-/

namespace A121884.P4342072753145894447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P4342072753145894447

namespace A121884

/-- `A175851(eq[2, A008481(n+1)])` -/
def P4342072753145894447.Spec : Prop :=
  ∀ n, P4342072753145894447.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P5648599266500705925

`A175851(eq[2, A105700(n+1)])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121884

/-- `A175851(eq[2, A105700(n+1)])` -/
def P5648599266500705925.Spec : Prop :=
  ∀ n, P5648599266500705925.a n = A121884 (n + 1)

theorem P5648599266500705925.correct : P5648599266500705925.Spec := by
  intro n
  simp only [A121884, Nat.add_sub_cancel]

end A121884

/-! ## A121884.P3165386203212245238

`A049711(eq[2, A001222(n+1)]+1)`
-/

namespace A121884.P3165386203212245238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121884.P3165386203212245238

namespace A121884

/-- `A049711(eq[2, A001222(n+1)]+1)` -/
def P3165386203212245238.Spec : Prop :=
  ∀ n, P3165386203212245238.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P13231780292749325327

`A064722(eq[2, A001222(n+1)]+1)`
-/

namespace A121884.P13231780292749325327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121884.P13231780292749325327

namespace A121884

/-- `A064722(eq[2, A001222(n+1)]+1)` -/
def P13231780292749325327.Spec : Prop :=
  ∀ n, P13231780292749325327.a n = A121884 (n + 1)

end A121884

/-! ## A121884.P2104034232449626805

`A175851(eq[1, A101605(2*(n+1))])`
-/

namespace A121884.P2104034232449626805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121884.P2104034232449626805

namespace A121884

/-- `A175851(eq[1, A101605(2*(n+1))])` -/
def P2104034232449626805.Spec : Prop :=
  ∀ n, P2104034232449626805.a n = A121884 (n + 1)

end A121884

/-!
# A121885: Excess of n-th prime over previous semiprime.

The programs for A121885, the canonical program `A121885.P15919958393073517928` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121885 has offset 3).

The definition of A121885 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121885.P15919958393073517928

`A000040(n+3)-A102415(n+3)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A121885

/-- `A000040(n+3)-A102415(n+3)` -/
def P15919958393073517928.Spec : Prop :=
  ∀ n, P15919958393073517928.a n = A121885 (n + 3)

theorem P15919958393073517928.correct : P15919958393073517928.Spec := by
  intro n
  simp only [A121885, Nat.add_sub_cancel]

end A121885

/-! ## A121885.P12035028268950793524

`A215848(n+1)-A102415(n+3)`
-/

namespace A121885.P12035028268950793524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A102415 (n + 3)

end

end A121885.P12035028268950793524

namespace A121885

/-- `A215848(n+1)-A102415(n+3)` -/
def P12035028268950793524.Spec : Prop :=
  ∀ n, P12035028268950793524.a n = A121885 (n + 3)

end A121885

/-! ## A121885.P15440542586405842130

`p?[A007310(n+1)]-A102415(n+3)`
-/

namespace A121885.P15440542586405842130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A102415 (n + 3)

end

end A121885.P15440542586405842130

namespace A121885

/-- `p?[A007310(n+1)]-A102415(n+3)` -/
def P15440542586405842130.Spec : Prop :=
  ∀ n, P15440542586405842130.a n = A121885 (n + 3)

end A121885

/-! ## A121885.P13765918070590565056

`p?[A267872(n)]-A102415(n+3)`
-/

namespace A121885.P13765918070590565056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A102415 (n + 3)

end

end A121885.P13765918070590565056

namespace A121885

/-- `p?[A267872(n)]-A102415(n+3)` -/
def P13765918070590565056.Spec : Prop :=
  ∀ n, P13765918070590565056.a n = A121885 (n + 3)

end A121885

/-! ## A121885.P4158229772792443208

`A283267(n+3)-A217612(n+3)`
-/

namespace A121885.P4158229772792443208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283267 (n + 3) - A217612 (n + 3)

end

end A121885.P4158229772792443208

namespace A121885

/-- `A283267(n+3)-A217612(n+3)` -/
def P4158229772792443208.Spec : Prop :=
  ∀ n, P4158229772792443208.a n = A121885 (n + 3)

theorem P4158229772792443208.correct : P4158229772792443208.Spec := by
  intro n
  simp only [A121885, Nat.add_sub_cancel, A121885.P4158229772792443208.a, A121885.P15919958393073517928.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A102415, A102415.P2630728663582649578.a, A217612, A217612.P9931106487089638916.a, A283267, A283267.P1232210080466933230.a, A001358, A001358.P632087320844056370.a, A102414, A102414.P12501286491310177923.a, A111457, A111457.P8327054384123137751.a, A006093, A006093.P2906174024863549003.a, A072000, A072000.P3706059858088101648.a, A088707, A088707.P7291141647877559993.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121885

/-! ## A121885.P3317312682431779176

`A045344(n+2)-A102440(A045344(n+2))`
-/

namespace A121885.P3317312682431779176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - A102440 (A045344 (n + 2)).toNat

end

end A121885.P3317312682431779176

namespace A121885

/-- `A045344(n+2)-A102440(A045344(n+2))` -/
def P3317312682431779176.Spec : Prop :=
  ∀ n, P3317312682431779176.a n = A121885 (n + 3)

end A121885

/-! ## A121885.P11878697077363670440

`A065091(n+2)-A102440(A065091(n+2))`
-/

namespace A121885.P11878697077363670440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A102440 (A065091 (n + 2)).toNat

end

end A121885.P11878697077363670440

namespace A121885

/-- `A065091(n+2)-A102440(A065091(n+2))` -/
def P11878697077363670440.Spec : Prop :=
  ∀ n, P11878697077363670440.a n = A121885 (n + 3)

end A121885

/-!
# A121886: a(n) = (1/n!)* Sum_{k=0..n} |Stirling1(n,k)|*A122399(k).

The programs for A121886, there is no canonical definition to state claims against.
-/

/-! ## A121886.P7030488452139182055

`A076593(A033321(n))`
-/

namespace A121886.P7030488452139182055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076593 (A033321 n).toNat

end

end A121886.P7030488452139182055

/-!
# A121887: a(n) = (n^5 - 133*n^4 + 6729*n^3 - 158379*n^2 + 1720294*n - 6823316)/4.

The programs for A121887, there is no canonical definition to state claims against.
-/

/-! ## A121887.P5746276111194770137

`-A272710(n+1)^A147077(n+1)`
-/

namespace A121887.P5746276111194770137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A272710 (n + 1) : ℚ) ^ (A147077 (n + 1) : ℤ))

end

end A121887.P5746276111194770137

/-! ## A121887.P13508903615127848300

`and(2, A272697(n+1))-A272710(n+1)`
-/

namespace A121887.P13508903615127848300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A272697 (n + 1)) - A272710 (n + 1)

end

end A121887.P13508903615127848300

/-! ## A121887.P14371943093557194005

`A000007(A000108(n))-A272710(n+1)`
-/

namespace A121887.P14371943093557194005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000108 n).toNat - A272710 (n + 1)

end

end A121887.P14371943093557194005

/-! ## A121887.P1708336253680305987

`A000007(A007718(n))-A272710(n+1)`
-/

namespace A121887.P1708336253680305987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A007718 n).toNat - A272710 (n + 1)

end

end A121887.P1708336253680305987

/-!
# A121889: Least m such that (prime(n) mod m) > (prime(n+1) mod m).

The programs for A121889, there is no canonical definition to state claims against.
-/

/-! ## A121889.P1520342374067757345

`A007978(A006093(n+1)*A006254(n+1))`
-/

namespace A121889.P1520342374067757345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1) * A006254 (n + 1)).toNat

end

end A121889.P1520342374067757345

/-! ## A121889.P17893962491481565958

`A337686(A006093(n+1)*A006254(n+1))`
-/

namespace A121889.P17893962491481565958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (A006093 (n + 1) * A006254 (n + 1)).toNat

end

end A121889.P17893962491481565958

/-! ## A121889.P14890927312148422354

`A007978(eq[2, A046523(n+1)]*A006254(n+1))`
-/

namespace A121889.P14890927312148422354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A006254 (n + 1)).toNat

end

end A121889.P14890927312148422354

/-! ## A121889.P4020803381458822060

`A007978(A006254(n+1)*A291463(n+1))`
-/

namespace A121889.P4020803381458822060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006254 (n + 1) * A291463 (n + 1)).toNat

end

end A121889.P4020803381458822060

/-! ## A121889.P11434338618046947662

`A337686(A006254(n+1)*A291463(n+1))`
-/

namespace A121889.P11434338618046947662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (A006254 (n + 1) * A291463 (n + 1)).toNat

end

end A121889.P11434338618046947662

/-!
# A121890: Least m such that (n mod m) > (n^2 mod m).

The programs for A121890, there is no canonical definition to state claims against.
-/

/-! ## A121890.P10849280458624787479

`A354597(∑[A354579(n)^A354600(n)])`
-/

namespace A121890.P10849280458624787479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354579 n : ℚ) ^ (A354600 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354597 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A121890.P10849280458624787479

/-! ## A121890.P6463494349133672418

`A090369(A113338(n+1)+A000217(n+1))`
-/

namespace A121890.P6463494349133672418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A113338 (n + 1) + A000217 (n + 1)).toNat

end

end A121890.P6463494349133672418

/-! ## A121890.P13120833318987765709

`A139401(A164845(2*n+1))`
-/

namespace A121890.P13120833318987765709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (A164845 (2 * n + 1)).toNat

end

end A121890.P13120833318987765709

/-!
# A121891: Least m such that (F(n) mod m) > (F(n+2) mod m).

The programs for A121891, there is no canonical definition to state claims against.
-/

/-! ## A121891.P3615120361027653723

`A336811(A263341(3*n+5)+A112865(n))`
-/

namespace A121891.P3615120361027653723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (A263341 (3 * n + 5) + A112865 n).toNat

end

end A121891.P3615120361027653723

/-! ## A121891.P1210872699844720970

`A336811(A263341(3*n+5)+(-1)^A029931(n))`
-/

namespace A121891.P1210872699844720970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (SequenceMachineLib.roundAway ((A263341 (3 * n + 5) : ℚ) + (-1 : ℚ) ^ (A029931 n : ℤ))).toNat

end

end A121891.P1210872699844720970

/-! ## A121891.P16520438438815815707

`A336811(A263341(3*n+5)+(-1)^A053737(n))`
-/

namespace A121891.P16520438438815815707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (SequenceMachineLib.roundAway ((A263341 (3 * n + 5) : ℚ) + (-1 : ℚ) ^ (A053737 n : ℤ))).toNat

end

end A121891.P16520438438815815707

/-! ## A121891.P8392124253878767513

`A336811(A263341(3*n+5)+or(1, -A341389(n)))`
-/

namespace A121891.P8392124253878767513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (A263341 (3 * n + 5) + Int.lor 1 (-A341389 n)).toNat

end

end A121891.P8392124253878767513

/-! ## A121891.P1733270311466453924

`A336811(A263341(3*n+5)+2*A112539(n+1)-1)`
-/

namespace A121891.P1733270311466453924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (A263341 (3 * n + 5) + (2 * A112539 (n + 1) - 1)).toNat

end

end A121891.P1733270311466453924

/-!
# A121892: Row sums of triangle in A066094.

The programs for A121892, there is no canonical definition to state claims against.
-/

/-! ## A121892.P4876958549369423800

`∏[n*a(2%n)]` with `a(0)=1, a(1)=2`
-/

namespace A121892.P4876958549369423800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n * f1 (2 % n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121892.P4876958549369423800

/-! ## A121892.P217095450759705583

`2^n*ceil(n!/2)`
-/

namespace A121892.P217095450759705583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ⌈(Nat.factorial n : ℚ) / 2⌉

end

end A121892.P217095450759705583

/-! ## A121892.P16947458447949923977

`2^n*round(n!/2)`
-/

namespace A121892.P16947458447949923977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)

end

end A121892.P16947458447949923977

/-! ## A121892.P17902145327545034497

`∏[gcd(2*n, (n+1)!)]`
-/

namespace A121892.P17902145327545034497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.factorial (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121892.P17902145327545034497

/-! ## A121892.P2767636503281937627

`∏[n*a(gcd(2, n))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A121892.P2767636503281937627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  n * f1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121892.P2767636503281937627

/-! ## A121892.P17411160469663160328

`2^(n-1)*lcm(2, n!)`
-/

namespace A121892.P17411160469663160328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.lcm 2 (Nat.factorial n) : ℚ)

end

end A121892.P17411160469663160328

/-! ## A121892.P18428157924112452031

`2*n*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A121892.P18428157924112452031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (n * a (n - 1))

end

end A121892.P18428157924112452031

/-! ## A121892.P7859233915876661896

`-∏[-or(-(2*n), (n+1)!)]`
-/

namespace A121892.P7859233915876661896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(2 * n : ℤ)) (Nat.factorial (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A121892.P7859233915876661896

/-! ## A121892.P18284483740803392677

`2^n*A001710(n)`
-/

namespace A121892.P18284483740803392677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001710 n

end

end A121892.P18284483740803392677

/-!
# A121893: Composite integers not equal to k*[k or k+1 or k+2] where k is a natural number.

The programs for A121893, the canonical program `A121893.P2090054264174111428` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121893 has offset 1).

The definition of A121893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121893.P2090054264174111428

`comp[∪[(n+2)²-1, A222030(n)]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121893

/-- `comp[∪[(n+2)²-1, A222030(n)]]` -/
def P2090054264174111428.Spec : Prop :=
  ∀ n, (P2090054264174111428.a n : ℤ) = A121893 (n + 1)

theorem P2090054264174111428.correct : P2090054264174111428.Spec := by
  intro n
  simp only [A121893, Nat.add_sub_cancel]

end A121893

/-! ## A121893.P1076250172348681429

`filter[A161827(n+1), A005171(#)]`
-/

namespace A121893.P1076250172348681429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A121893.P1076250172348681429

namespace A121893

/-- `filter[A161827(n+1), A005171(#)]` -/
def P1076250172348681429.Spec : Prop :=
  ∀ n, P1076250172348681429.a n = A121893 (n + 1)

end A121893

/-! ## A121893.P16266490108454458468

`filter[A161827(n+1), A066247(#)]`
-/

namespace A121893.P16266490108454458468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A121893.P16266490108454458468

namespace A121893

/-- `filter[A161827(n+1), A066247(#)]` -/
def P16266490108454458468.Spec : Prop :=
  ∀ n, P16266490108454458468.a n = A121893 (n + 1)

end A121893

/-! ## A121893.P6319527927220651593

`∩[A002808(n+1), A161827(n+1)]`
-/

namespace A121893.P6319527927220651593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P6319527927220651593

namespace A121893

/-- `∩[A002808(n+1), A161827(n+1)]` -/
def P6319527927220651593.Spec : Prop :=
  ∀ n, (P6319527927220651593.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P5960123145840204402

`∩[A018252(n+1), A161827(n+1)]`
-/

namespace A121893.P5960123145840204402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P5960123145840204402

namespace A121893

/-- `∩[A018252(n+1), A161827(n+1)]` -/
def P5960123145840204402.Spec : Prop :=
  ∀ n, (P5960123145840204402.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P7265485047894877050

`∩[A056653(n+1), A161827(n+1)]`
-/

namespace A121893.P7265485047894877050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P7265485047894877050

namespace A121893

/-- `∩[A056653(n+1), A161827(n+1)]` -/
def P7265485047894877050.Spec : Prop :=
  ∀ n, (P7265485047894877050.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P17497660285081113466

`∩[A065090(n+1), A161827(n+1)]`
-/

namespace A121893.P17497660285081113466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P17497660285081113466

namespace A121893

/-- `∩[A065090(n+1), A161827(n+1)]` -/
def P17497660285081113466.Spec : Prop :=
  ∀ n, (P17497660285081113466.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P18370337546594264273

`∩[A080257(n+1), A161827(n+1)]`
-/

namespace A121893.P18370337546594264273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P18370337546594264273

namespace A121893

/-- `∩[A080257(n+1), A161827(n+1)]` -/
def P18370337546594264273.Spec : Prop :=
  ∀ n, (P18370337546594264273.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P10301559707237476059

`∩[A089229(n+1), A161827(n+1)]`
-/

namespace A121893.P10301559707237476059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P10301559707237476059

namespace A121893

/-- `∩[A089229(n+1), A161827(n+1)]` -/
def P10301559707237476059.Spec : Prop :=
  ∀ n, (P10301559707237476059.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P7633944320323725794

`∩[A139118(n+1), A161827(n+1)]`
-/

namespace A121893.P7633944320323725794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P7633944320323725794

namespace A121893

/-- `∩[A139118(n+1), A161827(n+1)]` -/
def P7633944320323725794.Spec : Prop :=
  ∀ n, (P7633944320323725794.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P2840987243122191703

`∩[A141468(n+1), A161827(n+1)]`
-/

namespace A121893.P2840987243122191703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P2840987243122191703

namespace A121893

/-- `∩[A141468(n+1), A161827(n+1)]` -/
def P2840987243122191703.Spec : Prop :=
  ∀ n, (P2840987243122191703.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P1961263217651563625

`∩[A161827(n+1), A171581(n+1)]`
-/

namespace A121893.P1961263217651563625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P1961263217651563625

namespace A121893

/-- `∩[A161827(n+1), A171581(n+1)]` -/
def P1961263217651563625.Spec : Prop :=
  ∀ n, (P1961263217651563625.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P12801033865953230861

`∩[A161827(n+1), A173905(n+1)]`
-/

namespace A121893.P12801033865953230861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P12801033865953230861

namespace A121893

/-- `∩[A161827(n+1), A173905(n+1)]` -/
def P12801033865953230861.Spec : Prop :=
  ∀ n, (P12801033865953230861.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P15499378254850345811

`∩[A161827(n+1), A176423(n+1)]`
-/

namespace A121893.P15499378254850345811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P15499378254850345811

namespace A121893

/-- `∩[A161827(n+1), A176423(n+1)]` -/
def P15499378254850345811.Spec : Prop :=
  ∀ n, (P15499378254850345811.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P11014370938664061945

`∩[A161827(n+1), A220571(n+1)]`
-/

namespace A121893.P11014370938664061945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P11014370938664061945

namespace A121893

/-- `∩[A161827(n+1), A220571(n+1)]` -/
def P11014370938664061945.Spec : Prop :=
  ∀ n, (P11014370938664061945.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P17294932241734714490

`∩[A161827(n+1), A268388(n+1)]`
-/

namespace A121893.P17294932241734714490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P17294932241734714490

namespace A121893

/-- `∩[A161827(n+1), A268388(n+1)]` -/
def P17294932241734714490.Spec : Prop :=
  ∀ n, (P17294932241734714490.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P5446027357036734008

`∩[A161827(n+1), A343311(n+1)]`
-/

namespace A121893.P5446027357036734008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P5446027357036734008

namespace A121893

/-- `∩[A161827(n+1), A343311(n+1)]` -/
def P5446027357036734008.Spec : Prop :=
  ∀ n, (P5446027357036734008.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P11182486205939344867

`∩[A089229(n+1), A183866(n+1)]`
-/

namespace A121893.P11182486205939344867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121893.P11182486205939344867

namespace A121893

/-- `∩[A089229(n+1), A183866(n+1)]` -/
def P11182486205939344867.Spec : Prop :=
  ∀ n, (P11182486205939344867.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P7476565387734811829

`eq[A055671(n), A216210(2*n)]`
-/

namespace A121893.P7476565387734811829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121893.P7476565387734811829

namespace A121893

/-- `eq[A055671(n), A216210(2*n)]` -/
def P7476565387734811829.Spec : Prop :=
  ∀ n, (P7476565387734811829.a n : ℤ) = A121893 (n + 1)

end A121893

/-! ## A121893.P9379219842308976606

`eq[A055672(n), A216210(2*n)]`
-/

namespace A121893.P9379219842308976606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121893.P9379219842308976606

namespace A121893

/-- `eq[A055672(n), A216210(2*n)]` -/
def P9379219842308976606.Spec : Prop :=
  ∀ n, (P9379219842308976606.a n : ℤ) = A121893 (n + 1)

end A121893

/-!
# A121894: Van der Waerden numbers: A005346(n) - 1.

The programs for A121894, there is no canonical definition to state claims against.
-/

/-! ## A121894.P13705132091848031186

`A005346(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121894.P13705132091848031186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005346 (n + 1) - 1

end

end A121894.P13705132091848031186

/-!
# A121895: Number of partitions of n into 4 summands a>=b>=c>=d>0 with integer a/b, b/c and c/d.

The programs for A121895, there is no canonical definition to state claims against.
-/

/-! ## A121895.P8093178861982008970

`A122934(A145018(n+1))-C(2, C(n², 5))`
-/

namespace A121895.P8093178861982008970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122934 (A145018 (n + 1)).toNat - (Nat.choose 2 (Nat.choose (n ^ 2) 5) : ℤ)

end

end A121895.P8093178861982008970

/-! ## A121895.P1281068844360663871

`A122934(A145018(n+1))%A062484(n)`
-/

namespace A121895.P1281068844360663871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122934 (A145018 (n + 1)).toNat) (A062484 n)

end

end A121895.P1281068844360663871

/-! ## A121895.P16322020875866707216

`A122934(A145018(n+1))-C(A056239(n+1), n)`
-/

namespace A121895.P16322020875866707216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122934 (A145018 (n + 1)).toNat - (Nat.choose (A056239 (n + 1)).toNat n : ℤ)

end

end A121895.P16322020875866707216

/-!
# A121896: Let M be the matrix defined in A111490. Sequence gives M(1,1), M(1,2)+M(1,2)+M(2,2), M(1,3)+M(2,3)+M(3,1)+M(3,2)+M(3,3), etc.

The programs for A121896, there is no canonical definition to state claims against.
-/

/-! ## A121896.P3388012957748255632

`∑[3*n+1-∑{d}[n, #]]`
-/

namespace A121896.P3388012957748255632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121896.P3388012957748255632

/-! ## A121896.P7486183119518676803

`∑[1-(∑{d}[n, #]-3*n)]`
-/

namespace A121896.P7486183119518676803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (3 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121896.P7486183119518676803

/-! ## A121896.P15915853574691215212

`∑[Δ[n²]-∑{d}[n, #]+n]`
-/

namespace A121896.P15915853574691215212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121896.P15915853574691215212

/-! ## A121896.P8907160856575639023

`∑[Δ[n²]-∑{d}[n, #%n]]`
-/

namespace A121896.P8907160856575639023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d % n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121896.P8907160856575639023

/-! ## A121896.P16008634111200618777

`∑[n-∑{d}[n, #]]+(n+1)²`
-/

namespace A121896.P16008634111200618777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A121896.P16008634111200618777

/-! ## A121896.P5985973144439962451

`∑[n+1+n-∑{d}[n, #]+n]`
-/

namespace A121896.P5985973144439962451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ((n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121896.P5985973144439962451

/-! ## A121896.P7033561771115514340

`A111490(n)+∑[n+1]`
-/

namespace A121896.P7033561771115514340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A121896.P7033561771115514340

/-! ## A121896.P10198006884744713877

`A123327(n+1)+∑[n]`
-/

namespace A121896.P10198006884744713877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123327 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A121896.P10198006884744713877

/-! ## A121896.P2995328480296851450

`∑[A016777(n)-∑{d}[n, #]]`
-/

namespace A121896.P2995328480296851450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121896.P2995328480296851450

/-! ## A121896.P18082059335732021936

`(n+1)²-A244048(n+1)`
-/

namespace A121896.P18082059335732021936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A244048 (n + 1)

end

end A121896.P18082059335732021936

/-!
# A121897: a(n) = 4*a(n-1)*a(n-2)*a(n-3)*a(n-4) - a(n-5).

The programs for A121897, the canonical program `A121897.P4106511465559660065` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121897 has offset 1).

The definition of A121897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` (program `A121897.P4106511465559660065`, by `A121897.P4106511465559660065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121897.P4106511465559660065

`4*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121897

/-- `4*a(n-1)*a(n-2)*a(n-3)*a(n-4)-a(n-5)` -/
def P4106511465559660065.Spec : Prop :=
  ∀ n, P4106511465559660065.a n = A121897 (n + 1)

theorem P4106511465559660065.correct : P4106511465559660065.Spec := by
  intro n
  simp only [A121897, Nat.add_sub_cancel]

end A121897

/-! ## A121897.P10438443540186565106

`A072878(n^ceil(n/8))`
-/

namespace A121897.P10438443540186565106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072878 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat

end

end A121897.P10438443540186565106

namespace A121897

/-- `A072878(n^ceil(n/8))` -/
def P10438443540186565106.Spec : Prop :=
  ∀ n, P10438443540186565106.a n = A121897 (n + 1)

end A121897

/-! ## A121897.P14077842957559463205

`A069097(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A121897.P14077842957559463205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 3] fun n a =>
  A069097 (a (n - 1)).toNat

end

end A121897.P14077842957559463205

namespace A121897

/-- `A069097(a(n-1))` -/
def P14077842957559463205.Spec : Prop :=
  ∀ n, P14077842957559463205.a n = A121897 (n + 1)

end A121897

/-! ## A121897.P5788547487838184859

`A245773(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A121897.P5788547487838184859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 3] fun n a =>
  A245773 (a (n - 1)).toNat

end

end A121897.P5788547487838184859

namespace A121897

/-- `A245773(a(n-1))` -/
def P5788547487838184859.Spec : Prop :=
  ∀ n, P5788547487838184859.a n = A121897 (n + 1)

end A121897

/-!
# A121898: Triangular numbers that are sandwiched between two semiprimes; or triangular numbers t such that t-1 and t+1 are both semiprime.

The programs for A121898, there is no canonical definition to state claims against.
-/

/-! ## A121898.P4021894553399009934

`∩[A000217(n+1), A092207(n+1)+1]`
-/

namespace A121898.P4021894553399009934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121898.P4021894553399009934

/-! ## A121898.P17598555075034785833

`∩[A092207(n+1)+1, A161680(n+7)]`
-/

namespace A121898.P17598555075034785833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 7)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121898.P17598555075034785833

/-! ## A121898.P4864466858472929565

`∩[C(n+1, 2), A124936(n+1)]`
-/

namespace A121898.P4864466858472929565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121898.P4864466858472929565

/-! ## A121898.P17395172138797383179

`∩[A124936(n+1), A000217(n)]`
-/

namespace A121898.P17395172138797383179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121898.P17395172138797383179

/-!
# A121899: a(n) = ceiling((Pi + e)*sqrt(n)).

The programs for A121899, the canonical program `A121899.P14198592630261179319` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121899 has offset 0).

The definition of A121899 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((π+e)*sqrt(n))` (program `A121899.P14198592630261179319`, by `A121899.P14198592630261179319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121899.P14198592630261179319

`ceil((π+e)*sqrt(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121899

/-- `ceil((π+e)*sqrt(n))` -/
def P14198592630261179319.Spec : Prop :=
  ∀ n, P14198592630261179319.a n = A121899 n

theorem P14198592630261179319.correct : P14198592630261179319.Spec := by
  intro n
  simp only [A121899]

end A121899

/-! ## A121899.P3728964598860527951

`A121901(n)+A057427(n)`
-/

namespace A121899.P3728964598860527951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + A057427 n

end

end A121899.P3728964598860527951

namespace A121899

/-- `A121901(n)+A057427(n)` -/
def P3728964598860527951.Spec : Prop :=
  ∀ n, P3728964598860527951.a n = A121899 n

end A121899

/-! ## A121899.P18446374904348965635

`A121901(n)-A057428(n)`
-/

namespace A121899.P18446374904348965635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n - A057428 n

end

end A121899.P18446374904348965635

namespace A121899

/-- `A121901(n)-A057428(n)` -/
def P18446374904348965635.Spec : Prop :=
  ∀ n, P18446374904348965635.a n = A121899 n

end A121899

/-! ## A121899.P16666497245809683017

`A121901(n)+1-A000007(n)`
-/

namespace A121899.P16666497245809683017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + (1 - A000007 n)

end

end A121899.P16666497245809683017

namespace A121899

/-- `A121901(n)+1-A000007(n)` -/
def P16666497245809683017.Spec : Prop :=
  ∀ n, P16666497245809683017.a n = A121899 n

end A121899

/-! ## A121899.P8263693349904714380

`A121901(n)+A019425(2*n)`
-/

namespace A121899.P8263693349904714380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + A019425 (2 * n)

end

end A121899.P8263693349904714380

namespace A121899

/-- `A121901(n)+A019425(2*n)` -/
def P8263693349904714380.Spec : Prop :=
  ∀ n, P8263693349904714380.a n = A121899 n

end A121899

/-! ## A121899.P10683447436585065424

`A121901(n)+A019425(A019425(n))²`
-/

namespace A121899.P10683447436585065424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + A019425 (A019425 n).toNat ^ 2

end

end A121899.P10683447436585065424

namespace A121899

/-- `A121901(n)+A019425(A019425(n))²` -/
def P10683447436585065424.Spec : Prop :=
  ∀ n, P10683447436585065424.a n = A121899 n

end A121899

/-! ## A121899.P13432466726176494488

`A121855(n)+A121901(n)-A121854(n)`
-/

namespace A121899.P13432466726176494488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 n + (A121901 n - A121854 n)

end

end A121899.P13432466726176494488

namespace A121899

/-- `A121855(n)+A121901(n)-A121854(n)` -/
def P13432466726176494488.Spec : Prop :=
  ∀ n, P13432466726176494488.a n = A121899 n

end A121899

/-! ## A121899.P4641453562719566278

`A121857(n)+A121901(n)-A121856(n)`
-/

namespace A121899.P4641453562719566278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 n + (A121901 n - A121856 n)

end

end A121899.P4641453562719566278

namespace A121899

/-- `A121857(n)+A121901(n)-A121856(n)` -/
def P4641453562719566278.Spec : Prop :=
  ∀ n, P4641453562719566278.a n = A121899 n

end A121899

/-! ## A121899.P5283310745766898265

`A121900(n)+A121901(n)-A121902(n)`
-/

namespace A121899.P5283310745766898265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 n + (A121901 n - A121902 n)

end

end A121899.P5283310745766898265

namespace A121899

/-- `A121900(n)+A121901(n)-A121902(n)` -/
def P5283310745766898265.Spec : Prop :=
  ∀ n, P5283310745766898265.a n = A121899 n

end A121899

/-! ## A121899.P10094480471605259528

`A131209(A121901(n))`
-/

namespace A121899.P10094480471605259528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A121901 n).toNat

end

end A121899.P10094480471605259528

namespace A121899

/-- `A131209(A121901(n))` -/
def P10094480471605259528.Spec : Prop :=
  ∀ n, P10094480471605259528.a n = A121899 n

end A121899

/-! ## A121899.P9099006780188820876

`A121901(n)+A057428(n²)²`
-/

namespace A121899.P9099006780188820876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121901 n + A057428 (n ^ 2) ^ 2

end

end A121899.P9099006780188820876

namespace A121899

/-- `A121901(n)+A057428(n²)²` -/
def P9099006780188820876.Spec : Prop :=
  ∀ n, P9099006780188820876.a n = A121899 n

end A121899

