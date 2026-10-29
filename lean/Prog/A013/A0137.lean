import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C003
import Seq.B005.C001
import Seq.Opaque.C000
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A013700: Degree of variety K_{2,n}^3.

The programs for A013700, there is no canonical definition to state claims against.
-/

/-! ## A013700.P13120696487362991896

`record[A259475(A064225(n)+n)]`
-/

namespace A013700.P13120696487362991896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (A064225 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013700.P13120696487362991896

/-! ## A013700.P17095323948265658393

`A259475(A167614(3*n+5)+2*(n+1))`
-/

namespace A013700.P17095323948265658393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (A167614 (3 * n + 5) + (2 * (n + 1) : ℤ)).toNat

end

end A013700.P17095323948265658393

/-!
# A013701: Degree of variety K_{2,n}^4.

The programs for A013701, there is no canonical definition to state claims against.
-/

/-! ## A013701.P12512608077738747019

`A082635(A155212(n)+13)`
-/

namespace A013701.P12512608077738747019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082635 (A155212 n + 13).toNat

end

end A013701.P12512608077738747019

/-!
# A013703: Series(W(exp(1)*(1+x)), x) = sum( a[ n ]/(2^(2*n)*n!), n=0..infinity), where W is the Lambert W function.

The programs for A013703, there is no canonical definition to state claims against.
-/

/-! ## A013703.P6295675612680303710

`A138034(A289430(n))*A242369(n)`
-/

namespace A013703.P6295675612680303710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138034 (A289430 n).toNat * A242369 n

end

end A013703.P6295675612680303710

/-!
# A013704: Terms in perturbation solution of a heat transfer problem.

The programs for A013704, there is no canonical definition to state claims against.
-/

/-! ## A013704.P16668123098753673020

`A025495(n+1)`
-/

namespace A013704.P16668123098753673020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025495 (n + 1)

end

end A013704.P16668123098753673020

/-! ## A013704.P9287850245494991518

`record[A025495(abs(1-n))]`
-/

namespace A013704.P9287850245494991518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025495 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013704.P9287850245494991518

/-! ## A013704.P18166691926565196563

`Δ[abs(∑[A025495(n)]-1)]`
-/

namespace A013704.P18166691926565196563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025495 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013704.P18166691926565196563

/-! ## A013704.P14742173876520966993

`filter[A025495(n), A014306(#)]`
-/

namespace A013704.P14742173876520966993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A013704.P14742173876520966993

/-! ## A013704.P18363345966368339506

`filter[A025495(n), A043545(#)]`
-/

namespace A013704.P18363345966368339506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A013704.P18363345966368339506

/-!
# A013705: Decimal expansion of 4*Sum_{k=1..500000} (-1)^(k-1)/(2k-1).

The programs for A013705, there is no canonical definition to state claims against.
-/

/-! ## A013705.P15581283690740715965

`A000796(n)-A002483(A000579(n))`
-/

namespace A013705.P15581283690740715965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A002483 (A000579 n).toNat

end

end A013705.P15581283690740715965

/-! ## A013705.P2244986761006361289

`A000796(n)-A130779(A168548(n))`
-/

namespace A013705.P2244986761006361289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A130779 (A168548 n).toNat

end

end A013705.P2244986761006361289

/-! ## A013705.P968602283961553424

`A000796(n)-A163536(A288782(n+2))`
-/

namespace A013705.P968602283961553424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A163536 (A288782 (n + 2)).toNat

end

end A013705.P968602283961553424

/-!
# A013707: Decimal expansion of Sum_{k=1..50000} (-1)^(k+1) / k.

The programs for A013707, there is no canonical definition to state claims against.
-/

/-! ## A013707.P1837621764910986933

`A014034(A178579(n+1))+A002162(n)`
-/

namespace A013707.P1837621764910986933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014034 (A178579 (n + 1)).toNat + A002162 n

end

end A013707.P1837621764910986933

/-!
# A013708: a(n) = 3^(2*n+1).

The programs for A013708, the canonical program `A013708.P4928709745318280073` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013708 has offset 0).

The definition of A013708 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(2*n+1)` (program `A013708.P4928709745318280073`, by `A013708.P4928709745318280073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013708.P4153181912069737018

`ogf(3/(1-9x))`
-/

namespace A013708.P4153181912069737018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -9] n

end

end A013708.P4153181912069737018

namespace A013708

/-- `ogf(3/(1-9x))` -/
def P4153181912069737018.Spec : Prop :=
  ∀ n, P4153181912069737018.a n = A013708 n

end A013708

/-! ## A013708.P4928709745318280073

`3^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013708

/-- `3^(2*n+1)` -/
def P4928709745318280073.Spec : Prop :=
  ∀ n, (P4928709745318280073.a n : ℤ) = A013708 n

theorem P4928709745318280073.correct : P4928709745318280073.Spec := by
  intro n
  simp only [A013708]

end A013708

/-! ## A013708.P10512183529154139491

`9*a(n-1)` with `a(0)=3`
-/

namespace A013708.P10512183529154139491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  9 * a (n - 1)

end

end A013708.P10512183529154139491

namespace A013708

/-- `9*a(n-1)` -/
def P10512183529154139491.Spec : Prop :=
  ∀ n, (P10512183529154139491.a n : ℤ) = A013708 n

theorem P10512183529154139491.correct : P10512183529154139491.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013708, Nat.add_sub_cancel, A013708.P10512183529154139491.a, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013708, Nat.add_sub_cancel, A013708.P10512183529154139491.a, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013708

/-! ## A013708.P1841327880700979866

`A000244(2*n+1)`
-/

namespace A013708.P1841327880700979866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n + 1)

end

end A013708.P1841327880700979866

namespace A013708

/-- `A000244(2*n+1)` -/
def P1841327880700979866.Spec : Prop :=
  ∀ n, P1841327880700979866.a n = A013708 n

end A013708

/-! ## A013708.P17325959138689751580

`record[3^xor(1, n)]`
-/

namespace A013708.P17325959138689751580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013708.P17325959138689751580

namespace A013708

/-- `record[3^xor(1, n)]` -/
def P17325959138689751580.Spec : Prop :=
  ∀ n, (P17325959138689751580.a n : ℤ) = A013708 n

end A013708

/-! ## A013708.P1838049697283712492

`record[3*(-3)^n]`
-/

namespace A013708.P1838049697283712492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013708.P1838049697283712492

namespace A013708

/-- `record[3*(-3)^n]` -/
def P1838049697283712492.Spec : Prop :=
  ∀ n, P1838049697283712492.a n = A013708 n

end A013708

/-! ## A013708.P18358359348324512153

`9^n/tan(acot(3))`
-/

namespace A013708.P18358359348324512153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))

end

end A013708.P18358359348324512153

namespace A013708

/-- `9^n/tan(acot(3))` -/
def P18358359348324512153.Spec : Prop :=
  ∀ n, P18358359348324512153.a n = (A013708 n : ℝ)

end A013708

/-! ## A013708.P3375563617548179314

`9^n/cot(atan(3))`
-/

namespace A013708.P3375563617548179314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℝ) / Real.cot (Real.arctan (3 : ℝ))

end

end A013708.P3375563617548179314

namespace A013708

/-- `9^n/cot(atan(3))` -/
def P3375563617548179314.Spec : Prop :=
  ∀ n, P3375563617548179314.a n = (A013708 n : ℝ)

end A013708

/-! ## A013708.P2927409517058803188

`(3^(tan(acot(2))+n))²`
-/

namespace A013708.P2927409517058803188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℝ) ^ (Real.tan (SequenceMachineLib.acot (2 : ℝ)) + (n : ℝ))) ^ 2

end

end A013708.P2927409517058803188

namespace A013708

/-- `(3^(tan(acot(2))+n))²` -/
def P2927409517058803188.Spec : Prop :=
  ∀ n, P2927409517058803188.a n = (A013708 n : ℝ)

end A013708

/-! ## A013708.P17358854508932335404

`(3^(cot(atan(2))+n))²`
-/

namespace A013708.P17358854508932335404
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℝ) ^ (Real.cot (Real.arctan (2 : ℝ)) + (n : ℝ))) ^ 2

end

end A013708.P17358854508932335404

namespace A013708

/-- `(3^(cot(atan(2))+n))²` -/
def P17358854508932335404.Spec : Prop :=
  ∀ n, P17358854508932335404.a n = (A013708 n : ℝ)

end A013708

/-! ## A013708.P10523668955036408865

`3*3^lcm(2, 2*n)`
-/

namespace A013708.P10523668955036408865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 3 ^ Nat.lcm 2 (2 * n)

end

end A013708.P10523668955036408865

namespace A013708

/-- `3*3^lcm(2, 2*n)` -/
def P10523668955036408865.Spec : Prop :=
  ∀ n, (P10523668955036408865.a n : ℤ) = A013708 n

theorem P10523668955036408865.correct : P10523668955036408865.Spec := by
  intro n
  simp only [A013708, Nat.add_sub_cancel, A013708.P10523668955036408865.a, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A013708

/-! ## A013708.P13999075636729519822

`3*or(1, 3^(2*n))`
-/

namespace A013708.P13999075636729519822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 (3 ^ (2 * n))

end

end A013708.P13999075636729519822

namespace A013708

/-- `3*or(1, 3^(2*n))` -/
def P13999075636729519822.Spec : Prop :=
  ∀ n, (P13999075636729519822.a n : ℤ) = A013708 n

end A013708

/-! ## A013708.P10344243141510122528

`a(n-1)/(1/3)²` with `a(0)=3`
-/

namespace A013708.P10344243141510122528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A013708.P10344243141510122528

namespace A013708

/-- `a(n-1)/(1/3)²` -/
def P10344243141510122528.Spec : Prop :=
  ∀ n, P10344243141510122528.a n = (A013708 n : ℚ)

theorem P10344243141510122528.correct : P10344243141510122528.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013708, Nat.add_sub_cancel, A013708.P10344243141510122528.a, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013708, Nat.add_sub_cancel, A013708.P10344243141510122528.a, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013708

/-! ## A013708.P5528239377661175644

`(3^(xor(1, 2*n)/2))²`
-/

namespace A013708.P5528239377661175644
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℝ) ^ ((Nat.xor 1 (2 * n) : ℚ) / 2 : ℝ)) ^ 2

end

end A013708.P5528239377661175644

namespace A013708

/-- `(3^(xor(1, 2*n)/2))²` -/
def P5528239377661175644.Spec : Prop :=
  ∀ n, P5528239377661175644.a n = (A013708 n : ℝ)

end A013708

/-! ## A013708.P17826393288326861732

`Δ[A039306(n)]`
-/

namespace A013708.P17826393288326861732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013708.P17826393288326861732

namespace A013708

/-- `Δ[A039306(n)]` -/
def P17826393288326861732.Spec : Prop :=
  ∀ n, P17826393288326861732.a n = A013708 n

end A013708

/-! ## A013708.P13817831544125206839

`A102518(n+1)`
-/

namespace A013708.P13817831544125206839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 (n + 1)

end

end A013708.P13817831544125206839

namespace A013708

/-- `A102518(n+1)` -/
def P13817831544125206839.Spec : Prop :=
  ∀ n, P13817831544125206839.a n = A013708 n

end A013708

/-! ## A013708.P3220952759058183390

`A198960(n)+1`
-/

namespace A013708.P3220952759058183390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198960 n + 1

end

end A013708.P3220952759058183390

namespace A013708

/-- `A198960(n)+1` -/
def P3220952759058183390.Spec : Prop :=
  ∀ n, P3220952759058183390.a n = A013708 n

end A013708

/-! ## A013708.P5635988132899605462

`A199561(n)-1`
-/

namespace A013708.P5635988132899605462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199561 n - 1

end

end A013708.P5635988132899605462

namespace A013708

/-- `A199561(n)-1` -/
def P5635988132899605462.Spec : Prop :=
  ∀ n, P5635988132899605462.a n = A013708 n

end A013708

/-! ## A013708.P803067738716077970

`3*A001019(n)`
-/

namespace A013708.P803067738716077970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001019 n

end

end A013708.P803067738716077970

namespace A013708

/-- `3*A001019(n)` -/
def P803067738716077970.Spec : Prop :=
  ∀ n, P803067738716077970.a n = A013708 n

end A013708

/-! ## A013708.P6542653596688150189

`A224790(n)-8`
-/

namespace A013708.P6542653596688150189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224790 n - 8

end

end A013708.P6542653596688150189

namespace A013708

/-- `A224790(n)-8` -/
def P6542653596688150189.Spec : Prop :=
  ∀ n, P6542653596688150189.a n = A013708 n

end A013708

/-!
# A013709: a(n) = 4^(2*n+1).

The programs for A013709, the canonical program `A013709.P17768154873428454149` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013709 has offset 0).

The definition of A013709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(2*n+1)` (program `A013709.P17768154873428454149`, by `A013709.P17768154873428454149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013709.P8070970159422195536

`ogf(4/(1-16x))`
-/

namespace A013709.P8070970159422195536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -16] n

end

end A013709.P8070970159422195536

namespace A013709

/-- `ogf(4/(1-16x))` -/
def P8070970159422195536.Spec : Prop :=
  ∀ n, P8070970159422195536.a n = A013709 n

end A013709

/-! ## A013709.P17768154873428454149

`4^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013709

/-- `4^(2*n+1)` -/
def P17768154873428454149.Spec : Prop :=
  ∀ n, (P17768154873428454149.a n : ℤ) = A013709 n

theorem P17768154873428454149.correct : P17768154873428454149.Spec := by
  intro n
  simp only [A013709]

end A013709

/-! ## A013709.P1113482141097383334

`16*a(n-1)` with `a(0)=4`
-/

namespace A013709.P1113482141097383334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  16 * a (n - 1)

end

end A013709.P1113482141097383334

namespace A013709

/-- `16*a(n-1)` -/
def P1113482141097383334.Spec : Prop :=
  ∀ n, (P1113482141097383334.a n : ℤ) = A013709 n

theorem P1113482141097383334.correct : P1113482141097383334.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013709, Nat.add_sub_cancel, A013709.P1113482141097383334.a, A013709.P17768154873428454149.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013709, Nat.add_sub_cancel, A013709.P1113482141097383334.a, A013709.P17768154873428454149.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013709

/-! ## A013709.P3613481368422573532

`4*A001025(n)`
-/

namespace A013709.P3613481368422573532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001025 n

end

end A013709.P3613481368422573532

namespace A013709

/-- `4*A001025(n)` -/
def P3613481368422573532.Spec : Prop :=
  ∀ n, P3613481368422573532.a n = A013709 n

end A013709

/-! ## A013709.P1261986517454002465

`A000302(A005408(n))`
-/

namespace A013709.P1261986517454002465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A005408 n).toNat

end

end A013709.P1261986517454002465

namespace A013709

/-- `A000302(A005408(n))` -/
def P1261986517454002465.Spec : Prop :=
  ∀ n, P1261986517454002465.a n = A013709 n

end A013709

/-! ## A013709.P5420807939195789658

`record[(2^xor(1, n))²]`
-/

namespace A013709.P5420807939195789658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013709.P5420807939195789658

namespace A013709

/-- `record[(2^xor(1, n))²]` -/
def P5420807939195789658.Spec : Prop :=
  ∀ n, (P5420807939195789658.a n : ℤ) = A013709 n

end A013709

/-! ## A013709.P82985751343700351

`record[2^(2*xor(1, n))]`
-/

namespace A013709.P82985751343700351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013709.P82985751343700351

namespace A013709

/-- `record[2^(2*xor(1, n))]` -/
def P82985751343700351.Spec : Prop :=
  ∀ n, (P82985751343700351.a n : ℤ) = A013709 n

end A013709

/-! ## A013709.P11672924849813019701

`record[2^(xor(3, n)-1)]`
-/

namespace A013709.P11672924849813019701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013709.P11672924849813019701

namespace A013709

/-- `record[2^(xor(3, n)-1)]` -/
def P11672924849813019701.Spec : Prop :=
  ∀ n, P11672924849813019701.a n = (A013709 n : ℚ)

end A013709

/-! ## A013709.P16099251115947570218

`record[2^xor(3, n)/2]`
-/

namespace A013709.P16099251115947570218
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 3 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013709.P16099251115947570218

namespace A013709

/-- `record[2^xor(3, n)/2]` -/
def P16099251115947570218.Spec : Prop :=
  ∀ n, P16099251115947570218.a n = (A013709 n : ℚ)

end A013709

/-! ## A013709.P4362529451763223170

`(4^n)²/cot(atan(4))`
-/

namespace A013709.P4362529451763223170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 ^ n) ^ 2 : ℝ) / Real.cot (Real.arctan (4 : ℝ))

end

end A013709.P4362529451763223170

namespace A013709

/-- `(4^n)²/cot(atan(4))` -/
def P4362529451763223170.Spec : Prop :=
  ∀ n, P4362529451763223170.a n = (A013709 n : ℝ)

end A013709

/-!
# A013710: a(n) = 5^(2*n + 1).

The programs for A013710, the canonical program `A013710.P16323679375009357405` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013710 has offset 0).

The definition of A013710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(2*n+1)` (program `A013710.P16323679375009357405`, by `A013710.P16323679375009357405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013710.P9739463208199814028

`ogf(5/(1-25x))`
-/

namespace A013710.P9739463208199814028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -25] n

end

end A013710.P9739463208199814028

namespace A013710

/-- `ogf(5/(1-25x))` -/
def P9739463208199814028.Spec : Prop :=
  ∀ n, P9739463208199814028.a n = A013710 n

end A013710

/-! ## A013710.P16323679375009357405

`5^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013710

/-- `5^(2*n+1)` -/
def P16323679375009357405.Spec : Prop :=
  ∀ n, (P16323679375009357405.a n : ℤ) = A013710 n

theorem P16323679375009357405.correct : P16323679375009357405.Spec := by
  intro n
  simp only [A013710]

end A013710

/-! ## A013710.P2222999918125235853

`25*a(n-1)` with `a(0)=5`
-/

namespace A013710.P2222999918125235853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  25 * a (n - 1)

end

end A013710.P2222999918125235853

namespace A013710

/-- `25*a(n-1)` -/
def P2222999918125235853.Spec : Prop :=
  ∀ n, (P2222999918125235853.a n : ℤ) = A013710 n

theorem P2222999918125235853.correct : P2222999918125235853.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013710, Nat.add_sub_cancel, A013710.P2222999918125235853.a, A013710.P16323679375009357405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013710, Nat.add_sub_cancel, A013710.P2222999918125235853.a, A013710.P16323679375009357405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013710

/-! ## A013710.P14883205231094620311

`5*A009969(n)`
-/

namespace A013710.P14883205231094620311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A009969 n

end

end A013710.P14883205231094620311

namespace A013710

/-- `5*A009969(n)` -/
def P14883205231094620311.Spec : Prop :=
  ∀ n, P14883205231094620311.a n = A013710 n

end A013710

/-! ## A013710.P3392382026882872143

`A000351(A005408(n))`
-/

namespace A013710.P3392382026882872143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A005408 n).toNat

end

end A013710.P3392382026882872143

namespace A013710

/-- `A000351(A005408(n))` -/
def P3392382026882872143.Spec : Prop :=
  ∀ n, P3392382026882872143.a n = A013710 n

end A013710

/-! ## A013710.P2364807837791176983

`record[5^or(1, gcd(n, ∑[n]))]`
-/

namespace A013710.P2364807837791176983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.lor 1 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013710.P2364807837791176983

namespace A013710

/-- `record[5^or(1, gcd(n, ∑[n]))]` -/
def P2364807837791176983.Spec : Prop :=
  ∀ n, (P2364807837791176983.a n : ℤ) = A013710 n

end A013710

/-! ## A013710.P15139964452704933918

`record[5^(lcm(4, n+1)/4)]`
-/

namespace A013710.P15139964452704933918
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ ((Nat.lcm 4 (n + 1) : ℚ) / 4 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013710.P15139964452704933918

namespace A013710

/-- `record[5^(lcm(4, n+1)/4)]` -/
def P15139964452704933918.Spec : Prop :=
  ∀ n, P15139964452704933918.a n = (A013710 n : ℝ)

end A013710

/-! ## A013710.P13230808097443771244

`a(n-1)/sqrt(5)^-4` with `a(0)=5`
-/

namespace A013710.P13230808097443771244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / Real.sqrt (5 : ℝ) ^ (-4 : ℤ)

end

end A013710.P13230808097443771244

namespace A013710

/-- `a(n-1)/sqrt(5)^-4` -/
def P13230808097443771244.Spec : Prop :=
  ∀ n, P13230808097443771244.a n = (A013710 n : ℝ)

theorem P13230808097443771244.correct : P13230808097443771244.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013710, Nat.add_sub_cancel, A013710.P13230808097443771244.a, A013710.P16323679375009357405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013710, Nat.add_sub_cancel, A013710.P13230808097443771244.a, A013710.P16323679375009357405.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A013710

/-! ## A013710.P17745492623475578911

`record[5^((n+1)/2^val(n+1, 2))]`
-/

namespace A013710.P17745492623475578911
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013710.P17745492623475578911

namespace A013710

/-- `record[5^((n+1)/2^val(n+1, 2))]` -/
def P17745492623475578911.Spec : Prop :=
  ∀ n, P17745492623475578911.a n = (A013710 n : ℝ)

end A013710

/-! ## A013710.P4970501146595627202

`A000351(Δ[n²])`
-/

namespace A013710.P4970501146595627202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013710.P4970501146595627202

namespace A013710

/-- `A000351(Δ[n²])` -/
def P4970501146595627202.Spec : Prop :=
  ∀ n, P4970501146595627202.a n = A013710 n

end A013710

/-!
# A013711: a(n) = 6^(2*n+1).

The programs for A013711, the canonical program `A013711.P9940621203968599622` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013711 has offset 0).

The definition of A013711 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(2*n+1)` (program `A013711.P9940621203968599622`, by `A013711.P9940621203968599622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013711.P13996064261815022730

`ogf(6/(1-36x))`
-/

namespace A013711.P13996064261815022730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6] [1, -36] n

end

end A013711.P13996064261815022730

namespace A013711

/-- `ogf(6/(1-36x))` -/
def P13996064261815022730.Spec : Prop :=
  ∀ n, P13996064261815022730.a n = A013711 n

end A013711

/-! ## A013711.P9940621203968599622

`6^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013711

/-- `6^(2*n+1)` -/
def P9940621203968599622.Spec : Prop :=
  ∀ n, (P9940621203968599622.a n : ℤ) = A013711 n

theorem P9940621203968599622.correct : P9940621203968599622.Spec := by
  intro n
  simp only [A013711]

end A013711

/-! ## A013711.P15931123235095332760

`36*a(n-1)` with `a(0)=6`
-/

namespace A013711.P15931123235095332760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  36 * a (n - 1)

end

end A013711.P15931123235095332760

namespace A013711

/-- `36*a(n-1)` -/
def P15931123235095332760.Spec : Prop :=
  ∀ n, (P15931123235095332760.a n : ℤ) = A013711 n

theorem P15931123235095332760.correct : P15931123235095332760.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013711, Nat.add_sub_cancel, A013711.P15931123235095332760.a, A013711.P9940621203968599622.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013711, Nat.add_sub_cancel, A013711.P15931123235095332760.a, A013711.P9940621203968599622.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013711

/-! ## A013711.P5970438201859914519

`6*A009980(n)`
-/

namespace A013711.P5970438201859914519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A009980 n

end

end A013711.P5970438201859914519

namespace A013711

/-- `6*A009980(n)` -/
def P5970438201859914519.Spec : Prop :=
  ∀ n, P5970438201859914519.a n = A013711 n

end A013711

/-! ## A013711.P14197974709950513799

`A000400(A005408(n))`
-/

namespace A013711.P14197974709950513799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A005408 n).toNat

end

end A013711.P14197974709950513799

namespace A013711

/-- `A000400(A005408(n))` -/
def P14197974709950513799.Spec : Prop :=
  ∀ n, P14197974709950513799.a n = A013711 n

end A013711

/-! ## A013711.P15553031531000851584

`A004171(n)*A013708(n)`
-/

namespace A013711.P15553031531000851584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n * A013708 n

end

end A013711.P15553031531000851584

namespace A013711

/-- `A004171(n)*A013708(n)` -/
def P15553031531000851584.Spec : Prop :=
  ∀ n, P15553031531000851584.a n = A013711 n

end A013711

/-! ## A013711.P7425883038958510236

`A000400(Δ[n²])`
-/

namespace A013711.P7425883038958510236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013711.P7425883038958510236

namespace A013711

/-- `A000400(Δ[n²])` -/
def P7425883038958510236.Spec : Prop :=
  ∀ n, P7425883038958510236.a n = A013711 n

end A013711

/-! ## A013711.P18352417879070812044

`A091097(Δ[n²])`
-/

namespace A013711.P18352417879070812044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013711.P18352417879070812044

namespace A013711

/-- `A091097(Δ[n²])` -/
def P18352417879070812044.Spec : Prop :=
  ∀ n, P18352417879070812044.a n = A013711 n

end A013711

/-! ## A013711.P12120148412433738113

`record[A091097(n+1)]`
-/

namespace A013711.P12120148412433738113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013711.P12120148412433738113

namespace A013711

/-- `record[A091097(n+1)]` -/
def P12120148412433738113.Spec : Prop :=
  ∀ n, P12120148412433738113.a n = A013711 n

end A013711

/-! ## A013711.P15144331255097916746

`A067429(n+1)/2`
-/

namespace A013711.P15144331255097916746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067429 (n + 1) : ℚ) / 2

end

end A013711.P15144331255097916746

namespace A013711

/-- `A067429(n+1)/2` -/
def P15144331255097916746.Spec : Prop :=
  ∀ n, P15144331255097916746.a n = (A013711 n : ℚ)

end A013711

/-!
# A013712: a(n) = 7^(2*n + 1).

The programs for A013712, the canonical program `A013712.P6679868428762462317` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013712 has offset 0).

The definition of A013712 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^(2*n+1)` (program `A013712.P6679868428762462317`, by `A013712.P6679868428762462317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013712.P10473646432841421876

`ogf(7/(1-49x))`
-/

namespace A013712.P10473646432841421876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7] [1, -49] n

end

end A013712.P10473646432841421876

namespace A013712

/-- `ogf(7/(1-49x))` -/
def P10473646432841421876.Spec : Prop :=
  ∀ n, P10473646432841421876.a n = A013712 n

end A013712

/-! ## A013712.P6679868428762462317

`7^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013712

/-- `7^(2*n+1)` -/
def P6679868428762462317.Spec : Prop :=
  ∀ n, (P6679868428762462317.a n : ℤ) = A013712 n

theorem P6679868428762462317.correct : P6679868428762462317.Spec := by
  intro n
  simp only [A013712]

end A013712

/-! ## A013712.P12578052030693408003

`49*a(n-1)` with `a(0)=7`
-/

namespace A013712.P12578052030693408003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  49 * a (n - 1)

end

end A013712.P12578052030693408003

namespace A013712

/-- `49*a(n-1)` -/
def P12578052030693408003.Spec : Prop :=
  ∀ n, (P12578052030693408003.a n : ℤ) = A013712 n

theorem P12578052030693408003.correct : P12578052030693408003.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013712, Nat.add_sub_cancel, A013712.P12578052030693408003.a, A013712.P6679868428762462317.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013712, Nat.add_sub_cancel, A013712.P12578052030693408003.a, A013712.P6679868428762462317.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013712

/-! ## A013712.P2435764641550907711

`7*A087752(n)`
-/

namespace A013712.P2435764641550907711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A087752 n

end

end A013712.P2435764641550907711

namespace A013712

/-- `7*A087752(n)` -/
def P2435764641550907711.Spec : Prop :=
  ∀ n, P2435764641550907711.a n = A013712 n

end A013712

/-! ## A013712.P14684663393194786254

`A000420(A005408(n))`
-/

namespace A013712.P14684663393194786254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A005408 n).toNat

end

end A013712.P14684663393194786254

namespace A013712

/-- `A000420(A005408(n))` -/
def P14684663393194786254.Spec : Prop :=
  ∀ n, P14684663393194786254.a n = A013712 n

end A013712

/-! ## A013712.P5313449143798368705

`record[7^or(1, gcd(n, ∑[n]))]`
-/

namespace A013712.P5313449143798368705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ Nat.lor 1 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013712.P5313449143798368705

namespace A013712

/-- `record[7^or(1, gcd(n, ∑[n]))]` -/
def P5313449143798368705.Spec : Prop :=
  ∀ n, (P5313449143798368705.a n : ℤ) = A013712 n

end A013712

/-! ## A013712.P7537084259109741933

`A000420(Δ[n²])`
-/

namespace A013712.P7537084259109741933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013712.P7537084259109741933

namespace A013712

/-- `A000420(Δ[n²])` -/
def P7537084259109741933.Spec : Prop :=
  ∀ n, P7537084259109741933.a n = A013712 n

end A013712

/-! ## A013712.P2318150188157447792

`7*A000420(n)²`
-/

namespace A013712.P2318150188157447792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000420 n ^ 2

end

end A013712.P2318150188157447792

namespace A013712

/-- `7*A000420(n)²` -/
def P2318150188157447792.Spec : Prop :=
  ∀ n, P2318150188157447792.a n = A013712 n

theorem P2318150188157447792.correct : P2318150188157447792.Spec := by
  intro n
  simp only [A013712, Nat.add_sub_cancel, A013712.P2318150188157447792.a, A013712.P6679868428762462317.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013712

/-! ## A013712.P10424426181251621196

`A087752(n+1)/7`
-/

namespace A013712.P10424426181251621196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087752 (n + 1) : ℚ) / 7

end

end A013712.P10424426181251621196

namespace A013712

/-- `A087752(n+1)/7` -/
def P10424426181251621196.Spec : Prop :=
  ∀ n, P10424426181251621196.a n = (A013712 n : ℚ)

end A013712

/-! ## A013712.P3467467690722237895

`7*A000420(2*n)`
-/

namespace A013712.P3467467690722237895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000420 (2 * n)

end

end A013712.P3467467690722237895

namespace A013712

/-- `7*A000420(2*n)` -/
def P3467467690722237895.Spec : Prop :=
  ∀ n, P3467467690722237895.a n = A013712 n

theorem P3467467690722237895.correct : P3467467690722237895.Spec := by
  intro n
  simp only [A013712, Nat.add_sub_cancel, A013712.P3467467690722237895.a, A013712.P6679868428762462317.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013712

/-!
# A013713: a(n) = 8^(2n+1).

The programs for A013713, the canonical program `A013713.P12921318779103087679` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013713 has offset 0).

The definition of A013713 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(2*n+1)` (program `A013713.P12921318779103087679`, by `A013713.P12921318779103087679.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013713.P10173757154748236640

`ogf(8/(1-64x))`
-/

namespace A013713.P10173757154748236640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -64] n

end

end A013713.P10173757154748236640

namespace A013713

/-- `ogf(8/(1-64x))` -/
def P10173757154748236640.Spec : Prop :=
  ∀ n, P10173757154748236640.a n = A013713 n

end A013713

/-! ## A013713.P12921318779103087679

`8^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013713

/-- `8^(2*n+1)` -/
def P12921318779103087679.Spec : Prop :=
  ∀ n, (P12921318779103087679.a n : ℤ) = A013713 n

theorem P12921318779103087679.correct : P12921318779103087679.Spec := by
  intro n
  simp only [A013713]

end A013713

/-! ## A013713.P8895205079659071436

`64*a(n-1)` with `a(0)=8`
-/

namespace A013713.P8895205079659071436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  64 * a (n - 1)

end

end A013713.P8895205079659071436

namespace A013713

/-- `64*a(n-1)` -/
def P8895205079659071436.Spec : Prop :=
  ∀ n, (P8895205079659071436.a n : ℤ) = A013713 n

theorem P8895205079659071436.correct : P8895205079659071436.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013713, Nat.add_sub_cancel, A013713.P8895205079659071436.a, A013713.P12921318779103087679.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013713, Nat.add_sub_cancel, A013713.P8895205079659071436.a, A013713.P12921318779103087679.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013713

/-! ## A013713.P16427279660724329514

`2*A013734(n)`
-/

namespace A013713.P16427279660724329514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013734 n

end

end A013713.P16427279660724329514

namespace A013713

/-- `2*A013734(n)` -/
def P16427279660724329514.Spec : Prop :=
  ∀ n, P16427279660724329514.a n = A013713 n

end A013713

/-! ## A013713.P12592742592962701301

`A013735(n)/2`
-/

namespace A013713.P12592742592962701301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013735 n : ℚ) / 2

end

end A013713.P12592742592962701301

namespace A013713

/-- `A013735(n)/2` -/
def P12592742592962701301.Spec : Prop :=
  ∀ n, P12592742592962701301.a n = (A013713 n : ℚ)

end A013713

/-! ## A013713.P8947799679464413382

`8*A089357(n)`
-/

namespace A013713.P8947799679464413382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A089357 n

end

end A013713.P8947799679464413382

namespace A013713

/-- `8*A089357(n)` -/
def P8947799679464413382.Spec : Prop :=
  ∀ n, P8947799679464413382.a n = A013713 n

end A013713

/-! ## A013713.P16570145528789213515

`A001018(A005408(n))`
-/

namespace A013713.P16570145528789213515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A005408 n).toNat

end

end A013713.P16570145528789213515

namespace A013713

/-- `A001018(A005408(n))` -/
def P16570145528789213515.Spec : Prop :=
  ∀ n, P16570145528789213515.a n = A013713 n

end A013713

/-! ## A013713.P7623568401372585054

`record[2^(3*xor(1, n))]`
-/

namespace A013713.P7623568401372585054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (3 * Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013713.P7623568401372585054

namespace A013713

/-- `record[2^(3*xor(1, n))]` -/
def P7623568401372585054.Spec : Prop :=
  ∀ n, (P7623568401372585054.a n : ℤ) = A013713 n

end A013713

/-! ## A013713.P12110901586115835323

`record[(2^xor(1, n))^3]`
-/

namespace A013713.P12110901586115835323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013713.P12110901586115835323

namespace A013713

/-- `record[(2^xor(1, n))^3]` -/
def P12110901586115835323.Spec : Prop :=
  ∀ n, (P12110901586115835323.a n : ℤ) = A013713 n

end A013713

/-! ## A013713.P14671838628333146452

`filter[2^n, dr(#+2)]`
-/

namespace A013713.P14671838628333146452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j + 2 : ℤ) = 1) n)

end

end A013713.P14671838628333146452

namespace A013713

/-- `filter[2^n, dr(#+2)]` -/
def P14671838628333146452.Spec : Prop :=
  ∀ n, (P14671838628333146452.a n : ℤ) = A013713 n

end A013713

/-!
# A013714: a(n) = 9^(2*n + 1).

The programs for A013714, the canonical program `A013714.P922413640811802707` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013714 has offset 0).

The definition of A013714 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^(2*n+1)` (program `A013714.P922413640811802707`, by `A013714.P922413640811802707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013714.P3218204643718390023

`ogf(9/(1-81x))`
-/

namespace A013714.P3218204643718390023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9] [1, -81] n

end

end A013714.P3218204643718390023

namespace A013714

/-- `ogf(9/(1-81x))` -/
def P3218204643718390023.Spec : Prop :=
  ∀ n, P3218204643718390023.a n = A013714 n

end A013714

/-! ## A013714.P922413640811802707

`9^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013714

/-- `9^(2*n+1)` -/
def P922413640811802707.Spec : Prop :=
  ∀ n, (P922413640811802707.a n : ℤ) = A013714 n

theorem P922413640811802707.correct : P922413640811802707.Spec := by
  intro n
  simp only [A013714]

end A013714

/-! ## A013714.P9803357468826726101

`81*a(n-1)` with `a(0)=9`
-/

namespace A013714.P9803357468826726101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  81 * a (n - 1)

end

end A013714.P9803357468826726101

namespace A013714

/-- `81*a(n-1)` -/
def P9803357468826726101.Spec : Prop :=
  ∀ n, (P9803357468826726101.a n : ℤ) = A013714 n

theorem P9803357468826726101.correct : P9803357468826726101.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013714, Nat.add_sub_cancel, A013714.P9803357468826726101.a, A013714.P922413640811802707.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013714, Nat.add_sub_cancel, A013714.P9803357468826726101.a, A013714.P922413640811802707.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013714

/-! ## A013714.P16795791484922187932

`3*A013778(n)`
-/

namespace A013714.P16795791484922187932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013778 n

end

end A013714.P16795791484922187932

namespace A013714

/-- `3*A013778(n)` -/
def P16795791484922187932.Spec : Prop :=
  ∀ n, P16795791484922187932.a n = A013714 n

end A013714

/-! ## A013714.P15454353022850231546

`A001019(A005408(n))`
-/

namespace A013714.P15454353022850231546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (A005408 n).toNat

end

end A013714.P15454353022850231546

namespace A013714

/-- `A001019(A005408(n))` -/
def P15454353022850231546.Spec : Prop :=
  ∀ n, P15454353022850231546.a n = A013714 n

end A013714

/-! ## A013714.P14676296778778517732

`record[(3^xor(1, n))²]`
-/

namespace A013714.P14676296778778517732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013714.P14676296778778517732

namespace A013714

/-- `record[(3^xor(1, n))²]` -/
def P14676296778778517732.Spec : Prop :=
  ∀ n, (P14676296778778517732.a n : ℤ) = A013714 n

end A013714

/-! ## A013714.P18415778466334509438

`record[3^(2*xor(1, n))]`
-/

namespace A013714.P18415778466334509438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (2 * Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013714.P18415778466334509438

namespace A013714

/-- `record[3^(2*xor(1, n))]` -/
def P18415778466334509438.Spec : Prop :=
  ∀ n, (P18415778466334509438.a n : ℤ) = A013714 n

end A013714

/-! ## A013714.P10953379616496660826

`record[3^(xor(3, n)-1)]`
-/

namespace A013714.P10953379616496660826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013714.P10953379616496660826

namespace A013714

/-- `record[3^(xor(3, n)-1)]` -/
def P10953379616496660826.Spec : Prop :=
  ∀ n, P10953379616496660826.a n = (A013714 n : ℚ)

end A013714

/-! ## A013714.P11476515633830735801

`record[3^xor(3, n)/3]`
-/

namespace A013714.P11476515633830735801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.xor 3 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013714.P11476515633830735801

namespace A013714

/-- `record[3^xor(3, n)/3]` -/
def P11476515633830735801.Spec : Prop :=
  ∀ n, P11476515633830735801.a n = (A013714 n : ℚ)

end A013714

/-!
# A013715: a(n) = 10^(2*n+1).

The programs for A013715, the canonical program `A013715.P16085174292189054663` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013715 has offset 0).

The definition of A013715 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*n+1)` (program `A013715.P16085174292189054663`, by `A013715.P16085174292189054663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013715.P10495290450063280075

`ogf(10/(1-100x))`
-/

namespace A013715.P10495290450063280075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10] [1, -100] n

end

end A013715.P10495290450063280075

namespace A013715

/-- `ogf(10/(1-100x))` -/
def P10495290450063280075.Spec : Prop :=
  ∀ n, P10495290450063280075.a n = A013715 n

end A013715

/-! ## A013715.P16085174292189054663

`10^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013715

/-- `10^(2*n+1)` -/
def P16085174292189054663.Spec : Prop :=
  ∀ n, (P16085174292189054663.a n : ℤ) = A013715 n

theorem P16085174292189054663.correct : P16085174292189054663.Spec := by
  intro n
  simp only [A013715]

end A013715

/-! ## A013715.P8052982298155763803

`100*a(n-1)` with `a(0)=10`
-/

namespace A013715.P8052982298155763803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  100 * a (n - 1)

end

end A013715.P8052982298155763803

namespace A013715

/-- `100*a(n-1)` -/
def P8052982298155763803.Spec : Prop :=
  ∀ n, (P8052982298155763803.a n : ℤ) = A013715 n

theorem P8052982298155763803.correct : P8052982298155763803.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013715, Nat.add_sub_cancel, A013715.P8052982298155763803.a, A013715.P16085174292189054663.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013715, Nat.add_sub_cancel, A013715.P8052982298155763803.a, A013715.P16085174292189054663.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013715

/-! ## A013715.P9835277758449688745

`10*A098608(n)`
-/

namespace A013715.P9835277758449688745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A098608 n

end

end A013715.P9835277758449688745

namespace A013715

/-- `10*A098608(n)` -/
def P9835277758449688745.Spec : Prop :=
  ∀ n, P9835277758449688745.a n = A013715 n

end A013715

/-! ## A013715.P6261918883680089436

`A011557(A005408(n))`
-/

namespace A013715.P6261918883680089436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A005408 n).toNat

end

end A013715.P6261918883680089436

namespace A013715

/-- `A011557(A005408(n))` -/
def P6261918883680089436.Spec : Prop :=
  ∀ n, P6261918883680089436.a n = A013715 n

end A013715

/-! ## A013715.P2672578978300124198

`record[10^xor(1, n)]`
-/

namespace A013715.P2672578978300124198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013715.P2672578978300124198

namespace A013715

/-- `record[10^xor(1, n)]` -/
def P2672578978300124198.Spec : Prop :=
  ∀ n, (P2672578978300124198.a n : ℤ) = A013715 n

end A013715

/-! ## A013715.P10724206513794759447

`record[10*(-10)^n]`
-/

namespace A013715.P10724206513794759447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (-10) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013715.P10724206513794759447

namespace A013715

/-- `record[10*(-10)^n]` -/
def P10724206513794759447.Spec : Prop :=
  ∀ n, P10724206513794759447.a n = A013715 n

end A013715

/-! ## A013715.P15939745316481210829

`lcm(2, 10*(10^n)²)`
-/

namespace A013715.P15939745316481210829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (10 * (10 ^ n) ^ 2)

end

end A013715.P15939745316481210829

namespace A013715

/-- `lcm(2, 10*(10^n)²)` -/
def P15939745316481210829.Spec : Prop :=
  ∀ n, (P15939745316481210829.a n : ℤ) = A013715 n

end A013715

/-! ## A013715.P5438732261497687070

`10*10^lcm(n, 2*n)`
-/

namespace A013715.P5438732261497687070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * 10 ^ Nat.lcm n (2 * n)

end

end A013715.P5438732261497687070

namespace A013715

/-- `10*10^lcm(n, 2*n)` -/
def P5438732261497687070.Spec : Prop :=
  ∀ n, (P5438732261497687070.a n : ℤ) = A013715 n

theorem P5438732261497687070.correct : P5438732261497687070.Spec := by
  intro n
  simp only [A013715, Nat.add_sub_cancel, A013715.P5438732261497687070.a, A013715.P16085174292189054663.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A013715

/-! ## A013715.P7787863123162983633

`abs((-10)^or(1, 2*n))`
-/

namespace A013715.P7787863123162983633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-10) ^ Nat.lor 1 (2 * n)|

end

end A013715.P7787863123162983633

namespace A013715

/-- `abs((-10)^or(1, 2*n))` -/
def P7787863123162983633.Spec : Prop :=
  ∀ n, P7787863123162983633.a n = A013715 n

end A013715

/-!
# A013716: a(n) = 11^(2*n + 1).

The programs for A013716, the canonical program `A013716.P14635181733407920998` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013716 has offset 0).

The definition of A013716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^(2*n+1)` (program `A013716.P14635181733407920998`, by `A013716.P14635181733407920998.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013716.P14635181733407920998

`11^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013716

/-- `11^(2*n+1)` -/
def P14635181733407920998.Spec : Prop :=
  ∀ n, (P14635181733407920998.a n : ℤ) = A013716 n

theorem P14635181733407920998.correct : P14635181733407920998.Spec := by
  intro n
  simp only [A013716]

end A013716

/-! ## A013716.P12750872254875682631

`121*a(n-1)` with `a(0)=11`
-/

namespace A013716.P12750872254875682631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  121 * a (n - 1)

end

end A013716.P12750872254875682631

namespace A013716

/-- `121*a(n-1)` -/
def P12750872254875682631.Spec : Prop :=
  ∀ n, (P12750872254875682631.a n : ℤ) = A013716 n

theorem P12750872254875682631.correct : P12750872254875682631.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013716, Nat.add_sub_cancel, A013716.P12750872254875682631.a, A013716.P14635181733407920998.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013716, Nat.add_sub_cancel, A013716.P12750872254875682631.a, A013716.P14635181733407920998.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013716

/-! ## A013716.P280710604178847895

`record[11^xor(1, n)]`
-/

namespace A013716.P280710604178847895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013716.P280710604178847895

namespace A013716

/-- `record[11^xor(1, n)]` -/
def P280710604178847895.Spec : Prop :=
  ∀ n, (P280710604178847895.a n : ℤ) = A013716 n

end A013716

/-! ## A013716.P18117115443859323723

`record[11^n^(n%2)]`
-/

namespace A013716.P18117115443859323723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013716.P18117115443859323723

namespace A013716

/-- `record[11^n^(n%2)]` -/
def P18117115443859323723.Spec : Prop :=
  ∀ n, (P18117115443859323723.a n : ℤ) = A013716 n

end A013716

/-! ## A013716.P4540308363107046315

`root(11, tan(acot(2*n+1)))`
-/

namespace A013716.P4540308363107046315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (11 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A013716.P4540308363107046315

namespace A013716

/-- `root(11, tan(acot(2*n+1)))` -/
def P4540308363107046315.Spec : Prop :=
  ∀ n, P4540308363107046315.a n = (A013716 n : ℝ)

end A013716

/-!
# A013717: a(n) = 12^(2*n + 1).

The programs for A013717, the canonical program `A013717.P17935120222944465664` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013717 has offset 0).

The definition of A013717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^(2*n+1)` (program `A013717.P17935120222944465664`, by `A013717.P17935120222944465664.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013717.P17935120222944465664

`12^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013717

/-- `12^(2*n+1)` -/
def P17935120222944465664.Spec : Prop :=
  ∀ n, (P17935120222944465664.a n : ℤ) = A013717 n

theorem P17935120222944465664.correct : P17935120222944465664.Spec := by
  intro n
  simp only [A013717]

end A013717

/-! ## A013717.P14804302545444269552

`144*a(n-1)` with `a(0)=12`
-/

namespace A013717.P14804302545444269552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  144 * a (n - 1)

end

end A013717.P14804302545444269552

namespace A013717

/-- `144*a(n-1)` -/
def P14804302545444269552.Spec : Prop :=
  ∀ n, (P14804302545444269552.a n : ℤ) = A013717 n

theorem P14804302545444269552.correct : P14804302545444269552.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013717, Nat.add_sub_cancel, A013717.P14804302545444269552.a, A013717.P17935120222944465664.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013717, Nat.add_sub_cancel, A013717.P14804302545444269552.a, A013717.P17935120222944465664.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013717

/-! ## A013717.P16324979234855123838

`record[12^xor(1, n)]`
-/

namespace A013717.P16324979234855123838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013717.P16324979234855123838

namespace A013717

/-- `record[12^xor(1, n)]` -/
def P16324979234855123838.Spec : Prop :=
  ∀ n, (P16324979234855123838.a n : ℤ) = A013717 n

end A013717

/-! ## A013717.P2345867731085494260

`record[12^n^(n%2)]`
-/

namespace A013717.P2345867731085494260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013717.P2345867731085494260

namespace A013717

/-- `record[12^n^(n%2)]` -/
def P2345867731085494260.Spec : Prop :=
  ∀ n, (P2345867731085494260.a n : ℤ) = A013717 n

end A013717

/-! ## A013717.P1795783228423272277

`root(12, tan(acot(2*n+1)))`
-/

namespace A013717.P1795783228423272277
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (12 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A013717.P1795783228423272277

namespace A013717

/-- `root(12, tan(acot(2*n+1)))` -/
def P1795783228423272277.Spec : Prop :=
  ∀ n, P1795783228423272277.a n = (A013717 n : ℝ)

end A013717

/-!
# A013718: a(n) = 13^(2*n + 1).

The programs for A013718, the canonical program `A013718.P15535587456612467528` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013718 has offset 0).

The definition of A013718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13^(2*n+1)` (program `A013718.P15535587456612467528`, by `A013718.P15535587456612467528.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013718.P15535587456612467528

`13^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013718

/-- `13^(2*n+1)` -/
def P15535587456612467528.Spec : Prop :=
  ∀ n, (P15535587456612467528.a n : ℤ) = A013718 n

theorem P15535587456612467528.correct : P15535587456612467528.Spec := by
  intro n
  simp only [A013718]

end A013718

/-! ## A013718.P17917430831045141032

`169*a(n-1)` with `a(0)=13`
-/

namespace A013718.P17917430831045141032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  169 * a (n - 1)

end

end A013718.P17917430831045141032

namespace A013718

/-- `169*a(n-1)` -/
def P17917430831045141032.Spec : Prop :=
  ∀ n, (P17917430831045141032.a n : ℤ) = A013718 n

theorem P17917430831045141032.correct : P17917430831045141032.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013718, Nat.add_sub_cancel, A013718.P17917430831045141032.a, A013718.P15535587456612467528.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013718, Nat.add_sub_cancel, A013718.P17917430831045141032.a, A013718.P15535587456612467528.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013718

/-! ## A013718.P1177628560382999347

`record[13^xor(1, n)]`
-/

namespace A013718.P1177628560382999347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013718.P1177628560382999347

namespace A013718

/-- `record[13^xor(1, n)]` -/
def P1177628560382999347.Spec : Prop :=
  ∀ n, (P1177628560382999347.a n : ℤ) = A013718 n

end A013718

/-! ## A013718.P15668721513569050013

`record[13*(-13)^n]`
-/

namespace A013718.P15668721513569050013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (-13) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013718.P15668721513569050013

namespace A013718

/-- `record[13*(-13)^n]` -/
def P15668721513569050013.Spec : Prop :=
  ∀ n, P15668721513569050013.a n = A013718 n

end A013718

/-! ## A013718.P5300454291480694171

`root(13, tan(acot(2*n+1)))`
-/

namespace A013718.P5300454291480694171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A013718.P5300454291480694171

namespace A013718

/-- `root(13, tan(acot(2*n+1)))` -/
def P5300454291480694171.Spec : Prop :=
  ∀ n, P5300454291480694171.a n = (A013718 n : ℝ)

end A013718

/-!
# A013719: a(n) = 14^(2*n + 1).

The programs for A013719, the canonical program `A013719.P2955221746658128666` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013719 has offset 0).

The definition of A013719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14^(2*n+1)` (program `A013719.P2955221746658128666`, by `A013719.P2955221746658128666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013719.P2955221746658128666

`14^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013719

/-- `14^(2*n+1)` -/
def P2955221746658128666.Spec : Prop :=
  ∀ n, (P2955221746658128666.a n : ℤ) = A013719 n

theorem P2955221746658128666.correct : P2955221746658128666.Spec := by
  intro n
  simp only [A013719]

end A013719

/-! ## A013719.P2557878172741829065

`196*a(n-1)` with `a(0)=14`
-/

namespace A013719.P2557878172741829065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  196 * a (n - 1)

end

end A013719.P2557878172741829065

namespace A013719

/-- `196*a(n-1)` -/
def P2557878172741829065.Spec : Prop :=
  ∀ n, (P2557878172741829065.a n : ℤ) = A013719 n

theorem P2557878172741829065.correct : P2557878172741829065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013719, Nat.add_sub_cancel, A013719.P2557878172741829065.a, A013719.P2955221746658128666.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013719, Nat.add_sub_cancel, A013719.P2557878172741829065.a, A013719.P2955221746658128666.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013719

/-! ## A013719.P1353617853144893391

`record[14^xor(1, n)]`
-/

namespace A013719.P1353617853144893391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013719.P1353617853144893391

namespace A013719

/-- `record[14^xor(1, n)]` -/
def P1353617853144893391.Spec : Prop :=
  ∀ n, (P1353617853144893391.a n : ℤ) = A013719 n

end A013719

/-! ## A013719.P28523799216249506

`record[14^n^(n%2)]`
-/

namespace A013719.P28523799216249506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013719.P28523799216249506

namespace A013719

/-- `record[14^n^(n%2)]` -/
def P28523799216249506.Spec : Prop :=
  ∀ n, (P28523799216249506.a n : ℤ) = A013719 n

end A013719

/-! ## A013719.P15167217800555074696

`root(14, tan(acot(2*n+1)))`
-/

namespace A013719.P15167217800555074696
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (14 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A013719.P15167217800555074696

namespace A013719

/-- `root(14, tan(acot(2*n+1)))` -/
def P15167217800555074696.Spec : Prop :=
  ∀ n, P15167217800555074696.a n = (A013719 n : ℝ)

end A013719

/-!
# A013720: a(n) = 15^(2*n + 1).

The programs for A013720, the canonical program `A013720.P6784040827250838088` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013720 has offset 0).

The definition of A013720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15^(2*n+1)` (program `A013720.P6784040827250838088`, by `A013720.P6784040827250838088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013720.P6784040827250838088

`15^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013720

/-- `15^(2*n+1)` -/
def P6784040827250838088.Spec : Prop :=
  ∀ n, (P6784040827250838088.a n : ℤ) = A013720 n

theorem P6784040827250838088.correct : P6784040827250838088.Spec := by
  intro n
  simp only [A013720]

end A013720

/-! ## A013720.P8855732700702339981

`225*a(n-1)` with `a(0)=15`
-/

namespace A013720.P8855732700702339981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  225 * a (n - 1)

end

end A013720.P8855732700702339981

namespace A013720

/-- `225*a(n-1)` -/
def P8855732700702339981.Spec : Prop :=
  ∀ n, (P8855732700702339981.a n : ℤ) = A013720 n

theorem P8855732700702339981.correct : P8855732700702339981.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013720, Nat.add_sub_cancel, A013720.P8855732700702339981.a, A013720.P6784040827250838088.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013720, Nat.add_sub_cancel, A013720.P8855732700702339981.a, A013720.P6784040827250838088.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013720

/-! ## A013720.P16156371400165366067

`record[15^xor(1, n)]`
-/

namespace A013720.P16156371400165366067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013720.P16156371400165366067

namespace A013720

/-- `record[15^xor(1, n)]` -/
def P16156371400165366067.Spec : Prop :=
  ∀ n, (P16156371400165366067.a n : ℤ) = A013720 n

end A013720

/-! ## A013720.P5681861259077757033

`record[15^n^(n%2)]`
-/

namespace A013720.P5681861259077757033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013720.P5681861259077757033

namespace A013720

/-- `record[15^n^(n%2)]` -/
def P5681861259077757033.Spec : Prop :=
  ∀ n, (P5681861259077757033.a n : ℤ) = A013720 n

end A013720

/-! ## A013720.P4848543804610113653

`root(15, tan(acot(2*n+1)))`
-/

namespace A013720.P4848543804610113653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (15 : ℝ) ^ (1 / Real.tan (SequenceMachineLib.acot (2 * n + 1 : ℝ)))

end

end A013720.P4848543804610113653

namespace A013720

/-- `root(15, tan(acot(2*n+1)))` -/
def P4848543804610113653.Spec : Prop :=
  ∀ n, P4848543804610113653.a n = (A013720 n : ℝ)

end A013720

/-!
# A013721: a(n) = 16^(2*n + 1).

The programs for A013721, the canonical program `A013721.P15433030324031672499` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013721 has offset 0).

The definition of A013721 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16^(2*n+1)` (program `A013721.P15433030324031672499`, by `A013721.P15433030324031672499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013721.P15433030324031672499

`16^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013721

/-- `16^(2*n+1)` -/
def P15433030324031672499.Spec : Prop :=
  ∀ n, (P15433030324031672499.a n : ℤ) = A013721 n

theorem P15433030324031672499.correct : P15433030324031672499.Spec := by
  intro n
  simp only [A013721]

end A013721

/-! ## A013721.P12533160979311961043

`256*a(n-1)` with `a(0)=16`
-/

namespace A013721.P12533160979311961043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  256 * a (n - 1)

end

end A013721.P12533160979311961043

namespace A013721

/-- `256*a(n-1)` -/
def P12533160979311961043.Spec : Prop :=
  ∀ n, (P12533160979311961043.a n : ℤ) = A013721 n

theorem P12533160979311961043.correct : P12533160979311961043.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013721, Nat.add_sub_cancel, A013721.P12533160979311961043.a, A013721.P15433030324031672499.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013721, Nat.add_sub_cancel, A013721.P12533160979311961043.a, A013721.P15433030324031672499.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013721

/-! ## A013721.P7921883920829060190

`4*A013780(n)`
-/

namespace A013721.P7921883920829060190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013780 n

end

end A013721.P7921883920829060190

namespace A013721

/-- `4*A013780(n)` -/
def P7921883920829060190.Spec : Prop :=
  ∀ n, P7921883920829060190.a n = A013721 n

end A013721

/-! ## A013721.P9599739916761971958

`record[16^xor(1, n)]`
-/

namespace A013721.P9599739916761971958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013721.P9599739916761971958

namespace A013721

/-- `record[16^xor(1, n)]` -/
def P9599739916761971958.Spec : Prop :=
  ∀ n, (P9599739916761971958.a n : ℤ) = A013721 n

end A013721

/-! ## A013721.P772039361699910705

`record[(-4)^or(2, n)]`
-/

namespace A013721.P772039361699910705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013721.P772039361699910705

namespace A013721

/-- `record[(-4)^or(2, n)]` -/
def P772039361699910705.Spec : Prop :=
  ∀ n, P772039361699910705.a n = A013721 n

end A013721

/-!
# A013722: a(n) = 17^(2*n + 1).

The programs for A013722, the canonical program `A013722.P14914365251670260800` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013722 has offset 0).

The definition of A013722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17^(2*n+1)` (program `A013722.P14914365251670260800`, by `A013722.P14914365251670260800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013722.P14914365251670260800

`17^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013722

/-- `17^(2*n+1)` -/
def P14914365251670260800.Spec : Prop :=
  ∀ n, (P14914365251670260800.a n : ℤ) = A013722 n

theorem P14914365251670260800.correct : P14914365251670260800.Spec := by
  intro n
  simp only [A013722]

end A013722

/-! ## A013722.P10088483019926750597

`record[17^xor(1, n)]`
-/

namespace A013722.P10088483019926750597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013722.P10088483019926750597

namespace A013722

/-- `record[17^xor(1, n)]` -/
def P10088483019926750597.Spec : Prop :=
  ∀ n, (P10088483019926750597.a n : ℤ) = A013722 n

end A013722

/-! ## A013722.P15073183960517488592

`a(n-1)*289` with `a(0)=17`
-/

namespace A013722.P15073183960517488592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17] fun n a =>
  a (n - 1) * 289

end

end A013722.P15073183960517488592

namespace A013722

/-- `a(n-1)*289` -/
def P15073183960517488592.Spec : Prop :=
  ∀ n, (P15073183960517488592.a n : ℤ) = A013722 n

theorem P15073183960517488592.correct : P15073183960517488592.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013722, Nat.add_sub_cancel, A013722.P15073183960517488592.a, A013722.P14914365251670260800.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013722, Nat.add_sub_cancel, A013722.P15073183960517488592.a, A013722.P14914365251670260800.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013722

/-! ## A013722.P9174526128554777767

`record[17^n^(n%2)]`
-/

namespace A013722.P9174526128554777767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013722.P9174526128554777767

namespace A013722

/-- `record[17^n^(n%2)]` -/
def P9174526128554777767.Spec : Prop :=
  ∀ n, (P9174526128554777767.a n : ℤ) = A013722 n

end A013722

/-! ## A013722.P15437251570635856999

`record[17^(lcm(4, n+1)/4)]`
-/

namespace A013722.P15437251570635856999
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (17 : ℝ) ^ ((Nat.lcm 4 (n + 1) : ℚ) / 4 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013722.P15437251570635856999

namespace A013722

/-- `record[17^(lcm(4, n+1)/4)]` -/
def P15437251570635856999.Spec : Prop :=
  ∀ n, P15437251570635856999.a n = (A013722 n : ℝ)

end A013722

/-!
# A013723: a(n) = 18^(2*n + 1).

The programs for A013723, the canonical program `A013723.P9855891604072651284` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013723 has offset 0).

The definition of A013723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18^(2*n+1)` (program `A013723.P9855891604072651284`, by `A013723.P9855891604072651284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013723.P9855891604072651284

`18^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013723

/-- `18^(2*n+1)` -/
def P9855891604072651284.Spec : Prop :=
  ∀ n, (P9855891604072651284.a n : ℤ) = A013723 n

theorem P9855891604072651284.correct : P9855891604072651284.Spec := by
  intro n
  simp only [A013723]

end A013723

/-! ## A013723.P6321988176396671765

`record[18^xor(1, n)]`
-/

namespace A013723.P6321988176396671765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013723.P6321988176396671765

namespace A013723

/-- `record[18^xor(1, n)]` -/
def P6321988176396671765.Spec : Prop :=
  ∀ n, (P6321988176396671765.a n : ℤ) = A013723 n

end A013723

/-! ## A013723.P3987846819830151304

`a(n-1)*324` with `a(0)=18`
-/

namespace A013723.P3987846819830151304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  a (n - 1) * 324

end

end A013723.P3987846819830151304

namespace A013723

/-- `a(n-1)*324` -/
def P3987846819830151304.Spec : Prop :=
  ∀ n, (P3987846819830151304.a n : ℤ) = A013723 n

theorem P3987846819830151304.correct : P3987846819830151304.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013723, Nat.add_sub_cancel, A013723.P3987846819830151304.a, A013723.P9855891604072651284.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013723, Nat.add_sub_cancel, A013723.P3987846819830151304.a, A013723.P9855891604072651284.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013723

/-! ## A013723.P678417941309665235

`record[18^n^(n%2)]`
-/

namespace A013723.P678417941309665235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013723.P678417941309665235

namespace A013723

/-- `record[18^n^(n%2)]` -/
def P678417941309665235.Spec : Prop :=
  ∀ n, (P678417941309665235.a n : ℤ) = A013723 n

end A013723

/-! ## A013723.P7790178851730178913

`record[18^(lcm(2, n+2)/2)]`
-/

namespace A013723.P7790178851730178913
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (18 : ℝ) ^ ((Nat.lcm 2 (n + 2) : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013723.P7790178851730178913

namespace A013723

/-- `record[18^(lcm(2, n+2)/2)]` -/
def P7790178851730178913.Spec : Prop :=
  ∀ n, P7790178851730178913.a n = (A013723 n : ℝ)

end A013723

/-!
# A013724: a(n) = 19^(2*n + 1).

The programs for A013724, the canonical program `A013724.P2777724840430108132` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013724 has offset 0).

The definition of A013724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19^(2*n+1)` (program `A013724.P2777724840430108132`, by `A013724.P2777724840430108132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013724.P2777724840430108132

`19^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013724

/-- `19^(2*n+1)` -/
def P2777724840430108132.Spec : Prop :=
  ∀ n, (P2777724840430108132.a n : ℤ) = A013724 n

theorem P2777724840430108132.correct : P2777724840430108132.Spec := by
  intro n
  simp only [A013724]

end A013724

/-! ## A013724.P8373518898357794925

`record[19^xor(1, n)]`
-/

namespace A013724.P8373518898357794925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013724.P8373518898357794925

namespace A013724

/-- `record[19^xor(1, n)]` -/
def P8373518898357794925.Spec : Prop :=
  ∀ n, (P8373518898357794925.a n : ℤ) = A013724 n

end A013724

/-! ## A013724.P14646974876278663582

`a(n-1)*361` with `a(0)=19`
-/

namespace A013724.P14646974876278663582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19] fun n a =>
  a (n - 1) * 361

end

end A013724.P14646974876278663582

namespace A013724

/-- `a(n-1)*361` -/
def P14646974876278663582.Spec : Prop :=
  ∀ n, (P14646974876278663582.a n : ℤ) = A013724 n

theorem P14646974876278663582.correct : P14646974876278663582.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013724, Nat.add_sub_cancel, A013724.P14646974876278663582.a, A013724.P2777724840430108132.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013724, Nat.add_sub_cancel, A013724.P14646974876278663582.a, A013724.P2777724840430108132.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013724

/-! ## A013724.P5297014143309280255

`record[19^n^(n%2)]`
-/

namespace A013724.P5297014143309280255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013724.P5297014143309280255

namespace A013724

/-- `record[19^n^(n%2)]` -/
def P5297014143309280255.Spec : Prop :=
  ∀ n, (P5297014143309280255.a n : ℤ) = A013724 n

end A013724

/-! ## A013724.P3206716196200132489

`A017961(A016825(n))`
-/

namespace A013724.P3206716196200132489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017961 (A016825 n).toNat

end

end A013724.P3206716196200132489

namespace A013724

/-- `A017961(A016825(n))` -/
def P3206716196200132489.Spec : Prop :=
  ∀ n, P3206716196200132489.a n = A013724 n

end A013724

/-!
# A013725: a(n) = 20^(2*n + 1).

The programs for A013725, the canonical program `A013725.P12803188793566764211` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013725 has offset 0).

The definition of A013725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20^(2*n+1)` (program `A013725.P12803188793566764211`, by `A013725.P12803188793566764211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013725.P12803188793566764211

`20^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013725

/-- `20^(2*n+1)` -/
def P12803188793566764211.Spec : Prop :=
  ∀ n, (P12803188793566764211.a n : ℤ) = A013725 n

theorem P12803188793566764211.correct : P12803188793566764211.Spec := by
  intro n
  simp only [A013725]

end A013725

/-! ## A013725.P8003037033236157076

`record[20^xor(1, n)]`
-/

namespace A013725.P8003037033236157076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013725.P8003037033236157076

namespace A013725

/-- `record[20^xor(1, n)]` -/
def P8003037033236157076.Spec : Prop :=
  ∀ n, (P8003037033236157076.a n : ℤ) = A013725 n

end A013725

/-! ## A013725.P9428328259438061549

`a(n-1)*400` with `a(0)=20`
-/

namespace A013725.P9428328259438061549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  a (n - 1) * 400

end

end A013725.P9428328259438061549

namespace A013725

/-- `a(n-1)*400` -/
def P9428328259438061549.Spec : Prop :=
  ∀ n, (P9428328259438061549.a n : ℤ) = A013725 n

theorem P9428328259438061549.correct : P9428328259438061549.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013725, Nat.add_sub_cancel, A013725.P9428328259438061549.a, A013725.P12803188793566764211.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013725, Nat.add_sub_cancel, A013725.P9428328259438061549.a, A013725.P12803188793566764211.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013725

/-! ## A013725.P17443136906106124435

`record[20^n^(n%2)]`
-/

namespace A013725.P17443136906106124435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013725.P17443136906106124435

namespace A013725

/-- `record[20^n^(n%2)]` -/
def P17443136906106124435.Spec : Prop :=
  ∀ n, (P17443136906106124435.a n : ℤ) = A013725 n

end A013725

/-! ## A013725.P7135794789267821353

`record[20^(lcm(4, n+1)/4)]`
-/

namespace A013725.P7135794789267821353
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (20 : ℝ) ^ ((Nat.lcm 4 (n + 1) : ℚ) / 4 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013725.P7135794789267821353

namespace A013725

/-- `record[20^(lcm(4, n+1)/4)]` -/
def P7135794789267821353.Spec : Prop :=
  ∀ n, P7135794789267821353.a n = (A013725 n : ℝ)

end A013725

/-!
# A013726: a(n) = 21^(2*n + 1).

The programs for A013726, the canonical program `A013726.P5914476121105491091` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013726 has offset 0).

The definition of A013726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21^(2*n+1)` (program `A013726.P5914476121105491091`, by `A013726.P5914476121105491091.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013726.P5914476121105491091

`21^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013726

/-- `21^(2*n+1)` -/
def P5914476121105491091.Spec : Prop :=
  ∀ n, (P5914476121105491091.a n : ℤ) = A013726 n

theorem P5914476121105491091.correct : P5914476121105491091.Spec := by
  intro n
  simp only [A013726]

end A013726

/-! ## A013726.P17359598839763377298

`record[21^xor(1, n)]`
-/

namespace A013726.P17359598839763377298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013726.P17359598839763377298

namespace A013726

/-- `record[21^xor(1, n)]` -/
def P17359598839763377298.Spec : Prop :=
  ∀ n, (P17359598839763377298.a n : ℤ) = A013726 n

end A013726

/-! ## A013726.P18159540443639986192

`a(n-1)*441` with `a(0)=21`
-/

namespace A013726.P18159540443639986192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  a (n - 1) * 441

end

end A013726.P18159540443639986192

namespace A013726

/-- `a(n-1)*441` -/
def P18159540443639986192.Spec : Prop :=
  ∀ n, (P18159540443639986192.a n : ℤ) = A013726 n

theorem P18159540443639986192.correct : P18159540443639986192.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013726, Nat.add_sub_cancel, A013726.P18159540443639986192.a, A013726.P5914476121105491091.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013726, Nat.add_sub_cancel, A013726.P18159540443639986192.a, A013726.P5914476121105491091.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013726

/-! ## A013726.P12452315596427921651

`record[21^n^(n%2)]`
-/

namespace A013726.P12452315596427921651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013726.P12452315596427921651

namespace A013726

/-- `record[21^n^(n%2)]` -/
def P12452315596427921651.Spec : Prop :=
  ∀ n, (P12452315596427921651.a n : ℤ) = A013726 n

end A013726

/-! ## A013726.P10470634859398096470

`record[21^(lcm(4, n+1)/4)]`
-/

namespace A013726.P10470634859398096470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (21 : ℝ) ^ ((Nat.lcm 4 (n + 1) : ℚ) / 4 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013726.P10470634859398096470

namespace A013726

/-- `record[21^(lcm(4, n+1)/4)]` -/
def P10470634859398096470.Spec : Prop :=
  ∀ n, P10470634859398096470.a n = (A013726 n : ℝ)

end A013726

/-!
# A013727: a(n) = 22^(2*n + 1).

The programs for A013727, the canonical program `A013727.P10208001047516219462` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013727 has offset 0).

The definition of A013727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22^(2*n+1)` (program `A013727.P10208001047516219462`, by `A013727.P10208001047516219462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013727.P10208001047516219462

`22^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013727

/-- `22^(2*n+1)` -/
def P10208001047516219462.Spec : Prop :=
  ∀ n, (P10208001047516219462.a n : ℤ) = A013727 n

theorem P10208001047516219462.correct : P10208001047516219462.Spec := by
  intro n
  simp only [A013727]

end A013727

/-! ## A013727.P2090295418324411247

`record[22^xor(1, n)]`
-/

namespace A013727.P2090295418324411247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013727.P2090295418324411247

namespace A013727

/-- `record[22^xor(1, n)]` -/
def P2090295418324411247.Spec : Prop :=
  ∀ n, (P2090295418324411247.a n : ℤ) = A013727 n

end A013727

/-! ## A013727.P16506075404902589480

`a(n-1)*484` with `a(0)=22`
-/

namespace A013727.P16506075404902589480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22] fun n a =>
  a (n - 1) * 484

end

end A013727.P16506075404902589480

namespace A013727

/-- `a(n-1)*484` -/
def P16506075404902589480.Spec : Prop :=
  ∀ n, (P16506075404902589480.a n : ℤ) = A013727 n

theorem P16506075404902589480.correct : P16506075404902589480.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013727, Nat.add_sub_cancel, A013727.P16506075404902589480.a, A013727.P10208001047516219462.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013727, Nat.add_sub_cancel, A013727.P16506075404902589480.a, A013727.P10208001047516219462.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013727

/-! ## A013727.P1942301284808366499

`record[22^n^(n%2)]`
-/

namespace A013727.P1942301284808366499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013727.P1942301284808366499

namespace A013727

/-- `record[22^n^(n%2)]` -/
def P1942301284808366499.Spec : Prop :=
  ∀ n, (P1942301284808366499.a n : ℤ) = A013727 n

end A013727

/-! ## A013727.P5611089397856032658

`record[22^(lcm(2, n+2)/2)]`
-/

namespace A013727.P5611089397856032658
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (22 : ℝ) ^ ((Nat.lcm 2 (n + 2) : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013727.P5611089397856032658

namespace A013727

/-- `record[22^(lcm(2, n+2)/2)]` -/
def P5611089397856032658.Spec : Prop :=
  ∀ n, P5611089397856032658.a n = (A013727 n : ℝ)

end A013727

/-!
# A013728: a(n) = 23^(2*n + 1).

The programs for A013728, the canonical program `A013728.P7555300757986489093` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013728 has offset 0).

The definition of A013728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23^(2*n+1)` (program `A013728.P7555300757986489093`, by `A013728.P7555300757986489093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013728.P7555300757986489093

`23^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013728

/-- `23^(2*n+1)` -/
def P7555300757986489093.Spec : Prop :=
  ∀ n, (P7555300757986489093.a n : ℤ) = A013728 n

theorem P7555300757986489093.correct : P7555300757986489093.Spec := by
  intro n
  simp only [A013728]

end A013728

/-! ## A013728.P1031101239965528185

`record[23^xor(1, n)]`
-/

namespace A013728.P1031101239965528185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013728.P1031101239965528185

namespace A013728

/-- `record[23^xor(1, n)]` -/
def P1031101239965528185.Spec : Prop :=
  ∀ n, (P1031101239965528185.a n : ℤ) = A013728 n

end A013728

/-! ## A013728.P12294180541354898098

`a(n-1)*529` with `a(0)=23`
-/

namespace A013728.P12294180541354898098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [23] fun n a =>
  a (n - 1) * 529

end

end A013728.P12294180541354898098

namespace A013728

/-- `a(n-1)*529` -/
def P12294180541354898098.Spec : Prop :=
  ∀ n, (P12294180541354898098.a n : ℤ) = A013728 n

theorem P12294180541354898098.correct : P12294180541354898098.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013728, Nat.add_sub_cancel, A013728.P12294180541354898098.a, A013728.P7555300757986489093.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013728, Nat.add_sub_cancel, A013728.P12294180541354898098.a, A013728.P7555300757986489093.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013728

/-! ## A013728.P7450596795161802335

`record[23^n^(n%2)]`
-/

namespace A013728.P7450596795161802335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013728.P7450596795161802335

namespace A013728

/-- `record[23^n^(n%2)]` -/
def P7450596795161802335.Spec : Prop :=
  ∀ n, (P7450596795161802335.a n : ℤ) = A013728 n

end A013728

/-! ## A013728.P6980434730247264340

`a(n-1)/(1/23)²` with `a(0)=23`
-/

namespace A013728.P6980434730247264340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [23] fun n a =>
  a (n - 1) / ((1 : ℚ) / 23) ^ 2

end

end A013728.P6980434730247264340

namespace A013728

/-- `a(n-1)/(1/23)²` -/
def P6980434730247264340.Spec : Prop :=
  ∀ n, P6980434730247264340.a n = (A013728 n : ℚ)

theorem P6980434730247264340.correct : P6980434730247264340.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013728, Nat.add_sub_cancel, A013728.P6980434730247264340.a, A013728.P7555300757986489093.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013728, Nat.add_sub_cancel, A013728.P6980434730247264340.a, A013728.P7555300757986489093.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013728

/-!
# A013729: a(n) = 24^(2*n + 1).

The programs for A013729, the canonical program `A013729.P17515895215353759438` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013729 has offset 0).

The definition of A013729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24^(2*n+1)` (program `A013729.P17515895215353759438`, by `A013729.P17515895215353759438.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013729.P17515895215353759438

`24^(2*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013729

/-- `24^(2*n+1)` -/
def P17515895215353759438.Spec : Prop :=
  ∀ n, (P17515895215353759438.a n : ℤ) = A013729 n

theorem P17515895215353759438.correct : P17515895215353759438.Spec := by
  intro n
  simp only [A013729]

end A013729

/-! ## A013729.P7821762846796807383

`record[24^xor(1, n)]`
-/

namespace A013729.P7821762846796807383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013729.P7821762846796807383

namespace A013729

/-- `record[24^xor(1, n)]` -/
def P7821762846796807383.Spec : Prop :=
  ∀ n, (P7821762846796807383.a n : ℤ) = A013729 n

end A013729

/-! ## A013729.P18403913103466717876

`a(n-1)*576` with `a(0)=24`
-/

namespace A013729.P18403913103466717876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  a (n - 1) * 576

end

end A013729.P18403913103466717876

namespace A013729

/-- `a(n-1)*576` -/
def P18403913103466717876.Spec : Prop :=
  ∀ n, (P18403913103466717876.a n : ℤ) = A013729 n

theorem P18403913103466717876.correct : P18403913103466717876.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013729, Nat.add_sub_cancel, A013729.P18403913103466717876.a, A013729.P17515895215353759438.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013729, Nat.add_sub_cancel, A013729.P18403913103466717876.a, A013729.P17515895215353759438.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013729

/-! ## A013729.P10246643350765927118

`record[24^n^(n%2)]`
-/

namespace A013729.P10246643350765927118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ n ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013729.P10246643350765927118

namespace A013729

/-- `record[24^n^(n%2)]` -/
def P10246643350765927118.Spec : Prop :=
  ∀ n, (P10246643350765927118.a n : ℤ) = A013729 n

end A013729

/-! ## A013729.P17656624355526054407

`24*24^val(48^n, 4)`
-/

namespace A013729.P17656624355526054407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * 24 ^ SequenceMachineLib.valuation (48 ^ n) 4

end

end A013729.P17656624355526054407

namespace A013729

/-- `24*24^val(48^n, 4)` -/
def P17656624355526054407.Spec : Prop :=
  ∀ n, (P17656624355526054407.a n : ℤ) = A013729 n

end A013729

/-!
# A013730: a(n) = 2^(3*n+1).

The programs for A013730, the canonical program `A013730.P2917030097575924018` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013730 has offset 0).

The definition of A013730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(3*n+1)` (program `A013730.P2917030097575924018`, by `A013730.P2917030097575924018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013730.P18260097067349290576

`ogf(2/(1-8x))`
-/

namespace A013730.P18260097067349290576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -8] n

end

end A013730.P18260097067349290576

namespace A013730

/-- `ogf(2/(1-8x))` -/
def P18260097067349290576.Spec : Prop :=
  ∀ n, P18260097067349290576.a n = A013730 n

end A013730

/-! ## A013730.P2917030097575924018

`2^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013730

/-- `2^(3*n+1)` -/
def P2917030097575924018.Spec : Prop :=
  ∀ n, (P2917030097575924018.a n : ℤ) = A013730 n

theorem P2917030097575924018.correct : P2917030097575924018.Spec := by
  intro n
  simp only [A013730]

end A013730

/-! ## A013730.P2357941398255762774

`8*a(n-1)` with `a(0)=2`
-/

namespace A013730.P2357941398255762774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1)

end

end A013730.P2357941398255762774

namespace A013730

/-- `8*a(n-1)` -/
def P2357941398255762774.Spec : Prop :=
  ∀ n, (P2357941398255762774.a n : ℤ) = A013730 n

theorem P2357941398255762774.correct : P2357941398255762774.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013730, Nat.add_sub_cancel, A013730.P2357941398255762774.a, A013730.P2917030097575924018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013730, Nat.add_sub_cancel, A013730.P2357941398255762774.a, A013730.P2917030097575924018.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013730

/-! ## A013730.P12365679666093615922

`A157176(A016921(n))`
-/

namespace A013730.P12365679666093615922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157176 (A016921 n).toNat

end

end A013730.P12365679666093615922

namespace A013730

/-- `A157176(A016921(n))` -/
def P12365679666093615922.Spec : Prop :=
  ∀ n, P12365679666093615922.a n = A013730 n

end A013730

/-! ## A013730.P10636813670645589647

`A157176(A016933(n))`
-/

namespace A013730.P10636813670645589647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157176 (A016933 n).toNat

end

end A013730.P10636813670645589647

namespace A013730

/-- `A157176(A016933(n))` -/
def P10636813670645589647.Spec : Prop :=
  ∀ n, P10636813670645589647.a n = A013730 n

end A013730

/-! ## A013730.P7651944578024070032

`record[((n+2)%3)^(n+1)]`
-/

namespace A013730.P7651944578024070032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) % 3) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013730.P7651944578024070032

namespace A013730

/-- `record[((n+2)%3)^(n+1)]` -/
def P7651944578024070032.Spec : Prop :=
  ∀ n, (P7651944578024070032.a n : ℤ) = A013730 n

end A013730

/-! ## A013730.P6217242407874462503

`record[(gcd(3, n)-1)^(n+1)]`
-/

namespace A013730.P6217242407874462503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 3 n : ℤ) - 1) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013730.P6217242407874462503

namespace A013730

/-- `record[(gcd(3, n)-1)^(n+1)]` -/
def P6217242407874462503.Spec : Prop :=
  ∀ n, P6217242407874462503.a n = A013730 n

end A013730

/-! ## A013730.P10427429782309495054

`record[2^(n+1-dr(∑[n]))]`
-/

namespace A013730.P10427429782309495054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013730.P10427429782309495054

namespace A013730

/-- `record[2^(n+1-dr(∑[n]))]` -/
def P10427429782309495054.Spec : Prop :=
  ∀ n, P10427429782309495054.a n = (A013730 n : ℚ)

end A013730

/-! ## A013730.P4267994567557936054

`a(n-1)/(1/2)^3` with `a(0)=2`
-/

namespace A013730.P4267994567557936054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3

end

end A013730.P4267994567557936054

namespace A013730

/-- `a(n-1)/(1/2)^3` -/
def P4267994567557936054.Spec : Prop :=
  ∀ n, P4267994567557936054.a n = (A013730 n : ℚ)

theorem P4267994567557936054.correct : P4267994567557936054.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013730, Nat.add_sub_cancel, A013730.P4267994567557936054.a, A013730.P2917030097575924018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013730, Nat.add_sub_cancel, A013730.P4267994567557936054.a, A013730.P2917030097575924018.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013730

/-! ## A013730.P11679326930785383504

`record[2^((n+1)/dr(∑[n+1]))]`
-/

namespace A013730.P11679326930785383504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013730.P11679326930785383504

namespace A013730

/-- `record[2^((n+1)/dr(∑[n+1]))]` -/
def P11679326930785383504.Spec : Prop :=
  ∀ n, P11679326930785383504.a n = (A013730 n : ℝ)

end A013730

/-! ## A013730.P533741634235216842

`2*∑{#}[n, 7^(n-#)*C(n, #)]`
-/

namespace A013730.P533741634235216842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1), (7 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ))

end

end A013730.P533741634235216842

namespace A013730

/-- `2*∑{#}[n, 7^(n-#)*C(n, #)]` -/
def P533741634235216842.Spec : Prop :=
  ∀ n, P533741634235216842.a n = (A013730 n : ℚ)

end A013730

/-! ## A013730.P15000072509016781744

`A198850(n)+1`
-/

namespace A013730.P15000072509016781744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198850 n + 1

end

end A013730.P15000072509016781744

namespace A013730

/-- `A198850(n)+1` -/
def P15000072509016781744.Spec : Prop :=
  ∀ n, P15000072509016781744.a n = A013730 n

end A013730

/-! ## A013730.P1711367487677664882

`A199493(n)-1`
-/

namespace A013730.P1711367487677664882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199493 n - 1

end

end A013730.P1711367487677664882

namespace A013730

/-- `A199493(n)-1` -/
def P1711367487677664882.Spec : Prop :=
  ∀ n, P1711367487677664882.a n = A013730 n

end A013730

/-! ## A013730.P14549990275574527575

`2*A001018(n)`
-/

namespace A013730.P14549990275574527575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

end

end A013730.P14549990275574527575

namespace A013730

/-- `2*A001018(n)` -/
def P14549990275574527575.Spec : Prop :=
  ∀ n, P14549990275574527575.a n = A013730 n

end A013730

/-! ## A013730.P1280435934294678531

`A013731(n)/2`
-/

namespace A013730.P1280435934294678531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013731 n : ℚ) / 2

end

end A013730.P1280435934294678531

namespace A013730

/-- `A013731(n)/2` -/
def P1280435934294678531.Spec : Prop :=
  ∀ n, P1280435934294678531.a n = (A013730 n : ℚ)

theorem P1280435934294678531.correct : P1280435934294678531.Spec := by
  intro n
  simp only [A013730, Nat.add_sub_cancel, A013730.P1280435934294678531.a, A013730.P2917030097575924018.a, A013731, A013731.P1768180079901164163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013730

/-! ## A013730.P17185463137429969072

`A130752(3*n)`
-/

namespace A013730.P17185463137429969072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130752 (3 * n)

end

end A013730.P17185463137429969072

namespace A013730

/-- `A130752(3*n)` -/
def P17185463137429969072.Spec : Prop :=
  ∀ n, P17185463137429969072.a n = A013730 n

end A013730

/-! ## A013730.P2994893003165060152

`A135530(6*n)`
-/

namespace A013730.P2994893003165060152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (6 * n)

end

end A013730.P2994893003165060152

namespace A013730

/-- `A135530(6*n)` -/
def P2994893003165060152.Spec : Prop :=
  ∀ n, P2994893003165060152.a n = A013730 n

end A013730

/-! ## A013730.P18093940244177146906

`A098617(Δ[n²])`
-/

namespace A013730.P18093940244177146906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098617 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013730.P18093940244177146906

namespace A013730

/-- `A098617(Δ[n²])` -/
def P18093940244177146906.Spec : Prop :=
  ∀ n, P18093940244177146906.a n = A013730 n

end A013730

/-! ## A013730.P1101900671582972286

`Δ[A125835(n+1)]`
-/

namespace A013730.P1101900671582972286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013730.P1101900671582972286

namespace A013730

/-- `Δ[A125835(n+1)]` -/
def P1101900671582972286.Spec : Prop :=
  ∀ n, P1101900671582972286.a n = A013730 n

end A013730

/-! ## A013730.P12445170711356792203

`2*(A024088(n)+1)`
-/

namespace A013730.P12445170711356792203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024088 n + 1)

end

end A013730.P12445170711356792203

namespace A013730

/-- `2*(A024088(n)+1)` -/
def P12445170711356792203.Spec : Prop :=
  ∀ n, P12445170711356792203.a n = A013730 n

end A013730

/-!
# A013731: a(n) = 2^(3*n+2).

The programs for A013731, the canonical program `A013731.P1768180079901164163` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013731 has offset 0).

The definition of A013731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(3*n+2)` (program `A013731.P1768180079901164163`, by `A013731.P1768180079901164163.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013731.P12298163355726726851

`ogf(4/(1-8x))`
-/

namespace A013731.P12298163355726726851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -8] n

end

end A013731.P12298163355726726851

namespace A013731

/-- `ogf(4/(1-8x))` -/
def P12298163355726726851.Spec : Prop :=
  ∀ n, P12298163355726726851.a n = A013731 n

end A013731

/-! ## A013731.P1768180079901164163

`2^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013731

/-- `2^(3*n+2)` -/
def P1768180079901164163.Spec : Prop :=
  ∀ n, (P1768180079901164163.a n : ℤ) = A013731 n

theorem P1768180079901164163.correct : P1768180079901164163.Spec := by
  intro n
  simp only [A013731]

end A013731

/-! ## A013731.P14532027995356065391

`8*a(n-1)` with `a(0)=4`
-/

namespace A013731.P14532027995356065391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  8 * a (n - 1)

end

end A013731.P14532027995356065391

namespace A013731

/-- `8*a(n-1)` -/
def P14532027995356065391.Spec : Prop :=
  ∀ n, (P14532027995356065391.a n : ℤ) = A013731 n

theorem P14532027995356065391.correct : P14532027995356065391.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013731, Nat.add_sub_cancel, A013731.P14532027995356065391.a, A013731.P1768180079901164163.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013731, Nat.add_sub_cancel, A013731.P14532027995356065391.a, A013731.P1768180079901164163.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013731

/-! ## A013731.P17559042367422803396

`A092811(n+1)`
-/

namespace A013731.P17559042367422803396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 (n + 1)

end

end A013731.P17559042367422803396

namespace A013731

/-- `A092811(n+1)` -/
def P17559042367422803396.Spec : Prop :=
  ∀ n, P17559042367422803396.a n = A013731 n

end A013731

/-! ## A013731.P14986393388019911299

`A198852(n)+1`
-/

namespace A013731.P14986393388019911299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198852 n + 1

end

end A013731.P14986393388019911299

namespace A013731

/-- `A198852(n)+1` -/
def P14986393388019911299.Spec : Prop :=
  ∀ n, P14986393388019911299.a n = A013731 n

end A013731

/-! ## A013731.P17806546215261046490

`4*A001018(n)`
-/

namespace A013731.P17806546215261046490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001018 n

end

end A013731.P17806546215261046490

namespace A013731

/-- `4*A001018(n)` -/
def P17806546215261046490.Spec : Prop :=
  ∀ n, P17806546215261046490.a n = A013731 n

end A013731

/-! ## A013731.P18152484478380520814

`8^n/cot(atan(4))`
-/

namespace A013731.P18152484478380520814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℝ) / Real.cot (Real.arctan (4 : ℝ))

end

end A013731.P18152484478380520814

namespace A013731

/-- `8^n/cot(atan(4))` -/
def P18152484478380520814.Spec : Prop :=
  ∀ n, P18152484478380520814.a n = (A013731 n : ℝ)

end A013731

/-! ## A013731.P11448862367620874570

`Δ[A046636(n)]`
-/

namespace A013731.P11448862367620874570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013731.P11448862367620874570

namespace A013731

/-- `Δ[A046636(n)]` -/
def P11448862367620874570.Spec : Prop :=
  ∀ n, P11448862367620874570.a n = A013731 n

end A013731

/-! ## A013731.P1496190759833149363

`Δ[A108019(n)]`
-/

namespace A013731.P1496190759833149363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A013731.P1496190759833149363

namespace A013731

/-- `Δ[A108019(n)]` -/
def P1496190759833149363.Spec : Prop :=
  ∀ n, P1496190759833149363.a n = A013731 n

end A013731

/-! ## A013731.P16859663249933334317

`A199552(n)-1`
-/

namespace A013731.P16859663249933334317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199552 n - 1

end

end A013731.P16859663249933334317

namespace A013731

/-- `A199552(n)-1` -/
def P16859663249933334317.Spec : Prop :=
  ∀ n, P16859663249933334317.a n = A013731 n

end A013731

/-! ## A013731.P4444313136733081851

`2*A013730(n)`
-/

namespace A013731.P4444313136733081851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013730 n

end

end A013731.P4444313136733081851

namespace A013731

/-- `2*A013730(n)` -/
def P4444313136733081851.Spec : Prop :=
  ∀ n, P4444313136733081851.a n = A013731 n

theorem P4444313136733081851.correct : P4444313136733081851.Spec := by
  intro n
  simp only [A013731, Nat.add_sub_cancel, A013731.P4444313136733081851.a, A013731.P1768180079901164163.a, A013730, A013730.P2917030097575924018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013731

/-! ## A013731.P2491055583384520166

`A020707(3*n)`
-/

namespace A013731.P2491055583384520166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (3 * n)

end

end A013731.P2491055583384520166

namespace A013731

/-- `A020707(3*n)` -/
def P2491055583384520166.Spec : Prop :=
  ∀ n, P2491055583384520166.a n = A013731 n

end A013731

/-! ## A013731.P7305837491034353981

`A112032(6*n)`
-/

namespace A013731.P7305837491034353981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 (6 * n)

end

end A013731.P7305837491034353981

namespace A013731

/-- `A112032(6*n)` -/
def P7305837491034353981.Spec : Prop :=
  ∀ n, P7305837491034353981.a n = A013731 n

end A013731

/-! ## A013731.P15585503211237424272

`A094015(Δ[n²])`
-/

namespace A013731.P15585503211237424272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013731.P15585503211237424272

namespace A013731

/-- `A094015(Δ[n²])` -/
def P15585503211237424272.Spec : Prop :=
  ∀ n, P15585503211237424272.a n = A013731 n

end A013731

/-! ## A013731.P14748714556844011970

`A101653(Δ[n²])`
-/

namespace A013731.P14748714556844011970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101653 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013731.P14748714556844011970

namespace A013731

/-- `A101653(Δ[n²])` -/
def P14748714556844011970.Spec : Prop :=
  ∀ n, P14748714556844011970.a n = A013731 n

end A013731

/-! ## A013731.P14562451421537517112

`record[A076936(n+2)]`
-/

namespace A013731.P14562451421537517112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076936 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013731.P14562451421537517112

namespace A013731

/-- `record[A076936(n+2)]` -/
def P14562451421537517112.Spec : Prop :=
  ∀ n, P14562451421537517112.a n = A013731 n

end A013731

/-! ## A013731.P14848793256392627474

`A076936(2*(n+1))`
-/

namespace A013731.P14848793256392627474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076936 (2 * (n + 1))

end

end A013731.P14848793256392627474

namespace A013731

/-- `A076936(2*(n+1))` -/
def P14848793256392627474.Spec : Prop :=
  ∀ n, P14848793256392627474.a n = A013731 n

end A013731

/-! ## A013731.P7076069815417697576

`2*(A198850(n)+1)`
-/

namespace A013731.P7076069815417697576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198850 n + 1)

end

end A013731.P7076069815417697576

namespace A013731

/-- `2*(A198850(n)+1)` -/
def P7076069815417697576.Spec : Prop :=
  ∀ n, P7076069815417697576.a n = A013731 n

end A013731

/-! ## A013731.P9354618530395122019

`A011782(3*(n+1))`
-/

namespace A013731.P9354618530395122019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (3 * (n + 1))

end

end A013731.P9354618530395122019

namespace A013731

/-- `A011782(3*(n+1))` -/
def P9354618530395122019.Spec : Prop :=
  ∀ n, P9354618530395122019.a n = A013731 n

end A013731

/-! ## A013731.P3375239324353128097

`A130755(3*n+1)`
-/

namespace A013731.P3375239324353128097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130755 (3 * n + 1)

end

end A013731.P3375239324353128097

namespace A013731

/-- `A130755(3*n+1)` -/
def P3375239324353128097.Spec : Prop :=
  ∀ n, P3375239324353128097.a n = A013731 n

end A013731

/-!
# A013732: a(n) = 3^(3*n + 1).

The programs for A013732, the canonical program `A013732.P14130915832892077595` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013732 has offset 0).

The definition of A013732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(3*n+1)` (program `A013732.P14130915832892077595`, by `A013732.P14130915832892077595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013732.P11518723004099749957

`ogf(3/(1-27x))`
-/

namespace A013732.P11518723004099749957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -27] n

end

end A013732.P11518723004099749957

namespace A013732

/-- `ogf(3/(1-27x))` -/
def P11518723004099749957.Spec : Prop :=
  ∀ n, P11518723004099749957.a n = A013732 n

end A013732

/-! ## A013732.P14130915832892077595

`3^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013732

/-- `3^(3*n+1)` -/
def P14130915832892077595.Spec : Prop :=
  ∀ n, (P14130915832892077595.a n : ℤ) = A013732 n

theorem P14130915832892077595.correct : P14130915832892077595.Spec := by
  intro n
  simp only [A013732]

end A013732

/-! ## A013732.P1313299276489261287

`27*a(n-1)` with `a(0)=3`
-/

namespace A013732.P1313299276489261287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  27 * a (n - 1)

end

end A013732.P1313299276489261287

namespace A013732

/-- `27*a(n-1)` -/
def P1313299276489261287.Spec : Prop :=
  ∀ n, (P1313299276489261287.a n : ℤ) = A013732 n

theorem P1313299276489261287.correct : P1313299276489261287.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013732, Nat.add_sub_cancel, A013732.P1313299276489261287.a, A013732.P14130915832892077595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013732, Nat.add_sub_cancel, A013732.P1313299276489261287.a, A013732.P14130915832892077595.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013732

/-! ## A013732.P3091158945863433689

`record[gcd(3, n)^(n+1)]`
-/

namespace A013732.P3091158945863433689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013732.P3091158945863433689

namespace A013732

/-- `record[gcd(3, n)^(n+1)]` -/
def P3091158945863433689.Spec : Prop :=
  ∀ n, (P3091158945863433689.a n : ℤ) = A013732 n

end A013732

/-! ## A013732.P15589147929941720592

`record[3^(n+1-dr(∑[n]))]`
-/

namespace A013732.P15589147929941720592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013732.P15589147929941720592

namespace A013732

/-- `record[3^(n+1-dr(∑[n]))]` -/
def P15589147929941720592.Spec : Prop :=
  ∀ n, P15589147929941720592.a n = (A013732 n : ℚ)

end A013732

/-! ## A013732.P6938943577124614888

`record[3^((n+1)/dr(∑[n+1]))]`
-/

namespace A013732.P6938943577124614888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ ((n + 1 : ℚ) / (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013732.P6938943577124614888

namespace A013732

/-- `record[3^((n+1)/dr(∑[n+1]))]` -/
def P6938943577124614888.Spec : Prop :=
  ∀ n, P6938943577124614888.a n = (A013732 n : ℝ)

end A013732

/-! ## A013732.P4000585753946773548

`A055156(2*n)`
-/

namespace A013732.P4000585753946773548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055156 (2 * n)

end

end A013732.P4000585753946773548

namespace A013732

/-- `A055156(2*n)` -/
def P4000585753946773548.Spec : Prop :=
  ∀ n, P4000585753946773548.a n = A013732 n

end A013732

/-! ## A013732.P12799814880442126811

`3*A009971(n)`
-/

namespace A013732.P12799814880442126811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A009971 n

end

end A013732.P12799814880442126811

namespace A013732

/-- `3*A009971(n)` -/
def P12799814880442126811.Spec : Prop :=
  ∀ n, P12799814880442126811.a n = A013732 n

end A013732

/-! ## A013732.P3446473418582281322

`A013733(n)/3`
-/

namespace A013732.P3446473418582281322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013733 n : ℚ) / 3

end

end A013732.P3446473418582281322

namespace A013732

/-- `A013733(n)/3` -/
def P3446473418582281322.Spec : Prop :=
  ∀ n, P3446473418582281322.a n = (A013732 n : ℚ)

theorem P3446473418582281322.correct : P3446473418582281322.Spec := by
  intro n
  simp only [A013732, Nat.add_sub_cancel, A013732.P3446473418582281322.a, A013732.P14130915832892077595.a, A013733, A013733.P17011428937996474864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013732

/-!
# A013733: a(n) = 3^(3n+2).

The programs for A013733, the canonical program `A013733.P17011428937996474864` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013733 has offset 0).

The definition of A013733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(3*n+2)` (program `A013733.P17011428937996474864`, by `A013733.P17011428937996474864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013733.P16832213265607967235

`ogf(9/(1-27x))`
-/

namespace A013733.P16832213265607967235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9] [1, -27] n

end

end A013733.P16832213265607967235

namespace A013733

/-- `ogf(9/(1-27x))` -/
def P16832213265607967235.Spec : Prop :=
  ∀ n, P16832213265607967235.a n = A013733 n

end A013733

/-! ## A013733.P17011428937996474864

`3^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013733

/-- `3^(3*n+2)` -/
def P17011428937996474864.Spec : Prop :=
  ∀ n, (P17011428937996474864.a n : ℤ) = A013733 n

theorem P17011428937996474864.correct : P17011428937996474864.Spec := by
  intro n
  simp only [A013733]

end A013733

/-! ## A013733.P17124910560693137149

`27*a(n-1)` with `a(0)=9`
-/

namespace A013733.P17124910560693137149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  27 * a (n - 1)

end

end A013733.P17124910560693137149

namespace A013733

/-- `27*a(n-1)` -/
def P17124910560693137149.Spec : Prop :=
  ∀ n, (P17124910560693137149.a n : ℤ) = A013733 n

theorem P17124910560693137149.correct : P17124910560693137149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013733, Nat.add_sub_cancel, A013733.P17124910560693137149.a, A013733.P17011428937996474864.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013733, Nat.add_sub_cancel, A013733.P17124910560693137149.a, A013733.P17011428937996474864.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013733

/-! ## A013733.P1087785507311980842

`9*A009971(n)`
-/

namespace A013733.P1087785507311980842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A009971 n

end

end A013733.P1087785507311980842

namespace A013733

/-- `9*A009971(n)` -/
def P1087785507311980842.Spec : Prop :=
  ∀ n, P1087785507311980842.a n = A013733 n

end A013733

/-! ## A013733.P1048191713785244813

`record[gcd(3, n)^(n+2)]`
-/

namespace A013733.P1048191713785244813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013733.P1048191713785244813

namespace A013733

/-- `record[gcd(3, n)^(n+2)]` -/
def P1048191713785244813.Spec : Prop :=
  ∀ n, (P1048191713785244813.a n : ℤ) = A013733 n

end A013733

/-! ## A013733.P8393547812830807143

`3*A013732(n)`
-/

namespace A013733.P8393547812830807143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013732 n

end

end A013733.P8393547812830807143

namespace A013733

/-- `3*A013732(n)` -/
def P8393547812830807143.Spec : Prop :=
  ∀ n, P8393547812830807143.a n = A013733 n

theorem P8393547812830807143.correct : P8393547812830807143.Spec := by
  intro n
  simp only [A013733, Nat.add_sub_cancel, A013733.P8393547812830807143.a, A013733.P17011428937996474864.a, A013732, A013732.P14130915832892077595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013733

/-! ## A013733.P18220204358111798934

`A055156(Δ[n²])`
-/

namespace A013733.P18220204358111798934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055156 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013733.P18220204358111798934

namespace A013733

/-- `A055156(Δ[n²])` -/
def P18220204358111798934.Spec : Prop :=
  ∀ n, P18220204358111798934.a n = A013733 n

end A013733

/-! ## A013733.P6356414367162312720

`A133494(3*(n+1))`
-/

namespace A013733.P6356414367162312720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (3 * (n + 1))

end

end A013733.P6356414367162312720

namespace A013733

/-- `A133494(3*(n+1))` -/
def P6356414367162312720.Spec : Prop :=
  ∀ n, P6356414367162312720.a n = A013733 n

end A013733

/-! ## A013733.P4642338068338064586

`A140429(3*(n+1))`
-/

namespace A013733.P4642338068338064586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (3 * (n + 1))

end

end A013733.P4642338068338064586

namespace A013733

/-- `A140429(3*(n+1))` -/
def P4642338068338064586.Spec : Prop :=
  ∀ n, P4642338068338064586.a n = A013733 n

end A013733

/-! ## A013733.P2462171271228775455

`A155734(3*(n+1))`
-/

namespace A013733.P2462171271228775455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (3 * (n + 1))

end

end A013733.P2462171271228775455

namespace A013733

/-- `A155734(3*(n+1))` -/
def P2462171271228775455.Spec : Prop :=
  ∀ n, P2462171271228775455.a n = A013733 n

end A013733

/-!
# A013734: a(n) = 4^(3*n+1).

The programs for A013734, the canonical program `A013734.P17831906357502597496` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013734 has offset 0).

The definition of A013734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(3*n+1)` (program `A013734.P17831906357502597496`, by `A013734.P17831906357502597496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013734.P5534995820807349540

`ogf(4/(1-64x))`
-/

namespace A013734.P5534995820807349540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4] [1, -64] n

end

end A013734.P5534995820807349540

namespace A013734

/-- `ogf(4/(1-64x))` -/
def P5534995820807349540.Spec : Prop :=
  ∀ n, P5534995820807349540.a n = A013734 n

end A013734

/-! ## A013734.P17831906357502597496

`4^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013734

/-- `4^(3*n+1)` -/
def P17831906357502597496.Spec : Prop :=
  ∀ n, (P17831906357502597496.a n : ℤ) = A013734 n

theorem P17831906357502597496.correct : P17831906357502597496.Spec := by
  intro n
  simp only [A013734]

end A013734

/-! ## A013734.P15927532097924041682

`64*a(n-1)` with `a(0)=4`
-/

namespace A013734.P15927532097924041682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  64 * a (n - 1)

end

end A013734.P15927532097924041682

namespace A013734

/-- `64*a(n-1)` -/
def P15927532097924041682.Spec : Prop :=
  ∀ n, (P15927532097924041682.a n : ℤ) = A013734 n

theorem P15927532097924041682.correct : P15927532097924041682.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013734, Nat.add_sub_cancel, A013734.P15927532097924041682.a, A013734.P17831906357502597496.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013734, Nat.add_sub_cancel, A013734.P15927532097924041682.a, A013734.P17831906357502597496.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013734

/-! ## A013734.P7643604402760055899

`4*A089357(n)`
-/

namespace A013734.P7643604402760055899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089357 n

end

end A013734.P7643604402760055899

namespace A013734

/-- `4*A089357(n)` -/
def P7643604402760055899.Spec : Prop :=
  ∀ n, P7643604402760055899.a n = A013734 n

end A013734

/-! ## A013734.P4965725722255116149

`filter[2^n, dr(#)-3]`
-/

namespace A013734.P4965725722255116149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (SequenceMachineLib.digitalRoot (f1 j : ℤ) : ℤ) - 3 = 1) n)

end

end A013734.P4965725722255116149

namespace A013734

/-- `filter[2^n, dr(#)-3]` -/
def P4965725722255116149.Spec : Prop :=
  ∀ n, (P4965725722255116149.a n : ℤ) = A013734 n

end A013734

/-! ## A013734.P10512151203784481172

`(8^n)²/cot(atan(4))`
-/

namespace A013734.P10512151203784481172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 ^ n) ^ 2 : ℝ) / Real.cot (Real.arctan (4 : ℝ))

end

end A013734.P10512151203784481172

namespace A013734

/-- `(8^n)²/cot(atan(4))` -/
def P10512151203784481172.Spec : Prop :=
  ∀ n, P10512151203784481172.a n = (A013734 n : ℝ)

end A013734

/-! ## A013734.P390398811972049568

`A013730(n)²`
-/

namespace A013734.P390398811972049568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013730 n ^ 2

end

end A013734.P390398811972049568

namespace A013734

/-- `A013730(n)²` -/
def P390398811972049568.Spec : Prop :=
  ∀ n, P390398811972049568.a n = A013734 n

end A013734

/-! ## A013734.P6870545511454426764

`A013731(2*n)`
-/

namespace A013734.P6870545511454426764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 (2 * n)

end

end A013734.P6870545511454426764

namespace A013734

/-- `A013731(2*n)` -/
def P6870545511454426764.Spec : Prop :=
  ∀ n, P6870545511454426764.a n = A013734 n

end A013734

/-! ## A013734.P13159983253840442055

`2*A277757(n)`
-/

namespace A013734.P13159983253840442055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277757 n

end

end A013734.P13159983253840442055

namespace A013734

/-- `2*A277757(n)` -/
def P13159983253840442055.Spec : Prop :=
  ∀ n, P13159983253840442055.a n = A013734 n

end A013734

/-! ## A013734.P4367991833244201889

`A020707(6*n)`
-/

namespace A013734.P4367991833244201889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 (6 * n)

end

end A013734.P4367991833244201889

namespace A013734

/-- `A020707(6*n)` -/
def P4367991833244201889.Spec : Prop :=
  ∀ n, P4367991833244201889.a n = A013734 n

end A013734

/-!
# A013735: a(n) = 4^(3*n+2).

The programs for A013735, the canonical program `A013735.P2610539587547667036` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013735 has offset 0).

The definition of A013735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(3*n+2)` (program `A013735.P2610539587547667036`, by `A013735.P2610539587547667036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013735.P13410394308312233348

`ogf(16/(1-64x))`
-/

namespace A013735.P13410394308312233348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16] [1, -64] n

end

end A013735.P13410394308312233348

namespace A013735

/-- `ogf(16/(1-64x))` -/
def P13410394308312233348.Spec : Prop :=
  ∀ n, P13410394308312233348.a n = A013735 n

end A013735

/-! ## A013735.P2610539587547667036

`4^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013735

/-- `4^(3*n+2)` -/
def P2610539587547667036.Spec : Prop :=
  ∀ n, (P2610539587547667036.a n : ℤ) = A013735 n

theorem P2610539587547667036.correct : P2610539587547667036.Spec := by
  intro n
  simp only [A013735]

end A013735

/-! ## A013735.P13091409504583023414

`64*a(n-1)` with `a(0)=16`
-/

namespace A013735.P13091409504583023414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  64 * a (n - 1)

end

end A013735.P13091409504583023414

namespace A013735

/-- `64*a(n-1)` -/
def P13091409504583023414.Spec : Prop :=
  ∀ n, (P13091409504583023414.a n : ℤ) = A013735 n

theorem P13091409504583023414.correct : P13091409504583023414.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013735, Nat.add_sub_cancel, A013735.P13091409504583023414.a, A013735.P2610539587547667036.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013735, Nat.add_sub_cancel, A013735.P13091409504583023414.a, A013735.P2610539587547667036.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013735

/-! ## A013735.P11895166965408623379

`A000302(A016789(n))`
-/

namespace A013735.P11895166965408623379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A016789 n).toNat

end

end A013735.P11895166965408623379

namespace A013735

/-- `A000302(A016789(n))` -/
def P11895166965408623379.Spec : Prop :=
  ∀ n, P11895166965408623379.a n = A013735 n

end A013735

/-! ## A013735.P9408880121556339744

`filter[2^n, dr(#+3)]`
-/

namespace A013735.P9408880121556339744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j + 3 : ℤ) = 1) n)

end

end A013735.P9408880121556339744

namespace A013735

/-- `filter[2^n, dr(#+3)]` -/
def P9408880121556339744.Spec : Prop :=
  ∀ n, (P9408880121556339744.a n : ℤ) = A013735 n

end A013735

/-! ## A013735.P12209197951421847624

`A013731(n)²`
-/

namespace A013735.P12209197951421847624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 n ^ 2

end

end A013735.P12209197951421847624

namespace A013735

/-- `A013731(n)²` -/
def P12209197951421847624.Spec : Prop :=
  ∀ n, P12209197951421847624.a n = A013735 n

end A013735

/-! ## A013735.P17038269079365761823

`2*A013713(n)`
-/

namespace A013735.P17038269079365761823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013713 n

end

end A013735.P17038269079365761823

namespace A013735

/-- `2*A013713(n)` -/
def P17038269079365761823.Spec : Prop :=
  ∀ n, P17038269079365761823.a n = A013735 n

end A013735

/-! ## A013735.P8969990320239981075

`A277426(n)/2`
-/

namespace A013735.P8969990320239981075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277426 n : ℚ) / 2

end

end A013735.P8969990320239981075

namespace A013735

/-- `A277426(n)/2` -/
def P8969990320239981075.Spec : Prop :=
  ∀ n, P8969990320239981075.a n = (A013735 n : ℚ)

end A013735

/-! ## A013735.P11423102187887276285

`4*A013734(n)`
-/

namespace A013735.P11423102187887276285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A013734 n

end

end A013735.P11423102187887276285

namespace A013735

/-- `4*A013734(n)` -/
def P11423102187887276285.Spec : Prop :=
  ∀ n, P11423102187887276285.a n = A013735 n

theorem P11423102187887276285.correct : P11423102187887276285.Spec := by
  intro n
  simp only [A013735, Nat.add_sub_cancel, A013735.P11423102187887276285.a, A013735.P2610539587547667036.a, A013734, A013734.P17831906357502597496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013735

/-! ## A013735.P16094292121348296514

`8*A277757(n)`
-/

namespace A013735.P16094292121348296514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A277757 n

end

end A013735.P16094292121348296514

namespace A013735

/-- `8*A277757(n)` -/
def P16094292121348296514.Spec : Prop :=
  ∀ n, P16094292121348296514.a n = A013735 n

end A013735

/-!
# A013736: a(n) = 5^(3*n + 1).

The programs for A013736, the canonical program `A013736.P13411095581574991914` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013736 has offset 0).

The definition of A013736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(3*n+1)` (program `A013736.P13411095581574991914`, by `A013736.P13411095581574991914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013736.P13411095581574991914

`5^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013736

/-- `5^(3*n+1)` -/
def P13411095581574991914.Spec : Prop :=
  ∀ n, (P13411095581574991914.a n : ℤ) = A013736 n

theorem P13411095581574991914.correct : P13411095581574991914.Spec := by
  intro n
  simp only [A013736]

end A013736

/-! ## A013736.P5636614448758119008

`125*a(n-1)` with `a(0)=5`
-/

namespace A013736.P5636614448758119008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  125 * a (n - 1)

end

end A013736.P5636614448758119008

namespace A013736

/-- `125*a(n-1)` -/
def P5636614448758119008.Spec : Prop :=
  ∀ n, (P5636614448758119008.a n : ℤ) = A013736 n

theorem P5636614448758119008.correct : P5636614448758119008.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013736, Nat.add_sub_cancel, A013736.P5636614448758119008.a, A013736.P13411095581574991914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013736, Nat.add_sub_cancel, A013736.P5636614448758119008.a, A013736.P13411095581574991914.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013736

/-! ## A013736.P9834119305996289056

`a(n-1)*125` with `a(0)=5`
-/

namespace A013736.P9834119305996289056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * 125

end

end A013736.P9834119305996289056

namespace A013736

/-- `a(n-1)*125` -/
def P9834119305996289056.Spec : Prop :=
  ∀ n, (P9834119305996289056.a n : ℤ) = A013736 n

theorem P9834119305996289056.correct : P9834119305996289056.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013736, Nat.add_sub_cancel, A013736.P9834119305996289056.a, A013736.P13411095581574991914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013736, Nat.add_sub_cancel, A013736.P9834119305996289056.a, A013736.P13411095581574991914.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013736

/-! ## A013736.P2238147161332721020

`record[5^(gcd(3, 1-n)+n)]`
-/

namespace A013736.P2238147161332721020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (Int.gcd 3 (1 - (n : ℤ)) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013736.P2238147161332721020

namespace A013736

/-- `record[5^(gcd(3, 1-n)+n)]` -/
def P2238147161332721020.Spec : Prop :=
  ∀ n, (P2238147161332721020.a n : ℤ) = A013736 n

end A013736

/-! ## A013736.P16963344151236146742

`a(n-1)/5^(4/2-5)` with `a(0)=5`
-/

namespace A013736.P16963344151236146742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / (5 : ℝ) ^ ((4 : ℚ) / 2 - 5 : ℝ)

end

end A013736.P16963344151236146742

namespace A013736

/-- `a(n-1)/5^(4/2-5)` -/
def P16963344151236146742.Spec : Prop :=
  ∀ n, P16963344151236146742.a n = (A013736 n : ℝ)

theorem P16963344151236146742.correct : P16963344151236146742.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013736, Nat.add_sub_cancel, A013736.P16963344151236146742.a, A013736.P13411095581574991914.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013736, Nat.add_sub_cancel, A013736.P16963344151236146742.a, A013736.P13411095581574991914.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013736

/-!
# A013737: a(n) = 5^(3*n + 2).

The programs for A013737, the canonical program `A013737.P15937490669225726689` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013737 has offset 0).

The definition of A013737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(3*n+2)` (program `A013737.P15937490669225726689`, by `A013737.P15937490669225726689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013737.P15937490669225726689

`5^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013737

/-- `5^(3*n+2)` -/
def P15937490669225726689.Spec : Prop :=
  ∀ n, (P15937490669225726689.a n : ℤ) = A013737 n

theorem P15937490669225726689.correct : P15937490669225726689.Spec := by
  intro n
  simp only [A013737]

end A013737

/-! ## A013737.P5689423706955800174

`125*a(n-1)` with `a(0)=25`
-/

namespace A013737.P5689423706955800174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25] fun n a =>
  125 * a (n - 1)

end

end A013737.P5689423706955800174

namespace A013737

/-- `125*a(n-1)` -/
def P5689423706955800174.Spec : Prop :=
  ∀ n, (P5689423706955800174.a n : ℤ) = A013737 n

theorem P5689423706955800174.correct : P5689423706955800174.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013737, Nat.add_sub_cancel, A013737.P5689423706955800174.a, A013737.P15937490669225726689.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013737, Nat.add_sub_cancel, A013737.P5689423706955800174.a, A013737.P15937490669225726689.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013737

/-! ## A013737.P5342099977892657005

`5*A013736(n)`
-/

namespace A013737.P5342099977892657005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A013736 n

end

end A013737.P5342099977892657005

namespace A013737

/-- `5*A013736(n)` -/
def P5342099977892657005.Spec : Prop :=
  ∀ n, P5342099977892657005.a n = A013737 n

theorem P5342099977892657005.correct : P5342099977892657005.Spec := by
  intro n
  simp only [A013737, Nat.add_sub_cancel, A013737.P5342099977892657005.a, A013737.P15937490669225726689.a, A013736, A013736.P13411095581574991914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013737

/-! ## A013737.P740680555872684991

`A000351(A016789(n))`
-/

namespace A013737.P740680555872684991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A016789 n).toNat

end

end A013737.P740680555872684991

namespace A013737

/-- `A000351(A016789(n))` -/
def P740680555872684991.Spec : Prop :=
  ∀ n, P740680555872684991.a n = A013737 n

end A013737

/-! ## A013737.P5483268664475800311

`a(n-1)*125` with `a(0)=25`
-/

namespace A013737.P5483268664475800311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25] fun n a =>
  a (n - 1) * 125

end

end A013737.P5483268664475800311

namespace A013737

/-- `a(n-1)*125` -/
def P5483268664475800311.Spec : Prop :=
  ∀ n, (P5483268664475800311.a n : ℤ) = A013737 n

theorem P5483268664475800311.correct : P5483268664475800311.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013737, Nat.add_sub_cancel, A013737.P5483268664475800311.a, A013737.P15937490669225726689.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013737, Nat.add_sub_cancel, A013737.P5483268664475800311.a, A013737.P15937490669225726689.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013737

/-!
# A013738: a(n) = 6^(3*n + 1).

The programs for A013738, the canonical program `A013738.P13659493377909779318` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013738 has offset 0).

The definition of A013738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(3*n+1)` (program `A013738.P13659493377909779318`, by `A013738.P13659493377909779318.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013738.P13659493377909779318

`6^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013738

/-- `6^(3*n+1)` -/
def P13659493377909779318.Spec : Prop :=
  ∀ n, (P13659493377909779318.a n : ℤ) = A013738 n

theorem P13659493377909779318.correct : P13659493377909779318.Spec := by
  intro n
  simp only [A013738]

end A013738

/-! ## A013738.P12094410370977436042

`216*a(n-1)` with `a(0)=6`
-/

namespace A013738.P12094410370977436042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  216 * a (n - 1)

end

end A013738.P12094410370977436042

namespace A013738

/-- `216*a(n-1)` -/
def P12094410370977436042.Spec : Prop :=
  ∀ n, (P12094410370977436042.a n : ℤ) = A013738 n

theorem P12094410370977436042.correct : P12094410370977436042.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013738, Nat.add_sub_cancel, A013738.P12094410370977436042.a, A013738.P13659493377909779318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013738, Nat.add_sub_cancel, A013738.P12094410370977436042.a, A013738.P13659493377909779318.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013738

/-! ## A013738.P14526961231684517541

`a(n-1)*216` with `a(0)=6`
-/

namespace A013738.P14526961231684517541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) * 216

end

end A013738.P14526961231684517541

namespace A013738

/-- `a(n-1)*216` -/
def P14526961231684517541.Spec : Prop :=
  ∀ n, (P14526961231684517541.a n : ℤ) = A013738 n

theorem P14526961231684517541.correct : P14526961231684517541.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013738, Nat.add_sub_cancel, A013738.P14526961231684517541.a, A013738.P13659493377909779318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013738, Nat.add_sub_cancel, A013738.P14526961231684517541.a, A013738.P13659493377909779318.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013738

/-! ## A013738.P14898128812914685133

`record[gcd(3, n)!^(n+1)]`
-/

namespace A013738.P14898128812914685133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013738.P14898128812914685133

namespace A013738

/-- `record[gcd(3, n)!^(n+1)]` -/
def P14898128812914685133.Spec : Prop :=
  ∀ n, (P14898128812914685133.a n : ℤ) = A013738 n

end A013738

/-! ## A013738.P8523269429616864260

`a(n-1)/(1/6)^3` with `a(0)=6`
-/

namespace A013738.P8523269429616864260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 6) ^ 3

end

end A013738.P8523269429616864260

namespace A013738

/-- `a(n-1)/(1/6)^3` -/
def P8523269429616864260.Spec : Prop :=
  ∀ n, P8523269429616864260.a n = (A013738 n : ℚ)

theorem P8523269429616864260.correct : P8523269429616864260.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013738, Nat.add_sub_cancel, A013738.P8523269429616864260.a, A013738.P13659493377909779318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013738, Nat.add_sub_cancel, A013738.P8523269429616864260.a, A013738.P13659493377909779318.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013738

/-!
# A013739: a(n) = 6^(3*n + 2).

The programs for A013739, the canonical program `A013739.P13982438551141093055` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013739 has offset 0).

The definition of A013739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(3*n+2)` (program `A013739.P13982438551141093055`, by `A013739.P13982438551141093055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013739.P13982438551141093055

`6^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013739

/-- `6^(3*n+2)` -/
def P13982438551141093055.Spec : Prop :=
  ∀ n, (P13982438551141093055.a n : ℤ) = A013739 n

theorem P13982438551141093055.correct : P13982438551141093055.Spec := by
  intro n
  simp only [A013739]

end A013739

/-! ## A013739.P15882236940209522995

`216*a(n-1)` with `a(0)=36`
-/

namespace A013739.P15882236940209522995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  216 * a (n - 1)

end

end A013739.P15882236940209522995

namespace A013739

/-- `216*a(n-1)` -/
def P15882236940209522995.Spec : Prop :=
  ∀ n, (P15882236940209522995.a n : ℤ) = A013739 n

theorem P15882236940209522995.correct : P15882236940209522995.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013739, Nat.add_sub_cancel, A013739.P15882236940209522995.a, A013739.P13982438551141093055.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013739, Nat.add_sub_cancel, A013739.P15882236940209522995.a, A013739.P13982438551141093055.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013739

/-! ## A013739.P107080931132269029

`6*A013738(n)`
-/

namespace A013739.P107080931132269029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A013738 n

end

end A013739.P107080931132269029

namespace A013739

/-- `6*A013738(n)` -/
def P107080931132269029.Spec : Prop :=
  ∀ n, P107080931132269029.a n = A013739 n

theorem P107080931132269029.correct : P107080931132269029.Spec := by
  intro n
  simp only [A013739, Nat.add_sub_cancel, A013739.P107080931132269029.a, A013739.P13982438551141093055.a, A013738, A013738.P13659493377909779318.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013739

/-! ## A013739.P8921777934378387362

`a(n-1)*216` with `a(0)=36`
-/

namespace A013739.P8921777934378387362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [36] fun n a =>
  a (n - 1) * 216

end

end A013739.P8921777934378387362

namespace A013739

/-- `a(n-1)*216` -/
def P8921777934378387362.Spec : Prop :=
  ∀ n, (P8921777934378387362.a n : ℤ) = A013739 n

theorem P8921777934378387362.correct : P8921777934378387362.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013739, Nat.add_sub_cancel, A013739.P8921777934378387362.a, A013739.P13982438551141093055.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013739, Nat.add_sub_cancel, A013739.P8921777934378387362.a, A013739.P13982438551141093055.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013739

/-! ## A013739.P8753684673471986473

`record[gcd(3, n)!^(n+2)]`
-/

namespace A013739.P8753684673471986473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 n) ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013739.P8753684673471986473

namespace A013739

/-- `record[gcd(3, n)!^(n+2)]` -/
def P8753684673471986473.Spec : Prop :=
  ∀ n, (P8753684673471986473.a n : ℤ) = A013739 n

end A013739

/-!
# A013740: a(n) = 7^(3*n + 1).

The programs for A013740, the canonical program `A013740.P18320730961043561167` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013740 has offset 0).

The definition of A013740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^(3*n+1)` (program `A013740.P18320730961043561167`, by `A013740.P18320730961043561167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013740.P18320730961043561167

`7^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013740

/-- `7^(3*n+1)` -/
def P18320730961043561167.Spec : Prop :=
  ∀ n, (P18320730961043561167.a n : ℤ) = A013740 n

theorem P18320730961043561167.correct : P18320730961043561167.Spec := by
  intro n
  simp only [A013740]

end A013740

/-! ## A013740.P6823443089342992274

`343*a(n-1)` with `a(0)=7`
-/

namespace A013740.P6823443089342992274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  343 * a (n - 1)

end

end A013740.P6823443089342992274

namespace A013740

/-- `343*a(n-1)` -/
def P6823443089342992274.Spec : Prop :=
  ∀ n, (P6823443089342992274.a n : ℤ) = A013740 n

theorem P6823443089342992274.correct : P6823443089342992274.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013740, Nat.add_sub_cancel, A013740.P6823443089342992274.a, A013740.P18320730961043561167.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013740, Nat.add_sub_cancel, A013740.P6823443089342992274.a, A013740.P18320730961043561167.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013740

/-! ## A013740.P6046464867800288275

`a(n-1)/(1/7)^3` with `a(0)=7`
-/

namespace A013740.P6046464867800288275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) / ((1 : ℚ) / 7) ^ 3

end

end A013740.P6046464867800288275

namespace A013740

/-- `a(n-1)/(1/7)^3` -/
def P6046464867800288275.Spec : Prop :=
  ∀ n, P6046464867800288275.a n = (A013740 n : ℚ)

theorem P6046464867800288275.correct : P6046464867800288275.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013740, Nat.add_sub_cancel, A013740.P6046464867800288275.a, A013740.P18320730961043561167.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013740, Nat.add_sub_cancel, A013740.P6046464867800288275.a, A013740.P18320730961043561167.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013740

/-! ## A013740.P17756653422783919744

`record[gcd(7, 4^n-1)^(n+1)]`
-/

namespace A013740.P17756653422783919744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 ((4 ^ n : ℤ) - 1) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013740.P17756653422783919744

namespace A013740

/-- `record[gcd(7, 4^n-1)^(n+1)]` -/
def P17756653422783919744.Spec : Prop :=
  ∀ n, (P17756653422783919744.a n : ℤ) = A013740 n

end A013740

/-! ## A013740.P8188669451789762412

`record[7^A087507(n)]`
-/

namespace A013740.P8188669451789762412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013740.P8188669451789762412

namespace A013740

/-- `record[7^A087507(n)]` -/
def P8188669451789762412.Spec : Prop :=
  ∀ n, P8188669451789762412.a n = (A013740 n : ℚ)

end A013740

/-!
# A013741: a(n) = 7^(3*n + 2).

The programs for A013741, the canonical program `A013741.P8466619894457396996` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013741 has offset 0).

The definition of A013741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^(3*n+2)` (program `A013741.P8466619894457396996`, by `A013741.P8466619894457396996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013741.P8466619894457396996

`7^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013741

/-- `7^(3*n+2)` -/
def P8466619894457396996.Spec : Prop :=
  ∀ n, (P8466619894457396996.a n : ℤ) = A013741 n

theorem P8466619894457396996.correct : P8466619894457396996.Spec := by
  intro n
  simp only [A013741]

end A013741

/-! ## A013741.P8248859672178474804

`343*a(n-1)` with `a(0)=49`
-/

namespace A013741.P8248859672178474804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [49] fun n a =>
  343 * a (n - 1)

end

end A013741.P8248859672178474804

namespace A013741

/-- `343*a(n-1)` -/
def P8248859672178474804.Spec : Prop :=
  ∀ n, (P8248859672178474804.a n : ℤ) = A013741 n

theorem P8248859672178474804.correct : P8248859672178474804.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013741, Nat.add_sub_cancel, A013741.P8248859672178474804.a, A013741.P8466619894457396996.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013741, Nat.add_sub_cancel, A013741.P8248859672178474804.a, A013741.P8466619894457396996.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013741

/-! ## A013741.P15387107914136465012

`7*A013740(n)`
-/

namespace A013741.P15387107914136465012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A013740 n

end

end A013741.P15387107914136465012

namespace A013741

/-- `7*A013740(n)` -/
def P15387107914136465012.Spec : Prop :=
  ∀ n, P15387107914136465012.a n = A013741 n

theorem P15387107914136465012.correct : P15387107914136465012.Spec := by
  intro n
  simp only [A013741, Nat.add_sub_cancel, A013741.P15387107914136465012.a, A013741.P8466619894457396996.a, A013740, A013740.P18320730961043561167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013741

/-! ## A013741.P9376909490393894772

`record[7^A004483(n)]`
-/

namespace A013741.P9376909490393894772
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013741.P9376909490393894772

namespace A013741

/-- `record[7^A004483(n)]` -/
def P9376909490393894772.Spec : Prop :=
  ∀ n, P9376909490393894772.a n = (A013741 n : ℚ)

end A013741

/-! ## A013741.P13866725254074450144

`record[7^A166517(n)]`
-/

namespace A013741.P13866725254074450144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013741.P13866725254074450144

namespace A013741

/-- `record[7^A166517(n)]` -/
def P13866725254074450144.Spec : Prop :=
  ∀ n, P13866725254074450144.a n = (A013741 n : ℚ)

end A013741

/-!
# A013742: a(n) = 8^(3*n + 1).

The programs for A013742, the canonical program `A013742.P10356562641051379478` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013742 has offset 0).

The definition of A013742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(3*n+1)` (program `A013742.P10356562641051379478`, by `A013742.P10356562641051379478.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013742.P10356562641051379478

`8^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013742

/-- `8^(3*n+1)` -/
def P10356562641051379478.Spec : Prop :=
  ∀ n, (P10356562641051379478.a n : ℤ) = A013742 n

theorem P10356562641051379478.correct : P10356562641051379478.Spec := by
  intro n
  simp only [A013742]

end A013742

/-! ## A013742.P2180501205136601612

`512*a(n-1)` with `a(0)=8`
-/

namespace A013742.P2180501205136601612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  512 * a (n - 1)

end

end A013742.P2180501205136601612

namespace A013742

/-- `512*a(n-1)` -/
def P2180501205136601612.Spec : Prop :=
  ∀ n, (P2180501205136601612.a n : ℤ) = A013742 n

theorem P2180501205136601612.correct : P2180501205136601612.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013742, Nat.add_sub_cancel, A013742.P2180501205136601612.a, A013742.P10356562641051379478.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013742, Nat.add_sub_cancel, A013742.P2180501205136601612.a, A013742.P10356562641051379478.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013742

/-! ## A013742.P7242202239044598587

`record[(2^gcd(3, n))^(n+1)]`
-/

namespace A013742.P7242202239044598587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.gcd 3 n) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013742.P7242202239044598587

namespace A013742

/-- `record[(2^gcd(3, n))^(n+1)]` -/
def P7242202239044598587.Spec : Prop :=
  ∀ n, (P7242202239044598587.a n : ℤ) = A013742 n

end A013742

/-! ## A013742.P12725765133737796676

`a(n-1)/(1/2)^9` with `a(0)=8`
-/

namespace A013742.P12725765133737796676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 9

end

end A013742.P12725765133737796676

namespace A013742

/-- `a(n-1)/(1/2)^9` -/
def P12725765133737796676.Spec : Prop :=
  ∀ n, P12725765133737796676.a n = (A013742 n : ℚ)

theorem P12725765133737796676.correct : P12725765133737796676.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013742, Nat.add_sub_cancel, A013742.P12725765133737796676.a, A013742.P10356562641051379478.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013742, Nat.add_sub_cancel, A013742.P12725765133737796676.a, A013742.P10356562641051379478.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013742

/-! ## A013742.P16569752902351360776

`A013743(n)/8`
-/

namespace A013742.P16569752902351360776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013743 n : ℚ) / 8

end

end A013742.P16569752902351360776

namespace A013742

/-- `A013743(n)/8` -/
def P16569752902351360776.Spec : Prop :=
  ∀ n, P16569752902351360776.a n = (A013742 n : ℚ)

theorem P16569752902351360776.correct : P16569752902351360776.Spec := by
  intro n
  simp only [A013742, Nat.add_sub_cancel, A013742.P16569752902351360776.a, A013742.P10356562641051379478.a, A013743, A013743.P10377965980104475366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013742

/-!
# A013743: a(n) = 8^(3*n + 2).

The programs for A013743, the canonical program `A013743.P10377965980104475366` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013743 has offset 0).

The definition of A013743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(3*n+2)` (program `A013743.P10377965980104475366`, by `A013743.P10377965980104475366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013743.P10377965980104475366

`8^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013743

/-- `8^(3*n+2)` -/
def P10377965980104475366.Spec : Prop :=
  ∀ n, (P10377965980104475366.a n : ℤ) = A013743 n

theorem P10377965980104475366.correct : P10377965980104475366.Spec := by
  intro n
  simp only [A013743]

end A013743

/-! ## A013743.P1821960146780141377

`512*a(n-1)` with `a(0)=64`
-/

namespace A013743.P1821960146780141377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [64] fun n a =>
  512 * a (n - 1)

end

end A013743.P1821960146780141377

namespace A013743

/-- `512*a(n-1)` -/
def P1821960146780141377.Spec : Prop :=
  ∀ n, (P1821960146780141377.a n : ℤ) = A013743 n

theorem P1821960146780141377.correct : P1821960146780141377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013743, Nat.add_sub_cancel, A013743.P1821960146780141377.a, A013743.P10377965980104475366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013743, Nat.add_sub_cancel, A013743.P1821960146780141377.a, A013743.P10377965980104475366.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013743

/-! ## A013743.P234237250159664259

`record[(2^gcd(3, n))^(n+2)]`
-/

namespace A013743.P234237250159664259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.gcd 3 n) ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013743.P234237250159664259

namespace A013743

/-- `record[(2^gcd(3, n))^(n+2)]` -/
def P234237250159664259.Spec : Prop :=
  ∀ n, (P234237250159664259.a n : ℤ) = A013743 n

end A013743

/-! ## A013743.P15264883498540907870

`8*A013742(n)`
-/

namespace A013743.P15264883498540907870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A013742 n

end

end A013743.P15264883498540907870

namespace A013743

/-- `8*A013742(n)` -/
def P15264883498540907870.Spec : Prop :=
  ∀ n, P15264883498540907870.a n = A013743 n

theorem P15264883498540907870.correct : P15264883498540907870.Spec := by
  intro n
  simp only [A013743, Nat.add_sub_cancel, A013743.P15264883498540907870.a, A013743.P10377965980104475366.a, A013742, A013742.P10356562641051379478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013743

/-! ## A013743.P2950098063376344533

`record[8^A004483(n)]`
-/

namespace A013743.P2950098063376344533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013743.P2950098063376344533

namespace A013743

/-- `record[8^A004483(n)]` -/
def P2950098063376344533.Spec : Prop :=
  ∀ n, P2950098063376344533.a n = (A013743 n : ℚ)

end A013743

/-!
# A013744: a(n) = 9^(3*n + 1).

The programs for A013744, the canonical program `A013744.P10277323390821990557` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013744 has offset 0).

The definition of A013744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^(3*n+1)` (program `A013744.P10277323390821990557`, by `A013744.P10277323390821990557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013744.P10277323390821990557

`9^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013744

/-- `9^(3*n+1)` -/
def P10277323390821990557.Spec : Prop :=
  ∀ n, (P10277323390821990557.a n : ℤ) = A013744 n

theorem P10277323390821990557.correct : P10277323390821990557.Spec := by
  intro n
  simp only [A013744]

end A013744

/-! ## A013744.P7474391413963314779

`729*a(n-1)` with `a(0)=9`
-/

namespace A013744.P7474391413963314779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  729 * a (n - 1)

end

end A013744.P7474391413963314779

namespace A013744

/-- `729*a(n-1)` -/
def P7474391413963314779.Spec : Prop :=
  ∀ n, (P7474391413963314779.a n : ℤ) = A013744 n

theorem P7474391413963314779.correct : P7474391413963314779.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013744, Nat.add_sub_cancel, A013744.P7474391413963314779.a, A013744.P10277323390821990557.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013744, Nat.add_sub_cancel, A013744.P7474391413963314779.a, A013744.P10277323390821990557.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013744

/-! ## A013744.P3274707021503002026

`A013732(n)²`
-/

namespace A013744.P3274707021503002026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013732 n ^ 2

end

end A013744.P3274707021503002026

namespace A013744

/-- `A013732(n)²` -/
def P3274707021503002026.Spec : Prop :=
  ∀ n, P3274707021503002026.a n = A013744 n

end A013744

/-! ## A013744.P3873368543328366533

`A013745(n)/9`
-/

namespace A013744.P3873368543328366533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013745 n : ℚ) / 9

end

end A013744.P3873368543328366533

namespace A013744

/-- `A013745(n)/9` -/
def P3873368543328366533.Spec : Prop :=
  ∀ n, P3873368543328366533.a n = (A013744 n : ℚ)

theorem P3873368543328366533.correct : P3873368543328366533.Spec := by
  intro n
  simp only [A013744, Nat.add_sub_cancel, A013744.P3873368543328366533.a, A013744.P10277323390821990557.a, A013745, A013745.P17754846870848670071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013744

/-! ## A013744.P1790158424726230416

`A000244(A016933(n))`
-/

namespace A013744.P1790158424726230416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A016933 n).toNat

end

end A013744.P1790158424726230416

namespace A013744

/-- `A000244(A016933(n))` -/
def P1790158424726230416.Spec : Prop :=
  ∀ n, P1790158424726230416.a n = A013744 n

end A013744

/-!
# A013745: a(n) = 9^(3*n + 2).

The programs for A013745, the canonical program `A013745.P17754846870848670071` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013745 has offset 0).

The definition of A013745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^(3*n+2)` (program `A013745.P17754846870848670071`, by `A013745.P17754846870848670071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013745.P17754846870848670071

`9^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013745

/-- `9^(3*n+2)` -/
def P17754846870848670071.Spec : Prop :=
  ∀ n, (P17754846870848670071.a n : ℤ) = A013745 n

theorem P17754846870848670071.correct : P17754846870848670071.Spec := by
  intro n
  simp only [A013745]

end A013745

/-! ## A013745.P5990176879039490939

`729*a(n-1)` with `a(0)=81`
-/

namespace A013745.P5990176879039490939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [81] fun n a =>
  729 * a (n - 1)

end

end A013745.P5990176879039490939

namespace A013745

/-- `729*a(n-1)` -/
def P5990176879039490939.Spec : Prop :=
  ∀ n, (P5990176879039490939.a n : ℤ) = A013745 n

theorem P5990176879039490939.correct : P5990176879039490939.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013745, Nat.add_sub_cancel, A013745.P5990176879039490939.a, A013745.P17754846870848670071.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013745, Nat.add_sub_cancel, A013745.P5990176879039490939.a, A013745.P17754846870848670071.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013745

/-! ## A013745.P17299962572878273581

`record[gcd(9, n²)^(n+2)]`
-/

namespace A013745.P17299962572878273581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 9 (n ^ 2) ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013745.P17299962572878273581

namespace A013745

/-- `record[gcd(9, n²)^(n+2)]` -/
def P17299962572878273581.Spec : Prop :=
  ∀ n, (P17299962572878273581.a n : ℤ) = A013745 n

end A013745

/-! ## A013745.P16656452324627049842

`A013733(n)²`
-/

namespace A013745.P16656452324627049842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013733 n ^ 2

end

end A013745.P16656452324627049842

namespace A013745

/-- `A013733(n)²` -/
def P16656452324627049842.Spec : Prop :=
  ∀ n, P16656452324627049842.a n = A013745 n

end A013745

/-! ## A013745.P4738953059409359866

`A000244(A016957(n))`
-/

namespace A013745.P4738953059409359866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A016957 n).toNat

end

end A013745.P4738953059409359866

namespace A013745

/-- `A000244(A016957(n))` -/
def P4738953059409359866.Spec : Prop :=
  ∀ n, P4738953059409359866.a n = A013745 n

end A013745

/-!
# A013746: a(n) = 10^(3*n + 1).

The programs for A013746, the canonical program `A013746.P5375993420346757279` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013746 has offset 0).

The definition of A013746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(3*n+1)` (program `A013746.P5375993420346757279`, by `A013746.P5375993420346757279.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013746.P5375993420346757279

`10^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013746

/-- `10^(3*n+1)` -/
def P5375993420346757279.Spec : Prop :=
  ∀ n, (P5375993420346757279.a n : ℤ) = A013746 n

theorem P5375993420346757279.correct : P5375993420346757279.Spec := by
  intro n
  simp only [A013746]

end A013746

/-! ## A013746.P10623002550931273318

`1000*a(n-1)` with `a(0)=10`
-/

namespace A013746.P10623002550931273318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  1000 * a (n - 1)

end

end A013746.P10623002550931273318

namespace A013746

/-- `1000*a(n-1)` -/
def P10623002550931273318.Spec : Prop :=
  ∀ n, (P10623002550931273318.a n : ℤ) = A013746 n

theorem P10623002550931273318.correct : P10623002550931273318.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013746, Nat.add_sub_cancel, A013746.P10623002550931273318.a, A013746.P5375993420346757279.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013746, Nat.add_sub_cancel, A013746.P10623002550931273318.a, A013746.P5375993420346757279.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013746

/-! ## A013746.P7121335470250940023

`a(n-1)/(1/10)^3` with `a(0)=10`
-/

namespace A013746.P7121335470250940023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) / ((1 : ℚ) / 10) ^ 3

end

end A013746.P7121335470250940023

namespace A013746

/-- `a(n-1)/(1/10)^3` -/
def P7121335470250940023.Spec : Prop :=
  ∀ n, P7121335470250940023.a n = (A013746 n : ℚ)

theorem P7121335470250940023.correct : P7121335470250940023.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013746, Nat.add_sub_cancel, A013746.P7121335470250940023.a, A013746.P5375993420346757279.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013746, Nat.add_sub_cancel, A013746.P7121335470250940023.a, A013746.P5375993420346757279.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013746

/-! ## A013746.P11859670242492176080

`record[10^A087507(n)]`
-/

namespace A013746.P11859670242492176080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013746.P11859670242492176080

namespace A013746

/-- `record[10^A087507(n)]` -/
def P11859670242492176080.Spec : Prop :=
  ∀ n, P11859670242492176080.a n = (A013746 n : ℚ)

end A013746

/-! ## A013746.P16479734127849889418

`abs((-10)^A016777(n))`
-/

namespace A013746.P16479734127849889418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-10 : ℚ) ^ (A016777 n : ℤ)|

end

end A013746.P16479734127849889418

namespace A013746

/-- `abs((-10)^A016777(n))` -/
def P16479734127849889418.Spec : Prop :=
  ∀ n, P16479734127849889418.a n = (A013746 n : ℚ)

end A013746

/-!
# A013747: a(n) = 10^(3*n + 2).

The programs for A013747, the canonical program `A013747.P5555518784210554149` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013747 has offset 0).

The definition of A013747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(3*n+2)` (program `A013747.P5555518784210554149`, by `A013747.P5555518784210554149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013747.P5555518784210554149

`10^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013747

/-- `10^(3*n+2)` -/
def P5555518784210554149.Spec : Prop :=
  ∀ n, (P5555518784210554149.a n : ℤ) = A013747 n

theorem P5555518784210554149.correct : P5555518784210554149.Spec := by
  intro n
  simp only [A013747]

end A013747

/-! ## A013747.P1212453366144565310

`1000*a(n-1)` with `a(0)=100`
-/

namespace A013747.P1212453366144565310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [100] fun n a =>
  1000 * a (n - 1)

end

end A013747.P1212453366144565310

namespace A013747

/-- `1000*a(n-1)` -/
def P1212453366144565310.Spec : Prop :=
  ∀ n, (P1212453366144565310.a n : ℤ) = A013747 n

theorem P1212453366144565310.correct : P1212453366144565310.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013747, Nat.add_sub_cancel, A013747.P1212453366144565310.a, A013747.P5555518784210554149.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013747, Nat.add_sub_cancel, A013747.P1212453366144565310.a, A013747.P5555518784210554149.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013747

/-! ## A013747.P5268905568891075873

`10*A013746(n)`
-/

namespace A013747.P5268905568891075873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A013746 n

end

end A013747.P5268905568891075873

namespace A013747

/-- `10*A013746(n)` -/
def P5268905568891075873.Spec : Prop :=
  ∀ n, P5268905568891075873.a n = A013747 n

theorem P5268905568891075873.correct : P5268905568891075873.Spec := by
  intro n
  simp only [A013747, Nat.add_sub_cancel, A013747.P5268905568891075873.a, A013747.P5555518784210554149.a, A013746, A013746.P5375993420346757279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013747

/-! ## A013747.P5955539835557524997

`record[10^A004483(n)]`
-/

namespace A013747.P5955539835557524997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013747.P5955539835557524997

namespace A013747

/-- `record[10^A004483(n)]` -/
def P5955539835557524997.Spec : Prop :=
  ∀ n, P5955539835557524997.a n = (A013747 n : ℚ)

end A013747

/-! ## A013747.P16732189633786883444

`record[10^A166517(n)]`
-/

namespace A013747.P16732189633786883444
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013747.P16732189633786883444

namespace A013747

/-- `record[10^A166517(n)]` -/
def P16732189633786883444.Spec : Prop :=
  ∀ n, P16732189633786883444.a n = (A013747 n : ℚ)

end A013747

/-!
# A013748: a(n) = 11^(3*n + 1).

The programs for A013748, the canonical program `A013748.P7348025873953520724` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013748 has offset 0).

The definition of A013748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^(3*n+1)` (program `A013748.P7348025873953520724`, by `A013748.P7348025873953520724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013748.P7348025873953520724

`11^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013748

/-- `11^(3*n+1)` -/
def P7348025873953520724.Spec : Prop :=
  ∀ n, (P7348025873953520724.a n : ℤ) = A013748 n

theorem P7348025873953520724.correct : P7348025873953520724.Spec := by
  intro n
  simp only [A013748]

end A013748

/-! ## A013748.P15389849757159297728

`root(11, 1/3)*a(n-1)` with `a(0)=11`
-/

namespace A013748.P15389849757159297728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [11] fun n a =>
  (11 : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ)) * a (n - 1)

end

end A013748.P15389849757159297728

namespace A013748

/-- `root(11, 1/3)*a(n-1)` -/
def P15389849757159297728.Spec : Prop :=
  ∀ n, P15389849757159297728.a n = (A013748 n : ℝ)

theorem P15389849757159297728.correct : P15389849757159297728.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013748, Nat.add_sub_cancel, A013748.P15389849757159297728.a, A013748.P7348025873953520724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013748, Nat.add_sub_cancel, A013748.P15389849757159297728.a, A013748.P7348025873953520724.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013748

/-! ## A013748.P13814384251997173032

`11*11*11*a(n-1)` with `a(0)=11`
-/

namespace A013748.P13814384251997173032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11] fun n a =>
  11 * (11 * (11 * a (n - 1)))

end

end A013748.P13814384251997173032

namespace A013748

/-- `11*11*11*a(n-1)` -/
def P13814384251997173032.Spec : Prop :=
  ∀ n, (P13814384251997173032.a n : ℤ) = A013748 n

theorem P13814384251997173032.correct : P13814384251997173032.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013748, Nat.add_sub_cancel, A013748.P13814384251997173032.a, A013748.P7348025873953520724.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013748, Nat.add_sub_cancel, A013748.P13814384251997173032.a, A013748.P7348025873953520724.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013748

/-! ## A013748.P9171391124891966928

`A013749(n)/11`
-/

namespace A013748.P9171391124891966928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013749 n : ℚ) / 11

end

end A013748.P9171391124891966928

namespace A013748

/-- `A013749(n)/11` -/
def P9171391124891966928.Spec : Prop :=
  ∀ n, P9171391124891966928.a n = (A013748 n : ℚ)

theorem P9171391124891966928.correct : P9171391124891966928.Spec := by
  intro n
  simp only [A013748, Nat.add_sub_cancel, A013748.P9171391124891966928.a, A013748.P7348025873953520724.a, A013749, A013749.P6402279923339172377.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013748

/-! ## A013748.P5197590597407123814

`record[11^A087507(n)]`
-/

namespace A013748.P5197590597407123814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013748.P5197590597407123814

namespace A013748

/-- `record[11^A087507(n)]` -/
def P5197590597407123814.Spec : Prop :=
  ∀ n, P5197590597407123814.a n = (A013748 n : ℚ)

end A013748

/-!
# A013749: a(n) = 11^(3*n + 2).

The programs for A013749, the canonical program `A013749.P6402279923339172377` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013749 has offset 0).

The definition of A013749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^(3*n+2)` (program `A013749.P6402279923339172377`, by `A013749.P6402279923339172377.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013749.P6402279923339172377

`11^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013749

/-- `11^(3*n+2)` -/
def P6402279923339172377.Spec : Prop :=
  ∀ n, (P6402279923339172377.a n : ℤ) = A013749 n

theorem P6402279923339172377.correct : P6402279923339172377.Spec := by
  intro n
  simp only [A013749]

end A013749

/-! ## A013749.P2191908618079497131

`11*A013748(n)`
-/

namespace A013749.P2191908618079497131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A013748 n

end

end A013749.P2191908618079497131

namespace A013749

/-- `11*A013748(n)` -/
def P2191908618079497131.Spec : Prop :=
  ∀ n, P2191908618079497131.a n = A013749 n

theorem P2191908618079497131.correct : P2191908618079497131.Spec := by
  intro n
  simp only [A013749, Nat.add_sub_cancel, A013749.P2191908618079497131.a, A013749.P6402279923339172377.a, A013748, A013748.P7348025873953520724.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013749

/-! ## A013749.P16809600094362607295

`record[11^A004483(n)]`
-/

namespace A013749.P16809600094362607295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013749.P16809600094362607295

namespace A013749

/-- `record[11^A004483(n)]` -/
def P16809600094362607295.Spec : Prop :=
  ∀ n, P16809600094362607295.a n = (A013749 n : ℚ)

end A013749

/-! ## A013749.P8147215510976000597

`record[11^A166517(n)]`
-/

namespace A013749.P8147215510976000597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013749.P8147215510976000597

namespace A013749

/-- `record[11^A166517(n)]` -/
def P8147215510976000597.Spec : Prop :=
  ∀ n, P8147215510976000597.a n = (A013749 n : ℚ)

end A013749

/-! ## A013749.P2166673174594004918

`record[11^A330396(n)]`
-/

namespace A013749.P2166673174594004918
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013749.P2166673174594004918

namespace A013749

/-- `record[11^A330396(n)]` -/
def P2166673174594004918.Spec : Prop :=
  ∀ n, P2166673174594004918.a n = (A013749 n : ℚ)

end A013749

/-!
# A013750: a(n) = 12^(3*n + 1).

The programs for A013750, the canonical program `A013750.P6005036872659790004` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013750 has offset 0).

The definition of A013750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^(3*n+1)` (program `A013750.P6005036872659790004`, by `A013750.P6005036872659790004.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013750.P6005036872659790004

`12^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013750

/-- `12^(3*n+1)` -/
def P6005036872659790004.Spec : Prop :=
  ∀ n, (P6005036872659790004.a n : ℤ) = A013750 n

theorem P6005036872659790004.correct : P6005036872659790004.Spec := by
  intro n
  simp only [A013750]

end A013750

/-! ## A013750.P7153139189180259274

`36*48*a(n-1)` with `a(0)=12`
-/

namespace A013750.P7153139189180259274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  36 * (48 * a (n - 1))

end

end A013750.P7153139189180259274

namespace A013750

/-- `36*48*a(n-1)` -/
def P7153139189180259274.Spec : Prop :=
  ∀ n, (P7153139189180259274.a n : ℤ) = A013750 n

theorem P7153139189180259274.correct : P7153139189180259274.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013750, Nat.add_sub_cancel, A013750.P7153139189180259274.a, A013750.P6005036872659790004.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013750, Nat.add_sub_cancel, A013750.P7153139189180259274.a, A013750.P6005036872659790004.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013750

/-! ## A013750.P15443103217550232585

`abs(12*A350384(n))`
-/

namespace A013750.P15443103217550232585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 * A350384 n|

end

end A013750.P15443103217550232585

namespace A013750

/-- `abs(12*A350384(n))` -/
def P15443103217550232585.Spec : Prop :=
  ∀ n, P15443103217550232585.a n = A013750 n

end A013750

/-! ## A013750.P1485736120996340243

`record[12^A087507(n)]`
-/

namespace A013750.P1485736120996340243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013750.P1485736120996340243

namespace A013750

/-- `record[12^A087507(n)]` -/
def P1485736120996340243.Spec : Prop :=
  ∀ n, P1485736120996340243.a n = (A013750 n : ℚ)

end A013750

/-! ## A013750.P17410620612748105011

`A001021(3*n+1)`
-/

namespace A013750.P17410620612748105011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (3 * n + 1)

end

end A013750.P17410620612748105011

namespace A013750

/-- `A001021(3*n+1)` -/
def P17410620612748105011.Spec : Prop :=
  ∀ n, P17410620612748105011.a n = A013750 n

end A013750

/-!
# A013751: a(n) = 12^(3*n + 2).

The programs for A013751, the canonical program `A013751.P17700360423664146516` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013751 has offset 0).

The definition of A013751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^(3*n+2)` (program `A013751.P17700360423664146516`, by `A013751.P17700360423664146516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013751.P17700360423664146516

`12^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013751

/-- `12^(3*n+2)` -/
def P17700360423664146516.Spec : Prop :=
  ∀ n, (P17700360423664146516.a n : ℤ) = A013751 n

theorem P17700360423664146516.correct : P17700360423664146516.Spec := by
  intro n
  simp only [A013751]

end A013751

/-! ## A013751.P12775963725719220993

`12*A013750(n)`
-/

namespace A013751.P12775963725719220993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A013750 n

end

end A013751.P12775963725719220993

namespace A013751

/-- `12*A013750(n)` -/
def P12775963725719220993.Spec : Prop :=
  ∀ n, P12775963725719220993.a n = A013751 n

theorem P12775963725719220993.correct : P12775963725719220993.Spec := by
  intro n
  simp only [A013751, Nat.add_sub_cancel, A013751.P12775963725719220993.a, A013751.P17700360423664146516.a, A013750, A013750.P6005036872659790004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013751

/-! ## A013751.P17889570287955953031

`record[12^A004483(n)]`
-/

namespace A013751.P17889570287955953031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013751.P17889570287955953031

namespace A013751

/-- `record[12^A004483(n)]` -/
def P17889570287955953031.Spec : Prop :=
  ∀ n, P17889570287955953031.a n = (A013751 n : ℚ)

end A013751

/-! ## A013751.P60837788282369112

`record[12^A166517(n)]`
-/

namespace A013751.P60837788282369112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013751.P60837788282369112

namespace A013751

/-- `record[12^A166517(n)]` -/
def P60837788282369112.Spec : Prop :=
  ∀ n, P60837788282369112.a n = (A013751 n : ℚ)

end A013751

/-! ## A013751.P18068217684020862606

`record[12^A330396(n)]`
-/

namespace A013751.P18068217684020862606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013751.P18068217684020862606

namespace A013751

/-- `record[12^A330396(n)]` -/
def P18068217684020862606.Spec : Prop :=
  ∀ n, P18068217684020862606.a n = (A013751 n : ℚ)

end A013751

/-!
# A013752: a(n) = 13^(3*n + 1).

The programs for A013752, the canonical program `A013752.P14892327244551903628` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013752 has offset 0).

The definition of A013752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13^(3*n+1)` (program `A013752.P14892327244551903628`, by `A013752.P14892327244551903628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013752.P14892327244551903628

`13^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013752

/-- `13^(3*n+1)` -/
def P14892327244551903628.Spec : Prop :=
  ∀ n, (P14892327244551903628.a n : ℤ) = A013752 n

theorem P14892327244551903628.correct : P14892327244551903628.Spec := by
  intro n
  simp only [A013752]

end A013752

/-! ## A013752.P12767596885418667871

`record[gcd(13, n%3)^(n+1)]`
-/

namespace A013752.P12767596885418667871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 (n % 3) ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013752.P12767596885418667871

namespace A013752

/-- `record[gcd(13, n%3)^(n+1)]` -/
def P12767596885418667871.Spec : Prop :=
  ∀ n, (P12767596885418667871.a n : ℤ) = A013752 n

end A013752

/-! ## A013752.P8606666583829097264

`13*13*13*a(n-1)` with `a(0)=13`
-/

namespace A013752.P8606666583829097264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13] fun n a =>
  13 * (13 * (13 * a (n - 1)))

end

end A013752.P8606666583829097264

namespace A013752

/-- `13*13*13*a(n-1)` -/
def P8606666583829097264.Spec : Prop :=
  ∀ n, (P8606666583829097264.a n : ℤ) = A013752 n

theorem P8606666583829097264.correct : P8606666583829097264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013752, Nat.add_sub_cancel, A013752.P8606666583829097264.a, A013752.P14892327244551903628.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013752, Nat.add_sub_cancel, A013752.P8606666583829097264.a, A013752.P14892327244551903628.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013752

/-! ## A013752.P14287845223127386348

`A013753(n)/13`
-/

namespace A013752.P14287845223127386348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013753 n : ℚ) / 13

end

end A013752.P14287845223127386348

namespace A013752

/-- `A013753(n)/13` -/
def P14287845223127386348.Spec : Prop :=
  ∀ n, P14287845223127386348.a n = (A013752 n : ℚ)

theorem P14287845223127386348.correct : P14287845223127386348.Spec := by
  intro n
  simp only [A013752, Nat.add_sub_cancel, A013752.P14287845223127386348.a, A013752.P14892327244551903628.a, A013753, A013753.P6478779606059526861.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013752

/-! ## A013752.P6470667509668756155

`record[13^A087507(n)]`
-/

namespace A013752.P6470667509668756155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013752.P6470667509668756155

namespace A013752

/-- `record[13^A087507(n)]` -/
def P6470667509668756155.Spec : Prop :=
  ∀ n, P6470667509668756155.a n = (A013752 n : ℚ)

end A013752

/-!
# A013753: a(n) = 13^(3*n + 2).

The programs for A013753, the canonical program `A013753.P6478779606059526861` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013753 has offset 0).

The definition of A013753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13^(3*n+2)` (program `A013753.P6478779606059526861`, by `A013753.P6478779606059526861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013753.P6478779606059526861

`13^(3*n+2)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013753

/-- `13^(3*n+2)` -/
def P6478779606059526861.Spec : Prop :=
  ∀ n, (P6478779606059526861.a n : ℤ) = A013753 n

theorem P6478779606059526861.correct : P6478779606059526861.Spec := by
  intro n
  simp only [A013753]

end A013753

/-! ## A013753.P3376431990109400724

`record[gcd(13, n%3)^(n+2)]`
-/

namespace A013753.P3376431990109400724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 13 (n % 3) ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013753.P3376431990109400724

namespace A013753

/-- `record[gcd(13, n%3)^(n+2)]` -/
def P3376431990109400724.Spec : Prop :=
  ∀ n, (P3376431990109400724.a n : ℤ) = A013753 n

end A013753

/-! ## A013753.P7804179407596205617

`13*A013752(n)`
-/

namespace A013753.P7804179407596205617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A013752 n

end

end A013753.P7804179407596205617

namespace A013753

/-- `13*A013752(n)` -/
def P7804179407596205617.Spec : Prop :=
  ∀ n, P7804179407596205617.a n = A013753 n

theorem P7804179407596205617.correct : P7804179407596205617.Spec := by
  intro n
  simp only [A013753, Nat.add_sub_cancel, A013753.P7804179407596205617.a, A013753.P6478779606059526861.a, A013752, A013752.P14892327244551903628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013753

/-! ## A013753.P5023546900932920482

`record[13^A004483(n)]`
-/

namespace A013753.P5023546900932920482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013753.P5023546900932920482

namespace A013753

/-- `record[13^A004483(n)]` -/
def P5023546900932920482.Spec : Prop :=
  ∀ n, P5023546900932920482.a n = (A013753 n : ℚ)

end A013753

/-! ## A013753.P17435711985534601124

`record[13^A166517(n)]`
-/

namespace A013753.P17435711985534601124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013753.P17435711985534601124

namespace A013753

/-- `record[13^A166517(n)]` -/
def P17435711985534601124.Spec : Prop :=
  ∀ n, P17435711985534601124.a n = (A013753 n : ℚ)

end A013753

/-!
# A013754: a(n) = 14^(3*n + 1).

The programs for A013754, the canonical program `A013754.P13365999604596994934` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013754 has offset 0).

The definition of A013754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14^(3*n+1)` (program `A013754.P13365999604596994934`, by `A013754.P13365999604596994934.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013754.P13365999604596994934

`14^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013754

/-- `14^(3*n+1)` -/
def P13365999604596994934.Spec : Prop :=
  ∀ n, (P13365999604596994934.a n : ℤ) = A013754 n

theorem P13365999604596994934.correct : P13365999604596994934.Spec := by
  intro n
  simp only [A013754]

end A013754

/-! ## A013754.P10222139340107943800

`28*98*a(n-1)` with `a(0)=14`
-/

namespace A013754.P10222139340107943800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14] fun n a =>
  28 * (98 * a (n - 1))

end

end A013754.P10222139340107943800

namespace A013754

/-- `28*98*a(n-1)` -/
def P10222139340107943800.Spec : Prop :=
  ∀ n, (P10222139340107943800.a n : ℤ) = A013754 n

theorem P10222139340107943800.correct : P10222139340107943800.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013754, Nat.add_sub_cancel, A013754.P10222139340107943800.a, A013754.P13365999604596994934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013754, Nat.add_sub_cancel, A013754.P10222139340107943800.a, A013754.P13365999604596994934.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013754

/-! ## A013754.P7589667268349301976

`a(n-1)/(1/14)^3` with `a(0)=14`
-/

namespace A013754.P7589667268349301976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [14] fun n a =>
  a (n - 1) / ((1 : ℚ) / 14) ^ 3

end

end A013754.P7589667268349301976

namespace A013754

/-- `a(n-1)/(1/14)^3` -/
def P7589667268349301976.Spec : Prop :=
  ∀ n, P7589667268349301976.a n = (A013754 n : ℚ)

theorem P7589667268349301976.correct : P7589667268349301976.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013754, Nat.add_sub_cancel, A013754.P7589667268349301976.a, A013754.P13365999604596994934.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013754, Nat.add_sub_cancel, A013754.P7589667268349301976.a, A013754.P13365999604596994934.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013754

/-! ## A013754.P5566159360051902041

`record[14^A087507(n)]`
-/

namespace A013754.P5566159360051902041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013754.P5566159360051902041

namespace A013754

/-- `record[14^A087507(n)]` -/
def P5566159360051902041.Spec : Prop :=
  ∀ n, P5566159360051902041.a n = (A013754 n : ℚ)

end A013754

/-! ## A013754.P4199743317691970291

`A001023(3*n+1)`
-/

namespace A013754.P4199743317691970291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001023 (3 * n + 1)

end

end A013754.P4199743317691970291

namespace A013754

/-- `A001023(3*n+1)` -/
def P4199743317691970291.Spec : Prop :=
  ∀ n, P4199743317691970291.a n = A013754 n

end A013754

/-!
# A013755: 

The programs for A013755, there is no canonical definition to state claims against.
-/

/-! ## A013755.P12333380484810740227

`14^(3*n+2)`
-/

namespace A013755.P12333380484810740227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ (3 * n + 2)

end

end A013755.P12333380484810740227

/-! ## A013755.P5183749036052519232

`14*A013754(n)`
-/

namespace A013755.P5183749036052519232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A013754 n

end

end A013755.P5183749036052519232

/-! ## A013755.P1232615541165281157

`record[14^A004483(n)]`
-/

namespace A013755.P1232615541165281157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013755.P1232615541165281157

/-! ## A013755.P9705279655907145152

`record[14^A166517(n)]`
-/

namespace A013755.P9705279655907145152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013755.P9705279655907145152

/-! ## A013755.P1381701425690114840

`record[14^A330396(n)]`
-/

namespace A013755.P1381701425690114840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (14 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013755.P1381701425690114840

/-!
# A013756: a(n) = 15^(3*n + 1).

The programs for A013756, the canonical program `A013756.P9287184167138561137` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013756 has offset 0).

The definition of A013756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15^(3*n+1)` (program `A013756.P9287184167138561137`, by `A013756.P9287184167138561137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013756.P9287184167138561137

`15^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013756

/-- `15^(3*n+1)` -/
def P9287184167138561137.Spec : Prop :=
  ∀ n, (P9287184167138561137.a n : ℤ) = A013756 n

theorem P9287184167138561137.correct : P9287184167138561137.Spec := by
  intro n
  simp only [A013756]

end A013756

/-! ## A013756.P6434245509549173047

`45*75*a(n-1)` with `a(0)=15`
-/

namespace A013756.P6434245509549173047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15] fun n a =>
  45 * (75 * a (n - 1))

end

end A013756.P6434245509549173047

namespace A013756

/-- `45*75*a(n-1)` -/
def P6434245509549173047.Spec : Prop :=
  ∀ n, (P6434245509549173047.a n : ℤ) = A013756 n

theorem P6434245509549173047.correct : P6434245509549173047.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013756, Nat.add_sub_cancel, A013756.P6434245509549173047.a, A013756.P9287184167138561137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013756, Nat.add_sub_cancel, A013756.P6434245509549173047.a, A013756.P9287184167138561137.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013756

/-! ## A013756.P12050347596135243677

`A001024(3*n+1)`
-/

namespace A013756.P12050347596135243677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001024 (3 * n + 1)

end

end A013756.P12050347596135243677

namespace A013756

/-- `A001024(3*n+1)` -/
def P12050347596135243677.Spec : Prop :=
  ∀ n, P12050347596135243677.a n = A013756 n

end A013756

/-! ## A013756.P17585606388456285396

`A017949(A016933(n))`
-/

namespace A013756.P17585606388456285396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017949 (A016933 n).toNat

end

end A013756.P17585606388456285396

namespace A013756

/-- `A017949(A016933(n))` -/
def P17585606388456285396.Spec : Prop :=
  ∀ n, P17585606388456285396.a n = A013756 n

end A013756

/-! ## A013756.P9272212867620253454

`A001024(n)*A013720(n)`
-/

namespace A013756.P9272212867620253454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001024 n * A013720 n

end

end A013756.P9272212867620253454

namespace A013756

/-- `A001024(n)*A013720(n)` -/
def P9272212867620253454.Spec : Prop :=
  ∀ n, P9272212867620253454.a n = A013756 n

theorem P9272212867620253454.correct : P9272212867620253454.Spec := by
  intro n
  simp only [A013756, Nat.add_sub_cancel, A013756.P9272212867620253454.a, A013756.P9287184167138561137.a, A001024, A001024.P4674574780989564658.a, A013720, A013720.P6784040827250838088.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013756

/-!
# A013757: 

The programs for A013757, there is no canonical definition to state claims against.
-/

/-! ## A013757.P3195564781697468427

`15^(3*n+2)`
-/

namespace A013757.P3195564781697468427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ (3 * n + 2)

end

end A013757.P3195564781697468427

/-! ## A013757.P11060863048606505356

`15*A013756(n)`
-/

namespace A013757.P11060863048606505356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A013756 n

end

end A013757.P11060863048606505356

/-! ## A013757.P14826073416310204255

`record[15^A004483(n)]`
-/

namespace A013757.P14826073416310204255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013757.P14826073416310204255

/-! ## A013757.P12438238501226248505

`record[15^A166517(n)]`
-/

namespace A013757.P12438238501226248505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013757.P12438238501226248505

/-! ## A013757.P1186026173168511124

`record[15^A330396(n)]`
-/

namespace A013757.P1186026173168511124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013757.P1186026173168511124

/-!
# A013758: a(n) = 16^(3n+1).

The programs for A013758, the canonical program `A013758.P14748851013094922299` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013758 has offset 0).

The definition of A013758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16^(3*n+1)` (program `A013758.P14748851013094922299`, by `A013758.P14748851013094922299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013758.P14748851013094922299

`16^(3*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013758

/-- `16^(3*n+1)` -/
def P14748851013094922299.Spec : Prop :=
  ∀ n, (P14748851013094922299.a n : ℤ) = A013758 n

theorem P14748851013094922299.correct : P14748851013094922299.Spec := by
  intro n
  simp only [A013758]

end A013758

/-! ## A013758.P5429021834341157500

`A013734(n)²`
-/

namespace A013758.P5429021834341157500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013734 n ^ 2

end

end A013758.P5429021834341157500

namespace A013758

/-- `A013734(n)²` -/
def P5429021834341157500.Spec : Prop :=
  ∀ n, P5429021834341157500.a n = A013758 n

end A013758

/-! ## A013758.P7162371280781550034

`2*A013788(n)`
-/

namespace A013758.P7162371280781550034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013788 n

end

end A013758.P7162371280781550034

namespace A013758

/-- `2*A013788(n)` -/
def P7162371280781550034.Spec : Prop :=
  ∀ n, P7162371280781550034.a n = A013758 n

end A013758

/-! ## A013758.P17060944641464818464

`A000302(A016933(n))`
-/

namespace A013758.P17060944641464818464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A016933 n).toNat

end

end A013758.P17060944641464818464

namespace A013758

/-- `A000302(A016933(n))` -/
def P17060944641464818464.Spec : Prop :=
  ∀ n, P17060944641464818464.a n = A013758 n

end A013758

/-!
# A013759: 

The programs for A013759, there is no canonical definition to state claims against.
-/

/-! ## A013759.P273421504469838135

`4^(6*n+4)`
-/

namespace A013759.P273421504469838135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (6 * n + 4)

end

end A013759.P273421504469838135

/-! ## A013759.P2711712705467839581

`record[2^(3*xor(3, n)-1)]`
-/

namespace A013759.P2711712705467839581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((3 * Nat.xor 3 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013759.P2711712705467839581

/-! ## A013759.P17495768189411603664

`record[4^(lcm(4, n+1)-n)]`
-/

namespace A013759.P17495768189411603664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((Nat.lcm 4 (n + 1) : ℤ) - (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013759.P17495768189411603664

/-! ## A013759.P17305863534507287005

`∩[2*8^n, 4^n]²`
-/

namespace A013759.P17305863534507287005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 8 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2

end

end A013759.P17305863534507287005

/-! ## A013759.P10267049176182024084

`A013735(n)²`
-/

namespace A013759.P10267049176182024084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013735 n ^ 2

end

end A013759.P10267049176182024084

/-!
# A013760: 

The programs for A013760, there is no canonical definition to state claims against.
-/

/-! ## A013760.P10386065055646242422

`17^(3*n+1)`
-/

namespace A013760.P10386065055646242422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (3 * n + 1)

end

end A013760.P10386065055646242422

/-! ## A013760.P2382774904638644465

`17*17*17*a(n-1)` with `a(0)=17`
-/

namespace A013760.P2382774904638644465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17] fun n a =>
  17 * (17 * (17 * a (n - 1)))

end

end A013760.P2382774904638644465

/-! ## A013760.P7247178858469099739

`A001026(3*n+1)`
-/

namespace A013760.P7247178858469099739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (3 * n + 1)

end

end A013760.P7247178858469099739

/-! ## A013760.P11728466092225726280

`floor(A224384(3*n+2)/17)`
-/

namespace A013760.P11728466092225726280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A224384 (3 * n + 2) : ℚ) / 17⌋

end

end A013760.P11728466092225726280

/-!
# A013761: 

The programs for A013761, there is no canonical definition to state claims against.
-/

/-! ## A013761.P1696180146097113267

`17^(3*n+2)`
-/

namespace A013761.P1696180146097113267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (3 * n + 2)

end

end A013761.P1696180146097113267

/-! ## A013761.P3163876927520556583

`record[17^A166517(n)]`
-/

namespace A013761.P3163876927520556583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013761.P3163876927520556583

/-! ## A013761.P17882160135701913521

`A001026(3*n+2)`
-/

namespace A013761.P17882160135701913521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001026 (3 * n + 2)

end

end A013761.P17882160135701913521

/-! ## A013761.P5616729177971150481

`record[17^A204237(n+1)]`
-/

namespace A013761.P5616729177971150481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 : ℚ) ^ (A204237 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013761.P5616729177971150481

/-!
# A013762: 

The programs for A013762, there is no canonical definition to state claims against.
-/

/-! ## A013762.P5007946343483760926

`18^(3*n+1)`
-/

namespace A013762.P5007946343483760926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (3 * n + 1)

end

end A013762.P5007946343483760926

/-! ## A013762.P13572642708902716100

`18*18*18*a(n-1)` with `a(0)=18`
-/

namespace A013762.P13572642708902716100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  18 * (18 * (18 * a (n - 1)))

end

end A013762.P13572642708902716100

/-! ## A013762.P12832114709713370112

`record[18^A087507(n)]`
-/

namespace A013762.P12832114709713370112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013762.P12832114709713370112

/-! ## A013762.P833136887624763834

`record[18^A074066(n+1)]`
-/

namespace A013762.P833136887624763834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A074066 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013762.P833136887624763834

/-! ## A013762.P1665130623451356568

`record[18^A204158(n+1)]`
-/

namespace A013762.P1665130623451356568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A204158 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013762.P1665130623451356568

/-!
# A013763: 

The programs for A013763, there is no canonical definition to state claims against.
-/

/-! ## A013763.P18123499222828919037

`18^(3*n+2)`
-/

namespace A013763.P18123499222828919037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (3 * n + 2)

end

end A013763.P18123499222828919037

/-! ## A013763.P8240981619116330997

`record[18^A004483(n)]`
-/

namespace A013763.P8240981619116330997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013763.P8240981619116330997

/-! ## A013763.P7523088256811610633

`record[18^A166517(n)]`
-/

namespace A013763.P7523088256811610633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013763.P7523088256811610633

/-! ## A013763.P1653707797504098017

`record[18^A330396(n)]`
-/

namespace A013763.P1653707797504098017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (18 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013763.P1653707797504098017

/-!
# A013764: 

The programs for A013764, there is no canonical definition to state claims against.
-/

/-! ## A013764.P2872097993899367008

`19^(3*n+1)`
-/

namespace A013764.P2872097993899367008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (3 * n + 1)

end

end A013764.P2872097993899367008

/-! ## A013764.P11026874474551499734

`a(n-1)/(1/19)^3` with `a(0)=19`
-/

namespace A013764.P11026874474551499734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [19] fun n a =>
  a (n - 1) / ((1 : ℚ) / 19) ^ 3

end

end A013764.P11026874474551499734

/-! ## A013764.P477488767429616219

`19*19*19*a(n-1)` with `a(0)=19`
-/

namespace A013764.P477488767429616219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19] fun n a =>
  19 * (19 * (19 * a (n - 1)))

end

end A013764.P477488767429616219

/-! ## A013764.P3164802980576483666

`A001029(3*n+1)`
-/

namespace A013764.P3164802980576483666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (3 * n + 1)

end

end A013764.P3164802980576483666

/-! ## A013764.P9882535999543302678

`ceil(19^(A016789(n)-1))`
-/

namespace A013764.P9882535999543302678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(19 : ℚ) ^ (A016789 n - 1 : ℤ)⌉

end

end A013764.P9882535999543302678

/-!
# A013765: 

The programs for A013765, there is no canonical definition to state claims against.
-/

/-! ## A013765.P721321500581453419

`19^(3*n+2)`
-/

namespace A013765.P721321500581453419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ (3 * n + 2)

end

end A013765.P721321500581453419

/-! ## A013765.P6364891467389510740

`record[19^A166517(n)]`
-/

namespace A013765.P6364891467389510740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013765.P6364891467389510740

/-! ## A013765.P1080930389901622771

`record[19^A330396(n)]`
-/

namespace A013765.P1080930389901622771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (19 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013765.P1080930389901622771

/-! ## A013765.P16646864548846831937

`A001029(3*(n+1)-1)`
-/

namespace A013765.P16646864548846831937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (3 * (n + 1) - 1)

end

end A013765.P16646864548846831937

/-! ## A013765.P11401242481931811393

`A001029(2*n+2)*A001029(n)`
-/

namespace A013765.P11401242481931811393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001029 (2 * n + 2) * A001029 n

end

end A013765.P11401242481931811393

/-!
# A013766: 

The programs for A013766, there is no canonical definition to state claims against.
-/

/-! ## A013766.P14869704574530296807

`20^(3*n+1)`
-/

namespace A013766.P14869704574530296807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (3 * n + 1)

end

end A013766.P14869704574530296807

/-! ## A013766.P18368515168172807821

`a(n-1)/(1/20)^3` with `a(0)=20`
-/

namespace A013766.P18368515168172807821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [20] fun n a =>
  a (n - 1) / ((1 : ℚ) / 20) ^ 3

end

end A013766.P18368515168172807821

/-! ## A013766.P18254275469692401355

`20*20*20*a(n-1)` with `a(0)=20`
-/

namespace A013766.P18254275469692401355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20] fun n a =>
  20 * (20 * (20 * a (n - 1)))

end

end A013766.P18254275469692401355

/-! ## A013766.P18237029641508244931

`A009964(log2(2*8^n))`
-/

namespace A013766.P18237029641508244931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009964 (SequenceMachineLib.roundAway (Real.logb 2 (2 * 8 ^ n : ℝ))).toNat

end

end A013766.P18237029641508244931

/-! ## A013766.P7254822487492505160

`record[20^A123684(n+1)]`
-/

namespace A013766.P7254822487492505160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A123684 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013766.P7254822487492505160

/-!
# A013767: 

The programs for A013767, there is no canonical definition to state claims against.
-/

/-! ## A013767.P12469039186341365143

`20^(3*n+2)`
-/

namespace A013767.P12469039186341365143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ (3 * n + 2)

end

end A013767.P12469039186341365143

/-! ## A013767.P14425673553004570324

`record[20^A004483(n)]`
-/

namespace A013767.P14425673553004570324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A004483 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013767.P14425673553004570324

/-! ## A013767.P15333170825851915204

`record[20^A166517(n)]`
-/

namespace A013767.P15333170825851915204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013767.P15333170825851915204

/-! ## A013767.P17499285524219918464

`record[20^A330396(n)]`
-/

namespace A013767.P17499285524219918464
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013767.P17499285524219918464

/-! ## A013767.P2719538983942070053

`record[A099840(3*n+4)]`
-/

namespace A013767.P2719538983942070053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099840 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013767.P2719538983942070053

/-!
# A013768: 

The programs for A013768, there is no canonical definition to state claims against.
-/

/-! ## A013768.P13162923147862588225

`21^(3*n+1)`
-/

namespace A013768.P13162923147862588225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (3 * n + 1)

end

end A013768.P13162923147862588225

/-! ## A013768.P4378957390230449220

`a(n-1)/(1/21)^3` with `a(0)=21`
-/

namespace A013768.P4378957390230449220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [21] fun n a =>
  a (n - 1) / ((1 : ℚ) / 21) ^ 3

end

end A013768.P4378957390230449220

/-! ## A013768.P13852814831302357949

`21*21*21*a(n-1)` with `a(0)=21`
-/

namespace A013768.P13852814831302357949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21] fun n a =>
  21 * (21 * (21 * a (n - 1)))

end

end A013768.P13852814831302357949

/-! ## A013768.P8868881117599942748

`record[21^A114855(n)]`
-/

namespace A013768.P8868881117599942748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A114855 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013768.P8868881117599942748

/-! ## A013768.P13147855937260571177

`A009965(3*n+1)`
-/

namespace A013768.P13147855937260571177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009965 (3 * n + 1)

end

end A013768.P13147855937260571177

/-!
# A013769: 

The programs for A013769, there is no canonical definition to state claims against.
-/

/-! ## A013769.P12846392431219705579

`21^(3*n+2)`
-/

namespace A013769.P12846392431219705579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ (3 * n + 2)

end

end A013769.P12846392431219705579

/-! ## A013769.P6962150291858533074

`record[21^A166517(n)]`
-/

namespace A013769.P6962150291858533074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013769.P6962150291858533074

/-! ## A013769.P2922476596957470010

`record[21^A014682(n+1)]`
-/

namespace A013769.P2922476596957470010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (21 : ℚ) ^ (A014682 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013769.P2922476596957470010

/-! ## A013769.P17447886624447808725

`21*A009965(3*n+1)`
-/

namespace A013769.P17447886624447808725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A009965 (3 * n + 1)

end

end A013769.P17447886624447808725

/-! ## A013769.P653298467732095410

`A018105(A017617(n))`
-/

namespace A013769.P653298467732095410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018105 (A017617 n).toNat

end

end A013769.P653298467732095410

/-!
# A013770: 

The programs for A013770, there is no canonical definition to state claims against.
-/

/-! ## A013770.P18380628164967971115

`22^(3*n+1)`
-/

namespace A013770.P18380628164967971115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (3 * n + 1)

end

end A013770.P18380628164967971115

/-! ## A013770.P630241690060677534

`22*22*22*a(n-1)` with `a(0)=22`
-/

namespace A013770.P630241690060677534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22] fun n a =>
  22 * (22 * (22 * a (n - 1)))

end

end A013770.P630241690060677534

/-! ## A013770.P8034965186653242119

`record[22^A087507(n)]`
-/

namespace A013770.P8034965186653242119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A087507 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013770.P8034965186653242119

/-! ## A013770.P16246814498346207284

`(sqrt(22)^A016777(n))²`
-/

namespace A013770.P16246814498346207284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (22 : ℝ) ^ (A016777 n : ℤ)) ^ 2

end

end A013770.P16246814498346207284

/-! ## A013770.P16180802249399749430

`record[22^A123684(n+1)]`
-/

namespace A013770.P16180802249399749430
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A123684 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013770.P16180802249399749430

/-!
# A013771: 

The programs for A013771, there is no canonical definition to state claims against.
-/

/-! ## A013771.P7129558323231912797

`22^(3*n+2)`
-/

namespace A013771.P7129558323231912797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 ^ (3 * n + 2)

end

end A013771.P7129558323231912797

/-! ## A013771.P4668548900468093003

`record[22^A166517(n)]`
-/

namespace A013771.P4668548900468093003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (22 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013771.P4668548900468093003

/-! ## A013771.P12801587033323266098

`A009966(2*n+n+2)`
-/

namespace A013771.P12801587033323266098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009966 (2 * n + (n + 2))

end

end A013771.P12801587033323266098

/-! ## A013771.P10550704870416229942

`A018108(4*A016789(n))`
-/

namespace A013771.P10550704870416229942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018108 (4 * A016789 n).toNat

end

end A013771.P10550704870416229942

/-! ## A013771.P631586406631325113

`A013731(n)*A013749(n)`
-/

namespace A013771.P631586406631325113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 n * A013749 n

end

end A013771.P631586406631325113

/-!
# A013772: 

The programs for A013772, there is no canonical definition to state claims against.
-/

/-! ## A013772.P936893952092752804

`23^(3*n+1)`
-/

namespace A013772.P936893952092752804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (3 * n + 1)

end

end A013772.P936893952092752804

/-! ## A013772.P8130326250592308952

`a(n-1)/(1/23)^3` with `a(0)=23`
-/

namespace A013772.P8130326250592308952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [23] fun n a =>
  a (n - 1) / ((1 : ℚ) / 23) ^ 3

end

end A013772.P8130326250592308952

/-! ## A013772.P5348804765825280523

`23*23*23*a(n-1)` with `a(0)=23`
-/

namespace A013772.P5348804765825280523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [23] fun n a =>
  23 * (23 * (23 * a (n - 1)))

end

end A013772.P5348804765825280523

/-! ## A013772.P15622387324143172649

`A009967(3*n+1)`
-/

namespace A013772.P15622387324143172649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 (3 * n + 1)

end

end A013772.P15622387324143172649

/-! ## A013772.P5275162277796573140

`23*A009967(n)^3`
-/

namespace A013772.P5275162277796573140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A009967 n ^ 3

end

end A013772.P5275162277796573140

/-!
# A013773: 

The programs for A013773, there is no canonical definition to state claims against.
-/

/-! ## A013773.P14029677229604226082

`23^(3*n+2)`
-/

namespace A013773.P14029677229604226082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 ^ (3 * n + 2)

end

end A013773.P14029677229604226082

/-! ## A013773.P4106715665343844336

`record[23^A330396(n)]`
-/

namespace A013773.P4106715665343844336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (23 : ℚ) ^ (A330396 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013773.P4106715665343844336

/-! ## A013773.P15314689523623909452

`A009967(3*n+2)`
-/

namespace A013773.P15314689523623909452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009967 (3 * n + 2)

end

end A013773.P15314689523623909452

/-! ## A013773.P7921872649122135201

`A018182(5*(2*(n+1)+n))`
-/

namespace A013773.P7921872649122135201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018182 (5 * (2 * (n + 1) + n))

end

end A013773.P7921872649122135201

/-! ## A013773.P14180858515718804884

`A017974(Δ[Δ[A083074(n)]])`
-/

namespace A013773.P14180858515718804884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083074 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017974 (f1 (n + 1) - f1 n).toNat

end

end A013773.P14180858515718804884

/-!
# A013774: 

The programs for A013774, there is no canonical definition to state claims against.
-/

/-! ## A013774.P7894927723117057789

`24^(3*n+1)`
-/

namespace A013774.P7894927723117057789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (3 * n + 1)

end

end A013774.P7894927723117057789

/-! ## A013774.P1334360606164532060

`record[24^Δ[n*ceil(n/2)]]`
-/

namespace A013774.P1334360606164532060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℚ) / 2⌉

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013774.P1334360606164532060

/-! ## A013774.P9980893566754634088

`24*24*24*a(n-1)` with `a(0)=24`
-/

namespace A013774.P9980893566754634088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24] fun n a =>
  24 * (24 * (24 * a (n - 1)))

end

end A013774.P9980893566754634088

/-! ## A013774.P17286197818375809628

`A009968(3*n+1)`
-/

namespace A013774.P17286197818375809628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009968 (3 * n + 1)

end

end A013774.P17286197818375809628

/-! ## A013774.P9928739982104907728

`A076506(9*n+4)`
-/

namespace A013774.P9928739982104907728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076506 (9 * n + 4)

end

end A013774.P9928739982104907728

/-!
# A013775: 

The programs for A013775, there is no canonical definition to state claims against.
-/

/-! ## A013775.P4071669174337643028

`24^(3*n+2)`
-/

namespace A013775.P4071669174337643028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 ^ (3 * n + 2)

end

end A013775.P4071669174337643028

/-! ## A013775.P2609410589249908095

`record[24^A166517(n)]`
-/

namespace A013775.P2609410589249908095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (24 : ℚ) ^ (A166517 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013775.P2609410589249908095

/-! ## A013775.P1610640408257241229

`A009968(3*n+2)`
-/

namespace A013775.P1610640408257241229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009968 (3 * n + 2)

end

end A013775.P1610640408257241229

/-! ## A013775.P9609570655825518545

`A013731(n)*A013751(n)`
-/

namespace A013775.P9609570655825518545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013731 n * A013751 n

end

end A013775.P9609570655825518545

/-!
# A013776: a(n) = 2^(4*n+1).

The programs for A013776, the canonical program `A013776.P14588626366756344851` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013776 has offset 0).

The definition of A013776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(4*n+1)` (program `A013776.P14588626366756344851`, by `A013776.P14588626366756344851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013776.P16857399629038792009

`ogf(2/(1-16x))`
-/

namespace A013776.P16857399629038792009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -16] n

end

end A013776.P16857399629038792009

namespace A013776

/-- `ogf(2/(1-16x))` -/
def P16857399629038792009.Spec : Prop :=
  ∀ n, P16857399629038792009.a n = A013776 n

end A013776

/-! ## A013776.P14588626366756344851

`2^(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013776

/-- `2^(4*n+1)` -/
def P14588626366756344851.Spec : Prop :=
  ∀ n, (P14588626366756344851.a n : ℤ) = A013776 n

theorem P14588626366756344851.correct : P14588626366756344851.Spec := by
  intro n
  simp only [A013776]

end A013776

/-! ## A013776.P8305803703922612681

`16*a(n-1)` with `a(0)=2`
-/

namespace A013776.P8305803703922612681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  16 * a (n - 1)

end

end A013776.P8305803703922612681

namespace A013776

/-- `16*a(n-1)` -/
def P8305803703922612681.Spec : Prop :=
  ∀ n, (P8305803703922612681.a n : ℤ) = A013776 n

theorem P8305803703922612681.correct : P8305803703922612681.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013776, Nat.add_sub_cancel, A013776.P8305803703922612681.a, A013776.P14588626366756344851.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013776, Nat.add_sub_cancel, A013776.P8305803703922612681.a, A013776.P14588626366756344851.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013776

/-! ## A013776.P459048000816514878

`A004171(2*n)`
-/

namespace A013776.P459048000816514878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 (2 * n)

end

end A013776.P459048000816514878

namespace A013776

/-- `A004171(2*n)` -/
def P459048000816514878.Spec : Prop :=
  ∀ n, P459048000816514878.a n = A013776 n

theorem P459048000816514878.correct : P459048000816514878.Spec := by
  intro n
  simp only [A013776, Nat.add_sub_cancel, A013776.P459048000816514878.a, A013776.P14588626366756344851.a, A004171, A004171.P4825528214568774058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013776

/-! ## A013776.P4965120406648158644

`A000079(A016813(n))`
-/

namespace A013776.P4965120406648158644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A016813 n).toNat

end

end A013776.P4965120406648158644

namespace A013776

/-- `A000079(A016813(n))` -/
def P4965120406648158644.Spec : Prop :=
  ∀ n, P4965120406648158644.a n = A013776 n

end A013776

/-! ## A013776.P2711933941599705038

`∑{#}[2*n, C(4*n+2, 2*#+1)]`
-/

namespace A013776.P2711933941599705038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (4 * n + 2) (2 * k + 1)

end

end A013776.P2711933941599705038

namespace A013776

/-- `∑{#}[2*n, C(4*n+2, 2*#+1)]` -/
def P2711933941599705038.Spec : Prop :=
  ∀ n, (P2711933941599705038.a n : ℤ) = A013776 n

end A013776

/-! ## A013776.P1499707907621789606

`record[2^(xor(3, n)-2)]`
-/

namespace A013776.P1499707907621789606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013776.P1499707907621789606

namespace A013776

/-- `record[2^(xor(3, n)-2)]` -/
def P1499707907621789606.Spec : Prop :=
  ∀ n, P1499707907621789606.a n = (A013776 n : ℚ)

end A013776

/-! ## A013776.P16464640573025450977

`record[2^(lcm(2, n+1)-1)]`
-/

namespace A013776.P16464640573025450977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013776.P16464640573025450977

namespace A013776

/-- `record[2^(lcm(2, n+1)-1)]` -/
def P16464640573025450977.Spec : Prop :=
  ∀ n, P16464640573025450977.a n = (A013776 n : ℚ)

end A013776

/-! ## A013776.P11441746026568441381

`record[(2-and(3, n))^(n+1)]`
-/

namespace A013776.P11441746026568441381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 3 n : ℤ)) ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013776.P11441746026568441381

namespace A013776

/-- `record[(2-and(3, n))^(n+1)]` -/
def P11441746026568441381.Spec : Prop :=
  ∀ n, P11441746026568441381.a n = A013776 n

end A013776

/-! ## A013776.P14729244574741963611

`record[gcd(2, n)^(n+1+n)]`
-/

namespace A013776.P14729244574741963611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ (n + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013776.P14729244574741963611

namespace A013776

/-- `record[gcd(2, n)^(n+1+n)]` -/
def P14729244574741963611.Spec : Prop :=
  ∀ n, (P14729244574741963611.a n : ℤ) = A013776 n

end A013776

/-!
# A013777: a(n) = 2^(4*n + 3).

The programs for A013777, the canonical program `A013777.P8155452001393802888` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013777 has offset 0).

The definition of A013777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(4*n+3)` (program `A013777.P8155452001393802888`, by `A013777.P8155452001393802888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013777.P4227088080653622816

`ogf(8/(1-16x))`
-/

namespace A013777.P4227088080653622816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -16] n

end

end A013777.P4227088080653622816

namespace A013777

/-- `ogf(8/(1-16x))` -/
def P4227088080653622816.Spec : Prop :=
  ∀ n, P4227088080653622816.a n = A013777 n

end A013777

/-! ## A013777.P8155452001393802888

`2^(4*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013777

/-- `2^(4*n+3)` -/
def P8155452001393802888.Spec : Prop :=
  ∀ n, (P8155452001393802888.a n : ℤ) = A013777 n

theorem P8155452001393802888.correct : P8155452001393802888.Spec := by
  intro n
  simp only [A013777]

end A013777

/-! ## A013777.P7572587616477874115

`16*a(n-1)` with `a(0)=8`
-/

namespace A013777.P7572587616477874115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  16 * a (n - 1)

end

end A013777.P7572587616477874115

namespace A013777

/-- `16*a(n-1)` -/
def P7572587616477874115.Spec : Prop :=
  ∀ n, (P7572587616477874115.a n : ℤ) = A013777 n

theorem P7572587616477874115.correct : P7572587616477874115.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013777, Nat.add_sub_cancel, A013777.P7572587616477874115.a, A013777.P8155452001393802888.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013777, Nat.add_sub_cancel, A013777.P7572587616477874115.a, A013777.P8155452001393802888.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013777

/-! ## A013777.P2385040286451227880

`A000079(A004767(n))`
-/

namespace A013777.P2385040286451227880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004767 n).toNat

end

end A013777.P2385040286451227880

namespace A013777

/-- `A000079(A004767(n))` -/
def P2385040286451227880.Spec : Prop :=
  ∀ n, P2385040286451227880.a n = A013777 n

end A013777

/-! ## A013777.P6181552092936069361

`record[2^xor(3, n)]`
-/

namespace A013777.P6181552092936069361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013777.P6181552092936069361

namespace A013777

/-- `record[2^xor(3, n)]` -/
def P6181552092936069361.Spec : Prop :=
  ∀ n, (P6181552092936069361.a n : ℤ) = A013777 n

end A013777

/-! ## A013777.P18086052670652741784

`record[8*(-4)^n]`
-/

namespace A013777.P18086052670652741784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (-4) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013777.P18086052670652741784

namespace A013777

/-- `record[8*(-4)^n]` -/
def P18086052670652741784.Spec : Prop :=
  ∀ n, P18086052670652741784.a n = A013777 n

end A013777

/-! ## A013777.P8967278948497593882

`lcm(2, 8*(4^n)²)`
-/

namespace A013777.P8967278948497593882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (8 * (4 ^ n) ^ 2)

end

end A013777.P8967278948497593882

namespace A013777

/-- `lcm(2, 8*(4^n)²)` -/
def P8967278948497593882.Spec : Prop :=
  ∀ n, (P8967278948497593882.a n : ℤ) = A013777 n

end A013777

/-! ## A013777.P8371655559120789641

`(4^n)²/tan(acot(8))`
-/

namespace A013777.P8371655559120789641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 ^ n) ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (8 : ℝ))

end

end A013777.P8371655559120789641

namespace A013777

/-- `(4^n)²/tan(acot(8))` -/
def P8371655559120789641.Spec : Prop :=
  ∀ n, P8371655559120789641.a n = (A013777 n : ℝ)

end A013777

/-! ## A013777.P10624061479190237334

`record[(-4)^(n+2)]/2`
-/

namespace A013777.P10624061479190237334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A013777.P10624061479190237334

namespace A013777

/-- `record[(-4)^(n+2)]/2` -/
def P10624061479190237334.Spec : Prop :=
  ∀ n, P10624061479190237334.a n = (A013777 n : ℚ)

end A013777

/-! ## A013777.P7202531263975963294

`lcm(4, (4^(n+1))²)/2`
-/

namespace A013777.P7202531263975963294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 ((4 ^ (n + 1)) ^ 2) : ℚ) / 2

end

end A013777.P7202531263975963294

namespace A013777

/-- `lcm(4, (4^(n+1))²)/2` -/
def P7202531263975963294.Spec : Prop :=
  ∀ n, P7202531263975963294.a n = (A013777 n : ℚ)

end A013777

/-!
# A013778: a(n) = 3^(4*n + 1).

The programs for A013778, the canonical program `A013778.P13482909942358567204` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013778 has offset 0).

The definition of A013778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(4*n+1)` (program `A013778.P13482909942358567204`, by `A013778.P13482909942358567204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013778.P4005324452780072761

`ogf(3/(1-81x))`
-/

namespace A013778.P4005324452780072761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3] [1, -81] n

end

end A013778.P4005324452780072761

namespace A013778

/-- `ogf(3/(1-81x))` -/
def P4005324452780072761.Spec : Prop :=
  ∀ n, P4005324452780072761.a n = A013778 n

end A013778

/-! ## A013778.P13482909942358567204

`3^(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013778

/-- `3^(4*n+1)` -/
def P13482909942358567204.Spec : Prop :=
  ∀ n, (P13482909942358567204.a n : ℤ) = A013778 n

theorem P13482909942358567204.correct : P13482909942358567204.Spec := by
  intro n
  simp only [A013778]

end A013778

/-! ## A013778.P16052470322025677957

`81*a(n-1)` with `a(0)=3`
-/

namespace A013778.P16052470322025677957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  81 * a (n - 1)

end

end A013778.P16052470322025677957

namespace A013778

/-- `81*a(n-1)` -/
def P16052470322025677957.Spec : Prop :=
  ∀ n, (P16052470322025677957.a n : ℤ) = A013778 n

theorem P16052470322025677957.correct : P16052470322025677957.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013778, Nat.add_sub_cancel, A013778.P16052470322025677957.a, A013778.P13482909942358567204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013778, Nat.add_sub_cancel, A013778.P16052470322025677957.a, A013778.P13482909942358567204.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013778

/-! ## A013778.P3147493418874366763

`record[3^(xor(3, n)-2)]`
-/

namespace A013778.P3147493418874366763
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013778.P3147493418874366763

namespace A013778

/-- `record[3^(xor(3, n)-2)]` -/
def P3147493418874366763.Spec : Prop :=
  ∀ n, P3147493418874366763.a n = (A013778 n : ℚ)

end A013778

/-! ## A013778.P14385355059107303085

`record[3^(lcm(2, n+1)-1)]`
-/

namespace A013778.P14385355059107303085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013778.P14385355059107303085

namespace A013778

/-- `record[3^(lcm(2, n+1)-1)]` -/
def P14385355059107303085.Spec : Prop :=
  ∀ n, P14385355059107303085.a n = (A013778 n : ℚ)

end A013778

/-! ## A013778.P15055453499699421818

`a(n-1)/(1/3)²²` with `a(0)=3`
-/

namespace A013778.P15055453499699421818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / (((1 : ℚ) / 3) ^ 2) ^ 2

end

end A013778.P15055453499699421818

namespace A013778

/-- `a(n-1)/(1/3)²²` -/
def P15055453499699421818.Spec : Prop :=
  ∀ n, P15055453499699421818.a n = (A013778 n : ℚ)

theorem P15055453499699421818.correct : P15055453499699421818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013778, Nat.add_sub_cancel, A013778.P15055453499699421818.a, A013778.P13482909942358567204.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013778, Nat.add_sub_cancel, A013778.P15055453499699421818.a, A013778.P13482909942358567204.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013778

/-! ## A013778.P3461613931196027389

`A013708(2*n)`
-/

namespace A013778.P3461613931196027389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 (2 * n)

end

end A013778.P3461613931196027389

namespace A013778

/-- `A013708(2*n)` -/
def P3461613931196027389.Spec : Prop :=
  ∀ n, P3461613931196027389.a n = A013778 n

theorem P3461613931196027389.correct : P3461613931196027389.Spec := by
  intro n
  simp only [A013778, Nat.add_sub_cancel, A013778.P3461613931196027389.a, A013778.P13482909942358567204.a, A013708, A013708.P4928709745318280073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013778

/-! ## A013778.P12002366099547032472

`A102518(Δ[n²])`
-/

namespace A013778.P12002366099547032472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013778.P12002366099547032472

namespace A013778

/-- `A102518(Δ[n²])` -/
def P12002366099547032472.Spec : Prop :=
  ∀ n, P12002366099547032472.a n = A013778 n

end A013778

/-! ## A013778.P9406239058844903848

`A198960(2*n)+1`
-/

namespace A013778.P9406239058844903848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198960 (2 * n) + 1

end

end A013778.P9406239058844903848

namespace A013778

/-- `A198960(2*n)+1` -/
def P9406239058844903848.Spec : Prop :=
  ∀ n, P9406239058844903848.a n = A013778 n

end A013778

/-! ## A013778.P14521298178581404097

`A199561(2*n)-1`
-/

namespace A013778.P14521298178581404097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199561 (2 * n) - 1

end

end A013778.P14521298178581404097

namespace A013778

/-- `A199561(2*n)-1` -/
def P14521298178581404097.Spec : Prop :=
  ∀ n, P14521298178581404097.a n = A013778 n

end A013778

/-!
# A013779: a(n) = 3^(4*n + 3).

The programs for A013779, the canonical program `A013779.P13198255477324154510` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013779 has offset 0).

The definition of A013779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^(4*n+3)` (program `A013779.P13198255477324154510`, by `A013779.P13198255477324154510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013779.P4757343103432407007

`ogf(27/(1-81x))`
-/

namespace A013779.P4757343103432407007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [27] [1, -81] n

end

end A013779.P4757343103432407007

namespace A013779

/-- `ogf(27/(1-81x))` -/
def P4757343103432407007.Spec : Prop :=
  ∀ n, P4757343103432407007.a n = A013779 n

end A013779

/-! ## A013779.P13198255477324154510

`3^(4*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013779

/-- `3^(4*n+3)` -/
def P13198255477324154510.Spec : Prop :=
  ∀ n, (P13198255477324154510.a n : ℤ) = A013779 n

theorem P13198255477324154510.correct : P13198255477324154510.Spec := by
  intro n
  simp only [A013779]

end A013779

/-! ## A013779.P15692915814420858882

`81*a(n-1)` with `a(0)=27`
-/

namespace A013779.P15692915814420858882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27] fun n a =>
  81 * a (n - 1)

end

end A013779.P15692915814420858882

namespace A013779

/-- `81*a(n-1)` -/
def P15692915814420858882.Spec : Prop :=
  ∀ n, (P15692915814420858882.a n : ℤ) = A013779 n

theorem P15692915814420858882.correct : P15692915814420858882.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013779, Nat.add_sub_cancel, A013779.P15692915814420858882.a, A013779.P13198255477324154510.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013779, Nat.add_sub_cancel, A013779.P15692915814420858882.a, A013779.P13198255477324154510.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013779

/-! ## A013779.P6913791391937686054

`record[3^xor(3, n)]`
-/

namespace A013779.P6913791391937686054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013779.P6913791391937686054

namespace A013779

/-- `record[3^xor(3, n)]` -/
def P6913791391937686054.Spec : Prop :=
  ∀ n, (P6913791391937686054.a n : ℤ) = A013779 n

end A013779

/-! ## A013779.P16903277350121478170

`record[3^(lcm(2, n+1)+1)]`
-/

namespace A013779.P16903277350121478170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (Nat.lcm 2 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013779.P16903277350121478170

namespace A013779

/-- `record[3^(lcm(2, n+1)+1)]` -/
def P16903277350121478170.Spec : Prop :=
  ∀ n, (P16903277350121478170.a n : ℤ) = A013779 n

end A013779

/-! ## A013779.P11603448282609371198

`3*A013714(n)`
-/

namespace A013779.P11603448282609371198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A013714 n

end

end A013779.P11603448282609371198

namespace A013779

/-- `3*A013714(n)` -/
def P11603448282609371198.Spec : Prop :=
  ∀ n, P11603448282609371198.a n = A013779 n

end A013779

/-! ## A013779.P9608240056719693375

`9*A013778(n)`
-/

namespace A013779.P9608240056719693375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A013778 n

end

end A013779.P9608240056719693375

namespace A013779

/-- `9*A013778(n)` -/
def P9608240056719693375.Spec : Prop :=
  ∀ n, P9608240056719693375.a n = A013779 n

theorem P9608240056719693375.correct : P9608240056719693375.Spec := by
  intro n
  simp only [A013779, Nat.add_sub_cancel, A013779.P9608240056719693375.a, A013779.P13198255477324154510.a, A013778, A013778.P13482909942358567204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013779

/-! ## A013779.P2461393433824735491

`A013708(Δ[n²])`
-/

namespace A013779.P2461393433824735491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013708 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013779.P2461393433824735491

namespace A013779

/-- `A013708(Δ[n²])` -/
def P2461393433824735491.Spec : Prop :=
  ∀ n, P2461393433824735491.a n = A013779 n

end A013779

/-! ## A013779.P13710973486310832402

`A102518(2*(n+1))`
-/

namespace A013779.P13710973486310832402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102518 (2 * (n + 1))

end

end A013779.P13710973486310832402

namespace A013779

/-- `A102518(2*(n+1))` -/
def P13710973486310832402.Spec : Prop :=
  ∀ n, P13710973486310832402.a n = A013779 n

end A013779

/-! ## A013779.P15001145859128701584

`A183430(2*(n+1))`
-/

namespace A013779.P15001145859128701584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183430 (2 * (n + 1))

end

end A013779.P15001145859128701584

namespace A013779

/-- `A183430(2*(n+1))` -/
def P15001145859128701584.Spec : Prop :=
  ∀ n, P15001145859128701584.a n = A013779 n

end A013779

/-!
# A013780: a(n) = 4^(4*n + 1).

The programs for A013780, the canonical program `A013780.P15380145472240936131` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013780 has offset 0).

The definition of A013780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(4*n+1)` (program `A013780.P15380145472240936131`, by `A013780.P15380145472240936131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013780.P15380145472240936131

`4^(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013780

/-- `4^(4*n+1)` -/
def P15380145472240936131.Spec : Prop :=
  ∀ n, (P15380145472240936131.a n : ℤ) = A013780 n

theorem P15380145472240936131.correct : P15380145472240936131.Spec := by
  intro n
  simp only [A013780]

end A013780

/-! ## A013780.P3111515685397428028

`256*a(n-1)` with `a(0)=4`
-/

namespace A013780.P3111515685397428028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  256 * a (n - 1)

end

end A013780.P3111515685397428028

namespace A013780

/-- `256*a(n-1)` -/
def P3111515685397428028.Spec : Prop :=
  ∀ n, (P3111515685397428028.a n : ℤ) = A013780 n

theorem P3111515685397428028.correct : P3111515685397428028.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013780, Nat.add_sub_cancel, A013780.P3111515685397428028.a, A013780.P15380145472240936131.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013780, Nat.add_sub_cancel, A013780.P3111515685397428028.a, A013780.P15380145472240936131.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013780

/-! ## A013780.P3577897097186435264

`a(n-1)*256` with `a(0)=4`
-/

namespace A013780.P3577897097186435264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * 256

end

end A013780.P3577897097186435264

namespace A013780

/-- `a(n-1)*256` -/
def P3577897097186435264.Spec : Prop :=
  ∀ n, (P3577897097186435264.a n : ℤ) = A013780 n

theorem P3577897097186435264.correct : P3577897097186435264.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013780, Nat.add_sub_cancel, A013780.P3577897097186435264.a, A013780.P15380145472240936131.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013780, Nat.add_sub_cancel, A013780.P3577897097186435264.a, A013780.P15380145472240936131.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013780

/-! ## A013780.P809205457999097269

`(2^or(1, 4*n))²`
-/

namespace A013780.P809205457999097269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.lor 1 (4 * n)) ^ 2

end

end A013780.P809205457999097269

namespace A013780

/-- `(2^or(1, 4*n))²` -/
def P809205457999097269.Spec : Prop :=
  ∀ n, (P809205457999097269.a n : ℤ) = A013780 n

end A013780

/-! ## A013780.P3601401836803906302

`(2^xor(1, 4*n))²`
-/

namespace A013780.P3601401836803906302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 (4 * n)) ^ 2

end

end A013780.P3601401836803906302

namespace A013780

/-- `(2^xor(1, 4*n))²` -/
def P3601401836803906302.Spec : Prop :=
  ∀ n, (P3601401836803906302.a n : ℤ) = A013780 n

end A013780

/-!
# A013781: a(n) = 4^(4*n + 3).

The programs for A013781, the canonical program `A013781.P18194116360646718314` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013781 has offset 0).

The definition of A013781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(4*n+3)` (program `A013781.P18194116360646718314`, by `A013781.P18194116360646718314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013781.P18194116360646718314

`4^(4*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013781

/-- `4^(4*n+3)` -/
def P18194116360646718314.Spec : Prop :=
  ∀ n, (P18194116360646718314.a n : ℤ) = A013781 n

theorem P18194116360646718314.correct : P18194116360646718314.Spec := by
  intro n
  simp only [A013781]

end A013781

/-! ## A013781.P138343104344346572

`record[4^xor(3, n)]`
-/

namespace A013781.P138343104344346572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013781.P138343104344346572

namespace A013781

/-- `record[4^xor(3, n)]` -/
def P138343104344346572.Spec : Prop :=
  ∀ n, (P138343104344346572.a n : ℤ) = A013781 n

end A013781

/-! ## A013781.P14822086585437828214

`256*a(n-1)` with `a(0)=64`
-/

namespace A013781.P14822086585437828214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [64] fun n a =>
  256 * a (n - 1)

end

end A013781.P14822086585437828214

namespace A013781

/-- `256*a(n-1)` -/
def P14822086585437828214.Spec : Prop :=
  ∀ n, (P14822086585437828214.a n : ℤ) = A013781 n

theorem P14822086585437828214.correct : P14822086585437828214.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013781, Nat.add_sub_cancel, A013781.P14822086585437828214.a, A013781.P18194116360646718314.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013781, Nat.add_sub_cancel, A013781.P14822086585437828214.a, A013781.P18194116360646718314.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013781

/-! ## A013781.P11678314926375904458

`A013777(n)²`
-/

namespace A013781.P11678314926375904458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013777 n ^ 2

end

end A013781.P11678314926375904458

namespace A013781

/-- `A013777(n)²` -/
def P11678314926375904458.Spec : Prop :=
  ∀ n, P11678314926375904458.a n = A013781 n

end A013781

/-! ## A013781.P5464903913693486579

`A000302(A004767(n))`
-/

namespace A013781.P5464903913693486579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A004767 n).toNat

end

end A013781.P5464903913693486579

namespace A013781

/-- `A000302(A004767(n))` -/
def P5464903913693486579.Spec : Prop :=
  ∀ n, P5464903913693486579.a n = A013781 n

end A013781

/-!
# A013782: a(n) = 5^(4*n + 1).

The programs for A013782, the canonical program `A013782.P10117355778073301627` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013782 has offset 0).

The definition of A013782 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(4*n+1)` (program `A013782.P10117355778073301627`, by `A013782.P10117355778073301627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013782.P10117355778073301627

`5^(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013782

/-- `5^(4*n+1)` -/
def P10117355778073301627.Spec : Prop :=
  ∀ n, (P10117355778073301627.a n : ℤ) = A013782 n

theorem P10117355778073301627.correct : P10117355778073301627.Spec := by
  intro n
  simp only [A013782]

end A013782

/-! ## A013782.P7507807841082649810

`625*a(n-1)` with `a(0)=5`
-/

namespace A013782.P7507807841082649810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  625 * a (n - 1)

end

end A013782.P7507807841082649810

namespace A013782

/-- `625*a(n-1)` -/
def P7507807841082649810.Spec : Prop :=
  ∀ n, (P7507807841082649810.a n : ℤ) = A013782 n

theorem P7507807841082649810.correct : P7507807841082649810.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013782, Nat.add_sub_cancel, A013782.P7507807841082649810.a, A013782.P10117355778073301627.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013782, Nat.add_sub_cancel, A013782.P7507807841082649810.a, A013782.P10117355778073301627.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013782

/-! ## A013782.P11609686937144005094

`A013710(2*n)`
-/

namespace A013782.P11609686937144005094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013710 (2 * n)

end

end A013782.P11609686937144005094

namespace A013782

/-- `A013710(2*n)` -/
def P11609686937144005094.Spec : Prop :=
  ∀ n, P11609686937144005094.a n = A013782 n

theorem P11609686937144005094.correct : P11609686937144005094.Spec := by
  intro n
  simp only [A013782, Nat.add_sub_cancel, A013782.P11609686937144005094.a, A013782.P10117355778073301627.a, A013710, A013710.P16323679375009357405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013782

/-! ## A013782.P17952284611349740310

`A005517(A017569(n))`
-/

namespace A013782.P17952284611349740310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A017569 n).toNat

end

end A013782.P17952284611349740310

namespace A013782

/-- `A005517(A017569(n))` -/
def P17952284611349740310.Spec : Prop :=
  ∀ n, P17952284611349740310.a n = A013782 n

end A013782

/-! ## A013782.P1126980349196409254

`A100095(A017077(n)+2)`
-/

namespace A013782.P1126980349196409254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100095 (A017077 n + 2).toNat

end

end A013782.P1126980349196409254

namespace A013782

/-- `A100095(A017077(n)+2)` -/
def P1126980349196409254.Spec : Prop :=
  ∀ n, P1126980349196409254.a n = A013782 n

end A013782

/-!
# A013783: a(n) = 5^(4*n + 3).

The programs for A013783, the canonical program `A013783.P14609477492235569961` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013783 has offset 0).

The definition of A013783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(4*n+3)` (program `A013783.P14609477492235569961`, by `A013783.P14609477492235569961.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013783.P14609477492235569961

`5^(4*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013783

/-- `5^(4*n+3)` -/
def P14609477492235569961.Spec : Prop :=
  ∀ n, (P14609477492235569961.a n : ℤ) = A013783 n

theorem P14609477492235569961.correct : P14609477492235569961.Spec := by
  intro n
  simp only [A013783]

end A013783

/-! ## A013783.P10902607556024059702

`625*a(n-1)` with `a(0)=125`
-/

namespace A013783.P10902607556024059702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [125] fun n a =>
  625 * a (n - 1)

end

end A013783.P10902607556024059702

namespace A013783

/-- `625*a(n-1)` -/
def P10902607556024059702.Spec : Prop :=
  ∀ n, (P10902607556024059702.a n : ℤ) = A013783 n

theorem P10902607556024059702.correct : P10902607556024059702.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A013783, Nat.add_sub_cancel, A013783.P10902607556024059702.a, A013783.P14609477492235569961.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A013783, Nat.add_sub_cancel, A013783.P10902607556024059702.a, A013783.P14609477492235569961.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A013783

/-! ## A013783.P15502007049759998515

`record[5^xor(3, n)]`
-/

namespace A013783.P15502007049759998515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013783.P15502007049759998515

namespace A013783

/-- `record[5^xor(3, n)]` -/
def P15502007049759998515.Spec : Prop :=
  ∀ n, (P15502007049759998515.a n : ℤ) = A013783 n

end A013783

/-! ## A013783.P3362516297705841119

`root(5, 1/record[xor(3, n)])`
-/

namespace A013783.P3362516297705841119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ (1 / (1 / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) : ℝ))

end

end A013783.P3362516297705841119

namespace A013783

/-- `root(5, 1/record[xor(3, n)])` -/
def P3362516297705841119.Spec : Prop :=
  ∀ n, P3362516297705841119.a n = (A013783 n : ℝ)

end A013783

/-! ## A013783.P8397165478199263593

`record[5^(lcm(2, n+1)+1)]`
-/

namespace A013783.P8397165478199263593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (Nat.lcm 2 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013783.P8397165478199263593

namespace A013783

/-- `record[5^(lcm(2, n+1)+1)]` -/
def P8397165478199263593.Spec : Prop :=
  ∀ n, (P8397165478199263593.a n : ℤ) = A013783 n

end A013783

/-!
# A013784: a(n) = 6^(4*n + 1).

The programs for A013784, the canonical program `A013784.P8034638489604487427` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013784 has offset 0).

The definition of A013784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(4*n+1)` (program `A013784.P8034638489604487427`, by `A013784.P8034638489604487427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013784.P8034638489604487427

`6^(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013784

/-- `6^(4*n+1)` -/
def P8034638489604487427.Spec : Prop :=
  ∀ n, (P8034638489604487427.a n : ℤ) = A013784 n

theorem P8034638489604487427.correct : P8034638489604487427.Spec := by
  intro n
  simp only [A013784]

end A013784

/-! ## A013784.P14266425201113888769

`A013711(2*n)`
-/

namespace A013784.P14266425201113888769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013711 (2 * n)

end

end A013784.P14266425201113888769

namespace A013784

/-- `A013711(2*n)` -/
def P14266425201113888769.Spec : Prop :=
  ∀ n, P14266425201113888769.a n = A013784 n

theorem P14266425201113888769.correct : P14266425201113888769.Spec := by
  intro n
  simp only [A013784, Nat.add_sub_cancel, A013784.P14266425201113888769.a, A013784.P8034638489604487427.a, A013711, A013711.P9940621203968599622.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013784

/-! ## A013784.P325795976078336195

`A017922(A017089(n))`
-/

namespace A013784.P325795976078336195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017922 (A017089 n).toNat

end

end A013784.P325795976078336195

namespace A013784

/-- `A017922(A017089(n))` -/
def P325795976078336195.Spec : Prop :=
  ∀ n, P325795976078336195.a n = A013784 n

end A013784

/-! ## A013784.P3344606718645830235

`A026532(A047471(2*n+3)-6)`
-/

namespace A013784.P3344606718645830235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (A047471 (2 * n + 3) - 6).toNat

end

end A013784.P3344606718645830235

namespace A013784

/-- `A026532(A047471(2*n+3)-6)` -/
def P3344606718645830235.Spec : Prop :=
  ∀ n, P3344606718645830235.a n = A013784 n

end A013784

/-!
# A013785: a(n) = 6^(4n+3).

The programs for A013785, the canonical program `A013785.P5063234107794672000` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013785 has offset 0).

The definition of A013785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(4*n+3)` (program `A013785.P5063234107794672000`, by `A013785.P5063234107794672000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013785.P5063234107794672000

`6^(4*n+3)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013785

/-- `6^(4*n+3)` -/
def P5063234107794672000.Spec : Prop :=
  ∀ n, (P5063234107794672000.a n : ℤ) = A013785 n

theorem P5063234107794672000.correct : P5063234107794672000.Spec := by
  intro n
  simp only [A013785]

end A013785

/-! ## A013785.P10766307864770274398

`record[6^xor(3, n)]`
-/

namespace A013785.P10766307864770274398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013785.P10766307864770274398

namespace A013785

/-- `record[6^xor(3, n)]` -/
def P10766307864770274398.Spec : Prop :=
  ∀ n, (P10766307864770274398.a n : ℤ) = A013785 n

end A013785

/-! ## A013785.P14043688295410415812

`∏[-a(n-1)]²/6` with `a(0)=36`
-/

namespace A013785.P14043688295410415812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [36] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 6

end

end A013785.P14043688295410415812

namespace A013785

/-- `∏[-a(n-1)]²/6` -/
def P14043688295410415812.Spec : Prop :=
  ∀ n, P14043688295410415812.a n = (A013785 n : ℚ)

end A013785

/-! ## A013785.P1220329096892669223

`6*36^n*abs(∏[-a(n-1)])` with `a(0)=36`
-/

namespace A013785.P1220329096892669223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [36] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 36 ^ n : ℤ) * |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A013785.P1220329096892669223

namespace A013785

/-- `6*36^n*abs(∏[-a(n-1)])` -/
def P1220329096892669223.Spec : Prop :=
  ∀ n, P1220329096892669223.a n = A013785 n

end A013785

/-! ## A013785.P16461956727086734919

`36*A013784(n)`
-/

namespace A013785.P16461956727086734919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A013784 n

end

end A013785.P16461956727086734919

namespace A013785

/-- `36*A013784(n)` -/
def P16461956727086734919.Spec : Prop :=
  ∀ n, P16461956727086734919.a n = A013785 n

theorem P16461956727086734919.correct : P16461956727086734919.Spec := by
  intro n
  simp only [A013785, Nat.add_sub_cancel, A013785.P16461956727086734919.a, A013785.P5063234107794672000.a, A013784, A013784.P8034638489604487427.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013785

/-!
# A013786: a(n) = 7^(4*n + 1).

The programs for A013786, the canonical program `A013786.P16749071039129122350` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013786 has offset 0).

The definition of A013786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^(4*n+1)` (program `A013786.P16749071039129122350`, by `A013786.P16749071039129122350.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013786.P16749071039129122350

`7^(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013786

/-- `7^(4*n+1)` -/
def P16749071039129122350.Spec : Prop :=
  ∀ n, (P16749071039129122350.a n : ℤ) = A013786 n

theorem P16749071039129122350.correct : P16749071039129122350.Spec := by
  intro n
  simp only [A013786]

end A013786

/-! ## A013786.P18443236272382504950

`record[7^(xor(3, n)-2)]`
-/

namespace A013786.P18443236272382504950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013786.P18443236272382504950

namespace A013786

/-- `record[7^(xor(3, n)-2)]` -/
def P18443236272382504950.Spec : Prop :=
  ∀ n, P18443236272382504950.a n = (A013786 n : ℚ)

end A013786

/-! ## A013786.P14488895437260436778

`record[7^(lcm(2, n+1)-1)]`
-/

namespace A013786.P14488895437260436778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013786.P14488895437260436778

namespace A013786

/-- `record[7^(lcm(2, n+1)-1)]` -/
def P14488895437260436778.Spec : Prop :=
  ∀ n, P14488895437260436778.a n = (A013786 n : ℚ)

end A013786

/-! ## A013786.P9078166010161478465

`A013712(2*n)`
-/

namespace A013786.P9078166010161478465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013712 (2 * n)

end

end A013786.P9078166010161478465

namespace A013786

/-- `A013712(2*n)` -/
def P9078166010161478465.Spec : Prop :=
  ∀ n, P9078166010161478465.a n = A013786 n

theorem P9078166010161478465.correct : P9078166010161478465.Spec := by
  intro n
  simp only [A013786, Nat.add_sub_cancel, A013786.P9078166010161478465.a, A013786.P16749071039129122350.a, A013712, A013712.P6679868428762462317.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013786

/-! ## A013786.P9256324493906186884

`A000420(2*2*n+1)`
-/

namespace A013786.P9256324493906186884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (2 * (2 * n) + 1)

end

end A013786.P9256324493906186884

namespace A013786

/-- `A000420(2*2*n+1)` -/
def P9256324493906186884.Spec : Prop :=
  ∀ n, P9256324493906186884.a n = A013786 n

theorem P9256324493906186884.correct : P9256324493906186884.Spec := by
  intro n
  simp only [A013786, Nat.add_sub_cancel, A013786.P9256324493906186884.a, A013786.P16749071039129122350.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013786

/-!
# A013787: 

The programs for A013787, there is no canonical definition to state claims against.
-/

/-! ## A013787.P6799461231150969329

`record[7^xor(3, n)]`
-/

namespace A013787.P6799461231150969329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013787.P6799461231150969329

/-! ## A013787.P4244017577378337324

`7^(4*n+3)`
-/

namespace A013787.P4244017577378337324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (4 * n + 3)

end

end A013787.P4244017577378337324

/-! ## A013787.P15140993444327310790

`A013712(Δ[n²])`
-/

namespace A013787.P15140993444327310790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013787.P15140993444327310790

/-! ## A013787.P3111265209849351405

`7*A013712(n)²`
-/

namespace A013787.P3111265209849351405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A013712 n ^ 2

end

end A013787.P3111265209849351405

/-! ## A013787.P7763572093327834050

`record[7^A004444(n)]`
-/

namespace A013787.P7763572093327834050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A004444 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013787.P7763572093327834050

/-!
# A013788: a(n) = 8^(4*n + 1).

The programs for A013788, the canonical program `A013788.P9046578432779850596` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A013788 has offset 0).

The definition of A013788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(4*n+1)` (program `A013788.P9046578432779850596`, by `A013788.P9046578432779850596.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A013788.P9046578432779850596

`8^(4*n+1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A013788

/-- `8^(4*n+1)` -/
def P9046578432779850596.Spec : Prop :=
  ∀ n, (P9046578432779850596.a n : ℤ) = A013788 n

theorem P9046578432779850596.correct : P9046578432779850596.Spec := by
  intro n
  simp only [A013788]

end A013788

/-! ## A013788.P11057695333070363562

`record[8^(xor(3, n)-2)]`
-/

namespace A013788.P11057695333070363562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013788.P11057695333070363562

namespace A013788

/-- `record[8^(xor(3, n)-2)]` -/
def P11057695333070363562.Spec : Prop :=
  ∀ n, P11057695333070363562.a n = (A013788 n : ℚ)

end A013788

/-! ## A013788.P11740656221574698388

`A013713(2*n)`
-/

namespace A013788.P11740656221574698388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013713 (2 * n)

end

end A013788.P11740656221574698388

namespace A013788

/-- `A013713(2*n)` -/
def P11740656221574698388.Spec : Prop :=
  ∀ n, P11740656221574698388.a n = A013788 n

theorem P11740656221574698388.correct : P11740656221574698388.Spec := by
  intro n
  simp only [A013788, Nat.add_sub_cancel, A013788.P11740656221574698388.a, A013788.P9046578432779850596.a, A013713, A013713.P12921318779103087679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A013788

/-! ## A013788.P17284260206545691344

`A000079(A017557(n))`
-/

namespace A013788.P17284260206545691344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A017557 n).toNat

end

end A013788.P17284260206545691344

namespace A013788

/-- `A000079(A017557(n))` -/
def P17284260206545691344.Spec : Prop :=
  ∀ n, P17284260206545691344.a n = A013788 n

end A013788

/-! ## A013788.P8749477924978505370

`A100097(A017077(n)+2)`
-/

namespace A013788.P8749477924978505370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100097 (A017077 n + 2).toNat

end

end A013788.P8749477924978505370

namespace A013788

/-- `A100097(A017077(n)+2)` -/
def P8749477924978505370.Spec : Prop :=
  ∀ n, P8749477924978505370.a n = A013788 n

end A013788

/-!
# A013789: 

The programs for A013789, there is no canonical definition to state claims against.
-/

/-! ## A013789.P11675956463738485739

`record[8^xor(3, n)]`
-/

namespace A013789.P11675956463738485739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013789.P11675956463738485739

/-! ## A013789.P8160664080648482390

`8^(4*n+3)`
-/

namespace A013789.P8160664080648482390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (4 * n + 3)

end

end A013789.P8160664080648482390

/-! ## A013789.P18395816101315852559

`A013713(Δ[n²])`
-/

namespace A013789.P18395816101315852559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013713 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013789.P18395816101315852559

/-! ## A013789.P12797138506743003881

`2*A013735(n)²`
-/

namespace A013789.P12797138506743003881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013735 n ^ 2

end

end A013789.P12797138506743003881

/-!
# A013790: 

The programs for A013790, there is no canonical definition to state claims against.
-/

/-! ## A013790.P11622313867952775320

`(3*81^n)²`
-/

namespace A013790.P11622313867952775320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * 81 ^ n) ^ 2

end

end A013790.P11622313867952775320

/-! ## A013790.P17076369002269992976

`3^or(2, 8*n)`
-/

namespace A013790.P17076369002269992976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.lor 2 (8 * n)

end

end A013790.P17076369002269992976

/-! ## A013790.P16270841778699666779

`3^xor(2, 8*n)`
-/

namespace A013790.P16270841778699666779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.xor 2 (8 * n)

end

end A013790.P16270841778699666779

/-! ## A013790.P2827672260384548958

`9^Δ[C(2*n, 2)]`
-/

namespace A013790.P2827672260384548958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A013790.P2827672260384548958

/-! ## A013790.P13855947240117257862

`record[9^(xor(3, n)-2)]`
-/

namespace A013790.P13855947240117257862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013790.P13855947240117257862

/-!
# A013791: 

The programs for A013791, there is no canonical definition to state claims against.
-/

/-! ## A013791.P13416657448582769633

`record[9^xor(3, n)]`
-/

namespace A013791.P13416657448582769633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013791.P13416657448582769633

/-! ## A013791.P14816731847848513926

`9^(4*n+3)`
-/

namespace A013791.P14816731847848513926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (4 * n + 3)

end

end A013791.P14816731847848513926

/-! ## A013791.P1878982219719873520

`record[(-3)^or(6, n)]`
-/

namespace A013791.P1878982219719873520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013791.P1878982219719873520

/-! ## A013791.P8286761475391385279

`3*3^or(1, Δ[(2*n)²])`
-/

namespace A013791.P8286761475391385279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (3 : ℚ) ^ (Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A013791.P8286761475391385279

/-! ## A013791.P18410931359826553962

`A013779(n)²`
-/

namespace A013791.P18410931359826553962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013779 n ^ 2

end

end A013791.P18410931359826553962

/-!
# A013792: 

The programs for A013792, there is no canonical definition to state claims against.
-/

/-! ## A013792.P8090890615220155564

`10^(4*n+1)`
-/

namespace A013792.P8090890615220155564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (4 * n + 1)

end

end A013792.P8090890615220155564

/-! ## A013792.P16001393646359480448

`record[10^(xor(3, n)-2)]`
-/

namespace A013792.P16001393646359480448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013792.P16001393646359480448

/-! ## A013792.P7662459408759304332

`(sqrt(10)^xor(1, 4*n))²`
-/

namespace A013792.P7662459408759304332
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (10 : ℝ) ^ Nat.xor 1 (4 * n)) ^ 2

end

end A013792.P7662459408759304332

/-! ## A013792.P11712705732764958150

`floor(10^Δ[C(2*n, 2)])`
-/

namespace A013792.P11712705732764958150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌋

end

end A013792.P11712705732764958150

/-! ## A013792.P8289450092045536774

`record[10^abs(Δ[xor(1, n²)])]`
-/

namespace A013792.P8289450092045536774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|(f2 (n + 1) : ℤ) - (f2 n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013792.P8289450092045536774

/-!
# A013793: 

The programs for A013793, there is no canonical definition to state claims against.
-/

/-! ## A013793.P2799050678454602461

`record[10^xor(3, n)]`
-/

namespace A013793.P2799050678454602461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013793.P2799050678454602461

/-! ## A013793.P18397372732851715507

`10^(4*n+3)`
-/

namespace A013793.P18397372732851715507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (4 * n + 3)

end

end A013793.P18397372732851715507

/-! ## A013793.P9996512336600965223

`A013715(Δ[n²])`
-/

namespace A013793.P9996512336600965223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013715 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013793.P9996512336600965223

/-! ## A013793.P14247375052796115533

`10*A013715(n)²`
-/

namespace A013793.P14247375052796115533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A013715 n ^ 2

end

end A013793.P14247375052796115533

/-! ## A013793.P6674553839830168494

`record[10^A004444(n)]`
-/

namespace A013793.P6674553839830168494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A004444 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013793.P6674553839830168494

/-!
# A013794: 

The programs for A013794, there is no canonical definition to state claims against.
-/

/-! ## A013794.P12311336447730208987

`11^(4*n+1)`
-/

namespace A013794.P12311336447730208987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (4 * n + 1)

end

end A013794.P12311336447730208987

/-! ## A013794.P9496453657736738624

`record[11^abs(Δ[xor(1, n²)])]`
-/

namespace A013794.P9496453657736738624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (|(f2 (n + 1) : ℤ) - (f2 n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013794.P9496453657736738624

/-! ## A013794.P14945753568570203273

`record[11^(lcm(2, n+1)-1)]`
-/

namespace A013794.P14945753568570203273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013794.P14945753568570203273

/-! ## A013794.P5264066113843154443

`record[11^Δ[-(n*(-1)^n)]]`
-/

namespace A013794.P5264066113843154443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013794.P5264066113843154443

/-! ## A013794.P12730108826846680817

`a(n-1)/(1/11)²²` with `a(0)=11`
-/

namespace A013794.P12730108826846680817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) / (((1 : ℚ) / 11) ^ 2) ^ 2

end

end A013794.P12730108826846680817

/-!
# A013795: 

The programs for A013795, there is no canonical definition to state claims against.
-/

/-! ## A013795.P12439665763641946758

`record[11^xor(3, n)]`
-/

namespace A013795.P12439665763641946758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013795.P12439665763641946758

/-! ## A013795.P17679537594430832196

`11^(4*n+3)`
-/

namespace A013795.P17679537594430832196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (4 * n + 3)

end

end A013795.P17679537594430832196

/-! ## A013795.P3124760850449250965

`A013716(Δ[n²])`
-/

namespace A013795.P3124760850449250965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013716 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013795.P3124760850449250965

/-! ## A013795.P9101086211663812498

`11*A013716(n)²`
-/

namespace A013795.P9101086211663812498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A013716 n ^ 2

end

end A013795.P9101086211663812498

/-! ## A013795.P17803678096474498758

`record[11^A004444(n)]`
-/

namespace A013795.P17803678096474498758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A004444 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013795.P17803678096474498758

/-!
# A013796: 

The programs for A013796, there is no canonical definition to state claims against.
-/

/-! ## A013796.P3537685758872317091

`12^(4*n+1)`
-/

namespace A013796.P3537685758872317091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (4 * n + 1)

end

end A013796.P3537685758872317091

/-! ## A013796.P8977238813749003144

`ceil(12^Δ[C(2*n, 2)])`
-/

namespace A013796.P8977238813749003144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(12 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)⌉

end

end A013796.P8977238813749003144

/-! ## A013796.P4394054490545316305

`record[12^abs(Δ[xor(1, n²)])]`
-/

namespace A013796.P4394054490545316305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (|(f2 (n + 1) : ℤ) - (f2 n : ℤ)| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013796.P4394054490545316305

/-! ## A013796.P7691393050130263861

`record[12^(lcm(2, n+1)-1)]`
-/

namespace A013796.P7691393050130263861
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013796.P7691393050130263861

/-! ## A013796.P147921165613994138

`record[gcd(12, n%2)^Δ[n²]]`
-/

namespace A013796.P147921165613994138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 12 (n % 2) : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013796.P147921165613994138

/-!
# A013797: 

The programs for A013797, there is no canonical definition to state claims against.
-/

/-! ## A013797.P2002151432034318061

`record[12^xor(3, n)]`
-/

namespace A013797.P2002151432034318061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013797.P2002151432034318061

/-! ## A013797.P14247824293046884636

`12^(4*n+3)`
-/

namespace A013797.P14247824293046884636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ (4 * n + 3)

end

end A013797.P14247824293046884636

/-! ## A013797.P13499846013773958707

`A013717(Δ[n²])`
-/

namespace A013797.P13499846013773958707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013717 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013797.P13499846013773958707

/-! ## A013797.P14396898956828936919

`12*A013717(n)²`
-/

namespace A013797.P14396898956828936919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A013717 n ^ 2

end

end A013797.P14396898956828936919

/-! ## A013797.P5905818771151651751

`record[12^A004444(n)]`
-/

namespace A013797.P5905818771151651751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 : ℚ) ^ (A004444 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013797.P5905818771151651751

/-!
# A013798: 

The programs for A013798, there is no canonical definition to state claims against.
-/

/-! ## A013798.P9287555168473603511

`13^(4*n+1)`
-/

namespace A013798.P9287555168473603511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (4 * n + 1)

end

end A013798.P9287555168473603511

/-! ## A013798.P6008755257158451920

`record[13^(lcm(2, n+1)-1)]`
-/

namespace A013798.P6008755257158451920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ ((Nat.lcm 2 (n + 1) : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013798.P6008755257158451920

/-! ## A013798.P15198680534136556233

`record[13^xor(n, 1-n%4)]`
-/

namespace A013798.P15198680534136556233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (Int.xor (n : ℤ) (1 - ((n % 4 : ℕ) : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013798.P15198680534136556233

/-! ## A013798.P12636750021214056051

`record[13^Δ[-(n*(-1)^n)]]`
-/

namespace A013798.P12636750021214056051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013798.P12636750021214056051

/-! ## A013798.P11188283438464175165

`or(5, 13^(or(2, 8*n)/2))`
-/

namespace A013798.P11188283438464175165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 (SequenceMachineLib.roundAway ((13 : ℝ) ^ ((Nat.lor 2 (8 * n) : ℚ) / 2 : ℝ)))

end

end A013798.P11188283438464175165

/-!
# A013799: 

The programs for A013799, there is no canonical definition to state claims against.
-/

/-! ## A013799.P6024960853586573418

`record[13^xor(3, n)]`
-/

namespace A013799.P6024960853586573418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013799.P6024960853586573418

/-! ## A013799.P13219528837435663398

`13^(4*n+3)`
-/

namespace A013799.P13219528837435663398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 ^ (4 * n + 3)

end

end A013799.P13219528837435663398

/-! ## A013799.P616841249005834507

`A013718(Δ[n²])`
-/

namespace A013799.P616841249005834507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013718 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A013799.P616841249005834507

/-! ## A013799.P14900454934842719420

`13*A013718(n)²`
-/

namespace A013799.P14900454934842719420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A013718 n ^ 2

end

end A013799.P14900454934842719420

/-! ## A013799.P11780994667666527465

`record[13^A263313(n)]`
-/

namespace A013799.P11780994667666527465
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A263313 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A013799.P11780994667666527465

