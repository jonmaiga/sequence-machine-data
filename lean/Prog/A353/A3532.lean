import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B012.C000
import Seq.B013.C000
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
# A353200: Expansion of e.g.f. 1/(1 + log(1 - x)^5).

The programs for A353200, there is no canonical definition to state claims against.
-/

/-! ## A353200.P3261728425739365396

`A052767(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A353200.P3261728425739365396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052767 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A353200.P3261728425739365396

/-! ## A353200.P13138630300525386415

`A353404(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A353200.P13138630300525386415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353404 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A353200.P13138630300525386415

/-! ## A353200.P12862061496933354806

`A353404(n)^(n-∏{digits}[n, #])!`
-/

namespace A353200.P12862061496933354806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353404 n ^ Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)).toNat

end

end A353200.P12862061496933354806

/-! ## A353200.P15464079000191633954

`A052767(xor(n, a(floor(n/2))))` with `a(0)=1, a(1)=0`
-/

namespace A353200.P15464079000191633954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A052767 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A353200.P15464079000191633954

/-! ## A353200.P2021859700917107619

`A052767(abs(a(floor(n/2))-n))` with `a(0)=1`
-/

namespace A353200.P2021859700917107619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052767 |a ⌊(n : ℚ) / 2⌋.toNat - (n : ℤ)|.toNat

end

end A353200.P2021859700917107619

/-!
# A353202: Positive integers which can be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

The programs for A353202, the canonical program `A353202.P16479654457777802616` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353202 has offset 1).

The definition of A353202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353202.P16479654457777802616

`lt[A070176(n), 2]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353202

/-- `lt[A070176(n), 2]+1` -/
def P16479654457777802616.Spec : Prop :=
  ∀ n, (P16479654457777802616.a n : ℤ) = A353202 (n + 1)

theorem P16479654457777802616.correct : P16479654457777802616.Spec := by
  intro n
  simp only [A353202, Nat.add_sub_cancel]

end A353202

/-!
# A353206: Number of graph minors in the cycle graph C_n.

The programs for A353206, there is no canonical definition to state claims against.
-/

/-! ## A353206.P9668784397209967663

`A026905(n+3)+n+3-2`
-/

namespace A353206.P9668784397209967663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 3) + (n + 3 : ℤ) - 2

end

end A353206.P9668784397209967663

/-! ## A353206.P4128047790302216488

`A000070(n+3)+n`
-/

namespace A353206.P4128047790302216488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 3) + (n : ℤ)

end

end A353206.P4128047790302216488

/-! ## A353206.P9437901502978733024

`∑[A052810(n+3)]+3`
-/

namespace A353206.P9437901502978733024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A353206.P9437901502978733024

/-! ## A353206.P10917396886788562694

`A026905(n+3)+n+1`
-/

namespace A353206.P10917396886788562694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026905 (n + 3) + (n + 1 : ℤ)

end

end A353206.P10917396886788562694

/-! ## A353206.P10262934817588268976

`A216053(n+4)-1+n`
-/

namespace A353206.P10262934817588268976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216053 (n + 4) - 1 + (n : ℤ)

end

end A353206.P10262934817588268976

/-! ## A353206.P12217680957974733252

`Δ[A014153(n+2)]+n`
-/

namespace A353206.P12217680957974733252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A353206.P12217680957974733252

/-!
# A353207: Number of edge cuts in the n-helm graph.

The programs for A353207, the canonical program `A353207.P16995486582246370338` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353207 has offset 0).

The definition of A353207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353207.P16995486582246370338

`2+8^n-(2-sqrt(2))^n-(2+sqrt(2))^n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A353207

/-- `2+8^n-(2-sqrt(2))^n-(2+sqrt(2))^n` -/
def P16995486582246370338.Spec : Prop :=
  ∀ n, P16995486582246370338.a n = (A353207 n : ℝ)

end A353207

/-!
# A353209: Number of graph minors in the n-node wheel graph.

The programs for A353209, there is no canonical definition to state claims against.
-/

/-! ## A353209.P4882120141051059430

`A245473(A149667(n+1))`
-/

namespace A353209.P4882120141051059430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A149667 (n + 1)).toNat

end

end A353209.P4882120141051059430

/-! ## A353209.P13286777656640349424

`A274829(A026721(n))`
-/

namespace A353209.P13286777656640349424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274829 (A026721 n).toNat

end

end A353209.P13286777656640349424

/-!
# A353210: Number of graph minors in the n-node path complement graph.

The programs for A353210, there is no canonical definition to state claims against.
-/

/-! ## A353210.P17393526740700771286

`A251556(∑[n])+a(n-1)` with `a(0)=1`
-/

namespace A353210.P17393526740700771286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251556 (∑ j ∈ Finset.range (n + 1), f1 j) + a (n - 1)

end

end A353210.P17393526740700771286

/-! ## A353210.P2324473926052214243

`A094739(round((sqrt(3)+2)^(n/2)))`
-/

namespace A353210.P2324473926052214243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094739 (SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) ^ ((n : ℚ) / 2 : ℝ))).toNat

end

end A353210.P2324473926052214243

/-!
# A353211: a(n) is the number of diagonalizable 2 X 2 matrices over GF(prime(n)).

The programs for A353211, the canonical program `A353211.P4742650383540092944` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353211 has offset 1).

The definition of A353211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353211.P4742650383540092944

`A101374(A000040(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A353211

/-- `A101374(A000040(n+1))` -/
def P4742650383540092944.Spec : Prop :=
  ∀ n, P4742650383540092944.a n = A353211 (n + 1)

theorem P4742650383540092944.correct : P4742650383540092944.Spec := by
  intro n
  simp only [A353211, Nat.add_sub_cancel]

end A353211

/-! ## A353211.P15151097876557438726

`A138418(n+1)+p?[ceil(2/acot(n))]`
-/

namespace A353211.P15151097876557438726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138418 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A353211.P15151097876557438726

namespace A353211

/-- `A138418(n+1)+p?[ceil(2/acot(n))]` -/
def P15151097876557438726.Spec : Prop :=
  ∀ n, P15151097876557438726.a n = A353211 (n + 1)

end A353211

/-! ## A353211.P13932377483481749560

`A101374(Δ[A007504(n)])`
-/

namespace A353211.P13932377483481749560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 (f1 (n + 1) - f1 n).toNat

end

end A353211.P13932377483481749560

namespace A353211

/-- `A101374(Δ[A007504(n)])` -/
def P13932377483481749560.Spec : Prop :=
  ∀ n, P13932377483481749560.a n = A353211 (n + 1)

end A353211

/-! ## A353211.P9229920486064941242

`A101374(A049551(n+1))`
-/

namespace A353211.P9229920486064941242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101374 (A049551 (n + 1)).toNat

end

end A353211.P9229920486064941242

namespace A353211

/-- `A101374(A049551(n+1))` -/
def P9229920486064941242.Spec : Prop :=
  ∀ n, P9229920486064941242.a n = A353211 (n + 1)

end A353211

/-!
# A353212: Hadwiger number of the n-path complement graph.

The programs for A353212, the canonical program `A353212.P16312213387462993455` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353212 has offset 1).

The definition of A353212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353212.P16312213387462993455

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=4, a(6)=5, a(7)=6, a(8)=7, a(9)=7`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A353212

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P16312213387462993455.Spec : Prop :=
  ∀ n, P16312213387462993455.a n = A353212 (n + 1)

theorem P16312213387462993455.correct : P16312213387462993455.Spec := by
  intro n
  simp only [A353212, Nat.add_sub_cancel]

end A353212

/-! ## A353212.P17373802346173912936

`floor(∑[1/(a(n-1)^n+1)])` with `a(0)=1`
-/

namespace A353212.P17373802346173912936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  1 / (f1 (n - 1) ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A353212.P17373802346173912936

namespace A353212

/-- `floor(∑[1/(a(n-1)^n+1)])` -/
def P17373802346173912936.Spec : Prop :=
  ∀ n, P17373802346173912936.a n = A353212 (n + 1)

end A353212

/-! ## A353212.P10758995503671383676

`A057360(A201471(n+3))`
-/

namespace A353212.P10758995503671383676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A201471 (n + 3)).toNat

end

end A353212.P10758995503671383676

namespace A353212

/-- `A057360(A201471(n+3))` -/
def P10758995503671383676.Spec : Prop :=
  ∀ n, P10758995503671383676.a n = A353212 (n + 1)

end A353212

/-! ## A353212.P7956768721249936769

`∑[A166486(A353764(3*n+2)-n+1)]`
-/

namespace A353212.P7956768721249936769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A353764 (3 * n + 2) - (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353212.P7956768721249936769

namespace A353212

/-- `∑[A166486(A353764(3*n+2)-n+1)]` -/
def P7956768721249936769.Spec : Prop :=
  ∀ n, P7956768721249936769.a n = A353212 (n + 1)

end A353212

/-! ## A353212.P17858844206605723616

`A095791(A027383(n)-A002113(n+1))`
-/

namespace A353212.P17858844206605723616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A027383 n - A002113 (n + 1)).toNat

end

end A353212.P17858844206605723616

namespace A353212

/-- `A095791(A027383(n)-A002113(n+1))` -/
def P17858844206605723616.Spec : Prop :=
  ∀ n, P17858844206605723616.a n = A353212 (n + 1)

end A353212

/-!
# A353213: Number of simple unlabeled non-null graphs on <= n nodes.

The programs for A353213, there is no canonical definition to state claims against.
-/

/-! ## A353213.P16145833105666669789

`A006897(n+1)-1`
-/

namespace A353213.P16145833105666669789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 (n + 1) - 1

end

end A353213.P16145833105666669789

/-! ## A353213.P11656553331172669081

`∑[A000088(n+1)]`
-/

namespace A353213.P11656553331172669081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353213.P11656553331172669081

/-! ## A353213.P13220550151613760863

`∑[abs(Δ[A006897(n)])]`
-/

namespace A353213.P13220550151613760863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353213.P13220550151613760863

/-! ## A353213.P2625004002068025539

`∑[A361404(∑[n+1])]`
-/

namespace A353213.P2625004002068025539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353213.P2625004002068025539

/-! ## A353213.P2773588785519053223

`∑[∑[A002494(n+1)]+1]`
-/

namespace A353213.P2773588785519053223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353213.P2773588785519053223

/-!
# A353216: Smallest highly composite number beginning with n.

The programs for A353216, there is no canonical definition to state claims against.
-/

/-! ## A353216.P18206176139500600894

`∏{p}[n+1, #*val(n+1, #)]*A293472(∑[7*n-5]+5)`
-/

namespace A353216.P18206176139500600894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) * A293472 (∑ j ∈ Finset.range (n + 1), f2 j + 5).toNat

end

end A353216.P18206176139500600894

/-!
# A353217: Triangular numbers (A000217) with arithmetic derivative (A003415) a palindrome (A002113).

The programs for A353217, there is no canonical definition to state claims against.
-/

/-! ## A353217.P14255112665434074317

`eq[A059268(n), A136522(A003415(n))]`
-/

namespace A353217.P14255112665434074317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353217.P14255112665434074317

/-! ## A353217.P9839101291188701839

`eq[A094437(n), A136522(A003415(n))]`
-/

namespace A353217.P9839101291188701839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353217.P9839101291188701839

/-! ## A353217.P2226266818918735229

`eq[A136522(A003415(n)), A141539(n)]`
-/

namespace A353217.P2226266818918735229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353217.P2226266818918735229

/-! ## A353217.P18172960490196472635

`eq[A136522(A003415(n)), A337464(n)]`
-/

namespace A353217.P18172960490196472635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337464 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353217.P18172960490196472635

/-! ## A353217.P13468330036700624534

`eq[A002260(n+1), A136522(A003415(n))]`
-/

namespace A353217.P13468330036700624534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353217.P13468330036700624534

/-!
# A353219: Positive integers which cannot be expressed as the sum of three or fewer squares, no more than two of which are greater than 1.

The programs for A353219, the canonical program `A353219.P7197214775389791693` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353219 has offset 1).

The definition of A353219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353219.P7197214775389791693

`∩[A022544(n+1)+1, A022544(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353219

/-- `∩[A022544(n+1)+1, A022544(n+1)]` -/
def P7197214775389791693.Spec : Prop :=
  ∀ n, (P7197214775389791693.a n : ℤ) = A353219 (n + 1)

theorem P7197214775389791693.correct : P7197214775389791693.Spec := by
  intro n
  simp only [A353219, Nat.add_sub_cancel]

end A353219

/-! ## A353219.P4137889271215235431

`lt[1, A070176(n)]+1`
-/

namespace A353219.P4137889271215235431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353219.P4137889271215235431

namespace A353219

/-- `lt[1, A070176(n)]+1` -/
def P4137889271215235431.Spec : Prop :=
  ∀ n, (P4137889271215235431.a n : ℤ) = A353219 (n + 1)

end A353219

/-! ## A353219.P1888857390522848588

`lt[1, A070176(abs(1-n))]`
-/

namespace A353219.P1888857390522848588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353219.P1888857390522848588

namespace A353219

/-- `lt[1, A070176(abs(1-n))]` -/
def P1888857390522848588.Spec : Prop :=
  ∀ n, (P1888857390522848588.a n : ℤ) = A353219 (n + 1)

end A353219

/-! ## A353219.P17705116342753996493

`A020725(lt[1, A070176(n)])`
-/

namespace A353219.P17705116342753996493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353219.P17705116342753996493

namespace A353219

/-- `A020725(lt[1, A070176(n)])` -/
def P17705116342753996493.Spec : Prop :=
  ∀ n, P17705116342753996493.a n = A353219 (n + 1)

end A353219

/-! ## A353219.P2544264708085405178

`A065475(lt[1, A070176(n)])`
-/

namespace A353219.P2544264708085405178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353219.P2544264708085405178

namespace A353219

/-- `A065475(lt[1, A070176(n)])` -/
def P2544264708085405178.Spec : Prop :=
  ∀ n, P2544264708085405178.a n = A353219 (n + 1)

end A353219

/-! ## A353219.P835896770955747992

`A153152(lt[1, A070176(n)])`
-/

namespace A353219.P835896770955747992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353219.P835896770955747992

namespace A353219

/-- `A153152(lt[1, A070176(n)])` -/
def P835896770955747992.Spec : Prop :=
  ∀ n, P835896770955747992.a n = A353219 (n + 1)

end A353219

/-! ## A353219.P15292772698532671979

`eq[A104794(n+1), A104794(n)]+1`
-/

namespace A353219.P15292772698532671979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353219.P15292772698532671979

namespace A353219

/-- `eq[A104794(n+1), A104794(n)]+1` -/
def P15292772698532671979.Spec : Prop :=
  ∀ n, (P15292772698532671979.a n : ℤ) = A353219 (n + 1)

end A353219

/-! ## A353219.P12193271174953038995

`eq[A004018(n+1), A229062(n)]+1`
-/

namespace A353219.P12193271174953038995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353219.P12193271174953038995

namespace A353219

/-- `eq[A004018(n+1), A229062(n)]+1` -/
def P12193271174953038995.Spec : Prop :=
  ∀ n, (P12193271174953038995.a n : ℤ) = A353219 (n + 1)

end A353219

/-! ## A353219.P9223414327665179659

`eq[A256282(n+1), A256282(n)]+1`
-/

namespace A353219.P9223414327665179659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256282 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353219.P9223414327665179659

namespace A353219

/-- `eq[A256282(n+1), A256282(n)]+1` -/
def P9223414327665179659.Spec : Prop :=
  ∀ n, (P9223414327665179659.a n : ℤ) = A353219 (n + 1)

end A353219

/-! ## A353219.P2484151132843914135

`eq[A002102(n), A281155(n)]`
-/

namespace A353219.P2484151132843914135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353219.P2484151132843914135

namespace A353219

/-- `eq[A002102(n), A281155(n)]` -/
def P2484151132843914135.Spec : Prop :=
  ∀ n, (P2484151132843914135.a n : ℤ) = A353219 (n + 1)

end A353219

/-!
# A353220: a(n) is the result of n applications of the function f to n, where f(x) = floor((3*x + 1)/2) (A007494).

The programs for A353220, there is no canonical definition to state claims against.
-/

/-! ## A353220.P11581481660166074782

`A002024(A006815(n+1))-A003963(n+1)`
-/

namespace A353220.P11581481660166074782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A006815 (n + 1)).toNat - A003963 (n + 1)

end

end A353220.P11581481660166074782

/-!
# A353221: Squarefree base-2 Fermat pseudoprimes divisible by a Wieferich prime.

The programs for A353221, there is no canonical definition to state claims against.
-/

/-! ## A353221.P8165230904099610770

`∩[A001567(n+1), A331021(n+1)]`
-/

namespace A353221.P8165230904099610770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353221.P8165230904099610770

/-!
# A353222: Expansion of e.g.f. (1 - x^3)^(-1/x).

The programs for A353222, there is no canonical definition to state claims against.
-/

/-! ## A353222.P14449816769833841407

`A004526(gcd(2, n)*A293494(n))`
-/

namespace A353222.P14449816769833841407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((Nat.gcd 2 n : ℤ) * A293494 n).toNat

end

end A353222.P14449816769833841407

/-! ## A353222.P3588248529216089949

`A004525(A040001(n)*A293494(n))`
-/

namespace A353222.P3588248529216089949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A040001 n * A293494 n).toNat

end

end A353222.P3588248529216089949

/-! ## A353222.P4912024589191024040

`A110654(A040001(n)*A293494(n))`
-/

namespace A353222.P4912024589191024040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A040001 n * A293494 n).toNat

end

end A353222.P4912024589191024040

/-! ## A353222.P10179507402486888990

`A060125(A293494(n)/A000034(n))`
-/

namespace A353222.P10179507402486888990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060125 (SequenceMachineLib.roundAway ((A293494 n : ℚ) / (A000034 n : ℚ))).toNat

end

end A353222.P10179507402486888990

/-!
# A353223: Expansion of e.g.f. (1 - x^3)^(-1/x^2).

The programs for A353223, there is no canonical definition to state claims against.
-/

/-! ## A353223.P15751047195175323200

`A003159(A373517(n))`
-/

namespace A353223.P15751047195175323200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A373517 n).toNat

end

end A353223.P15751047195175323200

/-! ## A353223.P13175426477222601382

`A004526(3*A373517(n))`
-/

namespace A353223.P13175426477222601382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A373517 n).toNat

end

end A353223.P13175426477222601382

/-! ## A353223.P13514622401426582281

`A285869(3*A373517(n))`
-/

namespace A353223.P13514622401426582281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (3 * A373517 n).toNat

end

end A353223.P13514622401426582281

/-! ## A353223.P2480551052547981395

`A106249(abs(A293565(n))+1)`
-/

namespace A353223.P2480551052547981395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (|A293565 n| + 1).toNat

end

end A353223.P2480551052547981395

/-!
# A353224: Expansion of e.g.f. (1 - x^4)^(-1/x).

The programs for A353224, there is no canonical definition to state claims against.
-/

/-! ## A353224.P7376531265709538630

`A293526(n)/A000034(A184974(n))`
-/

namespace A353224.P7376531265709538630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293526 n : ℚ) / (A000034 (A184974 n).toNat : ℚ)

end

end A353224.P7376531265709538630

/-! ## A353224.P16120029869657844952

`A293526(n)/A163109(A105963(n))`
-/

namespace A353224.P16120029869657844952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293526 n : ℚ) / (A163109 (A105963 n).toNat : ℚ)

end

end A353224.P16120029869657844952

/-! ## A353224.P13014683575218595260

`A293526(n)/A066099(A293536(n+5))`
-/

namespace A353224.P13014683575218595260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293526 n : ℚ) / (A066099 (A293536 (n + 5)).toNat : ℚ)

end

end A353224.P13014683575218595260

/-! ## A353224.P16313102821398943334

`A293590(n)+A105570(A353227(n))`
-/

namespace A353224.P16313102821398943334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293590 n + A105570 (A353227 n).toNat

end

end A353224.P16313102821398943334

/-!
# A353225: Expansion of e.g.f. (1 - x^4)^(-1/x^3).

The programs for A353225, there is no canonical definition to state claims against.
-/

/-! ## A353225.P13266344657512681186

`A008619(10*12*C(n, 5))`
-/

namespace A353225.P13266344657512681186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (10 * (12 * Nat.choose n 5))

end

end A353225.P13266344657512681186

/-! ## A353225.P13030875108344493414

`A106466(10*12*C(n, 5))`
-/

namespace A353225.P13030875108344493414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (10 * (12 * Nat.choose n 5))

end

end A353225.P13030875108344493414

/-! ## A353225.P17225161259254473669

`A159481(10*12*C(n, 5))`
-/

namespace A353225.P17225161259254473669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (10 * (12 * Nat.choose n 5))

end

end A353225.P17225161259254473669

/-! ## A353225.P15527372370930457038

`A032742(C(n, 5)*120+2)`
-/

namespace A353225.P15527372370930457038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Nat.choose n 5 * 120 + 2)

end

end A353225.P15527372370930457038

/-! ## A353225.P11117914834910607301

`A289439(C(n, 5)*120+2)`
-/

namespace A353225.P11117914834910607301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (Nat.choose n 5 * 120 + 2)

end

end A353225.P11117914834910607301

/-!
# A353226: Expansion of e.g.f. (1 - x^2)^(-x).

The programs for A353226, there is no canonical definition to state claims against.
-/

/-! ## A353226.P7300259301200006453

`A250068(A000111(n))*A357966(n)`
-/

namespace A353226.P7300259301200006453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A000111 n).toNat * A357966 n

end

end A353226.P7300259301200006453

/-! ## A353226.P15717711594426804222

`A319608(A369776(n))*A357966(n)`
-/

namespace A353226.P15717711594426804222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319608 (A369776 n).toNat * A357966 n

end

end A353226.P15717711594426804222

/-! ## A353226.P6080784920049436478

`A069288(A000045(2*n+1))*A357966(n)`
-/

namespace A353226.P6080784920049436478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A000045 (2 * n + 1)).toNat * A357966 n

end

end A353226.P6080784920049436478

/-! ## A353226.P7634723391461262481

`A060128(A053556(n))*A357966(n)`
-/

namespace A353226.P7634723391461262481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A053556 n).toNat * A357966 n

end

end A353226.P7634723391461262481

/-! ## A353226.P1030393171565248144

`A060128(A107591(n))*A357966(n)`
-/

namespace A353226.P1030393171565248144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A107591 n).toNat * A357966 n

end

end A353226.P1030393171565248144

/-!
# A353227: Expansion of e.g.f. (1 - x^3)^(-x).

The programs for A353227, there is no canonical definition to state claims against.
-/

/-! ## A353227.P13810947573666013573

`A128582(A375558(n))*A357967(n)`
-/

namespace A353227.P13810947573666013573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128582 (A375558 n).toNat * A357967 n

end

end A353227.P13810947573666013573

/-! ## A353227.P8983547947956102594

`A030598(A109538(2*n))*A357967(n)`
-/

namespace A353227.P8983547947956102594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030598 (A109538 (2 * n)).toNat * A357967 n

end

end A353227.P8983547947956102594

/-! ## A353227.P1261514702265298794

`A327936(A000108(n))*A357967(n)`
-/

namespace A353227.P1261514702265298794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327936 (A000108 n).toNat * A357967 n

end

end A353227.P1261514702265298794

/-! ## A353227.P16482517527229877681

`A352085(A061672(n+1))*A357967(n)`
-/

namespace A353227.P16482517527229877681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352085 (A061672 (n + 1)).toNat * A357967 n

end

end A353227.P16482517527229877681

/-! ## A353227.P10756221446904836341

`A026792(A008862(n+2))*A357967(n)`
-/

namespace A353227.P10756221446904836341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026792 (A008862 (n + 2)).toNat * A357967 n

end

end A353227.P10756221446904836341

/-!
# A353228: Expansion of e.g.f. (1 - x)^(-x^2).

The programs for A353228, there is no canonical definition to state claims against.
-/

/-! ## A353228.P10922398967609088454

`A355609(∑[n+3])`
-/

namespace A353228.P10922398967609088454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A353228.P10922398967609088454

/-! ## A353228.P17555825543119174663

`lcm(A193592(n), A355609(A055998(n+1)))`
-/

namespace A353228.P17555825543119174663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193592 n) (A355609 (A055998 (n + 1)).toNat)

end

end A353228.P17555825543119174663

/-! ## A353228.P4821095326307759860

`or(A000007(n), A355609(A055998(n+1)))`
-/

namespace A353228.P4821095326307759860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A355609 (A055998 (n + 1)).toNat)

end

end A353228.P4821095326307759860

/-! ## A353228.P14164535720911936069

`A355609(A055998(n+1))-char[A233023(n+1)]`
-/

namespace A353228.P14164535720911936069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233023 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A055998 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A353228.P14164535720911936069

/-! ## A353228.P17786126825672876762

`A355609(A055998(n+1))-char[A233024(n+1)]`
-/

namespace A353228.P17786126825672876762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233024 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A055998 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A353228.P17786126825672876762

/-! ## A353228.P7395957464854686995

`A355609(A055998(n+1))-char[A233025(n+1)]`
-/

namespace A353228.P7395957464854686995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233025 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A055998 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A353228.P7395957464854686995

/-! ## A353228.P4065095076870616267

`A055801(A170972(n))*A355609(A055998(n+1))`
-/

namespace A353228.P4065095076870616267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A170972 n).toNat * A355609 (A055998 (n + 1)).toNat

end

end A353228.P4065095076870616267

/-! ## A353228.P5742729140038535350

`A055801(A070821(n+1))*A355609(A055998(n+1))`
-/

namespace A353228.P5742729140038535350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A070821 (n + 1)).toNat * A355609 (A055998 (n + 1)).toNat

end

end A353228.P5742729140038535350

/-! ## A353228.P16955179155262169129

`A055801(A000217(n+2))*A355609(A055998(n+1))`
-/

namespace A353228.P16955179155262169129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A000217 (n + 2)).toNat * A355609 (A055998 (n + 1)).toNat

end

end A353228.P16955179155262169129

/-!
# A353229: Expansion of e.g.f. (1 - x)^(-x^3).

The programs for A353229, there is no canonical definition to state claims against.
-/

/-! ## A353229.P5351481049729711878

`A355609(A155212(n)+4)`
-/

namespace A353229.P5351481049729711878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A155212 n + 4).toNat

end

end A353229.P5351481049729711878

/-! ## A353229.P7243041624921392339

`A355609(eq[3, A025581(n)])`
-/

namespace A353229.P7243041624921392339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353229.P7243041624921392339

/-! ## A353229.P13769889610228567718

`A355609(A052905(n+1)+1)`
-/

namespace A353229.P13769889610228567718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A052905 (n + 1) + 1).toNat

end

end A353229.P13769889610228567718

/-! ## A353229.P15294079668890225961

`A355609(A000096(n+3)-3)`
-/

namespace A353229.P15294079668890225961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A000096 (n + 3) - 3).toNat

end

end A353229.P15294079668890225961

/-! ## A353229.P13074896974017394016

`A355609(A167614(n+1)+2*n)`
-/

namespace A353229.P13074896974017394016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A167614 (n + 1) + (2 * n : ℤ)).toNat

end

end A353229.P13074896974017394016

/-! ## A353229.P13430772986162523770

`A355609(A167614(n+2)-3+n)`
-/

namespace A353229.P13430772986162523770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A167614 (n + 2) - 3 + (n : ℤ)).toNat

end

end A353229.P13430772986162523770

/-! ## A353229.P6677616247922772384

`A355609(lt[A047920(n+1), A355609(n+3)])`
-/

namespace A353229.P6677616247922772384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353229.P6677616247922772384

/-!
# A353230: Number of Condorcet voting profiles with three candidates and 2n-1 voters where all the choices are from {123, 231, 312}.

The programs for A353230, the canonical program `A353230.P15633279355809183141` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353230 has offset 1).

The definition of A353230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353230.P15633279355809183141

`((17*(n+1)-21)*a(n-1)-(72*(n+1)-108)*a(n-2))/n` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A353230

/-- `((17*(n+1)-21)*a(n-1)-(72*(n+1)-108)*a(n-2))/n` -/
def P15633279355809183141.Spec : Prop :=
  ∀ n, P15633279355809183141.a n = (A353230 (n + 1) : ℚ)

end A353230

/-!
# A353232: a(n) is the number of ways to split [n] = {1,2,...,n} into two (possibly empty) complementary intervals {1,2,...,i} and {i+1,i+2,...,n} and then, if both intervals are nonempty, select 2 nonempty blocks/cells (i.e., subintervals) from each of them, or if one of the intervals is empty, select 2 nonempty blocks/cells from the nonempty interval.

The programs for A353232, the canonical program `A353232.P8029843242093899343` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353232 has offset 1).

The definition of A353232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353232.P8029843242093899343

`2*C(n+1, 2)+C(n+2, 5)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A353232

/-- `2*C(n+1, 2)+C(n+2, 5)` -/
def P8029843242093899343.Spec : Prop :=
  ∀ n, (P8029843242093899343.a n : ℤ) = A353232 (n + 1)

theorem P8029843242093899343.correct : P8029843242093899343.Spec := by
  intro n
  simp only [A353232, Nat.add_sub_cancel]

end A353232

/-! ## A353232.P15367549122110771863

`(n+1)*n*((n+1)^3-4*(n+1)²+n+1+126)/120`
-/

namespace A353232.P15367549122110771863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * n : ℤ) * (((n + 1) ^ 3 : ℤ) - (4 * (n + 1) ^ 2 : ℤ) + (n + 1 : ℤ) + 126) : ℚ) / 120

end

end A353232.P15367549122110771863

namespace A353232

/-- `(n+1)*n*((n+1)^3-4*(n+1)²+n+1+126)/120` -/
def P15367549122110771863.Spec : Prop :=
  ∀ n, P15367549122110771863.a n = (A353232 (n + 1) : ℚ)

theorem P15367549122110771863.correct : P15367549122110771863.Spec := by
  intro n
  simp only [A353232, Nat.add_sub_cancel, A353232.P15367549122110771863.a, A353232.P8029843242093899343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353232

/-! ## A353232.P17001944563013005328

`∑[∑[C(n, 3)+2]-2]`
-/

namespace A353232.P17001944563013005328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353232.P17001944563013005328

namespace A353232

/-- `∑[∑[C(n, 3)+2]-2]` -/
def P17001944563013005328.Spec : Prop :=
  ∀ n, P17001944563013005328.a n = A353232 (n + 1)

end A353232

/-! ## A353232.P9946632228967786540

`∑[∑[C(n, 3)]+2*n]`
-/

namespace A353232.P9946632228967786540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353232.P9946632228967786540

namespace A353232

/-- `∑[∑[C(n, 3)]+2*n]` -/
def P9946632228967786540.Spec : Prop :=
  ∀ n, (P9946632228967786540.a n : ℤ) = A353232 (n + 1)

end A353232

/-! ## A353232.P12902141972296027631

`∑[∑[C(n, 3)]+n+n]`
-/

namespace A353232.P12902141972296027631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353232.P12902141972296027631

namespace A353232

/-- `∑[∑[C(n, 3)]+n+n]` -/
def P12902141972296027631.Spec : Prop :=
  ∀ n, (P12902141972296027631.a n : ℤ) = A353232 (n + 1)

end A353232

/-! ## A353232.P8258908560347428960

`C(n+2, 5)+n²+n`
-/

namespace A353232.P8258908560347428960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 5 + (n ^ 2 + n)

end

end A353232.P8258908560347428960

namespace A353232

/-- `C(n+2, 5)+n²+n` -/
def P8258908560347428960.Spec : Prop :=
  ∀ n, (P8258908560347428960.a n : ℤ) = A353232 (n + 1)

theorem P8258908560347428960.correct : P8258908560347428960.Spec := by
  intro n
  simp only [A353232, Nat.add_sub_cancel, A353232.P8258908560347428960.a, A353232.P8029843242093899343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353232

/-! ## A353232.P4876339556789692265

`∑[∑[∑[n-(2-a(n-1))]]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A353232.P4876339556789692265
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f3 =>
  (n : ℤ) - (2 - f3 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353232.P4876339556789692265

namespace A353232

/-- `∑[∑[∑[n-(2-a(n-1))]]]` -/
def P4876339556789692265.Spec : Prop :=
  ∀ n, P4876339556789692265.a n = A353232 (n + 1)

end A353232

/-! ## A353232.P15434602198362918137

`A027660(n)-A116699(n+1)`
-/

namespace A353232.P15434602198362918137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027660 n - A116699 (n + 1)

end

end A353232.P15434602198362918137

namespace A353232

/-- `A027660(n)-A116699(n+1)` -/
def P15434602198362918137.Spec : Prop :=
  ∀ n, P15434602198362918137.a n = A353232 (n + 1)

end A353232

/-! ## A353232.P17871781475962909140

`∑[A101338(n)+n]-A101338(n)`
-/

namespace A353232.P17871781475962909140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101338 n

end

end A353232.P17871781475962909140

namespace A353232

/-- `∑[A101338(n)+n]-A101338(n)` -/
def P17871781475962909140.Spec : Prop :=
  ∀ n, P17871781475962909140.a n = A353232 (n + 1)

end A353232

/-! ## A353232.P14940576858295596511

`A000217(n)+A057703(n)+A000332(n)`
-/

namespace A353232.P14940576858295596511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A057703 n + A000332 n)

end

end A353232.P14940576858295596511

namespace A353232

/-- `A000217(n)+A057703(n)+A000332(n)` -/
def P14940576858295596511.Spec : Prop :=
  ∀ n, P14940576858295596511.a n = A353232 (n + 1)

end A353232

/-! ## A353232.P8299175920431022338

`n²+n+∑[A000332(n+1)]`
-/

namespace A353232.P8299175920431022338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353232.P8299175920431022338

namespace A353232

/-- `n²+n+∑[A000332(n+1)]` -/
def P8299175920431022338.Spec : Prop :=
  ∀ n, P8299175920431022338.a n = A353232 (n + 1)

end A353232

/-! ## A353232.P1758403675317597394

`A057703(n+1)-A050407(n+1)`
-/

namespace A353232.P1758403675317597394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057703 (n + 1) - A050407 (n + 1)

end

end A353232.P1758403675317597394

namespace A353232

/-- `A057703(n+1)-A050407(n+1)` -/
def P1758403675317597394.Spec : Prop :=
  ∀ n, P1758403675317597394.a n = A353232 (n + 1)

end A353232

/-! ## A353232.P17328734335068698600

`A000389(n+1)+A055795(n+1)+A000217(n)`
-/

namespace A353232.P17328734335068698600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 1) + (A055795 (n + 1) + A000217 n)

end

end A353232.P17328734335068698600

namespace A353232

/-- `A000389(n+1)+A055795(n+1)+A000217(n)` -/
def P17328734335068698600.Spec : Prop :=
  ∀ n, P17328734335068698600.a n = A353232 (n + 1)

theorem P17328734335068698600.correct : P17328734335068698600.Spec := by
  intro n
  simp only [A353232, Nat.add_sub_cancel, A353232.P17328734335068698600.a, A353232.P8029843242093899343.a, A000217, A000217.P10269402890581615239.a, A000389, A000389.P15450220129395289428.a, A055795, A055795.P17285801603062217731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353232

/-! ## A353232.P15868777581005129068

`n²+n+A000389(n+2)`
-/

namespace A353232.P15868777581005129068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) + A000389 (n + 2)

end

end A353232.P15868777581005129068

namespace A353232

/-- `n²+n+A000389(n+2)` -/
def P15868777581005129068.Spec : Prop :=
  ∀ n, P15868777581005129068.a n = A353232 (n + 1)

theorem P15868777581005129068.correct : P15868777581005129068.Spec := by
  intro n
  simp only [A353232, Nat.add_sub_cancel, A353232.P15868777581005129068.a, A353232.P8029843242093899343.a, A000389, A000389.P15450220129395289428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353232

/-!
# A353233: Möbius transform of sigma_n(n).

The programs for A353233, there is no canonical definition to state claims against.
-/

/-! ## A353233.P3705726465569799219

`(n+1)*A158952(n+1)`
-/

namespace A353233.P3705726465569799219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158952 (n + 1)

end

end A353233.P3705726465569799219

/-!
# A353235: Number of divisors of n whose arithmetic derivative is odd.

The programs for A353235, the canonical program `A353235.P6300891181609655592` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353235 has offset 1).

The definition of A353235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353236, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353235.P6300891181609655592

`A000005(n+1)-A353236(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A353235

/-- `A000005(n+1)-A353236(n+1)` -/
def P6300891181609655592.Spec : Prop :=
  ∀ n, P6300891181609655592.a n = A353235 (n + 1)

theorem P6300891181609655592.correct : P6300891181609655592.Spec := by
  intro n
  simp only [A353235, Nat.add_sub_cancel]

end A353235

/-! ## A353235.P155491323680030046

`A000005(n+1)/2-A353237(n+1)/2`
-/

namespace A353235.P155491323680030046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 - (A353237 (n + 1) : ℚ) / 2

end

end A353235.P155491323680030046

namespace A353235

/-- `A000005(n+1)/2-A353237(n+1)/2` -/
def P155491323680030046.Spec : Prop :=
  ∀ n, P155491323680030046.a n = (A353235 (n + 1) : ℚ)

theorem P155491323680030046.correct : P155491323680030046.Spec := by
  intro n
  simp only [A353235, Nat.add_sub_cancel, A353235.P155491323680030046.a, A353235.P6300891181609655592.a, A000005, A000005.P16091521709108585461.a, A353236, A353236.P98067381486567870.f2, A353236.P98067381486567870.f1, A353236.P98067381486567870.a, A353237, A353237.P4271604717937279072.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353235

/-! ## A353235.P2894184318685170549

`∑{d}[n+1, A165560(#)]`
-/

namespace A353235.P2894184318685170549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A165560 d

end

end A353235.P2894184318685170549

namespace A353235

/-- `∑{d}[n+1, A165560(#)]` -/
def P2894184318685170549.Spec : Prop :=
  ∀ n, P2894184318685170549.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P1663617155323484847

`∑{d}[n+1, A003415(#)%2]`
-/

namespace A353235.P1663617155323484847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A003415 d) 2

end

end A353235.P1663617155323484847

namespace A353235

/-- `∑{d}[n+1, A003415(#)%2]` -/
def P1663617155323484847.Spec : Prop :=
  ∀ n, P1663617155323484847.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P8746342010985963355

`∑{d}[n+1, (A168036(#)+#)%2]`
-/

namespace A353235.P8746342010985963355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A168036 d + (d : ℤ)) 2

end

end A353235.P8746342010985963355

namespace A353235

/-- `∑{d}[n+1, (A168036(#)+#)%2]` -/
def P8746342010985963355.Spec : Prop :=
  ∀ n, P8746342010985963355.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P4116151398586648638

`A353375((n+1)/ceil(xor(n, n+1)/4))`
-/

namespace A353235.P4116151398586648638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat

end

end A353235.P4116151398586648638

namespace A353235

/-- `A353375((n+1)/ceil(xor(n, n+1)/4))` -/
def P4116151398586648638.Spec : Prop :=
  ∀ n, P4116151398586648638.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P9259665208418937772

`A004526(3^(n%2)*∑{d}[n+1, #%2])`
-/

namespace A353235.P9259665208418937772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 ^ (n % 2) * (∑ d ∈ Nat.divisors (f1 n), d % 2))

end

end A353235.P9259665208418937772

namespace A353235

/-- `A004526(3^(n%2)*∑{d}[n+1, #%2])` -/
def P9259665208418937772.Spec : Prop :=
  ∀ n, P9259665208418937772.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P10491684379369071992

`A353375(lcm((n+1)/2^val(n+1, 2), ∏{p}[n+1, #]))`
-/

namespace A353235.P10491684379369071992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A353235.P10491684379369071992

namespace A353235

/-- `A353375(lcm((n+1)/2^val(n+1, 2), ∏{p}[n+1, #]))` -/
def P10491684379369071992.Spec : Prop :=
  ∀ n, P10491684379369071992.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P7070387175514450214

`A353375(A259445(n+1))`
-/

namespace A353235.P7070387175514450214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (A259445 (n + 1)).toNat

end

end A353235.P7070387175514450214

namespace A353235

/-- `A353375(A259445(n+1))` -/
def P7070387175514450214.Spec : Prop :=
  ∀ n, P7070387175514450214.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P16544177921731819669

`A069733(n+1)-A369257(n+1)`
-/

namespace A353235.P16544177921731819669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069733 (n + 1) - A369257 (n + 1)

end

end A353235.P16544177921731819669

namespace A353235

/-- `A069733(n+1)-A369257(n+1)` -/
def P16544177921731819669.Spec : Prop :=
  ∀ n, P16544177921731819669.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P14709148785275839562

`A353236(n+1)-A353237(n+1)`
-/

namespace A353235.P14709148785275839562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353236 (n + 1) - A353237 (n + 1)

end

end A353235.P14709148785275839562

namespace A353235

/-- `A353236(n+1)-A353237(n+1)` -/
def P14709148785275839562.Spec : Prop :=
  ∀ n, P14709148785275839562.a n = A353235 (n + 1)

theorem P14709148785275839562.correct : P14709148785275839562.Spec := by
  intro n
  simp only [A353235, Nat.add_sub_cancel, A353235.P14709148785275839562.a, A353235.P6300891181609655592.a, A000005, A000005.P16091521709108585461.a, A353236, A353236.P98067381486567870.f2, A353236.P98067381486567870.f1, A353236.P98067381486567870.a, A353237, A353237.P4271604717937279072.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353235

/-! ## A353235.P9038570006953221311

`∏{e}[n+1, #+1]-ceil(∑{d}[n+1, A098178(#)]/2)`
-/

namespace A353235.P9038570006953221311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ⌈((∑ d ∈ Nat.divisors (f2 n), A098178 d : ℤ) : ℚ) / 2⌉

end

end A353235.P9038570006953221311

namespace A353235

/-- `∏{e}[n+1, #+1]-ceil(∑{d}[n+1, A098178(#)]/2)` -/
def P9038570006953221311.Spec : Prop :=
  ∀ n, P9038570006953221311.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P6191265453458900383

`A056924(2*(n+1))-A034178(n+1)`
-/

namespace A353235.P6191265453458900383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (2 * (n + 1)) - A034178 (n + 1)

end

end A353235.P6191265453458900383

namespace A353235

/-- `A056924(2*(n+1))-A034178(n+1)` -/
def P6191265453458900383.Spec : Prop :=
  ∀ n, P6191265453458900383.a n = A353235 (n + 1)

end A353235

/-! ## A353235.P11581867331945565225

`∑{d}[n+1, A360123(#²)]`
-/

namespace A353235.P11581867331945565225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A360123 (d ^ 2)

end

end A353235.P11581867331945565225

namespace A353235

/-- `∑{d}[n+1, A360123(#²)]` -/
def P11581867331945565225.Spec : Prop :=
  ∀ n, P11581867331945565225.a n = A353235 (n + 1)

end A353235

/-!
# A353236: Number of divisors of n whose arithmetic derivative is even.

The programs for A353236, the canonical program `A353236.P98067381486567870` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353236 has offset 1).

The definition of A353236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353236.P14607589289985292770

`A000005(n+1)-A353235(n+1)`
-/

namespace A353236.P14607589289985292770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A353235 (n + 1)

end

end A353236.P14607589289985292770

namespace A353236

/-- `A000005(n+1)-A353235(n+1)` -/
def P14607589289985292770.Spec : Prop :=
  ∀ n, P14607589289985292770.a n = A353236 (n + 1)

theorem P14607589289985292770.correct : P14607589289985292770.Spec := by
  intro n
  simp only [A353236, Nat.add_sub_cancel, A353236.P14607589289985292770.a, A353236.P98067381486567870.f2, A353236.P98067381486567870.f1, A353236.P98067381486567870.a, A000005, A000005.P16091521709108585461.a, A353235, A353235.P6300891181609655592.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353236

/-! ## A353236.P5469413196862298030

`A000005(n+1)/2+A353237(n+1)/2`
-/

namespace A353236.P5469413196862298030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 + (A353237 (n + 1) : ℚ) / 2

end

end A353236.P5469413196862298030

namespace A353236

/-- `A000005(n+1)/2+A353237(n+1)/2` -/
def P5469413196862298030.Spec : Prop :=
  ∀ n, P5469413196862298030.a n = (A353236 (n + 1) : ℚ)

theorem P5469413196862298030.correct : P5469413196862298030.Spec := by
  intro n
  simp only [A353236, Nat.add_sub_cancel, A353236.P5469413196862298030.a, A353236.P98067381486567870.f2, A353236.P98067381486567870.f1, A353236.P98067381486567870.a, A000005, A000005.P16091521709108585461.a, A353237, A353237.P4271604717937279072.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353236

/-! ## A353236.P98067381486567870

`ceil(∑{d}[gcd(n+1, ∑[n]), gcd(2, #)]/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A353236

/-- `ceil(∑{d}[gcd(n+1, ∑[n]), gcd(2, #)]/2)` -/
def P98067381486567870.Spec : Prop :=
  ∀ n, P98067381486567870.a n = A353236 (n + 1)

theorem P98067381486567870.correct : P98067381486567870.Spec := by
  intro n
  simp only [A353236, Nat.add_sub_cancel]

end A353236

/-! ## A353236.P1882494708303999603

`∑{d}[n+1, A358680(#)]`
-/

namespace A353236.P1882494708303999603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358680 d

end

end A353236.P1882494708303999603

namespace A353236

/-- `∑{d}[n+1, A358680(#)]` -/
def P1882494708303999603.Spec : Prop :=
  ∀ n, P1882494708303999603.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P14546316902112945580

`ceil(A145390(n+1)/2)`
-/

namespace A353236.P14546316902112945580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A145390 (n + 1) : ℚ) / 2⌉

end

end A353236.P14546316902112945580

namespace A353236

/-- `ceil(A145390(n+1)/2)` -/
def P14546316902112945580.Spec : Prop :=
  ∀ n, P14546316902112945580.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P16701250166148842785

`∑{d}[n+1, (A003415(#)+1)%2]`
-/

namespace A353236.P16701250166148842785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A003415 d + 1) 2

end

end A353236.P16701250166148842785

namespace A353236

/-- `∑{d}[n+1, (A003415(#)+1)%2]` -/
def P16701250166148842785.Spec : Prop :=
  ∀ n, P16701250166148842785.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P11523572075235629427

`A065033(∑{d}[gcd(n+1, ∑[n]), gcd(2, #)])`
-/

namespace A353236.P11523572075235629427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd 2 d)

end

end A353236.P11523572075235629427

namespace A353236

/-- `A065033(∑{d}[gcd(n+1, ∑[n]), gcd(2, #)])` -/
def P11523572075235629427.Spec : Prop :=
  ∀ n, P11523572075235629427.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P3924095820144131652

`∏{e}[n+1, #+1]-∑{d}[n+1, A165560(#)]`
-/

namespace A353236.P3924095820144131652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), A165560 d

end

end A353236.P3924095820144131652

namespace A353236

/-- `∏{e}[n+1, #+1]-∑{d}[n+1, A165560(#)]` -/
def P3924095820144131652.Spec : Prop :=
  ∀ n, P3924095820144131652.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P2950191001087848600

`∑{d}[n+1, (#+n)%2]-A004526(∑{d}[n+1, #%2])`
-/

namespace A353236.P2950191001087848600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + n) % 2 : ℕ) : ℤ) - A004526 (∑ d ∈ Nat.divisors (f2 n), d % 2)

end

end A353236.P2950191001087848600

namespace A353236

/-- `∑{d}[n+1, (#+n)%2]-A004526(∑{d}[n+1, #%2])` -/
def P2950191001087848600.Spec : Prop :=
  ∀ n, P2950191001087848600.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P8423059654247307684

`A353237(n+1)+A353235(n+1)`
-/

namespace A353236.P8423059654247307684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353237 (n + 1) + A353235 (n + 1)

end

end A353236.P8423059654247307684

namespace A353236

/-- `A353237(n+1)+A353235(n+1)` -/
def P8423059654247307684.Spec : Prop :=
  ∀ n, P8423059654247307684.a n = A353236 (n + 1)

theorem P8423059654247307684.correct : P8423059654247307684.Spec := by
  intro n
  simp only [A353236, Nat.add_sub_cancel, A353236.P8423059654247307684.a, A353236.P98067381486567870.f2, A353236.P98067381486567870.f1, A353236.P98067381486567870.a, A353235, A353235.P6300891181609655592.a, A353237, A353237.P4271604717937279072.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353236

/-! ## A353236.P8665434474190261402

`A320111(n+1)-A369258(n+1)`
-/

namespace A353236.P8665434474190261402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (n + 1) - A369258 (n + 1)

end

end A353236.P8665434474190261402

namespace A353236

/-- `A320111(n+1)-A369258(n+1)` -/
def P8665434474190261402.Spec : Prop :=
  ∀ n, P8665434474190261402.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P8954873984733093931

`ceil(∑{d}[n+1, A098178(#)]/2)`
-/

namespace A353236.P8954873984733093931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), A098178 d : ℤ) : ℚ) / 2⌉

end

end A353236.P8954873984733093931

namespace A353236

/-- `ceil(∑{d}[n+1, A098178(#)]/2)` -/
def P8954873984733093931.Spec : Prop :=
  ∀ n, P8954873984733093931.a n = A353236 (n + 1)

end A353236

/-! ## A353236.P4221043183174482349

`A034178(2*(n+1))+A034178(n+1)`
-/

namespace A353236.P4221043183174482349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (2 * (n + 1)) + A034178 (n + 1)

end

end A353236.P4221043183174482349

namespace A353236

/-- `A034178(2*(n+1))+A034178(n+1)` -/
def P4221043183174482349.Spec : Prop :=
  ∀ n, P4221043183174482349.a n = A353236 (n + 1)

end A353236

/-!
# A353237: a(n) = Sum_{d|n} (-1)^(d'), where d' is the arithmetic derivative of d (A003415).

The programs for A353237, the canonical program `A353237.P4271604717937279072` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353237 has offset 1).

The definition of A353237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353236, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353237.P4271604717937279072

`2*A353236(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A353237

/-- `2*A353236(n+1)-A000005(n+1)` -/
def P4271604717937279072.Spec : Prop :=
  ∀ n, P4271604717937279072.a n = A353237 (n + 1)

theorem P4271604717937279072.correct : P4271604717937279072.Spec := by
  intro n
  simp only [A353237, Nat.add_sub_cancel]

end A353237

/-! ## A353237.P18339780418423840705

`A000005(n+1)-2*A353235(n+1)`
-/

namespace A353237.P18339780418423840705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 2 * A353235 (n + 1)

end

end A353237.P18339780418423840705

namespace A353237

/-- `A000005(n+1)-2*A353235(n+1)` -/
def P18339780418423840705.Spec : Prop :=
  ∀ n, P18339780418423840705.a n = A353237 (n + 1)

theorem P18339780418423840705.correct : P18339780418423840705.Spec := by
  intro n
  simp only [A353237, Nat.add_sub_cancel, A353237.P18339780418423840705.a, A353237.P4271604717937279072.a, A000005, A000005.P16091521709108585461.a, A353235, A353235.P6300891181609655592.a, A353236, A353236.P98067381486567870.f2, A353236.P98067381486567870.f1, A353236.P98067381486567870.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353237

/-! ## A353237.P15280542383809291417

`∑{d}[n+1, A359792(#)]`
-/

namespace A353237.P15280542383809291417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359792 d

end

end A353237.P15280542383809291417

namespace A353237

/-- `∑{d}[n+1, A359792(#)]` -/
def P15280542383809291417.Spec : Prop :=
  ∀ n, P15280542383809291417.a n = A353237 (n + 1)

end A353237

/-! ## A353237.P5627163315910877241

`abs(∑{d}[n+1, (-1)^#])-A052928(∑{d}[n+1, #%2])`
-/

namespace A353237.P5627163315910877241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d| - A052928 (∑ d ∈ Nat.divisors (f2 n), d % 2)

end

end A353237.P5627163315910877241

namespace A353237

/-- `abs(∑{d}[n+1, (-1)^#])-A052928(∑{d}[n+1, #%2])` -/
def P5627163315910877241.Spec : Prop :=
  ∀ n, P5627163315910877241.a n = A353237 (n + 1)

end A353237

/-! ## A353237.P13927448417787578510

`A353236(n+1)-A353235(n+1)`
-/

namespace A353237.P13927448417787578510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353236 (n + 1) - A353235 (n + 1)

end

end A353237.P13927448417787578510

namespace A353237

/-- `A353236(n+1)-A353235(n+1)` -/
def P13927448417787578510.Spec : Prop :=
  ∀ n, P13927448417787578510.a n = A353237 (n + 1)

theorem P13927448417787578510.correct : P13927448417787578510.Spec := by
  intro n
  simp only [A353237, Nat.add_sub_cancel, A353237.P13927448417787578510.a, A353237.P4271604717937279072.a, A000005, A000005.P16091521709108585461.a, A353235, A353235.P6300891181609655592.a, A353236, A353236.P98067381486567870.f2, A353236.P98067381486567870.f1, A353236.P98067381486567870.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353237

/-! ## A353237.P7261016906110543813

`A000005(n+1)-A005843(A353235(n+1))`
-/

namespace A353237.P7261016906110543813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A005843 (A353235 (n + 1)).toNat

end

end A353237.P7261016906110543813

namespace A353237

/-- `A000005(n+1)-A005843(A353235(n+1))` -/
def P7261016906110543813.Spec : Prop :=
  ∀ n, P7261016906110543813.a n = A353237 (n + 1)

end A353237

/-! ## A353237.P5813853784524064689

`∑{d}[n+1, A033999(A003415(#))]`
-/

namespace A353237.P5813853784524064689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (A003415 d).toNat

end

end A353237.P5813853784524064689

namespace A353237

/-- `∑{d}[n+1, A033999(A003415(#))]` -/
def P5813853784524064689.Spec : Prop :=
  ∀ n, P5813853784524064689.a n = A353237 (n + 1)

end A353237

/-!
# A353238: Perfect powers that are divisible by 3.

The programs for A353238, there is no canonical definition to state claims against.
-/

/-! ## A353238.P1941133143847514071

`A390155(n+1)+1`
-/

namespace A353238.P1941133143847514071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390155 (n + 1) + 1

end

end A353238.P1941133143847514071

/-! ## A353238.P10531036127929064938

`A001597(eq[0, A001597(n+1)%3]+1)`
-/

namespace A353238.P10531036127929064938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A353238.P10531036127929064938

/-! ## A353238.P18237471975606643446

`∩[9*n, A001597(n+2)]`
-/

namespace A353238.P18237471975606643446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353238.P18237471975606643446

/-! ## A353238.P7712609513397136979

`filter[A001597(n+1), A366289(#)]`
-/

namespace A353238.P7712609513397136979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A366289 (f1 j).toNat = 1) n)

end

end A353238.P7712609513397136979

/-! ## A353238.P13847902790315717213

`∩[A001597(n+1), A008591(n)]`
-/

namespace A353238.P13847902790315717213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353238.P13847902790315717213

/-! ## A353238.P4143031120491403439

`∩[A396856(n+1), A008591(n)]`
-/

namespace A353238.P4143031120491403439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353238.P4143031120491403439

/-! ## A353238.P11549092432086155143

`∩[abs(A157985(n+1)), A008591(n)]`
-/

namespace A353238.P11549092432086155143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353238.P11549092432086155143

/-! ## A353238.P15684641199289798876

`∩[A216765(n+1)-1, A008591(n)]`
-/

namespace A353238.P15684641199289798876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353238.P15684641199289798876

/-! ## A353238.P18318830490931492802

`∩[A008591(n), A053289(n)+a(n-1)]` with `a(0)=1`
-/

namespace A353238.P18318830490931492802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A053289 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353238.P18318830490931492802

/-! ## A353238.P17994967385621781921

`∩[A008591(n), ∪[(n+1)², A070265(n+1)]]`
-/

namespace A353238.P17994967385621781921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A353238.P17994967385621781921

/-! ## A353238.P14289235417905109718

`∩[A008591(n), ∪[(n+1)², A076467(n+1)]]`
-/

namespace A353238.P14289235417905109718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A353238.P14289235417905109718

/-!
# A353240: a(0) = 1; for n > 0, a(n) = A109812(n) + A109812(n+1).

The programs for A353240, there is no canonical definition to state claims against.
-/

/-! ## A353240.P11144319917956486948

`xor(a(n-1), A352577(n-1))` with `a(0)=1`
-/

namespace A353240.P11144319917956486948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A352577 (n - 1))

end

end A353240.P11144319917956486948

/-! ## A353240.P15338194727203540661

`or(A109812(n+1), A109812(A028310(n)))`
-/

namespace A353240.P15338194727203540661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109812 (n + 1)) (A109812 (A028310 n).toNat)

end

end A353240.P15338194727203540661

/-! ## A353240.P7218753485870664439

`or(A109812(n+1), A109812(A000007(n)+n))`
-/

namespace A353240.P7218753485870664439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109812 (n + 1)) (A109812 (A000007 n + (n : ℤ)).toNat)

end

end A353240.P7218753485870664439

/-! ## A353240.P7500605295661045004

`xor(A305369(2*n+1), A305369(2*(n+1)))/2`
-/

namespace A353240.P7500605295661045004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A305369 (2 * n + 1)) (A305369 (2 * (n + 1))) : ℚ) / 2

end

end A353240.P7500605295661045004

/-! ## A353240.P10698674822582675515

`or(A109812(A065033(2*n)), A109812(n+1))`
-/

namespace A353240.P10698674822582675515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109812 (A065033 (2 * n)).toNat) (A109812 (n + 1))

end

end A353240.P10698674822582675515

/-! ## A353240.P16008592870684400188

`A006370(xor(A305369(2*n+1), A305369(2*(n+1))))`
-/

namespace A353240.P16008592870684400188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.xor (A305369 (2 * n + 1)) (A305369 (2 * (n + 1)))).toNat

end

end A353240.P16008592870684400188

/-!
# A353241: a(0) = 1; for n > 0, a(n) = binary length of (A109812(n) + A109812(n+1)).

The programs for A353241, there is no canonical definition to state claims against.
-/

/-! ## A353241.P15304362250395969897

`floor(log2(A353240(n)))+1`
-/

namespace A353241.P15304362250395969897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A353240 n).toNat + 1

end

end A353241.P15304362250395969897

/-! ## A353241.P257193077880076428

`A291769(floor(log2(A353240(n))))`
-/

namespace A353241.P257193077880076428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291769 (Nat.log 2 (A353240 n).toNat)

end

end A353241.P257193077880076428

/-! ## A353241.P7377678019630305083

`A028310(ceil(log2(A353240(n))))`
-/

namespace A353241.P7377678019630305083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌈Real.logb 2 (A353240 n : ℝ)⌉.toNat

end

end A353241.P7377678019630305083

/-! ## A353241.P12281961031616240051

`A070939(A353240(n))`
-/

namespace A353241.P12281961031616240051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A353240 n).toNat

end

end A353241.P12281961031616240051

/-! ## A353241.P15630289028982687233

`A029837(A353240(n)+1)`
-/

namespace A353241.P15630289028982687233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A353240 n + 1).toNat

end

end A353241.P15630289028982687233

/-! ## A353241.P4230749868233407876

`or(A000007(n), A029837(A353240(n)))`
-/

namespace A353241.P4230749868233407876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029837 (A353240 n).toNat)

end

end A353241.P4230749868233407876

/-! ## A353241.P15248166812834106378

`A000523(2*A353240(n))`
-/

namespace A353241.P15248166812834106378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A353240 n).toNat

end

end A353241.P15248166812834106378

/-!
# A353244: Record values of A070266.

The programs for A353244, there is no canonical definition to state claims against.
-/

/-! ## A353244.P9203412841873072739

`A070266(A353243(n+1))`
-/

namespace A353244.P9203412841873072739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070266 (A353243 (n + 1)).toNat

end

end A353244.P9203412841873072739

/-! ## A353244.P4306357960817421741

`record[A070266(n+1)]`
-/

namespace A353244.P4306357960817421741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353244.P4306357960817421741

/-! ## A353244.P17609483396305615545

`record[A100398(n+1)]`
-/

namespace A353244.P17609483396305615545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353244.P17609483396305615545

/-!
# A353245: a(n) = A353989(n) AND A353989(n+1), where AND is the binary AND operator.

The programs for A353245, there is no canonical definition to state claims against.
-/

/-! ## A353245.P12530723191217480138

`and(A353989(n+1), A353989(n+2))`
-/

namespace A353245.P12530723191217480138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353989 (n + 1)) (A353989 (n + 2))

end

end A353245.P12530723191217480138

/-!
# A353246: Integer part of e[n]e, where [n] indicates hyper-n and e = 2.718281828... (using H. Kneser's proposal for n > 3).

The programs for A353246, there is no canonical definition to state claims against.
-/

/-! ## A353246.P9511823357239737124

`or(a(3%n)+n, A034797(n))` with `a(0)=4`
-/

namespace A353246.P9511823357239737124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.lor (a (3 % n) + (n : ℤ)) (A034797 n)

end

end A353246.P9511823357239737124

/-!
# A353247: Orders of the finite groups Aut(GL_2(K)) when K is a finite field with q = A246655(n) elements.

The programs for A353247, there is no canonical definition to state claims against.
-/

/-! ## A353247.P15989644892573604683

`A161831(A000124(n))*A329119(n+1)`
-/

namespace A353247.P15989644892573604683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161831 (A000124 n).toNat * A329119 (n + 1)

end

end A353247.P15989644892573604683

/-! ## A353247.P3474407651588701886

`A348717(A352792(n+2)*A352807(n+1))`
-/

namespace A353247.P3474407651588701886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A352792 (n + 2) * A352807 (n + 1)).toNat

end

end A353247.P3474407651588701886

/-!
# A353249: Primes that are the sum of the cubes of four primes, not necessarily distinct.

The programs for A353249, there is no canonical definition to state claims against.
-/

/-! ## A353249.P16279773399896941154

`p?[A346917(n+1)]`
-/

namespace A353249.P16279773399896941154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A353249.P16279773399896941154

/-! ## A353249.P10024822857015466678

`p?[A258865(n+1)+8]`
-/

namespace A353249.P10024822857015466678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258865 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A353249.P10024822857015466678

/-! ## A353249.P8843370832771885205

`p?[record[A346917(A291769(n))]]`
-/

namespace A353249.P8843370832771885205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346917 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A353249.P8843370832771885205

/-! ## A353249.P9982423501138922201

`p?[record[A346917(A324346(n))]]`
-/

namespace A353249.P9982423501138922201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346917 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A353249.P9982423501138922201

/-! ## A353249.P4704166101182684163

`record[A020639(A346917(n+4))]`
-/

namespace A353249.P4704166101182684163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A346917 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353249.P4704166101182684163

/-!
# A353250: a(0) = 1, a(n) = harmonic_mean(a(n-1), n), where harmonic_mean(p, q) = 2/(1/p + 1/q); numerators.

The programs for A353250, there is no canonical definition to state claims against.
-/

/-! ## A353250.P16260489615031920062

`lcm(n, a(n-1))*A005811(2^(n-1))` with `a(0)=1`
-/

namespace A353250.P16260489615031920062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n : ℤ) (a (n - 1)) : ℤ) * A005811 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A353250.P16260489615031920062

/-! ## A353250.P17609338942303071446

`A191778(A320111(2^n))`
-/

namespace A353250.P17609338942303071446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191778 (A320111 (2 ^ n)).toNat

end

end A353250.P17609338942303071446

/-! ## A353250.P10669205960714131200

`lcm(A003418(n), A257088(floor(2^(n-1))))`
-/

namespace A353250.P10669205960714131200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003418 n) (A257088 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat)

end

end A353250.P10669205960714131200

/-! ## A353250.P17965353147761361256

`lcm(n, a(n-1))*A000034(A088652(n+1))` with `a(0)=1`
-/

namespace A353250.P17965353147761361256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n : ℤ) (a (n - 1)) : ℤ) * A000034 (A088652 (n + 1)).toNat

end

end A353250.P17965353147761361256

/-! ## A353250.P11981729613206681241

`lcm(A003418(n), A064549(A011782(n)))`
-/

namespace A353250.P11981729613206681241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003418 n) (A064549 (A011782 n).toNat)

end

end A353250.P11981729613206681241

/-!
# A353251: a(0) = 1, a(n) = harmonic_mean(a(n-1), n), where harmonic_mean(p, q) = 2/(1/p + 1/q); denominators.

The programs for A353251, there is no canonical definition to state claims against.
-/

/-! ## A353251.P3453875235122327391

`A337431(ceil((lcm(n, 1-a(n-1))+n)/2))` with `a(0)=1, a(1)=1`
-/

namespace A353251.P3453875235122327391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A337431 ⌈(Int.lcm (n : ℤ) (1 - a (n - 1)) + n : ℚ) / 2⌉.toNat

end

end A353251.P3453875235122327391

/-! ## A353251.P6014054917260947356

`A276104(A036882(n))`
-/

namespace A353251.P6014054917260947356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276104 (A036882 n).toNat

end

end A353251.P6014054917260947356

/-!
# A353255: Expansion of Sum_{k>=0} x^k * Product_{j=0..k-1} (2 * j + x).

The programs for A353255, there is no canonical definition to state claims against.
-/

/-! ## A353255.P9053152439540628816

`A008618(A150160(n)+A007840(n))`
-/

namespace A353255.P9053152439540628816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A150160 n + A007840 n).toNat

end

end A353255.P9053152439540628816

/-! ## A353255.P12442747681870439100

`A008616(A176408(n)+A041033(n))`
-/

namespace A353255.P12442747681870439100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A176408 n + A041033 n).toNat

end

end A353255.P12442747681870439100

/-! ## A353255.P5534264465457357387

`A103221(A326351(n))+A008647(n)`
-/

namespace A353255.P5534264465457357387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A326351 n).toNat + A008647 n

end

end A353255.P5534264465457357387

/-!
# A353256: Expansion of Sum_{k>=0} x^k * Product_{j=0..k-1} (3 * j + x).

The programs for A353256, there is no canonical definition to state claims against.
-/

/-! ## A353256.P538606017252652492

`A353829(abs(A353258(n)))`
-/

namespace A353256.P538606017252652492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353829 |A353258 n|.toNat

end

end A353256.P538606017252652492

/-! ## A353256.P11491838300167549920

`A353829(A000038(n)-A353258(n))`
-/

namespace A353256.P11491838300167549920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353829 (A000038 n - A353258 n).toNat

end

end A353256.P11491838300167549920

/-! ## A353256.P8213365151257667397

`A353829(lcm(A103221(n), A353258(n)))`
-/

namespace A353256.P8213365151257667397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353829 (Int.lcm (A103221 n) (A353258 n))

end

end A353256.P8213365151257667397

/-!
# A353258: Expansion of Sum_{k>=0} x^k * Product_{j=0..k-1} (3 * j - x).

The programs for A353258, there is no canonical definition to state claims against.
-/

/-! ## A353258.P3353214233396382720

`n!-∑[∑[ceil(A350680(n)/3)]-1]`
-/

namespace A353258.P3353214233396382720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A350680 n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353258.P3353214233396382720

/-! ## A353258.P5894954316157959881

`round(cosh(log(acot(n))))-A329144(2^n+n²)`
-/

namespace A353258.P5894954316157959881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (SequenceMachineLib.acot (n : ℝ)))) - A329144 (2 ^ n + n ^ 2)

end

end A353258.P5894954316157959881

/-!
# A353259: Solution to Snake Numbers Problems for Snakes from 1 to n for an n X n square grid (see Comments).

The programs for A353259, there is no canonical definition to state claims against.
-/

/-! ## A353259.P11961123591865021518

`n*(2/gcd(n, a(n-1))+n)+1` with `a(0)=1`
-/

namespace A353259.P11961123591865021518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (2 / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (n : ℚ)) + 1

end

end A353259.P11961123591865021518

/-! ## A353259.P9992381014184835150

`∑[2*A019425(n)+1]`
-/

namespace A353259.P9992381014184835150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019425 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353259.P9992381014184835150

/-! ## A353259.P619767574314085752

`2*A266663(n)-(n+1)`
-/

namespace A353259.P619767574314085752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266663 n - (n + 1 : ℤ)

end

end A353259.P619767574314085752

/-! ## A353259.P4270200484611584567

`∪[A157615(2*n+3), floor(2/acot(n))²]`
-/

namespace A353259.P4270200484611584567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157615 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353259.P4270200484611584567

/-! ## A353259.P13145010349515393052

`A028310(eq[n-floor(sqrt(n))², 3*n%2])`
-/

namespace A353259.P13145010349515393052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n)

end

end A353259.P13145010349515393052

/-!
# A353262: Expansion of Sum_{k>=0} x^(2*k)/Product_{j=1..k} (1 - 3 * j * x).

The programs for A353262, there is no canonical definition to state claims against.
-/

/-! ## A353262.P16416947376358722395

`A070000(A150866(n))`
-/

namespace A353262.P16416947376358722395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A150866 n).toNat

end

end A353262.P16416947376358722395

/-! ## A353262.P7378266914022708309

`A070000(A150867(n))`
-/

namespace A353262.P7378266914022708309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A150867 n).toNat

end

end A353262.P7378266914022708309

/-! ## A353262.P13352106867053100816

`A165190(n*A149907(n))`
-/

namespace A353262.P13352106867053100816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 ((n : ℤ) * A149907 n).toNat

end

end A353262.P13352106867053100816

/-!
# A353265: Partial sums of A208981.

The programs for A353265, there is no canonical definition to state claims against.
-/

/-! ## A353265.P13539761724522812337

`∑[A208981(n+1)]`
-/

namespace A353265.P13539761724522812337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P13539761724522812337

/-! ## A353265.P10577486206410150106

`∑[A006577(n+1)-A135282(n+1)]`
-/

namespace A353265.P10577486206410150106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A135282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P10577486206410150106

/-! ## A353265.P8199954654870303204

`A058633(n+1)-∑[A135282(n+1)]`
-/

namespace A353265.P8199954654870303204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P8199954654870303204

/-! ## A353265.P14602513500963492547

`∑[A008908(n+1)-A226123(n+1)]`
-/

namespace A353265.P14602513500963492547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A226123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P14602513500963492547

/-! ## A353265.P18391640686001062906

`∑[A008908(n+1)-(A135282(n+1)+1)]`
-/

namespace A353265.P18391640686001062906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A135282 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P18391640686001062906

/-! ## A353265.P13422727791160700563

`∑[A006577(n+1)+1-A226123(n+1)]`
-/

namespace A353265.P13422727791160700563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A226123 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P13422727791160700563

/-! ## A353265.P11271428905890075280

`∑[A023443(A008908(n+1)-A135282(n+1))]`
-/

namespace A353265.P11271428905890075280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1) - A135282 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P11271428905890075280

/-! ## A353265.P12475848738978132969

`∑[A139399(n+1)+A130130(n)-A135282(n+1)]`
-/

namespace A353265.P12475848738978132969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A130130 n - A135282 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P12475848738978132969

/-! ## A353265.P2041457652312366158

`∑[A076228(n+1)+A222597(n+1)-A135282(n+1)]`
-/

namespace A353265.P2041457652312366158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A222597 (n + 1) - A135282 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P2041457652312366158

/-! ## A353265.P13090144763968632484

`∑[A220421(n+1)+A222641(n+1)-A135282(n+1)]`
-/

namespace A353265.P13090144763968632484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + (A222641 (n + 1) - A135282 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P13090144763968632484

/-! ## A353265.P16075800620526174316

`∑[A139399(n+1)+A158799(n)-1-A135282(n+1)]`
-/

namespace A353265.P16075800620526174316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + (A158799 n - 1) - A135282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P16075800620526174316

/-! ## A353265.P9448421214563343503

`∑[A006666(n+1)+A078719(n+1)-1-A135282(n+1)]`
-/

namespace A353265.P9448421214563343503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A078719 (n + 1) - 1) - A135282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P9448421214563343503

/-! ## A353265.P16497831209057744812

`∑[A076228(n+1)+A213204(n+1)-1-A135282(n+1)]`
-/

namespace A353265.P16497831209057744812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A213204 (n + 1) - 1) - A135282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P16497831209057744812

/-! ## A353265.P602355600745331638

`∑[A087225(n+1)+A222641(n+1)-1-A135282(n+1)]`
-/

namespace A353265.P602355600745331638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (n + 1) + (A222641 (n + 1) - 1) - A135282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P602355600745331638

/-! ## A353265.P16302937938364602898

`∑[A006667(n+1)+A064433(n+2)-1-A135282(n+1)]`
-/

namespace A353265.P16302937938364602898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (A064433 (n + 2) - 1) - A135282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353265.P16302937938364602898

/-!
# A353267: The least number with the same prime factorization pattern (A348717) as A332449(n) = A005940(1+(3*A156552(n))).

The programs for A353267, the canonical program `A353267.P16273478473277384308` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353267 has offset 1).

The definition of A353267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332449, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353267.P16273478473277384308

`A332449(A348717(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353267

/-- `A332449(A348717(n+1))` -/
def P16273478473277384308.Spec : Prop :=
  ∀ n, P16273478473277384308.a n = A353267 (n + 1)

theorem P16273478473277384308.correct : P16273478473277384308.Spec := by
  intro n
  simp only [A353267, Nat.add_sub_cancel]

end A353267

/-! ## A353267.P16226088731147409815

`A332449(∑{d}[n+1, A354185(#)])`
-/

namespace A353267.P16226088731147409815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (∑ d ∈ Nat.divisors (f1 n), A354185 d).toNat

end

end A353267.P16226088731147409815

namespace A353267

/-- `A332449(∑{d}[n+1, A354185(#)])` -/
def P16226088731147409815.Spec : Prop :=
  ∀ n, P16226088731147409815.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P2074105015217253057

`∑{d}[A348717(n+1), A347118(#)]`
-/

namespace A353267.P2074105015217253057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347118 d

end

end A353267.P2074105015217253057

namespace A353267

/-- `∑{d}[A348717(n+1), A347118(#)]` -/
def P2074105015217253057.Spec : Prop :=
  ∀ n, P2074105015217253057.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P16985995232609624846

`A332449(A354187(n+1)-A354186(n+1))`
-/

namespace A353267.P16985995232609624846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A354187 (n + 1) - A354186 (n + 1)).toNat

end

end A353267.P16985995232609624846

namespace A353267

/-- `A332449(A354187(n+1)-A354186(n+1))` -/
def P16985995232609624846.Spec : Prop :=
  ∀ n, P16985995232609624846.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P8510838667688327621

`A332449(A000007(n)+2*A246277(n+1))`
-/

namespace A353267.P8510838667688327621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A000007 n + 2 * A246277 (n + 1)).toNat

end

end A353267.P8510838667688327621

namespace A353267

/-- `A332449(A000007(n)+2*A246277(n+1))` -/
def P8510838667688327621.Spec : Prop :=
  ∀ n, P8510838667688327621.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P8453304345480650395

`A348717(A353270(n+1))*A353272(A348717(n+1))`
-/

namespace A353267.P8453304345480650395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A353270 (n + 1)).toNat * A353272 (A348717 (n + 1)).toNat

end

end A353267.P8453304345480650395

namespace A353267

/-- `A348717(A353270(n+1))*A353272(A348717(n+1))` -/
def P8453304345480650395.Spec : Prop :=
  ∀ n, P8453304345480650395.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P16743563093811224912

`A332449(A246277(n+1)+A246277(n+1)+A000007(n))`
-/

namespace A353267.P16743563093811224912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332449 (A246277 (n + 1) + (A246277 (n + 1) + A000007 n)).toNat

end

end A353267.P16743563093811224912

namespace A353267

/-- `A332449(A246277(n+1)+A246277(n+1)+A000007(n))` -/
def P16743563093811224912.Spec : Prop :=
  ∀ n, P16743563093811224912.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P3773769427736436115

`A348717(A353270(n+1)*A353272(n+1))`
-/

namespace A353267.P3773769427736436115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A353270 (n + 1) * A353272 (n + 1)).toNat

end

end A353267.P3773769427736436115

namespace A353267

/-- `A348717(A353270(n+1)*A353272(n+1))` -/
def P3773769427736436115.Spec : Prop :=
  ∀ n, P3773769427736436115.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P2299447420020756684

`A348717(A347120(n+1)²*A347119(n+1))`
-/

namespace A353267.P2299447420020756684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A347120 (n + 1) ^ 2 * A347119 (n + 1)).toNat

end

end A353267.P2299447420020756684

namespace A353267

/-- `A348717(A347120(n+1)²*A347119(n+1))` -/
def P2299447420020756684.Spec : Prop :=
  ∀ n, P2299447420020756684.a n = A353267 (n + 1)

end A353267

/-! ## A353267.P2478391732932859887

`A348717(A347119(n+1)*A347120(n+1)*A347120(n+1))`
-/

namespace A353267.P2478391732932859887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A347119 (n + 1) * A347120 (n + 1) * A347120 (n + 1)).toNat

end

end A353267.P2478391732932859887

namespace A353267

/-- `A348717(A347119(n+1)*A347120(n+1)*A347120(n+1))` -/
def P2478391732932859887.Spec : Prop :=
  ∀ n, P2478391732932859887.a n = A353267 (n + 1)

end A353267

/-!
# A353268: The least number with the same prime factorization pattern (A348717) as A329603(n) = A005940(1+(1+(3*A156552(n)))).

The programs for A353268, the canonical program `A353268.P15225342160328756485` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353268 has offset 1).

The definition of A353268 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329603, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353268.P15225342160328756485

`A348717(A329603(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353268

/-- `A348717(A329603(n+1))` -/
def P15225342160328756485.Spec : Prop :=
  ∀ n, P15225342160328756485.a n = A353268 (n + 1)

theorem P15225342160328756485.correct : P15225342160328756485.Spec := by
  intro n
  simp only [A353268, Nat.add_sub_cancel]

end A353268

/-! ## A353268.P14061191536998649215

`A352892(2*A003961(n+1))`
-/

namespace A353268.P14061191536998649215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (2 * A003961 (n + 1)).toNat

end

end A353268.P14061191536998649215

namespace A353268

/-- `A352892(2*A003961(n+1))` -/
def P14061191536998649215.Spec : Prop :=
  ∀ n, P14061191536998649215.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P3405966895308902108

`A352892(2*(A253885(n)+1))`
-/

namespace A353268.P3405966895308902108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (2 * (A253885 n + 1)).toNat

end

end A353268.P3405966895308902108

namespace A353268

/-- `A352892(2*(A253885(n)+1))` -/
def P3405966895308902108.Spec : Prop :=
  ∀ n, P3405966895308902108.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P10163210440122554546

`A352892(lcm(2, A003961(n+1)))`
-/

namespace A353268.P10163210440122554546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (Int.lcm 2 (A003961 (n + 1)))

end

end A353268.P10163210440122554546

namespace A353268

/-- `A352892(lcm(2, A003961(n+1)))` -/
def P10163210440122554546.Spec : Prop :=
  ∀ n, P10163210440122554546.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P6753232452938792172

`A352892(2*(A243501(n+1)-1))`
-/

namespace A353268.P6753232452938792172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (2 * (A243501 (n + 1) - 1)).toNat

end

end A353268.P6753232452938792172

namespace A353268

/-- `A352892(2*(A243501(n+1)-1))` -/
def P6753232452938792172.Spec : Prop :=
  ∀ n, P6753232452938792172.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P6170289704016534552

`A352892(A253885(n)+A253885(n)+2)`
-/

namespace A353268.P6170289704016534552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (A253885 n + (A253885 n + 2)).toNat

end

end A353268.P6170289704016534552

namespace A353268

/-- `A352892(A253885(n)+A253885(n)+2)` -/
def P6170289704016534552.Spec : Prop :=
  ∀ n, P6170289704016534552.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P1234894541987224414

`A352892(A003961(n+1)+A003961(n+1))`
-/

namespace A353268.P1234894541987224414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352892 (A003961 (n + 1) + A003961 (n + 1)).toNat

end

end A353268.P1234894541987224414

namespace A353268

/-- `A352892(A003961(n+1)+A003961(n+1))` -/
def P1234894541987224414.Spec : Prop :=
  ∀ n, P1234894541987224414.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P785424511224349567

`2*A064989(A332449(n+1))`
-/

namespace A353268.P785424511224349567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064989 (A332449 (n + 1)).toNat

end

end A353268.P785424511224349567

namespace A353268

/-- `2*A064989(A332449(n+1))` -/
def P785424511224349567.Spec : Prop :=
  ∀ n, P785424511224349567.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P6578014940880275203

`A348717(A341511(2*(n+1)²))`
-/

namespace A353268.P6578014940880275203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A341511 (2 * (n + 1) ^ 2)).toNat

end

end A353268.P6578014940880275203

namespace A353268

/-- `A348717(A341511(2*(n+1)²))` -/
def P6578014940880275203.Spec : Prop :=
  ∀ n, P6578014940880275203.a n = A353268 (n + 1)

end A353268

/-! ## A353268.P10934213989005831740

`A348717(A332449(2*(n+1))/2)`
-/

namespace A353268.P10934213989005831740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (SequenceMachineLib.roundAway ((A332449 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A353268.P10934213989005831740

namespace A353268

/-- `A348717(A332449(2*(n+1))/2)` -/
def P10934213989005831740.Spec : Prop :=
  ∀ n, P10934213989005831740.a n = A353268 (n + 1)

end A353268

/-!
# A353269: a(n) = 1 if A156552(n) is a multiple of 3, otherwise 0.

The programs for A353269, the canonical program `A353269.P15395321201713666301` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353269 has offset 1).

The definition of A353269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353269.P8231305401889584042

`A353350(A332462(n+1))`
-/

namespace A353269.P8231305401889584042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (A332462 (n + 1)).toNat

end

end A353269.P8231305401889584042

namespace A353269

/-- `A353350(A332462(n+1))` -/
def P8231305401889584042.Spec : Prop :=
  ∀ n, P8231305401889584042.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P2067896810146106406

`A353350(A332461(n+1))`
-/

namespace A353269.P2067896810146106406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (A332461 (n + 1)).toNat

end

end A353269.P2067896810146106406

namespace A353269

/-- `A353350(A332461(n+1))` -/
def P2067896810146106406.Spec : Prop :=
  ∀ n, P2067896810146106406.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P10572494086777982338

`A353307(2*(n+1))`
-/

namespace A353269.P10572494086777982338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353307 (2 * (n + 1))

end

end A353269.P10572494086777982338

namespace A353269

/-- `A353307(2*(n+1))` -/
def P10572494086777982338.Spec : Prop :=
  ∀ n, P10572494086777982338.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P11564254669982245253

`floor(acot(A329903(n+1)))`
-/

namespace A353269.P11564254669982245253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A329903 (n + 1) : ℝ)⌋

end

end A353269.P11564254669982245253

namespace A353269

/-- `floor(acot(A329903(n+1)))` -/
def P11564254669982245253.Spec : Prop :=
  ∀ n, P11564254669982245253.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P15395321201713666301

`1-abs(A332814(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A353269

/-- `1-abs(A332814(n+1))` -/
def P15395321201713666301.Spec : Prop :=
  ∀ n, P15395321201713666301.a n = A353269 (n + 1)

theorem P15395321201713666301.correct : P15395321201713666301.Spec := by
  intro n
  simp only [A353269, Nat.add_sub_cancel]

end A353269

/-! ## A353269.P5755733191669412998

`char[A329609(n+1)-1]`
-/

namespace A353269.P5755733191669412998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329609 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353269.P5755733191669412998

namespace A353269

/-- `char[A329609(n+1)-1]` -/
def P5755733191669412998.Spec : Prop :=
  ∀ n, (P5755733191669412998.a n : ℤ) = A353269 (n + 1)

end A353269

/-! ## A353269.P17326294672402270906

`gcd(2, A323902(n+1))-1`
-/

namespace A353269.P17326294672402270906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A323902 (n + 1)) : ℤ) - 1

end

end A353269.P17326294672402270906

namespace A353269

/-- `gcd(2, A323902(n+1))-1` -/
def P17326294672402270906.Spec : Prop :=
  ∀ n, P17326294672402270906.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P3506539907687261546

`and(1, A329903(2*(n+1)))`
-/

namespace A353269.P3506539907687261546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A329903 (2 * (n + 1)))

end

end A353269.P3506539907687261546

namespace A353269

/-- `and(1, A329903(2*(n+1)))` -/
def P3506539907687261546.Spec : Prop :=
  ∀ n, P3506539907687261546.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P4226057053921827855

`ceil(A332814(2*(n+1))/2)`
-/

namespace A353269.P4226057053921827855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332814 (2 * (n + 1)) : ℚ) / 2⌉

end

end A353269.P4226057053921827855

namespace A353269

/-- `ceil(A332814(2*(n+1))/2)` -/
def P4226057053921827855.Spec : Prop :=
  ∀ n, P4226057053921827855.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P9359662289627335367

`A059841(A323902(n+1))`
-/

namespace A353269.P9359662289627335367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A323902 (n + 1)).toNat

end

end A353269.P9359662289627335367

namespace A353269

/-- `A059841(A323902(n+1))` -/
def P9359662289627335367.Spec : Prop :=
  ∀ n, P9359662289627335367.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P8668000891982031381

`A353350(A335423(n+1))`
-/

namespace A353269.P8668000891982031381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (A335423 (n + 1)).toNat

end

end A353269.P8668000891982031381

namespace A353269

/-- `A353350(A335423(n+1))` -/
def P8668000891982031381.Spec : Prop :=
  ∀ n, P8668000891982031381.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P15261971985704914640

`A353419(n+1)-A353418(n+1)`
-/

namespace A353269.P15261971985704914640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (n + 1) - A353418 (n + 1)

end

end A353269.P15261971985704914640

namespace A353269

/-- `A353419(n+1)-A353418(n+1)` -/
def P15261971985704914640.Spec : Prop :=
  ∀ n, P15261971985704914640.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P10017536025136516217

`∑{d}[n+1, A008683(#)*A353362((n+1)/#)]`
-/

namespace A353269.P10017536025136516217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A353362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353269.P10017536025136516217

namespace A353269

/-- `∑{d}[n+1, A008683(#)*A353362((n+1)/#)]` -/
def P10017536025136516217.Spec : Prop :=
  ∀ n, P10017536025136516217.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P11554237077313552625

`∑{d}[n+1, A353350(#)*A353421((n+1)/#)]`
-/

namespace A353269.P11554237077313552625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353350 d * A353421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353269.P11554237077313552625

namespace A353269

/-- `∑{d}[n+1, A353350(#)*A353421((n+1)/#)]` -/
def P11554237077313552625.Spec : Prop :=
  ∀ n, P11554237077313552625.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P7808332150098665758

`A341353(A329604(n+1))^A329903(n+1)`
-/

namespace A353269.P7808332150098665758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341353 (A329604 (n + 1)).toNat : ℚ) ^ (A329903 (n + 1) : ℤ)

end

end A353269.P7808332150098665758

namespace A353269

/-- `A341353(A329604(n+1))^A329903(n+1)` -/
def P7808332150098665758.Spec : Prop :=
  ∀ n, P7808332150098665758.a n = (A353269 (n + 1) : ℚ)

end A353269

/-! ## A353269.P6767388241417738819

`A341353(A332812(n+1))^A329903(n+1)`
-/

namespace A353269.P6767388241417738819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341353 (A332812 (n + 1)).toNat : ℚ) ^ (A329903 (n + 1) : ℤ)

end

end A353269.P6767388241417738819

namespace A353269

/-- `A341353(A332812(n+1))^A329903(n+1)` -/
def P6767388241417738819.Spec : Prop :=
  ∀ n, P6767388241417738819.a n = (A353269 (n + 1) : ℚ)

end A353269

/-! ## A353269.P16690722000445784805

`A010052((n+1)*A329903(n+1))`
-/

namespace A353269.P16690722000445784805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1 : ℤ) * A329903 (n + 1)).toNat

end

end A353269.P16690722000445784805

namespace A353269

/-- `A010052((n+1)*A329903(n+1))` -/
def P16690722000445784805.Spec : Prop :=
  ∀ n, P16690722000445784805.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P13824808462190148715

`A000035(A332814(n+1)+2*n+1)`
-/

namespace A353269.P13824808462190148715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A332814 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A353269.P13824808462190148715

namespace A353269

/-- `A000035(A332814(n+1)+2*n+1)` -/
def P13824808462190148715.Spec : Prop :=
  ∀ n, P13824808462190148715.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P9892135466374134586

`A353350(A332460(n+1))`
-/

namespace A353269.P9892135466374134586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353350 (A332460 (n + 1)).toNat

end

end A353269.P9892135466374134586

namespace A353269

/-- `A353350(A332460(n+1))` -/
def P9892135466374134586.Spec : Prop :=
  ∀ n, P9892135466374134586.a n = A353269 (n + 1)

end A353269

/-! ## A353269.P12078976376660465949

`A329903((n+1)²)^A329903(n+1)`
-/

namespace A353269.P12078976376660465949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329903 ((n + 1) ^ 2) : ℚ) ^ (A329903 (n + 1) : ℤ)

end

end A353269.P12078976376660465949

namespace A353269

/-- `A329903((n+1)²)^A329903(n+1)` -/
def P12078976376660465949.Spec : Prop :=
  ∀ n, P12078976376660465949.a n = (A353269 (n + 1) : ℚ)

end A353269

/-!
# A353270: a(n) = gcd(n, A332449(n)), where A332449(n) = A005940(1+(3*A156552(n))).

The programs for A353270, the canonical program `A353270.P15146311020099164443` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353270 has offset 1).

The definition of A353270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353270.P10987625963973554000

`(n+1)/A353271(n+1)`
-/

namespace A353270.P10987625963973554000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353271 (n + 1) : ℚ)

end

end A353270.P10987625963973554000

namespace A353270

/-- `(n+1)/A353271(n+1)` -/
def P10987625963973554000.Spec : Prop :=
  ∀ n, P10987625963973554000.a n = (A353270 (n + 1) : ℚ)

end A353270

/-! ## A353270.P15146311020099164443

`gcd(n+1, A332449(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353270

/-- `gcd(n+1, A332449(n+1))` -/
def P15146311020099164443.Spec : Prop :=
  ∀ n, (P15146311020099164443.a n : ℤ) = A353270 (n + 1)

theorem P15146311020099164443.correct : P15146311020099164443.Spec := by
  intro n
  simp only [A353270, Nat.add_sub_cancel]

end A353270

/-! ## A353270.P16334581797022843971

`A332449(n+1)/A353272(n+1)`
-/

namespace A353270.P16334581797022843971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (A353272 (n + 1) : ℚ)

end

end A353270.P16334581797022843971

namespace A353270

/-- `A332449(n+1)/A353272(n+1)` -/
def P16334581797022843971.Spec : Prop :=
  ∀ n, P16334581797022843971.a n = (A353270 (n + 1) : ℚ)

end A353270

/-! ## A353270.P4555980352531081780

`A332449(n+1)/(A353273(n+1)+n+1)`
-/

namespace A353270.P4555980352531081780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (A353273 (n + 1) + (n + 1 : ℤ) : ℚ)

end

end A353270.P4555980352531081780

namespace A353270

/-- `A332449(n+1)/(A353273(n+1)+n+1)` -/
def P4555980352531081780.Spec : Prop :=
  ∀ n, P4555980352531081780.a n = (A353270 (n + 1) : ℚ)

end A353270

/-! ## A353270.P13814208494897545820

`gcd(A329603(A003961(n+1))/2, A131738(n))`
-/

namespace A353270.P13814208494897545820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A329603 (A003961 (n + 1)).toNat : ℚ) / 2)) (A131738 n)

end

end A353270.P13814208494897545820

namespace A353270

/-- `gcd(A329603(A003961(n+1))/2, A131738(n))` -/
def P13814208494897545820.Spec : Prop :=
  ∀ n, (P13814208494897545820.a n : ℤ) = A353270 (n + 1)

end A353270

/-! ## A353270.P15221385240527678415

`A234575(A353271(n+1)+A000217(n))`
-/

namespace A353270.P15221385240527678415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A353271 (n + 1) + A000217 n).toNat

end

end A353270.P15221385240527678415

namespace A353270

/-- `A234575(A353271(n+1)+A000217(n))` -/
def P15221385240527678415.Spec : Prop :=
  ∀ n, P15221385240527678415.a n = A353270 (n + 1)

end A353270

/-! ## A353270.P16546768562782992703

`A126988(A353271(n+1)+∑[n])`
-/

namespace A353270.P16546768562782992703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A353271 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A353270.P16546768562782992703

namespace A353270

/-- `A126988(A353271(n+1)+∑[n])` -/
def P16546768562782992703.Spec : Prop :=
  ∀ n, P16546768562782992703.a n = A353270 (n + 1)

end A353270

/-!
# A353271: a(n) = n / gcd(n, A332449(n)), where A332449(n) = A005940(1+(3*A156552(n))).

The programs for A353271, the canonical program `A353271.P11596657803432709231` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353271 has offset 1).

The definition of A353271 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353270, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353271.P11596657803432709231

`(n+1)/A353270(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353271

/-- `(n+1)/A353270(n+1)` -/
def P11596657803432709231.Spec : Prop :=
  ∀ n, P11596657803432709231.a n = (A353271 (n + 1) : ℚ)

end A353271

/-! ## A353271.P3182979338818826281

`(n+1)/gcd(n+1, A332449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353271.P3182979338818826281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A332449 (n + 1)) : ℚ)

end

end A353271.P3182979338818826281

namespace A353271

/-- `(n+1)/gcd(n+1, A332449(n+1))` -/
def P3182979338818826281.Spec : Prop :=
  ∀ n, P3182979338818826281.a n = (A353271 (n + 1) : ℚ)

end A353271

/-! ## A353271.P3522568751425429994

`(n+1)/A332449(n+1)*A353272(n+1)`
-/

namespace A353271.P3522568751425429994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A332449 (n + 1) : ℚ) * (A353272 (n + 1) : ℚ)

end

end A353271.P3522568751425429994

namespace A353271

/-- `(n+1)/A332449(n+1)*A353272(n+1)` -/
def P3522568751425429994.Spec : Prop :=
  ∀ n, P3522568751425429994.a n = (A353271 (n + 1) : ℚ)

end A353271

/-! ## A353271.P13828008680769165592

`lcm(A332449(n+1), A353275(n+1))/A332449(n+1)`
-/

namespace A353271.P13828008680769165592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A332449 (n + 1)) (A353275 (n + 1)) : ℚ) / (A332449 (n + 1) : ℚ)

end

end A353271.P13828008680769165592

namespace A353271

/-- `lcm(A332449(n+1), A353275(n+1))/A332449(n+1)` -/
def P13828008680769165592.Spec : Prop :=
  ∀ n, P13828008680769165592.a n = (A353271 (n + 1) : ℚ)

end A353271

/-! ## A353271.P6102439915270505411

`A032742(n+1)/A032742(A332449(n+1)/A353272(n+1))`
-/

namespace A353271.P6102439915270505411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A032742 (SequenceMachineLib.roundAway ((A332449 (n + 1) : ℚ) / (A353272 (n + 1) : ℚ))).toNat : ℚ)

end

end A353271.P6102439915270505411

namespace A353271

/-- `A032742(n+1)/A032742(A332449(n+1)/A353272(n+1))` -/
def P6102439915270505411.Spec : Prop :=
  ∀ n, P6102439915270505411.a n = (A353271 (n + 1) : ℚ)

end A353271

/-! ## A353271.P3169144156999659241

`A234575(A353270(n+1)+A000217(n))`
-/

namespace A353271.P3169144156999659241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A353270 (n + 1) + A000217 n).toNat

end

end A353271.P3169144156999659241

namespace A353271

/-- `A234575(A353270(n+1)+A000217(n))` -/
def P3169144156999659241.Spec : Prop :=
  ∀ n, P3169144156999659241.a n = A353271 (n + 1)

end A353271

/-! ## A353271.P6452660696353745278

`A234575(A000217(n)+A332449(n+1)/A353272(n+1))`
-/

namespace A353271.P6452660696353745278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (SequenceMachineLib.roundAway ((A000217 n : ℚ) + (A332449 (n + 1) : ℚ) / (A353272 (n + 1) : ℚ))).toNat

end

end A353271.P6452660696353745278

namespace A353271

/-- `A234575(A000217(n)+A332449(n+1)/A353272(n+1))` -/
def P6452660696353745278.Spec : Prop :=
  ∀ n, P6452660696353745278.a n = A353271 (n + 1)

end A353271

/-! ## A353271.P2570312334682205809

`A010766(A353270(n+1)+A000217(n))`
-/

namespace A353271.P2570312334682205809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A353270 (n + 1) + A000217 n).toNat

end

end A353271.P2570312334682205809

namespace A353271

/-- `A010766(A353270(n+1)+A000217(n))` -/
def P2570312334682205809.Spec : Prop :=
  ∀ n, P2570312334682205809.a n = A353271 (n + 1)

end A353271

/-! ## A353271.P5838352390540947856

`A054531(A353270(n+1)+A000217(n))`
-/

namespace A353271.P5838352390540947856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A353270 (n + 1) + A000217 n).toNat

end

end A353271.P5838352390540947856

namespace A353271

/-- `A054531(A353270(n+1)+A000217(n))` -/
def P5838352390540947856.Spec : Prop :=
  ∀ n, P5838352390540947856.a n = A353271 (n + 1)

end A353271

/-! ## A353271.P11739229455231855575

`A126988(A353270(n+1)+A000217(n))`
-/

namespace A353271.P11739229455231855575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A353270 (n + 1) + A000217 n).toNat

end

end A353271.P11739229455231855575

namespace A353271

/-- `A126988(A353270(n+1)+A000217(n))` -/
def P11739229455231855575.Spec : Prop :=
  ∀ n, P11739229455231855575.a n = A353271 (n + 1)

end A353271

/-!
# A353272: a(n) = A332449(n) / gcd(n, A332449(n)), where A332449(n) = A005940(1+(3*A156552(n))).

The programs for A353272, the canonical program `A353272.P8777434411549871101` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353272 has offset 1).

The definition of A353272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332449, A353270, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353272.P8777434411549871101

`A332449(n+1)/A353270(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353272

/-- `A332449(n+1)/A353270(n+1)` -/
def P8777434411549871101.Spec : Prop :=
  ∀ n, P8777434411549871101.a n = (A353272 (n + 1) : ℚ)

end A353272

/-! ## A353272.P17578733107761393144

`A332449(n+1)/gcd(n+1, A332449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353272.P17578733107761393144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A332449 (n + 1)) : ℚ)

end

end A353272.P17578733107761393144

namespace A353272

/-- `A332449(n+1)/gcd(n+1, A332449(n+1))` -/
def P17578733107761393144.Spec : Prop :=
  ∀ n, P17578733107761393144.a n = (A353272 (n + 1) : ℚ)

end A353272

/-! ## A353272.P1419824749039596542

`A353273(n+1)+1+n`
-/

namespace A353272.P1419824749039596542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353273 (n + 1) + 1 + (n : ℤ)

end

end A353272.P1419824749039596542

namespace A353272

/-- `A353273(n+1)+1+n` -/
def P1419824749039596542.Spec : Prop :=
  ∀ n, P1419824749039596542.a n = A353272 (n + 1)

end A353272

/-! ## A353272.P1082134026066196323

`∑{d}[n+1, A347118(#)]/A353270(n+1)`
-/

namespace A353272.P1082134026066196323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A347118 d : ℤ) : ℚ) / (A353270 (n + 1) : ℚ)

end

end A353272.P1082134026066196323

namespace A353272

/-- `∑{d}[n+1, A347118(#)]/A353270(n+1)` -/
def P1082134026066196323.Spec : Prop :=
  ∀ n, P1082134026066196323.a n = (A353272 (n + 1) : ℚ)

end A353272

/-! ## A353272.P12407281357285669859

`A347119(n+1)/A353270(n+1)*A347120(n+1)²`
-/

namespace A353272.P12407281357285669859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347119 (n + 1) : ℚ) / (A353270 (n + 1) : ℚ) * (A347120 (n + 1) ^ 2 : ℚ)

end

end A353272.P12407281357285669859

namespace A353272

/-- `A347119(n+1)/A353270(n+1)*A347120(n+1)²` -/
def P12407281357285669859.Spec : Prop :=
  ∀ n, P12407281357285669859.a n = (A353272 (n + 1) : ℚ)

end A353272

/-! ## A353272.P14840340089778255385

`A332449(n+1)/A234575(A353271(n+1)+A000217(n))`
-/

namespace A353272.P14840340089778255385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (A234575 (A353271 (n + 1) + A000217 n).toNat : ℚ)

end

end A353272.P14840340089778255385

namespace A353272

/-- `A332449(n+1)/A234575(A353271(n+1)+A000217(n))` -/
def P14840340089778255385.Spec : Prop :=
  ∀ n, P14840340089778255385.a n = (A353272 (n + 1) : ℚ)

end A353272

/-! ## A353272.P6848631911873619545

`A332449(n+1)/A126988(A353271(n+1)+∑[n])`
-/

namespace A353272.P6848631911873619545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (A126988 (A353271 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat : ℚ)

end

end A353272.P6848631911873619545

namespace A353272

/-- `A332449(n+1)/A126988(A353271(n+1)+∑[n])` -/
def P6848631911873619545.Spec : Prop :=
  ∀ n, P6848631911873619545.a n = (A353272 (n + 1) : ℚ)

end A353272

/-!
# A353273: a(n) = (A332449(n) / gcd(n, A332449(n))) - n, where A332449(n) = A005940(1+(3*A156552(n))).

The programs for A353273, the canonical program `A353273.P16195094947117950201` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353273 has offset 1).

The definition of A353273 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353273.P16195094947117950201

`A353272(n+1)-(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353273

/-- `A353272(n+1)-(n+1)` -/
def P16195094947117950201.Spec : Prop :=
  ∀ n, P16195094947117950201.a n = A353273 (n + 1)

theorem P16195094947117950201.correct : P16195094947117950201.Spec := by
  intro n
  simp only [A353273, Nat.add_sub_cancel]

end A353273

/-! ## A353273.P7514270923732459400

`A332449(n+1)/gcd(n+1, A332449(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353273.P7514270923732459400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A332449 (n + 1)) : ℚ) - (n + 1 : ℚ)

end

end A353273.P7514270923732459400

namespace A353273

/-- `A332449(n+1)/gcd(n+1, A332449(n+1))-(n+1)` -/
def P7514270923732459400.Spec : Prop :=
  ∀ n, P7514270923732459400.a n = (A353273 (n + 1) : ℚ)

end A353273

/-! ## A353273.P7864274779173097944

`A332449(n+1)/A353270(n+1)-(n+1)`
-/

namespace A353273.P7864274779173097944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (A353270 (n + 1) : ℚ) - (n + 1 : ℚ)

end

end A353273.P7864274779173097944

namespace A353273

/-- `A332449(n+1)/A353270(n+1)-(n+1)` -/
def P7864274779173097944.Spec : Prop :=
  ∀ n, P7864274779173097944.a n = (A353273 (n + 1) : ℚ)

end A353273

/-! ## A353273.P6399901506276381432

`xor(n, -1)+and(A000225(n+1), A353272(n+1))`
-/

namespace A353273.P6399901506276381432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1) + Int.land (A000225 (n + 1)) (A353272 (n + 1))

end

end A353273.P6399901506276381432

namespace A353273

/-- `xor(n, -1)+and(A000225(n+1), A353272(n+1))` -/
def P6399901506276381432.Spec : Prop :=
  ∀ n, P6399901506276381432.a n = A353273 (n + 1)

end A353273

/-! ## A353273.P6144245571856083229

`A023443(A353272(n+1))-n`
-/

namespace A353273.P6144245571856083229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A353272 (n + 1)).toNat - (n : ℤ)

end

end A353273.P6144245571856083229

namespace A353273

/-- `A023443(A353272(n+1))-n` -/
def P6144245571856083229.Spec : Prop :=
  ∀ n, P6144245571856083229.a n = A353273 (n + 1)

end A353273

/-!
# A353274: a(n) = gcd(n, A353272(n)).

The programs for A353274, the canonical program `A353274.P5048788065602667421` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353274 has offset 1).

The definition of A353274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353272, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353274.P5048788065602667421

`gcd(n+1, A353272(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353274

/-- `gcd(n+1, A353272(n+1))` -/
def P5048788065602667421.Spec : Prop :=
  ∀ n, (P5048788065602667421.a n : ℤ) = A353274 (n + 1)

theorem P5048788065602667421.correct : P5048788065602667421.Spec := by
  intro n
  simp only [A353274, Nat.add_sub_cancel]

end A353274

/-! ## A353274.P14336754669556350692

`(n+1)/A353275(n+1)`
-/

namespace A353274.P14336754669556350692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353275 (n + 1) : ℚ)

end

end A353274.P14336754669556350692

namespace A353274

/-- `(n+1)/A353275(n+1)` -/
def P14336754669556350692.Spec : Prop :=
  ∀ n, P14336754669556350692.a n = (A353274 (n + 1) : ℚ)

end A353274

/-! ## A353274.P16015527756327270836

`gcd(xor(n, -1), A353273(n+1))`
-/

namespace A353274.P16015527756327270836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A353273 (n + 1))

end

end A353274.P16015527756327270836

namespace A353274

/-- `gcd(xor(n, -1), A353273(n+1))` -/
def P16015527756327270836.Spec : Prop :=
  ∀ n, (P16015527756327270836.a n : ℤ) = A353274 (n + 1)

end A353274

/-! ## A353274.P7671714910417936879

`gcd(-A353273(n+1), A353270(n+1))`
-/

namespace A353274.P7671714910417936879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A353273 (n + 1)) (A353270 (n + 1))

end

end A353274.P7671714910417936879

namespace A353274

/-- `gcd(-A353273(n+1), A353270(n+1))` -/
def P7671714910417936879.Spec : Prop :=
  ∀ n, (P7671714910417936879.a n : ℤ) = A353274 (n + 1)

end A353274

/-! ## A353274.P733224839585465228

`gcd(Δ[A001057(n)], A353273(n+1))`
-/

namespace A353274.P733224839585465228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A353273 (n + 1))

end

end A353274.P733224839585465228

namespace A353274

/-- `gcd(Δ[A001057(n)], A353273(n+1))` -/
def P733224839585465228.Spec : Prop :=
  ∀ n, (P733224839585465228.a n : ℤ) = A353274 (n + 1)

end A353274

/-! ## A353274.P18302067420101241506

`gcd(A001057(2*n+1), A353273(A001057(2*n+1)))`
-/

namespace A353274.P18302067420101241506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001057 (2 * n + 1)) (A353273 (A001057 (2 * n + 1)).toNat)

end

end A353274.P18302067420101241506

namespace A353274

/-- `gcd(A001057(2*n+1), A353273(A001057(2*n+1)))` -/
def P18302067420101241506.Spec : Prop :=
  ∀ n, (P18302067420101241506.a n : ℤ) = A353274 (n + 1)

end A353274

/-! ## A353274.P15352200908185591515

`A007913(A007913(n+1)*A353275(n+1))`
-/

namespace A353274.P15352200908185591515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * A353275 (n + 1)).toNat

end

end A353274.P15352200908185591515

namespace A353274

/-- `A007913(A007913(n+1)*A353275(n+1))` -/
def P15352200908185591515.Spec : Prop :=
  ∀ n, P15352200908185591515.a n = A353274 (n + 1)

end A353274

/-! ## A353274.P13158876215311258788

`A007913((n+1)*A353275(n+1))`
-/

namespace A353274.P13158876215311258788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1 : ℤ) * A353275 (n + 1)).toNat

end

end A353274.P13158876215311258788

namespace A353274

/-- `A007913((n+1)*A353275(n+1))` -/
def P13158876215311258788.Spec : Prop :=
  ∀ n, P13158876215311258788.a n = A353274 (n + 1)

end A353274

/-! ## A353274.P154511089863678368

`gcd(A118759(n+1), A347120(n+1))`
-/

namespace A353274.P154511089863678368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118759 (n + 1)) (A347120 (n + 1))

end

end A353274.P154511089863678368

namespace A353274

/-- `gcd(A118759(n+1), A347120(n+1))` -/
def P154511089863678368.Spec : Prop :=
  ∀ n, (P154511089863678368.a n : ℤ) = A353274 (n + 1)

end A353274

/-! ## A353274.P3306672261501675574

`A003557(gcd(A055491(n+1), A332449(n+1)))`
-/

namespace A353274.P3306672261501675574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (Int.gcd (A055491 (n + 1)) (A332449 (n + 1)))

end

end A353274.P3306672261501675574

namespace A353274

/-- `A003557(gcd(A055491(n+1), A332449(n+1)))` -/
def P3306672261501675574.Spec : Prop :=
  ∀ n, P3306672261501675574.a n = A353274 (n + 1)

end A353274

/-!
# A353275: a(n) = n / gcd(n, A353272(n)).

The programs for A353275, the canonical program `A353275.P9602640295035619641` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353275 has offset 1).

The definition of A353275 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353274, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353275.P9602640295035619641

`(n+1)/A353274(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353275

/-- `(n+1)/A353274(n+1)` -/
def P9602640295035619641.Spec : Prop :=
  ∀ n, P9602640295035619641.a n = (A353275 (n + 1) : ℚ)

end A353275

/-! ## A353275.P14607573461485213398

`(n+1)/gcd(n+1, A353272(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353275.P14607573461485213398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A353272 (n + 1)) : ℚ)

end

end A353275.P14607573461485213398

namespace A353275

/-- `(n+1)/gcd(n+1, A353272(n+1))` -/
def P14607573461485213398.Spec : Prop :=
  ∀ n, P14607573461485213398.a n = (A353275 (n + 1) : ℚ)

end A353275

/-! ## A353275.P8153530814335080961

`(n+1)/gcd(-A353273(n+1), A353270(n+1))`
-/

namespace A353275.P8153530814335080961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (-A353273 (n + 1)) (A353270 (n + 1)) : ℚ)

end

end A353275.P8153530814335080961

namespace A353275

/-- `(n+1)/gcd(-A353273(n+1), A353270(n+1))` -/
def P8153530814335080961.Spec : Prop :=
  ∀ n, P8153530814335080961.a n = (A353275 (n + 1) : ℚ)

end A353275

/-! ## A353275.P12970460526345393220

`(n+1)/gcd(A118759(n+1), A347120(n+1))`
-/

namespace A353275.P12970460526345393220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A118759 (n + 1)) (A347120 (n + 1)) : ℚ)

end

end A353275.P12970460526345393220

namespace A353275

/-- `(n+1)/gcd(A118759(n+1), A347120(n+1))` -/
def P12970460526345393220.Spec : Prop :=
  ∀ n, P12970460526345393220.a n = (A353275 (n + 1) : ℚ)

end A353275

/-! ## A353275.P16654738189698362569

`A055032(n+1)%A104788(A104766(n+1))`
-/

namespace A353275.P16654738189698362569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055032 (n + 1)) (A104788 (A104766 (n + 1)).toNat)

end

end A353275.P16654738189698362569

namespace A353275

/-- `A055032(n+1)%A104788(A104766(n+1))` -/
def P16654738189698362569.Spec : Prop :=
  ∀ n, P16654738189698362569.a n = A353275 (n + 1)

end A353275

/-!
# A353276: a(n) = phi(n) + tau(n)^omega(n) - sigma(n).

The programs for A353276, the canonical program `A353276.P4699711645647838418` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353276 has offset 1).

The definition of A353276 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051612, A110088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353276.P4699711645647838418

`A110088(n+1)-A051612(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353276

/-- `A110088(n+1)-A051612(n+1)` -/
def P4699711645647838418.Spec : Prop :=
  ∀ n, P4699711645647838418.a n = A353276 (n + 1)

theorem P4699711645647838418.correct : P4699711645647838418.Spec := by
  intro n
  simp only [A353276, Nat.add_sub_cancel]

end A353276

/-! ## A353276.P10129707679809598286

`A000010(n+1)+A000005(n+1)^A001221(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353276.P10129707679809598286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ) - (A000203 (n + 1) : ℚ)

end

end A353276.P10129707679809598286

namespace A353276

/-- `A000010(n+1)+A000005(n+1)^A001221(n+1)-A000203(n+1)` -/
def P10129707679809598286.Spec : Prop :=
  ∀ n, P10129707679809598286.a n = (A353276 (n + 1) : ℚ)

end A353276

/-! ## A353276.P3843806786763273098

`∏{p}[n+1, A000005(lcm(#, n+1))]-A051612(n+1)`
-/

namespace A353276.P3843806786763273098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.lcm p (n + 1)) - A051612 (n + 1)

end

end A353276.P3843806786763273098

namespace A353276

/-- `∏{p}[n+1, A000005(lcm(#, n+1))]-A051612(n+1)` -/
def P3843806786763273098.Spec : Prop :=
  ∀ n, P3843806786763273098.a n = A353276 (n + 1)

end A353276

/-! ## A353276.P7597303606230588068

`∏{e}[n+1, #+1]^∑{p}[n+1, A001222(#)]-A051612(n+1)`
-/

namespace A353276.P7597303606230588068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), A001222 p : ℤ) - (A051612 (n + 1) : ℚ)

end

end A353276.P7597303606230588068

namespace A353276

/-- `∏{e}[n+1, #+1]^∑{p}[n+1, A001222(#)]-A051612(n+1)` -/
def P7597303606230588068.Spec : Prop :=
  ∀ n, P7597303606230588068.a n = (A353276 (n + 1) : ℚ)

end A353276

/-! ## A353276.P3203564299743842041

`A000010(n+1)+A110088(n+1)-A000203(n+1)`
-/

namespace A353276.P3203564299743842041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A110088 (n + 1) - A000203 (n + 1))

end

end A353276.P3203564299743842041

namespace A353276

/-- `A000010(n+1)+A110088(n+1)-A000203(n+1)` -/
def P3203564299743842041.Spec : Prop :=
  ∀ n, P3203564299743842041.a n = A353276 (n + 1)

theorem P3203564299743842041.correct : P3203564299743842041.Spec := by
  intro n
  simp only [A353276, Nat.add_sub_cancel, A353276.P3203564299743842041.a, A353276.P4699711645647838418.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051612, A051612.P4135239823752248514.a, A110088, A110088.P8337879305070338118.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353276

/-! ## A353276.P14960572460715310094

`A000005(n+1)^A001221(n+1)-A051612(n+1)`
-/

namespace A353276.P14960572460715310094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ) - (A051612 (n + 1) : ℚ)

end

end A353276.P14960572460715310094

namespace A353276

/-- `A000005(n+1)^A001221(n+1)-A051612(n+1)` -/
def P14960572460715310094.Spec : Prop :=
  ∀ n, P14960572460715310094.a n = (A353276 (n + 1) : ℚ)

end A353276

/-! ## A353276.P10172073581060882265

`A000005(n+1)^A001221(n+1)-(A065387(n+1)-2*A000010(n+1))`
-/

namespace A353276.P10172073581060882265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ) - (A065387 (n + 1) - 2 * A000010 (n + 1) : ℚ)

end

end A353276.P10172073581060882265

namespace A353276

/-- `A000005(n+1)^A001221(n+1)-(A065387(n+1)-2*A000010(n+1))` -/
def P10172073581060882265.Spec : Prop :=
  ∀ n, P10172073581060882265.a n = (A353276 (n + 1) : ℚ)

end A353276

/-! ## A353276.P6397649884596158606

`A000005(n+1)^A106404(2*(n+1))-(A065387(n+1)-2*A000010(n+1))`
-/

namespace A353276.P6397649884596158606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) ^ (A106404 (2 * (n + 1)) : ℤ) - (A065387 (n + 1) - 2 * A000010 (n + 1) : ℚ)

end

end A353276.P6397649884596158606

namespace A353276

/-- `A000005(n+1)^A106404(2*(n+1))-(A065387(n+1)-2*A000010(n+1))` -/
def P6397649884596158606.Spec : Prop :=
  ∀ n, P6397649884596158606.a n = (A353276 (n + 1) : ℚ)

end A353276

/-!
# A353278: Ordinal transform of the function f(n) = [A020639(n), A341353(n)] for n > 1, with f(1) = 1.

The programs for A353278, there is no canonical definition to state claims against.
-/

/-! ## A353278.P3463974658992004051

`gcd(A304106(n+1), A332014(A332031(n+1)))`
-/

namespace A353278.P3463974658992004051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304106 (n + 1)) (A332014 (A332031 (n + 1)).toNat)

end

end A353278.P3463974658992004051

/-! ## A353278.P8878834733322539288

`A253887(A305438(n+1))%A227248(3*n+2)`
-/

namespace A353278.P8878834733322539288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253887 (A305438 (n + 1)).toNat) (A227248 (3 * n + 2))

end

end A353278.P8878834733322539288

/-! ## A353278.P4342386406965673571

`A253887(gcd(A215223(n+1), A305438(n+1)))`
-/

namespace A353278.P4342386406965673571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253887 (Int.gcd (A215223 (n + 1)) (A305438 (n + 1)))

end

end A353278.P4342386406965673571

/-! ## A353278.P6133494808319026208

`A120454(A294178(n)^A316557(n+1))`
-/

namespace A353278.P6133494808319026208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (SequenceMachineLib.roundAway ((A294178 n : ℚ) ^ (A316557 (n + 1) : ℤ))).toNat

end

end A353278.P6133494808319026208

/-! ## A353278.P3882143903025816260

`A126759(n)-A336123(A222894(n+1))`
-/

namespace A353278.P3882143903025816260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n - A336123 (A222894 (n + 1)).toNat

end

end A353278.P3882143903025816260

/-!
# A353279: Triangle read by rows, a Narayana related triangle whose rows are refinements of four times the Catalan numbers (for n >= 3).

The programs for A353279, there is no canonical definition to state claims against.
-/

/-! ## A353279.P7688501903176581308

`A353351(2^A352687(n))`
-/

namespace A353279.P7688501903176581308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A352687 n : ℤ))).toNat

end

end A353279.P7688501903176581308

/-! ## A353279.P11636953184009146036

`A163352(ceil(A123125(n)/ϕ))`
-/

namespace A353279.P11636953184009146036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ⌈(A123125 n : ℝ) / Real.goldenRatio⌉.toNat

end

end A353279.P11636953184009146036

/-! ## A353279.P5917727807131213677

`∑{e}[A002183(A123125(n)+1), #]`
-/

namespace A353279.P5917727807131213677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (A123125 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A353279.P5917727807131213677

/-! ## A353279.P13087861401380641089

`round(sqrt(A123125(n)))%A092674(3*n+5)`
-/

namespace A353279.P13087861401380641089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A123125 n : ℝ))) (A092674 (3 * n + 5))

end

end A353279.P13087861401380641089

/-! ## A353279.P16791320153557785467

`A000194(A000194(A123125(n)²))`
-/

namespace A353279.P16791320153557785467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000194 (A123125 n ^ 2).toNat).toNat

end

end A353279.P16791320153557785467

/-!
# A353280: n is a term if n = 0 or n does not divide F(n, k) for all k >= 0, where F(n, k) are the Fibonacci numbers A352744.

The programs for A353280, there is no canonical definition to state claims against.
-/

/-! ## A353280.P375414613533106277

`comp[A074215(n+1)]`
-/

namespace A353280.P375414613533106277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353280.P375414613533106277

/-! ## A353280.P4107496376637303059

`comp[A270313(n+1)]`
-/

namespace A353280.P4107496376637303059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353280.P4107496376637303059

/-! ## A353280.P16866085985489088808

`lt[0, xor(1, A104714(n))]`
-/

namespace A353280.P16866085985489088808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A104714 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353280.P16866085985489088808

/-! ## A353280.P4081370376966266804

`∪[5*n, A037917(n+1)]`
-/

namespace A353280.P4081370376966266804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353280.P4081370376966266804

/-! ## A353280.P8971994656198908258

`lt[1, abs(gcd(n, A000045(n))-1)+1]`
-/

namespace A353280.P8971994656198908258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Int.gcd (n : ℤ) (A000045 n) : ℤ) - 1| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353280.P8971994656198908258

/-! ## A353280.P14190160565473091804

`eq[0, A063524(A104714(n))]`
-/

namespace A353280.P14190160565473091804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A104714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353280.P14190160565473091804

/-! ## A353280.P6985787680458516997

`lt[A158388(n), A104714(n)]`
-/

namespace A353280.P6985787680458516997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353280.P6985787680458516997

/-! ## A353280.P1191913758764898928

`∪[A037917(n+1), A008587(n)]`
-/

namespace A353280.P1191913758764898928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353280.P1191913758764898928

/-!
# A353281: k is a term if 5 and 6 do not divide k and k does not divide F(n, j) for all j >= 0, where F(n, j) are the Fibonacci numbers.

The programs for A353281, there is no canonical definition to state claims against.
-/

/-! ## A353281.P6670708484845342552

`A102505(A276683(n+1)+A006995(2*n+5))`
-/

namespace A353281.P6670708484845342552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102505 (A276683 (n + 1) + A006995 (2 * n + 5)).toNat

end

end A353281.P6670708484845342552

/-!
# A353282: a(n) is the number of solutions (x,y) to the Diophantine equation S(x,y) = (x+y) + (x-y) + (x*y) + (x/y) = A013929(n) when x >= y > 1 and y | x.

The programs for A353282, the canonical program `A353282.P2459302831157781440` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353282 has offset 1).

The definition of A353282 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353282.P2459302831157781440

`A046951(A013929(n+1))-1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353282

/-- `A046951(A013929(n+1))-1` -/
def P2459302831157781440.Spec : Prop :=
  ∀ n, P2459302831157781440.a n = A353282 (n + 1)

theorem P2459302831157781440.correct : P2459302831157781440.Spec := by
  intro n
  simp only [A353282, Nat.add_sub_cancel]

end A353282

/-! ## A353282.P8980063459041514022

`A032741(A087050(n+1))`
-/

namespace A353282.P8980063459041514022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A087050 (n + 1)).toNat

end

end A353282.P8980063459041514022

namespace A353282

/-- `A032741(A087050(n+1))` -/
def P8980063459041514022.Spec : Prop :=
  ∀ n, P8980063459041514022.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P13603179110338252820

`A071325(A368040(n+1))`
-/

namespace A353282.P13603179110338252820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A368040 (n + 1)).toNat

end

end A353282.P13603179110338252820

namespace A353282

/-- `A071325(A368040(n+1))` -/
def P13603179110338252820.Spec : Prop :=
  ∀ n, P13603179110338252820.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P6816760441098052383

`A071325(A013929(n+1))`
-/

namespace A353282.P6816760441098052383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A013929 (n + 1)).toNat

end

end A353282.P6816760441098052383

namespace A353282

/-- `A071325(A013929(n+1))` -/
def P6816760441098052383.Spec : Prop :=
  ∀ n, P6816760441098052383.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P491051018835987410

`A071325(A162966(n+2))`
-/

namespace A353282.P491051018835987410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A162966 (n + 2)).toNat

end

end A353282.P491051018835987410

namespace A353282

/-- `A071325(A162966(n+2))` -/
def P491051018835987410.Spec : Prop :=
  ∀ n, P491051018835987410.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P7205750597680078594

`A071325(sqrt(A062320(n+1)))`
-/

namespace A353282.P7205750597680078594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (SequenceMachineLib.roundAway (Real.sqrt (A062320 (n + 1) : ℝ))).toNat

end

end A353282.P7205750597680078594

namespace A353282

/-- `A071325(sqrt(A062320(n+1)))` -/
def P7205750597680078594.Spec : Prop :=
  ∀ n, P7205750597680078594.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P3179684355250136675

`A046951(lt[0, A105570(n)])-1`
-/

namespace A353282.P3179684355250136675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A353282.P3179684355250136675

namespace A353282

/-- `A046951(lt[0, A105570(n)])-1` -/
def P3179684355250136675.Spec : Prop :=
  ∀ n, P3179684355250136675.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P14295265880817238129

`A071325(eq[0, A008683(n+1)]+1)`
-/

namespace A353282.P14295265880817238129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A353282.P14295265880817238129

namespace A353282

/-- `A071325(eq[0, A008683(n+1)]+1)` -/
def P14295265880817238129.Spec : Prop :=
  ∀ n, P14295265880817238129.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P655287908447025918

`A071325(lt[1, A051903(n+1)]+1)`
-/

namespace A353282.P655287908447025918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A353282.P655287908447025918

namespace A353282

/-- `A071325(lt[1, A051903(n+1)]+1)` -/
def P655287908447025918.Spec : Prop :=
  ∀ n, P655287908447025918.a n = A353282 (n + 1)

end A353282

/-! ## A353282.P13340899670204873797

`A071325(lt[A008683(n+2)², 1]+2)`
-/

namespace A353282.P13340899670204873797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A353282.P13340899670204873797

namespace A353282

/-- `A071325(lt[A008683(n+2)², 1]+2)` -/
def P13340899670204873797.Spec : Prop :=
  ∀ n, P13340899670204873797.a n = A353282 (n + 1)

end A353282

/-!
# A353283: Minimum number of numbers to drop to determine whether n is a prime number using the Sieve of Eratosthenes algorithm.

The programs for A353283, there is no canonical definition to state claims against.
-/

/-! ## A353283.P2691853732129126699

`A143974(A165157(n+1))`
-/

namespace A353283.P2691853732129126699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (A165157 (n + 1)).toNat

end

end A353283.P2691853732129126699

/-! ## A353283.P17529878496722192107

`A143974(lt[A110330(n), 0])`
-/

namespace A353283.P17529878496722192107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110330 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353283.P17529878496722192107

/-! ## A353283.P14068081475432450478

`A143974(lt[A088956(n+1), n+1])`
-/

namespace A353283.P14068081475432450478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088956 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353283.P14068081475432450478

/-! ## A353283.P4030597148433844541

`A143974(eq[A048004(n+2), A054977(n)])`
-/

namespace A353283.P4030597148433844541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353283.P4030597148433844541

/-! ## A353283.P15418145602290578921

`A143974(lt[A038243(n+1), A156242(n+1)])`
-/

namespace A353283.P15418145602290578921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143974 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353283.P15418145602290578921

/-!
# A353284: Consider the number of divisors tau(k) of every composite k between prime p >= 3 and the next prime; if the largest tau(k) is a prime power, then p is in the sequence.

The programs for A353284, there is no canonical definition to state claims against.
-/

/-! ## A353284.P14440231139803276812

`p?[eq[0, A309766(n)]]`
-/

namespace A353284.P14440231139803276812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309766 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A353284.P14440231139803276812

/-! ## A353284.P2964904266817553676

`p?[lt[A309766(n), A014306(n)]]`
-/

namespace A353284.P2964904266817553676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309766 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A353284.P2964904266817553676

/-! ## A353284.P5154680519765087417

`eq[1, A309766(n)+A032741(n)]`
-/

namespace A353284.P5154680519765087417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309766 n + A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353284.P5154680519765087417

/-! ## A353284.P10184829049515759669

`p?[lt[A309766(n), A166123(n+1)]]`
-/

namespace A353284.P10184829049515759669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309766 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166123 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A353284.P10184829049515759669

/-! ## A353284.P7176562191351018792

`eq[A160051(A032741(n)), A309766(n)]`
-/

namespace A353284.P7176562191351018792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160051 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353284.P7176562191351018792

/-!
# A353285: Consider the number of divisors tau(k) of every composite k between prime p >= 3 and the next prime; if the largest tau(k) is a square, then p is in the sequence.

The programs for A353285, there is no canonical definition to state claims against.
-/

/-! ## A353285.P1536249963087786526

`A000040(A038221(3*n+1)%A242889(2*(n+1)))`
-/

namespace A353285.P1536249963087786526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A038221 (3 * n + 1)) (A242889 (2 * (n + 1)))).toNat

end

end A353285.P1536249963087786526

/-! ## A353285.P16980098276979080768

`A000040(A108050(3*n+2)%A244365(3*n+4))`
-/

namespace A353285.P16980098276979080768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A108050 (3 * n + 2)) (A244365 (3 * n + 4))).toNat

end

end A353285.P16980098276979080768

/-!
# A353288: a(n) = Sum_{k=0..floor(n/2)} k^(n-2*k) * Stirling2(n-k,k).

The programs for A353288, there is no canonical definition to state claims against.
-/

/-! ## A353288.P3098217754745137585

`A008618(A114710(n)+7)`
-/

namespace A353288.P3098217754745137585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A114710 n + 7).toNat

end

end A353288.P3098217754745137585

/-! ## A353288.P18110343970965323987

`A363947(A270995(n)-A363947(n))`
-/

namespace A353288.P18110343970965323987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363947 (A270995 n - A363947 n).toNat

end

end A353288.P18110343970965323987

/-!
# A353289: a(n) = Sum_{k=0..floor(n/2)} (n-k)^k * |Stirling1(n-k,k)|.

The programs for A353289, there is no canonical definition to state claims against.
-/

/-! ## A353289.P3559608774618735898

`A071681(A028342(n))+A000007(n)`
-/

namespace A353289.P3559608774618735898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071681 (A028342 n).toNat + A000007 n

end

end A353289.P3559608774618735898

/-! ## A353289.P13484206278128741982

`A103221(A274804(n)-A020052(n))`
-/

namespace A353289.P13484206278128741982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A274804 n - A020052 n).toNat

end

end A353289.P13484206278128741982

/-!
# A353290: a(n) = Sum_{k=0..floor(n/2)} (n-k)^(n-2*k) * |Stirling1(n-k,k)|.

The programs for A353290, there is no canonical definition to state claims against.
-/

/-! ## A353290.P11272912385344566498

`A202047(a(n-1)+3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A353290.P11272912385344566498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  A202047 (a (n - 1) + 3).toNat

end

end A353290.P11272912385344566498

/-! ## A353290.P13416496002259176301

`A348552(2^n-∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A353290.P13416496002259176301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348552 (2 ^ n - ∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A353290.P13416496002259176301

/-!
# A353292: a(n) is the number of positive integers k <= n that have at least one common 1-bit with n.

The programs for A353292, the canonical program `A353292.P917263375731567259` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353292 has offset 0).

The definition of A353292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353292.P917263375731567259

`1-A080100(n)+n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A353292

/-- `1-A080100(n)+n` -/
def P917263375731567259.Spec : Prop :=
  ∀ n, P917263375731567259.a n = A353292 n

theorem P917263375731567259.correct : P917263375731567259.Spec := by
  intro n
  simp only [A353292]

end A353292

/-! ## A353292.P1414343058520630716

`n+1-sqrt(A309074(n))`
-/

namespace A353292.P1414343058520630716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (A309074 n : ℝ)

end

end A353292.P1414343058520630716

namespace A353292

/-- `n+1-sqrt(A309074(n))` -/
def P1414343058520630716.Spec : Prop :=
  ∀ n, P1414343058520630716.a n = (A353292 n : ℝ)

end A353292

/-! ## A353292.P6023435982210800834

`n+1-2^A080791(n)`
-/

namespace A353292.P6023435982210800834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (2 : ℚ) ^ (A080791 n : ℤ)

end

end A353292.P6023435982210800834

namespace A353292

/-- `n+1-2^A080791(n)` -/
def P6023435982210800834.Spec : Prop :=
  ∀ n, P6023435982210800834.a n = (A353292 n : ℚ)

end A353292

/-! ## A353292.P11727726641247063877

`A319650(n)+A006257(n)`
-/

namespace A353292.P11727726641247063877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319650 n + A006257 n

end

end A353292.P11727726641247063877

namespace A353292

/-- `A319650(n)+A006257(n)` -/
def P11727726641247063877.Spec : Prop :=
  ∀ n, P11727726641247063877.a n = A353292 n

end A353292

/-! ## A353292.P11859280357858338545

`n-A000225(A080791(n))`
-/

namespace A353292.P11859280357858338545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000225 (A080791 n).toNat

end

end A353292.P11859280357858338545

namespace A353292

/-- `n-A000225(A080791(n))` -/
def P11859280357858338545.Spec : Prop :=
  ∀ n, P11859280357858338545.a n = A353292 n

end A353292

/-! ## A353292.P647840464090670182

`n-A001065(A080100(n))`
-/

namespace A353292.P647840464090670182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (A080100 n).toNat

end

end A353292.P647840464090670182

namespace A353292

/-- `n-A001065(A080100(n))` -/
def P647840464090670182.Spec : Prop :=
  ∀ n, P647840464090670182.a n = A353292 n

end A353292

/-! ## A353292.P5170110534858113228

`n-A233931(A073137(n))`
-/

namespace A353292.P5170110534858113228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A233931 (A073137 n).toNat

end

end A353292.P5170110534858113228

namespace A353292

/-- `n-A233931(A073137(n))` -/
def P5170110534858113228.Spec : Prop :=
  ∀ n, P5170110534858113228.a n = A353292 n

end A353292

/-! ## A353292.P16913303240106134551

`n-A000225(∑[A089263(n)])`
-/

namespace A353292.P16913303240106134551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A353292.P16913303240106134551

namespace A353292

/-- `n-A000225(∑[A089263(n)])` -/
def P16913303240106134551.Spec : Prop :=
  ∀ n, P16913303240106134551.a n = A353292 n

end A353292

/-! ## A353292.P8449642501215494175

`1-A000010(A267584(n))+n`
-/

namespace A353292.P8449642501215494175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (A267584 n).toNat + (n : ℤ)

end

end A353292.P8449642501215494175

namespace A353292

/-- `1-A000010(A267584(n))+n` -/
def P8449642501215494175.Spec : Prop :=
  ∀ n, P8449642501215494175.a n = A353292 n

end A353292

/-! ## A353292.P4816910996464552339

`1-A267584(A025480(n))+n`
-/

namespace A353292.P4816910996464552339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267584 (A025480 n).toNat + (n : ℤ)

end

end A353292.P4816910996464552339

namespace A353292

/-- `1-A267584(A025480(n))+n` -/
def P4816910996464552339.Spec : Prop :=
  ∀ n, P4816910996464552339.a n = A353292 n

end A353292

/-! ## A353292.P14643535188873335739

`n+1-A011782(A290251(n))`
-/

namespace A353292.P14643535188873335739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A011782 (A290251 n).toNat

end

end A353292.P14643535188873335739

namespace A353292

/-- `n+1-A011782(A290251(n))` -/
def P14643535188873335739.Spec : Prop :=
  ∀ n, P14643535188873335739.a n = A353292 n

end A353292

/-! ## A353292.P7148232331160718858

`n-A026741(A080100(n)-1)`
-/

namespace A353292.P7148232331160718858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 (A080100 n - 1).toNat

end

end A353292.P7148232331160718858

namespace A353292

/-- `n-A026741(A080100(n)-1)` -/
def P7148232331160718858.Spec : Prop :=
  ∀ n, P7148232331160718858.a n = A353292 n

end A353292

/-! ## A353292.P9744016051644251340

`1-(A080100(A028310(n))-n)`
-/

namespace A353292.P9744016051644251340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A080100 (A028310 n).toNat - (n : ℤ))

end

end A353292.P9744016051644251340

namespace A353292

/-- `1-(A080100(A028310(n))-n)` -/
def P9744016051644251340.Spec : Prop :=
  ∀ n, P9744016051644251340.a n = A353292 n

end A353292

/-! ## A353292.P16246612639232226261

`n-A038573(A080100(n)-1)`
-/

namespace A353292.P16246612639232226261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 (A080100 n - 1).toNat

end

end A353292.P16246612639232226261

namespace A353292

/-- `n-A038573(A080100(n)-1)` -/
def P16246612639232226261.Spec : Prop :=
  ∀ n, P16246612639232226261.a n = A353292 n

end A353292

/-! ## A353292.P10303514406533547723

`n-A073137(A080100(n)-1)`
-/

namespace A353292.P10303514406533547723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A073137 (A080100 n - 1).toNat

end

end A353292.P10303514406533547723

namespace A353292

/-- `n-A073137(A080100(n)-1)` -/
def P10303514406533547723.Spec : Prop :=
  ∀ n, P10303514406533547723.a n = A353292 n

end A353292

/-! ## A353292.P3849331268564442109

`n-A175920(A080100(n)-1)`
-/

namespace A353292.P3849331268564442109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A175920 (A080100 n - 1).toNat

end

end A353292.P3849331268564442109

namespace A353292

/-- `n-A175920(A080100(n)-1)` -/
def P3849331268564442109.Spec : Prop :=
  ∀ n, P3849331268564442109.a n = A353292 n

end A353292

/-! ## A353292.P5588590013793590417

`n-A268289(A080100(n)-1)`
-/

namespace A353292.P5588590013793590417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A268289 (A080100 n - 1).toNat

end

end A353292.P5588590013793590417

namespace A353292

/-- `n-A268289(A080100(n)-1)` -/
def P5588590013793590417.Spec : Prop :=
  ∀ n, P5588590013793590417.a n = A353292 n

end A353292

/-! ## A353292.P8744616240713166880

`n-A342126(A080100(n)-1)`
-/

namespace A353292.P8744616240713166880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A342126 (A080100 n - 1).toNat

end

end A353292.P8744616240713166880

namespace A353292

/-- `n-A342126(A080100(n)-1)` -/
def P8744616240713166880.Spec : Prop :=
  ∀ n, P8744616240713166880.a n = A353292 n

end A353292

/-! ## A353292.P2291319275379932338

`n-A000225(val(A080100(n), 2))`
-/

namespace A353292.P2291319275379932338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000225 (SequenceMachineLib.valuation (A080100 n).toNat 2)

end

end A353292.P2291319275379932338

namespace A353292

/-- `n-A000225(val(A080100(n), 2))` -/
def P2291319275379932338.Spec : Prop :=
  ∀ n, P2291319275379932338.a n = A353292 n

end A353292

/-! ## A353292.P1714566705768293619

`n-A038573(n-A006257(n))`
-/

namespace A353292.P1714566705768293619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A038573 ((n : ℤ) - A006257 n).toNat

end

end A353292.P1714566705768293619

namespace A353292

/-- `n-A038573(n-A006257(n))` -/
def P1714566705768293619.Spec : Prop :=
  ∀ n, P1714566705768293619.a n = A353292 n

end A353292

/-!
# A353293: Irregular table T(n, k), n > 0, k = 1..A353292(n), read by rows: the n-th row contains in ascending order the distinct positive integers k <= n that have at least one common 1-bit with n.

The programs for A353293, the canonical program `A353293.P9603685169671466923` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353293 has offset 1).

The definition of A353293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353293.P9603685169671466923

`A002260(eq[0, A089885(n)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A353293

/-- `A002260(eq[0, A089885(n)])` -/
def P9603685169671466923.Spec : Prop :=
  ∀ n, P9603685169671466923.a n = A353293 (n + 1)

theorem P9603685169671466923.correct : P9603685169671466923.Spec := by
  intro n
  simp only [A353293, Nat.add_sub_cancel]

end A353293

/-! ## A353293.P3040396066199424470

`A002262(eq[0, A089885(n)])`
-/

namespace A353293.P3040396066199424470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353293.P3040396066199424470

namespace A353293

/-- `A002262(eq[0, A089885(n)])` -/
def P3040396066199424470.Spec : Prop :=
  ∀ n, P3040396066199424470.a n = A353293 (n + 1)

end A353293

/-! ## A353293.P6702571846681514545

`A002260(lt[0, A080099(n)])`
-/

namespace A353293.P6702571846681514545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353293.P6702571846681514545

namespace A353293

/-- `A002260(lt[0, A080099(n)])` -/
def P6702571846681514545.Spec : Prop :=
  ∀ n, P6702571846681514545.a n = A353293 (n + 1)

end A353293

/-! ## A353293.P5042760515322835790

`A002262(lt[0, A080099(n)])`
-/

namespace A353293.P5042760515322835790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353293.P5042760515322835790

namespace A353293

/-- `A002262(lt[0, A080099(n)])` -/
def P5042760515322835790.Spec : Prop :=
  ∀ n, P5042760515322835790.a n = A353293 (n + 1)

end A353293

/-! ## A353293.P17219264698730615191

`A002262(comp[n-A080099(n)])`
-/

namespace A353293.P17219264698730615191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A080099 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A353293.P17219264698730615191

namespace A353293

/-- `A002262(comp[n-A080099(n)])` -/
def P17219264698730615191.Spec : Prop :=
  ∀ n, P17219264698730615191.a n = A353293 (n + 1)

end A353293

/-!
# A353294: A generator matrix for the Leech lattice, multiplied by sqrt(8), read by rows.

The programs for A353294, there is no canonical definition to state claims against.
-/

/-! ## A353294.P10781414992559101418

`A051762(3*n+1)*A253903(A350231(n+1))`
-/

namespace A353294.P10781414992559101418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051762 (3 * n + 1) * A253903 (A350231 (n + 1)).toNat

end

end A353294.P10781414992559101418

/-! ## A353294.P12018631962259410919

`and(A104347(A094728(n+1)), A321864(n+1))`
-/

namespace A353294.P12018631962259410919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104347 (A094728 (n + 1)).toNat) (A321864 (n + 1))

end

end A353294.P12018631962259410919

/-! ## A353294.P2428730240639979627

`and(A002993(n+3), A318720(A172417(n+5)))`
-/

namespace A353294.P2428730240639979627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002993 (n + 3)) (A318720 (A172417 (n + 5)).toNat)

end

end A353294.P2428730240639979627

/-! ## A353294.P14798449839797273372

`A046113(A060948(n+2))`
-/

namespace A353294.P14798449839797273372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (A060948 (n + 2)).toNat

end

end A353294.P14798449839797273372

/-! ## A353294.P1120569592943757638

`and(A321864(n+1), A358884(n+1))`
-/

namespace A353294.P1120569592943757638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321864 (n + 1)) (A358884 (n + 1))

end

end A353294.P1120569592943757638

/-!
# A353295: Square nearest to the sum of the first n positive squares.

The programs for A353295, the canonical program `A353295.P5807671858517643059` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353295 has offset 0).

The definition of A353295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353295.P5807671858517643059

`A053187(A000330(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A353295

/-- `A053187(A000330(n))` -/
def P5807671858517643059.Spec : Prop :=
  ∀ n, P5807671858517643059.a n = A353295 n

theorem P5807671858517643059.correct : P5807671858517643059.Spec := by
  intro n
  simp only [A353295]

end A353295

/-! ## A353295.P6611225278889137704

`round(sqrt(∑[n²]))²`
-/

namespace A353295.P6611225278889137704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) ^ 2

end

end A353295.P6611225278889137704

namespace A353295

/-- `round(sqrt(∑[n²]))²` -/
def P6611225278889137704.Spec : Prop :=
  ∀ n, P6611225278889137704.a n = A353295 n

end A353295

/-! ## A353295.P11451253496667921879

`round(sqrt(∑[A000290(n)]))^(4/2)`
-/

namespace A353295.P11451253496667921879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)) : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

end

end A353295.P11451253496667921879

namespace A353295

/-- `round(sqrt(∑[A000290(n)]))^(4/2)` -/
def P11451253496667921879.Spec : Prop :=
  ∀ n, P11451253496667921879.a n = (A353295 n : ℝ)

end A353295

/-! ## A353295.P130350551846141593

`round(sqrt(A208950(2*n+1)))^2`
-/

namespace A353295.P130350551846141593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A208950 (2 * n + 1) : ℝ)) ^ 2

end

end A353295.P130350551846141593

namespace A353295

/-- `round(sqrt(A208950(2*n+1)))^2` -/
def P130350551846141593.Spec : Prop :=
  ∀ n, P130350551846141593.a n = A353295 n

end A353295

/-! ## A353295.P17721516840645316176

`A000290(round(sqrt(C(2*(n+1), 3)/4)))`
-/

namespace A353295.P17721516840645316176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose (2 * (n + 1)) 3 : ℚ) / 4 : ℝ))).toNat

end

end A353295.P17721516840645316176

namespace A353295

/-- `A000290(round(sqrt(C(2*(n+1), 3)/4)))` -/
def P17721516840645316176.Spec : Prop :=
  ∀ n, P17721516840645316176.a n = A353295 n

end A353295

/-! ## A353295.P4086563645573437656

`A000290(round(sqrt(A000330(n))))`
-/

namespace A353295.P4086563645573437656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (Real.sqrt (A000330 n : ℝ))).toNat

end

end A353295.P4086563645573437656

namespace A353295

/-- `A000290(round(sqrt(A000330(n))))` -/
def P4086563645573437656.Spec : Prop :=
  ∀ n, P4086563645573437656.a n = A353295 n

end A353295

/-!
# A353296: Pairs (i,j) of positive integers with at least one common 1-bit sorted first by i+j then by i.

The programs for A353296, there is no canonical definition to state claims against.
-/

/-! ## A353296.P17250421421506591869

`A353865(n)+A083905(A293364(n))`
-/

namespace A353296.P17250421421506591869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353865 n + A083905 (A293364 n).toNat

end

end A353296.P17250421421506591869

/-! ## A353296.P4634082405319541459

`A001222(A160608(n)+A097269(n+1))`
-/

namespace A353296.P4634082405319541459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A160608 n + A097269 (n + 1)).toNat

end

end A353296.P4634082405319541459

/-! ## A353296.P10523150769468309777

`A139351(A034856(n+1)*A072204(n+1))`
-/

namespace A353296.P10523150769468309777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A034856 (n + 1) * A072204 (n + 1)).toNat

end

end A353296.P10523150769468309777

/-!
# A353297: The i-values of pairs (i,j) listed in A353296.

The programs for A353297, the canonical program `A353297.P5129831878395689733` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353297 has offset 1).

The definition of A353297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353297.P12867459263336045821

`A353296(Δ[n²])`
-/

namespace A353297.P12867459263336045821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353296 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A353297.P12867459263336045821

namespace A353297

/-- `A353296(Δ[n²])` -/
def P12867459263336045821.Spec : Prop :=
  ∀ n, P12867459263336045821.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P9457278108587449027

`A353296(2*n+1)%(n+2)`
-/

namespace A353297.P9457278108587449027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353296 (2 * n + 1)) (n + 2 : ℤ)

end

end A353297.P9457278108587449027

namespace A353297

/-- `A353296(2*n+1)%(n+2)` -/
def P9457278108587449027.Spec : Prop :=
  ∀ n, P9457278108587449027.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P5129831878395689733

`A002260(A268232(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353297

/-- `A002260(A268232(n+1))` -/
def P5129831878395689733.Spec : Prop :=
  ∀ n, P5129831878395689733.a n = A353297 (n + 1)

theorem P5129831878395689733.correct : P5129831878395689733.Spec := by
  intro n
  simp only [A353297, Nat.add_sub_cancel]

end A353297

/-! ## A353297.P6013649515013664168

`A002260(eq[0, A047999(n)])`
-/

namespace A353297.P6013649515013664168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353297.P6013649515013664168

namespace A353297

/-- `A002260(eq[0, A047999(n)])` -/
def P6013649515013664168.Spec : Prop :=
  ∀ n, P6013649515013664168.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P15507030729268608020

`A002262(eq[0, A047999(n)])`
-/

namespace A353297.P15507030729268608020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353297.P15507030729268608020

namespace A353297

/-- `A002262(eq[0, A047999(n)])` -/
def P15507030729268608020.Spec : Prop :=
  ∀ n, P15507030729268608020.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P5458573746513873048

`A002262(eq[0, A143333(n)])`
-/

namespace A353297.P5458573746513873048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353297.P5458573746513873048

namespace A353297

/-- `A002262(eq[0, A143333(n)])` -/
def P5458573746513873048.Spec : Prop :=
  ∀ n, P5458573746513873048.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P9504197004136579920

`A002260(lt[A047999(n), 1])`
-/

namespace A353297.P9504197004136579920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353297.P9504197004136579920

namespace A353297

/-- `A002260(lt[A047999(n), 1])` -/
def P9504197004136579920.Spec : Prop :=
  ∀ n, P9504197004136579920.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P13277082394198391830

`A002262(lt[A047999(n), 1])`
-/

namespace A353297.P13277082394198391830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353297.P13277082394198391830

namespace A353297

/-- `A002262(lt[A047999(n), 1])` -/
def P13277082394198391830.Spec : Prop :=
  ∀ n, P13277082394198391830.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P1954656111229927356

`A002260(lt[A007318(n)%2, 1])`
-/

namespace A353297.P1954656111229927356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353297.P1954656111229927356

namespace A353297

/-- `A002260(lt[A007318(n)%2, 1])` -/
def P1954656111229927356.Spec : Prop :=
  ∀ n, P1954656111229927356.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P10377861553150746930

`A002260(lt[A124928(n)%2, 1])`
-/

namespace A353297.P10377861553150746930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124928 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353297.P10377861553150746930

namespace A353297

/-- `A002260(lt[A124928(n)%2, 1])` -/
def P10377861553150746930.Spec : Prop :=
  ∀ n, P10377861553150746930.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P18399675835325007950

`A002260(lt[A134059(n)%2, 1])`
-/

namespace A353297.P18399675835325007950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134059 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353297.P18399675835325007950

namespace A353297

/-- `A002260(lt[A134059(n)%2, 1])` -/
def P18399675835325007950.Spec : Prop :=
  ∀ n, P18399675835325007950.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P11745675773590974010

`A002260(lt[(A051160(n)%2)², 1])`
-/

namespace A353297.P11745675773590974010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051160 n) 2 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353297.P11745675773590974010

namespace A353297

/-- `A002260(lt[(A051160(n)%2)², 1])` -/
def P11745675773590974010.Spec : Prop :=
  ∀ n, P11745675773590974010.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P8127315145147731423

`A002262(lt[A080099(n), A002262(n)])`
-/

namespace A353297.P8127315145147731423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353297.P8127315145147731423

namespace A353297

/-- `A002262(lt[A080099(n), A002262(n)])` -/
def P8127315145147731423.Spec : Prop :=
  ∀ n, P8127315145147731423.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P13545741624270614476

`A353661(A353660(A353296(2*n+1)))`
-/

namespace A353297.P13545741624270614476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A353660 (A353296 (2 * n + 1)).toNat).toNat

end

end A353297.P13545741624270614476

namespace A353297

/-- `A353661(A353660(A353296(2*n+1)))` -/
def P13545741624270614476.Spec : Prop :=
  ∀ n, P13545741624270614476.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P10482662666834338278

`A353660(A353661(A353296(n+1+n)))`
-/

namespace A353297.P10482662666834338278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353660 (A353661 (A353296 (n + 1 + n)).toNat).toNat

end

end A353297.P10482662666834338278

namespace A353297

/-- `A353660(A353661(A353296(n+1+n)))` -/
def P10482662666834338278.Spec : Prop :=
  ∀ n, P10482662666834338278.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P6576565355121704976

`A353296(A005408(n))/and(1, A005408(n))`
-/

namespace A353297.P6576565355121704976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353296 (A005408 n).toNat : ℚ) / (Int.land 1 (A005408 n) : ℚ)

end

end A353297.P6576565355121704976

namespace A353297

/-- `A353296(A005408(n))/and(1, A005408(n))` -/
def P6576565355121704976.Spec : Prop :=
  ∀ n, P6576565355121704976.a n = (A353297 (n + 1) : ℚ)

end A353297

/-! ## A353297.P2305189641994146674

`A002262(lt[A280172(n+1), A003056(n)])`
-/

namespace A353297.P2305189641994146674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353297.P2305189641994146674

namespace A353297

/-- `A002262(lt[A280172(n+1), A003056(n)])` -/
def P2305189641994146674.Spec : Prop :=
  ∀ n, P2305189641994146674.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P17683052740646368172

`A002260(lt[1, A307433(n)])`
-/

namespace A353297.P17683052740646368172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353297.P17683052740646368172

namespace A353297

/-- `A002260(lt[1, A307433(n)])` -/
def P17683052740646368172.Spec : Prop :=
  ∀ n, P17683052740646368172.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P6076582891349221063

`A002262(lt[1, A307433(n)])`
-/

namespace A353297.P6076582891349221063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353297.P6076582891349221063

namespace A353297

/-- `A002262(lt[1, A307433(n)])` -/
def P6076582891349221063.Spec : Prop :=
  ∀ n, P6076582891349221063.a n = A353297 (n + 1)

end A353297

/-! ## A353297.P5871894264784141160

`A353296(2*n+1)+A283978(2*n)`
-/

namespace A353297.P5871894264784141160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353296 (2 * n + 1) + A283978 (2 * n)

end

end A353297.P5871894264784141160

namespace A353297

/-- `A353296(2*n+1)+A283978(2*n)` -/
def P5871894264784141160.Spec : Prop :=
  ∀ n, P5871894264784141160.a n = A353297 (n + 1)

end A353297

/-!
# A353298: The j-values of pairs (i,j) listed in A353296.

The programs for A353298, the canonical program `A353298.P2133043049665979406` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353298 has offset 1).

The definition of A353298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353298.P11278256378267493533

`A353296(2*(n+1))`
-/

namespace A353298.P11278256378267493533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353296 (2 * (n + 1))

end

end A353298.P11278256378267493533

namespace A353298

/-- `A353296(2*(n+1))` -/
def P11278256378267493533.Spec : Prop :=
  ∀ n, P11278256378267493533.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P2133043049665979406

`A025581(A268232(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353298

/-- `A025581(A268232(n+1))` -/
def P2133043049665979406.Spec : Prop :=
  ∀ n, P2133043049665979406.a n = A353298 (n + 1)

theorem P2133043049665979406.correct : P2133043049665979406.Spec := by
  intro n
  simp only [A353298, Nat.add_sub_cancel]

end A353298

/-! ## A353298.P11820027527481735385

`A025581(eq[0, A047999(n)])`
-/

namespace A353298.P11820027527481735385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353298.P11820027527481735385

namespace A353298

/-- `A025581(eq[0, A047999(n)])` -/
def P11820027527481735385.Spec : Prop :=
  ∀ n, P11820027527481735385.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P3086163720771963075

`A025581(lt[A047999(n), 1])`
-/

namespace A353298.P3086163720771963075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353298.P3086163720771963075

namespace A353298

/-- `A025581(lt[A047999(n), 1])` -/
def P3086163720771963075.Spec : Prop :=
  ∀ n, P3086163720771963075.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P18161394744540740836

`A193739(A268232(n+1)+1)`
-/

namespace A353298.P18161394744540740836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A268232 (n + 1) + 1).toNat

end

end A353298.P18161394744540740836

namespace A353298

/-- `A193739(A268232(n+1)+1)` -/
def P18161394744540740836.Spec : Prop :=
  ∀ n, P18161394744540740836.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P11042324126871021750

`A004736(A268232(n+1)+2)`
-/

namespace A353298.P11042324126871021750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A268232 (n + 1) + 2).toNat

end

end A353298.P11042324126871021750

namespace A353298

/-- `A004736(A268232(n+1)+2)` -/
def P11042324126871021750.Spec : Prop :=
  ∀ n, P11042324126871021750.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P2998811217146667827

`A004736(eq[0, A047999(n)]+2)`
-/

namespace A353298.P2998811217146667827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A353298.P2998811217146667827

namespace A353298

/-- `A004736(eq[0, A047999(n)]+2)` -/
def P2998811217146667827.Spec : Prop :=
  ∀ n, P2998811217146667827.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P4843916178561042414

`A025581(lt[A007318(n)%2, 1])`
-/

namespace A353298.P4843916178561042414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353298.P4843916178561042414

namespace A353298

/-- `A025581(lt[A007318(n)%2, 1])` -/
def P4843916178561042414.Spec : Prop :=
  ∀ n, P4843916178561042414.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P15691426927355053983

`A025581(lt[A124928(n)%2, 1])`
-/

namespace A353298.P15691426927355053983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124928 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353298.P15691426927355053983

namespace A353298

/-- `A025581(lt[A124928(n)%2, 1])` -/
def P15691426927355053983.Spec : Prop :=
  ∀ n, P15691426927355053983.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P6087753176185914695

`A025581(lt[A134059(n)%2, 1])`
-/

namespace A353298.P6087753176185914695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134059 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353298.P6087753176185914695

namespace A353298

/-- `A025581(lt[A134059(n)%2, 1])` -/
def P6087753176185914695.Spec : Prop :=
  ∀ n, P6087753176185914695.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P12726520873372014331

`A193739(comp[A268231(n+1)]+1)`
-/

namespace A353298.P12726520873372014331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A353298.P12726520873372014331

namespace A353298

/-- `A193739(comp[A268231(n+1)]+1)` -/
def P12726520873372014331.Spec : Prop :=
  ∀ n, P12726520873372014331.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P13092952308558469349

`A025581(lt[(A051160(n)%2)², 1])`
-/

namespace A353298.P13092952308558469349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051160 n) 2 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A353298.P13092952308558469349

namespace A353298

/-- `A025581(lt[(A051160(n)%2)², 1])` -/
def P13092952308558469349.Spec : Prop :=
  ∀ n, P13092952308558469349.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P8903192576656630235

`A025581(lt[A003987(n), A003056(n)])`
-/

namespace A353298.P8903192576656630235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353298.P8903192576656630235

namespace A353298

/-- `A025581(lt[A003987(n), A003056(n)])` -/
def P8903192576656630235.Spec : Prop :=
  ∀ n, P8903192576656630235.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P7887569135894486053

`A353661(A353660(A353296(n+2+n)))`
-/

namespace A353298.P7887569135894486053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353661 (A353660 (A353296 (n + 2 + n)).toNat).toNat

end

end A353298.P7887569135894486053

namespace A353298

/-- `A353661(A353660(A353296(n+2+n)))` -/
def P7887569135894486053.Spec : Prop :=
  ∀ n, P7887569135894486053.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P7946881656395344732

`A025581(lt[A280172(n+1), A003056(n)])`
-/

namespace A353298.P7946881656395344732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353298.P7946881656395344732

namespace A353298

/-- `A025581(lt[A280172(n+1), A003056(n)])` -/
def P7946881656395344732.Spec : Prop :=
  ∀ n, P7946881656395344732.a n = A353298 (n + 1)

end A353298

/-! ## A353298.P6372909726655292906

`A025581(lt[1, A307433(n)])`
-/

namespace A353298.P6372909726655292906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353298.P6372909726655292906

namespace A353298

/-- `A025581(lt[1, A307433(n)])` -/
def P6372909726655292906.Spec : Prop :=
  ∀ n, P6372909726655292906.a n = A353298 (n + 1)

end A353298

