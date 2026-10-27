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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A217200: Number of permutations in S_{n+2} containing an increasing subsequence of length n.

The programs for A217200, the canonical program `A217200.P17041435415871521454` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217200 has offset 0).

The definition of A217200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217200.P17041435415871521454

`∑[A184537(n)+1]-4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217200

/-- `∑[A184537(n)+1]-4` -/
def P17041435415871521454.Spec : Prop :=
  ∀ n, P17041435415871521454.a n = A217200 n

theorem P17041435415871521454.correct : P17041435415871521454.Spec := by
  intro n
  simp only [A217200]

end A217200

/-! ## A217200.P5413377611756306762

`∑[A007588(n)+ceil(sqrt(n²+4))]`
-/

namespace A217200.P5413377611756306762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n + ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217200.P5413377611756306762

namespace A217200

/-- `∑[A007588(n)+ceil(sqrt(n²+4))]` -/
def P5413377611756306762.Spec : Prop :=
  ∀ n, P5413377611756306762.a n = A217200 n

end A217200

/-! ## A217200.P5968141318179320036

`A157532(n+1)+(n²+n)²/2+n`
-/

namespace A217200.P5968141318179320036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) : ℚ) + ((n ^ 2 + n) ^ 2 : ℚ) / 2 + (n : ℚ)

end

end A217200.P5968141318179320036

namespace A217200

/-- `A157532(n+1)+(n²+n)²/2+n` -/
def P5968141318179320036.Spec : Prop :=
  ∀ n, P5968141318179320036.a n = (A217200 n : ℚ)

end A217200

/-! ## A217200.P1794705624525508815

`∑[A033562(n)+A000010(n+1)%2]`
-/

namespace A217200.P1794705624525508815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n + Int.tmod (A000010 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217200.P1794705624525508815

namespace A217200

/-- `∑[A033562(n)+A000010(n+1)%2]` -/
def P1794705624525508815.Spec : Prop :=
  ∀ n, P1794705624525508815.a n = A217200 n

end A217200

/-! ## A217200.P16896367709606498551

`∑[A033562(n)]%A000583(n+1)+2`
-/

namespace A217200.P16896367709606498551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000583 (n + 1)) + 2

end

end A217200.P16896367709606498551

namespace A217200

/-- `∑[A033562(n)]%A000583(n+1)+2` -/
def P16896367709606498551.Spec : Prop :=
  ∀ n, P16896367709606498551.a n = A217200 n

end A217200

/-! ## A217200.P4665462270882190278

`A027379(n+1)+A163102(n)-A027379(n)`
-/

namespace A217200.P4665462270882190278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 (n + 1) + (A163102 n - A027379 n)

end

end A217200.P4665462270882190278

namespace A217200

/-- `A027379(n+1)+A163102(n)-A027379(n)` -/
def P4665462270882190278.Spec : Prop :=
  ∀ n, P4665462270882190278.a n = A217200 n

end A217200

/-! ## A217200.P17622126388549213642

`n+1+A163102(n)+A020639(A000068(n+1))`
-/

namespace A217200.P17622126388549213642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A163102 n + A020639 (A000068 (n + 1)).toNat)

end

end A217200.P17622126388549213642

namespace A217200

/-- `n+1+A163102(n)+A020639(A000068(n+1))` -/
def P17622126388549213642.Spec : Prop :=
  ∀ n, P17622126388549213642.a n = A217200 n

end A217200

/-! ## A217200.P5535346437825812510

`A005893(∑[n])+1+n`
-/

namespace A217200.P5535346437825812510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A217200.P5535346437825812510

namespace A217200

/-- `A005893(∑[n])+1+n` -/
def P5535346437825812510.Spec : Prop :=
  ∀ n, P5535346437825812510.a n = A217200 n

end A217200

/-! ## A217200.P13591816869175690526

`A005893(A000217(n))+n+1`
-/

namespace A217200.P13591816869175690526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A000217 n).toNat + (n + 1 : ℤ)

end

end A217200.P13591816869175690526

namespace A217200

/-- `A005893(A000217(n))+n+1` -/
def P13591816869175690526.Spec : Prop :=
  ∀ n, P13591816869175690526.a n = A217200 n

end A217200

/-! ## A217200.P8691876931942851791

`A105343(∑[2*n])+n+1`
-/

namespace A217200.P8691876931942851791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A217200.P8691876931942851791

namespace A217200

/-- `A105343(∑[2*n])+n+1` -/
def P8691876931942851791.Spec : Prop :=
  ∀ n, P8691876931942851791.a n = A217200 n

end A217200

/-! ## A217200.P1888133513409875295

`A118002(∑[2*n])+n+2`
-/

namespace A217200.P1888133513409875295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 2 : ℤ)

end

end A217200.P1888133513409875295

namespace A217200

/-- `A118002(∑[2*n])+n+2` -/
def P1888133513409875295.Spec : Prop :=
  ∀ n, P1888133513409875295.a n = A217200 n

end A217200

/-! ## A217200.P12376695473551100416

`A089071(∑[2*n]+1)+∑[n+1]`
-/

namespace A217200.P12376695473551100416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A217200.P12376695473551100416

namespace A217200

/-- `A089071(∑[2*n]+1)+∑[n+1]` -/
def P12376695473551100416.Spec : Prop :=
  ∀ n, P12376695473551100416.a n = A217200 n

end A217200

/-! ## A217200.P8733588232290632292

`A022856(A027688(n))+A000217(n+1)`
-/

namespace A217200.P8733588232290632292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (A027688 n).toNat + A000217 (n + 1)

end

end A217200.P8733588232290632292

namespace A217200

/-- `A022856(A027688(n))+A000217(n+1)` -/
def P8733588232290632292.Spec : Prop :=
  ∀ n, P8733588232290632292.a n = A217200 n

end A217200

/-! ## A217200.P7511796782072399691

`A016028(A152948(n+1)+A000096(n))+A000096(n)`
-/

namespace A217200.P7511796782072399691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A152948 (n + 1) + A000096 n).toNat + A000096 n

end

end A217200.P7511796782072399691

namespace A217200

/-- `A016028(A152948(n+1)+A000096(n))+A000096(n)` -/
def P7511796782072399691.Spec : Prop :=
  ∀ n, P7511796782072399691.a n = A217200 n

end A217200

/-!
# A217203: First column of A217202.

The programs for A217203, there is no canonical definition to state claims against.
-/

/-! ## A217203.P39570229087059431

`A337040(n+1)/Δ[A048578(n)]`
-/

namespace A217203.P39570229087059431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A217203.P39570229087059431

/-! ## A217203.P1607004841518735117

`A337040(n+1)/Δ[A126646(n)]`
-/

namespace A217203.P1607004841518735117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A217203.P1607004841518735117

/-! ## A217203.P7602110767389291416

`A337040(n+1)/A000079(n+1)`
-/

namespace A217203.P7602110767389291416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A217203.P7602110767389291416

/-! ## A217203.P294675506983726431

`A337040(n+1)/Δ[A242475(n+1)]`
-/

namespace A217203.P294675506983726431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A217203.P294675506983726431

/-! ## A217203.P17036638587237345365

`A337040(n+1)/record[Δ[A052552(n+1)]]`
-/

namespace A217203.P17036638587237345365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337040 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A217203.P17036638587237345365

/-!
# A217204: Triangle read by rows, related to Bell numbers A000110: A216962 interlaced with A216964.

The programs for A217204, there is no canonical definition to state claims against.
-/

/-! ## A217204.P5551889188737280866

`A345197(A176849(n))+A137597(n+1)`
-/

namespace A217204.P5551889188737280866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345197 (A176849 n).toNat + A137597 (n + 1)

end

end A217204.P5551889188737280866

/-! ## A217204.P8536762497219108048

`A137597(n+1)+A055641(A193361(n+2)-A186739(n+1))`
-/

namespace A217204.P8536762497219108048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137597 (n + 1) + A055641 (A193361 (n + 2) - A186739 (n + 1)).toNat

end

end A217204.P8536762497219108048

/-!
# A217206: Gijswijt's sequence A090822 read mod 2.

The programs for A217206, there is no canonical definition to state claims against.
-/

/-! ## A217206.P2645004249550092949

`A090822(n+1)%2`
-/

namespace A217206.P2645004249550092949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090822 (n + 1)) 2

end

end A217206.P2645004249550092949

/-! ## A217206.P9420077089648860720

`and(1, A090822(C(n+1, n)))`
-/

namespace A217206.P9420077089648860720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A090822 (Nat.choose (n + 1) n))

end

end A217206.P9420077089648860720

/-! ## A217206.P15705679934886658751

`and(1, A090822(abs(xor(n, -1))))`
-/

namespace A217206.P15705679934886658751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A090822 |Int.xor (n : ℤ) (-1)|.toNat)

end

end A217206.P15705679934886658751

/-! ## A217206.P5247793688826527555

`and(1, A090822(n-log2(1/2)))`
-/

namespace A217206.P5247793688826527555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A090822 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A217206.P5247793688826527555

/-! ## A217206.P4552986231739714770

`∑[A091586(abs(1-n)+1)]%2`
-/

namespace A217206.P4552986231739714770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091586 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A217206.P4552986231739714770

/-! ## A217206.P14023211691936970896

`and(A090822(n+1), A305724(n))`
-/

namespace A217206.P14023211691936970896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A305724 n)

end

end A217206.P14023211691936970896

/-! ## A217206.P7323645408721262057

`and(A090822(n+1), A119860(n+1))`
-/

namespace A217206.P7323645408721262057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A119860 (n + 1))

end

end A217206.P7323645408721262057

/-! ## A217206.P17010709046157715467

`and(A090822(n+1), A230746(n+1))`
-/

namespace A217206.P17010709046157715467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A230746 (n + 1))

end

end A217206.P17010709046157715467

/-! ## A217206.P2910598263321444269

`and(A090822(n+1), A282997(n+1))`
-/

namespace A217206.P2910598263321444269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A282997 (n + 1))

end

end A217206.P2910598263321444269

/-! ## A217206.P14111541368971670061

`A000035(A090822(n+1)+2*n)`
-/

namespace A217206.P14111541368971670061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A090822 (n + 1) + (2 * n : ℤ)).toNat

end

end A217206.P14111541368971670061

/-! ## A217206.P3318042074056372457

`and(A090822(n+1), A174692(n))`
-/

namespace A217206.P3318042074056372457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A174692 n)

end

end A217206.P3318042074056372457

/-! ## A217206.P10659448759278508451

`and(A090822(n+1), A249081(n+1))`
-/

namespace A217206.P10659448759278508451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A249081 (n + 1))

end

end A217206.P10659448759278508451

/-! ## A217206.P4086769935514198240

`and(A090822(n+1), A195744(n))`
-/

namespace A217206.P4086769935514198240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A195744 n)

end

end A217206.P4086769935514198240

/-! ## A217206.P12600144169593696869

`and(A090822(n+1), A305154(n))`
-/

namespace A217206.P12600144169593696869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A305154 n)

end

end A217206.P12600144169593696869

/-! ## A217206.P8056823733155078533

`and(A090822(n+1), A305155(n))`
-/

namespace A217206.P8056823733155078533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A305155 n)

end

end A217206.P8056823733155078533

/-! ## A217206.P17311160538323932581

`and(A090822(n+1), A122041(n+1))`
-/

namespace A217206.P17311160538323932581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A122041 (n + 1))

end

end A217206.P17311160538323932581

/-! ## A217206.P13952366763786583301

`and(A090822(n+1), A196657(n))`
-/

namespace A217206.P13952366763786583301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A196657 n)

end

end A217206.P13952366763786583301

/-! ## A217206.P3703292664025578032

`and(A090822(n+1), A305262(n))`
-/

namespace A217206.P3703292664025578032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A305262 n)

end

end A217206.P3703292664025578032

/-! ## A217206.P18111697097238327833

`and(A090822(n+1), A305269(n))`
-/

namespace A217206.P18111697097238327833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A305269 n)

end

end A217206.P18111697097238327833

/-! ## A217206.P15738853603697974074

`and(A090822(n+1), A250655(n+1))`
-/

namespace A217206.P15738853603697974074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A090822 (n + 1)) (A250655 (n + 1))

end

end A217206.P15738853603697974074

/-!
# A217207: Start with a(1)=0; then a(n) = (curling number of (a(1),...,a(n-1))) mod 2.

The programs for A217207, there is no canonical definition to state claims against.
-/

/-! ## A217207.P8199781372914677622

`A212444(n)%2`
-/

namespace A217207.P8199781372914677622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212444 n) 2

end

end A217207.P8199781372914677622

/-! ## A217207.P6973964588199606779

`and(A000051(n), A212444(n))`
-/

namespace A217207.P6973964588199606779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A212444 n)

end

end A217207.P6973964588199606779

/-! ## A217207.P12614707082280731503

`and(A000337(n), A212444(n))`
-/

namespace A217207.P12614707082280731503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A212444 n)

end

end A217207.P12614707082280731503

/-! ## A217207.P11444721501723716265

`and(A001576(n), A212444(n))`
-/

namespace A217207.P11444721501723716265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001576 n) (A212444 n)

end

end A217207.P11444721501723716265

/-! ## A217207.P17937162210047827481

`and(A002064(n), A212444(n))`
-/

namespace A217207.P17937162210047827481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A212444 n)

end

end A217207.P17937162210047827481

/-! ## A217207.P15114659927598029659

`and(A006483(n), A212444(n))`
-/

namespace A217207.P15114659927598029659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006483 n) (A212444 n)

end

end A217207.P15114659927598029659

/-! ## A217207.P6141414503110544094

`and(A020515(n), A212444(n))`
-/

namespace A217207.P6141414503110544094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020515 n) (A212444 n)

end

end A217207.P6141414503110544094

/-! ## A217207.P6326568602305934488

`and(A020527(n), A212444(n))`
-/

namespace A217207.P6326568602305934488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020527 n) (A212444 n)

end

end A217207.P6326568602305934488

/-! ## A217207.P2827679967695021581

`and(A020737(n), A212444(n))`
-/

namespace A217207.P2827679967695021581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A212444 n)

end

end A217207.P2827679967695021581

/-! ## A217207.P16034120583327498113

`and(A027608(n), A212444(n))`
-/

namespace A217207.P16034120583327498113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027608 n) (A212444 n)

end

end A217207.P16034120583327498113

/-! ## A217207.P11116862900626370676

`and(A028400(n), A212444(n))`
-/

namespace A217207.P11116862900626370676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028400 n) (A212444 n)

end

end A217207.P11116862900626370676

/-! ## A217207.P7472309190383513704

`and(A035089(n), A212444(n))`
-/

namespace A217207.P7472309190383513704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035089 n) (A212444 n)

end

end A217207.P7472309190383513704

/-! ## A217207.P4178595525863429791

`and(A048477(n), A212444(n))`
-/

namespace A217207.P4178595525863429791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048477 n) (A212444 n)

end

end A217207.P4178595525863429791

/-! ## A217207.P3669018081494343605

`and(A048479(n), A212444(n))`
-/

namespace A217207.P3669018081494343605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048479 n) (A212444 n)

end

end A217207.P3669018081494343605

/-! ## A217207.P11297803093510497822

`and(A048482(n), A212444(n))`
-/

namespace A217207.P11297803093510497822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048482 n) (A212444 n)

end

end A217207.P11297803093510497822

/-! ## A217207.P1670912349690269022

`and(A048578(n), A212444(n))`
-/

namespace A217207.P1670912349690269022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A212444 n)

end

end A217207.P1670912349690269022

/-! ## A217207.P5412940902191933160

`and(A050915(n), A212444(n))`
-/

namespace A217207.P5412940902191933160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050915 n) (A212444 n)

end

end A217207.P5412940902191933160

/-! ## A217207.P9350361853298499600

`and(A051900(n), A212444(n))`
-/

namespace A217207.P9350361853298499600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051900 n) (A212444 n)

end

end A217207.P9350361853298499600

/-! ## A217207.P11462180064228015330

`and(A052539(n), A212444(n))`
-/

namespace A217207.P11462180064228015330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052539 n) (A212444 n)

end

end A217207.P11462180064228015330

/-! ## A217207.P12335903472037186002

`and(A054977(n), A212444(n))`
-/

namespace A217207.P12335903472037186002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A212444 n)

end

end A217207.P12335903472037186002

/-!
# A217208: a(n) = (conjectured) length of longest tail that can be generated by a starting string of 2's and 3's of length n before a 1 is reached, using the rule described in the Comments lines.

The programs for A217208, there is no canonical definition to state claims against.
-/

/-! ## A217208.P8374396206020516182

`A094004(n+1)-(n+1)`
-/

namespace A217208.P8374396206020516182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094004 (n + 1) - (n + 1 : ℤ)

end

end A217208.P8374396206020516182

/-! ## A217208.P12509982648776979980

`A094004(-xor(n, -1))-1-n`
-/

namespace A217208.P12509982648776979980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094004 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A217208.P12509982648776979980

/-! ## A217208.P11134868223976159023

`A094004(ϕ²-(ϕ-n))-n-1`
-/

namespace A217208.P11134868223976159023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094004 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - (n : ℤ) - 1

end

end A217208.P11134868223976159023

/-! ## A217208.P10803111920277646105

`A023443(A094004(n+1)-n)`
-/

namespace A217208.P10803111920277646105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A094004 (n + 1) - (n : ℤ)).toNat

end

end A217208.P10803111920277646105

/-! ## A217208.P7665870062449614170

`A199969(A094004(n+1)-n)`
-/

namespace A217208.P7665870062449614170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A094004 (n + 1) - (n : ℤ)).toNat

end

end A217208.P7665870062449614170

/-! ## A217208.P2935414078786743204

`A108086(A034856(n+1))+A094004(n+1)`
-/

namespace A217208.P2935414078786743204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (A034856 (n + 1)).toNat + A094004 (n + 1)

end

end A217208.P2935414078786743204

/-!
# A217211: Number of binary sequences of length n with curling number 2.

The programs for A217211, there is no canonical definition to state claims against.
-/

/-! ## A217211.P2810205796684014438

`ceil(sin(n)²)*A216955(∑[n]+2)`
-/

namespace A217211.P2810205796684014438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217211.P2810205796684014438

/-! ## A217211.P8633727230965382593

`A216955(∑[n]+2)%A000051(n)`
-/

namespace A217211.P8633727230965382593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (A000051 n)

end

end A217211.P8633727230965382593

/-! ## A217211.P3475909920000533950

`A216955(A133263(n))-A000038(n)`
-/

namespace A217211.P3475909920000533950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216955 (A133263 n).toNat - A000038 n

end

end A217211.P3475909920000533950

/-! ## A217211.P17080050030752126199

`A057427(n)*A216955(A133263(n))`
-/

namespace A217211.P17080050030752126199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A216955 (A133263 n).toNat

end

end A217211.P17080050030752126199

/-! ## A217211.P15479334187373372175

`A178334(n)*A216955(A133263(n))`
-/

namespace A217211.P15479334187373372175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A216955 (A133263 n).toNat

end

end A217211.P15479334187373372175

/-! ## A217211.P6402293004318895712

`char[A286552(n)]*A216955(A133263(n))`
-/

namespace A217211.P6402293004318895712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216955 (A133263 n).toNat

end

end A217211.P6402293004318895712

/-! ## A217211.P9056929547572237870

`and(A000225(n+1), A216955(A133263(n)))`
-/

namespace A217211.P9056929547572237870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (n + 1)) (A216955 (A133263 n).toNat)

end

end A217211.P9056929547572237870

/-! ## A217211.P16747801455208048586

`and(1, A000225(n))*A216955(A133263(n))`
-/

namespace A217211.P16747801455208048586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000225 n) * A216955 (A133263 n).toNat

end

end A217211.P16747801455208048586

/-! ## A217211.P6968116709257791585

`char[A026741(n+1)]*A216955(A133263(n))`
-/

namespace A217211.P6968116709257791585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216955 (A133263 n).toNat

end

end A217211.P6968116709257791585

/-!
# A217212: Number of sequences of 2's and 3's of length n with curling number 3.

The programs for A217212, there is no canonical definition to state claims against.
-/

/-! ## A217212.P11435020303582525799

`A216955(∑[n]+3)%(2^n)`
-/

namespace A217212.P11435020303582525799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (2 ^ n : ℤ)

end

end A217212.P11435020303582525799

/-! ## A217212.P6155409163472845336

`and(A000225(n), A216955(∑[n]+3))`
-/

namespace A217212.P6155409163472845336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A217212.P6155409163472845336

/-! ## A217212.P13523758958867812028

`and(A095121(n), A216955(∑[n]+3))`
-/

namespace A217212.P13523758958867812028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A095121 n) (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A217212.P13523758958867812028

/-! ## A217212.P7081246414919755894

`and(A126646(n), A216955(∑[n]+3))`
-/

namespace A217212.P7081246414919755894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 3))

end

end A217212.P7081246414919755894

/-! ## A217212.P10576066073816959279

`char[A132145(n+1)]*A216955(∑[n]+3)`
-/

namespace A217212.P10576066073816959279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132145 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216955 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

end

end A217212.P10576066073816959279

/-!
# A217213: 2*A002740(n).

The programs for A217213, the canonical program `A217213.P12089861951504689576` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217213 has offset 0).

The definition of A217213 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002740, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217213.P12089861951504689576

`2*A002740(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A217213

/-- `2*A002740(n)` -/
def P12089861951504689576.Spec : Prop :=
  ∀ n, P12089861951504689576.a n = A217213 n

theorem P12089861951504689576.correct : P12089861951504689576.Spec := by
  intro n
  simp only [A217213]

end A217213

/-! ## A217213.P3647864871355505850

`(n+1)*Δ[A371964(n)]`
-/

namespace A217213.P3647864871355505850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A217213.P3647864871355505850

namespace A217213

/-- `(n+1)*Δ[A371964(n)]` -/
def P3647864871355505850.Spec : Prop :=
  ∀ n, P3647864871355505850.a n = A217213 n

end A217213

/-! ## A217213.P13576752977956337099

`(n-2)*A037955(A004275(n))`
-/

namespace A217213.P13576752977956337099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A037955 (A004275 n).toNat

end

end A217213.P13576752977956337099

namespace A217213

/-- `(n-2)*A037955(A004275(n))` -/
def P13576752977956337099.Spec : Prop :=
  ∀ n, P13576752977956337099.a n = A217213 n

end A217213

/-! ## A217213.P12474097749203534417

`(n-1)*A289207(n)*A120588(n)`
-/

namespace A217213.P12474097749203534417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A289207 n * A120588 n

end

end A217213.P12474097749203534417

namespace A217213

/-- `(n-1)*A289207(n)*A120588(n)` -/
def P12474097749203534417.Spec : Prop :=
  ∀ n, P12474097749203534417.a n = A217213 n

end A217213

/-! ## A217213.P6402994367860694446

`A002740(round(sqrt(n²+1)))+A002740(n)`
-/

namespace A217213.P6402994367860694446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A002740 n

end

end A217213.P6402994367860694446

namespace A217213

/-- `A002740(round(sqrt(n²+1)))+A002740(n)` -/
def P6402994367860694446.Spec : Prop :=
  ∀ n, P6402994367860694446.a n = A217213 n

end A217213

/-! ## A217213.P16735990129633752984

`(A210736(A004275(n))-A120588(n))*A004275(n)`
-/

namespace A217213.P16735990129633752984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A210736 (A004275 n).toNat - A120588 n) * A004275 n

end

end A217213.P16735990129633752984

namespace A217213

/-- `(A210736(A004275(n))-A120588(n))*A004275(n)` -/
def P16735990129633752984.Spec : Prop :=
  ∀ n, P16735990129633752984.a n = A217213 n

end A217213

/-! ## A217213.P7514156242120229335

`(n+1)*C(abs(1-n)+n-1, n+1)`
-/

namespace A217213.P7514156242120229335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (|1 - (n : ℤ)| + ((n : ℤ) - 1)).toNat (n + 1)

end

end A217213.P7514156242120229335

namespace A217213

/-- `(n+1)*C(abs(1-n)+n-1, n+1)` -/
def P7514156242120229335.Spec : Prop :=
  ∀ n, (P7514156242120229335.a n : ℤ) = A217213 n

end A217213

/-! ## A217213.P5648675614687420649

`C(A289207(2*n), n+1)*(n+1)`
-/

namespace A217213.P5648675614687420649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289207 (2 * n)).toNat (n + 1) * (n + 1)

end

end A217213.P5648675614687420649

namespace A217213

/-- `C(A289207(2*n), n+1)*(n+1)` -/
def P5648675614687420649.Spec : Prop :=
  ∀ n, (P5648675614687420649.a n : ℤ) = A217213 n

end A217213

/-! ## A217213.P2928214246733944048

`A002740(n)+A002740(n)%A155579(n)`
-/

namespace A217213.P2928214246733944048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 n + Int.tmod (A002740 n) (A155579 n)

end

end A217213.P2928214246733944048

namespace A217213

/-- `A002740(n)+A002740(n)%A155579(n)` -/
def P2928214246733944048.Spec : Prop :=
  ∀ n, P2928214246733944048.a n = A217213 n

end A217213

/-! ## A217213.P3786748668475388568

`(A247495(A027379(n))-n)*A120588(n)`
-/

namespace A217213.P3786748668475388568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A247495 (A027379 n).toNat - (n : ℤ)) * A120588 n

end

end A217213.P3786748668475388568

namespace A217213

/-- `(A247495(A027379(n))-n)*A120588(n)` -/
def P3786748668475388568.Spec : Prop :=
  ∀ n, P3786748668475388568.a n = A217213 n

end A217213

/-!
# A217214: G.f.: (P-Q*(sqrt(1-4*x)))/(x*(1-4*x)^3) where P=(1-4*x)^3*(1-x-x^2), Q=1-11*x+39*x^2-40*x^3-22*x^4.

The programs for A217214, there is no canonical definition to state claims against.
-/

/-! ## A217214.P13905611253766777989

`2*A217215(n)`
-/

namespace A217214.P13905611253766777989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217215 n

end

end A217214.P13905611253766777989

/-! ## A217214.P16798748557203367560

`A217215(A028310(n))+A217215(n)`
-/

namespace A217214.P16798748557203367560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217215 (A028310 n).toNat + A217215 n

end

end A217214.P16798748557203367560

/-! ## A217214.P14313571441711353765

`A217215(A005843(n)/2)+A217215(n)`
-/

namespace A217214.P14313571441711353765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217215 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A217215 n

end

end A217214.P14313571441711353765

/-! ## A217214.P7207338503201120638

`A217215(A000007(n)+n)+A217215(n)`
-/

namespace A217214.P7207338503201120638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217215 (A000007 n + (n : ℤ)).toNat + A217215 n

end

end A217214.P7207338503201120638

/-! ## A217214.P8510979542434451217

`A217215(A118759(n))+A217215(n)`
-/

namespace A217214.P8510979542434451217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217215 (A118759 n).toNat + A217215 n

end

end A217214.P8510979542434451217

/-!
# A217215: A217214(n)/2.

The programs for A217215, there is no canonical definition to state claims against.
-/

/-! ## A217215.P11064471769677024951

`A217214(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217215.P11064471769677024951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217214 n : ℚ) / 2

end

end A217215.P11064471769677024951

/-! ## A217215.P4703091293042811040

`A014682(A217214(n))`
-/

namespace A217215.P4703091293042811040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A217214 n).toNat

end

end A217215.P4703091293042811040

/-! ## A217215.P18040677574100794548

`∑{d}[A217214(n), A300236(#)]`
-/

namespace A217215.P18040677574100794548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300236 d

end

end A217215.P18040677574100794548

/-! ## A217215.P16206204970456003057

`A273943(2*n+3)*A273943(A217214(n))`
-/

namespace A217215.P16206204970456003057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 3) * A273943 (A217214 n).toNat

end

end A217215.P16206204970456003057

/-!
# A217216: Dimension of algebraic generators of the algebra "Baxter" of order n.

The programs for A217216, there is no canonical definition to state claims against.
-/

/-! ## A217216.P8984850647796317244

`A199149(C(2*n, floor(log2(n+1))))`
-/

namespace A217216.P8984850647796317244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199149 (Nat.choose (2 * n) (Nat.log 2 (n + 1)))

end

end A217216.P8984850647796317244

/-! ## A217216.P1102757211316869842

`A241349(C(2*n, comp[2*n+3]))`
-/

namespace A217216.P1102757211316869842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (Nat.choose (2 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A217216.P1102757211316869842

/-! ## A217216.P16097683938639314281

`A008617(A150863(n))`
-/

namespace A217216.P16097683938639314281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A150863 n).toNat

end

end A217216.P16097683938639314281

/-!
# A217217: Dimension of totally primitive elements of the algebra "Baxter" of order n.

The programs for A217217, there is no canonical definition to state claims against.
-/

/-! ## A217217.P3155445579251167718

`A033099(A130162(2*(n+2))+A074432(n+1))`
-/

namespace A217217.P3155445579251167718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (A130162 (2 * (n + 2)) + A074432 (n + 1)).toNat

end

end A217217.P3155445579251167718

/-!
# A217218: Trajectory of 44 under the map k -> A006368(k).

The programs for A217218, the canonical program `A217218.P1330784543100849563` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217218 has offset 1).

The definition of A217218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 910 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217218.P1330784543100849563

`A185590(A017401(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A217218

/-- `A185590(A017401(n))` -/
def P1330784543100849563.Spec : Prop :=
  ∀ n, P1330784543100849563.a n = A217218 (n + 1)

theorem P1330784543100849563.correct : P1330784543100849563.Spec := by
  intro n
  simp only [A217218, Nat.add_sub_cancel]

end A217218

/-!
# A217219: Theta series of planar hexagonal net (honeycomb) with respect to deep hole.

The programs for A217219, the canonical program `A217219.P6754064516663132838` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217219 has offset 0).

The definition of A217219 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217219.P6754064516663132838

`6*A045833(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A217219

/-- `6*A045833(n)` -/
def P6754064516663132838.Spec : Prop :=
  ∀ n, P6754064516663132838.a n = A217219 n

theorem P6754064516663132838.correct : P6754064516663132838.Spec := by
  intro n
  simp only [A217219]

end A217219

/-! ## A217219.P726974964582754512

`2*A033685(n)`
-/

namespace A217219.P726974964582754512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033685 n

end

end A217219.P726974964582754512

namespace A217219

/-- `2*A033685(n)` -/
def P726974964582754512.Spec : Prop :=
  ∀ n, P726974964582754512.a n = A217219 n

theorem P726974964582754512.correct : P726974964582754512.Spec := by
  intro n
  simp only [A217219, Nat.add_sub_cancel, A217219.P726974964582754512.a, A217219.P6754064516663132838.a, A033685, A033685.P5820918837906960133.a, A045833, A045833.P12838744438603727675.f1, A045833.P12838744438603727675.a, A091684, A091684.P4172566819234303247.a, A102283, A102283.P18218274576938374007.a, A011655, A011655.P15232422005463079339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A217219

/-! ## A217219.P165683484806470889

`n%3*A004016(n)`
-/

namespace A217219.P165683484806470889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 3 : ℕ) : ℤ) * A004016 n

end

end A217219.P165683484806470889

namespace A217219

/-- `n%3*A004016(n)` -/
def P165683484806470889.Spec : Prop :=
  ∀ n, P165683484806470889.a n = A217219 n

end A217219

/-! ## A217219.P5894134010176770379

`A113062(n)-A005928(n)`
-/

namespace A217219.P5894134010176770379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n - A005928 n

end

end A217219.P5894134010176770379

namespace A217219

/-- `A113062(n)-A005928(n)` -/
def P5894134010176770379.Spec : Prop :=
  ∀ n, P5894134010176770379.a n = A217219 n

end A217219

/-! ## A217219.P7530911069746168822

`A123330(n)-A193514(n)`
-/

namespace A217219.P7530911069746168822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n - A193514 n

end

end A217219.P7530911069746168822

namespace A217219

/-- `A123330(n)-A193514(n)` -/
def P7530911069746168822.Spec : Prop :=
  ∀ n, P7530911069746168822.a n = A217219 n

end A217219

/-! ## A217219.P18095492928749683988

`A004016(n)*A010872(n)`
-/

namespace A217219.P18095492928749683988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A010872 n

end

end A217219.P18095492928749683988

namespace A217219

/-- `A004016(n)*A010872(n)` -/
def P18095492928749683988.Spec : Prop :=
  ∀ n, P18095492928749683988.a n = A217219 n

end A217219

/-! ## A217219.P5126846676438146320

`A004016(n)*A011655(n)`
-/

namespace A217219.P5126846676438146320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A011655 n

end

end A217219.P5126846676438146320

namespace A217219

/-- `A004016(n)*A011655(n)` -/
def P5126846676438146320.Spec : Prop :=
  ∀ n, P5126846676438146320.a n = A217219 n

end A217219

/-! ## A217219.P14595339906406616055

`A004016(n)*A084091(n)`
-/

namespace A217219.P14595339906406616055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A084091 n

end

end A217219.P14595339906406616055

namespace A217219

/-- `A004016(n)*A084091(n)` -/
def P14595339906406616055.Spec : Prop :=
  ∀ n, P14595339906406616055.a n = A217219 n

end A217219

/-! ## A217219.P1111893351046920172

`A004016(n)*A101000(n)`
-/

namespace A217219.P1111893351046920172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A101000 n

end

end A217219.P1111893351046920172

namespace A217219

/-- `A004016(n)*A101000(n)` -/
def P1111893351046920172.Spec : Prop :=
  ∀ n, P1111893351046920172.a n = A217219 n

end A217219

/-! ## A217219.P10353244978274285756

`A004016(n)*A102283(n)`
-/

namespace A217219.P10353244978274285756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A102283 n

end

end A217219.P10353244978274285756

namespace A217219

/-- `A004016(n)*A102283(n)` -/
def P10353244978274285756.Spec : Prop :=
  ∀ n, P10353244978274285756.a n = A217219 n

end A217219

/-! ## A217219.P649084387911200089

`A004016(n)%A177842(n)`
-/

namespace A217219.P649084387911200089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004016 n) (A177842 n)

end

end A217219.P649084387911200089

namespace A217219

/-- `A004016(n)%A177842(n)` -/
def P649084387911200089.Spec : Prop :=
  ∀ n, P649084387911200089.a n = A217219 n

end A217219

/-! ## A217219.P1017041916246046017

`lcm(A045833(n), A113660(n))`
-/

namespace A217219.P1017041916246046017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A045833 n) (A113660 n)

end

end A217219.P1017041916246046017

namespace A217219

/-- `lcm(A045833(n), A113660(n))` -/
def P1017041916246046017.Spec : Prop :=
  ∀ n, (P1017041916246046017.a n : ℤ) = A217219 n

end A217219

/-! ## A217219.P17417947244186657158

`lcm(A084091(n), A122859(n))`
-/

namespace A217219.P17417947244186657158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084091 n) (A122859 n)

end

end A217219.P17417947244186657158

namespace A217219

/-- `lcm(A084091(n), A122859(n))` -/
def P17417947244186657158.Spec : Prop :=
  ∀ n, (P17417947244186657158.a n : ℤ) = A217219 n

end A217219

/-! ## A217219.P1653949028057528501

`lcm(A076452(n), A180318(n))`
-/

namespace A217219.P1653949028057528501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076452 n) (A180318 n)

end

end A217219.P1653949028057528501

namespace A217219

/-- `lcm(A076452(n), A180318(n))` -/
def P1653949028057528501.Spec : Prop :=
  ∀ n, (P1653949028057528501.a n : ℤ) = A217219 n

end A217219

/-! ## A217219.P3453529405884883255

`A128834(n)²*A004016(n)`
-/

namespace A217219.P3453529405884883255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n ^ 2 * A004016 n

end

end A217219.P3453529405884883255

namespace A217219

/-- `A128834(n)²*A004016(n)` -/
def P3453529405884883255.Spec : Prop :=
  ∀ n, P3453529405884883255.a n = A217219 n

end A217219

/-! ## A217219.P16782004462590163131

`(A010882(n)-1)*A004016(n)`
-/

namespace A217219.P16782004462590163131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010882 n - 1) * A004016 n

end

end A217219.P16782004462590163131

namespace A217219

/-- `(A010882(n)-1)*A004016(n)` -/
def P16782004462590163131.Spec : Prop :=
  ∀ n, P16782004462590163131.a n = A217219 n

end A217219

/-! ## A217219.P7635584433777826748

`(A049347(n)-1)*A005928(n)`
-/

namespace A217219.P7635584433777826748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049347 n - 1) * A005928 n

end

end A217219.P7635584433777826748

namespace A217219

/-- `(A049347(n)-1)*A005928(n)` -/
def P7635584433777826748.Spec : Prop :=
  ∀ n, P7635584433777826748.a n = A217219 n

end A217219

/-! ## A217219.P3873096445998312304

`(1-A060398(n))*A004016(n)`
-/

namespace A217219.P3873096445998312304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A060398 n) * A004016 n

end

end A217219.P3873096445998312304

namespace A217219

/-- `(1-A060398(n))*A004016(n)` -/
def P3873096445998312304.Spec : Prop :=
  ∀ n, P3873096445998312304.a n = A217219 n

end A217219

/-! ## A217219.P10666738431458750409

`(A069705(n)-1)*A004016(n)`
-/

namespace A217219.P10666738431458750409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069705 n - 1) * A004016 n

end

end A217219.P10666738431458750409

namespace A217219

/-- `(A069705(n)-1)*A004016(n)` -/
def P10666738431458750409.Spec : Prop :=
  ∀ n, P10666738431458750409.a n = A217219 n

end A217219

/-! ## A217219.P4058771132420525363

`(A130196(n)-1)*A004016(n)`
-/

namespace A217219.P4058771132420525363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130196 n - 1) * A004016 n

end

end A217219.P4058771132420525363

namespace A217219

/-- `(A130196(n)-1)*A004016(n)` -/
def P4058771132420525363.Spec : Prop :=
  ∀ n, P4058771132420525363.a n = A217219 n

end A217219

/-!
# A217220: Theta series of Kagome net with respect to an atom.

The programs for A217220, there is no canonical definition to state claims against.
-/

/-! ## A217220.P6886574656856932143

`(2-char[2*n])*A033716(n)`
-/

namespace A217220.P6886574656856932143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A033716 n

end

end A217220.P6886574656856932143

/-! ## A217220.P10196772144744070581

`A217221(n)+A115978(n)`
-/

namespace A217220.P10196772144744070581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 n + A115978 n

end

end A217220.P10196772144744070581

/-! ## A217220.P3884768442928673954

`A033716(n)*A068073(n)`
-/

namespace A217220.P3884768442928673954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A068073 n

end

end A217220.P3884768442928673954

/-! ## A217220.P207403333753390627

`A033716(n)*A071222(n)`
-/

namespace A217220.P207403333753390627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A071222 n

end

end A217220.P207403333753390627

/-! ## A217220.P1698403695420871526

`A033716(n)*A177002(n)`
-/

namespace A217220.P1698403695420871526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A177002 n

end

end A217220.P1698403695420871526

/-! ## A217220.P11420442555105748289

`A033716(n)*A040001(n+1)`
-/

namespace A217220.P11420442555105748289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A040001 (n + 1)

end

end A217220.P11420442555105748289

/-! ## A217220.P10901675655167384686

`A033716(n)*A053589(n+1)`
-/

namespace A217220.P10901675655167384686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A053589 (n + 1)

end

end A217220.P10901675655167384686

/-! ## A217220.P15554638202392293657

`A033716(n)*A055770(n+1)`
-/

namespace A217220.P15554638202392293657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A055770 (n + 1)

end

end A217220.P15554638202392293657

/-! ## A217220.P11490769857245751135

`A033716(n)*A055874(n+1)`
-/

namespace A217220.P11490769857245751135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A055874 (n + 1)

end

end A217220.P11490769857245751135

/-! ## A217220.P4748594085050617624

`A033716(n)*A055881(n+1)`
-/

namespace A217220.P4748594085050617624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A055881 (n + 1)

end

end A217220.P4748594085050617624

/-! ## A217220.P160481890105793727

`A033716(n)*A083039(n+1)`
-/

namespace A217220.P160481890105793727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A083039 (n + 1)

end

end A217220.P160481890105793727

/-! ## A217220.P14323053587505603647

`A033716(n)*A257993(n+1)`
-/

namespace A217220.P14323053587505603647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A257993 (n + 1)

end

end A217220.P14323053587505603647

/-! ## A217220.P2057987884932562997

`A033716(n)*A368777(n+1)`
-/

namespace A217220.P2057987884932562997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A368777 (n + 1)

end

end A217220.P2057987884932562997

/-! ## A217220.P8357569671857878876

`A033716(n)*A370180(n+1)`
-/

namespace A217220.P8357569671857878876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n * A370180 (n + 1)

end

end A217220.P8357569671857878876

/-! ## A217220.P12979423392139829521

`A115978(n)*A327767(n+1)`
-/

namespace A217220.P12979423392139829521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 n * A327767 (n + 1)

end

end A217220.P12979423392139829521

/-! ## A217220.P3164901702124272865

`(A033716(n)+A004016(n))/2`
-/

namespace A217220.P3164901702124272865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 n + A004016 n : ℚ) / 2

end

end A217220.P3164901702124272865

/-! ## A217220.P9043727924372649642

`A004016(n)-A217221(n)/3`
-/

namespace A217220.P9043727924372649642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) - (A217221 n : ℚ) / 3

end

end A217220.P9043727924372649642

/-! ## A217220.P3619141059455012725

`(2-A000034(n)²)*A115978(n)`
-/

namespace A217220.P3619141059455012725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n ^ 2) * A115978 n

end

end A217220.P3619141059455012725

/-!
# A217221: Theta series of Kagome net with respect to a deep hole.

The programs for A217221, there is no canonical definition to state claims against.
-/

/-! ## A217221.P14908140917859869499

`n%2*A004016(n)`
-/

namespace A217221.P14908140917859869499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A004016 n

end

end A217221.P14908140917859869499

/-! ## A217221.P5496911268823393902

`A107760(n)-A132973(n)`
-/

namespace A217221.P5496911268823393902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n - A132973 n

end

end A217221.P5496911268823393902

/-! ## A217221.P14632003597126909249

`A217220(n)-A115978(n)`
-/

namespace A217221.P14632003597126909249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n - A115978 n

end

end A217221.P14632003597126909249

/-! ## A217221.P10275900905719136147

`A000035(n)*A004016(n)`
-/

namespace A217221.P10275900905719136147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A004016 n

end

end A217221.P10275900905719136147

/-! ## A217221.P18421925497703407224

`A004016(n)*A007877(n)`
-/

namespace A217221.P18421925497703407224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A007877 n

end

end A217221.P18421925497703407224

/-! ## A217221.P18287538343398762413

`A010674(n)*A033716(n)`
-/

namespace A217221.P18287538343398762413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n * A033716 n

end

end A217221.P18287538343398762413

/-! ## A217221.P12114975348410401820

`A004016(n)*A070432(n)`
-/

namespace A217221.P12114975348410401820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A070432 n

end

end A217221.P12114975348410401820

/-! ## A217221.P15700495319749020464

`A004016(n)*A098725(n)`
-/

namespace A217221.P15700495319749020464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A098725 n

end

end A217221.P15700495319749020464

/-! ## A217221.P14090805700008019425

`A000035(n)*A113660(n)`
-/

namespace A217221.P14090805700008019425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A113660 n

end

end A217221.P14090805700008019425

/-! ## A217221.P17197769152274120309

`A010673(n)*A107760(n)`
-/

namespace A217221.P17197769152274120309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n * A107760 n

end

end A217221.P17197769152274120309

/-! ## A217221.P8435329743562672001

`A010674(n)*A123330(n)`
-/

namespace A217221.P8435329743562672001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n * A123330 n

end

end A217221.P8435329743562672001

/-! ## A217221.P12647419423855493877

`A004016(n)*A131729(n)`
-/

namespace A217221.P12647419423855493877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A131729 n

end

end A217221.P12647419423855493877

/-! ## A217221.P16891132673346797889

`A004016(n)*A131734(n)`
-/

namespace A217221.P16891132673346797889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A131734 n

end

end A217221.P16891132673346797889

/-! ## A217221.P15179555911037253723

`A004016(n)*A166486(n)`
-/

namespace A217221.P15179555911037253723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A166486 n

end

end A217221.P15179555911037253723

/-! ## A217221.P10547119500714199595

`A113660(n)*A131734(n)`
-/

namespace A217221.P10547119500714199595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113660 n * A131734 n

end

end A217221.P10547119500714199595

/-! ## A217221.P4381983352291773775

`A010677(n)*A253626(n)`
-/

namespace A217221.P4381983352291773775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010677 n * A253626 n

end

end A217221.P4381983352291773775

/-! ## A217221.P13192455049080181575

`A004016(n)*A278718(n)`
-/

namespace A217221.P13192455049080181575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A278718 n

end

end A217221.P13192455049080181575

/-! ## A217221.P12625941816959900315

`A004016(n)%A174927(n)`
-/

namespace A217221.P12625941816959900315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004016 n) (A174927 n)

end

end A217221.P12625941816959900315

/-! ## A217221.P10208461190594766904

`A113660(n)%A174927(n)`
-/

namespace A217221.P10208461190594766904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113660 n) (A174927 n)

end

end A217221.P10208461190594766904

/-! ## A217221.P2122388179357364143

`lcm(A010673(n), A113660(n))`
-/

namespace A217221.P2122388179357364143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010673 n) (A113660 n)

end

end A217221.P2122388179357364143

/-!
# A217222: Initial terms of sets of 8 consecutive semiprimes with gap 2.

The programs for A217222, there is no canonical definition to state claims against.
-/

/-! ## A217222.P17674065204188697611

`A082919(A089192(n+1)%A056654(2*n+3))`
-/

namespace A217222.P17674065204188697611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082919 (Int.tmod (A089192 (n + 1)) (A056654 (2 * n + 3))).toNat

end

end A217222.P17674065204188697611

/-!
# A217223: Number of nX3 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A217223, there is no canonical definition to state claims against.
-/

/-! ## A217223.P5024805535623373101

`A217227(∑[n+2]+4)`
-/

namespace A217223.P5024805535623373101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217223.P5024805535623373101

/-! ## A217223.P11235961169509895958

`and(-1, A217227(A167614(n+1)))`
-/

namespace A217223.P11235961169509895958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A217227 (A167614 (n + 1)).toNat)

end

end A217223.P11235961169509895958

/-! ## A217223.P9664827343579482982

`A217227(A167614(n+1))+A054908(n)`
-/

namespace A217223.P9664827343579482982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A167614 (n + 1)).toNat + A054908 n

end

end A217223.P9664827343579482982

/-! ## A217223.P3808439875718486987

`A217227(A167614(n+1))+A065744(n)`
-/

namespace A217223.P3808439875718486987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A167614 (n + 1)).toNat + A065744 n

end

end A217223.P3808439875718486987

/-! ## A217223.P42758425962090969

`A217227(A167614(n+1))+A066035(n)`
-/

namespace A217223.P42758425962090969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A167614 (n + 1)).toNat + A066035 n

end

end A217223.P42758425962090969

/-!
# A217224: Number of nX4 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A217224, there is no canonical definition to state claims against.
-/

/-! ## A217224.P8554661230792164341

`A217227(A374004(n+1))`
-/

namespace A217224.P8554661230792164341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A374004 (n + 1)).toNat

end

end A217224.P8554661230792164341

/-! ## A217224.P11163356420740452670

`A217227(A141214(n)+7)`
-/

namespace A217224.P11163356420740452670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A141214 n + 7).toNat

end

end A217224.P11163356420740452670

/-! ## A217224.P2579687655772662917

`A217227(A052905(n)+9)`
-/

namespace A217224.P2579687655772662917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A052905 n + 9).toNat

end

end A217224.P2579687655772662917

/-! ## A217224.P16427383514261536991

`A217227(A055999(n)+10)`
-/

namespace A217224.P16427383514261536991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A055999 n + 10).toNat

end

end A217224.P16427383514261536991

/-! ## A217224.P8781291295247898646

`A217227(eq[5, A066657(n)])`
-/

namespace A217224.P8781291295247898646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217224.P8781291295247898646

/-!
# A217225: Number of nX5 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A217225, there is no canonical definition to state claims against.
-/

/-! ## A217225.P17804222617315073822

`A217227(A374005(n+1))`
-/

namespace A217225.P17804222617315073822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A374005 (n + 1)).toNat

end

end A217225.P17804222617315073822

/-! ## A217225.P10551598209084462186

`A217227(A167499(n+3))`
-/

namespace A217225.P10551598209084462186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A167499 (n + 3)).toNat

end

end A217225.P10551598209084462186

/-! ## A217225.P8896181177904077979

`A217227(A155212(n)+13)`
-/

namespace A217225.P8896181177904077979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A155212 n + 13).toNat

end

end A217225.P8896181177904077979

/-! ## A217225.P5618600858231734330

`A217227(A056000(n)+15)`
-/

namespace A217225.P5618600858231734330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A056000 n + 15).toNat

end

end A217225.P5618600858231734330

/-! ## A217225.P1331220658079253477

`A217227(eq[7, A066657(n)])`
-/

namespace A217225.P1331220658079253477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217225.P1331220658079253477

/-!
# A217226: Number of nX6 arrays of occupancy after each element moves to some horizontal or vertical neighbor, with no 2-loops and with no occupancy greater than 2.

The programs for A217226, there is no canonical definition to state claims against.
-/

/-! ## A217226.P17813344231466086209

`A217227(A374007(n+1))`
-/

namespace A217226.P17813344231466086209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A374007 (n + 1)).toNat

end

end A217226.P17813344231466086209

/-! ## A217226.P12558666691123380146

`A217227(A166136(n+4))`
-/

namespace A217226.P12558666691123380146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A166136 (n + 4)).toNat

end

end A217226.P12558666691123380146

/-! ## A217226.P13865273763224150628

`A217227(A056115(n)+21)`
-/

namespace A217226.P13865273763224150628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A056115 n + 21).toNat

end

end A217226.P13865273763224150628

/-! ## A217226.P3125094625825049884

`A217227(A168105(n)-n)`
-/

namespace A217226.P3125094625825049884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (A168105 n - (n : ℤ)).toNat

end

end A217226.P3125094625825049884

/-!
# A217228: Number of triangular nXnXn arrays of occupancy after each element moves to some neighbor but without 2-loops and with no occupancy greater than 2.

The programs for A217228, there is no canonical definition to state claims against.
-/

/-! ## A217228.P12797160668790497925

`A217232(∑[n+2])`
-/

namespace A217228.P12797160668790497925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217232 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217228.P12797160668790497925

/-!
# A217229: Number of triangular nXnXn arrays of occupancy after each element moves to some neighbor but without 2-loops and with no occupancy greater than 3.

The programs for A217229, there is no canonical definition to state claims against.
-/

/-! ## A217229.P13436799987503096149

`A217232(∑[n+3]+1)`
-/

namespace A217229.P13436799987503096149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217232 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217229.P13436799987503096149

/-!
# A217230: Number of triangular nXnXn arrays of occupancy after each element moves to some neighbor but without 2-loops and with no occupancy greater than 4.

The programs for A217230, there is no canonical definition to state claims against.
-/

/-! ## A217230.P8634017445705328813

`A217232(∑[round(1/acot(n))+4]+2)`
-/

namespace A217230.P8634017445705328813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217232 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A217230.P8634017445705328813

/-!
# A217232: T(n,k)=Number of triangular nXnXn arrays of occupancy after each element moves to some neighbor but without 2-loops and with no occupancy greater than k.

The programs for A217232, there is no canonical definition to state claims against.
-/

/-! ## A217232.P14429660481121502379

`A268667(A102480(n))%A331430(n)`
-/

namespace A217232.P14429660481121502379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268667 (A102480 n).toNat) (A331430 n)

end

end A217232.P14429660481121502379

/-! ## A217232.P1364892140710509147

`A009994(A329860(n)!)`
-/

namespace A217232.P1364892140710509147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (Nat.factorial (A329860 n).toNat)

end

end A217232.P1364892140710509147

/-! ## A217232.P14920984203756431462

`A043092(A329860(n)!)`
-/

namespace A217232.P14920984203756431462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043092 (Nat.factorial (A329860 n).toNat)

end

end A217232.P14920984203756431462

/-! ## A217232.P17449940959637774140

`A278987(A157011(n+1))`
-/

namespace A217232.P17449940959637774140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278987 (A157011 (n + 1)).toNat

end

end A217232.P17449940959637774140

/-! ## A217232.P1555189399473609868

`A327125(A308701(n+1))`
-/

namespace A217232.P1555189399473609868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327125 (A308701 (n + 1)).toNat

end

end A217232.P1555189399473609868

/-!
# A217233: Expansion of (1-2*x+x^2)/(1-3*x-3*x^2+x^3).

The programs for A217233, the canonical program `A217233.P16953981567978296025` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217233 has offset 0).

The definition of A217233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-3x-3x^2+x^3))` (program `A217233.P16953981567978296025`, by `A217233.P16953981567978296025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217233.P16953981567978296025

`ogf((1-2x+x^2)/(1-3x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217233

/-- `ogf((1-2x+x^2)/(1-3x-3x^2+x^3))` -/
def P16953981567978296025.Spec : Prop :=
  ∀ n, P16953981567978296025.a n = A217233 n

theorem P16953981567978296025.correct : P16953981567978296025.Spec := by
  intro n
  simp only [A217233]

end A217233

/-! ## A217233.P6514989319788955065

`4*a(n-1)-a(n-2)+4*(-1)^n` with `a(0)=1, a(1)=1`
-/

namespace A217233.P6514989319788955065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * a (n - 1) - a (n - 2) + 4 * (-1) ^ n

end

end A217233.P6514989319788955065

namespace A217233

/-- `4*a(n-1)-a(n-2)+4*(-1)^n` -/
def P6514989319788955065.Spec : Prop :=
  ∀ n, P6514989319788955065.a n = A217233 n

end A217233

/-! ## A217233.P17318432908843218379

`3*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A217233.P17318432908843218379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - a (n - 3)

end

end A217233.P17318432908843218379

namespace A217233

/-- `3*a(n-1)+3*a(n-2)-a(n-3)` -/
def P17318432908843218379.Spec : Prop :=
  ∀ n, P17318432908843218379.a n = A217233 n

end A217233

/-! ## A217233.P16361889740777420701

`3*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A217233.P16361889740777420701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  3 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A217233.P16361889740777420701

namespace A217233

/-- `3*(a(n-1)+a(n-2))-a(n-3)` -/
def P16361889740777420701.Spec : Prop :=
  ∀ n, P16361889740777420701.a n = A217233 n

end A217233

/-! ## A217233.P1200423467451133168

`Δ[xor(1, A120892(n))]`
-/

namespace A217233.P1200423467451133168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A120892 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217233.P1200423467451133168

namespace A217233

/-- `Δ[xor(1, A120892(n))]` -/
def P1200423467451133168.Spec : Prop :=
  ∀ n, P1200423467451133168.a n = A217233 n

end A217233

/-! ## A217233.P10855017768286257658

`∑[A120893(n)]-n%2`
-/

namespace A217233.P10855017768286257658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 2 : ℕ) : ℤ)

end

end A217233.P10855017768286257658

namespace A217233

/-- `∑[A120893(n)]-n%2` -/
def P10855017768286257658.Spec : Prop :=
  ∀ n, P10855017768286257658.a n = A217233 n

end A217233

/-! ## A217233.P2043565397813504429

`A052530(n)-a(n-1)` with `a(0)=1`
-/

namespace A217233.P2043565397813504429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052530 n - a (n - 1)

end

end A217233.P2043565397813504429

namespace A217233

/-- `A052530(n)-a(n-1)` -/
def P2043565397813504429.Spec : Prop :=
  ∀ n, P2043565397813504429.a n = A217233 n

end A217233

/-! ## A217233.P13550209203360035872

`A003699(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A217233.P13550209203360035872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A003699 n + a (n - 2)

end

end A217233.P13550209203360035872

namespace A217233

/-- `A003699(n)+a(n-2)` -/
def P13550209203360035872.Spec : Prop :=
  ∀ n, P13550209203360035872.a n = A217233 n

end A217233

/-! ## A217233.P12381029611460409089

`Δ[A001835(n)]-a(n-1)` with `a(0)=1`
-/

namespace A217233.P12381029611460409089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A217233.P12381029611460409089

namespace A217233

/-- `Δ[A001835(n)]-a(n-1)` -/
def P12381029611460409089.Spec : Prop :=
  ∀ n, P12381029611460409089.a n = A217233 n

end A217233

/-! ## A217233.P6092443017816946755

`A071954(n)-(a(n-1)+2)` with `a(0)=1`
-/

namespace A217233.P6092443017816946755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071954 n - (a (n - 1) + 2)

end

end A217233.P6092443017816946755

namespace A217233

/-- `A071954(n)-(a(n-1)+2)` -/
def P6092443017816946755.Spec : Prop :=
  ∀ n, P6092443017816946755.a n = A217233 n

end A217233

/-! ## A217233.P4471196654875376863

`2*A001353(n)-a(n-1)` with `a(0)=1`
-/

namespace A217233.P4471196654875376863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A001353 n - a (n - 1)

end

end A217233.P4471196654875376863

namespace A217233

/-- `2*A001353(n)-a(n-1)` -/
def P4471196654875376863.Spec : Prop :=
  ∀ n, P4471196654875376863.a n = A217233 n

end A217233

/-! ## A217233.P6103649873569445608

`A048788(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A217233.P6103649873569445608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048788 (2 * n) - a (n - 1)

end

end A217233.P6103649873569445608

namespace A217233

/-- `A048788(2*n)-a(n-1)` -/
def P6103649873569445608.Spec : Prop :=
  ∀ n, P6103649873569445608.a n = A217233 n

end A217233

/-! ## A217233.P3963238617246472628

`A254308(3*n)-a(n-1)` with `a(0)=1`
-/

namespace A217233.P3963238617246472628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254308 (3 * n) - a (n - 1)

end

end A217233.P3963238617246472628

namespace A217233

/-- `A254308(3*n)-a(n-1)` -/
def P3963238617246472628.Spec : Prop :=
  ∀ n, P3963238617246472628.a n = A217233 n

end A217233

/-! ## A217233.P3396293952899489213

`A120892(n)+A001353(n)`
-/

namespace A217233.P3396293952899489213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 n + A001353 n

end

end A217233.P3396293952899489213

namespace A217233

/-- `A120892(n)+A001353(n)` -/
def P3396293952899489213.Spec : Prop :=
  ∀ n, P3396293952899489213.a n = A217233 n

end A217233

/-! ## A217233.P18043440115929527245

`A099780(n)-A014113(n)`
-/

namespace A217233.P18043440115929527245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099780 n - A014113 n

end

end A217233.P18043440115929527245

namespace A217233

/-- `A099780(n)-A014113(n)` -/
def P18043440115929527245.Spec : Prop :=
  ∀ n, P18043440115929527245.a n = A217233 n

end A217233

/-! ## A217233.P11598022384644124698

`A120892(n)-A106707(n)`
-/

namespace A217233.P11598022384644124698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 n - A106707 n

end

end A217233.P11598022384644124698

namespace A217233

/-- `A120892(n)-A106707(n)` -/
def P11598022384644124698.Spec : Prop :=
  ∀ n, P11598022384644124698.a n = A217233 n

end A217233

/-! ## A217233.P5892715026714762414

`A146983(n)-A109437(n)`
-/

namespace A217233.P5892715026714762414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146983 n - A109437 n

end

end A217233.P5892715026714762414

namespace A217233

/-- `A146983(n)-A109437(n)` -/
def P5892715026714762414.Spec : Prop :=
  ∀ n, P5892715026714762414.a n = A217233 n

end A217233

/-! ## A217233.P3349386127576990767

`Δ[A002530(n)*A048788(n)]`
-/

namespace A217233.P3349386127576990767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n * A048788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A217233.P3349386127576990767

namespace A217233

/-- `Δ[A002530(n)*A048788(n)]` -/
def P3349386127576990767.Spec : Prop :=
  ∀ n, P3349386127576990767.a n = A217233 n

end A217233

/-! ## A217233.P10621291755508524361

`A120892(n)+A002530(2*n)`
-/

namespace A217233.P10621291755508524361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120892 n + A002530 (2 * n)

end

end A217233.P10621291755508524361

namespace A217233

/-- `A120892(n)+A002530(2*n)` -/
def P10621291755508524361.Spec : Prop :=
  ∀ n, P10621291755508524361.a n = A217233 n

end A217233

/-! ## A217233.P4871871838821233452

`2*A120893(n)-A001835(n)`
-/

namespace A217233.P4871871838821233452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A120893 n - A001835 n

end

end A217233.P4871871838821233452

namespace A217233

/-- `2*A120893(n)-A001835(n)` -/
def P4871871838821233452.Spec : Prop :=
  ∀ n, P4871871838821233452.a n = A217233 n

end A217233

/-!
# A217234: Triangle of expansion coefficients of the sum of an n X n array with equal top row and left column (extended by the rule of Pascal's triangle) in terms of the top row elements.

The programs for A217234, there is no canonical definition to state claims against.
-/

/-! ## A217234.P8619617979033533774

`A036453(A046899(n))*A046899(A038722(n+1))`
-/

namespace A217234.P8619617979033533774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A046899 n).toNat * A046899 (A038722 (n + 1)).toNat

end

end A217234.P8619617979033533774

/-! ## A217234.P10239841073263712512

`A020639(A113025(n))*A046899(A038722(n+1))`
-/

namespace A217234.P10239841073263712512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A113025 n).toNat * A046899 (A038722 (n + 1)).toNat

end

end A217234.P10239841073263712512

/-! ## A217234.P15680792371646905796

`A020639(A048743(n+1))*A046899(A038722(n+1))`
-/

namespace A217234.P15680792371646905796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A048743 (n + 1)).toNat * A046899 (A038722 (n + 1)).toNat

end

end A217234.P15680792371646905796

/-!
# A217238: a(n) = n! * Sum_{k=1..n} k!.

The programs for A217238, the canonical program `A217238.P316597164882732273` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217238 has offset 0).

The definition of A217238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217238.P316597164882732273

`A000142(n)*A007489(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217238

/-- `A000142(n)*A007489(n)` -/
def P316597164882732273.Spec : Prop :=
  ∀ n, P316597164882732273.a n = A217238 n

theorem P316597164882732273.correct : P316597164882732273.Spec := by
  intro n
  simp only [A217238]

end A217238

/-! ## A217238.P14061314771236029858

`n!*(∑[n!]-1)`
-/

namespace A217238.P14061314771236029858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A217238.P14061314771236029858

namespace A217238

/-- `n!*(∑[n!]-1)` -/
def P14061314771236029858.Spec : Prop :=
  ∀ n, P14061314771236029858.a n = A217238 n

end A217238

/-! ## A217238.P12282180040815368057

`n!*∑[lcm(n!, dr(n))]`
-/

namespace A217238.P12282180040815368057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217238.P12282180040815368057

namespace A217238

/-- `n!*∑[lcm(n!, dr(n))]` -/
def P12282180040815368057.Spec : Prop :=
  ∀ n, (P12282180040815368057.a n : ℤ) = A217238 n

end A217238

/-! ## A217238.P14928226063188825039

`n!*xor(4, ∑[n!]+3)`
-/

namespace A217238.P14928226063188825039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A217238.P14928226063188825039

namespace A217238

/-- `n!*xor(4, ∑[n!]+3)` -/
def P14928226063188825039.Spec : Prop :=
  ∀ n, (P14928226063188825039.a n : ℤ) = A217238 n

end A217238

/-! ## A217238.P11467558842484857084

`n!*xor(-1, ∑[-n!])`
-/

namespace A217238.P11467558842484857084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217238.P11467558842484857084

namespace A217238

/-- `n!*xor(-1, ∑[-n!])` -/
def P11467558842484857084.Spec : Prop :=
  ∀ n, P11467558842484857084.a n = A217238 n

end A217238

/-!
# A217239: a(n) = n!*(!n - 1) = n! * Sum_{k=1..n-1} k!.

The programs for A217239, there is no canonical definition to state claims against.
-/

/-! ## A217239.P18218827102220889209

`∑[(n-1)*a(n-1)]*A000142(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A217239.P18218827102220889209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A217239.P18218827102220889209

/-! ## A217239.P4468319270323807683

`A104150(n)*A288780(n)`
-/

namespace A217239.P4468319270323807683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n * A288780 n

end

end A217239.P4468319270323807683

/-! ## A217239.P6462081335937297

`A217238(n)%A001044(n)`
-/

namespace A217239.P6462081335937297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217238 n) (A001044 n)

end

end A217239.P6462081335937297

/-! ## A217239.P17081856079814845031

`n*A217238(A028310(n)-1)`
-/

namespace A217239.P17081856079814845031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A217238 (A028310 n - 1).toNat

end

end A217239.P17081856079814845031

/-! ## A217239.P1273434426255586139

`A061640(A028310(n))-A000142(n)`
-/

namespace A217239.P1273434426255586139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061640 (A028310 n).toNat - A000142 n

end

end A217239.P1273434426255586139

/-!
# A217240: Number of triangular n X n X n arrays of occupancy after each element moves to some neighbor and with no occupancy greater than 2.

The programs for A217240, there is no canonical definition to state claims against.
-/

/-! ## A217240.P1641561581953541077

`A217245(∑[n+2])`
-/

namespace A217240.P1641561581953541077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217245 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217240.P1641561581953541077

/-!
# A217241: Number of triangular nXnXn arrays of occupancy after each element moves to some neighbor and with no occupancy greater than 3.

The programs for A217241, there is no canonical definition to state claims against.
-/

/-! ## A217241.P1923214976590432640

`A217245(∑[n+3]+1)`
-/

namespace A217241.P1923214976590432640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217241.P1923214976590432640

/-!
# A217242: Number of triangular nXnXn arrays of occupancy after each element moves to some neighbor and with no occupancy greater than 4.

The programs for A217242, there is no canonical definition to state claims against.
-/

/-! ## A217242.P14109293373983613028

`A217245(∑[n+4]+3)`
-/

namespace A217242.P14109293373983613028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217245 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A217242.P14109293373983613028

/-!
# A217245: T(n,k)=Number of triangular nXnXn arrays of occupancy after each element moves to some neighbor and with no occupancy greater than k.

The programs for A217245, there is no canonical definition to state claims against.
-/

/-! ## A217245.P1722646574590206260

`∏{e}[A238938(A194959(n+1))!, #+1]-1`
-/

namespace A217245.P1722646574590206260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A238938 (A194959 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1

end

end A217245.P1722646574590206260

/-! ## A217245.P15117882546992174583

`A161673(A263666(n+1)^A327481(n+1))`
-/

namespace A217245.P15117882546992174583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161673 (SequenceMachineLib.roundAway ((A263666 (n + 1) : ℚ) ^ (A327481 (n + 1) : ℤ))).toNat

end

end A217245.P15117882546992174583

/-! ## A217245.P3482150944121327576

`A124332(A027610(n+1))%A013615(n)`
-/

namespace A217245.P3482150944121327576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124332 (A027610 (n + 1)).toNat) (A013615 n)

end

end A217245.P3482150944121327576

/-! ## A217245.P16441001216249190098

`A027868(and(A083764(n+1), A083777(n+1)))`
-/

namespace A217245.P16441001216249190098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (Int.land (A083764 (n + 1)) (A083777 (n + 1))).toNat

end

end A217245.P16441001216249190098

/-! ## A217245.P13455602810999384889

`A002412(A323931(3*n+4)%A336575(n))`
-/

namespace A217245.P13455602810999384889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (Int.tmod (A323931 (3 * n + 4)) (A336575 n)).toNat

end

end A217245.P13455602810999384889

/-!
# A217248: Numbers whose square is the sum of two nonnegative cubes.

The programs for A217248, there is no canonical definition to state claims against.
-/

/-! ## A217248.P6696361107435271898

`∪[n^3, A050801(n+1)]`
-/

namespace A217248.P6696361107435271898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217248.P6696361107435271898

/-! ## A217248.P3438818841487153092

`∪[A050801(n+1), A000578(n)]`
-/

namespace A217248.P3438818841487153092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217248.P3438818841487153092

/-! ## A217248.P10394930633282051133

`sqrt(∩[A230314(n+1), n²])`
-/

namespace A217248.P10394930633282051133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A217248.P10394930633282051133

/-! ## A217248.P13487846268971987536

`sqrt(∩[A000290(n), A230314(n+1)])`
-/

namespace A217248.P13487846268971987536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230314 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A217248.P13487846268971987536

/-! ## A217248.P66901632523851834

`eq[1, A025446(n²)]`
-/

namespace A217248.P66901632523851834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217248.P66901632523851834

/-!
# A217250: Minimal length of formulas representing n only using addition, multiplication, exponentiation and the constant 1.

The programs for A217250, there is no canonical definition to state claims against.
-/

/-! ## A217250.P609890970928834431

`2*A025280(n+1)-1`
-/

namespace A217250.P609890970928834431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025280 (n + 1) - 1

end

end A217250.P609890970928834431

/-! ## A217250.P1856878171224320578

`2*A005208(n+1)+1`
-/

namespace A217250.P1856878171224320578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005208 (n + 1) + 1

end

end A217250.P1856878171224320578

/-! ## A217250.P13207337682459837122

`A005408(A005208(n+1))`
-/

namespace A217250.P13207337682459837122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005208 (n + 1)).toNat

end

end A217250.P13207337682459837122

/-! ## A217250.P18172791156723721796

`A004273(A025280(n+1))`
-/

namespace A217250.P18172791156723721796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A025280 (n + 1)).toNat

end

end A217250.P18172791156723721796

/-! ## A217250.P17551310449190409862

`A004741(A025280(n+1)²)`
-/

namespace A217250.P17551310449190409862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A025280 (n + 1) ^ 2).toNat

end

end A217250.P17551310449190409862

/-! ## A217250.P2457184261764371747

`A014681(2*A025280(n+1))`
-/

namespace A217250.P2457184261764371747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A025280 (n + 1)).toNat

end

end A217250.P2457184261764371747

/-! ## A217250.P15091656105191165126

`A005843(A025280(n+1)-1)+1`
-/

namespace A217250.P15091656105191165126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A025280 (n + 1) - 1).toNat + 1

end

end A217250.P15091656105191165126

/-! ## A217250.P12662887434670302299

`A025280(n+1)+A005208(n+1)`
-/

namespace A217250.P12662887434670302299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1) + A005208 (n + 1)

end

end A217250.P12662887434670302299

/-! ## A217250.P5128355525323590058

`A168485(A005208(n+1)+A005208(n+1)+1)`
-/

namespace A217250.P5128355525323590058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A005208 (n + 1) + (A005208 (n + 1) + 1)).toNat

end

end A217250.P5128355525323590058

/-! ## A217250.P3196900142861130196

`A025280(n+1)+A025280(n+1)-A133872(A004770(n+1))`
-/

namespace A217250.P3196900142861130196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1) + (A025280 (n + 1) - A133872 (A004770 (n + 1)).toNat)

end

end A217250.P3196900142861130196

/-!
# A217251: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n * exp(n*x*A(n*x)) / n!.

The programs for A217251, there is no canonical definition to state claims against.
-/

/-! ## A217251.P7733870106425464266

`A230323(and(n, p?[abs(1-3*6^n)]))`
-/

namespace A217251.P7733870106425464266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * 6 ^ n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230323 (Int.land (n : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A217251.P7733870106425464266

/-! ## A217251.P11243862300888037555

`A028310(A230323(n))`
-/

namespace A217251.P11243862300888037555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A230323 n).toNat

end

end A217251.P11243862300888037555

/-!
# A217252: Lucky numbers whose digital reversal is another lucky number.

The programs for A217252, there is no canonical definition to state claims against.
-/

/-! ## A217252.P6631981697431450501

`∩[A029742(n+1), A118561(n+1)]`
-/

namespace A217252.P6631981697431450501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217252.P6631981697431450501

/-! ## A217252.P11436325095850122268

`record[A118561(A216671(n+1)+A111890(n+1))]`
-/

namespace A217252.P11436325095850122268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118561 (A216671 (n + 1) + A111890 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217252.P11436325095850122268

/-!
# A217254: a(n) = round(primepi(n) * prime(n)/n).

The programs for A217254, the canonical program `A217254.P16266567825689013755` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217254 has offset 1).

The definition of A217254 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(A000720(n+1)*A000040(n+1)/(n+1))` (program `A217254.P16266567825689013755`, by `A217254.P16266567825689013755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217254.P16266567825689013755

`round(A000720(n+1)*A000040(n+1)/(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217254

/-- `round(A000720(n+1)*A000040(n+1)/(n+1))` -/
def P16266567825689013755.Spec : Prop :=
  ∀ n, P16266567825689013755.a n = A217254 (n + 1)

theorem P16266567825689013755.correct : P16266567825689013755.Spec := by
  intro n
  simp only [A217254, Nat.add_sub_cancel]

end A217254

/-! ## A217254.P1291140988976231142

`round(A128930(n+1)/(n+1))`
-/

namespace A217254.P1291140988976231142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A128930 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A217254.P1291140988976231142

namespace A217254

/-- `round(A128930(n+1)/(n+1))` -/
def P1291140988976231142.Spec : Prop :=
  ∀ n, P1291140988976231142.a n = A217254 (n + 1)

end A217254

/-! ## A217254.P2513845156576377576

`round(A000040(n+1)*∑[A010051(n+1)]/(n+1))`
-/

namespace A217254.P2513845156576377576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A217254.P2513845156576377576

namespace A217254

/-- `round(A000040(n+1)*∑[A010051(n+1)]/(n+1))` -/
def P2513845156576377576.Spec : Prop :=
  ∀ n, P2513845156576377576.a n = A217254 (n + 1)

end A217254

/-! ## A217254.P17946721714416321031

`round((A000040(n+1)-A111181(n+1))*A000040(n+1)/(n+1))`
-/

namespace A217254.P17946721714416321031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000040 (n + 1) - A111181 (n + 1)) * A000040 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A217254.P17946721714416321031

namespace A217254

/-- `round((A000040(n+1)-A111181(n+1))*A000040(n+1)/(n+1))` -/
def P17946721714416321031.Spec : Prop :=
  ∀ n, P17946721714416321031.a n = A217254 (n + 1)

theorem P17946721714416321031.correct : P17946721714416321031.Spec := by
  intro n
  simp only [A217254, Nat.add_sub_cancel, A217254.P17946721714416321031.a, A217254.P16266567825689013755.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A111181, A111181.P943142989482477223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A217254

/-! ## A217254.P3594629818002825112

`round(A008578(n+2)/(n+1)*A000720(n+1))`
-/

namespace A217254.P3594629818002825112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008578 (n + 2) : ℚ) / (n + 1 : ℚ) * (A000720 (n + 1) : ℚ))

end

end A217254.P3594629818002825112

namespace A217254

/-- `round(A008578(n+2)/(n+1)*A000720(n+1))` -/
def P3594629818002825112.Spec : Prop :=
  ∀ n, P3594629818002825112.a n = A217254 (n + 1)

end A217254

/-!
# A217257: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >= 1 or if k-n >= 7, T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,3) = T(0,4) = T(0,5) = T(0,6) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A217257, there is no canonical definition to state claims against.
-/

/-! ## A217257.P3446504448503130299

`A217315(A066182(n+1))%A031285(n)`
-/

namespace A217257.P3446504448503130299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217315 (A066182 (n + 1)).toNat) (A031285 n)

end

end A217257.P3446504448503130299

/-! ## A217257.P16941743869013602838

`A217315(A066182(n+1))+A000038(A136791(n))`
-/

namespace A217257.P16941743869013602838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217315 (A066182 (n + 1)).toNat + A000038 (A136791 n).toNat

end

end A217257.P16941743869013602838

/-! ## A217257.P13772170582332741280

`A217315(A066182(n+1))^A221364(A032447(n+1))`
-/

namespace A217257.P13772170582332741280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217315 (A066182 (n + 1)).toNat : ℚ) ^ (A221364 (A032447 (n + 1)).toNat : ℤ)

end

end A217257.P13772170582332741280

/-! ## A217257.P12886105963499082302

`A216054(n)+A025441(A119502(n))`
-/

namespace A217257.P12886105963499082302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216054 n + A025441 (A119502 n).toNat

end

end A217257.P12886105963499082302

/-! ## A217257.P511065390921221636

`A217315(n)-A185284(A217770(n+4))`
-/

namespace A217257.P511065390921221636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217315 n - A185284 (A217770 (n + 4)).toNat

end

end A217257.P511065390921221636

/-!
# A217258: Threshold for the P(n)-avoidance edge-coloring game with two colors and fixed tree size restriction, where P(n) denotes the path on n edges (see the comments and reference for precise definition).

The programs for A217258, there is no canonical definition to state claims against.
-/

/-! ## A217258.P8681616067174526164

`or(∑[A278537(3*n+2)], A278500(n+5))`
-/

namespace A217258.P8681616067174526164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A278500 (n + 5))

end

end A217258.P8681616067174526164

/-! ## A217258.P3566116486423609465

`A004526(n%A336853(n+2))+∑[n+1]`
-/

namespace A217258.P3566116486423609465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (n : ℤ) (A336853 (n + 2))).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A217258.P3566116486423609465

/-! ## A217258.P10926545674211328659

`or(A007814(A018000(n)), A128223(n+1))`
-/

namespace A217258.P10926545674211328659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A018000 n).toNat) (A128223 (n + 1))

end

end A217258.P10926545674211328659

/-! ## A217258.P2686604529110316059

`or(A128223(n+1), A335017(A056753(n)))`
-/

namespace A217258.P2686604529110316059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128223 (n + 1)) (A335017 (A056753 n).toNat)

end

end A217258.P2686604529110316059

/-! ## A217258.P5099201470121345519

`or(A128223(n+1), A350914(A164652(n)))`
-/

namespace A217258.P5099201470121345519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A128223 (n + 1)) (A350914 (A164652 n).toNat)

end

end A217258.P5099201470121345519

/-!
# A217259: Numbers n such that sigma(n+1) - sigma(n-1) = 2; sigma(n) = A000203(n) = sum of divisors of n.

The programs for A217259, there is no canonical definition to state claims against.
-/

/-! ## A217259.P11302233867165618466

`A054799(n+1)+1`
-/

namespace A217259.P11302233867165618466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) + 1

end

end A217259.P11302233867165618466

/-! ## A217259.P15082122111833933511

`eq[A000203(n+1)+2, A000203(n+3)]+2`
-/

namespace A217259.P15082122111833933511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A217259.P15082122111833933511

/-! ## A217259.P3761729476497592485

`A020725(A054799(n+1))`
-/

namespace A217259.P3761729476497592485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A054799 (n + 1)).toNat

end

end A217259.P3761729476497592485

/-!
# A217260: Expansion of e.g.f. 2*arctan(1+x) - Pi/2.

The programs for A217260, there is no canonical definition to state claims against.
-/

/-! ## A217260.P5187539559254997402

`A009014(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A217260.P5187539559254997402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009014 n - (n : ℤ) * a (n - 1)

end

end A217260.P5187539559254997402

/-! ## A217260.P11492513197811630947

`A075553(n+1)*A090932(n)`
-/

namespace A217260.P11492513197811630947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (n + 1) * A090932 n

end

end A217260.P11492513197811630947

/-! ## A217260.P6651998435907138

`A046978(A016789(n)+1)*A090932(n)`
-/

namespace A217260.P6651998435907138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A016789 n + 1).toNat * A090932 n

end

end A217260.P6651998435907138

/-! ## A217260.P11017919520332566437

`A154341(∑[n]+n)`
-/

namespace A217260.P11017919520332566437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154341 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A217260.P11017919520332566437

/-! ## A217260.P18317261693358622222

`A154342(∑[n]+n)`
-/

namespace A217260.P18317261693358622222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154342 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A217260.P18317261693358622222

/-! ## A217260.P6297854557449639516

`A154341(A000096(n))+A000007(n+1)`
-/

namespace A217260.P6297854557449639516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154341 (A000096 n).toNat + A000007 (n + 1)

end

end A217260.P6297854557449639516

/-! ## A217260.P6432597017745045426

`A154341(A000096(n))+A000035(2*n)`
-/

namespace A217260.P6432597017745045426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154341 (A000096 n).toNat + A000035 (2 * n)

end

end A217260.P6432597017745045426

/-! ## A217260.P17083742896658479323

`A057078(3*n)*A154341(A000096(n))`
-/

namespace A217260.P17083742896658479323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (3 * n) * A154341 (A000096 n).toNat

end

end A217260.P17083742896658479323

/-!
# A217261: Numbers of the form i^j^k, for i,j,k > 1.

The programs for A217261, there is no canonical definition to state claims against.
-/

/-! ## A217261.P16892338647622498773

`∩[A076468(n+1), A383264(n+1)]`
-/

namespace A217261.P16892338647622498773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217261.P16892338647622498773

/-! ## A217261.P15062904045095444312

`∩[A117453(n+1), A383264(n+1)]`
-/

namespace A217261.P15062904045095444312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217261.P15062904045095444312

/-! ## A217261.P17784204655349446397

`∩[A076468(n+1), A130897(n+1)]`
-/

namespace A217261.P17784204655349446397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217261.P17784204655349446397

/-! ## A217261.P538809338902978641

`∩[A117453(n+1), A130897(n+1)]`
-/

namespace A217261.P538809338902978641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217261.P538809338902978641

/-!
# A217262: Delta sequence for binary words in a minimal-change order (subset-lex Gray code).

The programs for A217262, there is no canonical definition to state claims against.
-/

/-! ## A217262.P14975171430609823836

`A229297(record[A000267(A210023(n))])`
-/

namespace A217262.P14975171430609823836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A210023 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229297 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A217262.P14975171430609823836

/-! ## A217262.P13232289634498336629

`A008611(gcd(n+1, A147905(n+1)))`
-/

namespace A217262.P13232289634498336629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.gcd (n + 1 : ℤ) (A147905 (n + 1)))

end

end A217262.P13232289634498336629

/-! ## A217262.P14390483547672638444

`and(A075425(n+1), A075431(A293057(n)))`
-/

namespace A217262.P14390483547672638444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075425 (n + 1)) (A075431 (A293057 n).toNat)

end

end A217262.P14390483547672638444

/-! ## A217262.P15823612532552209787

`and(A000040(A208960(n+1)), A088696(n+1))`
-/

namespace A217262.P15823612532552209787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A208960 (n + 1)).toNat) (A088696 (n + 1))

end

end A217262.P15823612532552209787

/-! ## A217262.P13191112859030881912

`and(A000040(A209218(n+1)), A088696(n+1))`
-/

namespace A217262.P13191112859030881912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A209218 (n + 1)).toNat) (A088696 (n + 1))

end

end A217262.P13191112859030881912

/-!
# A217263: Composite numbers such that every concatenation of their prime factors is prime.

The programs for A217263, there is no canonical definition to state claims against.
-/

/-! ## A217263.P14185752536282447410

`∪[A217264(n+1), A330441(n+1)]`
-/

namespace A217263.P14185752536282447410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A217263.P14185752536282447410

/-!
# A217264: Numbers with 3 or more prime factors (with multiplicity) such that every concatenation of their prime factors is prime.

The programs for A217264, there is no canonical definition to state claims against.
-/

/-! ## A217264.P14163321876104300486

`filter[A217263(n+1), A065202(#)]`
-/

namespace A217264.P14163321876104300486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A217264.P14163321876104300486

/-! ## A217264.P4119600789938777678

`∩[A030515(n+1), A217263(n+1)]`
-/

namespace A217264.P4119600789938777678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217264.P4119600789938777678

/-!
# A217267: Number of n X n arrays of occupancy after each element moves to some horizontal or vertical neighbor.

The programs for A217267, there is no canonical definition to state claims against.
-/

/-! ## A217267.P2453332904780335348

`A217273((n+1)²+n²)`
-/

namespace A217267.P2453332904780335348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 ((n + 1) ^ 2 + n ^ 2)

end

end A217267.P2453332904780335348

/-! ## A217267.P4496448215707670676

`A217273(A001844(n))*A294746(n)`
-/

namespace A217267.P4496448215707670676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A001844 n).toNat * A294746 n

end

end A217267.P4496448215707670676

/-! ## A217267.P5154945570939208590

`A217273(A001844(n))+A034486(n+1)`
-/

namespace A217267.P5154945570939208590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A001844 n).toNat + A034486 (n + 1)

end

end A217267.P5154945570939208590

/-!
# A217268: Number of n X 3 arrays of occupancy after each element moves to some horizontal or vertical neighbor.

The programs for A217268, there is no canonical definition to state claims against.
-/

/-! ## A217268.P6736030502740718466

`A217273(∑[n+2]+4)`
-/

namespace A217268.P6736030502740718466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217268.P6736030502740718466

/-! ## A217268.P1732057182210587795

`lcm(2, A217273(A167614(n+1)))`
-/

namespace A217268.P1732057182210587795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A217273 (A167614 (n + 1)).toNat)

end

end A217268.P1732057182210587795

/-! ## A217268.P17961390124961630924

`record[A217273(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A217268.P17961390124961630924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217268.P17961390124961630924

/-! ## A217268.P15019753132693515677

`A217273(A167614(n+1))*A322473(n)`
-/

namespace A217268.P15019753132693515677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A167614 (n + 1)).toNat * A322473 n

end

end A217268.P15019753132693515677

/-! ## A217268.P2815320684484797346

`A217273(A167614(n+1))+A070096(n+1)`
-/

namespace A217268.P2815320684484797346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A167614 (n + 1)).toNat + A070096 (n + 1)

end

end A217268.P2815320684484797346

/-!
# A217269: Number of n X 4 arrays of occupancy after each element moves to some horizontal or vertical neighbor.

The programs for A217269, there is no canonical definition to state claims against.
-/

/-! ## A217269.P9756998525981759915

`A217273(A055999(n)+10)`
-/

namespace A217269.P9756998525981759915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A055999 n + 10).toNat

end

end A217269.P9756998525981759915

/-! ## A217269.P11917596966396720210

`A217273(A167614(n+2)+1)`
-/

namespace A217269.P11917596966396720210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A167614 (n + 2) + 1).toNat

end

end A217269.P11917596966396720210

/-! ## A217269.P4101009317047045376

`A217273(Δ[A023545(n+1)-n²])`
-/

namespace A217269.P4101009317047045376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (f1 (n + 1) - f1 n).toNat

end

end A217269.P4101009317047045376

/-! ## A217269.P7687668571154256072

`A217273(A141214(n+1))`
-/

namespace A217269.P7687668571154256072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A141214 (n + 1)).toNat

end

end A217269.P7687668571154256072

/-! ## A217269.P10617501166007020507

`A217273(A374004(n+1))`
-/

namespace A217269.P10617501166007020507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A374004 (n + 1)).toNat

end

end A217269.P10617501166007020507

/-!
# A217270: Number of nX5 arrays of occupancy after each element moves to some horizontal or vertical neighbor.

The programs for A217270, there is no canonical definition to state claims against.
-/

/-! ## A217270.P17745540604817660786

`A217273(A155212(n)+13)`
-/

namespace A217270.P17745540604817660786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A155212 n + 13).toNat

end

end A217270.P17745540604817660786

/-! ## A217270.P206328742308317757

`A217273(A056000(n)+15)`
-/

namespace A217270.P206328742308317757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A056000 n + 15).toNat

end

end A217270.P206328742308317757

/-! ## A217270.P15618074559588470379

`A217273(A374005(n+1))`
-/

namespace A217270.P15618074559588470379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A374005 (n + 1)).toNat

end

end A217270.P15618074559588470379

/-! ## A217270.P4898877611169255651

`A217273(A056115(n)+11)`
-/

namespace A217270.P4898877611169255651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A056115 n + 11).toNat

end

end A217270.P4898877611169255651

/-! ## A217270.P4070071229826058028

`A217273(eq[4, A193592(n)])`
-/

namespace A217270.P4070071229826058028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217270.P4070071229826058028

/-!
# A217271: Number of nX6 arrays of occupancy after each element moves to some horizontal or vertical neighbor.

The programs for A217271, there is no canonical definition to state claims against.
-/

/-! ## A217271.P10853564257521213984

`A217273(A374007(n+1))`
-/

namespace A217271.P10853564257521213984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (A374007 (n + 1)).toNat

end

end A217271.P10853564257521213984

/-! ## A217271.P17777121813673472249

`A217273(eq[3, A219347(n)])`
-/

namespace A217271.P17777121813673472249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217271.P17777121813673472249

/-!
# A217272: Number of nX7 arrays of occupancy after each element moves to some horizontal or vertical neighbor.

The programs for A217272, there is no canonical definition to state claims against.
-/

/-! ## A217272.P11240199364685334125

`A217273(eq[4, A219347(n)])`
-/

namespace A217272.P11240199364685334125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217272.P11240199364685334125

/-!
# A217273: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or vertical neighbor.

The programs for A217273, there is no canonical definition to state claims against.
-/

/-! ## A217273.P3607864318720515829

`A001221(A073156(n))^A007318(n)`
-/

namespace A217273.P3607864318720515829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A073156 n).toNat : ℚ) ^ (A007318 n : ℤ)

end

end A217273.P3607864318720515829

/-! ## A217273.P7120825153830289164

`A001221(A073156(n))^A077028(n)`
-/

namespace A217273.P7120825153830289164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (A073156 n).toNat : ℚ) ^ (A077028 n : ℤ)

end

end A217273.P7120825153830289164

/-! ## A217273.P2393647340431375900

`A325621(A197180(n+1))%A000203(∑[4^n])`
-/

namespace A217273.P2393647340431375900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325621 (A197180 (n + 1)).toNat) (A000203 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A217273.P2393647340431375900

/-! ## A217273.P6596849110217034782

`A067298(A083381(n))%A000203(A073156(n))`
-/

namespace A217273.P6596849110217034782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067298 (A083381 n).toNat) (A000203 (A073156 n).toNat)

end

end A217273.P6596849110217034782

/-! ## A217273.P10713364311374490241

`A006949(A257610(n))%A000203(A073156(n))`
-/

namespace A217273.P10713364311374490241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006949 (A257610 n).toNat) (A000203 (A073156 n).toNat)

end

end A217273.P10713364311374490241

/-!
# A217274: a(n) = 7*a(n-1) - 14*a(n-2) + 7*a(n-3) with a(0)=0, a(1)=1, a(2)=7.

The programs for A217274, the canonical program `A217274.P7064990857302689228` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217274 has offset 0).

The definition of A217274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A217274.P7064990857302689228`, by `A217274.P7064990857302689228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A217274.P7064990857302689228

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217274

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P7064990857302689228.Spec : Prop :=
  ∀ n, P7064990857302689228.a n = A217274 n

theorem P7064990857302689228.correct : P7064990857302689228.Spec := by
  intro n
  simp only [A217274]

end A217274

/-! ## A217274.P12424120253192833551

`ogf(x/(1-7x+14x^2-7x^3))`
-/

namespace A217274.P12424120253192833551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 14, -7] n

end

end A217274.P12424120253192833551

namespace A217274

/-- `ogf(x/(1-7x+14x^2-7x^3))` -/
def P12424120253192833551.Spec : Prop :=
  ∀ n, P12424120253192833551.a n = A217274 n

end A217274

/-! ## A217274.P14511460431086415025

`a(n-1)+A215008(n)+a(n-1)` with `a(0)=0`
-/

namespace A217274.P14511460431086415025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A215008 n + a (n - 1))

end

end A217274.P14511460431086415025

namespace A217274

/-- `a(n-1)+A215008(n)+a(n-1)` -/
def P14511460431086415025.Spec : Prop :=
  ∀ n, P14511460431086415025.a n = A217274 n

end A217274

/-! ## A217274.P16613533617038503718

`Δ[A215008(n)]-A215007(n)`
-/

namespace A217274.P16613533617038503718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A215007 n

end

end A217274.P16613533617038503718

namespace A217274

/-- `Δ[A215008(n)]-A215007(n)` -/
def P16613533617038503718.Spec : Prop :=
  ∀ n, P16613533617038503718.a n = A217274 n

end A217274

/-! ## A217274.P5224600582625790465

`A215008(n+1)-A215493(n+1)`
-/

namespace A217274.P5224600582625790465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (n + 1) - A215493 (n + 1)

end

end A217274.P5224600582625790465

namespace A217274

/-- `A215008(n+1)-A215493(n+1)` -/
def P5224600582625790465.Spec : Prop :=
  ∀ n, P5224600582625790465.a n = A217274 n

end A217274

/-! ## A217274.P1736375819609598362

`∑[Δ[A215008(n)]-A122068(n+1)]`
-/

namespace A217274.P1736375819609598362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A122068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217274.P1736375819609598362

namespace A217274

/-- `∑[Δ[A215008(n)]-A122068(n+1)]` -/
def P1736375819609598362.Spec : Prop :=
  ∀ n, P1736375819609598362.a n = A217274 n

end A217274

/-! ## A217274.P6260332462700244184

`A215008(n)+A319512(n)-A215007(n)`
-/

namespace A217274.P6260332462700244184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n + (A319512 n - A215007 n)

end

end A217274.P6260332462700244184

namespace A217274

/-- `A215008(n)+A319512(n)-A215007(n)` -/
def P6260332462700244184.Spec : Prop :=
  ∀ n, P6260332462700244184.a n = A217274 n

end A217274

/-! ## A217274.P14606808717477748457

`A215008(n+1)-(A215008(n)+A215007(n))`
-/

namespace A217274.P14606808717477748457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (n + 1) - (A215008 n + A215007 n)

end

end A217274.P14606808717477748457

namespace A217274

/-- `A215008(n+1)-(A215008(n)+A215007(n))` -/
def P14606808717477748457.Spec : Prop :=
  ∀ n, P14606808717477748457.a n = A217274 n

end A217274

/-! ## A217274.P2067033004241680230

`∑[A094429(n+1)/7]`
-/

namespace A217274.P2067033004241680230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094429 (n + 1) : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217274.P2067033004241680230

namespace A217274

/-- `∑[A094429(n+1)/7]` -/
def P2067033004241680230.Spec : Prop :=
  ∀ n, P2067033004241680230.a n = (A217274 n : ℚ)

end A217274

/-! ## A217274.P2726685289192723806

`A122068(n+2)-A215007(n+1)`
-/

namespace A217274.P2726685289192723806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122068 (n + 2) - A215007 (n + 1)

end

end A217274.P2726685289192723806

namespace A217274

/-- `A122068(n+2)-A215007(n+1)` -/
def P2726685289192723806.Spec : Prop :=
  ∀ n, P2726685289192723806.a n = A217274 n

end A217274

/-! ## A217274.P4651140864020946257

`A319512(n+1)-A122068(n+2)`
-/

namespace A217274.P4651140864020946257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319512 (n + 1) - A122068 (n + 2)

end

end A217274.P4651140864020946257

namespace A217274

/-- `A319512(n+1)-A122068(n+2)` -/
def P4651140864020946257.Spec : Prop :=
  ∀ n, P4651140864020946257.a n = A217274 n

end A217274

/-! ## A217274.P11063784587671234631

`(A319512(n+1)-A215007(n+1))/2`
-/

namespace A217274.P11063784587671234631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319512 (n + 1) - A215007 (n + 1) : ℚ) / 2

end

end A217274.P11063784587671234631

namespace A217274

/-- `(A319512(n+1)-A215007(n+1))/2` -/
def P11063784587671234631.Spec : Prop :=
  ∀ n, P11063784587671234631.a n = (A217274 n : ℚ)

end A217274

/-! ## A217274.P4297421126955486223

`A215007(n+2)-3*A215007(n+1)`
-/

namespace A217274.P4297421126955486223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215007 (n + 2) - 3 * A215007 (n + 1)

end

end A217274.P4297421126955486223

namespace A217274

/-- `A215007(n+2)-3*A215007(n+1)` -/
def P4297421126955486223.Spec : Prop :=
  ∀ n, P4297421126955486223.a n = A217274 n

end A217274

/-! ## A217274.P16416902469701088671

`A215143(n+1)-(A215493(n+1)+A215143(n))`
-/

namespace A217274.P16416902469701088671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (n + 1) - (A215493 (n + 1) + A215143 n)

end

end A217274.P16416902469701088671

namespace A217274

/-- `A215143(n+1)-(A215493(n+1)+A215143(n))` -/
def P16416902469701088671.Spec : Prop :=
  ∀ n, P16416902469701088671.a n = A217274 n

end A217274

/-! ## A217274.P12285227061708454396

`A215008(n+1)+A215143(n+1)-A319512(n+1)`
-/

namespace A217274.P12285227061708454396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (n + 1) + (A215143 (n + 1) - A319512 (n + 1))

end

end A217274.P12285227061708454396

namespace A217274

/-- `A215008(n+1)+A215143(n+1)-A319512(n+1)` -/
def P12285227061708454396.Spec : Prop :=
  ∀ n, P12285227061708454396.a n = A217274 n

end A217274

/-!
# A217275: Expansion of 2/(1-x+sqrt(1-2*x-27*x^2)).

The programs for A217275, there is no canonical definition to state claims against.
-/

/-! ## A217275.P10466296366889315837

`A306684(eq[7, A025581(n)])`
-/

namespace A217275.P10466296366889315837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217275.P10466296366889315837

/-! ## A217275.P1167837601174201900

`A306684(A055999(n+5)-2)`
-/

namespace A217275.P1167837601174201900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A055999 (n + 5) - 2).toNat

end

end A217275.P1167837601174201900

/-! ## A217275.P5106391962852065041

`A306684(A027379(n+6)-5)`
-/

namespace A217275.P5106391962852065041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A027379 (n + 6) - 5).toNat

end

end A217275.P5106391962852065041

/-! ## A217275.P6155617938162229975

`A306684(A000217(n+8)-8)`
-/

namespace A217275.P6155617938162229975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A000217 (n + 8) - 8).toNat

end

end A217275.P6155617938162229975

/-! ## A217275.P9429057641674032980

`A306684(A167499(n+3)+A110185(2*n+7))`
-/

namespace A217275.P9429057641674032980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306684 (A167499 (n + 3) + A110185 (2 * n + 7)).toNat

end

end A217275.P9429057641674032980

/-!
# A217276: Numbers n such that no prime divisors of n^2 + 1 are of the form a^2 + 1.

The programs for A217276, there is no canonical definition to state claims against.
-/

/-! ## A217276.P13293722753957746902

`floor(sqrt(A217279(n+1)))`
-/

namespace A217276.P13293722753957746902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A217279 (n + 1))

end

end A217276.P13293722753957746902

/-! ## A217276.P9172531748180908683

`A000027(round(sqrt(A217279(n+1))))`
-/

namespace A217276.P9172531748180908683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A217279 (n + 1) : ℝ))).toNat

end

end A217276.P9172531748180908683

/-! ## A217276.P11641753840465857784

`A000027(sqrt(A217279(n+1)-1))`
-/

namespace A217276.P11641753840465857784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A217279 (n + 1) - 1 : ℝ))).toNat

end

end A217276.P11641753840465857784

/-! ## A217276.P1847550634173396054

`floor(root(A217279(n+1)+A083915(n+1), 2))`
-/

namespace A217276.P1847550634173396054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217279 (n + 1) + A083915 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A217276.P1847550634173396054

/-! ## A217276.P7271991678288530266

`eq[0, A216784(A028310(n))]`
-/

namespace A217276.P7271991678288530266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216784 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217276.P7271991678288530266

/-! ## A217276.P7024196433620880393

`A029578(ceil(sqrt(A217279(n+1))))`
-/

namespace A217276.P7024196433620880393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 ⌈Real.sqrt (A217279 (n + 1) : ℝ)⌉.toNat

end

end A217276.P7024196433620880393

/-! ## A217276.P7227837294058959480

`A014683(round(sqrt(A217279(n+1))))`
-/

namespace A217276.P7227837294058959480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (SequenceMachineLib.roundAway (Real.sqrt (A217279 (n + 1) : ℝ))).toNat

end

end A217276.P7227837294058959480

/-! ## A217276.P10786016206625407633

`A014683(sqrt(A217279(n+1)-1))`
-/

namespace A217276.P10786016206625407633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (SequenceMachineLib.roundAway (Real.sqrt (A217279 (n + 1) - 1 : ℝ))).toNat

end

end A217276.P10786016206625407633

/-! ## A217276.P9177060700096408279

`floor(root(A217279(n+1)+A108783(n+1), 2))`
-/

namespace A217276.P9177060700096408279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217279 (n + 1) + A108783 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A217276.P9177060700096408279

/-!
# A217278: Sequences A124174 and A006454 interlaced.

The programs for A217278, there is no canonical definition to state claims against.
-/

/-! ## A217278.P16606034519431516350

`C(A196155(A090344(n)), 2)`
-/

namespace A217278.P16606034519431516350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A196155 (A090344 n).toNat).toNat 2

end

end A217278.P16606034519431516350

/-! ## A217278.P2954880703275975025

`C(eq[A007318(n), A216612(n+1)], 2)`
-/

namespace A217278.P2954880703275975025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2

end

end A217278.P2954880703275975025

/-! ## A217278.P14710328519590872334

`C(eq[A114278(n), A117816(n+1)], 2)`
-/

namespace A217278.P14710328519590872334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114278 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2

end

end A217278.P14710328519590872334

/-! ## A217278.P5405207056987205102

`A161680(A081567(n))%A148189(n)`
-/

namespace A217278.P5405207056987205102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161680 (A081567 n).toNat) (A148189 n)

end

end A217278.P5405207056987205102

/-!
# A217279: Numbers of the form n^2 + 1 without prime divisors of the form a^2 + 1.

The programs for A217279, there is no canonical definition to state claims against.
-/

/-! ## A217279.P7408049317624826063

`A217276(n+1)²+1`
-/

namespace A217279.P7408049317624826063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217276 (n + 1) ^ 2 + 1

end

end A217279.P7408049317624826063

/-! ## A217279.P11724377173359384810

`A217276(A000027(n+1))*A217276(n+1)+1`
-/

namespace A217279.P11724377173359384810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217276 (A000027 (n + 1)).toNat * A217276 (n + 1) + 1

end

end A217279.P11724377173359384810

/-! ## A217279.P8629667673018133149

`A002522(A217276(n+1))`
-/

namespace A217279.P8629667673018133149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A217276 (n + 1)).toNat

end

end A217279.P8629667673018133149

/-! ## A217279.P5630956054731195114

`A214345(A217276(n+1)-2)`
-/

namespace A217279.P5630956054731195114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214345 (A217276 (n + 1) - 2).toNat

end

end A217279.P5630956054731195114

/-! ## A217279.P7711796109048035024

`A002061(A217276(n+1)+1)-A217276(n+1)`
-/

namespace A217279.P7711796109048035024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A217276 (n + 1) + 1).toNat - A217276 (n + 1)

end

end A217279.P7711796109048035024

/-! ## A217279.P7193992856476480181

`A217276(A000027(n+1))+A002061(A217276(n+1))`
-/

namespace A217279.P7193992856476480181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217276 (A000027 (n + 1)).toNat + A002061 (A217276 (n + 1)).toNat

end

end A217279.P7193992856476480181

/-! ## A217279.P3150979430456430142

`A033638(2*A217276(n+1))`
-/

namespace A217279.P3150979430456430142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * A217276 (n + 1)).toNat

end

end A217279.P3150979430456430142

/-! ## A217279.P17383099219423903617

`A002620(2*A217276(n+1))+1`
-/

namespace A217279.P17383099219423903617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A217276 (n + 1)).toNat + 1

end

end A217279.P17383099219423903617

/-! ## A217279.P8744986434171066368

`A217276(n+1)^A346089(A108605(n+1))+1`
-/

namespace A217279.P8744986434171066368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217276 (n + 1) : ℚ) ^ (A346089 (A108605 (n + 1)).toNat : ℤ) + 1

end

end A217279.P8744986434171066368

/-!
# A217282: G.f.: A(x) = exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k)^2 * x^k*(1-x)^k ).

The programs for A217282, there is no canonical definition to state claims against.
-/

/-! ## A217282.P13457834870098152045

`∑[A321402(n)]-∑{digits}[n, floor(#/6)]`
-/

namespace A217282.P13457834870098152045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum

end

end A217282.P13457834870098152045

/-! ## A217282.P5258499172316995197

`A001462(A309508(n+1))`
-/

namespace A217282.P5258499172316995197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A309508 (n + 1)).toNat

end

end A217282.P5258499172316995197

/-! ## A217282.P13451002158395279649

`A185283(A148459(n))+char[8]`
-/

namespace A217282.P13451002158395279649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A148459 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A217282.P13451002158395279649

/-! ## A217282.P15319283249266154223

`round(A149180(n)/A321401(n))`
-/

namespace A217282.P15319283249266154223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A149180 n : ℚ) / (A321401 n : ℚ))

end

end A217282.P15319283249266154223

/-! ## A217282.P713299763952895177

`∑[A321402(n)]-A238220(n)`
-/

namespace A217282.P713299763952895177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A238220 n

end

end A217282.P713299763952895177

/-!
# A217283: Expansion of 1/(1 -x -x^2 -x^6 -x^24 - ... -x^(k!) - ... ).

The programs for A217283, there is no canonical definition to state claims against.
-/

/-! ## A217283.P486685079550155969

`A120400(n)+val(A120397(n+1), 13)`
-/

namespace A217283.P486685079550155969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120400 n + (SequenceMachineLib.valuation (A120397 (n + 1)).toNat 13 : ℤ)

end

end A217283.P486685079550155969

/-! ## A217283.P16644379131916075770

`A120400(n)+A102683(A217298(n+1))`
-/

namespace A217283.P16644379131916075770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120400 n + A102683 (A217298 (n + 1)).toNat

end

end A217283.P16644379131916075770

/-! ## A217283.P9897048110760418044

`or(A064911(A222317(n+3)), A120400(n))`
-/

namespace A217283.P9897048110760418044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064911 (A222317 (n + 3)).toNat) (A120400 n)

end

end A217283.P9897048110760418044

/-! ## A217283.P13566596646650054988

`or(A120400(n), A278528(A063851(n+3)))`
-/

namespace A217283.P13566596646650054988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A120400 n) (A278528 (A063851 (n + 3)).toNat)

end

end A217283.P13566596646650054988

/-!
# A217284: a(n) = Sum_{k=0..n} (n!/k!)^3.

The programs for A217284, the canonical program `A217284.P3798004988318645130` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217284 has offset 0).

The definition of A217284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217284.P3798004988318645130

`n^3*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217284

/-- `n^3*a(n-1)+1` -/
def P3798004988318645130.Spec : Prop :=
  ∀ n, (P3798004988318645130.a n : ℤ) = A217284 n

theorem P3798004988318645130.correct : P3798004988318645130.Spec := by
  intro n
  simp only [A217284]

end A217284

/-! ## A217284.P9818852771834854360

`a(n-1)/n^(-3)+1` with `a(0)=1`
-/

namespace A217284.P9818852771834854360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-3 : ℤ) + 1

end

end A217284.P9818852771834854360

namespace A217284

/-- `a(n-1)/n^(-3)+1` -/
def P9818852771834854360.Spec : Prop :=
  ∀ n, P9818852771834854360.a n = (A217284 n : ℚ)

end A217284

/-! ## A217284.P3349867999914939549

`n*a(n-1)*n²+1` with `a(0)=1`
-/

namespace A217284.P3349867999914939549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (a (n - 1) * n ^ 2) + 1

end

end A217284.P3349867999914939549

namespace A217284

/-- `n*a(n-1)*n²+1` -/
def P3349867999914939549.Spec : Prop :=
  ∀ n, (P3349867999914939549.a n : ℤ) = A217284 n

theorem P3349867999914939549.correct : P3349867999914939549.Spec := by
  intro n
  simp only [A217284, Nat.add_sub_cancel, A217284.P3349867999914939549.a, A217284.P3798004988318645130.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A217284

/-! ## A217284.P10155218000928451655

`n*n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A217284.P10155218000928451655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n * (n * a (n - 1))) + 1

end

end A217284.P10155218000928451655

namespace A217284

/-- `n*n*n*a(n-1)+1` -/
def P10155218000928451655.Spec : Prop :=
  ∀ n, (P10155218000928451655.a n : ℤ) = A217284 n

theorem P10155218000928451655.correct : P10155218000928451655.Spec := by
  intro n
  simp only [A217284, Nat.add_sub_cancel, A217284.P10155218000928451655.a, A217284.P3798004988318645130.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A217284

/-! ## A217284.P10068475967238681117

`A368772(n)+1`
-/

namespace A217284.P10068475967238681117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368772 n + 1

end

end A217284.P10068475967238681117

namespace A217284

/-- `A368772(n)+1` -/
def P10068475967238681117.Spec : Prop :=
  ∀ n, P10068475967238681117.a n = A217284 n

end A217284

/-!
# A217285: Irregular triangle read by rows: T(n,k) is the number of labeled relations on n nodes with exactly k edges; n>=0, 0<=k<=n^2.

The programs for A217285, the canonical program `A217285.P5556931970969609807` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217285 has offset 0).

The definition of A217285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217285.P5556931970969609807

`A007318(eq[0, A053186(A003056(n))])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A217285

/-- `A007318(eq[0, A053186(A003056(n))])` -/
def P5556931970969609807.Spec : Prop :=
  ∀ n, P5556931970969609807.a n = A217285 n

theorem P5556931970969609807.correct : P5556931970969609807.Spec := by
  intro n
  simp only [A217285]

end A217285

/-! ## A217285.P13664115432722012823

`A007318(eq[0, A053188(A003056(n))])`
-/

namespace A217285.P13664115432722012823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217285.P13664115432722012823

namespace A217285

/-- `A007318(eq[0, A053188(A003056(n))])` -/
def P13664115432722012823.Spec : Prop :=
  ∀ n, P13664115432722012823.a n = A217285 n

end A217285

/-! ## A217285.P1420862364421106657

`A007318(eq[0, A173517(A003056(n))])`
-/

namespace A217285.P1420862364421106657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217285.P1420862364421106657

namespace A217285

/-- `A007318(eq[0, A173517(A003056(n))])` -/
def P1420862364421106657.Spec : Prop :=
  ∀ n, P1420862364421106657.a n = A217285 n

end A217285

/-! ## A217285.P14062854642348414945

`A007318(eq[1, A010052(A003056(n))])`
-/

namespace A217285.P14062854642348414945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217285.P14062854642348414945

namespace A217285

/-- `A007318(eq[1, A010052(A003056(n))])` -/
def P14062854642348414945.Spec : Prop :=
  ∀ n, P14062854642348414945.a n = A217285 n

end A217285

/-! ## A217285.P17025740840191270871

`A007318(eq[1, A071797(A002024(n+1))])`
-/

namespace A217285.P17025740840191270871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217285.P17025740840191270871

namespace A217285

/-- `A007318(eq[1, A071797(A002024(n+1))])` -/
def P17025740840191270871.Spec : Prop :=
  ∀ n, P17025740840191270871.a n = A217285 n

end A217285

/-!
# A217288: Records in A217287.

The programs for A217288, there is no canonical definition to state claims against.
-/

/-! ## A217288.P11861219109226563699

`record[A334468(n+1)-A334469(n+1)]`
-/

namespace A217288.P11861219109226563699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334468 (n + 1) - A334469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217288.P11861219109226563699

/-! ## A217288.P17974040930517469745

`record[A217287(n+1)]`
-/

namespace A217288.P17974040930517469745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217288.P17974040930517469745

/-! ## A217288.P15351859222048708060

`A217287(A217289(n+1))`
-/

namespace A217288.P15351859222048708060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217287 (A217289 (n + 1)).toNat

end

end A217288.P15351859222048708060

/-! ## A217288.P1510748493603433292

`A061836(A217289(n+1)+A000038(n))`
-/

namespace A217288.P1510748493603433292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 (A217289 (n + 1) + A000038 n).toNat

end

end A217288.P1510748493603433292

/-! ## A217288.P13503170339509145348

`A101185(n+1)+A051023(A320932(n+2))`
-/

namespace A217288.P13503170339509145348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101185 (n + 1) + A051023 (A320932 (n + 2)).toNat

end

end A217288.P13503170339509145348

/-!
# A217289: Where records occur in A217287.

The programs for A217289, there is no canonical definition to state claims against.
-/

/-! ## A217289.P1099060036527622295

`record[A367873(A255051(n+1))]`
-/

namespace A217289.P1099060036527622295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367873 (A255051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217289.P1099060036527622295

/-! ## A217289.P16300826127457937203

`A289671(n+1)+A122154(A036746(n+1))`
-/

namespace A217289.P16300826127457937203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289671 (n + 1) + A122154 (A036746 (n + 1)).toNat

end

end A217289.P16300826127457937203

/-!
# A217291: Permutation of natural numbers arising from applying the walk of right triangular type-1 spiral (defined in A214230) to the data of square spiral (e.g. A214526).

The programs for A217291, there is no canonical definition to state claims against.
-/

/-! ## A217291.P538498151834542959

`A217293(A217010(A217292(n+1)))`
-/

namespace A217291.P538498151834542959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217293 (A217010 (A217292 (n + 1)).toNat).toNat

end

end A217291.P538498151834542959

/-! ## A217291.P12336253519894661428

`A217293(A217010(A217293(A217010(A217293(n+1)))))`
-/

namespace A217291.P12336253519894661428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217293 (A217010 (A217293 (A217010 (A217293 (n + 1)).toNat).toNat).toNat).toNat

end

end A217291.P12336253519894661428

/-! ## A217291.P14629507972823913110

`A217293(A217011(A217293(n+1)))`
-/

namespace A217291.P14629507972823913110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217293 (A217011 (A217293 (n + 1)).toNat).toNat

end

end A217291.P14629507972823913110

/-!
# A217292: Permutation of natural numbers arising from applying the walk of right triangular type-2 spiral (defined in A214251) to the data of square spiral (e.g. A214526).

The programs for A217292, there is no canonical definition to state claims against.
-/

/-! ## A217292.P1545063677582091622

`A217293(A217010(A217293(n+1)))`
-/

namespace A217292.P1545063677582091622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217293 (A217010 (A217293 (n + 1)).toNat).toNat

end

end A217292.P1545063677582091622

/-!
# A217293: Permutation of natural numbers arising from applying the walk of right triangular type-3 spiral (defined in A214252) to the data of square spiral (e.g. A214526).

The programs for A217293, there is no canonical definition to state claims against.
-/

/-! ## A217293.P16587376405889702801

`A217292(A217010(A217292(n+1)))`
-/

namespace A217293.P16587376405889702801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217292 (A217010 (A217292 (n + 1)).toNat).toNat

end

end A217293.P16587376405889702801

/-!
# A217294: Permutation of natural numbers arising from applying the walk of triangular horizontal-first spiral (defined in A214250) to the data of square spiral (e.g. A214526).

The programs for A217294, there is no canonical definition to state claims against.
-/

/-! ## A217294.P10025872576513244715

`A217295(A090928(n+1))`
-/

namespace A217294.P10025872576513244715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217295 (A090928 (n + 1)).toNat

end

end A217294.P10025872576513244715

/-! ## A217294.P11033415972610714957

`A217295(A217013(A217295(n+1)))`
-/

namespace A217294.P11033415972610714957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217295 (A217013 (A217295 (n + 1)).toNat).toNat

end

end A217294.P11033415972610714957

/-!
# A217295: Permutation of natural numbers arising from applying the walk of triangular horizontal-last spiral (defined in A214226) to the data of square spiral (e.g. A214526).

The programs for A217295, there is no canonical definition to state claims against.
-/

/-! ## A217295.P17056482528623505057

`A217294(A090928(n+1))`
-/

namespace A217295.P17056482528623505057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217294 (A090928 (n + 1)).toNat

end

end A217295.P17056482528623505057

/-! ## A217295.P14250310956028946599

`A217294(A090929(A090929(n+1)))`
-/

namespace A217295.P14250310956028946599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217294 (A090929 (A090929 (n + 1)).toNat).toNat

end

end A217295.P14250310956028946599

/-! ## A217295.P16507373867500458206

`A217294(A217014(A217294(n+1)))`
-/

namespace A217295.P16507373867500458206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217294 (A217014 (A217294 (n + 1)).toNat).toNat

end

end A217295.P16507373867500458206

/-!
# A217299: Number of height minimal AVL trees with n (leaf-) nodes.

The programs for A217299, there is no canonical definition to state claims against.
-/

/-! ## A217299.P10292406799077423903

`A217298(∑[A217710(round(acot(n)+n))])`
-/

namespace A217299.P10292406799077423903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217299.P10292406799077423903

/-! ## A217299.P14956974923833392505

`A217298(∑[A217710(n+1)]-A217710(n+1)+1)`
-/

namespace A217299.P14956974923833392505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (∑ j ∈ Finset.range (n + 1), f1 j - A217710 (n + 1) + 1).toNat

end

end A217299.P14956974923833392505

/-! ## A217299.P15746195187374660319

`A143897(A037477(n)%A143876(n))`
-/

namespace A217299.P15746195187374660319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143897 (Int.tmod (A037477 n) (A143876 n)).toNat

end

end A217299.P15746195187374660319

/-! ## A217299.P2105184302872318841

`A143897(A037477(n))%A245331(n+1)`
-/

namespace A217299.P2105184302872318841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143897 (A037477 n).toNat) (A245331 (n + 1))

end

end A217299.P2105184302872318841

/-! ## A217299.P4559300067076333614

`A217298(A324935(n+1)%A265790(n+1))`
-/

namespace A217299.P4559300067076333614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (Int.tmod (A324935 (n + 1)) (A265790 (n + 1))).toNat

end

end A217299.P4559300067076333614

