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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C050
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A095800: Triangle T(n,k) = abs( k *( (2*n+1)*(-1)^(n+k)+2*k-1) /4 ) read by rows, 1<=k<=n.

The programs for A095800, the canonical program `A095800.P8184852849266296313` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095800 has offset 1).

The definition of A095800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095800.P18358120208909077719

`T(n,k-1)+T(n-1,k-1)+row(n)+1-T(n-1,k)` with `a(0)=1`
-/

namespace A095800.P18358120208909077719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triLeft a n + SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n : ℤ) + 1 - SequenceMachineLib.triUp a n

end

end A095800.P18358120208909077719

namespace A095800

/-- `T(n,k-1)+T(n-1,k-1)+row(n)+1-T(n-1,k)` -/
def P18358120208909077719.Spec : Prop :=
  ∀ n, P18358120208909077719.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P13794789502233713176

`(col(n)+1)*(row(n)+1)-T(n-1,k)` with `a(0)=1`
-/

namespace A095800.P13794789502233713176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triRow n + 1) : ℤ) - SequenceMachineLib.triUp a n

end

end A095800.P13794789502233713176

namespace A095800

/-- `(col(n)+1)*(row(n)+1)-T(n-1,k)` -/
def P13794789502233713176.Spec : Prop :=
  ∀ n, P13794789502233713176.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P5683933756292814392

`(row(n)+1)*(T(n,k-1)+1-T(n-2,k-1))-T(n-1,k)` with `a(0)=1`
-/

namespace A095800.P5683933756292814392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * (SequenceMachineLib.triLeft a n + 1 - SequenceMachineLib.triUp2Left a n) - SequenceMachineLib.triUp a n

end

end A095800.P5683933756292814392

namespace A095800

/-- `(row(n)+1)*(T(n,k-1)+1-T(n-2,k-1))-T(n-1,k)` -/
def P5683933756292814392.Spec : Prop :=
  ∀ n, P5683933756292814392.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P289566395779151659

`T(n-2,k-1)+T(n-1,k-1)+row(n)+col(n)+1-T(n-1,k)` with `a(0)=1`
-/

namespace A095800.P289566395779151659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n : ℤ) + (SequenceMachineLib.triCol n : ℤ) + 1 - SequenceMachineLib.triUp a n

end

end A095800.P289566395779151659

namespace A095800

/-- `T(n-2,k-1)+T(n-1,k-1)+row(n)+col(n)+1-T(n-1,k)` -/
def P289566395779151659.Spec : Prop :=
  ∀ n, P289566395779151659.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P8184852849266296313

`A002260(n+1)*A209279(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095800

/-- `A002260(n+1)*A209279(n+1)` -/
def P8184852849266296313.Spec : Prop :=
  ∀ n, P8184852849266296313.a n = A095800 (n + 1)

theorem P8184852849266296313.correct : P8184852849266296313.Spec := by
  intro n
  simp only [A095800, Nat.add_sub_cancel]

end A095800

/-! ## A095800.P13919683183169221304

`(A002262(n)+1)*A209279(n+1)`
-/

namespace A095800.P13919683183169221304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A209279 (n + 1)

end

end A095800.P13919683183169221304

namespace A095800

/-- `(A002262(n)+1)*A209279(n+1)` -/
def P13919683183169221304.Spec : Prop :=
  ∀ n, P13919683183169221304.a n = A095800 (n + 1)

theorem P13919683183169221304.correct : P13919683183169221304.Spec := by
  intro n
  simp only [A095800, Nat.add_sub_cancel, A095800.P13919683183169221304.a, A095800.P8184852849266296313.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A209279, A209279.P3268424504752399846.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A095800

/-! ## A095800.P992218393557475088

`A128180(n+1)*A140756(n+1)`
-/

namespace A095800.P992218393557475088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128180 (n + 1) * A140756 (n + 1)

end

end A095800.P992218393557475088

namespace A095800

/-- `A128180(n+1)*A140756(n+1)` -/
def P992218393557475088.Spec : Prop :=
  ∀ n, P992218393557475088.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P13782522569934495938

`A092543(A056011(n+1))*A209279(n+1)`
-/

namespace A095800.P13782522569934495938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (A056011 (n + 1)).toNat * A209279 (n + 1)

end

end A095800.P13782522569934495938

namespace A095800

/-- `A092543(A056011(n+1))*A209279(n+1)` -/
def P13782522569934495938.Spec : Prop :=
  ∀ n, P13782522569934495938.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P3821753670203995972

`A002260(n+1)*A128180(n+1)*A097807(n)`
-/

namespace A095800.P3821753670203995972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128180 (n + 1) * A097807 n

end

end A095800.P3821753670203995972

namespace A095800

/-- `A002260(n+1)*A128180(n+1)*A097807(n)` -/
def P3821753670203995972.Spec : Prop :=
  ∀ n, P3821753670203995972.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P12288250838518210168

`A002260(n+1)*A004736(A057028(n+1))`
-/

namespace A095800.P12288250838518210168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (A057028 (n + 1)).toNat

end

end A095800.P12288250838518210168

namespace A095800

/-- `A002260(n+1)*A004736(A057028(n+1))` -/
def P12288250838518210168.Spec : Prop :=
  ∀ n, P12288250838518210168.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P17510139248342471172

`A002260(n+1)*A057059(A038722(n+1))`
-/

namespace A095800.P17510139248342471172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A057059 (A038722 (n + 1)).toNat

end

end A095800.P17510139248342471172

namespace A095800

/-- `A002260(n+1)*A057059(A038722(n+1))` -/
def P17510139248342471172.Spec : Prop :=
  ∀ n, P17510139248342471172.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P15818257520612449000

`A002260(n+1)*A002260(A209293(n+1))`
-/

namespace A095800.P15818257520612449000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A002260 (A209293 (n + 1)).toNat

end

end A095800.P15818257520612449000

namespace A095800

/-- `A002260(n+1)*A002260(A209293(n+1))` -/
def P15818257520612449000.Spec : Prop :=
  ∀ n, P15818257520612449000.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P2623571927282313499

`A209279(A185180(n+1))*A209279(n+1)`
-/

namespace A095800.P2623571927282313499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (A185180 (n + 1)).toNat * A209279 (n + 1)

end

end A095800.P2623571927282313499

namespace A095800

/-- `A209279(A185180(n+1))*A209279(n+1)` -/
def P2623571927282313499.Spec : Prop :=
  ∀ n, P2623571927282313499.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P13277553410955995468

`A209279(n+1)*A220073(A209293(n+1))`
-/

namespace A095800.P13277553410955995468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209279 (n + 1) * A220073 (A209293 (n + 1)).toNat

end

end A095800.P13277553410955995468

namespace A095800

/-- `A209279(n+1)*A220073(A209293(n+1))` -/
def P13277553410955995468.Spec : Prop :=
  ∀ n, P13277553410955995468.a n = A095800 (n + 1)

end A095800

/-! ## A095800.P17773466265096391832

`A092542(A056023(n+1))*A209279(n+1)`
-/

namespace A095800.P17773466265096391832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (A056023 (n + 1)).toNat * A209279 (n + 1)

end

end A095800.P17773466265096391832

namespace A095800

/-- `A092542(A056023(n+1))*A209279(n+1)` -/
def P17773466265096391832.Spec : Prop :=
  ∀ n, P17773466265096391832.a n = A095800 (n + 1)

end A095800

/-!
# A095801: Square of Narayana triangle A001263: View A001263 as a lower triangular matrix. Then the square of that matrix is also lower triangular. Sequence gives this lower triangle, read by rows.

The programs for A095801, the canonical program `A095801.P16736391009877272143` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095801 has offset 1).

The definition of A095801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095801.P1460068144737095628

`A000108(C(comp[∑[n]]-n, 2)-n)*A001263(n+1)`
-/

namespace A095801.P1460068144737095628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A001263 (n + 1)

end

end A095801.P1460068144737095628

namespace A095801

/-- `A000108(C(comp[∑[n]]-n, 2)-n)*A001263(n+1)` -/
def P1460068144737095628.Spec : Prop :=
  ∀ n, P1460068144737095628.a n = A095801 (n + 1)

end A095801

/-! ## A095801.P16736391009877272143

`A001263(n+1)*A208355(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095801

/-- `A001263(n+1)*A208355(A099375(n))` -/
def P16736391009877272143.Spec : Prop :=
  ∀ n, P16736391009877272143.a n = A095801 (n + 1)

theorem P16736391009877272143.correct : P16736391009877272143.Spec := by
  intro n
  simp only [A095801, Nat.add_sub_cancel]

end A095801

/-! ## A095801.P6106565398376037266

`A000108(A004736(n+1))*A001263(n+1)`
-/

namespace A095801.P6106565398376037266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004736 (n + 1)).toNat * A001263 (n + 1)

end

end A095801.P6106565398376037266

namespace A095801

/-- `A000108(A004736(n+1))*A001263(n+1)` -/
def P6106565398376037266.Spec : Prop :=
  ∀ n, P6106565398376037266.a n = A095801 (n + 1)

end A095801

/-! ## A095801.P8201565904445761733

`A000108(A025581(n)+1)*A001263(n+1)`
-/

namespace A095801.P8201565904445761733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025581 n + 1).toNat * A001263 (n + 1)

end

end A095801.P8201565904445761733

namespace A095801

/-- `A000108(A025581(n)+1)*A001263(n+1)` -/
def P8201565904445761733.Spec : Prop :=
  ∀ n, P8201565904445761733.a n = A095801 (n + 1)

end A095801

/-! ## A095801.P4356758436484282648

`A001263(n+1)*A126120(A099375(n)+1)`
-/

namespace A095801.P4356758436484282648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A126120 (A099375 n + 1).toNat

end

end A095801.P4356758436484282648

namespace A095801

/-- `A001263(n+1)*A126120(A099375(n)+1)` -/
def P4356758436484282648.Spec : Prop :=
  ∀ n, P4356758436484282648.a n = A095801 (n + 1)

end A095801

/-! ## A095801.P4222643892716715725

`A000108(A004736(n+1))*ceil(A174124(n)/2)`
-/

namespace A095801.P4222643892716715725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004736 (n + 1)).toNat * ⌈(A174124 n : ℚ) / 2⌉

end

end A095801.P4222643892716715725

namespace A095801

/-- `A000108(A004736(n+1))*ceil(A174124(n)/2)` -/
def P4222643892716715725.Spec : Prop :=
  ∀ n, P4222643892716715725.a n = A095801 (n + 1)

end A095801

/-! ## A095801.P10854815616969209102

`A000108(A004736(n+1))*ceil(A132787(n+1)/2)`
-/

namespace A095801.P10854815616969209102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A004736 (n + 1)).toNat * ⌈(A132787 (n + 1) : ℚ) / 2⌉

end

end A095801.P10854815616969209102

namespace A095801

/-- `A000108(A004736(n+1))*ceil(A132787(n+1)/2)` -/
def P10854815616969209102.Spec : Prop :=
  ∀ n, P10854815616969209102.a n = A095801 (n + 1)

end A095801

/-! ## A095801.P2664043194338643387

`A000108(A093375(n+1)/A007318(n))*A001263(n+1)`
-/

namespace A095801.P2664043194338643387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((A093375 (n + 1) : ℚ) / (A007318 n : ℚ))).toNat * A001263 (n + 1)

end

end A095801.P2664043194338643387

namespace A095801

/-- `A000108(A093375(n+1)/A007318(n))*A001263(n+1)` -/
def P2664043194338643387.Spec : Prop :=
  ∀ n, P2664043194338643387.a n = A095801 (n + 1)

end A095801

/-! ## A095801.P2100779877614645826

`sqrt(A174158(n+1))*A208355(A099375(n))`
-/

namespace A095801.P2100779877614645826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174158 (n + 1) : ℝ) * (A208355 (A099375 n).toNat : ℝ)

end

end A095801.P2100779877614645826

namespace A095801

/-- `sqrt(A174158(n+1))*A208355(A099375(n))` -/
def P2100779877614645826.Spec : Prop :=
  ∀ n, P2100779877614645826.a n = (A095801 (n + 1) : ℝ)

end A095801

/-! ## A095801.P3923630304503191561

`sqrt(A174158(n+1))*A000108(A004736(n+1))`
-/

namespace A095801.P3923630304503191561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174158 (n + 1) : ℝ) * (A000108 (A004736 (n + 1)).toNat : ℝ)

end

end A095801.P3923630304503191561

namespace A095801

/-- `sqrt(A174158(n+1))*A000108(A004736(n+1))` -/
def P3923630304503191561.Spec : Prop :=
  ∀ n, P3923630304503191561.a n = (A095801 (n + 1) : ℝ)

end A095801

/-!
# A095803: Values of r in Wolfram's iteration for sqrt(2).

The programs for A095803, there is no canonical definition to state claims against.
-/

/-! ## A095803.P12454517113782843594

`A040002(n)*A056007(A004273(n))`
-/

namespace A095803.P12454517113782843594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n * A056007 (A004273 n).toNat

end

end A095803.P12454517113782843594

/-! ## A095803.P12124282197213466306

`A040002(n)*A201125(A028310(n))`
-/

namespace A095803.P12124282197213466306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n * A201125 (A028310 n).toNat

end

end A095803.P12124282197213466306

/-! ## A095803.P15872693006343107817

`A040002(n)*A201125(A000007(n)+n)`
-/

namespace A095803.P15872693006343107817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n * A201125 (A000007 n + (n : ℤ)).toNat

end

end A095803.P15872693006343107817

/-! ## A095803.P7363965987731986669

`2*A056007(A004273(n))*A006530(A102376(n))`
-/

namespace A095803.P7363965987731986669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056007 (A004273 n).toNat * A006530 (A102376 n).toNat

end

end A095803.P7363965987731986669

/-!
# A095804: Values of s in Wolfram's iteration for sqrt(2).

The programs for A095804, there is no canonical definition to state claims against.
-/

/-! ## A095804.P7018818393395334736

`4*floor(2^n/sqrt(2))`
-/

namespace A095804.P7018818393395334736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(2 ^ n : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A095804.P7018818393395334736

/-! ## A095804.P5138773799579227924

`record[4*n%2*floor(2^(n/2))]`
-/

namespace A095804.P5138773799579227924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (n % 2) : ℕ) : ℤ) * ⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095804.P5138773799579227924

/-! ## A095804.P13913446808863129737

`record[(ceil(2^(n/2-1))-1)*4/gcd(2, n)]`
-/

namespace A095804.P13913446808863129737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(2 : ℝ) ^ ((n : ℚ) / 2 - 1 : ℝ)⌉ - 1 : ℚ) * (4 / (Nat.gcd 2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095804.P13913446808863129737

/-! ## A095804.P6900634998052826592

`and(-4, A084188(n+1))`
-/

namespace A095804.P6900634998052826592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A084188 (n + 1))

end

end A095804.P6900634998052826592

/-! ## A095804.P6986118253473686790

`and(2*A084188(n), -4)`
-/

namespace A095804.P6986118253473686790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A084188 n) (-4)

end

end A095804.P6986118253473686790

/-!
# A095805: Reduced numerators in Wolfram's iteration for sqrt(2).

The programs for A095805, there is no canonical definition to state claims against.
-/

/-! ## A095805.P2039090028897580157

`A084188(log2(A095806(n)))%(2^n)`
-/

namespace A095805.P2039090028897580157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 (SequenceMachineLib.roundAway (Real.logb 2 (A095806 n : ℝ))).toNat) (2 ^ n : ℤ)

end

end A095805.P2039090028897580157

/-! ## A095805.P2189933310098411169

`A084188(log2(A095806(n)))-A000007(n)`
-/

namespace A095805.P2189933310098411169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (SequenceMachineLib.roundAway (Real.logb 2 (A095806 n : ℝ))).toNat - A000007 n

end

end A095805.P2189933310098411169

/-! ## A095805.P18242448136727624682

`A084188(log2(A095806(n)))-A112316(n)`
-/

namespace A095805.P18242448136727624682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (SequenceMachineLib.roundAway (Real.logb 2 (A095806 n : ℝ))).toNat - A112316 n

end

end A095805.P18242448136727624682

/-! ## A095805.P5287718884037281626

`A084188(log2(A095806(n)))-A151878(n)`
-/

namespace A095805.P5287718884037281626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (SequenceMachineLib.roundAway (Real.logb 2 (A095806 n : ℝ))).toNat - A151878 n

end

end A095805.P5287718884037281626

/-! ## A095805.P5689732448953663105

`A084188(log2(A095806(n)))-A151933(n)`
-/

namespace A095805.P5689732448953663105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084188 (SequenceMachineLib.roundAway (Real.logb 2 (A095806 n : ℝ))).toNat - A151933 n

end

end A095805.P5689732448953663105

/-!
# A095806: Reduced denominators in Wolfram's iteration for sqrt(2).

The programs for A095806, there is no canonical definition to state claims against.
-/

/-! ## A095806.P4465461992795702923

`A053644(or(1, A095805(n)))`
-/

namespace A095806.P4465461992795702923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Int.lor 1 (A095805 n)).toNat

end

end A095806.P4465461992795702923

/-! ## A095806.P6667621974515759968

`A053644(A095805(A000007(n)+n))`
-/

namespace A095806.P6667621974515759968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A095805 (A000007 n + (n : ℤ)).toNat).toNat

end

end A095806.P6667621974515759968

/-! ## A095806.P8216570172479664777

`A053644(A095805(A015161(n)+n))`
-/

namespace A095806.P8216570172479664777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A095805 (A015161 n + (n : ℤ)).toNat).toNat

end

end A095806.P8216570172479664777

/-! ## A095806.P5153806800174878941

`A053644(A095805(A112316(n)+n))`
-/

namespace A095806.P5153806800174878941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A095805 (A112316 n + (n : ℤ)).toNat).toNat

end

end A095806.P5153806800174878941

/-! ## A095806.P14654784208269167893

`A053644(A095805(A151878(n)+n))`
-/

namespace A095806.P14654784208269167893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A095805 (A151878 n + (n : ℤ)).toNat).toNat

end

end A095806.P14654784208269167893

/-!
# A095807: Number of integers from 0 to 10^n - 1 whose decimal digits include at least one 0.

The programs for A095807, the canonical program `A095807.P10436079978173350135` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095807 has offset 1).

The definition of A095807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095807.P2354780605720711329

`ogf((1-10x+90x^2)/(1-20x+109x^2-90x^3))`
-/

namespace A095807.P2354780605720711329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -10, 90] [1, -20, 109, -90] n

end

end A095807.P2354780605720711329

namespace A095807

/-- `ogf((1-10x+90x^2)/(1-20x+109x^2-90x^3))` -/
def P2354780605720711329.Spec : Prop :=
  ∀ n, P2354780605720711329.a n = A095807 (n + 1)

end A095807

/-! ## A095807.P10436079978173350135

`10^(n+1)+9/8-9^(1+n+1)/8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095807

/-- `10^(n+1)+9/8-9^(1+n+1)/8` -/
def P10436079978173350135.Spec : Prop :=
  ∀ n, P10436079978173350135.a n = (A095807 (n + 1) : ℚ)

end A095807

/-! ## A095807.P1423225674543862003

`∑[A229127(n+1)]`
-/

namespace A095807.P1423225674543862003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095807.P1423225674543862003

namespace A095807

/-- `∑[A229127(n+1)]` -/
def P1423225674543862003.Spec : Prop :=
  ∀ n, P1423225674543862003.a n = A095807 (n + 1)

end A095807

/-! ## A095807.P11727426366570532360

`∑[or(1, Δ[A217094(n)])]`
-/

namespace A095807.P11727426366570532360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095807.P11727426366570532360

namespace A095807

/-- `∑[or(1, Δ[A217094(n)])]` -/
def P11727426366570532360.Spec : Prop :=
  ∀ n, P11727426366570532360.a n = A095807 (n + 1)

end A095807

/-! ## A095807.P5816374017478542046

`abs(1-A217094(n+1))`
-/

namespace A095807.P5816374017478542046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A217094 (n + 1)|

end

end A095807.P5816374017478542046

namespace A095807

/-- `abs(1-A217094(n+1))` -/
def P5816374017478542046.Spec : Prop :=
  ∀ n, P5816374017478542046.a n = A095807 (n + 1)

end A095807

/-! ## A095807.P1880485930921501299

`∑[or(1, A050720(2*(n+1)))]`
-/

namespace A095807.P1880485930921501299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050720 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095807.P1880485930921501299

namespace A095807

/-- `∑[or(1, A050720(2*(n+1)))]` -/
def P1880485930921501299.Spec : Prop :=
  ∀ n, P1880485930921501299.a n = A095807 (n + 1)

end A095807

/-! ## A095807.P13065560968462125360

`∑[record[A229127(A286554(n))]]`
-/

namespace A095807.P13065560968462125360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229127 (A286554 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095807.P13065560968462125360

namespace A095807

/-- `∑[record[A229127(A286554(n))]]` -/
def P13065560968462125360.Spec : Prop :=
  ∀ n, P13065560968462125360.a n = A095807 (n + 1)

end A095807

/-! ## A095807.P1562748559215231672

`∑[A050720(2*(n+1))+A000007(n)]`
-/

namespace A095807.P1562748559215231672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050720 (2 * (n + 1)) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095807.P1562748559215231672

namespace A095807

/-- `∑[A050720(2*(n+1))+A000007(n)]` -/
def P1562748559215231672.Spec : Prop :=
  ∀ n, P1562748559215231672.a n = A095807 (n + 1)

end A095807

/-!
# A095808: Number of ways to write n in the form m + (m+1) + ... + (m+k-1) + (m+k) + (m+k-1) + ... + (m+1) + m with integers m>= 1, k>=1. Or, number of divisors d of 4n-1 with 0 < (d-1)^2 < 4n.

The programs for A095808, the canonical program `A095808.P3090164483403179767` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095808 has offset 1).

The definition of A095808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095808.P3090164483403179767

`A078703(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095808

/-- `A078703(n+1)-1` -/
def P3090164483403179767.Spec : Prop :=
  ∀ n, P3090164483403179767.a n = A095808 (n + 1)

theorem P3090164483403179767.correct : P3090164483403179767.Spec := by
  intro n
  simp only [A095808, Nat.add_sub_cancel]

end A095808

/-! ## A095808.P6334894329129603335

`(A000005(4*(n+1)-1)-2)/2`
-/

namespace A095808.P6334894329129603335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (4 * (n + 1) - 1) - 2 : ℚ) / 2

end

end A095808.P6334894329129603335

namespace A095808

/-- `(A000005(4*(n+1)-1)-2)/2` -/
def P6334894329129603335.Spec : Prop :=
  ∀ n, P6334894329129603335.a n = (A095808 (n + 1) : ℚ)

end A095808

/-! ## A095808.P9494412337642109461

`A070824(4*(n+1)-1)/2`
-/

namespace A095808.P9494412337642109461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070824 (4 * (n + 1) - 1) : ℚ) / 2

end

end A095808.P9494412337642109461

namespace A095808

/-- `A070824(4*(n+1)-1)/2` -/
def P9494412337642109461.Spec : Prop :=
  ∀ n, P9494412337642109461.a n = (A095808 (n + 1) : ℚ)

end A095808

/-! ## A095808.P16213489601152514875

`∏{e}[record[xor(3, n)], #+1]/2-1`
-/

namespace A095808.P16213489601152514875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2 - 1

end

end A095808.P16213489601152514875

namespace A095808

/-- `∏{e}[record[xor(3, n)], #+1]/2-1` -/
def P16213489601152514875.Spec : Prop :=
  ∀ n, P16213489601152514875.a n = (A095808 (n + 1) : ℚ)

end A095808

/-! ## A095808.P7190631544138901168

`∏{e}[4*n+3, #+1]/2-1`
-/

namespace A095808.P7190631544138901168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2 - 1

end

end A095808.P7190631544138901168

namespace A095808

/-- `∏{e}[4*n+3, #+1]/2-1` -/
def P7190631544138901168.Spec : Prop :=
  ∀ n, P7190631544138901168.a n = (A095808 (n + 1) : ℚ)

end A095808

/-! ## A095808.P16632239551370405781

`floor(∑{d}[3*n+abs(1-n)+4, #%2]/2)-1`
-/

namespace A095808.P16632239551370405781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (|1 - (n : ℤ)| + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℚ) / 2⌋ - 1

end

end A095808.P16632239551370405781

namespace A095808

/-- `floor(∑{d}[3*n+abs(1-n)+4, #%2]/2)-1` -/
def P16632239551370405781.Spec : Prop :=
  ∀ n, P16632239551370405781.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P9734718147441530171

`A353376(record[xor(3, n)])-1`
-/

namespace A095808.P9734718147441530171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 1

end

end A095808.P9734718147441530171

namespace A095808

/-- `A353376(record[xor(3, n)])-1` -/
def P9734718147441530171.Spec : Prop :=
  ∀ n, P9734718147441530171.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P18295931120525960453

`A000005(4*n+3)/2-1`
-/

namespace A095808.P18295931120525960453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (4 * n + 3) : ℚ) / 2 - 1

end

end A095808.P18295931120525960453

namespace A095808

/-- `A000005(4*n+3)/2-1` -/
def P18295931120525960453.Spec : Prop :=
  ∀ n, P18295931120525960453.a n = (A095808 (n + 1) : ℚ)

end A095808

/-! ## A095808.P12115648020522372553

`A161116(2*n)/2`
-/

namespace A095808.P12115648020522372553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161116 (2 * n) : ℚ) / 2

end

end A095808.P12115648020522372553

namespace A095808

/-- `A161116(2*n)/2` -/
def P12115648020522372553.Spec : Prop :=
  ∀ n, P12115648020522372553.a n = (A095808 (n + 1) : ℚ)

end A095808

/-! ## A095808.P16555569696829661071

`A193773(Δ[n²])-1`
-/

namespace A095808.P16555569696829661071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A095808.P16555569696829661071

namespace A095808

/-- `A193773(Δ[n²])-1` -/
def P16555569696829661071.Spec : Prop :=
  ∀ n, P16555569696829661071.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P2700296226530173274

`A359289(2*(n+1))-1`
-/

namespace A095808.P2700296226530173274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 (2 * (n + 1)) - 1

end

end A095808.P2700296226530173274

namespace A095808

/-- `A359289(2*(n+1))-1` -/
def P2700296226530173274.Spec : Prop :=
  ∀ n, P2700296226530173274.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P15250186032507586152

`A359290(2*(n+1))-1`
-/

namespace A095808.P15250186032507586152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (2 * (n + 1)) - 1

end

end A095808.P15250186032507586152

namespace A095808

/-- `A359290(2*(n+1))-1` -/
def P15250186032507586152.Spec : Prop :=
  ∀ n, P15250186032507586152.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P16839770138955663068

`A293513(3*(n+1)+n)`
-/

namespace A095808.P16839770138955663068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (3 * (n + 1) + n)

end

end A095808.P16839770138955663068

namespace A095808

/-- `A293513(3*(n+1)+n)` -/
def P16839770138955663068.Spec : Prop :=
  ∀ n, P16839770138955663068.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P10366388174266368682

`A220400(record[xor(3, n)])`
-/

namespace A095808.P10366388174266368682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A095808.P10366388174266368682

namespace A095808

/-- `A220400(record[xor(3, n)])` -/
def P10366388174266368682.Spec : Prop :=
  ∀ n, P10366388174266368682.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P2953981481808374873

`A220400(3*(n+1)+n)`
-/

namespace A095808.P2953981481808374873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (3 * (n + 1) + n)

end

end A095808.P2953981481808374873

namespace A095808

/-- `A220400(3*(n+1)+n)` -/
def P2953981481808374873.Spec : Prop :=
  ∀ n, P2953981481808374873.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P9835700404563774001

`A072670(4*n+2)`
-/

namespace A095808.P9835700404563774001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (4 * n + 2)

end

end A095808.P9835700404563774001

namespace A095808

/-- `A072670(4*n+2)` -/
def P9835700404563774001.Spec : Prop :=
  ∀ n, P9835700404563774001.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P3395540870224060502

`A211159(4*n+2)`
-/

namespace A095808.P3395540870224060502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 (4 * n + 2)

end

end A095808.P3395540870224060502

namespace A095808

/-- `A211159(4*n+2)` -/
def P3395540870224060502.Spec : Prop :=
  ∀ n, P3395540870224060502.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P7536960679360090282

`A255361(4*n+2)`
-/

namespace A095808.P7536960679360090282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 (4 * n + 2)

end

end A095808.P7536960679360090282

namespace A095808

/-- `A255361(4*n+2)` -/
def P7536960679360090282.Spec : Prop :=
  ∀ n, P7536960679360090282.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P924133584541230161

`A083800(n+1)%A078703(n+1)`
-/

namespace A095808.P924133584541230161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A078703 (n + 1))

end

end A095808.P924133584541230161

namespace A095808

/-- `A083800(n+1)%A078703(n+1)` -/
def P924133584541230161.Spec : Prop :=
  ∀ n, P924133584541230161.a n = A095808 (n + 1)

end A095808

/-! ## A095808.P8128855148263784379

`A070198(n)%A078703(n+1)`
-/

namespace A095808.P8128855148263784379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A078703 (n + 1))

end

end A095808.P8128855148263784379

namespace A095808

/-- `A070198(n)%A078703(n+1)` -/
def P8128855148263784379.Spec : Prop :=
  ∀ n, P8128855148263784379.a n = A095808 (n + 1)

end A095808

/-!
# A095809: Least positive number having exactly n partitions into three squares.

The programs for A095809, there is no canonical definition to state claims against.
-/

/-! ## A095809.P3700601239855112028

`A124970(n+1)`
-/

namespace A095809.P3700601239855112028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124970 (n + 1)

end

end A095809.P3700601239855112028

/-! ## A095809.P18006971981357536768

`round(1/acot(A000437(n+1)))`
-/

namespace A095809.P18006971981357536768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A000437 (n + 1) : ℝ))

end

end A095809.P18006971981357536768

/-! ## A095809.P16904445473277370980

`ratio[A124970(n)]*A124970(n)`
-/

namespace A095809.P16904445473277370980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124970 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A124970 n : ℚ)

end

end A095809.P16904445473277370980

/-! ## A095809.P12198526190805611245

`A000437(n+1)+A000007(n)`
-/

namespace A095809.P12198526190805611245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000437 (n + 1) + A000007 n

end

end A095809.P12198526190805611245

/-! ## A095809.P3879022085689289402

`or(A000437(n+1), A329678(n))`
-/

namespace A095809.P3879022085689289402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000437 (n + 1)) (A329678 n)

end

end A095809.P3879022085689289402

/-! ## A095809.P11245550195025677196

`A000437(n+1)+char[A053625(n)]`
-/

namespace A095809.P11245550195025677196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000437 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095809.P11245550195025677196

/-! ## A095809.P2473845555999342651

`A000437(n+1)+char[A228909(n)]`
-/

namespace A095809.P2473845555999342651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228909 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000437 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095809.P2473845555999342651

/-! ## A095809.P10770003925789815020

`or(char[A024001(n)], A000437(n+1))`
-/

namespace A095809.P10770003925789815020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024001 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000437 (n + 1))

end

end A095809.P10770003925789815020

/-! ## A095809.P6914096884333523379

`or(char[A024002(n)], A000437(n+1))`
-/

namespace A095809.P6914096884333523379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024002 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000437 (n + 1))

end

end A095809.P6914096884333523379

/-! ## A095809.P6862419509753494105

`or(char[A024003(n)], A000437(n+1))`
-/

namespace A095809.P6862419509753494105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024003 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000437 (n + 1))

end

end A095809.P6862419509753494105

/-! ## A095809.P16536771009350450282

`or(char[A024004(n)], A000437(n+1))`
-/

namespace A095809.P16536771009350450282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024004 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000437 (n + 1))

end

end A095809.P16536771009350450282

/-! ## A095809.P1096451036852718130

`or(char[A036290(n)], A000437(n+1))`
-/

namespace A095809.P1096451036852718130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000437 (n + 1))

end

end A095809.P1096451036852718130

/-! ## A095809.P16107315392382947320

`A000437(n+1)+A000038(n)/2`
-/

namespace A095809.P16107315392382947320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000437 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A095809.P16107315392382947320

/-! ## A095809.P11795432736149720573

`xor(A000437(n+1), A285476(2*n))`
-/

namespace A095809.P11795432736149720573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000437 (n + 1)) (A285476 (2 * n))

end

end A095809.P11795432736149720573

/-! ## A095809.P17894987435592481800

`A000437(n+1)+A028310(n)-n`
-/

namespace A095809.P17894987435592481800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000437 (n + 1) + (A028310 n - (n : ℤ))

end

end A095809.P17894987435592481800

/-! ## A095809.P12714629785636410985

`xor(A000007(n), A000437(n-log2(1/2)))`
-/

namespace A095809.P12714629785636410985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A000437 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A095809.P12714629785636410985

/-! ## A095809.P6182897434522688835

`or(char[A000426(n+1)], A000437(n+1))`
-/

namespace A095809.P6182897434522688835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000437 (n + 1))

end

end A095809.P6182897434522688835

/-! ## A095809.P11877802884237858001

`or(char[A000434(n+1)], A000437(n+1))`
-/

namespace A095809.P11877802884237858001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000434 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A000437 (n + 1))

end

end A095809.P11877802884237858001

/-! ## A095809.P9330420106842934705

`A000437(n+1)^ceil(n/A000041(n))`
-/

namespace A095809.P9330420106842934705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000437 (n + 1) : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A095809.P9330420106842934705

/-! ## A095809.P12238945567632513990

`A000437(n+1)+A000010(n+2)%2`
-/

namespace A095809.P12238945567632513990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000437 (n + 1) + Int.tmod (A000010 (n + 2)) 2

end

end A095809.P12238945567632513990

/-!
# A095810: Numbers of the form 2^j (mod 10^k), where j >= 0 and k >= 1, with leading zeros suppressed.

The programs for A095810, there is no canonical definition to state claims against.
-/

/-! ## A095810.P16414688009424117593

`lt[A110654(n)+A040347(3*n), A040333(2*n)]`
-/

namespace A095810.P16414688009424117593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A040347 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095810.P16414688009424117593

/-! ## A095810.P9243675257279289469

`eq[1, A019425(A077752(n))]`
-/

namespace A095810.P9243675257279289469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A077752 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095810.P9243675257279289469

/-! ## A095810.P16148112731345250527

`record[A000005(A071574(2*(n+1)))]`
-/

namespace A095810.P16148112731345250527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071574 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095810.P16148112731345250527

/-! ## A095810.P13438937020017314831

`∩[A324850(n+1), A380573(n+1)]`
-/

namespace A095810.P13438937020017314831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095810.P13438937020017314831

/-! ## A095810.P10318211511347772595

`A355911(A310699(n))`
-/

namespace A095810.P10318211511347772595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A310699 n).toNat

end

end A095810.P10318211511347772595

/-!
# A095811: Greatest number, not divisible by 4, having exactly n partitions into three squares.

The programs for A095811, there is no canonical definition to state claims against.
-/

/-! ## A095811.P10505920991904504602

`8*A330810(n+1)+3`
-/

namespace A095811.P10505920991904504602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A330810 (n + 1) + 3

end

end A095811.P10505920991904504602

/-! ## A095811.P16876316644736265476

`A017101(A330810(n+1))`
-/

namespace A095811.P16876316644736265476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (A330810 (n + 1)).toNat

end

end A095811.P16876316644736265476

/-! ## A095811.P4393987805697639591

`A242784(n)+A017089(A330810(n+1))`
-/

namespace A095811.P4393987805697639591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n + A017089 (A330810 (n + 1)).toNat

end

end A095811.P4393987805697639591

/-! ## A095811.P3258444340045379839

`A214956(n+1)+A017089(A330810(n+1))`
-/

namespace A095811.P3258444340045379839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214956 (n + 1) + A017089 (A330810 (n + 1)).toNat

end

end A095811.P3258444340045379839

/-!
# A095813: Expansion of q * chi(-q) / chi(-q^5)^5 in powers of q where chi() is a Ramanujan theta function.

The programs for A095813, there is no canonical definition to state claims against.
-/

/-! ## A095813.P1269397805065137749

`A138522(n+1)`
-/

namespace A095813.P1269397805065137749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138522 (n + 1)

end

end A095813.P1269397805065137749

/-! ## A095813.P7558811895049287427

`-(A138518(n+1)/4)`
-/

namespace A095813.P7558811895049287427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A138518 (n + 1) : ℚ) / 4)

end

end A095813.P7558811895049287427

/-! ## A095813.P18260201159460997346

`A258040(2*(n+1))/2`
-/

namespace A095813.P18260201159460997346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258040 (2 * (n + 1)) : ℚ) / 2

end

end A095813.P18260201159460997346

/-!
# A095814: Number of nonisomorphic partitions of n on the Ferrers diagram.

The programs for A095814, there is no canonical definition to state claims against.
-/

/-! ## A095814.P8482174610930232153

`ceil(∑[A002865(n)/2])`
-/

namespace A095814.P8482174610930232153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002865 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A095814.P8482174610930232153

/-! ## A095814.P1452332124772333269

`ceil(A000041(n)/2)`
-/

namespace A095814.P1452332124772333269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000041 n : ℚ) / 2⌉

end

end A095814.P1452332124772333269

/-! ## A095814.P7132824049177959564

`(A040051(n)+A000041(n))/2`
-/

namespace A095814.P7132824049177959564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040051 n + A000041 n : ℚ) / 2

end

end A095814.P7132824049177959564

/-! ## A095814.P3651199965857781381

`ceil(A139582(n)/4)`
-/

namespace A095814.P3651199965857781381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139582 n : ℚ) / 4⌉

end

end A095814.P3651199965857781381

/-! ## A095814.P9594591034802493195

`ceil(A299473(n)/6)`
-/

namespace A095814.P9594591034802493195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299473 n : ℚ) / 6⌉

end

end A095814.P9594591034802493195

/-! ## A095814.P6492600707876233069

`ceil(A299474(n)/8)`
-/

namespace A095814.P6492600707876233069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299474 n : ℚ) / 8⌉

end

end A095814.P6492600707876233069

/-! ## A095814.P6030975746286749296

`ceil(A035363(2*n)/2)`
-/

namespace A095814.P6030975746286749296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035363 (2 * n) : ℚ) / 2⌉

end

end A095814.P6030975746286749296

/-! ## A095814.P7585107799857842015

`ceil(A119620(2*n)/2)`
-/

namespace A095814.P7585107799857842015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119620 (2 * n) : ℚ) / 2⌉

end

end A095814.P7585107799857842015

/-! ## A095814.P10988890584770400537

`round(A079025(A000096(n))/2)`
-/

namespace A095814.P10988890584770400537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A079025 (A000096 n).toNat : ℚ) / 2)

end

end A095814.P10988890584770400537

/-!
# A095815: a(n) = n + largest digit of n.

The programs for A095815, the canonical program `A095815.P14387125408819555274` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095815 has offset 1).

The definition of A095815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095815.P14387125408819555274

`∑[Δ[A054055(n)]+1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A095815

/-- `∑[Δ[A054055(n)]+1]` -/
def P14387125408819555274.Spec : Prop :=
  ∀ n, P14387125408819555274.a n = A095815 (n + 1)

theorem P14387125408819555274.correct : P14387125408819555274.Spec := by
  intro n
  simp only [A095815, Nat.add_sub_cancel]

end A095815

/-! ## A095815.P9636579367361437380

`A054055(n+1)+1+n`
-/

namespace A095815.P9636579367361437380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (n + 1) + 1 + (n : ℤ)

end

end A095815.P9636579367361437380

namespace A095815

/-- `A054055(n+1)+1+n` -/
def P9636579367361437380.Spec : Prop :=
  ∀ n, P9636579367361437380.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P7905892772250736461

`A004185(n+1)%10+1+n`
-/

namespace A095815.P7905892772250736461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 (n + 1)) 10 + 1 + (n : ℤ)

end

end A095815.P7905892772250736461

namespace A095815

/-- `A004185(n+1)%10+1+n` -/
def P7905892772250736461.Spec : Prop :=
  ∀ n, P7905892772250736461.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P17306587921923507952

`floor(log2(A086066(n+1)))+n+1`
-/

namespace A095815.P17306587921923507952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A086066 (n + 1)).toNat + (n + 1)

end

end A095815.P17306587921923507952

namespace A095815

/-- `floor(log2(A086066(n+1)))+n+1` -/
def P17306587921923507952.Spec : Prop :=
  ∀ n, (P17306587921923507952.a n : ℤ) = A095815 (n + 1)

end A095815

/-! ## A095815.P7814489246558714166

`(A070196(n+1)-(n+1))%10+n+1`
-/

namespace A095815.P7814489246558714166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070196 (n + 1) - (n + 1 : ℤ)) 10 + (n + 1 : ℤ)

end

end A095815.P7814489246558714166

namespace A095815

/-- `(A070196(n+1)-(n+1))%10+n+1` -/
def P7814489246558714166.Spec : Prop :=
  ∀ n, P7814489246558714166.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P9339187843717718138

`A070939(A086066(n+1))+n`
-/

namespace A095815.P9339187843717718138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A086066 (n + 1)).toNat + (n : ℤ)

end

end A095815.P9339187843717718138

namespace A095815

/-- `A070939(A086066(n+1))+n` -/
def P9339187843717718138.Spec : Prop :=
  ∀ n, P9339187843717718138.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P14161491403584632439

`A000030(A004186(n+1))+n+1`
-/

namespace A095815.P14161491403584632439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004186 (n + 1)).toNat + (n + 1 : ℤ)

end

end A095815.P14161491403584632439

namespace A095815

/-- `A000030(A004186(n+1))+n+1` -/
def P14161491403584632439.Spec : Prop :=
  ∀ n, P14161491403584632439.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P4358801782192885821

`A010879(A004185(n+1))+n+1`
-/

namespace A095815.P4358801782192885821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004185 (n + 1)).toNat + (n + 1 : ℤ)

end

end A095815.P4358801782192885821

namespace A095815

/-- `A010879(A004185(n+1))+n+1` -/
def P4358801782192885821.Spec : Prop :=
  ∀ n, P4358801782192885821.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P7695275946305168737

`A000030(A073730(n+1))+1+n`
-/

namespace A095815.P7695275946305168737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A073730 (n + 1)).toNat + 1 + (n : ℤ)

end

end A095815.P7695275946305168737

namespace A095815

/-- `A000030(A073730(n+1))+1+n` -/
def P7695275946305168737.Spec : Prop :=
  ∀ n, P7695275946305168737.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P13100110894944962807

`A000030(A227362(n+1))+n+1`
-/

namespace A095815.P13100110894944962807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A227362 (n + 1)).toNat + (n + 1 : ℤ)

end

end A095815.P13100110894944962807

namespace A095815

/-- `A000030(A227362(n+1))+n+1` -/
def P13100110894944962807.Spec : Prop :=
  ∀ n, P13100110894944962807.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P7405861531697435959

`n+1+A054054(n+1)+A037904(n+1)`
-/

namespace A095815.P7405861531697435959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A054054 (n + 1) + A037904 (n + 1))

end

end A095815.P7405861531697435959

namespace A095815

/-- `n+1+A054054(n+1)+A037904(n+1)` -/
def P7405861531697435959.Spec : Prop :=
  ∀ n, P7405861531697435959.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P8237366312946725840

`A228822(n+1)+A240848(n+1)-A007953(n+1)`
-/

namespace A095815.P8237366312946725840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228822 (n + 1) + (A240848 (n + 1) - A007953 (n + 1))

end

end A095815.P8237366312946725840

namespace A095815

/-- `A228822(n+1)+A240848(n+1)-A007953(n+1)` -/
def P8237366312946725840.Spec : Prop :=
  ∀ n, P8237366312946725840.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P13357408561152916616

`A000030(A194233(n+1))+1+n`
-/

namespace A095815.P13357408561152916616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A194233 (n + 1)).toNat + 1 + (n : ℤ)

end

end A095815.P13357408561152916616

namespace A095815

/-- `A000030(A194233(n+1))+1+n` -/
def P13357408561152916616.Spec : Prop :=
  ∀ n, P13357408561152916616.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P18303043658009834293

`A037904(A008592(n+1))+n+1`
-/

namespace A095815.P18303043658009834293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A008592 (n + 1)).toNat + (n + 1 : ℤ)

end

end A095815.P18303043658009834293

namespace A095815

/-- `A037904(A008592(n+1))+n+1` -/
def P18303043658009834293.Spec : Prop :=
  ∀ n, P18303043658009834293.a n = A095815 (n + 1)

end A095815

/-! ## A095815.P4068119692178543273

`A010879(A047842(n+1))+n+1`
-/

namespace A095815.P4068119692178543273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A047842 (n + 1)).toNat + (n + 1 : ℤ)

end

end A095815.P4068119692178543273

namespace A095815

/-- `A010879(A047842(n+1))+n+1` -/
def P4068119692178543273.Spec : Prop :=
  ∀ n, P4068119692178543273.a n = A095815 (n + 1)

end A095815

/-!
# A095816: Number of permutations of 1..n with no three elements in correct or reverse order.

The programs for A095816, there is no canonical definition to state claims against.
-/

/-! ## A095816.P11104918427852936682

`A370485(n)+A002464(n)`
-/

namespace A095816.P11104918427852936682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370485 n + A002464 n

end

end A095816.P11104918427852936682

/-! ## A095816.P6424371089069538340

`A370485(n)+A346462(A000217(n))`
-/

namespace A095816.P6424371089069538340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370485 n + A346462 (A000217 n).toNat

end

end A095816.P6424371089069538340

/-! ## A095816.P453514652461675343

`A340106(∑[n]+n)`
-/

namespace A095816.P453514652461675343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340106 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A095816.P453514652461675343

/-! ## A095816.P13973818429334786091

`A340106(A000096(n))+char[20]`
-/

namespace A095816.P13973818429334786091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340106 (A000096 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095816.P13973818429334786091

/-! ## A095816.P4900339156633687930

`A208879(n)*A340106(A000096(n))`
-/

namespace A095816.P4900339156633687930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 n * A340106 (A000096 n).toNat

end

end A095816.P4900339156633687930

/-!
# A095817: Number of permutations of 1..n with no four elements in correct or reverse order.

The programs for A095817, there is no canonical definition to state claims against.
-/

/-! ## A095817.P7060054817995233914

`A005843(A132647(n))-A000142(n)`
-/

namespace A095817.P7060054817995233914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A132647 n).toNat - A000142 n

end

end A095817.P7060054817995233914

/-! ## A095817.P17764044183400249426

`A272570(A148472(n))`
-/

namespace A095817.P17764044183400249426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272570 (A148472 n).toNat

end

end A095817.P17764044183400249426

/-! ## A095817.P6601010269330624072

`A002266(A313373(n!))`
-/

namespace A095817.P6601010269330624072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A313373 (Nat.factorial n)).toNat

end

end A095817.P6601010269330624072

/-!
# A095818: Number of permutations of 1..n with no five elements in correct or reverse order.

The programs for A095818, there is no canonical definition to state claims against.
-/

/-! ## A095818.P6887109564084358125

`A000142(n)-A002265(A318895(n))`
-/

namespace A095818.P6887109564084358125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A002265 (A318895 n).toNat

end

end A095818.P6887109564084358125

/-! ## A095818.P4745772618790025843

`A000142(n)-A237769(A007660(n+2))`
-/

namespace A095818.P4745772618790025843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A237769 (A007660 (n + 2)).toNat

end

end A095818.P4745772618790025843

/-! ## A095818.P826955339487891604

`n!-A335446(A189077(n))-A095856(n+1)`
-/

namespace A095818.P826955339487891604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A335446 (A189077 n).toNat - A095856 (n + 1)

end

end A095818.P826955339487891604

/-! ## A095818.P7946160946288852854

`A193935(n^A099302(n+2))-A095856(n+1)`
-/

namespace A095818.P7946160946288852854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193935 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A099302 (n + 2) : ℤ))).toNat - A095856 (n + 1)

end

end A095818.P7946160946288852854

/-!
# A095819: Tenth column (m=9) of (1,4)-Pascal triangle A095666.

The programs for A095819, the canonical program `A095819.P4960609540739688541` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095819 has offset 0).

The definition of A095819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095819.P4960609540739688541

`(n+36)*C(n+8, 8)/9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095819

/-- `(n+36)*C(n+8, 8)/9` -/
def P4960609540739688541.Spec : Prop :=
  ∀ n, P4960609540739688541.a n = (A095819 n : ℚ)

end A095819

/-! ## A095819.P8458071415618170944

`∑[∑[∑[∑[∑[∑[∑[∑[4+n]]]]]]]]`
-/

namespace A095819.P8458071415618170944
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095819.P8458071415618170944

namespace A095819

/-- `∑[∑[∑[∑[∑[∑[∑[∑[4+n]]]]]]]]` -/
def P8458071415618170944.Spec : Prop :=
  ∀ n, (P8458071415618170944.a n : ℤ) = A095819 n

end A095819

/-! ## A095819.P12102291750743979790

`2*∑[A095671(n)/2]`
-/

namespace A095819.P12102291750743979790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095671 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095819.P12102291750743979790

namespace A095819

/-- `2*∑[A095671(n)/2]` -/
def P12102291750743979790.Spec : Prop :=
  ∀ n, P12102291750743979790.a n = (A095819 n : ℚ)

end A095819

/-! ## A095819.P12436211233448091635

`2*A096947(n)-A097300(n)`
-/

namespace A095819.P12436211233448091635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096947 n - A097300 n

end

end A095819.P12436211233448091635

namespace A095819

/-- `2*A096947(n)-A097300(n)` -/
def P12436211233448091635.Spec : Prop :=
  ∀ n, P12436211233448091635.a n = A095819 n

end A095819

/-! ## A095819.P16724942260804087516

`A095665(n)+A000581(n+8)`
-/

namespace A095819.P16724942260804087516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095665 n + A000581 (n + 8)

end

end A095819.P16724942260804087516

namespace A095819

/-- `A095665(n)+A000581(n+8)` -/
def P16724942260804087516.Spec : Prop :=
  ∀ n, P16724942260804087516.a n = A095819 n

end A095819

/-! ## A095819.P1018314678699841315

`A096947(n)-A000581(n+8)`
-/

namespace A095819.P1018314678699841315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096947 n - A000581 (n + 8)

end

end A095819.P1018314678699841315

namespace A095819

/-- `A096947(n)-A000581(n+8)` -/
def P1018314678699841315.Spec : Prop :=
  ∀ n, P1018314678699841315.a n = A095819 n

end A095819

/-! ## A095819.P13541961296131158457

`A057077(n)²*∑[A095671(n)]`
-/

namespace A095819.P13541961296131158457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095819.P13541961296131158457

namespace A095819

/-- `A057077(n)²*∑[A095671(n)]` -/
def P13541961296131158457.Spec : Prop :=
  ∀ n, P13541961296131158457.a n = A095819 n

end A095819

/-! ## A095819.P16334389160025910642

`lcm(A000038(n)!, ∑[A095671(n)])`
-/

namespace A095819.P16334389160025910642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095819.P16334389160025910642

namespace A095819

/-- `lcm(A000038(n)!, ∑[A095671(n)])` -/
def P16334389160025910642.Spec : Prop :=
  ∀ n, (P16334389160025910642.a n : ℤ) = A095819 n

end A095819

/-! ## A095819.P17212455959408607920

`A000581(n+8)+∑[A095664(n)]`
-/

namespace A095819.P17212455959408607920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095819.P17212455959408607920

namespace A095819

/-- `A000581(n+8)+∑[A095664(n)]` -/
def P17212455959408607920.Spec : Prop :=
  ∀ n, P17212455959408607920.a n = A095819 n

end A095819

/-! ## A095819.P13242973990997361861

`∑[A095671(n)]%A006424(n+1)`
-/

namespace A095819.P13242973990997361861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006424 (n + 1))

end

end A095819.P13242973990997361861

namespace A095819

/-- `∑[A095671(n)]%A006424(n+1)` -/
def P13242973990997361861.Spec : Prop :=
  ∀ n, P13242973990997361861.a n = A095819 n

end A095819

/-! ## A095819.P1788231252505826225

`A097300(n)-2*A000581(n+8)`
-/

namespace A095819.P1788231252505826225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097300 n - 2 * A000581 (n + 8)

end

end A095819.P1788231252505826225

namespace A095819

/-- `A097300(n)-2*A000581(n+8)` -/
def P1788231252505826225.Spec : Prop :=
  ∀ n, P1788231252505826225.a n = A095819 n

end A095819

/-! ## A095819.P4277454552968823171

`A000582(n+9)+3*A000581(n+8)`
-/

namespace A095819.P4277454552968823171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) + 3 * A000581 (n + 8)

end

end A095819.P4277454552968823171

namespace A095819

/-- `A000582(n+9)+3*A000581(n+8)` -/
def P4277454552968823171.Spec : Prop :=
  ∀ n, P4277454552968823171.a n = A095819 n

end A095819

/-! ## A095819.P6336905190345597216

`A001222(A052248(n+2))*∑[A095671(n)]`
-/

namespace A095819.P6336905190345597216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052248 (n + 2)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095819.P6336905190345597216

namespace A095819

/-- `A001222(A052248(n+2))*∑[A095671(n)]` -/
def P6336905190345597216.Spec : Prop :=
  ∀ n, P6336905190345597216.a n = A095819 n

end A095819

/-! ## A095819.P13985784372919282007

`A000007(n+1)+∑[A095671(n)]`
-/

namespace A095819.P13985784372919282007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095819.P13985784372919282007

namespace A095819

/-- `A000007(n+1)+∑[A095671(n)]` -/
def P13985784372919282007.Spec : Prop :=
  ∀ n, P13985784372919282007.a n = A095819 n

end A095819

/-! ## A095819.P4502388295235970729

`A007318(A000096(n))*∑[A095671(n)]`
-/

namespace A095819.P4502388295235970729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095819.P4502388295235970729

namespace A095819

/-- `A007318(A000096(n))*∑[A095671(n)]` -/
def P4502388295235970729.Spec : Prop :=
  ∀ n, P4502388295235970729.a n = A095819 n

end A095819

/-! ## A095819.P17297972660510770848

`A093561(A056000(n+6))`
-/

namespace A095819.P17297972660510770848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A056000 (n + 6)).toNat

end

end A095819.P17297972660510770848

namespace A095819

/-- `A093561(A056000(n+6))` -/
def P17297972660510770848.Spec : Prop :=
  ∀ n, P17297972660510770848.a n = A095819 n

end A095819

/-! ## A095819.P2667464046936857752

`A093561(A046691(n+8)-6)`
-/

namespace A095819.P2667464046936857752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A046691 (n + 8) - 6).toNat

end

end A095819.P2667464046936857752

namespace A095819

/-- `A093561(A046691(n+8)-6)` -/
def P2667464046936857752.Spec : Prop :=
  ∀ n, P2667464046936857752.a n = A095819 n

end A095819

/-! ## A095819.P10423038269021403036

`A093561(2*n+A055999(n+5)+15)`
-/

namespace A095819.P10423038269021403036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 ((2 * n : ℤ) + (A055999 (n + 5) + 15)).toNat

end

end A095819.P10423038269021403036

namespace A095819

/-- `A093561(2*n+A055999(n+5)+15)` -/
def P10423038269021403036.Spec : Prop :=
  ∀ n, P10423038269021403036.a n = A095819 n

end A095819

/-! ## A095819.P1233481929225115685

`A056737((n+1)²)+∑[A095671(n)]`
-/

namespace A095819.P1233481929225115685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 ((n + 1) ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095819.P1233481929225115685

namespace A095819

/-- `A056737((n+1)²)+∑[A095671(n)]` -/
def P1233481929225115685.Spec : Prop :=
  ∀ n, P1233481929225115685.a n = A095819 n

end A095819

/-!
# A095821: Denominators of some (trivial) upper bounds for Euler's Zeta-function Zeta(n).

The programs for A095821, there is no canonical definition to state claims against.
-/

/-! ## A095821.P10598877263421354762

`A322266(∑[4*(n+1)])`
-/

namespace A095821.P10598877263421354762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322266 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095821.P10598877263421354762

/-!
# A095822: Numerators of certain upper bounds for Euler's number e.

The programs for A095822, there is no canonical definition to state claims against.
-/

/-! ## A095822.P1079497284271691024

`ceil(e*A095823(n+1))`
-/

namespace A095822.P1079497284271691024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (A095823 (n + 1) : ℝ)⌉

end

end A095822.P1079497284271691024

/-! ## A095822.P8023262848432806977

`round(e*A095823(n+1)/gcd(11, A007318(n)))`
-/

namespace A095822.P8023262848432806977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A095823 (n + 1) : ℝ) / (Int.gcd 11 (A007318 n) : ℝ))

end

end A095822.P8023262848432806977

/-! ## A095822.P8375118868839327204

`round(e*A095823(n+1)/A165633(A182782(n+1)))`
-/

namespace A095822.P8375118868839327204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A095823 (n + 1) : ℝ) / (A165633 (A182782 (n + 1)).toNat : ℝ))

end

end A095822.P8375118868839327204

/-! ## A095822.P10320858122430398848

`A001339(n+1)/A010208(A026567(n+1))`
-/

namespace A095822.P10320858122430398848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001339 (n + 1) : ℚ) / (A010208 (A026567 (n + 1)).toNat : ℚ)

end

end A095822.P10320858122430398848

/-! ## A095822.P8816161383912793175

`ceil(e*A001563(A004893(n+2))/A060266(n+1))`
-/

namespace A095822.P8816161383912793175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * ((A001563 (A004893 (n + 2)).toNat : ℚ) / (A060266 (n + 1) : ℚ) : ℝ)⌉

end

end A095822.P8816161383912793175

/-!
# A095823: Denominators of certain upper bounds for Euler's number e.

The programs for A095823, there is no canonical definition to state claims against.
-/

/-! ## A095823.P1318433657024810694

`floor(A095822(n+1)/e)`
-/

namespace A095823.P1318433657024810694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095822 (n + 1) : ℝ) / Real.exp 1⌋

end

end A095823.P1318433657024810694

/-! ## A095823.P15334602839839534179

`A001563(A004893(n+2))/A060266(n+1)`
-/

namespace A095823.P15334602839839534179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001563 (A004893 (n + 2)).toNat : ℚ) / (A060266 (n + 1) : ℚ)

end

end A095823.P15334602839839534179

/-! ## A095823.P1698397636725044426

`A001563(A004893(n+2))/A098094(n+2)`
-/

namespace A095823.P1698397636725044426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001563 (A004893 (n + 2)).toNat : ℚ) / (A098094 (n + 2) : ℚ)

end

end A095823.P1698397636725044426

/-!
# A095824: Numbers k such that k + largest digit of k is prime.

The programs for A095824, the canonical program `A095824.P14613897866976482580` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095824 has offset 1).

The definition of A095824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 921 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095824.P14613897866976482580

`eq[2, A000005(A054055(A028310(n))+n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A095824

/-- `eq[2, A000005(A054055(A028310(n))+n)]` -/
def P14613897866976482580.Spec : Prop :=
  ∀ n, (P14613897866976482580.a n : ℤ) = A095824 (n + 1)

theorem P14613897866976482580.correct : P14613897866976482580.Spec := by
  intro n
  simp only [A095824, Nat.add_sub_cancel]

end A095824

/-! ## A095824.P7924446574636503454

`eq[1, A003415(A054055(n)+n)]`
-/

namespace A095824.P7924446574636503454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095824.P7924446574636503454

namespace A095824

/-- `eq[1, A003415(A054055(n)+n)]` -/
def P7924446574636503454.Spec : Prop :=
  ∀ n, (P7924446574636503454.a n : ℤ) = A095824 (n + 1)

end A095824

/-! ## A095824.P13191075340364577191

`eq[1, A018783(A054055(n)+n)]`
-/

namespace A095824.P13191075340364577191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095824.P13191075340364577191

namespace A095824

/-- `eq[1, A018783(A054055(n)+n)]` -/
def P13191075340364577191.Spec : Prop :=
  ∀ n, (P13191075340364577191.a n : ℤ) = A095824 (n + 1)

end A095824

/-! ## A095824.P16508953197820302625

`eq[1, A032741(A054055(n)+n)]`
-/

namespace A095824.P16508953197820302625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095824.P16508953197820302625

namespace A095824

/-- `eq[1, A032741(A054055(n)+n)]` -/
def P16508953197820302625.Spec : Prop :=
  ∀ n, (P16508953197820302625.a n : ℤ) = A095824 (n + 1)

end A095824

/-! ## A095824.P4856682541020010215

`eq[1, A078898(A054055(n)+n)]`
-/

namespace A095824.P4856682541020010215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095824.P4856682541020010215

namespace A095824

/-- `eq[1, A078898(A054055(n)+n)]` -/
def P4856682541020010215.Spec : Prop :=
  ∀ n, (P4856682541020010215.a n : ℤ) = A095824 (n + 1)

end A095824

/-! ## A095824.P11082675663439854248

`eq[1, A003415(A095815(n+1))]+1`
-/

namespace A095824.P11082675663439854248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A095815 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095824.P11082675663439854248

namespace A095824

/-- `eq[1, A003415(A095815(n+1))]+1` -/
def P11082675663439854248.Spec : Prop :=
  ∀ n, (P11082675663439854248.a n : ℤ) = A095824 (n + 1)

end A095824

/-! ## A095824.P12243972516077743832

`eq[A054055(n)+n, A007918(A054055(n)+n)]`
-/

namespace A095824.P12243972516077743832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095824.P12243972516077743832

namespace A095824

/-- `eq[A054055(n)+n, A007918(A054055(n)+n)]` -/
def P12243972516077743832.Spec : Prop :=
  ∀ n, (P12243972516077743832.a n : ℤ) = A095824 (n + 1)

end A095824

/-! ## A095824.P17677962230976941155

`record[A000027(n+1)/A003415(A095815(n+1))]`
-/

namespace A095824.P17677962230976941155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A003415 (A095815 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095824.P17677962230976941155

namespace A095824

/-- `record[A000027(n+1)/A003415(A095815(n+1))]` -/
def P17677962230976941155.Spec : Prop :=
  ∀ n, P17677962230976941155.a n = (A095824 (n + 1) : ℚ)

end A095824

/-!
# A095825: Numbers k such that k + largest digit of k is a square.

The programs for A095825, there is no canonical definition to state claims against.
-/

/-! ## A095825.P7937242266458963316

`lt[A032741(A054055(n)+n)%2, 1]`
-/

namespace A095825.P7937242266458963316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 (A054055 n + (n : ℤ)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095825.P7937242266458963316

/-!
# A095826: Numbers k such that k + largest digit of k is a triangular number.

The programs for A095826, the canonical program `A095826.P6298974977224630570` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095826 has offset 1).

The definition of A095826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095826.P6298974977224630570

`eq[0, A002262(A054055(n)+n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A095826

/-- `eq[0, A002262(A054055(n)+n)]` -/
def P6298974977224630570.Spec : Prop :=
  ∀ n, (P6298974977224630570.a n : ℤ) = A095826 (n + 1)

theorem P6298974977224630570.correct : P6298974977224630570.Spec := by
  intro n
  simp only [A095826, Nat.add_sub_cancel]

end A095826

/-! ## A095826.P14862432231737525241

`eq[0, A319047(A054055(n)+n)]`
-/

namespace A095826.P14862432231737525241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319047 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095826.P14862432231737525241

namespace A095826

/-- `eq[0, A319047(A054055(n)+n)]` -/
def P14862432231737525241.Spec : Prop :=
  ∀ n, (P14862432231737525241.a n : ℤ) = A095826 (n + 1)

end A095826

/-! ## A095826.P5866292781580275528

`eq[1, A059268(A054055(n)+n)]`
-/

namespace A095826.P5866292781580275528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095826.P5866292781580275528

namespace A095826

/-- `eq[1, A059268(A054055(n)+n)]` -/
def P5866292781580275528.Spec : Prop :=
  ∀ n, (P5866292781580275528.a n : ℤ) = A095826 (n + 1)

end A095826

/-! ## A095826.P17115299258709468454

`eq[2, A035214(A054055(n)+n)]`
-/

namespace A095826.P17115299258709468454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095826.P17115299258709468454

namespace A095826

/-- `eq[2, A035214(A054055(n)+n)]` -/
def P17115299258709468454.Spec : Prop :=
  ∀ n, (P17115299258709468454.a n : ℤ) = A095826 (n + 1)

end A095826

/-! ## A095826.P12733040370385692474

`eq[1, A063007(A054055(n)+n)]`
-/

namespace A095826.P12733040370385692474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 (A054055 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095826.P12733040370385692474

namespace A095826

/-- `eq[1, A063007(A054055(n)+n)]` -/
def P12733040370385692474.Spec : Prop :=
  ∀ n, (P12733040370385692474.a n : ℤ) = A095826 (n + 1)

end A095826

/-!
# A095827: a(n) is the smallest k such that ((A007953)^k)(9n)=9.

The programs for A095827, the canonical program `A095827.P14158741151086181023` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095827 has offset 1).

The definition of A095827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095827.P14158741151086181023

`ceil((∑[1-gcd(11, ∏{d}[n, #])]+n)/9)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095827

/-- `ceil((∑[1-gcd(11, ∏{d}[n, #])]+n)/9)` -/
def P14158741151086181023.Spec : Prop :=
  ∀ n, P14158741151086181023.a n = A095827 (n + 1)

theorem P14158741151086181023.correct : P14158741151086181023.Spec := by
  intro n
  simp only [A095827, Nat.add_sub_cancel]

end A095827

/-! ## A095827.P14040437158614852270

`ceil(atan(A193582(n)))`
-/

namespace A095827.P14040437158614852270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A193582 n : ℝ)⌉

end

end A095827.P14040437158614852270

namespace A095827

/-- `ceil(atan(A193582(n)))` -/
def P14040437158614852270.Spec : Prop :=
  ∀ n, P14040437158614852270.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P10226623727742407476

`ceil(A053831(n)/9)`
-/

namespace A095827.P10226623727742407476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053831 n : ℚ) / 9⌉

end

end A095827.P10226623727742407476

namespace A095827

/-- `ceil(A053831(n)/9)` -/
def P10226623727742407476.Spec : Prop :=
  ∀ n, P10226623727742407476.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P15038303916867460247

`A031286(9*(n+1))`
-/

namespace A095827.P15038303916867460247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (9 * (n + 1))

end

end A095827.P15038303916867460247

namespace A095827

/-- `A031286(9*(n+1))` -/
def P15038303916867460247.Spec : Prop :=
  ∀ n, P15038303916867460247.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P1759323563324894121

`a(A033909(n))+1` with `a(0)=0`
-/

namespace A095827.P1759323563324894121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A033909 n).toNat + 1

end

end A095827.P1759323563324894121

namespace A095827

/-- `a(A033909(n))+1` -/
def P1759323563324894121.Spec : Prop :=
  ∀ n, (P1759323563324894121.a n : ℤ) = A095827 (n + 1)

end A095827

/-! ## A095827.P16117164698949793854

`a(A037825(n))+1` with `a(0)=0`
-/

namespace A095827.P16117164698949793854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A037825 n).toNat + 1

end

end A095827.P16117164698949793854

namespace A095827

/-- `a(A037825(n))+1` -/
def P16117164698949793854.Spec : Prop :=
  ∀ n, (P16117164698949793854.a n : ℤ) = A095827 (n + 1)

end A095827

/-! ## A095827.P3117527580530877510

`a(A037860(n))+1` with `a(0)=0`
-/

namespace A095827.P3117527580530877510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A037860 n).toNat + 1

end

end A095827.P3117527580530877510

namespace A095827

/-- `a(A037860(n))+1` -/
def P3117527580530877510.Spec : Prop :=
  ∀ n, (P3117527580530877510.a n : ℤ) = A095827 (n + 1)

end A095827

/-! ## A095827.P4542062147670619926

`a(a(A193581(n)))+1` with `a(0)=0`
-/

namespace A095827.P4542062147670619926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (a (A193581 n).toNat) + 1

end

end A095827.P4542062147670619926

namespace A095827

/-- `a(a(A193581(n)))+1` -/
def P4542062147670619926.Spec : Prop :=
  ∀ n, (P4542062147670619926.a n : ℤ) = A095827 (n + 1)

end A095827

/-! ## A095827.P14534766245948117974

`ceil(A098488(n)/(n-cos(8)))`
-/

namespace A095827.P14534766245948117974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098488 n : ℝ) / ((n : ℝ) - Real.cos (8 : ℝ))⌉

end

end A095827.P14534766245948117974

namespace A095827

/-- `ceil(A098488(n)/(n-cos(8)))` -/
def P14534766245948117974.Spec : Prop :=
  ∀ n, P14534766245948117974.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P12499935560207223263

`a(a(n-A004185(n)))+1` with `a(0)=0`
-/

namespace A095827.P12499935560207223263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (a ((n : ℤ) - A004185 n).toNat) + 1

end

end A095827.P12499935560207223263

namespace A095827

/-- `a(a(n-A004185(n)))+1` -/
def P12499935560207223263.Spec : Prop :=
  ∀ n, (P12499935560207223263.a n : ℤ) = A095827 (n + 1)

end A095827

/-! ## A095827.P18094196358203911716

`A343639((n+1)%(2*n+1))`
-/

namespace A095827.P18094196358203911716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 ((n + 1) % (2 * n + 1))

end

end A095827.P18094196358203911716

namespace A095827

/-- `A343639((n+1)%(2*n+1))` -/
def P18094196358203911716.Spec : Prop :=
  ∀ n, P18094196358203911716.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P16152631818506551288

`A343639(A118764(n))`
-/

namespace A095827.P16152631818506551288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A118764 n).toNat

end

end A095827.P16152631818506551288

namespace A095827

/-- `A343639(A118764(n))` -/
def P16152631818506551288.Spec : Prop :=
  ∀ n, P16152631818506551288.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P8061996580758349187

`A343639(A326178(n))`
-/

namespace A095827.P8061996580758349187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A326178 n).toNat

end

end A095827.P8061996580758349187

namespace A095827

/-- `A343639(A326178(n))` -/
def P8061996580758349187.Spec : Prop :=
  ∀ n, P8061996580758349187.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P1375837673068463698

`A343639(A398281(n))`
-/

namespace A095827.P1375837673068463698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A398281 n).toNat

end

end A095827.P1375837673068463698

namespace A095827

/-- `A343639(A398281(n))` -/
def P1375837673068463698.Spec : Prop :=
  ∀ n, P1375837673068463698.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P12610843979082694149

`A046698(A193582(n)²)`
-/

namespace A095827.P12610843979082694149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 (A193582 n ^ 2).toNat

end

end A095827.P12610843979082694149

namespace A095827

/-- `A046698(A193582(n)²)` -/
def P12610843979082694149.Spec : Prop :=
  ∀ n, P12610843979082694149.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P6572220525461767830

`A343639(A087156(n+1))`
-/

namespace A095827.P6572220525461767830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A087156 (n + 1)).toNat

end

end A095827.P6572220525461767830

namespace A095827

/-- `A343639(A087156(n+1))` -/
def P6572220525461767830.Spec : Prop :=
  ∀ n, P6572220525461767830.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P10655701863026519392

`A343639(A184985(n+1))`
-/

namespace A095827.P10655701863026519392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A184985 (n + 1)).toNat

end

end A095827.P10655701863026519392

namespace A095827

/-- `A343639(A184985(n+1))` -/
def P10655701863026519392.Spec : Prop :=
  ∀ n, P10655701863026519392.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P2495396518473390696

`A343639(A199969(n+2))`
-/

namespace A095827.P2495396518473390696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343639 (A199969 (n + 2)).toNat

end

end A095827.P2495396518473390696

namespace A095827

/-- `A343639(A199969(n+2))` -/
def P2495396518473390696.Spec : Prop :=
  ∀ n, P2495396518473390696.a n = A095827 (n + 1)

end A095827

/-! ## A095827.P7500706459908116157

`A048766(4*A193582(n))`
-/

namespace A095827.P7500706459908116157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (4 * A193582 n).toNat

end

end A095827.P7500706459908116157

namespace A095827

/-- `A048766(4*A193582(n))` -/
def P7500706459908116157.Spec : Prop :=
  ∀ n, P7500706459908116157.a n = A095827 (n + 1)

end A095827

/-!
# A095828: Smoothed lengths of the B blocks in analysis of A090822.

The programs for A095828, there is no canonical definition to state claims against.
-/

/-! ## A095828.P14438449230203877327

`A091839(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A095828.P14438449230203877327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091839 n + 2 * a (n - 1)

end

end A095828.P14438449230203877327

/-! ## A095828.P3291802602370629309

`or(3*2^n-(n+2), A000120(A085362(n)))`
-/

namespace A095828.P3291802602370629309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 * 2 ^ n : ℤ) - (n + 2 : ℤ)) (A000120 (A085362 n).toNat)

end

end A095828.P3291802602370629309

/-! ## A095828.P3798031656720967635

`or(3*2^n-(n+2), A000196(A138211(n)))`
-/

namespace A095828.P3798031656720967635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((3 * 2 ^ n : ℤ) - (n + 2 : ℤ)) (A000196 (A138211 n).toNat)

end

end A095828.P3798031656720967635

/-!
# A095831: Triangle read by rows: T(n,k) = (n-k)^2, n>=1, 1<=k<=n.

The programs for A095831, the canonical program `A095831.P8959828256737551881` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095831 has offset 1).

The definition of A095831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n))²` (program `A095831.P8959828256737551881`, by `A095831.P8959828256737551881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095831.P8959828256737551881

`(row(n)-col(n))²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095831

/-- `(row(n)-col(n))²` -/
def P8959828256737551881.Spec : Prop :=
  ∀ n, P8959828256737551881.a n = A095831 (n + 1)

theorem P8959828256737551881.correct : P8959828256737551881.Spec := by
  intro n
  simp only [A095831, Nat.add_sub_cancel]

end A095831

/-! ## A095831.P1815282580741772872

`(row(n)+1-(col(n)+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095831.P1815282580741772872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)) ^ 2

end

end A095831.P1815282580741772872

namespace A095831

/-- `(row(n)+1-(col(n)+1))²` -/
def P1815282580741772872.Spec : Prop :=
  ∀ n, P1815282580741772872.a n = A095831 (n + 1)

theorem P1815282580741772872.correct : P1815282580741772872.Spec := by
  intro n
  simp only [A095831, Nat.add_sub_cancel, A095831.P1815282580741772872.a, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095831

/-! ## A095831.P6494038683220366772

`(col(n)-row(n))²`
-/

namespace A095831.P6494038683220366772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) ^ 2

end

end A095831.P6494038683220366772

namespace A095831

/-- `(col(n)-row(n))²` -/
def P6494038683220366772.Spec : Prop :=
  ∀ n, P6494038683220366772.a n = A095831 (n + 1)

theorem P6494038683220366772.correct : P6494038683220366772.Spec := by
  intro n
  simp only [A095831, Nat.add_sub_cancel, A095831.P6494038683220366772.a, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095831

/-! ## A095831.P863136303191802673

`(row(n)-col(n))^2`
-/

namespace A095831.P863136303191802673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2

end

end A095831.P863136303191802673

namespace A095831

/-- `(row(n)-col(n))^2` -/
def P863136303191802673.Spec : Prop :=
  ∀ n, P863136303191802673.a n = A095831 (n + 1)

theorem P863136303191802673.correct : P863136303191802673.Spec := by
  intro n
  simp only [A095831, Nat.add_sub_cancel, A095831.P863136303191802673.a, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]

end A095831

/-! ## A095831.P13521458740283582696

`root(row(n)-col(n), 1/2)`
-/

namespace A095831.P13521458740283582696
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A095831.P13521458740283582696

namespace A095831

/-- `root(row(n)-col(n), 1/2)` -/
def P13521458740283582696.Spec : Prop :=
  ∀ n, P13521458740283582696.a n = (A095831 (n + 1) : ℝ)

theorem P13521458740283582696.correct : P13521458740283582696.Spec := by
  intro n
  simp only [A095831, Nat.add_sub_cancel, A095831.P13521458740283582696.a, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]
  try simp

end A095831

/-! ## A095831.P2283510390938621227

`(row(n)-col(n))*(row(n)-col(n))`
-/

namespace A095831.P2283510390938621227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A095831.P2283510390938621227

namespace A095831

/-- `(row(n)-col(n))*(row(n)-col(n))` -/
def P2283510390938621227.Spec : Prop :=
  ∀ n, P2283510390938621227.a n = A095831 (n + 1)

theorem P2283510390938621227.correct : P2283510390938621227.Spec := by
  intro n
  simp only [A095831, Nat.add_sub_cancel, A095831.P2283510390938621227.a, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095831

/-! ## A095831.P14130706930265789854

`(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A095831.P14130706930265789854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A095831.P14130706930265789854

namespace A095831

/-- `(n+1-C(comp[∑[n]]-n, 2))²` -/
def P14130706930265789854.Spec : Prop :=
  ∀ n, P14130706930265789854.a n = A095831 (n + 1)

end A095831

/-! ## A095831.P44516346918483158

`(1-(C(comp[∑[n]]-n, 2)-n))²`
-/

namespace A095831.P44516346918483158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))) ^ 2

end

end A095831.P44516346918483158

namespace A095831

/-- `(1-(C(comp[∑[n]]-n, 2)-n))²` -/
def P44516346918483158.Spec : Prop :=
  ∀ n, P44516346918483158.a n = A095831 (n + 1)

end A095831

/-! ## A095831.P1950950843517023491

`(n+1-C(comp[∑[n]]-n, 2))^2`
-/

namespace A095831.P1950950843517023491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2

end

end A095831.P1950950843517023491

namespace A095831

/-- `(n+1-C(comp[∑[n]]-n, 2))^2` -/
def P1950950843517023491.Spec : Prop :=
  ∀ n, P1950950843517023491.a n = A095831 (n + 1)

end A095831

/-! ## A095831.P4471892589145897298

`(C(comp[∑[n]]-n, 2)-n-1)^2`
-/

namespace A095831.P4471892589145897298
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1) ^ 2

end

end A095831.P4471892589145897298

namespace A095831

/-- `(C(comp[∑[n]]-n, 2)-n-1)^2` -/
def P4471892589145897298.Spec : Prop :=
  ∀ n, P4471892589145897298.a n = A095831 (n + 1)

end A095831

/-! ## A095831.P1379777678488504606

`(lt[n, (ceil(sqrt(n))²-n)²]%xor(n, -1))²`
-/

namespace A095831.P1379777678488504606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) (Int.xor (n : ℤ) (-1)) ^ 2

end

end A095831.P1379777678488504606

namespace A095831

/-- `(lt[n, (ceil(sqrt(n))²-n)²]%xor(n, -1))²` -/
def P1379777678488504606.Spec : Prop :=
  ∀ n, P1379777678488504606.a n = A095831 (n + 1)

end A095831

/-! ## A095831.P13690318566003332866

`A025581(n)²`
-/

namespace A095831.P13690318566003332866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ 2

end

end A095831.P13690318566003332866

namespace A095831

/-- `A025581(n)²` -/
def P13690318566003332866.Spec : Prop :=
  ∀ n, P13690318566003332866.a n = A095831 (n + 1)

end A095831

/-! ## A095831.P6442197723669876749

`log2(A130321(n))²`
-/

namespace A095831.P6442197723669876749
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) ^ 2

end

end A095831.P6442197723669876749

namespace A095831

/-- `log2(A130321(n))²` -/
def P6442197723669876749.Spec : Prop :=
  ∀ n, P6442197723669876749.a n = (A095831 (n + 1) : ℝ)

end A095831

/-! ## A095831.P13458860582567258269

`∑[A167407(n)]²`
-/

namespace A095831.P13458860582567258269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095831.P13458860582567258269

namespace A095831

/-- `∑[A167407(n)]²` -/
def P13458860582567258269.Spec : Prop :=
  ∀ n, P13458860582567258269.a n = A095831 (n + 1)

end A095831

/-! ## A095831.P5487207200519999629

`val(A036561(n), 2)²`
-/

namespace A095831.P5487207200519999629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 2 ^ 2

end

end A095831.P5487207200519999629

namespace A095831

/-- `val(A036561(n), 2)²` -/
def P5487207200519999629.Spec : Prop :=
  ∀ n, (P5487207200519999629.a n : ℤ) = A095831 (n + 1)

end A095831

/-! ## A095831.P5736785581892721167

`val(A054582(n), 2)²`
-/

namespace A095831.P5736785581892721167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054582 n).toNat 2 ^ 2

end

end A095831.P5736785581892721167

namespace A095831

/-- `val(A054582(n), 2)²` -/
def P5736785581892721167.Spec : Prop :=
  ∀ n, (P5736785581892721167.a n : ℤ) = A095831 (n + 1)

end A095831

/-! ## A095831.P6905749371721364235

`val(A153279(n), 2)²`
-/

namespace A095831.P6905749371721364235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A153279 n).toNat 2 ^ 2

end

end A095831.P6905749371721364235

namespace A095831

/-- `val(A153279(n), 2)²` -/
def P6905749371721364235.Spec : Prop :=
  ∀ n, (P6905749371721364235.a n : ℤ) = A095831 (n + 1)

end A095831

/-! ## A095831.P1275963156811546015

`val(A193858(n), 2)²`
-/

namespace A095831.P1275963156811546015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193858 n).toNat 2 ^ 2

end

end A095831.P1275963156811546015

namespace A095831

/-- `val(A193858(n), 2)²` -/
def P1275963156811546015.Spec : Prop :=
  ∀ n, (P1275963156811546015.a n : ℤ) = A095831 (n + 1)

end A095831

/-! ## A095831.P12864436596522797418

`val(A230435(n), 2)²`
-/

namespace A095831.P12864436596522797418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A230435 n).toNat 2 ^ 2

end

end A095831.P12864436596522797418

namespace A095831

/-- `val(A230435(n), 2)²` -/
def P12864436596522797418.Spec : Prop :=
  ∀ n, (P12864436596522797418.a n : ℤ) = A095831 (n + 1)

end A095831

/-! ## A095831.P2627181899860740266

`floor(log2(A130330(n)))²`
-/

namespace A095831.P2627181899860740266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A130330 n).toNat ^ 2

end

end A095831.P2627181899860740266

namespace A095831

/-- `floor(log2(A130330(n)))²` -/
def P2627181899860740266.Spec : Prop :=
  ∀ n, (P2627181899860740266.a n : ℤ) = A095831 (n + 1)

end A095831

/-!
# A095832: Triangle read by rows: T(n,k) = (n-k+1)*(n-k), n>=1, 1<=k<=n.

The programs for A095832, the canonical program `A095832.P7706533872419013118` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095832 has offset 1).

The definition of A095832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(row(n)-col(n))` (program `A095832.P7706533872419013118`, by `A095832.P7706533872419013118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095832.P7706533872419013118

`(row(n)-col(n)+1)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095832

/-- `(row(n)-col(n)+1)*(row(n)-col(n))` -/
def P7706533872419013118.Spec : Prop :=
  ∀ n, P7706533872419013118.a n = A095832 (n + 1)

theorem P7706533872419013118.correct : P7706533872419013118.Spec := by
  intro n
  simp only [A095832, Nat.add_sub_cancel]

end A095832

/-! ## A095832.P14786340624940186048

`(row(n)+1-(col(n)+1)+1)*(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095832.P14786340624940186048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ))

end

end A095832.P14786340624940186048

namespace A095832

/-- `(row(n)+1-(col(n)+1)+1)*(row(n)+1-(col(n)+1))` -/
def P14786340624940186048.Spec : Prop :=
  ∀ n, P14786340624940186048.a n = A095832 (n + 1)

theorem P14786340624940186048.correct : P14786340624940186048.Spec := by
  intro n
  simp only [A095832, Nat.add_sub_cancel, A095832.P14786340624940186048.a, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095832

/-! ## A095832.P3956885808736468125

`T(n-1,k)+2*(row(n)-col(n))` with `a(0)=0`
-/

namespace A095832.P3956885808736468125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUp a n + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A095832.P3956885808736468125

namespace A095832

/-- `T(n-1,k)+2*(row(n)-col(n))` -/
def P3956885808736468125.Spec : Prop :=
  ∀ n, P3956885808736468125.a n = A095832 (n + 1)

end A095832

/-! ## A095832.P9611975346999248635

`2*C(row(n)+1-col(n), 2)`
-/

namespace A095832.P9611975346999248635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat 2

end

end A095832.P9611975346999248635

namespace A095832

/-- `2*C(row(n)+1-col(n), 2)` -/
def P9611975346999248635.Spec : Prop :=
  ∀ n, (P9611975346999248635.a n : ℤ) = A095832 (n + 1)

end A095832

/-! ## A095832.P3728633663507981452

`row(n)-col(n)+(row(n)-col(n))²`
-/

namespace A095832.P3728633663507981452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2

end

end A095832.P3728633663507981452

namespace A095832

/-- `row(n)-col(n)+(row(n)-col(n))²` -/
def P3728633663507981452.Spec : Prop :=
  ∀ n, P3728633663507981452.a n = A095832 (n + 1)

theorem P3728633663507981452.correct : P3728633663507981452.Spec := by
  intro n
  simp only [A095832, Nat.add_sub_cancel, A095832.P3728633663507981452.a, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095832

/-! ## A095832.P18132890125965962946

`2*C(C(comp[∑[n]]-n, 2)-n, 2)`
-/

namespace A095832.P18132890125965962946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat 2

end

end A095832.P18132890125965962946

namespace A095832

/-- `2*C(C(comp[∑[n]]-n, 2)-n, 2)` -/
def P18132890125965962946.Spec : Prop :=
  ∀ n, (P18132890125965962946.a n : ℤ) = A095832 (n + 1)

end A095832

/-! ## A095832.P1150682544240105823

`(1+row(n)-col(n))*(row(n)-col(n))`
-/

namespace A095832.P1150682544240105823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A095832.P1150682544240105823

namespace A095832

/-- `(1+row(n)-col(n))*(row(n)-col(n))` -/
def P1150682544240105823.Spec : Prop :=
  ∀ n, P1150682544240105823.a n = A095832 (n + 1)

theorem P1150682544240105823.correct : P1150682544240105823.Spec := by
  intro n
  simp only [A095832, Nat.add_sub_cancel, A095832.P1150682544240105823.a, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095832

/-! ## A095832.P17000356974531535745

`(col(n)-row(n))*(col(n)-1-row(n))`
-/

namespace A095832.P17000356974531535745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * ((SequenceMachineLib.triCol n : ℤ) - 1 - (SequenceMachineLib.triRow n : ℤ))

end

end A095832.P17000356974531535745

namespace A095832

/-- `(col(n)-row(n))*(col(n)-1-row(n))` -/
def P17000356974531535745.Spec : Prop :=
  ∀ n, P17000356974531535745.a n = A095832 (n + 1)

theorem P17000356974531535745.correct : P17000356974531535745.Spec := by
  intro n
  simp only [A095832, Nat.add_sub_cancel, A095832.P17000356974531535745.a, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095832

/-! ## A095832.P9672094591026238933

`row(n)+(row(n)-col(n))^2-col(n)`
-/

namespace A095832.P9672094591026238933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 - (SequenceMachineLib.triCol n : ℤ)

end

end A095832.P9672094591026238933

namespace A095832

/-- `row(n)+(row(n)-col(n))^2-col(n)` -/
def P9672094591026238933.Spec : Prop :=
  ∀ n, P9672094591026238933.a n = A095832 (n + 1)

theorem P9672094591026238933.correct : P9672094591026238933.Spec := by
  intro n
  simp only [A095832, Nat.add_sub_cancel, A095832.P9672094591026238933.a, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095832

/-! ## A095832.P8992663824324759473

`lcm(row(n)-col(n)+1, row(n)-col(n))`
-/

namespace A095832.P8992663824324759473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A095832.P8992663824324759473

namespace A095832

/-- `lcm(row(n)-col(n)+1, row(n)-col(n))` -/
def P8992663824324759473.Spec : Prop :=
  ∀ n, (P8992663824324759473.a n : ℤ) = A095832 (n + 1)

end A095832

/-! ## A095832.P8913517570091818146

`floor((A099375(n)/2)²)`
-/

namespace A095832.P8913517570091818146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A099375 n : ℚ) / 2) ^ 2⌋

end

end A095832.P8913517570091818146

namespace A095832

/-- `floor((A099375(n)/2)²)` -/
def P8913517570091818146.Spec : Prop :=
  ∀ n, P8913517570091818146.a n = A095832 (n + 1)

end A095832

/-! ## A095832.P13392103749607496327

`A002378(row(n)-col(n))`
-/

namespace A095832.P13392103749607496327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A095832.P13392103749607496327

namespace A095832

/-- `A002378(row(n)-col(n))` -/
def P13392103749607496327.Spec : Prop :=
  ∀ n, P13392103749607496327.a n = A095832 (n + 1)

end A095832

/-! ## A095832.P12602510678473313243

`(A237587(n+1)-1)/4`
-/

namespace A095832.P12602510678473313243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237587 (n + 1) - 1 : ℚ) / 4

end

end A095832.P12602510678473313243

namespace A095832

/-- `(A237587(n+1)-1)/4` -/
def P12602510678473313243.Spec : Prop :=
  ∀ n, P12602510678473313243.a n = (A095832 (n + 1) : ℚ)

theorem P12602510678473313243.correct : P12602510678473313243.Spec := by
  intro n
  simp only [A095832, Nat.add_sub_cancel, A095832.P12602510678473313243.a, A095832.P7706533872419013118.a, A237587, A237587.P9464127105625326086.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095832

/-! ## A095832.P12043037724205017737

`2*C(A004736(n+1), 2)`
-/

namespace A095832.P12043037724205017737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A004736 (n + 1)).toNat 2

end

end A095832.P12043037724205017737

namespace A095832

/-- `2*C(A004736(n+1), 2)` -/
def P12043037724205017737.Spec : Prop :=
  ∀ n, (P12043037724205017737.a n : ℤ) = A095832 (n + 1)

end A095832

/-! ## A095832.P5863930319143442021

`2*C(A025581(n)+1, 2)`
-/

namespace A095832.P5863930319143442021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A025581 n + 1).toNat 2

end

end A095832.P5863930319143442021

namespace A095832

/-- `2*C(A025581(n)+1, 2)` -/
def P5863930319143442021.Spec : Prop :=
  ∀ n, (P5863930319143442021.a n : ℤ) = A095832 (n + 1)

end A095832

/-! ## A095832.P13884719604301928935

`2*C(sqrt(A055461(n+1)), 2)`
-/

namespace A095832.P13884719604301928935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ))).toNat 2

end

end A095832.P13884719604301928935

namespace A095832

/-- `2*C(sqrt(A055461(n+1)), 2)` -/
def P13884719604301928935.Spec : Prop :=
  ∀ n, (P13884719604301928935.a n : ℤ) = A095832 (n + 1)

end A095832

/-! ## A095832.P1032937152840200210

`2*C(log2(A090988(n+1)), 2)`
-/

namespace A095832.P1032937152840200210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A090988 (n + 1) : ℝ))).toNat 2

end

end A095832.P1032937152840200210

namespace A095832

/-- `2*C(log2(A090988(n+1)), 2)` -/
def P1032937152840200210.Spec : Prop :=
  ∀ n, (P1032937152840200210.a n : ℤ) = A095832 (n + 1)

end A095832

/-! ## A095832.P2746572229111525099

`A002378(A025581(n))`
-/

namespace A095832.P2746572229111525099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A025581 n).toNat

end

end A095832.P2746572229111525099

namespace A095832

/-- `A002378(A025581(n))` -/
def P2746572229111525099.Spec : Prop :=
  ∀ n, P2746572229111525099.a n = A095832 (n + 1)

end A095832

/-! ## A095832.P6812739545175718196

`A002620(A099375(n))`
-/

namespace A095832.P6812739545175718196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A099375 n).toNat

end

end A095832.P6812739545175718196

namespace A095832

/-- `A002620(A099375(n))` -/
def P6812739545175718196.Spec : Prop :=
  ∀ n, P6812739545175718196.a n = A095832 (n + 1)

end A095832

/-! ## A095832.P12662108646448001159

`A008130(A143971(n+1))`
-/

namespace A095832.P12662108646448001159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 (A143971 (n + 1)).toNat

end

end A095832.P12662108646448001159

namespace A095832

/-- `A008130(A143971(n+1))` -/
def P12662108646448001159.Spec : Prop :=
  ∀ n, P12662108646448001159.a n = A095832 (n + 1)

end A095832

/-!
# A095833: Triangle read by rows: T(n,k) = (n-k+1)*n, n>=1, 1<=k<=n.

The programs for A095833, the canonical program `A095833.P14663800684524425914` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095833 has offset 1).

The definition of A095833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1)+1)*(row(n)+1)` (program `A095833.P14663800684524425914`, by `A095833.P14663800684524425914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095833.P14663800684524425914

`(row(n)+1-(col(n)+1)+1)*(row(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095833

/-- `(row(n)+1-(col(n)+1)+1)*(row(n)+1)` -/
def P14663800684524425914.Spec : Prop :=
  ∀ n, P14663800684524425914.a n = A095833 (n + 1)

theorem P14663800684524425914.correct : P14663800684524425914.Spec := by
  intro n
  simp only [A095833, Nat.add_sub_cancel]

end A095833

/-! ## A095833.P13676404246094358653

`T(n-1,k)+2*row(n)+1-col(n)` with `a(0)=1`
-/

namespace A095833.P13676404246094358653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (2 * SequenceMachineLib.triRow n : ℤ) + 1 - (SequenceMachineLib.triCol n : ℤ)

end

end A095833.P13676404246094358653

namespace A095833

/-- `T(n-1,k)+2*row(n)+1-col(n)` -/
def P13676404246094358653.Spec : Prop :=
  ∀ n, P13676404246094358653.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P4022376805896543096

`(1+row(n)-col(n))*(1+row(n))`
-/

namespace A095833.P4022376805896543096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (1 + SequenceMachineLib.triRow n : ℤ)

end

end A095833.P4022376805896543096

namespace A095833

/-- `(1+row(n)-col(n))*(1+row(n))` -/
def P4022376805896543096.Spec : Prop :=
  ∀ n, P4022376805896543096.a n = A095833 (n + 1)

theorem P4022376805896543096.correct : P4022376805896543096.Spec := by
  intro n
  simp only [A095833, Nat.add_sub_cancel, A095833.P4022376805896543096.a, A095833.P14663800684524425914.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095833

/-! ## A095833.P14883467294728735328

`A095834(n+1)+∑[char[∑[n]]]`
-/

namespace A095833.P14883467294728735328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A095833.P14883467294728735328

namespace A095833

/-- `A095834(n+1)+∑[char[∑[n]]]` -/
def P14883467294728735328.Spec : Prop :=
  ∀ n, P14883467294728735328.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P1354147242963730911

`∑[char[∑[n]]]*A004736(n+1)`
-/

namespace A095833.P1354147242963730911
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004736 (n + 1)

end

end A095833.P1354147242963730911

namespace A095833

/-- `∑[char[∑[n]]]*A004736(n+1)` -/
def P1354147242963730911.Spec : Prop :=
  ∀ n, P1354147242963730911.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P3465942233176876938

`(A025581(n)+1)*∑[char[∑[n]]]`
-/

namespace A095833.P3465942233176876938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A095833.P3465942233176876938

namespace A095833

/-- `(A025581(n)+1)*∑[char[∑[n]]]` -/
def P3465942233176876938.Spec : Prop :=
  ∀ n, P3465942233176876938.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P6315543480983162813

`A075362(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A095833.P6315543480983162813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A095833.P6315543480983162813

namespace A095833

/-- `A075362(∑[2*n]%comp[∑[n]]+1)` -/
def P6315543480983162813.Spec : Prop :=
  ∀ n, P6315543480983162813.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P7583683242277391033

`(comp[C(n, 2)-1]-n)*sqrt(A055461(n+1))`
-/

namespace A095833.P7583683242277391033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℝ) * Real.sqrt (A055461 (n + 1) : ℝ)

end

end A095833.P7583683242277391033

namespace A095833

/-- `(comp[C(n, 2)-1]-n)*sqrt(A055461(n+1))` -/
def P7583683242277391033.Spec : Prop :=
  ∀ n, P7583683242277391033.a n = (A095833 (n + 1) : ℝ)

end A095833

/-! ## A095833.P11716982493632573428

`A063929(n+1)-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095833.P11716982493632573428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A095833.P11716982493632573428

namespace A095833

/-- `A063929(n+1)-(C(comp[∑[n]]-n, 2)-n)` -/
def P11716982493632573428.Spec : Prop :=
  ∀ n, P11716982493632573428.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P1340262263454963366

`(C(comp[∑[n]]-n, 2)-n)*A002024(n+1)`
-/

namespace A095833.P1340262263454963366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A002024 (n + 1)

end

end A095833.P1340262263454963366

namespace A095833

/-- `(C(comp[∑[n]]-n, 2)-n)*A002024(n+1)` -/
def P1340262263454963366.Spec : Prop :=
  ∀ n, P1340262263454963366.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P330613638517454546

`A075362(A038722(n+1))`
-/

namespace A095833.P330613638517454546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A038722 (n + 1)).toNat

end

end A095833.P330613638517454546

namespace A095833

/-- `A075362(A038722(n+1))` -/
def P330613638517454546.Spec : Prop :=
  ∀ n, P330613638517454546.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P14353926505426724589

`A135065(n)/A074909(n)`
-/

namespace A095833.P14353926505426724589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135065 n : ℚ) / (A074909 n : ℚ)

end

end A095833.P14353926505426724589

namespace A095833

/-- `A135065(n)/A074909(n)` -/
def P14353926505426724589.Spec : Prop :=
  ∀ n, P14353926505426724589.a n = (A095833 (n + 1) : ℚ)

end A095833

/-! ## A095833.P2992033627161996878

`A128140(n+1)+A025581(n)`
-/

namespace A095833.P2992033627161996878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) + A025581 n

end

end A095833.P2992033627161996878

namespace A095833

/-- `A128140(n+1)+A025581(n)` -/
def P2992033627161996878.Spec : Prop :=
  ∀ n, P2992033627161996878.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P2968641205403838775

`A128076(n+1)+A091435(n)`
-/

namespace A095833.P2968641205403838775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) + A091435 n

end

end A095833.P2968641205403838775

namespace A095833

/-- `A128076(n+1)+A091435(n)` -/
def P2968641205403838775.Spec : Prop :=
  ∀ n, P2968641205403838775.a n = A095833 (n + 1)

theorem P2968641205403838775.correct : P2968641205403838775.Spec := by
  intro n
  simp only [A095833, Nat.add_sub_cancel, A095833.P2968641205403838775.a, A095833.P14663800684524425914.a, A091435, A091435.P4633070448187892032.a, A128076, A128076.P18422387938473498740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095833

/-! ## A095833.P12116716290503707631

`A323956(n+1)+A003056(n)`
-/

namespace A095833.P12116716290503707631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) + A003056 n

end

end A095833.P12116716290503707631

namespace A095833

/-- `A323956(n+1)+A003056(n)` -/
def P12116716290503707631.Spec : Prop :=
  ∀ n, P12116716290503707631.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P17489308853459407953

`A091435(n)+A294317(n)+1`
-/

namespace A095833.P17489308853459407953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + (A294317 n + 1)

end

end A095833.P17489308853459407953

namespace A095833

/-- `A091435(n)+A294317(n)+1` -/
def P17489308853459407953.Spec : Prop :=
  ∀ n, P17489308853459407953.a n = A095833 (n + 1)

theorem P17489308853459407953.correct : P17489308853459407953.Spec := by
  intro n
  simp only [A095833, Nat.add_sub_cancel, A095833.P17489308853459407953.a, A095833.P14663800684524425914.a, A091435, A091435.P4633070448187892032.a, A294317, A294317.P6597418737474744620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095833

/-! ## A095833.P5588081709899361458

`A131784(n+1)-A025581(n)`
-/

namespace A095833.P5588081709899361458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131784 (n + 1) - A025581 n

end

end A095833.P5588081709899361458

namespace A095833

/-- `A131784(n+1)-A025581(n)` -/
def P5588081709899361458.Spec : Prop :=
  ∀ n, P5588081709899361458.a n = A095833 (n + 1)

theorem P5588081709899361458.correct : P5588081709899361458.Spec := by
  intro n
  simp only [A095833, Nat.add_sub_cancel, A095833.P5588081709899361458.a, A095833.P14663800684524425914.a, A025581, A025581.P16112744757063613497.a, A131784, A131784.P3551853482120838731.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095833

/-! ## A095833.P7772311211992373122

`A075362(A093995(n+1)-n)`
-/

namespace A095833.P7772311211992373122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A095833.P7772311211992373122

namespace A095833

/-- `A075362(A093995(n+1)-n)` -/
def P7772311211992373122.Spec : Prop :=
  ∀ n, P7772311211992373122.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P4470849324956201909

`A180858(n+1)-A143844(n)`
-/

namespace A095833.P4470849324956201909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180858 (n + 1) - A143844 n

end

end A095833.P4470849324956201909

namespace A095833

/-- `A180858(n+1)-A143844(n)` -/
def P4470849324956201909.Spec : Prop :=
  ∀ n, P4470849324956201909.a n = A095833 (n + 1)

end A095833

/-! ## A095833.P11054545058653111773

`A330613(n+1)-A091435(n)`
-/

namespace A095833.P11054545058653111773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (n + 1) - A091435 n

end

end A095833.P11054545058653111773

namespace A095833

/-- `A330613(n+1)-A091435(n)` -/
def P11054545058653111773.Spec : Prop :=
  ∀ n, P11054545058653111773.a n = A095833 (n + 1)

theorem P11054545058653111773.correct : P11054545058653111773.Spec := by
  intro n
  simp only [A095833, Nat.add_sub_cancel, A095833.P11054545058653111773.a, A095833.P14663800684524425914.a, A091435, A091435.P4633070448187892032.a, A330613, A330613.P17044888638483625990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095833

/-!
# A095834: Triangle read by rows: T(n,k) = (n-k)*n, n>=1, 1<=k<=n.

The programs for A095834, the canonical program `A095834.P817103610530576889` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095834 has offset 1).

The definition of A095834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1))*(row(n)+1)` (program `A095834.P817103610530576889`, by `A095834.P817103610530576889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095834.P817103610530576889

`(row(n)+1-(col(n)+1))*(row(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095834

/-- `(row(n)+1-(col(n)+1))*(row(n)+1)` -/
def P817103610530576889.Spec : Prop :=
  ∀ n, P817103610530576889.a n = A095834 (n + 1)

theorem P817103610530576889.correct : P817103610530576889.Spec := by
  intro n
  simp only [A095834, Nat.add_sub_cancel]

end A095834

/-! ## A095834.P11171575274682630493

`(row(n)+1)*(row(n)-col(n))`
-/

namespace A095834.P11171575274682630493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A095834.P11171575274682630493

namespace A095834

/-- `(row(n)+1)*(row(n)-col(n))` -/
def P11171575274682630493.Spec : Prop :=
  ∀ n, P11171575274682630493.a n = A095834 (n + 1)

theorem P11171575274682630493.correct : P11171575274682630493.Spec := by
  intro n
  simp only [A095834, Nat.add_sub_cancel, A095834.P11171575274682630493.a, A095834.P817103610530576889.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095834

/-! ## A095834.P6567356840131314930

`A323956(n+1)-1`
-/

namespace A095834.P6567356840131314930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) - 1

end

end A095834.P6567356840131314930

namespace A095834

/-- `A323956(n+1)-1` -/
def P6567356840131314930.Spec : Prop :=
  ∀ n, P6567356840131314930.a n = A095834 (n + 1)

theorem P6567356840131314930.correct : P6567356840131314930.Spec := by
  intro n
  simp only [A095834, Nat.add_sub_cancel, A095834.P6567356840131314930.a, A095834.P817103610530576889.a, A323956, A323956.P11197926771404492179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095834

/-! ## A095834.P7394613565648872144

`∑[char[∑[n]]]*A025581(n)`
-/

namespace A095834.P7394613565648872144
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A025581 n

end

end A095834.P7394613565648872144

namespace A095834

/-- `∑[char[∑[n]]]*A025581(n)` -/
def P7394613565648872144.Spec : Prop :=
  ∀ n, P7394613565648872144.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P4575111060806698103

`round(sqrt(2*n))*A144257(n+1)`
-/

namespace A095834.P4575111060806698103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * A144257 (n + 1)

end

end A095834.P4575111060806698103

namespace A095834

/-- `round(sqrt(2*n))*A144257(n+1)` -/
def P4575111060806698103.Spec : Prop :=
  ∀ n, P4575111060806698103.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P1492678333712106640

`(A004736(n+1)-1)*∑[char[∑[n]]]`
-/

namespace A095834.P1492678333712106640
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A095834.P1492678333712106640

namespace A095834

/-- `(A004736(n+1)-1)*∑[char[∑[n]]]` -/
def P1492678333712106640.Spec : Prop :=
  ∀ n, P1492678333712106640.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P8077788667891973487

`(comp[C(n, 2)-1]-n)*sqrt(A095831(n+1))`
-/

namespace A095834.P8077788667891973487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℝ) * Real.sqrt (A095831 (n + 1) : ℝ)

end

end A095834.P8077788667891973487

namespace A095834

/-- `(comp[C(n, 2)-1]-n)*sqrt(A095831(n+1))` -/
def P8077788667891973487.Spec : Prop :=
  ∀ n, P8077788667891973487.a n = (A095834 (n + 1) : ℝ)

end A095834

/-! ## A095834.P18191639619244501739

`(C(comp[∑[n]]-n, 2)-(n+1))*A002024(n+1)`
-/

namespace A095834.P18191639619244501739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A002024 (n + 1)

end

end A095834.P18191639619244501739

namespace A095834

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A002024(n+1)` -/
def P18191639619244501739.Spec : Prop :=
  ∀ n, P18191639619244501739.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P12641069903372448743

`A091435(n)+A025581(n)`
-/

namespace A095834.P12641069903372448743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A025581 n

end

end A095834.P12641069903372448743

namespace A095834

/-- `A091435(n)+A025581(n)` -/
def P12641069903372448743.Spec : Prop :=
  ∀ n, P12641069903372448743.a n = A095834 (n + 1)

theorem P12641069903372448743.correct : P12641069903372448743.Spec := by
  intro n
  simp only [A095834, Nat.add_sub_cancel, A095834.P12641069903372448743.a, A095834.P817103610530576889.a, A025581, A025581.P16112744757063613497.a, A091435, A091435.P4633070448187892032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095834

/-! ## A095834.P17520653328100313233

`A104587(n)-A271668(n)`
-/

namespace A095834.P17520653328100313233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - A271668 n

end

end A095834.P17520653328100313233

namespace A095834

/-- `A104587(n)-A271668(n)` -/
def P17520653328100313233.Spec : Prop :=
  ∀ n, P17520653328100313233.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P13736306989465943188

`A095832(n+1)+A004247(n)`
-/

namespace A095834.P13736306989465943188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + A004247 n

end

end A095834.P13736306989465943188

namespace A095834

/-- `A095832(n+1)+A004247(n)` -/
def P13736306989465943188.Spec : Prop :=
  ∀ n, P13736306989465943188.a n = A095834 (n + 1)

theorem P13736306989465943188.correct : P13736306989465943188.Spec := by
  intro n
  simp only [A095834, Nat.add_sub_cancel, A095834.P13736306989465943188.a, A095834.P817103610530576889.a, A004247, A004247.P2751605162508615148.a, A095832, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095834

/-! ## A095834.P13165578711455044373

`A185877(n+1)-A077028(n)`
-/

namespace A095834.P13165578711455044373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185877 (n + 1) - A077028 n

end

end A095834.P13165578711455044373

namespace A095834

/-- `A185877(n+1)-A077028(n)` -/
def P13165578711455044373.Spec : Prop :=
  ∀ n, P13165578711455044373.a n = A095834 (n + 1)

theorem P13165578711455044373.correct : P13165578711455044373.Spec := by
  intro n
  simp only [A095834, Nat.add_sub_cancel, A095834.P13165578711455044373.a, A095834.P817103610530576889.a, A077028, A077028.P18404356772921913843.a, A185877, A185877.P15326369741140922360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095834

/-! ## A095834.P4811799500211422639

`log2(A130321(n))*∑[A010054(n)]`
-/

namespace A095834.P4811799500211422639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A095834.P4811799500211422639

namespace A095834

/-- `log2(A130321(n))*∑[A010054(n)]` -/
def P4811799500211422639.Spec : Prop :=
  ∀ n, P4811799500211422639.a n = (A095834 (n + 1) : ℝ)

end A095834

/-! ## A095834.P18057073135279571980

`log2(A130321(n))*A002024(n+1)`
-/

namespace A095834.P18057073135279571980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) * (A002024 (n + 1) : ℝ)

end

end A095834.P18057073135279571980

namespace A095834

/-- `log2(A130321(n))*A002024(n+1)` -/
def P18057073135279571980.Spec : Prop :=
  ∀ n, P18057073135279571980.a n = (A095834 (n + 1) : ℝ)

end A095834

/-! ## A095834.P11057879507073626580

`(A003056(n)+1)*log2(A130321(n))`
-/

namespace A095834.P11057879507073626580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1 : ℝ) * Real.logb 2 (A130321 n : ℝ)

end

end A095834.P11057879507073626580

namespace A095834

/-- `(A003056(n)+1)*log2(A130321(n))` -/
def P11057879507073626580.Spec : Prop :=
  ∀ n, P11057879507073626580.a n = (A095834 (n + 1) : ℝ)

end A095834

/-! ## A095834.P13877174304081447174

`A095831(n+1)+A094053(n+1)`
-/

namespace A095834.P13877174304081447174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A094053 (n + 1)

end

end A095834.P13877174304081447174

namespace A095834

/-- `A095831(n+1)+A094053(n+1)` -/
def P13877174304081447174.Spec : Prop :=
  ∀ n, P13877174304081447174.a n = A095834 (n + 1)

theorem P13877174304081447174.correct : P13877174304081447174.Spec := by
  intro n
  simp only [A095834, Nat.add_sub_cancel, A095834.P13877174304081447174.a, A095834.P817103610530576889.a, A094053, A094053.P7632435431613033853.a, A095831, A095831.P8959828256737551881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095834

/-! ## A095834.P4097156416252295382

`A004736(n+1)+A091435(n)-1`
-/

namespace A095834.P4097156416252295382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A091435 n - 1)

end

end A095834.P4097156416252295382

namespace A095834

/-- `A004736(n+1)+A091435(n)-1` -/
def P4097156416252295382.Spec : Prop :=
  ∀ n, P4097156416252295382.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P2174975839668668510

`A095833(n+1)-A002024(n+1)`
-/

namespace A095834.P2174975839668668510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - A002024 (n + 1)

end

end A095834.P2174975839668668510

namespace A095834

/-- `A095833(n+1)-A002024(n+1)` -/
def P2174975839668668510.Spec : Prop :=
  ∀ n, P2174975839668668510.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P5545983702242626974

`A095833(n+1)-(A003056(n)+1)`
-/

namespace A095834.P5545983702242626974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - (A003056 n + 1)

end

end A095834.P5545983702242626974

namespace A095834

/-- `A095833(n+1)-(A003056(n)+1)` -/
def P5545983702242626974.Spec : Prop :=
  ∀ n, P5545983702242626974.a n = A095834 (n + 1)

end A095834

/-! ## A095834.P4540987189931817692

`A128140(n+1)-A002260(n+1)`
-/

namespace A095834.P4540987189931817692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) - A002260 (n + 1)

end

end A095834.P4540987189931817692

namespace A095834

/-- `A128140(n+1)-A002260(n+1)` -/
def P4540987189931817692.Spec : Prop :=
  ∀ n, P4540987189931817692.a n = A095834 (n + 1)

end A095834

/-!
# A095835: Triangle read by rows: T(n,k) = n^((n-k)^2), n>=1, 1<=k<=n.

The programs for A095835, the canonical program `A095835.P13890964720586805063` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095835 has offset 1).

The definition of A095835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095835.P13890964720586805063

`(row(n)+1)^(row(n)+1-(col(n)+1))²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095835

/-- `(row(n)+1)^(row(n)+1-(col(n)+1))²` -/
def P13890964720586805063.Spec : Prop :=
  ∀ n, P13890964720586805063.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P4605807872444672429

`(row(n)+1)^(row(n)-col(n))²`
-/

namespace A095835.P4605807872444672429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 : ℤ)

end

end A095835.P4605807872444672429

namespace A095835

/-- `(row(n)+1)^(row(n)-col(n))²` -/
def P4605807872444672429.Spec : Prop :=
  ∀ n, P4605807872444672429.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P14650431778350973791

`(row(n)+1)^(row(n)-col(n))^2`
-/

namespace A095835.P14650431778350973791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 : ℤ)

end

end A095835.P14650431778350973791

namespace A095835

/-- `(row(n)+1)^(row(n)-col(n))^2` -/
def P14650431778350973791.Spec : Prop :=
  ∀ n, P14650431778350973791.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P11696063105377720487

`∑[char[∑[n]]]^A025581(n)²`
-/

namespace A095835.P11696063105377720487
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095835.P11696063105377720487

namespace A095835

/-- `∑[char[∑[n]]]^A025581(n)²` -/
def P11696063105377720487.Spec : Prop :=
  ∀ n, P11696063105377720487.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P6886124755877605825

`∑[char[∑[n]]]^A025669(n+1)²`
-/

namespace A095835.P6886124755877605825
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A025669 (n + 1) ^ 2 : ℤ)

end

end A095835.P6886124755877605825

namespace A095835

/-- `∑[char[∑[n]]]^A025669(n+1)²` -/
def P6886124755877605825.Spec : Prop :=
  ∀ n, P6886124755877605825.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P521277516578737773

`∑[char[∑[n]]]^((A099375(n)-1)/2)²`
-/

namespace A095835.P521277516578737773
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (((A099375 n - 1 : ℚ) / 2) ^ 2 : ℝ)

end

end A095835.P521277516578737773

namespace A095835

/-- `∑[char[∑[n]]]^((A099375(n)-1)/2)²` -/
def P521277516578737773.Spec : Prop :=
  ∀ n, P521277516578737773.a n = (A095835 (n + 1) : ℝ)

end A095835

/-! ## A095835.P6614235807571416229

`A002024(n+1)^(C(comp[∑[n]]-n, 2)-(n+1))²`
-/

namespace A095835.P6614235807571416229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2 : ℤ)

end

end A095835.P6614235807571416229

namespace A095835

/-- `A002024(n+1)^(C(comp[∑[n]]-n, 2)-(n+1))²` -/
def P6614235807571416229.Spec : Prop :=
  ∀ n, P6614235807571416229.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P3991431666123554548

`A183110(n+1)^(C(comp[∑[n]]-n, 2)-(n+1))²`
-/

namespace A095835.P3991431666123554548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183110 (n + 1) : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2 : ℤ)

end

end A095835.P3991431666123554548

namespace A095835

/-- `A183110(n+1)^(C(comp[∑[n]]-n, 2)-(n+1))²` -/
def P3991431666123554548.Spec : Prop :=
  ∀ n, P3991431666123554548.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P10856994152163695433

`A095888(n+1)^A025581(n)`
-/

namespace A095835.P10856994152163695433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095888 (n + 1) : ℚ) ^ (A025581 n : ℤ)

end

end A095835.P10856994152163695433

namespace A095835

/-- `A095888(n+1)^A025581(n)` -/
def P10856994152163695433.Spec : Prop :=
  ∀ n, P10856994152163695433.a n = (A095835 (n + 1) : ℚ)

end A095835

/-! ## A095835.P16565139716765052789

`∑[A010054(n)]^A095831(n+1)`
-/

namespace A095835.P16565139716765052789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A095831 (n + 1) : ℤ)

end

end A095835.P16565139716765052789

namespace A095835

/-- `∑[A010054(n)]^A095831(n+1)` -/
def P16565139716765052789.Spec : Prop :=
  ∀ n, P16565139716765052789.a n = (A095835 (n + 1) : ℚ)

end A095835

/-!
# A095836: Triangle read by rows: T(n,k) = k^((n-k)^2), n>=1, 1<=k<=n.

The programs for A095836, the canonical program `A095836.P3357459531401874323` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095836 has offset 1).

The definition of A095836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095836.P3357459531401874323

`(col(n)+1)^(row(n)+1-(col(n)+1))²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095836

/-- `(col(n)+1)^(row(n)+1-(col(n)+1))²` -/
def P3357459531401874323.Spec : Prop :=
  ∀ n, P3357459531401874323.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P2259022357004267014

`(col(n)+1)^(row(n)-col(n))²`
-/

namespace A095836.P2259022357004267014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 : ℤ)

end

end A095836.P2259022357004267014

namespace A095836

/-- `(col(n)+1)^(row(n)-col(n))²` -/
def P2259022357004267014.Spec : Prop :=
  ∀ n, P2259022357004267014.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P1480684114269725387

`(col(n)+1)^(row(n)-col(n))^2`
-/

namespace A095836.P1480684114269725387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 : ℤ)

end

end A095836.P1480684114269725387

namespace A095836

/-- `(col(n)+1)^(row(n)-col(n))^2` -/
def P1480684114269725387.Spec : Prop :=
  ∀ n, P1480684114269725387.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P13132800080207829734

`A009998(n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A095836.P13132800080207829734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A095836.P13132800080207829734

namespace A095836

/-- `A009998(n)^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P13132800080207829734.Spec : Prop :=
  ∀ n, P13132800080207829734.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P9134185597257329404

`A193738(n)^(C(comp[∑[n]]-n, 2)-(n+1))²`
-/

namespace A095836.P9134185597257329404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193738 n : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2 : ℤ)

end

end A095836.P9134185597257329404

namespace A095836

/-- `A193738(n)^(C(comp[∑[n]]-n, 2)-(n+1))²` -/
def P9134185597257329404.Spec : Prop :=
  ∀ n, P9134185597257329404.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P3211677876222465514

`A002260(n+1)^(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A095836.P3211677876222465514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 : ℤ)

end

end A095836.P3211677876222465514

namespace A095836

/-- `A002260(n+1)^(n+1-C(comp[∑[n]]-n, 2))²` -/
def P3211677876222465514.Spec : Prop :=
  ∀ n, P3211677876222465514.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P5475759181821738374

`A095850(A122797(n+1))`
-/

namespace A095836.P5475759181821738374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095850 (A122797 (n + 1)).toNat

end

end A095836.P5475759181821738374

namespace A095836

/-- `A095850(A122797(n+1))` -/
def P5475759181821738374.Spec : Prop :=
  ∀ n, P5475759181821738374.a n = A095836 (n + 1)

end A095836

/-! ## A095836.P10432129486737256992

`A009998(n)^A025581(n)`
-/

namespace A095836.P10432129486737256992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℚ) ^ (A025581 n : ℤ)

end

end A095836.P10432129486737256992

namespace A095836

/-- `A009998(n)^A025581(n)` -/
def P10432129486737256992.Spec : Prop :=
  ∀ n, P10432129486737256992.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P17424992508506440014

`A128227(n)^A025581(n)²`
-/

namespace A095836.P17424992508506440014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128227 n : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095836.P17424992508506440014

namespace A095836

/-- `A128227(n)^A025581(n)²` -/
def P17424992508506440014.Spec : Prop :=
  ∀ n, P17424992508506440014.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P10451065047465428999

`A193738(n)^A025581(n)²`
-/

namespace A095836.P10451065047465428999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193738 n : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095836.P10451065047465428999

namespace A095836

/-- `A193738(n)^A025581(n)²` -/
def P10451065047465428999.Spec : Prop :=
  ∀ n, P10451065047465428999.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P12886723928089942762

`A009998(n)^log2(A130321(n))`
-/

namespace A095836.P12886723928089942762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A009998 n : ℝ) ^ (Real.logb 2 (A130321 n : ℝ))

end

end A095836.P12886723928089942762

namespace A095836

/-- `A009998(n)^log2(A130321(n))` -/
def P12886723928089942762.Spec : Prop :=
  ∀ n, P12886723928089942762.a n = (A095836 (n + 1) : ℝ)

end A095836

/-! ## A095836.P11081922177303395576

`A002260(n+1)^A025581(n)²`
-/

namespace A095836.P11081922177303395576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095836.P11081922177303395576

namespace A095836

/-- `A002260(n+1)^A025581(n)²` -/
def P11081922177303395576.Spec : Prop :=
  ∀ n, P11081922177303395576.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P16670343775284983039

`A002260(n+1)^log2(A130321(n))²`
-/

namespace A095836.P16670343775284983039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℝ) ^ (Real.logb 2 (A130321 n : ℝ) ^ 2)

end

end A095836.P16670343775284983039

namespace A095836

/-- `A002260(n+1)^log2(A130321(n))²` -/
def P16670343775284983039.Spec : Prop :=
  ∀ n, P16670343775284983039.a n = (A095836 (n + 1) : ℝ)

end A095836

/-! ## A095836.P1961269501628951760

`A002260(n+1)^(A004736(n+1)-1)²`
-/

namespace A095836.P1961269501628951760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ ((A004736 (n + 1) - 1) ^ 2 : ℤ)

end

end A095836.P1961269501628951760

namespace A095836

/-- `A002260(n+1)^(A004736(n+1)-1)²` -/
def P1961269501628951760.Spec : Prop :=
  ∀ n, P1961269501628951760.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P13879830304807476099

`A002260(n+1)^A057554(2*(n+1))²`
-/

namespace A095836.P13879830304807476099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A057554 (2 * (n + 1)) ^ 2 : ℤ)

end

end A095836.P13879830304807476099

namespace A095836

/-- `A002260(n+1)^A057554(2*(n+1))²` -/
def P13879830304807476099.Spec : Prop :=
  ∀ n, P13879830304807476099.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P18296175277687893014

`A002260(n+1)^(A057555(2*(n+1))-1)²`
-/

namespace A095836.P18296175277687893014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ ((A057555 (2 * (n + 1)) - 1) ^ 2 : ℤ)

end

end A095836.P18296175277687893014

namespace A095836

/-- `A002260(n+1)^(A057555(2*(n+1))-1)²` -/
def P18296175277687893014.Spec : Prop :=
  ∀ n, P18296175277687893014.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P11224257228441792304

`A002260(n+1)^(A057554(n+2+n)%63)²`
-/

namespace A095836.P11224257228441792304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (Int.tmod (A057554 (n + 2 + n)) 63 ^ 2 : ℤ)

end

end A095836.P11224257228441792304

namespace A095836

/-- `A002260(n+1)^(A057554(n+2+n)%63)²` -/
def P11224257228441792304.Spec : Prop :=
  ∀ n, P11224257228441792304.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P11848332890678261112

`A002260(n+1)^abs(A057555(n+2+n)-1)²`
-/

namespace A095836.P11848332890678261112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (|A057555 (n + 2 + n) - 1| ^ 2 : ℤ)

end

end A095836.P11848332890678261112

namespace A095836

/-- `A002260(n+1)^abs(A057555(n+2+n)-1)²` -/
def P11848332890678261112.Spec : Prop :=
  ∀ n, P11848332890678261112.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P15820580392203049720

`A000005(A059268(n))^A025581(n)²`
-/

namespace A095836.P15820580392203049720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A059268 n).toNat : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095836.P15820580392203049720

namespace A095836

/-- `A000005(A059268(n))^A025581(n)²` -/
def P15820580392203049720.Spec : Prop :=
  ∀ n, P15820580392203049720.a n = (A095836 (n + 1) : ℚ)

end A095836

/-! ## A095836.P9295398732497778449

`A002260(n+1)^(n-A000096(A003056(n)))²`
-/

namespace A095836.P9295398732497778449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (((n : ℤ) - A000096 (A003056 n).toNat) ^ 2 : ℤ)

end

end A095836.P9295398732497778449

namespace A095836

/-- `A002260(n+1)^(n-A000096(A003056(n)))²` -/
def P9295398732497778449.Spec : Prop :=
  ∀ n, P9295398732497778449.a n = (A095836 (n + 1) : ℚ)

end A095836

/-!
# A095837: Triangle read by rows: T(n,k) = (n-k+1)^((n-k)^2), n>=1, 1<=k<=n.

The programs for A095837, the canonical program `A095837.P4761018068858107288` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095837 has offset 1).

The definition of A095837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095837.P4761018068858107288

`(row(n)-col(n)+1)^(row(n)-col(n))²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095837

/-- `(row(n)-col(n)+1)^(row(n)-col(n))²` -/
def P4761018068858107288.Spec : Prop :=
  ∀ n, P4761018068858107288.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P4237720147562579620

`(row(n)+1-(col(n)+1)+1)^(row(n)+1-(col(n)+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095837.P4237720147562579620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℚ) ^ (((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ)) ^ 2 : ℤ)

end

end A095837.P4237720147562579620

namespace A095837

/-- `(row(n)+1-(col(n)+1)+1)^(row(n)+1-(col(n)+1))²` -/
def P4237720147562579620.Spec : Prop :=
  ∀ n, P4237720147562579620.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P304232949747922597

`(C(comp[∑[n]]-n, 2)-n)^A025581(n)²`
-/

namespace A095837.P304232949747922597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095837.P304232949747922597

namespace A095837

/-- `(C(comp[∑[n]]-n, 2)-n)^A025581(n)²` -/
def P304232949747922597.Spec : Prop :=
  ∀ n, P304232949747922597.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P2203692065114514783

`A004736(n+1)^(n+1-C(comp[∑[n]]-n, 2))²`
-/

namespace A095837.P2203692065114514783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 : ℤ)

end

end A095837.P2203692065114514783

namespace A095837

/-- `A004736(n+1)^(n+1-C(comp[∑[n]]-n, 2))²` -/
def P2203692065114514783.Spec : Prop :=
  ∀ n, P2203692065114514783.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P6409280664024106477

`A004736(n+1)^A025581(n)²`
-/

namespace A095837.P6409280664024106477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095837.P6409280664024106477

namespace A095837

/-- `A004736(n+1)^A025581(n)²` -/
def P6409280664024106477.Spec : Prop :=
  ∀ n, P6409280664024106477.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P13119784936826907752

`A193592(comp[∑[n]])^A025581(n)²`
-/

namespace A095837.P13119784936826907752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095837.P13119784936826907752

namespace A095837

/-- `A193592(comp[∑[n]])^A025581(n)²` -/
def P13119784936826907752.Spec : Prop :=
  ∀ n, P13119784936826907752.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P14910496189725054923

`A004736(n+1)^A095831(n+1)`
-/

namespace A095837.P14910496189725054923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A095831 (n + 1) : ℤ)

end

end A095837.P14910496189725054923

namespace A095837

/-- `A004736(n+1)^A095831(n+1)` -/
def P14910496189725054923.Spec : Prop :=
  ∀ n, P14910496189725054923.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P11556383554448541840

`sqrt(A055461(n+1))^A025581(n)²`
-/

namespace A095837.P11556383554448541840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ) ^ (A025581 n ^ 2 : ℤ)

end

end A095837.P11556383554448541840

namespace A095837

/-- `sqrt(A055461(n+1))^A025581(n)²` -/
def P11556383554448541840.Spec : Prop :=
  ∀ n, P11556383554448541840.a n = (A095837 (n + 1) : ℝ)

end A095837

/-! ## A095837.P7659027780960532145

`A004736(n+1)^A025660(n+1)²`
-/

namespace A095837.P7659027780960532145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A025660 (n + 1) ^ 2 : ℤ)

end

end A095837.P7659027780960532145

namespace A095837

/-- `A004736(n+1)^A025660(n+1)²` -/
def P7659027780960532145.Spec : Prop :=
  ∀ n, P7659027780960532145.a n = (A095837 (n + 1) : ℚ)

end A095837

/-! ## A095837.P15698032871015684697

`A000005(A130321(n))^A025581(n)²`
-/

namespace A095837.P15698032871015684697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A130321 n).toNat : ℚ) ^ (A025581 n ^ 2 : ℤ)

end

end A095837.P15698032871015684697

namespace A095837

/-- `A000005(A130321(n))^A025581(n)²` -/
def P15698032871015684697.Spec : Prop :=
  ∀ n, P15698032871015684697.a n = (A095837 (n + 1) : ℚ)

end A095837

/-!
# A095838: Triangle read by rows: T(n,k) = n^((n-k+1)^2), n>=1, 1<=k<=n.

The programs for A095838, there is no canonical definition to state claims against.
-/

/-! ## A095838.P8809106190279311609

`∑[char[∑[n]]]^A055461(n+1)`
-/

namespace A095838.P8809106190279311609
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A055461 (n + 1) : ℤ)

end

end A095838.P8809106190279311609

/-! ## A095838.P2004283013735944507

`∑[char[∑[n]]]^A004736(n+1)²`
-/

namespace A095838.P2004283013735944507
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A004736 (n + 1) ^ 2 : ℤ)

end

end A095838.P2004283013735944507

/-! ## A095838.P14286396918406708960

`A002024(n+1)^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095838.P14286396918406708960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095838.P14286396918406708960

/-! ## A095838.P12461357495874360231

`(A003056(n)+1)^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095838.P12461357495874360231
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1 : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095838.P12461357495874360231

/-! ## A095838.P11960109897816155014

`A095860(A038722(n+1))`
-/

namespace A095838.P11960109897816155014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095860 (A038722 (n + 1)).toNat

end

end A095838.P11960109897816155014

/-!
# A095839: a(n) = ((2*n)!/(n!*2^(n-1)))*Integral_{x=1/2..1} (sqrt(1-x^2)/x)^(2*n) dx.

The programs for A095839, there is no canonical definition to state claims against.
-/

/-! ## A095839.P13811211195456077161

`A000265(lcm(A110520(n), A110728(n)))`
-/

namespace A095839.P13811211195456077161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm (A110520 n) (A110728 n))

end

end A095839.P13811211195456077161

/-!
# A095840: Number of ways to write the n-th prime power as sum of two prime powers.

The programs for A095840, there is no canonical definition to state claims against.
-/

/-! ## A095840.P10419491407484670627

`A071330(A000961(n+1))`
-/

namespace A095840.P10419491407484670627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A000961 (n + 1)).toNat

end

end A095840.P10419491407484670627

/-! ## A095840.P7688006649399410675

`A071330(A181062(n+1)+1)`
-/

namespace A095840.P7688006649399410675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (A181062 (n + 1) + 1).toNat

end

end A095840.P7688006649399410675

/-! ## A095840.P13326580952061422896

`A071330(A138929(n+1)/2)`
-/

namespace A095840.P13326580952061422896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat

end

end A095840.P13326580952061422896

/-! ## A095840.P7476485839809121433

`A071330(eq[1, A010055(n+1)]+1)`
-/

namespace A095840.P7476485839809121433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095840.P7476485839809121433

/-! ## A095840.P5270089069552449538

`A071330(record[gcd(n, n+1-A010055(n+1))]+1)`
-/

namespace A095840.P5270089069552449538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) ((n + 1 : ℤ) - A010055 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A095840.P5270089069552449538

/-! ## A095840.P615829980884566853

`A071330(eq[A001221(n+1)², A001221(n+1)]+1)`
-/

namespace A095840.P615829980884566853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071330 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A095840.P615829980884566853

/-!
# A095841: Prime powers having exactly one partition into two prime powers.

The programs for A095841, there is no canonical definition to state claims against.
-/

/-! ## A095841.P4180223325298364150

`∩[A074583(n+1), A208247(n+1)]`
-/

namespace A095841.P4180223325298364150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P4180223325298364150

/-! ## A095841.P11154887298242502079

`∩[A115975(n+1), A208247(n+1)]`
-/

namespace A095841.P11154887298242502079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P11154887298242502079

/-! ## A095841.P10961545574198716333

`∩[A208247(n+1), A334393(n+1)]`
-/

namespace A095841.P10961545574198716333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P10961545574198716333

/-! ## A095841.P16395798733960479350

`∩[A208247(n+1), A343983(n+1)]`
-/

namespace A095841.P16395798733960479350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P16395798733960479350

/-! ## A095841.P12029541841179836511

`∩[A128603(n+1), A208247(n+1)]`
-/

namespace A095841.P12029541841179836511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P12029541841179836511

/-! ## A095841.P2716906453650782685

`∩[A208247(n+1), A283262(n+1)]`
-/

namespace A095841.P2716906453650782685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P2716906453650782685

/-! ## A095841.P1381371365565283433

`∩[A208247(n+1), A235868(n+1)]`
-/

namespace A095841.P1381371365565283433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P1381371365565283433

/-! ## A095841.P5709001907729312332

`∩[A096165(n+1), A208247(n+1)]`
-/

namespace A095841.P5709001907729312332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P5709001907729312332

/-! ## A095841.P1505714677473085675

`∩[A164336(n+1), A208247(n+1)]`
-/

namespace A095841.P1505714677473085675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P1505714677473085675

/-! ## A095841.P16770607010649345655

`A246655(eq[1, A095840(n+1)])`
-/

namespace A095841.P16770607010649345655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095841.P16770607010649345655

/-! ## A095841.P17580577980491812394

`A000961(eq[1, A095840(n+1)]+1)`
-/

namespace A095841.P17580577980491812394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095841.P17580577980491812394

/-! ## A095841.P9107632802271215204

`∩[A000961(n+1), A208247(n+1)]`
-/

namespace A095841.P9107632802271215204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P9107632802271215204

/-! ## A095841.P3022369780657035828

`∩[A208247(n+1), A246655(n+1)]`
-/

namespace A095841.P3022369780657035828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P3022369780657035828

/-! ## A095841.P13181827335979961312

`∩[A208247(n+1), A225657(n+1)]`
-/

namespace A095841.P13181827335979961312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P13181827335979961312

/-! ## A095841.P13108862816671425021

`∩[A141807(n+1), A208247(n+1)]`
-/

namespace A095841.P13108862816671425021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P13108862816671425021

/-! ## A095841.P1631837336445008500

`∩[A081061(n+1), A208247(n+1)]`
-/

namespace A095841.P1631837336445008500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095841.P1631837336445008500

/-! ## A095841.P7218995319614670751

`filter[A208247(n+1), A069513(#)]`
-/

namespace A095841.P7218995319614670751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A095841.P7218995319614670751

/-! ## A095841.P13328946219046241869

`filter[A208247(n+1), A354923(#)]`
-/

namespace A095841.P13328946219046241869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A095841.P13328946219046241869

/-! ## A095841.P2094301939825133829

`filter[A208247(n+1), A354924(#)]`
-/

namespace A095841.P2094301939825133829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A095841.P2094301939825133829

/-! ## A095841.P708658387398988751

`filter[A208247(n+1), A211487(#)]`
-/

namespace A095841.P708658387398988751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A095841.P708658387398988751

/-!
# A095842: Prime powers having no partition into two prime powers.

The programs for A095842, there is no canonical definition to state claims against.
-/

/-! ## A095842.P16615682493610006399

`record[A006530(A071331(n+1))]`
-/

namespace A095842.P16615682493610006399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071331 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095842.P16615682493610006399

/-! ## A095842.P8611927636585966434

`A115231(n+2)-A000038(n)`
-/

namespace A095842.P8611927636585966434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115231 (n + 2) - A000038 n

end

end A095842.P8611927636585966434

/-! ## A095842.P15789701335504112919

`filter[A071331(n+1), A354923(#)]`
-/

namespace A095842.P15789701335504112919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A095842.P15789701335504112919

/-! ## A095842.P9630345295335807684

`∩[A071331(n+1), A061345(n)]`
-/

namespace A095842.P9630345295335807684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P9630345295335807684

/-! ## A095842.P9368468820878744614

`A115231(n+2)-2*A000007(n)`
-/

namespace A095842.P9368468820878744614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115231 (n + 2) - 2 * A000007 n

end

end A095842.P9368468820878744614

/-! ## A095842.P8587490043034928108

`∩[A000961(n+1), A071331(n+1)]`
-/

namespace A095842.P8587490043034928108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P8587490043034928108

/-! ## A095842.P1052398024039755847

`∩[A006005(n+1), A071331(n+1)]`
-/

namespace A095842.P1052398024039755847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P1052398024039755847

/-! ## A095842.P4445506411917765708

`∩[A008578(n+1), A071331(n+1)]`
-/

namespace A095842.P4445506411917765708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P4445506411917765708

/-! ## A095842.P14841712965931431593

`∩[A033946(n+1), A071331(n+1)]`
-/

namespace A095842.P14841712965931431593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P14841712965931431593

/-! ## A095842.P13871207701228141303

`∩[A046022(n+1), A071331(n+1)]`
-/

namespace A095842.P13871207701228141303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P13871207701228141303

/-! ## A095842.P10402844673296571456

`∩[A055977(n+1), A071331(n+1)]`
-/

namespace A095842.P10402844673296571456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P10402844673296571456

/-! ## A095842.P11072161364804175485

`∩[A060634(n+1), A071331(n+1)]`
-/

namespace A095842.P11072161364804175485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P11072161364804175485

/-! ## A095842.P15220450510991433044

`∩[A062090(n+1), A071331(n+1)]`
-/

namespace A095842.P15220450510991433044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P15220450510991433044

/-! ## A095842.P10071677937587886243

`∩[A062972(n+1), A071331(n+1)]`
-/

namespace A095842.P10071677937587886243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P10071677937587886243

/-! ## A095842.P827714373180546490

`∩[A066050(n+1), A071331(n+1)]`
-/

namespace A095842.P827714373180546490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P827714373180546490

/-! ## A095842.P11683141400925764569

`∩[A067126(n+1), A071331(n+1)]`
-/

namespace A095842.P11683141400925764569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P11683141400925764569

/-! ## A095842.P10160970540084389656

`∩[A067133(n+1), A071331(n+1)]`
-/

namespace A095842.P10160970540084389656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P10160970540084389656

/-! ## A095842.P11611806414712015697

`∩[A071331(n+1), A072303(n+1)]`
-/

namespace A095842.P11611806414712015697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P11611806414712015697

/-! ## A095842.P13471585990088618891

`∩[A071331(n+1), A074583(n+1)]`
-/

namespace A095842.P13471585990088618891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P13471585990088618891

/-! ## A095842.P10146472971937012627

`∩[A071331(n+1), A081061(n+1)]`
-/

namespace A095842.P10146472971937012627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095842.P10146472971937012627

/-!
# A095843: Triangle read by rows: T(n,k) = (n-k)^((n-k+1)^2), n>=1, 1<=k<=n.

The programs for A095843, the canonical program `A095843.P418742408469590514` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095843 has offset 1).

The definition of A095843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095843.P418742408469590514

`(row(n)-col(n))^(row(n)-col(n)+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095843

/-- `(row(n)-col(n))^(row(n)-col(n)+1)²` -/
def P418742408469590514.Spec : Prop :=
  ∀ n, P418742408469590514.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P3686699160022606629

`(row(n)+1-(col(n)+1))^(row(n)+1-(col(n)+1)+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095843.P3686699160022606629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) ^ (((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1) ^ 2 : ℤ)

end

end A095843.P3686699160022606629

namespace A095843

/-- `(row(n)+1-(col(n)+1))^(row(n)+1-(col(n)+1)+1)²` -/
def P3686699160022606629.Spec : Prop :=
  ∀ n, P3686699160022606629.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P6272767629008033966

`A025581(n)^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095843.P6272767629008033966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095843.P6272767629008033966

namespace A095843

/-- `A025581(n)^(C(comp[∑[n]]-n, 2)-n)²` -/
def P6272767629008033966.Spec : Prop :=
  ∀ n, P6272767629008033966.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P8339873318114888720

`(C(comp[∑[n]]-n, 2)-(n+1))^A004736(n+1)²`
-/

namespace A095843.P8339873318114888720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A004736 (n + 1) ^ 2 : ℤ)

end

end A095843.P8339873318114888720

namespace A095843

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A004736(n+1)²` -/
def P8339873318114888720.Spec : Prop :=
  ∀ n, P8339873318114888720.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P16002121801738961997

`(C(comp[∑[n]]-n, 2)-(n+1))^A134231(n+1)²`
-/

namespace A095843.P16002121801738961997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A134231 (n + 1) ^ 2 : ℤ)

end

end A095843.P16002121801738961997

namespace A095843

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A134231(n+1)²` -/
def P16002121801738961997.Spec : Prop :=
  ∀ n, P16002121801738961997.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P4799083771175965563

`A025581(n)^A134224(n)²`
-/

namespace A095843.P4799083771175965563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A134224 n ^ 2 : ℤ)

end

end A095843.P4799083771175965563

namespace A095843

/-- `A025581(n)^A134224(n)²` -/
def P4799083771175965563.Spec : Prop :=
  ∀ n, P4799083771175965563.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P5178578040122438085

`A025581(n)^A055461(n+1)`
-/

namespace A095843.P5178578040122438085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A055461 (n + 1) : ℤ)

end

end A095843.P5178578040122438085

namespace A095843

/-- `A025581(n)^A055461(n+1)` -/
def P5178578040122438085.Spec : Prop :=
  ∀ n, P5178578040122438085.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P1705981536419482029

`A025581(n)^A004736(n+1)²`
-/

namespace A095843.P1705981536419482029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A004736 (n + 1) ^ 2 : ℤ)

end

end A095843.P1705981536419482029

namespace A095843

/-- `A025581(n)^A004736(n+1)²` -/
def P1705981536419482029.Spec : Prop :=
  ∀ n, P1705981536419482029.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P13026968256666502131

`A025660(n+1)^A004736(n+1)²`
-/

namespace A095843.P13026968256666502131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025660 (n + 1) : ℚ) ^ (A004736 (n + 1) ^ 2 : ℤ)

end

end A095843.P13026968256666502131

namespace A095843

/-- `A025660(n+1)^A004736(n+1)²` -/
def P13026968256666502131.Spec : Prop :=
  ∀ n, P13026968256666502131.a n = (A095843 (n + 1) : ℚ)

end A095843

/-! ## A095843.P1137813009955921368

`A057554(2*(n+1))^A004736(n+1)²`
-/

namespace A095843.P1137813009955921368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) : ℚ) ^ (A004736 (n + 1) ^ 2 : ℤ)

end

end A095843.P1137813009955921368

namespace A095843

/-- `A057554(2*(n+1))^A004736(n+1)²` -/
def P1137813009955921368.Spec : Prop :=
  ∀ n, P1137813009955921368.a n = (A095843 (n + 1) : ℚ)

end A095843

/-!
# A095845: Denominator of the integral of the n-th power of the Cantor function.

The programs for A095845, there is no canonical definition to state claims against.
-/

/-! ## A095845.P9814004144762077033

`∏{p}[C(a(n-1)², 3), #]` with `a(0)=1, a(1)=8, a(2)=10, a(3)=5`
-/

namespace A095845.P9814004144762077033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 10, 5] fun n f1 =>
  Nat.choose (f1 (n - 1) ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A095845.P9814004144762077033

/-!
# A095846: Expansion of eta(q^2)eta(q^10)^3/(eta(q^5)eta(q)^3) in powers of q.

The programs for A095846, there is no canonical definition to state claims against.
-/

/-! ## A095846.P5080625946146844828

`A210458(2*(n+1))/2`
-/

namespace A095846.P5080625946146844828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210458 (2 * (n + 1)) : ℚ) / 2

end

end A095846.P5080625946146844828

/-! ## A095846.P10278390677488605434

`A228864(2*(n+1))/2`
-/

namespace A095846.P10278390677488605434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228864 (2 * (n + 1)) : ℚ) / 2

end

end A095846.P10278390677488605434

/-! ## A095846.P9623079594014035345

`A138517(n+1)/4`
-/

namespace A095846.P9623079594014035345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138517 (n + 1) : ℚ) / 4

end

end A095846.P9623079594014035345

/-! ## A095846.P6301344757987693750

`A132985(n+1)/5`
-/

namespace A095846.P6301344757987693750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132985 (n + 1) : ℚ) / 5

end

end A095846.P6301344757987693750

/-! ## A095846.P11349475129547795160

`A132985(n+1)-A138517(n+1)`
-/

namespace A095846.P11349475129547795160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132985 (n + 1) - A138517 (n + 1)

end

end A095846.P11349475129547795160

/-! ## A095846.P599009649857644442

`abs(A138519(2*(n+1))/2)`
-/

namespace A095846.P599009649857644442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A138519 (2 * (n + 1)) : ℚ) / 2|

end

end A095846.P599009649857644442

/-! ## A095846.P16128673307467867722

`abs(abs(A138519(Δ[n²]+1)/2-n)-n)`
-/

namespace A095846.P16128673307467867722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(|(A138519 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2 - (n : ℚ)| - (n : ℚ))|

end

end A095846.P16128673307467867722

/-! ## A095846.P8239322461375563160

`abs(A138519(A005408(n)+1))/2`
-/

namespace A095846.P8239322461375563160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A138519 (A005408 n + 1).toNat| : ℚ) / 2

end

end A095846.P8239322461375563160

/-! ## A095846.P4686713360872495330

`gcd(A000038(n), A138519(2*(n+1)))/2`
-/

namespace A095846.P4686713360872495330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A138519 (2 * (n + 1))) : ℚ) / 2

end

end A095846.P4686713360872495330

/-! ## A095846.P11516556105405154620

`A138519(2*n+2)/(A000038(n+1)-2)`
-/

namespace A095846.P11516556105405154620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138519 (2 * n + 2) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A095846.P11516556105405154620

/-! ## A095846.P10856002823032397049

`lcm(A000034(n+1), A138519(2*(n+1)))/2`
-/

namespace A095846.P10856002823032397049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A138519 (2 * (n + 1))) : ℚ) / 2

end

end A095846.P10856002823032397049

/-! ## A095846.P9566491700066824742

`A138519(2*(n+1))/(A033999(2*n+1)-1)`
-/

namespace A095846.P9566491700066824742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138519 (2 * (n + 1)) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A095846.P9566491700066824742

/-! ## A095846.P583327615976221235

`A138519(2*(n+1))/(A005408(2*n)-(4*n+3))`
-/

namespace A095846.P583327615976221235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138519 (2 * (n + 1)) : ℚ) / (A005408 (2 * n) - (4 * n + 3 : ℤ) : ℚ)

end

end A095846.P583327615976221235

/-! ## A095846.P11271683091770932178

`A138519(2*(n+1))/A000034(2*n+1)-A138519(2*(n+1))`
-/

namespace A095846.P11271683091770932178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138519 (2 * (n + 1)) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A138519 (2 * (n + 1)) : ℚ)

end

end A095846.P11271683091770932178

/-! ## A095846.P12010263809953043505

`A138520(2*(n+1))/2`
-/

namespace A095846.P12010263809953043505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138520 (2 * (n + 1)) : ℚ) / 2

end

end A095846.P12010263809953043505

/-! ## A095846.P603803588405305683

`record[A138520(n)/A020639(A003958(n+1))]`
-/

namespace A095846.P603803588405305683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138520 n : ℚ) / (A020639 (A003958 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095846.P603803588405305683

/-! ## A095846.P10448970998354000554

`A095813(5*(n+1))`
-/

namespace A095846.P10448970998354000554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095813 (5 * (n + 1))

end

end A095846.P10448970998354000554

/-! ## A095846.P18332675843486434363

`A138522(5*(n+1))`
-/

namespace A095846.P18332675843486434363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138522 (5 * (n + 1))

end

end A095846.P18332675843486434363

/-!
# A095847: Lucas-Lehmer residues for Mersenne numbers with prime indices.

The programs for A095847, there is no canonical definition to state claims against.
-/

/-! ## A095847.P5571921314612509400

`A317977(p?[comp[n²]])`
-/

namespace A095847.P5571921314612509400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A095847.P5571921314612509400

/-! ## A095847.P5341104263306327368

`A317977(A000040(n+1))`
-/

namespace A095847.P5341104263306327368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (A000040 (n + 1)).toNat

end

end A095847.P5341104263306327368

/-! ## A095847.P3035050870627039741

`A317977(A008578(n+2))`
-/

namespace A095847.P3035050870627039741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (A008578 (n + 2)).toNat

end

end A095847.P3035050870627039741

/-! ## A095847.P4016277283778914752

`A317977(A015919(n+2))`
-/

namespace A095847.P4016277283778914752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (A015919 (n + 2)).toNat

end

end A095847.P4016277283778914752

/-! ## A095847.P7676524897765465330

`A317977(eq[1, A032741(n)])`
-/

namespace A095847.P7676524897765465330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095847.P7676524897765465330

/-! ## A095847.P12041028076192710991

`A317977(eq[1, A115118(n)])`
-/

namespace A095847.P12041028076192710991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095847.P12041028076192710991

/-! ## A095847.P10729925688002164564

`A317977(record[A006530(n+2)])`
-/

namespace A095847.P10729925688002164564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095847.P10729925688002164564

/-! ## A095847.P11258593203687481376

`A317977(record[A014963(n+2)])`
-/

namespace A095847.P11258593203687481376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095847.P11258593203687481376

/-! ## A095847.P15380267062317894718

`A317977(record[A020639(n+2)])`
-/

namespace A095847.P15380267062317894718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095847.P15380267062317894718

/-! ## A095847.P8401949837978036533

`A317977(record[p?[A317943(n+1)]])`
-/

namespace A095847.P8401949837978036533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317943 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095847.P8401949837978036533

/-!
# A095848: Deeply composite numbers: numbers n where sigma_k(n) increases to a record for all sufficiently low (i.e., negative) values of k.

The programs for A095848, there is no canonical definition to state claims against.
-/

/-! ## A095848.P14825626540864581864

`record[A123258(record[A029355(n)])]`
-/

namespace A095848.P14825626540864581864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095848.P14825626540864581864

/-! ## A095848.P1962241792118237266

`record[A123258(A093641(n+1))]`
-/

namespace A095848.P1962241792118237266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A093641 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095848.P1962241792118237266

/-! ## A095848.P2487364585945707616

`record[A123258(A123345(n+1))]`
-/

namespace A095848.P2487364585945707616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A123345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095848.P2487364585945707616

/-! ## A095848.P11693852571479711824

`record[A123258(A331914(n+1))]`
-/

namespace A095848.P11693852571479711824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123258 (A331914 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095848.P11693852571479711824

/-! ## A095848.P7771036211328299683

`record[gcd(A123258(n+1), A325135(n+1))]`
-/

namespace A095848.P7771036211328299683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123258 (n + 1)) (A325135 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095848.P7771036211328299683

/-!
# A095849: Numbers j where sigma_k(j) increases to a record for all real values of k.

The programs for A095849, there is no canonical definition to state claims against.
-/

/-! ## A095849.P10469588528059301917

`∩[A002182(n+1), A095848(n+1)]`
-/

namespace A095849.P10469588528059301917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095849.P10469588528059301917

/-! ## A095849.P10516451390562118044

`∩[A095848(n+1), A166981(n+1)]`
-/

namespace A095849.P10516451390562118044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095849.P10516451390562118044

/-! ## A095849.P3052534854385145012

`∩[A095848(n+1), A181804(n+1)]`
-/

namespace A095849.P3052534854385145012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095849.P3052534854385145012

/-! ## A095849.P17453012302204593166

`∩[A095848(n+1), A135372(n+1)-1]`
-/

namespace A095849.P17453012302204593166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095849.P17453012302204593166

/-! ## A095849.P17487607702476813658

`∩[A095848(n+1), A262501(n)+a(n-1)]` with `a(0)=1`
-/

namespace A095849.P17487607702476813658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A262501 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095849.P17487607702476813658

/-! ## A095849.P8037712410243902975

`∩[A095848(n+1), A301413(n+1)*A319865(n+1)]`
-/

namespace A095849.P8037712410243902975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1) * A319865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095849.P8037712410243902975

/-!
# A095850: Triangle read by rows: T(n,k) = k^((n-k+1)^2), n>=1, 1<=k<=n.

The programs for A095850, the canonical program `A095850.P17772528448722703698` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095850 has offset 1).

The definition of A095850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095850.P17772528448722703698

`(col(n)+1)^(row(n)+1-(col(n)+1)+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095850

/-- `(col(n)+1)^(row(n)+1-(col(n)+1)+1)²` -/
def P17772528448722703698.Spec : Prop :=
  ∀ n, P17772528448722703698.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P15478295572140165386

`(col(n)+1)^(row(n)-col(n)+1)²`
-/

namespace A095850.P15478295572140165386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ 2 : ℤ)

end

end A095850.P15478295572140165386

namespace A095850

/-- `(col(n)+1)^(row(n)-col(n)+1)²` -/
def P15478295572140165386.Spec : Prop :=
  ∀ n, P15478295572140165386.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P14771534173813426109

`(col(n)+1)^((row(n)-col(n)+1)*(row(n)-col(n)+1))`
-/

namespace A095850.P14771534173813426109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) ^ (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℤ)

end

end A095850.P14771534173813426109

namespace A095850

/-- `(col(n)+1)^((row(n)-col(n)+1)*(row(n)-col(n)+1))` -/
def P14771534173813426109.Spec : Prop :=
  ∀ n, P14771534173813426109.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P1334685825161118725

`A051129(n+1)^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095850.P1334685825161118725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051129 (n + 1) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A095850.P1334685825161118725

namespace A095850

/-- `A051129(n+1)^(C(comp[∑[n]]-n, 2)-n)` -/
def P1334685825161118725.Spec : Prop :=
  ∀ n, P1334685825161118725.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P5439333305472196968

`A002260(n+1)^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095850.P5439333305472196968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095850.P5439333305472196968

namespace A095850

/-- `A002260(n+1)^(C(comp[∑[n]]-n, 2)-n)²` -/
def P5439333305472196968.Spec : Prop :=
  ∀ n, P5439333305472196968.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P8150408996678431029

`(A002262(n)+1)^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095850.P8150408996678431029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095850.P8150408996678431029

namespace A095850

/-- `(A002262(n)+1)^(C(comp[∑[n]]-n, 2)-n)²` -/
def P8150408996678431029.Spec : Prop :=
  ∀ n, P8150408996678431029.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P451785335908522542

`(A057554(2*n+1)+1)^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095850.P451785335908522542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * n + 1) + 1 : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095850.P451785335908522542

namespace A095850

/-- `(A057554(2*n+1)+1)^(C(comp[∑[n]]-n, 2)-n)²` -/
def P451785335908522542.Spec : Prop :=
  ∀ n, P451785335908522542.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P13526020458704739105

`(A057555(2*n+1)%(n+2))^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095850.P13526020458704739105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A057555 (2 * n + 1)) (n + 2 : ℤ) : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095850.P13526020458704739105

namespace A095850

/-- `(A057555(2*n+1)%(n+2))^(C(comp[∑[n]]-n, 2)-n)²` -/
def P13526020458704739105.Spec : Prop :=
  ∀ n, P13526020458704739105.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P14537638724988629104

`A095836(A080036(n))`
-/

namespace A095850.P14537638724988629104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095836 (A080036 n).toNat

end

end A095850.P14537638724988629104

namespace A095850

/-- `A095836(A080036(n))` -/
def P14537638724988629104.Spec : Prop :=
  ∀ n, P14537638724988629104.a n = A095850 (n + 1)

end A095850

/-! ## A095850.P2285134603469925470

`A095836(A014132(n+1))`
-/

namespace A095850.P2285134603469925470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095836 (A014132 (n + 1)).toNat

end

end A095850.P2285134603469925470

namespace A095850

/-- `A095836(A014132(n+1))` -/
def P2285134603469925470.Spec : Prop :=
  ∀ n, P2285134603469925470.a n = A095850 (n + 1)

end A095850

/-! ## A095850.P13781578157411069491

`A002260(n+1)^A193592(n)²`
-/

namespace A095850.P13781578157411069491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A193592 n ^ 2 : ℤ)

end

end A095850.P13781578157411069491

namespace A095850

/-- `A002260(n+1)^A193592(n)²` -/
def P13781578157411069491.Spec : Prop :=
  ∀ n, P13781578157411069491.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P10583239827467727641

`(A002262(n)+1)^A193592(n)²`
-/

namespace A095850.P10583239827467727641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) ^ (A193592 n ^ 2 : ℤ)

end

end A095850.P10583239827467727641

namespace A095850

/-- `(A002262(n)+1)^A193592(n)²` -/
def P10583239827467727641.Spec : Prop :=
  ∀ n, P10583239827467727641.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P1467122359512994990

`A002260(n+1)^A193739(n)²`
-/

namespace A095850.P1467122359512994990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A193739 n ^ 2 : ℤ)

end

end A095850.P1467122359512994990

namespace A095850

/-- `A002260(n+1)^A193739(n)²` -/
def P1467122359512994990.Spec : Prop :=
  ∀ n, P1467122359512994990.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P15132741611727401952

`A002262(comp[∑[n]])^A193592(n)²`
-/

namespace A095850.P15132741611727401952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A193592 n ^ 2 : ℤ)

end

end A095850.P15132741611727401952

namespace A095850

/-- `A002262(comp[∑[n]])^A193592(n)²` -/
def P15132741611727401952.Spec : Prop :=
  ∀ n, P15132741611727401952.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P548951980890269013

`A048151(comp[∑[n]])^A193592(n)²`
-/

namespace A095850.P548951980890269013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A193592 n ^ 2 : ℤ)

end

end A095850.P548951980890269013

namespace A095850

/-- `A048151(comp[∑[n]])^A193592(n)²` -/
def P548951980890269013.Spec : Prop :=
  ∀ n, P548951980890269013.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P6307299560048076003

`A002260(n+1)^A004736(n+1)²`
-/

namespace A095850.P6307299560048076003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A004736 (n + 1) ^ 2 : ℤ)

end

end A095850.P6307299560048076003

namespace A095850

/-- `A002260(n+1)^A004736(n+1)²` -/
def P6307299560048076003.Spec : Prop :=
  ∀ n, P6307299560048076003.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P16926513610271414041

`A002260(n+1)^(A025581(n)+1)²`
-/

namespace A095850.P16926513610271414041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ ((A025581 n + 1) ^ 2 : ℤ)

end

end A095850.P16926513610271414041

namespace A095850

/-- `A002260(n+1)^(A025581(n)+1)²` -/
def P16926513610271414041.Spec : Prop :=
  ∀ n, P16926513610271414041.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P12187627874049299031

`A002260(n+1)^A057555(2*(n+1))²`
-/

namespace A095850.P12187627874049299031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) ^ (A057555 (2 * (n + 1)) ^ 2 : ℤ)

end

end A095850.P12187627874049299031

namespace A095850

/-- `A002260(n+1)^A057555(2*(n+1))²` -/
def P12187627874049299031.Spec : Prop :=
  ∀ n, P12187627874049299031.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P1527284605381652851

`A057555(2*n+1)^A004736(n+1)²`
-/

namespace A095850.P1527284605381652851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * n + 1) : ℚ) ^ (A004736 (n + 1) ^ 2 : ℤ)

end

end A095850.P1527284605381652851

namespace A095850

/-- `A057555(2*n+1)^A004736(n+1)²` -/
def P1527284605381652851.Spec : Prop :=
  ∀ n, P1527284605381652851.a n = (A095850 (n + 1) : ℚ)

end A095850

/-! ## A095850.P14362153528854203307

`A048151(comp[∑[n]])^A057555(2*(n+1))²`
-/

namespace A095850.P14362153528854203307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A057555 (2 * (n + 1)) ^ 2 : ℤ)

end

end A095850.P14362153528854203307

namespace A095850

/-- `A048151(comp[∑[n]])^A057555(2*(n+1))²` -/
def P14362153528854203307.Spec : Prop :=
  ∀ n, P14362153528854203307.a n = (A095850 (n + 1) : ℚ)

end A095850

/-!
# A095851: Triangle read by rows: T(n,k) = (n-k+1)^((n-k+1)^2), n>=1, 1<=k<=n.

The programs for A095851, there is no canonical definition to state claims against.
-/

/-! ## A095851.P6126424935156846235

`A004736(n+1)^(C(comp[∑[n]]-n, 2)-n)²`
-/

namespace A095851.P6126424935156846235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 : ℤ)

end

end A095851.P6126424935156846235

/-! ## A095851.P3499918622528210973

`A147771(A004736(n+1)²)`
-/

namespace A095851.P3499918622528210973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147771 (A004736 (n + 1) ^ 2).toNat

end

end A095851.P3499918622528210973

/-! ## A095851.P9857537882086764835

`A004736(n+1)^A055461(n+1)`
-/

namespace A095851.P9857537882086764835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A055461 (n + 1) : ℤ)

end

end A095851.P9857537882086764835

/-! ## A095851.P14361306625162405616

`A000005(A130321(n))^A055461(n+1)`
-/

namespace A095851.P14361306625162405616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A130321 n).toNat : ℚ) ^ (A055461 (n + 1) : ℤ)

end

end A095851.P14361306625162405616

/-! ## A095851.P5410837640202518787

`A000005(A140303(n))^A000005(A140303(n))²`
-/

namespace A095851.P5410837640202518787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A140303 n).toNat : ℚ) ^ (A000005 (A140303 n).toNat ^ 2 : ℤ)

end

end A095851.P5410837640202518787

/-!
# A095852: Triangle read by rows: T(n,k) = (n-k+1)^(k^2), n>=1, 1<=k<=n.

The programs for A095852, the canonical program `A095852.P1059216346853333070` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095852 has offset 1).

The definition of A095852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1)+1)^(col(n)+1)²` (program `A095852.P1059216346853333070`, by `A095852.P1059216346853333070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095852.P1059216346853333070

`(row(n)+1-(col(n)+1)+1)^(col(n)+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095852

/-- `(row(n)+1-(col(n)+1)+1)^(col(n)+1)²` -/
def P1059216346853333070.Spec : Prop :=
  ∀ n, P1059216346853333070.a n = A095852 (n + 1)

theorem P1059216346853333070.correct : P1059216346853333070.Spec := by
  intro n
  simp only [A095852, Nat.add_sub_cancel]

end A095852

/-! ## A095852.P8238214355564398326

`(row(n)-col(n)+1)^(col(n)+1)²`
-/

namespace A095852.P8238214355564398326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ (SequenceMachineLib.triCol n + 1) ^ 2

end

end A095852.P8238214355564398326

namespace A095852

/-- `(row(n)-col(n)+1)^(col(n)+1)²` -/
def P8238214355564398326.Spec : Prop :=
  ∀ n, P8238214355564398326.a n = A095852 (n + 1)

theorem P8238214355564398326.correct : P8238214355564398326.Spec := by
  intro n
  simp only [A095852, Nat.add_sub_cancel, A095852.P8238214355564398326.a, A095852.P1059216346853333070.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095852

/-! ## A095852.P8749312893614398760

`(row(n)-col(n)+1)^((col(n)+1)*(col(n)+1))`
-/

namespace A095852.P8749312893614398760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ ((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 1))

end

end A095852.P8749312893614398760

namespace A095852

/-- `(row(n)-col(n)+1)^((col(n)+1)*(col(n)+1))` -/
def P8749312893614398760.Spec : Prop :=
  ∀ n, P8749312893614398760.a n = A095852 (n + 1)

theorem P8749312893614398760.correct : P8749312893614398760.Spec := by
  intro n
  simp only [A095852, Nat.add_sub_cancel, A095852.P8749312893614398760.a, A095852.P1059216346853333070.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095852

/-! ## A095852.P3008320700076348156

`(C(comp[∑[n]]-n, 2)-n)^A128227(n)²`
-/

namespace A095852.P3008320700076348156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A128227 n ^ 2 : ℤ)

end

end A095852.P3008320700076348156

namespace A095852

/-- `(C(comp[∑[n]]-n, 2)-n)^A128227(n)²` -/
def P3008320700076348156.Spec : Prop :=
  ∀ n, P3008320700076348156.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P7604998419976493698

`(C(comp[∑[n]]-n, 2)-n)^A002260(n+1)²`
-/

namespace A095852.P7604998419976493698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095852.P7604998419976493698

namespace A095852

/-- `(C(comp[∑[n]]-n, 2)-n)^A002260(n+1)²` -/
def P7604998419976493698.Spec : Prop :=
  ∀ n, P7604998419976493698.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P11948625493207628888

`(C(comp[∑[n]]-n, 2)-n)^(A002262(n)+1)²`
-/

namespace A095852.P11948625493207628888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ ((A002262 n + 1) ^ 2 : ℤ)

end

end A095852.P11948625493207628888

namespace A095852

/-- `(C(comp[∑[n]]-n, 2)-n)^(A002262(n)+1)²` -/
def P11948625493207628888.Spec : Prop :=
  ∀ n, P11948625493207628888.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P7295915664021054742

`(C(comp[∑[n]]-n, 2)-n)^A048151(n+1)²`
-/

namespace A095852.P7295915664021054742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A048151 (n + 1) ^ 2 : ℤ)

end

end A095852.P7295915664021054742

namespace A095852

/-- `(C(comp[∑[n]]-n, 2)-n)^A048151(n+1)²` -/
def P7295915664021054742.Spec : Prop :=
  ∀ n, P7295915664021054742.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P1886167105070826097

`(C(comp[∑[n]]-n, 2)-n)^(A057554(2*n+1)+1)²`
-/

namespace A095852.P1886167105070826097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ ((A057554 (2 * n + 1) + 1) ^ 2 : ℤ)

end

end A095852.P1886167105070826097

namespace A095852

/-- `(C(comp[∑[n]]-n, 2)-n)^(A057554(2*n+1)+1)²` -/
def P1886167105070826097.Spec : Prop :=
  ∀ n, P1886167105070826097.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P11156789972557605092

`(C(comp[∑[n]]-n, 2)-n)^(A057555(2*n+1)%(n+2))²`
-/

namespace A095852.P11156789972557605092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (Int.tmod (A057555 (2 * n + 1)) (n + 2 : ℤ) ^ 2 : ℤ)

end

end A095852.P11156789972557605092

namespace A095852

/-- `(C(comp[∑[n]]-n, 2)-n)^(A057555(2*n+1)%(n+2))²` -/
def P11156789972557605092.Spec : Prop :=
  ∀ n, P11156789972557605092.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P4194168397556895147

`A095859(A014132(n+1))`
-/

namespace A095852.P4194168397556895147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095859 (A014132 (n + 1)).toNat

end

end A095852.P4194168397556895147

namespace A095852

/-- `A095859(A014132(n+1))` -/
def P4194168397556895147.Spec : Prop :=
  ∀ n, P4194168397556895147.a n = A095852 (n + 1)

end A095852

/-! ## A095852.P160501230337595392

`A004736(n+1)^A128227(n)²`
-/

namespace A095852.P160501230337595392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A128227 n ^ 2 : ℤ)

end

end A095852.P160501230337595392

namespace A095852

/-- `A004736(n+1)^A128227(n)²` -/
def P160501230337595392.Spec : Prop :=
  ∀ n, P160501230337595392.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P12609325549444250297

`A004736(n+1)^A193738(n)²`
-/

namespace A095852.P12609325549444250297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A193738 n ^ 2 : ℤ)

end

end A095852.P12609325549444250297

namespace A095852

/-- `A004736(n+1)^A193738(n)²` -/
def P12609325549444250297.Spec : Prop :=
  ∀ n, P12609325549444250297.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P6662252063598218267

`A004736(n+1)^A002260(n+1)²`
-/

namespace A095852.P6662252063598218267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095852.P6662252063598218267

namespace A095852

/-- `A004736(n+1)^A002260(n+1)²` -/
def P6662252063598218267.Spec : Prop :=
  ∀ n, P6662252063598218267.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P13736282283286853696

`A004736(n+1)^A002262(n+1)²`
-/

namespace A095852.P13736282283286853696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002262 (n + 1) ^ 2 : ℤ)

end

end A095852.P13736282283286853696

namespace A095852

/-- `A004736(n+1)^A002262(n+1)²` -/
def P13736282283286853696.Spec : Prop :=
  ∀ n, P13736282283286853696.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P7656419281508374414

`(A025581(n)+1)^A002260(n+1)²`
-/

namespace A095852.P7656419281508374414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1 : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095852.P7656419281508374414

namespace A095852

/-- `(A025581(n)+1)^A002260(n+1)²` -/
def P7656419281508374414.Spec : Prop :=
  ∀ n, P7656419281508374414.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P5260324257523107704

`(A025581(n)+1)^(A002262(n)+1)²`
-/

namespace A095852.P5260324257523107704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1 : ℚ) ^ ((A002262 n + 1) ^ 2 : ℤ)

end

end A095852.P5260324257523107704

namespace A095852

/-- `(A025581(n)+1)^(A002262(n)+1)²` -/
def P5260324257523107704.Spec : Prop :=
  ∀ n, P5260324257523107704.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P16225540897398338025

`(A025581(n)+1)^A048151(n+1)²`
-/

namespace A095852.P16225540897398338025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1 : ℚ) ^ (A048151 (n + 1) ^ 2 : ℤ)

end

end A095852.P16225540897398338025

namespace A095852

/-- `(A025581(n)+1)^A048151(n+1)²` -/
def P16225540897398338025.Spec : Prop :=
  ∀ n, P16225540897398338025.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P15601890021449232841

`A193592(comp[∑[n]])^A002260(n+1)²`
-/

namespace A095852.P15601890021449232841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095852.P15601890021449232841

namespace A095852

/-- `A193592(comp[∑[n]])^A002260(n+1)²` -/
def P15601890021449232841.Spec : Prop :=
  ∀ n, P15601890021449232841.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P14008845167992829561

`A193592(comp[∑[n]])^(A002262(n)+1)²`
-/

namespace A095852.P14008845167992829561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ ((A002262 n + 1) ^ 2 : ℤ)

end

end A095852.P14008845167992829561

namespace A095852

/-- `A193592(comp[∑[n]])^(A002262(n)+1)²` -/
def P14008845167992829561.Spec : Prop :=
  ∀ n, P14008845167992829561.a n = (A095852 (n + 1) : ℚ)

end A095852

/-! ## A095852.P14839631822764672169

`A193592(comp[∑[n]])^A048151(n+1)²`
-/

namespace A095852.P14839631822764672169
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193592 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A048151 (n + 1) ^ 2 : ℤ)

end

end A095852.P14839631822764672169

namespace A095852

/-- `A193592(comp[∑[n]])^A048151(n+1)²` -/
def P14839631822764672169.Spec : Prop :=
  ∀ n, P14839631822764672169.a n = (A095852 (n + 1) : ℚ)

end A095852

/-!
# A095854: Number of simple graphs g on n nodes with |Aut(g)| = 16.

The programs for A095854, there is no canonical definition to state claims against.
-/

/-! ## A095854.P6634785912808619745

`A002378(A114121(n))%A006252(n)`
-/

namespace A095854.P6634785912808619745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (A114121 n).toNat) (A006252 n)

end

end A095854.P6634785912808619745

/-! ## A095854.P5139128230850023487

`A338915(A261562(n)%A089259(n))`
-/

namespace A095854.P5139128230850023487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338915 (Int.tmod (A261562 n) (A089259 n)).toNat

end

end A095854.P5139128230850023487

/-! ## A095854.P13252487784241618530

`and(A006512(A126931(n)), A268689(n))`
-/

namespace A095854.P13252487784241618530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006512 (A126931 n).toNat) (A268689 n)

end

end A095854.P13252487784241618530

/-!
# A095855: Number of simple graphs g on n nodes with |Aut(g)| = 24.

The programs for A095855, there is no canonical definition to state claims against.
-/

/-! ## A095855.P14253745560696149881

`2*A167637(A023432(n+2))`
-/

namespace A095855.P14253745560696149881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167637 (A023432 (n + 2)).toNat

end

end A095855.P14253745560696149881

/-! ## A095855.P5413369158807725770

`A018315(n+1)%A309845(n)`
-/

namespace A095855.P5413369158807725770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018315 (n + 1)) (A309845 n)

end

end A095855.P5413369158807725770

/-! ## A095855.P8471738033439787816

`A145979(A328440(n))%A012246(n)`
-/

namespace A095855.P8471738033439787816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145979 (A328440 n).toNat) (A012246 n)

end

end A095855.P8471738033439787816

/-! ## A095855.P3590456386509862639

`A271518(A087981(n))*A302983(n+1)`
-/

namespace A095855.P3590456386509862639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271518 (A087981 n).toNat * A302983 (n + 1)

end

end A095855.P3590456386509862639

/-!
# A095856: Number of simple graphs g on n nodes with |Aut(g)| = 36.

The programs for A095856, there is no canonical definition to state claims against.
-/

/-! ## A095856.P4625026053262225799

`∑[A085860(A193437(n))]`
-/

namespace A095856.P4625026053262225799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085860 (A193437 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095856.P4625026053262225799

/-! ## A095856.P7599563859489583831

`A033107(A068870(n)+1)`
-/

namespace A095856.P7599563859489583831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033107 (A068870 n + 1).toNat

end

end A095856.P7599563859489583831

/-! ## A095856.P2155658064309536787

`A027870(A088528(n+1)*A114464(n))`
-/

namespace A095856.P2155658064309536787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 (A088528 (n + 1) * A114464 n).toNat

end

end A095856.P2155658064309536787

/-!
# A095859: Triangle read by rows: T(n,k) = (n-k)^(k^2), n>=1, 1<=k<=n.

The programs for A095859, the canonical program `A095859.P1058043465220341596` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095859 has offset 1).

The definition of A095859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1))^(col(n)+1)²` (program `A095859.P1058043465220341596`, by `A095859.P1058043465220341596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095859.P1058043465220341596

`(row(n)+1-(col(n)+1))^(col(n)+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095859

/-- `(row(n)+1-(col(n)+1))^(col(n)+1)²` -/
def P1058043465220341596.Spec : Prop :=
  ∀ n, P1058043465220341596.a n = A095859 (n + 1)

theorem P1058043465220341596.correct : P1058043465220341596.Spec := by
  intro n
  simp only [A095859, Nat.add_sub_cancel]

end A095859

/-! ## A095859.P13518747702243832780

`(row(n)-col(n))^(col(n)+1)²`
-/

namespace A095859.P13518747702243832780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ (SequenceMachineLib.triCol n + 1) ^ 2

end

end A095859.P13518747702243832780

namespace A095859

/-- `(row(n)-col(n))^(col(n)+1)²` -/
def P13518747702243832780.Spec : Prop :=
  ∀ n, P13518747702243832780.a n = A095859 (n + 1)

theorem P13518747702243832780.correct : P13518747702243832780.Spec := by
  intro n
  simp only [A095859, Nat.add_sub_cancel, A095859.P13518747702243832780.a, A095859.P1058043465220341596.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095859

/-! ## A095859.P17026753141283836529

`(row(n)-col(n))^(col(n)+1)^2`
-/

namespace A095859.P17026753141283836529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ (SequenceMachineLib.triCol n + 1) ^ 2

end

end A095859.P17026753141283836529

namespace A095859

/-- `(row(n)-col(n))^(col(n)+1)^2` -/
def P17026753141283836529.Spec : Prop :=
  ∀ n, P17026753141283836529.a n = A095859 (n + 1)

theorem P17026753141283836529.correct : P17026753141283836529.Spec := by
  intro n
  simp only [A095859, Nat.add_sub_cancel, A095859.P17026753141283836529.a, A095859.P1058043465220341596.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095859

/-! ## A095859.P2589316410080943525

`(C(comp[∑[n]]-n, 2)-(n+1))^A193738(n)²`
-/

namespace A095859.P2589316410080943525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A193738 n ^ 2 : ℤ)

end

end A095859.P2589316410080943525

namespace A095859

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A193738(n)²` -/
def P2589316410080943525.Spec : Prop :=
  ∀ n, P2589316410080943525.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P13338018876804894945

`(C(comp[∑[n]]-n, 2)-(n+1))^A002260(n+1)²`
-/

namespace A095859.P13338018876804894945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P13338018876804894945

namespace A095859

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A002260(n+1)²` -/
def P13338018876804894945.Spec : Prop :=
  ∀ n, P13338018876804894945.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P5969021217659123564

`(C(comp[∑[n]]-n, 2)-(n+1))^A134226(n+1)²`
-/

namespace A095859.P5969021217659123564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A134226 (n + 1) ^ 2 : ℤ)

end

end A095859.P5969021217659123564

namespace A095859

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A134226(n+1)²` -/
def P5969021217659123564.Spec : Prop :=
  ∀ n, P5969021217659123564.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P2458303415757517646

`A025581(n)^A128227(n)²`
-/

namespace A095859.P2458303415757517646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A128227 n ^ 2 : ℤ)

end

end A095859.P2458303415757517646

namespace A095859

/-- `A025581(n)^A128227(n)²` -/
def P2458303415757517646.Spec : Prop :=
  ∀ n, P2458303415757517646.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P356782275903403411

`A025581(n)^A193738(n)²`
-/

namespace A095859.P356782275903403411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A193738 n ^ 2 : ℤ)

end

end A095859.P356782275903403411

namespace A095859

/-- `A025581(n)^A193738(n)²` -/
def P356782275903403411.Spec : Prop :=
  ∀ n, P356782275903403411.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P11530114451690789858

`A025581(n)^A133819(n+1)`
-/

namespace A095859.P11530114451690789858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A133819 (n + 1) : ℤ)

end

end A095859.P11530114451690789858

namespace A095859

/-- `A025581(n)^A133819(n+1)` -/
def P11530114451690789858.Spec : Prop :=
  ∀ n, P11530114451690789858.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P13397635789954730952

`A025581(n)^A002260(n+1)²`
-/

namespace A095859.P13397635789954730952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P13397635789954730952

namespace A095859

/-- `A025581(n)^A002260(n+1)²` -/
def P13397635789954730952.Spec : Prop :=
  ∀ n, P13397635789954730952.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P14916044809253931620

`A025581(n)^(A002262(n)+1)²`
-/

namespace A095859.P14916044809253931620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ ((A002262 n + 1) ^ 2 : ℤ)

end

end A095859.P14916044809253931620

namespace A095859

/-- `A025581(n)^(A002262(n)+1)²` -/
def P14916044809253931620.Spec : Prop :=
  ∀ n, P14916044809253931620.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P996893005066666065

`A025581(n)^A097285(Δ[n²])²`
-/

namespace A095859.P996893005066666065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 : ℤ)

end

end A095859.P996893005066666065

namespace A095859

/-- `A025581(n)^A097285(Δ[n²])²` -/
def P996893005066666065.Spec : Prop :=
  ∀ n, P996893005066666065.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P13644225117896809605

`val(A036561(n), 2)^A002260(n+1)²`
-/

namespace A095859.P13644225117896809605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 2 : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P13644225117896809605

namespace A095859

/-- `val(A036561(n), 2)^A002260(n+1)²` -/
def P13644225117896809605.Spec : Prop :=
  ∀ n, P13644225117896809605.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P16474249685925946749

`val(A054582(n), 2)^A002260(n+1)²`
-/

namespace A095859.P16474249685925946749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A054582 n).toNat 2 : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P16474249685925946749

namespace A095859

/-- `val(A054582(n), 2)^A002260(n+1)²` -/
def P16474249685925946749.Spec : Prop :=
  ∀ n, P16474249685925946749.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P9761876376807845116

`A025581(n)^(1-A057944(n)+n)²`
-/

namespace A095859.P9761876376807845116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ ((1 - A057944 n + (n : ℤ)) ^ 2 : ℤ)

end

end A095859.P9761876376807845116

namespace A095859

/-- `A025581(n)^(1-A057944(n)+n)²` -/
def P9761876376807845116.Spec : Prop :=
  ∀ n, P9761876376807845116.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P15753172418172193597

`(A004736(n+1)-1)^A002260(n+1)²`
-/

namespace A095859.P15753172418172193597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P15753172418172193597

namespace A095859

/-- `(A004736(n+1)-1)^A002260(n+1)²` -/
def P15753172418172193597.Spec : Prop :=
  ∀ n, P15753172418172193597.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P47167976580953855

`A057554(2*(n+1))^A002260(n+1)²`
-/

namespace A095859.P47167976580953855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P47167976580953855

namespace A095859

/-- `A057554(2*(n+1))^A002260(n+1)²` -/
def P47167976580953855.Spec : Prop :=
  ∀ n, P47167976580953855.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P15552669177698104627

`(A057555(2*(n+1))-1)^A002260(n+1)²`
-/

namespace A095859.P15552669177698104627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * (n + 1)) - 1 : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P15552669177698104627

namespace A095859

/-- `(A057555(2*(n+1))-1)^A002260(n+1)²` -/
def P15552669177698104627.Spec : Prop :=
  ∀ n, P15552669177698104627.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P2796918223655588240

`(A057554(n+2+n)%63)^A002260(n+1)²`
-/

namespace A095859.P2796918223655588240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A057554 (n + 2 + n)) 63 : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P2796918223655588240

namespace A095859

/-- `(A057554(n+2+n)%63)^A002260(n+1)²` -/
def P2796918223655588240.Spec : Prop :=
  ∀ n, P2796918223655588240.a n = (A095859 (n + 1) : ℚ)

end A095859

/-! ## A095859.P14058522662273289642

`abs(A057555(n+2+n)-1)^A002260(n+1)²`
-/

namespace A095859.P14058522662273289642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A057555 (n + 2 + n) - 1| : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095859.P14058522662273289642

namespace A095859

/-- `abs(A057555(n+2+n)-1)^A002260(n+1)²` -/
def P14058522662273289642.Spec : Prop :=
  ∀ n, P14058522662273289642.a n = (A095859 (n + 1) : ℚ)

end A095859

/-!
# A095860: Triangle read by rows: T(n,k) = n^(k^2), n>=1, 1<=k<=n.

The programs for A095860, the canonical program `A095860.P18203934220486196436` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095860 has offset 1).

The definition of A095860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)^(col(n)+1)²` (program `A095860.P18203934220486196436`, by `A095860.P18203934220486196436.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095860.P18203934220486196436

`(row(n)+1)^(col(n)+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095860

/-- `(row(n)+1)^(col(n)+1)²` -/
def P18203934220486196436.Spec : Prop :=
  ∀ n, (P18203934220486196436.a n : ℤ) = A095860 (n + 1)

theorem P18203934220486196436.correct : P18203934220486196436.Spec := by
  intro n
  simp only [A095860, Nat.add_sub_cancel]

end A095860

/-! ## A095860.P2798172103124488218

`(row(n)+1)^(col(n)+1)^2`
-/

namespace A095860.P2798172103124488218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1) ^ (SequenceMachineLib.triCol n + 1) ^ 2

end

end A095860.P2798172103124488218

namespace A095860

/-- `(row(n)+1)^(col(n)+1)^2` -/
def P2798172103124488218.Spec : Prop :=
  ∀ n, (P2798172103124488218.a n : ℤ) = A095860 (n + 1)

theorem P2798172103124488218.correct : P2798172103124488218.Spec := by
  intro n
  simp only [A095860, Nat.add_sub_cancel, A095860.P2798172103124488218.a, A095860.P18203934220486196436.a, SequenceMachineLib.memo_apply]

end A095860

/-! ## A095860.P17898152162284912167

`∑[char[∑[n]]]^A002260(n+1)²`
-/

namespace A095860.P17898152162284912167
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A002260 (n + 1) ^ 2 : ℤ)

end

end A095860.P17898152162284912167

namespace A095860

/-- `∑[char[∑[n]]]^A002260(n+1)²` -/
def P17898152162284912167.Spec : Prop :=
  ∀ n, P17898152162284912167.a n = (A095860 (n + 1) : ℚ)

end A095860

/-! ## A095860.P2983464753053121051

`∑[char[∑[n]]]^A140756(n+1)²`
-/

namespace A095860.P2983464753053121051
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A140756 (n + 1) ^ 2 : ℤ)

end

end A095860.P2983464753053121051

namespace A095860

/-- `∑[char[∑[n]]]^A140756(n+1)²` -/
def P2983464753053121051.Spec : Prop :=
  ∀ n, P2983464753053121051.a n = (A095860 (n + 1) : ℚ)

end A095860

/-! ## A095860.P6638786613647606956

`log2(A140513(n))^A133819(n+1)`
-/

namespace A095860.P6638786613647606956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A140513 n : ℝ) ^ (A133819 (n + 1) : ℤ)

end

end A095860.P6638786613647606956

namespace A095860

/-- `log2(A140513(n))^A133819(n+1)` -/
def P6638786613647606956.Spec : Prop :=
  ∀ n, P6638786613647606956.a n = (A095860 (n + 1) : ℝ)

end A095860

/-! ## A095860.P7885539759589819994

`∑[A010054(n)]^A133819(n+1)`
-/

namespace A095860.P7885539759589819994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A133819 (n + 1) : ℤ)

end

end A095860.P7885539759589819994

namespace A095860

/-- `∑[A010054(n)]^A133819(n+1)` -/
def P7885539759589819994.Spec : Prop :=
  ∀ n, P7885539759589819994.a n = (A095860 (n + 1) : ℚ)

end A095860

/-! ## A095860.P12981314753285455252

`A002024(n+1)^(A002262(n)+1)²`
-/

namespace A095860.P12981314753285455252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ ((A002262 n + 1) ^ 2 : ℤ)

end

end A095860.P12981314753285455252

namespace A095860

/-- `A002024(n+1)^(A002262(n)+1)²` -/
def P12981314753285455252.Spec : Prop :=
  ∀ n, P12981314753285455252.a n = (A095860 (n + 1) : ℚ)

end A095860

/-! ## A095860.P12463710386590064239

`A002024(n+1)^A048151(comp[∑[n]])²`
-/

namespace A095860.P12463710386590064239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A048151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2 : ℤ)

end

end A095860.P12463710386590064239

namespace A095860

/-- `A002024(n+1)^A048151(comp[∑[n]])²` -/
def P12463710386590064239.Spec : Prop :=
  ∀ n, P12463710386590064239.a n = (A095860 (n + 1) : ℚ)

end A095860

/-! ## A095860.P1157966403888725320

`A002024(n+1)^ceil(A158405(n+1)/2)²`
-/

namespace A095860.P1157966403888725320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (⌈(A158405 (n + 1) : ℚ) / 2⌉ ^ 2 : ℤ)

end

end A095860.P1157966403888725320

namespace A095860

/-- `A002024(n+1)^ceil(A158405(n+1)/2)²` -/
def P1157966403888725320.Spec : Prop :=
  ∀ n, P1157966403888725320.a n = (A095860 (n + 1) : ℚ)

end A095860

/-! ## A095860.P9042031355748065899

`A002024(n+1)^(A057554(2*n+1)+1)²`
-/

namespace A095860.P9042031355748065899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ ((A057554 (2 * n + 1) + 1) ^ 2 : ℤ)

end

end A095860.P9042031355748065899

namespace A095860

/-- `A002024(n+1)^(A057554(2*n+1)+1)²` -/
def P9042031355748065899.Spec : Prop :=
  ∀ n, P9042031355748065899.a n = (A095860 (n + 1) : ℚ)

end A095860

/-!
# A095861: Number of primitive Pythagorean triangles of form (X,Y,Y+1) with hypotenuse Y+1 less than or equal to n.

The programs for A095861, the canonical program `A095861.P18256345389734582290` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095861 has offset 1).

The definition of A095861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095861.P18256345389734582290

`floor((sqrt(2*(n+1)-1)-1)/2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095861

/-- `floor((sqrt(2*(n+1)-1)-1)/2)` -/
def P18256345389734582290.Spec : Prop :=
  ∀ n, P18256345389734582290.a n = A095861 (n + 1)

theorem P18256345389734582290.correct : P18256345389734582290.Spec := by
  intro n
  simp only [A095861, Nat.add_sub_cancel]

end A095861

/-! ## A095861.P14501383047272845727

`round(sqrt(cosh(log(n+1))))-1`
-/

namespace A095861.P14501383047272845727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.cosh (Real.log (n + 1 : ℝ)))) - 1

end

end A095861.P14501383047272845727

namespace A095861

/-- `round(sqrt(cosh(log(n+1))))-1` -/
def P14501383047272845727.Spec : Prop :=
  ∀ n, P14501383047272845727.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P4396618383127263224

`comp[C(2*n, 2)]-(n+2)`
-/

namespace A095861.P4396618383127263224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 2 : ℤ)

end

end A095861.P4396618383127263224

namespace A095861

/-- `comp[C(2*n, 2)]-(n+2)` -/
def P4396618383127263224.Spec : Prop :=
  ∀ n, P4396618383127263224.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P15304978936483545253

`comp[C(2*n, 2)]%(n+2)`
-/

namespace A095861.P15304978936483545253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2)

end

end A095861.P15304978936483545253

namespace A095861

/-- `comp[C(2*n, 2)]%(n+2)` -/
def P15304978936483545253.Spec : Prop :=
  ∀ n, (P15304978936483545253.a n : ℤ) = A095861 (n + 1)

end A095861

/-! ## A095861.P13224283249696104515

`floor(sinh(log(floor(sqrt(2*n+1)))))`
-/

namespace A095861.P13224283249696104515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.sqrt (2 * n + 1) : ℝ))⌋

end

end A095861.P13224283249696104515

namespace A095861

/-- `floor(sinh(log(floor(sqrt(2*n+1)))))` -/
def P13224283249696104515.Spec : Prop :=
  ∀ n, P13224283249696104515.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P2929666843515736060

`comp[(2*n+1)*(n-1)]%(n+1)`
-/

namespace A095861.P2929666843515736060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A095861.P2929666843515736060

namespace A095861

/-- `comp[(2*n+1)*(n-1)]%(n+1)` -/
def P2929666843515736060.Spec : Prop :=
  ∀ n, (P2929666843515736060.a n : ℤ) = A095861 (n + 1)

end A095861

/-! ## A095861.P6071407433984188157

`A259361(floor(n/2))`
-/

namespace A095861.P6071407433984188157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 ⌊(n : ℚ) / 2⌋.toNat

end

end A095861.P6071407433984188157

namespace A095861

/-- `A259361(floor(n/2))` -/
def P6071407433984188157.Spec : Prop :=
  ∀ n, P6071407433984188157.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P565133639630501482

`∑[A003982(n)]-1`
-/

namespace A095861.P565133639630501482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A095861.P565133639630501482

namespace A095861

/-- `∑[A003982(n)]-1` -/
def P565133639630501482.Spec : Prop :=
  ∀ n, P565133639630501482.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P15384783006856288320

`round(sqrt(A008619(n)))-1`
-/

namespace A095861.P15384783006856288320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008619 n : ℝ)) - 1

end

end A095861.P15384783006856288320

namespace A095861

/-- `round(sqrt(A008619(n)))-1` -/
def P15384783006856288320.Spec : Prop :=
  ∀ n, P15384783006856288320.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P18058478767046956188

`∑[char[A046092(n+1)]]`
-/

namespace A095861.P18058478767046956188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095861.P18058478767046956188

namespace A095861

/-- `∑[char[A046092(n+1)]]` -/
def P18058478767046956188.Spec : Prop :=
  ∀ n, (P18058478767046956188.a n : ℤ) = A095861 (n + 1)

end A095861

/-! ## A095861.P13458283368308803155

`∑[char[A106232(n+1)]]`
-/

namespace A095861.P13458283368308803155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106232 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095861.P13458283368308803155

namespace A095861

/-- `∑[char[A106232(n+1)]]` -/
def P13458283368308803155.Spec : Prop :=
  ∀ n, (P13458283368308803155.a n : ℤ) = A095861 (n + 1)

end A095861

/-! ## A095861.P3951133345565243050

`∑[char[A046092(n)]]-1`
-/

namespace A095861.P3951133345565243050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A095861.P3951133345565243050

namespace A095861

/-- `∑[char[A046092(n)]]-1` -/
def P3951133345565243050.Spec : Prop :=
  ∀ n, P3951133345565243050.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P14377450526942907356

`n-∑[A068344(n)²]`
-/

namespace A095861.P14377450526942907356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095861.P14377450526942907356

namespace A095861

/-- `n-∑[A068344(n)²]` -/
def P14377450526942907356.Spec : Prop :=
  ∀ n, P14377450526942907356.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P6945901223110308885

`A183302(n+1)-(n+1)`
-/

namespace A095861.P6945901223110308885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183302 (n + 1) - (n + 1 : ℤ)

end

end A095861.P6945901223110308885

namespace A095861

/-- `A183302(n+1)-(n+1)` -/
def P6945901223110308885.Spec : Prop :=
  ∀ n, P6945901223110308885.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P6058626459595236695

`A183218(n+1)-(n+2)`
-/

namespace A095861.P6058626459595236695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183218 (n + 1) - (n + 2 : ℤ)

end

end A095861.P6058626459595236695

namespace A095861

/-- `A183218(n+1)-(n+2)` -/
def P6058626459595236695.Spec : Prop :=
  ∀ n, P6058626459595236695.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P12126075545196342318

`n-∑[A323377(n+1)²]`
-/

namespace A095861.P12126075545196342318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323377 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095861.P12126075545196342318

namespace A095861

/-- `n-∑[A323377(n+1)²]` -/
def P12126075545196342318.Spec : Prop :=
  ∀ n, P12126075545196342318.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P6953760950866253183

`A003056(A002265(n))`
-/

namespace A095861.P6953760950866253183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002265 n).toNat

end

end A095861.P6953760950866253183

namespace A095861

/-- `A003056(A002265(n))` -/
def P6953760950866253183.Spec : Prop :=
  ∀ n, P6953760950866253183.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P18259708428553215747

`A000196(A080352(n))`
-/

namespace A095861.P18259708428553215747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A080352 n).toNat

end

end A095861.P18259708428553215747

namespace A095861

/-- `A000196(A080352(n))` -/
def P18259708428553215747.Spec : Prop :=
  ∀ n, P18259708428553215747.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P10533691146261759478

`A000194(A008619(n))-1`
-/

namespace A095861.P10533691146261759478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A008619 n).toNat - 1

end

end A095861.P10533691146261759478

namespace A095861

/-- `A000194(A008619(n))-1` -/
def P10533691146261759478.Spec : Prop :=
  ∀ n, P10533691146261759478.a n = A095861 (n + 1)

end A095861

/-! ## A095861.P5044279361245830754

`A004526(A047839(n+1)-(n+2))`
-/

namespace A095861.P5044279361245830754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047839 (n + 1) - (n + 2 : ℤ)).toNat

end

end A095861.P5044279361245830754

namespace A095861

/-- `A004526(A047839(n+1)-(n+2))` -/
def P5044279361245830754.Spec : Prop :=
  ∀ n, P5044279361245830754.a n = A095861 (n + 1)

end A095861

/-!
# A095862: Numbers whose number of decimal digits and number of divisors are equal.

The programs for A095862, the canonical program `A095862.P2197383471254196251` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095862 has offset 1).

The definition of A095862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095862.P2197383471254196251

`eq[A032741(n)+1, A004218(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095862

/-- `eq[A032741(n)+1, A004218(n+1)]` -/
def P2197383471254196251.Spec : Prop :=
  ∀ n, (P2197383471254196251.a n : ℤ) = A095862 (n + 1)

theorem P2197383471254196251.correct : P2197383471254196251.Spec := by
  intro n
  simp only [A095862, Nat.add_sub_cancel]

end A095862

/-! ## A095862.P13450049874191820205

`eq[A000005(n+1), A055642(n)]+1`
-/

namespace A095862.P13450049874191820205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A095862.P13450049874191820205

namespace A095862

/-- `eq[A000005(n+1), A055642(n)]+1` -/
def P13450049874191820205.Spec : Prop :=
  ∀ n, (P13450049874191820205.a n : ℤ) = A095862 (n + 1)

end A095862

/-! ## A095862.P8652561853348466815

`eq[A002265(A145154(n)), A055642(n)]`
-/

namespace A095862.P8652561853348466815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A145154 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095862.P8652561853348466815

namespace A095862

/-- `eq[A002265(A145154(n)), A055642(n)]` -/
def P8652561853348466815.Spec : Prop :=
  ∀ n, (P8652561853348466815.a n : ℤ) = A095862 (n + 1)

end A095862

/-! ## A095862.P3784914361109286759

`eq[A000005(A028310(n)), A004218(n+1)]`
-/

namespace A095862.P3784914361109286759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095862.P3784914361109286759

namespace A095862

/-- `eq[A000005(A028310(n)), A004218(n+1)]` -/
def P3784914361109286759.Spec : Prop :=
  ∀ n, (P3784914361109286759.a n : ℤ) = A095862 (n + 1)

end A095862

/-! ## A095862.P14187351501401212149

`eq[A004218(n+1), A077168(A032741(n))]`
-/

namespace A095862.P14187351501401212149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095862.P14187351501401212149

namespace A095862

/-- `eq[A004218(n+1), A077168(A032741(n))]` -/
def P14187351501401212149.Spec : Prop :=
  ∀ n, (P14187351501401212149.a n : ℤ) = A095862 (n + 1)

end A095862

/-! ## A095862.P17942936360190678160

`eq[A055642(n), A277692(2*n+1)]`
-/

namespace A095862.P17942936360190678160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095862.P17942936360190678160

namespace A095862

/-- `eq[A055642(n), A277692(2*n+1)]` -/
def P17942936360190678160.Spec : Prop :=
  ∀ n, (P17942936360190678160.a n : ℤ) = A095862 (n + 1)

end A095862

/-! ## A095862.P2280552308085261482

`eq[A055642(n+1), A183063(2*(n+1))]+1`
-/

namespace A095862.P2280552308085261482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A095862.P2280552308085261482

namespace A095862

/-- `eq[A055642(n+1), A183063(2*(n+1))]+1` -/
def P2280552308085261482.Spec : Prop :=
  ∀ n, (P2280552308085261482.a n : ℤ) = A095862 (n + 1)

end A095862

/-! ## A095862.P7656278015136729447

`eq[A055642(n), A183063(A004277(n))]`
-/

namespace A095862.P7656278015136729447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095862.P7656278015136729447

namespace A095862

/-- `eq[A055642(n), A183063(A004277(n))]` -/
def P7656278015136729447.Spec : Prop :=
  ∀ n, (P7656278015136729447.a n : ℤ) = A095862 (n + 1)

end A095862

/-! ## A095862.P14504321291819610207

`eq[A277692(A005408(n))², A055642(n)²]`
-/

namespace A095862.P14504321291819610207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A005408 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095862.P14504321291819610207

namespace A095862

/-- `eq[A277692(A005408(n))², A055642(n)²]` -/
def P14504321291819610207.Spec : Prop :=
  ∀ n, (P14504321291819610207.a n : ℤ) = A095862 (n + 1)

end A095862

/-!
# A095863: Index of largest triangular number with n digits.

The programs for A095863, the canonical program `A095863.P4775484229742451962` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095863 has offset 1).

The definition of A095863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095863.P4775484229742451962

`A068092(n+2)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095863

/-- `A068092(n+2)-1` -/
def P4775484229742451962.Spec : Prop :=
  ∀ n, P4775484229742451962.a n = A095863 (n + 1)

theorem P4775484229742451962.correct : P4775484229742451962.Spec := by
  intro n
  simp only [A095863, Nat.add_sub_cancel]

end A095863

/-! ## A095863.P7493030691234809032

`∑[A068094(n+1)]`
-/

namespace A095863.P7493030691234809032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095863.P7493030691234809032

namespace A095863

/-- `∑[A068094(n+1)]` -/
def P7493030691234809032.Spec : Prop :=
  ∀ n, P7493030691234809032.a n = A095863 (n + 1)

end A095863

/-! ## A095863.P17480090809982997365

`∑[abs(Δ[A068092(n+1)])]`
-/

namespace A095863.P17480090809982997365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095863.P17480090809982997365

namespace A095863

/-- `∑[abs(Δ[A068092(n+1)])]` -/
def P17480090809982997365.Spec : Prop :=
  ∀ n, P17480090809982997365.a n = A095863 (n + 1)

end A095863

/-! ## A095863.P10609834680078537843

`abs(floor(A035075(n+1)/2-atan(35))+1)`
-/

namespace A095863.P10609834680078537843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊((A035075 (n + 1) : ℚ) / 2 : ℝ) - Real.arctan (35 : ℝ)⌋ + 1|

end

end A095863.P10609834680078537843

namespace A095863

/-- `abs(floor(A035075(n+1)/2-atan(35))+1)` -/
def P10609834680078537843.Spec : Prop :=
  ∀ n, P10609834680078537843.a n = A095863 (n + 1)

end A095863

/-! ## A095863.P17913255593732643009

`A236043(n+1)-A054977(n)`
-/

namespace A095863.P17913255593732643009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236043 (n + 1) - A054977 n

end

end A095863.P17913255593732643009

namespace A095863

/-- `A236043(n+1)-A054977(n)` -/
def P17913255593732643009.Spec : Prop :=
  ∀ n, P17913255593732643009.a n = A095863 (n + 1)

end A095863

/-! ## A095863.P1578719346429006349

`A095866(n+1)+A095865(n+2)`
-/

namespace A095863.P1578719346429006349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095866 (n + 1) + A095865 (n + 2)

end

end A095863.P1578719346429006349

namespace A095863

/-- `A095866(n+1)+A095865(n+2)` -/
def P1578719346429006349.Spec : Prop :=
  ∀ n, P1578719346429006349.a n = A095863 (n + 1)

theorem P1578719346429006349.correct : P1578719346429006349.Spec := by
  intro n
  simp only [A095863, Nat.add_sub_cancel, A095863.P1578719346429006349.a, A095863.P4775484229742451962.a, A068092, A068092.P3786387799136448240.a, A095865, A095865.P3428909612435295110.a, A095866, A095866.P11179933391095799096.a, A068093, A068093.P11725195299041626924.a, A095864, A095864.P7106599436942101963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A095863

/-! ## A095863.P5837351368914711582

`round(sqrt(10^(n+1))*sqrt(2))-1`
-/

namespace A095863.P5837351368914711582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (10 ^ (n + 1) : ℝ) * Real.sqrt (2 : ℝ)) - 1

end

end A095863.P5837351368914711582

namespace A095863

/-- `round(sqrt(10^(n+1))*sqrt(2))-1` -/
def P5837351368914711582.Spec : Prop :=
  ∀ n, P5837351368914711582.a n = A095863 (n + 1)

end A095863

/-!
# A095864: Largest n-digit triangular number.

The programs for A095864, the canonical program `A095864.P7106599436942101963` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095864 has offset 1).

The definition of A095864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095864.P7106599436942101963

`A068093(n+2)-A068092(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095864

/-- `A068093(n+2)-A068092(n+2)` -/
def P7106599436942101963.Spec : Prop :=
  ∀ n, P7106599436942101963.a n = A095864 (n + 1)

theorem P7106599436942101963.correct : P7106599436942101963.Spec := by
  intro n
  simp only [A095864, Nat.add_sub_cancel]

end A095864

/-! ## A095864.P15197689624564713856

`C(A068092(n+2), 2)`
-/

namespace A095864.P15197689624564713856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068092 (n + 2)).toNat 2

end

end A095864.P15197689624564713856

namespace A095864

/-- `C(A068092(n+2), 2)` -/
def P15197689624564713856.Spec : Prop :=
  ∀ n, (P15197689624564713856.a n : ℤ) = A095864 (n + 1)

end A095864

/-! ## A095864.P8147967327159184972

`C(round(sqrt(A086946(n+1))), 2)`
-/

namespace A095864.P8147967327159184972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A086946 (n + 1) : ℝ))).toNat 2

end

end A095864.P8147967327159184972

namespace A095864

/-- `C(round(sqrt(A086946(n+1))), 2)` -/
def P8147967327159184972.Spec : Prop :=
  ∀ n, (P8147967327159184972.a n : ℤ) = A095864 (n + 1)

end A095864

/-! ## A095864.P12121886573470123508

`A103456(n+1)-A095866(n+1)`
-/

namespace A095864.P12121886573470123508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 (n + 1) - A095866 (n + 1)

end

end A095864.P12121886573470123508

namespace A095864

/-- `A103456(n+1)-A095866(n+1)` -/
def P12121886573470123508.Spec : Prop :=
  ∀ n, P12121886573470123508.a n = A095864 (n + 1)

theorem P12121886573470123508.correct : P12121886573470123508.Spec := by
  intro n
  simp only [A095864, Nat.add_sub_cancel, A095864.P12121886573470123508.a, A095864.P7106599436942101963.a, A068092, A068092.P3786387799136448240.a, A068093, A068093.P11725195299041626924.a, A095866, A095866.P11179933391095799096.a, A103456, A103456.P11252445265459271757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A095864

/-! ## A095864.P17294313536591351673

`∑[Δ[A068093(n+1)]-A068094(n+1)]`
-/

namespace A095864.P17294313536591351673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068093 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A068094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095864.P17294313536591351673

namespace A095864

/-- `∑[Δ[A068093(n+1)]-A068094(n+1)]` -/
def P17294313536591351673.Spec : Prop :=
  ∀ n, P17294313536591351673.a n = A095864 (n + 1)

end A095864

/-!
# A095865: Smallest n-digit triangular number - smallest n-digit number.

The programs for A095865, the canonical program `A095865.P3428909612435295110` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095865 has offset 1).

The definition of A095865 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A068093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095865.P3428909612435295110

`A068093(n+1)-10^n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095865

/-- `A068093(n+1)-10^n` -/
def P3428909612435295110.Spec : Prop :=
  ∀ n, P3428909612435295110.a n = A095865 (n + 1)

theorem P3428909612435295110.correct : P3428909612435295110.Spec := by
  intro n
  simp only [A095865, Nat.add_sub_cancel]

end A095865

/-! ## A095865.P17299347398548987149

`A095863(A028310(n))-A095866(A028310(n))`
-/

namespace A095865.P17299347398548987149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095863 (A028310 n).toNat - A095866 (A028310 n).toNat

end

end A095865.P17299347398548987149

namespace A095865

/-- `A095863(A028310(n))-A095866(A028310(n))` -/
def P17299347398548987149.Spec : Prop :=
  ∀ n, P17299347398548987149.a n = A095865 (n + 1)

end A095865

/-! ## A095865.P10866700178007699835

`A000217(round(sqrt(2*10^n)))-A011557(n)`
-/

namespace A095865.P10866700178007699835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * 10 ^ n : ℝ))).toNat - A011557 n

end

end A095865.P10866700178007699835

namespace A095865

/-- `A000217(round(sqrt(2*10^n)))-A011557(n)` -/
def P10866700178007699835.Spec : Prop :=
  ∀ n, P10866700178007699835.a n = A095865 (n + 1)

end A095865

/-!
# A095866: Largest n-digit number - largest n-digit triangular number.

The programs for A095866, the canonical program `A095866.P11179933391095799096` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095866 has offset 1).

The definition of A095866 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095864, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095866.P11179933391095799096

`10^(n+1)-1-A095864(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095866

/-- `10^(n+1)-1-A095864(n+1)` -/
def P11179933391095799096.Spec : Prop :=
  ∀ n, P11179933391095799096.a n = A095866 (n + 1)

theorem P11179933391095799096.correct : P11179933391095799096.Spec := by
  intro n
  simp only [A095866, Nat.add_sub_cancel]

end A095866

/-! ## A095866.P644531041906584656

`A095863(n+1)-A095865(n+2)`
-/

namespace A095866.P644531041906584656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095863 (n + 1) - A095865 (n + 2)

end

end A095866.P644531041906584656

namespace A095866

/-- `A095863(n+1)-A095865(n+2)` -/
def P644531041906584656.Spec : Prop :=
  ∀ n, P644531041906584656.a n = A095866 (n + 1)

theorem P644531041906584656.correct : P644531041906584656.Spec := by
  intro n
  simp only [A095866, Nat.add_sub_cancel, A095866.P644531041906584656.a, A095866.P11179933391095799096.a, A095863, A095863.P4775484229742451962.a, A095864, A095864.P7106599436942101963.a, A095865, A095865.P3428909612435295110.a, A068092, A068092.P3786387799136448240.a, A068093, A068093.P11725195299041626924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A095866

/-! ## A095866.P3511014923959350179

`∑[A068094(n+1)]-A095865(n+2)`
-/

namespace A095866.P3511014923959350179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A095865 (n + 2)

end

end A095866.P3511014923959350179

namespace A095866

/-- `∑[A068094(n+1)]-A095865(n+2)` -/
def P3511014923959350179.Spec : Prop :=
  ∀ n, P3511014923959350179.a n = A095866 (n + 1)

end A095866

/-! ## A095866.P2499922375233455914

`A068092(n+2)-(A095865(n+2)+1)`
-/

namespace A095866.P2499922375233455914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (n + 2) - (A095865 (n + 2) + 1)

end

end A095866.P2499922375233455914

namespace A095866

/-- `A068092(n+2)-(A095865(n+2)+1)` -/
def P2499922375233455914.Spec : Prop :=
  ∀ n, P2499922375233455914.a n = A095866 (n + 1)

theorem P2499922375233455914.correct : P2499922375233455914.Spec := by
  intro n
  simp only [A095866, Nat.add_sub_cancel, A095866.P2499922375233455914.a, A095866.P11179933391095799096.a, A068092, A068092.P3786387799136448240.a, A095864, A095864.P7106599436942101963.a, A095865, A095865.P3428909612435295110.a, A068093, A068093.P11725195299041626924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A095866

/-! ## A095866.P12913455512476196857

`A103456(n+1)%A095864(n+1)`
-/

namespace A095866.P12913455512476196857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103456 (n + 1)) (A095864 (n + 1))

end

end A095866.P12913455512476196857

namespace A095866

/-- `A103456(n+1)%A095864(n+1)` -/
def P12913455512476196857.Spec : Prop :=
  ∀ n, P12913455512476196857.a n = A095866 (n + 1)

end A095866

/-!
# A095869: Triangular numbers whose digit permutations yield no further triangular numbers.

The programs for A095869, there is no canonical definition to state claims against.
-/

/-! ## A095869.P8477346093865382623

`eq[A090171(A005384(n+1)), A100324(n)]`
-/

namespace A095869.P8477346093865382623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A005384 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095869.P8477346093865382623

/-! ## A095869.P1541565628641445609

`lt[A084938(n), A090171(A005384(n+1))]`
-/

namespace A095869.P1541565628641445609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A005384 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095869.P1541565628641445609

/-! ## A095869.P299713661439862384

`lt[A205574(n), A090171(A005384(n+1))]`
-/

namespace A095869.P299713661439862384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090171 (A005384 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095869.P299713661439862384

/-! ## A095869.P1603265161224055684

`A000217(lt[A238874(n), A217101(n+1)])`
-/

namespace A095869.P1603265161224055684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095869.P1603265161224055684

/-! ## A095869.P12774272255761059989

`lt[A208945(n+1), A001221(A269363(n+1))]`
-/

namespace A095869.P12774272255761059989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A269363 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095869.P12774272255761059989

/-!
# A095871: Triangle read by rows: T(n,k)=(n+1)*(3*(n+1)-1)/2-k*(3*k-1)/2.

The programs for A095871, the canonical program `A095871.P12080170565042940400` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095871 has offset 1).

The definition of A095871 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)*(3*(row(n)+1)-1)/2-col(n)*(3*col(n)-1)/2` (program `A095871.P4845579394584075715`, by `A095871.P4845579394584075715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095871.P4845579394584075715

`(row(n)+1)*(3*(row(n)+1)-1)/2-col(n)*(3*col(n)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095871.P4845579394584075715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - 1) : ℚ) / 2 - ((SequenceMachineLib.triCol n : ℤ) * ((3 * SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2

end

end A095871.P4845579394584075715

namespace A095871

/-- `(row(n)+1)*(3*(row(n)+1)-1)/2-col(n)*(3*col(n)-1)/2` -/
def P4845579394584075715.Spec : Prop :=
  ∀ n, P4845579394584075715.a n = (A095871 (n + 1) : ℚ)

theorem P4845579394584075715.correct : P4845579394584075715.Spec := by
  intro n
  simp only [A095871, Nat.add_sub_cancel, A095871.P4845579394584075715.a, A095871.P12080170565042940400.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A095871

/-! ## A095871.P16989767751477341518

`T(n-1,k)+3*row(n)+1` with `a(0)=1`
-/

namespace A095871.P16989767751477341518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 3 * SequenceMachineLib.triRow n + 1

end

end A095871.P16989767751477341518

namespace A095871

/-- `T(n-1,k)+3*row(n)+1` -/
def P16989767751477341518.Spec : Prop :=
  ∀ n, (P16989767751477341518.a n : ℤ) = A095871 (n + 1)

end A095871

/-! ## A095871.P7284132793015111374

`A096037(n+1)-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095871.P7284132793015111374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A095871.P7284132793015111374

namespace A095871

/-- `A096037(n+1)-(C(comp[∑[n]]-n, 2)-n)` -/
def P7284132793015111374.Spec : Prop :=
  ∀ n, P7284132793015111374.a n = A095871 (n + 1)

end A095871

/-! ## A095871.P368455028883913979

`A096038(n+1)+1-(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095871.P368455028883913979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) + 1 - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A095871.P368455028883913979

namespace A095871

/-- `A096038(n+1)+1-(C(comp[∑[n]]-n, 2)-n)` -/
def P368455028883913979.Spec : Prop :=
  ∀ n, P368455028883913979.a n = A095871 (n + 1)

end A095871

/-! ## A095871.P5944785416284718949

`A134480(n)+A003991(n+1)`
-/

namespace A095871.P5944785416284718949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134480 n + A003991 (n + 1)

end

end A095871.P5944785416284718949

namespace A095871

/-- `A134480(n)+A003991(n+1)` -/
def P5944785416284718949.Spec : Prop :=
  ∀ n, P5944785416284718949.a n = A095871 (n + 1)

end A095871

/-! ## A095871.P15506669069450707790

`A096038(n+1)-A025581(n)`
-/

namespace A095871.P15506669069450707790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) - A025581 n

end

end A095871.P15506669069450707790

namespace A095871

/-- `A096038(n+1)-A025581(n)` -/
def P15506669069450707790.Spec : Prop :=
  ∀ n, P15506669069450707790.a n = A095871 (n + 1)

end A095871

/-! ## A095871.P8389603401971117378

`A096038(n+1)-log2(A130321(n))`
-/

namespace A095871.P8389603401971117378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A096038 (n + 1) : ℝ) - Real.logb 2 (A130321 n : ℝ)

end

end A095871.P8389603401971117378

namespace A095871

/-- `A096038(n+1)-log2(A130321(n))` -/
def P8389603401971117378.Spec : Prop :=
  ∀ n, P8389603401971117378.a n = (A095871 (n + 1) : ℝ)

end A095871

/-! ## A095871.P916414281169257376

`A096037(n+1)-A004736(n+1)`
-/

namespace A095871.P916414281169257376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A004736 (n + 1)

end

end A095871.P916414281169257376

namespace A095871

/-- `A096037(n+1)-A004736(n+1)` -/
def P916414281169257376.Spec : Prop :=
  ∀ n, P916414281169257376.a n = A095871 (n + 1)

end A095871

/-! ## A095871.P16212798123247974434

`A096037(n+1)-(A025581(n)+1)`
-/

namespace A095871.P16212798123247974434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - (A025581 n + 1)

end

end A095871.P16212798123247974434

namespace A095871

/-- `A096037(n+1)-(A025581(n)+1)` -/
def P16212798123247974434.Spec : Prop :=
  ∀ n, P16212798123247974434.a n = A095871 (n + 1)

theorem P16212798123247974434.correct : P16212798123247974434.Spec := by
  intro n
  simp only [A095871, Nat.add_sub_cancel, A095871.P16212798123247974434.a, A095871.P12080170565042940400.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A096037, A096037.P14088750410499945596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A095871

/-! ## A095871.P7974037896760460530

`A213825(n+1)-A213773(n+1)`
-/

namespace A095871.P7974037896760460530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213825 (n + 1) - A213773 (n + 1)

end

end A095871.P7974037896760460530

namespace A095871

/-- `A213825(n+1)-A213773(n+1)` -/
def P7974037896760460530.Spec : Prop :=
  ∀ n, P7974037896760460530.a n = A095871 (n + 1)

theorem P7974037896760460530.correct : P7974037896760460530.Spec := by
  intro n
  simp only [A095871, Nat.add_sub_cancel, A095871.P7974037896760460530.a, A095871.P12080170565042940400.a, A049777, A049777.P8069278756495172327.a, A094728, A094728.P15119429803493593113.a, A213773, A213773.P8651754157967858797.a, A213825, A213825.P10893518524547997828.a, A004736, A004736.P10337537277358081527.a, A005449, A005449.P12864083839943164145.a, A213822, A213822.P7065334176716146466.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A213750, A213750.P11543633709042919296.a, A213752, A213752.P6712457032791748921.a, A213821, A213821.P9578737112397043331.a, A055461, A055461.P13333228572909301680.a, A122432, A122432.P16515211422386222308.a, A213500, A213500.P10415559373979276509.a, A213751, A213751.P3389573996948061720.a, A213771, A213771.P15097200566803793023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A095871

/-! ## A095871.P12080170565042940400

`2*A094728(n+1)-A049777(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095871

/-- `2*A094728(n+1)-A049777(n+1)` -/
def P12080170565042940400.Spec : Prop :=
  ∀ n, P12080170565042940400.a n = A095871 (n + 1)

theorem P12080170565042940400.correct : P12080170565042940400.Spec := by
  intro n
  simp only [A095871, Nat.add_sub_cancel]

end A095871

/-! ## A095871.P1500271731919481967

`2*A213761(n+1)-A213831(n+1)`
-/

namespace A095871.P1500271731919481967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213761 (n + 1) - A213831 (n + 1)

end

end A095871.P1500271731919481967

namespace A095871

/-- `2*A213761(n+1)-A213831(n+1)` -/
def P1500271731919481967.Spec : Prop :=
  ∀ n, P1500271731919481967.a n = A095871 (n + 1)

end A095871

/-! ## A095871.P10934465329771419479

`A096037(n+1)-A212012(n+1)/2`
-/

namespace A095871.P10934465329771419479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096037 (n + 1) : ℚ) - (A212012 (n + 1) : ℚ) / 2

end

end A095871.P10934465329771419479

namespace A095871

/-- `A096037(n+1)-A212012(n+1)/2` -/
def P10934465329771419479.Spec : Prop :=
  ∀ n, P10934465329771419479.a n = (A095871 (n + 1) : ℚ)

end A095871

/-! ## A095871.P17595624878196282416

`A049777(n+1)+A004736(n+1)*A051162(n)`
-/

namespace A095871.P17595624878196282416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A004736 (n + 1) * A051162 n

end

end A095871.P17595624878196282416

namespace A095871

/-- `A049777(n+1)+A004736(n+1)*A051162(n)` -/
def P17595624878196282416.Spec : Prop :=
  ∀ n, P17595624878196282416.a n = A095871 (n + 1)

end A095871

/-! ## A095871.P11577910114628878720

`A096037(n+1)-A000005(A130321(n))`
-/

namespace A095871.P11577910114628878720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096037 (n + 1) - A000005 (A130321 n).toNat

end

end A095871.P11577910114628878720

namespace A095871

/-- `A096037(n+1)-A000005(A130321(n))` -/
def P11577910114628878720.Spec : Prop :=
  ∀ n, P11577910114628878720.a n = A095871 (n + 1)

end A095871

/-!
# A095873: Triangle T(n,k) = (2*k-1)*(n+k-1)*(n-k+1) read by rows, 1<=k<=n.

The programs for A095873, the canonical program `A095873.P8926423178446248798` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095873 has offset 1).

The definition of A095873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(col(n)+1)-1)*(row(n)+1+col(n)+1-1)*(row(n)+1-col(n))` (program `A095873.P8926423178446248798`, by `A095873.P8926423178446248798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095873.P8926423178446248798

`(2*(col(n)+1)-1)*(row(n)+1+col(n)+1-1)*(row(n)+1-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095873

/-- `(2*(col(n)+1)-1)*(row(n)+1+col(n)+1-1)*(row(n)+1-col(n))` -/
def P8926423178446248798.Spec : Prop :=
  ∀ n, P8926423178446248798.a n = A095873 (n + 1)

theorem P8926423178446248798.correct : P8926423178446248798.Spec := by
  intro n
  simp only [A095873, Nat.add_sub_cancel]

end A095873

/-! ## A095873.P13442640004266974384

`(2*(col(n)+1)-1)*(row(n)+1+col(n)+1-1)*(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095873.P13442640004266974384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (SequenceMachineLib.triCol n + 1) : ℤ) - 1) * ((SequenceMachineLib.triRow n + 1 + (SequenceMachineLib.triCol n + 1) : ℤ) - 1) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1)

end

end A095873.P13442640004266974384

namespace A095873

/-- `(2*(col(n)+1)-1)*(row(n)+1+col(n)+1-1)*(row(n)+1-(col(n)+1)+1)` -/
def P13442640004266974384.Spec : Prop :=
  ∀ n, P13442640004266974384.a n = A095873 (n + 1)

theorem P13442640004266974384.correct : P13442640004266974384.Spec := by
  intro n
  simp only [A095873, Nat.add_sub_cancel, A095873.P13442640004266974384.a, A095873.P8926423178446248798.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095873

/-! ## A095873.P9955052743205076625

`(A051162(n)+1)*A101447(n)`
-/

namespace A095873.P9955052743205076625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051162 n + 1) * A101447 n

end

end A095873.P9955052743205076625

namespace A095873

/-- `(A051162(n)+1)*A101447(n)` -/
def P9955052743205076625.Spec : Prop :=
  ∀ n, P9955052743205076625.a n = A095873 (n + 1)

theorem P9955052743205076625.correct : P9955052743205076625.Spec := by
  intro n
  simp only [A095873, Nat.add_sub_cancel, A095873.P9955052743205076625.a, A095873.P8926423178446248798.a, A051162, A051162.P4484969187050632534.a, A101447, A101447.P4489853314784773764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095873

/-! ## A095873.P1926615178452569182

`A094727(n+1)*A101447(n)`
-/

namespace A095873.P1926615178452569182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) * A101447 n

end

end A095873.P1926615178452569182

namespace A095873

/-- `A094727(n+1)*A101447(n)` -/
def P1926615178452569182.Spec : Prop :=
  ∀ n, P1926615178452569182.a n = A095873 (n + 1)

theorem P1926615178452569182.correct : P1926615178452569182.Spec := by
  intro n
  simp only [A095873, Nat.add_sub_cancel, A095873.P1926615178452569182.a, A095873.P8926423178446248798.a, A094727, A094727.P1041695477673985807.a, A101447, A101447.P4489853314784773764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095873

/-! ## A095873.P1410410163251912020

`A094728(n+1)*A158405(n+1)`
-/

namespace A095873.P1410410163251912020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) * A158405 (n + 1)

end

end A095873.P1410410163251912020

namespace A095873

/-- `A094728(n+1)*A158405(n+1)` -/
def P1410410163251912020.Spec : Prop :=
  ∀ n, P1410410163251912020.a n = A095873 (n + 1)

theorem P1410410163251912020.correct : P1410410163251912020.Spec := by
  intro n
  simp only [A095873, Nat.add_sub_cancel, A095873.P1410410163251912020.a, A095873.P8926423178446248798.a, A094728, A094728.P15119429803493593113.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095873

/-! ## A095873.P5566382555177551970

`(A108872(n+1)-1)*A101447(n)`
-/

namespace A095873.P5566382555177551970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) - 1) * A101447 n

end

end A095873.P5566382555177551970

namespace A095873

/-- `(A108872(n+1)-1)*A101447(n)` -/
def P5566382555177551970.Spec : Prop :=
  ∀ n, P5566382555177551970.a n = A095873 (n + 1)

end A095873

/-! ## A095873.P14916172172888314769

`A005408(A002262(n))*A094728(n+1)`
-/

namespace A095873.P14916172172888314769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A002262 n).toNat * A094728 (n + 1)

end

end A095873.P14916172172888314769

namespace A095873

/-- `A005408(A002262(n))*A094728(n+1)` -/
def P14916172172888314769.Spec : Prop :=
  ∀ n, P14916172172888314769.a n = A095873 (n + 1)

end A095873

/-! ## A095873.P4789685586399560254

`A004273(A002260(n+1))*A094728(n+1)`
-/

namespace A095873.P4789685586399560254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002260 (n + 1)).toNat * A094728 (n + 1)

end

end A095873.P4789685586399560254

namespace A095873

/-- `A004273(A002260(n+1))*A094728(n+1)` -/
def P4789685586399560254.Spec : Prop :=
  ∀ n, P4789685586399560254.a n = A095873 (n + 1)

end A095873

/-! ## A095873.P9543365356833574668

`A094728(n+1)/A004736(n+1)*A101447(n)`
-/

namespace A095873.P9543365356833574668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094728 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A101447 n : ℚ)

end

end A095873.P9543365356833574668

namespace A095873

/-- `A094728(n+1)/A004736(n+1)*A101447(n)` -/
def P9543365356833574668.Spec : Prop :=
  ∀ n, P9543365356833574668.a n = (A095873 (n + 1) : ℚ)

end A095873

/-! ## A095873.P1285138109443858985

`A074294(2*n+1)*A094728(n+1)`
-/

namespace A095873.P1285138109443858985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074294 (2 * n + 1) * A094728 (n + 1)

end

end A095873.P1285138109443858985

namespace A095873

/-- `A074294(2*n+1)*A094728(n+1)` -/
def P1285138109443858985.Spec : Prop :=
  ∀ n, P1285138109443858985.a n = A095873 (n + 1)

end A095873

/-! ## A095873.P7219122202890423207

`(A158894(n+1)-2)*A094728(n+1)`
-/

namespace A095873.P7219122202890423207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158894 (n + 1) - 2) * A094728 (n + 1)

end

end A095873.P7219122202890423207

namespace A095873

/-- `(A158894(n+1)-2)*A094728(n+1)` -/
def P7219122202890423207.Spec : Prop :=
  ∀ n, P7219122202890423207.a n = A095873 (n + 1)

theorem P7219122202890423207.correct : P7219122202890423207.Spec := by
  intro n
  simp only [A095873, Nat.add_sub_cancel, A095873.P7219122202890423207.a, A095873.P8926423178446248798.a, A094728, A094728.P15119429803493593113.a, A158894, A158894.P8366770793697318187.a, A158405, A158405.P5173674940907569791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095873

/-! ## A095873.P3086483665996032133

`A000265(A054582(n))*A094728(n+1)`
-/

namespace A095873.P3086483665996032133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A054582 n).toNat * A094728 (n + 1)

end

end A095873.P3086483665996032133

namespace A095873

/-- `A000265(A054582(n))*A094728(n+1)` -/
def P3086483665996032133.Spec : Prop :=
  ∀ n, P3086483665996032133.a n = A095873 (n + 1)

end A095873

/-!
# A095874: a(n) = k if n = A000961(k) (powers of primes), a(n) = 0 if n is not in A000961.

The programs for A095874, the canonical program `A095874.P2652123685458855857` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095874 has offset 1).

The definition of A095874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095874.P3713757069669985305

`A322981(n+1)+A010055(n+1)`
-/

namespace A095874.P3713757069669985305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322981 (n + 1) + A010055 (n + 1)

end

end A095874.P3713757069669985305

namespace A095874

/-- `A322981(n+1)+A010055(n+1)` -/
def P3713757069669985305.Spec : Prop :=
  ∀ n, P3713757069669985305.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P458917016247080262

`A010055(n+1)*A065515(n+1)`
-/

namespace A095874.P458917016247080262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A065515 (n + 1)

end

end A095874.P458917016247080262

namespace A095874

/-- `A010055(n+1)*A065515(n+1)` -/
def P458917016247080262.Spec : Prop :=
  ∀ n, P458917016247080262.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P3564888656825010222

`A010055(n+1)*A097621(n+1)`
-/

namespace A095874.P3564888656825010222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A097621 (n + 1)

end

end A095874.P3564888656825010222

namespace A095874

/-- `A010055(n+1)*A097621(n+1)` -/
def P3564888656825010222.Spec : Prop :=
  ∀ n, P3564888656825010222.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P7272280295395546982

`A322981(n+1)+1-A143731(n+1)`
-/

namespace A095874.P7272280295395546982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322981 (n + 1) + (1 - A143731 (n + 1))

end

end A095874.P7272280295395546982

namespace A095874

/-- `A322981(n+1)+1-A143731(n+1)` -/
def P7272280295395546982.Spec : Prop :=
  ∀ n, P7272280295395546982.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P9999360957943373054

`(A025528(n+1)+1)*A010055(n+1)`
-/

namespace A095874.P9999360957943373054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025528 (n + 1) + 1) * A010055 (n + 1)

end

end A095874.P9999360957943373054

namespace A095874

/-- `(A025528(n+1)+1)*A010055(n+1)` -/
def P9999360957943373054.Spec : Prop :=
  ∀ n, P9999360957943373054.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P1095911226312221592

`(A330292(n+1)+1)*A010055(n+1)`
-/

namespace A095874.P1095911226312221592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330292 (n + 1) + 1) * A010055 (n + 1)

end

end A095874.P1095911226312221592

namespace A095874

/-- `(A330292(n+1)+1)*A010055(n+1)` -/
def P1095911226312221592.Spec : Prop :=
  ∀ n, P1095911226312221592.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P9871981306569573072

`(1-A143731(n+1))*A065515(n+1)`
-/

namespace A095874.P9871981306569573072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A143731 (n + 1)) * A065515 (n + 1)

end

end A095874.P9871981306569573072

namespace A095874

/-- `(1-A143731(n+1))*A065515(n+1)` -/
def P9871981306569573072.Spec : Prop :=
  ∀ n, P9871981306569573072.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P4678704552111298162

`A001221(n+1)!%2*∑[A010055(n+1)]`
-/

namespace A095874.P4678704552111298162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A001221 (n + 1)).toNat % 2 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095874.P4678704552111298162

namespace A095874

/-- `A001221(n+1)!%2*∑[A010055(n+1)]` -/
def P4678704552111298162.Spec : Prop :=
  ∀ n, P4678704552111298162.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P2652123685458855857

`∑[A354924(2*(n+1))]*A354924(2*(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095874

/-- `∑[A354924(2*(n+1))]*A354924(2*(n+1))` -/
def P2652123685458855857.Spec : Prop :=
  ∀ n, P2652123685458855857.a n = A095874 (n + 1)

theorem P2652123685458855857.correct : P2652123685458855857.Spec := by
  intro n
  simp only [A095874, Nat.add_sub_cancel]

end A095874

/-! ## A095874.P146081194218512092

`A001222(A014963(n+1))^n*∑[A010055(n+1)]`
-/

namespace A095874.P146081194218512092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (n + 1)).toNat ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095874.P146081194218512092

namespace A095874

/-- `A001222(A014963(n+1))^n*∑[A010055(n+1)]` -/
def P146081194218512092.Spec : Prop :=
  ∀ n, P146081194218512092.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P4874154451444474976

`(A085501(n+1)+A000720(n+1))*A010055(n+1)`
-/

namespace A095874.P4874154451444474976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A085501 (n + 1) + A000720 (n + 1)) * A010055 (n + 1)

end

end A095874.P4874154451444474976

namespace A095874

/-- `(A085501(n+1)+A000720(n+1))*A010055(n+1)` -/
def P4874154451444474976.Spec : Prop :=
  ∀ n, P4874154451444474976.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P17190305037663647592

`A010055(n+1)+A069513(n+1)*A333235(n+1)`
-/

namespace A095874.P17190305037663647592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) + A069513 (n + 1) * A333235 (n + 1)

end

end A095874.P17190305037663647592

namespace A095874

/-- `A010055(n+1)+A069513(n+1)*A333235(n+1)` -/
def P17190305037663647592.Spec : Prop :=
  ∀ n, P17190305037663647592.a n = A095874 (n + 1)

end A095874

/-! ## A095874.P3264740347527784401

`Δ[A097621(A000015(n+1))]*A097621(n+1)`
-/

namespace A095874.P3264740347527784401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097621 (A000015 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097621 (n + 1)

end

end A095874.P3264740347527784401

namespace A095874

/-- `Δ[A097621(A000015(n+1))]*A097621(n+1)` -/
def P3264740347527784401.Spec : Prop :=
  ∀ n, P3264740347527784401.a n = A095874 (n + 1)

end A095874

/-!
# A095875: Number of lattice points on graph of parabola y >= x^2 with y <= n.

The programs for A095875, there is no canonical definition to state claims against.
-/

/-! ## A095875.P9389638129520498501

`∑[2*ceil(sqrt(n))]-n`
-/

namespace A095875.P9389638129520498501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A095875.P9389638129520498501

/-! ## A095875.P8251690115797759871

`∑[comp[∑[n*n%2+1]]-n]`
-/

namespace A095875.P8251690115797759871
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P8251690115797759871

/-! ## A095875.P3632246337932882996

`∑[comp[∑[lcm(2, n)-(n-1)]]-n]`
-/

namespace A095875.P3632246337932882996
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P3632246337932882996

/-! ## A095875.P5736878213538295711

`∑[comp[∑[(n+1)^and(1, n)]]-n]`
-/

namespace A095875.P5736878213538295711
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P5736878213538295711

/-! ## A095875.P659349397410170559

`∑[a(n-a(n-2))+2]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A095875.P659349397410170559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f1 =>
  f1 (n - f1 (n - 2)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P659349397410170559

/-! ## A095875.P636606935094134672

`∑[A004273(ceil(sqrt(n)))]`
-/

namespace A095875.P636606935094134672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌈Real.sqrt (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P636606935094134672

/-! ## A095875.P7146121043745714632

`∑[∑[A000122(n)]-A000122(n)]`
-/

namespace A095875.P7146121043745714632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P7146121043745714632

/-! ## A095875.P16092345224016864028

`∑[∑[A214304(2*n)]-A214304(2*n)]`
-/

namespace A095875.P16092345224016864028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214304 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A214304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P16092345224016864028

/-! ## A095875.P1053476943160796102

`∑[∑[A000122(xor(2, n+1))]]`
-/

namespace A095875.P1053476943160796102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.xor 2 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P1053476943160796102

/-! ## A095875.P13839677171103299995

`∑[A086520(n+1)+A086520(n)]`
-/

namespace A095875.P13839677171103299995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (n + 1) + A086520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P13839677171103299995

/-! ## A095875.P1567816652529625179

`∑[A055086(ceil(sqrt(n))²)]`
-/

namespace A095875.P1567816652529625179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (⌈Real.sqrt (n : ℝ)⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P1567816652529625179

/-! ## A095875.P10788168755688904676

`∑[A086520(4*n)]`
-/

namespace A095875.P10788168755688904676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095875.P10788168755688904676

/-!
# A095876: Triangle read by rows: T(n,k) = k^(n^2), n>=1, 1<=k<=n.

The programs for A095876, the canonical program `A095876.P9486946131974945108` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095876 has offset 1).

The definition of A095876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)^(row(n)+1)²` (program `A095876.P9486946131974945108`, by `A095876.P9486946131974945108.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095876.P9486946131974945108

`(col(n)+1)^(row(n)+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095876

/-- `(col(n)+1)^(row(n)+1)²` -/
def P9486946131974945108.Spec : Prop :=
  ∀ n, (P9486946131974945108.a n : ℤ) = A095876 (n + 1)

theorem P9486946131974945108.correct : P9486946131974945108.Spec := by
  intro n
  simp only [A095876, Nat.add_sub_cancel]

end A095876

/-! ## A095876.P1213835710369612809

`(col(n)+1)^(row(n)+1)^2`
-/

namespace A095876.P1213835710369612809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) ^ (SequenceMachineLib.triRow n + 1) ^ 2

end

end A095876.P1213835710369612809

namespace A095876

/-- `(col(n)+1)^(row(n)+1)^2` -/
def P1213835710369612809.Spec : Prop :=
  ∀ n, (P1213835710369612809.a n : ℤ) = A095876 (n + 1)

theorem P1213835710369612809.correct : P1213835710369612809.Spec := by
  intro n
  simp only [A095876, Nat.add_sub_cancel, A095876.P1213835710369612809.a, A095876.P9486946131974945108.a, SequenceMachineLib.memo_apply]

end A095876

/-! ## A095876.P10388875212715358213

`A089072(n+1)^∑[char[∑[n]]]`
-/

namespace A095876.P10388875212715358213
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095876.P10388875212715358213

namespace A095876

/-- `A089072(n+1)^∑[char[∑[n]]]` -/
def P10388875212715358213.Spec : Prop :=
  ∀ n, P10388875212715358213.a n = A095876 (n + 1)

end A095876

/-! ## A095876.P8674626361270029125

`A002260(n+1)^∑[char[∑[n]]]²`
-/

namespace A095876.P8674626361270029125
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095876.P8674626361270029125

namespace A095876

/-- `A002260(n+1)^∑[char[∑[n]]]²` -/
def P8674626361270029125.Spec : Prop :=
  ∀ n, P8674626361270029125.a n = A095876 (n + 1)

end A095876

/-! ## A095876.P8157987399387688879

`(A002262(n)+1)^∑[char[∑[n]]]²`
-/

namespace A095876.P8157987399387688879
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095876.P8157987399387688879

namespace A095876

/-- `(A002262(n)+1)^∑[char[∑[n]]]²` -/
def P8157987399387688879.Spec : Prop :=
  ∀ n, P8157987399387688879.a n = A095876 (n + 1)

end A095876

/-! ## A095876.P12206550631534369882

`A048151(comp[∑[n]])^A002024(n+1)²`
-/

namespace A095876.P12206550631534369882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A002024 (n + 1) ^ 2 : ℤ)

end

end A095876.P12206550631534369882

namespace A095876

/-- `A048151(comp[∑[n]])^A002024(n+1)²` -/
def P12206550631534369882.Spec : Prop :=
  ∀ n, P12206550631534369882.a n = (A095876 (n + 1) : ℚ)

end A095876

/-! ## A095876.P1134685851124721374

`ceil(A158405(n+1)/2)^A002024(n+1)²`
-/

namespace A095876.P1134685851124721374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A158405 (n + 1) : ℚ) / 2⌉ : ℚ) ^ (A002024 (n + 1) ^ 2 : ℤ)

end

end A095876.P1134685851124721374

namespace A095876

/-- `ceil(A158405(n+1)/2)^A002024(n+1)²` -/
def P1134685851124721374.Spec : Prop :=
  ∀ n, P1134685851124721374.a n = (A095876 (n + 1) : ℚ)

end A095876

/-! ## A095876.P2833520961860923354

`(A057554(2*n+1)+1)^A002024(n+1)²`
-/

namespace A095876.P2833520961860923354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * n + 1) + 1 : ℚ) ^ (A002024 (n + 1) ^ 2 : ℤ)

end

end A095876.P2833520961860923354

namespace A095876

/-- `(A057554(2*n+1)+1)^A002024(n+1)²` -/
def P2833520961860923354.Spec : Prop :=
  ∀ n, P2833520961860923354.a n = (A095876 (n + 1) : ℚ)

end A095876

/-! ## A095876.P4067769623794931958

`(A057555(2*n+1)%(n+2))^A002024(n+1)²`
-/

namespace A095876.P4067769623794931958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A057555 (2 * n + 1)) (n + 2 : ℤ) : ℚ) ^ (A002024 (n + 1) ^ 2 : ℤ)

end

end A095876.P4067769623794931958

namespace A095876

/-- `(A057555(2*n+1)%(n+2))^A002024(n+1)²` -/
def P4067769623794931958.Spec : Prop :=
  ∀ n, P4067769623794931958.a n = (A095876 (n + 1) : ℚ)

end A095876

/-! ## A095876.P1557836850827231526

`(comp[∑[n]]-n-A004736(n+1))^A002024(n+1)²`
-/

namespace A095876.P1557836850827231526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - A004736 (n + 1) : ℚ) ^ (A002024 (n + 1) ^ 2 : ℤ)

end

end A095876.P1557836850827231526

namespace A095876

/-- `(comp[∑[n]]-n-A004736(n+1))^A002024(n+1)²` -/
def P1557836850827231526.Spec : Prop :=
  ∀ n, P1557836850827231526.a n = (A095876 (n + 1) : ℚ)

end A095876

/-!
# A095877: Numbers n such that the middle coefficient of the cyclotomic polynomial Phi_n(x) has a value not obtained for any smaller n.

The programs for A095877, there is no canonical definition to state claims against.
-/

/-! ## A095877.P2343864911553043325

`A075927(a(n-2))` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A095877.P2343864911553043325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  A075927 (a (n - 2)).toNat

end

end A095877.P2343864911553043325

/-!
# A095879: Numbers whose lazy Fibonacci representation has an odd number of summands.

The programs for A095879, the canonical program `A095879.P11268463583022771490` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095879 has offset 1).

The definition of A095879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095879.P11268463583022771490

`comp[A095880(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A095879

/-- `comp[A095880(n+1)]` -/
def P11268463583022771490.Spec : Prop :=
  ∀ n, (P11268463583022771490.a n : ℤ) = A095879 (n + 1)

theorem P11268463583022771490.correct : P11268463583022771490.Spec := by
  intro n
  simp only [A095879, Nat.add_sub_cancel]

end A095879

/-! ## A095879.P9185217222857636213

`record[(n+1)*A112310(n+1)%2]`
-/

namespace A095879.P9185217222857636213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A112310 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095879.P9185217222857636213

namespace A095879

/-- `record[(n+1)*A112310(n+1)%2]` -/
def P9185217222857636213.Spec : Prop :=
  ∀ n, P9185217222857636213.a n = A095879 (n + 1)

end A095879

/-! ## A095879.P18030832194020553792

`lt[A294067(A112310(n)), 0]`
-/

namespace A095879.P18030832194020553792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095879.P18030832194020553792

namespace A095879

/-- `lt[A294067(A112310(n)), 0]` -/
def P18030832194020553792.Spec : Prop :=
  ∀ n, (P18030832194020553792.a n : ℤ) = A095879 (n + 1)

end A095879

/-! ## A095879.P4809894846462805630

`eq[1, A106400(A003754(n+1))+2]`
-/

namespace A095879.P4809894846462805630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A003754 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095879.P4809894846462805630

namespace A095879

/-- `eq[1, A106400(A003754(n+1))+2]` -/
def P4809894846462805630.Spec : Prop :=
  ∀ n, (P4809894846462805630.a n : ℤ) = A095879 (n + 1)

end A095879

/-! ## A095879.P2536471523608435783

`record[(n+1)*A000120(A003754(n+2))%2]`
-/

namespace A095879.P2536471523608435783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000120 (A003754 (n + 2)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095879.P2536471523608435783

namespace A095879

/-- `record[(n+1)*A000120(A003754(n+2))%2]` -/
def P2536471523608435783.Spec : Prop :=
  ∀ n, P2536471523608435783.a n = A095879 (n + 1)

end A095879

/-! ## A095879.P13268568527367048265

`eq[1, A106400(A247648(n+1))]`
-/

namespace A095879.P13268568527367048265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A247648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095879.P13268568527367048265

namespace A095879

/-- `eq[1, A106400(A247648(n+1))]` -/
def P13268568527367048265.Spec : Prop :=
  ∀ n, (P13268568527367048265.a n : ℤ) = A095879 (n + 1)

end A095879

/-!
# A095880: Numbers whose lazy Fibonacci representation has an even number of summands.

The programs for A095880, the canonical program `A095880.P1900210885246212965` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095880 has offset 1).

The definition of A095880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095880.P15608821326687157880

`comp[A095879(n+1)]`
-/

namespace A095880.P15608821326687157880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095880.P15608821326687157880

namespace A095880

/-- `comp[A095879(n+1)]` -/
def P15608821326687157880.Spec : Prop :=
  ∀ n, (P15608821326687157880.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P1900210885246212965

`eq[1, A000034(A112310(n))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A095880

/-- `eq[1, A000034(A112310(n))]` -/
def P1900210885246212965.Spec : Prop :=
  ∀ n, (P1900210885246212965.a n : ℤ) = A095880 (n + 1)

theorem P1900210885246212965.correct : P1900210885246212965.Spec := by
  intro n
  simp only [A095880, Nat.add_sub_cancel]

end A095880

/-! ## A095880.P15807439311888644087

`record[n*A000035(A112310(n)+1)]`
-/

namespace A095880.P15807439311888644087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A112310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095880.P15807439311888644087

namespace A095880

/-- `record[n*A000035(A112310(n)+1)]` -/
def P15807439311888644087.Spec : Prop :=
  ∀ n, P15807439311888644087.a n = A095880 (n + 1)

end A095880

/-! ## A095880.P14560913563099166446

`lt[A010052(n), A294067(A112310(n))]`
-/

namespace A095880.P14560913563099166446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095880.P14560913563099166446

namespace A095880

/-- `lt[A010052(n), A294067(A112310(n))]` -/
def P14560913563099166446.Spec : Prop :=
  ∀ n, (P14560913563099166446.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P3439041592976622179

`lt[A001221(n+1), A294067(A112310(n))]`
-/

namespace A095880.P3439041592976622179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095880.P3439041592976622179

namespace A095880

/-- `lt[A001221(n+1), A294067(A112310(n))]` -/
def P3439041592976622179.Spec : Prop :=
  ∀ n, (P3439041592976622179.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P7495238677208592144

`lt[A005361(n+1), A294067(A112310(n))]`
-/

namespace A095880.P7495238677208592144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095880.P7495238677208592144

namespace A095880

/-- `lt[A005361(n+1), A294067(A112310(n))]` -/
def P7495238677208592144.Spec : Prop :=
  ∀ n, (P7495238677208592144.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P17501374295831326397

`lt[A008683(n+1), A294067(A112310(n))]`
-/

namespace A095880.P17501374295831326397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095880.P17501374295831326397

namespace A095880

/-- `lt[A008683(n+1), A294067(A112310(n))]` -/
def P17501374295831326397.Spec : Prop :=
  ∀ n, (P17501374295831326397.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P17668950010913594954

`lt[A010892(n), A294067(A112310(n))]`
-/

namespace A095880.P17668950010913594954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095880.P17668950010913594954

namespace A095880

/-- `lt[A010892(n), A294067(A112310(n))]` -/
def P17668950010913594954.Spec : Prop :=
  ∀ n, (P17668950010913594954.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P5622321959940660485

`lt[A000188(n+1), A294067(A112310(n))]`
-/

namespace A095880.P5622321959940660485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095880.P5622321959940660485

namespace A095880

/-- `lt[A000188(n+1), A294067(A112310(n))]` -/
def P5622321959940660485.Spec : Prop :=
  ∀ n, (P5622321959940660485.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P7046947345442372466

`lt[A092520(n+1), A294067(A112310(n))]`
-/

namespace A095880.P7046947345442372466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294067 (A112310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095880.P7046947345442372466

namespace A095880

/-- `lt[A092520(n+1), A294067(A112310(n))]` -/
def P7046947345442372466.Spec : Prop :=
  ∀ n, (P7046947345442372466.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P14536502069418275224

`eq[1, A106400(A003754(n+1))]`
-/

namespace A095880.P14536502069418275224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A003754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095880.P14536502069418275224

namespace A095880

/-- `eq[1, A106400(A003754(n+1))]` -/
def P14536502069418275224.Spec : Prop :=
  ∀ n, (P14536502069418275224.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P18219507715751519399

`eq[1, A106400(A247648(n+1)-1)]`
-/

namespace A095880.P18219507715751519399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (A247648 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095880.P18219507715751519399

namespace A095880

/-- `eq[1, A106400(A247648(n+1)-1)]` -/
def P18219507715751519399.Spec : Prop :=
  ∀ n, (P18219507715751519399.a n : ℤ) = A095880 (n + 1)

end A095880

/-! ## A095880.P12544943090591337460

`eq[1, A106400(xor(1, A247648(n+1)))]`
-/

namespace A095880.P12544943090591337460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (Int.xor 1 (A247648 (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095880.P12544943090591337460

namespace A095880

/-- `eq[1, A106400(xor(1, A247648(n+1)))]` -/
def P12544943090591337460.Spec : Prop :=
  ∀ n, (P12544943090591337460.a n : ℤ) = A095880 (n + 1)

end A095880

/-!
# A095881: Triangle read by rows: T(n,k) = (n-k+1)^(n^2), n>=1, 1<=k<=n.

The programs for A095881, there is no canonical definition to state claims against.
-/

/-! ## A095881.P7887229436172437973

`A004736(n+1)^∑[char[∑[n]]]²`
-/

namespace A095881.P7887229436172437973
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095881.P7887229436172437973

/-! ## A095881.P17111843960509621131

`(A025581(n)+1)^∑[char[∑[n]]]²`
-/

namespace A095881.P17111843960509621131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095881.P17111843960509621131

/-! ## A095881.P8902043380684332852

`(C(comp[∑[n]]-n, 2)-n)^A093995(n+1)`
-/

namespace A095881.P8902043380684332852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A093995 (n + 1) : ℤ)

end

end A095881.P8902043380684332852

/-! ## A095881.P8611848249323510847

`(C(comp[∑[n]]-n, 2)-n)^A002024(n+1)²`
-/

namespace A095881.P8611848249323510847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A002024 (n + 1) ^ 2 : ℤ)

end

end A095881.P8611848249323510847

/-! ## A095881.P6718824801739142631

`(C(comp[∑[n]]-n, 2)-n)^(A003056(n)+1)²`
-/

namespace A095881.P6718824801739142631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ ((A003056 n + 1) ^ 2 : ℤ)

end

end A095881.P6718824801739142631

/-!
# A095882: Triangle read by rows: T(n,k) = (n-k)^(n^2), n>=1, 1<=k<=n.

The programs for A095882, the canonical program `A095882.P12469840895354526057` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095882 has offset 1).

The definition of A095882 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1))^(row(n)+1)²` (program `A095882.P12469840895354526057`, by `A095882.P12469840895354526057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095882.P12469840895354526057

`(row(n)+1-(col(n)+1))^(row(n)+1)²`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095882

/-- `(row(n)+1-(col(n)+1))^(row(n)+1)²` -/
def P12469840895354526057.Spec : Prop :=
  ∀ n, P12469840895354526057.a n = A095882 (n + 1)

theorem P12469840895354526057.correct : P12469840895354526057.Spec := by
  intro n
  simp only [A095882, Nat.add_sub_cancel]

end A095882

/-! ## A095882.P8853262446229087855

`(row(n)-col(n))^(row(n)+1)²`
-/

namespace A095882.P8853262446229087855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ (SequenceMachineLib.triRow n + 1) ^ 2

end

end A095882.P8853262446229087855

namespace A095882

/-- `(row(n)-col(n))^(row(n)+1)²` -/
def P8853262446229087855.Spec : Prop :=
  ∀ n, P8853262446229087855.a n = A095882 (n + 1)

theorem P8853262446229087855.correct : P8853262446229087855.Spec := by
  intro n
  simp only [A095882, Nat.add_sub_cancel, A095882.P8853262446229087855.a, A095882.P12469840895354526057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095882

/-! ## A095882.P10481073318448267336

`(row(n)-col(n))^(row(n)+1)^2`
-/

namespace A095882.P10481073318448267336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ (SequenceMachineLib.triRow n + 1) ^ 2

end

end A095882.P10481073318448267336

namespace A095882

/-- `(row(n)-col(n))^(row(n)+1)^2` -/
def P10481073318448267336.Spec : Prop :=
  ∀ n, P10481073318448267336.a n = A095882 (n + 1)

theorem P10481073318448267336.correct : P10481073318448267336.Spec := by
  intro n
  simp only [A095882, Nat.add_sub_cancel, A095882.P10481073318448267336.a, A095882.P12469840895354526057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095882

/-! ## A095882.P4414455302632258571

`A025581(n)^∑[char[∑[n]]]²`
-/

namespace A095882.P4414455302632258571
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095882.P4414455302632258571

namespace A095882

/-- `A025581(n)^∑[char[∑[n]]]²` -/
def P4414455302632258571.Spec : Prop :=
  ∀ n, P4414455302632258571.a n = A095882 (n + 1)

end A095882

/-! ## A095882.P18153796305682479863

`A025660(n+1)^∑[char[∑[n]]]²`
-/

namespace A095882.P18153796305682479863
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095882.P18153796305682479863

namespace A095882

/-- `A025660(n+1)^∑[char[∑[n]]]²` -/
def P18153796305682479863.Spec : Prop :=
  ∀ n, P18153796305682479863.a n = A095882 (n + 1)

end A095882

/-! ## A095882.P1791319377606782845

`(A004736(n+1)-1)^∑[char[∑[n]]]²`
-/

namespace A095882.P1791319377606782845
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095882.P1791319377606782845

namespace A095882

/-- `(A004736(n+1)-1)^∑[char[∑[n]]]²` -/
def P1791319377606782845.Spec : Prop :=
  ∀ n, P1791319377606782845.a n = A095882 (n + 1)

end A095882

/-! ## A095882.P6577975060032744733

`((A099375(n)-1)/2)^∑[char[∑[n]]]²`
-/

namespace A095882.P6577975060032744733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A099375 n - 1 : ℚ) / 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A095882.P6577975060032744733

namespace A095882

/-- `((A099375(n)-1)/2)^∑[char[∑[n]]]²` -/
def P6577975060032744733.Spec : Prop :=
  ∀ n, P6577975060032744733.a n = (A095882 (n + 1) : ℚ)

end A095882

/-! ## A095882.P12713228727084695563

`(C(comp[∑[n]]-n, 2)-(n+1))^A093995(n+1)`
-/

namespace A095882.P12713228727084695563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A093995 (n + 1) : ℤ)

end

end A095882.P12713228727084695563

namespace A095882

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A093995(n+1)` -/
def P12713228727084695563.Spec : Prop :=
  ∀ n, P12713228727084695563.a n = (A095882 (n + 1) : ℚ)

end A095882

/-! ## A095882.P7365325293866030661

`(C(comp[∑[n]]-n, 2)-(n+1))^A002024(n+1)²`
-/

namespace A095882.P7365325293866030661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A002024 (n + 1) ^ 2 : ℤ)

end

end A095882.P7365325293866030661

namespace A095882

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A002024(n+1)²` -/
def P7365325293866030661.Spec : Prop :=
  ∀ n, P7365325293866030661.a n = (A095882 (n + 1) : ℚ)

end A095882

/-! ## A095882.P3274372348957100419

`(C(comp[∑[n]]-n, 2)-(n+1))^A183110(n+1)²`
-/

namespace A095882.P3274372348957100419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℚ) ^ (A183110 (n + 1) ^ 2 : ℤ)

end

end A095882.P3274372348957100419

namespace A095882

/-- `(C(comp[∑[n]]-n, 2)-(n+1))^A183110(n+1)²` -/
def P3274372348957100419.Spec : Prop :=
  ∀ n, P3274372348957100419.a n = (A095882 (n + 1) : ℚ)

end A095882

/-!
# A095884: Triangle read by rows: T(n,k) = (n-k)^k, n>=1, 1<=k<=n.

The programs for A095884, the canonical program `A095884.P3528204295564383313` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095884 has offset 1).

The definition of A095884 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1))^(col(n)+1)` (program `A095884.P3528204295564383313`, by `A095884.P3528204295564383313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095884.P3528204295564383313

`(row(n)+1-(col(n)+1))^(col(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095884

/-- `(row(n)+1-(col(n)+1))^(col(n)+1)` -/
def P3528204295564383313.Spec : Prop :=
  ∀ n, P3528204295564383313.a n = A095884 (n + 1)

theorem P3528204295564383313.correct : P3528204295564383313.Spec := by
  intro n
  simp only [A095884, Nat.add_sub_cancel]

end A095884

/-! ## A095884.P1516702906492798816

`(row(n)-col(n))^(1+col(n))`
-/

namespace A095884.P1516702906492798816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ (1 + SequenceMachineLib.triCol n)

end

end A095884.P1516702906492798816

namespace A095884

/-- `(row(n)-col(n))^(1+col(n))` -/
def P1516702906492798816.Spec : Prop :=
  ∀ n, P1516702906492798816.a n = A095884 (n + 1)

theorem P1516702906492798816.correct : P1516702906492798816.Spec := by
  intro n
  simp only [A095884, Nat.add_sub_cancel, A095884.P1516702906492798816.a, A095884.P3528204295564383313.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095884

/-! ## A095884.P3969998769041778928

`(row(n)-col(n))^col(n)*(row(n)-col(n))`
-/

namespace A095884.P3969998769041778928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ SequenceMachineLib.triCol n * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A095884.P3969998769041778928

namespace A095884

/-- `(row(n)-col(n))^col(n)*(row(n)-col(n))` -/
def P3969998769041778928.Spec : Prop :=
  ∀ n, P3969998769041778928.a n = A095884 (n + 1)

theorem P3969998769041778928.correct : P3969998769041778928.Spec := by
  intro n
  simp only [A095884, Nat.add_sub_cancel, A095884.P3969998769041778928.a, A095884.P3528204295564383313.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095884

/-! ## A095884.P15221690521068664369

`A003992(comp[∑[n]])`
-/

namespace A095884.P15221690521068664369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A095884.P15221690521068664369

namespace A095884

/-- `A003992(comp[∑[n]])` -/
def P15221690521068664369.Spec : Prop :=
  ∀ n, P15221690521068664369.a n = A095884 (n + 1)

end A095884

/-! ## A095884.P13222660353111274223

`A003992(n)*A025581(n)`
-/

namespace A095884.P13222660353111274223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A025581 n

end

end A095884.P13222660353111274223

namespace A095884

/-- `A003992(n)*A025581(n)` -/
def P13222660353111274223.Spec : Prop :=
  ∀ n, P13222660353111274223.a n = A095884 (n + 1)

theorem P13222660353111274223.correct : P13222660353111274223.Spec := by
  intro n
  simp only [A095884, Nat.add_sub_cancel, A095884.P13222660353111274223.a, A095884.P3528204295564383313.a, A003992, A003992.P8677390724628917664.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A095884

/-! ## A095884.P18335844066550324298

`log2(A130321(n))*A003992(n)`
-/

namespace A095884.P18335844066550324298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) * (A003992 n : ℝ)

end

end A095884.P18335844066550324298

namespace A095884

/-- `log2(A130321(n))*A003992(n)` -/
def P18335844066550324298.Spec : Prop :=
  ∀ n, P18335844066550324298.a n = (A095884 (n + 1) : ℝ)

end A095884

/-! ## A095884.P12182297228660988217

`A067066(n+1)-A238339(n)`
-/

namespace A095884.P12182297228660988217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067066 (n + 1) - A238339 n

end

end A095884.P12182297228660988217

namespace A095884

/-- `A067066(n+1)-A238339(n)` -/
def P12182297228660988217.Spec : Prop :=
  ∀ n, P12182297228660988217.a n = A095884 (n + 1)

end A095884

/-! ## A095884.P761760999103049026

`A025581(n)^A002260(n+1)`
-/

namespace A095884.P761760999103049026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A095884.P761760999103049026

namespace A095884

/-- `A025581(n)^A002260(n+1)` -/
def P761760999103049026.Spec : Prop :=
  ∀ n, P761760999103049026.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P12489280731951805177

`(A004736(n+1)-1)*A003992(n)`
-/

namespace A095884.P12489280731951805177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) * A003992 n

end

end A095884.P12489280731951805177

namespace A095884

/-- `(A004736(n+1)-1)*A003992(n)` -/
def P12489280731951805177.Spec : Prop :=
  ∀ n, P12489280731951805177.a n = A095884 (n + 1)

end A095884

/-! ## A095884.P8255596331507134010

`(A004736(n+1)-1)^A002260(n+1)`
-/

namespace A095884.P8255596331507134010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A095884.P8255596331507134010

namespace A095884

/-- `(A004736(n+1)-1)^A002260(n+1)` -/
def P8255596331507134010.Spec : Prop :=
  ∀ n, P8255596331507134010.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P13171519056975612106

`(A057555(2*(n+1))-1)^A002260(n+1)`
-/

namespace A095884.P13171519056975612106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * (n + 1)) - 1 : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A095884.P13171519056975612106

namespace A095884

/-- `(A057555(2*(n+1))-1)^A002260(n+1)` -/
def P13171519056975612106.Spec : Prop :=
  ∀ n, P13171519056975612106.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P10482455383776657149

`(A000217(round(sqrt(2*n+1)))-(n+1))^A002260(n+1)`
-/

namespace A095884.P10482455383776657149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat - (n + 1 : ℤ) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A095884.P10482455383776657149

namespace A095884

/-- `(A000217(round(sqrt(2*n+1)))-(n+1))^A002260(n+1)` -/
def P10482455383776657149.Spec : Prop :=
  ∀ n, P10482455383776657149.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P18309332513816906013

`A002262(A061579(n))*A003992(n)`
-/

namespace A095884.P18309332513816906013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A061579 n).toNat * A003992 n

end

end A095884.P18309332513816906013

namespace A095884

/-- `A002262(A061579(n))*A003992(n)` -/
def P18309332513816906013.Spec : Prop :=
  ∀ n, P18309332513816906013.a n = A095884 (n + 1)

end A095884

/-! ## A095884.P11709056676002321239

`A004248(A061579(n))*A025581(n)`
-/

namespace A095884.P11709056676002321239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (A061579 n).toNat * A025581 n

end

end A095884.P11709056676002321239

namespace A095884

/-- `A004248(A061579(n))*A025581(n)` -/
def P11709056676002321239.Spec : Prop :=
  ∀ n, P11709056676002321239.a n = A095884 (n + 1)

end A095884

/-! ## A095884.P14168891048426804598

`A025581(n)^A026100(A026098(n+1))`
-/

namespace A095884.P14168891048426804598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A026100 (A026098 (n + 1)).toNat : ℤ)

end

end A095884.P14168891048426804598

namespace A095884

/-- `A025581(n)^A026100(A026098(n+1))` -/
def P14168891048426804598.Spec : Prop :=
  ∀ n, P14168891048426804598.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P9870822058207992872

`(A000096(A003056(n))-n)^A002260(n+1)`
-/

namespace A095884.P9870822058207992872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A095884.P9870822058207992872

namespace A095884

/-- `(A000096(A003056(n))-n)^A002260(n+1)` -/
def P9870822058207992872.Spec : Prop :=
  ∀ n, P9870822058207992872.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P17227281377109709000

`(A003056(n)-A002262(n))^A002260(n+1)`
-/

namespace A095884.P17227281377109709000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n - A002262 n : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A095884.P17227281377109709000

namespace A095884

/-- `(A003056(n)-A002262(n))^A002260(n+1)` -/
def P17227281377109709000.Spec : Prop :=
  ∀ n, P17227281377109709000.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P16741979504757970525

`(A002024(n+1)-A002260(n+1))*A003992(n)`
-/

namespace A095884.P16741979504757970525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A002260 (n + 1)) * A003992 n

end

end A095884.P16741979504757970525

namespace A095884

/-- `(A002024(n+1)-A002260(n+1))*A003992(n)` -/
def P16741979504757970525.Spec : Prop :=
  ∀ n, P16741979504757970525.a n = A095884 (n + 1)

end A095884

/-! ## A095884.P11705988453419849309

`(A004736(n+2)%A004736(n+1))^A002260(n+1)`
-/

namespace A095884.P11705988453419849309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A004736 (n + 2)) (A004736 (n + 1)) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A095884.P11705988453419849309

namespace A095884

/-- `(A004736(n+2)%A004736(n+1))^A002260(n+1)` -/
def P11705988453419849309.Spec : Prop :=
  ∀ n, P11705988453419849309.a n = (A095884 (n + 1) : ℚ)

end A095884

/-! ## A095884.P7913022826513770618

`(A000096(A003056(n))-n)^A026100(A026098(n+1))`
-/

namespace A095884.P7913022826513770618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A026100 (A026098 (n + 1)).toNat : ℤ)

end

end A095884.P7913022826513770618

namespace A095884

/-- `(A000096(A003056(n))-n)^A026100(A026098(n+1))` -/
def P7913022826513770618.Spec : Prop :=
  ∀ n, P7913022826513770618.a n = (A095884 (n + 1) : ℚ)

end A095884

/-!
# A095885: Let F(x) be the function such that F(F(x)) = arctan(x), then F(x) = Sum_{n>=0} a(n)*x^(2n+1)/(2n+1)!.

The programs for A095885, there is no canonical definition to state claims against.
-/

/-! ## A095885.P8117408132396492461

`A007913(A000272(n))*A048605(n)`
-/

namespace A095885.P8117408132396492461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000272 n).toNat * A048605 n

end

end A095885.P8117408132396492461

/-! ## A095885.P14262414506275940735

`A048605(n)*A079724(A152471(n+1))`
-/

namespace A095885.P14262414506275940735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048605 n * A079724 (A152471 (n + 1)).toNat

end

end A095885.P14262414506275940735

/-!
# A095886: Triangle read by rows: T(n,k) = (n-k)^n, n>=1, 1<=k<=n.

The programs for A095886, the canonical program `A095886.P17521170030829720445` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095886 has offset 1).

The definition of A095886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1))^(row(n)+1)` (program `A095886.P17521170030829720445`, by `A095886.P17521170030829720445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095886.P17521170030829720445

`(row(n)+1-(col(n)+1))^(row(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095886

/-- `(row(n)+1-(col(n)+1))^(row(n)+1)` -/
def P17521170030829720445.Spec : Prop :=
  ∀ n, P17521170030829720445.a n = A095886 (n + 1)

theorem P17521170030829720445.correct : P17521170030829720445.Spec := by
  intro n
  simp only [A095886, Nat.add_sub_cancel]

end A095886

/-! ## A095886.P7116703911259277642

`(row(n)-col(n))^(row(n)+1)`
-/

namespace A095886.P7116703911259277642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ (SequenceMachineLib.triRow n + 1)

end

end A095886.P7116703911259277642

namespace A095886

/-- `(row(n)-col(n))^(row(n)+1)` -/
def P7116703911259277642.Spec : Prop :=
  ∀ n, P7116703911259277642.a n = A095886 (n + 1)

theorem P7116703911259277642.correct : P7116703911259277642.Spec := by
  intro n
  simp only [A095886, Nat.add_sub_cancel, A095886.P7116703911259277642.a, A095886.P17521170030829720445.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095886

/-! ## A095886.P7706940670441742444

`(row(n)-col(n))*(row(n)-col(n))^row(n)`
-/

namespace A095886.P7706940670441742444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ SequenceMachineLib.triRow n

end

end A095886.P7706940670441742444

namespace A095886

/-- `(row(n)-col(n))*(row(n)-col(n))^row(n)` -/
def P7706940670441742444.Spec : Prop :=
  ∀ n, P7706940670441742444.a n = A095886 (n + 1)

theorem P7706940670441742444.correct : P7706940670441742444.Spec := by
  intro n
  simp only [A095886, Nat.add_sub_cancel, A095886.P7706940670441742444.a, A095886.P17521170030829720445.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095886

/-! ## A095886.P3903664545169040010

`A025581(n)^∑[char[∑[n]]]`
-/

namespace A095886.P3903664545169040010
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095886.P3903664545169040010

namespace A095886

/-- `A025581(n)^∑[char[∑[n]]]` -/
def P3903664545169040010.Spec : Prop :=
  ∀ n, P3903664545169040010.a n = A095886 (n + 1)

end A095886

/-! ## A095886.P14505006208020729328

`(A004736(n+1)-1)^∑[char[∑[n]]]`
-/

namespace A095886.P14505006208020729328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095886.P14505006208020729328

namespace A095886

/-- `(A004736(n+1)-1)^∑[char[∑[n]]]` -/
def P14505006208020729328.Spec : Prop :=
  ∀ n, P14505006208020729328.a n = A095886 (n + 1)

end A095886

/-! ## A095886.P16883786779911601466

`val(A054582(n), 2)^round(sqrt(2*(n+1)))`
-/

namespace A095886.P16883786779911601466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A054582 n).toNat 2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) : ℤ)

end

end A095886.P16883786779911601466

namespace A095886

/-- `val(A054582(n), 2)^round(sqrt(2*(n+1)))` -/
def P16883786779911601466.Spec : Prop :=
  ∀ n, P16883786779911601466.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P1499583680723249392

`A003992(n)*A095893(n+1)`
-/

namespace A095886.P1499583680723249392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n * A095893 (n + 1)

end

end A095886.P1499583680723249392

namespace A095886

/-- `A003992(n)*A095893(n+1)` -/
def P1499583680723249392.Spec : Prop :=
  ∀ n, P1499583680723249392.a n = A095886 (n + 1)

end A095886

/-! ## A095886.P8074706951389174554

`log2(A130321(n))^∑[A010054(n)]`
-/

namespace A095886.P8074706951389174554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A095886.P8074706951389174554

namespace A095886

/-- `log2(A130321(n))^∑[A010054(n)]` -/
def P8074706951389174554.Spec : Prop :=
  ∀ n, P8074706951389174554.a n = (A095886 (n + 1) : ℝ)

end A095886

/-! ## A095886.P14665401026844127347

`log2(A130321(n))^A002024(n+1)`
-/

namespace A095886.P14665401026844127347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P14665401026844127347

namespace A095886

/-- `log2(A130321(n))^A002024(n+1)` -/
def P14665401026844127347.Spec : Prop :=
  ∀ n, P14665401026844127347.a n = (A095886 (n + 1) : ℝ)

end A095886

/-! ## A095886.P10100741693780116861

`A057554(2*(n+1))^A002024(n+1)`
-/

namespace A095886.P10100741693780116861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P10100741693780116861

namespace A095886

/-- `A057554(2*(n+1))^A002024(n+1)` -/
def P10100741693780116861.Spec : Prop :=
  ∀ n, P10100741693780116861.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P6748381974931017190

`(A057555(2*(n+1))-1)^A002024(n+1)`
-/

namespace A095886.P6748381974931017190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * (n + 1)) - 1 : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P6748381974931017190

namespace A095886

/-- `(A057555(2*(n+1))-1)^A002024(n+1)` -/
def P6748381974931017190.Spec : Prop :=
  ∀ n, P6748381974931017190.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P17242858279874134157

`(A057554(n+2+n)%63)^A002024(n+1)`
-/

namespace A095886.P17242858279874134157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A057554 (n + 2 + n)) 63 : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P17242858279874134157

namespace A095886

/-- `(A057554(n+2+n)%63)^A002024(n+1)` -/
def P17242858279874134157.Spec : Prop :=
  ∀ n, P17242858279874134157.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P10420722908912777953

`abs(A057555(n+2+n)-1)^A002024(n+1)`
-/

namespace A095886.P10420722908912777953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A057555 (n + 2 + n) - 1| : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P10420722908912777953

namespace A095886

/-- `abs(A057555(n+2+n)-1)^A002024(n+1)` -/
def P10420722908912777953.Spec : Prop :=
  ∀ n, P10420722908912777953.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P7168171727130510641

`(round(sqrt(2*n+1))-A002260(n+1))^A002024(n+1)`
-/

namespace A095886.P7168171727130510641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1) : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P7168171727130510641

namespace A095886

/-- `(round(sqrt(2*n+1))-A002260(n+1))^A002024(n+1)` -/
def P7168171727130510641.Spec : Prop :=
  ∀ n, P7168171727130510641.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P6807879409849603794

`A000312(A025581(n))*A095884(n+1)`
-/

namespace A095886.P6807879409849603794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A025581 n).toNat * A095884 (n + 1)

end

end A095886.P6807879409849603794

namespace A095886

/-- `A000312(A025581(n))*A095884(n+1)` -/
def P6807879409849603794.Spec : Prop :=
  ∀ n, P6807879409849603794.a n = A095886 (n + 1)

end A095886

/-! ## A095886.P10817573340246270921

`A002262(A061579(n))^A002024(n+1)`
-/

namespace A095886.P10817573340246270921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 (A061579 n).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P10817573340246270921

namespace A095886

/-- `A002262(A061579(n))^A002024(n+1)` -/
def P10817573340246270921.Spec : Prop :=
  ∀ n, P10817573340246270921.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P15423611573212734008

`A004526(A099375(n))^A002024(n+1)`
-/

namespace A095886.P15423611573212734008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (A099375 n).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P15423611573212734008

namespace A095886

/-- `A004526(A099375(n))^A002024(n+1)` -/
def P15423611573212734008.Spec : Prop :=
  ∀ n, P15423611573212734008.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P4094782709418840797

`(A000096(A003056(n))-n)^A002024(n+1)`
-/

namespace A095886.P4094782709418840797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (A003056 n).toNat - (n : ℤ) : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095886.P4094782709418840797

namespace A095886

/-- `(A000096(A003056(n))-n)^A002024(n+1)` -/
def P4094782709418840797.Spec : Prop :=
  ∀ n, P4094782709418840797.a n = (A095886 (n + 1) : ℚ)

end A095886

/-! ## A095886.P10465821403439034918

`A095884(n+1)*A095891(n+2)`
-/

namespace A095886.P10465821403439034918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095884 (n + 1) * A095891 (n + 2)

end

end A095886.P10465821403439034918

namespace A095886

/-- `A095884(n+1)*A095891(n+2)` -/
def P10465821403439034918.Spec : Prop :=
  ∀ n, P10465821403439034918.a n = A095886 (n + 1)

end A095886

/-! ## A095886.P4311800001741205490

`(1-A073423(n+1))*A095887(n+2)`
-/

namespace A095886.P4311800001741205490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A073423 (n + 1)) * A095887 (n + 2)

end

end A095886.P4311800001741205490

namespace A095886

/-- `(1-A073423(n+1))*A095887(n+2)` -/
def P4311800001741205490.Spec : Prop :=
  ∀ n, P4311800001741205490.a n = A095886 (n + 1)

end A095886

/-!
# A095887: Triangle read by rows: T(n,k) = (n-k+1)^n, n>=1, 1<=k<=n.

The programs for A095887, the canonical program `A095887.P15722224618388935706` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095887 has offset 1).

The definition of A095887 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1)+1)^(row(n)+1)` (program `A095887.P15722224618388935706`, by `A095887.P15722224618388935706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095887.P15722224618388935706

`(row(n)+1-(col(n)+1)+1)^(row(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095887

/-- `(row(n)+1-(col(n)+1)+1)^(row(n)+1)` -/
def P15722224618388935706.Spec : Prop :=
  ∀ n, P15722224618388935706.a n = A095887 (n + 1)

theorem P15722224618388935706.correct : P15722224618388935706.Spec := by
  intro n
  simp only [A095887, Nat.add_sub_cancel]

end A095887

/-! ## A095887.P6410486058383562337

`(row(n)+1-col(n))^(row(n)+1)`
-/

namespace A095887.P6410486058383562337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ (SequenceMachineLib.triRow n + 1)

end

end A095887.P6410486058383562337

namespace A095887

/-- `(row(n)+1-col(n))^(row(n)+1)` -/
def P6410486058383562337.Spec : Prop :=
  ∀ n, P6410486058383562337.a n = A095887 (n + 1)

theorem P6410486058383562337.correct : P6410486058383562337.Spec := by
  intro n
  simp only [A095887, Nat.add_sub_cancel, A095887.P6410486058383562337.a, A095887.P15722224618388935706.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A095887

/-! ## A095887.P1282339290535026348

`(A025581(n)+1)^∑[char[∑[n]]]`
-/

namespace A095887.P1282339290535026348
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095887.P1282339290535026348

namespace A095887

/-- `(A025581(n)+1)^∑[char[∑[n]]]` -/
def P1282339290535026348.Spec : Prop :=
  ∀ n, P1282339290535026348.a n = A095887 (n + 1)

end A095887

/-! ## A095887.P15449150276224601359

`A057555(2*(n+1))^round(sqrt(2*n+1))`
-/

namespace A095887.P15449150276224601359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * (n + 1)) : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) : ℤ)

end

end A095887.P15449150276224601359

namespace A095887

/-- `A057555(2*(n+1))^round(sqrt(2*n+1))` -/
def P15449150276224601359.Spec : Prop :=
  ∀ n, P15449150276224601359.a n = (A095887 (n + 1) : ℚ)

end A095887

/-! ## A095887.P9801207501060095186

`(C(comp[∑[n]]-n, 2)-n)^A000194(2*(n+1))`
-/

namespace A095887.P9801207501060095186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ) ^ (A000194 (2 * (n + 1)) : ℤ)

end

end A095887.P9801207501060095186

namespace A095887

/-- `(C(comp[∑[n]]-n, 2)-n)^A000194(2*(n+1))` -/
def P9801207501060095186.Spec : Prop :=
  ∀ n, P9801207501060095186.a n = (A095887 (n + 1) : ℚ)

end A095887

/-! ## A095887.P12087220169158425842

`A089072(A038722(n+1))`
-/

namespace A095887.P12087220169158425842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (A038722 (n + 1)).toNat

end

end A095887.P12087220169158425842

namespace A095887

/-- `A089072(A038722(n+1))` -/
def P12087220169158425842.Spec : Prop :=
  ∀ n, P12087220169158425842.a n = A095887 (n + 1)

end A095887

/-! ## A095887.P7106981767651837896

`A089072(A061579(n)+1)`
-/

namespace A095887.P7106981767651837896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (A061579 n + 1).toNat

end

end A095887.P7106981767651837896

namespace A095887

/-- `A089072(A061579(n)+1)` -/
def P7106981767651837896.Spec : Prop :=
  ∀ n, P7106981767651837896.a n = A095887 (n + 1)

end A095887

/-! ## A095887.P4322481306525192330

`A009999(n)*A095891(n+1)`
-/

namespace A095887.P4322481306525192330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n * A095891 (n + 1)

end

end A095887.P4322481306525192330

namespace A095887

/-- `A009999(n)*A095891(n+1)` -/
def P4322481306525192330.Spec : Prop :=
  ∀ n, P4322481306525192330.a n = A095887 (n + 1)

end A095887

/-! ## A095887.P8687801208246003640

`A089072(A002024(n+1)²-n)`
-/

namespace A095887.P8687801208246003640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A095887.P8687801208246003640

namespace A095887

/-- `A089072(A002024(n+1)²-n)` -/
def P8687801208246003640.Spec : Prop :=
  ∀ n, P8687801208246003640.a n = A095887 (n + 1)

end A095887

/-! ## A095887.P3024955675746180080

`A004736(n+1)^∑[A010054(n)]`
-/

namespace A095887.P3024955675746180080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A095887.P3024955675746180080

namespace A095887

/-- `A004736(n+1)^∑[A010054(n)]` -/
def P3024955675746180080.Spec : Prop :=
  ∀ n, P3024955675746180080.a n = (A095887 (n + 1) : ℚ)

end A095887

/-! ## A095887.P2347631351950921899

`A051128(n+1)*A095890(n+1)`
-/

namespace A095887.P2347631351950921899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (n + 1) * A095890 (n + 1)

end

end A095887.P2347631351950921899

namespace A095887

/-- `A051128(n+1)*A095890(n+1)` -/
def P2347631351950921899.Spec : Prop :=
  ∀ n, P2347631351950921899.a n = A095887 (n + 1)

end A095887

/-! ## A095887.P6982775453535796272

`A004736(n+1)^A002024(n+1)`
-/

namespace A095887.P6982775453535796272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A095887.P6982775453535796272

namespace A095887

/-- `A004736(n+1)^A002024(n+1)` -/
def P6982775453535796272.Spec : Prop :=
  ∀ n, P6982775453535796272.a n = (A095887 (n + 1) : ℚ)

end A095887

/-! ## A095887.P15397604019462857000

`A004736(n+1)^(A003056(n)+1)`
-/

namespace A095887.P15397604019462857000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A003056 n + 1 : ℤ)

end

end A095887.P15397604019462857000

namespace A095887

/-- `A004736(n+1)^(A003056(n)+1)` -/
def P15397604019462857000.Spec : Prop :=
  ∀ n, P15397604019462857000.a n = (A095887 (n + 1) : ℚ)

end A095887

/-! ## A095887.P4737482758626647637

`A004736(n+1)^A000194(2*(n+1))`
-/

namespace A095887.P4737482758626647637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A000194 (2 * (n + 1)) : ℤ)

end

end A095887.P4737482758626647637

namespace A095887

/-- `A004736(n+1)^A000194(2*(n+1))` -/
def P4737482758626647637.Spec : Prop :=
  ∀ n, P4737482758626647637.a n = (A095887 (n + 1) : ℚ)

end A095887

/-! ## A095887.P8733945568661529866

`A000169(A051128(n+1)/A009999(n))*A051128(n+1)`
-/

namespace A095887.P8733945568661529866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (SequenceMachineLib.roundAway ((A051128 (n + 1) : ℚ) / (A009999 n : ℚ))).toNat * A051128 (n + 1)

end

end A095887.P8733945568661529866

namespace A095887

/-- `A000169(A051128(n+1)/A009999(n))*A051128(n+1)` -/
def P8733945568661529866.Spec : Prop :=
  ∀ n, P8733945568661529866.a n = A095887 (n + 1)

end A095887

/-!
# A095888: Triangle read by rows: T(n,k) = n^(n-k), n>=1, 1<=k<=n.

The programs for A095888, the canonical program `A095888.P805302620360271258` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095888 has offset 1).

The definition of A095888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095888.P805302620360271258

`(row(n)+1)^(row(n)+1-(col(n)+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095888

/-- `(row(n)+1)^(row(n)+1-(col(n)+1))` -/
def P805302620360271258.Spec : Prop :=
  ∀ n, P805302620360271258.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P2921506207503407539

`(row(n)+1)^(row(n)-col(n))`
-/

namespace A095888.P2921506207503407539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A095888.P2921506207503407539

namespace A095888

/-- `(row(n)+1)^(row(n)-col(n))` -/
def P2921506207503407539.Spec : Prop :=
  ∀ n, P2921506207503407539.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P17824025966364295555

`∑[char[∑[n]]]^A025581(n)`
-/

namespace A095888.P17824025966364295555
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A025581 n : ℤ)

end

end A095888.P17824025966364295555

namespace A095888

/-- `∑[char[∑[n]]]^A025581(n)` -/
def P17824025966364295555.Spec : Prop :=
  ∀ n, P17824025966364295555.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P880061057862158443

`∑[char[∑[n]]]^(A004736(n+1)-1)`
-/

namespace A095888.P880061057862158443
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A004736 (n + 1) - 1 : ℤ)

end

end A095888.P880061057862158443

namespace A095888

/-- `∑[char[∑[n]]]^(A004736(n+1)-1)` -/
def P880061057862158443.Spec : Prop :=
  ∀ n, P880061057862158443.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P10650338120548630372

`A077385(A004201(n+1))`
-/

namespace A095888.P10650338120548630372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077385 (A004201 (n + 1)).toNat

end

end A095888.P10650338120548630372

namespace A095888

/-- `A077385(A004201(n+1))` -/
def P10650338120548630372.Spec : Prop :=
  ∀ n, P10650338120548630372.a n = A095888 (n + 1)

end A095888

/-! ## A095888.P2717098203269233509

`A076112(A038722(n+1))`
-/

namespace A095888.P2717098203269233509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A038722 (n + 1)).toNat

end

end A095888.P2717098203269233509

namespace A095888

/-- `A076112(A038722(n+1))` -/
def P2717098203269233509.Spec : Prop :=
  ∀ n, P2717098203269233509.a n = A095888 (n + 1)

end A095888

/-! ## A095888.P9683224614504956661

`A076112(A061579(n)+1)`
-/

namespace A095888.P9683224614504956661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A061579 n + 1).toNat

end

end A095888.P9683224614504956661

namespace A095888

/-- `A076112(A061579(n)+1)` -/
def P9683224614504956661.Spec : Prop :=
  ∀ n, P9683224614504956661.a n = A095888 (n + 1)

end A095888

/-! ## A095888.P8690150858107083564

`A398482(n)/A079901(n)`
-/

namespace A095888.P8690150858107083564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398482 n : ℚ) / (A079901 n : ℚ)

end

end A095888.P8690150858107083564

namespace A095888

/-- `A398482(n)/A079901(n)` -/
def P8690150858107083564.Spec : Prop :=
  ∀ n, P8690150858107083564.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P1063498802186779825

`A066324(n+1)/A121757(n)`
-/

namespace A095888.P1063498802186779825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A121757 n : ℚ)

end

end A095888.P1063498802186779825

namespace A095888

/-- `A066324(n+1)/A121757(n)` -/
def P1063498802186779825.Spec : Prop :=
  ∀ n, P1063498802186779825.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P2243529500943903525

`A201685(n+1)/A008279(n)`
-/

namespace A095888.P2243529500943903525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201685 (n + 1) : ℚ) / (A008279 n : ℚ)

end

end A095888.P2243529500943903525

namespace A095888

/-- `A201685(n+1)/A008279(n)` -/
def P2243529500943903525.Spec : Prop :=
  ∀ n, P2243529500943903525.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P14604360647493523798

`A061356(n+2)/A007318(n)`
-/

namespace A095888.P14604360647493523798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061356 (n + 2) : ℚ) / (A007318 n : ℚ)

end

end A095888.P14604360647493523798

namespace A095888

/-- `A061356(n+2)/A007318(n)` -/
def P14604360647493523798.Spec : Prop :=
  ∀ n, P14604360647493523798.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P16522888528895645883

`A076112(A002024(n+1)²-n)`
-/

namespace A095888.P16522888528895645883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A095888.P16522888528895645883

namespace A095888

/-- `A076112(A002024(n+1)²-n)` -/
def P16522888528895645883.Spec : Prop :=
  ∀ n, P16522888528895645883.a n = A095888 (n + 1)

end A095888

/-! ## A095888.P3638905906414036301

`A076112(A123578(n+1)²-n)`
-/

namespace A095888.P3638905906414036301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (A123578 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A095888.P3638905906414036301

namespace A095888

/-- `A076112(A123578(n+1)²-n)` -/
def P3638905906414036301.Spec : Prop :=
  ∀ n, P3638905906414036301.a n = A095888 (n + 1)

end A095888

/-! ## A095888.P13100699405412038078

`A002024(n+1)^A057554(2*(n+1))`
-/

namespace A095888.P13100699405412038078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A057554 (2 * (n + 1)) : ℤ)

end

end A095888.P13100699405412038078

namespace A095888

/-- `A002024(n+1)^A057554(2*(n+1))` -/
def P13100699405412038078.Spec : Prop :=
  ∀ n, P13100699405412038078.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P15091775563876761984

`A002024(n+1)^(A057555(2*(n+1))-1)`
-/

namespace A095888.P15091775563876761984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A057555 (2 * (n + 1)) - 1 : ℤ)

end

end A095888.P15091775563876761984

namespace A095888

/-- `A002024(n+1)^(A057555(2*(n+1))-1)` -/
def P15091775563876761984.Spec : Prop :=
  ∀ n, P15091775563876761984.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P1773310011932423319

`A002024(n+1)^(A057554(n+2+n)%63)`
-/

namespace A095888.P1773310011932423319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (Int.tmod (A057554 (n + 2 + n)) 63 : ℤ)

end

end A095888.P1773310011932423319

namespace A095888

/-- `A002024(n+1)^(A057554(n+2+n)%63)` -/
def P1773310011932423319.Spec : Prop :=
  ∀ n, P1773310011932423319.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P10160883675244421093

`A002024(n+1)^abs(A057555(n+2+n)-1)`
-/

namespace A095888.P10160883675244421093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (|A057555 (n + 2 + n) - 1| : ℤ)

end

end A095888.P10160883675244421093

namespace A095888

/-- `A002024(n+1)^abs(A057555(n+2+n)-1)` -/
def P10160883675244421093.Spec : Prop :=
  ∀ n, P10160883675244421093.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P9727215677267494014

`A002024(n+1)^(round(sqrt(2*n+1))-A002260(n+1))`
-/

namespace A095888.P9727215677267494014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - A002260 (n + 1) : ℤ)

end

end A095888.P9727215677267494014

namespace A095888

/-- `A002024(n+1)^(round(sqrt(2*n+1))-A002260(n+1))` -/
def P9727215677267494014.Spec : Prop :=
  ∀ n, P9727215677267494014.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P3222712740316550470

`A000169(A002024(n+1))/A076112(n+1)`
-/

namespace A095888.P3222712740316550470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000169 (A002024 (n + 1)).toNat : ℚ) / (A076112 (n + 1) : ℚ)

end

end A095888.P3222712740316550470

namespace A095888

/-- `A000169(A002024(n+1))/A076112(n+1)` -/
def P3222712740316550470.Spec : Prop :=
  ∀ n, P3222712740316550470.a n = (A095888 (n + 1) : ℚ)

end A095888

/-! ## A095888.P14656880856314867504

`A002024(n+1)^(A000096(A003056(n))-n)`
-/

namespace A095888.P14656880856314867504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A000096 (A003056 n).toNat - (n : ℤ) : ℤ)

end

end A095888.P14656880856314867504

namespace A095888

/-- `A002024(n+1)^(A000096(A003056(n))-n)` -/
def P14656880856314867504.Spec : Prop :=
  ∀ n, P14656880856314867504.a n = (A095888 (n + 1) : ℚ)

end A095888

/-!
# A095890: Triangle read by rows: T(n,k) = (n-k+1)^(n-k), n>=1, 1<=k<=n.

The programs for A095890, the canonical program `A095890.P9464896246681720696` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095890 has offset 1).

The definition of A095890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095890.P9464896246681720696

`(row(n)-col(n)+1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095890

/-- `(row(n)-col(n)+1)^(row(n)-col(n))` -/
def P9464896246681720696.Spec : Prop :=
  ∀ n, P9464896246681720696.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P13438296447957742934

`(row(n)+1-(col(n)+1)+1)^(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095890.P13438296447957742934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ)

end

end A095890.P13438296447957742934

namespace A095890

/-- `(row(n)+1-(col(n)+1)+1)^(row(n)+1-(col(n)+1))` -/
def P13438296447957742934.Spec : Prop :=
  ∀ n, P13438296447957742934.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P4112557662447549741

`(row(n)+1-col(n))^(row(n)-col(n))`
-/

namespace A095890.P4112557662447549741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A095890.P4112557662447549741

namespace A095890

/-- `(row(n)+1-col(n))^(row(n)-col(n))` -/
def P4112557662447549741.Spec : Prop :=
  ∀ n, P4112557662447549741.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P14577794828546612516

`A000169(row(n)-col(n)+1)`
-/

namespace A095890.P14577794828546612516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A095890.P14577794828546612516

namespace A095890

/-- `A000169(row(n)-col(n)+1)` -/
def P14577794828546612516.Spec : Prop :=
  ∀ n, P14577794828546612516.a n = A095890 (n + 1)

end A095890

/-! ## A095890.P7289254010221698304

`A000169(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095890.P7289254010221698304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A095890.P7289254010221698304

namespace A095890

/-- `A000169(C(comp[∑[n]]-n, 2)-n)` -/
def P7289254010221698304.Spec : Prop :=
  ∀ n, P7289254010221698304.a n = A095890 (n + 1)

end A095890

/-! ## A095890.P7231398643056349925

`(row(n)-col(n)+1)*A000272(row(n)-col(n)+1)`
-/

namespace A095890.P7231398643056349925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * A000272 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A095890.P7231398643056349925

namespace A095890

/-- `(row(n)-col(n)+1)*A000272(row(n)-col(n)+1)` -/
def P7231398643056349925.Spec : Prop :=
  ∀ n, P7231398643056349925.a n = A095890 (n + 1)

end A095890

/-! ## A095890.P2940166550467236077

`A110138(A099375(n))`
-/

namespace A095890.P2940166550467236077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (A099375 n).toNat

end

end A095890.P2940166550467236077

namespace A095890

/-- `A110138(A099375(n))` -/
def P2940166550467236077.Spec : Prop :=
  ∀ n, P2940166550467236077.a n = A095890 (n + 1)

end A095890

/-! ## A095890.P17183956149023238542

`A000169(A004736(n+1))`
-/

namespace A095890.P17183956149023238542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A004736 (n + 1)).toNat

end

end A095890.P17183956149023238542

namespace A095890

/-- `A000169(A004736(n+1))` -/
def P17183956149023238542.Spec : Prop :=
  ∀ n, P17183956149023238542.a n = A095890 (n + 1)

end A095890

/-! ## A095890.P15671556576611258831

`A004736(n+1)^A025581(n)`
-/

namespace A095890.P15671556576611258831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A025581 n : ℤ)

end

end A095890.P15671556576611258831

namespace A095890

/-- `A004736(n+1)^A025581(n)` -/
def P15671556576611258831.Spec : Prop :=
  ∀ n, P15671556576611258831.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P15609938687677411742

`A004736(n+1)^A004736(n+2)`
-/

namespace A095890.P15609938687677411742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A004736 (n + 2) : ℤ)

end

end A095890.P15609938687677411742

namespace A095890

/-- `A004736(n+1)^A004736(n+2)` -/
def P15609938687677411742.Spec : Prop :=
  ∀ n, P15609938687677411742.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P3039515197231728485

`A057555(2*(n+1))^A025581(n)`
-/

namespace A095890.P3039515197231728485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * (n + 1)) : ℚ) ^ (A025581 n : ℤ)

end

end A095890.P3039515197231728485

namespace A095890

/-- `A057555(2*(n+1))^A025581(n)` -/
def P3039515197231728485.Spec : Prop :=
  ∀ n, P3039515197231728485.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P17774473563948402835

`(A057554(2*(n+1))+1)^A057554(2*(n+1))`
-/

namespace A095890.P17774473563948402835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) + 1 : ℚ) ^ (A057554 (2 * (n + 1)) : ℤ)

end

end A095890.P17774473563948402835

namespace A095890

/-- `(A057554(2*(n+1))+1)^A057554(2*(n+1))` -/
def P17774473563948402835.Spec : Prop :=
  ∀ n, P17774473563948402835.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P6318667771111830913

`A000169(A051128(n+1)/A009999(n))`
-/

namespace A095890.P6318667771111830913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (SequenceMachineLib.roundAway ((A051128 (n + 1) : ℚ) / (A009999 n : ℚ))).toNat

end

end A095890.P6318667771111830913

namespace A095890

/-- `A000169(A051128(n+1)/A009999(n))` -/
def P6318667771111830913.Spec : Prop :=
  ∀ n, P6318667771111830913.a n = A095890 (n + 1)

end A095890

/-! ## A095890.P13390598535874344379

`A000027(A025581(n)+1)^A025581(n)`
-/

namespace A095890.P13390598535874344379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A025581 n + 1).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A095890.P13390598535874344379

namespace A095890

/-- `A000027(A025581(n)+1)^A025581(n)` -/
def P13390598535874344379.Spec : Prop :=
  ∀ n, P13390598535874344379.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P3142575602664211176

`A000169(A002024(n+1)+1-A002260(n+1))`
-/

namespace A095890.P3142575602664211176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A002024 (n + 1) + (1 - A002260 (n + 1))).toNat

end

end A095890.P3142575602664211176

namespace A095890

/-- `A000169(A002024(n+1)+1-A002260(n+1))` -/
def P3142575602664211176.Spec : Prop :=
  ∀ n, P3142575602664211176.a n = A095890 (n + 1)

end A095890

/-! ## A095890.P18197591493186750068

`A095891(n+1)/A004736(n+1)`
-/

namespace A095890.P18197591493186750068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095891 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A095890.P18197591493186750068

namespace A095890

/-- `A095891(n+1)/A004736(n+1)` -/
def P18197591493186750068.Spec : Prop :=
  ∀ n, P18197591493186750068.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P6694496593511036783

`A095887(n+1)/A051128(n+1)`
-/

namespace A095890.P6694496593511036783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095887 (n + 1) : ℚ) / (A051128 (n + 1) : ℚ)

end

end A095890.P6694496593511036783

namespace A095890

/-- `A095887(n+1)/A051128(n+1)` -/
def P6694496593511036783.Spec : Prop :=
  ∀ n, P6694496593511036783.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P18011376439685555033

`A095891(n+1)/(A127739(n+1)-n)`
-/

namespace A095890.P18011376439685555033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095891 (n + 1) : ℚ) / (A127739 (n + 1) - (n : ℤ) : ℚ)

end

end A095890.P18011376439685555033

namespace A095890

/-- `A095891(n+1)/(A127739(n+1)-n)` -/
def P18011376439685555033.Spec : Prop :=
  ∀ n, P18011376439685555033.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P420788755657774790

`A095891(n+1)/A051128(n+1)*A009999(n)`
-/

namespace A095890.P420788755657774790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095891 (n + 1) : ℚ) / (A051128 (n + 1) : ℚ) * (A009999 n : ℚ)

end

end A095890.P420788755657774790

namespace A095890

/-- `A095891(n+1)/A051128(n+1)*A009999(n)` -/
def P420788755657774790.Spec : Prop :=
  ∀ n, P420788755657774790.a n = (A095890 (n + 1) : ℚ)

end A095890

/-! ## A095890.P14419725522826370813

`A033918(A038722(n+1))/A002260(A038722(n+1))`
-/

namespace A095890.P14419725522826370813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033918 (A038722 (n + 1)).toNat : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A095890.P14419725522826370813

namespace A095890

/-- `A033918(A038722(n+1))/A002260(A038722(n+1))` -/
def P14419725522826370813.Spec : Prop :=
  ∀ n, P14419725522826370813.a n = (A095890 (n + 1) : ℚ)

end A095890

/-!
# A095891: Triangle read by rows: T(n,k) = (n-k+1)^(n-k+1), n>=1, 1<=k<=n.

The programs for A095891, the canonical program `A095891.P3208938140457020464` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095891 has offset 1).

The definition of A095891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095891.P3208938140457020464

`(row(n)-col(n)+1)^(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095891

/-- `(row(n)-col(n)+1)^(row(n)-col(n)+1)` -/
def P3208938140457020464.Spec : Prop :=
  ∀ n, P3208938140457020464.a n = (A095891 (n + 1) : ℚ)

end A095891

/-! ## A095891.P6189297371869747267

`(row(n)+1-(col(n)+1)+1)^(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095891.P6189297371869747267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A095891.P6189297371869747267

namespace A095891

/-- `(row(n)+1-(col(n)+1)+1)^(row(n)+1-col(n))` -/
def P6189297371869747267.Spec : Prop :=
  ∀ n, P6189297371869747267.a n = (A095891 (n + 1) : ℚ)

end A095891

/-! ## A095891.P12528704191882981992

`(row(n)+1-(col(n)+1)+1)^(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095891.P12528704191882981992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℤ)

end

end A095891.P12528704191882981992

namespace A095891

/-- `(row(n)+1-(col(n)+1)+1)^(row(n)+1-(col(n)+1)+1)` -/
def P12528704191882981992.Spec : Prop :=
  ∀ n, P12528704191882981992.a n = (A095891 (n + 1) : ℚ)

end A095891

/-! ## A095891.P7880775767254224024

`(row(n)+1-col(n))^(row(n)+1-col(n))`
-/

namespace A095891.P7880775767254224024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A095891.P7880775767254224024

namespace A095891

/-- `(row(n)+1-col(n))^(row(n)+1-col(n))` -/
def P7880775767254224024.Spec : Prop :=
  ∀ n, P7880775767254224024.a n = (A095891 (n + 1) : ℚ)

end A095891

/-! ## A095891.P7266250285224619718

`A000312(row(n)-col(n)+1)`
-/

namespace A095891.P7266250285224619718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A095891.P7266250285224619718

namespace A095891

/-- `A000312(row(n)-col(n)+1)` -/
def P7266250285224619718.Spec : Prop :=
  ∀ n, P7266250285224619718.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P3055592221503476717

`A000312(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095891.P3055592221503476717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A095891.P3055592221503476717

namespace A095891

/-- `A000312(C(comp[∑[n]]-n, 2)-n)` -/
def P3055592221503476717.Spec : Prop :=
  ∀ n, P3055592221503476717.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P16653371567263346341

`(A057554(2*(n+1))+1)^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095891.P16653371567263346341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) + 1 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A095891.P16653371567263346341

namespace A095891

/-- `(A057554(2*(n+1))+1)^(C(comp[∑[n]]-n, 2)-n)` -/
def P16653371567263346341.Spec : Prop :=
  ∀ n, P16653371567263346341.a n = (A095891 (n + 1) : ℚ)

end A095891

/-! ## A095891.P7182405041341655823

`A000312(A004736(n+1))`
-/

namespace A095891.P7182405041341655823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A004736 (n + 1)).toNat

end

end A095891.P7182405041341655823

namespace A095891

/-- `A000312(A004736(n+1))` -/
def P7182405041341655823.Spec : Prop :=
  ∀ n, P7182405041341655823.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P16925039210087003682

`A000312(A025581(n)+1)`
-/

namespace A095891.P16925039210087003682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A025581 n + 1).toNat

end

end A095891.P16925039210087003682

namespace A095891

/-- `A000312(A025581(n)+1)` -/
def P16925039210087003682.Spec : Prop :=
  ∀ n, P16925039210087003682.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P13683436874961924235

`A033918(A038722(n+1))`
-/

namespace A095891.P13683436874961924235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A038722 (n + 1)).toNat

end

end A095891.P13683436874961924235

namespace A095891

/-- `A033918(A038722(n+1))` -/
def P13683436874961924235.Spec : Prop :=
  ∀ n, P13683436874961924235.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P2418351068900758299

`A033918(A061579(n)+1)`
-/

namespace A095891.P2418351068900758299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (A061579 n + 1).toNat

end

end A095891.P2418351068900758299

namespace A095891

/-- `A033918(A061579(n)+1)` -/
def P2418351068900758299.Spec : Prop :=
  ∀ n, P2418351068900758299.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P14514712686458889098

`A094054(A055461(n+1))`
-/

namespace A095891.P14514712686458889098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A055461 (n + 1)).toNat

end

end A095891.P14514712686458889098

namespace A095891

/-- `A094054(A055461(n+1))` -/
def P14514712686458889098.Spec : Prop :=
  ∀ n, P14514712686458889098.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P17258758886266663211

`A110132(A099375(n)+1)`
-/

namespace A095891.P17258758886266663211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (A099375 n + 1).toNat

end

end A095891.P17258758886266663211

namespace A095891

/-- `A110132(A099375(n)+1)` -/
def P17258758886266663211.Spec : Prop :=
  ∀ n, P17258758886266663211.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P2802435058339277286

`A110138(A099375(n)+1)`
-/

namespace A095891.P2802435058339277286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (A099375 n + 1).toNat

end

end A095891.P2802435058339277286

namespace A095891

/-- `A110138(A099375(n)+1)` -/
def P2802435058339277286.Spec : Prop :=
  ∀ n, P2802435058339277286.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P16991611222707529464

`A112953(A104887(n+1))`
-/

namespace A095891.P16991611222707529464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112953 (A104887 (n + 1)).toNat

end

end A095891.P16991611222707529464

namespace A095891

/-- `A112953(A104887(n+1))` -/
def P16991611222707529464.Spec : Prop :=
  ∀ n, P16991611222707529464.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P7279810894216744385

`A110132(A212012(n+1))`
-/

namespace A095891.P7279810894216744385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (A212012 (n + 1)).toNat

end

end A095891.P7279810894216744385

namespace A095891

/-- `A110132(A212012(n+1))` -/
def P7279810894216744385.Spec : Prop :=
  ∀ n, P7279810894216744385.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P16530605678542062953

`A095887(n+1)/A009999(n)`
-/

namespace A095891.P16530605678542062953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095887 (n + 1) : ℚ) / (A009999 n : ℚ)

end

end A095891.P16530605678542062953

namespace A095891

/-- `A095887(n+1)/A009999(n)` -/
def P16530605678542062953.Spec : Prop :=
  ∀ n, P16530605678542062953.a n = (A095891 (n + 1) : ℚ)

end A095891

/-! ## A095891.P1368621857730279319

`A004736(n+1)*A095890(n+1)`
-/

namespace A095891.P1368621857730279319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A095890 (n + 1)

end

end A095891.P1368621857730279319

namespace A095891

/-- `A004736(n+1)*A095890(n+1)` -/
def P1368621857730279319.Spec : Prop :=
  ∀ n, P1368621857730279319.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P15753127602348292846

`A033918(2*A004736(n+1)+n)`
-/

namespace A095891.P15753127602348292846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A095891.P15753127602348292846

namespace A095891

/-- `A033918(2*A004736(n+1)+n)` -/
def P15753127602348292846.Spec : Prop :=
  ∀ n, P15753127602348292846.a n = A095891 (n + 1)

end A095891

/-! ## A095891.P15014038527633561837

`A033918(2*A127739(n+1)-n)`
-/

namespace A095891.P15014038527633561837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A095891.P15014038527633561837

namespace A095891

/-- `A033918(2*A127739(n+1)-n)` -/
def P15014038527633561837.Spec : Prop :=
  ∀ n, P15014038527633561837.a n = A095891 (n + 1)

end A095891

/-!
# A095892: a(n) = sum of the squares of the coefficients of x^n in x^(n-2k)*A(x^2)^(n-2k), as k varies from 0 to floor(n/2), with a(0)=1.

The programs for A095892, there is no canonical definition to state claims against.
-/

/-! ## A095892.P6716526520497211477

`A024417(A148163(n))`
-/

namespace A095892.P6716526520497211477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148163 n).toNat

end

end A095892.P6716526520497211477

/-! ## A095892.P3260789526878496449

`A055086(A208816(n))`
-/

namespace A095892.P3260789526878496449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A208816 n).toNat

end

end A095892.P3260789526878496449

/-! ## A095892.P9842735048516366315

`A276581(A278749(n))`
-/

namespace A095892.P9842735048516366315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A278749 n).toNat

end

end A095892.P9842735048516366315

/-! ## A095892.P80435782349607982

`A100196(floor(sqrt(A240921(n))))`
-/

namespace A095892.P80435782349607982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.sqrt (A240921 n)).toNat

end

end A095892.P80435782349607982

/-! ## A095892.P16367715331561268732

`A055086(floor(sqrt(A346371(n))))`
-/

namespace A095892.P16367715331561268732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.sqrt (A346371 n)).toNat

end

end A095892.P16367715331561268732

/-!
# A095893: Triangle read by rows: T(n,k) = (n-k)^(n-k+1), n>=1, 1<=k<=n.

The programs for A095893, the canonical program `A095893.P14116179142159470635` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095893 has offset 1).

The definition of A095893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095893.P14116179142159470635

`(row(n)-col(n))^(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095893

/-- `(row(n)-col(n))^(row(n)-col(n)+1)` -/
def P14116179142159470635.Spec : Prop :=
  ∀ n, P14116179142159470635.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P12242904458125764908

`(row(n)+1-(col(n)+1))^(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095893.P12242904458125764908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A095893.P12242904458125764908

namespace A095893

/-- `(row(n)+1-(col(n)+1))^(row(n)+1-col(n))` -/
def P12242904458125764908.Spec : Prop :=
  ∀ n, P12242904458125764908.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P17545226911697724895

`(row(n)+1-(col(n)+1))^(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095893.P17545226911697724895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℤ)

end

end A095893.P17545226911697724895

namespace A095893

/-- `(row(n)+1-(col(n)+1))^(row(n)+1-(col(n)+1)+1)` -/
def P17545226911697724895.Spec : Prop :=
  ∀ n, P17545226911697724895.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P2091568963819238548

`(row(n)-col(n))^(row(n)+1-col(n))`
-/

namespace A095893.P2091568963819238548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A095893.P2091568963819238548

namespace A095893

/-- `(row(n)-col(n))^(row(n)+1-col(n))` -/
def P2091568963819238548.Spec : Prop :=
  ∀ n, P2091568963819238548.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P7284628157107211205

`A007778(row(n)-col(n))`
-/

namespace A095893.P7284628157107211205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A095893.P7284628157107211205

namespace A095893

/-- `A007778(row(n)-col(n))` -/
def P7284628157107211205.Spec : Prop :=
  ∀ n, P7284628157107211205.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P11849581041384721338

`A007778(A025581(n))`
-/

namespace A095893.P11849581041384721338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (A025581 n).toNat

end

end A095893.P11849581041384721338

namespace A095893

/-- `A007778(A025581(n))` -/
def P11849581041384721338.Spec : Prop :=
  ∀ n, P11849581041384721338.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P6143430228448493393

`A110132(A099375(n))`
-/

namespace A095893.P6143430228448493393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (A099375 n).toNat

end

end A095893.P6143430228448493393

namespace A095893

/-- `A110132(A099375(n))` -/
def P6143430228448493393.Spec : Prop :=
  ∀ n, P6143430228448493393.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P13614697964075502166

`A007778(log2(A130321(n)))`
-/

namespace A095893.P13614697964075502166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A095893.P13614697964075502166

namespace A095893

/-- `A007778(log2(A130321(n)))` -/
def P13614697964075502166.Spec : Prop :=
  ∀ n, P13614697964075502166.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P18089603833392138364

`A065440(A004736(n+1))`
-/

namespace A095893.P18089603833392138364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (A004736 (n + 1)).toNat

end

end A095893.P18089603833392138364

namespace A095893

/-- `A065440(A004736(n+1))` -/
def P18089603833392138364.Spec : Prop :=
  ∀ n, P18089603833392138364.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P14454644319035165137

`A065440(A025581(n)+1)`
-/

namespace A095893.P14454644319035165137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065440 (A025581 n + 1).toNat

end

end A095893.P14454644319035165137

namespace A095893

/-- `A065440(A025581(n)+1)` -/
def P14454644319035165137.Spec : Prop :=
  ∀ n, P14454644319035165137.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P6963909660228670354

`A350454(A128177(n+1))`
-/

namespace A095893.P6963909660228670354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350454 (A128177 (n + 1)).toNat

end

end A095893.P6963909660228670354

namespace A095893

/-- `A350454(A128177(n+1))` -/
def P6963909660228670354.Spec : Prop :=
  ∀ n, P6963909660228670354.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P8768673911949187169

`A007778(val(A036561(n), 2))`
-/

namespace A095893.P8768673911949187169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (SequenceMachineLib.valuation (A036561 n).toNat 2)

end

end A095893.P8768673911949187169

namespace A095893

/-- `A007778(val(A036561(n), 2))` -/
def P8768673911949187169.Spec : Prop :=
  ∀ n, P8768673911949187169.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P3612474211434326766

`A007778(A004736(n+1)-1)`
-/

namespace A095893.P3612474211434326766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 (A004736 (n + 1) - 1).toNat

end

end A095893.P3612474211434326766

namespace A095893

/-- `A007778(A004736(n+1)-1)` -/
def P3612474211434326766.Spec : Prop :=
  ∀ n, P3612474211434326766.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P3850022230459336317

`A110132(A212012(n+1)-1)`
-/

namespace A095893.P3850022230459336317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110132 (A212012 (n + 1) - 1).toNat

end

end A095893.P3850022230459336317

namespace A095893

/-- `A110132(A212012(n+1)-1)` -/
def P3850022230459336317.Spec : Prop :=
  ∀ n, P3850022230459336317.a n = A095893 (n + 1)

end A095893

/-! ## A095893.P1909049532450710771

`A025581(n)^A004736(n+1)`
-/

namespace A095893.P1909049532450710771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A095893.P1909049532450710771

namespace A095893

/-- `A025581(n)^A004736(n+1)` -/
def P1909049532450710771.Spec : Prop :=
  ∀ n, P1909049532450710771.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P517855058950613956

`A025581(n)^sqrt(A055461(n+1))`
-/

namespace A095893.P517855058950613956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℝ) ^ (Real.sqrt (A055461 (n + 1) : ℝ))

end

end A095893.P517855058950613956

namespace A095893

/-- `A025581(n)^sqrt(A055461(n+1))` -/
def P517855058950613956.Spec : Prop :=
  ∀ n, P517855058950613956.a n = (A095893 (n + 1) : ℝ)

end A095893

/-! ## A095893.P4489738301572605913

`A057554(2*(n+1))^A004736(n+1)`
-/

namespace A095893.P4489738301572605913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057554 (2 * (n + 1)) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A095893.P4489738301572605913

namespace A095893

/-- `A057554(2*(n+1))^A004736(n+1)` -/
def P4489738301572605913.Spec : Prop :=
  ∀ n, P4489738301572605913.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P16301451103887944096

`(A057555(2*(n+1))-1)^A004736(n+1)`
-/

namespace A095893.P16301451103887944096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057555 (2 * (n + 1)) - 1 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A095893.P16301451103887944096

namespace A095893

/-- `(A057555(2*(n+1))-1)^A004736(n+1)` -/
def P16301451103887944096.Spec : Prop :=
  ∀ n, P16301451103887944096.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P17178902816803862312

`(A057554(n+2+n)%63)^A004736(n+1)`
-/

namespace A095893.P17178902816803862312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A057554 (n + 2 + n)) 63 : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A095893.P17178902816803862312

namespace A095893

/-- `(A057554(n+2+n)%63)^A004736(n+1)` -/
def P17178902816803862312.Spec : Prop :=
  ∀ n, P17178902816803862312.a n = (A095893 (n + 1) : ℚ)

end A095893

/-! ## A095893.P12750783824756322172

`abs(A057555(n+2+n)-1)^A004736(n+1)`
-/

namespace A095893.P12750783824756322172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A057555 (n + 2 + n) - 1| : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A095893.P12750783824756322172

namespace A095893

/-- `abs(A057555(n+2+n)-1)^A004736(n+1)` -/
def P12750783824756322172.Spec : Prop :=
  ∀ n, P12750783824756322172.a n = (A095893 (n + 1) : ℚ)

end A095893

/-!
# A095894: a(2n) = 6*n^2 + 7*n + 1; a(2n+1) = 6*n^2 + 13*n + 7.

The programs for A095894, the canonical program `A095894.P12730925004535025806` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095894 has offset 0).

The definition of A095894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095894.P12730925004535025806

`ogf((1+5x)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095894

/-- `ogf((1+5x)/(1-2x+2x^3-x^4))` -/
def P12730925004535025806.Spec : Prop :=
  ∀ n, P12730925004535025806.a n = A095894 n

theorem P12730925004535025806.correct : P12730925004535025806.Spec := by
  intro n
  simp only [A095894]

end A095894

/-! ## A095894.P13271038266837072406

`∑[∑[5^(n%2)]]`
-/

namespace A095894.P13271038266837072406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P13271038266837072406

namespace A095894

/-- `∑[∑[5^(n%2)]]` -/
def P13271038266837072406.Spec : Prop :=
  ∀ n, (P13271038266837072406.a n : ℤ) = A095894 n

end A095894

/-! ## A095894.P17346478005772149836

`∑[∑[5^and(1, n)]]`
-/

namespace A095894.P17346478005772149836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P17346478005772149836

namespace A095894

/-- `∑[∑[5^and(1, n)]]` -/
def P17346478005772149836.Spec : Prop :=
  ∀ n, (P17346478005772149836.a n : ℤ) = A095894 n

end A095894

/-! ## A095894.P7991355661842346744

`∑[∑[Δ[xor(1, n)]+2]]`
-/

namespace A095894.P7991355661842346744
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P7991355661842346744

namespace A095894

/-- `∑[∑[Δ[xor(1, n)]+2]]` -/
def P7991355661842346744.Spec : Prop :=
  ∀ n, P7991355661842346744.a n = A095894 n

end A095894

/-! ## A095894.P7600603172266108707

`∑[a(n-2)+6]` with `a(0)=1, a(1)=6`
-/

namespace A095894.P7600603172266108707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P7600603172266108707

namespace A095894

/-- `∑[a(n-2)+6]` -/
def P7600603172266108707.Spec : Prop :=
  ∀ n, (P7600603172266108707.a n : ℤ) = A095894 n

end A095894

/-! ## A095894.P17000391460186648894

`∑[∑[4*and(1, n)+1]]`
-/

namespace A095894.P17000391460186648894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.land 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P17000391460186648894

namespace A095894

/-- `∑[∑[4*and(1, n)+1]]` -/
def P17000391460186648894.Spec : Prop :=
  ∀ n, (P17000391460186648894.a n : ℤ) = A095894 n

end A095894

/-! ## A095894.P6242356906520575497

`∑[∑[8/gcd(2, n)-3]]`
-/

namespace A095894.P6242356906520575497
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (Nat.gcd 2 n : ℚ) - 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P6242356906520575497

namespace A095894

/-- `∑[∑[8/gcd(2, n)-3]]` -/
def P6242356906520575497.Spec : Prop :=
  ∀ n, P6242356906520575497.a n = (A095894 n : ℚ)

end A095894

/-! ## A095894.P4012254040828529632

`∑[∑[gcd(5, (n+1)%2)]]`
-/

namespace A095894.P4012254040828529632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 ((n + 1) % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P4012254040828529632

namespace A095894

/-- `∑[∑[gcd(5, (n+1)%2)]]` -/
def P4012254040828529632.Spec : Prop :=
  ∀ n, (P4012254040828529632.a n : ℤ) = A095894 n

end A095894

/-! ## A095894.P9780692112284115756

`∑[∑[6-a(n-1)]]` with `a(0)=1`
-/

namespace A095894.P9780692112284115756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P9780692112284115756

namespace A095894

/-- `∑[∑[6-a(n-1)]]` -/
def P9780692112284115756.Spec : Prop :=
  ∀ n, P9780692112284115756.a n = A095894 n

end A095894

/-! ## A095894.P17544801256780455546

`∑[∑[∑[ogf((1+5x)/(1+x))]]]`
-/

namespace A095894.P17544801256780455546
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P17544801256780455546

namespace A095894

/-- `∑[∑[∑[ogf((1+5x)/(1+x))]]]` -/
def P17544801256780455546.Spec : Prop :=
  ∀ n, P17544801256780455546.a n = A095894 n

end A095894

/-! ## A095894.P471233687571296137

`∑[∑[3-2*(-1)^n]]`
-/

namespace A095894.P471233687571296137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P471233687571296137

namespace A095894

/-- `∑[∑[3-2*(-1)^n]]` -/
def P471233687571296137.Spec : Prop :=
  ∀ n, P471233687571296137.a n = A095894 n

end A095894

/-! ## A095894.P3239577742842741197

`∑[xor(1, n+1)]+(n+1)²`
-/

namespace A095894.P3239577742842741197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2

end

end A095894.P3239577742842741197

namespace A095894

/-- `∑[xor(1, n+1)]+(n+1)²` -/
def P3239577742842741197.Spec : Prop :=
  ∀ n, (P3239577742842741197.a n : ℤ) = A095894 n

end A095894

/-! ## A095894.P3564792151159129209

`6*n+a(n-2)+1` with `a(0)=1, a(1)=7`
-/

namespace A095894.P3564792151159129209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 * n + (a (n - 2) + 1)

end

end A095894.P3564792151159129209

namespace A095894

/-- `6*n+a(n-2)+1` -/
def P3564792151159129209.Spec : Prop :=
  ∀ n, (P3564792151159129209.a n : ℤ) = A095894 n

end A095894

/-! ## A095894.P5510229049486539088

`∑[n+1]+and(-2, (n+1)²)`
-/

namespace A095894.P5510229049486539088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.land (-2) ((n + 1) ^ 2 : ℤ)

end

end A095894.P5510229049486539088

namespace A095894

/-- `∑[n+1]+and(-2, (n+1)²)` -/
def P5510229049486539088.Spec : Prop :=
  ∀ n, P5510229049486539088.a n = A095894 n

end A095894

/-! ## A095894.P7148400867544936277

`(n+1)²+∑[n+1]-and(1, n+1)`
-/

namespace A095894.P7148400867544936277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 (n + 1) : ℤ))

end

end A095894.P7148400867544936277

namespace A095894

/-- `(n+1)²+∑[n+1]-and(1, n+1)` -/
def P7148400867544936277.Spec : Prop :=
  ∀ n, P7148400867544936277.a n = A095894 n

end A095894

/-! ## A095894.P9739835584293969802

`(n+1+n)²-a(n-1)-n²` with `a(0)=1`
-/

namespace A095894.P9739835584293969802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1 + n) ^ 2 : ℤ) - a (n - 1) - (n ^ 2 : ℤ)

end

end A095894.P9739835584293969802

namespace A095894

/-- `(n+1+n)²-a(n-1)-n²` -/
def P9739835584293969802.Spec : Prop :=
  ∀ n, P9739835584293969802.a n = A095894 n

end A095894

/-! ## A095894.P4064078573436942607

`Δ[A036487(n)+n²]`
-/

namespace A095894.P4064078573436942607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095894.P4064078573436942607

namespace A095894

/-- `Δ[A036487(n)+n²]` -/
def P4064078573436942607.Spec : Prop :=
  ∀ n, P4064078573436942607.a n = A095894 n

end A095894

/-! ## A095894.P5595906899970929487

`A195016(n)+1-n²`
-/

namespace A095894.P5595906899970929487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195016 n + (1 - (n ^ 2 : ℤ))

end

end A095894.P5595906899970929487

namespace A095894

/-- `A195016(n)+1-n²` -/
def P5595906899970929487.Spec : Prop :=
  ∀ n, P5595906899970929487.a n = A095894 n

end A095894

/-! ## A095894.P8631752446330125172

`A077221(n+1)-∑[n]`
-/

namespace A095894.P8631752446330125172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A095894.P8631752446330125172

namespace A095894

/-- `A077221(n+1)-∑[n]` -/
def P8631752446330125172.Spec : Prop :=
  ∀ n, P8631752446330125172.a n = A095894 n

end A095894

/-! ## A095894.P7724630036269687804

`A139596(n)+∑[1-n]`
-/

namespace A095894.P7724630036269687804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095894.P7724630036269687804

namespace A095894

/-- `A139596(n)+∑[1-n]` -/
def P7724630036269687804.Spec : Prop :=
  ∀ n, P7724630036269687804.a n = A095894 n

end A095894

/-!
# A095895: G.f.: A(x) = Product_{n>=1} 1/(1 - n*A007947(n)*x^n)^(1/n^2), where A007947(n) is the product of the distinct prime factors of n.

The programs for A095895, there is no canonical definition to state claims against.
-/

/-! ## A095895.P14636125774491322466

`or(A220418(n+1), A321320(A220418(n+1)))`
-/

namespace A095895.P14636125774491322466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220418 (n + 1)) (A321320 (A220418 (n + 1)).toNat)

end

end A095895.P14636125774491322466

/-! ## A095895.P6229360485766000087

`or(A057574(n), A057594(A129374(2*(n+1))))`
-/

namespace A095895.P6229360485766000087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057574 n) (A057594 (A129374 (2 * (n + 1))).toNat)

end

end A095895.P6229360485766000087

/-!
# A095896: Triangle read by rows: T(n,k) = n^(n-k+1), n>=1, 1<=k<=n.

The programs for A095896, the canonical program `A095896.P13431824080749461642` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095896 has offset 1).

The definition of A095896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095896.P13431824080749461642

`(row(n)+1)^(row(n)+1-col(n))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095896

/-- `(row(n)+1)^(row(n)+1-col(n))` -/
def P13431824080749461642.Spec : Prop :=
  ∀ n, P13431824080749461642.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P2712936063542773624

`(row(n)+1)^(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095896.P2712936063542773624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1 : ℤ)

end

end A095896.P2712936063542773624

namespace A095896

/-- `(row(n)+1)^(row(n)+1-(col(n)+1)+1)` -/
def P2712936063542773624.Spec : Prop :=
  ∀ n, P2712936063542773624.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P9321200285679548822

`∑[char[∑[n]]]^A004736(n+1)`
-/

namespace A095896.P9321200285679548822
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A004736 (n + 1) : ℤ)

end

end A095896.P9321200285679548822

namespace A095896

/-- `∑[char[∑[n]]]^A004736(n+1)` -/
def P9321200285679548822.Spec : Prop :=
  ∀ n, P9321200285679548822.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P9404346312901332103

`∑[char[∑[n]]]^(A025581(n)+1)`
-/

namespace A095896.P9404346312901332103
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A025581 n + 1 : ℤ)

end

end A095896.P9404346312901332103

namespace A095896

/-- `∑[char[∑[n]]]^(A025581(n)+1)` -/
def P9404346312901332103.Spec : Prop :=
  ∀ n, P9404346312901332103.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P16543050444723047808

`∑[char[∑[n]]]^A057555(2*(n+1))`
-/

namespace A095896.P16543050444723047808
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A057555 (2 * (n + 1)) : ℤ)

end

end A095896.P16543050444723047808

namespace A095896

/-- `∑[char[∑[n]]]^A057555(2*(n+1))` -/
def P16543050444723047808.Spec : Prop :=
  ∀ n, P16543050444723047808.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P12566341873326482494

`A000194(2*(n+1))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A095896.P12566341873326482494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000194 (2 * (n + 1)) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A095896.P12566341873326482494

namespace A095896

/-- `A000194(2*(n+1))^(C(comp[∑[n]]-n, 2)-n)` -/
def P12566341873326482494.Spec : Prop :=
  ∀ n, P12566341873326482494.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P3328214336342016972

`A075363(A038722(n+1))`
-/

namespace A095896.P3328214336342016972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (A038722 (n + 1)).toNat

end

end A095896.P3328214336342016972

namespace A095896

/-- `A075363(A038722(n+1))` -/
def P3328214336342016972.Spec : Prop :=
  ∀ n, P3328214336342016972.a n = A095896 (n + 1)

end A095896

/-! ## A095896.P1785932274119513025

`A075363(A002024(n+1)²-n)`
-/

namespace A095896.P1785932274119513025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A095896.P1785932274119513025

namespace A095896

/-- `A075363(A002024(n+1)²-n)` -/
def P1785932274119513025.Spec : Prop :=
  ∀ n, P1785932274119513025.a n = A095896 (n + 1)

end A095896

/-! ## A095896.P3751238425441366975

`A075363(A123578(n+1)²-n)`
-/

namespace A095896.P3751238425441366975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075363 (A123578 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A095896.P3751238425441366975

namespace A095896

/-- `A075363(A123578(n+1)²-n)` -/
def P3751238425441366975.Spec : Prop :=
  ∀ n, P3751238425441366975.a n = A095896 (n + 1)

end A095896

/-! ## A095896.P9372443586607540281

`A002024(n+1)*A095888(n+1)`
-/

namespace A095896.P9372443586607540281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A095888 (n + 1)

end

end A095896.P9372443586607540281

namespace A095896

/-- `A002024(n+1)*A095888(n+1)` -/
def P9372443586607540281.Spec : Prop :=
  ∀ n, P9372443586607540281.a n = A095896 (n + 1)

end A095896

/-! ## A095896.P911771529993188255

`A002024(n+1)^A000027(A025581(n)+1)`
-/

namespace A095896.P911771529993188255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A000027 (A025581 n + 1).toNat : ℤ)

end

end A095896.P911771529993188255

namespace A095896

/-- `A002024(n+1)^A000027(A025581(n)+1)` -/
def P911771529993188255.Spec : Prop :=
  ∀ n, P911771529993188255.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P17393215428497471951

`A002024(n+1)/A075363(n+1)*A000312(A002024(n+1))`
-/

namespace A095896.P17393215428497471951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A075363 (n + 1) : ℚ) * (A000312 (A002024 (n + 1)).toNat : ℚ)

end

end A095896.P17393215428497471951

namespace A095896

/-- `A002024(n+1)/A075363(n+1)*A000312(A002024(n+1))` -/
def P17393215428497471951.Spec : Prop :=
  ∀ n, P17393215428497471951.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P5024580039823450834

`A002024(n+1)/A076112(n+1)*A000169(A002024(n+1))`
-/

namespace A095896.P5024580039823450834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A076112 (n + 1) : ℚ) * (A000169 (A002024 (n + 1)).toNat : ℚ)

end

end A095896.P5024580039823450834

namespace A095896

/-- `A002024(n+1)/A076112(n+1)*A000169(A002024(n+1))` -/
def P5024580039823450834.Spec : Prop :=
  ∀ n, P5024580039823450834.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P5438318748662028922

`A123670(n+1)/A008276(n+1)`
-/

namespace A095896.P5438318748662028922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123670 (n + 1) : ℚ) / (A008276 (n + 1) : ℚ)

end

end A095896.P5438318748662028922

namespace A095896

/-- `A123670(n+1)/A008276(n+1)` -/
def P5438318748662028922.Spec : Prop :=
  ∀ n, P5438318748662028922.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P9755882682138738667

`round(sqrt(2*n+1))^A000005(A130321(n))`
-/

namespace A095896.P9755882682138738667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) : ℚ) ^ (A000005 (A130321 n).toNat : ℤ)

end

end A095896.P9755882682138738667

namespace A095896

/-- `round(sqrt(2*n+1))^A000005(A130321(n))` -/
def P9755882682138738667.Spec : Prop :=
  ∀ n, P9755882682138738667.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P8499499105441964757

`A002109(A002024(n+1))/A010552(n)`
-/

namespace A095896.P8499499105441964757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002109 (A002024 (n + 1)).toNat : ℚ) / (A010552 n : ℚ)

end

end A095896.P8499499105441964757

namespace A095896

/-- `A002109(A002024(n+1))/A010552(n)` -/
def P8499499105441964757.Spec : Prop :=
  ∀ n, P8499499105441964757.a n = (A095896 (n + 1) : ℚ)

end A095896

/-! ## A095896.P15988457484902482868

`A002109(A123578(n+1))/A010552(n)`
-/

namespace A095896.P15988457484902482868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002109 (A123578 (n + 1)).toNat : ℚ) / (A010552 n : ℚ)

end

end A095896.P15988457484902482868

namespace A095896

/-- `A002109(A123578(n+1))/A010552(n)` -/
def P15988457484902482868.Spec : Prop :=
  ∀ n, P15988457484902482868.a n = (A095896 (n + 1) : ℚ)

end A095896

/-!
# A095897: Expansion of x*(1+4*x-4*x^2)/((1+2*x)*(1-6*x)*(1-8*x^2)).

The programs for A095897, the canonical program `A095897.P2767785248223963237` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095897 has offset 1).

The definition of A095897 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-4x^2)/(1-4x-20x^2+32x^3+96x^4))` (program `A095897.P2767785248223963237`, by `A095897.P2767785248223963237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095897.P11200825987482796435

`2^(n-1)*(3^(n+1)-1+((-1)^(n+1)-1)*(sqrt(2)^n-1))`
-/

namespace A095897.P11200825987482796435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) * (((3 ^ (n + 1) : ℤ) - 1 : ℝ) + ((-1) ^ (n + 1) - 1 : ℝ) * (Real.sqrt (2 : ℝ) ^ n - 1))

end

end A095897.P11200825987482796435

namespace A095897

/-- `2^(n-1)*(3^(n+1)-1+((-1)^(n+1)-1)*(sqrt(2)^n-1))` -/
def P11200825987482796435.Spec : Prop :=
  ∀ n, P11200825987482796435.a n = (A095897 (n + 1) : ℝ)

end A095897

/-! ## A095897.P9684693785743180418

`4*a(n-1)+20*a(n-2)-32*a(n-3)-96*a(n-4)` with `a(0)=1, a(1)=8, a(2)=48, a(3)=320`
-/

namespace A095897.P9684693785743180418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 48, 320] fun n a =>
  4 * a (n - 1) + 20 * a (n - 2) - 32 * a (n - 3) - 96 * a (n - 4)

end

end A095897.P9684693785743180418

namespace A095897

/-- `4*a(n-1)+20*a(n-2)-32*a(n-3)-96*a(n-4)` -/
def P9684693785743180418.Spec : Prop :=
  ∀ n, P9684693785743180418.a n = A095897 (n + 1)

end A095897

/-! ## A095897.P2767785248223963237

`ogf((1+4x-4x^2)/(1-4x-20x^2+32x^3+96x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095897

/-- `ogf((1+4x-4x^2)/(1-4x-20x^2+32x^3+96x^4))` -/
def P2767785248223963237.Spec : Prop :=
  ∀ n, P2767785248223963237.a n = A095897 (n + 1)

theorem P2767785248223963237.correct : P2767785248223963237.Spec := by
  intro n
  simp only [A095897, Nat.add_sub_cancel]

end A095897

/-! ## A095897.P10262520730370213846

`A016129(n)-A045991(A077957(n))`
-/

namespace A095897.P10262520730370213846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 n - A045991 (A077957 n).toNat

end

end A095897.P10262520730370213846

namespace A095897

/-- `A016129(n)-A045991(A077957(n))` -/
def P10262520730370213846.Spec : Prop :=
  ∀ n, P10262520730370213846.a n = A095897 (n + 1)

end A095897

/-!
# A095898: The (1,1)-term of the 3 X 3 matrix M^n, where M = [1,2,3 / 4,7,11 / 6,10,16].

The programs for A095898, the canonical program `A095898.P15786992610298129274` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095898 has offset 1).

The definition of A095898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095898.P13127072495504629828

`ogf((1+3x)/(1-24x-x^2))`
-/

namespace A095898.P13127072495504629828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -24, -1] n

end

end A095898.P13127072495504629828

namespace A095898

/-- `ogf((1+3x)/(1-24x-x^2))` -/
def P13127072495504629828.Spec : Prop :=
  ∀ n, P13127072495504629828.a n = A095898 (n + 1)

end A095898

/-! ## A095898.P15786992610298129274

`24*a(n-1)+a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095898

/-- `24*a(n-1)+a(n-2)` -/
def P15786992610298129274.Spec : Prop :=
  ∀ n, (P15786992610298129274.a n : ℤ) = A095898 (n + 1)

theorem P15786992610298129274.correct : P15786992610298129274.Spec := by
  intro n
  simp only [A095898, Nat.add_sub_cancel]

end A095898

/-! ## A095898.P6886887183264949760

`25*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=27`
-/

namespace A095898.P6886887183264949760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  25 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A095898.P6886887183264949760

namespace A095898

/-- `25*a(n-1)-(a(n-1)-a(n-2))` -/
def P6886887183264949760.Spec : Prop :=
  ∀ n, P6886887183264949760.a n = A095898 (n + 1)

end A095898

