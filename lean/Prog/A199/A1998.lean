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
import Seq.B000.C022
import Seq.B000.C023
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199800: Number of ways to write n = p+q with p, 6q-1 and 6q+1 all prime.

The programs for A199800, there is no canonical definition to state claims against.
-/

/-! ## A199800.P12864206159865352093

`A102669(A002998(n)*A098736(n))`
-/

namespace A199800.P12864206159865352093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A002998 n * A098736 n).toNat

end

end A199800.P12864206159865352093

/-!
# A199801: Primitive elements of A060355: n such that n and n+1 are powerful but n is not of the form 4m(m+1) where m and m+1 are powerful.

The programs for A199801, there is no canonical definition to state claims against.
-/

/-! ## A199801.P17133434682441995768

`A060355(∑[gcd(2^n, A143018(3*n+2))])`
-/

namespace A199801.P17133434682441995768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ n : ℤ) (A143018 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199801.P17133434682441995768

/-! ## A199801.P8609735663367215263

`A060355(A285888(n+1)+1)`
-/

namespace A199801.P8609735663367215263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060355 (A285888 (n + 1) + 1).toNat

end

end A199801.P8609735663367215263

/-!
# A199802: G.f.: 1/(1-2*x+2*x^2-x^3+x^4).

The programs for A199802, the canonical program `A199802.P14135359900392880042` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199802 has offset 0).

The definition of A199802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199802.P2747905141853639291

`ogf(1/(1-2x+2x^2-x^3+x^4))`
-/

namespace A199802.P2747905141853639291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 2, -1, 1] n

end

end A199802.P2747905141853639291

namespace A199802

/-- `ogf(1/(1-2x+2x^2-x^3+x^4))` -/
def P2747905141853639291.Spec : Prop :=
  ∀ n, P2747905141853639291.a n = A199802 n

end A199802

/-! ## A199802.P14135359900392880042

`a(n-1)-(a(n-3)+a(n-5))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1, a(4)=-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199802

/-- `a(n-1)-(a(n-3)+a(n-5))` -/
def P14135359900392880042.Spec : Prop :=
  ∀ n, P14135359900392880042.a n = A199802 n

theorem P14135359900392880042.correct : P14135359900392880042.Spec := by
  intro n
  simp only [A199802]

end A199802

/-! ## A199802.P11762121084840515086

`a(n-1)-a(n-3)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=1, a(4)=-1`
-/

namespace A199802.P11762121084840515086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 1, -1] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 5)

end

end A199802.P11762121084840515086

namespace A199802

/-- `a(n-1)-a(n-3)-a(n-5)` -/
def P11762121084840515086.Spec : Prop :=
  ∀ n, P11762121084840515086.a n = A199802 n

theorem P11762121084840515086.correct : P11762121084840515086.Spec := by
  intro n
  simp only [A199802, Nat.add_sub_cancel, A199802.P11762121084840515086.a, A199802.P14135359900392880042.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199802

/-! ## A199802.P817071454081004995

`∑[A100134(n)]-A101551(n+2)`
-/

namespace A199802.P817071454081004995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101551 (n + 2)

end

end A199802.P817071454081004995

namespace A199802

/-- `∑[A100134(n)]-A101551(n+2)` -/
def P817071454081004995.Spec : Prop :=
  ∀ n, P817071454081004995.a n = A199802 n

end A199802

/-! ## A199802.P2846981435632782500

`A102516(n+1)-A101551(n+2)`
-/

namespace A199802.P2846981435632782500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102516 (n + 1) - A101551 (n + 2)

end

end A199802.P2846981435632782500

namespace A199802

/-- `A102516(n+1)-A101551(n+2)` -/
def P2846981435632782500.Spec : Prop :=
  ∀ n, P2846981435632782500.a n = A199802 n

end A199802

/-! ## A199802.P10856264021187357440

`∑[A100134(n)]-Δ[A100134(n+3)]`
-/

namespace A199802.P10856264021187357440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A199802.P10856264021187357440

namespace A199802

/-- `∑[A100134(n)]-Δ[A100134(n+3)]` -/
def P10856264021187357440.Spec : Prop :=
  ∀ n, P10856264021187357440.a n = A199802 n

end A199802

/-! ## A199802.P2379606411929539994

`Δ[A101551(n+3)]-A101551(n+2)`
-/

namespace A199802.P2379606411929539994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A101551 (n + 2)

end

end A199802.P2379606411929539994

namespace A199802

/-- `Δ[A101551(n+3)]-A101551(n+2)` -/
def P2379606411929539994.Spec : Prop :=
  ∀ n, P2379606411929539994.a n = A199802 n

end A199802

/-! ## A199802.P16218866688442758209

`A101551(n+4)-(A101551(n+2)+A101551(n+3))`
-/

namespace A199802.P16218866688442758209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101551 (n + 4) - (A101551 (n + 2) + A101551 (n + 3))

end

end A199802.P16218866688442758209

namespace A199802

/-- `A101551(n+4)-(A101551(n+2)+A101551(n+3))` -/
def P16218866688442758209.Spec : Prop :=
  ∀ n, P16218866688442758209.a n = A199802 n

end A199802

/-! ## A199802.P9952241423500743456

`Δ[Δ[A100134(n+4)]-A100134(n+3)]`
-/

namespace A199802.P9952241423500743456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100134 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A100134 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199802.P9952241423500743456

namespace A199802

/-- `Δ[Δ[A100134(n+4)]-A100134(n+3)]` -/
def P9952241423500743456.Spec : Prop :=
  ∀ n, P9952241423500743456.a n = A199802 n

end A199802

/-!
# A199803: G.f.: 1/(1 + x - x^2 - x^3 + x^4).

The programs for A199803, the canonical program `A199803.P16637969931051842274` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199803 has offset 0).

The definition of A199803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199803.P9263781105588938971

`ogf(1/(1+x-x^2-x^3+x^4))`
-/

namespace A199803.P9263781105588938971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, -1, -1, 1] n

end

end A199803.P9263781105588938971

namespace A199803

/-- `ogf(1/(1+x-x^2-x^3+x^4))` -/
def P9263781105588938971.Spec : Prop :=
  ∀ n, P9263781105588938971.a n = A199803 n

end A199803

/-! ## A199803.P16637969931051842274

`∑[(-1)^n*∑[A101496(n)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A199803

/-- `∑[(-1)^n*∑[A101496(n)]]` -/
def P16637969931051842274.Spec : Prop :=
  ∀ n, P16637969931051842274.a n = A199803 n

theorem P16637969931051842274.correct : P16637969931051842274.Spec := by
  intro n
  simp only [A199803]

end A199803

/-! ## A199803.P15227704908832569586

`∑[∑[A101496(n)]*A033999(n)]`
-/

namespace A199803.P15227704908832569586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199803.P15227704908832569586

namespace A199803

/-- `∑[∑[A101496(n)]*A033999(n)]` -/
def P15227704908832569586.Spec : Prop :=
  ∀ n, P15227704908832569586.a n = A199803 n

theorem P15227704908832569586.correct : P15227704908832569586.Spec := by
  intro n
  simp only [A199803, Nat.add_sub_cancel, A199803.P15227704908832569586.f2, A199803.P15227704908832569586.f1, A199803.P15227704908832569586.a, A199803.P16637969931051842274.f2, A199803.P16637969931051842274.f1, A199803.P16637969931051842274.a, A033999, A033999.P17703899380244199787.a, A101496, A101496.P8409245159284991448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199803

/-! ## A199803.P1680505016180588558

`∑[∑[A101496(n)]/A033999(n+2)]`
-/

namespace A199803.P1680505016180588558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A033999 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199803.P1680505016180588558

namespace A199803

/-- `∑[∑[A101496(n)]/A033999(n+2)]` -/
def P1680505016180588558.Spec : Prop :=
  ∀ n, P1680505016180588558.a n = (A199803 n : ℚ)

end A199803

/-! ## A199803.P4293234755471842129

`∑[∑[A101496(n)]*A087960(2*n)]`
-/

namespace A199803.P4293234755471842129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A087960 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199803.P4293234755471842129

namespace A199803

/-- `∑[∑[A101496(n)]*A087960(2*n)]` -/
def P4293234755471842129.Spec : Prop :=
  ∀ n, P4293234755471842129.a n = A199803 n

end A199803

/-! ## A199803.P18309378181804265278

`Δ[A291217(n+1)]-A291217(n)`
-/

namespace A199803.P18309378181804265278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A291217 n

end

end A199803.P18309378181804265278

namespace A199803

/-- `Δ[A291217(n+1)]-A291217(n)` -/
def P18309378181804265278.Spec : Prop :=
  ∀ n, P18309378181804265278.a n = A199803 n

end A199803

/-! ## A199803.P12868621974501439938

`A291217(n+2)-(A291217(n+1)+A291217(n))`
-/

namespace A199803.P12868621974501439938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291217 (n + 2) - (A291217 (n + 1) + A291217 n)

end

end A199803.P12868621974501439938

namespace A199803

/-- `A291217(n+2)-(A291217(n+1)+A291217(n))` -/
def P12868621974501439938.Spec : Prop :=
  ∀ n, P12868621974501439938.a n = A199803 n

end A199803

/-!
# A199804: G.f.: 1/(1+x+x^3).

The programs for A199804, the canonical program `A199804.P15884299299135542991` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199804 has offset 0).

The definition of A199804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199804.P15884299299135542991

`(-1)^n*A000930(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A199804

/-- `(-1)^n*A000930(n)` -/
def P15884299299135542991.Spec : Prop :=
  ∀ n, P15884299299135542991.a n = A199804 n

theorem P15884299299135542991.correct : P15884299299135542991.Spec := by
  intro n
  simp only [A199804]

end A199804

/-! ## A199804.P6128248556851683159

`ogf(1/(1+x+x^3))`
-/

namespace A199804.P6128248556851683159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 0, 1] n

end

end A199804.P6128248556851683159

namespace A199804

/-- `ogf(1/(1+x+x^3))` -/
def P6128248556851683159.Spec : Prop :=
  ∀ n, P6128248556851683159.a n = A199804 n

end A199804

/-! ## A199804.P9097667639195796529

`Δ[1-(a(n-3)+a(n-1))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A199804.P9097667639195796529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - (f1 (n - 3) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199804.P9097667639195796529

namespace A199804

/-- `Δ[1-(a(n-3)+a(n-1))]` -/
def P9097667639195796529.Spec : Prop :=
  ∀ n, P9097667639195796529.a n = A199804 n

end A199804

/-! ## A199804.P1719727506572444606

`Δ[1-a(n-1)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A199804.P1719727506572444606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199804.P1719727506572444606

namespace A199804

/-- `Δ[1-a(n-1)-a(n-3)]` -/
def P1719727506572444606.Spec : Prop :=
  ∀ n, P1719727506572444606.a n = A199804 n

end A199804

/-! ## A199804.P12888633455611644043

`a(n-2)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-2`
-/

namespace A199804.P12888633455611644043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -2] fun n a =>
  a (n - 2) + (a (n - 4) - a (n - 3))

end

end A199804.P12888633455611644043

namespace A199804

/-- `a(n-2)+a(n-4)-a(n-3)` -/
def P12888633455611644043.Spec : Prop :=
  ∀ n, P12888633455611644043.a n = A199804 n

end A199804

/-! ## A199804.P16592143126668881260

`floor(a(n-2)-(a(n-3)-a(n-4)))` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A199804.P16592143126668881260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, -2] fun n a =>
  a (n - 2) - (a (n - 3) - a (n - 4))

end

end A199804.P16592143126668881260

namespace A199804

/-- `floor(a(n-2)-(a(n-3)-a(n-4)))` -/
def P16592143126668881260.Spec : Prop :=
  ∀ n, P16592143126668881260.a n = A199804 n

end A199804

/-! ## A199804.P13395526553560185475

`A000930(n)/(-1)^n`
-/

namespace A199804.P13395526553560185475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / ((-1) ^ n : ℚ)

end

end A199804.P13395526553560185475

namespace A199804

/-- `A000930(n)/(-1)^n` -/
def P13395526553560185475.Spec : Prop :=
  ∀ n, P13395526553560185475.a n = (A199804 n : ℚ)

end A199804

/-! ## A199804.P7757107508002628042

`A000930(n)*A033999(n)`
-/

namespace A199804.P7757107508002628042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A033999 n

end

end A199804.P7757107508002628042

namespace A199804

/-- `A000930(n)*A033999(n)` -/
def P7757107508002628042.Spec : Prop :=
  ∀ n, P7757107508002628042.a n = A199804 n

theorem P7757107508002628042.correct : P7757107508002628042.Spec := by
  intro n
  simp only [A199804, Nat.add_sub_cancel, A199804.P7757107508002628042.a, A199804.P15884299299135542991.a, A000930, A000930.P1809025983395262284.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199804

/-! ## A199804.P17342349765696998291

`A000930(n)*A056594(2*n)`
-/

namespace A199804.P17342349765696998291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A056594 (2 * n)

end

end A199804.P17342349765696998291

namespace A199804

/-- `A000930(n)*A056594(2*n)` -/
def P17342349765696998291.Spec : Prop :=
  ∀ n, P17342349765696998291.a n = A199804 n

end A199804

/-! ## A199804.P5274978807910624007

`A033999(n)*A108104(2*n)`
-/

namespace A199804.P5274978807910624007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A108104 (2 * n)

end

end A199804.P5274978807910624007

namespace A199804

/-- `A033999(n)*A108104(2*n)` -/
def P5274978807910624007.Spec : Prop :=
  ∀ n, P5274978807910624007.a n = A199804 n

end A199804

/-! ## A199804.P18241700068025550230

`∑[A078012(n)]*A057077(2*n)`
-/

namespace A199804.P18241700068025550230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A199804.P18241700068025550230

namespace A199804

/-- `∑[A078012(n)]*A057077(2*n)` -/
def P18241700068025550230.Spec : Prop :=
  ∀ n, P18241700068025550230.a n = A199804 n

end A199804

/-! ## A199804.P10317412341177750413

`∑[A078012(n)]/A057077(A005408(n))`
-/

namespace A199804.P10317412341177750413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A199804.P10317412341177750413

namespace A199804

/-- `∑[A078012(n)]/A057077(A005408(n))` -/
def P10317412341177750413.Spec : Prop :=
  ∀ n, P10317412341177750413.a n = (A199804 n : ℚ)

end A199804

/-! ## A199804.P6073225539693685223

`A000930(n)*A087204(A000027(3*n+1))`
-/

namespace A199804.P6073225539693685223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A087204 (A000027 (3 * n + 1)).toNat

end

end A199804.P6073225539693685223

namespace A199804

/-- `A000930(n)*A087204(A000027(3*n+1))` -/
def P6073225539693685223.Spec : Prop :=
  ∀ n, P6073225539693685223.a n = A199804 n

end A199804

/-! ## A199804.P6737517444126216880

`a(n-1)-2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A199804.P6737517444126216880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 1) - 2 * a (n - 1) - a (n - 3)

end

end A199804.P6737517444126216880

namespace A199804

/-- `a(n-1)-2*a(n-1)-a(n-3)` -/
def P6737517444126216880.Spec : Prop :=
  ∀ n, P6737517444126216880.a n = A199804 n

end A199804

/-! ## A199804.P13160219473346981374

`A000930(n)/A077941(n)*A077990(n)`
-/

namespace A199804.P13160219473346981374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / (A077941 n : ℚ) * (A077990 n : ℚ)

end

end A199804.P13160219473346981374

namespace A199804

/-- `A000930(n)/A077941(n)*A077990(n)` -/
def P13160219473346981374.Spec : Prop :=
  ∀ n, P13160219473346981374.a n = (A199804 n : ℚ)

end A199804

/-! ## A199804.P2388366612714800424

`(-1)^n*∑{#}[floor((n+2)/2)-1, C(n+2-2*(#+1), #)]`
-/

namespace A199804.P2388366612714800424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n + 2 : ℤ) - (2 * (k + 1) : ℤ)).toNat k : ℕ) : ℤ)

end

end A199804.P2388366612714800424

namespace A199804

/-- `(-1)^n*∑{#}[floor((n+2)/2)-1, C(n+2-2*(#+1), #)]` -/
def P2388366612714800424.Spec : Prop :=
  ∀ n, P2388366612714800424.a n = A199804 n

end A199804

/-! ## A199804.P13111661496530213628

`A000930(n)/A077999(n)*A110524(n)`
-/

namespace A199804.P13111661496530213628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / (A077999 n : ℚ) * (A110524 n : ℚ)

end

end A199804.P13111661496530213628

namespace A199804

/-- `A000930(n)/A077999(n)*A110524(n)` -/
def P13111661496530213628.Spec : Prop :=
  ∀ n, P13111661496530213628.a n = (A199804 n : ℚ)

end A199804

/-! ## A199804.P12163484151918777140

`A000930(n)/A077938(n)*A077987(n)`
-/

namespace A199804.P12163484151918777140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / (A077938 n : ℚ) * (A077987 n : ℚ)

end

end A199804.P12163484151918777140

namespace A199804

/-- `A000930(n)/A077938(n)*A077987(n)` -/
def P12163484151918777140.Spec : Prop :=
  ∀ n, P12163484151918777140.a n = (A199804 n : ℚ)

end A199804

/-! ## A199804.P5674591040710295585

`A000930(n)*A141015(n+1)/A078039(n)`
-/

namespace A199804.P5674591040710295585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n * A141015 (n + 1) : ℚ) / (A078039 n : ℚ)

end

end A199804.P5674591040710295585

namespace A199804

/-- `A000930(n)*A141015(n+1)/A078039(n)` -/
def P5674591040710295585.Spec : Prop :=
  ∀ n, P5674591040710295585.a n = (A199804 n : ℚ)

end A199804

/-! ## A199804.P11110264814409025058

`A000930(n)*A141683(n+2)/A078039(n)`
-/

namespace A199804.P11110264814409025058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n * A141683 (n + 2) : ℚ) / (A078039 n : ℚ)

end

end A199804.P11110264814409025058

namespace A199804

/-- `A000930(n)*A141683(n+2)/A078039(n)` -/
def P11110264814409025058.Spec : Prop :=
  ∀ n, P11110264814409025058.a n = (A199804 n : ℚ)

end A199804

/-!
# A199805: G.f.: 1/(1 + x + 5*x^2 - x^3 + x^4).

The programs for A199805, the canonical program `A199805.P3565271180669152033` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199805 has offset 0).

The definition of A199805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199805.P1177313352907414260

`ogf(1/(1+x+5x^2-x^3+x^4))`
-/

namespace A199805.P1177313352907414260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, 5, -1, 1] n

end

end A199805.P1177313352907414260

namespace A199805

/-- `ogf(1/(1+x+5x^2-x^3+x^4))` -/
def P1177313352907414260.Spec : Prop :=
  ∀ n, P1177313352907414260.a n = A199805 n

end A199805

/-! ## A199805.P3565271180669152033

`(A199929(n)+A199927(n))/3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A199805

/-- `(A199929(n)+A199927(n))/3` -/
def P3565271180669152033.Spec : Prop :=
  ∀ n, P3565271180669152033.a n = (A199805 n : ℚ)

end A199805

/-! ## A199805.P12567629696239584668

`(A199928(n)-A199931(n))/3`
-/

namespace A199805.P12567629696239584668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199928 n - A199931 n : ℚ) / 3

end

end A199805.P12567629696239584668

namespace A199805

/-- `(A199928(n)-A199931(n))/3` -/
def P12567629696239584668.Spec : Prop :=
  ∀ n, P12567629696239584668.a n = (A199805 n : ℚ)

end A199805

/-! ## A199805.P11172998185344075435

`(A199931(n+1)+A199927(n+1))/3`
-/

namespace A199805.P11172998185344075435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199931 (n + 1) + A199927 (n + 1) : ℚ) / 3

end

end A199805.P11172998185344075435

namespace A199805

/-- `(A199931(n+1)+A199927(n+1))/3` -/
def P11172998185344075435.Spec : Prop :=
  ∀ n, P11172998185344075435.a n = (A199805 n : ℚ)

end A199805

/-! ## A199805.P8448697127595986750

`(A199928(n)-A199803(3*n+1))/3`
-/

namespace A199805.P8448697127595986750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199928 n - A199803 (3 * n + 1) : ℚ) / 3

end

end A199805.P8448697127595986750

namespace A199805

/-- `(A199928(n)-A199803(3*n+1))/3` -/
def P8448697127595986750.Spec : Prop :=
  ∀ n, P8448697127595986750.a n = (A199805 n : ℚ)

end A199805

/-! ## A199805.P2982552504337654374

`(A199928(n)-(A199930(n)-A199929(n)))/3`
-/

namespace A199805.P2982552504337654374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199928 n - (A199930 n - A199929 n) : ℚ) / 3

end

end A199805.P2982552504337654374

namespace A199805

/-- `(A199928(n)-(A199930(n)-A199929(n)))/3` -/
def P2982552504337654374.Spec : Prop :=
  ∀ n, P2982552504337654374.a n = (A199805 n : ℚ)

end A199805

/-! ## A199805.P9845104470381210757

`(A199928(n)-(A199933(n)-A199928(n)))/3`
-/

namespace A199805.P9845104470381210757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199928 n - (A199933 n - A199928 n) : ℚ) / 3

end

end A199805.P9845104470381210757

namespace A199805

/-- `(A199928(n)-(A199933(n)-A199928(n)))/3` -/
def P9845104470381210757.Spec : Prop :=
  ∀ n, P9845104470381210757.a n = (A199805 n : ℚ)

end A199805

/-!
# A199806: Alternating LCM-sum: a(n) = Sum_{k=1..n} (-1)^(k-1)*lcm(k,n).

The programs for A199806, the canonical program `A199806.P5988020848104587907` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199806 has offset 1).

The definition of A199806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*lcm(#+1, n+1)]` (program `A199806.P5988020848104587907`, by `A199806.P5988020848104587907.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199806.P5988020848104587907

`∑{#}[n, (-1)^#*lcm(#+1, n+1)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199806

/-- `∑{#}[n, (-1)^#*lcm(#+1, n+1)]` -/
def P5988020848104587907.Spec : Prop :=
  ∀ n, P5988020848104587907.a n = A199806 (n + 1)

theorem P5988020848104587907.correct : P5988020848104587907.Spec := by
  intro n
  simp only [A199806, Nat.add_sub_cancel]

end A199806

/-!
# A199807: Sorted number of vertices of distinct solutions in the mix of 2 or 3 regular convex 4-polytopes.

The programs for A199807, there is no canonical definition to state claims against.
-/

/-! ## A199807.P9902717433693208323

`8*A018350(A242994(n+1))`
-/

namespace A199807.P9902717433693208323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A018350 (A242994 (n + 1)).toNat

end

end A199807.P9902717433693208323

/-!
# A199812: Number of distinct values taken by w^w^...^w (with n w's and parentheses inserted in all possible ways) where w is the first transfinite ordinal omega.

The programs for A199812, there is no canonical definition to state claims against.
-/

/-! ## A199812.P11281864539267917990

`A255170(comp[35*n])`
-/

namespace A199812.P11281864539267917990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A199812.P11281864539267917990

/-! ## A199812.P1938755543193904593

`A255170(n+1)+char[21]`
-/

namespace A199812.P1938755543193904593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255170 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A199812.P1938755543193904593

/-! ## A199812.P2476444564500273231

`A087803(n+1)-char[21]-n`
-/

namespace A199812.P2476444564500273231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087803 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)

end

end A199812.P2476444564500273231

/-! ## A199812.P8948643256513207584

`∑[A000081(n+1)-floor(n^(1/5))]`
-/

namespace A199812.P8948643256513207584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199812.P8948643256513207584

/-! ## A199812.P12696141272083686913

`A256974(n)+A255170(n+1)`
-/

namespace A199812.P12696141272083686913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A255170 (n + 1)

end

end A199812.P12696141272083686913

/-!
# A199816: G.f.: exp( Sum_{n>=1} A000984(n)*A000172(n)/4 * x^n/n ), which involves central binomial coefficients (A000984) and Franel numbers (A000172).

The programs for A199816, there is no canonical definition to state claims against.
-/

/-! ## A199816.P3799669473827789312

`A398194(A288763(∑[n]))`
-/

namespace A199816.P3799669473827789312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398194 (A288763 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A199816.P3799669473827789312

/-!
# A199818: Odd numbers producing 20 even numbers in the Collatz iteration.

The programs for A199818, there is no canonical definition to state claims against.
-/

/-! ## A199818.P9208546103496505312

`A005408(eq[20, A166549(n+1)])`
-/

namespace A199818.P9208546103496505312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199818.P9208546103496505312

/-! ## A199818.P15974684600706592165

`A005408(eq[20, A064433(2*(n+1))-1])`
-/

namespace A199818.P15974684600706592165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199818.P15974684600706592165

/-! ## A199818.P5042757632551117964

`A005408(eq[20, A006577(2*n+1)-A075680(n+1)])`
-/

namespace A199818.P5042757632551117964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * n + 1) - A075680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199818.P5042757632551117964

/-! ## A199818.P15390161491552630269

`A005408(eq[20, A220071(2*n+1)+A006667(2*n+1)])`
-/

namespace A199818.P15390161491552630269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220071 (2 * n + 1) + A006667 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199818.P15390161491552630269

/-! ## A199818.P4693747286786941849

`A005408(eq[20, A006577(2*n+1)-A006667(2*n+1)])`
-/

namespace A199818.P4693747286786941849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * n + 1) - A006667 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199818.P4693747286786941849

/-!
# A199819: Primes of the form 10^k-9^k.

The programs for A199819, there is no canonical definition to state claims against.
-/

/-! ## A199819.P6572859026890019876

`A016189(A062576(n+1))`
-/

namespace A199819.P6572859026890019876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016189 (A062576 (n + 1)).toNat

end

end A199819.P6572859026890019876

/-!
# A199825: Number of -1..1 arrays x(0..n+1) of n+2 elements with zero sum and no two neighbors summing to zero.

The programs for A199825, the canonical program `A199825.P13235383472481013353` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199825 has offset 1).

The definition of A199825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199825.P10689115380646373992

`A199697(n+2)-a(n-1)` with `a(0)=2`
-/

namespace A199825.P10689115380646373992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A199697 (n + 2) - a (n - 1)

end

end A199825.P10689115380646373992

namespace A199825

/-- `A199697(n+2)-a(n-1)` -/
def P10689115380646373992.Spec : Prop :=
  ∀ n, P10689115380646373992.a n = A199825 (n + 1)

end A199825

/-! ## A199825.P13235383472481013353

`A217615(n+3)-A217615(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A199825

/-- `A217615(n+3)-A217615(n+1)` -/
def P13235383472481013353.Spec : Prop :=
  ∀ n, P13235383472481013353.a n = A199825 (n + 1)

theorem P13235383472481013353.correct : P13235383472481013353.Spec := by
  intro n
  simp only [A199825, Nat.add_sub_cancel]

end A199825

/-! ## A199825.P16195982995524145263

`A360309(n+2)+A360309(n+3)`
-/

namespace A199825.P16195982995524145263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360309 (n + 2) + A360309 (n + 3)

end

end A199825.P16195982995524145263

namespace A199825

/-- `A360309(n+2)+A360309(n+3)` -/
def P16195982995524145263.Spec : Prop :=
  ∀ n, P16195982995524145263.a n = A199825 (n + 1)

end A199825

/-! ## A199825.P8902245024037351218

`Δ[A217615(n+1)+A217615(n+2)]`
-/

namespace A199825.P8902245024037351218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217615 (n + 1) + A217615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199825.P8902245024037351218

namespace A199825

/-- `Δ[A217615(n+1)+A217615(n+2)]` -/
def P8902245024037351218.Spec : Prop :=
  ∀ n, P8902245024037351218.a n = A199825 (n + 1)

theorem P8902245024037351218.correct : P8902245024037351218.Spec := by
  intro n
  simp only [A199825, Nat.add_sub_cancel, A199825.P8902245024037351218.f1, A199825.P8902245024037351218.a, A199825.P13235383472481013353.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A199825

/-! ## A199825.P12329152808880364643

`A199832(∑[n+1])`
-/

namespace A199825.P12329152808880364643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199825.P12329152808880364643

namespace A199825

/-- `A199832(∑[n+1])` -/
def P12329152808880364643.Spec : Prop :=
  ∀ n, P12329152808880364643.a n = A199825 (n + 1)

end A199825

/-!
# A199826: Number of -2..2 arrays x(0..n+1) of n+2 elements with zero sum and no two neighbors summing to zero.

The programs for A199826, there is no canonical definition to state claims against.
-/

/-! ## A199826.P775526977224722593

`A199832(∑[n+2])`
-/

namespace A199826.P775526977224722593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199826.P775526977224722593

/-! ## A199826.P7945910879911669569

`record[A199832(A000096(A323889(n)))]`
-/

namespace A199826.P7945910879911669569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000096 (A323889 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199826.P7945910879911669569

/-! ## A199826.P10266065918260173828

`record[A199832(A000096(A037125(n+1)))]`
-/

namespace A199826.P10266065918260173828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000096 (A037125 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199826.P10266065918260173828

/-! ## A199826.P16985419928302292051

`record[A199832(A000096(A345994(n+1)))]`
-/

namespace A199826.P16985419928302292051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000096 (A345994 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199826.P16985419928302292051

/-! ## A199826.P5534558219641262365

`record[A199832(A000096(A348330(n+1)))]`
-/

namespace A199826.P5534558219641262365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000096 (A348330 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199826.P5534558219641262365

/-!
# A199827: Number of -3..3 arrays x(0..n+1) of n+2 elements with zero sum and no two neighbors summing to zero.

The programs for A199827, there is no canonical definition to state claims against.
-/

/-! ## A199827.P13329957835100310773

`A199832(∑[n+3]+1)`
-/

namespace A199827.P13329957835100310773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199827.P13329957835100310773

/-! ## A199827.P11412870791567716134

`lcm(2, A199832(Δ[A008778(n)]))`
-/

namespace A199827.P11412870791567716134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A199832 (f1 (n + 1) - f1 n).toNat)

end

end A199827.P11412870791567716134

/-! ## A199827.P11812680541192130514

`A199832(A034856(n+2))%A001653(n+3)`
-/

namespace A199827.P11812680541192130514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199832 (A034856 (n + 2)).toNat) (A001653 (n + 3))

end

end A199827.P11812680541192130514

/-! ## A199827.P11486275091357731807

`A199832(A034856(n+2))+A008683(A017569(n))`
-/

namespace A199827.P11486275091357731807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A034856 (n + 2)).toNat + A008683 (A017569 n).toNat

end

end A199827.P11486275091357731807

/-!
# A199828: Number of -4..4 arrays x(0..n+1) of n+2 elements with zero sum and no two neighbors summing to zero.

The programs for A199828, there is no canonical definition to state claims against.
-/

/-! ## A199828.P1639282191487456744

`A199832(A055998(n+2))`
-/

namespace A199828.P1639282191487456744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A055998 (n + 2)).toNat

end

end A199828.P1639282191487456744

/-! ## A199828.P7605455620588902585

`A199832(eq[3, A193592(n)])`
-/

namespace A199828.P7605455620588902585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199828.P7605455620588902585

/-! ## A199828.P12648824312407419410

`A199832(A052905(n+1)+2)`
-/

namespace A199828.P12648824312407419410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A052905 (n + 1) + 2).toNat

end

end A199828.P12648824312407419410

/-! ## A199828.P9519520282872084804

`A199832(A155212(n+1)-n)`
-/

namespace A199828.P9519520282872084804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A155212 (n + 1) - (n : ℤ)).toNat

end

end A199828.P9519520282872084804

/-! ## A199828.P334604153364440655

`A199832(Δ[A008778(n+1)]-1)`
-/

namespace A199828.P334604153364440655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (f1 (n + 1) - f1 n - 1).toNat

end

end A199828.P334604153364440655

/-!
# A199829: Number of -5..5 arrays x(0..n+1) of n+2 elements with zero sum and no two neighbors summing to zero.

The programs for A199829, there is no canonical definition to state claims against.
-/

/-! ## A199829.P17081625919407819078

`A199832(A046691(n+3))`
-/

namespace A199829.P17081625919407819078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A046691 (n + 3)).toNat

end

end A199829.P17081625919407819078

/-! ## A199829.P9773586247952539280

`A199832(eq[4, A193592(n)])`
-/

namespace A199829.P9773586247952539280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199829.P9773586247952539280

/-! ## A199829.P7621300876075298623

`A199832(Δ[A023545(n+1)])`
-/

namespace A199829.P7621300876075298623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (f1 (n + 1) - f1 n).toNat

end

end A199829.P7621300876075298623

/-! ## A199829.P4990495818438683400

`A199832(A000217(n+5)-4)`
-/

namespace A199829.P4990495818438683400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000217 (n + 5) - 4).toNat

end

end A199829.P4990495818438683400

/-! ## A199829.P9792399989117960644

`A199832(A000124(n+5)-5)`
-/

namespace A199829.P9792399989117960644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000124 (n + 5) - 5).toNat

end

end A199829.P9792399989117960644

/-!
# A199830: Number of -6..6 arrays x(0..n+1) of n+2 elements with zero sum and no two neighbors summing to zero.

The programs for A199830, there is no canonical definition to state claims against.
-/

/-! ## A199830.P6214291555408911997

`A199832(A052905(n+3))`
-/

namespace A199830.P6214291555408911997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A052905 (n + 3)).toNat

end

end A199830.P6214291555408911997

/-! ## A199830.P7642734998053055105

`A199832(eq[3, A219347(n)])`
-/

namespace A199830.P7642734998053055105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199830.P7642734998053055105

/-! ## A199830.P9202566061839423267

`A199832(eq[5, A193592(n)])`
-/

namespace A199830.P9202566061839423267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199830.P9202566061839423267

/-! ## A199830.P3758706368767316811

`A199832(A027379(n+4)-2)`
-/

namespace A199830.P3758706368767316811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A027379 (n + 4) - 2).toNat

end

end A199830.P3758706368767316811

/-! ## A199830.P14104008360628378693

`A199832(Δ[Δ[A095667(n)]]+1)`
-/

namespace A199830.P14104008360628378693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (f1 (n + 1) - f1 n + 1).toNat

end

end A199830.P14104008360628378693

/-!
# A199831: Number of -7..7 arrays x(0..n+1) of n+2 elements with zero sum and no two neighbors summing to zero.

The programs for A199831, there is no canonical definition to state claims against.
-/

/-! ## A199831.P3856963086541827701

`A199832(eq[4, A219347(n)])`
-/

namespace A199831.P3856963086541827701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199831.P3856963086541827701

/-! ## A199831.P3014813822563081982

`A199832(eq[6, A193592(n)])`
-/

namespace A199831.P3014813822563081982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199831.P3014813822563081982

/-! ## A199831.P15913392804875184426

`A199832(A052905(n+4)-1)`
-/

namespace A199831.P15913392804875184426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A052905 (n + 4) - 1).toNat

end

end A199831.P15913392804875184426

/-! ## A199831.P16707641413892581659

`A199832(Δ[Δ[A095667(n+1)]])`
-/

namespace A199831.P16707641413892581659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (f1 (n + 1) - f1 n).toNat

end

end A199831.P16707641413892581659

/-! ## A199831.P8929672075937582998

`A199832(A161680(n+10)-A004273(n+12))`
-/

namespace A199831.P8929672075937582998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A161680 (n + 10) - A004273 (n + 12)).toNat

end

end A199831.P8929672075937582998

/-!
# A199833: Number of -n..n arrays of 4 elements with zero sum and no two neighbors summing to zero.

The programs for A199833, the canonical program `A199833.P8372648343239099686` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199833 has offset 1).

The definition of A199833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199833.P8372648343239099686

`∑[(2+4*n)²]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199833

/-- `∑[(2+4*n)²]` -/
def P8372648343239099686.Spec : Prop :=
  ∀ n, (P8372648343239099686.a n : ℤ) = A199833 (n + 1)

theorem P8372648343239099686.correct : P8372648343239099686.Spec := by
  intro n
  simp only [A199833, Nat.add_sub_cancel]

end A199833

/-! ## A199833.P13303119078230514453

`4*∑[record[xor(1, n)²]]`
-/

namespace A199833.P13303119078230514453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P13303119078230514453

namespace A199833

/-- `4*∑[record[xor(1, n)²]]` -/
def P13303119078230514453.Spec : Prop :=
  ∀ n, (P13303119078230514453.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P8895235399773267832

`4*C(2*n+3, 3)`
-/

namespace A199833.P8895235399773267832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n + 3) 3

end

end A199833.P8895235399773267832

namespace A199833

/-- `4*C(2*n+3, 3)` -/
def P8895235399773267832.Spec : Prop :=
  ∀ n, (P8895235399773267832.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P18213557509616452948

`4*∑[or(1, 2*n)²]`
-/

namespace A199833.P18213557509616452948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P18213557509616452948

namespace A199833

/-- `4*∑[or(1, 2*n)²]` -/
def P18213557509616452948.Spec : Prop :=
  ∀ n, (P18213557509616452948.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P5092853476318790792

`4*∑[xor(1, 2*n)²]`
-/

namespace A199833.P5092853476318790792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P5092853476318790792

namespace A199833

/-- `4*∑[xor(1, 2*n)²]` -/
def P5092853476318790792.Spec : Prop :=
  ∀ n, (P5092853476318790792.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P8843297086174654079

`lcm(2, ∑[(2*Δ[n²])²])`
-/

namespace A199833.P8843297086174654079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P8843297086174654079

namespace A199833

/-- `lcm(2, ∑[(2*Δ[n²])²])` -/
def P8843297086174654079.Spec : Prop :=
  ∀ n, (P8843297086174654079.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P3106740456241004658

`ogf((4+24x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A199833.P3106740456241004658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 24, 4] [1, -4, 6, -4, 1] n

end

end A199833.P3106740456241004658

namespace A199833

/-- `ogf((4+24x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P3106740456241004658.Spec : Prop :=
  ∀ n, P3106740456241004658.a n = A199833 (n + 1)

end A199833

/-! ## A199833.P17342521854211798164

`4*∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=8`
-/

namespace A199833.P17342521854211798164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P17342521854211798164

namespace A199833

/-- `4*∑[∑[a(n-1)+8]]` -/
def P17342521854211798164.Spec : Prop :=
  ∀ n, (P17342521854211798164.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P13812428849183024424

`a(n-1)+(4*n+2)²` with `a(0)=4`
-/

namespace A199833.P13812428849183024424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (4 * n + 2) ^ 2

end

end A199833.P13812428849183024424

namespace A199833

/-- `a(n-1)+(4*n+2)²` -/
def P13812428849183024424.Spec : Prop :=
  ∀ n, (P13812428849183024424.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P372839961870158069

`record[-((n+3)*a(n-1)/n)]` with `a(0)=4`
-/

namespace A199833.P372839961870158069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  -((n + 3 : ℚ) * (f1 (n - 1) / (n : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199833.P372839961870158069

namespace A199833

/-- `record[-((n+3)*a(n-1)/n)]` -/
def P372839961870158069.Spec : Prop :=
  ∀ n, P372839961870158069.a n = (A199833 (n + 1) : ℚ)

end A199833

/-! ## A199833.P6115916996015622438

`4*∑[(2*n+1)*or(1, 2*n)]`
-/

namespace A199833.P6115916996015622438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.lor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P6115916996015622438

namespace A199833

/-- `4*∑[(2*n+1)*or(1, 2*n)]` -/
def P6115916996015622438.Spec : Prop :=
  ∀ n, (P6115916996015622438.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P2736411539452126980

`4*∑[(2*n+1)*xor(1, 2*n)]`
-/

namespace A199833.P2736411539452126980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.xor 1 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P2736411539452126980

namespace A199833

/-- `4*∑[(2*n+1)*xor(1, 2*n)]` -/
def P2736411539452126980.Spec : Prop :=
  ∀ n, (P2736411539452126980.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P16236080361848282944

`4*∑[(2*n+1)^gcd(2, 2*n)]`
-/

namespace A199833.P16236080361848282944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ Nat.gcd 2 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P16236080361848282944

namespace A199833

/-- `4*∑[(2*n+1)^gcd(2, 2*n)]` -/
def P16236080361848282944.Spec : Prop :=
  ∀ n, (P16236080361848282944.a n : ℤ) = A199833 (n + 1)

end A199833

/-! ## A199833.P17594520701992654594

`4*∑[A016754(n)]`
-/

namespace A199833.P17594520701992654594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P17594520701992654594

namespace A199833

/-- `4*∑[A016754(n)]` -/
def P17594520701992654594.Spec : Prop :=
  ∀ n, P17594520701992654594.a n = A199833 (n + 1)

end A199833

/-! ## A199833.P10367876252493051288

`∑[A017114(n)]/4`
-/

namespace A199833.P10367876252493051288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017114 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A199833.P10367876252493051288

namespace A199833

/-- `∑[A017114(n)]/4` -/
def P10367876252493051288.Spec : Prop :=
  ∀ n, P10367876252493051288.a n = (A199833 (n + 1) : ℚ)

end A199833

/-! ## A199833.P391764076004505936

`2/3*A069072(n)`
-/

namespace A199833.P391764076004505936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A069072 n : ℚ)

end

end A199833.P391764076004505936

namespace A199833

/-- `2/3*A069072(n)` -/
def P391764076004505936.Spec : Prop :=
  ∀ n, P391764076004505936.a n = (A199833 (n + 1) : ℚ)

end A199833

/-! ## A199833.P1750015227233763368

`A152110(n)+2*n`
-/

namespace A199833.P1750015227233763368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152110 n + (2 * n : ℤ)

end

end A199833.P1750015227233763368

namespace A199833

/-- `A152110(n)+2*n` -/
def P1750015227233763368.Spec : Prop :=
  ∀ n, P1750015227233763368.a n = A199833 (n + 1)

end A199833

/-! ## A199833.P7192805972249028660

`4*(A273316(n)+n)`
-/

namespace A199833.P7192805972249028660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A273316 n + (n : ℤ))

end

end A199833.P7192805972249028660

namespace A199833

/-- `4*(A273316(n)+n)` -/
def P7192805972249028660.Spec : Prop :=
  ∀ n, P7192805972249028660.a n = A199833 (n + 1)

end A199833

/-! ## A199833.P10874685367379321457

`A016826(n)+a(n-1)` with `a(0)=4`
-/

namespace A199833.P10874685367379321457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A016826 n + a (n - 1)

end

end A199833.P10874685367379321457

namespace A199833

/-- `A016826(n)+a(n-1)` -/
def P10874685367379321457.Spec : Prop :=
  ∀ n, P10874685367379321457.a n = A199833 (n + 1)

end A199833

/-! ## A199833.P18416977380849731274

`4*∑[8*A000217(n)+1]`
-/

namespace A199833.P18416977380849731274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000217 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199833.P18416977380849731274

namespace A199833

/-- `4*∑[8*A000217(n)+1]` -/
def P18416977380849731274.Spec : Prop :=
  ∀ n, P18416977380849731274.a n = A199833 (n + 1)

end A199833

/-!
# A199834: Number of -n..n arrays x(0..4) of 5 elements with zero sum and no two neighbors summing to zero.

The programs for A199834, the canonical program `A199834.P13058174991751004229` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199834 has offset 1).

The definition of A199834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199834.P13943084610925905940

`ogf((4+94x+116x^2+16x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A199834.P13943084610925905940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 94, 116, 16] [1, -5, 10, -10, 5, -1] n

end

end A199834.P13943084610925905940

namespace A199834

/-- `ogf((4+94x+116x^2+16x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13943084610925905940.Spec : Prop :=
  ∀ n, P13943084610925905940.a n = A199834 (n + 1)

end A199834

/-! ## A199834.P13058174991751004229

`115/12*(n+1)^4-29/6*(n+1)^3+5/12*(n+1)²-7/6*(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199834

/-- `115/12*(n+1)^4-29/6*(n+1)^3+5/12*(n+1)²-7/6*(n+1)` -/
def P13058174991751004229.Spec : Prop :=
  ∀ n, P13058174991751004229.a n = (A199834 (n + 1) : ℚ)

end A199834

/-! ## A199834.P15298814532613355443

`A199832(∑[n+2]+4)`
-/

namespace A199834.P15298814532613355443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A199834.P15298814532613355443

namespace A199834

/-- `A199832(∑[n+2]+4)` -/
def P15298814532613355443.Spec : Prop :=
  ∀ n, P15298814532613355443.a n = A199834 (n + 1)

end A199834

/-! ## A199834.P1514261725598735692

`lcm(2, A199832(A167614(n+1)))`
-/

namespace A199834.P1514261725598735692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A199832 (A167614 (n + 1)).toNat)

end

end A199834.P1514261725598735692

namespace A199834

/-- `lcm(2, A199832(A167614(n+1)))` -/
def P1514261725598735692.Spec : Prop :=
  ∀ n, (P1514261725598735692.a n : ℤ) = A199834 (n + 1)

end A199834

/-! ## A199834.P816098136938812743

`A199832(A167614(n+1))%A016747(n+1)`
-/

namespace A199834.P816098136938812743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199832 (A167614 (n + 1)).toNat) (A016747 (n + 1))

end

end A199834.P816098136938812743

namespace A199834

/-- `A199832(A167614(n+1))%A016747(n+1)` -/
def P816098136938812743.Spec : Prop :=
  ∀ n, P816098136938812743.a n = A199834 (n + 1)

end A199834

/-!
# A199835: Number of -n..n arrays x(0..5) of 6 elements with zero sum and no two neighbors summing to zero.

The programs for A199835, the canonical program `A199835.P10194551699096415623` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199835 has offset 1).

The definition of A199835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199835.P10194551699096415623

`(n+1)*(2*(n+1)+1)*(2*(n+1)-1)*(66*(n+1)²-35*(n+1)+19)/15`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199835

/-- `(n+1)*(2*(n+1)+1)*(2*(n+1)-1)*(66*(n+1)²-35*(n+1)+19)/15` -/
def P10194551699096415623.Spec : Prop :=
  ∀ n, P10194551699096415623.a n = (A199835 (n + 1) : ℚ)

end A199835

/-! ## A199835.P8117224026969457719

`A199832(A052905(n)+9)`
-/

namespace A199835.P8117224026969457719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A052905 n + 9).toNat

end

end A199835.P8117224026969457719

namespace A199835

/-- `A199832(A052905(n)+9)` -/
def P8117224026969457719.Spec : Prop :=
  ∀ n, P8117224026969457719.a n = A199835 (n + 1)

end A199835

/-! ## A199835.P12329288721966919419

`A199832(A055999(n)+10)`
-/

namespace A199835.P12329288721966919419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A055999 n + 10).toNat

end

end A199835.P12329288721966919419

namespace A199835

/-- `A199832(A055999(n)+10)` -/
def P12329288721966919419.Spec : Prop :=
  ∀ n, P12329288721966919419.a n = A199835 (n + 1)

end A199835

/-! ## A199835.P18369090621155401146

`A199832(A167614(n+2)+1)`
-/

namespace A199835.P18369090621155401146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A167614 (n + 2) + 1).toNat

end

end A199835.P18369090621155401146

namespace A199835

/-- `A199832(A167614(n+2)+1)` -/
def P18369090621155401146.Spec : Prop :=
  ∀ n, P18369090621155401146.a n = A199835 (n + 1)

end A199835

/-! ## A199835.P18186191357215949812

`A199832(A166136(n+2)-2)`
-/

namespace A199835.P18186191357215949812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A166136 (n + 2) - 2).toNat

end

end A199835.P18186191357215949812

namespace A199835

/-- `A199832(A166136(n+2)-2)` -/
def P18186191357215949812.Spec : Prop :=
  ∀ n, P18186191357215949812.a n = A199835 (n + 1)

end A199835

/-!
# A199836: Number of -n..n arrays x(0..6) of 7 elements with zero sum and no two neighbors summing to zero.

The programs for A199836, there is no canonical definition to state claims against.
-/

/-! ## A199836.P8730374238523339175

`A199832(A167499(n+3))`
-/

namespace A199836.P8730374238523339175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A167499 (n + 3)).toNat

end

end A199836.P8730374238523339175

/-! ## A199836.P10989915721144560488

`A199832(A155212(n)+13)`
-/

namespace A199836.P10989915721144560488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A155212 n + 13).toNat

end

end A199836.P10989915721144560488

/-! ## A199836.P1192743041033094983

`A199832(A000124(n+4)+4)`
-/

namespace A199836.P1192743041033094983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000124 (n + 4) + 4).toNat

end

end A199836.P1192743041033094983

/-! ## A199836.P18251915104876444750

`A199832(A000217(n+4)+5)`
-/

namespace A199836.P18251915104876444750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000217 (n + 4) + 5).toNat

end

end A199836.P18251915104876444750

/-! ## A199836.P1732913525342426087

`A199832(Δ[Δ[A095667(n)]]-2*n)`
-/

namespace A199836.P1732913525342426087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A199836.P1732913525342426087

/-!
# A199837: Number of -n..n arrays x(0..7) of 8 elements with zero sum and no two neighbors summing to zero.

The programs for A199837, there is no canonical definition to state claims against.
-/

/-! ## A199837.P17748172988267570659

`A199832(A167614(n+4)+3)`
-/

namespace A199837.P17748172988267570659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A167614 (n + 4) + 3).toNat

end

end A199837.P17748172988267570659

/-! ## A199837.P6781135632128933268

`A199832(A000124(n+5)+5)`
-/

namespace A199837.P6781135632128933268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000124 (n + 5) + 5).toNat

end

end A199837.P6781135632128933268

/-! ## A199837.P14052472643971148025

`A199832(A000217(n+5)+6)`
-/

namespace A199837.P14052472643971148025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000217 (n + 5) + 6).toNat

end

end A199837.P14052472643971148025

/-! ## A199837.P10657432987489437811

`A199832(A016813(n+5)+A000096(n))`
-/

namespace A199837.P10657432987489437811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A016813 (n + 5) + A000096 n).toNat

end

end A199837.P10657432987489437811

/-! ## A199837.P13921756166290802288

`A199832(A002620(n+2)+A002620(n+9))`
-/

namespace A199837.P13921756166290802288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A199837.P13921756166290802288

/-!
# A199838: Number of -n..n arrays x(0..8) of 9 elements with zero sum and no two neighbors summing to zero.

The programs for A199838, there is no canonical definition to state claims against.
-/

/-! ## A199838.P809236268673291726

`A199832(eq[11, A066657(n)])`
-/

namespace A199838.P809236268673291726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199838.P809236268673291726

/-! ## A199838.P675637222633974847

`A199832(A133263(n+6)+5)`
-/

namespace A199838.P675637222633974847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A133263 (n + 6) + 5).toNat

end

end A199838.P675637222633974847

/-! ## A199838.P10195511031305366091

`A199832(eq[6, A002262(n)]+1)`
-/

namespace A199838.P10195511031305366091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199838.P10195511031305366091

/-! ## A199838.P7614581623164626976

`A199832(eq[8, A131818(n+1)])`
-/

namespace A199838.P7614581623164626976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199838.P7614581623164626976

/-! ## A199838.P10291759375122995751

`A199832(A167614(n+1)+A073760(n+5))`
-/

namespace A199838.P10291759375122995751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A167614 (n + 1) + A073760 (n + 5)).toNat

end

end A199838.P10291759375122995751

/-!
# A199839: Number of -n..n arrays x(0..9) of 10 elements with zero sum and no two neighbors summing to zero.

The programs for A199839, there is no canonical definition to state claims against.
-/

/-! ## A199839.P7196597272173064512

`A199832(eq[13, A066657(n)])`
-/

namespace A199839.P7196597272173064512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199839.P7196597272173064512

/-! ## A199839.P153112216577491654

`A199832(A166136(n+6)+2)`
-/

namespace A199839.P153112216577491654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A166136 (n + 6) + 2).toNat

end

end A199839.P153112216577491654

/-! ## A199839.P888271652723721159

`A199832(A000096(n+6)+9)`
-/

namespace A199839.P888271652723721159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A000096 (n + 6) + 9).toNat

end

end A199839.P888271652723721159

/-! ## A199839.P17618388154721854043

`A199832(eq[9, A131818(n+1)])`
-/

namespace A199839.P17618388154721854043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A199839.P17618388154721854043

/-! ## A199839.P12469266304300950711

`A199832(A052905(n+5)+5-n)`
-/

namespace A199839.P12469266304300950711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199832 (A052905 (n + 5) + 5 - (n : ℤ)).toNat

end

end A199839.P12469266304300950711

/-!
# A199841: Number of -2..2 arrays x(0..n-1) of n elements with zero sum and no element more than one greater than the previous.

The programs for A199841, there is no canonical definition to state claims against.
-/

/-! ## A199841.P15697453531734737066

`A199847(∑[n+2])`
-/

namespace A199841.P15697453531734737066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199841.P15697453531734737066

/-! ## A199841.P10011259883180881791

`record[gcd(A182172(n+1), A199847(n+1))]`
-/

namespace A199841.P10011259883180881791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182172 (n + 1)) (A199847 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199841.P10011259883180881791

/-! ## A199841.P8578058811165687425

`A199847(A000096(n+1))+val(A001844(n), 2)`
-/

namespace A199841.P8578058811165687425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000096 (n + 1)).toNat + (SequenceMachineLib.valuation (A001844 n).toNat 2 : ℤ)

end

end A199841.P8578058811165687425

/-! ## A199841.P5896399787680299553

`A199847(A000096(n+1))+val(A000051(n), 4)`
-/

namespace A199841.P5896399787680299553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000096 (n + 1)).toNat + (SequenceMachineLib.valuation (A000051 n).toNat 4 : ℤ)

end

end A199841.P5896399787680299553

/-! ## A199841.P9537368303419800050

`A199847(A000096(n+1))+A004526(val(n+1, 7))`
-/

namespace A199841.P9537368303419800050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000096 (n + 1)).toNat + A004526 (SequenceMachineLib.valuation (n + 1) 7)

end

end A199841.P9537368303419800050

/-!
# A199842: Number of -3..3 arrays x(0..n-1) of n elements with zero sum and no element more than one greater than the previous.

The programs for A199842, there is no canonical definition to state claims against.
-/

/-! ## A199842.P5603581390757276812

`A199847(∑[n+3]+1)`
-/

namespace A199842.P5603581390757276812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199842.P5603581390757276812

/-! ## A199842.P10426223030995813472

`record[A199847(n+1)/A199847(n+4)]`
-/

namespace A199842.P10426223030995813472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199847 (n + 1) : ℚ) / (A199847 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199842.P10426223030995813472

/-! ## A199842.P159174516907825030

`A199847(Δ[A008778(n)])%A034474(n)`
-/

namespace A199842.P159174516907825030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199847 (f1 (n + 1) - f1 n).toNat) (A034474 n)

end

end A199842.P159174516907825030

/-! ## A199842.P5047133210603960588

`or(A000007(n), A199847(A034856(n+2)))`
-/

namespace A199842.P5047133210603960588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A199847 (A034856 (n + 2)).toNat)

end

end A199842.P5047133210603960588

/-! ## A199842.P631138568879393731

`A199847(A034856(n+2))+A000007(n+1)`
-/

namespace A199842.P631138568879393731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A199842.P631138568879393731

/-!
# A199843: Number of -4..4 arrays x(0..n-1) of n elements with zero sum and no element more than one greater than the previous.

The programs for A199843, there is no canonical definition to state claims against.
-/

/-! ## A199843.P17411949104661886736

`A199847(A027379(n+2))`
-/

namespace A199843.P17411949104661886736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A027379 (n + 2)).toNat

end

end A199843.P17411949104661886736

/-! ## A199843.P5072753917789741308

`A199847(A055998(n+2))`
-/

namespace A199843.P5072753917789741308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A055998 (n + 2)).toNat

end

end A199843.P5072753917789741308

/-! ## A199843.P15809661833281647064

`A199847(A056000(n)+7)`
-/

namespace A199843.P15809661833281647064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A056000 n + 7).toNat

end

end A199843.P15809661833281647064

/-! ## A199843.P10437367253137842708

`A199847(A046691(n+2)+1)`
-/

namespace A199843.P10437367253137842708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A046691 (n + 2) + 1).toNat

end

end A199843.P10437367253137842708

/-! ## A199843.P8491138310005732844

`A199847(A052905(n+1)+2)`
-/

namespace A199843.P8491138310005732844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A052905 (n + 1) + 2).toNat

end

end A199843.P8491138310005732844

/-!
# A199844: Number of -5..5 arrays x(0..n-1) of n elements with zero sum and no element more than one greater than the previous.

The programs for A199844, there is no canonical definition to state claims against.
-/

/-! ## A199844.P2533191374870718903

`A199847(∑[n+5]+6)`
-/

namespace A199844.P2533191374870718903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A199844.P2533191374870718903

/-! ## A199844.P5293142143892319153

`record[A008683(A200370(n+1))*A199847(n+1)]`
-/

namespace A199844.P5293142143892319153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A200370 (n + 1)).toNat * A199847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199844.P5293142143892319153

/-!
# A199845: Number of -6..6 arrays x(0..n-1) of n elements with zero sum and no element more than one greater than the previous.

The programs for A199845, there is no canonical definition to state claims against.
-/

/-! ## A199845.P7008755394176950230

`A199847(A052905(n+3))`
-/

namespace A199845.P7008755394176950230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A052905 (n + 3)).toNat

end

end A199845.P7008755394176950230

/-! ## A199845.P16674907666043601315

`A199847(A055999(n+3)+1)`
-/

namespace A199845.P16674907666043601315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A055999 (n + 3) + 1).toNat

end

end A199845.P16674907666043601315

/-! ## A199845.P4828756659057678592

`A199847(A000096(n+5)-4)`
-/

namespace A199845.P4828756659057678592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000096 (n + 5) - 4).toNat

end

end A199845.P4828756659057678592

/-! ## A199845.P14000065261260093135

`A199847(A000217(n+6)-5)`
-/

namespace A199845.P14000065261260093135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000217 (n + 6) - 5).toNat

end

end A199845.P14000065261260093135

/-! ## A199845.P14847885860529893025

`A199847(Δ[Δ[A006504(n+1)]])`
-/

namespace A199845.P14847885860529893025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (f1 (n + 1) - f1 n).toNat

end

end A199845.P14847885860529893025

/-!
# A199846: Number of -7..7 arrays x(0..n-1) of n elements with zero sum and no element more than one greater than the previous.

The programs for A199846, there is no canonical definition to state claims against.
-/

/-! ## A199846.P4484252637759896340

`A199847(A000217(n+7)-6)`
-/

namespace A199846.P4484252637759896340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000217 (n + 7) - 6).toNat

end

end A199846.P4484252637759896340

/-! ## A199846.P3979928710669912587

`A199847(A000124(n+7)-7)`
-/

namespace A199846.P3979928710669912587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000124 (n + 7) - 7).toNat

end

end A199846.P3979928710669912587

/-! ## A199846.P17735346359361243189

`A199847(eq[7, A004736(n+1)]+1)`
-/

namespace A199846.P17735346359361243189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A199846.P17735346359361243189

/-! ## A199846.P7236869783507570378

`A199847(A000096(n+5)+n+2)`
-/

namespace A199846.P7236869783507570378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A199846.P7236869783507570378

/-! ## A199846.P5443895395257804213

`A199847(2*n+A000124(n+5)+6)`
-/

namespace A199846.P5443895395257804213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 ((2 * n : ℤ) + (A000124 (n + 5) + 6)).toNat

end

end A199846.P5443895395257804213

/-!
# A199847: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zero sum and no element more than one greater than the previous.

The programs for A199847, there is no canonical definition to state claims against.
-/

/-! ## A199847.P414792927778872375

`A316847(A343806(n))`
-/

namespace A199847.P414792927778872375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316847 (A343806 n).toNat

end

end A199847.P414792927778872375

/-! ## A199847.P16383031650449595841

`A047997(n+1)-A285007(A082680(n+4))`
-/

namespace A199847.P16383031650449595841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047997 (n + 1) - A285007 (A082680 (n + 4)).toNat

end

end A199847.P16383031650449595841

/-! ## A199847.P3229859865450063157

`A062575(A071948(n))`
-/

namespace A199847.P3229859865450063157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A071948 n).toNat

end

end A199847.P3229859865450063157

/-! ## A199847.P12581458251331272223

`A070939(A132945(n))`
-/

namespace A199847.P12581458251331272223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A132945 n).toNat

end

end A199847.P12581458251331272223

/-! ## A199847.P1005220799289126642

`A048766(A193634(n))`
-/

namespace A199847.P1005220799289126642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A193634 n).toNat

end

end A199847.P1005220799289126642

/-!
# A199848: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no element more than one greater than the previous.

The programs for A199848, the canonical program `A199848.P5739663787728369875` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199848 has offset 1).

The definition of A199848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199848.P12585763142437224203

`ogf((11-10x+6x^2-11x^3+12x^4-4x^5)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`
-/

namespace A199848.P12585763142437224203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -10, 6, -11, 12, -4] [1, -3, 3, -2, 3, -3, 1] n

end

end A199848.P12585763142437224203

namespace A199848

/-- `ogf((11-10x+6x^2-11x^3+12x^4-4x^5)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P12585763142437224203.Spec : Prop :=
  ∀ n, P12585763142437224203.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P5739663787728369875

`A188182(n+2)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A199848

/-- `A188182(n+2)-1` -/
def P5739663787728369875.Spec : Prop :=
  ∀ n, P5739663787728369875.a n = A199848 (n + 1)

theorem P5739663787728369875.correct : P5739663787728369875.Spec := by
  intro n
  simp only [A199848, Nat.add_sub_cancel]

end A199848

/-! ## A199848.P8460834422940257193

`∑[A008822(n+1)]+(n+3)²`
-/

namespace A199848.P8460834422940257193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 3) ^ 2 : ℤ)

end

end A199848.P8460834422940257193

namespace A199848

/-- `∑[A008822(n+1)]+(n+3)²` -/
def P8460834422940257193.Spec : Prop :=
  ∀ n, P8460834422940257193.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P888949244241146719

`A092498(n+2)+Δ[A130518(n)]`
-/

namespace A199848.P888949244241146719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 (n + 2) + (f1 (n + 1) - f1 n)

end

end A199848.P888949244241146719

namespace A199848

/-- `A092498(n+2)+Δ[A130518(n)]` -/
def P888949244241146719.Spec : Prop :=
  ∀ n, P888949244241146719.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P17607419792356967542

`A143978(n+3)+∑[A000969(n+1)]`
-/

namespace A199848.P17607419792356967542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199848.P17607419792356967542

namespace A199848

/-- `A143978(n+3)+∑[A000969(n+1)]` -/
def P17607419792356967542.Spec : Prop :=
  ∀ n, P17607419792356967542.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P9416524857374379857

`∑[A006185(2*(n+3))]+4`
-/

namespace A199848.P9416524857374379857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006185 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A199848.P9416524857374379857

namespace A199848

/-- `∑[A006185(2*(n+3))]+4` -/
def P9416524857374379857.Spec : Prop :=
  ∀ n, P9416524857374379857.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P1004047266677942110

`A000601(2*(n+2))+n-A004396(n)`
-/

namespace A199848.P1004047266677942110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (2 * (n + 2)) + ((n : ℤ) - A004396 n)

end

end A199848.P1004047266677942110

namespace A199848

/-- `A000601(2*(n+2))+n-A004396(n)` -/
def P1004047266677942110.Spec : Prop :=
  ∀ n, P1004047266677942110.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P682884878273507792

`A007988(2*(n+2))+A007988(2*n+5)`
-/

namespace A199848.P682884878273507792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007988 (2 * (n + 2)) + A007988 (2 * n + 5)

end

end A199848.P682884878273507792

namespace A199848

/-- `A007988(2*(n+2))+A007988(2*n+5)` -/
def P682884878273507792.Spec : Prop :=
  ∀ n, P682884878273507792.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P7748831319188149114

`A001973(2*n+5)-1`
-/

namespace A199848.P7748831319188149114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (2 * n + 5) - 1

end

end A199848.P7748831319188149114

namespace A199848

/-- `A001973(2*n+5)-1` -/
def P7748831319188149114.Spec : Prop :=
  ∀ n, P7748831319188149114.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P11039239589788679796

`Δ[A377067(2*n+3)]-1`
-/

namespace A199848.P11039239589788679796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377067 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A199848.P11039239589788679796

namespace A199848

/-- `Δ[A377067(2*n+3)]-1` -/
def P11039239589788679796.Spec : Prop :=
  ∀ n, P11039239589788679796.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P16202826096090004465

`∑[A011975(2*n+7)]+4`
-/

namespace A199848.P16202826096090004465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011975 (2 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A199848.P16202826096090004465

namespace A199848

/-- `∑[A011975(2*n+7)]+4` -/
def P16202826096090004465.Spec : Prop :=
  ∀ n, P16202826096090004465.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P15496127396061109294

`record[A001973(A168195(n+1))-1]`
-/

namespace A199848.P15496127396061109294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (A168195 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199848.P15496127396061109294

namespace A199848

/-- `record[A001973(A168195(n+1))-1]` -/
def P15496127396061109294.Spec : Prop :=
  ∀ n, P15496127396061109294.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P4159015252586598798

`∑[A058212(A020744(n))]+4`
-/

namespace A199848.P4159015252586598798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (A020744 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A199848.P4159015252586598798

namespace A199848

/-- `∑[A058212(A020744(n))]+4` -/
def P4159015252586598798.Spec : Prop :=
  ∀ n, P4159015252586598798.a n = A199848 (n + 1)

end A199848

/-! ## A199848.P17857772736376618557

`∑[A008742(4*n+10)]+4`
-/

namespace A199848.P17857772736376618557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008742 (4 * n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A199848.P17857772736376618557

namespace A199848

/-- `∑[A008742(4*n+10)]+4` -/
def P17857772736376618557.Spec : Prop :=
  ∀ n, P17857772736376618557.a n = A199848 (n + 1)

end A199848

/-!
# A199849: Number of -n..n arrays x(0..4) of 5 elements with zero sum and no element more than one greater than the previous.

The programs for A199849, the canonical program `A199849.P10667357611628747971` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199849 has offset 1).

The definition of A199849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199849.P10667357611628747971

`ogf((26+14x+x^3-13x^4+16x^5+3x^6+10x^7-3x^8-16x^9+7x^10+x^11)/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199849

/-- `ogf((26+14x+x^3-13x^4+16x^5+3x^6+10x^7-3x^8-16x^9+7x^10+x^11)/(1-2x+x^3+2x^5-2x^6-x^8+2x^10-x^11))` -/
def P10667357611628747971.Spec : Prop :=
  ∀ n, P10667357611628747971.a n = A199849 (n + 1)

theorem P10667357611628747971.correct : P10667357611628747971.Spec := by
  intro n
  simp only [A199849, Nat.add_sub_cancel]

end A199849

/-! ## A199849.P13533786568318496413

`A199847(A167499(n+3))`
-/

namespace A199849.P13533786568318496413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A167499 (n + 3)).toNat

end

end A199849.P13533786568318496413

namespace A199849

/-- `A199847(A167499(n+3))` -/
def P13533786568318496413.Spec : Prop :=
  ∀ n, P13533786568318496413.a n = A199849 (n + 1)

end A199849

/-! ## A199849.P15131437473633394763

`A199847(A056000(n)+15)`
-/

namespace A199849.P15131437473633394763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A056000 n + 15).toNat

end

end A199849.P15131437473633394763

namespace A199849

/-- `A199847(A056000(n)+15)` -/
def P15131437473633394763.Spec : Prop :=
  ∀ n, P15131437473633394763.a n = A199849 (n + 1)

end A199849

/-! ## A199849.P10327875884210318209

`A199847(A000217(n+4)+5)`
-/

namespace A199849.P10327875884210318209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000217 (n + 4) + 5).toNat

end

end A199849.P10327875884210318209

namespace A199849

/-- `A199847(A000217(n+4)+5)` -/
def P10327875884210318209.Spec : Prop :=
  ∀ n, P10327875884210318209.a n = A199849 (n + 1)

end A199849

/-! ## A199849.P16890612662654273519

`A199847(A055999(n+3)-2*n)`
-/

namespace A199849.P16890612662654273519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A199849.P16890612662654273519

namespace A199849

/-- `A199847(A055999(n+3)-2*n)` -/
def P16890612662654273519.Spec : Prop :=
  ∀ n, P16890612662654273519.a n = A199849 (n + 1)

end A199849

/-!
# A199850: Number of -n..n arrays x(0..5) of 6 elements with zero sum and no element more than one greater than the previous.

The programs for A199850, the canonical program `A199850.P14411887812635350067` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199850 has offset 1).

The definition of A199850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199850.P14411887812635350067

`ogf((63+3x-22x^2+8x^3+45x^4-4x^5-24x^6+32x^7+19x^8-27x^9-43x^10+39x^11+8x^12-9x^13)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199850

/-- `ogf((63+3x-22x^2+8x^3+45x^4-4x^5-24x^6+32x^7+19x^8-27x^9-43x^10+39x^11+8x^12-9x^13)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` -/
def P14411887812635350067.Spec : Prop :=
  ∀ n, P14411887812635350067.a n = A199850 (n + 1)

theorem P14411887812635350067.correct : P14411887812635350067.Spec := by
  intro n
  simp only [A199850, Nat.add_sub_cancel]

end A199850

/-! ## A199850.P16511093433741811231

`A199847(Δ[A264443(n)]+10)`
-/

namespace A199850.P16511093433741811231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (f1 (n + 1) - f1 n + 10).toNat

end

end A199850.P16511093433741811231

namespace A199850

/-- `A199847(Δ[A264443(n)]+10)` -/
def P16511093433741811231.Spec : Prop :=
  ∀ n, P16511093433741811231.a n = A199850 (n + 1)

end A199850

/-! ## A199850.P12763510324530148943

`A199847(A000124(n+5)+5)`
-/

namespace A199850.P12763510324530148943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000124 (n + 5) + 5).toNat

end

end A199850.P12763510324530148943

namespace A199850

/-- `A199847(A000124(n+5)+5)` -/
def P12763510324530148943.Spec : Prop :=
  ∀ n, P12763510324530148943.a n = A199850 (n + 1)

end A199850

/-! ## A199850.P1841208058876040654

`A199847(A000096(n+4)+7)`
-/

namespace A199850.P1841208058876040654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000096 (n + 4) + 7).toNat

end

end A199850.P1841208058876040654

namespace A199850

/-- `A199847(A000096(n+4)+7)` -/
def P1841208058876040654.Spec : Prop :=
  ∀ n, P1841208058876040654.a n = A199850 (n + 1)

end A199850

/-! ## A199850.P13766257999841936471

`A199847(A000217(n+5)+6)`
-/

namespace A199850.P13766257999841936471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000217 (n + 5) + 6).toNat

end

end A199850.P13766257999841936471

namespace A199850

/-- `A199847(A000217(n+5)+6)` -/
def P13766257999841936471.Spec : Prop :=
  ∀ n, P13766257999841936471.a n = A199850 (n + 1)

end A199850

/-!
# A199851: Number of -n..n arrays x(0..6) of 7 elements with zero sum and no element more than one greater than the previous.

The programs for A199851, there is no canonical definition to state claims against.
-/

/-! ## A199851.P7072609790249932255

`A199847(A167487(n+5))`
-/

namespace A199851.P7072609790249932255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A167487 (n + 5)).toNat

end

end A199851.P7072609790249932255

/-! ## A199851.P12087127687144149782

`A199847(A167614(n+5)+4)`
-/

namespace A199851.P12087127687144149782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A167614 (n + 5) + 4).toNat

end

end A199851.P12087127687144149782

/-! ## A199851.P17097366456947788855

`A199847(A000096(n+5)+8)`
-/

namespace A199851.P17097366456947788855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000096 (n + 5) + 8).toNat

end

end A199851.P17097366456947788855

/-! ## A199851.P2972220759194347409

`A199847(A000217(n+6)+7)`
-/

namespace A199851.P2972220759194347409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A000217 (n + 6) + 7).toNat

end

end A199851.P2972220759194347409

/-! ## A199851.P11514083163870104598

`A199847(A034856(n+5)+9)`
-/

namespace A199851.P11514083163870104598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199847 (A034856 (n + 5) + 9).toNat

end

end A199851.P11514083163870104598

/-!
# A199853: Expansion of (1-3*x+x^3)/(1-2*x-x^2+x^3).

The programs for A199853, the canonical program `A199853.P10456544899544856937` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199853 has offset 0).

The definition of A199853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+x^3)/(1-2x-x^2+x^3))` (program `A199853.P10456544899544856937`, by `A199853.P10456544899544856937.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199853.P10456544899544856937

`ogf((1-3x+x^3)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199853

/-- `ogf((1-3x+x^3)/(1-2x-x^2+x^3))` -/
def P10456544899544856937.Spec : Prop :=
  ∀ n, P10456544899544856937.a n = A199853 n

theorem P10456544899544856937.correct : P10456544899544856937.Spec := by
  intro n
  simp only [A199853]

end A199853

/-! ## A199853.P743444389922921712

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=-3`
-/

namespace A199853.P743444389922921712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, -3] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A199853.P743444389922921712

namespace A199853

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P743444389922921712.Spec : Prop :=
  ∀ n, P743444389922921712.a n = A199853 n

end A199853

/-! ## A199853.P3938332781797301076

`floor(acot(n)-A106803(n))`
-/

namespace A199853.P3938332781797301076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A106803 n : ℝ)⌋

end

end A199853.P3938332781797301076

namespace A199853

/-- `floor(acot(n)-A106803(n))` -/
def P3938332781797301076.Spec : Prop :=
  ∀ n, P3938332781797301076.a n = A199853 n

end A199853

/-! ## A199853.P13522622589864711965

`round((1-A052994(n))/2)`
-/

namespace A199853.P13522622589864711965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((1 - A052994 n : ℚ) / 2)

end

end A199853.P13522622589864711965

namespace A199853

/-- `round((1-A052994(n))/2)` -/
def P13522622589864711965.Spec : Prop :=
  ∀ n, P13522622589864711965.a n = A199853 n

end A199853

/-! ## A199853.P14733454907054535672

`floor(acot(n)-A187070(2*n))`
-/

namespace A199853.P14733454907054535672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A187070 (2 * n) : ℝ)⌋

end

end A199853.P14733454907054535672

namespace A199853

/-- `floor(acot(n)-A187070(2*n))` -/
def P14733454907054535672.Spec : Prop :=
  ∀ n, P14733454907054535672.a n = A199853 n

end A199853

/-! ## A199853.P4954377352898086300

`C(2, n+2)-Δ[A006054(n)]`
-/

namespace A199853.P4954377352898086300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - (f1 (n + 1) - f1 n)

end

end A199853.P4954377352898086300

namespace A199853

/-- `C(2, n+2)-Δ[A006054(n)]` -/
def P4954377352898086300.Spec : Prop :=
  ∀ n, P4954377352898086300.a n = A199853 n

end A199853

/-! ## A199853.P5300202847040629720

`A000007(n)-A106803(n)`
-/

namespace A199853.P5300202847040629720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A106803 n

end

end A199853.P5300202847040629720

namespace A199853

/-- `A000007(n)-A106803(n)` -/
def P5300202847040629720.Spec : Prop :=
  ∀ n, P5300202847040629720.a n = A199853 n

end A199853

/-! ## A199853.P4311435480350119271

`A000007(n)-Δ[A006054(n)]`
-/

namespace A199853.P4311435480350119271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A199853.P4311435480350119271

namespace A199853

/-- `A000007(n)-Δ[A006054(n)]` -/
def P4311435480350119271.Spec : Prop :=
  ∀ n, P4311435480350119271.a n = A199853 n

end A199853

/-! ## A199853.P17195847419382958854

`Δ[A040000(n)-A006054(n)]`
-/

namespace A199853.P17195847419382958854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199853.P17195847419382958854

namespace A199853

/-- `Δ[A040000(n)-A006054(n)]` -/
def P17195847419382958854.Spec : Prop :=
  ∀ n, P17195847419382958854.a n = A199853 n

end A199853

/-! ## A199853.P10621219886325085830

`Δ[A057427(n)-A006054(n)]`
-/

namespace A199853.P10621219886325085830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199853.P10621219886325085830

namespace A199853

/-- `Δ[A057427(n)-A006054(n)]` -/
def P10621219886325085830.Spec : Prop :=
  ∀ n, P10621219886325085830.a n = A199853 n

end A199853

/-! ## A199853.P12666336171345426513

`A008683((n+1)²)-A187070(2*n)`
-/

namespace A199853.P12666336171345426513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) - A187070 (2 * n)

end

end A199853.P12666336171345426513

namespace A199853

/-- `A008683((n+1)²)-A187070(2*n)` -/
def P12666336171345426513.Spec : Prop :=
  ∀ n, P12666336171345426513.a n = A199853 n

end A199853

/-! ## A199853.P2349662572285251690

`A010051(2*(n+1))-Δ[A006054(n)]`
-/

namespace A199853.P2349662572285251690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A199853.P2349662572285251690

namespace A199853

/-- `A010051(2*(n+1))-Δ[A006054(n)]` -/
def P2349662572285251690.Spec : Prop :=
  ∀ n, P2349662572285251690.a n = A199853 n

end A199853

/-! ## A199853.P6658650489435695332

`A010054(p?[2*n+1])-Δ[A006054(n)]`
-/

namespace A199853.P6658650489435695332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - (f2 (n + 1) - f2 n)

end

end A199853.P6658650489435695332

namespace A199853

/-- `A010054(p?[2*n+1])-Δ[A006054(n)]` -/
def P6658650489435695332.Spec : Prop :=
  ∀ n, P6658650489435695332.a n = A199853 n

end A199853

/-! ## A199853.P10886272748670350861

`Δ[A020639(A001316(n))-A006054(n)]`
-/

namespace A199853.P10886272748670350861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199853.P10886272748670350861

namespace A199853

/-- `Δ[A020639(A001316(n))-A006054(n)]` -/
def P10886272748670350861.Spec : Prop :=
  ∀ n, P10886272748670350861.a n = A199853 n

end A199853

/-! ## A199853.P13747423592723651472

`Δ[A020639(A008458(n))-A006054(n)]`
-/

namespace A199853.P13747423592723651472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199853.P13747423592723651472

namespace A199853

/-- `Δ[A020639(A008458(n))-A006054(n)]` -/
def P13747423592723651472.Spec : Prop :=
  ∀ n, P13747423592723651472.a n = A199853 n

end A199853

/-! ## A199853.P10185808366565529583

`A209229(A314669(n))-A052994(n)/2`
-/

namespace A199853.P10185808366565529583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209229 (A314669 n).toNat : ℚ) - (A052994 n : ℚ) / 2

end

end A199853.P10185808366565529583

namespace A199853

/-- `A209229(A314669(n))-A052994(n)/2` -/
def P10185808366565529583.Spec : Prop :=
  ∀ n, P10185808366565529583.a n = (A199853 n : ℚ)

end A199853

/-! ## A199853.P15028885549010424353

`Δ[A001221(A027748(n+1))-A006054(n)]`
-/

namespace A199853.P15028885549010424353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027748 (n + 1)).toNat - A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199853.P15028885549010424353

namespace A199853

/-- `Δ[A001221(A027748(n+1))-A006054(n)]` -/
def P15028885549010424353.Spec : Prop :=
  ∀ n, P15028885549010424353.a n = A199853 n

end A199853

/-! ## A199853.P17514623102711786384

`A000007(n)+A006054(n)-A006054(n+1)`
-/

namespace A199853.P17514623102711786384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A006054 n - A006054 (n + 1))

end

end A199853.P17514623102711786384

namespace A199853

/-- `A000007(n)+A006054(n)-A006054(n+1)` -/
def P17514623102711786384.Spec : Prop :=
  ∀ n, P17514623102711786384.a n = A199853 n

end A199853

/-!
# A199854: Primes of the form 1 + m^2 + n^2 with gcd(m,n)=1.

The programs for A199854, the canonical program `A199854.P12173923621709400113` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199854 has offset 1).

The definition of A199854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199854.P12173923621709400113

`p?[2*A004613(n+1)+1]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A199854

/-- `p?[2*A004613(n+1)+1]` -/
def P12173923621709400113.Spec : Prop :=
  ∀ n, P12173923621709400113.a n = A199854 (n + 1)

theorem P12173923621709400113.correct : P12173923621709400113.Spec := by
  intro n
  simp only [A199854, Nat.add_sub_cancel]

end A199854

/-! ## A199854.P8210346978245028389

`record[A020639(2*A004613(n+1)+1)]`
-/

namespace A199854.P8210346978245028389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A004613 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199854.P8210346978245028389

namespace A199854

/-- `record[A020639(2*A004613(n+1)+1)]` -/
def P8210346978245028389.Spec : Prop :=
  ∀ n, P8210346978245028389.a n = A199854 (n + 1)

end A199854

/-! ## A199854.P7595214612198245903

`p?[A008784(n+2)+1]`
-/

namespace A199854.P7595214612198245903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199854.P7595214612198245903

namespace A199854

/-- `p?[A008784(n+2)+1]` -/
def P7595214612198245903.Spec : Prop :=
  ∀ n, P7595214612198245903.a n = A199854 (n + 1)

end A199854

/-! ## A199854.P2475326579027903669

`p?[A005843(A004613(n+1))+1]`
-/

namespace A199854.P2475326579027903669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004613 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199854.P2475326579027903669

namespace A199854

/-- `p?[A005843(A004613(n+1))+1]` -/
def P2475326579027903669.Spec : Prop :=
  ∀ n, P2475326579027903669.a n = A199854 (n + 1)

end A199854

/-! ## A199854.P18212028496196430795

`p?[A196499(n+2)+1]`
-/

namespace A199854.P18212028496196430795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A199854.P18212028496196430795

namespace A199854

/-- `p?[A196499(n+2)+1]` -/
def P18212028496196430795.Spec : Prop :=
  ∀ n, P18212028496196430795.a n = A199854 (n + 1)

end A199854

/-!
# A199855: Inverse permutation to A210521.

The programs for A199855, the canonical program `A199855.P14212829303038593170` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199855 has offset 1).

The definition of A199855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199855.P12005863974267309459

`A213196(A213171(a(n-1))+1)` with `a(0)=1`
-/

namespace A199855.P12005863974267309459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213196 (A213171 (a (n - 1)).toNat + 1).toNat

end

end A199855.P12005863974267309459

namespace A199855

/-- `A213196(A213171(a(n-1))+1)` -/
def P12005863974267309459.Spec : Prop :=
  ∀ n, P12005863974267309459.a n = A199855 (n + 1)

end A199855

/-! ## A199855.P8952623092214654921

`A213196(A213171(A213196(A213205(A213196(n+1)))))`
-/

namespace A199855.P8952623092214654921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213196 (A213171 (A213196 (A213205 (A213196 (n + 1)).toNat).toNat).toNat).toNat

end

end A199855.P8952623092214654921

namespace A199855

/-- `A213196(A213171(A213196(A213205(A213196(n+1)))))` -/
def P8952623092214654921.Spec : Prop :=
  ∀ n, P8952623092214654921.a n = A199855 (n + 1)

end A199855

/-! ## A199855.P13259181745179355758

`A209293(A380245(n+1))`
-/

namespace A199855.P13259181745179355758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A380245 (n + 1)).toNat

end

end A199855.P13259181745179355758

namespace A199855

/-- `A209293(A380245(n+1))` -/
def P13259181745179355758.Spec : Prop :=
  ∀ n, P13259181745179355758.a n = A199855 (n + 1)

end A199855

/-! ## A199855.P14212829303038593170

`1-(a(n-1)-eq[A005369(n), A266666(n)])` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199855

/-- `1-(a(n-1)-eq[A005369(n), A266666(n)])` -/
def P14212829303038593170.Spec : Prop :=
  ∀ n, P14212829303038593170.a n = A199855 (n + 1)

theorem P14212829303038593170.correct : P14212829303038593170.Spec := by
  intro n
  simp only [A199855, Nat.add_sub_cancel]

end A199855

/-! ## A199855.P7397128876446744359

`A280682(n+1)+1-a(n-1)` with `a(0)=1`
-/

namespace A199855.P7397128876446744359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280682 (n + 1) + 1 - a (n - 1)

end

end A199855.P7397128876446744359

namespace A199855

/-- `A280682(n+1)+1-a(n-1)` -/
def P7397128876446744359.Spec : Prop :=
  ∀ n, P7397128876446744359.a n = A199855 (n + 1)

end A199855

/-! ## A199855.P2113761965628714970

`record[A210959(A141310(n+1)+1)]-a(n-1)` with `a(0)=1`
-/

namespace A199855.P2113761965628714970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (A141310 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A199855.P2113761965628714970

namespace A199855

/-- `record[A210959(A141310(n+1)+1)]-a(n-1)` -/
def P2113761965628714970.Spec : Prop :=
  ∀ n, P2113761965628714970.a n = A199855 (n + 1)

end A199855

/-!
# A199856: Triangle T(n,k), read by rows, given by (-1,3,0,0,0,0,0,0,0,0,0,...) DELTA (1,0,-1/3,1/3,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A199856, the canonical program `A199856.P7290988882698941549` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199856 has offset 0).

The definition of A199856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199856.P7290988882698941549

`2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-2, a(4)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199856

/-- `2*T(n-1,k)+T(n-1,k-1)-T(n-2,k-1)` -/
def P7290988882698941549.Spec : Prop :=
  ∀ n, P7290988882698941549.a n = A199856 n

theorem P7290988882698941549.correct : P7290988882698941549.Spec := by
  intro n
  simp only [A199856]

end A199856

/-! ## A199856.P9119175408955405070

`Δ[A073424(n)-A055587(n)]`
-/

namespace A199856.P9119175408955405070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n - A055587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199856.P9119175408955405070

namespace A199856

/-- `Δ[A073424(n)-A055587(n)]` -/
def P9119175408955405070.Spec : Prop :=
  ∀ n, P9119175408955405070.a n = A199856 n

end A199856

/-! ## A199856.P18231625805330728888

`A103452(n)-Δ[A055587(n)]`
-/

namespace A199856.P18231625805330728888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n - (f1 (n + 1) - f1 n)

end

end A199856.P18231625805330728888

namespace A199856

/-- `A103452(n)-Δ[A055587(n)]` -/
def P18231625805330728888.Spec : Prop :=
  ∀ n, P18231625805330728888.a n = A199856 n

end A199856

/-! ## A199856.P9238450504156263695

`A000007(n)-Δ[A049600(A038722(n+1))]`
-/

namespace A199856.P9238450504156263695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A199856.P9238450504156263695

namespace A199856

/-- `A000007(n)-Δ[A049600(A038722(n+1))]` -/
def P9238450504156263695.Spec : Prop :=
  ∀ n, P9238450504156263695.a n = A199856 n

end A199856

/-! ## A199856.P8428057655771457833

`Δ[A040000(n)-A049600(A038722(n+1))]`
-/

namespace A199856.P8428057655771457833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n - A049600 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199856.P8428057655771457833

namespace A199856

/-- `Δ[A040000(n)-A049600(A038722(n+1))]` -/
def P8428057655771457833.Spec : Prop :=
  ∀ n, P8428057655771457833.a n = A199856 n

end A199856

/-! ## A199856.P1369739263320403695

`Δ[A057427(n)-A049600(A038722(n+1))]`
-/

namespace A199856.P1369739263320403695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A049600 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199856.P1369739263320403695

namespace A199856

/-- `Δ[A057427(n)-A049600(A038722(n+1))]` -/
def P1369739263320403695.Spec : Prop :=
  ∀ n, P1369739263320403695.a n = A199856 n

end A199856

/-! ## A199856.P12866139821239763279

`Δ[A000122(n²)-A049600(A038722(n+1))]`
-/

namespace A199856.P12866139821239763279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) - A049600 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199856.P12866139821239763279

namespace A199856

/-- `Δ[A000122(n²)-A049600(A038722(n+1))]` -/
def P12866139821239763279.Spec : Prop :=
  ∀ n, P12866139821239763279.a n = A199856 n

end A199856

/-!
# A199859: Numbers k such that 6k-5 is a composite number of the form (6x-5)*(6y-5) when x or y is not equal to 1 except for k=1.

The programs for A199859, there is no canonical definition to state claims against.
-/

/-! ## A199859.P4465048509820476327

`eq[1, A007862(A359309(n+1)+1)]+1`
-/

namespace A199859.P4465048509820476327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A359309 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A199859.P4465048509820476327

/-! ## A199859.P1417295236758758201

`record[A217593(A359212(2*n+1))*(n+1)]`
-/

namespace A199859.P1417295236758758201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217593 (A359212 (2 * n + 1)).toNat * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199859.P1417295236758758201

/-!
# A199860: Numbers k such that 6k-5 is a composite number of the form (6x-1) * (6y-1).

The programs for A199860, there is no canonical definition to state claims against.
-/

/-! ## A199860.P17628231931355465132

`A070799(n+1)+1`
-/

namespace A199860.P17628231931355465132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070799 (n + 1) + 1

end

end A199860.P17628231931355465132

/-! ## A199860.P15793402851334420328

`lt[0, A359327(1+n)]+1`
-/

namespace A199860.P15793402851334420328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359327 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199860.P15793402851334420328

/-! ## A199860.P13448131533096435745

`lt[A376755(n+1), 1]+2`
-/

namespace A199860.P13448131533096435745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376755 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A199860.P13448131533096435745

/-! ## A199860.P14011581939072010242

`lt[0, A359325(3*n+1)]+1`
-/

namespace A199860.P14011581939072010242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359325 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199860.P14011581939072010242

/-! ## A199860.P12604900891817189699

`lt[1, A363891(2*n+1)]+1`
-/

namespace A199860.P12604900891817189699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363891 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199860.P12604900891817189699

/-! ## A199860.P17212556813832440030

`eq[0, A000086(6*n+1)]+1`
-/

namespace A199860.P17212556813832440030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A199860.P17212556813832440030

/-! ## A199860.P12022870352987582875

`eq[0, A000091(6*n+1)]+1`
-/

namespace A199860.P12022870352987582875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000091 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A199860.P12022870352987582875

/-! ## A199860.P12997076923261537696

`eq[0, A091393(6*n+1)]+1`
-/

namespace A199860.P12997076923261537696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A199860.P12997076923261537696

/-! ## A199860.P16189012312626680309

`lt[2, A343430(6*n+1)]+1`
-/

namespace A199860.P16189012312626680309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A199860.P16189012312626680309

/-! ## A199860.P6152816132854296663

`A020725(A070799(n+1))`
-/

namespace A199860.P6152816132854296663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A070799 (n + 1)).toNat

end

end A199860.P6152816132854296663

/-!
# A199874: G.f. satisfies A(x) = (1 + x*A(x)^2)*(1 + x^2*A(x)^2).

The programs for A199874, there is no canonical definition to state claims against.
-/

/-! ## A199874.P5947586296815310357

`A077467(A149668(n))`
-/

namespace A199874.P5947586296815310357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077467 (A149668 n).toNat

end

end A199874.P5947586296815310357

/-! ## A199874.P3687369191590998930

`A350348(A063029(n+1))`
-/

namespace A199874.P3687369191590998930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A063029 (n + 1)).toNat

end

end A199874.P3687369191590998930

/-!
# A199875: G.f. satisfies: A(x) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^3 * x^k] * x^n*A(x)^n/n ).

The programs for A199875, there is no canonical definition to state claims against.
-/

/-! ## A199875.P17451479077293259034

`A094754(A094651(n))+A094601(n)`
-/

namespace A199875.P17451479077293259034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094754 (A094651 n).toNat + A094601 n

end

end A199875.P17451479077293259034

/-! ## A199875.P9995846843341738876

`A094754(A094651(n))+A094600(2*n)/(n+1)`
-/

namespace A199875.P9995846843341738876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094754 (A094651 n).toNat : ℚ) + (A094600 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A199875.P9995846843341738876

/-!
# A199876: G.f. satisfies: A(x) = (1 + x*A(x)^3)*(1 + x^2*A(x)^3).

The programs for A199876, there is no canonical definition to state claims against.
-/

/-! ## A199876.P6345220906579667996

`A277193(A005500(n))`
-/

namespace A199876.P6345220906579667996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A005500 n).toNat

end

end A199876.P6345220906579667996

/-! ## A199876.P14759255550639122110

`A316964(A115671(n²))`
-/

namespace A199876.P14759255550639122110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A115671 (n ^ 2)).toNat

end

end A199876.P14759255550639122110

/-!
# A199877: G.f. satisfies: A(x) = (1 + x*A(x)^4)*(1 + x^2*A(x)^4).

The programs for A199877, there is no canonical definition to state claims against.
-/

/-! ## A199877.P11543916130091771074

`A357492(A112916(n))-n`
-/

namespace A199877.P11543916130091771074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357492 (A112916 n).toNat - (n : ℤ)

end

end A199877.P11543916130091771074

/-! ## A199877.P6065311930613693858

`or(∑[n²], A160172(A000108(n)))`
-/

namespace A199877.P6065311930613693858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A160172 (A000108 n).toNat)

end

end A199877.P6065311930613693858

/-!
# A199881: Triangle T(n,k), read by rows, given by (1,-1,0,0,0,0,0,0,0,0,0,...) DELTA (1,0,-1,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A199881, the canonical program `A199881.P1582181049515234003` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199881 has offset 0).

The definition of A199881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199881.P1582181049515234003

`T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199881

/-- `T(n-1,k-1)+T(n-2,k-1)` -/
def P1582181049515234003.Spec : Prop :=
  ∀ n, (P1582181049515234003.a n : ℤ) = A199881 n

theorem P1582181049515234003.correct : P1582181049515234003.Spec := by
  intro n
  simp only [A199881]

end A199881

/-! ## A199881.P10637622868417059747

`A284938(n+1)+A026729(A083920(n))`
-/

namespace A199881.P10637622868417059747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 1) + A026729 (A083920 n).toNat

end

end A199881.P10637622868417059747

namespace A199881

/-- `A284938(n+1)+A026729(A083920(n))` -/
def P10637622868417059747.Spec : Prop :=
  ∀ n, P10637622868417059747.a n = A199881 n

end A199881

/-! ## A199881.P3672907248385047169

`A284938(n+1)+A026729(∑[2%A193842(n)/2])`
-/

namespace A199881.P3672907248385047169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod 2 (A193842 n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 1) + A026729 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A199881.P3672907248385047169

namespace A199881

/-- `A284938(n+1)+A026729(∑[2%A193842(n)/2])` -/
def P3672907248385047169.Spec : Prop :=
  ∀ n, P3672907248385047169.a n = A199881 n

end A199881

/-! ## A199881.P14680857596255628654

`gcd(C(2, n), Δ[A057094(n)])`
-/

namespace A199881.P14680857596255628654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (f1 (n + 1) - f1 n)

end

end A199881.P14680857596255628654

namespace A199881

/-- `gcd(C(2, n), Δ[A057094(n)])` -/
def P14680857596255628654.Spec : Prop :=
  ∀ n, (P14680857596255628654.a n : ℤ) = A199881 n

end A199881

/-! ## A199881.P2533817699487207762

`abs(A000007(n)+Δ[A057094(n)])`
-/

namespace A199881.P2533817699487207762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n + (f1 (n + 1) - f1 n)|

end

end A199881.P2533817699487207762

namespace A199881

/-- `abs(A000007(n)+Δ[A057094(n)])` -/
def P2533817699487207762.Spec : Prop :=
  ∀ n, P2533817699487207762.a n = A199881 n

end A199881

/-! ## A199881.P6227113382662723034

`abs(Δ[A057428(n)+A057094(n)])`
-/

namespace A199881.P6227113382662723034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A057094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A199881.P6227113382662723034

namespace A199881

/-- `abs(Δ[A057428(n)+A057094(n)])` -/
def P6227113382662723034.Spec : Prop :=
  ∀ n, P6227113382662723034.a n = A199881 n

end A199881

/-! ## A199881.P74826043078920729

`A284938(n+1)+A284938(n+2)+A000007(n)`
-/

namespace A199881.P74826043078920729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284938 (n + 1) + (A284938 (n + 2) + A000007 n)

end

end A199881.P74826043078920729

namespace A199881

/-- `A284938(n+1)+A284938(n+2)+A000007(n)` -/
def P74826043078920729.Spec : Prop :=
  ∀ n, P74826043078920729.a n = A199881 n

end A199881

/-!
# A199882: E.g.f. A(x) satisfies differential equation A'''(x)=A(x)+A(x)^2, A(0)=0, A'(0)=1, A''(0)=1, A'''(0)=1.

The programs for A199882, there is no canonical definition to state claims against.
-/

/-! ## A199882.P7228911734651974982

`A265527(A333497(n))`
-/

namespace A199882.P7228911734651974982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A333497 n).toNat

end

end A199882.P7228911734651974982

/-! ## A199882.P3429339142154722921

`A265527(A369496(n))`
-/

namespace A199882.P3429339142154722921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A369496 n).toNat

end

end A199882.P3429339142154722921

/-! ## A199882.P7678548422988238546

`A147104(A100800(n+1))`
-/

namespace A199882.P7678548422988238546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147104 (A100800 (n + 1)).toNat

end

end A199882.P7678548422988238546

/-! ## A199882.P17572695077468802871

`A147104(A110725(n+1))`
-/

namespace A199882.P17572695077468802871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147104 (A110725 (n + 1)).toNat

end

end A199882.P17572695077468802871

/-! ## A199882.P6163860042749009275

`A147104(A169919(n+1))`
-/

namespace A199882.P6163860042749009275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147104 (A169919 (n + 1)).toNat

end

end A199882.P6163860042749009275

/-!
# A199883: Number of distinct values taken by 6th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A199883, there is no canonical definition to state claims against.
-/

/-! ## A199883.P10178363634014914928

`A216368(∑[∑[A249351(n+1)]])`
-/

namespace A199883.P10178363634014914928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199883.P10178363634014914928

/-! ## A199883.P6327948825080881571

`A216368(∑[A124808(n+1)-1])`
-/

namespace A199883.P6327948825080881571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124808 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199883.P6327948825080881571

/-! ## A199883.P8702930345626724340

`A216368(∑[A016143(2*n)]+∑[n])`
-/

namespace A199883.P8702930345626724340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016143 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A199883.P8702930345626724340

/-! ## A199883.P1064606093758091684

`A175424(A000598(n))+A130802(n+1)`
-/

namespace A199883.P1064606093758091684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 (A000598 n).toNat + A130802 (n + 1)

end

end A199883.P1064606093758091684

/-! ## A199883.P701142128804432363

`A027826(n)-A337683(A001037(n+1))`
-/

namespace A199883.P701142128804432363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 n - A337683 (A001037 (n + 1)).toNat

end

end A199883.P701142128804432363

/-!
# A199884: Number of compositions of n such that the number of parts is not divisible by the greatest part.

The programs for A199884, there is no canonical definition to state claims against.
-/

/-! ## A199884.P11326765798894090283

`A000079(n)-A171634(n+1)`
-/

namespace A199884.P11326765798894090283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A171634 (n + 1)

end

end A199884.P11326765798894090283

/-! ## A199884.P11374357874749713497

`2^n-A171634(n+1)`
-/

namespace A199884.P11374357874749713497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A171634 (n + 1)

end

end A199884.P11374357874749713497

/-! ## A199884.P7756416292913670914

`and(-A171634(n+1), A000225(n))`
-/

namespace A199884.P7756416292913670914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A171634 (n + 1)) (A000225 n)

end

end A199884.P7756416292913670914

/-! ## A199884.P2565372142866052235

`abs(A011782(n+1)-A171634(n+1))`
-/

namespace A199884.P2565372142866052235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A171634 (n + 1)|

end

end A199884.P2565372142866052235

/-! ## A199884.P4911521936609936458

`A171632(n+1)+A199885(n+1)-A171634(n+1)`
-/

namespace A199884.P4911521936609936458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171632 (n + 1) + (A199885 (n + 1) - A171634 (n + 1))

end

end A199884.P4911521936609936458

/-!
# A199885: Number of compositions of n such that the greatest part is not divisible by the number of parts.

The programs for A199885, there is no canonical definition to state claims against.
-/

/-! ## A199885.P5205244773706834604

`A000079(n)-A171632(n+1)`
-/

namespace A199885.P5205244773706834604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A171632 (n + 1)

end

end A199885.P5205244773706834604

/-! ## A199885.P15042402602748296741

`2^n-A171632(n+1)`
-/

namespace A199885.P15042402602748296741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A171632 (n + 1)

end

end A199885.P15042402602748296741

/-! ## A199885.P18329722907271247889

`and(-A171632(n+1), A000225(n))`
-/

namespace A199885.P18329722907271247889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A171632 (n + 1)) (A000225 n)

end

end A199885.P18329722907271247889

/-! ## A199885.P6125827666857851333

`A000051(n)-(A171632(n+1)+1)`
-/

namespace A199885.P6125827666857851333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A171632 (n + 1) + 1)

end

end A199885.P6125827666857851333

/-! ## A199885.P11311176332818338509

`A000918(n)+2-A171632(n+1)`
-/

namespace A199885.P11311176332818338509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A171632 (n + 1))

end

end A199885.P11311176332818338509

/-! ## A199885.P16512764108465269961

`A000079(n+1)%(A171632(n+1)+A000079(n))`
-/

namespace A199885.P16512764108465269961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (A171632 (n + 1) + A000079 n)

end

end A199885.P16512764108465269961

/-! ## A199885.P14644751936339712474

`A171634(n+1)+A199884(n+1)-A171632(n+1)`
-/

namespace A199885.P14644751936339712474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171634 (n + 1) + (A199884 (n + 1) - A171632 (n + 1))

end

end A199885.P14644751936339712474

/-!
# A199886: Number of compositions of n such that the number of parts and the greatest part are coprime.

The programs for A199886, there is no canonical definition to state claims against.
-/

/-! ## A199886.P4199661657160197461

`A000079(n)-A199887(n+1)`
-/

namespace A199886.P4199661657160197461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A199887 (n + 1)

end

end A199886.P4199661657160197461

/-! ## A199886.P1969520627302798263

`2^n-A199887(n+1)`
-/

namespace A199886.P1969520627302798263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A199887 (n + 1)

end

end A199886.P1969520627302798263

/-! ## A199886.P13906756100470794620

`A000051(n)-(A199887(n+1)+1)`
-/

namespace A199886.P13906756100470794620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A199887 (n + 1) + 1)

end

end A199886.P13906756100470794620

/-! ## A199886.P13440863386768591334

`A000225(n)+1-A199887(n+1)`
-/

namespace A199886.P13440863386768591334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A199887 (n + 1))

end

end A199886.P13440863386768591334

/-! ## A199886.P2210811658046018084

`A052548(n)-(A199887(n+1)+2)`
-/

namespace A199886.P2210811658046018084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A199887 (n + 1) + 2)

end

end A199886.P2210811658046018084

/-!
# A199887: Number of compositions of n such that the number of parts and the greatest part are not coprime.

The programs for A199887, there is no canonical definition to state claims against.
-/

/-! ## A199887.P7444816660964596391

`A000079(n)-A199886(n+1)`
-/

namespace A199887.P7444816660964596391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A199886 (n + 1)

end

end A199887.P7444816660964596391

/-! ## A199887.P7408854022559732035

`2^n-A199886(n+1)`
-/

namespace A199887.P7408854022559732035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A199886 (n + 1)

end

end A199887.P7408854022559732035

/-! ## A199887.P10762677723662165868

`and(-A199886(n+1), A000225(n))`
-/

namespace A199887.P10762677723662165868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A199886 (n + 1)) (A000225 n)

end

end A199887.P10762677723662165868

/-! ## A199887.P6445152318707631791

`A052548(n)-(A199886(n+1)+2)`
-/

namespace A199887.P6445152318707631791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n - (A199886 (n + 1) + 2)

end

end A199887.P6445152318707631791

/-! ## A199887.P8248647115386853865

`abs(A199886(n+1)-Δ[A000051(n)])`
-/

namespace A199887.P8248647115386853865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199886 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A199887.P8248647115386853865

/-! ## A199887.P13101762449864050859

`A000079(n+1)%(A199886(n+1)+A000079(n))`
-/

namespace A199887.P13101762449864050859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (n + 1)) (A199886 (n + 1) + A000079 n)

end

end A199887.P13101762449864050859

/-! ## A199887.P2578792403366902286

`A199888(n+1)+A199889(n+1)-A199886(n+1)`
-/

namespace A199887.P2578792403366902286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199888 (n + 1) + (A199889 (n + 1) - A199886 (n + 1))

end

end A199887.P2578792403366902286

/-!
# A199888: Number of compositions of n such that the number of parts and the smallest part are coprime.

The programs for A199888, there is no canonical definition to state claims against.
-/

/-! ## A199888.P17768422848587762689

`A000079(n)-A199889(n+1)`
-/

namespace A199888.P17768422848587762689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A199889 (n + 1)

end

end A199888.P17768422848587762689

/-! ## A199888.P8800766188130292365

`2^n-A199889(n+1)`
-/

namespace A199888.P8800766188130292365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A199889 (n + 1)

end

end A199888.P8800766188130292365

/-! ## A199888.P6503029650917773723

`abs(A199889(n+1)-A171449(n))`
-/

namespace A199888.P6503029650917773723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199889 (n + 1) - A171449 n|

end

end A199888.P6503029650917773723

/-! ## A199888.P17644343648536956210

`A000225(n)+1-A199889(n+1)`
-/

namespace A199888.P17644343648536956210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A199889 (n + 1))

end

end A199888.P17644343648536956210

/-! ## A199888.P10583108757149183272

`A000038(n)+A171449(n)-A199889(n+1)`
-/

namespace A199888.P10583108757149183272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A171449 n - A199889 (n + 1))

end

end A199888.P10583108757149183272

/-! ## A199888.P4707419264701251747

`lcm(A199889(n+1)-A171449(n), A152271(2*n))`
-/

namespace A199888.P4707419264701251747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A199889 (n + 1) - A171449 n) (A152271 (2 * n))

end

end A199888.P4707419264701251747

/-! ## A199888.P15120444927183583116

`(A199889(n+1)-A171449(n))*A008683(A158611(n+2))`
-/

namespace A199888.P15120444927183583116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A199889 (n + 1) - A171449 n) * A008683 (A158611 (n + 2)).toNat

end

end A199888.P15120444927183583116

/-! ## A199888.P594907329968957079

`A052548(n+1)-(A199889(n+1)+A052548(n))`
-/

namespace A199888.P594907329968957079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (n + 1) - (A199889 (n + 1) + A052548 n)

end

end A199888.P594907329968957079

/-!
# A199889: Number of compositions of n such that the number of parts and the smallest part are not coprime.

The programs for A199889, there is no canonical definition to state claims against.
-/

/-! ## A199889.P12852895778391626730

`A000079(n)-A199888(n+1)`
-/

namespace A199889.P12852895778391626730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A199888 (n + 1)

end

end A199889.P12852895778391626730

/-! ## A199889.P13345377607091794375

`2^n-A199888(n+1)`
-/

namespace A199889.P13345377607091794375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A199888 (n + 1)

end

end A199889.P13345377607091794375

/-! ## A199889.P12287663393657783000

`A155559(n)%A199888(n+1)`
-/

namespace A199889.P12287663393657783000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (A199888 (n + 1))

end

end A199889.P12287663393657783000

/-! ## A199889.P4235644219759939942

`A171449(n)%A199888(n+1)`
-/

namespace A199889.P4235644219759939942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171449 n) (A199888 (n + 1))

end

end A199889.P4235644219759939942

/-! ## A199889.P461256210625673055

`A171559(n)%A199888(n+1)`
-/

namespace A199889.P461256210625673055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171559 n) (A199888 (n + 1))

end

end A199889.P461256210625673055

/-! ## A199889.P739581605653052064

`A186949(n)%A199888(n+1)`
-/

namespace A199889.P739581605653052064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186949 n) (A199888 (n + 1))

end

end A199889.P739581605653052064

/-! ## A199889.P16398705876646991330

`A000225(n)+1-A199888(n+1)`
-/

namespace A199889.P16398705876646991330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A199888 (n + 1))

end

end A199889.P16398705876646991330

/-! ## A199889.P11269036396728683082

`A052548(n+1)-(A199888(n+1)+A052548(n))`
-/

namespace A199889.P11269036396728683082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 (n + 1) - (A199888 (n + 1) + A052548 n)

end

end A199889.P11269036396728683082

/-!
# A199892: Number of -2..2 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199892, there is no canonical definition to state claims against.
-/

/-! ## A199892.P44082296197614503

`A199898(∑[n+2])`
-/

namespace A199892.P44082296197614503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199892.P44082296197614503

/-! ## A199892.P2923130758561623420

`record[gcd(A008290(n), A199898(n+1))]`
-/

namespace A199892.P2923130758561623420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A199898 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199892.P2923130758561623420

/-! ## A199892.P11065197027163569575

`record[A199898(A000096(A050873(n+1)))]`
-/

namespace A199892.P11065197027163569575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000096 (A050873 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199892.P11065197027163569575

/-! ## A199892.P9381452919849775195

`record[A199898(A000096(A067815(n+1)))]`
-/

namespace A199892.P9381452919849775195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000096 (A067815 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199892.P9381452919849775195

/-! ## A199892.P13846079867253449032

`record[A199898(A000096(A101296(n+1)))]`
-/

namespace A199892.P13846079867253449032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000096 (A101296 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199892.P13846079867253449032

/-!
# A199893: Number of -3..3 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199893, there is no canonical definition to state claims against.
-/

/-! ## A199893.P18049619700293828374

`A199898(∑[n+3]+1)`
-/

namespace A199893.P18049619700293828374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199893.P18049619700293828374

/-! ## A199893.P3517845857831650539

`or(1, A199898(Δ[A008778(n)]))`
-/

namespace A199893.P3517845857831650539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A199898 (f1 (n + 1) - f1 n).toNat)

end

end A199893.P3517845857831650539

/-! ## A199893.P10033984138078758294

`or(1, A199898(A034856(n+2)))`
-/

namespace A199893.P10033984138078758294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A199898 (A034856 (n + 2)).toNat)

end

end A199893.P10033984138078758294

/-! ## A199893.P70070651689240661

`A199898(Δ[A008778(n)])%A011557(n+1)`
-/

namespace A199893.P70070651689240661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199898 (f1 (n + 1) - f1 n).toNat) (A011557 (n + 1))

end

end A199893.P70070651689240661

/-! ## A199893.P11276575931645606162

`A199898(A034856(n+2))+A000035(2*(n+2))`
-/

namespace A199893.P11276575931645606162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A034856 (n + 2)).toNat + A000035 (2 * (n + 2))

end

end A199893.P11276575931645606162

/-!
# A199894: Number of -4..4 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199894, there is no canonical definition to state claims against.
-/

/-! ## A199894.P6138358021294297267

`A199898(A027379(n+2))`
-/

namespace A199894.P6138358021294297267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A027379 (n + 2)).toNat

end

end A199894.P6138358021294297267

/-! ## A199894.P6451601211756251024

`A199898(A055998(n+2))`
-/

namespace A199894.P6451601211756251024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A055998 (n + 2)).toNat

end

end A199894.P6451601211756251024

/-! ## A199894.P15546999396687014441

`A199898(A155212(n)+5)`
-/

namespace A199894.P15546999396687014441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A155212 n + 5).toNat

end

end A199894.P15546999396687014441

/-! ## A199894.P14175691240437490155

`A199898(A056000(n)+7)`
-/

namespace A199894.P14175691240437490155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A056000 n + 7).toNat

end

end A199894.P14175691240437490155

/-! ## A199894.P6656727532280882322

`A199898(∑[A020705(n)]+3)`
-/

namespace A199894.P6656727532280882322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A199894.P6656727532280882322

/-!
# A199895: Number of -5..5 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199895, there is no canonical definition to state claims against.
-/

/-! ## A199895.P7871855371243262359

`A199898(Δ[A264443(n)])`
-/

namespace A199895.P7871855371243262359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (f1 (n + 1) - f1 n).toNat

end

end A199895.P7871855371243262359

/-! ## A199895.P3533741663396661122

`A199898(A046691(n+3))`
-/

namespace A199895.P3533741663396661122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A046691 (n + 3)).toNat

end

end A199895.P3533741663396661122

/-! ## A199895.P5266436943028485968

`A199898(A056115(n)+11)`
-/

namespace A199895.P5266436943028485968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A056115 n + 11).toNat

end

end A199895.P5266436943028485968

/-! ## A199895.P18172142280638734962

`A199898(Δ[A023545(n+1)])`
-/

namespace A199895.P18172142280638734962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (f1 (n + 1) - f1 n).toNat

end

end A199895.P18172142280638734962

/-! ## A199895.P17990673734209585567

`A199898(A000124(A020705(n))+n)`
-/

namespace A199895.P17990673734209585567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000124 (A020705 n).toNat + (n : ℤ)).toNat

end

end A199895.P17990673734209585567

/-!
# A199896: Number of -6..6 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199896, there is no canonical definition to state claims against.
-/

/-! ## A199896.P2859553455977781307

`A199898(A052905(n+3))`
-/

namespace A199896.P2859553455977781307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A052905 (n + 3)).toNat

end

end A199896.P2859553455977781307

/-! ## A199896.P8099703391644555232

`A199898(A046691(n+4)-1)`
-/

namespace A199896.P8099703391644555232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A046691 (n + 4) - 1).toNat

end

end A199896.P8099703391644555232

/-! ## A199896.P147795097347550832

`A199898(A034856(n+5)-3)`
-/

namespace A199896.P147795097347550832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A034856 (n + 5) - 3).toNat

end

end A199896.P147795097347550832

/-! ## A199896.P8387128688061886109

`A199898(A000217(n+6)-5)`
-/

namespace A199896.P8387128688061886109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000217 (n + 6) - 5).toNat

end

end A199896.P8387128688061886109

/-! ## A199896.P14448814395876537972

`A199898(Δ[A023551(n+1)]+1)`
-/

namespace A199896.P14448814395876537972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (f1 (n + 1) - f1 n + 1).toNat

end

end A199896.P14448814395876537972

/-!
# A199897: Number of -7..7 arrays x(0..n-1) of n elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199897, there is no canonical definition to state claims against.
-/

/-! ## A199897.P4807801774972176652

`A199898(A055999(n+4))`
-/

namespace A199897.P4807801774972176652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A055999 (n + 4)).toNat

end

end A199897.P4807801774972176652

/-! ## A199897.P5664087940895574645

`A199898(Δ[A023551(n+2)])`
-/

namespace A199897.P5664087940895574645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (f1 (n + 1) - f1 n).toNat

end

end A199897.P5664087940895574645

/-! ## A199897.P6241190995306466089

`A199898(A046691(n+5)-2)`
-/

namespace A199897.P6241190995306466089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A046691 (n + 5) - 2).toNat

end

end A199897.P6241190995306466089

/-! ## A199897.P12352184970925967849

`A199898(A060577(n+6)-2)`
-/

namespace A199897.P12352184970925967849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A060577 (n + 6) - 2).toNat

end

end A199897.P12352184970925967849

/-! ## A199897.P4474486109518288062

`A199898(A000124(n+7)-7)`
-/

namespace A199897.P4474486109518288062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199898 (A000124 (n + 7) - 7).toNat

end

end A199897.P4474486109518288062

/-!
# A199898: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199898, there is no canonical definition to state claims against.
-/

/-! ## A199898.P13826366594501640498

`A135383(2*A208341(n))`
-/

namespace A199898.P13826366594501640498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135383 (2 * A208341 n).toNat

end

end A199898.P13826366594501640498

/-! ## A199898.P14759302424725227965

`A178832(6*A208341(n))`
-/

namespace A199898.P14759302424725227965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (6 * A208341 n).toNat

end

end A199898.P14759302424725227965

/-! ## A199898.P9959140293080667904

`A135383(A208341(n)+A208341(n))`
-/

namespace A199898.P9959140293080667904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135383 (A208341 n + A208341 n).toNat

end

end A199898.P9959140293080667904

/-! ## A199898.P12248664928722133406

`∑{d}[A011782(A208341(n)), A020639(#)]`
-/

namespace A199898.P12248664928722133406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A208341 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A199898.P12248664928722133406

/-! ## A199898.P3706127941134254586

`A006257(A208341(n)+A000225(n+4))`
-/

namespace A199898.P3706127941134254586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A208341 n + A000225 (n + 4)).toNat

end

end A199898.P3706127941134254586

/-!
# A199899: Number of -n..n arrays x(0..3) of 4 elements with zero sum, and adjacent elements not both strictly positive and not both strictly negative.

The programs for A199899, the canonical program `A199899.P16333487066965625986` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199899 has offset 1).

The definition of A199899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199899.P5018563593315565175

`Δ[(2-(n+2)²)²/3]`
-/

namespace A199899.P5018563593315565175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - ((n + 2) ^ 2 : ℤ)) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199899.P5018563593315565175

namespace A199899

/-- `Δ[(2-(n+2)²)²/3]` -/
def P5018563593315565175.Spec : Prop :=
  ∀ n, P5018563593315565175.a n = (A199899 (n + 1) : ℚ)

theorem P5018563593315565175.correct : P5018563593315565175.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A199899, Nat.add_sub_cancel, A199899.P5018563593315565175.f1, A199899.P5018563593315565175.a, A199899.P16333487066965625986.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A199899, Nat.add_sub_cancel, A199899.P5018563593315565175.f1, A199899.P5018563593315565175.a, A199899.P16333487066965625986.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A199899

/-! ## A199899.P15643787442714232712

`ogf((15-11x+5x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A199899.P15643787442714232712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -11, 5, -1] [1, -4, 6, -4, 1] n

end

end A199899.P15643787442714232712

namespace A199899

/-- `ogf((15-11x+5x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P15643787442714232712.Spec : Prop :=
  ∀ n, P15643787442714232712.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P8190331111287646137

`∑[record[(2*(2-n))²]]-(2*n+1)`
-/

namespace A199899.P8190331111287646137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 - (n : ℤ))) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A199899.P8190331111287646137

namespace A199899

/-- `∑[record[(2*(2-n))²]]-(2*n+1)` -/
def P8190331111287646137.Spec : Prop :=
  ∀ n, P8190331111287646137.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P15262245022193540259

`∑[lcm(2, (2*(n+2))²)]-(2*n+1)`
-/

namespace A199899.P15262245022193540259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * (n + 2)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A199899.P15262245022193540259

namespace A199899

/-- `∑[lcm(2, (2*(n+2))²)]-(2*n+1)` -/
def P15262245022193540259.Spec : Prop :=
  ∀ n, P15262245022193540259.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P9015014946439895642

`∑[∩[(2*n)², (n+3)²]]-(2*n+1)`
-/

namespace A199899.P9015014946439895642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A199899.P9015014946439895642

namespace A199899

/-- `∑[∩[(2*n)², (n+3)²]]-(2*n+1)` -/
def P9015014946439895642.Spec : Prop :=
  ∀ n, P9015014946439895642.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P8109607572194186654

`∑[((n+2)*gcd(2, 2*n))²]-(2*n+1)`
-/

namespace A199899.P8109607572194186654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.gcd 2 (2 * n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A199899.P8109607572194186654

namespace A199899

/-- `∑[((n+2)*gcd(2, 2*n))²]-(2*n+1)` -/
def P8109607572194186654.Spec : Prop :=
  ∀ n, P8109607572194186654.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P6580251433021074514

`∑[(2*C(n+2, n+1))²]-(2*n+1)`
-/

namespace A199899.P6580251433021074514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (n + 2) (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 * n + 1 : ℤ)

end

end A199899.P6580251433021074514

namespace A199899

/-- `∑[(2*C(n+2, n+1))²]-(2*n+1)` -/
def P6580251433021074514.Spec : Prop :=
  ∀ n, P6580251433021074514.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P16333487066965625986

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=15, a(1)=49, a(2)=111, a(3)=209`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A199899

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16333487066965625986.Spec : Prop :=
  ∀ n, P16333487066965625986.a n = A199899 (n + 1)

theorem P16333487066965625986.correct : P16333487066965625986.Spec := by
  intro n
  simp only [A199899, Nat.add_sub_cancel]

end A199899

/-! ## A199899.P18351070336109084334

`∑[A228318(n+1)]+n²`
-/

namespace A199899.P18351070336109084334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A199899.P18351070336109084334

namespace A199899

/-- `∑[A228318(n+1)]+n²` -/
def P18351070336109084334.Spec : Prop :=
  ∀ n, P18351070336109084334.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P6896630334539494651

`A099776(n+1)+∑[2*A099776(n+1)]`
-/

namespace A199899.P6896630334539494651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199899.P6896630334539494651

namespace A199899

/-- `A099776(n+1)+∑[2*A099776(n+1)]` -/
def P6896630334539494651.Spec : Prop :=
  ∀ n, P6896630334539494651.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P15385371588014078510

`Δ[A304725(n)]/3`
-/

namespace A199899.P15385371588014078510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 3

end

end A199899.P15385371588014078510

namespace A199899

/-- `Δ[A304725(n)]/3` -/
def P15385371588014078510.Spec : Prop :=
  ∀ n, P15385371588014078510.a n = (A199899 (n + 1) : ℚ)

theorem P15385371588014078510.correct : P15385371588014078510.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A199899, Nat.add_sub_cancel, A199899.P15385371588014078510.f1, A199899.P15385371588014078510.a, A199899.P16333487066965625986.a, A304725, A304725.P7536248727379043506.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A199899, Nat.add_sub_cancel, A199899.P15385371588014078510.f1, A199899.P15385371588014078510.a, A199899.P16333487066965625986.a, A304725, A304725.P7536248727379043506.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199899

/-! ## A199899.P1119504727578803439

`∑[A060626(n+1)]+1`
-/

namespace A199899.P1119504727578803439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A199899.P1119504727578803439

namespace A199899

/-- `∑[A060626(n+1)]+1` -/
def P1119504727578803439.Spec : Prop :=
  ∀ n, P1119504727578803439.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P9685748646026139322

`2*A131423(n+2)-1`
-/

namespace A199899.P9685748646026139322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131423 (n + 2) - 1

end

end A199899.P9685748646026139322

namespace A199899

/-- `2*A131423(n+2)-1` -/
def P9685748646026139322.Spec : Prop :=
  ∀ n, P9685748646026139322.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P14149478703671758196

`A268484(n+1)-(n+3)`
-/

namespace A199899.P14149478703671758196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268484 (n + 1) - (n + 3 : ℤ)

end

end A199899.P14149478703671758196

namespace A199899

/-- `A268484(n+1)-(n+3)` -/
def P14149478703671758196.Spec : Prop :=
  ∀ n, P14149478703671758196.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P16540179978897899804

`∑[A082109(n+1)]+n+2`
-/

namespace A199899.P16540179978897899804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)

end

end A199899.P16540179978897899804

namespace A199899

/-- `∑[A082109(n+1)]+n+2` -/
def P16540179978897899804.Spec : Prop :=
  ∀ n, P16540179978897899804.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P17575094687723401045

`∑[A184635(n+2)]-(2*n+1)`
-/

namespace A199899.P17575094687723401045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184635 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A199899.P17575094687723401045

namespace A199899

/-- `∑[A184635(n+2)]-(2*n+1)` -/
def P17575094687723401045.Spec : Prop :=
  ∀ n, P17575094687723401045.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P7868487624271570774

`∑[A184635(n+2)-A040000(n)]`
-/

namespace A199899.P7868487624271570774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184635 (n + 2) - A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199899.P7868487624271570774

namespace A199899

/-- `∑[A184635(n+2)-A040000(n)]` -/
def P7868487624271570774.Spec : Prop :=
  ∀ n, P7868487624271570774.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P4865291837688193876

`A033996(n+1)+A001845(n+1)`
-/

namespace A199899.P4865291837688193876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 (n + 1) + A001845 (n + 1)

end

end A199899.P4865291837688193876

namespace A199899

/-- `A033996(n+1)+A001845(n+1)` -/
def P4865291837688193876.Spec : Prop :=
  ∀ n, P4865291837688193876.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P8848934321883897872

`A001845(n+1)+2*A046092(n+1)`
-/

namespace A199899.P8848934321883897872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 1) + 2 * A046092 (n + 1)

end

end A199899.P8848934321883897872

namespace A199899

/-- `A001845(n+1)+2*A046092(n+1)` -/
def P8848934321883897872.Spec : Prop :=
  ∀ n, P8848934321883897872.a n = A199899 (n + 1)

end A199899

/-! ## A199899.P2865779834603460672

`A273316(n+1)+2*A005563(n+1)`
-/

namespace A199899.P2865779834603460672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 (n + 1) + 2 * A005563 (n + 1)

end

end A199899.P2865779834603460672

namespace A199899

/-- `A273316(n+1)+2*A005563(n+1)` -/
def P2865779834603460672.Spec : Prop :=
  ∀ n, P2865779834603460672.a n = A199899 (n + 1)

end A199899

