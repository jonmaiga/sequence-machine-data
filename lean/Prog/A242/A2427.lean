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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A242700: Number of partitions of n with difference 9 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242700, there is no canonical definition to state claims against.
-/

/-! ## A242700.P13211477503199893869

`A000041(n)-A185255(round(n²/12))`
-/

namespace A242700.P13211477503199893869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A185255 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)).toNat

end

end A242700.P13211477503199893869

/-! ## A242700.P4895855392029929018

`A000041(n)-A010894(A332577(n))`
-/

namespace A242700.P4895855392029929018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A010894 ((A332577 n).toNat + 21)

end

end A242700.P4895855392029929018

/-! ## A242700.P17835768248229784431

`A000041(n)-A010894(A028260(n+1))`
-/

namespace A242700.P17835768248229784431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A010894 ((A028260 (n + 1)).toNat + 21)

end

end A242700.P17835768248229784431

/-! ## A242700.P4384146994202562042

`A000041(n)-A083910(A029518(n+1))`
-/

namespace A242700.P4384146994202562042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A083910 (A029518 (n + 1)).toNat

end

end A242700.P4384146994202562042

/-! ## A242700.P11890725531007483599

`A000041(n)-A326152(A098854(n+1))`
-/

namespace A242700.P11890725531007483599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A326152 (A098854 (n + 1)).toNat

end

end A242700.P11890725531007483599

/-!
# A242701: Number of partitions of n with difference 10 between the number of odd parts and the number of even parts, both counted without multiplicity.

The programs for A242701, there is no canonical definition to state claims against.
-/

/-! ## A242701.P12638753515370683663

`A000041(n)-A054899(A165878(n))`
-/

namespace A242701.P12638753515370683663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A054899 (A165878 n).toNat

end

end A242701.P12638753515370683663

/-! ## A242701.P14893000474709973356

`A000041(n)-A167688(A061418(n+1))`
-/

namespace A242701.P14893000474709973356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A167688 (A061418 (n + 1)).toNat

end

end A242701.P14893000474709973356

/-! ## A242701.P10741092946224747909

`A092885(n)-A167688(A061418(n+1))`
-/

namespace A242701.P10741092946224747909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092885 n - A167688 (A061418 (n + 1)).toNat

end

end A242701.P10741092946224747909

/-! ## A242701.P2709401812148550841

`A000041(n)-A355432(A367994(n+1))`
-/

namespace A242701.P2709401812148550841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A355432 (A367994 (n + 1)).toNat

end

end A242701.P2709401812148550841

/-! ## A242701.P9843177587591409504

`∑[A002865(n)-A167688(A061418(n+1))]`
-/

namespace A242701.P9843177587591409504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A167688 (A061418 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242701.P9843177587591409504

/-!
# A242702: Semiprimes n such that n^2+n+41 is also semiprime.

The programs for A242702, there is no canonical definition to state claims against.
-/

/-! ## A242702.P2963372677521792214

`∩[A001358(n+1), A268513(n+1)]`
-/

namespace A242702.P2963372677521792214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242702.P2963372677521792214

/-! ## A242702.P1456764764947088934

`filter[A268513(n+2), A064911(#)]`
-/

namespace A242702.P1456764764947088934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242702.P1456764764947088934

/-! ## A242702.P8519243678189745023

`∩[A176540(n+1), A268513(n+1)]`
-/

namespace A242702.P8519243678189745023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242702.P8519243678189745023

/-! ## A242702.P2459716869589179150

`∩[A268513(n+1), A323644(n+1)]`
-/

namespace A242702.P2459716869589179150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242702.P2459716869589179150

/-! ## A242702.P5546748152086373182

`∩[A085155(n+1), A268513(n+1)]`
-/

namespace A242702.P5546748152086373182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242702.P5546748152086373182

/-!
# A242705: Lexicographically earliest sequence of distinct positive integers such that for any n>0 the number of ones in the binary representation of n divides a(n).

The programs for A242705, there is no canonical definition to state claims against.
-/

/-! ## A242705.P4633871800366142507

`A242704(A217122(n+1)%A144851(n+1))`
-/

namespace A242705.P4633871800366142507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242704 (Int.tmod (A217122 (n + 1)) (A144851 (n + 1))).toNat

end

end A242705.P4633871800366142507

/-! ## A242705.P17029452410863625190

`A242704(A217122(n+1))%A242650(n+1)`
-/

namespace A242705.P17029452410863625190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242704 (A217122 (n + 1)).toNat) (A242650 (n + 1))

end

end A242705.P17029452410863625190

/-!
# A242706: Inverse permutation to A242705.

The programs for A242706, there is no canonical definition to state claims against.
-/

/-! ## A242706.P6349796682527136914

`A156552(A120242(n+1))+A057427(A000292(3*n+4))`
-/

namespace A242706.P6349796682527136914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A120242 (n + 1)).toNat + A057427 (A000292 (3 * n + 4)).toNat

end

end A242706.P6349796682527136914

/-! ## A242706.P8076937893237160688

`A293447(n+1)+A195583(A357883(2*(n+2)))`
-/

namespace A242706.P8076937893237160688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293447 (n + 1) + A195583 (A357883 (2 * (n + 2))).toNat

end

end A242706.P8076937893237160688

/-! ## A242706.P14022966217770696823

`A075160(A243288(n+1)%A327431(3*n+2))`
-/

namespace A242706.P14022966217770696823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075160 (Int.tmod (A243288 (n + 1)) (A327431 (3 * n + 2))).toNat

end

end A242706.P14022966217770696823

/-!
# A242709: Nonequivalent ways to place two different markers (e.g., a pair of Go stones, black and white) on an n X n grid.

The programs for A242709, the canonical program `A242709.P17224774541460545915` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242709 has offset 1).

The definition of A242709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242709.P17224774541460545915

`(n+1)*((n+1)^3+(n+1)*3^((n+1)%2)-2*2^((n+1)%2))/8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242709

/-- `(n+1)*((n+1)^3+(n+1)*3^((n+1)%2)-2*2^((n+1)%2))/8` -/
def P17224774541460545915.Spec : Prop :=
  ∀ n, P17224774541460545915.a n = (A242709 (n + 1) : ℚ)

end A242709

/-! ## A242709.P12820374667203584303

`∑[n²*∑[char[2*n]]+n]`
-/

namespace A242709.P12820374667203584303
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242709.P12820374667203584303

namespace A242709

/-- `∑[n²*∑[char[2*n]]+n]` -/
def P12820374667203584303.Spec : Prop :=
  ∀ n, (P12820374667203584303.a n : ℤ) = A242709 (n + 1)

end A242709

/-! ## A242709.P9346738360422744419

`∑[n²*A008619(n)]+∑[n]`
-/

namespace A242709.P9346738360422744419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A008619 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A242709.P9346738360422744419

namespace A242709

/-- `∑[n²*A008619(n)]+∑[n]` -/
def P9346738360422744419.Spec : Prop :=
  ∀ n, P9346738360422744419.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P13055285291014007201

`C(∑[n+1], 2)-∑[A129194(n)]`
-/

namespace A242709.P13055285291014007201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A242709.P13055285291014007201

namespace A242709

/-- `C(∑[n+1], 2)-∑[A129194(n)]` -/
def P13055285291014007201.Spec : Prop :=
  ∀ n, P13055285291014007201.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P5398905190626171161

`A050534(n)+∑[n]*comp[3*n]`
-/

namespace A242709.P5398905190626171161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + (((∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ)

end

end A242709.P5398905190626171161

namespace A242709

/-- `A050534(n)+∑[n]*comp[3*n]` -/
def P5398905190626171161.Spec : Prop :=
  ∀ n, P5398905190626171161.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P286851862937948215

`n*A246695(n)-A002817(n)`
-/

namespace A242709.P286851862937948215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A246695 n - A002817 n

end

end A242709.P286851862937948215

namespace A242709

/-- `n*A246695(n)-A002817(n)` -/
def P286851862937948215.Spec : Prop :=
  ∀ n, P286851862937948215.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P17785987847403023898

`∑[n/2]*A236453(n+1)`
-/

namespace A242709.P17785987847403023898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A236453 (n + 1) : ℚ)

end

end A242709.P17785987847403023898

namespace A242709

/-- `∑[n/2]*A236453(n+1)` -/
def P17785987847403023898.Spec : Prop :=
  ∀ n, P17785987847403023898.a n = (A242709 (n + 1) : ℚ)

end A242709

/-! ## A242709.P8633200539091743776

`∑[A027480(n)]-Δ[A030179(n)]`
-/

namespace A242709.P8633200539091743776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A242709.P8633200539091743776

namespace A242709

/-- `∑[A027480(n)]-Δ[A030179(n)]` -/
def P8633200539091743776.Spec : Prop :=
  ∀ n, P8633200539091743776.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P14882717440735785741

`A236453(n+1)/A000124(n)*A002817(n)`
-/

namespace A242709.P14882717440735785741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236453 (n + 1) : ℚ) / (A000124 n : ℚ) * (A002817 n : ℚ)

end

end A242709.P14882717440735785741

namespace A242709

/-- `A236453(n+1)/A000124(n)*A002817(n)` -/
def P14882717440735785741.Spec : Prop :=
  ∀ n, P14882717440735785741.a n = (A242709 (n + 1) : ℚ)

end A242709

/-! ## A242709.P16039717398866329119

`A000217(A000217(n))+A000217(n)*A008619(n)`
-/

namespace A242709.P16039717398866329119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat + A000217 n * A008619 n

end

end A242709.P16039717398866329119

namespace A242709

/-- `A000217(A000217(n))+A000217(n)*A008619(n)` -/
def P16039717398866329119.Spec : Prop :=
  ∀ n, P16039717398866329119.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P7799754770706851378

`A000217(∑[or(1, n)])-A008805(n)`
-/

namespace A242709.P7799754770706851378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j) - A008805 n

end

end A242709.P7799754770706851378

namespace A242709

/-- `A000217(∑[or(1, n)])-A008805(n)` -/
def P7799754770706851378.Spec : Prop :=
  ∀ n, P7799754770706851378.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P13925146038982603816

`A001318(n)+A000217(∑[or(1, n)]-1)`
-/

namespace A242709.P13925146038982603816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + A000217 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A242709.P13925146038982603816

namespace A242709

/-- `A001318(n)+A000217(∑[or(1, n)]-1)` -/
def P13925146038982603816.Spec : Prop :=
  ∀ n, P13925146038982603816.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P1534380617404277050

`A000217(∑[and(n, -2)+1])-A008805(n)`
-/

namespace A242709.P1534380617404277050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A008805 n

end

end A242709.P1534380617404277050

namespace A242709

/-- `A000217(∑[and(n, -2)+1])-A008805(n)` -/
def P1534380617404277050.Spec : Prop :=
  ∀ n, P1534380617404277050.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P446708630337351199

`A000217(A000982(n+1))-A008805(n)`
-/

namespace A242709.P446708630337351199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000982 (n + 1)).toNat - A008805 n

end

end A242709.P446708630337351199

namespace A242709

/-- `A000217(A000982(n+1))-A008805(n)` -/
def P446708630337351199.Spec : Prop :=
  ∀ n, P446708630337351199.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P9299585631811200092

`A000096(A000217(n))+A000217(n)*A004526(n)`
-/

namespace A242709.P9299585631811200092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A000217 n).toNat + A000217 n * A004526 n

end

end A242709.P9299585631811200092

namespace A242709

/-- `A000096(A000217(n))+A000217(n)*A004526(n)` -/
def P9299585631811200092.Spec : Prop :=
  ∀ n, P9299585631811200092.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P9581515349027463870

`A008805(n*(n+2))-A008805(n)`
-/

namespace A242709.P9581515349027463870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n * (n + 2)) - A008805 n

end

end A242709.P9581515349027463870

namespace A242709

/-- `A008805(n*(n+2))-A008805(n)` -/
def P9581515349027463870.Spec : Prop :=
  ∀ n, P9581515349027463870.a n = A242709 (n + 1)

end A242709

/-! ## A242709.P5477576944453215149

`A134519((n+1)²)-A134519(n+1)`
-/

namespace A242709.P5477576944453215149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 ((n + 1) ^ 2) - A134519 (n + 1)

end

end A242709.P5477576944453215149

namespace A242709

/-- `A134519((n+1)²)-A134519(n+1)` -/
def P5477576944453215149.Spec : Prop :=
  ∀ n, P5477576944453215149.a n = A242709 (n + 1)

end A242709

/-!
# A242715: Prime divisors of 2^3510-1, listed with multiplicities.

The programs for A242715, there is no canonical definition to state claims against.
-/

/-! ## A242715.P6246262969169832924

`A194470(A275071(n+1))`
-/

namespace A242715.P6246262969169832924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194470 (A275071 (n + 1)).toNat

end

end A242715.P6246262969169832924

/-! ## A242715.P15616150690215350304

`A078133(A046682(n)+A002988(n))`
-/

namespace A242715.P15616150690215350304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078133 (A046682 n + A002988 n).toNat

end

end A242715.P15616150690215350304

/-! ## A242715.P13013231567710177355

`A209085(A110880(n)+A000322(n))`
-/

namespace A242715.P13013231567710177355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209085 (A110880 n + A000322 n).toNat

end

end A242715.P13013231567710177355

/-! ## A242715.P14868209140994948877

`A091228(A091222(n+4)+A073431(n))`
-/

namespace A242715.P14868209140994948877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091228 (A091222 (n + 4) + A073431 n).toNat

end

end A242715.P14868209140994948877

/-!
# A242717: The number of ways that a score of n can be obtained using four darts on a standard dartboard.

The programs for A242717, there is no canonical definition to state claims against.
-/

/-! ## A242717.P15916309426423415735

`∑[A266755(n)-A185284(A340278(n+1))]`
-/

namespace A242717.P15916309426423415735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A185284 (A340278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242717.P15916309426423415735

/-! ## A242717.P15040164347172078139

`A001400(n)-A069283(A058343(n))`
-/

namespace A242717.P15040164347172078139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A069283 (A058343 n).toNat

end

end A242717.P15040164347172078139

/-! ## A242717.P15845624376136377298

`A001400(n)-A179801(A082046(n))`
-/

namespace A242717.P15845624376136377298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A179801 (A082046 n).toNat

end

end A242717.P15845624376136377298

/-! ## A242717.P4498989451196722798

`A001400(n)-A059995(A098069(n+1))`
-/

namespace A242717.P4498989451196722798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A059995 (A098069 (n + 1)).toNat

end

end A242717.P4498989451196722798

/-! ## A242717.P10015445879527027508

`A001400(n)-A087991(A105681(n+1))`
-/

namespace A242717.P10015445879527027508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A087991 (A105681 (n + 1)).toNat

end

end A242717.P10015445879527027508

/-!
# A242718: The number of ways that a score of n can be obtained using one dart on a standard dartboard.

The programs for A242718, there is no canonical definition to state claims against.
-/

/-! ## A242718.P13127337229892932868

`A033755(3*n)^A326688(A086956(n+1))`
-/

namespace A242718.P13127337229892932868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033755 (3 * n) : ℚ) ^ (A326688 (A086956 (n + 1)).toNat : ℤ)

end

end A242718.P13127337229892932868

/-! ## A242718.P13542167779104064755

`A011558(A070099(n+1)!)`
-/

namespace A242718.P13542167779104064755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (Nat.factorial (A070099 (n + 1)).toNat)

end

end A242718.P13542167779104064755

/-! ## A242718.P1900179416815638800

`A079944(or(205, A122111(n+1)))`
-/

namespace A242718.P1900179416815638800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (Int.lor 205 (A122111 (n + 1))).toNat

end

end A242718.P1900179416815638800

/-! ## A242718.P484769319650315921

`C(A304737(n+4), A326249(A055240(n+1)))`
-/

namespace A242718.P484769319650315921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A304737 (n + 4)).toNat (A326249 (A055240 (n + 1)).toNat).toNat

end

end A242718.P484769319650315921

/-! ## A242718.P14338337173045745297

`A114640(A032741(A000041(A114640(A367580(n+1)))))`
-/

namespace A242718.P14338337173045745297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 (A032741 (A000041 (A114640 (A367580 (n + 1)).toNat).toNat).toNat).toNat

end

end A242718.P14338337173045745297

/-!
# A242719: Smallest even k such that lpf(k-3) > lpf(k-1) >= prime(n), where lpf=least prime factor (A020639).

The programs for A242719, there is no canonical definition to state claims against.
-/

/-! ## A242719.P4680114700668224323

`A135974(A000040(A112275(n+1))²)`
-/

namespace A242719.P4680114700668224323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135974 (A000040 (A112275 (n + 1)).toNat ^ 2).toNat

end

end A242719.P4680114700668224323

/-! ## A242719.P6800093365159793709

`A001157(A152075(n+1)%A217058(n+4))`
-/

namespace A242719.P6800093365159793709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (Int.tmod (A152075 (n + 1)) (A217058 (n + 4))).toNat

end

end A242719.P6800093365159793709

/-!
# A242720: Smallest even k such that the pair {k-3,k-1} is not a twin prime pair and lpf(k-1) > lpf(k-3) >= prime(n), where lpf = least prime factor (A020639).

The programs for A242720, there is no canonical definition to state claims against.
-/

/-! ## A242720.P7919119774459616186

`A020639(xor(-2, -10^(n+1)))*A173980(n+2)`
-/

namespace A242720.P7919119774459616186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor (-2) (-(10 ^ (n + 1) : ℤ))).toNat * A173980 (n + 2)

end

end A242720.P7919119774459616186

/-!
# A242725: Sequence with all (x, y) = (a(2m), a(2m+-1)) satisfying x|y^2+y+1 and y|x^2+1.

The programs for A242725, the canonical program `A242725.P18321730813122203618` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242725 has offset 0).

The definition of A242725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242725.P18321730813122203618

`4*a(n-1)-4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242725

/-- `4*a(n-1)-4*a(n-3)+a(n-4)` -/
def P18321730813122203618.Spec : Prop :=
  ∀ n, P18321730813122203618.a n = A242725 n

theorem P18321730813122203618.correct : P18321730813122203618.Spec := by
  intro n
  simp only [A242725]

end A242725

/-! ## A242725.P16693395098853962804

`(3+(-1)^n+(4+sqrt(3))*(2-sqrt(3))^n+(4-sqrt(3))*(2+sqrt(3))^n)/12`
-/

namespace A242725.P16693395098853962804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + (-1) ^ n : ℝ) + (4 + Real.sqrt (3 : ℝ)) * (2 - Real.sqrt (3 : ℝ)) ^ n + (4 - Real.sqrt (3 : ℝ)) * (2 + Real.sqrt (3 : ℝ)) ^ n) / 12

end

end A242725.P16693395098853962804

namespace A242725

/-- `(3+(-1)^n+(4+sqrt(3))*(2-sqrt(3))^n+(4-sqrt(3))*(2+sqrt(3))^n)/12` -/
def P16693395098853962804.Spec : Prop :=
  ∀ n, P16693395098853962804.a n = (A242725 n : ℝ)

theorem P16693395098853962804.correct : P16693395098853962804.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A242725, Nat.add_sub_cancel, A242725.P16693395098853962804.a, A242725.P18321730813122203618.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A242725, Nat.add_sub_cancel, A242725.P16693395098853962804.a, A242725.P18321730813122203618.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A242725

/-! ## A242725.P1760831194728852393

`ogf((1-3x-x^2+2x^3)/(1-4x+4x^3-x^4))`
-/

namespace A242725.P1760831194728852393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1, 2] [1, -4, 0, 4, -1] n

end

end A242725.P1760831194728852393

namespace A242725

/-- `ogf((1-3x-x^2+2x^3)/(1-4x+4x^3-x^4))` -/
def P1760831194728852393.Spec : Prop :=
  ∀ n, P1760831194728852393.a n = A242725 n

end A242725

/-! ## A242725.P11859989866665342834

`4*a(n-1)-(a(n-2)+n%2)` with `a(0)=1, a(1)=1`
-/

namespace A242725.P11859989866665342834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - (a (n - 2) + ((n % 2 : ℕ) : ℤ))

end

end A242725.P11859989866665342834

namespace A242725

/-- `4*a(n-1)-(a(n-2)+n%2)` -/
def P11859989866665342834.Spec : Prop :=
  ∀ n, P11859989866665342834.a n = A242725 n

end A242725

/-! ## A242725.P17350704347707420088

`4*a(n-1)-(a(n-2)+and(1, n))` with `a(0)=1, a(1)=1`
-/

namespace A242725.P17350704347707420088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - (a (n - 2) + (Nat.land 1 n : ℤ))

end

end A242725.P17350704347707420088

namespace A242725

/-- `4*a(n-1)-(a(n-2)+and(1, n))` -/
def P17350704347707420088.Spec : Prop :=
  ∀ n, P17350704347707420088.a n = A242725 n

end A242725

/-! ## A242725.P8689905439075099463

`4*a(n-1)-and(1, n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A242725.P8689905439075099463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - (Nat.land 1 n : ℤ) - a (n - 2)

end

end A242725.P8689905439075099463

namespace A242725

/-- `4*a(n-1)-and(1, n)-a(n-2)` -/
def P8689905439075099463.Spec : Prop :=
  ∀ n, P8689905439075099463.a n = A242725 n

end A242725

/-! ## A242725.P114756916286665016

`A077234(n-2)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A242725.P114756916286665016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A077234 (n - 2) + a (n - 2)

end

end A242725.P114756916286665016

namespace A242725

/-- `A077234(n-2)+a(n-2)` -/
def P114756916286665016.Spec : Prop :=
  ∀ n, P114756916286665016.a n = A242725 n

end A242725

/-! ## A242725.P4129501071848536676

`A242728(n)+A106707(n)`
-/

namespace A242725.P4129501071848536676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 n + A106707 n

end

end A242725.P4129501071848536676

namespace A242725

/-- `A242728(n)+A106707(n)` -/
def P4129501071848536676.Spec : Prop :=
  ∀ n, P4129501071848536676.a n = A242725 n

end A242725

/-! ## A242725.P12411343301899974722

`A121401(n)-A112832(n)`
-/

namespace A242725.P12411343301899974722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121401 n - A112832 n

end

end A242725.P12411343301899974722

namespace A242725

/-- `A121401(n)-A112832(n)` -/
def P12411343301899974722.Spec : Prop :=
  ∀ n, P12411343301899974722.a n = A242725 n

end A242725

/-! ## A242725.P7137414597343561837

`A242728(n)-A001353(n)`
-/

namespace A242725.P7137414597343561837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 n - A001353 n

end

end A242725.P7137414597343561837

namespace A242725

/-- `A242728(n)-A001353(n)` -/
def P7137414597343561837.Spec : Prop :=
  ∀ n, P7137414597343561837.a n = A242725 n

end A242725

/-! ## A242725.P12313448344886445662

`A001075(n)-∑[A109437(n)]`
-/

namespace A242725.P12313448344886445662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242725.P12313448344886445662

namespace A242725

/-- `A001075(n)-∑[A109437(n)]` -/
def P12313448344886445662.Spec : Prop :=
  ∀ n, P12313448344886445662.a n = A242725 n

end A242725

/-! ## A242725.P15700657644281612702

`A242728(n)+1-A072110(n)`
-/

namespace A242725.P15700657644281612702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 n + (1 - A072110 n)

end

end A242725.P15700657644281612702

namespace A242725

/-- `A242728(n)+1-A072110(n)` -/
def P15700657644281612702.Spec : Prop :=
  ∀ n, P15700657644281612702.a n = A242725 n

end A242725

/-! ## A242725.P12179277113635409857

`A092184(n)+1-∑[A109437(n)]`
-/

namespace A242725.P12179277113635409857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242725.P12179277113635409857

namespace A242725

/-- `A092184(n)+1-∑[A109437(n)]` -/
def P12179277113635409857.Spec : Prop :=
  ∀ n, P12179277113635409857.a n = A242725 n

end A242725

/-! ## A242725.P9221787200675365496

`A242728(n)+1-∑[A001835(n)]`
-/

namespace A242725.P9221787200675365496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242725.P9221787200675365496

namespace A242725

/-- `A242728(n)+1-∑[A001835(n)]` -/
def P9221787200675365496.Spec : Prop :=
  ∀ n, P9221787200675365496.a n = A242725 n

end A242725

/-! ## A242725.P6926731191480089948

`A002531(2*n)-∑[A109437(n)]`
-/

namespace A242725.P6926731191480089948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242725.P6926731191480089948

namespace A242725

/-- `A002531(2*n)-∑[A109437(n)]` -/
def P6926731191480089948.Spec : Prop :=
  ∀ n, P6926731191480089948.a n = A242725 n

end A242725

/-! ## A242725.P16364758088981113266

`A259592(A004277(n)-1)-∑[A109437(n)]`
-/

namespace A242725.P16364758088981113266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (A004277 n - 1).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242725.P16364758088981113266

namespace A242725

/-- `A259592(A004277(n)-1)-∑[A109437(n)]` -/
def P16364758088981113266.Spec : Prop :=
  ∀ n, P16364758088981113266.a n = A242725 n

end A242725

/-! ## A242725.P13914195999150951937

`A001353(n)+A001835(n)-∑[A109437(n)]`
-/

namespace A242725.P13914195999150951937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + (A001835 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242725.P13914195999150951937

namespace A242725

/-- `A001353(n)+A001835(n)-∑[A109437(n)]` -/
def P13914195999150951937.Spec : Prop :=
  ∀ n, P13914195999150951937.a n = A242725 n

end A242725

/-! ## A242725.P5756819414480187612

`A242728(n)-(A000007(n)-1)*A106707(n)`
-/

namespace A242725.P5756819414480187612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242728 n - (A000007 n - 1) * A106707 n

end

end A242725.P5756819414480187612

namespace A242725

/-- `A242728(n)-(A000007(n)-1)*A106707(n)` -/
def P5756819414480187612.Spec : Prop :=
  ∀ n, P5756819414480187612.a n = A242725 n

end A242725

/-!
# A242727: Sum of the third largest parts of the partitions of 4n into 4 parts.

The programs for A242727, there is no canonical definition to state claims against.
-/

/-! ## A242727.P12975292962126562480

`A238328(n+1)-A239667(n+1)-A241084(n+1)-A238702(n+1)`
-/

namespace A242727.P12975292962126562480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238328 (n + 1) - A239667 (n + 1) - A241084 (n + 1) - A238702 (n + 1)

end

end A242727.P12975292962126562480

/-! ## A242727.P7523113632034836873

`A243011(n+1)-(A241084(n+1)+A239667(n+1))`
-/

namespace A242727.P7523113632034836873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243011 (n + 1) - (A241084 (n + 1) + A239667 (n + 1))

end

end A242727.P7523113632034836873

/-! ## A242727.P12200675600783424025

`∑[A239195(n+1)+A026810(A008586(n))]`
-/

namespace A242727.P12200675600783424025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + A026810 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242727.P12200675600783424025

/-! ## A242727.P1592692760875895638

`∑[A307872(A008574(n))+A238340(n+1)]`
-/

namespace A242727.P1592692760875895638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (A008574 n).toNat + A238340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242727.P1592692760875895638

/-! ## A242727.P3282604727244239503

`∑[A239195(n+1)+A059290(A008574(n))]`
-/

namespace A242727.P3282604727244239503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239195 (n + 1) + A059290 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242727.P3282604727244239503

/-! ## A242727.P6464261753166151479

`A308758(4*(n+1))`
-/

namespace A242727.P6464261753166151479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308758 (4 * (n + 1))

end

end A242727.P6464261753166151479

/-!
# A242728: Sequence a(n) with all (x,y)=(a(2m),a(2m+-1)) satisfying y|x^2+1 and x|y^2+y+1.

The programs for A242728, the canonical program `A242728.P12767161275133194092` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242728 has offset 0).

The definition of A242728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242728.P12767161275133194092

`4*a(n-1)-4*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=25`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242728

/-- `4*a(n-1)-4*a(n-3)+a(n-4)` -/
def P12767161275133194092.Spec : Prop :=
  ∀ n, P12767161275133194092.a n = A242728 n

theorem P12767161275133194092.correct : P12767161275133194092.Spec := by
  intro n
  simp only [A242728]

end A242728

/-! ## A242728.P11161151504299429101

`ogf((1-2x-x^2+x^3)/(1-4x+4x^3-x^4))`
-/

namespace A242728.P11161151504299429101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1, 1] [1, -4, 0, 4, -1] n

end

end A242728.P11161151504299429101

namespace A242728

/-- `ogf((1-2x-x^2+x^3)/(1-4x+4x^3-x^4))` -/
def P11161151504299429101.Spec : Prop :=
  ∀ n, P11161151504299429101.a n = A242728 n

end A242728

/-! ## A242728.P11148883778690455262

`floor((sqrt(3)+2)*a(n-1))-n%2` with `a(0)=1`
-/

namespace A242728.P11148883778690455262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - ((n % 2 : ℕ) : ℤ)

end

end A242728.P11148883778690455262

namespace A242728

/-- `floor((sqrt(3)+2)*a(n-1))-n%2` -/
def P11148883778690455262.Spec : Prop :=
  ∀ n, P11148883778690455262.a n = A242728 n

end A242728

/-! ## A242728.P16487802349939367118

`4*a(n-1)-(a(n-2)+and(1, n))` with `a(0)=1, a(1)=2`
-/

namespace A242728.P16487802349939367118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - (a (n - 2) + (Nat.land 1 n : ℤ))

end

end A242728.P16487802349939367118

namespace A242728

/-- `4*a(n-1)-(a(n-2)+and(1, n))` -/
def P16487802349939367118.Spec : Prop :=
  ∀ n, P16487802349939367118.a n = A242728 n

end A242728

/-! ## A242728.P14269483835139927503

`4*a(n-1)-and(1, n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A242728.P14269483835139927503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - (Nat.land 1 n : ℤ) - a (n - 2)

end

end A242728.P14269483835139927503

namespace A242728

/-- `4*a(n-1)-and(1, n)-a(n-2)` -/
def P14269483835139927503.Spec : Prop :=
  ∀ n, P14269483835139927503.a n = A242728 n

end A242728

/-! ## A242728.P13179323145332051243

`A109438(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A242728.P13179323145332051243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109438 (n - 1) + a (n - 1)

end

end A242728.P13179323145332051243

namespace A242728

/-- `A109438(n-1)+a(n-1)` -/
def P13179323145332051243.Spec : Prop :=
  ∀ n, P13179323145332051243.a n = A242728 n

end A242728

/-! ## A242728.P3419365297804863772

`A242725(n)+A001353(n)`
-/

namespace A242728.P3419365297804863772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242725 n + A001353 n

end

end A242728.P3419365297804863772

namespace A242728

/-- `A242725(n)+A001353(n)` -/
def P3419365297804863772.Spec : Prop :=
  ∀ n, P3419365297804863772.a n = A242728 n

end A242728

/-! ## A242728.P3084460974949415146

`A242725(n)-A106707(n)`
-/

namespace A242728.P3084460974949415146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242725 n - A106707 n

end

end A242728.P3084460974949415146

namespace A242728

/-- `A242725(n)-A106707(n)` -/
def P3084460974949415146.Spec : Prop :=
  ∀ n, P3084460974949415146.a n = A242728 n

end A242728

/-! ## A242728.P8299208127027407950

`A001835(n+1)-∑[A109437(n)]`
-/

namespace A242728.P8299208127027407950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242728.P8299208127027407950

namespace A242728

/-- `A001835(n+1)-∑[A109437(n)]` -/
def P8299208127027407950.Spec : Prop :=
  ∀ n, P8299208127027407950.a n = A242728 n

end A242728

/-! ## A242728.P13340895052858675514

`ceil(A105968(n)/2)`
-/

namespace A242728.P13340895052858675514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A105968 n : ℚ) / 2⌉

end

end A242728.P13340895052858675514

namespace A242728

/-- `ceil(A105968(n)/2)` -/
def P13340895052858675514.Spec : Prop :=
  ∀ n, P13340895052858675514.a n = A242728 n

end A242728

/-! ## A242728.P2985418256638841221

`A072335(n)-A001571(n)`
-/

namespace A242728.P2985418256638841221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072335 n - A001571 n

end

end A242728.P2985418256638841221

namespace A242728

/-- `A072335(n)-A001571(n)` -/
def P2985418256638841221.Spec : Prop :=
  ∀ n, P2985418256638841221.a n = A242728 n

end A242728

/-! ## A242728.P10532525068023105015

`∑[A109438(n)]+1-A109438(n)`
-/

namespace A242728.P10532525068023105015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A109438 n)

end

end A242728.P10532525068023105015

namespace A242728

/-- `∑[A109438(n)]+1-A109438(n)` -/
def P10532525068023105015.Spec : Prop :=
  ∀ n, P10532525068023105015.a n = A242728 n

end A242728

/-!
# A242731: Number of faces of Johnson solids in the order given by Johnson.

The programs for A242731, there is no canonical definition to state claims against.
-/

/-! ## A242731.P161389630893286225

`A242732(n+1)+2-A242733(n+1)`
-/

namespace A242731.P161389630893286225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242732 (n + 1) + (2 - A242733 (n + 1))

end

end A242731.P161389630893286225

/-! ## A242731.P529660040719540194

`A009056(A242732(n+1)-A242733(n+1))`
-/

namespace A242731.P529660040719540194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A242732 (n + 1) - A242733 (n + 1)).toNat

end

end A242731.P529660040719540194

/-! ## A242731.P7681422076134901942

`A243427(A242732(n+1)-A242733(n+1))`
-/

namespace A242731.P7681422076134901942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (A242732 (n + 1) - A242733 (n + 1)).toNat

end

end A242731.P7681422076134901942

/-!
# A242732: Number of edges of Johnson solids in the order given by Johnson.

The programs for A242732, there is no canonical definition to state claims against.
-/

/-! ## A242732.P2777182986656414859

`A242731(n+1)+A242733(n+1)-2`
-/

namespace A242732.P2777182986656414859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242731 (n + 1) + (A242733 (n + 1) - 2)

end

end A242732.P2777182986656414859

/-! ## A242732.P12576888377863618726

`A242731(n+1)+A023444(A242733(n+1))`
-/

namespace A242732.P12576888377863618726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242731 (n + 1) + A023444 (A242733 (n + 1)).toNat

end

end A242732.P12576888377863618726

/-! ## A242732.P2797823888322330991

`A289207(A242733(n+1)+A242731(n+1))`
-/

namespace A242732.P2797823888322330991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A242733 (n + 1) + A242731 (n + 1)).toNat

end

end A242732.P2797823888322330991

/-!
# A242733: Number of vertices of Johnson solids in the order given by Johnson.

The programs for A242733, there is no canonical definition to state claims against.
-/

/-! ## A242733.P2171547331898633061

`A242732(n+1)+2-A242731(n+1)`
-/

namespace A242733.P2171547331898633061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242732 (n + 1) + (2 - A242731 (n + 1))

end

end A242733.P2171547331898633061

/-! ## A242733.P13281168730256589505

`A009056(A242732(n+1)-A242731(n+1))`
-/

namespace A242733.P13281168730256589505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A242732 (n + 1) - A242731 (n + 1)).toNat

end

end A242733.P13281168730256589505

/-! ## A242733.P15444526445765595416

`A243427(A242732(n+1)-A242731(n+1))`
-/

namespace A242733.P15444526445765595416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (A242732 (n + 1) - A242731 (n + 1)).toNat

end

end A242733.P15444526445765595416

/-!
# A242734: a(n) = (smallest prime > (3/2)^n) - floor((3/2)^n).

The programs for A242734, the canonical program `A242734.P15280531202859122219` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242734 has offset 1).

The definition of A242734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242738, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242734.P15280531202859122219

`A242738(n+1)-A002379(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A242734

/-- `A242738(n+1)-A002379(n+1)` -/
def P15280531202859122219.Spec : Prop :=
  ∀ n, P15280531202859122219.a n = A242734 (n + 1)

theorem P15280531202859122219.correct : P15280531202859122219.Spec := by
  intro n
  simp only [A242734, Nat.add_sub_cancel]

end A242734

/-! ## A242734.P15146507396128844974

`A242738(n+1)-A014215(2*(n+1))`
-/

namespace A242734.P15146507396128844974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242738 (n + 1) - A014215 (2 * (n + 1))

end

end A242734.P15146507396128844974

namespace A242734

/-- `A242738(n+1)-A014215(2*(n+1))` -/
def P15146507396128844974.Spec : Prop :=
  ∀ n, P15146507396128844974.a n = A242734 (n + 1)

end A242734

/-! ## A242734.P11182130418348559260

`A002380(n+1)+A242738(n+1)-A060692(n+1)`
-/

namespace A242734.P11182130418348559260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + 1) + (A242738 (n + 1) - A060692 (n + 1))

end

end A242734.P11182130418348559260

namespace A242734

/-- `A002380(n+1)+A242738(n+1)-A060692(n+1)` -/
def P11182130418348559260.Spec : Prop :=
  ∀ n, P11182130418348559260.a n = A242734 (n + 1)

theorem P11182130418348559260.correct : P11182130418348559260.Spec := by
  intro n
  simp only [A242734, Nat.add_sub_cancel, A242734.P11182130418348559260.a, A242734.P15280531202859122219.a, A002379, A002379.P9705169431772742673.a, A002380, A002380.P11275883330084259764.a, A060692, A060692.P7779810104552752769.a, A242738, A242738.P6755084381788697046.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242734

/-! ## A242734.P6273184210533182155

`A013632(floor((3/2)^(n+1)))`
-/

namespace A242734.P6273184210533182155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 ⌊((3 : ℚ) / 2) ^ (n + 1)⌋.toNat

end

end A242734.P6273184210533182155

namespace A242734

/-- `A013632(floor((3/2)^(n+1)))` -/
def P6273184210533182155.Spec : Prop :=
  ∀ n, P6273184210533182155.a n = A242734 (n + 1)

end A242734

/-! ## A242734.P12434585996164754295

`A094818(A237616(n))`
-/

namespace A242734.P12434585996164754295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094818 (A237616 n).toNat

end

end A242734.P12434585996164754295

namespace A242734

/-- `A094818(A237616(n))` -/
def P12434585996164754295.Spec : Prop :=
  ∀ n, P12434585996164754295.a n = A242734 (n + 1)

end A242734

/-!
# A242736: Number of solutions of a^2 + b^2 congruent to -1 modulo the n-th prime.

The programs for A242736, there is no canonical definition to state claims against.
-/

/-! ## A242736.P4888069430354532713

`ceil(xor(1, A006093(n+1))/8)`
-/

namespace A242736.P4888069430354532713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 1 (A006093 (n + 1)) : ℚ) / 8⌉

end

end A242736.P4888069430354532713

/-! ## A242736.P4512944926742924662

`ceil(xor(2, A000040(n+1))/8)`
-/

namespace A242736.P4512944926742924662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 2 (A000040 (n + 1)) : ℚ) / 8⌉

end

end A242736.P4512944926742924662

/-! ## A242736.P8038471643287288320

`ceil(record[xor(1, A349128(n+1))]/8)`
-/

namespace A242736.P8038471643287288320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A349128 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 8⌉

end

end A242736.P8038471643287288320

/-! ## A242736.P1712256413339473320

`A110656(A171577(n+1))`
-/

namespace A242736.P1712256413339473320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A171577 (n + 1)).toNat

end

end A242736.P1712256413339473320

/-! ## A242736.P12372514261797838151

`A016727(Δ[A007504(n)])-1`
-/

namespace A242736.P12372514261797838151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (f1 (n + 1) - f1 n).toNat - 1

end

end A242736.P12372514261797838151

/-! ## A242736.P10756742612965977933

`A110656(record[A090369(n+1)])`
-/

namespace A242736.P10756742612965977933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A242736.P10756742612965977933

/-! ## A242736.P10991777013119456216

`A016727(A000040(n+1))-1`
-/

namespace A242736.P10991777013119456216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (A000040 (n + 1)).toNat - 1

end

end A242736.P10991777013119456216

/-! ## A242736.P12603377144207499273

`A016727(A006005(n+1))-1`
-/

namespace A242736.P12603377144207499273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (A006005 (n + 1)).toNat - 1

end

end A242736.P12603377144207499273

/-! ## A242736.P12057576644701350282

`A016727(A008578(n+2))-1`
-/

namespace A242736.P12057576644701350282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 (A008578 (n + 2)).toNat - 1

end

end A242736.P12057576644701350282

/-! ## A242736.P8626361473360244348

`A110656(xor(2, A000040(n+1)))`
-/

namespace A242736.P8626361473360244348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.xor 2 (A000040 (n + 1))).toNat

end

end A242736.P8626361473360244348

/-!
# A242738: Smallest prime > (3/2)^n.

The programs for A242738, the canonical program `A242738.P6755084381788697046` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242738 has offset 1).

The definition of A242738 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242738.P6755084381788697046

`A151800(A002379(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242738

/-- `A151800(A002379(n+1))` -/
def P6755084381788697046.Spec : Prop :=
  ∀ n, P6755084381788697046.a n = A242738 (n + 1)

theorem P6755084381788697046.correct : P6755084381788697046.Spec := by
  intro n
  simp only [A242738, Nat.add_sub_cancel]

end A242738

/-! ## A242738.P3517492585409075169

`A242734(n+1)+A002379(n+1)`
-/

namespace A242738.P3517492585409075169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242734 (n + 1) + A002379 (n + 1)

end

end A242738.P3517492585409075169

namespace A242738

/-- `A242734(n+1)+A002379(n+1)` -/
def P3517492585409075169.Spec : Prop :=
  ∀ n, P3517492585409075169.a n = A242738 (n + 1)

theorem P3517492585409075169.correct : P3517492585409075169.Spec := by
  intro n
  simp only [A242738, Nat.add_sub_cancel, A242738.P3517492585409075169.a, A242738.P6755084381788697046.a, A002379, A002379.P9705169431772742673.a, A151800, A151800.P4570031678714564115.a, A242734, A242734.P15280531202859122219.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242738

/-! ## A242738.P17201511177083581266

`A151800(A259796(n+1)-2)`
-/

namespace A242738.P17201511177083581266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A259796 (n + 1) - 2).toNat

end

end A242738.P17201511177083581266

namespace A242738

/-- `A151800(A259796(n+1)-2)` -/
def P17201511177083581266.Spec : Prop :=
  ∀ n, P17201511177083581266.a n = A242738 (n + 1)

end A242738

/-! ## A242738.P10865434027378692397

`A007918(A002379(n+1)+1)`
-/

namespace A242738.P10865434027378692397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002379 (n + 1) + 1).toNat

end

end A242738.P10865434027378692397

namespace A242738

/-- `A007918(A002379(n+1)+1)` -/
def P10865434027378692397.Spec : Prop :=
  ∀ n, P10865434027378692397.a n = A242738 (n + 1)

end A242738

/-! ## A242738.P4339947867212526040

`A308052(A117590(n+2))`
-/

namespace A242738.P4339947867212526040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A117590 (n + 2)).toNat

end

end A242738.P4339947867212526040

namespace A242738

/-- `A308052(A117590(n+2))` -/
def P4339947867212526040.Spec : Prop :=
  ∀ n, P4339947867212526040.a n = A242738 (n + 1)

end A242738

/-!
# A242739: Semiprimes having only straight digits.

The programs for A242739, the canonical program `A242739.P17510925297710358914` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242739 has offset 1).

The definition of A242739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242739.P7555294046598650116

`∩[A001358(n+1), A028373(n+1)]`
-/

namespace A242739.P7555294046598650116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242739.P7555294046598650116

namespace A242739

/-- `∩[A001358(n+1), A028373(n+1)]` -/
def P7555294046598650116.Spec : Prop :=
  ∀ n, (P7555294046598650116.a n : ℤ) = A242739 (n + 1)

end A242739

/-! ## A242739.P15077019296118979501

`filter[A028373(n+1), A064911(#)]`
-/

namespace A242739.P15077019296118979501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242739.P15077019296118979501

namespace A242739

/-- `filter[A028373(n+1), A064911(#)]` -/
def P15077019296118979501.Spec : Prop :=
  ∀ n, P15077019296118979501.a n = A242739 (n + 1)

end A242739

/-! ## A242739.P17510925297710358914

`∩[A028373(n+1), A112381(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A242739

/-- `∩[A028373(n+1), A112381(n+1)]` -/
def P17510925297710358914.Spec : Prop :=
  ∀ n, (P17510925297710358914.a n : ℤ) = A242739 (n + 1)

theorem P17510925297710358914.correct : P17510925297710358914.Spec := by
  intro n
  simp only [A242739, Nat.add_sub_cancel]

end A242739

/-! ## A242739.P6564719402878684137

`∩[A028373(n+1), A241013(n+1)]`
-/

namespace A242739.P6564719402878684137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242739.P6564719402878684137

namespace A242739

/-- `∩[A028373(n+1), A241013(n+1)]` -/
def P6564719402878684137.Spec : Prop :=
  ∀ n, (P6564719402878684137.a n : ℤ) = A242739 (n + 1)

end A242739

/-! ## A242739.P8367661305556285644

`∩[A028373(n+1), A077136(n+1)]`
-/

namespace A242739.P8367661305556285644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242739.P8367661305556285644

namespace A242739

/-- `∩[A028373(n+1), A077136(n+1)]` -/
def P8367661305556285644.Spec : Prop :=
  ∀ n, (P8367661305556285644.a n : ℤ) = A242739 (n + 1)

end A242739

/-! ## A242739.P11823739220395230017

`∩[A028373(n+1), A323644(n+1)]`
-/

namespace A242739.P11823739220395230017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242739.P11823739220395230017

namespace A242739

/-- `∩[A028373(n+1), A323644(n+1)]` -/
def P11823739220395230017.Spec : Prop :=
  ∀ n, (P11823739220395230017.a n : ℤ) = A242739 (n + 1)

end A242739

/-! ## A242739.P11464426441061612649

`∩[A028373(n+1), A339424(n+1)]`
-/

namespace A242739.P11464426441061612649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242739.P11464426441061612649

namespace A242739

/-- `∩[A028373(n+1), A339424(n+1)]` -/
def P11464426441061612649.Spec : Prop :=
  ∀ n, (P11464426441061612649.a n : ℤ) = A242739 (n + 1)

end A242739

/-! ## A242739.P5265362782481498631

`∩[A028373(n+1), A346041(n+1)]`
-/

namespace A242739.P5265362782481498631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242739.P5265362782481498631

namespace A242739

/-- `∩[A028373(n+1), A346041(n+1)]` -/
def P5265362782481498631.Spec : Prop :=
  ∀ n, (P5265362782481498631.a n : ℤ) = A242739 (n + 1)

end A242739

/-!
# A242742: Let k be the n-th composite number: then a(n) is the smallest base b such that b^(k-1) == 1 (mod k).

The programs for A242742, there is no canonical definition to state claims against.
-/

/-! ## A242742.P3881241115785838458

`A105222(A002808(n+1))`
-/

namespace A242742.P3881241115785838458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A002808 (n + 1)).toNat

end

end A242742.P3881241115785838458

/-! ## A242742.P10510050347080222206

`A105222(Δ[A053767(n)])`
-/

namespace A242742.P10510050347080222206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (f1 (n + 1) - f1 n).toNat

end

end A242742.P10510050347080222206

/-! ## A242742.P15907820575172360643

`A105222(A018252(n+2))`
-/

namespace A242742.P15907820575172360643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A018252 (n + 2)).toNat

end

end A242742.P15907820575172360643

/-! ## A242742.P5954787190599086376

`A105222(A173905(n+5))`
-/

namespace A242742.P5954787190599086376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A173905 (n + 5)).toNat

end

end A242742.P5954787190599086376

/-! ## A242742.P10628840692911430404

`A105222(A072668(n+1)+1)`
-/

namespace A242742.P10628840692911430404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A072668 (n + 1) + 1).toNat

end

end A242742.P10628840692911430404

/-! ## A242742.P6246473181322141874

`A105222(A060462(n+2)+1)`
-/

namespace A242742.P6246473181322141874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A060462 (n + 2) + 1).toNat

end

end A242742.P6246473181322141874

/-! ## A242742.P18259014970994413797

`A105222(eq[1, A339579(n+1)+1])`
-/

namespace A242742.P18259014970994413797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242742.P18259014970994413797

/-! ## A242742.P14874495812941516852

`A105222(lt[1, A318827(n+1)]+1)`
-/

namespace A242742.P14874495812941516852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A242742.P14874495812941516852

/-! ## A242742.P6390190714593444668

`A105222(lt[1, A318828(n+1)]+1)`
-/

namespace A242742.P6390190714593444668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A242742.P6390190714593444668

/-! ## A242742.P3935291805920306924

`A105222(A053767(n+1)-A053767(n))`
-/

namespace A242742.P3935291805920306924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A053767 (n + 1) - A053767 n).toNat

end

end A242742.P3935291805920306924

/-!
# A242745: Least k > 0 such that (k!-n!)/(k-n) is an integer.

The programs for A242745, there is no canonical definition to state claims against.
-/

/-! ## A242745.P3205867892533358193

`A260394(A000465(n))+floor(n/3)+1`
-/

namespace A242745.P3205867892533358193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (A000465 n).toNat + (⌊(n : ℚ) / 3⌋ + 1)

end

end A242745.P3205867892533358193

/-! ## A242745.P9241072480841856020

`A283682(A072828(n+1)+A034807(n))`
-/

namespace A242745.P9241072480841856020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (A072828 (n + 1) + A034807 n).toNat

end

end A242745.P9241072480841856020

/-! ## A242745.P1933304467461030132

`A320001(A306447(n+1))+A214130(n)`
-/

namespace A242745.P1933304467461030132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320001 (A306447 (n + 1)).toNat + A214130 n

end

end A242745.P1933304467461030132

/-! ## A242745.P4265037888565732538

`A122651(n)+A008966(A113360(2*n+1))`
-/

namespace A242745.P4265037888565732538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 n + A008966 (A113360 (2 * n + 1)).toNat

end

end A242745.P4265037888565732538

/-! ## A242745.P3471134019451567423

`A000120(A341412(n+1)+A018676(2*n+5))`
-/

namespace A242745.P3471134019451567423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341412 (n + 1) + A018676 (2 * n + 5)).toNat

end

end A242745.P3471134019451567423

/-!
# A242746: Least k > 0 such that (k!+n!)/(k+n) is an integer.

The programs for A242746, there is no canonical definition to state claims against.
-/

/-! ## A242746.P3898215542837997207

`gcd(A270006(n), A288914(A283606(n)))`
-/

namespace A242746.P3898215542837997207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A270006 n) (A288914 (A283606 n).toNat)

end

end A242746.P3898215542837997207

/-! ## A242746.P14880613601160713725

`gcd(A046239(A046208(n+1)), A285786(n+1))`
-/

namespace A242746.P14880613601160713725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046239 (A046208 (n + 1)).toNat) (A285786 (n + 1))

end

end A242746.P14880613601160713725

/-! ## A242746.P4504365486964628968

`gcd(A277903(2*(n+1)), A277914(A277936(n)))`
-/

namespace A242746.P4504365486964628968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277903 (2 * (n + 1))) (A277914 (A277936 n).toNat)

end

end A242746.P4504365486964628968

/-! ## A242746.P17513136185718226365

`gcd(A277903(2*n+1), A277914(A277929(n)))`
-/

namespace A242746.P17513136185718226365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277903 (2 * n + 1)) (A277914 (A277929 n).toNat)

end

end A242746.P17513136185718226365

/-! ## A242746.P8239103002582710144

`A057191(n+1)%A348110(A348110(3*(n+1)))`
-/

namespace A242746.P8239103002582710144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057191 (n + 1)) (A348110 (A348110 (3 * (n + 1))).toNat)

end

end A242746.P8239103002582710144

/-!
# A242748: Number of ordered ways to write n = k + m with 0 < k <= m such that k is a primitive root modulo prime(k) and m is a primitive root modulo prime(m).

The programs for A242748, there is no canonical definition to state claims against.
-/

/-! ## A242748.P16646926100633138823

`A001221(A354951(n+1)+A211267(n+2))`
-/

namespace A242748.P16646926100633138823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A354951 (n + 1) + A211267 (n + 2)).toNat

end

end A242748.P16646926100633138823

/-!
# A242749: G.f. satisfies: A(x) = G(x/A(x)) such that A(x*G(x)) = G(x) = Sum_{n>=0} (n+1)^(n+1)*x^n.

The programs for A242749, there is no canonical definition to state claims against.
-/

/-! ## A242749.P9833094514780770704

`∑[A278104(A182432(n))]`
-/

namespace A242749.P9833094514780770704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278104 (A182432 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242749.P9833094514780770704

/-!
# A242750: Positive integers n with property that n is a primitive root modulo prime(n).

The programs for A242750, there is no canonical definition to state claims against.
-/

/-! ## A242750.P11743451601066703095

`A000720(A242752(n+1))`
-/

namespace A242750.P11743451601066703095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A242752 (n + 1)).toNat

end

end A242750.P11743451601066703095

/-! ## A242750.P13261946324663242304

`A066328(A242752(2*n+1-n))`
-/

namespace A242750.P13261946324663242304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A242752 (2 * n + 1 - n)).toNat

end

end A242750.P13261946324663242304

/-! ## A242750.P178708212991014936

`A066328(A242752(n+1)+A007814(2*n+1))`
-/

namespace A242750.P178708212991014936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A242752 (n + 1) + A007814 (2 * n + 1)).toNat

end

end A242750.P178708212991014936

/-! ## A242750.P7618054715086811043

`A061395(2*A242752(n+1))`
-/

namespace A242750.P7618054715086811043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A242752 (n + 1)).toNat

end

end A242750.P7618054715086811043

/-! ## A242750.P6113359235292397308

`A066328(A242752(n+1)+A015717(2*n+3))`
-/

namespace A242750.P6113359235292397308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A242752 (n + 1) + A015717 (2 * n + 3)).toNat

end

end A242750.P6113359235292397308

/-! ## A242750.P15382864102315259327

`A036234(A242752(n+1)-1)`
-/

namespace A242750.P15382864102315259327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A242752 (n + 1) - 1).toNat

end

end A242750.P15382864102315259327

/-! ## A242750.P8488838696529395642

`∑{d}[A242752(n+1), A055396(#)]`
-/

namespace A242750.P8488838696529395642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A242750.P8488838696529395642

/-! ## A242750.P8825753459547739305

`∑{d}[A242752(n+1), A056239(#)]`
-/

namespace A242750.P8825753459547739305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A242750.P8825753459547739305

/-! ## A242750.P8680235545926847914

`∑{d}[A242752(n+1), A252464(#)]`
-/

namespace A242750.P8680235545926847914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252464 d

end

end A242750.P8680235545926847914

/-! ## A242750.P6831389440910067925

`A230980(A242752(n+1)-1)+1`
-/

namespace A242750.P6831389440910067925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A242752 (n + 1) - 1).toNat + 1

end

end A242750.P6831389440910067925

/-! ## A242750.P17414873333879247896

`A055396(A242752(n+1))%A001962(n+1)`
-/

namespace A242750.P17414873333879247896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A242752 (n + 1)).toNat) (A001962 (n + 1))

end

end A242750.P17414873333879247896

/-! ## A242750.P922663591383478848

`A055396(A242752(n+1)%A014574(n+1))`
-/

namespace A242750.P922663591383478848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.tmod (A242752 (n + 1)) (A014574 (n + 1))).toNat

end

end A242750.P922663591383478848

/-! ## A242750.P5050276073895083319

`A055396(2*A242752(n+1)-A242752(n+1))`
-/

namespace A242750.P5050276073895083319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A242752 (n + 1) - A242752 (n + 1)).toNat

end

end A242750.P5050276073895083319

/-! ## A242750.P985474137502173724

`A056239(2*A242752(n+1)-A242752(n+1))`
-/

namespace A242750.P985474137502173724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (2 * A242752 (n + 1) - A242752 (n + 1)).toNat

end

end A242750.P985474137502173724

/-! ## A242750.P16397156265728084431

`A252464(2*A242752(n+1)-A242752(n+1))`
-/

namespace A242750.P16397156265728084431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A242752 (n + 1) - A242752 (n + 1)).toNat

end

end A242750.P16397156265728084431

/-!
# A242751: Semiprimes having only holey digits (0,4,6,8,9).

The programs for A242751, there is no canonical definition to state claims against.
-/

/-! ## A242751.P11640951376042876131

`∩[A001358(n+1), A001744(n+1)]`
-/

namespace A242751.P11640951376042876131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P11640951376042876131

/-! ## A242751.P9118570630247398162

`filter[A001744(n+2), A064911(#)]`
-/

namespace A242751.P9118570630247398162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242751.P9118570630247398162

/-! ## A242751.P14121367814522782289

`∩[A001744(n+1), A179463(n+1)]`
-/

namespace A242751.P14121367814522782289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P14121367814522782289

/-! ## A242751.P7276809341155970080

`∩[A001744(n+1), A065516(n)+a(n-1)]` with `a(0)=4`
-/

namespace A242751.P7276809341155970080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P7276809341155970080

/-! ## A242751.P11632457425091606266

`∩[A001744(n+1), A118717(n)-a(n-1)]` with `a(0)=4`
-/

namespace A242751.P11632457425091606266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A118717 n - f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P11632457425091606266

/-! ## A242751.P12064466481107939635

`∩[A001744(n+1), A176540(n+1)]`
-/

namespace A242751.P12064466481107939635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P12064466481107939635

/-! ## A242751.P12095615381004691490

`∩[A001744(n+1), A186621(n+1)+1]`
-/

namespace A242751.P12095615381004691490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P12095615381004691490

/-! ## A242751.P11994825207545293525

`∩[A001744(n+1), A088707(n+1)-1]`
-/

namespace A242751.P11994825207545293525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P11994825207545293525

/-! ## A242751.P16109409275149304087

`∩[A001744(n+1), A175708(n+1)+1+n]`
-/

namespace A242751.P16109409275149304087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242751.P16109409275149304087

/-!
# A242752: Primes p such that pi(p) is a primitive root modulo p, where pi(p) is the number of primes not exceeding p.

The programs for A242752, there is no canonical definition to state claims against.
-/

/-! ## A242752.P13233687369776215235

`A001748(A242750(n+1))/3`
-/

namespace A242752.P13233687369776215235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A242750 (n + 1)).toNat : ℚ) / 3

end

end A242752.P13233687369776215235

/-! ## A242752.P1035507765575152792

`A000040(A242750(n+1))`
-/

namespace A242752.P1035507765575152792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A242750 (n + 1)).toNat

end

end A242752.P1035507765575152792

/-! ## A242752.P14798297850416231529

`A008578(A242750(n+1)+1)`
-/

namespace A242752.P14798297850416231529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A242750 (n + 1) + 1).toNat

end

end A242752.P14798297850416231529

/-! ## A242752.P10757648465578630926

`A182986(A242750(n+1)+1)`
-/

namespace A242752.P10757648465578630926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A242750 (n + 1) + 1).toNat

end

end A242752.P10757648465578630926

/-! ## A242752.P3012028044125887215

`∑{d}[A242750(n+1), A007444(#)]`
-/

namespace A242752.P3012028044125887215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A242752.P3012028044125887215

/-! ## A242752.P6173902424565517832

`A006093(A242750(n+1))+A001222(A291657(n+1))`
-/

namespace A242752.P6173902424565517832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A242750 (n + 1)).toNat + A001222 (A291657 (n + 1)).toNat

end

end A242752.P6173902424565517832

/-! ## A242752.P3312984352267456945

`A073846(2*A242750(n+1))`
-/

namespace A242752.P3312984352267456945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A242750 (n + 1)).toNat

end

end A242752.P3312984352267456945

/-! ## A242752.P8718652009266889648

`A073846(A242750(n+1)+A242750(n+1))`
-/

namespace A242752.P8718652009266889648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A242750 (n + 1) + A242750 (n + 1)).toNat

end

end A242752.P8718652009266889648

/-! ## A242752.P8223055790752336319

`A207790(2*A242750(n+1))`
-/

namespace A242752.P8223055790752336319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A242750 (n + 1)).toNat

end

end A242752.P8223055790752336319

/-! ## A242752.P15173983367199908904

`A342241(A342253(n+1))+A006093(A242750(n+1))`
-/

namespace A242752.P15173983367199908904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A342253 (n + 1)).toNat + A006093 (A242750 (n + 1)).toNat

end

end A242752.P15173983367199908904

/-!
# A242753: Number of ordered ways to write n = k + m with 0 < k <= m such that the inverse of k mod prime(k) among 1, ..., prime(k) - 1 is prime and the inverse of m mod prime(m) among 1, ..., prime(m) - 1 is also prime.

The programs for A242753, there is no canonical definition to state claims against.
-/

/-! ## A242753.P3246598885085242659

`A087436(A061551(n)+n)`
-/

namespace A242753.P3246598885085242659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A061551 n + (n : ℤ)).toNat

end

end A242753.P3246598885085242659

/-! ## A242753.P6854826958969982676

`A098418(A067539(n+1)%A098420(3*n+1))`
-/

namespace A242753.P6854826958969982676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098418 (Int.tmod (A067539 (n + 1)) (A098420 (3 * n + 1))).toNat

end

end A242753.P6854826958969982676

/-! ## A242753.P14209490449750001198

`A037819(A305102(n)+6)`
-/

namespace A242753.P14209490449750001198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A305102 n + 6).toNat

end

end A242753.P14209490449750001198

/-! ## A242753.P18302092788247833760

`∑{e}[A360579(A067539(n+1)), #]`
-/

namespace A242753.P18302092788247833760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360579 (A067539 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A242753.P18302092788247833760

/-! ## A242753.P854380576317872850

`A232443(A094853(2*n+1)+n)`
-/

namespace A242753.P854380576317872850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232443 (A094853 (2 * n + 1) + (n : ℤ)).toNat

end

end A242753.P854380576317872850

/-!
# A242754: Positive integers k such that k*p == 1 (mod prime(k)) for some prime p < prime(k).

The programs for A242754, there is no canonical definition to state claims against.
-/

/-! ## A242754.P16205634951329418127

`eq[2, A242879(n+2)]`
-/

namespace A242754.P16205634951329418127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242879 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242754.P16205634951329418127

/-! ## A242754.P16640774375301838267

`A000720(A242755(n+1))`
-/

namespace A242754.P16640774375301838267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A242755 (n + 1)).toNat

end

end A242754.P16640774375301838267

/-! ## A242754.P3671384995563223360

`A066328(or(1, A242755(n+1)))`
-/

namespace A242754.P3671384995563223360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.lor 1 (A242755 (n + 1))).toNat

end

end A242754.P3671384995563223360

/-! ## A242754.P8369638238467585616

`∑{d}[A242755(n+1), A066328(#)]`
-/

namespace A242754.P8369638238467585616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A242754.P8369638238467585616

/-! ## A242754.P2768009685271075240

`A066328(2*A242755(n+1)-A242755(n+1))`
-/

namespace A242754.P2768009685271075240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A242755 (n + 1) - A242755 (n + 1)).toNat

end

end A242754.P2768009685271075240

/-! ## A242754.P10980078793552216493

`A302039(2*A242755(n+1)-A242755(n+1))`
-/

namespace A242754.P10980078793552216493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (2 * A242755 (n + 1) - A242755 (n + 1)).toNat

end

end A242754.P10980078793552216493

/-! ## A242754.P289237789013622433

`A061395(2*A242755(n+1))`
-/

namespace A242754.P289237789013622433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A242755 (n + 1)).toNat

end

end A242754.P289237789013622433

/-! ## A242754.P14752095864060481850

`A066328(2*A242755(n+1))-1`
-/

namespace A242754.P14752095864060481850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A242755 (n + 1)).toNat - 1

end

end A242754.P14752095864060481850

/-! ## A242754.P12134715339514166456

`A302039(2*A242755(n+1))-1`
-/

namespace A242754.P12134715339514166456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (2 * A242755 (n + 1)).toNat - 1

end

end A242754.P12134715339514166456

/-! ## A242754.P17139443955836200320

`A230980(A242755(n+1)+1)`
-/

namespace A242754.P17139443955836200320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A242755 (n + 1) + 1).toNat

end

end A242754.P17139443955836200320

/-! ## A242754.P1447186875637770590

`A036234(A242755(n+1)-1)`
-/

namespace A242754.P1447186875637770590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A242755 (n + 1) - 1).toNat

end

end A242754.P1447186875637770590

/-! ## A242754.P5146496283042879817

`A036234(xor(1, A242755(n+1)))`
-/

namespace A242754.P5146496283042879817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (Int.xor 1 (A242755 (n + 1))).toNat

end

end A242754.P5146496283042879817

/-! ## A242754.P11616684918384770290

`A318995(2*A242755(n+1))+1`
-/

namespace A242754.P11616684918384770290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (2 * A242755 (n + 1)).toNat + 1

end

end A242754.P11616684918384770290

/-! ## A242754.P11969823618983431534

`A318995(A242755(n+1)+A242755(n+1))+1`
-/

namespace A242754.P11969823618983431534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A242755 (n + 1) + A242755 (n + 1)).toNat + 1

end

end A242754.P11969823618983431534

/-!
# A242755: Primes p such that pi(p)*q == 1 (mod p) for some prime q < p, where pi(p) is the number of primes not exceeding p.

The programs for A242755, there is no canonical definition to state claims against.
-/

/-! ## A242755.P14257345772209958741

`A000040(A242754(n+1))`
-/

namespace A242755.P14257345772209958741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A242754 (n + 1)).toNat

end

end A242755.P14257345772209958741

/-! ## A242755.P5720508401544671815

`A008578(A242754(n+1)+1)`
-/

namespace A242755.P5720508401544671815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A242754 (n + 1) + 1).toNat

end

end A242755.P5720508401544671815

/-! ## A242755.P11934675777817110319

`A065091(A242754(n+1)-1)`
-/

namespace A242755.P11934675777817110319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A242754 (n + 1) - 1).toNat

end

end A242755.P11934675777817110319

/-! ## A242755.P15371114571285506526

`A000040(eq[2, A242879(n+2)])`
-/

namespace A242755.P15371114571285506526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A242755.P15371114571285506526

/-! ## A242755.P11883993284105869281

`A073846(2*A242754(n+1))`
-/

namespace A242755.P11883993284105869281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A242754 (n + 1)).toNat

end

end A242755.P11883993284105869281

/-!
# A242756: Semiprimes having only the curved digits.

The programs for A242756, there is no canonical definition to state claims against.
-/

/-! ## A242756.P17569812355903953786

`filter[A028374(n+2), A064911(#)]`
-/

namespace A242756.P17569812355903953786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A242756.P17569812355903953786

/-! ## A242756.P4609183743779939679

`∩[A001358(n+1), A028374(n+1)]`
-/

namespace A242756.P4609183743779939679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242756.P4609183743779939679

/-! ## A242756.P3611418962905149870

`∩[A028374(n+1), A176540(n+1)]`
-/

namespace A242756.P3611418962905149870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242756.P3611418962905149870

/-! ## A242756.P10562156969884845336

`∩[A028374(n+1), A186621(n+1)+1]`
-/

namespace A242756.P10562156969884845336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242756.P10562156969884845336

/-! ## A242756.P6367089979680107529

`∩[lt[0, A064911(n+1)]+1, A028374(n+1)]`
-/

namespace A242756.P6367089979680107529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A242756.P6367089979680107529

/-! ## A242756.P5860353171742582374

`∩[A028374(n+1), A176347(n+1)+A068318(n+1)]`
-/

namespace A242756.P5860353171742582374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176347 (n + 1) + A068318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242756.P5860353171742582374

/-!
# A242757: Partial sums of the number of integers between successive twin prime pairs.

The programs for A242757, the canonical program `A242757.P13009663021335079436` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242757 has offset 1).

The definition of A242757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A242757.P13009663021335079436

`A001359(n+2)-2-3*(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A242757

/-- `A001359(n+2)-2-3*(n+1)` -/
def P13009663021335079436.Spec : Prop :=
  ∀ n, P13009663021335079436.a n = A242757 (n + 1)

theorem P13009663021335079436.correct : P13009663021335079436.Spec := by
  intro n
  simp only [A242757, Nat.add_sub_cancel]

end A242757

/-! ## A242757.P1432369279286681984

`∑[A204099(n+1)]`
-/

namespace A242757.P1432369279286681984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242757.P1432369279286681984

namespace A242757

/-- `∑[A204099(n+1)]` -/
def P1432369279286681984.Spec : Prop :=
  ∀ n, P1432369279286681984.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P6246241426409922986

`∑[3*A204100(n+1)]`
-/

namespace A242757.P6246241426409922986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A204100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242757.P6246241426409922986

namespace A242757

/-- `∑[3*A204100(n+1)]` -/
def P6246241426409922986.Spec : Prop :=
  ∀ n, P6246241426409922986.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P4427543969756038825

`∑[A167132(n+1)]-n`
-/

namespace A242757.P4427543969756038825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A242757.P4427543969756038825

namespace A242757

/-- `∑[A167132(n+1)]-n` -/
def P4427543969756038825.Spec : Prop :=
  ∀ n, P4427543969756038825.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P8123608252646976747

`∑[A053319(n+1)-3]+1`
-/

namespace A242757.P8123608252646976747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A242757.P8123608252646976747

namespace A242757

/-- `∑[A053319(n+1)-3]+1` -/
def P8123608252646976747.Spec : Prop :=
  ∀ n, P8123608252646976747.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P13637346662217182375

`3*(A167379(n+1)-(n+2))`
-/

namespace A242757.P13637346662217182375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A167379 (n + 1) - (n + 2 : ℤ))

end

end A242757.P13637346662217182375

namespace A242757

/-- `3*(A167379(n+1)-(n+2))` -/
def P13637346662217182375.Spec : Prop :=
  ∀ n, P13637346662217182375.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P593415200597918060

`3*(A177139(n+1)-(n+3))`
-/

namespace A242757.P593415200597918060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A177139 (n + 1) - (n + 3 : ℤ))

end

end A242757.P593415200597918060

namespace A242757

/-- `3*(A177139(n+1)-(n+3))` -/
def P593415200597918060.Spec : Prop :=
  ∀ n, P593415200597918060.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P15362722366349821002

`∑[Δ[A001359(n+1)]-2]-n`
-/

namespace A242757.P15362722366349821002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A242757.P15362722366349821002

namespace A242757

/-- `∑[Δ[A001359(n+1)]-2]-n` -/
def P15362722366349821002.Spec : Prop :=
  ∀ n, P15362722366349821002.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P12122733925425097584

`∑[A014681(A167132(n+1))]`
-/

namespace A242757.P12122733925425097584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A167132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242757.P12122733925425097584

namespace A242757

/-- `∑[A014681(A167132(n+1))]` -/
def P12122733925425097584.Spec : Prop :=
  ∀ n, P12122733925425097584.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P3335861063568681507

`A172057(n+1)-A112414(n)`
-/

namespace A242757.P3335861063568681507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) - A112414 n

end

end A242757.P3335861063568681507

namespace A242757

/-- `A172057(n+1)-A112414(n)` -/
def P3335861063568681507.Spec : Prop :=
  ∀ n, P3335861063568681507.a n = A242757 (n + 1)

theorem P3335861063568681507.correct : P3335861063568681507.Spec := by
  intro n
  simp only [A242757, Nat.add_sub_cancel, A242757.P3335861063568681507.a, A242757.P13009663021335079436.a, A001359, A001359.P8865495035699438537.a, A112414, A112414.P1084450287602083744.a, A172057, A172057.P13327719943038495945.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242757

/-! ## A242757.P1144511038163745063

`∑[A046666(A053319(n+1))]-n`
-/

namespace A242757.P1144511038163745063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A053319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A242757.P1144511038163745063

namespace A242757

/-- `∑[A046666(A053319(n+1))]-n` -/
def P1144511038163745063.Spec : Prop :=
  ∀ n, P1144511038163745063.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P11443121064099981341

`A001359(n+2)-A016789(n+1)`
-/

namespace A242757.P11443121064099981341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - A016789 (n + 1)

end

end A242757.P11443121064099981341

namespace A242757

/-- `A001359(n+2)-A016789(n+1)` -/
def P11443121064099981341.Spec : Prop :=
  ∀ n, P11443121064099981341.a n = A242757 (n + 1)

theorem P11443121064099981341.correct : P11443121064099981341.Spec := by
  intro n
  simp only [A242757, Nat.add_sub_cancel, A242757.P11443121064099981341.a, A242757.P13009663021335079436.a, A001359, A001359.P8865495035699438537.a, A016789, A016789.P8277564872725303677.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242757

/-! ## A242757.P9878227497043804476

`∑[Δ[A111166(n+1)]-3]`
-/

namespace A242757.P9878227497043804476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242757.P9878227497043804476

namespace A242757

/-- `∑[Δ[A111166(n+1)]-3]` -/
def P9878227497043804476.Spec : Prop :=
  ∀ n, P9878227497043804476.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P2572518685393343480

`A014574(n+2)-3*(n+2)`
-/

namespace A242757.P2572518685393343480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 2) - (3 * (n + 2) : ℤ)

end

end A242757.P2572518685393343480

namespace A242757

/-- `A014574(n+2)-3*(n+2)` -/
def P2572518685393343480.Spec : Prop :=
  ∀ n, P2572518685393343480.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P9496383103239273850

`A006512(n+2)-(3*n+7)`
-/

namespace A242757.P9496383103239273850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 2) - (3 * n + 7 : ℤ)

end

end A242757.P9496383103239273850

namespace A242757

/-- `A006512(n+2)-(3*n+7)` -/
def P9496383103239273850.Spec : Prop :=
  ∀ n, P9496383103239273850.a n = A242757 (n + 1)

theorem P9496383103239273850.correct : P9496383103239273850.Spec := by
  intro n
  simp only [A242757, Nat.add_sub_cancel, A242757.P9496383103239273850.a, A242757.P13009663021335079436.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A242757

/-! ## A242757.P16230008406433076849

`∑[Δ[A006512(n+1)]-2]-n`
-/

namespace A242757.P16230008406433076849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A242757.P16230008406433076849

namespace A242757

/-- `∑[Δ[A006512(n+1)]-2]-n` -/
def P16230008406433076849.Spec : Prop :=
  ∀ n, P16230008406433076849.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P14507449464595923344

`A111166(n+2)-(2*n+5+n)`
-/

namespace A242757.P14507449464595923344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 2) - (2 * n + 5 + n : ℤ)

end

end A242757.P14507449464595923344

namespace A242757

/-- `A111166(n+2)-(2*n+5+n)` -/
def P14507449464595923344.Spec : Prop :=
  ∀ n, P14507449464595923344.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P8119858034221016482

`A037074(n+2)/A006512(n+2)-A016789(n+1)`
-/

namespace A242757.P8119858034221016482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 2) : ℚ) / (A006512 (n + 2) : ℚ) - (A016789 (n + 1) : ℚ)

end

end A242757.P8119858034221016482

namespace A242757

/-- `A037074(n+2)/A006512(n+2)-A016789(n+1)` -/
def P8119858034221016482.Spec : Prop :=
  ∀ n, P8119858034221016482.a n = (A242757 (n + 1) : ℚ)

end A242757

/-! ## A242757.P13284436420742424553

`A001097(2*(n+1))-A016789(n+1)`
-/

namespace A242757.P13284436420742424553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1)) - A016789 (n + 1)

end

end A242757.P13284436420742424553

namespace A242757

/-- `A001097(2*(n+1))-A016789(n+1)` -/
def P13284436420742424553.Spec : Prop :=
  ∀ n, P13284436420742424553.a n = A242757 (n + 1)

end A242757

/-! ## A242757.P13074239884750012168

`A001097(2*(n+1))+n+1-A016825(n+1)`
-/

namespace A242757.P13074239884750012168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1)) + ((n + 1 : ℤ) - A016825 (n + 1))

end

end A242757.P13074239884750012168

namespace A242757

/-- `A001097(2*(n+1))+n+1-A016825(n+1)` -/
def P13074239884750012168.Spec : Prop :=
  ∀ n, P13074239884750012168.a n = A242757 (n + 1)

end A242757

/-!
# A242758: Smallest even k such that lpf(k-1) > lpf(k-3) >= prime(n), where lpf=least prime factor (A020639).

The programs for A242758, the canonical program `A242758.P10195906630605869093` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242758 has offset 2).

The definition of A242758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242758.P10195906630605869093

`A001359(A082462(n+1)+1)+3`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A242758

/-- `A001359(A082462(n+1)+1)+3` -/
def P10195906630605869093.Spec : Prop :=
  ∀ n, P10195906630605869093.a n = A242758 (n + 2)

theorem P10195906630605869093.correct : P10195906630605869093.Spec := by
  intro n
  simp only [A242758, Nat.add_sub_cancel]

end A242758

/-! ## A242758.P3817026779204673065

`A006512(1-A074239(n)+n)+1`
-/

namespace A242758.P3817026779204673065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (1 - A074239 n + (n : ℤ)).toNat + 1

end

end A242758.P3817026779204673065

namespace A242758

/-- `A006512(1-A074239(n)+n)+1` -/
def P3817026779204673065.Spec : Prop :=
  ∀ n, P3817026779204673065.a n = A242758 (n + 2)

end A242758

/-! ## A242758.P1624679131674694231

`A006512(∑[1-A106002(n+1)])+1`
-/

namespace A242758.P1624679131674694231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A242758.P1624679131674694231

namespace A242758

/-- `A006512(∑[1-A106002(n+1)])+1` -/
def P1624679131674694231.Spec : Prop :=
  ∀ n, P1624679131674694231.a n = A242758 (n + 2)

end A242758

/-! ## A242758.P16081943741347751922

`A014574(∑[1-A106002(n+1)])+2`
-/

namespace A242758.P16081943741347751922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A242758.P16081943741347751922

namespace A242758

/-- `A014574(∑[1-A106002(n+1)])+2` -/
def P16081943741347751922.Spec : Prop :=
  ∀ n, P16081943741347751922.a n = A242758 (n + 2)

end A242758

/-! ## A242758.P2508730152667721857

`A006512(∑[A062301(n+2)]+1)+1`
-/

namespace A242758.P2508730152667721857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A242758.P2508730152667721857

namespace A242758

/-- `A006512(∑[A062301(n+2)]+1)+1` -/
def P2508730152667721857.Spec : Prop :=
  ∀ n, P2508730152667721857.a n = A242758 (n + 2)

end A242758

/-! ## A242758.P10239310260351830603

`A006512(∑[A100821(n+1)]+1)+1`
-/

namespace A242758.P10239310260351830603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A242758.P10239310260351830603

namespace A242758

/-- `A006512(∑[A100821(n+1)]+1)+1` -/
def P10239310260351830603.Spec : Prop :=
  ∀ n, P10239310260351830603.a n = A242758 (n + 2)

end A242758

/-!
# A242761: Decimal expansion of the escape probability for a random walk on the 3-D cubic lattice (a Polya random walk constant).

The programs for A242761, there is no canonical definition to state claims against.
-/

/-! ## A242761.P13875281855493891792

`9-A086230(n)`
-/

namespace A242761.P13875281855493891792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A086230 n

end

end A242761.P13875281855493891792

/-!
# A242762: a(n) = -a(n-1) + a(n-3) + 5*(n-2) for n>2, a(0)=2, a(1)=3, a(2)=4.

The programs for A242762, the canonical program `A242762.P17612396499944488485` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242762 has offset 0).

The definition of A242762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242762.P17612396499944488485

`∑[a(n-3)+5-a(n-1)]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242762

/-- `∑[a(n-3)+5-a(n-1)]` -/
def P17612396499944488485.Spec : Prop :=
  ∀ n, P17612396499944488485.a n = A242762 n

theorem P17612396499944488485.correct : P17612396499944488485.Spec := by
  intro n
  simp only [A242762]

end A242762

/-! ## A242762.P11850736561138857518

`∑[5-(a(n-1)-a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A242762.P11850736561138857518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 4] fun n f1 =>
  5 - (f1 (n - 1) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242762.P11850736561138857518

namespace A242762

/-- `∑[5-(a(n-1)-a(n-3))]` -/
def P11850736561138857518.Spec : Prop :=
  ∀ n, P11850736561138857518.a n = A242762 n

end A242762

/-!
# A242763: a(n) = 1 for n <= 7; a(n) = a(n-5) + a(n-7) for n>7.

The programs for A242763, the canonical program `A242763.P17642514836535688675` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242763 has offset 1).

The definition of A242763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-5)+a(n-7)` (program `A242763.P17642514836535688675`, by `A242763.P17642514836535688675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242763.P17642514836535688675

`a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242763

/-- `a(n-5)+a(n-7)` -/
def P17642514836535688675.Spec : Prop :=
  ∀ n, (P17642514836535688675.a n : ℤ) = A242763 (n + 1)

theorem P17642514836535688675.correct : P17642514836535688675.Spec := by
  intro n
  simp only [A242763, Nat.add_sub_cancel]

end A242763

/-!
# A242764: a(n) = floor(sqrt((2*n)^n)).

The programs for A242764, the canonical program `A242764.P13303973263981488558` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242764 has offset 0).

The definition of A242764 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt((2*n)^n))` (program `A242764.P13303973263981488558`, by `A242764.P13303973263981488558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242764.P13303973263981488558

`floor(sqrt((2*n)^n))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242764

/-- `floor(sqrt((2*n)^n))` -/
def P13303973263981488558.Spec : Prop :=
  ∀ n, (P13303973263981488558.a n : ℤ) = A242764 n

theorem P13303973263981488558.correct : P13303973263981488558.Spec := by
  intro n
  simp only [A242764]

end A242764

/-! ## A242764.P7303318512847594771

`ceil((2*n)^(n/2))-n%2`
-/

namespace A242764.P7303318512847594771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌉ - ((n % 2 : ℕ) : ℤ)

end

end A242764.P7303318512847594771

namespace A242764

/-- `ceil((2*n)^(n/2))-n%2` -/
def P7303318512847594771.Spec : Prop :=
  ∀ n, P7303318512847594771.a n = A242764 n

end A242764

/-! ## A242764.P15078303269908105766

`A316661(n)-and(1, n)`
-/

namespace A242764.P15078303269908105766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316661 n - (Nat.land 1 n : ℤ)

end

end A242764.P15078303269908105766

namespace A242764

/-- `A316661(n)-and(1, n)` -/
def P15078303269908105766.Spec : Prop :=
  ∀ n, P15078303269908105766.a n = A242764 n

end A242764

/-! ## A242764.P775037630424269645

`A316661(n)-A000035(n)`
-/

namespace A242764.P775037630424269645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316661 n - A000035 n

end

end A242764.P775037630424269645

namespace A242764

/-- `A316661(n)-A000035(n)` -/
def P775037630424269645.Spec : Prop :=
  ∀ n, P775037630424269645.a n = A242764 n

end A242764

/-! ## A242764.P8517886419127512155

`A316661(n)-log2(A000034(n))`
-/

namespace A242764.P8517886419127512155
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316661 n : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A242764.P8517886419127512155

namespace A242764

/-- `A316661(n)-log2(A000034(n))` -/
def P8517886419127512155.Spec : Prop :=
  ∀ n, P8517886419127512155.a n = (A242764 n : ℝ)

end A242764

/-! ## A242764.P15295116177166510864

`A316661(n)-char[A005408(n)]`
-/

namespace A242764.P15295116177166510864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316661 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A242764.P15295116177166510864

namespace A242764

/-- `A316661(n)-char[A005408(n)]` -/
def P15295116177166510864.Spec : Prop :=
  ∀ n, P15295116177166510864.a n = A242764 n

end A242764

/-! ## A242764.P565496784339692524

`A316661(n)-char[A000265(n+1)]`
-/

namespace A242764.P565496784339692524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316661 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A242764.P565496784339692524

namespace A242764

/-- `A316661(n)-char[A000265(n+1)]` -/
def P565496784339692524.Spec : Prop :=
  ∀ n, P565496784339692524.a n = A242764 n

end A242764

/-! ## A242764.P612057293399060262

`A316661(n)-A010060(A339451(n))`
-/

namespace A242764.P612057293399060262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316661 n - A010060 (A339451 n).toNat

end

end A242764.P612057293399060262

namespace A242764

/-- `A316661(n)-A010060(A339451(n))` -/
def P612057293399060262.Spec : Prop :=
  ∀ n, P612057293399060262.a n = A242764 n

end A242764

/-! ## A242764.P12977575301569472705

`A316661(n)-A316675(A316671(n+1))`
-/

namespace A242764.P12977575301569472705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316661 n - A316675 (A316671 (n + 1)).toNat

end

end A242764.P12977575301569472705

namespace A242764

/-- `A316661(n)-A316675(A316671(n+1))` -/
def P12977575301569472705.Spec : Prop :=
  ∀ n, P12977575301569472705.a n = A242764 n

end A242764

/-! ## A242764.P12722764398808615167

`ceil(sqrt(A004277(n)^n+abs(1-n)))-1`
-/

namespace A242764.P12722764398808615167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004277 n ^ n + |1 - (n : ℤ)| : ℝ)⌉ - 1

end

end A242764.P12722764398808615167

namespace A242764

/-- `ceil(sqrt(A004277(n)^n+abs(1-n)))-1` -/
def P12722764398808615167.Spec : Prop :=
  ∀ n, P12722764398808615167.a n = A242764 n

end A242764

/-!
# A242766: a(n) = floor(sqrt(n!+1)).

The programs for A242766, the canonical program `A242766.P2105040072015817154` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242766 has offset 0).

The definition of A242766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n!+1))` (program `A242766.P2105040072015817154`, by `A242766.P2105040072015817154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242766.P2105040072015817154

`floor(sqrt(n!+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242766

/-- `floor(sqrt(n!+1))` -/
def P2105040072015817154.Spec : Prop :=
  ∀ n, (P2105040072015817154.a n : ℤ) = A242766 n

theorem P2105040072015817154.correct : P2105040072015817154.Spec := by
  intro n
  simp only [A242766]

end A242766

/-! ## A242766.P14322401573067883643

`floor(sqrt(or(1, n!)))`
-/

namespace A242766.P14322401573067883643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.lor 1 (Nat.factorial n))

end

end A242766.P14322401573067883643

namespace A242766

/-- `floor(sqrt(or(1, n!)))` -/
def P14322401573067883643.Spec : Prop :=
  ∀ n, (P14322401573067883643.a n : ℤ) = A242766 n

end A242766

/-! ## A242766.P6223291035302590429

`floor(sqrt(xor(3, n!)))`
-/

namespace A242766.P6223291035302590429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.xor 3 (Nat.factorial n))

end

end A242766.P6223291035302590429

namespace A242766

/-- `floor(sqrt(xor(3, n!)))` -/
def P6223291035302590429.Spec : Prop :=
  ∀ n, (P6223291035302590429.a n : ℤ) = A242766 n

end A242766

/-! ## A242766.P16367729761841325238

`floor(root(n!+1, 2))`
-/

namespace A242766.P16367729761841325238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n + 1 : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A242766.P16367729761841325238

namespace A242766

/-- `floor(root(n!+1, 2))` -/
def P16367729761841325238.Spec : Prop :=
  ∀ n, P16367729761841325238.a n = A242766 n

end A242766

/-! ## A242766.P5208874834008652687

`ceil(sqrt(n!+2))-1`
-/

namespace A242766.P5208874834008652687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.factorial n + 2 : ℝ)⌉ - 1

end

end A242766.P5208874834008652687

namespace A242766

/-- `ceil(sqrt(n!+2))-1` -/
def P5208874834008652687.Spec : Prop :=
  ∀ n, P5208874834008652687.a n = A242766 n

end A242766

/-! ## A242766.P2640363090546468688

`floor(sqrt(3-(ϕ-n!)))`
-/

namespace A242766.P2640363090546468688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 - (Real.goldenRatio - (Nat.factorial n : ℝ)))⌋

end

end A242766.P2640363090546468688

namespace A242766

/-- `floor(sqrt(3-(ϕ-n!)))` -/
def P2640363090546468688.Spec : Prop :=
  ∀ n, P2640363090546468688.a n = A242766 n

end A242766

/-! ## A242766.P2581748628379948587

`floor(sqrt(∏[(2^n)%2+n]+1))`
-/

namespace A242766.P2581748628379948587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242766.P2581748628379948587

namespace A242766

/-- `floor(sqrt(∏[(2^n)%2+n]+1))` -/
def P2581748628379948587.Spec : Prop :=
  ∀ n, (P2581748628379948587.a n : ℤ) = A242766 n

end A242766

/-! ## A242766.P9169315531671229532

`floor(sqrt(A038507(n)))`
-/

namespace A242766.P9169315531671229532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A038507 n)

end

end A242766.P9169315531671229532

namespace A242766

/-- `floor(sqrt(A038507(n)))` -/
def P9169315531671229532.Spec : Prop :=
  ∀ n, P9169315531671229532.a n = A242766 n

end A242766

/-! ## A242766.P11849891846263326355

`floor(sqrt(A080568(n)))`
-/

namespace A242766.P11849891846263326355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A080568 n)

end

end A242766.P11849891846263326355

namespace A242766

/-- `floor(sqrt(A080568(n)))` -/
def P11849891846263326355.Spec : Prop :=
  ∀ n, P11849891846263326355.a n = A242766 n

end A242766

/-! ## A242766.P3097910225669633353

`floor(sqrt(A087421(n)))`
-/

namespace A242766.P3097910225669633353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A087421 n)

end

end A242766.P3097910225669633353

namespace A242766

/-- `floor(sqrt(A087421(n)))` -/
def P3097910225669633353.Spec : Prop :=
  ∀ n, P3097910225669633353.a n = A242766 n

end A242766

/-!
# A242767: Numbers of repetitions of terms in A242758.

The programs for A242767, the canonical program `A242767.P6276449245007787369` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242767 has offset 2).

The definition of A242767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242767.P6276449245007787369

`A027833(round(sqrt(n²+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A242767

/-- `A027833(round(sqrt(n²+1)))` -/
def P6276449245007787369.Spec : Prop :=
  ∀ n, P6276449245007787369.a n = A242767 (n + 2)

theorem P6276449245007787369.correct : P6276449245007787369.Spec := by
  intro n
  simp only [A242767, Nat.add_sub_cancel]

end A242767

/-! ## A242767.P17528341453723271867

`Δ[lt[A001223(n+1), 3]]`
-/

namespace A242767.P17528341453723271867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P17528341453723271867

namespace A242767

/-- `Δ[lt[A001223(n+1), 3]]` -/
def P17528341453723271867.Spec : Prop :=
  ∀ n, P17528341453723271867.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P5479010336767626893

`Δ[lt[A046933(n+1), 2]]`
-/

namespace A242767.P5479010336767626893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P5479010336767626893

namespace A242767

/-- `Δ[lt[A046933(n+1), 2]]` -/
def P5479010336767626893.Spec : Prop :=
  ∀ n, P5479010336767626893.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P17035022348434666317

`Δ[lt[A339270(n+1), 2]]`
-/

namespace A242767.P17035022348434666317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339270 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P17035022348434666317

namespace A242767

/-- `Δ[lt[A339270(n+1), 2]]` -/
def P17035022348434666317.Spec : Prop :=
  ∀ n, P17035022348434666317.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P4928589853943514819

`Δ[lt[A175193(n+1), 3]]`
-/

namespace A242767.P4928589853943514819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175193 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P4928589853943514819

namespace A242767

/-- `Δ[lt[A175193(n+1), 3]]` -/
def P4928589853943514819.Spec : Prop :=
  ∀ n, P4928589853943514819.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P10804417187308590679

`Δ[lt[A054541(n+2), 3]]`
-/

namespace A242767.P10804417187308590679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P10804417187308590679

namespace A242767

/-- `Δ[lt[A054541(n+2), 3]]` -/
def P10804417187308590679.Spec : Prop :=
  ∀ n, P10804417187308590679.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P4507613829702733745

`Δ[lt[A074927(n+1), 4]]`
-/

namespace A242767.P4507613829702733745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P4507613829702733745

namespace A242767

/-- `Δ[lt[A074927(n+1), 4]]` -/
def P4507613829702733745.Spec : Prop :=
  ∀ n, P4507613829702733745.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P2851200103701253374

`Δ[lt[A218075(n+1), 5]]`
-/

namespace A242767.P2851200103701253374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218075 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P2851200103701253374

namespace A242767

/-- `Δ[lt[A218075(n+1), 5]]` -/
def P2851200103701253374.Spec : Prop :=
  ∀ n, P2851200103701253374.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P5333574242289079607

`Δ[lt[Δ[A000040(n+1)], 3]]`
-/

namespace A242767.P5333574242289079607
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A242767.P5333574242289079607

namespace A242767

/-- `Δ[lt[Δ[A000040(n+1)], 3]]` -/
def P5333574242289079607.Spec : Prop :=
  ∀ n, P5333574242289079607.a n = A242767 (n + 2)

end A242767

/-! ## A242767.P7613799357748484903

`A242768(A029707(n+1))`
-/

namespace A242767.P7613799357748484903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (A029707 (n + 1)).toNat

end

end A242767.P7613799357748484903

namespace A242767

/-- `A242768(A029707(n+1))` -/
def P7613799357748484903.Spec : Prop :=
  ∀ n, P7613799357748484903.a n = A242767 (n + 2)

end A242767

/-!
# A242768: Indices of twin primes in {A242758(n)-3}.

The programs for A242768, the canonical program `A242768.P9991712360003241980` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242768 has offset 2).

The definition of A242768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A242768.P9991712360003241980

`A242767(A082462(n+1)+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A242768

/-- `A242767(A082462(n+1)+2)` -/
def P9991712360003241980.Spec : Prop :=
  ∀ n, P9991712360003241980.a n = A242768 (n + 2)

theorem P9991712360003241980.correct : P9991712360003241980.Spec := by
  intro n
  simp only [A242768, Nat.add_sub_cancel]

end A242768

/-! ## A242768.P16802520130125686750

`A242767(∑[A062301(n+2)]+2)`
-/

namespace A242768.P16802520130125686750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A242768.P16802520130125686750

namespace A242768

/-- `A242767(∑[A062301(n+2)]+2)` -/
def P16802520130125686750.Spec : Prop :=
  ∀ n, P16802520130125686750.a n = A242768 (n + 2)

end A242768

/-! ## A242768.P12590136296576519942

`A242767(n-∑[A106002(n+1)]+2)`
-/

namespace A242768.P12590136296576519942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A242768.P12590136296576519942

namespace A242768

/-- `A242767(n-∑[A106002(n+1)]+2)` -/
def P12590136296576519942.Spec : Prop :=
  ∀ n, P12590136296576519942.a n = A242768 (n + 2)

end A242768

/-! ## A242768.P14184464995835019184

`A027833(∑[char[A029707(n+2)-1]]+1)`
-/

namespace A242768.P14184464995835019184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242768.P14184464995835019184

namespace A242768

/-- `A027833(∑[char[A029707(n+2)-1]]+1)` -/
def P14184464995835019184.Spec : Prop :=
  ∀ n, P14184464995835019184.a n = A242768 (n + 2)

end A242768

/-! ## A242768.P6791071203917191391

`A027833(∑[char[A107770(n+2)-2]]+1)`
-/

namespace A242768.P6791071203917191391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 2) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A242768.P6791071203917191391

namespace A242768

/-- `A027833(∑[char[A107770(n+2)-2]]+1)` -/
def P6791071203917191391.Spec : Prop :=
  ∀ n, P6791071203917191391.a n = A242768 (n + 2)

end A242768

/-! ## A242768.P5125947843982601647

`A027833(A028310(n-A074239(n)))`
-/

namespace A242768.P5125947843982601647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (A028310 ((n : ℤ) - A074239 n).toNat).toNat

end

end A242768.P5125947843982601647

namespace A242768

/-- `A027833(A028310(n-A074239(n)))` -/
def P5125947843982601647.Spec : Prop :=
  ∀ n, P5125947843982601647.a n = A242768 (n + 2)

end A242768

/-! ## A242768.P11798763089976699753

`A027833(A082462(n+1)+A000007(n))`
-/

namespace A242768.P11798763089976699753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (A082462 (n + 1) + A000007 n).toNat

end

end A242768.P11798763089976699753

namespace A242768

/-- `A027833(A082462(n+1)+A000007(n))` -/
def P11798763089976699753.Spec : Prop :=
  ∀ n, P11798763089976699753.a n = A242768 (n + 2)

end A242768

/-! ## A242768.P9290868194699550164

`A027833(∏{d}[A082462(n+1), A014963(#)])`
-/

namespace A242768.P9290868194699550164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d).toNat

end

end A242768.P9290868194699550164

namespace A242768

/-- `A027833(∏{d}[A082462(n+1), A014963(#)])` -/
def P9290868194699550164.Spec : Prop :=
  ∀ n, P9290868194699550164.a n = A242768 (n + 2)

end A242768

/-! ## A242768.P8498502856811650416

`A242767(∑[A100821(n+1)]+2)`
-/

namespace A242768.P8498502856811650416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A242768.P8498502856811650416

namespace A242768

/-- `A242767(∑[A100821(n+1)]+2)` -/
def P8498502856811650416.Spec : Prop :=
  ∀ n, P8498502856811650416.a n = A242768 (n + 2)

end A242768

/-!
# A242771: Number of integer points in a certain quadrilateral scaled by a factor of n (another version).

The programs for A242771, the canonical program `A242771.P9301787724236606164` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242771 has offset 1).

The definition of A242771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A242771.P9301787724236606164

`floor((5*(n+1)-7)*n/12)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242771

/-- `floor((5*(n+1)-7)*n/12)` -/
def P9301787724236606164.Spec : Prop :=
  ∀ n, P9301787724236606164.a n = A242771 (n + 1)

theorem P9301787724236606164.correct : P9301787724236606164.Spec := by
  intro n
  simp only [A242771, Nat.add_sub_cancel]

end A242771

/-! ## A242771.P544714471953036899

`∑[∑[∑{p}[n, floor(3/#)]]]`
-/

namespace A242771.P544714471953036899
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ⌊3 / (p : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P544714471953036899

namespace A242771

/-- `∑[∑[∑{p}[n, floor(3/#)]]]` -/
def P544714471953036899.Spec : Prop :=
  ∀ n, P544714471953036899.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P2424789581934509709

`∑[and(n, -2)-round(xor(1, n)/6)]`
-/

namespace A242771.P2424789581934509709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P2424789581934509709

namespace A242771

/-- `∑[and(n, -2)-round(xor(1, n)/6)]` -/
def P2424789581934509709.Spec : Prop :=
  ∀ n, P2424789581934509709.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P17318750442631616789

`∑[floor(n/3)+n-∑[n%2]]`
-/

namespace A242771.P17318750442631616789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P17318750442631616789

namespace A242771

/-- `∑[floor(n/3)+n-∑[n%2]]` -/
def P17318750442631616789.Spec : Prop :=
  ∀ n, P17318750442631616789.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P5474794237335579115

`∑[floor(∑[5-a(n-1)]/3)]` with `a(0)=0, a(1)=1`
-/

namespace A242771.P5474794237335579115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P5474794237335579115

namespace A242771

/-- `∑[floor(∑[5-a(n-1)]/3)]` -/
def P5474794237335579115.Spec : Prop :=
  ∀ n, P5474794237335579115.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P4675819339213420067

`∑[floor(n/3)+(n-and(1, n))/2]`
-/

namespace A242771.P4675819339213420067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 3⌋ : ℚ) + ((n : ℤ) - (Nat.land 1 n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P4675819339213420067

namespace A242771

/-- `∑[floor(n/3)+(n-and(1, n))/2]` -/
def P4675819339213420067.Spec : Prop :=
  ∀ n, P4675819339213420067.a n = (A242771 (n + 1) : ℚ)

end A242771

/-! ## A242771.P349696714122940046

`∑[gcd(2, a(n-3))]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A242771.P349696714122940046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  Nat.gcd 2 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A242771.P349696714122940046

namespace A242771

/-- `∑[gcd(2, a(n-3))]+a(n-2)` -/
def P349696714122940046.Spec : Prop :=
  ∀ n, (P349696714122940046.a n : ℤ) = A242771 (n + 1)

end A242771

/-! ## A242771.P9046418039643185320

`∑[a(n-3)+5]-a(n-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A242771.P9046418039643185320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A242771.P9046418039643185320

namespace A242771

/-- `∑[a(n-3)+5]-a(n-1)` -/
def P9046418039643185320.Spec : Prop :=
  ∀ n, P9046418039643185320.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P2980108151066211342

`C(n, 2)-A211540(n)`
-/

namespace A242771.P2980108151066211342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - A211540 n

end

end A242771.P2980108151066211342

namespace A242771

/-- `C(n, 2)-A211540(n)` -/
def P2980108151066211342.Spec : Prop :=
  ∀ n, P2980108151066211342.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P9473965675517852395

`∑[n-Δ[A001399(n)]]`
-/

namespace A242771.P9473965675517852395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P9473965675517852395

namespace A242771

/-- `∑[n-Δ[A001399(n)]]` -/
def P9473965675517852395.Spec : Prop :=
  ∀ n, P9473965675517852395.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P13303972269172020213

`∑[A063208(n+1)-1]`
-/

namespace A242771.P13303972269172020213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063208 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P13303972269172020213

namespace A242771

/-- `∑[A063208(n+1)-1]` -/
def P13303972269172020213.Spec : Prop :=
  ∀ n, P13303972269172020213.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P16560872041201005264

`∑[A242774(n+1)-2]`
-/

namespace A242771.P16560872041201005264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242774 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P16560872041201005264

namespace A242771

/-- `∑[A242774(n+1)-2]` -/
def P16560872041201005264.Spec : Prop :=
  ∀ n, P16560872041201005264.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P15026113581996895590

`∑[n-A011960(n+1)]`
-/

namespace A242771.P15026113581996895590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P15026113581996895590

namespace A242771

/-- `∑[n-A011960(n+1)]` -/
def P15026113581996895590.Spec : Prop :=
  ∀ n, P15026113581996895590.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P2134728070133987916

`∑[n-A103221(n+1)]`
-/

namespace A242771.P2134728070133987916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242771.P2134728070133987916

namespace A242771

/-- `∑[n-A103221(n+1)]` -/
def P2134728070133987916.Spec : Prop :=
  ∀ n, P2134728070133987916.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P9727569037210698974

`A002789(n+1)-2*(n+1)`
-/

namespace A242771.P9727569037210698974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002789 (n + 1) - (2 * (n + 1) : ℤ)

end

end A242771.P9727569037210698974

namespace A242771

/-- `A002789(n+1)-2*(n+1)` -/
def P9727569037210698974.Spec : Prop :=
  ∀ n, P9727569037210698974.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P10159522807567971842

`A174709(n)+A171662(n)`
-/

namespace A242771.P10159522807567971842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 n + A171662 n

end

end A242771.P10159522807567971842

namespace A242771

/-- `A174709(n)+A171662(n)` -/
def P10159522807567971842.Spec : Prop :=
  ∀ n, P10159522807567971842.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P5567402628950635706

`A171452(n)-A069905(n)`
-/

namespace A242771.P5567402628950635706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171452 n - A069905 n

end

end A242771.P5567402628950635706

namespace A242771

/-- `A171452(n)-A069905(n)` -/
def P5567402628950635706.Spec : Prop :=
  ∀ n, P5567402628950635706.a n = A242771 (n + 1)

end A242771

/-! ## A242771.P7104546262623190189

`A161680(n)-A211540(n)`
-/

namespace A242771.P7104546262623190189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A211540 n

end

end A242771.P7104546262623190189

namespace A242771

/-- `A161680(n)-A211540(n)` -/
def P7104546262623190189.Spec : Prop :=
  ∀ n, P7104546262623190189.a n = A242771 (n + 1)

end A242771

/-!
# A242772: The lesser of twin primes p1 such that 2*p1 + p2 is a prime number (A174913) and also the lesser of other twin primes in A174913.

The programs for A242772, there is no canonical definition to state claims against.
-/

/-! ## A242772.P14330438061124653570

`A242773(n+1)-2`
-/

namespace A242772.P14330438061124653570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242773 (n + 1) - 2

end

end A242772.P14330438061124653570

/-! ## A242772.P14585001563100215016

`A280560(A000265(n+1))+A242773(n+1)`
-/

namespace A242772.P14585001563100215016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A000265 (n + 1)).toNat + A242773 (n + 1)

end

end A242772.P14585001563100215016

/-! ## A242772.P339624735148677992

`A280560(A111800(n+1))+A242773(n+1)`
-/

namespace A242772.P339624735148677992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A111800 (n + 1)).toNat + A242773 (n + 1)

end

end A242772.P339624735148677992

/-! ## A242772.P16160612903406614960

`A349355(A077130(n+1))+A242773(n+1)`
-/

namespace A242772.P16160612903406614960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349355 (A077130 (n + 1)).toNat + A242773 (n + 1)

end

end A242772.P16160612903406614960

/-! ## A242772.P14001331066349986633

`A280560(A005408(n))+A242773(n+1)`
-/

namespace A242772.P14001331066349986633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A005408 n).toNat + A242773 (n + 1)

end

end A242772.P14001331066349986633

/-! ## A242772.P13346133322375886927

`A280560(A317106(n+1))+A242773(n+1)`
-/

namespace A242772.P13346133322375886927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A317106 (n + 1)).toNat + A242773 (n + 1)

end

end A242772.P13346133322375886927

/-! ## A242772.P10576520724479996562

`A280560(A004771(n))+A242773(n+1)`
-/

namespace A242772.P10576520724479996562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A004771 n).toNat + A242773 (n + 1)

end

end A242772.P10576520724479996562

/-! ## A242772.P6179461405072348343

`A349355(A005384(n+1))+A242773(n+1)`
-/

namespace A242772.P6179461405072348343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349355 (A005384 (n + 1)).toNat + A242773 (n + 1)

end

end A242772.P6179461405072348343

/-! ## A242772.P8078723493642502362

`A280560(A257499(n+1))+A242773(n+1)`
-/

namespace A242772.P8078723493642502362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A257499 (n + 1)).toNat + A242773 (n + 1)

end

end A242772.P8078723493642502362

/-!
# A242773: The greater of twin primes p2 such that 2*p1 + p2 is a prime number (A174913) and also the lesser of other twin primes in A174913.

The programs for A242773, there is no canonical definition to state claims against.
-/

/-! ## A242773.P17188000055955329535

`A242772(n+1)+2`
-/

namespace A242773.P17188000055955329535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242772 (n + 1) + 2

end

end A242773.P17188000055955329535

/-! ## A242773.P11815541778616954664

`∩[A023246(n+1), A174915(n+1)]+2`
-/

namespace A242773.P11815541778616954664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A242773.P11815541778616954664

/-! ## A242773.P6810153089871550333

`A082284(A242772(n+1))`
-/

namespace A242773.P6810153089871550333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A242772 (n + 1)).toNat

end

end A242773.P6810153089871550333

/-! ## A242773.P6592681243224296045

`A082284(∩[A023246(n+1), A174915(n+1)])`
-/

namespace A242773.P6592681243224296045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174915 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A242773.P6592681243224296045

/-!
# A242774: a(n) = ceiling( n / 2 ) + ceiling( n / 3 ).

The programs for A242774, the canonical program `A242774.P12667627942924446262` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A242774 has offset 1).

The definition of A242774 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)/2)+ceil((n+1)/3)` (program `A242774.P12667627942924446262`, by `A242774.P12667627942924446262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A242774.P12667627942924446262

`ceil((n+1)/2)+ceil((n+1)/3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A242774

/-- `ceil((n+1)/2)+ceil((n+1)/3)` -/
def P12667627942924446262.Spec : Prop :=
  ∀ n, P12667627942924446262.a n = A242774 (n + 1)

theorem P12667627942924446262.correct : P12667627942924446262.Spec := by
  intro n
  simp only [A242774, Nat.add_sub_cancel]

end A242774

/-! ## A242774.P17957112628581641094

`∑[floor(log2(gcd(6, n)))]`
-/

namespace A242774.P17957112628581641094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.gcd 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242774.P17957112628581641094

namespace A242774

/-- `∑[floor(log2(gcd(6, n)))]` -/
def P17957112628581641094.Spec : Prop :=
  ∀ n, (P17957112628581641094.a n : ℤ) = A242774 (n + 1)

end A242774

/-! ## A242774.P1293463371081002191

`∑[(2*xor(1, n²))%3]`
-/

namespace A242774.P1293463371081002191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 (n ^ 2) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242774.P1293463371081002191

namespace A242774

/-- `∑[(2*xor(1, n²))%3]` -/
def P1293463371081002191.Spec : Prop :=
  ∀ n, (P1293463371081002191.a n : ℤ) = A242774 (n + 1)

end A242774

/-! ## A242774.P18109264084381480473

`ceil(∑[5-a(n-1)]/3)` with `a(0)=4`
-/

namespace A242774.P18109264084381480473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A242774.P18109264084381480473

namespace A242774

/-- `ceil(∑[5-a(n-1)]/3)` -/
def P18109264084381480473.Spec : Prop :=
  ∀ n, P18109264084381480473.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P15427744691927905400

`floor(∑[5-a(n-1)]/3)` with `a(0)=6, a(1)=1`
-/

namespace A242774.P15427744691927905400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A242774.P15427744691927905400

namespace A242774

/-- `floor(∑[5-a(n-1)]/3)` -/
def P15427744691927905400.Spec : Prop :=
  ∀ n, P15427744691927905400.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P18037728168181132418

`A020725(A063208(n+1))`
-/

namespace A242774.P18037728168181132418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A063208 (n + 1)).toNat

end

end A242774.P18037728168181132418

namespace A242774

/-- `A020725(A063208(n+1))` -/
def P18037728168181132418.Spec : Prop :=
  ∀ n, P18037728168181132418.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P15237835484062090216

`∑[1-A115360(n+1)]`
-/

namespace A242774.P15237835484062090216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A115360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242774.P15237835484062090216

namespace A242774

/-- `∑[1-A115360(n+1)]` -/
def P15237835484062090216.Spec : Prop :=
  ∀ n, P15237835484062090216.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P1243233058611203832

`∑[A115357(n+4)]`
-/

namespace A242774.P1243233058611203832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115357 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A242774.P1243233058611203832

namespace A242774

/-- `∑[A115357(n+4)]` -/
def P1243233058611203832.Spec : Prop :=
  ∀ n, P1243233058611203832.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P9876656874531674561

`A008619(A047202(n+1))`
-/

namespace A242774.P9876656874531674561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A047202 (n + 1)).toNat

end

end A242774.P9876656874531674561

namespace A242774

/-- `A008619(A047202(n+1))` -/
def P9876656874531674561.Spec : Prop :=
  ∀ n, P9876656874531674561.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P54326086481758012

`A080513(A047223(n+1))`
-/

namespace A242774.P54326086481758012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A047223 (n + 1)).toNat

end

end A242774.P54326086481758012

namespace A242774

/-- `A080513(A047223(n+1))` -/
def P54326086481758012.Spec : Prop :=
  ∀ n, P54326086481758012.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P8003404986546754252

`A080513(A063199(n+1))`
-/

namespace A242774.P8003404986546754252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A063199 (n + 1)).toNat

end

end A242774.P8003404986546754252

namespace A242774

/-- `A080513(A063199(n+1))` -/
def P8003404986546754252.Spec : Prop :=
  ∀ n, P8003404986546754252.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P5489080002142712407

`A008619(A187332(n+1))`
-/

namespace A242774.P5489080002142712407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A187332 (n + 1)).toNat

end

end A242774.P5489080002142712407

namespace A242774

/-- `A008619(A187332(n+1))` -/
def P5489080002142712407.Spec : Prop :=
  ∀ n, P5489080002142712407.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P18294711587270872642

`A008620(A047204(n+1))`
-/

namespace A242774.P18294711587270872642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A047204 (n + 1)).toNat

end

end A242774.P18294711587270872642

namespace A242774

/-- `A008620(A047204(n+1))` -/
def P18294711587270872642.Spec : Prop :=
  ∀ n, P18294711587270872642.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P388979987671238916

`A086161(A047221(n+1))`
-/

namespace A242774.P388979987671238916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A047221 (n + 1)).toNat

end

end A242774.P388979987671238916

namespace A242774

/-- `A086161(A047221(n+1))` -/
def P388979987671238916.Spec : Prop :=
  ∀ n, P388979987671238916.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P4171132823492634006

`A110659(A063227(n+1))`
-/

namespace A242774.P4171132823492634006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A063227 (n + 1)).toNat

end

end A242774.P4171132823492634006

namespace A242774

/-- `A110659(A063227(n+1))` -/
def P4171132823492634006.Spec : Prop :=
  ∀ n, P4171132823492634006.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P3785833359107961367

`A026806(A016873(n))`
-/

namespace A242774.P3785833359107961367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A016873 n).toNat

end

end A242774.P3785833359107961367

namespace A242774

/-- `A026806(A016873(n))` -/
def P3785833359107961367.Spec : Prop :=
  ∀ n, P3785833359107961367.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P3821703343949460187

`A026806(A016945(n)-(n+1))`
-/

namespace A242774.P3821703343949460187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A016945 n - (n + 1 : ℤ)).toNat

end

end A242774.P3821703343949460187

namespace A242774

/-- `A026806(A016945(n)-(n+1))` -/
def P3821703343949460187.Spec : Prop :=
  ∀ n, P3821703343949460187.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P14974064278264574462

`A008615(A016885(n+1))`
-/

namespace A242774.P14974064278264574462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A016885 (n + 1)).toNat

end

end A242774.P14974064278264574462

namespace A242774

/-- `A008615(A016885(n+1))` -/
def P14974064278264574462.Spec : Prop :=
  ∀ n, P14974064278264574462.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P13951244005238651785

`A011960(A016861(n+1))`
-/

namespace A242774.P13951244005238651785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A016861 (n + 1)).toNat

end

end A242774.P13951244005238651785

namespace A242774

/-- `A011960(A016861(n+1))` -/
def P13951244005238651785.Spec : Prop :=
  ∀ n, P13951244005238651785.a n = A242774 (n + 1)

end A242774

/-! ## A242774.P5318946489197925386

`A008615(A016933(n+1)-n)`
-/

namespace A242774.P5318946489197925386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A016933 (n + 1) - (n : ℤ)).toNat

end

end A242774.P5318946489197925386

namespace A242774

/-- `A008615(A016933(n+1)-n)` -/
def P5318946489197925386.Spec : Prop :=
  ∀ n, P5318946489197925386.a n = A242774 (n + 1)

end A242774

/-!
# A242776: Primes p such that 2^p + p^2 is not squarefree.

The programs for A242776, there is no canonical definition to state claims against.
-/

/-! ## A242776.P5897352324643159098

`p?[A350668(n)]%A350641(2*n+1)`
-/

namespace A242776.P5897352324643159098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A350641 (2 * n + 1))

end

end A242776.P5897352324643159098

/-! ## A242776.P11111346748353860476

`p?[A248375(2*n)%A248389(2*n+1)]`
-/

namespace A242776.P11111346748353860476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248375 (2 * n)) (A248389 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242776.P11111346748353860476

/-! ## A242776.P11395062606190658751

`p?[A074306(3*n+1)%A074266(3*(n+1))]`
-/

namespace A242776.P11395062606190658751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074306 (3 * n + 1)) (A074266 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242776.P11395062606190658751

/-! ## A242776.P10962285696742186544

`∩[A138889(n+1), A350668(n)]`
-/

namespace A242776.P10962285696742186544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242776.P10962285696742186544

/-! ## A242776.P3894523908332838011

`∩[A173135(n+1), A350668(n)]`
-/

namespace A242776.P3894523908332838011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242776.P3894523908332838011

/-!
# A242777: Primes p such that neither 2^p - 2 nor 2^p + 2 is squarefree.

The programs for A242777, there is no canonical definition to state claims against.
-/

/-! ## A242777.P8512879750549116159

`p?[A179282(n+1)]`
-/

namespace A242777.P8512879750549116159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242777.P8512879750549116159

/-! ## A242777.P14929827971541971001

`p?[A187965(n+1)+1]`
-/

namespace A242777.P14929827971541971001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187965 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242777.P14929827971541971001

/-! ## A242777.P15228371611439527166

`p?[record[A179282(A052938(n))]]`
-/

namespace A242777.P15228371611439527166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242777.P15228371611439527166

/-! ## A242777.P4557820259868381898

`p?[record[A179282(A117910(n))]]`
-/

namespace A242777.P4557820259868381898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179282 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242777.P4557820259868381898

/-! ## A242777.P1962949122053985484

`record[A006530(A179282(n+3))]`
-/

namespace A242777.P1962949122053985484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A179282 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242777.P1962949122053985484

/-!
# A242781: Expansion of (1 - 2*x - sqrt(1-4*x))/(4*x^2 + sqrt(1-4*x)*(3*x+1) - 5*x + 1).

The programs for A242781, there is no canonical definition to state claims against.
-/

/-! ## A242781.P5685717042740171607

`A371758(n+1)-A001700(n)`
-/

namespace A242781.P5685717042740171607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371758 (n + 1) - A001700 n

end

end A242781.P5685717042740171607

/-! ## A242781.P1388049082067613723

`A105872(n+1)-A390702(n)-A001700(n)`
-/

namespace A242781.P1388049082067613723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105872 (n + 1) - A390702 n - A001700 n

end

end A242781.P1388049082067613723

/-! ## A242781.P17229952409165839003

`A366107(2*(n+2))-A001405(2*n+1)`
-/

namespace A242781.P17229952409165839003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366107 (2 * (n + 2)) - A001405 (2 * n + 1)

end

end A242781.P17229952409165839003

/-! ## A242781.P17665428206629498245

`A366107(2*(n+2))-A366108(2*n+3)`
-/

namespace A242781.P17665428206629498245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366107 (2 * (n + 2)) - A366108 (2 * n + 3)

end

end A242781.P17665428206629498245

/-!
# A242784: Number A(n,k) of permutations of [n] avoiding the consecutive step pattern given by the binary expansion of k, where 1=up and 0=down; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A242784, there is no canonical definition to state claims against.
-/

/-! ## A242784.P307735728557441966

`A080934(n%A113108(n))`
-/

namespace A242784.P307735728557441966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 (Int.tmod (n : ℤ) (A113108 n)).toNat

end

end A242784.P307735728557441966

/-! ## A242784.P12600465906473433723

`gcd(A080934(n), A113108(n))`
-/

namespace A242784.P12600465906473433723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080934 n) (A113108 n)

end

end A242784.P12600465906473433723

/-! ## A242784.P11235756946838521067

`gcd(A343875(n)!, A320955(n))`
-/

namespace A242784.P11235756946838521067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A343875 n).toNat : ℤ) (A320955 n)

end

end A242784.P11235756946838521067

/-! ## A242784.P12587141233696986527

`A320955(n*A351357(n+1))`
-/

namespace A242784.P12587141233696986527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 ((n : ℤ) * A351357 (n + 1)).toNat

end

end A242784.P12587141233696986527

/-! ## A242784.P10816353904173171905

`A320955(lcm(n, A351357(n+1)))`
-/

namespace A242784.P10816353904173171905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320955 (Int.lcm (n : ℤ) (A351357 (n + 1)))

end

end A242784.P10816353904173171905

/-!
# A242785: Number of permutations of [n] avoiding the consecutive step pattern given by the binary expansion of n, where 1=up and 0=down.

The programs for A242785, there is no canonical definition to state claims against.
-/

/-! ## A242785.P14581156971988440546

`A242784(∑[4*n])`
-/

namespace A242785.P14581156971988440546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242785.P14581156971988440546

/-! ## A242785.P6729093513947108275

`A063435(n)*A242784(A046092(n))`
-/

namespace A242785.P6729093513947108275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A242784 (A046092 n).toNat

end

end A242785.P6729093513947108275

/-! ## A242785.P1795668936878839290

`or(A000007(n), A242784(A046092(n)))`
-/

namespace A242785.P1795668936878839290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A242784 (A046092 n).toNat)

end

end A242785.P1795668936878839290

/-! ## A242785.P11110821697254233080

`A242784(A046092(n))/A007318(∑[n])`
-/

namespace A242785.P11110821697254233080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242784 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A242785.P11110821697254233080

/-! ## A242785.P7119944708307449970

`A014963(6*(n+2))*A242784(A046092(n))`
-/

namespace A242785.P7119944708307449970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * A242784 (A046092 n).toNat

end

end A242785.P7119944708307449970

/-!
# A242789: Least number k > 1 such that (k^k-n)/(k-n) is an integer.

The programs for A242789, there is no canonical definition to state claims against.
-/

/-! ## A242789.P11301467126743317907

`A214684(A216231(2*(n+1)))+A093429(n+1)`
-/

namespace A242789.P11301467126743317907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214684 (A216231 (2 * (n + 1))).toNat + A093429 (n + 1)

end

end A242789.P11301467126743317907

/-! ## A242789.P15447790743070632612

`A341945(2*n+6)+A071661(A051390(n+3))`
-/

namespace A242789.P15447790743070632612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (2 * n + 6) + A071661 (A051390 (n + 3)).toNat

end

end A242789.P15447790743070632612

/-! ## A242789.P8070944802037540567

`A242627(lt[A189150(n+1), A130400(2*(n+1))])`
-/

namespace A242789.P8070944802037540567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242627 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A242789.P8070944802037540567

/-!
# A242790: Number of connected diamond-free graphs on n nodes.

The programs for A242790, there is no canonical definition to state claims against.
-/

/-! ## A242790.P16220522920092906522

`A001349(n+1)-A243250(n+1)`
-/

namespace A242790.P16220522920092906522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243250 (n + 1)

end

end A242790.P16220522920092906522

/-! ## A242790.P18436122892523737168

`A201922(A000124(n))-A243250(n+1)`
-/

namespace A242790.P18436122892523737168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243250 (n + 1)

end

end A242790.P18436122892523737168

/-! ## A242790.P4237146799434893265

`A003049(n+1)+A158007(n+1)-A243250(n+1)`
-/

namespace A242790.P4237146799434893265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A243250 (n + 1))

end

end A242790.P4237146799434893265

/-! ## A242790.P8912212715840470011

`A048192(n+1)+A241843(n+1)-A243250(n+1)`
-/

namespace A242790.P8912212715840470011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A243250 (n + 1))

end

end A242790.P8912212715840470011

/-! ## A242790.P17061861153915240673

`A064731(n+1)+A241842(n+1)-A243250(n+1)`
-/

namespace A242790.P17061861153915240673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064731 (n + 1) + (A241842 (n + 1) - A243250 (n + 1))

end

end A242790.P17061861153915240673

/-!
# A242791: Number of connected open-bowtie-free graphs on n nodes.

The programs for A242791, there is no canonical definition to state claims against.
-/

/-! ## A242791.P863570480630706962

`A001349(n+1)-A243247(n+1)`
-/

namespace A242791.P863570480630706962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243247 (n + 1)

end

end A242791.P863570480630706962

/-! ## A242791.P10525311410230003201

`A201922(A000124(n))-A243247(n+1)`
-/

namespace A242791.P10525311410230003201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243247 (n + 1)

end

end A242791.P10525311410230003201

/-! ## A242791.P15808380042073353789

`A003049(n+1)+A158007(n+1)-A243247(n+1)`
-/

namespace A242791.P15808380042073353789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A243247 (n + 1))

end

end A242791.P15808380042073353789

/-! ## A242791.P18126502891676624377

`A048192(n+1)+A241843(n+1)-A243247(n+1)`
-/

namespace A242791.P18126502891676624377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A243247 (n + 1))

end

end A242791.P18126502891676624377

/-! ## A242791.P10637768305952527536

`A079574(n+1)+A243244(n+1)-A243247(n+1)`
-/

namespace A242791.P10637768305952527536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) + (A243244 (n + 1) - A243247 (n + 1))

end

end A242791.P10637768305952527536

/-!
# A242792: Number of connected bowtie-free graphs on n nodes.

The programs for A242792, there is no canonical definition to state claims against.
-/

/-! ## A242792.P8001495301510256149

`A243549(n+1)+A243548(n+1)`
-/

namespace A242792.P8001495301510256149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243549 (n + 1) + A243548 (n + 1)

end

end A242792.P8001495301510256149

/-! ## A242792.P2836656569699966479

`A001349(n+1)-A243249(n+1)`
-/

namespace A242792.P2836656569699966479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243249 (n + 1)

end

end A242792.P2836656569699966479

/-! ## A242792.P265851053925537392

`A201922(A000124(n))-A243249(n+1)`
-/

namespace A242792.P265851053925537392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243249 (n + 1)

end

end A242792.P265851053925537392

/-! ## A242792.P18092701090557199581

`A003049(n+1)+A158007(n+1)-A243249(n+1)`
-/

namespace A242792.P18092701090557199581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A243249 (n + 1))

end

end A242792.P18092701090557199581

/-! ## A242792.P8241272041272748455

`A048192(n+1)+A241843(n+1)-A243249(n+1)`
-/

namespace A242792.P8241272041272748455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A243249 (n + 1))

end

end A242792.P8241272041272748455

/-!
# A242794: a(n) = [x^n] ( 1 + x*A(x)^n )^(n+1) / (n+1) for n>=0, with a(0)=1.

The programs for A242794, there is no canonical definition to state claims against.
-/

/-! ## A242794.P9608555898261836501

`A083920(A259485(n+1))+A001256(n)`
-/

namespace A242794.P9608555898261836501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A259485 (n + 1)).toNat + A001256 n

end

end A242794.P9608555898261836501

/-!
# A242795: a(n) = [x^n] ( 1 + x*A(x)^(n+1) )^(n+1) / (n+1) for n>=0, with a(0)=1.

The programs for A242795, there is no canonical definition to state claims against.
-/

/-! ## A242795.P13969858258051402900

`A194417(n^n+1)-1`
-/

namespace A242795.P13969858258051402900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (n ^ n + 1) - 1

end

end A242795.P13969858258051402900

/-!
# A242798: Expansion of -x*d(log((1-x*(2/sqrt(3*x)) * sin((1/3) * arcsin(sqrt(27*x/4))))))/dx.

The programs for A242798, there is no canonical definition to state claims against.
-/

/-! ## A242798.P7633121709117310609

`A091491(A001105(n))-A000007(n)`
-/

namespace A242798.P7633121709117310609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A001105 n).toNat - A000007 n

end

end A242798.P7633121709117310609

/-! ## A242798.P6145242239280560521

`A057427(n)*A091491(A001105(n))`
-/

namespace A242798.P6145242239280560521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A091491 (A001105 n).toNat

end

end A242798.P6145242239280560521

/-! ## A242798.P16172118659662466892

`A091491(A001105(n))*A178334(n)`
-/

namespace A242798.P16172118659662466892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A001105 n).toNat * A178334 n

end

end A242798.P16172118659662466892

/-! ## A242798.P670039146274485794

`A091491(A001105(n))%A005809(n)`
-/

namespace A242798.P670039146274485794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091491 (A001105 n).toNat) (A005809 n)

end

end A242798.P670039146274485794

/-! ## A242798.P2044560139435924581

`A087049(A001105(n+1))*A091491(A001105(n))`
-/

namespace A242798.P2044560139435924581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A001105 (n + 1)).toNat * A091491 (A001105 n).toNat

end

end A242798.P2044560139435924581

/-! ## A242798.P11965874901386392386

`A323224(∑[4*n])`
-/

namespace A242798.P11965874901386392386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323224 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A242798.P11965874901386392386

/-!
# A242799: Numbers n such that A = n + digitsum(n) is divisible by the highest power of 10 <= A.

The programs for A242799, there is no canonical definition to state claims against.
-/

/-! ## A242799.P12991495429002811856

`eq[1, A055640(A062028(n))]`
-/

namespace A242799.P12991495429002811856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242799.P12991495429002811856

/-! ## A242799.P9652645921821027038

`eq[1, A055640(A007953(n)+n)]`
-/

namespace A242799.P9652645921821027038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A007953 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A242799.P9652645921821027038

/-! ## A242799.P2083683391476080650

`eq[A000007(n), A035930(A062028(n))]`
-/

namespace A242799.P2083683391476080650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242799.P2083683391476080650

/-! ## A242799.P7238320361310217215

`eq[A000038(n), A035930(A062028(n))]`
-/

namespace A242799.P7238320361310217215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A242799.P7238320361310217215

/-! ## A242799.P14459482057830676758

`record[A096234(A037124(n+2))]`
-/

namespace A242799.P14459482057830676758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 (A037124 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A242799.P14459482057830676758

