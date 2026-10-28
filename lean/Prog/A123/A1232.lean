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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123201: Numbers m such that the factorizations of m..m+7 have the same number of primes (including multiplicities).

The programs for A123201, there is no canonical definition to state claims against.
-/

/-! ## A123201.P10943340957717929087

`∩[A123103(n+1)-1, A123103(n+1)]`
-/

namespace A123201.P10943340957717929087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123103 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123201.P10943340957717929087

/-!
# A123202: Triangle of coefficients of n!*(1 - x)^n*L_n(x/(1 - x)), where L_n(x) is the Laguerre polynomial.

The programs for A123202, the canonical program `A123202.P17354685668513878885` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123202 has offset 0).

The definition of A123202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123202.P17354685668513878885

`A002720(A002262(n))*A021009(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123202

/-- `A002720(A002262(n))*A021009(n)` -/
def P17354685668513878885.Spec : Prop :=
  ∀ n, P17354685668513878885.a n = A123202 n

theorem P17354685668513878885.correct : P17354685668513878885.Spec := by
  intro n
  simp only [A123202]

end A123202

/-! ## A123202.P9674351103946188151

`A002720(log2(A059268(n)))*A021009(n)`
-/

namespace A123202.P9674351103946188151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A021009 n

end

end A123202.P9674351103946188151

namespace A123202

/-- `A002720(log2(A059268(n)))*A021009(n)` -/
def P9674351103946188151.Spec : Prop :=
  ∀ n, P9674351103946188151.a n = A123202 n

end A123202

/-! ## A123202.P11230546020224311507

`A002720(val(A055236(n), 4))*A021009(n)`
-/

namespace A123202.P11230546020224311507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (SequenceMachineLib.valuation (A055236 n).toNat 4) * A021009 n

end

end A123202.P11230546020224311507

namespace A123202

/-- `A002720(val(A055236(n), 4))*A021009(n)` -/
def P11230546020224311507.Spec : Prop :=
  ∀ n, P11230546020224311507.a n = A123202 n

end A123202

/-! ## A123202.P11602435086833514234

`A002720(A002260(n+1)-1)*A021009(n)`
-/

namespace A123202.P11602435086833514234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (A002260 (n + 1) - 1).toNat * A021009 n

end

end A123202.P11602435086833514234

namespace A123202

/-- `A002720(A002260(n+1)-1)*A021009(n)` -/
def P11602435086833514234.Spec : Prop :=
  ∀ n, P11602435086833514234.a n = A123202 n

theorem P11602435086833514234.correct : P11602435086833514234.Spec := by
  intro n
  simp only [A123202, Nat.add_sub_cancel, A123202.P11602435086833514234.a, A123202.P17354685668513878885.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A002720, A002720.P9188981106848597072.a, A021009, A021009.P6799404492599357482.a, A000262, A000262.P5795723230427946542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A123202

/-! ## A123202.P17473004574162916051

`A002720(A002262(n))*A021010(A061579(n))`
-/

namespace A123202.P17473004574162916051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (A002262 n).toNat * A021010 (A061579 n).toNat

end

end A123202.P17473004574162916051

namespace A123202

/-- `A002720(A002262(n))*A021010(A061579(n))` -/
def P17473004574162916051.Spec : Prop :=
  ∀ n, P17473004574162916051.a n = A123202 n

end A123202

/-! ## A123202.P12260414231071971833

`A002720(A003056(n)-A025581(n))*A021009(n)`
-/

namespace A123202.P12260414231071971833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 (A003056 n - A025581 n).toNat * A021009 n

end

end A123202.P12260414231071971833

namespace A123202

/-- `A002720(A003056(n)-A025581(n))*A021009(n)` -/
def P12260414231071971833.Spec : Prop :=
  ∀ n, P12260414231071971833.a n = A123202 n

end A123202

/-!
# A123203: a(n) = 2^(n+1) - 3*n.

The programs for A123203, the canonical program `A123203.P16998584569561290195` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123203 has offset 1).

The definition of A123203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)-3*(n+1)` (program `A123203.P16998584569561290195`, by `A123203.P16998584569561290195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123203.P9646723821331221089

`ogf((1-2x+4x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A123203.P9646723821331221089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -4, 5, -2] n

end

end A123203.P9646723821331221089

namespace A123203

/-- `ogf((1-2x+4x^2)/(1-4x+5x^2-2x^3))` -/
def P9646723821331221089.Spec : Prop :=
  ∀ n, P9646723821331221089.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P16998584569561290195

`2^(n+2)-3*(n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123203

/-- `2^(n+2)-3*(n+1)` -/
def P16998584569561290195.Spec : Prop :=
  ∀ n, P16998584569561290195.a n = A123203 (n + 1)

theorem P16998584569561290195.correct : P16998584569561290195.Spec := by
  intro n
  simp only [A123203, Nat.add_sub_cancel]

end A123203

/-! ## A123203.P12050645724818236050

`∑[ogf((1-2x+4x^2)/(1-3x+2x^2))]`
-/

namespace A123203.P12050645724818236050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P12050645724818236050

namespace A123203

/-- `∑[ogf((1-2x+4x^2)/(1-3x+2x^2))]` -/
def P12050645724818236050.Spec : Prop :=
  ∀ n, P12050645724818236050.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P7346351606159459207

`-∑[or(3, -2^(n+1))]`
-/

namespace A123203.P7346351606159459207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (-(2 ^ (n + 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123203.P7346351606159459207

namespace A123203

/-- `-∑[or(3, -2^(n+1))]` -/
def P7346351606159459207.Spec : Prop :=
  ∀ n, P7346351606159459207.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P7267876598867822428

`∑[2*a(n-1)+3]` with `a(0)=1, a(1)=1`
-/

namespace A123203.P7267876598867822428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P7267876598867822428

namespace A123203

/-- `∑[2*a(n-1)+3]` -/
def P7267876598867822428.Spec : Prop :=
  ∀ n, (P7267876598867822428.a n : ℤ) = A123203 (n + 1)

end A123203

/-! ## A123203.P17819072421101068395

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A123203.P17819072421101068395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P17819072421101068395

namespace A123203

/-- `∑[∑[2*a(n-1)]]` -/
def P17819072421101068395.Spec : Prop :=
  ∀ n, (P17819072421101068395.a n : ℤ) = A123203 (n + 1)

end A123203

/-! ## A123203.P3151839247140848880

`floor(∑[2^n]-(2-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123203.P3151839247140848880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 - a (n - 1))

end

end A123203.P3151839247140848880

namespace A123203

/-- `floor(∑[2^n]-(2-a(n-1)))` -/
def P3151839247140848880.Spec : Prop :=
  ∀ n, P3151839247140848880.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P7624319614022511785

`floor(2*a(n-1)+3*(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123203.P7624319614022511785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 3 * ((n : ℤ) - 1)

end

end A123203.P7624319614022511785

namespace A123203

/-- `floor(2*a(n-1)+3*(n-1))` -/
def P7624319614022511785.Spec : Prop :=
  ∀ n, P7624319614022511785.a n = A123203 (n + 1)

theorem P7624319614022511785.correct : P7624319614022511785.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123203, Nat.add_sub_cancel, A123203.P7624319614022511785.a, A123203.P16998584569561290195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123203, Nat.add_sub_cancel, A123203.P7624319614022511785.a, A123203.P16998584569561290195.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123203

/-! ## A123203.P4137032046397170409

`floor(2^(n+1)+a(n-1)-3)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123203.P4137032046397170409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ (n + 1) : ℤ) + (a (n - 1) - 3)

end

end A123203.P4137032046397170409

namespace A123203

/-- `floor(2^(n+1)+a(n-1)-3)` -/
def P4137032046397170409.Spec : Prop :=
  ∀ n, P4137032046397170409.a n = A123203 (n + 1)

theorem P4137032046397170409.correct : P4137032046397170409.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123203, Nat.add_sub_cancel, A123203.P4137032046397170409.a, A123203.P16998584569561290195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123203, Nat.add_sub_cancel, A123203.P4137032046397170409.a, A123203.P16998584569561290195.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123203

/-! ## A123203.P12018926622553233654

`∑[a(n-1)+a(n-1)+3]` with `a(0)=1, a(1)=1`
-/

namespace A123203.P12018926622553233654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P12018926622553233654

namespace A123203

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P12018926622553233654.Spec : Prop :=
  ∀ n, (P12018926622553233654.a n : ℤ) = A123203 (n + 1)

end A123203

/-! ## A123203.P10106756359709179938

`floor(2*(n-(1-a(n-1)))-(1-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123203.P10106756359709179938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - (1 - a (n - 1))) - (1 - (n : ℤ))

end

end A123203.P10106756359709179938

namespace A123203

/-- `floor(2*(n-(1-a(n-1)))-(1-n))` -/
def P10106756359709179938.Spec : Prop :=
  ∀ n, P10106756359709179938.a n = A123203 (n + 1)

theorem P10106756359709179938.correct : P10106756359709179938.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123203, Nat.add_sub_cancel, A123203.P10106756359709179938.a, A123203.P16998584569561290195.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123203, Nat.add_sub_cancel, A123203.P10106756359709179938.a, A123203.P16998584569561290195.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123203

/-! ## A123203.P18168423688708488344

`∑[∑[A186949(n)]]`
-/

namespace A123203.P18168423688708488344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P18168423688708488344

namespace A123203

/-- `∑[∑[A186949(n)]]` -/
def P18168423688708488344.Spec : Prop :=
  ∀ n, P18168423688708488344.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P2176591495542398590

`∑[A132738(n)-n]`
-/

namespace A123203.P2176591495542398590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132738 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P2176591495542398590

namespace A123203

/-- `∑[A132738(n)-n]` -/
def P2176591495542398590.Spec : Prop :=
  ∀ n, P2176591495542398590.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P13002134927556901352

`∑[abs(A036563(n+1))]`
-/

namespace A123203.P13002134927556901352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036563 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P13002134927556901352

namespace A123203

/-- `∑[abs(A036563(n+1))]` -/
def P13002134927556901352.Spec : Prop :=
  ∀ n, P13002134927556901352.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P10240487076980905933

`(A320661(n)+1)/2`
-/

namespace A123203.P10240487076980905933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320661 n + 1 : ℚ) / 2

end

end A123203.P10240487076980905933

namespace A123203

/-- `(A320661(n)+1)/2` -/
def P10240487076980905933.Spec : Prop :=
  ∀ n, P10240487076980905933.a n = (A123203 (n + 1) : ℚ)

theorem P10240487076980905933.correct : P10240487076980905933.Spec := by
  intro n
  simp only [A123203, Nat.add_sub_cancel, A123203.P10240487076980905933.a, A123203.P16998584569561290195.a, A320661, A320661.P10572897147368588178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A123203

/-! ## A123203.P9690346313617650898

`Δ[A048492(n)-n²]`
-/

namespace A123203.P9690346313617650898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048492 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123203.P9690346313617650898

namespace A123203

/-- `Δ[A048492(n)-n²]` -/
def P9690346313617650898.Spec : Prop :=
  ∀ n, P9690346313617650898.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P14794772900553358142

`A227712(n)%A051633(n)`
-/

namespace A123203.P14794772900553358142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227712 n) (A051633 n)

end

end A123203.P14794772900553358142

namespace A123203

/-- `A227712(n)%A051633(n)` -/
def P14794772900553358142.Spec : Prop :=
  ∀ n, P14794772900553358142.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P11704298062448978519

`A250652(n+1)%A115618(n)`
-/

namespace A123203.P11704298062448978519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250652 (n + 1)) (A115618 n)

end

end A123203.P11704298062448978519

namespace A123203

/-- `A250652(n+1)%A115618(n)` -/
def P11704298062448978519.Spec : Prop :=
  ∀ n, P11704298062448978519.a n = A123203 (n + 1)

end A123203

/-! ## A123203.P6536239944276737180

`∑[(4^n-a(n-1)²)/3]` with `a(0)=1`
-/

namespace A123203.P6536239944276737180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((4 ^ n : ℚ) - f1 (n - 1) ^ 2) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123203.P6536239944276737180

namespace A123203

/-- `∑[(4^n-a(n-1)²)/3]` -/
def P6536239944276737180.Spec : Prop :=
  ∀ n, P6536239944276737180.a n = (A123203 (n + 1) : ℚ)

end A123203

/-!
# A123205: Number of polyhexes with 24 hexagons, C_(3h) symmetry and containing 67+3n carbon atoms.

The programs for A123205, there is no canonical definition to state claims against.
-/

/-! ## A123205.P9892819168402583980

`A096745(A063673(n+1))`
-/

namespace A123205.P9892819168402583980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096745 (A063673 (n + 1)).toNat

end

end A123205.P9892819168402583980

/-!
# A123206: Primes of the form x^y - y^x, for x,y > 1.

The programs for A123206, there is no canonical definition to state claims against.
-/

/-! ## A123206.P4184790765284362924

`p?[A045575(n+1)]`
-/

namespace A123206.P4184790765284362924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123206.P4184790765284362924

/-! ## A123206.P12884687890004811133

`record[p?[A045575(A019556(n))]]`
-/

namespace A123206.P12884687890004811133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045575 (A019556 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123206.P12884687890004811133

/-! ## A123206.P6775893300890220846

`p?[record[A045575(A028920(n))]]`
-/

namespace A123206.P6775893300890220846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045575 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123206.P6775893300890220846

/-!
# A123207: Primes of the form x^y + y^z + z^x, for x,y,z > 1.

The programs for A123207, there is no canonical definition to state claims against.
-/

/-! ## A123207.P7793611304154806779

`p?[A386892(n+1)]`
-/

namespace A123207.P7793611304154806779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123207.P7793611304154806779

/-! ## A123207.P4143043278842994469

`∩[A191218(n+1), A386892(n+1)]`
-/

namespace A123207.P4143043278842994469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123207.P4143043278842994469

/-! ## A123207.P16279857682226876455

`∩[A002144(n+1), A386892(n+1)]`
-/

namespace A123207.P16279857682226876455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123207.P16279857682226876455

/-! ## A123207.P16004359216617908438

`∩[A002313(n+1), A386892(n+1)]`
-/

namespace A123207.P16004359216617908438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123207.P16004359216617908438

/-! ## A123207.P15064997354128523091

`∩[A040150(n+1), A386892(n+1)]`
-/

namespace A123207.P15064997354128523091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123207.P15064997354128523091

/-!
# A123208: Start with 1, then alternately add 2 or double.

The programs for A123208, the canonical program `A123208.P7410047828164580163` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123208 has offset 0).

The definition of A123208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123208.P2954455197540421188

`ogf((1+3x+3x^2-x^3)/(1-3x^2+2x^4))`
-/

namespace A123208.P2954455197540421188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, -1] [1, 0, -3, 0, 2] n

end

end A123208.P2954455197540421188

namespace A123208

/-- `ogf((1+3x+3x^2-x^3)/(1-3x^2+2x^4))` -/
def P2954455197540421188.Spec : Prop :=
  ∀ n, P2954455197540421188.a n = A123208 n

end A123208

/-! ## A123208.P7410047828164580163

`3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=8`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123208

/-- `3*a(n-2)-2*a(n-4)` -/
def P7410047828164580163.Spec : Prop :=
  ∀ n, P7410047828164580163.a n = A123208 n

theorem P7410047828164580163.correct : P7410047828164580163.Spec := by
  intro n
  simp only [A123208]

end A123208

/-! ## A123208.P3784419544514972826

`2*(a(n-2)+gcd(2, n))` with `a(0)=1, a(1)=3`
-/

namespace A123208.P3784419544514972826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 2) + Nat.gcd 2 n)

end

end A123208.P3784419544514972826

namespace A123208

/-- `2*(a(n-2)+gcd(2, n))` -/
def P3784419544514972826.Spec : Prop :=
  ∀ n, (P3784419544514972826.a n : ℤ) = A123208 n

end A123208

/-! ## A123208.P2130373012533990706

`2*(a(n-2)+2-n%2)` with `a(0)=1, a(1)=3`
-/

namespace A123208.P2130373012533990706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 2) + (2 - ((n % 2 : ℕ) : ℤ)))

end

end A123208.P2130373012533990706

namespace A123208

/-- `2*(a(n-2)+2-n%2)` -/
def P2130373012533990706.Spec : Prop :=
  ∀ n, P2130373012533990706.a n = A123208 n

end A123208

/-! ## A123208.P10558106603159630876

`a(n-1)+gcd(2%(a(n-1)-a(n-2)), a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A123208.P10558106603159630876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + Int.gcd (Int.tmod 2 ((a (n - 1) : ℤ) - (a (n - 2) : ℤ))) (a (n - 1) : ℤ)

end

end A123208.P10558106603159630876

namespace A123208

/-- `a(n-1)+gcd(2%(a(n-1)-a(n-2)), a(n-1))` -/
def P10558106603159630876.Spec : Prop :=
  ∀ n, (P10558106603159630876.a n : ℤ) = A123208 n

end A123208

/-! ## A123208.P5620470066347931543

`A268896(A032766(n))`
-/

namespace A123208.P5620470066347931543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268896 (A032766 n).toNat

end

end A123208.P5620470066347931543

namespace A123208

/-- `A268896(A032766(n))` -/
def P5620470066347931543.Spec : Prop :=
  ∀ n, P5620470066347931543.a n = A123208 n

end A123208

/-! ## A123208.P361660226365056012

`A354788(n)+A140407(n)`
-/

namespace A123208.P361660226365056012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354788 n + A140407 n

end

end A123208.P361660226365056012

namespace A123208

/-- `A354788(n)+A140407(n)` -/
def P361660226365056012.Spec : Prop :=
  ∀ n, P361660226365056012.a n = A123208 n

end A123208

/-! ## A123208.P1278905597753171776

`∩[A268896(n)-2, A268896(n)]`
-/

namespace A123208.P1278905597753171776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268896 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268896 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123208.P1278905597753171776

namespace A123208

/-- `∩[A268896(n)-2, A268896(n)]` -/
def P1278905597753171776.Spec : Prop :=
  ∀ n, (P1278905597753171776.a n : ℤ) = A123208 n

end A123208

/-! ## A123208.P7744820063825596580

`2*A083416(n+1)-A016116(n)`
-/

namespace A123208.P7744820063825596580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083416 (n + 1) - A016116 n

end

end A123208.P7744820063825596580

namespace A123208

/-- `2*A083416(n+1)-A016116(n)` -/
def P7744820063825596580.Spec : Prop :=
  ∀ n, P7744820063825596580.a n = A123208 n

end A123208

/-! ## A123208.P840659242506317528

`A083416(n+1)+A075427(n)-A094024(n)`
-/

namespace A123208.P840659242506317528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083416 (n + 1) + (A075427 n - A094024 n)

end

end A123208.P840659242506317528

namespace A123208

/-- `A083416(n+1)+A075427(n)-A094024(n)` -/
def P840659242506317528.Spec : Prop :=
  ∀ n, P840659242506317528.a n = A123208 n

end A123208

/-! ## A123208.P5949389332598162504

`A016116(n)+A220753(n)-A083416(n+1)`
-/

namespace A123208.P5949389332598162504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A220753 n - A083416 (n + 1))

end

end A123208.P5949389332598162504

namespace A123208

/-- `A016116(n)+A220753(n)-A083416(n+1)` -/
def P5949389332598162504.Spec : Prop :=
  ∀ n, P5949389332598162504.a n = A123208 n

end A123208

/-! ## A123208.P14326088786449434390

`A075427(n+1)+A220753(n)-A099942(n+1)`
-/

namespace A123208.P14326088786449434390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (n + 1) + (A220753 n - A099942 (n + 1))

end

end A123208.P14326088786449434390

namespace A123208

/-- `A075427(n+1)+A220753(n)-A099942(n+1)` -/
def P14326088786449434390.Spec : Prop :=
  ∀ n, P14326088786449434390.a n = A123208 n

end A123208

/-! ## A123208.P5106333256204888603

`A083416(n+1)+A099942(n+1)-A075427(n+1)`
-/

namespace A123208.P5106333256204888603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083416 (n + 1) + (A099942 (n + 1) - A075427 (n + 1))

end

end A123208.P5106333256204888603

namespace A123208

/-- `A083416(n+1)+A099942(n+1)-A075427(n+1)` -/
def P5106333256204888603.Spec : Prop :=
  ∀ n, P5106333256204888603.a n = A123208 n

end A123208

/-! ## A123208.P8964923779742662217

`∪[A048487(n), A051633(n)]`
-/

namespace A123208.P8964923779742662217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051633 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123208.P8964923779742662217

namespace A123208

/-- `∪[A048487(n), A051633(n)]` -/
def P8964923779742662217.Spec : Prop :=
  ∀ n, (P8964923779742662217.a n : ℤ) = A123208 n

end A123208

/-! ## A123208.P7020895812296510896

`∪[A131051(n+1), A048487(n)]`
-/

namespace A123208.P7020895812296510896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123208.P7020895812296510896

namespace A123208

/-- `∪[A131051(n+1), A048487(n)]` -/
def P7020895812296510896.Spec : Prop :=
  ∀ n, (P7020895812296510896.a n : ℤ) = A123208 n

end A123208

/-! ## A123208.P7056273182480814941

`(A220753(n)+A083416(n+1))/2`
-/

namespace A123208.P7056273182480814941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220753 n + A083416 (n + 1) : ℚ) / 2

end

end A123208.P7056273182480814941

namespace A123208

/-- `(A220753(n)+A083416(n+1))/2` -/
def P7056273182480814941.Spec : Prop :=
  ∀ n, P7056273182480814941.a n = (A123208 n : ℚ)

end A123208

/-! ## A123208.P12594209839995777891

`A016116(n)+A208901(n+2)/A016116(n+1)`
-/

namespace A123208.P12594209839995777891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) + (A208901 (n + 2) : ℚ) / (A016116 (n + 1) : ℚ)

end

end A123208.P12594209839995777891

namespace A123208

/-- `A016116(n)+A208901(n+2)/A016116(n+1)` -/
def P12594209839995777891.Spec : Prop :=
  ∀ n, P12594209839995777891.a n = (A123208 n : ℚ)

end A123208

/-! ## A123208.P8884068826719045499

`(A208900(n+2)+A000918(n))/A016116(n+1)`
-/

namespace A123208.P8884068826719045499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208900 (n + 2) + A000918 n : ℚ) / (A016116 (n + 1) : ℚ)

end

end A123208.P8884068826719045499

namespace A123208

/-- `(A208900(n+2)+A000918(n))/A016116(n+1)` -/
def P8884068826719045499.Spec : Prop :=
  ∀ n, P8884068826719045499.a n = (A123208 n : ℚ)

end A123208

/-!
# A123210: Numbers k such that (k!)^3 + (k!)^2 + 1 is prime.

The programs for A123210, there is no canonical definition to state claims against.
-/

/-! ## A123210.P10339359187297437702

`record[A046081(∑[A314151(n)])]`
-/

namespace A123210.P10339359187297437702
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123210.P10339359187297437702

/-! ## A123210.P1194929437109643125

`eq[A306250(or(5, n)-3), A339885(n+1)]`
-/

namespace A123210.P1194929437109643125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306250 (Nat.lor 5 n - 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123210.P1194929437109643125

/-!
# A123212: Let S(1) = {1} and, for n > 1, let S(n) be the smallest set containing x, 2x and x^2 for each element x in S(n-1). a(n) is the sum of the elements in S(n).

The programs for A123212, there is no canonical definition to state claims against.
-/

/-! ## A123212.P12613617818203641668

`A349743(or(A000166(n), A261085(n+1)))`
-/

namespace A123212.P12613617818203641668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349743 (Int.lor (A000166 n) (A261085 (n + 1))).toNat

end

end A123212.P12613617818203641668

/-!
# A123214: Primes q such that (2^p + 1)/3 is prime, where p = Prime[q]; or primes in A123176[n].

The programs for A123214, there is no canonical definition to state claims against.
-/

/-! ## A123214.P13169913057292391448

`p?[A123176(n+1)]`
-/

namespace A123214.P13169913057292391448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123214.P13169913057292391448

/-! ## A123214.P11589268239924516788

`filter[A123176(n+1), A010051(#)]`
-/

namespace A123214.P11589268239924516788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123214.P11589268239924516788

/-! ## A123214.P9454274584287045636

`filter[A123176(n+1), A358751(#)]`
-/

namespace A123214.P9454274584287045636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A123214.P9454274584287045636

/-! ## A123214.P17337881507910936728

`filter[A123176(n+1), A373486(#)]`
-/

namespace A123214.P17337881507910936728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A123214.P17337881507910936728

/-! ## A123214.P16834420547879901

`∩[A038616(n+1), A123176(n+1)]`
-/

namespace A123214.P16834420547879901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123214.P16834420547879901

/-!
# A123216: Concatenated index primes. Primes whose indices are the concatenation of the consecutive integers.

The programs for A123216, there is no canonical definition to state claims against.
-/

/-! ## A123216.P1668088402275568404

`A001748(∑[∑[10^n]])/3`
-/

namespace A123216.P1668088402275568404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A123216.P1668088402275568404

/-!
# A123219: Expansion of -x*(x^4 + 52*x^3 - 122*x^2 - 28*x + 1) / ((x-1)*(x^2 - 34*x + 1)*(x^2 + 6*x + 1)).

The programs for A123219, there is no canonical definition to state claims against.
-/

/-! ## A123219.P11321678407928969874

`round((sqrt(2)+1)^n/2)^4`
-/

namespace A123219.P11321678407928969874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2) ^ 4

end

end A123219.P11321678407928969874

/-! ## A123219.P17010771619422318189

`A090390(n)²`
-/

namespace A123219.P17010771619422318189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 n ^ 2

end

end A123219.P17010771619422318189

/-!
# A123222: Expansion of -x * (x-1) * (3*x^2-1) / (9*x^4-8*x^3+4*x-1).

The programs for A123222, the canonical program `A123222.P11869591539324495892` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123222 has offset 1).

The definition of A123222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-3x^2+3x^3)/(1-4x+8x^3-9x^4))` (program `A123222.P11869591539324495892`, by `A123222.P11869591539324495892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123222.P11869591539324495892

`ogf((1-x-3x^2+3x^3)/(1-4x+8x^3-9x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123222

/-- `ogf((1-x-3x^2+3x^3)/(1-4x+8x^3-9x^4))` -/
def P11869591539324495892.Spec : Prop :=
  ∀ n, P11869591539324495892.a n = A123222 (n + 1)

theorem P11869591539324495892.correct : P11869591539324495892.Spec := by
  intro n
  simp only [A123222, Nat.add_sub_cancel]

end A123222

/-! ## A123222.P325843106970373279

`4*a(n-1)-8*a(n-3)+9*a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=31`
-/

namespace A123222.P325843106970373279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 31] fun n a =>
  4 * a (n - 1) - 8 * a (n - 3) + 9 * a (n - 4)

end

end A123222.P325843106970373279

namespace A123222

/-- `4*a(n-1)-8*a(n-3)+9*a(n-4)` -/
def P325843106970373279.Spec : Prop :=
  ∀ n, P325843106970373279.a n = A123222 (n + 1)

end A123222

/-!
# A123224: a(n) = the first row sum of M^(n-1), where M = matrix(4,4, [1,1,1,1;0,1,2,3;0,1,3,6;0,1,4,10]).

The programs for A123224, the canonical program `A123224.P111728678039147481` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123224 has offset 1).

The definition of A123224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123224.P4168923843404054853

`ogf((1-11x+3x^2)/(1-15x+28x^2-15x^3+x^4))`
-/

namespace A123224.P4168923843404054853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -11, 3] [1, -15, 28, -15, 1] n

end

end A123224.P4168923843404054853

namespace A123224

/-- `ogf((1-11x+3x^2)/(1-15x+28x^2-15x^3+x^4))` -/
def P4168923843404054853.Spec : Prop :=
  ∀ n, P4168923843404054853.a n = A123224 (n + 1)

end A123224

/-! ## A123224.P111728678039147481

`15*a(n-1)-28*a(n-2)+15*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=35, a(3)=428`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123224

/-- `15*a(n-1)-28*a(n-2)+15*a(n-3)-a(n-4)` -/
def P111728678039147481.Spec : Prop :=
  ∀ n, P111728678039147481.a n = A123224 (n + 1)

theorem P111728678039147481.correct : P111728678039147481.Spec := by
  intro n
  simp only [A123224, Nat.add_sub_cancel]

end A123224

/-! ## A123224.P14894615518818158866

`∑[A072881(2*(n+1))]`
-/

namespace A123224.P14894615518818158866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072881 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123224.P14894615518818158866

namespace A123224

/-- `∑[A072881(2*(n+1))]` -/
def P14894615518818158866.Spec : Prop :=
  ∀ n, P14894615518818158866.a n = A123224 (n + 1)

end A123224

/-! ## A123224.P714111245988960144

`∑[record[A072881(n+1)^(n%2)]]`
-/

namespace A123224.P714111245988960144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072881 (n + 1) ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123224.P714111245988960144

namespace A123224

/-- `∑[record[A072881(n+1)^(n%2)]]` -/
def P714111245988960144.Spec : Prop :=
  ∀ n, P714111245988960144.a n = A123224 (n + 1)

end A123224

/-! ## A123224.P1422719080486987322

`∑[record[A072881(A133265(n))]]`
-/

namespace A123224.P1422719080486987322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072881 (A133265 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123224.P1422719080486987322

namespace A123224

/-- `∑[record[A072881(A133265(n))]]` -/
def P1422719080486987322.Spec : Prop :=
  ∀ n, P1422719080486987322.a n = A123224 (n + 1)

end A123224

/-! ## A123224.P9650098554030647308

`∑[record[A072881(A065164(n+1))]]`
-/

namespace A123224.P9650098554030647308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072881 (A065164 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123224.P9650098554030647308

namespace A123224

/-- `∑[record[A072881(A065164(n+1))]]` -/
def P9650098554030647308.Spec : Prop :=
  ∀ n, P9650098554030647308.a n = A123224 (n + 1)

end A123224

/-!
# A123225: Triangle read by rows: T(n,d) = (n!/d!)*(n+1)*binomial(2n-d+1,n+1)/(n-d+1) (0 <= d <= n).

The programs for A123225, the canonical program `A123225.P10747356342280397472` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123225 has offset 0).

The definition of A123225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123225.P10747356342280397472

`A094587(n)*A100100(A007401(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123225

/-- `A094587(n)*A100100(A007401(n+1))` -/
def P10747356342280397472.Spec : Prop :=
  ∀ n, P10747356342280397472.a n = A123225 n

theorem P10747356342280397472.correct : P10747356342280397472.Spec := by
  intro n
  simp only [A123225]

end A123225

/-! ## A123225.P18009213953692618612

`A094587(n)*A349727(eq[0, A103451(n)])`
-/

namespace A123225.P18009213953692618612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A349727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A123225.P18009213953692618612

namespace A123225

/-- `A094587(n)*A349727(eq[0, A103451(n)])` -/
def P18009213953692618612.Spec : Prop :=
  ∀ n, P18009213953692618612.a n = A123225 n

end A123225

/-! ## A123225.P3076181518259147476

`A094587(n)*A100100(A003056(n)+1+n)`
-/

namespace A123225.P3076181518259147476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A100100 (A003056 n + 1 + (n : ℤ)).toNat

end

end A123225.P3076181518259147476

namespace A123225

/-- `A094587(n)*A100100(A003056(n)+1+n)` -/
def P3076181518259147476.Spec : Prop :=
  ∀ n, P3076181518259147476.a n = A123225 n

end A123225

/-! ## A123225.P16723126730589624166

`A008279(A061579(n))*A100100(A007401(n+1))`
-/

namespace A123225.P16723126730589624166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A061579 n).toNat * A100100 (A007401 (n + 1)).toNat

end

end A123225.P16723126730589624166

namespace A123225

/-- `A008279(A061579(n))*A100100(A007401(n+1))` -/
def P16723126730589624166.Spec : Prop :=
  ∀ n, P16723126730589624166.a n = A123225 n

end A123225

/-!
# A123227: Expansion of e.g.f.: 2*exp(2*x) / (3 - exp(2*x)).

The programs for A123227, there is no canonical definition to state claims against.
-/

/-! ## A123227.P2492991104994128452

`abs(A009362(n+1))`
-/

namespace A123227.P2492991104994128452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009362 (n + 1)|

end

end A123227.P2492991104994128452

/-! ## A123227.P6750724825656365275

`gcd(3, A008458(n))*A122704(n)`
-/

namespace A123227.P6750724825656365275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A008458 n) : ℤ) * A122704 n

end

end A123227.P6750724825656365275

/-! ## A123227.P9741973893052640126

`A005408(A178334(n))*A122704(n)`
-/

namespace A123227.P9741973893052640126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A178334 n).toNat * A122704 n

end

end A123227.P9741973893052640126

/-! ## A123227.P707596318134506731

`A122704(n)*A158405(A133263(n))`
-/

namespace A123227.P707596318134506731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122704 n * A158405 (A133263 n).toNat

end

end A123227.P707596318134506731

/-! ## A123227.P16983171824523710775

`A004736(A034856(n+1))*A122704(n)`
-/

namespace A123227.P16983171824523710775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A034856 (n + 1)).toNat * A122704 n

end

end A123227.P16983171824523710775

/-! ## A123227.P9818356577443402854

`A102363(2*A178334(n))*A122704(n)`
-/

namespace A123227.P9818356577443402854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (2 * A178334 n).toNat * A122704 n

end

end A123227.P9818356577443402854

/-! ## A123227.P7227679818181721532

`dr(A032033(n))*A122704(n)`
-/

namespace A123227.P7227679818181721532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A032033 n) : ℤ) * A122704 n

end

end A123227.P7227679818181721532

/-!
# A123228: Sum of the n-th powers of the roots of the polynomial x^6 + 14*x^5 + 87*x^4 + 148*x^3 + 87*x^2 + 14*x + 1.

The programs for A123228, the canonical program `A123228.P17626671831313326800` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123228 has offset 0).

The definition of A123228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123228.P17626671831313326800

`ogf((6+64x+284x^2+160x^3+14x^4)/(1+13x+74x^2+74x^3+13x^4+x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123228

/-- `ogf((6+64x+284x^2+160x^3+14x^4)/(1+13x+74x^2+74x^3+13x^4+x^5))` -/
def P17626671831313326800.Spec : Prop :=
  ∀ n, P17626671831313326800.a n = A123228 n

theorem P17626671831313326800.correct : P17626671831313326800.Spec := by
  intro n
  simp only [A123228]

end A123228

/-! ## A123228.P419489603793550200

`2*A123259(n)`
-/

namespace A123228.P419489603793550200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123259 n

end

end A123228.P419489603793550200

namespace A123228

/-- `2*A123259(n)` -/
def P419489603793550200.Spec : Prop :=
  ∀ n, P419489603793550200.a n = A123228 n

end A123228

/-! ## A123228.P9254657056306004555

`A123259(and(n, A107392(n)))+A123259(n)`
-/

namespace A123228.P9254657056306004555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123259 (Int.land (n : ℤ) (A107392 n)).toNat + A123259 n

end

end A123228.P9254657056306004555

namespace A123228

/-- `A123259(and(n, A107392(n)))+A123259(n)` -/
def P9254657056306004555.Spec : Prop :=
  ∀ n, P9254657056306004555.a n = A123228 n

end A123228

/-! ## A123228.P10776598818556875278

`∑{d}[A020639(n+4), A123259(n)+A008683(#)]`
-/

namespace A123228.P10776598818556875278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A123259 n + A008683 d)

end

end A123228.P10776598818556875278

namespace A123228

/-- `∑{d}[A020639(n+4), A123259(n)+A008683(#)]` -/
def P10776598818556875278.Spec : Prop :=
  ∀ n, P10776598818556875278.a n = A123228 n

end A123228

/-! ## A123228.P4770519014867790891

`∑{d}[A006093(n+1)+1, A123259(n)+A008683(#)]`
-/

namespace A123228.P4770519014867790891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A123259 n + A008683 d)

end

end A123228.P4770519014867790891

namespace A123228

/-- `∑{d}[A006093(n+1)+1, A123259(n)+A008683(#)]` -/
def P4770519014867790891.Spec : Prop :=
  ∀ n, P4770519014867790891.a n = A123228 n

end A123228

/-! ## A123228.P17768641346904438444

`∑{d}[A123252(n+1), A123259(n)+A008683(#)]`
-/

namespace A123228.P17768641346904438444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A123259 n + A008683 d)

end

end A123228.P17768641346904438444

namespace A123228

/-- `∑{d}[A123252(n+1), A123259(n)+A008683(#)]` -/
def P17768641346904438444.Spec : Prop :=
  ∀ n, P17768641346904438444.a n = A123228 n

end A123228

/-!
# A123229: Triangle read by rows: T(n, m) = n - (n mod m).

The programs for A123229, the canonical program `A123229.P12258745679374012687` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123229 has offset 1).

The definition of A123229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+1-(row(n)+1)%(col(n)+1)` (program `A123229.P12258745679374012687`, by `A123229.P12258745679374012687.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123229.P12258745679374012687

`row(n)+1-(row(n)+1)%(col(n)+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123229

/-- `row(n)+1-(row(n)+1)%(col(n)+1)` -/
def P12258745679374012687.Spec : Prop :=
  ∀ n, P12258745679374012687.a n = A123229 (n + 1)

theorem P12258745679374012687.correct : P12258745679374012687.Spec := by
  intro n
  simp only [A123229, Nat.add_sub_cancel]

end A123229

/-! ## A123229.P5323369769087788198

`(col(n)+1)*floor((row(n)+1)/(col(n)+1))`
-/

namespace A123229.P5323369769087788198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * ⌊(SequenceMachineLib.triRow n + 1 : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)⌋

end

end A123229.P5323369769087788198

namespace A123229

/-- `(col(n)+1)*floor((row(n)+1)/(col(n)+1))` -/
def P5323369769087788198.Spec : Prop :=
  ∀ n, P5323369769087788198.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P9828241924714560106

`∑[char[∑[n]]]-A048158(n+1)`
-/

namespace A123229.P9828241924714560106
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A048158 (n + 1)

end

end A123229.P9828241924714560106

namespace A123229

/-- `∑[char[∑[n]]]-A048158(n+1)` -/
def P9828241924714560106.Spec : Prop :=
  ∀ n, P9828241924714560106.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P9692243022172750707

`A003056(n)+1-A048158(n+1)`
-/

namespace A123229.P9692243022172750707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A048158 (n + 1))

end

end A123229.P9692243022172750707

namespace A123229

/-- `A003056(n)+1-A048158(n+1)` -/
def P9692243022172750707.Spec : Prop :=
  ∀ n, P9692243022172750707.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P11241414203932001899

`A002260(n+1)*A010766(n+1)`
-/

namespace A123229.P11241414203932001899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A010766 (n + 1)

end

end A123229.P11241414203932001899

namespace A123229

/-- `A002260(n+1)*A010766(n+1)` -/
def P11241414203932001899.Spec : Prop :=
  ∀ n, P11241414203932001899.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P15255038664341288629

`(A002262(n)+1)*A010766(n+1)`
-/

namespace A123229.P15255038664341288629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A010766 (n + 1)

end

end A123229.P15255038664341288629

namespace A123229

/-- `(A002262(n)+1)*A010766(n+1)` -/
def P15255038664341288629.Spec : Prop :=
  ∀ n, P15255038664341288629.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P13037711168092937182

`abs(A010766(n+1)*A140756(n+1))`
-/

namespace A123229.P13037711168092937182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010766 (n + 1) * A140756 (n + 1)|

end

end A123229.P13037711168092937182

namespace A123229

/-- `abs(A010766(n+1)*A140756(n+1))` -/
def P13037711168092937182.Spec : Prop :=
  ∀ n, P13037711168092937182.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P5793907852177884873

`sqrt(A133819(n+1))*A010766(n+1)`
-/

namespace A123229.P5793907852177884873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A010766 (n + 1) : ℝ)

end

end A123229.P5793907852177884873

namespace A123229

/-- `sqrt(A133819(n+1))*A010766(n+1)` -/
def P5793907852177884873.Spec : Prop :=
  ∀ n, P5793907852177884873.a n = (A123229 (n + 1) : ℝ)

end A123229

/-! ## A123229.P16543630649410038827

`(sqrt(A143844(n))+1)*A010766(n+1)`
-/

namespace A123229.P16543630649410038827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A143844 n : ℝ) + 1) * (A010766 (n + 1) : ℝ)

end

end A123229.P16543630649410038827

namespace A123229

/-- `(sqrt(A143844(n))+1)*A010766(n+1)` -/
def P16543630649410038827.Spec : Prop :=
  ∀ n, P16543630649410038827.a n = (A123229 (n + 1) : ℝ)

end A123229

/-! ## A123229.P4929327052758281815

`(A050206(n+2)-1)*A002260(n+1)`
-/

namespace A123229.P4929327052758281815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050206 (n + 2) - 1) * A002260 (n + 1)

end

end A123229.P4929327052758281815

namespace A123229

/-- `(A050206(n+2)-1)*A002260(n+1)` -/
def P4929327052758281815.Spec : Prop :=
  ∀ n, P4929327052758281815.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P5582958518321058877

`A002260(n+1)*A010783(A038722(n+1))`
-/

namespace A123229.P5582958518321058877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A010783 (A038722 (n + 1)).toNat

end

end A123229.P5582958518321058877

namespace A123229

/-- `A002260(n+1)*A010783(A038722(n+1))` -/
def P5582958518321058877.Spec : Prop :=
  ∀ n, P5582958518321058877.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P9814702348638607913

`A002260(n+1)*A002260(A128489(n+1))`
-/

namespace A123229.P9814702348638607913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A002260 (A128489 (n + 1)).toNat

end

end A123229.P9814702348638607913

namespace A123229

/-- `A002260(n+1)*A002260(A128489(n+1))` -/
def P9814702348638607913.Spec : Prop :=
  ∀ n, P9814702348638607913.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P5867304379631200284

`A002260(n+1)*A004736(A286235(n+1))`
-/

namespace A123229.P5867304379631200284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (A286235 (n + 1)).toNat

end

end A123229.P5867304379631200284

namespace A123229

/-- `A002260(n+1)*A004736(A286235(n+1))` -/
def P5867304379631200284.Spec : Prop :=
  ∀ n, P5867304379631200284.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P3193552326083447866

`A002260(n+1)*A004736(A286245(n+1))`
-/

namespace A123229.P3193552326083447866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (A286245 (n + 1)).toNat

end

end A123229.P3193552326083447866

namespace A123229

/-- `A002260(n+1)*A004736(A286245(n+1))` -/
def P3193552326083447866.Spec : Prop :=
  ∀ n, P3193552326083447866.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P5441969516586469329

`A010766(n+1)/A007318(n)*A103406(n)`
-/

namespace A123229.P5441969516586469329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010766 (n + 1) : ℚ) / (A007318 n : ℚ) * (A103406 n : ℚ)

end

end A123229.P5441969516586469329

namespace A123229

/-- `A010766(n+1)/A007318(n)*A103406(n)` -/
def P5441969516586469329.Spec : Prop :=
  ∀ n, P5441969516586469329.a n = (A123229 (n + 1) : ℚ)

end A123229

/-! ## A123229.P11339805917705801927

`A002260(n+1)*A002260(C(A050206(n+2), 2))`
-/

namespace A123229.P11339805917705801927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A002260 (Nat.choose (A050206 (n + 2)).toNat 2)

end

end A123229.P11339805917705801927

namespace A123229

/-- `A002260(n+1)*A002260(C(A050206(n+2), 2))` -/
def P11339805917705801927.Spec : Prop :=
  ∀ n, P11339805917705801927.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P10472556398091502466

`A002260(A004736(n+1)-A048158(n+1)+n)`
-/

namespace A123229.P10472556398091502466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A004736 (n + 1) - A048158 (n + 1) + (n : ℤ)).toNat

end

end A123229.P10472556398091502466

namespace A123229

/-- `A002260(A004736(n+1)-A048158(n+1)+n)` -/
def P10472556398091502466.Spec : Prop :=
  ∀ n, P10472556398091502466.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P15168073247582445754

`(A002024(n+1)-A025581(n))*A010766(n+1)`
-/

namespace A123229.P15168073247582445754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) - A025581 n) * A010766 (n + 1)

end

end A123229.P15168073247582445754

namespace A123229

/-- `(A002024(n+1)-A025581(n))*A010766(n+1)` -/
def P15168073247582445754.Spec : Prop :=
  ∀ n, P15168073247582445754.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P16745893717056668513

`A002024(n+1)+A010766(n+1)-A234575(n+1)`
-/

namespace A123229.P16745893717056668513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A010766 (n + 1) - A234575 (n + 1))

end

end A123229.P16745893717056668513

namespace A123229

/-- `A002024(n+1)+A010766(n+1)-A234575(n+1)` -/
def P16745893717056668513.Spec : Prop :=
  ∀ n, P16745893717056668513.a n = A123229 (n + 1)

end A123229

/-! ## A123229.P10330170306769967005

`(A234575(n+1)-A048158(n+1))*A002260(n+1)`
-/

namespace A123229.P10330170306769967005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A234575 (n + 1) - A048158 (n + 1)) * A002260 (n + 1)

end

end A123229.P10330170306769967005

namespace A123229

/-- `(A234575(n+1)-A048158(n+1))*A002260(n+1)` -/
def P10330170306769967005.Spec : Prop :=
  ∀ n, P10330170306769967005.a n = A123229 (n + 1)

end A123229

/-!
# A123230: Triangle read by rows: T(n,k) is the coefficient of x^k in the polynomial p(n,x) defined by p(0,x)=1, p(1,x)=1+x, p(n,x)=xp(n-1,x)+(-1)^(n+1)p(n-2,x) for n>=2.

The programs for A123230, there is no canonical definition to state claims against.
-/

/-! ## A123230.P7329687623862377067

`A136705(gcd(A026424(3*n+1), A303259(n)))`
-/

namespace A123230.P7329687623862377067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136705 (Int.gcd (A026424 (3 * n + 1)) (A303259 n))

end

end A123230.P7329687623862377067

/-! ## A123230.P829202692214798241

`A008683(A032925(3*n+4))^A103999(2*n+3)`
-/

namespace A123230.P829202692214798241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A032925 (3 * n + 4)).toNat : ℚ) ^ (A103999 (2 * n + 3) : ℤ)

end

end A123230.P829202692214798241

/-! ## A123230.P9718302484206224027

`A008683(A032925(3*n+4))^A273294(A273276(n))`
-/

namespace A123230.P9718302484206224027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A032925 (3 * n + 4)).toNat : ℚ) ^ (A273294 (A273276 n).toNat : ℤ)

end

end A123230.P9718302484206224027

/-! ## A123230.P5423268503646564983

`A008683(A032925(3*n+4))^A111845(A082977(n+1))`
-/

namespace A123230.P5423268503646564983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A032925 (3 * n + 4)).toNat : ℚ) ^ (A111845 (A082977 (n + 1)).toNat : ℤ)

end

end A123230.P5423268503646564983

/-! ## A123230.P9359092753494481377

`A131720(A014153(n))^A205590(n+1)`
-/

namespace A123230.P9359092753494481377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131720 (A014153 n).toNat : ℚ) ^ (A205590 (n + 1) : ℤ)

end

end A123230.P9359092753494481377

/-!
# A123231: Row sums of A123230.

The programs for A123231, the canonical program `A123231.P9037956020649098209` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123231 has offset 1).

The definition of A123231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123231.P9037956020649098209

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123231

/-- `a(n-2)+a(n-4)` -/
def P9037956020649098209.Spec : Prop :=
  ∀ n, (P9037956020649098209.a n : ℤ) = A123231 (n + 1)

theorem P9037956020649098209.correct : P9037956020649098209.Spec := by
  intro n
  simp only [A123231, Nat.add_sub_cancel]

end A123231

/-! ## A123231.P541198526199691089

`A053602(n+2)`
-/

namespace A123231.P541198526199691089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 2)

end

end A123231.P541198526199691089

namespace A123231

/-- `A053602(n+2)` -/
def P541198526199691089.Spec : Prop :=
  ∀ n, P541198526199691089.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P14017768740758632299

`A000045(3/4-(-1)^(n+2)*3/4+(n+2)/2)`
-/

namespace A123231.P14017768740758632299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((3 : ℚ) / 4 - ((-1) ^ (n + 2) * 3 : ℚ) / 4 + (n + 2 : ℚ) / 2)).toNat

end

end A123231.P14017768740758632299

namespace A123231

/-- `A000045(3/4-(-1)^(n+2)*3/4+(n+2)/2)` -/
def P14017768740758632299.Spec : Prop :=
  ∀ n, P14017768740758632299.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P8336427985358666049

`round(ϕ*a(n-2))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A123231.P8336427985358666049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 2) : ℝ))

end

end A123231.P8336427985358666049

namespace A123231

/-- `round(ϕ*a(n-2))` -/
def P8336427985358666049.Spec : Prop :=
  ∀ n, P8336427985358666049.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P4617743018892087213

`ogf((1+2x+x^3)/(1-x^2-x^4))`
-/

namespace A123231.P4617743018892087213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, 1] [1, 0, -1, 0, -1] n

end

end A123231.P4617743018892087213

namespace A123231

/-- `ogf((1+2x+x^3)/(1-x^2-x^4))` -/
def P4617743018892087213.Spec : Prop :=
  ∀ n, P4617743018892087213.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P3572426744040584244

`a(n-1)-(-1)^n*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A123231.P3572426744040584244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (-1) ^ n * a (n - 2)

end

end A123231.P3572426744040584244

namespace A123231

/-- `a(n-1)-(-1)^n*a(n-2)` -/
def P3572426744040584244.Spec : Prop :=
  ∀ n, P3572426744040584244.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P7709440374969610278

`a(n-1)-a(n-2)/(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A123231.P7709440374969610278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - a (n - 2) / ((-1) ^ n : ℚ)

end

end A123231.P7709440374969610278

namespace A123231

/-- `a(n-1)-a(n-2)/(-1)^n` -/
def P7709440374969610278.Spec : Prop :=
  ∀ n, P7709440374969610278.a n = (A123231 (n + 1) : ℚ)

end A123231

/-! ## A123231.P14500326706845309162

`A272912(n+4)`
-/

namespace A123231.P14500326706845309162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (n + 4)

end

end A123231.P14500326706845309162

namespace A123231

/-- `A272912(n+4)` -/
def P14500326706845309162.Spec : Prop :=
  ∀ n, P14500326706845309162.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P17983736759555473

`A076899(3*(n+1))`
-/

namespace A123231.P17983736759555473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076899 (3 * (n + 1))

end

end A123231.P17983736759555473

namespace A123231

/-- `A076899(3*(n+1))` -/
def P17983736759555473.Spec : Prop :=
  ∀ n, P17983736759555473.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P9478225812320823178

`A097575(A014601(n))`
-/

namespace A123231.P9478225812320823178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A014601 n).toNat

end

end A123231.P9478225812320823178

namespace A123231

/-- `A097575(A014601(n))` -/
def P9478225812320823178.Spec : Prop :=
  ∀ n, P9478225812320823178.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P7875100120250340505

`A097575(A067016(n+1))`
-/

namespace A123231.P7875100120250340505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A067016 (n + 1)).toNat

end

end A123231.P7875100120250340505

namespace A123231

/-- `A097575(A067016(n+1))` -/
def P7875100120250340505.Spec : Prop :=
  ∀ n, P7875100120250340505.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P5405428028764785071

`A212804(A052938(n)+1)`
-/

namespace A123231.P5405428028764785071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A052938 n + 1).toNat

end

end A123231.P5405428028764785071

namespace A123231

/-- `A212804(A052938(n)+1)` -/
def P5405428028764785071.Spec : Prop :=
  ∀ n, P5405428028764785071.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P14976396625501869996

`A212804(A060762(n+1))`
-/

namespace A123231.P14976396625501869996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A060762 (n + 1)).toNat

end

end A123231.P14976396625501869996

namespace A123231

/-- `A212804(A060762(n+1))` -/
def P14976396625501869996.Spec : Prop :=
  ∀ n, P14976396625501869996.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P10638935203257920015

`A327035(A049636(n+1))`
-/

namespace A123231.P10638935203257920015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A049636 (n + 1)).toNat

end

end A123231.P10638935203257920015

namespace A123231

/-- `A327035(A049636(n+1))` -/
def P10638935203257920015.Spec : Prop :=
  ∀ n, P10638935203257920015.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P11436636734431019013

`A327035(A168197(n+1))`
-/

namespace A123231.P11436636734431019013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (A168197 (n + 1)).toNat

end

end A123231.P11436636734431019013

namespace A123231

/-- `A327035(A168197(n+1))` -/
def P11436636734431019013.Spec : Prop :=
  ∀ n, P11436636734431019013.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P3940800720462337907

`A103610(A072834(n+2))`
-/

namespace A123231.P3940800720462337907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A072834 (n + 2)).toNat

end

end A123231.P3940800720462337907

namespace A123231

/-- `A103610(A072834(n+2))` -/
def P3940800720462337907.Spec : Prop :=
  ∀ n, P3940800720462337907.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P6789908685543968264

`A321664(A007494(n)+2)`
-/

namespace A123231.P6789908685543968264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A007494 n + 2).toNat

end

end A123231.P6789908685543968264

namespace A123231

/-- `A321664(A007494(n)+2)` -/
def P6789908685543968264.Spec : Prop :=
  ∀ n, P6789908685543968264.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P6038923734118855807

`A324969(A030451(n)+2)`
-/

namespace A123231.P6038923734118855807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A030451 n + 2).toNat

end

end A123231.P6038923734118855807

namespace A123231

/-- `A324969(A030451(n)+2)` -/
def P6038923734118855807.Spec : Prop :=
  ∀ n, P6038923734118855807.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P18853535752879421

`A103609(A165754(n+3))`
-/

namespace A123231.P18853535752879421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A165754 (n + 3)).toNat

end

end A123231.P18853535752879421

namespace A123231

/-- `A103609(A165754(n+3))` -/
def P18853535752879421.Spec : Prop :=
  ∀ n, P18853535752879421.a n = A123231 (n + 1)

end A123231

/-! ## A123231.P12134399890572963300

`A163227(n+1)+A000035(n)`
-/

namespace A123231.P12134399890572963300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (n + 1) + A000035 n

end

end A123231.P12134399890572963300

namespace A123231

/-- `A163227(n+1)+A000035(n)` -/
def P12134399890572963300.Spec : Prop :=
  ∀ n, P12134399890572963300.a n = A123231 (n + 1)

end A123231

/-!
# A123232: Numbers n such that (2*n)^2 + 1 and (2*n)^2 + 3 are both prime.

The programs for A123232, there is no canonical definition to state claims against.
-/

/-! ## A123232.P14799352407698816479

`A080149(n+1)/2`
-/

namespace A123232.P14799352407698816479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080149 (n + 1) : ℚ) / 2

end

end A123232.P14799352407698816479

/-! ## A123232.P12739635305312216315

`sqrt(A145823(n+1))/2`
-/

namespace A123232.P12739635305312216315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145823 (n + 1) : ℝ) / 2

end

end A123232.P12739635305312216315

/-! ## A123232.P1696552552555820107

`floor(sqrt(A145824(n+1))/2)`
-/

namespace A123232.P1696552552555820107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A145824 (n + 1) : ℝ) / 2⌋

end

end A123232.P1696552552555820107

/-! ## A123232.P12705683954758574705

`A000027(round(sqrt(A145824(n+1))/2))`
-/

namespace A123232.P12705683954758574705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A145824 (n + 1) : ℝ) / 2)).toNat

end

end A123232.P12705683954758574705

/-! ## A123232.P18147365386141687271

`∩[A049422(n+1), A109807(n+1)]/2`
-/

namespace A123232.P18147365386141687271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109807 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A123232.P18147365386141687271

/-! ## A123232.P16973129721035868704

`ceil(sqrt(A145824(n+1))/2-(A004442(n)-n)²)`
-/

namespace A123232.P16973129721035868704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A145824 (n + 1) : ℝ) / 2 - ((A004442 n - (n : ℤ)) ^ 2 : ℝ)⌉

end

end A123232.P16973129721035868704

/-! ## A123232.P5373970111299242614

`∩[A001912(n+1), A097697(n+1)]`
-/

namespace A123232.P5373970111299242614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123232.P5373970111299242614

/-! ## A123232.P10450297190697389096

`∩[A005574(n+1), A049422(n+1)]/2`
-/

namespace A123232.P10450297190697389096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A123232.P10450297190697389096

/-! ## A123232.P5559195291017114985

`A273943(A080149(n+1))`
-/

namespace A123232.P5559195291017114985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A080149 (n + 1)).toNat

end

end A123232.P5559195291017114985

/-! ## A123232.P15202711647382609605

`A302042(A080149(Δ[n²]-n))`
-/

namespace A123232.P15202711647382609605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A080149 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A123232.P15202711647382609605

/-! ## A123232.P10088218906969341104

`A302042(A080149(n+1)+2)-1`
-/

namespace A123232.P10088218906969341104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A080149 (n + 1) + 2).toNat - 1

end

end A123232.P10088218906969341104

/-! ## A123232.P14628109491619279533

`A249122(ceil(sqrt(A145824(n+1))))`
-/

namespace A123232.P14628109491619279533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 ⌈Real.sqrt (A145824 (n + 1) : ℝ)⌉.toNat

end

end A123232.P14628109491619279533

/-! ## A123232.P2993783460140024131

`A255591(3*A080149(n+1))`
-/

namespace A123232.P2993783460140024131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (3 * A080149 (n + 1)).toNat

end

end A123232.P2993783460140024131

/-! ## A123232.P18269496767302911443

`eq[1, A138205(2*(n+1))]+1`
-/

namespace A123232.P18269496767302911443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138205 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123232.P18269496767302911443

/-! ## A123232.P11651725272164285108

`A001281(A080149(n+1))`
-/

namespace A123232.P11651725272164285108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A080149 (n + 1)).toNat

end

end A123232.P11651725272164285108

/-! ## A123232.P12777403554865857510

`A003602(A080149(n+1)-1)`
-/

namespace A123232.P12777403554865857510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A080149 (n + 1) - 1).toNat

end

end A123232.P12777403554865857510

/-! ## A123232.P15837289765835077944

`A008619(A080149(n+1)-1)`
-/

namespace A123232.P15837289765835077944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A080149 (n + 1) - 1).toNat

end

end A123232.P15837289765835077944

/-! ## A123232.P5281686512187196110

`A004525(A080149(n+1)+2)-1`
-/

namespace A123232.P5281686512187196110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A080149 (n + 1) + 2).toNat - 1

end

end A123232.P5281686512187196110

/-! ## A123232.P4333619072075977556

`A004442(ceil(sqrt(A145824(n+1))))/2`
-/

namespace A123232.P4333619072075977556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 ⌈Real.sqrt (A145824 (n + 1) : ℝ)⌉.toNat : ℚ) / 2

end

end A123232.P4333619072075977556

/-!
# A123234: Number of n X n Latin squares up to row and column permutation (also known as "principal isotopy", "principal isotopism" or "RC-equivalence").

The programs for A123234, there is no canonical definition to state claims against.
-/

/-! ## A123234.P9719218392445098518

`A338986(A333071(n))`
-/

namespace A123234.P9719218392445098518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338986 (A333071 n).toNat

end

end A123234.P9719218392445098518

/-! ## A123234.P9382990769415246622

`A338986(A135450(n+1))`
-/

namespace A123234.P9382990769415246622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338986 (A135450 (n + 1)).toNat

end

end A123234.P9382990769415246622

/-!
# A123237: A000316-like neo-Hankel matrix determinant sequence.

The programs for A123237, there is no canonical definition to state claims against.
-/

/-! ## A123237.P12022615644428767485

`A349441(A122399(n)+A001182(n+1))`
-/

namespace A123237.P12022615644428767485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349441 (A122399 n + A001182 (n + 1)).toNat

end

end A123237.P12022615644428767485

/-!
# A123239: Primes that do not divide 3^k - 2 for any k.

The programs for A123239, there is no canonical definition to state claims against.
-/

/-! ## A123239.P175367598976949954

`filter[A179439(n+1), A305816(#)]`
-/

namespace A123239.P175367598976949954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305816 (f1 j).toNat = 1) n)

end

end A123239.P175367598976949954

/-! ## A123239.P15981814836397194330

`∩[A091206(n+1), A179439(n+1)]`
-/

namespace A123239.P15981814836397194330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123239.P15981814836397194330

/-! ## A123239.P9127731599465031648

`∩[A091206(n+1), A325456(A187899(n+1))]`
-/

namespace A123239.P9127731599465031648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (A187899 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123239.P9127731599465031648

/-! ## A123239.P10463793365003254583

`p?[eq[1, A343430(A088298(n+1))]]`
-/

namespace A123239.P10463793365003254583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (A088298 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A123239.P10463793365003254583

/-!
# A123240: Natural numbers with number of divisors not equal to a Fibonacci number.

The programs for A123240, the canonical program `A123240.P10296889505221293768` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123240 has offset 1).

The definition of A123240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6621 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123240.P8240097018292155752

`comp[A123193(n+1)-1]+1`
-/

namespace A123240.P8240097018292155752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A123240.P8240097018292155752

namespace A123240

/-- `comp[A123193(n+1)-1]+1` -/
def P8240097018292155752.Spec : Prop :=
  ∀ n, (P8240097018292155752.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P10296889505221293768

`eq[0, A122895(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123240

/-- `eq[0, A122895(n+1)]+1` -/
def P10296889505221293768.Spec : Prop :=
  ∀ n, (P10296889505221293768.a n : ℤ) = A123240 (n + 1)

theorem P10296889505221293768.correct : P10296889505221293768.Spec := by
  intro n
  simp only [A123240, Nat.add_sub_cancel]

end A123240

/-! ## A123240.P17869323635613756257

`eq[0, A192687(A032741(n))]`
-/

namespace A123240.P17869323635613756257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123240.P17869323635613756257

namespace A123240

/-- `eq[0, A192687(A032741(n))]` -/
def P17869323635613756257.Spec : Prop :=
  ∀ n, (P17869323635613756257.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P10835508822816683917

`lt[A010056(A032741(n)+1), 1]`
-/

namespace A123240.P10835508822816683917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A032741 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A123240.P10835508822816683917

namespace A123240

/-- `lt[A010056(A032741(n)+1), 1]` -/
def P10835508822816683917.Spec : Prop :=
  ∀ n, (P10835508822816683917.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P10335939807372240146

`eq[0, A122895(A000038(n)+n)]`
-/

namespace A123240.P10335939807372240146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123240.P10335939807372240146

namespace A123240

/-- `eq[0, A122895(A000038(n)+n)]` -/
def P10335939807372240146.Spec : Prop :=
  ∀ n, (P10335939807372240146.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P9105092447781652550

`eq[0, A122895(A065033(2*n))]`
-/

namespace A123240.P9105092447781652550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123240.P9105092447781652550

namespace A123240

/-- `eq[0, A122895(A065033(2*n))]` -/
def P9105092447781652550.Spec : Prop :=
  ∀ n, (P9105092447781652550.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P8482967722550831084

`∪[A139587(n+1), A139590(n+1)]`
-/

namespace A123240.P8482967722550831084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123240.P8482967722550831084

namespace A123240

/-- `∪[A139587(n+1), A139590(n+1)]` -/
def P8482967722550831084.Spec : Prop :=
  ∀ n, (P8482967722550831084.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P2547004451578093533

`∪[A139587(n+1), A176525(n+1)]`
-/

namespace A123240.P2547004451578093533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A123240.P2547004451578093533

namespace A123240

/-- `∪[A139587(n+1), A176525(n+1)]` -/
def P2547004451578093533.Spec : Prop :=
  ∀ n, (P2547004451578093533.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P10253707382334927193

`eq[0, A122895(A233583(n+1))]`
-/

namespace A123240.P10253707382334927193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123240.P10253707382334927193

namespace A123240

/-- `eq[0, A122895(A233583(n+1))]` -/
def P10253707382334927193.Spec : Prop :=
  ∀ n, (P10253707382334927193.a n : ℤ) = A123240 (n + 1)

end A123240

/-! ## A123240.P16824649309532266418

`A131181(n+1)/A280497(A175791(n+1))`
-/

namespace A123240.P16824649309532266418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131181 (n + 1) : ℚ) / (A280497 (A175791 (n + 1)).toNat : ℚ)

end

end A123240.P16824649309532266418

namespace A123240

/-- `A131181(n+1)/A280497(A175791(n+1))` -/
def P16824649309532266418.Spec : Prop :=
  ∀ n, P16824649309532266418.a n = (A123240 (n + 1) : ℚ)

end A123240

/-! ## A123240.P8997047889209940671

`A131181(n+1)/A280497(A180559(2*(n+2)))`
-/

namespace A123240.P8997047889209940671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131181 (n + 1) : ℚ) / (A280497 (A180559 (2 * (n + 2))).toNat : ℚ)

end

end A123240.P8997047889209940671

namespace A123240

/-- `A131181(n+1)/A280497(A180559(2*(n+2)))` -/
def P8997047889209940671.Spec : Prop :=
  ∀ n, P8997047889209940671.a n = (A123240 (n + 1) : ℚ)

end A123240

/-! ## A123240.P6012151231516949419

`A131181(A014709(n²)+n)`
-/

namespace A123240.P6012151231516949419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131181 (A014709 (n ^ 2) + (n : ℤ)).toNat

end

end A123240.P6012151231516949419

namespace A123240

/-- `A131181(A014709(n²)+n)` -/
def P6012151231516949419.Spec : Prop :=
  ∀ n, P6012151231516949419.a n = A123240 (n + 1)

end A123240

/-!
# A123241: Number of squares < lesser of twin primes.

The programs for A123241, the canonical program `A123241.P8263997889294060912` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123241 has offset 1).

The definition of A123241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123241.P8263997889294060912

`A003059(A001359(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A123241

/-- `A003059(A001359(n+1))` -/
def P8263997889294060912.Spec : Prop :=
  ∀ n, P8263997889294060912.a n = A123241 (n + 1)

theorem P8263997889294060912.correct : P8263997889294060912.Spec := by
  intro n
  simp only [A123241, Nat.add_sub_cancel]

end A123241

/-! ## A123241.P880739235039942326

`ceil(sqrt(A001359(n+1)))`
-/

namespace A123241.P880739235039942326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001359 (n + 1) : ℝ)⌉

end

end A123241.P880739235039942326

namespace A123241

/-- `ceil(sqrt(A001359(n+1)))` -/
def P880739235039942326.Spec : Prop :=
  ∀ n, P880739235039942326.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P10899417380977595824

`ceil(sqrt(A014574(n+1)))`
-/

namespace A123241.P10899417380977595824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A014574 (n + 1) : ℝ)⌉

end

end A123241.P10899417380977595824

namespace A123241

/-- `ceil(sqrt(A014574(n+1)))` -/
def P10899417380977595824.Spec : Prop :=
  ∀ n, P10899417380977595824.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P11107118745143304176

`ceil(sqrt(A111166(n+1)))`
-/

namespace A123241.P11107118745143304176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A111166 (n + 1) : ℝ)⌉

end

end A123241.P11107118745143304176

namespace A123241

/-- `ceil(sqrt(A111166(n+1)))` -/
def P11107118745143304176.Spec : Prop :=
  ∀ n, P11107118745143304176.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P13628812667939751910

`ceil(sqrt(A123080(n+1)))`
-/

namespace A123241.P13628812667939751910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A123080 (n + 1) : ℝ)⌉

end

end A123241.P13628812667939751910

namespace A123241

/-- `ceil(sqrt(A123080(n+1)))` -/
def P13628812667939751910.Spec : Prop :=
  ∀ n, P13628812667939751910.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P7301846681430021194

`ceil(sqrt(sqrt(A037074(n+1))))`
-/

namespace A123241.P7301846681430021194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A037074 (n + 1) : ℝ))⌉

end

end A123241.P7301846681430021194

namespace A123241

/-- `ceil(sqrt(sqrt(A037074(n+1))))` -/
def P7301846681430021194.Spec : Prop :=
  ∀ n, P7301846681430021194.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P10991165457470906978

`ceil(sqrt(sqrt(A120875(n+1))))`
-/

namespace A123241.P10991165457470906978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A120875 (n + 1) : ℝ))⌉

end

end A123241.P10991165457470906978

namespace A123241

/-- `ceil(sqrt(sqrt(A120875(n+1))))` -/
def P10991165457470906978.Spec : Prop :=
  ∀ n, P10991165457470906978.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P14612076579766178645

`floor(sqrt(A144834(n+1)))+1`
-/

namespace A123241.P14612076579766178645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A144834 (n + 1)) + 1

end

end A123241.P14612076579766178645

namespace A123241

/-- `floor(sqrt(A144834(n+1)))+1` -/
def P14612076579766178645.Spec : Prop :=
  ∀ n, P14612076579766178645.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P3457775019672957844

`ceil(sqrt(A124588(n+2)))`
-/

namespace A123241.P3457775019672957844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A124588 (n + 2) : ℝ)⌉

end

end A123241.P3457775019672957844

namespace A123241

/-- `ceil(sqrt(A124588(n+2)))` -/
def P3457775019672957844.Spec : Prop :=
  ∀ n, P3457775019672957844.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P2883399126600895704

`ceil(sqrt(A181747(n+2)))`
-/

namespace A123241.P2883399126600895704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A181747 (n + 2) : ℝ)⌉

end

end A123241.P2883399126600895704

namespace A123241

/-- `ceil(sqrt(A181747(n+2)))` -/
def P2883399126600895704.Spec : Prop :=
  ∀ n, P2883399126600895704.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P17768112106622778018

`ceil(sqrt(A001097(2*n+1)))`
-/

namespace A123241.P17768112106622778018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001097 (2 * n + 1) : ℝ)⌉

end

end A123241.P17768112106622778018

namespace A123241

/-- `ceil(sqrt(A001097(2*n+1)))` -/
def P17768112106622778018.Spec : Prop :=
  ∀ n, P17768112106622778018.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P17397220064443991865

`ceil(sqrt(A077800(2*n+1)))`
-/

namespace A123241.P17397220064443991865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A077800 (2 * n + 1) : ℝ)⌉

end

end A123241.P17397220064443991865

namespace A123241

/-- `ceil(sqrt(A077800(2*n+1)))` -/
def P17397220064443991865.Spec : Prop :=
  ∀ n, P17397220064443991865.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P17019343211575374369

`ceil(sqrt(A171821(2*n+1)))`
-/

namespace A123241.P17019343211575374369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A171821 (2 * n + 1) : ℝ)⌉

end

end A123241.P17019343211575374369

namespace A123241

/-- `ceil(sqrt(A171821(2*n+1)))` -/
def P17019343211575374369.Spec : Prop :=
  ∀ n, P17019343211575374369.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P11188823794292991277

`ceil(sqrt(A265760(2*n+1)))`
-/

namespace A123241.P11188823794292991277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A265760 (2 * n + 1) : ℝ)⌉

end

end A123241.P11188823794292991277

namespace A123241

/-- `ceil(sqrt(A265760(2*n+1)))` -/
def P11188823794292991277.Spec : Prop :=
  ∀ n, P11188823794292991277.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P15107603455297362304

`A079636(A029707(n+1))`
-/

namespace A123241.P15107603455297362304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079636 (A029707 (n + 1)).toNat

end

end A123241.P15107603455297362304

namespace A123241

/-- `A079636(A029707(n+1))` -/
def P15107603455297362304.Spec : Prop :=
  ∀ n, P15107603455297362304.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P9540100019142103394

`A003059(A014574(n+1))`
-/

namespace A123241.P9540100019142103394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A014574 (n + 1)).toNat

end

end A123241.P9540100019142103394

namespace A123241

/-- `A003059(A014574(n+1))` -/
def P9540100019142103394.Spec : Prop :=
  ∀ n, P9540100019142103394.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P10790123848220142238

`A003059(A111166(n+1))`
-/

namespace A123241.P10790123848220142238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A111166 (n + 1)).toNat

end

end A123241.P10790123848220142238

namespace A123241

/-- `A003059(A111166(n+1))` -/
def P10790123848220142238.Spec : Prop :=
  ∀ n, P10790123848220142238.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P28113879288296929

`A003059(A123080(n+1))`
-/

namespace A123241.P28113879288296929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A123080 (n + 1)).toNat

end

end A123241.P28113879288296929

namespace A123241

/-- `A003059(A123080(n+1))` -/
def P28113879288296929.Spec : Prop :=
  ∀ n, P28113879288296929.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P7555896155138279200

`A003059(A124588(n+2))`
-/

namespace A123241.P7555896155138279200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A124588 (n + 2)).toNat

end

end A123241.P7555896155138279200

namespace A123241

/-- `A003059(A124588(n+2))` -/
def P7555896155138279200.Spec : Prop :=
  ∀ n, P7555896155138279200.a n = A123241 (n + 1)

end A123241

/-! ## A123241.P14690866738087620944

`A003059(A181747(n+2))`
-/

namespace A123241.P14690866738087620944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A181747 (n + 2)).toNat

end

end A123241.P14690866738087620944

namespace A123241

/-- `A003059(A181747(n+2))` -/
def P14690866738087620944.Spec : Prop :=
  ∀ n, P14690866738087620944.a n = A123241 (n + 1)

end A123241

/-!
# A123244: Triangle read by rows: coefficients of expansion in powers of x of the polynomials defined by p(n, x) = (2*n - 1)*p(n - 1, x) + (n - 1)^2*x^2*p(n - 2, x).

The programs for A123244, there is no canonical definition to state claims against.
-/

/-! ## A123244.P3815880672256953273

`A046268(A046268(n))+A001497(n)`
-/

namespace A123244.P3815880672256953273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 (A046268 n).toNat + A001497 n

end

end A123244.P3815880672256953273

/-!
# A123245: Triangle A079487 with reversed rows.

The programs for A123245, there is no canonical definition to state claims against.
-/

/-! ## A123245.P17871086742271028109

`A079487(∑[2*n]%comp[∑[n]])`
-/

namespace A123245.P17871086742271028109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A123245.P17871086742271028109

/-! ## A123245.P7995411597664189612

`A079487(∑[char[∑[n]]]²-n-1)`
-/

namespace A123245.P7995411597664189612
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A123245.P7995411597664189612

/-! ## A123245.P11892971409811351951

`A043533(A112492(n))`
-/

namespace A123245.P11892971409811351951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043533 (A112492 n).toNat

end

end A123245.P11892971409811351951

/-! ## A123245.P5008952544329341204

`A372406(A210341(n))`
-/

namespace A123245.P5008952544329341204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372406 (A210341 n).toNat

end

end A123245.P5008952544329341204

/-! ## A123245.P8669448622543839165

`A055642(A210341(n)²)`
-/

namespace A123245.P8669448622543839165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A210341 n ^ 2).toNat

end

end A123245.P8669448622543839165

/-!
# A123246: a(n) = PrimePi(n) + (-1)^(PrimePi(n) + 1) (cf. A000720).

The programs for A123246, the canonical program `A123246.P9440738482151598640` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123246 has offset 1).

The definition of A123246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123246.P9440738482151598640

`A000720(n+1)+(-1)^(A000720(n+1)+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123246

/-- `A000720(n+1)+(-1)^(A000720(n+1)+1)` -/
def P9440738482151598640.Spec : Prop :=
  ∀ n, P9440738482151598640.a n = (A123246 (n + 1) : ℚ)

end A123246

/-! ## A123246.P3211400424635320600

`xor(1, A036234(n+1))-1`
-/

namespace A123246.P3211400424635320600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A036234 (n + 1)) - 1

end

end A123246.P3211400424635320600

namespace A123246

/-- `xor(1, A036234(n+1))-1` -/
def P3211400424635320600.Spec : Prop :=
  ∀ n, P3211400424635320600.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P16971224006181870239

`-xor(1, -A000720(n+1))`
-/

namespace A123246.P16971224006181870239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-A000720 (n + 1))

end

end A123246.P16971224006181870239

namespace A123246

/-- `-xor(1, -A000720(n+1))` -/
def P16971224006181870239.Spec : Prop :=
  ∀ n, P16971224006181870239.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P10382870534681297976

`-xor(1, ∑[-A010051(n+1)])`
-/

namespace A123246.P10382870534681297976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123246.P10382870534681297976

namespace A123246

/-- `-xor(1, ∑[-A010051(n+1)])` -/
def P10382870534681297976.Spec : Prop :=
  ∀ n, P10382870534681297976.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P5409870149160658103

`A023443(xor(1, A036234(n+1)))`
-/

namespace A123246.P5409870149160658103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.xor 1 (A036234 (n + 1))).toNat

end

end A123246.P5409870149160658103

namespace A123246

/-- `A023443(xor(1, A036234(n+1)))` -/
def P5409870149160658103.Spec : Prop :=
  ∀ n, P5409870149160658103.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P17975642972950038266

`A004442(A000720(n+1)+1)-1`
-/

namespace A123246.P17975642972950038266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A000720 (n + 1) + 1).toNat - 1

end

end A123246.P17975642972950038266

namespace A123246

/-- `A004442(A000720(n+1)+1)-1` -/
def P17975642972950038266.Spec : Prop :=
  ∀ n, P17975642972950038266.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P13955007284500194582

`A014681(A000720(n+1)+2)-2`
-/

namespace A123246.P13955007284500194582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A000720 (n + 1) + 2).toNat - 2

end

end A123246.P13955007284500194582

namespace A123246

/-- `A014681(A000720(n+1)+2)-2` -/
def P13955007284500194582.Spec : Prop :=
  ∀ n, P13955007284500194582.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P9192964326697808618

`A103889(A000720(n+1)+2)-2`
-/

namespace A123246.P9192964326697808618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A000720 (n + 1) + 2).toNat - 2

end

end A123246.P9192964326697808618

namespace A123246

/-- `A103889(A000720(n+1)+2)-2` -/
def P9192964326697808618.Spec : Prop :=
  ∀ n, P9192964326697808618.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P2843212578505407858

`A000720(n+1)-A065357(n+1)`
-/

namespace A123246.P2843212578505407858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A065357 (n + 1)

end

end A123246.P2843212578505407858

namespace A123246

/-- `A000720(n+1)-A065357(n+1)` -/
def P2843212578505407858.Spec : Prop :=
  ∀ n, P2843212578505407858.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P8265956673142187092

`A033999(A000720(n+1)+1)+A000720(n+1)`
-/

namespace A123246.P8265956673142187092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000720 (n + 1) + 1).toNat + A000720 (n + 1)

end

end A123246.P8265956673142187092

namespace A123246

/-- `A033999(A000720(n+1)+1)+A000720(n+1)` -/
def P8265956673142187092.Spec : Prop :=
  ∀ n, P8265956673142187092.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P12399215852926980507

`A000720(n+1)-A009001(2*A000720(n+1))`
-/

namespace A123246.P12399215852926980507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A009001 (2 * A000720 (n + 1)).toNat

end

end A123246.P12399215852926980507

namespace A123246

/-- `A000720(n+1)-A009001(2*A000720(n+1))` -/
def P12399215852926980507.Spec : Prop :=
  ∀ n, P12399215852926980507.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P6147755134770867053

`A000720(n+1)-A056594(2*A000720(n+1))`
-/

namespace A123246.P6147755134770867053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056594 (2 * A000720 (n + 1)).toNat

end

end A123246.P6147755134770867053

namespace A123246

/-- `A000720(n+1)-A056594(2*A000720(n+1))` -/
def P6147755134770867053.Spec : Prop :=
  ∀ n, P6147755134770867053.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P2342994701599132339

`A000720(n+1)+A065358(n)-A065358(n+1)`
-/

namespace A123246.P2342994701599132339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A065358 n - A065358 (n + 1))

end

end A123246.P2342994701599132339

namespace A123246

/-- `A000720(n+1)+A065358(n)-A065358(n+1)` -/
def P2342994701599132339.Spec : Prop :=
  ∀ n, P2342994701599132339.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P17023934864205012425

`A230980(n+1)+A065358(n)-A065358(n+1)`
-/

namespace A123246.P17023934864205012425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) + (A065358 n - A065358 (n + 1))

end

end A123246.P17023934864205012425

namespace A123246

/-- `A230980(n+1)+A065358(n)-A065358(n+1)` -/
def P17023934864205012425.Spec : Prop :=
  ∀ n, P17023934864205012425.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P342154901331083136

`A000720(n+1)+A071986(n+1)-A131377(n+1)`
-/

namespace A123246.P342154901331083136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A071986 (n + 1) - A131377 (n + 1))

end

end A123246.P342154901331083136

namespace A123246

/-- `A000720(n+1)+A071986(n+1)-A131377(n+1)` -/
def P342154901331083136.Spec : Prop :=
  ∀ n, P342154901331083136.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P7919167022848074043

`A000720(n+1)+A131378(n+1)-A131377(n+1)`
-/

namespace A123246.P7919167022848074043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A131378 (n + 1) - A131377 (n + 1))

end

end A123246.P7919167022848074043

namespace A123246

/-- `A000720(n+1)+A131378(n+1)-A131377(n+1)` -/
def P7919167022848074043.Spec : Prop :=
  ∀ n, P7919167022848074043.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P9404660201346356947

`A036234(n+1)-(A131377(n+1)+A131377(n+1))`
-/

namespace A123246.P9404660201346356947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - (A131377 (n + 1) + A131377 (n + 1))

end

end A123246.P9404660201346356947

namespace A123246

/-- `A036234(n+1)-(A131377(n+1)+A131377(n+1))` -/
def P9404660201346356947.Spec : Prop :=
  ∀ n, P9404660201346356947.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P2071471429362693272

`A071986(n+1)+A230980(n+1)-A131377(n+1)`
-/

namespace A123246.P2071471429362693272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071986 (n + 1) + (A230980 (n + 1) - A131377 (n + 1))

end

end A123246.P2071471429362693272

namespace A123246

/-- `A071986(n+1)+A230980(n+1)-A131377(n+1)` -/
def P2071471429362693272.Spec : Prop :=
  ∀ n, P2071471429362693272.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P11955084271678523908

`A131378(n+1)+A230980(n+1)-A131377(n+1)`
-/

namespace A123246.P11955084271678523908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131378 (n + 1) + (A230980 (n + 1) - A131377 (n + 1))

end

end A123246.P11955084271678523908

namespace A123246

/-- `A131378(n+1)+A230980(n+1)-A131377(n+1)` -/
def P11955084271678523908.Spec : Prop :=
  ∀ n, P11955084271678523908.a n = A123246 (n + 1)

end A123246

/-! ## A123246.P5691034211833012238

`A230980(n+1)-A094267(A230980(n+1)²)`
-/

namespace A123246.P5691034211833012238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A094267 (A230980 (n + 1) ^ 2).toNat

end

end A123246.P5691034211833012238

namespace A123246

/-- `A230980(n+1)-A094267(A230980(n+1)²)` -/
def P5691034211833012238.Spec : Prop :=
  ∀ n, P5691034211833012238.a n = A123246 (n + 1)

end A123246

/-!
# A123247: Let S(1)={1} and, for n>1 let S(n) be the smallest set containing x, x+1, 2x and 3x for each element x in S(n-1). a(n) is the number of elements in S(n).

The programs for A123247, there is no canonical definition to state claims against.
-/

/-! ## A123247.P349092796591628493

`or(A000120(A056339(n+1)), A267367(n))`
-/

namespace A123247.P349092796591628493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A056339 (n + 1)).toNat) (A267367 n)

end

end A123247.P349092796591628493

/-! ## A123247.P5304639629628248354

`A100196(A213331(2*n+1)+A000244(n))`
-/

namespace A123247.P5304639629628248354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A213331 (2 * n + 1) + A000244 n).toNat

end

end A123247.P5304639629628248354

/-! ## A123247.P18327338157075100911

`A001462(Δ[3^n])-1`
-/

namespace A123247.P18327338157075100911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A123247.P18327338157075100911

/-! ## A123247.P5892507926330607992

`A163563(A048473(n))`
-/

namespace A123247.P5892507926330607992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A048473 n).toNat

end

end A123247.P5892507926330607992

/-!
# A123249: a(1) = 1. For n >= 2, a(n) = n + (smallest integer which is >= n and is missing from among the earlier terms of the sequence).

The programs for A123249, there is no canonical definition to state claims against.
-/

/-! ## A123249.P9598450599102779848

`n+1+xor(n+1, A123721(n+1))`
-/

namespace A123249.P9598450599102779848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + Int.xor (n + 1 : ℤ) (A123721 (n + 1))

end

end A123249.P9598450599102779848

/-! ## A123249.P16496368971209920260

`A123721(n+1)+comp[A141310(n)]`
-/

namespace A123249.P16496368971209920260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123721 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A123249.P16496368971209920260

/-! ## A123249.P12309670762948641037

`A163300(n+1)+A123721(n+1)`
-/

namespace A123249.P12309670762948641037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + A123721 (n + 1)

end

end A123249.P12309670762948641037

/-! ## A123249.P2553265280439899865

`A123721(n+1)+record[A073759(n+1)]`
-/

namespace A123249.P2553265280439899865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123721 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123249.P2553265280439899865

/-! ## A123249.P7196543739516010391

`A123721(n+1)+comp[A004275(n)+1]`
-/

namespace A123249.P7196543739516010391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123721 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A123249.P7196543739516010391

/-! ## A123249.P16368031588311371203

`A191558(2*(n+1))+A123721(n+1)`
-/

namespace A123249.P16368031588311371203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * (n + 1)) + A123721 (n + 1)

end

end A123249.P16368031588311371203

/-! ## A123249.P12950638492892492036

`A123721(n+1)+A052928(A062545(n))`
-/

namespace A123249.P12950638492892492036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123721 (n + 1) + A052928 (A062545 n).toNat

end

end A123249.P12950638492892492036

/-! ## A123249.P4944959119720908148

`A123721(n+1)+A052928(A103517(n))`
-/

namespace A123249.P4944959119720908148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123721 (n + 1) + A052928 (A103517 n).toNat

end

end A123249.P4944959119720908148

/-!
# A123250: Primes of the form 2^k + 5.

The programs for A123250, there is no canonical definition to state claims against.
-/

/-! ## A123250.P13572740258249243812

`2^A059242(n+1)+5`
-/

namespace A123250.P13572740258249243812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A059242 (n + 1) : ℤ) + 5

end

end A123250.P13572740258249243812

/-! ## A123250.P11608897369513072182

`A062709(A059242(n+1))+2`
-/

namespace A123250.P11608897369513072182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062709 (A059242 (n + 1)).toNat + 2

end

end A123250.P11608897369513072182

/-! ## A123250.P9118382014518717341

`∩[A070739(n+1), A168614(n)]`
-/

namespace A123250.P9118382014518717341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123250.P9118382014518717341

/-!
# A123251: Continued fraction for sqrt(2)*tan(1/sqrt(2)).

The programs for A123251, the canonical program `A123251.P6076525704975524843` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123251 has offset 1).

The definition of A123251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123251.P16760436296061459520

`ogf((1+4x+x^2+3x^3-x^4+4x^5-x^6+x^7)/(1-2x^4+x^8))`
-/

namespace A123251.P16760436296061459520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1, 3, -1, 4, -1, 1] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A123251.P16760436296061459520

namespace A123251

/-- `ogf((1+4x+x^2+3x^3-x^4+4x^5-x^6+x^7)/(1-2x^4+x^8))` -/
def P16760436296061459520.Spec : Prop :=
  ∀ n, P16760436296061459520.a n = A123251 (n + 1)

end A123251

/-! ## A123251.P12000887595852361226

`gcd(A322015(n+1)+n, (n+1)%2)`
-/

namespace A123251.P12000887595852361226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322015 (n + 1) + (n : ℤ)) (((n + 1) % 2 : ℕ) : ℤ)

end

end A123251.P12000887595852361226

namespace A123251

/-- `gcd(A322015(n+1)+n, (n+1)%2)` -/
def P12000887595852361226.Spec : Prop :=
  ∀ n, (P12000887595852361226.a n : ℤ) = A123251 (n + 1)

end A123251

/-! ## A123251.P6076525704975524843

`A034856(n+1)%(A321220(n)+3)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A123251

/-- `A034856(n+1)%(A321220(n)+3)` -/
def P6076525704975524843.Spec : Prop :=
  ∀ n, P6076525704975524843.a n = A123251 (n + 1)

theorem P6076525704975524843.correct : P6076525704975524843.Spec := by
  intro n
  simp only [A123251, Nat.add_sub_cancel]

end A123251

/-! ## A123251.P8350597408615286599

`(A062828(n+2)-2)^(n%2)`
-/

namespace A123251.P8350597408615286599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062828 (n + 2) - 2) ^ (n % 2)

end

end A123251.P8350597408615286599

namespace A123251

/-- `(A062828(n+2)-2)^(n%2)` -/
def P8350597408615286599.Spec : Prop :=
  ∀ n, P8350597408615286599.a n = A123251 (n + 1)

end A123251

/-! ## A123251.P17953910470050254144

`(A322015(n+1)+n)^(1-A000035(n+1))`
-/

namespace A123251.P17953910470050254144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322015 (n + 1) + (n : ℤ) : ℚ) ^ (1 - A000035 (n + 1) : ℤ)

end

end A123251.P17953910470050254144

namespace A123251

/-- `(A322015(n+1)+n)^(1-A000035(n+1))` -/
def P17953910470050254144.Spec : Prop :=
  ∀ n, P17953910470050254144.a n = (A123251 (n + 1) : ℚ)

end A123251

/-! ## A123251.P6610290416747659021

`A003816(A003815(n+1))+xor(n, A003815(n))`
-/

namespace A123251.P6610290416747659021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003816 (A003815 (n + 1)).toNat + Int.xor (n : ℤ) (A003815 n)

end

end A123251.P6610290416747659021

namespace A123251

/-- `A003816(A003815(n+1))+xor(n, A003815(n))` -/
def P6610290416747659021.Spec : Prop :=
  ∀ n, P6610290416747659021.a n = A123251 (n + 1)

end A123251

/-! ## A123251.P16544364120780476882

`gcd(1-A047566(n+1), A004526(A047566(n+1))²)`
-/

namespace A123251.P16544364120780476882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A047566 (n + 1)) (A004526 (A047566 (n + 1)).toNat ^ 2)

end

end A123251.P16544364120780476882

namespace A123251

/-- `gcd(1-A047566(n+1), A004526(A047566(n+1))²)` -/
def P16544364120780476882.Spec : Prop :=
  ∀ n, (P16544364120780476882.a n : ℤ) = A123251 (n + 1)

end A123251

/-!
# A123252: a(n) = smallest prime of the form 2^k + 2n - 1, k = 0, 1, ..., or 0 if there is none.

The programs for A123252, there is no canonical definition to state claims against.
-/

/-! ## A123252.P5264890302496855803

`2^A067760(n)+2*(n+1)-1`
-/

namespace A123252.P5264890302496855803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A067760 n : ℤ) + (2 * (n + 1) : ℚ) - 1

end

end A123252.P5264890302496855803

/-! ## A123252.P9017757897405693843

`Δ[n²]+2^A067760(n)`
-/

namespace A123252.P9017757897405693843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) + (2 : ℚ) ^ (A067760 n : ℤ)

end

end A123252.P9017757897405693843

/-! ## A123252.P12926864821470172747

`A000051(A067760(n))+2*n`
-/

namespace A123252.P12926864821470172747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A067760 n).toNat + (2 * n : ℤ)

end

end A123252.P12926864821470172747

/-! ## A123252.P1259407386353476147

`A184165(2^A067760(n))+2*n`
-/

namespace A123252.P1259407386353476147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184165 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A067760 n : ℤ))).toNat + (2 * n : ℤ)

end

end A123252.P1259407386353476147

/-! ## A123252.P12846812045915001006

`A000027(2^A067760(n)+2*n+1)`
-/

namespace A123252.P12846812045915001006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A067760 n : ℤ) + (2 * n : ℚ) + 1)).toNat

end

end A123252.P12846812045915001006

/-! ## A123252.P564904512505547372

`A014963(2^A067760(n)+2*n+1)`
-/

namespace A123252.P564904512505547372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A067760 n : ℤ) + (2 * n + 1 : ℚ))).toNat

end

end A123252.P564904512505547372

/-! ## A123252.P5266072337754255178

`A028310(2^A067760(n))+n+n+1`
-/

namespace A123252.P5266072337754255178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A067760 n : ℤ))).toNat + (n : ℤ) + (n + 1 : ℤ)

end

end A123252.P5266072337754255178

/-! ## A123252.P9807586118409777412

`2*n+A001065(A000040(n+1))+2^A067760(n)`
-/

namespace A123252.P9807586118409777412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) + ((A001065 (A000040 (n + 1)).toNat : ℚ) + (2 : ℚ) ^ (A067760 n : ℤ))

end

end A123252.P9807586118409777412

/-! ## A123252.P11216968498417358582

`A000079(A067760(n))+(2*n+1)%A000040(n+2)`
-/

namespace A123252.P11216968498417358582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A067760 n).toNat + Int.tmod (2 * n + 1 : ℤ) (A000040 (n + 2))

end

end A123252.P11216968498417358582

/-!
# A123253: Sum of 7th powers of digits of n.

The programs for A123253, the canonical program `A123253.P4251633776800881768` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123253 has offset 0).

The definition of A123253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123253.P4251633776800881768

`∑{digits}[n, #^7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123253

/-- `∑{digits}[n, #^7]` -/
def P4251633776800881768.Spec : Prop :=
  ∀ n, (P4251633776800881768.a n : ℤ) = A123253 n

theorem P4251633776800881768.correct : P4251633776800881768.Spec := by
  intro n
  simp only [A123253]

end A123253

/-! ## A123253.P4838351965806855553

`-∑{digits}[n, 1-A258806(#)]`
-/

namespace A123253.P4838351965806855553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A258806 x).sum

end

end A123253.P4838351965806855553

namespace A123253

/-- `-∑{digits}[n, 1-A258806(#)]` -/
def P4838351965806855553.Spec : Prop :=
  ∀ n, P4838351965806855553.a n = A123253 n

end A123253

/-! ## A123253.P1884489131431395971

`lcm(A000038(n)!, ∑{digits}[n, 1-A258806(#)])`
-/

namespace A123253.P1884489131431395971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A258806 x).sum

end

end A123253.P1884489131431395971

namespace A123253

/-- `lcm(A000038(n)!, ∑{digits}[n, 1-A258806(#)])` -/
def P1884489131431395971.Spec : Prop :=
  ∀ n, (P1884489131431395971.a n : ℤ) = A123253 n

end A123253

/-! ## A123253.P6425804274299111219

`A019590(n+1)*A065519(n+1)-∑{digits}[n, 1-A258806(#)]`
-/

namespace A123253.P6425804274299111219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) * A065519 (n + 1) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A258806 x).sum

end

end A123253.P6425804274299111219

namespace A123253

/-- `A019590(n+1)*A065519(n+1)-∑{digits}[n, 1-A258806(#)]` -/
def P6425804274299111219.Spec : Prop :=
  ∀ n, P6425804274299111219.a n = A123253 n

end A123253

/-! ## A123253.P16741703060542262837

`A305490(A305495(n+1))-∑{digits}[n, 1-A258806(#)]`
-/

namespace A123253.P16741703060542262837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305490 (A305495 (n + 1)).toNat - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A258806 x).sum

end

end A123253.P16741703060542262837

namespace A123253

/-- `A305490(A305495(n+1))-∑{digits}[n, 1-A258806(#)]` -/
def P16741703060542262837.Spec : Prop :=
  ∀ n, P16741703060542262837.a n = A123253 n

end A123253

/-! ## A123253.P2702349220784789865

`A019590(n+1)*A084888(n)-∑{digits}[n, 1-A258806(#)]`
-/

namespace A123253.P2702349220784789865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) * A084888 n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A258806 x).sum

end

end A123253.P2702349220784789865

namespace A123253

/-- `A019590(n+1)*A084888(n)-∑{digits}[n, 1-A258806(#)]` -/
def P2702349220784789865.Spec : Prop :=
  ∀ n, P2702349220784789865.a n = A123253 n

end A123253

/-! ## A123253.P15743747091630567121

`A008683(A000290(n+3))-∑{digits}[n, 1-A258806(#)]`
-/

namespace A123253.P15743747091630567121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000290 (n + 3)).toNat - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 1 - A258806 x).sum

end

end A123253.P15743747091630567121

namespace A123253

/-- `A008683(A000290(n+3))-∑{digits}[n, 1-A258806(#)]` -/
def P15743747091630567121.Spec : Prop :=
  ∀ n, P15743747091630567121.a n = A123253 n

end A123253

/-! ## A123253.P6532378280613475651

`∑{e}[A054842(n), A001015(#)]`
-/

namespace A123253.P6532378280613475651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001015 (Nat.factorization (f1 n).natAbs p)

end

end A123253.P6532378280613475651

namespace A123253

/-- `∑{e}[A054842(n), A001015(#)]` -/
def P6532378280613475651.Spec : Prop :=
  ∀ n, P6532378280613475651.a n = A123253 n

end A123253

/-! ## A123253.P6956861127665937515

`∑{e}[A069877(n), A001015(#)]`
-/

namespace A123253.P6956861127665937515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001015 (Nat.factorization (f1 n).natAbs p)

end

end A123253.P6956861127665937515

namespace A123253

/-- `∑{e}[A069877(n), A001015(#)]` -/
def P6956861127665937515.Spec : Prop :=
  ∀ n, P6956861127665937515.a n = A123253 n

end A123253

/-! ## A123253.P12305594838306833400

`∑{e}[A054842(n), #*A001014(#)]`
-/

namespace A123253.P12305594838306833400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A001014 (Nat.factorization (f1 n).natAbs p)

end

end A123253.P12305594838306833400

namespace A123253

/-- `∑{e}[A054842(n), #*A001014(#)]` -/
def P12305594838306833400.Spec : Prop :=
  ∀ n, P12305594838306833400.a n = A123253 n

end A123253

/-!
# A123254: Triangle T(n,k), 0<=k<=n, read by rows given by [ -1,1,-1,1,-1,1,-1,1,-1,1,...] DELTA [1,-1,1,-1,1,-1,1,-1,1,-1,...] where DELTA is the operator defined in A084938.

The programs for A123254, the canonical program `A123254.P11852088643476700636` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123254 has offset 0).

The definition of A123254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123254.P11852088643476700636

`(-1)^col(n)*A105523(row(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123254

/-- `(-1)^col(n)*A105523(row(n))*C(row(n), col(n))` -/
def P11852088643476700636.Spec : Prop :=
  ∀ n, P11852088643476700636.a n = A123254 n

theorem P11852088643476700636.correct : P11852088643476700636.Spec := by
  intro n
  simp only [A123254]

end A123254

/-! ## A123254.P15110660424745461485

`A090192(A003056(n))*A130595(n)`
-/

namespace A123254.P15110660424745461485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (A003056 n).toNat * A130595 n

end

end A123254.P15110660424745461485

namespace A123254

/-- `A090192(A003056(n))*A130595(n)` -/
def P15110660424745461485.Spec : Prop :=
  ∀ n, P15110660424745461485.a n = A123254 n

end A123254

/-! ## A123254.P15194899773782617

`A105523(A003056(n))*A130595(A061579(n))`
-/

namespace A123254.P15194899773782617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (A003056 n).toNat * A130595 (A061579 n).toNat

end

end A123254.P15194899773782617

namespace A123254

/-- `A105523(A003056(n))*A130595(A061579(n))` -/
def P15194899773782617.Spec : Prop :=
  ∀ n, P15194899773782617.a n = A123254 n

end A123254

/-!
# A123255: Numbers k such that 4k+1, 4k+2, and 4k+3 are all semiprimes.

The programs for A123255, the canonical program `A123255.P11098668165499929543` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123255 has offset 1).

The definition of A123255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 570 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123255.P15711935604126125600

`floor(A086006(n+1)/2)`
-/

namespace A123255.P15711935604126125600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086006 (n + 1) : ℚ) / 2⌋

end

end A123255.P15711935604126125600

namespace A123255

/-- `floor(A086006(n+1)/2)` -/
def P15711935604126125600.Spec : Prop :=
  ∀ n, P15711935604126125600.a n = A123255 (n + 1)

end A123255

/-! ## A123255.P12628194074529954581

`floor(A056809(n+1)/4)`
-/

namespace A123255.P12628194074529954581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056809 (n + 1) : ℚ) / 4⌋

end

end A123255.P12628194074529954581

namespace A123255

/-- `floor(A056809(n+1)/4)` -/
def P12628194074529954581.Spec : Prop :=
  ∀ n, P12628194074529954581.a n = A123255 (n + 1)

end A123255

/-! ## A123255.P17876945844729879529

`floor(A086005(n+1)/4)`
-/

namespace A123255.P17876945844729879529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086005 (n + 1) : ℚ) / 4⌋

end

end A123255.P17876945844729879529

namespace A123255

/-- `floor(A086005(n+1)/4)` -/
def P17876945844729879529.Spec : Prop :=
  ∀ n, P17876945844729879529.a n = A123255 (n + 1)

end A123255

/-! ## A123255.P2307854042725108269

`floor(A115393(n+1)/4)`
-/

namespace A123255.P2307854042725108269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115393 (n + 1) : ℚ) / 4⌋

end

end A123255.P2307854042725108269

namespace A123255

/-- `floor(A115393(n+1)/4)` -/
def P2307854042725108269.Spec : Prop :=
  ∀ n, P2307854042725108269.a n = A123255 (n + 1)

end A123255

/-! ## A123255.P16914197940174919011

`(or(2, A056809(-xor(n, -1)))-3)/4`
-/

namespace A123255.P16914197940174919011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 (A056809 (-Int.xor (n : ℤ) (-1)).toNat) - 3 : ℚ) / 4

end

end A123255.P16914197940174919011

namespace A123255

/-- `(or(2, A056809(-xor(n, -1)))-3)/4` -/
def P16914197940174919011.Spec : Prop :=
  ∀ n, P16914197940174919011.a n = (A123255 (n + 1) : ℚ)

end A123255

/-! ## A123255.P7534003634881039521

`A000010(A086005(n+1)/2)/2`
-/

namespace A123255.P7534003634881039521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.roundAway ((A086005 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A123255.P7534003634881039521

namespace A123255

/-- `A000010(A086005(n+1)/2)/2` -/
def P7534003634881039521.Spec : Prop :=
  ∀ n, P7534003634881039521.a n = (A123255 (n + 1) : ℚ)

end A123255

/-! ## A123255.P11098668165499929543

`(p?[A082130(n+1)]-1)/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A123255

/-- `(p?[A082130(n+1)]-1)/2` -/
def P11098668165499929543.Spec : Prop :=
  ∀ n, P11098668165499929543.a n = (A123255 (n + 1) : ℚ)

end A123255

/-! ## A123255.P6509005646318891145

`A000010(A056809(n+1)+1)/2`
-/

namespace A123255.P6509005646318891145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A056809 (n + 1) + 1).toNat : ℚ) / 2

end

end A123255.P6509005646318891145

namespace A123255

/-- `A000010(A056809(n+1)+1)/2` -/
def P6509005646318891145.Spec : Prop :=
  ∀ n, P6509005646318891145.a n = (A123255 (n + 1) : ℚ)

end A123255

/-! ## A123255.P13998105979264212075

`A000010(A001358(A174649(n+1)))/2`
-/

namespace A123255.P13998105979264212075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A001358 (A174649 (n + 1)).toNat).toNat : ℚ) / 2

end

end A123255.P13998105979264212075

namespace A123255

/-- `A000010(A001358(A174649(n+1)))/2` -/
def P13998105979264212075.Spec : Prop :=
  ∀ n, P13998105979264212075.a n = (A123255 (n + 1) : ℚ)

end A123255

/-! ## A123255.P14549481750046420104

`A002616(A086006(n+1))`
-/

namespace A123255.P14549481750046420104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A086006 (n + 1)).toNat

end

end A123255.P14549481750046420104

namespace A123255

/-- `A002616(A086006(n+1))` -/
def P14549481750046420104.Spec : Prop :=
  ∀ n, P14549481750046420104.a n = A123255 (n + 1)

end A123255

/-! ## A123255.P4101685320327567875

`A004526(A086005(n+1)/2)`
-/

namespace A123255.P4101685320327567875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A086005 (n + 1) : ℚ) / 2)).toNat

end

end A123255.P4101685320327567875

namespace A123255

/-- `A004526(A086005(n+1)/2)` -/
def P4101685320327567875.Spec : Prop :=
  ∀ n, P4101685320327567875.a n = A123255 (n + 1)

end A123255

/-! ## A123255.P3697126758601131044

`A004524((A115393(n+1)-1)/2)`
-/

namespace A123255.P3697126758601131044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (SequenceMachineLib.roundAway ((A115393 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A123255.P3697126758601131044

namespace A123255

/-- `A004524((A115393(n+1)-1)/2)` -/
def P3697126758601131044.Spec : Prop :=
  ∀ n, P3697126758601131044.a n = A123255 (n + 1)

end A123255

/-! ## A123255.P7141861373110531281

`A004442(A086005(n+1)/2)/2`
-/

namespace A123255.P7141861373110531281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 (SequenceMachineLib.roundAway ((A086005 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A123255.P7141861373110531281

namespace A123255

/-- `A004442(A086005(n+1)/2)/2` -/
def P7141861373110531281.Spec : Prop :=
  ∀ n, P7141861373110531281.a n = (A123255 (n + 1) : ℚ)

end A123255

/-! ## A123255.P6697612291876585512

`A010848(A086005(n+1)/2)/2`
-/

namespace A123255.P6697612291876585512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010848 (SequenceMachineLib.roundAway ((A086005 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A123255.P6697612291876585512

namespace A123255

/-- `A010848(A086005(n+1)/2)/2` -/
def P6697612291876585512.Spec : Prop :=
  ∀ n, P6697612291876585512.a n = (A123255 (n + 1) : ℚ)

end A123255

/-! ## A123255.P5265035931622140077

`A014665(A086005(n+1)/2)/2`
-/

namespace A123255.P5265035931622140077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014665 (SequenceMachineLib.roundAway ((A086005 (n + 1) : ℚ) / 2)).toNat : ℚ) / 2

end

end A123255.P5265035931622140077

namespace A123255

/-- `A014665(A086005(n+1)/2)/2` -/
def P5265035931622140077.Spec : Prop :=
  ∀ n, P5265035931622140077.a n = (A123255 (n + 1) : ℚ)

end A123255

/-!
# A123256: Dimension of the invariant subspace in modules over the symmetric groups S_n of dimension n*(n+1)^(n-1).

The programs for A123256, there is no canonical definition to state claims against.
-/

/-! ## A123256.P9095555875473952709

`∑{d}[n+1, A000081(#)]`
-/

namespace A123256.P9095555875473952709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000081 d

end

end A123256.P9095555875473952709

/-! ## A123256.P18313689628680479726

`∑{d}[n+1, A145550(#)]`
-/

namespace A123256.P18313689628680479726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145550 d

end

end A123256.P18313689628680479726

/-! ## A123256.P3651571291257344831

`∑{d}[n+1, A038001(2*(#-1)+1)]`
-/

namespace A123256.P3651571291257344831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038001 (2 * ((d : ℤ) - 1) + 1).toNat

end

end A123256.P3651571291257344831

/-! ## A123256.P12710395082013936669

`record[∑{d}[A020986(n), A000081(#)]]`
-/

namespace A123256.P12710395082013936669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000081 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123256.P12710395082013936669

/-! ## A123256.P357434523108080100

`record[∑{d}[A024000(n), A000081(#)]]`
-/

namespace A123256.P357434523108080100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000081 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123256.P357434523108080100

/-!
# A123258: a(n) = n-th divisor of the smallest positive integer with at least n divisors.

The programs for A123258, there is no canonical definition to state claims against.
-/

/-! ## A123258.P3156420194512912818

`A061799(n+1)/(A334080(A061799(n+1))-n)`
-/

namespace A123258.P3156420194512912818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (n + 1) : ℚ) / (A334080 (A061799 (n + 1)).toNat - (n : ℤ) : ℚ)

end

end A123258.P3156420194512912818

/-! ## A123258.P12404825493579627456

`A065558(2^floor(n/2)+∑{d}[n+1, #]-(n+1))`
-/

namespace A123258.P12404825493579627456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065558 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ))).toNat

end

end A123258.P12404825493579627456

/-! ## A123258.P188248230440586217

`A061799(floor(sqrt(A273015(n+1))))`
-/

namespace A123258.P188248230440586217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (Int.sqrt (A273015 (n + 1))).toNat

end

end A123258.P188248230440586217

/-! ## A123258.P17572003161731819532

`A000005(A005177(n)*A055701(n+1))`
-/

namespace A123258.P17572003161731819532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005177 n * A055701 (n + 1)).toNat

end

end A123258.P17572003161731819532

/-!
# A123259: a(n) = A123228(n)/2.

The programs for A123259, the canonical program `A123259.P13556634724884692031` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123259 has offset 0).

The definition of A123259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123259.P13556634724884692031

`ogf((3+32x+142x^2+80x^3+7x^4)/(1+13x+74x^2+74x^3+13x^4+x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123259

/-- `ogf((3+32x+142x^2+80x^3+7x^4)/(1+13x+74x^2+74x^3+13x^4+x^5))` -/
def P13556634724884692031.Spec : Prop :=
  ∀ n, P13556634724884692031.a n = A123259 n

theorem P13556634724884692031.correct : P13556634724884692031.Spec := by
  intro n
  simp only [A123259]

end A123259

/-! ## A123259.P2890079951463183579

`A123228(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123259.P2890079951463183579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123228 n : ℚ) / 2

end

end A123259.P2890079951463183579

namespace A123259

/-- `A123228(n)/2` -/
def P2890079951463183579.Spec : Prop :=
  ∀ n, P2890079951463183579.a n = (A123259 n : ℚ)

end A123259

/-!
# A123260: Triangle read by rows: T(n,k) = number of specially labeled bicolored connected graphs with k points in one color class and n-k points in the other class . "Special" means there are separate labels 1,2, ...,k and 1,2, ...,n-k for the two color classes (n >= 1, k = floor((n+1)/2), ..., n).

The programs for A123260, there is no canonical definition to state claims against.
-/

/-! ## A123260.P10419863097456540445

`A227322(A090894(n+1))`
-/

namespace A123260.P10419863097456540445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227322 (A090894 (n + 1)).toNat

end

end A123260.P10419863097456540445

/-!
# A123262: Fibonacci-tribonacci triangle.

The programs for A123262, there is no canonical definition to state claims against.
-/

/-! ## A123262.P13647737152763277653

`floor(A207488(n+1)/A198270(A257501(n+1)))`
-/

namespace A123262.P13647737152763277653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A207488 (n + 1) : ℚ) / (A198270 (A257501 (n + 1)).toNat : ℚ)⌋

end

end A123262.P13647737152763277653

/-! ## A123262.P5169941399733062163

`A032741(n^A277627(n))`
-/

namespace A123262.P5169941399733062163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A277627 n : ℤ))).toNat

end

end A123262.P5169941399733062163

/-! ## A123262.P12443439695887643386

`A173442(n^A277627(n))`
-/

namespace A123262.P12443439695887643386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173442 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A277627 n : ℤ))).toNat

end

end A123262.P12443439695887643386

/-! ## A123262.P3707818981504154792

`A001222(A049872(n)^A277627(n))`
-/

namespace A123262.P3707818981504154792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A049872 n : ℚ) ^ (A277627 n : ℤ))).toNat

end

end A123262.P3707818981504154792

/-! ## A123262.P16906828665287695510

`A001222(C(A049872(n), A277627(n)))`
-/

namespace A123262.P16906828665287695510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (A049872 n).toNat (A277627 n).toNat)

end

end A123262.P16906828665287695510

/-!
# A123264: Pascal's reversal triangle, read by rows.

The programs for A123264, there is no canonical definition to state claims against.
-/

/-! ## A123264.P6124786691777813507

`A004086(T(n-1,k-1)+T(n-1,k))` with `a(0)=1`
-/

namespace A123264.P6124786691777813507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004086 (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n).toNat

end

end A123264.P6124786691777813507

/-! ## A123264.P9283297267628422043

`A007318(n)%A007953(A223747(n+1))`
-/

namespace A123264.P9283297267628422043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A007953 (A223747 (n + 1)).toNat)

end

end A123264.P9283297267628422043

/-! ## A123264.P1111095307409126852

`abs(A108086(n))%A007953(A223747(n+1))`
-/

namespace A123264.P1111095307409126852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A108086 n| (A007953 (A223747 (n + 1)).toNat)

end

end A123264.P1111095307409126852

/-! ## A123264.P7790709347264156855

`abs(A130595(n))%A007953(A223747(n+1))`
-/

namespace A123264.P7790709347264156855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A130595 n| (A007953 (A223747 (n + 1)).toNat)

end

end A123264.P7790709347264156855

/-! ## A123264.P18004563466794560716

`sqrt(A008459(n))%A007953(A223747(n+1))`
-/

namespace A123264.P18004563466794560716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A008459 n : ℝ))) (A007953 (A223747 (n + 1)).toNat)

end

end A123264.P18004563466794560716

/-!
# A123265: Fibonacci-Lucas triangle read by rows.

The programs for A123265, the canonical program `A123265.P16917613210934075854` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123265 has offset 0).

The definition of A123265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123265.P16917613210934075854

`T(n-1,k-1)+T(n-1,k)+T(n-2,k)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123265

/-- `T(n-1,k-1)+T(n-1,k)+T(n-2,k)` -/
def P16917613210934075854.Spec : Prop :=
  ∀ n, (P16917613210934075854.a n : ℤ) = A123265 n

theorem P16917613210934075854.correct : P16917613210934075854.Spec := by
  intro n
  simp only [A123265]

end A123265

/-! ## A123265.P13290473587924760650

`A155161(n)+abs(A104509(n))`
-/

namespace A123265.P13290473587924760650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 n + |A104509 n|

end

end A123265.P13290473587924760650

namespace A123265

/-- `A155161(n)+abs(A104509(n))` -/
def P13290473587924760650.Spec : Prop :=
  ∀ n, P13290473587924760650.a n = A123265 n

end A123265

/-! ## A123265.P12259896145109425372

`3*A037027(n)-A122075(n)`
-/

namespace A123265.P12259896145109425372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037027 n - A122075 n

end

end A123265.P12259896145109425372

namespace A123265

/-- `3*A037027(n)-A122075(n)` -/
def P12259896145109425372.Spec : Prop :=
  ∀ n, P12259896145109425372.a n = A123265 n

end A123265

/-! ## A123265.P3067713083348425817

`A037027(n)+A037027(n)-A155161(n+1)`
-/

namespace A123265.P3067713083348425817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n + (A037027 n - A155161 (n + 1))

end

end A123265.P3067713083348425817

namespace A123265

/-- `A037027(n)+A037027(n)-A155161(n+1)` -/
def P3067713083348425817.Spec : Prop :=
  ∀ n, P3067713083348425817.a n = A123265 n

end A123265

/-! ## A123265.P17177129359572761514

`A008486(A037027(n))-A122075(n)`
-/

namespace A123265.P17177129359572761514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A037027 n).toNat - A122075 n

end

end A123265.P17177129359572761514

namespace A123265

/-- `A008486(A037027(n))-A122075(n)` -/
def P17177129359572761514.Spec : Prop :=
  ∀ n, P17177129359572761514.a n = A123265 n

end A123265

/-! ## A123265.P3572687453436565076

`A005843(A037027(n))-A155161(n+1)`
-/

namespace A123265.P3572687453436565076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A037027 n).toNat - A155161 (n + 1)

end

end A123265.P3572687453436565076

namespace A123265

/-- `A005843(A037027(n))-A155161(n+1)` -/
def P3572687453436565076.Spec : Prop :=
  ∀ n, P3572687453436565076.a n = A123265 n

end A123265

/-! ## A123265.P14545921711152341758

`A155161(n)+A118981(A038722(n+1))`
-/

namespace A123265.P14545921711152341758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 n + A118981 (A038722 (n + 1)).toNat

end

end A123265.P14545921711152341758

namespace A123265

/-- `A155161(n)+A118981(A038722(n+1))` -/
def P14545921711152341758.Spec : Prop :=
  ∀ n, P14545921711152341758.a n = A123265 n

end A123265

/-!
# A123268: X-values of solutions to the equation 3(X-Y)^4 - X*Y = 0 with X >= Y.

The programs for A123268, there is no canonical definition to state claims against.
-/

/-! ## A123268.P3393619627184151022

`A123282(n)/2`
-/

namespace A123268.P3393619627184151022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123282 n : ℚ) / 2

end

end A123268.P3393619627184151022

/-! ## A123268.P587783662833127513

`A123336(2*n)/4`
-/

namespace A123268.P587783662833127513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123336 (2 * n) : ℚ) / 4

end

end A123268.P587783662833127513

/-! ## A123268.P13048728361856871949

`A001075(n)²*A011944(n)`
-/

namespace A123268.P13048728361856871949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n ^ 2 * A011944 n

end

end A123268.P13048728361856871949

/-! ## A123268.P555547824590701446

`record[A097948(n)]*A011944(n)`
-/

namespace A123268.P555547824590701446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A011944 n

end

end A123268.P555547824590701446

/-! ## A123268.P15090250281158747338

`A011944(n)*A055793(n+2)`
-/

namespace A123268.P15090250281158747338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n * A055793 (n + 2)

end

end A123268.P15090250281158747338

/-!
# A123270: a(0)=1, a(1)=1, a(n) = 5*a(n-1) + 4*a(n-2).

The programs for A123270, the canonical program `A123270.P9696670782398777153` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123270 has offset 0).

The definition of A123270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+4*a(n-2)` (program `A123270.P9696670782398777153`, by `A123270.P9696670782398777153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123270.P7174297492467235646

`ogf((1-4x)/(1-5x-4x^2))`
-/

namespace A123270.P7174297492467235646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -5, -4] n

end

end A123270.P7174297492467235646

namespace A123270

/-- `ogf((1-4x)/(1-5x-4x^2))` -/
def P7174297492467235646.Spec : Prop :=
  ∀ n, P7174297492467235646.a n = A123270 n

end A123270

/-! ## A123270.P9696670782398777153

`5*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123270

/-- `5*a(n-1)+4*a(n-2)` -/
def P9696670782398777153.Spec : Prop :=
  ∀ n, (P9696670782398777153.a n : ℤ) = A123270 n

theorem P9696670782398777153.correct : P9696670782398777153.Spec := by
  intro n
  simp only [A123270]

end A123270

/-! ## A123270.P10993925152799022500

`∑[A122690(n)]-A106567(n)`
-/

namespace A123270.P10993925152799022500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106567 n

end

end A123270.P10993925152799022500

namespace A123270

/-- `∑[A122690(n)]-A106567(n)` -/
def P10993925152799022500.Spec : Prop :=
  ∀ n, P10993925152799022500.a n = A123270 n

end A123270

/-! ## A123270.P6852243066876191430

`A015537(n+1)-A106567(n)`
-/

namespace A123270.P6852243066876191430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015537 (n + 1) - A106567 n

end

end A123270.P6852243066876191430

namespace A123270

/-- `A015537(n+1)-A106567(n)` -/
def P6852243066876191430.Spec : Prop :=
  ∀ n, P6852243066876191430.a n = A123270 n

end A123270

/-! ## A123270.P5202599392061001911

`A122690(n)-3*A015537(n)`
-/

namespace A123270.P5202599392061001911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122690 n - 3 * A015537 n

end

end A123270.P5202599392061001911

namespace A123270

/-- `A122690(n)-3*A015537(n)` -/
def P5202599392061001911.Spec : Prop :=
  ∀ n, P5202599392061001911.a n = A123270 n

end A123270

/-! ## A123270.P17219274635020270081

`A126501(n)-5*A015537(n)`
-/

namespace A123270.P17219274635020270081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126501 n - 5 * A015537 n

end

end A123270.P17219274635020270081

namespace A123270

/-- `A126501(n)-5*A015537(n)` -/
def P17219274635020270081.Spec : Prop :=
  ∀ n, P17219274635020270081.a n = A123270 n

end A123270

/-!
# A123271: Sign of the penultimate term of the Lucas-Lehmer sequence modulo the n-th Mersenne prime.

The programs for A123271, there is no canonical definition to state claims against.
-/

/-! ## A123271.P16221604302354682941

`A008836(A022331(n)*A266646(n+1))`
-/

namespace A123271.P16221604302354682941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A022331 n * A266646 (n + 1)).toNat

end

end A123271.P16221604302354682941

/-! ## A123271.P3910124032807507388

`A008836(A334939(n+1)+p?[round(8*n/7)]²)`
-/

namespace A123271.P3910124032807507388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A334939 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A123271.P3910124032807507388

/-! ## A123271.P13497831797800753086

`A165573(∑[A051119(n+1)!])`
-/

namespace A123271.P13497831797800753086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A051119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123271.P13497831797800753086

/-! ## A123271.P12302672574915973842

`A057077(A073054(n)+A000043(n+1))`
-/

namespace A123271.P12302672574915973842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A073054 n + A000043 (n + 1)).toNat

end

end A123271.P12302672574915973842

/-! ## A123271.P73905805483569818

`A011587(A333224(2*(n+2))+A121670(n))`
-/

namespace A123271.P73905805483569818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011587 (A333224 (2 * (n + 2)) + A121670 n).toNat

end

end A123271.P73905805483569818

/-!
# A123272: Number of primes between consecutive terms of A105575.

The programs for A123272, the canonical program `A123272.P13833021826799175583` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123272 has offset 1).

The definition of A123272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123272.P8599558341797239952

`A000720(A105575(n+2))-A000720(A105575(n+1))-1`
-/

namespace A123272.P8599558341797239952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A105575 (n + 2)).toNat - A000720 (A105575 (n + 1)).toNat - 1

end

end A123272.P8599558341797239952

namespace A123272

/-- `A000720(A105575(n+2))-A000720(A105575(n+1))-1` -/
def P8599558341797239952.Spec : Prop :=
  ∀ n, P8599558341797239952.a n = A123272 (n + 1)

end A123272

/-! ## A123272.P13833021826799175583

`char[A029709(n+1)-(n+4)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A123272

/-- `char[A029709(n+1)-(n+4)]` -/
def P13833021826799175583.Spec : Prop :=
  ∀ n, (P13833021826799175583.a n : ℤ) = A123272 (n + 1)

theorem P13833021826799175583.correct : P13833021826799175583.Spec := by
  intro n
  simp only [A123272, Nat.add_sub_cancel]

end A123272

/-! ## A123272.P8928616446060217898

`char[eq[2, A028334(n+2)]-(n+2)]`
-/

namespace A123272.P8928616446060217898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A123272.P8928616446060217898

namespace A123272

/-- `char[eq[2, A028334(n+2)]-(n+2)]` -/
def P8928616446060217898.Spec : Prop :=
  ∀ n, (P8928616446060217898.a n : ℤ) = A123272 (n + 1)

end A123272

/-! ## A123272.P9594007057301060839

`Δ[A098429(A067775(n+2))]`
-/

namespace A123272.P9594007057301060839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A067775 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123272.P9594007057301060839

namespace A123272

/-- `Δ[A098429(A067775(n+2))]` -/
def P9594007057301060839.Spec : Prop :=
  ∀ n, P9594007057301060839.a n = A123272 (n + 1)

end A123272

/-! ## A123272.P10842011802890585378

`A010051(A067775(n+3)-4)`
-/

namespace A123272.P10842011802890585378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A067775 (n + 3) - 4).toNat

end

end A123272.P10842011802890585378

namespace A123272

/-- `A010051(A067775(n+3)-4)` -/
def P10842011802890585378.Spec : Prop :=
  ∀ n, P10842011802890585378.a n = A123272 (n + 1)

end A123272

/-! ## A123272.P5351324544274395180

`A080339(A067775(n+3)-4)`
-/

namespace A123272.P5351324544274395180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A067775 (n + 3) - 4).toNat

end

end A123272.P5351324544274395180

namespace A123272

/-- `A080339(A067775(n+3)-4)` -/
def P5351324544274395180.Spec : Prop :=
  ∀ n, P5351324544274395180.a n = A123272 (n + 1)

end A123272

/-! ## A123272.P7642806491156563576

`A000720(Δ[A000720(A067775(n+2))])`
-/

namespace A123272.P7642806491156563576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067775 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A123272.P7642806491156563576

namespace A123272

/-- `A000720(Δ[A000720(A067775(n+2))])` -/
def P7642806491156563576.Spec : Prop :=
  ∀ n, P7642806491156563576.a n = A123272 (n + 1)

end A123272

/-! ## A123272.P4530048223649452399

`A069249(Δ[A003963(A067775(n+2))])`
-/

namespace A123272.P4530048223649452399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A067775 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (f1 (n + 1) - f1 n).toNat

end

end A123272.P4530048223649452399

namespace A123272

/-- `A069249(Δ[A003963(A067775(n+2))])` -/
def P4530048223649452399.Spec : Prop :=
  ∀ n, P4530048223649452399.a n = A123272 (n + 1)

end A123272

/-! ## A123272.P8359823547788416980

`A006530(2*n+1)%Δ[A003963(A067775(n+2))]`
-/

namespace A123272.P8359823547788416980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A067775 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A123272.P8359823547788416980

namespace A123272

/-- `A006530(2*n+1)%Δ[A003963(A067775(n+2))]` -/
def P8359823547788416980.Spec : Prop :=
  ∀ n, P8359823547788416980.a n = A123272 (n + 1)

end A123272

/-! ## A123272.P12104224029499900389

`val(A014963(A067775(n+3)-4), A067775(n+3)-4)`
-/

namespace A123272.P12104224029499900389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014963 (A067775 (n + 3) - 4).toNat).toNat (A067775 (n + 3) - 4).toNat

end

end A123272.P12104224029499900389

namespace A123272

/-- `val(A014963(A067775(n+3)-4), A067775(n+3)-4)` -/
def P12104224029499900389.Spec : Prop :=
  ∀ n, (P12104224029499900389.a n : ℤ) = A123272 (n + 1)

end A123272

/-!
# A123273: a(0) = 1; a(n) = the number of earlier terms, a(k), where gcd(a(k), a(floor(k/2))) = 1.

The programs for A123273, the canonical program `A123273.P3345808678683962127` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123273 has offset 0).

The definition of A123273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123273.P3345808678683962127

`∑[C(2, and(n+1, n-2)²)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123273

/-- `∑[C(2, and(n+1, n-2)²)]` -/
def P3345808678683962127.Spec : Prop :=
  ∀ n, (P3345808678683962127.a n : ℤ) = A123273 n

theorem P3345808678683962127.correct : P3345808678683962127.Spec := by
  intro n
  simp only [A123273]

end A123273

/-! ## A123273.P16641897297011562504

`∑[Δ[C(and(n, -n), n)]²]+1`
-/

namespace A123273.P16641897297011562504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-(n : ℤ))).toNat n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123273.P16641897297011562504

namespace A123273

/-- `∑[Δ[C(and(n, -n), n)]²]+1` -/
def P16641897297011562504.Spec : Prop :=
  ∀ n, P16641897297011562504.a n = A123273 n

end A123273

/-! ## A123273.P12288687003023496417

`∑[C(and(n+1, 1-n), n+1)]`
-/

namespace A123273.P12288687003023496417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n + 1 : ℤ) (1 - (n : ℤ))).toNat (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123273.P12288687003023496417

namespace A123273

/-- `∑[C(and(n+1, 1-n), n+1)]` -/
def P12288687003023496417.Spec : Prop :=
  ∀ n, (P12288687003023496417.a n : ℤ) = A123273 n

end A123273

/-! ## A123273.P6805188714311559179

`∑[char[and(n+2, -n)-1]]+1`
-/

namespace A123273.P6805188714311559179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-(n : ℤ)) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123273.P6805188714311559179

namespace A123273

/-- `∑[char[and(n+2, -n)-1]]+1` -/
def P6805188714311559179.Spec : Prop :=
  ∀ n, (P6805188714311559179.a n : ℤ) = A123273 n

end A123273

/-! ## A123273.P11388672241406590346

`∑[round(acot(and(n+1, n-2)))]/2`
-/

namespace A123273.P11388672241406590346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.land (n + 1 : ℤ) ((n : ℤ) - 2) : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A123273.P11388672241406590346

namespace A123273

/-- `∑[round(acot(and(n+1, n-2)))]/2` -/
def P11388672241406590346.Spec : Prop :=
  ∀ n, P11388672241406590346.a n = (A123273 n : ℚ)

end A123273

/-! ## A123273.P9081886152668551757

`a(∑[char[or(2, n)+1]])+2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123273.P9081886152668551757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A123273.P9081886152668551757

namespace A123273

/-- `a(∑[char[or(2, n)+1]])+2` -/
def P9081886152668551757.Spec : Prop :=
  ∀ n, (P9081886152668551757.a n : ℤ) = A123273 n

end A123273

/-! ## A123273.P5964719253958686296

`a(n-∑[and(1, ∑[n])])+2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123273.P5964719253958686296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - ∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A123273.P5964719253958686296

namespace A123273

/-- `a(n-∑[and(1, ∑[n])])+2` -/
def P5964719253958686296.Spec : Prop :=
  ∀ n, (P5964719253958686296.a n : ℤ) = A123273 n

end A123273

/-! ## A123273.P7511040007823316504

`∑[floor(and(n+1, 1-n)/(n+1))]`
-/

namespace A123273.P7511040007823316504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123273.P7511040007823316504

namespace A123273

/-- `∑[floor(and(n+1, 1-n)/(n+1))]` -/
def P7511040007823316504.Spec : Prop :=
  ∀ n, P7511040007823316504.a n = A123273 n

end A123273

/-! ## A123273.P7414296852514061355

`char[and(n+2, -n)-1]+a(n-1)` with `a(0)=1`
-/

namespace A123273.P7414296852514061355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-(n : ℤ)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A123273.P7414296852514061355

namespace A123273

/-- `char[and(n+2, -n)-1]+a(n-1)` -/
def P7414296852514061355.Spec : Prop :=
  ∀ n, (P7414296852514061355.a n : ℤ) = A123273 n

end A123273

/-! ## A123273.P2486930328278087607

`a(n-1)+C(2, and(n+1, n-2)²)` with `a(0)=1`
-/

namespace A123273.P2486930328278087607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose 2 (Int.land (n + 1 : ℤ) ((n : ℤ) - 2) ^ 2).toNat

end

end A123273.P2486930328278087607

namespace A123273

/-- `a(n-1)+C(2, and(n+1, n-2)²)` -/
def P2486930328278087607.Spec : Prop :=
  ∀ n, (P2486930328278087607.a n : ℤ) = A123273 n

end A123273

/-! ## A123273.P15015625857199730362

`abs(1-A349481(n+1))`
-/

namespace A123273.P15015625857199730362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A349481 (n + 1)|

end

end A123273.P15015625857199730362

namespace A123273

/-- `abs(1-A349481(n+1))` -/
def P15015625857199730362.Spec : Prop :=
  ∀ n, P15015625857199730362.a n = A123273 n

end A123273

/-! ## A123273.P15828564712143062706

`A349481(n+1)-A158388(n)`
-/

namespace A123273.P15828564712143062706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (n + 1) - A158388 n

end

end A123273.P15828564712143062706

namespace A123273

/-- `A349481(n+1)-A158388(n)` -/
def P15828564712143062706.Spec : Prop :=
  ∀ n, P15828564712143062706.a n = A123273 n

end A123273

/-! ## A123273.P5132546434329609056

`A349481(n+1)+A153881(n+1)`
-/

namespace A123273.P5132546434329609056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349481 (n + 1) + A153881 (n + 1)

end

end A123273.P5132546434329609056

namespace A123273

/-- `A349481(n+1)+A153881(n+1)` -/
def P5132546434329609056.Spec : Prop :=
  ∀ n, P5132546434329609056.a n = A123273 n

end A123273

/-! ## A123273.P6667384415488246891

`∑[abs(Δ[char[2^n]])]`
-/

namespace A123273.P6667384415488246891
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123273.P6667384415488246891

namespace A123273

/-- `∑[abs(Δ[char[2^n]])]` -/
def P6667384415488246891.Spec : Prop :=
  ∀ n, P6667384415488246891.a n = A123273 n

end A123273

/-! ## A123273.P14048184920558865354

`A305233(A364641(A349481(n+1)))`
-/

namespace A123273.P14048184920558865354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (A364641 (A349481 (n + 1)).toNat).toNat

end

end A123273.P14048184920558865354

namespace A123273

/-- `A305233(A364641(A349481(n+1)))` -/
def P14048184920558865354.Spec : Prop :=
  ∀ n, P14048184920558865354.a n = A123273 n

end A123273

/-! ## A123273.P13678773278841870071

`A070939(A212591(n+1))`
-/

namespace A123273.P13678773278841870071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A212591 (n + 1)).toNat

end

end A123273.P13678773278841870071

namespace A123273

/-- `A070939(A212591(n+1))` -/
def P13678773278841870071.Spec : Prop :=
  ∀ n, P13678773278841870071.a n = A123273 n

end A123273

/-! ## A123273.P1344153297527992425

`A070939(A270804(n))`
-/

namespace A123273.P1344153297527992425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A270804 n).toNat

end

end A123273.P1344153297527992425

namespace A123273

/-- `A070939(A270804(n))` -/
def P1344153297527992425.Spec : Prop :=
  ∀ n, P1344153297527992425.a n = A123273 n

end A123273

/-! ## A123273.P8289947784835499793

`A070939(A332206(n))`
-/

namespace A123273.P8289947784835499793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A332206 n).toNat

end

end A123273.P8289947784835499793

namespace A123273

/-- `A070939(A332206(n))` -/
def P8289947784835499793.Spec : Prop :=
  ∀ n, P8289947784835499793.a n = A123273 n

end A123273

/-! ## A123273.P5918636269419863259

`A023416(A053644((n+1)*A053644(n)))`
-/

namespace A123273.P5918636269419863259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A053644 ((n + 1 : ℤ) * A053644 n).toNat).toNat

end

end A123273.P5918636269419863259

namespace A123273

/-- `A023416(A053644((n+1)*A053644(n)))` -/
def P5918636269419863259.Spec : Prop :=
  ∀ n, P5918636269419863259.a n = A123273 n

end A123273

/-!
# A123274: a(0)=a(1)=a(2) = 1. a(n) = (a(n-1) +a(n-2)) /GCD(a(n-1)+a(n-2),a(n-3)), for n >= 3.

The programs for A123274, the canonical program `A123274.P16061693130519464722` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123274 has offset 0).

The definition of A123274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123274.P16061693130519464722

`(a(n-1)+a(n-2))/gcd(a(n-1)+a(n-2), a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123274

/-- `(a(n-1)+a(n-2))/gcd(a(n-1)+a(n-2), a(n-3))` -/
def P16061693130519464722.Spec : Prop :=
  ∀ n, P16061693130519464722.a n = (A123274 n : ℚ)

end A123274

/-! ## A123274.P3716847590983272170

`∏{e}[2^n, A096016(#)]`
-/

namespace A123274.P3716847590983272170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A096016 (Nat.factorization (f1 n) p)

end

end A123274.P3716847590983272170

namespace A123274

/-- `∏{e}[2^n, A096016(#)]` -/
def P3716847590983272170.Spec : Prop :=
  ∀ n, P3716847590983272170.a n = A123274 n

end A123274

/-! ## A123274.P12419985032025831189

`A096016(n)+A010052(A076338(n))`
-/

namespace A123274.P12419985032025831189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096016 n + A010052 (A076338 n).toNat

end

end A123274.P12419985032025831189

namespace A123274

/-- `A096016(n)+A010052(A076338(n))` -/
def P12419985032025831189.Spec : Prop :=
  ∀ n, P12419985032025831189.a n = A123274 n

end A123274

/-! ## A123274.P13892551172140532832

`A096016(n-A010815(A076338(n)))`
-/

namespace A123274.P13892551172140532832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096016 ((n : ℤ) - A010815 (A076338 n).toNat).toNat

end

end A123274.P13892551172140532832

namespace A123274

/-- `A096016(n-A010815(A076338(n)))` -/
def P13892551172140532832.Spec : Prop :=
  ∀ n, P13892551172140532832.a n = A123274 n

end A123274

/-! ## A123274.P8940598259104129990

`A096016(n^A001221(A060818(n)))`
-/

namespace A123274.P8940598259104129990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096016 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A001221 (A060818 n).toNat : ℤ))).toNat

end

end A123274.P8940598259104129990

namespace A123274

/-- `A096016(n^A001221(A060818(n)))` -/
def P8940598259104129990.Spec : Prop :=
  ∀ n, P8940598259104129990.a n = A123274 n

end A123274

/-!
# A123275: Square array A(n,m) = largest divisor of m which is coprime to n, read by upwards antidiagonals.

The programs for A123275, the canonical program `A123275.P16288348436701202687` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123275 has offset 1).

The definition of A123275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123275.P16288348436701202687

`A002260(n+1)/gcd(A002260(n+1), A009999(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A123275

/-- `A002260(n+1)/gcd(A002260(n+1), A009999(n))` -/
def P16288348436701202687.Spec : Prop :=
  ∀ n, P16288348436701202687.a n = (A123275 (n + 1) : ℚ)

end A123275

/-! ## A123275.P18046367940192912230

`(col(n)+1)/gcd((row(n)-col(n)+1)^(col(n)+1), col(n)+1)`
-/

namespace A123275.P18046367940192912230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) / (Int.gcd (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) ^ (SequenceMachineLib.triCol n + 1)) (SequenceMachineLib.triCol n + 1 : ℤ) : ℚ)

end

end A123275.P18046367940192912230

namespace A123275

/-- `(col(n)+1)/gcd((row(n)-col(n)+1)^(col(n)+1), col(n)+1)` -/
def P18046367940192912230.Spec : Prop :=
  ∀ n, P18046367940192912230.a n = (A123275 (n + 1) : ℚ)

end A123275

/-! ## A123275.P2886164604934384495

`A002260(n+1)/gcd(A051128(n+1), A193738(n))`
-/

namespace A123275.P2886164604934384495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A051128 (n + 1)) (A193738 n) : ℚ)

end

end A123275.P2886164604934384495

namespace A123275

/-- `A002260(n+1)/gcd(A051128(n+1), A193738(n))` -/
def P2886164604934384495.Spec : Prop :=
  ∀ n, P2886164604934384495.a n = (A123275 (n + 1) : ℚ)

end A123275

/-! ## A123275.P3763358209867315963

`lcm(A002260(n+1), A009999(n))/A009999(n)`
-/

namespace A123275.P3763358209867315963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002260 (n + 1)) (A009999 n) : ℚ) / (A009999 n : ℚ)

end

end A123275.P3763358209867315963

namespace A123275

/-- `lcm(A002260(n+1), A009999(n))/A009999(n)` -/
def P3763358209867315963.Spec : Prop :=
  ∀ n, P3763358209867315963.a n = (A123275 (n + 1) : ℚ)

end A123275

/-! ## A123275.P15295510028802910777

`lcm(A003991(n+1), A051128(n+1))/A051128(n+1)`
-/

namespace A123275.P15295510028802910777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A003991 (n + 1)) (A051128 (n + 1)) : ℚ) / (A051128 (n + 1) : ℚ)

end

end A123275.P15295510028802910777

namespace A123275

/-- `lcm(A003991(n+1), A051128(n+1))/A051128(n+1)` -/
def P15295510028802910777.Spec : Prop :=
  ∀ n, P15295510028802910777.a n = (A123275 (n + 1) : ℚ)

end A123275

/-! ## A123275.P3782918405399465944

`gcd(A001783(A003057(n+2)), A002260(n+1))`
-/

namespace A123275.P3782918405399465944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001783 (A003057 (n + 2)).toNat) (A002260 (n + 1))

end

end A123275.P3782918405399465944

namespace A123275

/-- `gcd(A001783(A003057(n+2)), A002260(n+1))` -/
def P3782918405399465944.Spec : Prop :=
  ∀ n, (P3782918405399465944.a n : ℤ) = A123275 (n + 1)

end A123275

/-! ## A123275.P5938561873063515496

`gcd(A002260(n+1), A349971(n+1))`
-/

namespace A123275.P5938561873063515496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A349971 (n + 1))

end

end A123275.P5938561873063515496

namespace A123275

/-- `gcd(A002260(n+1), A349971(n+1))` -/
def P5938561873063515496.Spec : Prop :=
  ∀ n, (P5938561873063515496.a n : ℤ) = A123275 (n + 1)

end A123275

/-! ## A123275.P16785529591794839672

`A112544(n+1)/gcd(A112544(n+1), A114448(n+1))`
-/

namespace A123275.P16785529591794839672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112544 (n + 1) : ℚ) / (Int.gcd (A112544 (n + 1)) (A114448 (n + 1)) : ℚ)

end

end A123275.P16785529591794839672

namespace A123275

/-- `A112544(n+1)/gcd(A112544(n+1), A114448(n+1))` -/
def P16785529591794839672.Spec : Prop :=
  ∀ n, P16785529591794839672.a n = (A123275 (n + 1) : ℚ)

end A123275

/-! ## A123275.P16378056971333877497

`gcd(A140756(n+1), A153273(n+2))`
-/

namespace A123275.P16378056971333877497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A140756 (n + 1)) (A153273 (n + 2))

end

end A123275.P16378056971333877497

namespace A123275

/-- `gcd(A140756(n+1), A153273(n+2))` -/
def P16378056971333877497.Spec : Prop :=
  ∀ n, (P16378056971333877497.a n : ℤ) = A123275 (n + 1)

end A123275

/-! ## A123275.P5039347513998846002

`gcd(A349971(n+1)², A003990(n+1))`
-/

namespace A123275.P5039347513998846002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A349971 (n + 1) ^ 2) (A003990 (n + 1))

end

end A123275.P5039347513998846002

namespace A123275

/-- `gcd(A349971(n+1)², A003990(n+1))` -/
def P5039347513998846002.Spec : Prop :=
  ∀ n, (P5039347513998846002.a n : ℤ) = A123275 (n + 1)

end A123275

/-! ## A123275.P14537942656800633868

`gcd(A153273(n+2)+A338280(n+2)², A338280(n+2))`
-/

namespace A123275.P14537942656800633868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153273 (n + 2) + A338280 (n + 2) ^ 2) (A338280 (n + 2))

end

end A123275.P14537942656800633868

namespace A123275

/-- `gcd(A153273(n+2)+A338280(n+2)², A338280(n+2))` -/
def P14537942656800633868.Spec : Prop :=
  ∀ n, (P14537942656800633868.a n : ℤ) = A123275 (n + 1)

end A123275

/-! ## A123275.P6291105329749148241

`gcd(A153273(n+2)², A338280(n+2))`
-/

namespace A123275.P6291105329749148241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153273 (n + 2) ^ 2) (A338280 (n + 2))

end

end A123275.P6291105329749148241

namespace A123275

/-- `gcd(A153273(n+2)², A338280(n+2))` -/
def P6291105329749148241.Spec : Prop :=
  ∀ n, (P6291105329749148241.a n : ℤ) = A123275 (n + 1)

end A123275

/-!
# A123276: 

The programs for A123276, there is no canonical definition to state claims against.
-/

/-! ## A123276.P13253358808158836830

`2^(4^n+(n+1)*2^n-3*2^n+1)`
-/

namespace A123276.P13253358808158836830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((4 ^ n + (n + 1) * 2 ^ n : ℤ) - (3 * 2 ^ n : ℤ) + 1 : ℤ)

end

end A123276.P13253358808158836830

/-!
# A123278: X-values of solutions to the equation 3(X-Y)^4 - 2*X*Y = 0 with X >= Y.

The programs for A123278, there is no canonical definition to state claims against.
-/

/-! ## A123278.P516721039019190678

`A123283(n)/2`
-/

namespace A123278.P516721039019190678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123283 n : ℚ) / 2

end

end A123278.P516721039019190678

/-! ## A123278.P6980467528921451163

`(A001079(n)+1)*A004189(n)`
-/

namespace A123278.P6980467528921451163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001079 n + 1) * A004189 n

end

end A123278.P6980467528921451163

/-! ## A123278.P5838724893315346987

`(A132596(n)+1)*A001078(n)`
-/

namespace A123278.P5838724893315346987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132596 n + 1) * A001078 n

end

end A123278.P5838724893315346987

/-! ## A123278.P9952511968210339141

`A001078(n)*A171640(n+1)`
-/

namespace A123278.P9952511968210339141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n * A171640 (n + 1)

end

end A123278.P9952511968210339141

/-! ## A123278.P5788374594126863514

`∑[record[A080872(n)-A146311(n)]]`
-/

namespace A123278.P5788374594126863514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 n - A146311 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123278.P5788374594126863514

/-! ## A123278.P2011896453003656544

`(A168520(n+1)+A001078(n))/2`
-/

namespace A123278.P2011896453003656544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168520 (n + 1) + A001078 n : ℚ) / 2

end

end A123278.P2011896453003656544

/-! ## A123278.P12741590909131413202

`A004189(n)+A168520(n+1)/2`
-/

namespace A123278.P12741590909131413202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) + (A168520 (n + 1) : ℚ) / 2

end

end A123278.P12741590909131413202

/-! ## A123278.P12244276769488013832

`2*A171640(n+1)*A004189(n)`
-/

namespace A123278.P12244276769488013832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171640 (n + 1) * A004189 n

end

end A123278.P12244276769488013832

/-! ## A123278.P4634358113047265166

`(A001079(n)+1)*A001078(n)/2`
-/

namespace A123278.P4634358113047265166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001079 n + 1 : ℚ) * ((A001078 n : ℚ) / 2)

end

end A123278.P4634358113047265166

/-! ## A123278.P12762103590990547045

`(A004189(2*n)+A001078(n))/2`
-/

namespace A123278.P12762103590990547045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 (2 * n) + A001078 n : ℚ) / 2

end

end A123278.P12762103590990547045

/-!
# A123279: a(n) = product of the first n integers from among those positive integers which are coprime to n.

The programs for A123279, there is no canonical definition to state claims against.
-/

/-! ## A123279.P14822642458698220186

`A135873((n+2)!-(n+1))`
-/

namespace A123279.P14822642458698220186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135873 (Nat.factorial (n + 2) - (n + 1))

end

end A123279.P14822642458698220186

/-!
# A123280: Number of permutations of n distinct letters (ABCD...) each of which appears 4 times and having two fixed points.

The programs for A123280, there is no canonical definition to state claims against.
-/

/-! ## A123280.P2316363704262255440

`A059060(A033816(n))`
-/

namespace A123280.P2316363704262255440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A033816 n).toNat

end

end A123280.P2316363704262255440

/-! ## A123280.P16067443456229952455

`A059060(A130883(n+1)+1)`
-/

namespace A123280.P16067443456229952455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A130883 (n + 1) + 1).toNat

end

end A123280.P16067443456229952455

/-!
# A123281: Leading diagonal of A123260.

The programs for A123281, there is no canonical definition to state claims against.
-/

/-! ## A123281.P9717487820283720403

`A262307(A008619(n²))`
-/

namespace A123281.P9717487820283720403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A008619 (n ^ 2)).toNat

end

end A123281.P9717487820283720403

/-! ## A123281.P7259972329245202326

`A123260(∑[A008619(n)])`
-/

namespace A123281.P7259972329245202326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A123281.P7259972329245202326

/-! ## A123281.P169398149431891680

`A123260(A087811(n+1))`
-/

namespace A123281.P169398149431891680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123260 (A087811 (n + 1)).toNat

end

end A123281.P169398149431891680

/-! ## A123281.P11790960892454506852

`A262307(A007590(n)+1)`
-/

namespace A123281.P11790960892454506852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A007590 n + 1).toNat

end

end A123281.P11790960892454506852

/-! ## A123281.P2518544904073780148

`A262307(A085913(n+1))`
-/

namespace A123281.P2518544904073780148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A085913 (n + 1)).toNat

end

end A123281.P2518544904073780148

/-!
# A123282: X-values of solutions to the equation 3(X-Y)^4 - 4*X*Y = 0 with X >= Y.

The programs for A123282, there is no canonical definition to state claims against.
-/

/-! ## A123282.P17473337167570340640

`2*A123268(n)`
-/

namespace A123282.P17473337167570340640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123268 n

end

end A123282.P17473337167570340640

/-! ## A123282.P7682289243283727427

`A123336(2*n)/2`
-/

namespace A123282.P7682289243283727427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123336 (2 * n) : ℚ) / 2

end

end A123282.P7682289243283727427

/-! ## A123282.P13636207764220473189

`(floor((sqrt(3)+2)^n)+1)²*A007655(n+1)`
-/

namespace A123282.P13636207764220473189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (3 : ℝ) + 2) ^ n⌋ + 1) ^ 2 * A007655 (n + 1)

end

end A123282.P13636207764220473189

/-! ## A123282.P531412775100472912

`A011944(n)+A007655(Δ[n²])`
-/

namespace A123282.P531412775100472912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011944 n + A007655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A123282.P531412775100472912

/-! ## A123282.P6260040148250273157

`A001075(n)²*A001353(2*n)`
-/

namespace A123282.P6260040148250273157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n ^ 2 * A001353 (2 * n)

end

end A123282.P6260040148250273157

/-!
# A123283: X-values of solutions to the equation 3(X-Y)^4 - 8*X*Y = 0 with X >= Y.

The programs for A123283, there is no canonical definition to state claims against.
-/

/-! ## A123283.P5986533106220051584

`2*A123278(n)`
-/

namespace A123283.P5986533106220051584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123278 n

end

end A123283.P5986533106220051584

/-! ## A123283.P14308885499737995062

`A168520(n+1)+A001078(n)`
-/

namespace A123283.P14308885499737995062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168520 (n + 1) + A001078 n

end

end A123283.P14308885499737995062

/-! ## A123283.P6791316660523372674

`(A001079(n)+1)*A001078(n)`
-/

namespace A123283.P6791316660523372674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001079 n + 1) * A001078 n

end

end A123283.P6791316660523372674

/-! ## A123283.P9971471435945793623

`(A132596(n)+1)*A122652(n)`
-/

namespace A123283.P9971471435945793623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132596 n + 1) * A122652 n

end

end A123283.P9971471435945793623

/-! ## A123283.P6030686518311619740

`A004189(2*n)+A001078(n)`
-/

namespace A123283.P6030686518311619740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (2 * n) + A001078 n

end

end A123283.P6030686518311619740

/-! ## A123283.P11433419324261009703

`A001078(n)+A072818(n)/2`
-/

namespace A123283.P11433419324261009703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001078 n : ℚ) + (A072818 n : ℚ) / 2

end

end A123283.P11433419324261009703

/-! ## A123283.P1102117354068595673

`A168520(n+1)+2*A004189(n)`
-/

namespace A123283.P1102117354068595673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168520 (n + 1) + 2 * A004189 n

end

end A123283.P1102117354068595673

/-! ## A123283.P11738561514193009013

`A168520(n+1)+A122652(n)/2`
-/

namespace A123283.P11738561514193009013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168520 (n + 1) : ℚ) + (A122652 n : ℚ) / 2

end

end A123283.P11738561514193009013

/-! ## A123283.P17562189603904670401

`2*A171640(n+1)*A001078(n)`
-/

namespace A123283.P17562189603904670401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171640 (n + 1) * A001078 n

end

end A123283.P17562189603904670401

/-! ## A123283.P6848086569590199339

`A004189(A005843(n))+2*A004189(n)`
-/

namespace A123283.P6848086569590199339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 (A005843 n).toNat + 2 * A004189 n

end

end A123283.P6848086569590199339

/-!
# A123284: Number of polyhexes with 24 hexagons, C_(2v) symmetry and containing n carbon atoms.

The programs for A123284, there is no canonical definition to state claims against.
-/

/-! ## A123284.P17984596812729986040

`A123606(n)-A239003(A328268(n))`
-/

namespace A123284.P17984596812729986040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123606 (n + 67) - A239003 (A328268 n).toNat

end

end A123284.P17984596812729986040

/-!
# A123285: Number of fusenes with 22 hexagons, C_(3h) symmetry and containing 3n carbon atoms.

The programs for A123285, there is no canonical definition to state claims against.
-/

/-! ## A123285.P2067549745955896409

`A276581(A001405(3*n))`
-/

namespace A123285.P2067549745955896409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A001405 (3 * n)).toNat

end

end A123285.P2067549745955896409

/-! ## A123285.P12441701573653740710

`A143212(A140736(A007598(n))+n)`
-/

namespace A123285.P12441701573653740710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143212 (A140736 (A007598 n).toNat + (n : ℤ)).toNat

end

end A123285.P12441701573653740710

/-!
# A123287: Number of fusenes with 22 hexagons, C_(2h) symmetry and containing 2n carbon atoms.

The programs for A123287, there is no canonical definition to state claims against.
-/

/-! ## A123287.P18283774792437679533

`A123105(n)+A002487(A051366(n))`
-/

namespace A123287.P18283774792437679533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123105 (n + 31) + A002487 (A051366 n).toNat

end

end A123287.P18283774792437679533

/-!
# A123288: Number of fusenes with 22 hexagons, C_(2v) symmetry and containing n carbon atoms.

The programs for A123288, there is no canonical definition to state claims against.
-/

/-! ## A123288.P16321835159159206074

`A123106(n)+A025442(A111534(n))`
-/

namespace A123288.P16321835159159206074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123106 (n + 62) + A025442 (A111534 n).toNat

end

end A123288.P16321835159159206074

/-! ## A123288.P7355665515595688220

`A225639(A003216(n+1))+A123106(n)`
-/

namespace A123288.P7355665515595688220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225639 (A003216 (n + 1)).toNat + A123106 (n + 62)

end

end A123288.P7355665515595688220

/-!
# A123290: Number of distinct binomial(n,2)-tuples of zeros and ones that are obtained as the collection of all 2 X 2 minor determinants of a 2 X n matrix over GF(2).

The programs for A123290, the canonical program `A123290.P2603439160697055389` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123290 has offset 2).

The definition of A123290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123290.P16745394451992426800

`ogf((2-6x+8x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A123290.P16745394451992426800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 8] [1, -7, 14, -8] n

end

end A123290.P16745394451992426800

namespace A123290

/-- `ogf((2-6x+8x^2)/(1-7x+14x^2-8x^3))` -/
def P16745394451992426800.Spec : Prop :=
  ∀ n, P16745394451992426800.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P2603439160697055389

`4*(a(n-1)-1)+2^(n+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123290

/-- `4*(a(n-1)-1)+2^(n+1)` -/
def P2603439160697055389.Spec : Prop :=
  ∀ n, P2603439160697055389.a n = A123290 (n + 2)

theorem P2603439160697055389.correct : P2603439160697055389.Spec := by
  intro n
  simp only [A123290, Nat.add_sub_cancel]

end A123290

/-! ## A123290.P11698861706716405870

`1+(2^(n+2)-1)*(2^(n+1)-1)/3`
-/

namespace A123290.P11698861706716405870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (((2 ^ (n + 2) : ℤ) - 1) * ((2 ^ (n + 1) : ℤ) - 1) : ℚ) / 3

end

end A123290.P11698861706716405870

namespace A123290

/-- `1+(2^(n+2)-1)*(2^(n+1)-1)/3` -/
def P11698861706716405870.Spec : Prop :=
  ∀ n, P11698861706716405870.a n = (A123290 (n + 2) : ℚ)

theorem P11698861706716405870.correct : P11698861706716405870.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123290, Nat.add_sub_cancel, A123290.P11698861706716405870.a, A123290.P2603439160697055389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123290, Nat.add_sub_cancel, A123290.P11698861706716405870.a, A123290.P2603439160697055389.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A123290

/-! ## A123290.P12229932101482833356

`∑[ogf((2-6x+8x^2)/(1-6x+8x^2))]`
-/

namespace A123290.P12229932101482833356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -6, 8] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P12229932101482833356

namespace A123290

/-- `∑[ogf((2-6x+8x^2)/(1-6x+8x^2))]` -/
def P12229932101482833356.Spec : Prop :=
  ∀ n, P12229932101482833356.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P16198266395724392080

`∑[lcm(2, 2^n*∑[2^n])]`
-/

namespace A123290.P16198266395724392080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P16198266395724392080

namespace A123290

/-- `∑[lcm(2, 2^n*∑[2^n])]` -/
def P16198266395724392080.Spec : Prop :=
  ∀ n, (P16198266395724392080.a n : ℤ) = A123290 (n + 2)

end A123290

/-! ## A123290.P16921215322374995288

`∑[2*4^n-and(-2, 2^n)]`
-/

namespace A123290.P16921215322374995288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - Int.land (-2) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P16921215322374995288

namespace A123290

/-- `∑[2*4^n-and(-2, 2^n)]` -/
def P16921215322374995288.Spec : Prop :=
  ∀ n, P16921215322374995288.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P9701610600679144232

`xor(1, ∑[or(2*a(n-1), 4^n)])` with `a(0)=3`
-/

namespace A123290.P9701610600679144232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.lor (2 * f1 (n - 1)) (4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123290.P9701610600679144232

namespace A123290

/-- `xor(1, ∑[or(2*a(n-1), 4^n)])` -/
def P9701610600679144232.Spec : Prop :=
  ∀ n, (P9701610600679144232.a n : ℤ) = A123290 (n + 2)

end A123290

/-! ## A123290.P10961952581216495922

`2^(n+1)+4*(a(n-1)-1)` with `a(0)=2`
-/

namespace A123290.P10961952581216495922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 ^ (n + 1) : ℤ) + 4 * (a (n - 1) - 1)

end

end A123290.P10961952581216495922

namespace A123290

/-- `2^(n+1)+4*(a(n-1)-1)` -/
def P10961952581216495922.Spec : Prop :=
  ∀ n, P10961952581216495922.a n = A123290 (n + 2)

theorem P10961952581216495922.correct : P10961952581216495922.Spec := by
  intro n
  simp only [A123290, Nat.add_sub_cancel, A123290.P10961952581216495922.a, A123290.P2603439160697055389.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123290

/-! ## A123290.P5897662755472887084

`∑[or(2^n+4^n, 4^n-2^n)]`
-/

namespace A123290.P5897662755472887084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n + 4 ^ n : ℤ) ((4 ^ n : ℤ) - (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P5897662755472887084

namespace A123290

/-- `∑[or(2^n+4^n, 4^n-2^n)]` -/
def P5897662755472887084.Spec : Prop :=
  ∀ n, P5897662755472887084.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P17756198177580534384

`record[ceil(acot(n))+(2^n-1)*(2^n-2)/6]`
-/

namespace A123290.P17756198177580534384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ) + ((2 ^ n : ℤ) - 1 : ℚ) * (((2 ^ n : ℤ) - 2 : ℚ) / 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123290.P17756198177580534384

namespace A123290

/-- `record[ceil(acot(n))+(2^n-1)*(2^n-2)/6]` -/
def P17756198177580534384.Spec : Prop :=
  ∀ n, P17756198177580534384.a n = (A123290 (n + 2) : ℚ)

end A123290

/-! ## A123290.P4923056859559685023

`∑[record[a(n-1)+a(n-1)+4^(n-1)]]` with `a(0)=2, a(1)=1`
-/

namespace A123290.P4923056859559685023
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P4923056859559685023

namespace A123290

/-- `∑[record[a(n-1)+a(n-1)+4^(n-1)]]` -/
def P4923056859559685023.Spec : Prop :=
  ∀ n, P4923056859559685023.a n = (A123290 (n + 2) : ℚ)

end A123290

/-! ## A123290.P6178650849856685480

`∑[A288827(2*n)+1]`
-/

namespace A123290.P6178650849856685480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288827 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P6178650849856685480

namespace A123290

/-- `∑[A288827(2*n)+1]` -/
def P6178650849856685480.Spec : Prop :=
  ∀ n, P6178650849856685480.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P10187739606741785719

`∑[A288828(2*n)+1]`
-/

namespace A123290.P10187739606741785719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288828 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P10187739606741785719

namespace A123290

/-- `∑[A288828(2*n)+1]` -/
def P10187739606741785719.Spec : Prop :=
  ∀ n, P10187739606741785719.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P2186539751149010268

`lcm(2, ∑[A171476(n)]+1)`
-/

namespace A123290.P2186539751149010268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A123290.P2186539751149010268

namespace A123290

/-- `lcm(2, ∑[A171476(n)]+1)` -/
def P2186539751149010268.Spec : Prop :=
  ∀ n, (P2186539751149010268.a n : ℤ) = A123290 (n + 2)

end A123290

/-! ## A123290.P12308722338693327508

`∑[or(1, A267685(n))+1]`
-/

namespace A123290.P12308722338693327508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267685 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P12308722338693327508

namespace A123290

/-- `∑[or(1, A267685(n))+1]` -/
def P12308722338693327508.Spec : Prop :=
  ∀ n, P12308722338693327508.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P8020022642619978432

`2*∑[4^n-A131577(n)]`
-/

namespace A123290.P8020022642619978432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123290.P8020022642619978432

namespace A123290

/-- `2*∑[4^n-A131577(n)]` -/
def P8020022642619978432.Spec : Prop :=
  ∀ n, P8020022642619978432.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P7214636660109254261

`∑[A171476(n%a(n-1))]` with `a(0)=2`
-/

namespace A123290.P7214636660109254261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A171476 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P7214636660109254261

namespace A123290

/-- `∑[A171476(n%a(n-1))]` -/
def P7214636660109254261.Spec : Prop :=
  ∀ n, P7214636660109254261.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P13484131689263692686

`2*(A020988(n)+a(n-1))` with `a(0)=2`
-/

namespace A123290.P13484131689263692686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A020988 n + a (n - 1))

end

end A123290.P13484131689263692686

namespace A123290

/-- `2*(A020988(n)+a(n-1))` -/
def P13484131689263692686.Spec : Prop :=
  ∀ n, P13484131689263692686.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P12555812642300378127

`floor(A290423(2*n)+a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A123290.P12555812642300378127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A290423 (2 * n) + a (n - 1)

end

end A123290.P12555812642300378127

namespace A123290

/-- `floor(A290423(2*n)+a(n-1))` -/
def P12555812642300378127.Spec : Prop :=
  ∀ n, P12555812642300378127.a n = A123290 (n + 2)

end A123290

/-! ## A123290.P14750671243759163941

`∑[A032085(A103517(n))]`
-/

namespace A123290.P14750671243759163941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032085 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123290.P14750671243759163941

namespace A123290

/-- `∑[A032085(A103517(n))]` -/
def P14750671243759163941.Spec : Prop :=
  ∀ n, P14750671243759163941.a n = A123290 (n + 2)

end A123290

/-!
# A123292: Number of permutations of n distinct letters (ABCD...) each of which appears 4 times and having three fixed points.

The programs for A123292, there is no canonical definition to state claims against.
-/

/-! ## A123292.P1916399972336839630

`A059060(A033816(n)+1)`
-/

namespace A123292.P1916399972336839630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A033816 n + 1).toNat

end

end A123292.P1916399972336839630

/-! ## A123292.P13104428116636622616

`A059060(A130883(n+1)+2)`
-/

namespace A123292.P13104428116636622616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A130883 (n + 1) + 2).toNat

end

end A123292.P13104428116636622616

/-!
# A123293: Number of permutations of n distinct letters (ABCD...) each of which appears 4 times and having n-3 fixed points.

The programs for A123293, there is no canonical definition to state claims against.
-/

/-! ## A123293.P18029591320372141211

`∑[64*(n²-n)]`
-/

namespace A123293.P18029591320372141211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * ((n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123293.P18029591320372141211

/-! ## A123293.P11304749307562371445

`4*∑[32*C(n, 2)]`
-/

namespace A123293.P11304749307562371445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123293.P11304749307562371445

/-! ## A123293.P7116551285110026674

`∑[A161680(n)]*128`
-/

namespace A123293.P7116551285110026674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * 128

end

end A123293.P7116551285110026674

/-! ## A123293.P12170053913278851910

`32*A006584(2*n)`
-/

namespace A123293.P12170053913278851910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A006584 (2 * n)

end

end A123293.P12170053913278851910

/-! ## A123293.P3346749429195563491

`64*A007290(n+1)`
-/

namespace A123293.P3346749429195563491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A007290 (n + 1)

end

end A123293.P3346749429195563491

/-!
# A123294: Sum of 13 positive 5th powers.

The programs for A123294, there is no canonical definition to state claims against.
-/

/-! ## A123294.P9329356857811428785

`eq[13, A188462(A233583(n+1))]`
-/

namespace A123294.P9329356857811428785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188462 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A123294.P9329356857811428785

/-! ## A123294.P418848046905966801

`A123295(n+1)-A151818(n)!`
-/

namespace A123294.P418848046905966801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1) - (Nat.factorial (A151818 n).toNat : ℤ)

end

end A123294.P418848046905966801

/-! ## A123294.P11528641844335578908

`A123295(n+1)+A057428(A185083(n))`
-/

namespace A123294.P11528641844335578908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1) + A057428 (A185083 n).toNat

end

end A123294.P11528641844335578908

/-! ## A123294.P13819580297706886502

`A123295(n+1)-A257680(A161712(n))`
-/

namespace A123294.P13819580297706886502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123295 (n + 1) - A257680 (A161712 n).toNat

end

end A123294.P13819580297706886502

/-! ## A123294.P16038348953311966320

`A304653(A000040(n+1))+A123295(n+1)`
-/

namespace A123294.P16038348953311966320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304653 (A000040 (n + 1)).toNat + A123295 (n + 1)

end

end A123294.P16038348953311966320

/-!
# A123295: Sum of 14 positive 5th powers.

The programs for A123295, there is no canonical definition to state claims against.
-/

/-! ## A123295.P17521042352267546310

`A123294(n+1)+A076710(n)!`
-/

namespace A123295.P17521042352267546310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1) + (Nat.factorial (A076710 n).toNat : ℤ)

end

end A123295.P17521042352267546310

/-! ## A123295.P13647184831817399502

`A123294(n+1)+A151818(n)!`
-/

namespace A123295.P13647184831817399502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1) + (Nat.factorial (A151818 n).toNat : ℤ)

end

end A123295.P13647184831817399502

/-! ## A123295.P15133490174883603482

`A350529(∑[n])+A123294(n+1)`
-/

namespace A123295.P15133490174883603482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350529 (∑ j ∈ Finset.range (n + 1), f1 j) + A123294 (n + 1)

end

end A123295.P15133490174883603482

/-! ## A123295.P5602114008971165360

`A123294(n+1)*A274459((n+1)^3)+1`
-/

namespace A123295.P5602114008971165360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1) * A274459 ((n + 1) ^ 3) + 1

end

end A123295.P5602114008971165360

/-! ## A123295.P18405736756039268489

`A301598(A000040(n+1))+A123294(n+1)`
-/

namespace A123295.P18405736756039268489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301598 (A000040 (n + 1)).toNat + A123294 (n + 1)

end

end A123295.P18405736756039268489

/-!
# A123296: Number of permutations of n distinct letters (ABCD...) each of which appears 5 times and having n-2 fixed points.

The programs for A123296, the canonical program `A123296.P3183563357623769502` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123296 has offset 0).

The definition of A123296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123296.P11718324439944859008

`25*C(n+1, 2)`
-/

namespace A123296.P11718324439944859008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * Nat.choose (n + 1) 2

end

end A123296.P11718324439944859008

namespace A123296

/-- `25*C(n+1, 2)` -/
def P11718324439944859008.Spec : Prop :=
  ∀ n, (P11718324439944859008.a n : ℤ) = A123296 n

end A123296

/-! ## A123296.P14222047370705978090

`ogf(25x/(1-3x+3x^2-x^3))`
-/

namespace A123296.P14222047370705978090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 25] [1, -3, 3, -1] n

end

end A123296.P14222047370705978090

namespace A123296

/-- `ogf(25x/(1-3x+3x^2-x^3))` -/
def P14222047370705978090.Spec : Prop :=
  ∀ n, P14222047370705978090.a n = A123296 n

end A123296

/-! ## A123296.P9750389349926921187

`25*n*(n+1)/2`
-/

namespace A123296.P9750389349926921187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * n * (n + 1) : ℚ) / 2

end

end A123296.P9750389349926921187

namespace A123296

/-- `25*n*(n+1)/2` -/
def P9750389349926921187.Spec : Prop :=
  ∀ n, P9750389349926921187.a n = (A123296 n : ℚ)

theorem P9750389349926921187.correct : P9750389349926921187.Spec := by
  intro n
  induction n with
  | zero => simp [A123296, A123296.P9750389349926921187.a, A123296.P3183563357623769502.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A123296, Nat.add_sub_cancel, A123296.P9750389349926921187.a, A123296.P3183563357623769502.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A123296

/-! ## A123296.P3183563357623769502

`25*n+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A123296

/-- `25*n+a(n-1)` -/
def P3183563357623769502.Spec : Prop :=
  ∀ n, (P3183563357623769502.a n : ℤ) = A123296 n

theorem P3183563357623769502.correct : P3183563357623769502.Spec := by
  intro n
  simp only [A123296]

end A123296

/-! ## A123296.P12803133046259261895

`25*A000217(n)`
-/

namespace A123296.P12803133046259261895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A000217 n

end

end A123296.P12803133046259261895

namespace A123296

/-- `25*A000217(n)` -/
def P12803133046259261895.Spec : Prop :=
  ∀ n, P12803133046259261895.a n = A123296 n

end A123296

/-! ## A123296.P7063517425005422299

`∑[a(n-1)+25]` with `a(0)=0`
-/

namespace A123296.P7063517425005422299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123296.P7063517425005422299

namespace A123296

/-- `∑[a(n-1)+25]` -/
def P7063517425005422299.Spec : Prop :=
  ∀ n, (P7063517425005422299.a n : ℤ) = A123296 n

end A123296

/-! ## A123296.P16667372564534400465

`∑[n/cos(atan(2))²²]`
-/

namespace A123296.P16667372564534400465
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.cos (Real.arctan (2 : ℝ)) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123296.P16667372564534400465

namespace A123296

/-- `∑[n/cos(atan(2))²²]` -/
def P16667372564534400465.Spec : Prop :=
  ∀ n, P16667372564534400465.a n = (A123296 n : ℝ)

end A123296

/-! ## A123296.P2671979774991155222

`∑[n/sin(acot(2))²²]`
-/

namespace A123296.P2671979774991155222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / (Real.sin (SequenceMachineLib.acot (2 : ℝ)) ^ 2) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123296.P2671979774991155222

namespace A123296

/-- `∑[n/sin(acot(2))²²]` -/
def P2671979774991155222.Spec : Prop :=
  ∀ n, P2671979774991155222.a n = (A123296 n : ℝ)

end A123296

/-! ## A123296.P11803824403315139516

`26*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A123296.P11803824403315139516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (26 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A123296.P11803824403315139516

namespace A123296

/-- `26*n-(n-a(n-1))` -/
def P11803824403315139516.Spec : Prop :=
  ∀ n, P11803824403315139516.a n = A123296 n

end A123296

/-! ## A123296.P2684423433187932465

`a(n-1)+n/(1/5)²` with `a(0)=0`
-/

namespace A123296.P2684423433187932465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℚ) / ((1 : ℚ) / 5) ^ 2

end

end A123296.P2684423433187932465

namespace A123296

/-- `a(n-1)+n/(1/5)²` -/
def P2684423433187932465.Spec : Prop :=
  ∀ n, P2684423433187932465.a n = (A123296 n : ℚ)

end A123296

/-! ## A123296.P18063695447316845602

`∑[A008607(n)]`
-/

namespace A123296.P18063695447316845602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123296.P18063695447316845602

namespace A123296

/-- `∑[A008607(n)]` -/
def P18063695447316845602.Spec : Prop :=
  ∀ n, P18063695447316845602.a n = A123296 n

end A123296

/-! ## A123296.P219502971791820637

`A262221(n)-1`
-/

namespace A123296.P219502971791820637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n - 1

end

end A123296.P219502971791820637

namespace A123296

/-- `A262221(n)-1` -/
def P219502971791820637.Spec : Prop :=
  ∀ n, P219502971791820637.a n = A123296 n

end A123296

/-! ## A123296.P15568415138119139262

`A061793(n)-3`
-/

namespace A123296.P15568415138119139262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061793 n - 3

end

end A123296.P15568415138119139262

namespace A123296

/-- `A061793(n)-3` -/
def P15568415138119139262.Spec : Prop :=
  ∀ n, P15568415138119139262.a n = A123296 n

end A123296

/-! ## A123296.P10513067205583541521

`A164015(n)-5`
-/

namespace A123296.P10513067205583541521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164015 n - 5

end

end A123296.P10513067205583541521

namespace A123296

/-- `A164015(n)-5` -/
def P10513067205583541521.Spec : Prop :=
  ∀ n, P10513067205583541521.a n = A123296 n

end A123296

/-! ## A123296.P8232238076789173163

`5*A028895(n)`
-/

namespace A123296.P8232238076789173163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A028895 n

end

end A123296.P8232238076789173163

namespace A123296

/-- `5*A028895(n)` -/
def P8232238076789173163.Spec : Prop :=
  ∀ n, P8232238076789173163.a n = A123296 n

end A123296

/-! ## A123296.P15824452373684068432

`∑[A008606(n)+n]`
-/

namespace A123296.P15824452373684068432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123296.P15824452373684068432

namespace A123296

/-- `∑[A008606(n)+n]` -/
def P15824452373684068432.Spec : Prop :=
  ∀ n, P15824452373684068432.a n = A123296 n

end A123296

/-! ## A123296.P10728482274322784657

`A173307(n)-∑[n]`
-/

namespace A123296.P10728482274322784657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173307 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A123296.P10728482274322784657

namespace A123296

/-- `A173307(n)-∑[n]` -/
def P10728482274322784657.Spec : Prop :=
  ∀ n, P10728482274322784657.a n = A123296 n

end A123296

/-! ## A123296.P2059026351939705730

`∑[A252994(n)-n]`
-/

namespace A123296.P2059026351939705730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252994 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123296.P2059026351939705730

namespace A123296

/-- `∑[A252994(n)-n]` -/
def P2059026351939705730.Spec : Prop :=
  ∀ n, P2059026351939705730.a n = A123296 n

end A123296

/-! ## A123296.P11937980773792500194

`A001545(n)/2-2`
-/

namespace A123296.P11937980773792500194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001545 n : ℚ) / 2 - 2

end

end A123296.P11937980773792500194

namespace A123296

/-- `A001545(n)/2-2` -/
def P11937980773792500194.Spec : Prop :=
  ∀ n, P11937980773792500194.a n = (A123296 n : ℚ)

theorem P11937980773792500194.correct : P11937980773792500194.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A123296, Nat.add_sub_cancel, A123296.P11937980773792500194.a, A123296.P3183563357623769502.a, A001545, A001545.P4596200827424455748.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A123296, Nat.add_sub_cancel, A123296.P11937980773792500194.a, A123296.P3183563357623769502.a, A001545, A001545.P4596200827424455748.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A123296

/-! ## A123296.P6601750105746909380

`5*(A005891(n)-1)`
-/

namespace A123296.P6601750105746909380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A005891 n - 1)

end

end A123296.P6601750105746909380

namespace A123296

/-- `5*(A005891(n)-1)` -/
def P6601750105746909380.Spec : Prop :=
  ∀ n, P6601750105746909380.a n = A123296 n

end A123296

/-!
# A123297: Number of permutations of n distinct letters (ABCD...) each of which appears 5 times and having no fixed points.

The programs for A123297, there is no canonical definition to state claims against.
-/

/-! ## A123297.P6307868915773015517

`A059062(A000566(n))`
-/

namespace A123297.P6307868915773015517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059062 (A000566 n).toNat

end

end A123297.P6307868915773015517

/-!
# A123299: Prime sums of 13 positive 5th powers.

The programs for A123299, there is no canonical definition to state claims against.
-/

/-! ## A123299.P3381306877793488601

`p?[A123294(n+1)]`
-/

namespace A123299.P3381306877793488601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123299.P3381306877793488601

/-! ## A123299.P867505333403247200

`filter[A123294(n+1), A010051(#)]`
-/

namespace A123299.P867505333403247200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A123299.P867505333403247200

/-! ## A123299.P254213171381986204

`filter[A123294(n+1), A323153(#)]`
-/

namespace A123299.P254213171381986204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A123299.P254213171381986204

/-! ## A123299.P8869966816558840108

`filter[A123294(n+1), A353817(#)]`
-/

namespace A123299.P8869966816558840108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A123299.P8869966816558840108

/-! ## A123299.P13611158680834314572

`∩[A000040(n+1), A123294(n+1)]`
-/

namespace A123299.P13611158680834314572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P13611158680834314572

/-! ## A123299.P373909968009711192

`∩[A004139(n+1), A123294(n+1)]`
-/

namespace A123299.P373909968009711192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P373909968009711192

/-! ## A123299.P12921357693842359501

`∩[A006005(n+1), A123294(n+1)]`
-/

namespace A123299.P12921357693842359501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P12921357693842359501

/-! ## A123299.P9009673806723090623

`∩[A008578(n+1), A123294(n+1)]`
-/

namespace A123299.P9009673806723090623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P9009673806723090623

/-! ## A123299.P1291971183508857208

`∩[A033946(n+1), A123294(n+1)]`
-/

namespace A123299.P1291971183508857208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P1291971183508857208

/-! ## A123299.P7649960548389685250

`∩[A045319(n+1), A123294(n+1)]`
-/

namespace A123299.P7649960548389685250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P7649960548389685250

/-! ## A123299.P231439012136920120

`∩[A045344(n+1), A123294(n+1)]`
-/

namespace A123299.P231439012136920120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P231439012136920120

/-! ## A123299.P11904017798276639239

`∩[A046022(n+1), A123294(n+1)]`
-/

namespace A123299.P11904017798276639239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P11904017798276639239

/-! ## A123299.P13995212338211986113

`∩[A051948(n+1), A123294(n+1)]`
-/

namespace A123299.P13995212338211986113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P13995212338211986113

/-! ## A123299.P15367367448964199699

`∩[A053813(n+1), A123294(n+1)]`
-/

namespace A123299.P15367367448964199699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P15367367448964199699

/-! ## A123299.P17048723606622065632

`∩[A062972(n+1), A123294(n+1)]`
-/

namespace A123299.P17048723606622065632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P17048723606622065632

/-! ## A123299.P12414738622804425566

`∩[A065091(n+1), A123294(n+1)]`
-/

namespace A123299.P12414738622804425566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P12414738622804425566

/-! ## A123299.P16521693068469644820

`∩[A065396(n+1), A123294(n+1)]`
-/

namespace A123299.P16521693068469644820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P16521693068469644820

/-! ## A123299.P7250856897012003343

`∩[A066050(n+1), A123294(n+1)]`
-/

namespace A123299.P7250856897012003343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P7250856897012003343

/-! ## A123299.P9999376039456123024

`∩[A067126(n+1), A123294(n+1)]`
-/

namespace A123299.P9999376039456123024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P9999376039456123024

/-! ## A123299.P9196569529554149788

`∩[A071621(n+1), A123294(n+1)]`
-/

namespace A123299.P9196569529554149788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123299.P9196569529554149788

