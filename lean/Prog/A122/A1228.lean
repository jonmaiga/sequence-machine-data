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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
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
import Seq.B001.C012
import Seq.B001.C013
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A122800: A P_4-stuttered arithmetic progression with a(n+1)=a(n) if n is square, a(n+1)=a(n)+2 otherwise.

The programs for A122800, the canonical program `A122800.P16993477240022882628` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122800 has offset 1).

The definition of A122800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122800.P16993477240022882628

`A045928(n+1)-n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A122800

/-- `A045928(n+1)-n` -/
def P16993477240022882628.Spec : Prop :=
  ∀ n, P16993477240022882628.a n = A122800 (n + 1)

theorem P16993477240022882628.correct : P16993477240022882628.Spec := by
  intro n
  simp only [A122800, Nat.add_sub_cancel]

end A122800

/-! ## A122800.P14475512980383934513

`2*(n-floor(sqrt(n)))+1`
-/

namespace A122800.P14475512980383934513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - (Nat.sqrt n : ℤ)) + 1

end

end A122800.P14475512980383934513

namespace A122800

/-- `2*(n-floor(sqrt(n)))+1` -/
def P14475512980383934513.Spec : Prop :=
  ∀ n, P14475512980383934513.a n = A122800 (n + 1)

theorem P14475512980383934513.correct : P14475512980383934513.Spec := by
  intro n
  simp only [A122800, Nat.add_sub_cancel, A122800.P14475512980383934513.a, A122800.P16993477240022882628.a, A045928, A045928.P6418909097058057068.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122800

/-! ## A122800.P8438690855849489399

`or(1, floor((1-sqrt(n+1))²+n))`
-/

namespace A122800.P8438690855849489399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(1 - Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℝ)⌋

end

end A122800.P8438690855849489399

namespace A122800

/-- `or(1, floor((1-sqrt(n+1))²+n))` -/
def P8438690855849489399.Spec : Prop :=
  ∀ n, P8438690855849489399.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P255470029654875186

`xor(1, 2*∑[val(2-char[n²], 2)²])`
-/

namespace A122800.P255470029654875186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A122800.P255470029654875186

namespace A122800

/-- `xor(1, 2*∑[val(2-char[n²], 2)²])` -/
def P255470029654875186.Spec : Prop :=
  ∀ n, (P255470029654875186.a n : ℤ) = A122800 (n + 1)

end A122800

/-! ## A122800.P11461367554465591335

`∑[2-A000122(n)]`
-/

namespace A122800.P11461367554465591335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122800.P11461367554465591335

namespace A122800

/-- `∑[2-A000122(n)]` -/
def P11461367554465591335.Spec : Prop :=
  ∀ n, P11461367554465591335.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P17892973366820653959

`∑[2-abs(A002448(n))]`
-/

namespace A122800.P17892973366820653959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - |A002448 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122800.P17892973366820653959

namespace A122800

/-- `∑[2-abs(A002448(n))]` -/
def P17892973366820653959.Spec : Prop :=
  ∀ n, P17892973366820653959.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P11145932779431790954

`A005408(n-floor(sqrt(n)))`
-/

namespace A122800.P11145932779431790954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n - Nat.sqrt n)

end

end A122800.P11145932779431790954

namespace A122800

/-- `A005408(n-floor(sqrt(n)))` -/
def P11145932779431790954.Spec : Prop :=
  ∀ n, P11145932779431790954.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P10978877257970356217

`∑[2-A214304(2*n)]`
-/

namespace A122800.P10978877257970356217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A214304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122800.P10978877257970356217

namespace A122800

/-- `∑[2-A214304(2*n)]` -/
def P10978877257970356217.Spec : Prop :=
  ∀ n, P10978877257970356217.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P7450081383880818729

`∑[2-and(3, A212885(n))]`
-/

namespace A122800.P7450081383880818729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 3 (A212885 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122800.P7450081383880818729

namespace A122800

/-- `∑[2-and(3, A212885(n))]` -/
def P7450081383880818729.Spec : Prop :=
  ∀ n, P7450081383880818729.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P16547334421363396436

`∑[A056594(A246631(n))+1]`
-/

namespace A122800.P16547334421363396436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A246631 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122800.P16547334421363396436

namespace A122800

/-- `∑[A056594(A246631(n))+1]` -/
def P16547334421363396436.Spec : Prop :=
  ∀ n, P16547334421363396436.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P3728310441368577341

`A004273(1-A000196(n)+n)`
-/

namespace A122800.P3728310441368577341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - A000196 n + (n : ℤ)).toNat

end

end A122800.P3728310441368577341

namespace A122800

/-- `A004273(1-A000196(n)+n)` -/
def P3728310441368577341.Spec : Prop :=
  ∀ n, P3728310441368577341.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P3334313421727502767

`A060747(1-A000196(n)+n)`
-/

namespace A122800.P3334313421727502767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (1 - A000196 n + (n : ℤ)).toNat

end

end A122800.P3334313421727502767

namespace A122800

/-- `A060747(1-A000196(n)+n)` -/
def P3334313421727502767.Spec : Prop :=
  ∀ n, P3334313421727502767.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P3226617064917468114

`A004273(1-(A000196(n)-n))`
-/

namespace A122800.P3226617064917468114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (1 - (A000196 n - (n : ℤ))).toNat

end

end A122800.P3226617064917468114

namespace A122800

/-- `A004273(1-(A000196(n)-n))` -/
def P3226617064917468114.Spec : Prop :=
  ∀ n, P3226617064917468114.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P5702881587533841077

`xor(A118175(n), A123663(n+1))`
-/

namespace A122800.P5702881587533841077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A118175 n) (A123663 (n + 1))

end

end A122800.P5702881587533841077

namespace A122800

/-- `xor(A118175(n), A123663(n+1))` -/
def P5702881587533841077.Spec : Prop :=
  ∀ n, P5702881587533841077.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P2281636406768499738

`A060747(2-A003059(n+1)+n)`
-/

namespace A122800.P2281636406768499738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (2 - A003059 (n + 1) + (n : ℤ)).toNat

end

end A122800.P2281636406768499738

namespace A122800

/-- `A060747(2-A003059(n+1)+n)` -/
def P2281636406768499738.Spec : Prop :=
  ∀ n, P2281636406768499738.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P15445163940708062851

`∑[C(2, Δ[A068527(n)]²)]`
-/

namespace A122800.P15445163940708062851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122800.P15445163940708062851

namespace A122800

/-- `∑[C(2, Δ[A068527(n)]²)]` -/
def P15445163940708062851.Spec : Prop :=
  ∀ n, (P15445163940708062851.a n : ℤ) = A122800 (n + 1)

end A122800

/-! ## A122800.P3776864123484228322

`∑[2-and(3, A004402(n))]`
-/

namespace A122800.P3776864123484228322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 3 (A004402 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122800.P3776864123484228322

namespace A122800

/-- `∑[2-and(3, A004402(n))]` -/
def P3776864123484228322.Spec : Prop :=
  ∀ n, P3776864123484228322.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P690759171398334931

`A004442(2*A028391(n))`
-/

namespace A122800.P690759171398334931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A028391 n).toNat

end

end A122800.P690759171398334931

namespace A122800

/-- `A004442(2*A028391(n))` -/
def P690759171398334931.Spec : Prop :=
  ∀ n, P690759171398334931.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P10257728543251730019

`A109613(A123663(n+1))`
-/

namespace A122800.P10257728543251730019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A123663 (n + 1)).toNat

end

end A122800.P10257728543251730019

namespace A122800

/-- `A109613(A123663(n+1))` -/
def P10257728543251730019.Spec : Prop :=
  ∀ n, P10257728543251730019.a n = A122800 (n + 1)

end A122800

/-! ## A122800.P1030042965659257394

`A127366(A195437(n-A000196(n)))`
-/

namespace A122800.P1030042965659257394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127366 (A195437 ((n : ℤ) - A000196 n).toNat).toNat

end

end A122800.P1030042965659257394

namespace A122800

/-- `A127366(A195437(n-A000196(n)))` -/
def P1030042965659257394.Spec : Prop :=
  ∀ n, P1030042965659257394.a n = A122800 (n + 1)

end A122800

/-!
# A122801: Number of labeled bipartite graphs on 2n vertices having equal parts and no isolated vertices.

The programs for A122801, there is no canonical definition to state claims against.
-/

/-! ## A122801.P15933099688441227400

`A048291(n)*A088218(n)`
-/

namespace A122801.P15933099688441227400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048291 n * A088218 n

end

end A122801.P15933099688441227400

/-! ## A122801.P18330336338824869897

`A048291(n)*A210736(2*n)`
-/

namespace A122801.P18330336338824869897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048291 n * A210736 (2 * n)

end

end A122801.P18330336338824869897

/-! ## A122801.P6219695551676024003

`A088218(n)*A183109(A028310(∑[n]))`
-/

namespace A122801.P6219695551676024003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A183109 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A122801.P6219695551676024003

/-! ## A122801.P3197664784627937369

`A088218(n)*A183109(A179865(n+1))`
-/

namespace A122801.P3197664784627937369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A183109 (A179865 (n + 1)).toNat

end

end A122801.P3197664784627937369

/-! ## A122801.P2495825493952497234

`A088218(n)*A183109(A000217(A080953(n)+n))`
-/

namespace A122801.P2495825493952497234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A183109 (A000217 (A080953 n + (n : ℤ)).toNat).toNat

end

end A122801.P2495825493952497234

/-!
# A122802: Number of labeled bipartite graphs on n vertices with no isolated vertices.

The programs for A122802, there is no canonical definition to state claims against.
-/

/-! ## A122802.P12662783577710551175

`A332290(ceil(2^(n-1)))-A133684(n)`
-/

namespace A122802.P12662783577710551175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332290 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A133684 n

end

end A122802.P12662783577710551175

/-! ## A122802.P13090722462110240837

`A332293(ceil(2^(n-1)))-A133684(n)`
-/

namespace A122802.P13090722462110240837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332293 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A133684 n

end

end A122802.P13090722462110240837

/-!
# A122803: Powers of -2: a(n) = (-2)^n.

The programs for A122803, the canonical program `A122803.P220057073400853330` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122803 has offset 0).

The definition of A122803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-2)^n` (program `A122803.P220057073400853330`, by `A122803.P220057073400853330.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122803.P220057073400853330

`(-2)^n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122803

/-- `(-2)^n` -/
def P220057073400853330.Spec : Prop :=
  ∀ n, P220057073400853330.a n = A122803 n

theorem P220057073400853330.correct : P220057073400853330.Spec := by
  intro n
  simp only [A122803]

end A122803

/-! ## A122803.P425172413234801110

`ogf(1/(1+2x))`
-/

namespace A122803.P425172413234801110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2] n

end

end A122803.P425172413234801110

namespace A122803

/-- `ogf(1/(1+2x))` -/
def P425172413234801110.Spec : Prop :=
  ∀ n, P425172413234801110.a n = A122803 n

end A122803

/-! ## A122803.P13957038756339347087

`-(2*a(n-1))` with `a(0)=1`
-/

namespace A122803.P13957038756339347087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(2 * a (n - 1))

end

end A122803.P13957038756339347087

namespace A122803

/-- `-(2*a(n-1))` -/
def P13957038756339347087.Spec : Prop :=
  ∀ n, P13957038756339347087.a n = A122803 n

theorem P13957038756339347087.correct : P13957038756339347087.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P13957038756339347087.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P13957038756339347087.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P8015250946410368062

`2^n*cos(π*n)`
-/

namespace A122803.P8015250946410368062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) * Real.cos (Real.pi * (n : ℝ))

end

end A122803.P8015250946410368062

namespace A122803

/-- `2^n*cos(π*n)` -/
def P8015250946410368062.Spec : Prop :=
  ∀ n, P8015250946410368062.a n = (A122803 n : ℝ)

end A122803

/-! ## A122803.P7611519961830216106

`4*a(n-2)` with `a(0)=1, a(1)=-2`
-/

namespace A122803.P7611519961830216106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  4 * a (n - 2)

end

end A122803.P7611519961830216106

namespace A122803

/-- `4*a(n-2)` -/
def P7611519961830216106.Spec : Prop :=
  ∀ n, P7611519961830216106.a n = A122803 n

theorem P7611519961830216106.correct : P7611519961830216106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P7611519961830216106.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P7611519961830216106.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P8561297877945719793

`a(n-1)/(1/2-1)` with `a(0)=1`
-/

namespace A122803.P8561297877945719793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2 - 1)

end

end A122803.P8561297877945719793

namespace A122803

/-- `a(n-1)/(1/2-1)` -/
def P8561297877945719793.Spec : Prop :=
  ∀ n, P8561297877945719793.a n = (A122803 n : ℚ)

theorem P8561297877945719793.correct : P8561297877945719793.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P8561297877945719793.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P8561297877945719793.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P150151069740209966

`-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A122803.P150151069740209966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -(a (n - 1) + a (n - 1))

end

end A122803.P150151069740209966

namespace A122803

/-- `-(a(n-1)+a(n-1))` -/
def P150151069740209966.Spec : Prop :=
  ∀ n, P150151069740209966.a n = A122803 n

theorem P150151069740209966.correct : P150151069740209966.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P150151069740209966.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P150151069740209966.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P1323288780718962722

`floor(-a(n-1))-a(n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A122803.P1323288780718962722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (n - 1) - a (n - 1)

end

end A122803.P1323288780718962722

namespace A122803

/-- `floor(-a(n-1))-a(n-1)` -/
def P1323288780718962722.Spec : Prop :=
  ∀ n, P1323288780718962722.a n = A122803 n

theorem P1323288780718962722.correct : P1323288780718962722.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P1323288780718962722.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P1323288780718962722.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P410086353037710315

`ceil(-a(n-1))-a(n-1)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A122803.P410086353037710315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (n - 1) - a (n - 1)

end

end A122803.P410086353037710315

namespace A122803

/-- `ceil(-a(n-1))-a(n-1)` -/
def P410086353037710315.Spec : Prop :=
  ∀ n, P410086353037710315.a n = A122803 n

theorem P410086353037710315.correct : P410086353037710315.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P410086353037710315.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P410086353037710315.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P13795395385709337283

`round(-a(n-1))-a(n-1)` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A122803.P13795395385709337283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -a (n - 1) - a (n - 1)

end

end A122803.P13795395385709337283

namespace A122803

/-- `round(-a(n-1))-a(n-1)` -/
def P13795395385709337283.Spec : Prop :=
  ∀ n, P13795395385709337283.a n = A122803 n

theorem P13795395385709337283.correct : P13795395385709337283.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P13795395385709337283.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P13795395385709337283.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P6795814592011417411

`Δ[1-a(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A122803.P6795814592011417411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122803.P6795814592011417411

namespace A122803

/-- `Δ[1-a(n-1)-a(n-1)]` -/
def P6795814592011417411.Spec : Prop :=
  ∀ n, P6795814592011417411.a n = A122803 n

end A122803

/-! ## A122803.P10734709699471428946

`xor(1, 1-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A122803.P10734709699471428946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (1 - a (n - 1) - a (n - 1))

end

end A122803.P10734709699471428946

namespace A122803

/-- `xor(1, 1-a(n-1)-a(n-1))` -/
def P10734709699471428946.Spec : Prop :=
  ∀ n, P10734709699471428946.a n = A122803 n

end A122803

/-! ## A122803.P11782043735109361529

`1-floor(a(n-1)+a(n-1)+1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A122803.P11782043735109361529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) + (a (n - 1) + 1))

end

end A122803.P11782043735109361529

namespace A122803

/-- `1-floor(a(n-1)+a(n-1)+1)` -/
def P11782043735109361529.Spec : Prop :=
  ∀ n, P11782043735109361529.a n = A122803 n

theorem P11782043735109361529.correct : P11782043735109361529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P11782043735109361529.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P11782043735109361529.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P7835392263653295943

`floor(1-a(n-1)-a(n-1))-1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A122803.P7835392263653295943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) - a (n - 1) - 1

end

end A122803.P7835392263653295943

namespace A122803

/-- `floor(1-a(n-1)-a(n-1))-1` -/
def P7835392263653295943.Spec : Prop :=
  ∀ n, P7835392263653295943.a n = A122803 n

theorem P7835392263653295943.correct : P7835392263653295943.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A122803, Nat.add_sub_cancel, A122803.P7835392263653295943.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A122803, Nat.add_sub_cancel, A122803.P7835392263653295943.a, A122803.P220057073400853330.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122803

/-! ## A122803.P13709033374876524268

`and(2, n²)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A122803.P13709033374876524268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 2 (n ^ 2) : ℤ) - a (n - 1) - a (n - 1)

end

end A122803.P13709033374876524268

namespace A122803

/-- `and(2, n²)-a(n-1)-a(n-1)` -/
def P13709033374876524268.Spec : Prop :=
  ∀ n, P13709033374876524268.a n = A122803 n

end A122803

/-! ## A122803.P5893981964242307671

`C(2, n+2)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A122803.P5893981964242307671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose 2 (n + 2) : ℤ) - a (n - 1) - a (n - 1)

end

end A122803.P5893981964242307671

namespace A122803

/-- `C(2, n+2)-a(n-1)-a(n-1)` -/
def P5893981964242307671.Spec : Prop :=
  ∀ n, P5893981964242307671.a n = A122803 n

end A122803

/-! ## A122803.P2268885724243027077

`val(n, n+1)-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A122803.P2268885724243027077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation n (n + 1) : ℤ) - a (n - 1) - a (n - 1)

end

end A122803.P2268885724243027077

namespace A122803

/-- `val(n, n+1)-a(n-1)-a(n-1)` -/
def P2268885724243027077.Spec : Prop :=
  ∀ n, P2268885724243027077.a n = A122803 n

end A122803

/-! ## A122803.P17288873049521985174

`Δ[A084247(n)]`
-/

namespace A122803.P17288873049521985174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122803.P17288873049521985174

namespace A122803

/-- `Δ[A084247(n)]` -/
def P17288873049521985174.Spec : Prop :=
  ∀ n, P17288873049521985174.a n = A122803 n

end A122803

/-! ## A122803.P7994282142129882639

`A123344(n+1)`
-/

namespace A122803.P7994282142129882639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (n + 1)

end

end A122803.P7994282142129882639

namespace A122803

/-- `A123344(n+1)` -/
def P7994282142129882639.Spec : Prop :=
  ∀ n, P7994282142129882639.a n = A122803 n

end A122803

/-! ## A122803.P2724289320346756200

`A077966(2*n)`
-/

namespace A122803.P2724289320346756200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (2 * n)

end

end A122803.P2724289320346756200

namespace A122803

/-- `A077966(2*n)` -/
def P2724289320346756200.Spec : Prop :=
  ∀ n, P2724289320346756200.a n = A122803 n

end A122803

/-!
# A122804: Smallest positive number divisible by n which is not of the form a(i)+a(j) for i and j <= n-1.

The programs for A122804, there is no canonical definition to state claims against.
-/

/-! ## A122804.P10799957268370054716

`(n+1)*A122805(n+1)`
-/

namespace A122804.P10799957268370054716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122805 (n + 1)

end

end A122804.P10799957268370054716

/-! ## A122804.P16659938122296135036

`A060118(A305800(n+5)+A000571(n))*A320113(n+1)`
-/

namespace A122804.P16659938122296135036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060118 (A305800 (n + 5) + A000571 n).toNat * A320113 (n + 1)

end

end A122804.P16659938122296135036

/-! ## A122804.P3594578470581846110

`A109849(n+1)*A330370(A136768(n+5))`
-/

namespace A122804.P3594578470581846110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109849 (n + 1) * A330370 (A136768 (n + 5)).toNat

end

end A122804.P3594578470581846110

/-!
# A122805: A122804(n)/n.

The programs for A122805, there is no canonical definition to state claims against.
-/

/-! ## A122805.P6380237929153754145

`A122804(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122805.P6380237929153754145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122804 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A122805.P6380237929153754145

/-! ## A122805.P14399245082084408795

`(3*A122804(n+1))%A016789(n)`
-/

namespace A122805.P14399245082084408795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A122804 (n + 1)) (A016789 n)

end

end A122805.P14399245082084408795

/-! ## A122805.P9198546762324392457

`(4*A122804(n+1))%A004767(n)`
-/

namespace A122805.P9198546762324392457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A122804 (n + 1)) (A004767 n)

end

end A122805.P9198546762324392457

/-! ## A122805.P5484458584134585375

`(6*A122804(n+1))%A016969(n)`
-/

namespace A122805.P5484458584134585375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A122804 (n + 1)) (A016969 n)

end

end A122805.P5484458584134585375

/-! ## A122805.P135142605179155790

`(10*A122804(n+1))%A017377(n)`
-/

namespace A122805.P135142605179155790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * A122804 (n + 1)) (A017377 n)

end

end A122805.P135142605179155790

/-! ## A122805.P666973668102781422

`A008586(A122804(n+1))%A004767(n)`
-/

namespace A122805.P666973668102781422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A122804 (n + 1)).toNat) (A004767 n)

end

end A122805.P666973668102781422

/-! ## A122805.P16777713059425324010

`A008486(A122804(n+1))%A016789(n)`
-/

namespace A122805.P16777713059425324010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 (A122804 (n + 1)).toNat) (A016789 n)

end

end A122805.P16777713059425324010

/-!
# A122806: Numbers not in A122804.

The programs for A122806, there is no canonical definition to state claims against.
-/

/-! ## A122806.P9022398484495417495

`comp[A122804(n+1)-2]+2`
-/

namespace A122806.P9022398484495417495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122804 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A122806.P9022398484495417495

/-! ## A122806.P1469906839141401484

`eq[char[A122804(n+1)], A000038(n)]`
-/

namespace A122806.P1469906839141401484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122804 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122806.P1469906839141401484

/-! ## A122806.P17496703002490820355

`comp[A122804(n+1)%A071679(n+1)]`
-/

namespace A122806.P17496703002490820355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122804 (n + 1)) (A071679 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A122806.P17496703002490820355

/-! ## A122806.P2538755818929407582

`lt[A085127(n+1)/4*char[A122804(n+1)], n-1]`
-/

namespace A122806.P2538755818929407582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122804 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) / 4 * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A122806.P2538755818929407582

/-! ## A122806.P11333833832335895437

`lt[A342918(A266648(n)), A000041(n)]`
-/

namespace A122806.P11333833832335895437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342918 (A266648 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122806.P11333833832335895437

/-!
# A122807: Least positive k such that n is equal to arithmetic mean of k consecutive primes, or 0 if no such k exists.

The programs for A122807, there is no canonical definition to state claims against.
-/

/-! ## A122807.P14757287974762516254

`and(3, A146656(n+1)*A333218(n+1))`
-/

namespace A122807.P14757287974762516254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A146656 (n + 1) * A333218 (n + 1))

end

end A122807.P14757287974762516254

/-! ## A122807.P17146327148667889327

`A010873(A333218(n+1)%A115083(n))`
-/

namespace A122807.P17146327148667889327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (Int.tmod (A333218 (n + 1)) (A115083 n)).toNat

end

end A122807.P17146327148667889327

/-! ## A122807.P18192489601173798403

`and(A276863(A033842(n)), A333218(n+1))`
-/

namespace A122807.P18192489601173798403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276863 (A033842 n).toNat) (A333218 (n + 1))

end

end A122807.P18192489601173798403

/-! ## A122807.P5653003381692646334

`and(A276857(A081437(n)), A333218(n+1))`
-/

namespace A122807.P5653003381692646334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276857 (A081437 n).toNat) (A333218 (n + 1))

end

end A122807.P5653003381692646334

/-! ## A122807.P13161554190731321050

`and(A085296(A217035(n+3)), A333218(n+1))`
-/

namespace A122807.P13161554190731321050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085296 (A217035 (n + 3)).toNat) (A333218 (n + 1))

end

end A122807.P13161554190731321050

/-!
# A122809: Bisection of first difference/2 of A084696.

The programs for A122809, there is no canonical definition to state claims against.
-/

/-! ## A122809.P948724294289651957

`(A084696(2*(n+1)+1)-A084696(2*(n+1)))/2`
-/

namespace A122809.P948724294289651957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084696 (2 * (n + 1) + 1) - A084696 (2 * (n + 1)) : ℚ) / 2

end

end A122809.P948724294289651957

/-! ## A122809.P468474027461131489

`Δ[A126938(n+1)/4]`
-/

namespace A122809.P468474027461131489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126938 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122809.P468474027461131489

/-! ## A122809.P2570435362083263229

`Δ[A084696(Δ[n²])]/4`
-/

namespace A122809.P2570435362083263229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A122809.P2570435362083263229

/-! ## A122809.P17829865835063403859

`Δ[A084696(2*n+1)/4]`
-/

namespace A122809.P17829865835063403859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084696 (2 * n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122809.P17829865835063403859

/-! ## A122809.P14314833284231163389

`Δ[or(1, A084696(or(1, 2*n)))/4]`
-/

namespace A122809.P14314833284231163389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A084696 (Nat.lor 1 (2 * n))) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122809.P14314833284231163389

/-! ## A122809.P13757263277994279036

`A002265(Δ[A126938(n+1)])`
-/

namespace A122809.P13757263277994279036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A122809.P13757263277994279036

/-! ## A122809.P12783249635148877028

`A026922(Δ[A126938(n+1)])`
-/

namespace A122809.P12783249635148877028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f1 (n + 1) - f1 n).toNat

end

end A122809.P12783249635148877028

/-! ## A122809.P15813677079481635739

`A002265(Δ[A084696(Δ[n²])])`
-/

namespace A122809.P15813677079481635739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (n + 1) - f1 n).toNat

end

end A122809.P15813677079481635739

/-! ## A122809.P1159649469566114039

`A026922(Δ[A084696(Δ[n²])])`
-/

namespace A122809.P1159649469566114039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084696 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f1 (n + 1) - f1 n).toNat

end

end A122809.P1159649469566114039

/-! ## A122809.P4908338315811437432

`abs(Δ[A084696(A005408(n))/4])`
-/

namespace A122809.P4908338315811437432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084696 (A005408 n).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A122809.P4908338315811437432

/-!
# A122810: Number of distinct prime factors of the smallest odd number with exactly n divisors.

The programs for A122810, there is no canonical definition to state claims against.
-/

/-! ## A122810.P12682250307650397973

`A122375(11*(n+1))-1`
-/

namespace A122810.P12682250307650397973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (11 * (n + 1)) - 1

end

end A122810.P12682250307650397973

/-! ## A122810.P9083827129488437678

`A004896(A122375(11*(n+1)))`
-/

namespace A122810.P9083827129488437678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (A122375 (11 * (n + 1))).toNat

end

end A122810.P9083827129488437678

/-! ## A122810.P11307387511906332544

`A056239(A064988(n+1))-A122811(n+1)`
-/

namespace A122810.P11307387511906332544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064988 (n + 1)).toNat - A122811 (n + 1)

end

end A122810.P11307387511906332544

/-! ## A122810.P1796466797368952561

`A001222(n+1)-A323510((n+1)*A000040(n+1))`
-/

namespace A122810.P1796466797368952561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A323510 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A122810.P1796466797368952561

/-! ## A122810.P7250314713882897512

`abs(1-A122375(A157924(n+1)-n))`
-/

namespace A122810.P7250314713882897512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A122375 (A157924 (n + 1) - (n : ℤ)).toNat|

end

end A122810.P7250314713882897512

/-! ## A122810.P5754827217743044844

`A061917(A122375(A157924(n+1)-n))`
-/

namespace A122810.P5754827217743044844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (A122375 (A157924 (n + 1) - (n : ℤ)).toNat).toNat

end

end A122810.P5754827217743044844

/-! ## A122810.P8269447749859431524

`A324848(A124859(n+1))`
-/

namespace A122810.P8269447749859431524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (A124859 (n + 1)).toNat

end

end A122810.P8269447749859431524

/-!
# A122811: Number of prime factors (counted with multiplicity) of the smallest odd number with exactly n divisors.

The programs for A122811, there is no canonical definition to state claims against.
-/

/-! ## A122811.P9195597422270906289

`sqrt(A074373(n+1))-(A122375(11*(n+1))-1)`
-/

namespace A122811.P9195597422270906289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ) - (A122375 (11 * (n + 1)) - 1 : ℝ)

end

end A122811.P9195597422270906289

/-! ## A122811.P6457565050675132488

`sqrt(A074373(n+1))-A004896(A122375(11*(n+1)))`
-/

namespace A122811.P6457565050675132488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ) - (A004896 (A122375 (11 * (n + 1))).toNat : ℝ)

end

end A122811.P6457565050675132488

/-! ## A122811.P10146721133410634499

`A056239(A064988(n+1))-A122810(n+1)`
-/

namespace A122811.P10146721133410634499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064988 (n + 1)).toNat - A122810 (n + 1)

end

end A122811.P10146721133410634499

/-! ## A122811.P15099636964294027230

`A036288(n+1)-A122375(A157924(n+1)-n)`
-/

namespace A122811.P15099636964294027230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A122375 (A157924 (n + 1) - (n : ℤ)).toNat

end

end A122811.P15099636964294027230

/-! ## A122811.P15378678410382777622

`A036288(n+1)-A122375(A020338(n+1))`
-/

namespace A122811.P15378678410382777622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - A122375 (A020338 (n + 1)).toNat

end

end A122811.P15378678410382777622

/-!
# A122812: Numbers k where A046523(A005179(k)) differs from A046523(A038547(k)).

The programs for A122812, there is no canonical definition to state claims against.
-/

/-! ## A122812.P1294777383548334669

`lt[A122375(n+1), A122810(n+1)]+1`
-/

namespace A122812.P1294777383548334669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A122812.P1294777383548334669

/-! ## A122812.P11056431923051044373

`lt[A122811(n+1), A122376(n+1)]+1`
-/

namespace A122812.P11056431923051044373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A122812.P11056431923051044373

/-! ## A122812.P16811161983196804750

`∏{e}[A122813(n+1), #+1]`
-/

namespace A122812.P16811161983196804750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A122812.P16811161983196804750

/-! ## A122812.P14016324270950420186

`∑{d}[A122813(ϕ²-(ϕ-n)), ceil(acot(#))]`
-/

namespace A122812.P14016324270950420186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122813 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A122812.P14016324270950420186

/-! ## A122812.P18116612102797336809

`A000005(A122813(n+1))`
-/

namespace A122812.P18116612102797336809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A122813 (n + 1)).toNat

end

end A122812.P18116612102797336809

/-!
# A122813: Terms in A005179 where prime signature differs from that of corresponding term in A038547.

The programs for A122813, there is no canonical definition to state claims against.
-/

/-! ## A122813.P7704091710929554508

`A005179(A122812(n+1))`
-/

namespace A122813.P7704091710929554508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A122812 (n + 1)).toNat

end

end A122813.P7704091710929554508

/-! ## A122813.P1604910059027957153

`A061799(A053497(n)*A122812(n+1))`
-/

namespace A122813.P1604910059027957153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A053497 n * A122812 (n + 1)).toNat

end

end A122813.P1604910059027957153

/-! ## A122813.P716434889159981682

`A061799(A122812(n+1)^A053497(n))`
-/

namespace A122813.P716434889159981682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.roundAway ((A122812 (n + 1) : ℚ) ^ (A053497 n : ℤ))).toNat

end

end A122813.P716434889159981682

/-!
# A122814: Terms in A038547 where prime signature differs from that of corresponding term in A005179.

The programs for A122814, there is no canonical definition to state claims against.
-/

/-! ## A122814.P14022724610270493977

`A038547(A122812(n+1))`
-/

namespace A122814.P14022724610270493977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (A122812 (n + 1)).toNat

end

end A122814.P14022724610270493977

/-!
# A122815: Terms in A122375 that differ from corresponding term in A122810.

The programs for A122815, there is no canonical definition to state claims against.
-/

/-! ## A122815.P11580282102907773044

`A122375(A122812(n+1))`
-/

namespace A122815.P11580282102907773044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (A122812 (n + 1)).toNat

end

end A122815.P11580282102907773044

/-! ## A122815.P11596154879049551519

`A122816(n+1)-ceil(A124779(n)/23)`
-/

namespace A122815.P11596154879049551519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122816 (n + 1) - ⌈(A124779 n : ℚ) / 23⌉

end

end A122815.P11596154879049551519

/-! ## A122815.P5757550176036920658

`A122816(n+1)-A092334(A124779(n))`
-/

namespace A122815.P5757550176036920658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122816 (n + 1) - A092334 (A124779 n).toNat

end

end A122815.P5757550176036920658

/-! ## A122815.P15515015381177102221

`A122816(n+1)-A096825(A124779(n)+3)`
-/

namespace A122815.P15515015381177102221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122816 (n + 1) - A096825 (A124779 n + 3).toNat

end

end A122815.P15515015381177102221

/-! ## A122815.P13904169830281490065

`A122816(n+1)-val(A089408(A124779(n)+3), 2)`
-/

namespace A122815.P13904169830281490065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122816 (n + 1) - (SequenceMachineLib.valuation (A089408 (A124779 n + 3).toNat).toNat 2 : ℤ)

end

end A122815.P13904169830281490065

/-! ## A122815.P17913547697759790653

`A122810(A122812(n+1))-A092334(A124779(n))`
-/

namespace A122815.P17913547697759790653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (A122812 (n + 1)).toNat - A092334 (A124779 n).toNat

end

end A122815.P17913547697759790653

/-! ## A122815.P8370363622286281633

`A122816(n+1)-A014963(A122459(n+6))`
-/

namespace A122815.P8370363622286281633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122816 (n + 1) - A014963 (A122459 (n + 6)).toNat

end

end A122815.P8370363622286281633

/-!
# A122816: Terms in A122810 that differ from corresponding term in A122375.

The programs for A122816, there is no canonical definition to state claims against.
-/

/-! ## A122816.P10875783130098336183

`A122810(A122812(n+1))`
-/

namespace A122816.P10875783130098336183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (A122812 (n + 1)).toNat

end

end A122816.P10875783130098336183

/-! ## A122816.P9877050756968814528

`round(A122815(n+1)+atan(A124779(n)))`
-/

namespace A122816.P9877050756968814528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A122815 (n + 1) : ℝ) + Real.arctan (A124779 n : ℝ))

end

end A122816.P9877050756968814528

/-! ## A122816.P5413023876685822894

`A122815(n+1)+A092334(A124779(n))`
-/

namespace A122816.P5413023876685822894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A092334 (A124779 n).toNat

end

end A122816.P5413023876685822894

/-! ## A122816.P12963389197087428289

`A122815(n+1)+A001221(A124779(n)+3)`
-/

namespace A122816.P12963389197087428289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A001221 (A124779 n + 3).toNat

end

end A122816.P12963389197087428289

/-! ## A122816.P1106962095853787375

`A122815(n+1)+A000079(floor(A124779(n)/31))`
-/

namespace A122816.P1106962095853787375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A000079 ⌊(A124779 n : ℚ) / 31⌋.toNat

end

end A122816.P1106962095853787375

/-! ## A122816.P4723410605832131395

`A122815(n+1)+A004277(round(A124779(n)/60))`
-/

namespace A122816.P4723410605832131395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A004277 (SequenceMachineLib.roundAway ((A124779 n : ℚ) / 60)).toNat

end

end A122816.P4723410605832131395

/-! ## A122816.P7135615068502593981

`A122815(n+1)+A121644(floor(A124779(n)/31)+1)`
-/

namespace A122816.P7135615068502593981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A121644 (⌊(A124779 n : ℚ) / 31⌋ + 1).toNat

end

end A122816.P7135615068502593981

/-! ## A122816.P4705401291787096190

`A122815(n+1)+A000982(round(A124779(n)/60)+1)`
-/

namespace A122816.P4705401291787096190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A000982 (SequenceMachineLib.roundAway ((A124779 n : ℚ) / 60) + 1).toNat

end

end A122816.P4705401291787096190

/-! ## A122816.P17378622885489717352

`A122815(n+1)+A006530(round(A124779(n)/60)+1)`
-/

namespace A122816.P17378622885489717352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A006530 (SequenceMachineLib.roundAway ((A124779 n : ℚ) / 60) + 1).toNat

end

end A122816.P17378622885489717352

/-! ## A122816.P10459149671308009887

`A122815(n+1)+A059481(A230426(n)%A132083(n+1))`
-/

namespace A122816.P10459149671308009887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (n + 1) + A059481 (Int.tmod (A230426 n) (A132083 (n + 1))).toNat

end

end A122816.P10459149671308009887

/-!
# A122817: Terms in A122376 that differ from corresponding term in A122811.

The programs for A122817, there is no canonical definition to state claims against.
-/

/-! ## A122817.P15761900912749935494

`A122376(A122812(n+1))`
-/

namespace A122817.P15761900912749935494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (A122812 (n + 1)).toNat

end

end A122817.P15761900912749935494

/-! ## A122817.P15566575085885697848

`A122376(lt[A122375(n+1), A122810(n+1)]+1)`
-/

namespace A122817.P15566575085885697848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A122817.P15566575085885697848

/-! ## A122817.P13145010414002119538

`A122376(lt[A122811(n+1), A122376(n+1)]+1)`
-/

namespace A122817.P13145010414002119538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A122817.P13145010414002119538

/-! ## A122817.P16807874126502453563

`∑{e}[A122813(n+1), #]`
-/

namespace A122817.P16807874126502453563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A122817.P16807874126502453563

/-! ## A122817.P12599092193113413388

`A122376(∏{e}[A122813(n+1), #+1])`
-/

namespace A122817.P12599092193113413388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A122817.P12599092193113413388

/-!
# A122818: Terms in A122811 that differ from corresponding term in A122376.

The programs for A122818, there is no canonical definition to state claims against.
-/

/-! ## A122818.P13510199140024419655

`A122811(A122812(n+1))`
-/

namespace A122818.P13510199140024419655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122811 (A122812 (n + 1)).toNat

end

end A122818.P13510199140024419655

/-! ## A122818.P4989580138108027758

`A001414(A122812(n+1))-A122816(n+1)`
-/

namespace A122818.P4989580138108027758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A122812 (n + 1)).toNat - A122816 (n + 1)

end

end A122818.P4989580138108027758

/-! ## A122818.P2434988293322857658

`A122811(lt[A122375(n+1), A122810(n+1)]+1)`
-/

namespace A122818.P2434988293322857658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122811 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A122818.P2434988293322857658

/-! ## A122818.P16632320276920200420

`A122811(lt[A122811(n+1), A122376(n+1)]+1)`
-/

namespace A122818.P16632320276920200420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122811 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A122818.P16632320276920200420

/-! ## A122818.P5085283696738215643

`A122811(∏{e}[A122813(n+1), #+1])`
-/

namespace A122818.P5085283696738215643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122811 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A122818.P5085283696738215643

/-!
# A122819: Array read by rows in which the n-th row contains smallest odd numbers in increasing order of all possible prime signatures with n divisors.

The programs for A122819, there is no canonical definition to state claims against.
-/

/-! ## A122819.P4820560452987152818

`A003961(A077569(n+1)^A319099(n+2))`
-/

namespace A122819.P4820560452987152818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A077569 (n + 1) : ℚ) ^ (A319099 (n + 2) : ℤ))).toNat

end

end A122819.P4820560452987152818

/-! ## A122819.P8502770942793914497

`A003961(A077569(n+1))%A228018(n+1)`
-/

namespace A122819.P8502770942793914497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A077569 (n + 1)).toNat) (A228018 (n + 1))

end

end A122819.P8502770942793914497

/-! ## A122819.P17338744991703565584

`A003961(A077569(n+1)%A242945(n+1))`
-/

namespace A122819.P17338744991703565584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A077569 (n + 1)) (A242945 (n + 1))).toNat

end

end A122819.P17338744991703565584

/-! ## A122819.P14874207477994880042

`A143754(A001599(n+4))+A003961(A077569(n+1))`
-/

namespace A122819.P14874207477994880042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143754 (A001599 (n + 4)).toNat + A003961 (A077569 (n + 1)).toNat

end

end A122819.P14874207477994880042

/-!
# A122821: Number of ways n can be represented as the arithmetic mean of consecutive primes.

The programs for A122821, there is no canonical definition to state claims against.
-/

/-! ## A122821.P13070984729735188680

`A278700(n+1)+A010051(A242697(3*n+1))`
-/

namespace A122821.P13070984729735188680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (n + 1) + A010051 (A242697 (3 * n + 1 + 36)).toNat

end

end A122821.P13070984729735188680

/-! ## A122821.P3401038270618654303

`A278700(n+1)+A010051(A022570(n))`
-/

namespace A122821.P3401038270618654303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (n + 1) + A010051 (A022570 n).toNat

end

end A122821.P3401038270618654303

/-! ## A122821.P11371671979637275398

`A278700(n+1)+A000007(A034008(n))`
-/

namespace A122821.P11371671979637275398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (n + 1) + A000007 (A034008 n).toNat

end

end A122821.P11371671979637275398

/-! ## A122821.P11948201678717091379

`A278700(n+1)+A037213(A001644(n))`
-/

namespace A122821.P11948201678717091379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (n + 1) + A037213 (A001644 n).toNat

end

end A122821.P11948201678717091379

/-! ## A122821.P5652101757288931204

`A278700(n+1)+A014072(A083052(n))`
-/

namespace A122821.P5652101757288931204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278700 (n + 1) + A014072 (A083052 n).toNat

end

end A122821.P5652101757288931204

/-!
# A122822: The (1,4) entry in the matrix M^n, where M is the 4 X 4 matrix [[0,-1,1,0],[0,0,-1,1],[1,1,1,0],[0,1,1,1]].

The programs for A122822, the canonical program `A122822.P5275265177874085728` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122822 has offset 0).

The definition of A122822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122822.P745786864697520482

`ogf((-x^2+2x^3)/(1-2x-x^3+3x^4))`
-/

namespace A122822.P745786864697520482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, -1, 2] [1, -2, 0, -1, 3] n

end

end A122822.P745786864697520482

namespace A122822

/-- `ogf((-x^2+2x^3)/(1-2x-x^3+3x^4))` -/
def P745786864697520482.Spec : Prop :=
  ∀ n, P745786864697520482.a n = A122822 n

end A122822

/-! ## A122822.P5275265177874085728

`2*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=-1, a(3)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122822

/-- `2*a(n-1)+a(n-3)-3*a(n-4)` -/
def P5275265177874085728.Spec : Prop :=
  ∀ n, P5275265177874085728.a n = A122822 n

theorem P5275265177874085728.correct : P5275265177874085728.Spec := by
  intro n
  simp only [A122822]

end A122822

/-!
# A122823: Triangle read by rows: T(n,k) = count of increasing runs in two concatenated k-permutations of [n].

The programs for A122823, there is no canonical definition to state claims against.
-/

/-! ## A122823.P1650359757885977637

`A171897(A355156(n+1)+1)+A036765(n)`
-/

namespace A122823.P1650359757885977637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171897 (A355156 (n + 1) + 1).toNat + A036765 n

end

end A122823.P1650359757885977637

/-! ## A122823.P9072280132446953769

`A000120(A201595(n))*A223838(3*n+1)`
-/

namespace A122823.P9072280132446953769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A201595 n).toNat * A223838 (3 * n + 1)

end

end A122823.P9072280132446953769

/-!
# A122824: Prime(semiprime(n)) - semiprime(prime(n)). Commutator [A000040,A001358] at n.

The programs for A122824, the canonical program `A122824.P11779817276326474124` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122824 has offset 1).

The definition of A122824 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106349, A106350, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122824.P11779817276326474124

`A106349(n+1)-A106350(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A122824

/-- `A106349(n+1)-A106350(n+1)` -/
def P11779817276326474124.Spec : Prop :=
  ∀ n, P11779817276326474124.a n = A122824 (n + 1)

theorem P11779817276326474124.correct : P11779817276326474124.Spec := by
  intro n
  simp only [A122824, Nat.add_sub_cancel]

end A122824

/-! ## A122824.P16475220549588465010

`(A106349(n+1)%A106350(n+1))%A001248(n+1)`
-/

namespace A122824.P16475220549588465010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A106349 (n + 1)) (A106350 (n + 1))) (A001248 (n + 1))

end

end A122824.P16475220549588465010

namespace A122824

/-- `(A106349(n+1)%A106350(n+1))%A001248(n+1)` -/
def P16475220549588465010.Spec : Prop :=
  ∀ n, P16475220549588465010.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P18093491640952022400

`A000040(A001358(n+1))-A106350(n+1)`
-/

namespace A122824.P18093491640952022400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001358 (n + 1)).toNat - A106350 (n + 1)

end

end A122824.P18093491640952022400

namespace A122824

/-- `A000040(A001358(n+1))-A106350(n+1)` -/
def P18093491640952022400.Spec : Prop :=
  ∀ n, P18093491640952022400.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P3285580925214007056

`A106349(n+1)-A001358(A000040(n+1))`
-/

namespace A122824.P3285580925214007056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1) - A001358 (A000040 (n + 1)).toNat

end

end A122824.P3285580925214007056

namespace A122824

/-- `A106349(n+1)-A001358(A000040(n+1))` -/
def P3285580925214007056.Spec : Prop :=
  ∀ n, P3285580925214007056.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P10904296564482907058

`A106349(n+1)-A001358(sqrt(A001248(n+1)))`
-/

namespace A122824.P10904296564482907058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1) - A001358 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A122824.P10904296564482907058

namespace A122824

/-- `A106349(n+1)-A001358(sqrt(A001248(n+1)))` -/
def P10904296564482907058.Spec : Prop :=
  ∀ n, P10904296564482907058.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P2369269534971433344

`A106349(n+1)-A001358(A040976(n+1)+2)`
-/

namespace A122824.P2369269534971433344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1) - A001358 (A040976 (n + 1) + 2).toNat

end

end A122824.P2369269534971433344

namespace A122824

/-- `A106349(n+1)-A001358(A040976(n+1)+2)` -/
def P2369269534971433344.Spec : Prop :=
  ∀ n, P2369269534971433344.a n = A122824 (n + 1)

theorem P2369269534971433344.correct : P2369269534971433344.Spec := by
  intro n
  simp only [A122824, Nat.add_sub_cancel, A122824.P2369269534971433344.a, A122824.P11779817276326474124.a, A001358, A001358.P632087320844056370.a, A040976, A040976.P11599754272797435513.a, A106349, A106349.P13006647031590844046.a, A106350, A106350.P1932545184107851387.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122824

/-! ## A122824.P6065132663177623674

`A106349(n+1)-A001358(record[A000010(n+1)]+1)`
-/

namespace A122824.P6065132663177623674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1) - A001358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A122824.P6065132663177623674

namespace A122824

/-- `A106349(n+1)-A001358(record[A000010(n+1)]+1)` -/
def P6065132663177623674.Spec : Prop :=
  ∀ n, P6065132663177623674.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P1015084339575442174

`A000040(A001358(n+1))-A001358(A000040(n+1))`
-/

namespace A122824.P1015084339575442174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001358 (n + 1)).toNat - A001358 (A000040 (n + 1)).toNat

end

end A122824.P1015084339575442174

namespace A122824

/-- `A000040(A001358(n+1))-A001358(A000040(n+1))` -/
def P1015084339575442174.Spec : Prop :=
  ∀ n, P1015084339575442174.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P574258160298385751

`A000040(A075818(n+1)/2)%A001358(A000040(n+1))`
-/

namespace A122824.P574258160298385751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat) (A001358 (A000040 (n + 1)).toNat)

end

end A122824.P574258160298385751

namespace A122824

/-- `A000040(A075818(n+1)/2)%A001358(A000040(n+1))` -/
def P574258160298385751.Spec : Prop :=
  ∀ n, P574258160298385751.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P1271979283813605401

`A158611(A001358(n+1)+2)-A001358(A040976(n+1)+2)`
-/

namespace A122824.P1271979283813605401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A001358 (n + 1) + 2).toNat - A001358 (A040976 (n + 1) + 2).toNat

end

end A122824.P1271979283813605401

namespace A122824

/-- `A158611(A001358(n+1)+2)-A001358(A040976(n+1)+2)` -/
def P1271979283813605401.Spec : Prop :=
  ∀ n, P1271979283813605401.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P1392146542314460560

`A000040(A207790(4*n+3))%A001358(A000040(n+1))`
-/

namespace A122824.P1392146542314460560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A207790 (4 * n + 3)).toNat) (A001358 (A000040 (n + 1)).toNat)

end

end A122824.P1392146542314460560

namespace A122824

/-- `A000040(A207790(4*n+3))%A001358(A000040(n+1))` -/
def P1392146542314460560.Spec : Prop :=
  ∀ n, P1392146542314460560.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P17874166816839782277

`A106349(n+1)-A001358(eq[1, A032741(n)])`
-/

namespace A122824.P17874166816839782277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1) - A001358 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122824.P17874166816839782277

namespace A122824

/-- `A106349(n+1)-A001358(eq[1, A032741(n)])` -/
def P17874166816839782277.Spec : Prop :=
  ∀ n, P17874166816839782277.a n = A122824 (n + 1)

end A122824

/-! ## A122824.P7370381693973561831

`A106349(n+1)-record[A001358(A285699(n+1)+1)]`
-/

namespace A122824.P7370381693973561831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A285699 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106349 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122824.P7370381693973561831

namespace A122824

/-- `A106349(n+1)-record[A001358(A285699(n+1)+1)]` -/
def P7370381693973561831.Spec : Prop :=
  ∀ n, P7370381693973561831.a n = A122824 (n + 1)

end A122824

/-!
# A122825: a(n) = n + number of previous prime terms, a(1) = 1.

The programs for A122825, the canonical program `A122825.P13856472018753362858` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122825 has offset 1).

The definition of A122825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122825.P13856472018753362858

`comp[p?[comp[3*n]]]+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122825

/-- `comp[p?[comp[3*n]]]+1` -/
def P13856472018753362858.Spec : Prop :=
  ∀ n, (P13856472018753362858.a n : ℤ) = A122825 (n + 1)

theorem P13856472018753362858.correct : P13856472018753362858.Spec := by
  intro n
  simp only [A122825, Nat.add_sub_cancel]

end A122825

/-! ## A122825.P7445873477436670946

`comp[A045344(n+1)]+1`
-/

namespace A122825.P7445873477436670946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122825.P7445873477436670946

namespace A122825

/-- `comp[A045344(n+1)]+1` -/
def P7445873477436670946.Spec : Prop :=
  ∀ n, (P7445873477436670946.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P8385278215243196437

`comp[A081259(n+1)]+1`
-/

namespace A122825.P8385278215243196437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122825.P8385278215243196437

namespace A122825

/-- `comp[A081259(n+1)]+1` -/
def P8385278215243196437.Spec : Prop :=
  ∀ n, (P8385278215243196437.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P10410811958774546940

`comp[A151800(3*n)]+1`
-/

namespace A122825.P10410811958774546940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122825.P10410811958774546940

namespace A122825

/-- `comp[A151800(3*n)]+1` -/
def P10410811958774546940.Spec : Prop :=
  ∀ n, (P10410811958774546940.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P4081090861211145618

`comp[record[A006530(n+4)]]+1`
-/

namespace A122825.P4081090861211145618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122825.P4081090861211145618

namespace A122825

/-- `comp[record[A006530(n+4)]]+1` -/
def P4081090861211145618.Spec : Prop :=
  ∀ n, (P4081090861211145618.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P8114893169032718404

`comp[A006530(3*n+2)]+1`
-/

namespace A122825.P8114893169032718404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122825.P8114893169032718404

namespace A122825

/-- `comp[A006530(3*n+2)]+1` -/
def P8114893169032718404.Spec : Prop :=
  ∀ n, (P8114893169032718404.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P9380572644005261662

`∪[A018252(n+1), ∑[n]]+1`
-/

namespace A122825.P9380572644005261662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n + 1

end

end A122825.P9380572644005261662

namespace A122825

/-- `∪[A018252(n+1), ∑[n]]+1` -/
def P9380572644005261662.Spec : Prop :=
  ∀ n, (P9380572644005261662.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P2156725879481607782

`A000720(a(n-1))+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A122825.P2156725879481607782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A000720 (a (n - 1)).toNat + (n : ℤ)

end

end A122825.P2156725879481607782

namespace A122825

/-- `A000720(a(n-1))+n` -/
def P2156725879481607782.Spec : Prop :=
  ∀ n, P2156725879481607782.a n = A122825 (n + 1)

end A122825

/-! ## A122825.P16771047089979764987

`comp[A000040(xor(1, n+1)+1)]+1`
-/

namespace A122825.P16771047089979764987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.xor 1 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122825.P16771047089979764987

namespace A122825

/-- `comp[A000040(xor(1, n+1)+1)]+1` -/
def P16771047089979764987.Spec : Prop :=
  ∀ n, (P16771047089979764987.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P5572852767918989889

`a(n-1)+C(2, A001222(a(n-1)))!` with `a(0)=1`
-/

namespace A122825.P5572852767918989889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.factorial (Nat.choose 2 (A001222 (a (n - 1))).toNat)

end

end A122825.P5572852767918989889

namespace A122825

/-- `a(n-1)+C(2, A001222(a(n-1)))!` -/
def P5572852767918989889.Spec : Prop :=
  ∀ n, (P5572852767918989889.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P6708948314844560203

`a(n-1)+C(2, C(2, A000005(a(n-1))))` with `a(0)=1`
-/

namespace A122825.P6708948314844560203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose 2 (Nat.choose 2 (A000005 (a (n - 1))).toNat)

end

end A122825.P6708948314844560203

namespace A122825

/-- `a(n-1)+C(2, C(2, A000005(a(n-1))))` -/
def P6708948314844560203.Spec : Prop :=
  ∀ n, (P6708948314844560203.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P3165272824334617901

`A171581(n+1)+A157928(n)`
-/

namespace A122825.P3165272824334617901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1) + A157928 n

end

end A122825.P3165272824334617901

namespace A122825

/-- `A171581(n+1)+A157928(n)` -/
def P3165272824334617901.Spec : Prop :=
  ∀ n, P3165272824334617901.a n = A122825 (n + 1)

theorem P3165272824334617901.correct : P3165272824334617901.Spec := by
  intro n
  simp only [A122825, Nat.add_sub_cancel, A122825.P3165272824334617901.a, A122825.P13856472018753362858.f3, A122825.P13856472018753362858.f2, A122825.P13856472018753362858.f1, A122825.P13856472018753362858.a, A157928, A157928.P16800723605722859619.a, A171581, A171581.P14375995751855154974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122825

/-! ## A122825.P12963345872774138844

`∪[A079696(n+1), A000124(n)]`
-/

namespace A122825.P12963345872774138844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P12963345872774138844

namespace A122825

/-- `∪[A079696(n+1), A000124(n)]` -/
def P12963345872774138844.Spec : Prop :=
  ∀ n, (P12963345872774138844.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P3765032487338857178

`∪[A000645(n), A079696(n+1)]`
-/

namespace A122825.P3765032487338857178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P3765032487338857178

namespace A122825

/-- `∪[A000645(n), A079696(n+1)]` -/
def P3765032487338857178.Spec : Prop :=
  ∀ n, (P3765032487338857178.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P2812310204114950651

`∪[A000802(n), A079696(n+1)]`
-/

namespace A122825.P2812310204114950651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000802 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P2812310204114950651

namespace A122825

/-- `∪[A000802(n), A079696(n+1)]` -/
def P2812310204114950651.Spec : Prop :=
  ∀ n, (P2812310204114950651.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P2839710732093889061

`∪[A001998(n), A079696(n+1)]`
-/

namespace A122825.P2839710732093889061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P2839710732093889061

namespace A122825

/-- `∪[A001998(n), A079696(n+1)]` -/
def P2839710732093889061.Spec : Prop :=
  ∀ n, (P2839710732093889061.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P8463429774811113312

`∪[A005503(n), A079696(n+1)]`
-/

namespace A122825.P8463429774811113312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P8463429774811113312

namespace A122825

/-- `∪[A005503(n), A079696(n+1)]` -/
def P8463429774811113312.Spec : Prop :=
  ∀ n, (P8463429774811113312.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P7710641793549126902

`∪[A017995(n), A079696(n+1)]`
-/

namespace A122825.P7710641793549126902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P7710641793549126902

namespace A122825

/-- `∪[A017995(n), A079696(n+1)]` -/
def P7710641793549126902.Spec : Prop :=
  ∀ n, (P7710641793549126902.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P15784305366380259268

`∪[A018082(n), A079696(n+1)]`
-/

namespace A122825.P15784305366380259268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P15784305366380259268

namespace A122825

/-- `∪[A018082(n), A079696(n+1)]` -/
def P15784305366380259268.Spec : Prop :=
  ∀ n, (P15784305366380259268.a n : ℤ) = A122825 (n + 1)

end A122825

/-! ## A122825.P13464812535451015055

`∪[A079696(n+1), A076273(n)]`
-/

namespace A122825.P13464812535451015055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122825.P13464812535451015055

namespace A122825

/-- `∪[A079696(n+1), A076273(n)]` -/
def P13464812535451015055.Spec : Prop :=
  ∀ n, (P13464812535451015055.a n : ℤ) = A122825 (n + 1)

end A122825

/-!
# A122826: Number of free generators of degree n of the primitive Lie algebra of the Hopf algebra of Free quasi-symmetric functions (or Malvenuto-Reutenauer algebra of permutations).

The programs for A122826, there is no canonical definition to state claims against.
-/

/-! ## A122826.P2372033360926852498

`A191911(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A122826.P2372033360926852498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A191911 (a (n - 1) + 1).toNat

end

end A122826.P2372033360926852498

/-! ## A122826.P16121763855493846886

`A035250(A005011(n))`
-/

namespace A122826.P16121763855493846886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A005011 n).toNat

end

end A122826.P16121763855493846886

/-!
# A122827: Number of independent generators of degree n of the algebra of Free quasi-symmetric functions (or Malvenuto-Reutenauer algebra of permutations) as a dendriform dialgebra (i.e., number of totally primitive elements).

The programs for A122827, there is no canonical definition to state claims against.
-/

/-! ## A122827.P8577598413574719465

`(1-n)*A167894(n)`
-/

namespace A122827.P8577598413574719465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167894 n

end

end A122827.P8577598413574719465

/-! ## A122827.P6126674338111438482

`abs((1-n)*A003319(n))`
-/

namespace A122827.P6126674338111438482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * A003319 n|

end

end A122827.P6126674338111438482

/-! ## A122827.P15894736570623041277

`abs((1-n)*A158882(n))`
-/

namespace A122827.P15894736570623041277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ)) * A158882 n|

end

end A122827.P15894736570623041277

/-! ## A122827.P3619515949051855260

`A167894(n)+n*A003319(n)`
-/

namespace A122827.P3619515949051855260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167894 n + (n : ℤ) * A003319 n

end

end A122827.P3619515949051855260

/-! ## A122827.P10467810318782495917

`A003319(n+1)-A059439(n+1)`
-/

namespace A122827.P10467810318782495917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 (n + 1) - A059439 (n + 1)

end

end A122827.P10467810318782495917

/-! ## A122827.P10044519159915062932

`(1-n)*A104984(∑[n])`
-/

namespace A122827.P10044519159915062932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A104984 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122827.P10044519159915062932

/-!
# A122828: Triangle T(n,k), 0<=k<=n, defined by : T(n,k)=0 if k<0, T(n,k)=0 if k>n,T(0,0)=1, T(1,0)=1, T(1,1)=2, T(n,k)=T(n-1,k-1)+T(n-1,k)+T(n-2,k).

The programs for A122828, there is no canonical definition to state claims against.
-/

/-! ## A122828.P1979146955688044124

`A037027(n)+A155161(n)%A111275(n+1)`
-/

namespace A122828.P1979146955688044124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + Int.tmod (A155161 n) (A111275 (n + 1))

end

end A122828.P1979146955688044124

/-! ## A122828.P11995336172159974745

`A209126(A038722(n+1))+A000038(A038231(n))`
-/

namespace A122828.P11995336172159974745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209126 (A038722 (n + 1)).toNat + A000038 (A038231 n).toNat

end

end A122828.P11995336172159974745

/-! ## A122828.P14810204045424737284

`A209126(A038722(n+1))%A001837(A172400(n))`
-/

namespace A122828.P14810204045424737284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209126 (A038722 (n + 1)).toNat) (A001837 (A172400 n).toNat)

end

end A122828.P14810204045424737284

/-! ## A122828.P12045798181539944174

`A037027(n)+A155161(n)%A196234(n)`
-/

namespace A122828.P12045798181539944174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + Int.tmod (A155161 n) (A196234 (n + 13))

end

end A122828.P12045798181539944174

/-!
# A122830: Expansion of c(q) * c(q^6) / c(q^2)^2 in powers of q where c() is a cubic AGM theta function.

The programs for A122830, there is no canonical definition to state claims against.
-/

/-! ## A122830.P11287867892787318690

`A010892(n)*A132975(n+1)`
-/

namespace A122830.P11287867892787318690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A132975 (n + 1)

end

end A122830.P11287867892787318690

/-! ## A122830.P5137266028995950825

`A049347(n)*A124243(n+1)`
-/

namespace A122830.P5137266028995950825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A124243 (n + 1)

end

end A122830.P5137266028995950825

/-! ## A122830.P3932967084016381507

`A122831(n+1)/3`
-/

namespace A122830.P3932967084016381507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122831 (n + 1) : ℚ) / 3

end

end A122830.P3932967084016381507

/-! ## A122830.P13361835548881527916

`A010892(n)*A213267(n+1)`
-/

namespace A122830.P13361835548881527916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A213267 (n + 1)

end

end A122830.P13361835548881527916

/-! ## A122830.P1435861581553566210

`abs(A145977(n+1))*A010892(n)`
-/

namespace A122830.P1435861581553566210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145977 (n + 1)| * A010892 n

end

end A122830.P1435861581553566210

/-! ## A122830.P17364245379746978293

`A049347(2*n+1)*A145977(n+1)`
-/

namespace A122830.P17364245379746978293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * n + 1) * A145977 (n + 1)

end

end A122830.P17364245379746978293

/-!
# A122831: Expansion of b(q^3)b(q^2)^2/(b(q)b(q^6)^2) in powers of q where b(q) is a cubic AGM function.

The programs for A122831, there is no canonical definition to state claims against.
-/

/-! ## A122831.P7844586159453878061

`A132972(n)*A163806(n)`
-/

namespace A122831.P7844586159453878061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132972 n * A163806 n

end

end A122831.P7844586159453878061

/-! ## A122831.P17011583724046924752

`A084103(n)*A213267(n)`
-/

namespace A122831.P17011583724046924752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084103 n * A213267 n

end

end A122831.P17011583724046924752

/-! ## A122831.P9060554326153986

`A141094(n)*A163804(n)`
-/

namespace A122831.P9060554326153986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141094 n * A163804 n

end

end A122831.P9060554326153986

/-! ## A122831.P8127524603949877898

`A141094(n)*A163810(2*n)`
-/

namespace A122831.P8127524603949877898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141094 n * A163810 (2 * n)

end

end A122831.P8127524603949877898

/-! ## A122831.P4596053905189738972

`A010892(A163300(n+1))*A141094(n)`
-/

namespace A122831.P4596053905189738972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A163300 (n + 1)).toNat * A141094 n

end

end A122831.P4596053905189738972

/-!
# A122832: Exponential Riordan array (e^(x(1+x)),x).

The programs for A122832, the canonical program `A122832.P5038475168336746423` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122832 has offset 0).

The definition of A122832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122832.P5038475168336746423

`C(row(n), col(n))*A047974(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122832

/-- `C(row(n), col(n))*A047974(row(n)-col(n))` -/
def P5038475168336746423.Spec : Prop :=
  ∀ n, P5038475168336746423.a n = A122832 n

theorem P5038475168336746423.correct : P5038475168336746423.Spec := by
  intro n
  simp only [A122832]

end A122832

/-! ## A122832.P18411957555245816310

`T(n-1,k-1)+T(n-1,k)+2*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A122832.P18411957555245816310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUpRight a n

end

end A122832.P18411957555245816310

namespace A122832

/-- `T(n-1,k-1)+T(n-1,k)+2*(col(n)+1)*T(n-1,k+1)` -/
def P18411957555245816310.Spec : Prop :=
  ∀ n, (P18411957555245816310.a n : ℤ) = A122832 n

end A122832

/-! ## A122832.P10825794149899862649

`T(n-1,k-1)+T(n-1,k)+2*(row(n)-1)*T(n-2,k)` with `a(0)=1`
-/

namespace A122832.P10825794149899862649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + 2 * ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2 a n

end

end A122832.P10825794149899862649

namespace A122832

/-- `T(n-1,k-1)+T(n-1,k)+2*(row(n)-1)*T(n-2,k)` -/
def P10825794149899862649.Spec : Prop :=
  ∀ n, P10825794149899862649.a n = A122832 n

end A122832

/-! ## A122832.P6114513081760311562

`A007318(n)*A047974(A025581(n))`
-/

namespace A122832.P6114513081760311562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A047974 (A025581 n).toNat

end

end A122832.P6114513081760311562

namespace A122832

/-- `A007318(n)*A047974(A025581(n))` -/
def P6114513081760311562.Spec : Prop :=
  ∀ n, P6114513081760311562.a n = A122832 n

end A122832

/-!
# A122833: Exponential Riordan array (e^(-x(1+x)),x).

The programs for A122833, the canonical program `A122833.P6067438618774959258` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122833 has offset 0).

The definition of A122833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122833.P11221563086777179269

`T(n-1,k-1)-(T(n-1,k)+2*(col(n)+1)*T(n-1,k+1))` with `a(0)=1`
-/

namespace A122833.P11221563086777179269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUp a n + (2 * (SequenceMachineLib.triCol n + 1) : ℤ) * SequenceMachineLib.triUpRight a n)

end

end A122833.P11221563086777179269

namespace A122833

/-- `T(n-1,k-1)-(T(n-1,k)+2*(col(n)+1)*T(n-1,k+1))` -/
def P11221563086777179269.Spec : Prop :=
  ∀ n, P11221563086777179269.a n = A122833 n

end A122833

/-! ## A122833.P17390112600015339792

`T(n-1,k-1)+2*(1-row(n))*T(n-2,k)-T(n-1,k)` with `a(0)=1`
-/

namespace A122833.P17390112600015339792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + 2 * (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp a n

end

end A122833.P17390112600015339792

namespace A122833

/-- `T(n-1,k-1)+2*(1-row(n))*T(n-2,k)-T(n-1,k)` -/
def P17390112600015339792.Spec : Prop :=
  ∀ n, P17390112600015339792.a n = A122833 n

end A122833

/-! ## A122833.P6067438618774959258

`A007318(n)*A000321(A025581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122833

/-- `A007318(n)*A000321(A025581(n))` -/
def P6067438618774959258.Spec : Prop :=
  ∀ n, P6067438618774959258.a n = A122833 n

theorem P6067438618774959258.correct : P6067438618774959258.Spec := by
  intro n
  simp only [A122833]

end A122833

/-! ## A122833.P6059368398560764924

`A130595(n)*A293604(A025581(n))`
-/

namespace A122833.P6059368398560764924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A293604 (A025581 n).toNat

end

end A122833.P6059368398560764924

namespace A122833

/-- `A130595(n)*A293604(A025581(n))` -/
def P6059368398560764924.Spec : Prop :=
  ∀ n, P6059368398560764924.a n = A122833 n

end A122833

/-! ## A122833.P514701552166108682

`sqrt(A008459(n))*A000321(A025581(n))`
-/

namespace A122833.P514701552166108682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000321 (A025581 n).toNat : ℝ)

end

end A122833.P514701552166108682

namespace A122833

/-- `sqrt(A008459(n))*A000321(A025581(n))` -/
def P514701552166108682.Spec : Prop :=
  ∀ n, P514701552166108682.a n = (A122833 n : ℝ)

end A122833

/-!
# A122834: Primes in the new Mersenne conjecture; odd primes of the form 2^k+-1 or 4^k+-3.

The programs for A122834, there is no canonical definition to state claims against.
-/

/-! ## A122834.P7163009759446234980

`A020639(67*A107360(n+1))`
-/

namespace A122834.P7163009759446234980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (67 * A107360 (n + 1)).toNat

end

end A122834.P7163009759446234980

/-! ## A122834.P15317203798155359600

`A020639(lcm(67, A107360(n+1)))`
-/

namespace A122834.P15317203798155359600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm 67 (A107360 (n + 1)))

end

end A122834.P15317203798155359600

/-! ## A122834.P9802215998849911210

`filter[A354531(n+2), A376451(#)]`
-/

namespace A122834.P9802215998849911210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354531 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A376451 (f1 j).toNat = 1) n)

end

end A122834.P9802215998849911210

/-!
# A122835: Number of topologies on n labeled elements in which no element belongs to any pair of noncomparable members of the topology.

The programs for A122835, there is no canonical definition to state claims against.
-/

/-! ## A122835.P11198263272814132234

`3*A032109(n)-2`
-/

namespace A122835.P11198263272814132234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A032109 n - 2

end

end A122835.P11198263272814132234

/-! ## A122835.P2844674768749941296

`floor(3*A122101(∑[n])/2)`
-/

namespace A122835.P2844674768749941296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A122101 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A122835.P2844674768749941296

/-! ## A122835.P426325373439725502

`A052875(n)+A032109(n)`
-/

namespace A122835.P426325373439725502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + A032109 n

end

end A122835.P426325373439725502

/-! ## A122835.P14916154663839813651

`A076726(n)-A032109(n)`
-/

namespace A122835.P14916154663839813651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076726 n - A032109 n

end

end A122835.P14916154663839813651

/-! ## A122835.P11470738637160125028

`A000670(n)+A032109(n)-1`
-/

namespace A122835.P11470738637160125028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n + (A032109 n - 1)

end

end A122835.P11470738637160125028

/-! ## A122835.P2462363200069138236

`A000670(n)+A052875(n)/2`
-/

namespace A122835.P2462363200069138236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 n : ℚ) + (A052875 n : ℚ) / 2

end

end A122835.P2462363200069138236

/-! ## A122835.P9368611473161044661

`(A076726(n)+A052875(n))/2`
-/

namespace A122835.P9368611473161044661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n + A052875 n : ℚ) / 2

end

end A122835.P9368611473161044661

/-! ## A122835.P11013424650986155906

`A069321(n)+∑[A162509(n)-A069321(n)]`
-/

namespace A122835.P11013424650986155906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n - A069321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122835.P11013424650986155906

/-!
# A122836: Number of topologies on n labeled elements in which at least one element belongs to some pair of noncomparable members of the topology.

The programs for A122836, there is no canonical definition to state claims against.
-/

/-! ## A122836.P9319699576869298469

`A000798(n)-A122835(n)`
-/

namespace A122836.P9319699576869298469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - A122835 n

end

end A122836.P9319699576869298469

/-! ## A122836.P8865778112790537749

`A245767(∑[n]+n)-A122835(n)`
-/

namespace A122836.P8865778112790537749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A122835 n

end

end A122836.P8865778112790537749

/-! ## A122836.P16488093683760736204

`A326909(n)-(A122835(n)+A006058(n))`
-/

namespace A122836.P16488093683760736204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - (A122835 n + A006058 n)

end

end A122836.P16488093683760736204

/-! ## A122836.P3188031188410718273

`A245767(A000096(n))%A326909(n)-A122835(n)`
-/

namespace A122836.P3188031188410718273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245767 (A000096 n).toNat) (A326909 n) - A122835 n

end

end A122836.P3188031188410718273

/-! ## A122836.P15932224637772678986

`A014963(30*(n+1))*A245767(A000096(n))-A122835(n)`
-/

namespace A122836.P15932224637772678986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (30 * (n + 1)) * A245767 (A000096 n).toNat - A122835 n

end

end A122836.P15932224637772678986

/-!
# A122837: Triangle T(n,k), 0<=k<=n, defined by : T(n,k)=0 if k<0, T(n,k)=0 if k>n,T(0,0)=1, T(1,0)=1, T(1,1)=-1, T(n,k)=T(n-1,k-1)+T(n-1,k)+T(n-2,k).

The programs for A122837, the canonical program `A122837.P4437137630125244871` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122837 has offset 0).

The definition of A122837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k-1)+T(n-1,k)+T(n-2,k)` (program `A122837.P4437137630125244871`, by `A122837.P4437137630125244871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122837.P4437137630125244871

`T(n-1,k-1)+T(n-1,k)+T(n-2,k)` with `a(0)=1, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122837

/-- `T(n-1,k-1)+T(n-1,k)+T(n-2,k)` -/
def P4437137630125244871.Spec : Prop :=
  ∀ n, P4437137630125244871.a n = A122837 n

theorem P4437137630125244871.correct : P4437137630125244871.Spec := by
  intro n
  simp only [A122837]

end A122837

/-! ## A122837.P6138670181547133886

`2*A055830(n)-A037027(n)`
-/

namespace A122837.P6138670181547133886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055830 n - A037027 n

end

end A122837.P6138670181547133886

namespace A122837

/-- `2*A055830(n)-A037027(n)` -/
def P6138670181547133886.Spec : Prop :=
  ∀ n, P6138670181547133886.a n = A122837 n

end A122837

/-! ## A122837.P16844904507818903938

`2*A055830(n)-A155161(comp[∑[n]])`
-/

namespace A122837.P16844904507818903938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055830 n - A155161 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A122837.P16844904507818903938

namespace A122837

/-- `2*A055830(n)-A155161(comp[∑[n]])` -/
def P16844904507818903938.Spec : Prop :=
  ∀ n, P16844904507818903938.a n = A122837 n

end A122837

/-! ## A122837.P12964220141631358497

`A055830(n)-A155161(round(sqrt(n²+1)))`
-/

namespace A122837.P12964220141631358497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 n - A155161 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A122837.P12964220141631358497

namespace A122837

/-- `A055830(n)-A155161(round(sqrt(n²+1)))` -/
def P12964220141631358497.Spec : Prop :=
  ∀ n, P12964220141631358497.a n = A122837 n

end A122837

/-! ## A122837.P3127438848320085089

`char[57*n]+A055830(n)-A155161(n)`
-/

namespace A122837.P3127438848320085089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A055830 n - A155161 n)

end

end A122837.P3127438848320085089

namespace A122837

/-- `char[57*n]+A055830(n)-A155161(n)` -/
def P3127438848320085089.Spec : Prop :=
  ∀ n, P3127438848320085089.a n = A122837 n

end A122837

/-! ## A122837.P6503749504929294073

`2*A055830(n)-ceil(A209747(n+1)/2)`
-/

namespace A122837.P6503749504929294073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055830 n - ⌈(A209747 (n + 1) : ℚ) / 2⌉

end

end A122837.P6503749504929294073

namespace A122837

/-- `2*A055830(n)-ceil(A209747(n+1)/2)` -/
def P6503749504929294073.Spec : Prop :=
  ∀ n, P6503749504929294073.a n = A122837 n

end A122837

/-! ## A122837.P110906559846206398

`A005843(A055830(n))-A037027(n)`
-/

namespace A122837.P110906559846206398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A055830 n).toNat - A037027 n

end

end A122837.P110906559846206398

namespace A122837

/-- `A005843(A055830(n))-A037027(n)` -/
def P110906559846206398.Spec : Prop :=
  ∀ n, P110906559846206398.a n = A122837 n

end A122837

/-! ## A122837.P3710022921666380608

`2*A055830(n)-A038137(A061579(n))`
-/

namespace A122837.P3710022921666380608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055830 n - A038137 (A061579 n).toNat

end

end A122837.P3710022921666380608

namespace A122837

/-- `2*A055830(n)-A038137(A061579(n))` -/
def P3710022921666380608.Spec : Prop :=
  ∀ n, P3710022921666380608.a n = A122837 n

end A122837

/-! ## A122837.P17075519722905112855

`A037027(n)-2*A155161(A028310(n))`
-/

namespace A122837.P17075519722905112855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n - 2 * A155161 (A028310 n).toNat

end

end A122837.P17075519722905112855

namespace A122837

/-- `A037027(n)-2*A155161(A028310(n))` -/
def P17075519722905112855.Spec : Prop :=
  ∀ n, P17075519722905112855.a n = A122837 n

end A122837

/-! ## A122837.P12650688755361490299

`A055830(n)+A000007(n)-A155161(n)`
-/

namespace A122837.P12650688755361490299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 n + (A000007 n - A155161 n)

end

end A122837.P12650688755361490299

namespace A122837

/-- `A055830(n)+A000007(n)-A155161(n)` -/
def P12650688755361490299.Spec : Prop :=
  ∀ n, P12650688755361490299.a n = A122837 n

end A122837

/-!
# A122839: Numbers such that Sigma(m)*UnitarySigma(m)= k*UnitaryPhi(m)^2, for some integer k.

The programs for A122839, there is no canonical definition to state claims against.
-/

/-! ## A122839.P12061524734315704180

`A335288(lt[A335256(3*n+5), A335238(3*n+1)])`
-/

namespace A122839.P12061524734315704180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335256 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335238 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122839.P12061524734315704180

/-! ## A122839.P9146800202017032352

`∩[A320456(n+1), A335288(n+1)]`
-/

namespace A122839.P9146800202017032352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122839.P9146800202017032352

/-! ## A122839.P16031145875830318443

`A335288(A277061(n+1)%A277056(n+2))`
-/

namespace A122839.P16031145875830318443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (Int.tmod (A277061 (n + 1)) (A277056 (n + 2))).toNat

end

end A122839.P16031145875830318443

/-! ## A122839.P10298365967678189912

`A335288(A335235(n+1)%A355491(3*n+1))`
-/

namespace A122839.P10298365967678189912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (Int.tmod (A335235 (n + 1)) (A355491 (3 * n + 1))).toNat

end

end A122839.P10298365967678189912

/-! ## A122839.P15779548141963741724

`∩[A132016(n+1), A335288(n+1)]`
-/

namespace A122839.P15779548141963741724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122839.P15779548141963741724

/-!
# A122840: a(n) is the number of 0's at the end of n when n is written in base 10.

The programs for A122840, the canonical program `A122840.P15384273099785302065` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122840 has offset 1).

The definition of A122840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122840.P15384273099785302065

`val(n+1, 10)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122840

/-- `val(n+1, 10)` -/
def P15384273099785302065.Spec : Prop :=
  ∀ n, (P15384273099785302065.a n : ℤ) = A122840 (n + 1)

theorem P15384273099785302065.correct : P15384273099785302065.Spec := by
  intro n
  simp only [A122840, Nat.add_sub_cancel]

end A122840

/-! ## A122840.P2679011434870792727

`A160094(n+1)-1`
-/

namespace A122840.P2679011434870792727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1) - 1

end

end A122840.P2679011434870792727

namespace A122840

/-- `A160094(n+1)-1` -/
def P2679011434870792727.Spec : Prop :=
  ∀ n, P2679011434870792727.a n = A122840 (n + 1)

theorem P2679011434870792727.correct : P2679011434870792727.Spec := by
  intro n
  simp only [A122840, Nat.add_sub_cancel, A122840.P2679011434870792727.a, A122840.P15384273099785302065.a, A160094, A160094.P14962074149469739945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122840

/-! ## A122840.P2201191443605046483

`A054899(n+1)-A054899(n)`
-/

namespace A122840.P2201191443605046483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (n + 1) - A054899 n

end

end A122840.P2201191443605046483

namespace A122840

/-- `A054899(n+1)-A054899(n)` -/
def P2201191443605046483.Spec : Prop :=
  ∀ n, P2201191443605046483.a n = A122840 (n + 1)

end A122840

/-! ## A122840.P1337954277902958540

`val(-xor(n, -1), 10)%6`
-/

namespace A122840.P1337954277902958540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (-Int.xor (n : ℤ) (-1)).toNat 10 % 6

end

end A122840.P1337954277902958540

namespace A122840

/-- `val(-xor(n, -1), 10)%6` -/
def P1337954277902958540.Spec : Prop :=
  ∀ n, (P1337954277902958540.a n : ℤ) = A122840 (n + 1)

end A122840

/-! ## A122840.P6533653992958089230

`Δ[A054899(n)]`
-/

namespace A122840.P6533653992958089230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122840.P6533653992958089230

namespace A122840

/-- `Δ[A054899(n)]` -/
def P6533653992958089230.Spec : Prop :=
  ∀ n, P6533653992958089230.a n = A122840 (n + 1)

end A122840

/-! ## A122840.P10590875963533696178

`1-Δ[A028900(n)]%4`
-/

namespace A122840.P10590875963533696178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (f1 (n + 1) - f1 n) 4

end

end A122840.P10590875963533696178

namespace A122840

/-- `1-Δ[A028900(n)]%4` -/
def P10590875963533696178.Spec : Prop :=
  ∀ n, P10590875963533696178.a n = A122840 (n + 1)

end A122840

/-! ## A122840.P3049906093637534716

`A343609(1-Δ[A007953(n)])`
-/

namespace A122840.P3049906093637534716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A122840.P3049906093637534716

namespace A122840

/-- `A343609(1-Δ[A007953(n)])` -/
def P3049906093637534716.Spec : Prop :=
  ∀ n, P3049906093637534716.a n = A122840 (n + 1)

end A122840

/-! ## A122840.P13430093590565627495

`A016969(n)%A160094(n+1)`
-/

namespace A122840.P13430093590565627495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A160094 (n + 1))

end

end A122840.P13430093590565627495

namespace A122840

/-- `A016969(n)%A160094(n+1)` -/
def P13430093590565627495.Spec : Prop :=
  ∀ n, P13430093590565627495.a n = A122840 (n + 1)

end A122840

/-! ## A122840.P17401218992366006823

`(1-Δ[A007953(n)])/A010690(n)`
-/

namespace A122840.P17401218992366006823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (f1 (n + 1) - f1 n) : ℚ) / (A010690 n : ℚ)

end

end A122840.P17401218992366006823

namespace A122840

/-- `(1-Δ[A007953(n)])/A010690(n)` -/
def P17401218992366006823.Spec : Prop :=
  ∀ n, P17401218992366006823.a n = (A122840 (n + 1) : ℚ)

end A122840

/-! ## A122840.P11271818829039633318

`A007814((n+1)/A004151(n+1))`
-/

namespace A122840.P11271818829039633318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A004151 (n + 1) : ℚ))).toNat

end

end A122840.P11271818829039633318

namespace A122840

/-- `A007814((n+1)/A004151(n+1))` -/
def P11271818829039633318.Spec : Prop :=
  ∀ n, P11271818829039633318.a n = A122840 (n + 1)

end A122840

/-! ## A122840.P4963902992385461814

`(1-Δ[∑{digits}[n, #]])/9`
-/

namespace A122840.P4963902992385461814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 9

end

end A122840.P4963902992385461814

namespace A122840

/-- `(1-Δ[∑{digits}[n, #]])/9` -/
def P4963902992385461814.Spec : Prop :=
  ∀ n, P4963902992385461814.a n = (A122840 (n + 1) : ℚ)

end A122840

/-!
# A122841: Greatest k such that 6^k divides n.

The programs for A122841, the canonical program `A122841.P30360687531022372` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122841 has offset 1).

The definition of A122841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122841.P30360687531022372

`val(n+1, 6)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122841

/-- `val(n+1, 6)` -/
def P30360687531022372.Spec : Prop :=
  ∀ n, (P30360687531022372.a n : ℤ) = A122841 (n + 1)

theorem P30360687531022372.correct : P30360687531022372.Spec := by
  intro n
  simp only [A122841, Nat.add_sub_cancel]

end A122841

/-! ## A122841.P11659369234888921585

`A054895(n+1)-A054895(n)`
-/

namespace A122841.P11659369234888921585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (n + 1) - A054895 n

end

end A122841.P11659369234888921585

namespace A122841

/-- `A054895(n+1)-A054895(n)` -/
def P11659369234888921585.Spec : Prop :=
  ∀ n, P11659369234888921585.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P14044967691678583635

`val(record[(n-1)²], 6)/2`
-/

namespace A122841.P14044967691678583635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 6 : ℚ) / 2

end

end A122841.P14044967691678583635

namespace A122841

/-- `val(record[(n-1)²], 6)/2` -/
def P14044967691678583635.Spec : Prop :=
  ∀ n, P14044967691678583635.a n = (A122841 (n + 1) : ℚ)

end A122841

/-! ## A122841.P363347678892451652

`val(Δ[n²]-n, 6)%9`
-/

namespace A122841.P363347678892451652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat 6 % 9

end

end A122841.P363347678892451652

namespace A122841

/-- `val(Δ[n²]-n, 6)%9` -/
def P363347678892451652.Spec : Prop :=
  ∀ n, (P363347678892451652.a n : ℤ) = A122841 (n + 1)

end A122841

/-! ## A122841.P2964762359008872000

`dr(val(2*n-(n-1), 6))`
-/

namespace A122841.P2964762359008872000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 6 : ℤ)

end

end A122841.P2964762359008872000

namespace A122841

/-- `dr(val(2*n-(n-1), 6))` -/
def P2964762359008872000.Spec : Prop :=
  ∀ n, (P2964762359008872000.a n : ℤ) = A122841 (n + 1)

end A122841

/-! ## A122841.P11397524466864494010

`and(n, val(2*n-(n-1), 6))`
-/

namespace A122841.P11397524466864494010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (SequenceMachineLib.valuation ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat 6)

end

end A122841.P11397524466864494010

namespace A122841

/-- `and(n, val(2*n-(n-1), 6))` -/
def P11397524466864494010.Spec : Prop :=
  ∀ n, (P11397524466864494010.a n : ℤ) = A122841 (n + 1)

end A122841

/-! ## A122841.P872205900523380906

`Δ[A054895(n)]`
-/

namespace A122841.P872205900523380906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122841.P872205900523380906

namespace A122841

/-- `Δ[A054895(n)]` -/
def P872205900523380906.Spec : Prop :=
  ∀ n, P872205900523380906.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P8370655209588568485

`A373216(n+1)-1`
-/

namespace A122841.P8370655209588568485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373216 (n + 1) - 1

end

end A122841.P8370655209588568485

namespace A122841

/-- `A373216(n+1)-1` -/
def P8370655209588568485.Spec : Prop :=
  ∀ n, P8370655209588568485.a n = A122841 (n + 1)

theorem P8370655209588568485.correct : P8370655209588568485.Spec := by
  intro n
  simp only [A122841, Nat.add_sub_cancel, A122841.P8370655209588568485.a, A122841.P30360687531022372.a, A373216, A373216.P7487443510787612831.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122841

/-! ## A122841.P8438536920499295954

`ceil(ratio[A303824(n)])-1`
-/

namespace A122841.P8438536920499295954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A122841.P8438536920499295954

namespace A122841

/-- `ceil(ratio[A303824(n)])-1` -/
def P8438536920499295954.Spec : Prop :=
  ∀ n, P8438536920499295954.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P9531331475420581388

`A007814(A214681(n+1))`
-/

namespace A122841.P9531331475420581388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A214681 (n + 1)).toNat

end

end A122841.P9531331475420581388

namespace A122841

/-- `A007814(A214681(n+1))` -/
def P9531331475420581388.Spec : Prop :=
  ∀ n, P9531331475420581388.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P16087912054655673696

`A007814(A234959(n+1))`
-/

namespace A122841.P16087912054655673696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A234959 (n + 1)).toNat

end

end A122841.P16087912054655673696

namespace A122841

/-- `A007814(A234959(n+1))` -/
def P16087912054655673696.Spec : Prop :=
  ∀ n, P16087912054655673696.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P6370111906402031779

`A007949(A322361(n+1))`
-/

namespace A122841.P6370111906402031779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A322361 (n + 1)).toNat

end

end A122841.P6370111906402031779

namespace A122841

/-- `A007949(A322361(n+1))` -/
def P6370111906402031779.Spec : Prop :=
  ∀ n, P6370111906402031779.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P474907549739238871

`A007814(A330749(n+1))`
-/

namespace A122841.P474907549739238871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A330749 (n + 1)).toNat

end

end A122841.P474907549739238871

namespace A122841

/-- `A007814(A330749(n+1))` -/
def P474907549739238871.Spec : Prop :=
  ∀ n, P474907549739238871.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P13556403752431055340

`A025656(A322316(n+1))`
-/

namespace A122841.P13556403752431055340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025656 (A322316 (n + 1)).toNat

end

end A122841.P13556403752431055340

namespace A122841

/-- `A025656(A322316(n+1))` -/
def P13556403752431055340.Spec : Prop :=
  ∀ n, P13556403752431055340.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P1162700841255369250

`A050320(A065331(n+1))-1`
-/

namespace A122841.P1162700841255369250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A065331 (n + 1)).toNat - 1

end

end A122841.P1162700841255369250

namespace A122841

/-- `A050320(A065331(n+1))-1` -/
def P1162700841255369250.Spec : Prop :=
  ∀ n, P1162700841255369250.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P545258100656669923

`A169611(n+1)-A244417(n+1)`
-/

namespace A122841.P545258100656669923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (n + 1) - A244417 (n + 1)

end

end A122841.P545258100656669923

namespace A122841

/-- `A169611(n+1)-A244417(n+1)` -/
def P545258100656669923.Spec : Prop :=
  ∀ n, P545258100656669923.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P12438538773707777600

`A007814((n+1)/A244414(n+1))`
-/

namespace A122841.P12438538773707777600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A244414 (n + 1) : ℚ))).toNat

end

end A122841.P12438538773707777600

namespace A122841

/-- `A007814((n+1)/A244414(n+1))` -/
def P12438538773707777600.Spec : Prop :=
  ∀ n, P12438538773707777600.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P10439148584944198543

`A007949((n+1)/A244414(n+1))`
-/

namespace A122841.P10439148584944198543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A244414 (n + 1) : ℚ))).toNat

end

end A122841.P10439148584944198543

namespace A122841

/-- `A007949((n+1)/A244414(n+1))` -/
def P10439148584944198543.Spec : Prop :=
  ∀ n, P10439148584944198543.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P828732906865308477

`A007814((n+1)/A319626(n+1))`
-/

namespace A122841.P828732906865308477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A319626 (n + 1) : ℚ))).toNat

end

end A122841.P828732906865308477

namespace A122841

/-- `A007814((n+1)/A319626(n+1))` -/
def P828732906865308477.Spec : Prop :=
  ∀ n, P828732906865308477.a n = A122841 (n + 1)

end A122841

/-! ## A122841.P16201113595813762128

`A007814((n+1)/A329900(n+1))`
-/

namespace A122841.P16201113595813762128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A329900 (n + 1) : ℚ))).toNat

end

end A122841.P16201113595813762128

namespace A122841

/-- `A007814((n+1)/A329900(n+1))` -/
def P16201113595813762128.Spec : Prop :=
  ∀ n, P16201113595813762128.a n = A122841 (n + 1)

end A122841

/-!
# A122842: Square roots of the odd indexed terms of A038547.

The programs for A122842, there is no canonical definition to state claims against.
-/

/-! ## A122842.P10570459419506047096

`sqrt(A038547(2*n+1))`
-/

namespace A122842.P10570459419506047096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038547 (2 * n + 1) : ℝ)

end

end A122842.P10570459419506047096

/-! ## A122842.P938299955392382936

`A119265(∑[4*n]+1)`
-/

namespace A122842.P938299955392382936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119265 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A122842.P938299955392382936

/-! ## A122842.P1952453088992397006

`sqrt(A119265((2*n+1)*(n+1)))`
-/

namespace A122842.P1952453088992397006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A119265 ((2 * n + 1) * (n + 1)) : ℝ)

end

end A122842.P1952453088992397006

/-! ## A122842.P6019466582304620038

`or(1, A119265(A001844(n)))`
-/

namespace A122842.P6019466582304620038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A119265 (A001844 n).toNat)

end

end A122842.P6019466582304620038

/-! ## A122842.P3570452010128880174

`lcm(A098417(n+1), A119265(A001844(n)))`
-/

namespace A122842.P3570452010128880174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A098417 (n + 1)) (A119265 (A001844 n).toNat)

end

end A122842.P3570452010128880174

/-!
# A122844: Triangle read by rows: T[n,k] = the number of ascending runs of length at least k in the permutations of [n] for k <= n.

The programs for A122844, there is no canonical definition to state claims against.
-/

/-! ## A122844.P10979635900486922909

`T(n-1,k-1)+(T(n-1,k)-T(n-2,k-1))*row(n)+2*T(n-1,k)` with `a(0)=1`
-/

namespace A122844.P10979635900486922909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triRow n : ℤ) + 2 * SequenceMachineLib.triUp a n

end

end A122844.P10979635900486922909

/-! ## A122844.P17425832072621476815

`A094112(A014132(n+1)+1)-A094112(n+1)`
-/

namespace A122844.P17425832072621476815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094112 (A014132 (n + 1) + 1).toNat - A094112 (n + 1)

end

end A122844.P17425832072621476815

/-! ## A122844.P11514641549753419791

`A226167(n+1)+A025469(A006252(n))`
-/

namespace A122844.P11514641549753419791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (n + 1) + A025469 (A006252 n).toNat

end

end A122844.P11514641549753419791

/-! ## A122844.P9918331946914263802

`A144881(n+1)+A122875(A122897(n))`
-/

namespace A122844.P9918331946914263802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144881 (n + 1) + A122875 (A122897 n).toNat

end

end A122844.P9918331946914263802

/-! ## A122844.P3912946676588395621

`A226167(n+1)+A083896(A088793(n))`
-/

namespace A122844.P3912946676588395621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226167 (n + 1) + A083896 (A088793 n).toNat

end

end A122844.P3912946676588395621

/-!
# A122846: Sequence gives k numbers from A122839.

The programs for A122846, there is no canonical definition to state claims against.
-/

/-! ## A122846.P13386427807185896424

`A121647(A032555(n+1))²`
-/

namespace A122846.P13386427807185896424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121647 (A032555 (n + 1)).toNat ^ 2

end

end A122846.P13386427807185896424

/-! ## A122846.P14709539273777743569

`A121647(A078213(n+1))²`
-/

namespace A122846.P14709539273777743569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121647 (A078213 (n + 1)).toNat ^ 2

end

end A122846.P14709539273777743569

/-! ## A122846.P17632160065187337491

`(A121647(n+1)%A014602(n+1))²`
-/

namespace A122846.P17632160065187337491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121647 (n + 1)) (A014602 (n + 1)) ^ 2

end

end A122846.P17632160065187337491

/-! ## A122846.P9434559022338268521

`A123042(n+1)²%A083844(3*n+2)`
-/

namespace A122846.P9434559022338268521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123042 (n + 1) ^ 2) (A083844 (3 * n + 2))

end

end A122846.P9434559022338268521

/-! ## A122846.P3467415527012147296

`A121647(A032555(n+1))*A121647(n+1)`
-/

namespace A122846.P3467415527012147296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121647 (A032555 (n + 1)).toNat * A121647 (n + 1)

end

end A122846.P3467415527012147296

/-!
# A122847: a(0)=0. a(n) = a(n-1) + (sum of positive integers which are coprime to n, <= n and missing from {a(0),a(1),a(2),..,a(n-1)}).

The programs for A122847, there is no canonical definition to state claims against.
-/

/-! ## A122847.P11231229782192250062

`A147795(A147852(n)+A030101(n))`
-/

namespace A122847.P11231229782192250062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147795 (A147852 n + A030101 n).toNat

end

end A122847.P11231229782192250062

/-!
# A122848: Exponential Riordan array (1, x(1+x/2)).

The programs for A122848, the canonical program `A122848.P7462361831774650690` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122848 has offset 0).

The definition of A122848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122848.P7462361831774650690

`T(n-1,k-1)+(row(n)-1)*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122848

/-- `T(n-1,k-1)+(row(n)-1)*T(n-2,k-1)` -/
def P7462361831774650690.Spec : Prop :=
  ∀ n, P7462361831774650690.a n = A122848 n

theorem P7462361831774650690.correct : P7462361831774650690.Spec := by
  intro n
  simp only [A122848]

end A122848

/-! ## A122848.P5490002339064249252

`T(n-1,k-1)-(1-row(n))*T(n-2,k-1)` with `a(0)=1`
-/

namespace A122848.P5490002339064249252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2Left a n

end

end A122848.P5490002339064249252

namespace A122848

/-- `T(n-1,k-1)-(1-row(n))*T(n-2,k-1)` -/
def P5490002339064249252.Spec : Prop :=
  ∀ n, P5490002339064249252.a n = A122848 n

theorem P5490002339064249252.correct : P5490002339064249252.Spec := by
  intro n
  simp only [A122848, Nat.add_sub_cancel, A122848.P5490002339064249252.a, A122848.P7462361831774650690.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122848

/-! ## A122848.P8296716566247832255

`(2*col(n)-row(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A122848.P8296716566247832255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) + 1) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A122848.P8296716566247832255

namespace A122848

/-- `(2*col(n)-row(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P8296716566247832255.Spec : Prop :=
  ∀ n, P8296716566247832255.a n = A122848 n

end A122848

/-! ## A122848.P9703208104903831240

`A144299(∑[char[∑[n]]]²-(n+1))`
-/

namespace A122848.P9703208104903831240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A122848.P9703208104903831240

namespace A122848

/-- `A144299(∑[char[∑[n]]]²-(n+1))` -/
def P9703208104903831240.Spec : Prop :=
  ∀ n, P9703208104903831240.a n = A122848 n

end A122848

/-! ## A122848.P17838411305271883030

`lcm(A020985(n), A144299(A061579(n)))`
-/

namespace A122848.P17838411305271883030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A144299 (A061579 n).toNat)

end

end A122848.P17838411305271883030

namespace A122848

/-- `lcm(A020985(n), A144299(A061579(n)))` -/
def P17838411305271883030.Spec : Prop :=
  ∀ n, (P17838411305271883030.a n : ℤ) = A122848 n

end A122848

/-! ## A122848.P16837600387802468659

`or(A000007(n), A144299(A061579(n)))`
-/

namespace A122848.P16837600387802468659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A144299 (A061579 n).toNat)

end

end A122848.P16837600387802468659

namespace A122848

/-- `or(A000007(n), A144299(A061579(n)))` -/
def P16837600387802468659.Spec : Prop :=
  ∀ n, P16837600387802468659.a n = A122848 n

end A122848

/-! ## A122848.P80930880554739122

`A144299(A061579(n))*A145362(n+1)`
-/

namespace A122848.P80930880554739122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A061579 n).toNat * A145362 (n + 1)

end

end A122848.P80930880554739122

namespace A122848

/-- `A144299(A061579(n))*A145362(n+1)` -/
def P80930880554739122.Spec : Prop :=
  ∀ n, P80930880554739122.a n = A122848 n

end A122848

/-! ## A122848.P13452737656796107287

`or(char[2], A144299(A038722(n+2)))`
-/

namespace A122848.P13452737656796107287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A144299 (A038722 (n + 2)).toNat)

end

end A122848.P13452737656796107287

namespace A122848

/-- `or(char[2], A144299(A038722(n+2)))` -/
def P13452737656796107287.Spec : Prop :=
  ∀ n, P13452737656796107287.a n = A122848 n

end A122848

/-! ## A122848.P9746503429431464577

`A001221(A000430(n+1))*A144299(A038722(n+2))`
-/

namespace A122848.P9746503429431464577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000430 (n + 1)).toNat * A144299 (A038722 (n + 2)).toNat

end

end A122848.P9746503429431464577

namespace A122848

/-- `A001221(A000430(n+1))*A144299(A038722(n+2))` -/
def P9746503429431464577.Spec : Prop :=
  ∀ n, P9746503429431464577.a n = A122848 n

end A122848

/-! ## A122848.P9414562948001214470

`A144299(A038722(n+2))^A001221(A000961(n+1))`
-/

namespace A122848.P9414562948001214470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144299 (A038722 (n + 2)).toNat : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A122848.P9414562948001214470

namespace A122848

/-- `A144299(A038722(n+2))^A001221(A000961(n+1))` -/
def P9414562948001214470.Spec : Prop :=
  ∀ n, P9414562948001214470.a n = (A122848 n : ℚ)

end A122848

/-! ## A122848.P15003161482455651824

`A185296(n)/A059268(n)`
-/

namespace A122848.P15003161482455651824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185296 n : ℚ) / (A059268 n : ℚ)

end

end A122848.P15003161482455651824

namespace A122848

/-- `A185296(n)/A059268(n)` -/
def P15003161482455651824.Spec : Prop :=
  ∀ n, P15003161482455651824.a n = (A122848 n : ℚ)

end A122848

/-! ## A122848.P9946365116670321261

`A144299(A061579(n))*A266591(2*n)`
-/

namespace A122848.P9946365116670321261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 (A061579 n).toNat * A266591 (2 * n)

end

end A122848.P9946365116670321261

namespace A122848

/-- `A144299(A061579(n))*A266591(2*n)` -/
def P9946365116670321261.Spec : Prop :=
  ∀ n, P9946365116670321261.a n = A122848 n

end A122848

/-! ## A122848.P6338117060227002854

`A001498(n)/A113025(n)*A185296(n)`
-/

namespace A122848.P6338117060227002854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001498 n : ℚ) / (A113025 n : ℚ) * (A185296 n : ℚ)

end

end A122848.P6338117060227002854

namespace A122848

/-- `A001498(n)/A113025(n)*A185296(n)` -/
def P6338117060227002854.Spec : Prop :=
  ∀ n, P6338117060227002854.a n = (A122848 n : ℚ)

end A122848

/-! ## A122848.P7146387229560611555

`A144299(A061579(n))%A293321(n)`
-/

namespace A122848.P7146387229560611555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144299 (A061579 n).toNat) (A293321 n)

end

end A122848.P7146387229560611555

namespace A122848

/-- `A144299(A061579(n))%A293321(n)` -/
def P7146387229560611555.Spec : Prop :=
  ∀ n, P7146387229560611555.a n = A122848 n

end A122848

/-! ## A122848.P11488973420517587853

`A144299(A061579(n))^A093818(A004771(n))`
-/

namespace A122848.P11488973420517587853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144299 (A061579 n).toNat : ℚ) ^ (A093818 (A004771 n).toNat : ℤ)

end

end A122848.P11488973420517587853

namespace A122848

/-- `A144299(A061579(n))^A093818(A004771(n))` -/
def P11488973420517587853.Spec : Prop :=
  ∀ n, P11488973420517587853.a n = (A122848 n : ℚ)

end A122848

/-!
# A122849: Diagonal sums of Bessel related triangle A122848.

The programs for A122849, there is no canonical definition to state claims against.
-/

/-! ## A122849.P7243770786492063889

`A321405(n)-A347794(n)`
-/

namespace A122849.P7243770786492063889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 n - A347794 n

end

end A122849.P7243770786492063889

/-!
# A122850: Exponential Riordan array (1, sqrt(1+2x)-1).

The programs for A122850, the canonical program `A122850.P18149759153179096136` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122850 has offset 0).

The definition of A122850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1954 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122850.P16017966672710112533

`T(n-1,k-1)+(col(n)+2*(1-row(n)))*T(n-1,k)` with `a(0)=1`
-/

namespace A122850.P16017966672710112533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triCol n : ℤ) + 2 * (1 - (SequenceMachineLib.triRow n : ℤ))) * SequenceMachineLib.triUp a n

end

end A122850.P16017966672710112533

namespace A122850

/-- `T(n-1,k-1)+(col(n)+2*(1-row(n)))*T(n-1,k)` -/
def P16017966672710112533.Spec : Prop :=
  ∀ n, P16017966672710112533.a n = A122850 n

end A122850

/-! ## A122850.P9058486559327817944

`T(n-1,k-1)-(2*(row(n)-1)-col(n))*T(n-1,k)` with `a(0)=1`
-/

namespace A122850.P9058486559327817944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - (2 * ((SequenceMachineLib.triRow n : ℤ) - 1) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUp a n

end

end A122850.P9058486559327817944

namespace A122850

/-- `T(n-1,k-1)-(2*(row(n)-1)-col(n))*T(n-1,k)` -/
def P9058486559327817944.Spec : Prop :=
  ∀ n, P9058486559327817944.a n = A122850 n

end A122850

/-! ## A122850.P7938812776940429162

`(and(2, comp[∑[n]]+n)-1)*A132062(n)`
-/

namespace A122850.P7938812776940429162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A132062 n

end

end A122850.P7938812776940429162

namespace A122850

/-- `(and(2, comp[∑[n]]+n)-1)*A132062(n)` -/
def P7938812776940429162.Spec : Prop :=
  ∀ n, P7938812776940429162.a n = A122850 n

end A122850

/-! ## A122850.P18149759153179096136

`A097807(n)*A132062(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122850

/-- `A097807(n)*A132062(n)` -/
def P18149759153179096136.Spec : Prop :=
  ∀ n, P18149759153179096136.a n = A122850 n

theorem P18149759153179096136.correct : P18149759153179096136.Spec := by
  intro n
  simp only [A122850]

end A122850

/-! ## A122850.P10997504551213500424

`(-1)^A025581(n)*A132062(n)`
-/

namespace A122850.P10997504551213500424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A025581 n : ℤ) * (A132062 n : ℚ)

end

end A122850.P10997504551213500424

namespace A122850

/-- `(-1)^A025581(n)*A132062(n)` -/
def P10997504551213500424.Spec : Prop :=
  ∀ n, P10997504551213500424.a n = (A122850 n : ℚ)

end A122850

/-! ## A122850.P13212212667116726705

`A132062(abs(1-n)+1)/A097807(n)`
-/

namespace A122850.P13212212667116726705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132062 (|1 - (n : ℤ)| + 1).toNat : ℚ) / (A097807 n : ℚ)

end

end A122850.P13212212667116726705

namespace A122850

/-- `A132062(abs(1-n)+1)/A097807(n)` -/
def P13212212667116726705.Spec : Prop :=
  ∀ n, P13212212667116726705.a n = (A122850 n : ℚ)

end A122850

/-! ## A122850.P10929525956094453436

`A062157(A004736(n+1))*A132062(n)`
-/

namespace A122850.P10929525956094453436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A132062 n

end

end A122850.P10929525956094453436

namespace A122850

/-- `A062157(A004736(n+1))*A132062(n)` -/
def P10929525956094453436.Spec : Prop :=
  ∀ n, P10929525956094453436.a n = A122850 n

end A122850

/-! ## A122850.P12573011100952512453

`A008836(A130321(n))*A132062(n)`
-/

namespace A122850.P12573011100952512453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A132062 n

end

end A122850.P12573011100952512453

namespace A122850

/-- `A008836(A130321(n))*A132062(n)` -/
def P12573011100952512453.Spec : Prop :=
  ∀ n, P12573011100952512453.a n = A122850 n

end A122850

/-!
# A122851: Number triangle T(n,k) = C(k,n-k)*(n-k)!.

The programs for A122851, the canonical program `A122851.P1121750530332967238` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122851 has offset 0).

The definition of A122851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(col(n), row(n)-col(n))*(row(n)-col(n))!` (program `A122851.P1121750530332967238`, by `A122851.P1121750530332967238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122851.P1121750530332967238

`C(col(n), row(n)-col(n))*(row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122851

/-- `C(col(n), row(n)-col(n))*(row(n)-col(n))!` -/
def P1121750530332967238.Spec : Prop :=
  ∀ n, (P1121750530332967238.a n : ℤ) = A122851 n

theorem P1121750530332967238.correct : P1121750530332967238.Spec := by
  intro n
  simp only [A122851]

end A122851

/-! ## A122851.P10947040697025399926

`(row(n)-col(n))*T(n-2,k-1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A122851.P10947040697025399926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n

end

end A122851.P10947040697025399926

namespace A122851

/-- `(row(n)-col(n))*T(n-2,k-1)+T(n-1,k-1)` -/
def P10947040697025399926.Spec : Prop :=
  ∀ n, P10947040697025399926.a n = A122851 n

end A122851

/-! ## A122851.P6837282570117794550

`T(n-1,k-1)-(col(n)-row(n))*T(n-2,k-1)` with `a(0)=1`
-/

namespace A122851.P6837282570117794550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n - ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2Left a n

end

end A122851.P6837282570117794550

namespace A122851

/-- `T(n-1,k-1)-(col(n)-row(n))*T(n-2,k-1)` -/
def P6837282570117794550.Spec : Prop :=
  ∀ n, P6837282570117794550.a n = A122851 n

end A122851

/-! ## A122851.P10836801716501607563

`A004197(n)!*A026729(n)`
-/

namespace A122851.P10836801716501607563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004197 n).toNat : ℤ) * A026729 n

end

end A122851.P10836801716501607563

namespace A122851

/-- `A004197(n)!*A026729(n)` -/
def P10836801716501607563.Spec : Prop :=
  ∀ n, P10836801716501607563.a n = A122851 n

end A122851

/-! ## A122851.P10414145915986596206

`A000142(A048158(n+1))*A026729(n)`
-/

namespace A122851.P10414145915986596206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A048158 (n + 1)).toNat * A026729 n

end

end A122851.P10414145915986596206

namespace A122851

/-- `A000142(A048158(n+1))*A026729(n)` -/
def P10414145915986596206.Spec : Prop :=
  ∀ n, P10414145915986596206.a n = A122851 n

end A122851

/-! ## A122851.P17389094736764401525

`T(n-1,k-1)*T(n-1,k-1)+(col(n)-(T(n,k-1)+T(n-1,k-1)))*T(n-2,k-1)` with `a(0)=1`
-/

namespace A122851.P17389094736764401525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n * SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triLeft a n + SequenceMachineLib.triUpLeft a n)) * SequenceMachineLib.triUp2Left a n

end

end A122851.P17389094736764401525

namespace A122851

/-- `T(n-1,k-1)*T(n-1,k-1)+(col(n)-(T(n,k-1)+T(n-1,k-1)))*T(n-2,k-1)` -/
def P17389094736764401525.Spec : Prop :=
  ∀ n, P17389094736764401525.a n = A122851 n

end A122851

/-! ## A122851.P7770112449547501198

`(col(n)-T(n,k-1))*T(n-2,k-1)-(T(n-2,k-1)-T(n-1,k-1))*T(n-1,k-1)` with `a(0)=1`
-/

namespace A122851.P7770112449547501198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.triCol n : ℤ) - SequenceMachineLib.triLeft a n) * SequenceMachineLib.triUp2Left a n - (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triUpLeft a n) * SequenceMachineLib.triUpLeft a n

end

end A122851.P7770112449547501198

namespace A122851

/-- `(col(n)-T(n,k-1))*T(n-2,k-1)-(T(n-2,k-1)-T(n-1,k-1))*T(n-1,k-1)` -/
def P7770112449547501198.Spec : Prop :=
  ∀ n, P7770112449547501198.a n = A122851 n

end A122851

/-! ## A122851.P7180171389429697164

`A026729(n)*A119502(n)`
-/

namespace A122851.P7180171389429697164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A119502 n

end

end A122851.P7180171389429697164

namespace A122851

/-- `A026729(n)*A119502(n)` -/
def P7180171389429697164.Spec : Prop :=
  ∀ n, P7180171389429697164.a n = A122851 n

theorem P7180171389429697164.correct : P7180171389429697164.Spec := by
  intro n
  simp only [A122851, Nat.add_sub_cancel, A122851.P7180171389429697164.a, A122851.P1121750530332967238.a, A026729, A026729.P5007211458474426246.a, A119502, A119502.P14623475535698746152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A122851

/-! ## A122851.P1158496540533639476

`abs(A109466(n)*A119502(n))`
-/

namespace A122851.P1158496540533639476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109466 n * A119502 n|

end

end A122851.P1158496540533639476

namespace A122851

/-- `abs(A109466(n)*A119502(n))` -/
def P1158496540533639476.Spec : Prop :=
  ∀ n, P1158496540533639476.a n = A122851 n

end A122851

/-! ## A122851.P16378032462762223452

`A025581(n)!*A026729(n)`
-/

namespace A122851.P16378032462762223452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A026729 n

end

end A122851.P16378032462762223452

namespace A122851

/-- `A025581(n)!*A026729(n)` -/
def P16378032462762223452.Spec : Prop :=
  ∀ n, P16378032462762223452.a n = A122851 n

theorem P16378032462762223452.correct : P16378032462762223452.Spec := by
  intro n
  simp only [A122851, Nat.add_sub_cancel, A122851.P16378032462762223452.a, A122851.P1121750530332967238.a, A025581, A025581.P16112744757063613497.a, A026729, A026729.P5007211458474426246.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A122851

/-!
# A122852: Row sums of number triangle A122851.

The programs for A122852, the canonical program `A122852.P18082150126913929285` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122852 has offset 0).

The definition of A122852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122852.P17001132721259121384

`∑{#}[floor(n/2), C(n-#, #)*#!]`
-/

namespace A122852.P17001132721259121384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - (k : ℤ)).toNat k * Nat.factorial k

end

end A122852.P17001132721259121384

namespace A122852

/-- `∑{#}[floor(n/2), C(n-#, #)*#!]` -/
def P17001132721259121384.Spec : Prop :=
  ∀ n, (P17001132721259121384.a n : ℤ) = A122852 n

end A122852

/-! ## A122852.P18082150126913929285

`(a(n-1)+n*a(n-2)+1)/2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122852

/-- `(a(n-1)+n*a(n-2)+1)/2` -/
def P18082150126913929285.Spec : Prop :=
  ∀ n, P18082150126913929285.a n = (A122852 n : ℚ)

end A122852

/-! ## A122852.P3881725836066949484

`Δ[abs(A113291(n+2))]`
-/

namespace A122852.P3881725836066949484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113291 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122852.P3881725836066949484

namespace A122852

/-- `Δ[abs(A113291(n+2))]` -/
def P3881725836066949484.Spec : Prop :=
  ∀ n, P3881725836066949484.a n = A122852 n

end A122852

/-! ## A122852.P11948156903045268475

`A072374((2*n)%(n+1)+1)`
-/

namespace A122852.P11948156903045268475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (2 * n % (n + 1) + 1)

end

end A122852.P11948156903045268475

namespace A122852

/-- `A072374((2*n)%(n+1)+1)` -/
def P11948156903045268475.Spec : Prop :=
  ∀ n, P11948156903045268475.a n = A122852 n

end A122852

/-! ## A122852.P7496790731203030266

`A072374(val(2^n+4^n, 2))`
-/

namespace A122852.P7496790731203030266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (SequenceMachineLib.valuation (2 ^ n + 4 ^ n) 2)

end

end A122852.P7496790731203030266

namespace A122852

/-- `A072374(val(2^n+4^n, 2))` -/
def P7496790731203030266.Spec : Prop :=
  ∀ n, P7496790731203030266.a n = A122852 n

end A122852

/-! ## A122852.P12870505303662338132

`A072374(A028310(n))`
-/

namespace A122852.P12870505303662338132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (A028310 n).toNat

end

end A122852.P12870505303662338132

namespace A122852

/-- `A072374(A028310(n))` -/
def P12870505303662338132.Spec : Prop :=
  ∀ n, P12870505303662338132.a n = A122852 n

end A122852

/-! ## A122852.P13394284468330815630

`A072374(A123108(2*n))`
-/

namespace A122852.P13394284468330815630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (A123108 (2 * n)).toNat

end

end A122852.P13394284468330815630

namespace A122852

/-- `A072374(A123108(2*n))` -/
def P13394284468330815630.Spec : Prop :=
  ∀ n, P13394284468330815630.a n = A122852 n

end A122852

/-! ## A122852.P13778092959206024860

`A072374(A000007(n)+n)`
-/

namespace A122852.P13778092959206024860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (A000007 n + (n : ℤ)).toNat

end

end A122852.P13778092959206024860

namespace A122852

/-- `A072374(A000007(n)+n)` -/
def P13778092959206024860.Spec : Prop :=
  ∀ n, P13778092959206024860.a n = A122852 n

end A122852

/-! ## A122852.P12289290251491985955

`A072374(gcd(n, A071721(n)))`
-/

namespace A122852.P12289290251491985955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (Int.gcd (n : ℤ) (A071721 n))

end

end A122852.P12289290251491985955

namespace A122852

/-- `A072374(gcd(n, A071721(n)))` -/
def P12289290251491985955.Spec : Prop :=
  ∀ n, P12289290251491985955.a n = A122852 n

end A122852

/-! ## A122852.P3546285389551936282

`A072374(or(n, A000007(n)))`
-/

namespace A122852.P3546285389551936282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A122852.P3546285389551936282

namespace A122852

/-- `A072374(or(n, A000007(n)))` -/
def P3546285389551936282.Spec : Prop :=
  ∀ n, P3546285389551936282.a n = A122852 n

end A122852

/-! ## A122852.P7364417034248445833

`A072374(and(1, A035811(n))+n)`
-/

namespace A122852.P7364417034248445833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (Int.land 1 (A035811 n) + (n : ℤ)).toNat

end

end A122852.P7364417034248445833

namespace A122852

/-- `A072374(and(1, A035811(n))+n)` -/
def P7364417034248445833.Spec : Prop :=
  ∀ n, P7364417034248445833.a n = A122852 n

end A122852

/-! ## A122852.P3341539691020944748

`A072374(and(1, A035817(n))+n)`
-/

namespace A122852.P3341539691020944748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (Int.land 1 (A035817 n) + (n : ℤ)).toNat

end

end A122852.P3341539691020944748

namespace A122852

/-- `A072374(and(1, A035817(n))+n)` -/
def P3341539691020944748.Spec : Prop :=
  ∀ n, P3341539691020944748.a n = A122852 n

end A122852

/-! ## A122852.P10516118641426478988

`A072374(and(1, A035820(n))+n)`
-/

namespace A122852.P10516118641426478988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (Int.land 1 (A035820 n) + (n : ℤ)).toNat

end

end A122852.P10516118641426478988

namespace A122852

/-- `A072374(and(1, A035820(n))+n)` -/
def P10516118641426478988.Spec : Prop :=
  ∀ n, P10516118641426478988.a n = A122852 n

end A122852

/-! ## A122852.P15886592319263348444

`A072374(and(1, A035824(n))+n)`
-/

namespace A122852.P15886592319263348444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (Int.land 1 (A035824 n) + (n : ℤ)).toNat

end

end A122852.P15886592319263348444

namespace A122852

/-- `A072374(and(1, A035824(n))+n)` -/
def P15886592319263348444.Spec : Prop :=
  ∀ n, P15886592319263348444.a n = A122852 n

end A122852

/-! ## A122852.P17433096554041545966

`A072374(and(1, A035829(n))+n)`
-/

namespace A122852.P17433096554041545966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (Int.land 1 (A035829 n) + (n : ℤ)).toNat

end

end A122852.P17433096554041545966

namespace A122852

/-- `A072374(and(1, A035829(n))+n)` -/
def P17433096554041545966.Spec : Prop :=
  ∀ n, P17433096554041545966.a n = A122852 n

end A122852

/-! ## A122852.P15938157547860298661

`A072374(A007318(A000217(n)+1))`
-/

namespace A122852.P15938157547860298661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (A007318 (A000217 n + 1).toNat).toNat

end

end A122852.P15938157547860298661

namespace A122852

/-- `A072374(A007318(A000217(n)+1))` -/
def P15938157547860298661.Spec : Prop :=
  ∀ n, P15938157547860298661.a n = A122852 n

end A122852

/-! ## A122852.P7102516957293077352

`A072374(A123108(n+1)+A123108(n))`
-/

namespace A122852.P7102516957293077352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072374 (A123108 (n + 1) + A123108 n).toNat

end

end A122852.P7102516957293077352

namespace A122852

/-- `A072374(A123108(n+1)+A123108(n))` -/
def P7102516957293077352.Spec : Prop :=
  ∀ n, P7102516957293077352.a n = A122852 n

end A122852

/-! ## A122852.P15011897648622483721

`ceil((a(n-1)+n*a(n-2))/2)` with `a(0)=1, a(1)=1`
-/

namespace A122852.P15011897648622483721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 1) + (n : ℤ) * a (n - 2) : ℚ) / 2⌉

end

end A122852.P15011897648622483721

namespace A122852

/-- `ceil((a(n-1)+n*a(n-2))/2)` -/
def P15011897648622483721.Spec : Prop :=
  ∀ n, P15011897648622483721.a n = A122852 n

end A122852

/-! ## A122852.P6472104579632279816

`1-(1-a(n-1)-n*a(n-2))/2` with `a(0)=1, a(1)=1`
-/

namespace A122852.P6472104579632279816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (1 - a (n - 1) - (n : ℚ) * a (n - 2)) / 2

end

end A122852.P6472104579632279816

namespace A122852

/-- `1-(1-a(n-1)-n*a(n-2))/2` -/
def P6472104579632279816.Spec : Prop :=
  ∀ n, P6472104579632279816.a n = (A122852 n : ℚ)

end A122852

/-!
# A122853: Numbers k such that (3^k + 5^k)/8 = A074606(k)/8 is a prime.

The programs for A122853, there is no canonical definition to state claims against.
-/

/-! ## A122853.P16320348507262379888

`A179288(3^(n+1)+3)`
-/

namespace A122853.P16320348507262379888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179288 (3 ^ (n + 1) + 3)

end

end A122853.P16320348507262379888

/-! ## A122853.P15439332788111196209

`A078683(A063455(n+1))`
-/

namespace A122853.P15439332788111196209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (A063455 (n + 1)).toNat

end

end A122853.P15439332788111196209

/-!
# A122854: Expansion of phi(q)^2*psi(q)^4 in powers of q where phi(),psi() are Ramanujan theta functions.

The programs for A122854, the canonical program `A122854.P10160800689135839717` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122854 has offset 0).

The definition of A122854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122854.P10160800689135839717

`abs(A138502(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A122854

/-- `abs(A138502(n))` -/
def P10160800689135839717.Spec : Prop :=
  ∀ n, P10160800689135839717.a n = A122854 n

theorem P10160800689135839717.correct : P10160800689135839717.Spec := by
  intro n
  simp only [A122854]

end A122854

/-! ## A122854.P3818606642445586448

`A033999(n)*A138502(n)`
-/

namespace A122854.P3818606642445586448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138502 n

end

end A122854.P3818606642445586448

namespace A122854

/-- `A033999(n)*A138502(n)` -/
def P3818606642445586448.Spec : Prop :=
  ∀ n, P3818606642445586448.a n = A122854 n

end A122854

/-! ## A122854.P8739783102043558096

`gcd(A000038(n), A138502(n))`
-/

namespace A122854.P8739783102043558096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138502 n)

end

end A122854.P8739783102043558096

namespace A122854

/-- `gcd(A000038(n), A138502(n))` -/
def P8739783102043558096.Spec : Prop :=
  ∀ n, (P8739783102043558096.a n : ℤ) = A122854 n

end A122854

/-! ## A122854.P18278461870412246905

`lcm(A000034(n), A138502(n))`
-/

namespace A122854.P18278461870412246905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A138502 n)

end

end A122854.P18278461870412246905

namespace A122854

/-- `lcm(A000034(n), A138502(n))` -/
def P18278461870412246905.Spec : Prop :=
  ∀ n, (P18278461870412246905.a n : ℤ) = A122854 n

end A122854

/-! ## A122854.P18172562138045302945

`A050470(n+1)/A138501(n+1)*A138502(n)`
-/

namespace A122854.P18172562138045302945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050470 (n + 1) : ℚ) / (A138501 (n + 1) : ℚ) * (A138502 n : ℚ)

end

end A122854.P18172562138045302945

namespace A122854

/-- `A050470(n+1)/A138501(n+1)*A138502(n)` -/
def P18172562138045302945.Spec : Prop :=
  ∀ n, P18172562138045302945.a n = (A122854 n : ℚ)

end A122854

/-! ## A122854.P14418303040300749649

`A050458(Δ[n²])`
-/

namespace A122854.P14418303040300749649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122854.P14418303040300749649

namespace A122854

/-- `A050458(Δ[n²])` -/
def P14418303040300749649.Spec : Prop :=
  ∀ n, P14418303040300749649.a n = A122854 n

end A122854

/-! ## A122854.P4077349168193150786

`A050470(Δ[n²])`
-/

namespace A122854.P4077349168193150786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050470 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122854.P4077349168193150786

namespace A122854

/-- `A050470(Δ[n²])` -/
def P4077349168193150786.Spec : Prop :=
  ∀ n, P4077349168193150786.a n = A122854 n

end A122854

/-! ## A122854.P5963372009352613071

`A138501(Δ[n²])`
-/

namespace A122854.P5963372009352613071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138501 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122854.P5963372009352613071

namespace A122854

/-- `A138501(Δ[n²])` -/
def P5963372009352613071.Spec : Prop :=
  ∀ n, P5963372009352613071.a n = A122854 n

end A122854

/-! ## A122854.P14288860168586160731

`abs(A002173(Δ[n²]))`
-/

namespace A122854.P14288860168586160731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A122854.P14288860168586160731

namespace A122854

/-- `abs(A002173(Δ[n²]))` -/
def P14288860168586160731.Spec : Prop :=
  ∀ n, P14288860168586160731.a n = A122854 n

end A122854

/-! ## A122854.P4999697952996579139

`abs(A138501(2*n+1))`
-/

namespace A122854.P4999697952996579139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138501 (2 * n + 1)|

end

end A122854.P4999697952996579139

namespace A122854

/-- `abs(A138501(2*n+1))` -/
def P4999697952996579139.Spec : Prop :=
  ∀ n, P4999697952996579139.a n = A122854 n

end A122854

/-! ## A122854.P4810942404374662202

`abs(A138505(2*n+1))`
-/

namespace A122854.P4810942404374662202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138505 (2 * n + 1)|

end

end A122854.P4810942404374662202

namespace A122854

/-- `abs(A138505(2*n+1))` -/
def P4810942404374662202.Spec : Prop :=
  ∀ n, P4810942404374662202.a n = A122854 n

end A122854

/-! ## A122854.P1080429372337245153

`A056594(2*n)*A138502(n)`
-/

namespace A122854.P1080429372337245153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A138502 n

end

end A122854.P1080429372337245153

namespace A122854

/-- `A056594(2*n)*A138502(n)` -/
def P1080429372337245153.Spec : Prop :=
  ∀ n, P1080429372337245153.a n = A122854 n

end A122854

/-! ## A122854.P5590631459703005136

`lcm(A002173(Δ[n²]), A176895(n))`
-/

namespace A122854.P5590631459703005136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002173 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A176895 n)

end

end A122854.P5590631459703005136

namespace A122854

/-- `lcm(A002173(Δ[n²]), A176895(n))` -/
def P5590631459703005136.Spec : Prop :=
  ∀ n, (P5590631459703005136.a n : ℤ) = A122854 n

end A122854

/-! ## A122854.P7797362919977069112

`A002173(2*n+1)*A033999(n)`
-/

namespace A122854.P7797362919977069112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (2 * n + 1) * A033999 n

end

end A122854.P7797362919977069112

namespace A122854

/-- `A002173(2*n+1)*A033999(n)` -/
def P7797362919977069112.Spec : Prop :=
  ∀ n, P7797362919977069112.a n = A122854 n

end A122854

/-! ## A122854.P14837657276011988225

`A033999(n)*A138505(2*n+1)`
-/

namespace A122854.P14837657276011988225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138505 (2 * n + 1)

end

end A122854.P14837657276011988225

namespace A122854

/-- `A033999(n)*A138505(2*n+1)` -/
def P14837657276011988225.Spec : Prop :=
  ∀ n, P14837657276011988225.a n = A122854 n

end A122854

/-! ## A122854.P3025702741435586171

`A101455(2*n+1)*A138502(n)`
-/

namespace A122854.P3025702741435586171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (2 * n + 1) * A138502 n

end

end A122854.P3025702741435586171

namespace A122854

/-- `A101455(2*n+1)*A138502(n)` -/
def P3025702741435586171.Spec : Prop :=
  ∀ n, P3025702741435586171.a n = A122854 n

end A122854

/-! ## A122854.P5929525035127518321

`lcm(A002173(2*n+1), A014709(n))`
-/

namespace A122854.P5929525035127518321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002173 (2 * n + 1)) (A014709 n)

end

end A122854.P5929525035127518321

namespace A122854

/-- `lcm(A002173(2*n+1), A014709(n))` -/
def P5929525035127518321.Spec : Prop :=
  ∀ n, (P5929525035127518321.a n : ℤ) = A122854 n

end A122854

/-! ## A122854.P2531966070464601832

`lcm(A020985(n), A138505(2*n+1))`
-/

namespace A122854.P2531966070464601832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A138505 (2 * n + 1))

end

end A122854.P2531966070464601832

namespace A122854

/-- `lcm(A020985(n), A138505(2*n+1))` -/
def P2531966070464601832.Spec : Prop :=
  ∀ n, (P2531966070464601832.a n : ℤ) = A122854 n

end A122854

/-! ## A122854.P15574571631828785844

`A002173(2*n+1)*A056594(2*n)`
-/

namespace A122854.P15574571631828785844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (2 * n + 1) * A056594 (2 * n)

end

end A122854.P15574571631828785844

namespace A122854

/-- `A002173(2*n+1)*A056594(2*n)` -/
def P15574571631828785844.Spec : Prop :=
  ∀ n, P15574571631828785844.a n = A122854 n

end A122854

/-! ## A122854.P1469002277838371016

`A056594(2*n)*A138505(2*n+1)`
-/

namespace A122854.P1469002277838371016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A138505 (2 * n + 1)

end

end A122854.P1469002277838371016

namespace A122854

/-- `A056594(2*n)*A138505(2*n+1)` -/
def P1469002277838371016.Spec : Prop :=
  ∀ n, P1469002277838371016.a n = A122854 n

end A122854

/-!
# A122855: Expansion of (phi(q^3)phi(q^5) + phi(q)phi(q^15))/2 in powers of q where phi(q) is a Ramanujan theta function.

The programs for A122855, the canonical program `A122855.P8470596010546787488` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122855 has offset 0).

The definition of A122855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122855.P8470596010546787488

`A260649((2*n)%(n+1)+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A122855

/-- `A260649((2*n)%(n+1)+1)` -/
def P8470596010546787488.Spec : Prop :=
  ∀ n, P8470596010546787488.a n = A122855 n

theorem P8470596010546787488.correct : P8470596010546787488.Spec := by
  intro n
  simp only [A122855]

end A122855

/-! ## A122855.P13583929837272881061

`A260649(n-(n+2)%(n+1)+1)`
-/

namespace A122855.P13583929837272881061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 ((n : ℤ) - (((n + 2) % (n + 1) : ℕ) : ℤ) + 1).toNat

end

end A122855.P13583929837272881061

namespace A122855

/-- `A260649(n-(n+2)%(n+1)+1)` -/
def P13583929837272881061.Spec : Prop :=
  ∀ n, P13583929837272881061.a n = A122855 n

end A122855

/-! ## A122855.P1067756792475666805

`A260649(A028310(n))`
-/

namespace A122855.P1067756792475666805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A028310 n).toNat

end

end A122855.P1067756792475666805

namespace A122855

/-- `A260649(A028310(n))` -/
def P1067756792475666805.Spec : Prop :=
  ∀ n, P1067756792475666805.a n = A122855 n

end A122855

/-! ## A122855.P14743203830233910160

`(A260671(n)+A192323(n))/2`
-/

namespace A122855.P14743203830233910160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 n + A192323 n : ℚ) / 2

end

end A122855.P14743203830233910160

namespace A122855

/-- `(A260671(n)+A192323(n))/2` -/
def P14743203830233910160.Spec : Prop :=
  ∀ n, P14743203830233910160.a n = (A122855 n : ℚ)

end A122855

/-! ## A122855.P4986404420633774913

`A260649(n)+A102677(a(A077267(n)))` with `a(0)=1`
-/

namespace A122855.P4986404420633774913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260649 n + A102677 (a (A077267 n).toNat).toNat

end

end A122855.P4986404420633774913

namespace A122855

/-- `A260649(n)+A102677(a(A077267(n)))` -/
def P4986404420633774913.Spec : Prop :=
  ∀ n, P4986404420633774913.a n = A122855 n

end A122855

/-! ## A122855.P9459361688107231412

`A260649(n)+A102677(a(A102677(n)))` with `a(0)=1`
-/

namespace A122855.P9459361688107231412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260649 n + A102677 (a (A102677 n).toNat).toNat

end

end A122855.P9459361688107231412

namespace A122855

/-- `A260649(n)+A102677(a(A102677(n)))` -/
def P9459361688107231412.Spec : Prop :=
  ∀ n, P9459361688107231412.a n = A122855 n

end A122855

/-! ## A122855.P8208805697476907729

`A260649(A008486(n))`
-/

namespace A122855.P8208805697476907729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A008486 n).toNat

end

end A122855.P8208805697476907729

namespace A122855

/-- `A260649(A008486(n))` -/
def P8208805697476907729.Spec : Prop :=
  ∀ n, P8208805697476907729.a n = A122855 n

end A122855

/-! ## A122855.P7014417671443962566

`(A192323(A008585(n))+A192323(n))/2`
-/

namespace A122855.P7014417671443962566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192323 (A008585 n).toNat + A192323 n : ℚ) / 2

end

end A122855.P7014417671443962566

namespace A122855

/-- `(A192323(A008585(n))+A192323(n))/2` -/
def P7014417671443962566.Spec : Prop :=
  ∀ n, P7014417671443962566.a n = (A122855 n : ℚ)

end A122855

/-! ## A122855.P15000360527899988095

`A260649(A008706(n))`
-/

namespace A122855.P15000360527899988095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (A008706 n).toNat

end

end A122855.P15000360527899988095

namespace A122855

/-- `A260649(A008706(n))` -/
def P15000360527899988095.Spec : Prop :=
  ∀ n, P15000360527899988095.a n = A122855 n

end A122855

/-! ## A122855.P401709942281444666

`(A192323(A008587(n))+A192323(n))/2`
-/

namespace A122855.P401709942281444666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192323 (A008587 n).toNat + A192323 n : ℚ) / 2

end

end A122855.P401709942281444666

namespace A122855

/-- `(A192323(A008587(n))+A192323(n))/2` -/
def P401709942281444666.Spec : Prop :=
  ∀ n, P401709942281444666.a n = (A122855 n : ℚ)

end A122855

/-! ## A122855.P241253152134483399

`(A192323(n)+A192323(A283442(n)))/2`
-/

namespace A122855.P241253152134483399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192323 n + A192323 (A283442 n).toNat : ℚ) / 2

end

end A122855.P241253152134483399

namespace A122855

/-- `(A192323(n)+A192323(A283442(n)))/2` -/
def P241253152134483399.Spec : Prop :=
  ∀ n, P241253152134483399.a n = (A122855 n : ℚ)

end A122855

/-! ## A122855.P11248100338653351356

`(A260671(n)+A260671(A283442(n)))/2`
-/

namespace A122855.P11248100338653351356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 n + A260671 (A283442 n).toNat : ℚ) / 2

end

end A122855.P11248100338653351356

namespace A122855

/-- `(A260671(n)+A260671(A283442(n)))/2` -/
def P11248100338653351356.Spec : Prop :=
  ∀ n, P11248100338653351356.a n = (A122855 n : ℚ)

end A122855

/-! ## A122855.P6345575924377459932

`(A260671(A008587(n))+A260671(n))/2`
-/

namespace A122855.P6345575924377459932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 (A008587 n).toNat + A260671 n : ℚ) / 2

end

end A122855.P6345575924377459932

namespace A122855

/-- `(A260671(A008587(n))+A260671(n))/2` -/
def P6345575924377459932.Spec : Prop :=
  ∀ n, P6345575924377459932.a n = (A122855 n : ℚ)

end A122855

/-! ## A122855.P8191552152778162315

`(A192323(n)+A192323(A305548(n)))/2`
-/

namespace A122855.P8191552152778162315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192323 n + A192323 (A305548 n).toNat : ℚ) / 2

end

end A122855.P8191552152778162315

namespace A122855

/-- `(A192323(n)+A192323(A305548(n)))/2` -/
def P8191552152778162315.Spec : Prop :=
  ∀ n, P8191552152778162315.a n = (A122855 n : ℚ)

end A122855

/-!
# A122856: Expansion of f(x, x^5)^2 in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A122856, the canonical program `A122856.P16127170756745905991` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122856 has offset 0).

The definition of A122856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122856.P11429872934262546671

`(-1)^n*A258278(n)`
-/

namespace A122856.P11429872934262546671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258278 n

end

end A122856.P11429872934262546671

namespace A122856

/-- `(-1)^n*A258278(n)` -/
def P11429872934262546671.Spec : Prop :=
  ∀ n, P11429872934262546671.a n = A122856 n

end A122856

/-! ## A122856.P16127170756745905991

`A002654(3*n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A122856

/-- `A002654(3*n+2)` -/
def P16127170756745905991.Spec : Prop :=
  ∀ n, P16127170756745905991.a n = A122856 n

theorem P16127170756745905991.correct : P16127170756745905991.Spec := by
  intro n
  simp only [A122856]

end A122856

/-! ## A122856.P2915716646295770690

`A035154(3*n+2)`
-/

namespace A122856.P2915716646295770690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (3 * n + 2)

end

end A122856.P2915716646295770690

namespace A122856

/-- `A035154(3*n+2)` -/
def P2915716646295770690.Spec : Prop :=
  ∀ n, P2915716646295770690.a n = A122856 n

end A122856

/-! ## A122856.P10019227418883117551

`A113446(3*n+2)`
-/

namespace A122856.P10019227418883117551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (3 * n + 2)

end

end A122856.P10019227418883117551

namespace A122856

/-- `A113446(3*n+2)` -/
def P10019227418883117551.Spec : Prop :=
  ∀ n, P10019227418883117551.a n = A122856 n

end A122856

/-! ## A122856.P17563132762082284235

`abs(A258278(n))`
-/

namespace A122856.P17563132762082284235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258278 n|

end

end A122856.P17563132762082284235

namespace A122856

/-- `abs(A258278(n))` -/
def P17563132762082284235.Spec : Prop :=
  ∀ n, P17563132762082284235.a n = A122856 n

end A122856

/-! ## A122856.P18281911143514356887

`gcd(A000038(n), A258278(n))`
-/

namespace A122856.P18281911143514356887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258278 n)

end

end A122856.P18281911143514356887

namespace A122856

/-- `gcd(A000038(n), A258278(n))` -/
def P18281911143514356887.Spec : Prop :=
  ∀ n, (P18281911143514356887.a n : ℤ) = A122856 n

end A122856

/-! ## A122856.P16895084287614731280

`lcm(A000034(n), A258278(n))`
-/

namespace A122856.P16895084287614731280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A258278 n)

end

end A122856.P16895084287614731280

namespace A122856

/-- `lcm(A000034(n), A258278(n))` -/
def P16895084287614731280.Spec : Prop :=
  ∀ n, (P16895084287614731280.a n : ℤ) = A122856 n

end A122856

/-! ## A122856.P7912113826911625598

`A258278(n)*A309873(n+1)`
-/

namespace A122856.P7912113826911625598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258278 n * A309873 (n + 1)

end

end A122856.P7912113826911625598

namespace A122856

/-- `A258278(n)*A309873(n+1)` -/
def P7912113826911625598.Spec : Prop :=
  ∀ n, P7912113826911625598.a n = A122856 n

end A122856

/-! ## A122856.P17411203650228500990

`A116604(A173732(n))`
-/

namespace A122856.P17411203650228500990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (A173732 n).toNat

end

end A122856.P17411203650228500990

namespace A122856

/-- `A116604(A173732(n))` -/
def P17411203650228500990.Spec : Prop :=
  ∀ n, P17411203650228500990.a n = A122856 n

end A122856

/-! ## A122856.P6314056444068313069

`A122865(Δ[n²])`
-/

namespace A122856.P6314056444068313069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122856.P6314056444068313069

namespace A122856

/-- `A122865(Δ[n²])` -/
def P6314056444068313069.Spec : Prop :=
  ∀ n, P6314056444068313069.a n = A122856 n

end A122856

/-! ## A122856.P312296817584401409

`abs(A258277(2*n+1))`
-/

namespace A122856.P312296817584401409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258277 (2 * n + 1)|

end

end A122856.P312296817584401409

namespace A122856

/-- `abs(A258277(2*n+1))` -/
def P312296817584401409.Spec : Prop :=
  ∀ n, P312296817584401409.a n = A122856 n

end A122856

/-! ## A122856.P8758266969875736977

`A000007(n+1)-A258277(2*n+1)`
-/

namespace A122856.P8758266969875736977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A258277 (2 * n + 1)

end

end A122856.P8758266969875736977

namespace A122856

/-- `A000007(n+1)-A258277(2*n+1)` -/
def P8758266969875736977.Spec : Prop :=
  ∀ n, P8758266969875736977.a n = A122856 n

end A122856

/-! ## A122856.P1075752218928271592

`lcm(A006466(2*n+1), A258277(2*n+1))`
-/

namespace A122856.P1075752218928271592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 (2 * n + 1)) (A258277 (2 * n + 1))

end

end A122856.P1075752218928271592

namespace A122856

/-- `lcm(A006466(2*n+1), A258277(2*n+1))` -/
def P1075752218928271592.Spec : Prop :=
  ∀ n, (P1075752218928271592.a n : ℤ) = A122856 n

end A122856

/-! ## A122856.P9282019767375183277

`A000925(3*n+2)`
-/

namespace A122856.P9282019767375183277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (3 * n + 2)

end

end A122856.P9282019767375183277

namespace A122856

/-- `A000925(3*n+2)` -/
def P9282019767375183277.Spec : Prop :=
  ∀ n, P9282019767375183277.a n = A122856 n

end A122856

/-! ## A122856.P6784622163542138431

`A063725(3*n+2)`
-/

namespace A122856.P6784622163542138431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (3 * n + 2)

end

end A122856.P6784622163542138431

namespace A122856

/-- `A063725(3*n+2)` -/
def P6784622163542138431.Spec : Prop :=
  ∀ n, P6784622163542138431.a n = A122856 n

end A122856

/-! ## A122856.P3775468087237000222

`A122864(3*n+2)`
-/

namespace A122856.P3775468087237000222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122864 (3 * n + 2)

end

end A122856.P3775468087237000222

namespace A122856

/-- `A122864(3*n+2)` -/
def P3775468087237000222.Spec : Prop :=
  ∀ n, P3775468087237000222.a n = A122856 n

end A122856

/-! ## A122856.P7593527370182964429

`A125061(3*n+2)`
-/

namespace A122856.P7593527370182964429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 (3 * n + 2)

end

end A122856.P7593527370182964429

namespace A122856

/-- `A125061(3*n+2)` -/
def P7593527370182964429.Spec : Prop :=
  ∀ n, P7593527370182964429.a n = A122856 n

end A122856

/-! ## A122856.P1001078777166276211

`A138950(3*n+2)`
-/

namespace A122856.P1001078777166276211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (3 * n + 2)

end

end A122856.P1001078777166276211

namespace A122856

/-- `A138950(3*n+2)` -/
def P1001078777166276211.Spec : Prop :=
  ∀ n, P1001078777166276211.a n = A122856 n

end A122856

/-! ## A122856.P3650416728116712605

`A163746(3*n+2)`
-/

namespace A122856.P3650416728116712605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (3 * n + 2)

end

end A122856.P3650416728116712605

namespace A122856

/-- `A163746(3*n+2)` -/
def P3650416728116712605.Spec : Prop :=
  ∀ n, P3650416728116712605.a n = A122856 n

end A122856

/-! ## A122856.P3009556501823667525

`A258256(3*n+2)`
-/

namespace A122856.P3009556501823667525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258256 (3 * n + 2)

end

end A122856.P3009556501823667525

namespace A122856

/-- `A258256(3*n+2)` -/
def P3009556501823667525.Spec : Prop :=
  ∀ n, P3009556501823667525.a n = A122856 n

end A122856

/-!
# A122857: Expansion of (phi(q)^2 + phi(q^3)^2) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A122857, there is no canonical definition to state claims against.
-/

/-! ## A122857.P9862869293638595241

`(-1)^n*A132003(n)`
-/

namespace A122857.P9862869293638595241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132003 n

end

end A122857.P9862869293638595241

/-! ## A122857.P10477448882057954088

`abs(A132003(n))`
-/

namespace A122857.P10477448882057954088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132003 n|

end

end A122857.P10477448882057954088

/-! ## A122857.P905233171783135669

`gcd(A000038(n), A132003(n))`
-/

namespace A122857.P905233171783135669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A132003 n)

end

end A122857.P905233171783135669

/-! ## A122857.P9917939040723483410

`lcm(A000034(n), A132003(n))`
-/

namespace A122857.P9917939040723483410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A132003 n)

end

end A122857.P9917939040723483410

/-! ## A122857.P2720853647469125238

`A132003(2*n)`
-/

namespace A122857.P2720853647469125238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132003 (2 * n)

end

end A122857.P2720853647469125238

/-! ## A122857.P14808650792853276103

`gcd(A138951(3*n), A138951(n))`
-/

namespace A122857.P14808650792853276103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138951 (3 * n)) (A138951 n)

end

end A122857.P14808650792853276103

/-! ## A122857.P8041688581454554485

`(A004018(n)+A004018(3*n))/2`
-/

namespace A122857.P8041688581454554485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004018 n + A004018 (3 * n) : ℚ) / 2

end

end A122857.P8041688581454554485

/-! ## A122857.P1948928544994547114

`gcd(2*A138745(3*n), A004018(n))`
-/

namespace A122857.P1948928544994547114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A138745 (3 * n)) (A004018 n)

end

end A122857.P1948928544994547114

/-! ## A122857.P11966998355918842671

`2*A138745(2*n)-A004018(3*n)`
-/

namespace A122857.P11966998355918842671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138745 (2 * n) - A004018 (3 * n)

end

end A122857.P11966998355918842671

/-! ## A122857.P9472020945406505979

`A001281(A004018(3*n)+A004018(n))`
-/

namespace A122857.P9472020945406505979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004018 (3 * n) + A004018 n).toNat

end

end A122857.P9472020945406505979

/-! ## A122857.P14244871455092639628

`A004526(A004018(3*n)+A004018(n))`
-/

namespace A122857.P14244871455092639628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004018 (3 * n) + A004018 n).toNat

end

end A122857.P14244871455092639628

/-! ## A122857.P2775807890048580440

`(A125061(A008458(n))+A125061(n))/2`
-/

namespace A122857.P2775807890048580440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125061 (A008458 n).toNat + A125061 n : ℚ) / 2

end

end A122857.P2775807890048580440

/-!
# A122858: Expansion of E(k) * K(k) * (2/Pi)^2 in powers of q^2 where E(), K() are complete elliptic integrals and the nome q = exp( -Pi * K(k') / K(k)).

The programs for A122858, there is no canonical definition to state claims against.
-/

/-! ## A122858.P12438998033544308720

`(-1)^n*A143336(n)`
-/

namespace A122858.P12438998033544308720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A143336 n

end

end A122858.P12438998033544308720

/-! ## A122858.P350862484193377023

`A143336(char[1]+n)/(-1)^n`
-/

namespace A122858.P350862484193377023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143336 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A122858.P350862484193377023

/-! ## A122858.P13541585454860883225

`floor(A143336(n)/A033999(n))`
-/

namespace A122858.P13541585454860883225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143336 n : ℚ) / (A033999 n : ℚ)⌋

end

end A122858.P13541585454860883225

/-! ## A122858.P15844889372878559313

`A143336(n)*A164677(2*n+1)`
-/

namespace A122858.P15844889372878559313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143336 n * A164677 (2 * n + 1)

end

end A122858.P15844889372878559313

/-! ## A122858.P13658392017994200621

`A143336(n)%A167742(n+1)*A033999(n)`
-/

namespace A122858.P13658392017994200621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143336 n) (A167742 (n + 1)) * A033999 n

end

end A122858.P13658392017994200621

/-! ## A122858.P1723588818296451849

`A143336(n)*A197870(∑[n])`
-/

namespace A122858.P1723588818296451849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143336 n * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122858.P1723588818296451849

/-!
# A122859: Expansion of phi(-q)^3 / phi(-q^3) in powers of q where phi() is a Ramanujan theta function.

The programs for A122859, there is no canonical definition to state claims against.
-/

/-! ## A122859.P11719212310499489119

`(-1)^n*A113660(n)`
-/

namespace A122859.P11719212310499489119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113660 n

end

end A122859.P11719212310499489119

/-! ## A122859.P14581439413605726120

`A113660(n)/A033999(n)`
-/

namespace A122859.P14581439413605726120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113660 n : ℚ) / (A033999 n : ℚ)

end

end A122859.P14581439413605726120

/-! ## A122859.P11000970649288125581

`A113660(n)/(1-A010673(n))`
-/

namespace A122859.P11000970649288125581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113660 n : ℚ) / (1 - A010673 n : ℚ)

end

end A122859.P11000970649288125581

/-! ## A122859.P16254530203232334902

`2*A033716(2*n)-A033716(4*n)`
-/

namespace A122859.P16254530203232334902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033716 (2 * n) - A033716 (4 * n)

end

end A122859.P16254530203232334902

/-! ## A122859.P1294389545784984322

`2*A217220(2*n)-A217220(4*n)`
-/

namespace A122859.P1294389545784984322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217220 (2 * n) - A217220 (4 * n)

end

end A122859.P1294389545784984322

/-! ## A122859.P3885271753044871735

`A244339(n)+A253623(n)-A004016(n)`
-/

namespace A122859.P3885271753044871735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244339 n + (A253623 n - A004016 n)

end

end A122859.P3885271753044871735

/-! ## A122859.P6806933993650205852

`2*A004016(2*n)-A004016(n)`
-/

namespace A122859.P6806933993650205852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004016 (2 * n) - A004016 n

end

end A122859.P6806933993650205852

/-! ## A122859.P18349027741780135844

`2*A180318(2*n)-A180318(4*n)`
-/

namespace A122859.P18349027741780135844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180318 (2 * n) - A180318 (4 * n)

end

end A122859.P18349027741780135844

/-! ## A122859.P17084444861134640930

`A113660(n*A000034(n)²)`
-/

namespace A122859.P17084444861134640930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113660 ((n : ℤ) * A000034 n ^ 2).toNat

end

end A122859.P17084444861134640930

/-! ## A122859.P12785614553414556433

`2*A244339(4*n)-A244339(2*n)`
-/

namespace A122859.P12785614553414556433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244339 (4 * n) - A244339 (2 * n)

end

end A122859.P12785614553414556433

/-! ## A122859.P11114762481070972074

`A113660(4*n)`
-/

namespace A122859.P11114762481070972074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113660 (4 * n)

end

end A122859.P11114762481070972074

/-! ## A122859.P7828518548920038325

`2*A115978(2*n)-A115978(4*n)`
-/

namespace A122859.P7828518548920038325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115978 (2 * n) - A115978 (4 * n)

end

end A122859.P7828518548920038325

/-! ## A122859.P6907335867909996938

`A227354(2*n)`
-/

namespace A122859.P6907335867909996938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227354 (2 * n)

end

end A122859.P6907335867909996938

/-! ## A122859.P3725514857140196817

`A227354(n+n)%A236443(n+1)`
-/

namespace A122859.P3725514857140196817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227354 (n + n)) (A236443 (n + 1))

end

end A122859.P3725514857140196817

/-! ## A122859.P16462895672729320534

`A205972(n)/A324969(n+1)`
-/

namespace A122859.P16462895672729320534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205972 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A122859.P16462895672729320534

/-! ## A122859.P10162992852890294088

`A034896(n)/A205971(n)*A205972(n)`
-/

namespace A122859.P10162992852890294088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A205971 n : ℚ) * (A205972 n : ℚ)

end

end A122859.P10162992852890294088

/-! ## A122859.P10527113988553464856

`A109041(n)/A205973(n)*A205972(n)`
-/

namespace A122859.P10527113988553464856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109041 n : ℚ) / (A205973 n : ℚ) * (A205972 n : ℚ)

end

end A122859.P10527113988553464856

/-! ## A122859.P15291918613001766514

`A109041(n)*A205972(n)/A205973(n)`
-/

namespace A122859.P15291918613001766514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109041 n * A205972 n : ℚ) / (A205973 n : ℚ)

end

end A122859.P15291918613001766514

/-! ## A122859.P11722116460544742656

`A209452(n)/A215928(n)`
-/

namespace A122859.P11722116460544742656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209452 n : ℚ) / (A215928 n : ℚ)

end

end A122859.P11722116460544742656

/-! ## A122859.P15278838650624571097

`A209452(n)/gcd(A000129(n), A209452(n))`
-/

namespace A122859.P15278838650624571097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209452 n : ℚ) / (Int.gcd (A000129 n) (A209452 n) : ℚ)

end

end A122859.P15278838650624571097

/-!
# A122860: Expansion of (1 - phi(-q)^3 / phi(-q^3)) / 6 in powers of q where phi() is a Ramanujan theta function.

The programs for A122860, the canonical program `A122860.P11540737575163240451` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122860 has offset 1).

The definition of A122860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122860.P4879150951127733589

`A115235(A038502(n+1))`
-/

namespace A122860.P4879150951127733589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115235 (A038502 (n + 1)).toNat

end

end A122860.P4879150951127733589

namespace A122860

/-- `A115235(A038502(n+1))` -/
def P4879150951127733589.Spec : Prop :=
  ∀ n, P4879150951127733589.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P3897405601090138652

`A033999(n)*A113661(n+1)`
-/

namespace A122860.P3897405601090138652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113661 (n + 1)

end

end A122860.P3897405601090138652

namespace A122860

/-- `A033999(n)*A113661(n+1)` -/
def P3897405601090138652.Spec : Prop :=
  ∀ n, P3897405601090138652.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P10955379999732100594

`A364204(n+1)-A364205(n+1)`
-/

namespace A122860.P10955379999732100594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364204 (n + 1) - A364205 (n + 1)

end

end A122860.P10955379999732100594

namespace A122860

/-- `A364204(n+1)-A364205(n+1)` -/
def P10955379999732100594.Spec : Prop :=
  ∀ n, P10955379999732100594.a n = A122860 (n + 1)

theorem P10955379999732100594.correct : P10955379999732100594.Spec := by
  intro n
  simp only [A122860, Nat.add_sub_cancel, A122860.P10955379999732100594.a, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A033999, A033999.P17703899380244199787.a, A049347, A049347.P9996747395155426839.a, A364204, A364204.P12516854949562588598.f1, A364204.P12516854949562588598.a, A364205, A364205.P2014408668369465084.a, A117212, A117212.P4949317513557667105.f1, A117212.P4949317513557667105.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A079978, A079978.P10382542118278163374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122860

/-! ## A122860.P13999125333396795600

`A056832(n+1)*A093829(n+1)`
-/

namespace A122860.P13999125333396795600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A093829 (n + 1)

end

end A122860.P13999125333396795600

namespace A122860

/-- `A056832(n+1)*A093829(n+1)` -/
def P13999125333396795600.Spec : Prop :=
  ∀ n, P13999125333396795600.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P14287931994355830230

`A060236(n+1)*A093829(n+1)`
-/

namespace A122860.P14287931994355830230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (n + 1) * A093829 (n + 1)

end

end A122860.P14287931994355830230

namespace A122860

/-- `A060236(n+1)*A093829(n+1)` -/
def P14287931994355830230.Spec : Prop :=
  ∀ n, P14287931994355830230.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P11370032904465370140

`A105931(n+1)*A137608(n+1)`
-/

namespace A122860.P11370032904465370140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105931 (n + 1) * A137608 (n + 1)

end

end A122860.P11370032904465370140

namespace A122860

/-- `A105931(n+1)*A137608(n+1)` -/
def P11370032904465370140.Spec : Prop :=
  ∀ n, P11370032904465370140.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P11034423461525507171

`A123331(n+1)*A309873(n+1)`
-/

namespace A122860.P11034423461525507171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (n + 1) * A309873 (n + 1)

end

end A122860.P11034423461525507171

namespace A122860

/-- `A123331(n+1)*A309873(n+1)` -/
def P11034423461525507171.Spec : Prop :=
  ∀ n, P11034423461525507171.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P11170778808050698010

`A123331(n+1)*A343785(n+1)`
-/

namespace A122860.P11170778808050698010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (n + 1) * A343785 (n + 1)

end

end A122860.P11170778808050698010

namespace A122860

/-- `A123331(n+1)*A343785(n+1)` -/
def P11170778808050698010.Spec : Prop :=
  ∀ n, P11170778808050698010.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P18286816793720264661

`A093829(n+1)*A390692(n+1)`
-/

namespace A122860.P18286816793720264661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A390692 (n + 1)

end

end A122860.P18286816793720264661

namespace A122860

/-- `A093829(n+1)*A390692(n+1)` -/
def P18286816793720264661.Spec : Prop :=
  ∀ n, P18286816793720264661.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P13838199854459767998

`(2-A035263(n+1))*A093829(n+1)`
-/

namespace A122860.P13838199854459767998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A035263 (n + 1)) * A093829 (n + 1)

end

end A122860.P13838199854459767998

namespace A122860

/-- `(2-A035263(n+1))*A093829(n+1)` -/
def P13838199854459767998.Spec : Prop :=
  ∀ n, P13838199854459767998.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P7689272563523384519

`2*A364204(n+1)-A256232(n+1)`
-/

namespace A122860.P7689272563523384519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364204 (n + 1) - A256232 (n + 1)

end

end A122860.P7689272563523384519

namespace A122860

/-- `2*A364204(n+1)-A256232(n+1)` -/
def P7689272563523384519.Spec : Prop :=
  ∀ n, P7689272563523384519.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P8014219682837962046

`A256232(n+1)-2*A364205(n+1)`
-/

namespace A122860.P8014219682837962046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (n + 1) - 2 * A364205 (n + 1)

end

end A122860.P8014219682837962046

namespace A122860

/-- `A256232(n+1)-2*A364205(n+1)` -/
def P8014219682837962046.Spec : Prop :=
  ∀ n, P8014219682837962046.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P8993609090855936372

`(2-A056832(n+1)²)*A035178(n+1)`
-/

namespace A122860.P8993609090855936372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A056832 (n + 1) ^ 2) * A035178 (n + 1)

end

end A122860.P8993609090855936372

namespace A122860

/-- `(2-A056832(n+1)²)*A035178(n+1)` -/
def P8993609090855936372.Spec : Prop :=
  ∀ n, P8993609090855936372.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P12221640690699058066

`(2-A060236(n+1)²)*A035178(n+1)`
-/

namespace A122860.P12221640690699058066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A060236 (n + 1) ^ 2) * A035178 (n + 1)

end

end A122860.P12221640690699058066

namespace A122860

/-- `(2-A060236(n+1)²)*A035178(n+1)` -/
def P12221640690699058066.Spec : Prop :=
  ∀ n, P12221640690699058066.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P16802466903895299953

`∑{d}[n+1, A137608(#)*A154269((n+1)/#)]`
-/

namespace A122860.P16802466903895299953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A137608 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122860.P16802466903895299953

namespace A122860

/-- `∑{d}[n+1, A137608(#)*A154269((n+1)/#)]` -/
def P16802466903895299953.Spec : Prop :=
  ∀ n, P16802466903895299953.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P4659644529755451418

`∑{d}[n+1, A112298(#)*A209229((n+1)/#)]`
-/

namespace A122860.P4659644529755451418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112298 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122860.P4659644529755451418

namespace A122860

/-- `∑{d}[n+1, A112298(#)*A209229((n+1)/#)]` -/
def P4659644529755451418.Spec : Prop :=
  ∀ n, P4659644529755451418.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P10024715533327060991

`∑{d}[n+1, A117212(#)*A326401((n+1)/#)]`
-/

namespace A122860.P10024715533327060991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A326401 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122860.P10024715533327060991

namespace A122860

/-- `∑{d}[n+1, A117212(#)*A326401((n+1)/#)]` -/
def P10024715533327060991.Spec : Prop :=
  ∀ n, P10024715533327060991.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P8191933544189993014

`∑{d}[n+1, A036987(#-1)*A112298((n+1)/#)]`
-/

namespace A122860.P8191933544189993014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A112298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122860.P8191933544189993014

namespace A122860

/-- `∑{d}[n+1, A036987(#-1)*A112298((n+1)/#)]` -/
def P8191933544189993014.Spec : Prop :=
  ∀ n, P8191933544189993014.a n = A122860 (n + 1)

end A122860

/-! ## A122860.P11540737575163240451

`∑{d}[n+1, A033999(#-1)*A049347((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122860

/-- `∑{d}[n+1, A033999(#-1)*A049347((n+1)/#-1)]` -/
def P11540737575163240451.Spec : Prop :=
  ∀ n, P11540737575163240451.a n = A122860 (n + 1)

theorem P11540737575163240451.correct : P11540737575163240451.Spec := by
  intro n
  simp only [A122860, Nat.add_sub_cancel]

end A122860

/-! ## A122860.P17555339270678392935

`A122859(n+1)/A122859(A107760(n+1)²)`
-/

namespace A122860.P17555339270678392935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 (n + 1) : ℚ) / (A122859 (A107760 (n + 1) ^ 2).toNat : ℚ)

end

end A122860.P17555339270678392935

namespace A122860

/-- `A122859(n+1)/A122859(A107760(n+1)²)` -/
def P17555339270678392935.Spec : Prop :=
  ∀ n, P17555339270678392935.a n = (A122860 (n + 1) : ℚ)

end A122860

/-!
# A122861: Expansion of phi(-q)chi(-q)psi(q^3) in powers of q where phi(),chi(),psi() are Ramanujan theta functions.

The programs for A122861, the canonical program `A122861.P10229164081842870848` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122861 has offset 0).

The definition of A122861 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115979, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122861.P10229164081842870848

`A115979(3*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A122861

/-- `A115979(3*n+1)` -/
def P10229164081842870848.Spec : Prop :=
  ∀ n, P10229164081842870848.a n = A122861 n

theorem P10229164081842870848.correct : P10229164081842870848.Spec := by
  intro n
  simp only [A122861]

end A122861

/-! ## A122861.P2494201587926297463

`(-1)^n*A129576(n)`
-/

namespace A122861.P2494201587926297463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129576 n

end

end A122861.P2494201587926297463

namespace A122861

/-- `(-1)^n*A129576(n)` -/
def P2494201587926297463.Spec : Prop :=
  ∀ n, P2494201587926297463.a n = A122861 n

end A122861

/-! ## A122861.P11511478454593759790

`A097109(3*n+1)`
-/

namespace A122861.P11511478454593759790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 (3 * n + 1)

end

end A122861.P11511478454593759790

namespace A122861

/-- `A097109(3*n+1)` -/
def P11511478454593759790.Spec : Prop :=
  ∀ n, P11511478454593759790.a n = A122861 n

end A122861

/-! ## A122861.P10397653647504923388

`A033687(n)*A176563(n)`
-/

namespace A122861.P10397653647504923388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n * A176563 n

end

end A122861.P10397653647504923388

namespace A122861

/-- `A033687(n)*A176563(n)` -/
def P10397653647504923388.Spec : Prop :=
  ∀ n, P10397653647504923388.a n = A122861 n

end A122861

/-! ## A122861.P14029166283942223070

`A010684(n)*A227696(n)`
-/

namespace A122861.P14029166283942223070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A227696 n

end

end A122861.P14029166283942223070

namespace A122861

/-- `A010684(n)*A227696(n)` -/
def P14029166283942223070.Spec : Prop :=
  ∀ n, P14029166283942223070.a n = A122861 n

end A122861

/-! ## A122861.P7954805913684694210

`A053381(n)*A227696(n)`
-/

namespace A122861.P7954805913684694210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 n * A227696 n

end

end A122861.P7954805913684694210

namespace A122861

/-- `A053381(n)*A227696(n)` -/
def P7954805913684694210.Spec : Prop :=
  ∀ n, P7954805913684694210.a n = A122861 n

end A122861

/-! ## A122861.P10055390301152137453

`A056753(n)*A227696(n)`
-/

namespace A122861.P10055390301152137453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 n * A227696 n

end

end A122861.P10055390301152137453

namespace A122861

/-- `A056753(n)*A227696(n)` -/
def P10055390301152137453.Spec : Prop :=
  ∀ n, P10055390301152137453.a n = A122861 n

end A122861

/-! ## A122861.P7423331641130603100

`A037227(n+1)*A227696(n)`
-/

namespace A122861.P7423331641130603100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (n + 1) * A227696 n

end

end A122861.P7423331641130603100

namespace A122861

/-- `A037227(n+1)*A227696(n)` -/
def P7423331641130603100.Spec : Prop :=
  ∀ n, P7423331641130603100.a n = A122861 n

end A122861

/-! ## A122861.P12863858953884939806

`A038712(n+1)*A227696(n)`
-/

namespace A122861.P12863858953884939806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A227696 n

end

end A122861.P12863858953884939806

namespace A122861

/-- `A038712(n+1)*A227696(n)` -/
def P12863858953884939806.Spec : Prop :=
  ∀ n, P12863858953884939806.a n = A122861 n

end A122861

/-! ## A122861.P3217260669664200417

`A090740(n+1)*A227696(n)`
-/

namespace A122861.P3217260669664200417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090740 (n + 1) * A227696 n

end

end A122861.P3217260669664200417

namespace A122861

/-- `A090740(n+1)*A227696(n)` -/
def P3217260669664200417.Spec : Prop :=
  ∀ n, P3217260669664200417.a n = A122861 n

end A122861

/-! ## A122861.P8472456891474437145

`A094603(n+1)*A227696(n)`
-/

namespace A122861.P8472456891474437145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (n + 1) * A227696 n

end

end A122861.P8472456891474437145

namespace A122861

/-- `A094603(n+1)*A227696(n)` -/
def P8472456891474437145.Spec : Prop :=
  ∀ n, P8472456891474437145.a n = A122861 n

end A122861

/-! ## A122861.P16245092773685009728

`A112132(n+1)*A227696(n)`
-/

namespace A122861.P16245092773685009728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112132 (n + 1) * A227696 n

end

end A122861.P16245092773685009728

namespace A122861

/-- `A112132(n+1)*A227696(n)` -/
def P16245092773685009728.Spec : Prop :=
  ∀ n, P16245092773685009728.a n = A122861 n

end A122861

/-! ## A122861.P9284254980300237469

`A115364(n+1)*A227696(n)`
-/

namespace A122861.P9284254980300237469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (n + 1) * A227696 n

end

end A122861.P9284254980300237469

namespace A122861

/-- `A115364(n+1)*A227696(n)` -/
def P9284254980300237469.Spec : Prop :=
  ∀ n, P9284254980300237469.a n = A122861 n

end A122861

/-! ## A122861.P57521361396117626

`A129576(n)*A309873(n+1)`
-/

namespace A122861.P57521361396117626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 n * A309873 (n + 1)

end

end A122861.P57521361396117626

namespace A122861

/-- `A129576(n)*A309873(n+1)` -/
def P57521361396117626.Spec : Prop :=
  ∀ n, P57521361396117626.a n = A122861 n

end A122861

/-! ## A122861.P6881959274106136976

`A227696(n)*A233267(n+1)`
-/

namespace A122861.P6881959274106136976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n * A233267 (n + 1)

end

end A122861.P6881959274106136976

namespace A122861

/-- `A227696(n)*A233267(n+1)` -/
def P6881959274106136976.Spec : Prop :=
  ∀ n, P6881959274106136976.a n = A122861 n

end A122861

/-! ## A122861.P7499017723663876978

`A227696(n)*A233269(n+1)`
-/

namespace A122861.P7499017723663876978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n * A233269 (n + 1)

end

end A122861.P7499017723663876978

namespace A122861

/-- `A227696(n)*A233269(n+1)` -/
def P7499017723663876978.Spec : Prop :=
  ∀ n, P7499017723663876978.a n = A122861 n

end A122861

/-! ## A122861.P5190997335956133954

`A227696(n)*A276391(n+1)`
-/

namespace A122861.P5190997335956133954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n * A276391 (n + 1)

end

end A122861.P5190997335956133954

namespace A122861

/-- `A227696(n)*A276391(n+1)` -/
def P5190997335956133954.Spec : Prop :=
  ∀ n, P5190997335956133954.a n = A122861 n

end A122861

/-! ## A122861.P16268834947340146409

`A227696(n)*A385047(n+1)`
-/

namespace A122861.P16268834947340146409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n * A385047 (n + 1)

end

end A122861.P16268834947340146409

namespace A122861

/-- `A227696(n)*A385047(n+1)` -/
def P16268834947340146409.Spec : Prop :=
  ∀ n, P16268834947340146409.a n = A122861 n

end A122861

/-! ## A122861.P16676264273159687505

`A005882(n)-2*A129576(n)`
-/

namespace A122861.P16676264273159687505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005882 n - 2 * A129576 n

end

end A122861.P16676264273159687505

namespace A122861

/-- `A005882(n)-2*A129576(n)` -/
def P16676264273159687505.Spec : Prop :=
  ∀ n, P16676264273159687505.a n = A122861 n

end A122861

/-! ## A122861.P15332499771923217937

`A227696(n)+A227696(n)-A033687(n)`
-/

namespace A122861.P15332499771923217937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227696 n + (A227696 n - A033687 n)

end

end A122861.P15332499771923217937

namespace A122861

/-- `A227696(n)+A227696(n)-A033687(n)` -/
def P15332499771923217937.Spec : Prop :=
  ∀ n, P15332499771923217937.a n = A122861 n

end A122861

/-!
# A122863: Smallest integer not the sum of nonzero powers of previous terms.

The programs for A122863, there is no canonical definition to state claims against.
-/

/-! ## A122863.P13832622836720119470

`A257271(2^n-1)+1`
-/

namespace A122863.P13832622836720119470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257271 (2 ^ n - 1) + 1

end

end A122863.P13832622836720119470

/-! ## A122863.P7027789676371183149

`A229488(A047121(n))`
-/

namespace A122863.P7027789676371183149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229488 (A047121 n).toNat

end

end A122863.P7027789676371183149

/-! ## A122863.P6968116418737289051

`A328593(A080190(n))`
-/

namespace A122863.P6968116418737289051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328593 (A080190 n).toNat

end

end A122863.P6968116418737289051

/-!
# A122864: Expansion of eta(q^3)^2 * eta(q^4) * eta(q^6)^2 * eta(q^36) / (eta(q) * eta(q^9) * eta(q^12)^2) in powers of q.

The programs for A122864, the canonical program `A122864.P189972794959072762` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122864 has offset 1).

The definition of A122864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122864.P189972794959072762

`A061347(n+1)*A113446(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122864

/-- `A061347(n+1)*A113446(n+1)` -/
def P189972794959072762.Spec : Prop :=
  ∀ n, P189972794959072762.a n = A122864 (n + 1)

theorem P189972794959072762.correct : P189972794959072762.Spec := by
  intro n
  simp only [A122864, Nat.add_sub_cancel]

end A122864

/-! ## A122864.P4455880189346848048

`A023900(A038500(n+1))*A113446(n+1)`
-/

namespace A122864.P4455880189346848048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A038500 (n + 1)).toNat * A113446 (n + 1)

end

end A122864.P4455880189346848048

namespace A122864

/-- `A023900(A038500(n+1))*A113446(n+1)` -/
def P4455880189346848048.Spec : Prop :=
  ∀ n, P4455880189346848048.a n = A122864 (n + 1)

end A122864

/-! ## A122864.P9847022688220067757

`A023900(A065331(n+1))*A121450(n+1)`
-/

namespace A122864.P9847022688220067757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A065331 (n + 1)).toNat * A121450 (n + 1)

end

end A122864.P9847022688220067757

namespace A122864

/-- `A023900(A065331(n+1))*A121450(n+1)` -/
def P9847022688220067757.Spec : Prop :=
  ∀ n, P9847022688220067757.a n = A122864 (n + 1)

end A122864

/-! ## A122864.P18239754883857704721

`A100051(A000265(n+1))*A113446(n+1)`
-/

namespace A122864.P18239754883857704721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A000265 (n + 1)).toNat * A113446 (n + 1)

end

end A122864.P18239754883857704721

namespace A122864

/-- `A100051(A000265(n+1))*A113446(n+1)` -/
def P18239754883857704721.Spec : Prop :=
  ∀ n, P18239754883857704721.a n = A122864 (n + 1)

end A122864

/-! ## A122864.P4426194292404222795

`A122857(n+1)-A258256(n+1)`
-/

namespace A122864.P4426194292404222795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122857 (n + 1) - A258256 (n + 1)

end

end A122864.P4426194292404222795

namespace A122864

/-- `A122857(n+1)-A258256(n+1)` -/
def P4426194292404222795.Spec : Prop :=
  ∀ n, P4426194292404222795.a n = A122864 (n + 1)

end A122864

/-! ## A122864.P2282984583614439636

`A100051(n+1)*A121450(n+1)`
-/

namespace A122864.P2282984583614439636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) * A121450 (n + 1)

end

end A122864.P2282984583614439636

namespace A122864

/-- `A100051(n+1)*A121450(n+1)` -/
def P2282984583614439636.Spec : Prop :=
  ∀ n, P2282984583614439636.a n = A122864 (n + 1)

end A122864

/-! ## A122864.P5184368547184754298

`A035154(n+1)+A035154(n+1)-A258256(n+1)`
-/

namespace A122864.P5184368547184754298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) + (A035154 (n + 1) - A258256 (n + 1))

end

end A122864.P5184368547184754298

namespace A122864

/-- `A035154(n+1)+A035154(n+1)-A258256(n+1)` -/
def P5184368547184754298.Spec : Prop :=
  ∀ n, P5184368547184754298.a n = A122864 (n + 1)

end A122864

/-! ## A122864.P7808835486066235279

`A100051(A004273(n))*A113446(n+1)`
-/

namespace A122864.P7808835486066235279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A004273 n).toNat * A113446 (n + 1)

end

end A122864.P7808835486066235279

namespace A122864

/-- `A100051(A004273(n))*A113446(n+1)` -/
def P7808835486066235279.Spec : Prop :=
  ∀ n, P7808835486066235279.a n = A122864 (n + 1)

end A122864

/-! ## A122864.P6639010311256328206

`A113446(n+1)*A117188(A008586(n))`
-/

namespace A122864.P6639010311256328206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1) * A117188 (A008586 n).toNat

end

end A122864.P6639010311256328206

namespace A122864

/-- `A113446(n+1)*A117188(A008586(n))` -/
def P6639010311256328206.Spec : Prop :=
  ∀ n, P6639010311256328206.a n = A122864 (n + 1)

end A122864

/-!
# A122865: Expansion of chi(x) * phi(x^3) * psi(-x^3) in powers of x where chi(), phi(), psi() are Ramanujan theta functions.

The programs for A122865, the canonical program `A122865.P3452293728173949375` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122865 has offset 0).

The definition of A122865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122865.P6451712703828959320

`(-1)^n*A258277(n)`
-/

namespace A122865.P6451712703828959320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258277 n

end

end A122865.P6451712703828959320

namespace A122865

/-- `(-1)^n*A258277(n)` -/
def P6451712703828959320.Spec : Prop :=
  ∀ n, P6451712703828959320.a n = A122865 n

end A122865

/-! ## A122865.P3452293728173949375

`A002654(3*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A122865

/-- `A002654(3*n+1)` -/
def P3452293728173949375.Spec : Prop :=
  ∀ n, P3452293728173949375.a n = A122865 n

theorem P3452293728173949375.correct : P3452293728173949375.Spec := by
  intro n
  simp only [A122865]

end A122865

/-! ## A122865.P10350952744309913013

`A035154(3*n+1)`
-/

namespace A122865.P10350952744309913013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (3 * n + 1)

end

end A122865.P10350952744309913013

namespace A122865

/-- `A035154(3*n+1)` -/
def P10350952744309913013.Spec : Prop :=
  ∀ n, P10350952744309913013.a n = A122865 n

end A122865

/-! ## A122865.P5039965518323268047

`A113446(3*n+1)`
-/

namespace A122865.P5039965518323268047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (3 * n + 1)

end

end A122865.P5039965518323268047

namespace A122865

/-- `A113446(3*n+1)` -/
def P5039965518323268047.Spec : Prop :=
  ∀ n, P5039965518323268047.a n = A122865 n

end A122865

/-! ## A122865.P17846902389814419553

`A122864(3*n+1)`
-/

namespace A122865.P17846902389814419553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122864 (3 * n + 1)

end

end A122865.P17846902389814419553

namespace A122865

/-- `A122864(3*n+1)` -/
def P17846902389814419553.Spec : Prop :=
  ∀ n, P17846902389814419553.a n = A122865 n

end A122865

/-! ## A122865.P9726856677088366890

`A163746(3*n+1)`
-/

namespace A122865.P9726856677088366890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (3 * n + 1)

end

end A122865.P9726856677088366890

namespace A122865

/-- `A163746(3*n+1)` -/
def P9726856677088366890.Spec : Prop :=
  ∀ n, P9726856677088366890.a n = A122865 n

end A122865

/-! ## A122865.P9320108692912611721

`abs(A258277(n))`
-/

namespace A122865.P9320108692912611721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258277 n|

end

end A122865.P9320108692912611721

namespace A122865

/-- `abs(A258277(n))` -/
def P9320108692912611721.Spec : Prop :=
  ∀ n, P9320108692912611721.a n = A122865 n

end A122865

/-! ## A122865.P3383777935571650026

`gcd(A000038(n), A258277(n))`
-/

namespace A122865.P3383777935571650026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258277 n)

end

end A122865.P3383777935571650026

namespace A122865

/-- `gcd(A000038(n), A258277(n))` -/
def P3383777935571650026.Spec : Prop :=
  ∀ n, (P3383777935571650026.a n : ℤ) = A122865 n

end A122865

/-! ## A122865.P3040464854217132817

`lcm(A006466(n), A258277(n))`
-/

namespace A122865.P3040464854217132817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A258277 n)

end

end A122865.P3040464854217132817

namespace A122865

/-- `lcm(A006466(n), A258277(n))` -/
def P3040464854217132817.Spec : Prop :=
  ∀ n, (P3040464854217132817.a n : ℤ) = A122865 n

end A122865

/-! ## A122865.P3939548627648614584

`A258277(n)/A033999(n+2)`
-/

namespace A122865.P3939548627648614584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258277 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A122865.P3939548627648614584

namespace A122865

/-- `A258277(n)/A033999(n+2)` -/
def P3939548627648614584.Spec : Prop :=
  ∀ n, P3939548627648614584.a n = (A122865 n : ℚ)

theorem P3939548627648614584.correct : P3939548627648614584.Spec := by
  intro n
  simp only [A122865, Nat.add_sub_cancel, A122865.P3939548627648614584.a, A122865.P3452293728173949375.a, A002654, A002654.P11574922253888480122.a, A033999, A033999.P17703899380244199787.a, A258277, A258277.P14490946904607176595.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A121262, A121262.P5808261376347758400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122865

/-! ## A122865.P6831022444164824642

`A258277(n)/A102283(A001651(n+1))`
-/

namespace A122865.P6831022444164824642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258277 n : ℚ) / (A102283 (A001651 (n + 1)).toNat : ℚ)

end

end A122865.P6831022444164824642

namespace A122865

/-- `A258277(n)/A102283(A001651(n+1))` -/
def P6831022444164824642.Spec : Prop :=
  ∀ n, P6831022444164824642.a n = (A122865 n : ℚ)

end A122865

/-! ## A122865.P17691411413605536101

`A116604(A173732(2*n))`
-/

namespace A122865.P17691411413605536101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (A173732 (2 * n)).toNat

end

end A122865.P17691411413605536101

namespace A122865

/-- `A116604(A173732(2*n))` -/
def P17691411413605536101.Spec : Prop :=
  ∀ n, P17691411413605536101.a n = A122865 n

end A122865

/-! ## A122865.P12464997297881074137

`A122856(2*n)`
-/

namespace A122865.P12464997297881074137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (2 * n)

end

end A122865.P12464997297881074137

namespace A122865

/-- `A122856(2*n)` -/
def P12464997297881074137.Spec : Prop :=
  ∀ n, P12464997297881074137.a n = A122865 n

end A122865

/-! ## A122865.P11441761442326386477

`A258278(2*n)`
-/

namespace A122865.P11441761442326386477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258278 (2 * n)

end

end A122865.P11441761442326386477

namespace A122865

/-- `A258278(2*n)` -/
def P11441761442326386477.Spec : Prop :=
  ∀ n, P11441761442326386477.a n = A122865 n

end A122865

/-! ## A122865.P15243885455659925218

`A129448(3*n+1)`
-/

namespace A122865.P15243885455659925218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129448 (3 * n + 1)

end

end A122865.P15243885455659925218

namespace A122865

/-- `A129448(3*n+1)` -/
def P15243885455659925218.Spec : Prop :=
  ∀ n, P15243885455659925218.a n = A122865 n

end A122865

/-! ## A122865.P4108142301745003710

`A138950(3*n+1)`
-/

namespace A122865.P4108142301745003710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (3 * n + 1)

end

end A122865.P4108142301745003710

namespace A122865

/-- `A138950(3*n+1)` -/
def P4108142301745003710.Spec : Prop :=
  ∀ n, P4108142301745003710.a n = A122865 n

end A122865

/-! ## A122865.P7497850070884683655

`A256276(3*n+1)`
-/

namespace A122865.P7497850070884683655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256276 (3 * n + 1)

end

end A122865.P7497850070884683655

namespace A122865

/-- `A256276(3*n+1)` -/
def P7497850070884683655.Spec : Prop :=
  ∀ n, P7497850070884683655.a n = A122865 n

end A122865

/-! ## A122865.P9731369568931731295

`abs(A121450(3*n+1))`
-/

namespace A122865.P9731369568931731295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121450 (3 * n + 1)|

end

end A122865.P9731369568931731295

namespace A122865

/-- `abs(A121450(3*n+1))` -/
def P9731369568931731295.Spec : Prop :=
  ∀ n, P9731369568931731295.a n = A122865 n

end A122865

/-! ## A122865.P10774452426844178884

`A116604(A025480(3*n))`
-/

namespace A122865.P10774452426844178884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (A025480 (3 * n)).toNat

end

end A122865.P10774452426844178884

namespace A122865

/-- `A116604(A025480(3*n))` -/
def P10774452426844178884.Spec : Prop :=
  ∀ n, P10774452426844178884.a n = A122865 n

end A122865

/-! ## A122865.P19711173024539882

`A113414(A000265(2*n+1+n))`
-/

namespace A122865.P19711173024539882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113414 (A000265 (2 * n + 1 + n)).toNat

end

end A122865.P19711173024539882

namespace A122865

/-- `A113414(A000265(2*n+1+n))` -/
def P19711173024539882.Spec : Prop :=
  ∀ n, P19711173024539882.a n = A122865 n

end A122865

/-!
# A122868: Expansion of 1/sqrt(1-6x-3x^2).

The programs for A122868, there is no canonical definition to state claims against.
-/

/-! ## A122868.P14021078138871295987

`A106259(n)/2^n`
-/

namespace A122868.P14021078138871295987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106259 n : ℚ) / (2 ^ n : ℚ)

end

end A122868.P14021078138871295987

/-! ## A122868.P239372968454832214

`A232973(∑[n])`
-/

namespace A122868.P239372968454832214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232973 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122868.P239372968454832214

/-! ## A122868.P4107717722383722616

`or(1, A232973(A000217(n)))`
-/

namespace A122868.P4107717722383722616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232973 (A000217 n).toNat)

end

end A122868.P4107717722383722616

/-! ## A122868.P714758872568034498

`record[A232973(A000217(A166514(n)))]`
-/

namespace A122868.P714758872568034498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232973 (A000217 (A166514 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122868.P714758872568034498

/-! ## A122868.P6123746566163549653

`lcm(A038500(n+1), A232973(A000217(n)))`
-/

namespace A122868.P6123746566163549653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038500 (n + 1)) (A232973 (A000217 n).toNat)

end

end A122868.P6123746566163549653

/-! ## A122868.P12388968622006799723

`A307910(∑[n+3]+n+3)`
-/

namespace A122868.P12388968622006799723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307910 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A122868.P12388968622006799723

/-! ## A122868.P13728788438792448593

`record[gcd(1-A054654(n), A232973(n))]`
-/

namespace A122868.P13728788438792448593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A054654 n) (A232973 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122868.P13728788438792448593

/-! ## A122868.P18160377498424859551

`A102036(∑[4*n])`
-/

namespace A122868.P18160377498424859551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122868.P18160377498424859551

/-!
# A122869: Primes p that divide Lucas((p-1)/2), where Lucas is A000032.

The programs for A122869, the canonical program `A122869.P14910639281723416853` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122869 has offset 1).

The definition of A122869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122869.P14910639281723416853

`p?[or(2, 5*n-1)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122869

/-- `p?[or(2, 5*n-1)]` -/
def P14910639281723416853.Spec : Prop :=
  ∀ n, P14910639281723416853.a n = A122869 (n + 1)

theorem P14910639281723416853.correct : P14910639281723416853.Spec := by
  intro n
  simp only [A122869, Nat.add_sub_cancel]

end A122869

/-! ## A122869.P11712401962759138033

`p?[11*n-xor(1, n)]`
-/

namespace A122869.P11712401962759138033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 * n : ℤ) - (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122869.P11712401962759138033

namespace A122869

/-- `p?[11*n-xor(1, n)]` -/
def P11712401962759138033.Spec : Prop :=
  ∀ n, P11712401962759138033.a n = A122869 (n + 1)

end A122869

/-! ## A122869.P589204376905342261

`p?[5*n-and(2, n+2)+1]`
-/

namespace A122869.P589204376905342261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - (Nat.land 2 (n + 2) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122869.P589204376905342261

namespace A122869

/-- `p?[5*n-and(2, n+2)+1]` -/
def P589204376905342261.Spec : Prop :=
  ∀ n, P589204376905342261.a n = A122869 (n + 1)

end A122869

/-! ## A122869.P2335806020580411618

`∩[A002145(n+1), A038872(n+1)]`
-/

namespace A122869.P2335806020580411618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P2335806020580411618

namespace A122869

/-- `∩[A002145(n+1), A038872(n+1)]` -/
def P2335806020580411618.Spec : Prop :=
  ∀ n, (P2335806020580411618.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P14842196596663539369

`∩[A002145(n+1), A040105(n+1)]`
-/

namespace A122869.P14842196596663539369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P14842196596663539369

namespace A122869

/-- `∩[A002145(n+1), A040105(n+1)]` -/
def P14842196596663539369.Spec : Prop :=
  ∀ n, (P14842196596663539369.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P1624361684870723883

`∩[A002145(n+1), A040147(n+1)]`
-/

namespace A122869.P1624361684870723883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P1624361684870723883

namespace A122869

/-- `∩[A002145(n+1), A040147(n+1)]` -/
def P1624361684870723883.Spec : Prop :=
  ∀ n, (P1624361684870723883.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P11104741231176140091

`∩[A002145(n+1), A003626(n+1)]`
-/

namespace A122869.P11104741231176140091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P11104741231176140091

namespace A122869

/-- `∩[A002145(n+1), A003626(n+1)]` -/
def P11104741231176140091.Spec : Prop :=
  ∀ n, (P11104741231176140091.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P12793828095240583007

`∩[A003626(n+1), A038872(n+1)]`
-/

namespace A122869.P12793828095240583007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P12793828095240583007

namespace A122869

/-- `∩[A003626(n+1), A038872(n+1)]` -/
def P12793828095240583007.Spec : Prop :=
  ∀ n, (P12793828095240583007.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P17940659321637754777

`∩[A003626(n+1), A040105(n+1)]`
-/

namespace A122869.P17940659321637754777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P17940659321637754777

namespace A122869

/-- `∩[A003626(n+1), A040105(n+1)]` -/
def P17940659321637754777.Spec : Prop :=
  ∀ n, (P17940659321637754777.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P12374837840232428122

`∩[A003626(n+1), A040147(n+1)]`
-/

namespace A122869.P12374837840232428122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P12374837840232428122

namespace A122869

/-- `∩[A003626(n+1), A040147(n+1)]` -/
def P12374837840232428122.Spec : Prop :=
  ∀ n, (P12374837840232428122.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P8464343149316461805

`∩[A045326(n+1), A003626(n+1)]`
-/

namespace A122869.P8464343149316461805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P8464343149316461805

namespace A122869

/-- `∩[A045326(n+1), A003626(n+1)]` -/
def P8464343149316461805.Spec : Prop :=
  ∀ n, (P8464343149316461805.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P14729534574150494555

`∩[A292762(n+1), A038872(n+1)]`
-/

namespace A122869.P14729534574150494555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P14729534574150494555

namespace A122869

/-- `∩[A292762(n+1), A038872(n+1)]` -/
def P14729534574150494555.Spec : Prop :=
  ∀ n, (P14729534574150494555.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P6483030446777915187

`∩[A002145(n+1), A023173(n+1)]`
-/

namespace A122869.P6483030446777915187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P6483030446777915187

namespace A122869

/-- `∩[A002145(n+1), A023173(n+1)]` -/
def P6483030446777915187.Spec : Prop :=
  ∀ n, (P6483030446777915187.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P17618828236565407763

`∩[A003626(n+1), A023173(n+1)]`
-/

namespace A122869.P17618828236565407763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P17618828236565407763

namespace A122869

/-- `∩[A003626(n+1), A023173(n+1)]` -/
def P17618828236565407763.Spec : Prop :=
  ∀ n, (P17618828236565407763.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P1848754455147737939

`∩[A003626(n+1), A065156(n+1)]`
-/

namespace A122869.P1848754455147737939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P1848754455147737939

namespace A122869

/-- `∩[A003626(n+1), A065156(n+1)]` -/
def P1848754455147737939.Spec : Prop :=
  ∀ n, (P1848754455147737939.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P2624651530845483679

`∩[A002145(n+1), A053031(n+1)]`
-/

namespace A122869.P2624651530845483679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122869.P2624651530845483679

namespace A122869

/-- `∩[A002145(n+1), A053031(n+1)]` -/
def P2624651530845483679.Spec : Prop :=
  ∀ n, (P2624651530845483679.a n : ℤ) = A122869 (n + 1)

end A122869

/-! ## A122869.P8702432164886637949

`p?[2*A146951(n)-1]`
-/

namespace A122869.P8702432164886637949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A146951 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122869.P8702432164886637949

namespace A122869

/-- `p?[2*A146951(n)-1]` -/
def P8702432164886637949.Spec : Prop :=
  ∀ n, P8702432164886637949.a n = A122869 (n + 1)

end A122869

/-! ## A122869.P189772176701093391

`p?[xor(1, A017509(n))-n]`
-/

namespace A122869.P189772176701093391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A017509 n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122869.P189772176701093391

namespace A122869

/-- `p?[xor(1, A017509(n))-n]` -/
def P189772176701093391.Spec : Prop :=
  ∀ n, P189772176701093391.a n = A122869 (n + 1)

end A122869

/-! ## A122869.P14067137924894402759

`p?[2*A063093(n+1)+1]`
-/

namespace A122869.P14067137924894402759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122869.P14067137924894402759

namespace A122869

/-- `p?[2*A063093(n+1)+1]` -/
def P14067137924894402759.Spec : Prop :=
  ∀ n, P14067137924894402759.a n = A122869 (n + 1)

end A122869

/-! ## A122869.P14642391164309016332

`p?[A008592(n)-A033999(n)]`
-/

namespace A122869.P14642391164309016332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122869.P14642391164309016332

namespace A122869

/-- `p?[A008592(n)-A033999(n)]` -/
def P14642391164309016332.Spec : Prop :=
  ∀ n, P14642391164309016332.a n = A122869 (n + 1)

end A122869

/-!
# A122870: Primes congruent to 3 or 7 mod 20.

The programs for A122870, the canonical program `A122870.P17364860672566094425` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122870 has offset 1).

The definition of A122870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122870.P17364860672566094425

`p?[3*xor(1, 3*n)+n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122870

/-- `p?[3*xor(1, 3*n)+n]` -/
def P17364860672566094425.Spec : Prop :=
  ∀ n, (P17364860672566094425.a n : ℤ) = A122870 (n + 1)

theorem P17364860672566094425.correct : P17364860672566094425.Spec := by
  intro n
  simp only [A122870, Nat.add_sub_cancel]

end A122870

/-! ## A122870.P1655270493347770992

`p?[ogf((3x+x^3+6x^4)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A122870.P1655270493347770992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, 1, 6] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122870.P1655270493347770992

namespace A122870

/-- `p?[ogf((3x+x^3+6x^4)/(1-2x+2x^2-2x^3+x^4))]` -/
def P1655270493347770992.Spec : Prop :=
  ∀ n, P1655270493347770992.a n = A122870 (n + 1)

end A122870

/-! ## A122870.P6061096326330762686

`p?[abs(and(2, n+1)!-(5*n+4))]`
-/

namespace A122870.P6061096326330762686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (Nat.land 2 (n + 1)) : ℤ) - (5 * n + 4 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122870.P6061096326330762686

namespace A122870

/-- `p?[abs(and(2, n+1)!-(5*n+4))]` -/
def P6061096326330762686.Spec : Prop :=
  ∀ n, P6061096326330762686.a n = A122870 (n + 1)

end A122870

/-! ## A122870.P8369590375384053334

`A106865(n+2)`
-/

namespace A122870.P8369590375384053334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106865 (n + 2)

end

end A122870.P8369590375384053334

namespace A122870

/-- `A106865(n+2)` -/
def P8369590375384053334.Spec : Prop :=
  ∀ n, P8369590375384053334.a n = A122870 (n + 1)

end A122870

/-! ## A122870.P5580259782311118389

`∩[A002145(n+1), A053027(n+1)]`
-/

namespace A122870.P5580259782311118389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P5580259782311118389

namespace A122870

/-- `∩[A002145(n+1), A053027(n+1)]` -/
def P5580259782311118389.Spec : Prop :=
  ∀ n, (P5580259782311118389.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P5250513345471357241

`∩[A045326(n+2), A091727(n+2)]`
-/

namespace A122870.P5250513345471357241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P5250513345471357241

namespace A122870

/-- `∩[A045326(n+2), A091727(n+2)]` -/
def P5250513345471357241.Spec : Prop :=
  ∀ n, (P5250513345471357241.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P9660401423064325897

`∩[A002145(n+1), A003631(n+1)]`
-/

namespace A122870.P9660401423064325897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P9660401423064325897

namespace A122870

/-- `∩[A002145(n+1), A003631(n+1)]` -/
def P9660401423064325897.Spec : Prop :=
  ∀ n, (P9660401423064325897.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P4208350592849541373

`∩[A002145(n+1), A042993(n+1)]`
-/

namespace A122870.P4208350592849541373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P4208350592849541373

namespace A122870

/-- `∩[A002145(n+1), A042993(n+1)]` -/
def P4208350592849541373.Spec : Prop :=
  ∀ n, (P4208350592849541373.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P11808523702023548241

`∩[A003631(n+2), A045326(n+2)]`
-/

namespace A122870.P11808523702023548241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P11808523702023548241

namespace A122870

/-- `∩[A003631(n+2), A045326(n+2)]` -/
def P11808523702023548241.Spec : Prop :=
  ∀ n, (P11808523702023548241.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P11465565371223135463

`∩[A042993(n+2), A045326(n+2)]`
-/

namespace A122870.P11465565371223135463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P11465565371223135463

namespace A122870

/-- `∩[A042993(n+2), A045326(n+2)]` -/
def P11465565371223135463.Spec : Prop :=
  ∀ n, (P11465565371223135463.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P6723065319199693452

`∩[A003631(n+2), A091727(n+2)]`
-/

namespace A122870.P6723065319199693452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P6723065319199693452

namespace A122870

/-- `∩[A003631(n+2), A091727(n+2)]` -/
def P6723065319199693452.Spec : Prop :=
  ∀ n, (P6723065319199693452.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P9114122032522500351

`∩[A045326(n+2), A069104(n+2)]`
-/

namespace A122870.P9114122032522500351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P9114122032522500351

namespace A122870

/-- `∩[A045326(n+2), A069104(n+2)]` -/
def P9114122032522500351.Spec : Prop :=
  ∀ n, (P9114122032522500351.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P7359266795665723574

`∩[A002145(n+1), A040148(n+1)]`
-/

namespace A122870.P7359266795665723574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P7359266795665723574

namespace A122870

/-- `∩[A002145(n+1), A040148(n+1)]` -/
def P7359266795665723574.Spec : Prop :=
  ∀ n, (P7359266795665723574.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P17268012147614264246

`∩[A002145(n+1), A040106(n+1)]`
-/

namespace A122870.P17268012147614264246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P17268012147614264246

namespace A122870

/-- `∩[A002145(n+1), A040106(n+1)]` -/
def P17268012147614264246.Spec : Prop :=
  ∀ n, (P17268012147614264246.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P9078690854546623395

`∩[A040106(n+1), A045326(n+1)]`
-/

namespace A122870.P9078690854546623395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P9078690854546623395

namespace A122870

/-- `∩[A040106(n+1), A045326(n+1)]` -/
def P9078690854546623395.Spec : Prop :=
  ∀ n, (P9078690854546623395.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P9127619694420509344

`∩[A045395(n+1), A053027(n+1)]`
-/

namespace A122870.P9127619694420509344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P9127619694420509344

namespace A122870

/-- `∩[A045395(n+1), A053027(n+1)]` -/
def P9127619694420509344.Spec : Prop :=
  ∀ n, (P9127619694420509344.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P9522195923426184629

`∩[A002145(n+1), A023162(n+1)]`
-/

namespace A122870.P9522195923426184629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P9522195923426184629

namespace A122870

/-- `∩[A002145(n+1), A023162(n+1)]` -/
def P9522195923426184629.Spec : Prop :=
  ∀ n, (P9522195923426184629.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P4738492782620848930

`∩[A023162(n+2), A045326(n+2)]`
-/

namespace A122870.P4738492782620848930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P4738492782620848930

namespace A122870

/-- `∩[A023162(n+2), A045326(n+2)]` -/
def P4738492782620848930.Spec : Prop :=
  ∀ n, (P4738492782620848930.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P12897925676941631840

`∩[A023162(n+2), A091727(n+2)]`
-/

namespace A122870.P12897925676941631840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P12897925676941631840

namespace A122870

/-- `∩[A023162(n+2), A091727(n+2)]` -/
def P12897925676941631840.Spec : Prop :=
  ∀ n, (P12897925676941631840.a n : ℤ) = A122870 (n + 1)

end A122870

/-! ## A122870.P7124847697679916550

`∩[A003631(n+2), A097987(n+2)]`
-/

namespace A122870.P7124847697679916550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122870.P7124847697679916550

namespace A122870

/-- `∩[A003631(n+2), A097987(n+2)]` -/
def P7124847697679916550.Spec : Prop :=
  ∀ n, (P7124847697679916550.a n : ℤ) = A122870 (n + 1)

end A122870

/-!
# A122871: Expansion of (1 - 2*x - sqrt(1 - 4*x - 8*x^2))/(6*x^2).

The programs for A122871, there is no canonical definition to state claims against.
-/

/-! ## A122871.P4956830148357658616

`A025229(n+2)/3`
-/

namespace A122871.P4956830148357658616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025229 (n + 2) : ℚ) / 3

end

end A122871.P4956830148357658616

/-! ## A122871.P8498042817829103566

`A025239(n+2)/3`
-/

namespace A122871.P8498042817829103566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025239 (n + 2) : ℚ) / 3

end

end A122871.P8498042817829103566

/-! ## A122871.P7766095265048835837

`a(n-1)*ratio[A025229(n+1)]` with `a(0)=1`
-/

namespace A122871.P7766095265048835837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025229 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A122871.P7766095265048835837

/-! ## A122871.P4449330662832535245

`a(n-1)*ratio[A025239(n+1)]` with `a(0)=1`
-/

namespace A122871.P4449330662832535245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025239 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A122871.P4449330662832535245

/-! ## A122871.P8552676846247428451

`A084608(A028387(n))/(n+1)`
-/

namespace A122871.P8552676846247428451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084608 (A028387 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A122871.P8552676846247428451

/-!
# A122872: Table by antidiagonals, T(n,k) is k-th number that starts with n in binary representation.

The programs for A122872, the canonical program `A122872.P183094974031716195` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122872 has offset 1).

The definition of A122872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122872.P9071233631592380318

`row(n)-col(n)+1+col(n)*2^floor(log2(row(n)-col(n)+1))`
-/

namespace A122872.P9071233631592380318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 + (SequenceMachineLib.triCol n * 2 ^ Nat.log 2 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat : ℤ)

end

end A122872.P9071233631592380318

namespace A122872

/-- `row(n)-col(n)+1+col(n)*2^floor(log2(row(n)-col(n)+1))` -/
def P9071233631592380318.Spec : Prop :=
  ∀ n, P9071233631592380318.a n = A122872 (n + 1)

end A122872

/-! ## A122872.P183094974031716195

`row(n)-col(n)+1+col(n)*A053644(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122872

/-- `row(n)-col(n)+1+col(n)*A053644(row(n)-col(n)+1)` -/
def P183094974031716195.Spec : Prop :=
  ∀ n, P183094974031716195.a n = A122872 (n + 1)

theorem P183094974031716195.correct : P183094974031716195.Spec := by
  intro n
  simp only [A122872, Nat.add_sub_cancel]

end A122872

/-! ## A122872.P2710144298136096129

`A003991(n+1)-A124763(A278882(n))`
-/

namespace A122872.P2710144298136096129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A124763 (A278882 n).toNat

end

end A122872.P2710144298136096129

namespace A122872

/-- `A003991(n+1)-A124763(A278882(n))` -/
def P2710144298136096129.Spec : Prop :=
  ∀ n, P2710144298136096129.a n = A122872 (n + 1)

end A122872

/-! ## A122872.P15191125498217741355

`A112329(A003595(n+1))-A124763(A278882(n))`
-/

namespace A122872.P15191125498217741355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A003595 (n + 1)).toNat - A124763 (A278882 n).toNat

end

end A122872.P15191125498217741355

namespace A122872

/-- `A112329(A003595(n+1))-A124763(A278882(n))` -/
def P15191125498217741355.Spec : Prop :=
  ∀ n, P15191125498217741355.a n = A122872 (n + 1)

end A122872

/-! ## A122872.P15640072451909195298

`A216622(n+1)-A011745(A228474(n))`
-/

namespace A122872.P15640072451909195298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216622 (n + 1) - A011745 (A228474 n).toNat

end

end A122872.P15640072451909195298

namespace A122872

/-- `A216622(n+1)-A011745(A228474(n))` -/
def P15640072451909195298.Spec : Prop :=
  ∀ n, P15640072451909195298.a n = A122872 (n + 1)

end A122872

/-!
# A122873: Triangle T(n,k) = smallest number whose square has largest digit k in base n, 0<=k<n.

The programs for A122873, there is no canonical definition to state claims against.
-/

/-! ## A122873.P12872351502377999663

`A087990(A274114(n))%A266183(n+1)`
-/

namespace A122873.P12872351502377999663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087990 (A274114 n).toNat) (A266183 (n + 1))

end

end A122873.P12872351502377999663

/-! ## A122873.P16492388267511587694

`A317243(A112668(n+1))`
-/

namespace A122873.P16492388267511587694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317243 (A112668 (n + 1)).toNat

end

end A122873.P16492388267511587694

/-! ## A122873.P11911633931711110500

`A112367(n)+A082859(A101031(n))`
-/

namespace A122873.P11911633931711110500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A082859 (A101031 n).toNat

end

end A122873.P11911633931711110500

/-! ## A122873.P2056318804571419660

`A116537(A334165(n)+A156953(n))`
-/

namespace A122873.P2056318804571419660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116537 (A334165 n + A156953 n).toNat

end

end A122873.P2056318804571419660

/-! ## A122873.P12731480581292068622

`A287016(A266183(n+1))`
-/

namespace A122873.P12731480581292068622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287016 (A266183 (n + 1)).toNat

end

end A122873.P12731480581292068622

/-!
# A122874: List of pairs n+7, 13-n, n >= 0.

The programs for A122874, the canonical program `A122874.P8233417338461270992` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122874 has offset 0).

The definition of A122874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122874.P8233417338461270992

`ogf((7+20x+14x^2)/(1+x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122874

/-- `ogf((7+20x+14x^2)/(1+x-x^2-x^3))` -/
def P8233417338461270992.Spec : Prop :=
  ∀ n, P8233417338461270992.a n = A122874 n

theorem P8233417338461270992.correct : P8233417338461270992.Spec := by
  intro n
  simp only [A122874]

end A122874

/-! ## A122874.P14045010652657729004

`21-(a(n-1)+n%2)` with `a(0)=7`
-/

namespace A122874.P14045010652657729004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  21 - (a (n - 1) + ((n % 2 : ℕ) : ℤ))

end

end A122874.P14045010652657729004

namespace A122874

/-- `21-(a(n-1)+n%2)` -/
def P14045010652657729004.Spec : Prop :=
  ∀ n, P14045010652657729004.a n = A122874 n

end A122874

/-! ## A122874.P15091818586262060009

`A040043(n+1)-A001057(n)`
-/

namespace A122874.P15091818586262060009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040043 (n + 1) - A001057 n

end

end A122874.P15091818586262060009

namespace A122874

/-- `A040043(n+1)-A001057(n)` -/
def P15091818586262060009.Spec : Prop :=
  ∀ n, P15091818586262060009.a n = A122874 n

end A122874

/-! ## A122874.P5837781852804379511

`Δ[A057979(n)+2*A146763(n)]`
-/

namespace A122874.P5837781852804379511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n + 2 * A146763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122874.P5837781852804379511

namespace A122874

/-- `Δ[A057979(n)+2*A146763(n)]` -/
def P5837781852804379511.Spec : Prop :=
  ∀ n, P5837781852804379511.a n = A122874 n

end A122874

/-! ## A122874.P4332112801196083888

`A040024(n+1)+4-∑[A038608(n+1)]`
-/

namespace A122874.P4332112801196083888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 (n + 1) + (4 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122874.P4332112801196083888

namespace A122874

/-- `A040024(n+1)+4-∑[A038608(n+1)]` -/
def P4332112801196083888.Spec : Prop :=
  ∀ n, P4332112801196083888.a n = A122874 n

end A122874

/-! ## A122874.P347554072085094281

`Δ[A322490(n+2)+∑[n]%(n+1)]`
-/

namespace A122874.P347554072085094281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322490 (n + 2) + (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122874.P347554072085094281

namespace A122874

/-- `Δ[A322490(n+2)+∑[n]%(n+1)]` -/
def P347554072085094281.Spec : Prop :=
  ∀ n, P347554072085094281.a n = A122874 n

end A122874

/-! ## A122874.P11463425465446337184

`Δ[A053715(n+3)]+5`
-/

namespace A122874.P11463425465446337184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053715 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 5

end

end A122874.P11463425465446337184

namespace A122874

/-- `Δ[A053715(n+3)]+5` -/
def P11463425465446337184.Spec : Prop :=
  ∀ n, P11463425465446337184.a n = A122874 n

end A122874

/-!
# A122875: Numbers whose square is undulating.

The programs for A122875, there is no canonical definition to state claims against.
-/

/-! ## A122875.P8433329852732446755

`sqrt(A016073(n))`
-/

namespace A122875.P8433329852732446755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016073 n : ℝ)

end

end A122875.P8433329852732446755

/-! ## A122875.P16759507841160670504

`∪[A059744(n+1), A250409(n+1)]`
-/

namespace A122875.P16759507841160670504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122875.P16759507841160670504

/-! ## A122875.P10766078279988113079

`∪[A059744(n+1), A250410(n+1)]`
-/

namespace A122875.P10766078279988113079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122875.P10766078279988113079

/-! ## A122875.P14884301499611087245

`∪[A200041(n+1), A250409(n+1)]`
-/

namespace A122875.P14884301499611087245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122875.P14884301499611087245

/-! ## A122875.P13653395665149290155

`∪[A200041(n+1), A250410(n+1)]`
-/

namespace A122875.P13653395665149290155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122875.P13653395665149290155

/-!
# A122876: a(0)=1, a(1)=1, a(2)=2, a(n) = a(n-1) - a(n-2) for n>2.

The programs for A122876, the canonical program `A122876.P17033685941399863084` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122876 has offset 0).

The definition of A122876 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)` (program `A122876.P17033685941399863084`, by `A122876.P17033685941399863084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122876.P16360042150621415592

`ogf((1+2x^2)/(1-x+x^2))`
-/

namespace A122876.P16360042150621415592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -1, 1] n

end

end A122876.P16360042150621415592

namespace A122876

/-- `ogf((1+2x^2)/(1-x+x^2))` -/
def P16360042150621415592.Spec : Prop :=
  ∀ n, P16360042150621415592.a n = A122876 n

end A122876

/-! ## A122876.P17033685941399863084

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122876

/-- `a(n-1)-a(n-2)` -/
def P17033685941399863084.Spec : Prop :=
  ∀ n, P17033685941399863084.a n = A122876 n

theorem P17033685941399863084.correct : P17033685941399863084.Spec := by
  intro n
  simp only [A122876]

end A122876

/-!
# A122877: Expansion of (1-2*x-3*x^2-(1-x)*sqrt(1-2*x-7*x^2))/(8*x^3).

The programs for A122877, the canonical program `A122877.P9428573636687914647` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122877 has offset 0).

The definition of A122877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122877.P9428573636687914647

`∑{#}[n+1, C(#, n-#+3)*2^(n-#+2)*C(n+1, #)]/(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122877

/-- `∑{#}[n+1, C(#, n-#+3)*2^(n-#+2)*C(n+1, #)]/(n+1)` -/
def P9428573636687914647.Spec : Prop :=
  ∀ n, P9428573636687914647.a n = (A122877 n : ℚ)

end A122877

/-! ## A122877.P10339492444474054042

`Δ[A025235(n)/2]`
-/

namespace A122877.P10339492444474054042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P10339492444474054042

namespace A122877

/-- `Δ[A025235(n)/2]` -/
def P10339492444474054042.Spec : Prop :=
  ∀ n, P10339492444474054042.a n = (A122877 n : ℚ)

end A122877

/-! ## A122877.P15180474152595469530

`(A025235(n+1)-A025235(n))/2`
-/

namespace A122877.P15180474152595469530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 (n + 1) - A025235 n : ℚ) / 2

end

end A122877.P15180474152595469530

namespace A122877

/-- `(A025235(n+1)-A025235(n))/2` -/
def P15180474152595469530.Spec : Prop :=
  ∀ n, P15180474152595469530.a n = (A122877 n : ℚ)

end A122877

/-! ## A122877.P4194008467901262501

`Δ[A014431(n+2)/4]`
-/

namespace A122877.P4194008467901262501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014431 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P4194008467901262501

namespace A122877

/-- `Δ[A014431(n+2)/4]` -/
def P4194008467901262501.Spec : Prop :=
  ∀ n, P4194008467901262501.a n = (A122877 n : ℚ)

end A122877

/-! ## A122877.P10782578296940451616

`2/(n+1)*A098521(n+1)`
-/

namespace A122877.P10782578296940451616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A098521 (n + 1) : ℚ)

end

end A122877.P10782578296940451616

namespace A122877

/-- `2/(n+1)*A098521(n+1)` -/
def P10782578296940451616.Spec : Prop :=
  ∀ n, P10782578296940451616.a n = (A122877 n : ℚ)

end A122877

/-! ## A122877.P17348006608793892256

`Δ[A151282(n)-A151282(n+1)/4]`
-/

namespace A122877.P17348006608793892256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151282 n : ℚ) - (A151282 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P17348006608793892256

namespace A122877

/-- `Δ[A151282(n)-A151282(n+1)/4]` -/
def P17348006608793892256.Spec : Prop :=
  ∀ n, P17348006608793892256.a n = (A122877 n : ℚ)

end A122877

/-! ## A122877.P3637704649431271224

`Δ[A098518(n+1)/(2*(n+1))]`
-/

namespace A122877.P3637704649431271224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098518 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P3637704649431271224

namespace A122877

/-- `Δ[A098518(n+1)/(2*(n+1))]` -/
def P3637704649431271224.Spec : Prop :=
  ∀ n, P3637704649431271224.a n = (A122877 n : ℚ)

end A122877

/-! ## A122877.P4169111580827364428

`Δ[A306684(∑[n+3])/2]`
-/

namespace A122877.P4169111580827364428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306684 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P4169111580827364428

namespace A122877

/-- `Δ[A306684(∑[n+3])/2]` -/
def P4169111580827364428.Spec : Prop :=
  ∀ n, P4169111580827364428.a n = (A122877 n : ℚ)

end A122877

/-!
# A122879: Periodic sequence of period 21.

The programs for A122879, the canonical program `A122879.P14546193721857768814` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122879 has offset 1).

The definition of A122879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122879.P14546193721857768814

`floor(2*n/7)%3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122879

/-- `floor(2*n/7)%3` -/
def P14546193721857768814.Spec : Prop :=
  ∀ n, P14546193721857768814.a n = A122879 (n + 1)

theorem P14546193721857768814.correct : P14546193721857768814.Spec := by
  intro n
  simp only [A122879, Nat.add_sub_cancel]

end A122879

/-!
# A122880: Catalan numbers minus odd-indexed Fibonacci numbers.

The programs for A122880, the canonical program `A122880.P9603902106566322994` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122880 has offset 1).

The definition of A122880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122880.P9603902106566322994

`A000108(n+1)-A001519(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122880

/-- `A000108(n+1)-A001519(n+1)` -/
def P9603902106566322994.Spec : Prop :=
  ∀ n, P9603902106566322994.a n = A122880 (n + 1)

theorem P9603902106566322994.correct : P9603902106566322994.Spec := by
  intro n
  simp only [A122880, Nat.add_sub_cancel]

end A122880

/-! ## A122880.P6740090631354533648

`C(2*(n+1), n+1)/(n+2)-A000045(2*(n+1)-1)`
-/

namespace A122880.P6740090631354533648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / (n + 2 : ℚ) - (A000045 (2 * (n + 1) - 1) : ℚ)

end

end A122880.P6740090631354533648

namespace A122880

/-- `C(2*(n+1), n+1)/(n+2)-A000045(2*(n+1)-1)` -/
def P6740090631354533648.Spec : Prop :=
  ∀ n, P6740090631354533648.a n = (A122880 (n + 1) : ℚ)

end A122880

/-! ## A122880.P14828169542987276280

`∑[A000245(n)-A001906(n)]`
-/

namespace A122880.P14828169542987276280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122880.P14828169542987276280

namespace A122880

/-- `∑[A000245(n)-A001906(n)]` -/
def P14828169542987276280.Spec : Prop :=
  ∀ n, P14828169542987276280.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P1975890055750930238

`∑[A000245(n)]-A027941(n)`
-/

namespace A122880.P1975890055750930238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027941 n

end

end A122880.P1975890055750930238

namespace A122880

/-- `∑[A000245(n)]-A027941(n)` -/
def P1975890055750930238.Spec : Prop :=
  ∀ n, P1975890055750930238.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P3021754184738996814

`∑[A071724(n)]-A122367(n)`
-/

namespace A122880.P3021754184738996814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122367 n

end

end A122880.P3021754184738996814

namespace A122880

/-- `∑[A071724(n)]-A122367(n)` -/
def P3021754184738996814.Spec : Prop :=
  ∀ n, P3021754184738996814.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P14867497735018643469

`A000108(n+1)-A122367(n)`
-/

namespace A122880.P14867497735018643469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A122367 n

end

end A122880.P14867497735018643469

namespace A122880

/-- `A000108(n+1)-A122367(n)` -/
def P14867497735018643469.Spec : Prop :=
  ∀ n, P14867497735018643469.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P9707133119688555682

`A000108(n+1)-A094967(2*n)`
-/

namespace A122880.P9707133119688555682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A094967 (2 * n)

end

end A122880.P9707133119688555682

namespace A122880

/-- `A000108(n+1)-A094967(2*n)` -/
def P9707133119688555682.Spec : Prop :=
  ∀ n, P9707133119688555682.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P4259946502162631217

`A000108(n+1)-A000045(Δ[n²])`
-/

namespace A122880.P4259946502162631217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122880.P4259946502162631217

namespace A122880

/-- `A000108(n+1)-A000045(Δ[n²])` -/
def P4259946502162631217.Spec : Prop :=
  ∀ n, P4259946502162631217.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P10475549477062144043

`A000108(n+1)-Δ[A000045(2*n)]`
-/

namespace A122880.P10475549477062144043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (f1 (n + 1) - f1 n)

end

end A122880.P10475549477062144043

namespace A122880

/-- `A000108(n+1)-Δ[A000045(2*n)]` -/
def P10475549477062144043.Spec : Prop :=
  ∀ n, P10475549477062144043.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P5750943330916930993

`record[A097331(n)]-A000045(2*n+1)`
-/

namespace A122880.P5750943330916930993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000045 (2 * n + 1)

end

end A122880.P5750943330916930993

namespace A122880

/-- `record[A097331(n)]-A000045(2*n+1)` -/
def P5750943330916930993.Spec : Prop :=
  ∀ n, P5750943330916930993.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P9104093414214062815

`abs(A168491(n+1))-A000045(2*n+1)`
-/

namespace A122880.P9104093414214062815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1)| - A000045 (2 * n + 1)

end

end A122880.P9104093414214062815

namespace A122880

/-- `abs(A168491(n+1))-A000045(2*n+1)` -/
def P9104093414214062815.Spec : Prop :=
  ∀ n, P9104093414214062815.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P5947172930395166724

`A000108(n+1)-abs(A236191(2*n+1))`
-/

namespace A122880.P5947172930395166724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - |A236191 (2 * n + 1)|

end

end A122880.P5947172930395166724

namespace A122880

/-- `A000108(n+1)-abs(A236191(2*n+1))` -/
def P5947172930395166724.Spec : Prop :=
  ∀ n, P5947172930395166724.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P10573439325560589331

`A208355(2*n+1)-A000045(2*n+1)`
-/

namespace A122880.P10573439325560589331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n + 1) - A000045 (2 * n + 1)

end

end A122880.P10573439325560589331

namespace A122880

/-- `A208355(2*n+1)-A000045(2*n+1)` -/
def P10573439325560589331.Spec : Prop :=
  ∀ n, P10573439325560589331.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P15570140519310662507

`A000063(2*n+5)-A000045(2*n+1)`
-/

namespace A122880.P15570140519310662507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000063 (2 * n + 5) - A000045 (2 * n + 1)

end

end A122880.P15570140519310662507

namespace A122880

/-- `A000063(2*n+5)-A000045(2*n+1)` -/
def P15570140519310662507.Spec : Prop :=
  ∀ n, P15570140519310662507.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P16636796722986535544

`A000108(n+1)-A053602(A103517(2*n))`
-/

namespace A122880.P16636796722986535544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A053602 (A103517 (2 * n)).toNat

end

end A122880.P16636796722986535544

namespace A122880

/-- `A000108(n+1)-A053602(A103517(2*n))` -/
def P16636796722986535544.Spec : Prop :=
  ∀ n, P16636796722986535544.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P13654041388089461943

`A000108(n+1)+A001906(n)-A001906(n+1)`
-/

namespace A122880.P13654041388089461943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A001906 n - A001906 (n + 1))

end

end A122880.P13654041388089461943

namespace A122880

/-- `A000108(n+1)+A001906(n)-A001906(n+1)` -/
def P13654041388089461943.Spec : Prop :=
  ∀ n, P13654041388089461943.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P17336399927348088449

`A000108(n+1)-(A007598(n+1)+A007598(n))`
-/

namespace A122880.P17336399927348088449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (A007598 (n + 1) + A007598 n)

end

end A122880.P17336399927348088449

namespace A122880

/-- `A000108(n+1)-(A007598(n+1)+A007598(n))` -/
def P17336399927348088449.Spec : Prop :=
  ∀ n, P17336399927348088449.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P10120345280142171470

`Δ[A014137(n)-Δ[A001519(n)]]`
-/

namespace A122880.P10120345280142171470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122880.P10120345280142171470

namespace A122880

/-- `Δ[A014137(n)-Δ[A001519(n)]]` -/
def P10120345280142171470.Spec : Prop :=
  ∀ n, P10120345280142171470.a n = A122880 (n + 1)

end A122880

/-! ## A122880.P13911618289727563847

`Δ[A155587(n+1)-A000045(2*n)]`
-/

namespace A122880.P13911618289727563847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 1) - A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122880.P13911618289727563847

namespace A122880

/-- `Δ[A155587(n+1)-A000045(2*n)]` -/
def P13911618289727563847.Spec : Prop :=
  ∀ n, P13911618289727563847.a n = A122880 (n + 1)

end A122880

/-!
# A122881: Triangle read by rows: number of Catalan paths of 2n steps of all values less than or equal to m.

The programs for A122881, there is no canonical definition to state claims against.
-/

/-! ## A122881.P1363393012517213396

`A340792(A083861(n)+1)`
-/

namespace A122881.P1363393012517213396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340792 (A083861 n + 1).toNat

end

end A122881.P1363393012517213396

/-! ## A122881.P13394545994924065091

`A144224(n+1)+A082858(A143632(n))`
-/

namespace A122881.P13394545994924065091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144224 (n + 1) + A082858 (A143632 n).toNat

end

end A122881.P13394545994924065091

/-! ## A122881.P13272859025122649916

`A178602(A144224(n+2))+A144224(n+1)`
-/

namespace A122881.P13272859025122649916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 (A144224 (n + 2)).toNat + A144224 (n + 1)

end

end A122881.P13272859025122649916

/-! ## A122881.P14759690429551178550

`A144224(n+1)+A144200(A144252(n))`
-/

namespace A122881.P14759690429551178550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144224 (n + 1) + A144200 (A144252 n).toNat

end

end A122881.P14759690429551178550

/-! ## A122881.P3788240242912814234

`A209859(A180338(n))`
-/

namespace A122881.P3788240242912814234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A180338 n).toNat

end

end A122881.P3788240242912814234

/-!
# A122882: Array of T(n,m)=1*5*...*(4n-3)*3*7*...*(4m-1)*2^(n+m)/(n+m)! by antidiagonals.

The programs for A122882, there is no canonical definition to state claims against.
-/

/-! ## A122882.P18271890986750474047

`A248325(n)/∏[char[∑[n+1]]+1]`
-/

namespace A122882.P18271890986750474047
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248325 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A122882.P18271890986750474047

/-! ## A122882.P1143483380467251241

`floor(A248325(n)/A137688(n))`
-/

namespace A122882.P1143483380467251241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248325 n : ℚ) / (A137688 n : ℚ)⌋

end

end A122882.P1143483380467251241

/-! ## A122882.P16117706905130835146

`A028310(A248325(n)/A137688(n))`
-/

namespace A122882.P16117706905130835146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A248325 n : ℚ) / (A137688 n : ℚ))).toNat

end

end A122882.P16117706905130835146

/-!
# A122883: The (1,3)-entry in the 3 X 3 matrix M^n, where M = [1,1,1 / 4,2,1 / 9,3,1].

The programs for A122883, the canonical program `A122883.P793844069338570476` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122883 has offset 1).

The definition of A122883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122883.P4663525739916874160

`ogf((1-x)/(1-4x-11x^2+2x^3))`
-/

namespace A122883.P4663525739916874160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, -11, 2] n

end

end A122883.P4663525739916874160

namespace A122883

/-- `ogf((1-x)/(1-4x-11x^2+2x^3))` -/
def P4663525739916874160.Spec : Prop :=
  ∀ n, P4663525739916874160.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P793844069338570476

`4*a(n-1)+11*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=23`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122883

/-- `4*a(n-1)+11*a(n-2)-2*a(n-3)` -/
def P793844069338570476.Spec : Prop :=
  ∀ n, P793844069338570476.a n = A122883 (n + 1)

theorem P793844069338570476.correct : P793844069338570476.Spec := by
  intro n
  simp only [A122883, Nat.add_sub_cancel]

end A122883

/-! ## A122883.P5700117894384830721

`A122886(3*(n+1))`
-/

namespace A122883.P5700117894384830721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (3 * (n + 1))

end

end A122883.P5700117894384830721

namespace A122883

/-- `A122886(3*(n+1))` -/
def P5700117894384830721.Spec : Prop :=
  ∀ n, P5700117894384830721.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P1650519352615389320

`Δ[A001109(n)]-2*a(n-1)` with `a(0)=1`
-/

namespace A122883.P1650519352615389320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - 2 * a (n - 1)

end

end A122883.P1650519352615389320

namespace A122883

/-- `Δ[A001109(n)]-2*a(n-1)` -/
def P1650519352615389320.Spec : Prop :=
  ∀ n, P1650519352615389320.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P11662560025076339647

`A001653(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A122883.P11662560025076339647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001653 (n + 1) - 2 * a (n - 1)

end

end A122883.P11662560025076339647

namespace A122883

/-- `A001653(n+1)-2*a(n-1)` -/
def P11662560025076339647.Spec : Prop :=
  ∀ n, P11662560025076339647.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P16342963098654148313

`A182190(n)+1-2*a(n-1)` with `a(0)=1`
-/

namespace A122883.P16342963098654148313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A182190 n + 1 - 2 * a (n - 1)

end

end A122883.P16342963098654148313

namespace A122883

/-- `A182190(n)+1-2*a(n-1)` -/
def P16342963098654148313.Spec : Prop :=
  ∀ n, P16342963098654148313.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P7381395396464451563

`A079496(Δ[n²])-2*a(n-1)` with `a(0)=1`
-/

namespace A122883.P7381395396464451563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2 * a (n - 1)

end

end A122883.P7381395396464451563

namespace A122883

/-- `A079496(Δ[n²])-2*a(n-1)` -/
def P7381395396464451563.Spec : Prop :=
  ∀ n, P7381395396464451563.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P16853520728486088430

`abs(2*a(n-1)-A077985(2*n))` with `a(0)=1`
-/

namespace A122883.P16853520728486088430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |2 * a (n - 1) - A077985 (2 * n)|

end

end A122883.P16853520728486088430

namespace A122883

/-- `abs(2*a(n-1)-A077985(2*n))` -/
def P16853520728486088430.Spec : Prop :=
  ∀ n, P16853520728486088430.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P7393254523733697450

`A000129(2*n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A122883.P7393254523733697450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000129 (2 * n + 1) - 2 * a (n - 1)

end

end A122883.P7393254523733697450

namespace A122883

/-- `A000129(2*n+1)-2*a(n-1)` -/
def P7393254523733697450.Spec : Prop :=
  ∀ n, P7393254523733697450.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P2395067890754122188

`2*A011900(n)-1-2*a(n-1)` with `a(0)=1`
-/

namespace A122883.P2395067890754122188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A011900 n - 1 - 2 * a (n - 1)

end

end A122883.P2395067890754122188

namespace A122883

/-- `2*A011900(n)-1-2*a(n-1)` -/
def P2395067890754122188.Spec : Prop :=
  ∀ n, P2395067890754122188.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P14867803691137106649

`record[A122886(A338281(n+2))]`
-/

namespace A122883.P14867803691137106649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (A338281 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122883.P14867803691137106649

namespace A122883

/-- `record[A122886(A338281(n+2))]` -/
def P14867803691137106649.Spec : Prop :=
  ∀ n, P14867803691137106649.a n = A122883 (n + 1)

end A122883

/-! ## A122883.P2185578083002753956

`Δ[A122884(n+1)-A001109(n+1)]`
-/

namespace A122883.P2185578083002753956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122884 (n + 1) - A001109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122883.P2185578083002753956

namespace A122883

/-- `Δ[A122884(n+1)-A001109(n+1)]` -/
def P2185578083002753956.Spec : Prop :=
  ∀ n, P2185578083002753956.a n = A122883 (n + 1)

end A122883

/-!
# A122884: a(n+1) = 4*a(n) + 11*a(n-1) - 2*a(n-3).

The programs for A122884, the canonical program `A122884.P4026885195000865252` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122884 has offset 1).

The definition of A122884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122884.P4026885195000865252

`ogf((1+3x)/(1-4x-11x^2+2x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122884

/-- `ogf((1+3x)/(1-4x-11x^2+2x^3))` -/
def P4026885195000865252.Spec : Prop :=
  ∀ n, P4026885195000865252.a n = A122884 (n + 1)

theorem P4026885195000865252.correct : P4026885195000865252.Spec := by
  intro n
  simp only [A122884, Nat.add_sub_cancel]

end A122884

/-! ## A122884.P16035355748851742792

`A122886(3*n+4)`
-/

namespace A122884.P16035355748851742792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (3 * n + 4)

end

end A122884.P16035355748851742792

namespace A122884

/-- `A122886(3*n+4)` -/
def P16035355748851742792.Spec : Prop :=
  ∀ n, P16035355748851742792.a n = A122884 (n + 1)

end A122884

/-! ## A122884.P6304540051346095014

`A038761(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A122884.P6304540051346095014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038761 n - 2 * a (n - 1)

end

end A122884.P6304540051346095014

namespace A122884

/-- `A038761(n)-2*a(n-1)` -/
def P6304540051346095014.Spec : Prop :=
  ∀ n, P6304540051346095014.a n = A122884 (n + 1)

end A122884

/-! ## A122884.P17685725478024169475

`A048654(2*n)-2*a(n-1)` with `a(0)=1`
-/

namespace A122884.P17685725478024169475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048654 (2 * n) - 2 * a (n - 1)

end

end A122884.P17685725478024169475

namespace A122884

/-- `A048654(2*n)-2*a(n-1)` -/
def P17685725478024169475.Spec : Prop :=
  ∀ n, P17685725478024169475.a n = A122884 (n + 1)

end A122884

/-! ## A122884.P10317649304371252559

`record[A122886(A014682(n)+2)]`
-/

namespace A122884.P10317649304371252559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (A014682 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122884.P10317649304371252559

namespace A122884

/-- `record[A122886(A014682(n)+2)]` -/
def P10317649304371252559.Spec : Prop :=
  ∀ n, P10317649304371252559.a n = A122884 (n + 1)

end A122884

/-! ## A122884.P2242019221675346227

`record[A122886(A338281(n+2)+1)]`
-/

namespace A122884.P2242019221675346227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (A338281 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122884.P2242019221675346227

namespace A122884

/-- `record[A122886(A338281(n+2)+1)]` -/
def P2242019221675346227.Spec : Prop :=
  ∀ n, P2242019221675346227.a n = A122884 (n + 1)

end A122884

/-! ## A122884.P12253737872288371539

`Δ[A122883(n+1)]-A122885(n+1)`
-/

namespace A122884.P12253737872288371539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122885 (n + 1)

end

end A122884.P12253737872288371539

namespace A122884

/-- `Δ[A122883(n+1)]-A122885(n+1)` -/
def P12253737872288371539.Spec : Prop :=
  ∀ n, P12253737872288371539.a n = A122884 (n + 1)

end A122884

/-! ## A122884.P6844000311364008174

`A122883(n+2)-(A122885(n+1)+A122883(n+1))`
-/

namespace A122884.P6844000311364008174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122883 (n + 2) - (A122885 (n + 1) + A122883 (n + 1))

end

end A122884.P6844000311364008174

namespace A122884

/-- `A122883(n+2)-(A122885(n+1)+A122883(n+1))` -/
def P6844000311364008174.Spec : Prop :=
  ∀ n, P6844000311364008174.a n = A122884 (n + 1)

end A122884

/-!
# A122885: a(n+1) = 4*a(n) + 11*a(n-1) - 2*a(n-2).

The programs for A122885, the canonical program `A122885.P10664741135633837871` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122885 has offset 1).

The definition of A122885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122885.P10664741135633837871

`ogf((1+9x-2x^2)/(1-4x-11x^2+2x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122885

/-- `ogf((1+9x-2x^2)/(1-4x-11x^2+2x^3))` -/
def P10664741135633837871.Spec : Prop :=
  ∀ n, P10664741135633837871.a n = A122885 (n + 1)

theorem P10664741135633837871.correct : P10664741135633837871.Spec := by
  intro n
  simp only [A122885, Nat.add_sub_cancel]

end A122885

/-! ## A122885.P14866467728575968621

`A122886(3*n+5)`
-/

namespace A122885.P14866467728575968621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (3 * n + 5)

end

end A122885.P14866467728575968621

namespace A122885

/-- `A122886(3*n+5)` -/
def P14866467728575968621.Spec : Prop :=
  ∀ n, P14866467728575968621.a n = A122885 (n + 1)

end A122885

/-! ## A122885.P8490565217599542471

`A075841(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A122885.P8490565217599542471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075841 (n + 1) - 2 * a (n - 1)

end

end A122885.P8490565217599542471

namespace A122885

/-- `A075841(n+1)-2*a(n-1)` -/
def P8490565217599542471.Spec : Prop :=
  ∀ n, P8490565217599542471.a n = A122885 (n + 1)

end A122885

/-! ## A122885.P2599684038025442630

`record[A122886(A014682(n+1))]`
-/

namespace A122885.P2599684038025442630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (A014682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122885.P2599684038025442630

namespace A122885

/-- `record[A122886(A014682(n+1))]` -/
def P2599684038025442630.Spec : Prop :=
  ∀ n, P2599684038025442630.a n = A122885 (n + 1)

end A122885

/-! ## A122885.P6180988953514948011

`record[A122886(A338281(n+2)-1)]`
-/

namespace A122885.P6180988953514948011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122886 (A338281 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122885.P6180988953514948011

namespace A122885

/-- `record[A122886(A338281(n+2)-1)]` -/
def P6180988953514948011.Spec : Prop :=
  ∀ n, P6180988953514948011.a n = A122885 (n + 1)

end A122885

/-! ## A122885.P4269771759637282659

`Δ[A122883(n+1)]-A122884(n+1)`
-/

namespace A122885.P4269771759637282659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122884 (n + 1)

end

end A122885.P4269771759637282659

namespace A122885

/-- `Δ[A122883(n+1)]-A122884(n+1)` -/
def P4269771759637282659.Spec : Prop :=
  ∀ n, P4269771759637282659.a n = A122885 (n + 1)

end A122885

/-! ## A122885.P16541797081955988018

`A122883(n+2)-(A122884(n+1)+A122883(n+1))`
-/

namespace A122885.P16541797081955988018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122883 (n + 2) - (A122884 (n + 1) + A122883 (n + 1))

end

end A122885.P16541797081955988018

namespace A122885

/-- `A122883(n+2)-(A122884(n+1)+A122883(n+1))` -/
def P16541797081955988018.Spec : Prop :=
  ∀ n, P16541797081955988018.a n = A122885 (n + 1)

end A122885

/-!
# A122886: Interlaced merger of A122883, A122884 and A122885.

The programs for A122886, the canonical program `A122886.P13082440322466163735` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122886 has offset 0).

The definition of A122886 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122886.P13082440322466163735

`4*a(n-3)+11*a(n-6)-2*a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=3, a(7)=7, a(8)=13`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122886

/-- `4*a(n-3)+11*a(n-6)-2*a(n-9)` -/
def P13082440322466163735.Spec : Prop :=
  ∀ n, P13082440322466163735.a n = A122886 n

theorem P13082440322466163735.correct : P13082440322466163735.Spec := by
  intro n
  simp only [A122886]

end A122886

/-! ## A122886.P3277440283418693211

`ogf((x^2+x^3+x^4-3x^5-x^6+3x^7-2x^8)/(1-4x^3-11x^6+2x^9))`
-/

namespace A122886.P3277440283418693211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 1, -3, -1, 3, -2] [1, 0, 0, -4, 0, 0, -11, 0, 0, 2] n

end

end A122886.P3277440283418693211

namespace A122886

/-- `ogf((x^2+x^3+x^4-3x^5-x^6+3x^7-2x^8)/(1-4x^3-11x^6+2x^9))` -/
def P3277440283418693211.Spec : Prop :=
  ∀ n, P3277440283418693211.a n = A122886 n

end A122886

/-!
# A122887: An upper diagonal of table A122888.

The programs for A122887, there is no canonical definition to state claims against.
-/

/-! ## A122887.P9853416750634072139

`A122888(2^(n+2)+n+2)`
-/

namespace A122887.P9853416750634072139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (2 ^ (n + 2) + (n + 2))

end

end A122887.P9853416750634072139

/-! ## A122887.P4397996995713002268

`record[A122888(A059268(n)+A002262(n))]`
-/

namespace A122887.P4397996995713002268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (A059268 n + A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122887.P4397996995713002268

/-!
# A122888: Triangle, read by rows, where row n lists the coefficients of x^k, k=1..2^n, in the n-th iteration of (x + x^2) for n>=0.

The programs for A122888, there is no canonical definition to state claims against.
-/

/-! ## A122888.P12011043250724471598

`abs(A225201(A054429(n+1)))`
-/

namespace A122888.P12011043250724471598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225201 (A054429 (n + 1)).toNat|

end

end A122888.P12011043250724471598

/-! ## A122888.P6932499933259592451

`gcd(A000038(n), A225201(A054429(n+1)))`
-/

namespace A122888.P6932499933259592451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225201 (A054429 (n + 1)).toNat)

end

end A122888.P6932499933259592451

/-! ## A122888.P15488346142830042939

`lcm(A020985(n), A225201(A054429(n+1)))`
-/

namespace A122888.P15488346142830042939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A225201 (A054429 (n + 1)).toNat)

end

end A122888.P15488346142830042939

/-! ## A122888.P8773024056020168106

`lcm(-A225201(A054429(n+1)), A097807(n+1))`
-/

namespace A122888.P8773024056020168106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A225201 (A054429 (n + 1)).toNat) (A097807 (n + 1))

end

end A122888.P8773024056020168106

/-! ## A122888.P2212648326717740112

`gcd(-A225201(A054429(n+1)), A008683(4*(n+1)))`
-/

namespace A122888.P2212648326717740112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A225201 (A054429 (n + 1)).toNat) (A008683 (4 * (n + 1)))

end

end A122888.P2212648326717740112

/-!
# A122889: Antidiagonal sums of table A122888.

The programs for A122889, there is no canonical definition to state claims against.
-/

/-! ## A122889.P13791082714738883003

`A152799(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A122889.P13791082714738883003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A152799 (n - 2) + a (n - 1)

end

end A122889.P13791082714738883003

/-! ## A122889.P7712332233104267210

`A152798(∑[n+1]+1)`
-/

namespace A122889.P7712332233104267210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A122889.P7712332233104267210

/-! ## A122889.P16942027805613509013

`A152798(A134869(n+1))+A084904(n)`
-/

namespace A122889.P16942027805613509013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (A134869 (n + 1)).toNat + A084904 n

end

end A122889.P16942027805613509013

/-! ## A122889.P13225522468120690680

`A185037(n)+A152798(A134869(n+1))`
-/

namespace A122889.P13225522468120690680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + A152798 (A134869 (n + 1)).toNat

end

end A122889.P13225522468120690680

/-! ## A122889.P11875078177324187294

`gcd(A000038(n), A152798(A134869(n+1)))`
-/

namespace A122889.P11875078177324187294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A152798 (A134869 (n + 1)).toNat)

end

end A122889.P11875078177324187294

/-!
# A122890: Triangle, read by rows, where the g.f. of row n divided by (1-x)^n yields the g.f. of column n in the triangle A122888, for n>=1.

The programs for A122890, there is no canonical definition to state claims against.
-/

/-! ## A122890.P13778902012617167674

`A158830(∑[char[∑[n]]]²-n)`
-/

namespace A122890.P13778902012617167674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A122890.P13778902012617167674

/-! ## A122890.P18365760661475931315

`or(char[2], A158830(A038722(n+1)))`
-/

namespace A122890.P18365760661475931315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A158830 (A038722 (n + 1)).toNat)

end

end A122890.P18365760661475931315

/-! ## A122890.P13938567130644497463

`A060576(n)*A158830(A038722(n+1))`
-/

namespace A122890.P13938567130644497463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A158830 (A038722 (n + 1)).toNat

end

end A122890.P13938567130644497463

/-! ## A122890.P16793066239289722983

`A158830(A038722(n+1))*A304042(n)`
-/

namespace A122890.P16793066239289722983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (A038722 (n + 1)).toNat * A304042 n

end

end A122890.P16793066239289722983

/-! ## A122890.P9073321578830130080

`A158830(A038722(n+1))%A000032(n)`
-/

namespace A122890.P9073321578830130080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158830 (A038722 (n + 1)).toNat) (A000032 n)

end

end A122890.P9073321578830130080

/-! ## A122890.P7671024568211872140

`A000041(C(2, n))*A158830(A038722(n+1))`
-/

namespace A122890.P7671024568211872140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A158830 (A038722 (n + 1)).toNat

end

end A122890.P7671024568211872140

/-! ## A122890.P2838469285898752306

`A000108(C(2, n))*A158830(A038722(n+1))`
-/

namespace A122890.P2838469285898752306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A158830 (A038722 (n + 1)).toNat

end

end A122890.P2838469285898752306

/-! ## A122890.P1594191497874921494

`A007318(C(2, n))*A158830(A038722(n+1))`
-/

namespace A122890.P1594191497874921494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A158830 (A038722 (n + 1)).toNat

end

end A122890.P1594191497874921494

/-! ## A122890.P11889529066265935828

`A158830(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A122890.P11889529066265935828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158830 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A122890.P11889529066265935828

/-! ## A122890.P11630537734081272825

`A135723(n)-A023532(n)`
-/

namespace A122890.P11630537734081272825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135723 n - A023532 n

end

end A122890.P11630537734081272825

/-!
# A122891: Column sums of triangle A122890.

The programs for A122891, there is no canonical definition to state claims against.
-/

/-! ## A122891.P13035627614004365699

`A332882(n*a(n-1)²)` with `a(0)=1`
-/

namespace A122891.P13035627614004365699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332882 ((n : ℤ) * a (n - 1) ^ 2).toNat

end

end A122891.P13035627614004365699

/-!
# A122892: Secondary diagonal of triangle A122890.

The programs for A122892, there is no canonical definition to state claims against.
-/

/-! ## A122892.P18053874205665142589

`A158830(∑[n+3]+5)`
-/

namespace A122892.P18053874205665142589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A122892.P18053874205665142589

/-! ## A122892.P5599077570800222480

`record[A158830(A133263(n))]`
-/

namespace A122892.P5599077570800222480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122892.P5599077570800222480

/-! ## A122892.P17210263787748601971

`record[A158830(A000124(n)+1)]`
-/

namespace A122892.P17210263787748601971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (A000124 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122892.P17210263787748601971

/-! ## A122892.P7267768876318266306

`record[A158830(A000217(n)+2)]`
-/

namespace A122892.P7267768876318266306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122892.P7267768876318266306

/-! ## A122892.P3149868226498121638

`record[A158830(Δ[A180415(n+1)])]`
-/

namespace A122892.P3149868226498121638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158830 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122892.P3149868226498121638

/-!
# A122893: Position of largest coefficient of n-th self-composition of (x+x^2) for n>=0.

The programs for A122893, there is no canonical definition to state claims against.
-/

/-! ## A122893.P1488823449703251278

`A008617(A165071(n+2)+A000051(n+3))`
-/

namespace A122893.P1488823449703251278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A165071 (n + 2) + A000051 (n + 3)).toNat

end

end A122893.P1488823449703251278

/-! ## A122893.P3542606176976124013

`A008617(A165071(n+2)+A000225(n+3))`
-/

namespace A122893.P3542606176976124013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A165071 (n + 2) + A000225 (n + 3)).toNat

end

end A122893.P3542606176976124013

/-! ## A122893.P6853734116116899764

`A163563(A287966(n+1))`
-/

namespace A122893.P6853734116116899764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A287966 (n + 1)).toNat

end

end A122893.P6853734116116899764

/-! ## A122893.P3449386067079942438

`A054404(A249117(2^n+1))`
-/

namespace A122893.P3449386067079942438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A249117 (2 ^ n + 1)).toNat

end

end A122893.P3449386067079942438

/-! ## A122893.P12836796973745928718

`A188967(A045545(2*n))+A077947(n)`
-/

namespace A122893.P12836796973745928718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A045545 (2 * n)).toNat + A077947 n

end

end A122893.P12836796973745928718

/-!
# A122894: Coefficient of x^(2^(n-1)) in the n-th self-composition of (x+x^2) for n>=1.

The programs for A122894, there is no canonical definition to state claims against.
-/

/-! ## A122894.P8557921586180712234

`A122888(A033484(n))`
-/

namespace A122894.P8557921586180712234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (A033484 n).toNat

end

end A122894.P8557921586180712234

/-! ## A122894.P16458893835906804655

`A122888(A007283(n)-2)`
-/

namespace A122894.P16458893835906804655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (A007283 n - 2).toNat

end

end A122894.P16458893835906804655

/-! ## A122894.P4424341088134714304

`A122888(abs(Δ[A225883(n)]))`
-/

namespace A122894.P4424341088134714304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 |f1 (n + 1) - f1 n|.toNat

end

end A122894.P4424341088134714304

/-!
# A122895: Characteristic function of natural numbers with number of divisors equal to a Fibonacci number.

The programs for A122895, the canonical program `A122895.P9639352825295012405` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122895 has offset 1).

The definition of A122895 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010056, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122895.P9639352825295012405

`A010056(A000005(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A122895

/-- `A010056(A000005(n+1))` -/
def P9639352825295012405.Spec : Prop :=
  ∀ n, P9639352825295012405.a n = A122895 (n + 1)

theorem P9639352825295012405.correct : P9639352825295012405.Spec := by
  intro n
  simp only [A122895, Nat.add_sub_cancel]

end A122895

/-! ## A122895.P7890298673958071191

`char[A123193(n+1)-1]`
-/

namespace A122895.P7890298673958071191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A122895.P7890298673958071191

namespace A122895

/-- `char[A123193(n+1)-1]` -/
def P7890298673958071191.Spec : Prop :=
  ∀ n, (P7890298673958071191.a n : ℤ) = A122895 (n + 1)

end A122895

/-! ## A122895.P1795837394466219921

`A010056(∏{e}[n+1, #+1])`
-/

namespace A122895.P1795837394466219921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A122895.P1795837394466219921

namespace A122895

/-- `A010056(∏{e}[n+1, #+1])` -/
def P1795837394466219921.Spec : Prop :=
  ∀ n, P1795837394466219921.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P11212477409312590875

`round(acot(A003603(∏{e}[n+1, #+1])))`
-/

namespace A122895.P11212477409312590875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A003603 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ))

end

end A122895.P11212477409312590875

namespace A122895

/-- `round(acot(A003603(∏{e}[n+1, #+1])))` -/
def P11212477409312590875.Spec : Prop :=
  ∀ n, P11212477409312590875.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P1652895645316921296

`round(acot(A133299(∏{e}[n+1, #+1])))`
-/

namespace A122895.P1652895645316921296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A133299 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ))

end

end A122895.P1652895645316921296

namespace A122895

/-- `round(acot(A133299(∏{e}[n+1, #+1])))` -/
def P1652895645316921296.Spec : Prop :=
  ∀ n, P1652895645316921296.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P2536564006421518696

`A010056(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A122895.P2536564006421518696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A122895.P2536564006421518696

namespace A122895

/-- `A010056(∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P2536564006421518696.Spec : Prop :=
  ∀ n, P2536564006421518696.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P1596404807770811040

`A192687(A032741(n+1))`
-/

namespace A122895.P1596404807770811040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 (A032741 (n + 1)).toNat

end

end A122895.P1596404807770811040

namespace A122895

/-- `A192687(A032741(n+1))` -/
def P1596404807770811040.Spec : Prop :=
  ∀ n, P1596404807770811040.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P14976667059507149160

`A010056(A032741(n+1)+1)`
-/

namespace A122895.P14976667059507149160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A032741 (n + 1) + 1).toNat

end

end A122895.P14976667059507149160

namespace A122895

/-- `A010056(A032741(n+1)+1)` -/
def P14976667059507149160.Spec : Prop :=
  ∀ n, P14976667059507149160.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P4914357534698800000

`A192687(A000005(n+1)-1)`
-/

namespace A122895.P4914357534698800000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 (A000005 (n + 1) - 1).toNat

end

end A122895.P4914357534698800000

namespace A122895

/-- `A192687(A000005(n+1)-1)` -/
def P4914357534698800000.Spec : Prop :=
  ∀ n, P4914357534698800000.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P11864454769959100039

`A010056(A062011(n+1)/2)`
-/

namespace A122895.P11864454769959100039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (SequenceMachineLib.roundAway ((A062011 (n + 1) : ℚ) / 2)).toNat

end

end A122895.P11864454769959100039

namespace A122895

/-- `A010056(A062011(n+1)/2)` -/
def P11864454769959100039.Spec : Prop :=
  ∀ n, P11864454769959100039.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P7906315128114862826

`A010056(1-A049820(n+1)+n)`
-/

namespace A122895.P7906315128114862826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (1 - A049820 (n + 1) + (n : ℤ)).toNat

end

end A122895.P7906315128114862826

namespace A122895

/-- `A010056(1-A049820(n+1)+n)` -/
def P7906315128114862826.Spec : Prop :=
  ∀ n, P7906315128114862826.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P1435575857310395030

`A286326(A000005(n+1))^-A081589(n)`
-/

namespace A122895.P1435575857310395030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286326 (A000005 (n + 1)).toNat : ℚ) ^ (-A081589 n : ℤ)

end

end A122895.P1435575857310395030

namespace A122895

/-- `A286326(A000005(n+1))^-A081589(n)` -/
def P1435575857310395030.Spec : Prop :=
  ∀ n, P1435575857310395030.a n = (A122895 (n + 1) : ℚ)

end A122895

/-! ## A122895.P8274218557960493694

`A010056(A096737(n+1))`
-/

namespace A122895.P8274218557960493694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A096737 (n + 1)).toNat

end

end A122895.P8274218557960493694

namespace A122895

/-- `A010056(A096737(n+1))` -/
def P8274218557960493694.Spec : Prop :=
  ∀ n, P8274218557960493694.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P4549037896888656304

`A086590(∏{e}[n+1, #+1])%2`
-/

namespace A122895.P4549037896888656304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086590 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))) 2

end

end A122895.P4549037896888656304

namespace A122895

/-- `A086590(∏{e}[n+1, #+1])%2` -/
def P4549037896888656304.Spec : Prop :=
  ∀ n, P4549037896888656304.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P11852105680364124823

`A205083(A100577(n+1))`
-/

namespace A122895.P11852105680364124823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205083 (A100577 (n + 1)).toNat

end

end A122895.P11852105680364124823

namespace A122895

/-- `A205083(A100577(n+1))` -/
def P11852105680364124823.Spec : Prop :=
  ∀ n, P11852105680364124823.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P6316594040555787376

`A000688(A130317(∏{e}[n+1, #+1]))%2`
-/

namespace A122895.P6316594040555787376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000688 (A130317 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat) 2

end

end A122895.P6316594040555787376

namespace A122895

/-- `A000688(A130317(∏{e}[n+1, #+1]))%2` -/
def P6316594040555787376.Spec : Prop :=
  ∀ n, P6316594040555787376.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P13476570530329179473

`A188431(A325770(A325762(A325765(n))))`
-/

namespace A122895.P13476570530329179473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 (A325770 (A325762 (A325765 n).toNat).toNat).toNat

end

end A122895.P13476570530329179473

namespace A122895

/-- `A188431(A325770(A325762(A325765(n))))` -/
def P13476570530329179473.Spec : Prop :=
  ∀ n, P13476570530329179473.a n = A122895 (n + 1)

end A122895

/-! ## A122895.P15071348890686734701

`A003849(A046951((n+1)²)²)`
-/

namespace A122895.P15071348890686734701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A046951 ((n + 1) ^ 2) ^ 2).toNat

end

end A122895.P15071348890686734701

namespace A122895

/-- `A003849(A046951((n+1)²)²)` -/
def P15071348890686734701.Spec : Prop :=
  ∀ n, P15071348890686734701.a n = A122895 (n + 1)

end A122895

/-!
# A122896: Riordan array (1, (1 - x - sqrt(1 - 2*x - 3*x^2)) / (2*x)), a Riordan array for directed animals. Triangle read by rows.

The programs for A122896, the canonical program `A122896.P5573786396997735909` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122896 has offset 0).

The definition of A122896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122896.P16539236786309130823

`A026300(A056943(n))-char[∑[n+1]]`
-/

namespace A122896.P16539236786309130823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A056943 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A122896.P16539236786309130823

namespace A122896

/-- `A026300(A056943(n))-char[∑[n+1]]` -/
def P16539236786309130823.Spec : Prop :=
  ∀ n, P16539236786309130823.a n = A122896 n

end A122896

/-! ## A122896.P16737951388786631761

`(A173786(n)+1)%2*A026300(A056943(n))`
-/

namespace A122896.P16737951388786631761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173786 n + 1) 2 * A026300 (A056943 n).toNat

end

end A122896.P16737951388786631761

namespace A122896

/-- `(A173786(n)+1)%2*A026300(A056943(n))` -/
def P16737951388786631761.Spec : Prop :=
  ∀ n, P16737951388786631761.a n = A122896 n

end A122896

/-! ## A122896.P5573786396997735909

`(A035214(n)+A000122(n))%2*A026300(A056943(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122896

/-- `(A035214(n)+A000122(n))%2*A026300(A056943(n))` -/
def P5573786396997735909.Spec : Prop :=
  ∀ n, P5573786396997735909.a n = A122896 n

theorem P5573786396997735909.correct : P5573786396997735909.Spec := by
  intro n
  simp only [A122896]

end A122896

/-! ## A122896.P7827434075456188968

`(A035214(n)+A010051(2*(n+1)))%2*A026300(A056943(n))`
-/

namespace A122896.P7827434075456188968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035214 n + A010051 (2 * (n + 1))) 2 * A026300 (A056943 n).toNat

end

end A122896.P7827434075456188968

namespace A122896

/-- `(A035214(n)+A010051(2*(n+1)))%2*A026300(A056943(n))` -/
def P7827434075456188968.Spec : Prop :=
  ∀ n, P7827434075456188968.a n = A122896 n

end A122896

/-! ## A122896.P11561635326535395340

`(A351263(n+1)+A152535(n+1))%2*A026300(A056943(n))`
-/

namespace A122896.P11561635326535395340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351263 (n + 1) + A152535 (n + 1)) 2 * A026300 (A056943 n).toNat

end

end A122896.P11561635326535395340

namespace A122896

/-- `(A351263(n+1)+A152535(n+1))%2*A026300(A056943(n))` -/
def P11561635326535395340.Spec : Prop :=
  ∀ n, P11561635326535395340.a n = A122896 n

end A122896

/-! ## A122896.P2179713778460321182

`(A351263(n+1)+A332211(n+1))%2*A026300(A056943(n))`
-/

namespace A122896.P2179713778460321182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351263 (n + 1) + A332211 (n + 1)) 2 * A026300 (A056943 n).toNat

end

end A122896.P2179713778460321182

namespace A122896

/-- `(A351263(n+1)+A332211(n+1))%2*A026300(A056943(n))` -/
def P2179713778460321182.Spec : Prop :=
  ∀ n, P2179713778460321182.a n = A122896 n

end A122896

/-!
# A122897: Riordan array (1/(1-x), c(x)-1) where c(x) is the g.f. of A000108.

The programs for A122897, there is no canonical definition to state claims against.
-/

/-! ## A122897.P2513437808096617369

`A091491(A245300(n)+A002262(n))`
-/

namespace A122897.P2513437808096617369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 (A245300 n + A002262 n).toNat

end

end A122897.P2513437808096617369

/-! ## A122897.P11511851585567311356

`A096465(A245300(n)+A114327(n))`
-/

namespace A122897.P11511851585567311356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A245300 n + A114327 n).toNat

end

end A122897.P11511851585567311356

/-! ## A122897.P7434661803070450440

`A145972(A185868(n+1)+A113679(n))`
-/

namespace A122897.P7434661803070450440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145972 (A185868 (n + 1) + A113679 n).toNat

end

end A122897.P7434661803070450440

/-! ## A122897.P7272086509625051832

`A145972(A185868(n+1)-A036453(n+1))`
-/

namespace A122897.P7272086509625051832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145972 (A185868 (n + 1) - A036453 (n + 1)).toNat

end

end A122897.P7272086509625051832

/-! ## A122897.P118416614822289820

`A117425(n)-A178798(A176487(n))`
-/

namespace A122897.P118416614822289820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117425 n - A178798 (A176487 n).toNat

end

end A122897.P118416614822289820

/-!
# A122898: Expansion of (sqrt(21*x^2 - 10*x + 1) + 7*x - 1) / (2*x*(1 - 7*x)).

The programs for A122898, the canonical program `A122898.P5471190250916242493` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122898 has offset 0).

The definition of A122898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122898.P5471190250916242493

`2*A098409(n)-A104455(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A122898

/-- `2*A098409(n)-A104455(n)` -/
def P5471190250916242493.Spec : Prop :=
  ∀ n, P5471190250916242493.a n = A122898 n

theorem P5471190250916242493.correct : P5471190250916242493.Spec := by
  intro n
  simp only [A122898]

end A122898

/-! ## A122898.P18226838783696922385

`A360318(n+1)/2`
-/

namespace A122898.P18226838783696922385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360318 (n + 1) : ℚ) / 2

end

end A122898.P18226838783696922385

namespace A122898

/-- `A360318(n+1)/2` -/
def P18226838783696922385.Spec : Prop :=
  ∀ n, P18226838783696922385.a n = (A122898 n : ℚ)

end A122898

/-! ## A122898.P7265578397686761986

`Δ[∑[A360318(n)]/2]`
-/

namespace A122898.P7265578397686761986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360318 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122898.P7265578397686761986

namespace A122898

/-- `Δ[∑[A360318(n)]/2]` -/
def P7265578397686761986.Spec : Prop :=
  ∀ n, P7265578397686761986.a n = (A122898 n : ℚ)

end A122898

/-!
# A122899: Triangle with row sums counting directed animals.

The programs for A122899, the canonical program `A122899.P4355926482667464665` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122899 has offset 0).

The definition of A122899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122899.P4355926482667464665

`C(row(n), col(n))*C(col(n)+1, row(n)-col(n))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A122899

/-- `C(row(n), col(n))*C(col(n)+1, row(n)-col(n))` -/
def P4355926482667464665.Spec : Prop :=
  ∀ n, (P4355926482667464665.a n : ℤ) = A122899 n

theorem P4355926482667464665.correct : P4355926482667464665.Spec := by
  intro n
  simp only [A122899]

end A122899

/-! ## A122899.P15584338745488257161

`C(1-C(∑[char[∑[n]]], 2)+n, C(comp[∑[n]]-n, 2)-(n+1))*A007318(n)`
-/

namespace A122899.P15584338745488257161
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A007318 n

end

end A122899.P15584338745488257161

namespace A122899

/-- `C(1-C(∑[char[∑[n]]], 2)+n, C(comp[∑[n]]-n, 2)-(n+1))*A007318(n)` -/
def P15584338745488257161.Spec : Prop :=
  ∀ n, P15584338745488257161.a n = A122899 n

end A122899

/-! ## A122899.P16606108868795796470

`A007318(n)*A030528(n+1)`
-/

namespace A122899.P16606108868795796470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A030528 (n + 1)

end

end A122899.P16606108868795796470

namespace A122899

/-- `A007318(n)*A030528(n+1)` -/
def P16606108868795796470.Spec : Prop :=
  ∀ n, P16606108868795796470.a n = A122899 n

theorem P16606108868795796470.correct : P16606108868795796470.Spec := by
  intro n
  simp only [A122899, Nat.add_sub_cancel, A122899.P16606108868795796470.a, A122899.P4355926482667464665.a, A007318, A007318.P11755526479805562006.a, A030528, A030528.P14704864385963681542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A122899

/-! ## A122899.P11393341561218837003

`A030528(n+1)*A183154(n)`
-/

namespace A122899.P11393341561218837003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) * A183154 n

end

end A122899.P11393341561218837003

namespace A122899

/-- `A030528(n+1)*A183154(n)` -/
def P11393341561218837003.Spec : Prop :=
  ∀ n, P11393341561218837003.a n = A122899 n

end A122899

/-! ## A122899.P5421069660046234348

`abs(A030528(n+1)*A108086(n))`
-/

namespace A122899.P5421069660046234348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030528 (n + 1) * A108086 n|

end

end A122899.P5421069660046234348

namespace A122899

/-- `abs(A030528(n+1)*A108086(n))` -/
def P5421069660046234348.Spec : Prop :=
  ∀ n, P5421069660046234348.a n = A122899 n

end A122899

/-! ## A122899.P15302567778803664951

`abs(A030528(n+1)*A117440(n))`
-/

namespace A122899.P15302567778803664951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030528 (n + 1) * A117440 n|

end

end A122899.P15302567778803664951

namespace A122899

/-- `abs(A030528(n+1)*A117440(n))` -/
def P15302567778803664951.Spec : Prop :=
  ∀ n, P15302567778803664951.a n = A122899 n

end A122899

/-! ## A122899.P5970976063798065363

`abs(A030528(n+1)*A130595(n))`
-/

namespace A122899.P5970976063798065363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030528 (n + 1) * A130595 n|

end

end A122899.P5970976063798065363

namespace A122899

/-- `abs(A030528(n+1)*A130595(n))` -/
def P5970976063798065363.Spec : Prop :=
  ∀ n, P5970976063798065363.a n = A122899 n

end A122899

/-! ## A122899.P12924690889223079190

`sqrt(A008459(n))*A030528(n+1)`
-/

namespace A122899.P12924690889223079190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A030528 (n + 1) : ℝ)

end

end A122899.P12924690889223079190

namespace A122899

/-- `sqrt(A008459(n))*A030528(n+1)` -/
def P12924690889223079190.Spec : Prop :=
  ∀ n, P12924690889223079190.a n = (A122899 n : ℝ)

end A122899

/-! ## A122899.P3271872723970775518

`A030528(n+1)*A129570(n+1)`
-/

namespace A122899.P3271872723970775518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) * A129570 (n + 1)

end

end A122899.P3271872723970775518

namespace A122899

/-- `A030528(n+1)*A129570(n+1)` -/
def P3271872723970775518.Spec : Prop :=
  ∀ n, P3271872723970775518.a n = A122899 n

end A122899

/-! ## A122899.P17138733806457160753

`A030528(n+1)*A129571(n+1)`
-/

namespace A122899.P17138733806457160753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) * A129571 (n + 1)

end

end A122899.P17138733806457160753

namespace A122899

/-- `A030528(n+1)*A129571(n+1)` -/
def P17138733806457160753.Spec : Prop :=
  ∀ n, P17138733806457160753.a n = A122899 n

end A122899

/-! ## A122899.P12199417184956172695

`A007318(n)*A026729(comp[∑[n]])`
-/

namespace A122899.P12199417184956172695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A026729 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A122899.P12199417184956172695

namespace A122899

/-- `A007318(n)*A026729(comp[∑[n]])` -/
def P12199417184956172695.Spec : Prop :=
  ∀ n, P12199417184956172695.a n = A122899 n

end A122899

