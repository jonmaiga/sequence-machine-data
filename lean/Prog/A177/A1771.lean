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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A177100: Partial sums of round(n^2/9).

The programs for A177100, the canonical program `A177100.P16553278794612081731` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177100 has offset 0).

The definition of A177100 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177100.P16553278794612081731

`round((n-1)*(n+2)*(2*n+1)/54)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177100

/-- `round((n-1)*(n+2)*(2*n+1)/54)` -/
def P16553278794612081731.Spec : Prop :=
  ∀ n, P16553278794612081731.a n = A177100 n

theorem P16553278794612081731.correct : P16553278794612081731.Spec := by
  intro n
  simp only [A177100]

end A177100

/-! ## A177100.P4647123564379233274

`a(n-9)+(n+1)*(n-9)+31` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=6, a(6)=10, a(7)=15, a(8)=22`
-/

namespace A177100.P4647123564379233274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3, 6, 10, 15, 22] fun n a =>
  a (n - 9) + (n + 1 : ℤ) * ((n : ℤ) - 9) + 31

end

end A177100.P4647123564379233274

namespace A177100

/-- `a(n-9)+(n+1)*(n-9)+31` -/
def P4647123564379233274.Spec : Prop :=
  ∀ n, P4647123564379233274.a n = A177100 n

end A177100

/-! ## A177100.P9181043301343839403

`∑[∑[A289133(n)]]`
-/

namespace A177100.P9181043301343839403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177100.P9181043301343839403

namespace A177100

/-- `∑[∑[A289133(n)]]` -/
def P9181043301343839403.Spec : Prop :=
  ∀ n, P9181043301343839403.a n = A177100 n

end A177100

/-! ## A177100.P14266641920486018254

`∑[round(A000290(n)/9)]`
-/

namespace A177100.P14266641920486018254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000290 n : ℚ) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177100.P14266641920486018254

namespace A177100

/-- `∑[round(A000290(n)/9)]` -/
def P14266641920486018254.Spec : Prop :=
  ∀ n, P14266641920486018254.a n = A177100 n

end A177100

/-! ## A177100.P2917079782802079845

`∑[floor((A002522(n)+1)/9)]`
-/

namespace A177100.P2917079782802079845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002522 n + 1 : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177100.P2917079782802079845

namespace A177100

/-- `∑[floor((A002522(n)+1)/9)]` -/
def P2917079782802079845.Spec : Prop :=
  ∀ n, P2917079782802079845.a n = A177100 n

end A177100

/-! ## A177100.P5966036018680474839

`∑[A011862(n+1)-A343609(n+2)]`
-/

namespace A177100.P5966036018680474839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 (n + 1) - A343609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177100.P5966036018680474839

namespace A177100

/-- `∑[A011862(n+1)-A343609(n+2)]` -/
def P5966036018680474839.Spec : Prop :=
  ∀ n, P5966036018680474839.a n = A177100 n

end A177100

/-! ## A177100.P16146320008523972553

`∑[∑[A002264(A002264(2*n+3))]]`
-/

namespace A177100.P16146320008523972553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177100.P16146320008523972553

namespace A177100

/-- `∑[∑[A002264(A002264(2*n+3))]]` -/
def P16146320008523972553.Spec : Prop :=
  ∀ n, P16146320008523972553.a n = A177100 n

end A177100

/-! ## A177100.P792881734942960103

`∑[A002264(floor((n²+2)/3))]`
-/

namespace A177100.P792881734942960103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊(n ^ 2 + 2 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177100.P792881734942960103

namespace A177100

/-- `∑[A002264(floor((n²+2)/3))]` -/
def P792881734942960103.Spec : Prop :=
  ∀ n, P792881734942960103.a n = A177100 n

end A177100

/-! ## A177100.P3406730071229352341

`∑[A008620(A000212(n)+1)]-(n+1)`
-/

namespace A177100.P3406730071229352341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A000212 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A177100.P3406730071229352341

namespace A177100

/-- `∑[A008620(A000212(n)+1)]-(n+1)` -/
def P3406730071229352341.Spec : Prop :=
  ∀ n, P3406730071229352341.a n = A177100 n

end A177100

/-! ## A177100.P16327953093664036429

`∑[A008620(A008620(n²))]-(n+1)`
-/

namespace A177100.P16327953093664036429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A177100.P16327953093664036429

namespace A177100

/-- `∑[A008620(A008620(n²))]-(n+1)` -/
def P16327953093664036429.Spec : Prop :=
  ∀ n, P16327953093664036429.a n = A177100 n

end A177100

/-! ## A177100.P6726922360190419102

`∑[A343609(n²+2)]`
-/

namespace A177100.P6726922360190419102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177100.P6726922360190419102

namespace A177100

/-- `∑[A343609(n²+2)]` -/
def P6726922360190419102.Spec : Prop :=
  ∀ n, P6726922360190419102.a n = A177100 n

end A177100

/-!
# A177102: Beatty sequence for sqrt(10).

The programs for A177102, the canonical program `A177102.P7376183297170571105` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177102 has offset 1).

The definition of A177102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177102.P7376183297170571105

`floor((n+1)*sqrt(10))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177102

/-- `floor((n+1)*sqrt(10))` -/
def P7376183297170571105.Spec : Prop :=
  ∀ n, P7376183297170571105.a n = A177102 (n + 1)

theorem P7376183297170571105.correct : P7376183297170571105.Spec := by
  intro n
  simp only [A177102, Nat.add_sub_cancel]

end A177102

/-! ## A177102.P7111305327853591378

`∑[dr(Δ[floor(n*sqrt(10))])]`
-/

namespace A177102.P7111305327853591378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (10 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177102.P7111305327853591378

namespace A177102

/-- `∑[dr(Δ[floor(n*sqrt(10))])]` -/
def P7111305327853591378.Spec : Prop :=
  ∀ n, (P7111305327853591378.a n : ℤ) = A177102 (n + 1)

end A177102

/-! ## A177102.P15409562622299783307

`record[floor(abs(1-n)*sqrt(10))]`
-/

namespace A177102.P15409562622299783307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (n : ℤ)| : ℝ) * Real.sqrt (10 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177102.P15409562622299783307

namespace A177102

/-- `record[floor(abs(1-n)*sqrt(10))]` -/
def P15409562622299783307.Spec : Prop :=
  ∀ n, P15409562622299783307.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P15601035822295741420

`∑[A081168(n)]`
-/

namespace A177102.P15601035822295741420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177102.P15601035822295741420

namespace A177102

/-- `∑[A081168(n)]` -/
def P15601035822295741420.Spec : Prop :=
  ∀ n, P15601035822295741420.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P3179109449336020482

`A198265(n+1)-1`
-/

namespace A177102.P3179109449336020482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (n + 1) - 1

end

end A177102.P3179109449336020482

namespace A177102

/-- `A198265(n+1)-1` -/
def P3179109449336020482.Spec : Prop :=
  ∀ n, P3179109449336020482.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P12231315199651486782

`ceil(sqrt(A033583(n+1)))-1`
-/

namespace A177102.P12231315199651486782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A033583 (n + 1) : ℝ)⌉ - 1

end

end A177102.P12231315199651486782

namespace A177102

/-- `ceil(sqrt(A033583(n+1)))-1` -/
def P12231315199651486782.Spec : Prop :=
  ∀ n, P12231315199651486782.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P363515462620727498

`n-∑[1-Δ[A198265(n)]]`
-/

namespace A177102.P363515462620727498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177102.P363515462620727498

namespace A177102

/-- `n-∑[1-Δ[A198265(n)]]` -/
def P363515462620727498.Spec : Prop :=
  ∀ n, P363515462620727498.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P18279346540413368824

`A187396(n+1)+2*(n+1)`
-/

namespace A177102.P18279346540413368824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187396 (n + 1) + (2 * (n + 1) : ℤ)

end

end A177102.P18279346540413368824

namespace A177102

/-- `A187396(n+1)+2*(n+1)` -/
def P18279346540413368824.Spec : Prop :=
  ∀ n, P18279346540413368824.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P196299853467042485

`A187395(n+1)-4*(n+1)`
-/

namespace A177102.P196299853467042485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187395 (n + 1) - (4 * (n + 1) : ℤ)

end

end A177102.P196299853467042485

namespace A177102

/-- `A187395(n+1)-4*(n+1)` -/
def P196299853467042485.Spec : Prop :=
  ∀ n, P196299853467042485.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P9657466128338564074

`ceil(sqrt(10*(A005563(n)+1)+1))-1`
-/

namespace A177102.P9657466128338564074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (10 * (A005563 n + 1) + 1 : ℝ)⌉ - 1

end

end A177102.P9657466128338564074

namespace A177102

/-- `ceil(sqrt(10*(A005563(n)+1)+1))-1` -/
def P9657466128338564074.Spec : Prop :=
  ∀ n, P9657466128338564074.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P8753986437794010419

`Δ[∑[A198265(n)]-n]`
-/

namespace A177102.P8753986437794010419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177102.P8753986437794010419

namespace A177102

/-- `Δ[∑[A198265(n)]-n]` -/
def P8753986437794010419.Spec : Prop :=
  ∀ n, P8753986437794010419.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P604678632681364884

`A194113(n+2)-(A194113(n+1)+A081168(n+1))`
-/

namespace A177102.P604678632681364884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194113 (n + 2) - (A194113 (n + 1) + A081168 (n + 1))

end

end A177102.P604678632681364884

namespace A177102

/-- `A194113(n+2)-(A194113(n+1)+A081168(n+1))` -/
def P604678632681364884.Spec : Prop :=
  ∀ n, P604678632681364884.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P4449031857351850154

`round(A194113(2*n+1)/(2*n+1))`
-/

namespace A177102.P4449031857351850154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194113 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A177102.P4449031857351850154

namespace A177102

/-- `round(A194113(2*n+1)/(2*n+1))` -/
def P4449031857351850154.Spec : Prop :=
  ∀ n, P4449031857351850154.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P11020651994487778890

`A189371(2*(n+1))-A003152(2*(n+1))`
-/

namespace A177102.P11020651994487778890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189371 (2 * (n + 1)) - A003152 (2 * (n + 1))

end

end A177102.P11020651994487778890

namespace A177102

/-- `A189371(2*(n+1))-A003152(2*(n+1))` -/
def P11020651994487778890.Spec : Prop :=
  ∀ n, P11020651994487778890.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P11812411198621691456

`A184812(2*(n+1))-A184809(2*(n+1))`
-/

namespace A177102.P11812411198621691456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184812 (2 * (n + 1)) - A184809 (2 * (n + 1))

end

end A177102.P11812411198621691456

namespace A177102

/-- `A184812(2*(n+1))-A184809(2*(n+1))` -/
def P11812411198621691456.Spec : Prop :=
  ∀ n, P11812411198621691456.a n = A177102 (n + 1)

end A177102

/-! ## A177102.P11319172191034496771

`filter[n+1, A286747(#)]`
-/

namespace A177102.P11319172191034496771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286747 (f1 j) = 1) n)

end

end A177102.P11319172191034496771

namespace A177102

/-- `filter[n+1, A286747(#)]` -/
def P11319172191034496771.Spec : Prop :=
  ∀ n, (P11319172191034496771.a n : ℤ) = A177102 (n + 1)

end A177102

/-! ## A177102.P8712136689815906350

`A023443(A198265(n+1))`
-/

namespace A177102.P8712136689815906350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A198265 (n + 1)).toNat

end

end A177102.P8712136689815906350

namespace A177102

/-- `A023443(A198265(n+1))` -/
def P8712136689815906350.Spec : Prop :=
  ∀ n, P8712136689815906350.a n = A177102 (n + 1)

end A177102

/-!
# A177103: Numbers k >= 0 such that 2*3^k - 1 is not prime.

The programs for A177103, there is no canonical definition to state claims against.
-/

/-! ## A177103.P15517644447488195803

`comp[A003307(n+1)]`
-/

namespace A177103.P15517644447488195803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A177103.P15517644447488195803

/-! ## A177103.P17008791019601806449

`eq[0, char[A003307(A028310(n))]]`
-/

namespace A177103.P17008791019601806449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003307 (A028310 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177103.P17008791019601806449

/-! ## A177103.P7390581119534652877

`eq[0, char[A003307(A000027(n+1))]]`
-/

namespace A177103.P7390581119534652877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003307 (A000027 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177103.P7390581119534652877

/-! ## A177103.P6268055774886958871

`eq[char[A003307(n+1)], A000007(n+1)]`
-/

namespace A177103.P6268055774886958871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003307 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177103.P6268055774886958871

/-! ## A177103.P10879209729047607314

`eq[n*A000038(n), char[A003307(n+1)]]`
-/

namespace A177103.P10879209729047607314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003307 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A177103.P10879209729047607314

/-! ## A177103.P14393928217482641994

`eq[A181515(n+1)%A028310(n), A181515(n+1)]`
-/

namespace A177103.P14393928217482641994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181515 (n + 1)) (A028310 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A177103.P14393928217482641994

/-!
# A177104: Primes p such that 2*p^3-1 is also prime.

The programs for A177104, there is no canonical definition to state claims against.
-/

/-! ## A177104.P5902759755789790400

`p?[A214289(n+1)]`
-/

namespace A177104.P5902759755789790400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177104.P5902759755789790400

/-! ## A177104.P2022682885972965027

`∩[A007645(n+1), A214289(n+1)]`
-/

namespace A177104.P2022682885972965027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P2022682885972965027

/-! ## A177104.P11138243007060546683

`∩[A040116(n+1), A214289(n+1)]`
-/

namespace A177104.P11138243007060546683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P11138243007060546683

/-! ## A177104.P10717338686081124819

`∩[A045331(n+1), A214289(n+1)]`
-/

namespace A177104.P10717338686081124819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P10717338686081124819

/-! ## A177104.P3239067019300180684

`∩[A045405(n+1), A214289(n+1)]`
-/

namespace A177104.P3239067019300180684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P3239067019300180684

/-! ## A177104.P6693837560014410679

`∩[A045428(n+1), A214289(n+1)]`
-/

namespace A177104.P6693837560014410679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P6693837560014410679

/-! ## A177104.P13088083072347029388

`∩[A214289(n+1), A325143(n+1)]`
-/

namespace A177104.P13088083072347029388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P13088083072347029388

/-! ## A177104.P15426257233104663774

`p?[A214289(A028310(n))-A000038(n)]`
-/

namespace A177104.P15426257233104663774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177104.P15426257233104663774

/-! ## A177104.P4453207689461230807

`∩[A058501(n+1), A214289(n+1)]`
-/

namespace A177104.P4453207689461230807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P4453207689461230807

/-! ## A177104.P5758044184216197203

`∩[A059456(n+1), A214289(n+1)]`
-/

namespace A177104.P5758044184216197203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P5758044184216197203

/-! ## A177104.P15264169146130597063

`∩[A214289(n+1), A216285(n+1)]`
-/

namespace A177104.P15264169146130597063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P15264169146130597063

/-! ## A177104.P4899380948178223673

`∩[A106118(n+1), A214289(n+1)]`
-/

namespace A177104.P4899380948178223673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P4899380948178223673

/-! ## A177104.P9527251485015329331

`A065091(eq[1, A224609(n+1)])`
-/

namespace A177104.P9527251485015329331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177104.P9527251485015329331

/-! ## A177104.P10527268558504902877

`∩[A000040(n+1), A214289(n+1)]`
-/

namespace A177104.P10527268558504902877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P10527268558504902877

/-! ## A177104.P11805473147245419831

`∩[A004139(n+1), A214289(n+1)]`
-/

namespace A177104.P11805473147245419831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P11805473147245419831

/-! ## A177104.P17192800165029650207

`∩[A006005(n+1), A214289(n+1)]`
-/

namespace A177104.P17192800165029650207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P17192800165029650207

/-! ## A177104.P2235461087319251152

`∩[A008578(n+1), A214289(n+1)]`
-/

namespace A177104.P2235461087319251152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P2235461087319251152

/-! ## A177104.P3515957057825576798

`∩[A033946(n+1), A214289(n+1)]`
-/

namespace A177104.P3515957057825576798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P3515957057825576798

/-! ## A177104.P10599063822785188253

`∩[A045319(n+1), A214289(n+1)]`
-/

namespace A177104.P10599063822785188253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P10599063822785188253

/-! ## A177104.P13437917232095011559

`∩[A065091(n+1), A214289(n+1)]`
-/

namespace A177104.P13437917232095011559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177104.P13437917232095011559

/-!
# A177105: Primes of the form 2*k^3-1.

The programs for A177105, there is no canonical definition to state claims against.
-/

/-! ## A177105.P6249136339441884304

`2*A214289(n+1)^3-1`
-/

namespace A177105.P6249136339441884304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214289 (n + 1) ^ 3 - 1

end

end A177105.P6249136339441884304

/-! ## A177105.P1722093715554683326

`A033431(A214289(n+1))-1`
-/

namespace A177105.P1722093715554683326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A214289 (n + 1)).toNat - 1

end

end A177105.P1722093715554683326

/-! ## A177105.P6689937704525007019

`A033562(A214289(n+1))-2%A153057(n)`
-/

namespace A177105.P6689937704525007019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - Int.tmod 2 (A153057 n)

end

end A177105.P6689937704525007019

/-! ## A177105.P5957243776816596623

`A033562(A214289(n+1))-A020639(A016825(n))`
-/

namespace A177105.P5957243776816596623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A016825 n).toNat

end

end A177105.P5957243776816596623

/-! ## A177105.P1072338650921629060

`A033562(A214289(n+1))-A020639(A017137(n))`
-/

namespace A177105.P1072338650921629060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A017137 n).toNat

end

end A177105.P1072338650921629060

/-! ## A177105.P8072954007231878771

`A033562(A214289(n+1))-A020639(A053741(n))`
-/

namespace A177105.P8072954007231878771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A053741 n).toNat

end

end A177105.P8072954007231878771

/-! ## A177105.P1712584867654847486

`A057428(A074848(n+1))+A033431(A214289(n+1))`
-/

namespace A177105.P1712584867654847486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A074848 (n + 1)).toNat + A033431 (A214289 (n + 1)).toNat

end

end A177105.P1712584867654847486

/-! ## A177105.P8614848242270289372

`A057428(A291761(n+1))+A033431(A214289(n+1))`
-/

namespace A177105.P8614848242270289372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A291761 (n + 1)).toNat + A033431 (A214289 (n + 1)).toNat

end

end A177105.P8614848242270289372

/-! ## A177105.P13851174852327134249

`A057428(A291762(n+1))+A033431(A214289(n+1))`
-/

namespace A177105.P13851174852327134249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A291762 (n + 1)).toNat + A033431 (A214289 (n + 1)).toNat

end

end A177105.P13851174852327134249

/-! ## A177105.P9110518684725688581

`A057428(A291767(n+1))+A033431(A214289(n+1))`
-/

namespace A177105.P9110518684725688581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A291767 (n + 1)).toNat + A033431 (A214289 (n + 1)).toNat

end

end A177105.P9110518684725688581

/-! ## A177105.P11134084182669439653

`A033562(A214289(n+1))-A000005(A004139(n+1))`
-/

namespace A177105.P11134084182669439653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A000005 (A004139 (n + 1)).toNat

end

end A177105.P11134084182669439653

/-! ## A177105.P16896553223334014551

`A033562(A214289(n+1))-A000005(A005145(n+1))`
-/

namespace A177105.P16896553223334014551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A000005 (A005145 (n + 1)).toNat

end

end A177105.P16896553223334014551

/-! ## A177105.P18184326228576547391

`A033562(A214289(n+1))-A020639(A001747(n+2))`
-/

namespace A177105.P18184326228576547391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A001747 (n + 2)).toNat

end

end A177105.P18184326228576547391

/-! ## A177105.P10733204057852872813

`A033562(A214289(n+1))-A020639(A005843(n+3))`
-/

namespace A177105.P10733204057852872813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A005843 (n + 3)).toNat

end

end A177105.P10733204057852872813

/-! ## A177105.P9417156173600557813

`A033562(A214289(n+1))-A020639(A014206(n))`
-/

namespace A177105.P9417156173600557813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A014206 n).toNat

end

end A177105.P9417156173600557813

/-! ## A177105.P9053801612443406252

`A033562(A214289(n+1))-A020639(A027689(n))`
-/

namespace A177105.P9053801612443406252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A027689 n).toNat

end

end A177105.P9053801612443406252

/-! ## A177105.P53908167013200840

`A033562(A214289(n+1))-A020639(A104675(n))`
-/

namespace A177105.P53908167013200840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (A104675 n).toNat

end

end A177105.P53908167013200840

/-! ## A177105.P958713292752625883

`A033562(A214289(n+1))-A020639(2*A007318(n))`
-/

namespace A177105.P958713292752625883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A214289 (n + 1)).toNat - A020639 (2 * A007318 n).toNat

end

end A177105.P958713292752625883

/-!
# A177106: Numbers k for which k^5-k-1 is composite.

The programs for A177106, there is no canonical definition to state claims against.
-/

/-! ## A177106.P9668420721526505490

`comp[A126427(n+1)-2]+2`
-/

namespace A177106.P9668420721526505490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126427 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A177106.P9668420721526505490

/-! ## A177106.P9375729659214040600

`lt[char[A126427(n+1)], A157928(n)]`
-/

namespace A177106.P9375729659214040600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126427 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A177106.P9375729659214040600

/-! ## A177106.P12505632565680356452

`eq[char[A126427(n+1)], A019590(n+1)]`
-/

namespace A177106.P12505632565680356452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126427 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177106.P12505632565680356452

/-! ## A177106.P18052817388383217465

`lt[char[A126427(n+1)]*A040977(n), n-1]`
-/

namespace A177106.P18052817388383217465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126427 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A040977 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A177106.P18052817388383217465

/-! ## A177106.P2047417849357098618

`eq[char[ceil(root(A126425(n+1), 5))], A019590(n+1)]`
-/

namespace A177106.P2047417849357098618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126425 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A177106.P2047417849357098618

/-!
# A177107: a(n) = 3*(10^n-7).

The programs for A177107, the canonical program `A177107.P1462985896082213660` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177107 has offset 1).

The definition of A177107 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(10^(n+1)-7)` (program `A177107.P1462985896082213660`, by `A177107.P1462985896082213660.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177107.P1462985896082213660

`3*(10^(n+1)-7)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177107

/-- `3*(10^(n+1)-7)` -/
def P1462985896082213660.Spec : Prop :=
  ∀ n, P1462985896082213660.a n = A177107 (n + 1)

theorem P1462985896082213660.correct : P1462985896082213660.Spec := by
  intro n
  simp only [A177107, Nat.add_sub_cancel]

end A177107

/-! ## A177107.P1803695444245824452

`lcm(9, 7-10^(n+1))`
-/

namespace A177107.P1803695444245824452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (7 - (10 ^ (n + 1) : ℤ))

end

end A177107.P1803695444245824452

namespace A177107

/-- `lcm(9, 7-10^(n+1))` -/
def P1803695444245824452.Spec : Prop :=
  ∀ n, (P1803695444245824452.a n : ℤ) = A177107 (n + 1)

end A177107

/-! ## A177107.P13917190217023194502

`∑[lcm(27, 10*a(n-1))]` with `a(0)=9`
-/

namespace A177107.P13917190217023194502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9] fun n f1 =>
  Nat.lcm 27 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177107.P13917190217023194502

namespace A177107

/-- `∑[lcm(27, 10*a(n-1))]` -/
def P13917190217023194502.Spec : Prop :=
  ∀ n, (P13917190217023194502.a n : ℤ) = A177107 (n + 1)

end A177107

/-! ## A177107.P2064763395477645545

`A177098(n+1)/2`
-/

namespace A177107.P2064763395477645545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177098 (n + 1) : ℚ) / 2

end

end A177107.P2064763395477645545

namespace A177107

/-- `A177098(n+1)/2` -/
def P2064763395477645545.Spec : Prop :=
  ∀ n, P2064763395477645545.a n = (A177107 (n + 1) : ℚ)

theorem P2064763395477645545.correct : P2064763395477645545.Spec := by
  intro n
  simp only [A177107, Nat.add_sub_cancel, A177107.P2064763395477645545.a, A177107.P1462985896082213660.a, A177098, A177098.P15375478941725217463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177107

/-! ## A177107.P483815680198459891

`A177074(n+1)-6`
-/

namespace A177107.P483815680198459891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177074 (n + 1) - 6

end

end A177107.P483815680198459891

namespace A177107

/-- `A177074(n+1)-6` -/
def P483815680198459891.Spec : Prop :=
  ∀ n, P483815680198459891.a n = A177107 (n + 1)

theorem P483815680198459891.correct : P483815680198459891.Spec := by
  intro n
  simp only [A177107, Nat.add_sub_cancel, A177107.P483815680198459891.a, A177107.P1462985896082213660.a, A177074, A177074.P17838302546417673985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177107

/-! ## A177107.P16843239955589164073

`3*A177112(n+1)/4`
-/

namespace A177107.P16843239955589164073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A177112 (n + 1) : ℚ) / 4

end

end A177107.P16843239955589164073

namespace A177107

/-- `3*A177112(n+1)/4` -/
def P16843239955589164073.Spec : Prop :=
  ∀ n, P16843239955589164073.a n = (A177107 (n + 1) : ℚ)

theorem P16843239955589164073.correct : P16843239955589164073.Spec := by
  intro n
  simp only [A177107, Nat.add_sub_cancel, A177107.P16843239955589164073.a, A177107.P1462985896082213660.a, A177112, A177112.P4606431005453224732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177107

/-! ## A177107.P5722748711098517966

`3*A177080(n+1)/5`
-/

namespace A177107.P5722748711098517966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A177080 (n + 1) : ℚ) / 5

end

end A177107.P5722748711098517966

namespace A177107

/-- `3*A177080(n+1)/5` -/
def P5722748711098517966.Spec : Prop :=
  ∀ n, P5722748711098517966.a n = (A177107 (n + 1) : ℚ)

theorem P5722748711098517966.correct : P5722748711098517966.Spec := by
  intro n
  simp only [A177107, Nat.add_sub_cancel, A177107.P5722748711098517966.a, A177107.P1462985896082213660.a, A177080, A177080.P12790948939987005441.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177107

/-!
# A177108: a(n) = 4*(10^n-3).

The programs for A177108, the canonical program `A177108.P13190284186003191451` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177108 has offset 1).

The definition of A177108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(10^(n+1)-3)` (program `A177108.P13190284186003191451`, by `A177108.P13190284186003191451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177108.P13190284186003191451

`4*(10^(n+1)-3)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177108

/-- `4*(10^(n+1)-3)` -/
def P13190284186003191451.Spec : Prop :=
  ∀ n, P13190284186003191451.a n = A177108 (n + 1)

theorem P13190284186003191451.correct : P13190284186003191451.Spec := by
  intro n
  simp only [A177108, Nat.add_sub_cancel]

end A177108

/-! ## A177108.P4086639888538106559

`10*a(n-1)+108` with `a(0)=28`
-/

namespace A177108.P4086639888538106559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28] fun n a =>
  10 * a (n - 1) + 108

end

end A177108.P4086639888538106559

namespace A177108

/-- `10*a(n-1)+108` -/
def P4086639888538106559.Spec : Prop :=
  ∀ n, (P4086639888538106559.a n : ℤ) = A177108 (n + 1)

theorem P4086639888538106559.correct : P4086639888538106559.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A177108, Nat.add_sub_cancel, A177108.P4086639888538106559.a, A177108.P13190284186003191451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A177108, Nat.add_sub_cancel, A177108.P4086639888538106559.a, A177108.P13190284186003191451.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177108

/-! ## A177108.P5339840659031286222

`lcm(4, 3-10^(n+1))`
-/

namespace A177108.P5339840659031286222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (3 - (10 ^ (n + 1) : ℤ))

end

end A177108.P5339840659031286222

namespace A177108

/-- `lcm(4, 3-10^(n+1))` -/
def P5339840659031286222.Spec : Prop :=
  ∀ n, (P5339840659031286222.a n : ℤ) = A177108 (n + 1)

end A177108

/-! ## A177108.P5425269883752942148

`∑[10*a(n-1)]-8` with `a(0)=36`
-/

namespace A177108.P5425269883752942148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 8

end

end A177108.P5425269883752942148

namespace A177108

/-- `∑[10*a(n-1)]-8` -/
def P5425269883752942148.Spec : Prop :=
  ∀ n, P5425269883752942148.a n = A177108 (n + 1)

end A177108

/-! ## A177108.P14073732574524184268

`A086942(n+1)-4`
-/

namespace A177108.P14073732574524184268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086942 (n + 1) - 4

end

end A177108.P14073732574524184268

namespace A177108

/-- `A086942(n+1)-4` -/
def P14073732574524184268.Spec : Prop :=
  ∀ n, P14073732574524184268.a n = A177108 (n + 1)

theorem P14073732574524184268.correct : P14073732574524184268.Spec := by
  intro n
  simp only [A177108, Nat.add_sub_cancel, A177108.P14073732574524184268.a, A177108.P13190284186003191451.a, A086942, A086942.P10671025876374488277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177108

/-! ## A177108.P8136165450714351149

`A175602(n+1)/2`
-/

namespace A177108.P8136165450714351149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175602 (n + 1) : ℚ) / 2

end

end A177108.P8136165450714351149

namespace A177108

/-- `A175602(n+1)/2` -/
def P8136165450714351149.Spec : Prop :=
  ∀ n, P8136165450714351149.a n = (A177108 (n + 1) : ℚ)

theorem P8136165450714351149.correct : P8136165450714351149.Spec := by
  intro n
  simp only [A177108, Nat.add_sub_cancel, A177108.P8136165450714351149.a, A177108.P13190284186003191451.a, A175602, A175602.P13831249186335419417.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177108

/-! ## A177108.P8059215582884619431

`A177109(n+1)+8`
-/

namespace A177108.P8059215582884619431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177109 (n + 1) + 8

end

end A177108.P8059215582884619431

namespace A177108

/-- `A177109(n+1)+8` -/
def P8059215582884619431.Spec : Prop :=
  ∀ n, P8059215582884619431.a n = A177108 (n + 1)

theorem P8059215582884619431.correct : P8059215582884619431.Spec := by
  intro n
  simp only [A177108, Nat.add_sub_cancel, A177108.P8059215582884619431.a, A177108.P13190284186003191451.a, A177109, A177109.P3745638739064712018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177108

/-! ## A177108.P2865425906022318778

`A083811(n+1)-8`
-/

namespace A177108.P2865425906022318778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083811 (n + 1) - 8

end

end A177108.P2865425906022318778

namespace A177108

/-- `A083811(n+1)-8` -/
def P2865425906022318778.Spec : Prop :=
  ∀ n, P2865425906022318778.a n = A177108 (n + 1)

theorem P2865425906022318778.correct : P2865425906022318778.Spec := by
  intro n
  simp only [A177108, Nat.add_sub_cancel, A177108.P2865425906022318778.a, A177108.P13190284186003191451.a, A083811, A083811.P10128322928819353492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177108

/-! ## A177108.P10768070367046679202

`A086575(n+1)-8`
-/

namespace A177108.P10768070367046679202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086575 (n + 1) - 8

end

end A177108.P10768070367046679202

namespace A177108

/-- `A086575(n+1)-8` -/
def P10768070367046679202.Spec : Prop :=
  ∀ n, P10768070367046679202.a n = A177108 (n + 1)

theorem P10768070367046679202.correct : P10768070367046679202.Spec := by
  intro n
  simp only [A177108, Nat.add_sub_cancel, A177108.P10768070367046679202.a, A177108.P13190284186003191451.a, A086575, A086575.P2017417620639071348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177108

/-! ## A177108.P6848556236451811876

`3*A185127(n)-5`
-/

namespace A177108.P6848556236451811876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A185127 n - 5

end

end A177108.P6848556236451811876

namespace A177108

/-- `3*A185127(n)-5` -/
def P6848556236451811876.Spec : Prop :=
  ∀ n, P6848556236451811876.a n = A177108 (n + 1)

end A177108

/-!
# A177109: a(n) = 4*(10^n-5).

The programs for A177109, the canonical program `A177109.P3745638739064712018` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177109 has offset 1).

The definition of A177109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(10^(n+1)-5)` (program `A177109.P3745638739064712018`, by `A177109.P3745638739064712018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177109.P3745638739064712018

`4*(10^(n+1)-5)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177109

/-- `4*(10^(n+1)-5)` -/
def P3745638739064712018.Spec : Prop :=
  ∀ n, P3745638739064712018.a n = A177109 (n + 1)

theorem P3745638739064712018.correct : P3745638739064712018.Spec := by
  intro n
  simp only [A177109, Nat.add_sub_cancel]

end A177109

/-! ## A177109.P16032447685688630110

`11*a(n-1)-10*a(n-2)` with `a(0)=20, a(1)=380`
-/

namespace A177109.P16032447685688630110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20, 380] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A177109.P16032447685688630110

namespace A177109

/-- `11*a(n-1)-10*a(n-2)` -/
def P16032447685688630110.Spec : Prop :=
  ∀ n, P16032447685688630110.a n = A177109 (n + 1)

theorem P16032447685688630110.correct : P16032447685688630110.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A177109, Nat.add_sub_cancel, A177109.P16032447685688630110.a, A177109.P3745638739064712018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A177109, Nat.add_sub_cancel, A177109.P16032447685688630110.a, A177109.P3745638739064712018.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177109

/-! ## A177109.P4861360204950832976

`lcm(4, 5-10^(n+1))`
-/

namespace A177109.P4861360204950832976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (5 - (10 ^ (n + 1) : ℤ))

end

end A177109.P4861360204950832976

namespace A177109

/-- `lcm(4, 5-10^(n+1))` -/
def P4861360204950832976.Spec : Prop :=
  ∀ n, (P4861360204950832976.a n : ℤ) = A177109 (n + 1)

end A177109

/-! ## A177109.P12411466204292485489

`floor(10*(a(n-1)+18))` with `a(0)=20`

`floor` is left out, it is the identity on integers.
-/

namespace A177109.P12411466204292485489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  10 * (a (n - 1) + 18)

end

end A177109.P12411466204292485489

namespace A177109

/-- `floor(10*(a(n-1)+18))` -/
def P12411466204292485489.Spec : Prop :=
  ∀ n, (P12411466204292485489.a n : ℤ) = A177109 (n + 1)

theorem P12411466204292485489.correct : P12411466204292485489.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A177109, Nat.add_sub_cancel, A177109.P12411466204292485489.a, A177109.P3745638739064712018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A177109, Nat.add_sub_cancel, A177109.P12411466204292485489.a, A177109.P3745638739064712018.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A177109

/-! ## A177109.P3436668162809135467

`∑[10*a(n-1)]-16` with `a(0)=36`
-/

namespace A177109.P3436668162809135467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 16

end

end A177109.P3436668162809135467

namespace A177109

/-- `∑[10*a(n-1)]-16` -/
def P3436668162809135467.Spec : Prop :=
  ∀ n, P3436668162809135467.a n = A177109 (n + 1)

end A177109

/-! ## A177109.P4538534852349411904

`A175603(n+1)/2`
-/

namespace A177109.P4538534852349411904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175603 (n + 1) : ℚ) / 2

end

end A177109.P4538534852349411904

namespace A177109

/-- `A175603(n+1)/2` -/
def P4538534852349411904.Spec : Prop :=
  ∀ n, P4538534852349411904.a n = (A177109 (n + 1) : ℚ)

theorem P4538534852349411904.correct : P4538534852349411904.Spec := by
  intro n
  simp only [A177109, Nat.add_sub_cancel, A177109.P4538534852349411904.a, A177109.P3745638739064712018.a, A175603, A175603.P15994713667527612193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177109

/-! ## A177109.P3242738795329922983

`A177112(n+1)+8`
-/

namespace A177109.P3242738795329922983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177112 (n + 1) + 8

end

end A177109.P3242738795329922983

namespace A177109

/-- `A177112(n+1)+8` -/
def P3242738795329922983.Spec : Prop :=
  ∀ n, P3242738795329922983.a n = A177109 (n + 1)

theorem P3242738795329922983.correct : P3242738795329922983.Spec := by
  intro n
  simp only [A177109, Nat.add_sub_cancel, A177109.P3242738795329922983.a, A177109.P3745638739064712018.a, A177112, A177112.P4606431005453224732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177109

/-! ## A177109.P748998117181503655

`A177108(n+1)-8`
-/

namespace A177109.P748998117181503655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177108 (n + 1) - 8

end

end A177109.P748998117181503655

namespace A177109

/-- `A177108(n+1)-8` -/
def P748998117181503655.Spec : Prop :=
  ∀ n, P748998117181503655.a n = A177109 (n + 1)

theorem P748998117181503655.correct : P748998117181503655.Spec := by
  intro n
  simp only [A177109, Nat.add_sub_cancel, A177109.P748998117181503655.a, A177109.P3745638739064712018.a, A177108, A177108.P13190284186003191451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177109

/-! ## A177109.P12368575554423903618

`A086942(n+1)-12`
-/

namespace A177109.P12368575554423903618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086942 (n + 1) - 12

end

end A177109.P12368575554423903618

namespace A177109

/-- `A086942(n+1)-12` -/
def P12368575554423903618.Spec : Prop :=
  ∀ n, P12368575554423903618.a n = A177109 (n + 1)

theorem P12368575554423903618.correct : P12368575554423903618.Spec := by
  intro n
  simp only [A177109, Nat.add_sub_cancel, A177109.P12368575554423903618.a, A177109.P3745638739064712018.a, A086942, A086942.P10671025876374488277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177109

/-! ## A177109.P6964051039077483996

`A083818(n+2)-17`
-/

namespace A177109.P6964051039077483996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083818 (n + 2) - 17

end

end A177109.P6964051039077483996

namespace A177109

/-- `A083818(n+2)-17` -/
def P6964051039077483996.Spec : Prop :=
  ∀ n, P6964051039077483996.a n = A177109 (n + 1)

theorem P6964051039077483996.correct : P6964051039077483996.Spec := by
  intro n
  simp only [A177109, Nat.add_sub_cancel, A177109.P6964051039077483996.a, A177109.P3745638739064712018.a, A083818, A083818.P1973650666487385807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177109

/-!
# A177111: Sequence defined by the recurrence formula a(n+1) = sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=1, k=-2 and l=0.

The programs for A177111, there is no canonical definition to state claims against.
-/

/-! ## A177111.P8732968752902210165

`A063655(A179487(n+3))-A002064(n)`
-/

namespace A177111.P8732968752902210165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A179487 (n + 3)).toNat - A002064 n

end

end A177111.P8732968752902210165

/-!
# A177112: a(n) = 4*(10^n-7).

The programs for A177112, the canonical program `A177112.P4606431005453224732` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177112 has offset 1).

The definition of A177112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(10^(n+1)-7)` (program `A177112.P4606431005453224732`, by `A177112.P4606431005453224732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177112.P4606431005453224732

`4*(10^(n+1)-7)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177112

/-- `4*(10^(n+1)-7)` -/
def P4606431005453224732.Spec : Prop :=
  ∀ n, P4606431005453224732.a n = A177112 (n + 1)

theorem P4606431005453224732.correct : P4606431005453224732.Spec := by
  intro n
  simp only [A177112, Nat.add_sub_cancel]

end A177112

/-! ## A177112.P9767956601980838018

`lcm(4, 7-10^(n+1))`
-/

namespace A177112.P9767956601980838018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (7 - (10 ^ (n + 1) : ℤ))

end

end A177112.P9767956601980838018

namespace A177112

/-- `lcm(4, 7-10^(n+1))` -/
def P9767956601980838018.Spec : Prop :=
  ∀ n, (P9767956601980838018.a n : ℤ) = A177112 (n + 1)

end A177112

/-! ## A177112.P7989324965478244137

`∑[lcm(9, 10*a(n-1))]` with `a(0)=12`
-/

namespace A177112.P7989324965478244137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  Nat.lcm 9 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177112.P7989324965478244137

namespace A177112

/-- `∑[lcm(9, 10*a(n-1))]` -/
def P7989324965478244137.Spec : Prop :=
  ∀ n, (P7989324965478244137.a n : ℤ) = A177112 (n + 1)

end A177112

/-! ## A177112.P150655605517956780

`∑[10*a(n-1)]-24` with `a(0)=36`
-/

namespace A177112.P150655605517956780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 24

end

end A177112.P150655605517956780

namespace A177112

/-- `∑[10*a(n-1)]-24` -/
def P150655605517956780.Spec : Prop :=
  ∀ n, P150655605517956780.a n = A177112 (n + 1)

end A177112

/-! ## A177112.P17926014328314549536

`A175604(n+1)/2`
-/

namespace A177112.P17926014328314549536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175604 (n + 1) : ℚ) / 2

end

end A177112.P17926014328314549536

namespace A177112

/-- `A175604(n+1)/2` -/
def P17926014328314549536.Spec : Prop :=
  ∀ n, P17926014328314549536.a n = (A177112 (n + 1) : ℚ)

theorem P17926014328314549536.correct : P17926014328314549536.Spec := by
  intro n
  simp only [A177112, Nat.add_sub_cancel, A177112.P17926014328314549536.a, A177112.P4606431005453224732.a, A175604, A175604.P229425849513988799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177112

/-! ## A177112.P12277063750357838857

`A177114(n+1)+8`
-/

namespace A177112.P12277063750357838857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177114 (n + 1) + 8

end

end A177112.P12277063750357838857

namespace A177112

/-- `A177114(n+1)+8` -/
def P12277063750357838857.Spec : Prop :=
  ∀ n, P12277063750357838857.a n = A177112 (n + 1)

theorem P12277063750357838857.correct : P12277063750357838857.Spec := by
  intro n
  simp only [A177112, Nat.add_sub_cancel, A177112.P12277063750357838857.a, A177112.P4606431005453224732.a, A177114, A177114.P5452810173761328659.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177112

/-! ## A177112.P3701631774578897191

`A177109(n+1)-8`
-/

namespace A177112.P3701631774578897191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177109 (n + 1) - 8

end

end A177112.P3701631774578897191

namespace A177112

/-- `A177109(n+1)-8` -/
def P3701631774578897191.Spec : Prop :=
  ∀ n, P3701631774578897191.a n = A177112 (n + 1)

theorem P3701631774578897191.correct : P3701631774578897191.Spec := by
  intro n
  simp only [A177112, Nat.add_sub_cancel, A177112.P3701631774578897191.a, A177112.P4606431005453224732.a, A177109, A177109.P3745638739064712018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177112

/-! ## A177112.P6024340972299607009

`A177108(n+1)-(A177108(n+1)/A173833(n+1))²`
-/

namespace A177112.P6024340972299607009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177108 (n + 1) : ℚ) - ((A177108 (n + 1) : ℚ) / (A173833 (n + 1) : ℚ)) ^ 2

end

end A177112.P6024340972299607009

namespace A177112

/-- `A177108(n+1)-(A177108(n+1)/A173833(n+1))²` -/
def P6024340972299607009.Spec : Prop :=
  ∀ n, P6024340972299607009.a n = (A177112 (n + 1) : ℚ)

end A177112

/-! ## A177112.P14634025812214937466

`2*A177098(n+1)/3`
-/

namespace A177112.P14634025812214937466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A177098 (n + 1) : ℚ) / 3

end

end A177112.P14634025812214937466

namespace A177112

/-- `2*A177098(n+1)/3` -/
def P14634025812214937466.Spec : Prop :=
  ∀ n, P14634025812214937466.a n = (A177112 (n + 1) : ℚ)

theorem P14634025812214937466.correct : P14634025812214937466.Spec := by
  intro n
  simp only [A177112, Nat.add_sub_cancel, A177112.P14634025812214937466.a, A177112.P4606431005453224732.a, A177098, A177098.P15375478941725217463.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177112

/-! ## A177112.P3561780588554387424

`4*A177107(n+1)/3`
-/

namespace A177112.P3561780588554387424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A177107 (n + 1) : ℚ) / 3

end

end A177112.P3561780588554387424

namespace A177112

/-- `4*A177107(n+1)/3` -/
def P3561780588554387424.Spec : Prop :=
  ∀ n, P3561780588554387424.a n = (A177112 (n + 1) : ℚ)

theorem P3561780588554387424.correct : P3561780588554387424.Spec := by
  intro n
  simp only [A177112, Nat.add_sub_cancel, A177112.P3561780588554387424.a, A177112.P4606431005453224732.a, A177107, A177107.P1462985896082213660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177112

/-!
# A177113: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=2, k=-2 and l=0.

The programs for A177113, there is no canonical definition to state claims against.
-/

/-! ## A177113.P11443927700838225491

`A057287(n+1)-A182050(A011782(n))`
-/

namespace A177113.P11443927700838225491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057287 (n + 1) - A182050 (A011782 n).toNat

end

end A177113.P11443927700838225491

/-! ## A177113.P13175396702508789731

`A215812(n+1)-A161420(A161420(n))`
-/

namespace A177113.P13175396702508789731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215812 (n + 1) - A161420 (A161420 n).toNat

end

end A177113.P13175396702508789731

/-! ## A177113.P660379528310075595

`A045778(A232414(n+1))-A326329(n)`
-/

namespace A177113.P660379528310075595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A232414 (n + 1)).toNat - A326329 n

end

end A177113.P660379528310075595

/-!
# A177114: a(n) = 4*(10^n-9).

The programs for A177114, the canonical program `A177114.P5452810173761328659` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177114 has offset 1).

The definition of A177114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(10^(n+1)-9)` (program `A177114.P5452810173761328659`, by `A177114.P5452810173761328659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177114.P5452810173761328659

`4*(10^(n+1)-9)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177114

/-- `4*(10^(n+1)-9)` -/
def P5452810173761328659.Spec : Prop :=
  ∀ n, P5452810173761328659.a n = A177114 (n + 1)

theorem P5452810173761328659.correct : P5452810173761328659.Spec := by
  intro n
  simp only [A177114, Nat.add_sub_cancel]

end A177114

/-! ## A177114.P1203743792117976431

`lcm(4, 9-10^(n+1))`
-/

namespace A177114.P1203743792117976431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (9 - (10 ^ (n + 1) : ℤ))

end

end A177114.P1203743792117976431

namespace A177114

/-- `lcm(4, 9-10^(n+1))` -/
def P1203743792117976431.Spec : Prop :=
  ∀ n, (P1203743792117976431.a n : ℤ) = A177114 (n + 1)

end A177114

/-! ## A177114.P5038379137988997202

`∑[lcm(9, 10*a(n-1))]` with `a(0)=4`
-/

namespace A177114.P5038379137988997202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  Nat.lcm 9 (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177114.P5038379137988997202

namespace A177114

/-- `∑[lcm(9, 10*a(n-1))]` -/
def P5038379137988997202.Spec : Prop :=
  ∀ n, (P5038379137988997202.a n : ℤ) = A177114 (n + 1)

end A177114

/-! ## A177114.P4550908983219950575

`∑[10*a(n-1)]-32` with `a(0)=36`
-/

namespace A177114.P4550908983219950575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 32

end

end A177114.P4550908983219950575

namespace A177114

/-- `∑[10*a(n-1)]-32` -/
def P4550908983219950575.Spec : Prop :=
  ∀ n, P4550908983219950575.a n = A177114 (n + 1)

end A177114

/-! ## A177114.P10849462227981697773

`abs(4*xor(1, 10*(10^n-1)))`
-/

namespace A177114.P10849462227981697773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * Int.xor 1 (10 * ((10 ^ n : ℤ) - 1))|

end

end A177114.P10849462227981697773

namespace A177114

/-- `abs(4*xor(1, 10*(10^n-1)))` -/
def P10849462227981697773.Spec : Prop :=
  ∀ n, P10849462227981697773.a n = A177114 (n + 1)

end A177114

/-! ## A177114.P17199211787011878080

`Δ[10*a(n-1)]+a(n-1)` with `a(0)=4`
-/

namespace A177114.P17199211787011878080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A177114.P17199211787011878080

namespace A177114

/-- `Δ[10*a(n-1)]+a(n-1)` -/
def P17199211787011878080.Spec : Prop :=
  ∀ n, P17199211787011878080.a n = A177114 (n + 1)

end A177114

/-! ## A177114.P16219557879264518232

`5*A100412(n)-1`
-/

namespace A177114.P16219557879264518232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A100412 n - 1

end

end A177114.P16219557879264518232

namespace A177114

/-- `5*A100412(n)-1` -/
def P16219557879264518232.Spec : Prop :=
  ∀ n, P16219557879264518232.a n = A177114 (n + 1)

theorem P16219557879264518232.correct : P16219557879264518232.Spec := by
  intro n
  simp only [A177114, Nat.add_sub_cancel, A177114.P16219557879264518232.a, A177114.P5452810173761328659.a, A100412, A100412.P15674556546461358470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177114

/-! ## A177114.P9558348262544895960

`A177112(n+1)-8`
-/

namespace A177114.P9558348262544895960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177112 (n + 1) - 8

end

end A177114.P9558348262544895960

namespace A177114

/-- `A177112(n+1)-8` -/
def P9558348262544895960.Spec : Prop :=
  ∀ n, P9558348262544895960.a n = A177114 (n + 1)

theorem P9558348262544895960.correct : P9558348262544895960.Spec := by
  intro n
  simp only [A177114, Nat.add_sub_cancel, A177114.P9558348262544895960.a, A177114.P5452810173761328659.a, A177112, A177112.P4606431005453224732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177114

/-! ## A177114.P6058900206069860777

`5*A086579(n)+4`
-/

namespace A177114.P6058900206069860777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A086579 n + 4

end

end A177114.P6058900206069860777

namespace A177114

/-- `5*A086579(n)+4` -/
def P6058900206069860777.Spec : Prop :=
  ∀ n, P6058900206069860777.a n = A177114 (n + 1)

theorem P6058900206069860777.correct : P6058900206069860777.Spec := by
  intro n
  simp only [A177114, Nat.add_sub_cancel, A177114.P6058900206069860777.a, A177114.P5452810173761328659.a, A086579, A086579.P2736226190414845957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A177114

/-!
# A177115: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=-2 and l=0.

The programs for A177115, there is no canonical definition to state claims against.
-/

/-! ## A177115.P14927659389544214637

`A304182(n+1)+A105514(A344684(n))`
-/

namespace A177115.P14927659389544214637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1) + A105514 (A344684 n).toNat

end

end A177115.P14927659389544214637

/-!
# A177116: Partial sums of round(n^2/11).

The programs for A177116, the canonical program `A177116.P8612505088540447844` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177116 has offset 0).

The definition of A177116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177116.P8612505088540447844

`round(n*(2*n²+3*n-11)/66)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177116

/-- `round(n*(2*n²+3*n-11)/66)` -/
def P8612505088540447844.Spec : Prop :=
  ∀ n, P8612505088540447844.a n = A177116 n

theorem P8612505088540447844.correct : P8612505088540447844.Spec := by
  intro n
  simp only [A177116]

end A177116

/-! ## A177116.P18365283462341920939

`∑[∑[A289122(n)]]`
-/

namespace A177116.P18365283462341920939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177116.P18365283462341920939

namespace A177116

/-- `∑[∑[A289122(n)]]` -/
def P18365283462341920939.Spec : Prop :=
  ∀ n, P18365283462341920939.a n = A177116 n

end A177116

/-! ## A177116.P16579610624617568988

`∑[floor(A117950(n)/11)]`
-/

namespace A177116.P16579610624617568988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117950 n : ℚ) / 11⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177116.P16579610624617568988

namespace A177116

/-- `∑[floor(A117950(n)/11)]` -/
def P16579610624617568988.Spec : Prop :=
  ∀ n, P16579610624617568988.a n = A177116 n

end A177116

/-! ## A177116.P11519232537565360297

`∑[round(A000290(n)/11)]`
-/

namespace A177116.P11519232537565360297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000290 n : ℚ) / 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177116.P11519232537565360297

namespace A177116

/-- `∑[round(A000290(n)/11)]` -/
def P11519232537565360297.Spec : Prop :=
  ∀ n, P11519232537565360297.a n = A177116 n

end A177116

/-! ## A177116.P17515444282233261986

`∑[A321195(n+2)]`
-/

namespace A177116.P17515444282233261986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321195 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177116.P17515444282233261986

namespace A177116

/-- `∑[A321195(n+2)]` -/
def P17515444282233261986.Spec : Prop :=
  ∀ n, P17515444282233261986.a n = A177116 n

end A177116

/-! ## A177116.P12061926160443983472

`∑[A344420(n²+2)]`
-/

namespace A177116.P12061926160443983472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (n ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177116.P12061926160443983472

namespace A177116

/-- `∑[A344420(n²+2)]` -/
def P12061926160443983472.Spec : Prop :=
  ∀ n, P12061926160443983472.a n = A177116 n

end A177116

/-!
# A177117: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=4, k=-2 and l=0.

The programs for A177117, there is no canonical definition to state claims against.
-/

/-! ## A177117.P12420281670388742381

`A387881(A027376(n))`
-/

namespace A177117.P12420281670388742381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387881 (A027376 n).toNat

end

end A177117.P12420281670388742381

/-! ## A177117.P3568932746914788226

`A128089(A025227(n)+1)`
-/

namespace A177117.P3568932746914788226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128089 (A025227 n + 1).toNat

end

end A177117.P3568932746914788226

/-!
# A177118: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=-2 and l=0.

The programs for A177118, there is no canonical definition to state claims against.
-/

/-! ## A177118.P16930589287251596581

`A276886(A176755(n))`
-/

namespace A177118.P16930589287251596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276886 (A176755 n).toNat

end

end A177118.P16930589287251596581

/-!
# A177119: Primes whose digits can be arranged as consecutive digits (more precisely, to form a substring of 0123456789).

The programs for A177119, there is no canonical definition to state claims against.
-/

/-! ## A177119.P5518764901333552742

`∩[A029743(n+1), A215014(n+1)]`
-/

namespace A177119.P5518764901333552742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177119.P5518764901333552742

/-! ## A177119.P353079993240075290

`∩[A068710(n+1), A215014(n+1)]`
-/

namespace A177119.P353079993240075290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177119.P353079993240075290

/-! ## A177119.P17071281119437067440

`p?[A215014(n+1)]`
-/

namespace A177119.P17071281119437067440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A177119.P17071281119437067440

/-! ## A177119.P11373577394257101742

`record[p?[A215014(A133310(n))]]`
-/

namespace A177119.P11373577394257101742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177119.P11373577394257101742

/-! ## A177119.P7328723834321705835

`record[p?[A215014(A154958(n))]]`
-/

namespace A177119.P7328723834321705835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177119.P7328723834321705835

/-! ## A177119.P14976566789660789174

`record[p?[A215014(A323889(n))]]`
-/

namespace A177119.P14976566789660789174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177119.P14976566789660789174

/-! ## A177119.P6152885013197384156

`record[A020639(A215014(n+3))]`
-/

namespace A177119.P6152885013197384156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215014 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177119.P6152885013197384156

/-! ## A177119.P12089728766031937575

`∩[A029743(n+1), A134336(n+1)]`
-/

namespace A177119.P12089728766031937575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177119.P12089728766031937575

/-! ## A177119.P924159483038780892

`∩[A068710(n+1), A134336(n+1)]`
-/

namespace A177119.P924159483038780892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177119.P924159483038780892

/-! ## A177119.P6272052794117790547

`∩[A000040(n+1), A215014(n+1)]`
-/

namespace A177119.P6272052794117790547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177119.P6272052794117790547

/-!
# A177121: Square array T(n,k) read by antidiagonals up: T(n,k) = 1 if n=1; otherwise if n divides k then T(n,k) = -n+1; otherwise T(n,k) = 1.

The programs for A177121, the canonical program `A177121.P3320387375115592110` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177121 has offset 1).

The definition of A177121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177121.P17315982506925287783

`A191907(char[∑[n-1]]+n+1)`
-/

namespace A177121.P17315982506925287783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 1))

end

end A177121.P17315982506925287783

namespace A177121

/-- `A191907(char[∑[n-1]]+n+1)` -/
def P17315982506925287783.Spec : Prop :=
  ∀ n, P17315982506925287783.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P4807566274711766683

`A191907(n+1)+A023531(n)`
-/

namespace A177121.P4807566274711766683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + A023531 n

end

end A177121.P4807566274711766683

namespace A177121

/-- `A191907(n+1)+A023531(n)` -/
def P4807566274711766683.Spec : Prop :=
  ∀ n, P4807566274711766683.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P17973251543943961238

`or(A097806(n), A191907(n+1))`
-/

namespace A177121.P17973251543943961238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097806 n) (A191907 (n + 1))

end

end A177121.P17973251543943961238

namespace A177121

/-- `or(A097806(n), A191907(n+1))` -/
def P17973251543943961238.Spec : Prop :=
  ∀ n, P17973251543943961238.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P14163050272296070201

`or(A103451(n), A191907(n+1))`
-/

namespace A177121.P14163050272296070201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103451 n) (A191907 (n + 1))

end

end A177121.P14163050272296070201

namespace A177121

/-- `or(A103451(n), A191907(n+1))` -/
def P14163050272296070201.Spec : Prop :=
  ∀ n, P14163050272296070201.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P8061104217281186192

`A191907(n+1)+Δ[A003056(n)]`
-/

namespace A177121.P8061104217281186192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + (f1 (n + 1) - f1 n)

end

end A177121.P8061104217281186192

namespace A177121

/-- `A191907(n+1)+Δ[A003056(n)]` -/
def P8061104217281186192.Spec : Prop :=
  ∀ n, P8061104217281186192.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P13900275286107312782

`A191907(n+1)+char[A000096(n)]`
-/

namespace A177121.P13900275286107312782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A177121.P13900275286107312782

namespace A177121

/-- `A191907(n+1)+char[A000096(n)]` -/
def P13900275286107312782.Spec : Prop :=
  ∀ n, P13900275286107312782.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P11159636760137748809

`A191907(n+1)^Δ[A083920(n)]`
-/

namespace A177121.P11159636760137748809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191907 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A177121.P11159636760137748809

namespace A177121

/-- `A191907(n+1)^Δ[A083920(n)]` -/
def P11159636760137748809.Spec : Prop :=
  ∀ n, P11159636760137748809.a n = (A177121 (n + 1) : ℚ)

end A177121

/-! ## A177121.P17523557678823729592

`A191907(n+1)+A010054(n+1)`
-/

namespace A177121.P17523557678823729592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + A010054 (n + 1)

end

end A177121.P17523557678823729592

namespace A177121

/-- `A191907(n+1)+A010054(n+1)` -/
def P17523557678823729592.Spec : Prop :=
  ∀ n, P17523557678823729592.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P2821488362260901701

`A191907(n+1)^A057979(A126988(n+1))`
-/

namespace A177121.P2821488362260901701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191907 (n + 1) : ℚ) ^ (A057979 (A126988 (n + 1)).toNat : ℤ)

end

end A177121.P2821488362260901701

namespace A177121

/-- `A191907(n+1)^A057979(A126988(n+1))` -/
def P2821488362260901701.Spec : Prop :=
  ∀ n, P2821488362260901701.a n = (A177121 (n + 1) : ℚ)

end A177121

/-! ## A177121.P10775899019661700625

`or(A191907(n+1), A266848(A191907(n+1)²))`
-/

namespace A177121.P10775899019661700625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191907 (n + 1)) (A266848 (A191907 (n + 1) ^ 2).toNat)

end

end A177121.P10775899019661700625

namespace A177121

/-- `or(A191907(n+1), A266848(A191907(n+1)²))` -/
def P10775899019661700625.Spec : Prop :=
  ∀ n, P10775899019661700625.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P3320387375115592110

`A035214(n+1)-A127093(A099375(n)+1+n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A177121

/-- `A035214(n+1)-A127093(A099375(n)+1+n)` -/
def P3320387375115592110.Spec : Prop :=
  ∀ n, P3320387375115592110.a n = A177121 (n + 1)

theorem P3320387375115592110.correct : P3320387375115592110.Spec := by
  intro n
  simp only [A177121, Nat.add_sub_cancel]

end A177121

/-! ## A177121.P18101863271782111356

`1-A127093(A099375(n)+1+n)%A142992(n)`
-/

namespace A177121.P18101863271782111356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A127093 (A099375 n + 1 + (n : ℤ)).toNat) (A142992 n)

end

end A177121.P18101863271782111356

namespace A177121

/-- `1-A127093(A099375(n)+1+n)%A142992(n)` -/
def P18101863271782111356.Spec : Prop :=
  ∀ n, P18101863271782111356.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P350782586478250811

`or(A175992(n+2), A191907(n+1))`
-/

namespace A177121.P350782586478250811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175992 (n + 2)) (A191907 (n + 1))

end

end A177121.P350782586478250811

namespace A177121

/-- `or(A175992(n+2), A191907(n+1))` -/
def P350782586478250811.Spec : Prop :=
  ∀ n, P350782586478250811.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P17654953882577966714

`A191907(n+1)+Δ[A002024(n+1)]`
-/

namespace A177121.P17654953882577966714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + (f1 (n + 1) - f1 n)

end

end A177121.P17654953882577966714

namespace A177121

/-- `A191907(n+1)+Δ[A002024(n+1)]` -/
def P17654953882577966714.Spec : Prop :=
  ∀ n, P17654953882577966714.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P17633117582154620355

`Δ[A014132(n+1)]-A127093(A099375(n)+1+n)`
-/

namespace A177121.P17633117582154620355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A127093 (A099375 n + 1 + (n : ℤ)).toNat

end

end A177121.P17633117582154620355

namespace A177121

/-- `Δ[A014132(n+1)]-A127093(A099375(n)+1+n)` -/
def P17633117582154620355.Spec : Prop :=
  ∀ n, P17633117582154620355.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P8819239124179693048

`A191907(n+1)+A051731(n+2)*A077049(n+2)`
-/

namespace A177121.P8819239124179693048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (n + 1) + A051731 (n + 2) * A077049 (n + 2)

end

end A177121.P8819239124179693048

namespace A177121

/-- `A191907(n+1)+A051731(n+2)*A077049(n+2)` -/
def P8819239124179693048.Spec : Prop :=
  ∀ n, P8819239124179693048.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P8991048813385236877

`or(A054521(A080036(n)), A191907(n+1))`
-/

namespace A177121.P8991048813385236877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054521 (A080036 n).toNat) (A191907 (n + 1))

end

end A177121.P8991048813385236877

namespace A177121

/-- `or(A054521(A080036(n)), A191907(n+1))` -/
def P8991048813385236877.Spec : Prop :=
  ∀ n, P8991048813385236877.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P16054766211567672821

`or(A191907(n+1), A266848(A004768(n)))`
-/

namespace A177121.P16054766211567672821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191907 (n + 1)) (A266848 (A004768 n).toNat)

end

end A177121.P16054766211567672821

namespace A177121

/-- `or(A191907(n+1), A266848(A004768(n)))` -/
def P16054766211567672821.Spec : Prop :=
  ∀ n, P16054766211567672821.a n = A177121 (n + 1)

end A177121

/-! ## A177121.P18054827751509053495

`A191907(n+1)^A001221(A130321(n))`
-/

namespace A177121.P18054827751509053495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191907 (n + 1) : ℚ) ^ (A001221 (A130321 n).toNat : ℤ)

end

end A177121.P18054827751509053495

namespace A177121

/-- `A191907(n+1)^A001221(A130321(n))` -/
def P18054827751509053495.Spec : Prop :=
  ∀ n, P18054827751509053495.a n = (A177121 (n + 1) : ℚ)

end A177121

/-!
# A177122: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=6, k=1 and l=1.

The programs for A177122, there is no canonical definition to state claims against.
-/

/-! ## A177122.P609333170638363083

`A117892(A391892(n))`
-/

namespace A177122.P609333170638363083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117892 (A391892 n).toNat

end

end A177122.P609333170638363083

/-!
# A177123: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=7, k=1 and l=1.

The programs for A177123, there is no canonical definition to state claims against.
-/

/-! ## A177123.P13734940540332824538

`A298033(n)+A174103(A174100(n+2))`
-/

namespace A177123.P13734940540332824538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 n + A174103 (A174100 (n + 2)).toNat

end

end A177123.P13734940540332824538

/-!
# A177124: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=8, k=1 and l=1.

The programs for A177124, there is no canonical definition to state claims against.
-/

/-! ## A177124.P15659969621453038919

`xor(A034887(A163346(n)), A264443(n))`
-/

namespace A177124.P15659969621453038919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034887 (A163346 n).toNat) (A264443 n)

end

end A177124.P15659969621453038919

/-!
# A177125: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=9, k=1 and l=1.

The programs for A177125, there is no canonical definition to state claims against.
-/

/-! ## A177125.P16808394385087374135

`or(A042211(n), A134162(A339843(n)))`
-/

namespace A177125.P16808394385087374135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A042211 n) (A134162 (A339843 n).toNat)

end

end A177125.P16808394385087374135

/-!
# A177126: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=10, k=1 and l=1.

The programs for A177126, there is no canonical definition to state claims against.
-/

/-! ## A177126.P16339706429927307593

`A034887(A279475(n)*A326175(2*n+5))`
-/

namespace A177126.P16339706429927307593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A279475 n * A326175 (2 * n + 5)).toNat

end

end A177126.P16339706429927307593

/-!
# A177127: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=6, k=0 and l=1.

The programs for A177127, there is no canonical definition to state claims against.
-/

/-! ## A177127.P4619928201973184065

`A107821(A006502(n)+n)`
-/

namespace A177127.P4619928201973184065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (A006502 n + (n : ℤ)).toNat

end

end A177127.P4619928201973184065

/-!
# A177128: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=7, k=0 and l=1.

The programs for A177128, there is no canonical definition to state claims against.
-/

/-! ## A177128.P17357846920668671812

`∑[∑[A378382(A181883(n+1))]]`
-/

namespace A177128.P17357846920668671812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378382 (A181883 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177128.P17357846920668671812

/-!
# A177129: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=8, k=0 and l=1.

The programs for A177129, there is no canonical definition to state claims against.
-/

/-! ## A177129.P6431785482124111141

`∑[record[A089560(A327251(n+1))]]`
-/

namespace A177129.P6431785482124111141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089560 (A327251 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177129.P6431785482124111141

/-!
# A177130: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=9, k=0 and l=1.

The programs for A177130, there is no canonical definition to state claims against.
-/

/-! ## A177130.P5379750791392017866

`A305052(A053572(n))+A177179(n)`
-/

namespace A177130.P5379750791392017866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A053572 n).toNat + A177179 n

end

end A177130.P5379750791392017866

/-!
# A177131: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=10, k=0 and l=1.

The programs for A177131, there is no canonical definition to state claims against.
-/

/-! ## A177131.P3256836585370593452

`A305052(A053572(n))+A177180(n)`
-/

namespace A177131.P3256836585370593452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305052 (A053572 n).toNat + A177180 n

end

end A177131.P3256836585370593452

/-!
# A177132: Primes of the form 6*10^k+1.

The programs for A177132, there is no canonical definition to state claims against.
-/

/-! ## A177132.P17463922943335376113

`A199686(A056805(n+1))`
-/

namespace A177132.P17463922943335376113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199686 (A056805 (n + 1)).toNat

end

end A177132.P17463922943335376113

/-!
# A177133: G.f. satisfies: A(A(x)) = Sum_{n>=1} A(x)^(n^2)/x^(n^2-n).

The programs for A177133, there is no canonical definition to state claims against.
-/

/-! ## A177133.P469757544742788441

`A292927(n+1)+A134022(A292928(n+1))`
-/

namespace A177133.P469757544742788441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292927 (n + 1) + A134022 (A292928 (n + 1)).toNat

end

end A177133.P469757544742788441

/-!
# A177134: Primes of the form 2*10^k + 3.

The programs for A177134, there is no canonical definition to state claims against.
-/

/-! ## A177134.P7749690872972905669

`A173041(A081677(n+1))`
-/

namespace A177134.P7749690872972905669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173041 (A081677 (n + 1)).toNat

end

end A177134.P7749690872972905669

/-! ## A177134.P3047496383834973431

`∩[A062341(n+1), A259541(n+1)]`
-/

namespace A177134.P3047496383834973431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177134.P3047496383834973431

/-!
# A177138: Numbers of the form (k!*(k+1))/2 with k or (k+1) prime.

The programs for A177138, there is no canonical definition to state claims against.
-/

/-! ## A177138.P5571049767708909557

`A093515(n+1)!/2`
-/

namespace A177138.P5571049767708909557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A093515 (n + 1)).toNat : ℚ) / 2

end

end A177138.P5571049767708909557

/-! ## A177138.P13796082992897345449

`A001710(A093515(n+1))`
-/

namespace A177138.P13796082992897345449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (A093515 (n + 1)).toNat

end

end A177138.P13796082992897345449

/-! ## A177138.P6049706290890637765

`A123316(A147846(n+1))`
-/

namespace A177138.P6049706290890637765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123316 (A147846 (n + 1)).toNat

end

end A177138.P6049706290890637765

/-! ## A177138.P10886587299532770423

`A092580(A147846(n+1)+1)`
-/

namespace A177138.P10886587299532770423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092580 (A147846 (n + 1) + 1).toNat

end

end A177138.P10886587299532770423

/-! ## A177138.P3384820410496166892

`A267849(A147846(n+1)-1)`
-/

namespace A177138.P3384820410496166892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267849 (A147846 (n + 1) - 1).toNat

end

end A177138.P3384820410496166892

/-!
# A177139: Numbers k such that (3*k-4, 3*k-2) is a twin prime pair.

The programs for A177139, the canonical program `A177139.P7505367858712148291` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177139 has offset 1).

The definition of A177139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167379, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A177139.P7505367858712148291

`1+A167379(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A177139

/-- `1+A167379(n+1)` -/
def P7505367858712148291.Spec : Prop :=
  ∀ n, P7505367858712148291.a n = A177139 (n + 1)

theorem P7505367858712148291.correct : P7505367858712148291.Spec := by
  intro n
  simp only [A177139, Nat.add_sub_cancel]

end A177139

/-! ## A177139.P3296757300734443661

`(A001359(n+2)+4)/3`
-/

namespace A177139.P3296757300734443661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) + 4 : ℚ) / 3

end

end A177139.P3296757300734443661

namespace A177139

/-- `(A001359(n+2)+4)/3` -/
def P3296757300734443661.Spec : Prop :=
  ∀ n, P3296757300734443661.a n = (A177139 (n + 1) : ℚ)

end A177139

/-! ## A177139.P3746524851665964097

`1+A014574(n+2)/3`
-/

namespace A177139.P3746524851665964097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (A014574 (n + 2) : ℚ) / 3

end

end A177139.P3746524851665964097

namespace A177139

/-- `1+A014574(n+2)/3` -/
def P3746524851665964097.Spec : Prop :=
  ∀ n, P3746524851665964097.a n = (A177139 (n + 1) : ℚ)

end A177139

/-! ## A177139.P8090298312228441738

`2*A002822(n+1)+1`
-/

namespace A177139.P8090298312228441738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002822 (n + 1) + 1

end

end A177139.P8090298312228441738

namespace A177139

/-- `2*A002822(n+1)+1` -/
def P8090298312228441738.Spec : Prop :=
  ∀ n, P8090298312228441738.a n = A177139 (n + 1)

theorem P8090298312228441738.correct : P8090298312228441738.Spec := by
  intro n
  simp only [A177139, Nat.add_sub_cancel, A177139.P8090298312228441738.a, A177139.P7505367858712148291.a, A002822, A002822.P1649574763564528316.a, A167379, A167379.P16470544176518882026.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A177139

/-! ## A177139.P4507840608449664613

`(A172057(n+1)+2)/3`
-/

namespace A177139.P4507840608449664613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172057 (n + 1) + 2 : ℚ) / 3

end

end A177139.P4507840608449664613

namespace A177139

/-- `(A172057(n+1)+2)/3` -/
def P4507840608449664613.Spec : Prop :=
  ∀ n, P4507840608449664613.a n = (A177139 (n + 1) : ℚ)

end A177139

/-! ## A177139.P15598119936118082605

`A242757(n+1)/3+n+3`
-/

namespace A177139.P15598119936118082605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242757 (n + 1) : ℚ) / 3 + (n + 3 : ℚ)

end

end A177139.P15598119936118082605

namespace A177139

/-- `A242757(n+1)/3+n+3` -/
def P15598119936118082605.Spec : Prop :=
  ∀ n, P15598119936118082605.a n = (A177139 (n + 1) : ℚ)

end A177139

/-! ## A177139.P5068902962694883071

`a(n-1)+2*A160273(n)` with `a(0)=3`
-/

namespace A177139.P5068902962694883071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * A160273 n

end

end A177139.P5068902962694883071

namespace A177139

/-- `a(n-1)+2*A160273(n)` -/
def P5068902962694883071.Spec : Prop :=
  ∀ n, P5068902962694883071.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P18336977032809595550

`ceil(A006512(n+2)/3)`
-/

namespace A177139.P18336977032809595550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006512 (n + 2) : ℚ) / 3⌉

end

end A177139.P18336977032809595550

namespace A177139

/-- `ceil(A006512(n+2)/3)` -/
def P18336977032809595550.Spec : Prop :=
  ∀ n, P18336977032809595550.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P477788737247519444

`A006512(n+2)-(A040040(n+2)+A002822(n+1))`
-/

namespace A177139.P477788737247519444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 2) - (A040040 (n + 2) + A002822 (n + 1))

end

end A177139.P477788737247519444

namespace A177139

/-- `A006512(n+2)-(A040040(n+2)+A002822(n+1))` -/
def P477788737247519444.Spec : Prop :=
  ∀ n, P477788737247519444.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P14738351908393710054

`A001359(n+2)-(A243811(n+2)+A002822(n+1))`
-/

namespace A177139.P14738351908393710054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - (A243811 (n + 2) + A002822 (n + 1))

end

end A177139.P14738351908393710054

namespace A177139

/-- `A001359(n+2)-(A243811(n+2)+A002822(n+1))` -/
def P14738351908393710054.Spec : Prop :=
  ∀ n, P14738351908393710054.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P5050272512622922729

`(A067829(n+3)+2)/3`
-/

namespace A177139.P5050272512622922729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067829 (n + 3) + 2 : ℚ) / 3

end

end A177139.P5050272512622922729

namespace A177139

/-- `(A067829(n+3)+2)/3` -/
def P5050272512622922729.Spec : Prop :=
  ∀ n, P5050272512622922729.a n = (A177139 (n + 1) : ℚ)

end A177139

/-! ## A177139.P4042960199838601039

`∩[A153183(n+1), A228121(n+1)]`
-/

namespace A177139.P4042960199838601039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177139.P4042960199838601039

namespace A177139

/-- `∩[A153183(n+1), A228121(n+1)]` -/
def P4042960199838601039.Spec : Prop :=
  ∀ n, (P4042960199838601039.a n : ℤ) = A177139 (n + 1)

end A177139

/-! ## A177139.P6523996754968814782

`∩[A024892(n+1), A087370(n+1)]+1`
-/

namespace A177139.P6523996754968814782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A177139.P6523996754968814782

namespace A177139

/-- `∩[A024892(n+1), A087370(n+1)]+1` -/
def P6523996754968814782.Spec : Prop :=
  ∀ n, (P6523996754968814782.a n : ℤ) = A177139 (n + 1)

end A177139

/-! ## A177139.P11218918454447951680

`∩[A024893(n+1)+2, A153183(n+1)]`
-/

namespace A177139.P11218918454447951680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177139.P11218918454447951680

namespace A177139

/-- `∩[A024893(n+1)+2, A153183(n+1)]` -/
def P11218918454447951680.Spec : Prop :=
  ∀ n, (P11218918454447951680.a n : ℤ) = A177139 (n + 1)

end A177139

/-! ## A177139.P12105845827342684828

`2*A153196(n+1)+3`
-/

namespace A177139.P12105845827342684828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153196 (n + 1) + 3

end

end A177139.P12105845827342684828

namespace A177139

/-- `2*A153196(n+1)+3` -/
def P12105845827342684828.Spec : Prop :=
  ∀ n, P12105845827342684828.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P18033893289720515132

`A040040(n+2)-A153196(n+1)`
-/

namespace A177139.P18033893289720515132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 2) - A153196 (n + 1)

end

end A177139.P18033893289720515132

namespace A177139

/-- `A040040(n+2)-A153196(n+1)` -/
def P18033893289720515132.Spec : Prop :=
  ∀ n, P18033893289720515132.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P8364097723646207007

`A002822(n+1)+A153196(n+1)+2`
-/

namespace A177139.P8364097723646207007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + (A153196 (n + 1) + 2)

end

end A177139.P8364097723646207007

namespace A177139

/-- `A002822(n+1)+A153196(n+1)+2` -/
def P8364097723646207007.Spec : Prop :=
  ∀ n, P8364097723646207007.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P3410784526657525904

`(p?[A000040(n+3)+2]+2)/3`
-/

namespace A177139.P3410784526657525904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 : ℚ) / 3

end

end A177139.P3410784526657525904

namespace A177139

/-- `(p?[A000040(n+3)+2]+2)/3` -/
def P3410784526657525904.Spec : Prop :=
  ∀ n, P3410784526657525904.a n = (A177139 (n + 1) : ℚ)

end A177139

/-! ## A177139.P3807270184249170631

`A181709(A155752(n+2))`
-/

namespace A177139.P3807270184249170631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (A155752 (n + 2)).toNat

end

end A177139.P3807270184249170631

namespace A177139

/-- `A181709(A155752(n+2))` -/
def P3807270184249170631.Spec : Prop :=
  ∀ n, P3807270184249170631.a n = A177139 (n + 1)

end A177139

/-! ## A177139.P13772365197733665992

`∩[A024893(n+2)+2, A181709(n+2)]`
-/

namespace A177139.P13772365197733665992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177139.P13772365197733665992

namespace A177139

/-- `∩[A024893(n+2)+2, A181709(n+2)]` -/
def P13772365197733665992.Spec : Prop :=
  ∀ n, (P13772365197733665992.a n : ℤ) = A177139 (n + 1)

end A177139

/-!
# A177140: Expansion of (1 + 4*x - x^2 - 2*x^3)/(1 - 3*x - 14*x^2 + 15*x^3 + 7*x^4).

The programs for A177140, the canonical program `A177140.P3924643643629997664` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177140 has offset 1).

The definition of A177140 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-x^2-2x^3)/(1-3x-14x^2+15x^3+7x^4))` (program `A177140.P3924643643629997664`, by `A177140.P3924643643629997664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177140.P3924643643629997664

`ogf((1+4x-x^2-2x^3)/(1-3x-14x^2+15x^3+7x^4))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177140

/-- `ogf((1+4x-x^2-2x^3)/(1-3x-14x^2+15x^3+7x^4))` -/
def P3924643643629997664.Spec : Prop :=
  ∀ n, P3924643643629997664.a n = A177140 (n + 1)

theorem P3924643643629997664.correct : P3924643643629997664.Spec := by
  intro n
  simp only [A177140, Nat.add_sub_cancel]

end A177140

/-!
# A177141: Primes of the form (6*10^k-7).

The programs for A177141, there is no canonical definition to state claims against.
-/

/-! ## A177141.P10963607952072355135

`6*10^A103025(n+1)-7`
-/

namespace A177141.P10963607952072355135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (10 : ℚ) ^ (A103025 (n + 1) : ℤ) - 7

end

end A177141.P10963607952072355135

/-! ## A177141.P6460890377074959435

`A086577(A103025(n+1))-1`
-/

namespace A177141.P6460890377074959435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086577 (A103025 (n + 1)).toNat - 1

end

end A177141.P6460890377074959435

/-!
# A177142: Expansion of x*(1+x)*(1+5*x-8*x^2)/(1-5*x-30*x^2+69*x^3+31*x^4-22*x^5).

The programs for A177142, the canonical program `A177142.P1128985545463116770` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177142 has offset 1).

The definition of A177142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x-3x^2-8x^3)/(1-5x-30x^2+69x^3+31x^4-22x^5))` (program `A177142.P1128985545463116770`, by `A177142.P1128985545463116770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177142.P1128985545463116770

`ogf((1+6x-3x^2-8x^3)/(1-5x-30x^2+69x^3+31x^4-22x^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177142

/-- `ogf((1+6x-3x^2-8x^3)/(1-5x-30x^2+69x^3+31x^4-22x^5))` -/
def P1128985545463116770.Spec : Prop :=
  ∀ n, P1128985545463116770.a n = A177142 (n + 1)

theorem P1128985545463116770.correct : P1128985545463116770.Spec := by
  intro n
  simp only [A177142, Nat.add_sub_cancel]

end A177142

/-!
# A177143: Pasquale's sequence: a(n) = 2a(n-1) + (-1)^n*floor(n/2), with a(1)=1.

The programs for A177143, the canonical program `A177143.P8986223796882506093` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177143 has offset 1).

The definition of A177143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(-1)^(n+1)*floor((n+1)/2)` (program `A177143.P8986223796882506093`, by `A177143.P8986223796882506093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A177143.P8986223796882506093

`2*a(n-1)+(-1)^(n+1)*floor((n+1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177143

/-- `2*a(n-1)+(-1)^(n+1)*floor((n+1)/2)` -/
def P8986223796882506093.Spec : Prop :=
  ∀ n, P8986223796882506093.a n = A177143 (n + 1)

theorem P8986223796882506093.correct : P8986223796882506093.Spec := by
  intro n
  simp only [A177143, Nat.add_sub_cancel]

end A177143

/-! ## A177143.P4440086126486396912

`a(n-1)+3*a(n-2)-a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=12`
-/

namespace A177143.P4440086126486396912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 12] fun n a =>
  a (n - 1) + 3 * a (n - 2) - a (n - 3) - 2 * a (n - 4)

end

end A177143.P4440086126486396912

namespace A177143

/-- `a(n-1)+3*a(n-2)-a(n-3)-2*a(n-4)` -/
def P4440086126486396912.Spec : Prop :=
  ∀ n, P4440086126486396912.a n = A177143 (n + 1)

end A177143

/-! ## A177143.P17987232408208044697

`13*2^(n+1)/18-1/4+(-1)^(n+1)*((n+1)/6+1/36)`
-/

namespace A177143.P17987232408208044697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * 2 ^ (n + 1) : ℚ) / 18 - (1 : ℚ) / 4 + ((-1) ^ (n + 1) : ℚ) * ((n + 1 : ℚ) / 6 + (1 : ℚ) / 36)

end

end A177143.P17987232408208044697

namespace A177143

/-- `13*2^(n+1)/18-1/4+(-1)^(n+1)*((n+1)/6+1/36)` -/
def P17987232408208044697.Spec : Prop :=
  ∀ n, P17987232408208044697.a n = (A177143 (n + 1) : ℚ)

end A177143

/-! ## A177143.P8357525081392180252

`ogf((1+2x-x^2-x^3)/(1-x-3x^2+x^3+2x^4))`
-/

namespace A177143.P8357525081392180252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1, -1] [1, -1, -3, 1, 2] n

end

end A177143.P8357525081392180252

namespace A177143

/-- `ogf((1+2x-x^2-x^3)/(1-x-3x^2+x^3+2x^4))` -/
def P8357525081392180252.Spec : Prop :=
  ∀ n, P8357525081392180252.a n = A177143 (n + 1)

end A177143

/-! ## A177143.P7603760178573720054

`Δ[2*a(n-1)+n-lcm(2, n)/2]` with `a(0)=1`
-/

namespace A177143.P7603760178573720054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177143.P7603760178573720054

namespace A177143

/-- `Δ[2*a(n-1)+n-lcm(2, n)/2]` -/
def P7603760178573720054.Spec : Prop :=
  ∀ n, P7603760178573720054.a n = (A177143 (n + 1) : ℚ)

end A177143

/-!
# A177144: A156790(n+1)-4*A156790(n).

The programs for A177144, there is no canonical definition to state claims against.
-/

/-! ## A177144.P3737977479253942299

`A156790(n+1)-4*A156790(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177144.P3737977479253942299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156790 (n + 1) - 4 * A156790 n

end

end A177144.P3737977479253942299

/-! ## A177144.P4336046080729104825

`∑[A140255(∏[A163493(n)])]`
-/

namespace A177144.P4336046080729104825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163493 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140255 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177144.P4336046080729104825

/-! ## A177144.P6835963820425148075

`A000072(A088472(n+3))-3`
-/

namespace A177144.P6835963820425148075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000072 (A088472 (n + 3)).toNat - 3

end

end A177144.P6835963820425148075

/-!
# A177145: Expansion of e.g.f. arcsin(x).

The programs for A177145, the canonical program `A177145.P162864969578580387` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177145 has offset 0).

The definition of A177145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177145.P162864969578580387

`(n-2)²*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177145

/-- `(n-2)²*a(n-2)` -/
def P162864969578580387.Spec : Prop :=
  ∀ n, P162864969578580387.a n = A177145 n

theorem P162864969578580387.correct : P162864969578580387.Spec := by
  intro n
  simp only [A177145]

end A177145

/-! ## A177145.P5586533725657146833

`(2-n)*(2-n)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A177145.P5586533725657146833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 - (n : ℤ)) * ((2 - (n : ℤ)) * a (n - 2))

end

end A177145.P5586533725657146833

namespace A177145

/-- `(2-n)*(2-n)*a(n-2)` -/
def P5586533725657146833.Spec : Prop :=
  ∀ n, P5586533725657146833.a n = A177145 n

theorem P5586533725657146833.correct : P5586533725657146833.Spec := by
  intro n
  simp only [A177145, Nat.add_sub_cancel, A177145.P5586533725657146833.a, A177145.P162864969578580387.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A177145

/-! ## A177145.P4036495258137918510

`A393311(∑[n])`
-/

namespace A177145.P4036495258137918510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393311 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177145.P4036495258137918510

namespace A177145

/-- `A393311(∑[n])` -/
def P4036495258137918510.Spec : Prop :=
  ∀ n, P4036495258137918510.a n = A177145 n

end A177145

/-! ## A177145.P1025797627320641039

`A123023(abs(1-n))²`
-/

namespace A177145.P1025797627320641039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 |1 - (n : ℤ)|.toNat ^ 2

end

end A177145.P1025797627320641039

namespace A177145

/-- `A123023(abs(1-n))²` -/
def P1025797627320641039.Spec : Prop :=
  ∀ n, P1025797627320641039.a n = A177145 n

end A177145

/-! ## A177145.P4238649950549887284

`A060338(A175631(n+2))`
-/

namespace A177145.P4238649950549887284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060338 (A175631 (n + 2)).toNat

end

end A177145.P4238649950549887284

namespace A177145

/-- `A060338(A175631(n+2))` -/
def P4238649950549887284.Spec : Prop :=
  ∀ n, P4238649950549887284.a n = A177145 n

end A177145

/-! ## A177145.P14957654350063498371

`A177698(n)/A184877(n)*A177698(n)`
-/

namespace A177145.P14957654350063498371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177698 n : ℚ) / (A184877 n : ℚ) * (A177698 n : ℚ)

end

end A177145.P14957654350063498371

namespace A177145

/-- `A177698(n)/A184877(n)*A177698(n)` -/
def P14957654350063498371.Spec : Prop :=
  ∀ n, P14957654350063498371.a n = (A177145 n : ℚ)

end A177145

/-!
# A177146: n-th derivative of arctan(x) at x = 1, n >= 4.

The programs for A177146, there is no canonical definition to state claims against.
-/

/-! ## A177146.P9153254821455835288

`A217260(n+4)/2`
-/

namespace A177146.P9153254821455835288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217260 (n + 4) : ℚ) / 2

end

end A177146.P9153254821455835288

/-! ## A177146.P15795373058903824980

`2^A309873(A016825(n))*A217260(n+4)`
-/

namespace A177146.P15795373058903824980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A309873 (A016825 n).toNat : ℤ) * (A217260 (n + 4) : ℚ)

end

end A177146.P15795373058903824980

/-! ## A177146.P10519934317633498919

`-(A009775(n+3)/2)`
-/

namespace A177146.P10519934317633498919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A009775 (n + 3) : ℚ) / 2)

end

end A177146.P10519934317633498919

/-! ## A177146.P15295998465598617886

`(2*A276550(n+1))%2-A009775(n+3)/2`
-/

namespace A177146.P15295998465598617886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (2 * A276550 (n + 1)) 2 : ℚ) - (A009775 (n + 3) : ℚ) / 2

end

end A177146.P15295998465598617886

/-! ## A177146.P2043758112040463699

`A091396(2*(n+1)+n+1)-A009775(n+3)/2`
-/

namespace A177146.P2043758112040463699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091396 (2 * (n + 1) + n + 1) : ℚ) - (A009775 (n + 3) : ℚ) / 2

end

end A177146.P2043758112040463699

/-!
# A177149: Indices n such that the sums of the squares of the digits of prime(n) are prime.

The programs for A177149, the canonical program `A177149.P5149190234469406226` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177149 has offset 1).

The definition of A177149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177149.P8144833059286102892

`A000720(A052034(n+1))`
-/

namespace A177149.P8144833059286102892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A052034 (n + 1)).toNat

end

end A177149.P8144833059286102892

namespace A177149

/-- `A000720(A052034(n+1))` -/
def P8144833059286102892.Spec : Prop :=
  ∀ n, P8144833059286102892.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P5149190234469406226

`A061395(p?[A052034(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A177149

/-- `A061395(p?[A052034(n+1)])` -/
def P5149190234469406226.Spec : Prop :=
  ∀ n, P5149190234469406226.a n = A177149 (n + 1)

theorem P5149190234469406226.correct : P5149190234469406226.Spec := by
  intro n
  simp only [A177149, Nat.add_sub_cancel]

end A177149

/-! ## A177149.P2659882020387060096

`A061395(or(1, A052034(n+1)))`
-/

namespace A177149.P2659882020387060096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A052034 (n + 1))).toNat

end

end A177149.P2659882020387060096

namespace A177149

/-- `A061395(or(1, A052034(n+1)))` -/
def P2659882020387060096.Spec : Prop :=
  ∀ n, P2659882020387060096.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P11098831230166580084

`A066328(p?[A052034(n+1)])`
-/

namespace A177149.P11098831230166580084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P11098831230166580084

namespace A177149

/-- `A066328(p?[A052034(n+1)])` -/
def P11098831230166580084.Spec : Prop :=
  ∀ n, P11098831230166580084.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P14598731574198637935

`A066328(2*A052034(n+1)-A052034(n+1))`
-/

namespace A177149.P14598731574198637935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A052034 (n + 1) - A052034 (n + 1)).toNat

end

end A177149.P14598731574198637935

namespace A177149

/-- `A066328(2*A052034(n+1)-A052034(n+1))` -/
def P14598731574198637935.Spec : Prop :=
  ∀ n, P14598731574198637935.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P10871140403499993808

`A000720(p?[A108662(n+1)])`
-/

namespace A177149.P10871140403499993808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P10871140403499993808

namespace A177149

/-- `A000720(p?[A108662(n+1)])` -/
def P10871140403499993808.Spec : Prop :=
  ∀ n, P10871140403499993808.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P17059225812710591883

`A061395(p?[A108662(n+1)])`
-/

namespace A177149.P17059225812710591883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P17059225812710591883

namespace A177149

/-- `A061395(p?[A108662(n+1)])` -/
def P17059225812710591883.Spec : Prop :=
  ∀ n, P17059225812710591883.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P3901838497137216974

`A061395(2*A052034(n+1))`
-/

namespace A177149.P3901838497137216974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A052034 (n + 1)).toNat

end

end A177149.P3901838497137216974

namespace A177149

/-- `A061395(2*A052034(n+1))` -/
def P3901838497137216974.Spec : Prop :=
  ∀ n, P3901838497137216974.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P12992616578441900305

`A316431(2*A052034(n+1))`
-/

namespace A177149.P12992616578441900305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A052034 (n + 1)).toNat

end

end A177149.P12992616578441900305

namespace A177149

/-- `A316431(2*A052034(n+1))` -/
def P12992616578441900305.Spec : Prop :=
  ∀ n, P12992616578441900305.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P12036049996100245312

`A066328(2*A052034(n+1))-1`
-/

namespace A177149.P12036049996100245312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (2 * A052034 (n + 1)).toNat - 1

end

end A177149.P12036049996100245312

namespace A177149

/-- `A066328(2*A052034(n+1))-1` -/
def P12036049996100245312.Spec : Prop :=
  ∀ n, P12036049996100245312.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P10028532634560302822

`A344616(p?[A108662(n+1)])`
-/

namespace A177149.P10028532634560302822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P10028532634560302822

namespace A177149

/-- `A344616(p?[A108662(n+1)])` -/
def P10028532634560302822.Spec : Prop :=
  ∀ n, P10028532634560302822.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P4751447851839024414

`A055396(p?[A052034(n+1)])`
-/

namespace A177149.P4751447851839024414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P4751447851839024414

namespace A177149

/-- `A055396(p?[A052034(n+1)])` -/
def P4751447851839024414.Spec : Prop :=
  ∀ n, P4751447851839024414.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P10830044088866603348

`A055396(p?[A108662(n+1)])`
-/

namespace A177149.P10830044088866603348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P10830044088866603348

namespace A177149

/-- `A055396(p?[A108662(n+1)])` -/
def P10830044088866603348.Spec : Prop :=
  ∀ n, P10830044088866603348.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P13902777638368220001

`A241917(p?[A052034(n+1)])`
-/

namespace A177149.P13902777638368220001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A177149.P13902777638368220001

namespace A177149

/-- `A241917(p?[A052034(n+1)])` -/
def P13902777638368220001.Spec : Prop :=
  ∀ n, P13902777638368220001.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P4486306253039624918

`A055396(or(1, A052034(n+1)))`
-/

namespace A177149.P4486306253039624918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (Int.lor 1 (A052034 (n + 1))).toNat

end

end A177149.P4486306253039624918

namespace A177149

/-- `A055396(or(1, A052034(n+1)))` -/
def P4486306253039624918.Spec : Prop :=
  ∀ n, P4486306253039624918.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P4602551057174603456

`A056239(or(1, A052034(n+1)))`
-/

namespace A177149.P4602551057174603456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A052034 (n + 1))).toNat

end

end A177149.P4602551057174603456

namespace A177149

/-- `A056239(or(1, A052034(n+1)))` -/
def P4602551057174603456.Spec : Prop :=
  ∀ n, P4602551057174603456.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P6799270183359061972

`∑{d}[A052034(n+1), A056239(#)]`
-/

namespace A177149.P6799270183359061972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A177149.P6799270183359061972

namespace A177149

/-- `∑{d}[A052034(n+1), A056239(#)]` -/
def P6799270183359061972.Spec : Prop :=
  ∀ n, P6799270183359061972.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P10466768949152369487

`eq[1, A001222(A003132(A000040(n+1)))]+1`
-/

namespace A177149.P10466768949152369487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003132 (A000040 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177149.P10466768949152369487

namespace A177149

/-- `eq[1, A001222(A003132(A000040(n+1)))]+1` -/
def P10466768949152369487.Spec : Prop :=
  ∀ n, (P10466768949152369487.a n : ℤ) = A177149 (n + 1)

end A177149

/-! ## A177149.P5981180605110301314

`A241917(2*A052034(n+1)-A052034(n+1))`
-/

namespace A177149.P5981180605110301314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (2 * A052034 (n + 1) - A052034 (n + 1)).toNat

end

end A177149.P5981180605110301314

namespace A177149

/-- `A241917(2*A052034(n+1)-A052034(n+1))` -/
def P5981180605110301314.Spec : Prop :=
  ∀ n, P5981180605110301314.a n = A177149 (n + 1)

end A177149

/-! ## A177149.P7139744889407927129

`A241917(2*A052034(n+1))+1`
-/

namespace A177149.P7139744889407927129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (2 * A052034 (n + 1)).toNat + 1

end

end A177149.P7139744889407927129

namespace A177149

/-- `A241917(2*A052034(n+1))+1` -/
def P7139744889407927129.Spec : Prop :=
  ∀ n, P7139744889407927129.a n = A177149 (n + 1)

end A177149

/-!
# A177150: Numbers k such that k^2 + prime(k)^2 is a prime.

The programs for A177150, there is no canonical definition to state claims against.
-/

/-! ## A177150.P2984882256865066730

`eq[1, A001221(A106587(n+1))]+1`
-/

namespace A177150.P2984882256865066730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106587 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177150.P2984882256865066730

/-! ## A177150.P11032366266552008623

`eq[1, A001221(A000040(n+1)²+(n+1)²)]+1`
-/

namespace A177150.P11032366266552008623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1) ^ 2 + ((n + 1) ^ 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A177150.P11032366266552008623

/-! ## A177150.P11756781140823294016

`lt[A001221((n+1)²+A000040(n+1)²), 2]+1`
-/

namespace A177150.P11756781140823294016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (((n + 1) ^ 2 : ℤ) + A000040 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A177150.P11756781140823294016

/-! ## A177150.P5081144102213525198

`lt[A000005((n+1)²+A000040(n+1)²), 3]+1`
-/

namespace A177150.P5081144102213525198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((n + 1) ^ 2 : ℤ) + A000040 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A177150.P5081144102213525198

/-!
# A177151: a(n) = least k such that 1 + 1/4 + 1/9 + ... + 1/k^2 exceeds (Pi^2)*(n-1)/(6*n).

The programs for A177151, there is no canonical definition to state claims against.
-/

/-! ## A177151.P12855703142178717436

`round(31*(n+1)/51)`
-/

namespace A177151.P12855703142178717436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (31 * ((n + 1 : ℚ) / 51))

end

end A177151.P12855703142178717436

/-! ## A177151.P14592444504131092874

`∑[abs(Δ[A256502(n+15)])]`
-/

namespace A177151.P14592444504131092874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 15)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177151.P14592444504131092874

/-! ## A177151.P1346108423200836739

`floor(A256502(2*n+3)/2)`
-/

namespace A177151.P1346108423200836739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256502 (2 * n + 3) : ℚ) / 2⌋

end

end A177151.P1346108423200836739

/-! ## A177151.P12234892857831188184

`ceil(A327139(6*n+2)/31)`
-/

namespace A177151.P12234892857831188184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327139 (6 * n + 2) : ℚ) / 31⌉

end

end A177151.P12234892857831188184

/-! ## A177151.P14161247355385339143

`∑[char[∏{p}[n, #]-1]]-A158819(n+1)`
-/

namespace A177151.P14161247355385339143
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A158819 (n + 1)

end

end A177151.P14161247355385339143

/-! ## A177151.P6037839679056802868

`floor(sqrt((∑[A292640(n+1)]+n)/2+1))`
-/

namespace A177151.P6037839679056802868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2 + 1 : ℝ)⌋

end

end A177151.P6037839679056802868

/-! ## A177151.P14777725200512248915

`A391618(A008087(n+1))`
-/

namespace A177151.P14777725200512248915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A008087 (n + 1)).toNat

end

end A177151.P14777725200512248915

/-!
# A177152: Positions in A177151 of runs of length 1.

The programs for A177152, there is no canonical definition to state claims against.
-/

/-! ## A177152.P5184487445413365738

`A315655(n)-n%A084798(n)`
-/

namespace A177152.P5184487445413365738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315655 n - Int.tmod (n : ℤ) (A084798 n)

end

end A177152.P5184487445413365738

/-! ## A177152.P12302109398834414704

`A315655(n)-A065033(2*n)%A097002(n+1)`
-/

namespace A177152.P12302109398834414704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315655 n - Int.tmod (A065033 (2 * n)) (A097002 (n + 1))

end

end A177152.P12302109398834414704

/-! ## A177152.P7790147226132386038

`A315655(n)%A201836(4*n+3)-n`
-/

namespace A177152.P7790147226132386038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315655 n) (A201836 (4 * n + 3)) - (n : ℤ)

end

end A177152.P7790147226132386038

/-! ## A177152.P11352829336698374094

`A315655(n)-A246211(A246211(n))`
-/

namespace A177152.P11352829336698374094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315655 n - A246211 (A246211 n).toNat

end

end A177152.P11352829336698374094

/-! ## A177152.P11181989396977398745

`A315655(n)-A296062(A325944(n))`
-/

namespace A177152.P11181989396977398745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315655 n - A296062 (A325944 n).toNat

end

end A177152.P11181989396977398745

/-!
# A177154: Fractional part of the conversion from degrees Celsius to Fahrenheit.

The programs for A177154, the canonical program `A177154.P1181650162831006829` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177154 has offset 0).

The definition of A177154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177154.P1181650162831006829

`(8*n)%10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177154

/-- `(8*n)%10` -/
def P1181650162831006829.Spec : Prop :=
  ∀ n, (P1181650162831006829.a n : ℤ) = A177154 n

theorem P1181650162831006829.correct : P1181650162831006829.Spec := by
  intro n
  simp only [A177154]

end A177154

/-!
# A177155: G.f.: exp( Integral (theta_3(x)^8-1)/(16x) dx ), where theta_3(x) = 1 + Sum_{n>=1} 2*x^(n^2) is a Jacobi theta function.

The programs for A177155, there is no canonical definition to state claims against.
-/

/-! ## A177155.P18139167952131690335

`A030362(A378497(n+1))`
-/

namespace A177155.P18139167952131690335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030362 (A378497 (n + 1)).toNat

end

end A177155.P18139167952131690335

/-! ## A177155.P1328122893641170425

`A243283(A077821(n)-n)`
-/

namespace A177155.P1328122893641170425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A077821 n - (n : ℤ)).toNat

end

end A177155.P1328122893641170425

/-! ## A177155.P10270349398855085351

`A243283(A181290(n)+A002426(n))`
-/

namespace A177155.P10270349398855085351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A181290 n + A002426 n).toNat

end

end A177155.P10270349398855085351

/-!
# A177162: Sequence defined by the recurrence formula a(n+1) = sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=6, k=0 and l=-1.

The programs for A177162, there is no canonical definition to state claims against.
-/

/-! ## A177162.P8425583259896658028

`A065710(A355049(n+7)+5)`
-/

namespace A177162.P8425583259896658028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 (A355049 (n + 7) + 5).toNat

end

end A177162.P8425583259896658028

/-!
# A177163: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=7, k=0 and l=-1.

The programs for A177163, there is no canonical definition to state claims against.
-/

/-! ## A177163.P11260098302481806232

`A177198(n)+A064834(A082963(n))`
-/

namespace A177163.P11260098302481806232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177198 n + A064834 (A082963 n).toNat

end

end A177163.P11260098302481806232

/-!
# A177165: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=8, k=0 and l=-1.

The programs for A177165, there is no canonical definition to state claims against.
-/

/-! ## A177165.P6447997425296067386

`∑[A220522(A298960(n+1))]+1`
-/

namespace A177165.P6447997425296067386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (A298960 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A177165.P6447997425296067386

/-!
# A177166: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=9, k=0 and l=-1.

The programs for A177166, there is no canonical definition to state claims against.
-/

/-! ## A177166.P18399959227454375351

`A177200(n)+A064834(A082963(n))`
-/

namespace A177166.P18399959227454375351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177200 n + A064834 (A082963 n).toNat

end

end A177166.P18399959227454375351

/-!
# A177167: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=10, k=0 and l=-1.

The programs for A177167, there is no canonical definition to state claims against.
-/

/-! ## A177167.P10656653429606087741

`A177203(n)+A064834(A082963(n))`
-/

namespace A177167.P10656653429606087741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177203 n + A064834 (A082963 n).toNat

end

end A177167.P10656653429606087741

/-!
# A177168: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=6, k=0 and l=-2.

The programs for A177168, there is no canonical definition to state claims against.
-/

/-! ## A177168.P7423909023532906763

`A217990(2^n)+4*n%2`
-/

namespace A177168.P7423909023532906763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217990 (2 ^ n) + ((4 * (n % 2) : ℕ) : ℤ)

end

end A177168.P7423909023532906763

/-!
# A177169: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=7, k=0 and l=-2.

The programs for A177169, there is no canonical definition to state claims against.
-/

/-! ## A177169.P4947624517628670040

`A135542(A346580(n+1)-A025853(n+2))`
-/

namespace A177169.P4947624517628670040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135542 (A346580 (n + 1) - A025853 (n + 2)).toNat

end

end A177169.P4947624517628670040

/-!
# A177170: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=8, k=0 and l=-2.

The programs for A177170, there is no canonical definition to state claims against.
-/

/-! ## A177170.P3176537758972157535

`A177199(n)-A236256(A003180(n))`
-/

namespace A177170.P3176537758972157535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177199 n - A236256 (A003180 n).toNat

end

end A177170.P3176537758972157535

/-!
# A177171: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=9, k=0 and l=-2.

The programs for A177171, there is no canonical definition to state claims against.
-/

/-! ## A177171.P811024386306167098

`A359804(xor(A246534(n), A299260(n)))`
-/

namespace A177171.P811024386306167098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359804 (Int.xor (A246534 n) (A299260 n)).toNat

end

end A177171.P811024386306167098

/-!
# A177172: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=10, k=0 and l=-2.

The programs for A177172, there is no canonical definition to state claims against.
-/

/-! ## A177172.P9274274898691689274

`A177185(n)+A045917(A065072(n))`
-/

namespace A177172.P9274274898691689274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177185 n + A045917 (A065072 n).toNat

end

end A177172.P9274274898691689274

/-!
# A177175: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=6, k=1 and l=-1.

The programs for A177175, there is no canonical definition to state claims against.
-/

/-! ## A177175.P638707797433010804

`∑[A245325(∑[A126646(3*n)])]`
-/

namespace A177175.P638707797433010804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177175.P638707797433010804

/-!
# A177176: Partial sums of round(n^2/13).

The programs for A177176, the canonical program `A177176.P5445021248656331312` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177176 has offset 0).

The definition of A177176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177176.P5445021248656331312

`round(n*(n+1)*(2*n+1)/78)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177176

/-- `round(n*(n+1)*(2*n+1)/78)` -/
def P5445021248656331312.Spec : Prop :=
  ∀ n, P5445021248656331312.a n = A177176 n

theorem P5445021248656331312.correct : P5445021248656331312.Spec := by
  intro n
  simp only [A177176]

end A177176

/-! ## A177176.P4427010236146220532

`A118759(A175776(n+1))`
-/

namespace A177176.P4427010236146220532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A175776 (n + 1)).toNat

end

end A177176.P4427010236146220532

namespace A177176

/-- `A118759(A175776(n+1))` -/
def P4427010236146220532.Spec : Prop :=
  ∀ n, P4427010236146220532.a n = A177176 n

end A177176

/-! ## A177176.P17061371475942756472

`∑[A370461(A345170(n))]`
-/

namespace A177176.P17061371475942756472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (A345170 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177176.P17061371475942756472

namespace A177176

/-- `∑[A370461(A345170(n))]` -/
def P17061371475942756472.Spec : Prop :=
  ∀ n, P17061371475942756472.a n = A177176 n

end A177176

/-! ## A177176.P16873593300065024545

`A175776(A187829(n+1))`
-/

namespace A177176.P16873593300065024545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175776 (A187829 (n + 1)).toNat

end

end A177176.P16873593300065024545

namespace A177176

/-- `A175776(A187829(n+1))` -/
def P16873593300065024545.Spec : Prop :=
  ∀ n, P16873593300065024545.a n = A177176 n

end A177176

/-! ## A177176.P982056935621010597

`A175776(A077168(n))`
-/

namespace A177176.P982056935621010597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175776 (A077168 n).toNat

end

end A177176.P982056935621010597

namespace A177176

/-- `A175776(A077168(n))` -/
def P982056935621010597.Spec : Prop :=
  ∀ n, P982056935621010597.a n = A177176 n

end A177176

/-!
# A177177: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=7, k=1 and l=-1.

The programs for A177177, there is no canonical definition to state claims against.
-/

/-! ## A177177.P15749170109075301702

`or(record[xor(n, 2*n)+1+n], A325104(∑[2^n]))`
-/

namespace A177177.P15749170109075301702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) (A325104 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A177177.P15749170109075301702

/-!
# A177178: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=8, k=1 and l=-1.

The programs for A177178, there is no canonical definition to state claims against.
-/

/-! ## A177178.P11588938062993047728

`A182395(Δ[A292726(2*n+5)]-7)`
-/

namespace A177178.P11588938062993047728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292726 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182395 (f1 (n + 1) - f1 n - 7).toNat

end

end A177178.P11588938062993047728

/-!
# A177179: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=9, k=1 and l=-1.

The programs for A177179, there is no canonical definition to state claims against.
-/

/-! ## A177179.P10344219494400595638

`A177130(n)-A305052(A053572(n))`
-/

namespace A177179.P10344219494400595638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177130 n - A305052 (A053572 n).toNat

end

end A177179.P10344219494400595638

/-!
# A177180: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=10, k=1 and l=-1.

The programs for A177180, there is no canonical definition to state claims against.
-/

/-! ## A177180.P10916564908345789924

`A177131(n)+A064834(A082963(n))`
-/

namespace A177180.P10916564908345789924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177131 n + A064834 (A082963 n).toNat

end

end A177180.P10916564908345789924

/-!
# A177181: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=6, k=-1 and l=-1.

The programs for A177181, there is no canonical definition to state claims against.
-/

/-! ## A177181.P9821733446962392455

`A292269(A292278(n+3))+n`
-/

namespace A177181.P9821733446962392455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (A292278 (n + 3)).toNat + (n : ℤ)

end

end A177181.P9821733446962392455

/-!
# A177182: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=7, k=-1 and l=-1.

The programs for A177182, there is no canonical definition to state claims against.
-/

/-! ## A177182.P6992209778622309518

`A176672(A074784(n)+A006125(n))`
-/

namespace A177182.P6992209778622309518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 (A074784 n + A006125 n).toNat

end

end A177182.P6992209778622309518

/-!
# A177183: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=8, k=-1 and l=-1.

The programs for A177183, there is no canonical definition to state claims against.
-/

/-! ## A177183.P7395090370046419474

`A065648(∑[4^A052810(n)])`
-/

namespace A177183.P7395090370046419474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A052810 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A177183.P7395090370046419474

/-!
# A177184: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=9, k=-1 and l=-1.

The programs for A177184, there is no canonical definition to state claims against.
-/

/-! ## A177184.P9897105731244014703

`A061486(A061746(n)+n)`
-/

namespace A177184.P9897105731244014703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 (A061746 n + (n : ℤ)).toNat

end

end A177184.P9897105731244014703

/-!
# A177185: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=10, k=-1 and l=-1.

The programs for A177185, there is no canonical definition to state claims against.
-/

/-! ## A177185.P15915388269828154068

`floor(A064989(A133426(n+1))+sqrt(n))`
-/

namespace A177185.P15915388269828154068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064989 (A133426 (n + 1)).toNat : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A177185.P15915388269828154068

/-!
# A177187: Union of A057080 and A001090.

The programs for A177187, the canonical program `A177187.P7973968755874175413` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177187 has offset 1).

The definition of A177187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A177187.P7973968755874175413

`8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=9, a(3)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177187

/-- `8*a(n-2)-a(n-4)` -/
def P7973968755874175413.Spec : Prop :=
  ∀ n, P7973968755874175413.a n = A177187 (n + 1)

theorem P7973968755874175413.correct : P7973968755874175413.Spec := by
  intro n
  simp only [A177187, Nat.add_sub_cancel]

end A177187

/-! ## A177187.P3673780169964684641

`Δ[A105045(n+1)]`
-/

namespace A177187.P3673780169964684641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177187.P3673780169964684641

namespace A177187

/-- `Δ[A105045(n+1)]` -/
def P3673780169964684641.Spec : Prop :=
  ∀ n, P3673780169964684641.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P13332796455466816627

`Δ[A105076(n+1)]`
-/

namespace A177187.P13332796455466816627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177187.P13332796455466816627

namespace A177187

/-- `Δ[A105076(n+1)]` -/
def P13332796455466816627.Spec : Prop :=
  ∀ n, P13332796455466816627.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P15875261038387521897

`A077247(n)-a(n-1)` with `a(0)=1`
-/

namespace A177187.P15875261038387521897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077247 n - a (n - 1)

end

end A177187.P15875261038387521897

namespace A177187

/-- `A077247(n)-a(n-1)` -/
def P15875261038387521897.Spec : Prop :=
  ∀ n, P15875261038387521897.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P810035348214793222

`∑[A077248(n)-A199336(n+1)]`
-/

namespace A177187.P810035348214793222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077248 n - A199336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177187.P810035348214793222

namespace A177187

/-- `∑[A077248(n)-A199336(n+1)]` -/
def P810035348214793222.Spec : Prop :=
  ∀ n, P810035348214793222.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P16476935238225913896

`A103200(n+1)-A105076(n+1)`
-/

namespace A177187.P16476935238225913896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1) - A105076 (n + 1)

end

end A177187.P16476935238225913896

namespace A177187

/-- `A103200(n+1)-A105076(n+1)` -/
def P16476935238225913896.Spec : Prop :=
  ∀ n, P16476935238225913896.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P16028631546704155092

`A105045(n+2)-A105045(n+1)`
-/

namespace A177187.P16028631546704155092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 (n + 2) - A105045 (n + 1)

end

end A177187.P16028631546704155092

namespace A177187

/-- `A105045(n+2)-A105045(n+1)` -/
def P16028631546704155092.Spec : Prop :=
  ∀ n, P16028631546704155092.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P9910156566011194260

`A105076(n+2)-A105076(n+1)`
-/

namespace A177187.P9910156566011194260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105076 (n + 2) - A105076 (n + 1)

end

end A177187.P9910156566011194260

namespace A177187

/-- `A105076(n+2)-A105076(n+1)` -/
def P9910156566011194260.Spec : Prop :=
  ∀ n, P9910156566011194260.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P5579242088176449056

`A103200(n+1)+A000007(n)-A103200(A028310(n))`
-/

namespace A177187.P5579242088176449056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1) + (A000007 n - A103200 (A028310 n).toNat)

end

end A177187.P5579242088176449056

namespace A177187

/-- `A103200(n+1)+A000007(n)-A103200(A028310(n))` -/
def P5579242088176449056.Spec : Prop :=
  ∀ n, P5579242088176449056.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P15130668836421486504

`A103200(n+1)-A057427(n)*A103200(A028310(n))`
-/

namespace A177187.P15130668836421486504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (n + 1) - A057427 n * A103200 (A028310 n).toNat

end

end A177187.P15130668836421486504

namespace A177187

/-- `A103200(n+1)-A057427(n)*A103200(A028310(n))` -/
def P15130668836421486504.Spec : Prop :=
  ∀ n, P15130668836421486504.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P13679742793298500997

`Δ[A199336(n+1)/2]`
-/

namespace A177187.P13679742793298500997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199336 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177187.P13679742793298500997

namespace A177187

/-- `Δ[A199336(n+1)/2]` -/
def P13679742793298500997.Spec : Prop :=
  ∀ n, P13679742793298500997.a n = (A177187 (n + 1) : ℚ)

end A177187

/-! ## A177187.P15369738049278678989

`Δ[Δ[∑[A105045(n)]-n]]`
-/

namespace A177187.P15369738049278678989
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A177187.P15369738049278678989

namespace A177187

/-- `Δ[Δ[∑[A105045(n)]-n]]` -/
def P15369738049278678989.Spec : Prop :=
  ∀ n, P15369738049278678989.a n = A177187 (n + 1)

end A177187

/-! ## A177187.P18102535839228198313

`A322780(n+1)/A010685(n)`
-/

namespace A177187.P18102535839228198313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322780 (n + 1) : ℚ) / (A010685 n : ℚ)

end

end A177187.P18102535839228198313

namespace A177187

/-- `A322780(n+1)/A010685(n)` -/
def P18102535839228198313.Spec : Prop :=
  ∀ n, P18102535839228198313.a n = (A177187 (n + 1) : ℚ)

end A177187

/-! ## A177187.P16252205949446425557

`gcd(A001090(n)+1, ∑[A001090(n)])`
-/

namespace A177187.P16252205949446425557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001090 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A177187.P16252205949446425557

namespace A177187

/-- `gcd(A001090(n)+1, ∑[A001090(n)])` -/
def P16252205949446425557.Spec : Prop :=
  ∀ n, (P16252205949446425557.a n : ℤ) = A177187 (n + 1)

end A177187

/-! ## A177187.P12291871405594037905

`gcd(∑[A001090(n)], A076765(n))`
-/

namespace A177187.P12291871405594037905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A076765 n)

end

end A177187.P12291871405594037905

namespace A177187

/-- `gcd(∑[A001090(n)], A076765(n))` -/
def P12291871405594037905.Spec : Prop :=
  ∀ n, (P12291871405594037905.a n : ℤ) = A177187 (n + 1)

end A177187

/-! ## A177187.P5557848858231640957

`gcd(A145607(n+1)+1, A145608(n))`
-/

namespace A177187.P5557848858231640957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145607 (n + 1) + 1) (A145608 n)

end

end A177187.P5557848858231640957

namespace A177187

/-- `gcd(A145607(n+1)+1, A145608(n))` -/
def P5557848858231640957.Spec : Prop :=
  ∀ n, (P5557848858231640957.a n : ℤ) = A177187 (n + 1)

end A177187

/-! ## A177187.P4496902371867682576

`A001090(n+1)/(A077247(n+1)-A077247(n))`
-/

namespace A177187.P4496902371867682576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001090 (n + 1) : ℚ) / (A077247 (n + 1) - A077247 n : ℚ)

end

end A177187.P4496902371867682576

namespace A177187

/-- `A001090(n+1)/(A077247(n+1)-A077247(n))` -/
def P4496902371867682576.Spec : Prop :=
  ∀ n, P4496902371867682576.a n = (A177187 (n + 1) : ℚ)

end A177187

/-!
# A177189: Partial sums of round(n^2/16).

The programs for A177189, the canonical program `A177189.P11616687512350664750` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177189 has offset 0).

The definition of A177189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177189.P11616687512350664750

`round((2*n^3+3*n²+4*n)/96)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177189

/-- `round((2*n^3+3*n²+4*n)/96)` -/
def P11616687512350664750.Spec : Prop :=
  ∀ n, P11616687512350664750.a n = A177189 n

theorem P11616687512350664750.correct : P11616687512350664750.Spec := by
  intro n
  simp only [A177189]

end A177189

/-! ## A177189.P5917152936699467472

`∑[A056822(n)]`
-/

namespace A177189.P5917152936699467472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177189.P5917152936699467472

namespace A177189

/-- `∑[A056822(n)]` -/
def P5917152936699467472.Spec : Prop :=
  ∀ n, P5917152936699467472.a n = A177189 n

end A177189

/-! ## A177189.P7341963654419767599

`∑[round(A002620(n)/4)]`
-/

namespace A177189.P7341963654419767599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002620 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177189.P7341963654419767599

namespace A177189

/-- `∑[round(A002620(n)/4)]` -/
def P7341963654419767599.Spec : Prop :=
  ∀ n, P7341963654419767599.a n = A177189 n

end A177189

/-! ## A177189.P18298987501220872807

`A122046(n)-A175777(n)`
-/

namespace A177189.P18298987501220872807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n - A175777 n

end

end A177189.P18298987501220872807

namespace A177189

/-- `A122046(n)-A175777(n)` -/
def P18298987501220872807.Spec : Prop :=
  ∀ n, P18298987501220872807.a n = A177189 n

end A177189

/-! ## A177189.P6027392554189821910

`A175826(n)-A175848(n)`
-/

namespace A177189.P6027392554189821910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175826 n - A175848 n

end

end A177189.P6027392554189821910

namespace A177189

/-- `A175826(n)-A175848(n)` -/
def P6027392554189821910.Spec : Prop :=
  ∀ n, P6027392554189821910.a n = A177189 n

end A177189

/-! ## A177189.P5135075988193008722

`∑[∑[A002265(A084964(n+1))]]`
-/

namespace A177189.P5135075988193008722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A084964 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177189.P5135075988193008722

namespace A177189

/-- `∑[∑[A002265(A084964(n+1))]]` -/
def P5135075988193008722.Spec : Prop :=
  ∀ n, P5135075988193008722.a n = A177189 n

end A177189

/-! ## A177189.P8582094591934125779

`A004526(∑[A110658(n²)])`
-/

namespace A177189.P8582094591934125779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A177189.P8582094591934125779

namespace A177189

/-- `A004526(∑[A110658(n²)])` -/
def P8582094591934125779.Spec : Prop :=
  ∀ n, P8582094591934125779.a n = A177189 n

end A177189

/-!
# A177191: Determinant of the n X n matrix whose element (r,c) is n for r = c, is -n for c>r, and 1 for c< r.

The programs for A177191, the canonical program `A177191.P4339355866360526003` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A177191 has offset 1).

The definition of A177191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A177191.P4339355866360526003

`((2*(n+1))^(n+1)+(n+1)*n^(n+1))/(n+2)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A177191

/-- `((2*(n+1))^(n+1)+(n+1)*n^(n+1))/(n+2)` -/
def P4339355866360526003.Spec : Prop :=
  ∀ n, P4339355866360526003.a n = (A177191 (n + 1) : ℚ)

end A177191

/-!
# A177192: Primes p such that p^p ends in p and p is not congruent to 1 (mod 10).

The programs for A177192, there is no canonical definition to state claims against.
-/

/-! ## A177192.P4356607000587906528

`∩[A042991(n+1), A052228(n+1)]`
-/

namespace A177192.P4356607000587906528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177192.P4356607000587906528

/-! ## A177192.P14650875826690597557

`∩[A042991(n+1), A082576(n+1)]`
-/

namespace A177192.P14650875826690597557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177192.P14650875826690597557

/-!
# A177193: The twin primes p such that m and k are also twin primes where m*k=semiprime(p).

The programs for A177193, there is no canonical definition to state claims against.
-/

/-! ## A177193.P4946080767124683171

`filter[A101771(n), A164292(#)]`
-/

namespace A177193.P4946080767124683171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A177193.P4946080767124683171

/-! ## A177193.P10721043881538882634

`∩[A001097(n+1), A101771(n)]`
-/

namespace A177193.P10721043881538882634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A177193.P10721043881538882634

/-! ## A177193.P11652753639068277342

`record[A088524(or(3, 2*n)-a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A177193.P11652753639068277342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  A088524 ((Nat.lor 3 (2 * n) : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177193.P11652753639068277342

/-!
# A177194: Fibonacci numbers whose decimal expansion does not contain any digit 0.

The programs for A177194, there is no canonical definition to state claims against.
-/

/-! ## A177194.P5628743868250053679

`A000045(A076564(n+1))`
-/

namespace A177194.P5628743868250053679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A076564 (n + 1)).toNat

end

end A177194.P5628743868250053679

/-! ## A177194.P12912699652729601121

`A000045(eq[0, A085854(n)])`
-/

namespace A177194.P12912699652729601121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177194.P12912699652729601121

/-! ## A177194.P9762724394310896284

`A000045(lt[A085854(n), 1])`
-/

namespace A177194.P9762724394310896284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A177194.P9762724394310896284

/-! ## A177194.P2586395744516394571

`abs(A236191(eq[0, A085854(n)]))`
-/

namespace A177194.P2586395744516394571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A177194.P2586395744516394571

/-! ## A177194.P6500651139559978201

`A000045(record[gcd(n, A085854(n))])`
-/

namespace A177194.P6500651139559978201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A085854 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A177194.P6500651139559978201

/-!
# A177195: Fibonacci numbers whose decimal expansion does not contain the digit 1.

The programs for A177195, there is no canonical definition to state claims against.
-/

/-! ## A177195.P1330019718316063891

`A000045(eq[0, A085855(n)])`
-/

namespace A177195.P1330019718316063891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A177195.P1330019718316063891

/-! ## A177195.P15288243883177104312

`A000045(lt[A085855(n), 1])`
-/

namespace A177195.P15288243883177104312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A177195.P15288243883177104312

/-! ## A177195.P2427751267682596353

`abs(A236191(eq[0, A085855(n)]))`
-/

namespace A177195.P2427751267682596353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A177195.P2427751267682596353

/-! ## A177195.P3885992078524545804

`record[A004176(A000045(n))]`
-/

namespace A177195.P3885992078524545804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A000045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A177195.P3885992078524545804

/-!
# A177196: Number of distinct representations of A163143(n) as a "zipper number".

The programs for A177196, there is no canonical definition to state claims against.
-/

/-! ## A177196.P9926034726666380621

`gcd(A133828(A121412(n)), A288177(n+1))`
-/

namespace A177196.P9926034726666380621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133828 (A121412 n).toNat) (A288177 (n + 1))

end

end A177196.P9926034726666380621

/-! ## A177196.P16398878894645955894

`gcd(A052055(A092863(3*n+5)), A326623(n+4))`
-/

namespace A177196.P16398878894645955894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052055 (A092863 (3 * n + 5)).toNat) (A326623 (n + 4))

end

end A177196.P16398878894645955894

/-!
# A177197: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=6, k=-1 and l=1.

The programs for A177197, there is no canonical definition to state claims against.
-/

/-! ## A177197.P5967508779599576501

`∑[A302176(A000822(n))]`
-/

namespace A177197.P5967508779599576501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302176 (A000822 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177197.P5967508779599576501

/-!
# A177198: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=7, k=-1 and l=1.

The programs for A177198, there is no canonical definition to state claims against.
-/

/-! ## A177198.P10628343366261552391

`A064234(2^n*3^∑{e}[n+1, #])`
-/

namespace A177198.P10628343366261552391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064234 (2 ^ n * 3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A177198.P10628343366261552391

/-!
# A177199: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=8, k=-1 and l=1.

The programs for A177199, there is no canonical definition to state claims against.
-/

/-! ## A177199.P3542229353467864793

`A236256(A003180(n))+A177170(n)`
-/

namespace A177199.P3542229353467864793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236256 (A003180 n).toNat + A177170 n

end

end A177199.P3542229353467864793

