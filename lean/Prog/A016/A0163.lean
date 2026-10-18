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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B010.C000
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
# A016300: Inverse of 2291st cyclotomic polynomial.

The programs for A016300, there is no canonical definition to state claims against.
-/

/-! ## A016300.P18309181955374538804

`A010055(∑[val(n+1, 10)]!)`
-/

namespace A016300.P18309181955374538804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016300.P18309181955374538804

/-! ## A016300.P8890885307054077974

`A010060(∑[val(n+1, 10)]!)`
-/

namespace A016300.P8890885307054077974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016300.P8890885307054077974

/-! ## A016300.P17140911704165028924

`A010060(∑[A102683(n)]!)`
-/

namespace A016300.P17140911704165028924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A016300.P17140911704165028924

/-! ## A016300.P9251660566047682187

`A010060(A054899(n+1)!)`
-/

namespace A016300.P9251660566047682187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (A054899 (n + 1)).toNat)

end

end A016300.P9251660566047682187

/-! ## A016300.P11775044167636741314

`A287341(A054899(n+1)!)`
-/

namespace A016300.P11775044167636741314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287341 (Nat.factorial (A054899 (n + 1)).toNat)

end

end A016300.P11775044167636741314

/-! ## A016300.P5443923887199537326

`1-A135661(A087739(n+1))`
-/

namespace A016300.P5443923887199537326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A135661 (A087739 (n + 1)).toNat

end

end A016300.P5443923887199537326

/-! ## A016300.P11550729735084904791

`A014256(A113730(n+1)+3)`
-/

namespace A016300.P11550729735084904791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014256 (A113730 (n + 1) + 3).toNat

end

end A016300.P11550729735084904791

/-! ## A016300.P12078915638889068925

`A010060(∑[A122840(n+1)]!)`
-/

namespace A016300.P12078915638889068925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A016300.P12078915638889068925

/-! ## A016300.P9290728473057350667

`A257799(∑[A122840(n+1)]!)`
-/

namespace A016300.P9290728473057350667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257799 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A016300.P9290728473057350667

/-! ## A016300.P1593270155248836001

`A351653(A087739(n+1))^A006352(n)`
-/

namespace A016300.P1593270155248836001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351653 (A087739 (n + 1)).toNat : ℚ) ^ (A006352 n : ℤ)

end

end A016300.P1593270155248836001

/-!
# A016301: Expansion of 1/((1-2*x)*(1-5*x)*(1-11*x)).

The programs for A016301, the canonical program `A016301.P10550401529754801326` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016301 has offset 0).

The definition of A016301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016301.P10550401529754801326

`16*a(n-1)-55*a(n-2)+2^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016301

/-- `16*a(n-1)-55*a(n-2)+2^n` -/
def P10550401529754801326.Spec : Prop :=
  ∀ n, P10550401529754801326.a n = A016301 n

theorem P10550401529754801326.correct : P10550401529754801326.Spec := by
  intro n
  simp only [A016301]

end A016301

/-! ## A016301.P11259608211298061388

`1/54*(2*2^(2+n)-3*5^(2+n)+11^(2+n))`
-/

namespace A016301.P11259608211298061388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 54 * ((2 * 2 ^ (2 + n) : ℤ) - (3 * 5 ^ (2 + n) : ℤ) + (11 ^ (2 + n) : ℤ) : ℚ)

end

end A016301.P11259608211298061388

namespace A016301

/-- `1/54*(2*2^(2+n)-3*5^(2+n)+11^(2+n))` -/
def P11259608211298061388.Spec : Prop :=
  ∀ n, P11259608211298061388.a n = (A016301 n : ℚ)

theorem P11259608211298061388.correct : P11259608211298061388.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016301, Nat.add_sub_cancel, A016301.P11259608211298061388.a, A016301.P10550401529754801326.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016301, Nat.add_sub_cancel, A016301.P11259608211298061388.a, A016301.P10550401529754801326.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016301

/-! ## A016301.P3905642120158026501

`a(n-1)+A016165(n)+a(n-1)` with `a(0)=1`
-/

namespace A016301.P3905642120158026501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016165 n + a (n - 1))

end

end A016301.P3905642120158026501

namespace A016301

/-- `a(n-1)+A016165(n)+a(n-1)` -/
def P3905642120158026501.Spec : Prop :=
  ∀ n, P3905642120158026501.a n = A016301 n

end A016301

/-! ## A016301.P4814387740980553777

`A139740(n+1)/9+5*a(n-1)` with `a(0)=1`
-/

namespace A016301.P4814387740980553777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A139740 (n + 1) : ℚ) / 9 + 5 * a (n - 1)

end

end A016301.P4814387740980553777

namespace A016301

/-- `A139740(n+1)/9+5*a(n-1)` -/
def P4814387740980553777.Spec : Prop :=
  ∀ n, P4814387740980553777.a n = (A016301 n : ℚ)

end A016301

/-! ## A016301.P14968825754417533702

`(A016318(n)+A016297(n))/2`
-/

namespace A016301.P14968825754417533702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016318 n + A016297 n : ℚ) / 2

end

end A016301.P14968825754417533702

namespace A016301

/-- `(A016318(n)+A016297(n))/2` -/
def P14968825754417533702.Spec : Prop :=
  ∀ n, P14968825754417533702.a n = (A016301 n : ℚ)

end A016301

/-! ## A016301.P5663621630957130120

`2*A016325(n)-A026149(n)`
-/

namespace A016301.P5663621630957130120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016325 n - A026149 n

end

end A016301.P5663621630957130120

namespace A016301

/-- `2*A016325(n)-A026149(n)` -/
def P5663621630957130120.Spec : Prop :=
  ∀ n, P5663621630957130120.a n = A016301 n

end A016301

/-!
# A016302: Expansion of 1/((1-2*x)*(1-5*x)*(1-12*x)).

The programs for A016302, the canonical program `A016302.P8247051256577967858` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016302 has offset 0).

The definition of A016302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016302.P8247051256577967858

`17*a(n-1)-60*a(n-2)+2^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016302

/-- `17*a(n-1)-60*a(n-2)+2^n` -/
def P8247051256577967858.Spec : Prop :=
  ∀ n, P8247051256577967858.a n = A016302 n

theorem P8247051256577967858.correct : P8247051256577967858.Spec := by
  intro n
  simp only [A016302]

end A016302

/-! ## A016302.P16429961741936857086

`(14*2^n-125*5^n+216*12^n)/105`
-/

namespace A016302.P16429961741936857086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((14 * 2 ^ n : ℤ) - (125 * 5 ^ n : ℤ) + (216 * 12 ^ n : ℤ) : ℚ) / 105

end

end A016302.P16429961741936857086

namespace A016302

/-- `(14*2^n-125*5^n+216*12^n)/105` -/
def P16429961741936857086.Spec : Prop :=
  ∀ n, P16429961741936857086.a n = (A016302 n : ℚ)

theorem P16429961741936857086.correct : P16429961741936857086.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016302, Nat.add_sub_cancel, A016302.P16429961741936857086.a, A016302.P8247051256577967858.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016302, Nat.add_sub_cancel, A016302.P16429961741936857086.a, A016302.P8247051256577967858.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016302

/-! ## A016302.P2738400139476510130

`A016166(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016302.P2738400139476510130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016166 n + 2 * a (n - 1)

end

end A016302.P2738400139476510130

namespace A016302

/-- `A016166(n)+2*a(n-1)` -/
def P2738400139476510130.Spec : Prop :=
  ∀ n, P2738400139476510130.a n = A016302 n

end A016302

/-! ## A016302.P5742137111313615879

`2*A019041(n)-A025964(n)`
-/

namespace A016302.P5742137111313615879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019041 n - A025964 n

end

end A016302.P5742137111313615879

namespace A016302

/-- `2*A019041(n)-A025964(n)` -/
def P5742137111313615879.Spec : Prop :=
  ∀ n, P5742137111313615879.a n = A016302 n

end A016302

/-! ## A016302.P14094671248881029692

`A016320(n)+A016320(n)-A020448(n)`
-/

namespace A016302.P14094671248881029692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016320 n + (A016320 n - A020448 n)

end

end A016302.P14094671248881029692

namespace A016302

/-- `A016320(n)+A016320(n)-A020448(n)` -/
def P14094671248881029692.Spec : Prop :=
  ∀ n, P14094671248881029692.a n = A016302 n

end A016302

/-! ## A016302.P1661166727365886865

`2*A016320(n)-A020448(n)`
-/

namespace A016302.P1661166727365886865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016320 n - A020448 n

end

end A016302.P1661166727365886865

namespace A016302

/-- `2*A016320(n)-A020448(n)` -/
def P1661166727365886865.Spec : Prop :=
  ∀ n, P1661166727365886865.a n = A016302 n

end A016302

/-!
# A016303: Inverse of 2294th cyclotomic polynomial.

The programs for A016303, there is no canonical definition to state claims against.
-/

/-! ## A016303.P7745959734382946626

`A015156(n)*A033999(n)`
-/

namespace A016303.P7745959734382946626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015156 n * A033999 n

end

end A016303.P7745959734382946626

/-! ## A016303.P4769690883952962275

`A015343(A190582(n+1))`
-/

namespace A016303.P4769690883952962275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A190582 (n + 1)).toNat

end

end A016303.P4769690883952962275

/-! ## A016303.P6145825422878655500

`A014655(A330239(n+2))`
-/

namespace A016303.P6145825422878655500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014655 (A330239 (n + 2)).toNat

end

end A016303.P6145825422878655500

/-! ## A016303.P4375823023747590292

`Δ[gcd(2, A141213(n))]`
-/

namespace A016303.P4375823023747590292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A141213 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016303.P4375823023747590292

/-! ## A016303.P6358467434950584400

`val(A073051(3*n+4), A000203(3*n+2))-a(n-1)` with `a(0)=1`
-/

namespace A016303.P6358467434950584400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (A073051 (3 * n + 4)).toNat (A000203 (3 * n + 2)).toNat : ℤ) - a (n - 1)

end

end A016303.P6358467434950584400

/-!
# A016304: Expansion of 1/((1-2*x)*(1-6*x)*(1-7*x)).

The programs for A016304, the canonical program `A016304.P17050932384313392448` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016304 has offset 0).

The definition of A016304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-15x+68x^2-84x^3))` (program `A016304.P17050932384313392448`, by `A016304.P17050932384313392448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016304.P17050932384313392448

`ogf(1/(1-15x+68x^2-84x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016304

/-- `ogf(1/(1-15x+68x^2-84x^3))` -/
def P17050932384313392448.Spec : Prop :=
  ∀ n, P17050932384313392448.a n = A016304 n

theorem P17050932384313392448.correct : P17050932384313392448.Spec := by
  intro n
  simp only [A016304]

end A016304

/-! ## A016304.P10170906800139425438

`13*a(n-1)-42*a(n-2)+2^n` with `a(0)=1, a(1)=15`
-/

namespace A016304.P10170906800139425438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  13 * a (n - 1) - 42 * a (n - 2) + (2 ^ n : ℤ)

end

end A016304.P10170906800139425438

namespace A016304

/-- `13*a(n-1)-42*a(n-2)+2^n` -/
def P10170906800139425438.Spec : Prop :=
  ∀ n, P10170906800139425438.a n = A016304 n

end A016304

/-! ## A016304.P2309259482208242817

`(7^(n+2)-2^(n+2))/5-(6^(n+2)-2^(n+2))/4`
-/

namespace A016304.P2309259482208242817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) : ℤ) - (2 ^ (n + 2) : ℤ) : ℚ) / 5 - ((6 ^ (n + 2) : ℤ) - (2 ^ (n + 2) : ℤ) : ℚ) / 4

end

end A016304.P2309259482208242817

namespace A016304

/-- `(7^(n+2)-2^(n+2))/5-(6^(n+2)-2^(n+2))/4` -/
def P2309259482208242817.Spec : Prop :=
  ∀ n, P2309259482208242817.a n = (A016304 n : ℚ)

end A016304

/-! ## A016304.P15054979088398399706

`Δ[A016201(n)-A016200(n)]`
-/

namespace A016304.P15054979088398399706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016201 n - A016200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016304.P15054979088398399706

namespace A016304

/-- `Δ[A016201(n)-A016200(n)]` -/
def P15054979088398399706.Spec : Prop :=
  ∀ n, P15054979088398399706.a n = A016304 n

end A016304

/-!
# A016305: Expansion of 1/((1-2*x)*(1-6*x)*(1-8*x)).

The programs for A016305, the canonical program `A016305.P3694826121651103929` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016305 has offset 0).

The definition of A016305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-16x+76x^2-96x^3))` (program `A016305.P3694826121651103929`, by `A016305.P3694826121651103929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A016305.P3694826121651103929

`ogf(1/(1-16x+76x^2-96x^3))`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016305

/-- `ogf(1/(1-16x+76x^2-96x^3))` -/
def P3694826121651103929.Spec : Prop :=
  ∀ n, P3694826121651103929.a n = A016305 n

theorem P3694826121651103929.correct : P3694826121651103929.Spec := by
  intro n
  simp only [A016305]

end A016305

/-! ## A016305.P116904924529611725

`14*a(n-1)-48*a(n-2)+2^n` with `a(0)=1, a(1)=16`
-/

namespace A016305.P116904924529611725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n a =>
  14 * a (n - 1) - 48 * a (n - 2) + (2 ^ n : ℤ)

end

end A016305.P116904924529611725

namespace A016305

/-- `14*a(n-1)-48*a(n-2)+2^n` -/
def P116904924529611725.Spec : Prop :=
  ∀ n, P116904924529611725.a n = A016305 n

end A016305

/-! ## A016305.P14490693646462767922

`2^(n-1)*(2^(2*n+5)-3^(n+3)+1)/3`
-/

namespace A016305.P14490693646462767922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (((2 ^ (2 * n + 5) : ℤ) - (3 ^ (n + 3) : ℤ) + 1 : ℚ) / 3)

end

end A016305.P14490693646462767922

namespace A016305

/-- `2^(n-1)*(2^(2*n+5)-3^(n+3)+1)/3` -/
def P14490693646462767922.Spec : Prop :=
  ∀ n, P14490693646462767922.a n = (A016305 n : ℚ)

end A016305

/-! ## A016305.P1988622724346723290

`A016129(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A016305.P1988622724346723290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016129 n + 8 * a (n - 1)

end

end A016305.P1988622724346723290

namespace A016305

/-- `A016129(n)+8*a(n-1)` -/
def P1988622724346723290.Spec : Prop :=
  ∀ n, P1988622724346723290.a n = A016305 n

end A016305

/-! ## A016305.P16061815890866841283

`A081201(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A016305.P16061815890866841283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081201 (n + 1) + 2 * a (n - 1)

end

end A016305.P16061815890866841283

namespace A016305

/-- `A081201(n+1)+2*a(n-1)` -/
def P16061815890866841283.Spec : Prop :=
  ∀ n, P16061815890866841283.a n = A016305 n

end A016305

/-! ## A016305.P6406992631453266971

`a(n-1)+A016170(n)+a(n-1)` with `a(0)=1`
-/

namespace A016305.P6406992631453266971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016170 n + a (n - 1))

end

end A016305.P6406992631453266971

namespace A016305

/-- `a(n-1)+A016170(n)+a(n-1)` -/
def P6406992631453266971.Spec : Prop :=
  ∀ n, P6406992631453266971.a n = A016305 n

end A016305

/-! ## A016305.P5755668666305511327

`(A016311(n)+A016304(n))/2`
-/

namespace A016305.P5755668666305511327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016311 n + A016304 n : ℚ) / 2

end

end A016305.P5755668666305511327

namespace A016305

/-- `(A016311(n)+A016304(n))/2` -/
def P5755668666305511327.Spec : Prop :=
  ∀ n, P5755668666305511327.a n = (A016305 n : ℚ)

end A016305

/-! ## A016305.P11464107628466414904

`abs(Δ[A000051(n)]*A016208(n))`
-/

namespace A016305.P11464107628466414904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A016208 n|

end

end A016305.P11464107628466414904

namespace A016305

/-- `abs(Δ[A000051(n)]*A016208(n))` -/
def P11464107628466414904.Spec : Prop :=
  ∀ n, P11464107628466414904.a n = A016305 n

end A016305

/-! ## A016305.P135863643028501103

`abs(Δ[A000225(n)]*A016208(n))`
-/

namespace A016305.P135863643028501103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A016208 n|

end

end A016305.P135863643028501103

namespace A016305

/-- `abs(Δ[A000225(n)]*A016208(n))` -/
def P135863643028501103.Spec : Prop :=
  ∀ n, P135863643028501103.a n = A016305 n

end A016305

/-! ## A016305.P4322749158446304635

`n*4*A000007(n)+Δ[A000051(n)]*A016208(n)`
-/

namespace A016305.P4322749158446304635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (4 * A000007 n) + (f1 (n + 1) - f1 n) * A016208 n

end

end A016305.P4322749158446304635

namespace A016305

/-- `n*4*A000007(n)+Δ[A000051(n)]*A016208(n)` -/
def P4322749158446304635.Spec : Prop :=
  ∀ n, P4322749158446304635.a n = A016305 n

end A016305

/-! ## A016305.P8519150457530894549

`A000079(n+1)*A007583(n+1)-A090040(n+1)`
-/

namespace A016305.P8519150457530894549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A007583 (n + 1) - A090040 (n + 1)

end

end A016305.P8519150457530894549

namespace A016305

/-- `A000079(n+1)*A007583(n+1)-A090040(n+1)` -/
def P8519150457530894549.Spec : Prop :=
  ∀ n, P8519150457530894549.a n = A016305 n

end A016305

/-!
# A016306: Expansion of 1/((1-2*x)*(1-6*x)*(1-9*x)).

The programs for A016306, the canonical program `A016306.P14118215640838917346` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016306 has offset 0).

The definition of A016306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016306.P16133900306874185024

`(2^n-21*6^n+27*9^n)/7`
-/

namespace A016306.P16133900306874185024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (21 * 6 ^ n : ℤ) + (27 * 9 ^ n : ℤ) : ℚ) / 7

end

end A016306.P16133900306874185024

namespace A016306

/-- `(2^n-21*6^n+27*9^n)/7` -/
def P16133900306874185024.Spec : Prop :=
  ∀ n, P16133900306874185024.a n = (A016306 n : ℚ)

theorem P16133900306874185024.correct : P16133900306874185024.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016306, Nat.add_sub_cancel, A016306.P16133900306874185024.a, A016306.P14118215640838917346.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016306, Nat.add_sub_cancel, A016306.P16133900306874185024.a, A016306.P14118215640838917346.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016306

/-! ## A016306.P14118215640838917346

`15*a(n-1)-54*a(n-2)+2^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016306

/-- `15*a(n-1)-54*a(n-2)+2^n` -/
def P14118215640838917346.Spec : Prop :=
  ∀ n, P14118215640838917346.a n = A016306 n

theorem P14118215640838917346.correct : P14118215640838917346.Spec := by
  intro n
  simp only [A016306]

end A016306

/-! ## A016306.P17091880428458092674

`A016172(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016306.P17091880428458092674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016172 n + 2 * a (n - 1)

end

end A016306.P17091880428458092674

namespace A016306

/-- `A016172(n)+2*a(n-1)` -/
def P17091880428458092674.Spec : Prop :=
  ∀ n, P17091880428458092674.a n = A016306 n

end A016306

/-! ## A016306.P4151109085421713427

`ceil((A019443(n)+A016291(n))/2)`
-/

namespace A016306.P4151109085421713427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A019443 n + A016291 n : ℚ) / 2⌉

end

end A016306.P4151109085421713427

namespace A016306

/-- `ceil((A019443(n)+A016291(n))/2)` -/
def P4151109085421713427.Spec : Prop :=
  ∀ n, P4151109085421713427.a n = A016306 n

end A016306

/-! ## A016306.P8952725364679235002

`2*A016309(n)-A016324(n)`
-/

namespace A016306.P8952725364679235002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016309 n - A016324 n

end

end A016306.P8952725364679235002

namespace A016306

/-- `2*A016309(n)-A016324(n)` -/
def P8952725364679235002.Spec : Prop :=
  ∀ n, P8952725364679235002.a n = A016306 n

end A016306

/-!
# A016307: Expansion of g.f. 1/((1-2*x)*(1-6*x)*(1-10*x)).

The programs for A016307, the canonical program `A016307.P11717528700132568501` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016307 has offset 0).

The definition of A016307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016307.P11717528700132568501

`16*a(n-1)-60*a(n-2)+2^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016307

/-- `16*a(n-1)-60*a(n-2)+2^n` -/
def P11717528700132568501.Spec : Prop :=
  ∀ n, P11717528700132568501.a n = A016307 n

theorem P11717528700132568501.correct : P11717528700132568501.Spec := by
  intro n
  simp only [A016307]

end A016307

/-! ## A016307.P12190371443722901846

`(2^n-18*6^n+25*10^n)/8`
-/

namespace A016307.P12190371443722901846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (18 * 6 ^ n : ℤ) + (25 * 10 ^ n : ℤ) : ℚ) / 8

end

end A016307.P12190371443722901846

namespace A016307

/-- `(2^n-18*6^n+25*10^n)/8` -/
def P12190371443722901846.Spec : Prop :=
  ∀ n, P12190371443722901846.a n = (A016307 n : ℚ)

theorem P12190371443722901846.correct : P12190371443722901846.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016307, Nat.add_sub_cancel, A016307.P12190371443722901846.a, A016307.P11717528700132568501.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016307, Nat.add_sub_cancel, A016307.P12190371443722901846.a, A016307.P11717528700132568501.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016307

/-! ## A016307.P12163619610069384166

`2^n*A016209(n)`
-/

namespace A016307.P12163619610069384166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016209 n

end

end A016307.P12163619610069384166

namespace A016307

/-- `2^n*A016209(n)` -/
def P12163619610069384166.Spec : Prop :=
  ∀ n, P12163619610069384166.a n = A016307 n

end A016307

/-! ## A016307.P12656951126944610776

`A016173(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016307.P12656951126944610776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016173 n + 2 * a (n - 1)

end

end A016307.P12656951126944610776

namespace A016307

/-- `A016173(n)+2*a(n-1)` -/
def P12656951126944610776.Spec : Prop :=
  ∀ n, P12656951126944610776.a n = A016307 n

end A016307

/-! ## A016307.P11569517421412793409

`∑[A005059(n+1)]*A000079(n)`
-/

namespace A016307.P11569517421412793409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A016307.P11569517421412793409

namespace A016307

/-- `∑[A005059(n+1)]*A000079(n)` -/
def P11569517421412793409.Spec : Prop :=
  ∀ n, P11569517421412793409.a n = A016307 n

end A016307

/-! ## A016307.P15484705468888771236

`∑[A005059(n+1)]*A011782(n+1)`
-/

namespace A016307.P15484705468888771236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 (n + 1)

end

end A016307.P15484705468888771236

namespace A016307

/-- `∑[A005059(n+1)]*A011782(n+1)` -/
def P15484705468888771236.Spec : Prop :=
  ∀ n, P15484705468888771236.a n = A016307 n

end A016307

/-! ## A016307.P12441809317647301707

`A016209(n)+A000225(n)*A016209(n)`
-/

namespace A016307.P12441809317647301707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016209 n + A000225 n * A016209 n

end

end A016307.P12441809317647301707

namespace A016307

/-- `A016209(n)+A000225(n)*A016209(n)` -/
def P12441809317647301707.Spec : Prop :=
  ∀ n, P12441809317647301707.a n = A016307 n

end A016307

/-!
# A016308: Expansion of 1/((1-2*x)*(1-6*x)*(1-11*x)).

The programs for A016308, the canonical program `A016308.P7222298075472134658` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016308 has offset 0).

The definition of A016308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016308.P7222298075472134658

`17*a(n-1)-66*a(n-2)+2^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016308

/-- `17*a(n-1)-66*a(n-2)+2^n` -/
def P7222298075472134658.Spec : Prop :=
  ∀ n, P7222298075472134658.a n = A016308 n

theorem P7222298075472134658.correct : P7222298075472134658.Spec := by
  intro n
  simp only [A016308]

end A016308

/-! ## A016308.P6912786171230420736

`(5*2^n-81*6^n+121*11^n)/45`
-/

namespace A016308.P6912786171230420736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ n : ℤ) - (81 * 6 ^ n : ℤ) + (121 * 11 ^ n : ℤ) : ℚ) / 45

end

end A016308.P6912786171230420736

namespace A016308

/-- `(5*2^n-81*6^n+121*11^n)/45` -/
def P6912786171230420736.Spec : Prop :=
  ∀ n, P6912786171230420736.a n = (A016308 n : ℚ)

theorem P6912786171230420736.correct : P6912786171230420736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016308, Nat.add_sub_cancel, A016308.P6912786171230420736.a, A016308.P7222298075472134658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016308, Nat.add_sub_cancel, A016308.P6912786171230420736.a, A016308.P7222298075472134658.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016308

/-! ## A016308.P10298892122795268066

`A016174(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016308.P10298892122795268066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016174 n + 2 * a (n - 1)

end

end A016308.P10298892122795268066

namespace A016308

/-- `A016174(n)+2*a(n-1)` -/
def P10298892122795268066.Spec : Prop :=
  ∀ n, P10298892122795268066.a n = A016308 n

end A016308

/-! ## A016308.P15943592188417795447

`2*A016206(n)-A016200(n)`
-/

namespace A016308.P15943592188417795447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016206 n - A016200 n

end

end A016308.P15943592188417795447

namespace A016308

/-- `2*A016206(n)-A016200(n)` -/
def P15943592188417795447.Spec : Prop :=
  ∀ n, P15943592188417795447.a n = A016308 n

end A016308

/-! ## A016308.P6610537743723811224

`(A021204(n)+A016247(n))*2^(1-4/2)`
-/

namespace A016308.P6610537743723811224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A021204 n + A016247 n : ℝ) * (2 : ℝ) ^ (1 - (4 : ℚ) / 2 : ℝ)

end

end A016308.P6610537743723811224

namespace A016308

/-- `(A021204(n)+A016247(n))*2^(1-4/2)` -/
def P6610537743723811224.Spec : Prop :=
  ∀ n, P6610537743723811224.a n = (A016308 n : ℝ)

end A016308

/-!
# A016309: Expansion of 1/((1-2*x)*(1-6*x)*(1-12*x)).

The programs for A016309, the canonical program `A016309.P3283307143576306725` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016309 has offset 0).

The definition of A016309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016309.P3283307143576306725

`18*a(n-1)-72*a(n-2)+2^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016309

/-- `18*a(n-1)-72*a(n-2)+2^n` -/
def P3283307143576306725.Spec : Prop :=
  ∀ n, P3283307143576306725.a n = A016309 n

theorem P3283307143576306725.correct : P3283307143576306725.Spec := by
  intro n
  simp only [A016309]

end A016309

/-! ## A016309.P10654979315034161409

`(24*12^n-15*6^n+2^n)/10`
-/

namespace A016309.P10654979315034161409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((24 * 12 ^ n : ℤ) - (15 * 6 ^ n : ℤ) + (2 ^ n : ℤ) : ℚ) / 10

end

end A016309.P10654979315034161409

namespace A016309

/-- `(24*12^n-15*6^n+2^n)/10` -/
def P10654979315034161409.Spec : Prop :=
  ∀ n, P10654979315034161409.a n = (A016309 n : ℚ)

theorem P10654979315034161409.correct : P10654979315034161409.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016309, Nat.add_sub_cancel, A016309.P10654979315034161409.a, A016309.P3283307143576306725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016309, Nat.add_sub_cancel, A016309.P10654979315034161409.a, A016309.P3283307143576306725.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016309

/-! ## A016309.P1749503322046180021

`A016175(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016309.P1749503322046180021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016175 n + 2 * a (n - 1)

end

end A016309.P1749503322046180021

namespace A016309

/-- `A016175(n)+2*a(n-1)` -/
def P1749503322046180021.Spec : Prop :=
  ∀ n, P1749503322046180021.a n = A016309 n

end A016309

/-! ## A016309.P2434859034178413076

`A071951(∑[n+2]+4)`
-/

namespace A016309.P2434859034178413076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071951 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A016309.P2434859034178413076

namespace A016309

/-- `A071951(∑[n+2]+4)` -/
def P2434859034178413076.Spec : Prop :=
  ∀ n, P2434859034178413076.a n = A016309 n

end A016309

/-! ## A016309.P1305766331701539468

`lcm(A071951(A167614(n+1)), A112865(n))`
-/

namespace A016309.P1305766331701539468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071951 (A167614 (n + 1)).toNat) (A112865 n)

end

end A016309.P1305766331701539468

namespace A016309

/-- `lcm(A071951(A167614(n+1)), A112865(n))` -/
def P1305766331701539468.Spec : Prop :=
  ∀ n, (P1305766331701539468.a n : ℤ) = A016309 n

end A016309

/-! ## A016309.P6725195707852679049

`or(A000007(n), A071951(A167614(n+1)))`
-/

namespace A016309.P6725195707852679049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A071951 (A167614 (n + 1)).toNat)

end

end A016309.P6725195707852679049

namespace A016309

/-- `or(A000007(n), A071951(A167614(n+1)))` -/
def P6725195707852679049.Spec : Prop :=
  ∀ n, P6725195707852679049.a n = A016309 n

end A016309

/-!
# A016310: Inverse of 2301st cyclotomic polynomial.

The programs for A016310, there is no canonical definition to state claims against.
-/

/-! ## A016310.P4080350307853613361

`round(A016076(n)/Δ[A283002(n+1)])`
-/

namespace A016310.P4080350307853613361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016076 n : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A016310.P4080350307853613361

/-!
# A016311: Expansion of 1/((1-2*x)*(1-7*x)*(1-8*x)).

The programs for A016311, the canonical program `A016311.P12833808353380715472` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016311 has offset 0).

The definition of A016311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016311.P12833808353380715472

`15*a(n-1)-56*a(n-2)+2^n` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016311

/-- `15*a(n-1)-56*a(n-2)+2^n` -/
def P12833808353380715472.Spec : Prop :=
  ∀ n, P12833808353380715472.a n = A016311 n

theorem P12833808353380715472.correct : P12833808353380715472.Spec := by
  intro n
  simp only [A016311]

end A016311

/-! ## A016311.P8808602689730333380

`A016131(n+1)-A016130(n+1)`
-/

namespace A016311.P8808602689730333380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016131 (n + 1) - A016130 (n + 1)

end

end A016311.P8808602689730333380

namespace A016311

/-- `A016131(n+1)-A016130(n+1)` -/
def P8808602689730333380.Spec : Prop :=
  ∀ n, P8808602689730333380.a n = A016311 n

end A016311

/-! ## A016311.P10562118202081732105

`(160*8^n-147*7^n+2*2^n)/15`
-/

namespace A016311.P10562118202081732105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((160 * 8 ^ n : ℤ) - (147 * 7 ^ n : ℤ) + (2 * 2 ^ n : ℤ) : ℚ) / 15

end

end A016311.P10562118202081732105

namespace A016311

/-- `(160*8^n-147*7^n+2*2^n)/15` -/
def P10562118202081732105.Spec : Prop :=
  ∀ n, P10562118202081732105.a n = (A016311 n : ℚ)

theorem P10562118202081732105.correct : P10562118202081732105.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016311, Nat.add_sub_cancel, A016311.P10562118202081732105.a, A016311.P12833808353380715472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016311, Nat.add_sub_cancel, A016311.P10562118202081732105.a, A016311.P12833808353380715472.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016311

/-! ## A016311.P16560438308197265590

`∑[A257288(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A016311.P16560438308197265590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257288 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (n - 1)

end

end A016311.P16560438308197265590

namespace A016311

/-- `∑[A257288(n)]+2*a(n-1)` -/
def P16560438308197265590.Spec : Prop :=
  ∀ n, P16560438308197265590.a n = A016311 n

end A016311

/-! ## A016311.P8993926271392661649

`Δ[A016203(n)-A016201(n)]`
-/

namespace A016311.P8993926271392661649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016203 n - A016201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016311.P8993926271392661649

namespace A016311

/-- `Δ[A016203(n)-A016201(n)]` -/
def P8993926271392661649.Spec : Prop :=
  ∀ n, P8993926271392661649.a n = A016311 n

end A016311

/-! ## A016311.P15731167266054114390

`2*A016305(n)-A016304(n)`
-/

namespace A016311.P15731167266054114390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016305 n - A016304 n

end

end A016311.P15731167266054114390

namespace A016311

/-- `2*A016305(n)-A016304(n)` -/
def P15731167266054114390.Spec : Prop :=
  ∀ n, P15731167266054114390.a n = A016311 n

end A016311

/-! ## A016311.P2293684839932078020

`Δ[A016203(n)]-A016130(n+1)`
-/

namespace A016311.P2293684839932078020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016130 (n + 1)

end

end A016311.P2293684839932078020

namespace A016311

/-- `Δ[A016203(n)]-A016130(n+1)` -/
def P2293684839932078020.Spec : Prop :=
  ∀ n, P2293684839932078020.a n = A016311 n

end A016311

/-! ## A016311.P5874209240374354750

`Δ[A016203(n)-A016130(n)]-A016130(n)`
-/

namespace A016311.P5874209240374354750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016203 n - A016130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A016130 n

end

end A016311.P5874209240374354750

namespace A016311

/-- `Δ[A016203(n)-A016130(n)]-A016130(n)` -/
def P5874209240374354750.Spec : Prop :=
  ∀ n, P5874209240374354750.a n = A016311 n

end A016311

/-! ## A016311.P2429701012003363761

`A016203(n+1)-(A016203(n)+A016130(n+1))`
-/

namespace A016311.P2429701012003363761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016203 (n + 1) - (A016203 n + A016130 (n + 1))

end

end A016311.P2429701012003363761

namespace A016311

/-- `A016203(n+1)-(A016203(n)+A016130(n+1))` -/
def P2429701012003363761.Spec : Prop :=
  ∀ n, P2429701012003363761.a n = A016311 n

end A016311

/-!
# A016312: Expansion of g.f. 1/((1 - 2*x)*(1 - 7*x)*(1 - 9*x)).

The programs for A016312, the canonical program `A016312.P8538248273770837200` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016312 has offset 0).

The definition of A016312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016312.P8538248273770837200

`18*a(n-1)-95*a(n-2)+126*a(n-3)` with `a(0)=1, a(1)=18, a(2)=229`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016312

/-- `18*a(n-1)-95*a(n-2)+126*a(n-3)` -/
def P8538248273770837200.Spec : Prop :=
  ∀ n, P8538248273770837200.a n = A016312 n

theorem P8538248273770837200.correct : P8538248273770837200.Spec := by
  intro n
  simp only [A016312]

end A016312

/-! ## A016312.P3274793530391149438

`A016130(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A016312.P3274793530391149438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016130 n + 9 * a (n - 1)

end

end A016312.P3274793530391149438

namespace A016312

/-- `A016130(n)+9*a(n-1)` -/
def P3274793530391149438.Spec : Prop :=
  ∀ n, P3274793530391149438.a n = A016312 n

end A016312

/-! ## A016312.P15094505344832067875

`A081202(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A016312.P15094505344832067875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081202 (n + 1) + 2 * a (n - 1)

end

end A016312.P15094505344832067875

namespace A016312

/-- `A081202(n+1)+2*a(n-1)` -/
def P15094505344832067875.Spec : Prop :=
  ∀ n, P15094505344832067875.a n = A016312 n

end A016312

/-! ## A016312.P2320768307322263734

`a(n-1)+A016178(n)+a(n-1)` with `a(0)=1`
-/

namespace A016312.P2320768307322263734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016178 n + a (n - 1))

end

end A016312.P2320768307322263734

namespace A016312

/-- `a(n-1)+A016178(n)+a(n-1)` -/
def P2320768307322263734.Spec : Prop :=
  ∀ n, P2320768307322263734.a n = A016312 n

end A016312

/-! ## A016312.P6558947489424252183

`2*A016298(n)-A016296(n)`
-/

namespace A016312.P6558947489424252183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016298 n - A016296 n

end

end A016312.P6558947489424252183

namespace A016312

/-- `2*A016298(n)-A016296(n)` -/
def P6558947489424252183.Spec : Prop :=
  ∀ n, P6558947489424252183.a n = A016312 n

end A016312

/-! ## A016312.P16954204751064743995

`(A016316(n)+A016311(n))/2`
-/

namespace A016312.P16954204751064743995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016316 n + A016311 n : ℚ) / 2

end

end A016312.P16954204751064743995

namespace A016312

/-- `(A016316(n)+A016311(n))/2` -/
def P16954204751064743995.Spec : Prop :=
  ∀ n, P16954204751064743995.a n = (A016312 n : ℚ)

end A016312

/-! ## A016312.P13181239955419478258

`2*A019613(n)-A025972(n)`
-/

namespace A016312.P13181239955419478258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019613 n - A025972 n

end

end A016312.P13181239955419478258

namespace A016312

/-- `2*A019613(n)-A025972(n)` -/
def P13181239955419478258.Spec : Prop :=
  ∀ n, P13181239955419478258.a n = A016312 n

end A016312

/-! ## A016312.P2717576026134073538

`2*A019613(n)-(2*A021229(n)-A021084(n))`
-/

namespace A016312.P2717576026134073538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019613 n - (2 * A021229 n - A021084 n)

end

end A016312.P2717576026134073538

namespace A016312

/-- `2*A019613(n)-(2*A021229(n)-A021084(n))` -/
def P2717576026134073538.Spec : Prop :=
  ∀ n, P2717576026134073538.a n = A016312 n

end A016312

/-! ## A016312.P13175320817613524659

`2*A016314(n)-A016322(n)`
-/

namespace A016312.P13175320817613524659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016314 n - A016322 n

end

end A016312.P13175320817613524659

namespace A016312

/-- `2*A016314(n)-A016322(n)` -/
def P13175320817613524659.Spec : Prop :=
  ∀ n, P13175320817613524659.a n = A016312 n

end A016312

/-!
# A016313: Expansion of 1/((1-2*x)*(1-7*x)*(1-10*x)).

The programs for A016313, the canonical program `A016313.P10318653531915972602` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016313 has offset 0).

The definition of A016313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016313.P10318653531915972602

`17*a(n-1)-70*a(n-2)+2^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016313

/-- `17*a(n-1)-70*a(n-2)+2^n` -/
def P10318653531915972602.Spec : Prop :=
  ∀ n, P10318653531915972602.a n = A016313 n

theorem P10318653531915972602.correct : P10318653531915972602.Spec := by
  intro n
  simp only [A016313]

end A016313

/-! ## A016313.P6606743492372675223

`A016181(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016313.P6606743492372675223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016181 n + 2 * a (n - 1)

end

end A016313.P6606743492372675223

namespace A016313

/-- `A016181(n)+2*a(n-1)` -/
def P6606743492372675223.Spec : Prop :=
  ∀ n, P6606743492372675223.a n = A016313 n

end A016313

/-! ## A016313.P7796214669937522767

`7*a(n-1)+2^n*A003463(n+1)` with `a(0)=1`
-/

namespace A016313.P7796214669937522767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + (2 ^ n : ℤ) * A003463 (n + 1)

end

end A016313.P7796214669937522767

namespace A016313

/-- `7*a(n-1)+2^n*A003463(n+1)` -/
def P7796214669937522767.Spec : Prop :=
  ∀ n, P7796214669937522767.a n = A016313 n

end A016313

/-! ## A016313.P7924855091372345869

`2*A016292(n)-A016285(n)`
-/

namespace A016313.P7924855091372345869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016292 n - A016285 n

end

end A016313.P7924855091372345869

namespace A016313

/-- `2*A016292(n)-A016285(n)` -/
def P7924855091372345869.Spec : Prop :=
  ∀ n, P7924855091372345869.a n = A016313 n

end A016313

/-! ## A016313.P11810433116413468479

`(A021234(n)+A016252(n))/2`
-/

namespace A016313.P11810433116413468479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021234 n + A016252 n : ℚ) / 2

end

end A016313.P11810433116413468479

namespace A016313

/-- `(A021234(n)+A016252(n))/2` -/
def P11810433116413468479.Spec : Prop :=
  ∀ n, P11810433116413468479.a n = (A016313 n : ℚ)

end A016313

/-! ## A016313.P14960130468513976699

`A019618(n)+A019618(n)-A025973(n)`
-/

namespace A016313.P14960130468513976699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019618 n + (A019618 n - A025973 n)

end

end A016313.P14960130468513976699

namespace A016313

/-- `A019618(n)+A019618(n)-A025973(n)` -/
def P14960130468513976699.Spec : Prop :=
  ∀ n, P14960130468513976699.a n = A016313 n

end A016313

/-! ## A016313.P9100180625019292919

`2*A019618(n)-A025973(n)`
-/

namespace A016313.P9100180625019292919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019618 n - A025973 n

end

end A016313.P9100180625019292919

namespace A016313

/-- `2*A019618(n)-A025973(n)` -/
def P9100180625019292919.Spec : Prop :=
  ∀ n, P9100180625019292919.a n = A016313 n

end A016313

/-!
# A016314: Expansion of 1/((1-2x)*(1-7x)*(1-11x)).

The programs for A016314, the canonical program `A016314.P16345865917937234617` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016314 has offset 0).

The definition of A016314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016314.P16345865917937234617

`18*a(n-1)-77*a(n-2)+2^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016314

/-- `18*a(n-1)-77*a(n-2)+2^n` -/
def P16345865917937234617.Spec : Prop :=
  ∀ n, P16345865917937234617.a n = A016314 n

theorem P16345865917937234617.correct : P16345865917937234617.Spec := by
  intro n
  simp only [A016314]

end A016314

/-! ## A016314.P14824469278978209907

`A016135(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A016314.P14824469278978209907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016135 n + 7 * a (n - 1)

end

end A016314.P14824469278978209907

namespace A016314

/-- `A016135(n)+7*a(n-1)` -/
def P14824469278978209907.Spec : Prop :=
  ∀ n, P14824469278978209907.a n = A016314 n

end A016314

/-! ## A016314.P2523915722551852267

`a(n-1)+A016183(n)+a(n-1)` with `a(0)=1`
-/

namespace A016314.P2523915722551852267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016183 n + a (n - 1))

end

end A016314.P2523915722551852267

namespace A016314

/-- `a(n-1)+A016183(n)+a(n-1)` -/
def P2523915722551852267.Spec : Prop :=
  ∀ n, P2523915722551852267.a n = A016314 n

end A016314

/-! ## A016314.P17537561228319433218

`2*A016280(n)-A016276(n)`
-/

namespace A016314.P17537561228319433218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016280 n - A016276 n

end

end A016314.P17537561228319433218

namespace A016314

/-- `2*A016280(n)-A016276(n)` -/
def P17537561228319433218.Spec : Prop :=
  ∀ n, P17537561228319433218.a n = A016314 n

end A016314

/-! ## A016314.P4458293378431286019

`(A016322(n)+A016312(n))/2`
-/

namespace A016314.P4458293378431286019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016322 n + A016312 n : ℚ) / 2

end

end A016314.P4458293378431286019

namespace A016314

/-- `(A016322(n)+A016312(n))/2` -/
def P4458293378431286019.Spec : Prop :=
  ∀ n, P4458293378431286019.a n = (A016314 n : ℚ)

end A016314

/-! ## A016314.P4115185965519412168

`2*A019623(n)-A025974(n)`
-/

namespace A016314.P4115185965519412168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019623 n - A025974 n

end

end A016314.P4115185965519412168

namespace A016314

/-- `2*A019623(n)-A025974(n)` -/
def P4115185965519412168.Spec : Prop :=
  ∀ n, P4115185965519412168.a n = A016314 n

end A016314

/-!
# A016315: Expansion of g.f. 1/((1 - 2*x)*(1 - 7*x)*(1 - 12*x)).

The programs for A016315, the canonical program `A016315.P1117193170948779150` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016315 has offset 0).

The definition of A016315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016315.P1117193170948779150

`19*a(n-1)-84*a(n-2)+2^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016315

/-- `19*a(n-1)-84*a(n-2)+2^n` -/
def P1117193170948779150.Spec : Prop :=
  ∀ n, P1117193170948779150.a n = A016315 n

theorem P1117193170948779150.correct : P1117193170948779150.Spec := by
  intro n
  simp only [A016315]

end A016315

/-! ## A016315.P9109113959116170032

`A016184(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016315.P9109113959116170032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016184 n + 2 * a (n - 1)

end

end A016315.P9109113959116170032

namespace A016315

/-- `A016184(n)+2*a(n-1)` -/
def P9109113959116170032.Spec : Prop :=
  ∀ n, P9109113959116170032.a n = A016315 n

end A016315

/-! ## A016315.P2557875699209981253

`A016136(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A016315.P2557875699209981253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016136 n + 7 * a (n - 1)

end

end A016315.P2557875699209981253

namespace A016315

/-- `A016136(n)+7*a(n-1)` -/
def P2557875699209981253.Spec : Prop :=
  ∀ n, P2557875699209981253.a n = A016315 n

end A016315

/-! ## A016315.P9589512957522249024

`A016130(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A016315.P9589512957522249024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016130 n + 12 * a (n - 1)

end

end A016315.P9589512957522249024

namespace A016315

/-- `A016130(n)+12*a(n-1)` -/
def P9589512957522249024.Spec : Prop :=
  ∀ n, P9589512957522249024.a n = A016315 n

end A016315

/-! ## A016315.P5328902893019285899

`(A026543(n)+A016304(n))/2`
-/

namespace A016315.P5328902893019285899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026543 n + A016304 n : ℚ) / 2

end

end A016315.P5328902893019285899

namespace A016315

/-- `(A026543(n)+A016304(n))/2` -/
def P5328902893019285899.Spec : Prop :=
  ∀ n, P5328902893019285899.a n = (A016315 n : ℚ)

end A016315

/-!
# A016316: Expansion of 1/((1-2x)*(1-8x)*(1-9x)).

The programs for A016316, the canonical program `A016316.P8660859174588348791` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016316 has offset 0).

The definition of A016316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016316.P8660859174588348791

`17*a(n-1)-72*a(n-2)+2^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016316

/-- `17*a(n-1)-72*a(n-2)+2^n` -/
def P8660859174588348791.Spec : Prop :=
  ∀ n, P8660859174588348791.a n = A016316 n

theorem P8660859174588348791.correct : P8660859174588348791.Spec := by
  intro n
  simp only [A016316]

end A016316

/-! ## A016316.P11317461916708168717

`A016133(n+1)-A016131(n+1)`
-/

namespace A016316.P11317461916708168717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016133 (n + 1) - A016131 (n + 1)

end

end A016316.P11317461916708168717

namespace A016316

/-- `A016133(n+1)-A016131(n+1)` -/
def P11317461916708168717.Spec : Prop :=
  ∀ n, P11317461916708168717.a n = A016316 n

end A016316

/-! ## A016316.P7453480037903758571

`Δ[A016204(n)-A016203(n)]`
-/

namespace A016316.P7453480037903758571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016204 n - A016203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016316.P7453480037903758571

namespace A016316

/-- `Δ[A016204(n)-A016203(n)]` -/
def P7453480037903758571.Spec : Prop :=
  ∀ n, P7453480037903758571.a n = A016316 n

end A016316

/-! ## A016316.P16699853185330977726

`2*A016312(n)-A016311(n)`
-/

namespace A016316.P16699853185330977726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016312 n - A016311 n

end

end A016316.P16699853185330977726

namespace A016316

/-- `2*A016312(n)-A016311(n)` -/
def P16699853185330977726.Spec : Prop :=
  ∀ n, P16699853185330977726.a n = A016316 n

end A016316

/-! ## A016316.P5743472335548359016

`A016133(n+1)+A016203(n)-A016203(n+1)`
-/

namespace A016316.P5743472335548359016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016133 (n + 1) + (A016203 n - A016203 (n + 1))

end

end A016316.P5743472335548359016

namespace A016316

/-- `A016133(n+1)+A016203(n)-A016203(n+1)` -/
def P5743472335548359016.Spec : Prop :=
  ∀ n, P5743472335548359016.a n = A016316 n

end A016316

/-!
# A016317: Expansion of 1/((1-2x)(1-8x)(1-10x)).

The programs for A016317, the canonical program `A016317.P16055473397431174586` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016317 has offset 0).

The definition of A016317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016317.P15613791546372325043

`(75*10^n+2^n-8^(n+2))/12`
-/

namespace A016317.P15613791546372325043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((75 * 10 ^ n + 2 ^ n : ℤ) - (8 ^ (n + 2) : ℤ) : ℚ) / 12

end

end A016317.P15613791546372325043

namespace A016317

/-- `(75*10^n+2^n-8^(n+2))/12` -/
def P15613791546372325043.Spec : Prop :=
  ∀ n, P15613791546372325043.a n = (A016317 n : ℚ)

theorem P15613791546372325043.correct : P15613791546372325043.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016317, Nat.add_sub_cancel, A016317.P15613791546372325043.a, A016317.P16055473397431174586.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016317, Nat.add_sub_cancel, A016317.P15613791546372325043.a, A016317.P16055473397431174586.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016317

/-! ## A016317.P16055473397431174586

`18*a(n-1)-80*a(n-2)+2^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016317

/-- `18*a(n-1)-80*a(n-2)+2^n` -/
def P16055473397431174586.Spec : Prop :=
  ∀ n, P16055473397431174586.a n = A016317 n

theorem P16055473397431174586.correct : P16055473397431174586.Spec := by
  intro n
  simp only [A016317]

end A016317

/-! ## A016317.P6561275166384977478

`A016186(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016317.P6561275166384977478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016186 n + 2 * a (n - 1)

end

end A016317.P6561275166384977478

namespace A016317

/-- `A016186(n)+2*a(n-1)` -/
def P6561275166384977478.Spec : Prop :=
  ∀ n, P6561275166384977478.a n = A016317 n

end A016317

/-! ## A016317.P17389533735843006102

`A016131(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A016317.P17389533735843006102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016131 n + 10 * a (n - 1)

end

end A016317.P17389533735843006102

namespace A016317

/-- `A016131(n)+10*a(n-1)` -/
def P17389533735843006102.Spec : Prop :=
  ∀ n, P17389533735843006102.a n = A016317 n

end A016317

/-! ## A016317.P2785224973012465066

`A016134(n)+4*2*a(n-1)` with `a(0)=1`
-/

namespace A016317.P2785224973012465066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016134 n + 4 * (2 * a (n - 1))

end

end A016317.P2785224973012465066

namespace A016317

/-- `A016134(n)+4*2*a(n-1)` -/
def P2785224973012465066.Spec : Prop :=
  ∀ n, P2785224973012465066.a n = A016317 n

end A016317

/-! ## A016317.P3800437381970084818

`floor(A000035(n)/2)+A000079(n)*A016218(n)`
-/

namespace A016317.P3800437381970084818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000035 n : ℚ) / 2⌋ + A000079 n * A016218 n

end

end A016317.P3800437381970084818

namespace A016317

/-- `floor(A000035(n)/2)+A000079(n)*A016218(n)` -/
def P3800437381970084818.Spec : Prop :=
  ∀ n, P3800437381970084818.a n = A016317 n

end A016317

/-!
# A016318: Expansion of 1/((1-2x)(1-8x)(1-11x)).

The programs for A016318, the canonical program `A016318.P18257291233961585004` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016318 has offset 0).

The definition of A016318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016318.P18257291233961585004

`19*a(n-1)-88*a(n-2)+2^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016318

/-- `19*a(n-1)-88*a(n-2)+2^n` -/
def P18257291233961585004.Spec : Prop :=
  ∀ n, P18257291233961585004.a n = A016318 n

theorem P18257291233961585004.correct : P18257291233961585004.Spec := by
  intro n
  simp only [A016318]

end A016318

/-! ## A016318.P12200752155899297323

`(11^(n+2)+2^(n+1)-96*8^n)/27`
-/

namespace A016318.P12200752155899297323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 2) + 2 ^ (n + 1) : ℤ) - (96 * 8 ^ n : ℤ) : ℚ) / 27

end

end A016318.P12200752155899297323

namespace A016318

/-- `(11^(n+2)+2^(n+1)-96*8^n)/27` -/
def P12200752155899297323.Spec : Prop :=
  ∀ n, P12200752155899297323.a n = (A016318 n : ℚ)

theorem P12200752155899297323.correct : P12200752155899297323.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016318, Nat.add_sub_cancel, A016318.P12200752155899297323.a, A016318.P18257291233961585004.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016318, Nat.add_sub_cancel, A016318.P12200752155899297323.a, A016318.P18257291233961585004.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016318

/-! ## A016318.P5175566027509600773

`a(n-1)+A016187(n)+a(n-1)` with `a(0)=1`
-/

namespace A016318.P5175566027509600773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016187 n + a (n - 1))

end

end A016318.P5175566027509600773

namespace A016318

/-- `a(n-1)+A016187(n)+a(n-1)` -/
def P5175566027509600773.Spec : Prop :=
  ∀ n, P5175566027509600773.a n = A016318 n

end A016318

/-! ## A016318.P5691602062095710148

`A139746(n+1)/3+2*a(n-1)` with `a(0)=1`
-/

namespace A016318.P5691602062095710148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A139746 (n + 1) : ℚ) / 3 + 2 * a (n - 1)

end

end A016318.P5691602062095710148

namespace A016318

/-- `A139746(n+1)/3+2*a(n-1)` -/
def P5691602062095710148.Spec : Prop :=
  ∀ n, P5691602062095710148.a n = (A016318 n : ℚ)

end A016318

/-! ## A016318.P13794874119235018596

`2*A016301(n)-A016297(n)`
-/

namespace A016318.P13794874119235018596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016301 n - A016297 n

end

end A016318.P13794874119235018596

namespace A016318

/-- `2*A016301(n)-A016297(n)` -/
def P13794874119235018596.Spec : Prop :=
  ∀ n, P13794874119235018596.a n = A016318 n

end A016318

/-!
# A016319: Inverse of 2310th cyclotomic polynomial.

The programs for A016319, there is no canonical definition to state claims against.
-/

/-! ## A016319.P8910638876733581129

`(-1)^n*A007273(n)`
-/

namespace A016319.P8910638876733581129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007273 n

end

end A016319.P8910638876733581129

/-! ## A016319.P13672920816481871116

`A007273(n)*A033999(n)`
-/

namespace A016319.P13672920816481871116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007273 n * A033999 n

end

end A016319.P13672920816481871116

/-!
# A016320: Expansion of 1/((1-2x)(1-8x)(1-12x)).

The programs for A016320, the canonical program `A016320.P9527235505539617245` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016320 has offset 0).

The definition of A016320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016320.P5836183414996721580

`(54*12^n+2^n-40*8^n)/15`
-/

namespace A016320.P5836183414996721580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((54 * 12 ^ n + 2 ^ n : ℤ) - (40 * 8 ^ n : ℤ) : ℚ) / 15

end

end A016320.P5836183414996721580

namespace A016320

/-- `(54*12^n+2^n-40*8^n)/15` -/
def P5836183414996721580.Spec : Prop :=
  ∀ n, P5836183414996721580.a n = (A016320 n : ℚ)

theorem P5836183414996721580.correct : P5836183414996721580.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016320, Nat.add_sub_cancel, A016320.P5836183414996721580.a, A016320.P9527235505539617245.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016320, Nat.add_sub_cancel, A016320.P5836183414996721580.a, A016320.P9527235505539617245.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016320

/-! ## A016320.P9527235505539617245

`20*a(n-1)-96*a(n-2)+2^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016320

/-- `20*a(n-1)-96*a(n-2)+2^n` -/
def P9527235505539617245.Spec : Prop :=
  ∀ n, P9527235505539617245.a n = A016320 n

theorem P9527235505539617245.correct : P9527235505539617245.Spec := by
  intro n
  simp only [A016320]

end A016320

/-! ## A016320.P12009137887107558229

`2^n*∑[4^n+6*a(n-1)]` with `a(0)=1`
-/

namespace A016320.P12009137887107558229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 ^ n + 6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016320.P12009137887107558229

namespace A016320

/-- `2^n*∑[4^n+6*a(n-1)]` -/
def P12009137887107558229.Spec : Prop :=
  ∀ n, (P12009137887107558229.a n : ℤ) = A016320 n

end A016320

/-! ## A016320.P16464853043661814920

`2^n*A016222(n)`
-/

namespace A016320.P16464853043661814920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016222 n

end

end A016320.P16464853043661814920

namespace A016320

/-- `2^n*A016222(n)` -/
def P16464853043661814920.Spec : Prop :=
  ∀ n, P16464853043661814920.a n = A016320 n

end A016320

/-! ## A016320.P7026297360880416064

`2^n*∑[A016149(n)]`
-/

namespace A016320.P7026297360880416064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016320.P7026297360880416064

namespace A016320

/-- `2^n*∑[A016149(n)]` -/
def P7026297360880416064.Spec : Prop :=
  ∀ n, P7026297360880416064.a n = A016320 n

end A016320

/-! ## A016320.P12413154852096736017

`a(n-1)+A016188(n)+a(n-1)` with `a(0)=1`
-/

namespace A016320.P12413154852096736017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016188 n + a (n - 1))

end

end A016320.P12413154852096736017

namespace A016320

/-- `a(n-1)+A016188(n)+a(n-1)` -/
def P12413154852096736017.Spec : Prop :=
  ∀ n, P12413154852096736017.a n = A016320 n

end A016320

/-! ## A016320.P8415734085563599235

`∑[A016149(n)]*A000079(n)`
-/

namespace A016320.P8415734085563599235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A016320.P8415734085563599235

namespace A016320

/-- `∑[A016149(n)]*A000079(n)` -/
def P8415734085563599235.Spec : Prop :=
  ∀ n, P8415734085563599235.a n = A016320 n

end A016320

/-! ## A016320.P11409254781028967715

`lcm(∑[A016149(n)], A122803(n))`
-/

namespace A016320.P11409254781028967715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A122803 n)

end

end A016320.P11409254781028967715

namespace A016320

/-- `lcm(∑[A016149(n)], A122803(n))` -/
def P11409254781028967715.Spec : Prop :=
  ∀ n, (P11409254781028967715.a n : ℤ) = A016320 n

end A016320

/-! ## A016320.P8511551305050247816

`A016222(n)*A017912(2*n)`
-/

namespace A016320.P8511551305050247816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016222 n * A017912 (2 * n)

end

end A016320.P8511551305050247816

namespace A016320

/-- `A016222(n)*A017912(2*n)` -/
def P8511551305050247816.Spec : Prop :=
  ∀ n, P8511551305050247816.a n = A016320 n

end A016320

/-!
# A016321: Expansion of 1/((1-2x)*(1-9x)*(1-10x)).

The programs for A016321, the canonical program `A016321.P17024988515808372344` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016321 has offset 0).

The definition of A016321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016321.P17024988515808372344

`19*a(n-1)-90*a(n-2)+2^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016321

/-- `19*a(n-1)-90*a(n-2)+2^n` -/
def P17024988515808372344.Spec : Prop :=
  ∀ n, P17024988515808372344.a n = A016321 n

theorem P17024988515808372344.correct : P17024988515808372344.Spec := by
  intro n
  simp only [A016321]

end A016321

/-! ## A016321.P15199398947648341183

`A016134(n+1)-A016133(n+1)`
-/

namespace A016321.P15199398947648341183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016134 (n + 1) - A016133 (n + 1)

end

end A016321.P15199398947648341183

namespace A016321

/-- `A016134(n+1)-A016133(n+1)` -/
def P15199398947648341183.Spec : Prop :=
  ∀ n, P15199398947648341183.a n = A016321 n

end A016321

/-! ## A016321.P8396285928969962113

`(175*10^n+2^n-162*9^n)/14`
-/

namespace A016321.P8396285928969962113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((175 * 10 ^ n + 2 ^ n : ℤ) - (162 * 9 ^ n : ℤ) : ℚ) / 14

end

end A016321.P8396285928969962113

namespace A016321

/-- `(175*10^n+2^n-162*9^n)/14` -/
def P8396285928969962113.Spec : Prop :=
  ∀ n, P8396285928969962113.a n = (A016321 n : ℚ)

theorem P8396285928969962113.correct : P8396285928969962113.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016321, Nat.add_sub_cancel, A016321.P8396285928969962113.a, A016321.P17024988515808372344.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016321, Nat.add_sub_cancel, A016321.P8396285928969962113.a, A016321.P17024988515808372344.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016321

/-! ## A016321.P3676331618659671782

`Δ[A016205(n)-A016204(n)]`
-/

namespace A016321.P3676331618659671782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016205 n - A016204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016321.P3676331618659671782

namespace A016321

/-- `Δ[A016205(n)-A016204(n)]` -/
def P3676331618659671782.Spec : Prop :=
  ∀ n, P3676331618659671782.a n = A016321 n

end A016321

/-! ## A016321.P15752642739137658109

`2*A016317(n)-A016316(n)`
-/

namespace A016321.P15752642739137658109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016317 n - A016316 n

end

end A016321.P15752642739137658109

namespace A016321

/-- `2*A016317(n)-A016316(n)` -/
def P15752642739137658109.Spec : Prop :=
  ∀ n, P15752642739137658109.a n = A016321 n

end A016321

/-! ## A016321.P3158330654540304725

`A016313(n)+A028009(n)-A020970(n)`
-/

namespace A016321.P3158330654540304725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016313 n + (A028009 n - A020970 n)

end

end A016321.P3158330654540304725

namespace A016321

/-- `A016313(n)+A028009(n)-A020970(n)` -/
def P3158330654540304725.Spec : Prop :=
  ∀ n, P3158330654540304725.a n = A016321 n

end A016321

/-! ## A016321.P5696592092932939486

`2*A016322(n)-A016325(n)`
-/

namespace A016321.P5696592092932939486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016322 n - A016325 n

end

end A016321.P5696592092932939486

namespace A016321

/-- `2*A016322(n)-A016325(n)` -/
def P5696592092932939486.Spec : Prop :=
  ∀ n, P5696592092932939486.a n = A016321 n

end A016321

/-!
# A016322: Expansion of 1/((1-2x)*(1-9x)*(1-11x)).

The programs for A016322, the canonical program `A016322.P1812849068763967234` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016322 has offset 0).

The definition of A016322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016322.P1812849068763967234

`20*a(n-1)-99*a(n-2)+2^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016322

/-- `20*a(n-1)-99*a(n-2)+2^n` -/
def P1812849068763967234.Spec : Prop :=
  ∀ n, P1812849068763967234.a n = A016322 n

theorem P1812849068763967234.correct : P1812849068763967234.Spec := by
  intro n
  simp only [A016322]

end A016322

/-! ## A016322.P16345172413003583215

`(7*11^(n+2)+2^(n+3)-9^(n+3))/126`
-/

namespace A016322.P16345172413003583215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 11 ^ (n + 2) + 2 ^ (n + 3) : ℤ) - (9 ^ (n + 3) : ℤ) : ℚ) / 126

end

end A016322.P16345172413003583215

namespace A016322

/-- `(7*11^(n+2)+2^(n+3)-9^(n+3))/126` -/
def P16345172413003583215.Spec : Prop :=
  ∀ n, P16345172413003583215.a n = (A016322 n : ℚ)

theorem P16345172413003583215.correct : P16345172413003583215.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016322, Nat.add_sub_cancel, A016322.P16345172413003583215.a, A016322.P1812849068763967234.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016322, Nat.add_sub_cancel, A016322.P16345172413003583215.a, A016322.P1812849068763967234.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016322

/-! ## A016322.P10908625058021823069

`A016133(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A016322.P10908625058021823069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016133 n + 11 * a (n - 1)

end

end A016322.P10908625058021823069

namespace A016322

/-- `A016133(n)+11*a(n-1)` -/
def P10908625058021823069.Spec : Prop :=
  ∀ n, P10908625058021823069.a n = A016322 n

end A016322

/-! ## A016322.P16195388953856175007

`a(n-1)+A016190(n)+a(n-1)` with `a(0)=1`
-/

namespace A016322.P16195388953856175007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016190 n + a (n - 1))

end

end A016322.P16195388953856175007

namespace A016322

/-- `a(n-1)+A016190(n)+a(n-1)` -/
def P16195388953856175007.Spec : Prop :=
  ∀ n, P16195388953856175007.a n = A016322 n

end A016322

/-! ## A016322.P17324165770027134445

`A161999(2*n+3)+2*a(n-1)` with `a(0)=1`
-/

namespace A016322.P17324165770027134445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161999 (2 * n + 3) + 2 * a (n - 1)

end

end A016322.P17324165770027134445

namespace A016322

/-- `A161999(2*n+3)+2*a(n-1)` -/
def P17324165770027134445.Spec : Prop :=
  ∀ n, P17324165770027134445.a n = A016322 n

end A016322

/-! ## A016322.P15153394240389470000

`2*A016314(n)-A016312(n)`
-/

namespace A016322.P15153394240389470000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016314 n - A016312 n

end

end A016322.P15153394240389470000

namespace A016322

/-- `2*A016314(n)-A016312(n)` -/
def P15153394240389470000.Spec : Prop :=
  ∀ n, P15153394240389470000.a n = A016322 n

end A016322

/-!
# A016323: Inverse of 2314th cyclotomic polynomial.

The programs for A016323, there is no canonical definition to state claims against.
-/

/-! ## A016323.P6689226839663967233

`A015166(n)*A033999(n)`
-/

namespace A016323.P6689226839663967233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015166 n * A033999 n

end

end A016323.P6689226839663967233

/-!
# A016324: Expansion of 1/((1-2x)*(1-9x)*(1-12x)).

The programs for A016324, the canonical program `A016324.P14811141586302601570` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016324 has offset 0).

The definition of A016324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016324.P14811141586302601570

`21*a(n-1)-108*a(n-2)+2^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016324

/-- `21*a(n-1)-108*a(n-2)+2^n` -/
def P14811141586302601570.Spec : Prop :=
  ∀ n, P14811141586302601570.a n = A016324 n

theorem P14811141586302601570.correct : P14811141586302601570.Spec := by
  intro n
  simp only [A016324]

end A016324

/-! ## A016324.P17907164625983670705

`(168*12^n+2^(n+1)-5*3^(2*n+3))/35`
-/

namespace A016324.P17907164625983670705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((168 * 12 ^ n + 2 ^ (n + 1) : ℤ) - (5 * 3 ^ (2 * n + 3) : ℤ) : ℚ) / 35

end

end A016324.P17907164625983670705

namespace A016324

/-- `(168*12^n+2^(n+1)-5*3^(2*n+3))/35` -/
def P17907164625983670705.Spec : Prop :=
  ∀ n, P17907164625983670705.a n = (A016324 n : ℚ)

theorem P17907164625983670705.correct : P17907164625983670705.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016324, Nat.add_sub_cancel, A016324.P17907164625983670705.a, A016324.P14811141586302601570.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016324, Nat.add_sub_cancel, A016324.P17907164625983670705.a, A016324.P14811141586302601570.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016324

/-! ## A016324.P14836852271387751841

`A016191(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016324.P14836852271387751841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016191 n + 2 * a (n - 1)

end

end A016324.P14836852271387751841

namespace A016324

/-- `A016191(n)+2*a(n-1)` -/
def P14836852271387751841.Spec : Prop :=
  ∀ n, P14836852271387751841.a n = A016324 n

end A016324

/-! ## A016324.P16875076858851536184

`A016136(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A016324.P16875076858851536184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016136 n + 9 * a (n - 1)

end

end A016324.P16875076858851536184

namespace A016324

/-- `A016136(n)+9*a(n-1)` -/
def P16875076858851536184.Spec : Prop :=
  ∀ n, P16875076858851536184.a n = A016324 n

end A016324

/-! ## A016324.P6778433177006277284

`2*A016309(n)-A016306(n)`
-/

namespace A016324.P6778433177006277284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016309 n - A016306 n

end

end A016324.P6778433177006277284

namespace A016324

/-- `2*A016309(n)-A016306(n)` -/
def P6778433177006277284.Spec : Prop :=
  ∀ n, P6778433177006277284.a n = A016324 n

end A016324

/-! ## A016324.P3797294987311843849

`∑[A255463(n)]*A000244(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A016324.P3797294987311843849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n + 2 * a (n - 1)

end

end A016324.P3797294987311843849

namespace A016324

/-- `∑[A255463(n)]*A000244(n)+2*a(n-1)` -/
def P3797294987311843849.Spec : Prop :=
  ∀ n, P3797294987311843849.a n = A016324 n

end A016324

/-! ## A016324.P5468940532764474604

`A000244(n)*A005061(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A016324.P5468940532764474604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000244 n * A005061 (n + 1) + 2 * a (n - 1)

end

end A016324.P5468940532764474604

namespace A016324

/-- `A000244(n)*A005061(n+1)+2*a(n-1)` -/
def P5468940532764474604.Spec : Prop :=
  ∀ n, P5468940532764474604.a n = A016324 n

end A016324

/-!
# A016325: Expansion of 1/((1-2x)(1-10x)(1-11x)).

The programs for A016325, the canonical program `A016325.P115230180080305060` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016325 has offset 0).

The definition of A016325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016325.P115230180080305060

`21*a(n-1)-110*a(n-2)+2^n` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016325

/-- `21*a(n-1)-110*a(n-2)+2^n` -/
def P115230180080305060.Spec : Prop :=
  ∀ n, P115230180080305060.a n = A016325 n

theorem P115230180080305060.correct : P115230180080305060.Spec := by
  intro n
  simp only [A016325]

end A016325

/-! ## A016325.P13688531660702053977

`A016135(n+1)-A016134(n+1)`
-/

namespace A016325.P13688531660702053977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016135 (n + 1) - A016134 (n + 1)

end

end A016325.P13688531660702053977

namespace A016325

/-- `A016135(n+1)-A016134(n+1)` -/
def P13688531660702053977.Spec : Prop :=
  ∀ n, P13688531660702053977.a n = A016325 n

end A016325

/-! ## A016325.P6694362985968475479

`(2*11^(n+2)+2^n-225*10^n)/18`
-/

namespace A016325.P6694362985968475479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 11 ^ (n + 2) + 2 ^ n : ℤ) - (225 * 10 ^ n : ℤ) : ℚ) / 18

end

end A016325.P6694362985968475479

namespace A016325

/-- `(2*11^(n+2)+2^n-225*10^n)/18` -/
def P6694362985968475479.Spec : Prop :=
  ∀ n, P6694362985968475479.a n = (A016325 n : ℚ)

theorem P6694362985968475479.correct : P6694362985968475479.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016325, Nat.add_sub_cancel, A016325.P6694362985968475479.a, A016325.P115230180080305060.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016325, Nat.add_sub_cancel, A016325.P6694362985968475479.a, A016325.P115230180080305060.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016325

/-! ## A016325.P9476212723109669742

`A016134(n)+11*a(n-1)` with `a(0)=1`
-/

namespace A016325.P9476212723109669742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016134 n + 11 * a (n - 1)

end

end A016325.P9476212723109669742

namespace A016325

/-- `A016134(n)+11*a(n-1)` -/
def P9476212723109669742.Spec : Prop :=
  ∀ n, P9476212723109669742.a n = A016325 n

end A016325

/-! ## A016325.P9573568143234039413

`Δ[A016206(n)-A016205(n)]`
-/

namespace A016325.P9573568143234039413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016206 n - A016205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016325.P9573568143234039413

namespace A016325

/-- `Δ[A016206(n)-A016205(n)]` -/
def P9573568143234039413.Spec : Prop :=
  ∀ n, P9573568143234039413.a n = A016325 n

end A016325

/-! ## A016325.P7092748009201444630

`2*A016322(n)-A016321(n)`
-/

namespace A016325.P7092748009201444630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016322 n - A016321 n

end

end A016325.P7092748009201444630

namespace A016325

/-- `2*A016322(n)-A016321(n)` -/
def P7092748009201444630.Spec : Prop :=
  ∀ n, P7092748009201444630.a n = A016325 n

end A016325

/-! ## A016325.P8369414894843220294

`2*A019742(n)-A025983(n)`
-/

namespace A016325.P8369414894843220294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019742 n - A025983 n

end

end A016325.P8369414894843220294

namespace A016325

/-- `2*A019742(n)-A025983(n)` -/
def P8369414894843220294.Spec : Prop :=
  ∀ n, P8369414894843220294.a n = A016325 n

end A016325

/-! ## A016325.P13019962705530703608

`A016279(n)+A018206(n)-A016280(n)`
-/

namespace A016325.P13019962705530703608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016279 n + (A018206 n - A016280 n)

end

end A016325.P13019962705530703608

namespace A016325

/-- `A016279(n)+A018206(n)-A016280(n)` -/
def P13019962705530703608.Spec : Prop :=
  ∀ n, P13019962705530703608.a n = A016325 n

end A016325

/-!
# A016326: Expansion of 1/((1-2x)(1-10x)(1-12x)).

The programs for A016326, the canonical program `A016326.P5111208314396314844` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A016326 has offset 0).

The definition of A016326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A016326.P5111208314396314844

`22*a(n-1)-120*a(n-2)+2^n` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A016326

/-- `22*a(n-1)-120*a(n-2)+2^n` -/
def P5111208314396314844.Spec : Prop :=
  ∀ n, P5111208314396314844.a n = A016326 n

theorem P5111208314396314844.correct : P5111208314396314844.Spec := by
  intro n
  simp only [A016326]

end A016326

/-! ## A016326.P8781089989688158846

`(12^(n+2)+2^n-125*10^n)/20`
-/

namespace A016326.P8781089989688158846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 2) + 2 ^ n : ℤ) - (125 * 10 ^ n : ℤ) : ℚ) / 20

end

end A016326.P8781089989688158846

namespace A016326

/-- `(12^(n+2)+2^n-125*10^n)/20` -/
def P8781089989688158846.Spec : Prop :=
  ∀ n, P8781089989688158846.a n = (A016326 n : ℚ)

theorem P8781089989688158846.correct : P8781089989688158846.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A016326, Nat.add_sub_cancel, A016326.P8781089989688158846.a, A016326.P5111208314396314844.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A016326, Nat.add_sub_cancel, A016326.P8781089989688158846.a, A016326.P5111208314396314844.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A016326

/-! ## A016326.P11122624642281485971

`A016134(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A016326.P11122624642281485971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016134 n + 12 * a (n - 1)

end

end A016326.P11122624642281485971

namespace A016326

/-- `A016134(n)+12*a(n-1)` -/
def P11122624642281485971.Spec : Prop :=
  ∀ n, P11122624642281485971.a n = A016326 n

end A016326

/-! ## A016326.P10533666375665216704

`a(n-1)+A016196(n)+a(n-1)` with `a(0)=1`
-/

namespace A016326.P10533666375665216704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016196 n + a (n - 1))

end

end A016326.P10533666375665216704

namespace A016326

/-- `a(n-1)+A016196(n)+a(n-1)` -/
def P10533666375665216704.Spec : Prop :=
  ∀ n, P10533666375665216704.a n = A016326 n

end A016326

/-! ## A016326.P8474335689175426229

`2*A016320(n)-A016317(n)`
-/

namespace A016326.P8474335689175426229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016320 n - A016317 n

end

end A016326.P8474335689175426229

namespace A016326

/-- `2*A016320(n)-A016317(n)` -/
def P8474335689175426229.Spec : Prop :=
  ∀ n, P8474335689175426229.a n = A016326 n

end A016326

/-! ## A016326.P17139657294583592575

`A016228(n)+A000225(n)*A016228(n)`
-/

namespace A016326.P17139657294583592575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016228 n + A000225 n * A016228 n

end

end A016326.P17139657294583592575

namespace A016326

/-- `A016228(n)+A000225(n)*A016228(n)` -/
def P17139657294583592575.Spec : Prop :=
  ∀ n, P17139657294583592575.a n = A016326 n

end A016326

/-!
# A016327: Inverse of 2318th cyclotomic polynomial.

The programs for A016327, there is no canonical definition to state claims against.
-/

/-! ## A016327.P795711243385944548

`A009001(2*n)*A015168(n)`
-/

namespace A016327.P795711243385944548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A015168 n

end

end A016327.P795711243385944548

/-! ## A016327.P13048859627120067205

`(val(n, A167790(n+1))-1)*a(n-1)` with `a(0)=1`
-/

namespace A016327.P13048859627120067205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.valuation n (A167790 (n + 1)).toNat : ℤ) - 1) * a (n - 1)

end

end A016327.P13048859627120067205

/-! ## A016327.P16961037094307225471

`(A000079((A204560(n+3)-2)^n)-2)^n`
-/

namespace A016327.P16961037094307225471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 ((A204560 (n + 3) - 2) ^ n).toNat - 2) ^ n

end

end A016327.P16961037094307225471

/-! ## A016327.P16716119038381868625

`A010815(A000326(n)%A349495(n+2))`
-/

namespace A016327.P16716119038381868625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (A000326 n) (A349495 (n + 2))).toNat

end

end A016327.P16716119038381868625

/-! ## A016327.P13481137333826270563

`A016023(n)%A157439(n)`
-/

namespace A016327.P13481137333826270563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016023 n) (A157439 n)

end

end A016327.P13481137333826270563

/-!
# A016328: 120th cyclotomic polynomial.

The programs for A016328, there is no canonical definition to state claims against.
-/

/-! ## A016328.P7246612794927921085

`A015329(n+88)`
-/

namespace A016328.P7246612794927921085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015329 (n + 88)

end

end A016328.P7246612794927921085

/-! ## A016328.P14678945081732712563

`A016289(n)+char[35]`
-/

namespace A016328.P14678945081732712563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016289 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016328.P14678945081732712563

/-! ## A016328.P1242805127162569058

`A015569(n)+char[39]`
-/

namespace A016328.P1242805127162569058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015569 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016328.P1242805127162569058

/-! ## A016328.P9923266835707913682

`A015569(comp[(6*(n+1))²])`
-/

namespace A016328.P9923266835707913682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1)) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015569 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A016328.P9923266835707913682

/-! ## A016328.P813690991063506639

`A008683(∑[or(4, n+1)²+n+1])`
-/

namespace A016328.P813690991063506639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (n + 1) ^ 2 + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016328.P813690991063506639

/-!
# A016329: 126th cyclotomic polynomial.

The programs for A016329, there is no canonical definition to state claims against.
-/

/-! ## A016329.P1454861476184013030

`A015647(abs(36-n))`
-/

namespace A016329.P1454861476184013030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 |36 - (n : ℤ)|.toNat

end

end A016329.P1454861476184013030

/-! ## A016329.P2983886616232818946

`A016151(n)+char[37]`
-/

namespace A016329.P2983886616232818946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016329.P2983886616232818946

/-! ## A016329.P6474938773992917435

`A015647(n)+char[38]`
-/

namespace A016329.P6474938773992917435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016329.P6474938773992917435

/-! ## A016329.P8614363970561351456

`A016151(n/gcd(11, n))`
-/

namespace A016329.P8614363970561351456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016151 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 11 n : ℚ))).toNat

end

end A016329.P8614363970561351456

/-! ## A016329.P5810875712629128784

`(-1)^n*A015206(n)`
-/

namespace A016329.P5810875712629128784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015206 n

end

end A016329.P5810875712629128784

/-!
# A016330: 130th cyclotomic polynomial.

The programs for A016330, there is no canonical definition to state claims against.
-/

/-! ## A016330.P15312402295709179278

`A016368(2*n)`
-/

namespace A016330.P15312402295709179278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016368 (2 * n)

end

end A016330.P15312402295709179278

/-! ## A016330.P13119446198691029000

`(-1)^n*A011639(n)`
-/

namespace A016330.P13119446198691029000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011639 n

end

end A016330.P13119446198691029000

/-! ## A016330.P18110308856765847508

`A016361(A024657(n))`
-/

namespace A016330.P18110308856765847508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016361 (A024657 n).toNat

end

end A016330.P18110308856765847508

/-! ## A016330.P16455855931700923505

`A016361(A140281(n))`
-/

namespace A016330.P16455855931700923505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016361 (A140281 n).toNat

end

end A016330.P16455855931700923505

/-! ## A016330.P3974867317963204355

`A016361(A249873(n))`
-/

namespace A016330.P3974867317963204355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016361 (A249873 n).toNat

end

end A016330.P3974867317963204355

/-!
# A016331: 132nd cyclotomic polynomial.

The programs for A016331, there is no canonical definition to state claims against.
-/

/-! ## A016331.P17860868489181565497

`round(sin(∑[n+1]%(n+2)))`
-/

namespace A016331.P17860868489181565497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℝ))

end

end A016331.P17860868489181565497

/-! ## A016331.P8417415583730746871

`round(sin(or(1, n)-lcm(2, n)/2))`
-/

namespace A016331.P8417415583730746871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((Nat.lor 1 n : ℚ) - (Nat.lcm 2 n : ℚ) / 2 : ℝ))

end

end A016331.P8417415583730746871

/-! ## A016331.P737512998905135906

`round(sin(Δ[or(1, n+1)²/8]))`
-/

namespace A016331.P737512998905135906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 1) ^ 2 : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (f1 (n + 1) - f1 n : ℝ))

end

end A016331.P737512998905135906

/-! ## A016331.P13863574403663453854

`round(sin((n/2+1)*char[2*n]))`
-/

namespace A016331.P13863574403663453854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (((n : ℚ) / 2 + 1) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) : ℝ))

end

end A016331.P13863574403663453854

/-! ## A016331.P8902783708726462564

`round(sin(C(n+3, 2)%(n+2)))%2`
-/

namespace A016331.P8902783708726462564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sin ((Nat.choose (n + 3) 2 % (n + 2) : ℕ) : ℝ))) 2

end

end A016331.P8902783708726462564

/-!
# A016332: 133rd cyclotomic polynomial.

The programs for A016332, there is no canonical definition to state claims against.
-/

/-! ## A016332.P5015351411685388165

`(-1)^n*A016369(n)`
-/

namespace A016332.P5015351411685388165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016369 n

end

end A016332.P5015351411685388165

/-! ## A016332.P6534033414155536915

`A016407(A391163(n))`
-/

namespace A016332.P6534033414155536915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016407 (A391163 n).toNat

end

end A016332.P6534033414155536915

/-! ## A016332.P417478301965030213

`A016407(A054967(n+1))`
-/

namespace A016332.P417478301965030213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016407 (A054967 (n + 1)).toNat

end

end A016332.P417478301965030213

/-! ## A016332.P9195938662487311382

`A016369(n)*A033999(n)`
-/

namespace A016332.P9195938662487311382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016369 n * A033999 n

end

end A016332.P9195938662487311382

/-! ## A016332.P10077467822463215380

`round(A016369(n)/A280193(n))`
-/

namespace A016332.P10077467822463215380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016369 n : ℚ) / (A280193 n : ℚ))

end

end A016332.P10077467822463215380

/-! ## A016332.P17320062945395466056

`A016369(n)*A062157(n+1)`
-/

namespace A016332.P17320062945395466056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016369 n * A062157 (n + 1)

end

end A016332.P17320062945395466056

/-! ## A016332.P17671554865901135501

`A016369(n)*A056594(2*n)`
-/

namespace A016332.P17671554865901135501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016369 n * A056594 (2 * n)

end

end A016332.P17671554865901135501

/-! ## A016332.P11605651157065347493

`A016369(n)*A034947(2*n+1)`
-/

namespace A016332.P11605651157065347493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016369 n * A034947 (2 * n + 1)

end

end A016332.P11605651157065347493

/-! ## A016332.P1008556680627317197

`A062157(A142150(n+1+A016369(n)+n))`
-/

namespace A016332.P1008556680627317197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A142150 ((n + 1 : ℤ) + (A016369 n + (n : ℤ))).toNat).toNat

end

end A016332.P1008556680627317197

/-!
# A016333: 138th cyclotomic polynomial.

The programs for A016333, there is no canonical definition to state claims against.
-/

/-! ## A016333.P9577456908683883438

`round(sin(cos(n)))`
-/

namespace A016333.P9577456908683883438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.cos (n : ℝ)))

end

end A016333.P9577456908683883438

/-! ## A016333.P8503736823776009036

`round(sinh(cos(n)))`
-/

namespace A016333.P8503736823776009036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.cos (n : ℝ)))

end

end A016333.P8503736823776009036

/-! ## A016333.P4156117229607649493

`round(sin(n-11))`
-/

namespace A016333.P4156117229607649493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n : ℤ) - 11 : ℝ))

end

end A016333.P4156117229607649493

/-! ## A016333.P7802126547138337304

`round(cos(n%25))`
-/

namespace A016333.P7802126547138337304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n % 25 : ℕ) : ℝ))

end

end A016333.P7802126547138337304

/-! ## A016333.P6675711550435508809

`round(cos(n+44))`
-/

namespace A016333.P6675711550435508809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (n + 44 : ℝ))

end

end A016333.P6675711550435508809

/-!
# A016334: 140th cyclotomic polynomial.

The programs for A016334, there is no canonical definition to state claims against.
-/

/-! ## A016334.P11953447403087650847

`A016371(2*n)`
-/

namespace A016334.P11953447403087650847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016371 (2 * n)

end

end A016334.P11953447403087650847

/-! ## A016334.P1032523828083088

`A016389(floor(5*n/2))`
-/

namespace A016334.P1032523828083088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 ⌊5 * ((n : ℚ) / 2)⌋.toNat

end

end A016334.P1032523828083088

/-! ## A016334.P15764055687904278098

`A016371(comp[or(2, n)-1])%2`
-/

namespace A016334.P15764055687904278098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 2

end

end A016334.P15764055687904278098

/-! ## A016334.P13196371248811045643

`A016389(∑[gcd(2, n)²]-4)^3`
-/

namespace A016334.P13196371248811045643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (∑ j ∈ Finset.range (n + 1), f1 j - 4) ^ 3

end

end A016334.P13196371248811045643

/-! ## A016334.P437291898580504864

`A016371(A005843(n))^3`
-/

namespace A016334.P437291898580504864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016371 (A005843 n).toNat ^ 3

end

end A016334.P437291898580504864

/-!
# A016335: 143rd cyclotomic polynomial.

The programs for A016335, there is no canonical definition to state claims against.
-/

/-! ## A016335.P8691736659027251896

`(-1)^n*A016373(n)`
-/

namespace A016335.P8691736659027251896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016373 n

end

end A016335.P8691736659027251896

/-! ## A016335.P11449500921091308171

`A016373(char[2]+n)/(-1)^n`
-/

namespace A016335.P11449500921091308171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016373 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A016335.P11449500921091308171

/-! ## A016335.P1058854874976468750

`A016373(n)*A033999(n)`
-/

namespace A016335.P1058854874976468750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016373 n * A033999 n

end

end A016335.P1058854874976468750

/-! ## A016335.P8119280603563404846

`round(A016373(n)/A280193(n))`
-/

namespace A016335.P8119280603563404846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016373 n : ℚ) / (A280193 n : ℚ))

end

end A016335.P8119280603563404846

/-! ## A016335.P10666032422115418275

`round(A016373(n)/A280560(n))`
-/

namespace A016335.P10666032422115418275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016373 n : ℚ) / (A280560 n : ℚ))

end

end A016335.P10666032422115418275

/-! ## A016335.P2266149913112408351

`A016373(n)*A056594(2*n)`
-/

namespace A016335.P2266149913112408351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016373 n * A056594 (2 * n)

end

end A016335.P2266149913112408351

/-!
# A016336: 145th cyclotomic polynomial.

The programs for A016336, there is no canonical definition to state claims against.
-/

/-! ## A016336.P14533062178598817624

`(-1)^n*A016375(n)`
-/

namespace A016336.P14533062178598817624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016375 n

end

end A016336.P14533062178598817624

/-! ## A016336.P8175781160680041432

`A016374(A047314(n+1))`
-/

namespace A016336.P8175781160680041432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016374 (A047314 (n + 1)).toNat

end

end A016336.P8175781160680041432

/-! ## A016336.P3130855071277898737

`A016375(n)*A033999(n)`
-/

namespace A016336.P3130855071277898737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016375 n * A033999 n

end

end A016336.P3130855071277898737

/-! ## A016336.P2862211923723395643

`round(A016375(n)/A280193(n))`
-/

namespace A016336.P2862211923723395643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016375 n : ℚ) / (A280193 n : ℚ))

end

end A016336.P2862211923723395643

/-! ## A016336.P15146146491609443062

`round(A016375(n)/A280560(n))`
-/

namespace A016336.P15146146491609443062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016375 n : ℚ) / (A280560 n : ℚ))

end

end A016336.P15146146491609443062

/-! ## A016336.P11098163936979436343

`A016374(A047326(n+2)-1)`
-/

namespace A016336.P11098163936979436343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016374 (A047326 (n + 2) - 1).toNat

end

end A016336.P11098163936979436343

/-! ## A016336.P11258363932497125420

`A016375(n)/A033999(n+2)`
-/

namespace A016336.P11258363932497125420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016375 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016336.P11258363932497125420

/-! ## A016336.P16200843116306775563

`A016375(n)*A056594(2*n)`
-/

namespace A016336.P16200843116306775563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016375 n * A056594 (2 * n)

end

end A016336.P16200843116306775563

/-! ## A016336.P18332643334708508526

`A016375(n)/A009001(2*n)`
-/

namespace A016336.P18332643334708508526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016375 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016336.P18332643334708508526

/-! ## A016336.P5906573945866997400

`A016375(n)/A010892(3*n)`
-/

namespace A016336.P5906573945866997400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016375 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A016336.P5906573945866997400

/-! ## A016336.P15350127385926998232

`A016375(n)*A034947(2*n+1)`
-/

namespace A016336.P15350127385926998232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016375 n * A034947 (2 * n + 1)

end

end A016336.P15350127385926998232

/-! ## A016336.P1838736088635534262

`A010892(A016789(n)-A016375(n))`
-/

namespace A016336.P1838736088635534262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016375 n).toNat

end

end A016336.P1838736088635534262

/-! ## A016336.P15965767783464284956

`A016375(n)*A097062(Δ[A004526(n)])`
-/

namespace A016336.P15965767783464284956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016375 n * A097062 (f1 (n + 1) - f1 n).toNat

end

end A016336.P15965767783464284956

/-!
# A016337: 150th cyclotomic polynomial.

The programs for A016337, there is no canonical definition to state claims against.
-/

/-! ## A016337.P945932259102468956

`A015659(n)+char[41]`
-/

namespace A016337.P945932259102468956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016337.P945932259102468956

/-! ## A016337.P14736633003697213170

`A015959(n)+char[41]`
-/

namespace A016337.P14736633003697213170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015959 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016337.P14736633003697213170

/-! ## A016337.P16894542634618684949

`A014984(3*n+25)`
-/

namespace A016337.P16894542634618684949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014984 (3 * n + 25)

end

end A016337.P16894542634618684949

/-! ## A016337.P10521268972483260304

`(-1)^n*A015284(n)`
-/

namespace A016337.P10521268972483260304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A015284 n

end

end A016337.P10521268972483260304

/-! ## A016337.P2253925386999161600

`A015659(n-∑{digits}[n, C(#, 9)])`
-/

namespace A016337.P2253925386999161600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015659 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum)

end

end A016337.P2253925386999161600

/-!
# A016338: 154th cyclotomic polynomial.

The programs for A016338, there is no canonical definition to state claims against.
-/

/-! ## A016338.P16140237570278223397

`A016378(2*n)`
-/

namespace A016338.P16140237570278223397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016378 (2 * n)

end

end A016338.P16140237570278223397

/-! ## A016338.P12194375690268998493

`A016378(n+n)^3`
-/

namespace A016338.P12194375690268998493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016378 (n + n) ^ 3

end

end A016338.P12194375690268998493

/-! ## A016338.P16364976270127979824

`A016378(comp[or(1, n)])%2`
-/

namespace A016338.P16364976270127979824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016378 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 2

end

end A016338.P16364976270127979824

/-! ## A016338.P9341515370478320181

`(-1)^n*A011642(n)`
-/

namespace A016338.P9341515370478320181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011642 n

end

end A016338.P9341515370478320181

/-! ## A016338.P4519276210936347257

`A016378(comp[Δ[n²]])%2`
-/

namespace A016338.P4519276210936347257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016378 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 2

end

end A016338.P4519276210936347257

/-! ## A016338.P15075247673814421822

`A011642(n)*A033999(n)`
-/

namespace A016338.P15075247673814421822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 n * A033999 n

end

end A016338.P15075247673814421822

/-! ## A016338.P15516336832690525081

`A011642(n)*A056594(2*n)`
-/

namespace A016338.P15516336832690525081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 n * A056594 (2 * n)

end

end A016338.P15516336832690525081

/-!
# A016339: 155th cyclotomic polynomial.

The programs for A016339, there is no canonical definition to state claims against.
-/

/-! ## A016339.P9657726762628557099

`(-1)^n*A016379(n)`
-/

namespace A016339.P9657726762628557099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016379 n

end

end A016339.P9657726762628557099

/-! ## A016339.P16880708015889559621

`A016379(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016339.P16880708015889559621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016379 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016339.P16880708015889559621

/-! ## A016339.P9214314287494211776

`A016377(A047337(n+1))`
-/

namespace A016339.P9214314287494211776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016377 (A047337 (n + 1)).toNat

end

end A016339.P9214314287494211776

/-! ## A016339.P17158182879240197535

`A016379(n)*A033999(n)`
-/

namespace A016339.P17158182879240197535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016379 n * A033999 n

end

end A016339.P17158182879240197535

/-! ## A016339.P11671040533185017510

`round(A016379(n)/A280193(n))`
-/

namespace A016339.P11671040533185017510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016379 n : ℚ) / (A280193 n : ℚ))

end

end A016339.P11671040533185017510

/-! ## A016339.P3454990711249711935

`round(A016379(n)/A280560(n))`
-/

namespace A016339.P3454990711249711935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016379 n : ℚ) / (A280560 n : ℚ))

end

end A016339.P3454990711249711935

/-! ## A016339.P17979192453500677703

`A016379(n)*A056594(2*n)`
-/

namespace A016339.P17979192453500677703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016379 n * A056594 (2 * n)

end

end A016339.P17979192453500677703

/-! ## A016339.P5116543421946394624

`A056594(n+1+n-A016379(n))`
-/

namespace A016339.P5116543421946394624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 ((n + 1 + n : ℤ) - A016379 n).toNat

end

end A016339.P5116543421946394624

/-! ## A016339.P2039556272537506903

`A016379(n)*A091338(A016921(n))`
-/

namespace A016339.P2039556272537506903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016379 n * A091338 (A016921 n).toNat

end

end A016339.P2039556272537506903

/-! ## A016339.P14988120271389025479

`A010892(A008486(n)+A016379(n)-1)`
-/

namespace A016339.P14988120271389025479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n + (A016379 n - 1)).toNat

end

end A016339.P14988120271389025479

/-! ## A016339.P8501657410961358752

`A010892(A008486(n)-(1-A016379(n)))`
-/

namespace A016339.P8501657410961358752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n - (1 - A016379 n)).toNat

end

end A016339.P8501657410961358752

/-!
# A016340: 156th cyclotomic polynomial.

The programs for A016340, there is no canonical definition to state claims against.
-/

/-! ## A016340.P15185598065036843471

`round((a(n-2)-a(n-4))/∑{e}[n+1, #])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A016340.P15185598065036843471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) - a (n - 4) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ))

end

end A016340.P15185598065036843471

/-! ## A016340.P15435918400686481339

`round((a(n-2)-a(n-4))/∏{e}[n+1, #])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A016340.P15435918400686481339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) - a (n - 4) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ))

end

end A016340.P15435918400686481339

/-! ## A016340.P6950772955517674431

`A016271(ceil(n/2))%gcd(2, n)`
-/

namespace A016340.P6950772955517674431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016271 ⌈(n : ℚ) / 2⌉.toNat) (Nat.gcd 2 n : ℤ)

end

end A016340.P6950772955517674431

/-! ## A016340.P5253562258029664243

`(n+1)%2*A016271(floor(n/2))`
-/

namespace A016340.P5253562258029664243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A016271 ⌊(n : ℚ) / 2⌋.toNat

end

end A016340.P5253562258029664243

/-! ## A016340.P4531141388260190807

`(a(n-2)-a(n-4))%A226608(n+1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A016340.P4531141388260190807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 0] fun n a =>
  Int.tmod (a (n - 2) - a (n - 4)) (A226608 (n + 1))

end

end A016340.P4531141388260190807

/-!
# A016341: 161st cyclotomic polynomial.

The programs for A016341, there is no canonical definition to state claims against.
-/

/-! ## A016341.P5268143128326776558

`(-1)^n*A016382(n)`
-/

namespace A016341.P5268143128326776558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016382 n

end

end A016341.P5268143128326776558

/-! ## A016341.P10567134673995867716

`A016382(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016341.P10567134673995867716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016382 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016341.P10567134673995867716

/-! ## A016341.P14393154896691068178

`A016382(n)*A033999(n)`
-/

namespace A016341.P14393154896691068178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016382 n * A033999 n

end

end A016341.P14393154896691068178

/-! ## A016341.P9665354913796514909

`round(A016382(n)/A280193(n))`
-/

namespace A016341.P9665354913796514909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016382 n : ℚ) / (A280193 n : ℚ))

end

end A016341.P9665354913796514909

/-! ## A016341.P11621660956699009067

`round(A016382(n)/A280560(n))`
-/

namespace A016341.P11621660956699009067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016382 n : ℚ) / (A280560 n : ℚ))

end

end A016341.P11621660956699009067

/-! ## A016341.P16528210776724280397

`A016382(n)*A056594(2*n)`
-/

namespace A016341.P16528210776724280397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016382 n * A056594 (2 * n)

end

end A016341.P16528210776724280397

/-! ## A016341.P16757064189183467598

`A016382(n)*A057077(2*n)`
-/

namespace A016341.P16757064189183467598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016382 n * A057077 (2 * n)

end

end A016341.P16757064189183467598

/-! ## A016341.P9925492169085281127

`A016382(n)*A034947(2*n+1)`
-/

namespace A016341.P9925492169085281127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016382 n * A034947 (2 * n + 1)

end

end A016341.P9925492169085281127

/-! ## A016341.P12865603054848715073

`A010892(A016789(n)-A016382(n))`
-/

namespace A016341.P12865603054848715073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016382 n).toNat

end

end A016341.P12865603054848715073

/-! ## A016341.P332218876834546687

`A010892(A008486(n)+A016382(n)-1)`
-/

namespace A016341.P332218876834546687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n + (A016382 n - 1)).toNat

end

end A016341.P332218876834546687

/-! ## A016341.P13658809627221621934

`A010892(A008486(n)-(1-A016382(n)))`
-/

namespace A016341.P13658809627221621934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n - (1 - A016382 n)).toNat

end

end A016341.P13658809627221621934

/-!
# A016342: 165th cyclotomic polynomial.

The programs for A016342, there is no canonical definition to state claims against.
-/

/-! ## A016342.P13163962483683700692

`A016424(3*n)`
-/

namespace A016342.P13163962483683700692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016424 (3 * n)

end

end A016342.P13163962483683700692

/-! ## A016342.P13047069295062983656

`(-1)^n*A016385(n)`
-/

namespace A016342.P13047069295062983656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016385 n

end

end A016342.P13047069295062983656

/-! ## A016342.P13447435444159169367

`A016424(A008585(n))%3`
-/

namespace A016342.P13447435444159169367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016424 (A008585 n).toNat) 3

end

end A016342.P13447435444159169367

/-! ## A016342.P8287977791501383808

`A016385(n)*A033999(n)`
-/

namespace A016342.P8287977791501383808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016385 n * A033999 n

end

end A016342.P8287977791501383808

/-! ## A016342.P7641418474449221867

`A016385(n)/A033999(n²)`
-/

namespace A016342.P7641418474449221867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016385 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A016342.P7641418474449221867

/-! ## A016342.P17539693753048333177

`A016424(A005843(n)+n)%3`
-/

namespace A016342.P17539693753048333177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016424 (A005843 n + (n : ℤ)).toNat) 3

end

end A016342.P17539693753048333177

/-! ## A016342.P4791073958810221060

`floor(A016424(A008486(n))+1/(n+1))`
-/

namespace A016342.P4791073958810221060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016424 (A008486 n).toNat : ℚ) + 1 / (n + 1 : ℚ)⌋

end

end A016342.P4791073958810221060

/-! ## A016342.P16921251865897831124

`A016424(A008486(n))+A000007(n)`
-/

namespace A016342.P16921251865897831124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016424 (A008486 n).toNat + A000007 n

end

end A016342.P16921251865897831124

/-!
# A016343: 168th cyclotomic polynomial.

The programs for A016343, there is no canonical definition to state claims against.
-/

/-! ## A016343.P12344624794157731284

`A016193(abs(48-n))`
-/

namespace A016343.P12344624794157731284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 |48 - (n : ℤ)|.toNat

end

end A016343.P12344624794157731284

/-! ## A016343.P10295104029873316168

`A016193(n)^dr(n)`
-/

namespace A016343.P10295104029873316168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 n ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A016343.P10295104029873316168

/-! ## A016343.P16142952961907959360

`A015437(gcd(n, ∑[n]))`
-/

namespace A016343.P16142952961907959360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015437 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016343.P16142952961907959360

/-! ## A016343.P8667677515872741944

`A015437(lcm(2, n)/2)`
-/

namespace A016343.P8667677515872741944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015437 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A016343.P8667677515872741944

/-! ## A016343.P7094142110892031281

`A015437(Δ[ceil(C(n, 2)/2)])`
-/

namespace A016343.P7094142110892031281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015437 (f1 (n + 1) - f1 n).toNat

end

end A016343.P7094142110892031281

/-!
# A016344: 170th cyclotomic polynomial.

The programs for A016344, there is no canonical definition to state claims against.
-/

/-! ## A016344.P7603438192123362209

`A016386(2*n)`
-/

namespace A016344.P7603438192123362209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016386 (2 * n)

end

end A016344.P7603438192123362209

/-! ## A016344.P10692694165699117664

`A016386(n+n)^5`
-/

namespace A016344.P10692694165699117664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016386 (n + n) ^ 5

end

end A016344.P10692694165699117664

/-! ## A016344.P3050457913748700309

`(-1)^n*A011644(n)`
-/

namespace A016344.P3050457913748700309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011644 n

end

end A016344.P3050457913748700309

/-! ## A016344.P8725183293757416010

`A016386(Δ[n²]-1)%2`
-/

namespace A016344.P8725183293757416010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) 2

end

end A016344.P8725183293757416010

/-! ## A016344.P11823481186607442579

`(A016386(abs(1-n)+1+n)%-2)%-2`
-/

namespace A016344.P11823481186607442579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A016386 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat) (-2)) (-2)

end

end A016344.P11823481186607442579

/-! ## A016344.P30151052016040275

`A016392(A102492(n+1))`
-/

namespace A016344.P30151052016040275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016392 (A102492 (n + 1)).toNat

end

end A016344.P30151052016040275

/-! ## A016344.P13352098608446626603

`A011644(n)*A033999(n)`
-/

namespace A016344.P13352098608446626603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011644 n * A033999 n

end

end A016344.P13352098608446626603

/-! ## A016344.P10177523316649731386

`A011644(n)*A056594(2*n)`
-/

namespace A016344.P10177523316649731386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011644 n * A056594 (2 * n)

end

end A016344.P10177523316649731386

/-! ## A016344.P1530344970817560347

`A016386(Δ[n²]-1)/A007318(C(n, n²))`
-/

namespace A016344.P1530344970817560347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A016344.P1530344970817560347

/-! ## A016344.P5332523986836011641

`A016386(n+n)+2%A000041(C(2, n+2))`
-/

namespace A016344.P5332523986836011641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016386 (n + n) + Int.tmod 2 (A000041 (Nat.choose 2 (n + 2)))

end

end A016344.P5332523986836011641

/-!
# A016345: 174th cyclotomic polynomial.

The programs for A016345, there is no canonical definition to state claims against.
-/

/-! ## A016345.P8422972213061679343

`round(cos(n/cos(3)))`
-/

namespace A016345.P8422972213061679343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n : ℝ) / Real.cos (3 : ℝ)))

end

end A016345.P8422972213061679343

/-! ## A016345.P6293751912014326648

`round(cos(∑[n^cos(11)]))`
-/

namespace A016345.P6293751912014326648
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.cos (11 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A016345.P6293751912014326648

/-! ## A016345.P15968036323553029380

`round(cos(n*(cos(3)+2)))`
-/

namespace A016345.P15968036323553029380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n : ℝ) * (Real.cos (3 : ℝ) + 2)))

end

end A016345.P15968036323553029380

/-! ## A016345.P12279790773122089716

`ceil(∑[cos((n+1)/cos(3))])`
-/

namespace A016345.P12279790773122089716
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n + 1 : ℝ) / Real.cos (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A016345.P12279790773122089716

/-! ## A016345.P3140226616761119273

`round(sin((n+1)/sin(4/3)))`
-/

namespace A016345.P3140226616761119273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n + 1 : ℝ) / Real.sin ((4 : ℚ) / 3 : ℝ)))

end

end A016345.P3140226616761119273

/-! ## A016345.P9229450242176985027

`floor(∑[cos((n+1)/cos(3))])+1`
-/

namespace A016345.P9229450242176985027
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n + 1 : ℝ) / Real.cos (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A016345.P9229450242176985027

/-! ## A016345.P47814244418160144

`ceil(∑[cos((cos(3)+2)*(n+1))])`
-/

namespace A016345.P47814244418160144
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((Real.cos (3 : ℝ) + 2) * (n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A016345.P47814244418160144

/-! ## A016345.P16139753146655676654

`A014067(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A016345.P16139753146655676654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A014067 n - a (n - 3)

end

end A016345.P16139753146655676654

/-! ## A016345.P13691799969668045534

`A163810(A004922(n+1))`
-/

namespace A016345.P13691799969668045534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A004922 (n + 1)).toNat

end

end A016345.P13691799969668045534

/-! ## A016345.P9802279060154341635

`A163810(A048846(n+1))`
-/

namespace A016345.P9802279060154341635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A048846 (n + 1)).toNat

end

end A016345.P9802279060154341635

/-!
# A016346: 175th cyclotomic polynomial.

The programs for A016346, there is no canonical definition to state claims against.
-/

/-! ## A016346.P7160039822119368779

`(-1)^n*A016389(n)`
-/

namespace A016346.P7160039822119368779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016389 n

end

end A016346.P7160039822119368779

/-! ## A016346.P14455729456633434699

`A016389(char[1]+n)/(-1)^n`
-/

namespace A016346.P14455729456633434699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016389 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / ((-1) ^ n : ℚ)

end

end A016346.P14455729456633434699

/-! ## A016346.P7465837506736402745

`A016389(n)*A033999(n)`
-/

namespace A016346.P7465837506736402745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n * A033999 n

end

end A016346.P7465837506736402745

/-! ## A016346.P4359599695037770152

`A016389(n)*A081729(n)`
-/

namespace A016346.P4359599695037770152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n * A081729 n

end

end A016346.P4359599695037770152

/-! ## A016346.P18219403755665168263

`A016389(n)*A099443(n)`
-/

namespace A016346.P18219403755665168263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n * A099443 n

end

end A016346.P18219403755665168263

/-! ## A016346.P17595613103769337666

`A016389(n)*A135447(n)`
-/

namespace A016346.P17595613103769337666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n * A135447 n

end

end A016346.P17595613103769337666

/-! ## A016346.P1733959391608698295

`A016389(n)*A056594(2*n)`
-/

namespace A016346.P1733959391608698295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 n * A056594 (2 * n)

end

end A016346.P1733959391608698295

/-! ## A016346.P588391393352453263

`abs(A016389(n))*A016407(3*n)`
-/

namespace A016346.P588391393352453263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016389 n| * A016407 (3 * n)

end

end A016346.P588391393352453263

/-! ## A016346.P9448839433470044975

`A056594(A016921(n)-A016389(n))`
-/

namespace A016346.P9448839433470044975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016921 n - A016389 n).toNat

end

end A016346.P9448839433470044975

/-!
# A016347: 180th cyclotomic polynomial.

The programs for A016347, there is no canonical definition to state claims against.
-/

/-! ## A016347.P9213805984268449184

`A015989(n)+char[49]`
-/

namespace A016347.P9213805984268449184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A016347.P9213805984268449184

/-! ## A016347.P13938014450629580127

`A015989(n-char[49])`
-/

namespace A016347.P13938014450629580127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015989 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A016347.P13938014450629580127

/-! ## A016347.P1372687938124487617

`A015569(round(2*n/3))`
-/

namespace A016347.P1372687938124487617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015569 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A016347.P1372687938124487617

/-! ## A016347.P229701225101652125

`A016049(round(2*n/3))`
-/

namespace A016347.P229701225101652125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016049 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A016347.P229701225101652125

/-! ## A016347.P10330420848937035439

`A015719(gcd(n, floor(n/2)))`
-/

namespace A016347.P10330420848937035439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015719 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A016347.P10330420848937035439

/-!
# A016348: 182nd cyclotomic polynomial.

The programs for A016348, there is no canonical definition to state claims against.
-/

/-! ## A016348.P15531122489163899449

`A016391(2*n)`
-/

namespace A016348.P15531122489163899449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016391 (2 * n)

end

end A016348.P15531122489163899449

/-! ## A016348.P16071043794722630626

`A016391(n+n)%2`
-/

namespace A016348.P16071043794722630626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016391 (n + n)) 2

end

end A016348.P16071043794722630626

/-! ## A016348.P16726084710620823840

`A016391(Δ[n²]-1)^3`
-/

namespace A016348.P16726084710620823840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat ^ 3

end

end A016348.P16726084710620823840

/-! ## A016348.P6577354247169473375

`A016391(Δ[n²]-1)+A000007(n+1)`
-/

namespace A016348.P6577354247169473375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat + A000007 (n + 1)

end

end A016348.P6577354247169473375

/-! ## A016348.P7129415967005743777

`A016391(Δ[n²]-1)+A000038(n+1)`
-/

namespace A016348.P7129415967005743777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat + A000038 (n + 1)

end

end A016348.P7129415967005743777

/-! ## A016348.P9033726878601039970

`A016391(Δ[n²]-1)/or(1, A000035(n))`
-/

namespace A016348.P9033726878601039970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (Int.lor 1 (A000035 n) : ℚ)

end

end A016348.P9033726878601039970

/-! ## A016348.P14938228257444864086

`A016391(Δ[n²]-1)/A000203(gcd(n, n+1))`
-/

namespace A016348.P14938228257444864086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A000203 (Nat.gcd n (n + 1)) : ℚ)

end

end A016348.P14938228257444864086

/-! ## A016348.P4461858676765092529

`A016391(Δ[n²]-1)/A007318(-or(n, -2))`
-/

namespace A016348.P4461858676765092529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A007318 (-Int.lor (n : ℤ) (-2)).toNat : ℚ)

end

end A016348.P4461858676765092529

/-! ## A016348.P6937278754083125417

`A016391(Δ[n²]-1)/A003557(A005117(n+1))`
-/

namespace A016348.P6937278754083125417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A003557 (A005117 (n + 1)).toNat : ℚ)

end

end A016348.P6937278754083125417

/-! ## A016348.P2414751825878717850

`A016391(Δ[n²]-1)/A008683(A014963(n+1))²`
-/

namespace A016348.P2414751825878717850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016391 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A008683 (A014963 (n + 1)).toNat ^ 2 : ℚ)

end

end A016348.P2414751825878717850

/-!
# A016349: 185th cyclotomic polynomial.

The programs for A016349, there is no canonical definition to state claims against.
-/

/-! ## A016349.P3537191313372914286

`(-1)^n*A016392(n)`
-/

namespace A016349.P3537191313372914286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016392 n

end

end A016349.P3537191313372914286

/-! ## A016349.P10062088862033204832

`A016392(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016349.P10062088862033204832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016392 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016349.P10062088862033204832

/-! ## A016349.P9944258613926450980

`A016392(n)*A033999(n)`
-/

namespace A016349.P9944258613926450980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016392 n * A033999 n

end

end A016349.P9944258613926450980

/-! ## A016349.P5297625578030878998

`round(A016392(n)/A131556(n))`
-/

namespace A016349.P5297625578030878998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016392 n : ℚ) / (A131556 n : ℚ))

end

end A016349.P5297625578030878998

/-! ## A016349.P7550873222776932252

`round(A016392(n)/A131714(n))`
-/

namespace A016349.P7550873222776932252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016392 n : ℚ) / (A131714 n : ℚ))

end

end A016349.P7550873222776932252

/-! ## A016349.P2023646613608583216

`round(A016392(n)/A280193(n))`
-/

namespace A016349.P2023646613608583216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016392 n : ℚ) / (A280193 n : ℚ))

end

end A016349.P2023646613608583216

/-! ## A016349.P4585431971790670124

`A016392(n)*A056594(2*n)`
-/

namespace A016349.P4585431971790670124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016392 n * A056594 (2 * n)

end

end A016349.P4585431971790670124

/-! ## A016349.P13972310061179762828

`(-A016392(n)²)^A037465(n)`
-/

namespace A016349.P13972310061179762828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(A016392 n ^ 2) : ℚ) ^ (A037465 n : ℤ)

end

end A016349.P13972310061179762828

/-! ## A016349.P9819292520647887045

`A056594(n+1-(A016392(n)-n))`
-/

namespace A016349.P9819292520647887045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 ((n + 1 : ℤ) - (A016392 n - (n : ℤ))).toNat

end

end A016349.P9819292520647887045

/-! ## A016349.P9943145500271561627

`A016392(n)*A309873(A141310(n))`
-/

namespace A016349.P9943145500271561627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016392 n * A309873 (A141310 n).toNat

end

end A016349.P9943145500271561627

/-!
# A016350: 186th cyclotomic polynomial.

The programs for A016350, there is no canonical definition to state claims against.
-/

/-! ## A016350.P5323421917338429228

`floor(∑[cos(n/cos(97))])`
-/

namespace A016350.P5323421917338429228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℝ) / Real.cos (97 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016350.P5323421917338429228

/-! ## A016350.P6825211263434113050

`∑[round(cos(n/tanh(ϕ)))]`
-/

namespace A016350.P6825211263434113050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n : ℝ) / Real.tanh Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A016350.P6825211263434113050

/-! ## A016350.P8738524962055178058

`round(Δ[-cos(n/tanh(ϕ))])`
-/

namespace A016350.P8738524962055178058
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cos ((n : ℝ) / Real.tanh Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A016350.P8738524962055178058

/-! ## A016350.P1831951264688771941

`round(sin((16*n+15)/15))`
-/

namespace A016350.P1831951264688771941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((16 * n + 15 : ℚ) / 15 : ℝ))

end

end A016350.P1831951264688771941

/-! ## A016350.P5022510958179247339

`floor(∑[cos(2*n*cos(1))])`
-/

namespace A016350.P5022510958179247339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * ((n : ℝ) * Real.cos (1 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A016350.P5022510958179247339

/-! ## A016350.P4347592635584508432

`A014071(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A016350.P4347592635584508432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  A014071 n - a (n - 3)

end

end A016350.P4347592635584508432

/-! ## A016350.P9166654717889322996

`A010892(A123068(n+1))`
-/

namespace A016350.P9166654717889322996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A123068 (n + 1)).toNat

end

end A016350.P9166654717889322996

/-! ## A016350.P650016657151814719

`A128834(A247064(n+1))`
-/

namespace A016350.P650016657151814719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A247064 (n + 1)).toNat

end

end A016350.P650016657151814719

/-! ## A016350.P8478117510267773171

`A117441(A326835(n+1))`
-/

namespace A016350.P8478117510267773171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117441 (A326835 (n + 1)).toNat

end

end A016350.P8478117510267773171

/-! ## A016350.P9779096213519565129

`A128834(A386807(n+1))`
-/

namespace A016350.P9779096213519565129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A386807 (n + 1)).toNat

end

end A016350.P9779096213519565129

/-!
# A016351: 187th cyclotomic polynomial.

The programs for A016351, there is no canonical definition to state claims against.
-/

/-! ## A016351.P11749668670721380549

`(-1)^n*A016394(n)`
-/

namespace A016351.P11749668670721380549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016394 n

end

end A016351.P11749668670721380549

/-! ## A016351.P4042556149338381674

`A016394(n-char[1])/(-1)^n`
-/

namespace A016351.P4042556149338381674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016394 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / ((-1) ^ n : ℚ)

end

end A016351.P4042556149338381674

/-! ## A016351.P17004835545947230567

`A016394(n)*A033999(n)`
-/

namespace A016351.P17004835545947230567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016394 n * A033999 n

end

end A016351.P17004835545947230567

/-! ## A016351.P5911211415391454167

`round(A016394(n)/A280193(n))`
-/

namespace A016351.P5911211415391454167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016394 n : ℚ) / (A280193 n : ℚ))

end

end A016351.P5911211415391454167

/-! ## A016351.P17841910872362182058

`round(A016394(n)/A280560(n))`
-/

namespace A016351.P17841910872362182058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016394 n : ℚ) / (A280560 n : ℚ))

end

end A016351.P17841910872362182058

/-! ## A016351.P855544177552032200

`A016394(n)*A056594(2*n)`
-/

namespace A016351.P855544177552032200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016394 n * A056594 (2 * n)

end

end A016351.P855544177552032200

/-! ## A016351.P8878223591780882043

`A016394(n)*A055975(2*n+1)`
-/

namespace A016351.P8878223591780882043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016394 n * A055975 (2 * n + 1)

end

end A016351.P8878223591780882043

/-!
# A016352: 190th cyclotomic polynomial.

The programs for A016352, there is no canonical definition to state claims against.
-/

/-! ## A016352.P2509275338154729913

`A016396(2*n)`
-/

namespace A016352.P2509275338154729913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016396 (2 * n)

end

end A016352.P2509275338154729913

/-! ## A016352.P3665422950122808409

`A016396(n+n)^3`
-/

namespace A016352.P3665422950122808409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016396 (n + n) ^ 3

end

end A016352.P3665422950122808409

/-! ## A016352.P2661508039728028808

`(-1)^n*A011647(n)`
-/

namespace A016352.P2661508039728028808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011647 n

end

end A016352.P2661508039728028808

/-! ## A016352.P14076937030494909604

`A016396(n/(1-1/2))%2`
-/

namespace A016352.P14076937030494909604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016396 (SequenceMachineLib.roundAway ((n : ℚ) / (1 - (1 : ℚ) / 2))).toNat) 2

end

end A016352.P14076937030494909604

/-! ## A016352.P1770209314438260878

`A011647(n)*A033999(n)`
-/

namespace A016352.P1770209314438260878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 n * A033999 n

end

end A016352.P1770209314438260878

/-! ## A016352.P9863305406978741794

`A011647(n)*A056594(2*n)`
-/

namespace A016352.P9863305406978741794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 n * A056594 (2 * n)

end

end A016352.P9863305406978741794

/-! ## A016352.P10414519006823532896

`-A008683(gcd(n, n+2))*A011647(n)`
-/

namespace A016352.P10414519006823532896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (Nat.gcd n (n + 2)) * A011647 n)

end

end A016352.P10414519006823532896

/-! ## A016352.P16653255538171171338

`A016396(A093411(n+1))+A016396(n+n)`
-/

namespace A016352.P16653255538171171338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016396 (A093411 (n + 1)).toNat + A016396 (n + n)

end

end A016352.P16653255538171171338

/-!
# A016353: 195th cyclotomic polynomial.

The programs for A016353, there is no canonical definition to state claims against.
-/

/-! ## A016353.P18108367231292181810

`(-1)^n*A016398(n)`
-/

namespace A016353.P18108367231292181810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016398 n

end

end A016353.P18108367231292181810

/-! ## A016353.P9911977285522403529

`A016398(n)*A033999(n)`
-/

namespace A016353.P9911977285522403529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016398 n * A033999 n

end

end A016353.P9911977285522403529

/-! ## A016353.P7277822390480808685

`A016398(n)/A033999(n²)`
-/

namespace A016353.P7277822390480808685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016398 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A016353.P7277822390480808685

/-! ## A016353.P9312629698317129380

`A016398(n)*A197870(∑[n])`
-/

namespace A016353.P9312629698317129380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016398 n * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016353.P9312629698317129380

/-! ## A016353.P9596781521457513206

`A016398(n)/∑[A280560(n)]`
-/

namespace A016353.P9596781521457513206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016398 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A016353.P9596781521457513206

/-! ## A016353.P642109790107736521

`A016398(n)/(-1)^n^A001489(n)`
-/

namespace A016353.P642109790107736521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016398 n : ℚ) / ((-1) ^ n : ℚ) ^ (A001489 n : ℤ)

end

end A016353.P642109790107736521

/-! ## A016353.P15722907736253156563

`A016398(n)/(-1)^n^A002385(n+1)`
-/

namespace A016353.P15722907736253156563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016398 n : ℚ) / ((-1) ^ n : ℚ) ^ (A002385 (n + 1) : ℤ)

end

end A016353.P15722907736253156563

/-!
# A016354: 198th cyclotomic polynomial.

The programs for A016354, there is no canonical definition to state claims against.
-/

/-! ## A016354.P4480797646456917139

`round(sin(∑[∑[n+1]]%(n+3)))`
-/

namespace A016354.P4480797646456917139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 3) : ℕ) : ℝ))

end

end A016354.P4480797646456917139

/-! ## A016354.P2873152899242870556

`round(sin(A175676(n+3)))`
-/

namespace A016354.P2873152899242870556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A175676 (n + 3) : ℝ))

end

end A016354.P2873152899242870556

/-! ## A016354.P4156163188950735776

`(-1)^n*A011648(n)`
-/

namespace A016354.P4156163188950735776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011648 n

end

end A016354.P4156163188950735776

/-! ## A016354.P12200424259008680053

`(-1)^n*A016286(n)`
-/

namespace A016354.P12200424259008680053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016286 n

end

end A016354.P12200424259008680053

/-! ## A016354.P10484242602035988396

`round(sin(∑[A128615(n+1)]))`
-/

namespace A016354.P10484242602035988396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A016354.P10484242602035988396

/-! ## A016354.P13516118599058042601

`round(sin(A024164(2*(n+6))))`
-/

namespace A016354.P13516118599058042601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A024164 (2 * (n + 6)) : ℝ))

end

end A016354.P13516118599058042601

/-! ## A016354.P16157842622154934970

`round(sin(A027656(round(2*n/3))))`
-/

namespace A016354.P16157842622154934970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A027656 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat : ℝ))

end

end A016354.P16157842622154934970

/-! ## A016354.P2966824075228354300

`round(Δ[cos(A096027(8*(n+2)))])`
-/

namespace A016354.P2966824075228354300
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A096027 (8 * (n + 2)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A016354.P2966824075228354300

/-! ## A016354.P9109017263746346068

`round(sin(A087508(∑[(n+1)%3])))`
-/

namespace A016354.P9109017263746346068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A087508 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A016354.P9109017263746346068

/-! ## A016354.P3462220060833375513

`A016286(n)*A016350(n)`
-/

namespace A016354.P3462220060833375513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 n * A016350 n

end

end A016354.P3462220060833375513

/-!
# A016355: 203rd cyclotomic polynomial.

The programs for A016355, there is no canonical definition to state claims against.
-/

/-! ## A016355.P6735350287571445079

`(-1)^n*A016402(n)`
-/

namespace A016355.P6735350287571445079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016402 n

end

end A016355.P6735350287571445079

/-! ## A016355.P15184554094181202685

`A016402(n)*A033999(n)`
-/

namespace A016355.P15184554094181202685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016402 n * A033999 n

end

end A016355.P15184554094181202685

/-! ## A016355.P6461370260647327950

`round(A016402(n)/A280193(n))`
-/

namespace A016355.P6461370260647327950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016402 n : ℚ) / (A280193 n : ℚ))

end

end A016355.P6461370260647327950

/-! ## A016355.P6272623533782965177

`round(A016402(n)/A280560(n))`
-/

namespace A016355.P6272623533782965177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016402 n : ℚ) / (A280560 n : ℚ))

end

end A016355.P6272623533782965177

/-! ## A016355.P8292148209080354693

`A016402(n)/A033999(n+2)`
-/

namespace A016355.P8292148209080354693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016402 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016355.P8292148209080354693

/-! ## A016355.P12778249910070900121

`A016402(n)*A056594(2*n)`
-/

namespace A016355.P12778249910070900121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016402 n * A056594 (2 * n)

end

end A016355.P12778249910070900121

/-! ## A016355.P15228122467088953604

`A056594(A005408(n)-A016402(n))`
-/

namespace A016355.P15228122467088953604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016402 n).toNat

end

end A016355.P15228122467088953604

/-! ## A016355.P8400161624587396134

`A016402(n)*A081729(A014105(n))`
-/

namespace A016355.P8400161624587396134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016402 n * A081729 (A014105 n).toNat

end

end A016355.P8400161624587396134

/-! ## A016355.P663382930309109374

`A056594(A016402(n)+A005408(n+1))`
-/

namespace A016355.P663382930309109374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016402 n + A005408 (n + 1)).toNat

end

end A016355.P663382930309109374

/-!
# A016356: 209th cyclotomic polynomial.

The programs for A016356, there is no canonical definition to state claims against.
-/

/-! ## A016356.P11783420378052479435

`(-1)^n*A016405(n)`
-/

namespace A016356.P11783420378052479435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016405 n

end

end A016356.P11783420378052479435

/-! ## A016356.P6016721611062478647

`A016405(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016356.P6016721611062478647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016405 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016356.P6016721611062478647

/-! ## A016356.P16677218060070849495

`A016405(n)*A033999(n)`
-/

namespace A016356.P16677218060070849495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016405 n * A033999 n

end

end A016356.P16677218060070849495

/-! ## A016356.P2839135321971664805

`round(A016405(n)/A280560(n))`
-/

namespace A016356.P2839135321971664805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016405 n : ℚ) / (A280560 n : ℚ))

end

end A016356.P2839135321971664805

/-! ## A016356.P6624196045096447672

`A016405(n)*A062157(n+1)`
-/

namespace A016356.P6624196045096447672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016405 n * A062157 (n + 1)

end

end A016356.P6624196045096447672

/-! ## A016356.P1335034728085790399

`A016405(n)*A056594(2*n)`
-/

namespace A016356.P1335034728085790399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016405 n * A056594 (2 * n)

end

end A016356.P1335034728085790399

/-! ## A016356.P7259038594032455719

`A056594(A005408(n)-A016405(n))`
-/

namespace A016356.P7259038594032455719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016405 n).toNat

end

end A016356.P7259038594032455719

/-! ## A016356.P14906480478601651406

`A016405(n)*A128130(A008586(n))`
-/

namespace A016356.P14906480478601651406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016405 n * A128130 (A008586 n).toNat

end

end A016356.P14906480478601651406

/-! ## A016356.P10211366661367665214

`A056594(A016405(n)+A005408(n+1))`
-/

namespace A016356.P10211366661367665214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016405 n + A005408 (n + 1)).toNat

end

end A016356.P10211366661367665214

/-!
# A016357: 210th cyclotomic polynomial.

The programs for A016357, there is no canonical definition to state claims against.
-/

/-! ## A016357.P8663141656760269953

`A016406(2*n)`
-/

namespace A016357.P8663141656760269953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016406 (2 * n)

end

end A016357.P8663141656760269953

/-! ## A016357.P3368190616594784690

`A016406(n+n)%3`
-/

namespace A016357.P3368190616594784690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016406 (n + n)) 3

end

end A016357.P3368190616594784690

/-! ## A016357.P9775964334484799593

`(-1)^n*A011650(n)`
-/

namespace A016357.P9775964334484799593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011650 n

end

end A016357.P9775964334484799593

/-! ## A016357.P12080488858425928365

`(A016406(Δ[n²]-1)%3)%3`
-/

namespace A016357.P12080488858425928365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A016406 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) 3) 3

end

end A016357.P12080488858425928365

/-! ## A016357.P8984292890674886724

`A011650(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016357.P8984292890674886724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011650 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016357.P8984292890674886724

/-!
# A016358: 217th cyclotomic polynomial.

The programs for A016358, there is no canonical definition to state claims against.
-/

/-! ## A016358.P2231913402740577962

`(-1)^n*A016409(n)`
-/

namespace A016358.P2231913402740577962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016409 n

end

end A016358.P2231913402740577962

/-! ## A016358.P9109802934964997813

`A016409(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016358.P9109802934964997813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016409 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016358.P9109802934964997813

/-! ## A016358.P4001409022200218253

`A016409(n)*A033999(n)`
-/

namespace A016358.P4001409022200218253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016409 n * A033999 n

end

end A016358.P4001409022200218253

/-! ## A016358.P10989756470877784594

`round(A016409(n)/A280193(n))`
-/

namespace A016358.P10989756470877784594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016409 n : ℚ) / (A280193 n : ℚ))

end

end A016358.P10989756470877784594

/-! ## A016358.P2928617745899627059

`round(A016409(n)/A280560(n))`
-/

namespace A016358.P2928617745899627059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016409 n : ℚ) / (A280560 n : ℚ))

end

end A016358.P2928617745899627059

/-! ## A016358.P14238055259906837990

`A016409(n)*A165326(n+1)`
-/

namespace A016358.P14238055259906837990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016409 n * A165326 (n + 1)

end

end A016358.P14238055259906837990

/-! ## A016358.P2448577597221506628

`A016409(n)*A056594(2*n)`
-/

namespace A016358.P2448577597221506628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016409 n * A056594 (2 * n)

end

end A016358.P2448577597221506628

/-! ## A016358.P12477451548126612389

`round(A016409(n)/Δ[A052938(n)])`
-/

namespace A016358.P12477451548126612389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016409 n : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A016358.P12477451548126612389

/-! ## A016358.P8363763339429970552

`A010892(A016789(n)-A016409(n))`
-/

namespace A016358.P8363763339429970552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016409 n).toNat

end

end A016358.P8363763339429970552

/-! ## A016358.P742681609697326649

`A056594(A005408(n)-A016409(n))`
-/

namespace A016358.P742681609697326649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016409 n).toNat

end

end A016358.P742681609697326649

/-! ## A016358.P3678463008663893648

`A056594(A016409(n)+A005408(n+1))`
-/

namespace A016358.P3678463008663893648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016409 n + A005408 (n + 1)).toNat

end

end A016358.P3678463008663893648

/-! ## A016358.P5840210825165671323

`A056594(A005843(n)+1-A016409(n))`
-/

namespace A016358.P5840210825165671323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005843 n + (1 - A016409 n)).toNat

end

end A016358.P5840210825165671323

/-! ## A016358.P6434981085533220097

`A056594(1-(A016409(n)-A005843(n)))`
-/

namespace A016358.P6434981085533220097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (1 - (A016409 n - A005843 n)).toNat

end

end A016358.P6434981085533220097

/-!
# A016359: 220th cyclotomic polynomial.

The programs for A016359, there is no canonical definition to state claims against.
-/

/-! ## A016359.P4211927778326934519

`A011651(floor(n/2))%gcd(2, n)`
-/

namespace A016359.P4211927778326934519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011651 ⌊(n : ℚ) / 2⌋.toNat) (Nat.gcd 2 n : ℤ)

end

end A016359.P4211927778326934519

/-! ## A016359.P17929294012660820660

`A011651(gcd(2*n, A001281(n)))`
-/

namespace A016359.P17929294012660820660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016359.P17929294012660820660

/-! ## A016359.P14881685073588644023

`A016264(floor(n/2))*A056594(n)`
-/

namespace A016359.P14881685073588644023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016264 ⌊(n : ℚ) / 2⌋.toNat * A056594 n

end

end A016359.P14881685073588644023

/-! ## A016359.P14138685970488942557

`char[2*n]*A011651(A004525(n))`
-/

namespace A016359.P14138685970488942557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A011651 (A004525 n).toNat

end

end A016359.P14138685970488942557

/-! ## A016359.P2995571618892067632

`char[2*n]*A011651(A004526(n))`
-/

namespace A016359.P2995571618892067632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A011651 (A004526 n).toNat

end

end A016359.P2995571618892067632

/-! ## A016359.P11300061769272765886

`A011651(A004525(n))*A059841(n)`
-/

namespace A016359.P11300061769272765886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 (A004525 n).toNat * A059841 n

end

end A016359.P11300061769272765886

/-! ## A016359.P6759517881278841217

`A011651(A065033(n))*A059841(n)`
-/

namespace A016359.P6759517881278841217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 (A065033 n).toNat * A059841 n

end

end A016359.P6759517881278841217

/-! ## A016359.P4531682334772693905

`A011651(A004525(n))%A040005(n)`
-/

namespace A016359.P4531682334772693905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011651 (A004525 n).toNat) (A040005 n)

end

end A016359.P4531682334772693905

/-! ## A016359.P9997887861487093105

`A011651(gcd(A001281(n), A002939(n)))`
-/

namespace A016359.P9997887861487093105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 (Int.gcd (A001281 n) (A002939 n))

end

end A016359.P9997887861487093105

/-!
# A016360: 221st cyclotomic polynomial.

The programs for A016360, there is no canonical definition to state claims against.
-/

/-! ## A016360.P1501330090277338152

`(-1)^n*A016412(n)`
-/

namespace A016360.P1501330090277338152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016412 n

end

end A016360.P1501330090277338152

/-! ## A016360.P8401249807147722203

`A016412(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016360.P8401249807147722203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016412 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016360.P8401249807147722203

/-! ## A016360.P4211335803631045487

`A016412(n)*A033999(n)`
-/

namespace A016360.P4211335803631045487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 n * A033999 n

end

end A016360.P4211335803631045487

/-! ## A016360.P8650071862245341316

`round(A016412(n)/A280560(n))`
-/

namespace A016360.P8650071862245341316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016412 n : ℚ) / (A280560 n : ℚ))

end

end A016360.P8650071862245341316

/-! ## A016360.P14406465425240215612

`A016412(n)*A062157(n+1)`
-/

namespace A016360.P14406465425240215612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 n * A062157 (n + 1)

end

end A016360.P14406465425240215612

/-! ## A016360.P6144496267234204825

`A016412(n)*A056594(2*n)`
-/

namespace A016360.P6144496267234204825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 n * A056594 (2 * n)

end

end A016360.P6144496267234204825

/-! ## A016360.P12114837487528600290

`A016412(n)*A057077(2*n)`
-/

namespace A016360.P12114837487528600290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 n * A057077 (2 * n)

end

end A016360.P12114837487528600290

/-! ## A016360.P14315983193387486644

`A016412(n)*A209615(2*n+1)`
-/

namespace A016360.P14315983193387486644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 n * A209615 (2 * n + 1)

end

end A016360.P14315983193387486644

/-! ## A016360.P1083651653795421831

`or(A016412(n)/A033999(n), A000007(n))`
-/

namespace A016360.P1083651653795421831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A016412 n : ℚ) / (A033999 n : ℚ))) (A000007 n)

end

end A016360.P1083651653795421831

/-! ## A016360.P6610977546827535502

`A016412(n)*A168491(n)/abs(A168491(n))`
-/

namespace A016360.P6610977546827535502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016412 n * A168491 n : ℚ) / (|A168491 n| : ℚ)

end

end A016360.P6610977546827535502

/-!
# A016361: 230th cyclotomic polynomial.

The programs for A016361, there is no canonical definition to state claims against.
-/

/-! ## A016361.P13673087790937800654

`(-1)^n*A011653(n)`
-/

namespace A016361.P13673087790937800654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011653 n

end

end A016361.P13673087790937800654

/-! ## A016361.P12889955281656691722

`A011653(n)*A033999(n)`
-/

namespace A016361.P12889955281656691722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 n * A033999 n

end

end A016361.P12889955281656691722

/-! ## A016361.P5912505677132889351

`round(A011653(n)/A280560(n))`
-/

namespace A016361.P5912505677132889351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A011653 n : ℚ) / (A280560 n : ℚ))

end

end A016361.P5912505677132889351

/-! ## A016361.P4186577451067676744

`A011653(n)*A253414(2*n)`
-/

namespace A016361.P4186577451067676744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 n * A253414 (2 * n)

end

end A016361.P4186577451067676744

/-! ## A016361.P8416114874296405466

`A011653(n)/A057428(n)^n`
-/

namespace A016361.P8416114874296405466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011653 n : ℚ) / (A057428 n ^ n : ℚ)

end

end A016361.P8416114874296405466

/-! ## A016361.P13532110441414630758

`-A008683(-or(n, -2))*A011653(n)`
-/

namespace A016361.P13532110441414630758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A008683 (-Int.lor (n : ℤ) (-2)).toNat * A011653 n)

end

end A016361.P13532110441414630758

/-! ## A016361.P7812169818947796548

`A011653(n)/A008683(A116570(n))`
-/

namespace A016361.P7812169818947796548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011653 n : ℚ) / (A008683 (A116570 n).toNat : ℚ)

end

end A016361.P7812169818947796548

/-!
# A016362: 231st cyclotomic polynomial.

The programs for A016362, there is no canonical definition to state claims against.
-/

/-! ## A016362.P15027628473738640839

`(-1)^n*A016415(n)`
-/

namespace A016362.P15027628473738640839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016415 n

end

end A016362.P15027628473738640839

/-! ## A016362.P5607166267593176066

`A016415(n)*A033999(n)`
-/

namespace A016362.P5607166267593176066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 n * A033999 n

end

end A016362.P5607166267593176066

/-! ## A016362.P3417904976039784431

`round(A016415(n)/A164117(n))`
-/

namespace A016362.P3417904976039784431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016415 n : ℚ) / (A164117 n : ℚ))

end

end A016362.P3417904976039784431

/-! ## A016362.P7398798087837007953

`round(A016415(n)/A280193(n))`
-/

namespace A016362.P7398798087837007953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016415 n : ℚ) / (A280193 n : ℚ))

end

end A016362.P7398798087837007953

/-! ## A016362.P13170602895961606313

`round(A016415(n)/A280560(n))`
-/

namespace A016362.P13170602895961606313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016415 n : ℚ) / (A280560 n : ℚ))

end

end A016362.P13170602895961606313

/-! ## A016362.P4014600912758379033

`A016415(n)/A033999(n+2)`
-/

namespace A016362.P4014600912758379033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016415 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016362.P4014600912758379033

/-! ## A016362.P12578037755170558404

`A016415(n)*A056594(2*n)`
-/

namespace A016362.P12578037755170558404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 n * A056594 (2 * n)

end

end A016362.P12578037755170558404

/-! ## A016362.P1199245662855900671

`A016415(n)/A009001(2*n)`
-/

namespace A016362.P1199245662855900671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016415 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016362.P1199245662855900671

/-! ## A016362.P3723529361935865277

`A016415(n)*A081729(3*n)`
-/

namespace A016362.P3723529361935865277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 n * A081729 (3 * n)

end

end A016362.P3723529361935865277

/-! ## A016362.P9097302256627758740

`A016415(n)*A034947(2*n+1)`
-/

namespace A016362.P9097302256627758740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 n * A034947 (2 * n + 1)

end

end A016362.P9097302256627758740

/-! ## A016362.P5938625832927768498

`A056594(A005408(n)-A016415(n))`
-/

namespace A016362.P5938625832927768498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016415 n).toNat

end

end A016362.P5938625832927768498

/-! ## A016362.P18252703278391874365

`A056594(A016415(n)+A005408(n+1))`
-/

namespace A016362.P18252703278391874365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016415 n + A005408 (n + 1)).toNat

end

end A016362.P18252703278391874365

/-! ## A016362.P7257097370433762754

`A016415(n)*A076479(A001511(n+1))`
-/

namespace A016362.P7257097370433762754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016415 n * A076479 (A001511 (n + 1)).toNat

end

end A016362.P7257097370433762754

/-!
# A016363: 238th cyclotomic polynomial.

The programs for A016363, there is no canonical definition to state claims against.
-/

/-! ## A016363.P2478155069571277112

`A016419(2*n)`
-/

namespace A016363.P2478155069571277112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016419 (2 * n)

end

end A016363.P2478155069571277112

/-! ## A016363.P868919076704400478

`A016419(n+n)^3`
-/

namespace A016363.P868919076704400478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016419 (n + n) ^ 3

end

end A016363.P868919076704400478

/-! ## A016363.P3658286296935822624

`(-1)^n*A011654(n)`
-/

namespace A016363.P3658286296935822624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A011654 n

end

end A016363.P3658286296935822624

/-! ## A016363.P5419265619928996229

`A016419(Δ[n²]-1)%2`
-/

namespace A016363.P5419265619928996229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat) 2

end

end A016363.P5419265619928996229

/-! ## A016363.P11882398529913295327

`A011654(n)*A033999(n)`
-/

namespace A016363.P11882398529913295327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011654 n * A033999 n

end

end A016363.P11882398529913295327

/-! ## A016363.P3146501457378474839

`A011654(n)*A056594(2*n)`
-/

namespace A016363.P3146501457378474839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011654 n * A056594 (2 * n)

end

end A016363.P3146501457378474839

/-! ## A016363.P6484112840933962839

`A016419(Δ[n²]-1)/A007318(C(2, n))`
-/

namespace A016363.P6484112840933962839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A016363.P6484112840933962839

/-! ## A016363.P4507646415143284841

`A016419(Δ[n²]-1)/A007318(and(2, n-2))`
-/

namespace A016363.P4507646415143284841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat : ℚ) / (A007318 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A016363.P4507646415143284841

/-! ## A016363.P11815267503146415952

`A056594(A005843(n)+1-A011654(n))`
-/

namespace A016363.P11815267503146415952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005843 n + (1 - A011654 n)).toNat

end

end A016363.P11815267503146415952

/-!
# A016364: 247th cyclotomic polynomial.

The programs for A016364, there is no canonical definition to state claims against.
-/

/-! ## A016364.P13917706831028415870

`(-1)^n*A016423(n)`
-/

namespace A016364.P13917706831028415870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016423 n

end

end A016364.P13917706831028415870

/-! ## A016364.P8916097396166976130

`A016423(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016364.P8916097396166976130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016423 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016364.P8916097396166976130

/-! ## A016364.P3621567120390179235

`A016423(n)*A033999(n)`
-/

namespace A016364.P3621567120390179235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016423 n * A033999 n

end

end A016364.P3621567120390179235

/-! ## A016364.P11216020821639061472

`round(A016423(n)/A131556(n))`
-/

namespace A016364.P11216020821639061472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016423 n : ℚ) / (A131556 n : ℚ))

end

end A016364.P11216020821639061472

/-! ## A016364.P12366820187850816786

`round(A016423(n)/A280193(n))`
-/

namespace A016364.P12366820187850816786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016423 n : ℚ) / (A280193 n : ℚ))

end

end A016364.P12366820187850816786

/-! ## A016364.P13579818109898979576

`round(A016423(n)/A280560(n))`
-/

namespace A016364.P13579818109898979576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016423 n : ℚ) / (A280560 n : ℚ))

end

end A016364.P13579818109898979576

/-! ## A016364.P17980436836843583610

`A016423(n)*A062157(n+1)`
-/

namespace A016364.P17980436836843583610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016423 n * A062157 (n + 1)

end

end A016364.P17980436836843583610

/-! ## A016364.P977163317698192541

`A016423(n)*A056594(2*n)`
-/

namespace A016364.P977163317698192541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016423 n * A056594 (2 * n)

end

end A016364.P977163317698192541

/-! ## A016364.P3887091100581514985

`A010892(A016789(n)-A016423(n))`
-/

namespace A016364.P3887091100581514985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016423 n).toNat

end

end A016364.P3887091100581514985

/-! ## A016364.P16599592529492522065

`A056594(A005408(n)-A016423(n))`
-/

namespace A016364.P16599592529492522065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016423 n).toNat

end

end A016364.P16599592529492522065

/-! ## A016364.P12041851378401312698

`-A056594(A016423(n)+A005408(n))`
-/

namespace A016364.P12041851378401312698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056594 (A016423 n + A005408 n).toNat

end

end A016364.P12041851378401312698

/-! ## A016364.P2132542306007444828

`A056594(A016423(n)+A005408(n+1))`
-/

namespace A016364.P2132542306007444828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016423 n + A005408 (n + 1)).toNat

end

end A016364.P2132542306007444828

/-! ## A016364.P15068807707014965230

`1-A098178(A016423(n)+A005408(n))`
-/

namespace A016364.P15068807707014965230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098178 (A016423 n + A005408 n).toNat

end

end A016364.P15068807707014965230

/-!
# A016365: 253rd cyclotomic polynomial.

The programs for A016365, there is no canonical definition to state claims against.
-/

/-! ## A016365.P13937936635512454287

`(-1)^n*A016426(n)`
-/

namespace A016365.P13937936635512454287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016426 n

end

end A016365.P13937936635512454287

/-! ## A016365.P1405854458346386982

`A016426(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016365.P1405854458346386982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016426 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016365.P1405854458346386982

/-! ## A016365.P137210109886631733

`A016426(n)*A033999(n)`
-/

namespace A016365.P137210109886631733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016426 n * A033999 n

end

end A016365.P137210109886631733

/-! ## A016365.P9041337195694942666

`round(A016426(n)/A164117(n))`
-/

namespace A016365.P9041337195694942666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016426 n : ℚ) / (A164117 n : ℚ))

end

end A016365.P9041337195694942666

/-! ## A016365.P16288713993689577999

`round(A016426(n)/A280193(n))`
-/

namespace A016365.P16288713993689577999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016426 n : ℚ) / (A280193 n : ℚ))

end

end A016365.P16288713993689577999

/-! ## A016365.P4188927709779243089

`A016426(n)*A062157(n+1)`
-/

namespace A016365.P4188927709779243089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016426 n * A062157 (n + 1)

end

end A016365.P4188927709779243089

/-! ## A016365.P3541831264155166686

`A016426(n)*A056594(2*n)`
-/

namespace A016365.P3541831264155166686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016426 n * A056594 (2 * n)

end

end A016365.P3541831264155166686

/-! ## A016365.P2753874714696507297

`A016426(n)*A034947(2*n+1)`
-/

namespace A016365.P2753874714696507297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016426 n * A034947 (2 * n + 1)

end

end A016365.P2753874714696507297

/-! ## A016365.P17207800457530284298

`A016426(n)*A209615(2*n+1)`
-/

namespace A016365.P17207800457530284298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016426 n * A209615 (2 * n + 1)

end

end A016365.P17207800457530284298

/-! ## A016365.P12690555293217781743

`A010892(A016789(n)-A016426(n))`
-/

namespace A016365.P12690555293217781743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016426 n).toNat

end

end A016365.P12690555293217781743

/-! ## A016365.P3728206569118794915

`A016426(n)*A197870(A000217(n))`
-/

namespace A016365.P3728206569118794915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016426 n * A197870 (A000217 n).toNat

end

end A016365.P3728206569118794915

/-!
# A016366: 255th cyclotomic polynomial.

The programs for A016366, there is no canonical definition to state claims against.
-/

/-! ## A016366.P17636858680118167404

`(-1)^n*A016427(n)`
-/

namespace A016366.P17636858680118167404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016427 n

end

end A016366.P17636858680118167404

/-! ## A016366.P18219344225251321739

`A016427(n)*A033999(n)`
-/

namespace A016366.P18219344225251321739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016427 n * A033999 n

end

end A016366.P18219344225251321739

/-! ## A016366.P11333504494973399620

`A016427(n)*A197870(∑[n])`
-/

namespace A016366.P11333504494973399620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016427 n * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016366.P11333504494973399620

/-! ## A016366.P10698422693963650576

`A016427(n)*A057077(2*n)`
-/

namespace A016366.P10698422693963650576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016427 n * A057077 (2 * n)

end

end A016366.P10698422693963650576

/-! ## A016366.P3762853832978147136

`A016427(n)/A033999(n+4)`
-/

namespace A016366.P3762853832978147136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016427 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A016366.P3762853832978147136

/-! ## A016366.P5838815640816530457

`A016427(n)*A034947(2*n+1)`
-/

namespace A016366.P5838815640816530457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016427 n * A034947 (2 * n + 1)

end

end A016366.P5838815640816530457

/-! ## A016366.P2159494681023876307

`A016427(n)*A209615(2*n+1)`
-/

namespace A016366.P2159494681023876307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016427 n * A209615 (2 * n + 1)

end

end A016366.P2159494681023876307

/-!
# A016367: 259th cyclotomic polynomial.

The programs for A016367, there is no canonical definition to state claims against.
-/

/-! ## A016367.P7669187100567359375

`Δ[A000034(A000210(n+1)*A004776(n+1))]`
-/

namespace A016367.P7669187100567359375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000210 (n + 1) * A004776 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016367.P7669187100567359375

/-! ## A016367.P7981023766674212692

`Δ[val(A020639(A097105(n+2)), 3)]`
-/

namespace A016367.P7981023766674212692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A097105 (n + 2)).toNat).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016367.P7981023766674212692

/-! ## A016367.P2606685988147239631

`or(A014016(n), A240328(A000292(n)))`
-/

namespace A016367.P2606685988147239631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014016 n) (A240328 (A000292 n).toNat)

end

end A016367.P2606685988147239631

/-! ## A016367.P6732570887797127195

`or(A016374(n), A240328(A000292(n)))`
-/

namespace A016367.P6732570887797127195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016374 n) (A240328 (A000292 n).toNat)

end

end A016367.P6732570887797127195

/-! ## A016367.P14979650611997091126

`or(A016428(n), A240328(A000292(n)))`
-/

namespace A016367.P14979650611997091126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016428 n) (A240328 (A000292 n).toNat)

end

end A016367.P14979650611997091126

/-!
# A016368: 260th cyclotomic polynomial.

The programs for A016368, there is no canonical definition to state claims against.
-/

/-! ## A016368.P3207026202554417275

`A016330(gcd(2*n, ceil((n-1)/gcd(2, n))))`
-/

namespace A016368.P3207026202554417275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 (Int.gcd (2 * n : ℤ) ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉)

end

end A016368.P3207026202554417275

/-! ## A016368.P7942667903608620006

`A016330(gcd(2*n, A001281(n)))`
-/

namespace A016368.P7942667903608620006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016368.P7942667903608620006

/-! ## A016368.P17164042627982672801

`A016330(gcd(4*n, A006370(n)))`
-/

namespace A016368.P17164042627982672801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 (Int.gcd (4 * n : ℤ) (A006370 n))

end

end A016368.P17164042627982672801

/-! ## A016368.P15378233168506146603

`A016330(A004526(n))%gcd(2, n)`
-/

namespace A016368.P15378233168506146603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016330 (A004526 n).toNat) (Nat.gcd 2 n : ℤ)

end

end A016368.P15378233168506146603

/-! ## A016368.P14959885582410007873

`char[2*n]*A016330(A025480(n))`
-/

namespace A016368.P14959885582410007873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016330 (A025480 n).toNat

end

end A016368.P14959885582410007873

/-! ## A016368.P16370189852692349290

`A016330(gcd(∑[4*n], A029578(n)))`
-/

namespace A016368.P16370189852692349290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016330 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A029578 n))

end

end A016368.P16370189852692349290

/-! ## A016368.P5781707696025296578

`(n+1)%2*A016330(A004525(n))`
-/

namespace A016368.P5781707696025296578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A016330 (A004525 n).toNat

end

end A016368.P5781707696025296578

/-! ## A016368.P12332378480903207546

`A016330(A004525(n))%A010131(n)`
-/

namespace A016368.P12332378480903207546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016330 (A004525 n).toNat) (A010131 n)

end

end A016368.P12332378480903207546

/-! ## A016368.P15185657978692411624

`A016330(A004526(n))%A010131(n)`
-/

namespace A016368.P15185657978692411624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016330 (A004526 n).toNat) (A010131 n)

end

end A016368.P15185657978692411624

/-! ## A016368.P16611665810406861026

`A016330(A025480(n))%A010131(n)`
-/

namespace A016368.P16611665810406861026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016330 (A025480 n).toNat) (A010131 n)

end

end A016368.P16611665810406861026

/-!
# A016369: 266th cyclotomic polynomial.

The programs for A016369, there is no canonical definition to state claims against.
-/

/-! ## A016369.P1770986246886376652

`(-1)^n*A016332(n)`
-/

namespace A016369.P1770986246886376652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016332 n

end

end A016369.P1770986246886376652

/-! ## A016369.P6829525432932939122

`A016332(n)*A033999(n)`
-/

namespace A016369.P6829525432932939122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 n * A033999 n

end

end A016369.P6829525432932939122

/-! ## A016369.P8783580431687209487

`round(A016332(n)/A280193(n))`
-/

namespace A016369.P8783580431687209487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016332 n : ℚ) / (A280193 n : ℚ))

end

end A016369.P8783580431687209487

/-! ## A016369.P6778903452313782092

`round(A016332(n)/A280560(n))`
-/

namespace A016369.P6778903452313782092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016332 n : ℚ) / (A280560 n : ℚ))

end

end A016369.P6778903452313782092

/-! ## A016369.P11856431367575916838

`A016332(n)*A197870(∑[n])`
-/

namespace A016369.P11856431367575916838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 n * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016369.P11856431367575916838

/-! ## A016369.P434861191638656821

`A016332(n)*A062157(n+1)`
-/

namespace A016369.P434861191638656821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 n * A062157 (n + 1)

end

end A016369.P434861191638656821

/-! ## A016369.P9152342158620522117

`A016332(n)/A033999(n+2)`
-/

namespace A016369.P9152342158620522117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016332 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016369.P9152342158620522117

/-! ## A016369.P7621344617443668166

`A016332(n)/A009001(2*n)`
-/

namespace A016369.P7621344617443668166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016332 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016369.P7621344617443668166

/-! ## A016369.P9149837142802838268

`A016332(n)*A130595(A000217(n))`
-/

namespace A016369.P9149837142802838268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 n * A130595 (A000217 n).toNat

end

end A016369.P9149837142802838268

/-! ## A016369.P12804273158445577281

`A016407(A054967(n+1))*A033999(n)`
-/

namespace A016369.P12804273158445577281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016407 (A054967 (n + 1)).toNat * A033999 n

end

end A016369.P12804273158445577281

/-! ## A016369.P3070865142361600292

`A016332(n)*A094267(n²)`
-/

namespace A016369.P3070865142361600292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016332 n * A094267 (n ^ 2)

end

end A016369.P3070865142361600292

/-!
# A016371: 280th cyclotomic polynomial.

The programs for A016371, there is no canonical definition to state claims against.
-/

/-! ## A016371.P8112051138082592279

`A016389(floor(5*n/4))`
-/

namespace A016371.P8112051138082592279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 ⌊5 * ((n : ℚ) / 4)⌋.toNat

end

end A016371.P8112051138082592279

/-! ## A016371.P15923516140015394485

`A016334(gcd(n, floor(n/2)))`
-/

namespace A016371.P15923516140015394485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A016371.P15923516140015394485

/-! ## A016371.P15940587819619165558

`A016334(Δ[ceil(C(n, 2)/2)])`
-/

namespace A016371.P15940587819619165558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (f1 (n + 1) - f1 n).toNat

end

end A016371.P15940587819619165558

/-! ## A016371.P14116874785323641589

`A016334((n/2)^((((n+1)%8)%7)%2))`
-/

namespace A016371.P14116874785323641589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ ((n + 1) % 8 % 7 % 2))).toNat

end

end A016371.P14116874785323641589

/-! ## A016371.P1602838754578225344

`A016334(A004525(n))`
-/

namespace A016371.P1602838754578225344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A004525 n).toNat

end

end A016371.P1602838754578225344

/-! ## A016371.P8847180713755816802

`A016389(A001068(n))^3`
-/

namespace A016371.P8847180713755816802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A001068 n).toNat ^ 3

end

end A016371.P8847180713755816802

/-! ## A016371.P17825092952703831712

`A016334(n-A029578(n))`
-/

namespace A016371.P17825092952703831712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 ((n : ℤ) - A029578 n).toNat

end

end A016371.P17825092952703831712

/-! ## A016371.P425821280618953287

`A014963(n+6)*A016389(A001068(n))`
-/

namespace A016371.P425821280618953287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 6) * A016389 (A001068 n).toNat

end

end A016371.P425821280618953287

/-! ## A016371.P4147132032804584439

`A007318(2-C(2, n+1))*A016389(A001068(n))`
-/

namespace A016371.P4147132032804584439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 - Nat.choose 2 (n + 1)) * A016389 (A001068 n).toNat

end

end A016371.P4147132032804584439

/-! ## A016371.P3577065758213371418

`A007318(A020639(n+2))*A016389(A001068(n))`
-/

namespace A016371.P3577065758213371418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (n + 2)).toNat * A016389 (A001068 n).toNat

end

end A016371.P3577065758213371418

/-!
# A016373: 286th cyclotomic polynomial.

The programs for A016373, there is no canonical definition to state claims against.
-/

/-! ## A016373.P12583881609042070201

`(-1)^n*A016335(n)`
-/

namespace A016373.P12583881609042070201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016335 n

end

end A016373.P12583881609042070201

/-! ## A016373.P9924235977369719779

`A016335(n)*A033999(n)`
-/

namespace A016373.P9924235977369719779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n * A033999 n

end

end A016373.P9924235977369719779

/-! ## A016373.P13826353606310194389

`round(A016335(n)/A280193(n))`
-/

namespace A016373.P13826353606310194389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016335 n : ℚ) / (A280193 n : ℚ))

end

end A016373.P13826353606310194389

/-! ## A016373.P16348650525896605517

`round(A016335(n)/A280560(n))`
-/

namespace A016373.P16348650525896605517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016335 n : ℚ) / (A280560 n : ℚ))

end

end A016373.P16348650525896605517

/-! ## A016373.P10935991303918509376

`A016335(n)*A197870(∑[n])`
-/

namespace A016373.P10935991303918509376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n * A197870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016373.P10935991303918509376

/-! ## A016373.P15723961237745776107

`A016335(n)*A062157(n+1)`
-/

namespace A016373.P15723961237745776107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n * A062157 (n + 1)

end

end A016373.P15723961237745776107

/-! ## A016373.P6228825402127537578

`A016335(n)/A033999(n+2)`
-/

namespace A016373.P6228825402127537578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016335 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016373.P6228825402127537578

/-! ## A016373.P13730786888921407046

`A016335(n)*A056594(2*n)`
-/

namespace A016373.P13730786888921407046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n * A056594 (2 * n)

end

end A016373.P13730786888921407046

/-! ## A016373.P368729775282910874

`A016335(n)/A009001(2*n)`
-/

namespace A016373.P368729775282910874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016335 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016373.P368729775282910874

/-! ## A016373.P9647785227383806657

`A016335(n)/(A004442(n)-n)`
-/

namespace A016373.P9647785227383806657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016335 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016373.P9647785227383806657

/-! ## A016373.P9147706550540393656

`A128834(3*(n+1)-A016335(n))`
-/

namespace A016373.P9147706550540393656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 ((3 * (n + 1) : ℤ) - A016335 n).toNat

end

end A016373.P9147706550540393656

/-! ## A016373.P14524435298414011767

`A016335(n)/A008683(or(1, n+1)-n)`
-/

namespace A016373.P14524435298414011767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016335 n : ℚ) / (A008683 (Nat.lor 1 (n + 1) - n) : ℚ)

end

end A016373.P14524435298414011767

/-! ## A016373.P5478307309705558094

`A056594(A005408(n)-A016335(n))`
-/

namespace A016373.P5478307309705558094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016335 n).toNat

end

end A016373.P5478307309705558094

/-! ## A016373.P11376267341228039642

`A056594(A016969(n)-A016335(n))`
-/

namespace A016373.P11376267341228039642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016969 n - A016335 n).toNat

end

end A016373.P11376267341228039642

/-! ## A016373.P7600242030541956903

`A016335(n)*A081729(A008593(n))`
-/

namespace A016373.P7600242030541956903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n * A081729 (A008593 n).toNat

end

end A016373.P7600242030541956903

/-! ## A016373.P3402840150983931175

`A016335(n)*A081729(A008595(n))`
-/

namespace A016373.P3402840150983931175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016335 n * A081729 (A008595 n).toNat

end

end A016373.P3402840150983931175

/-!
# A016374: 287th cyclotomic polynomial.

The programs for A016374, there is no canonical definition to state claims against.
-/

/-! ## A016374.P10954341248550781720

`A014016(n)+A008683(A076303(n+1)+2)`
-/

namespace A016374.P10954341248550781720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 n + A008683 (A076303 (n + 1) + 2).toNat

end

end A016374.P10954341248550781720

/-! ## A016374.P10493189302787683999

`A016425(n)+A008683(A076303(n+1)+2)`
-/

namespace A016374.P10493189302787683999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016425 n + A008683 (A076303 (n + 1) + 2).toNat

end

end A016374.P10493189302787683999

/-! ## A016374.P9471136189451771856

`A016425(C(n+1, 42)+n)`
-/

namespace A016374.P9471136189451771856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016425 (Nat.choose (n + 1) 42 + n)

end

end A016374.P9471136189451771856

/-! ## A016374.P17788897219089963505

`A016428(A034462(n+2)+n)`
-/

namespace A016374.P17788897219089963505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016428 (A034462 (n + 2) + (n : ℤ)).toNat

end

end A016374.P17788897219089963505

/-!
# A016375: 290th cyclotomic polynomial.

The programs for A016375, there is no canonical definition to state claims against.
-/

/-! ## A016375.P6999565817311205697

`(-1)^n*A016336(n)`
-/

namespace A016375.P6999565817311205697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016336 n

end

end A016375.P6999565817311205697

/-! ## A016375.P17566020230725624239

`A016336(n)*A033999(n)`
-/

namespace A016375.P17566020230725624239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016336 n * A033999 n

end

end A016375.P17566020230725624239

/-! ## A016375.P11279080766644683823

`round(A016336(n)/A280193(n))`
-/

namespace A016375.P11279080766644683823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016336 n : ℚ) / (A280193 n : ℚ))

end

end A016375.P11279080766644683823

/-! ## A016375.P17335875988089501559

`round(A016336(n)/A280560(n))`
-/

namespace A016375.P17335875988089501559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016336 n : ℚ) / (A280560 n : ℚ))

end

end A016375.P17335875988089501559

/-! ## A016375.P1980257647660474381

`A016336(n)*A062157(n+1)`
-/

namespace A016375.P1980257647660474381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016336 n * A062157 (n + 1)

end

end A016375.P1980257647660474381

/-! ## A016375.P7216369550532752206

`A016336(n)/A033999(n+2)`
-/

namespace A016375.P7216369550532752206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016336 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016375.P7216369550532752206

/-! ## A016375.P17115374462832868298

`A016336(n)*A056594(2*n)`
-/

namespace A016375.P17115374462832868298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016336 n * A056594 (2 * n)

end

end A016375.P17115374462832868298

/-! ## A016375.P8029633513965101805

`A016336(n)*A087960(2*n)`
-/

namespace A016375.P8029633513965101805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016336 n * A087960 (2 * n)

end

end A016375.P8029633513965101805

/-! ## A016375.P7069134577597609392

`A016336(n)*A158496(2*n)`
-/

namespace A016375.P7069134577597609392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016336 n * A158496 (2 * n)

end

end A016375.P7069134577597609392

/-! ## A016375.P12779252972053986272

`A016336(n)/A009001(2*n)`
-/

namespace A016375.P12779252972053986272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016336 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016375.P12779252972053986272

/-! ## A016375.P10003235156922553801

`A016336(n)/A010892(3*n)`
-/

namespace A016375.P10003235156922553801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016336 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A016375.P10003235156922553801

/-! ## A016375.P6092919677977498953

`-A016336(n)/(-1)^A020639(n+1)`
-/

namespace A016375.P6092919677977498953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016336 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016375.P6092919677977498953

/-! ## A016375.P135637636618930500

`A056594(A005408(n)-A016336(n))`
-/

namespace A016375.P135637636618930500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016336 n).toNat

end

end A016375.P135637636618930500

/-! ## A016375.P18155029010613630109

`A010892(A008486(n)+A016336(n)-1)`
-/

namespace A016375.P18155029010613630109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008486 n + (A016336 n - 1)).toNat

end

end A016375.P18155029010613630109

/-!
# A016376: 299th cyclotomic polynomial.

The programs for A016376, there is no canonical definition to state claims against.
-/

/-! ## A016376.P1176399721176543637

`Δ[A003982(Δ[A136117(n+1)])]`
-/

namespace A016376.P1176399721176543637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016376.P1176399721176543637

/-! ## A016376.P12124233914246786343

`Δ[A127693(A127662(2*n+3)+1)]`
-/

namespace A016376.P12124233914246786343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127693 (A127662 (2 * n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016376.P12124233914246786343

/-! ## A016376.P18314628099262896820

`Δ[A191771(A191771(n+1))%A191774(n+1)]`
-/

namespace A016376.P18314628099262896820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191771 (A191771 (n + 1)).toNat) (A191774 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016376.P18314628099262896820

/-!
# A016377: 301st cyclotomic polynomial.

The programs for A016377, there is no canonical definition to state claims against.
-/

/-! ## A016377.P16298285662222543307

`A016425(A217761(n+1))`
-/

namespace A016377.P16298285662222543307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016425 (A217761 (n + 1)).toNat

end

end A016377.P16298285662222543307

/-! ## A016377.P5353711141895739918

`A016425(C(A285667(n+1), 62)+n)`
-/

namespace A016377.P5353711141895739918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016425 (Nat.choose (A285667 (n + 1)).toNat 62 + n)

end

end A016377.P5353711141895739918

/-! ## A016377.P8585086065691678169

`and(A008683(A076303(n+1)), A014016(n))`
-/

namespace A016377.P8585086065691678169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (A076303 (n + 1)).toNat) (A014016 n)

end

end A016377.P8585086065691678169

/-!
# A016378: 308th cyclotomic polynomial.

The programs for A016378, there is no canonical definition to state claims against.
-/

/-! ## A016378.P560829375129131337

`A016338(floor(n/2))%gcd(2, n)`
-/

namespace A016378.P560829375129131337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016338 ⌊(n : ℚ) / 2⌋.toNat) (Nat.gcd 2 n : ℤ)

end

end A016378.P560829375129131337

/-! ## A016378.P13179776983146597328

`∑[(-1)^n]*A016338(floor((n+1)/2))`
-/

namespace A016378.P13179776983146597328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016338 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A016378.P13179776983146597328

/-! ## A016378.P8811320705479861330

`A016338(gcd(2*n, A001281(n)))`
-/

namespace A016378.P8811320705479861330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016378.P8811320705479861330

/-! ## A016378.P10402312148445267311

`A016338(gcd(4*n, A006370(n)))`
-/

namespace A016378.P10402312148445267311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (Int.gcd (4 * n : ℤ) (A006370 n))

end

end A016378.P10402312148445267311

/-! ## A016378.P6374534657179034673

`A016338(gcd(∑[4*n], A029578(n)))`
-/

namespace A016378.P6374534657179034673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A029578 n))

end

end A016378.P6374534657179034673

/-! ## A016378.P15356491045052221796

`A016338(A052938(n)-A057979(n))`
-/

namespace A016378.P15356491045052221796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (A052938 n - A057979 n).toNat

end

end A016378.P15356491045052221796

/-! ## A016378.P15193633120817315086

`A011642(A004525(n))*A056594(n)`
-/

namespace A016378.P15193633120817315086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 (A004525 n).toNat * A056594 n

end

end A016378.P15193633120817315086

/-! ## A016378.P11730609282144901444

`A011642(A004526(n))*A056594(n)`
-/

namespace A016378.P11730609282144901444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 (A004526 n).toNat * A056594 n

end

end A016378.P11730609282144901444

/-! ## A016378.P11572971653762577997

`A016338(A004525(n))*A059841(n)`
-/

namespace A016378.P11572971653762577997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (A004525 n).toNat * A059841 n

end

end A016378.P11572971653762577997

/-! ## A016378.P11284891821770861792

`A016338(A004526(n))*A059841(n)`
-/

namespace A016378.P11284891821770861792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (A004526 n).toNat * A059841 n

end

end A016378.P11284891821770861792

/-! ## A016378.P1323872822960557914

`A016338(A004526(n))%A010127(n)`
-/

namespace A016378.P1323872822960557914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016338 (A004526 n).toNat) (A010127 n)

end

end A016378.P1323872822960557914

/-! ## A016378.P10515561529581251841

`A016338(A004525(n))%A040011(n)`
-/

namespace A016378.P10515561529581251841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016338 (A004525 n).toNat) (A040011 n)

end

end A016378.P10515561529581251841

/-! ## A016378.P3598094906032747727

`A016338(gcd(A001281(n), A002378(n)))`
-/

namespace A016378.P3598094906032747727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (Int.gcd (A001281 n) (A002378 n))

end

end A016378.P3598094906032747727

/-! ## A016378.P16193900068839138194

`A016338(A065190(n+1)-A029578(n))`
-/

namespace A016378.P16193900068839138194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016338 (A065190 (n + 1) - A029578 n).toNat

end

end A016378.P16193900068839138194

/-! ## A016378.P8876959937376979492

`A011642(n-A026741(n))*A056594(n)`
-/

namespace A016378.P8876959937376979492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 ((n : ℤ) - A026741 n).toNat * A056594 n

end

end A016378.P8876959937376979492

/-! ## A016378.P16669161170668408822

`round(A016338(A004526(n))/A020639(n+2))`
-/

namespace A016378.P16669161170668408822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016338 (A004526 n).toNat : ℚ) / (A020639 (n + 2) : ℚ))

end

end A016378.P16669161170668408822

/-!
# A016379: 310th cyclotomic polynomial.

The programs for A016379, there is no canonical definition to state claims against.
-/

/-! ## A016379.P16717944597867233819

`(-1)^n*A016339(n)`
-/

namespace A016379.P16717944597867233819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016339 n

end

end A016379.P16717944597867233819

/-! ## A016379.P11861717660116230520

`A016339(n)*A033999(n)`
-/

namespace A016379.P11861717660116230520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016339 n * A033999 n

end

end A016379.P11861717660116230520

/-! ## A016379.P8997400063033552096

`round(A016339(n)/A280193(n))`
-/

namespace A016379.P8997400063033552096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016339 n : ℚ) / (A280193 n : ℚ))

end

end A016379.P8997400063033552096

/-! ## A016379.P16112953404980872641

`round(A016339(n)/A280560(n))`
-/

namespace A016379.P16112953404980872641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016339 n : ℚ) / (A280560 n : ℚ))

end

end A016379.P16112953404980872641

/-! ## A016379.P1656009640991071815

`A016339(n)*A056594(2*n)`
-/

namespace A016379.P1656009640991071815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016339 n * A056594 (2 * n)

end

end A016379.P1656009640991071815

/-! ## A016379.P13611447111292116494

`A016339(n)*A057077(2*n)`
-/

namespace A016379.P13611447111292116494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016339 n * A057077 (2 * n)

end

end A016379.P13611447111292116494

/-! ## A016379.P5542596277117393595

`A016339(n)*A034947(2*n+1)`
-/

namespace A016379.P5542596277117393595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016339 n * A034947 (2 * n + 1)

end

end A016379.P5542596277117393595

/-! ## A016379.P15855439227568239457

`A016339(n)/A016339(Δ[A004526(n)])`
-/

namespace A016379.P15855439227568239457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016339 n : ℚ) / (A016339 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A016379.P15855439227568239457

/-! ## A016379.P10592043809066927962

`A010892(A008585(n)+A016339(n)-1)`
-/

namespace A016379.P10592043809066927962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n + (A016339 n - 1)).toNat

end

end A016379.P10592043809066927962

/-! ## A016379.P9248589765084863179

`A010892(A016777(n)+1-A016339(n))`
-/

namespace A016379.P9248589765084863179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n + (1 - A016339 n)).toNat

end

end A016379.P9248589765084863179

/-! ## A016379.P7895171136115464082

`A010892(A008585(n)-(1-A016339(n)))`
-/

namespace A016379.P7895171136115464082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n - (1 - A016339 n)).toNat

end

end A016379.P7895171136115464082

/-!
# A016380: 315th cyclotomic polynomial.

The programs for A016380, there is no canonical definition to state claims against.
-/

/-! ## A016380.P4427600831463068747

`(-1)^n*A016406(A004396(n))`
-/

namespace A016380.P4427600831463068747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016406 (A004396 n).toNat

end

end A016380.P4427600831463068747

/-! ## A016380.P1766995267783852218

`(-1)^n*A016406(A002264(Δ[n²]))`
-/

namespace A016380.P1766995267783852218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016406 (A002264 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A016380.P1766995267783852218

/-! ## A016380.P3057122741517712446

`A016406(A004396(n))*A033999(n)`
-/

namespace A016380.P3057122741517712446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016406 (A004396 n).toNat * A033999 n

end

end A016380.P3057122741517712446

/-! ## A016380.P5510320575206921384

`A016406(A004396(n))*A131017(n)`
-/

namespace A016380.P5510320575206921384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016406 (A004396 n).toNat * A131017 n

end

end A016380.P5510320575206921384

/-! ## A016380.P1377521376772184238

`A016406(A004396(n))*A157128(n)`
-/

namespace A016380.P1377521376772184238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016406 (A004396 n).toNat * A157128 n

end

end A016380.P1377521376772184238

/-! ## A016380.P3634079191711484202

`A016406(A004396(n))/A033999(n+2)`
-/

namespace A016380.P3634079191711484202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016406 (A004396 n).toNat : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016380.P3634079191711484202

/-! ## A016380.P15179502524903598652

`A016406(A004396(n))/A009001(2*n)`
-/

namespace A016380.P15179502524903598652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016406 (A004396 n).toNat : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016380.P15179502524903598652

/-! ## A016380.P8841883079258866150

`A016406(A002264(Δ[n²]))*A033999(n)`
-/

namespace A016380.P8841883079258866150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016406 (A002264 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A033999 n

end

end A016380.P8841883079258866150

/-! ## A016380.P4044544675436290374

`A016406(A002264(Δ[n²]))*A157128(n)`
-/

namespace A016380.P4044544675436290374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016406 (A002264 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat * A157128 n

end

end A016380.P4044544675436290374

/-!
# A016381: 319th cyclotomic polynomial.

The programs for A016381, there is no canonical definition to state claims against.
-/

/-! ## A016381.P16994913899817806661

`Δ[val(A038127(A038124(n+1)), 7)]`
-/

namespace A016381.P16994913899817806661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038127 (A038124 (n + 1)).toNat).toNat 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016381.P16994913899817806661

/-! ## A016381.P3260896285852223834

`Δ[gcd(A243078(n+1), A374629(2*(n+1)))]`
-/

namespace A016381.P3260896285852223834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A243078 (n + 1)) (A374629 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016381.P3260896285852223834

/-! ## A016381.P1848020557759305332

`Δ[A025456(A073254(3*n+1)*A073254(n))]`
-/

namespace A016381.P1848020557759305332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A073254 (3 * n + 1) * A073254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016381.P1848020557759305332

/-! ## A016381.P4804443763631867137

`Δ[A165430(p?[A008808(n)])]`
-/

namespace A016381.P4804443763631867137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165430 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016381.P4804443763631867137

/-!
# A016382: 322nd cyclotomic polynomial.

The programs for A016382, there is no canonical definition to state claims against.
-/

/-! ## A016382.P6208048102477034735

`(-1)^n*A016341(n)`
-/

namespace A016382.P6208048102477034735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016341 n

end

end A016382.P6208048102477034735

/-! ## A016382.P6148613088113708848

`A016341(n)*A033999(n)`
-/

namespace A016382.P6148613088113708848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A033999 n

end

end A016382.P6148613088113708848

/-! ## A016382.P16048579233013841193

`round(A016341(n)/A280193(n))`
-/

namespace A016382.P16048579233013841193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016341 n : ℚ) / (A280193 n : ℚ))

end

end A016382.P16048579233013841193

/-! ## A016382.P4116717181457780124

`round(A016341(n)/A280560(n))`
-/

namespace A016382.P4116717181457780124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016341 n : ℚ) / (A280560 n : ℚ))

end

end A016382.P4116717181457780124

/-! ## A016382.P4642697685869076628

`A016341(n)*A130595(∑[n])`
-/

namespace A016382.P4642697685869076628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A130595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016382.P4642697685869076628

/-! ## A016382.P16415143446760263467

`A016341(n)*A062157(n+1)`
-/

namespace A016382.P16415143446760263467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A062157 (n + 1)

end

end A016382.P16415143446760263467

/-! ## A016382.P3112745844254864038

`A016341(n)/A033999(n+2)`
-/

namespace A016382.P3112745844254864038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016341 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016382.P3112745844254864038

/-! ## A016382.P12772179975619299480

`A016341(n)*A056594(2*n)`
-/

namespace A016382.P12772179975619299480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A056594 (2 * n)

end

end A016382.P12772179975619299480

/-! ## A016382.P7287626006402174817

`A016341(n)*A087960(2*n)`
-/

namespace A016382.P7287626006402174817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A087960 (2 * n)

end

end A016382.P7287626006402174817

/-! ## A016382.P9708675230311026707

`A016341(n)*A081729(3*n)`
-/

namespace A016382.P9708675230311026707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A081729 (3 * n)

end

end A016382.P9708675230311026707

/-! ## A016382.P18254114712688912694

`A016341(n)/(A004442(n)-n)`
-/

namespace A016382.P18254114712688912694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016341 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016382.P18254114712688912694

/-! ## A016382.P2966748888417212155

`A016341(n)*A034947(2*n+1)`
-/

namespace A016382.P2966748888417212155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A034947 (2 * n + 1)

end

end A016382.P2966748888417212155

/-! ## A016382.P9248792294037180317

`-A016341(n)/(-1)^A020639(n+1)`
-/

namespace A016382.P9248792294037180317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016341 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016382.P9248792294037180317

/-! ## A016382.P3252525727580623615

`A010892(A016789(n)-A016341(n))`
-/

namespace A016382.P3252525727580623615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016341 n).toNat

end

end A016382.P3252525727580623615

/-! ## A016382.P6902437061561647655

`A056594(A005408(n)-A016341(n))`
-/

namespace A016382.P6902437061561647655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016341 n).toNat

end

end A016382.P6902437061561647655

/-! ## A016382.P7617185977308433275

`A016341(n)*A165202(A008585(n))`
-/

namespace A016382.P7617185977308433275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016341 n * A165202 (A008585 n).toNat

end

end A016382.P7617185977308433275

/-!
# A016383: 323rd cyclotomic polynomial.

The programs for A016383, there is no canonical definition to state claims against.
-/

/-! ## A016383.P13716176254914676762

`A016411(eq[A016368(2*n+1), A016399(n+2)])`
-/

namespace A016383.P13716176254914676762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016368 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016411 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A016383.P13716176254914676762

/-! ## A016383.P2616450277829014893

`Δ[A277156(record[A195019(n+1)²])]`
-/

namespace A016383.P2616450277829014893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195019 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277156 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016383.P2616450277829014893

/-! ## A016383.P12244285524414597000

`or(A014020(A024656(n)), A014028(n))`
-/

namespace A016383.P12244285524414597000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014020 (A024656 n).toNat) (A014028 n)

end

end A016383.P12244285524414597000

/-! ## A016383.P14972994856873814749

`Δ[val(A322679(n+1), A016825(n)+3)]`
-/

namespace A016383.P14972994856873814749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322679 (n + 1)).toNat (A016825 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016383.P14972994856873814749

/-! ## A016383.P14156859154539845075

`or(A014026(A051871(n)), A014028(n))`
-/

namespace A016383.P14156859154539845075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014026 (A051871 n).toNat) (A014028 n)

end

end A016383.P14156859154539845075

/-!
# A016384: 329th cyclotomic polynomial.

The programs for A016384, there is no canonical definition to state claims against.
-/

/-! ## A016384.P6367617216161823778

`A016407(n+14)+A000038(A037027(n))`
-/

namespace A016384.P6367617216161823778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016407 (n + 14) + A000038 (A037027 n).toNat

end

end A016384.P6367617216161823778

/-! ## A016384.P12103698203776921294

`A016332(A028898(n))^p?[A098751(2*n)]`
-/

namespace A016384.P12103698203776921294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098751 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016332 (A028898 n).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A016384.P12103698203776921294

/-! ## A016384.P12432343805188452564

`A016407(n+14)+A000007(A037027(n)+1)`
-/

namespace A016384.P12432343805188452564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016407 (n + 14) + A000007 (A037027 n + 1).toNat

end

end A016384.P12432343805188452564

/-! ## A016384.P3377407546546929767

`A016407(n+14)^A035789(A037027(n)+1)`
-/

namespace A016384.P3377407546546929767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016407 (n + 14) : ℚ) ^ (A035789 (A037027 n + 1).toNat : ℤ)

end

end A016384.P3377407546546929767

/-! ## A016384.P17141527388714616095

`A016407(n+14)^A005408(A331132(n+1))`
-/

namespace A016384.P17141527388714616095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016407 (n + 14) : ℚ) ^ (A005408 (A331132 (n + 1)).toNat : ℤ)

end

end A016384.P17141527388714616095

/-! ## A016384.P10150342066370754717

`A016332(A028898(n))^A000290(A275681(3*n+2))`
-/

namespace A016384.P10150342066370754717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016332 (A028898 n).toNat : ℚ) ^ (A000290 (A275681 (3 * n + 2)).toNat : ℤ)

end

end A016384.P10150342066370754717

/-! ## A016384.P15377454821539817025

`A016407(n+14)^A020639(A032917(n+1))`
-/

namespace A016384.P15377454821539817025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016407 (n + 14) : ℚ) ^ (A020639 (A032917 (n + 1)).toNat : ℤ)

end

end A016384.P15377454821539817025

/-!
# A016385: 330th cyclotomic polynomial.

The programs for A016385, there is no canonical definition to state claims against.
-/

/-! ## A016385.P12371985593145994755

`(-1)^n*A016342(n)`
-/

namespace A016385.P12371985593145994755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016342 n

end

end A016385.P12371985593145994755

/-! ## A016385.P13829231975549286758

`(-1)^n*A016424(3*n)`
-/

namespace A016385.P13829231975549286758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016424 (3 * n)

end

end A016385.P13829231975549286758

/-! ## A016385.P75649530041041088

`A016342(round(acot(n)+n))/(-1)^n`
-/

namespace A016385.P75649530041041088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016342 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016385.P75649530041041088

/-! ## A016385.P11422536288297836478

`A016342(round(sqrt(n²+1)))/(-1)^n`
-/

namespace A016385.P11422536288297836478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016342 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A016385.P11422536288297836478

/-! ## A016385.P3636542858810514550

`A016342(n)*A033999(n)`
-/

namespace A016385.P3636542858810514550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016342 n * A033999 n

end

end A016385.P3636542858810514550

/-! ## A016385.P3492474413107305115

`-A016342(n)/(-1)^A020639(n+1)`
-/

namespace A016385.P3492474413107305115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016342 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016385.P3492474413107305115

/-! ## A016385.P13680190497572926041

`A016424(A008585(n))*A033999(n)`
-/

namespace A016385.P13680190497572926041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016424 (A008585 n).toNat * A033999 n

end

end A016385.P13680190497572926041

/-!
# A016386: 340th cyclotomic polynomial.

The programs for A016386, there is no canonical definition to state claims against.
-/

/-! ## A016386.P16593271862867830295

`log2(gcd(2, n))*A016344(floor(n/2))`
-/

namespace A016386.P16593271862867830295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A016344 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A016386.P16593271862867830295

/-! ## A016386.P9836194822980350026

`char[2*n]*A016344(∑[and(1, n)])`
-/

namespace A016386.P9836194822980350026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016344 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A016386.P9836194822980350026

/-! ## A016386.P10041589161702098187

`A016344(ceil(C(or(1, n), n)/2)-(-1)^n)`
-/

namespace A016386.P10041589161702098187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ - (-1) ^ n).toNat

end

end A016386.P10041589161702098187

/-! ## A016386.P2055826731028501813

`A016344(gcd(2*n, A001281(n)))`
-/

namespace A016386.P2055826731028501813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016386.P2055826731028501813

/-! ## A016386.P14134430575378783561

`A016344(A004525(n))%gcd(2, n)`
-/

namespace A016386.P14134430575378783561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016344 (A004525 n).toNat) (Nat.gcd 2 n : ℤ)

end

end A016386.P14134430575378783561

/-! ## A016386.P10894425986650276353

`char[2*n]*A016344(A004526(n))`
-/

namespace A016386.P10894425986650276353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016344 (A004526 n).toNat

end

end A016386.P10894425986650276353

/-! ## A016386.P17979489845147945790

`char[2*n]*A016344(A110654(n))`
-/

namespace A016386.P17979489845147945790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016344 (A110654 n).toNat

end

end A016386.P17979489845147945790

/-! ## A016386.P13303675666129096730

`char[2*n]*A016344(A142150(n))`
-/

namespace A016386.P13303675666129096730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016344 (A142150 n).toNat

end

end A016386.P13303675666129096730

/-! ## A016386.P14601409447340289891

`A016344(gcd(∑[4*n], A029578(n)))`
-/

namespace A016386.P14601409447340289891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A029578 n))

end

end A016386.P14601409447340289891

/-! ## A016386.P7447768943739273454

`A016344(∑[and(1, n)])*A059841(n)`
-/

namespace A016386.P7447768943739273454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (∑ j ∈ Finset.range (n + 1), f1 j) * A059841 n

end

end A016386.P7447768943739273454

/-! ## A016386.P16429794040357266509

`A016344(A142150(n))-A000035(n)`
-/

namespace A016386.P16429794040357266509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (A142150 n).toNat - A000035 n

end

end A016386.P16429794040357266509

/-! ## A016386.P15486294350012617358

`A011644(A004525(n))*A056594(n)`
-/

namespace A016386.P15486294350012617358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011644 (A004525 n).toNat * A056594 n

end

end A016386.P15486294350012617358

/-! ## A016386.P2360269566403578035

`A016344(A004525(n))*A059841(n)`
-/

namespace A016386.P2360269566403578035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (A004525 n).toNat * A059841 n

end

end A016386.P2360269566403578035

/-! ## A016386.P12772310180697454050

`A016344(A004526(n))*A059841(n)`
-/

namespace A016386.P12772310180697454050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (A004526 n).toNat * A059841 n

end

end A016386.P12772310180697454050

/-! ## A016386.P4172436982838662167

`A016344(A004525(n))%A010131(n)`
-/

namespace A016386.P4172436982838662167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016344 (A004525 n).toNat) (A010131 n)

end

end A016386.P4172436982838662167

/-! ## A016386.P9520114648517989143

`A016344(A004526(n))%A010131(n)`
-/

namespace A016386.P9520114648517989143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016344 (A004526 n).toNat) (A010131 n)

end

end A016386.P9520114648517989143

/-! ## A016386.P12519253667941799985

`A016344(gcd(A005843(n), A006370(n)))`
-/

namespace A016386.P12519253667941799985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (Int.gcd (A005843 n) (A006370 n))

end

end A016386.P12519253667941799985

/-! ## A016386.P1163861028535352438

`A016344(A181762(n)%A007310(n+1))`
-/

namespace A016386.P1163861028535352438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (Int.tmod (A181762 n) (A007310 (n + 1))).toNat

end

end A016386.P1163861028535352438

/-! ## A016386.P3639424700105700393

`round(A016344(A004525(n))/A020639(n+2))`
-/

namespace A016386.P3639424700105700393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016344 (A004525 n).toNat : ℚ) / (A020639 (n + 2) : ℚ))

end

end A016386.P3639424700105700393

/-! ## A016386.P10892609322335141238

`A016344(A000035(n)+A142150(n)+A000035(n))`
-/

namespace A016386.P10892609322335141238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016344 (A000035 n + (A142150 n + A000035 n)).toNat

end

end A016386.P10892609322335141238

/-!
# A016387: 341st cyclotomic polynomial.

The programs for A016387, there is no canonical definition to state claims against.
-/

/-! ## A016387.P14493806126156702660

`A016420(record[n%A305837(n)])`
-/

namespace A016387.P14493806126156702660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A305837 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A016387.P14493806126156702660

/-! ## A016387.P4336333051344856490

`Δ[A185284(n)^A110726(n)]`
-/

namespace A016387.P4336333051344856490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185284 n : ℚ) ^ (A110726 (n + 10) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016387.P4336333051344856490

/-!
# A016389: 350th cyclotomic polynomial.

The programs for A016389, there is no canonical definition to state claims against.
-/

/-! ## A016389.P11338203536090936102

`(-1)^n*A016346(n)`
-/

namespace A016389.P11338203536090936102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016346 n

end

end A016389.P11338203536090936102

/-! ## A016389.P11621750829889733456

`A016346(n)*A016379(n)`
-/

namespace A016389.P11621750829889733456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 n * A016379 n

end

end A016389.P11621750829889733456

/-! ## A016389.P8643665471943088216

`A016346(n)*A033999(n)`
-/

namespace A016389.P8643665471943088216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 n * A033999 n

end

end A016389.P8643665471943088216

/-! ## A016389.P15665859201194038718

`A016346(n)*A081729(n)`
-/

namespace A016389.P15665859201194038718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 n * A081729 n

end

end A016389.P15665859201194038718

/-! ## A016389.P17367980534983993190

`A016371(A057354(Δ[n²]))`
-/

namespace A016389.P17367980534983993190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016371 (A057354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A016389.P17367980534983993190

/-! ## A016389.P222180796264450270

`A016346(n)*A130595(∑[n])`
-/

namespace A016389.P222180796264450270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016346 n * A130595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A016389.P222180796264450270

/-! ## A016389.P11607713541427760620

`A016346(n)/A009001(2*n)`
-/

namespace A016389.P11607713541427760620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016346 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016389.P11607713541427760620

/-! ## A016389.P12873948297896666455

`A016346(n)/A010892(3*n)`
-/

namespace A016389.P12873948297896666455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016346 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A016389.P12873948297896666455

/-! ## A016389.P6174625106489401633

`A016346(n)/(A004442(n)-n)`
-/

namespace A016389.P6174625106489401633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016346 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016389.P6174625106489401633

/-!
# A016391: 364th cyclotomic polynomial.

The programs for A016391, there is no canonical definition to state claims against.
-/

/-! ## A016391.P4804729639874877753

`A016348(gcd(2*n, ceil((n-1)/gcd(2, n))))`
-/

namespace A016391.P4804729639874877753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (Int.gcd (2 * n : ℤ) ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉)

end

end A016391.P4804729639874877753

/-! ## A016391.P14026626650954257691

`A016348(ceil(C(or(1, n), n)/2)-(-1)^n)`
-/

namespace A016391.P14026626650954257691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉ - (-1) ^ n).toNat

end

end A016391.P14026626650954257691

/-! ## A016391.P15080655312595884357

`A016348(A142150(n))-n%2`
-/

namespace A016391.P15080655312595884357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A142150 n).toNat - ((n % 2 : ℕ) : ℤ)

end

end A016391.P15080655312595884357

/-! ## A016391.P9712212432040300482

`A016348(gcd(2*n, A001281(n)))`
-/

namespace A016391.P9712212432040300482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016391.P9712212432040300482

/-! ## A016391.P8537673727617286704

`A016348(A065033(n))%gcd(2, n)`
-/

namespace A016391.P8537673727617286704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016348 (A065033 n).toNat) (Nat.gcd 2 n : ℤ)

end

end A016391.P8537673727617286704

/-! ## A016391.P5069835248298778184

`char[2*n]*A016348(A110654(n))`
-/

namespace A016391.P5069835248298778184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016348 (A110654 n).toNat

end

end A016391.P5069835248298778184

/-! ## A016391.P1981859388057886713

`A016348(gcd(∑[4*n], A029578(n)))`
-/

namespace A016391.P1981859388057886713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A029578 n))

end

end A016391.P1981859388057886713

/-! ## A016391.P13516464397011630198

`A016348(A142150(n)+4*and(1, n))`
-/

namespace A016391.P13516464397011630198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A142150 n + (4 * Nat.land 1 n : ℤ)).toNat

end

end A016391.P13516464397011630198

/-! ## A016391.P14208037407019596551

`A016348(xor(4*and(1, n), A142150(n)))`
-/

namespace A016391.P14208037407019596551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (Int.xor (4 * Nat.land 1 n : ℤ) (A142150 n)).toNat

end

end A016391.P14208037407019596551

/-! ## A016391.P1453457138683279745

`A016348(A142150(n))-A000035(n)`
-/

namespace A016391.P1453457138683279745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A142150 n).toNat - A000035 n

end

end A016391.P1453457138683279745

/-! ## A016391.P5827672752184450267

`A016348(A004526(n))*A059841(n)`
-/

namespace A016391.P5827672752184450267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A004526 n).toNat * A059841 n

end

end A016391.P5827672752184450267

/-! ## A016391.P11234331140571151907

`A016348(gcd(A001281(n), A005843(n)))`
-/

namespace A016391.P11234331140571151907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (Int.gcd (A001281 n) (A005843 n))

end

end A016391.P11234331140571151907

/-! ## A016391.P14132529385260034317

`A016348(gcd(A006370(n), A008574(n)))`
-/

namespace A016391.P14132529385260034317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (Int.gcd (A006370 n) (A008574 n))

end

end A016391.P14132529385260034317

/-! ## A016391.P17184255052333599404

`A016348(A142150(n))-log2(A000034(n))`
-/

namespace A016391.P17184255052333599404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A016348 (A142150 n).toNat : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A016391.P17184255052333599404

/-! ## A016391.P9754534077272404328

`A016348(∑[A000035(n)])*A059841(n)`
-/

namespace A016391.P9754534077272404328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A059841 n

end

end A016391.P9754534077272404328

/-! ## A016391.P15434516400677334651

`A016348(A142150(n))-Δ[A004526(n)]`
-/

namespace A016391.P15434516400677334651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A142150 n).toNat - (f1 (n + 1) - f1 n)

end

end A016391.P15434516400677334651

/-! ## A016391.P4178339315057786832

`A016348(A142150(n))-Δ[A008619(n)]`
-/

namespace A016391.P4178339315057786832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A142150 n).toNat - (f1 (n + 1) - f1 n)

end

end A016391.P4178339315057786832

/-! ## A016391.P5148906789740728102

`A016348(A142150(n))-char[A005408(n)]`
-/

namespace A016391.P5148906789740728102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A142150 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A016391.P5148906789740728102

/-! ## A016391.P1856989696306229989

`A000035(n+1)*A016348(A142150(n))`
-/

namespace A016391.P1856989696306229989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A016348 (A142150 n).toNat

end

end A016391.P1856989696306229989

/-! ## A016391.P11989321095141555678

`A016348(A004526(n+3)-A057979(n))`
-/

namespace A016391.P11989321095141555678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016348 (A004526 (n + 3) - A057979 n).toNat

end

end A016391.P11989321095141555678

/-!
# A016392: 370th cyclotomic polynomial.

The programs for A016392, there is no canonical definition to state claims against.
-/

/-! ## A016392.P17161236157393025503

`(-1)^n*A016349(n)`
-/

namespace A016392.P17161236157393025503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016349 n

end

end A016392.P17161236157393025503

/-! ## A016392.P6539108935531063160

`A016349(n)*A033999(n)`
-/

namespace A016392.P6539108935531063160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 n * A033999 n

end

end A016392.P6539108935531063160

/-! ## A016392.P46653629819025342

`round(A016349(n)/A131556(n))`
-/

namespace A016392.P46653629819025342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016349 n : ℚ) / (A131556 n : ℚ))

end

end A016392.P46653629819025342

/-! ## A016392.P4709537469373212649

`round(A016349(n)/A131714(n))`
-/

namespace A016392.P4709537469373212649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016349 n : ℚ) / (A131714 n : ℚ))

end

end A016392.P4709537469373212649

/-! ## A016392.P9265824067214294778

`round(A016349(n)/A280193(n))`
-/

namespace A016392.P9265824067214294778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016349 n : ℚ) / (A280193 n : ℚ))

end

end A016392.P9265824067214294778

/-! ## A016392.P13701001854851691062

`A016349(n)/A033999(n+2)`
-/

namespace A016392.P13701001854851691062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016349 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A016392.P13701001854851691062

/-! ## A016392.P2754792046763545884

`A016349(n)/(A004442(n)-n)`
-/

namespace A016392.P2754792046763545884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016349 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016392.P2754792046763545884

/-! ## A016392.P2109012627323253943

`A016349(n)*A034947(2*n+1)`
-/

namespace A016392.P2109012627323253943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016349 n * A034947 (2 * n + 1)

end

end A016392.P2109012627323253943

/-! ## A016392.P1187172383809763497

`A010892(A016789(n)-A016349(n))`
-/

namespace A016392.P1187172383809763497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016789 n - A016349 n).toNat

end

end A016392.P1187172383809763497

/-! ## A016392.P13618276702338567673

`A016349(n)/A016349(Δ[A004526(n)])`
-/

namespace A016392.P13618276702338567673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016349 n : ℚ) / (A016349 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A016392.P13618276702338567673

/-! ## A016392.P17369221471698278064

`A016349(n)/A016349(Δ[A008619(n)])`
-/

namespace A016392.P17369221471698278064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016349 n : ℚ) / (A016349 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A016392.P17369221471698278064

/-!
# A016394: 374th cyclotomic polynomial.

The programs for A016394, there is no canonical definition to state claims against.
-/

/-! ## A016394.P16737239999003290926

`(-1)^n*A016351(n)`
-/

namespace A016394.P16737239999003290926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016351 n

end

end A016394.P16737239999003290926

/-! ## A016394.P8945884783561228642

`A016351(n)*A033999(n)`
-/

namespace A016394.P8945884783561228642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016351 n * A033999 n

end

end A016394.P8945884783561228642

/-! ## A016394.P8302723677745739439

`round(A016351(n)/A280193(n))`
-/

namespace A016394.P8302723677745739439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016351 n : ℚ) / (A280193 n : ℚ))

end

end A016394.P8302723677745739439

/-! ## A016394.P17906813753177072734

`round(A016351(n)/A280560(n))`
-/

namespace A016394.P17906813753177072734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016351 n : ℚ) / (A280560 n : ℚ))

end

end A016394.P17906813753177072734

/-! ## A016394.P18244344952300651817

`A016351(n)*A056594(2*n)`
-/

namespace A016394.P18244344952300651817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016351 n * A056594 (2 * n)

end

end A016394.P18244344952300651817

/-! ## A016394.P7302322403447389099

`A016351(n)/A009001(2*n)`
-/

namespace A016394.P7302322403447389099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016351 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A016394.P7302322403447389099

/-! ## A016394.P11435781312224549512

`A016351(n)/(A004442(n)-n)`
-/

namespace A016394.P11435781312224549512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016351 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A016394.P11435781312224549512

/-! ## A016394.P1875979220389037173

`(Δ[A020639(n+4)]*A016351(n))%2`
-/

namespace A016394.P1875979220389037173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) - f1 n) * A016351 n) 2

end

end A016394.P1875979220389037173

/-! ## A016394.P13970012269834510600

`-A016351(n)/(-1)^A020639(n+1)`
-/

namespace A016394.P13970012269834510600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A016351 n : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ))

end

end A016394.P13970012269834510600

/-! ## A016394.P9826233442314575956

`A056594(A005408(n)-A016351(n))`
-/

namespace A016394.P9826233442314575956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A005408 n - A016351 n).toNat

end

end A016394.P9826233442314575956

/-! ## A016394.P723070419394318271

`A056594(A016351(n)+A005408(n+1))`
-/

namespace A016394.P723070419394318271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A016351 n + A005408 (n + 1)).toNat

end

end A016394.P723070419394318271

/-!
# A016395: 377th cyclotomic polynomial.

The programs for A016395, there is no canonical definition to state claims against.
-/

/-! ## A016395.P13424186349058316270

`Δ[val(A090223(A050967(n+1)), 10)]`
-/

namespace A016395.P13424186349058316270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A090223 (A050967 (n + 1)).toNat).toNat 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016395.P13424186349058316270

/-! ## A016395.P13626617294844221280

`Δ[A160094(A090223(A050967(n+1)))]`
-/

namespace A016395.P13626617294844221280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A090223 (A050967 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016395.P13626617294844221280

/-! ## A016395.P4869262721130136773

`or(A014022(A051867(n)), A014038(n))`
-/

namespace A016395.P4869262721130136773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014022 (A051867 n).toNat) (A014038 n)

end

end A016395.P4869262721130136773

/-! ## A016395.P4228907142737475085

`Δ[A063438((n+10)*A072473(n+1)+5)]`
-/

namespace A016395.P4228907142737475085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063438 ((n + 10 : ℤ) * A072473 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016395.P4228907142737475085

/-! ## A016395.P5466277529640108882

`Δ[val(A102310(n+4), A232846(2*n+3))]`
-/

namespace A016395.P5466277529640108882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A102310 (n + 4)).toNat (A232846 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A016395.P5466277529640108882

/-!
# A016396: 380th cyclotomic polynomial.

The programs for A016396, there is no canonical definition to state claims against.
-/

/-! ## A016396.P878601597568068902

`A016352(gcd(2*n, ceil((n-1)/gcd(2, n))))`
-/

namespace A016396.P878601597568068902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (Int.gcd (2 * n : ℤ) ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉)

end

end A016396.P878601597568068902

/-! ## A016396.P13765672076519530157

`A016352(gcd(2*n, A001281(n)))`
-/

namespace A016396.P13765672076519530157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (Int.gcd (2 * n : ℤ) (A001281 n))

end

end A016396.P13765672076519530157

/-! ## A016396.P8909053326099989807

`A016352(A004525(n))%gcd(2, n)`
-/

namespace A016396.P8909053326099989807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016352 (A004525 n).toNat) (Nat.gcd 2 n : ℤ)

end

end A016396.P8909053326099989807

/-! ## A016396.P13052581481193575104

`char[2*n]*A016352(A025480(n))`
-/

namespace A016396.P13052581481193575104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016352 (A025480 n).toNat

end

end A016396.P13052581481193575104

/-! ## A016396.P9394577713421653161

`char[2*n]*A016352(A065033(n))`
-/

namespace A016396.P9394577713421653161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016352 (A065033 n).toNat

end

end A016396.P9394577713421653161

/-! ## A016396.P9718527520199954631

`char[2*n]*A016352(A110654(n))`
-/

namespace A016396.P9718527520199954631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016352 (A110654 n).toNat

end

end A016396.P9718527520199954631

/-! ## A016396.P656835952827424058

`A016352(gcd(∑[4*n], A029578(n)))`
-/

namespace A016396.P656835952827424058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A029578 n))

end

end A016396.P656835952827424058

/-! ## A016396.P16138023155262518498

`char[2*n]*A016352(∑[A000035(n)])`
-/

namespace A016396.P16138023155262518498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A016352 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A016396.P16138023155262518498

/-! ## A016396.P8278741903226172330

`A011647(A004525(n))*A056594(n)`
-/

namespace A016396.P8278741903226172330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 (A004525 n).toNat * A056594 n

end

end A016396.P8278741903226172330

/-! ## A016396.P15013258820089244307

`A016352(A004525(n))*A059841(n)`
-/

namespace A016396.P15013258820089244307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (A004525 n).toNat * A059841 n

end

end A016396.P15013258820089244307

/-! ## A016396.P4234620159653655450

`A011647(A025480(n))*A056594(n)`
-/

namespace A016396.P4234620159653655450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 (A025480 n).toNat * A056594 n

end

end A016396.P4234620159653655450

/-! ## A016396.P17655996291687876517

`A016352(A025480(n))*A059841(n)`
-/

namespace A016396.P17655996291687876517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (A025480 n).toNat * A059841 n

end

end A016396.P17655996291687876517

/-! ## A016396.P2516970549285485947

`A016352(A014682(n/A093178(n)))`
-/

namespace A016396.P2516970549285485947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (A014682 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat).toNat

end

end A016396.P2516970549285485947

/-! ## A016396.P5853429901661204986

`A016352(A004525(n))%A040011(n)`
-/

namespace A016396.P5853429901661204986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016352 (A004525 n).toNat) (A040011 n)

end

end A016396.P5853429901661204986

/-! ## A016396.P6982594191100245516

`A016352(A065033(n))%A040011(n)`
-/

namespace A016396.P6982594191100245516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016352 (A065033 n).toNat) (A040011 n)

end

end A016396.P6982594191100245516

/-! ## A016396.P14331133107986589252

`A016352(gcd(A005843(n), A006370(n)))`
-/

namespace A016396.P14331133107986589252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (Int.gcd (A005843 n) (A006370 n))

end

end A016396.P14331133107986589252

/-! ## A016396.P9214159455083766664

`A016352(∑[A000035(n)])*A059841(n)`
-/

namespace A016396.P9214159455083766664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A059841 n

end

end A016396.P9214159455083766664

/-! ## A016396.P12509822028752297814

`A000035(n+1)*A016352(A004525(n))`
-/

namespace A016396.P12509822028752297814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A016352 (A004525 n).toNat

end

end A016396.P12509822028752297814

/-! ## A016396.P16945000177744975402

`(1-A000035(n))*A016352(A004525(n))`
-/

namespace A016396.P16945000177744975402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A016352 (A004525 n).toNat

end

end A016396.P16945000177744975402

/-!
# A016398: 390th cyclotomic polynomial.

The programs for A016398, there is no canonical definition to state claims against.
-/

/-! ## A016398.P2662127238265265497

`(-1)^n*A016353(n)`
-/

namespace A016398.P2662127238265265497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A016353 n

end

end A016398.P2662127238265265497

/-! ## A016398.P7499004349607797739

`A016353(n)*A033999(n)`
-/

namespace A016398.P7499004349607797739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016353 n * A033999 n

end

end A016398.P7499004349607797739

/-! ## A016398.P16704127708754805466

`A016353(n)/∑[A280560(n)]`
-/

namespace A016398.P16704127708754805466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016353 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A016398.P16704127708754805466

/-! ## A016398.P14017095113789958506

`A016353(n)*A057077(2*n)`
-/

namespace A016398.P14017095113789958506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016353 n * A057077 (2 * n)

end

end A016398.P14017095113789958506

/-! ## A016398.P11517112609479283183

`A016353(n)/A033999(n+4)`
-/

namespace A016398.P11517112609479283183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016353 n : ℚ) / (A033999 (n + 4) : ℚ)

end

end A016398.P11517112609479283183

/-! ## A016398.P16824211945518229913

`A016353(n)*A326143(∑[A280560(n)]+3)`
-/

namespace A016398.P16824211945518229913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016353 n * A326143 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A016398.P16824211945518229913

/-!
# A016399: 391st cyclotomic polynomial.

The programs for A016399, there is no canonical definition to state claims against.
-/

/-! ## A016399.P6463718602625198783

`Δ[A010051(A261437(n+1)+A140890(n+1))]`
-/

namespace A016399.P6463718602625198783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A261437 (n + 1) + A140890 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016399.P6463718602625198783

/-! ## A016399.P7155995164553251854

`or(A014020(A024656(n)), A014032(n))`
-/

namespace A016399.P7155995164553251854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014020 (A024656 n).toNat) (A014032 n)

end

end A016399.P7155995164553251854

/-! ## A016399.P5836857531026525809

`or(A014026(A051871(n)), A014032(n))`
-/

namespace A016399.P5836857531026525809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014026 (A051871 n).toNat) (A014032 n)

end

end A016399.P5836857531026525809

/-! ## A016399.P543670914244009716

`Δ[A262693(A318849(n+1)+A061339(n))]`
-/

namespace A016399.P543670914244009716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A318849 (n + 1) + A061339 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016399.P543670914244009716

/-! ## A016399.P2063817326425033638

`Δ[A054973(A268608(n+2))]`
-/

namespace A016399.P2063817326425033638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A268608 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A016399.P2063817326425033638

