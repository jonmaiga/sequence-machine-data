import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C049
import Seq.B001.C002
import Seq.B002.C001
import Seq.B003.C002
import Seq.B006.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A388129: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n,k) * binomial(2*n+1,k).

The programs for A388129, the canonical program `A388129.P2958954449087627714` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388129 has offset 0).

The definition of A388129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388129.P2958954449087627714

`∑{#}[n, C(n, #)*C(2*n+#+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388129

/-- `∑{#}[n, C(n, #)*C(2*n+#+1, #)]` -/
def P2958954449087627714.Spec : Prop :=
  ∀ n, (P2958954449087627714.a n : ℤ) = A388129 n

theorem P2958954449087627714.correct : P2958954449087627714.Spec := by
  intro n
  simp only [A388129]

end A388129

/-! ## A388129.P9130109399277154279

`∑{#}[n, 2^(n-#)*C(n, #)*C(2*n+1, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388129.P9130109399277154279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (Nat.choose (2 * n + 1) k : ℚ)

end

end A388129.P9130109399277154279

namespace A388129

/-- `∑{#}[n, 2^(n-#)*C(n, #)*C(2*n+1, #)]` -/
def P9130109399277154279.Spec : Prop :=
  ∀ n, P9130109399277154279.a n = (A388129 n : ℚ)

end A388129

/-! ## A388129.P7572724311664641371

`A249975(2*n+1)/4`
-/

namespace A388129.P7572724311664641371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249975 (2 * n + 1) : ℚ) / 4

end

end A388129.P7572724311664641371

namespace A388129

/-- `A249975(2*n+1)/4` -/
def P7572724311664641371.Spec : Prop :=
  ∀ n, P7572724311664641371.a n = (A388129 n : ℚ)

end A388129

/-! ## A388129.P2547482534780721505

`A208752((n+1)²+n²)`
-/

namespace A388129.P2547482534780721505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208752 ((n + 1) ^ 2 + n ^ 2)

end

end A388129.P2547482534780721505

namespace A388129

/-- `A208752((n+1)²+n²)` -/
def P2547482534780721505.Spec : Prop :=
  ∀ n, P2547482534780721505.a n = A388129 n

end A388129

/-! ## A388129.P12843813722157545749

`A049600(A022266(n+1))`
-/

namespace A388129.P12843813722157545749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A022266 (n + 1)).toNat

end

end A388129.P12843813722157545749

namespace A388129

/-- `A049600(A022266(n+1))` -/
def P12843813722157545749.Spec : Prop :=
  ∀ n, P12843813722157545749.a n = A388129 n

end A388129

/-!
# A388130: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n,k) * binomial(3*n+1,k).

The programs for A388130, the canonical program `A388130.P14949353521039268582` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388130 has offset 0).

The definition of A388130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388130.P14949353521039268582

`∑{#}[n, C(n, #)*C(3*n+#+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388130

/-- `∑{#}[n, C(n, #)*C(3*n+#+1, #)]` -/
def P14949353521039268582.Spec : Prop :=
  ∀ n, (P14949353521039268582.a n : ℤ) = A388130 n

theorem P14949353521039268582.correct : P14949353521039268582.Spec := by
  intro n
  simp only [A388130]

end A388130

/-! ## A388130.P7323910295830145876

`∑{#}[n, 2^(n-#)*C(n, #)*C(3*n+1, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388130.P7323910295830145876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (Nat.choose (3 * n + 1) k : ℚ)

end

end A388130.P7323910295830145876

namespace A388130

/-- `∑{#}[n, 2^(n-#)*C(n, #)*C(3*n+1, #)]` -/
def P7323910295830145876.Spec : Prop :=
  ∀ n, P7323910295830145876.a n = (A388130 n : ℚ)

end A388130

/-! ## A388130.P15198616097257723160

`A208341(A194268(n))`
-/

namespace A388130.P15198616097257723160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A194268 n).toNat

end

end A388130.P15198616097257723160

namespace A388130

/-- `A208341(A194268(n))` -/
def P15198616097257723160.Spec : Prop :=
  ∀ n, P15198616097257723160.a n = A388130 n

end A388130

/-! ## A388130.P825310028667316162

`A055587(A139273(n+1))`
-/

namespace A388130.P825310028667316162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A139273 (n + 1)).toNat

end

end A388130.P825310028667316162

namespace A388130

/-- `A055587(A139273(n+1))` -/
def P825310028667316162.Spec : Prop :=
  ∀ n, P825310028667316162.a n = A388130 n

end A388130

/-! ## A388130.P10627509374741734653

`A106195(A125201(n+1))`
-/

namespace A388130.P10627509374741734653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A125201 (n + 1)).toNat

end

end A388130.P10627509374741734653

namespace A388130

/-- `A106195(A125201(n+1))` -/
def P10627509374741734653.Spec : Prop :=
  ∀ n, P10627509374741734653.a n = A388130 n

end A388130

/-!
# A388131: a(n) = Sum_{k=0..n} 2^(n-k) * binomial(n,k) * binomial(4*n+1,k).

The programs for A388131, the canonical program `A388131.P17130690383877288495` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388131 has offset 0).

The definition of A388131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388131.P17130690383877288495

`∑{#}[n, C(n, #)*C(4*n+#+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388131

/-- `∑{#}[n, C(n, #)*C(4*n+#+1, #)]` -/
def P17130690383877288495.Spec : Prop :=
  ∀ n, (P17130690383877288495.a n : ℤ) = A388131 n

theorem P17130690383877288495.correct : P17130690383877288495.Spec := by
  intro n
  simp only [A388131]

end A388131

/-! ## A388131.P17534468521906190649

`∑{#}[n, 2^(n-#)*C(n, #)*C(4*n+1, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388131.P17534468521906190649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (Nat.choose (4 * n + 1) k : ℚ)

end

end A388131.P17534468521906190649

namespace A388131

/-- `∑{#}[n, 2^(n-#)*C(n, #)*C(4*n+1, #)]` -/
def P17534468521906190649.Spec : Prop :=
  ∀ n, P17534468521906190649.a n = (A388131 n : ℚ)

end A388131

/-!
# A388133: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n,k) * binomial(2*n+1,k).

The programs for A388133, the canonical program `A388133.P238239063052381144` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388133 has offset 0).

The definition of A388133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388133.P238239063052381144

`∑{#}[n, 3^(n-#)*C(n, #)*C(2*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388133

/-- `∑{#}[n, 3^(n-#)*C(n, #)*C(2*n+1, #)]` -/
def P238239063052381144.Spec : Prop :=
  ∀ n, P238239063052381144.a n = (A388133 n : ℚ)

end A388133

/-!
# A388134: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n,k) * binomial(3*n+1,k).

The programs for A388134, the canonical program `A388134.P7714296253048088547` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388134 has offset 0).

The definition of A388134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388134.P7714296253048088547

`∑{#}[n, 3^(n-#)*C(n, #)*C(3*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388134

/-- `∑{#}[n, 3^(n-#)*C(n, #)*C(3*n+1, #)]` -/
def P7714296253048088547.Spec : Prop :=
  ∀ n, P7714296253048088547.a n = (A388134 n : ℚ)

end A388134

/-!
# A388135: a(n) = Sum_{k=0..n} 3^(n-k) * binomial(n,k) * binomial(4*n+1,k).

The programs for A388135, the canonical program `A388135.P15919631150445622408` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388135 has offset 0).

The definition of A388135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388135.P15919631150445622408

`∑{#}[n, 3^(n-#)*C(n, #)*C(4*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A388135

/-- `∑{#}[n, 3^(n-#)*C(n, #)*C(4*n+1, #)]` -/
def P15919631150445622408.Spec : Prop :=
  ∀ n, P15919631150445622408.a n = (A388135 n : ℚ)

end A388135

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

/-! ## A388137.P485093111544263944

`A091221(A370425(n+1))`
-/

namespace A388137.P485093111544263944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (A370425 (n + 1)).toNat

end

end A388137.P485093111544263944

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

The programs for A388140, the canonical program `A388140.P16253514462590538591` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388140 has offset 1).

The definition of A388140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388140.P18082594619575597160

`ogf((6+24x)/(1-14x+56x^2-64x^3))`
-/

namespace A388140.P18082594619575597160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 24] [1, -14, 56, -64] n

end

end A388140.P18082594619575597160

namespace A388140

/-- `ogf((6+24x)/(1-14x+56x^2-64x^3))` -/
def P18082594619575597160.Spec : Prop :=
  ∀ n, P18082594619575597160.a n = A388140 (n + 1)

end A388140

/-! ## A388140.P16253514462590538591

`3*2^(n+1)*(2^(n+1)-1)²`

The canonical program, it is in `Seq.B000.C049`.
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

theorem P18213478227319701550.correct : P18213478227319701550.Spec := by
  intro n
  simp only [A388140, Nat.add_sub_cancel, A388140.P18213478227319701550.a, A388140.P16253514462590538591.a, A270205, A270205.P4965580866994252023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

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

/-! ## A388144.P1287798997028440422

`∩[A007532(n+1), A231239(n+1)]`
-/

namespace A388144.P1287798997028440422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388144.P1287798997028440422

/-! ## A388144.P6664962024003217849

`∩[A007532(n+1), A309066(n+1)]`
-/

namespace A388144.P6664962024003217849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388144.P6664962024003217849

/-! ## A388144.P1395528717281125060

`∩[A061862(n+1), A309066(n+1)]`
-/

namespace A388144.P1395528717281125060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388144.P1395528717281125060

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

