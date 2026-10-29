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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A086200: Number of unrooted steric quartic trees with 2n (unlabeled) nodes and possessing a bicentroid; number of 2n-carbon alkanes C(2n)H(4n +2) with a bicentroid when stereoisomers are regarded as different.

The programs for A086200, there is no canonical definition to state claims against.
-/

/-! ## A086200.P7318051254471336189

`A000625(n+2)*(A000625(n+2)+1)/2`
-/

namespace A086200.P7318051254471336189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000625 (n + 2) * (A000625 (n + 2) + 1) : ℚ) / 2

end

end A086200.P7318051254471336189

/-! ## A086200.P3807635055005371347

`C(A000625(n+2)+1, 2)`
-/

namespace A086200.P3807635055005371347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000625 (n + 2) + 1).toNat 2

end

end A086200.P3807635055005371347

/-! ## A086200.P31446708101761202

`A000628(2*(n+2))-A086194(2*(n+2))`
-/

namespace A086200.P31446708101761202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 (2 * (n + 2)) - A086194 (2 * (n + 2))

end

end A086200.P31446708101761202

/-! ## A086200.P11760974927237507271

`A000217(A000625(n+2))`
-/

namespace A086200.P11760974927237507271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000625 (n + 2)).toNat

end

end A086200.P11760974927237507271

/-! ## A086200.P12570889744879351291

`A000217(eq[1, char[A000625(n)]])`
-/

namespace A086200.P12570889744879351291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000625 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A086200.P12570889744879351291

/-!
# A086205: Determinant of n X n matrix M_(i,j) = binomial(i^2, j).

The programs for A086205, there is no canonical definition to state claims against.
-/

/-! ## A086205.P7025367378897770849

`2^(n*(n-1)/2)*A057863(n)`
-/

namespace A086205.P7025367378897770849
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) * (A057863 n : ℝ)

end

end A086205.P7025367378897770849

/-! ## A086205.P10876627885944408431

`∏[∏[a(n-1)+4]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A086205.P10876627885944408431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086205.P10876627885944408431

/-! ## A086205.P5304994734319438816

`∏[(4*n-2)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A086205.P5304994734319438816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((4 * n : ℤ) - 2) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086205.P5304994734319438816

/-! ## A086205.P17430551494155946642

`∏[ceil(2^(n-1))*∏[abs(1-2*n)]]`
-/

namespace A086205.P17430551494155946642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086205.P17430551494155946642

/-! ## A086205.P6549680246868471804

`2*∏[A001813(n)/2]`
-/

namespace A086205.P6549680246868471804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A086205.P6549680246868471804

/-!
# A086206: Number of n X n matrices with entries in {0,1} with no zero row and with zero main diagonal.

The programs for A086206, the canonical program `A086206.P6062239051761289669` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086206 has offset 1).

The definition of A086206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086206.P6062239051761289669

`(2^n-1)^(n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086206

/-- `(2^n-1)^(n+1)` -/
def P6062239051761289669.Spec : Prop :=
  ∀ n, P6062239051761289669.a n = A086206 (n + 1)

theorem P6062239051761289669.correct : P6062239051761289669.Spec := by
  intro n
  simp only [A086206, Nat.add_sub_cancel]

end A086206

/-! ## A086206.P4821232277054932065

`abs(A225883(n)^(n+1))`
-/

namespace A086206.P4821232277054932065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225883 n ^ (n + 1)|

end

end A086206.P4821232277054932065

namespace A086206

/-- `abs(A225883(n)^(n+1))` -/
def P4821232277054932065.Spec : Prop :=
  ∀ n, P4821232277054932065.a n = A086206 (n + 1)

end A086206

/-! ## A086206.P2243373770232968208

`(2^n-1)*A055601(n)`
-/

namespace A086206.P2243373770232968208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * A055601 n

end

end A086206.P2243373770232968208

namespace A086206

/-- `(2^n-1)*A055601(n)` -/
def P2243373770232968208.Spec : Prop :=
  ∀ n, P2243373770232968208.a n = A086206 (n + 1)

theorem P2243373770232968208.correct : P2243373770232968208.Spec := by
  intro n
  simp only [A086206, Nat.add_sub_cancel, A086206.P2243373770232968208.a, A086206.P6062239051761289669.a, A055601, A055601.P3085073676020598656.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086206

/-! ## A086206.P15058179294311817831

`abs((-A000225(n))^(n+1))`
-/

namespace A086206.P15058179294311817831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A000225 n) ^ (n + 1)|

end

end A086206.P15058179294311817831

namespace A086206

/-- `abs((-A000225(n))^(n+1))` -/
def P15058179294311817831.Spec : Prop :=
  ∀ n, P15058179294311817831.a n = A086206 (n + 1)

end A086206

/-! ## A086206.P9946052985207471217

`abs((A000918(n)+1)^(n+1))`
-/

namespace A086206.P9946052985207471217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000918 n + 1) ^ (n + 1)|

end

end A086206.P9946052985207471217

namespace A086206

/-- `abs((A000918(n)+1)^(n+1))` -/
def P9946052985207471217.Spec : Prop :=
  ∀ n, P9946052985207471217.a n = A086206 (n + 1)

end A086206

/-!
# A086209: Number of partitions of n-th partition number into partition numbers.

The programs for A086209, there is no canonical definition to state claims against.
-/

/-! ## A086209.P5777030282388745565

`A007279(A000041(n))`
-/

namespace A086209.P5777030282388745565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007279 (A000041 n).toNat

end

end A086209.P5777030282388745565

/-! ## A086209.P13894182544289152459

`A007279(A213598(n))`
-/

namespace A086209.P13894182544289152459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007279 (A213598 n).toNat

end

end A086209.P13894182544289152459

/-! ## A086209.P5605440269192945742

`A007279(A330643(n))`
-/

namespace A086209.P5605440269192945742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007279 (A330643 n).toNat

end

end A086209.P5605440269192945742

/-! ## A086209.P3858129101507011328

`A007279(sqrt(A001255(n)))`
-/

namespace A086209.P3858129101507011328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007279 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

end

end A086209.P3858129101507011328

/-! ## A086209.P3947977594826567108

`A007279(∑[A002865(n)])`
-/

namespace A086209.P3947977594826567108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086209.P3947977594826567108

/-!
# A086211: Triangle related to Bell numbers; T(n,k) read by rows, n>=1, 1<=k<=n: T(n,k) = T(n-1,k-1) + (k-1)*T(n-1,k) + Sum_{j=k..n-2} T(n-1,j)) with T(1,1)=1, T(1,k)=0 if k>1.

The programs for A086211, there is no canonical definition to state claims against.
-/

/-! ## A086211.P21027142804924175

`A110189(n)-A324179(A042577(n))`
-/

namespace A086211.P21027142804924175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110189 n - A324179 (A042577 n).toNat

end

end A086211.P21027142804924175

/-! ## A086211.P18242379015284497154

`A110189(n)-A184963(A110218(n+1))`
-/

namespace A086211.P18242379015284497154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110189 n - A184963 (A110218 (n + 1)).toNat

end

end A086211.P18242379015284497154

/-!
# A086213: Tribonacci numbers that start with first three cubes.

The programs for A086213, the canonical program `A086213.P10186156047065862494` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086213 has offset 0).

The definition of A086213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086213.P2136364229616920342

`ogf((1+7x+18x^2)/(1-x-x^2-x^3))`
-/

namespace A086213.P2136364229616920342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 18] [1, -1, -1, -1] n

end

end A086213.P2136364229616920342

namespace A086213

/-- `ogf((1+7x+18x^2)/(1-x-x^2-x^3))` -/
def P2136364229616920342.Spec : Prop :=
  ∀ n, P2136364229616920342.a n = A086213 n

end A086213

/-! ## A086213.P10186156047065862494

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=27`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086213

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P10186156047065862494.Spec : Prop :=
  ∀ n, (P10186156047065862494.a n : ℤ) = A086213 n

theorem P10186156047065862494.correct : P10186156047065862494.Spec := by
  intro n
  simp only [A086213]

end A086213

/-! ## A086213.P9044234581507672598

`∑{digits}[A065841(n+1), #*#²]`
-/

namespace A086213.P9044234581507672598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * x ^ 2).sum

end

end A086213.P9044234581507672598

namespace A086213

/-- `∑{digits}[A065841(n+1), #*#²]` -/
def P9044234581507672598.Spec : Prop :=
  ∀ n, (P9044234581507672598.a n : ℤ) = A086213 n

end A086213

/-!
# A086216: Number of 4-connected unlabeled n-node graphs.

The programs for A086216, there is no canonical definition to state claims against.
-/

/-! ## A086216.P1630083651433902379

`A086217(n+1)+A052445(n+1)`
-/

namespace A086216.P1630083651433902379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086217 (n + 1) + A052445 (n + 1)

end

end A086216.P1630083651433902379

/-! ## A086216.P12108703979134408894

`A052445(n+1)+A324240(n+1)+A324234(n+1)`
-/

namespace A086216.P12108703979134408894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052445 (n + 1) + (A324240 (n + 1) + A324234 (n + 1))

end

end A086216.P12108703979134408894

/-! ## A086216.P9318186218618330516

`A327365(∑[A217538(3*n+4)])`
-/

namespace A086216.P9318186218618330516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327365 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086216.P9318186218618330516

/-! ## A086216.P17961854013996369101

`A327805(∑[A217538(3*n+4)])`
-/

namespace A086216.P17961854013996369101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086216.P17961854013996369101

/-! ## A086216.P10025637530034976617

`A327365(A141214(n)-A097602(n+1))`
-/

namespace A086216.P10025637530034976617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327365 (A141214 n - A097602 (n + 1)).toNat

end

end A086216.P10025637530034976617

/-!
# A086217: Number of 5-connected graphs on n nodes.

The programs for A086217, there is no canonical definition to state claims against.
-/

/-! ## A086217.P11644080529077518568

`A324240(n+1)+A324234(n+1)`
-/

namespace A086217.P11644080529077518568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324240 (n + 1) + A324234 (n + 1)

end

end A086217.P11644080529077518568

/-! ## A086217.P1330852889483479032

`A086216(n+1)-A052445(n+1)`
-/

namespace A086217.P1330852889483479032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086216 (n + 1) - A052445 (n + 1)

end

end A086217.P1330852889483479032

/-! ## A086217.P5324864084271889928

`A327805(A176995(n+1)+A000217(n))`
-/

namespace A086217.P5324864084271889928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (A176995 (n + 1) + A000217 n).toNat

end

end A086217.P5324864084271889928

/-!
# A086218: Primes p such that 3^p - 2 is prime.

The programs for A086218, there is no canonical definition to state claims against.
-/

/-! ## A086218.P133842383928404587

`A000040(A089919(n+1))`
-/

namespace A086218.P133842383928404587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089919 (n + 1)).toNat

end

end A086218.P133842383928404587

/-! ## A086218.P16236097314414258254

`p?[A014224(n+1)]`
-/

namespace A086218.P16236097314414258254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A086218.P16236097314414258254

/-! ## A086218.P17092382554216239005

`A089213(comp[n²+n])`
-/

namespace A086218.P17092382554216239005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089213 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A086218.P17092382554216239005

/-!
# A086220: Numbers n such that p=n^2+2, p+2, p+6 and p+8 are four consecutive primes.

The programs for A086220, there is no canonical definition to state claims against.
-/

/-! ## A086220.P6865048575330161436

`∩[A086380(n+1), A157929(n+1)]`
-/

namespace A086220.P6865048575330161436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086220.P6865048575330161436

/-! ## A086220.P7265504228887692403

`filter[A157929(n+1), A355449(#)]`
-/

namespace A086220.P7265504228887692403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355449 (f1 j).toNat = 1) n)

end

end A086220.P7265504228887692403

/-!
# A086221: Bisection of A086652.

The programs for A086221, the canonical program `A086221.P6094936197668140026` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086221 has offset 1).

The definition of A086221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086221.P6094936197668140026

`2^(2*(n+1)+2)-3*2^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086221

/-- `2^(2*(n+1)+2)-3*2^n` -/
def P6094936197668140026.Spec : Prop :=
  ∀ n, P6094936197668140026.a n = A086221 (n + 1)

theorem P6094936197668140026.correct : P6094936197668140026.Spec := by
  intro n
  simp only [A086221, Nat.add_sub_cancel]

end A086221

/-! ## A086221.P6128139901277930523

`ogf((13-20x)/(1-6x+8x^2))`
-/

namespace A086221.P6128139901277930523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [13, -20] [1, -6, 8] n

end

end A086221.P6128139901277930523

namespace A086221

/-- `ogf((13-20x)/(1-6x+8x^2))` -/
def P6128139901277930523.Spec : Prop :=
  ∀ n, P6128139901277930523.a n = A086221 (n + 1)

end A086221

/-! ## A086221.P4558551531482470839

`A086652(Δ[n²])`
-/

namespace A086221.P4558551531482470839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A086221.P4558551531482470839

namespace A086221

/-- `A086652(Δ[n²])` -/
def P4558551531482470839.Spec : Prop :=
  ∀ n, P4558551531482470839.a n = A086221 (n + 1)

end A086221

/-! ## A086221.P3289853406517045000

`xor(Δ[A005367(n)], A171499(n))`
-/

namespace A086221.P3289853406517045000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A171499 n)

end

end A086221.P3289853406517045000

namespace A086221

/-- `xor(Δ[A005367(n)], A171499(n))` -/
def P3289853406517045000.Spec : Prop :=
  ∀ n, P3289853406517045000.a n = A086221 (n + 1)

end A086221

/-! ## A086221.P6917802186458777245

`xor(A153894(n), A220236(n+1))`
-/

namespace A086221.P6917802186458777245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153894 n) (A220236 (n + 1))

end

end A086221.P6917802186458777245

namespace A086221

/-- `xor(A153894(n), A220236(n+1))` -/
def P6917802186458777245.Spec : Prop :=
  ∀ n, P6917802186458777245.a n = A086221 (n + 1)

end A086221

/-!
# A086222: a(n) = card{ (x,y,z) | x <= y <= z and lcm(x,y,z) = n }.

The programs for A086222, the canonical program `A086222.P1188365077820885668` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086222 has offset 1).

The definition of A086222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086222.P1188365077820885668

`A086165(n+1)+A048691(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A086222

/-- `A086165(n+1)+A048691(n+1)` -/
def P1188365077820885668.Spec : Prop :=
  ∀ n, P1188365077820885668.a n = A086222 (n + 1)

theorem P1188365077820885668.correct : P1188365077820885668.Spec := by
  intro n
  simp only [A086222, Nat.add_sub_cancel]

end A086222

/-! ## A086222.P9250726603870179494

`∑{d}[n+1, A377304(#)*A008683((n+1)/#)]`
-/

namespace A086222.P9250726603870179494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A377304 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086222.P9250726603870179494

namespace A086222

/-- `∑{d}[n+1, A377304(#)*A008683((n+1)/#)]` -/
def P9250726603870179494.Spec : Prop :=
  ∀ n, P9250726603870179494.a n = A086222 (n + 1)

end A086222

/-! ## A086222.P12560101249790151656

`(A070919(n+1)+3*A048691(n+1)+2)/6`
-/

namespace A086222.P12560101249790151656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070919 (n + 1) + 3 * A048691 (n + 1) + 2 : ℚ) / 6

end

end A086222.P12560101249790151656

namespace A086222

/-- `(A070919(n+1)+3*A048691(n+1)+2)/6` -/
def P12560101249790151656.Spec : Prop :=
  ∀ n, P12560101249790151656.a n = (A086222 (n + 1) : ℚ)

end A086222

/-! ## A086222.P6733941057572418630

`∑{d}[n+1, A008683(#)*A377304((n+1)/#)]`
-/

namespace A086222.P6733941057572418630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A377304 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086222.P6733941057572418630

namespace A086222

/-- `∑{d}[n+1, A008683(#)*A377304((n+1)/#)]` -/
def P6733941057572418630.Spec : Prop :=
  ∀ n, P6733941057572418630.a n = A086222 (n + 1)

end A086222

/-! ## A086222.P1037951575564432674

`A086165(n+1)+A004273(A018892(n+1))`
-/

namespace A086222.P1037951575564432674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (n + 1) + A004273 (A018892 (n + 1)).toNat

end

end A086222.P1037951575564432674

namespace A086222

/-- `A086165(n+1)+A004273(A018892(n+1))` -/
def P1037951575564432674.Spec : Prop :=
  ∀ n, P1037951575564432674.a n = A086222 (n + 1)

end A086222

/-! ## A086222.P10504331731338127262

`A086165(n+1)+A004396(A146564(n+1))`
-/

namespace A086222.P10504331731338127262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (n + 1) + A004396 (A146564 (n + 1)).toNat

end

end A086222.P10504331731338127262

namespace A086222

/-- `A086165(n+1)+A004396(A146564(n+1))` -/
def P10504331731338127262.Spec : Prop :=
  ∀ n, P10504331731338127262.a n = A086222 (n + 1)

end A086222

/-! ## A086222.P908221753918319209

`A086165(n+1)+A000005((n+1)²)`
-/

namespace A086222.P908221753918319209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086165 (n + 1) + A000005 ((n + 1) ^ 2)

end

end A086222.P908221753918319209

namespace A086222

/-- `A086165(n+1)+A000005((n+1)²)` -/
def P908221753918319209.Spec : Prop :=
  ∀ n, P908221753918319209.a n = A086222 (n + 1)

end A086222

/-! ## A086222.P3697010552420409236

`A343656(∑[n+3]+1)+A086165(n+1)`
-/

namespace A086222.P3697010552420409236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343656 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A086165 (n + 1)

end

end A086222.P3697010552420409236

namespace A086222

/-- `A343656(∑[n+3]+1)+A086165(n+1)` -/
def P3697010552420409236.Spec : Prop :=
  ∀ n, P3697010552420409236.a n = A086222 (n + 1)

end A086222

/-!
# A086223: Every integer can be represented uniquely as m = k*2^(j+1)+2^j-1. Sequence gives values of k for m = repunit(n).

The programs for A086223, the canonical program `A086223.P8763956264098171703` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086223 has offset 1).

The definition of A086223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086223.P3950892719000878185

`ogf((x-8x^2+46x^3-35x^4)/(1-11x+10x^2))`
-/

namespace A086223.P3950892719000878185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -8, 46, -35] [1, -11, 10] n

end

end A086223.P3950892719000878185

namespace A086223

/-- `ogf((x-8x^2+46x^3-35x^4)/(1-11x+10x^2))` -/
def P3950892719000878185.Spec : Prop :=
  ∀ n, P3950892719000878185.a n = A086223 (n + 1)

end A086223

/-! ## A086223.P8763956264098171703

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=69, a(4)=694`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086223

/-- `11*a(n-1)-10*a(n-2)` -/
def P8763956264098171703.Spec : Prop :=
  ∀ n, P8763956264098171703.a n = A086223 (n + 1)

theorem P8763956264098171703.correct : P8763956264098171703.Spec := by
  intro n
  simp only [A086223, Nat.add_sub_cancel]

end A086223

/-!
# A086224: a(n) = 7*2^n - 1.

The programs for A086224, the canonical program `A086224.P17314597759689141407` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086224 has offset 0).

The definition of A086224 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-1` (program `A086224.P17314597759689141407`, by `A086224.P17314597759689141407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086224.P17314597759689141407

`7*2^n-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086224

/-- `7*2^n-1` -/
def P17314597759689141407.Spec : Prop :=
  ∀ n, P17314597759689141407.a n = A086224 n

theorem P17314597759689141407.correct : P17314597759689141407.Spec := by
  intro n
  simp only [A086224]

end A086224

/-! ## A086224.P10874044422628609315

`ogf((6-5x)/(1-3x+2x^2))`
-/

namespace A086224.P10874044422628609315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -3, 2] n

end

end A086224.P10874044422628609315

namespace A086224

/-- `ogf((6-5x)/(1-3x+2x^2))` -/
def P10874044422628609315.Spec : Prop :=
  ∀ n, P10874044422628609315.a n = A086224 n

end A086224

/-! ## A086224.P41140845627253592

`(A052940(n+1)+A000225(n+3))/2`
-/

namespace A086224.P41140845627253592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052940 (n + 1) + A000225 (n + 3) : ℚ) / 2

end

end A086224.P41140845627253592

namespace A086224

/-- `(A052940(n+1)+A000225(n+3))/2` -/
def P41140845627253592.Spec : Prop :=
  ∀ n, P41140845627253592.a n = (A086224 n : ℚ)

end A086224

/-! ## A086224.P14600961135205317907

`abs(1-lcm(7, 2^n))`
-/

namespace A086224.P14600961135205317907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm 7 (2 ^ n) : ℤ)|

end

end A086224.P14600961135205317907

namespace A086224

/-- `abs(1-lcm(7, 2^n))` -/
def P14600961135205317907.Spec : Prop :=
  ∀ n, P14600961135205317907.a n = A086224 n

end A086224

/-! ## A086224.P17308745541909273614

`or(1, 2*a(n-1))` with `a(0)=6`
-/

namespace A086224.P17308745541909273614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A086224.P17308745541909273614

namespace A086224

/-- `or(1, 2*a(n-1))` -/
def P17308745541909273614.Spec : Prop :=
  ∀ n, (P17308745541909273614.a n : ℤ) = A086224 n

end A086224

/-! ## A086224.P16369725477561581727

`xor(1, 2*a(n-1))` with `a(0)=6`
-/

namespace A086224.P16369725477561581727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A086224.P16369725477561581727

namespace A086224

/-- `xor(1, 2*a(n-1))` -/
def P16369725477561581727.Spec : Prop :=
  ∀ n, (P16369725477561581727.a n : ℤ) = A086224 n

end A086224

/-! ## A086224.P28045285484357662

`∑[2*a(n-1)]` with `a(0)=6, a(1)=7`
-/

namespace A086224.P28045285484357662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 7] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086224.P28045285484357662

namespace A086224

/-- `∑[2*a(n-1)]` -/
def P28045285484357662.Spec : Prop :=
  ∀ n, (P28045285484357662.a n : ℤ) = A086224 n

end A086224

/-! ## A086224.P12916672208998895270

`2*(a(n-1)+1/2)` with `a(0)=6`
-/

namespace A086224.P12916672208998895270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A086224.P12916672208998895270

namespace A086224

/-- `2*(a(n-1)+1/2)` -/
def P12916672208998895270.Spec : Prop :=
  ∀ n, P12916672208998895270.a n = (A086224 n : ℚ)

theorem P12916672208998895270.correct : P12916672208998895270.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086224, Nat.add_sub_cancel, A086224.P12916672208998895270.a, A086224.P17314597759689141407.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086224, Nat.add_sub_cancel, A086224.P12916672208998895270.a, A086224.P17314597759689141407.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086224

/-! ## A086224.P11878232417936039423

`∑[a(n-1)+a(n-1)]` with `a(0)=6, a(1)=7`
-/

namespace A086224.P11878232417936039423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 7] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086224.P11878232417936039423

namespace A086224

/-- `∑[a(n-1)+a(n-1)]` -/
def P11878232417936039423.Spec : Prop :=
  ∀ n, (P11878232417936039423.a n : ℤ) = A086224 n

end A086224

/-! ## A086224.P415346348302788789

`floor(a(n-1)+a(n-1)+1)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A086224.P415346348302788789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A086224.P415346348302788789

namespace A086224

/-- `floor(a(n-1)+a(n-1)+1)` -/
def P415346348302788789.Spec : Prop :=
  ∀ n, (P415346348302788789.a n : ℤ) = A086224 n

theorem P415346348302788789.correct : P415346348302788789.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086224, Nat.add_sub_cancel, A086224.P415346348302788789.a, A086224.P17314597759689141407.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086224, Nat.add_sub_cancel, A086224.P415346348302788789.a, A086224.P17314597759689141407.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086224

/-! ## A086224.P17918463702583513900

`A267604(n+2)`
-/

namespace A086224.P17918463702583513900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 (n + 2)

end

end A086224.P17918463702583513900

namespace A086224

/-- `A267604(n+2)` -/
def P17918463702583513900.Spec : Prop :=
  ∀ n, P17918463702583513900.a n = A086224 n

end A086224

/-! ## A086224.P13309004481567621510

`A010737(Δ[n²])`
-/

namespace A086224.P13309004481567621510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A086224.P13309004481567621510

namespace A086224

/-- `A010737(Δ[n²])` -/
def P13309004481567621510.Spec : Prop :=
  ∀ n, P13309004481567621510.a n = A086224 n

end A086224

/-! ## A086224.P16415091168433185469

`∑[A154118(n)+5]`
-/

namespace A086224.P16415091168433185469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154118 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086224.P16415091168433185469

namespace A086224

/-- `∑[A154118(n)+5]` -/
def P16415091168433185469.Spec : Prop :=
  ∀ n, P16415091168433185469.a n = A086224 n

end A086224

/-! ## A086224.P15048462956749762047

`record[A267604(abs(2-n))]`
-/

namespace A086224.P15048462956749762047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086224.P15048462956749762047

namespace A086224

/-- `record[A267604(abs(2-n))]` -/
def P15048462956749762047.Spec : Prop :=
  ∀ n, P15048462956749762047.a n = A086224 n

end A086224

/-! ## A086224.P14116588355880890775

`or(n, A010737(2*n+1))`
-/

namespace A086224.P14116588355880890775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A010737 (2 * n + 1))

end

end A086224.P14116588355880890775

namespace A086224

/-- `or(n, A010737(2*n+1))` -/
def P14116588355880890775.Spec : Prop :=
  ∀ n, P14116588355880890775.a n = A086224 n

end A086224

/-! ## A086224.P4860018993925057779

`A385396(A004767(n+1))`
-/

namespace A086224.P4860018993925057779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385396 (A004767 (n + 1)).toNat

end

end A086224.P4860018993925057779

namespace A086224

/-- `A385396(A004767(n+1))` -/
def P4860018993925057779.Spec : Prop :=
  ∀ n, P4860018993925057779.a n = A086224 n

end A086224

/-! ## A086224.P2682049249119526641

`xor(A005009(n), A126646(n))`
-/

namespace A086224.P2682049249119526641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005009 n) (A126646 n)

end

end A086224.P2682049249119526641

namespace A086224

/-- `xor(A005009(n), A126646(n))` -/
def P2682049249119526641.Spec : Prop :=
  ∀ n, P2682049249119526641.a n = A086224 n

end A086224

/-! ## A086224.P5908268029661112645

`xor(A020707(n), A153893(n))`
-/

namespace A086224.P5908268029661112645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A153893 n)

end

end A086224.P5908268029661112645

namespace A086224

/-- `xor(A020707(n), A153893(n))` -/
def P5908268029661112645.Spec : Prop :=
  ∀ n, P5908268029661112645.a n = A086224 n

end A086224

/-! ## A086224.P7198196982350641904

`∩[A010737(n), A267604(n)]`
-/

namespace A086224.P7198196982350641904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086224.P7198196982350641904

namespace A086224

/-- `∩[A010737(n), A267604(n)]` -/
def P7198196982350641904.Spec : Prop :=
  ∀ n, (P7198196982350641904.a n : ℤ) = A086224 n

end A086224

/-! ## A086224.P4051475685208162281

`xor(A000225(n), A091629(n+1))`
-/

namespace A086224.P4051475685208162281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A091629 (n + 1))

end

end A086224.P4051475685208162281

namespace A086224

/-- `xor(A000225(n), A091629(n+1))` -/
def P4051475685208162281.Spec : Prop :=
  ∀ n, P4051475685208162281.a n = A086224 n

end A086224

/-!
# A086225: a(n) = 11*2^n - 1.

The programs for A086225, the canonical program `A086225.P10155150668756747458` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086225 has offset 0).

The definition of A086225 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*2^n-1` (program `A086225.P10155150668756747458`, by `A086225.P10155150668756747458.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086225.P10155150668756747458

`11*2^n-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086225

/-- `11*2^n-1` -/
def P10155150668756747458.Spec : Prop :=
  ∀ n, P10155150668756747458.a n = A086225 n

theorem P10155150668756747458.correct : P10155150668756747458.Spec := by
  intro n
  simp only [A086225]

end A086225

/-! ## A086225.P4759608798303027645

`ogf((10-9x)/(1-3x+2x^2))`
-/

namespace A086225.P4759608798303027645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -9] [1, -3, 2] n

end

end A086225.P4759608798303027645

namespace A086225

/-- `ogf((10-9x)/(1-3x+2x^2))` -/
def P4759608798303027645.Spec : Prop :=
  ∀ n, P4759608798303027645.a n = A086225 n

end A086225

/-! ## A086225.P3565976261313482522

`or(1, 2*a(n-1))` with `a(0)=10`
-/

namespace A086225.P3565976261313482522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A086225.P3565976261313482522

namespace A086225

/-- `or(1, 2*a(n-1))` -/
def P3565976261313482522.Spec : Prop :=
  ∀ n, (P3565976261313482522.a n : ℤ) = A086225 n

end A086225

/-! ## A086225.P329268443735153476

`xor(1, 2*a(n-1))` with `a(0)=10`
-/

namespace A086225.P329268443735153476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A086225.P329268443735153476

namespace A086225

/-- `xor(1, 2*a(n-1))` -/
def P329268443735153476.Spec : Prop :=
  ∀ n, (P329268443735153476.a n : ℤ) = A086225 n

end A086225

/-! ## A086225.P12731492578439111347

`∑[2*a(n-1)]` with `a(0)=10, a(1)=11`
-/

namespace A086225.P12731492578439111347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 11] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086225.P12731492578439111347

namespace A086225

/-- `∑[2*a(n-1)]` -/
def P12731492578439111347.Spec : Prop :=
  ∀ n, (P12731492578439111347.a n : ℤ) = A086225 n

end A086225

/-! ## A086225.P17187967428119739778

`2*(a(n-1)+1/2)` with `a(0)=10`
-/

namespace A086225.P17187967428119739778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A086225.P17187967428119739778

namespace A086225

/-- `2*(a(n-1)+1/2)` -/
def P17187967428119739778.Spec : Prop :=
  ∀ n, P17187967428119739778.a n = (A086225 n : ℚ)

theorem P17187967428119739778.correct : P17187967428119739778.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086225, Nat.add_sub_cancel, A086225.P17187967428119739778.a, A086225.P10155150668756747458.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086225, Nat.add_sub_cancel, A086225.P17187967428119739778.a, A086225.P10155150668756747458.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086225

/-! ## A086225.P8959239471974186487

`∑[a(n-1)+a(n-1)]` with `a(0)=10, a(1)=11`
-/

namespace A086225.P8959239471974186487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 11] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086225.P8959239471974186487

namespace A086225

/-- `∑[a(n-1)+a(n-1)]` -/
def P8959239471974186487.Spec : Prop :=
  ∀ n, (P8959239471974186487.a n : ℤ) = A086225 n

end A086225

/-! ## A086225.P5890891419451343673

`floor(a(n-1)+a(n-1)+1)` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A086225.P5890891419451343673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + (a (n - 1) + 1)

end

end A086225.P5890891419451343673

namespace A086225

/-- `floor(a(n-1)+a(n-1)+1)` -/
def P5890891419451343673.Spec : Prop :=
  ∀ n, (P5890891419451343673.a n : ℤ) = A086225 n

theorem P5890891419451343673.correct : P5890891419451343673.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A086225, Nat.add_sub_cancel, A086225.P5890891419451343673.a, A086225.P10155150668756747458.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A086225, Nat.add_sub_cancel, A086225.P5890891419451343673.a, A086225.P10155150668756747458.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A086225

/-! ## A086225.P226574122600613241

`A267880(n+3)`
-/

namespace A086225.P226574122600613241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 (n + 3)

end

end A086225.P226574122600613241

namespace A086225

/-- `A267880(n+3)` -/
def P226574122600613241.Spec : Prop :=
  ∀ n, P226574122600613241.a n = A086225 n

end A086225

/-! ## A086225.P12164826617668426068

`record[A267880(abs(3-n))]`
-/

namespace A086225.P12164826617668426068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267880 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086225.P12164826617668426068

namespace A086225

/-- `record[A267880(abs(3-n))]` -/
def P12164826617668426068.Spec : Prop :=
  ∀ n, P12164826617668426068.a n = A086225 n

end A086225

/-! ## A086225.P6701259414596068196

`xor(A005015(n), A126646(n))`
-/

namespace A086225.P6701259414596068196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005015 n) (A126646 n)

end

end A086225.P6701259414596068196

namespace A086225

/-- `xor(A005015(n), A126646(n))` -/
def P6701259414596068196.Spec : Prop :=
  ∀ n, P6701259414596068196.a n = A086225 n

end A086225

/-! ## A086225.P10698447004589515163

`xor(A020707(n), A196305(n))`
-/

namespace A086225.P10698447004589515163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A196305 n)

end

end A086225.P10698447004589515163

namespace A086225

/-- `xor(A020707(n), A196305(n))` -/
def P10698447004589515163.Spec : Prop :=
  ∀ n, P10698447004589515163.a n = A086225 n

end A086225

/-! ## A086225.P7885742216729337450

`xor(∑[A000079(n)], A005015(n))`
-/

namespace A086225.P7885742216729337450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A005015 n)

end

end A086225.P7885742216729337450

namespace A086225

/-- `xor(∑[A000079(n)], A005015(n))` -/
def P7885742216729337450.Spec : Prop :=
  ∀ n, P7885742216729337450.a n = A086225 n

end A086225

/-! ## A086225.P14617134782273281464

`xor(A081808(n+1), A086224(n))`
-/

namespace A086225.P14617134782273281464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081808 (n + 1)) (A086224 n)

end

end A086225.P14617134782273281464

namespace A086225

/-- `xor(A081808(n+1), A086224(n))` -/
def P14617134782273281464.Spec : Prop :=
  ∀ n, P14617134782273281464.a n = A086225 n

end A086225

/-! ## A086225.P7289857876769620715

`xor(A020707(n+1), A153893(n))`
-/

namespace A086225.P7289857876769620715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 (n + 1)) (A153893 n)

end

end A086225.P7289857876769620715

namespace A086225

/-- `xor(A020707(n+1), A153893(n))` -/
def P7289857876769620715.Spec : Prop :=
  ∀ n, P7289857876769620715.a n = A086225 n

end A086225

/-! ## A086225.P14942210128146664649

`xor(A091629(n+1), A198274(n))`
-/

namespace A086225.P14942210128146664649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091629 (n + 1)) (A198274 n)

end

end A086225.P14942210128146664649

namespace A086225

/-- `xor(A091629(n+1), A198274(n))` -/
def P14942210128146664649.Spec : Prop :=
  ∀ n, P14942210128146664649.a n = A086225 n

end A086225

/-! ## A086225.P17873502247977989819

`xor(A005029(n), A126646(n+2))`
-/

namespace A086225.P17873502247977989819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005029 n) (A126646 (n + 2))

end

end A086225.P17873502247977989819

namespace A086225

/-- `xor(A005029(n), A126646(n+2))` -/
def P17873502247977989819.Spec : Prop :=
  ∀ n, P17873502247977989819.a n = A086225 n

end A086225

/-! ## A086225.P17780984240255258290

`xor(2*A020707(n), A153893(n))`
-/

namespace A086225.P17780984240255258290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A020707 n) (A153893 n)

end

end A086225.P17780984240255258290

namespace A086225

/-- `xor(2*A020707(n), A153893(n))` -/
def P17780984240255258290.Spec : Prop :=
  ∀ n, P17780984240255258290.a n = A086225 n

end A086225

/-! ## A086225.P14741942075177865203

`xor(2*A070875(2*n+1), A010737(2*n))`
-/

namespace A086225.P14741942075177865203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A070875 (2 * n + 1)) (A010737 (2 * n))

end

end A086225.P14741942075177865203

namespace A086225

/-- `xor(2*A070875(2*n+1), A010737(2*n))` -/
def P14741942075177865203.Spec : Prop :=
  ∀ n, P14741942075177865203.a n = A086225 n

end A086225

/-! ## A086225.P17207098236990920750

`Δ[2*a(n-1)+n]` with `a(0)=9`
-/

namespace A086225.P17207098236990920750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  2 * f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086225.P17207098236990920750

namespace A086225

/-- `Δ[2*a(n-1)+n]` -/
def P17207098236990920750.Spec : Prop :=
  ∀ n, P17207098236990920750.a n = A086225 n

end A086225

/-!
# A086226: Number of permutations of length n containing exactly one occurrence of the pattern 1-32.

The programs for A086226, there is no canonical definition to state claims against.
-/

/-! ## A086226.P6972613472417716887

`A151724(10*a(n-1)+2)/6` with `a(0)=0, a(1)=0`
-/

namespace A086226.P6972613472417716887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  (A151724 (SequenceMachineLib.roundAway (10 * a (n - 1) + 2)).toNat : ℚ) / 6

end

end A086226.P6972613472417716887

/-! ## A086226.P4648820034565231644

`A066438(xor(6, A275829(n)))`
-/

namespace A086226.P4648820034565231644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066438 (Int.xor 6 (A275829 n)).toNat

end

end A086226.P4648820034565231644

/-!
# A086227: a(n) = Sum_{1<=k<=4*n, gcd(k,n)=1} (i^k*tan(k*Pi/(4*n)))/(4*i), where i is the imaginary unit.

The programs for A086227, the canonical program `A086227.P5243369785632214675` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086227 has offset 2).

The definition of A086227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140434, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086227.P5243369785632214675

`(-1)^(n+3)*A079458(n+2)/A140434(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A086227

/-- `(-1)^(n+3)*A079458(n+2)/A140434(n+2)` -/
def P5243369785632214675.Spec : Prop :=
  ∀ n, P5243369785632214675.a n = (A086227 (n + 2) : ℚ)

end A086227

/-! ## A086227.P16090584181842995042

`A204617(n+2)/Δ[A028242(n)]`
-/

namespace A086227.P16090584181842995042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204617 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A086227.P16090584181842995042

namespace A086227

/-- `A204617(n+2)/Δ[A028242(n)]` -/
def P16090584181842995042.Spec : Prop :=
  ∀ n, P16090584181842995042.a n = (A086227 (n + 2) : ℚ)

end A086227

/-!
# A086228: Determinant of n X n matrix M(i,j) = binomial(2i+1, j).

The programs for A086228, the canonical program `A086228.P12815417948147527616` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086228 has offset 0).

The definition of A086228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086228.P12815417948147527616

`2^(n*(n-3)/2)*(n+1)*C(2*n+1, n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086228

/-- `2^(n*(n-3)/2)*(n+1)*C(2*n+1, n)` -/
def P12815417948147527616.Spec : Prop :=
  ∀ n, P12815417948147527616.a n = (A086228 n : ℝ)

end A086228

/-! ## A086228.P11128046129036229330

`∏[2^n*Δ[n²]/floor(2/acot(n))]`
-/

namespace A086228.P11128046129036229330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) : ℚ) / (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086228.P11128046129036229330

namespace A086228

/-- `∏[2^n*Δ[n²]/floor(2/acot(n))]` -/
def P11128046129036229330.Spec : Prop :=
  ∀ n, P11128046129036229330.a n = (A086228 n : ℚ)

end A086228

/-! ## A086228.P6880727219482740564

`2^(n-1)*Δ[n²]*a(n-1)/n` with `a(0)=1`
-/

namespace A086228.P6880727219482740564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) * a (n - 1) / (n : ℚ)

end

end A086228.P6880727219482740564

namespace A086228

/-- `2^(n-1)*Δ[n²]*a(n-1)/n` -/
def P6880727219482740564.Spec : Prop :=
  ∀ n, P6880727219482740564.a n = (A086228 n : ℚ)

end A086228

/-! ## A086228.P7098277806771883769

`(2*n+1)*A086229(n)`
-/

namespace A086228.P7098277806771883769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A086229 n

end

end A086228.P7098277806771883769

namespace A086228

/-- `(2*n+1)*A086229(n)` -/
def P7098277806771883769.Spec : Prop :=
  ∀ n, P7098277806771883769.a n = A086228 n

end A086228

/-! ## A086228.P9667789693747738032

`A001803(n)*A127943(n)`
-/

namespace A086228.P9667789693747738032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A127943 n

end

end A086228.P9667789693747738032

namespace A086228

/-- `A001803(n)*A127943(n)` -/
def P9667789693747738032.Spec : Prop :=
  ∀ n, P9667789693747738032.a n = A086228 n

end A086228

/-!
# A086229: Determinant of n X n matrix M(i,j) = binomial(2i-1,j), (i,j) ranging from 1 to n.

The programs for A086229, the canonical program `A086229.P11229199994066424293` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086229 has offset 0).

The definition of A086229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086229.P11229199994066424293

`2^(n*(n-3)/2)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086229

/-- `2^(n*(n-3)/2)*C(2*n, n)` -/
def P11229199994066424293.Spec : Prop :=
  ∀ n, P11229199994066424293.a n = (A086229 n : ℝ)

end A086229

/-! ## A086229.P5727142002285073113

`(4-2/n)*a(n-1)*abs(ceil((-2)^(n-2)))` with `a(0)=1, a(1)=1`
-/

namespace A086229.P5727142002285073113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 - 2 / (n : ℚ)) * a (n - 1) * (|⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉| : ℚ)

end

end A086229.P5727142002285073113

namespace A086229

/-- `(4-2/n)*a(n-1)*abs(ceil((-2)^(n-2)))` -/
def P5727142002285073113.Spec : Prop :=
  ∀ n, P5727142002285073113.a n = (A086229 n : ℚ)

end A086229

/-! ## A086229.P6821134325861245366

`A086228(n)/(2*n+1)`
-/

namespace A086229.P6821134325861245366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086228 n : ℚ) / (2 * n + 1 : ℚ)

end

end A086229.P6821134325861245366

namespace A086229

/-- `A086228(n)/(2*n+1)` -/
def P6821134325861245366.Spec : Prop :=
  ∀ n, P6821134325861245366.a n = (A086229 n : ℚ)

end A086229

/-! ## A086229.P8485227610848003490

`A001790(n)*A127943(n)`
-/

namespace A086229.P8485227610848003490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A127943 n

end

end A086229.P8485227610848003490

namespace A086229

/-- `A001790(n)*A127943(n)` -/
def P8485227610848003490.Spec : Prop :=
  ∀ n, P8485227610848003490.a n = A086229 n

end A086229

/-! ## A086229.P5403493867786226744

`A036069(2*n)*A127943(n)`
-/

namespace A086229.P5403493867786226744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * n) * A127943 n

end

end A086229.P5403493867786226744

namespace A086229

/-- `A036069(2*n)*A127943(n)` -/
def P5403493867786226744.Spec : Prop :=
  ∀ n, P5403493867786226744.a n = A086229 n

end A086229

/-!
# A086230: Decimal expansion of probability that a random walk on a 3-D lattice returns to the origin.

The programs for A086230, there is no canonical definition to state claims against.
-/

/-! ## A086230.P7943702009263421404

`9-A242761(n)`
-/

namespace A086230.P7943702009263421404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A242761 n

end

end A086230.P7943702009263421404

/-!
# A086239: Decimal expansion of Sum_{k>=2} c(k)/prime(k), where c(k) = -1 if p == 1 (mod 4) and c(k) = +1 if p == 3 (mod 4).

The programs for A086239, there is no canonical definition to state claims against.
-/

/-! ## A086239.P1858850852660311938

`9-A166509(round(sqrt(n²+1)))`
-/

namespace A086239.P1858850852660311938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A166509 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A086239.P1858850852660311938

/-!
# A086244: Primes such that a sum of any two adjacent digits is prime; first and last digits are considered adjacent.

The programs for A086244, there is no canonical definition to state claims against.
-/

/-! ## A086244.P18086587108670429016

`∩[A088136(n+1), A182175(n+1)]`
-/

namespace A086244.P18086587108670429016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086244.P18086587108670429016

/-! ## A086244.P5878433620188808013

`A091939(A061497(n+1))`
-/

namespace A086244.P5878433620188808013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091939 (A061497 (n + 1)).toNat

end

end A086244.P5878433620188808013

/-! ## A086244.P10873081282495608410

`A091939(A077741(n+1))`
-/

namespace A086244.P10873081282495608410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091939 (A077741 (n + 1)).toNat

end

end A086244.P10873081282495608410

/-! ## A086244.P16544455439453723773

`A091939(A004895(n+2))`
-/

namespace A086244.P16544455439453723773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091939 (A004895 (n + 2)).toNat

end

end A086244.P16544455439453723773

/-! ## A086244.P9036068426651061545

`∩[A138980(n), A221699(n+1)]`
-/

namespace A086244.P9036068426651061545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086244.P9036068426651061545

/-!
# A086246: Expansion of (1 + x - sqrt(1 - 2*x - 3*x^2)) / 2 in powers of x.

The programs for A086246, the canonical program `A086246.P7157768835649708098` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086246 has offset 0).

The definition of A086246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086246.P7157768835649708098

`A168049(C(2, n)+n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A086246

/-- `A168049(C(2, n)+n)` -/
def P7157768835649708098.Spec : Prop :=
  ∀ n, P7157768835649708098.a n = A086246 n

theorem P7157768835649708098.correct : P7157768835649708098.Spec := by
  intro n
  simp only [A086246]

end A086246

/-! ## A086246.P10264795403511576043

`∑[A105695(abs(1-n))]`
-/

namespace A086246.P10264795403511576043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086246.P10264795403511576043

namespace A086246

/-- `∑[A105695(abs(1-n))]` -/
def P10264795403511576043.Spec : Prop :=
  ∀ n, P10264795403511576043.a n = A086246 n

end A086246

/-! ## A086246.P6452268830747769858

`floor(acot(n)-A292440(n))`
-/

namespace A086246.P6452268830747769858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A292440 n : ℝ)⌋

end

end A086246.P6452268830747769858

namespace A086246

/-- `floor(acot(n)-A292440(n))` -/
def P6452268830747769858.Spec : Prop :=
  ∀ n, P6452268830747769858.a n = A086246 n

end A086246

/-! ## A086246.P12144470429336477928

`C(n, n²)-A168051(n)`
-/

namespace A086246.P12144470429336477928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) - A168051 n

end

end A086246.P12144470429336477928

namespace A086246

/-- `C(n, n²)-A168051(n)` -/
def P12144470429336477928.Spec : Prop :=
  ∀ n, P12144470429336477928.a n = A086246 n

end A086246

/-! ## A086246.P456777434782782748

`A168049(char[1-n²]+n)`
-/

namespace A086246.P456777434782782748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n)

end

end A086246.P456777434782782748

namespace A086246

/-- `A168049(char[1-n²]+n)` -/
def P456777434782782748.Spec : Prop :=
  ∀ n, P456777434782782748.a n = A086246 n

end A086246

/-! ## A086246.P6722783044591629842

`A105695(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A086246.P6722783044591629842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A105695 (n - 1) + a (n - 1)

end

end A086246.P6722783044591629842

namespace A086246

/-- `A105695(n-1)+a(n-1)` -/
def P6722783044591629842.Spec : Prop :=
  ∀ n, P6722783044591629842.a n = A086246 n

end A086246

/-! ## A086246.P7276245589906586160

`A000007(n)-A292440(n)`
-/

namespace A086246.P7276245589906586160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A292440 n

end

end A086246.P7276245589906586160

namespace A086246

/-- `A000007(n)-A292440(n)` -/
def P7276245589906586160.Spec : Prop :=
  ∀ n, P7276245589906586160.a n = A086246 n

end A086246

/-! ## A086246.P2480560160172046511

`A057428(n)*A292440(n)`
-/

namespace A086246.P2480560160172046511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A292440 n

end

end A086246.P2480560160172046511

namespace A086246

/-- `A057428(n)*A292440(n)` -/
def P2480560160172046511.Spec : Prop :=
  ∀ n, P2480560160172046511.a n = A086246 n

end A086246

/-! ## A086246.P10602403369739597554

`char[A168051(n)]-A168051(n)`
-/

namespace A086246.P10602403369739597554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A168051 n

end

end A086246.P10602403369739597554

namespace A086246

/-- `char[A168051(n)]-A168051(n)` -/
def P10602403369739597554.Spec : Prop :=
  ∀ n, P10602403369739597554.a n = A086246 n

end A086246

/-! ## A086246.P14828004526007101291

`A019590(n+1)-A168051(n)`
-/

namespace A086246.P14828004526007101291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) - A168051 n

end

end A086246.P14828004526007101291

namespace A086246

/-- `A019590(n+1)-A168051(n)` -/
def P14828004526007101291.Spec : Prop :=
  ∀ n, P14828004526007101291.a n = A086246 n

end A086246

/-! ## A086246.P1000833370911193835

`A168049(n)-A154955(n+1)`
-/

namespace A086246.P1000833370911193835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A154955 (n + 1)

end

end A086246.P1000833370911193835

namespace A086246

/-- `A168049(n)-A154955(n+1)` -/
def P1000833370911193835.Spec : Prop :=
  ∀ n, P1000833370911193835.a n = A086246 n

end A086246

/-! ## A086246.P5348216714651216231

`1-(A292440(n)+A057427(n))`
-/

namespace A086246.P5348216714651216231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A292440 n + A057427 n)

end

end A086246.P5348216714651216231

namespace A086246

/-- `1-(A292440(n)+A057427(n))` -/
def P5348216714651216231.Spec : Prop :=
  ∀ n, P5348216714651216231.a n = A086246 n

end A086246

/-! ## A086246.P17573823672780358600

`A063524(n+1)-A292440(n)`
-/

namespace A086246.P17573823672780358600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) - A292440 n

end

end A086246.P17573823672780358600

namespace A086246

/-- `A063524(n+1)-A292440(n)` -/
def P17573823672780358600.Spec : Prop :=
  ∀ n, P17573823672780358600.a n = A086246 n

end A086246

/-! ## A086246.P14434518439908634950

`xor(A019590(n+1), A168049(n))`
-/

namespace A086246.P14434518439908634950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019590 (n + 1)) (A168049 n)

end

end A086246.P14434518439908634950

namespace A086246

/-- `xor(A019590(n+1), A168049(n))` -/
def P14434518439908634950.Spec : Prop :=
  ∀ n, P14434518439908634950.a n = A086246 n

end A086246

/-! ## A086246.P4255029027337697962

`A159075(n+1)²-A292440(n)`
-/

namespace A086246.P4255029027337697962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 1) ^ 2 - A292440 n

end

end A086246.P4255029027337697962

namespace A086246

/-- `A159075(n+1)²-A292440(n)` -/
def P4255029027337697962.Spec : Prop :=
  ∀ n, P4255029027337697962.a n = A086246 n

end A086246

/-! ## A086246.P7307650168246577606

`A203019(n+1)/A292461(n+1)*A292440(n)`
-/

namespace A086246.P7307650168246577606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203019 (n + 1) : ℚ) / (A292461 (n + 1) : ℚ) * (A292440 n : ℚ)

end

end A086246.P7307650168246577606

namespace A086246

/-- `A203019(n+1)/A292461(n+1)*A292440(n)` -/
def P7307650168246577606.Spec : Prop :=
  ∀ n, P7307650168246577606.a n = (A086246 n : ℚ)

end A086246

/-! ## A086246.P3922270769358102618

`ceil(A007971(n)/2)`
-/

namespace A086246.P3922270769358102618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007971 n : ℚ) / 2⌉

end

end A086246.P3922270769358102618

namespace A086246

/-- `ceil(A007971(n)/2)` -/
def P3922270769358102618.Spec : Prop :=
  ∀ n, P3922270769358102618.a n = A086246 n

end A086246

/-! ## A086246.P14216081503513013249

`floor((1-A167022(n))/2)`
-/

namespace A086246.P14216081503513013249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A167022 n : ℚ) / 2⌋

end

end A086246.P14216081503513013249

namespace A086246

/-- `floor((1-A167022(n))/2)` -/
def P14216081503513013249.Spec : Prop :=
  ∀ n, P14216081503513013249.a n = A086246 n

end A086246

/-! ## A086246.P1826904281699281397

`char[1]+A126068(n)/2`
-/

namespace A086246.P1826904281699281397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A126068 n : ℚ) / 2

end

end A086246.P1826904281699281397

namespace A086246

/-- `char[1]+A126068(n)/2` -/
def P1826904281699281397.Spec : Prop :=
  ∀ n, P1826904281699281397.a n = (A086246 n : ℚ)

end A086246

/-!
# A086247: Differences of successive 7-smooth numbers.

The programs for A086247, there is no canonical definition to state claims against.
-/

/-! ## A086247.P9279985167702956897

`A002473(n+2)-A002473(n+1)`
-/

namespace A086247.P9279985167702956897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 2) - A002473 (n + 1)

end

end A086247.P9279985167702956897

/-! ## A086247.P13771731355353234924

`Δ[A085126(n+1)/3]`
-/

namespace A086247.P13771731355353234924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085126 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P13771731355353234924

/-! ## A086247.P9688615605438675053

`Δ[A002473(n+1)]`
-/

namespace A086247.P9688615605438675053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P9688615605438675053

/-! ## A086247.P12661530140638286513

`Δ[sqrt(A352618(n+1))]`
-/

namespace A086247.P12661530140638286513
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352618 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P12661530140638286513

/-! ## A086247.P9184904738512377623

`Δ[A085125(n+1)/2]`
-/

namespace A086247.P9184904738512377623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085125 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P9184904738512377623

/-! ## A086247.P3049175852647898830

`Δ[A085127(n+1)/4]`
-/

namespace A086247.P3049175852647898830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P3049175852647898830

/-! ## A086247.P722296785331527361

`Δ[A085128(n+1)/5]`
-/

namespace A086247.P722296785331527361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085128 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P722296785331527361

/-! ## A086247.P11231948003898304797

`Δ[lt[A061395(n+1), 5]]`
-/

namespace A086247.P11231948003898304797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086247.P11231948003898304797

/-! ## A086247.P9890983140407522060

`Δ[lt[A006530(n+1), 8]]`
-/

namespace A086247.P9890983140407522060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086247.P9890983140407522060

/-! ## A086247.P5894517607214545464

`Δ[lt[A332899(n+1), 5]]`
-/

namespace A086247.P5894517607214545464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A086247.P5894517607214545464

/-! ## A086247.P620884167482911144

`Δ[record[A071785(n+1)]]`
-/

namespace A086247.P620884167482911144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P620884167482911144

/-! ## A086247.P9443684114187881851

`Δ[record[A262401(n+1)]]`
-/

namespace A086247.P9443684114187881851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P9443684114187881851

/-! ## A086247.P16071249447613240041

`Δ[record[A392597(n+1)]]`
-/

namespace A086247.P16071249447613240041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392597 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086247.P16071249447613240041

/-!
# A086249: Number of base-2 Fermat pseudoprimes x that have ord(2,x) = n.

The programs for A086249, there is no canonical definition to state claims against.
-/

/-! ## A086249.P10310189738207122414

`∑{d}[n+1, A008683(#)*A086256((n+1)/#)]`
-/

namespace A086249.P10310189738207122414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A086256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086249.P10310189738207122414

/-! ## A086249.P10252422947758640749

`∑{d}[n+1, A069158(#)*A086256((n+1)/#)]`
-/

namespace A086249.P10252422947758640749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069158 d * A086256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086249.P10252422947758640749

/-! ## A086249.P473460909502724768

`∑{d}[n+1, A086256(#)*A253206((n+1)/#)]`
-/

namespace A086249.P473460909502724768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086256 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086249.P473460909502724768

/-!
# A086250: Smallest base-2 Fermat pseudoprime x that has ord(2,x) = n, or 0 if one does not exist.

The programs for A086250, there is no canonical definition to state claims against.
-/

/-! ## A086250.P6047432121885050628

`A059990(n+1)*A289016(A000079(n))`
-/

namespace A086250.P6047432121885050628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059990 (n + 1) * A289016 (A000079 n).toNat

end

end A086250.P6047432121885050628

/-! ## A086250.P6529514992689719567

`A213243(n+1)*A289016(A000079(n))`
-/

namespace A086250.P6529514992689719567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213243 (n + 1) * A289016 (A000079 n).toNat

end

end A086250.P6529514992689719567

/-! ## A086250.P13338586684059110075

`A028310(A059990(n+1))*A086249(n+1)`
-/

namespace A086250.P13338586684059110075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A059990 (n + 1)).toNat * A086249 (n + 1)

end

end A086250.P13338586684059110075

/-! ## A086250.P10870454845532708360

`A028310(A059990(n+1))*A086256(n+1)`
-/

namespace A086250.P10870454845532708360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A059990 (n + 1)).toNat * A086256 (n + 1)

end

end A086250.P10870454845532708360

/-! ## A086250.P9246066603672272995

`A028310(A213243(n+1))*A086249(n+1)`
-/

namespace A086250.P9246066603672272995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A213243 (n + 1)).toNat * A086249 (n + 1)

end

end A086250.P9246066603672272995

/-!
# A086251: Number of primitive prime factors of 2^n - 1.

The programs for A086251, there is no canonical definition to state claims against.
-/

/-! ## A086251.P3305472720505397107

`∑{d}[n+1, A008683(#)*A046800((n+1)/#)]`
-/

namespace A086251.P3305472720505397107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A046800 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A086251.P3305472720505397107

/-! ## A086251.P12209924764593437

`floor(log2(A063982(n+1)))`
-/

namespace A086251.P12209924764593437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A063982 (n + 1)).toNat

end

end A086251.P12209924764593437

/-! ## A086251.P8103848241215599565

`A000523(A063982(n+1))`
-/

namespace A086251.P8103848241215599565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A063982 (n + 1)).toNat

end

end A086251.P8103848241215599565

/-! ## A086251.P6084165542767251939

`A000120(A063982(n+1)-1)`
-/

namespace A086251.P6084165542767251939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A063982 (n + 1) - 1).toNat

end

end A086251.P6084165542767251939

/-! ## A086251.P2625035200251124041

`A001222(A063982(C(n+1, n)))`
-/

namespace A086251.P2625035200251124041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063982 (Nat.choose (n + 1) n)).toNat

end

end A086251.P2625035200251124041

/-! ## A086251.P14348375034132656948

`∑{e}[A063982(A028310(n+1)), #]`
-/

namespace A086251.P14348375034132656948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (A028310 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086251.P14348375034132656948

/-! ## A086251.P14336133797097657575

`A166469(2*A063982(n+1))-2`
-/

namespace A086251.P14336133797097657575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (2 * A063982 (n + 1)).toNat - 2

end

end A086251.P14336133797097657575

/-! ## A086251.P5604342855524801241

`A001222(A063982(n+1)²)/2`
-/

namespace A086251.P5604342855524801241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A063982 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A086251.P5604342855524801241

/-! ## A086251.P15658060382826377830

`A001222(A063982(n+1))*A250208(A250208(n+1))`
-/

namespace A086251.P15658060382826377830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A063982 (n + 1)).toNat * A250208 (A250208 (n + 1)).toNat

end

end A086251.P15658060382826377830

/-! ## A086251.P15353200610680078711

`A166469(A063982(n+1)²)-A166469(A063982(n+1))`
-/

namespace A086251.P15353200610680078711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A063982 (n + 1) ^ 2).toNat - A166469 (A063982 (n + 1)).toNat

end

end A086251.P15353200610680078711

/-! ## A086251.P242450692652926239

`A124768(A063982(n+1)-1)`
-/

namespace A086251.P242450692652926239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A063982 (n + 1) - 1).toNat

end

end A086251.P242450692652926239

/-! ## A086251.P17935248672099163203

`A032741(A063982(n+1)²)/2`
-/

namespace A086251.P17935248672099163203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032741 (A063982 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A086251.P17935248672099163203

/-! ## A086251.P4454203726670800481

`A048794(A063982(n+1)²)-A048794(A063982(n+1))`
-/

namespace A086251.P4454203726670800481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A063982 (n + 1) ^ 2).toNat - A048794 (A063982 (n + 1)).toNat

end

end A086251.P4454203726670800481

/-! ## A086251.P15384297468030484227

`A000005(A063982(n+1))-A267537(A056115(n))`
-/

namespace A086251.P15384297468030484227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063982 (n + 1)).toNat - A267537 (A056115 n).toNat

end

end A086251.P15384297468030484227

/-! ## A086251.P10192225407438496716

`A000005(A063982(n+1))-A267537(n²)`
-/

namespace A086251.P10192225407438496716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063982 (n + 1)).toNat - A267537 (n ^ 2)

end

end A086251.P10192225407438496716

/-!
# A086252: a(n) is the smallest k such that 2^k-1 has n primitive prime factors.

The programs for A086252, there is no canonical definition to state claims against.
-/

/-! ## A086252.P1115252464520174045

`A095057(xor(A051128(n+1), A053704(n+1)))`
-/

namespace A086252.P1115252464520174045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095057 (Int.xor (A051128 (n + 1)) (A053704 (n + 1))).toNat

end

end A086252.P1115252464520174045

/-!
# A086256: Number of base-2 Fermat pseudoprimes that divide 2^n-1.

The programs for A086256, there is no canonical definition to state claims against.
-/

/-! ## A086256.P10731650824230397895

`∑{d}[n+1, A086249(#)]`
-/

namespace A086256.P10731650824230397895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086249 d

end

end A086256.P10731650824230397895

/-!
# A086257: Number of primitive prime factors of 2^n+1.

The programs for A086257, there is no canonical definition to state claims against.
-/

/-! ## A086257.P17278504481169948752

`A086251(abs(1-2*n)+1)`
-/

namespace A086257.P17278504481169948752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (|1 - (2 * n : ℤ)| + 1).toNat

end

end A086257.P17278504481169948752

/-! ## A086257.P9887682873208226934

`A086251(A004273(n)+1)+A000007(n)`
-/

namespace A086257.P9887682873208226934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086251 (A004273 n + 1).toNat + A000007 n

end

end A086257.P9887682873208226934

/-! ## A086257.P8633378899996265358

`∑{e}[A063982(2*A028310(n)), #]`
-/

namespace A086257.P8633378899996265358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063982 (2 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086257.P8633378899996265358

/-! ## A086257.P4731096481750617822

`∑{e}[A064130(n), #]`
-/

namespace A086257.P4731096481750617822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086257.P4731096481750617822

/-! ## A086257.P7761947707214126889

`A000523(A064130(n))`
-/

namespace A086257.P7761947707214126889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A064130 n).toNat

end

end A086257.P7761947707214126889

/-! ## A086257.P13927908079043837593

`A000120(A064130(n)-1)`
-/

namespace A086257.P13927908079043837593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064130 n - 1).toNat

end

end A086257.P13927908079043837593

/-! ## A086257.P15556355806088234102

`A001222(A064130(n)²)/2`
-/

namespace A086257.P15556355806088234102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A064130 n ^ 2).toNat : ℚ) / 2

end

end A086257.P15556355806088234102

/-! ## A086257.P13780181066809317347

`A124764(2*A064130(n)-1)`
-/

namespace A086257.P13780181066809317347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (2 * A064130 n - 1).toNat

end

end A086257.P13780181066809317347

/-! ## A086257.P10670052981435615761

`A124764(A064130(n)+A064130(n)-1)`
-/

namespace A086257.P10670052981435615761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A064130 n + (A064130 n - 1)).toNat

end

end A086257.P10670052981435615761

/-! ## A086257.P16313398136485969552

`A124764(A064130(n)-(1-A064130(n)))`
-/

namespace A086257.P16313398136485969552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A064130 n - (1 - A064130 n)).toNat

end

end A086257.P16313398136485969552

/-!
# A086262: Number of n X n conference matrices (including both symmetric and antisymmetric).

The programs for A086262, there is no canonical definition to state claims against.
-/

/-! ## A086262.P2531955331389050824

`A086260(n+1)-A057428(n)*A086261(n+1)`
-/

namespace A086262.P2531955331389050824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086260 (n + 1) - A057428 n * A086261 (n + 1)

end

end A086262.P2531955331389050824

/-! ## A086262.P1295191827548150294

`A086260(n+1)+A086261(n+1)%A113079(n)`
-/

namespace A086262.P1295191827548150294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086260 (n + 1) + Int.tmod (A086261 (n + 1)) (A113079 n)

end

end A086262.P1295191827548150294

/-!
# A086263: Smaller of two consecutive squarefree numbers having equal numbers of prime factors.

The programs for A086263, the canonical program `A086263.P4136744977027296644` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086263 has offset 1).

The definition of A086263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086263.P4136744977027296644

`record[A007913(A052213(n+1))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A086263

/-- `record[A007913(A052213(n+1))]` -/
def P4136744977027296644.Spec : Prop :=
  ∀ n, P4136744977027296644.a n = A086263 (n + 1)

theorem P4136744977027296644.correct : P4136744977027296644.Spec := by
  intro n
  simp only [A086263, Nat.add_sub_cancel]

end A086263

/-! ## A086263.P11664578680239908616

`record[A007947(A359745(n+1))]`
-/

namespace A086263.P11664578680239908616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A359745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086263.P11664578680239908616

namespace A086263

/-- `record[A007947(A359745(n+1))]` -/
def P11664578680239908616.Spec : Prop :=
  ∀ n, P11664578680239908616.a n = A086263 (n + 1)

end A086263

/-! ## A086263.P2577674949175316454

`filter[A052213(n+1), A008966(#)]`
-/

namespace A086263.P2577674949175316454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A086263.P2577674949175316454

namespace A086263

/-- `filter[A052213(n+1), A008966(#)]` -/
def P2577674949175316454.Spec : Prop :=
  ∀ n, P2577674949175316454.a n = A086263 (n + 1)

end A086263

/-! ## A086263.P11034015630944865896

`filter[A359745(n+1), A008966(#)]`
-/

namespace A086263.P11034015630944865896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A086263.P11034015630944865896

namespace A086263

/-- `filter[A359745(n+1), A008966(#)]` -/
def P11034015630944865896.Spec : Prop :=
  ∀ n, P11034015630944865896.a n = A086263 (n + 1)

end A086263

/-! ## A086263.P17950245162087404416

`∩[A005117(n+1), A052213(n+1)]`
-/

namespace A086263.P17950245162087404416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P17950245162087404416

namespace A086263

/-- `∩[A005117(n+1), A052213(n+1)]` -/
def P17950245162087404416.Spec : Prop :=
  ∀ n, (P17950245162087404416.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P3026134316887782227

`∩[A005117(n+1), A359745(n+1)]`
-/

namespace A086263.P3026134316887782227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P3026134316887782227

namespace A086263

/-- `∩[A005117(n+1), A359745(n+1)]` -/
def P3026134316887782227.Spec : Prop :=
  ∀ n, (P3026134316887782227.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P12472103088513310538

`filter[A052213(n+1), A323154(#)]`
-/

namespace A086263.P12472103088513310538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A086263.P12472103088513310538

namespace A086263

/-- `filter[A052213(n+1), A323154(#)]` -/
def P12472103088513310538.Spec : Prop :=
  ∀ n, P12472103088513310538.a n = A086263 (n + 1)

end A086263

/-! ## A086263.P1418120402536659889

`filter[A359745(n+1), A323154(#)]`
-/

namespace A086263.P1418120402536659889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A086263.P1418120402536659889

namespace A086263

/-- `filter[A359745(n+1), A323154(#)]` -/
def P1418120402536659889.Spec : Prop :=
  ∀ n, P1418120402536659889.a n = A086263 (n + 1)

end A086263

/-! ## A086263.P17649934964926710561

`∩[A052213(n+1), A348506(n+1)]`
-/

namespace A086263.P17649934964926710561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P17649934964926710561

namespace A086263

/-- `∩[A052213(n+1), A348506(n+1)]` -/
def P17649934964926710561.Spec : Prop :=
  ∀ n, (P17649934964926710561.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P16396685861704772454

`∩[A052213(n+1), A348499(n+1)]`
-/

namespace A086263.P16396685861704772454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P16396685861704772454

namespace A086263

/-- `∩[A052213(n+1), A348499(n+1)]` -/
def P16396685861704772454.Spec : Prop :=
  ∀ n, (P16396685861704772454.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P14628434553108166163

`∩[A005237(n+1), A007674(n+1)]`
-/

namespace A086263.P14628434553108166163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P14628434553108166163

namespace A086263

/-- `∩[A005237(n+1), A007674(n+1)]` -/
def P14628434553108166163.Spec : Prop :=
  ∀ n, (P14628434553108166163.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P1005924869998266391

`∩[A006049(n+1), A007674(n+1)]`
-/

namespace A086263.P1005924869998266391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P1005924869998266391

namespace A086263

/-- `∩[A006049(n+1), A007674(n+1)]` -/
def P1005924869998266391.Spec : Prop :=
  ∀ n, (P1005924869998266391.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P12807569105839563479

`∩[A007674(n+1), A045920(n+1)]`
-/

namespace A086263.P12807569105839563479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P12807569105839563479

namespace A086263

/-- `∩[A007674(n+1), A045920(n+1)]` -/
def P12807569105839563479.Spec : Prop :=
  ∀ n, (P12807569105839563479.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P11805951195291294600

`∩[A007674(n+1), A052213(n+1)]`
-/

namespace A086263.P11805951195291294600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P11805951195291294600

namespace A086263

/-- `∩[A007674(n+1), A052213(n+1)]` -/
def P11805951195291294600.Spec : Prop :=
  ∀ n, (P11805951195291294600.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P6847706593618897624

`∩[A005237(n+1), A081083(n+1)]`
-/

namespace A086263.P6847706593618897624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P6847706593618897624

namespace A086263

/-- `∩[A005237(n+1), A081083(n+1)]` -/
def P6847706593618897624.Spec : Prop :=
  ∀ n, (P6847706593618897624.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P10388472692825826885

`∩[A045920(n+1), A081083(n+1)]`
-/

namespace A086263.P10388472692825826885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P10388472692825826885

namespace A086263

/-- `∩[A045920(n+1), A081083(n+1)]` -/
def P10388472692825826885.Spec : Prop :=
  ∀ n, (P10388472692825826885.a n : ℤ) = A086263 (n + 1)

end A086263

/-! ## A086263.P17453815116558673797

`∩[A052213(n+1), A081083(n+1)]`
-/

namespace A086263.P17453815116558673797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086263.P17453815116558673797

namespace A086263

/-- `∩[A052213(n+1), A081083(n+1)]` -/
def P17453815116558673797.Spec : Prop :=
  ∀ n, (P17453815116558673797.a n : ℤ) = A086263 (n + 1)

end A086263

/-!
# A086264: Number of real {0,1} n X n matrices having determinant=1.

The programs for A086264, there is no canonical definition to state claims against.
-/

/-! ## A086264.P6611894090612821360

`A131060(n)*A261008(n+1)`
-/

namespace A086264.P6611894090612821360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n * A261008 (n + 1)

end

end A086264.P6611894090612821360

/-!
# A086265: Total number of s-clusters in all n X n (0,1)-matrices.

The programs for A086265, there is no canonical definition to state claims against.
-/

/-! ## A086265.P17586809911441575638

`A399039((n+1)²+n²)`
-/

namespace A086265.P17586809911441575638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399039 ((n + 1) ^ 2 + n ^ 2)

end

end A086265.P17586809911441575638

/-!
# A086270: Rectangular array T(k,n) of polygonal numbers, by antidiagonals.

The programs for A086270, the canonical program `A086270.P8967094166060828149` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086270 has offset 1).

The definition of A086270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086270.P8967094166060828149

`(col(n)+1)*C(row(n)-col(n)+1, 2)+row(n)-col(n)+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086270

/-- `(col(n)+1)*C(row(n)-col(n)+1, 2)+row(n)-col(n)+1` -/
def P8967094166060828149.Spec : Prop :=
  ∀ n, P8967094166060828149.a n = A086270 (n + 1)

theorem P8967094166060828149.correct : P8967094166060828149.Spec := by
  intro n
  simp only [A086270, Nat.add_sub_cancel]

end A086270

/-! ## A086270.P13258417537629997753

`T(n-1,k)+(col(n)+1)*(row(n)-col(n))+1` with `a(0)=1`
-/

namespace A086270.P13258417537629997753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1

end

end A086270.P13258417537629997753

namespace A086270

/-- `T(n-1,k)+(col(n)+1)*(row(n)-col(n))+1` -/
def P13258417537629997753.Spec : Prop :=
  ∀ n, P13258417537629997753.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P7870711168945528147

`(row(n)-col(n)+1)*((col(n)+1)*(row(n)-col(n)+1)-col(n)+1)/2`
-/

namespace A086270.P7870711168945528147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - (SequenceMachineLib.triCol n : ℤ) + 1) : ℚ) / 2

end

end A086270.P7870711168945528147

namespace A086270

/-- `(row(n)-col(n)+1)*((col(n)+1)*(row(n)-col(n)+1)-col(n)+1)/2` -/
def P7870711168945528147.Spec : Prop :=
  ∀ n, P7870711168945528147.a n = (A086270 (n + 1) : ℚ)

end A086270

/-! ## A086270.P16223881914570881253

`A004736(n+1)+A002260(n+1)*A161680(A004736(n+1))`
-/

namespace A086270.P16223881914570881253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A002260 (n + 1) * A161680 (A004736 (n + 1)).toNat

end

end A086270.P16223881914570881253

namespace A086270

/-- `A004736(n+1)+A002260(n+1)*A161680(A004736(n+1))` -/
def P16223881914570881253.Spec : Prop :=
  ∀ n, P16223881914570881253.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P16952048694201935446

`A086271(A038722(n+1))`
-/

namespace A086270.P16952048694201935446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (A038722 (n + 1)).toNat

end

end A086270.P16952048694201935446

namespace A086270

/-- `A086271(A038722(n+1))` -/
def P16952048694201935446.Spec : Prop :=
  ∀ n, P16952048694201935446.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P16336113873372826472

`A086271(A061579(n)+1)`
-/

namespace A086270.P16336113873372826472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (A061579 n + 1).toNat

end

end A086270.P16336113873372826472

namespace A086270

/-- `A086271(A061579(n)+1)` -/
def P16336113873372826472.Spec : Prop :=
  ∀ n, P16336113873372826472.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P13164855158642059166

`A086271(∑[A198954(n)]-n)`
-/

namespace A086270.P13164855158642059166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A086270.P13164855158642059166

namespace A086270

/-- `A086271(∑[A198954(n)]-n)` -/
def P13164855158642059166.Spec : Prop :=
  ∀ n, P13164855158642059166.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P15134300053219038342

`A086271(A114327(n)+1+n)`
-/

namespace A086270.P15134300053219038342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (A114327 n + 1 + (n : ℤ)).toNat

end

end A086270.P15134300053219038342

namespace A086270

/-- `A086271(A114327(n)+1+n)` -/
def P15134300053219038342.Spec : Prop :=
  ∀ n, P15134300053219038342.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P13768267788583912629

`A086271(A093995(n+1)-n)`
-/

namespace A086270.P13768267788583912629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A086270.P13768267788583912629

namespace A086270

/-- `A086271(A093995(n+1)-n)` -/
def P13768267788583912629.Spec : Prop :=
  ∀ n, P13768267788583912629.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P14530307138511385781

`A086271(A002024(n+1)²-n)`
-/

namespace A086270.P14530307138511385781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A086270.P14530307138511385781

namespace A086270

/-- `A086271(A002024(n+1)²-n)` -/
def P14530307138511385781.Spec : Prop :=
  ∀ n, P14530307138511385781.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P3740564033254309243

`A086271(A000290(A002024(n+1))-n)`
-/

namespace A086270.P3740564033254309243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (A000290 (A002024 (n + 1)).toNat - (n : ℤ)).toNat

end

end A086270.P3740564033254309243

namespace A086270

/-- `A086271(A000290(A002024(n+1))-n)` -/
def P3740564033254309243.Spec : Prop :=
  ∀ n, P3740564033254309243.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P9112219056535679922

`A134394(A080036(n+1))`
-/

namespace A086270.P9112219056535679922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (A080036 (n + 1)).toNat

end

end A086270.P9112219056535679922

namespace A086270

/-- `A134394(A080036(n+1))` -/
def P9112219056535679922.Spec : Prop :=
  ∀ n, P9112219056535679922.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P7254574682273245315

`A062707(A007401(n+1)+1)+A004736(n+1)`
-/

namespace A086270.P7254574682273245315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A007401 (n + 1) + 1).toNat + A004736 (n + 1)

end

end A086270.P7254574682273245315

namespace A086270

/-- `A062707(A007401(n+1)+1)+A004736(n+1)` -/
def P7254574682273245315.Spec : Prop :=
  ∀ n, P7254574682273245315.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P11905536105445618016

`A139601(A099375(n)+1+n)`
-/

namespace A086270.P11905536105445618016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 (A099375 n + 1 + (n : ℤ)).toNat

end

end A086270.P11905536105445618016

namespace A086270

/-- `A139601(A099375(n)+1+n)` -/
def P11905536105445618016.Spec : Prop :=
  ∀ n, P11905536105445618016.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P18223263101933199211

`A057145(A099375(n)+2+n)`
-/

namespace A086270.P18223263101933199211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (A099375 n + 2 + (n : ℤ)).toNat

end

end A086270.P18223263101933199211

namespace A086270

/-- `A057145(A099375(n)+2+n)` -/
def P18223263101933199211.Spec : Prop :=
  ∀ n, P18223263101933199211.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P1913956479368877779

`A139601(2*A004736(n+1)+n)`
-/

namespace A086270.P1913956479368877779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A086270.P1913956479368877779

namespace A086270

/-- `A139601(2*A004736(n+1)+n)` -/
def P1913956479368877779.Spec : Prop :=
  ∀ n, P1913956479368877779.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P105877579697900773

`A057145(2*A004736(n+1)+n+1)`
-/

namespace A086270.P105877579697900773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (2 * A004736 (n + 1) + (n + 1 : ℤ)).toNat

end

end A086270.P105877579697900773

namespace A086270

/-- `A057145(2*A004736(n+1)+n+1)` -/
def P105877579697900773.Spec : Prop :=
  ∀ n, P105877579697900773.a n = A086270 (n + 1)

end A086270

/-! ## A086270.P15029070473568628771

`A139601(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A086270.P15029070473568628771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A086270.P15029070473568628771

namespace A086270

/-- `A139601(A004736(n+1)+A004736(n+1)+n)` -/
def P15029070473568628771.Spec : Prop :=
  ∀ n, P15029070473568628771.a n = A086270 (n + 1)

end A086270

/-!
# A086271: Rectangular array T(n,k) of polygonal numbers, by descending antidiagonals.

The programs for A086271, the canonical program `A086271.P16008910328647451104` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086271 has offset 1).

The definition of A086271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086271.P16008910328647451104

`(row(n)-col(n)+1)*C(col(n)+1, 2)+col(n)+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086271

/-- `(row(n)-col(n)+1)*C(col(n)+1, 2)+col(n)+1` -/
def P16008910328647451104.Spec : Prop :=
  ∀ n, P16008910328647451104.a n = A086271 (n + 1)

theorem P16008910328647451104.correct : P16008910328647451104.Spec := by
  intro n
  simp only [A086271, Nat.add_sub_cancel]

end A086271

/-! ## A086271.P17640970171637892418

`T(n-1,k-1)+(row(n)+1-col(n))*col(n)+1` with `a(0)=1`
-/

namespace A086271.P17640970171637892418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) + 1

end

end A086271.P17640970171637892418

namespace A086271

/-- `T(n-1,k-1)+(row(n)+1-col(n))*col(n)+1` -/
def P17640970171637892418.Spec : Prop :=
  ∀ n, P17640970171637892418.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P4021665454526766695

`(row(n)-col(n)+1)*col(n)*(col(n)+1)/2+col(n)+1`
-/

namespace A086271.P4021665454526766695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n : ℤ) * (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ) / 2 + (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A086271.P4021665454526766695

namespace A086271

/-- `(row(n)-col(n)+1)*col(n)*(col(n)+1)/2+col(n)+1` -/
def P4021665454526766695.Spec : Prop :=
  ∀ n, P4021665454526766695.a n = (A086271 (n + 1) : ℚ)

theorem P4021665454526766695.correct : P4021665454526766695.Spec := by
  intro n
  simp only [A086271, Nat.add_sub_cancel, A086271.P4021665454526766695.a, A086271.P16008910328647451104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086271

/-! ## A086271.P3597478345521000192

`A139601(n)+A128139(n)`
-/

namespace A086271.P3597478345521000192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 n + A128139 n

end

end A086271.P3597478345521000192

namespace A086271

/-- `A139601(n)+A128139(n)` -/
def P3597478345521000192.Spec : Prop :=
  ∀ n, P3597478345521000192.a n = A086271 (n + 1)

theorem P3597478345521000192.correct : P3597478345521000192.Spec := by
  intro n
  simp only [A086271, Nat.add_sub_cancel, A086271.P3597478345521000192.a, A086271.P16008910328647451104.a, A128139, A128139.P11791759487030447530.a, A139601, A139601.P14717086239868575484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086271

/-! ## A086271.P15860447562321617413

`A112367(n)+A057145(n+2)`
-/

namespace A086271.P15860447562321617413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A057145 (n + 2)

end

end A086271.P15860447562321617413

namespace A086271

/-- `A112367(n)+A057145(n+2)` -/
def P15860447562321617413.Spec : Prop :=
  ∀ n, P15860447562321617413.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P6656448516355689365

`A127779(n+1)-A094053(n+1)`
-/

namespace A086271.P6656448516355689365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127779 (n + 1) - A094053 (n + 1)

end

end A086271.P6656448516355689365

namespace A086271

/-- `A127779(n+1)-A094053(n+1)` -/
def P6656448516355689365.Spec : Prop :=
  ∀ n, P6656448516355689365.a n = A086271 (n + 1)

theorem P6656448516355689365.correct : P6656448516355689365.Spec := by
  intro n
  simp only [A086271, Nat.add_sub_cancel, A086271.P6656448516355689365.a, A086271.P16008910328647451104.a, A094053, A094053.P7632435431613033853.a, A127779, A127779.P6962824600330842233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086271

/-! ## A086271.P16580170754896641676

`A002260(n+1)+A000217(A002262(n))*A004736(n+1)`
-/

namespace A086271.P16580170754896641676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000217 (A002262 n).toNat * A004736 (n + 1)

end

end A086271.P16580170754896641676

namespace A086271

/-- `A002260(n+1)+A000217(A002262(n))*A004736(n+1)` -/
def P16580170754896641676.Spec : Prop :=
  ∀ n, P16580170754896641676.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P3629284649453800029

`A086270(∑[char[∑[n]]]²-n)`
-/

namespace A086271.P3629284649453800029
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086270 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A086271.P3629284649453800029

namespace A086271

/-- `A086270(∑[char[∑[n]]]²-n)` -/
def P3629284649453800029.Spec : Prop :=
  ∀ n, P3629284649453800029.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P4144317446655623583

`A057145(comp[∑[n]]+1)`
-/

namespace A086271.P4144317446655623583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A086271.P4144317446655623583

namespace A086271

/-- `A057145(comp[∑[n]]+1)` -/
def P4144317446655623583.Spec : Prop :=
  ∀ n, P4144317446655623583.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P9482220952302062539

`A139601(comp[∑[n]])`
-/

namespace A086271.P9482220952302062539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139601 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A086271.P9482220952302062539

namespace A086271

/-- `A139601(comp[∑[n]])` -/
def P9482220952302062539.Spec : Prop :=
  ∀ n, P9482220952302062539.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P13434033321877188398

`A139600(lt[1, A048004(n)])`
-/

namespace A086271.P13434033321877188398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086271.P13434033321877188398

namespace A086271

/-- `A139600(lt[1, A048004(n)])` -/
def P13434033321877188398.Spec : Prop :=
  ∀ n, P13434033321877188398.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P17712922015036381244

`A139600(lt[1, A139600(n+1)])`
-/

namespace A086271.P17712922015036381244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086271.P17712922015036381244

namespace A086271

/-- `A139600(lt[1, A139600(n+1)])` -/
def P17712922015036381244.Spec : Prop :=
  ∀ n, P17712922015036381244.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P16668175884395917100

`A139600(lt[1, A139600(n)]-1)`
-/

namespace A086271.P16668175884395917100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 1)

end

end A086271.P16668175884395917100

namespace A086271

/-- `A139600(lt[1, A139600(n)]-1)` -/
def P16668175884395917100.Spec : Prop :=
  ∀ n, P16668175884395917100.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P8936576868150404477

`A139600(A111650(n+1)+n+2)`
-/

namespace A086271.P8936576868150404477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A111650 (n + 1) + (n + 2 : ℤ)).toNat

end

end A086271.P8936576868150404477

namespace A086271

/-- `A139600(A111650(n+1)+n+2)` -/
def P8936576868150404477.Spec : Prop :=
  ∀ n, P8936576868150404477.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P6940573543908534144

`A139600(2*A014132(n+1)-n)`
-/

namespace A086271.P6940573543908534144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A086271.P6940573543908534144

namespace A086271

/-- `A139600(2*A014132(n+1)-n)` -/
def P6940573543908534144.Spec : Prop :=
  ∀ n, P6940573543908534144.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P186349299799328158

`A139600(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A086271.P186349299799328158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A086271.P186349299799328158

namespace A086271

/-- `A139600(A014132(n+1)+A014132(n+1)-n)` -/
def P186349299799328158.Spec : Prop :=
  ∀ n, P186349299799328158.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P8613132517780734830

`A139600(lt[3, A124928(n)])`
-/

namespace A086271.P8613132517780734830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086271.P8613132517780734830

namespace A086271

/-- `A139600(lt[3, A124928(n)])` -/
def P8613132517780734830.Spec : Prop :=
  ∀ n, P8613132517780734830.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P17156939055496548015

`A139600(eq[A010816(n+1), A010816(n)])`
-/

namespace A086271.P17156939055496548015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A086271.P17156939055496548015

namespace A086271

/-- `A139600(eq[A010816(n+1), A010816(n)])` -/
def P17156939055496548015.Spec : Prop :=
  ∀ n, P17156939055496548015.a n = A086271 (n + 1)

end A086271

/-! ## A086271.P8554916762859236583

`A139600(lt[1, A324429(n)])`
-/

namespace A086271.P8554916762859236583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086271.P8554916762859236583

namespace A086271

/-- `A139600(lt[1, A324429(n)])` -/
def P8554916762859236583.Spec : Prop :=
  ∀ n, P8554916762859236583.a n = A086271 (n + 1)

end A086271

/-!
# A086272: Rectangular array T(n,k) of central polygonal numbers, by antidiagonals.

The programs for A086272, the canonical program `A086272.P4425013638972639906` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086272 has offset 1).

The definition of A086272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086272.P4425013638972639906

`(col(n)+2)*C(row(n)-col(n)+1, 2)+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086272

/-- `(col(n)+2)*C(row(n)-col(n)+1, 2)+1` -/
def P4425013638972639906.Spec : Prop :=
  ∀ n, (P4425013638972639906.a n : ℤ) = A086272 (n + 1)

theorem P4425013638972639906.correct : P4425013638972639906.Spec := by
  intro n
  simp only [A086272, Nat.add_sub_cancel]

end A086272

/-! ## A086272.P5308278531454979945

`A101321(n)+A095832(n+1)`
-/

namespace A086272.P5308278531454979945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 n + A095832 (n + 1)

end

end A086272.P5308278531454979945

namespace A086272

/-- `A101321(n)+A095832(n+1)` -/
def P5308278531454979945.Spec : Prop :=
  ∀ n, P5308278531454979945.a n = A086272 (n + 1)

end A086272

/-! ## A086272.P4849518446126822411

`A134394(n+1)+A025581(n)²`
-/

namespace A086272.P4849518446126822411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) + A025581 n ^ 2

end

end A086272.P4849518446126822411

namespace A086272

/-- `A134394(n+1)+A025581(n)²` -/
def P4849518446126822411.Spec : Prop :=
  ∀ n, P4849518446126822411.a n = A086272 (n + 1)

end A086272

/-! ## A086272.P4212673720625651415

`A095832(n+1)+A062707(n)+1`
-/

namespace A086272.P4212673720625651415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + (A062707 n + 1)

end

end A086272.P4212673720625651415

namespace A086272

/-- `A095832(n+1)+A062707(n)+1` -/
def P4212673720625651415.Spec : Prop :=
  ∀ n, P4212673720625651415.a n = A086272 (n + 1)

end A086272

/-! ## A086272.P4666774489637095836

`A134394(n+1)+A095831(n+1)`
-/

namespace A086272.P4666774489637095836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) + A095831 (n + 1)

end

end A086272.P4666774489637095836

namespace A086272

/-- `A134394(n+1)+A095831(n+1)` -/
def P4666774489637095836.Spec : Prop :=
  ∀ n, P4666774489637095836.a n = A086272 (n + 1)

end A086272

/-! ## A086272.P15137764482434958628

`(A002260(n+1)+1)*C(A004736(n+1), 2)+1`
-/

namespace A086272.P15137764482434958628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + 1) * (Nat.choose (A004736 (n + 1)).toNat 2 : ℤ) + 1

end

end A086272.P15137764482434958628

namespace A086272

/-- `(A002260(n+1)+1)*C(A004736(n+1), 2)+1` -/
def P15137764482434958628.Spec : Prop :=
  ∀ n, P15137764482434958628.a n = A086272 (n + 1)

end A086272

/-! ## A086272.P1408900601447131364

`A062707(n)+A002061(A004736(n+1))`
-/

namespace A086272.P1408900601447131364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A002061 (A004736 (n + 1)).toNat

end

end A086272.P1408900601447131364

namespace A086272

/-- `A062707(n)+A002061(A004736(n+1))` -/
def P1408900601447131364.Spec : Prop :=
  ∀ n, P1408900601447131364.a n = A086272 (n + 1)

end A086272

/-! ## A086272.P16590695276120685518

`A086273(A038722(n+1))`
-/

namespace A086272.P16590695276120685518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (A038722 (n + 1)).toNat

end

end A086272.P16590695276120685518

namespace A086272

/-- `A086273(A038722(n+1))` -/
def P16590695276120685518.Spec : Prop :=
  ∀ n, P16590695276120685518.a n = A086272 (n + 1)

end A086272

/-! ## A086272.P15343103761157533659

`A062707(n)+A008621(A099375(n)²)`
-/

namespace A086272.P15343103761157533659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A008621 (A099375 n ^ 2).toNat

end

end A086272.P15343103761157533659

namespace A086272

/-- `A062707(n)+A008621(A099375(n)²)` -/
def P15343103761157533659.Spec : Prop :=
  ∀ n, P15343103761157533659.a n = A086272 (n + 1)

end A086272

/-!
# A086273: Rectangular array T(n,k) of central polygonal numbers, by antidiagonals.

The programs for A086273, the canonical program `A086273.P15577480931073846946` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086273 has offset 1).

The definition of A086273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086273.P15577480931073846946

`(row(n)-col(n)+2)*C(col(n)+1, 2)+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086273

/-- `(row(n)-col(n)+2)*C(col(n)+1, 2)+1` -/
def P15577480931073846946.Spec : Prop :=
  ∀ n, P15577480931073846946.a n = A086273 (n + 1)

theorem P15577480931073846946.correct : P15577480931073846946.Spec := by
  intro n
  simp only [A086273, Nat.add_sub_cancel]

end A086273

/-! ## A086273.P10350476117589315268

`A057145(n+2)+(n-C(round(sqrt(2*(n+1))), 2))²`
-/

namespace A086273.P10350476117589315268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ)) ^ 2

end

end A086273.P10350476117589315268

namespace A086273

/-- `A057145(n+2)+(n-C(round(sqrt(2*(n+1))), 2))²` -/
def P10350476117589315268.Spec : Prop :=
  ∀ n, P10350476117589315268.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P11141528410601373512

`A139600(n)+A076110(n+1)`
-/

namespace A086273.P11141528410601373512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + A076110 (n + 1)

end

end A086273.P11141528410601373512

namespace A086273

/-- `A139600(n)+A076110(n+1)` -/
def P11141528410601373512.Spec : Prop :=
  ∀ n, P11141528410601373512.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P3045919493269394930

`A143844(n)+A057145(n+2)`
-/

namespace A086273.P3045919493269394930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A057145 (n + 2)

end

end A086273.P3045919493269394930

namespace A086273

/-- `A143844(n)+A057145(n+2)` -/
def P3045919493269394930.Spec : Prop :=
  ∀ n, P3045919493269394930.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P8891913594741623944

`A057145(n+2)+A002262(n)²`
-/

namespace A086273.P8891913594741623944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + A002262 n ^ 2

end

end A086273.P8891913594741623944

namespace A086273

/-- `A057145(n+2)+A002262(n)²` -/
def P8891913594741623944.Spec : Prop :=
  ∀ n, P8891913594741623944.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P6184778037809226000

`A057145(n+2)+(n-A057944(n))²`
-/

namespace A086273.P6184778037809226000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + ((n : ℤ) - A057944 n) ^ 2

end

end A086273.P6184778037809226000

namespace A086273

/-- `A057145(n+2)+(n-A057944(n))²` -/
def P6184778037809226000.Spec : Prop :=
  ∀ n, P6184778037809226000.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P10005091575275807184

`A057145(n+2)+(1-A002260(n+1))²`
-/

namespace A086273.P10005091575275807184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + (1 - A002260 (n + 1)) ^ 2

end

end A086273.P10005091575275807184

namespace A086273

/-- `A057145(n+2)+(1-A002260(n+1))²` -/
def P10005091575275807184.Spec : Prop :=
  ∀ n, P10005091575275807184.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P11944577492302053997

`A002262(n)²+A139600(n)+A077028(n)`
-/

namespace A086273.P11944577492302053997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n ^ 2 + (A139600 n + A077028 n)

end

end A086273.P11944577492302053997

namespace A086273

/-- `A002262(n)²+A139600(n)+A077028(n)` -/
def P11944577492302053997.Spec : Prop :=
  ∀ n, P11944577492302053997.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P11334490623807487937

`(A004736(n+1)+1)*A000217(A002262(n))+1`
-/

namespace A086273.P11334490623807487937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + 1) * A000217 (A002262 n).toNat + 1

end

end A086273.P11334490623807487937

namespace A086273

/-- `(A004736(n+1)+1)*A000217(A002262(n))+1` -/
def P11334490623807487937.Spec : Prop :=
  ∀ n, P11334490623807487937.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P6940488783286445137

`A057145(n+2)+A000290(A057554(2*n+1))`
-/

namespace A086273.P6940488783286445137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + A000290 (A057554 (2 * n + 1)).toNat

end

end A086273.P6940488783286445137

namespace A086273

/-- `A057145(n+2)+A000290(A057554(2*n+1))` -/
def P6940488783286445137.Spec : Prop :=
  ∀ n, P6940488783286445137.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P18247104674303601879

`A086271(n+1)+A162609(n+1)-A303273(n)`
-/

namespace A086273.P18247104674303601879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) + (A162609 (n + 1) - A303273 n)

end

end A086273.P18247104674303601879

namespace A086273

/-- `A086271(n+1)+A162609(n+1)-A303273(n)` -/
def P18247104674303601879.Spec : Prop :=
  ∀ n, P18247104674303601879.a n = A086273 (n + 1)

theorem P18247104674303601879.correct : P18247104674303601879.Spec := by
  intro n
  simp only [A086273, Nat.add_sub_cancel, A086273.P18247104674303601879.a, A086273.P15577480931073846946.a, A086271, A086271.P16008910328647451104.a, A162609, A162609.P12740708106325830142.a, A303273, A303273.P9986921008027816588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A086273

/-! ## A086273.P904126171663502039

`A086271(n+1)+A000217(A002262(n))-A002262(n)`
-/

namespace A086273.P904126171663502039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (n + 1) + (A000217 (A002262 n).toNat - A002262 n)

end

end A086273.P904126171663502039

namespace A086273

/-- `A086271(n+1)+A000217(A002262(n))-A002262(n)` -/
def P904126171663502039.Spec : Prop :=
  ∀ n, P904126171663502039.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P10493369790106215188

`A086272(A038722(n+1))`
-/

namespace A086273.P10493369790106215188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086272 (A038722 (n + 1)).toNat

end

end A086273.P10493369790106215188

namespace A086273

/-- `A086272(A038722(n+1))` -/
def P10493369790106215188.Spec : Prop :=
  ∀ n, P10493369790106215188.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P4486060382490585289

`A139600(comp[∑[n]])+A002262(n)²`
-/

namespace A086273.P4486060382490585289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A002262 n ^ 2

end

end A086273.P4486060382490585289

namespace A086273

/-- `A139600(comp[∑[n]])+A002262(n)²` -/
def P4486060382490585289.Spec : Prop :=
  ∀ n, P4486060382490585289.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P18277124655211471618

`A162609(comp[∑[n]])+A139600(n)`
-/

namespace A086273.P18277124655211471618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A139600 n

end

end A086273.P18277124655211471618

namespace A086273

/-- `A162609(comp[∑[n]])+A139600(n)` -/
def P18277124655211471618.Spec : Prop :=
  ∀ n, P18277124655211471618.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P341345951742441336

`A086271(comp[∑[n]])-A002262(n)`
-/

namespace A086273.P341345951742441336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086271 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A002262 n

end

end A086273.P341345951742441336

namespace A086273

/-- `A086271(comp[∑[n]])-A002262(n)` -/
def P341345951742441336.Spec : Prop :=
  ∀ n, P341345951742441336.a n = A086273 (n + 1)

end A086273

/-! ## A086273.P1525882723175941791

`A057145(n+2)+A001222(A059268(n))²`
-/

namespace A086273.P1525882723175941791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) + A001222 (A059268 n).toNat ^ 2

end

end A086273.P1525882723175941791

namespace A086273

/-- `A057145(n+2)+A001222(A059268(n))²` -/
def P1525882723175941791.Spec : Prop :=
  ∀ n, P1525882723175941791.a n = A086273 (n + 1)

end A086273

/-!
# A086274: Antidiagonal sums of A086272 (and of A086273).

The programs for A086274, the canonical program `A086274.P18334178800764837076` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086274 has offset 1).

The definition of A086274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086274.P18334178800764837076

`(n+1)*((n+1)^3+6*(n+1)²-(n+1)+18)/24`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086274

/-- `(n+1)*((n+1)^3+6*(n+1)²-(n+1)+18)/24` -/
def P18334178800764837076.Spec : Prop :=
  ∀ n, P18334178800764837076.a n = (A086274 (n + 1) : ℚ)

end A086274

/-! ## A086274.P1914208175330849140

`∑[C(n+3, 3)-n]`
-/

namespace A086274.P1914208175330849140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086274.P1914208175330849140

namespace A086274

/-- `∑[C(n+3, 3)-n]` -/
def P1914208175330849140.Spec : Prop :=
  ∀ n, P1914208175330849140.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P13219499673784010962

`C(n+4, 4)-C(n+1, 2)`
-/

namespace A086274.P13219499673784010962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

end

end A086274.P13219499673784010962

namespace A086274

/-- `C(n+4, 4)-C(n+1, 2)` -/
def P13219499673784010962.Spec : Prop :=
  ∀ n, P13219499673784010962.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P903930811596729121

`∑[∑[C(n+1, 2)+n]]+n+1`
-/

namespace A086274.P903930811596729121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A086274.P903930811596729121

namespace A086274

/-- `∑[∑[C(n+1, 2)+n]]+n+1` -/
def P903930811596729121.Spec : Prop :=
  ∀ n, (P903930811596729121.a n : ℤ) = A086274 (n + 1)

end A086274

/-! ## A086274.P10026476539247647864

`∑[∑[n]]-∑[a(n-1)-∑[n]]` with `a(0)=-1`
-/

namespace A086274.P10026476539247647864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A086274.P10026476539247647864

namespace A086274

/-- `∑[∑[n]]-∑[a(n-1)-∑[n]]` -/
def P10026476539247647864.Spec : Prop :=
  ∀ n, P10026476539247647864.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P11010852348655203744

`(4/n+1)*(a(n-1)+n)-6` with `a(0)=1`
-/

namespace A086274.P11010852348655203744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 / (n : ℚ) + 1) * (a (n - 1) + (n : ℚ)) - 6

end

end A086274.P11010852348655203744

namespace A086274

/-- `(4/n+1)*(a(n-1)+n)-6` -/
def P11010852348655203744.Spec : Prop :=
  ∀ n, P11010852348655203744.a n = (A086274 (n + 1) : ℚ)

end A086274

/-! ## A086274.P12475116851126984336

`A005582(n)+1+n`
-/

namespace A086274.P12475116851126984336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + 1 + (n : ℤ)

end

end A086274.P12475116851126984336

namespace A086274

/-- `A005582(n)+1+n` -/
def P12475116851126984336.Spec : Prop :=
  ∀ n, P12475116851126984336.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P5188881981359178951

`∑[A000125(n)+n²]`
-/

namespace A086274.P5188881981359178951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086274.P5188881981359178951

namespace A086274

/-- `∑[A000125(n)+n²]` -/
def P5188881981359178951.Spec : Prop :=
  ∀ n, P5188881981359178951.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P3972751376984249948

`∑[A349417(n+1)-1]`
-/

namespace A086274.P3972751376984249948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086274.P3972751376984249948

namespace A086274

/-- `∑[A349417(n+1)-1]` -/
def P3972751376984249948.Spec : Prop :=
  ∀ n, P3972751376984249948.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P10263320592461659629

`∑[A121968(n+1)+n]`
-/

namespace A086274.P10263320592461659629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086274.P10263320592461659629

namespace A086274

/-- `∑[A121968(n+1)+n]` -/
def P10263320592461659629.Spec : Prop :=
  ∀ n, P10263320592461659629.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P8709251686970954867

`∑[A000292(n+1)-n]`
-/

namespace A086274.P8709251686970954867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086274.P8709251686970954867

namespace A086274

/-- `∑[A000292(n+1)-n]` -/
def P8709251686970954867.Spec : Prop :=
  ∀ n, P8709251686970954867.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P202863872140067018

`∑[A116721(n+1)]+n²`
-/

namespace A086274.P202863872140067018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A086274.P202863872140067018

namespace A086274

/-- `∑[A116721(n+1)]+n²` -/
def P202863872140067018.Spec : Prop :=
  ∀ n, P202863872140067018.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P11944382520606348231

`A051744(n+1)-(n+1)²`
-/

namespace A086274.P11944382520606348231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A086274.P11944382520606348231

namespace A086274

/-- `A051744(n+1)-(n+1)²` -/
def P11944382520606348231.Spec : Prop :=
  ∀ n, P11944382520606348231.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P10782529010250992438

`A051743(n+1)-∑[n+1]`
-/

namespace A086274.P10782529010250992438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086274.P10782529010250992438

namespace A086274

/-- `A051743(n+1)-∑[n+1]` -/
def P10782529010250992438.Spec : Prop :=
  ∀ n, P10782529010250992438.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P14940403214813454777

`A055417(n)+A002411(n)`
-/

namespace A086274.P14940403214813454777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n + A002411 n

end

end A086274.P14940403214813454777

namespace A086274

/-- `A055417(n)+A002411(n)` -/
def P14940403214813454777.Spec : Prop :=
  ∀ n, P14940403214813454777.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P14362196198241329375

`A131941(n)+A084569(n)`
-/

namespace A086274.P14362196198241329375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n + A084569 n

end

end A086274.P14362196198241329375

namespace A086274

/-- `A131941(n)+A084569(n)` -/
def P14362196198241329375.Spec : Prop :=
  ∀ n, P14362196198241329375.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P8425978079829774652

`A223718(n)+A004006(n)`
-/

namespace A086274.P8425978079829774652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n + A004006 n

end

end A086274.P8425978079829774652

namespace A086274

/-- `A223718(n)+A004006(n)` -/
def P8425978079829774652.Spec : Prop :=
  ∀ n, P8425978079829774652.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P8404831268725506996

`A227161(n)+A006527(n)`
-/

namespace A086274.P8404831268725506996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227161 n + A006527 n

end

end A086274.P8404831268725506996

namespace A086274

/-- `A227161(n)+A006527(n)` -/
def P8404831268725506996.Spec : Prop :=
  ∀ n, P8404831268725506996.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P6242770406200720613

`A368881(n)+A000096(n)`
-/

namespace A086274.P6242770406200720613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368881 n + A000096 n

end

end A086274.P6242770406200720613

namespace A086274

/-- `A368881(n)+A000096(n)` -/
def P6242770406200720613.Spec : Prop :=
  ∀ n, P6242770406200720613.a n = A086274 (n + 1)

end A086274

/-! ## A086274.P14537020533710526589

`A008779(n)-A027480(n)`
-/

namespace A086274.P14537020533710526589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008779 n - A027480 n

end

end A086274.P14537020533710526589

namespace A086274

/-- `A008779(n)-A027480(n)` -/
def P14537020533710526589.Spec : Prop :=
  ∀ n, P14537020533710526589.a n = A086274 (n + 1)

end A086274

/-!
# A086275: Number of distinct Gaussian primes in the factorization of n.

The programs for A086275, the canonical program `A086275.P10952436384722837509` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086275 has offset 1).

The definition of A086275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086275.P10952436384722837509

`A059841(n+1)+2*A005089(n+1)+A005091(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086275

/-- `A059841(n+1)+2*A005089(n+1)+A005091(n+1)` -/
def P10952436384722837509.Spec : Prop :=
  ∀ n, P10952436384722837509.a n = A086275 (n + 1)

theorem P10952436384722837509.correct : P10952436384722837509.Spec := by
  intro n
  simp only [A086275, Nat.add_sub_cancel]

end A086275

/-! ## A086275.P14189728650966062243

`log2(∏{p}[n+1, 4-and(2, #)])`
-/

namespace A086275.P14189728650966062243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (4 - (Nat.land 2 p : ℤ)) : ℤ) : ℝ)

end

end A086275.P14189728650966062243

namespace A086275

/-- `log2(∏{p}[n+1, 4-and(2, #)])` -/
def P14189728650966062243.Spec : Prop :=
  ∀ n, P14189728650966062243.a n = (A086275 (n + 1) : ℝ)

end A086275

/-! ## A086275.P18188654658936854624

`∑{p}[n+1, and(2, #+2)!]`
-/

namespace A086275.P18188654658936854624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.land 2 (p + 2))

end

end A086275.P18188654658936854624

namespace A086275

/-- `∑{p}[n+1, and(2, #+2)!]` -/
def P18188654658936854624.Spec : Prop :=
  ∀ n, (P18188654658936854624.a n : ℤ) = A086275 (n + 1)

end A086275

/-! ## A086275.P12861961084129159559

`∑{p}[n+1, (or(2, #)-#)!]`
-/

namespace A086275.P12861961084129159559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial ((Nat.lor 2 p : ℤ) - (p : ℤ)).toNat

end

end A086275.P12861961084129159559

namespace A086275

/-- `∑{p}[n+1, (or(2, #)-#)!]` -/
def P12861961084129159559.Spec : Prop :=
  ∀ n, (P12861961084129159559.a n : ℤ) = A086275 (n + 1)

end A086275

/-! ## A086275.P8037348924053836528

`val(∏{p}[n+1, 4-and(2, #)], 2)`
-/

namespace A086275.P8037348924053836528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (4 - (Nat.land 2 p : ℤ))).toNat 2

end

end A086275.P8037348924053836528

namespace A086275

/-- `val(∏{p}[n+1, 4-and(2, #)], 2)` -/
def P8037348924053836528.Spec : Prop :=
  ∀ n, (P8037348924053836528.a n : ℤ) = A086275 (n + 1)

end A086275

/-! ## A086275.P14010273522932651006

`∑{e}[∏{p}[n+1, 4-and(2, #)], #]`
-/

namespace A086275.P14010273522932651006
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (4 - (Nat.land 2 p : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086275.P14010273522932651006

namespace A086275

/-- `∑{e}[∏{p}[n+1, 4-and(2, #)], #]` -/
def P14010273522932651006.Spec : Prop :=
  ∀ n, (P14010273522932651006.a n : ℤ) = A086275 (n + 1)

end A086275

/-! ## A086275.P11423911427056622255

`log2(A332476(n+1))`
-/

namespace A086275.P11423911427056622255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A332476 (n + 1) : ℝ)

end

end A086275.P11423911427056622255

namespace A086275

/-- `log2(A332476(n+1))` -/
def P11423911427056622255.Spec : Prop :=
  ∀ n, P11423911427056622255.a n = (A086275 (n + 1) : ℝ)

end A086275

/-! ## A086275.P8963667451566855246

`∑{p}[n+1, A001826(#)]`
-/

namespace A086275.P8963667451566855246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001826 p

end

end A086275.P8963667451566855246

namespace A086275

/-- `∑{p}[n+1, A001826(#)]` -/
def P8963667451566855246.Spec : Prop :=
  ∀ n, P8963667451566855246.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P5566413149527234833

`∑{p}[n+1, A063014(#)]`
-/

namespace A086275.P5566413149527234833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A063014 p

end

end A086275.P5566413149527234833

namespace A086275

/-- `∑{p}[n+1, A063014(#)]` -/
def P5566413149527234833.Spec : Prop :=
  ∀ n, P5566413149527234833.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P7476693506809451253

`∑{p}[n+1, A086669(#)]`
-/

namespace A086275.P7476693506809451253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A086669 p

end

end A086275.P7476693506809451253

namespace A086275

/-- `∑{p}[n+1, A086669(#)]` -/
def P7476693506809451253.Spec : Prop :=
  ∀ n, P7476693506809451253.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P12776207475034152894

`∑{p}[n+1, A286361(#)]`
-/

namespace A086275.P12776207475034152894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A286361 p

end

end A086275.P12776207475034152894

namespace A086275

/-- `∑{p}[n+1, A286361(#)]` -/
def P12776207475034152894.Spec : Prop :=
  ∀ n, P12776207475034152894.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P15032383188201071396

`∑{p}[n+1, A316506(#)]`
-/

namespace A086275.P15032383188201071396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A316506 p

end

end A086275.P15032383188201071396

namespace A086275

/-- `∑{p}[n+1, A316506(#)]` -/
def P15032383188201071396.Spec : Prop :=
  ∀ n, P15032383188201071396.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P7523603173381761953

`∑{p}[n+1, A389136(#)]`
-/

namespace A086275.P7523603173381761953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A389136 p

end

end A086275.P7523603173381761953

namespace A086275

/-- `∑{p}[n+1, A389136(#)]` -/
def P7523603173381761953.Spec : Prop :=
  ∀ n, P7523603173381761953.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P3047862521470061429

`A316506(∏{p}[n+1, #])`
-/

namespace A086275.P3047862521470061429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316506 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A086275.P3047862521470061429

namespace A086275

/-- `A316506(∏{p}[n+1, #])` -/
def P3047862521470061429.Spec : Prop :=
  ∀ n, P3047862521470061429.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P3397170766311184534

`A001222(∏{p}[n+1, 4-and(2, #)])`
-/

namespace A086275.P3397170766311184534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), (4 - (Nat.land 2 p : ℤ))).toNat

end

end A086275.P3397170766311184534

namespace A086275

/-- `A001222(∏{p}[n+1, 4-and(2, #)])` -/
def P3397170766311184534.Spec : Prop :=
  ∀ n, P3397170766311184534.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P2207456214782432015

`A000005(∏{p}[n+1, 4-and(2, #)])-1`
-/

namespace A086275.P2207456214782432015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), (4 - (Nat.land 2 p : ℤ))).toNat - 1

end

end A086275.P2207456214782432015

namespace A086275

/-- `A000005(∏{p}[n+1, 4-and(2, #)])-1` -/
def P2207456214782432015.Spec : Prop :=
  ∀ n, P2207456214782432015.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P5217672978805415671

`A316506(A007947(n+1))`
-/

namespace A086275.P5217672978805415671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316506 (A007947 (n + 1)).toNat

end

end A086275.P5217672978805415671

namespace A086275

/-- `A316506(A007947(n+1))` -/
def P5217672978805415671.Spec : Prop :=
  ∀ n, P5217672978805415671.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P1771777257323726233

`A332447(5*A332476(n+1))`
-/

namespace A086275.P1771777257323726233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (5 * A332476 (n + 1)).toNat

end

end A086275.P1771777257323726233

namespace A086275

/-- `A332447(5*A332476(n+1))` -/
def P1771777257323726233.Spec : Prop :=
  ∀ n, P1771777257323726233.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P17651538833139279958

`A332447(lcm(7, A332476(n+1)))`
-/

namespace A086275.P17651538833139279958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (Int.lcm 7 (A332476 (n + 1)))

end

end A086275.P17651538833139279958

namespace A086275

/-- `A332447(lcm(7, A332476(n+1)))` -/
def P17651538833139279958.Spec : Prop :=
  ∀ n, P17651538833139279958.a n = A086275 (n + 1)

end A086275

/-! ## A086275.P11940824475037665957

`A005089(n+1)+A001221(n+1)`
-/

namespace A086275.P11940824475037665957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (n + 1) + A001221 (n + 1)

end

end A086275.P11940824475037665957

namespace A086275

/-- `A005089(n+1)+A001221(n+1)` -/
def P11940824475037665957.Spec : Prop :=
  ∀ n, P11940824475037665957.a n = A086275 (n + 1)

end A086275

/-!
# A086278: Decimal expansion of Shapiro's cyclic sum constant mu.

The programs for A086278, there is no canonical definition to state claims against.
-/

/-! ## A086278.P450816503617316579

`9-A243261(n)`
-/

namespace A086278.P450816503617316579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A243261 n

end

end A086278.P450816503617316579

/-!
# A086285: Numbers k such that 1 + 2k + 3k^2 is prime.

The programs for A086285, there is no canonical definition to state claims against.
-/

/-! ## A086285.P2521290064852912501

`floor(sqrt(A122430(n+1)/3))`
-/

namespace A086285.P2521290064852912501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A122430 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A086285.P2521290064852912501

/-! ## A086285.P15415337647913802869

`round(sqrt(A122430(lcm(n+1, (-1)^n))/3))`
-/

namespace A086285.P15415337647913802869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A122430 (Int.lcm (n + 1 : ℤ) ((-1) ^ n)) : ℚ) / 3 : ℝ))

end

end A086285.P15415337647913802869

/-! ## A086285.P7504458151980851364

`round(sqrt(A122430(n+1)/3))%A016971(n)`
-/

namespace A086285.P7504458151980851364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A122430 (n + 1) : ℚ) / 3 : ℝ))) (A016971 n)

end

end A086285.P7504458151980851364

/-! ## A086285.P7731702182655117250

`A255407(round(sqrt(A122430(n+1)/3)))`
-/

namespace A086285.P7731702182655117250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (SequenceMachineLib.roundAway (Real.sqrt ((A122430 (n + 1) : ℚ) / 3 : ℝ))).toNat

end

end A086285.P7731702182655117250

/-! ## A086285.P3610909490965621347

`record[A135997(A240878(n+1)-1)]`
-/

namespace A086285.P3610909490965621347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A240878 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086285.P3610909490965621347

/-! ## A086285.P16163429793387318029

`record[A135997(A242330(n+1)-1)]`
-/

namespace A086285.P16163429793387318029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A242330 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086285.P16163429793387318029

/-! ## A086285.P1131936764655927366

`record[A135997(xor(1, A240878(n+2)))]`
-/

namespace A086285.P1131936764655927366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (Int.xor 1 (A240878 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086285.P1131936764655927366

/-! ## A086285.P6248804864927969456

`record[A135997(xor(1, A242330(n+3)))]`
-/

namespace A086285.P6248804864927969456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (Int.xor 1 (A242330 (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086285.P6248804864927969456

/-!
# A086286: Smallest prime factor of 7-smooth numbers.

The programs for A086286, there is no canonical definition to state claims against.
-/

/-! ## A086286.P14229980604156373262

`A020639(A002473(n+1))`
-/

namespace A086286.P14229980604156373262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002473 (n + 1)).toNat

end

end A086286.P14229980604156373262

/-! ## A086286.P4549676322437922885

`A020639(A086297(n+1))`
-/

namespace A086286.P4549676322437922885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A086297 (n + 1)).toNat

end

end A086286.P4549676322437922885

/-! ## A086286.P11135969112985413803

`A020639(sqrt(A352618(n+1)))`
-/

namespace A086286.P11135969112985413803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

end

end A086286.P11135969112985413803

/-! ## A086286.P9768959830500453566

`A020639(A085125(n+1)/2)`
-/

namespace A086286.P9768959830500453566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A085125 (n + 1) : ℚ) / 2)).toNat

end

end A086286.P9768959830500453566

/-! ## A086286.P10640231345304623151

`A020639(A085128(n+1)/5)`
-/

namespace A086286.P10640231345304623151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A085128 (n + 1) : ℚ) / 5)).toNat

end

end A086286.P10640231345304623151

/-! ## A086286.P15406522418565323417

`A020639(A080194(n+1)/7)`
-/

namespace A086286.P15406522418565323417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A080194 (n + 1) : ℚ) / 7)).toNat

end

end A086286.P15406522418565323417

/-! ## A086286.P17136724753512374827

`A020639(lt[A006530(n+1), 8]+1)`
-/

namespace A086286.P17136724753512374827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086286.P17136724753512374827

/-! ## A086286.P11546814592607209447

`A020639(A080194(n+1))%A080165(n+1)`
-/

namespace A086286.P11546814592607209447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A080194 (n + 1)).toNat) (A080165 (n + 1))

end

end A086286.P11546814592607209447

/-! ## A086286.P4519476846217855779

`A020639(record[A071785(n+1)])`
-/

namespace A086286.P4519476846217855779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086286.P4519476846217855779

/-! ## A086286.P5414394938908821181

`A020639(record[A262401(n+1)])`
-/

namespace A086286.P5414394938908821181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086286.P5414394938908821181

/-! ## A086286.P1928282946996283160

`A117365(A117367(A002473(n+1))²)`
-/

namespace A086286.P1928282946996283160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A117367 (A002473 (n + 1)).toNat ^ 2).toNat

end

end A086286.P1928282946996283160

/-! ## A086286.P797422410211047371

`A020639(record[A118541(n)])`
-/

namespace A086286.P797422410211047371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086286.P797422410211047371

/-! ## A086286.P379492643377363477

`A020639(A000720(A335331(n+1)))`
-/

namespace A086286.P379492643377363477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000720 (A335331 (n + 1)).toNat).toNat

end

end A086286.P379492643377363477

/-! ## A086286.P9716650514762157262

`A014673(A085125(n+1))`
-/

namespace A086286.P9716650514762157262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A085125 (n + 1)).toNat

end

end A086286.P9716650514762157262

/-! ## A086286.P18225144552780259036

`A014673(2*A002473(n+1))`
-/

namespace A086286.P18225144552780259036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A002473 (n + 1)).toNat

end

end A086286.P18225144552780259036

/-! ## A086286.P18141057807249103077

`A014673(A002473(n+1)+A002473(n+1))`
-/

namespace A086286.P18141057807249103077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A002473 (n + 1) + A002473 (n + 1)).toNat

end

end A086286.P18141057807249103077

/-! ## A086286.P6365425706129345060

`A107286(A080194(n+1))`
-/

namespace A086286.P6365425706129345060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A080194 (n + 1)).toNat

end

end A086286.P6365425706129345060

/-! ## A086286.P17551410903483604014

`A115561(A085127(n+1))`
-/

namespace A086286.P17551410903483604014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A085127 (n + 1)).toNat

end

end A086286.P17551410903483604014

/-!
# A086287: Greatest prime factor of 7-smooth numbers.

The programs for A086287, there is no canonical definition to state claims against.
-/

/-! ## A086287.P5967886228686377046

`A006530(A002473(n+1))`
-/

namespace A086287.P5967886228686377046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002473 (n + 1)).toNat

end

end A086287.P5967886228686377046

/-! ## A086287.P9705118904321141483

`A002034(A086297(n+1))`
-/

namespace A086287.P9705118904321141483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A086297 (n + 1)).toNat

end

end A086287.P9705118904321141483

/-! ## A086287.P1753553692624058874

`A006530(A086297(n+1)²)`
-/

namespace A086287.P1753553692624058874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086297 (n + 1) ^ 2).toNat

end

end A086287.P1753553692624058874

/-! ## A086287.P1873116643212434110

`A006530(sqrt(A352618(n+1)))`
-/

namespace A086287.P1873116643212434110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

end

end A086287.P1873116643212434110

/-! ## A086287.P2111167240153131845

`A006530(A085127(n+1)-A085126(n+1))`
-/

namespace A086287.P2111167240153131845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085127 (n + 1) - A085126 (n + 1)).toNat

end

end A086287.P2111167240153131845

/-! ## A086287.P15191329749020234717

`A006530(lt[A006530(n+1), 8]+1)`
-/

namespace A086287.P15191329749020234717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086287.P15191329749020234717

/-! ## A086287.P5871260241844593347

`A006530(record[A071785(n+1)])`
-/

namespace A086287.P5871260241844593347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086287.P5871260241844593347

/-! ## A086287.P14605654742727922936

`A006530(record[A262401(n+1)])`
-/

namespace A086287.P14605654742727922936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086287.P14605654742727922936

/-! ## A086287.P4341967479820256968

`filter[A006530(n+1), A086299(#)]`
-/

namespace A086287.P4341967479820256968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A086287.P4341967479820256968

/-! ## A086287.P17205756662767349617

`filter[A006530(n+1), A188641(#)]`
-/

namespace A086287.P17205756662767349617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A086287.P17205756662767349617

/-! ## A086287.P9162125330419472754

`A117365(A117366(A002473(n+1))²)`
-/

namespace A086287.P9162125330419472754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117365 (A117366 (A002473 (n + 1)).toNat ^ 2).toNat

end

end A086287.P9162125330419472754

/-! ## A086287.P4565587267737206081

`A006530(record[A118541(n)])`
-/

namespace A086287.P4565587267737206081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086287.P4565587267737206081

/-! ## A086287.P7081614579203381836

`A006530(A000720(A335331(n+1)))`
-/

namespace A086287.P7081614579203381836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000720 (A335331 (n + 1)).toNat).toNat

end

end A086287.P7081614579203381836

/-! ## A086287.P9902292129824412632

`A085392(A085125(n+1))`
-/

namespace A086287.P9902292129824412632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A085125 (n + 1)).toNat

end

end A086287.P9902292129824412632

/-! ## A086287.P657312718271910074

`filter[A085392(2*(n+1)), A086299(#)]`
-/

namespace A086287.P657312718271910074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A086287.P657312718271910074

/-! ## A086287.P13385512227336627210

`filter[A085392(2*(n+1)), A188641(#)]`
-/

namespace A086287.P13385512227336627210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A086287.P13385512227336627210

/-! ## A086287.P11817440673856399911

`A087039(A080194(n+1))`
-/

namespace A086287.P11817440673856399911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A080194 (n + 1)).toNat

end

end A086287.P11817440673856399911

/-! ## A086287.P17991369972220571158

`A006530(A007954(A280249(n+1)))`
-/

namespace A086287.P17991369972220571158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007954 (A280249 (n + 1)).toNat).toNat

end

end A086287.P17991369972220571158

/-! ## A086287.P2855167549186008696

`A006530(∏{p}[A352618(n+1), #])`
-/

namespace A086287.P2855167549186008696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086287.P2855167549186008696

/-!
# A086288: Number of distinct prime factors of 7-smooth numbers.

The programs for A086288, there is no canonical definition to state claims against.
-/

/-! ## A086288.P15753086379848508954

`A001221(A002473(n+1))`
-/

namespace A086288.P15753086379848508954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002473 (n + 1)).toNat

end

end A086288.P15753086379848508954

/-! ## A086288.P6670997944961751791

`∑{e}[A086297(n+1), #]`
-/

namespace A086288.P6670997944961751791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086288.P6670997944961751791

/-! ## A086288.P2321748252939973400

`A001221(A086297(n+1))`
-/

namespace A086288.P2321748252939973400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A086297 (n + 1)).toNat

end

end A086288.P2321748252939973400

/-! ## A086288.P10949401622772862510

`A001222(A086297(n+1)²)/2`
-/

namespace A086288.P10949401622772862510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A086297 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A086288.P10949401622772862510

/-! ## A086288.P14872713158817526986

`∑{p}[A086297(n+1), #/A086297(#)]`
-/

namespace A086288.P14872713158817526986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A086297 p : ℚ)

end

end A086288.P14872713158817526986

/-! ## A086288.P9623015083496133429

`A001222(A086297(n+1))%A134077(n)`
-/

namespace A086288.P9623015083496133429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A086297 (n + 1)).toNat) (A134077 n)

end

end A086288.P9623015083496133429

/-! ## A086288.P4671060740540865583

`A001222(A086297(n+1)%A038509(n+1))`
-/

namespace A086288.P4671060740540865583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A086297 (n + 1)) (A038509 (n + 1))).toNat

end

end A086288.P4671060740540865583

/-! ## A086288.P7496938983209916180

`∑{p}[A002473(n+1), A001222(#)]`
-/

namespace A086288.P7496938983209916180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A086288.P7496938983209916180

/-! ## A086288.P284109345512264519

`A001222(∏{p}[A002473(n+1), #])`
-/

namespace A086288.P284109345512264519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A086288.P284109345512264519

/-! ## A086288.P13777244302704640528

`∑{p}[A002473(n+1), #/A002473(#)]`
-/

namespace A086288.P13777244302704640528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A002473 p : ℚ)

end

end A086288.P13777244302704640528

/-! ## A086288.P6560486629292735844

`A001221(sqrt(A352618(n+1)))`
-/

namespace A086288.P6560486629292735844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

end

end A086288.P6560486629292735844

/-! ## A086288.P5184381590949135760

`A001221(lt[A006530(n+1), 8]+1)`
-/

namespace A086288.P5184381590949135760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086288.P5184381590949135760

/-! ## A086288.P5223705142190806215

`A001221(record[A071785(n+1)])`
-/

namespace A086288.P5223705142190806215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086288.P5223705142190806215

/-! ## A086288.P7194761426559948801

`A001221(record[A262401(n+1)])`
-/

namespace A086288.P7194761426559948801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086288.P7194761426559948801

/-! ## A086288.P3813991489804712887

`A210679(A002473(2*n+1-n))`
-/

namespace A086288.P3813991489804712887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210679 (A002473 (2 * n + 1 - n)).toNat

end

end A086288.P3813991489804712887

/-! ## A086288.P18335638490642280385

`A001221(record[A118541(n)])`
-/

namespace A086288.P18335638490642280385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086288.P18335638490642280385

/-! ## A086288.P10024541522787990823

`A001221(A000720(A335331(n+1)))`
-/

namespace A086288.P10024541522787990823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000720 (A335331 (n + 1)).toNat).toNat

end

end A086288.P10024541522787990823

/-! ## A086288.P1284748558116942122

`A106404(A085125(n+1))`
-/

namespace A086288.P1284748558116942122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A085125 (n + 1)).toNat

end

end A086288.P1284748558116942122

/-! ## A086288.P17474322809114560773

`A001221(A052126(A080194(n+1)))`
-/

namespace A086288.P17474322809114560773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052126 (A080194 (n + 1)).toNat).toNat

end

end A086288.P17474322809114560773

/-! ## A086288.P4332544301978664081

`A303975(A335331(n+1))`
-/

namespace A086288.P4332544301978664081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (A335331 (n + 1)).toNat

end

end A086288.P4332544301978664081

/-!
# A086289: Total number of prime factors of 7-smooth numbers.

The programs for A086289, there is no canonical definition to state claims against.
-/

/-! ## A086289.P2175242352405057837

`A001222(A002473(n+1))`
-/

namespace A086289.P2175242352405057837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002473 (n + 1)).toNat

end

end A086289.P2175242352405057837

/-! ## A086289.P12172066037957704625

`∑{e}[A002473(n+1), #]`
-/

namespace A086289.P12172066037957704625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086289.P12172066037957704625

/-! ## A086289.P6763437776877525761

`A001222(sqrt(A352618(n+1)))`
-/

namespace A086289.P6763437776877525761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

end

end A086289.P6763437776877525761

/-! ## A086289.P1507039025078549652

`A001222(A085127(n+1)/2)-1`
-/

namespace A086289.P1507039025078549652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 2)).toNat - 1

end

end A086289.P1507039025078549652

/-! ## A086289.P1691689338094137152

`A001222(lt[A006530(n+1), 8]+1)`
-/

namespace A086289.P1691689338094137152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086289.P1691689338094137152

/-! ## A086289.P17170374043082428111

`A001222(A085127(n+1))-2`
-/

namespace A086289.P17170374043082428111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A085127 (n + 1)).toNat - 2

end

end A086289.P17170374043082428111

/-! ## A086289.P16158344432098110542

`A001222(A080194(n+1))-1`
-/

namespace A086289.P16158344432098110542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080194 (n + 1)).toNat - 1

end

end A086289.P16158344432098110542

/-! ## A086289.P14496519752580145029

`A001222(2*(eq[7, A006530(7*(n+1))]+1))-1`
-/

namespace A086289.P14496519752580145029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (7 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)) - 1

end

end A086289.P14496519752580145029

/-! ## A086289.P6336274248482507372

`A001222(record[A071785(n+1)])`
-/

namespace A086289.P6336274248482507372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086289.P6336274248482507372

/-! ## A086289.P16733264193054383951

`A001222(record[A262401(n+1)])`
-/

namespace A086289.P16733264193054383951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086289.P16733264193054383951

/-! ## A086289.P918565079935819926

`A001222(record[A118541(n)])`
-/

namespace A086289.P918565079935819926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086289.P918565079935819926

/-! ## A086289.P17276396680278582173

`A001222(A000720(A335331(n+1)))`
-/

namespace A086289.P17276396680278582173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000720 (A335331 (n + 1)).toNat).toNat

end

end A086289.P17276396680278582173

/-! ## A086289.P6023615344787201239

`A302242(A335331(n+1))`
-/

namespace A086289.P6023615344787201239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A335331 (n + 1)).toNat

end

end A086289.P6023615344787201239

/-! ## A086289.P8351005658959522644

`A252736(A085125(n+1))`
-/

namespace A086289.P8351005658959522644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A085125 (n + 1)).toNat

end

end A086289.P8351005658959522644

/-! ## A086289.P912837010590607814

`A252736(A085126(n+1))`
-/

namespace A086289.P912837010590607814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A085126 (n + 1)).toNat

end

end A086289.P912837010590607814

/-! ## A086289.P6279000042495533180

`A285726(A085127(n+1))`
-/

namespace A086289.P6279000042495533180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (A085127 (n + 1)).toNat

end

end A086289.P6279000042495533180

/-! ## A086289.P12089553810945220753

`A252736(A085128(n+1))`
-/

namespace A086289.P12089553810945220753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A085128 (n + 1)).toNat

end

end A086289.P12089553810945220753

/-! ## A086289.P13305241460884820930

`A285726(A085129(n+1))`
-/

namespace A086289.P13305241460884820930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (A085129 (n + 1)).toNat

end

end A086289.P13305241460884820930

/-! ## A086289.P4398856296927917567

`A252736(A080194(n+1))`
-/

namespace A086289.P4398856296927917567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A080194 (n + 1)).toNat

end

end A086289.P4398856296927917567

/-!
# A086290: Minimal exponent in prime factorization of 7-smooth numbers.

The programs for A086290, there is no canonical definition to state claims against.
-/

/-! ## A086290.P2218239652348641814

`A051904(A002473(n+1))`
-/

namespace A086290.P2218239652348641814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A002473 (n + 1)).toNat

end

end A086290.P2218239652348641814

/-! ## A086290.P2208800036981242918

`A051904(A085125(n+1)/2)`
-/

namespace A086290.P2208800036981242918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((A085125 (n + 1) : ℚ) / 2)).toNat

end

end A086290.P2208800036981242918

/-! ## A086290.P17520329966243026244

`A051904(A085127(n+1)/4)`
-/

namespace A086290.P17520329966243026244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A086290.P17520329966243026244

/-! ## A086290.P1334082285020517907

`A086291(n+1)-A062977(A002473(n+1))`
-/

namespace A086290.P1334082285020517907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086291 (n + 1) - A062977 (A002473 (n + 1)).toNat

end

end A086290.P1334082285020517907

/-! ## A086290.P2706829429882469941

`A051904(record[A071785(n+1)])`
-/

namespace A086290.P2706829429882469941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086290.P2706829429882469941

/-! ## A086290.P13169736395349325424

`A051904(record[A262401(n+1)])`
-/

namespace A086290.P13169736395349325424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086290.P13169736395349325424

/-!
# A086291: Maximal exponent in prime factorization of 7-smooth numbers.

The programs for A086291, there is no canonical definition to state claims against.
-/

/-! ## A086291.P16010630273409916137

`A051903(A002473(n+1))`
-/

namespace A086291.P16010630273409916137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A002473 (n + 1)).toNat

end

end A086291.P16010630273409916137

/-! ## A086291.P13747974312073319321

`A061395(∏{e}[A002473(n+1), A000040(#)])`
-/

namespace A086291.P13747974312073319321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A086291.P13747974312073319321

/-! ## A086291.P5662218754772868447

`A051903(A085125(n+1)/2)`
-/

namespace A086291.P5662218754772868447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A085125 (n + 1) : ℚ) / 2)).toNat

end

end A086291.P5662218754772868447

/-! ## A086291.P18239420170516757573

`A051903(A085127(n+1)/4)`
-/

namespace A086291.P18239420170516757573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A086291.P18239420170516757573

/-! ## A086291.P13781926056718001019

`A086290(n+1)+A062977(A002473(n+1))`
-/

namespace A086291.P13781926056718001019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086290 (n + 1) + A062977 (A002473 (n + 1)).toNat

end

end A086291.P13781926056718001019

/-! ## A086291.P6799107946032591107

`A051903(lt[n, A071785(n+1)]+1)`
-/

namespace A086291.P6799107946032591107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A086291.P6799107946032591107

/-! ## A086291.P9168207584733850187

`A051903(eq[1, ∏{p}[n+1, A254524(#+1)]]+1)`
-/

namespace A086291.P9168207584733850187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), A254524 (p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A086291.P9168207584733850187

/-! ## A086291.P17081820215519990473

`A051903(record[A118541(n)])`
-/

namespace A086291.P17081820215519990473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086291.P17081820215519990473

/-! ## A086291.P12015233601466662188

`A051903(eq[n, A118541(n)])`
-/

namespace A086291.P12015233601466662188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086291.P12015233601466662188

/-!
# A086292: Number of divisors of 7-smooth numbers.

The programs for A086292, the canonical program `A086292.P9461920715356499129` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086292 has offset 1).

The definition of A086292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086292.P9102937184677855123

`A000005(A002473(n+1))`
-/

namespace A086292.P9102937184677855123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002473 (n + 1)).toNat

end

end A086292.P9102937184677855123

namespace A086292

/-- `A000005(A002473(n+1))` -/
def P9102937184677855123.Spec : Prop :=
  ∀ n, P9102937184677855123.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P15673646214273905040

`A000005(sqrt(A352618(n+1)))`
-/

namespace A086292.P15673646214273905040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

end

end A086292.P15673646214273905040

namespace A086292

/-- `A000005(sqrt(A352618(n+1)))` -/
def P15673646214273905040.Spec : Prop :=
  ∀ n, P15673646214273905040.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P7886189608068876089

`A000005(A085127(n+1)/4)`
-/

namespace A086292.P7886189608068876089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A086292.P7886189608068876089

namespace A086292

/-- `A000005(A085127(n+1)/4)` -/
def P7886189608068876089.Spec : Prop :=
  ∀ n, P7886189608068876089.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P5743838307001519321

`A000005(A080194(n+1)/7)`
-/

namespace A086292.P5743838307001519321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A080194 (n + 1) : ℚ) / 7)).toNat

end

end A086292.P5743838307001519321

namespace A086292

/-- `A000005(A080194(n+1)/7)` -/
def P5743838307001519321.Spec : Prop :=
  ∀ n, P5743838307001519321.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P9461920715356499129

`A000005(lt[A006530(n+1), 8]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A086292

/-- `A000005(lt[A006530(n+1), 8]+1)` -/
def P9461920715356499129.Spec : Prop :=
  ∀ n, P9461920715356499129.a n = A086292 (n + 1)

theorem P9461920715356499129.correct : P9461920715356499129.Spec := by
  intro n
  simp only [A086292, Nat.add_sub_cancel]

end A086292

/-! ## A086292.P4304037588597830878

`A000005(record[A071785(n+1)])`
-/

namespace A086292.P4304037588597830878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086292.P4304037588597830878

namespace A086292

/-- `A000005(record[A071785(n+1)])` -/
def P4304037588597830878.Spec : Prop :=
  ∀ n, P4304037588597830878.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P1761647202498537406

`A000005(record[A262401(n+1)])`
-/

namespace A086292.P1761647202498537406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086292.P1761647202498537406

namespace A086292

/-- `A000005(record[A262401(n+1)])` -/
def P1761647202498537406.Spec : Prop :=
  ∀ n, P1761647202498537406.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P17369627431683733449

`A032741(lt[A006530(n+1), 8]+1)+1`
-/

namespace A086292.P17369627431683733449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 1

end

end A086292.P17369627431683733449

namespace A086292

/-- `A032741(lt[A006530(n+1), 8]+1)+1` -/
def P17369627431683733449.Spec : Prop :=
  ∀ n, P17369627431683733449.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P4300494994858055161

`A000005(lt[n-A243291(n+1), 4]+1)`
-/

namespace A086292.P4300494994858055161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086292.P4300494994858055161

namespace A086292

/-- `A000005(lt[n-A243291(n+1), 4]+1)` -/
def P4300494994858055161.Spec : Prop :=
  ∀ n, P4300494994858055161.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P7743752415999572620

`A000005(record[A118541(n)])`
-/

namespace A086292.P7743752415999572620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086292.P7743752415999572620

namespace A086292

/-- `A000005(record[A118541(n)])` -/
def P7743752415999572620.Spec : Prop :=
  ∀ n, P7743752415999572620.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P17500067232448271090

`A000005(A000720(A335331(n+1)))`
-/

namespace A086292.P17500067232448271090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000720 (A335331 (n + 1)).toNat).toNat

end

end A086292.P17500067232448271090

namespace A086292

/-- `A000005(A000720(A335331(n+1)))` -/
def P17500067232448271090.Spec : Prop :=
  ∀ n, P17500067232448271090.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P13415758676538564100

`A069157(A085125(n+1))`
-/

namespace A086292.P13415758676538564100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (A085125 (n + 1)).toNat

end

end A086292.P13415758676538564100

namespace A086292

/-- `A069157(A085125(n+1))` -/
def P13415758676538564100.Spec : Prop :=
  ∀ n, P13415758676538564100.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P3306056651851151675

`A183063(2*A002473(n+1))`
-/

namespace A086292.P3306056651851151675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A002473 (n + 1)).toNat

end

end A086292.P3306056651851151675

namespace A086292

/-- `A183063(2*A002473(n+1))` -/
def P3306056651851151675.Spec : Prop :=
  ∀ n, P3306056651851151675.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P8700279603983032010

`A183063(A002473(n+1)+A002473(n+1))`
-/

namespace A086292.P8700279603983032010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A002473 (n + 1) + A002473 (n + 1)).toNat

end

end A086292.P8700279603983032010

namespace A086292

/-- `A183063(A002473(n+1)+A002473(n+1))` -/
def P8700279603983032010.Spec : Prop :=
  ∀ n, P8700279603983032010.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P12825628165647596708

`∏{e}[A147571(n+1), #]`
-/

namespace A086292.P12825628165647596708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086292.P12825628165647596708

namespace A086292

/-- `∏{e}[A147571(n+1), #]` -/
def P12825628165647596708.Spec : Prop :=
  ∀ n, (P12825628165647596708.a n : ℤ) = A086292 (n + 1)

end A086292

/-! ## A086292.P11061328198364223153

`A112329(A085127(n+1))`
-/

namespace A086292.P11061328198364223153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A085127 (n + 1)).toNat

end

end A086292.P11061328198364223153

namespace A086292

/-- `A112329(A085127(n+1))` -/
def P11061328198364223153.Spec : Prop :=
  ∀ n, P11061328198364223153.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P3031451340478017696

`A069248(A080194(n+1))`
-/

namespace A086292.P3031451340478017696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069248 (A080194 (n + 1)).toNat

end

end A086292.P3031451340478017696

namespace A086292

/-- `A069248(A080194(n+1))` -/
def P3031451340478017696.Spec : Prop :=
  ∀ n, P3031451340478017696.a n = A086292 (n + 1)

end A086292

/-! ## A086292.P4819391713122999283

`A005361(A147571(n+1))`
-/

namespace A086292.P4819391713122999283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A147571 (n + 1)).toNat

end

end A086292.P4819391713122999283

namespace A086292

/-- `A005361(A147571(n+1))` -/
def P4819391713122999283.Spec : Prop :=
  ∀ n, P4819391713122999283.a n = A086292 (n + 1)

end A086292

/-!
# A086293: Sum of divisors of 7-smooth numbers.

The programs for A086293, there is no canonical definition to state claims against.
-/

/-! ## A086293.P17947977761551775345

`A000203(A002473(n+1))`
-/

namespace A086293.P17947977761551775345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002473 (n + 1)).toNat

end

end A086293.P17947977761551775345

/-! ## A086293.P3943336316092510068

`∑{d}[A002473(n+1), #]`
-/

namespace A086293.P3943336316092510068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086293.P3943336316092510068

/-! ## A086293.P6035683866290042482

`∑{d}[A085125(n+1)/2, #]`
-/

namespace A086293.P6035683866290042482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085125 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A086293.P6035683866290042482

/-! ## A086293.P7070844984320436622

`A000203(sqrt(A352618(n+1)))`
-/

namespace A086293.P7070844984320436622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

end

end A086293.P7070844984320436622

/-! ## A086293.P376881564557096952

`A000203(A085127(n+1)/4)`
-/

namespace A086293.P376881564557096952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A086293.P376881564557096952

/-! ## A086293.P13549257520546013706

`A000203(A085128(n+1)/5)`
-/

namespace A086293.P13549257520546013706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A085128 (n + 1) : ℚ) / 5)).toNat

end

end A086293.P13549257520546013706

/-! ## A086293.P7797500918183122923

`A000203(lt[A006530(n+1), 8]+1)`
-/

namespace A086293.P7797500918183122923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086293.P7797500918183122923

/-! ## A086293.P14564829239164652753

`∑{d}[record[A071785(n+1)], #]`
-/

namespace A086293.P14564829239164652753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A086293.P14564829239164652753

/-! ## A086293.P4336878418092310989

`A000203(record[A071785(n+1)])`
-/

namespace A086293.P4336878418092310989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086293.P4336878418092310989

/-! ## A086293.P2065186719326797877

`A000203(record[A262401(n+1)])`
-/

namespace A086293.P2065186719326797877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086293.P2065186719326797877

/-! ## A086293.P6295444096482422312

`A245092(2*A002473(n+1)-1)`
-/

namespace A086293.P6295444096482422312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * A002473 (n + 1) - 1).toNat

end

end A086293.P6295444096482422312

/-! ## A086293.P15082233650965930638

`A245092(A085127(n+1)/2-1)`
-/

namespace A086293.P15082233650965930638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A086293.P15082233650965930638

/-! ## A086293.P13869158990508954667

`A245092(A002473(n+1)+A002473(n+1)-1)`
-/

namespace A086293.P13869158990508954667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A002473 (n + 1) + (A002473 (n + 1) - 1)).toNat

end

end A086293.P13869158990508954667

/-! ## A086293.P10988261624369393021

`A000203(record[A118541(n)])`
-/

namespace A086293.P10988261624369393021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086293.P10988261624369393021

/-! ## A086293.P9759290625297010051

`A000203(A000720(A335331(n+1)))`
-/

namespace A086293.P9759290625297010051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000720 (A335331 (n + 1)).toNat).toNat

end

end A086293.P9759290625297010051

/-! ## A086293.P44248212864145486

`A326065(A085125(n+1))`
-/

namespace A086293.P44248212864145486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A085125 (n + 1)).toNat

end

end A086293.P44248212864145486

/-! ## A086293.P10373033719471838173

`A000203(A052126(A080194(n+1)))`
-/

namespace A086293.P10373033719471838173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A052126 (A080194 (n + 1)).toNat).toNat

end

end A086293.P10373033719471838173

/-! ## A086293.P11349967623354157831

`A000203(A007954(A280249(n+1)))`
-/

namespace A086293.P11349967623354157831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007954 (A280249 (n + 1)).toNat).toNat

end

end A086293.P11349967623354157831

/-!
# A086294: Sum of distinct prime factors of 7-smooth numbers.

The programs for A086294, there is no canonical definition to state claims against.
-/

/-! ## A086294.P75606829147215207

`A008472(A002473(n+1))`
-/

namespace A086294.P75606829147215207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A002473 (n + 1)).toNat

end

end A086294.P75606829147215207

/-! ## A086294.P11970013069653735683

`∑{p}[A086297(n+1), #]`
-/

namespace A086294.P11970013069653735683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086294.P11970013069653735683

/-! ## A086294.P13250556856486435751

`A001414(A086297(n+1))`
-/

namespace A086294.P13250556856486435751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A086297 (n + 1)).toNat

end

end A086294.P13250556856486435751

/-! ## A086294.P3656182704722237278

`A008472(A086297(n+1)²)`
-/

namespace A086294.P3656182704722237278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A086297 (n + 1) ^ 2).toNat

end

end A086294.P3656182704722237278

/-! ## A086294.P6530955071679342014

`∑{p}[A002473(n+1), #]`
-/

namespace A086294.P6530955071679342014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086294.P6530955071679342014

/-! ## A086294.P5495691451087299650

`∑{p}[A085127(n+1)/4, #]`
-/

namespace A086294.P5495691451087299650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A086294.P5495691451087299650

/-! ## A086294.P15696161354152992347

`∑{p}[lt[A006530(n+1), 8]+1, #]`
-/

namespace A086294.P15696161354152992347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A086294.P15696161354152992347

/-! ## A086294.P7835199400433363036

`A008472(record[A071785(n+1)])`
-/

namespace A086294.P7835199400433363036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086294.P7835199400433363036

/-! ## A086294.P2491503833079544634

`∑{d}[record[A071785(n+1)], A061397(#)]`
-/

namespace A086294.P2491503833079544634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061397 d

end

end A086294.P2491503833079544634

/-! ## A086294.P11902202023472250033

`∑{p}[record[A118541(n)], #]`
-/

namespace A086294.P11902202023472250033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086294.P11902202023472250033

/-! ## A086294.P14294391588025833068

`∑{p}[A352618(n+1), #]`
-/

namespace A086294.P14294391588025833068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086294.P14294391588025833068

/-!
# A086295: Sum of all prime factors of 7-smooth numbers.

The programs for A086295, there is no canonical definition to state claims against.
-/

/-! ## A086295.P4756954496641213736

`A001414(A002473(n+1))`
-/

namespace A086295.P4756954496641213736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A002473 (n + 1)).toNat

end

end A086295.P4756954496641213736

/-! ## A086295.P12266993077973211363

`A001414(A085127(n+1)/4)`
-/

namespace A086295.P12266993077973211363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A086295.P12266993077973211363

/-! ## A086295.P296973119319764070

`A001414(record[A071785(n+1)])`
-/

namespace A086295.P296973119319764070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086295.P296973119319764070

/-! ## A086295.P1883201843195821195

`∑{d}[A002473(n+1), A053139(A014963(#))]`
-/

namespace A086295.P1883201843195821195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A053139 (A014963 d).toNat

end

end A086295.P1883201843195821195

/-! ## A086295.P14468923232096583472

`A118503(record[A118541(n)])`
-/

namespace A086295.P14468923232096583472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086295.P14468923232096583472

/-! ## A086295.P6718762447826247534

`A001414(eq[n, A118541(n)])`
-/

namespace A086295.P6718762447826247534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086295.P6718762447826247534

/-! ## A086295.P11927712801126157237

`A118503(eq[n, A118541(n)])`
-/

namespace A086295.P11927712801126157237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086295.P11927712801126157237

/-!
# A086296: Euler's totient of 7-smooth numbers.

The programs for A086296, the canonical program `A086296.P4819654630456101032` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086296 has offset 1).

The definition of A086296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086296.P1624601058962928118

`A000010(A002473(n+1))`
-/

namespace A086296.P1624601058962928118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002473 (n + 1)).toNat

end

end A086296.P1624601058962928118

namespace A086296

/-- `A000010(A002473(n+1))` -/
def P1624601058962928118.Spec : Prop :=
  ∀ n, P1624601058962928118.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P4432302510561966590

`A000010(sqrt(A352618(n+1)))`
-/

namespace A086296.P4432302510561966590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

end

end A086296.P4432302510561966590

namespace A086296

/-- `A000010(sqrt(A352618(n+1)))` -/
def P4432302510561966590.Spec : Prop :=
  ∀ n, P4432302510561966590.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P891308117454868178

`A000010(A085127(n+1)/4)`
-/

namespace A086296.P891308117454868178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A086296.P891308117454868178

namespace A086296

/-- `A000010(A085127(n+1)/4)` -/
def P891308117454868178.Spec : Prop :=
  ∀ n, P891308117454868178.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P7720484054850178445

`A000010(A085128(n+1)/5)`
-/

namespace A086296.P7720484054850178445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A085128 (n + 1) : ℚ) / 5)).toNat

end

end A086296.P7720484054850178445

namespace A086296

/-- `A000010(A085128(n+1)/5)` -/
def P7720484054850178445.Spec : Prop :=
  ∀ n, P7720484054850178445.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P4819654630456101032

`A000010(lt[A006530(n+1), 8]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A086296

/-- `A000010(lt[A006530(n+1), 8]+1)` -/
def P4819654630456101032.Spec : Prop :=
  ∀ n, P4819654630456101032.a n = A086296 (n + 1)

theorem P4819654630456101032.correct : P4819654630456101032.Spec := by
  intro n
  simp only [A086296, Nat.add_sub_cancel]

end A086296

/-! ## A086296.P17644240120488196001

`A000010(record[A071785(n+1)])`
-/

namespace A086296.P17644240120488196001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086296.P17644240120488196001

namespace A086296

/-- `A000010(record[A071785(n+1)])` -/
def P17644240120488196001.Spec : Prop :=
  ∀ n, P17644240120488196001.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P11487005494041027744

`A000010(record[A262401(n+1)])`
-/

namespace A086296.P11487005494041027744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086296.P11487005494041027744

namespace A086296

/-- `A000010(record[A262401(n+1)])` -/
def P11487005494041027744.Spec : Prop :=
  ∀ n, P11487005494041027744.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P3840913771728688941

`A000010(lt[n, A071785(n+1)]+1)`
-/

namespace A086296.P3840913771728688941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A086296.P3840913771728688941

namespace A086296

/-- `A000010(lt[n, A071785(n+1)]+1)` -/
def P3840913771728688941.Spec : Prop :=
  ∀ n, P3840913771728688941.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P4027562650791430067

`A039649(lt[A006530(n+1), 8]+1)-1`
-/

namespace A086296.P4027562650791430067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) - 1

end

end A086296.P4027562650791430067

namespace A086296

/-- `A039649(lt[A006530(n+1), 8]+1)-1` -/
def P4027562650791430067.Spec : Prop :=
  ∀ n, P4027562650791430067.a n = A086296 (n + 1)

theorem P4027562650791430067.correct : P4027562650791430067.Spec := by
  intro n
  simp only [A086296, Nat.add_sub_cancel, A086296.P4027562650791430067.f1, A086296.P4027562650791430067.f2, A086296.P4027562650791430067.a, A086296.P4819654630456101032.f1, A086296.P4819654630456101032.f2, A086296.P4819654630456101032.a, A000010, A000010.P4673923239450215316.a, A006530, A006530.P13372528560459906635.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A086296

/-! ## A086296.P4722684979331504111

`A000010(lt[n-1-A243291(n+1), 3]+1)`
-/

namespace A086296.P4722684979331504111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - A243291 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A086296.P4722684979331504111

namespace A086296

/-- `A000010(lt[n-1-A243291(n+1), 3]+1)` -/
def P4722684979331504111.Spec : Prop :=
  ∀ n, P4722684979331504111.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P2398405132875224623

`A000010(record[A118541(n)])`
-/

namespace A086296.P2398405132875224623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A086296.P2398405132875224623

namespace A086296

/-- `A000010(record[A118541(n)])` -/
def P2398405132875224623.Spec : Prop :=
  ∀ n, P2398405132875224623.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P1037792323483946074

`A000010(A000720(A335331(n+1)))`
-/

namespace A086296.P1037792323483946074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000720 (A335331 (n + 1)).toNat).toNat

end

end A086296.P1037792323483946074

namespace A086296

/-- `A000010(A000720(A335331(n+1)))` -/
def P1037792323483946074.Spec : Prop :=
  ∀ n, P1037792323483946074.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P5573567149472891062

`A089929(A085125(n+1))`
-/

namespace A086296.P5573567149472891062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (A085125 (n + 1)).toNat

end

end A086296.P5573567149472891062

namespace A086296

/-- `A089929(A085125(n+1))` -/
def P5573567149472891062.Spec : Prop :=
  ∀ n, P5573567149472891062.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P15899354805916102074

`A000010(A052126(A080194(n+1)))`
-/

namespace A086296.P15899354805916102074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A052126 (A080194 (n + 1)).toNat).toNat

end

end A086296.P15899354805916102074

namespace A086296

/-- `A000010(A052126(A080194(n+1)))` -/
def P15899354805916102074.Spec : Prop :=
  ∀ n, P15899354805916102074.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P9334952370950280414

`A333698(A335331(n+1))`
-/

namespace A086296.P9334952370950280414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333698 (A335331 (n + 1)).toNat

end

end A086296.P9334952370950280414

namespace A086296

/-- `A333698(A335331(n+1))` -/
def P9334952370950280414.Spec : Prop :=
  ∀ n, P9334952370950280414.a n = A086296 (n + 1)

end A086296

/-! ## A086296.P14539587340078200443

`A000010(A007954(A280249(n+1)))`
-/

namespace A086296.P14539587340078200443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007954 (A280249 (n + 1)).toNat).toNat

end

end A086296.P14539587340078200443

namespace A086296

/-- `A000010(A007954(A280249(n+1)))` -/
def P14539587340078200443.Spec : Prop :=
  ∀ n, P14539587340078200443.a n = A086296 (n + 1)

end A086296

/-!
# A086297: Squarefree kernels of 7-smooth numbers.

The programs for A086297, there is no canonical definition to state claims against.
-/

/-! ## A086297.P6670421366147756525

`∏{p}[A002473(n+1), #]`
-/

namespace A086297.P6670421366147756525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086297.P6670421366147756525

/-! ## A086297.P783086549597226609

`∏{p}[sqrt(A352618(n+1)), #]`
-/

namespace A086297.P783086549597226609
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352618 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A086297.P783086549597226609

/-! ## A086297.P4999557802072886459

`∏{p}[A085127(n+1)/4, #]`
-/

namespace A086297.P4999557802072886459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A086297.P4999557802072886459

/-! ## A086297.P6231715230301581224

`A007947(A002473(n+1))`
-/

namespace A086297.P6231715230301581224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002473 (n + 1)).toNat

end

end A086297.P6231715230301581224

/-! ## A086297.P17926292603425109108

`A007947(A085127(n+1)/4)`
-/

namespace A086297.P17926292603425109108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

end

end A086297.P17926292603425109108

/-! ## A086297.P18175030235119883963

`A007947(A085128(n+1)/5)`
-/

namespace A086297.P18175030235119883963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A085128 (n + 1) : ℚ) / 5)).toNat

end

end A086297.P18175030235119883963

/-! ## A086297.P15065000435075949780

`A007947(∩[A048737(n+1), A084034(n+1)])`
-/

namespace A086297.P15065000435075949780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084034 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A086297.P15065000435075949780

/-! ## A086297.P16262513156759832292

`filter[A007947(n+1), A086299(#)]`
-/

namespace A086297.P16262513156759832292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A086297.P16262513156759832292

/-! ## A086297.P9432684757796132062

`A165743(A002473(2*n+1-n))`
-/

namespace A086297.P9432684757796132062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165743 (A002473 (2 * n + 1 - n)).toNat

end

end A086297.P9432684757796132062

/-! ## A086297.P16304713019136200875

`gcd(A002473(n+1), A068510(n+1))`
-/

namespace A086297.P16304713019136200875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002473 (n + 1)) (A068510 (n + 1))

end

end A086297.P16304713019136200875

/-! ## A086297.P3308874284200628134

`∏{p}[A352618(n+1), #]`
-/

namespace A086297.P3308874284200628134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A086297.P3308874284200628134

/-! ## A086297.P4914016257441277966

`gcd(A285615(n+1), A352618(n+1))`
-/

namespace A086297.P4914016257441277966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A285615 (n + 1)) (A352618 (n + 1))

end

end A086297.P4914016257441277966

/-!
# A086298: Numbers n such that 1-2n+3n^2 is prime.

The programs for A086298, there is no canonical definition to state claims against.
-/

/-! ## A086298.P13986570856488987020

`ceil(sqrt(A285792(n+1)/3))`
-/

namespace A086298.P13986570856488987020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A285792 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A086298.P13986570856488987020

/-! ## A086298.P8908646866464959612

`round(sqrt(A285792(ϕ²-(ϕ-n))/3))`
-/

namespace A086298.P8908646866464959612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A285792 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 3 : ℝ))

end

end A086298.P8908646866464959612

/-! ## A086298.P18068059738793901825

`round(sqrt(A285792(n+1)/3))%A158066(n+1)`
-/

namespace A086298.P18068059738793901825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A285792 (n + 1) : ℚ) / 3 : ℝ))) (A158066 (n + 1))

end

end A086298.P18068059738793901825

/-! ## A086298.P174555230908792792

`floor(A059841(2*n)+sqrt(A285792(n+1)/3))`
-/

namespace A086298.P174555230908792792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059841 (2 * n) : ℝ) + Real.sqrt ((A285792 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A086298.P174555230908792792

/-! ## A086298.P10262258539800692840

`record[A135997(A240878(n+1)+1)]`
-/

namespace A086298.P10262258539800692840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A240878 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086298.P10262258539800692840

/-! ## A086298.P2932144256466300381

`record[A135997(A242330(n+1)+1)]`
-/

namespace A086298.P2932144256466300381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A242330 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086298.P2932144256466300381

/-! ## A086298.P14640144897839722460

`record[A001057(A004523(A242330(n+1)))]`
-/

namespace A086298.P14640144897839722460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A004523 (A242330 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086298.P14640144897839722460

/-! ## A086298.P11688198861611523453

`record[A078898(A004273(A240878(n+1)))]`
-/

namespace A086298.P11688198861611523453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004273 (A240878 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086298.P11688198861611523453

/-!
# A086299: a(n) = if n is 7-smooth then 1 else 0: characteristic function of 7-smooth numbers.

The programs for A086299, the canonical program `A086299.P10915844373220348257` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086299 has offset 1).

The definition of A086299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086299.P10915844373220348257

`∏{p}[n+1, val(dr(#), #)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A086299

/-- `∏{p}[n+1, val(dr(#), #)]` -/
def P10915844373220348257.Spec : Prop :=
  ∀ n, (P10915844373220348257.a n : ℤ) = A086299 (n + 1)

theorem P10915844373220348257.correct : P10915844373220348257.Spec := by
  intro n
  simp only [A086299, Nat.add_sub_cancel]

end A086299

/-! ## A086299.P11682900202431957656

`∏{p}[n+1, C(dr(#), #)]`
-/

namespace A086299.P11682900202431957656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (SequenceMachineLib.digitalRoot (p : ℤ)) p

end

end A086299.P11682900202431957656

namespace A086299

/-- `∏{p}[n+1, C(dr(#), #)]` -/
def P11682900202431957656.Spec : Prop :=
  ∀ n, (P11682900202431957656.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P10964184266863796164

`∏{p}[n+1, C(7, #)%2]`
-/

namespace A086299.P10964184266863796164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 7 p % 2

end

end A086299.P10964184266863796164

namespace A086299

/-- `∏{p}[n+1, C(7, #)%2]` -/
def P10964184266863796164.Spec : Prop :=
  ∀ n, (P10964184266863796164.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P10371195050223053280

`∏{p}[n+1, val(#%8, #)]`
-/

namespace A086299.P10371195050223053280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p % 8) p

end

end A086299.P10371195050223053280

namespace A086299

/-- `∏{p}[n+1, val(#%8, #)]` -/
def P10371195050223053280.Spec : Prop :=
  ∀ n, (P10371195050223053280.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P5767289061002267438

`∏{p}[n+1, round(4/(#+1))]`
-/

namespace A086299.P5767289061002267438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (4 / (p + 1 : ℚ))

end

end A086299.P5767289061002267438

namespace A086299

/-- `∏{p}[n+1, round(4/(#+1))]` -/
def P5767289061002267438.Spec : Prop :=
  ∀ n, P5767289061002267438.a n = A086299 (n + 1)

end A086299

/-! ## A086299.P10150047247770588571

`char[A002473(n+1)-1]`
-/

namespace A086299.P10150047247770588571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086299.P10150047247770588571

namespace A086299

/-- `char[A002473(n+1)-1]` -/
def P10150047247770588571.Spec : Prop :=
  ∀ n, (P10150047247770588571.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P7905629653954770814

`char[A343160(n+1)-1]`
-/

namespace A086299.P7905629653954770814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343160 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086299.P7905629653954770814

namespace A086299

/-- `char[A343160(n+1)-1]` -/
def P7905629653954770814.Spec : Prop :=
  ∀ n, (P7905629653954770814.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P4674694958671864134

`char[lt[A006530(n+1), 8]]`
-/

namespace A086299.P4674694958671864134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A086299.P4674694958671864134

namespace A086299

/-- `char[lt[A006530(n+1), 8]]` -/
def P4674694958671864134.Spec : Prop :=
  ∀ n, (P4674694958671864134.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P14450482110000553279

`char[lt[n, A068189(n+1)]]`
-/

namespace A086299.P14450482110000553279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068189 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A086299.P14450482110000553279

namespace A086299

/-- `char[lt[n, A068189(n+1)]]` -/
def P14450482110000553279.Spec : Prop :=
  ∀ n, (P14450482110000553279.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P8068622688034746849

`val(A006530(7*(n+1)), 7)`
-/

namespace A086299.P8068622688034746849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (7 * (n + 1))).toNat 7

end

end A086299.P8068622688034746849

namespace A086299

/-- `val(A006530(7*(n+1)), 7)` -/
def P8068622688034746849.Spec : Prop :=
  ∀ n, (P8068622688034746849.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P16728663208986618885

`C(A071785(n+1), n+1)`
-/

namespace A086299.P16728663208986618885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071785 (n + 1)).toNat (n + 1)

end

end A086299.P16728663208986618885

namespace A086299

/-- `C(A071785(n+1), n+1)` -/
def P16728663208986618885.Spec : Prop :=
  ∀ n, (P16728663208986618885.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P13920061219231115981

`C(n+1, A085908(n+1))`
-/

namespace A086299.P13920061219231115981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A085908 (n + 1)).toNat

end

end A086299.P13920061219231115981

namespace A086299

/-- `C(n+1, A085908(n+1))` -/
def P13920061219231115981.Spec : Prop :=
  ∀ n, (P13920061219231115981.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P6121679698163029102

`C(A262401(n+1), n+1)`
-/

namespace A086299.P6121679698163029102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A262401 (n + 1)).toNat (n + 1)

end

end A086299.P6121679698163029102

namespace A086299

/-- `C(A262401(n+1), n+1)` -/
def P6121679698163029102.Spec : Prop :=
  ∀ n, (P6121679698163029102.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P8262887328915354572

`C(A392597(n+1), n+1)`
-/

namespace A086299.P8262887328915354572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A392597 (n + 1)).toNat (n + 1)

end

end A086299.P8262887328915354572

namespace A086299

/-- `C(A392597(n+1), n+1)` -/
def P8262887328915354572.Spec : Prop :=
  ∀ n, (P8262887328915354572.a n : ℤ) = A086299 (n + 1)

end A086299

/-! ## A086299.P3181214062739947375

`round(4/A006530(3*(n+1)))`
-/

namespace A086299.P3181214062739947375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / (A006530 (3 * (n + 1)) : ℚ))

end

end A086299.P3181214062739947375

namespace A086299

/-- `round(4/A006530(3*(n+1)))` -/
def P3181214062739947375.Spec : Prop :=
  ∀ n, P3181214062739947375.a n = A086299 (n + 1)

end A086299

/-! ## A086299.P3920718818170372854

`floor(7/A006530(5*(n+1)))`
-/

namespace A086299.P3920718818170372854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 / (A006530 (5 * (n + 1)) : ℚ)⌋

end

end A086299.P3920718818170372854

namespace A086299

/-- `floor(7/A006530(5*(n+1)))` -/
def P3920718818170372854.Spec : Prop :=
  ∀ n, P3920718818170372854.a n = A086299 (n + 1)

end A086299

/-! ## A086299.P6717284488083230220

`A065333(A102440(n+1))`
-/

namespace A086299.P6717284488083230220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (A102440 (n + 1)).toNat

end

end A086299.P6717284488083230220

namespace A086299

/-- `A065333(A102440(n+1))` -/
def P6717284488083230220.Spec : Prop :=
  ∀ n, P6717284488083230220.a n = A086299 (n + 1)

end A086299

/-! ## A086299.P3406258708038631868

`A188641(A006530(n+1))`
-/

namespace A086299.P3406258708038631868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A006530 (n + 1)).toNat

end

end A086299.P3406258708038631868

namespace A086299

/-- `A188641(A006530(n+1))` -/
def P3406258708038631868.Spec : Prop :=
  ∀ n, P3406258708038631868.a n = A086299 (n + 1)

end A086299

/-! ## A086299.P18193499850321257916

`A016168(A334202(n+1)²)`
-/

namespace A086299.P18193499850321257916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 (A334202 (n + 1) ^ 2).toNat

end

end A086299.P18193499850321257916

namespace A086299

/-- `A016168(A334202(n+1)²)` -/
def P18193499850321257916.Spec : Prop :=
  ∀ n, P18193499850321257916.a n = A086299 (n + 1)

end A086299

/-! ## A086299.P13814090763882927403

`A067734(A006530(2*(n+1)))`
-/

namespace A086299.P13814090763882927403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (A006530 (2 * (n + 1))).toNat

end

end A086299.P13814090763882927403

namespace A086299

/-- `A067734(A006530(2*(n+1)))` -/
def P13814090763882927403.Spec : Prop :=
  ∀ n, P13814090763882927403.a n = A086299 (n + 1)

end A086299

