import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A106701: a(n) = next-to-most-significant binary digit of n-th composite positive integer.

The programs for A106701, the canonical program `A106701.P17869885549293977825` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106701 has offset 1).

The definition of A106701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106701.P9966415802122908752

`A059893(comp[p?[round(8*n/7)]-2]+2)%2`
-/

namespace A106701.P9966415802122908752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)) 2

end

end A106701.P9966415802122908752

namespace A106701

/-- `A059893(comp[p?[round(8*n/7)]-2]+2)%2` -/
def P9966415802122908752.Spec : Prop :=
  ∀ n, P9966415802122908752.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P6849444761779617606

`A079944(A164028(n+2))`
-/

namespace A106701.P6849444761779617606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A164028 (n + 2)).toNat

end

end A106701.P6849444761779617606

namespace A106701

/-- `A079944(A164028(n+2))` -/
def P6849444761779617606.Spec : Prop :=
  ∀ n, P6849444761779617606.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P15076447075750058356

`A079944(A166257(n+2))`
-/

namespace A106701.P15076447075750058356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A166257 (n + 2)).toNat

end

end A106701.P15076447075750058356

namespace A106701

/-- `A079944(A166257(n+2))` -/
def P15076447075750058356.Spec : Prop :=
  ∀ n, P15076447075750058356.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P13084451206023305599

`A079944(comp[A040976(n+1)])`
-/

namespace A106701.P13084451206023305599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A106701.P13084451206023305599

namespace A106701

/-- `A079944(comp[A040976(n+1)])` -/
def P13084451206023305599.Spec : Prop :=
  ∀ n, P13084451206023305599.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P9553963349264379809

`A079944(comp[A007918(n)-2])`
-/

namespace A106701.P9553963349264379809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A106701.P9553963349264379809

namespace A106701

/-- `A079944(comp[A007918(n)-2])` -/
def P9553963349264379809.Spec : Prop :=
  ∀ n, P9553963349264379809.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P12644671194559827597

`A030109(Δ[A053767(n)])%2`
-/

namespace A106701.P12644671194559827597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030109 (f1 (n + 1) - f1 n).toNat) 2

end

end A106701.P12644671194559827597

namespace A106701

/-- `A030109(Δ[A053767(n)])%2` -/
def P12644671194559827597.Spec : Prop :=
  ∀ n, P12644671194559827597.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P15561908423407787138

`A059893(Δ[A053767(n)])%2`
-/

namespace A106701.P15561908423407787138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (f1 (n + 1) - f1 n).toNat) 2

end

end A106701.P15561908423407787138

namespace A106701

/-- `A059893(Δ[A053767(n)])%2` -/
def P15561908423407787138.Spec : Prop :=
  ∀ n, P15561908423407787138.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P9568381701188676458

`A209636(Δ[A053767(n)])%2`
-/

namespace A106701.P9568381701188676458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209636 (f1 (n + 1) - f1 n).toNat) 2

end

end A106701.P9568381701188676458

namespace A106701

/-- `A209636(Δ[A053767(n)])%2` -/
def P9568381701188676458.Spec : Prop :=
  ∀ n, P9568381701188676458.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P4728800359073399371

`A080541(comp[A351078(n)])%2`
-/

namespace A106701.P4728800359073399371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080541 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 2

end

end A106701.P4728800359073399371

namespace A106701

/-- `A080541(comp[A351078(n)])%2` -/
def P4728800359073399371.Spec : Prop :=
  ∀ n, P4728800359073399371.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P14498097917900977236

`A030109(A002808(n+1))%2`
-/

namespace A106701.P14498097917900977236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030109 (A002808 (n + 1)).toNat) 2

end

end A106701.P14498097917900977236

namespace A106701

/-- `A030109(A002808(n+1))%2` -/
def P14498097917900977236.Spec : Prop :=
  ∀ n, P14498097917900977236.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P6108857307190741331

`A030109(A018252(n+2))%2`
-/

namespace A106701.P6108857307190741331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030109 (A018252 (n + 2)).toNat) 2

end

end A106701.P6108857307190741331

namespace A106701

/-- `A030109(A018252(n+2))%2` -/
def P6108857307190741331.Spec : Prop :=
  ∀ n, P6108857307190741331.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P15597213659677029

`A080541(A018252(comp[n^8]))%2`
-/

namespace A106701.P15597213659677029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080541 (A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat) 2

end

end A106701.P15597213659677029

namespace A106701

/-- `A080541(A018252(comp[n^8]))%2` -/
def P15597213659677029.Spec : Prop :=
  ∀ n, P15597213659677029.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P902781774651932771

`A209636(A073846(2*n+3))%2`
-/

namespace A106701.P902781774651932771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209636 (A073846 (2 * n + 3)).toNat) 2

end

end A106701.P902781774651932771

namespace A106701

/-- `A209636(A073846(2*n+3))%2` -/
def P902781774651932771.Spec : Prop :=
  ∀ n, P902781774651932771.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P16494386796486714474

`and(1, A030109(2*A002808(n+1)))`
-/

namespace A106701.P16494386796486714474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A030109 (2 * A002808 (n + 1)).toNat)

end

end A106701.P16494386796486714474

namespace A106701

/-- `and(1, A030109(2*A002808(n+1)))` -/
def P16494386796486714474.Spec : Prop :=
  ∀ n, P16494386796486714474.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P15780751086842469860

`1-A086694(lt[2, A000005(n+1)])`
-/

namespace A106701.P15780751086842469860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A086694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106701.P15780751086842469860

namespace A106701

/-- `1-A086694(lt[2, A000005(n+1)])` -/
def P15780751086842469860.Spec : Prop :=
  ∀ n, P15780751086842469860.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P17869885549293977825

`1-A086694(lt[A014963(n+1), n])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106701

/-- `1-A086694(lt[A014963(n+1), n])` -/
def P17869885549293977825.Spec : Prop :=
  ∀ n, P17869885549293977825.a n = A106701 (n + 1)

theorem P17869885549293977825.correct : P17869885549293977825.Spec := by
  intro n
  simp only [A106701, Nat.add_sub_cancel]

end A106701

/-! ## A106701.P11319150775899081291

`A059893(char[1]+A018252(n+2))%2`
-/

namespace A106701.P11319150775899081291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A018252 (n + 2)).toNat) 2

end

end A106701.P11319150775899081291

namespace A106701

/-- `A059893(char[1]+A018252(n+2))%2` -/
def P11319150775899081291.Spec : Prop :=
  ∀ n, P11319150775899081291.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P4031145697043481553

`xor(1, A086694(lt[ϕ², A000005(n+1)]))`
-/

namespace A106701.P4031145697043481553
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A086694 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n))

end

end A106701.P4031145697043481553

namespace A106701

/-- `xor(1, A086694(lt[ϕ², A000005(n+1)]))` -/
def P4031145697043481553.Spec : Prop :=
  ∀ n, P4031145697043481553.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P10629752889644302637

`A030109(comp[C(A006530(n+1), n)])%2`
-/

namespace A106701.P10629752889644302637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030109 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A106701.P10629752889644302637

namespace A106701

/-- `A030109(comp[C(A006530(n+1), n)])%2` -/
def P10629752889644302637.Spec : Prop :=
  ∀ n, P10629752889644302637.a n = A106701 (n + 1)

end A106701

/-! ## A106701.P6792912905375442941

`A059893(comp[C(A020639(n+1), n)])%2`
-/

namespace A106701.P6792912905375442941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059893 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A106701.P6792912905375442941

namespace A106701

/-- `A059893(comp[C(A020639(n+1), n)])%2` -/
def P6792912905375442941.Spec : Prop :=
  ∀ n, P6792912905375442941.a n = A106701 (n + 1)

end A106701

/-!
# A106702: Infinite word generated by the morphism 1->3, 2->1, 3->24, 4->68, 5->3, 6->78, 7->8, 8->46 starting from 13.

The programs for A106702, there is no canonical definition to state claims against.
-/

/-! ## A106702.P9990936327437720497

`A106686(n*A061674(n)²)`
-/

namespace A106702.P9990936327437720497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106686 ((n : ℤ) * A061674 n ^ 2).toNat

end

end A106702.P9990936327437720497

/-! ## A106702.P2566433781504664998

`A106686(lcm(n, A061674(n)²))`
-/

namespace A106702.P2566433781504664998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106686 (Int.lcm (n : ℤ) (A061674 n ^ 2))

end

end A106702.P2566433781504664998

/-! ## A106702.P62709067691893118

`A240125(A061674(n))+A106686(n)`
-/

namespace A106702.P62709067691893118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240125 (A061674 n).toNat + A106686 n

end

end A106702.P62709067691893118

/-!
# A106703: 1-limiting word of the morphism 1->333, 2->34, 3->12, 4->222.

The programs for A106703, there is no canonical definition to state claims against.
-/

/-! ## A106703.P16070756025717142803

`gcd(2, A314372((n+8)²))`
-/

namespace A106703.P16070756025717142803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A314372 ((n + 8) ^ 2))

end

end A106703.P16070756025717142803

/-! ## A106703.P14007784476433443649

`A134451(A314372((n+8)²))`
-/

namespace A106703.P14007784476433443649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A314372 ((n + 8) ^ 2)).toNat

end

end A106703.P14007784476433443649

/-! ## A106703.P12079995458774154777

`A353497(35*A313062(9*n+6))`
-/

namespace A106703.P12079995458774154777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353497 (35 * A313062 (9 * n + 6)).toNat

end

end A106703.P12079995458774154777

/-! ## A106703.P4083068191013979856

`A057078(∑[A313124(2*(n+2))])+1`
-/

namespace A106703.P4083068191013979856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313124 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A106703.P4083068191013979856

/-! ## A106703.P13930014371456485969

`ceil(sqrt(Δ[eq[A126565(n), A151933(n)]]))`
-/

namespace A106703.P13930014371456485969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉

end

end A106703.P13930014371456485969

/-!
# A106704: 5-limiting word of the morphism 1->56, 2->5555, 3->45, 4->3333, 5->123, 6->1111 starting from 1.

The programs for A106704, there is no canonical definition to state claims against.
-/

/-! ## A106704.P2242077211867979102

`6-A341969(A260741(3*n+5))`
-/

namespace A106704.P2242077211867979102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A341969 (A260741 (3 * n + 5)).toNat

end

end A106704.P2242077211867979102

/-! ## A106704.P6299271038902856772

`or(4, A066099(A262000(n+1)))`
-/

namespace A106704.P6299271038902856772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A066099 (A262000 (n + 1)).toNat)

end

end A106704.P6299271038902856772

/-!
# A106706: a(0) = 19; for n>0, successively subtract 5, subtract 3 and double.

The programs for A106706, the canonical program `A106706.P17065010556996854438` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106706 has offset 0).

The definition of A106706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106706.P17065010556996854438

`ogf((19+14x+11x^2-35x^3-25x^4-19x^5)/(1-3x^3+2x^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106706

/-- `ogf((19+14x+11x^2-35x^3-25x^4-19x^5)/(1-3x^3+2x^6))` -/
def P17065010556996854438.Spec : Prop :=
  ∀ n, P17065010556996854438.a n = A106706 n

theorem P17065010556996854438.correct : P17065010556996854438.Spec := by
  intro n
  simp only [A106706]

end A106706

/-! ## A106706.P16157046804985191051

`A085688(n+4)+A008619(A085688(n+4))`
-/

namespace A106706.P16157046804985191051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085688 (n + 4) + A008619 (A085688 (n + 4)).toNat

end

end A106706.P16157046804985191051

namespace A106706

/-- `A085688(n+4)+A008619(A085688(n+4))` -/
def P16157046804985191051.Spec : Prop :=
  ∀ n, P16157046804985191051.a n = A106706 n

end A106706

/-!
# A106707: a(n) = -A001353(n).

The programs for A106707, the canonical program `A106707.P467990136795639028` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106707 has offset 0).

The definition of A106707 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-A001353(n)` (program `A106707.P467990136795639028`, by `A106707.P467990136795639028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106707.P4324081050040098767

`ogf(-x/(1-4x+x^2))`
-/

namespace A106707.P4324081050040098767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, -4, 1] n

end

end A106707.P4324081050040098767

namespace A106707

/-- `ogf(-x/(1-4x+x^2))` -/
def P4324081050040098767.Spec : Prop :=
  ∀ n, P4324081050040098767.a n = A106707 n

end A106707

/-! ## A106707.P13846928209318320444

`4*a(n-1)-a(n-2)` with `a(0)=0, a(1)=-1`
-/

namespace A106707.P13846928209318320444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  4 * a (n - 1) - a (n - 2)

end

end A106707.P13846928209318320444

namespace A106707

/-- `4*a(n-1)-a(n-2)` -/
def P13846928209318320444.Spec : Prop :=
  ∀ n, P13846928209318320444.a n = A106707 n

end A106707

/-! ## A106707.P467990136795639028

`-A001353(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106707

/-- `-A001353(n)` -/
def P467990136795639028.Spec : Prop :=
  ∀ n, P467990136795639028.a n = A106707 n

theorem P467990136795639028.correct : P467990136795639028.Spec := by
  intro n
  simp only [A106707]

end A106707

/-! ## A106707.P11847317791818596495

`floor((sqrt(3)+2)*a(n-1))` with `a(0)=0, a(1)=-1`
-/

namespace A106707.P11847317791818596495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋

end

end A106707.P11847317791818596495

namespace A106707

/-- `floor((sqrt(3)+2)*a(n-1))` -/
def P11847317791818596495.Spec : Prop :=
  ∀ n, P11847317791818596495.a n = A106707 n

end A106707

/-! ## A106707.P6200412532297979903

`-round(a(n-1)/(sqrt(3)-2))` with `a(0)=0, a(1)=-1`
-/

namespace A106707.P6200412532297979903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  -SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

end

end A106707.P6200412532297979903

namespace A106707

/-- `-round(a(n-1)/(sqrt(3)-2))` -/
def P6200412532297979903.Spec : Prop :=
  ∀ n, P6200412532297979903.a n = A106707 n

end A106707

/-! ## A106707.P1284059023199697404

`1-∑[lcm(4, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A106707.P1284059023199697404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 4 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106707.P1284059023199697404

namespace A106707

/-- `1-∑[lcm(4, a(n-1))-a(n-2)]` -/
def P1284059023199697404.Spec : Prop :=
  ∀ n, P1284059023199697404.a n = A106707 n

end A106707

/-! ## A106707.P7491848288616524211

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=0, a(1)=-1`
-/

namespace A106707.P7491848288616524211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, -1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A106707.P7491848288616524211

namespace A106707

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P7491848288616524211.Spec : Prop :=
  ∀ n, P7491848288616524211.a n = (A106707 n : ℚ)

end A106707

/-! ## A106707.P9097844443353229733

`1-A072110(n)`
-/

namespace A106707.P9097844443353229733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072110 n

end

end A106707.P9097844443353229733

namespace A106707

/-- `1-A072110(n)` -/
def P9097844443353229733.Spec : Prop :=
  ∀ n, P9097844443353229733.a n = A106707 n

end A106707

/-! ## A106707.P9853536422468492350

`Δ[-A101879(n)]`
-/

namespace A106707.P9853536422468492350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106707.P9853536422468492350

namespace A106707

/-- `Δ[-A101879(n)]` -/
def P9853536422468492350.Spec : Prop :=
  ∀ n, P9853536422468492350.a n = A106707 n

end A106707

/-! ## A106707.P1577038700911147903

`-A002530(2*n)`
-/

namespace A106707.P1577038700911147903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002530 (2 * n)

end

end A106707.P1577038700911147903

namespace A106707

/-- `-A002530(2*n)` -/
def P1577038700911147903.Spec : Prop :=
  ∀ n, P1577038700911147903.a n = A106707 n

end A106707

/-! ## A106707.P10542260237556817003

`-A249578(3*n)`
-/

namespace A106707.P10542260237556817003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A249578 (3 * n)

end

end A106707.P10542260237556817003

namespace A106707

/-- `-A249578(3*n)` -/
def P10542260237556817003.Spec : Prop :=
  ∀ n, P10542260237556817003.a n = A106707 n

end A106707

/-! ## A106707.P9350686107716557723

`1-∑[A001835(n)]`
-/

namespace A106707.P9350686107716557723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106707.P9350686107716557723

namespace A106707

/-- `1-∑[A001835(n)]` -/
def P9350686107716557723.Spec : Prop :=
  ∀ n, P9350686107716557723.a n = A106707 n

end A106707

/-! ## A106707.P3826258196554027891

`1-A071954(n)/2`
-/

namespace A106707.P3826258196554027891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A071954 n : ℚ) / 2

end

end A106707.P3826258196554027891

namespace A106707

/-- `1-A071954(n)/2` -/
def P3826258196554027891.Spec : Prop :=
  ∀ n, P3826258196554027891.a n = (A106707 n : ℚ)

end A106707

/-! ## A106707.P12703590249342796771

`1-∑[A005246(2*n)]`
-/

namespace A106707.P12703590249342796771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106707.P12703590249342796771

namespace A106707

/-- `1-∑[A005246(2*n)]` -/
def P12703590249342796771.Spec : Prop :=
  ∀ n, P12703590249342796771.a n = A106707 n

end A106707

/-! ## A106707.P17297943444215412448

`1-∑[A122573(2*(n+1))]`
-/

namespace A106707.P17297943444215412448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106707.P17297943444215412448

namespace A106707

/-- `1-∑[A122573(2*(n+1))]` -/
def P17297943444215412448.Spec : Prop :=
  ∀ n, P17297943444215412448.a n = A106707 n

end A106707

/-! ## A106707.P14750469790607788370

`A001835(n)-A001075(n)`
-/

namespace A106707.P14750469790607788370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n - A001075 n

end

end A106707.P14750469790607788370

namespace A106707

/-- `A001835(n)-A001075(n)` -/
def P14750469790607788370.Spec : Prop :=
  ∀ n, P14750469790607788370.a n = A106707 n

end A106707

/-! ## A106707.P4183268078222633099

`A001353(n)-A052530(n)`
-/

namespace A106707.P4183268078222633099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n - A052530 n

end

end A106707.P4183268078222633099

namespace A106707

/-- `A001353(n)-A052530(n)` -/
def P4183268078222633099.Spec : Prop :=
  ∀ n, P4183268078222633099.a n = A106707 n

end A106707

/-! ## A106707.P638761175970610621

`A061278(n)-A001571(n)`
-/

namespace A106707.P638761175970610621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061278 n - A001571 n

end

end A106707.P638761175970610621

namespace A106707

/-- `A061278(n)-A001571(n)` -/
def P638761175970610621.Spec : Prop :=
  ∀ n, P638761175970610621.a n = A106707 n

end A106707

/-! ## A106707.P5381873807657808461

`A120893(n)-A006253(n)`
-/

namespace A106707.P5381873807657808461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n - A006253 n

end

end A106707.P5381873807657808461

namespace A106707

/-- `A120893(n)-A006253(n)` -/
def P5381873807657808461.Spec : Prop :=
  ∀ n, P5381873807657808461.a n = A106707 n

end A106707

/-! ## A106707.P16842613817394849082

`A087944(n)-A087946(n)`
-/

namespace A106707.P16842613817394849082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087944 n - A087946 n

end

end A106707.P16842613817394849082

namespace A106707

/-- `A087944(n)-A087946(n)` -/
def P16842613817394849082.Spec : Prop :=
  ∀ n, P16842613817394849082.a n = A106707 n

end A106707

/-!
# A106708: a(n) is the concatenation of its nontrivial divisors.

The programs for A106708, there is no canonical definition to state claims against.
-/

/-! ## A106708.P16513261366121843768

`A037279(n+1)*A066247(n+1)`
-/

namespace A106708.P16513261366121843768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (n + 1) * A066247 (n + 1)

end

end A106708.P16513261366121843768

/-! ## A106708.P17918867368256638802

`lcm(A037279(n+1), A182936(n+1))`
-/

namespace A106708.P17918867368256638802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A037279 (n + 1)) (A182936 (n + 1))

end

end A106708.P17918867368256638802

/-! ## A106708.P10549255504200764768

`floor(atan(A325765(n)))*A037279(n+1)`
-/

namespace A106708.P10549255504200764768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A325765 n : ℝ)⌋ * A037279 (n + 1)

end

end A106708.P10549255504200764768

/-! ## A106708.P16413622429992768690

`char[A072668(n+1)]*A037279(n+1)`
-/

namespace A106708.P16413622429992768690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A037279 (n + 1)

end

end A106708.P16413622429992768690

/-! ## A106708.P18094407686685501874

`A001222(A085392(n+1))*A037279(n+1)`
-/

namespace A106708.P18094407686685501874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085392 (n + 1)).toNat * A037279 (n + 1)

end

end A106708.P18094407686685501874

/-! ## A106708.P9037589762443418794

`A037279(n+1)%A056819(n+1)`
-/

namespace A106708.P9037589762443418794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037279 (n + 1)) (A056819 (n + 1))

end

end A106708.P9037589762443418794

/-! ## A106708.P1493521002875857

`A037279(n+1)*A284939(A281118(n+1))`
-/

namespace A106708.P1493521002875857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037279 (n + 1) * A284939 (A281118 (n + 1)).toNat

end

end A106708.P1493521002875857

/-! ## A106708.P16165867648544776565

`A037279(n+1)%A051696(n+1)`
-/

namespace A106708.P16165867648544776565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037279 (n + 1)) (A051696 (n + 1))

end

end A106708.P16165867648544776565

/-!
# A106709: Expansion of g.f. -2*x/(1 - 5*x + 2*x^2).

The programs for A106709, the canonical program `A106709.P17410200362490289654` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106709 has offset 0).

The definition of A106709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-2x/(1-5x+2x^2))` (program `A106709.P17410200362490289654`, by `A106709.P17410200362490289654.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106709.P17410200362490289654

`ogf(-2x/(1-5x+2x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106709

/-- `ogf(-2x/(1-5x+2x^2))` -/
def P17410200362490289654.Spec : Prop :=
  ∀ n, P17410200362490289654.a n = A106709 n

theorem P17410200362490289654.correct : P17410200362490289654.Spec := by
  intro n
  simp only [A106709]

end A106709

/-! ## A106709.P13984006052591381800

`-A079162(2*n)`
-/

namespace A106709.P13984006052591381800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A079162 (2 * n)

end

end A106709.P13984006052591381800

namespace A106709

/-- `-A079162(2*n)` -/
def P13984006052591381800.Spec : Prop :=
  ∀ n, P13984006052591381800.a n = A106709 n

end A106709

/-! ## A106709.P4915774181099648179

`1-∑[A147722(n)]`
-/

namespace A106709.P4915774181099648179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106709.P4915774181099648179

namespace A106709

/-- `1-∑[A147722(n)]` -/
def P4915774181099648179.Spec : Prop :=
  ∀ n, P4915774181099648179.a n = A106709 n

end A106709

/-! ## A106709.P4771421750278117537

`floor(acot(n)-A204091(n))`
-/

namespace A106709.P4771421750278117537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A204091 n : ℝ)⌋

end

end A106709.P4771421750278117537

namespace A106709

/-- `floor(acot(n)-A204091(n))` -/
def P4771421750278117537.Spec : Prop :=
  ∀ n, P4771421750278117537.a n = A106709 n

end A106709

/-! ## A106709.P15530819025772549609

`A000007(n)-A204091(n)`
-/

namespace A106709.P15530819025772549609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A204091 n

end

end A106709.P15530819025772549609

namespace A106709

/-- `A000007(n)-A204091(n)` -/
def P15530819025772549609.Spec : Prop :=
  ∀ n, P15530819025772549609.a n = A106709 n

end A106709

/-! ## A106709.P7708437750230556990

`A057428(n)*A204091(n)`
-/

namespace A106709.P7708437750230556990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A204091 n

end

end A106709.P7708437750230556990

namespace A106709

/-- `A057428(n)*A204091(n)` -/
def P7708437750230556990.Spec : Prop :=
  ∀ n, P7708437750230556990.a n = A106709 n

end A106709

/-! ## A106709.P9740827364900538326

`-(2*A249581(A008586(n)))`
-/

namespace A106709.P9740827364900538326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A249581 (A008586 n).toNat)

end

end A106709.P9740827364900538326

namespace A106709

/-- `-(2*A249581(A008586(n)))` -/
def P9740827364900538326.Spec : Prop :=
  ∀ n, P9740827364900538326.a n = A106709 n

end A106709

/-! ## A106709.P9511950940870398191

`A088917(n²)-A204091(n)`
-/

namespace A106709.P9511950940870398191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (n ^ 2) - A204091 n

end

end A106709.P9511950940870398191

namespace A106709

/-- `A088917(n²)-A204091(n)` -/
def P9511950940870398191.Spec : Prop :=
  ∀ n, P9511950940870398191.a n = A106709 n

end A106709

/-! ## A106709.P338913559040282215

`-(A204091(n)%A052984(n))`
-/

namespace A106709.P338913559040282215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A204091 n) (A052984 n)

end

end A106709.P338913559040282215

namespace A106709

/-- `-(A204091(n)%A052984(n))` -/
def P338913559040282215.Spec : Prop :=
  ∀ n, P338913559040282215.a n = A106709 n

end A106709

/-! ## A106709.P12518322355926878602

`2*(A147722(n)-A052984(n))`
-/

namespace A106709.P12518322355926878602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A147722 n - A052984 n)

end

end A106709.P12518322355926878602

namespace A106709

/-- `2*(A147722(n)-A052984(n))` -/
def P12518322355926878602.Spec : Prop :=
  ∀ n, P12518322355926878602.a n = A106709 n

end A106709

/-! ## A106709.P12593702695243451683

`A006012(n)%2-A204091(n)`
-/

namespace A106709.P12593702695243451683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006012 n) 2 - A204091 n

end

end A106709.P12593702695243451683

namespace A106709

/-- `A006012(n)%2-A204091(n)` -/
def P12593702695243451683.Spec : Prop :=
  ∀ n, P12593702695243451683.a n = A106709 n

end A106709

/-! ## A106709.P13540336532401689154

`A007070(n)%2-A204091(n)`
-/

namespace A106709.P13540336532401689154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007070 n) 2 - A204091 n

end

end A106709.P13540336532401689154

namespace A106709

/-- `A007070(n)%2-A204091(n)` -/
def P13540336532401689154.Spec : Prop :=
  ∀ n, P13540336532401689154.a n = A106709 n

end A106709

/-! ## A106709.P9319580450069265076

`2*(A005824(2*n)-A079162(2*n))`
-/

namespace A106709.P9319580450069265076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005824 (2 * n) - A079162 (2 * n))

end

end A106709.P9319580450069265076

namespace A106709

/-- `2*(A005824(2*n)-A079162(2*n))` -/
def P9319580450069265076.Spec : Prop :=
  ∀ n, P9319580450069265076.a n = A106709 n

end A106709

/-! ## A106709.P16935719824093376715

`(n-A028310(n+1))*A079162(2*n)`
-/

namespace A106709.P16935719824093376715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A028310 (n + 1)) * A079162 (2 * n)

end

end A106709.P16935719824093376715

namespace A106709

/-- `(n-A028310(n+1))*A079162(2*n)` -/
def P16935719824093376715.Spec : Prop :=
  ∀ n, P16935719824093376715.a n = A106709 n

end A106709

/-! ## A106709.P5733555981861817084

`A052984(n)-A107839(n)`
-/

namespace A106709.P5733555981861817084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A107839 n

end

end A106709.P5733555981861817084

namespace A106709

/-- `A052984(n)-A107839(n)` -/
def P5733555981861817084.Spec : Prop :=
  ∀ n, P5733555981861817084.a n = A106709 n

end A106709

/-! ## A106709.P1003219042978103608

`A147722(n)-A052913(n)`
-/

namespace A106709.P1003219042978103608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147722 n - A052913 n

end

end A106709.P1003219042978103608

namespace A106709

/-- `A147722(n)-A052913(n)` -/
def P1003219042978103608.Spec : Prop :=
  ∀ n, P1003219042978103608.a n = A106709 n

end A106709

/-! ## A106709.P15083041107701257272

`A052984(n)-∑[A052913(n)]`
-/

namespace A106709.P15083041107701257272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106709.P15083041107701257272

namespace A106709

/-- `A052984(n)-∑[A052913(n)]` -/
def P15083041107701257272.Spec : Prop :=
  ∀ n, P15083041107701257272.a n = A106709 n

end A106709

/-! ## A106709.P15671039268572057099

`2*(A052913(n)-A107839(n))`
-/

namespace A106709.P15671039268572057099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052913 n - A107839 n)

end

end A106709.P15671039268572057099

namespace A106709

/-- `2*(A052913(n)-A107839(n))` -/
def P15671039268572057099.Spec : Prop :=
  ∀ n, P15671039268572057099.a n = A106709 n

end A106709

/-! ## A106709.P1438357409870350212

`A052984(n)-A109165(2*n)`
-/

namespace A106709.P1438357409870350212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A109165 (2 * n)

end

end A106709.P1438357409870350212

namespace A106709

/-- `A052984(n)-A109165(2*n)` -/
def P1438357409870350212.Spec : Prop :=
  ∀ n, P1438357409870350212.a n = A106709 n

end A106709

/-! ## A106709.P9537770116056321011

`A052984(n)-A384611(2*n)`
-/

namespace A106709.P9537770116056321011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n - A384611 (2 * n)

end

end A106709.P9537770116056321011

namespace A106709

/-- `A052984(n)-A384611(2*n)` -/
def P9537770116056321011.Spec : Prop :=
  ∀ n, P9537770116056321011.a n = A106709 n

end A106709

/-!
# A106710: Number of words with n letters from an alphabet of size 26 with at least two equal consecutive letters.

The programs for A106710, the canonical program `A106710.P7172270274355103425` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106710 has offset 1).

The definition of A106710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106710.P16488721482144050387

`ogf(26x/(1-51x+650x^2))`
-/

namespace A106710.P16488721482144050387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 26] [1, -51, 650] n

end

end A106710.P16488721482144050387

namespace A106710

/-- `ogf(26x/(1-51x+650x^2))` -/
def P16488721482144050387.Spec : Prop :=
  ∀ n, P16488721482144050387.a n = A106710 (n + 1)

end A106710

/-! ## A106710.P7172270274355103425

`26*(26^n-25^n)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106710

/-- `26*(26^n-25^n)` -/
def P7172270274355103425.Spec : Prop :=
  ∀ n, P7172270274355103425.a n = A106710 (n + 1)

theorem P7172270274355103425.correct : P7172270274355103425.Spec := by
  intro n
  simp only [A106710, Nat.add_sub_cancel]

end A106710

/-! ## A106710.P146114995072700935

`51*a(n-1)-650*a(n-2)` with `a(0)=0, a(1)=26`
-/

namespace A106710.P146114995072700935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 26] fun n a =>
  51 * a (n - 1) - 650 * a (n - 2)

end

end A106710.P146114995072700935

namespace A106710

/-- `51*a(n-1)-650*a(n-2)` -/
def P146114995072700935.Spec : Prop :=
  ∀ n, P146114995072700935.a n = A106710 (n + 1)

theorem P146114995072700935.correct : P146114995072700935.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A106710, Nat.add_sub_cancel, A106710.P146114995072700935.a, A106710.P7172270274355103425.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A106710, Nat.add_sub_cancel, A106710.P146114995072700935.a, A106710.P7172270274355103425.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A106710

/-! ## A106710.P12985706493127326302

`lcm(26, 25^n-26^n)`
-/

namespace A106710.P12985706493127326302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 26 ((25 ^ n : ℤ) - (26 ^ n : ℤ))

end

end A106710.P12985706493127326302

namespace A106710

/-- `lcm(26, 25^n-26^n)` -/
def P12985706493127326302.Spec : Prop :=
  ∀ n, (P12985706493127326302.a n : ℤ) = A106710 (n + 1)

end A106710

/-! ## A106710.P6601225692757664543

`A009970(n+1)-(A009969(n+1)+A009969(n))`
-/

namespace A106710.P6601225692757664543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009970 (n + 1) - (A009969 (n + 1) + A009969 n)

end

end A106710.P6601225692757664543

namespace A106710

/-- `A009970(n+1)-(A009969(n+1)+A009969(n))` -/
def P6601225692757664543.Spec : Prop :=
  ∀ n, P6601225692757664543.a n = A106710 (n + 1)

theorem P6601225692757664543.correct : P6601225692757664543.Spec := by
  intro n
  simp only [A106710, Nat.add_sub_cancel, A106710.P6601225692757664543.a, A106710.P7172270274355103425.a, A009969, A009969.P12267461118234656815.a, A009970, A009970.P5416579341696706587.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106710

/-!
# A106711: Smaller prime of the set of two consecutive primes each of whose sum of digits is prime.

The programs for A106711, the canonical program `A106711.P16595419804593489169` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106711 has offset 1).

The definition of A106711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1622 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106711.P16595419804593489169

`A000040(∩[A075177(n+1)-1, A075177(n+1)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106711

/-- `A000040(∩[A075177(n+1)-1, A075177(n+1)])` -/
def P16595419804593489169.Spec : Prop :=
  ∀ n, P16595419804593489169.a n = A106711 (n + 1)

theorem P16595419804593489169.correct : P16595419804593489169.Spec := by
  intro n
  simp only [A106711, Nat.add_sub_cancel]

end A106711

/-! ## A106711.P2810313617297737141

`A182986(∩[A075177(n+1)+1, A075177(n+1)])`
-/

namespace A106711.P2810313617297737141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075177 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106711.P2810313617297737141

namespace A106711

/-- `A182986(∩[A075177(n+1)+1, A075177(n+1)])` -/
def P2810313617297737141.Spec : Prop :=
  ∀ n, P2810313617297737141.a n = A106711 (n + 1)

end A106711

/-! ## A106711.P6484633283184755095

`A268674(2*A106712(n+1)-A106712(n+1))`
-/

namespace A106711.P6484633283184755095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A106712 (n + 1) - A106712 (n + 1)).toNat

end

end A106711.P6484633283184755095

namespace A106711

/-- `A268674(2*A106712(n+1)-A106712(n+1))` -/
def P6484633283184755095.Spec : Prop :=
  ∀ n, P6484633283184755095.a n = A106711 (n + 1)

end A106711

/-! ## A106711.P4830701306422169123

`A268674(2*A106712(n+1))`
-/

namespace A106711.P4830701306422169123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A106712 (n + 1)).toNat

end

end A106711.P4830701306422169123

namespace A106711

/-- `A268674(2*A106712(n+1))` -/
def P4830701306422169123.Spec : Prop :=
  ∀ n, P4830701306422169123.a n = A106711 (n + 1)

end A106711

/-! ## A106711.P8215521848093763332

`A064989(A106712(n+1))`
-/

namespace A106711.P8215521848093763332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A106712 (n + 1)).toNat

end

end A106711.P8215521848093763332

namespace A106711

/-- `A064989(A106712(n+1))` -/
def P8215521848093763332.Spec : Prop :=
  ∀ n, P8215521848093763332.a n = A106711 (n + 1)

end A106711

/-! ## A106711.P11367083491131006978

`A250470(or(1, A106712(n+1)))`
-/

namespace A106711.P11367083491131006978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (Int.lor 1 (A106712 (n + 1))).toNat

end

end A106711.P11367083491131006978

namespace A106711

/-- `A250470(or(1, A106712(n+1)))` -/
def P11367083491131006978.Spec : Prop :=
  ∀ n, P11367083491131006978.a n = A106711 (n + 1)

end A106711

/-! ## A106711.P13226988410422943639

`A250470(2*A106712(n+1))`
-/

namespace A106711.P13226988410422943639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (2 * A106712 (n + 1)).toNat

end

end A106711.P13226988410422943639

namespace A106711

/-- `A250470(2*A106712(n+1))` -/
def P13226988410422943639.Spec : Prop :=
  ∀ n, P13226988410422943639.a n = A106711 (n + 1)

end A106711

/-!
# A106712: Larger prime of the set of two consecutive primes the sum of the digits of each of which is prime.

The programs for A106712, the canonical program `A106712.P6872278606906120104` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106712 has offset 1).

The definition of A106712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106712.P6872278606906120104

`A000040(∩[A075177(n+1)+1, A075177(n+1)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106712

/-- `A000040(∩[A075177(n+1)+1, A075177(n+1)])` -/
def P6872278606906120104.Spec : Prop :=
  ∀ n, P6872278606906120104.a n = A106712 (n + 1)

theorem P6872278606906120104.correct : P6872278606906120104.Spec := by
  intro n
  simp only [A106712, Nat.add_sub_cancel]

end A106712

/-! ## A106712.P13553318358600123516

`A151800(A106711(n+1))`
-/

namespace A106712.P13553318358600123516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A106711 (n + 1)).toNat

end

end A106712.P13553318358600123516

namespace A106712

/-- `A151800(A106711(n+1))` -/
def P13553318358600123516.Spec : Prop :=
  ∀ n, P13553318358600123516.a n = A106712 (n + 1)

end A106712

/-! ## A106712.P12342420653102215336

`A003961(A106711(n+1))`
-/

namespace A106712.P12342420653102215336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A106711 (n + 1)).toNat

end

end A106712.P12342420653102215336

namespace A106712

/-- `A003961(A106711(n+1))` -/
def P12342420653102215336.Spec : Prop :=
  ∀ n, P12342420653102215336.a n = A106712 (n + 1)

end A106712

/-!
# A106713: Smallest prime of the set of three consecutive primes whose sum of digits is prime.

The programs for A106713, there is no canonical definition to state claims against.
-/

/-! ## A106713.P3854068559931025473

`A033302(A106714(n+1))`
-/

namespace A106713.P3854068559931025473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A106714 (n + 1)).toNat

end

end A106713.P3854068559931025473

/-! ## A106713.P1411768889348162288

`A106820(A032555(n+1))`
-/

namespace A106713.P1411768889348162288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106820 (A032555 (n + 1)).toNat

end

end A106713.P1411768889348162288

/-! ## A106713.P3735701800294206954

`A106820(A032559(n+1))`
-/

namespace A106713.P3735701800294206954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106820 (A032559 (n + 1)).toNat

end

end A106713.P3735701800294206954

/-! ## A106713.P14126606217555080736

`A106820(A077739(n+1))`
-/

namespace A106713.P14126606217555080736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106820 (A077739 (n + 1)).toNat

end

end A106713.P14126606217555080736

/-!
# A106714: Largest of three consecutive primes whose sum of digits is prime.

The programs for A106714, the canonical program `A106714.P18155757903344412293` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106714 has offset 1).

The definition of A106714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106714.P15514703884272268076

`A151800(A151800(A106713(n+1)))`
-/

namespace A106714.P15514703884272268076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A106713 (n + 1)).toNat).toNat

end

end A106714.P15514703884272268076

namespace A106714

/-- `A151800(A151800(A106713(n+1)))` -/
def P15514703884272268076.Spec : Prop :=
  ∀ n, P15514703884272268076.a n = A106714 (n + 1)

end A106714

/-! ## A106714.P16356289144033571547

`∩[A046704(n+1), A151800(A106712(n+1))]`
-/

namespace A106714.P16356289144033571547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A106712 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106714.P16356289144033571547

namespace A106714

/-- `∩[A046704(n+1), A151800(A106712(n+1))]` -/
def P16356289144033571547.Spec : Prop :=
  ∀ n, (P16356289144033571547.a n : ℤ) = A106714 (n + 1)

end A106714

/-! ## A106714.P18155757903344412293

`A151800(∩[A106711(n+1), A106712(n+1)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106714

/-- `A151800(∩[A106711(n+1), A106712(n+1)])` -/
def P18155757903344412293.Spec : Prop :=
  ∀ n, P18155757903344412293.a n = A106714 (n + 1)

theorem P18155757903344412293.correct : P18155757903344412293.Spec := by
  intro n
  simp only [A106714, Nat.add_sub_cancel]

end A106714

/-! ## A106714.P17653923208467417621

`∩[A151800(A106712(n+1)+1), A106712(n+1)]`
-/

namespace A106714.P17653923208467417621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A106712 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106714.P17653923208467417621

namespace A106714

/-- `∩[A151800(A106712(n+1)+1), A106712(n+1)]` -/
def P17653923208467417621.Spec : Prop :=
  ∀ n, (P17653923208467417621.a n : ℤ) = A106714 (n + 1)

end A106714

/-! ## A106714.P4604555170889131055

`A045966(A106713(n+1))`
-/

namespace A106714.P4604555170889131055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A106713 (n + 1)).toNat

end

end A106714.P4604555170889131055

namespace A106714

/-- `A045966(A106713(n+1))` -/
def P4604555170889131055.Spec : Prop :=
  ∀ n, P4604555170889131055.a n = A106714 (n + 1)

end A106714

/-! ## A106714.P11498177356200590456

`A003961(∏{p}[A106713(n+1), A003961(#)])`
-/

namespace A106714.P11498177356200590456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003961 p).toNat

end

end A106714.P11498177356200590456

namespace A106714

/-- `A003961(∏{p}[A106713(n+1), A003961(#)])` -/
def P11498177356200590456.Spec : Prop :=
  ∀ n, P11498177356200590456.a n = A106714 (n + 1)

end A106714

/-! ## A106714.P5916973651276638609

`A003961(∩[A106711(n+1), A106712(n+1)])`
-/

namespace A106714.P5916973651276638609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106714.P5916973651276638609

namespace A106714

/-- `A003961(∩[A106711(n+1), A106712(n+1)])` -/
def P5916973651276638609.Spec : Prop :=
  ∀ n, P5916973651276638609.a n = A106714 (n + 1)

end A106714

/-!
# A106715: Smallest of four consecutive primes whose sum of digits is prime.

The programs for A106715, there is no canonical definition to state claims against.
-/

/-! ## A106715.P2037162661378253359

`A064989(∩[A106712(n+1), A106713(n+1)])`
-/

namespace A106715.P2037162661378253359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106713 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106715.P2037162661378253359

/-!
# A106716: Largest of four consecutive primes whose sum of digits is prime.

The programs for A106716, the canonical program `A106716.P4178359605159609072` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106716 has offset 1).

The definition of A106716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106716.P4178359605159609072

`∩[A106714(n+1), A151800(A106714(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A106716

/-- `∩[A106714(n+1), A151800(A106714(n+1))]` -/
def P4178359605159609072.Spec : Prop :=
  ∀ n, (P4178359605159609072.a n : ℤ) = A106716 (n + 1)

theorem P4178359605159609072.correct : P4178359605159609072.Spec := by
  intro n
  simp only [A106716, Nat.add_sub_cancel]

end A106716

/-! ## A106716.P4496787533138718028

`A336849(∩[A106711(n+1), A106714(n+1)])`
-/

namespace A106716.P4496787533138718028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106714 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106716.P4496787533138718028

namespace A106716

/-- `A336849(∩[A106711(n+1), A106714(n+1)])` -/
def P4496787533138718028.Spec : Prop :=
  ∀ n, P4496787533138718028.a n = A106716 (n + 1)

end A106716

/-! ## A106716.P3886579171152597480

`A045968(A106715(n+1))`
-/

namespace A106716.P3886579171152597480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A106715 (n + 1)).toNat

end

end A106716.P3886579171152597480

namespace A106716

/-- `A045968(A106715(n+1))` -/
def P3886579171152597480.Spec : Prop :=
  ∀ n, P3886579171152597480.a n = A106716 (n + 1)

end A106716

/-! ## A106716.P231045531108395889

`A003961(∩[A106711(n+1), A106714(n+1)])`
-/

namespace A106716.P231045531108395889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106714 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106716.P231045531108395889

namespace A106716

/-- `A003961(∩[A106711(n+1), A106714(n+1)])` -/
def P231045531108395889.Spec : Prop :=
  ∀ n, P231045531108395889.a n = A106716 (n + 1)

end A106716

/-! ## A106716.P6516061523796933978

`∩[A106712(n+1), A045966(A106712(n+1))]`
-/

namespace A106716.P6516061523796933978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A106712 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106716.P6516061523796933978

namespace A106716

/-- `∩[A106712(n+1), A045966(A106712(n+1))]` -/
def P6516061523796933978.Spec : Prop :=
  ∀ n, (P6516061523796933978.a n : ℤ) = A106716 (n + 1)

end A106716

/-!
# A106717: Largest of five consecutive primes the sum of the digits of each of which is prime.

The programs for A106717, there is no canonical definition to state claims against.
-/

/-! ## A106717.P459691552342675575

`∩[A106716(n+1), A151800(A106716(n+1))]`
-/

namespace A106717.P459691552342675575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A106716 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106717.P459691552342675575

/-! ## A106717.P14049788717745287821

`A045970(A106718(n+1))`
-/

namespace A106717.P14049788717745287821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045970 (A106718 (n + 1)).toNat

end

end A106717.P14049788717745287821

/-! ## A106717.P888189607988976123

`A003961(∩[A106711(n+1), A106716(n+1)])`
-/

namespace A106717.P888189607988976123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106717.P888189607988976123

/-! ## A106717.P2696148401253898949

`A045966(∩[A106713(n+1), A106714(n+1)])`
-/

namespace A106717.P2696148401253898949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106714 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106717.P2696148401253898949

/-! ## A106717.P10506374767601370451

`∩[A045970(A106713(n+1)), A106716(n+1)]`
-/

namespace A106717.P10506374767601370451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045970 (A106713 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106717.P10506374767601370451

/-!
# A106720: Largest of six consecutive primes the sum of the digits of each of which is prime.

The programs for A106720, there is no canonical definition to state claims against.
-/

/-! ## A106720.P17134555235818670340

`∩[A106717(n+1), A151800(A106717(n+1))]`
-/

namespace A106720.P17134555235818670340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A106717 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106720.P17134555235818670340

/-! ## A106720.P13221210286567552327

`A003961(∩[A106711(n+1), A106717(n+1)])`
-/

namespace A106720.P13221210286567552327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106717 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106720.P13221210286567552327

/-! ## A106720.P739639822243531387

`A045966(∩[A106713(n+1), A106716(n+1)])`
-/

namespace A106720.P739639822243531387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106716 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106720.P739639822243531387

/-! ## A106720.P12957452827317314840

`∩[A106714(n+1), A045968(A106714(n+1))]`
-/

namespace A106720.P12957452827317314840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A106714 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106720.P12957452827317314840

/-! ## A106720.P8472827364535968487

`∩[A045966(A106716(n+1)), A106717(n+1)]`
-/

namespace A106720.P8472827364535968487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A106716 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106720.P8472827364535968487

/-!
# A106721: Largest of seven consecutive primes whose sum of digits is prime.

The programs for A106721, there is no canonical definition to state claims against.
-/

/-! ## A106721.P13539035554359679282

`filter[A106720(n+2), A261092(#)]`
-/

namespace A106721.P13539035554359679282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A261092 (f1 j).toNat = 1) n)

end

end A106721.P13539035554359679282

/-!
# A106722: Smallest of seven consecutive primes the sum of the digits of each of which is prime.

The programs for A106722, there is no canonical definition to state claims against.
-/

/-! ## A106722.P6727379119558422855

`filter[A106719(n+3), A112713(#)]`
-/

namespace A106722.P6727379119558422855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A106722.P6727379119558422855

/-!
# A106723: Smallest of eight consecutive primes whose sum of digits is prime.

The programs for A106723, there is no canonical definition to state claims against.
-/

/-! ## A106723.P16320374361708689470

`A106722(∑[A092782(5*7^n)])`
-/

namespace A106723.P16320374361708689470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (5 * 7 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106722 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106723.P16320374361708689470

/-!
# A106727: Triangle T(n,k) = (f(n+1)*f(k+1) mod 10), where f(j) = 10 - (prime(j+3) mod 10), read by rows.

The programs for A106727, there is no canonical definition to state claims against.
-/

/-! ## A106727.P29520878535957326

`A033873(A000125(n+1)*A329604(n+4))%10`
-/

namespace A106727.P29520878535957326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033873 (A000125 (n + 1) * A329604 (n + 4)).toNat) 10

end

end A106727.P29520878535957326

/-! ## A106727.P14987159446802827172

`A171654(A054842(3*(n+1))-A168046(3*(n+1)))`
-/

namespace A106727.P14987159446802827172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171654 (A054842 (3 * (n + 1)) - A168046 (3 * (n + 1))).toNat

end

end A106727.P14987159446802827172

/-!
# A106728: Triangle T(n, k) = ( ((f(n+1) mod 5) mod 4) + ((f(k+1) mod 5) mod 4) ) mod 4, where f(n) = 10 - (prime(n+3) mod 10).

The programs for A106728, there is no canonical definition to state claims against.
-/

/-! ## A106728.P3723508600100381166

`(record[n-A089233(A035298(n))]+2)%4`
-/

namespace A106728.P3723508600100381166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089233 (A035298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2) 4

end

end A106728.P3723508600100381166

/-! ## A106728.P15587653696299103525

`and(3, A007494(A121031(2*n+3)))`
-/

namespace A106728.P15587653696299103525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007494 (A121031 (2 * n + 3)).toNat)

end

end A106728.P15587653696299103525

/-! ## A106728.P13237459961559847966

`xor(A001221(A307207(2*n+5)), A307200(3*n+2))`
-/

namespace A106728.P13237459961559847966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A307207 (2 * n + 5)).toNat) (A307200 (3 * n + 2))

end

end A106728.P13237459961559847966

/-! ## A106728.P10878820274029310246

`A010873(A377042(n+3)+3)`
-/

namespace A106728.P10878820274029310246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A377042 (n + 3) + 3).toNat

end

end A106728.P10878820274029310246

/-!
# A106729: Sum of two consecutive squares of Lucas numbers (A001254).

The programs for A106729, the canonical program `A106729.P3124214939035701073` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106729 has offset 0).

The definition of A106729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106729.P133088199861419936

`ogf((5-5x)/(1-3x+x^2))`
-/

namespace A106729.P133088199861419936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -5] [1, -3, 1] n

end

end A106729.P133088199861419936

namespace A106729

/-- `ogf((5-5x)/(1-3x+x^2))` -/
def P133088199861419936.Spec : Prop :=
  ∀ n, P133088199861419936.a n = A106729 n

end A106729

/-! ## A106729.P3124214939035701073

`3*a(n-1)-a(n-2)` with `a(0)=5, a(1)=10`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106729

/-- `3*a(n-1)-a(n-2)` -/
def P3124214939035701073.Spec : Prop :=
  ∀ n, P3124214939035701073.a n = A106729 n

theorem P3124214939035701073.correct : P3124214939035701073.Spec := by
  intro n
  simp only [A106729]

end A106729

/-! ## A106729.P2036463801679693528

`5*A001519(n+1)`
-/

namespace A106729.P2036463801679693528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001519 (n + 1)

end

end A106729.P2036463801679693528

namespace A106729

/-- `5*A001519(n+1)` -/
def P2036463801679693528.Spec : Prop :=
  ∀ n, P2036463801679693528.a n = A106729 n

end A106729

/-! ## A106729.P629732135812528872

`5*A000045(2*n+1)`
-/

namespace A106729.P629732135812528872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (2 * n + 1)

end

end A106729.P629732135812528872

namespace A106729

/-- `5*A000045(2*n+1)` -/
def P629732135812528872.Spec : Prop :=
  ∀ n, P629732135812528872.a n = A106729 n

end A106729

/-! ## A106729.P12725870371482988024

`A047946(n)+A047946(n+1)`
-/

namespace A106729.P12725870371482988024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047946 n + A047946 (n + 1)

end

end A106729.P12725870371482988024

namespace A106729

/-- `A047946(n)+A047946(n+1)` -/
def P12725870371482988024.Spec : Prop :=
  ∀ n, P12725870371482988024.a n = A106729 n

end A106729

/-! ## A106729.P3347933694907442782

`A000032(n)²+A000032(n+1)²`
-/

namespace A106729.P3347933694907442782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n ^ 2 + A000032 (n + 1) ^ 2

end

end A106729.P3347933694907442782

namespace A106729

/-- `A000032(n)²+A000032(n+1)²` -/
def P3347933694907442782.Spec : Prop :=
  ∀ n, P3347933694907442782.a n = A106729 n

end A106729

/-! ## A106729.P4564030836891465904

`A000032(2*n)+A000032(2*n+2)`
-/

namespace A106729.P4564030836891465904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) + A000032 (2 * n + 2)

end

end A106729.P4564030836891465904

namespace A106729

/-- `A000032(2*n)+A000032(2*n+2)` -/
def P4564030836891465904.Spec : Prop :=
  ∀ n, P4564030836891465904.a n = A106729 n

end A106729

/-! ## A106729.P9094125649569237691

`record[a(n-2)-a(n-1)]` with `a(0)=5, a(1)=0`
-/

namespace A106729.P9094125649569237691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106729.P9094125649569237691

namespace A106729

/-- `record[a(n-2)-a(n-1)]` -/
def P9094125649569237691.Spec : Prop :=
  ∀ n, P9094125649569237691.a n = A106729 n

end A106729

/-! ## A106729.P12357714211687058688

`A246639(n)-3`
-/

namespace A106729.P12357714211687058688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246639 n - 3

end

end A106729.P12357714211687058688

namespace A106729

/-- `A246639(n)-3` -/
def P12357714211687058688.Spec : Prop :=
  ∀ n, P12357714211687058688.a n = A106729 n

end A106729

/-! ## A106729.P5769858732990534736

`5*A122367(n)`
-/

namespace A106729.P5769858732990534736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A122367 n

end

end A106729.P5769858732990534736

namespace A106729

/-- `5*A122367(n)` -/
def P5769858732990534736.Spec : Prop :=
  ∀ n, P5769858732990534736.a n = A106729 n

end A106729

/-! ## A106729.P15690543987823272130

`abs(Δ[A075150(n)])`
-/

namespace A106729.P15690543987823272130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A106729.P15690543987823272130

namespace A106729

/-- `abs(Δ[A075150(n)])` -/
def P15690543987823272130.Spec : Prop :=
  ∀ n, P15690543987823272130.a n = A106729 n

end A106729

/-! ## A106729.P7793544420027365527

`A022088(Δ[n²])`
-/

namespace A106729.P7793544420027365527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A106729.P7793544420027365527

namespace A106729

/-- `A022088(Δ[n²])` -/
def P7793544420027365527.Spec : Prop :=
  ∀ n, P7793544420027365527.a n = A106729 n

end A106729

/-! ## A106729.P7587782028855144918

`Δ[A201157(n+1)]`
-/

namespace A106729.P7587782028855144918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106729.P7587782028855144918

namespace A106729

/-- `Δ[A201157(n+1)]` -/
def P7587782028855144918.Spec : Prop :=
  ∀ n, P7587782028855144918.a n = A106729 n

end A106729

/-! ## A106729.P11177449329110528466

`∑[A054888(n)]+4`
-/

namespace A106729.P11177449329110528466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A106729.P11177449329110528466

namespace A106729

/-- `∑[A054888(n)]+4` -/
def P11177449329110528466.Spec : Prop :=
  ∀ n, P11177449329110528466.a n = A106729 n

end A106729

/-! ## A106729.P3878822292665195746

`Δ[A022088(2*n)]`
-/

namespace A106729.P3878822292665195746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106729.P3878822292665195746

namespace A106729

/-- `Δ[A022088(2*n)]` -/
def P3878822292665195746.Spec : Prop :=
  ∀ n, P3878822292665195746.a n = A106729 n

end A106729

/-! ## A106729.P12024206686331547444

`Δ[A203976(2*n)]`
-/

namespace A106729.P12024206686331547444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106729.P12024206686331547444

namespace A106729

/-- `Δ[A203976(2*n)]` -/
def P12024206686331547444.Spec : Prop :=
  ∀ n, P12024206686331547444.a n = A106729 n

end A106729

/-! ## A106729.P17785183391934198442

`Δ[A371843(2*n)]`
-/

namespace A106729.P17785183391934198442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106729.P17785183391934198442

namespace A106729

/-- `Δ[A371843(2*n)]` -/
def P17785183391934198442.Spec : Prop :=
  ∀ n, P17785183391934198442.a n = A106729 n

end A106729

/-! ## A106729.P9425598951015320446

`∑[5*A088305(n)]`
-/

namespace A106729.P9425598951015320446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106729.P9425598951015320446

namespace A106729

/-- `∑[5*A088305(n)]` -/
def P9425598951015320446.Spec : Prop :=
  ∀ n, P9425598951015320446.a n = A106729 n

end A106729

/-! ## A106729.P2832328617133591843

`Δ[5*A001906(n)]`
-/

namespace A106729.P2832328617133591843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106729.P2832328617133591843

namespace A106729

/-- `Δ[5*A001906(n)]` -/
def P2832328617133591843.Spec : Prop :=
  ∀ n, P2832328617133591843.a n = A106729 n

end A106729

/-! ## A106729.P16859441460375682224

`Δ[5*A055588(n)]`
-/

namespace A106729.P16859441460375682224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A055588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106729.P16859441460375682224

namespace A106729

/-- `Δ[5*A055588(n)]` -/
def P16859441460375682224.Spec : Prop :=
  ∀ n, P16859441460375682224.a n = A106729 n

end A106729

/-!
# A106730: Product-based sequence of a Markov type based on a functional addition group.

The programs for A106730, there is no canonical definition to state claims against.
-/

/-! ## A106730.P10439612269414950556

`A035210(A328094(n))+A010054(n)`
-/

namespace A106730.P10439612269414950556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035210 (A328094 n).toNat + A010054 n

end

end A106730.P10439612269414950556

/-!
# A106731: Expansion of -2*x/(1 - 4*x + 2*x^2).

The programs for A106731, the canonical program `A106731.P2851070938052538552` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106731 has offset 0).

The definition of A106731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-2x/(1-4x+2x^2))` (program `A106731.P2851070938052538552`, by `A106731.P2851070938052538552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106731.P2851070938052538552

`ogf(-2x/(1-4x+2x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106731

/-- `ogf(-2x/(1-4x+2x^2))` -/
def P2851070938052538552.Spec : Prop :=
  ∀ n, P2851070938052538552.a n = A106731 n

theorem P2851070938052538552.correct : P2851070938052538552.Spec := by
  intro n
  simp only [A106731]

end A106731

/-! ## A106731.P1974273398376116868

`4*a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=-2`
-/

namespace A106731.P1974273398376116868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2)

end

end A106731.P1974273398376116868

namespace A106731

/-- `4*a(n-1)-2*a(n-2)` -/
def P1974273398376116868.Spec : Prop :=
  ∀ n, P1974273398376116868.a n = A106731 n

end A106731

/-! ## A106731.P15640911290171687027

`∑[ceil((sqrt(2)+2)*a(n-1))]` with `a(0)=0, a(1)=-2`
-/

namespace A106731.P15640911290171687027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n f1 =>
  ⌈(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106731.P15640911290171687027

namespace A106731

/-- `∑[ceil((sqrt(2)+2)*a(n-1))]` -/
def P15640911290171687027.Spec : Prop :=
  ∀ n, P15640911290171687027.a n = A106731 n

end A106731

/-! ## A106731.P7335051912742795409

`-∑[floor((sqrt(2)+2)*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A106731.P7335051912742795409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106731.P7335051912742795409

namespace A106731

/-- `-∑[floor((sqrt(2)+2)*a(n-1))]` -/
def P7335051912742795409.Spec : Prop :=
  ∀ n, P7335051912742795409.a n = A106731 n

end A106731

/-! ## A106731.P2859152479791788162

`-A060995(n+1)`
-/

namespace A106731.P2859152479791788162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A060995 (n + 1)

end

end A106731.P2859152479791788162

namespace A106731

/-- `-A060995(n+1)` -/
def P2859152479791788162.Spec : Prop :=
  ∀ n, P2859152479791788162.a n = A106731 n

end A106731

/-! ## A106731.P18087026572310969255

`1-∑[A006012(n)]`
-/

namespace A106731.P18087026572310969255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106731.P18087026572310969255

namespace A106731

/-- `1-∑[A006012(n)]` -/
def P18087026572310969255.Spec : Prop :=
  ∀ n, P18087026572310969255.a n = A106731 n

end A106731

/-! ## A106731.P4596812773446632201

`2-A087161(n+2)`
-/

namespace A106731.P4596812773446632201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A087161 (n + 2)

end

end A106731.P4596812773446632201

namespace A106731

/-- `2-A087161(n+2)` -/
def P4596812773446632201.Spec : Prop :=
  ∀ n, P4596812773446632201.a n = A106731 n

end A106731

/-! ## A106731.P11598240651007266670

`1-∑[∑[A204089(n)]]`
-/

namespace A106731.P11598240651007266670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106731.P11598240651007266670

namespace A106731

/-- `1-∑[∑[A204089(n)]]` -/
def P11598240651007266670.Spec : Prop :=
  ∀ n, P11598240651007266670.a n = A106731 n

end A106731

/-! ## A106731.P8662612451284882273

`1-∑[A030436(2*n)]`
-/

namespace A106731.P8662612451284882273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106731.P8662612451284882273

namespace A106731

/-- `1-∑[A030436(2*n)]` -/
def P8662612451284882273.Spec : Prop :=
  ∀ n, P8662612451284882273.a n = A106731 n

end A106731

/-! ## A106731.P12135276077675680963

`1-∑[A056236(n)/2]`
-/

namespace A106731.P12135276077675680963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056236 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106731.P12135276077675680963

namespace A106731

/-- `1-∑[A056236(n)/2]` -/
def P12135276077675680963.Spec : Prop :=
  ∀ n, P12135276077675680963.a n = (A106731 n : ℚ)

end A106731

/-! ## A106731.P424446190088591394

`1-A293067(n+2)/2`
-/

namespace A106731.P424446190088591394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A293067 (n + 2) : ℚ) / 2

end

end A106731.P424446190088591394

namespace A106731

/-- `1-A293067(n+2)/2` -/
def P424446190088591394.Spec : Prop :=
  ∀ n, P424446190088591394.a n = (A106731 n : ℚ)

end A106731

/-! ## A106731.P16894801676020439413

`1-∑[A062112(2*n+1)]`
-/

namespace A106731.P16894801676020439413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106731.P16894801676020439413

namespace A106731

/-- `1-∑[A062112(2*n+1)]` -/
def P16894801676020439413.Spec : Prop :=
  ∀ n, P16894801676020439413.a n = A106731 n

end A106731

/-! ## A106731.P1590907368398354011

`A006012(n)-A007070(n)`
-/

namespace A106731.P1590907368398354011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - A007070 n

end

end A106731.P1590907368398354011

namespace A106731

/-- `A006012(n)-A007070(n)` -/
def P1590907368398354011.Spec : Prop :=
  ∀ n, P1590907368398354011.a n = A106731 n

end A106731

/-! ## A106731.P9699107133303518343

`A007052(n)-A111567(n)`
-/

namespace A106731.P9699107133303518343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n - A111567 n

end

end A106731.P9699107133303518343

namespace A106731

/-- `A007052(n)-A111567(n)` -/
def P9699107133303518343.Spec : Prop :=
  ∀ n, P9699107133303518343.a n = A106731 n

end A106731

/-! ## A106731.P9304707135865379692

`Δ[-A030435(A004275(n))]`
-/

namespace A106731.P9304707135865379692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030435 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106731.P9304707135865379692

namespace A106731

/-- `Δ[-A030435(A004275(n))]` -/
def P9304707135865379692.Spec : Prop :=
  ∀ n, P9304707135865379692.a n = A106731 n

end A106731

/-! ## A106731.P4535962177070283381

`A056236(n)-A006012(n+1)`
-/

namespace A106731.P4535962177070283381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n - A006012 (n + 1)

end

end A106731.P4535962177070283381

namespace A106731

/-- `A056236(n)-A006012(n+1)` -/
def P4535962177070283381.Spec : Prop :=
  ∀ n, P4535962177070283381.a n = A106731 n

end A106731

/-! ## A106731.P15843913106057749297

`A006012(n)-A204089(n+1)`
-/

namespace A106731.P15843913106057749297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n - A204089 (n + 1)

end

end A106731.P15843913106057749297

namespace A106731

/-- `A006012(n)-A204089(n+1)` -/
def P15843913106057749297.Spec : Prop :=
  ∀ n, P15843913106057749297.a n = A106731 n

end A106731

/-! ## A106731.P5685604927545818766

`A057428(n)*A060995(n+1)`
-/

namespace A106731.P5685604927545818766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A060995 (n + 1)

end

end A106731.P5685604927545818766

namespace A106731

/-- `A057428(n)*A060995(n+1)` -/
def P5685604927545818766.Spec : Prop :=
  ∀ n, P5685604927545818766.a n = A106731 n

end A106731

/-! ## A106731.P7249566791686383245

`2*(A006012(n)-A007052(n))`
-/

namespace A106731.P7249566791686383245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006012 n - A007052 n)

end

end A106731.P7249566791686383245

namespace A106731

/-- `2*(A006012(n)-A007052(n))` -/
def P7249566791686383245.Spec : Prop :=
  ∀ n, P7249566791686383245.a n = A106731 n

end A106731

/-! ## A106731.P500641824750413294

`A030436(2*n)-A007070(n)`
-/

namespace A106731.P500641824750413294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (2 * n) - A007070 n

end

end A106731.P500641824750413294

namespace A106731

/-- `A030436(2*n)-A007070(n)` -/
def P500641824750413294.Spec : Prop :=
  ∀ n, P500641824750413294.a n = A106731 n

end A106731

/-!
# A106732: Expansion of -3*x/(1 - 5*x + 3*x^2).

The programs for A106732, the canonical program `A106732.P6829274941132407595` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106732 has offset 0).

The definition of A106732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-3x/(1-5x+3x^2))` (program `A106732.P6829274941132407595`, by `A106732.P6829274941132407595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106732.P6829274941132407595

`ogf(-3x/(1-5x+3x^2))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106732

/-- `ogf(-3x/(1-5x+3x^2))` -/
def P6829274941132407595.Spec : Prop :=
  ∀ n, P6829274941132407595.a n = A106732 n

theorem P6829274941132407595.correct : P6829274941132407595.Spec := by
  intro n
  simp only [A106732]

end A106732

/-! ## A106732.P5130495965786116301

`5*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=-3`
-/

namespace A106732.P5130495965786116301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -3] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2)

end

end A106732.P5130495965786116301

namespace A106732

/-- `5*a(n-1)-3*a(n-2)` -/
def P5130495965786116301.Spec : Prop :=
  ∀ n, P5130495965786116301.a n = A106732 n

end A106732

/-! ## A106732.P7523863020993427143

`3*sqrt(13)/13*(((5-sqrt(13))/2)^n-((5+sqrt(13))/2)^n)`
-/

namespace A106732.P7523863020993427143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (13 : ℝ) / 13 * (((5 - Real.sqrt (13 : ℝ)) / 2) ^ n - ((5 + Real.sqrt (13 : ℝ)) / 2) ^ n)

end

end A106732.P7523863020993427143

namespace A106732

/-- `3*sqrt(13)/13*(((5-sqrt(13))/2)^n-((5+sqrt(13))/2)^n)` -/
def P7523863020993427143.Spec : Prop :=
  ∀ n, P7523863020993427143.a n = (A106732 n : ℝ)

end A106732

/-! ## A106732.P15692955684680548979

`1-∑[A081704(n)]`
-/

namespace A106732.P15692955684680548979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106732.P15692955684680548979

namespace A106732

/-- `1-∑[A081704(n)]` -/
def P15692955684680548979.Spec : Prop :=
  ∀ n, P15692955684680548979.a n = A106732 n

end A106732

/-! ## A106732.P16491989519960135763

`1-∑[∑[A095939(n)]]`
-/

namespace A106732.P16491989519960135763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106732.P16491989519960135763

namespace A106732

/-- `1-∑[∑[A095939(n)]]` -/
def P16491989519960135763.Spec : Prop :=
  ∀ n, P16491989519960135763.a n = A106732 n

end A106732

/-! ## A106732.P17464234939452302306

`A052961(n)-A116415(n)`
-/

namespace A106732.P17464234939452302306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n - A116415 n

end

end A106732.P17464234939452302306

namespace A106732

/-- `A052961(n)-A116415(n)` -/
def P17464234939452302306.Spec : Prop :=
  ∀ n, P17464234939452302306.a n = A106732 n

end A106732

/-! ## A106732.P18086454641056156999

`A081704(n)-A109114(n)`
-/

namespace A106732.P18086454641056156999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n - A109114 n

end

end A106732.P18086454641056156999

namespace A106732

/-- `A081704(n)-A109114(n)` -/
def P18086454641056156999.Spec : Prop :=
  ∀ n, P18086454641056156999.a n = A106732 n

end A106732

/-! ## A106732.P4281875259741281924

`A052961(n)-∑[A018902(n)]`
-/

namespace A106732.P4281875259741281924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106732.P4281875259741281924

namespace A106732

/-- `A052961(n)-∑[A018902(n)]` -/
def P4281875259741281924.Spec : Prop :=
  ∀ n, P4281875259741281924.a n = A106732 n

end A106732

/-! ## A106732.P4062958971158909538

`A228569(n)-2*A018902(n)`
-/

namespace A106732.P4062958971158909538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228569 n - 2 * A018902 n

end

end A106732.P4062958971158909538

namespace A106732

/-- `A228569(n)-2*A018902(n)` -/
def P4062958971158909538.Spec : Prop :=
  ∀ n, P4062958971158909538.a n = A106732 n

end A106732

/-! ## A106732.P13227361926662620452

`A052961(n)-∑[A095940(n+1)]`
-/

namespace A106732.P13227361926662620452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106732.P13227361926662620452

namespace A106732

/-- `A052961(n)-∑[A095940(n+1)]` -/
def P13227361926662620452.Spec : Prop :=
  ∀ n, P13227361926662620452.a n = A106732 n

end A106732

/-! ## A106732.P10841556236023430702

`2*A052961(n)-A052961(n+1)`
-/

namespace A106732.P10841556236023430702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052961 n - A052961 (n + 1)

end

end A106732.P10841556236023430702

namespace A106732

/-- `2*A052961(n)-A052961(n+1)` -/
def P10841556236023430702.Spec : Prop :=
  ∀ n, P10841556236023430702.a n = A106732 n

end A106732

/-! ## A106732.P17843021104909595076

`3*A081704(n)-A081704(n+1)`
-/

namespace A106732.P17843021104909595076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A081704 n - A081704 (n + 1)

end

end A106732.P17843021104909595076

namespace A106732

/-- `3*A081704(n)-A081704(n+1)` -/
def P17843021104909595076.Spec : Prop :=
  ∀ n, P17843021104909595076.a n = A106732 n

end A106732

/-! ## A106732.P7306612886101013965

`A116415(n)+A228569(n)-A010903(n)`
-/

namespace A106732.P7306612886101013965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116415 n + (A228569 n - A010903 n)

end

end A106732.P7306612886101013965

namespace A106732

/-- `A116415(n)+A228569(n)-A010903(n)` -/
def P7306612886101013965.Spec : Prop :=
  ∀ n, P7306612886101013965.a n = A106732 n

end A106732

/-! ## A106732.P1362671418925027703

`A081704(n)+A081704(n)-A095939(n+1)`
-/

namespace A106732.P1362671418925027703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + (A081704 n - A095939 (n + 1))

end

end A106732.P1362671418925027703

namespace A106732

/-- `A081704(n)+A081704(n)-A095939(n+1)` -/
def P1362671418925027703.Spec : Prop :=
  ∀ n, P1362671418925027703.a n = A106732 n

end A106732

/-! ## A106732.P9403569744829591315

`A228569(n+1)-A116415(n+1)`
-/

namespace A106732.P9403569744829591315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228569 (n + 1) - A116415 (n + 1)

end

end A106732.P9403569744829591315

namespace A106732

/-- `A228569(n+1)-A116415(n+1)` -/
def P9403569744829591315.Spec : Prop :=
  ∀ n, P9403569744829591315.a n = A106732 n

end A106732

/-! ## A106732.P9775076928288337720

`A052961(n+1)+A052961(n+1)-A018902(n+1)`
-/

namespace A106732.P9775076928288337720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) + (A052961 (n + 1) - A018902 (n + 1))

end

end A106732.P9775076928288337720

namespace A106732

/-- `A052961(n+1)+A052961(n+1)-A018902(n+1)` -/
def P9775076928288337720.Spec : Prop :=
  ∀ n, P9775076928288337720.a n = A106732 n

end A106732

/-!
# A106733: a(n) = a(a(a(a(n - a(n-1))))) + a(n - a(n-2)) with a(1) = a(2) = 1.

The programs for A106733, the canonical program `A106733.P15290278810961414849` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106733 has offset 1).

The definition of A106733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(a(a(n-a(n-1))-1)-1)-1)+a(n-a(n-2))` (program `A106733.P15290278810961414849`, by `A106733.P15290278810961414849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106733.P15290278810961414849

`a(a(a(a(n-a(n-1))-1)-1)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106733

/-- `a(a(a(a(n-a(n-1))-1)-1)-1)+a(n-a(n-2))` -/
def P15290278810961414849.Spec : Prop :=
  ∀ n, (P15290278810961414849.a n : ℤ) = A106733 (n + 1)

theorem P15290278810961414849.correct : P15290278810961414849.Spec := by
  intro n
  simp only [A106733, Nat.add_sub_cancel]

end A106733

/-! ## A106733.P14647050956110119321

`A002024(n+1)-A134667(A245796(n+1))`
-/

namespace A106733.P14647050956110119321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A134667 (A245796 (n + 1)).toNat

end

end A106733.P14647050956110119321

namespace A106733

/-- `A002024(n+1)-A134667(A245796(n+1))` -/
def P14647050956110119321.Spec : Prop :=
  ∀ n, P14647050956110119321.a n = A106733 (n + 1)

end A106733

/-!
# A106734: a(n) = n^3 - 7*n + 7.

The programs for A106734, the canonical program `A106734.P17557611291777197513` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106734 has offset 1).

The definition of A106734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-7*(n+1)+7` (program `A106734.P17557611291777197513`, by `A106734.P17557611291777197513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106734.P3508665855221861183

`ogf((1-3x+15x^2-7x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A106734.P3508665855221861183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 15, -7] [1, -4, 6, -4, 1] n

end

end A106734.P3508665855221861183

namespace A106734

/-- `ogf((1-3x+15x^2-7x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3508665855221861183.Spec : Prop :=
  ∀ n, P3508665855221861183.a n = A106734 (n + 1)

end A106734

/-! ## A106734.P16601249978705397259

`(n+1)*((n+1)²-7)+7`
-/

namespace A106734.P16601249978705397259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 2 : ℤ) - 7) + 7

end

end A106734.P16601249978705397259

namespace A106734

/-- `(n+1)*((n+1)²-7)+7` -/
def P16601249978705397259.Spec : Prop :=
  ∀ n, P16601249978705397259.a n = A106734 (n + 1)

theorem P16601249978705397259.correct : P16601249978705397259.Spec := by
  intro n
  simp only [A106734, Nat.add_sub_cancel, A106734.P16601249978705397259.a, A106734.P17557611291777197513.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A106734

/-! ## A106734.P17557611291777197513

`(n+1)^3-7*(n+1)+7`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106734

/-- `(n+1)^3-7*(n+1)+7` -/
def P17557611291777197513.Spec : Prop :=
  ∀ n, P17557611291777197513.a n = A106734 (n + 1)

theorem P17557611291777197513.correct : P17557611291777197513.Spec := by
  intro n
  simp only [A106734, Nat.add_sub_cancel]

end A106734

/-! ## A106734.P222396876801595711

`∑[a(n-1)+6*n]` with `a(0)=1, a(1)=0`
-/

namespace A106734.P222396876801595711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106734.P222396876801595711

namespace A106734

/-- `∑[a(n-1)+6*n]` -/
def P222396876801595711.Spec : Prop :=
  ∀ n, (P222396876801595711.a n : ℤ) = A106734 (n + 1)

end A106734

/-! ## A106734.P2356307406507084469

`or(1, (n-1)*n*(n+4))`
-/

namespace A106734.P2356307406507084469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * (n * (n + 4) : ℤ))

end

end A106734.P2356307406507084469

namespace A106734

/-- `or(1, (n-1)*n*(n+4))` -/
def P2356307406507084469.Spec : Prop :=
  ∀ n, P2356307406507084469.a n = A106734 (n + 1)

end A106734

/-! ## A106734.P13736214323612207165

`xor(1, (n-1)*n*(n+4))`
-/

namespace A106734.P13736214323612207165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * (n * (n + 4) : ℤ))

end

end A106734.P13736214323612207165

namespace A106734

/-- `xor(1, (n-1)*n*(n+4))` -/
def P13736214323612207165.Spec : Prop :=
  ∀ n, P13736214323612207165.a n = A106734 (n + 1)

end A106734

/-! ## A106734.P5941153142327359958

`((n+1)^4)%((n+1)^3+7)`
-/

namespace A106734.P5941153142327359958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 % ((n + 1) ^ 3 + 7)

end

end A106734.P5941153142327359958

namespace A106734

/-- `((n+1)^4)%((n+1)^3+7)` -/
def P5941153142327359958.Spec : Prop :=
  ∀ n, (P5941153142327359958.a n : ℤ) = A106734 (n + 1)

end A106734

/-! ## A106734.P14962105896158428104

`abs((n+1)^3-A008589(n))`
-/

namespace A106734.P14962105896158428104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 3 : ℤ) - A008589 n|

end

end A106734.P14962105896158428104

namespace A106734

/-- `abs((n+1)^3-A008589(n))` -/
def P14962105896158428104.Spec : Prop :=
  ∀ n, P14962105896158428104.a n = A106734 (n + 1)

end A106734

/-! ## A106734.P10956569733337334574

`abs(8*n-(A000578(n+1)+n))`
-/

namespace A106734.P10956569733337334574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n : ℤ) - (A000578 (n + 1) + (n : ℤ))|

end

end A106734.P10956569733337334574

namespace A106734

/-- `abs(8*n-(A000578(n+1)+n))` -/
def P10956569733337334574.Spec : Prop :=
  ∀ n, P10956569733337334574.a n = A106734 (n + 1)

end A106734

/-! ## A106734.P423535207161259212

`abs(A008589(n)-A109900(2*n+1))`
-/

namespace A106734.P423535207161259212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008589 n - A109900 (2 * n + 1)|

end

end A106734.P423535207161259212

namespace A106734

/-- `abs(A008589(n)-A109900(2*n+1))` -/
def P423535207161259212.Spec : Prop :=
  ∀ n, P423535207161259212.a n = A106734 (n + 1)

end A106734

/-!
# A106736: Primes of the form r(r(r(r(n)+1)+1)+1)+1, where A141468(n) = r(n) = n-th nonprime.

The programs for A106736, there is no canonical definition to state claims against.
-/

/-! ## A106736.P8114407848522898907

`p?[A018252(A018252(A018252(A018252(n+1))))+1]`
-/

namespace A106736.P8114407848522898907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A018252 (A018252 (A018252 (n + 1)).toNat).toNat).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106736.P8114407848522898907

/-! ## A106736.P4311050364384282257

`p?[A018252(A102616(n+1))+1]`
-/

namespace A106736.P4311050364384282257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A102616 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106736.P4311050364384282257

/-! ## A106736.P304582273619136698

`p?[A102616(n+1)+A005171(n+1)]`
-/

namespace A106736.P304582273619136698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102616 (n + 1) + A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106736.P304582273619136698

/-! ## A106736.P17029213159280903028

`p?[A102616(n+1)+A049076(n+1)²]`
-/

namespace A106736.P17029213159280903028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102616 (n + 1) + A049076 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106736.P17029213159280903028

/-!
# A106737: a(n) = Sum_{k=0..n} ({binomial(n+k,n-k)*binomial(n,k)} mod 2).

The programs for A106737, the canonical program `A106737.P18148642187660912627` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106737 has offset 0).

The definition of A106737 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106737.P18148642187660912627

`A000005(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A106737

/-- `A000005(A005940(1+n))` -/
def P18148642187660912627.Spec : Prop :=
  ∀ n, P18148642187660912627.a n = A106737 n

theorem P18148642187660912627.correct : P18148642187660912627.Spec := by
  intro n
  simp only [A106737]

end A106737

/-! ## A106737.P7848891135260033402

`∏{e}[A278222(n), #+1]`
-/

namespace A106737.P7848891135260033402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A106737.P7848891135260033402

namespace A106737

/-- `∏{e}[A278222(n), #+1]` -/
def P7848891135260033402.Spec : Prop :=
  ∀ n, (P7848891135260033402.a n : ℤ) = A106737 n

end A106737

/-! ## A106737.P12585292299075907943

`A064553(A246029(n))`
-/

namespace A106737.P12585292299075907943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A246029 n).toNat

end

end A106737.P12585292299075907943

namespace A106737

/-- `A064553(A246029(n))` -/
def P12585292299075907943.Spec : Prop :=
  ∀ n, P12585292299075907943.a n = A106737 n

end A106737

/-! ## A106737.P13224017594571209390

`A324183(xor(A003817(n), A005843(n)))`
-/

namespace A106737.P13224017594571209390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (Int.xor (A003817 n) (A005843 n)).toNat

end

end A106737.P13224017594571209390

namespace A106737

/-- `A324183(xor(A003817(n), A005843(n)))` -/
def P13224017594571209390.Spec : Prop :=
  ∀ n, P13224017594571209390.a n = A106737 n

end A106737

/-! ## A106737.P14268457923574296377

`A366799(2*n)`
-/

namespace A106737.P14268457923574296377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (2 * n)

end

end A106737.P14268457923574296377

namespace A106737

/-- `A366799(2*n)` -/
def P14268457923574296377.Spec : Prop :=
  ∀ n, P14268457923574296377.a n = A106737 n

end A106737

/-! ## A106737.P1234017148230521390

`A124758(A010078(n+1))`
-/

namespace A106737.P1234017148230521390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A010078 (n + 1)).toNat

end

end A106737.P1234017148230521390

namespace A106737

/-- `A124758(A010078(n+1))` -/
def P1234017148230521390.Spec : Prop :=
  ∀ n, P1234017148230521390.a n = A106737 n

end A106737

/-! ## A106737.P16107038602610539699

`∏{e}[A286601(A193231(n)), #+1]`
-/

namespace A106737.P16107038602610539699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286601 (A193231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A106737.P16107038602610539699

namespace A106737

/-- `∏{e}[A286601(A193231(n)), #+1]` -/
def P16107038602610539699.Spec : Prop :=
  ∀ n, (P16107038602610539699.a n : ℤ) = A106737 n

end A106737

/-! ## A106737.P12145634592838845236

`A302051(A252753(n))`
-/

namespace A106737.P12145634592838845236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302051 (A252753 n).toNat

end

end A106737.P12145634592838845236

namespace A106737

/-- `A302051(A252753(n))` -/
def P12145634592838845236.Spec : Prop :=
  ∀ n, P12145634592838845236.a n = A106737 n

end A106737

/-! ## A106737.P15106389268673090194

`A302051(A286555(A006068(n)))`
-/

namespace A106737.P15106389268673090194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302051 (A286555 (A006068 n).toNat).toNat

end

end A106737.P15106389268673090194

namespace A106737

/-- `A302051(A286555(A006068(n)))` -/
def P15106389268673090194.Spec : Prop :=
  ∀ n, P15106389268673090194.a n = A106737 n

end A106737

/-! ## A106737.P11109782317779425499

`A000005(A278222(n))`
-/

namespace A106737.P11109782317779425499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278222 n).toNat

end

end A106737.P11109782317779425499

namespace A106737

/-- `A000005(A278222(n))` -/
def P11109782317779425499.Spec : Prop :=
  ∀ n, P11109782317779425499.a n = A106737 n

end A106737

/-! ## A106737.P8553727590696783123

`A000005(A278217(A180200(n)))`
-/

namespace A106737.P8553727590696783123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278217 (A180200 n).toNat).toNat

end

end A106737.P8553727590696783123

namespace A106737

/-- `A000005(A278217(A180200(n)))` -/
def P8553727590696783123.Spec : Prop :=
  ∀ n, P8553727590696783123.a n = A106737 n

end A106737

/-! ## A106737.P18134329238075244069

`A000005(A286601(A193231(n)))`
-/

namespace A106737.P18134329238075244069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286601 (A193231 n).toNat).toNat

end

end A106737.P18134329238075244069

namespace A106737

/-- `A000005(A286601(A193231(n)))` -/
def P18134329238075244069.Spec : Prop :=
  ∀ n, P18134329238075244069.a n = A106737 n

end A106737

/-! ## A106737.P13004490571315327937

`A366797(A054429(2*n+1)+1)`
-/

namespace A106737.P13004490571315327937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366797 (A054429 (2 * n + 1) + 1).toNat

end

end A106737.P13004490571315327937

namespace A106737

/-- `A366797(A054429(2*n+1)+1)` -/
def P13004490571315327937.Spec : Prop :=
  ∀ n, P13004490571315327937.a n = A106737 n

end A106737

/-! ## A106737.P243765783619647271

`A000005(A286596(A153142(n)))`
-/

namespace A106737.P243765783619647271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286596 (A153142 n).toNat).toNat

end

end A106737.P243765783619647271

namespace A106737

/-- `A000005(A286596(A153142(n)))` -/
def P243765783619647271.Spec : Prop :=
  ∀ n, P243765783619647271.a n = A106737 n

end A106737

/-! ## A106737.P16610752322133081873

`A000005(A286598(A153141(n)))`
-/

namespace A106737.P16610752322133081873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286598 (A153141 n).toNat).toNat

end

end A106737.P16610752322133081873

namespace A106737

/-- `A000005(A286598(A153141(n)))` -/
def P16610752322133081873.Spec : Prop :=
  ∀ n, P16610752322133081873.a n = A106737 n

end A106737

/-! ## A106737.P9856194484412678908

`∑{d}[A278222(n), A001222(A008578(#+1))]`
-/

namespace A106737.P9856194484412678908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 (A008578 (d + 1)).toNat

end

end A106737.P9856194484412678908

namespace A106737

/-- `∑{d}[A278222(n), A001222(A008578(#+1))]` -/
def P9856194484412678908.Spec : Prop :=
  ∀ n, P9856194484412678908.a n = A106737 n

end A106737

/-! ## A106737.P1373003516002008987

`∏{e}[A005940(n+1), #+1]`
-/

namespace A106737.P1373003516002008987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A106737.P1373003516002008987

namespace A106737

/-- `∏{e}[A005940(n+1), #+1]` -/
def P1373003516002008987.Spec : Prop :=
  ∀ n, (P1373003516002008987.a n : ℤ) = A106737 n

end A106737

/-! ## A106737.P12138064725338931223

`∏{e}[A302026(A269387(n)), #+1]`
-/

namespace A106737.P12138064725338931223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269387 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A106737.P12138064725338931223

namespace A106737

/-- `∏{e}[A302026(A269387(n)), #+1]` -/
def P12138064725338931223.Spec : Prop :=
  ∀ n, (P12138064725338931223.a n : ℤ) = A106737 n

end A106737

/-! ## A106737.P17244554109088212179

`∏{e}[A332815(n), #+1]`
-/

namespace A106737.P17244554109088212179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A106737.P17244554109088212179

namespace A106737

/-- `∏{e}[A332815(n), #+1]` -/
def P17244554109088212179.Spec : Prop :=
  ∀ n, (P17244554109088212179.a n : ℤ) = A106737 n

end A106737

/-! ## A106737.P3354543161165760578

`A000005(A292602(3*(n+1)+n))`
-/

namespace A106737.P3354543161165760578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292602 (3 * (n + 1) + n)).toNat

end

end A106737.P3354543161165760578

namespace A106737

/-- `A000005(A292602(3*(n+1)+n))` -/
def P3354543161165760578.Spec : Prop :=
  ∀ n, P3354543161165760578.a n = A106737 n

end A106737

/-!
# A106740: Triangle read by rows: greatest common divisors of pairs of Fibonacci numbers greater than 1: T(n, k) = gcd(Fibonacci(n), Fibonacci(k)).

The programs for A106740, the canonical program `A106740.P18203027849950181357` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106740 has offset 3).

The definition of A106740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106740.P18011072029367583794

`A111946(lt[0, A014473(n)]+2)`
-/

namespace A106740.P18011072029367583794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A106740.P18011072029367583794

namespace A106740

/-- `A111946(lt[0, A014473(n)]+2)` -/
def P18011072029367583794.Spec : Prop :=
  ∀ n, P18011072029367583794.a n = A106740 (n + 3)

end A106740

/-! ## A106740.P4518732095303638370

`A111946(A080036(A080036(n+1)))`
-/

namespace A106740.P4518732095303638370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111946 (A080036 (A080036 (n + 1)).toNat).toNat

end

end A106740.P4518732095303638370

namespace A106740

/-- `A111946(A080036(A080036(n+1)))` -/
def P4518732095303638370.Spec : Prop :=
  ∀ n, P4518732095303638370.a n = A106740 (n + 3)

end A106740

/-! ## A106740.P18203027849950181357

`A000045(gcd(A025581(n), A133196(n+1)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106740

/-- `A000045(gcd(A025581(n), A133196(n+1)))` -/
def P18203027849950181357.Spec : Prop :=
  ∀ n, P18203027849950181357.a n = A106740 (n + 3)

theorem P18203027849950181357.correct : P18203027849950181357.Spec := by
  intro n
  simp only [A106740, Nat.add_sub_cancel]

end A106740

/-! ## A106740.P14430066939687438349

`A000045(gcd((A131507(n)+5)/2, A063657(n+1)))`
-/

namespace A106740.P14430066939687438349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (SequenceMachineLib.roundAway ((A131507 n + 5 : ℚ) / 2)) (A063657 (n + 1)))

end

end A106740.P14430066939687438349

namespace A106740

/-- `A000045(gcd((A131507(n)+5)/2, A063657(n+1)))` -/
def P14430066939687438349.Spec : Prop :=
  ∀ n, P14430066939687438349.a n = A106740 (n + 3)

end A106740

/-! ## A106740.P11910760785196092449

`A000045(gcd(A002024(n+1)+2, A004736(n+1)-1))`
-/

namespace A106740.P11910760785196092449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (A002024 (n + 1) + 2) (A004736 (n + 1) - 1))

end

end A106740.P11910760785196092449

namespace A106740

/-- `A000045(gcd(A002024(n+1)+2, A004736(n+1)-1))` -/
def P11910760785196092449.Spec : Prop :=
  ∀ n, P11910760785196092449.a n = A106740 (n + 3)

end A106740

/-!
# A106741: Numbers n such that n divides the denominator of 2n-th Bernoulli number.

The programs for A106741, there is no canonical definition to state claims against.
-/

/-! ## A106741.P2745143894948406164

`A341858(n+2)/2`
-/

namespace A106741.P2745143894948406164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341858 (n + 2) : ℚ) / 2

end

end A106741.P2745143894948406164

/-! ## A106741.P2095388335176411153

`record[A341858(A065033(n))/A141056(n)]`
-/

namespace A106741.P2095388335176411153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341858 (A065033 n).toNat : ℚ) / (A141056 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106741.P2095388335176411153

/-! ## A106741.P14971736826930735431

`∑[A273943(Δ[A341858(n+1)])]`
-/

namespace A106741.P14971736826930735431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341858 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106741.P14971736826930735431

/-! ## A106741.P11615407364926432279

`∑[A305425(Δ[A341858(n+1)])]`
-/

namespace A106741.P11615407364926432279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341858 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106741.P11615407364926432279

/-! ## A106741.P15859834735064039531

`A273943(A341858(n+2))`
-/

namespace A106741.P15859834735064039531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A341858 (n + 2)).toNat

end

end A106741.P15859834735064039531

/-!
# A106742: 

The programs for A106742, there is no canonical definition to state claims against.
-/

/-! ## A106742.P2308353494763237884

`a(a(a(a(a(n-a(n-1))-1)-1)-1)-1)+a(n-a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A106742.P2308353494763237884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (a (a (a (n - a (n - 1)) - 1) - 1) - 1) - 1) + a (n - a (n - 2))

end

end A106742.P2308353494763237884

/-!
# A106743: a(n) = -1 iff n is prime, a(n) = 1 iff n is not squarefree, otherwise (n is nonprime and squarefree) a(n) = 0.

The programs for A106743, the canonical program `A106743.P3768313889033117879` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106743 has offset 1).

The definition of A106743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106743.P13740892112279878419

`1-A211776(n+1)%3`
-/

namespace A106743.P13740892112279878419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A211776 (n + 1)) 3

end

end A106743.P13740892112279878419

namespace A106743

/-- `1-A211776(n+1)%3` -/
def P13740892112279878419.Spec : Prop :=
  ∀ n, P13740892112279878419.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P5790205415746463204

`∏{p}[n+1, C(#%n, #)]-A008683(n+1)²`
-/

namespace A106743.P5790205415746463204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ) - A008683 (n + 1) ^ 2

end

end A106743.P5790205415746463204

namespace A106743

/-- `∏{p}[n+1, C(#%n, #)]-A008683(n+1)²` -/
def P5790205415746463204.Spec : Prop :=
  ∀ n, P5790205415746463204.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P14554817474992285670

`A271102(A347149(n+1)+1)`
-/

namespace A106743.P14554817474992285670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A347149 (n + 1) + 1).toNat

end

end A106743.P14554817474992285670

namespace A106743

/-- `A271102(A347149(n+1)+1)` -/
def P14554817474992285670.Spec : Prop :=
  ∀ n, P14554817474992285670.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P5300915709085539136

`A121373(6*A074823(n+1))`
-/

namespace A106743.P5300915709085539136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (6 * A074823 (n + 1)).toNat

end

end A106743.P5300915709085539136

namespace A106743

/-- `A121373(6*A074823(n+1))` -/
def P5300915709085539136.Spec : Prop :=
  ∀ n, P5300915709085539136.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P7807414350403040758

`A005171(n+1)-A008966(n+1)`
-/

namespace A106743.P7807414350403040758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - A008966 (n + 1)

end

end A106743.P7807414350403040758

namespace A106743

/-- `A005171(n+1)-A008966(n+1)` -/
def P7807414350403040758.Spec : Prop :=
  ∀ n, P7807414350403040758.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P15059286876650970926

`A107078(n+1)-A010051(n+1)`
-/

namespace A106743.P15059286876650970926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) - A010051 (n + 1)

end

end A106743.P15059286876650970926

namespace A106743

/-- `A107078(n+1)-A010051(n+1)` -/
def P15059286876650970926.Spec : Prop :=
  ∀ n, P15059286876650970926.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P10088322743441946812

`A005171(n+1)-and(1, A002033(n))`
-/

namespace A106743.P10088322743441946812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - Int.land 1 (A002033 n)

end

end A106743.P10088322743441946812

namespace A106743

/-- `A005171(n+1)-and(1, A002033(n))` -/
def P10088322743441946812.Spec : Prop :=
  ∀ n, P10088322743441946812.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P16083719121815300010

`A005171(n+1)-and(1, A195588(n))`
-/

namespace A106743.P16083719121815300010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - Int.land 1 (A195588 n)

end

end A106743.P16083719121815300010

namespace A106743

/-- `A005171(n+1)-and(1, A195588(n))` -/
def P16083719121815300010.Spec : Prop :=
  ∀ n, P16083719121815300010.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P10664975120289204248

`xor(A005171(n+1), A069158(n+1))`
-/

namespace A106743.P10664975120289204248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005171 (n + 1)) (A069158 (n + 1))

end

end A106743.P10664975120289204248

namespace A106743

/-- `xor(A005171(n+1), A069158(n+1))` -/
def P10664975120289204248.Spec : Prop :=
  ∀ n, P10664975120289204248.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P16560731926876279392

`A005171(n+1)-A008683(n+1)²`
-/

namespace A106743.P16560731926876279392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - A008683 (n + 1) ^ 2

end

end A106743.P16560731926876279392

namespace A106743

/-- `A005171(n+1)-A008683(n+1)²` -/
def P16560731926876279392.Spec : Prop :=
  ∀ n, P16560731926876279392.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P14155289349944657208

`1-(A010051(n+1)+A008966(n+1))`
-/

namespace A106743.P14155289349944657208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A010051 (n + 1) + A008966 (n + 1))

end

end A106743.P14155289349944657208

namespace A106743

/-- `1-(A010051(n+1)+A008966(n+1))` -/
def P14155289349944657208.Spec : Prop :=
  ∀ n, P14155289349944657208.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P2094971274041233383

`A005171(n+1)+A107078(n+1)-1`
-/

namespace A106743.P2094971274041233383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (A107078 (n + 1) - 1)

end

end A106743.P2094971274041233383

namespace A106743

/-- `A005171(n+1)+A107078(n+1)-1` -/
def P2094971274041233383.Spec : Prop :=
  ∀ n, P2094971274041233383.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P15132922704069892103

`1-(A010051(n+1)+A008683(n+1)²)`
-/

namespace A106743.P15132922704069892103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A010051 (n + 1) + A008683 (n + 1) ^ 2)

end

end A106743.P15132922704069892103

namespace A106743

/-- `1-(A010051(n+1)+A008683(n+1)²)` -/
def P15132922704069892103.Spec : Prop :=
  ∀ n, P15132922704069892103.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P8615675616072689082

`1-(A010051(n+1)+A069158(n+1)²)`
-/

namespace A106743.P8615675616072689082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A010051 (n + 1) + A069158 (n + 1) ^ 2)

end

end A106743.P8615675616072689082

namespace A106743

/-- `1-(A010051(n+1)+A069158(n+1)²)` -/
def P8615675616072689082.Spec : Prop :=
  ∀ n, P8615675616072689082.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P12484220960365184744

`A005171(n+1)-(1-A007423(n+1))²`
-/

namespace A106743.P12484220960365184744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) - (1 - A007423 (n + 1)) ^ 2

end

end A106743.P12484220960365184744

namespace A106743

/-- `A005171(n+1)-(1-A007423(n+1))²` -/
def P12484220960365184744.Spec : Prop :=
  ∀ n, P12484220960365184744.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P900212737094787283

`A001222(A249739(n+1))-A010051(n+1)`
-/

namespace A106743.P900212737094787283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249739 (n + 1)).toNat - A010051 (n + 1)

end

end A106743.P900212737094787283

namespace A106743

/-- `A001222(A249739(n+1))-A010051(n+1)` -/
def P900212737094787283.Spec : Prop :=
  ∀ n, P900212737094787283.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P3768313889033117879

`A057427(A317946(n+1))-A010051(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106743

/-- `A057427(A317946(n+1))-A010051(n+1)` -/
def P3768313889033117879.Spec : Prop :=
  ∀ n, P3768313889033117879.a n = A106743 (n + 1)

theorem P3768313889033117879.correct : P3768313889033117879.Spec := by
  intro n
  simp only [A106743, Nat.add_sub_cancel]

end A106743

/-! ## A106743.P15402276810490346499

`A087049(A347149(n+1))-A008966(n+1)`
-/

namespace A106743.P15402276810490346499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A347149 (n + 1)).toNat - A008966 (n + 1)

end

end A106743.P15402276810490346499

namespace A106743

/-- `A087049(A347149(n+1))-A008966(n+1)` -/
def P15402276810490346499.Spec : Prop :=
  ∀ n, P15402276810490346499.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P2873621446925649294

`A328458(A061142(n+1))-A008683(n+1)²`
-/

namespace A106743.P2873621446925649294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (A061142 (n + 1)).toNat - A008683 (n + 1) ^ 2

end

end A106743.P2873621446925649294

namespace A106743

/-- `A328458(A061142(n+1))-A008683(n+1)²` -/
def P2873621446925649294.Spec : Prop :=
  ∀ n, P2873621446925649294.a n = A106743 (n + 1)

end A106743

/-! ## A106743.P15162234846870647655

`A328458(A068794(n+1))-A008683(n+1)²`
-/

namespace A106743.P15162234846870647655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328458 (A068794 (n + 1)).toNat - A008683 (n + 1) ^ 2

end

end A106743.P15162234846870647655

namespace A106743

/-- `A328458(A068794(n+1))-A008683(n+1)²` -/
def P15162234846870647655.Spec : Prop :=
  ∀ n, P15162234846870647655.a n = A106743 (n + 1)

end A106743

/-!
# A106744: Given n shoelaces, each with two aglets; sequence gives number of aglet pairs that must be picked up to guarantee that the probability that no shoelace is left behind is > 1/2.

The programs for A106744, there is no canonical definition to state claims against.
-/

/-! ## A106744.P3248452850453553113

`n+1-floor(sqrt(Δ[n²]/3))`
-/

namespace A106744.P3248452850453553113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌊Real.sqrt (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3 : ℝ)⌋

end

end A106744.P3248452850453553113

/-! ## A106744.P15324394512813081064

`∑[1-char[∑[or(1, 3*n+1)]]]`
-/

namespace A106744.P15324394512813081064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106744.P15324394512813081064

/-! ## A106744.P16842454272919186516

`floor(n+2-sqrt(record[or(5, n)/6]))`
-/

namespace A106744.P16842454272919186516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) - Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A106744.P16842454272919186516

/-! ## A106744.P4230366723765551643

`round(n+2-root(n+2, exp(tanh(1))))`
-/

namespace A106744.P4230366723765551643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) - (n + 2 : ℝ) ^ (1 / Real.exp (Real.tanh (1 : ℝ))))

end

end A106744.P4230366723765551643

/-! ## A106744.P9171012708414051013

`∑[char[comp[∑[3*n+n%2+1]]]]`
-/

namespace A106744.P9171012708414051013
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + (n % 2 + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106744.P9171012708414051013

/-! ## A106744.P9929256171695795198

`∑[abs(A097343(n+3))]`
-/

namespace A106744.P9929256171695795198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097343 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106744.P9929256171695795198

/-! ## A106744.P219690935826224632

`∑[A268921(n+5)²]`
-/

namespace A106744.P219690935826224632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268921 (n + 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106744.P219690935826224632

/-! ## A106744.P1881490305544585401

`∑[dr(A030443(n))%2]`
-/

namespace A106744.P1881490305544585401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030443 n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106744.P1881490305544585401

/-! ## A106744.P7570708218787301494

`∑[char[n-A321696(n+1)]]`
-/

namespace A106744.P7570708218787301494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A321696 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106744.P7570708218787301494

/-! ## A106744.P11208234949947746291

`∑[1-char[∑[A000040(n+1)]-4]]`
-/

namespace A106744.P11208234949947746291
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 4

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106744.P11208234949947746291

/-!
# A106746: Replace each digit d of n with floor(d/2) + 5.

The programs for A106746, there is no canonical definition to state claims against.
-/

/-! ## A106746.P8020374938783803652

`A106747(n)+A059628(A351744(n))`
-/

namespace A106746.P8020374938783803652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n + A059628 (A351744 n).toNat

end

end A106746.P8020374938783803652

/-! ## A106746.P7597368362433345774

`A351744(n)+A106747(A061601(n))`
-/

namespace A106746.P7597368362433345774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n + A106747 (A061601 n).toNat

end

end A106746.P7597368362433345774

/-! ## A106746.P10627600633084123311

`A106747(A061601(n))+A103181(A048379(n))+n`
-/

namespace A106746.P10627600633084123311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A061601 n).toNat + (A103181 (A048379 n).toNat + (n : ℤ))

end

end A106746.P10627600633084123311

/-! ## A106746.P6605089015851193223

`A106747(A061601(n))+A106747(A065031(n))+n`
-/

namespace A106746.P6605089015851193223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A061601 n).toNat + (A106747 (A065031 n).toNat + (n : ℤ))

end

end A106746.P6605089015851193223

/-! ## A106746.P11798331117477665302

`A059628(n)+A106747(n)+A059628(A306436(n))`
-/

namespace A106746.P11798331117477665302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059628 n + (A106747 n + A059628 (A306436 n).toNat)

end

end A106746.P11798331117477665302

/-! ## A106746.P16556750095669129682

`A106747(A061601(n))+A306436(n)+A103181(n)`
-/

namespace A106746.P16556750095669129682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A061601 n).toNat + (A306436 n + A103181 n)

end

end A106746.P16556750095669129682

/-! ## A106746.P6856461651503499127

`A106747(A061601(n))-(A103181(n)-A256079(n))`
-/

namespace A106746.P6856461651503499127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A061601 n).toNat - (A103181 n - A256079 n)

end

end A106746.P6856461651503499127

/-! ## A106746.P13083146165425352322

`A059628(A306436(n)+A103181(n))+(n-A059628(n)/5)/2`
-/

namespace A106746.P13083146165425352322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059628 (A306436 n + A103181 n).toNat : ℚ) + ((n : ℚ) - (A059628 n : ℚ) / 5) / 2

end

end A106746.P13083146165425352322

/-!
# A106747: Replace each odd digit d of n with (d-1)/2 and each even digit d with d/2.

The programs for A106747, there is no canonical definition to state claims against.
-/

/-! ## A106747.P2994552529808394468

`(n-A103181(n))/2`
-/

namespace A106747.P2994552529808394468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A103181 n : ℚ) / 2

end

end A106747.P2994552529808394468

/-! ## A106747.P17659627277444638533

`A107130(A351744(n))`
-/

namespace A106747.P17659627277444638533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A351744 n).toNat

end

end A106747.P17659627277444638533

/-! ## A106747.P15834890619953319288

`A004520(A004526(n))/2`
-/

namespace A106747.P15834890619953319288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004520 (A004526 n).toNat : ℚ) / 2

end

end A106747.P15834890619953319288

/-! ## A106747.P10982232256160610353

`A004525(n-A103181(n))`
-/

namespace A106747.P10982232256160610353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n : ℤ) - A103181 n).toNat

end

end A106747.P10982232256160610353

/-! ## A106747.P16826384925706565078

`A004526(n-A103181(n))`
-/

namespace A106747.P16826384925706565078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A103181 n).toNat

end

end A106747.P16826384925706565078

/-! ## A106747.P14544461505839972978

`A006370(n-A103181(n))`
-/

namespace A106747.P14544461505839972978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 ((n : ℤ) - A103181 n).toNat

end

end A106747.P14544461505839972978

/-! ## A106747.P4009301282504974019

`A107128(n-A103181(n))`
-/

namespace A106747.P4009301282504974019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 ((n : ℤ) - A103181 n).toNat

end

end A106747.P4009301282504974019

/-! ## A106747.P2128338519385400986

`(n-A222211(A065031(n)))/2`
-/

namespace A106747.P2128338519385400986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A222211 (A065031 n).toNat : ℚ) / 2

end

end A106747.P2128338519385400986

/-! ## A106747.P13963021801411737525

`A235049(n-a(A235049(n)))` with `a(0)=0`
-/

namespace A106747.P13963021801411737525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A235049 ((n : ℤ) - a (A235049 n).toNat).toNat

end

end A106747.P13963021801411737525

/-! ## A106747.P17316114698343859955

`A107128(n)+A107130(n)-n`
-/

namespace A106747.P17316114698343859955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 n + (A107130 n - (n : ℤ))

end

end A106747.P17316114698343859955

/-! ## A106747.P1877948337284759882

`A003602(1-A103181(n)+n)-1`
-/

namespace A106747.P1877948337284759882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (1 - A103181 n + (n : ℤ)).toNat - 1

end

end A106747.P1877948337284759882

/-! ## A106747.P5410426647268735689

`A107130(A306436(n)+A103181(n))`
-/

namespace A106747.P5410426647268735689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 (A306436 n + A103181 n).toNat

end

end A106747.P5410426647268735689

/-! ## A106747.P17683858443121541160

`A306436(A306436(n)+A103181(n))/2`
-/

namespace A106747.P17683858443121541160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306436 (A306436 n + A103181 n).toNat : ℚ) / 2

end

end A106747.P17683858443121541160

/-! ## A106747.P8420165195759248221

`A004526(A306436(A351744(A306436(n))))`
-/

namespace A106747.P8420165195759248221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A306436 (A351744 (A306436 n).toNat).toNat).toNat

end

end A106747.P8420165195759248221

/-! ## A106747.P13774325250174131536

`A026741(A306436(A351744(A026741(2*n))))`
-/

namespace A106747.P13774325250174131536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A306436 (A351744 (A026741 (2 * n)).toNat).toNat).toNat

end

end A106747.P13774325250174131536

/-!
# A106749: Define the morphism f: 1->113, 2->13, 3->2; sequence gives trajectory of 1 under f.

The programs for A106749, there is no canonical definition to state claims against.
-/

/-! ## A106749.P8360895737380151306

`A331526((1-A286059(n+2))*a(n-1)+1)` with `a(0)=1`
-/

namespace A106749.P8360895737380151306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A331526 ((1 - A286059 (n + 2)) * a (n - 1) + 1).toNat

end

end A106749.P8360895737380151306

/-! ## A106749.P797043762535586955

`a(n-1)-Δ[Δ[A286060(n+1)]]` with `a(0)=1, a(1)=1`
-/

namespace A106749.P797043762535586955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A106749.P797043762535586955

/-! ## A106749.P15201446240080477643

`Δ[floor(acot(n)+n)-A286060(n+2)]+3`
-/

namespace A106749.P15201446240080477643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - A286060 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A106749.P15201446240080477643

/-! ## A106749.P2776117200192397210

`Δ[A004273(n)-A286060(n+2)]+2`
-/

namespace A106749.P2776117200192397210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A286060 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A106749.P2776117200192397210

/-! ## A106749.P15457864322250718531

`Δ[A028310(n)-A286060(n+2)]+3`
-/

namespace A106749.P15457864322250718531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A286060 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A106749.P15457864322250718531

/-! ## A106749.P11404613822621919773

`4-Δ[A286060(A057427(n)+1+n)]`
-/

namespace A106749.P11404613822621919773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286060 (A057427 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A106749.P11404613822621919773

/-!
# A106750: Define the "Fibonacci" morphism f: 1->12, 2->1 and let a(0) = 2; then a(n+1) = f(a(n)).

The programs for A106750, there is no canonical definition to state claims against.
-/

/-! ## A106750.P11397247028226432134

`A288582(n)+A108047(n+1)`
-/

namespace A106750.P11397247028226432134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288582 n + A108047 (n + 1)

end

end A106750.P11397247028226432134

/-! ## A106750.P16040537526139908927

`A288582(n)+A131293(n+1)`
-/

namespace A106750.P16040537526139908927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288582 n + A131293 (n + 1)

end

end A106750.P16040537526139908927

/-! ## A106750.P16790044888935623405

`2*A108047(n+1)-A061107(n)`
-/

namespace A106750.P16790044888935623405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108047 (n + 1) - A061107 n

end

end A106750.P16790044888935623405

/-! ## A106750.P4615774866559122065

`3*A108047(n+1)-A008351(n+1)`
-/

namespace A106750.P4615774866559122065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108047 (n + 1) - A008351 (n + 1)

end

end A106750.P4615774866559122065

/-! ## A106750.P1188362222066516999

`A131293(n+1)+A131293(n+1)-A061107(n)`
-/

namespace A106750.P1188362222066516999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 1) + (A131293 (n + 1) - A061107 n)

end

end A106750.P1188362222066516999

/-!
# A106751: Define the morphism f: 1->111112, 2->22223, 3->1; sequence gives trajectory of 1 under f.

The programs for A106751, there is no canonical definition to state claims against.
-/

/-! ## A106751.P974971422575427548

`A261794(A328571(n+2)²)`
-/

namespace A106751.P974971422575427548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261794 (A328571 (n + 2) ^ 2).toNat

end

end A106751.P974971422575427548

/-! ## A106751.P7440596436531600183

`A007318(floor(log(A239218(2*(n+1)))))`
-/

namespace A106751.P7440596436531600183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊Real.log (A239218 (2 * (n + 1)) : ℝ)⌋.toNat

end

end A106751.P7440596436531600183

/-! ## A106751.P5166182726845637080

`A047140(floor(log(A239218(2*(n+1)))))`
-/

namespace A106751.P5166182726845637080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047140 ⌊Real.log (A239218 (2 * (n + 1)) : ℝ)⌋.toNat

end

end A106751.P5166182726845637080

/-! ## A106751.P17957047386382960842

`A055818(floor(log(A239218(2*(n+1)))))`
-/

namespace A106751.P17957047386382960842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 ⌊Real.log (A239218 (2 * (n + 1)) : ℝ)⌋.toNat

end

end A106751.P17957047386382960842

/-! ## A106751.P10208415308733060477

`A093958(n+1)+A007318(A380891(2*(n+1)))`
-/

namespace A106751.P10208415308733060477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093958 (n + 1) + A007318 (A380891 (2 * (n + 1))).toNat

end

end A106751.P10208415308733060477

/-!
# A106752: Numbers of prime factors of k, k defined in A117078.

The programs for A106752, there is no canonical definition to state claims against.
-/

/-! ## A106752.P17678202094962499728

`∑{e}[A117078(n+1), #]`
-/

namespace A106752.P17678202094962499728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106752.P17678202094962499728

/-! ## A106752.P7958646714812319944

`A118144(n+1)-∑{e}[A117563(n+1), #]`
-/

namespace A106752.P7958646714812319944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118144 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A106752.P7958646714812319944

/-! ## A106752.P14118915071813682243

`A000720(∏{e}[A117078(n+1), A000040(#)])`
-/

namespace A106752.P14118915071813682243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A106752.P14118915071813682243

/-! ## A106752.P16385942373643290443

`A001222(or(1, A117078(n+1)))`
-/

namespace A106752.P16385942373643290443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 1 (A117078 (n + 1))).toNat

end

end A106752.P16385942373643290443

/-! ## A106752.P8421131894231735715

`A001222(∏{d}[A117078(n+1), A014963(#)])`
-/

namespace A106752.P8421131894231735715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A106752.P8421131894231735715

/-! ## A106752.P17530973403615713221

`A001222(A117078(n+1)+A000007(A117078(n+1)))`
-/

namespace A106752.P17530973403615713221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A117078 (n + 1) + A000007 (A117078 (n + 1)).toNat).toNat

end

end A106752.P17530973403615713221

/-! ## A106752.P4329596287729465378

`A000720(∏{e}[A117078(n+1)², #])`
-/

namespace A106752.P4329596287729465378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A106752.P4329596287729465378

/-!
# A106753: Discriminants, negated, of definite binary quadratic forms.

The programs for A106753, there is no canonical definition to state claims against.
-/

/-! ## A106753.P11584025443839567578

`eq[and(2, n+1), char[n²]]`
-/

namespace A106753.P11584025443839567578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106753.P11584025443839567578

/-! ## A106753.P1018099965432051969

`comp[∪[or(1, n)+n, n²]]`
-/

namespace A106753.P1018099965432051969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106753.P1018099965432051969

/-! ## A106753.P13000316388682329976

`∪[record[xor(3, n)], 4*comp[n²]]`
-/

namespace A106753.P13000316388682329976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A106753.P13000316388682329976

/-! ## A106753.P6112208343866539422

`lt[floor(sqrt(n))², n/C(3, n%4)]`
-/

namespace A106753.P6112208343866539422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.choose 3 (n % 4) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A106753.P6112208343866539422

/-! ## A106753.P11709605959550917490

`comp[∪[abs(or(1, 3*n)-n), n²]]`
-/

namespace A106753.P11709605959550917490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (3 * n) : ℤ) - (n : ℤ)|

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106753.P11709605959550917490

/-! ## A106753.P10408169533189249901

`record[xor(2, round(sqrt(n+2)+n)-1)]+1`
-/

namespace A106753.P10408169533189249901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (SequenceMachineLib.roundAway (Real.sqrt (n + 2 : ℝ) + (n : ℝ)) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A106753.P10408169533189249901

/-! ## A106753.P1734081476466886841

`lt[1, (1-and(2, n+1))*(n-floor(sqrt(n))²)]`
-/

namespace A106753.P1734081476466886841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 (n + 1) : ℤ)) * ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106753.P1734081476466886841

/-! ## A106753.P3823286656086825644

`lt[1, (n-floor(sqrt(n))²)/(1-and(2, n+1))]`
-/

namespace A106753.P3823286656086825644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ) : ℚ) / (1 - (Nat.land 2 (n + 1) : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A106753.P3823286656086825644

/-! ## A106753.P7186704076568057122

`comp[floor(sqrt(n))²%((4*n+2)/gcd(6, n+2))]`
-/

namespace A106753.P7186704076568057122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.sqrt n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((4 * n + 2 : ℚ) / (Nat.gcd 6 (n + 2) : ℚ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A106753.P7186704076568057122

/-! ## A106753.P6077828148964613081

`A003815(A157502(n+1))`
-/

namespace A106753.P6077828148964613081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A157502 (n + 1)).toNat

end

end A106753.P6077828148964613081

/-!
# A106754: Primes p with digital sum equal to 11.

The programs for A106754, the canonical program `A106754.P11658128273037177493` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106754 has offset 1).

The definition of A106754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106754.P8808721395781847028

`∩[A166311(n+1), A372629(n+1)]`
-/

namespace A106754.P8808721395781847028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P8808721395781847028

namespace A106754

/-- `∩[A166311(n+1), A372629(n+1)]` -/
def P8808721395781847028.Spec : Prop :=
  ∀ n, (P8808721395781847028.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P16296022478964400204

`∩[A119891(n+1), A166311(n+1)]`
-/

namespace A106754.P16296022478964400204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P16296022478964400204

namespace A106754

/-- `∩[A119891(n+1), A166311(n+1)]` -/
def P16296022478964400204.Spec : Prop :=
  ∀ n, (P16296022478964400204.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P8751315390979814169

`∩[A119891(n+1), A372629(n+1)]`
-/

namespace A106754.P8751315390979814169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P8751315390979814169

namespace A106754

/-- `∩[A119891(n+1), A372629(n+1)]` -/
def P8751315390979814169.Spec : Prop :=
  ∀ n, (P8751315390979814169.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P11658128273037177493

`p?[A166311(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A106754

/-- `p?[A166311(n+1)]` -/
def P11658128273037177493.Spec : Prop :=
  ∀ n, P11658128273037177493.a n = A106754 (n + 1)

theorem P11658128273037177493.correct : P11658128273037177493.Spec := by
  intro n
  simp only [A106754, Nat.add_sub_cancel]

end A106754

/-! ## A106754.P8774527801429854658

`p?[A052224(n+1)+1]`
-/

namespace A106754.P8774527801429854658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052224 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106754.P8774527801429854658

namespace A106754

/-- `p?[A052224(n+1)+1]` -/
def P8774527801429854658.Spec : Prop :=
  ∀ n, P8774527801429854658.a n = A106754 (n + 1)

end A106754

/-! ## A106754.P5158154143254341085

`p?[xor(1, A052224(-xor(n, -1)))]`
-/

namespace A106754.P5158154143254341085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A052224 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106754.P5158154143254341085

namespace A106754

/-- `p?[xor(1, A052224(-xor(n, -1)))]` -/
def P5158154143254341085.Spec : Prop :=
  ∀ n, P5158154143254341085.a n = A106754 (n + 1)

end A106754

/-! ## A106754.P15696888304571960480

`∩[A061238(n+1), A119891(n+1)]`
-/

namespace A106754.P15696888304571960480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P15696888304571960480

namespace A106754

/-- `∩[A061238(n+1), A119891(n+1)]` -/
def P15696888304571960480.Spec : Prop :=
  ∀ n, (P15696888304571960480.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P12700755814945596327

`∩[A061238(n+1), A166311(n+1)]`
-/

namespace A106754.P12700755814945596327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P12700755814945596327

namespace A106754

/-- `∩[A061238(n+1), A166311(n+1)]` -/
def P12700755814945596327.Spec : Prop :=
  ∀ n, (P12700755814945596327.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P5668232979515659933

`∩[A156756(n+1), A166311(n+1)]`
-/

namespace A106754.P5668232979515659933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P5668232979515659933

namespace A106754

/-- `∩[A156756(n+1), A166311(n+1)]` -/
def P5668232979515659933.Spec : Prop :=
  ∀ n, (P5668232979515659933.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P16035919092287130620

`∩[A070027(n+1), A166311(n+1)]`
-/

namespace A106754.P16035919092287130620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P16035919092287130620

namespace A106754

/-- `∩[A070027(n+1), A166311(n+1)]` -/
def P16035919092287130620.Spec : Prop :=
  ∀ n, (P16035919092287130620.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P17737053181987205292

`∩[A049229(n+1), A166311(n+1)]`
-/

namespace A106754.P17737053181987205292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P17737053181987205292

namespace A106754

/-- `∩[A049229(n+1), A166311(n+1)]` -/
def P17737053181987205292.Spec : Prop :=
  ∀ n, (P17737053181987205292.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P10472413725303136684

`∩[A061238(n+1), A165440(n+1)]`
-/

namespace A106754.P10472413725303136684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P10472413725303136684

namespace A106754

/-- `∩[A061238(n+1), A165440(n+1)]` -/
def P10472413725303136684.Spec : Prop :=
  ∀ n, (P10472413725303136684.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P2447222709892471709

`∩[A165440(n+1), A166311(n+1)]`
-/

namespace A106754.P2447222709892471709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P2447222709892471709

namespace A106754

/-- `∩[A165440(n+1), A166311(n+1)]` -/
def P2447222709892471709.Spec : Prop :=
  ∀ n, (P2447222709892471709.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P7566448249312413853

`∩[A166311(n+1), A397050(n+1)]`
-/

namespace A106754.P7566448249312413853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P7566448249312413853

namespace A106754

/-- `∩[A166311(n+1), A397050(n+1)]` -/
def P7566448249312413853.Spec : Prop :=
  ∀ n, (P7566448249312413853.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P5747816000065064635

`∩[A113017(n+1), A166311(n+1)]`
-/

namespace A106754.P5747816000065064635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P5747816000065064635

namespace A106754

/-- `∩[A113017(n+1), A166311(n+1)]` -/
def P5747816000065064635.Spec : Prop :=
  ∀ n, (P5747816000065064635.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P13161344425187032594

`∩[A129807(n+1), A166311(n+1)]`
-/

namespace A106754.P13161344425187032594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P13161344425187032594

namespace A106754

/-- `∩[A129807(n+1), A166311(n+1)]` -/
def P13161344425187032594.Spec : Prop :=
  ∀ n, (P13161344425187032594.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P3384932528919817662

`∩[A046704(n+1), A166311(n+1)]`
-/

namespace A106754.P3384932528919817662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P3384932528919817662

namespace A106754

/-- `∩[A046704(n+1), A166311(n+1)]` -/
def P3384932528919817662.Spec : Prop :=
  ∀ n, (P3384932528919817662.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P18309478077045549052

`∩[A003627(n+1), A166311(n+1)]`
-/

namespace A106754.P18309478077045549052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P18309478077045549052

namespace A106754

/-- `∩[A003627(n+1), A166311(n+1)]` -/
def P18309478077045549052.Spec : Prop :=
  ∀ n, (P18309478077045549052.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P5491820152889843575

`∩[A007528(n+1), A166311(n+1)]`
-/

namespace A106754.P5491820152889843575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P5491820152889843575

namespace A106754

/-- `∩[A007528(n+1), A166311(n+1)]` -/
def P5491820152889843575.Spec : Prop :=
  ∀ n, (P5491820152889843575.a n : ℤ) = A106754 (n + 1)

end A106754

/-! ## A106754.P4468424966800532955

`∩[A079132(n+1), A119891(n+1)]`
-/

namespace A106754.P4468424966800532955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106754.P4468424966800532955

namespace A106754

/-- `∩[A079132(n+1), A119891(n+1)]` -/
def P4468424966800532955.Spec : Prop :=
  ∀ n, (P4468424966800532955.a n : ℤ) = A106754 (n + 1)

end A106754

/-!
# A106755: Primes p with digital sum equal to 13.

The programs for A106755, the canonical program `A106755.P15161756311865311751` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106755 has offset 1).

The definition of A106755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106755.P15161756311865311751

`p?[A143164(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106755

/-- `p?[A143164(n+1)]` -/
def P15161756311865311751.Spec : Prop :=
  ∀ n, P15161756311865311751.a n = A106755 (n + 1)

theorem P15161756311865311751.correct : P15161756311865311751.Spec := by
  intro n
  simp only [A106755, Nat.add_sub_cancel]

end A106755

/-! ## A106755.P14081393478916653015

`p?[A235151(n+1)+1]`
-/

namespace A106755.P14081393478916653015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235151 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106755.P14081393478916653015

namespace A106755

/-- `p?[A235151(n+1)+1]` -/
def P14081393478916653015.Spec : Prop :=
  ∀ n, P14081393478916653015.a n = A106755 (n + 1)

end A106755

/-! ## A106755.P17585731982289819335

`∩[A061239(n+1), A143164(n+1)]`
-/

namespace A106755.P17585731982289819335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P17585731982289819335

namespace A106755

/-- `∩[A061239(n+1), A143164(n+1)]` -/
def P17585731982289819335.Spec : Prop :=
  ∀ n, (P17585731982289819335.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P8333887471082736234

`∩[A143164(n+1), A156756(n+1)]`
-/

namespace A106755.P8333887471082736234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P8333887471082736234

namespace A106755

/-- `∩[A143164(n+1), A156756(n+1)]` -/
def P8333887471082736234.Spec : Prop :=
  ∀ n, (P8333887471082736234.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P16210076749456818787

`∩[A143164(n+1), A207293(n+1)]`
-/

namespace A106755.P16210076749456818787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P16210076749456818787

namespace A106755

/-- `∩[A143164(n+1), A207293(n+1)]` -/
def P16210076749456818787.Spec : Prop :=
  ∀ n, (P16210076749456818787.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P16219454688849324938

`∩[A143164(n+1), A397050(n+1)]`
-/

namespace A106755.P16219454688849324938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P16219454688849324938

namespace A106755

/-- `∩[A143164(n+1), A397050(n+1)]` -/
def P16219454688849324938.Spec : Prop :=
  ∀ n, (P16219454688849324938.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P3958288599089615831

`∩[A079130(n+1), A143164(n+1)]`
-/

namespace A106755.P3958288599089615831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P3958288599089615831

namespace A106755

/-- `∩[A079130(n+1), A143164(n+1)]` -/
def P3958288599089615831.Spec : Prop :=
  ∀ n, (P3958288599089615831.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P17786868708100818630

`∩[A129806(n+1), A143164(n+1)]`
-/

namespace A106755.P17786868708100818630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P17786868708100818630

namespace A106755

/-- `∩[A129806(n+1), A143164(n+1)]` -/
def P17786868708100818630.Spec : Prop :=
  ∀ n, (P17786868708100818630.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P15388478108309122541

`∩[A046704(n+1), A143164(n+1)]`
-/

namespace A106755.P15388478108309122541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P15388478108309122541

namespace A106755

/-- `∩[A046704(n+1), A143164(n+1)]` -/
def P15388478108309122541.Spec : Prop :=
  ∀ n, (P15388478108309122541.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P18087854569460263772

`∩[A002476(n+1), A143164(n+1)]`
-/

namespace A106755.P18087854569460263772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P18087854569460263772

namespace A106755

/-- `∩[A002476(n+1), A143164(n+1)]` -/
def P18087854569460263772.Spec : Prop :=
  ∀ n, (P18087854569460263772.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P16200534033723442513

`∩[A007645(n+1), A143164(n+1)]`
-/

namespace A106755.P16200534033723442513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P16200534033723442513

namespace A106755

/-- `∩[A007645(n+1), A143164(n+1)]` -/
def P16200534033723442513.Spec : Prop :=
  ∀ n, (P16200534033723442513.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P12342608538066850246

`∩[A045331(n+1), A143164(n+1)]`
-/

namespace A106755.P12342608538066850246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P12342608538066850246

namespace A106755

/-- `∩[A045331(n+1), A143164(n+1)]` -/
def P12342608538066850246.Spec : Prop :=
  ∀ n, (P12342608538066850246.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P11712782490613126544

`∩[A045375(n+1), A143164(n+1)]`
-/

namespace A106755.P11712782490613126544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P11712782490613126544

namespace A106755

/-- `∩[A045375(n+1), A143164(n+1)]` -/
def P11712782490613126544.Spec : Prop :=
  ∀ n, (P11712782490613126544.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P15494340718425558745

`∩[A079132(n+1), A143164(n+1)]`
-/

namespace A106755.P15494340718425558745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P15494340718425558745

namespace A106755

/-- `∩[A079132(n+1), A143164(n+1)]` -/
def P15494340718425558745.Spec : Prop :=
  ∀ n, (P15494340718425558745.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P17888129994779406051

`∩[A123365(n+1), A143164(n+1)]`
-/

namespace A106755.P17888129994779406051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P17888129994779406051

namespace A106755

/-- `∩[A123365(n+1), A143164(n+1)]` -/
def P17888129994779406051.Spec : Prop :=
  ∀ n, (P17888129994779406051.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P12098998937779048734

`∩[A143164(n+1), A279815(n+1)]`
-/

namespace A106755.P12098998937779048734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P12098998937779048734

namespace A106755

/-- `∩[A143164(n+1), A279815(n+1)]` -/
def P12098998937779048734.Spec : Prop :=
  ∀ n, (P12098998937779048734.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P14530337558329555088

`∩[A119450(n+1), A143164(n+1)]`
-/

namespace A106755.P14530337558329555088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P14530337558329555088

namespace A106755

/-- `∩[A119450(n+1), A143164(n+1)]` -/
def P14530337558329555088.Spec : Prop :=
  ∀ n, (P14530337558329555088.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P10410252602521586589

`∩[A143164(n+1), A164318(n+1)]`
-/

namespace A106755.P10410252602521586589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P10410252602521586589

namespace A106755

/-- `∩[A143164(n+1), A164318(n+1)]` -/
def P10410252602521586589.Spec : Prop :=
  ∀ n, (P10410252602521586589.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P7122830798806789150

`∩[A143164(n+1), A380468(n+1)]`
-/

namespace A106755.P7122830798806789150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P7122830798806789150

namespace A106755

/-- `∩[A143164(n+1), A380468(n+1)]` -/
def P7122830798806789150.Spec : Prop :=
  ∀ n, (P7122830798806789150.a n : ℤ) = A106755 (n + 1)

end A106755

/-! ## A106755.P13872529753914154863

`∩[A143164(n+1), A166849(n+1)]`
-/

namespace A106755.P13872529753914154863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106755.P13872529753914154863

namespace A106755

/-- `∩[A143164(n+1), A166849(n+1)]` -/
def P13872529753914154863.Spec : Prop :=
  ∀ n, (P13872529753914154863.a n : ℤ) = A106755 (n + 1)

end A106755

/-!
# A106756: Primes with digit sum = 14.

The programs for A106756, the canonical program `A106756.P12145238415498527313` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106756 has offset 1).

The definition of A106756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106756.P12145238415498527313

`p?[A143164(n+1)+1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106756

/-- `p?[A143164(n+1)+1]` -/
def P12145238415498527313.Spec : Prop :=
  ∀ n, P12145238415498527313.a n = A106756 (n + 1)

theorem P12145238415498527313.correct : P12145238415498527313.Spec := by
  intro n
  simp only [A106756, Nat.add_sub_cancel]

end A106756

/-! ## A106756.P8640338794226244726

`∩[A061240(n+1), A062336(n+1)]`
-/

namespace A106756.P8640338794226244726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P8640338794226244726

namespace A106756

/-- `∩[A061240(n+1), A062336(n+1)]` -/
def P8640338794226244726.Spec : Prop :=
  ∀ n, (P8640338794226244726.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P4153419364952210839

`p?[A235225(n+1)]`
-/

namespace A106756.P4153419364952210839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106756.P4153419364952210839

namespace A106756

/-- `p?[A235225(n+1)]` -/
def P4153419364952210839.Spec : Prop :=
  ∀ n, P4153419364952210839.a n = A106756 (n + 1)

end A106756

/-! ## A106756.P17668252434347387330

`∩[A061240(n+1), A235225(n+1)]`
-/

namespace A106756.P17668252434347387330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P17668252434347387330

namespace A106756

/-- `∩[A061240(n+1), A235225(n+1)]` -/
def P17668252434347387330.Spec : Prop :=
  ∀ n, (P17668252434347387330.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P13122837409835462736

`∩[A062336(n+1), A235225(n+1)]`
-/

namespace A106756.P13122837409835462736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P13122837409835462736

namespace A106756

/-- `∩[A062336(n+1), A235225(n+1)]` -/
def P13122837409835462736.Spec : Prop :=
  ∀ n, (P13122837409835462736.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P236882228467713586

`∩[A166567(n+1), A235225(n+1)]`
-/

namespace A106756.P236882228467713586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P236882228467713586

namespace A106756

/-- `∩[A166567(n+1), A235225(n+1)]` -/
def P236882228467713586.Spec : Prop :=
  ∀ n, (P236882228467713586.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P16030376192438559184

`∩[A176985(n+1), A235225(n+1)]`
-/

namespace A106756.P16030376192438559184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P16030376192438559184

namespace A106756

/-- `∩[A176985(n+1), A235225(n+1)]` -/
def P16030376192438559184.Spec : Prop :=
  ∀ n, (P16030376192438559184.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P7252193953645170217

`∩[A155913(n+1), A235225(n+1)]`
-/

namespace A106756.P7252193953645170217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P7252193953645170217

namespace A106756

/-- `∩[A155913(n+1), A235225(n+1)]` -/
def P7252193953645170217.Spec : Prop :=
  ∀ n, (P7252193953645170217.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P2309338057851675570

`∩[A062336(n+1), A129806(n+1)]`
-/

namespace A106756.P2309338057851675570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P2309338057851675570

namespace A106756

/-- `∩[A062336(n+1), A129806(n+1)]` -/
def P2309338057851675570.Spec : Prop :=
  ∀ n, (P2309338057851675570.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P8203241438080202651

`∩[A129806(n+1), A235225(n+1)]`
-/

namespace A106756.P8203241438080202651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P8203241438080202651

namespace A106756

/-- `∩[A129806(n+1), A235225(n+1)]` -/
def P8203241438080202651.Spec : Prop :=
  ∀ n, (P8203241438080202651.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P12008168949701307359

`∩[A129806(n+1), A143164(n+1)+1]`
-/

namespace A106756.P12008168949701307359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P12008168949701307359

namespace A106756

/-- `∩[A129806(n+1), A143164(n+1)+1]` -/
def P12008168949701307359.Spec : Prop :=
  ∀ n, (P12008168949701307359.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P14485006143234964998

`∩[A235225(n+1), A243588(n+1)]`
-/

namespace A106756.P14485006143234964998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P14485006143234964998

namespace A106756

/-- `∩[A235225(n+1), A243588(n+1)]` -/
def P14485006143234964998.Spec : Prop :=
  ∀ n, (P14485006143234964998.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P1415684701241729836

`∩[A235225(n+1), A243586(n+1)]`
-/

namespace A106756.P1415684701241729836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P1415684701241729836

namespace A106756

/-- `∩[A235225(n+1), A243586(n+1)]` -/
def P1415684701241729836.Spec : Prop :=
  ∀ n, (P1415684701241729836.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P12135199971407778006

`∩[A235225(n+1), A246374(n+1)]`
-/

namespace A106756.P12135199971407778006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P12135199971407778006

namespace A106756

/-- `∩[A235225(n+1), A246374(n+1)]` -/
def P12135199971407778006.Spec : Prop :=
  ∀ n, (P12135199971407778006.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P15668645506276883010

`∩[A235225(n+1), A306510(n+1)]`
-/

namespace A106756.P15668645506276883010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P15668645506276883010

namespace A106756

/-- `∩[A235225(n+1), A306510(n+1)]` -/
def P15668645506276883010.Spec : Prop :=
  ∀ n, (P15668645506276883010.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P18413226575648142899

`∩[A119449(n+1), A235225(n+1)]`
-/

namespace A106756.P18413226575648142899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P18413226575648142899

namespace A106756

/-- `∩[A119449(n+1), A235225(n+1)]` -/
def P18413226575648142899.Spec : Prop :=
  ∀ n, (P18413226575648142899.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P3384208247414371129

`∩[A078403(n+1), A235225(n+1)]`
-/

namespace A106756.P3384208247414371129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P3384208247414371129

namespace A106756

/-- `∩[A078403(n+1), A235225(n+1)]` -/
def P3384208247414371129.Spec : Prop :=
  ∀ n, (P3384208247414371129.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P18353920813889775265

`∩[A079131(n+1), A235225(n+1)]`
-/

namespace A106756.P18353920813889775265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P18353920813889775265

namespace A106756

/-- `∩[A079131(n+1), A235225(n+1)]` -/
def P18353920813889775265.Spec : Prop :=
  ∀ n, (P18353920813889775265.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P3609589936195496006

`∩[A062336(n+1), A301623(n+1)]`
-/

namespace A106756.P3609589936195496006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P3609589936195496006

namespace A106756

/-- `∩[A062336(n+1), A301623(n+1)]` -/
def P3609589936195496006.Spec : Prop :=
  ∀ n, (P3609589936195496006.a n : ℤ) = A106756 (n + 1)

end A106756

/-! ## A106756.P5613761140417317964

`∩[A003627(n+1), A235225(n+1)]`
-/

namespace A106756.P5613761140417317964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106756.P5613761140417317964

namespace A106756

/-- `∩[A003627(n+1), A235225(n+1)]` -/
def P5613761140417317964.Spec : Prop :=
  ∀ n, (P5613761140417317964.a n : ℤ) = A106756 (n + 1)

end A106756

/-!
# A106757: Primes with digit sum = 16.

The programs for A106757, the canonical program `A106757.P13942445452489068332` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106757 has offset 1).

The definition of A106757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106757.P13942445452489068332

`∩[A062342(n+1), A107288(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106757

/-- `∩[A062342(n+1), A107288(n+1)]` -/
def P13942445452489068332.Spec : Prop :=
  ∀ n, (P13942445452489068332.a n : ℤ) = A106757 (n + 1)

theorem P13942445452489068332.correct : P13942445452489068332.Spec := by
  intro n
  simp only [A106757, Nat.add_sub_cancel]

end A106757

/-! ## A106757.P5911663999824427210

`∩[A061241(n+1), A062342(n+1)]`
-/

namespace A106757.P5911663999824427210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P5911663999824427210

namespace A106757

/-- `∩[A061241(n+1), A062342(n+1)]` -/
def P5911663999824427210.Spec : Prop :=
  ∀ n, (P5911663999824427210.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P7544060726318685994

`∩[A061241(n+1), A068807(n+1)]`
-/

namespace A106757.P7544060726318685994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P7544060726318685994

namespace A106757

/-- `∩[A061241(n+1), A068807(n+1)]` -/
def P7544060726318685994.Spec : Prop :=
  ∀ n, (P7544060726318685994.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P11055821009127260858

`∩[A061241(n+1), A166561(n+1)]`
-/

namespace A106757.P11055821009127260858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P11055821009127260858

namespace A106757

/-- `∩[A061241(n+1), A166561(n+1)]` -/
def P11055821009127260858.Spec : Prop :=
  ∀ n, (P11055821009127260858.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P249680059854493578

`∩[A061241(n+1), A062338(n+1)]`
-/

namespace A106757.P249680059854493578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P249680059854493578

namespace A106757

/-- `∩[A061241(n+1), A062338(n+1)]` -/
def P249680059854493578.Spec : Prop :=
  ∀ n, (P249680059854493578.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P18222661228154802787

`p?[A235226(n+1)+1]`
-/

namespace A106757.P18222661228154802787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235226 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106757.P18222661228154802787

namespace A106757

/-- `p?[A235226(n+1)+1]` -/
def P18222661228154802787.Spec : Prop :=
  ∀ n, P18222661228154802787.a n = A106757 (n + 1)

end A106757

/-! ## A106757.P2909548312176431842

`∩[A061241(n+1), A165440(n+1)]`
-/

namespace A106757.P2909548312176431842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P2909548312176431842

namespace A106757

/-- `∩[A061241(n+1), A165440(n+1)]` -/
def P2909548312176431842.Spec : Prop :=
  ∀ n, (P2909548312176431842.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P7187306888918161705

`∩[A062342(n+1), A165440(n+1)]`
-/

namespace A106757.P7187306888918161705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P7187306888918161705

namespace A106757

/-- `∩[A062342(n+1), A165440(n+1)]` -/
def P7187306888918161705.Spec : Prop :=
  ∀ n, (P7187306888918161705.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P3038477561785076731

`∩[A068807(n+1), A165440(n+1)]`
-/

namespace A106757.P3038477561785076731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P3038477561785076731

namespace A106757

/-- `∩[A068807(n+1), A165440(n+1)]` -/
def P3038477561785076731.Spec : Prop :=
  ∀ n, (P3038477561785076731.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P14392712680730029003

`∩[A107288(n+1), A165440(n+1)]`
-/

namespace A106757.P14392712680730029003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P14392712680730029003

namespace A106757

/-- `∩[A107288(n+1), A165440(n+1)]` -/
def P14392712680730029003.Spec : Prop :=
  ∀ n, (P14392712680730029003.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P16426578498643827093

`∩[A062342(n+1), A129807(n+1)]`
-/

namespace A106757.P16426578498643827093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P16426578498643827093

namespace A106757

/-- `∩[A062342(n+1), A129807(n+1)]` -/
def P16426578498643827093.Spec : Prop :=
  ∀ n, (P16426578498643827093.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P2553664140395596417

`p?[A235227(n+1)]`
-/

namespace A106757.P2553664140395596417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106757.P2553664140395596417

namespace A106757

/-- `p?[A235227(n+1)]` -/
def P2553664140395596417.Spec : Prop :=
  ∀ n, P2553664140395596417.a n = A106757 (n + 1)

end A106757

/-! ## A106757.P6411063526112555929

`∩[A049232(n+1), A235227(n+1)]`
-/

namespace A106757.P6411063526112555929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P6411063526112555929

namespace A106757

/-- `∩[A049232(n+1), A235227(n+1)]` -/
def P6411063526112555929.Spec : Prop :=
  ∀ n, (P6411063526112555929.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P9283894427423012765

`∩[A061241(n+1), A235227(n+1)]`
-/

namespace A106757.P9283894427423012765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P9283894427423012765

namespace A106757

/-- `∩[A061241(n+1), A235227(n+1)]` -/
def P9283894427423012765.Spec : Prop :=
  ∀ n, (P9283894427423012765.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P2306710995860974685

`∩[A062338(n+1), A235227(n+1)]`
-/

namespace A106757.P2306710995860974685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P2306710995860974685

namespace A106757

/-- `∩[A062338(n+1), A235227(n+1)]` -/
def P2306710995860974685.Spec : Prop :=
  ∀ n, (P2306710995860974685.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P1667694883910150138

`∩[A062342(n+1), A235227(n+1)]`
-/

namespace A106757.P1667694883910150138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P1667694883910150138

namespace A106757

/-- `∩[A062342(n+1), A235227(n+1)]` -/
def P1667694883910150138.Spec : Prop :=
  ∀ n, (P1667694883910150138.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P17839798753457763717

`∩[A068807(n+1), A235227(n+1)]`
-/

namespace A106757.P17839798753457763717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P17839798753457763717

namespace A106757

/-- `∩[A068807(n+1), A235227(n+1)]` -/
def P17839798753457763717.Spec : Prop :=
  ∀ n, (P17839798753457763717.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P7229641839777723116

`∩[A107288(n+1), A235227(n+1)]`
-/

namespace A106757.P7229641839777723116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P7229641839777723116

namespace A106757

/-- `∩[A107288(n+1), A235227(n+1)]` -/
def P7229641839777723116.Spec : Prop :=
  ∀ n, (P7229641839777723116.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P15896853733583636848

`∩[A129807(n+1), A235227(n+1)]`
-/

namespace A106757.P15896853733583636848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P15896853733583636848

namespace A106757

/-- `∩[A129807(n+1), A235227(n+1)]` -/
def P15896853733583636848.Spec : Prop :=
  ∀ n, (P15896853733583636848.a n : ℤ) = A106757 (n + 1)

end A106757

/-! ## A106757.P2611273732029352718

`∩[A165440(n+1), A235227(n+1)]`
-/

namespace A106757.P2611273732029352718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P2611273732029352718

namespace A106757

/-- `∩[A165440(n+1), A235227(n+1)]` -/
def P2611273732029352718.Spec : Prop :=
  ∀ n, (P2611273732029352718.a n : ℤ) = A106757 (n + 1)

end A106757

/-!
# A106758: Primes with digit sum = 17.

The programs for A106758, the canonical program `A106758.P14051982100984720332` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106758 has offset 1).

The definition of A106758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106758.P16477779964439884522

`∩[A061242(n+1), A207293(n+1)]`
-/

namespace A106758.P16477779964439884522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P16477779964439884522

namespace A106758

/-- `∩[A061242(n+1), A207293(n+1)]` -/
def P16477779964439884522.Spec : Prop :=
  ∀ n, (P16477779964439884522.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P15545726993613290645

`∩[A061242(n+1), A397050(n+1)]`
-/

namespace A106758.P15545726993613290645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P15545726993613290645

namespace A106758

/-- `∩[A061242(n+1), A397050(n+1)]` -/
def P15545726993613290645.Spec : Prop :=
  ∀ n, (P15545726993613290645.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P14051982100984720332

`p?[A235227(n+1)+1]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106758

/-- `p?[A235227(n+1)+1]` -/
def P14051982100984720332.Spec : Prop :=
  ∀ n, P14051982100984720332.a n = A106758 (n + 1)

theorem P14051982100984720332.correct : P14051982100984720332.Spec := by
  intro n
  simp only [A106758, Nat.add_sub_cancel]

end A106758

/-! ## A106758.P15729004360238252170

`p?[xor(1, A235227(-xor(n, -1)))]`
-/

namespace A106758.P15729004360238252170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A235227 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106758.P15729004360238252170

namespace A106758

/-- `p?[xor(1, A235227(-xor(n, -1)))]` -/
def P15729004360238252170.Spec : Prop :=
  ∀ n, P15729004360238252170.a n = A106758 (n + 1)

end A106758

/-! ## A106758.P907467624903984076

`∩[A046704(n+1), A061242(n+1)]`
-/

namespace A106758.P907467624903984076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P907467624903984076

namespace A106758

/-- `∩[A046704(n+1), A061242(n+1)]` -/
def P907467624903984076.Spec : Prop :=
  ∀ n, (P907467624903984076.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P17699395410619304788

`p?[A166370(n+1)]`
-/

namespace A106758.P17699395410619304788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106758.P17699395410619304788

namespace A106758

/-- `p?[A166370(n+1)]` -/
def P17699395410619304788.Spec : Prop :=
  ∀ n, P17699395410619304788.a n = A106758 (n + 1)

end A106758

/-! ## A106758.P15040929790288954133

`∩[A046704(n+1), A166370(n+1)]`
-/

namespace A106758.P15040929790288954133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P15040929790288954133

namespace A106758

/-- `∩[A046704(n+1), A166370(n+1)]` -/
def P15040929790288954133.Spec : Prop :=
  ∀ n, (P15040929790288954133.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P16722782565735704904

`∩[A061242(n+1), A166370(n+1)]`
-/

namespace A106758.P16722782565735704904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P16722782565735704904

namespace A106758

/-- `∩[A061242(n+1), A166370(n+1)]` -/
def P16722782565735704904.Spec : Prop :=
  ∀ n, (P16722782565735704904.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P10139625069776435913

`∩[A092787(n+1), A166370(n+1)]`
-/

namespace A106758.P10139625069776435913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P10139625069776435913

namespace A106758

/-- `∩[A092787(n+1), A166370(n+1)]` -/
def P10139625069776435913.Spec : Prop :=
  ∀ n, (P10139625069776435913.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P15131049041916352660

`∩[A129805(n+1), A166370(n+1)]`
-/

namespace A106758.P15131049041916352660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P15131049041916352660

namespace A106758

/-- `∩[A129805(n+1), A166370(n+1)]` -/
def P15131049041916352660.Spec : Prop :=
  ∀ n, (P15131049041916352660.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P12773399335781000439

`∩[A156756(n+1), A166370(n+1)]`
-/

namespace A106758.P12773399335781000439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P12773399335781000439

namespace A106758

/-- `∩[A156756(n+1), A166370(n+1)]` -/
def P12773399335781000439.Spec : Prop :=
  ∀ n, (P12773399335781000439.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P6042889322892203741

`∩[A166370(n+1), A207293(n+1)]`
-/

namespace A106758.P6042889322892203741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P6042889322892203741

namespace A106758

/-- `∩[A166370(n+1), A207293(n+1)]` -/
def P6042889322892203741.Spec : Prop :=
  ∀ n, (P6042889322892203741.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P13936044267835817482

`∩[A166370(n+1), A397050(n+1)]`
-/

namespace A106758.P13936044267835817482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P13936044267835817482

namespace A106758

/-- `∩[A166370(n+1), A397050(n+1)]` -/
def P13936044267835817482.Spec : Prop :=
  ∀ n, (P13936044267835817482.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P9759096212906002813

`∩[A079132(n+1), A166370(n+1)]`
-/

namespace A106758.P9759096212906002813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P9759096212906002813

namespace A106758

/-- `∩[A079132(n+1), A166370(n+1)]` -/
def P9759096212906002813.Spec : Prop :=
  ∀ n, (P9759096212906002813.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P4839376281072211408

`∩[A046704(n+1), A295869(n+1)]`
-/

namespace A106758.P4839376281072211408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P4839376281072211408

namespace A106758

/-- `∩[A046704(n+1), A295869(n+1)]` -/
def P4839376281072211408.Spec : Prop :=
  ∀ n, (P4839376281072211408.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P10140007998687457924

`∩[A207293(n+1), A295869(n+1)]`
-/

namespace A106758.P10140007998687457924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P10140007998687457924

namespace A106758

/-- `∩[A207293(n+1), A295869(n+1)]` -/
def P10140007998687457924.Spec : Prop :=
  ∀ n, (P10140007998687457924.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P10333333650381551506

`∩[A003627(n+1), A166370(n+1)]`
-/

namespace A106758.P10333333650381551506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P10333333650381551506

namespace A106758

/-- `∩[A003627(n+1), A166370(n+1)]` -/
def P10333333650381551506.Spec : Prop :=
  ∀ n, (P10333333650381551506.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P4037493941597311318

`∩[A007528(n+1), A166370(n+1)]`
-/

namespace A106758.P4037493941597311318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P4037493941597311318

namespace A106758

/-- `∩[A007528(n+1), A166370(n+1)]` -/
def P4037493941597311318.Spec : Prop :=
  ∀ n, (P4037493941597311318.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P2499973074937046250

`∩[A003627(n+1), A207293(n+1)]`
-/

namespace A106758.P2499973074937046250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P2499973074937046250

namespace A106758

/-- `∩[A003627(n+1), A207293(n+1)]` -/
def P2499973074937046250.Spec : Prop :=
  ∀ n, (P2499973074937046250.a n : ℤ) = A106758 (n + 1)

end A106758

/-! ## A106758.P8157857885090355828

`∩[A045309(n+1), A166370(n+1)]`
-/

namespace A106758.P8157857885090355828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106758.P8157857885090355828

namespace A106758

/-- `∩[A045309(n+1), A166370(n+1)]` -/
def P8157857885090355828.Spec : Prop :=
  ∀ n, (P8157857885090355828.a n : ℤ) = A106758 (n + 1)

end A106758

/-!
# A106759: Primes with digit sum = 19.

The programs for A106759, there is no canonical definition to state claims against.
-/

/-! ## A106759.P13962874188334229186

`p?[A166459(n+1)]`
-/

namespace A106759.P13962874188334229186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106759.P13962874188334229186

/-! ## A106759.P9918631276354533105

`∩[A002476(n+1), A166459(n+1)]`
-/

namespace A106759.P9918631276354533105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P9918631276354533105

/-! ## A106759.P6587416181973389348

`∩[A007645(n+1), A166459(n+1)]`
-/

namespace A106759.P6587416181973389348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P6587416181973389348

/-! ## A106759.P7243482625145365048

`∩[A045331(n+1), A166459(n+1)]`
-/

namespace A106759.P7243482625145365048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P7243482625145365048

/-! ## A106759.P837317622976069189

`∩[A045375(n+1), A166459(n+1)]`
-/

namespace A106759.P837317622976069189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P837317622976069189

/-! ## A106759.P4366479130467440917

`∩[A046704(n+1), A166459(n+1)]`
-/

namespace A106759.P4366479130467440917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P4366479130467440917

/-! ## A106759.P7801977592853862570

`∩[A061237(n+1), A166459(n+1)]`
-/

namespace A106759.P7801977592853862570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P7801977592853862570

/-! ## A106759.P10243600831415638103

`∩[A079130(n+1), A166459(n+1)]`
-/

namespace A106759.P10243600831415638103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P10243600831415638103

/-! ## A106759.P2254730712944110008

`∩[A079131(n+1), A166459(n+1)]`
-/

namespace A106759.P2254730712944110008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P2254730712944110008

/-! ## A106759.P3675936071787560558

`∩[A119450(n+1), A166459(n+1)]`
-/

namespace A106759.P3675936071787560558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P3675936071787560558

/-! ## A106759.P4925800321529132951

`∩[A123365(n+1), A166459(n+1)]`
-/

namespace A106759.P4925800321529132951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P4925800321529132951

/-! ## A106759.P16342084880603386636

`∩[A129805(n+1), A166459(n+1)]`
-/

namespace A106759.P16342084880603386636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P16342084880603386636

/-! ## A106759.P10583897414262425105

`∩[A156756(n+1), A166459(n+1)]`
-/

namespace A106759.P10583897414262425105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P10583897414262425105

/-! ## A106759.P615056322035818338

`∩[A166459(n+1), A207293(n+1)]`
-/

namespace A106759.P615056322035818338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P615056322035818338

/-! ## A106759.P15792571022067887714

`∩[A166459(n+1), A279815(n+1)]`
-/

namespace A106759.P15792571022067887714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P15792571022067887714

/-! ## A106759.P1309991576240520135

`∩[A166459(n+1), A373789(n+1)]`
-/

namespace A106759.P1309991576240520135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P1309991576240520135

/-! ## A106759.P17076015901012993720

`∩[A166459(n+1), A397050(n+1)]`
-/

namespace A106759.P17076015901012993720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P17076015901012993720

/-! ## A106759.P17630169226111557456

`∩[A049092(n+1), A166459(n+1)]`
-/

namespace A106759.P17630169226111557456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P17630169226111557456

/-! ## A106759.P5403830466753246592

`∩[A164318(n+1), A166459(n+1)]`
-/

namespace A106759.P5403830466753246592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P5403830466753246592

/-! ## A106759.P6248748101428341662

`∩[A166459(n+1), A166849(n+1)]`
-/

namespace A106759.P6248748101428341662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106759.P6248748101428341662

/-!
# A106760: Primes with digit sum = 20.

The programs for A106760, the canonical program `A106760.P3707916924756019867` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106760 has offset 1).

The definition of A106760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106760.P3707916924756019867

`∩[A061238(n+1), A062340(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106760

/-- `∩[A061238(n+1), A062340(n+1)]` -/
def P3707916924756019867.Spec : Prop :=
  ∀ n, (P3707916924756019867.a n : ℤ) = A106760 (n + 1)

theorem P3707916924756019867.correct : P3707916924756019867.Spec := by
  intro n
  simp only [A106760, Nat.add_sub_cancel]

end A106760

/-! ## A106760.P11626179850593922654

`∩[A062340(n+1), A166567(n+1)]`
-/

namespace A106760.P11626179850593922654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P11626179850593922654

namespace A106760

/-- `∩[A062340(n+1), A166567(n+1)]` -/
def P11626179850593922654.Spec : Prop :=
  ∀ n, (P11626179850593922654.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P2219198306123402309

`∩[A061238(n+1), A062338(n+1)]`
-/

namespace A106760.P2219198306123402309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P2219198306123402309

namespace A106760

/-- `∩[A061238(n+1), A062338(n+1)]` -/
def P2219198306123402309.Spec : Prop :=
  ∀ n, (P2219198306123402309.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P2074167148482912653

`∩[A062338(n+1), A301621(n+1)]`
-/

namespace A106760.P2074167148482912653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P2074167148482912653

namespace A106760

/-- `∩[A062338(n+1), A301621(n+1)]` -/
def P2074167148482912653.Spec : Prop :=
  ∀ n, (P2074167148482912653.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P9316137579220696497

`∩[A062340(n+1), A301621(n+1)]`
-/

namespace A106760.P9316137579220696497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P9316137579220696497

namespace A106760

/-- `∩[A062340(n+1), A301621(n+1)]` -/
def P9316137579220696497.Spec : Prop :=
  ∀ n, (P9316137579220696497.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P10456462209073973402

`p?[A166459(n+1)+1]`
-/

namespace A106760.P10456462209073973402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166459 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106760.P10456462209073973402

namespace A106760

/-- `p?[A166459(n+1)+1]` -/
def P10456462209073973402.Spec : Prop :=
  ∀ n, P10456462209073973402.a n = A106760 (n + 1)

end A106760

/-! ## A106760.P13937327559644509583

`p?[xor(1, A166459(A028310(n)))]`
-/

namespace A106760.P13937327559644509583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A166459 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106760.P13937327559644509583

namespace A106760

/-- `p?[xor(1, A166459(A028310(n)))]` -/
def P13937327559644509583.Spec : Prop :=
  ∀ n, P13937327559644509583.a n = A106760 (n + 1)

end A106760

/-! ## A106760.P1596248951687170260

`p?[A235229(n+1)]`
-/

namespace A106760.P1596248951687170260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106760.P1596248951687170260

namespace A106760

/-- `p?[A235229(n+1)]` -/
def P1596248951687170260.Spec : Prop :=
  ∀ n, P1596248951687170260.a n = A106760 (n + 1)

end A106760

/-! ## A106760.P5065036685679262104

`∩[A003627(n+1), A235229(n+1)]`
-/

namespace A106760.P5065036685679262104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P5065036685679262104

namespace A106760

/-- `∩[A003627(n+1), A235229(n+1)]` -/
def P5065036685679262104.Spec : Prop :=
  ∀ n, (P5065036685679262104.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P5071932249532477425

`∩[A007528(n+1), A235229(n+1)]`
-/

namespace A106760.P5071932249532477425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P5071932249532477425

namespace A106760

/-- `∩[A007528(n+1), A235229(n+1)]` -/
def P5071932249532477425.Spec : Prop :=
  ∀ n, (P5071932249532477425.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P14743725243391620526

`∩[A045309(n+1), A235229(n+1)]`
-/

namespace A106760.P14743725243391620526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P14743725243391620526

namespace A106760

/-- `∩[A045309(n+1), A235229(n+1)]` -/
def P14743725243391620526.Spec : Prop :=
  ∀ n, (P14743725243391620526.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P8107766560137387731

`∩[A045410(n+1), A235229(n+1)]`
-/

namespace A106760.P8107766560137387731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P8107766560137387731

namespace A106760

/-- `∩[A045410(n+1), A235229(n+1)]` -/
def P8107766560137387731.Spec : Prop :=
  ∀ n, (P8107766560137387731.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P12427419365403845449

`∩[A049229(n+1), A235229(n+1)]`
-/

namespace A106760.P12427419365403845449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P12427419365403845449

namespace A106760

/-- `∩[A049229(n+1), A235229(n+1)]` -/
def P12427419365403845449.Spec : Prop :=
  ∀ n, (P12427419365403845449.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P14027312469573804158

`∩[A049596(n+1), A235229(n+1)]`
-/

namespace A106760.P14027312469573804158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P14027312469573804158

namespace A106760

/-- `∩[A049596(n+1), A235229(n+1)]` -/
def P14027312469573804158.Spec : Prop :=
  ∀ n, (P14027312469573804158.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P18074095889573177859

`∩[A056955(n+1), A235229(n+1)]`
-/

namespace A106760.P18074095889573177859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P18074095889573177859

namespace A106760

/-- `∩[A056955(n+1), A235229(n+1)]` -/
def P18074095889573177859.Spec : Prop :=
  ∀ n, (P18074095889573177859.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P13164424865725711959

`∩[A061238(n+1), A235229(n+1)]`
-/

namespace A106760.P13164424865725711959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P13164424865725711959

namespace A106760

/-- `∩[A061238(n+1), A235229(n+1)]` -/
def P13164424865725711959.Spec : Prop :=
  ∀ n, (P13164424865725711959.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P8395142516588175247

`∩[A062338(n+1), A235229(n+1)]`
-/

namespace A106760.P8395142516588175247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P8395142516588175247

namespace A106760

/-- `∩[A062338(n+1), A235229(n+1)]` -/
def P8395142516588175247.Spec : Prop :=
  ∀ n, (P8395142516588175247.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P3628961885118892574

`∩[A062340(n+1), A235229(n+1)]`
-/

namespace A106760.P3628961885118892574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P3628961885118892574

namespace A106760

/-- `∩[A062340(n+1), A235229(n+1)]` -/
def P3628961885118892574.Spec : Prop :=
  ∀ n, (P3628961885118892574.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P6663557004005182177

`∩[A078403(n+1), A235229(n+1)]`
-/

namespace A106760.P6663557004005182177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P6663557004005182177

namespace A106760

/-- `∩[A078403(n+1), A235229(n+1)]` -/
def P6663557004005182177.Spec : Prop :=
  ∀ n, (P6663557004005182177.a n : ℤ) = A106760 (n + 1)

end A106760

/-! ## A106760.P1071161056274229531

`∩[A079132(n+1), A235229(n+1)]`
-/

namespace A106760.P1071161056274229531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106760.P1071161056274229531

namespace A106760

/-- `∩[A079132(n+1), A235229(n+1)]` -/
def P1071161056274229531.Spec : Prop :=
  ∀ n, (P1071161056274229531.a n : ℤ) = A106760 (n + 1)

end A106760

/-!
# A106761: Primes with digit sum = 22.

The programs for A106761, the canonical program `A106761.P9151467794573401177` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106761 has offset 1).

The definition of A106761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106761.P9151467794573401177

`∩[A061239(n+1), A306510(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106761

/-- `∩[A061239(n+1), A306510(n+1)]` -/
def P9151467794573401177.Spec : Prop :=
  ∀ n, (P9151467794573401177.a n : ℤ) = A106761 (n + 1)

theorem P9151467794573401177.correct : P9151467794573401177.Spec := by
  intro n
  simp only [A106761, Nat.add_sub_cancel]

end A106761

/-! ## A106761.P11460316697578329709

`A045319(eq[22, A007605(n+1)])`
-/

namespace A106761.P11460316697578329709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106761.P11460316697578329709

namespace A106761

/-- `A045319(eq[22, A007605(n+1)])` -/
def P11460316697578329709.Spec : Prop :=
  ∀ n, P11460316697578329709.a n = A106761 (n + 1)

end A106761

/-! ## A106761.P10260295637279555693

`A000040(eq[22, A007605(n+1)]+1)`
-/

namespace A106761.P10260295637279555693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106761.P10260295637279555693

namespace A106761

/-- `A000040(eq[22, A007605(n+1)]+1)` -/
def P10260295637279555693.Spec : Prop :=
  ∀ n, P10260295637279555693.a n = A106761 (n + 1)

end A106761

/-! ## A106761.P3387014565643747301

`p?[eq[22, A007953(n)]]`
-/

namespace A106761.P3387014565643747301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106761.P3387014565643747301

namespace A106761

/-- `p?[eq[22, A007953(n)]]` -/
def P3387014565643747301.Spec : Prop :=
  ∀ n, (P3387014565643747301.a n : ℤ) = A106761 (n + 1)

end A106761

/-! ## A106761.P1903756914621433564

`p?[eq[26, A136614(n)]]`
-/

namespace A106761.P1903756914621433564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106761.P1903756914621433564

namespace A106761

/-- `p?[eq[26, A136614(n)]]` -/
def P1903756914621433564.Spec : Prop :=
  ∀ n, (P1903756914621433564.a n : ℤ) = A106761 (n + 1)

end A106761

/-! ## A106761.P7719758730932290598

`p?[eq[22, sqrt(A118881(n))]]`
-/

namespace A106761.P7719758730932290598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106761.P7719758730932290598

namespace A106761

/-- `p?[eq[22, sqrt(A118881(n))]]` -/
def P7719758730932290598.Spec : Prop :=
  ∀ n, (P7719758730932290598.a n : ℤ) = A106761 (n + 1)

end A106761

/-! ## A106761.P3002277634752269491

`p?[eq[22, log2(A329562(n))]]`
-/

namespace A106761.P3002277634752269491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℝ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106761.P3002277634752269491

namespace A106761

/-- `p?[eq[22, log2(A329562(n))]]` -/
def P3002277634752269491.Spec : Prop :=
  ∀ n, (P3002277634752269491.a n : ℤ) = A106761 (n + 1)

end A106761

/-! ## A106761.P17881703845899935100

`eq[A000041(A145154(n)), A007953(n)]`
-/

namespace A106761.P17881703845899935100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106761.P17881703845899935100

namespace A106761

/-- `eq[A000041(A145154(n)), A007953(n)]` -/
def P17881703845899935100.Spec : Prop :=
  ∀ n, (P17881703845899935100.a n : ℤ) = A106761 (n + 1)

end A106761

/-! ## A106761.P2221937545333913136

`eq[A007953(n), A008593(A322366(n))]`
-/

namespace A106761.P2221937545333913136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A322366 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106761.P2221937545333913136

namespace A106761

/-- `eq[A007953(n), A008593(A322366(n))]` -/
def P2221937545333913136.Spec : Prop :=
  ∀ n, (P2221937545333913136.a n : ℤ) = A106761 (n + 1)

end A106761

/-!
# A106762: Primes with digit sum = 23.

The programs for A106762, the canonical program `A106762.P16451836161243382953` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106762 has offset 1).

The definition of A106762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106762.P16451836161243382953

`A045319(eq[23, A007605(n+1)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A106762

/-- `A045319(eq[23, A007605(n+1)])` -/
def P16451836161243382953.Spec : Prop :=
  ∀ n, P16451836161243382953.a n = A106762 (n + 1)

theorem P16451836161243382953.correct : P16451836161243382953.Spec := by
  intro n
  simp only [A106762, Nat.add_sub_cancel]

end A106762

/-! ## A106762.P7696272112452529082

`A045344(eq[23, A007605(n+1)])`
-/

namespace A106762.P7696272112452529082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106762.P7696272112452529082

namespace A106762

/-- `A045344(eq[23, A007605(n+1)])` -/
def P7696272112452529082.Spec : Prop :=
  ∀ n, P7696272112452529082.a n = A106762 (n + 1)

end A106762

/-! ## A106762.P1945070372566081859

`A065091(eq[23, A007605(n+1)])`
-/

namespace A106762.P1945070372566081859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106762.P1945070372566081859

namespace A106762

/-- `A065091(eq[23, A007605(n+1)])` -/
def P1945070372566081859.Spec : Prop :=
  ∀ n, P1945070372566081859.a n = A106762 (n + 1)

end A106762

/-! ## A106762.P18291007385234673037

`A000040(eq[23, A007605(n+1)]+1)`
-/

namespace A106762.P18291007385234673037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106762.P18291007385234673037

namespace A106762

/-- `A000040(eq[23, A007605(n+1)]+1)` -/
def P18291007385234673037.Spec : Prop :=
  ∀ n, P18291007385234673037.a n = A106762 (n + 1)

end A106762

/-! ## A106762.P2659652017936278232

`filter[A119891(n+1), A011672(#)]`
-/

namespace A106762.P2659652017936278232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011672 (f1 j).toNat = 1) n)

end

end A106762.P2659652017936278232

namespace A106762

/-- `filter[A119891(n+1), A011672(#)]` -/
def P2659652017936278232.Spec : Prop :=
  ∀ n, P2659652017936278232.a n = A106762 (n + 1)

end A106762

/-! ## A106762.P11392064995613768281

`filter[A119891(n+1), A113217(#)]`
-/

namespace A106762.P11392064995613768281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A113217 (f1 j).toNat = 1) n)

end

end A106762.P11392064995613768281

namespace A106762

/-- `filter[A119891(n+1), A113217(#)]` -/
def P11392064995613768281.Spec : Prop :=
  ∀ n, P11392064995613768281.a n = A106762 (n + 1)

end A106762

/-! ## A106762.P4305726075443291951

`filter[A119891(n+1), A144605(#)]`
-/

namespace A106762.P4305726075443291951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144605 (f1 j).toNat = 1) n)

end

end A106762.P4305726075443291951

namespace A106762

/-- `filter[A119891(n+1), A144605(#)]` -/
def P4305726075443291951.Spec : Prop :=
  ∀ n, P4305726075443291951.a n = A106762 (n + 1)

end A106762

/-!
# A106763: Primes with digit sum = 25.

The programs for A106763, the canonical program `A106763.P16920363089543575446` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106763 has offset 1).

The definition of A106763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4321 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106763.P16920363089543575446

`∩[A061241(n+1), A062340(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106763

/-- `∩[A061241(n+1), A062340(n+1)]` -/
def P16920363089543575446.Spec : Prop :=
  ∀ n, (P16920363089543575446.a n : ℤ) = A106763 (n + 1)

theorem P16920363089543575446.correct : P16920363089543575446.Spec := by
  intro n
  simp only [A106763, Nat.add_sub_cancel]

end A106763

/-! ## A106763.P3421263321013032879

`∩[A062340(n+1), A107288(n+1)]`
-/

namespace A106763.P3421263321013032879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P3421263321013032879

namespace A106763

/-- `∩[A062340(n+1), A107288(n+1)]` -/
def P3421263321013032879.Spec : Prop :=
  ∀ n, (P3421263321013032879.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P6039671485971588156

`∩[A129807(n+1), A247122(n+1)]`
-/

namespace A106763.P6039671485971588156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P6039671485971588156

namespace A106763

/-- `∩[A129807(n+1), A247122(n+1)]` -/
def P6039671485971588156.Spec : Prop :=
  ∀ n, (P6039671485971588156.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P16533709761237043416

`∩[A002476(n+1), A247122(n+1)]`
-/

namespace A106763.P16533709761237043416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P16533709761237043416

namespace A106763

/-- `∩[A002476(n+1), A247122(n+1)]` -/
def P16533709761237043416.Spec : Prop :=
  ∀ n, (P16533709761237043416.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P5002890280792069693

`∩[A007645(n+1), A247122(n+1)]`
-/

namespace A106763.P5002890280792069693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P5002890280792069693

namespace A106763

/-- `∩[A007645(n+1), A247122(n+1)]` -/
def P5002890280792069693.Spec : Prop :=
  ∀ n, (P5002890280792069693.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P4771406975043845683

`∩[A045331(n+1), A247122(n+1)]`
-/

namespace A106763.P4771406975043845683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P4771406975043845683

namespace A106763

/-- `∩[A045331(n+1), A247122(n+1)]` -/
def P4771406975043845683.Spec : Prop :=
  ∀ n, (P4771406975043845683.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P8349050345121887150

`∩[A045375(n+1), A247122(n+1)]`
-/

namespace A106763.P8349050345121887150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P8349050345121887150

namespace A106763

/-- `∩[A045375(n+1), A247122(n+1)]` -/
def P8349050345121887150.Spec : Prop :=
  ∀ n, (P8349050345121887150.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P14497554471784954401

`∩[A123365(n+1), A247122(n+1)]`
-/

namespace A106763.P14497554471784954401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P14497554471784954401

namespace A106763

/-- `∩[A123365(n+1), A247122(n+1)]` -/
def P14497554471784954401.Spec : Prop :=
  ∀ n, (P14497554471784954401.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P7103790436049692080

`∩[A062340(n+1), A301628(n+1)]`
-/

namespace A106763.P7103790436049692080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P7103790436049692080

namespace A106763

/-- `∩[A062340(n+1), A301628(n+1)]` -/
def P7103790436049692080.Spec : Prop :=
  ∀ n, (P7103790436049692080.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P12266278484778790979

`∩[A247122(n+1), A279815(n+1)]`
-/

namespace A106763.P12266278484778790979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P12266278484778790979

namespace A106763

/-- `∩[A247122(n+1), A279815(n+1)]` -/
def P12266278484778790979.Spec : Prop :=
  ∀ n, (P12266278484778790979.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P12266345863824678995

`∩[A247122(n+1), A301628(n+1)]`
-/

namespace A106763.P12266345863824678995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P12266345863824678995

namespace A106763

/-- `∩[A247122(n+1), A301628(n+1)]` -/
def P12266345863824678995.Spec : Prop :=
  ∀ n, (P12266345863824678995.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P14059978975991754379

`∩[A078403(n+1), A247122(n+1)]`
-/

namespace A106763.P14059978975991754379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P14059978975991754379

namespace A106763

/-- `∩[A078403(n+1), A247122(n+1)]` -/
def P14059978975991754379.Spec : Prop :=
  ∀ n, (P14059978975991754379.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P3953470468372617252

`∩[A079131(n+1), A247122(n+1)]`
-/

namespace A106763.P3953470468372617252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P3953470468372617252

namespace A106763

/-- `∩[A079131(n+1), A247122(n+1)]` -/
def P3953470468372617252.Spec : Prop :=
  ∀ n, (P3953470468372617252.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P16929241705249890076

`∩[A055664(n+1), A247122(n+1)]`
-/

namespace A106763.P16929241705249890076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P16929241705249890076

namespace A106763

/-- `∩[A055664(n+1), A247122(n+1)]` -/
def P16929241705249890076.Spec : Prop :=
  ∀ n, (P16929241705249890076.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P14912217628902594627

`∩[A133290(n+1), A247122(n+1)]`
-/

namespace A106763.P14912217628902594627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P14912217628902594627

namespace A106763

/-- `∩[A133290(n+1), A247122(n+1)]` -/
def P14912217628902594627.Spec : Prop :=
  ∀ n, (P14912217628902594627.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P14953297917663841710

`∩[A137827(n+1), A247122(n+1)]`
-/

namespace A106763.P14953297917663841710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P14953297917663841710

namespace A106763

/-- `∩[A137827(n+1), A247122(n+1)]` -/
def P14953297917663841710.Spec : Prop :=
  ∀ n, (P14953297917663841710.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P17823880743160862472

`∩[A107288(n+1), A119450(n+1)]`
-/

namespace A106763.P17823880743160862472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P17823880743160862472

namespace A106763

/-- `∩[A107288(n+1), A119450(n+1)]` -/
def P17823880743160862472.Spec : Prop :=
  ∀ n, (P17823880743160862472.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P6075373567213404723

`∩[A062340(n+1), A242215(n)+2]`
-/

namespace A106763.P6075373567213404723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P6075373567213404723

namespace A106763

/-- `∩[A062340(n+1), A242215(n)+2]` -/
def P6075373567213404723.Spec : Prop :=
  ∀ n, (P6075373567213404723.a n : ℤ) = A106763 (n + 1)

end A106763

/-! ## A106763.P16931239933795281740

`filter[A247122(n+1), A070563(#)]`
-/

namespace A106763.P16931239933795281740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A106763.P16931239933795281740

namespace A106763

/-- `filter[A247122(n+1), A070563(#)]` -/
def P16931239933795281740.Spec : Prop :=
  ∀ n, P16931239933795281740.a n = A106763 (n + 1)

end A106763

/-! ## A106763.P3765820459588915685

`∩[A062340(n+1), A017245(n)]`
-/

namespace A106763.P3765820459588915685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106763.P3765820459588915685

namespace A106763

/-- `∩[A062340(n+1), A017245(n)]` -/
def P3765820459588915685.Spec : Prop :=
  ∀ n, (P3765820459588915685.a n : ℤ) = A106763 (n + 1)

end A106763

/-!
# A106764: Primes with digit sum = 26.

The programs for A106764, there is no canonical definition to state claims against.
-/

/-! ## A106764.P18312320507400274201

`∩[A165440(n+1), A176985(n+1)]`
-/

namespace A106764.P18312320507400274201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106764.P18312320507400274201

/-! ## A106764.P746195077721666260

`∩[A061242(n+1), A158195(n+1)]`
-/

namespace A106764.P746195077721666260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106764.P746195077721666260

/-! ## A106764.P10097331326095754531

`∩[A158195(n+1), A165440(n+1)]`
-/

namespace A106764.P10097331326095754531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106764.P10097331326095754531

/-! ## A106764.P10553678945292398899

`∩[A158195(n+1), A239129(n+1)]`
-/

namespace A106764.P10553678945292398899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106764.P10553678945292398899

/-! ## A106764.P487043298326909983

`∩[A158195(n+1), A295869(n+1)]`
-/

namespace A106764.P487043298326909983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106764.P487043298326909983

/-!
# A106768: Primes with digit sum = 32.

The programs for A106768, there is no canonical definition to state claims against.
-/

/-! ## A106768.P2512412970992296384

`A018800(A285228(n+3))`
-/

namespace A106768.P2512412970992296384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A285228 (n + 3)).toNat

end

end A106768.P2512412970992296384

/-!
# A106770: Primes with digit sum = 35.

The programs for A106770, the canonical program `A106770.P17983658334318701957` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106770 has offset 1).

The definition of A106770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106770.P17983658334318701957

`∩[A062336(n+1), A062340(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106770

/-- `∩[A062336(n+1), A062340(n+1)]` -/
def P17983658334318701957.Spec : Prop :=
  ∀ n, (P17983658334318701957.a n : ℤ) = A106770 (n + 1)

theorem P17983658334318701957.correct : P17983658334318701957.Spec := by
  intro n
  simp only [A106770, Nat.add_sub_cancel]

end A106770

/-!
# A106773: Primes with digit sum = 40.

The programs for A106773, there is no canonical definition to state claims against.
-/

/-! ## A106773.P6299363613394495620

`p?[A061425(n+44)]`
-/

namespace A106773.P6299363613394495620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061425 (n + 44)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106773.P6299363613394495620

/-! ## A106773.P15230990227217229776

`A020639(A285228(n+8))`
-/

namespace A106773.P15230990227217229776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A285228 (n + 8)).toNat

end

end A106773.P15230990227217229776

/-! ## A106773.P12505717977031245795

`filter[A285228(n+3), A070563(#)]`
-/

namespace A106773.P12505717977031245795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285228 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A106773.P12505717977031245795

/-! ## A106773.P9512537406332946919

`filter[A285228(n+3), A353815(#)]`
-/

namespace A106773.P9512537406332946919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285228 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A106773.P9512537406332946919

/-! ## A106773.P16307868395176392816

`filter[A285228(n+3), A353816(#)]`
-/

namespace A106773.P16307868395176392816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285228 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A106773.P16307868395176392816

/-!
# A106774: Primes with digit sum = 41.

The programs for A106774, there is no canonical definition to state claims against.
-/

/-! ## A106774.P6300530554905160843

`p?[A061425(n+44)+A007318(C(n, 2))]`
-/

namespace A106774.P6300530554905160843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061425 (n + 44) + A007318 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106774.P6300530554905160843

/-!
# A106784: Primes with digit sum = 56.

The programs for A106784, there is no canonical definition to state claims against.
-/

/-! ## A106784.P8704560460300638502

`∩[A136317(n+1), A285228(n+1)]`
-/

namespace A106784.P8704560460300638502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106784.P8704560460300638502

/-!
# A106788: Triangular three level substitution for chair tiling.

The programs for A106788, there is no canonical definition to state claims against.
-/

/-! ## A106788.P2346284732942142821

`A279849(A323586(n))`
-/

namespace A106788.P2346284732942142821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279849 (A323586 n).toNat

end

end A106788.P2346284732942142821

/-! ## A106788.P6026104802919369694

`A322867(A288811(n+1))`
-/

namespace A106788.P6026104802919369694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322867 (A288811 (n + 1)).toNat

end

end A106788.P6026104802919369694

/-! ## A106788.P4220477977930421774

`A091222(A049926(n+2))`
-/

namespace A106788.P4220477977930421774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (A049926 (n + 2)).toNat

end

end A106788.P4220477977930421774

/-! ## A106788.P17910303948772630814

`A048815(A048810(n+6))%5`
-/

namespace A106788.P17910303948772630814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048815 ((A048810 (n + 6)).toNat + 11)) 5

end

end A106788.P17910303948772630814

/-! ## A106788.P14455252932680654195

`A000120(A037168(n+1)-(∑{e}[∑[3^n], #]+1))`
-/

namespace A106788.P14455252932680654195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A037168 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ)).toNat

end

end A106788.P14455252932680654195

/-!
# A106789: Sum of two consecutive squares of Lucas 3-step numbers (A001644).

The programs for A106789, the canonical program `A106789.P16772224095733499433` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106789 has offset 0).

The definition of A106789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106789.P16957042270731290783

`ogf((10-10x+8x^2-36x^3-2x^4-10x^5)/(1-2x-3x^2-6x^3+x^4+x^6))`
-/

namespace A106789.P16957042270731290783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -10, 8, -36, -2, -10] [1, -2, -3, -6, 1, 0, 1] n

end

end A106789.P16957042270731290783

namespace A106789

/-- `ogf((10-10x+8x^2-36x^3-2x^4-10x^5)/(1-2x-3x^2-6x^3+x^4+x^6))` -/
def P16957042270731290783.Spec : Prop :=
  ∀ n, P16957042270731290783.a n = A106789 n

end A106789

/-! ## A106789.P16772224095733499433

`A001644(n)²+A001644(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106789

/-- `A001644(n)²+A001644(n+1)²` -/
def P16772224095733499433.Spec : Prop :=
  ∀ n, P16772224095733499433.a n = A106789 n

theorem P16772224095733499433.correct : P16772224095733499433.Spec := by
  intro n
  simp only [A106789]

end A106789

/-! ## A106789.P4647563348084190461

`A323728(A073748(n+1))`
-/

namespace A106789.P4647563348084190461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323728 (A073748 (n + 1)).toNat

end

end A106789.P4647563348084190461

namespace A106789

/-- `A323728(A073748(n+1))` -/
def P4647563348084190461.Spec : Prop :=
  ∀ n, P4647563348084190461.a n = A106789 n

end A106789

/-!
# A106790: Smallest k>0 such that binomial(n,k) + 1 is prime.

The programs for A106790, there is no canonical definition to state claims against.
-/

/-! ## A106790.P7346497279144716970

`A080210(∑{d}[A335023(n+1), #]²)`
-/

namespace A106790.P7346497279144716970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080210 ((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2)

end

end A106790.P7346497279144716970

/-! ## A106790.P12669935695454503753

`∑{e}[A117977(n)+A084546(n+1), #]`
-/

namespace A106790.P12669935695454503753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117977 n + A084546 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106790.P12669935695454503753

/-! ## A106790.P8348948497890884746

`A328892(2*n+4)-A162510(A001317(n))`
-/

namespace A106790.P8348948497890884746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328892 (2 * n + 4) - A162510 (A001317 n).toNat

end

end A106790.P8348948497890884746

/-! ## A106790.P15749461057400323715

`A328892(2*n+4)-A162510(A229885(n))`
-/

namespace A106790.P15749461057400323715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328892 (2 * n + 4) - A162510 (A229885 n).toNat

end

end A106790.P15749461057400323715

/-! ## A106790.P7163063438828166260

`gcd(A044995(A266362(n+1)), A208943(n+1))`
-/

namespace A106790.P7163063438828166260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A044995 (A266362 (n + 1)).toNat) (A208943 (n + 1))

end

end A106790.P7163063438828166260

/-!
# A106791: Sum of two consecutive squares of Lucas 4-step numbers (A073817).

The programs for A106791, the canonical program `A106791.P8889928903102084074` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106791 has offset 0).

The definition of A106791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106791.P8889928903102084074

`A073817(n)²+A073817(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A106791

/-- `A073817(n)²+A073817(n+1)²` -/
def P8889928903102084074.Spec : Prop :=
  ∀ n, P8889928903102084074.a n = A106791 n

theorem P8889928903102084074.correct : P8889928903102084074.Spec := by
  intro n
  simp only [A106791]

end A106791

/-! ## A106791.P12633589256046058990

`abs(Δ[A073817(n)*A074081(n)])`
-/

namespace A106791.P12633589256046058990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 n * A074081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A106791.P12633589256046058990

namespace A106791

/-- `abs(Δ[A073817(n)*A074081(n)])` -/
def P12633589256046058990.Spec : Prop :=
  ∀ n, P12633589256046058990.a n = A106791 n

end A106791

/-! ## A106791.P17674961981349547254

`A074081(n+1)²+A074081(n)²`
-/

namespace A106791.P17674961981349547254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074081 (n + 1) ^ 2 + A074081 n ^ 2

end

end A106791.P17674961981349547254

namespace A106791

/-- `A074081(n+1)²+A074081(n)²` -/
def P17674961981349547254.Spec : Prop :=
  ∀ n, P17674961981349547254.a n = A106791 n

end A106791

/-! ## A106791.P13040085607351831146

`Δ[A073817(n)*A074081(n)]*A033999(n+1)`
-/

namespace A106791.P13040085607351831146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073817 n * A074081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A106791.P13040085607351831146

namespace A106791

/-- `Δ[A073817(n)*A074081(n)]*A033999(n+1)` -/
def P13040085607351831146.Spec : Prop :=
  ∀ n, P13040085607351831146.a n = A106791 n

end A106791

/-!
# A106793: Number of words (over an alphabet of size 26) of length n with all different letters.

The programs for A106793, the canonical program `A106793.P8052172695526036501` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106793 has offset 0).

The definition of A106793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106793.P8052172695526036501

`(27-n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A106793

/-- `(27-n)*a(n-1)` -/
def P8052172695526036501.Spec : Prop :=
  ∀ n, P8052172695526036501.a n = A106793 n

theorem P8052172695526036501.correct : P8052172695526036501.Spec := by
  intro n
  simp only [A106793]

end A106793

/-!
# A106795: Fixed point of the morphism 1 -> 1,1,1,1,1,1,2,2,2,3; 2 -> 2,2,3,1,1,1,1; 3 -> 3,1,1,1,2,2, starting with a(0) = 1.

The programs for A106795, there is no canonical definition to state claims against.
-/

/-! ## A106795.P15395633877159408291

`gcd(A320757(n+1)!, ∏{digits}[n, A029113(#)])`
-/

namespace A106795.P15395633877159408291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A320757 (n + 1)).toNat : ℤ) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod

end

end A106795.P15395633877159408291

/-! ## A106795.P13136618985789855379

`A000038(A350630(n+1))+∏{digits}[n, A029113(#)]`
-/

namespace A106795.P13136618985789855379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A350630 (n + 1)).toNat + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod

end

end A106795.P13136618985789855379

/-! ## A106795.P8456941509118595848

`∏{digits}[n, A029113(#)]*A001511(A068487(n+1))`
-/

namespace A106795.P8456941509118595848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod * A001511 (A068487 (n + 1)).toNat

end

end A106795.P8456941509118595848

/-! ## A106795.P11446875838868217880

`∏{digits}[n, A029113(#)]*A204162(A143205(n+1))`
-/

namespace A106795.P11446875838868217880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod * A204162 (A143205 (n + 1)).toNat

end

end A106795.P11446875838868217880

/-! ## A106795.P2256697627378581169

`A007318(A060839(n+1)!)*∏{digits}[n, A029113(#)]`
-/

namespace A106795.P2256697627378581169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (A060839 (n + 1)).toNat) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029113 x).prod

end

end A106795.P2256697627378581169

/-!
# A106796: Fixed point of the morphism 1 -> 1,1,2; 2 -> 3; 3 -> 1,4; 4 -> 1, starting with a(0) = 1.

The programs for A106796, there is no canonical definition to state claims against.
-/

/-! ## A106796.P456284408281014168

`A161789(A166645(A248774(n+1))+n)`
-/

namespace A106796.P456284408281014168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (A166645 (A248774 (n + 1)).toNat + (n : ℤ)).toNat

end

end A106796.P456284408281014168

/-! ## A106796.P7532365178724365733

`A082850(gcd(A003418(n+3), A077168(n)))`
-/

namespace A106796.P7532365178724365733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (Int.gcd (A003418 (n + 3)) (A077168 n))

end

end A106796.P7532365178724365733

/-! ## A106796.P17814379503533395720

`A296773(A312601(n)+1)`
-/

namespace A106796.P17814379503533395720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296773 (A312601 n + 1).toNat

end

end A106796.P17814379503533395720

/-! ## A106796.P16174835250441798814

`gcd(A023416(A048114(n)), A211100(n))`
-/

namespace A106796.P16174835250441798814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023416 (A048114 n).toNat) (A211100 n)

end

end A106796.P16174835250441798814

/-! ## A106796.P6500387126396542887

`A228528(A161185(n+2))`
-/

namespace A106796.P6500387126396542887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228528 (A161185 (n + 2)).toNat

end

end A106796.P6500387126396542887

/-!
# A106797: Fixed point of the morphism 1 -> 1,1,1,1,2,2,3; 2 -> 4,1; 3 -> 2,1,1,1; 4 -> 1,2,1 starting with a(0) = 1.

The programs for A106797, there is no canonical definition to state claims against.
-/

/-! ## A106797.P17767605007562482734

`A105899(A011889(n)*A319101(n+1))`
-/

namespace A106797.P17767605007562482734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 (A011889 n * A319101 (n + 1)).toNat

end

end A106797.P17767605007562482734

/-! ## A106797.P12261914522280804628

`A105899(A011889(n)^A319101(n+1))`
-/

namespace A106797.P12261914522280804628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105899 (SequenceMachineLib.roundAway ((A011889 n : ℚ) ^ (A319101 (n + 1) : ℤ))).toNat

end

end A106797.P12261914522280804628

/-! ## A106797.P6083102013992136848

`gcd(A083032(A083028(2*n+5)²), A190719(2*n+5))`
-/

namespace A106797.P6083102013992136848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083032 (A083028 (2 * n + 5) ^ 2).toNat) (A190719 (2 * n + 5))

end

end A106797.P6083102013992136848

/-! ## A106797.P9720339591680406307

`A257993(A186219(n+1)^A043277(n+1))`
-/

namespace A106797.P9720339591680406307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (SequenceMachineLib.roundAway ((A186219 (n + 1) : ℚ) ^ (A043277 (n + 1) : ℤ))).toNat

end

end A106797.P9720339591680406307

/-! ## A106797.P14111802242206375006

`A055881(A181985(n+1)+A083089(n+1))`
-/

namespace A106797.P14111802242206375006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (A181985 (n + 1) + A083089 (n + 1)).toNat

end

end A106797.P14111802242206375006

/-!
# A106798: Fixed point of the morphism 1 -> 3; 2 -> 1,2,2; 3 -> 1,2, starting with a(0) = 1.

The programs for A106798, there is no canonical definition to state claims against.
-/

/-! ## A106798.P7566009252608893970

`A088431(A334720(n+1)+A255609(n+1))`
-/

namespace A106798.P7566009252608893970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (A334720 (n + 1) + A255609 (n + 1)).toNat

end

end A106798.P7566009252608893970

/-! ## A106798.P14800712101319718953

`A214640(∑[A093178(A232964(n+1))])`
-/

namespace A106798.P14800712101319718953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A232964 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106798.P14800712101319718953

/-! ## A106798.P10686680221736429547

`A214640(∑[A319101(A341627(n+1))])`
-/

namespace A106798.P10686680221736429547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319101 (A341627 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106798.P10686680221736429547

/-! ## A106798.P11486196432381791121

`A346741(A113127(n)+A004760(n+1))`
-/

namespace A106798.P11486196432381791121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346741 (A113127 n + A004760 (n + 1)).toNat

end

end A106798.P11486196432381791121

/-! ## A106798.P1966631643358554266

`A038548(A059886(n+1)*A079498(n+2)+1)`
-/

namespace A106798.P1966631643358554266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A059886 (n + 1) * A079498 (n + 2) + 1).toNat

end

end A106798.P1966631643358554266

/-!
# A106799: Number of prime factors of n apart from 2 or 3, counted with multiplicity.

The programs for A106799, the canonical program `A106799.P9008647857558368840` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106799 has offset 1).

The definition of A106799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106799.P15937739471670060024

`A001222(n+1)-val(n+1, 2)-val(n+1, 3)`
-/

namespace A106799.P15937739471670060024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) - (SequenceMachineLib.valuation (n + 1) 3 : ℤ)

end

end A106799.P15937739471670060024

namespace A106799

/-- `A001222(n+1)-val(n+1, 2)-val(n+1, 3)` -/
def P15937739471670060024.Spec : Prop :=
  ∀ n, P15937739471670060024.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P14011150560639303995

`A001222(A065330(n+1))`
-/

namespace A106799.P14011150560639303995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065330 (n + 1)).toNat

end

end A106799.P14011150560639303995

namespace A106799

/-- `A001222(A065330(n+1))` -/
def P14011150560639303995.Spec : Prop :=
  ∀ n, P14011150560639303995.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P9008647857558368840

`A087436(n+1)-A007949(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106799

/-- `A087436(n+1)-A007949(n+1)` -/
def P9008647857558368840.Spec : Prop :=
  ∀ n, P9008647857558368840.a n = A106799 (n + 1)

theorem P9008647857558368840.correct : P9008647857558368840.Spec := by
  intro n
  simp only [A106799, Nat.add_sub_cancel]

end A106799

/-! ## A106799.P11752791700692761781

`A001222(n+1)-A007814(n+1)-A007949(n+1)`
-/

namespace A106799.P11752791700692761781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A007814 (n + 1) - A007949 (n + 1)

end

end A106799.P11752791700692761781

namespace A106799

/-- `A001222(n+1)-A007814(n+1)-A007949(n+1)` -/
def P11752791700692761781.Spec : Prop :=
  ∀ n, P11752791700692761781.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P14869192809618768385

`∑{e}[A065330(n+1), #]`
-/

namespace A106799.P14869192809618768385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106799.P14869192809618768385

namespace A106799

/-- `∑{e}[A065330(n+1), #]` -/
def P14869192809618768385.Spec : Prop :=
  ∀ n, (P14869192809618768385.a n : ℤ) = A106799 (n + 1)

end A106799

/-! ## A106799.P10036100544816176893

`∑{e}[A354203(n+1), #]`
-/

namespace A106799.P10036100544816176893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106799.P10036100544816176893

namespace A106799

/-- `∑{e}[A354203(n+1), #]` -/
def P10036100544816176893.Spec : Prop :=
  ∀ n, (P10036100544816176893.a n : ℤ) = A106799 (n + 1)

end A106799

/-! ## A106799.P3772248720765953117

`log2(A317932(n+1))-val((n+1)*∏{e}[n+1, #!], 2)`
-/

namespace A106799.P3772248720765953117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A317932 (n + 1) : ℝ) - (SequenceMachineLib.valuation ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))) 2 : ℝ)

end

end A106799.P3772248720765953117

namespace A106799

/-- `log2(A317932(n+1))-val((n+1)*∏{e}[n+1, #!], 2)` -/
def P3772248720765953117.Spec : Prop :=
  ∀ n, P3772248720765953117.a n = (A106799 (n + 1) : ℝ)

end A106799

/-! ## A106799.P10509405548318016613

`A001222(floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3))`
-/

namespace A106799.P10509405548318016613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((⌊(n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A106799.P10509405548318016613

namespace A106799

/-- `A001222(floor((n+1)/2^val(n+1, 2))/3^val(n+1, 3))` -/
def P10509405548318016613.Spec : Prop :=
  ∀ n, P10509405548318016613.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P10603730752136500052

`A001222(gcd((n+1)/2^val(n+1, 2), (n+1)/3^val(n+1, 3)))`
-/

namespace A106799.P10603730752136500052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))))

end

end A106799.P10603730752136500052

namespace A106799

/-- `A001222(gcd((n+1)/2^val(n+1, 2), (n+1)/3^val(n+1, 3)))` -/
def P10603730752136500052.Spec : Prop :=
  ∀ n, P10603730752136500052.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P3981443240865267801

`A001222(3*(n+1)/and(n+1, -(n+1))/3^(val(n+1, 3)+1))`
-/

namespace A106799.P3981443240865267801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)) / (3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ))).toNat

end

end A106799.P3981443240865267801

namespace A106799

/-- `A001222(3*(n+1)/and(n+1, -(n+1))/3^(val(n+1, 3)+1))` -/
def P3981443240865267801.Spec : Prop :=
  ∀ n, P3981443240865267801.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P11516387122408559966

`A087436(A038502(n+1))`
-/

namespace A106799.P11516387122408559966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A038502 (n + 1)).toNat

end

end A106799.P11516387122408559966

namespace A106799

/-- `A087436(A038502(n+1))` -/
def P11516387122408559966.Spec : Prop :=
  ∀ n, P11516387122408559966.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P12116623871358928105

`A087436(A064989(n+1))`
-/

namespace A106799.P12116623871358928105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A064989 (n + 1)).toNat

end

end A106799.P12116623871358928105

namespace A106799

/-- `A087436(A064989(n+1))` -/
def P12116623871358928105.Spec : Prop :=
  ∀ n, P12116623871358928105.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P834561010094061623

`A087436(A079707(n+1))`
-/

namespace A106799.P834561010094061623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A079707 (n + 1)).toNat

end

end A106799.P834561010094061623

namespace A106799

/-- `A087436(A079707(n+1))` -/
def P834561010094061623.Spec : Prop :=
  ∀ n, P834561010094061623.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P5633306024285410466

`A087436(2*A065330(n+1))`
-/

namespace A106799.P5633306024285410466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (2 * A065330 (n + 1)).toNat

end

end A106799.P5633306024285410466

namespace A106799

/-- `A087436(2*A065330(n+1))` -/
def P5633306024285410466.Spec : Prop :=
  ∀ n, P5633306024285410466.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P350821555622785619

`∑{e}[A332819(A332819(n+1)), #]`
-/

namespace A106799.P350821555622785619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332819 (A332819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A106799.P350821555622785619

namespace A106799

/-- `∑{e}[A332819(A332819(n+1)), #]` -/
def P350821555622785619.Spec : Prop :=
  ∀ n, (P350821555622785619.a n : ℤ) = A106799 (n + 1)

end A106799

/-! ## A106799.P6729852254591724028

`A001222(n+1)-A169611(n+1)`
-/

namespace A106799.P6729852254591724028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A169611 (n + 1)

end

end A106799.P6729852254591724028

namespace A106799

/-- `A001222(n+1)-A169611(n+1)` -/
def P6729852254591724028.Spec : Prop :=
  ∀ n, P6729852254591724028.a n = A106799 (n + 1)

theorem P6729852254591724028.correct : P6729852254591724028.Spec := by
  intro n
  simp only [A106799, Nat.add_sub_cancel, A106799.P6729852254591724028.a, A106799.P9008647857558368840.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007949, A007949.P16509802526550351827.a, A087436, A087436.P13287701826401831056.a, A169611, A169611.P2401651306699804100.a, A007814, A007814.P13537437864234730737.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106799

/-! ## A106799.P4149232610875710868

`A305439(n+1)-A318315(n+1)`
-/

namespace A106799.P4149232610875710868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305439 (n + 1) - A318315 (n + 1)

end

end A106799.P4149232610875710868

namespace A106799

/-- `A305439(n+1)-A318315(n+1)` -/
def P4149232610875710868.Spec : Prop :=
  ∀ n, P4149232610875710868.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P6891028173087538843

`A001222((n+1)/A065331(n+1))`
-/

namespace A106799.P6891028173087538843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A065331 (n + 1) : ℚ))).toNat

end

end A106799.P6891028173087538843

namespace A106799

/-- `A001222((n+1)/A065331(n+1))` -/
def P6891028173087538843.Spec : Prop :=
  ∀ n, P6891028173087538843.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P10819419096351221532

`A001222(n+1)-∑{e}[A065331(n+1), #]`
-/

namespace A106799.P10819419096351221532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A106799.P10819419096351221532

namespace A106799

/-- `A001222(n+1)-∑{e}[A065331(n+1), #]` -/
def P10819419096351221532.Spec : Prop :=
  ∀ n, P10819419096351221532.a n = A106799 (n + 1)

end A106799

/-! ## A106799.P5926727903148526983

`A001222(n+1)-(A007949(n+1)+A007814(n+1))`
-/

namespace A106799.P5926727903148526983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - (A007949 (n + 1) + A007814 (n + 1))

end

end A106799.P5926727903148526983

namespace A106799

/-- `A001222(n+1)-(A007949(n+1)+A007814(n+1))` -/
def P5926727903148526983.Spec : Prop :=
  ∀ n, P5926727903148526983.a n = A106799 (n + 1)

theorem P5926727903148526983.correct : P5926727903148526983.Spec := by
  intro n
  simp only [A106799, Nat.add_sub_cancel, A106799.P5926727903148526983.a, A106799.P9008647857558368840.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007814, A007814.P13537437864234730737.a, A007949, A007949.P16509802526550351827.a, A087436, A087436.P13287701826401831056.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106799

