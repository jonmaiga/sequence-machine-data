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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A215500: a(n) = ((sqrt(5) + 3)^n + (-sqrt(5) -1)^n + (-sqrt(5) + 3)^n + (sqrt(5) - 1)^n) / 2^n.

The programs for A215500, the canonical program `A215500.P11991923854981358301` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215500 has offset 0).

The definition of A215500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215500.P11991923854981358301

`2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=4, a(1)=2, a(2)=10, a(3)=14`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215500

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)` -/
def P11991923854981358301.Spec : Prop :=
  ∀ n, P11991923854981358301.a n = A215500 n

theorem P11991923854981358301.correct : P11991923854981358301.Spec := by
  intro n
  simp only [A215500]

end A215500

/-! ## A215500.P7806252255388626554

`record[floor((-ϕ)^n)+1]+floor((-ϕ)^n)+1`
-/

namespace A215500.P7806252255388626554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-Real.goldenRatio) ^ n⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (⌊(-Real.goldenRatio) ^ n⌋ + 1)

end

end A215500.P7806252255388626554

namespace A215500

/-- `record[floor((-ϕ)^n)+1]+floor((-ϕ)^n)+1` -/
def P7806252255388626554.Spec : Prop :=
  ∀ n, P7806252255388626554.a n = A215500 n

end A215500

/-! ## A215500.P12540957031356553452

`A000032(2*n)+floor((-ϕ)^n)+1`
-/

namespace A215500.P12540957031356553452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) + (⌊(-Real.goldenRatio) ^ n⌋ + 1)

end

end A215500.P12540957031356553452

namespace A215500

/-- `A000032(2*n)+floor((-ϕ)^n)+1` -/
def P12540957031356553452.Spec : Prop :=
  ∀ n, P12540957031356553452.a n = A215500 n

end A215500

/-! ## A215500.P15956959166282393208

`A355021(n)+A065034(n)`
-/

namespace A215500.P15956959166282393208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355021 n + A065034 n

end

end A215500.P15956959166282393208

namespace A215500

/-- `A355021(n)+A065034(n)` -/
def P15956959166282393208.Spec : Prop :=
  ∀ n, P15956959166282393208.a n = A215500 n

end A215500

/-! ## A215500.P5337005697857053194

`A061084(n+1)+A005248(n)`
-/

namespace A215500.P5337005697857053194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A005248 n

end

end A215500.P5337005697857053194

namespace A215500

/-- `A061084(n+1)+A005248(n)` -/
def P5337005697857053194.Spec : Prop :=
  ∀ n, P5337005697857053194.a n = A215500 n

end A215500

/-! ## A215500.P7955330586573441236

`A355021(n)+A001612(2*n)`
-/

namespace A215500.P7955330586573441236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355021 n + A001612 (2 * n)

end

end A215500.P7955330586573441236

namespace A215500

/-- `A355021(n)+A001612(2*n)` -/
def P7955330586573441236.Spec : Prop :=
  ∀ n, P7955330586573441236.a n = A215500 n

end A215500

/-! ## A215500.P2654660647771952372

`A355021(n)+A099925(2*n)`
-/

namespace A215500.P2654660647771952372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355021 n + A099925 (2 * n)

end

end A215500.P2654660647771952372

namespace A215500

/-- `A355021(n)+A099925(2*n)` -/
def P2654660647771952372.Spec : Prop :=
  ∀ n, P2654660647771952372.a n = A215500 n

end A215500

/-! ## A215500.P15695885169667337490

`A001612(2*n)+∑[A075193(n)]`
-/

namespace A215500.P15695885169667337490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215500.P15695885169667337490

namespace A215500

/-- `A001612(2*n)+∑[A075193(n)]` -/
def P15695885169667337490.Spec : Prop :=
  ∀ n, P15695885169667337490.a n = A215500 n

end A215500

/-! ## A215500.P13905128972620355139

`A061084(n+1)+record[A005247(n)]`
-/

namespace A215500.P13905128972620355139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215500.P13905128972620355139

namespace A215500

/-- `A061084(n+1)+record[A005247(n)]` -/
def P13905128972620355139.Spec : Prop :=
  ∀ n, P13905128972620355139.a n = A215500 n

end A215500

/-! ## A215500.P7579126811848214817

`A061084(n+1)+A000032(2*n)`
-/

namespace A215500.P7579126811848214817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A000032 (2 * n)

end

end A215500.P7579126811848214817

namespace A215500

/-- `A061084(n+1)+A000032(2*n)` -/
def P7579126811848214817.Spec : Prop :=
  ∀ n, P7579126811848214817.a n = A215500 n

end A215500

/-! ## A215500.P3394726467984275881

`A061084(n+1)+A005247(2*n)`
-/

namespace A215500.P3394726467984275881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A005247 (2 * n)

end

end A215500.P3394726467984275881

namespace A215500

/-- `A061084(n+1)+A005247(2*n)` -/
def P3394726467984275881.Spec : Prop :=
  ∀ n, P3394726467984275881.a n = A215500 n

end A215500

/-! ## A215500.P6655607679573015584

`A061084(2*n+1)+A061084(n+1)`
-/

namespace A215500.P6655607679573015584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (2 * n + 1) + A061084 (n + 1)

end

end A215500.P6655607679573015584

namespace A215500

/-- `A061084(2*n+1)+A061084(n+1)` -/
def P6655607679573015584.Spec : Prop :=
  ∀ n, P6655607679573015584.a n = A215500 n

end A215500

/-! ## A215500.P1452637709845311475

`A005248(n)-(A075193(n+1)+A075193(n))`
-/

namespace A215500.P1452637709845311475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - (A075193 (n + 1) + A075193 n)

end

end A215500.P1452637709845311475

namespace A215500

/-- `A005248(n)-(A075193(n+1)+A075193(n))` -/
def P1452637709845311475.Spec : Prop :=
  ∀ n, P1452637709845311475.a n = A215500 n

end A215500

/-! ## A215500.P16150946801021340403

`A061084(n+1)-Δ[A061084(2*n)]`
-/

namespace A215500.P16150946801021340403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) - (f1 (n + 1) - f1 n)

end

end A215500.P16150946801021340403

namespace A215500

/-- `A061084(n+1)-Δ[A061084(2*n)]` -/
def P16150946801021340403.Spec : Prop :=
  ∀ n, P16150946801021340403.a n = A215500 n

end A215500

/-! ## A215500.P10839521939717028466

`A005248(n)+A075269(n)/A000032(n+1)`
-/

namespace A215500.P10839521939717028466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n : ℚ) + (A075269 n : ℚ) / (A000032 (n + 1) : ℚ)

end

end A215500.P10839521939717028466

namespace A215500

/-- `A005248(n)+A075269(n)/A000032(n+1)` -/
def P10839521939717028466.Spec : Prop :=
  ∀ n, P10839521939717028466.a n = (A215500 n : ℚ)

end A215500

/-! ## A215500.P5003706462512406955

`A075091(n+1)-(A075270(2*n+1)+A075270(n+1))`
-/

namespace A215500.P5003706462512406955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075091 (n + 1) - (A075270 (2 * n + 1) + A075270 (n + 1))

end

end A215500.P5003706462512406955

namespace A215500

/-- `A075091(n+1)-(A075270(2*n+1)+A075270(n+1))` -/
def P5003706462512406955.Spec : Prop :=
  ∀ n, P5003706462512406955.a n = A215500 n

end A215500

/-!
# A215502: a(n) = (1+sqrt(3))^n + (-2)^n + (1-sqrt(3))^n + 1.

The programs for A215502, the canonical program `A215502.P2025080122478258898` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215502 has offset 0).

The definition of A215502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215502.P2025080122478258898

`a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)` with `a(0)=4, a(1)=1, a(2)=13, a(3)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215502

/-- `a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)` -/
def P2025080122478258898.Spec : Prop :=
  ∀ n, P2025080122478258898.a n = A215502 n

theorem P2025080122478258898.correct : P2025080122478258898.Spec := by
  intro n
  simp only [A215502]

end A215502

/-! ## A215502.P10759556344044780961

`(1+sqrt(3))^n+(-2)^n+(1-sqrt(3))^n+1`
-/

namespace A215502.P10759556344044780961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (3 : ℝ)) ^ n + ((-2) ^ n : ℝ) + (1 - Real.sqrt (3 : ℝ)) ^ n + 1

end

end A215502.P10759556344044780961

namespace A215502

/-- `(1+sqrt(3))^n+(-2)^n+(1-sqrt(3))^n+1` -/
def P10759556344044780961.Spec : Prop :=
  ∀ n, P10759556344044780961.a n = (A215502 n : ℝ)

theorem P10759556344044780961.correct : P10759556344044780961.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A215502, Nat.add_sub_cancel, A215502.P10759556344044780961.a, A215502.P2025080122478258898.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A215502, Nat.add_sub_cancel, A215502.P10759556344044780961.a, A215502.P2025080122478258898.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A215502

/-! ## A215502.P16394007304254635973

`A120865(A028859(n)+1)`
-/

namespace A215502.P16394007304254635973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120865 (A028859 n + 1).toNat

end

end A215502.P16394007304254635973

namespace A215502

/-- `A120865(A028859(n)+1)` -/
def P16394007304254635973.Spec : Prop :=
  ∀ n, P16394007304254635973.a n = A215502 n

end A215502

/-!
# A215503: a(n) = (u+1)^n + (-s-1)^n + (t+1)^n + (-1)^n + (-t+1)^n + (s-1)^n + (-u+1)^n where s = sqrt(2), t = sqrt(2-s), u = sqrt(2+s).

The programs for A215503, there is no canonical definition to state claims against.
-/

/-! ## A215503.P16426623978022143661

`xor(A127307(a(n-1)), A175666(n+1))` with `a(0)=7, a(1)=1`
-/

namespace A215503.P16426623978022143661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n a =>
  Int.xor (A127307 (a (n - 1)).toNat) (A175666 (n + 1))

end

end A215503.P16426623978022143661

/-!
# A215504: Prime numbers p such that p^2 - 1 has exactly one distinct prime factor other than 2 and 3.

The programs for A215504, there is no canonical definition to state claims against.
-/

/-! ## A215504.P5753580509423753382

`∩[A219528(n+1), A364003(n+1)]`
-/

namespace A215504.P5753580509423753382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215504.P5753580509423753382

/-! ## A215504.P17453565422994427941

`∩[A219669(n+1), A364003(n+1)]`
-/

namespace A215504.P17453565422994427941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215504.P17453565422994427941

/-! ## A215504.P11397407887722011257

`∩[A219697(n+1), A364003(n+1)]`
-/

namespace A215504.P11397407887722011257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215504.P11397407887722011257

/-! ## A215504.P12081440768999011890

`p?[A364003(n+1)]`
-/

namespace A215504.P12081440768999011890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215504.P12081440768999011890

/-! ## A215504.P10756300376467024593

`p?[A325204(n+1)+1]`
-/

namespace A215504.P10756300376467024593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325204 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215504.P10756300376467024593

/-!
# A215505: G.f. satisfies: A(x) = 1 + x*A(x)^3*A(x*A(x)^3).

The programs for A215505, there is no canonical definition to state claims against.
-/

/-! ## A215505.P17345556778832025540

`and(p?[A283650(n)], A182304(n+1))`
-/

namespace A215505.P17345556778832025540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A182304 (n + 1))

end

end A215505.P17345556778832025540

/-! ## A215505.P8674199150945893266

`A097801(n)-A000188(A195260(n))`
-/

namespace A215505.P8674199150945893266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 n - A000188 (A195260 n).toNat

end

end A215505.P8674199150945893266

/-!
# A215506: G.f. satisfies: A(x) = 1 + x*A(x)^4*A(x*A(x)^4).

The programs for A215506, there is no canonical definition to state claims against.
-/

/-! ## A215506.P16570401159540308465

`A086880(2*n)-A001227(A086880(2*n))`
-/

namespace A215506.P16570401159540308465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086880 (2 * n) - A001227 (A086880 (2 * n)).toNat

end

end A215506.P16570401159540308465

/-!
# A215507: G.f. satisfies: A(x) = 1 + x*A(x)^5*A(x*A(x)^5).

The programs for A215507, there is no canonical definition to state claims against.
-/

/-! ## A215507.P18141666292774923500

`A325712(A018013(n))`
-/

namespace A215507.P18141666292774923500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325712 (A018013 n).toNat

end

end A215507.P18141666292774923500

/-!
# A215508: Smallest m such that the period of the continued fraction of sqrt(m) is A215485(n); records of A013646.

The programs for A215508, there is no canonical definition to state claims against.
-/

/-! ## A215508.P18337273403931348763

`A013646(A215485(n))`
-/

namespace A215508.P18337273403931348763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A215485 n).toNat

end

end A215508.P18337273403931348763

/-! ## A215508.P8209978381298332900

`record[A013646(n)]`
-/

namespace A215508.P8209978381298332900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215508.P8209978381298332900

/-! ## A215508.P11615202453046325373

`A013646(lt[A006918(n), A013646(n)])`
-/

namespace A215508.P11615202453046325373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215508.P11615202453046325373

/-!
# A215509: Numerator of sigma(n)/n when n belongs to A162657.

The programs for A215509, there is no canonical definition to state claims against.
-/

/-! ## A215509.P10496749689485532575

`∑{d}[A162657(n+1), (n+1)/#]`
-/

namespace A215509.P10496749689485532575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162657 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A215509.P10496749689485532575

/-! ## A215509.P6023646293436635069

`A000203(A162657(n+1))/A359635(n+1)`
-/

namespace A215509.P6023646293436635069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A162657 (n + 1)).toNat : ℚ) / (A359635 (n + 1) : ℚ)

end

end A215509.P6023646293436635069

/-! ## A215509.P12539366132318346742

`A000203((n+1)*A359635(n+1))/A359635(n+1)`
-/

namespace A215509.P12539366132318346742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((n + 1 : ℤ) * A359635 (n + 1)).toNat : ℚ) / (A359635 (n + 1) : ℚ)

end

end A215509.P12539366132318346742

/-! ## A215509.P8391514588995757149

`A017665(A162657(n+1))`
-/

namespace A215509.P8391514588995757149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A162657 (n + 1)).toNat

end

end A215509.P8391514588995757149

/-! ## A215509.P16123382395134327453

`A017665((n+1)*A359635(n+1))`
-/

namespace A215509.P16123382395134327453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 ((n + 1 : ℤ) * A359635 (n + 1)).toNat

end

end A215509.P16123382395134327453

/-! ## A215509.P16906431676251717871

`A240923(A162657(n+1))+Δ[A160664(n)]`
-/

namespace A215509.P16906431676251717871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (A162657 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A215509.P16906431676251717871

/-! ## A215509.P5803265945391116919

`A240923(A162657(n+1))+A000203(n+1)`
-/

namespace A215509.P5803265945391116919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240923 (A162657 (n + 1)).toNat + A000203 (n + 1)

end

end A215509.P5803265945391116919

/-! ## A215509.P6620089268641694942

`A243473(A162657(n+1))+A000027(n+1)`
-/

namespace A215509.P6620089268641694942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (A162657 (n + 1)).toNat + A000027 (n + 1)

end

end A215509.P6620089268641694942

/-! ## A215509.P16546408189913912353

`A243473(A162657(n+1))+A008619(2*n)`
-/

namespace A215509.P16546408189913912353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (A162657 (n + 1)).toNat + A008619 (2 * n)

end

end A215509.P16546408189913912353

/-!
# A215510: a(n) = 7*a(n-1) - 14*a(n-2) + 7*a(n-3) with a(0)=0, a(1)=7, a(2)=35.

The programs for A215510, the canonical program `A215510.P4649209126719248686` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215510 has offset 0).

The definition of A215510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-14*a(n-2)+7*a(n-3)` (program `A215510.P4649209126719248686`, by `A215510.P4649209126719248686.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215510.P4649209126719248686

`7*a(n-1)-14*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=7, a(2)=35`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215510

/-- `7*a(n-1)-14*a(n-2)+7*a(n-3)` -/
def P4649209126719248686.Spec : Prop :=
  ∀ n, P4649209126719248686.a n = A215510 n

theorem P4649209126719248686.correct : P4649209126719248686.Spec := by
  intro n
  simp only [A215510]

end A215510

/-! ## A215510.P18043241498299273956

`7*A215008(n)`
-/

namespace A215510.P18043241498299273956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A215008 n

end

end A215510.P18043241498299273956

namespace A215510

/-- `7*A215008(n)` -/
def P18043241498299273956.Spec : Prop :=
  ∀ n, P18043241498299273956.a n = A215510 n

end A215510

/-! ## A215510.P9953911700220810784

`∑[A215143(n+1)]-2`
-/

namespace A215510.P9953911700220810784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A215510.P9953911700220810784

namespace A215510

/-- `∑[A215143(n+1)]-2` -/
def P9953911700220810784.Spec : Prop :=
  ∀ n, P9953911700220810784.a n = A215510 n

end A215510

/-! ## A215510.P11958297437794450603

`∑[∑[A215008(n+1)]+1]-2`
-/

namespace A215510.P11958297437794450603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A215510.P11958297437794450603

namespace A215510

/-- `∑[∑[A215008(n+1)]+1]-2` -/
def P11958297437794450603.Spec : Prop :=
  ∀ n, P11958297437794450603.a n = A215510 n

end A215510

/-! ## A215510.P8832482573316542958

`Δ[7*A215143(A004273(n)-n)]`
-/

namespace A215510.P8832482573316542958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A215143 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215510.P8832482573316542958

namespace A215510

/-- `Δ[7*A215143(A004273(n)-n)]` -/
def P8832482573316542958.Spec : Prop :=
  ∀ n, P8832482573316542958.a n = A215510 n

end A215510

/-! ## A215510.P9664233204966392839

`A094429(n+1)+A094429(n+1)-∑[A094429(n+1)]`
-/

namespace A215510.P9664233204966392839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094429 (n + 1) + (A094429 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215510.P9664233204966392839

namespace A215510

/-- `A094429(n+1)+A094429(n+1)-∑[A094429(n+1)]` -/
def P9664233204966392839.Spec : Prop :=
  ∀ n, P9664233204966392839.a n = A215510 n

end A215510

/-! ## A215510.P16347348828774955607

`A215494(n+2)%A215494(n+1)`
-/

namespace A215510.P16347348828774955607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215494 (n + 2)) (A215494 (n + 1))

end

end A215510.P16347348828774955607

namespace A215510

/-- `A215494(n+2)%A215494(n+1)` -/
def P16347348828774955607.Spec : Prop :=
  ∀ n, P16347348828774955607.a n = A215510 n

end A215510

/-! ## A215510.P3018682232850018224

`2*A094429(n+1)-∑[A094429(n+1)]`
-/

namespace A215510.P3018682232850018224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094429 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215510.P3018682232850018224

namespace A215510

/-- `2*A094429(n+1)-∑[A094429(n+1)]` -/
def P3018682232850018224.Spec : Prop :=
  ∀ n, P3018682232850018224.a n = A215510 n

end A215510

/-! ## A215510.P12830326463418108129

`∑[A215143(n+1)%A215171(n)]`
-/

namespace A215510.P12830326463418108129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215143 (n + 1)) (A215171 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215510.P12830326463418108129

namespace A215510

/-- `∑[A215143(n+1)%A215171(n)]` -/
def P12830326463418108129.Spec : Prop :=
  ∀ n, P12830326463418108129.a n = A215510 n

end A215510

/-!
# A215511: A sequence of prime numbers expressed as minimum bases using only digits 0 and 1.

The programs for A215511, there is no canonical definition to state claims against.
-/

/-! ## A215511.P18346803491292012476

`A004676(A034296(n)%A029873(2*n+1))`
-/

namespace A215511.P18346803491292012476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004676 (Int.tmod (A034296 n) (A029873 (2 * n + 1))).toNat

end

end A215511.P18346803491292012476

/-! ## A215511.P9495492301210609838

`A007088(p?[∑[A136868(n)]])`
-/

namespace A215511.P9495492301210609838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215511.P9495492301210609838

/-! ## A215511.P11839795377553143505

`A125099(A014278(n+1))`
-/

namespace A215511.P11839795377553143505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125099 (A014278 (n + 1)).toNat

end

end A215511.P11839795377553143505

/-!
# A215512: a(n) = 5*a(n-1) - 6*a(n-2) + a(n-3), with a(0)=1, a(1)=3, a(2)=8.

The programs for A215512, the canonical program `A215512.P3713179820565500019` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215512 has offset 0).

The definition of A215512 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-6*a(n-2)+a(n-3)` (program `A215512.P3713179820565500019`, by `A215512.P3713179820565500019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215512.P3713179820565500019

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215512

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P3713179820565500019.Spec : Prop :=
  ∀ n, P3713179820565500019.a n = A215512 n

theorem P3713179820565500019.correct : P3713179820565500019.Spec := by
  intro n
  simp only [A215512]

end A215512

/-! ## A215512.P6647875704757633210

`ogf((-1+2x+x^2)/(-1+5x-6x^2+x^3))`
-/

namespace A215512.P6647875704757633210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -5, 6, -1] n

end

end A215512.P6647875704757633210

namespace A215512

/-- `ogf((-1+2x+x^2)/(-1+5x-6x^2+x^3))` -/
def P6647875704757633210.Spec : Prop :=
  ∀ n, P6647875704757633210.a n = A215512 n

end A215512

/-! ## A215512.P10052066372428078064

`record[-A214683(n)]`
-/

namespace A215512.P10052066372428078064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A214683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215512.P10052066372428078064

namespace A215512

/-- `record[-A214683(n)]` -/
def P10052066372428078064.Spec : Prop :=
  ∀ n, P10052066372428078064.a n = A215512 n

end A215512

/-! ## A215512.P8166933242229653940

`abs(A214683(2*n))`
-/

namespace A215512.P8166933242229653940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214683 (2 * n)|

end

end A215512.P8166933242229653940

namespace A215512

/-- `abs(A214683(2*n))` -/
def P8166933242229653940.Spec : Prop :=
  ∀ n, P8166933242229653940.a n = A215512 n

end A215512

/-! ## A215512.P9361236536390435803

`A080937(n+2)-A052975(n)`
-/

namespace A215512.P9361236536390435803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 2) - A052975 n

end

end A215512.P9361236536390435803

namespace A215512

/-- `A080937(n+2)-A052975(n)` -/
def P9361236536390435803.Spec : Prop :=
  ∀ n, P9361236536390435803.a n = A215512 n

end A215512

/-! ## A215512.P2600753657544751217

`A080937(n+1)+Δ[A080937(n)]`
-/

namespace A215512.P2600753657544751217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 1) + (f1 (n + 1) - f1 n)

end

end A215512.P2600753657544751217

namespace A215512

/-- `A080937(n+1)+Δ[A080937(n)]` -/
def P2600753657544751217.Spec : Prop :=
  ∀ n, P2600753657544751217.a n = A215512 n

end A215512

/-! ## A215512.P13220501687443290589

`∑[2*A052975(n)]-A060557(n)`
-/

namespace A215512.P13220501687443290589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060557 n

end

end A215512.P13220501687443290589

namespace A215512

/-- `∑[2*A052975(n)]-A060557(n)` -/
def P13220501687443290589.Spec : Prop :=
  ∀ n, P13220501687443290589.a n = A215512 n

end A215512

/-! ## A215512.P7792502959312488275

`A080937(n+1)+A006053(2*n)`
-/

namespace A215512.P7792502959312488275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 1) + A006053 (2 * n)

end

end A215512.P7792502959312488275

namespace A215512

/-- `A080937(n+1)+A006053(2*n)` -/
def P7792502959312488275.Spec : Prop :=
  ∀ n, P7792502959312488275.a n = A215512 n

end A215512

/-! ## A215512.P9346916684809035688

`A052547(2*(n+1))-A052975(n)`
-/

namespace A215512.P9346916684809035688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * (n + 1)) - A052975 n

end

end A215512.P9346916684809035688

namespace A215512

/-- `A052547(2*(n+1))-A052975(n)` -/
def P9346916684809035688.Spec : Prop :=
  ∀ n, P9346916684809035688.a n = A215512 n

end A215512

/-! ## A215512.P12296553582675721760

`2*A094790(n+1)-A060557(n)`
-/

namespace A215512.P12296553582675721760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094790 (n + 1) - A060557 n

end

end A215512.P12296553582675721760

namespace A215512

/-- `2*A094790(n+1)-A060557(n)` -/
def P12296553582675721760.Spec : Prop :=
  ∀ n, P12296553582675721760.a n = A215512 n

end A215512

/-! ## A215512.P15234199122420712099

`A080937(n+2)-A028495(2*n)`
-/

namespace A215512.P15234199122420712099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 2) - A028495 (2 * n)

end

end A215512.P15234199122420712099

namespace A215512

/-- `A080937(n+2)-A028495(2*n)` -/
def P15234199122420712099.Spec : Prop :=
  ∀ n, P15234199122420712099.a n = A215512 n

end A215512

/-! ## A215512.P17654601769431535297

`A052547(2*n)+A006053(2*n)`
-/

namespace A215512.P17654601769431535297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * n) + A006053 (2 * n)

end

end A215512.P17654601769431535297

namespace A215512

/-- `A052547(2*n)+A006053(2*n)` -/
def P17654601769431535297.Spec : Prop :=
  ∀ n, P17654601769431535297.a n = A215512 n

end A215512

/-! ## A215512.P16558711669297398506

`A187066(4*n)+A006053(2*n)`
-/

namespace A215512.P16558711669297398506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n) + A006053 (2 * n)

end

end A215512.P16558711669297398506

namespace A215512

/-- `A187066(4*n)+A006053(2*n)` -/
def P16558711669297398506.Spec : Prop :=
  ∀ n, P16558711669297398506.a n = A215512 n

end A215512

/-! ## A215512.P7437645243834227260

`A265755(4*n)+A052547(2*n)`
-/

namespace A215512.P7437645243834227260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (4 * n) + A052547 (2 * n)

end

end A215512.P7437645243834227260

namespace A215512

/-- `A265755(4*n)+A052547(2*n)` -/
def P7437645243834227260.Spec : Prop :=
  ∀ n, P7437645243834227260.a n = A215512 n

end A215512

/-! ## A215512.P14535259753112757812

`A265755(4*n)+A187066(4*n)`
-/

namespace A215512.P14535259753112757812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (4 * n) + A187066 (4 * n)

end

end A215512.P14535259753112757812

namespace A215512

/-- `A265755(4*n)+A187066(4*n)` -/
def P14535259753112757812.Spec : Prop :=
  ∀ n, P14535259753112757812.a n = A215512 n

end A215512

/-! ## A215512.P11830204676648207646

`∑[A052975(n)]-A096976(2*n+1)`
-/

namespace A215512.P11830204676648207646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096976 (2 * n + 1)

end

end A215512.P11830204676648207646

namespace A215512

/-- `∑[A052975(n)]-A096976(2*n+1)` -/
def P11830204676648207646.Spec : Prop :=
  ∀ n, P11830204676648207646.a n = A215512 n

end A215512

/-! ## A215512.P9371682962659272526

`A094790(n+1)-A096976(2*n+1)`
-/

namespace A215512.P9371682962659272526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094790 (n + 1) - A096976 (2 * n + 1)

end

end A215512.P9371682962659272526

namespace A215512

/-- `A094790(n+1)-A096976(2*n+1)` -/
def P9371682962659272526.Spec : Prop :=
  ∀ n, P9371682962659272526.a n = A215512 n

end A215512

/-! ## A215512.P4275805191225139717

`A096976(2*(n+1))+A006053(2*n)`
-/

namespace A215512.P4275805191225139717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * (n + 1)) + A006053 (2 * n)

end

end A215512.P4275805191225139717

namespace A215512

/-- `A096976(2*(n+1))+A006053(2*n)` -/
def P4275805191225139717.Spec : Prop :=
  ∀ n, P4275805191225139717.a n = A215512 n

end A215512

/-! ## A215512.P4419212222749252289

`A052547(2*(n+1))-A028495(2*n)`
-/

namespace A215512.P4419212222749252289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * (n + 1)) - A028495 (2 * n)

end

end A215512.P4419212222749252289

namespace A215512

/-- `A052547(2*(n+1))-A028495(2*n)` -/
def P4419212222749252289.Spec : Prop :=
  ∀ n, P4419212222749252289.a n = A215512 n

end A215512

/-! ## A215512.P14349134061334305440

`2*A080937(n+1)-A096976(2*n)`
-/

namespace A215512.P14349134061334305440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080937 (n + 1) - A096976 (2 * n)

end

end A215512.P14349134061334305440

namespace A215512

/-- `2*A080937(n+1)-A096976(2*n)` -/
def P14349134061334305440.Spec : Prop :=
  ∀ n, P14349134061334305440.a n = A215512 n

end A215512

/-!
# A215513: spt(n) - p(n): total number of smallest parts in all partitions of n minus the number of partitions of n.

The programs for A215513, there is no canonical definition to state claims against.
-/

/-! ## A215513.P5891774135038880455

`A092269(n+1)-A000041(n+1)`
-/

namespace A215513.P5891774135038880455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - A000041 (n + 1)

end

end A215513.P5891774135038880455

/-! ## A215513.P1323106010094926342

`A092269(n+1)-(A087787(n+1)+A087787(n))`
-/

namespace A215513.P1323106010094926342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) - (A087787 (n + 1) + A087787 n)

end

end A215513.P1323106010094926342

/-! ## A215513.P4045193533432354318

`A092269(n+1)+A138135(n+2)-A138137(n+2)`
-/

namespace A215513.P4045193533432354318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A138135 (n + 2) - A138137 (n + 2))

end

end A215513.P4045193533432354318

/-! ## A215513.P11538408930455781949

`A092269(n+1)+A000070(n)-A000070(n+1)`
-/

namespace A215513.P11538408930455781949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A000070 n - A000070 (n + 1))

end

end A215513.P11538408930455781949

/-! ## A215513.P2604114202857004974

`A092269(n+1)+A183011(n+1)-A183009(n+1)`
-/

namespace A215513.P2604114202857004974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A183011 (n + 1) - A183009 (n + 1))

end

end A215513.P2604114202857004974

/-! ## A215513.P5600391062506261322

`A092269(n+1)-A183009(n+1)/A008606(n+1)`
-/

namespace A215513.P5600391062506261322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (n + 1) : ℚ) - (A183009 (n + 1) : ℚ) / (A008606 (n + 1) : ℚ)

end

end A215513.P5600391062506261322

/-! ## A215513.P14849013043460771153

`A092269(n+1)-A183011(n+1)/A183010(n+1)`
-/

namespace A215513.P14849013043460771153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092269 (n + 1) : ℚ) - (A183011 (n + 1) : ℚ) / (A183010 (n + 1) : ℚ)

end

end A215513.P14849013043460771153

/-! ## A215513.P13135166510823018500

`A006128(n+1)-(A182984(n+1)+A000041(n+1))`
-/

namespace A215513.P13135166510823018500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - (A182984 (n + 1) + A000041 (n + 1))

end

end A215513.P13135166510823018500

/-! ## A215513.P8526308315768071622

`A182724(n+1)-A220907(n+1)`
-/

namespace A215513.P8526308315768071622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182724 (n + 1) - A220907 (n + 1)

end

end A215513.P8526308315768071622

/-! ## A215513.P2636897209152342927

`A066186(n+1)-(A220907(n+1)+A000041(n+1))`
-/

namespace A215513.P2636897209152342927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A220907 (n + 1) + A000041 (n + 1))

end

end A215513.P2636897209152342927

/-! ## A215513.P6674525510136166165

`A268191(n+1)-A086738(n+1)`
-/

namespace A215513.P6674525510136166165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 1) - A086738 (n + 1)

end

end A215513.P6674525510136166165

/-! ## A215513.P3976701044918433020

`A220479(n+1)+A000070(n)-A000041(n)`
-/

namespace A215513.P3976701044918433020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1) + (A000070 n - A000041 n)

end

end A215513.P3976701044918433020

/-! ## A215513.P17051294515644275611

`A195820(n+1)+A000070(n)-Δ[A000070(n)]`
-/

namespace A215513.P17051294515644275611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + (A000070 n - (f1 (n + 1) - f1 n))

end

end A215513.P17051294515644275611

/-! ## A215513.P236452610366223876

`A195820(n+1)+A000070(n)-A000041(n+1)`
-/

namespace A215513.P236452610366223876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + (A000070 n - A000041 (n + 1))

end

end A215513.P236452610366223876

/-! ## A215513.P7210423135370957268

`A120452(n+1)+A220479(n+1)-A002865(n)`
-/

namespace A215513.P7210423135370957268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (n + 1) + (A220479 (n + 1) - A002865 n)

end

end A215513.P7210423135370957268

/-! ## A215513.P5378545931179643596

`A182978(n+1)-(A182629(n+1)+A000041(n+1))`
-/

namespace A215513.P5378545931179643596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182978 (n + 1) - (A182629 (n + 1) + A000041 (n + 1))

end

end A215513.P5378545931179643596

/-! ## A215513.P9891940476775384933

`A220479(n+1)+A120452(n+2)-A000041(n+1)`
-/

namespace A215513.P9891940476775384933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1) + (A120452 (n + 2) - A000041 (n + 1))

end

end A215513.P9891940476775384933

/-!
# A215514: n-th derivative of cosh(x)^x at x=0.

The programs for A215514, there is no canonical definition to state claims against.
-/

/-! ## A215514.P8500079902252478647

`A020985(A002851(n))*A186247(n)`
-/

namespace A215514.P8500079902252478647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A002851 n).toNat * A186247 n

end

end A215514.P8500079902252478647

/-! ## A215514.P4965456161537446755

`A008683(A054921(n))*A186247(n)`
-/

namespace A215514.P4965456161537446755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054921 n).toNat * A186247 n

end

end A215514.P4965456161537446755

/-! ## A215514.P14173133565873363524

`A011600(A186241(n))*A186247(n)`
-/

namespace A215514.P14173133565873363524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011600 (A186241 n).toNat * A186247 n

end

end A215514.P14173133565873363524

/-! ## A215514.P2308717997004467519

`A186247(n)*A244895(A134759(n))`
-/

namespace A215514.P2308717997004467519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186247 n * A244895 (A134759 n).toNat

end

end A215514.P2308717997004467519

/-!
# A215515: 2n-th derivative of cos(x)^cos(x) at x=0.

The programs for A215515, there is no canonical definition to state claims against.
-/

/-! ## A215515.P7666790493315376320

`(-1)^n*A215518(n)`
-/

namespace A215515.P7666790493315376320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215518 n

end

end A215515.P7666790493315376320

/-! ## A215515.P9255808186201486212

`A215518(n)/A033999(n)`
-/

namespace A215515.P9255808186201486212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215518 n : ℚ) / (A033999 n : ℚ)

end

end A215515.P9255808186201486212

/-! ## A215515.P15586951919674199888

`A215518(n)/A062157(n+1)`
-/

namespace A215515.P15586951919674199888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215518 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A215515.P15586951919674199888

/-! ## A215515.P14675543864584160325

`-(A033999(n+1)*A215518(n))`
-/

namespace A215515.P14675543864584160325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A215518 n)

end

end A215515.P14675543864584160325

/-! ## A215515.P5695684387706573349

`A215518(n)/A008836(A000244(n))`
-/

namespace A215515.P5695684387706573349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215518 n : ℚ) / (A008836 (A000244 n).toNat : ℚ)

end

end A215515.P5695684387706573349

/-!
# A215516: n-th derivative of cos(x)^sin(x) at x=0.

The programs for A215516, there is no canonical definition to state claims against.
-/

/-! ## A215516.P629475306886271455

`A033999(n)*A160537(n)`
-/

namespace A215516.P629475306886271455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A160537 n

end

end A215516.P629475306886271455

/-! ## A215516.P636121888024900602

`A160537(n)*A209615(n²+1)`
-/

namespace A215516.P636121888024900602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160537 n * A209615 (n ^ 2 + 1)

end

end A215516.P636121888024900602

/-! ## A215516.P10980623046213870932

`A083365(and(1, -n))*A160537(n)`
-/

namespace A215516.P10980623046213870932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083365 (Int.land 1 (-(n : ℤ))).toNat * A160537 n

end

end A215516.P10980623046213870932

/-! ## A215516.P2176884960350269917

`A160537(n)/A209615(2*n+1)`
-/

namespace A215516.P2176884960350269917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160537 n : ℚ) / (A209615 (2 * n + 1) : ℚ)

end

end A215516.P2176884960350269917

/-! ## A215516.P3448309984759027490

`A078616(A005449(n))*A160537(n)`
-/

namespace A215516.P3448309984759027490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078616 (A005449 n).toNat * A160537 n

end

end A215516.P3448309984759027490

/-!
# A215517: 2n-th derivative of cos(x)^cosh(x) at x=0.

The programs for A215517, there is no canonical definition to state claims against.
-/

/-! ## A215517.P14917375203861986264

`A033999(n)*A215584(n)`
-/

namespace A215517.P14917375203861986264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215584 n

end

end A215517.P14917375203861986264

/-! ## A215517.P17325237204076179254

`A215584(n)/A033999(n²)`
-/

namespace A215517.P17325237204076179254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215584 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A215517.P17325237204076179254

/-! ## A215517.P2758688019450626605

`A108561(A000096(n))*A215584(n)`
-/

namespace A215517.P2758688019450626605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A000096 n).toNat * A215584 n

end

end A215517.P2758688019450626605

/-! ## A215517.P7038866930567076164

`ceil(A215584(n)/A033999(A028560(n)))`
-/

namespace A215517.P7038866930567076164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215584 n : ℚ) / (A033999 (A028560 n).toNat : ℚ)⌉

end

end A215517.P7038866930567076164

/-! ## A215517.P2128196408363149871

`ceil(A215584(n)/A033999(A077221(n)))`
-/

namespace A215517.P2128196408363149871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215584 n : ℚ) / (A033999 (A077221 n).toNat : ℚ)⌉

end

end A215517.P2128196408363149871

/-!
# A215518: 2n-th derivative of cosh(x)^cosh(x) at x=0.

The programs for A215518, there is no canonical definition to state claims against.
-/

/-! ## A215518.P3035129210918501862

`(-1)^n*A215515(n)`
-/

namespace A215518.P3035129210918501862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215515 n

end

end A215518.P3035129210918501862

/-! ## A215518.P10740050257130906021

`A215515(n)/A124311(n)%2`
-/

namespace A215518.P10740050257130906021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215515 n : ℚ) / (Int.tmod (A124311 n) 2 : ℚ)

end

end A215518.P10740050257130906021

/-! ## A215518.P516622868168087468

`A215515(n)/A033999(A028560(n))`
-/

namespace A215518.P516622868168087468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215515 n : ℚ) / (A033999 (A028560 n).toNat : ℚ)

end

end A215518.P516622868168087468

/-! ## A215518.P9236891581377804283

`A215515(n)/A033999(A077221(n))`
-/

namespace A215518.P9236891581377804283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215515 n : ℚ) / (A033999 (A077221 n).toNat : ℚ)

end

end A215518.P9236891581377804283

/-!
# A215519: n-th derivative of cosh(x)^sinh(x) at x=0.

The programs for A215519, there is no canonical definition to state claims against.
-/

/-! ## A215519.P13100239929372694624

`(-1)^n*A215679(n)`
-/

namespace A215519.P13100239929372694624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215679 n

end

end A215519.P13100239929372694624

/-! ## A215519.P2892781136708330408

`A215679(n)/A033999(n)`
-/

namespace A215519.P2892781136708330408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215679 n : ℚ) / (A033999 n : ℚ)

end

end A215519.P2892781136708330408

/-! ## A215519.P7994441968765187626

`A215679(n)/A057077(2*n)`
-/

namespace A215519.P7994441968765187626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215679 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A215519.P7994441968765187626

/-! ## A215519.P3679891438276977530

`A215679(n)/A117373(3*n)`
-/

namespace A215519.P3679891438276977530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215679 n : ℚ) / (A117373 (3 * n) : ℚ)

end

end A215519.P3679891438276977530

/-! ## A215519.P4064196575057967079

`A215679(n)/A057428(n)^n`
-/

namespace A215519.P4064196575057967079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215679 n : ℚ) / (A057428 n ^ n : ℚ)

end

end A215519.P4064196575057967079

/-!
# A215520: Number T(n,k) of distinct values of multinomial coefficients M(n;lambda), where lambda ranges over all partitions of n with largest part <= k; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A215520, there is no canonical definition to state claims against.
-/

/-! ## A215520.P5042955452316593534

`A215521(A245300(n)+A108872(n+1))`
-/

namespace A215520.P5042955452316593534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (A245300 n + A108872 (n + 1)).toNat

end

end A215520.P5042955452316593534

/-! ## A215520.P9876587567764223982

`A213008(n+1)+A059648(A157275(n))`
-/

namespace A215520.P9876587567764223982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213008 (n + 1) + A059648 (A157275 n).toNat

end

end A215520.P9876587567764223982

/-! ## A215520.P5306966502855677570

`A213008(n+1)+A185284(A034521(n+1))`
-/

namespace A215520.P5306966502855677570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213008 (n + 1) + A185284 (A034521 (n + 1)).toNat

end

end A215520.P5306966502855677570

/-! ## A215520.P3306728097786879765

`A213008(n+1)%A038011(n)`
-/

namespace A215520.P3306728097786879765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213008 (n + 1)) (A038011 n)

end

end A215520.P3306728097786879765

/-! ## A215520.P2717634799734382116

`gcd(A213008(n+1), A350712(n))`
-/

namespace A215520.P2717634799734382116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213008 (n + 1)) (A350712 n)

end

end A215520.P2717634799734382116

/-!
# A215521: Number T(n,k) of distinct values of multinomial coefficients M(n;lambda), where lambda ranges over all partitions of n with largest part = k; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A215521, there is no canonical definition to state claims against.
-/

/-! ## A215521.P12571200268204605312

`A008284(n+1)-A181838(A260534(n+3))`
-/

namespace A215521.P12571200268204605312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A181838 (A260534 (n + 3)).toNat

end

end A215521.P12571200268204605312

/-! ## A215521.P7095039913833987408

`A228722(A008284(n+1)%A334953(n+2))`
-/

namespace A215521.P7095039913833987408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (Int.tmod (A008284 (n + 1)) (A334953 (n + 2))).toNat

end

end A215521.P7095039913833987408

/-! ## A215521.P3849643946546984632

`A337769(A008284(n+1))%A337769(n+2)`
-/

namespace A215521.P3849643946546984632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337769 (A008284 (n + 1)).toNat) (A337769 (n + 2))

end

end A215521.P3849643946546984632

/-! ## A215521.P17036509422295811176

`A008284(n+1)-A089801(A345795(2*(n+2)))`
-/

namespace A215521.P17036509422295811176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A089801 (A345795 (2 * (n + 2))).toNat

end

end A215521.P17036509422295811176

/-! ## A215521.P8181848864469975350

`A008284(n+1)-A335520(A256796(n+4))`
-/

namespace A215521.P8181848864469975350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A335520 (A256796 (n + 4)).toNat

end

end A215521.P8181848864469975350

/-! ## A215521.P7186084866930064044

`A008284(n+1)-A033665(A033665(3*(n+1)))`
-/

namespace A215521.P7186084866930064044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A033665 (A033665 (3 * (n + 1))).toNat

end

end A215521.P7186084866930064044

/-! ## A215521.P16876803872021143536

`A008284(n+1)-A241759(A095672(2*n+3))`
-/

namespace A215521.P16876803872021143536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A241759 (A095672 (2 * n + 3)).toNat

end

end A215521.P16876803872021143536

/-! ## A215521.P3015003595095381888

`A014177(A299277(n))+A008284(n+1)`
-/

namespace A215521.P3015003595095381888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014177 (A299277 n).toNat + A008284 (n + 1)

end

end A215521.P3015003595095381888

/-! ## A215521.P292320545546667754

`A008284(n+1)-A185246(A008284(3*n+1))`
-/

namespace A215521.P292320545546667754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A185246 (A008284 (3 * n + 1)).toNat

end

end A215521.P292320545546667754

/-!
# A215522: n-th derivative of (x^x)^(x^x) at x=1.

The programs for A215522, there is no canonical definition to state claims against.
-/

/-! ## A215522.P6199881606525888275

`A215703(n+10+∑[n+5])`
-/

namespace A215522.P6199881606525888275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (n + 10 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215522.P6199881606525888275

/-! ## A215522.P7542636025736204327

`A215703(Δ[A026054(n+3)])^A178334(n)`
-/

namespace A215522.P7542636025736204327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215703 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A215522.P7542636025736204327

/-! ## A215522.P11060535884435359212

`A033999(n)²*A215703(Δ[A026054(n+3)])`
-/

namespace A215522.P11060535884435359212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A215703 (f1 (n + 1) - f1 n).toNat

end

end A215522.P11060535884435359212

/-! ## A215522.P46168892007445909

`A033999(2*n)*A215703(Δ[A026054(n+3)])`
-/

namespace A215522.P46168892007445909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A215703 (f1 (n + 1) - f1 n).toNat

end

end A215522.P46168892007445909

/-! ## A215522.P11020115775094511266

`A209615(2*n+1)²*A215703(A052905(n+3)-1)`
-/

namespace A215522.P11020115775094511266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) ^ 2 * A215703 (A052905 (n + 3) - 1).toNat

end

end A215522.P11020115775094511266

/-!
# A215523: Slowest increasing sequence of alternate-parity integers m such that 2m+1 is prime.

The programs for A215523, the canonical program `A215523.P5248230795343589178` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215523 has offset 1).

The definition of A215523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215523.P9984492725320441130

`eq[2, C(2, a(n-1))*A000005(2*n+1)]` with `a(0)=0`
-/

namespace A215523.P9984492725320441130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (Nat.choose 2 (f2 (n - 1)).toNat : ℤ) * A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215523.P9984492725320441130

namespace A215523

/-- `eq[2, C(2, a(n-1))*A000005(2*n+1)]` -/
def P9984492725320441130.Spec : Prop :=
  ∀ n, (P9984492725320441130.a n : ℤ) = A215523 (n + 1)

end A215523

/-! ## A215523.P13375343753082303085

`A336837(A098058(n+1))`
-/

namespace A215523.P13375343753082303085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336837 (A098058 (n + 1)).toNat

end

end A215523.P13375343753082303085

namespace A215523

/-- `A336837(A098058(n+1))` -/
def P13375343753082303085.Spec : Prop :=
  ∀ n, P13375343753082303085.a n = A215523 (n + 1)

end A215523

/-! ## A215523.P5248230795343589178

`A005097(∑[A091237(n+1)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A215523

/-- `A005097(∑[A091237(n+1)])` -/
def P5248230795343589178.Spec : Prop :=
  ∀ n, P5248230795343589178.a n = A215523 (n + 1)

theorem P5248230795343589178.correct : P5248230795343589178.Spec := by
  intro n
  simp only [A215523, Nat.add_sub_cancel]

end A215523

/-! ## A215523.P9322903381528813486

`A102781(∑[A091237(n+1)]+1)`
-/

namespace A215523.P9322903381528813486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A215523.P9322903381528813486

namespace A215523

/-- `A102781(∑[A091237(n+1)]+1)` -/
def P9322903381528813486.Spec : Prop :=
  ∀ n, P9322903381528813486.a n = A215523 (n + 1)

end A215523

/-! ## A215523.P15089848385197823549

`eq[2, A010141(A096501(2*n+1))]`
-/

namespace A215523.P15089848385197823549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (A096501 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215523.P15089848385197823549

namespace A215523

/-- `eq[2, A010141(A096501(2*n+1))]` -/
def P15089848385197823549.Spec : Prop :=
  ∀ n, (P15089848385197823549.a n : ℤ) = A215523 (n + 1)

end A215523

/-! ## A215523.P10870063630714992673

`eq[2, A010141(A096501(n+1))]/2`
-/

namespace A215523.P10870063630714992673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 (A096501 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A215523.P10870063630714992673

namespace A215523

/-- `eq[2, A010141(A096501(n+1))]/2` -/
def P10870063630714992673.Spec : Prop :=
  ∀ n, P10870063630714992673.a n = (A215523 (n + 1) : ℚ)

end A215523

/-! ## A215523.P5074108277166285729

`A349571(2*A098058(n+1))`
-/

namespace A215523.P5074108277166285729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349571 (2 * A098058 (n + 1)).toNat

end

end A215523.P5074108277166285729

namespace A215523

/-- `A349571(2*A098058(n+1))` -/
def P5074108277166285729.Spec : Prop :=
  ∀ n, P5074108277166285729.a n = A215523 (n + 1)

end A215523

/-! ## A215523.P6674865776790225298

`A003974(2*A098058(n+1)-A098058(n+1))`
-/

namespace A215523.P6674865776790225298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003974 (2 * A098058 (n + 1) - A098058 (n + 1)).toNat

end

end A215523.P6674865776790225298

namespace A215523

/-- `A003974(2*A098058(n+1)-A098058(n+1))` -/
def P6674865776790225298.Spec : Prop :=
  ∀ n, P6674865776790225298.a n = A215523 (n + 1)

end A215523

/-! ## A215523.P12823414635369725004

`eq[2*n+1, A006530(2*n+1)+C(n, a(n-1))]` with `a(0)=2`
-/

namespace A215523.P12823414635369725004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A006530 (2 * n + 1) + (Nat.choose n (f2 (n - 1)).toNat : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215523.P12823414635369725004

namespace A215523

/-- `eq[2*n+1, A006530(2*n+1)+C(n, a(n-1))]` -/
def P12823414635369725004.Spec : Prop :=
  ∀ n, (P12823414635369725004.a n : ℤ) = A215523 (n + 1)

end A215523

/-! ## A215523.P13809152981506398914

`(A100859(n+1)-1)/2`
-/

namespace A215523.P13809152981506398914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100859 (n + 1) - 1 : ℚ) / 2

end

end A215523.P13809152981506398914

namespace A215523

/-- `(A100859(n+1)-1)/2` -/
def P13809152981506398914.Spec : Prop :=
  ∀ n, P13809152981506398914.a n = (A215523 (n + 1) : ℚ)

end A215523

/-!
# A215524: n-th derivative of (x^x)^x at x=1.

The programs for A215524, there is no canonical definition to state claims against.
-/

/-! ## A215524.P4627244816275560663

`A215703(∑[n+3])`
-/

namespace A215524.P4627244816275560663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215524.P4627244816275560663

/-! ## A215524.P18261120807576484729

`A215703(A055998(n+1))+(2*n)%2`
-/

namespace A215524.P18261120807576484729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A055998 (n + 1)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A215524.P18261120807576484729

/-! ## A215524.P4660842995626857388

`A215703(A055998(n+1))+A000035(2*n)`
-/

namespace A215524.P4660842995626857388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215703 (A055998 (n + 1)).toNat + A000035 (2 * n)

end

end A215524.P4660842995626857388

/-! ## A215524.P15463849153473292499

`A000034(2*n)*A215703(A055998(n+1))`
-/

namespace A215524.P15463849153473292499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A215703 (A055998 (n + 1)).toNat

end

end A215524.P15463849153473292499

/-! ## A215524.P1942698121820309787

`A014709(4*n)*A215703(A055998(n+1))`
-/

namespace A215524.P1942698121820309787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (4 * n) * A215703 (A055998 (n + 1)).toNat

end

end A215524.P1942698121820309787

/-! ## A215524.P7290669009093918564

`A005177(val(n+1, 3))*A215703(A055998(n+1))`
-/

namespace A215524.P7290669009093918564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 (SequenceMachineLib.valuation (n + 1) 3) * A215703 (A055998 (n + 1)).toNat

end

end A215524.P7290669009093918564

/-! ## A215524.P4220303039477523270

`A014963(51*(n+1))*A215703(A055998(n+1))`
-/

namespace A215524.P4220303039477523270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (51 * (n + 1)) * A215703 (A055998 (n + 1)).toNat

end

end A215524.P4220303039477523270

/-! ## A215524.P15603318563988470191

`A001221(A002476(n+2))*A215703(A055998(n+1))`
-/

namespace A215524.P15603318563988470191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002476 (n + 2)).toNat * A215703 (A055998 (n + 1)).toNat

end

end A215524.P15603318563988470191

/-!
# A215525: a(0)=a(1)=1, a(n) = a(n-1) + a(a(n-2) mod n).

The programs for A215525, the canonical program `A215525.P321940166372568655` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215525 has offset 0).

The definition of A215525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215525.P321940166372568655

`a(n-1)+a(a(n-2)%n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215525

/-- `a(n-1)+a(a(n-2)%n)` -/
def P321940166372568655.Spec : Prop :=
  ∀ n, (P321940166372568655.a n : ℤ) = A215525 n

theorem P321940166372568655.correct : P321940166372568655.Spec := by
  intro n
  simp only [A215525]

end A215525

/-!
# A215526: a(0)=a(1)=1, a(n) = a(n-2) + a(a(n-1) mod n).

The programs for A215526, the canonical program `A215526.P2593399724746750257` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215526 has offset 0).

The definition of A215526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215526.P2593399724746750257

`a(n-2)+a(a(n-1)%n)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215526

/-- `a(n-2)+a(a(n-1)%n)` -/
def P2593399724746750257.Spec : Prop :=
  ∀ n, (P2593399724746750257.a n : ℤ) = A215526 n

theorem P2593399724746750257.correct : P2593399724746750257.Spec := by
  intro n
  simp only [A215526]

end A215526

/-!
# A215528: Slowest increasing sequence of alternate-parity integers m such that 2m^2+1 is prime.

The programs for A215528, there is no canonical definition to state claims against.
-/

/-! ## A215528.P12617547051450511729

`eq[A078898(A058331(n)), A160381(n)]`
-/

namespace A215528.P12617547051450511729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A058331 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215528.P12617547051450511729

/-! ## A215528.P7439407543723646886

`eq[A003415(A058331(n)), A124734(2*(n+1))]`
-/

namespace A215528.P7439407543723646886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A058331 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215528.P7439407543723646886

/-!
# A215529: G.f.: 1/(1-x) = Sum_{n>=0} a(n) * x^n / Product_{k=1..n} (1 + k*x)^3.

The programs for A215529, there is no canonical definition to state claims against.
-/

/-! ## A215529.P4345409153323856819

`A358836(n)+A022549(A381142(n))`
-/

namespace A215529.P4345409153323856819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358836 n + A022549 (A381142 n).toNat

end

end A215529.P4345409153323856819

/-!
# A215530: The limit of the string "0, 1" under the operation 'repeat string twice and append 0'.

The programs for A215530, there is no canonical definition to state claims against.
-/

/-! ## A215530.P1564830642642818484

`char[∑[a(∑[n]%n)+1]]` with `a(0)=1`
-/

namespace A215530.P1564830642642818484
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ((∑ j ∈ Finset.range (n + 1), f3 j) % n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215530.P1564830642642818484

/-! ## A215530.P7958623768058920699

`char[∑[∑{e}[xor(n, -n), #]+1]]`
-/

namespace A215530.P7958623768058920699
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215530.P7958623768058920699

/-! ## A215530.P11744187850178458593

`char[∑[∏{e}[xor(n, -n), #+1]]]`
-/

namespace A215530.P11744187850178458593
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215530.P11744187850178458593

/-! ## A215530.P6102761890600451839

`char[a(n-1)+val(n, 2)+2]` with `a(0)=1`
-/

namespace A215530.P6102761890600451839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215530.P6102761890600451839

/-! ## A215530.P7877590474499967386

`char[∑[val(abs(1-4*n)+1, 2)]]`
-/

namespace A215530.P7877590474499967386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215530.P7877590474499967386

/-! ## A215530.P4868192597638540355

`char[∑[val(n+1, 2)+1]-floor(n/2)]`
-/

namespace A215530.P4868192597638540355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A215530.P4868192597638540355

/-! ## A215530.P4766787895611651075

`char[∑[∑{e}[and(n, -n), #]]+2*n+1]`
-/

namespace A215530.P4766787895611651075
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A215530.P4766787895611651075

/-! ## A215530.P8180910983052278302

`char[3*n+1-(n-(∑[val(n+1, 2)]-val(n+1, 2)))]`
-/

namespace A215530.P8180910983052278302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A215530.P8180910983052278302

/-! ## A215530.P5114505584558508120

`char[A004134(n)+1]`
-/

namespace A215530.P5114505584558508120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A215530.P5114505584558508120

/-! ## A215530.P6741321282042960723

`char[A101925(n)+n]`
-/

namespace A215530.P6741321282042960723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A215530.P6741321282042960723

/-!
# A215531: The limit of the string "0, 1" under the operation 'append first k terms, k=k+2' with k=1 initially.

The programs for A215531, the canonical program `A215531.P12628056553889957119` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215531 has offset 0).

The definition of A215531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215531.P12628056553889957119

`a(n-floor(sqrt(n-2))²-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215531

/-- `a(n-floor(sqrt(n-2))²-2)` -/
def P12628056553889957119.Spec : Prop :=
  ∀ n, (P12628056553889957119.a n : ℤ) = A215531 n

theorem P12628056553889957119.correct : P12628056553889957119.Spec := by
  intro n
  simp only [A215531]

end A215531

/-! ## A215531.P5688178345493148055

`a(A071797(n-1)-1)²` with `a(0)=0, a(1)=1`
-/

namespace A215531.P5688178345493148055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A071797 (n - 1) - 1).toNat ^ 2

end

end A215531.P5688178345493148055

namespace A215531

/-- `a(A071797(n-1)-1)²` -/
def P5688178345493148055.Spec : Prop :=
  ∀ n, (P5688178345493148055.a n : ℤ) = A215531 n

end A215531

/-! ## A215531.P17281610208598834435

`abs(a(A023443(A071797(n-1))))` with `a(0)=0, a(1)=1`
-/

namespace A215531.P17281610208598834435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A023443 (A071797 (n - 1)).toNat).toNat

end

end A215531.P17281610208598834435

namespace A215531

/-- `abs(a(A023443(A071797(n-1))))` -/
def P17281610208598834435.Spec : Prop :=
  ∀ n, (P17281610208598834435.a n : ℤ) = A215531 n

end A215531

/-! ## A215531.P2150965283546379035

`A122006(a(A071797(n-1)-1)+1)` with `a(0)=0, a(1)=1`
-/

namespace A215531.P2150965283546379035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A122006 (a (A071797 (n - 1) - 1).toNat + 1).toNat

end

end A215531.P2150965283546379035

namespace A215531

/-- `A122006(a(A071797(n-1)-1)+1)` -/
def P2150965283546379035.Spec : Prop :=
  ∀ n, P2150965283546379035.a n = A215531 n

end A215531

/-! ## A215531.P3011226726597374080

`and(a(A071797(n-1)-1), A002313(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A215531.P3011226726597374080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (a (A071797 (n - 1) - 1).toNat) (A002313 (n + 1))

end

end A215531.P3011226726597374080

namespace A215531

/-- `and(a(A071797(n-1)-1), A002313(n+1))` -/
def P3011226726597374080.Spec : Prop :=
  ∀ n, P3011226726597374080.a n = A215531 n

end A215531

/-! ## A215531.P2047835731470601454

`a(A071797(n-1)-1)%Δ[A008578(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A215531.P2047835731470601454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (A071797 (n - 1) - 1).toNat) (f1 (n + 1) - f1 n)

end

end A215531.P2047835731470601454

namespace A215531

/-- `a(A071797(n-1)-1)%Δ[A008578(n+1)]` -/
def P2047835731470601454.Spec : Prop :=
  ∀ n, P2047835731470601454.a n = A215531 n

end A215531

/-!
# A215532: The limit of the string "0, 1" under the operation 'append first k terms, increment k' with k=2 initially.

The programs for A215532, the canonical program `A215532.P800191333380892609` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215532 has offset 0).

The definition of A215532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215532.P12690485428209751719

`a(n-1-C(round(sqrt(2*n)), 2))` with `a(0)=0, a(1)=1`
-/

namespace A215532.P12690485428209751719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - 1 - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat 2 : ℤ)).toNat

end

end A215532.P12690485428209751719

namespace A215532

/-- `a(n-1-C(round(sqrt(2*n)), 2))` -/
def P12690485428209751719.Spec : Prop :=
  ∀ n, (P12690485428209751719.a n : ℤ) = A215532 n

end A215532

/-! ## A215532.P15423116052670783752

`a(n-1-C(comp[∑[n+1]]-n, 2))%(n+2)` with `a(0)=0, a(1)=1`
-/

namespace A215532.P15423116052670783752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - 1 - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)).toNat % (n + 2)

end

end A215532.P15423116052670783752

namespace A215532

/-- `a(n-1-C(comp[∑[n+1]]-n, 2))%(n+2)` -/
def P15423116052670783752.Spec : Prop :=
  ∀ n, (P15423116052670783752.a n : ℤ) = A215532 n

end A215532

/-! ## A215532.P800191333380892609

`a(A002262(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A215532

/-- `a(A002262(n-1))` -/
def P800191333380892609.Spec : Prop :=
  ∀ n, (P800191333380892609.a n : ℤ) = A215532 n

theorem P800191333380892609.correct : P800191333380892609.Spec := by
  intro n
  simp only [A215532]

end A215532

/-! ## A215532.P985398677041198744

`a(A002260(n)-1)` with `a(0)=0, a(1)=1`
-/

namespace A215532.P985398677041198744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A002260 n - 1).toNat

end

end A215532.P985398677041198744

namespace A215532

/-- `a(A002260(n)-1)` -/
def P985398677041198744.Spec : Prop :=
  ∀ n, (P985398677041198744.a n : ℤ) = A215532 n

theorem P985398677041198744.correct : P985398677041198744.Spec := by
  intro n
  simp only [A215532, Nat.add_sub_cancel, A215532.P985398677041198744.a, A215532.P800191333380892609.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A215532

/-! ## A215532.P13315019784884634719

`a(A048151(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A215532.P13315019784884634719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A048151 (n - 1)).toNat

end

end A215532.P13315019784884634719

namespace A215532

/-- `a(A048151(n-1))` -/
def P13315019784884634719.Spec : Prop :=
  ∀ n, (P13315019784884634719.a n : ℤ) = A215532 n

end A215532

/-! ## A215532.P6180935487282643996

`a(A077264(C(n, 2)))` with `a(0)=0, a(1)=1`
-/

namespace A215532.P6180935487282643996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A077264 (Nat.choose n 2)).toNat

end

end A215532.P6180935487282643996

namespace A215532

/-- `a(A077264(C(n, 2)))` -/
def P6180935487282643996.Spec : Prop :=
  ∀ n, (P6180935487282643996.a n : ℤ) = A215532 n

end A215532

/-!
# A215533: Numbers n such that n^s(n) + 1 is a prime, where s(n) is the sum of the digits of n.

The programs for A215533, there is no canonical definition to state claims against.
-/

/-! ## A215533.P12562154475328527400

`A007092(∑[A228754(n+1)!])`
-/

namespace A215533.P12562154475328527400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A228754 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215533.P12562154475328527400

/-! ## A215533.P14467746386500992538

`record[gcd(A055958(n), A082492(n+1))]`
-/

namespace A215533.P14467746386500992538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055958 n) (A082492 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215533.P14467746386500992538

/-!
# A215534: Matrix inverse of triangle A088956.

The programs for A215534, the canonical program `A215534.P11719715118446938532` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215534 has offset 0).

The definition of A215534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215534.P11719715118446938532

`A130595(n)*A177885(A025581(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A215534

/-- `A130595(n)*A177885(A025581(n))` -/
def P11719715118446938532.Spec : Prop :=
  ∀ n, P11719715118446938532.a n = A215534 n

theorem P11719715118446938532.correct : P11719715118446938532.Spec := by
  intro n
  simp only [A215534]

end A215534

/-!
# A215535: Numbers k such that 36^k - 35^k is prime.

The programs for A215535, there is no canonical definition to state claims against.
-/

/-! ## A215535.P8258415398558848280

`p?[A032555(n+1)+A000078(n+1)]`
-/

namespace A215535.P8258415398558848280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032555 (n + 1) + A000078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215535.P8258415398558848280

/-!
# A215537: Lowest k such that k is representable as both the sum of n and of n+1 nonzero squares.

The programs for A215537, there is no canonical definition to state claims against.
-/

/-! ## A215537.P5836462552705786523

`a(n-1)+1` with `a(0)=25, a(1)=17, a(2)=12`
-/

namespace A215537.P5836462552705786523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 17, 12] fun n a =>
  a (n - 1) + 1

end

end A215537.P5836462552705786523

/-!
# A215539: First square that can be represented as the sum of n nonzero squares.

The programs for A215539, there is no canonical definition to state claims against.
-/

/-! ## A215539.P5008617375946296062

`A351061(n+1)²`
-/

namespace A215539.P5008617375946296062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351061 (n + 1) ^ 2

end

end A215539.P5008617375946296062

/-! ## A215539.P2480186792090784701

`A002620(2*A351061(n+1))`
-/

namespace A215539.P2480186792090784701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A351061 (n + 1)).toNat

end

end A215539.P2480186792090784701

/-! ## A215539.P2685055833499635570

`A075561(3*A351061(n+1))`
-/

namespace A215539.P2685055833499635570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (3 * A351061 (n + 1)).toNat

end

end A215539.P2685055833499635570

/-! ## A215539.P7256163901346538800

`A351061(n+1)^A020639(2*(n+1))`
-/

namespace A215539.P7256163901346538800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351061 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A215539.P7256163901346538800

/-! ## A215539.P7855885406012255721

`A351061(n+1)^(2%A000742(n+4))`
-/

namespace A215539.P7855885406012255721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351061 (n + 1) : ℚ) ^ (Int.tmod 2 (A000742 (n + 4)) : ℤ)

end

end A215539.P7855885406012255721

/-! ## A215539.P17116944923749687704

`A000290(A351061(n+1)%(10*n+8))`
-/

namespace A215539.P17116944923749687704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A351061 (n + 1)) (10 * n + 8 : ℤ)).toNat

end

end A215539.P17116944923749687704

/-! ## A215539.P15966031131982065917

`A351061(n+1)^A001316(A014963(2*(n+1)))`
-/

namespace A215539.P15966031131982065917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351061 (n + 1) : ℚ) ^ (A001316 (A014963 (2 * (n + 1))).toNat : ℤ)

end

end A215539.P15966031131982065917

/-! ## A215539.P18261322607784346212

`A351061(n+1)^A001222(A001748(n+1))`
-/

namespace A215539.P18261322607784346212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351061 (n + 1) : ℚ) ^ (A001222 (A001748 (n + 1)).toNat : ℤ)

end

end A215539.P18261322607784346212

/-! ## A215539.P12608239472965064211

`A351061(n+1)^A000005(A053070(n+1))`
-/

namespace A215539.P12608239472965064211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351061 (n + 1) : ℚ) ^ (A000005 (A053070 (n + 1)).toNat : ℤ)

end

end A215539.P12608239472965064211

/-! ## A215539.P1959284803210455415

`(A351061(n+1)+A002262(A008805(n)))*A351061(n+1)`
-/

namespace A215539.P1959284803210455415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351061 (n + 1) + A002262 (A008805 n).toNat) * A351061 (n + 1)

end

end A215539.P1959284803210455415

/-!
# A215541: a(n) = binomial(5*n,n)*(3*n+1)/(4*n+1).

The programs for A215541, the canonical program `A215541.P16899933526223234158` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215541 has offset 0).

The definition of A215541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215541.P16899933526223234158

`C(5*n, n)*(3*n+1)/(4*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215541

/-- `C(5*n, n)*(3*n+1)/(4*n+1)` -/
def P16899933526223234158.Spec : Prop :=
  ∀ n, P16899933526223234158.a n = (A215541 n : ℚ)

end A215541

/-! ## A215541.P13419387976490987826

`(3*n+1)*A002294(n)`
-/

namespace A215541.P13419387976490987826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A002294 n

end

end A215541.P13419387976490987826

namespace A215541

/-- `(3*n+1)*A002294(n)` -/
def P13419387976490987826.Spec : Prop :=
  ∀ n, P13419387976490987826.a n = A215541 n

end A215541

/-! ## A215541.P16314668075361393557

`A002294(n)*A016777(n)`
-/

namespace A215541.P16314668075361393557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A016777 n

end

end A215541.P16314668075361393557

namespace A215541

/-- `A002294(n)*A016777(n)` -/
def P16314668075361393557.Spec : Prop :=
  ∀ n, P16314668075361393557.a n = A215541 n

end A215541

/-! ## A215541.P4086388747096395384

`A001449(n)-n*A002294(n)`
-/

namespace A215541.P4086388747096395384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n - (n : ℤ) * A002294 n

end

end A215541.P4086388747096395384

namespace A215541

/-- `A001449(n)-n*A002294(n)` -/
def P4086388747096395384.Spec : Prop :=
  ∀ n, P4086388747096395384.a n = A215541 n

end A215541

/-! ## A215541.P17137839964423388629

`A002294(n)*A008619(A008458(n))`
-/

namespace A215541.P17137839964423388629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A008619 (A008458 n).toNat

end

end A215541.P17137839964423388629

namespace A215541

/-- `A002294(n)*A008619(A008458(n))` -/
def P17137839964423388629.Spec : Prop :=
  ∀ n, P17137839964423388629.a n = A215541 n

end A215541

/-! ## A215541.P6071715665189592648

`A002294(n)*A008619(A016921(n))`
-/

namespace A215541.P6071715665189592648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A008619 (A016921 n).toNat

end

end A215541.P6071715665189592648

namespace A215541

/-- `A002294(n)*A008619(A016921(n))` -/
def P6071715665189592648.Spec : Prop :=
  ∀ n, P6071715665189592648.a n = A215541 n

end A215541

/-! ## A215541.P1894643723009581316

`A002294(n)*A029579(A008588(n))`
-/

namespace A215541.P1894643723009581316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A029579 (A008588 n).toNat

end

end A215541.P1894643723009581316

namespace A215541

/-- `A002294(n)*A029579(A008588(n))` -/
def P1894643723009581316.Spec : Prop :=
  ∀ n, P1894643723009581316.a n = A215541 n

end A215541

/-! ## A215541.P14008469416393210933

`A001449(n)+A001449(n)-A079589(n)`
-/

namespace A215541.P14008469416393210933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001449 n + (A001449 n - A079589 n)

end

end A215541.P14008469416393210933

namespace A215541

/-- `A001449(n)+A001449(n)-A079589(n)` -/
def P14008469416393210933.Spec : Prop :=
  ∀ n, P14008469416393210933.a n = A215541 n

end A215541

/-! ## A215541.P12291472607635867877

`A002294(n)/A002293(n)*A005810(n)`
-/

namespace A215541.P12291472607635867877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002294 n : ℚ) / (A002293 n : ℚ) * (A005810 n : ℚ)

end

end A215541.P12291472607635867877

namespace A215541

/-- `A002294(n)/A002293(n)*A005810(n)` -/
def P12291472607635867877.Spec : Prop :=
  ∀ n, P12291472607635867877.a n = (A215541 n : ℚ)

end A215541

/-! ## A215541.P10971910524789986396

`A001449(n)/A052203(n)*A005810(n)`
-/

namespace A215541.P10971910524789986396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (A052203 n : ℚ) * (A005810 n : ℚ)

end

end A215541.P10971910524789986396

namespace A215541

/-- `A001449(n)/A052203(n)*A005810(n)` -/
def P10971910524789986396.Spec : Prop :=
  ∀ n, P10971910524789986396.a n = (A215541 n : ℚ)

end A215541

/-!
# A215542: a(n) = binomial(6*n,n)*(4*n+1)/(5*n+1).

The programs for A215542, the canonical program `A215542.P1797211264771751813` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215542 has offset 0).

The definition of A215542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215542.P1797211264771751813

`C(6*n, n)*(4*n+1)/(5*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215542

/-- `C(6*n, n)*(4*n+1)/(5*n+1)` -/
def P1797211264771751813.Spec : Prop :=
  ∀ n, P1797211264771751813.a n = (A215542 n : ℚ)

end A215542

/-! ## A215542.P2826617766553682232

`(4*n+1)*A002295(n)`
-/

namespace A215542.P2826617766553682232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A002295 n

end

end A215542.P2826617766553682232

namespace A215542

/-- `(4*n+1)*A002295(n)` -/
def P2826617766553682232.Spec : Prop :=
  ∀ n, P2826617766553682232.a n = A215542 n

end A215542

/-! ## A215542.P8779043041557697120

`2*A004355(n)-A079590(n)`
-/

namespace A215542.P8779043041557697120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004355 n - A079590 n

end

end A215542.P8779043041557697120

namespace A215542

/-- `2*A004355(n)-A079590(n)` -/
def P8779043041557697120.Spec : Prop :=
  ∀ n, P8779043041557697120.a n = A215542 n

end A215542

/-! ## A215542.P9671277451735141265

`A002295(n)*A005408(2*n)`
-/

namespace A215542.P9671277451735141265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 n * A005408 (2 * n)

end

end A215542.P9671277451735141265

namespace A215542

/-- `A002295(n)*A005408(2*n)` -/
def P9671277451735141265.Spec : Prop :=
  ∀ n, P9671277451735141265.a n = A215542 n

end A215542

/-! ## A215542.P295341227818963750

`A004355(n)-n*A002295(n)`
-/

namespace A215542.P295341227818963750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004355 n - (n : ℤ) * A002295 n

end

end A215542.P295341227818963750

namespace A215542

/-- `A004355(n)-n*A002295(n)` -/
def P295341227818963750.Spec : Prop :=
  ∀ n, P295341227818963750.a n = A215542 n

end A215542

/-! ## A215542.P15985707996019994514

`(4*n+1)*A004355(n)/A016861(n)`
-/

namespace A215542.P15985707996019994514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) * ((A004355 n : ℚ) / (A016861 n : ℚ))

end

end A215542.P15985707996019994514

namespace A215542

/-- `(4*n+1)*A004355(n)/A016861(n)` -/
def P15985707996019994514.Spec : Prop :=
  ∀ n, P15985707996019994514.a n = (A215542 n : ℚ)

end A215542

/-! ## A215542.P10836825763343249203

`(4*n+1)*A079590(n)/A004273(A016777(n))`
-/

namespace A215542.P10836825763343249203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) * ((A079590 n : ℚ) / (A004273 (A016777 n).toNat : ℚ))

end

end A215542.P10836825763343249203

namespace A215542

/-- `(4*n+1)*A079590(n)/A004273(A016777(n))` -/
def P10836825763343249203.Spec : Prop :=
  ∀ n, P10836825763343249203.a n = (A215542 n : ℚ)

end A215542

/-! ## A215542.P15840535598060684718

`record[A214776(A055999(n))]`
-/

namespace A215542.P15840535598060684718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215542.P15840535598060684718

namespace A215542

/-- `record[A214776(A055999(n))]` -/
def P15840535598060684718.Spec : Prop :=
  ∀ n, P15840535598060684718.a n = A215542 n

end A215542

/-! ## A215542.P1391974469236310212

`A214776(A055999(n+3))`
-/

namespace A215542.P1391974469236310212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A055999 (n + 3)).toNat

end

end A215542.P1391974469236310212

namespace A215542

/-- `A214776(A055999(n+3))` -/
def P1391974469236310212.Spec : Prop :=
  ∀ n, P1391974469236310212.a n = A215542 n

end A215542

/-! ## A215542.P11431044710436589112

`record[A214776(A027379(n)+n)]`
-/

namespace A215542.P11431044710436589112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215542.P11431044710436589112

namespace A215542

/-- `record[A214776(A027379(n)+n)]` -/
def P11431044710436589112.Spec : Prop :=
  ∀ n, P11431044710436589112.a n = A215542 n

end A215542

/-!
# A215543: Number of standard Young tableaux of shape [3n,3].

The programs for A215543, the canonical program `A215543.P17900110043376865101` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215543 has offset 0).

The definition of A215543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215543.P17900110043376865101

`record[C(n, gcd(3, n+1))-n]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215543

/-- `record[C(n, gcd(3, n+1))-n]` -/
def P17900110043376865101.Spec : Prop :=
  ∀ n, P17900110043376865101.a n = A215543 n

theorem P17900110043376865101.correct : P17900110043376865101.Spec := by
  intro n
  simp only [A215543]

end A215543

/-! ## A215543.P9869730693848678531

`A256649(n)+A187297(n+1)`
-/

namespace A215543.P9869730693848678531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256649 n + A187297 (n + 1)

end

end A215543.P9869730693848678531

namespace A215543

/-- `A256649(n)+A187297(n+1)` -/
def P9869730693848678531.Spec : Prop :=
  ∀ n, P9869730693848678531.a n = A215543 n

end A215543

/-! ## A215543.P17521543080518619610

`record[C(A014682(n), 3)-A014682(n)]`
-/

namespace A215543.P17521543080518619610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A014682 n).toNat 3 : ℤ) - A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215543.P17521543080518619610

namespace A215543

/-- `record[C(A014682(n), 3)-A014682(n)]` -/
def P17521543080518619610.Spec : Prop :=
  ∀ n, P17521543080518619610.a n = A215543 n

end A215543

/-! ## A215543.P11011354573718614593

`(3*n+2)*A258087(2*n)`
-/

namespace A215543.P11011354573718614593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) * A258087 (2 * n)

end

end A215543.P11011354573718614593

namespace A215543

/-- `(3*n+2)*A258087(2*n)` -/
def P11011354573718614593.Spec : Prop :=
  ∀ n, P11011354573718614593.a n = A215543 n

end A215543

/-! ## A215543.P10197480263672796710

`(A004275(2*n)-n)*A000326(n+1)`
-/

namespace A215543.P10197480263672796710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004275 (2 * n) - (n : ℤ)) * A000326 (n + 1)

end

end A215543.P10197480263672796710

namespace A215543

/-- `(A004275(2*n)-n)*A000326(n+1)` -/
def P10197480263672796710.Spec : Prop :=
  ∀ n, P10197480263672796710.a n = A215543 n

end A215543

/-! ## A215543.P7203731791654963726

`(A267528(2*n)-1)*A001318(2*n+1)`
-/

namespace A215543.P7203731791654963726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267528 (2 * n) - 1) * A001318 (2 * n + 1)

end

end A215543.P7203731791654963726

namespace A215543

/-- `(A267528(2*n)-1)*A001318(2*n+1)` -/
def P7203731791654963726.Spec : Prop :=
  ∀ n, P7203731791654963726.a n = A215543 n

end A215543

/-! ## A215543.P17640881076109252206

`Δ[A272058(2*n)]*A272058(2*n)`
-/

namespace A215543.P17640881076109252206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272058 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A272058 (2 * n)

end

end A215543.P17640881076109252206

namespace A215543

/-- `Δ[A272058(2*n)]*A272058(2*n)` -/
def P17640881076109252206.Spec : Prop :=
  ∀ n, P17640881076109252206.a n = A215543 n

end A215543

/-! ## A215543.P2553597437772064252

`abs(3*n+1-A000292(3*n))-1`
-/

namespace A215543.P2553597437772064252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * n + 1 : ℤ) - A000292 (3 * n)| - 1

end

end A215543.P2553597437772064252

namespace A215543

/-- `abs(3*n+1-A000292(3*n))-1` -/
def P2553597437772064252.Spec : Prop :=
  ∀ n, P2553597437772064252.a n = A215543 n

end A215543

/-! ## A215543.P11905200395109312785

`record[gcd(n, A000212(n+1))]*A000326(n+1)`
-/

namespace A215543.P11905200395109312785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000212 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A000326 (n + 1)

end

end A215543.P11905200395109312785

namespace A215543

/-- `record[gcd(n, A000212(n+1))]*A000326(n+1)` -/
def P11905200395109312785.Spec : Prop :=
  ∀ n, P11905200395109312785.a n = A215543 n

end A215543

/-! ## A215543.P13694682907613294945

`∑[A016777(n)]*lt[3*n, A347538(n+3)]`
-/

namespace A215543.P13694682907613294945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347538 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

end

end A215543.P13694682907613294945

namespace A215543

/-- `∑[A016777(n)]*lt[3*n, A347538(n+3)]` -/
def P13694682907613294945.Spec : Prop :=
  ∀ n, P13694682907613294945.a n = A215543 n

end A215543

/-! ## A215543.P346166864463666788

`A129936(A233583(2*n+1)+n)`
-/

namespace A215543.P346166864463666788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129936 (A233583 (2 * n + 1) + (n : ℤ)).toNat

end

end A215543.P346166864463666788

namespace A215543

/-- `A129936(A233583(2*n+1)+n)` -/
def P346166864463666788.Spec : Prop :=
  ∀ n, P346166864463666788.a n = A215543 n

end A215543

/-!
# A215544: Number of standard Young tableaux of shape [4n,4].

The programs for A215544, the canonical program `A215544.P10469390717346854608` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215544 has offset 0).

The definition of A215544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215544.P10469390717346854608

`record[A266222(n)]*A100157(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215544

/-- `record[A266222(n)]*A100157(n+1)` -/
def P10469390717346854608.Spec : Prop :=
  ∀ n, P10469390717346854608.a n = A215544 n

theorem P10469390717346854608.correct : P10469390717346854608.Spec := by
  intro n
  simp only [A215544]

end A215544

/-! ## A215544.P553397581772271067

`A004273(A004273(n))*A100157(n+1)`
-/

namespace A215544.P553397581772271067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004273 n).toNat * A100157 (n + 1)

end

end A215544.P553397581772271067

namespace A215544

/-- `A004273(A004273(n))*A100157(n+1)` -/
def P553397581772271067.Spec : Prop :=
  ∀ n, P553397581772271067.a n = A215544 n

end A215544

/-! ## A215544.P13028098531251847318

`A000330(2*n+1)*A004273(A004273(n))`
-/

namespace A215544.P13028098531251847318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (2 * n + 1) * A004273 (A004273 n).toNat

end

end A215544.P13028098531251847318

namespace A215544

/-- `A000330(2*n+1)*A004273(A004273(n))` -/
def P13028098531251847318.Spec : Prop :=
  ∀ n, P13028098531251847318.a n = A215544 n

end A215544

/-! ## A215544.P12379359911648155041

`(A289207(2*n+1)+A289207(2*n))*A000330(2*n+1)`
-/

namespace A215544.P12379359911648155041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A289207 (2 * n + 1) + A289207 (2 * n)) * A000330 (2 * n + 1)

end

end A215544.P12379359911648155041

namespace A215544

/-- `(A289207(2*n+1)+A289207(2*n))*A000330(2*n+1)` -/
def P12379359911648155041.Spec : Prop :=
  ∀ n, P12379359911648155041.a n = A215544 n

end A215544

/-! ## A215544.P3940602124683808743

`A005587(record[A001281(n)-n])`
-/

namespace A215544.P3940602124683808743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215544.P3940602124683808743

namespace A215544

/-- `A005587(record[A001281(n)-n])` -/
def P3940602124683808743.Spec : Prop :=
  ∀ n, P3940602124683808743.a n = A215544 n

end A215544

/-! ## A215544.P7343455917531053813

`A005587(eq[A001057(n), A004525(n)])`
-/

namespace A215544.P7343455917531053813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215544.P7343455917531053813

namespace A215544

/-- `A005587(eq[A001057(n), A004525(n)])` -/
def P7343455917531053813.Spec : Prop :=
  ∀ n, P7343455917531053813.a n = A215544 n

end A215544

/-! ## A215544.P13285824028791275114

`A005587(eq[A000265(n+1), A008619(n)])`
-/

namespace A215544.P13285824028791275114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005587 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215544.P13285824028791275114

namespace A215544

/-- `A005587(eq[A000265(n+1), A008619(n)])` -/
def P13285824028791275114.Spec : Prop :=
  ∀ n, P13285824028791275114.a n = A215544 n

end A215544

/-! ## A215544.P9466358160922517081

`A214776(eq[4, A002262(n)])`
-/

namespace A215544.P9466358160922517081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215544.P9466358160922517081

namespace A215544

/-- `A214776(eq[4, A002262(n)])` -/
def P9466358160922517081.Spec : Prop :=
  ∀ n, P9466358160922517081.a n = A215544 n

end A215544

/-!
# A215545: Number of standard Young tableaux of shape [5n,5].

The programs for A215545, the canonical program `A215545.P11920796599783061454` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215545 has offset 0).

The definition of A215545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215545.P11920796599783061454

`record[A000389(5*n)-A000332(5*n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215545

/-- `record[A000389(5*n)-A000332(5*n)]` -/
def P11920796599783061454.Spec : Prop :=
  ∀ n, P11920796599783061454.a n = A215545 n

theorem P11920796599783061454.correct : P11920796599783061454.Spec := by
  intro n
  simp only [A215545]

end A215545

/-! ## A215545.P15714391377480897622

`(A000389(5*(n+1))-A000332(5*(n+1)))%A000389(5*(n+1))`
-/

namespace A215545.P15714391377480897622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000389 (5 * (n + 1)) - A000332 (5 * (n + 1))) (A000389 (5 * (n + 1)))

end

end A215545.P15714391377480897622

namespace A215545

/-- `(A000389(5*(n+1))-A000332(5*(n+1)))%A000389(5*(n+1))` -/
def P15714391377480897622.Spec : Prop :=
  ∀ n, P15714391377480897622.a n = A215545 n

end A215545

/-! ## A215545.P4788048734195507082

`A214776(eq[5, A002262(n)])`
-/

namespace A215545.P4788048734195507082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215545.P4788048734195507082

namespace A215545

/-- `A214776(eq[5, A002262(n)])` -/
def P4788048734195507082.Spec : Prop :=
  ∀ n, P4788048734195507082.a n = A215545 n

end A215545

/-! ## A215545.P17158750245345141872

`A214776(A046691(n+3)+9)`
-/

namespace A215545.P17158750245345141872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A046691 (n + 3) + 9).toNat

end

end A215545.P17158750245345141872

namespace A215545

/-- `A214776(A046691(n+3)+9)` -/
def P17158750245345141872.Spec : Prop :=
  ∀ n, P17158750245345141872.a n = A215545 n

end A215545

/-! ## A215545.P17169693186369531208

`A214776(eq[6, A002260(n+1)])`
-/

namespace A215545.P17169693186369531208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215545.P17169693186369531208

namespace A215545

/-- `A214776(eq[6, A002260(n+1)])` -/
def P17169693186369531208.Spec : Prop :=
  ∀ n, P17169693186369531208.a n = A215545 n

end A215545

/-!
# A215546: Number of standard Young tableaux of shape [6n,6].

The programs for A215546, there is no canonical definition to state claims against.
-/

/-! ## A215546.P10819332887075027337

`A214776(eq[6, A002262(n)])`
-/

namespace A215546.P10819332887075027337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215546.P10819332887075027337

/-! ## A215546.P13232489715035748073

`A214776(A167499(n+5)+1)`
-/

namespace A215546.P13232489715035748073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A167499 (n + 5) + 1).toNat

end

end A215546.P13232489715035748073

/-! ## A215546.P2704701140807829201

`A214776(A000124(n+6)+5)`
-/

namespace A215546.P2704701140807829201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A000124 (n + 6) + 5).toNat

end

end A215546.P2704701140807829201

/-! ## A215546.P17005090416969199868

`A214776(A055998(n+4)+9)`
-/

namespace A215546.P17005090416969199868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A055998 (n + 4) + 9).toNat

end

end A215546.P17005090416969199868

/-! ## A215546.P11935663611420426832

`A214776(A052905(n+3)+11)`
-/

namespace A215546.P11935663611420426832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A052905 (n + 3) + 11).toNat

end

end A215546.P11935663611420426832

/-! ## A215546.P2106224146869663109

`A214776(eq[7, A002260(n+1)])`
-/

namespace A215546.P2106224146869663109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215546.P2106224146869663109

/-! ## A215546.P10511915458413258638

`A214776(eq[17, A037126(n+1)])`
-/

namespace A215546.P10511915458413258638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215546.P10511915458413258638

/-!
# A215547: Number of standard Young tableaux of shape [7n,7].

The programs for A215547, there is no canonical definition to state claims against.
-/

/-! ## A215547.P10743946983265152168

`A214776(eq[7, A002262(n)])`
-/

namespace A215547.P10743946983265152168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215547.P10743946983265152168

/-! ## A215547.P240984355601482492

`A214776(A000217(n+7)+7)`
-/

namespace A215547.P240984355601482492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A000217 (n + 7) + 7).toNat

end

end A215547.P240984355601482492

/-! ## A215547.P8104519354189089595

`A214776(eq[8, A002260(n+1)])`
-/

namespace A215547.P8104519354189089595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215547.P8104519354189089595

/-! ## A215547.P12123160682430914520

`A214776(eq[8, A135223(n+1)])`
-/

namespace A215547.P12123160682430914520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215547.P12123160682430914520

/-! ## A215547.P251866416606106807

`A214776(eq[15, A158405(n+1)])`
-/

namespace A215547.P251866416606106807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215547.P251866416606106807

/-! ## A215547.P3923352201203426361

`A214776(eq[15, A245093(n+1)])`
-/

namespace A215547.P3923352201203426361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215547.P3923352201203426361

/-!
# A215548: Number of standard Young tableaux of shape [8n,8].

The programs for A215548, there is no canonical definition to state claims against.
-/

/-! ## A215548.P2917068221264967414

`A214776(eq[8, A002262(n)])`
-/

namespace A215548.P2917068221264967414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215548.P2917068221264967414

/-! ## A215548.P3442173774173222276

`A214776(eq[8, A130270(n+1)])`
-/

namespace A215548.P3442173774173222276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215548.P3442173774173222276

/-! ## A215548.P2074557558346926598

`A214776(eq[9, A002260(n+1)])`
-/

namespace A215548.P2074557558346926598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215548.P2074557558346926598

/-! ## A215548.P4866112067732224448

`A214776(eq[10, A131818(n+2)])`
-/

namespace A215548.P4866112067732224448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215548.P4866112067732224448

/-! ## A215548.P6833208830244931254

`A214776(eq[17, A158405(n+1)])`
-/

namespace A215548.P6833208830244931254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215548.P6833208830244931254

/-!
# A215549: Number of standard Young tableaux of shape [9n,9].

The programs for A215549, there is no canonical definition to state claims against.
-/

/-! ## A215549.P11571984201828217717

`A214776(eq[9, A002262(n)])`
-/

namespace A215549.P11571984201828217717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215549.P11571984201828217717

/-! ## A215549.P190897772654580608

`A214776(eq[9, A130270(n+1)])`
-/

namespace A215549.P190897772654580608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215549.P190897772654580608

/-! ## A215549.P16556367169349886847

`A214776(eq[10, A002260(n+1)])`
-/

namespace A215549.P16556367169349886847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215549.P16556367169349886847

/-! ## A215549.P17327506141558506762

`A214776(eq[11, A131818(n+2)])`
-/

namespace A215549.P17327506141558506762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215549.P17327506141558506762

/-! ## A215549.P9354319702553194397

`A214776(eq[19, A158405(n+1)])`
-/

namespace A215549.P9354319702553194397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215549.P9354319702553194397

/-!
# A215550: Number of standard Young tableaux of shape [10n,10].

The programs for A215550, there is no canonical definition to state claims against.
-/

/-! ## A215550.P10411217365805836639

`A214776(eq[10, A002262(n)])`
-/

namespace A215550.P10411217365805836639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215550.P10411217365805836639

/-! ## A215550.P10705194259827000488

`A214776(eq[11, A002260(n+1)])`
-/

namespace A215550.P10705194259827000488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215550.P10705194259827000488

/-! ## A215550.P6472971286879566597

`A214776(eq[11, A135223(n+1)])`
-/

namespace A215550.P6472971286879566597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215550.P6472971286879566597

/-! ## A215550.P18274788872620252183

`A214776(eq[12, A131818(n+2)])`
-/

namespace A215550.P18274788872620252183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215550.P18274788872620252183

/-! ## A215550.P2112007544781727852

`A214776(eq[19, A066657(n+1)])`
-/

namespace A215550.P2112007544781727852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215550.P2112007544781727852

/-! ## A215550.P14449258963813033044

`A214776(eq[21, A158405(n+1)])`
-/

namespace A215550.P14449258963813033044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215550.P14449258963813033044

/-!
# A215551: a(n) = binomial(7*n,n)*(5*n+1)/(6*n+1).

The programs for A215551, the canonical program `A215551.P4011766139144104992` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215551 has offset 0).

The definition of A215551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215551.P4011766139144104992

`C(7*n, n)*(5*n+1)/(6*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215551

/-- `C(7*n, n)*(5*n+1)/(6*n+1)` -/
def P4011766139144104992.Spec : Prop :=
  ∀ n, P4011766139144104992.a n = (A215551 n : ℚ)

end A215551

/-! ## A215551.P2151619678458440144

`(5*n+1)*A002296(n)`
-/

namespace A215551.P2151619678458440144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A002296 n

end

end A215551.P2151619678458440144

namespace A215551

/-- `(5*n+1)*A002296(n)` -/
def P2151619678458440144.Spec : Prop :=
  ∀ n, P2151619678458440144.a n = A215551 n

end A215551

/-! ## A215551.P4794001102913731374

`A002296(n)*A016861(n)`
-/

namespace A215551.P4794001102913731374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002296 n * A016861 n

end

end A215551.P4794001102913731374

namespace A215551

/-- `A002296(n)*A016861(n)` -/
def P4794001102913731374.Spec : Prop :=
  ∀ n, P4794001102913731374.a n = A215551 n

end A215551

/-! ## A215551.P4527824799339459143

`A004368(n)-n*A002296(n)`
-/

namespace A215551.P4527824799339459143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004368 n - (n : ℤ) * A002296 n

end

end A215551.P4527824799339459143

namespace A215551

/-- `A004368(n)-n*A002296(n)` -/
def P4527824799339459143.Spec : Prop :=
  ∀ n, P4527824799339459143.a n = A215551 n

end A215551

/-! ## A215551.P5314866042728667894

`A002296(n)/A002295(n)*A004355(n)`
-/

namespace A215551.P5314866042728667894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002296 n : ℚ) / (A002295 n : ℚ) * (A004355 n : ℚ)

end

end A215551.P5314866042728667894

namespace A215551

/-- `A002296(n)/A002295(n)*A004355(n)` -/
def P5314866042728667894.Spec : Prop :=
  ∀ n, P5314866042728667894.a n = (A215551 n : ℚ)

end A215551

/-! ## A215551.P1135386617510351827

`(5*n+1)*A070914(eq[64, A130321(n)])`
-/

namespace A215551.P1135386617510351827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) * A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215551.P1135386617510351827

namespace A215551

/-- `(5*n+1)*A070914(eq[64, A130321(n)])` -/
def P1135386617510351827.Spec : Prop :=
  ∀ n, P1135386617510351827.a n = A215551 n

end A215551

/-! ## A215551.P2231278808168879057

`A214776(eq[6, A025581(n)])`
-/

namespace A215551.P2231278808168879057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215551.P2231278808168879057

namespace A215551

/-- `A214776(eq[6, A025581(n)])` -/
def P2231278808168879057.Spec : Prop :=
  ∀ n, P2231278808168879057.a n = A215551 n

end A215551

/-!
# A215552: a(n) = binomial(8*n,n)*(6*n+1)/(7*n+1).

The programs for A215552, the canonical program `A215552.P6560176284433690345` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215552 has offset 0).

The definition of A215552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215552.P6560176284433690345

`C(8*n, n)*(6*n+1)/(7*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215552

/-- `C(8*n, n)*(6*n+1)/(7*n+1)` -/
def P6560176284433690345.Spec : Prop :=
  ∀ n, P6560176284433690345.a n = (A215552 n : ℚ)

end A215552

/-! ## A215552.P9546674446941426832

`A007556(n)*A016921(n)`
-/

namespace A215552.P9546674446941426832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007556 n * A016921 n

end

end A215552.P9546674446941426832

namespace A215552

/-- `A007556(n)*A016921(n)` -/
def P9546674446941426832.Spec : Prop :=
  ∀ n, P9546674446941426832.a n = A215552 n

end A215552

/-! ## A215552.P4946227703869291225

`A007556(n)*A016777(2*n)`
-/

namespace A215552.P4946227703869291225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007556 n * A016777 (2 * n)

end

end A215552.P4946227703869291225

namespace A215552

/-- `A007556(n)*A016777(2*n)` -/
def P4946227703869291225.Spec : Prop :=
  ∀ n, P4946227703869291225.a n = A215552 n

end A215552

/-! ## A215552.P12564744344560856517

`A004273(A016777(n))*A007556(n)`
-/

namespace A215552.P12564744344560856517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A016777 n).toNat * A007556 n

end

end A215552.P12564744344560856517

namespace A215552

/-- `A004273(A016777(n))*A007556(n)` -/
def P12564744344560856517.Spec : Prop :=
  ∀ n, P12564744344560856517.a n = A215552 n

end A215552

/-! ## A215552.P2448048953977616019

`A004382(n)/n*a(A000038(n))*A016921(n)` with `a(0)=1`
-/

namespace A215552.P2448048953977616019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) * a (A000038 n).toNat * (A016921 n : ℚ)

end

end A215552.P2448048953977616019

namespace A215552

/-- `A004382(n)/n*a(A000038(n))*A016921(n)` -/
def P2448048953977616019.Spec : Prop :=
  ∀ n, P2448048953977616019.a n = (A215552 n : ℚ)

end A215552

/-! ## A215552.P1139462742896960557

`A016921(n)*A070914(eq[8, A004736(n+1)])`
-/

namespace A215552.P1139462742896960557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n * A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215552.P1139462742896960557

namespace A215552

/-- `A016921(n)*A070914(eq[8, A004736(n+1)])` -/
def P1139462742896960557.Spec : Prop :=
  ∀ n, P1139462742896960557.a n = A215552 n

end A215552

/-!
# A215553: a(n) = binomial(9*n,n)*(7*n+1)/(8*n+1).

The programs for A215553, the canonical program `A215553.P3250685475462951818` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215553 has offset 0).

The definition of A215553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215553.P3250685475462951818

`C(9*n, n)*(7*n+1)/(8*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215553

/-- `C(9*n, n)*(7*n+1)/(8*n+1)` -/
def P3250685475462951818.Spec : Prop :=
  ∀ n, P3250685475462951818.a n = (A215553 n : ℚ)

end A215553

/-! ## A215553.P7321031138744422696

`A214776(eq[7, A116598(n)])`
-/

namespace A215553.P7321031138744422696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215553.P7321031138744422696

namespace A215553

/-- `A214776(eq[7, A116598(n)])` -/
def P7321031138744422696.Spec : Prop :=
  ∀ n, P7321031138744422696.a n = A215553 n

end A215553

/-! ## A215553.P6421860764520526219

`A214776(eq[8, A025581(n)])`
-/

namespace A215553.P6421860764520526219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215553.P6421860764520526219

namespace A215553

/-- `A214776(eq[8, A025581(n)])` -/
def P6421860764520526219.Spec : Prop :=
  ∀ n, P6421860764520526219.a n = A215553 n

end A215553

/-! ## A215553.P18264507326171501550

`A214776(eq[9, A004736(n+1)])`
-/

namespace A215553.P18264507326171501550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215553.P18264507326171501550

namespace A215553

/-- `A214776(eq[9, A004736(n+1)])` -/
def P18264507326171501550.Spec : Prop :=
  ∀ n, P18264507326171501550.a n = A215553 n

end A215553

/-!
# A215554: a(n) = binomial(10*n,n)*(8*n+1)/(9*n+1).

The programs for A215554, the canonical program `A215554.P17245933821415830049` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215554 has offset 0).

The definition of A215554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215554.P17245933821415830049

`C(10*n, n)*(8*n+1)/(9*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215554

/-- `C(10*n, n)*(8*n+1)/(9*n+1)` -/
def P17245933821415830049.Spec : Prop :=
  ∀ n, P17245933821415830049.a n = (A215554 n : ℚ)

end A215554

/-! ## A215554.P16026801206645466980

`(8*n+1)*A059968(n)`
-/

namespace A215554.P16026801206645466980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 1 : ℤ) * A059968 n

end

end A215554.P16026801206645466980

namespace A215554

/-- `(8*n+1)*A059968(n)` -/
def P16026801206645466980.Spec : Prop :=
  ∀ n, P16026801206645466980.a n = A215554 n

end A215554

/-! ## A215554.P1455531111477270147

`A214776(eq[9, A025581(n)])`
-/

namespace A215554.P1455531111477270147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215554.P1455531111477270147

namespace A215554

/-- `A214776(eq[9, A025581(n)])` -/
def P1455531111477270147.Spec : Prop :=
  ∀ n, P1455531111477270147.a n = A215554 n

end A215554

/-! ## A215554.P10138594205096057164

`A214776(eq[10, A193739(n)])`
-/

namespace A215554.P10138594205096057164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215554.P10138594205096057164

namespace A215554

/-- `A214776(eq[10, A193739(n)])` -/
def P10138594205096057164.Spec : Prop :=
  ∀ n, P10138594205096057164.a n = A215554 n

end A215554

/-! ## A215554.P5359899760321410846

`A214776(eq[10, A004736(n+1)])`
-/

namespace A215554.P5359899760321410846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215554.P5359899760321410846

namespace A215554

/-- `A214776(eq[10, A004736(n+1)])` -/
def P5359899760321410846.Spec : Prop :=
  ∀ n, P5359899760321410846.a n = A215554 n

end A215554

/-! ## A215554.P5142708478888833186

`A214776(eq[16, A185782(n+1)]-1)`
-/

namespace A215554.P5142708478888833186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A215554.P5142708478888833186

namespace A215554

/-- `A214776(eq[16, A185782(n+1)]-1)` -/
def P5142708478888833186.Spec : Prop :=
  ∀ n, P5142708478888833186.a n = A215554 n

end A215554

/-!
# A215555: a(n) = binomial(11*n,n)*(9*n+1)/(10*n+1).

The programs for A215555, the canonical program `A215555.P12095238688622758741` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215555 has offset 0).

The definition of A215555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215555.P12095238688622758741

`C(11*n, n)*(9*n+1)/(10*n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215555

/-- `C(11*n, n)*(9*n+1)/(10*n+1)` -/
def P12095238688622758741.Spec : Prop :=
  ∀ n, P12095238688622758741.a n = (A215555 n : ℚ)

end A215555

/-! ## A215555.P8183162332803315170

`A017173(n)*A230388(n)`
-/

namespace A215555.P8183162332803315170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n * A230388 n

end

end A215555.P8183162332803315170

namespace A215555

/-- `A017173(n)*A230388(n)` -/
def P8183162332803315170.Spec : Prop :=
  ∀ n, P8183162332803315170.a n = A215555 n

end A215555

/-! ## A215555.P2798474918147805234

`A214776(eq[10, A025581(n)])`
-/

namespace A215555.P2798474918147805234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215555.P2798474918147805234

namespace A215555

/-- `A214776(eq[10, A025581(n)])` -/
def P2798474918147805234.Spec : Prop :=
  ∀ n, P2798474918147805234.a n = A215555 n

end A215555

/-! ## A215555.P77725916585021165

`A214776(eq[12, A116598(n)])`
-/

namespace A215555.P77725916585021165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215555.P77725916585021165

namespace A215555

/-- `A214776(eq[12, A116598(n)])` -/
def P77725916585021165.Spec : Prop :=
  ∀ n, P77725916585021165.a n = A215555 n

end A215555

/-! ## A215555.P11189311086782867

`record[A214776(∑[A057717(n)])]`
-/

namespace A215555.P11189311086782867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215555.P11189311086782867

namespace A215555

/-- `record[A214776(∑[A057717(n)])]` -/
def P11189311086782867.Spec : Prop :=
  ∀ n, P11189311086782867.a n = A215555 n

end A215555

/-! ## A215555.P1407983425626284132

`A214776(A056000(n+7)-1)`
-/

namespace A215555.P1407983425626284132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (A056000 (n + 7) - 1).toNat

end

end A215555.P1407983425626284132

namespace A215555

/-- `A214776(A056000(n+7)-1)` -/
def P1407983425626284132.Spec : Prop :=
  ∀ n, P1407983425626284132.a n = A215555 n

end A215555

/-! ## A215555.P3277617484297960914

`A214776(eq[11, A004736(n+1)])`
-/

namespace A215555.P3277617484297960914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215555.P3277617484297960914

namespace A215555

/-- `A214776(eq[11, A004736(n+1)])` -/
def P3277617484297960914.Spec : Prop :=
  ∀ n, P3277617484297960914.a n = A215555 n

end A215555

/-!
# A215556: Expansion of q * psi(-q) * phi(q) * psi(-q^7) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A215556, there is no canonical definition to state claims against.
-/

/-! ## A215556.P13159212382060530526

`A159813(7*(n+1))`
-/

namespace A215556.P13159212382060530526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159813 (7 * (n + 1))

end

end A215556.P13159212382060530526

/-!
# A215557: Number of standard Young tableaux of shape [n^2,n].

The programs for A215557, the canonical program `A215557.P16372911557640265657` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215557 has offset 0).

The definition of A215557 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215557.P16372911557640265657

`C(n*(n+1), n)*(n*(n-1)+1)/(n²+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215557

/-- `C(n*(n+1), n)*(n*(n-1)+1)/(n²+1)` -/
def P16372911557640265657.Spec : Prop :=
  ∀ n, P16372911557640265657.a n = (A215557 n : ℚ)

end A215557

/-! ## A215557.P13438023214412412468

`A002061(n)*A135862(n)`
-/

namespace A215557.P13438023214412412468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A135862 n

end

end A215557.P13438023214412412468

namespace A215557

/-- `A002061(n)*A135862(n)` -/
def P13438023214412412468.Spec : Prop :=
  ∀ n, P13438023214412412468.a n = A215557 n

end A215557

/-! ## A215557.P3896319451792037103

`A135860(n)-n*A135862(n)`
-/

namespace A215557.P3896319451792037103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135860 n - (n : ℤ) * A135862 n

end

end A215557.P3896319451792037103

namespace A215557

/-- `A135860(n)-n*A135862(n)` -/
def P3896319451792037103.Spec : Prop :=
  ∀ n, P3896319451792037103.a n = A215557 n

end A215557

/-! ## A215557.P7568486672330499821

`A214776(∑[4*n])`
-/

namespace A215557.P7568486672330499821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215557.P7568486672330499821

namespace A215557

/-- `A214776(∑[4*n])` -/
def P7568486672330499821.Spec : Prop :=
  ∀ n, P7568486672330499821.a n = A215557 n

end A215557

/-! ## A215557.P14395348477565707872

`A051890(n)/2*A295222(A051890(n))`
-/

namespace A215557.P14395348477565707872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051890 n : ℚ) / 2 * (A295222 (A051890 n).toNat : ℚ)

end

end A215557.P14395348477565707872

namespace A215557

/-- `A051890(n)/2*A295222(A051890(n))` -/
def P14395348477565707872.Spec : Prop :=
  ∀ n, P14395348477565707872.a n = (A215557 n : ℚ)

end A215557

/-!
# A215558: Cubes whose final digits are the cube root.

The programs for A215558, there is no canonical definition to state claims against.
-/

/-! ## A215558.P1774744701024744722

`A033819(n+1)^3`
-/

namespace A215558.P1774744701024744722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1) ^ 3

end

end A215558.P1774744701024744722

/-! ## A215558.P13326754261779898926

`record[A033819(A117910(n))^3]`
-/

namespace A215558.P13326754261779898926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (A117910 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215558.P13326754261779898926

/-! ## A215558.P16612954485698441727

`∩[A068407(n+1), A072496(n+1)]^3`
-/

namespace A215558.P16612954485698441727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A215558.P16612954485698441727

/-! ## A215558.P15448486013470365503

`A000578(A033819(n+1))`
-/

namespace A215558.P15448486013470365503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A033819 (n + 1)).toNat

end

end A215558.P15448486013470365503

/-! ## A215558.P16175132878414277463

`A034828(2*A033819(n+1))`
-/

namespace A215558.P16175132878414277463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A033819 (n + 1)).toNat

end

end A215558.P16175132878414277463

/-!
# A215559: Smallest n-digit noncomposite number (written in base 2) with maximum base-2 digit sum.

The programs for A215559, there is no canonical definition to state claims against.
-/

/-! ## A215559.P13114144167529309778

`A001202(lcm(2, A268866(n)))`
-/

namespace A215559.P13114144167529309778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (Int.lcm 2 (A268866 n))

end

end A215559.P13114144167529309778

/-! ## A215559.P5341095770694863797

`or(A339017(n)!, A284352(n))`
-/

namespace A215559.P5341095770694863797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A339017 n).toNat : ℤ) (A284352 n)

end

end A215559.P5341095770694863797

/-! ## A215559.P13268639029017664070

`A284352(n)+A135528(a(floor(n/2)))` with `a(0)=1`
-/

namespace A215559.P13268639029017664070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284352 n + A135528 (a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A215559.P13268639029017664070

/-! ## A215559.P2836986652932982570

`A284352(n)+A014366(A014346(n))`
-/

namespace A215559.P2836986652932982570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284352 n + A014366 (A014346 n).toNat

end

end A215559.P2836986652932982570

/-!
# A215560: a(n) = 3*a(n-1) + 46*a(n-2) + a(n-3) with a(0)=a(1)=3, a(2)=101.

The programs for A215560, the canonical program `A215560.P2970463376708489677` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215560 has offset 0).

The definition of A215560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+46*a(n-2)+a(n-3)` (program `A215560.P2970463376708489677`, by `A215560.P2970463376708489677.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215560.P2970463376708489677

`3*a(n-1)+46*a(n-2)+a(n-3)` with `a(0)=3, a(1)=3, a(2)=101`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215560

/-- `3*a(n-1)+46*a(n-2)+a(n-3)` -/
def P2970463376708489677.Spec : Prop :=
  ∀ n, (P2970463376708489677.a n : ℤ) = A215560 n

theorem P2970463376708489677.correct : P2970463376708489677.Spec := by
  intro n
  simp only [A215560]

end A215560

/-! ## A215560.P15415421332487392355

`abs(Δ[A215572(abs(1-n))])`
-/

namespace A215560.P15415421332487392355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215572 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A215560.P15415421332487392355

namespace A215560

/-- `abs(Δ[A215572(abs(1-n))])` -/
def P15415421332487392355.Spec : Prop :=
  ∀ n, P15415421332487392355.a n = A215560 n

end A215560

/-!
# A215562: Number of permutations of n indistinguishable copies of 1..4 with every partial sum <= the same partial sum averaged over all permutations.

The programs for A215562, there is no canonical definition to state claims against.
-/

/-! ## A215562.P6783973299574347185

`A215561(A155212(n)+12)`
-/

namespace A215562.P6783973299574347185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (A155212 n + 12).toNat

end

end A215562.P6783973299574347185

/-! ## A215562.P1060969358216466939

`A215561(A056000(n)+14)`
-/

namespace A215562.P1060969358216466939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (A056000 n + 14).toNat

end

end A215562.P1060969358216466939

/-! ## A215562.P15061664873230094684

`A215561(eq[4, A002262(n)])`
-/

namespace A215562.P15061664873230094684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215562.P15061664873230094684

/-! ## A215562.P17040605304904299814

`A215561(eq[4, A144328(n+1)])`
-/

namespace A215562.P17040605304904299814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215562.P17040605304904299814

/-! ## A215562.P11088643964189712249

`A215561(eq[5, A002260(n+1)])`
-/

namespace A215562.P11088643964189712249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215562.P11088643964189712249

/-!
# A215563: C(p,k)/p for primes p and k=1,...,p-1.

The programs for A215563, there is no canonical definition to state claims against.
-/

/-! ## A215563.P16717397783148386985

`A178252(eq[A035214(n), A143536(n+1)])`
-/

namespace A215563.P16717397783148386985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215563.P16717397783148386985

/-! ## A215563.P444062257740773661

`A178252(lt[A010054(n), A143536(n+1)])`
-/

namespace A215563.P444062257740773661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215563.P444062257740773661

/-! ## A215563.P17788513572731619808

`A178252(lt[A035214(n), A143544(n+1)])`
-/

namespace A215563.P17788513572731619808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215563.P17788513572731619808

/-! ## A215563.P8079889100224036471

`A178252(eq[A130296(n+1), A143536(n+1)])`
-/

namespace A215563.P8079889100224036471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215563.P8079889100224036471

/-! ## A215563.P14565120372235457161

`A178252(lt[A130296(n+1), A143544(n+1)])`
-/

namespace A215563.P14565120372235457161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215563.P14565120372235457161

/-!
# A215566: Strong pseudoprimes to bases 3 and 5.

The programs for A215566, there is no canonical definition to state claims against.
-/

/-! ## A215566.P2195200530084731106

`∩[A020229(n+1), A020231(n+1)]`
-/

namespace A215566.P2195200530084731106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215566.P2195200530084731106

/-! ## A215566.P17162713036721003276

`∩[A020229(n+1), A020271(n+1)]`
-/

namespace A215566.P17162713036721003276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215566.P17162713036721003276

/-!
# A215567: Numbers k with the property that k and the k-th number which is a product of k primes have the largest prime divisor and with the same multiplicity.

The programs for A215567, there is no canonical definition to state claims against.
-/

/-! ## A215567.P1929853809304635232

`eq[A061395(A046312(n+1)), A061395(n+1)]+1`
-/

namespace A215567.P1929853809304635232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A046312 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215567.P1929853809304635232

/-! ## A215567.P2712392733531788588

`eq[A111089(A122943(n+1)), A345941(n+1)]+1`
-/

namespace A215567.P2712392733531788588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A122943 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A215567.P2712392733531788588

/-!
# A215568: Strong pseudoprimes to base 2 and 5.

The programs for A215568, there is no canonical definition to state claims against.
-/

/-! ## A215568.P17814236095553997188

`∩[A001262(n+1), A020231(n+1)]`
-/

namespace A215568.P17814236095553997188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215568.P17814236095553997188

/-! ## A215568.P17590575030490776666

`∩[A001262(n+1), A020246(n+1)]`
-/

namespace A215568.P17590575030490776666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215568.P17590575030490776666

/-! ## A215568.P10418906279913154219

`∩[A001262(n+1), A020306(n+1)]`
-/

namespace A215568.P10418906279913154219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215568.P10418906279913154219

/-!
# A215569: a(n) = 3*a(n-1) + 46*a(n-2) + a(n-3) with a(0)=0, a(1)=14, a(2)=49.

The programs for A215569, the canonical program `A215569.P12203198322998220220` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215569 has offset 0).

The definition of A215569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+46*a(n-2)+a(n-3)` (program `A215569.P12203198322998220220`, by `A215569.P12203198322998220220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215569.P12203198322998220220

`3*a(n-1)+46*a(n-2)+a(n-3)` with `a(0)=0, a(1)=14, a(2)=49`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215569

/-- `3*a(n-1)+46*a(n-2)+a(n-3)` -/
def P12203198322998220220.Spec : Prop :=
  ∀ n, (P12203198322998220220.a n : ℤ) = A215569 n

theorem P12203198322998220220.correct : P12203198322998220220.Spec := by
  intro n
  simp only [A215569]

end A215569

/-! ## A215569.P3109693961440498955

`Δ[A215560(n)/7]`
-/

namespace A215569.P3109693961440498955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215560 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215569.P3109693961440498955

namespace A215569

/-- `Δ[A215560(n)/7]` -/
def P3109693961440498955.Spec : Prop :=
  ∀ n, P3109693961440498955.a n = (A215569 n : ℚ)

end A215569

/-!
# A215570: Number of permutations of n indistinguishable copies of 1..5 with every partial sum <= the same partial sum averaged over all permutations.

The programs for A215570, there is no canonical definition to state claims against.
-/

/-! ## A215570.P5577373929942081652

`A215561(eq[5, A002262(n)])`
-/

namespace A215570.P5577373929942081652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215570.P5577373929942081652

/-! ## A215570.P9686147901424071872

`A215561(eq[6, A002260(n+1)])`
-/

namespace A215570.P9686147901424071872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215570.P9686147901424071872

/-! ## A215570.P6293447446963450627

`A215561(A167499(n+4)+1-A215561(n))`
-/

namespace A215570.P6293447446963450627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (A167499 (n + 4) + 1 - A215561 n).toNat

end

end A215570.P6293447446963450627

/-!
# A215571: Number of permutations of n indistinguishable copies of 1..6 with every partial sum <= the same partial sum averaged over all permutations.

The programs for A215571, there is no canonical definition to state claims against.
-/

/-! ## A215571.P7815067568484347577

`A215561(eq[6, A002262(n)])`
-/

namespace A215571.P7815067568484347577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215571.P7815067568484347577

/-! ## A215571.P16369703447272828758

`A215561(eq[7, A002260(n+1)])`
-/

namespace A215571.P16369703447272828758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215571.P16369703447272828758

/-!
# A215572: a(n) = 3*a(n-1) + 46*a(n-2) + a(n-3) with a(0)=2, a(1)=5, a(2)=106.

The programs for A215572, the canonical program `A215572.P5390879078081000006` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215572 has offset 0).

The definition of A215572 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+46*a(n-2)+a(n-3)` (program `A215572.P5390879078081000006`, by `A215572.P5390879078081000006.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215572.P5390879078081000006

`3*a(n-1)+46*a(n-2)+a(n-3)` with `a(0)=2, a(1)=5, a(2)=106`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215572

/-- `3*a(n-1)+46*a(n-2)+a(n-3)` -/
def P5390879078081000006.Spec : Prop :=
  ∀ n, (P5390879078081000006.a n : ℤ) = A215572 n

theorem P5390879078081000006.correct : P5390879078081000006.Spec := by
  intro n
  simp only [A215572]

end A215572

/-! ## A215572.P4322424613968365136

`∑[A215560(n)]-1`
-/

namespace A215572.P4322424613968365136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A215572.P4322424613968365136

namespace A215572

/-- `∑[A215560(n)]-1` -/
def P4322424613968365136.Spec : Prop :=
  ∀ n, P4322424613968365136.a n = A215572 n

end A215572

/-! ## A215572.P13182070697906441313

`∑[xor(A000007(n), A215560(n))]`
-/

namespace A215572.P13182070697906441313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A215560 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215572.P13182070697906441313

namespace A215572

/-- `∑[xor(A000007(n), A215560(n))]` -/
def P13182070697906441313.Spec : Prop :=
  ∀ n, P13182070697906441313.a n = A215572 n

end A215572

/-! ## A215572.P9817100688476168157

`A057428(n+1)+∑[A215560(n)]`
-/

namespace A215572.P9817100688476168157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215572.P9817100688476168157

namespace A215572

/-- `A057428(n+1)+∑[A215560(n)]` -/
def P9817100688476168157.Spec : Prop :=
  ∀ n, P9817100688476168157.a n = A215572 n

end A215572

/-! ## A215572.P5911397190592278350

`A033999(2*n+1)+∑[A215560(n)]`
-/

namespace A215572.P5911397190592278350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215572.P5911397190592278350

namespace A215572

/-- `A033999(2*n+1)+∑[A215560(n)]` -/
def P5911397190592278350.Spec : Prop :=
  ∀ n, P5911397190592278350.a n = A215572 n

end A215572

/-! ## A215572.P17669847752902011324

`A121868(A074473(2*(n+1)))+∑[A215560(n)]`
-/

namespace A215572.P17669847752902011324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121868 (A074473 (2 * (n + 1))).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215572.P17669847752902011324

namespace A215572

/-- `A121868(A074473(2*(n+1)))+∑[A215560(n)]` -/
def P17669847752902011324.Spec : Prop :=
  ∀ n, P17669847752902011324.a n = A215572 n

end A215572

/-! ## A215572.P13413355385928885137

`Δ[A215569(n)/7]`
-/

namespace A215572.P13413355385928885137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215569 n : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215572.P13413355385928885137

namespace A215572

/-- `Δ[A215569(n)/7]` -/
def P13413355385928885137.Spec : Prop :=
  ∀ n, P13413355385928885137.a n = (A215572 n : ℚ)

end A215572

/-!
# A215573: a(n) = n*(n+1)*(2n+1)/6 modulo n.

The programs for A215573, the canonical program `A215573.P18276768616162693638` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215573 has offset 1).

The definition of A215573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215573.P18276768616162693638

`((n+1)*(n+2)*(2*(n+1)+1)/6)%(n+1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215573

/-- `((n+1)*(n+2)*(2*(n+1)+1)/6)%(n+1)` -/
def P18276768616162693638.Spec : Prop :=
  ∀ n, P18276768616162693638.a n = A215573 (n + 1)

theorem P18276768616162693638.correct : P18276768616162693638.Spec := by
  intro n
  simp only [A215573, Nat.add_sub_cancel]

end A215573

/-! ## A215573.P11954340966468098920

`n-C(n, 3)%(n+1)`
-/

namespace A215573.P11954340966468098920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.choose n 3 % (n + 1) : ℕ) : ℤ)

end

end A215573.P11954340966468098920

namespace A215573

/-- `n-C(n, 3)%(n+1)` -/
def P11954340966468098920.Spec : Prop :=
  ∀ n, P11954340966468098920.a n = A215573 (n + 1)

end A215573

/-! ## A215573.P17717611759859062493

`abs(∑[-n^2]%(n+1))`
-/

namespace A215573.P17717611759859062493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A215573.P17717611759859062493

namespace A215573

/-- `abs(∑[-n^2]%(n+1))` -/
def P17717611759859062493.Spec : Prop :=
  ∀ n, P17717611759859062493.a n = A215573 (n + 1)

end A215573

/-! ## A215573.P6193065299398533845

`-(-∑[n^2]%(n+1))`
-/

namespace A215573.P6193065299398533845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (n + 1 : ℤ)

end

end A215573.P6193065299398533845

namespace A215573

/-- `-(-∑[n^2]%(n+1))` -/
def P6193065299398533845.Spec : Prop :=
  ∀ n, P6193065299398533845.a n = A215573 (n + 1)

end A215573

/-! ## A215573.P11320212094716630997

`(1-∑[∑[n]])%(n+1)+n`
-/

namespace A215573.P11320212094716630997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (n + 1 : ℤ) + (n : ℤ)

end

end A215573.P11320212094716630997

namespace A215573

/-- `(1-∑[∑[n]])%(n+1)+n` -/
def P11320212094716630997.Spec : Prop :=
  ∀ n, P11320212094716630997.a n = A215573 (n + 1)

end A215573

/-! ## A215573.P13074328384353122202

`(A020639(n+1)-A060789(A020639(n+1)))*A060789(n+1)`
-/

namespace A215573.P13074328384353122202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) - A060789 (A020639 (n + 1)).toNat) * A060789 (n + 1)

end

end A215573.P13074328384353122202

namespace A215573

/-- `(A020639(n+1)-A060789(A020639(n+1)))*A060789(n+1)` -/
def P13074328384353122202.Spec : Prop :=
  ∀ n, P13074328384353122202.a n = A215573 (n + 1)

end A215573

/-! ## A215573.P8494602448341310674

`A175676(A187601(n+1))`
-/

namespace A215573.P8494602448341310674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A187601 (n + 1)).toNat

end

end A215573.P8494602448341310674

namespace A215573

/-- `A175676(A187601(n+1))` -/
def P8494602448341310674.Spec : Prop :=
  ∀ n, P8494602448341310674.a n = A215573 (n + 1)

end A215573

/-! ## A215573.P14772428771878922249

`A303776(A303775(∑[(n+3)*(n+1)]%(n+1)))`
-/

namespace A215573.P14772428771878922249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303776 (A303775 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))).toNat

end

end A215573.P14772428771878922249

namespace A215573

/-- `A303776(A303775(∑[(n+3)*(n+1)]%(n+1)))` -/
def P14772428771878922249.Spec : Prop :=
  ∀ n, P14772428771878922249.a n = A215573 (n + 1)

end A215573

/-!
# A215575: a(n) = 7*(a(n-1) - a(n-2) - a(n-3)), with a(0)=3, a(1)=7, a(2)=35.

The programs for A215575, the canonical program `A215575.P4228000788039890090` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215575 has offset 0).

The definition of A215575 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(a(n-1)-a(n-2)-a(n-3))` (program `A215575.P4228000788039890090`, by `A215575.P4228000788039890090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215575.P4228000788039890090

`7*(a(n-1)-a(n-2)-a(n-3))` with `a(0)=3, a(1)=7, a(2)=35`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215575

/-- `7*(a(n-1)-a(n-2)-a(n-3))` -/
def P4228000788039890090.Spec : Prop :=
  ∀ n, P4228000788039890090.a n = A215575 n

theorem P4228000788039890090.correct : P4228000788039890090.Spec := by
  intro n
  simp only [A215575]

end A215575

/-!
# A215576: G.f. satisfies A(x) = (1 + x^2)*(1 + x*A(x)^2).

The programs for A215576, there is no canonical definition to state claims against.
-/

/-! ## A215576.P10068158260373791701

`A337635(A330452(n)+A000984(n))`
-/

namespace A215576.P10068158260373791701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337635 (A330452 n + A000984 n).toNat

end

end A215576.P10068158260373791701

/-! ## A215576.P9620057389948413278

`A023193(A150594(n))`
-/

namespace A215576.P9620057389948413278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A150594 n).toNat

end

end A215576.P9620057389948413278

/-! ## A215576.P675510500664936876

`A084470(A148786(n))`
-/

namespace A215576.P675510500664936876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A148786 n).toNat

end

end A215576.P675510500664936876

/-!
# A215579: Integral averages of three distinct squares.

The programs for A215579, there is no canonical definition to state claims against.
-/

/-! ## A215579.P2543126534985089650

`lt[0, A025436(3*n)]`
-/

namespace A215579.P2543126534985089650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215579.P2543126534985089650

/-! ## A215579.P12629205251829369918

`lt[0, A025442(3*n)]`
-/

namespace A215579.P12629205251829369918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A215579.P12629205251829369918

/-! ## A215579.P18335342686225426658

`eq[1, A220073(a(A025436(3*n)))]` with `a(0)=3`
-/

namespace A215579.P18335342686225426658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A220073 (f2 (A025436 (3 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215579.P18335342686225426658

/-! ## A215579.P5489949128760179454

`eq[A000007(A025442(3*n)), A000038(n)]`
-/

namespace A215579.P5489949128760179454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025442 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215579.P5489949128760179454

/-! ## A215579.P15152628773698216227

`eq[A000007(A025442(3*n)), A169585(n+1)]`
-/

namespace A215579.P15152628773698216227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025442 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215579.P15152628773698216227

/-!
# A215580: Partial sums of A215602.

The programs for A215580, the canonical program `A215580.P15485213879133625661` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215580 has offset 0).

The definition of A215580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A215580.P15485213879133625661

`A005248(n+1)-A000034(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215580

/-- `A005248(n+1)-A000034(n)` -/
def P15485213879133625661.Spec : Prop :=
  ∀ n, P15485213879133625661.a n = A215580 n

theorem P15485213879133625661.correct : P15485213879133625661.Spec := by
  intro n
  simp only [A215580]

end A215580

/-! ## A215580.P17097155616668491250

`ogf((2-x+2x^2)/(1-3x+3x^3-x^4))`
-/

namespace A215580.P17097155616668491250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2] [1, -3, 0, 3, -1] n

end

end A215580.P17097155616668491250

namespace A215580

/-- `ogf((2-x+2x^2)/(1-3x+3x^3-x^4))` -/
def P17097155616668491250.Spec : Prop :=
  ∀ n, P17097155616668491250.a n = A215580 n

end A215580

/-! ## A215580.P11098664833848762325

`∑[∑[(floor((-ϕ)^n)+1)²]-2]`
-/

namespace A215580.P11098664833848762325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(-Real.goldenRatio) ^ n⌋ + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215580.P11098664833848762325

namespace A215580

/-- `∑[∑[(floor((-ϕ)^n)+1)²]-2]` -/
def P11098664833848762325.Spec : Prop :=
  ∀ n, P11098664833848762325.a n = A215580 n

end A215580

/-! ## A215580.P12569676284860867802

`2*∑[A215602(n)/2]`
-/

namespace A215580.P12569676284860867802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215602 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215580.P12569676284860867802

namespace A215580

/-- `2*∑[A215602(n)/2]` -/
def P12569676284860867802.Spec : Prop :=
  ∀ n, P12569676284860867802.a n = (A215580 n : ℚ)

end A215580

/-! ## A215580.P5214576729233551990

`A001610(2*n+1)-and(1, n)`
-/

namespace A215580.P5214576729233551990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n + 1) - (Nat.land 1 n : ℤ)

end

end A215580.P5214576729233551990

namespace A215580

/-- `A001610(2*n+1)-and(1, n)` -/
def P5214576729233551990.Spec : Prop :=
  ∀ n, P5214576729233551990.a n = A215580 n

end A215580

/-! ## A215580.P11060346547163257652

`A020956(2*n+1)+or(1, n)`
-/

namespace A215580.P11060346547163257652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020956 (2 * n + 1) + (Nat.lor 1 n : ℤ)

end

end A215580.P11060346547163257652

namespace A215580

/-- `A020956(2*n+1)+or(1, n)` -/
def P11060346547163257652.Spec : Prop :=
  ∀ n, P11060346547163257652.a n = A215580 n

end A215580

/-! ## A215580.P8737718704382201363

`floor((A000032(n+2)/ϕ)²)-1`
-/

namespace A215580.P8737718704382201363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (n + 2) : ℝ) / Real.goldenRatio) ^ 2⌋ - 1

end

end A215580.P8737718704382201363

namespace A215580

/-- `floor((A000032(n+2)/ϕ)²)-1` -/
def P8737718704382201363.Spec : Prop :=
  ∀ n, P8737718704382201363.a n = A215580 n

end A215580

/-! ## A215580.P10824334363292523580

`A000032(2*(n+1))-(n%2+1)`
-/

namespace A215580.P10824334363292523580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * (n + 1)) - ((n % 2 + 1 : ℕ) : ℤ)

end

end A215580.P10824334363292523580

namespace A215580

/-- `A000032(2*(n+1))-(n%2+1)` -/
def P10824334363292523580.Spec : Prop :=
  ∀ n, P10824334363292523580.a n = A215580 n

theorem P10824334363292523580.correct : P10824334363292523580.Spec := by
  intro n
  simp only [A215580, Nat.add_sub_cancel, A215580.P10824334363292523580.a, A215580.P15485213879133625661.a, A000032, A000032.P8352177345629330861.a, A000034, A000034.P10773112074177680709.a, A005248, A005248.P3255906601217542815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215580

/-! ## A215580.P6618073468691359566

`a(n-2)+5*A000045(2*n)` with `a(0)=2, a(1)=5`
-/

namespace A215580.P6618073468691359566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + 5 * A000045 (2 * n)

end

end A215580.P6618073468691359566

namespace A215580

/-- `a(n-2)+5*A000045(2*n)` -/
def P6618073468691359566.Spec : Prop :=
  ∀ n, P6618073468691359566.a n = A215580 n

end A215580

/-! ## A215580.P2242108806339633026

`∑[A000032(2*n+1)]+and(1, n+1)`
-/

namespace A215580.P2242108806339633026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 (n + 1) : ℤ)

end

end A215580.P2242108806339633026

namespace A215580

/-- `∑[A000032(2*n+1)]+and(1, n+1)` -/
def P2242108806339633026.Spec : Prop :=
  ∀ n, P2242108806339633026.a n = A215580 n

end A215580

/-! ## A215580.P6629545683256487527

`A200408(n)+A010685(n)`
-/

namespace A215580.P6629545683256487527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200408 n + A010685 n

end

end A215580.P6629545683256487527

namespace A215580

/-- `A200408(n)+A010685(n)` -/
def P6629545683256487527.Spec : Prop :=
  ∀ n, P6629545683256487527.a n = A215580 n

end A215580

/-! ## A215580.P1060233496913812342

`A242300(n)+A001610(n+1)`
-/

namespace A215580.P1060233496913812342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242300 n + A001610 (n + 1)

end

end A215580.P1060233496913812342

namespace A215580

/-- `A242300(n)+A001610(n+1)` -/
def P1060233496913812342.Spec : Prop :=
  ∀ n, P1060233496913812342.a n = A215580 n

end A215580

/-! ## A215580.P10875778234941020106

`A005592(n+1)-A000035(n)`
-/

namespace A215580.P10875778234941020106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (n + 1) - A000035 n

end

end A215580.P10875778234941020106

namespace A215580

/-- `A005592(n+1)-A000035(n)` -/
def P10875778234941020106.Spec : Prop :=
  ∀ n, P10875778234941020106.a n = A215580 n

theorem P10875778234941020106.correct : P10875778234941020106.Spec := by
  intro n
  simp only [A215580, Nat.add_sub_cancel, A215580.P10875778234941020106.a, A215580.P15485213879133625661.a, A000034, A000034.P10773112074177680709.a, A000035, A000035.P2023072528413494694.a, A005248, A005248.P3255906601217542815.a, A005592, A005592.P14150685278040946245.a, A000032, A000032.P8352177345629330861.a, A004146, A004146.P7346826017881566823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A215580

/-! ## A215580.P10736480234967816822

`A366508(n+1)-A010676(n)`
-/

namespace A215580.P10736480234967816822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366508 (n + 1) - A010676 n

end

end A215580.P10736480234967816822

namespace A215580

/-- `A366508(n+1)-A010676(n)` -/
def P10736480234967816822.Spec : Prop :=
  ∀ n, P10736480234967816822.a n = A215580 n

end A215580

/-! ## A215580.P2289705368884160060

`∑[A093960(n+2)]-A000035(n)`
-/

namespace A215580.P2289705368884160060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093960 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 n

end

end A215580.P2289705368884160060

namespace A215580

/-- `∑[A093960(n+2)]-A000035(n)` -/
def P2289705368884160060.Spec : Prop :=
  ∀ n, P2289705368884160060.a n = A215580 n

end A215580

/-! ## A215580.P7701063918247883614

`A004146(n+1)+A000035(n+1)`
-/

namespace A215580.P7701063918247883614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004146 (n + 1) + A000035 (n + 1)

end

end A215580.P7701063918247883614

namespace A215580

/-- `A004146(n+1)+A000035(n+1)` -/
def P7701063918247883614.Spec : Prop :=
  ∀ n, P7701063918247883614.a n = A215580 n

end A215580

/-! ## A215580.P13547574964468004167

`A294152(n+1)+A042964(n+1)`
-/

namespace A215580.P13547574964468004167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294152 (n + 1) + A042964 (n + 1)

end

end A215580.P13547574964468004167

namespace A215580

/-- `A294152(n+1)+A042964(n+1)` -/
def P13547574964468004167.Spec : Prop :=
  ∀ n, P13547574964468004167.a n = A215580 n

end A215580

/-! ## A215580.P13883567354488511177

`A327767(n+1)+A173661(n+1)`
-/

namespace A215580.P13883567354488511177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327767 (n + 1) + A173661 (n + 1)

end

end A215580.P13883567354488511177

namespace A215580

/-- `A327767(n+1)+A173661(n+1)` -/
def P13883567354488511177.Spec : Prop :=
  ∀ n, P13883567354488511177.a n = A215580 n

end A215580

/-! ## A215580.P3230151702467055709

`A001610(2*n+1)-A000035(n)`
-/

namespace A215580.P3230151702467055709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (2 * n + 1) - A000035 n

end

end A215580.P3230151702467055709

namespace A215580

/-- `A001610(2*n+1)-A000035(n)` -/
def P3230151702467055709.Spec : Prop :=
  ∀ n, P3230151702467055709.a n = A215580 n

end A215580

/-!
# A215581: The limit of the string "0, 1" under the operation 'append last k terms, append first k terms, increment k' with k=1 initially.

The programs for A215581, there is no canonical definition to state claims against.
-/

/-! ## A215581.P1508953370477831205

`A253513(A051435(n)*A101808(n))`
-/

namespace A215581.P1508953370477831205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 (A051435 n * A101808 n).toNat

end

end A215581.P1508953370477831205

/-! ## A215581.P4900913097414600575

`A079978(and(A057078(n), A322436(3*n+4)))`
-/

namespace A215581.P4900913097414600575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (Int.land (A057078 n) (A322436 (3 * n + 4))).toNat

end

end A215581.P4900913097414600575

/-! ## A215581.P9270742691455805432

`A276950(n+3)*A286055(A134808(3*n+5))`
-/

namespace A215581.P9270742691455805432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (n + 3) * A286055 (A134808 (3 * n + 5)).toNat

end

end A215581.P9270742691455805432

/-! ## A215581.P4534798252890771308

`A010060(lt[A321436(n+4), A094840(3*n+4)])`
-/

namespace A215581.P4534798252890771308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321436 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094840 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A215581.P4534798252890771308

/-! ## A215581.P6707974128036350304

`A068431(A068427(n+1)+A037166(n+1))`
-/

namespace A215581.P6707974128036350304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068431 (A068427 (n + 1) + A037166 (n + 1)).toNat

end

end A215581.P6707974128036350304

/-!
# A215583: n-th derivative of cosh(x)^sin(x) at x=0.

The programs for A215583, there is no canonical definition to state claims against.
-/

/-! ## A215583.P2020295541673957214

`A110503(A245377(n))*A215678(n)`
-/

namespace A215583.P2020295541673957214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110503 (A245377 n).toNat * A215678 n

end

end A215583.P2020295541673957214

/-!
# A215584: 2n-th derivative of cosh(x)^cos(x) at x=0.

The programs for A215584, there is no canonical definition to state claims against.
-/

/-! ## A215584.P134382695813725603

`(-1)^n*A215517(n)`
-/

namespace A215584.P134382695813725603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215517 n

end

end A215584.P134382695813725603

/-! ## A215584.P12684341185155327039

`A215517(n)/A033999(n)`
-/

namespace A215584.P12684341185155327039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215517 n : ℚ) / (A033999 n : ℚ)

end

end A215584.P12684341185155327039

/-! ## A215584.P12597250454648775747

`A215517(n)/A108561(A000096(n))`
-/

namespace A215584.P12597250454648775747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215517 n : ℚ) / (A108561 (A000096 n).toNat : ℚ)

end

end A215584.P12597250454648775747

/-! ## A215584.P13818216313124773092

`A215517(n)/A054354(A054353(n+1))`
-/

namespace A215584.P13818216313124773092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215517 n : ℚ) / (A054354 (A054353 (n + 1)).toNat : ℚ)

end

end A215584.P13818216313124773092

/-! ## A215584.P1975588358468367931

`A215517(n)/A101455(A166526(n+1))`
-/

namespace A215584.P1975588358468367931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215517 n : ℚ) / (A101455 (A166526 (n + 1)).toNat : ℚ)

end

end A215584.P1975588358468367931

/-!
# A215585: n-th derivative of cos(x)^tanh(x) at x=0.

The programs for A215585, there is no canonical definition to state claims against.
-/

/-! ## A215585.P13711992115673937135

`A033999(n)*A215682(n)`
-/

namespace A215585.P13711992115673937135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215682 n

end

end A215585.P13711992115673937135

/-! ## A215585.P94260537939797751

`A056594(2*n)*A215682(n)`
-/

namespace A215585.P94260537939797751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A215682 n

end

end A215585.P94260537939797751

/-! ## A215585.P1208913864471333059

`-(A215682(n)/A033999(n+1))`
-/

namespace A215585.P1208913864471333059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A215682 n : ℚ) / (A033999 (n + 1) : ℚ))

end

end A215585.P1208913864471333059

/-! ## A215585.P14614671682575808742

`A034947(n²+5)*A215682(n)`
-/

namespace A215585.P14614671682575808742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n ^ 2 + 5) * A215682 n

end

end A215585.P14614671682575808742

/-! ## A215585.P957288290494100151

`A215682(n)/A033999(A005811(n))`
-/

namespace A215585.P957288290494100151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215682 n : ℚ) / (A033999 (A005811 n).toNat : ℚ)

end

end A215585.P957288290494100151

/-!
# A215586: n-th derivative of cos(x)^tan(x) at x=0.

The programs for A215586, there is no canonical definition to state claims against.
-/

/-! ## A215586.P6067901699661751198

`A033999(n)*A215680(n)`
-/

namespace A215586.P6067901699661751198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215680 n

end

end A215586.P6067901699661751198

/-! ## A215586.P7979885889996550382

`A009001(2*n)*A215680(n)`
-/

namespace A215586.P7979885889996550382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A215680 n

end

end A215586.P7979885889996550382

/-! ## A215586.P15214135354857600633

`A215680(n)/A009001(A005843(n))`
-/

namespace A215586.P15214135354857600633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215680 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A215586.P15214135354857600633

/-! ## A215586.P14599143733210232641

`A215680(n)/A009001(A008588(n))`
-/

namespace A215586.P14599143733210232641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215680 n : ℚ) / (A009001 (A008588 n).toNat : ℚ)

end

end A215586.P14599143733210232641

/-! ## A215586.P13310654679675482715

`A215680(n)/A009001(A008600(n))`
-/

namespace A215586.P13310654679675482715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215680 n : ℚ) / (A009001 (A008600 n).toNat : ℚ)

end

end A215586.P13310654679675482715

/-!
# A215587: n-th derivative of cosh(x)^tan(x) at x=0.

The programs for A215587, there is no canonical definition to state claims against.
-/

/-! ## A215587.P17931351125630723549

`abs(A215681(n))`
-/

namespace A215587.P17931351125630723549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215681 n|

end

end A215587.P17931351125630723549

/-! ## A215587.P8667800855354406505

`A033999(n)*A215681(n)`
-/

namespace A215587.P8667800855354406505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215681 n

end

end A215587.P8667800855354406505

/-! ## A215587.P11997958492089052236

`gcd(A000038(n), A215681(n))`
-/

namespace A215587.P11997958492089052236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215681 n)

end

end A215587.P11997958492089052236

/-! ## A215587.P3127548026601638819

`lcm(A020513(n), A215681(n))`
-/

namespace A215587.P3127548026601638819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020513 n) (A215681 n)

end

end A215587.P3127548026601638819

/-! ## A215587.P11441108380551419643

`lcm(-A215681(n), A124758(n))`
-/

namespace A215587.P11441108380551419643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A215681 n) (A124758 n)

end

end A215587.P11441108380551419643

/-!
# A215588: n-th derivative of cosh(x)^tanh(x) at x=0.

The programs for A215588, there is no canonical definition to state claims against.
-/

/-! ## A215588.P3660469052382260570

`A033999(n)*A215683(n)`
-/

namespace A215588.P3660469052382260570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A215683 n

end

end A215588.P3660469052382260570

/-! ## A215588.P1053366779516057719

`A009001(2*n)*A215683(n)`
-/

namespace A215588.P1053366779516057719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A215683 n

end

end A215588.P1053366779516057719

/-! ## A215588.P16828569048707340975

`A215683(n)/A009001(A005843(n))`
-/

namespace A215588.P16828569048707340975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215683 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A215588.P16828569048707340975

/-! ## A215588.P4800922177647220735

`A215683(n)/A009001(A008588(n))`
-/

namespace A215588.P4800922177647220735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215683 n : ℚ) / (A009001 (A008588 n).toNat : ℚ)

end

end A215588.P4800922177647220735

/-! ## A215588.P18049541340219421419

`A215683(n)/A009001(A008600(n))`
-/

namespace A215588.P18049541340219421419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215683 n : ℚ) / (A009001 (A008600 n).toNat : ℚ)

end

end A215588.P18049541340219421419

/-!
# A215589: Value of x in the n-th number of the form x+y*(1+sqrt(2)).

The programs for A215589, there is no canonical definition to state claims against.
-/

/-! ## A215589.P3777266009318937205

`A023127(n+1)-A000034(∑[4*n])`
-/

namespace A215589.P3777266009318937205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023127 (n + 1) - A000034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215589.P3777266009318937205

/-! ## A215589.P4599950895350705845

`A033999(A001844(n))+A023127(n+1)`
-/

namespace A215589.P4599950895350705845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001844 n).toNat + A023127 (n + 1)

end

end A215589.P4599950895350705845

/-! ## A215589.P730939596093221141

`A023127(n+1)-A010054(A000384(n))`
-/

namespace A215589.P730939596093221141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023127 (n + 1) - A010054 (A000384 n).toNat

end

end A215589.P730939596093221141

/-! ## A215589.P9269740739943215211

`A023127(n+1)-A002828(A016754(n))`
-/

namespace A215589.P9269740739943215211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023127 (n + 1) - A002828 (A016754 n).toNat

end

end A215589.P9269740739943215211

/-! ## A215589.P5760261922969520694

`A023127(n+1)-A007318(A014105(n))`
-/

namespace A215589.P5760261922969520694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023127 (n + 1) - A007318 (A014105 n).toNat

end

end A215589.P5760261922969520694

/-! ## A215589.P1742257912163431102

`A023127(n+1)-A007318(A014494(n))`
-/

namespace A215589.P1742257912163431102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023127 (n + 1) - A007318 (A014494 n).toNat

end

end A215589.P1742257912163431102

/-! ## A215589.P14041513409397614790

`A001222(2^A023127(n+1))-1`
-/

namespace A215589.P14041513409397614790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023127 (n + 1) : ℤ))).toNat - 1

end

end A215589.P14041513409397614790

/-! ## A215589.P16213432835685978765

`A000005(2^A023127(n+1))-2`
-/

namespace A215589.P16213432835685978765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023127 (n + 1) : ℤ))).toNat - 2

end

end A215589.P16213432835685978765

/-! ## A215589.P2458512324930698547

`A001222(A000010(2^A023127(n+1)))`
-/

namespace A215589.P2458512324930698547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A023127 (n + 1) : ℤ))).toNat).toNat

end

end A215589.P2458512324930698547

/-!
# A215590: Value of y in the n-th number of the form x+y*(1+sqrt(2)).

The programs for A215590, there is no canonical definition to state claims against.
-/

/-! ## A215590.P13655792210247692684

`A023128(n+1)-A000034(∑[4*n])`
-/

namespace A215590.P13655792210247692684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A000034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215590.P13655792210247692684

/-! ## A215590.P1909148552492798957

`A023128(n+1)-A055231(record[xor(1, n)²])`
-/

namespace A215590.P1909148552492798957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A055231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A215590.P1909148552492798957

/-! ## A215590.P8897575834187189709

`A023128(n+1)-A001511(∑[4*n]+1)`
-/

namespace A215590.P8897575834187189709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A001511 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215590.P8897575834187189709

/-! ## A215590.P4065204411582027961

`A023128(n+1)-A082052(∑[4*n]+1)-1`
-/

namespace A215590.P4065204411582027961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A082052 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A215590.P4065204411582027961

/-! ## A215590.P4843846774626362641

`A033999(A001844(n))+A023128(n+1)`
-/

namespace A215590.P4843846774626362641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001844 n).toNat + A023128 (n + 1)

end

end A215590.P4843846774626362641

/-! ## A215590.P6585614883456293048

`A033999(A058331(n))+A023128(n+1)`
-/

namespace A215590.P6585614883456293048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A058331 n).toNat + A023128 (n + 1)

end

end A215590.P6585614883456293048

/-! ## A215590.P18248926274269672876

`A023128(n+1)-A010054(A000384(n))`
-/

namespace A215590.P18248926274269672876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A010054 (A000384 n).toNat

end

end A215590.P18248926274269672876

/-! ## A215590.P2500936671121908717

`A023128(n+1)-A002828(A016754(n))`
-/

namespace A215590.P2500936671121908717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A002828 (A016754 n).toNat

end

end A215590.P2500936671121908717

/-! ## A215590.P15962500996319505319

`A023128(n+1)-A010054(A014105(n))`
-/

namespace A215590.P15962500996319505319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A010054 (A014105 n).toNat

end

end A215590.P15962500996319505319

/-! ## A215590.P7071879331737386901

`A023128(n+1)-A056926(A008778(n))`
-/

namespace A215590.P7071879331737386901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1) - A056926 (A008778 n).toNat

end

end A215590.P7071879331737386901

/-!
# A215593: 

The programs for A215593, there is no canonical definition to state claims against.
-/

/-! ## A215593.P16488651880237696693

`A215561(eq[7, A002262(n)])`
-/

namespace A215593.P16488651880237696693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215593.P16488651880237696693

/-! ## A215593.P3541788194746462012

`A215561(eq[8, A002260(n+1)])`
-/

namespace A215593.P3541788194746462012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215593.P3541788194746462012

/-!
# A215596: Expansion of psi(-x) * f(-x^4)^3 in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A215596, there is no canonical definition to state claims against.
-/

/-! ## A215596.P9842383461382926911

`-(A215597(2*n+1)/4)`
-/

namespace A215596.P9842383461382926911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A215597 (2 * n + 1) : ℚ) / 4)

end

end A215596.P9842383461382926911

/-! ## A215596.P10691688164797415958

`A215597(2*n+1)/A215597(A114567(2*n))`
-/

namespace A215596.P10691688164797415958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (2 * n + 1) : ℚ) / (A215597 (A114567 (2 * n)).toNat : ℚ)

end

end A215596.P10691688164797415958

/-! ## A215596.P9346555946360966354

`A215597(2*n+1)/A215597(A001511(2*n+1))`
-/

namespace A215596.P9346555946360966354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (2 * n + 1) : ℚ) / (A215597 (A001511 (2 * n + 1)).toNat : ℚ)

end

end A215596.P9346555946360966354

/-! ## A215596.P10604377006237808790

`A215597(2*n+1)/A215597(A003484(2*n+1))`
-/

namespace A215596.P10604377006237808790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (2 * n + 1) : ℚ) / (A215597 (A003484 (2 * n + 1)).toNat : ℚ)

end

end A215596.P10604377006237808790

/-!
# A215598: Expansion of phi(-x^2) * f(x)^3 in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A215598, there is no canonical definition to state claims against.
-/

/-! ## A215598.P15734774961440393779

`A215597(2*n)`
-/

namespace A215598.P15734774961440393779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215597 (2 * n)

end

end A215598.P15734774961440393779

/-! ## A215598.P8396607373867436361

`or(A010054(n), A215597(n+n))`
-/

namespace A215598.P8396607373867436361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A215597 (n + n))

end

end A215598.P8396607373867436361

/-! ## A215598.P5651879084200132139

`A215597(A005843(n))%(n+2)²`
-/

namespace A215598.P5651879084200132139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215597 (A005843 n).toNat) ((n + 2) ^ 2 : ℤ)

end

end A215598.P5651879084200132139

/-! ## A215598.P5289594306102646337

`A215597(A005843(n))/A178334(A002024(n+1))`
-/

namespace A215598.P5289594306102646337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (A005843 n).toNat : ℚ) / (A178334 (A002024 (n + 1)).toNat : ℚ)

end

end A215598.P5289594306102646337

/-! ## A215598.P16368170605411159735

`A215597(A005843(n))/A178334(A003484(n+1))`
-/

namespace A215598.P16368170605411159735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (A005843 n).toNat : ℚ) / (A178334 (A003484 (n + 1)).toNat : ℚ)

end

end A215598.P16368170605411159735

/-! ## A215598.P10354914441270710393

`A215597(A005843(n))/A008683(A001097(n+1))²`
-/

namespace A215598.P10354914441270710393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (A005843 n).toNat : ℚ) / (A008683 (A001097 (n + 1)).toNat ^ 2 : ℚ)

end

end A215598.P10354914441270710393

/-! ## A215598.P14873922661189304430

`A215597(n+n)+A000122(A000040(n+1))`
-/

namespace A215598.P14873922661189304430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215597 (n + n) + A000122 (A000040 (n + 1)).toNat

end

end A215598.P14873922661189304430

/-! ## A215598.P12158237419924420753

`A215597(A005843(n))/A003484(A017653(n))`
-/

namespace A215598.P12158237419924420753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (A005843 n).toNat : ℚ) / (A003484 (A017653 n).toNat : ℚ)

end

end A215598.P12158237419924420753

/-! ## A215598.P4360644752408052812

`A215597(A005843(n))/A001221(A001248(n+1))`
-/

namespace A215598.P4360644752408052812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215597 (A005843 n).toNat : ℚ) / (A001221 (A001248 (n + 1)).toNat : ℚ)

end

end A215598.P4360644752408052812

