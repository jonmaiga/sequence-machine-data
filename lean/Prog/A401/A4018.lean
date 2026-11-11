import SequenceMachineLib
import Seq.B000.C015
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C049
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C012
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C003
import Seq.Opaque.C003
import Seq.Opaque.C021
import Seq.Opaque.C024

/-!
# A401809: Records of A401756.

The programs for A401809, there is no canonical definition to state claims against.
-/

/-! ## A401809.P13431272619504504826

`A401756(A401810(n+1))`
-/

namespace A401809.P13431272619504504826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401756 (A401810 (n + 1)).toNat

end

end A401809.P13431272619504504826

/-!
# A401810: Indices of records of A401756.

The programs for A401810, there is no canonical definition to state claims against.
-/

/-! ## A401810.P17749398564548434142

`A293552(A314250(n))`
-/

namespace A401810.P17749398564548434142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (A314250 n).toNat

end

end A401810.P17749398564548434142

/-! ## A401810.P13779974519587477125

`A293552(A314251(n))`
-/

namespace A401810.P13779974519587477125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (A314251 n).toNat

end

end A401810.P13779974519587477125

/-! ## A401810.P2540628830076524948

`A293552(A314252(n))`
-/

namespace A401810.P2540628830076524948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (A314252 n).toNat

end

end A401810.P2540628830076524948

/-! ## A401810.P9614753744693612573

`A293552(A314253(n))`
-/

namespace A401810.P9614753744693612573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293552 (A314253 n).toNat

end

end A401810.P9614753744693612573

/-!
# A401831: Number of permutations of {1..n} such that no two primes are adjacent.

The programs for A401831, there is no canonical definition to state claims against.
-/

/-! ## A401831.P13543020587906968915

`A067783(A060818(n))`
-/

namespace A401831.P13543020587906968915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067783 (A060818 n).toNat

end

end A401831.P13543020587906968915

/-! ## A401831.P10861079100763124294

`A067783(A082887(n))`
-/

namespace A401831.P10861079100763124294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067783 (A082887 n).toNat

end

end A401831.P10861079100763124294

/-! ## A401831.P5807899964520439119

`A064527(A128014(n))`
-/

namespace A401831.P5807899964520439119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A128014 n).toNat

end

end A401831.P5807899964520439119

/-! ## A401831.P11315416195141041707

`A064527(A135401(n))`
-/

namespace A401831.P11315416195141041707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A135401 n).toNat

end

end A401831.P11315416195141041707

/-!
# A401861: Maximum size of a family of distinct subsets of {1, ..., n} whose pairwise intersections are nonempty arithmetic progressions.

The programs for A401861, there is no canonical definition to state claims against.
-/

/-! ## A401861.P12633703171556497645

`ceil(∑[acot(4)+n])`
-/

namespace A401861.P12633703171556497645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (4 : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A401861.P12633703171556497645

/-! ## A401861.P6166351596565721956

`ceil(∑[1/4+n])`
-/

namespace A401861.P6166351596565721956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A401861.P6166351596565721956

/-! ## A401861.P1793202197433636822

`∑[val(n+4, 4)+n]`
-/

namespace A401861.P1793202197433636822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 4) 4 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401861.P1793202197433636822

/-! ## A401861.P14406611700437521246

`floor(∑[atan(3)+n]-n)`
-/

namespace A401861.P14406611700437521246
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (3 : ℝ) + (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)⌋

end

end A401861.P14406611700437521246

/-! ## A401861.P16267678311971874717

`∑[or(n, ∑[n+1]%2)]`
-/

namespace A401861.P16267678311971874717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n ((∑ j ∈ Finset.range (n + 1), f2 j) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401861.P16267678311971874717

/-!
# A401886: Maximum size of a subset S of {1, ..., n} such that x*y is not squarefree for all x, y in S.

The programs for A401886, the canonical program `A401886.P9259305142288146394` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401886 has offset 1).

The definition of A401886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401886.P4613044763593988570

`∑[1-A323239(n+1)]`
-/

namespace A401886.P4613044763593988570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A323239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4613044763593988570

namespace A401886

/-- `∑[1-A323239(n+1)]` -/
def P4613044763593988570.Spec : Prop :=
  ∀ n, P4613044763593988570.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P9259305142288146394

`∑[A087049(2*(n+1))]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401886

/-- `∑[A087049(2*(n+1))]` -/
def P9259305142288146394.Spec : Prop :=
  ∀ n, P9259305142288146394.a n = A401886 (n + 1)

theorem P9259305142288146394.correct : P9259305142288146394.Spec := by
  intro n
  simp only [A401886, Nat.add_sub_cancel]

end A401886

/-! ## A401886.P15634586234879402511

`∑[A105234(2*(n+1))]`
-/

namespace A401886.P15634586234879402511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105234 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P15634586234879402511

namespace A401886

/-- `∑[A105234(2*(n+1))]` -/
def P15634586234879402511.Spec : Prop :=
  ∀ n, P15634586234879402511.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P5418977835040795150

`∑[A105597(4*(n+1))]`
-/

namespace A401886.P5418977835040795150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105597 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P5418977835040795150

namespace A401886

/-- `∑[A105597(4*(n+1))]` -/
def P5418977835040795150.Spec : Prop :=
  ∀ n, P5418977835040795150.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P7834011999579226691

`n+1-A285879(n+1)`
-/

namespace A401886.P7834011999579226691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285879 (n + 1)

end

end A401886.P7834011999579226691

namespace A401886

/-- `n+1-A285879(n+1)` -/
def P7834011999579226691.Spec : Prop :=
  ∀ n, P7834011999579226691.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P13225650668458989778

`∑[(A078461(n+1)-1)²]`
-/

namespace A401886.P13225650668458989778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078461 (n + 1) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P13225650668458989778

namespace A401886

/-- `∑[(A078461(n+1)-1)²]` -/
def P13225650668458989778.Spec : Prop :=
  ∀ n, P13225650668458989778.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4135392640781479190

`∑[1-A087003(n+1)²]`
-/

namespace A401886.P4135392640781479190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087003 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4135392640781479190

namespace A401886

/-- `∑[1-A087003(n+1)²]` -/
def P4135392640781479190.Spec : Prop :=
  ∀ n, P4135392640781479190.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P13592968281977582105

`∑[1-A091069(n+1)²]`
-/

namespace A401886.P13592968281977582105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A091069 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P13592968281977582105

namespace A401886

/-- `∑[1-A091069(n+1)²]` -/
def P13592968281977582105.Spec : Prop :=
  ∀ n, P13592968281977582105.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P5388552537486714421

`∑[1-A099991(n+1)²]`
-/

namespace A401886.P5388552537486714421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A099991 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P5388552537486714421

namespace A401886

/-- `∑[1-A099991(n+1)²]` -/
def P5388552537486714421.Spec : Prop :=
  ∀ n, P5388552537486714421.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P15701524115878672097

`∑[1-A318608(n+1)²]`
-/

namespace A401886.P15701524115878672097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A318608 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P15701524115878672097

namespace A401886

/-- `∑[1-A318608(n+1)²]` -/
def P15701524115878672097.Spec : Prop :=
  ∀ n, P15701524115878672097.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P14439355425527788155

`∑[1-A374367(n+1)²]`
-/

namespace A401886.P14439355425527788155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A374367 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P14439355425527788155

namespace A401886

/-- `∑[1-A374367(n+1)²]` -/
def P14439355425527788155.Spec : Prop :=
  ∀ n, P14439355425527788155.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4414662510201394579

`A285881(n+1)+A057627(n+1)`
-/

namespace A401886.P4414662510201394579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (n + 1) + A057627 (n + 1)

end

end A401886.P4414662510201394579

namespace A401886

/-- `A285881(n+1)+A057627(n+1)` -/
def P4414662510201394579.Spec : Prop :=
  ∀ n, P4414662510201394579.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4670749640473967149

`∑[A107078(2*(n+1))]`
-/

namespace A401886.P4670749640473967149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4670749640473967149

namespace A401886

/-- `∑[A107078(2*(n+1))]` -/
def P4670749640473967149.Spec : Prop :=
  ∀ n, P4670749640473967149.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P841319102253900504

`n+1-A285881(2*(n+1))`
-/

namespace A401886.P841319102253900504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A285881 (2 * (n + 1))

end

end A401886.P841319102253900504

namespace A401886

/-- `n+1-A285881(2*(n+1))` -/
def P841319102253900504.Spec : Prop :=
  ∀ n, P841319102253900504.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P1646992151880772945

`∑[A144101(4*(n+1))]`
-/

namespace A401886.P1646992151880772945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144101 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P1646992151880772945

namespace A401886

/-- `∑[A144101(4*(n+1))]` -/
def P1646992151880772945.Spec : Prop :=
  ∀ n, P1646992151880772945.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P6840629659869660462

`∑[1-A359549((n+1)²)]`
-/

namespace A401886.P6840629659869660462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359549 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P6840629659869660462

namespace A401886

/-- `∑[1-A359549((n+1)²)]` -/
def P6840629659869660462.Spec : Prop :=
  ∀ n, P6840629659869660462.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P2345894306471609326

`∑[A380440(2*(n+1)²)]`
-/

namespace A401886.P2345894306471609326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380440 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P2345894306471609326

namespace A401886

/-- `∑[A380440(2*(n+1)²)]` -/
def P2345894306471609326.Spec : Prop :=
  ∀ n, P2345894306471609326.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P4567434096279616211

`∑[A380439((2*(n+1))²)]`
-/

namespace A401886.P4567434096279616211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 ((2 * (n + 1)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P4567434096279616211

namespace A401886

/-- `∑[A380439((2*(n+1))²)]` -/
def P4567434096279616211.Spec : Prop :=
  ∀ n, P4567434096279616211.a n = A401886 (n + 1)

end A401886

/-! ## A401886.P13013087342539969861

`fp[A337945(n+1)-1]`
-/

namespace A401886.P13013087342539969861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337945 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A401886.P13013087342539969861

namespace A401886

/-- `fp[A337945(n+1)-1]` -/
def P13013087342539969861.Spec : Prop :=
  ∀ n, (P13013087342539969861.a n : ℤ) = A401886 (n + 1)

end A401886

/-! ## A401886.P3775854172136028285

`∑[1-A327276((n+1)²)]`
-/

namespace A401886.P3775854172136028285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A327276 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401886.P3775854172136028285

namespace A401886

/-- `∑[1-A327276((n+1)²)]` -/
def P3775854172136028285.Spec : Prop :=
  ∀ n, P3775854172136028285.a n = A401886 (n + 1)

end A401886

