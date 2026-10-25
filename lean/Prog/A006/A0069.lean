import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A006901: Number of caskets of order n.

The programs for A006901, there is no canonical definition to state claims against.
-/

/-! ## A006901.P1501785562265086867

`A078374(A000032(n))+A062811(n+1)`
-/

namespace A006901.P1501785562265086867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (A000032 n).toNat + A062811 (n + 1)

end

end A006901.P1501785562265086867

/-! ## A006901.P3894283858770134963

`A063985(A184643(n+1))+A000110(n)`
-/

namespace A006901.P3894283858770134963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (A184643 (n + 1)).toNat + A000110 n

end

end A006901.P3894283858770134963

/-! ## A006901.P8865063499342330613

`Δ[A062108(2*A091352(n))]`
-/

namespace A006901.P8865063499342330613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (2 * A091352 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006901.P8865063499342330613

/-!
# A006902: a(n) = (2n)! * Sum_{k=0..n} (-1)^k * binomial(n,k) / (n+k)!.

The programs for A006902, there is no canonical definition to state claims against.
-/

/-! ## A006902.P3910748013757609672

`A000680(n)-A267532(n)`
-/

namespace A006902.P3910748013757609672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n - A267532 n

end

end A006902.P3910748013757609672

/-! ## A006902.P3916412930624139454

`A267480(∑[n]+n)`
-/

namespace A006902.P3916412930624139454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267480 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006902.P3916412930624139454

/-! ## A006902.P12588212441984562613

`A047909(A212342(n+1))`
-/

namespace A006902.P12588212441984562613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A212342 (n + 1)).toNat

end

end A006902.P12588212441984562613

/-! ## A006902.P1426759372500378874

`A047909(A347553(n+3))`
-/

namespace A006902.P1426759372500378874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047909 (A347553 (n + 3)).toNat

end

end A006902.P1426759372500378874

/-! ## A006902.P14957793073424955067

`or(1, A267480(A000096(n)))`
-/

namespace A006902.P14957793073424955067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267480 (A000096 n).toNat)

end

end A006902.P14957793073424955067

/-!
# A006903: Number of triangle-free trivalent (or cubic) graphs with 2n labeled nodes.

The programs for A006903, there is no canonical definition to state claims against.
-/

/-! ## A006903.P11592471373601847793

`A241510(∑[1-n]²+n)`
-/

namespace A006903.P11592471373601847793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241510 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + (n : ℤ)).toNat

end

end A006903.P11592471373601847793

/-!
# A006904: a(n) = a(n-1) + 2*a(n-2) + (-1)^n.

The programs for A006904, the canonical program `A006904.P11625610808601622019` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006904 has offset 4).

The definition of A006904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+(-1)^n` (program `A006904.P11625610808601622019`, by `A006904.P11625610808601622019.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006904.P18087185101078572011

`3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A006904.P18087185101078572011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  3 * a (n - 2) + 2 * a (n - 3)

end

end A006904.P18087185101078572011

namespace A006904

/-- `3*a(n-2)+2*a(n-3)` -/
def P18087185101078572011.Spec : Prop :=
  ∀ n, (P18087185101078572011.a n : ℤ) = A006904 (n + 4)

end A006904

/-! ## A006904.P11625610808601622019

`a(n-1)+2*a(n-2)+(-1)^n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006904

/-- `a(n-1)+2*a(n-2)+(-1)^n` -/
def P11625610808601622019.Spec : Prop :=
  ∀ n, P11625610808601622019.a n = A006904 (n + 4)

theorem P11625610808601622019.correct : P11625610808601622019.Spec := by
  intro n
  simp only [A006904, Nat.add_sub_cancel]

end A006904

/-! ## A006904.P3158695158064391519

`a(n-1)+2*a(n-2)+(-1)^(n+4)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A006904.P3158695158064391519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + (-1) ^ (n + 4)

end

end A006904.P3158695158064391519

namespace A006904

/-- `a(n-1)+2*a(n-2)+(-1)^(n+4)` -/
def P3158695158064391519.Spec : Prop :=
  ∀ n, P3158695158064391519.a n = A006904 (n + 4)

theorem P3158695158064391519.correct : P3158695158064391519.Spec := by
  intro n
  simp only [A006904, Nat.add_sub_cancel, A006904.P3158695158064391519.a, A006904.P11625610808601622019.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006904

/-! ## A006904.P17179516455646097975

`1/9*(7*2^n+(-1)^n*(3*n+2))`
-/

namespace A006904.P17179516455646097975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * ((7 * 2 ^ n : ℤ) + (-1) ^ n * (3 * n + 2 : ℤ) : ℚ)

end

end A006904.P17179516455646097975

namespace A006904

/-- `1/9*(7*2^n+(-1)^n*(3*n+2))` -/
def P17179516455646097975.Spec : Prop :=
  ∀ n, P17179516455646097975.a n = (A006904 (n + 4) : ℚ)

theorem P17179516455646097975.correct : P17179516455646097975.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A006904, Nat.add_sub_cancel, A006904.P17179516455646097975.a, A006904.P11625610808601622019.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A006904, Nat.add_sub_cancel, A006904.P17179516455646097975.a, A006904.P11625610808601622019.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A006904

/-! ## A006904.P5806255526809181897

`ogf((1+x+x^2)/(1-3x^2-2x^3))`
-/

namespace A006904.P5806255526809181897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, 0, -3, -2] n

end

end A006904.P5806255526809181897

namespace A006904

/-- `ogf((1+x+x^2)/(1-3x^2-2x^3))` -/
def P5806255526809181897.Spec : Prop :=
  ∀ n, P5806255526809181897.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P13338665542138192568

`2*a(n-1)+n*(-1)^n` with `a(0)=1`
-/

namespace A006904.P13338665542138192568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n : ℤ) * (-1) ^ n

end

end A006904.P13338665542138192568

namespace A006904

/-- `2*a(n-1)+n*(-1)^n` -/
def P13338665542138192568.Spec : Prop :=
  ∀ n, P13338665542138192568.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P1538764749087462299

`2*(a(n-1)-n*n%2)+n` with `a(0)=1`
-/

namespace A006904.P1538764749087462299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ((n * (n % 2) : ℕ) : ℤ)) + (n : ℤ)

end

end A006904.P1538764749087462299

namespace A006904

/-- `2*(a(n-1)-n*n%2)+n` -/
def P1538764749087462299.Spec : Prop :=
  ∀ n, P1538764749087462299.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P10156482539018202546

`a(n-1)+a(n-1)+n/(-1)^n` with `a(0)=1`
-/

namespace A006904.P10156482539018202546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (n : ℚ) / ((-1) ^ n : ℚ))

end

end A006904.P10156482539018202546

namespace A006904

/-- `a(n-1)+a(n-1)+n/(-1)^n` -/
def P10156482539018202546.Spec : Prop :=
  ∀ n, P10156482539018202546.a n = (A006904 (n + 4) : ℚ)

end A006904

/-! ## A006904.P7530117226184455992

`∑[2^(n-1)-a(n-1)]+2^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A006904.P7530117226184455992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A006904.P7530117226184455992

namespace A006904

/-- `∑[2^(n-1)-a(n-1)]+2^(n-1)-a(n-1)` -/
def P7530117226184455992.Spec : Prop :=
  ∀ n, P7530117226184455992.a n = (A006904 (n + 4) : ℚ)

end A006904

/-! ## A006904.P12872597773398640845

`(1-n)²+A140991(n)`
-/

namespace A006904.P12872597773398640845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + A140991 n

end

end A006904.P12872597773398640845

namespace A006904

/-- `(1-n)²+A140991(n)` -/
def P12872597773398640845.Spec : Prop :=
  ∀ n, P12872597773398640845.a n = A006904 (n + 4)

theorem P12872597773398640845.correct : P12872597773398640845.Spec := by
  intro n
  simp only [A006904, Nat.add_sub_cancel, A006904.P12872597773398640845.a, A006904.P11625610808601622019.a, A140991, A140991.P67649880405592751.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006904

/-! ## A006904.P7800225248883613557

`A274922(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A006904.P7800225248883613557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A274922 n + 2 * a (n - 1)

end

end A006904.P7800225248883613557

namespace A006904

/-- `A274922(n)+2*a(n-1)` -/
def P7800225248883613557.Spec : Prop :=
  ∀ n, P7800225248883613557.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P13896596220438595488

`A001045(n+1)+2^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A006904.P13896596220438595488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001045 (n + 1) : ℚ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A006904.P13896596220438595488

namespace A006904

/-- `A001045(n+1)+2^(n-1)-a(n-1)` -/
def P13896596220438595488.Spec : Prop :=
  ∀ n, P13896596220438595488.a n = (A006904 (n + 4) : ℚ)

end A006904

/-! ## A006904.P6417843483925367414

`A053088(n)+A001045(n)`
-/

namespace A006904.P6417843483925367414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 n + A001045 n

end

end A006904.P6417843483925367414

namespace A006904

/-- `A053088(n)+A001045(n)` -/
def P6417843483925367414.Spec : Prop :=
  ∀ n, P6417843483925367414.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P13471897439322193502

`A014551(n)-A113954(n)`
-/

namespace A006904.P13471897439322193502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n - A113954 n

end

end A006904.P13471897439322193502

namespace A006904

/-- `A014551(n)-A113954(n)` -/
def P13471897439322193502.Spec : Prop :=
  ∀ n, P13471897439322193502.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P6991028754717689060

`A113954(n+1)+A078008(n)`
-/

namespace A006904.P6991028754717689060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113954 (n + 1) + A078008 n

end

end A006904.P6991028754717689060

namespace A006904

/-- `A113954(n+1)+A078008(n)` -/
def P6991028754717689060.Spec : Prop :=
  ∀ n, P6991028754717689060.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P8619832662003815807

`A172285(n+1)-A078008(n)`
-/

namespace A006904.P8619832662003815807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172285 (n + 1) - A078008 n

end

end A006904.P8619832662003815807

namespace A006904

/-- `A172285(n+1)-A078008(n)` -/
def P8619832662003815807.Spec : Prop :=
  ∀ n, P8619832662003815807.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P5063130334268452308

`∑[A095342(n+1)-A131577(n)]`
-/

namespace A006904.P5063130334268452308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095342 (n + 1) - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006904.P5063130334268452308

namespace A006904

/-- `∑[A095342(n+1)-A131577(n)]` -/
def P5063130334268452308.Spec : Prop :=
  ∀ n, P5063130334268452308.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P4196925666910741931

`A001045(n+1)+ceil(A011782(n)-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A006904.P4196925666910741931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001045 (n + 1) + (A011782 n - a (n - 1))

end

end A006904.P4196925666910741931

namespace A006904

/-- `A001045(n+1)+ceil(A011782(n)-a(n-1))` -/
def P4196925666910741931.Spec : Prop :=
  ∀ n, P4196925666910741931.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P14025811555295189803

`A000079(n)+A001045(n)-A172285(n)`
-/

namespace A006904.P14025811555295189803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A001045 n - A172285 n)

end

end A006904.P14025811555295189803

namespace A006904

/-- `A000079(n)+A001045(n)-A172285(n)` -/
def P14025811555295189803.Spec : Prop :=
  ∀ n, P14025811555295189803.a n = A006904 (n + 4)

end A006904

/-! ## A006904.P8538539919651460833

`A053088(n+1)+A053088(n)-A172285(n)`
-/

namespace A006904.P8538539919651460833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053088 (n + 1) + (A053088 n - A172285 n)

end

end A006904.P8538539919651460833

namespace A006904

/-- `A053088(n+1)+A053088(n)-A172285(n)` -/
def P8538539919651460833.Spec : Prop :=
  ∀ n, P8538539919651460833.a n = A006904 (n + 4)

end A006904

/-!
# A006905: Number of transitive relations on n labeled nodes.

The programs for A006905, there is no canonical definition to state claims against.
-/

/-! ## A006905.P17942766097983686719

`A348151(n)+a(n-1)` with `a(0)=1`
-/

namespace A006905.P17942766097983686719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348151 n + a (n - 1)

end

end A006905.P17942766097983686719

/-! ## A006905.P18001212004328661918

`∑[A348151(A028310(n))]`
-/

namespace A006905.P18001212004328661918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348151 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006905.P18001212004328661918

/-! ## A006905.P3263696924273904322

`A394405(n)+A000798(n)`
-/

namespace A006905.P3263696924273904322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394405 n + A000798 n

end

end A006905.P3263696924273904322

/-! ## A006905.P8079798198567576942

`A395256(n)+A001035(n)`
-/

namespace A006905.P8079798198567576942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395256 n + A001035 n

end

end A006905.P8079798198567576942

/-! ## A006905.P12294800222831705653

`∑[A348151(A000007(n)+n)]`
-/

namespace A006905.P12294800222831705653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348151 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006905.P12294800222831705653

/-!
# A006906: a(n) is the sum of products of terms in all partitions of n.

The programs for A006906, there is no canonical definition to state claims against.
-/

/-! ## A006906.P10835272579018831627

`∑[A317912(n)]`
-/

namespace A006906.P10835272579018831627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006906.P10835272579018831627

/-! ## A006906.P12082426121561109491

`∑{d}[A028310(n), A300277(#)]`
-/

namespace A006906.P12082426121561109491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300277 d

end

end A006906.P12082426121561109491

/-! ## A006906.P853745899924754952

`∑{d}[A274922(n), A300277(#)]`
-/

namespace A006906.P853745899924754952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300277 d

end

end A006906.P853745899924754952

/-! ## A006906.P11330235627451273177

`∑{d}[A065033(2*n), A300277(#)]`
-/

namespace A006906.P11330235627451273177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300277 d

end

end A006906.P11330235627451273177

/-! ## A006906.P2735019439301815153

`A000007(n)+∑{d}[n, A300277(#)]`
-/

namespace A006906.P2735019439301815153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ d ∈ Nat.divisors (f1 n), A300277 d

end

end A006906.P2735019439301815153

/-! ## A006906.P13471272957011206068

`abs(Δ[A302830(abs(1-n))])`
-/

namespace A006906.P13471272957011206068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302830 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A006906.P13471272957011206068

/-! ## A006906.P8535223762114655723

`A302830(n+1)-(A317912(n+1)+A302830(n))`
-/

namespace A006906.P8535223762114655723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302830 (n + 1) - (A317912 (n + 1) + A302830 n)

end

end A006906.P8535223762114655723

/-! ## A006906.P5669322238019005095

`A297328(∑[n+2]-1)`
-/

namespace A006906.P5669322238019005095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A006906.P5669322238019005095

/-! ## A006906.P14747784008108953955

`A294589(∑[n]+n)`
-/

namespace A006906.P14747784008108953955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006906.P14747784008108953955

/-! ## A006906.P1158579454558688669

`A292193(∑[n+2]-1)`
-/

namespace A006906.P1158579454558688669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A006906.P1158579454558688669

/-!
# A006907: Number of zeros in character table of symmetric group S_n.

The programs for A006907, there is no canonical definition to state claims against.
-/

/-! ## A006907.P2836557916353361309

`Δ[A259399(n)]-A006908(n+1)`
-/

namespace A006907.P2836557916353361309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006908 (n + 1)

end

end A006907.P2836557916353361309

/-! ## A006907.P3190222161959554132

`A001255(n+1)-A006908(n+1)`
-/

namespace A006907.P3190222161959554132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A006908 (n + 1)

end

end A006907.P3190222161959554132

/-! ## A006907.P16182821401011703968

`Δ[A000070(n)]²-A006908(n+1)`
-/

namespace A006907.P16182821401011703968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A006908 (n + 1)

end

end A006907.P16182821401011703968

/-! ## A006907.P5865066849562223737

`record[A035363(n)²]-A006908(n+1)`
-/

namespace A006907.P5865066849562223737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006908 (n + 1)

end

end A006907.P5865066849562223737

/-! ## A006907.P4286967242648901113

`record[A035444(n)²]-A006908(n+1)`
-/

namespace A006907.P4286967242648901113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006908 (n + 1)

end

end A006907.P4286967242648901113

/-!
# A006908: Number of nonzero elements in the character table of the symmetric group S_n.

The programs for A006908, there is no canonical definition to state claims against.
-/

/-! ## A006908.P11764924537041401836

`Δ[A259399(n)]-A006907(n+1)`
-/

namespace A006908.P11764924537041401836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006907 (n + 1)

end

end A006908.P11764924537041401836

/-! ## A006908.P15328522268008463577

`A051748(n+1)+A051749(n+1)`
-/

namespace A006908.P15328522268008463577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051748 (n + 1) + A051749 (n + 1)

end

end A006908.P15328522268008463577

/-! ## A006908.P2310689494827183527

`A001255(n+1)-A006907(n+1)`
-/

namespace A006908.P2310689494827183527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A006907 (n + 1)

end

end A006908.P2310689494827183527

/-! ## A006908.P10343969212564186051

`Δ[A000070(n)]²-A006907(n+1)`
-/

namespace A006908.P10343969212564186051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A006907 (n + 1)

end

end A006908.P10343969212564186051

/-! ## A006908.P18126318957565556792

`record[A035363(n)²]-A006907(n+1)`
-/

namespace A006908.P18126318957565556792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006907 (n + 1)

end

end A006908.P18126318957565556792

/-!
# A006918: a(n) = binomial(n+3, 3)/4 for odd n, n*(n+2)*(n+4)/24 for even n.

The programs for A006918, the canonical program `A006918.P7522747384058061838` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006918 has offset 0).

The definition of A006918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006918.P7522747384058061838

`(n+2)*(2*n*(n+4)-3*(-1)^n+3)/48`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006918

/-- `(n+2)*(2*n*(n+4)-3*(-1)^n+3)/48` -/
def P7522747384058061838.Spec : Prop :=
  ∀ n, P7522747384058061838.a n = (A006918 n : ℚ)

end A006918

/-! ## A006918.P9181648634395944898

`2/(n-1)*a(n-1)+(n+3)/(n-1)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A006918.P9181648634395944898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 / ((n : ℤ) - 1 : ℚ) * a (n - 1) + (n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 2)

end

end A006918.P9181648634395944898

namespace A006918

/-- `2/(n-1)*a(n-1)+(n+3)/(n-1)*a(n-2)` -/
def P9181648634395944898.Spec : Prop :=
  ∀ n, P9181648634395944898.a n = (A006918 n : ℚ)

end A006918

/-! ## A006918.P1154379670270412393

`∑[∑[∑[n]%(n+1)]]`
-/

namespace A006918.P1154379670270412393
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P1154379670270412393

namespace A006918

/-- `∑[∑[∑[n]%(n+1)]]` -/
def P1154379670270412393.Spec : Prop :=
  ∀ n, (P1154379670270412393.a n : ℤ) = A006918 n

end A006918

/-! ## A006918.P4243126329071554990

`∑[C(ceil(n/2)+1, 2)]`
-/

namespace A006918.P4243126329071554990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌈(n : ℚ) / 2⌉ + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P4243126329071554990

namespace A006918

/-- `∑[C(ceil(n/2)+1, 2)]` -/
def P4243126329071554990.Spec : Prop :=
  ∀ n, (P4243126329071554990.a n : ℤ) = A006918 n

end A006918

/-! ## A006918.P12108299252825401534

`∪[∑[∑[2*n]], ∑[n²]]`
-/

namespace A006918.P12108299252825401534
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A006918.P12108299252825401534

namespace A006918

/-- `∪[∑[∑[2*n]], ∑[n²]]` -/
def P12108299252825401534.Spec : Prop :=
  ∀ n, (P12108299252825401534.a n : ℤ) = A006918 n

end A006918

/-! ## A006918.P7660266204756791553

`∑[∑[n%2*∑[n%2]]]`
-/

namespace A006918.P7660266204756791553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P7660266204756791553

namespace A006918

/-- `∑[∑[n%2*∑[n%2]]]` -/
def P7660266204756791553.Spec : Prop :=
  ∀ n, (P7660266204756791553.a n : ℤ) = A006918 n

end A006918

/-! ## A006918.P16180106023770658988

`∑[∑[(n+1)*and(1, n)/2]]`
-/

namespace A006918.P16180106023770658988
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.land 1 n : ℚ) / 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P16180106023770658988

namespace A006918

/-- `∑[∑[(n+1)*and(1, n)/2]]` -/
def P16180106023770658988.Spec : Prop :=
  ∀ n, P16180106023770658988.a n = (A006918 n : ℚ)

end A006918

/-! ## A006918.P15966450041718510812

`∑[∑[n+1-gcd(n+1, ∑[n])]]`
-/

namespace A006918.P15966450041718510812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P15966450041718510812

namespace A006918

/-- `∑[∑[n+1-gcd(n+1, ∑[n])]]` -/
def P15966450041718510812.Spec : Prop :=
  ∀ n, P15966450041718510812.a n = A006918 n

end A006918

/-! ## A006918.P8052238553640023207

`∑[∑[n+1-lcm(2, n+1)/2]]`
-/

namespace A006918.P8052238553640023207
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P8052238553640023207

namespace A006918

/-- `∑[∑[n+1-lcm(2, n+1)/2]]` -/
def P8052238553640023207.Spec : Prop :=
  ∀ n, P8052238553640023207.a n = (A006918 n : ℚ)

end A006918

/-! ## A006918.P6185932439795257822

`floor(a(n-2)+(∑[n]/n)²)` with `a(0)=0, a(1)=1`
-/

namespace A006918.P6185932439795257822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)) ^ 2⌋

end

end A006918.P6185932439795257822

namespace A006918

/-- `floor(a(n-2)+(∑[n]/n)²)` -/
def P6185932439795257822.Spec : Prop :=
  ∀ n, P6185932439795257822.a n = A006918 n

end A006918

/-! ## A006918.P12863385419902724082

`∑[floor(a(n-2)+∑[n]/n)]` with `a(0)=0, a(1)=1`
-/

namespace A006918.P12863385419902724082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ⌊(f1 (n - 2) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P12863385419902724082

namespace A006918

/-- `∑[floor(a(n-2)+∑[n]/n)]` -/
def P12863385419902724082.Spec : Prop :=
  ∀ n, P12863385419902724082.a n = A006918 n

end A006918

/-! ## A006918.P12461723848774195665

`∑[floor((∑[n]/n)²-a(n-1))]` with `a(0)=0`
-/

namespace A006918.P12461723848774195665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n : ℚ)) ^ 2 - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P12461723848774195665

namespace A006918

/-- `∑[floor((∑[n]/n)²-a(n-1))]` -/
def P12461723848774195665.Spec : Prop :=
  ∀ n, P12461723848774195665.a n = A006918 n

end A006918

/-! ## A006918.P18385063670888752241

`∑[∑[floor(∑[n]/n-a(n-1))]]` with `a(0)=0`
-/

namespace A006918.P18385063670888752241
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ⌊((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ) / (n : ℚ) - (f2 (n - 1) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P18385063670888752241

namespace A006918

/-- `∑[∑[floor(∑[n]/n-a(n-1))]]` -/
def P18385063670888752241.Spec : Prop :=
  ∀ n, P18385063670888752241.a n = A006918 n

end A006918

/-! ## A006918.P15618844028656522387

`floor(((n+1)/2)²)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A006918.P15618844028656522387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((n + 1 : ℚ) / 2) ^ 2⌋ + a (n - 2)

end

end A006918.P15618844028656522387

namespace A006918

/-- `floor(((n+1)/2)²)+a(n-2)` -/
def P15618844028656522387.Spec : Prop :=
  ∀ n, P15618844028656522387.a n = A006918 n

end A006918

/-! ## A006918.P338699488948127110

`a(n-1)+C(floor((n+3)/2), 2)` with `a(0)=0`
-/

namespace A006918.P338699488948127110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.choose ⌊(n + 3 : ℚ) / 2⌋.toNat 2

end

end A006918.P338699488948127110

namespace A006918

/-- `a(n-1)+C(floor((n+3)/2), 2)` -/
def P338699488948127110.Spec : Prop :=
  ∀ n, (P338699488948127110.a n : ℤ) = A006918 n

end A006918

/-! ## A006918.P12119089215222101046

`∑[∑[n-a(n-1)]-a(n-1)]` with `a(0)=0`
-/

namespace A006918.P12119089215222101046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P12119089215222101046

namespace A006918

/-- `∑[∑[n-a(n-1)]-a(n-1)]` -/
def P12119089215222101046.Spec : Prop :=
  ∀ n, P12119089215222101046.a n = A006918 n

end A006918

/-! ## A006918.P955949218075230000

`a(n-2)+floor((n+1)*(n+1)/4)` with `a(0)=0, a(1)=1`
-/

namespace A006918.P955949218075230000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + ⌊(n + 1 : ℚ) * ((n + 1 : ℚ) / 4)⌋

end

end A006918.P955949218075230000

namespace A006918

/-- `a(n-2)+floor((n+1)*(n+1)/4)` -/
def P955949218075230000.Spec : Prop :=
  ∀ n, P955949218075230000.a n = A006918 n

end A006918

/-! ## A006918.P884420816799752384

`(n+1)^3-A213481(n)`
-/

namespace A006918.P884420816799752384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - A213481 n

end

end A006918.P884420816799752384

namespace A006918

/-- `(n+1)^3-A213481(n)` -/
def P884420816799752384.Spec : Prop :=
  ∀ n, P884420816799752384.a n = A006918 n

end A006918

/-! ## A006918.P11625809560820726043

`∑[A165157(n+1)-(n+1)]`
-/

namespace A006918.P11625809560820726043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165157 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006918.P11625809560820726043

namespace A006918

/-- `∑[A165157(n+1)-(n+1)]` -/
def P11625809560820726043.Spec : Prop :=
  ∀ n, P11625809560820726043.a n = A006918 n

end A006918

/-! ## A006918.P2722017822593086883

`A001752(n)-A005994(n)`
-/

namespace A006918.P2722017822593086883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - A005994 n

end

end A006918.P2722017822593086883

namespace A006918

/-- `A001752(n)-A005994(n)` -/
def P2722017822593086883.Spec : Prop :=
  ∀ n, P2722017822593086883.a n = A006918 n

end A006918

/-!
# A006919: Write down all the prime divisors in previous term.

The programs for A006919, there is no canonical definition to state claims against.
-/

/-! ## A006919.P13232940194498251652

`A331603(A077168(n)+10)`
-/

namespace A006919.P13232940194498251652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331603 (A077168 n + 10).toNat

end

end A006919.P13232940194498251652

/-!
# A006920: At each step, record how many 1's, 2's, etc. have been seen so far in the sequence.

The programs for A006920, there is no canonical definition to state claims against.
-/

/-! ## A006920.P16790278227896346090

`A090323(A007463(n))`
-/

namespace A006920.P16790278227896346090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090323 (A007463 n).toNat

end

end A006920.P16790278227896346090

/-! ## A006920.P15561674966108282530

`A324058(A307770(n))-n`
-/

namespace A006920.P15561674966108282530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324058 (A307770 n).toNat - (n : ℤ)

end

end A006920.P15561674966108282530

/-!
# A006921: Diagonals of Pascal's triangle mod 2 interpreted as binary numbers.

The programs for A006921, the canonical program `A006921.P6812524187001863654` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006921 has offset 0).

The definition of A006921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006921.P6812524187001863654

`xor((2-n%2)*a(n-1), a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006921

/-- `xor((2-n%2)*a(n-1), a(n-2))` -/
def P6812524187001863654.Spec : Prop :=
  ∀ n, P6812524187001863654.a n = A006921 n

theorem P6812524187001863654.correct : P6812524187001863654.Spec := by
  intro n
  simp only [A006921]

end A006921

/-! ## A006921.P6478374507483907388

`xor(a(n-1)+a(n-2)-a(n-2)%a(n-1), a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A006921.P6478374507483907388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (a (n - 1) + (a (n - 2) - Int.tmod (a (n - 2)) (a (n - 1)))) (a (n - 2))

end

end A006921.P6478374507483907388

namespace A006921

/-- `xor(a(n-1)+a(n-2)-a(n-2)%a(n-1), a(n-2))` -/
def P6478374507483907388.Spec : Prop :=
  ∀ n, P6478374507483907388.a n = A006921 n

end A006921

/-! ## A006921.P9314455370154797204

`∑[A257971(abs(1-n))]-1`
-/

namespace A006921.P9314455370154797204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257971 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006921.P9314455370154797204

namespace A006921

/-- `∑[A257971(abs(1-n))]-1` -/
def P9314455370154797204.Spec : Prop :=
  ∀ n, P9314455370154797204.a n = A006921 n

end A006921

/-! ## A006921.P995795196528380540

`A257971(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A006921.P995795196528380540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257971 (n - 1) + a (n - 1)

end

end A006921.P995795196528380540

namespace A006921

/-- `A257971(n-1)+a(n-1)` -/
def P995795196528380540.Spec : Prop :=
  ∀ n, P995795196528380540.a n = A006921 n

end A006921

/-! ## A006921.P1740740544196904645

`∑[A257971(n)]+1-A257971(n)`
-/

namespace A006921.P1740740544196904645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A257971 n

end

end A006921.P1740740544196904645

namespace A006921

/-- `∑[A257971(n)]+1-A257971(n)` -/
def P1740740544196904645.Spec : Prop :=
  ∀ n, P1740740544196904645.a n = A006921 n

end A006921

/-!
# A006922: Expansion of 1/eta(q)^24; Fourier coefficients of T_{14}.

The programs for A006922, there is no canonical definition to state claims against.
-/

/-! ## A006922.P13949260642359169705

`A144064(eq[25, A193739(n)])`
-/

namespace A006922.P13949260642359169705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006922.P13949260642359169705

/-! ## A006922.P16194949561228464358

`A144064(eq[49, A099375(n)])`
-/

namespace A006922.P16194949561228464358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006922.P16194949561228464358

/-! ## A006922.P5110037222563599794

`A144064(eq[25, A004736(n+1)])`
-/

namespace A006922.P5110037222563599794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006922.P5110037222563599794

/-!
# A006923: Number of connected trivalent graphs with 2n nodes and with girth exactly 3.

The programs for A006923, there is no canonical definition to state claims against.
-/

/-! ## A006923.P7717796010359222566

`A002851(n)-A014371(n)`
-/

namespace A006923.P7717796010359222566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n - A014371 n

end

end A006923.P7717796010359222566

/-! ## A006923.P2522323115095701494

`A185133(n)-A185033(n)`
-/

namespace A006923.P2522323115095701494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185133 n - A185033 n

end

end A006923.P2522323115095701494

/-! ## A006923.P3727575181627889494

`A321304(n²)-A014371(n)`
-/

namespace A006923.P3727575181627889494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321304 (n ^ 2) - A014371 n

end

end A006923.P3727575181627889494

/-! ## A006923.P695188292249233705

`A002851(n)-(A014372(n)+A006924(n))`
-/

namespace A006923.P695188292249233705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n - (A014372 n + A006924 n)

end

end A006923.P695188292249233705

/-! ## A006923.P10042097287748448261

`A005638(n)-(A165653(n)+A014371(n))`
-/

namespace A006923.P10042097287748448261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A165653 n + A014371 n)

end

end A006923.P10042097287748448261

/-!
# A006924: Number of connected trivalent graphs with 2n nodes and girth exactly 4.

The programs for A006924, there is no canonical definition to state claims against.
-/

/-! ## A006924.P18156120993885028864

`A014371(n)-A014372(n)`
-/

namespace A006924.P18156120993885028864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 n - A014372 n

end

end A006924.P18156120993885028864

/-! ## A006924.P2393460960892806982

`A185134(n)-A185034(n)`
-/

namespace A006924.P2393460960892806982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185134 n - A185034 n

end

end A006924.P2393460960892806982

/-! ## A006924.P8632924885387810730

`A002851(n)-(A014372(n)+A006923(n))`
-/

namespace A006924.P8632924885387810730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002851 n - (A014372 n + A006923 n)

end

end A006924.P8632924885387810730

/-! ## A006924.P12959577537956767699

`A014371(n)-(A014374(n)+A006925(n))`
-/

namespace A006924.P12959577537956767699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 n - (A014374 n + A006925 n)

end

end A006924.P12959577537956767699

/-! ## A006924.P11941399467437385764

`A014371(n)+A185235(n)-A185335(n)`
-/

namespace A006924.P11941399467437385764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 n + (A185235 n - A185335 n)

end

end A006924.P11941399467437385764

/-!
# A006925: Number of connected trivalent graphs with 2n nodes and girth exactly 5.

The programs for A006925, there is no canonical definition to state claims against.
-/

/-! ## A006925.P2530581155469437859

`A014372(n)-A014374(n)`
-/

namespace A006925.P2530581155469437859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014372 n - A014374 n

end

end A006925.P2530581155469437859

/-! ## A006925.P9967000075737168047

`A185135(n)-A185035(n)`
-/

namespace A006925.P9967000075737168047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185135 n - A185035 n

end

end A006925.P9967000075737168047

/-! ## A006925.P5268125626309303042

`A014371(n)-(A014374(n)+A006924(n))`
-/

namespace A006925.P5268125626309303042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014371 n - (A014374 n + A006924 n)

end

end A006925.P5268125626309303042

/-! ## A006925.P3909665693869702993

`A014372(n)-(A014375(n)+A006926(n))`
-/

namespace A006925.P3909665693869702993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014372 n - (A014375 n + A006926 n)

end

end A006925.P3909665693869702993

/-! ## A006925.P2832925921667719916

`A014372(n)+A185036(n)-A185336(n)`
-/

namespace A006925.P2832925921667719916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014372 n + (A185036 n - A185336 n)

end

end A006925.P2832925921667719916

/-!
# A006926: Number of connected trivalent graphs with 2n nodes and girth exactly 6.

The programs for A006926, there is no canonical definition to state claims against.
-/

/-! ## A006926.P8880056191637180102

`A014374(n)-A014375(n)`
-/

namespace A006926.P8880056191637180102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n - A014375 n

end

end A006926.P8880056191637180102

/-! ## A006926.P13806875733142900607

`A185136(n)-A185036(n)`
-/

namespace A006926.P13806875733142900607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185136 n - A185036 n

end

end A006926.P13806875733142900607

/-! ## A006926.P5083376004315680469

`A185136(n)-A185236(n)`
-/

namespace A006926.P5083376004315680469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185136 n - A185236 n

end

end A006926.P5083376004315680469

/-! ## A006926.P5814521877534689876

`A014374(n)-(A014376(n)+A006927(n))`
-/

namespace A006926.P5814521877534689876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n - (A014376 n + A006927 n)

end

end A006926.P5814521877534689876

/-! ## A006926.P7989965221828218098

`A014374(n)-(A260813(n)+A006927(n))`
-/

namespace A006926.P7989965221828218098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014374 n - (A260813 n + A006927 n)

end

end A006926.P7989965221828218098

/-!
# A006927: Number of connected trivalent graphs with 2n nodes and girth exactly 7.

The programs for A006927, there is no canonical definition to state claims against.
-/

/-! ## A006927.P2368638928327215938

`A014375(n)-A014376(n)`
-/

namespace A006927.P2368638928327215938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014375 n - A014376 n

end

end A006927.P2368638928327215938

/-! ## A006927.P13621160737632640341

`A186747(2*n)`
-/

namespace A006927.P13621160737632640341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (2 * n)

end

end A006927.P13621160737632640341

/-! ## A006927.P8627694942591127818

`A186747(record[and(n, n+1)])+char[21]`
-/

namespace A006927.P8627694942591127818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006927.P8627694942591127818

/-! ## A006927.P3285883855873292477

`A198317(2*n)-A026800(2*n)`
-/

namespace A006927.P3285883855873292477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (2 * n) - A026800 (2 * n)

end

end A006927.P3285883855873292477

/-! ## A006927.P149969212518150615

`A186727(2*n)-A186728(2*n)`
-/

namespace A006927.P149969212518150615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186727 (2 * n) - A186728 (2 * n)

end

end A006927.P149969212518150615

/-!
# A006928: a(n) = length of (n+1)st run, with initial terms 1, 2.

The programs for A006928, the canonical program `A006928.P15318589882780258543` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006928 has offset 1).

The definition of A006928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006928.P18325389853082241349

`3-A049710(n+1)`
-/

namespace A006928.P18325389853082241349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049710 (n + 1)

end

end A006928.P18325389853082241349

namespace A006928

/-- `3-A049710(n+1)` -/
def P18325389853082241349.Spec : Prop :=
  ∀ n, P18325389853082241349.a n = A006928 (n + 1)

theorem P18325389853082241349.correct : P18325389853082241349.Spec := by
  intro n
  simp only [A006928, Nat.add_sub_cancel, A006928.P18325389853082241349.a, A006928.P15318589882780258543.a, A000002, A000002.P13330532946811820297.a, A049710, A049710.P6790608665925512686.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A006928

/-! ## A006928.P4833826168135003357

`A078880(abs(1-n)+2)`
-/

namespace A006928.P4833826168135003357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (|1 - (n : ℤ)| + 2).toNat

end

end A006928.P4833826168135003357

namespace A006928

/-- `A078880(abs(1-n)+2)` -/
def P4833826168135003357.Spec : Prop :=
  ∀ n, P4833826168135003357.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P15318589882780258543

`A000002(abs(1-n)+3)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A006928

/-- `A000002(abs(1-n)+3)` -/
def P15318589882780258543.Spec : Prop :=
  ∀ n, P15318589882780258543.a n = A006928 (n + 1)

theorem P15318589882780258543.correct : P15318589882780258543.Spec := by
  intro n
  simp only [A006928, Nat.add_sub_cancel]

end A006928

/-! ## A006928.P12404469071654583230

`a(A088569(n+1))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A006928.P12404469071654583230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (A088569 (n + 1)).toNat

end

end A006928.P12404469071654583230

namespace A006928

/-- `a(A088569(n+1))` -/
def P12404469071654583230.Spec : Prop :=
  ∀ n, (P12404469071654583230.a n : ℤ) = A006928 (n + 1)

end A006928

/-! ## A006928.P157147851605067928

`a(log2(A078880(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A006928.P157147851605067928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A078880 (n + 1) : ℝ))).toNat

end

end A006928.P157147851605067928

namespace A006928

/-- `a(log2(A078880(n+1)))` -/
def P157147851605067928.Spec : Prop :=
  ∀ n, (P157147851605067928.a n : ℤ) = A006928 (n + 1)

end A006928

/-! ## A006928.P16792812010862098355

`a(log2(A000002(n+2)))` with `a(0)=1, a(1)=2`
-/

namespace A006928.P16792812010862098355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A000002 (n + 2) : ℝ))).toNat

end

end A006928.P16792812010862098355

namespace A006928

/-- `a(log2(A000002(n+2)))` -/
def P16792812010862098355.Spec : Prop :=
  ∀ n, (P16792812010862098355.a n : ℤ) = A006928 (n + 1)

end A006928

/-! ## A006928.P5221722646148998460

`a(∑[A054354(n+1)])` with `a(0)=1, a(1)=2`
-/

namespace A006928.P5221722646148998460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006928.P5221722646148998460

namespace A006928

/-- `a(∑[A054354(n+1)])` -/
def P5221722646148998460.Spec : Prop :=
  ∀ n, (P5221722646148998460.a n : ℤ) = A006928 (n + 1)

end A006928

/-! ## A006928.P2596086681685858593

`2-char[A022297(n+1)-1]`
-/

namespace A006928.P2596086681685858593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A006928.P2596086681685858593

namespace A006928

/-- `2-char[A022297(n+1)-1]` -/
def P2596086681685858593.Spec : Prop :=
  ∀ n, P2596086681685858593.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P3433625835480654862

`∑[char[1]+Δ[A000002(n+1)]]`
-/

namespace A006928.P3433625835480654862
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006928.P3433625835480654862

namespace A006928

/-- `∑[char[1]+Δ[A000002(n+1)]]` -/
def P3433625835480654862.Spec : Prop :=
  ∀ n, P3433625835480654862.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P14921568955887296196

`A333229(n+1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A006928.P14921568955887296196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A333229 (n + 1) - a (n - 1)

end

end A006928.P14921568955887296196

namespace A006928

/-- `A333229(n+1)-a(n-1)` -/
def P14921568955887296196.Spec : Prop :=
  ∀ n, P14921568955887296196.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P5080821306280486921

`A157686(n+1)+A057427(n)`
-/

namespace A006928.P5080821306280486921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1) + A057427 n

end

end A006928.P5080821306280486921

namespace A006928

/-- `A157686(n+1)+A057427(n)` -/
def P5080821306280486921.Spec : Prop :=
  ∀ n, P5080821306280486921.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P11742333237064876344

`A078880(n+1)-A000007(n)`
-/

namespace A006928.P11742333237064876344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1) - A000007 n

end

end A006928.P11742333237064876344

namespace A006928

/-- `A078880(n+1)-A000007(n)` -/
def P11742333237064876344.Spec : Prop :=
  ∀ n, P11742333237064876344.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P2081427445958308489

`A157686(n+1)-A057428(n)`
-/

namespace A006928.P2081427445958308489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1) - A057428 n

end

end A006928.P2081427445958308489

namespace A006928

/-- `A157686(n+1)-A057428(n)` -/
def P2081427445958308489.Spec : Prop :=
  ∀ n, P2081427445958308489.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P9668989879071478827

`A000002(n+2)-A000007(n)`
-/

namespace A006928.P9668989879071478827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 2) - A000007 n

end

end A006928.P9668989879071478827

namespace A006928

/-- `A000002(n+2)-A000007(n)` -/
def P9668989879071478827.Spec : Prop :=
  ∀ n, P9668989879071478827.a n = A006928 (n + 1)

end A006928

/-! ## A006928.P16547982687445884179

`A078880(n+1)/A054977(n)`
-/

namespace A006928.P16547982687445884179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078880 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A006928.P16547982687445884179

namespace A006928

/-- `A078880(n+1)/A054977(n)` -/
def P16547982687445884179.Spec : Prop :=
  ∀ n, P16547982687445884179.a n = (A006928 (n + 1) : ℚ)

end A006928

/-! ## A006928.P8298650534509303612

`gcd(A000156(n), A078880(n+1))`
-/

namespace A006928.P8298650534509303612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000156 n) (A078880 (n + 1))

end

end A006928.P8298650534509303612

namespace A006928

/-- `gcd(A000156(n), A078880(n+1))` -/
def P8298650534509303612.Spec : Prop :=
  ∀ n, (P8298650534509303612.a n : ℤ) = A006928 (n + 1)

end A006928

/-!
# A006930: Binomial transform of rooted tree numbers.

The programs for A006930, there is no canonical definition to state claims against.
-/

/-! ## A006930.P7980370056456209597

`∑[A191398(A289207(∏{e}[7^n, #+n]+1))]`
-/

namespace A006930.P7980370056456209597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191398 (A289207 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + n) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006930.P7980370056456209597

/-! ## A006930.P13413327131292570430

`A154958(A007482(n))+A099483(n)`
-/

namespace A006930.P13413327131292570430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A007482 n).toNat + A099483 n

end

end A006930.P13413327131292570430

/-! ## A006930.P6484601400701113526

`A353481(A032316(n))+A261588(n+1)`
-/

namespace A006930.P6484601400701113526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A032316 n).toNat + A261588 (n + 1)

end

end A006930.P6484601400701113526

/-! ## A006930.P11889802781873231181

`A261588(n+1)+A186034(A261569(2*n+1))`
-/

namespace A006930.P11889802781873231181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261588 (n + 1) + A186034 (A261569 (2 * n + 1)).toNat

end

end A006930.P11889802781873231181

/-!
# A006931: Least Carmichael number with n prime factors, or 0 if no such number exists.

The programs for A006931, there is no canonical definition to state claims against.
-/

/-! ## A006931.P7577846379341076268

`A294179(n+3)`
-/

namespace A006931.P7577846379341076268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294179 (n + 3)

end

end A006931.P7577846379341076268

/-! ## A006931.P16938256679226134154

`A002997(A135719(n+3))`
-/

namespace A006931.P16938256679226134154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (A135719 (n + 3)).toNat

end

end A006931.P16938256679226134154

/-!
# A006932: Number of permutations of [n] with at least one strong fixed point (a permutation p of {1,2,...,n} is said to have j as a strong fixed point if p(k) < j for k < j and p(k) > j for k > j).

The programs for A006932, there is no canonical definition to state claims against.
-/

/-! ## A006932.P13090109134551420375

`(n+1)!-A052186(n+1)`
-/

namespace A006932.P13090109134551420375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A052186 (n + 1)

end

end A006932.P13090109134551420375

/-! ## A006932.P8722654953965036753

`record[A047922(n)]-A052186(n+1)`
-/

namespace A006932.P8722654953965036753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A052186 (n + 1)

end

end A006932.P8722654953965036753

/-! ## A006932.P5343581608059938808

`A000142(n+1)-A052186(n+1)`
-/

namespace A006932.P5343581608059938808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A052186 (n + 1)

end

end A006932.P5343581608059938808

/-! ## A006932.P6294253859348692862

`A052186(n+1)-A201684(n+1)`
-/

namespace A006932.P6294253859348692862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052186 (n + 1) - A201684 (n + 1)

end

end A006932.P6294253859348692862

/-! ## A006932.P3605029141447433168

`record[A047917(n+1)]-A052186(n+1)`
-/

namespace A006932.P3605029141447433168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A052186 (n + 1)

end

end A006932.P3605029141447433168

/-! ## A006932.P9837092957537066606

`A000142(n+1)-A145878(A000217(n+1))`
-/

namespace A006932.P9837092957537066606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A145878 (A000217 (n + 1)).toNat

end

end A006932.P9837092957537066606

/-! ## A006932.P9681089539621144104

`A166350(A000217(n+1))-A052186(n+1)`
-/

namespace A006932.P9681089539621144104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A000217 (n + 1)).toNat - A052186 (n + 1)

end

end A006932.P9681089539621144104

/-! ## A006932.P17256188648591616951

`A000142(n+1)+A052186(n+1)*A057428(n+1)`
-/

namespace A006932.P17256188648591616951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + A052186 (n + 1) * A057428 (n + 1)

end

end A006932.P17256188648591616951

/-! ## A006932.P16204532075079299902

`A081123(A005843(n+1))-A145878(A000217(n+1))`
-/

namespace A006932.P16204532075079299902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (A005843 (n + 1)).toNat - A145878 (A000217 (n + 1)).toNat

end

end A006932.P16204532075079299902

/-!
# A006933: 'Eban' numbers (the letter 'e' is banned!).

The programs for A006933, there is no canonical definition to state claims against.
-/

/-! ## A006933.P8780457240494313650

`A073835(A073789(2*(n+1))^A360540(2*n+1))`
-/

namespace A006933.P8780457240494313650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (SequenceMachineLib.roundAway ((A073789 (2 * (n + 1)) : ℚ) ^ (A360540 (2 * n + 1) : ℤ))).toNat

end

end A006933.P8780457240494313650

/-! ## A006933.P5924252644144985281

`∑[A361058(A193337(2*n+3))+2]`
-/

namespace A006933.P5924252644144985281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361058 (A193337 (2 * n + 3)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006933.P5924252644144985281

/-! ## A006933.P6571243184351031792

`A073835(A073789(2*(n+1))^A317145(n+1))`
-/

namespace A006933.P6571243184351031792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (SequenceMachineLib.roundAway ((A073789 (2 * (n + 1)) : ℚ) ^ (A317145 (n + 1) : ℤ))).toNat

end

end A006933.P6571243184351031792

/-!
# A006935: Even pseudoprimes (or primes) to base 2: even numbers k that divide 2^k - 2.

The programs for A006935, there is no canonical definition to state claims against.
-/

/-! ## A006935.P5087644636851645727

`2*A347906(n+1)`
-/

namespace A006935.P5087644636851645727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347906 (n + 1)

end

end A006935.P5087644636851645727

/-! ## A006935.P51286954300581791

`A347906(A000027(n+1))+A347906(n+1)`
-/

namespace A006935.P51286954300581791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347906 (A000027 (n + 1)).toNat + A347906 (n + 1)

end

end A006935.P51286954300581791

/-! ## A006935.P6474590952022860754

`2/A347906(n+1)^A081729(A143988(n+1))`
-/

namespace A006935.P6474590952022860754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A347906 (n + 1) : ℚ) ^ (A081729 (A143988 (n + 1)).toNat : ℤ)

end

end A006935.P6474590952022860754

/-! ## A006935.P18371834044470218878

`A347906(A005843(n+1)-(n+1))+A347906(n+1)`
-/

namespace A006935.P18371834044470218878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347906 (A005843 (n + 1) - (n + 1 : ℤ)).toNat + A347906 (n + 1)

end

end A006935.P18371834044470218878

/-! ## A006935.P15594089835124070926

`A347906(n+1)+or(A075743(n+1), A347906(n+1))`
-/

namespace A006935.P15594089835124070926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347906 (n + 1) + Int.lor (A075743 (n + 1)) (A347906 (n + 1))

end

end A006935.P15594089835124070926

/-! ## A006935.P1587327460844842787

`A347906(n+1)+A347906(n+1)%A347906(n+2)`
-/

namespace A006935.P1587327460844842787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347906 (n + 1) + Int.tmod (A347906 (n + 1)) (A347906 (n + 2))

end

end A006935.P1587327460844842787

/-!
# A006936: Moebius transform of numbers of preferential arrangements.

The programs for A006936, there is no canonical definition to state claims against.
-/

/-! ## A006936.P13048671690104407277

`A110655(xor(A073478(n), A344326(n+1)))`
-/

namespace A006936.P13048671690104407277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (Int.xor (A073478 n) (A344326 (n + 1))).toNat

end

end A006936.P13048671690104407277

/-!
# A006939: Chernoff sequence: a(n) = Product_{k=1..n} prime(k)^(n-k+1).

The programs for A006939, there is no canonical definition to state claims against.
-/

/-! ## A006939.P16094657027346865931

`∏[∏[eq[n, ∏{d}[n, #]]]]`
-/

namespace A006939.P16094657027346865931
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f5 n), d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006939.P16094657027346865931

/-! ## A006939.P14003961195814170919

`∏[∏[lt[∏{d}[n, #], n+1]]]`
-/

namespace A006939.P14003961195814170919
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006939.P14003961195814170919

/-! ## A006939.P11188573058683155996

`∏[∏[lt[∑{e}[n+1, #], 2]+1]]`
-/

namespace A006939.P11188573058683155996
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f5 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006939.P11188573058683155996

/-! ## A006939.P1709876968809426548

`∏[∏[p?[n-(-1)^n]]/p?[n-(-1)^n]]`
-/

namespace A006939.P1709876968809426548
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (f4 (SequenceMachineLib.nth (fun j => (f4 j).toNat.Prime) n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A006939.P1709876968809426548

/-! ## A006939.P9997565488819147920

`A332644(∑[n])`
-/

namespace A006939.P9997565488819147920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332644 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006939.P9997565488819147920

/-!
# A006940: Rows of Pascal's triangle mod 3.

The programs for A006940, there is no canonical definition to state claims against.
-/

/-! ## A006940.P7589923617805727193

`A140267(A117977(n))`
-/

namespace A006940.P7589923617805727193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140267 (A117977 n).toNat

end

end A006940.P7589923617805727193

/-! ## A006940.P2586515104542431393

`A007089(A173019(n))`
-/

namespace A006940.P2586515104542431393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A173019 n).toNat

end

end A006940.P2586515104542431393

/-! ## A006940.P15363801753535971421

`A305877(3*A173019(n))`
-/

namespace A006940.P15363801753535971421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (3 * A173019 n).toNat

end

end A006940.P15363801753535971421

/-! ## A006940.P15664367331522158408

`A305877(lcm(3, A173019(n)))`
-/

namespace A006940.P15664367331522158408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (Int.lcm 3 (A173019 n))

end

end A006940.P15664367331522158408

/-!
# A006942: Number of segments used to represent n on calculator display, variant 5: digits '6', '7' and '9' use 6, 3 and 6 segments, respectively.

The programs for A006942, there is no canonical definition to state claims against.
-/

/-! ## A006942.P5713577195924146901

`A277116(n)+A102683(n)`
-/

namespace A006942.P5713577195924146901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A102683 n

end

end A006942.P5713577195924146901

/-! ## A006942.P924245528332255687

`A010371(n)-A102679(n)+A102681(n)`
-/

namespace A006942.P924245528332255687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102679 n + A102681 n

end

end A006942.P924245528332255687

/-! ## A006942.P2811459551458034408

`A010371(n)-A316868(n)`
-/

namespace A006942.P2811459551458034408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A316868 n

end

end A006942.P2811459551458034408

/-! ## A006942.P10603154981811148494

`∑{digits}[n, A000120(A071843(#))]`
-/

namespace A006942.P10603154981811148494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000120 (A071843 x).toNat).sum

end

end A006942.P10603154981811148494

/-! ## A006942.P15528521871558574020

`A102681(A222250(n))+A063720(n)`
-/

namespace A006942.P15528521871558574020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A222250 n).toNat + A063720 n

end

end A006942.P15528521871558574020

/-! ## A006942.P4523566078443509314

`A277116(n)+A102671(A064770(n))`
-/

namespace A006942.P4523566078443509314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A102671 (A064770 n).toNat

end

end A006942.P4523566078443509314

/-! ## A006942.P16644392374749253511

`A277116(n)+A102681(A107128(n))`
-/

namespace A006942.P16644392374749253511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A102681 (A107128 n).toNat

end

end A006942.P16644392374749253511

/-! ## A006942.P15134547601866184123

`A277116(n)+A102681(A235049(n))`
-/

namespace A006942.P15134547601866184123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A102681 (A235049 n).toNat

end

end A006942.P15134547601866184123

/-! ## A006942.P5230389704823825352

`A316867(A222251(n))+A277116(n)`
-/

namespace A006942.P5230389704823825352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A222251 n).toNat + A277116 n

end

end A006942.P5230389704823825352

/-! ## A006942.P7467119217252775128

`A316868(A222253(n))+A277116(n)`
-/

namespace A006942.P7467119217252775128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A222253 n).toNat + A277116 n

end

end A006942.P7467119217252775128

/-! ## A006942.P14849723010585546416

`A316869(A222254(n))+A277116(n)`
-/

namespace A006942.P14849723010585546416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A222254 n).toNat + A277116 n

end

end A006942.P14849723010585546416

/-! ## A006942.P10484872692235831138

`A010371(n)-A102683(A222253(n))`
-/

namespace A006942.P10484872692235831138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A102683 (A222253 n).toNat

end

end A006942.P10484872692235831138

/-! ## A006942.P7271710109948061234

`A010371(n)-A316864(A055120(n))`
-/

namespace A006942.P7271710109948061234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A316864 (A055120 n).toNat

end

end A006942.P7271710109948061234

/-! ## A006942.P10020718212695653839

`A010371(n)-A336396(A051801(n))`
-/

namespace A006942.P10020718212695653839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A336396 (A051801 n).toNat

end

end A006942.P10020718212695653839

/-! ## A006942.P9801848454378638155

`A010371(n)-A316864(A107130(n))`
-/

namespace A006942.P9801848454378638155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A316864 (A107130 n).toNat

end

end A006942.P9801848454378638155

/-! ## A006942.P10034212092807883463

`A010371(n)-A316867(A235049(n))`
-/

namespace A006942.P10034212092807883463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A316867 (A235049 n).toNat

end

end A006942.P10034212092807883463

/-! ## A006942.P4223038817144896844

`A010371(n)+A277116(n)-A074458(n)`
-/

namespace A006942.P4223038817144896844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n + (A277116 n - A074458 n)

end

end A006942.P4223038817144896844

/-! ## A006942.P1304443552455933323

`A010371(n)-A100910(A017353(n))`
-/

namespace A006942.P1304443552455933323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n - A100910 (A017353 n).toNat

end

end A006942.P1304443552455933323

/-! ## A006942.P8671651026575858663

`A277116(n)+A055641(A216556(n))`
-/

namespace A006942.P8671651026575858663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277116 n + A055641 (A216556 n).toNat

end

end A006942.P8671651026575858663

/-!
# A006943: Rows of Sierpiński's triangle (Pascal's triangle mod 2).

The programs for A006943, the canonical program `A006943.P8024193354474742621` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006943 has offset 0).

The definition of A006943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006943.P8024193354474742621

`2*a(and(n, n-1))+9*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006943

/-- `2*a(and(n, n-1))+9*a(n-1)` -/
def P8024193354474742621.Spec : Prop :=
  ∀ n, (P8024193354474742621.a n : ℤ) = A006943 n

theorem P8024193354474742621.correct : P8024193354474742621.Spec := by
  intro n
  simp only [A006943]

end A006943

/-! ## A006943.P5485989183205615765

`A100681(2*n)/A100681(n)`
-/

namespace A006943.P5485989183205615765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100681 (2 * n) : ℚ) / (A100681 n : ℚ)

end

end A006943.P5485989183205615765

namespace A006943

/-- `A100681(2*n)/A100681(n)` -/
def P5485989183205615765.Spec : Prop :=
  ∀ n, P5485989183205615765.a n = (A006943 n : ℚ)

end A006943

/-! ## A006943.P15329758027671058069

`∏{p}[A001317(n), A007088(#)]`
-/

namespace A006943.P15329758027671058069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007088 p

end

end A006943.P15329758027671058069

namespace A006943

/-- `∏{p}[A001317(n), A007088(#)]` -/
def P15329758027671058069.Spec : Prop :=
  ∀ n, P15329758027671058069.a n = A006943 n

end A006943

/-! ## A006943.P19719274008280060

`∏{p}[A004729(n), A007088(#)]`
-/

namespace A006943.P19719274008280060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007088 p

end

end A006943.P19719274008280060

namespace A006943

/-- `∏{p}[A004729(n), A007088(#)]` -/
def P19719274008280060.Spec : Prop :=
  ∀ n, P19719274008280060.a n = A006943 n

end A006943

/-! ## A006943.P673704657452200213

`∏{p}[A053576(n), A007088(#)]`
-/

namespace A006943.P673704657452200213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007088 p

end

end A006943.P673704657452200213

namespace A006943

/-- `∏{p}[A053576(n), A007088(#)]` -/
def P673704657452200213.Spec : Prop :=
  ∀ n, P673704657452200213.a n = A006943 n

end A006943

/-!
# A006945: Smallest odd composite number that requires n Miller-Rabin primality tests.

The programs for A006945, there is no canonical definition to state claims against.
-/

/-! ## A006945.P4402376071818055053

`A089825(∑[floor(n/3)+1])`
-/

namespace A006945.P4402376071818055053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089825 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006945.P4402376071818055053

/-! ## A006945.P1730644314684976130

`A089825(A279984(n+1))+A089813(2*n+1)`
-/

namespace A006945.P1730644314684976130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089825 (A279984 (n + 1)).toNat + A089813 (2 * n + 1)

end

end A006945.P1730644314684976130

/-!
# A006946: Independence number of de Bruijn graph of order n on two symbols.

The programs for A006946, there is no canonical definition to state claims against.
-/

/-! ## A006946.P16277802408311935046

`A071112(A369578(n+1))`
-/

namespace A006946.P16277802408311935046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071112 (A369578 (n + 1)).toNat

end

end A006946.P16277802408311935046

/-! ## A006946.P7317543783725339057

`A225635(A050762(n+1))+∑[A282892(n)]`
-/

namespace A006946.P7317543783725339057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225635 (A050762 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006946.P7317543783725339057

/-! ## A006946.P15322635782512308739

`A100795(A150454(n))`
-/

namespace A006946.P15322635782512308739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (A150454 n).toNat

end

end A006946.P15322635782512308739

/-! ## A006946.P3832404105571838168

`A194287(A150261(n))`
-/

namespace A006946.P3832404105571838168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A150261 n).toNat

end

end A006946.P3832404105571838168

/-!
# A006947: Two-rowed truncated monotone triangles.

The programs for A006947, there is no canonical definition to state claims against.
-/

/-! ## A006947.P10372756566238842183

`A000037(A144180(n))`
-/

namespace A006947.P10372756566238842183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A144180 n).toNat

end

end A006947.P10372756566238842183

/-!
# A006948: Number of zero-entropy permutations of length n.

The programs for A006948, there is no canonical definition to state claims against.
-/

/-! ## A006948.P6073413242189551630

`∑[A322744(A148833(n))]`
-/

namespace A006948.P6073413242189551630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (A148833 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006948.P6073413242189551630

/-! ## A006948.P6460492841742494594

`A071840(A005560(n+3))`
-/

namespace A006948.P6460492841742494594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071840 (A005560 (n + 3)).toNat

end

end A006948.P6460492841742494594

/-! ## A006948.P1250919539505323115

`A049455(A007583(n))+A047653(n)`
-/

namespace A006948.P1250919539505323115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (A007583 n).toNat + A047653 n

end

end A006948.P1250919539505323115

/-!
# A006949: A well-behaved cousin of the Hofstadter sequence: a(n) = a(n - 1 - a(n-1)) + a(n - 2 - a(n-2)) for n > 2 with a(0) = a(1) = a(2) = 1.

The programs for A006949, the canonical program `A006949.P10212982050792340407` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006949 has offset 0).

The definition of A006949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-2-a(n-2))` (program `A006949.P10212982050792340407`, by `A006949.P10212982050792340407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A006949.P10212982050792340407

`a(n-1-a(n-1))+a(n-2-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006949

/-- `a(n-1-a(n-1))+a(n-2-a(n-2))` -/
def P10212982050792340407.Spec : Prop :=
  ∀ n, (P10212982050792340407.a n : ℤ) = A006949 n

theorem P10212982050792340407.correct : P10212982050792340407.Spec := by
  intro n
  simp only [A006949]

end A006949

/-! ## A006949.P11620204122588789566

`∑[char[A233272(2*n)-1]]`
-/

namespace A006949.P11620204122588789566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 (2 * n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006949.P11620204122588789566

namespace A006949

/-- `∑[char[A233272(2*n)-1]]` -/
def P11620204122588789566.Spec : Prop :=
  ∀ n, (P11620204122588789566.a n : ℤ) = A006949 n

end A006949

/-! ## A006949.P15695840930545110049

`A120522(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A006949.P15695840930545110049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A120522 n + a (n - 1)

end

end A006949.P15695840930545110049

namespace A006949

/-- `A120522(n)+a(n-1)` -/
def P15695840930545110049.Spec : Prop :=
  ∀ n, P15695840930545110049.a n = A006949 n

end A006949

/-! ## A006949.P7505914890546931427

`∑[char[A057716(A005187(n))]]`
-/

namespace A006949.P7505914890546931427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (A005187 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006949.P7505914890546931427

namespace A006949

/-- `∑[char[A057716(A005187(n))]]` -/
def P7505914890546931427.Spec : Prop :=
  ∀ n, (P7505914890546931427.a n : ℤ) = A006949 n

end A006949

/-! ## A006949.P13374806398110088040

`A046699(n+2-A070939(n))`
-/

namespace A006949.P13374806398110088040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 ((n + 2 : ℤ) - A070939 n).toNat

end

end A006949.P13374806398110088040

namespace A006949

/-- `A046699(n+2-A070939(n))` -/
def P13374806398110088040.Spec : Prop :=
  ∀ n, P13374806398110088040.a n = A006949 n

end A006949

/-! ## A006949.P12811850685294965818

`A244479(abs(1-n))+A244479(n)`
-/

namespace A006949.P12811850685294965818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 |1 - (n : ℤ)|.toNat + A244479 n

end

end A006949.P12811850685294965818

namespace A006949

/-- `A244479(abs(1-n))+A244479(n)` -/
def P12811850685294965818.Spec : Prop :=
  ∀ n, P12811850685294965818.a n = A006949 n

end A006949

/-! ## A006949.P14763091645405186332

`A046699(A103354(n+2))`
-/

namespace A006949.P14763091645405186332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A103354 (n + 2)).toNat

end

end A006949.P14763091645405186332

namespace A006949

/-- `A046699(A103354(n+2))` -/
def P14763091645405186332.Spec : Prop :=
  ∀ n, P14763091645405186332.a n = A006949 n

end A006949

/-! ## A006949.P436939162758037318

`A244479(2*a(n-1)+n+1)` with `a(0)=1`
-/

namespace A006949.P436939162758037318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244479 (2 * a (n - 1) + (n + 1 : ℤ)).toNat

end

end A006949.P436939162758037318

namespace A006949

/-- `A244479(2*a(n-1)+n+1)` -/
def P436939162758037318.Spec : Prop :=
  ∀ n, P436939162758037318.a n = A006949 n

end A006949

/-! ## A006949.P13137295862244681443

`A244479(a(n-1)+a(n-1)+n+1)` with `a(0)=1`
-/

namespace A006949.P13137295862244681443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244479 (a (n - 1) + (a (n - 1) + (n + 1 : ℤ))).toNat

end

end A006949.P13137295862244681443

namespace A006949

/-- `A244479(a(n-1)+a(n-1)+n+1)` -/
def P13137295862244681443.Spec : Prop :=
  ∀ n, P13137295862244681443.a n = A006949 n

end A006949

/-! ## A006949.P11333727238991088900

`A244479(eq[A244479(n+2), A244479(n)])`
-/

namespace A006949.P11333727238991088900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006949.P11333727238991088900

namespace A006949

/-- `A244479(eq[A244479(n+2), A244479(n)])` -/
def P11333727238991088900.Spec : Prop :=
  ∀ n, P11333727238991088900.a n = A006949 n

end A006949

/-! ## A006949.P13535471276977252590

`A046699(A247983(n+1))`
-/

namespace A006949.P13535471276977252590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A247983 (n + 1)).toNat

end

end A006949.P13535471276977252590

namespace A006949

/-- `A046699(A247983(n+1))` -/
def P13535471276977252590.Spec : Prop :=
  ∀ n, P13535471276977252590.a n = A006949 n

end A006949

/-!
# A006950: G.f.: Product_{k>=1} (1 + x^(2*k - 1)) / (1 - x^(2*k)).

The programs for A006950, there is no canonical definition to state claims against.
-/

/-! ## A006950.P1524119910409870144

`abs(A106507(n))`
-/

namespace A006950.P1524119910409870144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106507 n|

end

end A006950.P1524119910409870144

/-! ## A006950.P12109976393190919873

`A033999(n)*A106507(n)`
-/

namespace A006950.P12109976393190919873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A106507 n

end

end A006950.P12109976393190919873

/-! ## A006950.P3949774621869215224

`gcd(A000038(n), A106507(n))`
-/

namespace A006950.P3949774621869215224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A106507 n)

end

end A006950.P3949774621869215224

/-! ## A006950.P17109511761513943659

`lcm(A020985(n), A106507(n))`
-/

namespace A006950.P17109511761513943659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A106507 n)

end

end A006950.P17109511761513943659

/-! ## A006950.P15865349994351523714

`A062157(n+1)*A106507(n)`
-/

namespace A006950.P15865349994351523714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A106507 n

end

end A006950.P15865349994351523714

/-! ## A006950.P12201342063959771155

`(1-2*A000035(n))*A106507(n)`
-/

namespace A006950.P12201342063959771155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A106507 n

end

end A006950.P12201342063959771155

/-! ## A006950.P7015294200588818959

`A106507(n)/A057077(A057077(n)+n)`
-/

namespace A006950.P7015294200588818959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106507 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A006950.P7015294200588818959

/-! ## A006950.P1786745508475497584

`lcm(A008836(n+1)*A106507(n), A008836(n+1))`
-/

namespace A006950.P1786745508475497584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1) * A106507 n) (A008836 (n + 1))

end

end A006950.P1786745508475497584

/-! ## A006950.P18359528234931004707

`A340621(n)+A340623(n)+A340622(n)`
-/

namespace A006950.P18359528234931004707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340621 n + (A340623 n + A340622 n)

end

end A006950.P18359528234931004707

/-! ## A006950.P10875892304710311343

`A106507(n)/A273225(n)*A274621(n)`
-/

namespace A006950.P10875892304710311343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106507 n : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

end

end A006950.P10875892304710311343

/-! ## A006950.P11689482432787055372

`A057077(2*n)*A106507(n)`
-/

namespace A006950.P11689482432787055372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A106507 n

end

end A006950.P11689482432787055372

/-! ## A006950.P14748090244328718641

`A106507(n)/A057077(A005408(n))`
-/

namespace A006950.P14748090244328718641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106507 n : ℚ) / (A057077 (A005408 n).toNat : ℚ)

end

end A006950.P14748090244328718641

/-! ## A006950.P4592343280831570633

`abs(A339416(n)-A339417(n))`
-/

namespace A006950.P4592343280831570633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A339416 n - A339417 n|

end

end A006950.P4592343280831570633

/-! ## A006950.P3729582492070716619

`A106507(n)*A197870(A000217(n))`
-/

namespace A006950.P3729582492070716619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106507 n * A197870 (A000217 n).toNat

end

end A006950.P3729582492070716619

/-! ## A006950.P12551230916263489532

`abs(A286950(∑[n+3]))`
-/

namespace A006950.P12551230916263489532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A286950 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A006950.P12551230916263489532

/-! ## A006950.P2919262545547740126

`A106507(n)/A057077(A002522(n))`
-/

namespace A006950.P2919262545547740126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106507 n : ℚ) / (A057077 (A002522 n).toNat : ℚ)

end

end A006950.P2919262545547740126

/-! ## A006950.P6458543879969840779

`(A339416(n)-A339417(n))*A057077(A002522(n))`
-/

namespace A006950.P6458543879969840779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339416 n - A339417 n) * A057077 (A002522 n).toNat

end

end A006950.P6458543879969840779

/-!
# A006951: Number of conjugacy classes in GL(n,2).

The programs for A006951, there is no canonical definition to state claims against.
-/

/-! ## A006951.P10965170442881606682

`2^n-A264687(n)`
-/

namespace A006951.P10965170442881606682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A264687 n

end

end A006951.P10965170442881606682

/-! ## A006951.P18145824165678233808

`A218698(∑[n])`
-/

namespace A006951.P18145824165678233808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006951.P18145824165678233808

/-! ## A006951.P9444230517091712838

`A218698(A000217(n))%A002203(n)`
-/

namespace A006951.P9444230517091712838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218698 (A000217 n).toNat) (A002203 n)

end

end A006951.P9444230517091712838

/-! ## A006951.P2949792252957495227

`gcd(A000038(n), A218698(A000217(n)))`
-/

namespace A006951.P2949792252957495227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A218698 (A000217 n).toNat)

end

end A006951.P2949792252957495227

/-! ## A006951.P6920876907222306869

`or(A000007(n), A218698(A000217(n)))`
-/

namespace A006951.P6920876907222306869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A218698 (A000217 n).toNat)

end

end A006951.P6920876907222306869

/-! ## A006951.P13305748422872191172

`or(A131577(n), A218698(A000217(n)))`
-/

namespace A006951.P13305748422872191172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131577 n) (A218698 (A000217 n).toNat)

end

end A006951.P13305748422872191172

/-! ## A006951.P5059716853144756913

`A319753(∑[n+3])`
-/

namespace A006951.P5059716853144756913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006951.P5059716853144756913

/-!
# A006952: Number of conjugacy classes in GL(n,3).

The programs for A006952, there is no canonical definition to state claims against.
-/

/-! ## A006952.P2770556632414737246

`3^n-A304082(n)`
-/

namespace A006952.P2770556632414737246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A304082 n

end

end A006952.P2770556632414737246

/-! ## A006952.P3491100944118229639

`abs(A000244(n)-A304082(n))`
-/

namespace A006952.P3491100944118229639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A304082 n|

end

end A006952.P3491100944118229639

/-! ## A006952.P1921362003599311836

`or(A000244(n)-A304082(n), A000007(n))`
-/

namespace A006952.P1921362003599311836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000244 n - A304082 n) (A000007 n)

end

end A006952.P1921362003599311836

/-! ## A006952.P14770784393243088714

`(A000244(n)-A304082(n))*char[A004442(n)]`
-/

namespace A006952.P14770784393243088714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A304082 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A006952.P14770784393243088714

/-! ## A006952.P10992881628940547694

`C(A001222(n+1), 12)+A000244(n)-A304082(n)`
-/

namespace A006952.P10992881628940547694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001222 (n + 1)).toNat 12 : ℤ) + (A000244 n - A304082 n)

end

end A006952.P10992881628940547694

/-! ## A006952.P11493295174198117119

`A035695(A136019(n+1))+A000244(n)-A304082(n)`
-/

namespace A006952.P11493295174198117119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035695 (A136019 (n + 1)).toNat + (A000244 n - A304082 n)

end

end A006952.P11493295174198117119

/-! ## A006952.P8473214495334318075

`(A000244(n)-A304082(n))*A014963(52*(n+1))`
-/

namespace A006952.P8473214495334318075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A304082 n) * A014963 (52 * (n + 1))

end

end A006952.P8473214495334318075

/-! ## A006952.P4619918294273497129

`(A000244(n)-A304082(n))%A001075(n+1)`
-/

namespace A006952.P4619918294273497129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n - A304082 n) (A001075 (n + 1))

end

end A006952.P4619918294273497129

/-! ## A006952.P5498413636706657146

`(A000244(n)-A304082(n))*A007318(∑[n+2])`
-/

namespace A006952.P5498413636706657146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000244 n - A304082 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006952.P5498413636706657146

/-! ## A006952.P2136379322975553298

`A319753(A052905(n+1)+1)`
-/

namespace A006952.P2136379322975553298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 (A052905 (n + 1) + 1).toNat

end

end A006952.P2136379322975553298

/-!
# A006953: a(n) = denominator of Bernoulli(2n)/(2n).

The programs for A006953, there is no canonical definition to state claims against.
-/

/-! ## A006953.P11547645739114091250

`A075180(Δ[n²])`
-/

namespace A006953.P11547645739114091250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006953.P11547645739114091250

/-! ## A006953.P1717805353902811492

`2*A036283(n+1)`
-/

namespace A006953.P1717805353902811492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036283 (n + 1)

end

end A006953.P1717805353902811492

/-! ## A006953.P1765354395115117004

`A185633(2*(n+1))`
-/

namespace A006953.P1765354395115117004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185633 (2 * (n + 1))

end

end A006953.P1765354395115117004

/-! ## A006953.P15720086566645625272

`A006863(n+1)/2`
-/

namespace A006953.P15720086566645625272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006863 (n + 1) : ℚ) / 2

end

end A006953.P15720086566645625272

/-! ## A006953.P329717507165904728

`A079612(2*(n+1))/2`
-/

namespace A006953.P329717507165904728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079612 (2 * (n + 1)) : ℚ) / 2

end

end A006953.P329717507165904728

/-! ## A006953.P3729755763229891494

`3*4*A202318(n+1)`
-/

namespace A006953.P3729755763229891494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A202318 (n + 1))

end

end A006953.P3729755763229891494

/-! ## A006953.P14859009745831002207

`lcm(2, A075180(2*n+1))`
-/

namespace A006953.P14859009745831002207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A075180 (2 * n + 1))

end

end A006953.P14859009745831002207

/-! ## A006953.P9448527863633598378

`ceil(A079612(n+2+n)/2)`
-/

namespace A006953.P9448527863633598378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079612 (n + 2 + n) : ℚ) / 2⌉

end

end A006953.P9448527863633598378

/-! ## A006953.P15000193336251268588

`lcm(A036283(n+1), A059161(n))`
-/

namespace A006953.P15000193336251268588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036283 (n + 1)) (A059161 n)

end

end A006953.P15000193336251268588

/-! ## A006953.P12268845561351678451

`A143407(A322315(2*(n+1)))/2`
-/

namespace A006953.P12268845561351678451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143407 (A322315 (2 * (n + 1))).toNat : ℚ) / 2

end

end A006953.P12268845561351678451

/-! ## A006953.P14897205173541045502

`A075180(2*n+1)+A000007(n+1)`
-/

namespace A006953.P14897205173541045502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (2 * n + 1) + A000007 (n + 1)

end

end A006953.P14897205173541045502

/-! ## A006953.P4944089348237795089

`A006863(n+1)-A075180(2*n+1)`
-/

namespace A006953.P4944089348237795089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006863 (n + 1) - A075180 (2 * n + 1)

end

end A006953.P4944089348237795089

/-! ## A006953.P1921921211326945782

`A002445(n+1)*A193267(2*(n+1))`
-/

namespace A006953.P1921921211326945782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 (n + 1) * A193267 (2 * (n + 1))

end

end A006953.P1921921211326945782

/-! ## A006953.P7429234675281853628

`2*A027762(n+1)*A195989(n+1)`
-/

namespace A006953.P7429234675281853628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A027762 (n + 1) * A195989 (n + 1))

end

end A006953.P7429234675281853628

/-! ## A006953.P16795473080184611958

`A079612(2*(n+1))-A075180(2*n+1)`
-/

namespace A006953.P16795473080184611958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (2 * (n + 1)) - A075180 (2 * n + 1)

end

end A006953.P16795473080184611958

/-! ## A006953.P111491773979099042

`A027760(2*(n+1))*A193267(2*(n+1))`
-/

namespace A006953.P111491773979099042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027760 (2 * (n + 1)) * A193267 (2 * (n + 1))

end

end A006953.P111491773979099042

/-! ## A006953.P1556281625954254674

`A075180(2*n+1)²/A075180(A004273(n+1))`
-/

namespace A006953.P1556281625954254674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) ^ 2 : ℚ) / (A075180 (A004273 (n + 1)).toNat : ℚ)

end

end A006953.P1556281625954254674

/-! ## A006953.P9299689709276978849

`(A002445(n+1)+A002445(n+1))*A195989(n+1)`
-/

namespace A006953.P9299689709276978849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002445 (n + 1) + A002445 (n + 1)) * A195989 (n + 1)

end

end A006953.P9299689709276978849

/-! ## A006953.P5631670457541374590

`A075180(2*n+1)²/A075180(A300330(2*n+1))`
-/

namespace A006953.P5631670457541374590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075180 (2 * n + 1) ^ 2 : ℚ) / (A075180 (A300330 (2 * n + 1)).toNat : ℚ)

end

end A006953.P5631670457541374590

/-! ## A006953.P10846024310435109694

`A164877(n+1)/A300711(n+1)`
-/

namespace A006953.P10846024310435109694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164877 (n + 1) : ℚ) / (A300711 (n + 1) : ℚ)

end

end A006953.P10846024310435109694

/-!
# A006954: Denominators of Bernoulli numbers B_0, B_1, B_2, B_4, B_6, ...

The programs for A006954, the canonical program `A006954.P4373113173166877548` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006954 has offset 0).

The definition of A006954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006954.P11750202160810043932

`A051717(record[n*and(1, n)])`
-/

namespace A006954.P11750202160810043932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A006954.P11750202160810043932

namespace A006954

/-- `A051717(record[n*and(1, n)])` -/
def P11750202160810043932.Spec : Prop :=
  ∀ n, P11750202160810043932.a n = A006954 n

end A006954

/-! ## A006954.P16139123129225392431

`A051717(eq[n, n*and(1, n)])`
-/

namespace A006954.P16139123129225392431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006954.P16139123129225392431

namespace A006954

/-- `A051717(eq[n, n*and(1, n)])` -/
def P16139123129225392431.Spec : Prop :=
  ∀ n, P16139123129225392431.a n = A006954 n

end A006954

/-! ## A006954.P17958874409501599410

`A027642(eq[n, gcd(n, n%2)])`
-/

namespace A006954.P17958874409501599410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006954.P17958874409501599410

namespace A006954

/-- `A027642(eq[n, gcd(n, n%2)])` -/
def P17958874409501599410.Spec : Prop :=
  ∀ n, P17958874409501599410.a n = A006954 n

end A006954

/-! ## A006954.P17633047875744849188

`A051717(record[and(n, (-1)^n)])`
-/

namespace A006954.P17633047875744849188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006954.P17633047875744849188

namespace A006954

/-- `A051717(record[and(n, (-1)^n)])` -/
def P17633047875744849188.Spec : Prop :=
  ∀ n, P17633047875744849188.a n = A006954 n

end A006954

/-! ## A006954.P12015495402607896095

`A141056(2*n-ceil(atan(n)))`
-/

namespace A006954.P12015495402607896095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 ((2 * n : ℤ) - ⌈Real.arctan (n : ℝ)⌉).toNat

end

end A006954.P12015495402607896095

namespace A006954

/-- `A141056(2*n-ceil(atan(n)))` -/
def P12015495402607896095.Spec : Prop :=
  ∀ n, P12015495402607896095.a n = A006954 n

end A006954

/-! ## A006954.P12050407074538051254

`A027642(floor(n-atan(n))+n)`
-/

namespace A006954.P12050407074538051254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ + (n : ℤ)).toNat

end

end A006954.P12050407074538051254

namespace A006954

/-- `A027642(floor(n-atan(n))+n)` -/
def P12050407074538051254.Spec : Prop :=
  ∀ n, P12050407074538051254.a n = A006954 n

end A006954

/-! ## A006954.P5766270234115862737

`A051717(eq[n, and(n, (-1)^n)])`
-/

namespace A006954.P5766270234115862737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006954.P5766270234115862737

namespace A006954

/-- `A051717(eq[n, and(n, (-1)^n)])` -/
def P5766270234115862737.Spec : Prop :=
  ∀ n, P5766270234115862737.a n = A006954 n

end A006954

/-! ## A006954.P13582199171285886359

`A051717(floor(n²/(n+1))+n)`
-/

namespace A006954.P13582199171285886359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat

end

end A006954.P13582199171285886359

namespace A006954

/-- `A051717(floor(n²/(n+1))+n)` -/
def P13582199171285886359.Spec : Prop :=
  ∀ n, P13582199171285886359.a n = A006954 n

end A006954

/-! ## A006954.P4373113173166877548

`A176591(2*n+1-3%(n+2))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A006954

/-- `A176591(2*n+1-3%(n+2))` -/
def P4373113173166877548.Spec : Prop :=
  ∀ n, P4373113173166877548.a n = A006954 n

theorem P4373113173166877548.correct : P4373113173166877548.Spec := by
  intro n
  simp only [A006954]

end A006954

/-! ## A006954.P7285373223307481152

`A027642(A004275(n))`
-/

namespace A006954.P7285373223307481152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A004275 n).toNat

end

end A006954.P7285373223307481152

namespace A006954

/-- `A027642(A004275(n))` -/
def P7285373223307481152.Spec : Prop :=
  ∀ n, P7285373223307481152.a n = A006954 n

end A006954

/-! ## A006954.P4850869830076333881

`A027642(record[A029578(n)])`
-/

namespace A006954.P4850869830076333881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006954.P4850869830076333881

namespace A006954

/-- `A027642(record[A029578(n)])` -/
def P4850869830076333881.Spec : Prop :=
  ∀ n, P4850869830076333881.a n = A006954 n

end A006954

/-! ## A006954.P7656963476973070172

`A027642(lt[0, A106458(n)])`
-/

namespace A006954.P7656963476973070172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A006954.P7656963476973070172

namespace A006954

/-- `A027642(lt[0, A106458(n)])` -/
def P7656963476973070172.Spec : Prop :=
  ∀ n, P7656963476973070172.a n = A006954 n

end A006954

/-! ## A006954.P3657263514751653250

`A106458(lt[0, A106458(n)])`
-/

namespace A006954.P3657263514751653250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A006954.P3657263514751653250

namespace A006954

/-- `A106458(lt[0, A106458(n)])` -/
def P3657263514751653250.Spec : Prop :=
  ∀ n, P3657263514751653250.a n = A006954 n

end A006954

/-! ## A006954.P9818955454776493097

`A027642(lt[A176447(n), 2])`
-/

namespace A006954.P9818955454776493097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A006954.P9818955454776493097

namespace A006954

/-- `A027642(lt[A176447(n), 2])` -/
def P9818955454776493097.Spec : Prop :=
  ∀ n, P9818955454776493097.a n = A006954 n

end A006954

/-! ## A006954.P5121853940006986916

`A141056(lt[A135517(n), 2])`
-/

namespace A006954.P5121853940006986916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A006954.P5121853940006986916

namespace A006954

/-- `A141056(lt[A135517(n), 2])` -/
def P5121853940006986916.Spec : Prop :=
  ∀ n, P5121853940006986916.a n = A006954 n

end A006954

/-! ## A006954.P4904177637617191850

`A141056(lt[A176447(n), 2])`
-/

namespace A006954.P4904177637617191850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A006954.P4904177637617191850

namespace A006954

/-- `A141056(lt[A176447(n), 2])` -/
def P4904177637617191850.Spec : Prop :=
  ∀ n, P4904177637617191850.a n = A006954 n

end A006954

/-! ## A006954.P16848230559826185538

`A027642(record[A005131(n+1)])`
-/

namespace A006954.P16848230559826185538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006954.P16848230559826185538

namespace A006954

/-- `A027642(record[A005131(n+1)])` -/
def P16848230559826185538.Spec : Prop :=
  ∀ n, P16848230559826185538.a n = A006954 n

end A006954

/-! ## A006954.P1475380512219086476

`A141056(record[n/A135517(n)])`
-/

namespace A006954.P1475380512219086476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A135517 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A006954.P1475380512219086476

namespace A006954

/-- `A141056(record[n/A135517(n)])` -/
def P1475380512219086476.Spec : Prop :=
  ∀ n, P1475380512219086476.a n = A006954 n

end A006954

/-! ## A006954.P17584135253420568949

`A027642(A004280(n+1)-1)`
-/

namespace A006954.P17584135253420568949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A004280 (n + 1) - 1).toNat

end

end A006954.P17584135253420568949

namespace A006954

/-- `A027642(A004280(n+1)-1)` -/
def P17584135253420568949.Spec : Prop :=
  ∀ n, P17584135253420568949.a n = A006954 n

end A006954

/-! ## A006954.P2763454364285340841

`A027642(lt[n, A027642(n)²²])`
-/

namespace A006954.P2763454364285340841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027642 n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A006954.P2763454364285340841

namespace A006954

/-- `A027642(lt[n, A027642(n)²²])` -/
def P2763454364285340841.Spec : Prop :=
  ∀ n, P2763454364285340841.a n = A006954 n

end A006954

/-!
# A006955: Denominator of (2n+1) B_{2n}, where B_n are the Bernoulli numbers.

The programs for A006955, the canonical program `A006955.P9434307626100429128` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006955 has offset 0).

The definition of A006955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006955.P11079317959349829107

`A050932(2*n)`
-/

namespace A006955.P11079317959349829107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (2 * n)

end

end A006955.P11079317959349829107

namespace A006955

/-- `A050932(2*n)` -/
def P11079317959349829107.Spec : Prop :=
  ∀ n, P11079317959349829107.a n = A006955 n

end A006955

/-! ## A006955.P9434307626100429128

`A326580(n)/Δ[n²]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A006955

/-- `A326580(n)/Δ[n²]` -/
def P9434307626100429128.Spec : Prop :=
  ∀ n, P9434307626100429128.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P18008785927573408441

`A326579(2*n+1)/(2*n+1)`
-/

namespace A006955.P18008785927573408441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326579 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A006955.P18008785927573408441

namespace A006955

/-- `A326579(2*n+1)/(2*n+1)` -/
def P18008785927573408441.Spec : Prop :=
  ∀ n, P18008785927573408441.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P11104677884352053067

`gcd(A002445(n), A306745(n))`
-/

namespace A006955.P11104677884352053067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A306745 n)

end

end A006955.P11104677884352053067

namespace A006955

/-- `gcd(A002445(n), A306745(n))` -/
def P11104677884352053067.Spec : Prop :=
  ∀ n, (P11104677884352053067.a n : ℤ) = A006955 n

end A006955

/-! ## A006955.P4035065811677105039

`A002445(n)/A326577(n+1)`
-/

namespace A006955.P4035065811677105039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 n : ℚ) / (A326577 (n + 1) : ℚ)

end

end A006955.P4035065811677105039

namespace A006955

/-- `A002445(n)/A326577(n+1)` -/
def P4035065811677105039.Spec : Prop :=
  ∀ n, P4035065811677105039.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P14964259876951125439

`A027642(2*n)/A326577(n+1)`
-/

namespace A006955.P14964259876951125439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A326577 (n + 1) : ℚ)

end

end A006955.P14964259876951125439

namespace A006955

/-- `A027642(2*n)/A326577(n+1)` -/
def P14964259876951125439.Spec : Prop :=
  ∀ n, P14964259876951125439.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P14467412732957532282

`A027642(2*n)/A326584(2*n+1)`
-/

namespace A006955.P14467412732957532282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A326584 (2 * n + 1) : ℚ)

end

end A006955.P14467412732957532282

namespace A006955

/-- `A027642(2*n)/A326584(2*n+1)` -/
def P14467412732957532282.Spec : Prop :=
  ∀ n, P14467412732957532282.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P14651284410774946476

`A106458(2*n)/gcd(A004273(n+1), A106458(2*n))`
-/

namespace A006955.P14651284410774946476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106458 (2 * n) : ℚ) / (Int.gcd (A004273 (n + 1)) (A106458 (2 * n)) : ℚ)

end

end A006955.P14651284410774946476

namespace A006955

/-- `A106458(2*n)/gcd(A004273(n+1), A106458(2*n))` -/
def P14651284410774946476.Spec : Prop :=
  ∀ n, P14651284410774946476.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P6814914880347671428

`A176289(2*n)/gcd(A004442(2*n), A176289(2*n))`
-/

namespace A006955.P6814914880347671428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176289 (2 * n) : ℚ) / (Int.gcd (A004442 (2 * n)) (A176289 (2 * n)) : ℚ)

end

end A006955.P6814914880347671428

namespace A006955

/-- `A176289(2*n)/gcd(A004442(2*n), A176289(2*n))` -/
def P6814914880347671428.Spec : Prop :=
  ∀ n, P6814914880347671428.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P59186565124212746

`A141056(2*n)/gcd(A109613(2*n), A141056(2*n))`
-/

namespace A006955.P59186565124212746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 (2 * n) : ℚ) / (Int.gcd (A109613 (2 * n)) (A141056 (2 * n)) : ℚ)

end

end A006955.P59186565124212746

namespace A006955

/-- `A141056(2*n)/gcd(A109613(2*n), A141056(2*n))` -/
def P59186565124212746.Spec : Prop :=
  ∀ n, P59186565124212746.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P16528370879256168146

`lcm(A004442(2*n), A027642(2*n))/A004442(2*n)`
-/

namespace A006955.P16528370879256168146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A004442 (2 * n)) (A027642 (2 * n)) : ℚ) / (A004442 (2 * n) : ℚ)

end

end A006955.P16528370879256168146

namespace A006955

/-- `lcm(A004442(2*n), A027642(2*n))/A004442(2*n)` -/
def P16528370879256168146.Spec : Prop :=
  ∀ n, P16528370879256168146.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P8641598939170831272

`lcm(A079097(2*n), A141056(2*n))/A079097(2*n)`
-/

namespace A006955.P8641598939170831272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A079097 (2 * n)) (A141056 (2 * n)) : ℚ) / (A079097 (2 * n) : ℚ)

end

end A006955.P8641598939170831272

namespace A006955

/-- `lcm(A079097(2*n), A141056(2*n))/A079097(2*n)` -/
def P8641598939170831272.Spec : Prop :=
  ∀ n, P8641598939170831272.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P6781017330706042437

`A027642(2*n)/(A089026(2*n+1)*A166123(2*n+1))`
-/

namespace A006955.P6781017330706042437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (2 * n) : ℚ) / (A089026 (2 * n + 1) * A166123 (2 * n + 1) : ℚ)

end

end A006955.P6781017330706042437

namespace A006955

/-- `A027642(2*n)/(A089026(2*n+1)*A166123(2*n+1))` -/
def P6781017330706042437.Spec : Prop :=
  ∀ n, P6781017330706042437.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P12920935559163757905

`A166120(2*n+1)/A166123(2*n+1)`
-/

namespace A006955.P12920935559163757905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166120 (2 * n + 1) : ℚ) / (A166123 (2 * n + 1) : ℚ)

end

end A006955.P12920935559163757905

namespace A006955

/-- `A166120(2*n+1)/A166123(2*n+1)` -/
def P12920935559163757905.Spec : Prop :=
  ∀ n, P12920935559163757905.a n = (A006955 n : ℚ)

end A006955

/-! ## A006955.P12201276677147233492

`A140219(2*n)`
-/

namespace A006955.P12201276677147233492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140219 (2 * n)

end

end A006955.P12201276677147233492

namespace A006955

/-- `A140219(2*n)` -/
def P12201276677147233492.Spec : Prop :=
  ∀ n, P12201276677147233492.a n = A006955 n

end A006955

/-! ## A006955.P9701321087509177319

`gcd(A027642(2*n), A318256(2*n))`
-/

namespace A006955.P9701321087509177319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 (2 * n)) (A318256 (2 * n))

end

end A006955.P9701321087509177319

namespace A006955

/-- `gcd(A027642(2*n), A318256(2*n))` -/
def P9701321087509177319.Spec : Prop :=
  ∀ n, (P9701321087509177319.a n : ℤ) = A006955 n

end A006955

/-! ## A006955.P13890120706315565676

`gcd(A318256(2*n)², A141056(2*n))`
-/

namespace A006955.P13890120706315565676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318256 (2 * n) ^ 2) (A141056 (2 * n))

end

end A006955.P13890120706315565676

namespace A006955

/-- `gcd(A318256(2*n)², A141056(2*n))` -/
def P13890120706315565676.Spec : Prop :=
  ∀ n, (P13890120706315565676.a n : ℤ) = A006955 n

end A006955

/-! ## A006955.P10030632616168458601

`A100616(Δ[n²])`
-/

namespace A006955.P10030632616168458601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006955.P10030632616168458601

namespace A006955

/-- `A100616(Δ[n²])` -/
def P10030632616168458601.Spec : Prop :=
  ∀ n, P10030632616168458601.a n = A006955 n

end A006955

/-! ## A006955.P2779680085200968412

`gcd(A002445(2*n)², A100616(2*n+1))`
-/

namespace A006955.P2779680085200968412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 (2 * n) ^ 2) (A100616 (2 * n + 1))

end

end A006955.P2779680085200968412

namespace A006955

/-- `gcd(A002445(2*n)², A100616(2*n+1))` -/
def P2779680085200968412.Spec : Prop :=
  ∀ n, (P2779680085200968412.a n : ℤ) = A006955 n

end A006955

/-! ## A006955.P15557854657484100795

`A027642(2*n+3)*A100616(2*n+1)`
-/

namespace A006955.P15557854657484100795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n + 3) * A100616 (2 * n + 1)

end

end A006955.P15557854657484100795

namespace A006955

/-- `A027642(2*n+3)*A100616(2*n+1)` -/
def P15557854657484100795.Spec : Prop :=
  ∀ n, P15557854657484100795.a n = A006955 n

end A006955

/-!
# A006956: Denominator of (2n+1)(2n+2) B_{2n}, where B_n are the Bernoulli numbers. Also denominators of the asymptotic expansion of the polygamma function psi'''(z).

The programs for A006956, there is no canonical definition to state claims against.
-/

/-! ## A006956.P4595713666015584298

`A386728(A060577(n))`
-/

namespace A006956.P4595713666015584298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386728 (A060577 n).toNat

end

end A006956.P4595713666015584298

/-!
# A006957: Self-convolution of numbers of preferential arrangements.

The programs for A006957, there is no canonical definition to state claims against.
-/

/-! ## A006957.P1495435341550449191

`∑[A344327(∏[A092043(n+1)])]`
-/

namespace A006957.P1495435341550449191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092043 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344327 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006957.P1495435341550449191

/-! ## A006957.P10215855447614802003

`A028310(A052852(n)+A012316(n))`
-/

namespace A006957.P10215855447614802003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A052852 n + A012316 n).toNat

end

end A006957.P10215855447614802003

/-!
# A006958: Number of parallelogram polyominoes with n cells (also called staircase polyominoes, although that term is overused).

The programs for A006958, there is no canonical definition to state claims against.
-/

/-! ## A006958.P14695449758086813819

`record[A291929(n)]`
-/

namespace A006958.P14695449758086813819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006958.P14695449758086813819

/-! ## A006958.P8766874414909539612

`A291929(A075349(n+2))`
-/

namespace A006958.P8766874414909539612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 (A075349 (n + 2)).toNat

end

end A006958.P8766874414909539612

/-! ## A006958.P18252432573709616844

`A291929(eq[0, A291929(n)]+1)`
-/

namespace A006958.P18252432573709616844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A006958.P18252432573709616844

/-! ## A006958.P8488879388364869379

`A291929(lt[A291929(n), 1]+1)`
-/

namespace A006958.P8488879388364869379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A006958.P8488879388364869379

/-! ## A006958.P3145392343623756771

`A291929(∑[A002024(n+1)]+1)`
-/

namespace A006958.P3145392343623756771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A006958.P3145392343623756771

/-! ## A006958.P1177890776664548255

`A291929(∑[A003056(n)+1]+1)`
-/

namespace A006958.P1177890776664548255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291929 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A006958.P1177890776664548255

/-!
# A006961: Number of mappings from n points to themselves with in-degree <= 2.

The programs for A006961, there is no canonical definition to state claims against.
-/

/-! ## A006961.P699228413970942342

`A078451(A354506(n+1)-n)`
-/

namespace A006961.P699228413970942342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078451 (A354506 (n + 1) - (n : ℤ)).toNat

end

end A006961.P699228413970942342

/-! ## A006961.P8988414870753061252

`A114851(n)+A000006(A149053(n))`
-/

namespace A006961.P8988414870753061252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114851 n + A000006 (A149053 n).toNat

end

end A006961.P8988414870753061252

/-! ## A006961.P2859639058518611148

`or(A137451(A011782(n)), A296021(n))`
-/

namespace A006961.P2859639058518611148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137451 (A011782 n).toNat) (A296021 n)

end

end A006961.P2859639058518611148

/-! ## A006961.P10039416466442545035

`xor(A006463(n), A023193(A099098(n)))`
-/

namespace A006961.P10039416466442545035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006463 n) (A023193 (A099098 n).toNat)

end

end A006961.P10039416466442545035

/-!
# A006962: Supersingular primes of the elliptic curve X_0 (11).

The programs for A006962, there is no canonical definition to state claims against.
-/

/-! ## A006962.P6488066283932222855

`record[gcd(A002070(n+1), A073579(n+1))]`
-/

namespace A006962.P6488066283932222855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002070 (n + 1)) (A073579 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006962.P6488066283932222855

/-! ## A006962.P13535107857272482500

`record[gcd(A000040(n+1), A272196(n+1))]`
-/

namespace A006962.P13535107857272482500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A272196 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006962.P13535107857272482500

/-! ## A006962.P7956617358982580617

`record[gcd(A045344(n+1), A272196(n+2))]`
-/

namespace A006962.P7956617358982580617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045344 (n + 1)) (A272196 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006962.P7956617358982580617

/-! ## A006962.P405421911730474363

`p?[gcd(A073579(n+1)-A002070(n+1), A008578(n+2))]`
-/

namespace A006962.P405421911730474363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073579 (n + 1) - A002070 (n + 1)) (A008578 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A006962.P405421911730474363

/-!
# A006963: Number of planar embedded labeled trees with n nodes: (2*n-3)!/(n-1)! for n >= 2, a(1) = 1.

The programs for A006963, there is no canonical definition to state claims against.
-/

/-! ## A006963.P5671608411652805342

`(n-1)*(4-2/n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A006963.P5671608411652805342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1 : ℚ) * ((4 - 2 / (n : ℚ)) * a (n - 1))

end

end A006963.P5671608411652805342

/-! ## A006963.P814951728768196818

`A123225(C(n, 2))`
-/

namespace A006963.P814951728768196818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123225 (Nat.choose n 2)

end

end A006963.P814951728768196818

/-! ## A006963.P16024061139969049796

`A172089(2*n²)`
-/

namespace A006963.P16024061139969049796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (2 * n ^ 2)

end

end A006963.P16024061139969049796

/-! ## A006963.P16117887115515011920

`A370983(∑[n]+n)`
-/

namespace A006963.P16117887115515011920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370983 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A006963.P16117887115515011920

/-! ## A006963.P12814639865707705952

`A123225(∑[n]-n)`
-/

namespace A006963.P12814639865707705952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123225 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A006963.P12814639865707705952

/-! ## A006963.P10572100594592534803

`A038455(∑[abs(1-n)])`
-/

namespace A006963.P10572100594592534803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038455 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A006963.P10572100594592534803

/-! ## A006963.P8113961616173062470

`abs(1-n)!*A007318(2*n²)`
-/

namespace A006963.P8113961616173062470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * A007318 (2 * n ^ 2)

end

end A006963.P8113961616173062470

/-! ## A006963.P18328872592949588589

`A205825(A004273(n))`
-/

namespace A006963.P18328872592949588589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205825 (A004273 n).toNat

end

end A006963.P18328872592949588589

/-! ## A006963.P6780709002416497700

`A262033(record[A026741(n)])`
-/

namespace A006963.P6780709002416497700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262033 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A006963.P6780709002416497700

/-! ## A006963.P18189114838262163683

`A262033(A004274(n+1))`
-/

namespace A006963.P18189114838262163683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262033 (A004274 (n + 1)).toNat

end

end A006963.P18189114838262163683

/-!
# A006964: Number of directed rooted trees with n nodes.

The programs for A006964, there is no canonical definition to state claims against.
-/

/-! ## A006964.P3549866194541377533

`A038059(n+1)/3`
-/

namespace A006964.P3549866194541377533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038059 (n + 1) : ℚ) / 3

end

end A006964.P3549866194541377533

/-! ## A006964.P11425823854046947620

`A271879(∑[n]+1)/3`
-/

namespace A006964.P11425823854046947620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271879 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A006964.P11425823854046947620

/-! ## A006964.P6614752051015732449

`record[A271879(n+1)/3]`
-/

namespace A006964.P6614752051015732449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271879 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006964.P6614752051015732449

/-! ## A006964.P722990574613614572

`lcm(3, A271879(A000124(n)))/3`
-/

namespace A006964.P722990574613614572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A271879 (A000124 n).toNat) : ℚ) / 3

end

end A006964.P722990574613614572

/-! ## A006964.P10529866680851555530

`A242249(A046691(n+3))`
-/

namespace A006964.P10529866680851555530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A046691 (n + 3)).toNat

end

end A006964.P10529866680851555530

/-! ## A006964.P12207793783316437431

`A242249(A056115(n)+11)`
-/

namespace A006964.P12207793783316437431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A056115 n + 11).toNat

end

end A006964.P12207793783316437431

/-! ## A006964.P12846640436499577903

`record[A242249(A052905(n)+1)]`
-/

namespace A006964.P12846640436499577903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006964.P12846640436499577903

/-! ## A006964.P12540859144929693662

`record[A242249(A055999(n)+2)]`
-/

namespace A006964.P12540859144929693662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A055999 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006964.P12540859144929693662

/-! ## A006964.P7615347852081289144

`record[A242249(A046691(A008619(n)))]`
-/

namespace A006964.P7615347852081289144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242249 (A046691 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006964.P7615347852081289144

/-!
# A006965: Number of directed trees with n nodes.

The programs for A006965, there is no canonical definition to state claims against.
-/

/-! ## A006965.P5308914587298574860

`A038060(n+1)/3`
-/

namespace A006965.P5308914587298574860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038060 (n + 1) : ℚ) / 3

end

end A006965.P5308914587298574860

/-! ## A006965.P2164390767310376307

`Δ[∑[A038060(n)]/3]`
-/

namespace A006965.P2164390767310376307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038060 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006965.P2164390767310376307

/-! ## A006965.P1562122016773565450

`record[ratio[A038060(A152271(n))]]`
-/

namespace A006965.P1562122016773565450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038060 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006965.P1562122016773565450

/-! ## A006965.P5881604028919551957

`(A000007(n)+ratio[A038060(n)])*a(n-1)` with `a(0)=1`
-/

namespace A006965.P5881604028919551957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038060 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A000007 n : ℚ) + (f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1)

end

end A006965.P5881604028919551957

/-!
# A006966: Number of lattices on n unlabeled nodes.

The programs for A006966, there is no canonical definition to state claims against.
-/

/-! ## A006966.P4007542985435708646

`A058142(∑[n]+floor(acot(n)))`
-/

namespace A006966.P4007542985435708646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A006966.P4007542985435708646

/-! ## A006966.P11903388237030184019

`A058142(∑[n]^floor(atan(n)))`
-/

namespace A006966.P11903388237030184019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A006966.P11903388237030184019

/-! ## A006966.P10605943383820016816

`A058142(C(n+1, abs(1-n)))`
-/

namespace A006966.P10605943383820016816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (Nat.choose (n + 1) |1 - (n : ℤ)|.toNat)

end

end A006966.P10605943383820016816

/-! ## A006966.P2068934891314347996

`A058142(floor(acot(n))+C(n+1, 2))`
-/

namespace A006966.P2068934891314347996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (Nat.choose (n + 1) 2 : ℤ)).toNat

end

end A006966.P2068934891314347996

/-! ## A006966.P5091386111329309110

`A058142(round(acot(n)+n)+C(n, 2))`
-/

namespace A006966.P5091386111329309110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (Nat.choose n 2 : ℤ)).toNat

end

end A006966.P5091386111329309110

/-!
# A006967: Number of graceful permutations of length n.

The programs for A006967, there is no canonical definition to state claims against.
-/

/-! ## A006967.P5028009638394958854

`A000142(n)-A084894(A028310(n))`
-/

namespace A006967.P5028009638394958854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A084894 (A028310 n).toNat

end

end A006967.P5028009638394958854

/-! ## A006967.P16422575014183256176

`A000142(n)-A084894(A233583(n+1))`
-/

namespace A006967.P16422575014183256176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A084894 (A233583 (n + 1)).toNat

end

end A006967.P16422575014183256176

/-! ## A006967.P16237860523273898068

`A000142(n)-A084894(A000007(n)+n)`
-/

namespace A006967.P16237860523273898068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A084894 (A000007 n + (n : ℤ)).toNat

end

end A006967.P16237860523273898068

/-! ## A006967.P3299251585352256171

`A000142(n)-A084894(A004277(n)-n)`
-/

namespace A006967.P3299251585352256171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A084894 (A004277 n - (n : ℤ)).toNat

end

end A006967.P3299251585352256171

/-! ## A006967.P3866788964082194868

`∑[A094304(n+1)]-A084894(A000007(n)+n)`
-/

namespace A006967.P3866788964082194868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A084894 (A000007 n + (n : ℤ)).toNat

end

end A006967.P3866788964082194868

/-!
# A006968: Number of letters in Roman numeral representation of n.

The programs for A006968, there is no canonical definition to state claims against.
-/

/-! ## A006968.P150281006721706780

`∑{digits}[A061493(n+1), A055642(#)]`
-/

namespace A006968.P150281006721706780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055642 x).sum

end

end A006968.P150281006721706780

/-! ## A006968.P13074864927501282170

`∑{digits}[A061493(n+1), #/A055645(#)]`
-/

namespace A006968.P13074864927501282170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) / (A055645 x : ℚ)).sum

end

end A006968.P13074864927501282170

/-! ## A006968.P4577162979675871575

`∑{digits}[A061493(n+1), A027423(A053616(#))]`
-/

namespace A006968.P4577162979675871575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A027423 (A053616 x).toNat).sum

end

end A006968.P4577162979675871575

/-! ## A006968.P10654272668579445318

`∑{digits}[A061493(n+1), A059119(A059119(#))]`
-/

namespace A006968.P10654272668579445318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A059119 (A059119 x).toNat).sum

end

end A006968.P10654272668579445318

/-! ## A006968.P9837323600885010690

`∑{digits}[A061493(n+1), A004526(3-A053616(#))]`
-/

namespace A006968.P9837323600885010690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004526 (3 - A053616 x).toNat).sum

end

end A006968.P9837323600885010690

/-! ## A006968.P15092921378533257163

`A000005(A398269(n+1))`
-/

namespace A006968.P15092921378533257163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A398269 (n + 1)).toNat

end

end A006968.P15092921378533257163

/-! ## A006968.P13613413299102208843

`A092196(n+1)-A092197(n+1)`
-/

namespace A006968.P13613413299102208843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (n + 1) - A092197 (n + 1)

end

end A006968.P13613413299102208843

/-! ## A006968.P2103877327421641925

`A092196(A093783(n+1))`
-/

namespace A006968.P2103877327421641925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A093783 (n + 1)).toNat

end

end A006968.P2103877327421641925

/-!
# A006970: Euler pseudoprimes: composite numbers n such that 2^((n-1)/2) == +-1 (mod n).

The programs for A006970, there is no canonical definition to state claims against.
-/

/-! ## A006970.P2905023183644579282

`∪[A047713(n+1), A306310(n+1)]`
-/

namespace A006970.P2905023183644579282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006970.P2905023183644579282

/-! ## A006970.P16107838746677590079

`∩[A001567(n+1), A262055(n+1)]`
-/

namespace A006970.P16107838746677590079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006970.P16107838746677590079

/-! ## A006970.P6751405436490591807

`∩[A020136(n+1), A262055(n+1)]`
-/

namespace A006970.P6751405436490591807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006970.P6751405436490591807

/-! ## A006970.P5386763852701583700

`∩[A020144(n+1), A262055(n+1)]`
-/

namespace A006970.P5386763852701583700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006970.P5386763852701583700

/-! ## A006970.P11382013537779942567

`∩[A020160(n+1), A262055(n+1)]`
-/

namespace A006970.P11382013537779942567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006970.P11382013537779942567

/-! ## A006970.P7191279721659470428

`∩[A122781(n+1), A262055(n+1)]`
-/

namespace A006970.P7191279721659470428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006970.P7191279721659470428

/-!
# A006971: Composite numbers k such that k == +-1 (mod 8) and 2^((k-1)/2) == 1 (mod k).

The programs for A006971, there is no canonical definition to state claims against.
-/

/-! ## A006971.P8675981520508048687

`A047713(∑[(A000720(n+5)%A026820(n+2))!])`
-/

namespace A006971.P8675981520508048687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A000720 (n + 5)) (A026820 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A006971.P8675981520508048687

/-! ## A006971.P12141991856748724095

`A047713(A332107(n+1)%A171399(n+5))`
-/

namespace A006971.P12141991856748724095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (Int.tmod (A332107 (n + 1)) (A171399 (n + 5))).toNat

end

end A006971.P12141991856748724095

/-! ## A006971.P2526144338564588178

`filter[A006970(n+1), A014577(#)]`
-/

namespace A006971.P2526144338564588178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A006971.P2526144338564588178

/-! ## A006971.P12732065732955607723

`filter[A047713(n+1), A014577(#)]`
-/

namespace A006971.P12732065732955607723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A006971.P12732065732955607723

/-!
# A006972: Lucas-Carmichael numbers: squarefree composite numbers k such that p | k => p+1 | k+1.

The programs for A006972, there is no canonical definition to state claims against.
-/

/-! ## A006972.P7488952260856378283

`∩[A056729(n+1), A257750(n+1)]`
-/

namespace A006972.P7488952260856378283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006972.P7488952260856378283

/-! ## A006972.P17541529703704393287

`∩[A056729(n+1), A259283(n+1)]`
-/

namespace A006972.P17541529703704393287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006972.P17541529703704393287

/-! ## A006972.P16050804317285709334

`A000027(∪[A216925(n+1), A216926(n+1)])`
-/

namespace A006972.P16050804317285709334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216926 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A006972.P16050804317285709334

/-! ## A006972.P2038692213387853537

`filter[A056729(n+1), A008966(#)]`
-/

namespace A006972.P2038692213387853537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A006972.P2038692213387853537

/-! ## A006972.P8437674897735964085

`filter[A056729(n+1), A354353(#)]`
-/

namespace A006972.P8437674897735964085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A006972.P8437674897735964085

/-!
# A006973: Dimensions of representations by Witt vectors.

The programs for A006973, there is no canonical definition to state claims against.
-/

/-! ## A006973.P2398551531158003488

`lcm(n, A137852(n+1))`
-/

namespace A006973.P2398551531158003488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A137852 (n + 1))

end

end A006973.P2398551531158003488

/-! ## A006973.P13067177343410379771

`A062157(n)*A137852(n+1)`
-/

namespace A006973.P13067177343410379771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A137852 (n + 1)

end

end A006973.P13067177343410379771

/-! ## A006973.P11831701689061104090

`abs(A137852(n+1)%A062796(n+1))`
-/

namespace A006973.P11831701689061104090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A137852 (n + 1)) (A062796 (n + 1))|

end

end A006973.P11831701689061104090

/-! ## A006973.P2629820539954610030

`lcm(n, A156792(A000096(n)))`
-/

namespace A006973.P2629820539954610030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A156792 (A000096 n).toNat)

end

end A006973.P2629820539954610030

/-! ## A006973.P1306433035982544092

`A156792(A000096(n))-A000007(n)`
-/

namespace A006973.P1306433035982544092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (A000096 n).toNat - A000007 n

end

end A006973.P1306433035982544092

/-! ## A006973.P16248737528704573286

`A156792(A000096(n))-A151909(n)`
-/

namespace A006973.P16248737528704573286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (A000096 n).toNat - A151909 n

end

end A006973.P16248737528704573286

/-! ## A006973.P3422397032795786117

`A156792(A000217(n)+n)-A000007(n)`
-/

namespace A006973.P3422397032795786117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (A000217 n + (n : ℤ)).toNat - A000007 n

end

end A006973.P3422397032795786117

/-! ## A006973.P2040072856167815285

`A156792(A000217(n)+n)-A151909(n)`
-/

namespace A006973.P2040072856167815285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (A000217 n + (n : ℤ)).toNat - A151909 n

end

end A006973.P2040072856167815285

/-! ## A006973.P3580586710121378158

`A156792(A000217(n)+n)*A178334(n)`
-/

namespace A006973.P3580586710121378158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (A000217 n + (n : ℤ)).toNat * A178334 n

end

end A006973.P3580586710121378158

/-! ## A006973.P712912129505915419

`A156792(A000096(n))-A156297(A314881(n))`
-/

namespace A006973.P712912129505915419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156792 (A000096 n).toNat - A156297 (A314881 n).toNat

end

end A006973.P712912129505915419

/-!
# A006974: Coefficients of Chebyshev T polynomials: a(n) = A053120(n+8, n), n >= 0.

The programs for A006974, the canonical program `A006974.P17651909789123734888` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006974 has offset 0).

The definition of A006974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006974.P17651909789123734888

`2^(n-3)*C(n+3, 3)*(n+8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006974

/-- `2^(n-3)*C(n+3, 3)*(n+8)` -/
def P17651909789123734888.Spec : Prop :=
  ∀ n, P17651909789123734888.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P3969818415245369353

`2^(n-1)*∑[∑[∑[n+2]]]`
-/

namespace A006974.P3969818415245369353
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A006974.P3969818415245369353

namespace A006974

/-- `2^(n-1)*∑[∑[∑[n+2]]]` -/
def P3969818415245369353.Spec : Prop :=
  ∀ n, P3969818415245369353.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P7007263400830270341

`∑[∑[A375549(n)]]`
-/

namespace A006974.P7007263400830270341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006974.P7007263400830270341

namespace A006974

/-- `∑[∑[A375549(n)]]` -/
def P7007263400830270341.Spec : Prop :=
  ∀ n, P7007263400830270341.a n = A006974 n

end A006974

/-! ## A006974.P909233172487159467

`∑[∑[∑[A055589(n+1)]]]`
-/

namespace A006974.P909233172487159467
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006974.P909233172487159467

namespace A006974

/-- `∑[∑[∑[A055589(n+1)]]]` -/
def P909233172487159467.Spec : Prop :=
  ∀ n, P909233172487159467.a n = A006974 n

end A006974

/-! ## A006974.P21485482577456527

`a(n-1)+A001794(n)+a(n-1)` with `a(0)=1`
-/

namespace A006974.P21485482577456527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001794 n + a (n - 1))

end

end A006974.P21485482577456527

namespace A006974

/-- `a(n-1)+A001794(n)+a(n-1)` -/
def P21485482577456527.Spec : Prop :=
  ∀ n, P21485482577456527.a n = A006974 n

end A006974

/-! ## A006974.P12530430846395045422

`A308914(n+4)-A055585(n)`
-/

namespace A006974.P12530430846395045422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308914 (n + 4) - A055585 n

end

end A006974.P12530430846395045422

namespace A006974

/-- `A308914(n+4)-A055585(n)` -/
def P12530430846395045422.Spec : Prop :=
  ∀ n, P12530430846395045422.a n = A006974 n

end A006974

/-! ## A006974.P5958512514527960211

`A375549(n+2)-A001794(n+2)`
-/

namespace A006974.P5958512514527960211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375549 (n + 2) - A001794 (n + 2)

end

end A006974.P5958512514527960211

namespace A006974

/-- `A375549(n+2)-A001794(n+2)` -/
def P5958512514527960211.Spec : Prop :=
  ∀ n, P5958512514527960211.a n = A006974 n

end A006974

/-! ## A006974.P5906882603266628262

`A001789(n+3)+A080951(n)-A082138(n)`
-/

namespace A006974.P5906882603266628262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 3) + (A080951 n - A082138 n)

end

end A006974.P5906882603266628262

namespace A006974

/-- `A001789(n+3)+A080951(n)-A082138(n)` -/
def P5906882603266628262.Spec : Prop :=
  ∀ n, P5906882603266628262.a n = A006974 n

end A006974

/-! ## A006974.P6047014458700278646

`Δ[2^(n-1)*C(n+3, 4)]`
-/

namespace A006974.P6047014458700278646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 3) 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006974.P6047014458700278646

namespace A006974

/-- `Δ[2^(n-1)*C(n+3, 4)]` -/
def P6047014458700278646.Spec : Prop :=
  ∀ n, P6047014458700278646.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P8854427010663138774

`Δ[∑[∑[∑[n]]]*A011782(n)]`
-/

namespace A006974.P8854427010663138774
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006974.P8854427010663138774

namespace A006974

/-- `Δ[∑[∑[∑[n]]]*A011782(n)]` -/
def P8854427010663138774.Spec : Prop :=
  ∀ n, P8854427010663138774.a n = A006974 n

end A006974

/-! ## A006974.P16817290149119725680

`∑[∑[∑[n+2]]]*A000079(n)/2`
-/

namespace A006974.P16817290149119725680
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 n : ℚ) / 2

end

end A006974.P16817290149119725680

namespace A006974

/-- `∑[∑[∑[n+2]]]*A000079(n)/2` -/
def P16817290149119725680.Spec : Prop :=
  ∀ n, P16817290149119725680.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P17162693818269636744

`(A080951(n+1)-A080929(n+1))/2`
-/

namespace A006974.P17162693818269636744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080951 (n + 1) - A080929 (n + 1) : ℚ) / 2

end

end A006974.P17162693818269636744

namespace A006974

/-- `(A080951(n+1)-A080929(n+1))/2` -/
def P17162693818269636744.Spec : Prop :=
  ∀ n, P17162693818269636744.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P10500443665397881356

`(A003472(n+4)+A001789(n+3))/2`
-/

namespace A006974.P10500443665397881356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003472 (n + 4) + A001789 (n + 3) : ℚ) / 2

end

end A006974.P10500443665397881356

namespace A006974

/-- `(A003472(n+4)+A001789(n+3))/2` -/
def P10500443665397881356.Spec : Prop :=
  ∀ n, P10500443665397881356.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P17866036919678146759

`Δ[A213432(n+3)/2]`
-/

namespace A006974.P17866036919678146759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213432 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006974.P17866036919678146759

namespace A006974

/-- `Δ[A213432(n+3)/2]` -/
def P17866036919678146759.Spec : Prop :=
  ∀ n, P17866036919678146759.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P9305706903526053109

`A028297(eq[4, n%floor(sqrt(n+1))])`
-/

namespace A006974.P9305706903526053109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A006974.P9305706903526053109

namespace A006974

/-- `A028297(eq[4, n%floor(sqrt(n+1))])` -/
def P9305706903526053109.Spec : Prop :=
  ∀ n, P9305706903526053109.a n = A006974 n

end A006974

/-! ## A006974.P12166665345000539273

`A028297(eq[4, A055087(n)])`
-/

namespace A006974.P12166665345000539273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006974.P12166665345000539273

namespace A006974

/-- `A028297(eq[4, A055087(n)])` -/
def P12166665345000539273.Spec : Prop :=
  ∀ n, P12166665345000539273.a n = A006974 n

end A006974

/-! ## A006974.P243599407531350673

`A126182(A000096(n+2)-n)`
-/

namespace A006974.P243599407531350673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126182 (A000096 (n + 2) - (n : ℤ)).toNat

end

end A006974.P243599407531350673

namespace A006974

/-- `A126182(A000096(n+2)-n)` -/
def P243599407531350673.Spec : Prop :=
  ∀ n, P243599407531350673.a n = A006974 n

end A006974

/-! ## A006974.P10359375688471159384

`A001789(n+3)*A140325(n)/A054851(n+7)`
-/

namespace A006974.P10359375688471159384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) * A140325 n : ℚ) / (A054851 (n + 7) : ℚ)

end

end A006974.P10359375688471159384

namespace A006974

/-- `A001789(n+3)*A140325(n)/A054851(n+7)` -/
def P10359375688471159384.Spec : Prop :=
  ∀ n, P10359375688471159384.a n = (A006974 n : ℚ)

end A006974

/-! ## A006974.P6373656305281225101

`∑[∑[A055807(A167499(n+5))]]`
-/

namespace A006974.P6373656305281225101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055807 (A167499 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006974.P6373656305281225101

namespace A006974

/-- `∑[∑[A055807(A167499(n+5))]]` -/
def P6373656305281225101.Spec : Prop :=
  ∀ n, P6373656305281225101.a n = A006974 n

end A006974

/-! ## A006974.P13825044533085411356

`A053120(A046691(n+7)-5)`
-/

namespace A006974.P13825044533085411356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 (A046691 (n + 7) - 5).toNat

end

end A006974.P13825044533085411356

namespace A006974

/-- `A053120(A046691(n+7)-5)` -/
def P13825044533085411356.Spec : Prop :=
  ∀ n, P13825044533085411356.a n = A006974 n

end A006974

/-!
# A006975: Negated coefficients of Chebyshev T polynomials: a(n) = -A053120(n+10, n), n >= 0.

The programs for A006975, the canonical program `A006975.P3853701632682151458` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006975 has offset 0).

The definition of A006975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006975.P3853701632682151458

`2^(n-1)/5*C(n+4, 4)*(n+10)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006975

/-- `2^(n-1)/5*C(n+4, 4)*(n+10)` -/
def P3853701632682151458.Spec : Prop :=
  ∀ n, P3853701632682151458.a n = (A006975 n : ℚ)

end A006975

/-! ## A006975.P79708947683398768

`2^(n-4)*(n+1)*(n+2)*(n+3)*(n+4)*(n+10)/15`
-/

namespace A006975.P79708947683398768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (n + 1 : ℚ) * (n + 2 : ℚ) * (n + 3 : ℚ) * (n + 4 : ℚ) * (n + 10 : ℚ) / 15

end

end A006975.P79708947683398768

namespace A006975

/-- `2^(n-4)*(n+1)*(n+2)*(n+3)*(n+4)*(n+10)/15` -/
def P79708947683398768.Spec : Prop :=
  ∀ n, P79708947683398768.a n = (A006975 n : ℚ)

end A006975

/-! ## A006975.P4996653430375923957

`a(n-1)+A006974(n)+a(n-1)` with `a(0)=1`
-/

namespace A006975.P4996653430375923957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006974 n + a (n - 1))

end

end A006975.P4996653430375923957

namespace A006975

/-- `a(n-1)+A006974(n)+a(n-1)` -/
def P4996653430375923957.Spec : Prop :=
  ∀ n, P4996653430375923957.a n = A006975 n

end A006975

/-! ## A006975.P13648421248257009338

`Δ[2^(n-1)*C(n+4, 5)]`
-/

namespace A006975.P13648421248257009338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 4) 5 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006975.P13648421248257009338

namespace A006975

/-- `Δ[2^(n-1)*C(n+4, 5)]` -/
def P13648421248257009338.Spec : Prop :=
  ∀ n, P13648421248257009338.a n = (A006975 n : ℚ)

end A006975

/-! ## A006975.P9489645822350979901

`Δ[C(n+4, 5)*A011782(n)]`
-/

namespace A006975.P9489645822350979901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 5 : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006975.P9489645822350979901

namespace A006975

/-- `Δ[C(n+4, 5)*A011782(n)]` -/
def P9489645822350979901.Spec : Prop :=
  ∀ n, P9489645822350979901.a n = A006975 n

end A006975

/-! ## A006975.P5652169990869239189

`Δ[A082139(n)-A080951(n)]`
-/

namespace A006975.P5652169990869239189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082139 n - A080951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006975.P5652169990869239189

namespace A006975

/-- `Δ[A082139(n)-A080951(n)]` -/
def P5652169990869239189.Spec : Prop :=
  ∀ n, P5652169990869239189.a n = A006975 n

end A006975

/-! ## A006975.P1192157884092595808

`-A053120(A000217(n+11)-11)`
-/

namespace A006975.P1192157884092595808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053120 (A000217 (n + 11) - 11).toNat

end

end A006975.P1192157884092595808

namespace A006975

/-- `-A053120(A000217(n+11)-11)` -/
def P1192157884092595808.Spec : Prop :=
  ∀ n, P1192157884092595808.a n = A006975 n

end A006975

/-! ## A006975.P16970540892251579781

`abs(A053120(A167614(n+10)-14))`
-/

namespace A006975.P16970540892251579781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053120 (A167614 (n + 10) - 14).toNat|

end

end A006975.P16970540892251579781

namespace A006975

/-- `abs(A053120(A167614(n+10)-14))` -/
def P16970540892251579781.Spec : Prop :=
  ∀ n, P16970540892251579781.a n = A006975 n

end A006975

/-! ## A006975.P10815040045284080128

`record[Δ[A100749(A167499(n+3))]]`
-/

namespace A006975.P10815040045284080128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100749 (A167499 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006975.P10815040045284080128

namespace A006975

/-- `record[Δ[A100749(A167499(n+3))]]` -/
def P10815040045284080128.Spec : Prop :=
  ∀ n, P10815040045284080128.a n = A006975 n

end A006975

/-!
# A006976: Coefficients of Chebyshev T polynomials: a(n) = A053120(n+12, n), n >= 0.

The programs for A006976, the canonical program `A006976.P8279380931902557206` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006976 has offset 0).

The definition of A006976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006976.P8279380931902557206

`2^(n-1)/6*C(n+5, 5)*(n+12)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006976

/-- `2^(n-1)/6*C(n+5, 5)*(n+12)` -/
def P8279380931902557206.Spec : Prop :=
  ∀ n, P8279380931902557206.a n = (A006976 n : ℚ)

end A006976

/-! ## A006976.P2111934640250702585

`2^(n-1)*A005584(n+1)`
-/

namespace A006976.P2111934640250702585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A005584 (n + 1) : ℚ)

end

end A006976.P2111934640250702585

namespace A006976

/-- `2^(n-1)*A005584(n+1)` -/
def P2111934640250702585.Spec : Prop :=
  ∀ n, P2111934640250702585.a n = (A006976 n : ℚ)

end A006976

/-! ## A006976.P4043253609936143795

`a(n-1)+A006975(n)+a(n-1)` with `a(0)=1`
-/

namespace A006976.P4043253609936143795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A006975 n + a (n - 1))

end

end A006976.P4043253609936143795

namespace A006976

/-- `a(n-1)+A006975(n)+a(n-1)` -/
def P4043253609936143795.Spec : Prop :=
  ∀ n, P4043253609936143795.a n = A006976 n

end A006976

/-! ## A006976.P4270497037132067153

`A082140(n)+A082139(n)%A082140(n)`
-/

namespace A006976.P4270497037132067153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 n + Int.tmod (A082139 n) (A082140 n)

end

end A006976.P4270497037132067153

namespace A006976

/-- `A082140(n)+A082139(n)%A082140(n)` -/
def P4270497037132067153.Spec : Prop :=
  ∀ n, P4270497037132067153.a n = A006976 n

end A006976

/-! ## A006976.P1379328015521835627

`A054849(n+5)+A082140(n)-A082139(n)`
-/

namespace A006976.P1379328015521835627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054849 (n + 5) + (A082140 n - A082139 n)

end

end A006976.P1379328015521835627

namespace A006976

/-- `A054849(n+5)+A082140(n)-A082139(n)` -/
def P1379328015521835627.Spec : Prop :=
  ∀ n, P1379328015521835627.a n = A006976 n

end A006976

/-! ## A006976.P7699951552012204204

`Δ[A082140(n)-A082139(n)]`
-/

namespace A006976.P7699951552012204204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 n - A082139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A006976.P7699951552012204204

namespace A006976

/-- `Δ[A082140(n)-A082139(n)]` -/
def P7699951552012204204.Spec : Prop :=
  ∀ n, P7699951552012204204.a n = A006976 n

end A006976

/-! ## A006976.P6484880571264834858

`(A054849(n+5)+A002409(n))/2`
-/

namespace A006976.P6484880571264834858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (n + 5) + A002409 n : ℚ) / 2

end

end A006976.P6484880571264834858

namespace A006976

/-- `(A054849(n+5)+A002409(n))/2` -/
def P6484880571264834858.Spec : Prop :=
  ∀ n, P6484880571264834858.a n = (A006976 n : ℚ)

end A006976

/-! ## A006976.P9334302043029447324

`(A082140(n+1)-A080951(n+1))/2`
-/

namespace A006976.P9334302043029447324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082140 (n + 1) - A080951 (n + 1) : ℚ) / 2

end

end A006976.P9334302043029447324

namespace A006976

/-- `(A082140(n+1)-A080951(n+1))/2` -/
def P9334302043029447324.Spec : Prop :=
  ∀ n, P9334302043029447324.a n = (A006976 n : ℚ)

end A006976

/-! ## A006976.P52958252318546648

`A002409(n)+A082139(n)-A082140(n)`
-/

namespace A006976.P52958252318546648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002409 n + (A082139 n - A082140 n)

end

end A006976.P52958252318546648

namespace A006976

/-- `A002409(n)+A082139(n)-A082140(n)` -/
def P52958252318546648.Spec : Prop :=
  ∀ n, P52958252318546648.a n = A006976 n

end A006976

/-!
# A006977: Cellular automaton with Rule 230: 000, 001, 010, 011, ..., 111 -> 0,1,1,0,0,1,1,1.

The programs for A006977, the canonical program `A006977.P13324955516000257360` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006977 has offset 0).

The definition of A006977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006977.P13324955516000257360

`or(xor(2*a(n-1), a(n-1)), floor(a(n-1)/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006977

/-- `or(xor(2*a(n-1), a(n-1)), floor(a(n-1)/2))` -/
def P13324955516000257360.Spec : Prop :=
  ∀ n, P13324955516000257360.a n = A006977 n

theorem P13324955516000257360.correct : P13324955516000257360.Spec := by
  intro n
  simp only [A006977]

end A006977

/-! ## A006977.P13807488186610848095

`or((a(n-1)-1)/2, xor(2*a(n-1), a(n-1)))` with `a(0)=1`
-/

namespace A006977.P13807488186610848095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((a (n - 1) - 1 : ℚ) / 2)) (Int.xor (2 * a (n - 1)) (a (n - 1)))

end

end A006977.P13807488186610848095

namespace A006977

/-- `or((a(n-1)-1)/2, xor(2*a(n-1), a(n-1)))` -/
def P13807488186610848095.Spec : Prop :=
  ∀ n, P13807488186610848095.a n = A006977 n

end A006977

/-! ## A006977.P7541338465402239670

`or(xor(a(n-1)+floor(a(n-1)), a(n-1)), floor(a(n-1)/2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A006977.P7541338465402239670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (Int.xor (a (n - 1) + a (n - 1)) (a (n - 1))) ⌊(a (n - 1) : ℚ) / 2⌋

end

end A006977.P7541338465402239670

namespace A006977

/-- `or(xor(a(n-1)+floor(a(n-1)), a(n-1)), floor(a(n-1)/2))` -/
def P7541338465402239670.Spec : Prop :=
  ∀ n, P7541338465402239670.a n = A006977 n

theorem P7541338465402239670.correct : P7541338465402239670.Spec := by
  intro n
  simp only [A006977, Nat.add_sub_cancel, A006977.P7541338465402239670.a, A006977.P13324955516000257360.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A006977

/-! ## A006977.P13851975512341190353

`A267855(n)/2^n`
-/

namespace A006977.P13851975512341190353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267855 n : ℚ) / (2 ^ n : ℚ)

end

end A006977.P13851975512341190353

namespace A006977

/-- `A267855(n)/2^n` -/
def P13851975512341190353.Spec : Prop :=
  ∀ n, P13851975512341190353.a n = (A006977 n : ℚ)

end A006977

/-! ## A006977.P4653875043905670420

`abs(A267855(n)/A122803(n))`
-/

namespace A006977.P4653875043905670420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A267855 n : ℚ) / (A122803 n : ℚ)|

end

end A006977.P4653875043905670420

namespace A006977

/-- `abs(A267855(n)/A122803(n))` -/
def P4653875043905670420.Spec : Prop :=
  ∀ n, P4653875043905670420.a n = (A006977 n : ℚ)

end A006977

/-!
# A006978: Successive states of the Rule 110 cellular automaton defined by 000, 001, 010, 011, ..., 111 -> 0,1,1,1,0,1,1,0 when started with a single ON cell.

The programs for A006978, there is no canonical definition to state claims against.
-/

/-! ## A006978.P16783596700053748558

`A117999(n)/2^n`
-/

namespace A006978.P16783596700053748558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117999 n : ℚ) / (2 ^ n : ℚ)

end

end A006978.P16783596700053748558

/-! ## A006978.P8912270818043745241

`floor(A117999(n)/A000079(n))`
-/

namespace A006978.P8912270818043745241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A117999 n : ℚ) / (A000079 n : ℚ)⌋

end

end A006978.P8912270818043745241

/-! ## A006978.P11579915140312631732

`A117999(n)/A000079(n)*char[A255591(n)]`
-/

namespace A006978.P11579915140312631732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117999 n : ℚ) / (A000079 n : ℚ) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A006978.P11579915140312631732

/-! ## A006978.P15963987586429695751

`A117999(n)/A000079(n)*A000040(n+2)%2`
-/

namespace A006978.P15963987586429695751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117999 n : ℚ) / (A000079 n : ℚ) * (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A006978.P15963987586429695751

/-! ## A006978.P10205354703139818776

`A117999(n)/A000079(n)*A014963(12*n+6)`
-/

namespace A006978.P10205354703139818776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117999 n : ℚ) / (A000079 n : ℚ) * (A014963 (12 * n + 6) : ℚ)

end

end A006978.P10205354703139818776

/-! ## A006978.P16457403514550931808

`(A008619(2*n)-n)*A117999(n)/A000079(n)`
-/

namespace A006978.P16457403514550931808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) - (n : ℤ) : ℚ) * ((A117999 n : ℚ) / (A000079 n : ℚ))

end

end A006978.P16457403514550931808

/-! ## A006978.P16104499158915835833

`A309873(A016825(n))+A117999(n)/A000079(n)+1`
-/

namespace A006978.P16104499158915835833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309873 (A016825 n).toNat : ℚ) + ((A117999 n : ℚ) / (A000079 n : ℚ) + 1)

end

end A006978.P16104499158915835833

/-! ## A006978.P13018983467661583680

`1-(A200219(A079068(n+1))-A117999(n)/A000079(n))`
-/

namespace A006978.P13018983467661583680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - ((A200219 (A079068 (n + 1)).toNat : ℚ) - (A117999 n : ℚ) / (A000079 n : ℚ))

end

end A006978.P13018983467661583680

/-! ## A006978.P6648925180209049753

`A117999(n)/A000079(n)*A007318(∑[n])`
-/

namespace A006978.P6648925180209049753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117999 n : ℚ) / (A000079 n : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A006978.P6648925180209049753

/-! ## A006978.P7940142755736074332

`3-(A006530(A065119(n+1))-A117999(n)/A000079(n))`
-/

namespace A006978.P7940142755736074332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 - ((A006530 (A065119 (n + 1)).toNat : ℚ) - (A117999 n : ℚ) / (A000079 n : ℚ))

end

end A006978.P7940142755736074332

/-!
# A006979: a(n) is the number of compositions of n in which the maximum part size is 5.

The programs for A006979, the canonical program `A006979.P6077306593130690930` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006979 has offset 0).

The definition of A006979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006979.P6077306593130690930

`A001591(n+4)-A000078(n+3)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006979

/-- `A001591(n+4)-A000078(n+3)` -/
def P6077306593130690930.Spec : Prop :=
  ∀ n, P6077306593130690930.a n = A006979 n

theorem P6077306593130690930.correct : P6077306593130690930.Spec := by
  intro n
  simp only [A006979]

end A006979

/-! ## A006979.P8813295071911018665

`A001591(n+4)-∑[A001631(n+2)]`
-/

namespace A006979.P8813295071911018665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 4) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006979.P8813295071911018665

namespace A006979

/-- `A001591(n+4)-∑[A001631(n+2)]` -/
def P8813295071911018665.Spec : Prop :=
  ∀ n, P8813295071911018665.a n = A006979 n

end A006979

/-! ## A006979.P14790455260695497972

`Δ[A001949(n+4)]-A000078(n+3)`
-/

namespace A006979.P14790455260695497972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000078 (n + 3)

end

end A006979.P14790455260695497972

namespace A006979

/-- `Δ[A001949(n+4)]-A000078(n+3)` -/
def P14790455260695497972.Spec : Prop :=
  ∀ n, P14790455260695497972.a n = A006979 n

end A006979

/-! ## A006979.P4720351255993430722

`floor(A008619(floor(A002064(n)/9))/9)`
-/

namespace A006979.P4720351255993430722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008619 ⌊(A002064 n : ℚ) / 9⌋.toNat : ℚ) / 9⌋

end

end A006979.P4720351255993430722

namespace A006979

/-- `floor(A008619(floor(A002064(n)/9))/9)` -/
def P4720351255993430722.Spec : Prop :=
  ∀ n, P4720351255993430722.a n = A006979 n

end A006979

/-! ## A006979.P14287956269900445716

`floor(A099346(n+1)/A141223(n+2))`
-/

namespace A006979.P14287956269900445716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099346 (n + 1) : ℚ) / (A141223 (n + 2) : ℚ)⌋

end

end A006979.P14287956269900445716

namespace A006979

/-- `floor(A099346(n+1)/A141223(n+2))` -/
def P14287956269900445716.Spec : Prop :=
  ∀ n, P14287956269900445716.a n = A006979 n

end A006979

/-!
# A006980: Compositions: 6th column of A048004.

The programs for A006980, the canonical program `A006980.P13992170337193083166` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006980 has offset 6).

The definition of A006980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006980.P13992170337193083166

`A001592(n+11)-A001591(n+10)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006980

/-- `A001592(n+11)-A001591(n+10)` -/
def P13992170337193083166.Spec : Prop :=
  ∀ n, P13992170337193083166.a n = A006980 (n + 6)

theorem P13992170337193083166.correct : P13992170337193083166.Spec := by
  intro n
  simp only [A006980, Nat.add_sub_cancel]

end A006980

/-! ## A006980.P5835359068977256957

`A048004(A167499(n+4))`
-/

namespace A006980.P5835359068977256957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (A167499 (n + 4)).toNat

end

end A006980.P5835359068977256957

namespace A006980

/-- `A048004(A167499(n+4))` -/
def P5835359068977256957.Spec : Prop :=
  ∀ n, P5835359068977256957.a n = A006980 (n + 6)

end A006980

/-! ## A006980.P2138945554412875071

`A048004(eq[5, A002262(n)])`
-/

namespace A006980.P2138945554412875071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006980.P2138945554412875071

namespace A006980

/-- `A048004(eq[5, A002262(n)])` -/
def P2138945554412875071.Spec : Prop :=
  ∀ n, P2138945554412875071.a n = A006980 (n + 6)

end A006980

/-! ## A006980.P7212682057064046944

`A048004(A000217(n+5)+5)`
-/

namespace A006980.P7212682057064046944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (A000217 (n + 5) + 5).toNat

end

end A006980.P7212682057064046944

namespace A006980

/-- `A048004(A000217(n+5)+5)` -/
def P7212682057064046944.Spec : Prop :=
  ∀ n, P7212682057064046944.a n = A006980 (n + 6)

end A006980

/-! ## A006980.P11536199564282657469

`A048004(eq[6, A002260(n+1)])`
-/

namespace A006980.P11536199564282657469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A006980.P11536199564282657469

namespace A006980

/-- `A048004(eq[6, A002260(n+1)])` -/
def P11536199564282657469.Spec : Prop :=
  ∀ n, P11536199564282657469.a n = A006980 (n + 6)

end A006980

/-!
# A006981: a(n) is the number of unlabeled modular lattices on n nodes.

The programs for A006981, there is no canonical definition to state claims against.
-/

/-! ## A006981.P8956091090124925961

`A000062(A004111(n^A316081(n)))`
-/

namespace A006981.P8956091090124925961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000062 (A004111 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A316081 n : ℤ))).toNat).toNat

end

end A006981.P8956091090124925961

/-! ## A006981.P13319898454719356111

`A000062(A004111(C(n, A316081(n))))`
-/

namespace A006981.P13319898454719356111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000062 (A004111 (Nat.choose n (A316081 n).toNat)).toNat

end

end A006981.P13319898454719356111

/-! ## A006981.P17628427974724271965

`A096811(A242983(n))+char[10]`
-/

namespace A006981.P17628427974724271965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096811 (A242983 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A006981.P17628427974724271965

/-! ## A006981.P7092259242892891843

`A224782(n)+A096811(A242983(n))`
-/

namespace A006981.P7092259242892891843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 n + A096811 (A242983 n).toNat

end

end A006981.P7092259242892891843

/-! ## A006981.P10850830593030091791

`A000062(A004111(n^A316080(n)))`
-/

namespace A006981.P10850830593030091791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000062 (A004111 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A316080 n : ℤ))).toNat).toNat

end

end A006981.P10850830593030091791

/-!
# A006982: Number of unlabeled distributive lattices on n nodes.

The programs for A006982, there is no canonical definition to state claims against.
-/

/-! ## A006982.P5482641520126171671

`A135665(A215340(n))+1`
-/

namespace A006982.P5482641520126171671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A215340 n).toNat + 1

end

end A006982.P5482641520126171671

/-! ## A006982.P16056549825367445164

`A003056(A001592(n)+A001572(n))`
-/

namespace A006982.P16056549825367445164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001592 n + A001572 n).toNat

end

end A006982.P16056549825367445164

/-! ## A006982.P6679502780241658725

`A003056(A101479(n)+A001572(n))`
-/

namespace A006982.P6679502780241658725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A101479 n + A001572 n).toNat

end

end A006982.P6679502780241658725

/-! ## A006982.P8341166634986577203

`A003056(A213217(n)+A001572(n))`
-/

namespace A006982.P8341166634986577203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A213217 n + A001572 n).toNat

end

end A006982.P8341166634986577203

/-! ## A006982.P6394599676004575896

`A135665(A162787(n+1)+A019497(n))`
-/

namespace A006982.P6394599676004575896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A162787 (n + 1) + A019497 n).toNat

end

end A006982.P6394599676004575896

/-!
# A006983: Number of simple perfect squared squares of order n up to symmetry.

The programs for A006983, there is no canonical definition to state claims against.
-/

/-! ## A006983.P10356223102168153113

`A181735(n+1)-A181340(n+1)`
-/

namespace A006983.P10356223102168153113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) - A181340 (n + 1)

end

end A006983.P10356223102168153113

/-! ## A006983.P13616008057439896304

`A217156(n+1)-A217155(n+1)`
-/

namespace A006983.P13616008057439896304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) - A217155 (n + 1)

end

end A006983.P13616008057439896304

/-! ## A006983.P6783016795149528836

`A181735(n+1)+A057428(n)*A181340(n+1)`
-/

namespace A006983.P6783016795149528836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) + A057428 n * A181340 (n + 1)

end

end A006983.P6783016795149528836

/-! ## A006983.P7092632456852528776

`A217156(n+1)+A057428(n)*A217155(n+1)`
-/

namespace A006983.P7092632456852528776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) + A057428 n * A217155 (n + 1)

end

end A006983.P7092632456852528776

/-! ## A006983.P8624779818514277097

`A181735(n+1)+A181340(n+1)*A260196(n)`
-/

namespace A006983.P8624779818514277097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) + A181340 (n + 1) * A260196 n

end

end A006983.P8624779818514277097

/-!
# A006985: Fibonacci tower: a(n) = F(a(n-1)+2) (there is no room for next term).

The programs for A006985, there is no canonical definition to state claims against.
-/

/-! ## A006985.P5658750923048833125

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=13, a(5)=610`
-/

namespace A006985.P5658750923048833125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 13, 610] fun n a =>
  a (n - 1)

end

end A006985.P5658750923048833125

/-!
# A006987: Binomial coefficients: C(n,k), 2 <= k <= n-2, sorted, duplicates removed.

The programs for A006987, there is no canonical definition to state claims against.
-/

/-! ## A006987.P10730230545934441603

`record[A319382(A323906(n+1))]`
-/

namespace A006987.P10730230545934441603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A323906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P10730230545934441603

/-! ## A006987.P11182958211454838362

`record[A319382(A325810(n+1))]`
-/

namespace A006987.P11182958211454838362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A325810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P11182958211454838362

/-! ## A006987.P15290221232555193064

`record[A319382(n+1)%A319382(n+2)]`
-/

namespace A006987.P15290221232555193064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319382 (n + 1)) (A319382 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P15290221232555193064

/-! ## A006987.P5641793969792188471

`record[A319382(A022911(n+1)-3)]`
-/

namespace A006987.P5641793969792188471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A022911 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P5641793969792188471

/-! ## A006987.P833723891648990117

`record[A319382(A009947(n)+1)]`
-/

namespace A006987.P833723891648990117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A009947 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P833723891648990117

/-! ## A006987.P5966790260098525845

`record[A319382(A026242(n+1))]`
-/

namespace A006987.P5966790260098525845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A026242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P5966790260098525845

/-! ## A006987.P8206531301452868670

`record[A319382(A032742(n+1))]`
-/

namespace A006987.P8206531301452868670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P8206531301452868670

/-! ## A006987.P17955660191581746608

`record[A319382(A203814(n))]`
-/

namespace A006987.P17955660191581746608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A203814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P17955660191581746608

/-! ## A006987.P6618801496147783529

`record[A319382(round(A022911(n+1)/3))]`
-/

namespace A006987.P6618801496147783529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (SequenceMachineLib.roundAway ((A022911 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P6618801496147783529

/-! ## A006987.P11799314979610718608

`record[A319382(A027750(n+1))]`
-/

namespace A006987.P11799314979610718608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319382 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P11799314979610718608

/-! ## A006987.P8849323100255034522

`record[A024746(n+1)*A060576(n)]`
-/

namespace A006987.P8849323100255034522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024746 (n + 1) * A060576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006987.P8849323100255034522

/-! ## A006987.P3131853564038284449

`∪[A024755(n+1), A182237(n+1)]`
-/

namespace A006987.P3131853564038284449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006987.P3131853564038284449

/-! ## A006987.P13476051382920851111

`∪[A182237(n+1), A212794(n+1)]`
-/

namespace A006987.P13476051382920851111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006987.P13476051382920851111

/-! ## A006987.P17362253152915385960

`lt[1, A357327(n+1)]+1`
-/

namespace A006987.P17362253152915385960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A006987.P17362253152915385960

/-! ## A006987.P3807262705468091438

`lt[1, A059233(n+2)]+2`
-/

namespace A006987.P3807262705468091438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059233 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A006987.P3807262705468091438

/-! ## A006987.P12121738107030402194

`lt[A058084(n+1), n]+1`
-/

namespace A006987.P12121738107030402194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A006987.P12121738107030402194

/-! ## A006987.P7444347067331734205

`lt[2, A003016(n*A060576(n))]`
-/

namespace A006987.P7444347067331734205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 ((n : ℤ) * A060576 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A006987.P7444347067331734205

/-! ## A006987.P6714041439421579419

`lt[p?[A003016(2*n)], A003016(n)]`
-/

namespace A006987.P6714041439421579419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A006987.P6714041439421579419

/-!
# A006988: a(n) = (10^n)-th prime.

The programs for A006988, there is no canonical definition to state claims against.
-/

/-! ## A006988.P13749151060171061133

`A347000(A155212(n+5)-1)`
-/

namespace A006988.P13749151060171061133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A155212 (n + 5) - 1).toNat

end

end A006988.P13749151060171061133

/-! ## A006988.P8492884453826876479

`A347000(A052905(n+6)-4)`
-/

namespace A006988.P8492884453826876479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A052905 (n + 6) - 4).toNat

end

end A006988.P8492884453826876479

/-! ## A006988.P11092913930890940688

`A347000(A000217(n+9)-9)`
-/

namespace A006988.P11092913930890940688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A000217 (n + 9) - 9).toNat

end

end A006988.P11092913930890940688

/-! ## A006988.P15344913082877918820

`A347000(A000124(n+8)+n-1)`
-/

namespace A006988.P15344913082877918820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A006988.P15344913082877918820

/-! ## A006988.P4594787250924089594

`A347000(A005408(n)+A167499(n+6)+2)`
-/

namespace A006988.P4594787250924089594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347000 (A005408 n + (A167499 (n + 6) + 2)).toNat

end

end A006988.P4594787250924089594

/-!
# A006989: Log of g.f. of numbers of preferential arrangements.

The programs for A006989, there is no canonical definition to state claims against.
-/

/-! ## A006989.P7579237272177063986

`A004277(A002577(n)-A082495(n+1))-A002577(n)`
-/

namespace A006989.P7579237272177063986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A002577 n - A082495 (n + 1)).toNat - A002577 n

end

end A006989.P7579237272177063986

/-! ## A006989.P17330623463708785883

`A081608(A376787(∑[n]))`
-/

namespace A006989.P17330623463708785883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081608 (A376787 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A006989.P17330623463708785883

/-!
# A006990: Largest prime <= n!.

The programs for A006990, there is no canonical definition to state claims against.
-/

/-! ## A006990.P15928291575770558012

`(n+2)!-A033933(n+2)`
-/

namespace A006990.P15928291575770558012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) - A033933 (n + 2)

end

end A006990.P15928291575770558012

/-! ## A006990.P14054048105312865143

`A000142(n+2)-A033933(n+2)`
-/

namespace A006990.P14054048105312865143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A033933 (n + 2)

end

end A006990.P14054048105312865143

/-! ## A006990.P13117733662734930105

`A037151(n+2)-A058054(n+2)`
-/

namespace A006990.P13117733662734930105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (n + 2) - A058054 (n + 2)

end

end A006990.P13117733662734930105

/-! ## A006990.P593003003276382643

`∏[A020725(n+1)]-A033933(n+2)`
-/

namespace A006990.P593003003276382643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A033933 (n + 2)

end

end A006990.P593003003276382643

/-! ## A006990.P17185678175061864471

`∏[A028310(n+2)]-A033933(n+2)`
-/

namespace A006990.P17185678175061864471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A033933 (n + 2)

end

end A006990.P17185678175061864471

/-! ## A006990.P1951299695397799673

`A037151(n+2)-(A340802(n+2)+1)`
-/

namespace A006990.P1951299695397799673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (n + 2) - (A340802 (n + 2) + 1)

end

end A006990.P1951299695397799673

/-! ## A006990.P6399001752471861234

`A037151(n+2)-A015906(A340802(n+2))`
-/

namespace A006990.P6399001752471861234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (n + 2) - A015906 (A340802 (n + 2)).toNat

end

end A006990.P6399001752471861234

/-!
# A006991: Primitive congruent numbers.

The programs for A006991, there is no canonical definition to state claims against.
-/

/-! ## A006991.P1119679773357520224

`record[∏{p}[A003273(n+1), #]]`
-/

namespace A006991.P1119679773357520224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006991.P1119679773357520224

/-! ## A006991.P4435066918089670874

`record[A007947(A003273(n+1))]`
-/

namespace A006991.P4435066918089670874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006991.P4435066918089670874

/-! ## A006991.P12059474063869676784

`filter[A003273(n+1), A008966(#)]`
-/

namespace A006991.P12059474063869676784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A006991.P12059474063869676784

/-! ## A006991.P5117657745268299697

`∩[A003273(n+1), A005117(n+1)]`
-/

namespace A006991.P5117657745268299697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006991.P5117657745268299697

/-! ## A006991.P5192996205728215804

`∩[A003273(n+1), A144338(n+1)]`
-/

namespace A006991.P5192996205728215804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006991.P5192996205728215804

/-! ## A006991.P7910510793993319405

`∩[A003273(n+1), A167207(n+1)]`
-/

namespace A006991.P7910510793993319405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006991.P7910510793993319405

/-! ## A006991.P5178577688771355653

`∩[A003273(n+1), A210490(n+1)]`
-/

namespace A006991.P5178577688771355653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006991.P5178577688771355653

/-! ## A006991.P18372093590257160206

`eq[A003557(n+1)², A290349(n+1)]+1`
-/

namespace A006991.P18372093590257160206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A006991.P18372093590257160206

/-! ## A006991.P16914955120712085468

`∪[A062695(n+1), A273929(n+1)]`
-/

namespace A006991.P16914955120712085468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006991.P16914955120712085468

/-!
# A006992: Bertrand primes: a(n) is largest prime < 2*a(n-1) for n > 1, with a(1) = 2.

The programs for A006992, there is no canonical definition to state claims against.
-/

/-! ## A006992.P5129338767488330367

`A185231(n+1)`
-/

namespace A006992.P5129338767488330367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 (n + 1)

end

end A006992.P5129338767488330367

/-! ## A006992.P259568074960762187

`record[A185231(abs(1-n))]`
-/

namespace A006992.P259568074960762187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006992.P259568074960762187

/-! ## A006992.P12485377904428122404

`ratio[A185231(n)]*A185231(n)`
-/

namespace A006992.P12485377904428122404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185231 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A185231 n : ℚ)

end

end A006992.P12485377904428122404

/-! ## A006992.P13861132467478046480

`or(A000035(n), A185231(A008620(3*n)))`
-/

namespace A006992.P13861132467478046480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A185231 (A008620 (3 * n)).toNat)

end

end A006992.P13861132467478046480

/-! ## A006992.P1357627143889749205

`A113118(n+2)/2`
-/

namespace A006992.P1357627143889749205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113118 (n + 2) : ℚ) / 2

end

end A006992.P1357627143889749205

/-! ## A006992.P16403447364954299658

`A185231(-xor(n, -1))%A164285(n)`
-/

namespace A006992.P16403447364954299658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185231 (-Int.xor (n : ℤ) (-1)).toNat) (A164285 n)

end

end A006992.P16403447364954299658

/-! ## A006992.P9879394372214921322

`A229607(∑[n]+1)`
-/

namespace A006992.P9879394372214921322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006992.P9879394372214921322

/-! ## A006992.P5980796283054400161

`A380277(∑[n]+1)`
-/

namespace A006992.P5980796283054400161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A006992.P5980796283054400161

/-!
# A006993: n! in base n.

The programs for A006993, there is no canonical definition to state claims against.
-/

/-! ## A006993.P4073638827762855227

`A090695(xor(C(n, 2)+n², ∑[(n+1)²]-n))`
-/

namespace A006993.P4073638827762855227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090695 (Int.xor (Nat.choose n 2 + n ^ 2 : ℤ) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A006993.P4073638827762855227

/-!
# A006995: Binary palindromes: numbers whose binary expansion is palindromic.

The programs for A006995, the canonical program `A006995.P15003658570251687479` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006995 has offset 1).

The definition of A006995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006995.P3558768662231825500

`∑[A164126(A028310(n))]-1`
-/

namespace A006995.P3558768662231825500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006995.P3558768662231825500

namespace A006995

/-- `∑[A164126(A028310(n))]-1` -/
def P3558768662231825500.Spec : Prop :=
  ∀ n, P3558768662231825500.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P15003658570251687479

`∪[A048700(n+1), A048701(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A006995

/-- `∪[A048700(n+1), A048701(n)]` -/
def P15003658570251687479.Spec : Prop :=
  ∀ n, (P15003658570251687479.a n : ℤ) = A006995 (n + 1)

theorem P15003658570251687479.correct : P15003658570251687479.Spec := by
  intro n
  simp only [A006995, Nat.add_sub_cancel]

end A006995

/-! ## A006995.P14608552556514784691

`∪[A007632(n+1), A124334(n+1)]`
-/

namespace A006995.P14608552556514784691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006995.P14608552556514784691

namespace A006995

/-- `∪[A007632(n+1), A124334(n+1)]` -/
def P14608552556514784691.Spec : Prop :=
  ∀ n, (P14608552556514784691.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P15784120387300142876

`∪[A175543(n+1), A175544(n+1)]`
-/

namespace A006995.P15784120387300142876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A006995.P15784120387300142876

namespace A006995

/-- `∪[A175543(n+1), A175544(n+1)]` -/
def P15784120387300142876.Spec : Prop :=
  ∀ n, (P15784120387300142876.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P7092712018595064119

`∑[A164126(n+1)]-A164126(n+1)`
-/

namespace A006995.P7092712018595064119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A164126 (n + 1)

end

end A006995.P7092712018595064119

namespace A006995

/-- `∑[A164126(n+1)]-A164126(n+1)` -/
def P7092712018595064119.Spec : Prop :=
  ∀ n, P7092712018595064119.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P11741194269610320794

`∩[A180204(n+1), A334918(n+1)]`
-/

namespace A006995.P11741194269610320794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006995.P11741194269610320794

namespace A006995

/-- `∩[A180204(n+1), A334918(n+1)]` -/
def P11741194269610320794.Spec : Prop :=
  ∀ n, (P11741194269610320794.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P15710813163102744491

`record[A049776(n+1)-1]`
-/

namespace A006995.P15710813163102744491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006995.P15710813163102744491

namespace A006995

/-- `record[A049776(n+1)-1]` -/
def P15710813163102744491.Spec : Prop :=
  ∀ n, P15710813163102744491.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P7438953424921063698

`sqrt(A192775(n+1))`
-/

namespace A006995.P7438953424921063698
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A192775 (n + 1) : ℝ)

end

end A006995.P7438953424921063698

namespace A006995

/-- `sqrt(A192775(n+1))` -/
def P7438953424921063698.Spec : Prop :=
  ∀ n, P7438953424921063698.a n = (A006995 (n + 1) : ℝ)

end A006995

/-! ## A006995.P7203328467890543125

`filter[A180204(n+1), A379952(#)]`
-/

namespace A006995.P7203328467890543125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A006995.P7203328467890543125

namespace A006995

/-- `filter[A180204(n+1), A379952(#)]` -/
def P7203328467890543125.Spec : Prop :=
  ∀ n, P7203328467890543125.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P17655706671894934075

`record[n-A303534(n)²]`
-/

namespace A006995.P17655706671894934075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A303534 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006995.P17655706671894934075

namespace A006995

/-- `record[n-A303534(n)²]` -/
def P17655706671894934075.Spec : Prop :=
  ∀ n, P17655706671894934075.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P9187257910116929872

`record[n*(1-A178226(n))]`
-/

namespace A006995.P9187257910116929872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A178226 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006995.P9187257910116929872

namespace A006995

/-- `record[n*(1-A178226(n))]` -/
def P9187257910116929872.Spec : Prop :=
  ∀ n, P9187257910116929872.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P2231975142510295467

`record[n*(2-A303536(n))]`
-/

namespace A006995.P2231975142510295467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A303536 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A006995.P2231975142510295467

namespace A006995

/-- `record[n*(2-A303536(n))]` -/
def P2231975142510295467.Spec : Prop :=
  ∀ n, P2231975142510295467.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P14745491282873993840

`filter[A180204(n+1), A152822(#)]`
-/

namespace A006995.P14745491282873993840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A006995.P14745491282873993840

namespace A006995

/-- `filter[A180204(n+1), A152822(#)]` -/
def P14745491282873993840.Spec : Prop :=
  ∀ n, P14745491282873993840.a n = A006995 (n + 1)

end A006995

/-! ## A006995.P4360711466542853188

`eq[0, A178226(n)]`
-/

namespace A006995.P4360711466542853188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006995.P4360711466542853188

namespace A006995

/-- `eq[0, A178226(n)]` -/
def P4360711466542853188.Spec : Prop :=
  ∀ n, (P4360711466542853188.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P12430387950542552198

`eq[0, A303534(n)]`
-/

namespace A006995.P12430387950542552198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A006995.P12430387950542552198

namespace A006995

/-- `eq[0, A303534(n)]` -/
def P12430387950542552198.Spec : Prop :=
  ∀ n, (P12430387950542552198.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P8964835832575911149

`lt[A303536(n), 2]`
-/

namespace A006995.P8964835832575911149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A006995.P8964835832575911149

namespace A006995

/-- `lt[A303536(n), 2]` -/
def P8964835832575911149.Spec : Prop :=
  ∀ n, (P8964835832575911149.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P6801756051876501852

`lt[A303534(abs(n-2*n)), 1]`
-/

namespace A006995.P6801756051876501852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 |(n : ℤ) - (2 * n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A006995.P6801756051876501852

namespace A006995

/-- `lt[A303534(abs(n-2*n)), 1]` -/
def P6801756051876501852.Spec : Prop :=
  ∀ n, (P6801756051876501852.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P522675567326595596

`lt[A001222(A303534(n)+1), 1]`
-/

namespace A006995.P522675567326595596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A303534 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A006995.P522675567326595596

namespace A006995

/-- `lt[A001222(A303534(n)+1), 1]` -/
def P522675567326595596.Spec : Prop :=
  ∀ n, (P522675567326595596.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P9944808874144762383

`eq[n, gcd(n, A264618(n))]`
-/

namespace A006995.P9944808874144762383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A264618 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006995.P9944808874144762383

namespace A006995

/-- `eq[n, gcd(n, A264618(n))]` -/
def P9944808874144762383.Spec : Prop :=
  ∀ n, (P9944808874144762383.a n : ℤ) = A006995 (n + 1)

end A006995

/-! ## A006995.P12466218315623301796

`∩[A057890(n+1), A340718(n)]`
-/

namespace A006995.P12466218315623301796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A006995.P12466218315623301796

namespace A006995

/-- `∩[A057890(n+1), A340718(n)]` -/
def P12466218315623301796.Spec : Prop :=
  ∀ n, (P12466218315623301796.a n : ℤ) = A006995 (n + 1)

end A006995

/-!
# A006996: a(n) = C(2n,n) mod 3.

The programs for A006996, the canonical program `A006996.P11406583703129461400` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006996 has offset 0).

The definition of A006996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006996.P11406583703129461400

`C(2*n, n)%3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A006996

/-- `C(2*n, n)%3` -/
def P11406583703129461400.Spec : Prop :=
  ∀ n, (P11406583703129461400.a n : ℤ) = A006996 n

theorem P11406583703129461400.correct : P11406583703129461400.Spec := by
  intro n
  simp only [A006996]

end A006996

/-! ## A006996.P12195244079880337080

`((n+1)*a(floor(n/3)))%3` with `a(0)=1`
-/

namespace A006996.P12195244079880337080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a ⌊(n : ℚ) / 3⌋.toNat % 3

end

end A006996.P12195244079880337080

namespace A006996

/-- `((n+1)*a(floor(n/3)))%3` -/
def P12195244079880337080.Spec : Prop :=
  ∀ n, (P12195244079880337080.a n : ℤ) = A006996 n

end A006996

/-! ## A006996.P9622137515994899932

`(a(n-1)+a(floor(n/3)))%3` with `a(0)=1`
-/

namespace A006996.P9622137515994899932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a ⌊(n : ℚ) / 3⌋.toNat) % 3

end

end A006996.P9622137515994899932

namespace A006996

/-- `(a(n-1)+a(floor(n/3)))%3` -/
def P9622137515994899932.Spec : Prop :=
  ∀ n, (P9622137515994899932.a n : ℤ) = A006996 n

end A006996

/-! ## A006996.P12371315006765476513

`A005704(n)%3`
-/

namespace A006996.P12371315006765476513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005704 n) 3

end

end A006996.P12371315006765476513

namespace A006996

/-- `A005704(n)%3` -/
def P12371315006765476513.Spec : Prop :=
  ∀ n, P12371315006765476513.a n = A006996 n

end A006996

/-! ## A006996.P4292134723344166232

`A006047(n)%3`
-/

namespace A006996.P4292134723344166232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006047 n) 3

end

end A006996.P4292134723344166232

namespace A006996

/-- `A006047(n)%3` -/
def P4292134723344166232.Spec : Prop :=
  ∀ n, P4292134723344166232.a n = A006996 n

end A006996

/-! ## A006996.P369107449229818226

`A060011(n)%3`
-/

namespace A006996.P369107449229818226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060011 n) 3

end

end A006996.P369107449229818226

namespace A006996

/-- `A060011(n)%3` -/
def P369107449229818226.Spec : Prop :=
  ∀ n, P369107449229818226.a n = A006996 n

end A006996

/-! ## A006996.P2113899689185930026

`A151668(n)%3`
-/

namespace A006996.P2113899689185930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151668 n) 3

end

end A006996.P2113899689185930026

namespace A006996

/-- `A151668(n)%3` -/
def P2113899689185930026.Spec : Prop :=
  ∀ n, P2113899689185930026.a n = A006996 n

end A006996

/-! ## A006996.P2933112717493297895

`A385859(n)%3`
-/

namespace A006996.P2933112717493297895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385859 n) 3

end

end A006996.P2933112717493297895

namespace A006996

/-- `A385859(n)%3` -/
def P2933112717493297895.Spec : Prop :=
  ∀ n, P2933112717493297895.a n = A006996 n

end A006996

/-! ## A006996.P6144360006492744560

`sqrt(A151672(n))%3`
-/

namespace A006996.P6144360006492744560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A151672 n : ℝ))) 3

end

end A006996.P6144360006492744560

namespace A006996

/-- `sqrt(A151672(n))%3` -/
def P6144360006492744560.Spec : Prop :=
  ∀ n, P6144360006492744560.a n = A006996 n

end A006996

/-! ## A006996.P15107618416482449520

`∑[A062051(n)]%3`
-/

namespace A006996.P15107618416482449520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A006996.P15107618416482449520

namespace A006996

/-- `∑[A062051(n)]%3` -/
def P15107618416482449520.Spec : Prop :=
  ∀ n, P15107618416482449520.a n = A006996 n

end A006996

/-! ## A006996.P2534846201421861506

`A039970(6*n+1)`
-/

namespace A006996.P2534846201421861506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (6 * n + 1)

end

end A006996.P2534846201421861506

namespace A006996

/-- `A039970(6*n+1)` -/
def P2534846201421861506.Spec : Prop :=
  ∀ n, P2534846201421861506.a n = A006996 n

end A006996

/-! ## A006996.P12951786766383969395

`val(A120879(n)+1, 2)`
-/

namespace A006996.P12951786766383969395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120879 n + 1).toNat 2

end

end A006996.P12951786766383969395

namespace A006996

/-- `val(A120879(n)+1, 2)` -/
def P12951786766383969395.Spec : Prop :=
  ∀ n, (P12951786766383969395.a n : ℤ) = A006996 n

end A006996

/-! ## A006996.P5185009783812199480

`(1-A189820(n+1))*gcd(2, n+1)`
-/

namespace A006996.P5185009783812199480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189820 (n + 1)) * (Nat.gcd 2 (n + 1) : ℤ)

end

end A006996.P5185009783812199480

namespace A006996

/-- `(1-A189820(n+1))*gcd(2, n+1)` -/
def P5185009783812199480.Spec : Prop :=
  ∀ n, P5185009783812199480.a n = A006996 n

end A006996

/-! ## A006996.P17596229304849242672

`A010872(A006047(n))`
-/

namespace A006996.P17596229304849242672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A006047 n).toNat

end

end A006996.P17596229304849242672

namespace A006996

/-- `A010872(A006047(n))` -/
def P17596229304849242672.Spec : Prop :=
  ∀ n, P17596229304849242672.a n = A006996 n

end A006996

/-! ## A006996.P4316586877599497518

`A096271(A120879(n))`
-/

namespace A006996.P4316586877599497518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (A120879 n).toNat

end

end A006996.P4316586877599497518

namespace A006996

/-- `A096271(A120879(n))` -/
def P4316586877599497518.Spec : Prop :=
  ∀ n, P4316586877599497518.a n = A006996 n

end A006996

/-! ## A006996.P1333191518984641990

`A000034(n)*A039966(n)`
-/

namespace A006996.P1333191518984641990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A039966 n

end

end A006996.P1333191518984641990

namespace A006996

/-- `A000034(n)*A039966(n)` -/
def P1333191518984641990.Spec : Prop :=
  ∀ n, P1333191518984641990.a n = A006996 n

end A006996

/-! ## A006996.P4186697540515427710

`A039966(n)*A071222(n)`
-/

namespace A006996.P4186697540515427710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A071222 n

end

end A006996.P4186697540515427710

namespace A006996

/-- `A039966(n)*A071222(n)` -/
def P4186697540515427710.Spec : Prop :=
  ∀ n, P4186697540515427710.a n = A006996 n

end A006996

/-! ## A006996.P13792829881542609235

`A039966(n)*A105969(n)`
-/

namespace A006996.P13792829881542609235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n * A105969 n

end

end A006996.P13792829881542609235

namespace A006996

/-- `A039966(n)*A105969(n)` -/
def P13792829881542609235.Spec : Prop :=
  ∀ n, P13792829881542609235.a n = A006996 n

end A006996

/-! ## A006996.P10331656477166598011

`and(A000034(n), A117940(n))`
-/

namespace A006996.P10331656477166598011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A117940 n)

end

end A006996.P10331656477166598011

namespace A006996

/-- `and(A000034(n), A117940(n))` -/
def P10331656477166598011.Spec : Prop :=
  ∀ n, P10331656477166598011.a n = A006996 n

end A006996

/-! ## A006996.P2761429338430535690

`and(A010687(n), A117940(n))`
-/

namespace A006996.P2761429338430535690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010687 n) (A117940 n)

end

end A006996.P2761429338430535690

namespace A006996

/-- `and(A010687(n), A117940(n))` -/
def P2761429338430535690.Spec : Prop :=
  ∀ n, P2761429338430535690.a n = A006996 n

end A006996

/-!
# A006997: Partitioning integers to avoid arithmetic progressions of length 3.

The programs for A006997, there is no canonical definition to state claims against.
-/

/-! ## A006997.P11646195893172919321

`A100480(n+1)-1`
-/

namespace A006997.P11646195893172919321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1) - 1

end

end A006997.P11646195893172919321

/-! ## A006997.P3299121965443943748

`A023443(A100480(n+1))`
-/

namespace A006997.P3299121965443943748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100480 (n + 1)).toNat

end

end A006997.P3299121965443943748

/-! ## A006997.P14888732802384678968

`A259361(A100480(n+1)²)`
-/

namespace A006997.P14888732802384678968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A100480 (n + 1) ^ 2).toNat

end

end A006997.P14888732802384678968

/-! ## A006997.P3815467365471105172

`A279119(2*A100480(n+1))`
-/

namespace A006997.P3815467365471105172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A100480 (n + 1)).toNat

end

end A006997.P3815467365471105172

/-! ## A006997.P1000277530659442417

`A279119(A100480(n+1)+A100480(n+1))`
-/

namespace A006997.P1000277530659442417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A100480 (n + 1) + A100480 (n + 1)).toNat

end

end A006997.P1000277530659442417

/-! ## A006997.P13616376629744900045

`A152163(Δ[A001952(n+1)])+A100480(n+1)`
-/

namespace A006997.P13616376629744900045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (f1 (n + 1) - f1 n).toNat + A100480 (n + 1)

end

end A006997.P13616376629744900045

/-! ## A006997.P7536251308802489243

`A200748(n)%A100480(n+1)`
-/

namespace A006997.P7536251308802489243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A100480 (n + 1))

end

end A006997.P7536251308802489243

/-! ## A006997.P7308834419931208594

`A117010(n+1)%A100480(n+1)`
-/

namespace A006997.P7308834419931208594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A100480 (n + 1))

end

end A006997.P7308834419931208594

/-! ## A006997.P13157740885284929262

`A165326(A249242(n+1))+A100480(n+1)`
-/

namespace A006997.P13157740885284929262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A249242 (n + 1)).toNat + A100480 (n + 1)

end

end A006997.P13157740885284929262

/-! ## A006997.P7651951767574950499

`A083800(n+1)%A100480(n+1)`
-/

namespace A006997.P7651951767574950499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A100480 (n + 1))

end

end A006997.P7651951767574950499

/-! ## A006997.P3827225455276949312

`A070198(n)%A100480(n+1)`
-/

namespace A006997.P3827225455276949312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A100480 (n + 1))

end

end A006997.P3827225455276949312

/-! ## A006997.P1533583296925086500

`A079782(n+1)%A100480(n+1)`
-/

namespace A006997.P1533583296925086500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A100480 (n + 1))

end

end A006997.P1533583296925086500

/-! ## A006997.P14355895588781274778

`A083685(n+1)%A100480(n+1)`
-/

namespace A006997.P14355895588781274778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A100480 (n + 1))

end

end A006997.P14355895588781274778

/-! ## A006997.P14482820588650454033

`A121934(n+1)%A100480(n+1)`
-/

namespace A006997.P14482820588650454033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A100480 (n + 1))

end

end A006997.P14482820588650454033

/-! ## A006997.P2078928455721096414

`A008619(A268811(3*n+1))-A000035(A261141(n+1))`
-/

namespace A006997.P2078928455721096414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A268811 (3 * n + 1)).toNat - A000035 (A261141 (n + 1)).toNat

end

end A006997.P2078928455721096414

/-! ## A006997.P17725522322856849821

`A008619(A268811(3*n+1))-A051953(A061400(n+1))`
-/

namespace A006997.P17725522322856849821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A268811 (3 * n + 1)).toNat - A051953 (A061400 (n + 1)).toNat

end

end A006997.P17725522322856849821

/-! ## A006997.P16609214767896395674

`A008619(A268811(3*n+1))-A051953(A112928(n+1))`
-/

namespace A006997.P16609214767896395674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A268811 (3 * n + 1)).toNat - A051953 (A112928 (n + 1)).toNat

end

end A006997.P16609214767896395674

/-! ## A006997.P16403031507323330635

`A002262(A100480(n+1)+A000096(n))`
-/

namespace A006997.P16403031507323330635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A100480 (n + 1) + A000096 n).toNat

end

end A006997.P16403031507323330635

/-! ## A006997.P10912638611804918441

`A030494(n+1)%A100480(n+1)`
-/

namespace A006997.P10912638611804918441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A100480 (n + 1))

end

end A006997.P10912638611804918441

/-! ## A006997.P11730489643188992133

`A072828(n+1)%A100480(n+1)`
-/

namespace A006997.P11730489643188992133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A100480 (n + 1))

end

end A006997.P11730489643188992133

/-!
# A006998: Partitioning integers to avoid arithmetic progressions of length 3.

The programs for A006998, the canonical program `A006998.P18023420003871036434` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006998 has offset 0).

The definition of A006998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A006998.P18023420003871036434

`a(A004396(n))+a(A004523(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006998

/-- `a(A004396(n))+a(A004523(n))` -/
def P18023420003871036434.Spec : Prop :=
  ∀ n, (P18023420003871036434.a n : ℤ) = A006998 n

theorem P18023420003871036434.correct : P18023420003871036434.Spec := by
  intro n
  simp only [A006998]

end A006998

/-! ## A006998.P13687281916596898346

`eq[A242869(n), A284504(A152205(n+1))]`
-/

namespace A006998.P13687281916596898346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284504 (A152205 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A006998.P13687281916596898346

namespace A006998

/-- `eq[A242869(n), A284504(A152205(n+1))]` -/
def P13687281916596898346.Spec : Prop :=
  ∀ n, (P13687281916596898346.a n : ℤ) = A006998 n

end A006998

/-! ## A006998.P551902969411598953

`A275692(A073491(n+1)%A024780(n+1))`
-/

namespace A006998.P551902969411598953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275692 (Int.tmod (A073491 (n + 1)) (A024780 (n + 1))).toNat

end

end A006998.P551902969411598953

namespace A006998

/-- `A275692(A073491(n+1)%A024780(n+1))` -/
def P551902969411598953.Spec : Prop :=
  ∀ n, P551902969411598953.a n = A006998 n

end A006998

/-! ## A006998.P5739387789379176477

`A275692(A342191(n+1))%A092050(n+1)`
-/

namespace A006998.P5739387789379176477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275692 (A342191 (n + 1)).toNat) (A092050 (n + 1))

end

end A006998.P5739387789379176477

namespace A006998

/-- `A275692(A342191(n+1))%A092050(n+1)` -/
def P5739387789379176477.Spec : Prop :=
  ∀ n, P5739387789379176477.a n = A006998 n

end A006998

/-! ## A006998.P9858258402892710140

`A275692(A342191(n+1)%A320462(3*(n+1)))`
-/

namespace A006998.P9858258402892710140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275692 (Int.tmod (A342191 (n + 1)) (A320462 (3 * (n + 1)))).toNat

end

end A006998.P9858258402892710140

namespace A006998

/-- `A275692(A342191(n+1)%A320462(3*(n+1)))` -/
def P9858258402892710140.Spec : Prop :=
  ∀ n, P9858258402892710140.a n = A006998 n

end A006998

/-!
# A006999: Partitioning integers to avoid arithmetic progressions of length 3.

The programs for A006999, the canonical program `A006999.P3401224636589051846` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A006999 has offset 0).

The definition of A006999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A006999.P3401224636589051846

`A061419(n+1)-1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A006999

/-- `A061419(n+1)-1` -/
def P3401224636589051846.Spec : Prop :=
  ∀ n, P3401224636589051846.a n = A006999 n

theorem P3401224636589051846.correct : P3401224636589051846.Spec := by
  intro n
  simp only [A006999]

end A006999

/-! ## A006999.P5837626404070137298

`A061418(n+1)-2`
-/

namespace A006999.P5837626404070137298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061418 (n + 1) - 2

end

end A006999.P5837626404070137298

namespace A006999

/-- `A061418(n+1)-2` -/
def P5837626404070137298.Spec : Prop :=
  ∀ n, P5837626404070137298.a n = A006999 n

end A006999

/-! ## A006999.P7214835014795751558

`floor((3*a(n-1)+2)/2)` with `a(0)=0`
-/

namespace A006999.P7214835014795751558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(3 * a (n - 1) + 2 : ℚ) / 2⌋

end

end A006999.P7214835014795751558

namespace A006999

/-- `floor((3*a(n-1)+2)/2)` -/
def P7214835014795751558.Spec : Prop :=
  ∀ n, P7214835014795751558.a n = A006999 n

end A006999

/-! ## A006999.P5013284069461571840

`A006997(3^n-1)`
-/

namespace A006999.P5013284069461571840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 (3 ^ n - 1)

end

end A006999.P5013284069461571840

namespace A006999

/-- `A006997(3^n-1)` -/
def P5013284069461571840.Spec : Prop :=
  ∀ n, P5013284069461571840.a n = A006999 n

end A006999

/-! ## A006999.P13016286286464500265

`floor(a(n-1)/(1-1/3))+1` with `a(0)=0`
-/

namespace A006999.P13016286286464500265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / (1 - (1 : ℚ) / 3)⌋ + 1

end

end A006999.P13016286286464500265

namespace A006999

/-- `floor(a(n-1)/(1-1/3))+1` -/
def P13016286286464500265.Spec : Prop :=
  ∀ n, P13016286286464500265.a n = A006999 n

end A006999

/-! ## A006999.P18080923751018794121

`1-floor((1-a(n-1))/2-a(n-1))` with `a(0)=0`
-/

namespace A006999.P18080923751018794121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ⌊(1 - a (n - 1) : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A006999.P18080923751018794121

namespace A006999

/-- `1-floor((1-a(n-1))/2-a(n-1))` -/
def P18080923751018794121.Spec : Prop :=
  ∀ n, P18080923751018794121.a n = A006999 n

end A006999

/-! ## A006999.P3352473607885261787

`(a(n-1)-a(n-1)%2)/2+a(n-1)+1` with `a(0)=0`
-/

namespace A006999.P3352473607885261787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2 + (a (n - 1) + 1)

end

end A006999.P3352473607885261787

namespace A006999

/-- `(a(n-1)-a(n-1)%2)/2+a(n-1)+1` -/
def P3352473607885261787.Spec : Prop :=
  ∀ n, P3352473607885261787.a n = (A006999 n : ℚ)

end A006999

/-! ## A006999.P1924960422698611019

`A003312(n+1)-3`
-/

namespace A006999.P1924960422698611019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003312 (n + 1) - 3

end

end A006999.P1924960422698611019

namespace A006999

/-- `A003312(n+1)-3` -/
def P1924960422698611019.Spec : Prop :=
  ∀ n, P1924960422698611019.a n = A006999 n

theorem P1924960422698611019.correct : P1924960422698611019.Spec := by
  intro n
  simp only [A006999, Nat.add_sub_cancel, A006999.P1924960422698611019.a, A006999.P3401224636589051846.a, A003312, A003312.P15694996587841724422.a, A061419, A061419.P18372017784538588970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006999

/-! ## A006999.P4349396457811967775

`∑[A073941(n+1)]-1`
-/

namespace A006999.P4349396457811967775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006999.P4349396457811967775

namespace A006999

/-- `∑[A073941(n+1)]-1` -/
def P4349396457811967775.Spec : Prop :=
  ∀ n, P4349396457811967775.a n = A006999 n

end A006999

/-! ## A006999.P1867696181641467397

`∑[A005428(abs(1-n))]-1`
-/

namespace A006999.P1867696181641467397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006999.P1867696181641467397

namespace A006999

/-- `∑[A005428(abs(1-n))]-1` -/
def P1867696181641467397.Spec : Prop :=
  ∀ n, P1867696181641467397.a n = A006999 n

end A006999

/-! ## A006999.P2688592201187045036

`∑[A081848(n+1)/3]-1`
-/

namespace A006999.P2688592201187045036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081848 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A006999.P2688592201187045036

namespace A006999

/-- `∑[A081848(n+1)/3]-1` -/
def P2688592201187045036.Spec : Prop :=
  ∀ n, P2688592201187045036.a n = (A006999 n : ℚ)

end A006999

/-! ## A006999.P2908381875544658098

`A081848(n+1)-(A304273(n+1)+1)`
-/

namespace A006999.P2908381875544658098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081848 (n + 1) - (A304273 (n + 1) + 1)

end

end A006999.P2908381875544658098

namespace A006999

/-- `A081848(n+1)-(A304273(n+1)+1)` -/
def P2908381875544658098.Spec : Prop :=
  ∀ n, P2908381875544658098.a n = A006999 n

end A006999

/-! ## A006999.P1303143892174442840

`1-floor((1-3*a(n-1))/2)` with `a(0)=0`
-/

namespace A006999.P1303143892174442840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ⌊(1 - 3 * a (n - 1) : ℚ) / 2⌋

end

end A006999.P1303143892174442840

namespace A006999

/-- `1-floor((1-3*a(n-1))/2)` -/
def P1303143892174442840.Spec : Prop :=
  ∀ n, P1303143892174442840.a n = A006999 n

end A006999

/-! ## A006999.P12919119332089988726

`(gcd(2, a(n-1))+3*a(n-1))/2` with `a(0)=0`
-/

namespace A006999.P12919119332089988726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + 3 * a (n - 1)) / 2

end

end A006999.P12919119332089988726

namespace A006999

/-- `(gcd(2, a(n-1))+3*a(n-1))/2` -/
def P12919119332089988726.Spec : Prop :=
  ∀ n, P12919119332089988726.a n = (A006999 n : ℚ)

end A006999

/-! ## A006999.P3278338162337430864

`A305498(n+1)/2-1`
-/

namespace A006999.P3278338162337430864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305498 (n + 1) : ℚ) / 2 - 1

end

end A006999.P3278338162337430864

namespace A006999

/-- `A305498(n+1)/2-1` -/
def P3278338162337430864.Spec : Prop :=
  ∀ n, P3278338162337430864.a n = (A006999 n : ℚ)

theorem P3278338162337430864.correct : P3278338162337430864.Spec := by
  intro n
  simp only [A006999, Nat.add_sub_cancel, A006999.P3278338162337430864.a, A006999.P3401224636589051846.a, A061419, A061419.P18372017784538588970.a, A305498, A305498.P10132958174563949694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A006999

/-! ## A006999.P15486315115911253818

`floor((A070885(n+1)-1)/2)`
-/

namespace A006999.P15486315115911253818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070885 (n + 1) - 1 : ℚ) / 2⌋

end

end A006999.P15486315115911253818

namespace A006999

/-- `floor((A070885(n+1)-1)/2)` -/
def P15486315115911253818.Spec : Prop :=
  ∀ n, P15486315115911253818.a n = A006999 n

end A006999

/-! ## A006999.P6208590553658098002

`A305498(n+1)%A061418(n+1)`
-/

namespace A006999.P6208590553658098002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305498 (n + 1)) (A061418 (n + 1))

end

end A006999.P6208590553658098002

namespace A006999

/-- `A305498(n+1)%A061418(n+1)` -/
def P6208590553658098002.Spec : Prop :=
  ∀ n, P6208590553658098002.a n = A006999 n

end A006999

/-! ## A006999.P720767331400597388

`floor(A305497(n+1)/3)`
-/

namespace A006999.P720767331400597388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A305497 (n + 1) : ℚ) / 3⌋

end

end A006999.P720767331400597388

namespace A006999

/-- `floor(A305497(n+1)/3)` -/
def P720767331400597388.Spec : Prop :=
  ∀ n, P720767331400597388.a n = A006999 n

end A006999

/-! ## A006999.P1957223611749730195

`A070885(n+2)/3-1`
-/

namespace A006999.P1957223611749730195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070885 (n + 2) : ℚ) / 3 - 1

end

end A006999.P1957223611749730195

namespace A006999

/-- `A070885(n+2)/3-1` -/
def P1957223611749730195.Spec : Prop :=
  ∀ n, P1957223611749730195.a n = (A006999 n : ℚ)

end A006999

/-! ## A006999.P13695991355088774221

`(A304025(n+1)-2)/3`
-/

namespace A006999.P13695991355088774221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304025 (n + 1) - 2 : ℚ) / 3

end

end A006999.P13695991355088774221

namespace A006999

/-- `(A304025(n+1)-2)/3` -/
def P13695991355088774221.Spec : Prop :=
  ∀ n, P13695991355088774221.a n = (A006999 n : ℚ)

end A006999

