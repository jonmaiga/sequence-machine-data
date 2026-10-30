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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
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
# A093500: a(n) = (15*n^2 + 5*n + 2)/2.

The programs for A093500, the canonical program `A093500.P2482358223903963986` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093500 has offset 1).

The definition of A093500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15*(n+1)²+5*(n+1)+2)/2` (program `A093500.P4393277072892625183`, by `A093500.P4393277072892625183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093500.P10661404767142154791

`ogf((11+3x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A093500.P10661404767142154791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 3, 1] [1, -3, 3, -1] n

end

end A093500.P10661404767142154791

namespace A093500

/-- `ogf((11+3x+x^2)/(1-3x+3x^2-x^3))` -/
def P10661404767142154791.Spec : Prop :=
  ∀ n, P10661404767142154791.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P4393277072892625183

`(15*(n+1)²+5*(n+1)+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093500.P4393277072892625183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * (n + 1) ^ 2 + 5 * (n + 1) + 2 : ℚ) / 2

end

end A093500.P4393277072892625183

namespace A093500

/-- `(15*(n+1)²+5*(n+1)+2)/2` -/
def P4393277072892625183.Spec : Prop :=
  ∀ n, P4393277072892625183.a n = (A093500 (n + 1) : ℚ)

theorem P4393277072892625183.correct : P4393277072892625183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A093500, Nat.add_sub_cancel, A093500.P4393277072892625183.a, A093500.P2482358223903963986.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A093500, Nat.add_sub_cancel, A093500.P4393277072892625183.a, A093500.P2482358223903963986.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A093500

/-! ## A093500.P2482358223903963986

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=11, a(1)=36, a(2)=76`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093500

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2482358223903963986.Spec : Prop :=
  ∀ n, P2482358223903963986.a n = A093500 (n + 1)

theorem P2482358223903963986.correct : P2482358223903963986.Spec := by
  intro n
  simp only [A093500, Nat.add_sub_cancel]

end A093500

/-! ## A093500.P10805705957503224480

`∑[a(n-1)+15]` with `a(0)=11, a(1)=25`
-/

namespace A093500.P10805705957503224480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 25] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093500.P10805705957503224480

namespace A093500

/-- `∑[a(n-1)+15]` -/
def P10805705957503224480.Spec : Prop :=
  ∀ n, (P10805705957503224480.a n : ℤ) = A093500 (n + 1)

end A093500

/-! ## A093500.P5467904001784053455

`Δ[(n+1)*(∑[n+1]+C(2*n+1, 2))]`
-/

namespace A093500.P5467904001784053455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose (2 * n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A093500.P5467904001784053455

namespace A093500

/-- `Δ[(n+1)*(∑[n+1]+C(2*n+1, 2))]` -/
def P5467904001784053455.Spec : Prop :=
  ∀ n, P5467904001784053455.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P6702744323945965711

`∑[A269100(n)]+n²`
-/

namespace A093500.P6702744323945965711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A093500.P6702744323945965711

namespace A093500

/-- `∑[A269100(n)]+n²` -/
def P6702744323945965711.Spec : Prop :=
  ∀ n, P6702744323945965711.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P1201382337959666111

`A188135(n+1)-∑[n]`
-/

namespace A093500.P1201382337959666111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093500.P1201382337959666111

namespace A093500

/-- `A188135(n+1)-∑[n]` -/
def P1201382337959666111.Spec : Prop :=
  ∀ n, P1201382337959666111.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P10283627806644135159

`Δ[(n+1)*(5*A000217(n)+1)]`
-/

namespace A093500.P10283627806644135159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (5 * A000217 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093500.P10283627806644135159

namespace A093500

/-- `Δ[(n+1)*(5*A000217(n)+1)]` -/
def P10283627806644135159.Spec : Prop :=
  ∀ n, P10283627806644135159.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P3255613060989581563

`A129111(n)+A017017(n)`
-/

namespace A093500.P3255613060989581563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129111 n + A017017 n

end

end A093500.P3255613060989581563

namespace A093500

/-- `A129111(n)+A017017(n)` -/
def P3255613060989581563.Spec : Prop :=
  ∀ n, P3255613060989581563.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P15840944308633836901

`A348845(n)+A051869(n)`
-/

namespace A093500.P15840944308633836901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348845 n + A051869 n

end

end A093500.P15840944308633836901

namespace A093500

/-- `A348845(n)+A051869(n)` -/
def P15840944308633836901.Spec : Prop :=
  ∀ n, P15840944308633836901.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P4640743033016345171

`A154106(n)-A027468(n)`
-/

namespace A093500.P4640743033016345171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154106 n - A027468 n

end

end A093500.P4640743033016345171

namespace A093500

/-- `A154106(n)-A027468(n)` -/
def P4640743033016345171.Spec : Prop :=
  ∀ n, P4640743033016345171.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P18201923009462581426

`A132208(n)-A152734(n)`
-/

namespace A093500.P18201923009462581426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132208 n - A152734 n

end

end A093500.P18201923009462581426

namespace A093500

/-- `A132208(n)-A152734(n)` -/
def P18201923009462581426.Spec : Prop :=
  ∀ n, P18201923009462581426.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P13336625369286563520

`A292018(n+1)+A017509(n)`
-/

namespace A093500.P13336625369286563520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292018 (n + 1) + A017509 n

end

end A093500.P13336625369286563520

namespace A093500

/-- `A292018(n+1)+A017509(n)` -/
def P13336625369286563520.Spec : Prop :=
  ∀ n, P13336625369286563520.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P17066160843637282052

`A269457(n)+A062786(n+1)`
-/

namespace A093500.P17066160843637282052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269457 n + A062786 (n + 1)

end

end A093500.P17066160843637282052

namespace A093500

/-- `A269457(n)+A062786(n+1)` -/
def P17066160843637282052.Spec : Prop :=
  ∀ n, P17066160843637282052.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P16187568355393198822

`A069125(n+1)+A067728(n+1)`
-/

namespace A093500.P16187568355393198822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069125 (n + 1) + A067728 (n + 1)

end

end A093500.P16187568355393198822

namespace A093500

/-- `A069125(n+1)+A067728(n+1)` -/
def P16187568355393198822.Spec : Prop :=
  ∀ n, P16187568355393198822.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P6250707153547683540

`A167469(n+1)+A004766(n+1)`
-/

namespace A093500.P6250707153547683540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167469 (n + 1) + A004766 (n + 1)

end

end A093500.P6250707153547683540

namespace A093500

/-- `A167469(n+1)+A004766(n+1)` -/
def P6250707153547683540.Spec : Prop :=
  ∀ n, P6250707153547683540.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P1233571763267512351

`A168235(n+1)+A167544(n+4)`
-/

namespace A093500.P1233571763267512351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168235 (n + 1) + A167544 (n + 4)

end

end A093500.P1233571763267512351

namespace A093500

/-- `A168235(n+1)+A167544(n+4)` -/
def P1233571763267512351.Spec : Prop :=
  ∀ n, P1233571763267512351.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P5517027469593197282

`Δ[A006564(n+1)]`
-/

namespace A093500.P5517027469593197282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093500.P5517027469593197282

namespace A093500

/-- `Δ[A006564(n+1)]` -/
def P5517027469593197282.Spec : Prop :=
  ∀ n, P5517027469593197282.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P16949585450163201382

`Δ[(n+1)*A005891(n)]`
-/

namespace A093500.P16949585450163201382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093500.P16949585450163201382

namespace A093500

/-- `Δ[(n+1)*A005891(n)]` -/
def P16949585450163201382.Spec : Prop :=
  ∀ n, P16949585450163201382.a n = A093500 (n + 1)

end A093500

/-! ## A093500.P2799112774668552426

`A236267(n+1)-∑[n+1]`
-/

namespace A093500.P2799112774668552426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A093500.P2799112774668552426

namespace A093500

/-- `A236267(n+1)-∑[n+1]` -/
def P2799112774668552426.Spec : Prop :=
  ∀ n, P2799112774668552426.a n = A093500 (n + 1)

end A093500

/-!
# A093501: Numbers whose digit permutations are all squarefree numbers.

The programs for A093501, there is no canonical definition to state claims against.
-/

/-! ## A093501.P10641046475428649201

`A080995(A000290(2*n+3))+A077337(n+1)`
-/

namespace A093501.P10641046475428649201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080995 (A000290 (2 * n + 3)).toNat + A077337 (n + 1)

end

end A093501.P10641046475428649201

/-!
# A093502: a(1) = 2; for n > 0, a(n+1) is the a(n)-th prime after a(n).

The programs for A093502, the canonical program `A093502.P7956115543108727931` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093502 has offset 1).

The definition of A093502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093502.P7956115543108727931

`A000040(A074271(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093502

/-- `A000040(A074271(n+1))` -/
def P7956115543108727931.Spec : Prop :=
  ∀ n, P7956115543108727931.a n = A093502 (n + 1)

theorem P7956115543108727931.correct : P7956115543108727931.Spec := by
  intro n
  simp only [A093502, Nat.add_sub_cancel]

end A093502

/-! ## A093502.P10012092742117877123

`A000040(A000720(a(n-1))+a(n-1))` with `a(0)=2`
-/

namespace A093502.P10012092742117877123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (a (n - 1)).toNat + a (n - 1)).toNat

end

end A093502.P10012092742117877123

namespace A093502

/-- `A000040(A000720(a(n-1))+a(n-1))` -/
def P10012092742117877123.Spec : Prop :=
  ∀ n, P10012092742117877123.a n = A093502 (n + 1)

end A093502

/-! ## A093502.P13832761041274446822

`Δ[A074271(n+1)]`
-/

namespace A093502.P13832761041274446822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093502.P13832761041274446822

namespace A093502

/-- `Δ[A074271(n+1)]` -/
def P13832761041274446822.Spec : Prop :=
  ∀ n, P13832761041274446822.a n = A093502 (n + 1)

end A093502

/-! ## A093502.P13780058225552207214

`Δ[record[A074271(A028920(n))]]`
-/

namespace A093502.P13780058225552207214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074271 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093502.P13780058225552207214

namespace A093502

/-- `Δ[record[A074271(A028920(n))]]` -/
def P13780058225552207214.Spec : Prop :=
  ∀ n, P13780058225552207214.a n = A093502 (n + 1)

end A093502

/-! ## A093502.P6984737912503335532

`Δ[record[A074271(A065648(n))]]`
-/

namespace A093502.P6984737912503335532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074271 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093502.P6984737912503335532

namespace A093502

/-- `Δ[record[A074271(A065648(n))]]` -/
def P6984737912503335532.Spec : Prop :=
  ∀ n, P6984737912503335532.a n = A093502 (n + 1)

end A093502

/-!
# A093503: a(0) = 2, a(n) = least prime >= a(n-1) + n.

The programs for A093503, the canonical program `A093503.P1099342045634014280` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093503 has offset 0).

The definition of A093503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093503.P1099342045634014280

`A151800(n-1+a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093503

/-- `A151800(n-1+a(n-1))` -/
def P1099342045634014280.Spec : Prop :=
  ∀ n, P1099342045634014280.a n = A093503 n

theorem P1099342045634014280.correct : P1099342045634014280.Spec := by
  intro n
  simp only [A093503]

end A093503

/-! ## A093503.P13115950050350538906

`A151800(n-(1-a(n-1)))` with `a(0)=2`
-/

namespace A093503.P13115950050350538906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((n : ℤ) - (1 - a (n - 1))).toNat

end

end A093503.P13115950050350538906

namespace A093503

/-- `A151800(n-(1-a(n-1)))` -/
def P13115950050350538906.Spec : Prop :=
  ∀ n, P13115950050350538906.a n = A093503 n

theorem P13115950050350538906.correct : P13115950050350538906.Spec := by
  intro n
  simp only [A093503, Nat.add_sub_cancel, A093503.P13115950050350538906.a, A093503.P1099342045634014280.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A093503

/-! ## A093503.P8427917668440785961

`A151800(A000010(a(n-1))+n)` with `a(0)=2`
-/

namespace A093503.P8427917668440785961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A000010 (a (n - 1)).toNat + (n : ℤ)).toNat

end

end A093503.P8427917668440785961

namespace A093503

/-- `A151800(A000010(a(n-1))+n)` -/
def P8427917668440785961.Spec : Prop :=
  ∀ n, P8427917668440785961.a n = A093503 n

end A093503

/-! ## A093503.P2915869645645547351

`A151800(A151799(a(n-1)+n))` with `a(0)=2`
-/

namespace A093503.P2915869645645547351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A151799 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A093503.P2915869645645547351

namespace A093503

/-- `A151800(A151799(a(n-1)+n))` -/
def P2915869645645547351.Spec : Prop :=
  ∀ n, P2915869645645547351.a n = A093503 n

end A093503

/-! ## A093503.P5807864870316750345

`A151800(a(n-1)-A024000(n))` with `a(0)=2`
-/

namespace A093503.P5807864870316750345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) - A024000 n).toNat

end

end A093503.P5807864870316750345

namespace A093503

/-- `A151800(a(n-1)-A024000(n))` -/
def P5807864870316750345.Spec : Prop :=
  ∀ n, P5807864870316750345.a n = A093503 n

end A093503

/-! ## A093503.P948787884694634310

`A007918(a(n-1)+n)` with `a(0)=2`
-/

namespace A093503.P948787884694634310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007918 (a (n - 1) + (n : ℤ)).toNat

end

end A093503.P948787884694634310

namespace A093503

/-- `A007918(a(n-1)+n)` -/
def P948787884694634310.Spec : Prop :=
  ∀ n, P948787884694634310.a n = A093503 n

end A093503

/-! ## A093503.P15562066924009601606

`A266620(a(n-1)-1+n)` with `a(0)=2`
-/

namespace A093503.P15562066924009601606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A266620 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A093503.P15562066924009601606

namespace A093503

/-- `A266620(a(n-1)-1+n)` -/
def P15562066924009601606.Spec : Prop :=
  ∀ n, P15562066924009601606.a n = A093503 n

end A093503

/-!
# A093505: a(n) = floor(A001969(n)/2 + 1/2).

The programs for A093505, the canonical program `A093505.P1791230667715959471` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093505 has offset 1).

The definition of A093505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093505.P4235397940192916104

`A001969(n+1)-n`
-/

namespace A093505.P4235397940192916104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) - (n : ℤ)

end

end A093505.P4235397940192916104

namespace A093505

/-- `A001969(n+1)-n` -/
def P4235397940192916104.Spec : Prop :=
  ∀ n, P4235397940192916104.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P11066579791946061632

`n+1+A000120(n)%2-1`
-/

namespace A093505.P11066579791946061632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + Int.tmod (A000120 n) 2 - 1

end

end A093505.P11066579791946061632

namespace A093505

/-- `n+1+A000120(n)%2-1` -/
def P11066579791946061632.Spec : Prop :=
  ∀ n, P11066579791946061632.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P1791230667715959471

`floor(A001969(n+1)/2+1/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093505

/-- `floor(A001969(n+1)/2+1/2)` -/
def P1791230667715959471.Spec : Prop :=
  ∀ n, P1791230667715959471.a n = A093505 (n + 1)

theorem P1791230667715959471.correct : P1791230667715959471.Spec := by
  intro n
  simp only [A093505, Nat.add_sub_cancel]

end A093505

/-! ## A093505.P11777750204379696638

`char[comp[xor(2*n, n)]]+n`
-/

namespace A093505.P11777750204379696638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A093505.P11777750204379696638

namespace A093505

/-- `char[comp[xor(2*n, n)]]+n` -/
def P11777750204379696638.Spec : Prop :=
  ∀ n, (P11777750204379696638.a n : ℤ) = A093505 (n + 1)

end A093505

/-! ## A093505.P16630886745714571006

`char[xor(n, 2*n+1)]+n`
-/

namespace A093505.P16630886745714571006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + n

end

end A093505.P16630886745714571006

namespace A093505

/-- `char[xor(n, 2*n+1)]+n` -/
def P16630886745714571006.Spec : Prop :=
  ∀ n, (P16630886745714571006.a n : ℤ) = A093505 (n + 1)

end A093505

/-! ## A093505.P10870186030224850324

`1-(char[xor(n, 2*n)]-n)`
-/

namespace A093505.P10870186030224850324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A093505.P10870186030224850324

namespace A093505

/-- `1-(char[xor(n, 2*n)]-n)` -/
def P10870186030224850324.Spec : Prop :=
  ∀ n, P10870186030224850324.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P12258298357542784781

`comp[xor(n, 2*n+1)]-n`
-/

namespace A093505.P12258298357542784781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A093505.P12258298357542784781

namespace A093505

/-- `comp[xor(n, 2*n+1)]-n` -/
def P12258298357542784781.Spec : Prop :=
  ∀ n, P12258298357542784781.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P248754028434163357

`xor(1, comp[xor(n, 2*n)])-n`
-/

namespace A093505.P248754028434163357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - (n : ℤ)

end

end A093505.P248754028434163357

namespace A093505

/-- `xor(1, comp[xor(n, 2*n)])-n` -/
def P248754028434163357.Spec : Prop :=
  ∀ n, P248754028434163357.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P1404344427497507670

`ceil(comp[xor(n, 2*n+1)]/2)`
-/

namespace A093505.P1404344427497507670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2⌉

end

end A093505.P1404344427497507670

namespace A093505

/-- `ceil(comp[xor(n, 2*n+1)]/2)` -/
def P1404344427497507670.Spec : Prop :=
  ∀ n, P1404344427497507670.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P11477153408433500028

`round(comp[xor(n, 2*n+1)]/2)`
-/

namespace A093505.P11477153408433500028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 2)

end

end A093505.P11477153408433500028

namespace A093505

/-- `round(comp[xor(n, 2*n+1)]/2)` -/
def P11477153408433500028.Spec : Prop :=
  ∀ n, P11477153408433500028.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P6279011418592453143

`comp[xor(n, 2*n+1)]%2+n`
-/

namespace A093505.P6279011418592453143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 + n

end

end A093505.P6279011418592453143

namespace A093505

/-- `comp[xor(n, 2*n+1)]%2+n` -/
def P6279011418592453143.Spec : Prop :=
  ∀ n, (P6279011418592453143.a n : ℤ) = A093505 (n + 1)

end A093505

/-! ## A093505.P12427832763377893124

`and(1, comp[xor(n, 2*n+1)])+n`
-/

namespace A093505.P12427832763377893124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + n

end

end A093505.P12427832763377893124

namespace A093505

/-- `and(1, comp[xor(n, 2*n+1)])+n` -/
def P12427832763377893124.Spec : Prop :=
  ∀ n, (P12427832763377893124.a n : ℤ) = A093505 (n + 1)

end A093505

/-! ## A093505.P14202543780034204782

`eq[1, -a(and(n, n-1))]-n` with `a(0)=1`
-/

namespace A093505.P14202543780034204782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A093505.P14202543780034204782

namespace A093505

/-- `eq[1, -a(and(n, n-1))]-n` -/
def P14202543780034204782.Spec : Prop :=
  ∀ n, P14202543780034204782.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P8071991825191411674

`C(2*n, comp[xor(n, 2*n)])+n`
-/

namespace A093505.P8071991825191411674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + n

end

end A093505.P8071991825191411674

namespace A093505

/-- `C(2*n, comp[xor(n, 2*n)])+n` -/
def P8071991825191411674.Spec : Prop :=
  ∀ n, (P8071991825191411674.a n : ℤ) = A093505 (n + 1)

end A093505

/-! ## A093505.P2935280408961592296

`round(∑[4*n]/comp[xor(n, 2*n)])`
-/

namespace A093505.P2935280408961592296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ))

end

end A093505.P2935280408961592296

namespace A093505

/-- `round(∑[4*n]/comp[xor(n, 2*n)])` -/
def P2935280408961592296.Spec : Prop :=
  ∀ n, P2935280408961592296.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P3238475109340865378

`gcd(2, a(and(n, n-1)))+n-1` with `a(0)=0`
-/

namespace A093505.P3238475109340865378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Int.gcd 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) : ℤ) + ((n : ℤ) - 1)

end

end A093505.P3238475109340865378

namespace A093505

/-- `gcd(2, a(and(n, n-1)))+n-1` -/
def P3238475109340865378.Spec : Prop :=
  ∀ n, P3238475109340865378.a n = A093505 (n + 1)

end A093505

/-! ## A093505.P8413023121159608237

`n+1-and(1, a(and(n, n-1)))` with `a(0)=0`
-/

namespace A093505.P8413023121159608237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) - Int.land 1 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A093505.P8413023121159608237

namespace A093505

/-- `n+1-and(1, a(and(n, n-1)))` -/
def P8413023121159608237.Spec : Prop :=
  ∀ n, P8413023121159608237.a n = A093505 (n + 1)

end A093505

/-!
# A093507: Perimeter of primitive Pythagorean triangles sorted on hypotenuse A020882(n).

The programs for A093507, there is no canonical definition to state claims against.
-/

/-! ## A093507.P13154999329328481847

`A020882(n+1)+A231100(n+1)+A180620(n+1)`
-/

namespace A093507.P13154999329328481847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020882 (n + 1) + (A231100 (n + 1) + A180620 (n + 1))

end

end A093507.P13154999329328481847

/-! ## A093507.P13158735830278602532

`A000005(A152294(n+1))*A093508(n+1)`
-/

namespace A093507.P13158735830278602532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A152294 (n + 1)).toNat * A093508 (n + 1)

end

end A093507.P13158735830278602532

/-! ## A093507.P367609018247610012

`A000005(A155187(n+1))*A093508(n+1)`
-/

namespace A093507.P367609018247610012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A155187 (n + 1)).toNat * A093508 (n + 1)

end

end A093507.P367609018247610012

/-! ## A093507.P11039398533241533231

`A001222(A105984(n+1))*A093508(n+1)`
-/

namespace A093507.P11039398533241533231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A105984 (n + 1)).toNat * A093508 (n + 1)

end

end A093507.P11039398533241533231

/-! ## A093507.P12814151490998273436

`A000005(A282178(n+1))*A093508(n+1)`
-/

namespace A093507.P12814151490998273436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A282178 (n + 1)).toNat * A093508 (n + 1)

end

end A093507.P12814151490998273436

/-!
# A093508: Semiperimeter of primitive Pythagorean triangles sorted on hypotenuse A020882(n).

The programs for A093508, there is no canonical definition to state claims against.
-/

/-! ## A093508.P9766644803962703636

`(A093507(n+1)/2)%A078928(n+1)`
-/

namespace A093508.P9766644803962703636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A093507 (n + 1) : ℚ) / 2)) (A078928 (n + 1))

end

end A093508.P9766644803962703636

/-! ## A093508.P5721362653580377084

`A093507(n+1)/A000005(A152294(n+1))`
-/

namespace A093508.P5721362653580377084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093507 (n + 1) : ℚ) / (A000005 (A152294 (n + 1)).toNat : ℚ)

end

end A093508.P5721362653580377084

/-! ## A093508.P16323350428831873072

`A093507(n+1)/A000005(A155187(n+1))`
-/

namespace A093508.P16323350428831873072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093507 (n + 1) : ℚ) / (A000005 (A155187 (n + 1)).toNat : ℚ)

end

end A093508.P16323350428831873072

/-! ## A093508.P17518826346964224523

`A001281(A093507(n+1)%A152294(n+1))`
-/

namespace A093508.P17518826346964224523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.tmod (A093507 (n + 1)) (A152294 (n + 1))).toNat

end

end A093508.P17518826346964224523

/-! ## A093508.P10547034868193009074

`A001281(A093507(n+1))%A155187(n+3)`
-/

namespace A093508.P10547034868193009074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001281 (A093507 (n + 1)).toNat) (A155187 (n + 3))

end

end A093508.P10547034868193009074

/-!
# A093509: Multiples of 5 or 6.

The programs for A093509, the canonical program `A093509.P960984560595031353` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093509 has offset 1).

The definition of A093509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093509.P960984560595031353

`ogf((5x-4x^2+8x^3-6x^4+9x^5-6x^6+8x^7-4x^8+5x^9)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093509

/-- `ogf((5x-4x^2+8x^3-6x^4+9x^5-6x^6+8x^7-4x^8+5x^9)/(1-2x+2x^2-2x^3+2x^4-2x^5+2x^6-2x^7+2x^8-2x^9+x^10))` -/
def P960984560595031353.Spec : Prop :=
  ∀ n, P960984560595031353.a n = A093509 (n + 1)

theorem P960984560595031353.correct : P960984560595031353.Spec := by
  intro n
  simp only [A093509, Nat.add_sub_cancel]

end A093509

/-! ## A093509.P6773509978159280936

`∪[5*n, 6*n]`
-/

namespace A093509.P6773509978159280936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A093509.P6773509978159280936

namespace A093509

/-- `∪[5*n, 6*n]` -/
def P6773509978159280936.Spec : Prop :=
  ∀ n, (P6773509978159280936.a n : ℤ) = A093509 (n + 1)

end A093509

/-! ## A093509.P504380280267039063

`record[n-n%(gcd(2, n)+4)]`
-/

namespace A093509.P504380280267039063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % (Nat.gcd 2 n + 4) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093509.P504380280267039063

namespace A093509

/-- `record[n-n%(gcd(2, n)+4)]` -/
def P504380280267039063.Spec : Prop :=
  ∀ n, P504380280267039063.a n = A093509 (n + 1)

end A093509

/-! ## A093509.P12936199103251484377

`lt[lcm(30, n), a(n-1)+7]` with `a(0)=1`
-/

namespace A093509.P12936199103251484377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 30 n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093509.P12936199103251484377

namespace A093509

/-- `lt[lcm(30, n), a(n-1)+7]` -/
def P12936199103251484377.Spec : Prop :=
  ∀ n, (P12936199103251484377.a n : ℤ) = A093509 (n + 1)

end A093509

/-! ## A093509.P8520688691431592952

`∑[5/a(n-1)]-a(n-1)%5` with `a(0)=0, a(1)=5`
-/

namespace A093509.P8520688691431592952
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 5 : ℚ)

end

end A093509.P8520688691431592952

namespace A093509

/-- `∑[5/a(n-1)]-a(n-1)%5` -/
def P8520688691431592952.Spec : Prop :=
  ∀ n, P8520688691431592952.a n = (A093509 (n + 1) : ℚ)

end A093509

/-! ## A093509.P14060439854642867232

`3*n+2-(3*n+2)%(6-11*and(1, n))`
-/

namespace A093509.P14060439854642867232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℤ) - Int.tmod (3 * n + 2 : ℤ) (6 - (11 * Nat.land 1 n : ℤ))

end

end A093509.P14060439854642867232

namespace A093509

/-- `3*n+2-(3*n+2)%(6-11*and(1, n))` -/
def P14060439854642867232.Spec : Prop :=
  ∀ n, P14060439854642867232.a n = A093509 (n + 1)

end A093509

/-! ## A093509.P2459755145237489353

`eq[0, A110666(A091703(n))]`
-/

namespace A093509.P2459755145237489353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 (A091703 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093509.P2459755145237489353

namespace A093509

/-- `eq[0, A110666(A091703(n))]` -/
def P2459755145237489353.Spec : Prop :=
  ∀ n, (P2459755145237489353.a n : ℤ) = A093509 (n + 1)

end A093509

/-! ## A093509.P16167190075152296889

`eq[9, A020639(A091703(n)+9)²]`
-/

namespace A093509.P16167190075152296889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A091703 n + 9).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093509.P16167190075152296889

namespace A093509

/-- `eq[9, A020639(A091703(n)+9)²]` -/
def P16167190075152296889.Spec : Prop :=
  ∀ n, (P16167190075152296889.a n : ℤ) = A093509 (n + 1)

end A093509

/-! ## A093509.P6230388119445036251

`eq[A255680(n), A256480(n)]`
-/

namespace A093509.P6230388119445036251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093509.P6230388119445036251

namespace A093509

/-- `eq[A255680(n), A256480(n)]` -/
def P6230388119445036251.Spec : Prop :=
  ∀ n, (P6230388119445036251.a n : ℤ) = A093509 (n + 1)

end A093509

/-! ## A093509.P13719271347267619194

`eq[A256480(n), A316569(n)]`
-/

namespace A093509.P13719271347267619194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093509.P13719271347267619194

namespace A093509

/-- `eq[A256480(n), A316569(n)]` -/
def P13719271347267619194.Spec : Prop :=
  ∀ n, (P13719271347267619194.a n : ℤ) = A093509 (n + 1)

end A093509

/-! ## A093509.P9816987447750704343

`eq[0, A140083(n*A011558(n))]`
-/

namespace A093509.P9816987447750704343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140083 ((n : ℤ) * A011558 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093509.P9816987447750704343

namespace A093509

/-- `eq[0, A140083(n*A011558(n))]` -/
def P9816987447750704343.Spec : Prop :=
  ∀ n, (P9816987447750704343.a n : ℤ) = A093509 (n + 1)

end A093509

/-! ## A093509.P913752160446809393

`eq[0, A255680(A181762(n))]`
-/

namespace A093509.P913752160446809393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 (A181762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093509.P913752160446809393

namespace A093509

/-- `eq[0, A255680(A181762(n))]` -/
def P913752160446809393.Spec : Prop :=
  ∀ n, (P913752160446809393.a n : ℤ) = A093509 (n + 1)

end A093509

/-!
# A093510: Transform of the prime sequence by the Rule30 cellular automaton.

The programs for A093510, there is no canonical definition to state claims against.
-/

/-! ## A093510.P12166591526215239436

`lt[0, A309561(n)%4]`
-/

namespace A093510.P12166591526215239436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309561 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A093510.P12166591526215239436

/-! ## A093510.P8942841130613131354

`comp[A093517(n+1)-1]+1`
-/

namespace A093510.P8942841130613131354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093510.P8942841130613131354

/-! ## A093510.P6470066287276432305

`eq[n, n^A168141(n+1)]+2`
-/

namespace A093510.P6470066287276432305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A168141 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A093510.P6470066287276432305

/-! ## A093510.P12800354089471180581

`comp[∪[A093566(3*n+1), A093517(n+1)]]`
-/

namespace A093510.P12800354089471180581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093517 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A093510.P12800354089471180581

/-! ## A093510.P8471861738772585733

`comp[A267537(n)+A171845(A065033(n))]`
-/

namespace A093510.P8471861738772585733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n + A171845 (A065033 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093510.P8471861738772585733

/-!
# A093511: Transform of the prime sequence by the Rule45 cellular automaton.

The programs for A093511, there is no canonical definition to state claims against.
-/

/-! ## A093511.P6269571083807520426

`record[xor(n+1, char[A100317(n+1)])]`
-/

namespace A093511.P6269571083807520426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093511.P6269571083807520426

/-! ## A093511.P5672063278800569467

`record[xor(A055672(n), A181569(n+1))]`
-/

namespace A093511.P5672063278800569467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055672 n) (A181569 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093511.P5672063278800569467

/-! ## A093511.P10109766111070777147

`lt[A028391(n+1)^(A102291(n)%2), A000005(n+1)]`
-/

namespace A093511.P10109766111070777147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028391 (n + 1) : ℚ) ^ (Int.tmod (A102291 n) 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A093511.P10109766111070777147

/-! ## A093511.P6446102107433639784

`comp[(1-char[1])*A093514(n+1)]`
-/

namespace A093511.P6446102107433639784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * A093514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093511.P6446102107433639784

/-! ## A093511.P1364714450668595224

`comp[A093514(n+1)%A024313(n+1)]`
-/

namespace A093511.P1364714450668595224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093514 (n + 1)) (A024313 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093511.P1364714450668595224

/-!
# A093512: Transform of the prime sequence by the Rule73 cellular automaton.

The programs for A093512, there is no canonical definition to state claims against.
-/

/-! ## A093512.P13263204613334495875

`∪[(8*n+2)², A093516(n+1)]`
-/

namespace A093512.P13263204613334495875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P13263204613334495875

/-! ## A093512.P3328738899070749441

`comp[a(A007918(n)-n)+n]+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A093512.P3328738899070749441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (A007918 n - (n : ℤ)).toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A093512.P3328738899070749441

/-! ## A093512.P17853548138221019219

`∪[A093516(n+1), A016826(n)]`
-/

namespace A093512.P17853548138221019219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016826 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P17853548138221019219

/-! ## A093512.P17720937901084986399

`∪[A093516(n+1), A016934(n)]`
-/

namespace A093512.P17720937901084986399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016934 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P17720937901084986399

/-! ## A093512.P9984993064941767651

`∪[A093516(n+1), A016957(n)]`
-/

namespace A093512.P9984993064941767651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P9984993064941767651

/-! ## A093512.P5761121400209145758

`∪[A093516(n+1), A017090(n)]`
-/

namespace A093512.P5761121400209145758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017090 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P5761121400209145758

/-! ## A093512.P6963767296560646106

`∪[A093516(n+1), A017186(n)]`
-/

namespace A093512.P6963767296560646106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P6963767296560646106

/-! ## A093512.P16664635618876159581

`∪[A093516(n+1), A017294(n)]`
-/

namespace A093512.P16664635618876159581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P16664635618876159581

/-! ## A093512.P11179482216935282060

`∪[A093516(n+1), A017414(n)]`
-/

namespace A093512.P11179482216935282060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017414 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P11179482216935282060

/-! ## A093512.P8088582244019683947

`∪[A093516(n+1), A017546(n)]`
-/

namespace A093512.P8088582244019683947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017546 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093512.P8088582244019683947

/-!
# A093513: Transform of the prime sequence by the Rule89 cellular automaton.

The programs for A093513, there is no canonical definition to state claims against.
-/

/-! ## A093513.P3068898011579793321

`comp[A006530(3*n+1)+(n-1)%2]`
-/

namespace A093513.P3068898011579793321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 1) + Int.tmod ((n : ℤ) - 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093513.P3068898011579793321

/-! ## A093513.P17010588442453185689

`record[n+1-a(A245509(n+1))]` with `a(0)=1, a(1)=-2, a(2)=3, a(3)=2`
-/

namespace A093513.P17010588442453185689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3, 2] fun n f1 =>
  (n + 1 : ℤ) - f1 (A245509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093513.P17010588442453185689

/-! ## A093513.P15174325403238312389

`lt[A006530(n*a(n-1)), n-1]` with `a(0)=1, a(1)=-4, a(2)=3, a(3)=1`
-/

namespace A093513.P15174325403238312389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 3, 1] fun n f1 =>
  A006530 ((n : ℤ) * f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093513.P15174325403238312389

/-! ## A093513.P15594675225799694005

`record[A003602(A166037(n+1))]`
-/

namespace A093513.P15594675225799694005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A166037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093513.P15594675225799694005

/-! ## A093513.P7289016729261191477

`∪[A005381(n+1), A041325(n)]`
-/

namespace A093513.P7289016729261191477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041325 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093513.P7289016729261191477

/-! ## A093513.P6309566176582293439

`∪[A005381(n+1), A042225(n)]`
-/

namespace A093513.P6309566176582293439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093513.P6309566176582293439

/-! ## A093513.P2185676140026074759

`∪[A005381(n+1), A042891(n)]`
-/

namespace A093513.P2185676140026074759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042891 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093513.P2185676140026074759

/-! ## A093513.P956688262169507711

`∪[A005381(n+1), A051437(n)]`
-/

namespace A093513.P956688262169507711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093513.P956688262169507711

/-! ## A093513.P9186985027094717976

`∪[A005381(n+1), A081698(n)]`
-/

namespace A093513.P9186985027094717976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081698 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093513.P9186985027094717976

/-! ## A093513.P5557022112579824610

`∪[A005381(n+1), A176755(n)]`
-/

namespace A093513.P5557022112579824610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093513.P5557022112579824610

/-!
# A093514: Transform of the prime sequence by the Rule90 cellular automaton.

The programs for A093514, there is no canonical definition to state claims against.
-/

/-! ## A093514.P14102699824517712175

`A100317(n+1)+1`
-/

namespace A093514.P14102699824517712175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1) + 1

end

end A093514.P14102699824517712175

/-! ## A093514.P15804940138351078173

`eq[1, A102291(n)%2]`
-/

namespace A093514.P15804940138351078173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102291 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093514.P15804940138351078173

/-! ## A093514.P9370148318722037293

`eq[1, A343730(2*(n+1))]+2`
-/

namespace A093514.P9370148318722037293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A093514.P9370148318722037293

/-! ## A093514.P6892499481470104210

`lt[A343730(2*n+2), 2]+2`
-/

namespace A093514.P6892499481470104210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A093514.P6892499481470104210

/-! ## A093514.P17455578628724760253

`A020725(A100317(n+1))`
-/

namespace A093514.P17455578628724760253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A100317 (n + 1)).toNat

end

end A093514.P17455578628724760253

/-! ## A093514.P9151825446524182866

`eq[A014017(n)+2, A002126(n)]`
-/

namespace A093514.P9151825446524182866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093514.P9151825446524182866

/-! ## A093514.P12560216428406775949

`eq[A014289(n)+2, A002126(n)]`
-/

namespace A093514.P12560216428406775949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014289 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093514.P12560216428406775949

/-! ## A093514.P9637555561063964708

`eq[A014625(n)+2, A002126(n)]`
-/

namespace A093514.P9637555561063964708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014625 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093514.P9637555561063964708

/-! ## A093514.P5885028192483241615

`eq[A014737(n)+2, A002126(n)]`
-/

namespace A093514.P5885028192483241615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014737 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093514.P5885028192483241615

/-! ## A093514.P1950760447996592995

`eq[A014961(n)+2, A002126(n)]`
-/

namespace A093514.P1950760447996592995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014961 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093514.P1950760447996592995

/-!
# A093515: Numbers k such that either k or k-1 is a prime.

The programs for A093515, the canonical program `A093515.P4013259352811988212` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093515 has offset 1).

The definition of A093515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093515.P13745518212887429065

`A173919(n+1)+1`
-/

namespace A093515.P13745518212887429065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173919 (n + 1) + 1

end

end A093515.P13745518212887429065

namespace A093515

/-- `A173919(n+1)+1` -/
def P13745518212887429065.Spec : Prop :=
  ∀ n, P13745518212887429065.a n = A093515 (n + 1)

theorem P13745518212887429065.correct : P13745518212887429065.Spec := by
  intro n
  simp only [A093515, Nat.add_sub_cancel, A093515.P13745518212887429065.a, A093515.P4013259352811988212.f1, A093515.P4013259352811988212.f2, A093515.P4013259352811988212.a, A173919, A173919.P13920908538941556849.a, A323162, A323162.P4199434762193306250.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A093515

/-! ## A093515.P3487838691137071578

`ceil(sqrt(A385186(n+1)))`
-/

namespace A093515.P3487838691137071578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A385186 (n + 1) : ℝ)⌉

end

end A093515.P3487838691137071578

namespace A093515

/-- `ceil(sqrt(A385186(n+1)))` -/
def P3487838691137071578.Spec : Prop :=
  ∀ n, P3487838691137071578.a n = A093515 (n + 1)

end A093515

/-! ## A093515.P5470610223482638993

`eq[1, A121561(n+1)]+1`
-/

namespace A093515.P5470610223482638993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093515.P5470610223482638993

namespace A093515

/-- `eq[1, A121561(n+1)]+1` -/
def P5470610223482638993.Spec : Prop :=
  ∀ n, (P5470610223482638993.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P577989486580722587

`lt[A056898(n+1), 2]+2`
-/

namespace A093515.P577989486580722587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A093515.P577989486580722587

namespace A093515

/-- `lt[A056898(n+1), 2]+2` -/
def P577989486580722587.Spec : Prop :=
  ∀ n, (P577989486580722587.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P4013259352811988212

`lt[A323162(n+2), 1]+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093515

/-- `lt[A323162(n+2), 1]+2` -/
def P4013259352811988212.Spec : Prop :=
  ∀ n, (P4013259352811988212.a n : ℤ) = A093515 (n + 1)

theorem P4013259352811988212.correct : P4013259352811988212.Spec := by
  intro n
  simp only [A093515, Nat.add_sub_cancel]

end A093515

/-! ## A093515.P13249927724228490624

`ceil(sqrt(2*A147846(n+1)))`
-/

namespace A093515.P13249927724228490624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A147846 (n + 1) : ℝ)⌉

end

end A093515.P13249927724228490624

namespace A093515

/-- `ceil(sqrt(2*A147846(n+1)))` -/
def P13249927724228490624.Spec : Prop :=
  ∀ n, P13249927724228490624.a n = A093515 (n + 1)

end A093515

/-! ## A093515.P12241544320328888642

`∑[runs[A029832(n+1)]]+1`
-/

namespace A093515.P12241544320328888642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029832 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093515.P12241544320328888642

namespace A093515

/-- `∑[runs[A029832(n+1)]]+1` -/
def P12241544320328888642.Spec : Prop :=
  ∀ n, (P12241544320328888642.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P4444569612069974269

`lt[A151800(abs(2-n)), n+1]`
-/

namespace A093515.P4444569612069974269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |2 - (n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A093515.P4444569612069974269

namespace A093515

/-- `lt[A151800(abs(2-n)), n+1]` -/
def P4444569612069974269.Spec : Prop :=
  ∀ n, (P4444569612069974269.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P4681743584787805375

`record[n%A151799(n+3)+2]`
-/

namespace A093515.P4681743584787805375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A151799 (n + 3)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093515.P4681743584787805375

namespace A093515

/-- `record[n%A151799(n+3)+2]` -/
def P4681743584787805375.Spec : Prop :=
  ∀ n, P4681743584787805375.a n = A093515 (n + 1)

end A093515

/-! ## A093515.P12251200713114256273

`∑[runs[C(A006530(n+1), n)]]+1`
-/

namespace A093515.P12251200713114256273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093515.P12251200713114256273

namespace A093515

/-- `∑[runs[C(A006530(n+1), n)]]+1` -/
def P12251200713114256273.Spec : Prop :=
  ∀ n, (P12251200713114256273.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P15004505432287036439

`∪[A000040(n+1), A028815(n)]`
-/

namespace A093515.P15004505432287036439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093515.P15004505432287036439

namespace A093515

/-- `∪[A000040(n+1), A028815(n)]` -/
def P15004505432287036439.Spec : Prop :=
  ∀ n, (P15004505432287036439.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P17663933360210514111

`∪[A045344(n+1), A028815(n)]`
-/

namespace A093515.P17663933360210514111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093515.P17663933360210514111

namespace A093515

/-- `∪[A045344(n+1), A028815(n)]` -/
def P17663933360210514111.Spec : Prop :=
  ∀ n, (P17663933360210514111.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P11060682950908466262

`∪[A065091(n+1), A028815(n)]`
-/

namespace A093515.P11060682950908466262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093515.P11060682950908466262

namespace A093515

/-- `∪[A065091(n+1), A028815(n)]` -/
def P11060682950908466262.Spec : Prop :=
  ∀ n, (P11060682950908466262.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P9708348963480450207

`∪[A140826(n+1), A028815(n)]`
-/

namespace A093515.P9708348963480450207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093515.P9708348963480450207

namespace A093515

/-- `∪[A140826(n+1), A028815(n)]` -/
def P9708348963480450207.Spec : Prop :=
  ∀ n, (P9708348963480450207.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P16410685070097837221

`∪[A000040(n+1), A008864(n+1)]`
-/

namespace A093515.P16410685070097837221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093515.P16410685070097837221

namespace A093515

/-- `∪[A000040(n+1), A008864(n+1)]` -/
def P16410685070097837221.Spec : Prop :=
  ∀ n, (P16410685070097837221.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P2900127619971682662

`∪[A007500(n+1), A111688(n+1)]`
-/

namespace A093515.P2900127619971682662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093515.P2900127619971682662

namespace A093515

/-- `∪[A007500(n+1), A111688(n+1)]` -/
def P2900127619971682662.Spec : Prop :=
  ∀ n, (P2900127619971682662.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P4940941340646777913

`lt[n-A006530(n+1), A006530(n+2)]+2`
-/

namespace A093515.P4940941340646777913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A093515.P4940941340646777913

namespace A093515

/-- `lt[n-A006530(n+1), A006530(n+2)]+2` -/
def P4940941340646777913.Spec : Prop :=
  ∀ n, (P4940941340646777913.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P13401622494189943491

`lt[n-A000010(n+1), A020639(n+2)]+2`
-/

namespace A093515.P13401622494189943491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A093515.P13401622494189943491

namespace A093515

/-- `lt[n-A000010(n+1), A020639(n+2)]+2` -/
def P13401622494189943491.Spec : Prop :=
  ∀ n, (P13401622494189943491.a n : ℤ) = A093515 (n + 1)

end A093515

/-! ## A093515.P10801167124633668525

`record[A119257(n+1)+1]`
-/

namespace A093515.P10801167124633668525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119257 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093515.P10801167124633668525

namespace A093515

/-- `record[A119257(n+1)+1]` -/
def P10801167124633668525.Spec : Prop :=
  ∀ n, P10801167124633668525.a n = A093515 (n + 1)

end A093515

/-! ## A093515.P15082696348879926224

`A119257(a(n-1))+1` with `a(0)=2`
-/

namespace A093515.P15082696348879926224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A119257 (a (n - 1)).toNat + 1

end

end A093515.P15082696348879926224

namespace A093515

/-- `A119257(a(n-1))+1` -/
def P15082696348879926224.Spec : Prop :=
  ∀ n, P15082696348879926224.a n = A093515 (n + 1)

end A093515

/-!
# A093516: Transform of the prime sequence by the Rule137 cellular automaton.

The programs for A093516, there is no canonical definition to state claims against.
-/

/-! ## A093516.P1282678518811596534

`comp[A006530(n+1)+(n-1)%3]`
-/

namespace A093516.P1282678518811596534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) + Int.tmod ((n : ℤ) - 1) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093516.P1282678518811596534

/-! ## A093516.P11853898235387644100

`record[A014683(n+2)%A007918(n)]`
-/

namespace A093516.P11853898235387644100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014683 (n + 2)) (A007918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093516.P11853898235387644100

/-! ## A093516.P8435413973956786942

`comp[A057078(n)+A006530(n+2)]+1`
-/

namespace A093516.P8435413973956786942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n + A006530 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093516.P8435413973956786942

/-! ## A093516.P434716525999060112

`comp[A076605(n+2)-A102283(n)]+1`
-/

namespace A093516.P434716525999060112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (n + 2) - A102283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093516.P434716525999060112

/-! ## A093516.P15145296082683273018

`comp[A151799(n+3)-A057078(n)]+1`
-/

namespace A093516.P15145296082683273018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (n + 3) - A057078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093516.P15145296082683273018

/-! ## A093516.P3547215823054966278

`record[A113646(n+6)%A151800(n+3)]`
-/

namespace A093516.P3547215823054966278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113646 (n + 6)) (A151800 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093516.P3547215823054966278

/-! ## A093516.P16387219824409094957

`eq[1, A005171(A267458(a(n-1)+n))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A093516.P16387219824409094957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  A005171 (A267458 (f2 (n - 1) + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093516.P16387219824409094957

/-! ## A093516.P11473465114855650153

`eq[A055672(n), A332016(A051700(n))]+1`
-/

namespace A093516.P11473465114855650153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (A051700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A093516.P11473465114855650153

/-! ## A093516.P6764420865048025113

`record[A181569(A014683(n+1))+A010051(n+1)]`
-/

namespace A093516.P6764420865048025113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (A014683 (n + 1)).toNat + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093516.P6764420865048025113

/-! ## A093516.P7942882031677988298

`record[A191558(A072668(n+1))+A054546(n+1)]`
-/

namespace A093516.P7942882031677988298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A072668 (n + 1)).toNat + A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093516.P7942882031677988298

/-!
# A093517: Transform of the prime sequence by the Rule225 cellular automaton.

The programs for A093517, there is no canonical definition to state claims against.
-/

/-! ## A093517.P6505922777533101539

`eq[0, (A309561(n)%4)^n]`
-/

namespace A093517.P6505922777533101539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309561 n) 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093517.P6505922777533101539

/-! ## A093517.P5841455468992412295

`lt[A309561(n+1)%4, 1]+1`
-/

namespace A093517.P5841455468992412295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309561 (n + 1)) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A093517.P5841455468992412295

/-! ## A093517.P11764128995363755943

`record[A267537(n)+A171845(A065033(n))]`
-/

namespace A093517.P11764128995363755943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 n + A171845 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093517.P11764128995363755943

/-! ## A093517.P1310885204531469959

`∪[2*A040040(n+1)+1, A014683(A093516(n+1))]`
-/

namespace A093517.P1310885204531469959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (A093516 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093517.P1310885204531469959

/-!
# A093518: Number of ways of representing n as the sum of two (not necessarily distinct) generalized pentagonal numbers.

The programs for A093518, the canonical program `A093518.P1184938026992592708` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093518 has offset 0).

The definition of A093518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093518.P1184938026992592708

`ceil(A002175(n)/2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A093518

/-- `ceil(A002175(n)/2)` -/
def P1184938026992592708.Spec : Prop :=
  ∀ n, P1184938026992592708.a n = A093518 n

theorem P1184938026992592708.correct : P1184938026992592708.Spec := by
  intro n
  simp only [A093518]

end A093518

/-! ## A093518.P2915324600615192015

`A110654(A002175(n))`
-/

namespace A093518.P2915324600615192015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002175 n).toNat

end

end A093518.P2915324600615192015

namespace A093518

/-- `A110654(A002175(n))` -/
def P2915324600615192015.Spec : Prop :=
  ∀ n, P2915324600615192015.a n = A093518 n

end A093518

/-! ## A093518.P11602377459251579723

`A052343(3*n)`
-/

namespace A093518.P11602377459251579723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 (3 * n)

end

end A093518.P11602377459251579723

namespace A093518

/-- `A052343(3*n)` -/
def P11602377459251579723.Spec : Prop :=
  ∀ n, P11602377459251579723.a n = A093518 n

end A093518

/-! ## A093518.P11286343844287096733

`round(A008441(3*n)/2)`
-/

namespace A093518.P11286343844287096733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008441 (3 * n) : ℚ) / 2)

end

end A093518.P11286343844287096733

namespace A093518

/-- `round(A008441(3*n)/2)` -/
def P11286343844287096733.Spec : Prop :=
  ∀ n, P11286343844287096733.a n = A093518 n

end A093518

/-! ## A093518.P7688217242479382859

`ceil(A004020(3*n)/4)`
-/

namespace A093518.P7688217242479382859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004020 (3 * n) : ℚ) / 4⌉

end

end A093518.P7688217242479382859

namespace A093518

/-- `ceil(A004020(3*n)/4)` -/
def P7688217242479382859.Spec : Prop :=
  ∀ n, P7688217242479382859.a n = A093518 n

theorem P7688217242479382859.correct : P7688217242479382859.Spec := by
  intro n
  simp only [A093518, Nat.add_sub_cancel, A093518.P7688217242479382859.a, A093518.P1184938026992592708.a, A002175, A002175.P12639420198237532064.a, A004020, A004020.P12808183263529079992.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093518

/-! ## A093518.P16801882426596117155

`ceil(A005883(3*n)/8)`
-/

namespace A093518.P16801882426596117155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005883 (3 * n) : ℚ) / 8⌉

end

end A093518.P16801882426596117155

namespace A093518

/-- `ceil(A005883(3*n)/8)` -/
def P16801882426596117155.Spec : Prop :=
  ∀ n, P16801882426596117155.a n = A093518 n

theorem P16801882426596117155.correct : P16801882426596117155.Spec := by
  intro n
  simp only [A093518, Nat.add_sub_cancel, A093518.P16801882426596117155.a, A093518.P1184938026992592708.a, A002175, A002175.P12639420198237532064.a, A005883, A005883.P3734216093274140482.a, A008441, A008441.P257068461411472066.a, A002654, A002654.P11574922253888480122.a, A001826, A001826.P1518250824516108745.a, A001842, A001842.P7159875081872045936.f1, A001842.P7159875081872045936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093518

/-! ## A093518.P4414220545154077456

`A052344(3*n)+A010054(3*n)`
-/

namespace A093518.P4414220545154077456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (3 * n) + A010054 (3 * n)

end

end A093518.P4414220545154077456

namespace A093518

/-- `A052344(3*n)+A010054(3*n)` -/
def P4414220545154077456.Spec : Prop :=
  ∀ n, P4414220545154077456.a n = A093518 n

end A093518

/-! ## A093518.P13104870033471767117

`A002636(3*n)-A063993(3*n)`
-/

namespace A093518.P13104870033471767117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 (3 * n) - A063993 (3 * n)

end

end A093518.P13104870033471767117

namespace A093518

/-- `A002636(3*n)-A063993(3*n)` -/
def P13104870033471767117.Spec : Prop :=
  ∀ n, P13104870033471767117.a n = A093518 n

end A093518

/-! ## A093518.P17584480131221822112

`A000161(12*n+1)`
-/

namespace A093518.P17584480131221822112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (12 * n + 1)

end

end A093518.P17584480131221822112

namespace A093518

/-- `A000161(12*n+1)` -/
def P17584480131221822112.Spec : Prop :=
  ∀ n, P17584480131221822112.a n = A093518 n

end A093518

/-! ## A093518.P13570399358065709212

`A025435(12*n+1)`
-/

namespace A093518.P13570399358065709212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (12 * n + 1)

end

end A093518.P13570399358065709212

namespace A093518

/-- `A025435(12*n+1)` -/
def P13570399358065709212.Spec : Prop :=
  ∀ n, P13570399358065709212.a n = A093518 n

end A093518

/-! ## A093518.P18154451502826806647

`A025426(24*n+2)`
-/

namespace A093518.P18154451502826806647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (24 * n + 2)

end

end A093518.P18154451502826806647

namespace A093518

/-- `A025426(24*n+2)` -/
def P18154451502826806647.Spec : Prop :=
  ∀ n, P18154451502826806647.a n = A093518 n

end A093518

/-! ## A093518.P3645751852189306

`A000925(12*n+1)/2`
-/

namespace A093518.P3645751852189306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000925 (12 * n + 1) : ℚ) / 2

end

end A093518.P3645751852189306

namespace A093518

/-- `A000925(12*n+1)/2` -/
def P3645751852189306.Spec : Prop :=
  ∀ n, P3645751852189306.a n = (A093518 n : ℚ)

end A093518

/-! ## A093518.P11134697043665552861

`and(7, A000161(A017533(n)))`
-/

namespace A093518.P11134697043665552861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000161 (A017533 n).toNat)

end

end A093518.P11134697043665552861

namespace A093518

/-- `and(7, A000161(A017533(n)))` -/
def P11134697043665552861.Spec : Prop :=
  ∀ n, P11134697043665552861.a n = A093518 n

end A093518

/-! ## A093518.P13154960862193565302

`A001842(3^A002175(n))`
-/

namespace A093518.P13154960862193565302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A002175 n : ℤ))).toNat

end

end A093518.P13154960862193565302

namespace A093518

/-- `A001842(3^A002175(n))` -/
def P13154960862193565302.Spec : Prop :=
  ∀ n, P13154960862193565302.a n = A093518 n

end A093518

/-!
# A093519: Numbers with no representation as the sum of two (not necessarily distinct) generalized pentagonal numbers.

The programs for A093519, the canonical program `A093519.P639672327746029394` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093519 has offset 1).

The definition of A093519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093519.P639672327746029394

`eq[0, A002175(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A093519

/-- `eq[0, A002175(n)]` -/
def P639672327746029394.Spec : Prop :=
  ∀ n, (P639672327746029394.a n : ℤ) = A093519 (n + 1)

theorem P639672327746029394.correct : P639672327746029394.Spec := by
  intro n
  simp only [A093519, Nat.add_sub_cancel]

end A093519

/-! ## A093519.P6183209424954945108

`eq[0, A093518(n)]`
-/

namespace A093519.P6183209424954945108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P6183209424954945108

namespace A093519

/-- `eq[0, A093518(n)]` -/
def P6183209424954945108.Spec : Prop :=
  ∀ n, (P6183209424954945108.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P10860455174916522238

`eq[0, A122266(n)]`
-/

namespace A093519.P10860455174916522238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122266 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P10860455174916522238

namespace A093519

/-- `eq[0, A122266(n)]` -/
def P10860455174916522238.Spec : Prop :=
  ∀ n, (P10860455174916522238.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P5930563123612539014

`eq[0, A000729(3*n)]`
-/

namespace A093519.P5930563123612539014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000729 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P5930563123612539014

namespace A093519

/-- `eq[0, A000729(3*n)]` -/
def P5930563123612539014.Spec : Prop :=
  ∀ n, (P5930563123612539014.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P14873582030146913308

`eq[0, A002171(3*n)]`
-/

namespace A093519.P14873582030146913308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P14873582030146913308

namespace A093519

/-- `eq[0, A002171(3*n)]` -/
def P14873582030146913308.Spec : Prop :=
  ∀ n, (P14873582030146913308.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P9147800162884043544

`eq[0, A004020(3*n)]`
-/

namespace A093519.P9147800162884043544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P9147800162884043544

namespace A093519

/-- `eq[0, A004020(3*n)]` -/
def P9147800162884043544.Spec : Prop :=
  ∀ n, (P9147800162884043544.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P14329913992552447439

`eq[0, A005883(3*n)]`
-/

namespace A093519.P14329913992552447439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005883 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P14329913992552447439

namespace A093519

/-- `eq[0, A005883(3*n)]` -/
def P14329913992552447439.Spec : Prop :=
  ∀ n, (P14329913992552447439.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P10256862719493699590

`eq[0, A008441(3*n)]`
-/

namespace A093519.P10256862719493699590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P10256862719493699590

namespace A093519

/-- `eq[0, A008441(3*n)]` -/
def P10256862719493699590.Spec : Prop :=
  ∀ n, (P10256862719493699590.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P17482828215413585082

`eq[0, A122268(n)]`
-/

namespace A093519.P17482828215413585082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122268 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P17482828215413585082

namespace A093519

/-- `eq[0, A122268(n)]` -/
def P17482828215413585082.Spec : Prop :=
  ∀ n, (P17482828215413585082.a n : ℤ) = A093519 (n + 1)

end A093519

/-! ## A093519.P1185394143042430968

`eq[0, A203860(n)]`
-/

namespace A093519.P1185394143042430968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203860 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093519.P1185394143042430968

namespace A093519

/-- `eq[0, A203860(n)]` -/
def P1185394143042430968.Spec : Prop :=
  ∀ n, (P1185394143042430968.a n : ℤ) = A093519 (n + 1)

end A093519

/-!
# A093520: Numbers n such that there exists no k with 0 < k < n for which n!/k + 1 is a prime.

The programs for A093520, there is no canonical definition to state claims against.
-/

/-! ## A093520.P14216479949653554433

`∏{e}[2^n, A092068(#)]`
-/

namespace A093520.P14216479949653554433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092068 (Nat.factorization (f1 n) p)

end

end A093520.P14216479949653554433

/-! ## A093520.P5442586908284892560

`A092068(n*a(floor(acot(n))))` with `a(0)=1`
-/

namespace A093520.P5442586908284892560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092068 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat

end

end A093520.P5442586908284892560

/-! ## A093520.P13847243664233390644

`A092068(n%round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A093520.P13847243664233390644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092068 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))).toNat

end

end A093520.P13847243664233390644

/-! ## A093520.P7235187598497152643

`A092068(round(sqrt(n²+1)))^ceil(n/63)`
-/

namespace A093520.P7235187598497152643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092068 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) ^ (⌈(n : ℚ) / 63⌉ : ℤ)

end

end A093520.P7235187598497152643

/-! ## A093520.P9720247413197461977

`∪[A006190(3*n+1)², A092068(n+1)]`
-/

namespace A093520.P9720247413197461977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (3 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093520.P9720247413197461977

/-!
# A093521: Runs of 1's of lengths 1, prime(1), prime(2), prime(3), ... separated by 0's.

The programs for A093521, the canonical program `A093521.P15325189107458049759` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093521 has offset 1).

The definition of A093521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093521.P15325189107458049759

`1-char[∑[record[∑{p}[n, #]+1]]]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093521

/-- `1-char[∑[record[∑{p}[n, #]+1]]]` -/
def P15325189107458049759.Spec : Prop :=
  ∀ n, P15325189107458049759.a n = A093521 (n + 1)

theorem P15325189107458049759.correct : P15325189107458049759.Spec := by
  intro n
  simp only [A093521, Nat.add_sub_cancel]

end A093521

/-! ## A093521.P16260411805277881332

`char[comp[A110895(n+1)]]`
-/

namespace A093521.P16260411805277881332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110895 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093521.P16260411805277881332

namespace A093521

/-- `char[comp[A110895(n+1)]]` -/
def P16260411805277881332.Spec : Prop :=
  ∀ n, (P16260411805277881332.a n : ℤ) = A093521 (n + 1)

end A093521

/-! ## A093521.P12248239471989479828

`char[comp[∑[A299763(n+1)]]]`
-/

namespace A093521.P12248239471989479828
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093521.P12248239471989479828

namespace A093521

/-- `char[comp[∑[A299763(n+1)]]]` -/
def P12248239471989479828.Spec : Prop :=
  ∀ n, (P12248239471989479828.a n : ℤ) = A093521 (n + 1)

end A093521

/-! ## A093521.P1316650960741699474

`char[comp[∑[A028815(n)]-1]]`
-/

namespace A093521.P1316650960741699474
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093521.P1316650960741699474

namespace A093521

/-- `char[comp[∑[A028815(n)]-1]]` -/
def P1316650960741699474.Spec : Prop :=
  ∀ n, (P1316650960741699474.a n : ℤ) = A093521 (n + 1)

end A093521

/-! ## A093521.P10834155372271978344

`char[comp[A007504(n)+1+n]]`
-/

namespace A093521.P10834155372271978344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093521.P10834155372271978344

namespace A093521

/-- `char[comp[A007504(n)+1+n]]` -/
def P10834155372271978344.Spec : Prop :=
  ∀ n, (P10834155372271978344.a n : ℤ) = A093521 (n + 1)

end A093521

/-! ## A093521.P8811026566704035630

`1-char[A014284(n+1)+n]`
-/

namespace A093521.P8811026566704035630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093521.P8811026566704035630

namespace A093521

/-- `1-char[A014284(n+1)+n]` -/
def P8811026566704035630.Spec : Prop :=
  ∀ n, P8811026566704035630.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P8310421094484686491

`1-char[∑[comp[A018252(n+1)]+1]]`
-/

namespace A093521.P8310421094484686491
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093521.P8310421094484686491

namespace A093521

/-- `1-char[∑[comp[A018252(n+1)]+1]]` -/
def P8310421094484686491.Spec : Prop :=
  ∀ n, P8310421094484686491.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P13116942969244232030

`char[comp[∑[A158611(n+1)+1]-2]]`
-/

namespace A093521.P13116942969244232030
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A093521.P13116942969244232030

namespace A093521

/-- `char[comp[∑[A158611(n+1)+1]-2]]` -/
def P13116942969244232030.Spec : Prop :=
  ∀ n, (P13116942969244232030.a n : ℤ) = A093521 (n + 1)

end A093521

/-! ## A093521.P13342860303919560790

`1-char[a(n-1)+A000040(n)+1]` with `a(0)=1`
-/

namespace A093521.P13342860303919560790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A000040 n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093521.P13342860303919560790

namespace A093521

/-- `1-char[a(n-1)+A000040(n)+1]` -/
def P13342860303919560790.Spec : Prop :=
  ∀ n, P13342860303919560790.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P109241202594053092

`A005171(A073899(n+1))`
-/

namespace A093521.P109241202594053092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A073899 (n + 1)).toNat

end

end A093521.P109241202594053092

namespace A093521

/-- `A005171(A073899(n+1))` -/
def P109241202594053092.Spec : Prop :=
  ∀ n, P109241202594053092.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P14477337261756129341

`A060576(A350168(n+1))`
-/

namespace A093521.P14477337261756129341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A350168 (n + 1)).toNat

end

end A093521.P14477337261756129341

namespace A093521

/-- `A060576(A350168(n+1))` -/
def P14477337261756129341.Spec : Prop :=
  ∀ n, P14477337261756129341.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P13538083061374486281

`A267936(A350168(n+2))`
-/

namespace A093521.P13538083061374486281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267936 (A350168 (n + 2)).toNat

end

end A093521.P13538083061374486281

namespace A093521

/-- `A267936(A350168(n+2))` -/
def P13538083061374486281.Spec : Prop :=
  ∀ n, P13538083061374486281.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P9454126096523855917

`1-char[∑[A000203(A008578(n+1))]]`
-/

namespace A093521.P9454126096523855917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A008578 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093521.P9454126096523855917

namespace A093521

/-- `1-char[∑[A000203(A008578(n+1))]]` -/
def P9454126096523855917.Spec : Prop :=
  ∀ n, P9454126096523855917.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P9925466942414786874

`1-char[∑[A000203(record[A014963(n+1)])]]`
-/

namespace A093521.P9925466942414786874
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093521.P9925466942414786874

namespace A093521

/-- `1-char[∑[A000203(record[A014963(n+1)])]]` -/
def P9925466942414786874.Spec : Prop :=
  ∀ n, P9925466942414786874.a n = A093521 (n + 1)

end A093521

/-! ## A093521.P11466108911125858662

`1-char[∑[A048250(A000040(n+1))]-A000040(n+1)]`
-/

namespace A093521.P11466108911125858662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A000040 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A093521.P11466108911125858662

namespace A093521

/-- `1-char[∑[A048250(A000040(n+1))]-A000040(n+1)]` -/
def P11466108911125858662.Spec : Prop :=
  ∀ n, P11466108911125858662.a n = A093521 (n + 1)

end A093521

/-!
# A093523: Inverse binomial transform of A010054 (1 if triangular number else 0).

The programs for A093523, the canonical program `A093523.P9923788401914151724` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093523 has offset 0).

The definition of A093523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093523.P9923788401914151724

`∑{#}[n, (-1)^(n-#)*C(n, #)*A010054(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093523

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A010054(#)]` -/
def P9923788401914151724.Spec : Prop :=
  ∀ n, P9923788401914151724.a n = (A093523 n : ℚ)

end A093523

/-! ## A093523.P15419223234404485151

`∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A123578(#)]`
-/

namespace A093523.P15419223234404485151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (Nat.choose (n + 1) k : ℚ) * (A123578 k : ℚ)

end

end A093523.P15419223234404485151

namespace A093523

/-- `∑{#}[n+1, (-1)^(n+1-#)*C(n+1, #)*A123578(#)]` -/
def P15419223234404485151.Spec : Prop :=
  ∀ n, P15419223234404485151.a n = (A093523 n : ℚ)

end A093523

/-!
# A093526: Numerators of even raw moments in the distribution of line lengths for lines picked at random in the unit disk.

The programs for A093526, the canonical program `A093526.P5414565113038595436` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093526 has offset 0).

The definition of A093526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093526.P5414565113038595436

`A195686(n+1)/(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093526

/-- `A195686(n+1)/(n+2)` -/
def P5414565113038595436.Spec : Prop :=
  ∀ n, P5414565113038595436.a n = (A093526 n : ℚ)

end A093526

/-! ## A093526.P4444827840049777917

`C(2*(n+1), n+1)/((n+2)*gcd(n+1, C(2*(n+1), n+1)))`
-/

namespace A093526.P4444827840049777917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) : ℚ) / ((n + 2) * Nat.gcd (n + 1) (Nat.choose (2 * (n + 1)) (n + 1)) : ℚ)

end

end A093526.P4444827840049777917

namespace A093526

/-- `C(2*(n+1), n+1)/((n+2)*gcd(n+1, C(2*(n+1), n+1)))` -/
def P4444827840049777917.Spec : Prop :=
  ∀ n, P4444827840049777917.a n = (A093526 n : ℚ)

end A093526

/-! ## A093526.P235070024655046145

`A098512(n+1)`
-/

namespace A093526.P235070024655046145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098512 (n + 1)

end

end A093526.P235070024655046145

namespace A093526

/-- `A098512(n+1)` -/
def P235070024655046145.Spec : Prop :=
  ∀ n, P235070024655046145.a n = A093526 n

end A093526

/-! ## A093526.P18236312034748411058

`ratio[A098512(n)]*A098512(n)`
-/

namespace A093526.P18236312034748411058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098512 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A098512 n : ℚ)

end

end A093526.P18236312034748411058

namespace A093526

/-- `ratio[A098512(n)]*A098512(n)` -/
def P18236312034748411058.Spec : Prop :=
  ∀ n, P18236312034748411058.a n = (A093526 n : ℚ)

end A093526

/-! ## A093526.P16449265113867714598

`A000108(n+1)/A071416(n+1)`
-/

namespace A093526.P16449265113867714598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℚ) / (A071416 (n + 1) : ℚ)

end

end A093526.P16449265113867714598

namespace A093526

/-- `A000108(n+1)/A071416(n+1)` -/
def P16449265113867714598.Spec : Prop :=
  ∀ n, P16449265113867714598.a n = (A093526 n : ℚ)

end A093526

/-! ## A093526.P500875242267468079

`Δ[A014138(n)]/A071416(n+1)`
-/

namespace A093526.P500875242267468079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A071416 (n + 1) : ℚ)

end

end A093526.P500875242267468079

namespace A093526

/-- `Δ[A014138(n)]/A071416(n+1)` -/
def P500875242267468079.Spec : Prop :=
  ∀ n, P500875242267468079.a n = (A093526 n : ℚ)

end A093526

/-! ## A093526.P13886498532999198986

`gcd(A000108(n+1), A195686(n+1))`
-/

namespace A093526.P13886498532999198986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 (n + 1)) (A195686 (n + 1))

end

end A093526.P13886498532999198986

namespace A093526

/-- `gcd(A000108(n+1), A195686(n+1))` -/
def P13886498532999198986.Spec : Prop :=
  ∀ n, (P13886498532999198986.a n : ℤ) = A093526 n

end A093526

/-! ## A093526.P17033601227887359433

`A195686(n+1)-A000108(n+1)*A093527(n)`
-/

namespace A093526.P17033601227887359433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195686 (n + 1) - A000108 (n + 1) * A093527 n

end

end A093526.P17033601227887359433

namespace A093526

/-- `A195686(n+1)-A000108(n+1)*A093527(n)` -/
def P17033601227887359433.Spec : Prop :=
  ∀ n, P17033601227887359433.a n = A093526 n

end A093526

/-!
# A093527: Denominators of even raw moments in the distribution of line lengths for lines picked at random in the unit disk.

The programs for A093527, the canonical program `A093527.P16583554896780152831` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093527 has offset 0).

The definition of A093527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093527.P16583554896780152831

`(n+1)/gcd(n+1, C(2*n+2, n+1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093527

/-- `(n+1)/gcd(n+1, C(2*n+2, n+1))` -/
def P16583554896780152831.Spec : Prop :=
  ∀ n, P16583554896780152831.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P1492917082742436837

`(n+1)/A071416(n+1)`
-/

namespace A093527.P1492917082742436837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A071416 (n + 1) : ℚ)

end

end A093527.P1492917082742436837

namespace A093527

/-- `(n+1)/A071416(n+1)` -/
def P1492917082742436837.Spec : Prop :=
  ∀ n, P1492917082742436837.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P12013783472736844378

`(n+1)/gcd(n+1, A059288(n+1))`
-/

namespace A093527.P12013783472736844378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A059288 (n + 1)) : ℚ)

end

end A093527.P12013783472736844378

namespace A093527

/-- `(n+1)/gcd(n+1, A059288(n+1))` -/
def P12013783472736844378.Spec : Prop :=
  ∀ n, P12013783472736844378.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P8192829897904536770

`A026741(A201059(n+1))`
-/

namespace A093527.P8192829897904536770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A201059 (n + 1)).toNat

end

end A093527.P8192829897904536770

namespace A093527

/-- `A026741(A201059(n+1))` -/
def P8192829897904536770.Spec : Prop :=
  ∀ n, P8192829897904536770.a n = A093527 n

end A093527

/-! ## A093527.P15580955902902418917

`lcm(2, A049077(2*(n+1)))/2`
-/

namespace A093527.P15580955902902418917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A049077 (2 * (n + 1))) : ℚ) / 2

end

end A093527.P15580955902902418917

namespace A093527

/-- `lcm(2, A049077(2*(n+1)))/2` -/
def P15580955902902418917.Spec : Prop :=
  ∀ n, P15580955902902418917.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P8674692456776349183

`A026741(A049077(2*(n+1)))`
-/

namespace A093527.P8674692456776349183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A049077 (2 * (n + 1))).toNat

end

end A093527.P8674692456776349183

namespace A093527

/-- `A026741(A049077(2*(n+1)))` -/
def P8674692456776349183.Spec : Prop :=
  ∀ n, P8674692456776349183.a n = A093527 n

end A093527

/-! ## A093527.P538469182702187266

`A004525(lcm(2, A049077(2*(n+1))))`
-/

namespace A093527.P538469182702187266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A049077 (2 * (n + 1))))

end

end A093527.P538469182702187266

namespace A093527

/-- `A004525(lcm(2, A049077(2*(n+1))))` -/
def P538469182702187266.Spec : Prop :=
  ∀ n, P538469182702187266.a n = A093527 n

end A093527

/-! ## A093527.P11054846994210760131

`A069782(n+1)/gcd(A069782(n+1), A262543(n+1))`
-/

namespace A093527.P11054846994210760131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069782 (n + 1) : ℚ) / (Int.gcd (A069782 (n + 1)) (A262543 (n + 1)) : ℚ)

end

end A093527.P11054846994210760131

namespace A093527

/-- `A069782(n+1)/gcd(A069782(n+1), A262543(n+1))` -/
def P11054846994210760131.Spec : Prop :=
  ∀ n, P11054846994210760131.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P14777378538841744095

`(n+1)/gcd(n+1, A070031(n))`
-/

namespace A093527.P14777378538841744095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A070031 n) : ℚ)

end

end A093527.P14777378538841744095

namespace A093527

/-- `(n+1)/gcd(n+1, A070031(n))` -/
def P14777378538841744095.Spec : Prop :=
  ∀ n, P14777378538841744095.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P12772754090193222115

`lcm(A000108(n+1), n+1)/A000108(n+1)`
-/

namespace A093527.P12772754090193222115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000108 (n + 1)) (n + 1 : ℤ) : ℚ) / (A000108 (n + 1) : ℚ)

end

end A093527.P12772754090193222115

namespace A093527

/-- `lcm(A000108(n+1), n+1)/A000108(n+1)` -/
def P12772754090193222115.Spec : Prop :=
  ∀ n, P12772754090193222115.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P2034524914758757764

`(A195686(n+1)-A093526(n))/A000108(n+1)`
-/

namespace A093527.P2034524914758757764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195686 (n + 1) - A093526 n : ℚ) / (A000108 (n + 1) : ℚ)

end

end A093527.P2034524914758757764

namespace A093527

/-- `(A195686(n+1)-A093526(n))/A000108(n+1)` -/
def P2034524914758757764.Spec : Prop :=
  ∀ n, P2034524914758757764.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P5509787955014794450

`(A195686(n+1)-A098512(n+1))/A000108(n+1)`
-/

namespace A093527.P5509787955014794450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195686 (n + 1) - A098512 (n + 1) : ℚ) / (A000108 (n + 1) : ℚ)

end

end A093527.P5509787955014794450

namespace A093527

/-- `(A195686(n+1)-A098512(n+1))/A000108(n+1)` -/
def P5509787955014794450.Spec : Prop :=
  ∀ n, P5509787955014794450.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P11252823360234103057

`A028310(n+1)/gcd(A000984(n+1), A028310(n+1))`
-/

namespace A093527.P11252823360234103057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (Int.gcd (A000984 (n + 1)) (A028310 (n + 1)) : ℚ)

end

end A093527.P11252823360234103057

namespace A093527

/-- `A028310(n+1)/gcd(A000984(n+1), A028310(n+1))` -/
def P11252823360234103057.Spec : Prop :=
  ∀ n, P11252823360234103057.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P6561863358747460184

`A005843(n+1)/gcd(A005843(n+1), A028329(n+1))`
-/

namespace A093527.P6561863358747460184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) : ℚ) / (Int.gcd (A005843 (n + 1)) (A028329 (n + 1)) : ℚ)

end

end A093527.P6561863358747460184

namespace A093527

/-- `A005843(n+1)/gcd(A005843(n+1), A028329(n+1))` -/
def P6561863358747460184.Spec : Prop :=
  ∀ n, P6561863358747460184.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P8986988007143625827

`(n+1)²/gcd((n+1)², A331552(2*n+1))`
-/

namespace A093527.P8986988007143625827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A331552 (2 * n + 1)) : ℚ)

end

end A093527.P8986988007143625827

namespace A093527

/-- `(n+1)²/gcd((n+1)², A331552(2*n+1))` -/
def P8986988007143625827.Spec : Prop :=
  ∀ n, P8986988007143625827.a n = (A093527 n : ℚ)

end A093527

/-! ## A093527.P13707073254597517949

`A098505(∑[n+1]+1)`
-/

namespace A093527.P13707073254597517949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098505 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093527.P13707073254597517949

namespace A093527

/-- `A098505(∑[n+1]+1)` -/
def P13707073254597517949.Spec : Prop :=
  ∀ n, P13707073254597517949.a n = A093527 n

end A093527

/-! ## A093527.P1446986619996178171

`A026741(A328902(∑[n+2]))`
-/

namespace A093527.P1446986619996178171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A328902 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A093527.P1446986619996178171

namespace A093527

/-- `A026741(A328902(∑[n+2]))` -/
def P1446986619996178171.Spec : Prop :=
  ∀ n, P1446986619996178171.a n = A093527 n

end A093527

/-! ## A093527.P6410140028838300797

`(n+1)/gcd(n+1, Δ[C(2*n, n)])`
-/

namespace A093527.P6410140028838300797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ)

end

end A093527.P6410140028838300797

namespace A093527

/-- `(n+1)/gcd(n+1, Δ[C(2*n, n)])` -/
def P6410140028838300797.Spec : Prop :=
  ∀ n, P6410140028838300797.a n = (A093527 n : ℚ)

end A093527

/-!
# A093528: Numerators of odd raw moments in the distribution of line lengths for lines picked at random in the unit disk.

The programs for A093528, there is no canonical definition to state claims against.
-/

/-! ## A093528.P1476432669755337561

`2^(∑[val(n+1, 2)+3]+4)`
-/

namespace A093528.P1476432669755337561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A093528.P1476432669755337561

/-! ## A093528.P3847954883911533749

`16*∏[2^(val(n+1, 2)+3)]`
-/

namespace A093528.P3847954883911533749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (SequenceMachineLib.valuation (n + 1) 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A093528.P3847954883911533749

/-! ## A093528.P14208347442782373996

`4*A093581(n+2)`
-/

namespace A093528.P14208347442782373996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A093581 (n + 2)

end

end A093528.P14208347442782373996

/-! ## A093528.P10905589265320207665

`16*A061549(n+1)`
-/

namespace A093528.P10905589265320207665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A061549 (n + 1)

end

end A093528.P10905589265320207665

/-! ## A093528.P14054794299897034241

`16*A046161(2*(n+1))`
-/

namespace A093528.P14054794299897034241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A046161 (2 * (n + 1))

end

end A093528.P14054794299897034241

/-!
# A093529: Denominators of Pi times the odd raw moments in the distribution of line lengths for lines picked at random in the unit disk.

The programs for A093529, there is no canonical definition to state claims against.
-/

/-! ## A093529.P14188933983086616535

`(2*n+3)*A004733(2*(n+1))`
-/

namespace A093529.P14188933983086616535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A004733 (2 * (n + 1))

end

end A093529.P14188933983086616535

/-! ## A093529.P16442549745475401947

`(2*n+3)²*A001790(n+1)*(2*n+5)`
-/

namespace A093529.P16442549745475401947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) * A001790 (n + 1) * (2 * n + 5 : ℤ)

end

end A093529.P16442549745475401947

/-! ## A093529.P4287734151434996018

`A000466(n+2)*A001803(n+1)`
-/

namespace A093529.P4287734151434996018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 (n + 2) * A001803 (n + 1)

end

end A093529.P4287734151434996018

/-! ## A093529.P4130413935573538343

`A004273(n+3)*A321234(n+1)`
-/

namespace A093529.P4130413935573538343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 3) * A321234 (n + 1)

end

end A093529.P4130413935573538343

/-! ## A093529.P16741194567221136079

`A001803(n+1)*A005563(2*n+3)`
-/

namespace A093529.P16741194567221136079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 (n + 1) * A005563 (2 * n + 3)

end

end A093529.P16741194567221136079

/-!
# A093531: Denominators of the average length of a line segment picked at random in the unit n-ball for odd n.

The programs for A093531, there is no canonical definition to state claims against.
-/

/-! ## A093531.P5847873331044275621

`A001803(2*n+1)/gcd(A001790(n+1), A001803(2*n+1))`
-/

namespace A093531.P5847873331044275621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 (2 * n + 1) : ℚ) / (Int.gcd (A001790 (n + 1)) (A001803 (2 * n + 1)) : ℚ)

end

end A093531.P5847873331044275621

/-!
# A093533: Denominators of Pi * average length of a line segment picked at random in the unit n-ball for even n.

The programs for A093533, there is no canonical definition to state claims against.
-/

/-! ## A093533.P14923629482290444417

`A162441(2*n+3)*A162441(n+2)`
-/

namespace A093533.P14923629482290444417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162441 (2 * n + 3) * A162441 (n + 2)

end

end A093533.P14923629482290444417

/-!
# A093534: Square pyramorphic numbers: integers m such that the sum of the first m squares (A000330) ends in m.

The programs for A093534, there is no canonical definition to state claims against.
-/

/-! ## A093534.P17619933782938166877

`A234334(A347912(n+1)+A061128(n+2))`
-/

namespace A093534.P17619933782938166877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (A347912 (n + 1) + A061128 (n + 2)).toNat

end

end A093534.P17619933782938166877

/-! ## A093534.P2786897733632619473

`A234334(A347912(n+1))%A080279(n+1)`
-/

namespace A093534.P2786897733632619473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234334 (A347912 (n + 1)).toNat) (A080279 (n + 1))

end

end A093534.P2786897733632619473

/-!
# A093537: Number of n-digit Fibomorphic numbers, i.e., numbers m such that Fibonacci(m) ends in m.

The programs for A093537, there is no canonical definition to state claims against.
-/

/-! ## A093537.P12162236067809271992

`A102885(A295500(n+2))`
-/

namespace A093537.P12162236067809271992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102885 (A295500 (n + 2)).toNat

end

end A093537.P12162236067809271992

/-!
# A093541: Square array, read by antidiagonals, where column (k+1) equals the self-convolution of row k, with row 0 and column 0 consisting of all 1's.

The programs for A093541, there is no canonical definition to state claims against.
-/

/-! ## A093541.P14029447381813042839

`A114282(n)*A198338(A102480(n))`
-/

namespace A093541.P14029447381813042839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114282 n * A198338 (A102480 n).toNat

end

end A093541.P14029447381813042839

/-! ## A093541.P14424777110356041832

`A052509(n)*A321893(A321876(n))`
-/

namespace A093541.P14424777110356041832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n * A321893 (A321876 n).toNat

end

end A093541.P14424777110356041832

/-! ## A093541.P15830471503910352710

`A156354(n)+A001222(A004248(n)!)`
-/

namespace A093541.P15830471503910352710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 n + A001222 (Nat.factorial (A004248 n).toNat)

end

end A093541.P15830471503910352710

/-! ## A093541.P3375078045287251815

`A233777(A329020(n))`
-/

namespace A093541.P3375078045287251815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 (A329020 n).toNat

end

end A093541.P3375078045287251815

/-! ## A093541.P12415288757432766847

`A046098(A104559(n))+1`
-/

namespace A093541.P12415288757432766847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046098 (A104559 n).toNat + 1

end

end A093541.P12415288757432766847

/-!
# A093542: Antidiagonal sums of square array A093541, in which column (k+1) equals the self-convolution of row k.

The programs for A093542, there is no canonical definition to state claims against.
-/

/-! ## A093542.P684705176972478778

`A078489(a(n-1)*n+1)` with `a(0)=1`
-/

namespace A093542.P684705176972478778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078489 (a (n - 1) * (n : ℤ) + 1).toNat

end

end A093542.P684705176972478778

/-! ## A093542.P6360818925241103658

`A056172(A366695(n))+1`
-/

namespace A093542.P6360818925241103658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A366695 n).toNat + 1

end

end A093542.P6360818925241103658

/-! ## A093542.P13970747717107803244

`A226190(A149036(n))+n`
-/

namespace A093542.P13970747717107803244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149036 n).toNat + (n : ℤ)

end

end A093542.P13970747717107803244

/-!
# A093543: Main diagonal of square array A093541, in which column (k+1) equals the self-convolution of row k.

The programs for A093543, there is no canonical definition to state claims against.
-/

/-! ## A093543.P10949337475547624386

`A093541(∑[4*n])`
-/

namespace A093543.P10949337475547624386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093541 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093543.P10949337475547624386

/-! ## A093543.P10645353922704612612

`record[A003982(n)*A093541(n)]`
-/

namespace A093543.P10645353922704612612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A093541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093543.P10645353922704612612

/-!
# A093544: Numerator of (4*n-3)/A000265(n). Numerator of pairwise quotients of A004130.

The programs for A093544, the canonical program `A093544.P14062098747140646535` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093544 has offset 1).

The definition of A093544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093544.P17039853430830545558

`(4*n+1)/gcd(3, n+1)`
-/

namespace A093544.P17039853430830545558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) / (Nat.gcd 3 (n + 1) : ℚ)

end

end A093544.P17039853430830545558

namespace A093544

/-- `(4*n+1)/gcd(3, n+1)` -/
def P17039853430830545558.Spec : Prop :=
  ∀ n, P17039853430830545558.a n = (A093544 (n + 1) : ℚ)

end A093544

/-! ## A093544.P16564587484290381330

`lcm(3, 2*n+2*n+1)/3`
-/

namespace A093544.P16564587484290381330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (2 * n + (2 * n + 1)) : ℚ) / 3

end

end A093544.P16564587484290381330

namespace A093544

/-- `lcm(3, 2*n+2*n+1)/3` -/
def P16564587484290381330.Spec : Prop :=
  ∀ n, P16564587484290381330.a n = (A093544 (n + 1) : ℚ)

end A093544

/-! ## A093544.P14062098747140646535

`2*A342369(n)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093544

/-- `2*A342369(n)+1` -/
def P14062098747140646535.Spec : Prop :=
  ∀ n, P14062098747140646535.a n = A093544 (n + 1)

theorem P14062098747140646535.correct : P14062098747140646535.Spec := by
  intro n
  simp only [A093544, Nat.add_sub_cancel]

end A093544

/-! ## A093544.P6113450952441832300

`A015219(n)%A017089(n)`
-/

namespace A093544.P6113450952441832300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015219 n) (A017089 n)

end

end A093544.P6113450952441832300

namespace A093544

/-- `A015219(n)%A017089(n)` -/
def P6113450952441832300.Spec : Prop :=
  ∀ n, P6113450952441832300.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P8156609276280204093

`gcd(A015219(n), A016813(n))`
-/

namespace A093544.P8156609276280204093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015219 n) (A016813 n)

end

end A093544.P8156609276280204093

namespace A093544

/-- `gcd(A015219(n), A016813(n))` -/
def P8156609276280204093.Spec : Prop :=
  ∀ n, (P8156609276280204093.a n : ℤ) = A093544 (n + 1)

end A093544

/-! ## A093544.P6026549518206093044

`gcd(A017089(n), A085474(n))`
-/

namespace A093544.P6026549518206093044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017089 n) (A085474 n)

end

end A093544.P6026549518206093044

namespace A093544

/-- `gcd(A017089(n), A085474(n))` -/
def P6026549518206093044.Spec : Prop :=
  ∀ n, (P6026549518206093044.a n : ℤ) = A093544 (n + 1)

end A093544

/-! ## A093544.P5354257611686562548

`gcd(A016814(n), A258582(n))`
-/

namespace A093544.P5354257611686562548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016814 n) (A258582 n)

end

end A093544.P5354257611686562548

namespace A093544

/-- `gcd(A016814(n), A258582(n))` -/
def P5354257611686562548.Spec : Prop :=
  ∀ n, (P5354257611686562548.a n : ℤ) = A093544 (n + 1)

end A093544

/-! ## A093544.P12150381729013602310

`gcd(A014795(n), A267031(n))`
-/

namespace A093544.P12150381729013602310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014795 n) (A267031 n)

end

end A093544.P12150381729013602310

namespace A093544

/-- `gcd(A014795(n), A267031(n))` -/
def P12150381729013602310.Spec : Prop :=
  ∀ n, (P12150381729013602310.a n : ℤ) = A093544 (n + 1)

end A093544

/-! ## A093544.P12316548534141196937

`A218328(n+1)%A017089(n)`
-/

namespace A093544.P12316548534141196937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218328 (n + 1)) (A017089 n)

end

end A093544.P12316548534141196937

namespace A093544

/-- `A218328(n+1)%A017089(n)` -/
def P12316548534141196937.Spec : Prop :=
  ∀ n, P12316548534141196937.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P14758580099887283328

`gcd(A016815(n), A218324(n+1))`
-/

namespace A093544.P14758580099887283328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016815 n) (A218324 (n + 1))

end

end A093544.P14758580099887283328

namespace A093544

/-- `gcd(A016815(n), A218324(n+1))` -/
def P14758580099887283328.Spec : Prop :=
  ∀ n, (P14758580099887283328.a n : ℤ) = A093544 (n + 1)

end A093544

/-! ## A093544.P1274629092677590422

`gcd(A016816(n), A218328(n+1))`
-/

namespace A093544.P1274629092677590422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016816 n) (A218328 (n + 1))

end

end A093544.P1274629092677590422

namespace A093544

/-- `gcd(A016816(n), A218328(n+1))` -/
def P1274629092677590422.Spec : Prop :=
  ∀ n, (P1274629092677590422.a n : ℤ) = A093544 (n + 1)

end A093544

/-! ## A093544.P5192224097785170195

`A016825(2*n)/(2*A109007(n+1))`
-/

namespace A093544.P5192224097785170195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (2 * n) : ℚ) / (2 * A109007 (n + 1) : ℚ)

end

end A093544.P5192224097785170195

namespace A093544

/-- `A016825(2*n)/(2*A109007(n+1))` -/
def P5192224097785170195.Spec : Prop :=
  ∀ n, P5192224097785170195.a n = (A093544 (n + 1) : ℚ)

end A093544

/-! ## A093544.P17190903178752048139

`2*A160016(A004773(n))+1`
-/

namespace A093544.P17190903178752048139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160016 (A004773 n).toNat + 1

end

end A093544.P17190903178752048139

namespace A093544

/-- `2*A160016(A004773(n))+1` -/
def P17190903178752048139.Spec : Prop :=
  ∀ n, P17190903178752048139.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P7966600539621948993

`A093411(8*n+2)`
-/

namespace A093544.P7966600539621948993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (8 * n + 2)

end

end A093544.P7966600539621948993

namespace A093544

/-- `A093411(8*n+2)` -/
def P7966600539621948993.Spec : Prop :=
  ∀ n, P7966600539621948993.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P15705218716650465287

`A026201(A029739(n+1))`
-/

namespace A093544.P15705218716650465287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026201 (A029739 (n + 1)).toNat

end

end A093544.P15705218716650465287

namespace A093544

/-- `A026201(A029739(n+1))` -/
def P15705218716650465287.Spec : Prop :=
  ∀ n, P15705218716650465287.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P7762669295468692871

`gcd(A006331(2*n), A033570(2*n))`
-/

namespace A093544.P7762669295468692871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006331 (2 * n)) (A033570 (2 * n))

end

end A093544.P7762669295468692871

namespace A093544

/-- `gcd(A006331(2*n), A033570(2*n))` -/
def P7762669295468692871.Spec : Prop :=
  ∀ n, (P7762669295468692871.a n : ℤ) = A093544 (n + 1)

end A093544

/-! ## A093544.P8442417448316713169

`A329494(2*n)`
-/

namespace A093544.P8442417448316713169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329494 (2 * n)

end

end A093544.P8442417448316713169

namespace A093544

/-- `A329494(2*n)` -/
def P8442417448316713169.Spec : Prop :=
  ∀ n, P8442417448316713169.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P8584236007961728387

`A146535(Δ[n²])`
-/

namespace A093544.P8584236007961728387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093544.P8584236007961728387

namespace A093544

/-- `A146535(Δ[n²])` -/
def P8584236007961728387.Spec : Prop :=
  ∀ n, P8584236007961728387.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P15310033800564752476

`A160080(A047236(n+1))`
-/

namespace A093544.P15310033800564752476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160080 (A047236 (n + 1)).toNat

end

end A093544.P15310033800564752476

namespace A093544

/-- `A160080(A047236(n+1))` -/
def P15310033800564752476.Spec : Prop :=
  ∀ n, P15310033800564752476.a n = A093544 (n + 1)

end A093544

/-! ## A093544.P15220148095991002975

`filter[A329494(n), A035263(#)]`
-/

namespace A093544.P15220148095991002975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A093544.P15220148095991002975

namespace A093544

/-- `filter[A329494(n), A035263(#)]` -/
def P15220148095991002975.Spec : Prop :=
  ∀ n, P15220148095991002975.a n = A093544 (n + 1)

end A093544

/-!
# A093545: Sorted mapping of A093544 onto the integers.

The programs for A093545, the canonical program `A093545.P6561044863367067047` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093545 has offset 0).

The definition of A093545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093545.P6561044863367067047

`ogf((2x+x^2+5x^3+5x^4+2x^5+5x^6+5x^7+x^8+5x^9+3x^10+x^11)/(1-x^3-x^9+x^12))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093545

/-- `ogf((2x+x^2+5x^3+5x^4+2x^5+5x^6+5x^7+x^8+5x^9+3x^10+x^11)/(1-x^3-x^9+x^12))` -/
def P6561044863367067047.Spec : Prop :=
  ∀ n, P6561044863367067047.a n = A093545 n

theorem P6561044863367067047.correct : P6561044863367067047.Spec := by
  intro n
  simp only [A093545]

end A093545

/-! ## A093545.P17928453857707121871

`floor(A047212(n+1)/Δ[A047202(n+1)])`
-/

namespace A093545.P17928453857707121871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047212 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A093545.P17928453857707121871

namespace A093545

/-- `floor(A047212(n+1)/Δ[A047202(n+1)])` -/
def P17928453857707121871.Spec : Prop :=
  ∀ n, P17928453857707121871.a n = A093545 n

end A093545

/-! ## A093545.P8400498230365029752

`A340709(A367286(n))`
-/

namespace A093545.P8400498230365029752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340709 (A367286 n).toNat

end

end A093545.P8400498230365029752

namespace A093545

/-- `A340709(A367286(n))` -/
def P8400498230365029752.Spec : Prop :=
  ∀ n, P8400498230365029752.a n = A093545 n

end A093545

/-! ## A093545.P2785884834832224598

`round(A001068(A093544(n+1))/3)`
-/

namespace A093545.P2785884834832224598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001068 (A093544 (n + 1)).toNat : ℚ) / 3)

end

end A093545.P2785884834832224598

namespace A093545

/-- `round(A001068(A093544(n+1))/3)` -/
def P2785884834832224598.Spec : Prop :=
  ∀ n, P2785884834832224598.a n = A093545 n

end A093545

/-! ## A093545.P15686571858158315095

`A004526(A340709(A093544(n+1)))`
-/

namespace A093545.P15686571858158315095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A340709 (A093544 (n + 1)).toNat).toNat

end

end A093545.P15686571858158315095

namespace A093545

/-- `A004526(A340709(A093544(n+1)))` -/
def P15686571858158315095.Spec : Prop :=
  ∀ n, P15686571858158315095.a n = A093545 n

end A093545

/-! ## A093545.P12482876665629820292

`A002264(A145064(5*n))`
-/

namespace A093545.P12482876665629820292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A145064 (5 * n)).toNat

end

end A093545.P12482876665629820292

namespace A093545

/-- `A002264(A145064(5*n))` -/
def P12482876665629820292.Spec : Prop :=
  ∀ n, P12482876665629820292.a n = A093545 n

end A093545

/-! ## A093545.P374317716948766759

`A002264(A051176(5*n+2))`
-/

namespace A093545.P374317716948766759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A051176 (5 * n + 2)).toNat

end

end A093545.P374317716948766759

namespace A093545

/-- `A002264(A051176(5*n+2))` -/
def P374317716948766759.Spec : Prop :=
  ∀ n, P374317716948766759.a n = A093545 n

end A093545

/-! ## A093545.P5543992332268171580

`A008615(A060789(10*n+1))`
-/

namespace A093545.P5543992332268171580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A060789 (10 * n + 1)).toNat

end

end A093545.P5543992332268171580

namespace A093545

/-- `A008615(A060789(10*n+1))` -/
def P5543992332268171580.Spec : Prop :=
  ∀ n, P5543992332268171580.a n = A093545 n

end A093545

/-! ## A093545.P3086578180161681509

`A103221(A068217(5*n+2))-1`
-/

namespace A093545.P3086578180161681509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A068217 (5 * n + 2)).toNat - 1

end

end A093545.P3086578180161681509

namespace A093545

/-- `A103221(A068217(5*n+2))-1` -/
def P3086578180161681509.Spec : Prop :=
  ∀ n, P3086578180161681509.a n = A093545 n

end A093545

/-! ## A093545.P3432394414168419718

`A008615(A051724(A017281(n)))`
-/

namespace A093545.P3432394414168419718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A051724 (A017281 n).toNat).toNat

end

end A093545.P3432394414168419718

namespace A093545

/-- `A008615(A051724(A017281(n)))` -/
def P3432394414168419718.Spec : Prop :=
  ∀ n, P3432394414168419718.a n = A093545 n

end A093545

/-! ## A093545.P15039060581933575334

`A002264(A060789(A017317(n)))`
-/

namespace A093545.P15039060581933575334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A060789 (A017317 n).toNat).toNat

end

end A093545.P15039060581933575334

namespace A093545

/-- `A002264(A060789(A017317(n)))` -/
def P15039060581933575334.Spec : Prop :=
  ∀ n, P15039060581933575334.a n = A093545 n

end A093545

/-! ## A093545.P7240153633363895694

`A002264(A215573(A017353(n)-3))`
-/

namespace A093545.P7240153633363895694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A215573 (A017353 n - 3).toNat).toNat

end

end A093545.P7240153633363895694

namespace A093545

/-- `A002264(A215573(A017353(n)-3))` -/
def P7240153633363895694.Spec : Prop :=
  ∀ n, P7240153633363895694.a n = A093545 n

end A093545

/-! ## A093545.P16335353776186862985

`A002264(A008615(lcm(3, A017317(n))))`
-/

namespace A093545.P16335353776186862985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A008615 (Int.lcm 3 (A017317 n))).toNat

end

end A093545.P16335353776186862985

namespace A093545

/-- `A002264(A008615(lcm(3, A017317(n))))` -/
def P16335353776186862985.Spec : Prop :=
  ∀ n, P16335353776186862985.a n = A093545 n

end A093545

/-!
# A093546: Numbers n such that n divides 2^n^2 + 1.

The programs for A093546, there is no canonical definition to state claims against.
-/

/-! ## A093546.P2918363709482373941

`record[A093665(n+1)%A016060(n+6)]`
-/

namespace A093546.P2918363709482373941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093665 (n + 1)) (A016060 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093546.P2918363709482373941

/-! ## A093546.P13983985456463109989

`A093665(A347520(n+1))`
-/

namespace A093546.P13983985456463109989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093665 (A347520 (n + 1)).toNat

end

end A093546.P13983985456463109989

/-! ## A093546.P705917888066479394

`filter[A093665(n+1), A187967(#)]`
-/

namespace A093546.P705917888066479394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187967 (f1 j).toNat = 1) n)

end

end A093546.P705917888066479394

/-! ## A093546.P15233140672011311275

`A004151(A093665(n+1))`
-/

namespace A093546.P15233140672011311275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A093665 (n + 1)).toNat

end

end A093546.P15233140672011311275

/-! ## A093546.P17942225919529366138

`A093665(A055644(n+1))`
-/

namespace A093546.P17942225919529366138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093665 (A055644 (n + 1)).toNat

end

end A093546.P17942225919529366138

/-!
# A093547: Numbers k such that k divides 3^(k^2) - 1.

The programs for A093547, there is no canonical definition to state claims against.
-/

/-! ## A093547.P3643958568522783641

`sqrt(∩[A067945(n+1), n²])`
-/

namespace A093547.P3643958568522783641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A093547.P3643958568522783641

/-! ## A093547.P1726142325973873605

`sqrt(∩[A000290(n), A067945(n+1)])`
-/

namespace A093547.P1726142325973873605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A093547.P1726142325973873605

/-! ## A093547.P6707913551165536145

`record[A056926(A067945(n+1))]`
-/

namespace A093547.P6707913551165536145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A067945 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093547.P6707913551165536145

/-! ## A093547.P4283120287119813684

`record[A056926(2*A068382(n+1))]`
-/

namespace A093547.P4283120287119813684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (2 * A068382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093547.P4283120287119813684

/-! ## A093547.P6373700225384278461

`record[n+1-A094918((n+1)²)]`
-/

namespace A093547.P6373700225384278461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A094918 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093547.P6373700225384278461

/-!
# A093550: a(n) is the smallest number m such that each of the numbers m-1, m and m+1 is a product of n distinct primes.

The programs for A093550, there is no canonical definition to state claims against.
-/

/-! ## A093550.P16054233966796949975

`A242492(n+2)+1`
-/

namespace A093550.P16054233966796949975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242492 (n + 2) + 1

end

end A093550.P16054233966796949975

/-! ## A093550.P7215599007081325652

`xor(3, A242492(A100637(n)))`
-/

namespace A093550.P7215599007081325652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A242492 (A100637 n).toNat)

end

end A093550.P7215599007081325652

/-!
# A093553: a(n) is the smallest number m such that (m+k-1)/k is prime for k=1,2,...,n.

The programs for A093553, there is no canonical definition to state claims against.
-/

/-! ## A093553.P210163623128908630

`A074200(n+1)+1`
-/

namespace A093553.P210163623128908630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074200 (n + 1) + 1

end

end A093553.P210163623128908630

/-!
# A093554: a(n) is the smallest number m such that (m-k+1)/k is prime for k=1,2,...,n.

The programs for A093554, there is no canonical definition to state claims against.
-/

/-! ## A093554.P2271701817249329220

`A078502(n+1)-1`
-/

namespace A093554.P2271701817249329220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078502 (n + 1) - 1

end

end A093554.P2271701817249329220

/-! ## A093554.P16519070399623941339

`A082551(n²+1)+A078502(n+1)`
-/

namespace A093554.P16519070399623941339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n ^ 2 + 1) + A078502 (n + 1)

end

end A093554.P16519070399623941339

/-! ## A093554.P4851446676976293341

`A135694(A158558(n))+A078502(n+1)`
-/

namespace A093554.P4851446676976293341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135694 (A158558 n).toNat + A078502 (n + 1)

end

end A093554.P4851446676976293341

/-! ## A093554.P14780897904918765173

`A158388(A210717(n))+A078502(n+1)`
-/

namespace A093554.P14780897904918765173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A210717 n).toNat + A078502 (n + 1)

end

end A093554.P14780897904918765173

/-! ## A093554.P1604618336845040206

`A117444(A257645(n))+A078502(n+1)`
-/

namespace A093554.P1604618336845040206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A257645 n).toNat + A078502 (n + 1)

end

end A093554.P1604618336845040206

/-!
# A093555: Number of non-prime-powers between consecutive prime-powers.

The programs for A093555, the canonical program `A093555.P5658840311924976903` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093555 has offset 1).

The definition of A093555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093555.P2913187374861767238

`A057820(n+1)-1`
-/

namespace A093555.P2913187374861767238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1) - 1

end

end A093555.P2913187374861767238

namespace A093555

/-- `A057820(n+1)-1` -/
def P2913187374861767238.Spec : Prop :=
  ∀ n, P2913187374861767238.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P9600510606604250364

`Δ[A000961(1+n)]-1`
-/

namespace A093555.P9600510606604250364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P9600510606604250364

namespace A093555

/-- `Δ[A000961(1+n)]-1` -/
def P9600510606604250364.Spec : Prop :=
  ∀ n, P9600510606604250364.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P18050459814648988428

`Δ[A181062(n+1)]-1`
-/

namespace A093555.P18050459814648988428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P18050459814648988428

namespace A093555

/-- `Δ[A181062(n+1)]-1` -/
def P18050459814648988428.Spec : Prop :=
  ∀ n, P18050459814648988428.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P14018082578534340559

`runs[A025528(n+1)]-1`
-/

namespace A093555.P14018082578534340559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P14018082578534340559

namespace A093555

/-- `runs[A025528(n+1)]-1` -/
def P14018082578534340559.Spec : Prop :=
  ∀ n, P14018082578534340559.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P14094530695727042324

`runs[A031218(n+1)]-1`
-/

namespace A093555.P14094530695727042324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P14094530695727042324

namespace A093555

/-- `runs[A031218(n+1)]-1` -/
def P14094530695727042324.Spec : Prop :=
  ∀ n, P14094530695727042324.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P7119243228942813770

`runs[A056793(n+1)]-1`
-/

namespace A093555.P7119243228942813770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P7119243228942813770

namespace A093555

/-- `runs[A056793(n+1)]-1` -/
def P7119243228942813770.Spec : Prop :=
  ∀ n, P7119243228942813770.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P3242286952528801220

`runs[A065515(n+1)]-1`
-/

namespace A093555.P3242286952528801220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P3242286952528801220

namespace A093555

/-- `runs[A065515(n+1)]-1` -/
def P3242286952528801220.Spec : Prop :=
  ∀ n, P3242286952528801220.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P17101573479581153188

`runs[A074793(n+1)]-1`
-/

namespace A093555.P17101573479581153188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P17101573479581153188

namespace A093555

/-- `runs[A074793(n+1)]-1` -/
def P17101573479581153188.Spec : Prop :=
  ∀ n, P17101573479581153188.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P4509537347578765437

`runs[A307743(n+1)]-1`
-/

namespace A093555.P4509537347578765437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P4509537347578765437

namespace A093555

/-- `runs[A307743(n+1)]-1` -/
def P4509537347578765437.Spec : Prop :=
  ∀ n, P4509537347578765437.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P16601387587714436727

`runs[A342766(n+1)]-1`
-/

namespace A093555.P16601387587714436727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P16601387587714436727

namespace A093555

/-- `runs[A342766(n+1)]-1` -/
def P16601387587714436727.Spec : Prop :=
  ∀ n, P16601387587714436727.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P6767105379755793073

`runs[A380117(n+1)]-1`
-/

namespace A093555.P6767105379755793073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P6767105379755793073

namespace A093555

/-- `runs[A380117(n+1)]-1` -/
def P6767105379755793073.Spec : Prop :=
  ∀ n, P6767105379755793073.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P10359027991145155244

`runs[A000015(n+2)]-1`
-/

namespace A093555.P10359027991145155244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P10359027991145155244

namespace A093555

/-- `runs[A000015(n+2)]-1` -/
def P10359027991145155244.Spec : Prop :=
  ∀ n, P10359027991145155244.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P10296181872013649738

`runs[A238898(n+2)]-1`
-/

namespace A093555.P10296181872013649738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238898 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - 1

end

end A093555.P10296181872013649738

namespace A093555

/-- `runs[A238898(n+2)]-1` -/
def P10296181872013649738.Spec : Prop :=
  ∀ n, P10296181872013649738.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P1258106381703256240

`A237709(n+2)/2-1`
-/

namespace A093555.P1258106381703256240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237709 (n + 2) : ℚ) / 2 - 1

end

end A093555.P1258106381703256240

namespace A093555

/-- `A237709(n+2)/2-1` -/
def P1258106381703256240.Spec : Prop :=
  ∀ n, P1258106381703256240.a n = (A093555 (n + 1) : ℚ)

end A093555

/-! ## A093555.P9769131606437837210

`Δ[sqrt(A056798(n+1))]-1`
-/

namespace A093555.P9769131606437837210
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P9769131606437837210

namespace A093555

/-- `Δ[sqrt(A056798(n+1))]-1` -/
def P9769131606437837210.Spec : Prop :=
  ∀ n, P9769131606437837210.a n = (A093555 (n + 1) : ℝ)

end A093555

/-! ## A093555.P12065678531937673329

`Δ[record[A034699(n+1)]]-1`
-/

namespace A093555.P12065678531937673329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P12065678531937673329

namespace A093555

/-- `Δ[record[A034699(n+1)]]-1` -/
def P12065678531937673329.Spec : Prop :=
  ∀ n, P12065678531937673329.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P7179175166671473582

`Δ[record[A063973(n+1)]]-1`
-/

namespace A093555.P7179175166671473582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P7179175166671473582

namespace A093555

/-- `Δ[record[A063973(n+1)]]-1` -/
def P7179175166671473582.Spec : Prop :=
  ∀ n, P7179175166671473582.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P5658840311924976903

`Δ[record[A100994(n+1)]]-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A093555

/-- `Δ[record[A100994(n+1)]]-1` -/
def P5658840311924976903.Spec : Prop :=
  ∀ n, P5658840311924976903.a n = A093555 (n + 1)

theorem P5658840311924976903.correct : P5658840311924976903.Spec := by
  intro n
  simp only [A093555, Nat.add_sub_cancel]

end A093555

/-! ## A093555.P12840869388615684518

`Δ[record[A345993(n+1)]]-1`
-/

namespace A093555.P12840869388615684518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P12840869388615684518

namespace A093555

/-- `Δ[record[A345993(n+1)]]-1` -/
def P12840869388615684518.Spec : Prop :=
  ∀ n, P12840869388615684518.a n = A093555 (n + 1)

end A093555

/-! ## A093555.P16862833464113697394

`Δ[record[A354933(n+1)]]-1`
-/

namespace A093555.P16862833464113697394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A093555.P16862833464113697394

namespace A093555

/-- `Δ[record[A354933(n+1)]]-1` -/
def P16862833464113697394.Spec : Prop :=
  ∀ n, P16862833464113697394.a n = A093555 (n + 1)

end A093555

/-!
# A093556: Triangle of numerators of coefficients of Faulhaber polynomials in Knuth's version.

The programs for A093556, there is no canonical definition to state claims against.
-/

/-! ## A093556.P18166499920554989509

`A385567(row(n)+1+n)`
-/

namespace A093556.P18166499920554989509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385567 (SequenceMachineLib.triRow n + 1 + n)

end

end A093556.P18166499920554989509

/-! ## A093556.P16893607191861311988

`A385567(A007401(n+1))`
-/

namespace A093556.P16893607191861311988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385567 (A007401 (n + 1)).toNat

end

end A093556.P16893607191861311988

/-! ## A093556.P9907297092544706403

`A385567(lt[1, A091918(n)])`
-/

namespace A093556.P9907297092544706403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A093556.P9907297092544706403

/-! ## A093556.P16738564739754841952

`A385567(lt[n+1, A210236(n+1)])`
-/

namespace A093556.P16738564739754841952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A093556.P16738564739754841952

/-! ## A093556.P14615678611894536484

`A385567(lt[A072233(n), A113983(n)])`
-/

namespace A093556.P14615678611894536484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093556.P14615678611894536484

/-!
# A093557: Triangle of denominators of coefficients of Faulhaber polynomials in Knuth's version.

The programs for A093557, there is no canonical definition to state claims against.
-/

/-! ## A093557.P6314165203760504596

`A386728(row(n)+1+n)`
-/

namespace A093557.P6314165203760504596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386728 (SequenceMachineLib.triRow n + 1 + n)

end

end A093557.P6314165203760504596

/-! ## A093557.P1437936657960703298

`A386728(A007401(n+1))`
-/

namespace A093557.P1437936657960703298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386728 (A007401 (n + 1)).toNat

end

end A093557.P1437936657960703298

/-! ## A093557.P10323553022692148037

`A386728(lt[A000961(n+1), A210236(n+1)])`
-/

namespace A093557.P10323553022692148037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386728 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093557.P10323553022692148037

/-! ## A093557.P9869752165027552215

`A386728(lt[A156253(n+1), A210236(n+1)])`
-/

namespace A093557.P9869752165027552215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386728 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093557.P9869752165027552215

/-! ## A093557.P15166202625044800032

`A386728(lt[A354960(n+1), A210236(n+1)])`
-/

namespace A093557.P15166202625044800032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386728 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093557.P15166202625044800032

/-! ## A093557.P15022650151224139273

`A386728(lt[A072233(n), A113983(n)])`
-/

namespace A093557.P15022650151224139273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386728 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093557.P15022650151224139273

/-!
# A093558: Triangle of numerators of coefficients of Faulhaber polynomials used for sums of even powers.

The programs for A093558, there is no canonical definition to state claims against.
-/

/-! ## A093558.P7479770523825256484

`A112933(A262227(n))`
-/

namespace A093558.P7479770523825256484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112933 (A262227 n).toNat

end

end A093558.P7479770523825256484

/-! ## A093558.P12216690117130677371

`1-A193511(A018476(n+1))`
-/

namespace A093558.P12216690117130677371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A193511 (A018476 (n + 1)).toNat

end

end A093558.P12216690117130677371

/-! ## A093558.P14608565245071314964

`1-A193511(A027894(n+1))`
-/

namespace A093558.P14608565245071314964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A193511 (A027894 (n + 1)).toNat

end

end A093558.P14608565245071314964

/-! ## A093558.P1517589129417782983

`A002596(∑{e}[A018476(n+1), #])`
-/

namespace A093558.P1517589129417782983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A093558.P1517589129417782983

/-! ## A093558.P8437346491234400949

`A002596(∑{e}[A027894(n+1), #])`
-/

namespace A093558.P8437346491234400949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A093558.P8437346491234400949

/-!
# A093560: (3,1) Pascal triangle.

The programs for A093560, the canonical program `A093560.P9432466564831246598` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093560 has offset 0).

The definition of A093560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093560.P9432466564831246598

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093560

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P9432466564831246598.Spec : Prop :=
  ∀ n, (P9432466564831246598.a n : ℤ) = A093560 n

theorem P9432466564831246598.correct : P9432466564831246598.Spec := by
  intro n
  simp only [A093560]

end A093560

/-! ## A093560.P15875372826400375022

`2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1, a(1)=3`
-/

namespace A093560.P15875372826400375022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A093560.P15875372826400375022

namespace A093560

/-- `2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` -/
def P15875372826400375022.Spec : Prop :=
  ∀ n, P15875372826400375022.a n = A093560 n

end A093560

/-! ## A093560.P17069288699766135891

`A095660(A038722(n+2))`
-/

namespace A093560.P17069288699766135891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A038722 (n + 2)).toNat

end

end A093560.P17069288699766135891

namespace A093560

/-- `A095660(A038722(n+2))` -/
def P17069288699766135891.Spec : Prop :=
  ∀ n, P17069288699766135891.a n = A093560 n

end A093560

/-! ## A093560.P3232595742389386733

`A134058(n)+A037012(n)`
-/

namespace A093560.P3232595742389386733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n + A037012 n

end

end A093560.P3232595742389386733

namespace A093560

/-- `A134058(n)+A037012(n)` -/
def P3232595742389386733.Spec : Prop :=
  ∀ n, P3232595742389386733.a n = A093560 n

end A093560

/-! ## A093560.P8767465861786318513

`A028326(n)-A112467(n)`
-/

namespace A093560.P8767465861786318513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A112467 n

end

end A093560.P8767465861786318513

namespace A093560

/-- `A028326(n)-A112467(n)` -/
def P8767465861786318513.Spec : Prop :=
  ∀ n, P8767465861786318513.a n = A093560 n

end A093560

/-! ## A093560.P9964651025246242457

`A134058(n)-A008482(n)`
-/

namespace A093560.P9964651025246242457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n - A008482 n

end

end A093560.P9964651025246242457

namespace A093560

/-- `A134058(n)-A008482(n)` -/
def P9964651025246242457.Spec : Prop :=
  ∀ n, P9964651025246242457.a n = A093560 n

end A093560

/-! ## A093560.P16208617600079601762

`A028326(n)+Δ[A097805(n)]`
-/

namespace A093560.P16208617600079601762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (f1 (n + 1) - f1 n)

end

end A093560.P16208617600079601762

namespace A093560

/-- `A028326(n)+Δ[A097805(n)]` -/
def P16208617600079601762.Spec : Prop :=
  ∀ n, P16208617600079601762.a n = A093560 n

end A093560

/-! ## A093560.P7607961207236207074

`A097805(n+1)+A029653(n)`
-/

namespace A093560.P7607961207236207074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A029653 n

end

end A093560.P7607961207236207074

namespace A093560

/-- `A097805(n+1)+A029653(n)` -/
def P7607961207236207074.Spec : Prop :=
  ∀ n, P7607961207236207074.a n = A093560 n

end A093560

/-! ## A093560.P14627393859560791502

`2*A029653(n)-A007318(n)`
-/

namespace A093560.P14627393859560791502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029653 n - A007318 n

end

end A093560.P14627393859560791502

namespace A093560

/-- `2*A029653(n)-A007318(n)` -/
def P14627393859560791502.Spec : Prop :=
  ∀ n, P14627393859560791502.a n = A093560 n

end A093560

/-! ## A093560.P16723184605158678253

`(A093562(n)+A007318(n))/2`
-/

namespace A093560.P16723184605158678253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093562 n + A007318 n : ℚ) / 2

end

end A093560.P16723184605158678253

namespace A093560

/-- `(A093562(n)+A007318(n))/2` -/
def P16723184605158678253.Spec : Prop :=
  ∀ n, P16723184605158678253.a n = (A093560 n : ℚ)

end A093560

/-! ## A093560.P16761254311105467015

`2*A007318(n)-A112467(n)`
-/

namespace A093560.P16761254311105467015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A112467 n

end

end A093560.P16761254311105467015

namespace A093560

/-- `2*A007318(n)-A112467(n)` -/
def P16761254311105467015.Spec : Prop :=
  ∀ n, P16761254311105467015.a n = A093560 n

end A093560

/-! ## A093560.P6927251480783906972

`(A093561(n)+A029653(n))/2`
-/

namespace A093560.P6927251480783906972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093561 n + A029653 n : ℚ) / 2

end

end A093560.P6927251480783906972

namespace A093560

/-- `(A093561(n)+A029653(n))/2` -/
def P6927251480783906972.Spec : Prop :=
  ∀ n, P6927251480783906972.a n = (A093560 n : ℚ)

end A093560

/-! ## A093560.P10288009678365607985

`2*A028326(n)-A095660(n)`
-/

namespace A093560.P10288009678365607985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028326 n - A095660 n

end

end A093560.P10288009678365607985

namespace A093560

/-- `2*A028326(n)-A095660(n)` -/
def P10288009678365607985.Spec : Prop :=
  ∀ n, P10288009678365607985.a n = A093560 n

end A093560

/-! ## A093560.P4258673078550202824

`2*A029618(n)-A134059(n)`
-/

namespace A093560.P4258673078550202824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029618 n - A134059 n

end

end A093560.P4258673078550202824

namespace A093560

/-- `2*A029618(n)-A134059(n)` -/
def P4258673078550202824.Spec : Prop :=
  ∀ n, P4258673078550202824.a n = A093560 n

end A093560

/-! ## A093560.P887326773959170293

`2*A093561(n)-A093562(n)`
-/

namespace A093560.P887326773959170293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093561 n - A093562 n

end

end A093560.P887326773959170293

namespace A093560

/-- `2*A093561(n)-A093562(n)` -/
def P887326773959170293.Spec : Prop :=
  ∀ n, P887326773959170293.a n = A093560 n

end A093560

/-! ## A093560.P1788293710265735306

`(A097805(n)+A093563(n))/2`
-/

namespace A093560.P1788293710265735306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097805 n + A093563 n : ℚ) / 2

end

end A093560.P1788293710265735306

namespace A093560

/-- `(A097805(n)+A093563(n))/2` -/
def P1788293710265735306.Spec : Prop :=
  ∀ n, P1788293710265735306.a n = (A093560 n : ℚ)

end A093560

/-! ## A093560.P7825994546863735084

`A007318(n)-∑[2*A008482(n)]`
-/

namespace A093560.P7825994546863735084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093560.P7825994546863735084

namespace A093560

/-- `A007318(n)-∑[2*A008482(n)]` -/
def P7825994546863735084.Spec : Prop :=
  ∀ n, P7825994546863735084.a n = A093560 n

end A093560

/-! ## A093560.P8143285354266089928

`A134059(A028310(n))-2*A097805(n)`
-/

namespace A093560.P8143285354266089928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 (A028310 n).toNat - 2 * A097805 n

end

end A093560.P8143285354266089928

namespace A093560

/-- `A134059(A028310(n))-2*A097805(n)` -/
def P8143285354266089928.Spec : Prop :=
  ∀ n, P8143285354266089928.a n = A093560 n

end A093560

/-! ## A093560.P16415774530993682700

`A029618(n)+A071919(n)-A007318(n)`
-/

namespace A093560.P16415774530993682700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n + (A071919 n - A007318 n)

end

end A093560.P16415774530993682700

namespace A093560

/-- `A029618(n)+A071919(n)-A007318(n)` -/
def P16415774530993682700.Spec : Prop :=
  ∀ n, P16415774530993682700.a n = A093560 n

end A093560

/-! ## A093560.P8393923344029164017

`A000007(n)+A029618(n)-A097805(n)`
-/

namespace A093560.P8393923344029164017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A029618 n - A097805 n)

end

end A093560.P8393923344029164017

namespace A093560

/-- `A000007(n)+A029618(n)-A097805(n)` -/
def P8393923344029164017.Spec : Prop :=
  ∀ n, P8393923344029164017.a n = A093560 n

end A093560

/-!
# A093561: (4,1) Pascal triangle.

The programs for A093561, the canonical program `A093561.P14746839085578887806` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093561 has offset 0).

The definition of A093561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093561.P14746839085578887806

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093561

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P14746839085578887806.Spec : Prop :=
  ∀ n, (P14746839085578887806.a n : ℤ) = A093561 n

theorem P14746839085578887806.correct : P14746839085578887806.Spec := by
  intro n
  simp only [A093561]

end A093561

/-! ## A093561.P17458251167284294602

`2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1, a(1)=4`
-/

namespace A093561.P17458251167284294602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A093561.P17458251167284294602

namespace A093561

/-- `2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` -/
def P17458251167284294602.Spec : Prop :=
  ∀ n, P17458251167284294602.a n = A093561 n

end A093561

/-! ## A093561.P14023794416031286880

`A095666(A038722(n+2))`
-/

namespace A093561.P14023794416031286880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A038722 (n + 2)).toNat

end

end A093561.P14023794416031286880

namespace A093561

/-- `A095666(A038722(n+2))` -/
def P14023794416031286880.Spec : Prop :=
  ∀ n, P14023794416031286880.a n = A093561 n

end A093561

/-! ## A093561.P16904935495754694750

`A037012(n)+A029618(n)`
-/

namespace A093561.P16904935495754694750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n + A029618 n

end

end A093561.P16904935495754694750

namespace A093561

/-- `A037012(n)+A029618(n)` -/
def P16904935495754694750.Spec : Prop :=
  ∀ n, P16904935495754694750.a n = A093561 n

end A093561

/-! ## A093561.P2893656110229076949

`A029618(n)-A008482(n)`
-/

namespace A093561.P2893656110229076949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n - A008482 n

end

end A093561.P2893656110229076949

namespace A093561

/-- `A029618(n)-A008482(n)` -/
def P2893656110229076949.Spec : Prop :=
  ∀ n, P2893656110229076949.a n = A093561 n

end A093561

/-! ## A093561.P15258918646658549341

`A097805(n+1)+A093560(n)`
-/

namespace A093561.P15258918646658549341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A093560 n

end

end A093561.P15258918646658549341

namespace A093561

/-- `A097805(n+1)+A093560(n)` -/
def P15258918646658549341.Spec : Prop :=
  ∀ n, P15258918646658549341.a n = A093561 n

end A093561

/-! ## A093561.P10985593906414200757

`A029600(n)+2*A037012(n)`
-/

namespace A093561.P10985593906414200757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n + 2 * A037012 n

end

end A093561.P10985593906414200757

namespace A093561

/-- `A029600(n)+2*A037012(n)` -/
def P10985593906414200757.Spec : Prop :=
  ∀ n, P10985593906414200757.a n = A093561 n

end A093561

/-! ## A093561.P17719755050548957897

`A029600(n)-2*A008482(n)`
-/

namespace A093561.P17719755050548957897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n - 2 * A008482 n

end

end A093561.P17719755050548957897

namespace A093561

/-- `A029600(n)-2*A008482(n)` -/
def P17719755050548957897.Spec : Prop :=
  ∀ n, P17719755050548957897.a n = A093561 n

end A093561

/-! ## A093561.P3951838765397862667

`2*A029618(n)-A029600(n)`
-/

namespace A093561.P3951838765397862667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029618 n - A029600 n

end

end A093561.P3951838765397862667

namespace A093561

/-- `2*A029618(n)-A029600(n)` -/
def P3951838765397862667.Spec : Prop :=
  ∀ n, P3951838765397862667.a n = A093561 n

end A093561

/-! ## A093561.P14133231043711009659

`(A093564(n)+A007318(n))/2`
-/

namespace A093561.P14133231043711009659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093564 n + A007318 n : ℚ) / 2

end

end A093561.P14133231043711009659

namespace A093561

/-- `(A093564(n)+A007318(n))/2` -/
def P14133231043711009659.Spec : Prop :=
  ∀ n, P14133231043711009659.a n = (A093561 n : ℚ)

end A093561

/-! ## A093561.P14540555479946401490

`2*A093560(n)-A029653(n)`
-/

namespace A093561.P14540555479946401490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093560 n - A029653 n

end

end A093561.P14540555479946401490

namespace A093561

/-- `2*A093560(n)-A029653(n)` -/
def P14540555479946401490.Spec : Prop :=
  ∀ n, P14540555479946401490.a n = A093561 n

end A093561

/-! ## A093561.P1930888496295480411

`(A093563(n)+A029653(n))/2`
-/

namespace A093561.P1930888496295480411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093563 n + A029653 n : ℚ) / 2

end

end A093561.P1930888496295480411

namespace A093561

/-- `(A093563(n)+A029653(n))/2` -/
def P1930888496295480411.Spec : Prop :=
  ∀ n, P1930888496295480411.a n = (A093561 n : ℚ)

end A093561

/-! ## A093561.P11612077584650335014

`2*A029653(n)-A097805(n)`
-/

namespace A093561.P11612077584650335014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029653 n - A097805 n

end

end A093561.P11612077584650335014

namespace A093561

/-- `2*A029653(n)-A097805(n)` -/
def P11612077584650335014.Spec : Prop :=
  ∀ n, P11612077584650335014.a n = A093561 n

end A093561

/-! ## A093561.P14117170196331698981

`(A093562(n)+A093560(n))/2`
-/

namespace A093561.P14117170196331698981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093562 n + A093560 n : ℚ) / 2

end

end A093561.P14117170196331698981

namespace A093561

/-- `(A093562(n)+A093560(n))/2` -/
def P14117170196331698981.Spec : Prop :=
  ∀ n, P14117170196331698981.a n = (A093561 n : ℚ)

end A093561

/-! ## A093561.P14894612400246296061

`2*A093562(n)-A093563(n)`
-/

namespace A093561.P14894612400246296061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093562 n - A093563 n

end

end A093561.P14894612400246296061

namespace A093561

/-- `2*A093562(n)-A093563(n)` -/
def P14894612400246296061.Spec : Prop :=
  ∀ n, P14894612400246296061.a n = A093561 n

end A093561

/-! ## A093561.P6440506380654354763

`3*A097805(n+1)+A014473(n)+1`
-/

namespace A093561.P6440506380654354763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097805 (n + 1) + (A014473 n + 1)

end

end A093561.P6440506380654354763

namespace A093561

/-- `3*A097805(n+1)+A014473(n)+1` -/
def P6440506380654354763.Spec : Prop :=
  ∀ n, P6440506380654354763.a n = A093561 n

end A093561

/-! ## A093561.P10097388167566784367

`2*A029600(A061579(n))-A029600(n)`
-/

namespace A093561.P10097388167566784367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029600 (A061579 n).toNat - A029600 n

end

end A093561.P10097388167566784367

namespace A093561

/-- `2*A029600(A061579(n))-A029600(n)` -/
def P10097388167566784367.Spec : Prop :=
  ∀ n, P10097388167566784367.a n = A093561 n

end A093561

/-! ## A093561.P7102265165723703450

`A007318(n)+A093562(n)-A029653(n)`
-/

namespace A093561.P7102265165723703450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093562 n - A029653 n)

end

end A093561.P7102265165723703450

namespace A093561

/-- `A007318(n)+A093562(n)-A029653(n)` -/
def P7102265165723703450.Spec : Prop :=
  ∀ n, P7102265165723703450.a n = A093561 n

end A093561

/-! ## A093561.P11847835820197072158

`A029618(n)+A071919(n)-A097805(n)`
-/

namespace A093561.P11847835820197072158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n + (A071919 n - A097805 n)

end

end A093561.P11847835820197072158

namespace A093561

/-- `A029618(n)+A071919(n)-A097805(n)` -/
def P11847835820197072158.Spec : Prop :=
  ∀ n, P11847835820197072158.a n = A093561 n

end A093561

/-! ## A093561.P5708459742148697235

`A071919(n)+A134058(n)-A112467(n)`
-/

namespace A093561.P5708459742148697235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + (A134058 n - A112467 n)

end

end A093561.P5708459742148697235

namespace A093561

/-- `A071919(n)+A134058(n)-A112467(n)` -/
def P5708459742148697235.Spec : Prop :=
  ∀ n, P5708459742148697235.a n = A093561 n

end A093561

/-!
# A093562: (5,1) Pascal triangle.

The programs for A093562, the canonical program `A093562.P13518038897955130974` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093562 has offset 0).

The definition of A093562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093562.P13518038897955130974

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093562

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P13518038897955130974.Spec : Prop :=
  ∀ n, (P13518038897955130974.a n : ℤ) = A093562 n

theorem P13518038897955130974.correct : P13518038897955130974.Spec := by
  intro n
  simp only [A093562]

end A093562

/-! ## A093562.P12950466095997463501

`2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1, a(1)=5`
-/

namespace A093562.P12950466095997463501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A093562.P12950466095997463501

namespace A093562

/-- `2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` -/
def P12950466095997463501.Spec : Prop :=
  ∀ n, P12950466095997463501.a n = A093562 n

end A093562

/-! ## A093562.P13676230310992043428

`A093561(n)+∑[A037012(n)]`
-/

namespace A093562.P13676230310992043428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093562.P13676230310992043428

namespace A093562

/-- `A093561(n)+∑[A037012(n)]` -/
def P13676230310992043428.Spec : Prop :=
  ∀ n, P13676230310992043428.a n = A093562 n

end A093562

/-! ## A093562.P7379842217368371296

`A093561(n)-∑[A008482(n)]`
-/

namespace A093562.P7379842217368371296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093562.P7379842217368371296

namespace A093562

/-- `A093561(n)-∑[A008482(n)]` -/
def P7379842217368371296.Spec : Prop :=
  ∀ n, P7379842217368371296.a n = A093562 n

end A093562

/-! ## A093562.P6839221652551676398

`A093563(n)-A097805(n+1)`
-/

namespace A093562.P6839221652551676398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 n - A097805 (n + 1)

end

end A093562.P6839221652551676398

namespace A093562

/-- `A093563(n)-A097805(n+1)` -/
def P6839221652551676398.Spec : Prop :=
  ∀ n, P6839221652551676398.a n = A093562 n

end A093562

/-! ## A093562.P10658799261842261542

`2*A093560(n)-A007318(n)`
-/

namespace A093562.P10658799261842261542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093560 n - A007318 n

end

end A093562.P10658799261842261542

namespace A093562

/-- `2*A093560(n)-A007318(n)` -/
def P10658799261842261542.Spec : Prop :=
  ∀ n, P10658799261842261542.a n = A093562 n

end A093562

/-! ## A093562.P18047443542024637261

`(A093644(n)+A007318(n))/2`
-/

namespace A093562.P18047443542024637261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093644 n + A007318 n : ℚ) / 2

end

end A093562.P18047443542024637261

namespace A093562

/-- `(A093644(n)+A007318(n))/2` -/
def P18047443542024637261.Spec : Prop :=
  ∀ n, P18047443542024637261.a n = (A093562 n : ℚ)

end A093562

/-! ## A093562.P11053867136586794470

`(A093565(n)+A029653(n))/2`
-/

namespace A093562.P11053867136586794470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093565 n + A029653 n : ℚ) / 2

end

end A093562.P11053867136586794470

namespace A093562

/-- `(A093565(n)+A029653(n))/2` -/
def P11053867136586794470.Spec : Prop :=
  ∀ n, P11053867136586794470.a n = (A093562 n : ℚ)

end A093562

/-! ## A093562.P717606906596478966

`2*A029653(n)-A112467(n)`
-/

namespace A093562.P717606906596478966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029653 n - A112467 n

end

end A093562.P717606906596478966

namespace A093562

/-- `2*A029653(n)-A112467(n)` -/
def P717606906596478966.Spec : Prop :=
  ∀ n, P717606906596478966.a n = A093562 n

end A093562

/-! ## A093562.P13681835939386877433

`2*A093561(n)-A093560(n)`
-/

namespace A093562.P13681835939386877433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093561 n - A093560 n

end

end A093562.P13681835939386877433

namespace A093562

/-- `2*A093561(n)-A093560(n)` -/
def P13681835939386877433.Spec : Prop :=
  ∀ n, P13681835939386877433.a n = A093562 n

end A093562

/-! ## A093562.P16493983166996072877

`2*A093563(n)-A093564(n)`
-/

namespace A093562.P16493983166996072877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093563 n - A093564 n

end

end A093562.P16493983166996072877

namespace A093562

/-- `2*A093563(n)-A093564(n)` -/
def P16493983166996072877.Spec : Prop :=
  ∀ n, P16493983166996072877.a n = A093562 n

end A093562

/-! ## A093562.P11501785881123996987

`A007318(n)+A093563(n)-A029653(n)`
-/

namespace A093562.P11501785881123996987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093563 n - A029653 n)

end

end A093562.P11501785881123996987

namespace A093562

/-- `A007318(n)+A093563(n)-A029653(n)` -/
def P11501785881123996987.Spec : Prop :=
  ∀ n, P11501785881123996987.a n = A093562 n

end A093562

/-! ## A093562.P12388483517823498890

`A029618(n)+A071919(n)-A112467(n)`
-/

namespace A093562.P12388483517823498890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 n + (A071919 n - A112467 n)

end

end A093562.P12388483517823498890

namespace A093562

/-- `A029618(n)+A071919(n)-A112467(n)` -/
def P12388483517823498890.Spec : Prop :=
  ∀ n, P12388483517823498890.a n = A093562 n

end A093562

/-! ## A093562.P1882233445398513430

`A096940(n+1)+A007318(n)-A007318(n+1)`
-/

namespace A093562.P1882233445398513430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (n + 1) + (A007318 n - A007318 (n + 1))

end

end A093562.P1882233445398513430

namespace A093562

/-- `A096940(n+1)+A007318(n)-A007318(n+1)` -/
def P1882233445398513430.Spec : Prop :=
  ∀ n, P1882233445398513430.a n = A093562 n

end A093562

/-! ## A093562.P11208522840486265187

`A096956(n+1)+A007318(n)-A029635(n+1)`
-/

namespace A093562.P11208522840486265187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (n + 1) + (A007318 n - A029635 (n + 1))

end

end A093562.P11208522840486265187

namespace A093562

/-- `A096956(n+1)+A007318(n)-A029635(n+1)` -/
def P11208522840486265187.Spec : Prop :=
  ∀ n, P11208522840486265187.a n = A093562 n

end A093562

/-! ## A093562.P2279546524380611754

`A096940(A038722(n+2))`
-/

namespace A093562.P2279546524380611754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 (A038722 (n + 2)).toNat

end

end A093562.P2279546524380611754

namespace A093562

/-- `A096940(A038722(n+2))` -/
def P2279546524380611754.Spec : Prop :=
  ∀ n, P2279546524380611754.a n = A093562 n

end A093562

/-! ## A093562.P15670626954731131263

`A097805(n)+A008587(A097805(n+1))`
-/

namespace A093562.P15670626954731131263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A008587 (A097805 (n + 1)).toNat

end

end A093562.P15670626954731131263

namespace A093562

/-- `A097805(n)+A008587(A097805(n+1))` -/
def P15670626954731131263.Spec : Prop :=
  ∀ n, P15670626954731131263.a n = A093562 n

end A093562

/-!
# A093563: (6,1)-Pascal triangle.

The programs for A093563, the canonical program `A093563.P12630022306405638570` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093563 has offset 0).

The definition of A093563 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093563.P12630022306405638570

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093563

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P12630022306405638570.Spec : Prop :=
  ∀ n, (P12630022306405638570.a n : ℤ) = A093563 n

theorem P12630022306405638570.correct : P12630022306405638570.Spec := by
  intro n
  simp only [A093563]

end A093563

/-! ## A093563.P17930675746304280208

`2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1, a(1)=6`
-/

namespace A093563.P17930675746304280208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A093563.P17930675746304280208

namespace A093563

/-- `2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` -/
def P17930675746304280208.Spec : Prop :=
  ∀ n, P17930675746304280208.a n = A093563 n

end A093563

/-! ## A093563.P14673637925893567350

`A096956(A038722(n+2))`
-/

namespace A093563.P14673637925893567350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (A038722 (n + 2)).toNat

end

end A093563.P14673637925893567350

namespace A093563

/-- `A096956(A038722(n+2))` -/
def P14673637925893567350.Spec : Prop :=
  ∀ n, P14673637925893567350.a n = A093563 n

end A093563

/-! ## A093563.P3907634183534850188

`2*A093561(n)-A029653(n)`
-/

namespace A093563.P3907634183534850188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093561 n - A029653 n

end

end A093563.P3907634183534850188

namespace A093563

/-- `2*A093561(n)-A029653(n)` -/
def P3907634183534850188.Spec : Prop :=
  ∀ n, P3907634183534850188.a n = A093563 n

end A093563

/-! ## A093563.P3301016798071858811

`(A093645(n)+A029653(n))/2`
-/

namespace A093563.P3301016798071858811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093645 n + A029653 n : ℚ) / 2

end

end A093563.P3301016798071858811

namespace A093563

/-- `(A093645(n)+A029653(n))/2` -/
def P3301016798071858811.Spec : Prop :=
  ∀ n, P3301016798071858811.a n = (A093563 n : ℚ)

end A093563

/-! ## A093563.P15119187304263627806

`2*A093562(n)-A093561(n)`
-/

namespace A093563.P15119187304263627806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093562 n - A093561 n

end

end A093563.P15119187304263627806

namespace A093563

/-- `2*A093562(n)-A093561(n)` -/
def P15119187304263627806.Spec : Prop :=
  ∀ n, P15119187304263627806.a n = A093563 n

end A093563

/-! ## A093563.P1793982479065247630

`2*A093564(n)-A093565(n)`
-/

namespace A093563.P1793982479065247630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093564 n - A093565 n

end

end A093563.P1793982479065247630

namespace A093563

/-- `2*A093564(n)-A093565(n)` -/
def P1793982479065247630.Spec : Prop :=
  ∀ n, P1793982479065247630.a n = A093563 n

end A093563

/-! ## A093563.P8766734683468176970

`2*A093560(n)-A097805(n)`
-/

namespace A093563.P8766734683468176970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093560 n - A097805 n

end

end A093563.P8766734683468176970

namespace A093563

/-- `2*A093560(n)-A097805(n)` -/
def P8766734683468176970.Spec : Prop :=
  ∀ n, P8766734683468176970.a n = A093563 n

end A093563

/-! ## A093563.P17047400331018603843

`A097805(n)+6*A097805(n+1)`
-/

namespace A093563.P17047400331018603843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + 6 * A097805 (n + 1)

end

end A093563.P17047400331018603843

namespace A093563

/-- `A097805(n)+6*A097805(n+1)` -/
def P17047400331018603843.Spec : Prop :=
  ∀ n, P17047400331018603843.a n = A093563 n

end A093563

/-! ## A093563.P7963068941966125955

`A029653(n)+A093562(n)-A007318(n)`
-/

namespace A093563.P7963068941966125955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A093562 n - A007318 n)

end

end A093563.P7963068941966125955

namespace A093563

/-- `A029653(n)+A093562(n)-A007318(n)` -/
def P7963068941966125955.Spec : Prop :=
  ∀ n, P7963068941966125955.a n = A093563 n

end A093563

/-! ## A093563.P18287053942066332132

`A007318(n)+A093564(n)-A029653(n)`
-/

namespace A093563.P18287053942066332132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093564 n - A029653 n)

end

end A093563.P18287053942066332132

namespace A093563

/-- `A007318(n)+A093564(n)-A029653(n)` -/
def P18287053942066332132.Spec : Prop :=
  ∀ n, P18287053942066332132.a n = A093563 n

end A093563

/-! ## A093563.P12675067212356321789

`A093560(n)+A093561(n)-A007318(n)`
-/

namespace A093563.P12675067212356321789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 n + (A093561 n - A007318 n)

end

end A093563.P12675067212356321789

namespace A093563

/-- `A093560(n)+A093561(n)-A007318(n)` -/
def P12675067212356321789.Spec : Prop :=
  ∀ n, P12675067212356321789.a n = A093563 n

end A093563

/-! ## A093563.P17256738179433626819

`A007318(n)+A093565(n)-A093560(n)`
-/

namespace A093563.P17256738179433626819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093565 n - A093560 n)

end

end A093563.P17256738179433626819

namespace A093563

/-- `A007318(n)+A093565(n)-A093560(n)` -/
def P17256738179433626819.Spec : Prop :=
  ∀ n, P17256738179433626819.a n = A093563 n

end A093563

/-! ## A093563.P3575845614892110217

`A096956(n+1)+A007318(n)-A007318(n+1)`
-/

namespace A093563.P3575845614892110217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (n + 1) + (A007318 n - A007318 (n + 1))

end

end A093563.P3575845614892110217

namespace A093563

/-- `A096956(n+1)+A007318(n)-A007318(n+1)` -/
def P3575845614892110217.Spec : Prop :=
  ∀ n, P3575845614892110217.a n = A093563 n

end A093563

/-! ## A093563.P7147213422686644751

`A096956(n+1)+A029653(n)-A029635(n+1)`
-/

namespace A093563.P7147213422686644751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (n + 1) + (A029653 n - A029635 (n + 1))

end

end A093563.P7147213422686644751

namespace A093563

/-- `A096956(n+1)+A029653(n)-A029635(n+1)` -/
def P7147213422686644751.Spec : Prop :=
  ∀ n, P7147213422686644751.a n = A093563 n

end A093563

/-! ## A093563.P15825732245545290241

`A008587(A097805(n+1))+A007318(n)`
-/

namespace A093563.P15825732245545290241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A097805 (n + 1)).toNat + A007318 n

end

end A093563.P15825732245545290241

namespace A093563

/-- `A008587(A097805(n+1))+A007318(n)` -/
def P15825732245545290241.Spec : Prop :=
  ∀ n, P15825732245545290241.a n = A093563 n

end A093563

/-! ## A093563.P1973185043771871671

`A112467(n)+A008589(A097805(n+1))`
-/

namespace A093563.P1973185043771871671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112467 n + A008589 (A097805 (n + 1)).toNat

end

end A093563.P1973185043771871671

namespace A093563

/-- `A112467(n)+A008589(A097805(n+1))` -/
def P1973185043771871671.Spec : Prop :=
  ∀ n, P1973185043771871671.a n = A093563 n

end A093563

/-!
# A093564: (7,1) Pascal triangle.

The programs for A093564, the canonical program `A093564.P8190300056165383650` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093564 has offset 0).

The definition of A093564 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093564.P8190300056165383650

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093564

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P8190300056165383650.Spec : Prop :=
  ∀ n, (P8190300056165383650.a n : ℤ) = A093564 n

theorem P8190300056165383650.correct : P8190300056165383650.Spec := by
  intro n
  simp only [A093564]

end A093564

/-! ## A093564.P9768962163190135182

`2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1, a(1)=7`
-/

namespace A093564.P9768962163190135182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A093564.P9768962163190135182

namespace A093564

/-- `2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` -/
def P9768962163190135182.Spec : Prop :=
  ∀ n, P9768962163190135182.a n = A093564 n

end A093564

/-! ## A093564.P9232925828197039311

`A097805(1+n)+A093563(n)`
-/

namespace A093564.P9232925828197039311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (1 + n) + A093563 n

end

end A093564.P9232925828197039311

namespace A093564

/-- `A097805(1+n)+A093563(n)` -/
def P9232925828197039311.Spec : Prop :=
  ∀ n, P9232925828197039311.a n = A093564 n

end A093564

/-! ## A093564.P1167304249394451506

`2*A093561(n)-A007318(n)`
-/

namespace A093564.P1167304249394451506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093561 n - A007318 n

end

end A093564.P1167304249394451506

namespace A093564

/-- `2*A093561(n)-A007318(n)` -/
def P1167304249394451506.Spec : Prop :=
  ∀ n, P1167304249394451506.a n = A093564 n

end A093564

/-! ## A093564.P4800275757472814378

`2*A093562(n)-A093560(n)`
-/

namespace A093564.P4800275757472814378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093562 n - A093560 n

end

end A093564.P4800275757472814378

namespace A093564

/-- `2*A093562(n)-A093560(n)` -/
def P4800275757472814378.Spec : Prop :=
  ∀ n, P4800275757472814378.a n = A093564 n

end A093564

/-! ## A093564.P4747285255573375537

`2*A093563(n)-A093562(n)`
-/

namespace A093564.P4747285255573375537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093563 n - A093562 n

end

end A093564.P4747285255573375537

namespace A093564

/-- `2*A093563(n)-A093562(n)` -/
def P4747285255573375537.Spec : Prop :=
  ∀ n, P4747285255573375537.a n = A093564 n

end A093564

/-! ## A093564.P15603754562054787261

`2*A093565(n)-A093644(n)`
-/

namespace A093564.P15603754562054787261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093565 n - A093644 n

end

end A093564.P15603754562054787261

namespace A093564

/-- `2*A093565(n)-A093644(n)` -/
def P15603754562054787261.Spec : Prop :=
  ∀ n, P15603754562054787261.a n = A093564 n

end A093564

/-! ## A093564.P13976875507675870023

`2*A093560(n)-A112467(n)`
-/

namespace A093564.P13976875507675870023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093560 n - A112467 n

end

end A093564.P13976875507675870023

namespace A093564

/-- `2*A093560(n)-A112467(n)` -/
def P13976875507675870023.Spec : Prop :=
  ∀ n, P13976875507675870023.a n = A093564 n

end A093564

/-! ## A093564.P4706287683707747826

`A029653(n)+A093563(n)-A007318(n)`
-/

namespace A093564.P4706287683707747826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A093563 n - A007318 n)

end

end A093564.P4706287683707747826

namespace A093564

/-- `A029653(n)+A093563(n)-A007318(n)` -/
def P4706287683707747826.Spec : Prop :=
  ∀ n, P4706287683707747826.a n = A093564 n

end A093564

/-! ## A093564.P6187672209526378813

`A007318(n)+A093565(n)-A029653(n)`
-/

namespace A093564.P6187672209526378813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093565 n - A029653 n)

end

end A093564.P6187672209526378813

namespace A093564

/-- `A007318(n)+A093565(n)-A029653(n)` -/
def P6187672209526378813.Spec : Prop :=
  ∀ n, P6187672209526378813.a n = A093564 n

end A093564

/-! ## A093564.P13138226653812303617

`A097805(n)+A008589(A097805(n+1))`
-/

namespace A093564.P13138226653812303617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A008589 (A097805 (n + 1)).toNat

end

end A093564.P13138226653812303617

namespace A093564

/-- `A097805(n)+A008589(A097805(n+1))` -/
def P13138226653812303617.Spec : Prop :=
  ∀ n, P13138226653812303617.a n = A093564 n

end A093564

/-!
# A093565: (8,1) Pascal triangle.

The programs for A093565, the canonical program `A093565.P15054635975176274861` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093565 has offset 0).

The definition of A093565 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093565.P15054635975176274861

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093565

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P15054635975176274861.Spec : Prop :=
  ∀ n, (P15054635975176274861.a n : ℤ) = A093565 n

theorem P15054635975176274861.correct : P15054635975176274861.Spec := by
  intro n
  simp only [A093565]

end A093565

/-! ## A093565.P2028291250835543750

`2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` with `a(0)=1, a(1)=8`
-/

namespace A093565.P2028291250835543750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n)

end

end A093565.P2028291250835543750

namespace A093565

/-- `2*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))` -/
def P2028291250835543750.Spec : Prop :=
  ∀ n, P2028291250835543750.a n = A093565 n

end A093565

/-! ## A093565.P10410742888265842368

`2*A093562(n)-A029653(n)`
-/

namespace A093565.P10410742888265842368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093562 n - A029653 n

end

end A093565.P10410742888265842368

namespace A093565

/-- `2*A093562(n)-A029653(n)` -/
def P10410742888265842368.Spec : Prop :=
  ∀ n, P10410742888265842368.a n = A093565 n

end A093565

/-! ## A093565.P99799673168003568

`2*A093564(n)-A093563(n)`
-/

namespace A093565.P99799673168003568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093564 n - A093563 n

end

end A093565.P99799673168003568

namespace A093565

/-- `2*A093564(n)-A093563(n)` -/
def P99799673168003568.Spec : Prop :=
  ∀ n, P99799673168003568.a n = A093565 n

end A093565

/-! ## A093565.P4987896449505904799

`2*A093644(n)-A093645(n)`
-/

namespace A093565.P4987896449505904799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093644 n - A093645 n

end

end A093565.P4987896449505904799

namespace A093565

/-- `2*A093644(n)-A093645(n)` -/
def P4987896449505904799.Spec : Prop :=
  ∀ n, P4987896449505904799.a n = A093565 n

end A093565

/-! ## A093565.P14665844342448050782

`A007318(n)+7*A097805(n+1)`
-/

namespace A093565.P14665844342448050782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 7 * A097805 (n + 1)

end

end A093565.P14665844342448050782

namespace A093565

/-- `A007318(n)+7*A097805(n+1)` -/
def P14665844342448050782.Spec : Prop :=
  ∀ n, P14665844342448050782.a n = A093565 n

end A093565

/-! ## A093565.P5225911513925859338

`A097805(n)+8*A097805(n+1)`
-/

namespace A093565.P5225911513925859338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + 8 * A097805 (n + 1)

end

end A093565.P5225911513925859338

namespace A093565

/-- `A097805(n)+8*A097805(n+1)` -/
def P5225911513925859338.Spec : Prop :=
  ∀ n, P5225911513925859338.a n = A093565 n

end A093565

/-! ## A093565.P7793072079118569512

`A029653(n)+A093564(n)-A007318(n)`
-/

namespace A093565.P7793072079118569512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 n + (A093564 n - A007318 n)

end

end A093565.P7793072079118569512

namespace A093565

/-- `A029653(n)+A093564(n)-A007318(n)` -/
def P7793072079118569512.Spec : Prop :=
  ∀ n, P7793072079118569512.a n = A093565 n

end A093565

/-! ## A093565.P4581663887111154630

`A007318(n)+A093644(n)-A029653(n)`
-/

namespace A093565.P4581663887111154630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A093644 n - A029653 n)

end

end A093565.P4581663887111154630

namespace A093565

/-- `A007318(n)+A093644(n)-A029653(n)` -/
def P4581663887111154630.Spec : Prop :=
  ∀ n, P4581663887111154630.a n = A093565 n

end A093565

/-!
# A093566: a(n) = n*(n-1)*(n-2)*(n-3)*(n^2-3*n-2)/48.

The programs for A093566, the canonical program `A093566.P17843622386652552832` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093566 has offset 0).

The definition of A093566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)*(n-3)*(n²-3*n-2)/48` (program `A093566.P222419116734478722`, by `A093566.P222419116734478722.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093566.P13899256201626503731

`ogf((x^4+13x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A093566.P13899256201626503731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1, 13, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A093566.P13899256201626503731

namespace A093566

/-- `ogf((x^4+13x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P13899256201626503731.Spec : Prop :=
  ∀ n, P13899256201626503731.a n = A093566 n

end A093566

/-! ## A093566.P222419116734478722

`n*(n-1)*(n-2)*(n-3)*(n²-3*n-2)/48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093566.P222419116734478722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n : ℤ) - 3) * ((n ^ 2 : ℤ) - (3 * n : ℤ) - 2) : ℚ) / 48

end

end A093566.P222419116734478722

namespace A093566

/-- `n*(n-1)*(n-2)*(n-3)*(n²-3*n-2)/48` -/
def P222419116734478722.Spec : Prop :=
  ∀ n, P222419116734478722.a n = (A093566 n : ℚ)

theorem P222419116734478722.correct : P222419116734478722.Spec := by
  intro n
  simp only [A093566, Nat.add_sub_cancel, A093566.P222419116734478722.a, A093566.P17843622386652552832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A093566

/-! ## A093566.P18249201120306338951

`C(C(abs(1-n), 2), 3)`
-/

namespace A093566.P18249201120306338951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose |1 - (n : ℤ)|.toNat 2) 3

end

end A093566.P18249201120306338951

namespace A093566

/-- `C(C(abs(1-n), 2), 3)` -/
def P18249201120306338951.Spec : Prop :=
  ∀ n, (P18249201120306338951.a n : ℤ) = A093566 n

end A093566

/-! ## A093566.P10464631069330896575

`C(∑[n-2]+3, 3)`
-/

namespace A093566.P10464631069330896575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat 3

end

end A093566.P10464631069330896575

namespace A093566

/-- `C(∑[n-2]+3, 3)` -/
def P10464631069330896575.Spec : Prop :=
  ∀ n, (P10464631069330896575.a n : ℤ) = A093566 n

end A093566

/-! ## A093566.P10668736276437105481

`(∑[n-1]-n)*C(n, 4)`
-/

namespace A093566.P10668736276437105481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) * (Nat.choose n 4 : ℤ)

end

end A093566.P10668736276437105481

namespace A093566

/-- `(∑[n-1]-n)*C(n, 4)` -/
def P10668736276437105481.Spec : Prop :=
  ∀ n, P10668736276437105481.a n = A093566 n

end A093566

/-! ## A093566.P17843622386652552832

`C(n, 4)+15*C(n, 5)+15*C(n, 6)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093566

/-- `C(n, 4)+15*C(n, 5)+15*C(n, 6)` -/
def P17843622386652552832.Spec : Prop :=
  ∀ n, (P17843622386652552832.a n : ℤ) = A093566 n

theorem P17843622386652552832.correct : P17843622386652552832.Spec := by
  intro n
  simp only [A093566]

end A093566

/-! ## A093566.P9395547953124078741

`A000332(n)+A000332(n)*A167544(n+4)`
-/

namespace A093566.P9395547953124078741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n + A000332 n * A167544 (n + 4)

end

end A093566.P9395547953124078741

namespace A093566

/-- `A000332(n)+A000332(n)*A167544(n+4)` -/
def P9395547953124078741.Spec : Prop :=
  ∀ n, P9395547953124078741.a n = A093566 n

end A093566

/-! ## A093566.P14891946454199918999

`sqrt(A331574((n-1)*(n-2)))`
-/

namespace A093566.P14891946454199918999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A331574 (((n : ℤ) - 1) * ((n : ℤ) - 2)).toNat : ℝ)

end

end A093566.P14891946454199918999

namespace A093566

/-- `sqrt(A331574((n-1)*(n-2)))` -/
def P14891946454199918999.Spec : Prop :=
  ∀ n, P14891946454199918999.a n = (A093566 n : ℝ)

end A093566

/-!
# A093567: Binomial (Binomial (n,2), 3) - Binomial (Binomial (n,3), 2).

The programs for A093567, the canonical program `A093567.P5028468586511338693` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093567 has offset 2).

The definition of A093567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(C(n+2, 2), 3)-C(C(n+2, 3), 2)` (program `A093567.P5028468586511338693`, by `A093567.P5028468586511338693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093567.P5028468586511338693

`C(C(n+2, 2), 3)-C(C(n+2, 3), 2)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A093567

/-- `C(C(n+2, 2), 3)-C(C(n+2, 3), 2)` -/
def P5028468586511338693.Spec : Prop :=
  ∀ n, P5028468586511338693.a n = A093567 (n + 2)

theorem P5028468586511338693.correct : P5028468586511338693.Spec := by
  intro n
  simp only [A093567, Nat.add_sub_cancel]

end A093567

/-! ## A093567.P10280685304187410191

`ogf((x+7x^2-2x^3-x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A093567.P10280685304187410191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 7, -2, -1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A093567.P10280685304187410191

namespace A093567

/-- `ogf((x+7x^2-2x^3-x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P10280685304187410191.Spec : Prop :=
  ∀ n, P10280685304187410191.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P12114222028525715418

`A006542(n+4)-∑[n+1]²`
-/

namespace A093567.P12114222028525715418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4) - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A093567.P12114222028525715418

namespace A093567

/-- `A006542(n+4)-∑[n+1]²` -/
def P12114222028525715418.Spec : Prop :=
  ∀ n, P12114222028525715418.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P17404128194044856311

`∑[A108648(n)/(n+1)]-∑[n+1]²`
-/

namespace A093567.P17404128194044856311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108648 n : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ)

end

end A093567.P17404128194044856311

namespace A093567

/-- `∑[A108648(n)/(n+1)]-∑[n+1]²` -/
def P17404128194044856311.Spec : Prop :=
  ∀ n, P17404128194044856311.a n = (A093567 (n + 2) : ℚ)

end A093567

/-! ## A093567.P3096993692940086261

`∑[∑[A212246(n)+A000578(n)]]`
-/

namespace A093567.P3096993692940086261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212246 n + A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093567.P3096993692940086261

namespace A093567

/-- `∑[∑[A212246(n)+A000578(n)]]` -/
def P3096993692940086261.Spec : Prop :=
  ∀ n, P3096993692940086261.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P14581415310169782717

`∑[A006414(n)]-A000217(n+1)²`
-/

namespace A093567.P14581415310169782717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (n + 1) ^ 2

end

end A093567.P14581415310169782717

namespace A093567

/-- `∑[A006414(n)]-A000217(n+1)²` -/
def P14581415310169782717.Spec : Prop :=
  ∀ n, P14581415310169782717.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P17067914793382943524

`∑[A006414(n)-Δ[A000537(n)]]`
-/

namespace A093567.P17067914793382943524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093567.P17067914793382943524

namespace A093567

/-- `∑[A006414(n)-Δ[A000537(n)]]` -/
def P17067914793382943524.Spec : Prop :=
  ∀ n, P17067914793382943524.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P8325382336983911632

`∑[A006414(n)]-A000537(n+1)`
-/

namespace A093567.P8325382336983911632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000537 (n + 1)

end

end A093567.P8325382336983911632

namespace A093567

/-- `∑[A006414(n)]-A000537(n+1)` -/
def P8325382336983911632.Spec : Prop :=
  ∀ n, P8325382336983911632.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P7319637826874290215

`∑[∑[A239352(n+1)]-A000389(n+1)]`
-/

namespace A093567.P7319637826874290215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239352 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093567.P7319637826874290215

namespace A093567

/-- `∑[∑[A239352(n+1)]-A000389(n+1)]` -/
def P7319637826874290215.Spec : Prop :=
  ∀ n, P7319637826874290215.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P5268422513142098864

`A093566(n+3)-A054563(n)`
-/

namespace A093567.P5268422513142098864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093566 (n + 3) - A054563 n

end

end A093567.P5268422513142098864

namespace A093567

/-- `A093566(n+3)-A054563(n)` -/
def P5268422513142098864.Spec : Prop :=
  ∀ n, P5268422513142098864.a n = A093567 (n + 2)

end A093567

/-! ## A093567.P17260884609506213747

`∑[A107980(A000096(n))-(n+1)^3]`
-/

namespace A093567.P17260884609506213747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107980 (A000096 n).toNat - ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093567.P17260884609506213747

namespace A093567

/-- `∑[A107980(A000096(n))-(n+1)^3]` -/
def P17260884609506213747.Spec : Prop :=
  ∀ n, P17260884609506213747.a n = A093567 (n + 2)

end A093567

/-!
# A093568: Let M = the 2 X 2 matrix [0 1 / -1 2+sqrt(8)]. Perform the operation M^n * [1 1] = [x y]; then a(n) = floor(x), a(n+1) = floor(y).

The programs for A093568, there is no canonical definition to state claims against.
-/

/-! ## A093568.P11430925820464430702

`∑[A054861(4*A150876(n))]`
-/

namespace A093568.P11430925820464430702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (4 * A150876 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093568.P11430925820464430702

/-! ## A093568.P8291871246508998274

`A194204(A097941(2*n+1))+A194204(n+3)`
-/

namespace A093568.P8291871246508998274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194204 (A097941 (2 * n + 1)).toNat + A194204 (n + 3)

end

end A093568.P8291871246508998274

/-!
# A093569: For p = prime(n), the number of integers k < p-1 such that p divides A001008(k), the numerator of the harmonic number H(k).

The programs for A093569, there is no canonical definition to state claims against.
-/

/-! ## A093569.P14211018805453183893

`and(2, A102920(n+6))`
-/

namespace A093569.P14211018805453183893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A102920 (n + 6))

end

end A093569.P14211018805453183893

/-! ## A093569.P1589415080117563246

`and(2, A165601(A333418(n+1)))`
-/

namespace A093569.P1589415080117563246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A165601 (A333418 (n + 1)).toNat)

end

end A093569.P1589415080117563246

/-! ## A093569.P10759255848718697749

`and(2, A214028(A327822(n+1)²))`
-/

namespace A093569.P10759255848718697749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A214028 (A327822 (n + 1) ^ 2).toNat)

end

end A093569.P10759255848718697749

/-! ## A093569.P6486992721597352483

`and(2, and(A071817(n+1), A095664(n)))`
-/

namespace A093569.P6486992721597352483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (Int.land (A071817 (n + 1)) (A095664 n))

end

end A093569.P6486992721597352483

/-! ## A093569.P18263212237442977693

`and(2, A004525(record[A340196(n+1)²]))`
-/

namespace A093569.P18263212237442977693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340196 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A093569.P18263212237442977693

/-!
# A093570: a(n) = Product_{k=1..n}(k + prime(k)).

The programs for A093570, there is no canonical definition to state claims against.
-/

/-! ## A093570.P9576246740822769769

`∏[A014688(1+n)]`
-/

namespace A093570.P9576246740822769769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P9576246740822769769

/-! ## A093570.P10525936452057079917

`∏[A167136(n+2)]`
-/

namespace A093570.P10525936452057079917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P10525936452057079917

/-! ## A093570.P8003945112625228582

`∏[∑[A230847(n+1)]]`
-/

namespace A093570.P8003945112625228582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P8003945112625228582

/-! ## A093570.P8530899634134347966

`∏[record[A380409(n+2)]]`
-/

namespace A093570.P8530899634134347966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380409 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P8530899634134347966

/-! ## A093570.P15138818600563043933

`∏[A095116(n+1)+1]`
-/

namespace A093570.P15138818600563043933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P15138818600563043933

/-! ## A093570.P4258900113376684557

`∏[A008864(n+1)+n]`
-/

namespace A093570.P4258900113376684557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P4258900113376684557

/-! ## A093570.P10950317454758350036

`∏[A028815(n+1)+n]`
-/

namespace A093570.P10950317454758350036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P10950317454758350036

/-! ## A093570.P2681069127053736122

`∏[A299763(n+2)+n]`
-/

namespace A093570.P2681069127053736122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P2681069127053736122

/-! ## A093570.P4548698197522222646

`∏[A000040(n+1)+1+n]`
-/

namespace A093570.P4548698197522222646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093570.P4548698197522222646

/-! ## A093570.P17553011023055179704

`a(n-1)*A176628(n+1)` with `a(0)=3`
-/

namespace A093570.P17553011023055179704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) * A176628 (n + 1)

end

end A093570.P17553011023055179704

/-!
# A093571: LeastCommonMultiple({k+prime(k): 1<=k<=n}).

The programs for A093571, there is no canonical definition to state claims against.
-/

/-! ## A093571.P4888482485416543189

`lcm(a(n-1), A014688(n+1))` with `a(0)=3`
-/

namespace A093571.P4888482485416543189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A014688 (n + 1))

end

end A093571.P4888482485416543189

/-! ## A093571.P2179885295818306153

`lcm(abs(a(n-1)), A176628(n+1))` with `a(0)=3`
-/

namespace A093571.P2179885295818306153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A176628 (n + 1))

end

end A093571.P2179885295818306153

/-!
# A093572: Greatest prime factor of Product(k+prime(k): 1<=k<=n).

The programs for A093572, there is no canonical definition to state claims against.
-/

/-! ## A093572.P15979417420429071539

`A006530(a(n-1)*A014688(n+1))` with `a(0)=3`
-/

namespace A093572.P15979417420429071539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) * A014688 (n + 1)).toNat

end

end A093572.P15979417420429071539

/-! ## A093572.P16204098047715265010

`A006530(a(n-1)*A176628(n+1))` with `a(0)=3`
-/

namespace A093572.P16204098047715265010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) * A176628 (n + 1)).toNat

end

end A093572.P16204098047715265010

/-! ## A093572.P15901110837516443967

`A006530(lcm(a(n-1), A014688(n+1)))` with `a(0)=3`
-/

namespace A093572.P15901110837516443967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (Int.lcm (a (n - 1)) (A014688 (n + 1)))

end

end A093572.P15901110837516443967

/-! ## A093572.P10401853016179630864

`A006530((A000040(n+1)+1+n)*a(n-1))` with `a(0)=3`
-/

namespace A093572.P10401853016179630864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 ((A000040 (n + 1) + 1 + (n : ℤ)) * a (n - 1)).toNat

end

end A093572.P10401853016179630864

/-! ## A093572.P5737900051838415258

`A006530((A008578(n+2)+n+1)*a(n-1))` with `a(0)=3`
-/

namespace A093572.P5737900051838415258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 ((A008578 (n + 2) + (n + 1 : ℤ)) * a (n - 1)).toNat

end

end A093572.P5737900051838415258

/-! ## A093572.P6311718301091664909

`A006530(a(n-1)+a(n-1)*A095116(n+1))` with `a(0)=3`
-/

namespace A093572.P6311718301091664909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 (a (n - 1) + a (n - 1) * A095116 (n + 1)).toNat

end

end A093572.P6311718301091664909

/-! ## A093572.P10631883795655990961

`A006530((record[A006530(n+2)]+n+1)*a(n-1))` with `a(0)=3`
-/

namespace A093572.P10631883795655990961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006530 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)) * a (n - 1)).toNat

end

end A093572.P10631883795655990961

/-!
# A093575: Smallest prime of the form n^j+(n+1)^k, with j,k integer > 0, max(j,k)>1.

The programs for A093575, there is no canonical definition to state claims against.
-/

/-! ## A093575.P5495329131758471398

`A089726(A062399(n+1))`
-/

namespace A093575.P5495329131758471398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089726 (A062399 (n + 1)).toNat

end

end A093575.P5495329131758471398

/-! ## A093575.P7639785683247440412

`A089726(A087036(n)+1)`
-/

namespace A093575.P7639785683247440412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089726 (A087036 n + 1).toNat

end

end A093575.P7639785683247440412

/-! ## A093575.P10565735984587701896

`A089726(A087051(n)+1)`
-/

namespace A093575.P10565735984587701896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089726 (A087051 n + 1).toNat

end

end A093575.P10565735984587701896

/-! ## A093575.P5375825299188671585

`A089726(A120126(n+1))`
-/

namespace A093575.P5375825299188671585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089726 (A120126 (n + 1)).toNat

end

end A093575.P5375825299188671585

/-! ## A093575.P5028805035960886366

`A089726(A351870(n+1))`
-/

namespace A093575.P5028805035960886366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089726 (A351870 (n + 1)).toNat

end

end A093575.P5028805035960886366

/-!
# A093578: Take n sheets of paper, arrange them into piles, write on each sheet the cardinality (number of sheets) of its pile. Do this again, so each sheet is labeled by an ordered pair of positive integers. How many ways can this be done so that every sheet has a unique label? (Only distinct sets of labels count, not every permutation of the labels or sheets.).

The programs for A093578, there is no canonical definition to state claims against.
-/

/-! ## A093578.P2362400988802115471

`char[A093579(A026741(n))]`
-/

namespace A093578.P2362400988802115471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 (A026741 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093578.P2362400988802115471

/-! ## A093578.P18237191152640511467

`and(A127568(n)², A051340(n))`
-/

namespace A093578.P18237191152640511467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127568 n ^ 2) (A051340 n)

end

end A093578.P18237191152640511467

/-! ## A093578.P16022771399473739730

`and(char[A093579(n)], A127568(n))`
-/

namespace A093578.P16022771399473739730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A127568 n)

end

end A093578.P16022771399473739730

/-! ## A093578.P16419732588537245771

`and(char[A093579(n)], A141045(n))`
-/

namespace A093578.P16419732588537245771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A141045 n)

end

end A093578.P16419732588537245771

/-! ## A093578.P6199179207169110716

`A370317(val(A248754(n+3), 3))`
-/

namespace A093578.P6199179207169110716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370317 (SequenceMachineLib.valuation (A248754 (n + 3)).toNat 3)

end

end A093578.P6199179207169110716

/-!
# A093579: Take m sheets of paper, arrange them into piles, write on each sheet the cardinality (number of sheets) of its pile. Do this again, so each sheet is labeled by an ordered pair of positive integers. An integer m is in this sequence if there is a way to do this such that every sheet has a unique label, i.e., if A093578(m) > 0.

The programs for A093579, there is no canonical definition to state claims against.
-/

/-! ## A093579.P16182111874224501392

`lt[0, A093578(n)]`
-/

namespace A093579.P16182111874224501392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A093579.P16182111874224501392

/-! ## A093579.P4698144784122499692

`eq[1, gcd(A000051(n), A093578(n))]`
-/

namespace A093579.P4698144784122499692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000051 n) (A093578 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093579.P4698144784122499692

/-! ## A093579.P797642387197065210

`record[n%A008458(n*A093578(n))]`
-/

namespace A093579.P797642387197065210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A008458 ((n : ℤ) * A093578 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093579.P797642387197065210

/-! ## A093579.P714462911079386231

`eq[0, n*A000038(n*A093578(n))]`
-/

namespace A093579.P714462911079386231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 ((n : ℤ) * A093578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093579.P714462911079386231

/-! ## A093579.P14817667669780203387

`eq[A000007(n*A093578(n)), A000007(n)]`
-/

namespace A093579.P14817667669780203387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A093578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093579.P14817667669780203387

/-! ## A093579.P5976942488681408297

`eq[A000038(n*A093578(n)), A000038(n)]`
-/

namespace A093579.P5976942488681408297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 ((n : ℤ) * A093578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093579.P5976942488681408297

/-! ## A093579.P2447751063531483038

`eq[A000120(n*A093578(n)), A000120(n)]`
-/

namespace A093579.P2447751063531483038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) * A093578 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093579.P2447751063531483038

/-! ## A093579.P10661364504884458946

`comp[eq[A000038(n), A093578(n)]]`
-/

namespace A093579.P10661364504884458946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A093579.P10661364504884458946

/-! ## A093579.P8822657261774475095

`comp[eq[A000007(n+2), A093578(n)]]`
-/

namespace A093579.P8822657261774475095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093578 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A093579.P8822657261774475095

/-!
# A093581: Numerators of odd moments in the distribution of chord lengths for picked at random on the circumference of a unit circle.

The programs for A093581, the canonical program `A093581.P8575942353686549720` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093581 has offset 1).

The definition of A093581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093581.P8575942353686549720

`4*A061549(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A093581

/-- `4*A061549(n)` -/
def P8575942353686549720.Spec : Prop :=
  ∀ n, P8575942353686549720.a n = A093581 (n + 1)

theorem P8575942353686549720.correct : P8575942353686549720.Spec := by
  intro n
  simp only [A093581, Nat.add_sub_cancel]

end A093581

/-! ## A093581.P601383916048974558

`∏[4*gcd(2*n, 2^n)]`
-/

namespace A093581.P601383916048974558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.gcd (2 * n) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A093581.P601383916048974558

namespace A093581

/-- `∏[4*gcd(2*n, 2^n)]` -/
def P601383916048974558.Spec : Prop :=
  ∀ n, (P601383916048974558.a n : ℤ) = A093581 (n + 1)

end A093581

/-! ## A093581.P8455640526791020790

`2^∑[val(record[lcm(4, n)+4], 2)]`
-/

namespace A093581.P8455640526791020790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093581.P8455640526791020790

namespace A093581

/-- `2^∑[val(record[lcm(4, n)+4], 2)]` -/
def P8455640526791020790.Spec : Prop :=
  ∀ n, (P8455640526791020790.a n : ℤ) = A093581 (n + 1)

end A093581

/-! ## A093581.P6275666250404420073

`2^∑[a(∑[n]%n)+1]` with `a(0)=2`
-/

namespace A093581.P6275666250404420073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093581.P6275666250404420073

namespace A093581

/-- `2^∑[a(∑[n]%n)+1]` -/
def P6275666250404420073.Spec : Prop :=
  ∀ n, (P6275666250404420073.a n : ℤ) = A093581 (n + 1)

end A093581

/-! ## A093581.P4051648311067462004

`record[xor(n, -n)*a(n-1)]` with `a(0)=4`
-/

namespace A093581.P4051648311067462004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  Int.xor (n : ℤ) (-(n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093581.P4051648311067462004

namespace A093581

/-- `record[xor(n, -n)*a(n-1)]` -/
def P4051648311067462004.Spec : Prop :=
  ∀ n, P4051648311067462004.a n = A093581 (n + 1)

end A093581

/-! ## A093581.P10956494339693550839

`2^∑[a(n-gcd(n, ∑[n]))+1]` with `a(0)=2`
-/

namespace A093581.P10956494339693550839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093581.P10956494339693550839

namespace A093581

/-- `2^∑[a(n-gcd(n, ∑[n]))+1]` -/
def P10956494339693550839.Spec : Prop :=
  ∀ n, (P10956494339693550839.a n : ℤ) = A093581 (n + 1)

end A093581

/-! ## A093581.P16661800498383715908

`A101926(Δ[n²])`
-/

namespace A093581.P16661800498383715908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093581.P16661800498383715908

namespace A093581

/-- `A101926(Δ[n²])` -/
def P16661800498383715908.Spec : Prop :=
  ∀ n, P16661800498383715908.a n = A093581 (n + 1)

end A093581

/-! ## A093581.P338624234951636061

`A327493(Δ[n²])`
-/

namespace A093581.P338624234951636061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327493 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A093581.P338624234951636061

namespace A093581

/-- `A327493(Δ[n²])` -/
def P338624234951636061.Spec : Prop :=
  ∀ n, P338624234951636061.a n = A093581 (n + 1)

end A093581

/-! ## A093581.P14199303898638607220

`A086117(4*(n+1))`
-/

namespace A093581.P14199303898638607220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086117 (4 * (n + 1))

end

end A093581.P14199303898638607220

namespace A093581

/-- `A086117(4*(n+1))` -/
def P14199303898638607220.Spec : Prop :=
  ∀ n, P14199303898638607220.a n = A093581 (n + 1)

end A093581

/-! ## A093581.P3905654586188359253

`2*A101926(2*n)`
-/

namespace A093581.P3905654586188359253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101926 (2 * n)

end

end A093581.P3905654586188359253

namespace A093581

/-- `2*A101926(2*n)` -/
def P3905654586188359253.Spec : Prop :=
  ∀ n, P3905654586188359253.a n = A093581 (n + 1)

end A093581

/-!
# A093585: Numerators of even raw moments in the distribution of a triangle picked at random from points on the circumference of a unit circle.

The programs for A093585, there is no canonical definition to state claims against.
-/

/-! ## A093585.P7740650433204785342

`gcd(C(3*n, n)*C(2*n, n), A049606(3*(n+1)))`
-/

namespace A093585.P7740650433204785342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (3 * n) n * Nat.choose (2 * n) n : ℤ) (A049606 (3 * (n + 1)))

end

end A093585.P7740650433204785342

/-! ## A093585.P9753980533887806734

`gcd(A006480(n), A139541(n))`
-/

namespace A093585.P9753980533887806734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006480 n) (A139541 n)

end

end A093585.P9753980533887806734

/-! ## A093585.P9396138328957552511

`A006480(n)/2^A324466(n)`
-/

namespace A093585.P9396138328957552511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (2 : ℚ) ^ (A324466 n : ℤ)

end

end A093585.P9396138328957552511

/-! ## A093585.P17147136672457868710

`A049606(3*n)/A049606(n)^(ceil(atan(n))+1)`
-/

namespace A093585.P17147136672457868710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 (3 * n) : ℚ) / (A049606 n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ + 1 : ℤ)

end

end A093585.P17147136672457868710

/-! ## A093585.P2043077773161316651

`A006480(n)/A000079(A324466(n))`
-/

namespace A093585.P2043077773161316651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 n : ℚ) / (A000079 (A324466 n).toNat : ℚ)

end

end A093585.P2043077773161316651

/-!
# A093586: Denominators of even raw moments in the distribution of a triangle picked at random from points on the circumference of a unit circle.

The programs for A093586, there is no canonical definition to state claims against.
-/

/-! ## A093586.P4173856568162645504

`A000079(A008586(n)-A324466(n))`
-/

namespace A093586.P4173856568162645504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008586 n - A324466 n).toNat

end

end A093586.P4173856568162645504

/-! ## A093586.P14445433317538096380

`A011782(A016813(n)-A324466(n))`
-/

namespace A093586.P14445433317538096380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A016813 n - A324466 n).toNat

end

end A093586.P14445433317538096380

/-! ## A093586.P12963212645619914229

`A131577(A016813(n)-A324466(n))`
-/

namespace A093586.P12963212645619914229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A016813 n - A324466 n).toNat

end

end A093586.P12963212645619914229

/-! ## A093586.P11187187865910144605

`A166444(A016825(n)-A324466(n))`
-/

namespace A093586.P11187187865910144605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A016825 n - A324466 n).toNat

end

end A093586.P11187187865910144605

/-! ## A093586.P16712112243617955738

`A000225(A008586(n)-A324466(n))+1`
-/

namespace A093586.P16712112243617955738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A008586 n - A324466 n).toNat + 1

end

end A093586.P16712112243617955738

/-!
# A093593: n! times sum of Farey fractions of order n.

The programs for A093593, there is no canonical definition to state claims against.
-/

/-! ## A093593.P4091164293900543829

`A005728(n+1)/2*∏[n+1]`
-/

namespace A093593.P4091164293900543829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005728 (n + 1) : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A093593.P4091164293900543829

/-! ## A093593.P11546259366081929849

`A025527(n+1)*A093627(n+1)`
-/

namespace A093593.P11546259366081929849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) * A093627 (n + 1)

end

end A093593.P11546259366081929849

/-! ## A093593.P14337792423352488391

`∏[A048671(n+1)]*A093627(n+1)`
-/

namespace A093593.P14337792423352488391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A093627 (n + 1)

end

end A093593.P14337792423352488391

/-! ## A093593.P1576244182387694183

`(A396586(n+1)-A396587(n+1))/2`
-/

namespace A093593.P1576244182387694183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396586 (n + 1) - A396587 (n + 1) : ℚ) / 2

end

end A093593.P1576244182387694183

/-! ## A093593.P11387666695471209197

`∏[gcd(n+1, A003418(n))]*A093627(n+1)`
-/

namespace A093593.P11387666695471209197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A003418 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A093627 (n + 1)

end

end A093593.P11387666695471209197

/-!
# A093594: Farey-factorial numerators, including duplicates.

The programs for A093594, there is no canonical definition to state claims against.
-/

/-! ## A093594.P17549242390084661707

`A092824(A056847(n)+A000265(A000079(n)))`
-/

namespace A093594.P17549242390084661707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092824 (A056847 n + A000265 (A000079 n).toNat).toNat

end

end A093594.P17549242390084661707

/-! ## A093594.P16646113804206339849

`A092824(A161953(n+1)-A000194(n))`
-/

namespace A093594.P16646113804206339849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092824 (A161953 (n + 1) - A000194 n).toNat

end

end A093594.P16646113804206339849

/-! ## A093594.P15047662185737651270

`A370809(A337611(n+1))`
-/

namespace A093594.P15047662185737651270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (A337611 (n + 1)).toNat

end

end A093594.P15047662185737651270

/-!
# A093596: Denominators of Pi^(2*n)*Sum_{k in A030059} 1/k^(2*n).

The programs for A093596, there is no canonical definition to state claims against.
-/

/-! ## A093596.P10058799906611422047

`A046988(2*(n+1))*A156051(A052893(n))`
-/

namespace A093596.P10058799906611422047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046988 (2 * (n + 1)) * A156051 (A052893 n).toNat

end

end A093596.P10058799906611422047

/-!
# A093597: Numerators of (Sum_{k in A026424} 1/k^(2*n))/Pi^(2*n).

The programs for A093597, there is no canonical definition to state claims against.
-/

/-! ## A093597.P12312572418484167241

`gcd(A133886(n), A348829(A331565(n+1)))`
-/

namespace A093597.P12312572418484167241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133886 n) (A348829 (A331565 (n + 1)).toNat)

end

end A093597.P12312572418484167241

/-! ## A093597.P7445117149998718575

`and(A104176(A348847(n+1)), A348829(n+1))`
-/

namespace A093597.P7445117149998718575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104176 (A348847 (n + 1)).toNat) (A348829 (n + 1))

end

end A093597.P7445117149998718575

/-! ## A093597.P10607133343750439972

`gcd(A126988(A000032(3*n+1)), A348829(n+1))`
-/

namespace A093597.P10607133343750439972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126988 (A000032 (3 * n + 1)).toNat) (A348829 (n + 1))

end

end A093597.P10607133343750439972

/-!
# A093599: Composite numbers having an odd number of prime factors, all of which are distinct.

The programs for A093599, the canonical program `A093599.P4556984833250895547` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093599 has offset 1).

The definition of A093599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093599.P2380462438958158787

`filter[A350352(n+1), A066829(#)]`
-/

namespace A093599.P2380462438958158787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A093599.P2380462438958158787

namespace A093599

/-- `filter[A350352(n+1), A066829(#)]` -/
def P2380462438958158787.Spec : Prop :=
  ∀ n, P2380462438958158787.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P3970094082409064646

`filter[A350352(n+1), A252233(#)]`
-/

namespace A093599.P3970094082409064646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A093599.P3970094082409064646

namespace A093599

/-- `filter[A350352(n+1), A252233(#)]` -/
def P3970094082409064646.Spec : Prop :=
  ∀ n, P3970094082409064646.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P4556984833250895547

`filter[A229972(n+1), A252233(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A093599

/-- `filter[A229972(n+1), A252233(#)]` -/
def P4556984833250895547.Spec : Prop :=
  ∀ n, P4556984833250895547.a n = A093599 (n + 1)

theorem P4556984833250895547.correct : P4556984833250895547.Spec := by
  intro n
  simp only [A093599, Nat.add_sub_cancel]

end A093599

/-! ## A093599.P14605030244640399060

`filter[A229972(n+2), A008966(#)]`
-/

namespace A093599.P14605030244640399060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A093599.P14605030244640399060

namespace A093599

/-- `filter[A229972(n+2), A008966(#)]` -/
def P14605030244640399060.Spec : Prop :=
  ∀ n, P14605030244640399060.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P6928822330438816423

`filter[A229972(n+2), A212793(#)]`
-/

namespace A093599.P6928822330438816423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A093599.P6928822330438816423

namespace A093599

/-- `filter[A229972(n+2), A212793(#)]` -/
def P6928822330438816423.Spec : Prop :=
  ∀ n, P6928822330438816423.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P14621409196395608694

`filter[A229972(n+2), A354819(#)]`
-/

namespace A093599.P14621409196395608694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A093599.P14621409196395608694

namespace A093599

/-- `filter[A229972(n+2), A354819(#)]` -/
def P14621409196395608694.Spec : Prop :=
  ∀ n, P14621409196395608694.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P7931352653359075901

`filter[A109426(n+1), A252233(#)]`
-/

namespace A093599.P7931352653359075901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A093599.P7931352653359075901

namespace A093599

/-- `filter[A109426(n+1), A252233(#)]` -/
def P7931352653359075901.Spec : Prop :=
  ∀ n, P7931352653359075901.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P12668955361531210599

`filter[A030059(n+1), A005171(#)]`
-/

namespace A093599.P12668955361531210599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A093599.P12668955361531210599

namespace A093599

/-- `filter[A030059(n+1), A005171(#)]` -/
def P12668955361531210599.Spec : Prop :=
  ∀ n, P12668955361531210599.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P4670981263712157906

`filter[A030059(n+1), A066247(#)]`
-/

namespace A093599.P4670981263712157906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A093599.P4670981263712157906

namespace A093599

/-- `filter[A030059(n+1), A066247(#)]` -/
def P4670981263712157906.Spec : Prop :=
  ∀ n, P4670981263712157906.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P120535840093971077

`filter[A030059(n+1), A202238(#)]`
-/

namespace A093599.P120535840093971077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A093599.P120535840093971077

namespace A093599

/-- `filter[A030059(n+1), A202238(#)]` -/
def P120535840093971077.Spec : Prop :=
  ∀ n, P120535840093971077.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P16676754124821842256

`filter[A030059(n+1), A354353(#)]`
-/

namespace A093599.P16676754124821842256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A093599.P16676754124821842256

namespace A093599

/-- `filter[A030059(n+1), A354353(#)]` -/
def P16676754124821842256.Spec : Prop :=
  ∀ n, P16676754124821842256.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P17046511160279228020

`filter[A030059(n+1), A354819(#)]`
-/

namespace A093599.P17046511160279228020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A093599.P17046511160279228020

namespace A093599

/-- `filter[A030059(n+1), A354819(#)]` -/
def P17046511160279228020.Spec : Prop :=
  ∀ n, P17046511160279228020.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P9911419439449609852

`∩[A229972(n+1), A030059(n+1)]`
-/

namespace A093599.P9911419439449609852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093599.P9911419439449609852

namespace A093599

/-- `∩[A229972(n+1), A030059(n+1)]` -/
def P9911419439449609852.Spec : Prop :=
  ∀ n, (P9911419439449609852.a n : ℤ) = A093599 (n + 1)

end A093599

/-! ## A093599.P18436899006484933513

`filter[A046339(n+1), A008966(#)]`
-/

namespace A093599.P18436899006484933513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A093599.P18436899006484933513

namespace A093599

/-- `filter[A046339(n+1), A008966(#)]` -/
def P18436899006484933513.Spec : Prop :=
  ∀ n, P18436899006484933513.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P11163425392746648434

`filter[A046339(n+1), A252233(#)]`
-/

namespace A093599.P11163425392746648434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A093599.P11163425392746648434

namespace A093599

/-- `filter[A046339(n+1), A252233(#)]` -/
def P11163425392746648434.Spec : Prop :=
  ∀ n, P11163425392746648434.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P10077096920443546824

`filter[A046339(n+1), A354353(#)]`
-/

namespace A093599.P10077096920443546824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A093599.P10077096920443546824

namespace A093599

/-- `filter[A046339(n+1), A354353(#)]` -/
def P10077096920443546824.Spec : Prop :=
  ∀ n, P10077096920443546824.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P18217412353908363988

`filter[A046339(n+1), A354819(#)]`
-/

namespace A093599.P18217412353908363988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A093599.P18217412353908363988

namespace A093599

/-- `filter[A046339(n+1), A354819(#)]` -/
def P18217412353908363988.Spec : Prop :=
  ∀ n, P18217412353908363988.a n = A093599 (n + 1)

end A093599

/-! ## A093599.P12168677773503493112

`∩[A005117(n+1), A046339(n+1)]`
-/

namespace A093599.P12168677773503493112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093599.P12168677773503493112

namespace A093599

/-- `∩[A005117(n+1), A046339(n+1)]` -/
def P12168677773503493112.Spec : Prop :=
  ∀ n, (P12168677773503493112.a n : ℤ) = A093599 (n + 1)

end A093599

/-! ## A093599.P10969800512263491018

`∩[A030059(n+1), A046339(n+1)]`
-/

namespace A093599.P10969800512263491018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093599.P10969800512263491018

namespace A093599

/-- `∩[A030059(n+1), A046339(n+1)]` -/
def P10969800512263491018.Spec : Prop :=
  ∀ n, (P10969800512263491018.a n : ℤ) = A093599 (n + 1)

end A093599

/-! ## A093599.P6546243652799490127

`filter[A048945(n+1), A252233(#)]`
-/

namespace A093599.P6546243652799490127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A093599.P6546243652799490127

namespace A093599

/-- `filter[A048945(n+1), A252233(#)]` -/
def P6546243652799490127.Spec : Prop :=
  ∀ n, P6546243652799490127.a n = A093599 (n + 1)

end A093599

