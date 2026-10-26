import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A121401: a(n) = ((sqrt(3)+1)^n+(sqrt(3)-1)^n)^2/2^(n+1).

The programs for A121401, the canonical program `A121401.P16705120384378547019` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121401 has offset 0).

The definition of A121401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((sqrt(3)+1)^n+(sqrt(3)-1)^n)²/2^(n+1)` (program `A121401.P13352375571425232840`, by `A121401.P13352375571425232840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121401.P16705120384378547019

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121401

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P16705120384378547019.Spec : Prop :=
  ∀ n, P16705120384378547019.a n = A121401 n

theorem P16705120384378547019.correct : P16705120384378547019.Spec := by
  intro n
  simp only [A121401]

end A121401

/-! ## A121401.P574190810051423398

`A001075(n)+1`
-/

namespace A121401.P574190810051423398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + 1

end

end A121401.P574190810051423398

namespace A121401

/-- `A001075(n)+1` -/
def P574190810051423398.Spec : Prop :=
  ∀ n, P574190810051423398.a n = A121401 n

end A121401

/-! ## A121401.P13352375571425232840

`((sqrt(3)+1)^n+(sqrt(3)-1)^n)²/2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121401.P13352375571425232840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (3 : ℝ) + 1) ^ n + (Real.sqrt (3 : ℝ) - 1) ^ n) ^ 2 / (2 ^ (n + 1) : ℝ)

end

end A121401.P13352375571425232840

namespace A121401

/-- `((sqrt(3)+1)^n+(sqrt(3)-1)^n)²/2^(n+1)` -/
def P13352375571425232840.Spec : Prop :=
  ∀ n, P13352375571425232840.a n = (A121401 n : ℝ)

theorem P13352375571425232840.correct : P13352375571425232840.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A121401, Nat.add_sub_cancel, A121401.P13352375571425232840.a, A121401.P16705120384378547019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A121401, Nat.add_sub_cancel, A121401.P13352375571425232840.a, A121401.P16705120384378547019.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A121401

/-! ## A121401.P16531984121764335031

`∑[ogf((2-7x+3x^2)/(1-4x+x^2))]`
-/

namespace A121401.P16531984121764335031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7, 3] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121401.P16531984121764335031

namespace A121401

/-- `∑[ogf((2-7x+3x^2)/(1-4x+x^2))]` -/
def P16531984121764335031.Spec : Prop :=
  ∀ n, P16531984121764335031.a n = A121401 n

end A121401

/-! ## A121401.P17725419095987193615

`ogf((2-7x+3x^2)/(1-5x+5x^2-x^3))`
-/

namespace A121401.P17725419095987193615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7, 3] [1, -5, 5, -1] n

end

end A121401.P17725419095987193615

namespace A121401

/-- `ogf((2-7x+3x^2)/(1-5x+5x^2-x^3))` -/
def P17725419095987193615.Spec : Prop :=
  ∀ n, P17725419095987193615.a n = A121401 n

end A121401

/-! ## A121401.P6393525483308511969

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A121401.P6393525483308511969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121401.P6393525483308511969

namespace A121401

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P6393525483308511969.Spec : Prop :=
  ∀ n, P6393525483308511969.a n = A121401 n

end A121401

/-! ## A121401.P14328505261172942885

`∑[round((sqrt(3)+2)*a(n-1))]` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A121401.P14328505261172942885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 5] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121401.P14328505261172942885

namespace A121401

/-- `∑[round((sqrt(3)+2)*a(n-1))]` -/
def P14328505261172942885.Spec : Prop :=
  ∀ n, P14328505261172942885.a n = A121401 n

end A121401

/-! ## A121401.P7879947496956908265

`4*a(n-1)-(a(n-2)+2)` with `a(0)=2, a(1)=3`
-/

namespace A121401.P7879947496956908265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * a (n - 1) - (a (n - 2) + 2)

end

end A121401.P7879947496956908265

namespace A121401

/-- `4*a(n-1)-(a(n-2)+2)` -/
def P7879947496956908265.Spec : Prop :=
  ∀ n, P7879947496956908265.a n = A121401 n

end A121401

/-! ## A121401.P14508202128828976484

`4*a(n-1)-2-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A121401.P14508202128828976484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * a (n - 1) - 2 - a (n - 2)

end

end A121401.P14508202128828976484

namespace A121401

/-- `4*a(n-1)-2-a(n-2)` -/
def P14508202128828976484.Spec : Prop :=
  ∀ n, P14508202128828976484.a n = A121401 n

end A121401

/-! ## A121401.P4599444907307685376

`a(n-1)/(1/2)²-2-a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A121401.P4599444907307685376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 2 - a (n - 2)

end

end A121401.P4599444907307685376

namespace A121401

/-- `a(n-1)/(1/2)²-2-a(n-2)` -/
def P4599444907307685376.Spec : Prop :=
  ∀ n, P4599444907307685376.a n = (A121401 n : ℚ)

end A121401

/-! ## A121401.P3887393801453163682

`A092184(n)+2`
-/

namespace A121401.P3887393801453163682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092184 n + 2

end

end A121401.P3887393801453163682

namespace A121401

/-- `A092184(n)+2` -/
def P3887393801453163682.Spec : Prop :=
  ∀ n, P3887393801453163682.a n = A121401 n

end A121401

/-! ## A121401.P17267251532078578825

`A002531(2*n)+1`
-/

namespace A121401.P17267251532078578825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n) + 1

end

end A121401.P17267251532078578825

namespace A121401

/-- `A002531(2*n)+1` -/
def P17267251532078578825.Spec : Prop :=
  ∀ n, P17267251532078578825.a n = A121401 n

end A121401

/-! ## A121401.P5116151441786438196

`A005246(Δ[n²])+1`
-/

namespace A121401.P5116151441786438196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A121401.P5116151441786438196

namespace A121401

/-- `A005246(Δ[n²])+1` -/
def P5116151441786438196.Spec : Prop :=
  ∀ n, P5116151441786438196.a n = A121401 n

end A121401

/-! ## A121401.P5479216625911281985

`record[Δ[A002530(n)]+1]`
-/

namespace A121401.P5479216625911281985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121401.P5479216625911281985

namespace A121401

/-- `record[Δ[A002530(n)]+1]` -/
def P5479216625911281985.Spec : Prop :=
  ∀ n, P5479216625911281985.a n = A121401 n

end A121401

/-! ## A121401.P15422102154284630540

`Δ[A107401(2*n)]+1`
-/

namespace A121401.P15422102154284630540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A121401.P15422102154284630540

namespace A121401

/-- `Δ[A107401(2*n)]+1` -/
def P15422102154284630540.Spec : Prop :=
  ∀ n, P15422102154284630540.a n = A121401 n

end A121401

/-! ## A121401.P4493017352530108032

`A350920(n)-a(n-1)` with `a(0)=2`
-/

namespace A121401.P4493017352530108032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A350920 n - a (n - 1)

end

end A121401.P4493017352530108032

namespace A121401

/-- `A350920(n)-a(n-1)` -/
def P4493017352530108032.Spec : Prop :=
  ∀ n, P4493017352530108032.a n = A121401 n

end A121401

/-! ## A121401.P8142713061167040902

`∑[abs(A108413(2*n))]+1`
-/

namespace A121401.P8142713061167040902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121401.P8142713061167040902

namespace A121401

/-- `∑[abs(A108413(2*n))]+1` -/
def P8142713061167040902.Spec : Prop :=
  ∀ n, P8142713061167040902.a n = A121401 n

end A121401

/-! ## A121401.P14444966915082821668

`abs(A108413(2*n+1))+1`
-/

namespace A121401.P14444966915082821668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108413 (2 * n + 1)| + 1

end

end A121401.P14444966915082821668

namespace A121401

/-- `abs(A108413(2*n+1))+1` -/
def P14444966915082821668.Spec : Prop :=
  ∀ n, P14444966915082821668.a n = A121401 n

end A121401

/-! ## A121401.P13917835894068626758

`A001834(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A121401.P13917835894068626758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001834 (n - 1) + a (n - 1)

end

end A121401.P13917835894068626758

namespace A121401

/-- `A001834(n-1)+a(n-1)` -/
def P13917835894068626758.Spec : Prop :=
  ∀ n, P13917835894068626758.a n = A121401 n

end A121401

/-! ## A121401.P10538806133126266349

`A259592(A004273(n))+1`
-/

namespace A121401.P10538806133126266349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259592 (A004273 n).toNat + 1

end

end A121401.P10538806133126266349

namespace A121401

/-- `A259592(A004273(n))+1` -/
def P10538806133126266349.Spec : Prop :=
  ∀ n, P10538806133126266349.a n = A121401 n

end A121401

/-!
# A121402: Prime values of integers written in factorial base, interpreted as in base 10.

The programs for A121402, there is no canonical definition to state claims against.
-/

/-! ## A121402.P12515078797128062306

`p?[A007623(n)]`
-/

namespace A121402.P12515078797128062306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121402.P12515078797128062306

/-! ## A121402.P1929365398238829076

`record[A020639(A007623(n+3))]`
-/

namespace A121402.P1929365398238829076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007623 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121402.P1929365398238829076

/-! ## A121402.P14744678932893267466

`p?[A276326(A153880(n)-n)]`
-/

namespace A121402.P14744678932893267466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (A153880 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121402.P14744678932893267466

/-! ## A121402.P5488915107035104287

`filter[A007623(n+1), A010051(#)]`
-/

namespace A121402.P5488915107035104287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A121402.P5488915107035104287

/-!
# A121404: A093483(n)-2.

The programs for A121404, there is no canonical definition to state claims against.
-/

/-! ## A121404.P17842617294059354278

`A093483(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121404.P17842617294059354278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093483 (n + 1) - 2

end

end A121404.P17842617294059354278

/-! ## A121404.P7898309754775426202

`A117480(n+1)-3`
-/

namespace A121404.P7898309754775426202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117480 (n + 1) - 3

end

end A121404.P7898309754775426202

/-! ## A121404.P700217516305510188

`(A180565(n+1)-5)/2`
-/

namespace A121404.P700217516305510188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180565 (n + 1) - 5 : ℚ) / 2

end

end A121404.P700217516305510188

/-! ## A121404.P6562303129407397608

`or(1, A093483(-xor(n, -1)))-3`
-/

namespace A121404.P6562303129407397608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A093483 (-Int.xor (n : ℤ) (-1)).toNat) - 3

end

end A121404.P6562303129407397608

/-! ## A121404.P14374194788018454934

`record[Δ[A093483(A152271(n))]]`
-/

namespace A121404.P14374194788018454934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093483 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121404.P14374194788018454934

/-!
# A121405: Numbers that are not the sum of distinct pentagonal numbers (A000326).

The programs for A121405, there is no canonical definition to state claims against.
-/

/-! ## A121405.P1837962194416555213

`eq[0, A218380(n)]`
-/

namespace A121405.P1837962194416555213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121405.P1837962194416555213

/-! ## A121405.P5189673402196688201

`lt[A218380(n+1), 1]+1`
-/

namespace A121405.P5189673402196688201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218380 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A121405.P5189673402196688201

/-! ## A121405.P4388448086105883978

`lt[A218380(2*n-n), 1]`
-/

namespace A121405.P4388448086105883978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218380 (2 * n - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121405.P4388448086105883978

/-! ## A121405.P8520242542440389090

`A000027(lt[A218380(n), 1])`
-/

namespace A121405.P8520242542440389090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218380 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A121405.P8520242542440389090

/-! ## A121405.P16023523816162274935

`A087156(lt[A218380(n), 1])`
-/

namespace A121405.P16023523816162274935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218380 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A121405.P16023523816162274935

/-! ## A121405.P3879331173983931540

`lt[A005555(A218380(n)²), 2]`
-/

namespace A121405.P3879331173983931540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A218380 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121405.P3879331173983931540

/-! ## A121405.P814324610500876313

`lt[A006995(A218380(n)+1), 1]`
-/

namespace A121405.P814324610500876313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A218380 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121405.P814324610500876313

/-! ## A121405.P8438154283419876901

`lt[A000005(A218380(n)+1), 2]`
-/

namespace A121405.P8438154283419876901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A218380 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121405.P8438154283419876901

/-! ## A121405.P16893294851923845761

`lt[A001844(n)*A218380(n), 1]`
-/

namespace A121405.P16893294851923845761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n * A218380 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121405.P16893294851923845761

/-! ## A121405.P9195200317437972432

`lt[A005891(n)*A218380(n), 1]`
-/

namespace A121405.P9195200317437972432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n * A218380 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121405.P9195200317437972432

/-!
# A121406: a(1) = a(2) = 0; a(3) = 2; for n >= 4, a(n) = (prime(n-1)-2)*a(n-1), where prime(n) is the n-th prime.

The programs for A121406, the canonical program `A121406.P4896191058607550494` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121406 has offset 1).

The definition of A121406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n)-2)*a(n-1)` (program `A121406.P4896191058607550494`, by `A121406.P4896191058607550494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121406.P4896191058607550494

`(A000040(n)-2)*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121406

/-- `(A000040(n)-2)*a(n-1)` -/
def P4896191058607550494.Spec : Prop :=
  ∀ n, P4896191058607550494.a n = A121406 (n + 1)

theorem P4896191058607550494.correct : P4896191058607550494.Spec := by
  intro n
  simp only [A121406, Nat.add_sub_cancel]

end A121406

/-! ## A121406.P3131522486527063613

`(A008578(n+1)-2)*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A121406.P3131522486527063613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (A008578 (n + 1) - 2) * a (n - 1)

end

end A121406.P3131522486527063613

namespace A121406

/-- `(A008578(n+1)-2)*a(n-1)` -/
def P3131522486527063613.Spec : Prop :=
  ∀ n, P3131522486527063613.a n = A121406 (n + 1)

end A121406

/-! ## A121406.P16762948278454160761

`(A015919(n+1)-2)*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A121406.P16762948278454160761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (A015919 (n + 1) - 2) * a (n - 1)

end

end A121406.P16762948278454160761

namespace A121406

/-- `(A015919(n+1)-2)*a(n-1)` -/
def P16762948278454160761.Spec : Prop :=
  ∀ n, P16762948278454160761.a n = A121406 (n + 1)

end A121406

/-! ## A121406.P3223827916089778279

`(A182986(n+1)-2)*a(n-1)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A121406.P3223827916089778279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (A182986 (n + 1) - 2) * a (n - 1)

end

end A121406.P3223827916089778279

namespace A121406

/-- `(A182986(n+1)-2)*a(n-1)` -/
def P3223827916089778279.Spec : Prop :=
  ∀ n, P3223827916089778279.a n = A121406 (n + 1)

end A121406

/-! ## A121406.P4037738811710488611

`a(n-1)*A196438(record[A020639(n+1)])` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A121406.P4037738811710488611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) * A196438 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121406.P4037738811710488611

namespace A121406

/-- `a(n-1)*A196438(record[A020639(n+1)])` -/
def P4037738811710488611.Spec : Prop :=
  ∀ n, P4037738811710488611.a n = A121406 (n + 1)

end A121406

/-!
# A121407: Number of double eliminations of twin prime candidates within primorial intervals of prime(n)#.

The programs for A121407, there is no canonical definition to state claims against.
-/

/-! ## A121407.P9061711953498449318

`(A005867(n)-A121406(n+1))%A005867(n)`
-/

namespace A121407.P9061711953498449318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005867 n - A121406 (n + 1)) (A005867 n)

end

end A121407.P9061711953498449318

/-! ## A121407.P17083384569768276137

`A057005(A244640(n+1))%A054726(n)`
-/

namespace A121407.P17083384569768276137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057005 (A244640 (n + 1)).toNat) (A054726 n)

end

end A121407.P17083384569768276137

/-!
# A121408: Triangle T(n,k) defined by the generating function: exp(y*arcsin(x))-1 = Sum_{n>=1} (Sum_{k=1..n} T(n,k)*y^k)*x^n/n!.

The programs for A121408, there is no canonical definition to state claims against.
-/

/-! ## A121408.P8892059483618199552

`A385343(comp[∑[n]])`
-/

namespace A121408.P8892059483618199552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385343 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A121408.P8892059483618199552

/-! ## A121408.P12071359639178030388

`lcm((-1)^n, A385343(n+1+round(sqrt(2*(n+1)))))`
-/

namespace A121408.P12071359639178030388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A385343 ((n + 1 : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat)

end

end A121408.P12071359639178030388

/-! ## A121408.P11550025607487377301

`A328003(A156960(n))`
-/

namespace A121408.P11550025607487377301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A156960 n).toNat

end

end A121408.P11550025607487377301

/-! ## A121408.P2380616998609670680

`A055778(A156960(n)²)`
-/

namespace A121408.P2380616998609670680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A156960 n ^ 2).toNat

end

end A121408.P2380616998609670680

/-! ## A121408.P7371659517066796048

`A116447(A185415(n+1))`
-/

namespace A121408.P7371659517066796048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116447 (A185415 (n + 1)).toNat

end

end A121408.P7371659517066796048

/-!
# A121409: Prime numbers p such that p and prime(p) have no common decimal digit and prime(p) and prime(prime(p)) have no common decimal digit.

The programs for A121409, there is no canonical definition to state claims against.
-/

/-! ## A121409.P2412184977823254312

`A119405(A121410(n+1))`
-/

namespace A121409.P2412184977823254312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119405 (A121410 (n + 1)).toNat

end

end A121409.P2412184977823254312

/-! ## A121409.P17097694353640364720

`∩[A119405(n+1), A000720(A119405(n+1))]`
-/

namespace A121409.P17097694353640364720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A119405 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121409.P17097694353640364720

/-!
# A121411: Positive integers k for which there are primes of the form a^2+k^n=b^2+k^m with positive integers (a,b,m,n) and a > b.

The programs for A121411, there is no canonical definition to state claims against.
-/

/-! ## A121411.P4899609911585586684

`lt[A262237(A262209(n+1)), A262220(3*(n+1))]`
-/

namespace A121411.P4899609911585586684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262237 (A262209 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262220 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121411.P4899609911585586684

/-! ## A121411.P6237553168230674074

`lt[A262237(A262209(n+1)), A262212(3*(n+1))]`
-/

namespace A121411.P6237553168230674074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262237 (A262209 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262212 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121411.P6237553168230674074

/-! ## A121411.P14893764440159987684

`eq[A000122(A168172(n+1)), A000122(n)]`
-/

namespace A121411.P14893764440159987684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A168172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121411.P14893764440159987684

/-! ## A121411.P12248340076572874756

`eq[A089807(A168172(n+1)), A089807(n)]`
-/

namespace A121411.P12248340076572874756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 (A168172 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121411.P12248340076572874756

/-!
# A121412: Triangular matrix T, read by rows, where row n of T equals row (n-1) of T^(n+1) with an appended '1'.

The programs for A121412, there is no canonical definition to state claims against.
-/

/-! ## A121412.P14370263071305884267

`A101479(lt[1, A002262(n)])`
-/

namespace A121412.P14370263071305884267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121412.P14370263071305884267

/-! ## A121412.P3117491939776091483

`A101479(lt[2, A245049(n)])`
-/

namespace A121412.P3117491939776091483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121412.P3117491939776091483

/-! ## A121412.P9441708252557117707

`A101479(eq[0, A158821(n)]+1)`
-/

namespace A121412.P9441708252557117707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121412.P9441708252557117707

/-! ## A121412.P17874492846564534036

`A101479(eq[0, A128541(n)]+2)`
-/

namespace A121412.P17874492846564534036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A121412.P17874492846564534036

/-! ## A121412.P4520517849021647646

`A101479(A279891(n)+5+n)`
-/

namespace A121412.P4520517849021647646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (A279891 n + 5 + (n : ℤ)).toNat

end

end A121412.P4520517849021647646

/-!
# A121413: Column 1 of triangle A121412, in which row n of T equals row (n-1) of T^(n+1) with an appended '1'.

The programs for A121413, there is no canonical definition to state claims against.
-/

/-! ## A121413.P16165330837208262684

`A121412(∑[n+1]+1)`
-/

namespace A121413.P16165330837208262684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121413.P16165330837208262684

/-! ## A121413.P15826475706160872271

`A101479(A167614(n+2))`
-/

namespace A121413.P15826475706160872271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (A167614 (n + 2)).toNat

end

end A121413.P15826475706160872271

/-! ## A121413.P6403951903895157666

`A101479(A152950(n+4))`
-/

namespace A121413.P6403951903895157666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (A152950 (n + 4)).toNat

end

end A121413.P6403951903895157666

/-! ## A121413.P17712578860542644587

`A101479(A052905(n)+8)`
-/

namespace A121413.P17712578860542644587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (A052905 n + 8).toNat

end

end A121413.P17712578860542644587

/-! ## A121413.P8039485361502608754

`A101479(A055999(n)+9)`
-/

namespace A121413.P8039485361502608754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (A055999 n + 9).toNat

end

end A121413.P8039485361502608754

/-!
# A121414: Column 2 of triangle A121412, in which row n of T=A121412 equals row (n-1) of T^(n+1) with an appended '1'.

The programs for A121414, there is no canonical definition to state claims against.
-/

/-! ## A121414.P2294492244709352380

`A121412(∑[n+2]+3)`
-/

namespace A121414.P2294492244709352380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121414.P2294492244709352380

/-! ## A121414.P16495582731854298048

`A101479(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A121414.P16495582731854298048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121414.P16495582731854298048

/-! ## A121414.P17992137496947613506

`A101479(eq[4, A002262(n)])`
-/

namespace A121414.P17992137496947613506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121414.P17992137496947613506

/-! ## A121414.P17631069608686463489

`A101479(eq[4, A144328(n+1)])`
-/

namespace A121414.P17631069608686463489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121414.P17631069608686463489

/-!
# A121415: Column 3 of triangle A121412, in which row n of T=A121412 equals row (n-1) of T^(n+1) with an appended '1'.

The programs for A121415, there is no canonical definition to state claims against.
-/

/-! ## A121415.P7439605567618717067

`A121412(A167614(n+2))`
-/

namespace A121415.P7439605567618717067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (A167614 (n + 2)).toNat

end

end A121415.P7439605567618717067

/-! ## A121415.P3050361551581619517

`A121412(A152950(n+4))`
-/

namespace A121415.P3050361551581619517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (A152950 (n + 4)).toNat

end

end A121415.P3050361551581619517

/-! ## A121415.P14745827621282042365

`A121412(A052905(n)+8)`
-/

namespace A121415.P14745827621282042365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (A052905 n + 8).toNat

end

end A121415.P14745827621282042365

/-! ## A121415.P12849408595982426155

`A121412(A055999(n)+9)`
-/

namespace A121415.P12849408595982426155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (A055999 n + 9).toNat

end

end A121415.P12849408595982426155

/-! ## A121415.P8029057836990228640

`A121412(eq[3, A002262(n)])`
-/

namespace A121415.P8029057836990228640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121412 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121415.P8029057836990228640

/-!
# A121417: Column 1 of triangle A121416.

The programs for A121417, there is no canonical definition to state claims against.
-/

/-! ## A121417.P3498994831915790024

`record[A121416(comp[∑[n]])]`
-/

namespace A121417.P3498994831915790024
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121416 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121417.P3498994831915790024

/-! ## A121417.P887564575057482376

`record[A136737(comp[∑[n]])]`
-/

namespace A121417.P887564575057482376
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121417.P887564575057482376

/-! ## A121417.P2268444468779627235

`A121416(∑[n+1]+1)`
-/

namespace A121417.P2268444468779627235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121417.P2268444468779627235

/-! ## A121417.P2417694398618501571

`A136737(∑[n+1]+1)`
-/

namespace A121417.P2417694398618501571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121417.P2417694398618501571

/-! ## A121417.P14401149826827132311

`A121426(∑[n+2]-1)`
-/

namespace A121417.P14401149826827132311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121426 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A121417.P14401149826827132311

/-!
# A121418: Column 0 of triangle A121416.

The programs for A121418, there is no canonical definition to state claims against.
-/

/-! ## A121418.P7991435439210494830

`A121416(∑[n])`
-/

namespace A121418.P7991435439210494830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121416 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121418.P7991435439210494830

/-! ## A121418.P14960797559993480521

`record[A121416(n)]`
-/

namespace A121418.P14960797559993480521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121418.P14960797559993480521

/-! ## A121418.P5733953572456075350

`and(-1, A121416(A000217(n)))`
-/

namespace A121418.P5733953572456075350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A121416 (A000217 n).toNat)

end

end A121418.P5733953572456075350

/-! ## A121418.P6293236139205902569

`A121416(C(n+1, 2))%A030629(n+1)`
-/

namespace A121418.P6293236139205902569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121416 (Nat.choose (n + 1) 2)) (A030629 (n + 1))

end

end A121418.P6293236139205902569

/-! ## A121418.P1348988305747215489

`A121416(n-Δ[-C(n, 3)])+A000007(n+1)`
-/

namespace A121418.P1348988305747215489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121416 ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat + A000007 (n + 1)

end

end A121418.P1348988305747215489

/-!
# A121419: Column 2 of triangle A121416.

The programs for A121419, there is no canonical definition to state claims against.
-/

/-! ## A121419.P584601471833656922

`A121428(∑[n+2]-1)`
-/

namespace A121419.P584601471833656922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A121419.P584601471833656922

/-! ## A121419.P5511680027216749067

`A121416(∑[n+2]+3)`
-/

namespace A121419.P5511680027216749067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121416 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121419.P5511680027216749067

/-! ## A121419.P17207422960412386220

`record[A121428(A131819(n+1))]`
-/

namespace A121419.P17207422960412386220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (A131819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121419.P17207422960412386220

/-! ## A121419.P1909739933424463891

`record[A121428(A347633(n+1))]`
-/

namespace A121419.P1909739933424463891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121419.P1909739933424463891

/-!
# A121421: Column 0 of triangle A121420.

The programs for A121421, there is no canonical definition to state claims against.
-/

/-! ## A121421.P2260527577924758532

`A121420(∑[n])`
-/

namespace A121421.P2260527577924758532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121421.P2260527577924758532

/-! ## A121421.P14446376349823460353

`record[A121420(n)]`
-/

namespace A121421.P14446376349823460353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121421.P14446376349823460353

/-! ## A121421.P7623454328940543180

`and(-1, A121420(A000217(n)))`
-/

namespace A121421.P7623454328940543180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A121420 (A000217 n).toNat)

end

end A121421.P7623454328940543180

/-! ## A121421.P5956999003082476348

`or(A000007(n), A121420(n²-C(n, 2)))`
-/

namespace A121421.P5956999003082476348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A121420 (n ^ 2 - Nat.choose n 2))

end

end A121421.P5956999003082476348

/-! ## A121421.P9419935186379501692

`or(A121420(n²-C(n, 2)), A123565(n+1))`
-/

namespace A121421.P9419935186379501692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121420 (n ^ 2 - Nat.choose n 2)) (A123565 (n + 1))

end

end A121421.P9419935186379501692

/-!
# A121422: Column 1 of triangle A121420.

The programs for A121422, there is no canonical definition to state claims against.
-/

/-! ## A121422.P11648914369049546078

`record[A121420(comp[∑[n]])]`
-/

namespace A121422.P11648914369049546078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121420 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121422.P11648914369049546078

/-! ## A121422.P1949744889308949138

`A121420(∑[n+1]+1)`
-/

namespace A121422.P1949744889308949138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121420 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121422.P1949744889308949138

/-! ## A121422.P4835192472127326457

`record[A051168(n)*A121420(n)]`
-/

namespace A121422.P4835192472127326457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A121420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121422.P4835192472127326457

/-! ## A121422.P14996133808673364348

`record[A068914(n)*A121420(n)]`
-/

namespace A121422.P14996133808673364348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 n * A121420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121422.P14996133808673364348

/-! ## A121422.P16099721334888487343

`record[A072233(n)*A121420(n)]`
-/

namespace A121422.P16099721334888487343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A121420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121422.P16099721334888487343

/-!
# A121423: Column 2 of triangle A121420.

The programs for A121423, there is no canonical definition to state claims against.
-/

/-! ## A121423.P16309551246730791506

`A121428(∑[n+3])`
-/

namespace A121423.P16309551246730791506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121423.P16309551246730791506

/-! ## A121423.P2224976260866021154

`A121420(∑[n+2]+3)`
-/

namespace A121423.P2224976260866021154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121420 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121423.P2224976260866021154

/-! ## A121423.P12937564203896492703

`record[A121428(A131819(n+1)-1)]`
-/

namespace A121423.P12937564203896492703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (A131819 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121423.P12937564203896492703

/-! ## A121423.P9914620801090466674

`record[A121428(A347633(n+1)-1)]`
-/

namespace A121423.P9914620801090466674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121428 (A347633 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121423.P9914620801090466674

/-!
# A121424: Rectangular table, read by antidiagonals, where row n is equal to column 0 of matrix power A121412^(n+1) for n>=0.

The programs for A121424, there is no canonical definition to state claims against.
-/

/-! ## A121424.P10600688736247078416

`A136733(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A121424.P10600688736247078416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136733 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A121424.P10600688736247078416

/-! ## A121424.P7850443989467357803

`A136733(A061579(n%A008956(n)))`
-/

namespace A121424.P7850443989467357803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136733 (A061579 (Int.tmod (n : ℤ) (A008956 n)).toNat).toNat

end

end A121424.P7850443989467357803

/-! ## A121424.P15976221680040859634

`A136733(A061579(gcd(n, A010816(n))))`
-/

namespace A121424.P15976221680040859634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136733 (A061579 (Int.gcd (n : ℤ) (A010816 n))).toNat

end

end A121424.P15976221680040859634

/-! ## A121424.P3191119553247841451

`A136733(gcd(A061579(n), A198954(n)))`
-/

namespace A121424.P3191119553247841451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136733 (Int.gcd (A061579 n) (A198954 n))

end

end A121424.P3191119553247841451

/-! ## A121424.P14532033461142603411

`A136733(A061579(n)*A114607(n+1))`
-/

namespace A121424.P14532033461142603411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136733 (A061579 n * A114607 (n + 1)).toNat

end

end A121424.P14532033461142603411

/-!
# A121425: Main diagonal of rectangular table A121424.

The programs for A121425, there is no canonical definition to state claims against.
-/

/-! ## A121425.P8808278087178721306

`abs(A132692(n+1))`
-/

namespace A121425.P8808278087178721306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132692 (n + 1)|

end

end A121425.P8808278087178721306

/-! ## A121425.P14369415680489378897

`∏[abs(ratio[A132692(n)])]`
-/

namespace A121425.P14369415680489378897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132692 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121425.P14369415680489378897

/-! ## A121425.P3978691105272042926

`record[abs(A132692(A008616(n)))]`
-/

namespace A121425.P3978691105272042926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132692 (A008616 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121425.P3978691105272042926

/-! ## A121425.P13242003311475285199

`record[abs(A132692(A025581(n)))]`
-/

namespace A121425.P13242003311475285199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132692 (A025581 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121425.P13242003311475285199

/-! ## A121425.P16426887681800260107

`record[abs(A132692(A051274(n)))]`
-/

namespace A121425.P16426887681800260107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132692 (A051274 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121425.P16426887681800260107

/-!
# A121426: Rectangular table, read by antidiagonals, where row n is equal to column 1 of matrix power A121412^(n+1) for n>=0.

The programs for A121426, there is no canonical definition to state claims against.
-/

/-! ## A121426.P13146955049739356539

`A136737(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A121426.P13146955049739356539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A121426.P13146955049739356539

/-! ## A121426.P13604207253376263528

`A136737(A061579(n%A008956(n)))`
-/

namespace A121426.P13604207253376263528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 (A061579 (Int.tmod (n : ℤ) (A008956 n)).toNat).toNat

end

end A121426.P13604207253376263528

/-! ## A121426.P13901273939574989346

`A136737(A061579(gcd(n, A010816(n))))`
-/

namespace A121426.P13901273939574989346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 (A061579 (Int.gcd (n : ℤ) (A010816 n))).toNat

end

end A121426.P13901273939574989346

/-! ## A121426.P8607647323477166189

`A136737(gcd(A061579(n), A198954(n)))`
-/

namespace A121426.P8607647323477166189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 (Int.gcd (A061579 n) (A198954 n))

end

end A121426.P8607647323477166189

/-! ## A121426.P1205484869076056208

`A136737(A061579(n)*A114607(n+1))`
-/

namespace A121426.P1205484869076056208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 (A061579 n * A114607 (n + 1)).toNat

end

end A121426.P1205484869076056208

/-!
# A121427: Main diagonal of rectangular table A121426.

The programs for A121427, there is no canonical definition to state claims against.
-/

/-! ## A121427.P9750677788280251421

`A121431(∑[n+2]-2)`
-/

namespace A121427.P9750677788280251421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121431 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A121427.P9750677788280251421

/-! ## A121427.P18388976101573532262

`record[A121431(n)/A121435(n+2)]`
-/

namespace A121427.P18388976101573532262
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121431 n : ℚ) / (A121435 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121427.P18388976101573532262

/-! ## A121427.P6532054179909252972

`record[A121431(n)/A121436(n+2)]`
-/

namespace A121427.P6532054179909252972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121431 n : ℚ) / (A121436 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121427.P6532054179909252972

/-!
# A121428: Rectangular table, read by antidiagonals, where row n is equal to column 2 of matrix power A121412^(n+1) for n>=0.

The programs for A121428, there is no canonical definition to state claims against.
-/

/-! ## A121428.P16997936324681434636

`A317145(A071258(n)+1)`
-/

namespace A121428.P16997936324681434636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (A071258 n + 1).toNat

end

end A121428.P16997936324681434636

/-! ## A121428.P13633951852192376463

`A135130(A076934(∏[∑[char[3*n]]]))`
-/

namespace A121428.P13633951852192376463
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135130 (A076934 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A121428.P13633951852192376463

/-! ## A121428.P8850634538291682087

`A207375(A156559(3*n+2))%A278226(2*(n+2))`
-/

namespace A121428.P8850634538291682087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207375 (A156559 (3 * n + 2)).toNat) (A278226 (2 * (n + 2)))

end

end A121428.P8850634538291682087

/-!
# A121429: Main diagonal of rectangular table A121428.

The programs for A121429, there is no canonical definition to state claims against.
-/

/-! ## A121429.P8933027298080931283

`A121432(∑[n+3]-3)`
-/

namespace A121429.P8933027298080931283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121432 (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A121429.P8933027298080931283

/-! ## A121429.P14909684929274607804

`record[A121432(A055999(∑{e}[n+1, #]))]`
-/

namespace A121429.P14909684929274607804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121432 (A055999 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121429.P14909684929274607804

/-! ## A121429.P7786365727946923159

`lcm(1-and(2, n), A121432(A055999(n)))`
-/

namespace A121429.P7786365727946923159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A121432 (A055999 n).toNat)

end

end A121429.P7786365727946923159

/-!
# A121430: Number of subpartitions of partition P=[0,1,1,2,2,2,3,3,3,3,4,...] (A003056).

The programs for A121430, there is no canonical definition to state claims against.
-/

/-! ## A121430.P7701794677598814394

`A136733(A245300(n))`
-/

namespace A121430.P7701794677598814394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136733 (A245300 n).toNat

end

end A121430.P7701794677598814394

/-! ## A121430.P12307164041585115191

`A121424(A245300(n)+A025581(n))`
-/

namespace A121430.P12307164041585115191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 (A245300 n + A025581 n).toNat

end

end A121430.P12307164041585115191

/-! ## A121430.P18433986616960790923

`A322832(A148665(n)+1)`
-/

namespace A121430.P18433986616960790923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 (A148665 n + 1).toNat

end

end A121430.P18433986616960790923

/-! ## A121430.P12414284812408015317

`A000196(A122479(n)*A293353(n))`
-/

namespace A121430.P12414284812408015317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A122479 n * A293353 n).toNat

end

end A121430.P12414284812408015317

/-! ## A121430.P3656674970233921154

`A347457(A381717(2*n+3)+A351846(n+1))`
-/

namespace A121430.P3656674970233921154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347457 (A381717 (2 * n + 3) + A351846 (n + 1)).toNat

end

end A121430.P3656674970233921154

/-!
# A121431: Number of subpartitions of partition P=[0,0,1,1,1,2,2,2,2,3,3,3,3,3,4,...] (A052146).

The programs for A121431, there is no canonical definition to state claims against.
-/

/-! ## A121431.P12134554266581224991

`A136737(A245300(n)+1)`
-/

namespace A121431.P12134554266581224991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136737 (A245300 n + 1).toNat

end

end A121431.P12134554266581224991

/-!
# A121432: Number of subpartitions of partition P=[0,0,0,1,1,1,1,2,2,2,2,2,3,...], where P(n) = [(sqrt(8*n+25) - 5)/2].

The programs for A121432, there is no canonical definition to state claims against.
-/

/-! ## A121432.P1055316913139980939

`A238690(∏[∑[char[4*n]]])`
-/

namespace A121432.P1055316913139980939
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A121432.P1055316913139980939

/-! ## A121432.P9637038994164276691

`A332809(∏[A008621(n)])`
-/

namespace A121432.P9637038994164276691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121432.P9637038994164276691

/-! ## A121432.P15375761155549201756

`A332809(A264635(n+1))`
-/

namespace A121432.P15375761155549201756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (A264635 (n + 1)).toNat

end

end A121432.P15375761155549201756

/-! ## A121432.P5975067408187368116

`A332809(∏[A226762(n+1)])`
-/

namespace A121432.P5975067408187368116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332809 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121432.P5975067408187368116

/-! ## A121432.P6683219396975250463

`∑[∑[A325817(A210478(n))]]+1`
-/

namespace A121432.P6683219396975250463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (A210478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121432.P6683219396975250463

/-!
# A121433: Number of subpartitions of partition P=[0,0,0,0,1,1,1,1,1,2,2,2,2,2,2,3,...], where P(n) = [(sqrt(8*n+49) - 7)/2].

The programs for A121433, there is no canonical definition to state claims against.
-/

/-! ## A121433.P16572156155814189765

`A085736(A386379(n+1))`
-/

namespace A121433.P16572156155814189765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A386379 (n + 1)).toNat

end

end A121433.P16572156155814189765

/-! ## A121433.P6201139365712049120

`A238690(A264656(n+1))`
-/

namespace A121433.P6201139365712049120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A264656 (n + 1)).toNat

end

end A121433.P6201139365712049120

/-! ## A121433.P10067007008617128561

`A295020(A276529(n+1))`
-/

namespace A121433.P10067007008617128561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (A276529 (n + 1)).toNat

end

end A121433.P10067007008617128561

/-! ## A121433.P5502077015294269940

`A386379(A187829(n+1))`
-/

namespace A121433.P5502077015294269940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (A187829 (n + 1)).toNat

end

end A121433.P5502077015294269940

/-! ## A121433.P15574661282615667696

`A238690(∏[A008616(2*n)])`
-/

namespace A121433.P15574661282615667696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121433.P15574661282615667696

/-!
# A121434: Matrix inverse of triangle A098568, where A098568(n, k) = C( (k+1)*(k+2)/2 + n-k-1, n-k) for n>=k>=0.

The programs for A121434, there is no canonical definition to state claims against.
-/

/-! ## A121434.P10979830839213999156

`∑[-A121435(abs(1-n))]`
-/

namespace A121434.P10979830839213999156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A121435 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121434.P10979830839213999156

/-! ## A121434.P8642694758810378502

`a(n-1)-A121435(n-1)` with `a(0)=1`
-/

namespace A121434.P8642694758810378502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A121435 (n - 1)

end

end A121434.P8642694758810378502

/-! ## A121434.P13424081624171022561

`∑[C(n+1, 69)²-A121435(abs(n-1))]`
-/

namespace A121434.P13424081624171022561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 69 ^ 2 : ℤ) - A121435 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121434.P13424081624171022561

/-! ## A121434.P11936375517589976938

`A121435(n)+1-∑[A121435(n)]`
-/

namespace A121434.P11936375517589976938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121435 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121434.P11936375517589976938

/-! ## A121434.P16985714160879869401

`∑[A000007(n)-A121435(abs(1-n))]-1`
-/

namespace A121434.P16985714160879869401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A121435 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A121434.P16985714160879869401

/-! ## A121434.P13695260244052588683

`∑[A000038(n)%2-A121435(abs(1-n))]`
-/

namespace A121434.P13695260244052588683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000038 n) 2 - A121435 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121434.P13695260244052588683

/-! ## A121434.P1341686256020999702

`A121435(n)-∑[A121435(n)-A000007(n)]`
-/

namespace A121434.P1341686256020999702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121435 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121435 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121434.P1341686256020999702

/-!
# A121435: Matrix inverse of triangle A122175, where A122175(n,k) = C( k*(k+1)/2 + n-k, n-k) for n>=k>=0.

The programs for A121435, there is no canonical definition to state claims against.
-/

/-! ## A121435.P17875496759299658808

`Δ[-A121434(n)]`
-/

namespace A121435.P17875496759299658808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A121434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121435.P17875496759299658808

/-! ## A121435.P2130573594754443995

`A121434(n)-A121434(n+1)`
-/

namespace A121435.P2130573594754443995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121434 n - A121434 (n + 1)

end

end A121435.P2130573594754443995

/-! ## A121435.P16812257327878581308

`Δ[A002262(∑[n])-A121434(n)]`
-/

namespace A121435.P16812257327878581308
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f2 j) - A121434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121435.P16812257327878581308

/-! ## A121435.P13857731475117890711

`Δ[(A025466(n)-1)*A121434(n)]`
-/

namespace A121435.P13857731475117890711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025466 n - 1) * A121434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121435.P13857731475117890711

/-! ## A121435.P10110368235784952962

`Δ[A007318(C(2, n))-A121434(n)]`
-/

namespace A121435.P10110368235784952962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) - A121434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121435.P10110368235784952962

/-!
# A121442: Expansion of (1-x^2)/(1-x-9*x^2+x^3).

The programs for A121442, the canonical program `A121442.P18146965430632568024` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121442 has offset 0).

The definition of A121442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-9x^2+x^3))` (program `A121442.P18146965430632568024`, by `A121442.P18146965430632568024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121442.P18146965430632568024

`ogf((1-x^2)/(1-x-9x^2+x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121442

/-- `ogf((1-x^2)/(1-x-9x^2+x^3))` -/
def P18146965430632568024.Spec : Prop :=
  ∀ n, P18146965430632568024.a n = A121442 n

theorem P18146965430632568024.correct : P18146965430632568024.Spec := by
  intro n
  simp only [A121442]

end A121442

/-! ## A121442.P10744789279569761598

`9*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A121442.P10744789279569761598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  9 * a (n - 2) + (a (n - 1) - a (n - 3))

end

end A121442.P10744789279569761598

namespace A121442

/-- `9*a(n-2)+a(n-1)-a(n-3)` -/
def P10744789279569761598.Spec : Prop :=
  ∀ n, P10744789279569761598.a n = A121442 n

end A121442

/-! ## A121442.P10172069889145179605

`∑[2*A271945(n)]+1`
-/

namespace A121442.P10172069889145179605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A271945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121442.P10172069889145179605

namespace A121442

/-- `∑[2*A271945(n)]+1` -/
def P10172069889145179605.Spec : Prop :=
  ∀ n, P10172069889145179605.a n = A121442 n

end A121442

/-! ## A121442.P12688797991245786746

`∑[or(2*A271945(n), A000007(n))]`
-/

namespace A121442.P12688797991245786746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A271945 n) (A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121442.P12688797991245786746

namespace A121442

/-- `∑[or(2*A271945(n), A000007(n))]` -/
def P12688797991245786746.Spec : Prop :=
  ∀ n, P12688797991245786746.a n = A121442 n

end A121442

/-! ## A121442.P5055897233198691510

`Δ[A271944(n)/2]`
-/

namespace A121442.P5055897233198691510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271944 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121442.P5055897233198691510

namespace A121442

/-- `Δ[A271944(n)/2]` -/
def P5055897233198691510.Spec : Prop :=
  ∀ n, P5055897233198691510.a n = (A121442 n : ℚ)

end A121442

/-! ## A121442.P16349778554123293766

`Δ[(A271945(n+1)+A271945(n))/4]`
-/

namespace A121442.P16349778554123293766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271945 (n + 1) + A271945 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121442.P16349778554123293766

namespace A121442

/-- `Δ[(A271945(n+1)+A271945(n))/4]` -/
def P16349778554123293766.Spec : Prop :=
  ∀ n, P16349778554123293766.a n = (A121442 n : ℚ)

end A121442

/-!
# A121443: Sum of divisors d of n which are odd and n/d is not divisible by 3.

The programs for A121443, the canonical program `A121443.P2966999353151604800` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121443 has offset 1).

The definition of A121443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121443.P4263516209903142368

`abs(A226132(n+1))`
-/

namespace A121443.P4263516209903142368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226132 (n + 1)|

end

end A121443.P4263516209903142368

namespace A121443

/-- `abs(A226132(n+1))` -/
def P4263516209903142368.Spec : Prop :=
  ∀ n, P4263516209903142368.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P8921011035017818901

`A124449((n+1)/2^val(n+1, 2))`
-/

namespace A121443.P8921011035017818901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124449 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A121443.P8921011035017818901

namespace A121443

/-- `A124449((n+1)/2^val(n+1, 2))` -/
def P8921011035017818901.Spec : Prop :=
  ∀ n, P8921011035017818901.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P13529733723823016687

`A185717(A025480(n))`
-/

namespace A121443.P13529733723823016687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185717 (A025480 n).toNat

end

end A121443.P13529733723823016687

namespace A121443

/-- `A185717(A025480(n))` -/
def P13529733723823016687.Spec : Prop :=
  ∀ n, P13529733723823016687.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P16402058453660492551

`A078708(A000265(n+1))`
-/

namespace A121443.P16402058453660492551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (A000265 (n + 1)).toNat

end

end A121443.P16402058453660492551

namespace A121443

/-- `A078708(A000265(n+1))` -/
def P16402058453660492551.Spec : Prop :=
  ∀ n, P16402058453660492551.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P12135730915350748587

`A078708(2*A025480(n)+1)`
-/

namespace A121443.P12135730915350748587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (2 * A025480 n + 1).toNat

end

end A121443.P12135730915350748587

namespace A121443

/-- `A078708(2*A025480(n)+1)` -/
def P12135730915350748587.Spec : Prop :=
  ∀ n, P12135730915350748587.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P6512206432563523549

`A078708(xor(1, 2*A025480(n)))`
-/

namespace A121443.P6512206432563523549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (Int.xor 1 (2 * A025480 n)).toNat

end

end A121443.P6512206432563523549

namespace A121443

/-- `A078708(xor(1, 2*A025480(n)))` -/
def P6512206432563523549.Spec : Prop :=
  ∀ n, P6512206432563523549.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P2084092628856304220

`A033999(n)*A226132(n+1)`
-/

namespace A121443.P2084092628856304220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A226132 (n + 1)

end

end A121443.P2084092628856304220

namespace A121443

/-- `A033999(n)*A226132(n+1)` -/
def P2084092628856304220.Spec : Prop :=
  ∀ n, P2084092628856304220.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P12118748191611522220

`A214361(n+1)/A010684(n)`
-/

namespace A121443.P12118748191611522220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214361 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A121443.P12118748191611522220

namespace A121443

/-- `A214361(n+1)/A010684(n)` -/
def P12118748191611522220.Spec : Prop :=
  ∀ n, P12118748191611522220.a n = (A121443 (n + 1) : ℚ)

end A121443

/-! ## A121443.P12552874843960974234

`gcd(A000038(n), A226132(n+1))`
-/

namespace A121443.P12552874843960974234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A226132 (n + 1))

end

end A121443.P12552874843960974234

namespace A121443

/-- `gcd(A000038(n), A226132(n+1))` -/
def P12552874843960974234.Spec : Prop :=
  ∀ n, (P12552874843960974234.a n : ℤ) = A121443 (n + 1)

end A121443

/-! ## A121443.P12926177033562689704

`lcm(A020985(n), A226132(n+1))`
-/

namespace A121443.P12926177033562689704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A226132 (n + 1))

end

end A121443.P12926177033562689704

namespace A121443

/-- `lcm(A020985(n), A226132(n+1))` -/
def P12926177033562689704.Spec : Prop :=
  ∀ n, (P12926177033562689704.a n : ℤ) = A121443 (n + 1)

end A121443

/-! ## A121443.P10400878302914809583

`A364012(n+1)-A364015(n+1)`
-/

namespace A121443.P10400878302914809583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364012 (n + 1) - A364015 (n + 1)

end

end A121443.P10400878302914809583

namespace A121443

/-- `A364012(n+1)-A364015(n+1)` -/
def P10400878302914809583.Spec : Prop :=
  ∀ n, P10400878302914809583.a n = A121443 (n + 1)

theorem P10400878302914809583.correct : P10400878302914809583.Spec := by
  intro n
  simp only [A121443, Nat.add_sub_cancel, A121443.P10400878302914809583.a, A121443.P2966999353151604800.a, A038500, A038500.P18314557775098268376.a, A186099, A186099.P16380765776800973491.a, A364012, A364012.P10594367509355664606.a, A364015, A364015.P9253596090287980520.a, A078708, A078708.P10580976102168084767.a, A284098, A284098.P14941002019999752586.f1, A284098.P14941002019999752586.a, A284104, A284104.P13760200148477607299.a, A326399, A326399.P10632042506971658356.f1, A326399.P10632042506971658356.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A078182, A078182.P257615860530487597.a, A079978, A079978.P10382542118278163374.a, A079979, A079979.P15116196827675478457.a, A046913, A046913.P8155784351199006177.a, A078181, A078181.P9139865131225983786.f1, A078181.P9139865131225983786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121443

/-! ## A121443.P2966999353151604800

`A038500(n+1)*A186099(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A121443

/-- `A038500(n+1)*A186099(n+1)` -/
def P2966999353151604800.Spec : Prop :=
  ∀ n, P2966999353151604800.a n = A121443 (n + 1)

theorem P2966999353151604800.correct : P2966999353151604800.Spec := by
  intro n
  simp only [A121443, Nat.add_sub_cancel]

end A121443

/-! ## A121443.P7456910418960094143

`A078708((n+1)/A006519(n+1))`
-/

namespace A121443.P7456910418960094143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A121443.P7456910418960094143

namespace A121443

/-- `A078708((n+1)/A006519(n+1))` -/
def P7456910418960094143.Spec : Prop :=
  ∀ n, P7456910418960094143.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P1616586917941631646

`A078708(n+1)/A038712(n+1)`
-/

namespace A121443.P1616586917941631646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078708 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A121443.P1616586917941631646

namespace A121443

/-- `A078708(n+1)/A038712(n+1)` -/
def P1616586917941631646.Spec : Prop :=
  ∀ n, P1616586917941631646.a n = (A121443 (n + 1) : ℚ)

end A121443

/-! ## A121443.P276109392105218717

`(1-A010673(n))*A226132(n+1)`
-/

namespace A121443.P276109392105218717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A226132 (n + 1)

end

end A121443.P276109392105218717

namespace A121443

/-- `(1-A010673(n))*A226132(n+1)` -/
def P276109392105218717.Spec : Prop :=
  ∀ n, P276109392105218717.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P8031217722547462117

`A385138(n+1)/A006519(n+1)`
-/

namespace A121443.P8031217722547462117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385138 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A121443.P8031217722547462117

namespace A121443

/-- `A385138(n+1)/A006519(n+1)` -/
def P8031217722547462117.Spec : Prop :=
  ∀ n, P8031217722547462117.a n = (A121443 (n + 1) : ℚ)

end A121443

/-! ## A121443.P12435661646135724711

`A326125(n+1)/A327625(n+1)`
-/

namespace A121443.P12435661646135724711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) : ℚ) / (A327625 (n + 1) : ℚ)

end

end A121443.P12435661646135724711

namespace A121443

/-- `A326125(n+1)/A327625(n+1)` -/
def P12435661646135724711.Spec : Prop :=
  ∀ n, P12435661646135724711.a n = (A121443 (n + 1) : ℚ)

end A121443

/-! ## A121443.P17140969537199885008

`(2-A010684(n))*A226132(n+1)`
-/

namespace A121443.P17140969537199885008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A226132 (n + 1)

end

end A121443.P17140969537199885008

namespace A121443

/-- `(2-A010684(n))*A226132(n+1)` -/
def P17140969537199885008.Spec : Prop :=
  ∀ n, P17140969537199885008.a n = A121443 (n + 1)

end A121443

/-! ## A121443.P7379614256771981739

`A214361(n+1)/(2-A033999(n))`
-/

namespace A121443.P7379614256771981739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214361 (n + 1) : ℚ) / (2 - A033999 n : ℚ)

end

end A121443.P7379614256771981739

namespace A121443

/-- `A214361(n+1)/(2-A033999(n))` -/
def P7379614256771981739.Spec : Prop :=
  ∀ n, P7379614256771981739.a n = (A121443 (n + 1) : ℚ)

end A121443

/-! ## A121443.P17605441695530886660

`gcd(A124449(n+1), A228274(n+1))`
-/

namespace A121443.P17605441695530886660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124449 (n + 1)) (A228274 (n + 1))

end

end A121443.P17605441695530886660

namespace A121443

/-- `gcd(A124449(n+1), A228274(n+1))` -/
def P17605441695530886660.Spec : Prop :=
  ∀ n, (P17605441695530886660.a n : ℤ) = A121443 (n + 1)

end A121443

/-!
# A121444: Expansion of f(x^3, x^9) * f(x, x^2) in powers of x where f(, ) is Ramanujan's general theta functions.

The programs for A121444, the canonical program `A121444.P10718778416213000801` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121444 has offset 0).

The definition of A121444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052343, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121444.P18229225087904697108

`(-1)^n*A258832(n)`
-/

namespace A121444.P18229225087904697108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A258832 n

end

end A121444.P18229225087904697108

namespace A121444

/-- `(-1)^n*A258832(n)` -/
def P18229225087904697108.Spec : Prop :=
  ∀ n, P18229225087904697108.a n = A121444 n

end A121444

/-! ## A121444.P10718778416213000801

`A052343(3*n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A121444

/-- `A052343(3*n+1)` -/
def P10718778416213000801.Spec : Prop :=
  ∀ n, P10718778416213000801.a n = A121444 n

theorem P10718778416213000801.correct : P10718778416213000801.Spec := by
  intro n
  simp only [A121444]

end A121444

/-! ## A121444.P2286020764909806711

`abs(A258832(n))`
-/

namespace A121444.P2286020764909806711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258832 n|

end

end A121444.P2286020764909806711

namespace A121444

/-- `abs(A258832(n))` -/
def P2286020764909806711.Spec : Prop :=
  ∀ n, P2286020764909806711.a n = A121444 n

end A121444

/-! ## A121444.P8098266486197088732

`gcd(A000038(n), A258832(n))`
-/

namespace A121444.P8098266486197088732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A258832 n)

end

end A121444.P8098266486197088732

namespace A121444

/-- `gcd(A000038(n), A258832(n))` -/
def P8098266486197088732.Spec : Prop :=
  ∀ n, (P8098266486197088732.a n : ℤ) = A121444 n

end A121444

/-! ## A121444.P12466136275659400697

`lcm(A020985(n), A258832(n))`
-/

namespace A121444.P12466136275659400697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A258832 n)

end

end A121444.P12466136275659400697

namespace A121444

/-- `lcm(A020985(n), A258832(n))` -/
def P12466136275659400697.Spec : Prop :=
  ∀ n, (P12466136275659400697.a n : ℤ) = A121444 n

end A121444

/-! ## A121444.P3131649983643867376

`∑{d}[A258832(n), A000010(#)]`
-/

namespace A121444.P3131649983643867376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A121444.P3131649983643867376

namespace A121444

/-- `∑{d}[A258832(n), A000010(#)]` -/
def P3131649983643867376.Spec : Prop :=
  ∀ n, P3131649983643867376.a n = A121444 n

end A121444

/-! ## A121444.P17200859285850234239

`A008441(3*n+1)/2`
-/

namespace A121444.P17200859285850234239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008441 (3 * n + 1) : ℚ) / 2

end

end A121444.P17200859285850234239

namespace A121444

/-- `A008441(3*n+1)/2` -/
def P17200859285850234239.Spec : Prop :=
  ∀ n, P17200859285850234239.a n = (A121444 n : ℚ)

end A121444

/-! ## A121444.P17688309431289285112

`A004526(A008441(3*n+1))`
-/

namespace A121444.P17688309431289285112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008441 (3 * n + 1)).toNat

end

end A121444.P17688309431289285112

namespace A121444

/-- `A004526(A008441(3*n+1))` -/
def P17688309431289285112.Spec : Prop :=
  ∀ n, P17688309431289285112.a n = A121444 n

end A121444

/-! ## A121444.P9991760317964491927

`A004020(3*n+1)/4`
-/

namespace A121444.P9991760317964491927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 (3 * n + 1) : ℚ) / 4

end

end A121444.P9991760317964491927

namespace A121444

/-- `A004020(3*n+1)/4` -/
def P9991760317964491927.Spec : Prop :=
  ∀ n, P9991760317964491927.a n = (A121444 n : ℚ)

end A121444

/-! ## A121444.P10945648407794257483

`A005883(2*n+1+n)/8`
-/

namespace A121444.P10945648407794257483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 (2 * n + 1 + n) : ℚ) / 8

end

end A121444.P10945648407794257483

namespace A121444

/-- `A005883(2*n+1+n)/8` -/
def P10945648407794257483.Spec : Prop :=
  ∀ n, P10945648407794257483.a n = (A121444 n : ℚ)

end A121444

/-! ## A121444.P17164001545560772041

`A259660(4*n)`
-/

namespace A121444.P17164001545560772041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259660 (4 * n)

end

end A121444.P17164001545560772041

namespace A121444

/-- `A259660(4*n)` -/
def P17164001545560772041.Spec : Prop :=
  ∀ n, P17164001545560772041.a n = A121444 n

end A121444

/-! ## A121444.P12887470802657079606

`A122856(A017089(n)/2)/2`
-/

namespace A121444.P12887470802657079606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122856 (SequenceMachineLib.roundAway ((A017089 n : ℚ) / 2)).toNat : ℚ) / 2

end

end A121444.P12887470802657079606

namespace A121444

/-- `A122856(A017089(n)/2)/2` -/
def P12887470802657079606.Spec : Prop :=
  ∀ n, P12887470802657079606.a n = (A121444 n : ℚ)

end A121444

/-! ## A121444.P11491837920282209947

`A125079(A016921(n)+1)/2`
-/

namespace A121444.P11491837920282209947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125079 (A016921 n + 1).toNat : ℚ) / 2

end

end A121444.P11491837920282209947

namespace A121444

/-- `A125079(A016921(n)+1)/2` -/
def P11491837920282209947.Spec : Prop :=
  ∀ n, P11491837920282209947.a n = (A121444 n : ℚ)

end A121444

/-! ## A121444.P5821402867334881808

`A000161(12*n+5)`
-/

namespace A121444.P5821402867334881808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (12 * n + 5)

end

end A121444.P5821402867334881808

namespace A121444

/-- `A000161(12*n+5)` -/
def P5821402867334881808.Spec : Prop :=
  ∀ n, P5821402867334881808.a n = A121444 n

end A121444

/-! ## A121444.P9528940984875210520

`A002654(A017569(n)+1)/2`
-/

namespace A121444.P9528940984875210520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002654 (A017569 n + 1).toNat : ℚ) / 2

end

end A121444.P9528940984875210520

namespace A121444

/-- `A002654(A017569(n)+1)/2` -/
def P9528940984875210520.Spec : Prop :=
  ∀ n, P9528940984875210520.a n = (A121444 n : ℚ)

end A121444

/-! ## A121444.P17592094141347770995

`A337743(A348845(n))`
-/

namespace A121444.P17592094141347770995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337743 (A348845 n).toNat

end

end A121444.P17592094141347770995

namespace A121444

/-- `A337743(A348845(n))` -/
def P17592094141347770995.Spec : Prop :=
  ∀ n, P17592094141347770995.a n = A121444 n

end A121444

/-! ## A121444.P5313877802639990572

`A364047(A063162(n+1))`
-/

namespace A121444.P5313877802639990572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364047 (A063162 (n + 1)).toNat

end

end A121444.P5313877802639990572

namespace A121444

/-- `A364047(A063162(n+1))` -/
def P5313877802639990572.Spec : Prop :=
  ∀ n, P5313877802639990572.a n = A121444 n

end A121444

/-!
# A121446: Number of ternary trees with n edges and such that the first leaf in the preorder traversal is at level 1.

The programs for A121446, the canonical program `A121446.P4493713673701244054` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121446 has offset 1).

The definition of A121446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121446.P16617470159416155581

`A007226(A028310(n))`
-/

namespace A121446.P16617470159416155581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (A028310 n).toNat

end

end A121446.P16617470159416155581

namespace A121446

/-- `A007226(A028310(n))` -/
def P16617470159416155581.Spec : Prop :=
  ∀ n, P16617470159416155581.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P16250572120542604676

`A007226(A000007(n)+n)`
-/

namespace A121446.P16250572120542604676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (A000007 n + (n : ℤ)).toNat

end

end A121446.P16250572120542604676

namespace A121446

/-- `A007226(A000007(n)+n)` -/
def P16250572120542604676.Spec : Prop :=
  ∀ n, P16250572120542604676.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P5701003092414898847

`A007226(A004277(n)-n)`
-/

namespace A121446.P5701003092414898847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (A004277 n - (n : ℤ)).toNat

end

end A121446.P5701003092414898847

namespace A121446

/-- `A007226(A004277(n)-n)` -/
def P5701003092414898847.Spec : Prop :=
  ∀ n, P5701003092414898847.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P10008485341837407282

`A007226(gcd(n, A004277(n)))`
-/

namespace A121446.P10008485341837407282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (Int.gcd (n : ℤ) (A004277 n))

end

end A121446.P10008485341837407282

namespace A121446

/-- `A007226(gcd(n, A004277(n)))` -/
def P10008485341837407282.Spec : Prop :=
  ∀ n, P10008485341837407282.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P15748511072674152198

`A007226(or(n, A000007(n)))`
-/

namespace A121446.P15748511072674152198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (Int.lor (n : ℤ) (A000007 n)).toNat

end

end A121446.P15748511072674152198

namespace A121446

/-- `A007226(or(n, A000007(n)))` -/
def P15748511072674152198.Spec : Prop :=
  ∀ n, P15748511072674152198.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P11510756678458885127

`A007226(xor(n, A000007(n)))`
-/

namespace A121446.P11510756678458885127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A121446.P11510756678458885127

namespace A121446

/-- `A007226(xor(n, A000007(n)))` -/
def P11510756678458885127.Spec : Prop :=
  ∀ n, P11510756678458885127.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P10012374670388338607

`A007226(A097331(2*n)+n)`
-/

namespace A121446.P10012374670388338607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (A097331 (2 * n) + (n : ℤ)).toNat

end

end A121446.P10012374670388338607

namespace A121446

/-- `A007226(A097331(2*n)+n)` -/
def P10012374670388338607.Spec : Prop :=
  ∀ n, P10012374670388338607.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P2974361073074558522

`floor(A007226(n)+1/A006013(n))`
-/

namespace A121446.P2974361073074558522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007226 n : ℚ) + 1 / (A006013 n : ℚ)⌋

end

end A121446.P2974361073074558522

namespace A121446

/-- `floor(A007226(n)+1/A006013(n))` -/
def P2974361073074558522.Spec : Prop :=
  ∀ n, P2974361073074558522.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P9439394556101245296

`A007226(A007318(A000124(n)))`
-/

namespace A121446.P9439394556101245296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (A007318 (A000124 n).toNat).toNat

end

end A121446.P9439394556101245296

namespace A121446

/-- `A007226(A007318(A000124(n)))` -/
def P9439394556101245296.Spec : Prop :=
  ∀ n, P9439394556101245296.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P4493713673701244054

`A006013(A028310(n))+A001764(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121446

/-- `A006013(A028310(n))+A001764(n)` -/
def P4493713673701244054.Spec : Prop :=
  ∀ n, P4493713673701244054.a n = A121446 (n + 1)

theorem P4493713673701244054.correct : P4493713673701244054.Spec := by
  intro n
  simp only [A121446, Nat.add_sub_cancel]

end A121446

/-! ## A121446.P8965628932672128823

`A007226(A036044(A003817(n))+n)`
-/

namespace A121446.P8965628932672128823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (A036044 (A003817 n).toNat + (n : ℤ)).toNat

end

end A121446.P8965628932672128823

namespace A121446

/-- `A007226(A036044(A003817(n))+n)` -/
def P8965628932672128823.Spec : Prop :=
  ∀ n, P8965628932672128823.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P12389244114887150409

`xor(A007226(n), A036044(A003817(n)))`
-/

namespace A121446.P12389244114887150409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007226 n) (A036044 (A003817 n).toNat)

end

end A121446.P12389244114887150409

namespace A121446

/-- `xor(A007226(n), A036044(A003817(n)))` -/
def P12389244114887150409.Spec : Prop :=
  ∀ n, P12389244114887150409.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P13598938055407378645

`A047749(2*n+1)+A047749(2*n)+A000007(n)`
-/

namespace A121446.P13598938055407378645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n + 1) + (A047749 (2 * n) + A000007 n)

end

end A121446.P13598938055407378645

namespace A121446

/-- `A047749(2*n+1)+A047749(2*n)+A000007(n)` -/
def P13598938055407378645.Spec : Prop :=
  ∀ n, P13598938055407378645.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P13030147563665172004

`(A116637(2*n+1)+A116637(2*n))/A036453(n+1)`
-/

namespace A121446.P13030147563665172004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116637 (2 * n + 1) + A116637 (2 * n) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A121446.P13030147563665172004

namespace A121446

/-- `(A116637(2*n+1)+A116637(2*n))/A036453(n+1)` -/
def P13030147563665172004.Spec : Prop :=
  ∀ n, P13030147563665172004.a n = (A121446 (n + 1) : ℚ)

end A121446

/-! ## A121446.P1459444381579910533

`A047749(2*n+1)+A078442(2*(n+1))+A047749(2*n)`
-/

namespace A121446.P1459444381579910533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n + 1) + (A078442 (2 * (n + 1)) + A047749 (2 * n))

end

end A121446.P1459444381579910533

namespace A121446

/-- `A047749(2*n+1)+A078442(2*(n+1))+A047749(2*n)` -/
def P1459444381579910533.Spec : Prop :=
  ∀ n, P1459444381579910533.a n = A121446 (n + 1)

end A121446

/-! ## A121446.P11964701532008274987

`floor(acot(n))+2*C(3*n, n)/(n+1)`
-/

namespace A121446.P11964701532008274987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) + 2 * ((Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ))

end

end A121446.P11964701532008274987

namespace A121446

/-- `floor(acot(n))+2*C(3*n, n)/(n+1)` -/
def P11964701532008274987.Spec : Prop :=
  ∀ n, P11964701532008274987.a n = (A121446 (n + 1) : ℚ)

end A121446

/-! ## A121446.P9721398926486007494

`A007226(A004277(n²)/A004277(n))`
-/

namespace A121446.P9721398926486007494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007226 (SequenceMachineLib.roundAway ((A004277 (n ^ 2) : ℚ) / (A004277 n : ℚ))).toNat

end

end A121446.P9721398926486007494

namespace A121446

/-- `A007226(A004277(n²)/A004277(n))` -/
def P9721398926486007494.Spec : Prop :=
  ∀ n, P9721398926486007494.a n = A121446 (n + 1)

end A121446

/-!
# A121447: Level of the first leaf (in preorder traversal) of a ternary tree, summed over all ternary trees with n edges. A ternary tree is a rooted tree in which each vertex has at most three children and each child of a vertex is designated as its left or middle or right child.

The programs for A121447, the canonical program `A121447.P1797565767739298032` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121447 has offset 1).

The definition of A121447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121447.P1797565767739298032

`Δ[A006630(n)]-record[A000139(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121447

/-- `Δ[A006630(n)]-record[A000139(n)]` -/
def P1797565767739298032.Spec : Prop :=
  ∀ n, P1797565767739298032.a n = A121447 (n + 1)

theorem P1797565767739298032.correct : P1797565767739298032.Spec := by
  intro n
  simp only [A121447, Nat.add_sub_cancel]

end A121447

/-! ## A121447.P15681783763027257216

`A006630(n+1)-A001764(n+2)`
-/

namespace A121447.P15681783763027257216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006630 (n + 1) - A001764 (n + 2)

end

end A121447.P15681783763027257216

namespace A121447

/-- `A006630(n+1)-A001764(n+2)` -/
def P15681783763027257216.Spec : Prop :=
  ∀ n, P15681783763027257216.a n = A121447 (n + 1)

end A121447

/-! ## A121447.P14955789612710808579

`Δ[A001764(n+2)]-A000139(n+3)`
-/

namespace A121447.P14955789612710808579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000139 (n + 3)

end

end A121447.P14955789612710808579

namespace A121447

/-- `Δ[A001764(n+2)]-A000139(n+3)` -/
def P14955789612710808579.Spec : Prop :=
  ∀ n, P14955789612710808579.a n = A121447 (n + 1)

end A121447

/-! ## A121447.P16654370919533382413

`A006630(n+1)+A006630(n)-A006629(n+1)`
-/

namespace A121447.P16654370919533382413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006630 (n + 1) + (A006630 n - A006629 (n + 1))

end

end A121447.P16654370919533382413

namespace A121447

/-- `A006630(n+1)+A006630(n)-A006629(n+1)` -/
def P16654370919533382413.Spec : Prop :=
  ∀ n, P16654370919533382413.a n = A121447 (n + 1)

end A121447

/-!
# A121448: Triangle read by rows: T(n,k) is the number of binary trees with n edges and having k vertices of outdegree 1 (n>=0, k>=0). A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

The programs for A121448, the canonical program `A121448.P24632900459623264` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121448 has offset 0).

The definition of A121448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121448.P5666673026106907227

`2^(n-C(∑[char[∑[n]]], 2))*A097610(n)`
-/

namespace A121448.P5666673026106907227
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A097610 n : ℚ)

end

end A121448.P5666673026106907227

namespace A121448

/-- `2^(n-C(∑[char[∑[n]]], 2))*A097610(n)` -/
def P5666673026106907227.Spec : Prop :=
  ∀ n, P5666673026106907227.a n = (A121448 n : ℚ)

end A121448

/-! ## A121448.P24632900459623264

`A059268(n)*A097610(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A121448

/-- `A059268(n)*A097610(n)` -/
def P24632900459623264.Spec : Prop :=
  ∀ n, P24632900459623264.a n = A121448 n

theorem P24632900459623264.correct : P24632900459623264.Spec := by
  intro n
  simp only [A121448]

end A121448

/-! ## A121448.P7725537069029127042

`A097610(n)*A130125(n)`
-/

namespace A121448.P7725537069029127042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 n * A130125 n

end

end A121448.P7725537069029127042

namespace A121448

/-- `A097610(n)*A130125(n)` -/
def P7725537069029127042.Spec : Prop :=
  ∀ n, P7725537069029127042.a n = A121448 n

end A121448

/-! ## A121448.P15928848624433378246

`A000079(A002262(n))*A097610(n)`
-/

namespace A121448.P15928848624433378246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A097610 n

end

end A121448.P15928848624433378246

namespace A121448

/-- `A000079(A002262(n))*A097610(n)` -/
def P15928848624433378246.Spec : Prop :=
  ∀ n, P15928848624433378246.a n = A121448 n

end A121448

/-! ## A121448.P9882674311815022406

`A013609(n)*A126120(A025581(n))`
-/

namespace A121448.P9882674311815022406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A126120 (A025581 n).toNat

end

end A121448.P9882674311815022406

namespace A121448

/-- `A013609(n)*A126120(A025581(n))` -/
def P9882674311815022406.Spec : Prop :=
  ∀ n, P9882674311815022406.a n = A121448 n

end A121448

/-! ## A121448.P5043197690272501704

`A011782(A002260(n+1))*A097610(n)`
-/

namespace A121448.P5043197690272501704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A097610 n

end

end A121448.P5043197690272501704

namespace A121448

/-- `A011782(A002260(n+1))*A097610(n)` -/
def P5043197690272501704.Spec : Prop :=
  ∀ n, P5043197690272501704.a n = A121448 n

end A121448

/-! ## A121448.P7192216142206090992

`A048679(A193588(n))*A097610(n)`
-/

namespace A121448.P7192216142206090992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A193588 n).toNat * A097610 n

end

end A121448.P7192216142206090992

namespace A121448

/-- `A048679(A193588(n))*A097610(n)` -/
def P7192216142206090992.Spec : Prop :=
  ∀ n, P7192216142206090992.a n = A121448 n

end A121448

/-! ## A121448.P4232422176998014159

`A059268(n)*A124027(n+4)`
-/

namespace A121448.P4232422176998014159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A124027 (n + 4)

end

end A121448.P4232422176998014159

namespace A121448

/-- `A059268(n)*A124027(n+4)` -/
def P4232422176998014159.Spec : Prop :=
  ∀ n, P4232422176998014159.a n = A121448 n

end A121448

/-! ## A121448.P3536518836324735530

`A003958(A036561(n))*A097610(n)`
-/

namespace A121448.P3536518836324735530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A036561 n).toNat * A097610 n

end

end A121448.P3536518836324735530

namespace A121448

/-- `A003958(A036561(n))*A097610(n)` -/
def P3536518836324735530.Spec : Prop :=
  ∀ n, P3536518836324735530.a n = A121448 n

end A121448

/-! ## A121448.P5658063095949161489

`lcm(A097610(n), A274883(n))`
-/

namespace A121448.P5658063095949161489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097610 n) (A274883 n)

end

end A121448.P5658063095949161489

namespace A121448

/-- `lcm(A097610(n), A274883(n))` -/
def P5658063095949161489.Spec : Prop :=
  ∀ n, (P5658063095949161489.a n : ℤ) = A121448 n

end A121448

/-!
# A121449: Expansion of (1 - 3*x + 2*x^2)/(1 - 4*x + 3*x^2 + x^3).

The programs for A121449, the canonical program `A121449.P10646946649836971927` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121449 has offset 0).

The definition of A121449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+2x^2)/(1-4x+3x^2+x^3))` (program `A121449.P10646946649836971927`, by `A121449.P10646946649836971927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121449.P10646946649836971927

`ogf((1-3x+2x^2)/(1-4x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121449

/-- `ogf((1-3x+2x^2)/(1-4x+3x^2+x^3))` -/
def P10646946649836971927.Spec : Prop :=
  ∀ n, P10646946649836971927.a n = A121449 n

theorem P10646946649836971927.correct : P10646946649836971927.Spec := by
  intro n
  simp only [A121449]

end A121449

/-! ## A121449.P573699382933581888

`4*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A121449.P573699382933581888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - a (n - 3)

end

end A121449.P573699382933581888

namespace A121449

/-- `4*a(n-1)-3*a(n-2)-a(n-3)` -/
def P573699382933581888.Spec : Prop :=
  ∀ n, P573699382933581888.a n = A121449 n

end A121449

/-! ## A121449.P14360627215366110404

`Δ[A116423(n+1)-A215404(n)]`
-/

namespace A121449.P14360627215366110404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 1) - A215404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121449.P14360627215366110404

namespace A121449

/-- `Δ[A116423(n+1)-A215404(n)]` -/
def P14360627215366110404.Spec : Prop :=
  ∀ n, P14360627215366110404.a n = A121449 n

end A121449

/-! ## A121449.P12515913137093956930

`A136776(n+1)-Δ[A215404(n)]`
-/

namespace A121449.P12515913137093956930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 1) - (f1 (n + 1) - f1 n)

end

end A121449.P12515913137093956930

namespace A121449

/-- `A136776(n+1)-Δ[A215404(n)]` -/
def P12515913137093956930.Spec : Prop :=
  ∀ n, P12515913137093956930.a n = A121449 n

end A121449

/-! ## A121449.P153280066281751021

`A136776(n+1)-A116423(n+1)`
-/

namespace A121449.P153280066281751021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 1) - A116423 (n + 1)

end

end A121449.P153280066281751021

namespace A121449

/-- `A136776(n+1)-A116423(n+1)` -/
def P153280066281751021.Spec : Prop :=
  ∀ n, P153280066281751021.a n = A121449 n

end A121449

/-! ## A121449.P17323605145105425991

`A116423(n+2)-2*A116423(n+1)`
-/

namespace A121449.P17323605145105425991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116423 (n + 2) - 2 * A116423 (n + 1)

end

end A121449.P17323605145105425991

namespace A121449

/-- `A116423(n+2)-2*A116423(n+1)` -/
def P17323605145105425991.Spec : Prop :=
  ∀ n, P17323605145105425991.a n = A121449 n

end A121449

/-! ## A121449.P3853321525981945539

`A085810(n+1)+A215404(n)-Δ[A215404(n)]`
-/

namespace A121449.P3853321525981945539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1) + (A215404 n - (f1 (n + 1) - f1 n))

end

end A121449.P3853321525981945539

namespace A121449

/-- `A085810(n+1)+A215404(n)-Δ[A215404(n)]` -/
def P3853321525981945539.Spec : Prop :=
  ∀ n, P3853321525981945539.a n = A121449 n

end A121449

/-! ## A121449.P5942432081675534902

`A136776(n+1)+A215404(n)-A215404(n+1)`
-/

namespace A121449.P5942432081675534902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136776 (n + 1) + (A215404 n - A215404 (n + 1))

end

end A121449.P5942432081675534902

namespace A121449

/-- `A136776(n+1)+A215404(n)-A215404(n+1)` -/
def P5942432081675534902.Spec : Prop :=
  ∀ n, P5942432081675534902.a n = A121449 n

end A121449

/-! ## A121449.P13471072298293738471

`A085810(n+1)+A136776(n+1)-Δ[A085810(n+1)]`
-/

namespace A121449.P13471072298293738471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1) + (A136776 (n + 1) - (f1 (n + 1) - f1 n))

end

end A121449.P13471072298293738471

namespace A121449

/-- `A085810(n+1)+A136776(n+1)-Δ[A085810(n+1)]` -/
def P13471072298293738471.Spec : Prop :=
  ∀ n, P13471072298293738471.a n = A121449 n

end A121449

/-! ## A121449.P3382222687502766867

`Δ[Δ[A215404(n)]-A215404(n)]`
-/

namespace A121449.P3382222687502766867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215404 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A215404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121449.P3382222687502766867

namespace A121449

/-- `Δ[Δ[A215404(n)]-A215404(n)]` -/
def P3382222687502766867.Spec : Prop :=
  ∀ n, P3382222687502766867.a n = A121449 n

end A121449

/-! ## A121449.P5074310758318046040

`Δ[Δ[A085810(n+1)]-A136776(n+1)]`
-/

namespace A121449.P5074310758318046040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A136776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121449.P5074310758318046040

namespace A121449

/-- `Δ[Δ[A085810(n+1)]-A136776(n+1)]` -/
def P5074310758318046040.Spec : Prop :=
  ∀ n, P5074310758318046040.a n = A121449 n

end A121449

/-!
# A121450: Expansion of (theta_4(q^3)^2 - theta_4(q)^2)/4 in powers of q.

The programs for A121450, the canonical program `A121450.P5061707180200879465` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121450 has offset 1).

The definition of A121450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121450.P945339450011256380

`Δ[xor(n, 2*n)]%2*A132004(n+1)`
-/

namespace A121450.P945339450011256380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A132004 (n + 1)

end

end A121450.P945339450011256380

namespace A121450

/-- `Δ[xor(n, 2*n)]%2*A132004(n+1)` -/
def P945339450011256380.Spec : Prop :=
  ∀ n, P945339450011256380.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P5061707180200879465

`A033999(n)*A113446(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121450

/-- `A033999(n)*A113446(n+1)` -/
def P5061707180200879465.Spec : Prop :=
  ∀ n, P5061707180200879465.a n = A121450 (n + 1)

theorem P5061707180200879465.correct : P5061707180200879465.Spec := by
  intro n
  simp only [A121450, Nat.add_sub_cancel]

end A121450

/-! ## A121450.P16814800833711090546

`A138745(n+1)-A132003(n+1)`
-/

namespace A121450.P16814800833711090546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 (n + 1) - A132003 (n + 1)

end

end A121450.P16814800833711090546

namespace A121450

/-- `A138745(n+1)-A132003(n+1)` -/
def P16814800833711090546.Spec : Prop :=
  ∀ n, P16814800833711090546.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P4092906356433315654

`A034947(n+1)*A132004(n+1)`
-/

namespace A121450.P4092906356433315654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A132004 (n + 1)

end

end A121450.P4092906356433315654

namespace A121450

/-- `A034947(n+1)*A132004(n+1)` -/
def P4092906356433315654.Spec : Prop :=
  ∀ n, P4092906356433315654.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P18215185873990103935

`A138952(n+1)/A099545(n+1)`
-/

namespace A121450.P18215185873990103935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138952 (n + 1) : ℚ) / (A099545 (n + 1) : ℚ)

end

end A121450.P18215185873990103935

namespace A121450

/-- `A138952(n+1)/A099545(n+1)` -/
def P18215185873990103935.Spec : Prop :=
  ∀ n, P18215185873990103935.a n = (A121450 (n + 1) : ℚ)

end A121450

/-! ## A121450.P10436400172957111221

`A138952(n+1)/A363340(n+1)`
-/

namespace A121450.P10436400172957111221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138952 (n + 1) : ℚ) / (A363340 (n + 1) : ℚ)

end

end A121450.P10436400172957111221

namespace A121450

/-- `A138952(n+1)/A363340(n+1)` -/
def P10436400172957111221.Spec : Prop :=
  ∀ n, P10436400172957111221.a n = (A121450 (n + 1) : ℚ)

end A121450

/-! ## A121450.P14220838899566565940

`(2-A099545(n+1))*A132004(n+1)`
-/

namespace A121450.P14220838899566565940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099545 (n + 1)) * A132004 (n + 1)

end

end A121450.P14220838899566565940

namespace A121450

/-- `(2-A099545(n+1))*A132004(n+1)` -/
def P14220838899566565940.Spec : Prop :=
  ∀ n, P14220838899566565940.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P16765038912242679776

`(2-A363340(n+1))*A132004(n+1)`
-/

namespace A121450.P16765038912242679776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A363340 (n + 1)) * A132004 (n + 1)

end

end A121450.P16765038912242679776

namespace A121450

/-- `(2-A363340(n+1))*A132004(n+1)` -/
def P16765038912242679776.Spec : Prop :=
  ∀ n, P16765038912242679776.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P12927272684679480061

`A138952(n+1)/(2-A034947(n+1))`
-/

namespace A121450.P12927272684679480061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138952 (n + 1) : ℚ) / (2 - A034947 (n + 1) : ℚ)

end

end A121450.P12927272684679480061

namespace A121450

/-- `A138952(n+1)/(2-A034947(n+1))` -/
def P12927272684679480061.Spec : Prop :=
  ∀ n, P12927272684679480061.a n = (A121450 (n + 1) : ℚ)

end A121450

/-! ## A121450.P3858609103478216072

`∑{d}[n+1, A256232(#)*A275966((n+1)/#)]`
-/

namespace A121450.P3858609103478216072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256232 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A121450.P3858609103478216072

namespace A121450

/-- `∑{d}[n+1, A256232(#)*A275966((n+1)/#)]` -/
def P3858609103478216072.Spec : Prop :=
  ∀ n, P3858609103478216072.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P16635282272576772261

`2*A113652(n+1)-A113652(A038502(n+1))`
-/

namespace A121450.P16635282272576772261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113652 (n + 1) - A113652 (A038502 (n + 1)).toNat

end

end A121450.P16635282272576772261

namespace A121450

/-- `2*A113652(n+1)-A113652(A038502(n+1))` -/
def P16635282272576772261.Spec : Prop :=
  ∀ n, P16635282272576772261.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P7874966792597395688

`A113446(A080512(n+1))`
-/

namespace A121450.P7874966792597395688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (A080512 (n + 1)).toNat

end

end A121450.P7874966792597395688

namespace A121450

/-- `A113446(A080512(n+1))` -/
def P7874966792597395688.Spec : Prop :=
  ∀ n, P7874966792597395688.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P8570597218258723789

`A113446(A257143(n+1))`
-/

namespace A121450.P8570597218258723789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (A257143 (n + 1)).toNat

end

end A121450.P8570597218258723789

namespace A121450

/-- `A113446(A257143(n+1))` -/
def P8570597218258723789.Spec : Prop :=
  ∀ n, P8570597218258723789.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P2286527969157647558

`A113446(A106832(n+1)/2)`
-/

namespace A121450.P2286527969157647558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (SequenceMachineLib.roundAway ((A106832 (n + 1) : ℚ) / 2)).toNat

end

end A121450.P2286527969157647558

namespace A121450

/-- `A113446(A106832(n+1)/2)` -/
def P2286527969157647558.Spec : Prop :=
  ∀ n, P2286527969157647558.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P17023548081037686555

`A057077(2*n)*A113446(n+1)`
-/

namespace A121450.P17023548081037686555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A113446 (n + 1)

end

end A121450.P17023548081037686555

namespace A121450

/-- `A057077(2*n)*A113446(n+1)` -/
def P17023548081037686555.Spec : Prop :=
  ∀ n, P17023548081037686555.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P4720024860363955363

`A113446(n+1)*A164677(2*n+1)`
-/

namespace A121450.P4720024860363955363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1) * A164677 (2 * n + 1)

end

end A121450.P4720024860363955363

namespace A121450

/-- `A113446(n+1)*A164677(2*n+1)` -/
def P4720024860363955363.Spec : Prop :=
  ∀ n, P4720024860363955363.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P195719722253039499

`A113446(n+1)*A209615(2*n+1)`
-/

namespace A121450.P195719722253039499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1) * A209615 (2 * n + 1)

end

end A121450.P195719722253039499

namespace A121450

/-- `A113446(n+1)*A209615(2*n+1)` -/
def P195719722253039499.Spec : Prop :=
  ∀ n, P195719722253039499.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P716130790154698267

`(2-A099545(2*n+1))*A113446(n+1)`
-/

namespace A121450.P716130790154698267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099545 (2 * n + 1)) * A113446 (n + 1)

end

end A121450.P716130790154698267

namespace A121450

/-- `(2-A099545(2*n+1))*A113446(n+1)` -/
def P716130790154698267.Spec : Prop :=
  ∀ n, P716130790154698267.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P10822349506539369389

`A034947(2*n+1)*A113446(2*(n+1))`
-/

namespace A121450.P10822349506539369389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A113446 (2 * (n + 1))

end

end A121450.P10822349506539369389

namespace A121450

/-- `A034947(2*n+1)*A113446(2*(n+1))` -/
def P10822349506539369389.Spec : Prop :=
  ∀ n, P10822349506539369389.a n = A121450 (n + 1)

end A121450

/-! ## A121450.P13883719218110682646

`A020985(2*n+1)*A113446(n+1)*A020985(n)`
-/

namespace A121450.P13883719218110682646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A113446 (n + 1) * A020985 n

end

end A121450.P13883719218110682646

namespace A121450

/-- `A020985(2*n+1)*A113446(n+1)*A020985(n)` -/
def P13883719218110682646.Spec : Prop :=
  ∀ n, P13883719218110682646.a n = A121450 (n + 1)

end A121450

/-!
# A121451: Maximum product over partitions into parts of the form 3k+2.

The programs for A121451, the canonical program `A121451.P7763099026439294723` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121451 has offset 1).

The definition of A121451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121451.P4957691908124393135

`ogf((2x+5x^4)/(1-2x^2))`
-/

namespace A121451.P4957691908124393135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 0, 0, 5] [1, 0, -2] n

end

end A121451.P4957691908124393135

namespace A121451

/-- `ogf((2x+5x^4)/(1-2x^2))` -/
def P4957691908124393135.Spec : Prop :=
  ∀ n, P4957691908124393135.a n = A121451 (n + 1)

end A121451

/-! ## A121451.P7763099026439294723

`2*a(n-2)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121451

/-- `2*a(n-2)` -/
def P7763099026439294723.Spec : Prop :=
  ∀ n, (P7763099026439294723.a n : ℤ) = A121451 (n + 1)

theorem P7763099026439294723.correct : P7763099026439294723.Spec := by
  intro n
  simp only [A121451, Nat.add_sub_cancel]

end A121451

/-! ## A121451.P10150042717749624968

`a(n-2)+a(n-2)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=4, a(4)=5`
-/

namespace A121451.P10150042717749624968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 4, 5] fun n a =>
  a (n - 2) + a (n - 2)

end

end A121451.P10150042717749624968

namespace A121451

/-- `a(n-2)+a(n-2)` -/
def P10150042717749624968.Spec : Prop :=
  ∀ n, (P10150042717749624968.a n : ℤ) = A121451 (n + 1)

theorem P10150042717749624968.correct : P10150042717749624968.Spec := by
  intro n
  simp only [A121451, Nat.add_sub_cancel, A121451.P10150042717749624968.a, A121451.P7763099026439294723.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A121451

/-! ## A121451.P4555205356191348055

`a(n-2)/(1-1/2)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=4, a(4)=5`
-/

namespace A121451.P4555205356191348055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 0, 4, 5] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A121451.P4555205356191348055

namespace A121451

/-- `a(n-2)/(1-1/2)` -/
def P4555205356191348055.Spec : Prop :=
  ∀ n, P4555205356191348055.a n = (A121451 (n + 1) : ℚ)

end A121451

/-! ## A121451.P2051859557167708684

`lcm(3, a(n-2))-a(n-2)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=4, a(4)=5`
-/

namespace A121451.P2051859557167708684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0, 4, 5] fun n a =>
  (Int.lcm 3 (a (n - 2)) : ℤ) - a (n - 2)

end

end A121451.P2051859557167708684

namespace A121451

/-- `lcm(3, a(n-2))-a(n-2)` -/
def P2051859557167708684.Spec : Prop :=
  ∀ n, P2051859557167708684.a n = A121451 (n + 1)

end A121451

/-! ## A121451.P9864619969726643311

`A055010(n)%A209721(n+1)`
-/

namespace A121451.P9864619969726643311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055010 n) (A209721 (n + 1))

end

end A121451.P9864619969726643311

namespace A121451

/-- `A055010(n)%A209721(n+1)` -/
def P9864619969726643311.Spec : Prop :=
  ∀ n, P9864619969726643311.a n = A121451 (n + 1)

end A121451

/-!
# A121452: Exponential generating function (1-x^2)^(-1/x).

The programs for A121452, there is no canonical definition to state claims against.
-/

/-! ## A121452.P4631048672980779441

`A228179(A130125(n)+A087648(n))`
-/

namespace A121452.P4631048672980779441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (A130125 n + A087648 n).toNat

end

end A121452.P4631048672980779441

/-! ## A121452.P17231636416202440855

`A256502(A164871(n)-A126310(n))`
-/

namespace A121452.P17231636416202440855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A164871 n - A126310 n).toNat

end

end A121452.P17231636416202440855

/-! ## A121452.P8800192226211808878

`A007306(A361596(n)-A237427(n))`
-/

namespace A121452.P8800192226211808878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A361596 n - A237427 n).toNat

end

end A121452.P8800192226211808878

/-!
# A121453: Numbers m such that (m mod k) > (m+2 mod k) with least value of k = 5.

The programs for A121453, the canonical program `A121453.P5220781032039105532` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121453 has offset 1).

The definition of A121453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121453.P5220781032039105532

`3*(sin((n+1)*π/2)-cos((n+1)*π/2)+5*(n+1)-3)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121453

/-- `3*(sin((n+1)*π/2)-cos((n+1)*π/2)+5*(n+1)-3)` -/
def P5220781032039105532.Spec : Prop :=
  ∀ n, P5220781032039105532.a n = (A121453 (n + 1) : ℝ)

end A121453

/-! ## A121453.P9741239386133580189

`3*(or(2, 5*n)+1)`
-/

namespace A121453.P9741239386133580189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.lor 2 (5 * n) + 1)

end

end A121453.P9741239386133580189

namespace A121453

/-- `3*(or(2, 5*n)+1)` -/
def P9741239386133580189.Spec : Prop :=
  ∀ n, (P9741239386133580189.a n : ℤ) = A121453 (n + 1)

end A121453

/-! ## A121453.P16280922644499480747

`3*(5*n-or(n, -3))`
-/

namespace A121453.P16280922644499480747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((5 * n : ℤ) - Int.lor (n : ℤ) (-3))

end

end A121453.P16280922644499480747

namespace A121453

/-- `3*(5*n-or(n, -3))` -/
def P16280922644499480747.Spec : Prop :=
  ∀ n, P16280922644499480747.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P17326855977701857965

`3*(5*n+3-and(2, n))`
-/

namespace A121453.P17326855977701857965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((5 * n + 3 : ℤ) - (Nat.land 2 n : ℤ))

end

end A121453.P17326855977701857965

namespace A121453

/-- `3*(5*n+3-and(2, n))` -/
def P17326855977701857965.Spec : Prop :=
  ∀ n, P17326855977701857965.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P16139347809906380124

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=9, a(1)=24, a(2)=33, a(3)=48`
-/

namespace A121453.P16139347809906380124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 24, 33, 48] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A121453.P16139347809906380124

namespace A121453

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P16139347809906380124.Spec : Prop :=
  ∀ n, P16139347809906380124.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P11078921968339359620

`A017533(n)+A016789(or(2, n))`
-/

namespace A121453.P11078921968339359620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n + A016789 (Nat.lor 2 n)

end

end A121453.P11078921968339359620

namespace A121453

/-- `A017533(n)+A016789(or(2, n))` -/
def P11078921968339359620.Spec : Prop :=
  ∀ n, P11078921968339359620.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P13805912860342678865

`3*(A057077(n)+A016885(n)-1)`
-/

namespace A121453.P13805912860342678865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A057077 n + (A016885 n - 1))

end

end A121453.P13805912860342678865

namespace A121453

/-- `3*(A057077(n)+A016885(n)-1)` -/
def P13805912860342678865.Spec : Prop :=
  ∀ n, P13805912860342678865.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P6892360271353034908

`A174398(A174398(n+1))+A092259(n+2)`
-/

namespace A121453.P6892360271353034908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174398 (A174398 (n + 1)).toNat + A092259 (n + 2)

end

end A121453.P6892360271353034908

namespace A121453

/-- `A174398(A174398(n+1))+A092259(n+2)` -/
def P6892360271353034908.Spec : Prop :=
  ∀ n, P6892360271353034908.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P3039607455333052191

`A008486(or(2, 5*n)+1)`
-/

namespace A121453.P3039607455333052191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Nat.lor 2 (5 * n) + 1)

end

end A121453.P3039607455333052191

namespace A121453

/-- `A008486(or(2, 5*n)+1)` -/
def P3039607455333052191.Spec : Prop :=
  ∀ n, P3039607455333052191.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P16176096056241828

`A047433(A047617(A047495(n+1)))-(n+1)`
-/

namespace A121453.P16176096056241828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047433 (A047617 (A047495 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A121453.P16176096056241828

namespace A121453

/-- `A047433(A047617(A047495(n+1)))-(n+1)` -/
def P16176096056241828.Spec : Prop :=
  ∀ n, P16176096056241828.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P15621946622418986599

`A047202(xor(2, A017209(n)))`
-/

namespace A121453.P15621946622418986599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (Int.xor 2 (A017209 n)).toNat

end

end A121453.P15621946622418986599

namespace A121453

/-- `A047202(xor(2, A017209(n)))` -/
def P15621946622418986599.Spec : Prop :=
  ∀ n, P15621946622418986599.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P4456020328906397923

`A195019(or(5, 10*n))`
-/

namespace A121453.P4456020328906397923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (Nat.lor 5 (10 * n))

end

end A121453.P4456020328906397923

namespace A121453

/-- `A195019(or(5, 10*n))` -/
def P4456020328906397923.Spec : Prop :=
  ∀ n, P4456020328906397923.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P16015026930638615057

`3*A008619(or(4, 10*n))`
-/

namespace A121453.P16015026930638615057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008619 (Nat.lor 4 (10 * n))

end

end A121453.P16015026930638615057

namespace A121453

/-- `3*A008619(or(4, 10*n))` -/
def P16015026930638615057.Spec : Prop :=
  ∀ n, P16015026930638615057.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P17860648973084429828

`A049636(or(4, A008592(n)))`
-/

namespace A121453.P17860648973084429828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (Int.lor 4 (A008592 n)).toNat

end

end A121453.P17860648973084429828

namespace A121453

/-- `A049636(or(4, A008592(n)))` -/
def P17860648973084429828.Spec : Prop :=
  ∀ n, P17860648973084429828.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P463550625007479408

`A055562(or(5, A008592(n)))`
-/

namespace A121453.P463550625007479408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 (Int.lor 5 (A008592 n)).toNat

end

end A121453.P463550625007479408

namespace A121453

/-- `A055562(or(5, A008592(n)))` -/
def P463550625007479408.Spec : Prop :=
  ∀ n, P463550625007479408.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P7680778440314127575

`eq[5, A069901(n+1)]`
-/

namespace A121453.P7680778440314127575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121453.P7680778440314127575

namespace A121453

/-- `eq[5, A069901(n+1)]` -/
def P7680778440314127575.Spec : Prop :=
  ∀ n, (P7680778440314127575.a n : ℤ) = A121453 (n + 1)

end A121453

/-! ## A121453.P11255771904456498446

`filter[A072065(2*n+1), A011658(#)]`
-/

namespace A121453.P11255771904456498446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A121453.P11255771904456498446

namespace A121453

/-- `filter[A072065(2*n+1), A011658(#)]` -/
def P11255771904456498446.Spec : Prop :=
  ∀ n, P11255771904456498446.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P10728828535038758514

`filter[A047204(3*n+1), A133872(#)]`
-/

namespace A121453.P10728828535038758514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047204 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A121453.P10728828535038758514

namespace A121453

/-- `filter[A047204(3*n+1), A133872(#)]` -/
def P10728828535038758514.Spec : Prop :=
  ∀ n, P10728828535038758514.a n = A121453 (n + 1)

end A121453

/-! ## A121453.P10680282751120501980

`filter[A126590(3*n+1), A133872(#)]`
-/

namespace A121453.P10680282751120501980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126590 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A121453.P10680282751120501980

namespace A121453

/-- `filter[A126590(3*n+1), A133872(#)]` -/
def P10680282751120501980.Spec : Prop :=
  ∀ n, P10680282751120501980.a n = A121453 (n + 1)

end A121453

/-!
# A121454: Expansion of q * psi(-q) * psi(-q^7) in powers of q where psi(q) is a Ramanujan theta function.

The programs for A121454, the canonical program `A121454.P16119568103753494855` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121454 has offset 1).

The definition of A121454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035162, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121454.P16119568103753494855

`(-1)^(n+2)*A035162(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121454

/-- `(-1)^(n+2)*A035162(n+1)` -/
def P16119568103753494855.Spec : Prop :=
  ∀ n, P16119568103753494855.a n = A121454 (n + 1)

theorem P16119568103753494855.correct : P16119568103753494855.Spec := by
  intro n
  simp only [A121454, Nat.add_sub_cancel]

end A121454

/-! ## A121454.P11099846970308068496

`(-1)^n*A035182((n+1)/2^val(n+1, 2))`
-/

namespace A121454.P11099846970308068496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A121454.P11099846970308068496

namespace A121454

/-- `(-1)^n*A035182((n+1)/2^val(n+1, 2))` -/
def P11099846970308068496.Spec : Prop :=
  ∀ n, P11099846970308068496.a n = A121454 (n + 1)

end A121454

/-! ## A121454.P976981284905953044

`A035162(n+1)+A110399(n+1)-A035182(n+1)`
-/

namespace A121454.P976981284905953044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1) + (A110399 (n + 1) - A035182 (n + 1))

end

end A121454.P976981284905953044

namespace A121454

/-- `A035162(n+1)+A110399(n+1)-A035182(n+1)` -/
def P976981284905953044.Spec : Prop :=
  ∀ n, P976981284905953044.a n = A121454 (n + 1)

end A121454

/-! ## A121454.P10286853423104679866

`A035162(n+1)*A054354(A054353(n+1))`
-/

namespace A121454.P10286853423104679866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1) * A054354 (A054353 (n + 1)).toNat

end

end A121454.P10286853423104679866

namespace A121454

/-- `A035162(n+1)*A054354(A054353(n+1))` -/
def P10286853423104679866.Spec : Prop :=
  ∀ n, P10286853423104679866.a n = A121454 (n + 1)

end A121454

/-! ## A121454.P3952066925665496981

`A035162(n+1)*A056594(2*n)`
-/

namespace A121454.P3952066925665496981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (n + 1) * A056594 (2 * n)

end

end A121454.P3952066925665496981

namespace A121454

/-- `A035162(n+1)*A056594(2*n)` -/
def P3952066925665496981.Spec : Prop :=
  ∀ n, P3952066925665496981.a n = A121454 (n + 1)

end A121454

/-! ## A121454.P2152551562792204405

`A110399(n+1)-A110399(2*(n+1))`
-/

namespace A121454.P2152551562792204405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (n + 1) - A110399 (2 * (n + 1))

end

end A121454.P2152551562792204405

namespace A121454

/-- `A110399(n+1)-A110399(2*(n+1))` -/
def P2152551562792204405.Spec : Prop :=
  ∀ n, P2152551562792204405.a n = A121454 (n + 1)

end A121454

/-! ## A121454.P15845701551215615244

`A035182(A064680(n+1))-A035182(n+1)`
-/

namespace A121454.P15845701551215615244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (A064680 (n + 1)).toNat - A035182 (n + 1)

end

end A121454.P15845701551215615244

namespace A121454

/-- `A035182(A064680(n+1))-A035182(n+1)` -/
def P15845701551215615244.Spec : Prop :=
  ∀ n, P15845701551215615244.a n = A121454 (n + 1)

end A121454

/-! ## A121454.P596846539100644170

`A002408(n+1)%7`
-/

namespace A121454.P596846539100644170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002408 (n + 1)) 7

end

end A121454.P596846539100644170

namespace A121454

/-- `A002408(n+1)%7` -/
def P596846539100644170.Spec : Prop :=
  ∀ n, P596846539100644170.a n = A121454 (n + 1)

end A121454

/-!
# A121455: Expansion of q*(phi(-q)psi(q^4))^2 in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A121455, the canonical program `A121455.P9993949302773689099` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121455 has offset 1).

The definition of A121455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121455.P587666713756549210

`and(5, (n+1)²)*A002129(n+1)`
-/

namespace A121455.P587666713756549210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 5 ((n + 1) ^ 2) : ℤ) * A002129 (n + 1)

end

end A121455.P587666713756549210

namespace A121455

/-- `and(5, (n+1)²)*A002129(n+1)` -/
def P587666713756549210.Spec : Prop :=
  ∀ n, P587666713756549210.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P9993949302773689099

`and(5, (n+1)²)*A115607(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121455

/-- `and(5, (n+1)²)*A115607(n+1)` -/
def P9993949302773689099.Spec : Prop :=
  ∀ n, P9993949302773689099.a n = A121455 (n + 1)

theorem P9993949302773689099.correct : P9993949302773689099.Spec := by
  intro n
  simp only [A121455, Nat.add_sub_cancel]

end A121455

/-! ## A121455.P16499958133564283561

`∑[1-and(2, n)]*A186690(n+1)`
-/

namespace A121455.P16499958133564283561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A186690 (n + 1)

end

end A121455.P16499958133564283561

namespace A121455

/-- `∑[1-and(2, n)]*A186690(n+1)` -/
def P16499958133564283561.Spec : Prop :=
  ∀ n, P16499958133564283561.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P8498398507349521684

`A033999(n)*A133657(n+1)`
-/

namespace A121455.P8498398507349521684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133657 (n + 1)

end

end A121455.P8498398507349521684

namespace A121455

/-- `A033999(n)*A133657(n+1)` -/
def P8498398507349521684.Spec : Prop :=
  ∀ n, P8498398507349521684.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P14495073164141276897

`A002131(n+1)*A230074(n+1)`
-/

namespace A121455.P14495073164141276897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) * A230074 (n + 1)

end

end A121455.P14495073164141276897

namespace A121455

/-- `A002131(n+1)*A230074(n+1)` -/
def P14495073164141276897.Spec : Prop :=
  ∀ n, P14495073164141276897.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P17354984057801826364

`A111973(n+1)*A230074(n+1)`
-/

namespace A121455.P17354984057801826364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111973 (n + 1) * A230074 (n + 1)

end

end A121455.P17354984057801826364

namespace A121455

/-- `A111973(n+1)*A230074(n+1)` -/
def P17354984057801826364.Spec : Prop :=
  ∀ n, P17354984057801826364.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P12028631854600503731

`A133657(n+1)*A309873(n+1)`
-/

namespace A121455.P12028631854600503731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133657 (n + 1) * A309873 (n + 1)

end

end A121455.P12028631854600503731

namespace A121455

/-- `A133657(n+1)*A309873(n+1)` -/
def P12028631854600503731.Spec : Prop :=
  ∀ n, P12028631854600503731.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P6791324577063287850

`A230074(n+1)*A264740(n+1)`
-/

namespace A121455.P6791324577063287850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230074 (n + 1) * A264740 (n + 1)

end

end A121455.P6791324577063287850

namespace A121455

/-- `A230074(n+1)*A264740(n+1)` -/
def P6791324577063287850.Spec : Prop :=
  ∀ n, P6791324577063287850.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P758016209396476160

`2*A109506(n+1)-A133691(n+1)`
-/

namespace A121455.P758016209396476160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109506 (n + 1) - A133691 (n + 1)

end

end A121455.P758016209396476160

namespace A121455

/-- `2*A109506(n+1)-A133691(n+1)` -/
def P758016209396476160.Spec : Prop :=
  ∀ n, P758016209396476160.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P6764630030859657707

`∑{d}[n+1, A109506(#)*A154955((n+1)/#)]`
-/

namespace A121455.P6764630030859657707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109506 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A121455.P6764630030859657707

namespace A121455

/-- `∑{d}[n+1, A109506(#)*A154955((n+1)/#)]` -/
def P6764630030859657707.Spec : Prop :=
  ∀ n, P6764630030859657707.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P8357430801852230934

`A000122(or(n, n+1)-(n+1))*A186690(n+1)`
-/

namespace A121455.P8357430801852230934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.lor n (n + 1) - (n + 1)) * A186690 (n + 1)

end

end A121455.P8357430801852230934

namespace A121455

/-- `A000122(or(n, n+1)-(n+1))*A186690(n+1)` -/
def P8357430801852230934.Spec : Prop :=
  ∀ n, P8357430801852230934.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P6194809753276923516

`∑{d}[n+1, A033999(#-1)*A186111((n+1)/#)]`
-/

namespace A121455.P6194809753276923516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A186111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A121455.P6194809753276923516

namespace A121455

/-- `∑{d}[n+1, A033999(#-1)*A186111((n+1)/#)]` -/
def P6194809753276923516.Spec : Prop :=
  ∀ n, P6194809753276923516.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P10224456491482761094

`A055615(A006519(n+1))*A264740(n+1)`
-/

namespace A121455.P10224456491482761094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A006519 (n + 1)).toNat * A264740 (n + 1)

end

end A121455.P10224456491482761094

namespace A121455

/-- `A055615(A006519(n+1))*A264740(n+1)` -/
def P10224456491482761094.Spec : Prop :=
  ∀ n, P10224456491482761094.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P3606672740566224681

`A002131(n+1)*A326938(A006519(n+1))`
-/

namespace A121455.P3606672740566224681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) * A326938 (A006519 (n + 1)).toNat

end

end A121455.P3606672740566224681

namespace A121455

/-- `A002131(n+1)*A326938(A006519(n+1))` -/
def P3606672740566224681.Spec : Prop :=
  ∀ n, P3606672740566224681.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P10297709937247727795

`A133657(n+1)/A008438(n)*A121613(n)`
-/

namespace A121455.P10297709937247727795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133657 (n + 1) : ℚ) / (A008438 n : ℚ) * (A121613 n : ℚ)

end

end A121455.P10297709937247727795

namespace A121455

/-- `A133657(n+1)/A008438(n)*A121613(n)` -/
def P10297709937247727795.Spec : Prop :=
  ∀ n, P10297709937247727795.a n = (A121455 (n + 1) : ℚ)

end A121455

/-! ## A121455.P7937506554213203756

`A133657(n+1)/A097057(n)*A133690(n)`
-/

namespace A121455.P7937506554213203756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133657 (n + 1) : ℚ) / (A097057 n : ℚ) * (A133690 n : ℚ)

end

end A121455.P7937506554213203756

namespace A121455

/-- `A133657(n+1)/A097057(n)*A133690(n)` -/
def P7937506554213203756.Spec : Prop :=
  ∀ n, P7937506554213203756.a n = (A121455 (n + 1) : ℚ)

end A121455

/-! ## A121455.P4849624600408223221

`ceil(A002131(n+1)/A002129(n+1))*A002131(n+1)`
-/

namespace A121455.P4849624600408223221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002131 (n + 1) : ℚ) / (A002129 (n + 1) : ℚ)⌉ * A002131 (n + 1)

end

end A121455.P4849624600408223221

namespace A121455

/-- `ceil(A002131(n+1)/A002129(n+1))*A002131(n+1)` -/
def P4849624600408223221.Spec : Prop :=
  ∀ n, P4849624600408223221.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P2235166687261778292

`A000593(n+1)*A006519(n+1)*A326938(A006519(n+1))`
-/

namespace A121455.P2235166687261778292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A006519 (n + 1) * A326938 (A006519 (n + 1)).toNat

end

end A121455.P2235166687261778292

namespace A121455

/-- `A000593(n+1)*A006519(n+1)*A326938(A006519(n+1))` -/
def P2235166687261778292.Spec : Prop :=
  ∀ n, P2235166687261778292.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P9226252651765986125

`A002131(n+1)*A326938(A002131(n+1)/A000593(n+1))`
-/

namespace A121455.P9226252651765986125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) * A326938 (SequenceMachineLib.roundAway ((A002131 (n + 1) : ℚ) / (A000593 (n + 1) : ℚ))).toNat

end

end A121455.P9226252651765986125

namespace A121455

/-- `A002131(n+1)*A326938(A002131(n+1)/A000593(n+1))` -/
def P9226252651765986125.Spec : Prop :=
  ∀ n, P9226252651765986125.a n = A121455 (n + 1)

end A121455

/-! ## A121455.P5181880079634011149

`A068073(n+1)*A186690(n+1)-A186690(n+1)`
-/

namespace A121455.P5181880079634011149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (n + 1) * A186690 (n + 1) - A186690 (n + 1)

end

end A121455.P5181880079634011149

namespace A121455

/-- `A068073(n+1)*A186690(n+1)-A186690(n+1)` -/
def P5181880079634011149.Spec : Prop :=
  ∀ n, P5181880079634011149.a n = A121455 (n + 1)

end A121455

/-!
# A121456: Expansion of q*(psi(-q)*psi(-q^3))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A121456, the canonical program `A121456.P5897424446692227850` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121456 has offset 1).

The definition of A121456 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121456.P5897424446692227850

`(-1)^(n+2)*A111932(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121456

/-- `(-1)^(n+2)*A111932(n+1)` -/
def P5897424446692227850.Spec : Prop :=
  ∀ n, P5897424446692227850.a n = A121456 (n + 1)

theorem P5897424446692227850.correct : P5897424446692227850.Spec := by
  intro n
  simp only [A121456, Nat.add_sub_cancel]

end A121456

/-! ## A121456.P7634724862322274400

`xor(1, and(n, n+1)-n)*A121443((n+1)/3^val(n+1, 3))`
-/

namespace A121456.P7634724862322274400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((Nat.land n (n + 1) : ℤ) - (n : ℤ)) * A121443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A121456.P7634724862322274400

namespace A121456

/-- `xor(1, and(n, n+1)-n)*A121443((n+1)/3^val(n+1, 3))` -/
def P7634724862322274400.Spec : Prop :=
  ∀ n, P7634724862322274400.a n = A121456 (n + 1)

end A121456

/-! ## A121456.P16055175106855178002

`A186690(A038502(n+1))`
-/

namespace A121456.P16055175106855178002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186690 (A038502 (n + 1)).toNat

end

end A121456.P16055175106855178002

namespace A121456

/-- `A186690(A038502(n+1))` -/
def P16055175106855178002.Spec : Prop :=
  ∀ n, P16055175106855178002.a n = A121456 (n + 1)

end A121456

/-! ## A121456.P11623643236758096591

`A118827(n+1)*A186099(n+1)`
-/

namespace A121456.P11623643236758096591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1) * A186099 (n + 1)

end

end A121456.P11623643236758096591

namespace A121456

/-- `A118827(n+1)*A186099(n+1)` -/
def P11623643236758096591.Spec : Prop :=
  ∀ n, P11623643236758096591.a n = A121456 (n + 1)

end A121456

/-! ## A121456.P3242496598005848822

`A186690(n+1)/A080278(n+1)`
-/

namespace A121456.P3242496598005848822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186690 (n + 1) : ℚ) / (A080278 (n + 1) : ℚ)

end

end A121456.P3242496598005848822

namespace A121456

/-- `A186690(n+1)/A080278(n+1)` -/
def P3242496598005848822.Spec : Prop :=
  ∀ n, P3242496598005848822.a n = (A121456 (n + 1) : ℚ)

end A121456

/-! ## A121456.P15175328093708602523

`∑{d}[n+1, A091685(#)*A118827((n+1)/#)]`
-/

namespace A121456.P15175328093708602523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091685 d * A118827 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A121456.P15175328093708602523

namespace A121456

/-- `∑{d}[n+1, A091685(#)*A118827((n+1)/#)]` -/
def P15175328093708602523.Spec : Prop :=
  ∀ n, P15175328093708602523.a n = A121456 (n + 1)

end A121456

/-! ## A121456.P18435791775518183375

`∑{d}[n+1, A061347(#)*A186111((n+1)/#)]`
-/

namespace A121456.P18435791775518183375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061347 d * A186111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A121456.P18435791775518183375

namespace A121456

/-- `∑{d}[n+1, A061347(#)*A186111((n+1)/#)]` -/
def P18435791775518183375.Spec : Prop :=
  ∀ n, P18435791775518183375.a n = A121456 (n + 1)

end A121456

/-! ## A121456.P2863537645506589622

`∑{d}[n+1, A131947(#)*A154955((n+1)/#)]`
-/

namespace A121456.P2863537645506589622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131947 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A121456.P2863537645506589622

namespace A121456

/-- `∑{d}[n+1, A131947(#)*A154955((n+1)/#)]` -/
def P2863537645506589622.Spec : Prop :=
  ∀ n, P2863537645506589622.a n = A121456 (n + 1)

end A121456

/-! ## A121456.P1388310105230348273

`A111932(n+1)/A034896(n)*A131946(n)`
-/

namespace A121456.P1388310105230348273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111932 (n + 1) : ℚ) / (A034896 n : ℚ) * (A131946 n : ℚ)

end

end A121456.P1388310105230348273

namespace A121456

/-- `A111932(n+1)/A034896(n)*A131946(n)` -/
def P1388310105230348273.Spec : Prop :=
  ∀ n, P1388310105230348273.a n = (A121456 (n + 1) : ℚ)

end A121456

/-! ## A121456.P5285856125494454472

`A186690(3*(n+1))-3*A186690(n+1)`
-/

namespace A121456.P5285856125494454472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186690 (3 * (n + 1)) - 3 * A186690 (n + 1)

end

end A121456.P5285856125494454472

namespace A121456

/-- `A186690(3*(n+1))-3*A186690(n+1)` -/
def P5285856125494454472.Spec : Prop :=
  ∀ n, P5285856125494454472.a n = A121456 (n + 1)

end A121456

/-!
# A121457: Irregular triangle T(n,k) = A096162(n,k) * A036039(n,k), read by rows, 1 <= k <= A000041(n).

The programs for A121457, there is no canonical definition to state claims against.
-/

/-! ## A121457.P2337226607124627580

`A178802(n)/A085643(n)`
-/

namespace A121457.P2337226607124627580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178802 n : ℚ) / (A085643 n : ℚ)

end

end A121457.P2337226607124627580

/-! ## A121457.P4999087747288407293

`A036042(n)!/A118851(n)`
-/

namespace A121457.P4999087747288407293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A036042 n).toNat : ℚ) / (A118851 n : ℚ)

end

end A121457.P4999087747288407293

/-! ## A121457.P17481425056391656120

`A178801(n)/A118851(n)`
-/

namespace A121457.P17481425056391656120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A118851 n : ℚ)

end

end A121457.P17481425056391656120

/-! ## A121457.P5661451530014052918

`A008480(A036035(n))*A107106(n)`
-/

namespace A121457.P5661451530014052918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A036035 n).toNat * A107106 n

end

end A121457.P5661451530014052918

/-!
# A121458: Expansion of (1+x-2*x^2)/(1-21*x^2-7*x^3).

The programs for A121458, the canonical program `A121458.P6882924901455889080` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121458 has offset 0).

The definition of A121458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-21x^2-7x^3))` (program `A121458.P6882924901455889080`, by `A121458.P6882924901455889080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121458.P6882924901455889080

`ogf((1+x-2x^2)/(1-21x^2-7x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121458

/-- `ogf((1+x-2x^2)/(1-21x^2-7x^3))` -/
def P6882924901455889080.Spec : Prop :=
  ∀ n, P6882924901455889080.a n = A121458 n

theorem P6882924901455889080.correct : P6882924901455889080.Spec := by
  intro n
  simp only [A121458]

end A121458

/-! ## A121458.P8085228022822558792

`Δ[A215492(n)/3]`
-/

namespace A121458.P8085228022822558792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215492 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121458.P8085228022822558792

namespace A121458

/-- `Δ[A215492(n)/3]` -/
def P8085228022822558792.Spec : Prop :=
  ∀ n, P8085228022822558792.a n = (A121458 n : ℚ)

end A121458

/-!
# A121460: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having k returns to the x-axis (1<=k<=n).

The programs for A121460, there is no canonical definition to state claims against.
-/

/-! ## A121460.P8061094597956874412

`2*A125171(n)-A125172(n+1)`
-/

namespace A121460.P8061094597956874412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125171 n - A125172 (n + 1)

end

end A121460.P8061094597956874412

/-! ## A121460.P3993744525969198539

`gcd(Δ[A125171(n)], A134082(n))`
-/

namespace A121460.P3993744525969198539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A134082 n)

end

end A121460.P3993744525969198539

/-! ## A121460.P13245342994512853959

`A125171(n)-A125171(n+1)%A125171(n)`
-/

namespace A121460.P13245342994512853959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 n - Int.tmod (A125171 (n + 1)) (A125171 n)

end

end A121460.P13245342994512853959

/-! ## A121460.P15127689266268044734

`2*A125171(n)-A125171(A014132(n+1))`
-/

namespace A121460.P15127689266268044734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125171 n - A125171 (A014132 (n + 1)).toNat

end

end A121460.P15127689266268044734

/-! ## A121460.P16648217151831936862

`A004277(A125171(n))-A125172(n+1)`
-/

namespace A121460.P16648217151831936862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A125171 n).toNat - A125172 (n + 1)

end

end A121460.P16648217151831936862

/-! ## A121460.P12529048359010784377

`A005843(A125171(n))-A125171(A014132(n+1))`
-/

namespace A121460.P12529048359010784377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A125171 n).toNat - A125171 (A014132 (n + 1)).toNat

end

end A121460.P12529048359010784377

/-!
# A121461: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having last ascent of length k (1 <= k <= n).

The programs for A121461, the canonical program `A121461.P2302372317676712197` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121461 has offset 1).

The definition of A121461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121461.P3404912933337041968

`A088305(row(n)-col(n))`
-/

namespace A121461.P3404912933337041968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A121461.P3404912933337041968

namespace A121461

/-- `A088305(row(n)-col(n))` -/
def P3404912933337041968.Spec : Prop :=
  ∀ n, P3404912933337041968.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P12652835968942941899

`round(A328082(n+1)/ϕ)`
-/

namespace A121461.P12652835968942941899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A328082 (n + 1) : ℝ) / Real.goldenRatio)

end

end A121461.P12652835968942941899

namespace A121461

/-- `round(A328082(n+1)/ϕ)` -/
def P12652835968942941899.Spec : Prop :=
  ∀ n, P12652835968942941899.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P2302372317676712197

`A088305(A025581(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121461

/-- `A088305(A025581(n))` -/
def P2302372317676712197.Spec : Prop :=
  ∀ n, P2302372317676712197.a n = A121461 (n + 1)

theorem P2302372317676712197.correct : P2302372317676712197.Spec := by
  intro n
  simp only [A121461, Nat.add_sub_cancel]

end A121461

/-! ## A121461.P4670471609696038008

`A324969(A099375(n))`
-/

namespace A121461.P4670471609696038008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A099375 n).toNat

end

end A121461.P4670471609696038008

namespace A121461

/-- `A324969(A099375(n))` -/
def P4670471609696038008.Spec : Prop :=
  ∀ n, P4670471609696038008.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P800998375364708190

`A272912(2*A099375(n))`
-/

namespace A121461.P800998375364708190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (2 * A099375 n).toNat

end

end A121461.P800998375364708190

namespace A121461

/-- `A272912(2*A099375(n))` -/
def P800998375364708190.Spec : Prop :=
  ∀ n, P800998375364708190.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P11724993361386195739

`A000045(log2(lcm(2, A262616(n))))`
-/

namespace A121461.P11724993361386195739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 (Int.lcm 2 (A262616 n) : ℝ))).toNat

end

end A121461.P11724993361386195739

namespace A121461

/-- `A000045(log2(lcm(2, A262616(n))))` -/
def P11724993361386195739.Spec : Prop :=
  ∀ n, P11724993361386195739.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P752629156308999667

`A088305(A004736(n+1)-1)`
-/

namespace A121461.P752629156308999667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (A004736 (n + 1) - 1).toNat

end

end A121461.P752629156308999667

namespace A121461

/-- `A088305(A004736(n+1)-1)` -/
def P752629156308999667.Spec : Prop :=
  ∀ n, P752629156308999667.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P12365621809155232779

`A088305(sqrt(A055461(n+1))-1)`
-/

namespace A121461.P12365621809155232779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ) - 1)).toNat

end

end A121461.P12365621809155232779

namespace A121461

/-- `A088305(sqrt(A055461(n+1))-1)` -/
def P12365621809155232779.Spec : Prop :=
  ∀ n, P12365621809155232779.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P17133389358365558654

`A324969(2*A004736(n+1)-1)`
-/

namespace A121461.P17133389358365558654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 * A004736 (n + 1) - 1).toNat

end

end A121461.P17133389358365558654

namespace A121461

/-- `A324969(2*A004736(n+1)-1)` -/
def P17133389358365558654.Spec : Prop :=
  ∀ n, P17133389358365558654.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P18250971052895113408

`A324969(A004736(n+1)+A004736(n+1)-1)`
-/

namespace A121461.P18250971052895113408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A004736 (n + 1) + (A004736 (n + 1) - 1)).toNat

end

end A121461.P18250971052895113408

namespace A121461

/-- `A324969(A004736(n+1)+A004736(n+1)-1)` -/
def P18250971052895113408.Spec : Prop :=
  ∀ n, P18250971052895113408.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P4345876353611689514

`A001906(A193592(n+1))`
-/

namespace A121461.P4345876353611689514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A193592 (n + 1)).toNat

end

end A121461.P4345876353611689514

namespace A121461

/-- `A001906(A193592(n+1))` -/
def P4345876353611689514.Spec : Prop :=
  ∀ n, P4345876353611689514.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P10939418486173395366

`A000045(2*A193592(n+1))`
-/

namespace A121461.P10939418486173395366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A193592 (n + 1)).toNat

end

end A121461.P10939418486173395366

namespace A121461

/-- `A000045(2*A193592(n+1))` -/
def P10939418486173395366.Spec : Prop :=
  ∀ n, P10939418486173395366.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P14862053278118704383

`A000045(log2(Δ[A224195(n+1)]²))`
-/

namespace A121461.P14862053278118704383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.logb 2 ((f1 (n + 1) - f1 n) ^ 2 : ℝ))).toNat

end

end A121461.P14862053278118704383

namespace A121461

/-- `A000045(log2(Δ[A224195(n+1)]²))` -/
def P14862053278118704383.Spec : Prop :=
  ∀ n, P14862053278118704383.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P9429441464837021746

`A000045(2*log2(Δ[A224195(n+1)]))`
-/

namespace A121461.P9429441464837021746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (2 * Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A121461.P9429441464837021746

namespace A121461

/-- `A000045(2*log2(Δ[A224195(n+1)]))` -/
def P9429441464837021746.Spec : Prop :=
  ∀ n, P9429441464837021746.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P3261417745440719961

`A128100(A095831(n+1))`
-/

namespace A121461.P3261417745440719961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (A095831 (n + 1)).toNat

end

end A121461.P3261417745440719961

namespace A121461

/-- `A128100(A095831(n+1))` -/
def P3261417745440719961.Spec : Prop :=
  ∀ n, P3261417745440719961.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P8870700217785742755

`A171730(A103217(n))`
-/

namespace A121461.P8870700217785742755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (A103217 n).toNat

end

end A121461.P8870700217785742755

namespace A121461

/-- `A171730(A103217(n))` -/
def P8870700217785742755.Spec : Prop :=
  ∀ n, P8870700217785742755.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P5906891713792329024

`A000045(ceil(2*ratio[A008279(n)]))`
-/

namespace A121461.P5906891713792329024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈2 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))⌉.toNat

end

end A121461.P5906891713792329024

namespace A121461

/-- `A000045(ceil(2*ratio[A008279(n)]))` -/
def P5906891713792329024.Spec : Prop :=
  ∀ n, P5906891713792329024.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P13616947820963317358

`A129713(A185869(n+1))`
-/

namespace A121461.P13616947820963317358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 (A185869 (n + 1)).toNat

end

end A121461.P13616947820963317358

namespace A121461

/-- `A129713(A185869(n+1))` -/
def P13616947820963317358.Spec : Prop :=
  ∀ n, P13616947820963317358.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P4564250816576869809

`A129713(A185871(n+1))`
-/

namespace A121461.P4564250816576869809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 (A185871 (n + 1)).toNat

end

end A121461.P4564250816576869809

namespace A121461

/-- `A129713(A185871(n+1))` -/
def P4564250816576869809.Spec : Prop :=
  ∀ n, P4564250816576869809.a n = A121461 (n + 1)

end A121461

/-! ## A121461.P4989402034331092569

`A000045(2*∏{e}[A130321(n), #])`
-/

namespace A121461.P4989402034331092569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p))

end

end A121461.P4989402034331092569

namespace A121461

/-- `A000045(2*∏{e}[A130321(n), #])` -/
def P4989402034331092569.Spec : Prop :=
  ∀ n, P4989402034331092569.a n = A121461 (n + 1)

end A121461

/-!
# A121462: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having pyramid weight k (1 <= k <= n).

The programs for A121462, the canonical program `A121462.P9136997102707719593` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121462 has offset 1).

The definition of A121462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121462.P9136997102707719593

`2*T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121462

/-- `2*T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` -/
def P9136997102707719593.Spec : Prop :=
  ∀ n, P9136997102707719593.a n = A121462 (n + 1)

theorem P9136997102707719593.correct : P9136997102707719593.Spec := by
  intro n
  simp only [A121462, Nat.add_sub_cancel]

end A121462

/-! ## A121462.P11062966077095930870

`A062110(n)/2^A114327(n)`
-/

namespace A121462.P11062966077095930870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062110 n : ℚ) / (2 : ℚ) ^ (A114327 n : ℤ)

end

end A121462.P11062966077095930870

namespace A121462

/-- `A062110(n)/2^A114327(n)` -/
def P11062966077095930870.Spec : Prop :=
  ∀ n, P11062966077095930870.a n = (A121462 (n + 1) : ℚ)

end A121462

/-! ## A121462.P2246988135779700453

`A013609(n)/A038207(n)*A062110(n)`
-/

namespace A121462.P2246988135779700453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A038207 n : ℚ) * (A062110 n : ℚ)

end

end A121462.P2246988135779700453

namespace A121462

/-- `A013609(n)/A038207(n)*A062110(n)` -/
def P2246988135779700453.Spec : Prop :=
  ∀ n, P2246988135779700453.a n = (A121462 (n + 1) : ℚ)

end A121462

/-! ## A121462.P3224237854223383841

`A062110(n)/A106195(n)*A208341(n)`
-/

namespace A121462.P3224237854223383841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062110 n : ℚ) / (A106195 n : ℚ) * (A208341 n : ℚ)

end

end A121462.P3224237854223383841

namespace A121462

/-- `A062110(n)/A106195(n)*A208341(n)` -/
def P3224237854223383841.Spec : Prop :=
  ∀ n, P3224237854223383841.a n = (A121462 (n + 1) : ℚ)

end A121462

/-! ## A121462.P10226937715276099445

`A208341(n)-A049600(n+1)`
-/

namespace A121462.P10226937715276099445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n - A049600 (n + 1)

end

end A121462.P10226937715276099445

namespace A121462

/-- `A208341(n)-A049600(n+1)` -/
def P10226937715276099445.Spec : Prop :=
  ∀ n, P10226937715276099445.a n = A121462 (n + 1)

end A121462

/-! ## A121462.P16017428690701289379

`A160232(n+1)+A049600(n)-A049600(n+1)`
-/

namespace A121462.P16017428690701289379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) + (A049600 n - A049600 (n + 1))

end

end A121462.P16017428690701289379

namespace A121462

/-- `A160232(n+1)+A049600(n)-A049600(n+1)` -/
def P16017428690701289379.Spec : Prop :=
  ∀ n, P16017428690701289379.a n = A121462 (n + 1)

end A121462

/-! ## A121462.P2177225354368306750

`A160232(n+2)+A208341(n)-A208341(n+1)`
-/

namespace A121462.P2177225354368306750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 2) + (A208341 n - A208341 (n + 1))

end

end A121462.P2177225354368306750

namespace A121462

/-- `A160232(n+2)+A208341(n)-A208341(n+1)` -/
def P2177225354368306750.Spec : Prop :=
  ∀ n, P2177225354368306750.a n = A121462 (n + 1)

end A121462

/-! ## A121462.P10655774837206602160

`A208512(n+1)+A208511(n+2)-A209758(n+2)`
-/

namespace A121462.P10655774837206602160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208512 (n + 1) + (A208511 (n + 2) - A209758 (n + 2))

end

end A121462.P10655774837206602160

namespace A121462

/-- `A208512(n+1)+A208511(n+2)-A209758(n+2)` -/
def P10655774837206602160.Spec : Prop :=
  ∀ n, P10655774837206602160.a n = A121462 (n + 1)

end A121462

/-! ## A121462.P10610958490027674072

`A153342(A061579(n))`
-/

namespace A121462.P10610958490027674072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153342 (A061579 n).toNat

end

end A121462.P10610958490027674072

namespace A121462

/-- `A153342(A061579(n))` -/
def P10610958490027674072.Spec : Prop :=
  ∀ n, P10610958490027674072.a n = A121462 (n + 1)

end A121462

/-! ## A121462.P7231702598103441143

`A106195(A061579(n))-A049600(n+1)`
-/

namespace A121462.P7231702598103441143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A061579 n).toNat - A049600 (n + 1)

end

end A121462.P7231702598103441143

namespace A121462

/-- `A106195(A061579(n))-A049600(n+1)` -/
def P7231702598103441143.Spec : Prop :=
  ∀ n, P7231702598103441143.a n = A121462 (n + 1)

end A121462

/-! ## A121462.P13004003426397864100

`A160232(A080036(n+1))-A049600(A080036(n+1))`
-/

namespace A121462.P13004003426397864100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (A080036 (n + 1)).toNat - A049600 (A080036 (n + 1)).toNat

end

end A121462.P13004003426397864100

namespace A121462

/-- `A160232(A080036(n+1))-A049600(A080036(n+1))` -/
def P13004003426397864100.Spec : Prop :=
  ∀ n, P13004003426397864100.a n = A121462 (n + 1)

end A121462

/-! ## A121462.P3781053193987879513

`A013613(n)/A013620(n)*A062110(n)`
-/

namespace A121462.P3781053193987879513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013613 n : ℚ) / (A013620 n : ℚ) * (A062110 n : ℚ)

end

end A121462.P3781053193987879513

namespace A121462

/-- `A013613(n)/A013620(n)*A062110(n)` -/
def P3781053193987879513.Spec : Prop :=
  ∀ n, P3781053193987879513.a n = (A121462 (n + 1) : ℚ)

end A121462

/-!
# A121463: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having k distinct valley levels (n>=1, k>=0).

The programs for A121463, there is no canonical definition to state claims against.
-/

/-! ## A121463.P12752964742757716742

`A331969(A091018(n+1))`
-/

namespace A121463.P12752964742757716742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331969 (A091018 (n + 1)).toNat

end

end A121463.P12752964742757716742

/-!
# A121464: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having k triangles (0<=k<=n). A triangle in a Dyck path is a subpath of the form U^h D^h, starting at the x-axis; here U=(1,1), D=(1,-1), h being the height of the triangle.

The programs for A121464, there is no canonical definition to state claims against.
-/

/-! ## A121464.P1972633607805232350

`A037800(A260654(n+1)+55)`
-/

namespace A121464.P1972633607805232350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A260654 (n + 1) + 55).toNat

end

end A121464.P1972633607805232350

/-! ## A121464.P15445427815938412184

`A346705(A307707(n+1)+A077168(n))`
-/

namespace A121464.P15445427815938412184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346705 (A307707 (n + 1) + A077168 n).toNat

end

end A121464.P15445427815938412184

/-! ## A121464.P6198949353820519008

`A081603(A166357(3*n+4)+A099392(3*n+1))`
-/

namespace A121464.P6198949353820519008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (A166357 (3 * n + 4) + A099392 (3 * n + 1)).toNat

end

end A121464.P6198949353820519008

/-!
# A121465: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n such that the sum of the heights of their triangles is k (0<=k<=n). A triangle in a Dyck path is a subpath of the form U^h D^h, starting at the x-axis; here U=(1,1), D=(1,-1), h being the height of the triangle.

The programs for A121465, there is no canonical definition to state claims against.
-/

/-! ## A121465.P13363331430462510355

`A094449(A055646(n))-char[11]`
-/

namespace A121465.P13363331430462510355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094449 (A055646 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121465.P13363331430462510355

/-! ## A121465.P17851607707368569876

`A094449(n)/A003557((n+1)*Δ[n^3])`
-/

namespace A121465.P17851607707368569876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094449 n : ℚ) / (A003557 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat : ℚ)

end

end A121465.P17851607707368569876

/-! ## A121465.P4168982076264358667

`A110654(A238858((n+1)²/∏{p}[n+1, #]))`
-/

namespace A121465.P4168982076264358667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A238858 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A121465.P4168982076264358667

/-! ## A121465.P8754285505982648117

`A094449(A055646(n))/sqrt(A007318(n))`
-/

namespace A121465.P8754285505982648117
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A094449 (A055646 n).toNat : ℝ) / Real.sqrt (A007318 n : ℝ)

end

end A121465.P8754285505982648117

/-! ## A121465.P10426946317769139685

`A157230(A126465(n+1))+A000007(n)`
-/

namespace A121465.P10426946317769139685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A126465 (n + 1)).toNat + A000007 n

end

end A121465.P10426946317769139685

/-!
# A121466: Triangle read by rows: T(n,k) = is the number of directed column-convex polyominoes of area n having along the lower contour exactly k reentrant corners, i.e., a vertical step that is followed by a horizontal step (n >= 1, k >= 0).

The programs for A121466, there is no canonical definition to state claims against.
-/

/-! ## A121466.P3001741707048796106

`A140069(∑[2-char[n²]])`
-/

namespace A121466.P3001741707048796106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140069 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121466.P3001741707048796106

/-! ## A121466.P876627172653515989

`A124237(A091018(n))`
-/

namespace A121466.P876627172653515989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124237 (A091018 n).toNat

end

end A121466.P876627172653515989

/-! ## A121466.P14556186959445023711

`A209413(A038722(n-floor(sqrt(n))+1+n))`
-/

namespace A121466.P14556186959445023711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209413 (A038722 ((n : ℤ) - (Nat.sqrt n : ℤ) + 1 + (n : ℤ)).toNat).toNat

end

end A121466.P14556186959445023711

/-! ## A121466.P7965574367635882210

`A353847(A337542(n+1)+A210197(n+1))`
-/

namespace A121466.P7965574367635882210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A337542 (n + 1) + A210197 (n + 1)).toNat

end

end A121466.P7965574367635882210

/-! ## A121466.P18325066683518645406

`A267508(A372868(n+1))`
-/

namespace A121466.P18325066683518645406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (A372868 (n + 1)).toNat

end

end A121466.P18325066683518645406

/-!
# A121467: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n and area k (n>=1, k>=1).

The programs for A121467, there is no canonical definition to state claims against.
-/

/-! ## A121467.P9536107124038086801

`A129182(lt[(n%2)^n, A374637(3*n+1)])`
-/

namespace A121467.P9536107124038086801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374637 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A121467.P9536107124038086801

/-! ## A121467.P5937299515422145376

`A129182(lt[A080237(n+1), A136625(n)²])`
-/

namespace A121467.P5937299515422145376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136625 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129182 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A121467.P5937299515422145376

/-! ## A121467.P169165681019242320

`A129182(A020662(n+3)%A059802(n+1))`
-/

namespace A121467.P169165681019242320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129182 (Int.tmod (A020662 (n + 3)) (A059802 (n + 1))).toNat

end

end A121467.P169165681019242320

/-! ## A121467.P18316162926588273340

`A007299(A187489(n))%A092782(n+2)`
-/

namespace A121467.P18316162926588273340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007299 (A187489 n).toNat) (A092782 (n + 2))

end

end A121467.P18316162926588273340

/-! ## A121467.P4057173402349655953

`A127373(A333446(n+1))`
-/

namespace A121467.P4057173402349655953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127373 (A333446 (n + 1)).toNat

end

end A121467.P4057173402349655953

/-!
# A121469: Triangle read by rows: T(n,k) is the number of directed column-convex polyominoes of area n having k 1-cell columns (0<=k<=n).

The programs for A121469, there is no canonical definition to state claims against.
-/

/-! ## A121469.P8451888594506559530

`A091867(n)-A339559(A283666(n+1))`
-/

namespace A121469.P8451888594506559530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 n - A339559 (A283666 (n + 1)).toNat

end

end A121469.P8451888594506559530

/-! ## A121469.P14643748979045406821

`A091867(n)-A001221(A283666(n+1)!)`
-/

namespace A121469.P14643748979045406821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 n - A001221 (Nat.factorial (A283666 (n + 1)).toNat)

end

end A121469.P14643748979045406821

/-! ## A121469.P9519025922359690919

`A124323(n)-A059648(A058622(n))`
-/

namespace A121469.P9519025922359690919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 n - A059648 (A058622 n).toNat

end

end A121469.P9519025922359690919

/-! ## A121469.P8575697099613989175

`A124323(n)-A277157(A000051(n))`
-/

namespace A121469.P8575697099613989175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 n - A277157 (A000051 n).toNat

end

end A121469.P8575697099613989175

/-! ## A121469.P11670694398366483729

`A091867(n)+A010815(A153508(n+1))`
-/

namespace A121469.P11670694398366483729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091867 n + A010815 (A153508 (n + 1)).toNat

end

end A121469.P11670694398366483729

/-!
# A121470: Expansion of x*(1+5*x+2*x^2+x^3)/((1+x)*(1-x)^3).

The programs for A121470, the canonical program `A121470.P103750284328734755` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121470 has offset 1).

The definition of A121470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+5x+2x^2+x^3)/(1-2x+2x^3-x^4))` (program `A121470.P103750284328734755`, by `A121470.P103750284328734755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121470.P103750284328734755

`ogf((1+5x+2x^2+x^3)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121470

/-- `ogf((1+5x+2x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P103750284328734755.Spec : Prop :=
  ∀ n, P103750284328734755.a n = A121470 (n + 1)

theorem P103750284328734755.correct : P103750284328734755.Spec := by
  intro n
  simp only [A121470, Nat.add_sub_cancel]

end A121470

/-! ## A121470.P895418537696269749

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=7, a(2)=16, a(3)=31`
-/

namespace A121470.P895418537696269749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 16, 31] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A121470.P895418537696269749

namespace A121470

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P895418537696269749.Spec : Prop :=
  ∀ n, P895418537696269749.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P9928357149959451463

`(18*(n+1)²-12*(n+1)+5+3*(-1)^(n+1))/8`
-/

namespace A121470.P9928357149959451463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * (n + 1) ^ 2 : ℤ) - (12 * (n + 1) : ℤ) + 5 + 3 * (-1) ^ (n + 1) : ℚ) / 8

end

end A121470.P9928357149959451463

namespace A121470

/-- `(18*(n+1)²-12*(n+1)+5+3*(-1)^(n+1))/8` -/
def P9928357149959451463.Spec : Prop :=
  ∀ n, P9928357149959451463.a n = (A121470 (n + 1) : ℚ)

end A121470

/-! ## A121470.P6019817479016065354

`∑[record[lcm(3, n)+3]]-2`
-/

namespace A121470.P6019817479016065354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A121470.P6019817479016065354

namespace A121470

/-- `∑[record[lcm(3, n)+3]]-2` -/
def P6019817479016065354.Spec : Prop :=
  ∀ n, P6019817479016065354.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P8773898388278799659

`∑[a(n-2)+9]` with `a(0)=1, a(1)=6, a(2)=9`
-/

namespace A121470.P8773898388278799659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 9] fun n f1 =>
  f1 (n - 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121470.P8773898388278799659

namespace A121470

/-- `∑[a(n-2)+9]` -/
def P8773898388278799659.Spec : Prop :=
  ∀ n, (P8773898388278799659.a n : ℤ) = A121470 (n + 1)

end A121470

/-! ## A121470.P1765239438037494615

`∑[∑[9-a(n-1)]]` with `a(0)=1, a(1)=5, a(2)=3`
-/

namespace A121470.P1765239438037494615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 3] fun n f2 =>
  9 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121470.P1765239438037494615

namespace A121470

/-- `∑[∑[9-a(n-1)]]` -/
def P1765239438037494615.Spec : Prop :=
  ∀ n, P1765239438037494615.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P1144042678873622541

`∑[∑[gcd(2, n+1)²]]+n²`
-/

namespace A121470.P1144042678873622541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A121470.P1144042678873622541

namespace A121470

/-- `∑[∑[gcd(2, n+1)²]]+n²` -/
def P1144042678873622541.Spec : Prop :=
  ∀ n, (P1144042678873622541.a n : ℤ) = A121470 (n + 1)

end A121470

/-! ## A121470.P2140489146388449119

`3*A001859(n)+1`
-/

namespace A121470.P2140489146388449119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001859 n + 1

end

end A121470.P2140489146388449119

namespace A121470

/-- `3*A001859(n)+1` -/
def P2140489146388449119.Spec : Prop :=
  ∀ n, P2140489146388449119.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P4901569138079324747

`3*A263807(n)-2`
-/

namespace A121470.P4901569138079324747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A263807 n - 2

end

end A121470.P4901569138079324747

namespace A121470

/-- `3*A263807(n)-2` -/
def P4901569138079324747.Spec : Prop :=
  ∀ n, P4901569138079324747.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P8463323767655351296

`round(A185939(n+1)/4)`
-/

namespace A121470.P8463323767655351296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185939 (n + 1) : ℚ) / 4)

end

end A121470.P8463323767655351296

namespace A121470

/-- `round(A185939(n+1)/4)` -/
def P8463323767655351296.Spec : Prop :=
  ∀ n, P8463323767655351296.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P2591968512545552078

`∑[A301451(n+1)]-n`
-/

namespace A121470.P2591968512545552078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A121470.P2591968512545552078

namespace A121470

/-- `∑[A301451(n+1)]-n` -/
def P2591968512545552078.Spec : Prop :=
  ∀ n, P2591968512545552078.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P14025763491206835736

`∑[∑[A010685(n)]]+n²`
-/

namespace A121470.P14025763491206835736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A121470.P14025763491206835736

namespace A121470

/-- `∑[∑[A010685(n)]]+n²` -/
def P14025763491206835736.Spec : Prop :=
  ∀ n, P14025763491206835736.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P9292488097619766524

`∑[∑[dr(A298033(n))]]-n`
-/

namespace A121470.P9292488097619766524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A298033 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A121470.P9292488097619766524

namespace A121470

/-- `∑[∑[dr(A298033(n))]]-n` -/
def P9292488097619766524.Spec : Prop :=
  ∀ n, P9292488097619766524.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P8814845987278237397

`∑[A047382(n+1)+n]+1`
-/

namespace A121470.P8814845987278237397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121470.P8814845987278237397

namespace A121470

/-- `∑[A047382(n+1)+n]+1` -/
def P8814845987278237397.Spec : Prop :=
  ∀ n, P8814845987278237397.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P8930299163501748684

`∑[A056991(2*n+1)]-n`
-/

namespace A121470.P8930299163501748684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A121470.P8930299163501748684

namespace A121470

/-- `∑[A056991(2*n+1)]-n` -/
def P8930299163501748684.Spec : Prop :=
  ∀ n, P8930299163501748684.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P13046585048583197596

`∑[A242660(2*(n+1))]-n`
-/

namespace A121470.P13046585048583197596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A121470.P13046585048583197596

namespace A121470

/-- `∑[A242660(2*(n+1))]-n` -/
def P13046585048583197596.Spec : Prop :=
  ∀ n, P13046585048583197596.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P5759385373540223567

`∑[A047336(n+1)+n]-n`
-/

namespace A121470.P5759385373540223567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A121470.P5759385373540223567

namespace A121470

/-- `∑[A047336(n+1)+n]-n` -/
def P5759385373540223567.Spec : Prop :=
  ∀ n, P5759385373540223567.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P17498208824141632554

`A038764(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A121470.P17498208824141632554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038764 n + (1 - a (n - 1))

end

end A121470.P17498208824141632554

namespace A121470

/-- `A038764(n)+1-a(n-1)` -/
def P17498208824141632554.Spec : Prop :=
  ∀ n, P17498208824141632554.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P14753346764172464575

`A102214(n)+A000035(n)`
-/

namespace A121470.P14753346764172464575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102214 n + A000035 n

end

end A121470.P14753346764172464575

namespace A121470

/-- `A102214(n)+A000035(n)` -/
def P14753346764172464575.Spec : Prop :=
  ∀ n, P14753346764172464575.a n = A121470 (n + 1)

end A121470

/-! ## A121470.P13411929410654002708

`A139596(n)+A033638(n)`
-/

namespace A121470.P13411929410654002708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139596 n + A033638 n

end

end A121470.P13411929410654002708

namespace A121470

/-- `A139596(n)+A033638(n)` -/
def P13411929410654002708.Spec : Prop :=
  ∀ n, P13411929410654002708.a n = A121470 (n + 1)

end A121470

/-!
# A121471: a(n) = 9*n^2/4 -4*n +19/8 -3*(-1)^n/8.

The programs for A121471, the canonical program `A121471.P818585843006390408` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121471 has offset 1).

The definition of A121471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)²/4-4*(n+1)+19/8-3*(-1)^(n+1)/8` (program `A121471.P2309926270036951758`, by `A121471.P2309926270036951758.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121471.P818585843006390408

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=22`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121471

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P818585843006390408.Spec : Prop :=
  ∀ n, P818585843006390408.a n = A121471 (n + 1)

theorem P818585843006390408.correct : P818585843006390408.Spec := by
  intro n
  simp only [A121471, Nat.add_sub_cancel]

end A121471

/-! ## A121471.P2309926270036951758

`9*(n+1)²/4-4*(n+1)+19/8-3*(-1)^(n+1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121471.P2309926270036951758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) ^ 2 : ℚ) / 4 - (4 * (n + 1) : ℚ) + (19 : ℚ) / 8 - (3 * (-1) ^ (n + 1) : ℚ) / 8

end

end A121471.P2309926270036951758

namespace A121471

/-- `9*(n+1)²/4-4*(n+1)+19/8-3*(-1)^(n+1)/8` -/
def P2309926270036951758.Spec : Prop :=
  ∀ n, P2309926270036951758.a n = (A121471 (n + 1) : ℚ)

theorem P2309926270036951758.correct : P2309926270036951758.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A121471, Nat.add_sub_cancel, A121471.P2309926270036951758.a, A121471.P818585843006390408.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A121471, Nat.add_sub_cancel, A121471.P2309926270036951758.a, A121471.P818585843006390408.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A121471

/-! ## A121471.P14821979915040031196

`∑[a(n-2)+9]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A121471.P14821979915040031196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  f1 (n - 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121471.P14821979915040031196

namespace A121471

/-- `∑[a(n-2)+9]` -/
def P14821979915040031196.Spec : Prop :=
  ∀ n, (P14821979915040031196.a n : ℤ) = A121471 (n + 1)

end A121471

/-! ## A121471.P5720312580358306726

`∑[∑[9-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A121471.P5720312580358306726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n f2 =>
  9 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121471.P5720312580358306726

namespace A121471

/-- `∑[∑[9-a(n-1)]]` -/
def P5720312580358306726.Spec : Prop :=
  ∀ n, P5720312580358306726.a n = A121471 (n + 1)

end A121471

/-! ## A121471.P9034397365366204829

`ogf((1+x+5x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A121471.P9034397365366204829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 5, 2] [1, -2, 0, 2, -1] n

end

end A121471.P9034397365366204829

namespace A121471

/-- `ogf((1+x+5x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P9034397365366204829.Spec : Prop :=
  ∀ n, P9034397365366204829.a n = A121471 (n + 1)

end A121471

/-! ## A121471.P11477074796719818348

`abs(ceil(ceil(A016778(n)/2)/2)-n)`
-/

namespace A121471.P11477074796719818348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(⌈(A016778 n : ℚ) / 2⌉ : ℚ) / 2⌉ - (n : ℤ)|

end

end A121471.P11477074796719818348

namespace A121471

/-- `abs(ceil(ceil(A016778(n)/2)/2)-n)` -/
def P11477074796719818348.Spec : Prop :=
  ∀ n, P11477074796719818348.a n = A121471 (n + 1)

end A121471

/-! ## A121471.P14739447894143848502

`ceil(abs((3*n+1)*A016777(n)/4-n))`
-/

namespace A121471.P14739447894143848502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((3 * n + 1 : ℤ) * A016777 n : ℚ) / 4 - (n : ℚ)|⌉

end

end A121471.P14739447894143848502

namespace A121471

/-- `ceil(abs((3*n+1)*A016777(n)/4-n))` -/
def P14739447894143848502.Spec : Prop :=
  ∀ n, P14739447894143848502.a n = A121471 (n + 1)

end A121471

/-! ## A121471.P914123846411926884

`A086640(n+1)%A173102(n+1)`
-/

namespace A121471.P914123846411926884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086640 (n + 1)) (A173102 (n + 1))

end

end A121471.P914123846411926884

namespace A121471

/-- `A086640(n+1)%A173102(n+1)` -/
def P914123846411926884.Spec : Prop :=
  ∀ n, P914123846411926884.a n = A121471 (n + 1)

end A121471

/-!
# A121476: Palindromes with digit sum 9.

The programs for A121476, there is no canonical definition to state claims against.
-/

/-! ## A121476.P17647377449230970572

`∩[A032350(n+1), A008591(A008591(n)+1)]`
-/

namespace A121476.P17647377449230970572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A008591 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121476.P17647377449230970572

/-! ## A121476.P16449468669840948692

`∩[A035132(n+1), A008591(A008591(n)+1)]`
-/

namespace A121476.P16449468669840948692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A008591 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121476.P16449468669840948692

/-! ## A121476.P10663229452002979890

`∩[A045638(n+1), A008591(A008591(n)+1)]`
-/

namespace A121476.P10663229452002979890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A008591 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121476.P10663229452002979890

/-! ## A121476.P7961260881198153180

`∩[A002113(n+1), A044641(n+1)]`
-/

namespace A121476.P7961260881198153180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121476.P7961260881198153180

/-! ## A121476.P5173118903190507667

`∩[A032350(n+1), A044641(n+1)]`
-/

namespace A121476.P5173118903190507667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121476.P5173118903190507667

/-!
# A121477: Zeroless palindromes with digit sum 9.

The programs for A121477, there is no canonical definition to state claims against.
-/

/-! ## A121477.P9116107985603161005

`A121476(lt[A357644(n+1), A003415(3*(n+1))])`
-/

namespace A121477.P9116107985603161005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A121477.P9116107985603161005

/-! ## A121477.P12169089019071247323

`A121476(A268082(n+1)%A193675(n))`
-/

namespace A121477.P12169089019071247323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121476 (Int.tmod (A268082 (n + 1)) (A193675 n)).toNat

end

end A121477.P12169089019071247323

/-! ## A121477.P5829151853295399389

`filter[A121476(n+1), A306710(#)]`
-/

namespace A121477.P5829151853295399389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A306710 (f1 j).toNat = 1) n)

end

end A121477.P5829151853295399389

/-!
# A121478: Triangular numbers with three distinct prime factors.

The programs for A121478, there is no canonical definition to state claims against.
-/

/-! ## A121478.P18403896995996220116

`∩[C(n+1, 2), A033992(n+2)]`
-/

namespace A121478.P18403896995996220116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121478.P18403896995996220116

/-! ## A121478.P12163485876334538996

`C(eq[3, A001221(C(n+2, 2))]+2, 2)`
-/

namespace A121478.P12163485876334538996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) 2

end

end A121478.P12163485876334538996

/-! ## A121478.P14635741913792517575

`filter[A033992(n+1), A010054(#)]`
-/

namespace A121478.P14635741913792517575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A121478.P14635741913792517575

/-! ## A121478.P1450083971025922814

`filter[A033992(n+1), A073424(#)]`
-/

namespace A121478.P1450083971025922814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A121478.P1450083971025922814

/-! ## A121478.P2157708097986850477

`filter[A214195(n+2), A010054(#)]`
-/

namespace A121478.P2157708097986850477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A121478.P2157708097986850477

/-!
# A121479: Triangular numbers with more than three distinct prime factors.

The programs for A121479, the canonical program `A121479.P12523290855419051886` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121479 has offset 1).

The definition of A121479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121479.P12523290855419051886

`A253145(lt[3, A069903(n+1)])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121479

/-- `A253145(lt[3, A069903(n+1)])` -/
def P12523290855419051886.Spec : Prop :=
  ∀ n, P12523290855419051886.a n = A121479 (n + 1)

theorem P12523290855419051886.correct : P12523290855419051886.Spec := by
  intro n
  simp only [A121479, Nat.add_sub_cancel]

end A121479

/-! ## A121479.P15751022694232204941

`A000096(lt[3, A069903(n+1)])+1`
-/

namespace A121479.P15751022694232204941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A121479.P15751022694232204941

namespace A121479

/-- `A000096(lt[3, A069903(n+1)])+1` -/
def P15751022694232204941.Spec : Prop :=
  ∀ n, P15751022694232204941.a n = A121479 (n + 1)

end A121479

/-! ## A121479.P10278312849430326632

`A000217(lt[3, A069903(n+1)]+1)`
-/

namespace A121479.P10278312849430326632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A121479.P10278312849430326632

namespace A121479

/-- `A000217(lt[3, A069903(n+1)]+1)` -/
def P10278312849430326632.Spec : Prop :=
  ∀ n, P10278312849430326632.a n = A121479 (n + 1)

end A121479

/-! ## A121479.P5936283185292447816

`A002378(lt[3, A069903(n+1)]+1)/2`
-/

namespace A121479.P5936283185292447816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069903 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2

end

end A121479.P5936283185292447816

namespace A121479

/-- `A002378(lt[3, A069903(n+1)]+1)/2` -/
def P5936283185292447816.Spec : Prop :=
  ∀ n, P5936283185292447816.a n = (A121479 (n + 1) : ℚ)

end A121479

/-! ## A121479.P1880635819746406580

`C(lt[3, A001221(C(n+2, 2))]+2, 2)`
-/

namespace A121479.P1880635819746406580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) 2

end

end A121479.P1880635819746406580

namespace A121479

/-- `C(lt[3, A001221(C(n+2, 2))]+2, 2)` -/
def P1880635819746406580.Spec : Prop :=
  ∀ n, (P1880635819746406580.a n : ℤ) = A121479 (n + 1)

end A121479

/-!
# A121481: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having k peaks at odd level (0<=k<=n).

The programs for A121481, there is no canonical definition to state claims against.
-/

/-! ## A121481.P7453123787189831364

`A000217(A105422(n))-A316864(A171967(2*n+1))`
-/

namespace A121481.P7453123787189831364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A105422 n).toNat - A316864 (A171967 (2 * n + 1)).toNat

end

end A121481.P7453123787189831364

/-! ## A121481.P17625614497814534821

`A322850(5*A124323(n))`
-/

namespace A121481.P17625614497814534821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322850 (5 * A124323 n).toNat

end

end A121481.P17625614497814534821

/-! ## A121481.P11182962699747742762

`A000030(A006008(A162986(n)²))`
-/

namespace A121481.P11182962699747742762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A006008 (A162986 n ^ 2).toNat).toNat

end

end A121481.P11182962699747742762

/-! ## A121481.P12658866247318719631

`A342639(A124323(n)^A000196(n))`
-/

namespace A121481.P12658866247318719631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342639 (SequenceMachineLib.roundAway ((A124323 n : ℚ) ^ (A000196 n : ℤ))).toNat

end

end A121481.P12658866247318719631

/-! ## A121481.P9199466715183319398

`A333224(lcm(A008290(n), A108558(n)))`
-/

namespace A121481.P9199466715183319398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Int.lcm (A008290 n) (A108558 n))

end

end A121481.P9199466715183319398

/-!
# A121482: Number of nondecreasing Dyck paths of semilength n and having no peaks at odd level (n>=0). A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121482, there is no canonical definition to state claims against.
-/

/-! ## A121482.P13203217890615340256

`A121481(∑[n])`
-/

namespace A121482.P13203217890615340256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121481 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121482.P13203217890615340256

/-! ## A121482.P17718327265187482966

`A121481(A000217(n))+char[12]`
-/

namespace A121482.P17718327265187482966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121481 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121482.P17718327265187482966

/-! ## A121482.P3717324796222974977

`A121481(C(n+1, 2))%A121504(n)`
-/

namespace A121482.P3717324796222974977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121481 (Nat.choose (n + 1) 2)) (A121504 n)

end

end A121482.P3717324796222974977

/-! ## A121482.P15332919810289754212

`A121481((n²+n)/2)%A342993(n+1)`
-/

namespace A121482.P15332919810289754212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121481 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (A342993 (n + 1))

end

end A121482.P15332919810289754212

/-! ## A121482.P7184210471530933865

`A121481(A000217(n))*A196879(n)`
-/

namespace A121482.P7184210471530933865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121481 (A000217 n).toNat * A196879 n

end

end A121482.P7184210471530933865

/-!
# A121483: Number of peaks at odd level in all nondecreasing Dyck paths of semilength n. A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121483, there is no canonical definition to state claims against.
-/

/-! ## A121483.P5515603187221703660

`A038731(n)-A121486(n+1)`
-/

namespace A121483.P5515603187221703660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n - A121486 (n + 1)

end

end A121483.P5515603187221703660

/-! ## A121483.P11257831930341781918

`A121523(n+1)-A121530(n+1)`
-/

namespace A121483.P11257831930341781918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121523 (n + 1) - A121530 (n + 1)

end

end A121483.P11257831930341781918

/-! ## A121483.P8103647366133178075

`A134512(2*n)-A121486(n+1)`
-/

namespace A121483.P8103647366133178075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n) - A121486 (n + 1)

end

end A121483.P8103647366133178075

/-! ## A121483.P12302980604154376605

`A291241(2*n)-A121486(n+1)`
-/

namespace A121483.P12302980604154376605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n) - A121486 (n + 1)

end

end A121483.P12302980604154376605

/-! ## A121483.P15938811615772300673

`A038731(n)+A008683(A002146(n))*A121486(n+1)`
-/

namespace A121483.P15938811615772300673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n + A008683 (A002146 n).toNat * A121486 (n + 1)

end

end A121483.P15938811615772300673

/-!
# A121484: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n, having k peaks at even level (n>=1,0<=k<=n-1). A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121484, there is no canonical definition to state claims against.
-/

/-! ## A121484.P4912351847681291024

`A273903(n+2)-A030308(A324674(n))`
-/

namespace A121484.P4912351847681291024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273903 (n + 2) - A030308 (A324674 n).toNat

end

end A121484.P4912351847681291024

/-! ## A121484.P9189163918971141948

`A273903(n+2)-A178602(A330964(n))`
-/

namespace A121484.P9189163918971141948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273903 (n + 2) - A178602 (A330964 n).toNat

end

end A121484.P9189163918971141948

/-! ## A121484.P9458323714791117883

`A244361(A273903(n+2))`
-/

namespace A121484.P9458323714791117883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (A273903 (n + 2)).toNat

end

end A121484.P9458323714791117883

/-! ## A121484.P9449051220890211667

`A273903(n+2)-A112765(A000055(n))`
-/

namespace A121484.P9449051220890211667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273903 (n + 2) - A112765 (A000055 n).toNat

end

end A121484.P9449051220890211667

/-! ## A121484.P12312027193645867268

`A273903(n+2)-A112765(A001644(n))`
-/

namespace A121484.P12312027193645867268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273903 (n + 2) - A112765 (A001644 n).toNat

end

end A121484.P12312027193645867268

/-!
# A121485: Number of nondecreasing Dyck paths of semilength n and having no peaks at even level (n>=0). A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121485, the canonical program `A121485.P10370418919635466024` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121485 has offset 1).

The definition of A121485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121485.P10370418919635466024

`a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121485

/-- `a(n-1)+4*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` -/
def P10370418919635466024.Spec : Prop :=
  ∀ n, P10370418919635466024.a n = A121485 (n + 1)

theorem P10370418919635466024.correct : P10370418919635466024.Spec := by
  intro n
  simp only [A121485, Nat.add_sub_cancel]

end A121485

/-! ## A121485.P4010544944022115017

`A121484(∑[n]+1)`
-/

namespace A121485.P4010544944022115017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121484 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121485.P4010544944022115017

namespace A121485

/-- `A121484(∑[n]+1)` -/
def P4010544944022115017.Spec : Prop :=
  ∀ n, P4010544944022115017.a n = A121485 (n + 1)

end A121485

/-! ## A121485.P9282779526981011284

`A121484(A000124(n))+char[12]`
-/

namespace A121485.P9282779526981011284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121484 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121485.P9282779526981011284

namespace A121485

/-- `A121484(A000124(n))+char[12]` -/
def P9282779526981011284.Spec : Prop :=
  ∀ n, P9282779526981011284.a n = A121485 (n + 1)

end A121485

/-! ## A121485.P4709783127095303616

`A121484(A000124(n))%A032908(n)`
-/

namespace A121485.P4709783127095303616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121484 (A000124 n).toNat) (A032908 n)

end

end A121485.P4709783127095303616

namespace A121485

/-- `A121484(A000124(n))%A032908(n)` -/
def P4709783127095303616.Spec : Prop :=
  ∀ n, P4709783127095303616.a n = A121485 (n + 1)

end A121485

/-! ## A121485.P14410945634658816786

`or(A000007(n), A121484(A000124(n)))`
-/

namespace A121485.P14410945634658816786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A121484 (A000124 n).toNat)

end

end A121485.P14410945634658816786

namespace A121485

/-- `or(A000007(n), A121484(A000124(n)))` -/
def P14410945634658816786.Spec : Prop :=
  ∀ n, P14410945634658816786.a n = A121485 (n + 1)

end A121485

/-!
# A121486: Number of peaks at even level in all nondecreasing Dyck paths of semilength n. A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121486, there is no canonical definition to state claims against.
-/

/-! ## A121486.P7405260468078835022

`A038731(n)-A121483(n+1)`
-/

namespace A121486.P7405260468078835022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n - A121483 (n + 1)

end

end A121486.P7405260468078835022

/-! ## A121486.P18045989176297504644

`A121525(n+1)-A121532(n+1)`
-/

namespace A121486.P18045989176297504644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121525 (n + 1) - A121532 (n + 1)

end

end A121486.P18045989176297504644

/-! ## A121486.P8684107493981224504

`A134512(2*n)-A121483(n+1)`
-/

namespace A121486.P8684107493981224504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 (2 * n) - A121483 (n + 1)

end

end A121486.P8684107493981224504

/-! ## A121486.P9597448623971404451

`A291241(2*n)-A121483(n+1)`
-/

namespace A121486.P9597448623971404451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291241 (2 * n) - A121483 (n + 1)

end

end A121486.P9597448623971404451

/-! ## A121486.P6074585733170267964

`A038731(A028310(n))%A121483(n+1)`
-/

namespace A121486.P6074585733170267964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038731 (A028310 n).toNat) (A121483 (n + 1))

end

end A121486.P6074585733170267964

/-!
# A121487: Triangle read by rows: T(n,k) is the number of nondecreasing Dyck paths of semilength n and having abscissa of first return equal to 2k (1<=k<=n). A nondecreasing Dyck path is a Dyck path for which the sequence of the altitudes of the valleys is nondecreasing.

The programs for A121487, the canonical program `A121487.P2034550491402035869` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121487 has offset 1).

The definition of A121487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121487.P2034550491402035869

`A001519(A003056(n+1)-A114219(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121487

/-- `A001519(A003056(n+1)-A114219(n))` -/
def P2034550491402035869.Spec : Prop :=
  ∀ n, P2034550491402035869.a n = A121487 (n + 1)

theorem P2034550491402035869.correct : P2034550491402035869.Spec := by
  intro n
  simp only [A121487, Nat.add_sub_cancel]

end A121487

/-! ## A121487.P3516259598958713260

`A001519(A002024(n+1)-A128227(n))`
-/

namespace A121487.P3516259598958713260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A002024 (n + 1) - A128227 n).toNat

end

end A121487.P3516259598958713260

namespace A121487

/-- `A001519(A002024(n+1)-A128227(n))` -/
def P3516259598958713260.Spec : Prop :=
  ∀ n, P3516259598958713260.a n = A121487 (n + 1)

end A121487

/-! ## A121487.P16758342127920105510

`A001519(A193739(n+1)-A023531(n))`
-/

namespace A121487.P16758342127920105510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A193739 (n + 1) - A023531 n).toNat

end

end A121487.P16758342127920105510

namespace A121487

/-- `A001519(A193739(n+1)-A023531(n))` -/
def P16758342127920105510.Spec : Prop :=
  ∀ n, P16758342127920105510.a n = A121487 (n + 1)

end A121487

/-! ## A121487.P3976471341754202606

`A000045(A099375(n+1-A127775(n+1)))`
-/

namespace A121487.P3976471341754202606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A099375 ((n + 1 : ℤ) - A127775 (n + 1)).toNat).toNat

end

end A121487.P3976471341754202606

namespace A121487

/-- `A000045(A099375(n+1-A127775(n+1)))` -/
def P3976471341754202606.Spec : Prop :=
  ∀ n, P3976471341754202606.a n = A121487 (n + 1)

end A121487

/-! ## A121487.P5100556901213136311

`A057432(A211019(n+2))`
-/

namespace A121487.P5100556901213136311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057432 (A211019 (n + 2)).toNat

end

end A121487.P5100556901213136311

namespace A121487

/-- `A057432(A211019(n+2))` -/
def P5100556901213136311.Spec : Prop :=
  ∀ n, P5100556901213136311.a n = A121487 (n + 1)

end A121487

/-!
# A121488: a(n) = 8*n^2 - floor(n*sqrt(8))^2.

The programs for A121488, the canonical program `A121488.P4599495111964371177` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121488 has offset 1).

The definition of A121488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(n+1)²-floor((n+1)*sqrt(8))²` (program `A121488.P4599495111964371177`, by `A121488.P4599495111964371177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121488.P4599495111964371177

`8*(n+1)²-floor((n+1)*sqrt(8))²`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121488

/-- `8*(n+1)²-floor((n+1)*sqrt(8))²` -/
def P4599495111964371177.Spec : Prop :=
  ∀ n, P4599495111964371177.a n = A121488 (n + 1)

theorem P4599495111964371177.correct : P4599495111964371177.Spec := by
  intro n
  simp only [A121488, Nat.add_sub_cancel]

end A121488

/-! ## A121488.P13515643838893999227

`A087056(2*(n+1))`
-/

namespace A121488.P13515643838893999227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087056 (2 * (n + 1))

end

end A121488.P13515643838893999227

namespace A121488

/-- `A087056(2*(n+1))` -/
def P13515643838893999227.Spec : Prop :=
  ∀ n, P13515643838893999227.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P13504019855989438929

`A082532(4*(n+1))/2`
-/

namespace A121488.P13504019855989438929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082532 (4 * (n + 1)) : ℚ) / 2

end

end A121488.P13504019855989438929

namespace A121488

/-- `A082532(4*(n+1))/2` -/
def P13504019855989438929.Spec : Prop :=
  ∀ n, P13504019855989438929.a n = (A121488 (n + 1) : ℚ)

end A121488

/-! ## A121488.P7292505362814379880

`A087059(A197878(n+1))`
-/

namespace A121488.P7292505362814379880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A197878 (n + 1)).toNat

end

end A121488.P7292505362814379880

namespace A121488

/-- `A087059(A197878(n+1))` -/
def P7292505362814379880.Spec : Prop :=
  ∀ n, P7292505362814379880.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P17823402486968429422

`A087059(A003151(2*(n+1)))`
-/

namespace A121488.P17823402486968429422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087059 (A003151 (2 * (n + 1))).toNat

end

end A121488.P17823402486968429422

namespace A121488

/-- `A087059(A003151(2*(n+1)))` -/
def P17823402486968429422.Spec : Prop :=
  ∀ n, P17823402486968429422.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P9173928161944662742

`A087060(A080754(2*(n+1))-1)`
-/

namespace A121488.P9173928161944662742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (A080754 (2 * (n + 1)) - 1).toNat

end

end A121488.P9173928161944662742

namespace A121488

/-- `A087060(A080754(2*(n+1))-1)` -/
def P9173928161944662742.Spec : Prop :=
  ∀ n, P9173928161944662742.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P12268006330469316391

`A087060(A087057(2*(n+1))+2*n+1)`
-/

namespace A121488.P12268006330469316391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (A087057 (2 * (n + 1)) + (2 * n : ℤ) + 1).toNat

end

end A121488.P12268006330469316391

namespace A121488

/-- `A087060(A087057(2*(n+1))+2*n+1)` -/
def P12268006330469316391.Spec : Prop :=
  ∀ n, P12268006330469316391.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P12239873444656418943

`A082532(A187393(n+1))`
-/

namespace A121488.P12239873444656418943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (A187393 (n + 1)).toNat

end

end A121488.P12239873444656418943

namespace A121488

/-- `A082532(A187393(n+1))` -/
def P12239873444656418943.Spec : Prop :=
  ∀ n, P12239873444656418943.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P17657800636154453412

`A082532(A001952(2*(n+1)))`
-/

namespace A121488.P17657800636154453412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (A001952 (2 * (n + 1))).toNat

end

end A121488.P17657800636154453412

namespace A121488

/-- `A082532(A001952(2*(n+1)))` -/
def P17657800636154453412.Spec : Prop :=
  ∀ n, P17657800636154453412.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P520436716856175348

`A087060(A098021(2*(n+1)))`
-/

namespace A121488.P520436716856175348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (A098021 (2 * (n + 1))).toNat

end

end A121488.P520436716856175348

namespace A121488

/-- `A087060(A098021(2*(n+1)))` -/
def P520436716856175348.Spec : Prop :=
  ∀ n, P520436716856175348.a n = A121488 (n + 1)

end A121488

/-! ## A121488.P16331120926537139445

`A087060(A187975(2*(n+1)))`
-/

namespace A121488.P16331120926537139445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087060 (A187975 (2 * (n + 1))).toNat

end

end A121488.P16331120926537139445

namespace A121488

/-- `A087060(A187975(2*(n+1)))` -/
def P16331120926537139445.Spec : Prop :=
  ∀ n, P16331120926537139445.a n = A121488 (n + 1)

end A121488

/-!
# A121489: Diagonal of array A121490.

The programs for A121489, the canonical program `A121489.P12798281435474896578` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121489 has offset 1).

The definition of A121489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121489.P12798281435474896578

`A077121(n+1)²-A000578(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121489

/-- `A077121(n+1)²-A000578(n+1)` -/
def P12798281435474896578.Spec : Prop :=
  ∀ n, P12798281435474896578.a n = A121489 (n + 1)

theorem P12798281435474896578.correct : P12798281435474896578.Spec := by
  intro n
  simp only [A121489, Nat.add_sub_cancel]

end A121489

/-! ## A121489.P11531180343850242732

`(A186146(n+1)-n)²-A000578(n+1)`
-/

namespace A121489.P11531180343850242732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186146 (n + 1) - (n : ℤ)) ^ 2 - A000578 (n + 1)

end

end A121489.P11531180343850242732

namespace A121489

/-- `(A186146(n+1)-n)²-A000578(n+1)` -/
def P11531180343850242732.Spec : Prop :=
  ∀ n, P11531180343850242732.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P2804572727346226684

`(A000093(n+1)+1)²-A000578(n+1)`
-/

namespace A121489.P2804572727346226684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000093 (n + 1) + 1) ^ 2 - A000578 (n + 1)

end

end A121489.P2804572727346226684

namespace A121489

/-- `(A000093(n+1)+1)²-A000578(n+1)` -/
def P2804572727346226684.Spec : Prop :=
  ∀ n, P2804572727346226684.a n = A121489 (n + 1)

theorem P2804572727346226684.correct : P2804572727346226684.Spec := by
  intro n
  simp only [A121489, Nat.add_sub_cancel, A121489.P2804572727346226684.a, A121489.P12798281435474896578.a, A000093, A000093.P17445405278724815419.a, A000578, A000578.P12162961755414704816.a, A077121, A077121.P1205340503456116965.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121489

/-! ## A121489.P8485133651852185893

`A073072(A077121(n+1))`
-/

namespace A121489.P8485133651852185893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073072 (A077121 (n + 1)).toNat

end

end A121489.P8485133651852185893

namespace A121489

/-- `A073072(A077121(n+1))` -/
def P8485133651852185893.Spec : Prop :=
  ∀ n, P8485133651852185893.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P11260511045873368702

`A075847(∑[A035936(n)]+1)`
-/

namespace A121489.P11260511045873368702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075847 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A121489.P11260511045873368702

namespace A121489

/-- `A075847(∑[A035936(n)]+1)` -/
def P11260511045873368702.Spec : Prop :=
  ∀ n, P11260511045873368702.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P13447469104333557035

`A075847(A000093(n+1)+1)`
-/

namespace A121489.P13447469104333557035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075847 (A000093 (n + 1) + 1).toNat

end

end A121489.P13447469104333557035

namespace A121489

/-- `A075847(A000093(n+1)+1)` -/
def P13447469104333557035.Spec : Prop :=
  ∀ n, P13447469104333557035.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P6919438936404792661

`A075847(A186146(n+1)-n)`
-/

namespace A121489.P6919438936404792661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075847 (A186146 (n + 1) - (n : ℤ)).toNat

end

end A121489.P6919438936404792661

namespace A121489

/-- `A075847(A186146(n+1)-n)` -/
def P6919438936404792661.Spec : Prop :=
  ∀ n, P6919438936404792661.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P2233377085010671538

`A075847(root(A065733(n+1), 2)+1)`
-/

namespace A121489.P2233377085010671538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075847 (SequenceMachineLib.roundAway ((A065733 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) + 1)).toNat

end

end A121489.P2233377085010671538

namespace A121489

/-- `A075847(root(A065733(n+1), 2)+1)` -/
def P2233377085010671538.Spec : Prop :=
  ∀ n, P2233377085010671538.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P15143683645778959921

`A000290(A000093(n+1)+1)-∑[A003215(n)]`
-/

namespace A121489.P15143683645778959921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000093 (n + 1) + 1).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121489.P15143683645778959921

namespace A121489

/-- `A000290(A000093(n+1)+1)-∑[A003215(n)]` -/
def P15143683645778959921.Spec : Prop :=
  ∀ n, P15143683645778959921.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P502907874955678412

`A000290(A000093(n+1)+1)-Δ[A000537(n)]`
-/

namespace A121489.P502907874955678412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000093 (n + 1) + 1).toNat - (f1 (n + 1) - f1 n)

end

end A121489.P502907874955678412

namespace A121489

/-- `A000290(A000093(n+1)+1)-Δ[A000537(n)]` -/
def P502907874955678412.Spec : Prop :=
  ∀ n, P502907874955678412.a n = A121489 (n + 1)

end A121489

/-! ## A121489.P5981536329063796184

`A000290(A000093(n+1)+1)-A000578(n+1)`
-/

namespace A121489.P5981536329063796184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000093 (n + 1) + 1).toNat - A000578 (n + 1)

end

end A121489.P5981536329063796184

namespace A121489

/-- `A000290(A000093(n+1)+1)-A000578(n+1)` -/
def P5981536329063796184.Spec : Prop :=
  ∀ n, P5981536329063796184.a n = A121489 (n + 1)

end A121489

/-!
# A121490: Rectangular array T by antidiagonals: T(n,k) = [y+1]^2-y^2, where y=n*sqrt(k) and [ ] denotes the floor function.

The programs for A121490, there is no canonical definition to state claims against.
-/

/-! ## A121490.P2540194196181583829

`A080883(A002260(n+1)*A003991(n+1))`
-/

namespace A121490.P2540194196181583829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A002260 (n + 1) * A003991 (n + 1)).toNat

end

end A121490.P2540194196181583829

/-! ## A121490.P10766882155226712821

`A080883(A004736(n+1)*A133819(n+1))`
-/

namespace A121490.P10766882155226712821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A004736 (n + 1) * A133819 (n + 1)).toNat

end

end A121490.P10766882155226712821

/-! ## A121490.P3946580557491179446

`A080883(A002260(n+1)²*A004736(n+1))`
-/

namespace A121490.P3946580557491179446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A002260 (n + 1) ^ 2 * A004736 (n + 1)).toNat

end

end A121490.P3946580557491179446

/-! ## A121490.P10490466998730645364

`A080883(A003991(n+1)²/A004736(n+1))`
-/

namespace A121490.P10490466998730645364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.roundAway ((A003991 (n + 1) ^ 2 : ℚ) / (A004736 (n + 1) : ℚ))).toNat

end

end A121490.P10490466998730645364

/-! ## A121490.P15466815964268783451

`A080883(sqrt(A133819(n+1))*A003991(n+1))`
-/

namespace A121490.P15466815964268783451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.roundAway (Real.sqrt (A133819 (n + 1) : ℝ) * (A003991 (n + 1) : ℝ))).toNat

end

end A121490.P15466815964268783451

/-! ## A121490.P17792986162871048927

`A080883(A002260(n+1)*A004736(n+1)*A002260(n+1))`
-/

namespace A121490.P17792986162871048927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A002260 (n + 1) * A004736 (n + 1) * A002260 (n + 1)).toNat

end

end A121490.P17792986162871048927

/-! ## A121490.P9267407360211632267

`A080883(A003991(n+1)/A004736(n+1)*A003991(n+1))`
-/

namespace A121490.P9267407360211632267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (SequenceMachineLib.roundAway ((A003991 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A003991 (n + 1) : ℚ))).toNat

end

end A121490.P9267407360211632267

/-!
# A121492: Gaps associated with A002540(n).

The programs for A121492, there is no canonical definition to state claims against.
-/

/-! ## A121492.P7420864200586616443

`A167236(n+1)-A002540(n+1)`
-/

namespace A121492.P7420864200586616443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167236 (n + 1) - A002540 (n + 1)

end

end A121492.P7420864200586616443

/-! ## A121492.P16269254614530740862

`record[A090811(n+1)]`
-/

namespace A121492.P16269254614530740862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121492.P16269254614530740862

/-! ## A121492.P5448005329871068867

`A377782(A167236(n+1)-1)`
-/

namespace A121492.P5448005329871068867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377782 (A167236 (n + 1) - 1).toNat

end

end A121492.P5448005329871068867

/-!
# A121493: Start of the smallest m-string of equal entries in A003418(n)=lcm(1,2,...,n), where m=A121492.

The programs for A121493, there is no canonical definition to state claims against.
-/

/-! ## A121493.P7844497264728426033

`A334224(∑[2-char[∑[n]]+n])`
-/

namespace A121493.P7844497264728426033
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121493.P7844497264728426033

/-!
# A121494: Composite numbers k such that tau(k) = tau(2k+1).

The programs for A121494, the canonical program `A121494.P12392596324607679124` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121494 has offset 1).

The definition of A121494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121494.P12392596324607679124

`filter[A074821(n+2), A005171(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121494

/-- `filter[A074821(n+2), A005171(#)]` -/
def P12392596324607679124.Spec : Prop :=
  ∀ n, P12392596324607679124.a n = A121494 (n + 1)

theorem P12392596324607679124.correct : P12392596324607679124.Spec := by
  intro n
  simp only [A121494, Nat.add_sub_cancel]

end A121494

/-! ## A121494.P8965740749685349269

`filter[A074821(n+2), A066247(#)]`
-/

namespace A121494.P8965740749685349269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A121494.P8965740749685349269

namespace A121494

/-- `filter[A074821(n+2), A066247(#)]` -/
def P8965740749685349269.Spec : Prop :=
  ∀ n, P8965740749685349269.a n = A121494 (n + 1)

end A121494

/-! ## A121494.P1750056132294256533

`∩[A002808(n+1), A074821(n+1)]`
-/

namespace A121494.P1750056132294256533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121494.P1750056132294256533

namespace A121494

/-- `∩[A002808(n+1), A074821(n+1)]` -/
def P1750056132294256533.Spec : Prop :=
  ∀ n, (P1750056132294256533.a n : ℤ) = A121494 (n + 1)

end A121494

/-! ## A121494.P16766051218647143756

`∩[A018252(n+1), A074821(n+1)]`
-/

namespace A121494.P16766051218647143756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121494.P16766051218647143756

namespace A121494

/-- `∩[A018252(n+1), A074821(n+1)]` -/
def P16766051218647143756.Spec : Prop :=
  ∀ n, (P16766051218647143756.a n : ℤ) = A121494 (n + 1)

end A121494

/-! ## A121494.P18311465759004700534

`∩[A074821(n+1), A141468(n+1)]`
-/

namespace A121494.P18311465759004700534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121494.P18311465759004700534

namespace A121494

/-- `∩[A074821(n+1), A141468(n+1)]` -/
def P18311465759004700534.Spec : Prop :=
  ∀ n, (P18311465759004700534.a n : ℤ) = A121494 (n + 1)

end A121494

/-! ## A121494.P7087722413637815326

`∩[A074821(n+1), A077654(n+1)]`
-/

namespace A121494.P7087722413637815326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121494.P7087722413637815326

namespace A121494

/-- `∩[A074821(n+1), A077654(n+1)]` -/
def P7087722413637815326.Spec : Prop :=
  ∀ n, (P7087722413637815326.a n : ℤ) = A121494 (n + 1)

end A121494

/-! ## A121494.P2126992134067737687

`∩[A047845(n+1), A074821(n+1)]`
-/

namespace A121494.P2126992134067737687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121494.P2126992134067737687

namespace A121494

/-- `∩[A047845(n+1), A074821(n+1)]` -/
def P2126992134067737687.Spec : Prop :=
  ∀ n, (P2126992134067737687.a n : ℤ) = A121494 (n + 1)

end A121494

/-! ## A121494.P9877994700778157728

`eq[A070824(2*n+3), A264440(n+1)]+1`
-/

namespace A121494.P9877994700778157728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A121494.P9877994700778157728

namespace A121494

/-- `eq[A070824(2*n+3), A264440(n+1)]+1` -/
def P9877994700778157728.Spec : Prop :=
  ∀ n, (P9877994700778157728.a n : ℤ) = A121494 (n + 1)

end A121494

/-! ## A121494.P2058341255174087389

`eq[A145154(A191558(2*n+1)), A145154(n)]`
-/

namespace A121494.P2058341255174087389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A191558 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121494.P2058341255174087389

namespace A121494

/-- `eq[A145154(A191558(2*n+1)), A145154(n)]` -/
def P2058341255174087389.Spec : Prop :=
  ∀ n, (P2058341255174087389.a n : ℤ) = A121494 (n + 1)

end A121494

/-! ## A121494.P11761460104511623306

`eq[A145154(2*n+1)+A010051(2*n+1), A145154(n)]`
-/

namespace A121494.P11761460104511623306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (2 * n + 1) + A010051 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121494.P11761460104511623306

namespace A121494

/-- `eq[A145154(2*n+1)+A010051(2*n+1), A145154(n)]` -/
def P11761460104511623306.Spec : Prop :=
  ∀ n, (P11761460104511623306.a n : ℤ) = A121494 (n + 1)

end A121494

/-!
# A121495: Numbers k such that k and k+1 are composite and squarefree.

The programs for A121495, the canonical program `A121495.P8991942477691651037` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121495 has offset 1).

The definition of A121495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4813 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121495.P14107549747007060454

`∩[A000469(n+1)-1, A000469(n+1)]`
-/

namespace A121495.P14107549747007060454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121495.P14107549747007060454

namespace A121495

/-- `∩[A000469(n+1)-1, A000469(n+1)]` -/
def P14107549747007060454.Spec : Prop :=
  ∀ n, (P14107549747007060454.a n : ℤ) = A121495 (n + 1)

end A121495

/-! ## A121495.P5791214641464591291

`∩[A120944(n+1)-1, A120944(n+1)]`
-/

namespace A121495.P5791214641464591291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121495.P5791214641464591291

namespace A121495

/-- `∩[A120944(n+1)-1, A120944(n+1)]` -/
def P5791214641464591291.Spec : Prop :=
  ∀ n, (P5791214641464591291.a n : ℤ) = A121495 (n + 1)

end A121495

/-! ## A121495.P3662157342599593705

`A120944(eq[1, A120944(n+1)-A000469(n+1)])`
-/

namespace A121495.P3662157342599593705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1) - A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121495.P3662157342599593705

namespace A121495

/-- `A120944(eq[1, A120944(n+1)-A000469(n+1)])` -/
def P3662157342599593705.Spec : Prop :=
  ∀ n, P3662157342599593705.a n = A121495 (n + 1)

end A121495

/-! ## A121495.P15545724221313102654

`A000469(eq[1, A000469(n+2)-A000469(n+1)]+1)`
-/

namespace A121495.P15545724221313102654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2) - A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121495.P15545724221313102654

namespace A121495

/-- `A000469(eq[1, A000469(n+2)-A000469(n+1)]+1)` -/
def P15545724221313102654.Spec : Prop :=
  ∀ n, P15545724221313102654.a n = A121495 (n + 1)

end A121495

/-! ## A121495.P8991942477691651037

`A120944(eq[1, A120944(n+2)-A120944(n+1)]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A121495

/-- `A120944(eq[1, A120944(n+2)-A120944(n+1)]+1)` -/
def P8991942477691651037.Spec : Prop :=
  ∀ n, P8991942477691651037.a n = A121495 (n + 1)

theorem P8991942477691651037.correct : P8991942477691651037.Spec := by
  intro n
  simp only [A121495, Nat.add_sub_cancel]

end A121495

/-! ## A121495.P12369261862419451768

`A120944(eq[1, A120944(n+2)%A120944(n+1)]+1)`
-/

namespace A121495.P12369261862419451768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120944 (n + 2)) (A120944 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121495.P12369261862419451768

namespace A121495

/-- `A120944(eq[1, A120944(n+2)%A120944(n+1)]+1)` -/
def P12369261862419451768.Spec : Prop :=
  ∀ n, P12369261862419451768.a n = A121495 (n + 1)

end A121495

/-! ## A121495.P1135458650487423642

`∩[A007674(n+1), A068780(n+1)]`
-/

namespace A121495.P1135458650487423642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121495.P1135458650487423642

namespace A121495

/-- `∩[A007674(n+1), A068780(n+1)]` -/
def P1135458650487423642.Spec : Prop :=
  ∀ n, (P1135458650487423642.a n : ℤ) = A121495 (n + 1)

end A121495

/-! ## A121495.P5368112798941579387

`eq[A010150(A074206(n)), A069158(n+1)]`
-/

namespace A121495.P5368112798941579387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010150 (A074206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121495.P5368112798941579387

namespace A121495

/-- `eq[A010150(A074206(n)), A069158(n+1)]` -/
def P5368112798941579387.Spec : Prop :=
  ∀ n, (P5368112798941579387.a n : ℤ) = A121495 (n + 1)

end A121495

/-! ## A121495.P5513234129574438003

`∩[A007674(n+1), A255346(n+1)]`
-/

namespace A121495.P5513234129574438003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121495.P5513234129574438003

namespace A121495

/-- `∩[A007674(n+1), A255346(n+1)]` -/
def P5513234129574438003.Spec : Prop :=
  ∀ n, (P5513234129574438003.a n : ℤ) = A121495 (n + 1)

end A121495

/-! ## A121495.P10548754824291051261

`∩[A007674(n+1), A240593(n+1)]`
-/

namespace A121495.P10548754824291051261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121495.P10548754824291051261

namespace A121495

/-- `∩[A007674(n+1), A240593(n+1)]` -/
def P10548754824291051261.Spec : Prop :=
  ∀ n, (P10548754824291051261.a n : ℤ) = A121495 (n + 1)

end A121495

/-!
# A121496: Run lengths of successive numbers in A068225.

The programs for A121496, the canonical program `A121496.P10779909734783417953` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121496 has offset 1).

The definition of A121496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121496.P10779909734783417953

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1, a(4)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121496

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P10779909734783417953.Spec : Prop :=
  ∀ n, P10779909734783417953.a n = A121496 (n + 1)

theorem P10779909734783417953.correct : P10779909734783417953.Spec := by
  intro n
  simp only [A121496, Nat.add_sub_cancel]

end A121496

/-! ## A121496.P9616515827393523676

`(2*(n+1)+1-4*cos((n+1)*π/2)-cos((n+1)*π))/4`
-/

namespace A121496.P9616515827393523676
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) + 1 : ℝ) - 4 * Real.cos ((n + 1 : ℝ) * Real.pi / 2) - Real.cos ((n + 1 : ℝ) * Real.pi)) / 4

end

end A121496.P9616515827393523676

namespace A121496

/-- `(2*(n+1)+1-4*cos((n+1)*π/2)-cos((n+1)*π))/4` -/
def P9616515827393523676.Spec : Prop :=
  ∀ n, P9616515827393523676.a n = (A121496 (n + 1) : ℝ)

end A121496

/-! ## A121496.P7436755003636114051

`∑[2-n%4]-1`
-/

namespace A121496.P7436755003636114051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A121496.P7436755003636114051

namespace A121496

/-- `∑[2-n%4]-1` -/
def P7436755003636114051.Spec : Prop :=
  ∀ n, P7436755003636114051.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P257602775359943107

`∑[2-and(3, n)]-1`
-/

namespace A121496.P257602775359943107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A121496.P257602775359943107

namespace A121496

/-- `∑[2-and(3, n)]-1` -/
def P257602775359943107.Spec : Prop :=
  ∀ n, P257602775359943107.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P12677792015850436480

`a(n-4)+2` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A121496.P12677792015850436480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 1] fun n a =>
  a (n - 4) + 2

end

end A121496.P12677792015850436480

namespace A121496

/-- `a(n-4)+2` -/
def P12677792015850436480.Spec : Prop :=
  ∀ n, (P12677792015850436480.a n : ℤ) = A121496 (n + 1)

end A121496

/-! ## A121496.P7175471900876655793

`or(1, n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A121496.P7175471900876655793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.lor 1 n : ℤ) - a (n - 2)

end

end A121496.P7175471900876655793

namespace A121496

/-- `or(1, n)-a(n-2)` -/
def P7175471900876655793.Spec : Prop :=
  ∀ n, P7175471900876655793.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P9815501206940210409

`∑[or(3, n)-(n+1)]-1`
-/

namespace A121496.P9815501206940210409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A121496.P9815501206940210409

namespace A121496

/-- `∑[or(3, n)-(n+1)]-1` -/
def P9815501206940210409.Spec : Prop :=
  ∀ n, P9815501206940210409.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P14074135801645513943

`2-(and(3, n)-a(n-1))` with `a(0)=1`
-/

namespace A121496.P14074135801645513943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ((Nat.land 3 n : ℤ) - a (n - 1))

end

end A121496.P14074135801645513943

namespace A121496

/-- `2-(and(3, n)-a(n-1))` -/
def P14074135801645513943.Spec : Prop :=
  ∀ n, P14074135801645513943.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P13972645595245809155

`∑[-n%4]+2*n+1`
-/

namespace A121496.P13972645595245809155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A121496.P13972645595245809155

namespace A121496

/-- `∑[-n%4]+2*n+1` -/
def P13972645595245809155.Spec : Prop :=
  ∀ n, P13972645595245809155.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P2085997252805049090

`-xor(n-a(n-1), -2)` with `a(0)=1`
-/

namespace A121496.P2085997252805049090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor ((n : ℤ) - a (n - 1)) (-2)

end

end A121496.P2085997252805049090

namespace A121496

/-- `-xor(n-a(n-1), -2)` -/
def P2085997252805049090.Spec : Prop :=
  ∀ n, P2085997252805049090.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P2961161611599066994

`∑[and(3, -(n+1))]%(n+2)`
-/

namespace A121496.P2961161611599066994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A121496.P2961161611599066994

namespace A121496

/-- `∑[and(3, -(n+1))]%(n+2)` -/
def P2961161611599066994.Spec : Prop :=
  ∀ n, P2961161611599066994.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P10786768476895861140

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A121496.P10786768476895861140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, -1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121496.P10786768476895861140

namespace A121496

/-- `∑[floor(a(n-4))]` -/
def P10786768476895861140.Spec : Prop :=
  ∀ n, P10786768476895861140.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P13076627616372036071

`(n+3-(1-and(3, n))²)/2`
-/

namespace A121496.P13076627616372036071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (1 - (Nat.land 3 n : ℤ)) ^ 2 : ℚ) / 2

end

end A121496.P13076627616372036071

namespace A121496

/-- `(n+3-(1-and(3, n))²)/2` -/
def P13076627616372036071.Spec : Prop :=
  ∀ n, P13076627616372036071.a n = (A121496 (n + 1) : ℚ)

end A121496

/-! ## A121496.P7666534919724987271

`floor(n/2)-∑[(-1)^∑[n+1]]`
-/

namespace A121496.P7666534919724987271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121496.P7666534919724987271

namespace A121496

/-- `floor(n/2)-∑[(-1)^∑[n+1]]` -/
def P7666534919724987271.Spec : Prop :=
  ∀ n, P7666534919724987271.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P10545261427369306000

`∑[(1-a(n-1))*(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A121496.P10545261427369306000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (1 - f1 (n - 1)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121496.P10545261427369306000

namespace A121496

/-- `∑[(1-a(n-1))*(-1)^n]` -/
def P10545261427369306000.Spec : Prop :=
  ∀ n, P10545261427369306000.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P15265807946821209522

`∑[(1-a(n-1))/(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A121496.P15265807946821209522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (1 - f1 (n - 1)) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121496.P15265807946821209522

namespace A121496

/-- `∑[(1-a(n-1))/(-1)^n]` -/
def P15265807946821209522.Spec : Prop :=
  ∀ n, P15265807946821209522.a n = (A121496 (n + 1) : ℚ)

end A121496

/-! ## A121496.P14024477656557045966

`floor(∑[(n+2)*and(2, n+2)]/(n+3))`
-/

namespace A121496.P14024477656557045966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 2 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 3 : ℚ)⌋

end

end A121496.P14024477656557045966

namespace A121496

/-- `floor(∑[(n+2)*and(2, n+2)]/(n+3))` -/
def P14024477656557045966.Spec : Prop :=
  ∀ n, P14024477656557045966.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P14699554854532071946

`∑[or(2, n)-A131055(n+1)]`
-/

namespace A121496.P14699554854532071946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - A131055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121496.P14699554854532071946

namespace A121496

/-- `∑[or(2, n)-A131055(n+1)]` -/
def P14699554854532071946.Spec : Prop :=
  ∀ n, P14699554854532071946.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P7484436070560255439

`A008619(A159966(n))`
-/

namespace A121496.P7484436070560255439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A159966 n).toNat

end

end A121496.P7484436070560255439

namespace A121496

/-- `A008619(A159966(n))` -/
def P7484436070560255439.Spec : Prop :=
  ∀ n, P7484436070560255439.a n = A121496 (n + 1)

end A121496

/-! ## A121496.P2853991051379060198

`A285869(A098180(n))`
-/

namespace A121496.P2853991051379060198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (A098180 n).toNat

end

end A121496.P2853991051379060198

namespace A121496

/-- `A285869(A098180(n))` -/
def P2853991051379060198.Spec : Prop :=
  ∀ n, P2853991051379060198.a n = A121496 (n + 1)

end A121496

/-!
# A121497: Binomial transform of the characteristic function of the prime numbers (A010051).

The programs for A121497, there is no canonical definition to state claims against.
-/

/-! ## A121497.P5054154696067997040

`A052467(n)+a(n-1)` with `a(0)=0`
-/

namespace A121497.P5054154696067997040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052467 n + a (n - 1)

end

end A121497.P5054154696067997040

/-! ## A121497.P13223145957048658130

`∑[A052467(A028310(n))]`
-/

namespace A121497.P13223145957048658130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121497.P13223145957048658130

/-! ## A121497.P10219586002346305248

`∑[A052467(A135523(2*n+1)+n)]`
-/

namespace A121497.P10219586002346305248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (A135523 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121497.P10219586002346305248

/-! ## A121497.P14253344709373451744

`∑[A052467(n+1)]-A052467(n+1)`
-/

namespace A121497.P14253344709373451744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052467 (n + 1)

end

end A121497.P14253344709373451744

/-! ## A121497.P2489887251162484757

`A000295(n)-A143962(n)`
-/

namespace A121497.P2489887251162484757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n - A143962 n

end

end A121497.P2489887251162484757

/-! ## A121497.P5422837283395806178

`A000225(n)-(A143962(n)+n)`
-/

namespace A121497.P5422837283395806178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - (A143962 n + (n : ℤ))

end

end A121497.P5422837283395806178

/-! ## A121497.P12966323393133925445

`A000079(n)-(A143962(n)+1+n)`
-/

namespace A121497.P12966323393133925445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A143962 n + 1 + (n : ℤ))

end

end A121497.P12966323393133925445

/-!
# A121499: Denominators of partial alternating sums of Catalan numbers scaled by powers of 1/(29^2) = 1/841.

The programs for A121499, there is no canonical definition to state claims against.
-/

/-! ## A121499.P15427449458873043029

`A165850(A000302(n))`
-/

namespace A121499.P15427449458873043029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165850 (A000302 n).toNat

end

end A121499.P15427449458873043029

/-! ## A121499.P15012770706855502992

`A165850(6^n)`
-/

namespace A121499.P15012770706855502992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165850 (6 ^ n)

end

end A121499.P15012770706855502992

