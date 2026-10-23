import SequenceMachineLib.Basic
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C039
import Seq.B002.C003
import Seq.B003.C001
import Seq.B007.C001
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A388129: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n,k) * binomial(2*n+1,k).

The programs for A388129, there is no canonical definition to state claims against.
-/

/-! ## A388129.P7572724311664641371

`A249975(2*n+1)/4`
-/

namespace A388129.P7572724311664641371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249975 (2 * n + 1) : ℚ) / 4

end

end A388129.P7572724311664641371

/-! ## A388129.P2547482534780721505

`A208752((n+1)²+n²)`
-/

namespace A388129.P2547482534780721505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208752 ((n + 1) ^ 2 + n ^ 2)

end

end A388129.P2547482534780721505

/-! ## A388129.P12843813722157545749

`A049600(A022266(n+1))`
-/

namespace A388129.P12843813722157545749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A022266 (n + 1)).toNat

end

end A388129.P12843813722157545749

/-! ## A388129.P11094638508538333187

`A055587(A022267(n+1))`
-/

namespace A388129.P11094638508538333187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A022267 (n + 1)).toNat

end

end A388129.P11094638508538333187

/-! ## A388129.P1751080231821024245

`A106195(A062708(n+1))`
-/

namespace A388129.P1751080231821024245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A062708 (n + 1)).toNat

end

end A388129.P1751080231821024245

/-!
# A388130: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n,k) * binomial(3*n+1,k).

The programs for A388130, there is no canonical definition to state claims against.
-/

/-! ## A388130.P15198616097257723160

`A208341(A194268(n))`
-/

namespace A388130.P15198616097257723160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A194268 n).toNat

end

end A388130.P15198616097257723160

/-! ## A388130.P825310028667316162

`A055587(A139273(n+1))`
-/

namespace A388130.P825310028667316162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A139273 (n + 1)).toNat

end

end A388130.P825310028667316162

/-! ## A388130.P10627509374741734653

`A106195(A125201(n+1))`
-/

namespace A388130.P10627509374741734653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A125201 (n + 1)).toNat

end

end A388130.P10627509374741734653

/-! ## A388130.P9745679941575557236

`A049600(A383464(n+1))`
-/

namespace A388130.P9745679941575557236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A383464 (n + 1)).toNat

end

end A388130.P9745679941575557236

/-! ## A388130.P8482353743167525117

`A208341(A014634(n)+n)`
-/

namespace A388130.P8482353743167525117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A014634 n + (n : ℤ)).toNat

end

end A388130.P8482353743167525117

/-!
# A388136: Total number of cycles in all heapable permutations of length n.

The programs for A388136, there is no canonical definition to state claims against.
-/

/-! ## A388136.P2742491050719825696

`∑[A376957(A124348(n+1))]`
-/

namespace A388136.P2742491050719825696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376957 (A124348 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388136.P2742491050719825696

/-! ## A388136.P9349654157777968768

`A342517(∑[n²])+n`
-/

namespace A388136.P9349654157777968768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A388136.P9349654157777968768

/-!
# A388137: a(n) = position of first even digit of 2^n, starting from left, or 0 if no even digit exists.

The programs for A388137, there is no canonical definition to state claims against.
-/

/-! ## A388137.P7072839746553715269

`A305054(A315673(n))`
-/

namespace A388137.P7072839746553715269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305054 (A315673 n).toNat

end

end A388137.P7072839746553715269

/-! ## A388137.P2936504110807094942

`A367627(A276032(n+1))`
-/

namespace A388137.P2936504110807094942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367627 (A276032 (n + 1)).toNat

end

end A388137.P2936504110807094942

/-! ## A388137.P16507335797310474129

`A328194(A374055(n+1))`
-/

namespace A388137.P16507335797310474129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A374055 (n + 1)).toNat

end

end A388137.P16507335797310474129

/-! ## A388137.P15659436325889751469

`A241918(A241912(A241912(A242418(A242418(n+1)))))`
-/

namespace A388137.P15659436325889751469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241918 (A241912 (A241912 (A242418 (A242418 (n + 1)).toNat).toNat).toNat).toNat

end

end A388137.P15659436325889751469

/-! ## A388137.P2008742946011814771

`A319679(A066187(n+1))`
-/

namespace A388137.P2008742946011814771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319679 (A066187 (n + 1)).toNat

end

end A388137.P2008742946011814771

/-!
# A388138: Total number of inversions in all heapable permutations of length n.

The programs for A388138, there is no canonical definition to state claims against.
-/

/-! ## A388138.P4144448237276848423

`A333526(A148354(n))`
-/

namespace A388138.P4144448237276848423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333526 (A148354 n).toNat

end

end A388138.P4144448237276848423

/-! ## A388138.P1081542721695832830

`A335508(n)+A061357(A335530(n))`
-/

namespace A388138.P1081542721695832830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335508 n + A061357 (A335530 n).toNat

end

end A388138.P1081542721695832830

/-!
# A388139: Total number of fixed points in all heapable permutations of length n.

The programs for A388139, there is no canonical definition to state claims against.
-/

/-! ## A388139.P4862080820021132942

`A026834(A151142(n))`
-/

namespace A388139.P4862080820021132942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A151142 n).toNat

end

end A388139.P4862080820021132942

/-! ## A388139.P14675398183998807399

`∑[A374633(A205498(n)+1)]`
-/

namespace A388139.P14675398183998807399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (A205498 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388139.P14675398183998807399

/-!
# A388140: Number of axis-aligned 2 X 2 squares in the 3D projection of a 3n-dimensional hypercube with side length 2.

The programs for A388140, the canonical program `A388140.P16253514462590538591` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388140 has offset 1).

The definition of A388140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388140.P16253514462590538591

`3*2^(n+1)*(2^(n+1)-1)²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A388140

/-- `3*2^(n+1)*(2^(n+1)-1)²` -/
def P16253514462590538591.Spec : Prop :=
  ∀ n, P16253514462590538591.a n = A388140 (n + 1)

theorem P16253514462590538591.correct : P16253514462590538591.Spec := by
  intro n
  simp only [A388140, Nat.add_sub_cancel]

end A388140

/-! ## A388140.P18213478227319701550

`A270205(2^(n+1))`
-/

namespace A388140.P18213478227319701550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 (2 ^ (n + 1))

end

end A388140.P18213478227319701550

namespace A388140

/-- `A270205(2^(n+1))` -/
def P18213478227319701550.Spec : Prop :=
  ∀ n, P18213478227319701550.a n = A388140 (n + 1)

end A388140

/-! ## A388140.P7482536730460549139

`lcm(A091629(n+1), A127509(n+1))`
-/

namespace A388140.P7482536730460549139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091629 (n + 1)) (A127509 (n + 1))

end

end A388140.P7482536730460549139

namespace A388140

/-- `lcm(A091629(n+1), A127509(n+1))` -/
def P7482536730460549139.Spec : Prop :=
  ∀ n, (P7482536730460549139.a n : ℤ) = A388140 (n + 1)

end A388140

/-! ## A388140.P9560409672898147230

`A270205(A029744(2*(n+1)))+A166586(2*(n+1))`
-/

namespace A388140.P9560409672898147230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 (A029744 (2 * (n + 1))).toNat + A166586 (2 * (n + 1))

end

end A388140.P9560409672898147230

namespace A388140

/-- `A270205(A029744(2*(n+1)))+A166586(2*(n+1))` -/
def P9560409672898147230.Spec : Prop :=
  ∀ n, P9560409672898147230.a n = A388140 (n + 1)

end A388140

/-! ## A388140.P10171343579310714779

`A213393(A033484(n))`
-/

namespace A388140.P10171343579310714779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213393 (A033484 n).toNat

end

end A388140.P10171343579310714779

namespace A388140

/-- `A213393(A033484(n))` -/
def P10171343579310714779.Spec : Prop :=
  ∀ n, P10171343579310714779.a n = A388140 (n + 1)

end A388140

/-!
# A388144: Powerful numbers (A061862) representable as a sum of nonnegative powers of their digits in a unique way.

The programs for A388144, there is no canonical definition to state claims against.
-/

/-! ## A388144.P9508164962314397435

`A118759(A007532(n+2))`
-/

namespace A388144.P9508164962314397435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A007532 (n + 2)).toNat

end

end A388144.P9508164962314397435

/-! ## A388144.P1915862892844873207

`A033677(A134703(n+3)²)`
-/

namespace A388144.P1915862892844873207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A134703 (n + 3) ^ 2).toNat

end

end A388144.P1915862892844873207

/-! ## A388144.P2700394128462684606

`filter[A007532(n+2), A102609(#)]`
-/

namespace A388144.P2700394128462684606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007532 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A388144.P2700394128462684606

/-! ## A388144.P18256928070353719868

`filter[A007532(n+2), A267959(#)]`
-/

namespace A388144.P18256928070353719868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007532 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267959 (f1 j).toNat = 1) n)

end

end A388144.P18256928070353719868

/-! ## A388144.P9245696511290887454

`filter[A061862(n+3), A102609(#)]`
-/

namespace A388144.P9245696511290887454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A388144.P9245696511290887454

/-!
# A388149: Number of partial permutations of [2n] that have exactly n cycles.

The programs for A388149, there is no canonical definition to state claims against.
-/

/-! ## A388149.P15498650638096142321

`A216294(∑[4*n])`
-/

namespace A388149.P15498650638096142321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A388149.P15498650638096142321

