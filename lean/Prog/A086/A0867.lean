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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B005.C000
import Seq.B005.C001
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
# A086700: Euler phi function applied to the triangular numbers.

The programs for A086700, the canonical program `A086700.P4714237021758211860` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086700 has offset 1).

The definition of A086700 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086700.P4714237021758211860

`A000010((n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086700

/-- `A000010((n+1)*(n+2)/2)` -/
def P4714237021758211860.Spec : Prop :=
  ∀ n, P4714237021758211860.a n = A086700 (n + 1)

theorem P4714237021758211860.correct : P4714237021758211860.Spec := by
  intro n
  simp only [A086700, Nat.add_sub_cancel]

end A086700

/-! ## A086700.P2972177337493225637

`A083542(n+1)/A130658(n)`
-/

namespace A086700.P2972177337493225637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083542 (n + 1) : ℚ) / (A130658 n : ℚ)

end

end A086700.P2972177337493225637

namespace A086700

/-- `A083542(n+1)/A130658(n)` -/
def P2972177337493225637.Spec : Prop :=
  ∀ n, P2972177337493225637.a n = (A086700 (n + 1) : ℚ)

end A086700

/-! ## A086700.P7902907816305237735

`A000010(n+1)*A067541(n+1)`
-/

namespace A086700.P7902907816305237735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A067541 (n + 1)

end

end A086700.P7902907816305237735

namespace A086700

/-- `A000010(n+1)*A067541(n+1)` -/
def P7902907816305237735.Spec : Prop :=
  ∀ n, P7902907816305237735.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P3921417668241682798

`A067541(n+1)*A067541(Δ[n²])`
-/

namespace A086700.P3921417668241682798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (n + 1) * A067541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A086700.P3921417668241682798

namespace A086700

/-- `A067541(n+1)*A067541(Δ[n²])` -/
def P3921417668241682798.Spec : Prop :=
  ∀ n, P3921417668241682798.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P9355645450736455057

`A000010(C(n+2, 2))%(n+2)²`
-/

namespace A086700.P9355645450736455057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (Nat.choose (n + 2) 2)) ((n + 2) ^ 2 : ℤ)

end

end A086700.P9355645450736455057

namespace A086700

/-- `A000010(C(n+2, 2))%(n+2)²` -/
def P9355645450736455057.Spec : Prop :=
  ∀ n, P9355645450736455057.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P7656124410443683579

`A000010(C(n+2, n))+and(2, n²)`
-/

namespace A086700.P7656124410443683579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose (n + 2) n) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A086700.P7656124410443683579

namespace A086700

/-- `A000010(C(n+2, n))+and(2, n²)` -/
def P7656124410443683579.Spec : Prop :=
  ∀ n, P7656124410443683579.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P17834090810105656545

`A000010(∑[2*n-(n-1)])-and(1, 2*n)`
-/

namespace A086700.P17834090810105656545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (Nat.land 1 (2 * n) : ℤ)

end

end A086700.P17834090810105656545

namespace A086700

/-- `A000010(∑[2*n-(n-1)])-and(1, 2*n)` -/
def P17834090810105656545.Spec : Prop :=
  ∀ n, P17834090810105656545.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P18014959997459999610

`A062570(A064038(n+2))`
-/

namespace A086700.P18014959997459999610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A064038 (n + 2)).toNat

end

end A086700.P18014959997459999610

namespace A086700

/-- `A062570(A064038(n+2))` -/
def P18014959997459999610.Spec : Prop :=
  ∀ n, P18014959997459999610.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P6519489563851843787

`A143230(A266725(n+1))`
-/

namespace A086700.P6519489563851843787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143230 (A266725 (n + 1)).toNat

end

end A086700.P6519489563851843787

namespace A086700

/-- `A143230(A266725(n+1))` -/
def P6519489563851843787.Spec : Prop :=
  ∀ n, P6519489563851843787.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P6489693665541093737

`sqrt(A127473(∑[n+1]))`
-/

namespace A086700.P6489693665541093737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A086700.P6489693665541093737

namespace A086700

/-- `sqrt(A127473(∑[n+1]))` -/
def P6489693665541093737.Spec : Prop :=
  ∀ n, P6489693665541093737.a n = (A086700 (n + 1) : ℝ)

end A086700

/-! ## A086700.P4118717391928192071

`A109606(∑[n+1])+1`
-/

namespace A086700.P4118717391928192071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A086700.P4118717391928192071

namespace A086700

/-- `A109606(∑[n+1])+1` -/
def P4118717391928192071.Spec : Prop :=
  ∀ n, P4118717391928192071.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P13166815855313373738

`A039649(∑[n+1])-1`
-/

namespace A086700.P13166815855313373738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A086700.P13166815855313373738

namespace A086700

/-- `A039649(∑[n+1])-1` -/
def P13166815855313373738.Spec : Prop :=
  ∀ n, P13166815855313373738.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P11670750227413438962

`A200905(∑[n+1])/3`
-/

namespace A086700.P11670750227413438962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A086700.P11670750227413438962

namespace A086700

/-- `A200905(∑[n+1])/3` -/
def P11670750227413438962.Spec : Prop :=
  ∀ n, P11670750227413438962.a n = (A086700 (n + 1) : ℚ)

end A086700

/-! ## A086700.P15508561995520024452

`A349137((n+1)²+n)`
-/

namespace A086700.P15508561995520024452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((n + 1) ^ 2 + n)

end

end A086700.P15508561995520024452

namespace A086700

/-- `A349137((n+1)²+n)` -/
def P15508561995520024452.Spec : Prop :=
  ∀ n, P15508561995520024452.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P18207561358772212205

`A102715(A340266(n+1))`
-/

namespace A086700.P18207561358772212205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102715 (A340266 (n + 1)).toNat

end

end A086700.P18207561358772212205

namespace A086700

/-- `A102715(A340266(n+1))` -/
def P18207561358772212205.Spec : Prop :=
  ∀ n, P18207561358772212205.a n = A086700 (n + 1)

end A086700

/-! ## A086700.P1250197003594771524

`A102715(∑[n+3])`
-/

namespace A086700.P1250197003594771524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086700.P1250197003594771524

namespace A086700

/-- `A102715(∑[n+3])` -/
def P1250197003594771524.Spec : Prop :=
  ∀ n, P1250197003594771524.a n = A086700 (n + 1)

end A086700

/-!
# A086701: n-th prime number raised to the n-th composite number.

The programs for A086701, the canonical program `A086701.P1636778428891806570` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086701 has offset 1).

The definition of A086701 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086701.P1636778428891806570

`A000040(n+1)^A002808(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086701

/-- `A000040(n+1)^A002808(n+1)` -/
def P1636778428891806570.Spec : Prop :=
  ∀ n, P1636778428891806570.a n = (A086701 (n + 1) : ℚ)

end A086701

/-! ## A086701.P14591246115763978022

`A000040(n+1)^A018252(n+2)`
-/

namespace A086701.P14591246115763978022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A018252 (n + 2) : ℤ)

end

end A086701.P14591246115763978022

namespace A086701

/-- `A000040(n+1)^A018252(n+2)` -/
def P14591246115763978022.Spec : Prop :=
  ∀ n, P14591246115763978022.a n = (A086701 (n + 1) : ℚ)

end A086701

/-! ## A086701.P6450936527125279939

`record[A006530(n+2)]^A018252(n+2)`
-/

namespace A086701.P6450936527125279939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A018252 (n + 2) : ℤ)

end

end A086701.P6450936527125279939

namespace A086701

/-- `record[A006530(n+2)]^A018252(n+2)` -/
def P6450936527125279939.Spec : Prop :=
  ∀ n, P6450936527125279939.a n = (A086701 (n + 1) : ℚ)

end A086701

/-! ## A086701.P15738502755206021537

`record[A020639(n+2)]^A018252(n+2)`
-/

namespace A086701.P15738502755206021537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A018252 (n + 2) : ℤ)

end

end A086701.P15738502755206021537

namespace A086701

/-- `record[A020639(n+2)]^A018252(n+2)` -/
def P15738502755206021537.Spec : Prop :=
  ∀ n, P15738502755206021537.a n = (A086701 (n + 1) : ℚ)

end A086701

/-! ## A086701.P15097535750265252241

`p?[A018252(n+1)-7]^A018252(n+2)`
-/

namespace A086701.P15097535750265252241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A018252 (n + 2) : ℤ)

end

end A086701.P15097535750265252241

namespace A086701

/-- `p?[A018252(n+1)-7]^A018252(n+2)` -/
def P15097535750265252241.Spec : Prop :=
  ∀ n, P15097535750265252241.a n = (A086701 (n + 1) : ℚ)

end A086701

/-!
# A086704: 

The programs for A086704, there is no canonical definition to state claims against.
-/

/-! ## A086704.P13840680389446334425

`p?[A000040(n+1)+2]^A001359(n+1)`
-/

namespace A086704.P13840680389446334425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A001359 (n + 1) : ℤ)

end

end A086704.P13840680389446334425

/-!
# A086706: Number of Niven numbers less than or equal to n.

The programs for A086706, the canonical program `A086706.P5663091456375214662` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086706 has offset 1).

The definition of A086706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086706.P10256695295975502840

`∑[floor(acot((n+1)%∑{digits}[n+1, #]))]`
-/

namespace A086706.P10256695295975502840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (((n + 1) % ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P10256695295975502840

namespace A086706

/-- `∑[floor(acot((n+1)%∑{digits}[n+1, #]))]` -/
def P10256695295975502840.Spec : Prop :=
  ∀ n, P10256695295975502840.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P5663091456375214662

`∑[C(n+1, lcm(n+1, ∑{digits}[n+1, #]))]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086706

/-- `∑[C(n+1, lcm(n+1, ∑{digits}[n+1, #]))]` -/
def P5663091456375214662.Spec : Prop :=
  ∀ n, (P5663091456375214662.a n : ℤ) = A086706 (n + 1)

theorem P5663091456375214662.correct : P5663091456375214662.Spec := by
  intro n
  simp only [A086706, Nat.add_sub_cancel]

end A086706

/-! ## A086706.P8345262022342756478

`∑[A188641(n+1)]`
-/

namespace A086706.P8345262022342756478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P8345262022342756478

namespace A086706

/-- `∑[A188641(n+1)]` -/
def P8345262022342756478.Spec : Prop :=
  ∀ n, P8345262022342756478.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P10905601285772895699

`∑[floor(atan(A144262(n+1)))]`
-/

namespace A086706.P10905601285772895699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A144262 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P10905601285772895699

namespace A086706

/-- `∑[floor(atan(A144262(n+1)))]` -/
def P10905601285772895699.Spec : Prop :=
  ∀ n, P10905601285772895699.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P8054226185976073786

`∑[floor(acot(A070635(n+1)))]`
-/

namespace A086706.P8054226185976073786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A070635 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P8054226185976073786

namespace A086706

/-- `∑[floor(acot(A070635(n+1)))]` -/
def P8054226185976073786.Spec : Prop :=
  ∀ n, P8054226185976073786.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P2815896225508198893

`∑[round(acot(A065518(n+1)))]`
-/

namespace A086706.P2815896225508198893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A065518 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P2815896225508198893

namespace A086706

/-- `∑[round(acot(A065518(n+1)))]` -/
def P2815896225508198893.Spec : Prop :=
  ∀ n, P2815896225508198893.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P6833361771758273122

`∑[char[A005349(n+1)-1]]`
-/

namespace A086706.P6833361771758273122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P6833361771758273122

namespace A086706

/-- `∑[char[A005349(n+1)-1]]` -/
def P6833361771758273122.Spec : Prop :=
  ∀ n, (P6833361771758273122.a n : ℤ) = A086706 (n + 1)

end A086706

/-! ## A086706.P9342199614878213950

`∑[char[A082516(n)+a(n-1)]]` with `a(0)=0`
-/

namespace A086706.P9342199614878213950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P9342199614878213950

namespace A086706

/-- `∑[char[A082516(n)+a(n-1)]]` -/
def P9342199614878213950.Spec : Prop :=
  ∀ n, (P9342199614878213950.a n : ℤ) = A086706 (n + 1)

end A086706

/-! ## A086706.P9052570142160437844

`∑[A000007((n+1)%∑{digits}[n+1, #])]`
-/

namespace A086706.P9052570142160437844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n + 1) % ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P9052570142160437844

namespace A086706

/-- `∑[A000007((n+1)%∑{digits}[n+1, #])]` -/
def P9052570142160437844.Spec : Prop :=
  ∀ n, P9052570142160437844.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P13739636143679856464

`∑[A000007(A070635(n+1))]`
-/

namespace A086706.P13739636143679856464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P13739636143679856464

namespace A086706

/-- `∑[A000007(A070635(n+1))]` -/
def P13739636143679856464.Spec : Prop :=
  ∀ n, P13739636143679856464.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P94583394191723214

`∑[A301573(A070635(n+1)²)]`
-/

namespace A086706.P94583394191723214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A070635 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P94583394191723214

namespace A086706

/-- `∑[A301573(A070635(n+1)²)]` -/
def P94583394191723214.Spec : Prop :=
  ∀ n, P94583394191723214.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P7415193817896049033

`∑[A334659(A144261(n+1)²)]`
-/

namespace A086706.P7415193817896049033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334659 (A144261 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P7415193817896049033

namespace A086706

/-- `∑[A334659(A144261(n+1)²)]` -/
def P7415193817896049033.Spec : Prop :=
  ∀ n, P7415193817896049033.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P17799718251847693783

`∑[A169585(2*A070635(n+1))]`
-/

namespace A086706.P17799718251847693783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (2 * A070635 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P17799718251847693783

namespace A086706

/-- `∑[A169585(2*A070635(n+1))]` -/
def P17799718251847693783.Spec : Prop :=
  ∀ n, P17799718251847693783.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P17239604302029223785

`∑[A000038(n)^A070635(n+1)]`
-/

namespace A086706.P17239604302029223785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A070635 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P17239604302029223785

namespace A086706

/-- `∑[A000038(n)^A070635(n+1)]` -/
def P17239604302029223785.Spec : Prop :=
  ∀ n, P17239604302029223785.a n = (A086706 (n + 1) : ℚ)

end A086706

/-! ## A086706.P3409436255555436338

`∑[A169585(n)^A070635(n+1)]`
-/

namespace A086706.P3409436255555436338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169585 n : ℚ) ^ (A070635 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P3409436255555436338

namespace A086706

/-- `∑[A169585(n)^A070635(n+1)]` -/
def P3409436255555436338.Spec : Prop :=
  ∀ n, P3409436255555436338.a n = (A086706 (n + 1) : ℚ)

end A086706

/-! ## A086706.P4088806374378996043

`∑[A000038(A070635(n+1)²)/2]`
-/

namespace A086706.P4088806374378996043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A070635 (n + 1) ^ 2).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P4088806374378996043

namespace A086706

/-- `∑[A000038(A070635(n+1)²)/2]` -/
def P4088806374378996043.Spec : Prop :=
  ∀ n, P4088806374378996043.a n = (A086706 (n + 1) : ℚ)

end A086706

/-! ## A086706.P15078895180025845567

`∑[A133653(A070635(n+1)+1)%2]`
-/

namespace A086706.P15078895180025845567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133653 (A070635 (n + 1) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P15078895180025845567

namespace A086706

/-- `∑[A133653(A070635(n+1)+1)%2]` -/
def P15078895180025845567.Spec : Prop :=
  ∀ n, P15078895180025845567.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P2444941112688528876

`∑[A144261(n+1)%A144262(n+1)]`
-/

namespace A086706.P2444941112688528876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144261 (n + 1)) (A144262 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P2444941112688528876

namespace A086706

/-- `∑[A144261(n+1)%A144262(n+1)]` -/
def P2444941112688528876.Spec : Prop :=
  ∀ n, P2444941112688528876.a n = A086706 (n + 1)

end A086706

/-! ## A086706.P7062791658807382244

`∑[A169585(A070635(n+1)+A070635(n+1)²)]`
-/

namespace A086706.P7062791658807382244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (A070635 (n + 1) + A070635 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086706.P7062791658807382244

namespace A086706

/-- `∑[A169585(A070635(n+1)+A070635(n+1)²)]` -/
def P7062791658807382244.Spec : Prop :=
  ∀ n, P7062791658807382244.a n = A086706 (n + 1)

end A086706

/-!
# A086707: Smallest mode of the sequences (n/(n-k)) * binomial(n,n-k).

The programs for A086707, the canonical program `A086707.P12983992211245231064` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086707 has offset 1).

The definition of A086707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086707.P12983992211245231064

`ceil(1/10*(5*(n+1)-4-sqrt(5*(n+1)²)))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086707

/-- `ceil(1/10*(5*(n+1)-4-sqrt(5*(n+1)²)))` -/
def P12983992211245231064.Spec : Prop :=
  ∀ n, P12983992211245231064.a n = A086707 (n + 1)

theorem P12983992211245231064.correct : P12983992211245231064.Spec := by
  intro n
  simp only [A086707, Nat.add_sub_cancel]

end A086707

/-! ## A086707.P15797785223118790612

`∑[A221150(n+12)]`
-/

namespace A086707.P15797785223118790612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086707.P15797785223118790612

namespace A086707

/-- `∑[A221150(n+12)]` -/
def P15797785223118790612.Spec : Prop :=
  ∀ n, P15797785223118790612.a n = A086707 (n + 1)

end A086707

/-! ## A086707.P9239795389824524470

`round(A195121(n+1)/5)`
-/

namespace A086707.P9239795389824524470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195121 (n + 1) : ℚ) / 5)

end

end A086707.P9239795389824524470

namespace A086707

/-- `round(A195121(n+1)/5)` -/
def P9239795389824524470.Spec : Prop :=
  ∀ n, P9239795389824524470.a n = A086707 (n + 1)

end A086707

/-! ## A086707.P9979373735173587634

`round(A310446(n+1)/18)`
-/

namespace A086707.P9979373735173587634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A310446 (n + 1) : ℚ) / 18)

end

end A086707.P9979373735173587634

namespace A086707

/-- `round(A310446(n+1)/18)` -/
def P9979373735173587634.Spec : Prop :=
  ∀ n, P9979373735173587634.a n = A086707 (n + 1)

end A086707

/-! ## A086707.P11202365926228543451

`∑[A105425(n+14)%2]`
-/

namespace A086707.P11202365926228543451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105425 (n + 14)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086707.P11202365926228543451

namespace A086707

/-- `∑[A105425(n+14)%2]` -/
def P11202365926228543451.Spec : Prop :=
  ∀ n, P11202365926228543451.a n = A086707 (n + 1)

end A086707

/-! ## A086707.P12469336545123383723

`round(A127547(n+1)/47)`
-/

namespace A086707.P12469336545123383723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127547 (n + 1) : ℚ) / 47)

end

end A086707.P12469336545123383723

namespace A086707

/-- `round(A127547(n+1)/47)` -/
def P12469336545123383723.Spec : Prop :=
  ∀ n, P12469336545123383723.a n = A086707 (n + 1)

end A086707

/-! ## A086707.P9804324500322471776

`round(∑[3-A001468(n)]/5)`
-/

namespace A086707.P9804324500322471776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5)

end

end A086707.P9804324500322471776

namespace A086707

/-- `round(∑[3-A001468(n)]/5)` -/
def P9804324500322471776.Spec : Prop :=
  ∀ n, P9804324500322471776.a n = A086707 (n + 1)

end A086707

/-! ## A086707.P15949716938012041294

`∑[char[A003231(n+1)-13]]`
-/

namespace A086707.P15949716938012041294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (n + 1) - 13

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086707.P15949716938012041294

namespace A086707

/-- `∑[char[A003231(n+1)-13]]` -/
def P15949716938012041294.Spec : Prop :=
  ∀ n, (P15949716938012041294.a n : ℤ) = A086707 (n + 1)

end A086707

/-! ## A086707.P11411652519638942431

`∑[char[A003259(n+1)+n]]`
-/

namespace A086707.P11411652519638942431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003259 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086707.P11411652519638942431

namespace A086707

/-- `∑[char[A003259(n+1)+n]]` -/
def P11411652519638942431.Spec : Prop :=
  ∀ n, (P11411652519638942431.a n : ℤ) = A086707 (n + 1)

end A086707

/-! ## A086707.P17221412275585915785

`round(n*(n+2)/A054770(n+1))`
-/

namespace A086707.P17221412275585915785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n * (n + 2) : ℚ) / (A054770 (n + 1) : ℚ))

end

end A086707.P17221412275585915785

namespace A086707

/-- `round(n*(n+2)/A054770(n+1))` -/
def P17221412275585915785.Spec : Prop :=
  ∀ n, P17221412275585915785.a n = A086707 (n + 1)

end A086707

/-!
# A086708: Primes p such that p-1 and p+1 are both divisible by cubes (other than 1).

The programs for A086708, the canonical program `A086708.P13578315174771339965` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086708 has offset 1).

The definition of A086708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086708.P13578315174771339965

`∩[A089199(n+1), A089200(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086708

/-- `∩[A089199(n+1), A089200(n+1)]` -/
def P13578315174771339965.Spec : Prop :=
  ∀ n, (P13578315174771339965.a n : ℤ) = A086708 (n + 1)

theorem P13578315174771339965.correct : P13578315174771339965.Spec := by
  intro n
  simp only [A086708, Nat.add_sub_cancel]

end A086708

/-! ## A086708.P5488466295838247890

`∩[A046099(n+1)+1, A089199(n+1)]`
-/

namespace A086708.P5488466295838247890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086708.P5488466295838247890

namespace A086708

/-- `∩[A046099(n+1)+1, A089199(n+1)]` -/
def P5488466295838247890.Spec : Prop :=
  ∀ n, (P5488466295838247890.a n : ℤ) = A086708 (n + 1)

end A086708

/-! ## A086708.P15534488356193293982

`∩[A046099(n+1)-1, A089200(n+1)]`
-/

namespace A086708.P15534488356193293982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086708.P15534488356193293982

namespace A086708

/-- `∩[A046099(n+1)-1, A089200(n+1)]` -/
def P15534488356193293982.Spec : Prop :=
  ∀ n, (P15534488356193293982.a n : ℤ) = A086708 (n + 1)

end A086708

/-! ## A086708.P13079995014659385988

`∩[A020725(A046099(n+1)), A089199(n+1)]`
-/

namespace A086708.P13079995014659385988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A046099 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086708.P13079995014659385988

namespace A086708

/-- `∩[A020725(A046099(n+1)), A089199(n+1)]` -/
def P13079995014659385988.Spec : Prop :=
  ∀ n, (P13079995014659385988.a n : ℤ) = A086708 (n + 1)

end A086708

/-!
# A086711: Primes p such that A001414(p-1) = A001414(p+1), where A001414 = sum of primes dividing n (with repetition).

The programs for A086711, there is no canonical definition to state claims against.
-/

/-! ## A086711.P447792852675670565

`∩[A339180(n+1), A392974(n+1)]`
-/

namespace A086711.P447792852675670565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086711.P447792852675670565

/-! ## A086711.P4642860302489721050

`p?[A392974(n+1)]`
-/

namespace A086711.P4642860302489721050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086711.P4642860302489721050

/-! ## A086711.P20728592070112269

`p?[2*A039752(n+1)+1]`
-/

namespace A086711.P20728592070112269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A039752 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086711.P20728592070112269

/-! ## A086711.P4060618154883052270

`filter[A392974(n+1), A010051(#)]`
-/

namespace A086711.P4060618154883052270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A086711.P4060618154883052270

/-! ## A086711.P16301172072054893376

`filter[A392974(n+1), A069513(#)]`
-/

namespace A086711.P16301172072054893376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A086711.P16301172072054893376

/-!
# A086712: Number of times the n-th prime power can be written as an arithmetic mean of two other prime powers.

The programs for A086712, there is no canonical definition to state claims against.
-/

/-! ## A086712.P9458747642522951275

`A071330(A138929(n+1))-1`
-/

namespace A086712.P9458747642522951275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A138929 (n + 1)).toNat - 1

end

end A086712.P9458747642522951275

/-! ## A086712.P17757410756706011595

`A071330(2*A000961(n+1))-1`
-/

namespace A086712.P17757410756706011595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (2 * A000961 (n + 1)).toNat - 1

end

end A086712.P17757410756706011595

/-! ## A086712.P6599428949586868348

`A071330(record[n/a(A001221(n))])-1` with `a(0)=2`
-/

namespace A086712.P6599428949586868348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat - 1

end

end A086712.P6599428949586868348

/-! ## A086712.P11276473130934150509

`A071330(A000961(n+1)+A000961(n+1))-1`
-/

namespace A086712.P11276473130934150509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A000961 (n + 1) + A000961 (n + 1)).toNat - 1

end

end A086712.P11276473130934150509

/-! ## A086712.P2394332310640980931

`A092673(A076565(n+1))+A071330(2*A000961(n+1))`
-/

namespace A086712.P2394332310640980931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A076565 (n + 1)).toNat + A071330 (2 * A000961 (n + 1)).toNat

end

end A086712.P2394332310640980931

/-! ## A086712.P11221201004179047152

`A280193(A000265(n+1))+A071330(2*A000961(n+1))`
-/

namespace A086712.P11221201004179047152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A000265 (n + 1)).toNat + A071330 (2 * A000961 (n + 1)).toNat

end

end A086712.P11221201004179047152

/-! ## A086712.P15279864116404137238

`(A071330(2*A000961(n+1))+A000217(n))%A000124(n)`
-/

namespace A086712.P15279864116404137238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071330 (2 * A000961 (n + 1)).toNat + A000217 n) (A000124 n)

end

end A086712.P15279864116404137238

/-! ## A086712.P7150561746248610406

`A163805(A106963(n+1))+A071330(A138929(n+1))`
-/

namespace A086712.P7150561746248610406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A106963 (n + 1)).toNat + A071330 (A138929 (n + 1)).toNat

end

end A086712.P7150561746248610406

/-!
# A086713: A squarefree sequence: define a mapping from the set of strings over the alphabet {0,1,2} by f(0)=01201, f(1)=020121, f(2)=0212021 and f of the concatenation of s and t is the concatenation of f(s) and f(t). Then each of 0, f(0), f(f(0)), ... is an initial substring of the next; their limit is the infinite sequence given above.

The programs for A086713, there is no canonical definition to state claims against.
-/

/-! ## A086713.P8766025697876437218

`A080425(lt[A247640(2*n), A297571(2*(n+1))])`
-/

namespace A086713.P8766025697876437218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247640 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086713.P8766025697876437218

/-! ## A086713.P8146304451793475477

`A036578(lt[A027641(n), A030138(n+1)])`
-/

namespace A086713.P8146304451793475477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086713.P8146304451793475477

/-! ## A086713.P4072519074947607179

`A036578(lt[A036579(n+3), A036627(n+2)])`
-/

namespace A086713.P4072519074947607179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036579 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086713.P4072519074947607179

/-! ## A086713.P7073493787135244670

`A036578(lt[A161364(2*n+3), A030138(n+1)])`
-/

namespace A086713.P7073493787135244670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161364 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086713.P7073493787135244670

/-! ## A086713.P12222209694311690550

`A036578(lt[A205965(n+3), A183559(2*n+5)])`
-/

namespace A086713.P12222209694311690550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205965 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183559 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086713.P12222209694311690550

/-!
# A086714: a(1) = 4, a(n) = a(n-1)*(a(n-1) - 1)/2.

The programs for A086714, the canonical program `A086714.P7142627010082859591` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086714 has offset 1).

The definition of A086714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086714.P7142627010082859591

`a(n-1)*(a(n-1)-1)/2` with `a(0)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086714

/-- `a(n-1)*(a(n-1)-1)/2` -/
def P7142627010082859591.Spec : Prop :=
  ∀ n, P7142627010082859591.a n = (A086714 (n + 1) : ℚ)

end A086714

/-! ## A086714.P5652278901411089681

`C(a(n-1), 2)` with `a(0)=4`
-/

namespace A086714.P5652278901411089681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.choose (a (n - 1)) 2

end

end A086714.P5652278901411089681

namespace A086714

/-- `C(a(n-1), 2)` -/
def P5652278901411089681.Spec : Prop :=
  ∀ n, (P5652278901411089681.a n : ℤ) = A086714 (n + 1)

end A086714

/-! ## A086714.P17538527899165140201

`floor((1/2-a(n-1))²/2)` with `a(0)=4`
-/

namespace A086714.P17538527899165140201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊((1 : ℚ) / 2 - (a (n - 1) : ℚ)) ^ 2 / 2⌋

end

end A086714.P17538527899165140201

namespace A086714

/-- `floor((1/2-a(n-1))²/2)` -/
def P17538527899165140201.Spec : Prop :=
  ∀ n, P17538527899165140201.a n = A086714 (n + 1)

end A086714

/-! ## A086714.P6517811110319404673

`(a(n-1)²-a(n-1))/2` with `a(0)=4`
-/

namespace A086714.P6517811110319404673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) ^ 2 - a (n - 1)) / 2

end

end A086714.P6517811110319404673

namespace A086714

/-- `(a(n-1)²-a(n-1))/2` -/
def P6517811110319404673.Spec : Prop :=
  ∀ n, P6517811110319404673.a n = (A086714 (n + 1) : ℚ)

end A086714

/-! ## A086714.P1069713608788896637

`lcm(1-a(n-1), a(n-1))/2` with `a(0)=4`
-/

namespace A086714.P1069713608788896637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway (1 - a (n - 1))) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / 2

end

end A086714.P1069713608788896637

namespace A086714

/-- `lcm(1-a(n-1), a(n-1))/2` -/
def P1069713608788896637.Spec : Prop :=
  ∀ n, P1069713608788896637.a n = (A086714 (n + 1) : ℚ)

end A086714

/-!
# A086715: Primes p such that A001414(p-1) and A001414(p+1) are both prime, where A001414 = sum of primes dividing n (with repetition).

The programs for A086715, there is no canonical definition to state claims against.
-/

/-! ## A086715.P4725585527177980117

`A161681(A128305(n+2))`
-/

namespace A086715.P4725585527177980117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161681 (A128305 (n + 2)).toNat

end

end A086715.P4725585527177980117

/-!
# A086716: Convolution of triangular numbers with partition numbers.

The programs for A086716, there is no canonical definition to state claims against.
-/

/-! ## A086716.P16667706065040859099

`((n+2)*(n+3)*(A000070(n+1)-1)-(2*(n+1)+3)*A182738(n+1)+A259279(n+1))/2`
-/

namespace A086716.P16667706065040859099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (n + 3) : ℤ) * (A000070 (n + 1) - 1) - (2 * (n + 1) + 3 : ℤ) * A182738 (n + 1) + A259279 (n + 1) : ℚ) / 2

end

end A086716.P16667706065040859099

/-! ## A086716.P8950750974850662720

`∑[A085360(n+1)]`
-/

namespace A086716.P8950750974850662720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P8950750974850662720

/-! ## A086716.P2046357521511686970

`∑[∑[A026905(n+1)]]`
-/

namespace A086716.P2046357521511686970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P2046357521511686970

/-! ## A086716.P16539240727082355415

`∑[∑[∑[A000041(n+1)]]]`
-/

namespace A086716.P16539240727082355415
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P16539240727082355415

/-! ## A086716.P13580527855604059384

`∑[∑[A000070(n+1)-1]]`
-/

namespace A086716.P13580527855604059384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P13580527855604059384

/-! ## A086716.P1433423039522198155

`∑[∑[A216053(n+2)-2]]`
-/

namespace A086716.P1433423039522198155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P1433423039522198155

/-! ## A086716.P12182749568483303199

`∑[∑[2*∑[A000041(2*n-(n-1))/2]]]`
-/

namespace A086716.P12182749568483303199
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P12182749568483303199

/-! ## A086716.P17540843973974453590

`A014160(n+1)-A000217(n+2)`
-/

namespace A086716.P17540843973974453590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014160 (n + 1) - A000217 (n + 2)

end

end A086716.P17540843973974453590

/-! ## A086716.P448211484578202522

`∑[∑[∑[record[A035363(n)]]]]`
-/

namespace A086716.P448211484578202522
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P448211484578202522

/-! ## A086716.P13734720059868987429

`∑[∑[∑[A035363(2*(n+1))]]]`
-/

namespace A086716.P13734720059868987429
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P13734720059868987429

/-! ## A086716.P5478708792660590818

`∑[∑[∑[A100824(2*(n+1))]]]`
-/

namespace A086716.P5478708792660590818
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086716.P5478708792660590818

/-!
# A086717: Convolution of primes with partition numbers.

The programs for A086717, there is no canonical definition to state claims against.
-/

/-! ## A086717.P13072419770330248801

`∑[A118844((n+1)²+1)-1]`
-/

namespace A086717.P13072419770330248801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118844 ((n + 1) ^ 2 + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086717.P13072419770330248801

/-! ## A086717.P14310180729432514246

`∑[∑[A003141(2*n+1)+2]]`
-/

namespace A086717.P14310180729432514246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003141 (2 * n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086717.P14310180729432514246

/-! ## A086717.P7387805761453950751

`∑[A342522(∑[A342499(2*(n+1))])]`
-/

namespace A086717.P7387805761453950751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342499 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086717.P7387805761453950751

/-!
# A086718: Convolution of sequence of primes with sequence sigma(n).

The programs for A086718, there is no canonical definition to state claims against.
-/

/-! ## A086718.P16615191865319480213

`A105527(A199332(a(n-1))+4)` with `a(0)=2`
-/

namespace A086718.P16615191865319480213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A105527 (A199332 (a (n - 1)).toNat + 4).toNat

end

end A086718.P16615191865319480213

/-! ## A086718.P7989787591596499041

`A353355(A008059(n))+A000085(n)`
-/

namespace A086718.P7989787591596499041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353355 (A008059 n).toNat + A000085 n

end

end A086718.P7989787591596499041

/-!
# A086719: Numbers n == 1, 2, 5 or 6 (mod 8) such that there is only one solution to i^2+j^2+k^2=n, i >= j >= k >= 0.

The programs for A086719, there is no canonical definition to state claims against.
-/

/-! ## A086719.P8676711418997330722

`lt[A000164(n)², and(2, n+1)]`
-/

namespace A086719.P8676711418997330722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086719.P8676711418997330722

/-! ## A086719.P9114816773249036643

`record[abs(or(2, -A337218(n+1)))]`
-/

namespace A086719.P9114816773249036643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 (-A337218 (n + 1))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086719.P9114816773249036643

/-! ## A086719.P8474098183328791395

`record[A190846(A094739(n+1))]`
-/

namespace A086719.P8474098183328791395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190846 (A094739 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086719.P8474098183328791395

/-! ## A086719.P7693965629453029212

`record[A190846(A337218(n+1))]`
-/

namespace A086719.P7693965629453029212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190846 (A337218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086719.P7693965629453029212

/-! ## A086719.P12078772622264185607

`eq[-A000164(n), A087960(n)]`
-/

namespace A086719.P12078772622264185607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086719.P12078772622264185607

/-!
# A086732: Convolution of A000203 with partition function (A000041) of positive integers.

The programs for A086732, there is no canonical definition to state claims against.
-/

/-! ## A086732.P1133829313570884336

`A066186(n+2)-A000203(n+2)`
-/

namespace A086732.P1133829313570884336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 2) - A000203 (n + 2)

end

end A086732.P1133829313570884336

/-! ## A086732.P7505362018387189737

`(n+2)*A000041(n+2)-A000203(n+2)`
-/

namespace A086732.P7505362018387189737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000041 (n + 2) - A000203 (n + 2)

end

end A086732.P7505362018387189737

/-! ## A086732.P1787551451465820056

`A162329(n+2)`
-/

namespace A086732.P1787551451465820056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 2)

end

end A086732.P1787551451465820056

/-! ## A086732.P18058220670212087426

`A182724(n+2)+A086738(n+2)`
-/

namespace A086732.P18058220670212087426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182724 (n + 2) + A086738 (n + 2)

end

end A086732.P18058220670212087426

/-! ## A086732.P17767417644498878187

`A220486(n+2)+A094471(n+2)`
-/

namespace A086732.P17767417644498878187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220486 (n + 2) + A094471 (n + 2)

end

end A086732.P17767417644498878187

/-! ## A086732.P5141121007990180685

`A220477(n+2)+A196087(n+2)`
-/

namespace A086732.P5141121007990180685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (n + 2) + A196087 (n + 2)

end

end A086732.P5141121007990180685

/-! ## A086732.P16917148408461939712

`A066186(n+2)-A245092(2*n+3)`
-/

namespace A086732.P16917148408461939712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 2) - A245092 (2 * n + 3)

end

end A086732.P16917148408461939712

/-! ## A086732.P320931943041793150

`∑[Δ[A066186(n+1)]-A340793(n+2)]`
-/

namespace A086732.P320931943041793150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A340793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086732.P320931943041793150

/-! ## A086732.P6481047416025625730

`A066966(n+2)+A066967(n+2)-A000203(n+2)`
-/

namespace A086732.P6481047416025625730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066966 (n + 2) + (A066967 (n + 2) - A000203 (n + 2))

end

end A086732.P6481047416025625730

/-! ## A086732.P11808701417792865862

`A182738(n+2)-(A182738(n+1)+A000203(n+2))`
-/

namespace A086732.P11808701417792865862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182738 (n + 2) - (A182738 (n + 1) + A000203 (n + 2))

end

end A086732.P11808701417792865862

/-! ## A086732.P15550869509591398958

`A268191(n+2)+A220907(n+2)`
-/

namespace A086732.P15550869509591398958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 2) + A220907 (n + 2)

end

end A086732.P15550869509591398958

/-!
# A086734: Convolution of the prime numbers with phi(n).

The programs for A086734, there is no canonical definition to state claims against.
-/

/-! ## A086734.P4215706149530163573

`A324935(A008137(n)+A000010(n+1))`
-/

namespace A086734.P4215706149530163573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (A008137 n + A000010 (n + 1)).toNat

end

end A086734.P4215706149530163573

/-! ## A086734.P5783651446328008119

`A325223(n+1)+A276882(A325232(n))`
-/

namespace A086734.P5783651446328008119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325223 (n + 1) + A276882 (A325232 n).toNat

end

end A086734.P5783651446328008119

/-! ## A086734.P1577183997142314283

`A325226(n+1)+A276882(A325232(n))`
-/

namespace A086734.P1577183997142314283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (n + 1) + A276882 (A325232 n).toNat

end

end A086734.P1577183997142314283

/-!
# A086735: Convolution of the prime numbers with phi(n) convoluted with sigma(n).

The programs for A086735, there is no canonical definition to state claims against.
-/

/-! ## A086735.P13802349669005854210

`A307824(A304792(n))-A334860(n)`
-/

namespace A086735.P13802349669005854210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (A304792 n).toNat - A334860 n

end

end A086735.P13802349669005854210

/-!
# A086736: Sum(j=1,n,floor(A000041(j)/j)).

The programs for A086736, there is no canonical definition to state claims against.
-/

/-! ## A086736.P14641094483210030722

`∑[A086740(n+1)]`
-/

namespace A086736.P14641094483210030722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P14641094483210030722

/-! ## A086736.P645670657949677943

`∑[floor(A000041(n+1)/(n+1))]`
-/

namespace A086736.P645670657949677943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000041 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P645670657949677943

/-! ## A086736.P11391662269234659388

`∑[round(A058984(n+1)/(n+1))]`
-/

namespace A086736.P11391662269234659388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A058984 (n + 1) : ℚ) / (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P11391662269234659388

/-! ## A086736.P4591721200022225201

`∑[floor(Δ[A000070(n)]/(n+1))]`
-/

namespace A086736.P4591721200022225201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P4591721200022225201

/-! ## A086736.P10776926511213520315

`∑[floor(A035363(2*(n+1))/(n+1))]`
-/

namespace A086736.P10776926511213520315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035363 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P10776926511213520315

/-! ## A086736.P13335938099261243888

`∑[floor(A119620(2*(n+1))/(n+1))]`
-/

namespace A086736.P13335938099261243888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A119620 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P13335938099261243888

/-! ## A086736.P1163592622543507356

`∑[floor(record[A035444(n)]/(n+1))]`
-/

namespace A086736.P1163592622543507356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P1163592622543507356

/-! ## A086736.P9424608369136972296

`∑[floor(record[A035377(n)]/(n+1))]`
-/

namespace A086736.P9424608369136972296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086736.P9424608369136972296

/-!
# A086737: a(n) = A000217(A000041(n)).

The programs for A086737, there is no canonical definition to state claims against.
-/

/-! ## A086737.P8372212807145048534

`A000217(A000041(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086737.P8372212807145048534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000041 n).toNat

end

end A086737.P8372212807145048534

/-! ## A086737.P493255787418527375

`A355389(n)+A000041(n)`
-/

namespace A086737.P493255787418527375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355389 n + A000041 n

end

end A086737.P493255787418527375

/-! ## A086737.P18063681293871309083

`A001255(n)-A355389(n)`
-/

namespace A086737.P18063681293871309083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n - A355389 n

end

end A086737.P18063681293871309083

/-! ## A086737.P7097650095272842944

`(A001255(n)+A000041(n))/2`
-/

namespace A086737.P7097650095272842944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001255 n + A000041 n : ℚ) / 2

end

end A086737.P7097650095272842944

/-! ## A086737.P11054702134081159807

`A000041(n)+A355390(n)/2`
-/

namespace A086737.P11054702134081159807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) + (A355390 n : ℚ) / 2

end

end A086737.P11054702134081159807

/-! ## A086737.P5922460577202609033

`A001255(n)-A355390(n)/2`
-/

namespace A086737.P5922460577202609033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001255 n : ℚ) - (A355390 n : ℚ) / 2

end

end A086737.P5922460577202609033

/-! ## A086737.P8596683731804656699

`A000041(n)-(A355389(n)-A355390(n))`
-/

namespace A086737.P8596683731804656699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A355389 n - A355390 n)

end

end A086737.P8596683731804656699

/-! ## A086737.P2939752884019029078

`(A295341(n)+A000726(n))*(A295341(n)+A000726(n)+1)/2`
-/

namespace A086737.P2939752884019029078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A295341 n + A000726 n) * (A295341 n + A000726 n + 1) : ℚ) / 2

end

end A086737.P2939752884019029078

/-! ## A086737.P4126314074377666311

`C(A000065(n)+2, 2)`
-/

namespace A086737.P4126314074377666311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000065 n + 2).toNat 2

end

end A086737.P4126314074377666311

/-! ## A086737.P16397572170212049020

`C(∑[A002865(n)]+1, 2)`
-/

namespace A086737.P16397572170212049020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A086737.P16397572170212049020

/-! ## A086737.P12396208920601682198

`C(A035363(2*n)+1, 2)`
-/

namespace A086737.P12396208920601682198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035363 (2 * n) + 1).toNat 2

end

end A086737.P12396208920601682198

/-! ## A086737.P236459224632126292

`C(A119620(2*n)+1, 2)`
-/

namespace A086737.P236459224632126292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119620 (2 * n) + 1).toNat 2

end

end A086737.P236459224632126292

/-! ## A086737.P6674945278570504094

`C(A139582(n)/2+1, 2)`
-/

namespace A086737.P6674945278570504094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2 + 1)).toNat 2

end

end A086737.P6674945278570504094

/-! ## A086737.P8492952379373423720

`C(A027193(n)+A027187(n)+1, 2)`
-/

namespace A086737.P8492952379373423720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027193 n + A027187 n + 1).toNat 2

end

end A086737.P8492952379373423720

/-! ## A086737.P10003426307877621281

`C(A239262(n)+A239260(n)+1, 2)`
-/

namespace A086737.P10003426307877621281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A239262 n + A239260 n + 1).toNat 2

end

end A086737.P10003426307877621281

/-! ## A086737.P8299083738703646201

`C(A168015(n)-A168014(n)+1, 2)`
-/

namespace A086737.P8299083738703646201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168015 n - A168014 n + 1).toNat 2

end

end A086737.P8299083738703646201

/-! ## A086737.P7486335911747221462

`C(A047967(n)+abs(A081360(n))+1, 2)`
-/

namespace A086737.P7486335911747221462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A047967 n + |A081360 n| + 1).toNat 2

end

end A086737.P7486335911747221462

/-! ## A086737.P12522901655855638908

`C(A100824(2*n)+1, 2)`
-/

namespace A086737.P12522901655855638908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100824 (2 * n) + 1).toNat 2

end

end A086737.P12522901655855638908

/-! ## A086737.P4825285430477555532

`(A182703(∑[n]+1)+A001255(n))/2`
-/

namespace A086737.P4825285430477555532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182703 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A001255 n : ℚ) / 2

end

end A086737.P4825285430477555532

/-! ## A086737.P16258032516610046340

`A370207(∑[4*n])`
-/

namespace A086737.P16258032516610046340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370207 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086737.P16258032516610046340

/-!
# A086738: A000041(n) - A000203(n).

The programs for A086738, there is no canonical definition to state claims against.
-/

/-! ## A086738.P4321203432850491274

`A000041(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086738.P4321203432850491274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000203 (n + 1)

end

end A086738.P4321203432850491274

/-! ## A086738.P3767085685005228484

`∑{d}[n+1, A000837(#)-#]`
-/

namespace A086738.P3767085685005228484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000837 d - (d : ℤ))

end

end A086738.P3767085685005228484

/-! ## A086738.P12187173912430169276

`A086739(n+1)-A051612(n+1)`
-/

namespace A086738.P12187173912430169276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086739 (n + 1) - A051612 (n + 1)

end

end A086738.P12187173912430169276

/-! ## A086738.P3965981530273405530

`A195364(n+1)-A007503(n+1)`
-/

namespace A086738.P3965981530273405530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - A007503 (n + 1)

end

end A086738.P3965981530273405530

/-! ## A086738.P12313851395497010839

`A144300(n+1)-A065608(n+1)`
-/

namespace A086738.P12313851395497010839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 1) - A065608 (n + 1)

end

end A086738.P12313851395497010839

/-! ## A086738.P6426745772108276789

`A183151(n+1)-A152991(n+1)`
-/

namespace A086738.P6426745772108276789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183151 (n + 1) - A152991 (n + 1)

end

end A086738.P6426745772108276789

/-! ## A086738.P14280457188387577581

`A000041(n+1)-A245092(2*n+1)`
-/

namespace A086738.P14280457188387577581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A245092 (2 * n + 1)

end

end A086738.P14280457188387577581

/-! ## A086738.P6184843842039563771

`A195364(n+1)-(A000203(n+1)+A000005(n+1))`
-/

namespace A086738.P6184843842039563771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - (A000203 (n + 1) + A000005 (n + 1))

end

end A086738.P6184843842039563771

/-! ## A086738.P1984243206173737014

`A000041(n+1)-(A326142(n+1)+A007947(n+1))`
-/

namespace A086738.P1984243206173737014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A326142 (n + 1) + A007947 (n + 1))

end

end A086738.P1984243206173737014

/-! ## A086738.P6717821788263279000

`Δ[A000070(n)]-∑{d}[n+1, #]`
-/

namespace A086738.P6717821788263279000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A086738.P6717821788263279000

/-! ## A086738.P7951446933975391153

`A000070(n+1)-(A000203(n+1)+A000070(n))`
-/

namespace A086738.P7951446933975391153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A000203 (n + 1) + A000070 n)

end

end A086738.P7951446933975391153

/-! ## A086738.P13389556226146014554

`A162329(n+1)-A182724(n+1)`
-/

namespace A086738.P13389556226146014554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162329 (n + 1) - A182724 (n + 1)

end

end A086738.P13389556226146014554

/-! ## A086738.P10537356469789401196

`A000041(n+1)+A162329(n+1)-A066186(n+1)`
-/

namespace A086738.P10537356469789401196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A162329 (n + 1) - A066186 (n + 1))

end

end A086738.P10537356469789401196

/-! ## A086738.P11927489848455311635

`A183011(n+1)/A183010(n+1)-A000203(n+1)`
-/

namespace A086738.P11927489848455311635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183011 (n + 1) : ℚ) / (A183010 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ)

end

end A086738.P11927489848455311635

/-! ## A086738.P14788873799733713549

`A000041(n+1)-A262610(2*n+1)`
-/

namespace A086738.P14788873799733713549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A262610 (2 * n + 1)

end

end A086738.P14788873799733713549

/-! ## A086738.P17764249480043056411

`record[A035363(n)]-∑{d}[n+1, #]`
-/

namespace A086738.P17764249480043056411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A086738.P17764249480043056411

/-! ## A086738.P4821122982381194610

`record[A035444(n)]-∑{d}[n+1, #]`
-/

namespace A086738.P4821122982381194610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A086738.P4821122982381194610

/-! ## A086738.P13726661089693374759

`record[A035377(n)]-∑{d}[n+1, #]`
-/

namespace A086738.P13726661089693374759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A086738.P13726661089693374759

/-! ## A086738.P3983670592083898840

`A268191(n+1)-A215513(n+1)`
-/

namespace A086738.P3983670592083898840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 1) - A215513 (n + 1)

end

end A086738.P3983670592083898840

/-! ## A086738.P14445244900448472865

`A000041(n+1)-A357552(n+1)/A001700(n)`
-/

namespace A086738.P14445244900448472865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) : ℚ) - (A357552 (n + 1) : ℚ) / (A001700 n : ℚ)

end

end A086738.P14445244900448472865

/-!
# A086739: A000041(n)-A000010(n).

The programs for A086739, there is no canonical definition to state claims against.
-/

/-! ## A086739.P2937251970106147341

`A000041(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086739.P2937251970106147341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A000010 (n + 1)

end

end A086739.P2937251970106147341

/-! ## A086739.P2391407208744067977

`A086738(n+1)+A051612(n+1)`
-/

namespace A086739.P2391407208744067977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086738 (n + 1) + A051612 (n + 1)

end

end A086739.P2391407208744067977

/-! ## A086739.P1511017490790741600

`A144300(n+1)-A063070(n+1)`
-/

namespace A086739.P1511017490790741600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144300 (n + 1) - A063070 (n + 1)

end

end A086739.P1511017490790741600

/-! ## A086739.P7760659896625790600

`A183151(n+1)-A037228(n+1)`
-/

namespace A086739.P7760659896625790600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183151 (n + 1) - A037228 (n + 1)

end

end A086739.P7760659896625790600

/-! ## A086739.P15669504679147282577

`A195364(n+1)-A061468(n+1)`
-/

namespace A086739.P15669504679147282577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195364 (n + 1) - A061468 (n + 1)

end

end A086739.P15669504679147282577

/-! ## A086739.P16007984776502849735

`Δ[A000070(n)]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A086739.P16007984776502849735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A086739.P16007984776502849735

/-! ## A086739.P6321084015219335322

`A000070(n+1)-(A000070(n)+A000010(n+1))`
-/

namespace A086739.P6321084015219335322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A000070 n + A000010 (n + 1))

end

end A086739.P6321084015219335322

/-! ## A086739.P3869037949898049749

`record[A035363(n)]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A086739.P3869037949898049749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A086739.P3869037949898049749

/-! ## A086739.P12110510416977189711

`record[A035444(n)]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A086739.P12110510416977189711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A086739.P12110510416977189711

/-! ## A086739.P7478421333161388027

`record[A035377(n)]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A086739.P7478421333161388027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A086739.P7478421333161388027

/-! ## A086739.P4471030470994712111

`record[A114099(n)]-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A086739.P4471030470994712111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A086739.P4471030470994712111

/-!
# A086740: Floor(A000041(n)/n).

The programs for A086740, there is no canonical definition to state claims against.
-/

/-! ## A086740.P6898117340861750863

`floor(A000041(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086740.P6898117340861750863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000041 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P6898117340861750863

/-! ## A086740.P735106465416712432

`floor((A000065(n+1)+1)/(n+1))`
-/

namespace A086740.P735106465416712432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000065 (n + 1) + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P735106465416712432

/-! ## A086740.P7840396684722617366

`floor(Δ[A000070(n)]/(n+1))`
-/

namespace A086740.P7840396684722617366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P7840396684722617366

/-! ## A086740.P4848022305717788487

`floor(Δ[A025065(2*n)]/(n+1))`
-/

namespace A086740.P4848022305717788487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P4848022305717788487

/-! ## A086740.P14976751451153449963

`floor(record[A035363(n)]/(n+1))`
-/

namespace A086740.P14976751451153449963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P14976751451153449963

/-! ## A086740.P4165244760253987113

`floor(record[A035444(n)]/(n+1))`
-/

namespace A086740.P4165244760253987113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P4165244760253987113

/-! ## A086740.P17070175592607648569

`floor(record[A035377(n)]/(n+1))`
-/

namespace A086740.P17070175592607648569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P17070175592607648569

/-! ## A086740.P5350721842107764068

`floor(sqrt(A001255(n+1))/(n+1))`
-/

namespace A086740.P5350721842107764068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A001255 (n + 1) : ℝ) / (n + 1 : ℝ)⌋

end

end A086740.P5350721842107764068

/-! ## A086740.P10142948971569980088

`floor(record[A114099(n)]/(n+1))`
-/

namespace A086740.P10142948971569980088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P10142948971569980088

/-! ## A086740.P5759505152343481138

`floor(A026807(∑[n]+1)/(n+1))`
-/

namespace A086740.P5759505152343481138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026807 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A086740.P5759505152343481138

/-!
# A086741: a(n) = A026905(n) - A014284(n).

The programs for A086741, there is no canonical definition to state claims against.
-/

/-! ## A086741.P2273526272129570135

`A026905(n+1)-A014284(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086741.P2273526272129570135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) - A014284 (n + 1)

end

end A086741.P2273526272129570135

/-! ## A086741.P245107342743514113

`A026905(n+1)-(A007504(n)+1)`
-/

namespace A086741.P245107342743514113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 1) - (A007504 n + 1)

end

end A086741.P245107342743514113

/-! ## A086741.P1563996290884588195

`A000070(n+1)-(A007504(n)+2)`
-/

namespace A086741.P1563996290884588195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) - (A007504 n + 2)

end

end A086741.P1563996290884588195

/-! ## A086741.P3338596398426914064

`∑[Δ[A000070(n)]-A008578(n+1)]`
-/

namespace A086741.P3338596398426914064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086741.P3338596398426914064

/-! ## A086741.P799744419061622661

`∑[record[A035363(n)]-A008578(n+1)]`
-/

namespace A086741.P799744419061622661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086741.P799744419061622661

/-!
# A086743: Numbers n such that the coefficient of x^n equals 0 in Product_{k>=1} (1 - x^(3^k)).

The programs for A086743, there is no canonical definition to state claims against.
-/

/-! ## A086743.P6082462617268284022

`comp[3*(a(floor(n/2))+n%2)]` with `a(0)=0`
-/

namespace A086743.P6082462617268284022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * (f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A086743.P6082462617268284022

/-! ## A086743.P9447026465089273705

`comp[3*(a(floor(n/2))+and(1, n))]` with `a(0)=0`
-/

namespace A086743.P9447026465089273705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * (f1 ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A086743.P9447026465089273705

/-! ## A086743.P3456122362475035427

`comp[∑[3*a(∑[n]%n)-3]-2]` with `a(0)=2`
-/

namespace A086743.P3456122362475035427
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 * f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A086743.P3456122362475035427

/-! ## A086743.P13237650464669888379

`comp[3*(a(floor(n/2))+2-gcd(2, n))]` with `a(0)=0`
-/

namespace A086743.P13237650464669888379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * (f1 ⌊(n : ℚ) / 2⌋.toNat + (2 - (Nat.gcd 2 n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A086743.P13237650464669888379

/-! ## A086743.P2943939953338089264

`comp[lcm(3, (∑[and(n, -n)^log2(3)]+n)/2)]`
-/

namespace A086743.P2943939953338089264
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f2 j + (n : ℝ)) / 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A086743.P2943939953338089264

/-! ## A086743.P8108945805912919693

`comp[-(a(n-2)+a(xor(n, n-2)/2))]` with `a(0)=0, a(1)=3`
-/

namespace A086743.P8108945805912919693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  -(f1 (n - 2) + f1 (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 2) : ℚ) / 2)).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A086743.P8108945805912919693

/-! ## A086743.P17749510490989939920

`comp[∑[ceil(3^val(n+1, 2)/2)-(-1)^n]]`
-/

namespace A086743.P17749510490989939920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉ - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A086743.P17749510490989939920

/-! ## A086743.P3810578401548186116

`comp[C((∑[and(n, -n)^log2(3)]+n)/2, xor(n, n+1))]`
-/

namespace A086743.P3810578401548186116
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f2 j + (n : ℝ)) / 2)).toNat (Nat.xor n (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A086743.P3810578401548186116

/-!
# A086746: Multiples of 3018.

The programs for A086746, the canonical program `A086746.P15398261513163024000` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086746 has offset 1).

The definition of A086746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086746.P15398261513163024000

`3*(6*(n+1)+25*40*(n+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086746

/-- `3*(6*(n+1)+25*40*(n+1))` -/
def P15398261513163024000.Spec : Prop :=
  ∀ n, (P15398261513163024000.a n : ℤ) = A086746 (n + 1)

theorem P15398261513163024000.correct : P15398261513163024000.Spec := by
  intro n
  simp only [A086746, Nat.add_sub_cancel]

end A086746

/-!
# A086747: Baum-Sweet sequence: a(n) = 1 if binary representation of n contains no block of consecutive zeros of odd length; otherwise a(n) = 0.

The programs for A086747, the canonical program `A086747.P8680949649443057627` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086747 has offset 0).

The definition of A086747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086747.P15146322881993159463

`char[A060142(n+1)]`
-/

namespace A086747.P15146322881993159463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086747.P15146322881993159463

namespace A086747

/-- `char[A060142(n+1)]` -/
def P15146322881993159463.Spec : Prop :=
  ∀ n, (P15146322881993159463.a n : ℤ) = A086747 n

end A086747

/-! ## A086747.P8680949649443057627

`char[eq[1, A316831(n)]]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086747

/-- `char[eq[1, A316831(n)]]` -/
def P8680949649443057627.Spec : Prop :=
  ∀ n, (P8680949649443057627.a n : ℤ) = A086747 n

theorem P8680949649443057627.correct : P8680949649443057627.Spec := by
  intro n
  simp only [A086747]

end A086747

/-! ## A086747.P11266317637329732068

`char[∑[A219609(n+1)]]`
-/

namespace A086747.P11266317637329732068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086747.P11266317637329732068

namespace A086747

/-- `char[∑[A219609(n+1)]]` -/
def P11266317637329732068.Spec : Prop :=
  ∀ n, (P11266317637329732068.a n : ℤ) = A086747 n

end A086747

/-! ## A086747.P116306396054356117

`a(and(1, A124758(n)))` with `a(0)=0, a(1)=1`
-/

namespace A086747.P116306396054356117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (Int.land 1 (A124758 n)).toNat

end

end A086747.P116306396054356117

namespace A086747

/-- `a(and(1, A124758(n)))` -/
def P116306396054356117.Spec : Prop :=
  ∀ n, (P116306396054356117.a n : ℤ) = A086747 n

end A086747

/-! ## A086747.P17294027781567944155

`A326822(A361020(n))`
-/

namespace A086747.P17294027781567944155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (A361020 n).toNat

end

end A086747.P17294027781567944155

namespace A086747

/-- `A326822(A361020(n))` -/
def P17294027781567944155.Spec : Prop :=
  ∀ n, P17294027781567944155.a n = A086747 n

end A086747

/-! ## A086747.P14204268774477867078

`char[A028310(A060142(n))]`
-/

namespace A086747.P14204268774477867078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060142 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086747.P14204268774477867078

namespace A086747

/-- `char[A028310(A060142(n))]` -/
def P14204268774477867078.Spec : Prop :=
  ∀ n, (P14204268774477867078.a n : ℤ) = A086747 n

end A086747

/-! ## A086747.P11712910256814188110

`and(A054977(n), A124758(n))`
-/

namespace A086747.P11712910256814188110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A124758 n)

end

end A086747.P11712910256814188110

namespace A086747

/-- `and(A054977(n), A124758(n))` -/
def P11712910256814188110.Spec : Prop :=
  ∀ n, P11712910256814188110.a n = A086747 n

end A086747

/-! ## A086747.P7192547643741169324

`and(A057427(n), A124758(n))`
-/

namespace A086747.P7192547643741169324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A124758 n)

end

end A086747.P7192547643741169324

namespace A086747

/-- `and(A057427(n), A124758(n))` -/
def P7192547643741169324.Spec : Prop :=
  ∀ n, P7192547643741169324.a n = A086747 n

end A086747

/-! ## A086747.P15701789561651327168

`and(A123640(n), A124758(n))`
-/

namespace A086747.P15701789561651327168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123640 n) (A124758 n)

end

end A086747.P15701789561651327168

namespace A086747

/-- `and(A123640(n), A124758(n))` -/
def P15701789561651327168.Spec : Prop :=
  ∀ n, P15701789561651327168.a n = A086747 n

end A086747

/-! ## A086747.P3556206024559894971

`char[A336231(A026351(n+1))]`
-/

namespace A086747.P3556206024559894971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (A026351 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086747.P3556206024559894971

namespace A086747

/-- `char[A336231(A026351(n+1))]` -/
def P3556206024559894971.Spec : Prop :=
  ∀ n, (P3556206024559894971.a n : ℤ) = A086747 n

end A086747

/-! ## A086747.P4889693655571970136

`and(1, A090026(n)*A124758(n))`
-/

namespace A086747.P4889693655571970136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A090026 n * A124758 n)

end

end A086747.P4889693655571970136

namespace A086747

/-- `and(1, A090026(n)*A124758(n))` -/
def P4889693655571970136.Spec : Prop :=
  ∀ n, P4889693655571970136.a n = A086747 n

end A086747

/-! ## A086747.P14222693688375228545

`char[A060142(n)-A178225(2*n)]`
-/

namespace A086747.P14222693688375228545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n - A178225 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086747.P14222693688375228545

namespace A086747

/-- `char[A060142(n)-A178225(2*n)]` -/
def P14222693688375228545.Spec : Prop :=
  ∀ n, (P14222693688375228545.a n : ℤ) = A086747 n

end A086747

/-! ## A086747.P7576467862726685185

`and(1, A002645(n+1)*A124758(n))`
-/

namespace A086747.P7576467862726685185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002645 (n + 1) * A124758 n)

end

end A086747.P7576467862726685185

namespace A086747

/-- `and(1, A002645(n+1)*A124758(n))` -/
def P7576467862726685185.Spec : Prop :=
  ∀ n, P7576467862726685185.a n = A086747 n

end A086747

/-! ## A086747.P8090644092335336814

`and(1, A006686(n+1)*A124758(n))`
-/

namespace A086747.P8090644092335336814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006686 (n + 1) * A124758 n)

end

end A086747.P8090644092335336814

namespace A086747

/-- `and(1, A006686(n+1)*A124758(n))` -/
def P8090644092335336814.Spec : Prop :=
  ∀ n, P8090644092335336814.a n = A086747 n

end A086747

/-! ## A086747.P14687697337585367630

`and(1, A037896(n+1)*A124758(n))`
-/

namespace A086747.P14687697337585367630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A037896 (n + 1) * A124758 n)

end

end A086747.P14687697337585367630

namespace A086747

/-- `and(1, A037896(n+1)*A124758(n))` -/
def P14687697337585367630.Spec : Prop :=
  ∀ n, P14687697337585367630.a n = A086747 n

end A086747

/-! ## A086747.P5929168171134660500

`and(1, A006530(n+2)*A124758(n))`
-/

namespace A086747.P5929168171134660500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006530 (n + 2) * A124758 n)

end

end A086747.P5929168171134660500

namespace A086747

/-- `and(1, A006530(n+2)*A124758(n))` -/
def P5929168171134660500.Spec : Prop :=
  ∀ n, P5929168171134660500.a n = A086747 n

end A086747

/-! ## A086747.P3608762815759193394

`A000007(A343030(n)+A000007(n))`
-/

namespace A086747.P3608762815759193394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A343030 n + A000007 n).toNat

end

end A086747.P3608762815759193394

namespace A086747

/-- `A000007(A343030(n)+A000007(n))` -/
def P3608762815759193394.Spec : Prop :=
  ∀ n, P3608762815759193394.a n = A086747 n

end A086747

/-! ## A086747.P384893391685542296

`A365807(A004761(n+2))`
-/

namespace A086747.P384893391685542296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365807 (A004761 (n + 2)).toNat

end

end A086747.P384893391685542296

namespace A086747

/-- `A365807(A004761(n+2))` -/
def P384893391685542296.Spec : Prop :=
  ∀ n, P384893391685542296.a n = A086747 n

end A086747

/-!
# A086748: Odd numbers m such that when C(2k, k) == 1 (mod m) then k is necessarily even.

The programs for A086748, there is no canonical definition to state claims against.
-/

/-! ## A086748.P10852299037909588397

`lt[n, lcm(n, 2%gcd(15, n))]`
-/

namespace A086748.P10852299037909588397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 % Nat.gcd 15 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A086748.P10852299037909588397

/-! ## A086748.P9293901936672925251

`∪[6*n, 10*n+2]+3`
-/

namespace A086748.P9293901936672925251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n + 3

end

end A086748.P9293901936672925251

/-! ## A086748.P10224261960994825982

`∪[Δ[3*n²], Δ[5*n²]]`
-/

namespace A086748.P10224261960994825982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A086748.P10224261960994825982

/-! ## A086748.P719771660688287460

`lt[A255680(n), and(1, n)]`
-/

namespace A086748.P719771660688287460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A086748.P719771660688287460

/-! ## A086748.P11444155671080959345

`or(1, A374277(2*n+1))`
-/

namespace A086748.P11444155671080959345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A374277 (2 * n + 1))

end

end A086748.P11444155671080959345

/-! ## A086748.P15232669080844710054

`lt[1, A355582(n^(n%2))]`
-/

namespace A086748.P15232669080844710054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A086748.P15232669080844710054

/-! ## A086748.P3420441805540405484

`comp[∪[2*n, A007775(n+1)]]`
-/

namespace A086748.P3420441805540405484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A086748.P3420441805540405484

/-! ## A086748.P9589358354653000460

`eq[1, 16%A020639(n+1)]+1`
-/

namespace A086748.P9589358354653000460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 16 (A020639 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086748.P9589358354653000460

/-! ## A086748.P14859146356152186368

`∩[2*n+1, A080671(n+1)]`
-/

namespace A086748.P14859146356152186368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086748.P14859146356152186368

/-! ## A086748.P16757280993490810397

`∩[2*n+1, A281746(n+1)]`
-/

namespace A086748.P16757280993490810397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086748.P16757280993490810397

/-!
# A086749: Partial sums of A038580.

The programs for A086749, the canonical program `A086749.P2255557957570372886` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086749 has offset 1).

The definition of A086749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086749.P2255557957570372886

`∑[A038580(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086749

/-- `∑[A038580(n+1)]` -/
def P2255557957570372886.Spec : Prop :=
  ∀ n, P2255557957570372886.a n = A086749 (n + 1)

theorem P2255557957570372886.correct : P2255557957570372886.Spec := by
  intro n
  simp only [A086749, Nat.add_sub_cancel]

end A086749

/-! ## A086749.P448393462480846102

`∑[A006450(Δ[A007504(n)])]`
-/

namespace A086749.P448393462480846102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P448393462480846102

namespace A086749

/-- `∑[A006450(Δ[A007504(n)])]` -/
def P448393462480846102.Spec : Prop :=
  ∀ n, P448393462480846102.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P1629531895859942359

`∑[A006450(A000040(n+1))]`
-/

namespace A086749.P1629531895859942359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P1629531895859942359

namespace A086749

/-- `∑[A006450(A000040(n+1))]` -/
def P1629531895859942359.Spec : Prop :=
  ∀ n, P1629531895859942359.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P12344609136735333947

`∑[A006450(A008578(n+2))]`
-/

namespace A086749.P12344609136735333947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P12344609136735333947

namespace A086749

/-- `∑[A006450(A008578(n+2))]` -/
def P12344609136735333947.Spec : Prop :=
  ∀ n, P12344609136735333947.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P3850690252171192246

`∑[A006450(A158611(n+3))]`
-/

namespace A086749.P3850690252171192246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A158611 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P3850690252171192246

namespace A086749

/-- `∑[A006450(A158611(n+3))]` -/
def P3850690252171192246.Spec : Prop :=
  ∀ n, P3850690252171192246.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P760162586487732155

`∑[A006450(∑[A054541(n+1)])]`
-/

namespace A086749.P760162586487732155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P760162586487732155

namespace A086749

/-- `∑[A006450(∑[A054541(n+1)])]` -/
def P760162586487732155.Spec : Prop :=
  ∀ n, P760162586487732155.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P4842289831349275811

`∑[A006450(record[A051698(n)])]`
-/

namespace A086749.P4842289831349275811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P4842289831349275811

namespace A086749

/-- `∑[A006450(record[A051698(n)])]` -/
def P4842289831349275811.Spec : Prop :=
  ∀ n, P4842289831349275811.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P15616555251770741505

`∑[A006450(record[A051664(n+1)])]`
-/

namespace A086749.P15616555251770741505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P15616555251770741505

namespace A086749

/-- `∑[A006450(record[A051664(n+1)])]` -/
def P15616555251770741505.Spec : Prop :=
  ∀ n, P15616555251770741505.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P6287514079331525230

`∑[A064988(A006450(n+1))]`
-/

namespace A086749.P6287514079331525230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A006450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P6287514079331525230

namespace A086749

/-- `∑[A064988(A006450(n+1))]` -/
def P6287514079331525230.Spec : Prop :=
  ∀ n, P6287514079331525230.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P16804095687561071594

`∑[A064988(p?[A064988(n+1)])]`
-/

namespace A086749.P16804095687561071594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P16804095687561071594

namespace A086749

/-- `∑[A064988(p?[A064988(n+1)])]` -/
def P16804095687561071594.Spec : Prop :=
  ∀ n, P16804095687561071594.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P16915139488045212659

`∑[A105574(record[A105574(n+2)])]`
-/

namespace A086749.P16915139488045212659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P16915139488045212659

namespace A086749

/-- `∑[A105574(record[A105574(n+2)])]` -/
def P16915139488045212659.Spec : Prop :=
  ∀ n, P16915139488045212659.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P8979184586307099104

`∑[A000040(p?[A076610(n+1)])]`
-/

namespace A086749.P8979184586307099104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076610 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P8979184586307099104

namespace A086749

/-- `∑[A000040(p?[A076610(n+1)])]` -/
def P8979184586307099104.Spec : Prop :=
  ∀ n, P8979184586307099104.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P15992846431991125476

`∑[A105562(record[A105562(n+2)])]`
-/

namespace A086749.P15992846431991125476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105562 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P15992846431991125476

namespace A086749

/-- `∑[A105562(record[A105562(n+2)])]` -/
def P15992846431991125476.Spec : Prop :=
  ∀ n, P15992846431991125476.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P14532319459014610855

`∑[A351368(record[A351368(n+2)])]`
-/

namespace A086749.P14532319459014610855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351368 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351368 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P14532319459014610855

namespace A086749

/-- `∑[A351368(record[A351368(n+2)])]` -/
def P14532319459014610855.Spec : Prop :=
  ∀ n, P14532319459014610855.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P11762074145464706074

`∑[A006005(A065091(A006093(n+1)))]`
-/

namespace A086749.P11762074145464706074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A065091 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P11762074145464706074

namespace A086749

/-- `∑[A006005(A065091(A006093(n+1)))]` -/
def P11762074145464706074.Spec : Prop :=
  ∀ n, P11762074145464706074.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P15368914522073491044

`∑[A000040(record[A000040(A006530(2*or(1, n)))])]`
-/

namespace A086749.P15368914522073491044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006530 (2 * Nat.lor 1 n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P15368914522073491044

namespace A086749

/-- `∑[A000040(record[A000040(A006530(2*or(1, n)))])]` -/
def P15368914522073491044.Spec : Prop :=
  ∀ n, P15368914522073491044.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P9580139333126053896

`∑[A000040(A168152(n+1)+A000040(n+1))]`
-/

namespace A086749.P9580139333126053896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A168152 (n + 1) + A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P9580139333126053896

namespace A086749

/-- `∑[A000040(A168152(n+1)+A000040(n+1))]` -/
def P9580139333126053896.Spec : Prop :=
  ∀ n, P9580139333126053896.a n = A086749 (n + 1)

theorem P9580139333126053896.correct : P9580139333126053896.Spec := by
  intro n
  simp only [A086749, Nat.add_sub_cancel, A086749.P9580139333126053896.f1, A086749.P9580139333126053896.a, A086749.P2255557957570372886.f1, A086749.P2255557957570372886.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A038580, A038580.P18310898613718582429.a, A168152, A168152.P4567682893620914765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086749

/-! ## A086749.P14287389237970543889

`∑[A000040(A073136(n+1)-A000040(n+1))]`
-/

namespace A086749.P14287389237970543889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073136 (n + 1) - A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P14287389237970543889

namespace A086749

/-- `∑[A000040(A073136(n+1)-A000040(n+1))]` -/
def P14287389237970543889.Spec : Prop :=
  ∀ n, P14287389237970543889.a n = A086749 (n + 1)

theorem P14287389237970543889.correct : P14287389237970543889.Spec := by
  intro n
  simp only [A086749, Nat.add_sub_cancel, A086749.P14287389237970543889.f1, A086749.P14287389237970543889.a, A086749.P2255557957570372886.f1, A086749.P2255557957570372886.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A038580, A038580.P18310898613718582429.a, A073136, A073136.P7132945222893016034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086749

/-! ## A086749.P685398861709972552

`∑[A000040(A000040(A000040(1-(n-2*n))))]`
-/

namespace A086749.P685398861709972552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (A000040 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P685398861709972552

namespace A086749

/-- `∑[A000040(A000040(A000040(1-(n-2*n))))]` -/
def P685398861709972552.Spec : Prop :=
  ∀ n, P685398861709972552.a n = A086749 (n + 1)

end A086749

/-! ## A086749.P16574619611720509757

`∑[A006450(A352001(∑[n+2]))]`
-/

namespace A086749.P16574619611720509757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A352001 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086749.P16574619611720509757

namespace A086749

/-- `∑[A006450(A352001(∑[n+2]))]` -/
def P16574619611720509757.Spec : Prop :=
  ∀ n, P16574619611720509757.a n = A086749 (n + 1)

end A086749

/-!
# A086751: Decimal expansion of the solution to x*sqrt(1-x^2) + arcsin(x) = Pi/4, or the length of the line connecting the origin to the center of the chord of a circle, centered at 0 and of radius 1, that divides the circle such that 1/4 of the area is on one side and 3/4 is on the other side.

The programs for A086751, there is no canonical definition to state claims against.
-/

/-! ## A086751.P1593782910126916447

`9-A133742(n)`
-/

namespace A086751.P1593782910126916447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A133742 n

end

end A086751.P1593782910126916447

/-!
# A086752: Number of n X n matrices over GF(3) with rank n-1.

The programs for A086752, there is no canonical definition to state claims against.
-/

/-! ## A086752.P16371500294259271687

`A060868(n+1)/2*A053290(n)`
-/

namespace A086752.P16371500294259271687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060868 (n + 1) : ℚ) / 2 * (A053290 n : ℚ)

end

end A086752.P16371500294259271687

/-!
# A086753: Number of distinct entries in a slice of A046816.

The programs for A086753, there is no canonical definition to state claims against.
-/

/-! ## A086753.P17140860215322274194

`A001399(n)-A102677(A323730(A001399(n)))`
-/

namespace A086753.P17140860215322274194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A102677 (A323730 (A001399 n).toNat).toNat

end

end A086753.P17140860215322274194

/-!
# A086754: Pascal's square pyramid read by slices, each slice being read by rows. Each entry in slice n is the sum of the 4 entries above it in slice n-1.

The programs for A086754, there is no canonical definition to state claims against.
-/

/-! ## A086754.P12696557503161277963

`A270650(gcd(A000108(n), A051868(n+4)))`
-/

namespace A086754.P12696557503161277963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270650 (Int.gcd (A000108 n) (A051868 (n + 4)))

end

end A086754.P12696557503161277963

/-! ## A086754.P14320691029082654828

`gcd(A296698(A296725(2*n+1)), A351808(n+1))`
-/

namespace A086754.P14320691029082654828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296698 (A296725 (2 * n + 1)).toNat) (A351808 (n + 1))

end

end A086754.P14320691029082654828

/-! ## A086754.P4544576762505396288

`A001222(or(5, A294137(2*n)))`
-/

namespace A086754.P4544576762505396288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 5 (A294137 (2 * n))).toNat

end

end A086754.P4544576762505396288

/-! ## A086754.P13026411772476341680

`A003557(A208354(n)-A248517(n))`
-/

namespace A086754.P13026411772476341680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A208354 n - A248517 n).toNat

end

end A086754.P13026411772476341680

/-! ## A086754.P1238260120025663228

`A123578(gcd(n, A241389(3*n+2)))`
-/

namespace A086754.P1238260120025663228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.gcd (n : ℤ) (A241389 (3 * n + 2)))

end

end A086754.P1238260120025663228

/-!
# A086755: Sum_{k=1..n} (k(k+1))^2/2.

The programs for A086755, the canonical program `A086755.P1666242869235654198` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086755 has offset 0).

The definition of A086755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086755.P12619328723667681512

`(n+1)*(n+2)*(n+3)*(3*n²+12*n+10)/30`
-/

namespace A086755.P12619328723667681512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (3 * n ^ 2 + 12 * n + 10) : ℚ) / 30

end

end A086755.P12619328723667681512

namespace A086755

/-- `(n+1)*(n+2)*(n+3)*(3*n²+12*n+10)/30` -/
def P12619328723667681512.Spec : Prop :=
  ∀ n, P12619328723667681512.a n = (A086755 n : ℚ)

theorem P12619328723667681512.correct : P12619328723667681512.Spec := by
  intro n
  simp only [A086755, Nat.add_sub_cancel, A086755.P12619328723667681512.a, A086755.P1666242869235654198.a, A024166, A024166.P6072422221111961718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086755

/-! ## A086755.P1666242869235654198

`2*A024166(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086755

/-- `2*A024166(n+1)` -/
def P1666242869235654198.Spec : Prop :=
  ∀ n, P1666242869235654198.a n = A086755 n

theorem P1666242869235654198.correct : P1666242869235654198.Spec := by
  intro n
  simp only [A086755]

end A086755

/-! ## A086755.P8187948463615574332

`floor(2/acot(∑[∑[n+1]²]))`
-/

namespace A086755.P8187948463615574332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A086755.P8187948463615574332

namespace A086755

/-- `floor(2/acot(∑[∑[n+1]²]))` -/
def P8187948463615574332.Spec : Prop :=
  ∀ n, P8187948463615574332.a n = A086755 n

end A086755

/-! ## A086755.P5030587826297000993

`∑[∑[a(n-1)-2]²/2]` with `a(0)=-2`
-/

namespace A086755.P5030587826297000993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086755.P5030587826297000993

namespace A086755

/-- `∑[∑[a(n-1)-2]²/2]` -/
def P5030587826297000993.Spec : Prop :=
  ∀ n, P5030587826297000993.a n = (A086755 n : ℚ)

end A086755

/-! ## A086755.P18195004945708091347

`2*∑[C(n+2, 2)*∑[n+1]]`
-/

namespace A086755.P18195004945708091347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086755.P18195004945708091347

namespace A086755

/-- `2*∑[C(n+2, 2)*∑[n+1]]` -/
def P18195004945708091347.Spec : Prop :=
  ∀ n, (P18195004945708091347.a n : ℤ) = A086755 n

end A086755

/-! ## A086755.P10214710411527933065

`a(n-1)+2*C(n+2, 2)²` with `a(0)=2`
-/

namespace A086755.P10214710411527933065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * Nat.choose (n + 2) 2 ^ 2

end

end A086755.P10214710411527933065

namespace A086755

/-- `a(n-1)+2*C(n+2, 2)²` -/
def P10214710411527933065.Spec : Prop :=
  ∀ n, (P10214710411527933065.a n : ℤ) = A086755 n

end A086755

/-! ## A086755.P10094557889421317342

`2*∑[a(n-1)+(n+1)^3]` with `a(0)=1`
-/

namespace A086755.P10094557889421317342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086755.P10094557889421317342

namespace A086755

/-- `2*∑[a(n-1)+(n+1)^3]` -/
def P10094557889421317342.Spec : Prop :=
  ∀ n, (P10094557889421317342.a n : ℤ) = A086755 n

end A086755

/-! ## A086755.P12019753751786359820

`∑[∑[n+1]*∑[a(n-1)+2]]` with `a(0)=2`
-/

namespace A086755.P12019753751786359820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086755.P12019753751786359820

namespace A086755

/-- `∑[∑[n+1]*∑[a(n-1)+2]]` -/
def P12019753751786359820.Spec : Prop :=
  ∀ n, (P12019753751786359820.a n : ℤ) = A086755 n

end A086755

/-! ## A086755.P16542944270671784497

`a(n-1)+2/∑[n+1]^(-2)` with `a(0)=2`
-/

namespace A086755.P16542944270671784497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-2 : ℤ)

end

end A086755.P16542944270671784497

namespace A086755

/-- `a(n-1)+2/∑[n+1]^(-2)` -/
def P16542944270671784497.Spec : Prop :=
  ∀ n, P16542944270671784497.a n = (A086755 n : ℚ)

end A086755

/-! ## A086755.P14607602563582922341

`lcm(2, ∑[(n+1)*(n+2)*∑[n+1]])`
-/

namespace A086755.P14607602563582922341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 2) * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086755.P14607602563582922341

namespace A086755

/-- `lcm(2, ∑[(n+1)*(n+2)*∑[n+1]])` -/
def P14607602563582922341.Spec : Prop :=
  ∀ n, (P14607602563582922341.a n : ℤ) = A086755 n

end A086755

/-! ## A086755.P12474865576361653593

`∑[(n+1)^4+(n+1)²]-a(n-1)` with `a(0)=2`
-/

namespace A086755.P12474865576361653593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4 + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A086755.P12474865576361653593

namespace A086755

/-- `∑[(n+1)^4+(n+1)²]-a(n-1)` -/
def P12474865576361653593.Spec : Prop :=
  ∀ n, P12474865576361653593.a n = A086755 n

end A086755

/-! ## A086755.P1772437159102342435

`∑[n+1]²+a(n-1)+∑[n+1]²` with `a(0)=2`
-/

namespace A086755.P1772437159102342435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (a (n - 1) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

end

end A086755.P1772437159102342435

namespace A086755

/-- `∑[n+1]²+a(n-1)+∑[n+1]²` -/
def P1772437159102342435.Spec : Prop :=
  ∀ n, (P1772437159102342435.a n : ℤ) = A086755 n

end A086755

/-! ## A086755.P16724849979210443112

`∑[∑[A033431(n+1)]]`
-/

namespace A086755.P16724849979210443112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086755.P16724849979210443112

namespace A086755

/-- `∑[∑[A033431(n+1)]]` -/
def P16724849979210443112.Spec : Prop :=
  ∀ n, P16724849979210443112.a n = A086755 n

end A086755

/-! ## A086755.P17482528918970854148

`A056118(n)+A027660(n)`
-/

namespace A086755.P17482528918970854148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056118 n + A027660 n

end

end A086755.P17482528918970854148

namespace A086755

/-- `A056118(n)+A027660(n)` -/
def P17482528918970854148.Spec : Prop :=
  ∀ n, P17482528918970854148.a n = A086755 n

theorem P17482528918970854148.correct : P17482528918970854148.Spec := by
  intro n
  simp only [A086755, Nat.add_sub_cancel, A086755.P17482528918970854148.a, A086755.P1666242869235654198.a, A024166, A024166.P6072422221111961718.a, A027660, A027660.P12826670209015444589.a, A056118, A056118.P6591570600101730027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086755

/-! ## A086755.P12846278069576944467

`A244882(n)+A051877(n)`
-/

namespace A086755.P12846278069576944467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n + A051877 n

end

end A086755.P12846278069576944467

namespace A086755

/-- `A244882(n)+A051877(n)` -/
def P12846278069576944467.Spec : Prop :=
  ∀ n, P12846278069576944467.a n = A086755 n

end A086755

/-! ## A086755.P4334488685708218628

`A053132(n+5)-A033455(n+1)`
-/

namespace A086755.P4334488685708218628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053132 (n + 5) - A033455 (n + 1)

end

end A086755.P4334488685708218628

namespace A086755

/-- `A053132(n+5)-A033455(n+1)` -/
def P4334488685708218628.Spec : Prop :=
  ∀ n, P4334488685708218628.a n = A086755 n

end A086755

/-! ## A086755.P4835353120335275018

`∑[A163102(n+1)]`
-/

namespace A086755.P4835353120335275018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086755.P4835353120335275018

namespace A086755

/-- `∑[A163102(n+1)]` -/
def P4835353120335275018.Spec : Prop :=
  ∀ n, P4835353120335275018.a n = A086755 n

end A086755

/-! ## A086755.P2225534253366018122

`2*∑[A000537(n+1)]`
-/

namespace A086755.P2225534253366018122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086755.P2225534253366018122

namespace A086755

/-- `2*∑[A000537(n+1)]` -/
def P2225534253366018122.Spec : Prop :=
  ∀ n, P2225534253366018122.a n = A086755 n

end A086755

/-! ## A086755.P14561793410140440612

`A086689(n+1)+A001296(n+1)`
-/

namespace A086755.P14561793410140440612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086689 (n + 1) + A001296 (n + 1)

end

end A086755.P14561793410140440612

namespace A086755

/-- `A086689(n+1)+A001296(n+1)` -/
def P14561793410140440612.Spec : Prop :=
  ∀ n, P14561793410140440612.a n = A086755 n

end A086755

/-! ## A086755.P6188537253408170083

`A231303(n+1)+A000292(n+1)`
-/

namespace A086755.P6188537253408170083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231303 (n + 1) + A000292 (n + 1)

end

end A086755.P6188537253408170083

namespace A086755

/-- `A231303(n+1)+A000292(n+1)` -/
def P6188537253408170083.Spec : Prop :=
  ∀ n, P6188537253408170083.a n = A086755 n

theorem P6188537253408170083.correct : P6188537253408170083.Spec := by
  intro n
  simp only [A086755, Nat.add_sub_cancel, A086755.P6188537253408170083.a, A086755.P1666242869235654198.a, A000292, A000292.P18322089543142633594.a, A024166, A024166.P6072422221111961718.a, A231303, A231303.P965024635069111883.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086755

/-!
# A086756: a(n) = n^n mod 10^n.

The programs for A086756, the canonical program `A086756.P13282581845295787310` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086756 has offset 1).

The definition of A086756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^(n+1))%(10^(n+1))` (program `A086756.P13282581845295787310`, by `A086756.P13282581845295787310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086756.P13282581845295787310

`((n+1)^(n+1))%(10^(n+1))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086756

/-- `((n+1)^(n+1))%(10^(n+1))` -/
def P13282581845295787310.Spec : Prop :=
  ∀ n, (P13282581845295787310.a n : ℤ) = A086756 (n + 1)

theorem P13282581845295787310.correct : P13282581845295787310.Spec := by
  intro n
  simp only [A086756, Nat.add_sub_cancel]

end A086756

/-! ## A086756.P12334670137233864642

`∑[-Δ[-((n^n)%(10^n))]]`
-/

namespace A086756.P12334670137233864642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ n % 10 ^ n : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086756.P12334670137233864642

namespace A086756

/-- `∑[-Δ[-((n^n)%(10^n))]]` -/
def P12334670137233864642.Spec : Prop :=
  ∀ n, P12334670137233864642.a n = A086756 (n + 1)

end A086756

/-!
# A086757: Smallest prime p such that n is a palindrome in base-p representation.

The programs for A086757, there is no canonical definition to state claims against.
-/

/-! ## A086757.P9768390821932243996

`A000961(A016026(n+1)%A247027(n+1))`
-/

namespace A086757.P9768390821932243996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (Int.tmod (A016026 (n + 1)) (A247027 (n + 1))).toNat

end

end A086757.P9768390821932243996

/-! ## A086757.P4873428668821833093

`A000961(A016026(n+1))%A348802(n+2)`
-/

namespace A086757.P4873428668821833093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (A016026 (n + 1)).toNat) (A348802 (n + 2))

end

end A086757.P4873428668821833093

/-! ## A086757.P10956176633418788331

`A053669(A096879(n+1)*A208447(3*(n+1)))`
-/

namespace A086757.P10956176633418788331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A096879 (n + 1) * A208447 (3 * (n + 1))).toNat

end

end A086757.P10956176633418788331

/-! ## A086757.P11108321033729875919

`A331912(A016026(n+1))%A095339(2*(n+2))`
-/

namespace A086757.P11108321033729875919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331912 (A016026 (n + 1)).toNat) (A095339 (2 * (n + 2)))

end

end A086757.P11108321033729875919

/-! ## A086757.P15478033243092590271

`A085818(A016026(n+1))%A200777(A056119(n)+28)`
-/

namespace A086757.P15478033243092590271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085818 (A016026 (n + 1)).toNat) (A200777 (A056119 n + 28).toNat)

end

end A086757.P15478033243092590271

/-!
# A086758: a(n) is the smallest m such that the integer part of the first n powers of m^(1/n) are primes.

The programs for A086758, there is no canonical definition to state claims against.
-/

/-! ## A086758.P2536122918293188615

`p?[floor(sqrt(A081561(n)))]`
-/

namespace A086758.P2536122918293188615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081561 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086758.P2536122918293188615

/-!
# A086760: a(n) = 8*n^2 + 88*n + 43.

The programs for A086760, the canonical program `A086760.P1278045169741243394` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086760 has offset 0).

The definition of A086760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²+88*n+43` (program `A086760.P1278045169741243394`, by `A086760.P1278045169741243394.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086760.P1278045169741243394

`8*n²+88*n+43`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086760

/-- `8*n²+88*n+43` -/
def P1278045169741243394.Spec : Prop :=
  ∀ n, (P1278045169741243394.a n : ℤ) = A086760 n

theorem P1278045169741243394.correct : P1278045169741243394.Spec := by
  intro n
  simp only [A086760]

end A086760

/-! ## A086760.P652762410302780404

`abs(A158628(n+1)-A016910(n))`
-/

namespace A086760.P652762410302780404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158628 (n + 1) - A016910 n|

end

end A086760.P652762410302780404

namespace A086760

/-- `abs(A158628(n+1)-A016910(n))` -/
def P652762410302780404.Spec : Prop :=
  ∀ n, P652762410302780404.a n = A086760 n

end A086760

/-! ## A086760.P13988902068128445149

`A211773(2*n+38)`
-/

namespace A086760.P13988902068128445149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211773 (2 * n + 38)

end

end A086760.P13988902068128445149

namespace A086760

/-- `A211773(2*n+38)` -/
def P13988902068128445149.Spec : Prop :=
  ∀ n, P13988902068128445149.a n = A086760 n

end A086760

/-! ## A086760.P10626457317324411152

`A211775(A144396(n+1)+61)`
-/

namespace A086760.P10626457317324411152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211775 (A144396 (n + 1) + 61).toNat

end

end A086760.P10626457317324411152

namespace A086760

/-- `A211775(A144396(n+1)+61)` -/
def P10626457317324411152.Spec : Prop :=
  ∀ n, P10626457317324411152.a n = A086760 n

end A086760

/-! ## A086760.P522977998792202163

`∑[A008576(A040210(n)+A008458(n))]`
-/

namespace A086760.P522977998792202163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A040210 n + A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086760.P522977998792202163

namespace A086760

/-- `∑[A008576(A040210(n)+A008458(n))]` -/
def P522977998792202163.Spec : Prop :=
  ∀ n, P522977998792202163.a n = A086760 n

end A086760

/-! ## A086760.P3942660069305287119

`A106839(∑[n+5]-3)`
-/

namespace A086760.P3942660069305287119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106839 (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A086760.P3942660069305287119

namespace A086760

/-- `A106839(∑[n+5]-3)` -/
def P3942660069305287119.Spec : Prop :=
  ∀ n, P3942660069305287119.a n = A086760 n

end A086760

/-! ## A086760.P7705371445699680100

`A004769(A119412(n)+4)`
-/

namespace A086760.P7705371445699680100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (A119412 n + 4).toNat

end

end A086760.P7705371445699680100

namespace A086760

/-- `A004769(A119412(n)+4)` -/
def P7705371445699680100.Spec : Prop :=
  ∀ n, P7705371445699680100.a n = A086760 n

end A086760

/-! ## A086760.P269819083191500815

`A017101(A017209(n)+(n+1)²)`
-/

namespace A086760.P269819083191500815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A017209 n + ((n + 1) ^ 2 : ℤ)).toNat

end

end A086760.P269819083191500815

namespace A086760

/-- `A017101(A017209(n)+(n+1)²)` -/
def P269819083191500815.Spec : Prop :=
  ∀ n, P269819083191500815.a n = A086760 n

end A086760

/-! ## A086760.P10593783444524855791

`A017101(A017329(n)+n²+n)`
-/

namespace A086760.P10593783444524855791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A017329 n + (n ^ 2 + n : ℤ)).toNat

end

end A086760.P10593783444524855791

namespace A086760

/-- `A017101(A017329(n)+n²+n)` -/
def P10593783444524855791.Spec : Prop :=
  ∀ n, P10593783444524855791.a n = A086760 n

end A086760

/-! ## A086760.P15564493518844657034

`A017101(A017101(n)+∑[2*(n+1)])`
-/

namespace A086760.P15564493518844657034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A017101 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A086760.P15564493518844657034

namespace A086760

/-- `A017101(A017101(n)+∑[2*(n+1)])` -/
def P15564493518844657034.Spec : Prop :=
  ∀ n, P15564493518844657034.a n = A086760 n

end A086760

/-!
# A086761: Numbers k such that k-th cyclotomic polynomial has exactly 5 nonzero terms.

The programs for A086761, there is no canonical definition to state claims against.
-/

/-! ## A086761.P11549019629826345685

`A033846(n+1)/2`
-/

namespace A086761.P11549019629826345685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033846 (n + 1) : ℚ) / 2

end

end A086761.P11549019629826345685

/-! ## A086761.P7142637477392672533

`5*A003592(n+1)`
-/

namespace A086761.P7142637477392672533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003592 (n + 1)

end

end A086761.P7142637477392672533

/-! ## A086761.P6944999369468495145

`5*(A158911(n+1)+1)`
-/

namespace A086761.P6944999369468495145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A158911 (n + 1) + 1)

end

end A086761.P6944999369468495145

/-! ## A086761.P5703544207197299964

`∩[A036311(n+1), A363292(n+1)]/2`
-/

namespace A086761.P5703544207197299964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P5703544207197299964

/-! ## A086761.P7794728107627784667

`∩[A003592(n+1), A363292(n+1)]/2`
-/

namespace A086761.P7794728107627784667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P7794728107627784667

/-! ## A086761.P14243676452255568291

`∩[A337801(n+1), A363292(n+1)]/2`
-/

namespace A086761.P14243676452255568291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P14243676452255568291

/-! ## A086761.P8712202652423980821

`∩[A337800(n+1), A363292(n+1)]/2`
-/

namespace A086761.P8712202652423980821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P8712202652423980821

/-! ## A086761.P15072871098321886842

`∩[A070023(n+1), A363292(n+1)]/2`
-/

namespace A086761.P15072871098321886842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P15072871098321886842

/-! ## A086761.P14036928807529542438

`∩[A257997(n+1), A363292(n+1)]/2`
-/

namespace A086761.P14036928807529542438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P14036928807529542438

/-! ## A086761.P12787143844252904320

`∩[A003592(n+1), A080193(n+1)]`
-/

namespace A086761.P12787143844252904320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086761.P12787143844252904320

/-! ## A086761.P5591560996888179788

`∩[A080193(n+1), A108513(n+1)]`
-/

namespace A086761.P5591560996888179788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086761.P5591560996888179788

/-! ## A086761.P5376022209347310421

`∩[A080193(n+1), A337800(n+1)]`
-/

namespace A086761.P5376022209347310421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086761.P5376022209347310421

/-! ## A086761.P8860174812598187401

`∩[A080193(n+1), A363292(n+1)]/2`
-/

namespace A086761.P8860174812598187401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P8860174812598187401

/-! ## A086761.P16405036133880699743

`∩[A051037(n+1), A363292(n+1)]/2`
-/

namespace A086761.P16405036133880699743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P16405036133880699743

/-! ## A086761.P12356886867715789850

`∩[A003592(n+1), A085128(n+1)]`
-/

namespace A086761.P12356886867715789850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086761.P12356886867715789850

/-! ## A086761.P6180905403872392156

`∩[A085128(n+1), A337800(n+1)]`
-/

namespace A086761.P6180905403872392156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086761.P6180905403872392156

/-! ## A086761.P4021498505386432171

`∩[A085128(n+1), A363292(n+1)]/2`
-/

namespace A086761.P4021498505386432171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P4021498505386432171

/-! ## A086761.P8363822043317822181

`∩[A085125(n+1), A363292(n+1)]/2`
-/

namespace A086761.P8363822043317822181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P8363822043317822181

/-! ## A086761.P13971236788471867982

`A178335(n+1)-A003592(n+1)-A003592(n+1)`
-/

namespace A086761.P13971236788471867982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178335 (n + 1) - A003592 (n + 1) - A003592 (n + 1)

end

end A086761.P13971236788471867982

/-! ## A086761.P512427493085024520

`∩[A003592(n+1), A325198(n+1)]/2`
-/

namespace A086761.P512427493085024520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325198 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A086761.P512427493085024520

/-!
# A086764: Triangle T(n, k), read by row, related to Euler's difference table A068106 (divide column k of A068106 by k!).

The programs for A086764, there is no canonical definition to state claims against.
-/

/-! ## A086764.P6664454376593044021

`A060475(A061579(n))`
-/

namespace A086764.P6664454376593044021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A061579 n).toNat

end

end A086764.P6664454376593044021

/-! ## A086764.P12702098455690550233

`A060475(A114327(n)+n)`
-/

namespace A086764.P12702098455690550233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A114327 n + (n : ℤ)).toNat

end

end A086764.P12702098455690550233

/-! ## A086764.P14204342401477941025

`A060475(A038722(n+1)-1)`
-/

namespace A086764.P14204342401477941025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A038722 (n + 1) - 1).toNat

end

end A086764.P14204342401477941025

/-! ## A086764.P5798592292964358287

`A060475(A002378(n)%A014132(n+1))`
-/

namespace A086764.P5798592292964358287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A086764.P5798592292964358287

/-! ## A086764.P12701761247718748460

`A060475(A038722(n+2))`
-/

namespace A086764.P12701761247718748460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A038722 (n + 2)).toNat

end

end A086764.P12701761247718748460

/-! ## A086764.P3817544697028132486

`A068106(n)/A233543(n)`
-/

namespace A086764.P3817544697028132486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068106 n : ℚ) / (A233543 n : ℚ)

end

end A086764.P3817544697028132486

/-! ## A086764.P1165093562389711509

`A068106(n)/A000142(A002262(n))`
-/

namespace A086764.P1165093562389711509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068106 n : ℚ) / (A000142 (A002262 n).toNat : ℚ)

end

end A086764.P1165093562389711509

/-! ## A086764.P3635366652882185145

`A068106(n)/gcd(A068106(n), A116853(n+1))`
-/

namespace A086764.P3635366652882185145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068106 n : ℚ) / (Int.gcd (A068106 n) (A116853 (n + 1)) : ℚ)

end

end A086764.P3635366652882185145

/-! ## A086764.P16521726073735914769

`A372723(n)/A008279(n)`
-/

namespace A086764.P16521726073735914769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372723 n : ℚ) / (A008279 n : ℚ)

end

end A086764.P16521726073735914769

/-!
# A086765: Number of positive coefficients in n-th cyclotomic polynomial.

The programs for A086765, there is no canonical definition to state claims against.
-/

/-! ## A086765.P3828130425481892173

`A051664(n+1)-A086780(n+1)`
-/

namespace A086765.P3828130425481892173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A086780 (n + 1)

end

end A086765.P3828130425481892173

/-! ## A086765.P12840056098397517786

`∑{d}[n+1, A087073(#)]-A086780(n+1)`
-/

namespace A086765.P12840056098397517786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087073 d - A086780 (n + 1)

end

end A086765.P12840056098397517786

/-! ## A086765.P15357376685157438201

`A006530(n+1)+A070536(n+1)-A086780(n+1)`
-/

namespace A086765.P15357376685157438201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A070536 (n + 1) - A086780 (n + 1))

end

end A086765.P15357376685157438201

/-! ## A086765.P1743817952414606762

`A039649(n+1)-(A086798(n+1)+A086780(n+1))`
-/

namespace A086765.P1743817952414606762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A086798 (n + 1) + A086780 (n + 1))

end

end A086765.P1743817952414606762

/-! ## A086765.P11139912679484767440

`A000010(n+1)+1-A086798(n+1)-A086780(n+1)`
-/

namespace A086765.P11139912679484767440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A086798 (n + 1)) - A086780 (n + 1)

end

end A086765.P11139912679484767440

/-! ## A086765.P14007050524703606693

`A051664(n+1)+A086780(n+1)*A162512(A151800(n))`
-/

namespace A086765.P14007050524703606693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) + A086780 (n + 1) * A162512 (A151800 n).toNat

end

end A086765.P14007050524703606693

/-! ## A086765.P16664885089504399136

`∑{digits}[A063697(n+1), #]`
-/

namespace A086765.P16664885089504399136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A086765.P16664885089504399136

/-! ## A086765.P5970358279523201279

`A086780(n+1)+A020500((n+1)²)`
-/

namespace A086765.P5970358279523201279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086780 (n + 1) + A020500 ((n + 1) ^ 2)

end

end A086765.P5970358279523201279

/-! ## A086765.P3429373789097788002

`A118759(A318884(n+1)-A086780(n+1))`
-/

namespace A086765.P3429373789097788002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A318884 (n + 1) - A086780 (n + 1)).toNat

end

end A086765.P3429373789097788002

/-! ## A086765.P7276162302442446392

`A318884(n+1)%A086779(n+1)-A086780(n+1)`
-/

namespace A086765.P7276162302442446392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318884 (n + 1)) (A086779 (n + 1)) - A086780 (n + 1)

end

end A086765.P7276162302442446392

/-!
# A086767: Last coefficient of the last term in the numerator of the simplified expansion of the solutions of FLT for n=2 for FLT n=1,2,3,..

The programs for A086767, the canonical program `A086767.P14820350050543062152` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086767 has offset 0).

The definition of A086767 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004730, A004731, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086767.P14820350050543062152

`A004731(n+1)/A004730(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A086767

/-- `A004731(n+1)/A004730(n)` -/
def P14820350050543062152.Spec : Prop :=
  ∀ n, P14820350050543062152.a n = (A086767 n : ℚ)

end A086767

/-! ## A086767.P16998864173218961783

`ceil(n^and(1, n)/2^val(n+1, 2))`
-/

namespace A086767.P16998864173218961783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ Nat.land 1 n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉

end

end A086767.P16998864173218961783

namespace A086767

/-- `ceil(n^and(1, n)/2^val(n+1, 2))` -/
def P16998864173218961783.Spec : Prop :=
  ∀ n, P16998864173218961783.a n = A086767 n

end A086767

/-! ## A086767.P17973010230127638183

`round(n^and(1, n)/2^val(n+1, 2))`
-/

namespace A086767.P17973010230127638183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ Nat.land 1 n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))

end

end A086767.P17973010230127638183

namespace A086767

/-- `round(n^and(1, n)/2^val(n+1, 2))` -/
def P17973010230127638183.Spec : Prop :=
  ∀ n, P17973010230127638183.a n = A086767 n

end A086767

/-! ## A086767.P10044121791159563693

`(n+1)/and(n+1, xor(n, (-1)^n))`
-/

namespace A086767.P10044121791159563693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (Int.xor (n : ℤ) ((-1) ^ n)) : ℚ)

end

end A086767.P10044121791159563693

namespace A086767

/-- `(n+1)/and(n+1, xor(n, (-1)^n))` -/
def P10044121791159563693.Spec : Prop :=
  ∀ n, P10044121791159563693.a n = (A086767 n : ℚ)

end A086767

/-! ## A086767.P17649949181032699533

`(n+1)/and(n+1, Δ[n*and(1, n)])`
-/

namespace A086767.P17649949181032699533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ)

end

end A086767.P17649949181032699533

namespace A086767

/-- `(n+1)/and(n+1, Δ[n*and(1, n)])` -/
def P17649949181032699533.Spec : Prop :=
  ∀ n, P17649949181032699533.a n = (A086767 n : ℚ)

end A086767

/-! ## A086767.P18042572158162650484

`gcd(∑[xor(1, n)], ∏{d}[n+1, #^(#%2)])`
-/

namespace A086767.P18042572158162650484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∏ d ∈ Nat.divisors (f2 n), d ^ (d % 2))

end

end A086767.P18042572158162650484

namespace A086767

/-- `gcd(∑[xor(1, n)], ∏{d}[n+1, #^(#%2)])` -/
def P18042572158162650484.Spec : Prop :=
  ∀ n, (P18042572158162650484.a n : ℤ) = A086767 n

end A086767

/-! ## A086767.P6250522694500625898

`(n*and(1, n)+1)/2^val(n+1, 2)`
-/

namespace A086767.P6250522694500625898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A086767.P6250522694500625898

namespace A086767

/-- `(n*and(1, n)+1)/2^val(n+1, 2)` -/
def P6250522694500625898.Spec : Prop :=
  ∀ n, P6250522694500625898.a n = (A086767 n : ℚ)

end A086767

/-! ## A086767.P3327778185265027958

`(n+1)/and(n+1, n-1-lcm(2, n))`
-/

namespace A086767.P3327778185265027958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) ((n : ℤ) - 1 - (Nat.lcm 2 n : ℤ)) : ℚ)

end

end A086767.P3327778185265027958

namespace A086767

/-- `(n+1)/and(n+1, n-1-lcm(2, n))` -/
def P3327778185265027958.Spec : Prop :=
  ∀ n, P3327778185265027958.a n = (A086767 n : ℚ)

end A086767

/-! ## A086767.P726438864162800893

`A351565(n/a(n-1))` with `a(0)=1`
-/

namespace A086767.P726438864162800893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A351565 (SequenceMachineLib.roundAway ((n : ℚ) / (a (n - 1) : ℚ))).toNat

end

end A086767.P726438864162800893

namespace A086767

/-- `A351565(n/a(n-1))` -/
def P726438864162800893.Spec : Prop :=
  ∀ n, P726438864162800893.a n = A086767 n

end A086767

/-! ## A086767.P468554763223065851

`gcd((n+1)², A139391(n+1))`
-/

namespace A086767.P468554763223065851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A139391 (n + 1))

end

end A086767.P468554763223065851

namespace A086767

/-- `gcd((n+1)², A139391(n+1))` -/
def P468554763223065851.Spec : Prop :=
  ∀ n, (P468554763223065851.a n : ℤ) = A086767 n

end A086767

/-! ## A086767.P10387144194884078976

`A000265(A133265(n))`
-/

namespace A086767.P10387144194884078976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A133265 n).toNat

end

end A086767.P10387144194884078976

namespace A086767

/-- `A000265(A133265(n))` -/
def P10387144194884078976.Spec : Prop :=
  ∀ n, P10387144194884078976.a n = A086767 n

end A086767

/-! ## A086767.P262602160311910862

`A000265(A152271(n))`
-/

namespace A086767.P262602160311910862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A152271 n).toNat

end

end A086767.P262602160311910862

namespace A086767

/-- `A000265(A152271(n))` -/
def P262602160311910862.Spec : Prop :=
  ∀ n, P262602160311910862.a n = A086767 n

end A086767

/-! ## A086767.P3727913177626095254

`A161151(A093178(n))`
-/

namespace A086767.P3727913177626095254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (A093178 n).toNat

end

end A086767.P3727913177626095254

namespace A086767

/-- `A161151(A093178(n))` -/
def P3727913177626095254.Spec : Prop :=
  ∀ n, P3727913177626095254.a n = A086767 n

end A086767

/-! ## A086767.P8983216598390388410

`A093178(A163575(n+1))`
-/

namespace A086767.P8983216598390388410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A163575 (n + 1)).toNat

end

end A086767.P8983216598390388410

namespace A086767

/-- `A093178(A163575(n+1))` -/
def P8983216598390388410.Spec : Prop :=
  ∀ n, P8983216598390388410.a n = A086767 n

end A086767

/-! ## A086767.P5208789107611744560

`gcd(A008619(n), A301279(n))`
-/

namespace A086767.P5208789107611744560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 n) (A301279 n)

end

end A086767.P5208789107611744560

namespace A086767

/-- `gcd(A008619(n), A301279(n))` -/
def P5208789107611744560.Spec : Prop :=
  ∀ n, (P5208789107611744560.a n : ℤ) = A086767 n

end A086767

/-! ## A086767.P7589788564818177460

`A000265(n+1)-A237420(n)`
-/

namespace A086767.P7589788564818177460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A237420 n

end

end A086767.P7589788564818177460

namespace A086767

/-- `A000265(n+1)-A237420(n)` -/
def P7589788564818177460.Spec : Prop :=
  ∀ n, P7589788564818177460.a n = A086767 n

end A086767

/-! ## A086767.P15882261229045137341

`A152271(n)/A160467(n+1)`
-/

namespace A086767.P15882261229045137341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152271 n : ℚ) / (A160467 (n + 1) : ℚ)

end

end A086767.P15882261229045137341

namespace A086767

/-- `A152271(n)/A160467(n+1)` -/
def P15882261229045137341.Spec : Prop :=
  ∀ n, P15882261229045137341.a n = (A086767 n : ℚ)

end A086767

/-! ## A086767.P12595406348969632413

`A259445(n+1)/A141310(n)`
-/

namespace A086767.P12595406348969632413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259445 (n + 1) : ℚ) / (A141310 n : ℚ)

end

end A086767.P12595406348969632413

namespace A086767

/-- `A259445(n+1)/A141310(n)` -/
def P12595406348969632413.Spec : Prop :=
  ∀ n, P12595406348969632413.a n = (A086767 n : ℚ)

end A086767

/-! ## A086767.P14049090303628224623

`A028234(n+1)%A133265(n)`
-/

namespace A086767.P14049090303628224623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (n + 1)) (A133265 n)

end

end A086767.P14049090303628224623

namespace A086767

/-- `A028234(n+1)%A133265(n)` -/
def P14049090303628224623.Spec : Prop :=
  ∀ n, P14049090303628224623.a n = A086767 n

end A086767

/-! ## A086767.P16436747664680292303

`A069834(n+1)%A133265(n)`
-/

namespace A086767.P16436747664680292303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069834 (n + 1)) (A133265 n)

end

end A086767.P16436747664680292303

namespace A086767

/-- `A069834(n+1)%A133265(n)` -/
def P16436747664680292303.Spec : Prop :=
  ∀ n, P16436747664680292303.a n = A086767 n

end A086767

/-!
# A086768: Number of conjugacy classes in the group GL(3,Z_n).

The programs for A086768, there is no canonical definition to state claims against.
-/

/-! ## A086768.P7002777183870056739

`A152958(A153687(n+1)^3)`
-/

namespace A086768.P7002777183870056739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152958 (A153687 (n + 1) ^ 3).toNat

end

end A086768.P7002777183870056739

/-! ## A086768.P14015846181747443208

`A191414(n+1)*A344618(2^n)`
-/

namespace A086768.P14015846181747443208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (n + 1) * A344618 (2 ^ n)

end

end A086768.P14015846181747443208

/-! ## A086768.P7656606481217569993

`A001175(A000666(n)*A001285(n))`
-/

namespace A086768.P7656606481217569993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A000666 n * A001285 n).toNat

end

end A086768.P7656606481217569993

/-!
# A086769: a(n) = Sum_{i=1..n} 2^(b(i) - 1), where b(n) is the differences between consecutive primes.

The programs for A086769, the canonical program `A086769.P15818533744901837262` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086769 has offset 1).

The definition of A086769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086769.P15818533744901837262

`a(n-1)+2^(A000040(n+2)-A000040(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086769

/-- `a(n-1)+2^(A000040(n+2)-A000040(n+1)-1)` -/
def P15818533744901837262.Spec : Prop :=
  ∀ n, P15818533744901837262.a n = (A086769 (n + 1) : ℚ)

end A086769

/-! ## A086769.P3882572785353565407

`∑[2^(p?[2*n+1]-(p?[round(8*n/7)]+1))]`
-/

namespace A086769.P3882572785353565407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086769.P3882572785353565407

namespace A086769

/-- `∑[2^(p?[2*n+1]-(p?[round(8*n/7)]+1))]` -/
def P3882572785353565407.Spec : Prop :=
  ∀ n, P3882572785353565407.a n = (A086769 (n + 1) : ℚ)

end A086769

/-! ## A086769.P4174961038032643144

`∑[A218075(n+1)/2]`
-/

namespace A086769.P4174961038032643144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218075 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086769.P4174961038032643144

namespace A086769

/-- `∑[A218075(n+1)/2]` -/
def P4174961038032643144.Spec : Prop :=
  ∀ n, P4174961038032643144.a n = (A086769 (n + 1) : ℚ)

end A086769

/-! ## A086769.P1287217425104773563

`∑[2^A046933(n+1)]`
-/

namespace A086769.P1287217425104773563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A046933 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086769.P1287217425104773563

namespace A086769

/-- `∑[2^A046933(n+1)]` -/
def P1287217425104773563.Spec : Prop :=
  ∀ n, P1287217425104773563.a n = (A086769 (n + 1) : ℚ)

end A086769

/-! ## A086769.P3409786490317014010

`∑[A137780(n+1)-1]/2`
-/

namespace A086769.P3409786490317014010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137780 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A086769.P3409786490317014010

namespace A086769

/-- `∑[A137780(n+1)-1]/2` -/
def P3409786490317014010.Spec : Prop :=
  ∀ n, P3409786490317014010.a n = (A086769 (n + 1) : ℚ)

end A086769

/-! ## A086769.P10891844854316251203

`∑[2^Δ[p?[round(8*n/7)]-n]]`
-/

namespace A086769.P10891844854316251203
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - (n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086769.P10891844854316251203

namespace A086769

/-- `∑[2^Δ[p?[round(8*n/7)]-n]]` -/
def P10891844854316251203.Spec : Prop :=
  ∀ n, P10891844854316251203.a n = (A086769 (n + 1) : ℚ)

end A086769

/-!
# A086770: Numbers k such that the difference between the largest and the smallest prime divisor of k equals the number of prime divisors of k (counted with multiplicity).

The programs for A086770, there is no canonical definition to state claims against.
-/

/-! ## A086770.P17817269167274790536

`eq[A001222(n+1), A046665(n+1)]+1`
-/

namespace A086770.P17817269167274790536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A086770.P17817269167274790536

/-! ## A086770.P5265120383553642404

`eq[log2(A061142(n+1)), A046665(n+1)]+1`
-/

namespace A086770.P5265120383553642404
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A086770.P5265120383553642404

/-!
# A086772: Store the natural numbers in a triangular array such that values on each row have the same number of 1 bits. Start a new row with the smallest number not yet recorded. a(n) represents the initial terms in the resulting array.

The programs for A086772, there is no canonical definition to state claims against.
-/

/-! ## A086772.P2135480275181626777

`eq[1, ∑{e}[A005255(A104515(3*(n+1))+2), #]]`
-/

namespace A086772.P2135480275181626777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005255 (A104515 (3 * (n + 1)) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086772.P2135480275181626777

/-! ## A086772.P13794886976747120353

`∪[eq[1, A124766(2*n+1)], A192162(n+1)]`
-/

namespace A086772.P13794886976747120353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A086772.P13794886976747120353

/-! ## A086772.P931891315586953000

`A186734(A001115(n))+A158911(n+1)`
-/

namespace A086772.P931891315586953000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186734 (A001115 n).toNat + A158911 (n + 1)

end

end A086772.P931891315586953000

/-! ## A086772.P14058940010676169621

`A025487(n+1)-A080577(A229095(n+1))`
-/

namespace A086772.P14058940010676169621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1) - A080577 (A229095 (n + 1)).toNat

end

end A086772.P14058940010676169621

/-!
# A086776: Smaller member of a prime pair (p, p+6) with a square sum.

The programs for A086776, there is no canonical definition to state claims against.
-/

/-! ## A086776.P5258754950812466632

`p?[p?[A093328(n)]-6]`
-/

namespace A086776.P5258754950812466632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093328 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086776.P5258754950812466632

/-! ## A086776.P15272051422771182492

`p?[A201473(n+1)-6]`
-/

namespace A086776.P15272051422771182492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201473 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086776.P15272051422771182492

/-! ## A086776.P3283524303173811883

`p?[A201712(n+1)+6]-6`
-/

namespace A086776.P3283524303173811883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201712 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A086776.P3283524303173811883

/-! ## A086776.P12775434720317623481

`p?[2*A216968(n+1)²-3]`
-/

namespace A086776.P12775434720317623481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216968 (n + 1) ^ 2 - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086776.P12775434720317623481

/-! ## A086776.P1814537381484326746

`p?[A001105(A216968(n+1))-3]`
-/

namespace A086776.P1814537381484326746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (A216968 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086776.P1814537381484326746

/-!
# A086778: 

The programs for A086778, there is no canonical definition to state claims against.
-/

/-! ## A086778.P15343339900465913073

`floor(∑[5*a(n-1)]²)*A053292(n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A086778.P15343339900465913073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A053292 n

end

end A086778.P15343339900465913073

/-!
# A086779: Numbers k such that k-th cyclotomic polynomial has exactly 7 nonzero terms.

The programs for A086779, there is no canonical definition to state claims against.
-/

/-! ## A086779.P6125369877294674065

`A143204(1+n)/2`
-/

namespace A086779.P6125369877294674065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143204 (1 + n) : ℚ) / 2

end

end A086779.P6125369877294674065

/-! ## A086779.P7396284586469885584

`eq[7, A051664(n+1)]+1`
-/

namespace A086779.P7396284586469885584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086779.P7396284586469885584

/-! ## A086779.P11450274396319239548

`eq[7, A318884(n+1)]+1`
-/

namespace A086779.P11450274396319239548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086779.P11450274396319239548

/-! ## A086779.P10554764234148398325

`record[A025480(A085900(n))]`
-/

namespace A086779.P10554764234148398325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A085900 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086779.P10554764234148398325

/-! ## A086779.P10827347427843033758

`A001281(A143204(n+1))`
-/

namespace A086779.P10827347427843033758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A143204 (n + 1)).toNat

end

end A086779.P10827347427843033758

/-! ## A086779.P16477801916962164285

`eq[6, A143201(A004277(n))]`
-/

namespace A086779.P16477801916962164285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143201 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086779.P16477801916962164285

/-! ## A086779.P5547476484262878560

`eq[7, A051664(A028310(n))]`
-/

namespace A086779.P5547476484262878560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086779.P5547476484262878560

/-! ## A086779.P5856896258038949006

`A004524(A143204(n+1)+1)`
-/

namespace A086779.P5856896258038949006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A143204 (n + 1) + 1).toNat

end

end A086779.P5856896258038949006

/-! ## A086779.P11906250309650985616

`A004526(A143204(n+1)+1)`
-/

namespace A086779.P11906250309650985616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A143204 (n + 1) + 1).toNat

end

end A086779.P11906250309650985616

/-! ## A086779.P169436461331102396

`A028242(A143204(n+1)+1)`
-/

namespace A086779.P169436461331102396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A143204 (n + 1) + 1).toNat

end

end A086779.P169436461331102396

/-!
# A086780: Number of negative terms in n-th cyclotomic polynomial.

The programs for A086780, there is no canonical definition to state claims against.
-/

/-! ## A086780.P14569051623613904849

`A051664(n+1)-A086765(n+1)`
-/

namespace A086780.P14569051623613904849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) - A086765 (n + 1)

end

end A086780.P14569051623613904849

/-! ## A086780.P4172067399625999513

`∑{d}[n+1, A087073(#)]-A086765(n+1)`
-/

namespace A086780.P4172067399625999513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087073 d - A086765 (n + 1)

end

end A086780.P4172067399625999513

/-! ## A086780.P12975963801482673790

`A006530(n+1)+A070536(n+1)-A086765(n+1)`
-/

namespace A086780.P12975963801482673790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + (A070536 (n + 1) - A086765 (n + 1))

end

end A086780.P12975963801482673790

/-! ## A086780.P373632861778015011

`A039649(n+1)-(A086798(n+1)+A086765(n+1))`
-/

namespace A086780.P373632861778015011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A086798 (n + 1) + A086765 (n + 1))

end

end A086780.P373632861778015011

/-! ## A086780.P5135162110652059959

`A000010(n+1)+1-A086798(n+1)-A086765(n+1)`
-/

namespace A086780.P5135162110652059959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (1 - A086798 (n + 1)) - A086765 (n + 1)

end

end A086780.P5135162110652059959

/-! ## A086780.P15427328513940001054

`A051664(n+1)+A086765(n+1)*A162512(A151800(n))`
-/

namespace A086780.P15427328513940001054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) + A086765 (n + 1) * A162512 (A151800 n).toNat

end

end A086780.P15427328513940001054

/-! ## A086780.P18352350849488708561

`A086765(n+1)-A020500((n+1)²)`
-/

namespace A086780.P18352350849488708561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086765 (n + 1) - A020500 ((n + 1) ^ 2)

end

end A086780.P18352350849488708561

/-! ## A086780.P11775168787444757761

`A318884(n+1)-A118759(A086765(n+1))`
-/

namespace A086780.P11775168787444757761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - A118759 (A086765 (n + 1)).toNat

end

end A086780.P11775168787444757761

/-! ## A086780.P16102818701814964862

`A318884(n+1)-A086765(n+1)%A086779(n+1)`
-/

namespace A086780.P16102818701814964862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1) - Int.tmod (A086765 (n + 1)) (A086779 (n + 1))

end

end A086780.P16102818701814964862

/-!
# A086781: a(n) is the number of nonzero terms in the expansion of (x-y) * (x^2-y^2) * (x^3-y^3) * ... * (x^n-y^n).

The programs for A086781, there is no canonical definition to state claims against.
-/

/-! ## A086781.P6640041084738002607

`∑[n]+1-A301705(A028310(n))`
-/

namespace A086781.P6640041084738002607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A301705 (A028310 n).toNat

end

end A086781.P6640041084738002607

/-! ## A086781.P3731582366998956530

`A000217(n)+1-A301705(A028310(n))`
-/

namespace A086781.P3731582366998956530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (1 - A301705 (A028310 n).toNat)

end

end A086781.P3731582366998956530

/-! ## A086781.P17162073594707645930

`A000124(n)-A301705(A233583(n+1))`
-/

namespace A086781.P17162073594707645930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A301705 (A233583 (n + 1)).toNat

end

end A086781.P17162073594707645930

/-! ## A086781.P10900756696624998015

`A000124(n)-A301705(A123108(2*n))`
-/

namespace A086781.P10900756696624998015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A301705 (A123108 (2 * n)).toNat

end

end A086781.P10900756696624998015

/-! ## A086781.P5192920912138318087

`A000124(n)-A301705(A000038(n)+n)`
-/

namespace A086781.P5192920912138318087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A301705 (A000038 n + (n : ℤ)).toNat

end

end A086781.P5192920912138318087

/-! ## A086781.P8920014785135240943

`Δ[A000125(n)]-A301705(A233583(n+1))`
-/

namespace A086781.P8920014785135240943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A301705 (A233583 (n + 1)).toNat

end

end A086781.P8920014785135240943

/-!
# A086782: Sum of the degrees of the irreducible representations of the group GL(3,Z_n).

The programs for A086782, there is no canonical definition to state claims against.
-/

/-! ## A086782.P18351140326295481793

`A115226(n+1)+A001613(A328259(n+1))`
-/

namespace A086782.P18351140326295481793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115226 (n + 1) + A001613 (A328259 (n + 1)).toNat

end

end A086782.P18351140326295481793

/-!
# A086783: Discriminant of the polynomial x^n - 1.

The programs for A086783, the canonical program `A086783.P17957029669725245606` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086783 has offset 1).

The definition of A086783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086783.P17957029669725245606

`(-1)^floor(n/2)*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086783

/-- `(-1)^floor(n/2)*(n+1)^(n+1)` -/
def P17957029669725245606.Spec : Prop :=
  ∀ n, P17957029669725245606.a n = (A086783 (n + 1) : ℚ)

end A086783

/-! ## A086783.P16789300899394619564

`(n+1)^(n+1)/(1-and(2, n))`
-/

namespace A086783.P16789300899394619564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) / (1 - (Nat.land 2 n : ℤ) : ℚ)

end

end A086783.P16789300899394619564

namespace A086783

/-- `(n+1)^(n+1)/(1-and(2, n))` -/
def P16789300899394619564.Spec : Prop :=
  ∀ n, P16789300899394619564.a n = (A086783 (n + 1) : ℚ)

end A086783

/-! ## A086783.P4580829732064690970

`(n+1)^(n+1)/A057077(n)`
-/

namespace A086783.P4580829732064690970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) / (A057077 n : ℚ)

end

end A086783.P4580829732064690970

namespace A086783

/-- `(n+1)^(n+1)/A057077(n)` -/
def P4580829732064690970.Spec : Prop :=
  ∀ n, P4580829732064690970.a n = (A086783 (n + 1) : ℚ)

end A086783

/-! ## A086783.P5417091032099696443

`(n+1)^A000027(n+1)/(-1)^(∑[n]+n)`
-/

namespace A086783.P5417091032099696443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000027 (n + 1) : ℤ) / ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ)

end

end A086783.P5417091032099696443

namespace A086783

/-- `(n+1)^A000027(n+1)/(-1)^(∑[n]+n)` -/
def P5417091032099696443.Spec : Prop :=
  ∀ n, P5417091032099696443.a n = (A086783 (n + 1) : ℚ)

end A086783

/-! ## A086783.P4770275535756700595

`-∏[A177885(n+2)/A000312(n)]`
-/

namespace A086783.P4770275535756700595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177885 (n + 2) : ℚ) / (A000312 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A086783.P4770275535756700595

namespace A086783

/-- `-∏[A177885(n+2)/A000312(n)]` -/
def P4770275535756700595.Spec : Prop :=
  ∀ n, P4770275535756700595.a n = (A086783 (n + 1) : ℚ)

end A086783

/-!
# A086784: Number of non-trailing zeros in binary representation of n.

The programs for A086784, the canonical program `A086784.P15348777293391552746` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086784 has offset 0).

The definition of A086784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086784.P15348777293391552746

`A080791(n)-∑{e}[and(n, -n), #]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A086784

/-- `A080791(n)-∑{e}[and(n, -n), #]` -/
def P15348777293391552746.Spec : Prop :=
  ∀ n, P15348777293391552746.a n = A086784 n

theorem P15348777293391552746.correct : P15348777293391552746.Spec := by
  intro n
  simp only [A086784]

end A086784

/-! ## A086784.P6183768149438494332

`A008687(n+1)-∏{e}[xor(n, -n), #]`
-/

namespace A086784.P6183768149438494332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A086784.P6183768149438494332

namespace A086784

/-- `A008687(n+1)-∏{e}[xor(n, -n), #]` -/
def P6183768149438494332.Spec : Prop :=
  ∀ n, P6183768149438494332.a n = A086784 n

end A086784

/-! ## A086784.P209249225917056264

`A048881(n-(Δ[n²]-2^ceil(log2(n+1))))`
-/

namespace A086784.P209249225917056264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (SequenceMachineLib.roundAway ((n : ℚ) - (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))).toNat

end

end A086784.P209249225917056264

namespace A086784

/-- `A048881(n-(Δ[n²]-2^ceil(log2(n+1))))` -/
def P209249225917056264.Spec : Prop :=
  ∀ n, P209249225917056264.a n = A086784 n

end A086784

/-! ## A086784.P975510435535106244

`A080791(A325401(n))`
-/

namespace A086784.P975510435535106244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A325401 n).toNat

end

end A086784.P975510435535106244

namespace A086784

/-- `A080791(A325401(n))` -/
def P975510435535106244.Spec : Prop :=
  ∀ n, P975510435535106244.a n = A086784 n

end A086784

/-! ## A086784.P18326663108357367163

`A000120(A340632(n)-n)`
-/

namespace A086784.P18326663108357367163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A340632 n - (n : ℤ)).toNat

end

end A086784.P18326663108357367163

namespace A086784

/-- `A000120(A340632(n)-n)` -/
def P18326663108357367163.Spec : Prop :=
  ∀ n, P18326663108357367163.a n = A086784 n

end A086784

/-! ## A086784.P17907894789528176487

`log2(A062383(n)/A131136(n))`
-/

namespace A086784.P17907894789528176487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A062383 n : ℚ) / (A131136 n : ℚ) : ℝ)

end

end A086784.P17907894789528176487

namespace A086784

/-- `log2(A062383(n)/A131136(n))` -/
def P17907894789528176487.Spec : Prop :=
  ∀ n, P17907894789528176487.a n = (A086784 n : ℝ)

end A086784

/-! ## A086784.P17832103717420303656

`A000120(A035327(n)+1)-1`
-/

namespace A086784.P17832103717420303656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n + 1).toNat - 1

end

end A086784.P17832103717420303656

namespace A086784

/-- `A000120(A035327(n)+1)-1` -/
def P17832103717420303656.Spec : Prop :=
  ∀ n, P17832103717420303656.a n = A086784 n

end A086784

/-! ## A086784.P17286077067744805535

`A023416(n)+A088705(n)-1`
-/

namespace A086784.P17286077067744805535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + (A088705 n - 1)

end

end A086784.P17286077067744805535

namespace A086784

/-- `A023416(n)+A088705(n)-1` -/
def P17286077067744805535.Spec : Prop :=
  ∀ n, P17286077067744805535.a n = A086784 n

end A086784

/-! ## A086784.P1957884640551111492

`A004275(A008687(n))-A008687(n)`
-/

namespace A086784.P1957884640551111492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A008687 n).toNat - A008687 n

end

end A086784.P1957884640551111492

namespace A086784

/-- `A004275(A008687(n))-A008687(n)` -/
def P1957884640551111492.Spec : Prop :=
  ∀ n, P1957884640551111492.a n = A086784 n

end A086784

/-! ## A086784.P13220163564339357016

`A000120(A053645(n+1-A006257(n)))`
-/

namespace A086784.P13220163564339357016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053645 ((n + 1 : ℤ) - A006257 n).toNat).toNat

end

end A086784.P13220163564339357016

namespace A086784

/-- `A000120(A053645(n+1-A006257(n)))` -/
def P13220163564339357016.Spec : Prop :=
  ∀ n, P13220163564339357016.a n = A086784 n

end A086784

/-! ## A086784.P17341318143083759922

`A080791(A030101(n))`
-/

namespace A086784.P17341318143083759922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A030101 n).toNat

end

end A086784.P17341318143083759922

namespace A086784

/-- `A080791(A030101(n))` -/
def P17341318143083759922.Spec : Prop :=
  ∀ n, P17341318143083759922.a n = A086784 n

end A086784

/-! ## A086784.P16278398064606114501

`A092339(A378299(n))`
-/

namespace A086784.P16278398064606114501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A378299 n).toNat

end

end A086784.P16278398064606114501

namespace A086784

/-- `A092339(A378299(n))` -/
def P16278398064606114501.Spec : Prop :=
  ∀ n, P16278398064606114501.a n = A086784 n

end A086784

/-! ## A086784.P9829683269301101983

`A023416(n)-A023416(A340632(n))`
-/

namespace A086784.P9829683269301101983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - A023416 (A340632 n).toNat

end

end A086784.P9829683269301101983

namespace A086784

/-- `A023416(n)-A023416(A340632(n))` -/
def P9829683269301101983.Spec : Prop :=
  ∀ n, P9829683269301101983.a n = A086784 n

end A086784

/-! ## A086784.P9605086218885099512

`A023416(or(n, abs(1-n)))`
-/

namespace A086784.P9605086218885099512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.lor (n : ℤ) |1 - (n : ℤ)|).toNat

end

end A086784.P9605086218885099512

namespace A086784

/-- `A023416(or(n, abs(1-n)))` -/
def P9605086218885099512.Spec : Prop :=
  ∀ n, P9605086218885099512.a n = A086784 n

end A086784

/-! ## A086784.P14249139992140213981

`A080791(or(n, abs(1-n)))`
-/

namespace A086784.P14249139992140213981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.lor (n : ℤ) |1 - (n : ℤ)|).toNat

end

end A086784.P14249139992140213981

namespace A086784

/-- `A080791(or(n, abs(1-n)))` -/
def P14249139992140213981.Spec : Prop :=
  ∀ n, P14249139992140213981.a n = A086784 n

end A086784

/-! ## A086784.P10093265293454909986

`A029837(n+1)-A029837(A131136(n))`
-/

namespace A086784.P10093265293454909986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A029837 (A131136 n).toNat

end

end A086784.P10093265293454909986

namespace A086784

/-- `A029837(n+1)-A029837(A131136(n))` -/
def P10093265293454909986.Spec : Prop :=
  ∀ n, P10093265293454909986.a n = A086784 n

end A086784

/-! ## A086784.P6995931363584696889

`A080791(2*n)-∑{e}[xor(n, -n), #]`
-/

namespace A086784.P6995931363584696889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * n) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A086784.P6995931363584696889

namespace A086784

/-- `A080791(2*n)-∑{e}[xor(n, -n), #]` -/
def P6995931363584696889.Spec : Prop :=
  ∀ n, P6995931363584696889.a n = A086784 n

end A086784

/-! ## A086784.P16030350491600207870

`A088705(2*n)+A080791(n)`
-/

namespace A086784.P16030350491600207870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n) + A080791 n

end

end A086784.P16030350491600207870

namespace A086784

/-- `A088705(2*n)+A080791(n)` -/
def P16030350491600207870.Spec : Prop :=
  ∀ n, P16030350491600207870.a n = A086784 n

end A086784

/-! ## A086784.P3018386228089413483

`A023416(2*n+1)-∑{e}[or(n, -n), #]`
-/

namespace A086784.P3018386228089413483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A086784.P3018386228089413483

namespace A086784

/-- `A023416(2*n+1)-∑{e}[or(n, -n), #]` -/
def P3018386228089413483.Spec : Prop :=
  ∀ n, P3018386228089413483.a n = A086784 n

end A086784

/-! ## A086784.P3940912235312590051

`A088705(2*n)+A023416(2*n+1)`
-/

namespace A086784.P3940912235312590051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n) + A023416 (2 * n + 1)

end

end A086784.P3940912235312590051

namespace A086784

/-- `A088705(2*n)+A023416(2*n+1)` -/
def P3940912235312590051.Spec : Prop :=
  ∀ n, P3940912235312590051.a n = A086784 n

end A086784

/-!
# A086785: Primes found among the numerators of the continued fraction rational approximations to Pi.

The programs for A086785, there is no canonical definition to state claims against.
-/

/-! ## A086785.P354788007314767141

`A224936(A269315(n+1)/3)`
-/

namespace A086785.P354788007314767141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224936 (SequenceMachineLib.roundAway ((A269315 (n + 1) : ℚ) / 3)).toNat

end

end A086785.P354788007314767141

/-!
# A086786: Triangle read by rows: n-th row is the smallest set of n numbers in arithmetic progression with the same prime signature.

The programs for A086786, there is no canonical definition to state claims against.
-/

/-! ## A086786.P9337359499846246604

`A113460(n+1)%A080530(n)`
-/

namespace A086786.P9337359499846246604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113460 (n + 1)) (A080530 n)

end

end A086786.P9337359499846246604

/-! ## A086786.P8986256853861234871

`A113470(n+1)%A080530(n)`
-/

namespace A086786.P8986256853861234871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113470 (n + 1)) (A080530 n)

end

end A086786.P8986256853861234871

/-! ## A086786.P10277931850877896394

`A006530(∏{d}[A113470(n+1), #²])`
-/

namespace A086786.P10277931850877896394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)

end

end A086786.P10277931850877896394

/-! ## A086786.P9306781076148728006

`A020639(∏{d}[A113470(n+1), #²])`
-/

namespace A086786.P9306781076148728006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2)

end

end A086786.P9306781076148728006

/-! ## A086786.P5783914474891985757

`A006530(∏{d}[∏{d}[A113470(n+1), #], #])`
-/

namespace A086786.P5783914474891985757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113470 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A086786.P5783914474891985757

/-!
# A086787: a(n) = Sum_{i=1..n} ( Sum_{j=1..n} i^j ).

The programs for A086787, there is no canonical definition to state claims against.
-/

/-! ## A086787.P9178804085721113144

`A124403(n+1)+1`
-/

namespace A086787.P9178804085721113144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124403 (n + 1) + 1

end

end A086787.P9178804085721113144

/-! ## A086787.P4214082038317817100

`A124405(n+1)-1`
-/

namespace A086787.P4214082038317817100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124405 (n + 1) - 1

end

end A086787.P4214082038317817100

/-! ## A086787.P10578258856345768366

`A134824(n+2)+A124405(n+1)`
-/

namespace A086787.P10578258856345768366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A124405 (n + 1)

end

end A086787.P10578258856345768366

/-! ## A086787.P5301472340980435422

`A144432(∑[n+1])+A124405(n+1)`
-/

namespace A086787.P5301472340980435422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144432 (∑ j ∈ Finset.range (n + 1), f1 j) + A124405 (n + 1)

end

end A086787.P5301472340980435422

/-!
# A086790: a(n) = floor((1+n+2*n^2+4*n^3)/(1+2*n+n^2)).

The programs for A086790, the canonical program `A086790.P15157598517783096912` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086790 has offset 1).

The definition of A086790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((1+n+2*n²+4*n^3)/(1+2*n+n²))` (program `A086790.P15157598517783096912`, by `A086790.P15157598517783096912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086790.P2043416301169257259

`floor(4*n-6+9/(n+1)-2/(n+1)²)`
-/

namespace A086790.P2043416301169257259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * n : ℤ) - 6 : ℚ) + 9 / (n + 1 : ℚ) - 2 / ((n + 1) ^ 2 : ℚ)⌋

end

end A086790.P2043416301169257259

namespace A086790

/-- `floor(4*n-6+9/(n+1)-2/(n+1)²)` -/
def P2043416301169257259.Spec : Prop :=
  ∀ n, P2043416301169257259.a n = A086790 (n + 1)

theorem P2043416301169257259.correct : P2043416301169257259.Spec := by
  intro n
  simp only [A086790, Nat.add_sub_cancel, A086790.P2043416301169257259.a, A086790.P15157598517783096912.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A086790

/-! ## A086790.P15157598517783096912

`floor((1+n+2*n²+4*n^3)/(1+2*n+n²))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A086790

/-- `floor((1+n+2*n²+4*n^3)/(1+2*n+n²))` -/
def P15157598517783096912.Spec : Prop :=
  ∀ n, P15157598517783096912.a n = A086790 (n + 1)

theorem P15157598517783096912.correct : P15157598517783096912.Spec := by
  intro n
  simp only [A086790, Nat.add_sub_cancel]

end A086790

/-!
# A086792: Orders of finite groups G with the property that the sum of the orders of all the proper normal subgroups of G equals the order of G.

The programs for A086792, there is no canonical definition to state claims against.
-/

/-! ## A086792.P7263964905025550203

`A009242(A193592(n)+A140432(n+1))`
-/

namespace A086792.P7263964905025550203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009242 (A193592 n + A140432 (n + 1)).toNat

end

end A086792.P7263964905025550203

/-!
# A086794: Numbers k such that the k-th cyclotomic polynomial has exactly 9 nonzero terms.

The programs for A086794, there is no canonical definition to state claims against.
-/

/-! ## A086794.P14394521049517704904

`21*A108319(n+1)`
-/

namespace A086794.P14394521049517704904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A108319 (n + 1)

end

end A086794.P14394521049517704904

/-! ## A086794.P10907948543332603435

`eq[9, A318884(n+1)]+1`
-/

namespace A086794.P10907948543332603435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086794.P10907948543332603435

/-! ## A086794.P7257668192126803887

`eq[21, A204455(n+1)]+1`
-/

namespace A086794.P7257668192126803887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086794.P7257668192126803887

/-! ## A086794.P16405851882438404383

`eq[5, A076511(gcd(n, C(2, n))+n)]`
-/

namespace A086794.P16405851882438404383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076511 (Nat.gcd n (Nat.choose 2 n) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086794.P16405851882438404383

/-! ## A086794.P11754381293521246146

`A008603(A108319(n+1))`
-/

namespace A086794.P11754381293521246146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 (A108319 (n + 1)).toNat

end

end A086794.P11754381293521246146

/-!
# A086795: a(n) is the number of terms in the expansion of (x-2y)*(x^2-2y^2)*(x^3-2y^3)*...*(x^n-2y^n).

The programs for A086795, there is no canonical definition to state claims against.
-/

/-! ## A086795.P3412455509322569999

`A057079(A112619(n+1))+A007187(n+2)`
-/

namespace A086795.P3412455509322569999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A112619 (n + 1)).toNat + A007187 (n + 2)

end

end A086795.P3412455509322569999

/-!
# A086796: a(n) is the number of terms in the expansion of (x+y+z)*(x^2+y^2+z^2)*(x^3+y^3+z^3)*...*(x^n+y^n+z^n).

The programs for A086796, there is no canonical definition to state claims against.
-/

/-! ## A086796.P2141243939114629290

`∑[A337091(∑[A001399(n)²])]`
-/

namespace A086796.P2141243939114629290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337091 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086796.P2141243939114629290

/-!
# A086797: Discriminant of the polynomial x^n - x - 1.

The programs for A086797, there is no canonical definition to state claims against.
-/

/-! ## A086797.P12266409397090917373

`Δ[n^n*A057077(n+2)]*A165326(n)`
-/

namespace A086797.P12266409397090917373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A057077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A165326 n

end

end A086797.P12266409397090917373

/-!
# A086798: Number of coefficients equal to zero in n-th cyclotomic polynomial.

The programs for A086798, there is no canonical definition to state claims against.
-/

/-! ## A086798.P6424233638820309470

`1+A000010(n+1)-A051664(n+1)`
-/

namespace A086798.P6424233638820309470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000010 (n + 1) - A051664 (n + 1)

end

end A086798.P6424233638820309470

/-! ## A086798.P9012814977495245963

`A039649(n+1)-A051664(n+1)`
-/

namespace A086798.P9012814977495245963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A051664 (n + 1)

end

end A086798.P9012814977495245963

/-! ## A086798.P11296665646849967203

`Δ[A005728(n)]+1-A051664(n+1)`
-/

namespace A086798.P11296665646849967203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A051664 (n + 1))

end

end A086798.P11296665646849967203

/-! ## A086798.P934463054139076594

`A109606(n+1)+2-A051664(n+1)`
-/

namespace A086798.P934463054139076594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (2 - A051664 (n + 1))

end

end A086798.P934463054139076594

/-! ## A086798.P15039455368929821680

`A349137(2*n+1)+1-A051664(n+1)`
-/

namespace A086798.P15039455368929821680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) + (1 - A051664 (n + 1))

end

end A086798.P15039455368929821680

/-! ## A086798.P8002709407343018303

`A000010(n+1)-A029578(A051664(n+1))`
-/

namespace A086798.P8002709407343018303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A029578 (A051664 (n + 1)).toNat

end

end A086798.P8002709407343018303

/-! ## A086798.P14786561312385738828

`A349137(2*n+1)-A023443(A051664(n+1))`
-/

namespace A086798.P14786561312385738828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) - A023443 (A051664 (n + 1)).toNat

end

end A086798.P14786561312385738828

/-! ## A086798.P12636326238299909922

`A039649(n+1)-(A086780(n+1)+A086765(n+1))`
-/

namespace A086798.P12636326238299909922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A086780 (n + 1) + A086765 (n + 1))

end

end A086798.P12636326238299909922

/-! ## A086798.P14258644151394381298

`floor(log2(A243305(n+1)))+1-A051664(n+1)`
-/

namespace A086798.P14258644151394381298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A243305 (n + 1)).toNat + 1 : ℤ) - A051664 (n + 1)

end

end A086798.P14258644151394381298

/-! ## A086798.P6409515649480943244

`∑{digits}[A063671(n+1), 1-#]`
-/

namespace A086798.P6409515649480943244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A086798.P6409515649480943244

/-!
# A086799: Replace all trailing 0's with 1's in binary representation of n.

The programs for A086799, the canonical program `A086799.P9205918305807423925` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086799 has offset 1).

The definition of A086799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086799.P9205918305807423925

`or(n+1, n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A086799

/-- `or(n+1, n)` -/
def P9205918305807423925.Spec : Prop :=
  ∀ n, (P9205918305807423925.a n : ℤ) = A086799 (n + 1)

theorem P9205918305807423925.correct : P9205918305807423925.Spec := by
  intro n
  simp only [A086799, Nat.add_sub_cancel]

end A086799

/-! ## A086799.P9146845301249898954

`A006519(n+1)+n`
-/

namespace A086799.P9146845301249898954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) + (n : ℤ)

end

end A086799.P9146845301249898954

namespace A086799

/-- `A006519(n+1)+n` -/
def P9146845301249898954.Spec : Prop :=
  ∀ n, P9146845301249898954.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P9611130911084250974

`n+2^A007814(n+1)`
-/

namespace A086799.P9611130911084250974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + (2 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A086799.P9611130911084250974

namespace A086799

/-- `n+2^A007814(n+1)` -/
def P9611130911084250974.Spec : Prop :=
  ∀ n, P9611130911084250974.a n = (A086799 (n + 1) : ℚ)

end A086799

/-! ## A086799.P10348365076568394565

`abs(or(n, -xor(n, -1)))`
-/

namespace A086799.P10348365076568394565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-Int.xor (n : ℤ) (-1))|

end

end A086799.P10348365076568394565

namespace A086799

/-- `abs(or(n, -xor(n, -1)))` -/
def P10348365076568394565.Spec : Prop :=
  ∀ n, P10348365076568394565.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P5908245760363198595

`∏[abs(ratio[or(n, n-1)])]`
-/

namespace A086799.P5908245760363198595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086799.P5908245760363198595

namespace A086799

/-- `∏[abs(ratio[or(n, n-1)])]` -/
def P5908245760363198595.Spec : Prop :=
  ∀ n, P5908245760363198595.a n = (A086799 (n + 1) : ℚ)

end A086799

/-! ## A086799.P2341612314002174313

`2^val(n+1, 2)+n`
-/

namespace A086799.P2341612314002174313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 + n

end

end A086799.P2341612314002174313

namespace A086799

/-- `2^val(n+1, 2)+n` -/
def P2341612314002174313.Spec : Prop :=
  ∀ n, (P2341612314002174313.a n : ℤ) = A086799 (n + 1)

end A086799

/-! ## A086799.P6086877896906885659

`Δ[n²]-and(n, n+1)`
-/

namespace A086799.P6086877896906885659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.land n (n + 1) : ℤ)

end

end A086799.P6086877896906885659

namespace A086799

/-- `Δ[n²]-and(n, n+1)` -/
def P6086877896906885659.Spec : Prop :=
  ∀ n, P6086877896906885659.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P16915707917436567651

`abs(or(n, ϕ²-(ϕ-n)))`
-/

namespace A086799.P16915707917436567651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ))))|

end

end A086799.P16915707917436567651

namespace A086799

/-- `abs(or(n, ϕ²-(ϕ-n)))` -/
def P16915707917436567651.Spec : Prop :=
  ∀ n, P16915707917436567651.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P7393965847080115438

`and(n+1, -(n+1))+n`
-/

namespace A086799.P7393965847080115438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

end

end A086799.P7393965847080115438

namespace A086799

/-- `and(n+1, -(n+1))+n` -/
def P7393965847080115438.Spec : Prop :=
  ∀ n, P7393965847080115438.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P2719301119176567447

`n-xor(n, -(n+2))/2`
-/

namespace A086799.P2719301119176567447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (Int.xor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2

end

end A086799.P2719301119176567447

namespace A086799

/-- `n-xor(n, -(n+2))/2` -/
def P2719301119176567447.Spec : Prop :=
  ∀ n, P2719301119176567447.a n = (A086799 (n + 1) : ℚ)

end A086799

/-! ## A086799.P15977884675413739091

`ceil(xor(n, n+1)/2+n)`
-/

namespace A086799.P15977884675413739091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) : ℚ) / 2 + (n : ℚ)⌉

end

end A086799.P15977884675413739091

namespace A086799

/-- `ceil(xor(n, n+1)/2+n)` -/
def P15977884675413739091.Spec : Prop :=
  ∀ n, P15977884675413739091.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P10301465894065215482

`round(xor(n, n+1)/2+n)`
-/

namespace A086799.P10301465894065215482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2 + (n : ℚ))

end

end A086799.P10301465894065215482

namespace A086799

/-- `round(xor(n, n+1)/2+n)` -/
def P10301465894065215482.Spec : Prop :=
  ∀ n, P10301465894065215482.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P7045337888147576054

`2*n+1-and(n, n+1)`
-/

namespace A086799.P7045337888147576054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - (Nat.land n (n + 1) : ℤ))

end

end A086799.P7045337888147576054

namespace A086799

/-- `2*n+1-and(n, n+1)` -/
def P7045337888147576054.Spec : Prop :=
  ∀ n, P7045337888147576054.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P17485783281865822482

`(xor(n, n+1)+1)/2+n`
-/

namespace A086799.P17485783281865822482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℚ) / 2 + (n : ℚ)

end

end A086799.P17485783281865822482

namespace A086799

/-- `(xor(n, n+1)+1)/2+n` -/
def P17485783281865822482.Spec : Prop :=
  ∀ n, P17485783281865822482.a n = (A086799 (n + 1) : ℚ)

end A086799

/-! ## A086799.P12857161233317237357

`gcd(n+1, (3-n)^10)+n`
-/

namespace A086799.P12857161233317237357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((3 - (n : ℤ)) ^ 10) + n

end

end A086799.P12857161233317237357

namespace A086799

/-- `gcd(n+1, (3-n)^10)+n` -/
def P12857161233317237357.Spec : Prop :=
  ∀ n, (P12857161233317237357.a n : ℤ) = A086799 (n + 1)

end A086799

/-! ## A086799.P12898283692118928034

`∑[2-Δ[and(n, n-1)]]-1`
-/

namespace A086799.P12898283692118928034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A086799.P12898283692118928034

namespace A086799

/-- `∑[2-Δ[and(n, n-1)]]-1` -/
def P12898283692118928034.Spec : Prop :=
  ∀ n, P12898283692118928034.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P15406028788033658123

`1-and(n, n+1)+n+n`
-/

namespace A086799.P15406028788033658123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A086799.P15406028788033658123

namespace A086799

/-- `1-and(n, n+1)+n+n` -/
def P15406028788033658123.Spec : Prop :=
  ∀ n, P15406028788033658123.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P14631276524334707744

`xor(n+1, and(n, n+1))+n`
-/

namespace A086799.P14631276524334707744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.land n (n + 1)) + n

end

end A086799.P14631276524334707744

namespace A086799

/-- `xor(n+1, and(n, n+1))+n` -/
def P14631276524334707744.Spec : Prop :=
  ∀ n, (P14631276524334707744.a n : ℤ) = A086799 (n + 1)

end A086799

/-! ## A086799.P5031967048282975586

`n-1-or(n, n-2-2*n)`
-/

namespace A086799.P5031967048282975586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.lor (n : ℤ) ((n : ℤ) - 2 - (2 * n : ℤ))

end

end A086799.P5031967048282975586

namespace A086799

/-- `n-1-or(n, n-2-2*n)` -/
def P5031967048282975586.Spec : Prop :=
  ∀ n, P5031967048282975586.a n = A086799 (n + 1)

end A086799

/-! ## A086799.P774718106348562352

`2-(Δ[and(n, n-1)]-a(n-1))` with `a(0)=1`
-/

namespace A086799.P774718106348562352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (f1 (n + 1) - f1 n - a (n - 1))

end

end A086799.P774718106348562352

namespace A086799

/-- `2-(Δ[and(n, n-1)]-a(n-1))` -/
def P774718106348562352.Spec : Prop :=
  ∀ n, P774718106348562352.a n = A086799 (n + 1)

end A086799

