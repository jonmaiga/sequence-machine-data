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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A068200: One of a family of sequences that interpolates between the Bell numbers and the factorials.

The programs for A068200, there is no canonical definition to state claims against.
-/

/-! ## A068200.P6587793370782812108

`∑[A004523((n+4)*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A068200.P6587793370782812108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A004523 ((n + 4 : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068200.P6587793370782812108

/-! ## A068200.P6051229643322403323

`A245092((n+1)*A369832(n))`
-/

namespace A068200.P6051229643322403323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((n + 1 : ℤ) * A369832 n).toNat

end

end A068200.P6051229643322403323

/-! ## A068200.P8494272292617990789

`A004526(A152366(n+1)+A152347(n+1))`
-/

namespace A068200.P8494272292617990789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152366 (n + 1) + A152347 (n + 1)).toNat

end

end A068200.P8494272292617990789

/-!
# A068201: One of a family of sequences that interpolates between the Bell numbers and the factorials.

The programs for A068201, there is no canonical definition to state claims against.
-/

/-! ## A068201.P14469738750561001821

`A189848(lcm(n+1, ∏{e}[n+1, #]))`
-/

namespace A068201.P14469738750561001821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189848 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A068201.P14469738750561001821

/-! ## A068201.P8435963719997300228

`∑[A071324(A188914(n))]`
-/

namespace A068201.P8435963719997300228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (A188914 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068201.P8435963719997300228

/-! ## A068201.P8278384177726191518

`A028310(A189285(n+1))`
-/

namespace A068201.P8278384177726191518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A189285 (n + 1)).toNat

end

end A068201.P8278384177726191518

/-!
# A068202: Next-to-middle coefficient in expansion of Product_{k=1..n} (1 + x^k).

The programs for A068202, there is no canonical definition to state claims against.
-/

/-! ## A068202.P5306965831880184671

`A113037(n+1)+A113036(n+1)`
-/

namespace A068202.P5306965831880184671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113037 (n + 1) + A113036 (n + 1)

end

end A068202.P5306965831880184671

/-! ## A068202.P13273155939412216734

`floor(root(A084965(n), 5)-C(2, n+2))`
-/

namespace A068202.P13273155939412216734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084965 n : ℝ) ^ (1 / (5 : ℝ)) - (Nat.choose 2 (n + 2) : ℝ)⌋

end

end A068202.P13273155939412216734

/-! ## A068202.P11337754511455312447

`A259361(∑[A148023(n)])`
-/

namespace A068202.P11337754511455312447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068202.P11337754511455312447

/-! ## A068202.P4076986403841016014

`A338236(A303117(n)+4*n)`
-/

namespace A068202.P4076986403841016014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338236 (A303117 n + (4 * n : ℤ)).toNat

end

end A068202.P4076986403841016014

/-! ## A068202.P1248707713513811127

`A000196(A309505(n+1)+n-1)`
-/

namespace A068202.P1248707713513811127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A309505 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A068202.P1248707713513811127

/-!
# A068203: Chebyshev T-polynomials T(n,15) with Diophantine property.

The programs for A068203, the canonical program `A068203.P6636843592554519852` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068203 has offset 0).

The definition of A068203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068203.P6636843592554519852

`30*a(n-1)-a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068203

/-- `30*a(n-1)-a(n-2)` -/
def P6636843592554519852.Spec : Prop :=
  ∀ n, P6636843592554519852.a n = A068203 n

theorem P6636843592554519852.correct : P6636843592554519852.Spec := by
  intro n
  simp only [A068203]

end A068203

/-! ## A068203.P15029113989313834121

`((15+4*sqrt(14))^n+(15-4*sqrt(14))^n)/2`
-/

namespace A068203.P15029113989313834121
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((15 + 4 * Real.sqrt (14 : ℝ)) ^ n + (15 - 4 * Real.sqrt (14 : ℝ)) ^ n) / 2

end

end A068203.P15029113989313834121

namespace A068203

/-- `((15+4*sqrt(14))^n+(15-4*sqrt(14))^n)/2` -/
def P15029113989313834121.Spec : Prop :=
  ∀ n, P15029113989313834121.a n = (A068203 n : ℝ)

theorem P15029113989313834121.correct : P15029113989313834121.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A068203, Nat.add_sub_cancel, A068203.P15029113989313834121.a, A068203.P6636843592554519852.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A068203, Nat.add_sub_cancel, A068203.P15029113989313834121.a, A068203.P6636843592554519852.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068203

/-! ## A068203.P3749869907849751637

`2*A322709(n)+1`
-/

namespace A068203.P3749869907849751637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322709 n + 1

end

end A068203.P3749869907849751637

namespace A068203

/-- `2*A322709(n)+1` -/
def P3749869907849751637.Spec : Prop :=
  ∀ n, P3749869907849751637.a n = A068203 n

end A068203

/-! ## A068203.P18241203823576130246

`or(2*A322709(n), A033999(2*n))`
-/

namespace A068203.P18241203823576130246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A322709 n) (A033999 (2 * n))

end

end A068203.P18241203823576130246

namespace A068203

/-- `or(2*A322709(n), A033999(2*n))` -/
def P18241203823576130246.Spec : Prop :=
  ∀ n, P18241203823576130246.a n = A068203 n

end A068203

/-! ## A068203.P3442560364457140066

`A041418(2*n+1)-A041418(2*n)`
-/

namespace A068203.P3442560364457140066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041418 (2 * n + 1) - A041418 (2 * n)

end

end A068203.P3442560364457140066

namespace A068203

/-- `A041418(2*n+1)-A041418(2*n)` -/
def P3442560364457140066.Spec : Prop :=
  ∀ n, P3442560364457140066.a n = A068203 n

end A068203

/-! ## A068203.P18426117541321778483

`A041096(2*n+1)-2*A041096(2*n)`
-/

namespace A068203.P18426117541321778483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041096 (2 * n + 1) - 2 * A041096 (2 * n)

end

end A068203.P18426117541321778483

namespace A068203

/-- `A041096(2*n+1)-2*A041096(2*n)` -/
def P18426117541321778483.Spec : Prop :=
  ∀ n, P18426117541321778483.a n = A068203 n

end A068203

/-! ## A068203.P10536651391392971068

`A322790(eq[8, A002260(n+1)])`
-/

namespace A068203.P10536651391392971068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068203.P10536651391392971068

namespace A068203

/-- `A322790(eq[8, A002260(n+1)])` -/
def P10536651391392971068.Spec : Prop :=
  ∀ n, P10536651391392971068.a n = A068203 n

end A068203

/-!
# A068204: Let (x_n, y_n) be n-th solution to the Pell equation x^2 = 14*y^2 + 1. Sequence gives {y_n}.

The programs for A068204, the canonical program `A068204.P5055730914267291819` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068204 has offset 1).

The definition of A068204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068204.P5055730914267291819

`30*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068204

/-- `30*a(n-1)-a(n-2)` -/
def P5055730914267291819.Spec : Prop :=
  ∀ n, P5055730914267291819.a n = A068204 (n + 1)

theorem P5055730914267291819.correct : P5055730914267291819.Spec := by
  intro n
  simp only [A068204, Nat.add_sub_cancel]

end A068204

/-! ## A068204.P11779069339397092840

`((15+4*sqrt(14))^n-(15-4*sqrt(14))^n)/28*sqrt(14)`
-/

namespace A068204.P11779069339397092840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((15 + 4 * Real.sqrt (14 : ℝ)) ^ n - (15 - 4 * Real.sqrt (14 : ℝ)) ^ n) / 28 * Real.sqrt (14 : ℝ)

end

end A068204.P11779069339397092840

namespace A068204

/-- `((15+4*sqrt(14))^n-(15-4*sqrt(14))^n)/28*sqrt(14)` -/
def P11779069339397092840.Spec : Prop :=
  ∀ n, P11779069339397092840.a n = (A068204 (n + 1) : ℝ)

theorem P11779069339397092840.correct : P11779069339397092840.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A068204, Nat.add_sub_cancel, A068204.P11779069339397092840.a, A068204.P5055730914267291819.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A068204, Nat.add_sub_cancel, A068204.P11779069339397092840.a, A068204.P5055730914267291819.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068204

/-! ## A068204.P16854483367517205014

`record[A295337(n)-A041021(n)]`
-/

namespace A068204.P16854483367517205014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295337 n - A041021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068204.P16854483367517205014

namespace A068204

/-- `record[A295337(n)-A041021(n)]` -/
def P16854483367517205014.Spec : Prop :=
  ∀ n, P16854483367517205014.a n = A068204 (n + 1)

end A068204

/-! ## A068204.P13321434410340740468

`record[Δ[A052928(n)]*A041097(n)]`
-/

namespace A068204.P13321434410340740468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A041097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068204.P13321434410340740468

namespace A068204

/-- `record[Δ[A052928(n)]*A041097(n)]` -/
def P13321434410340740468.Spec : Prop :=
  ∀ n, P13321434410340740468.a n = A068204 (n + 1)

end A068204

/-! ## A068204.P6858853766901506687

`record[A048911(n+1)%A041419(n)]`
-/

namespace A068204.P6858853766901506687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048911 (n + 1)) (A041419 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068204.P6858853766901506687

namespace A068204

/-- `record[A048911(n+1)%A041419(n)]` -/
def P6858853766901506687.Spec : Prop :=
  ∀ n, P6858853766901506687.a n = A068204 (n + 1)

end A068204

/-! ## A068204.P15913746758163842781

`A048911(2*n+1)-A041419(2*n)`
-/

namespace A068204.P15913746758163842781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048911 (2 * n + 1) - A041419 (2 * n)

end

end A068204.P15913746758163842781

namespace A068204

/-- `A048911(2*n+1)-A041419(2*n)` -/
def P15913746758163842781.Spec : Prop :=
  ∀ n, P15913746758163842781.a n = A068204 (n + 1)

end A068204

/-! ## A068204.P3047033971979055810

`A041021(4*n+1)-A041021(4*n)`
-/

namespace A068204.P3047033971979055810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041021 (4 * n + 1) - A041021 (4 * n)

end

end A068204.P3047033971979055810

namespace A068204

/-- `A041021(4*n+1)-A041021(4*n)` -/
def P3047033971979055810.Spec : Prop :=
  ∀ n, P3047033971979055810.a n = A068204 (n + 1)

end A068204

/-!
# A068205: Denominator of S(n)/Pi^n, where S(n) = Sum((4k+1)^(-n),k,-inf,+inf).

The programs for A068205, there is no canonical definition to state claims against.
-/

/-! ## A068205.P5875253561883378600

`4*A050971(n+1)`
-/

namespace A068205.P5875253561883378600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A050971 (n + 1)

end

end A068205.P5875253561883378600

/-! ## A068205.P10700018117546583351

`4*A004731(A141310(n)+n)*A046983(n)`
-/

namespace A068205.P10700018117546583351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A004731 (A141310 n + (n : ℤ)).toNat * A046983 n)

end

end A068205.P10700018117546583351

/-! ## A068205.P3866769689749798183

`4*A000165(n)/gcd(A000111(n), A000165(n))`
-/

namespace A068205.P3866769689749798183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A000165 n : ℚ) / (Int.gcd (A000111 n) (A000165 n) : ℚ))

end

end A068205.P3866769689749798183

/-! ## A068205.P10688978047878895235

`4*A050970(n+1)/A000111(n)*A000165(n)`
-/

namespace A068205.P10688978047878895235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A050970 (n + 1) : ℚ) / (A000111 n : ℚ) * (A000165 n : ℚ))

end

end A068205.P10688978047878895235

/-! ## A068205.P962794844586068084

`4*lcm(A000165(n), A099612(n))/A000111(n)`
-/

namespace A068205.P962794844586068084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((Int.lcm (A000165 n) (A099612 n) : ℚ) / (A000111 n : ℚ))

end

end A068205.P962794844586068084

/-!
# A068206: Let N(2n) denote the numerator of B(2n), the 2n-th Bernoulli number and D(2n) the denominator; sequence gives values of n such that gcd(N(2n),D(2n-2))=7.

The programs for A068206, there is no canonical definition to state claims against.
-/

/-! ## A068206.P10952711705475371723

`A139607(record[A181834(n)])`
-/

namespace A068206.P10952711705475371723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068206.P10952711705475371723

/-! ## A068206.P13548590309533719619

`A139607(lt[A077762(n+1), A356838(n+2)])`
-/

namespace A068206.P13548590309533719619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356838 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068206.P13548590309533719619

/-! ## A068206.P1278676339219349099

`A139607(record[A079294(n)])`
-/

namespace A068206.P1278676339219349099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A068206.P1278676339219349099

/-! ## A068206.P1305654250144192262

`A139607(eq[A108886(n), A275065(n)])`
-/

namespace A068206.P1305654250144192262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068206.P1305654250144192262

/-! ## A068206.P5709214386074351378

`A139607(eq[A205552(n+1), A275065(n)])`
-/

namespace A068206.P5709214386074351378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068206.P5709214386074351378

/-!
# A068207: Numbers k such that the number of divisors of k^2-1 equals the number of divisors of k.

The programs for A068207, the canonical program `A068207.P7943942854021389993` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068207 has offset 1).

The definition of A068207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 457 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068207.P7943942854021389993

`eq[A129296(n+1), A292286(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A068207

/-- `eq[A129296(n+1), A292286(n+1)]+1` -/
def P7943942854021389993.Spec : Prop :=
  ∀ n, (P7943942854021389993.a n : ℤ) = A068207 (n + 1)

theorem P7943942854021389993.correct : P7943942854021389993.Spec := by
  intro n
  simp only [A068207, Nat.add_sub_cancel]

end A068207

/-! ## A068207.P13821120346725990065

`A020725(eq[A129296(n+1), A292286(n+1)])`
-/

namespace A068207.P13821120346725990065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068207.P13821120346725990065

namespace A068207

/-- `A020725(eq[A129296(n+1), A292286(n+1)])` -/
def P13821120346725990065.Spec : Prop :=
  ∀ n, P13821120346725990065.a n = A068207 (n + 1)

end A068207

/-! ## A068207.P823440521724498080

`eq[A000005((n+1)*(n+3)), A000005(n+2)]+2`
-/

namespace A068207.P823440521724498080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A068207.P823440521724498080

namespace A068207

/-- `eq[A000005((n+1)*(n+3)), A000005(n+2)]+2` -/
def P823440521724498080.Spec : Prop :=
  ∀ n, (P823440521724498080.a n : ℤ) = A068207 (n + 1)

end A068207

/-! ## A068207.P14949503855467536600

`eq[A032741(n)+1, A000005(A106230(n+1))]`
-/

namespace A068207.P14949503855467536600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106230 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068207.P14949503855467536600

namespace A068207

/-- `eq[A032741(n)+1, A000005(A106230(n+1))]` -/
def P14949503855467536600.Spec : Prop :=
  ∀ n, (P14949503855467536600.a n : ℤ) = A068207 (n + 1)

end A068207

/-! ## A068207.P16882095383724573018

`eq[A000005(A106230(n+1)), A277692(2*n+1)]`
-/

namespace A068207.P16882095383724573018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A106230 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068207.P16882095383724573018

namespace A068207

/-- `eq[A000005(A106230(n+1)), A277692(2*n+1)]` -/
def P16882095383724573018.Spec : Prop :=
  ∀ n, (P16882095383724573018.a n : ℤ) = A068207 (n + 1)

end A068207

/-!
# A068208: Numbers k such that tau(k) - tau(k+1) = 1.

The programs for A068208, there is no canonical definition to state claims against.
-/

/-! ## A068208.P13964684400530946145

`eq[1, -A341062(n+1)]`
-/

namespace A068208.P13964684400530946145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A341062 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068208.P13964684400530946145

/-! ## A068208.P8504976944782340954

`eq[A000005(n+1), A032741(n)]`
-/

namespace A068208.P8504976944782340954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068208.P8504976944782340954

/-! ## A068208.P5157933438971067293

`eq[A062011(n+1), A319410(n)]`
-/

namespace A068208.P5157933438971067293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068208.P5157933438971067293

/-! ## A068208.P2897717705588516949

`eq[A032741(n)², A035116(n+1)]`
-/

namespace A068208.P2897717705588516949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068208.P2897717705588516949

/-! ## A068208.P6612322528321880997

`eq[A032741(n+1)+1, A032741(n)]`
-/

namespace A068208.P6612322528321880997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068208.P6612322528321880997

/-!
# A068209: Primes p of the form 3k - 1 such that there exist nontrivial solutions (x other than 0 or -1 modulo p) to the congruence (x+1)^p - x^p == 1 (mod p^2).

The programs for A068209, there is no canonical definition to state claims against.
-/

/-! ## A068209.P7062928187745717874

`A068231(eq[A317863(n+1), A382028(n+1)])`
-/

namespace A068209.P7062928187745717874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068231 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068209.P7062928187745717874

/-!
# A068210: 

The programs for A068210, there is no canonical definition to state claims against.
-/

/-! ## A068210.P18366412394729114359

`A036740(A000040(n+1))`
-/

namespace A068210.P18366412394729114359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036740 (A000040 (n + 1)).toNat

end

end A068210.P18366412394729114359

/-!
# A068211: Largest prime factor of Euler totient function phi(n).

The programs for A068211, the canonical program `A068211.P6725276816017119652` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068211 has offset 3).

The definition of A068211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068211.P6725276816017119652

`A006530(A000010(n+3))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A068211

/-- `A006530(A000010(n+3))` -/
def P6725276816017119652.Spec : Prop :=
  ∀ n, P6725276816017119652.a n = A068211 (n + 3)

theorem P6725276816017119652.correct : P6725276816017119652.Spec := by
  intro n
  simp only [A068211, Nat.add_sub_cancel]

end A068211

/-! ## A068211.P9278644815743562394

`A006530(A062570(n+3))`
-/

namespace A068211.P9278644815743562394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062570 (n + 3)).toNat

end

end A068211.P9278644815743562394

namespace A068211

/-- `A006530(A062570(n+3))` -/
def P9278644815743562394.Spec : Prop :=
  ∀ n, P9278644815743562394.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P17793626594637165157

`A006530(A080400(n+3))`
-/

namespace A068211.P17793626594637165157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080400 (n + 3)).toNat

end

end A068211.P17793626594637165157

namespace A068211

/-- `A006530(A080400(n+3))` -/
def P17793626594637165157.Spec : Prop :=
  ∀ n, P17793626594637165157.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P5008102630779767212

`A111089(A002616(n+3))`
-/

namespace A068211.P5008102630779767212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A002616 (n + 3)).toNat

end

end A068211.P5008102630779767212

namespace A068211

/-- `A111089(A002616(n+3))` -/
def P5008102630779767212.Spec : Prop :=
  ∀ n, P5008102630779767212.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P17891396610300827054

`A006530(Δ[A002088(n+2)])`
-/

namespace A068211.P17891396610300827054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A068211.P17891396610300827054

namespace A068211

/-- `A006530(Δ[A002088(n+2)])` -/
def P17891396610300827054.Spec : Prop :=
  ∀ n, P17891396610300827054.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P9588481445111506409

`A006530(Δ[A005728(n+2)])`
-/

namespace A068211.P9588481445111506409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A068211.P9588481445111506409

namespace A068211

/-- `A006530(Δ[A005728(n+2)])` -/
def P9588481445111506409.Spec : Prop :=
  ∀ n, P9588481445111506409.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P726108413703761722

`A006530(Δ[A018805(n+2)])`
-/

namespace A068211.P726108413703761722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A068211.P726108413703761722

namespace A068211

/-- `A006530(Δ[A018805(n+2)])` -/
def P726108413703761722.Spec : Prop :=
  ∀ n, P726108413703761722.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P1807586063070386759

`A006530(Δ[A140466(n+2)])`
-/

namespace A068211.P1807586063070386759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A068211.P1807586063070386759

namespace A068211

/-- `A006530(Δ[A140466(n+2)])` -/
def P1807586063070386759.Spec : Prop :=
  ∀ n, P1807586063070386759.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P18424025290697714087

`A080513(n)-A070817(n+3)`
-/

namespace A068211.P18424025290697714087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A070817 (n + 3)

end

end A068211.P18424025290697714087

namespace A068211

/-- `A080513(n)-A070817(n+3)` -/
def P18424025290697714087.Spec : Prop :=
  ∀ n, P18424025290697714087.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P10157050016665062345

`A006530(2*(A055684(n+3)+1))`
-/

namespace A068211.P10157050016665062345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (A055684 (n + 3) + 1)).toNat

end

end A068211.P10157050016665062345

namespace A068211

/-- `A006530(2*(A055684(n+3)+1))` -/
def P10157050016665062345.Spec : Prop :=
  ∀ n, P10157050016665062345.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P11273426287605724897

`A000010(n+3)/A068212(n+3)`
-/

namespace A068211.P11273426287605724897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / (A068212 (n + 3) : ℚ)

end

end A068211.P11273426287605724897

namespace A068211

/-- `A000010(n+3)/A068212(n+3)` -/
def P11273426287605724897.Spec : Prop :=
  ∀ n, P11273426287605724897.a n = (A068211 (n + 3) : ℚ)

end A068211

/-! ## A068211.P17939767029574723249

`A006530(2*A000010(2*n-(n-3)))`
-/

namespace A068211.P17939767029574723249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A000010 ((2 * n : ℤ) - ((n : ℤ) - 3)).toNat).toNat

end

end A068211.P17939767029574723249

namespace A068211

/-- `A006530(2*A000010(2*n-(n-3)))` -/
def P17939767029574723249.Spec : Prop :=
  ∀ n, P17939767029574723249.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P4366447480212377002

`A006530(A055684(n+3)+A055684(n+3)+2)`
-/

namespace A068211.P4366447480212377002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055684 (n + 3) + (A055684 (n + 3) + 2)).toNat

end

end A068211.P4366447480212377002

namespace A068211

/-- `A006530(A055684(n+3)+A055684(n+3)+2)` -/
def P4366447480212377002.Spec : Prop :=
  ∀ n, P4366447480212377002.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P10972180786860102372

`A111089(A067541(n+2))`
-/

namespace A068211.P10972180786860102372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A067541 (n + 2)).toNat

end

end A068211.P10972180786860102372

namespace A068211

/-- `A111089(A067541(n+2))` -/
def P10972180786860102372.Spec : Prop :=
  ∀ n, P10972180786860102372.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P10157706781956729993

`A111089(A023022(n+3))`
-/

namespace A068211.P10157706781956729993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (A023022 (n + 3)).toNat

end

end A068211.P10157706781956729993

namespace A068211

/-- `A111089(A023022(n+3))` -/
def P10157706781956729993.Spec : Prop :=
  ∀ n, P10157706781956729993.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P16363303644028987756

`A006530(2*A023022(n+3))`
-/

namespace A068211.P16363303644028987756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A023022 (n + 3)).toNat

end

end A068211.P16363303644028987756

namespace A068211

/-- `A006530(2*A023022(n+3))` -/
def P16363303644028987756.Spec : Prop :=
  ∀ n, P16363303644028987756.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P6869034974663352986

`A006530(A002246(n+3))`
-/

namespace A068211.P6869034974663352986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002246 (n + 3)).toNat

end

end A068211.P6869034974663352986

namespace A068211

/-- `A006530(A002246(n+3))` -/
def P6869034974663352986.Spec : Prop :=
  ∀ n, P6869034974663352986.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P8789895147593280408

`A006530(A002322(n+3))`
-/

namespace A068211.P8789895147593280408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002322 (n + 3)).toNat

end

end A068211.P8789895147593280408

namespace A068211

/-- `A006530(A002322(n+3))` -/
def P8789895147593280408.Spec : Prop :=
  ∀ n, P8789895147593280408.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P3365384252115152890

`A006530(A011773(n+3))`
-/

namespace A068211.P3365384252115152890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011773 (n + 3)).toNat

end

end A068211.P3365384252115152890

namespace A068211

/-- `A006530(A011773(n+3))` -/
def P3365384252115152890.Spec : Prop :=
  ∀ n, P3365384252115152890.a n = A068211 (n + 3)

end A068211

/-! ## A068211.P10020048459600330066

`A006530(A140434(n+3))`
-/

namespace A068211.P10020048459600330066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A140434 (n + 3)).toNat

end

end A068211.P10020048459600330066

namespace A068211

/-- `A006530(A140434(n+3))` -/
def P10020048459600330066.Spec : Prop :=
  ∀ n, P10020048459600330066.a n = A068211 (n + 3)

end A068211

/-!
# A068212: a(n) = phi(n) divided by its largest prime factor.

The programs for A068212, the canonical program `A068212.P4715796565959048527` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068212 has offset 3).

The definition of A068212 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068212.P4715796565959048527

`A052126(A000010(n+3))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A068212

/-- `A052126(A000010(n+3))` -/
def P4715796565959048527.Spec : Prop :=
  ∀ n, P4715796565959048527.a n = A068212 (n + 3)

theorem P4715796565959048527.correct : P4715796565959048527.Spec := by
  intro n
  simp only [A068212, Nat.add_sub_cancel]

end A068212

/-! ## A068212.P10447085440623167084

`A000010(n+3)/A068211(n+3)`
-/

namespace A068212.P10447085440623167084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 3) : ℚ) / (A068211 (n + 3) : ℚ)

end

end A068212.P10447085440623167084

namespace A068212

/-- `A000010(n+3)/A068211(n+3)` -/
def P10447085440623167084.Spec : Prop :=
  ∀ n, P10447085440623167084.a n = (A068212 (n + 3) : ℚ)

end A068212

/-! ## A068212.P959894308872430692

`A052126(Δ[A002088(n+2)])`
-/

namespace A068212.P959894308872430692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A068212.P959894308872430692

namespace A068212

/-- `A052126(Δ[A002088(n+2)])` -/
def P959894308872430692.Spec : Prop :=
  ∀ n, P959894308872430692.a n = A068212 (n + 3)

end A068212

/-! ## A068212.P13460221522867381094

`A052126(Δ[A005728(n+2)])`
-/

namespace A068212.P13460221522867381094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A068212.P13460221522867381094

namespace A068212

/-- `A052126(Δ[A005728(n+2)])` -/
def P13460221522867381094.Spec : Prop :=
  ∀ n, P13460221522867381094.a n = A068212 (n + 3)

end A068212

/-! ## A068212.P11673272283407773505

`A052126(Δ[2*A046657(n+2)])`
-/

namespace A068212.P11673272283407773505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A068212.P11673272283407773505

namespace A068212

/-- `A052126(Δ[2*A046657(n+2)])` -/
def P11673272283407773505.Spec : Prop :=
  ∀ n, P11673272283407773505.a n = A068212 (n + 3)

end A068212

/-! ## A068212.P7708735719346309336

`A052126(A005843(Δ[A046657(n+2)]))`
-/

namespace A068212.P7708735719346309336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A005843 (f1 (n + 1) - f1 n).toNat).toNat

end

end A068212.P7708735719346309336

namespace A068212

/-- `A052126(A005843(Δ[A046657(n+2)]))` -/
def P7708735719346309336.Spec : Prop :=
  ∀ n, P7708735719346309336.a n = A068212 (n + 3)

end A068212

/-! ## A068212.P4684052270637954745

`A052126(A002246(n+3)/4)`
-/

namespace A068212.P4684052270637954745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((A002246 (n + 3) : ℚ) / 4)).toNat

end

end A068212.P4684052270637954745

namespace A068212

/-- `A052126(A002246(n+3)/4)` -/
def P4684052270637954745.Spec : Prop :=
  ∀ n, P4684052270637954745.a n = A068212 (n + 3)

end A068212

/-! ## A068212.P6009355953047701446

`A070821(2*A000010(n+3))`
-/

namespace A068212.P6009355953047701446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (2 * A000010 (n + 3)).toNat

end

end A068212.P6009355953047701446

namespace A068212

/-- `A070821(2*A000010(n+3))` -/
def P6009355953047701446.Spec : Prop :=
  ∀ n, P6009355953047701446.a n = A068212 (n + 3)

end A068212

/-! ## A068212.P6544153954661735437

`A052126(A225530(n+3))`
-/

namespace A068212.P6544153954661735437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A225530 (n + 3)).toNat

end

end A068212.P6544153954661735437

namespace A068212

/-- `A052126(A225530(n+3))` -/
def P6544153954661735437.Spec : Prop :=
  ∀ n, P6544153954661735437.a n = A068212 (n + 3)

end A068212

/-!
# A068215: Denominator of Borwein integral of order 2n+1, as defined by Weisstein.

The programs for A068215, there is no canonical definition to state claims against.
-/

/-! ## A068215.P9426491356780636716

`∏[∏{e}[9^n, #]+1]`
-/

namespace A068215.P9426491356780636716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A068215.P9426491356780636716

/-! ## A068215.P11375055489614063553

`∏[2*n+1]*∑{p}[4^(n+3), #]`
-/

namespace A068215.P11375055489614063553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A068215.P11375055489614063553

/-! ## A068215.P7232286333499102554

`∏[2*n+1]*∏{p}[4^(n+3), #]`
-/

namespace A068215.P7232286333499102554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A068215.P7232286333499102554

/-!
# A068216: a(n) is the smallest n-digit pseudoprime (to base 2).

The programs for A068216, there is no canonical definition to state claims against.
-/

/-! ## A068216.P18416932266754890347

`A001567(A055550(n+2)+1)`
-/

namespace A068216.P18416932266754890347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (A055550 (n + 2) + 1).toNat

end

end A068216.P18416932266754890347

/-!
# A068217: Denominators of coefficients in 3*log(sqrt(1+x)) power series.

The programs for A068217, the canonical program `A068217.P1284071991272962723` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068217 has offset 1).

The definition of A068217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068217.P1284071991272962723

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=2, a(3)=8, a(4)=10, a(5)=4`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068217

/-- `2*a(n-3)-a(n-6)` -/
def P1284071991272962723.Spec : Prop :=
  ∀ n, P1284071991272962723.a n = A068217 (n + 1)

theorem P1284071991272962723.correct : P1284071991272962723.Spec := by
  intro n
  simp only [A068217, Nat.add_sub_cancel]

end A068217

/-! ## A068217.P14685700500555803865

`2*A051176(n+1)`
-/

namespace A068217.P14685700500555803865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051176 (n + 1)

end

end A068217.P14685700500555803865

namespace A068217

/-- `2*A051176(n+1)` -/
def P14685700500555803865.Spec : Prop :=
  ∀ n, P14685700500555803865.a n = A068217 (n + 1)

end A068217

/-! ## A068217.P7456927932933660232

`2*lcm(3, n+1)/3`
-/

namespace A068217.P7456927932933660232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lcm 3 (n + 1) : ℚ) / 3)

end

end A068217.P7456927932933660232

namespace A068217

/-- `2*lcm(3, n+1)/3` -/
def P7456927932933660232.Spec : Prop :=
  ∀ n, P7456927932933660232.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P4437012238511492719

`lcm(6, n+2+n)/3`
-/

namespace A068217.P4437012238511492719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 6 (n + 2 + n) : ℚ) / 3

end

end A068217.P4437012238511492719

namespace A068217

/-- `lcm(6, n+2+n)/3` -/
def P4437012238511492719.Spec : Prop :=
  ∀ n, P4437012238511492719.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P1111341246656846308

`∑[2*Δ[n/gcd(3, n)]]`
-/

namespace A068217.P1111341246656846308
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068217.P1111341246656846308

namespace A068217

/-- `∑[2*Δ[n/gcd(3, n)]]` -/
def P1111341246656846308.Spec : Prop :=
  ∀ n, P1111341246656846308.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P17543724164269696211

`2*gcd(n+1, C(n², 3))`
-/

namespace A068217.P17543724164269696211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd (n + 1) (Nat.choose (n ^ 2) 3)

end

end A068217.P17543724164269696211

namespace A068217

/-- `2*gcd(n+1, C(n², 3))` -/
def P17543724164269696211.Spec : Prop :=
  ∀ n, (P17543724164269696211.a n : ℤ) = A068217 (n + 1)

end A068217

/-! ## A068217.P7352639184890167265

`2*(n+1)/or(1, n%3)`
-/

namespace A068217.P7352639184890167265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (Nat.lor 1 (n % 3) : ℚ))

end

end A068217.P7352639184890167265

namespace A068217

/-- `2*(n+1)/or(1, n%3)` -/
def P7352639184890167265.Spec : Prop :=
  ∀ n, P7352639184890167265.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P14995675992022149951

`gcd(2*(n+1), ∑[(2*n)²])`
-/

namespace A068217.P14995675992022149951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068217.P14995675992022149951

namespace A068217

/-- `gcd(2*(n+1), ∑[(2*n)²])` -/
def P14995675992022149951.Spec : Prop :=
  ∀ n, (P14995675992022149951.a n : ℤ) = A068217 (n + 1)

end A068217

/-! ## A068217.P16324699873521294729

`(n+1)/(3/2-(n+1)²%3)`
-/

namespace A068217.P16324699873521294729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((3 : ℚ) / 2 - (((n + 1) ^ 2 % 3 : ℕ) : ℚ))

end

end A068217.P16324699873521294729

namespace A068217

/-- `(n+1)/(3/2-(n+1)²%3)` -/
def P16324699873521294729.Spec : Prop :=
  ∀ n, P16324699873521294729.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P2229882987580897857

`a(n-3)/(1-3/(n+1))` with `a(0)=2, a(1)=4, a(2)=2`
-/

namespace A068217.P2229882987580897857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 4, 2] fun n a =>
  a (n - 3) / (1 - 3 / (n + 1 : ℚ))

end

end A068217.P2229882987580897857

namespace A068217

/-- `a(n-3)/(1-3/(n+1))` -/
def P2229882987580897857.Spec : Prop :=
  ∀ n, P2229882987580897857.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P4314977689624452879

`2*(n+1-∑[∑[2*n]]%(n+1))`
-/

namespace A068217.P4314977689624452879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ))

end

end A068217.P4314977689624452879

namespace A068217

/-- `2*(n+1-∑[∑[2*n]]%(n+1))` -/
def P4314977689624452879.Spec : Prop :=
  ∀ n, P4314977689624452879.a n = A068217 (n + 1)

end A068217

/-! ## A068217.P5733668668723984998

`2*gcd(2*n+1-n, ∑[∑[n+1]])`
-/

namespace A068217.P5733668668723984998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A068217.P5733668668723984998

namespace A068217

/-- `2*gcd(2*n+1-n, ∑[∑[n+1]])` -/
def P5733668668723984998.Spec : Prop :=
  ∀ n, (P5733668668723984998.a n : ℤ) = A068217 (n + 1)

end A068217

/-! ## A068217.P3805272707768998238

`n+3-A058281(n+2)+n`
-/

namespace A068217.P3805272707768998238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A058281 (n + 2) + (n : ℤ)

end

end A068217.P3805272707768998238

namespace A068217

/-- `n+3-A058281(n+2)+n` -/
def P3805272707768998238.Spec : Prop :=
  ∀ n, P3805272707768998238.a n = A068217 (n + 1)

end A068217

/-! ## A068217.P5276681447538607334

`A010694(n)*A060789(n+1)`
-/

namespace A068217.P5276681447538607334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n * A060789 (n + 1)

end

end A068217.P5276681447538607334

namespace A068217

/-- `A010694(n)*A060789(n+1)` -/
def P5276681447538607334.Spec : Prop :=
  ∀ n, P5276681447538607334.a n = A068217 (n + 1)

end A068217

/-! ## A068217.P1688736366759063471

`lcm(A060789(n+1), A171977(n+1))`
-/

namespace A068217.P1688736366759063471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060789 (n + 1)) (A171977 (n + 1))

end

end A068217.P1688736366759063471

namespace A068217

/-- `lcm(A060789(n+1), A171977(n+1))` -/
def P1688736366759063471.Spec : Prop :=
  ∀ n, (P1688736366759063471.a n : ℤ) = A068217 (n + 1)

end A068217

/-! ## A068217.P881196472672873906

`lcm(A146307(n+1), A297402(n+1))`
-/

namespace A068217.P881196472672873906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146307 (n + 1)) (A297402 (n + 1))

end

end A068217.P881196472672873906

namespace A068217

/-- `lcm(A146307(n+1), A297402(n+1))` -/
def P881196472672873906.Spec : Prop :=
  ∀ n, (P881196472672873906.a n : ℤ) = A068217 (n + 1)

end A068217

/-! ## A068217.P6844879841753558484

`2*(n+1)/A020639(A038500(n+1))`
-/

namespace A068217.P6844879841753558484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A020639 (A038500 (n + 1)).toNat : ℚ)

end

end A068217.P6844879841753558484

namespace A068217

/-- `2*(n+1)/A020639(A038500(n+1))` -/
def P6844879841753558484.Spec : Prop :=
  ∀ n, P6844879841753558484.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P11676400166350051983

`Δ[2*∑[A051176(n)]]`
-/

namespace A068217.P11676400166350051983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068217.P11676400166350051983

namespace A068217

/-- `Δ[2*∑[A051176(n)]]` -/
def P11676400166350051983.Spec : Prop :=
  ∀ n, P11676400166350051983.a n = A068217 (n + 1)

end A068217

/-! ## A068217.P7584509484718077375

`2/3*A109044(n+1)`
-/

namespace A068217.P7584509484718077375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A109044 (n + 1) : ℚ)

end

end A068217.P7584509484718077375

namespace A068217

/-- `2/3*A109044(n+1)` -/
def P7584509484718077375.Spec : Prop :=
  ∀ n, P7584509484718077375.a n = (A068217 (n + 1) : ℚ)

end A068217

/-! ## A068217.P8431118105415520050

`abs(A130724(n+1)-(n+1))`
-/

namespace A068217.P8431118105415520050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130724 (n + 1) - (n + 1 : ℤ)|

end

end A068217.P8431118105415520050

namespace A068217

/-- `abs(A130724(n+1)-(n+1))` -/
def P8431118105415520050.Spec : Prop :=
  ∀ n, P8431118105415520050.a n = A068217 (n + 1)

end A068217

/-!
# A068219: Denominators of coefficients in log(1+x)*(1+x)^(1/3) power series.

The programs for A068219, the canonical program `A068219.P5528515115272368905` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068219 has offset 1).

The definition of A068219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068219.P5528515115272368905

`3*A060819(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068219

/-- `3*A060819(n+1)` -/
def P5528515115272368905.Spec : Prop :=
  ∀ n, P5528515115272368905.a n = A068219 (n + 1)

theorem P5528515115272368905.correct : P5528515115272368905.Spec := by
  intro n
  simp only [A068219, Nat.add_sub_cancel]

end A068219

/-! ## A068219.P13933469240587308319

`3*lcm(4, n+1)/4`
-/

namespace A068219.P13933469240587308319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.lcm 4 (n + 1) : ℚ) / 4)

end

end A068219.P13933469240587308319

namespace A068219

/-- `3*lcm(4, n+1)/4` -/
def P13933469240587308319.Spec : Prop :=
  ∀ n, P13933469240587308319.a n = (A068219 (n + 1) : ℚ)

end A068219

/-! ## A068219.P7197456830128801404

`3*(n+1)/gcd(4, n+1)`
-/

namespace A068219.P7197456830128801404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (Nat.gcd 4 (n + 1) : ℚ))

end

end A068219.P7197456830128801404

namespace A068219

/-- `3*(n+1)/gcd(4, n+1)` -/
def P7197456830128801404.Spec : Prop :=
  ∀ n, P7197456830128801404.a n = (A068219 (n + 1) : ℚ)

end A068219

/-! ## A068219.P1354636984740212952

`A008486(lcm(4, n+1)/4)`
-/

namespace A068219.P1354636984740212952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

end

end A068219.P1354636984740212952

namespace A068219

/-- `A008486(lcm(4, n+1)/4)` -/
def P1354636984740212952.Spec : Prop :=
  ∀ n, P1354636984740212952.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P12758969925675650973

`A008486((n+1)/((n^3)%4+1))`
-/

namespace A068219.P12758969925675650973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n ^ 3 % 4 + 1 : ℕ) : ℚ))).toNat

end

end A068219.P12758969925675650973

namespace A068219

/-- `A008486((n+1)/((n^3)%4+1))` -/
def P12758969925675650973.Spec : Prop :=
  ∀ n, P12758969925675650973.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P10849616611420277950

`A008486((n+1)/and(2*n+1, n+1-and(n-1, n-2)))`
-/

namespace A068219.P10849616611420277950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (2 * n + 1 : ℤ) ((n + 1 : ℤ) - Int.land ((n : ℤ) - 1) ((n : ℤ) - 2)) : ℚ))).toNat

end

end A068219.P10849616611420277950

namespace A068219

/-- `A008486((n+1)/and(2*n+1, n+1-and(n-1, n-2)))` -/
def P10849616611420277950.Spec : Prop :=
  ∀ n, P10849616611420277950.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P2531364308905614658

`A008486(A060819(n+1))`
-/

namespace A068219.P2531364308905614658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A060819 (n + 1)).toNat

end

end A068219.P2531364308905614658

namespace A068219

/-- `A008486(A060819(n+1))` -/
def P2531364308905614658.Spec : Prop :=
  ∀ n, P2531364308905614658.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P11503096556972428642

`A165351(A026741(n+1))`
-/

namespace A068219.P11503096556972428642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (A026741 (n + 1)).toNat

end

end A068219.P11503096556972428642

namespace A068219

/-- `A165351(A026741(n+1))` -/
def P11503096556972428642.Spec : Prop :=
  ∀ n, P11503096556972428642.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P6589180098737259134

`A165351(A186646(n+1))`
-/

namespace A068219.P6589180098737259134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (A186646 (n + 1)).toNat

end

end A068219.P6589180098737259134

namespace A068219

/-- `A165351(A186646(n+1))` -/
def P6589180098737259134.Spec : Prop :=
  ∀ n, P6589180098737259134.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P17795505933115156478

`A165351(A065423(n+1)+1)`
-/

namespace A068219.P17795505933115156478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (A065423 (n + 1) + 1).toNat

end

end A068219.P17795505933115156478

namespace A068219

/-- `A165351(A065423(n+1)+1)` -/
def P17795505933115156478.Spec : Prop :=
  ∀ n, P17795505933115156478.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P17210923537874691042

`A165351((n+1)/A000034(n))`
-/

namespace A068219.P17210923537874691042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A068219.P17210923537874691042

namespace A068219

/-- `A165351((n+1)/A000034(n))` -/
def P17210923537874691042.Spec : Prop :=
  ∀ n, P17210923537874691042.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P14431334700342640627

`A109045(n+1)-A060819(n+1)`
-/

namespace A068219.P14431334700342640627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (n + 1) - A060819 (n + 1)

end

end A068219.P14431334700342640627

namespace A068219

/-- `A109045(n+1)-A060819(n+1)` -/
def P14431334700342640627.Spec : Prop :=
  ∀ n, P14431334700342640627.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P12906151109054641039

`lcm(A060819(n+1), A074724(n+1))`
-/

namespace A068219.P12906151109054641039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060819 (n + 1)) (A074724 (n + 1))

end

end A068219.P12906151109054641039

namespace A068219

/-- `lcm(A060819(n+1), A074724(n+1))` -/
def P12906151109054641039.Spec : Prop :=
  ∀ n, (P12906151109054641039.a n : ℤ) = A068219 (n + 1)

end A068219

/-! ## A068219.P3147557536954304094

`A109045(n+1)-A026741(A026741(n+1))`
-/

namespace A068219.P3147557536954304094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (n + 1) - A026741 (A026741 (n + 1)).toNat

end

end A068219.P3147557536954304094

namespace A068219

/-- `A109045(n+1)-A026741(A026741(n+1))` -/
def P3147557536954304094.Spec : Prop :=
  ∀ n, P3147557536954304094.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P5108659546774396036

`lcm(2, A165351(n+1))/2`
-/

namespace A068219.P5108659546774396036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A165351 (n + 1)) : ℚ) / 2

end

end A068219.P5108659546774396036

namespace A068219

/-- `lcm(2, A165351(n+1))/2` -/
def P5108659546774396036.Spec : Prop :=
  ∀ n, P5108659546774396036.a n = (A068219 (n + 1) : ℚ)

end A068219

/-! ## A068219.P7764525077391394239

`3*(n+1)/A109008(n+1)`
-/

namespace A068219.P7764525077391394239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (A109008 (n + 1) : ℚ))

end

end A068219.P7764525077391394239

namespace A068219

/-- `3*(n+1)/A109008(n+1)` -/
def P7764525077391394239.Spec : Prop :=
  ∀ n, P7764525077391394239.a n = (A068219 (n + 1) : ℚ)

end A068219

/-! ## A068219.P1707252554948069740

`A165351(A165351(n+1)/3)`
-/

namespace A068219.P1707252554948069740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (SequenceMachineLib.roundAway ((A165351 (n + 1) : ℚ) / 3)).toNat

end

end A068219.P1707252554948069740

namespace A068219

/-- `A165351(A165351(n+1)/3)` -/
def P1707252554948069740.Spec : Prop :=
  ∀ n, P1707252554948069740.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P13440658507151468553

`A188134(n+1)-A176447(n+1)`
-/

namespace A068219.P13440658507151468553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (n + 1) - A176447 (n + 1)

end

end A068219.P13440658507151468553

namespace A068219

/-- `A188134(n+1)-A176447(n+1)` -/
def P13440658507151468553.Spec : Prop :=
  ∀ n, P13440658507151468553.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P155592218118054467

`A176672(n+2)-A176895(n+1)`
-/

namespace A068219.P155592218118054467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 (n + 2) - A176895 (n + 1)

end

end A068219.P155592218118054467

namespace A068219

/-- `A176672(n+2)-A176895(n+1)` -/
def P155592218118054467.Spec : Prop :=
  ∀ n, P155592218118054467.a n = A068219 (n + 1)

end A068219

/-! ## A068219.P5726945736637874036

`A165351(A062828(n+1))`
-/

namespace A068219.P5726945736637874036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 (A062828 (n + 1)).toNat

end

end A068219.P5726945736637874036

namespace A068219

/-- `A165351(A062828(n+1))` -/
def P5726945736637874036.Spec : Prop :=
  ∀ n, P5726945736637874036.a n = A068219 (n + 1)

end A068219

/-!
# A068220: Twin primes belonging to packs of four or more twin pairs.

The programs for A068220, there is no canonical definition to state claims against.
-/

/-! ## A068220.P64014261317732051

`A136144(A168143(n))`
-/

namespace A068220.P64014261317732051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136144 (A168143 (n + 17)).toNat

end

end A068220.P64014261317732051

/-! ## A068220.P12442544562161334511

`A136144(lt[A136153(2*(n+2)), A136158(n)])`
-/

namespace A068220.P12442544562161334511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136153 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136158 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A068220.P12442544562161334511

/-!
# A068221: An auxiliary bit-mask sequence for computing A066425. (The "clean", symmetric one).

The programs for A068221, there is no canonical definition to state claims against.
-/

/-! ## A068221.P4363973539320333371

`(2^(A068739(n)+A068059(n)-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A068221.P4363973539320333371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 : ℚ) ^ (A068739 n + A068059 n - 1 : ℤ) + 1) * a (n - 1)

end

end A068221.P4363973539320333371

/-!
# A068222: An auxiliary bit-mask sequence for computing A066425. (The "dirty", unsymmetric one).

The programs for A068222, there is no canonical definition to state claims against.
-/

/-! ## A068222.P5699802564205092955

`or(A068221(n+1), A353971(ceil(2^(n-1))))`
-/

namespace A068222.P5699802564205092955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068221 (n + 1)) (A353971 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A068222.P5699802564205092955

/-!
# A068225: Neighbor in 1-2 direction of numbers arranged as clockwise spiral.

The programs for A068225, there is no canonical definition to state claims against.
-/

/-! ## A068225.P8073258885554758728

`A020703(A334752(A020703(n+1)))`
-/

namespace A068225.P8073258885554758728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A334752 (A020703 (n + 1)).toNat).toNat

end

end A068225.P8073258885554758728

/-! ## A068225.P13021570454204475743

`A185413(A090861(n+1))`
-/

namespace A068225.P13021570454204475743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A090861 (n + 1)).toNat

end

end A068225.P13021570454204475743

/-! ## A068225.P5356499695050317576

`A185413(A020703(A090929(n+1)))`
-/

namespace A068225.P5356499695050317576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A020703 (A090929 (n + 1)).toNat).toNat

end

end A068225.P5356499695050317576

/-! ## A068225.P2636823429420225206

`A185413(A090929(A090915(n+1)))`
-/

namespace A068225.P2636823429420225206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A090929 (A090915 (n + 1)).toNat).toNat

end

end A068225.P2636823429420225206

/-! ## A068225.P7761710750191896581

`A185413(A090915(A090925(n+1)))`
-/

namespace A068225.P7761710750191896581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A090915 (A090925 (n + 1)).toNat).toNat

end

end A068225.P7761710750191896581

/-! ## A068225.P11056286217156782969

`A185413(A090930(A090928(n+1)))`
-/

namespace A068225.P11056286217156782969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A090930 (A090928 (n + 1)).toNat).toNat

end

end A068225.P11056286217156782969

/-! ## A068225.P18372764130113553812

`A185413(A068226(A185413(n+1)))`
-/

namespace A068225.P18372764130113553812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A068226 (A185413 (n + 1)).toNat).toNat

end

end A068225.P18372764130113553812

/-! ## A068225.P12473593433751265829

`A185413(A090915(A020703(A090930(n+1))))`
-/

namespace A068225.P12473593433751265829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185413 (A090915 (A020703 (A090930 (n + 1)).toNat).toNat).toNat

end

end A068225.P12473593433751265829

/-!
# A068226: Neighbor in 2-1 direction of numbers arranged as clockwise spiral.

The programs for A068226, there is no canonical definition to state claims against.
-/

/-! ## A068226.P8105941826803521299

`A020703(A334751(A020703(n+1)))`
-/

namespace A068226.P8105941826803521299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A334751 (A020703 (n + 1)).toNat).toNat

end

end A068226.P8105941826803521299

/-! ## A068226.P12124964408813934241

`A090861(A185413(n+1))`
-/

namespace A068226.P12124964408813934241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A185413 (n + 1)).toNat

end

end A068226.P12124964408813934241

/-! ## A068226.P17545549995901404201

`A090861(A068225(A090861(n+1)))`
-/

namespace A068226.P17545549995901404201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068225 (A090861 (n + 1)).toNat).toNat

end

end A068226.P17545549995901404201

/-! ## A068226.P9145498127153753227

`A090928(A068225(A090928(n+1)))`
-/

namespace A068226.P9145498127153753227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A068225 (A090928 (n + 1)).toNat).toNat

end

end A068226.P9145498127153753227

/-! ## A068226.P17180684483815915093

`A090928(A185413(A090930(n+1)))`
-/

namespace A068226.P17180684483815915093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A185413 (A090930 (n + 1)).toNat).toNat

end

end A068226.P17180684483815915093

/-! ## A068226.P4682867852316192251

`A090928(A185413(A020703(A090925(n+1))))`
-/

namespace A068226.P4682867852316192251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A185413 (A020703 (A090925 (n + 1)).toNat).toNat).toNat

end

end A068226.P4682867852316192251

/-! ## A068226.P14334427445238441865

`A090928(A185413(A090925(A090915(n+1))))`
-/

namespace A068226.P14334427445238441865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A185413 (A090925 (A090915 (n + 1)).toNat).toNat).toNat

end

end A068226.P14334427445238441865

/-! ## A068226.P5401882443193347647

`A090928(A185413(A090915(A090929(n+1))))`
-/

namespace A068226.P5401882443193347647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090928 (A185413 (A090915 (A090929 (n + 1)).toNat).toNat).toNat

end

end A068226.P5401882443193347647

/-!
# A068227: The "genity" sequence of the primes, i.e., a(n) = g(p) = ((p mod 4) + (p mod 6))/2, where p is the n-th prime.

The programs for A068227, the canonical program `A068227.P14594515771624751627` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068227 has offset 1).

The definition of A068227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068227.P14594515771624751627

`A076982(A039710(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068227

/-- `A076982(A039710(n+1))` -/
def P14594515771624751627.Spec : Prop :=
  ∀ n, P14594515771624751627.a n = A068227 (n + 1)

theorem P14594515771624751627.correct : P14594515771624751627.Spec := by
  intro n
  simp only [A068227, Nat.add_sub_cancel]

end A068227

/-! ## A068227.P225727285711005113

`A239214(A039710(n+1)+1)`
-/

namespace A068227.P225727285711005113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239214 (A039710 (n + 1) + 1).toNat

end

end A068227.P225727285711005113

namespace A068227

/-- `A239214(A039710(n+1)+1)` -/
def P225727285711005113.Spec : Prop :=
  ∀ n, P225727285711005113.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P14242323324234825065

`A244544(A039710(n+1)-1)`
-/

namespace A068227.P14242323324234825065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (A039710 (n + 1) - 1).toNat

end

end A068227.P14242323324234825065

namespace A068227

/-- `A244544(A039710(n+1)-1)` -/
def P14242323324234825065.Spec : Prop :=
  ∀ n, P14242323324234825065.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P4976184217149055745

`A292595(A039710(n+1)+4)`
-/

namespace A068227.P4976184217149055745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292595 (A039710 (n + 1) + 4).toNat

end

end A068227.P4976184217149055745

namespace A068227

/-- `A292595(A039710(n+1)+4)` -/
def P4976184217149055745.Spec : Prop :=
  ∀ n, P4976184217149055745.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P375393315122652938

`A126305(4*A039710(n+1))`
-/

namespace A068227.P375393315122652938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (4 * A039710 (n + 1)).toNat

end

end A068227.P375393315122652938

namespace A068227

/-- `A126305(4*A039710(n+1))` -/
def P375393315122652938.Spec : Prop :=
  ∀ n, P375393315122652938.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P2863980799194927000

`A130790(A039710(n+1)+6)`
-/

namespace A068227.P2863980799194927000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130790 (A039710 (n + 1) + 6).toNat

end

end A068227.P2863980799194927000

namespace A068227

/-- `A130790(A039710(n+1)+6)` -/
def P2863980799194927000.Spec : Prop :=
  ∀ n, P2863980799194927000.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P9023288860733228069

`A333529(A039710(n+1)+6)`
-/

namespace A068227.P9023288860733228069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333529 (A039710 (n + 1) + 6).toNat

end

end A068227.P9023288860733228069

namespace A068227

/-- `A333529(A039710(n+1)+6)` -/
def P9023288860733228069.Spec : Prop :=
  ∀ n, P9023288860733228069.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P16411224230759637499

`A023508(2^A039710(n+1))`
-/

namespace A068227.P16411224230759637499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A039710 (n + 1) : ℤ))).toNat

end

end A068227.P16411224230759637499

namespace A068227

/-- `A023508(2^A039710(n+1))` -/
def P16411224230759637499.Spec : Prop :=
  ∀ n, P16411224230759637499.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P10981399020421493563

`∑{d}[A039710(n+1), A000119(#)]`
-/

namespace A068227.P10981399020421493563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000119 d

end

end A068227.P10981399020421493563

namespace A068227

/-- `∑{d}[A039710(n+1), A000119(#)]` -/
def P10981399020421493563.Spec : Prop :=
  ∀ n, P10981399020421493563.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P3666895844683891201

`∑{d}[A039710(n+1), A140083(#)]`
-/

namespace A068227.P3666895844683891201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A140083 d

end

end A068227.P3666895844683891201

namespace A068227

/-- `∑{d}[A039710(n+1), A140083(#)]` -/
def P3666895844683891201.Spec : Prop :=
  ∀ n, P3666895844683891201.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P7641360873323453944

`∑{d}[A039710(n+1), A261356(#)]`
-/

namespace A068227.P7641360873323453944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A261356 d

end

end A068227.P7641360873323453944

namespace A068227

/-- `∑{d}[A039710(n+1), A261356(#)]` -/
def P7641360873323453944.Spec : Prop :=
  ∀ n, P7641360873323453944.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P14936515180644087274

`(A039704(n+1)+A039702(n+1))/2`
-/

namespace A068227.P14936515180644087274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039704 (n + 1) + A039702 (n + 1) : ℚ) / 2

end

end A068227.P14936515180644087274

namespace A068227

/-- `(A039704(n+1)+A039702(n+1))/2` -/
def P14936515180644087274.Spec : Prop :=
  ∀ n, P14936515180644087274.a n = (A068227 (n + 1) : ℚ)

end A068227

/-! ## A068227.P1600201472895046801

`A001221(A027369(A039710(n+1)²))`
-/

namespace A068227.P1600201472895046801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A027369 (A039710 (n + 1) ^ 2).toNat).toNat

end

end A068227.P1600201472895046801

namespace A068227

/-- `A001221(A027369(A039710(n+1)²))` -/
def P1600201472895046801.Spec : Prop :=
  ∀ n, P1600201472895046801.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P8049494362824442541

`A000005(A070167(A039710(n+1)²))`
-/

namespace A068227.P8049494362824442541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A070167 (A039710 (n + 1) ^ 2).toNat).toNat

end

end A068227.P8049494362824442541

namespace A068227

/-- `A000005(A070167(A039710(n+1)²))` -/
def P8049494362824442541.Spec : Prop :=
  ∀ n, P8049494362824442541.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P6688577285370808114

`A001221(A069272(A039710(n+1)²))`
-/

namespace A068227.P6688577285370808114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A069272 (A039710 (n + 1) ^ 2).toNat).toNat

end

end A068227.P6688577285370808114

namespace A068227

/-- `A001221(A069272(A039710(n+1)²))` -/
def P6688577285370808114.Spec : Prop :=
  ∀ n, P6688577285370808114.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P10870068643092368739

`A001221(A138639(A039710(n+1)²))`
-/

namespace A068227.P10870068643092368739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A138639 (A039710 (n + 1) ^ 2).toNat).toNat

end

end A068227.P10870068643092368739

namespace A068227

/-- `A001221(A138639(A039710(n+1)²))` -/
def P10870068643092368739.Spec : Prop :=
  ∀ n, P10870068643092368739.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P15185406808392347625

`A001222(A129952(A039710(n+1))+2)`
-/

namespace A068227.P15185406808392347625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A129952 (A039710 (n + 1)).toNat + 2).toNat

end

end A068227.P15185406808392347625

namespace A068227

/-- `A001222(A129952(A039710(n+1))+2)` -/
def P15185406808392347625.Spec : Prop :=
  ∀ n, P15185406808392347625.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P11437556059865544804

`A001222(A168055(A039710(n+1)+2))`
-/

namespace A068227.P11437556059865544804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A168055 (A039710 (n + 1) + 2).toNat).toNat

end

end A068227.P11437556059865544804

namespace A068227

/-- `A001222(A168055(A039710(n+1)+2))` -/
def P11437556059865544804.Spec : Prop :=
  ∀ n, P11437556059865544804.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P518162269214965076

`A001222(A097011(4*A039710(n+1)))`
-/

namespace A068227.P518162269214965076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097011 (4 * A039710 (n + 1)).toNat).toNat

end

end A068227.P518162269214965076

namespace A068227

/-- `A001222(A097011(4*A039710(n+1)))` -/
def P518162269214965076.Spec : Prop :=
  ∀ n, P518162269214965076.a n = A068227 (n + 1)

end A068227

/-! ## A068227.P1405392578190447864

`A181648(p?[A319985(n+1)])`
-/

namespace A068227.P1405392578190447864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181648 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068227.P1405392578190447864

namespace A068227

/-- `A181648(p?[A319985(n+1)])` -/
def P1405392578190447864.Spec : Prop :=
  ∀ n, P1405392578190447864.a n = A068227 (n + 1)

end A068227

/-!
# A068228: Primes congruent to 1 (mod 12).

The programs for A068228, the canonical program `A068228.P2780938449886948151` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068228 has offset 1).

The definition of A068228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068228.P2780938449886948151

`p?[12*n+1]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068228

/-- `p?[12*n+1]` -/
def P2780938449886948151.Spec : Prop :=
  ∀ n, (P2780938449886948151.a n : ℤ) = A068228 (n + 1)

theorem P2780938449886948151.correct : P2780938449886948151.Spec := by
  intro n
  simp only [A068228, Nat.add_sub_cancel]

end A068228

/-! ## A068228.P5636597236462483961

`∩[A002144(n+1), A002476(n+1)]`
-/

namespace A068228.P5636597236462483961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P5636597236462483961

namespace A068228

/-- `∩[A002144(n+1), A002476(n+1)]` -/
def P5636597236462483961.Spec : Prop :=
  ∀ n, (P5636597236462483961.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P17832218048454443810

`∩[A002476(n+1), A191218(n+1)]`
-/

namespace A068228.P17832218048454443810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P17832218048454443810

namespace A068228

/-- `∩[A002476(n+1), A191218(n+1)]` -/
def P17832218048454443810.Spec : Prop :=
  ∀ n, (P17832218048454443810.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P3064694863613215175

`∩[A002144(n+1), A007645(n+1)]`
-/

namespace A068228.P3064694863613215175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P3064694863613215175

namespace A068228

/-- `∩[A002144(n+1), A007645(n+1)]` -/
def P3064694863613215175.Spec : Prop :=
  ∀ n, (P3064694863613215175.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P6252175458994723820

`∩[A002313(n+1), A007645(n+1)]`
-/

namespace A068228.P6252175458994723820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P6252175458994723820

namespace A068228

/-- `∩[A002313(n+1), A007645(n+1)]` -/
def P6252175458994723820.Spec : Prop :=
  ∀ n, (P6252175458994723820.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P15825026651780885702

`∩[A002313(n+1), A097933(n+1)]`
-/

namespace A068228.P15825026651780885702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P15825026651780885702

namespace A068228

/-- `∩[A002313(n+1), A097933(n+1)]` -/
def P15825026651780885702.Spec : Prop :=
  ∀ n, (P15825026651780885702.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P11558518064803955591

`∩[A007645(n+1), A191218(n+1)]`
-/

namespace A068228.P11558518064803955591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P11558518064803955591

namespace A068228

/-- `∩[A007645(n+1), A191218(n+1)]` -/
def P11558518064803955591.Spec : Prop :=
  ∀ n, (P11558518064803955591.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P14905267498289007715

`∩[A007645(n+1), A125018(n+1)]`
-/

namespace A068228.P14905267498289007715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P14905267498289007715

namespace A068228

/-- `∩[A007645(n+1), A125018(n+1)]` -/
def P14905267498289007715.Spec : Prop :=
  ∀ n, (P14905267498289007715.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P5919557864641781262

`∩[A002476(n+1), A230779(n+1)]`
-/

namespace A068228.P5919557864641781262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P5919557864641781262

namespace A068228

/-- `∩[A002476(n+1), A230779(n+1)]` -/
def P5919557864641781262.Spec : Prop :=
  ∀ n, (P5919557864641781262.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P2374846814136147626

`∩[A007645(n+1), A230779(n+1)]`
-/

namespace A068228.P2374846814136147626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P2374846814136147626

namespace A068228

/-- `∩[A007645(n+1), A230779(n+1)]` -/
def P2374846814136147626.Spec : Prop :=
  ∀ n, (P2374846814136147626.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P6910914566335084581

`∩[A038874(n+1), A230779(n+1)]`
-/

namespace A068228.P6910914566335084581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P6910914566335084581

namespace A068228

/-- `∩[A038874(n+1), A230779(n+1)]` -/
def P6910914566335084581.Spec : Prop :=
  ∀ n, (P6910914566335084581.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P9862791244306276054

`∩[A045331(n+1), A230779(n+1)]`
-/

namespace A068228.P9862791244306276054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P9862791244306276054

namespace A068228

/-- `∩[A045331(n+1), A230779(n+1)]` -/
def P9862791244306276054.Spec : Prop :=
  ∀ n, (P9862791244306276054.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P17033507141045724898

`∩[A045375(n+1), A230779(n+1)]`
-/

namespace A068228.P17033507141045724898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P17033507141045724898

namespace A068228

/-- `∩[A045375(n+1), A230779(n+1)]` -/
def P17033507141045724898.Spec : Prop :=
  ∀ n, (P17033507141045724898.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P17735811579609850111

`∩[A055664(n+1), A230779(n+1)]`
-/

namespace A068228.P17735811579609850111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P17735811579609850111

namespace A068228

/-- `∩[A055664(n+1), A230779(n+1)]` -/
def P17735811579609850111.Spec : Prop :=
  ∀ n, (P17735811579609850111.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P107637964973723972

`∩[A097933(n+1), A230779(n+1)]`
-/

namespace A068228.P107637964973723972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P107637964973723972

namespace A068228

/-- `∩[A097933(n+1), A230779(n+1)]` -/
def P107637964973723972.Spec : Prop :=
  ∀ n, (P107637964973723972.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P1850920597764996952

`∩[A123365(n+1), A230779(n+1)]`
-/

namespace A068228.P1850920597764996952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P1850920597764996952

namespace A068228

/-- `∩[A123365(n+1), A230779(n+1)]` -/
def P1850920597764996952.Spec : Prop :=
  ∀ n, (P1850920597764996952.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P16733275565395236323

`∩[A133290(n+1), A230779(n+1)]`
-/

namespace A068228.P16733275565395236323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P16733275565395236323

namespace A068228

/-- `∩[A133290(n+1), A230779(n+1)]` -/
def P16733275565395236323.Spec : Prop :=
  ∀ n, (P16733275565395236323.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P7537361075974584501

`∩[A137827(n+1), A230779(n+1)]`
-/

namespace A068228.P7537361075974584501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P7537361075974584501

namespace A068228

/-- `∩[A137827(n+1), A230779(n+1)]` -/
def P7537361075974584501.Spec : Prop :=
  ∀ n, (P7537361075974584501.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P8089129041324359000

`∩[A002476(n+1), A347877(n+1)]`
-/

namespace A068228.P8089129041324359000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P8089129041324359000

namespace A068228

/-- `∩[A002476(n+1), A347877(n+1)]` -/
def P8089129041324359000.Spec : Prop :=
  ∀ n, (P8089129041324359000.a n : ℤ) = A068228 (n + 1)

end A068228

/-! ## A068228.P2463962396694786928

`∩[A007645(n+1), A347877(n+1)]`
-/

namespace A068228.P2463962396694786928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068228.P2463962396694786928

namespace A068228

/-- `∩[A007645(n+1), A347877(n+1)]` -/
def P2463962396694786928.Spec : Prop :=
  ∀ n, (P2463962396694786928.a n : ℤ) = A068228 (n + 1)

end A068228

/-!
# A068229: Primes congruent to 7 (mod 12).

The programs for A068229, the canonical program `A068229.P4621681780880692968` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068229 has offset 1).

The definition of A068229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068229.P4621681780880692968

`p?[12*n-5]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068229

/-- `p?[12*n-5]` -/
def P4621681780880692968.Spec : Prop :=
  ∀ n, P4621681780880692968.a n = A068229 (n + 1)

theorem P4621681780880692968.correct : P4621681780880692968.Spec := by
  intro n
  simp only [A068229, Nat.add_sub_cancel]

end A068229

/-! ## A068229.P8592109061357282769

`∩[A002145(n+1), A002476(n+1)]`
-/

namespace A068229.P8592109061357282769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P8592109061357282769

namespace A068229

/-- `∩[A002145(n+1), A002476(n+1)]` -/
def P8592109061357282769.Spec : Prop :=
  ∀ n, (P8592109061357282769.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P6419323995896145410

`∩[A002476(n+1), A045326(n+1)]`
-/

namespace A068229.P6419323995896145410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P6419323995896145410

namespace A068229

/-- `∩[A002476(n+1), A045326(n+1)]` -/
def P6419323995896145410.Spec : Prop :=
  ∀ n, (P6419323995896145410.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P7895496339697574990

`∩[A007645(n+1), A002145(n+2)]`
-/

namespace A068229.P7895496339697574990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P7895496339697574990

namespace A068229

/-- `∩[A007645(n+1), A002145(n+2)]` -/
def P7895496339697574990.Spec : Prop :=
  ∀ n, (P7895496339697574990.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P5083661035015888015

`filter[A002145(n+1), A070563(#)]`
-/

namespace A068229.P5083661035015888015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A068229.P5083661035015888015

namespace A068229

/-- `filter[A002145(n+1), A070563(#)]` -/
def P5083661035015888015.Spec : Prop :=
  ∀ n, P5083661035015888015.a n = A068229 (n + 1)

end A068229

/-! ## A068229.P10077498656918859759

`filter[A003630(n+1), A070563(#)]`
-/

namespace A068229.P10077498656918859759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A068229.P10077498656918859759

namespace A068229

/-- `filter[A003630(n+1), A070563(#)]` -/
def P10077498656918859759.Spec : Prop :=
  ∀ n, P10077498656918859759.a n = A068229 (n + 1)

end A068229

/-! ## A068229.P2718418363808746616

`filter[A038875(n+1), A070563(#)]`
-/

namespace A068229.P2718418363808746616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A068229.P2718418363808746616

namespace A068229

/-- `filter[A038875(n+1), A070563(#)]` -/
def P2718418363808746616.Spec : Prop :=
  ∀ n, P2718418363808746616.a n = A068229 (n + 1)

end A068229

/-! ## A068229.P2636805744104133945

`filter[A045326(n+1), A070563(#)]`
-/

namespace A068229.P2636805744104133945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A068229.P2636805744104133945

namespace A068229

/-- `filter[A045326(n+1), A070563(#)]` -/
def P2636805744104133945.Spec : Prop :=
  ∀ n, P2636805744104133945.a n = A068229 (n + 1)

end A068229

/-! ## A068229.P11801332411674769190

`filter[A167135(n+1), A070563(#)]`
-/

namespace A068229.P11801332411674769190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A068229.P11801332411674769190

namespace A068229

/-- `filter[A167135(n+1), A070563(#)]` -/
def P11801332411674769190.Spec : Prop :=
  ∀ n, P11801332411674769190.a n = A068229 (n + 1)

end A068229

/-! ## A068229.P12580991772702605848

`∩[A332514(n+1), A339879(n+1)]`
-/

namespace A068229.P12580991772702605848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P12580991772702605848

namespace A068229

/-- `∩[A332514(n+1), A339879(n+1)]` -/
def P12580991772702605848.Spec : Prop :=
  ∀ n, (P12580991772702605848.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P18176783366497266500

`A017605(A167056(n+1))`
-/

namespace A068229.P18176783366497266500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 (A167056 (n + 1)).toNat

end

end A068229.P18176783366497266500

namespace A068229

/-- `A017605(A167056(n+1))` -/
def P18176783366497266500.Spec : Prop :=
  ∀ n, P18176783366497266500.a n = A068229 (n + 1)

end A068229

/-! ## A068229.P9448260273280313401

`∩[A002145(n+1), A017605(n)]`
-/

namespace A068229.P9448260273280313401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P9448260273280313401

namespace A068229

/-- `∩[A002145(n+1), A017605(n)]` -/
def P9448260273280313401.Spec : Prop :=
  ∀ n, (P9448260273280313401.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P1614829937915180857

`∩[A002476(n+1), A017605(n)]`
-/

namespace A068229.P1614829937915180857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P1614829937915180857

namespace A068229

/-- `∩[A002476(n+1), A017605(n)]` -/
def P1614829937915180857.Spec : Prop :=
  ∀ n, (P1614829937915180857.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P390957359204085522

`∩[A003630(n+1), A017605(n)]`
-/

namespace A068229.P390957359204085522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P390957359204085522

namespace A068229

/-- `∩[A003630(n+1), A017605(n)]` -/
def P390957359204085522.Spec : Prop :=
  ∀ n, (P390957359204085522.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P9775305569039427548

`∩[A007645(n+1), A017605(n)]`
-/

namespace A068229.P9775305569039427548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P9775305569039427548

namespace A068229

/-- `∩[A007645(n+1), A017605(n)]` -/
def P9775305569039427548.Spec : Prop :=
  ∀ n, (P9775305569039427548.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P2951234819397582139

`∩[A009087(n+1), A017605(n)]`
-/

namespace A068229.P2951234819397582139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P2951234819397582139

namespace A068229

/-- `∩[A009087(n+1), A017605(n)]` -/
def P2951234819397582139.Spec : Prop :=
  ∀ n, (P2951234819397582139.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P732554806354552266

`∩[A038875(n+1), A017605(n)]`
-/

namespace A068229.P732554806354552266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P732554806354552266

namespace A068229

/-- `∩[A038875(n+1), A017605(n)]` -/
def P732554806354552266.Spec : Prop :=
  ∀ n, (P732554806354552266.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P3891182688978847402

`∩[A040102(n+1), A017605(n)]`
-/

namespace A068229.P3891182688978847402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P3891182688978847402

namespace A068229

/-- `∩[A040102(n+1), A017605(n)]` -/
def P3891182688978847402.Spec : Prop :=
  ∀ n, (P3891182688978847402.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P12256078510771894052

`∩[A040116(n+1), A017605(n)]`
-/

namespace A068229.P12256078510771894052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P12256078510771894052

namespace A068229

/-- `∩[A040116(n+1), A017605(n)]` -/
def P12256078510771894052.Spec : Prop :=
  ∀ n, (P12256078510771894052.a n : ℤ) = A068229 (n + 1)

end A068229

/-! ## A068229.P9321407481632633968

`∩[A040995(n+1), A017605(n)]`
-/

namespace A068229.P9321407481632633968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068229.P9321407481632633968

namespace A068229

/-- `∩[A040995(n+1), A017605(n)]` -/
def P9321407481632633968.Spec : Prop :=
  ∀ n, (P9321407481632633968.a n : ℤ) = A068229 (n + 1)

end A068229

/-!
# A068231: Primes congruent to 11 mod 12.

The programs for A068231, the canonical program `A068231.P17213326245537033468` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068231 has offset 1).

The definition of A068231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068231.P17213326245537033468

`p?[12*n-1]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068231

/-- `p?[12*n-1]` -/
def P17213326245537033468.Spec : Prop :=
  ∀ n, P17213326245537033468.a n = A068231 (n + 1)

theorem P17213326245537033468.correct : P17213326245537033468.Spec := by
  intro n
  simp only [A068231, Nat.add_sub_cancel]

end A068231

/-! ## A068231.P17503782356496857323

`∏{p}[p?[12*n+11], #]`
-/

namespace A068231.P17503782356496857323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 11

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A068231.P17503782356496857323

namespace A068231

/-- `∏{p}[p?[12*n+11], #]` -/
def P17503782356496857323.Spec : Prop :=
  ∀ n, (P17503782356496857323.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P3779874934641076502

`or(1, p?[11*(n+1)+n])`
-/

namespace A068231.P3779874934641076502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A068231.P3779874934641076502

namespace A068231

/-- `or(1, p?[11*(n+1)+n])` -/
def P3779874934641076502.Spec : Prop :=
  ∀ n, (P3779874934641076502.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P12444854087837598227

`∑{p}[p?[11*(n+1)+n], #]`
-/

namespace A068231.P12444854087837598227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A068231.P12444854087837598227

namespace A068231

/-- `∑{p}[p?[11*(n+1)+n], #]` -/
def P12444854087837598227.Spec : Prop :=
  ∀ n, (P12444854087837598227.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P12406673817120102572

`floor((4*p?[12*n+11]+1)/4)`
-/

namespace A068231.P12406673817120102572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 4⌋

end

end A068231.P12406673817120102572

namespace A068231

/-- `floor((4*p?[12*n+11]+1)/4)` -/
def P12406673817120102572.Spec : Prop :=
  ∀ n, P12406673817120102572.a n = A068231 (n + 1)

end A068231

/-! ## A068231.P16832018167956297871

`A141187(n+2)`
-/

namespace A068231.P16832018167956297871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141187 (n + 2)

end

end A068231.P16832018167956297871

namespace A068231

/-- `A141187(n+2)` -/
def P16832018167956297871.Spec : Prop :=
  ∀ n, P16832018167956297871.a n = A068231 (n + 1)

end A068231

/-! ## A068231.P15902267866265027277

`A141123(n+3)`
-/

namespace A068231.P15902267866265027277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 3)

end

end A068231.P15902267866265027277

namespace A068231

/-- `A141123(n+3)` -/
def P15902267866265027277.Spec : Prop :=
  ∀ n, P15902267866265027277.a n = A068231 (n + 1)

end A068231

/-! ## A068231.P16650081749595317215

`∩[A332516(n+1), A339879(n+1)]`
-/

namespace A068231.P16650081749595317215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P16650081749595317215

namespace A068231

/-- `∩[A332516(n+1), A339879(n+1)]` -/
def P16650081749595317215.Spec : Prop :=
  ∀ n, (P16650081749595317215.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P9457720069252288739

`A017653(A167057(n+1))`
-/

namespace A068231.P9457720069252288739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (A167057 (n + 1)).toNat

end

end A068231.P9457720069252288739

namespace A068231

/-- `A017653(A167057(n+1))` -/
def P9457720069252288739.Spec : Prop :=
  ∀ n, P9457720069252288739.a n = A068231 (n + 1)

end A068231

/-! ## A068231.P5073599751556105380

`A008594(A138620(n+1))-1`
-/

namespace A068231.P5073599751556105380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A138620 (n + 1)).toNat - 1

end

end A068231.P5073599751556105380

namespace A068231

/-- `A008594(A138620(n+1))-1` -/
def P5073599751556105380.Spec : Prop :=
  ∀ n, P5073599751556105380.a n = A068231 (n + 1)

end A068231

/-! ## A068231.P13768415030765684604

`A017653(A138620(n+1)-1)`
-/

namespace A068231.P13768415030765684604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 (A138620 (n + 1) - 1).toNat

end

end A068231.P13768415030765684604

namespace A068231

/-- `A017653(A138620(n+1)-1)` -/
def P13768415030765684604.Spec : Prop :=
  ∀ n, P13768415030765684604.a n = A068231 (n + 1)

end A068231

/-! ## A068231.P11628814925297817722

`∩[A002145(n+1), A017653(n)]`
-/

namespace A068231.P11628814925297817722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P11628814925297817722

namespace A068231

/-- `∩[A002145(n+1), A017653(n)]` -/
def P11628814925297817722.Spec : Prop :=
  ∀ n, (P11628814925297817722.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P4814971358255376379

`∩[A003627(n+1), A017653(n)]`
-/

namespace A068231.P4814971358255376379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P4814971358255376379

namespace A068231

/-- `∩[A003627(n+1), A017653(n)]` -/
def P4814971358255376379.Spec : Prop :=
  ∀ n, (P4814971358255376379.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P13492108811322257136

`∩[A007528(n+1), A017653(n)]`
-/

namespace A068231.P13492108811322257136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P13492108811322257136

namespace A068231

/-- `∩[A007528(n+1), A017653(n)]` -/
def P13492108811322257136.Spec : Prop :=
  ∀ n, (P13492108811322257136.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P16126154915045504931

`∩[A009087(n+1), A017653(n)]`
-/

namespace A068231.P16126154915045504931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P16126154915045504931

namespace A068231

/-- `∩[A009087(n+1), A017653(n)]` -/
def P16126154915045504931.Spec : Prop :=
  ∀ n, (P16126154915045504931.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P13832418960567564676

`∩[A015919(n+1), A017653(n)]`
-/

namespace A068231.P13832418960567564676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P13832418960567564676

namespace A068231

/-- `∩[A015919(n+1), A017653(n)]` -/
def P13832418960567564676.Spec : Prop :=
  ∀ n, (P13832418960567564676.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P8816098736834709682

`∩[A025584(n+1), A017653(n)]`
-/

namespace A068231.P8816098736834709682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P8816098736834709682

namespace A068231

/-- `∩[A025584(n+1), A017653(n)]` -/
def P8816098736834709682.Spec : Prop :=
  ∀ n, (P8816098736834709682.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P7336620901430902422

`∩[A038874(n+1), A017653(n)]`
-/

namespace A068231.P7336620901430902422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P7336620901430902422

namespace A068231

/-- `∩[A038874(n+1), A017653(n)]` -/
def P7336620901430902422.Spec : Prop :=
  ∀ n, (P7336620901430902422.a n : ℤ) = A068231 (n + 1)

end A068231

/-! ## A068231.P8593591999398512461

`∩[A040028(n+1), A017653(n)]`
-/

namespace A068231.P8593591999398512461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068231.P8593591999398512461

namespace A068231

/-- `∩[A040028(n+1), A017653(n)]` -/
def P8593591999398512461.Spec : Prop :=
  ∀ n, (P8593591999398512461.a n : ℤ) = A068231 (n + 1)

end A068231

/-!
# A068236: First differences of (n+1)^5 - n^5.

The programs for A068236, the canonical program `A068236.P8866221321753829906` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068236 has offset 0).

The definition of A068236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068236.P8866221321753829906

`(n+2)^5-2*(n+1)^5+n^5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068236

/-- `(n+2)^5-2*(n+1)^5+n^5` -/
def P8866221321753829906.Spec : Prop :=
  ∀ n, P8866221321753829906.a n = A068236 n

theorem P8866221321753829906.correct : P8866221321753829906.Spec := by
  intro n
  simp only [A068236]

end A068236

/-! ## A068236.P6855967879526741470

`30*A005900(n+1)`
-/

namespace A068236.P6855967879526741470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A005900 (n + 1)

end

end A068236.P6855967879526741470

namespace A068236

/-- `30*A005900(n+1)` -/
def P6855967879526741470.Spec : Prop :=
  ∀ n, P6855967879526741470.a n = A068236 n

end A068236

/-! ## A068236.P13180722267715628725

`2*5*∑[∑[ogf((3+6x+3x^2)/(1-2x+x^2))]]`
-/

namespace A068236.P13180722267715628725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A068236.P13180722267715628725

namespace A068236

/-- `2*5*∑[∑[ogf((3+6x+3x^2)/(1-2x+x^2))]]` -/
def P13180722267715628725.Spec : Prop :=
  ∀ n, P13180722267715628725.a n = A068236 n

end A068236

/-! ## A068236.P13367902796137710805

`Δ[A022521(n)]`
-/

namespace A068236.P13367902796137710805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P13367902796137710805

namespace A068236

/-- `Δ[A022521(n)]` -/
def P13367902796137710805.Spec : Prop :=
  ∀ n, P13367902796137710805.a n = A068236 n

theorem P13367902796137710805.correct : P13367902796137710805.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P13367902796137710805.f1, A068236.P13367902796137710805.a, A068236.P8866221321753829906.a, A022521, A022521.P13355079520677844041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P2528977430288214557

`∑[15*A069894(n)]`
-/

namespace A068236.P2528977430288214557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A069894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068236.P2528977430288214557

namespace A068236

/-- `∑[15*A069894(n)]` -/
def P2528977430288214557.Spec : Prop :=
  ∀ n, P2528977430288214557.a n = A068236 n

end A068236

/-! ## A068236.P4902447551145784877

`∑[30*A001844(n)]`
-/

namespace A068236.P4902447551145784877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068236.P4902447551145784877

namespace A068236

/-- `∑[30*A001844(n)]` -/
def P4902447551145784877.Spec : Prop :=
  ∀ n, P4902447551145784877.a n = A068236 n

end A068236

/-! ## A068236.P17578870415998047643

`30*(A006331(n)+n*(n+2)+1)`
-/

namespace A068236.P17578870415998047643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (A006331 n + (n * (n + 2) : ℤ) + 1)

end

end A068236.P17578870415998047643

namespace A068236

/-- `30*(A006331(n)+n*(n+2)+1)` -/
def P17578870415998047643.Spec : Prop :=
  ∀ n, P17578870415998047643.a n = A068236 n

end A068236

/-! ## A068236.P595506232939108209

`((2*(n+1))²+2)*(A016897(n)+1)`
-/

namespace A068236.P595506232939108209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ 2 + 2 : ℤ) * (A016897 n + 1)

end

end A068236.P595506232939108209

namespace A068236

/-- `((2*(n+1))²+2)*(A016897(n)+1)` -/
def P595506232939108209.Spec : Prop :=
  ∀ n, P595506232939108209.a n = A068236 n

theorem P595506232939108209.correct : P595506232939108209.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P595506232939108209.a, A068236.P8866221321753829906.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P11484250723474758052

`lcm(2, Δ[Δ[n*n²²]])`
-/

namespace A068236.P11484250723474758052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n)

end

end A068236.P11484250723474758052

namespace A068236

/-- `lcm(2, Δ[Δ[n*n²²]])` -/
def P11484250723474758052.Spec : Prop :=
  ∀ n, (P11484250723474758052.a n : ℤ) = A068236 n

end A068236

/-! ## A068236.P519300925638574260

`A101098(n+2)`
-/

namespace A068236.P519300925638574260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101098 (n + 2)

end

end A068236.P519300925638574260

namespace A068236

/-- `A101098(n+2)` -/
def P519300925638574260.Spec : Prop :=
  ∀ n, P519300925638574260.a n = A068236 n

end A068236

/-! ## A068236.P17842889627925231852

`Δ[Δ[A054604(n)]]`
-/

namespace A068236.P17842889627925231852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P17842889627925231852

namespace A068236

/-- `Δ[Δ[A054604(n)]]` -/
def P17842889627925231852.Spec : Prop :=
  ∀ n, P17842889627925231852.a n = A068236 n

theorem P17842889627925231852.correct : P17842889627925231852.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P17842889627925231852.f2, A068236.P17842889627925231852.f1, A068236.P17842889627925231852.a, A068236.P8866221321753829906.a, A054604, A054604.P9632643687677748139.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P8190110777449666649

`Δ[Δ[A131471(n)]]`
-/

namespace A068236.P8190110777449666649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P8190110777449666649

namespace A068236

/-- `Δ[Δ[A131471(n)]]` -/
def P8190110777449666649.Spec : Prop :=
  ∀ n, P8190110777449666649.a n = A068236 n

theorem P8190110777449666649.correct : P8190110777449666649.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P8190110777449666649.f2, A068236.P8190110777449666649.f1, A068236.P8190110777449666649.a, A068236.P8866221321753829906.a, A131471, A131471.P12482115226042697987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P17952115841483508759

`Δ[Δ[A242436(n)]]`
-/

namespace A068236.P17952115841483508759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P17952115841483508759

namespace A068236

/-- `Δ[Δ[A242436(n)]]` -/
def P17952115841483508759.Spec : Prop :=
  ∀ n, P17952115841483508759.a n = A068236 n

theorem P17952115841483508759.correct : P17952115841483508759.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P17952115841483508759.f2, A068236.P17952115841483508759.f1, A068236.P17952115841483508759.a, A068236.P8866221321753829906.a, A242436, A242436.P7002809254185304160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P112076100134354787

`5*A061804(n+1)`
-/

namespace A068236.P112076100134354787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A061804 (n + 1)

end

end A068236.P112076100134354787

namespace A068236

/-- `5*A061804(n+1)` -/
def P112076100134354787.Spec : Prop :=
  ∀ n, P112076100134354787.a n = A068236 n

theorem P112076100134354787.correct : P112076100134354787.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P112076100134354787.a, A068236.P8866221321753829906.a, A061804, A061804.P16305426185761710400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P7818448549640947915

`10*(n+1)*A058331(n+1)`
-/

namespace A068236.P7818448549640947915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) * A058331 (n + 1)

end

end A068236.P7818448549640947915

namespace A068236

/-- `10*(n+1)*A058331(n+1)` -/
def P7818448549640947915.Spec : Prop :=
  ∀ n, P7818448549640947915.a n = A068236 n

theorem P7818448549640947915.correct : P7818448549640947915.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P7818448549640947915.a, A068236.P8866221321753829906.a, A058331, A058331.P11448505833250118096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P12011895447498218239

`Δ[Δ[A000584(n)]]`
-/

namespace A068236.P12011895447498218239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P12011895447498218239

namespace A068236

/-- `Δ[Δ[A000584(n)]]` -/
def P12011895447498218239.Spec : Prop :=
  ∀ n, P12011895447498218239.a n = A068236 n

theorem P12011895447498218239.correct : P12011895447498218239.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P12011895447498218239.f2, A068236.P12011895447498218239.f1, A068236.P12011895447498218239.a, A068236.P8866221321753829906.a, A000584, A000584.P5477385692209315495.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P10571330944087692366

`Δ[Δ[A061167(n)]]`
-/

namespace A068236.P10571330944087692366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P10571330944087692366

namespace A068236

/-- `Δ[Δ[A061167(n)]]` -/
def P10571330944087692366.Spec : Prop :=
  ∀ n, P10571330944087692366.a n = A068236 n

theorem P10571330944087692366.correct : P10571330944087692366.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P10571330944087692366.f2, A068236.P10571330944087692366.f1, A068236.P10571330944087692366.a, A068236.P8866221321753829906.a, A061167, A061167.P10314290942309870978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P5969412078204627218

`Δ[Δ[A180355(n)]]`
-/

namespace A068236.P5969412078204627218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P5969412078204627218

namespace A068236

/-- `Δ[Δ[A180355(n)]]` -/
def P5969412078204627218.Spec : Prop :=
  ∀ n, P5969412078204627218.a n = A068236 n

theorem P5969412078204627218.correct : P5969412078204627218.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P5969412078204627218.f2, A068236.P5969412078204627218.f1, A068236.P5969412078204627218.a, A068236.P8866221321753829906.a, A180355, A180355.P15220514206579301927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P1323810266779595303

`Δ[Δ[A271208(n)]]`
-/

namespace A068236.P1323810266779595303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271208 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P1323810266779595303

namespace A068236

/-- `Δ[Δ[A271208(n)]]` -/
def P1323810266779595303.Spec : Prop :=
  ∀ n, P1323810266779595303.a n = A068236 n

theorem P1323810266779595303.correct : P1323810266779595303.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P1323810266779595303.f2, A068236.P1323810266779595303.f1, A068236.P1323810266779595303.a, A068236.P8866221321753829906.a, A271208, A271208.P15436912718965247679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-! ## A068236.P8550784754450033534

`Δ[Δ[A271209(n)]]`
-/

namespace A068236.P8550784754450033534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068236.P8550784754450033534

namespace A068236

/-- `Δ[Δ[A271209(n)]]` -/
def P8550784754450033534.Spec : Prop :=
  ∀ n, P8550784754450033534.a n = A068236 n

theorem P8550784754450033534.correct : P8550784754450033534.Spec := by
  intro n
  simp only [A068236, Nat.add_sub_cancel, A068236.P8550784754450033534.f2, A068236.P8550784754450033534.f1, A068236.P8550784754450033534.a, A068236.P8866221321753829906.a, A271209, A271209.P2605828759882047682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068236

/-!
# A068237: Numerators of arithmetic derivative of 1/n: -A003415(n)/n^2.

The programs for A068237, there is no canonical definition to state claims against.
-/

/-! ## A068237.P2832075049924875332

`A084886(∑[n]+1)`
-/

namespace A068237.P2832075049924875332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084886 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A068237.P2832075049924875332

/-! ## A068237.P2306039822775549086

`A318875(A287188(n))-A082343(n+1)`
-/

namespace A068237.P2306039822775549086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (A287188 n).toNat - A082343 (n + 1)

end

end A068237.P2306039822775549086

/-! ## A068237.P5862353912916128277

`A001489(A082343(n+1)%Δ[A136137(n+1)])`
-/

namespace A068237.P5862353912916128277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (Int.tmod (A082343 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A068237.P5862353912916128277

/-! ## A068237.P17589409074884805091

`A318875(A126646(n))-A082343(n+1)`
-/

namespace A068237.P17589409074884805091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (A126646 n).toNat - A082343 (n + 1)

end

end A068237.P17589409074884805091

/-! ## A068237.P5143990364121565263

`A121373(A269690(3*n+2))-A373363(n+1)`
-/

namespace A068237.P5143990364121565263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A269690 (3 * n + 2)).toNat - A373363 (n + 1)

end

end A068237.P5143990364121565263

/-!
# A068238: Denominators of arithmetic derivative of 1/n: -A003415(n)/n^2.

The programs for A068238, the canonical program `A068238.P5212387660254963000` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068238 has offset 1).

The definition of A068238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068238.P5212387660254963000

`(n+1)²/gcd((n+1)², ∑[A258057(n)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A068238

/-- `(n+1)²/gcd((n+1)², ∑[A258057(n)])` -/
def P5212387660254963000.Spec : Prop :=
  ∀ n, P5212387660254963000.a n = (A068238 (n + 1) : ℚ)

end A068238

/-! ## A068238.P15326543476451820797

`A064549(n+1)/gcd(A064549(n+1), A342001(n+1))`
-/

namespace A068238.P15326543476451820797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (Int.gcd (A064549 (n + 1)) (A342001 (n + 1)) : ℚ)

end

end A068238.P15326543476451820797

namespace A068238

/-- `A064549(n+1)/gcd(A064549(n+1), A342001(n+1))` -/
def P15326543476451820797.Spec : Prop :=
  ∀ n, P15326543476451820797.a n = (A068238 (n + 1) : ℚ)

end A068238

/-! ## A068238.P15575084848494104657

`A084887(∑[n]+1)`
-/

namespace A068238.P15575084848494104657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084887 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A068238.P15575084848494104657

namespace A068238

/-- `A084887(∑[n]+1)` -/
def P15575084848494104657.Spec : Prop :=
  ∀ n, P15575084848494104657.a n = A068238 (n + 1)

end A068238

/-! ## A068238.P4763800015486684767

`or(char[2], A084887(A000124(n)))`
-/

namespace A068238.P4763800015486684767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084887 (A000124 n).toNat)

end

end A068238.P4763800015486684767

namespace A068238

/-- `or(char[2], A084887(A000124(n)))` -/
def P4763800015486684767.Spec : Prop :=
  ∀ n, P4763800015486684767.a n = A068238 (n + 1)

end A068238

/-! ## A068238.P14975164733725279438

`(n+1)*∏{p}[n+1, #]/A006519(A324873(2*n+3)!)`
-/

namespace A068238.P14975164733725279438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / (A006519 (Nat.factorial (A324873 (2 * n + 3)).toNat) : ℚ)

end

end A068238.P14975164733725279438

namespace A068238

/-- `(n+1)*∏{p}[n+1, #]/A006519(A324873(2*n+3)!)` -/
def P14975164733725279438.Spec : Prop :=
  ∀ n, P14975164733725279438.a n = (A068238 (n + 1) : ℚ)

end A068238

/-!
# A068240: 1/2 the number of colorings of a 4 X 4 square array with n colors.

The programs for A068240, there is no canonical definition to state claims against.
-/

/-! ## A068240.P14723706001212421087

`record[A182406(A141214(n))/2]`
-/

namespace A068240.P14723706001212421087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182406 (A141214 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068240.P14723706001212421087

/-!
# A068244: 1/6 the number of colorings of a 3 X 3 rhombic- or staggered- hexagonal array with n colors.

The programs for A068244, the canonical program `A068244.P4361570666989602982` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068244 has offset 3).

The definition of A068244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068244.P5405147274442305927

`(n/3+1)*A168180(n+1)`
-/

namespace A068244.P5405147274442305927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + 1) * (A168180 (n + 1) : ℚ)

end

end A068244.P5405147274442305927

namespace A068244

/-- `(n/3+1)*A168180(n+1)` -/
def P5405147274442305927.Spec : Prop :=
  ∀ n, P5405147274442305927.a n = (A068244 (n + 3) : ℚ)

end A068244

/-! ## A068244.P4361570666989602982

`(A060888(n+1)+n)*∑[∑[n+1]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068244

/-- `(A060888(n+1)+n)*∑[∑[n+1]]` -/
def P4361570666989602982.Spec : Prop :=
  ∀ n, P4361570666989602982.a n = A068244 (n + 3)

theorem P4361570666989602982.correct : P4361570666989602982.Spec := by
  intro n
  simp only [A068244, Nat.add_sub_cancel]

end A068244

/-! ## A068244.P7626570710170473858

`A002417(n+1)*A191012(n+1)`
-/

namespace A068244.P7626570710170473858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) * A191012 (n + 1)

end

end A068244.P7626570710170473858

namespace A068244

/-- `A002417(n+1)*A191012(n+1)` -/
def P7626570710170473858.Spec : Prop :=
  ∀ n, P7626570710170473858.a n = A068244 (n + 3)

end A068244

/-! ## A068244.P6763585345703387961

`A182789(n+3)/Δ[A003215(n)]`
-/

namespace A068244.P6763585345703387961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182789 (n + 3) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A068244.P6763585345703387961

namespace A068244

/-- `A182789(n+3)/Δ[A003215(n)]` -/
def P6763585345703387961.Spec : Prop :=
  ∀ n, P6763585345703387961.a n = (A068244 (n + 3) : ℚ)

end A068244

/-! ## A068244.P10166128563762336779

`A002624(2*n)*A191012(n+1)`
-/

namespace A068244.P10166128563762336779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (2 * n) * A191012 (n + 1)

end

end A068244.P10166128563762336779

namespace A068244

/-- `A002624(2*n)*A191012(n+1)` -/
def P10166128563762336779.Spec : Prop :=
  ∀ n, P10166128563762336779.a n = A068244 (n + 3)

end A068244

/-!
# A068250: 1/24 the number of colorings of a 3 X 3 octagonal array with n colors.

The programs for A068250, the canonical program `A068250.P10092043592590067592` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068250 has offset 4).

The definition of A068250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068250.P10092043592590067592

`(n+2)*(n+3)*((n+4)²-5*(n+4)+7)*(n+1)^4*(n+4)/24`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068250

/-- `(n+2)*(n+3)*((n+4)²-5*(n+4)+7)*(n+1)^4*(n+4)/24` -/
def P10092043592590067592.Spec : Prop :=
  ∀ n, P10092043592590067592.a n = (A068250 (n + 4) : ℚ)

end A068250

/-!
# A068253: 1/3 of the number of colorings of an n X n square array with 3 colors.

The programs for A068253, there is no canonical definition to state claims against.
-/

/-! ## A068253.P8501851374144524904

`A078099(∑[4*n]+1)`
-/

namespace A068253.P8501851374144524904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078099 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A068253.P8501851374144524904

/-! ## A068253.P2455979533112518232

`2*A207993(n+1)-A015161(n)`
-/

namespace A068253.P2455979533112518232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207993 (n + 1) - A015161 n

end

end A068253.P2455979533112518232

/-! ## A068253.P3378145274622254015

`2*A207993(n+1)-A091536(n)`
-/

namespace A068253.P3378145274622254015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207993 (n + 1) - A091536 n

end

end A068253.P3378145274622254015

/-! ## A068253.P5980935781877408307

`A000032(A015161(n))*A207993(n+1)`
-/

namespace A068253.P5980935781877408307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A015161 n).toNat * A207993 (n + 1)

end

end A068253.P5980935781877408307

/-! ## A068253.P1453874537591323299

`A020639(A005897(n))*A207993(n+1)`
-/

namespace A068253.P1453874537591323299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005897 n).toNat * A207993 (n + 1)

end

end A068253.P1453874537591323299

/-!
# A068254: 1/4 the number of colorings of an n X n square array with 4 colors.

The programs for A068254, there is no canonical definition to state claims against.
-/

/-! ## A068254.P16842520491394577518

`A222444(2*(n+1)²-2*(n+1)+1)`
-/

namespace A068254.P16842520491394577518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222444 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A068254.P16842520491394577518

/-! ## A068254.P1452066895050198954

`2*A233012(n+1)-1`
-/

namespace A068254.P1452066895050198954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233012 (n + 1) - 1

end

end A068254.P1452066895050198954

/-!
# A068255: 1/5 the number of colorings of an n X n square array with 5 colors.

The programs for A068255, there is no canonical definition to state claims against.
-/

/-! ## A068255.P14343820964487958802

`A222144(2*(n+1)²-2*(n+1)+1)`
-/

namespace A068255.P14343820964487958802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A068255.P14343820964487958802

/-!
# A068256: 1/6 the number of colorings of an n X n square array with 6 colors.

The programs for A068256, there is no canonical definition to state claims against.
-/

/-! ## A068256.P13495424564446678581

`A222281(2*(n+1)²-2*(n+1)+1)`
-/

namespace A068256.P13495424564446678581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A068256.P13495424564446678581

/-! ## A068256.P48336623741589769

`or(1, A222281(A001844(n)))`
-/

namespace A068256.P48336623741589769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A222281 (A001844 n).toNat)

end

end A068256.P48336623741589769

/-! ## A068256.P15294168463528244463

`A222281(A001844(n))+A185284(n)`
-/

namespace A068256.P15294168463528244463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A001844 n).toNat + A185284 n

end

end A068256.P15294168463528244463

/-! ## A068256.P5379213649665837918

`A222281(A001844(n))+A000007(n+1)`
-/

namespace A068256.P5379213649665837918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222281 (A001844 n).toNat + A000007 (n + 1)

end

end A068256.P5379213649665837918

/-!
# A068257: 

The programs for A068257, there is no canonical definition to state claims against.
-/

/-! ## A068257.P9360987718719403843

`A222340((n+1)²+n²)`
-/

namespace A068257.P9360987718719403843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 ((n + 1) ^ 2 + n ^ 2)

end

end A068257.P9360987718719403843

/-! ## A068257.P9923079311140367804

`or(A000007(n), A222340(A001844(n)))`
-/

namespace A068257.P9923079311140367804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222340 (A001844 n).toNat)

end

end A068257.P9923079311140367804

/-!
# A068258: 

The programs for A068258, there is no canonical definition to state claims against.
-/

/-! ## A068258.P14717766815651577328

`A222462((n+1)²+n²)`
-/

namespace A068258.P14717766815651577328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222462 ((n + 1) ^ 2 + n ^ 2)

end

end A068258.P14717766815651577328

/-!
# A068271: 1/4 the number of colorings of an n X n rhombic hexagonal array with 4 colors.

The programs for A068271, there is no canonical definition to state claims against.
-/

/-! ## A068271.P5596663784208629880

`A212163(A052905(n)+9)/4`
-/

namespace A068271.P5596663784208629880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212163 (A052905 n + 9).toNat : ℚ) / 4

end

end A068271.P5596663784208629880

/-!
# A068293: a(1) = 1; thereafter a(n) = 6*(2^(n-1) - 1).

The programs for A068293, the canonical program `A068293.P8754097377432460261` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068293 has offset 1).

The definition of A068293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068293.P8754097377432460261

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=6, a(2)=18`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068293

/-- `3*a(n-1)-2*a(n-2)` -/
def P8754097377432460261.Spec : Prop :=
  ∀ n, P8754097377432460261.a n = A068293 (n + 1)

theorem P8754097377432460261.correct : P8754097377432460261.Spec := by
  intro n
  simp only [A068293, Nat.add_sub_cancel]

end A068293

/-! ## A068293.P10363986388887499693

`ogf((1+3x+2x^2)/(1-3x+2x^2))`
-/

namespace A068293.P10363986388887499693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -3, 2] n

end

end A068293.P10363986388887499693

namespace A068293

/-- `ogf((1+3x+2x^2)/(1-3x+2x^2))` -/
def P10363986388887499693.Spec : Prop :=
  ∀ n, P10363986388887499693.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P2275288656981995642

`2*(a(n-1)+3)` with `a(0)=1, a(1)=6`
-/

namespace A068293.P2275288656981995642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * (a (n - 1) + 3)

end

end A068293.P2275288656981995642

namespace A068293

/-- `2*(a(n-1)+3)` -/
def P2275288656981995642.Spec : Prop :=
  ∀ n, (P2275288656981995642.a n : ℤ) = A068293 (n + 1)

end A068293

/-! ## A068293.P3207252412598057905

`lcm(2, a(n-1)+3)` with `a(0)=1, a(1)=6`
-/

namespace A068293.P3207252412598057905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.lcm 2 (a (n - 1) + 3)

end

end A068293.P3207252412598057905

namespace A068293

/-- `lcm(2, a(n-1)+3)` -/
def P3207252412598057905.Spec : Prop :=
  ∀ n, (P3207252412598057905.a n : ℤ) = A068293 (n + 1)

end A068293

/-! ## A068293.P4882552026346868553

`∑[2*a(n-1)]` with `a(0)=1, a(1)=5, a(2)=12`
-/

namespace A068293.P4882552026346868553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 12] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068293.P4882552026346868553

namespace A068293

/-- `∑[2*a(n-1)]` -/
def P4882552026346868553.Spec : Prop :=
  ∀ n, (P4882552026346868553.a n : ℤ) = A068293 (n + 1)

end A068293

/-! ## A068293.P6883140863461121018

`8-2*(1-a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A068293.P6883140863461121018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  8 - 2 * (1 - a (n - 1))

end

end A068293.P6883140863461121018

namespace A068293

/-- `8-2*(1-a(n-1))` -/
def P6883140863461121018.Spec : Prop :=
  ∀ n, P6883140863461121018.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P7403931861743590094

`a(n-1)+a(n-1)+6` with `a(0)=1, a(1)=6`
-/

namespace A068293.P7403931861743590094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + (a (n - 1) + 6)

end

end A068293.P7403931861743590094

namespace A068293

/-- `a(n-1)+a(n-1)+6` -/
def P7403931861743590094.Spec : Prop :=
  ∀ n, (P7403931861743590094.a n : ℤ) = A068293 (n + 1)

end A068293

/-! ## A068293.P506002759078115450

`A061776(2*n)`
-/

namespace A068293.P506002759078115450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061776 (2 * n)

end

end A068293.P506002759078115450

namespace A068293

/-- `A061776(2*n)` -/
def P506002759078115450.Spec : Prop :=
  ∀ n, P506002759078115450.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P4966334150757042457

`record[xor(1, A131128(n)-1)]`
-/

namespace A068293.P4966334150757042457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A131128 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068293.P4966334150757042457

namespace A068293

/-- `record[xor(1, A131128(n)-1)]` -/
def P4966334150757042457.Spec : Prop :=
  ∀ n, P4966334150757042457.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P7460417069308463374

`record[abs(1-∑[A082505(n)])]`
-/

namespace A068293.P7460417069308463374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068293.P7460417069308463374

namespace A068293

/-- `record[abs(1-∑[A082505(n)])]` -/
def P7460417069308463374.Spec : Prop :=
  ∀ n, P7460417069308463374.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P15275806156012494017

`record[abs(2-A296954(n+1))]`
-/

namespace A068293.P15275806156012494017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A296954 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068293.P15275806156012494017

namespace A068293

/-- `record[abs(2-A296954(n+1))]` -/
def P15275806156012494017.Spec : Prop :=
  ∀ n, P15275806156012494017.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P10198602264185414548

`A051667(n)+A008574(n)`
-/

namespace A068293.P10198602264185414548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051667 n + A008574 n

end

end A068293.P10198602264185414548

namespace A068293

/-- `A051667(n)+A008574(n)` -/
def P10198602264185414548.Spec : Prop :=
  ∀ n, P10198602264185414548.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P11234116000240651264

`A057428(n)+A048488(n)`
-/

namespace A068293.P11234116000240651264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A048488 n

end

end A068293.P11234116000240651264

namespace A068293

/-- `A057428(n)+A048488(n)` -/
def P11234116000240651264.Spec : Prop :=
  ∀ n, P11234116000240651264.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P7355152488226848449

`A142964(n)+A004273(n)`
-/

namespace A068293.P7355152488226848449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142964 n + A004273 n

end

end A068293.P7355152488226848449

namespace A068293

/-- `A142964(n)+A004273(n)` -/
def P7355152488226848449.Spec : Prop :=
  ∀ n, P7355152488226848449.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P18393437183947326916

`A296953(n)+A053209(n)`
-/

namespace A068293.P18393437183947326916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296953 n + A053209 n

end

end A068293.P18393437183947326916

namespace A068293

/-- `A296953(n)+A053209(n)` -/
def P18393437183947326916.Spec : Prop :=
  ∀ n, P18393437183947326916.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P13457959263969684002

`A396637(n)+A168193(n)`
-/

namespace A068293.P13457959263969684002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396637 n + A168193 n

end

end A068293.P13457959263969684002

namespace A068293

/-- `A396637(n)+A168193(n)` -/
def P13457959263969684002.Spec : Prop :=
  ∀ n, P13457959263969684002.a n = A068293 (n + 1)

theorem P13457959263969684002.correct : P13457959263969684002.Spec := by
  intro n
  simp only [A068293, Nat.add_sub_cancel, A068293.P13457959263969684002.a, A068293.P8754097377432460261.a, A168193, A168193.P10033512296613066054.a, A396637, A396637.P18262143251193077548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A068293

/-! ## A068293.P17206977174947008728

`A048488(n)-A057427(n)`
-/

namespace A068293.P17206977174947008728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048488 n - A057427 n

end

end A068293.P17206977174947008728

namespace A068293

/-- `A048488(n)-A057427(n)` -/
def P17206977174947008728.Spec : Prop :=
  ∀ n, P17206977174947008728.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P3322417348074868128

`A048489(n)-A155559(n)`
-/

namespace A068293.P3322417348074868128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048489 n - A155559 n

end

end A068293.P3322417348074868128

namespace A068293

/-- `A048489(n)-A155559(n)` -/
def P3322417348074868128.Spec : Prop :=
  ∀ n, P3322417348074868128.a n = A068293 (n + 1)

end A068293

/-! ## A068293.P2306047097288179385

`A176448(n)-A146528(n)`
-/

namespace A068293.P2306047097288179385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176448 n - A146528 n

end

end A068293.P2306047097288179385

namespace A068293

/-- `A176448(n)-A146528(n)` -/
def P2306047097288179385.Spec : Prop :=
  ∀ n, P2306047097288179385.a n = A068293 (n + 1)

end A068293

