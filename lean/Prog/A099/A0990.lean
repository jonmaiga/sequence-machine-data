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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
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
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A099000: Indices k such that the k-th prime is a Fibonacci number.

The programs for A099000, there is no canonical definition to state claims against.
-/

/-! ## A099000.P1147456797534409870

`A000720(A005478(n+1))`
-/

namespace A099000.P1147456797534409870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005478 (n + 1)).toNat

end

end A099000.P1147456797534409870

/-! ## A099000.P6195988555319950369

`A054782(A001605(n+1))`
-/

namespace A099000.P6195988555319950369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (A001605 (n + 1)).toNat

end

end A099000.P6195988555319950369

/-! ## A099000.P3475585760399699346

`A054782(eq[0, A079677(n)])`
-/

namespace A099000.P3475585760399699346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099000.P3475585760399699346

/-! ## A099000.P12615989050037447069

`A054782(eq[1, A038575(n)])`
-/

namespace A099000.P12615989050037447069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099000.P12615989050037447069

/-! ## A099000.P17718313074809476726

`A054782(lt[A079677(n), 1])`
-/

namespace A099000.P17718313074809476726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A099000.P17718313074809476726

/-!
# A099003: Number of 4 X n 0-1 matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (10;0) and (11;0).

The programs for A099003, the canonical program `A099003.P478971903155947355` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099003 has offset 0).

The definition of A099003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099003.P478971903155947355

`15*2^n-14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099003

/-- `15*2^n-14` -/
def P478971903155947355.Spec : Prop :=
  ∀ n, P478971903155947355.a n = A099003 n

theorem P478971903155947355.correct : P478971903155947355.Spec := by
  intro n
  simp only [A099003]

end A099003

/-! ## A099003.P4871613076868146565

`ogf((1+13x)/(1-3x+2x^2))`
-/

namespace A099003.P4871613076868146565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 13] [1, -3, 2] n

end

end A099003.P4871613076868146565

namespace A099003

/-- `ogf((1+13x)/(1-3x+2x^2))` -/
def P4871613076868146565.Spec : Prop :=
  ∀ n, P4871613076868146565.a n = A099003 n

end A099003

/-! ## A099003.P14746285302917549464

`2*(a(n-1)+7)` with `a(0)=1`
-/

namespace A099003.P14746285302917549464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 7)

end

end A099003.P14746285302917549464

namespace A099003

/-- `2*(a(n-1)+7)` -/
def P14746285302917549464.Spec : Prop :=
  ∀ n, (P14746285302917549464.a n : ℤ) = A099003 n

theorem P14746285302917549464.correct : P14746285302917549464.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099003, Nat.add_sub_cancel, A099003.P14746285302917549464.a, A099003.P478971903155947355.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099003, Nat.add_sub_cancel, A099003.P14746285302917549464.a, A099003.P478971903155947355.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099003

/-! ## A099003.P15131378288052164943

`∑[2*a(n-1)]` with `a(0)=1, a(1)=15`
-/

namespace A099003.P15131378288052164943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099003.P15131378288052164943

namespace A099003

/-- `∑[2*a(n-1)]` -/
def P15131378288052164943.Spec : Prop :=
  ∀ n, (P15131378288052164943.a n : ℤ) = A099003 n

end A099003

/-! ## A099003.P14576505537567041504

`lcm(2, a(n-1)+7)` with `a(0)=1, a(1)=16`
-/

namespace A099003.P14576505537567041504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  Nat.lcm 2 (a (n - 1) + 7)

end

end A099003.P14576505537567041504

namespace A099003

/-- `lcm(2, a(n-1)+7)` -/
def P14576505537567041504.Spec : Prop :=
  ∀ n, (P14576505537567041504.a n : ℤ) = A099003 n

end A099003

/-! ## A099003.P118939201082373769

`4*(4-(1-a(n-1))/2)` with `a(0)=1`
-/

namespace A099003.P118939201082373769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (4 - (1 - a (n - 1)) / 2)

end

end A099003.P118939201082373769

namespace A099003

/-- `4*(4-(1-a(n-1))/2)` -/
def P118939201082373769.Spec : Prop :=
  ∀ n, P118939201082373769.a n = (A099003 n : ℚ)

theorem P118939201082373769.correct : P118939201082373769.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099003, Nat.add_sub_cancel, A099003.P118939201082373769.a, A099003.P478971903155947355.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099003, Nat.add_sub_cancel, A099003.P118939201082373769.a, A099003.P478971903155947355.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099003

/-! ## A099003.P8062568479552480164

`abs(4-5*A033484(n))`
-/

namespace A099003.P8062568479552480164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - 5 * A033484 n|

end

end A099003.P8062568479552480164

namespace A099003

/-- `abs(4-5*A033484(n))` -/
def P8062568479552480164.Spec : Prop :=
  ∀ n, P8062568479552480164.a n = A099003 n

end A099003

/-! ## A099003.P15460096076231453517

`(A139700(n+1)+1)/2`
-/

namespace A099003.P15460096076231453517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139700 (n + 1) + 1 : ℚ) / 2

end

end A099003.P15460096076231453517

namespace A099003

/-- `(A139700(n+1)+1)/2` -/
def P15460096076231453517.Spec : Prop :=
  ∀ n, P15460096076231453517.a n = (A099003 n : ℚ)

theorem P15460096076231453517.correct : P15460096076231453517.Spec := by
  intro n
  simp only [A099003, Nat.add_sub_cancel, A099003.P15460096076231453517.a, A099003.P478971903155947355.a, A139700, A139700.P14305388242412979496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099003

/-! ## A099003.P14572245718860925850

`A166118(n+1)%A156203(n+1)`
-/

namespace A099003.P14572245718860925850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166118 (n + 1)) (A156203 (n + 1))

end

end A099003.P14572245718860925850

namespace A099003

/-- `A166118(n+1)%A156203(n+1)` -/
def P14572245718860925850.Spec : Prop :=
  ∀ n, P14572245718860925850.a n = A099003 n

end A099003

/-! ## A099003.P8239035804512127768

`A182465(n)%A175806(n)`
-/

namespace A099003.P8239035804512127768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182465 n) (A175806 n)

end

end A099003.P8239035804512127768

namespace A099003

/-- `A182465(n)%A175806(n)` -/
def P8239035804512127768.Spec : Prop :=
  ∀ n, P8239035804512127768.a n = A099003 n

end A099003

/-! ## A099003.P6634086096218500274

`A304171(n)%A182461(n)`
-/

namespace A099003.P6634086096218500274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304171 n) (A182461 n)

end

end A099003.P6634086096218500274

namespace A099003

/-- `A304171(n)%A182461(n)` -/
def P6634086096218500274.Spec : Prop :=
  ∀ n, P6634086096218500274.a n = A099003 n

end A099003

/-!
# A099004: First differences of A081145.

The programs for A099004, there is no canonical definition to state claims against.
-/

/-! ## A099004.P3742613571381566796

`Δ[A081145(n+1)]`
-/

namespace A099004.P3742613571381566796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099004.P3742613571381566796

/-! ## A099004.P13092259298862400460

`Δ[A258136(n+1)/2]`
-/

namespace A099004.P13092259298862400460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258136 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099004.P13092259298862400460

/-! ## A099004.P3896854383327689498

`A081145(n+2)-A081145(n+1)`
-/

namespace A099004.P3896854383327689498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081145 (n + 2) - A081145 (n + 1)

end

end A099004.P3896854383327689498

/-! ## A099004.P3522949050182755667

`(A258136(n+2)-A258136(n+1))/2`
-/

namespace A099004.P3522949050182755667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258136 (n + 2) - A258136 (n + 1) : ℚ) / 2

end

end A099004.P3522949050182755667

/-! ## A099004.P18339601759681480265

`Δ[A000463(A258136(n+1))]`
-/

namespace A099004.P18339601759681480265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A258136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099004.P18339601759681480265

/-! ## A099004.P6621984050379255905

`Δ[A052938(A258136(n+1)-1)]`
-/

namespace A099004.P6621984050379255905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A258136 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099004.P6621984050379255905

/-!
# A099005: Numbers k such that 4*10^k + 6*R_k - 3 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099005, there is no canonical definition to state claims against.
-/

/-! ## A099005.P5430276153651612199

`A101730(n+1)+1`
-/

namespace A099005.P5430276153651612199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101730 (n + 1) + 1

end

end A099005.P5430276153651612199

/-! ## A099005.P7549365322316622063

`lt[A000265(A330927(n+1)+1), A194108(n+1)]`
-/

namespace A099005.P7549365322316622063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A330927 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099005.P7549365322316622063

/-!
# A099006: Numbers k such that 2*10^k + 5*R_k + 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099006, there is no canonical definition to state claims against.
-/

/-! ## A099006.P9175391713585365063

`A101962(n+1)+1`
-/

namespace A099006.P9175391713585365063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101962 (n + 1) + 1

end

end A099006.P9175391713585365063

/-! ## A099006.P17985367486023990097

`A020725(A101962(n+1))`
-/

namespace A099006.P17985367486023990097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A101962 (n + 1)).toNat

end

end A099006.P17985367486023990097

/-! ## A099006.P3066670576185179510

`abs(A131738(A101962(Δ[n²]-n)))`
-/

namespace A099006.P3066670576185179510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 (A101962 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat|

end

end A099006.P3066670576185179510

/-!
# A099007: Primes of the form 6n^2 - 2n - 1.

The programs for A099007, there is no canonical definition to state claims against.
-/

/-! ## A099007.P16894767999636138923

`∩[A110014(n+1), A138987(n+1)]`
-/

namespace A099007.P16894767999636138923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099007.P16894767999636138923

/-! ## A099007.P9032310562490787535

`p?[∑[or(1, 3*(n+1))]]`
-/

namespace A099007.P9032310562490787535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A099007.P9032310562490787535

/-! ## A099007.P10670358194332885550

`p?[n*(6*n-2)-1]`
-/

namespace A099007.P10670358194332885550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((6 * n : ℤ) - 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099007.P10670358194332885550

/-! ## A099007.P8821694821597482949

`or(1, p?[A033579(n)-1])`
-/

namespace A099007.P8821694821597482949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A099007.P8821694821597482949

/-! ## A099007.P5519570036469774266

`or(1, p?[A212959(n)-1])`
-/

namespace A099007.P5519570036469774266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A099007.P5519570036469774266

/-! ## A099007.P34896394293637068

`or(1, p?[A138987(3*(n+1))])`
-/

namespace A099007.P34896394293637068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138987 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A099007.P34896394293637068

/-! ## A099007.P10437746717204460596

`record[p?[A164097(A093178(n))]]`
-/

namespace A099007.P10437746717204460596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164097 (A093178 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099007.P10437746717204460596

/-! ## A099007.P9422309290362362681

`or(1, p?[A051865(n)+A046691(n)])`
-/

namespace A099007.P9422309290362362681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + A046691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A099007.P9422309290362362681

/-! ## A099007.P8667144560068404868

`p?[A033579(n)-1]%A000108(n+4)`
-/

namespace A099007.P8667144560068404868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000108 (n + 4))

end

end A099007.P8667144560068404868

/-! ## A099007.P5604140673821337128

`A000007(n+1)+p?[A033579(n+1)-1]`
-/

namespace A099007.P5604140673821337128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099007.P5604140673821337128

/-! ## A099007.P17946934409392053301

`p?[A033579(n+1)-1]%A339676(n+1)`
-/

namespace A099007.P17946934409392053301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A339676 (n + 1))

end

end A099007.P17946934409392053301

/-! ## A099007.P2807678400863730684

`p?[A033579(n)-1]/A000108(C(2, n+2))`
-/

namespace A099007.P2807678400863730684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A099007.P2807678400863730684

/-! ## A099007.P7462703265700144678

`p?[A033579(n)-1]/(A000040(n+1)%2)!`
-/

namespace A099007.P7462703265700144678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℚ)

end

end A099007.P7462703265700144678

/-! ## A099007.P9458344263932762209

`char[A134075(n+1)]+p?[A033579(n+1)-1]`
-/

namespace A099007.P9458344263932762209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A099007.P9458344263932762209

/-! ## A099007.P1862725999672656669

`p?[A033579(n+1)-1]/A014963(gcd(n, n+1))`
-/

namespace A099007.P1862725999672656669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033579 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A014963 (Nat.gcd n (n + 1)) : ℚ)

end

end A099007.P1862725999672656669

/-!
# A099009: Fixed points of the Kaprekar mapping A151949(n) = n' - n'', where in n' the digits of n are arranged in descending, in n'' in ascending order.

The programs for A099009, there is no canonical definition to state claims against.
-/

/-! ## A099009.P8269610755076850559

`9*A132155(n+1)`
-/

namespace A099009.P8269610755076850559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A132155 (n + 1)

end

end A099009.P8269610755076850559

/-! ## A099009.P64195004974609899

`A164718(eq[1, A164719(n+1)]+1)`
-/

namespace A099009.P64195004974609899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A099009.P64195004974609899

/-! ## A099009.P9907112366050462435

`A164718(record[(n+1)/A164719(n+1)])`
-/

namespace A099009.P9907112366050462435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A164719 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A099009.P9907112366050462435

/-! ## A099009.P9118315057052145342

`A164716(record[(n+1)/A164717(n+1)²])`
-/

namespace A099009.P9118315057052145342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A164717 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164716 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A099009.P9118315057052145342

/-! ## A099009.P13518854630471172616

`record[(2-A164717(n+1))*A164716(n+1)]`
-/

namespace A099009.P13518854630471172616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A164717 (n + 1)) * A164716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099009.P13518854630471172616

/-! ## A099009.P8691115624863067523

`record[(2-A164719(n+1))*A164718(n+1)]`
-/

namespace A099009.P8691115624863067523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A164719 (n + 1)) * A164718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099009.P8691115624863067523

/-! ## A099009.P17102342545453887536

`A164716(record[gcd(n+1, A164717(n+1)+n)])`
-/

namespace A099009.P17102342545453887536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A164717 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164716 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A099009.P17102342545453887536

/-!
# A099010: Consider the Kaprekar map n->K(n) defined in A151949. Sequence gives numbers belonging to cycles of length greater than 1.

The programs for A099010, there is no canonical definition to state claims against.
-/

/-! ## A099010.P13728391620750966085

`A000027(A164716(n+4))`
-/

namespace A099010.P13728391620750966085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A164716 (n + 4)).toNat

end

end A099010.P13728391620750966085

/-! ## A099010.P9219577492793722444

`A164716(A351870(n)+4)`
-/

namespace A099010.P9219577492793722444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164716 (A351870 n + 4).toNat

end

end A099010.P9219577492793722444

/-! ## A099010.P1968872697046896296

`A164716(n+4)+A004016(A002203(n))`
-/

namespace A099010.P1968872697046896296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164716 (n + 4) + A004016 (A002203 n).toNat

end

end A099010.P1968872697046896296

/-! ## A099010.P16133358165486402801

`A374246(A356546(n))+A164716(n+4)`
-/

namespace A099010.P16133358165486402801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374246 (A356546 n).toNat + A164716 (n + 4)

end

end A099010.P16133358165486402801

/-! ## A099010.P14045615227679191617

`A049586(A370430(n))*A164716(n+4)`
-/

namespace A099010.P14045615227679191617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049586 (A370430 n).toNat * A164716 (n + 4)

end

end A099010.P14045615227679191617

/-!
# A099011: Pell pseudoprimes: odd composite numbers n such that P(n)-Kronecker(2,n) is divisible by n.

The programs for A099011, there is no canonical definition to state claims against.
-/

/-! ## A099011.P18383740967843413107

`A337233(lt[A242857(n+1), A315913(n)])`
-/

namespace A099011.P18383740967843413107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337233 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A099011.P18383740967843413107

/-!
# A099012: a(n) = 3^(n-1)*Fibonacci(n).

The programs for A099012, the canonical program `A099012.P4159124307728813131` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099012 has offset 0).

The definition of A099012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099012.P4409566682860284368

`ogf(x/(1-3x-9x^2))`
-/

namespace A099012.P4409566682860284368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -9] n

end

end A099012.P4409566682860284368

namespace A099012

/-- `ogf(x/(1-3x-9x^2))` -/
def P4409566682860284368.Spec : Prop :=
  ∀ n, P4409566682860284368.a n = A099012 n

end A099012

/-! ## A099012.P4159124307728813131

`3*a(n-1)+9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099012

/-- `3*a(n-1)+9*a(n-2)` -/
def P4159124307728813131.Spec : Prop :=
  ∀ n, (P4159124307728813131.a n : ℤ) = A099012 n

theorem P4159124307728813131.correct : P4159124307728813131.Spec := by
  intro n
  simp only [A099012]

end A099012

/-! ## A099012.P16538046810930145393

`3^(n-1)*A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099012.P16538046810930145393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

end

end A099012.P16538046810930145393

namespace A099012

/-- `3^(n-1)*A000045(n)` -/
def P16538046810930145393.Spec : Prop :=
  ∀ n, P16538046810930145393.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P16541968466135406181

`3*(a(n-1)+3*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A099012.P16541968466135406181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) + 3 * a (n - 2))

end

end A099012.P16541968466135406181

namespace A099012

/-- `3*(a(n-1)+3*a(n-2))` -/
def P16541968466135406181.Spec : Prop :=
  ∀ n, (P16541968466135406181.a n : ℤ) = A099012 n

theorem P16541968466135406181.correct : P16541968466135406181.Spec := by
  intro n
  simp only [A099012, Nat.add_sub_cancel, A099012.P16541968466135406181.a, A099012.P4159124307728813131.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099012

/-! ## A099012.P6410884818540609778

`3*(4*a(n-2)-(a(n-2)-a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A099012.P6410884818540609778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (4 * a (n - 2) - (a (n - 2) - a (n - 1)))

end

end A099012.P6410884818540609778

namespace A099012

/-- `3*(4*a(n-2)-(a(n-2)-a(n-1)))` -/
def P6410884818540609778.Spec : Prop :=
  ∀ n, P6410884818540609778.a n = A099012 n

end A099012

/-! ## A099012.P2317580704080642202

`A261397(n)/3`
-/

namespace A099012.P2317580704080642202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261397 n : ℚ) / 3

end

end A099012.P2317580704080642202

namespace A099012

/-- `A261397(n)/3` -/
def P2317580704080642202.Spec : Prop :=
  ∀ n, P2317580704080642202.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P11768269394982454325

`3^(n-2)*A022086(n)`
-/

namespace A099012.P11768269394982454325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A022086 n : ℚ)

end

end A099012.P11768269394982454325

namespace A099012

/-- `3^(n-2)*A022086(n)` -/
def P11768269394982454325.Spec : Prop :=
  ∀ n, P11768269394982454325.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P3119562451578212577

`3^(n-1)*A212804(n+1)`
-/

namespace A099012.P3119562451578212577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A212804 (n + 1) : ℚ)

end

end A099012.P3119562451578212577

namespace A099012

/-- `3^(n-1)*A212804(n+1)` -/
def P3119562451578212577.Spec : Prop :=
  ∀ n, P3119562451578212577.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P5305147272279701294

`(A001611(n)-1)*3^(n-1)`
-/

namespace A099012.P5305147272279701294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A099012.P5305147272279701294

namespace A099012

/-- `(A001611(n)-1)*3^(n-1)` -/
def P5305147272279701294.Spec : Prop :=
  ∀ n, P5305147272279701294.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P11991020999244390212

`A000045(n)*A133494(n)`
-/

namespace A099012.P11991020999244390212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A133494 n

end

end A099012.P11991020999244390212

namespace A099012

/-- `A000045(n)*A133494(n)` -/
def P11991020999244390212.Spec : Prop :=
  ∀ n, P11991020999244390212.a n = A099012 n

end A099012

/-! ## A099012.P7093130622103934244

`A000045(n)*A140429(n)`
-/

namespace A099012.P7093130622103934244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A140429 n

end

end A099012.P7093130622103934244

namespace A099012

/-- `A000045(n)*A140429(n)` -/
def P7093130622103934244.Spec : Prop :=
  ∀ n, P7093130622103934244.a n = A099012 n

end A099012

/-! ## A099012.P18240339963055853948

`A000045(n)*A155734(n)`
-/

namespace A099012.P18240339963055853948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A155734 n

end

end A099012.P18240339963055853948

namespace A099012

/-- `A000045(n)*A155734(n)` -/
def P18240339963055853948.Spec : Prop :=
  ∀ n, P18240339963055853948.a n = A099012 n

end A099012

/-! ## A099012.P5907404846664093772

`A000045(n)*Δ[A124302(n)]`
-/

namespace A099012.P5907404846664093772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A099012.P5907404846664093772

namespace A099012

/-- `A000045(n)*Δ[A124302(n)]` -/
def P5907404846664093772.Spec : Prop :=
  ∀ n, P5907404846664093772.a n = A099012 n

end A099012

/-! ## A099012.P6655175187931512125

`A140429(n)*A324969(n+1)`
-/

namespace A099012.P6655175187931512125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n * A324969 (n + 1)

end

end A099012.P6655175187931512125

namespace A099012

/-- `A140429(n)*A324969(n+1)` -/
def P6655175187931512125.Spec : Prop :=
  ∀ n, P6655175187931512125.a n = A099012 n

end A099012

/-! ## A099012.P5111380567031830037

`A000045(n)/2*A025192(n)`
-/

namespace A099012.P5111380567031830037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A025192 n : ℚ)

end

end A099012.P5111380567031830037

namespace A099012

/-- `A000045(n)/2*A025192(n)` -/
def P5111380567031830037.Spec : Prop :=
  ∀ n, P5111380567031830037.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P14463251199097248072

`A000045(n)/3*A000244(n)`
-/

namespace A099012.P14463251199097248072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 3 * (A000244 n : ℚ)

end

end A099012.P14463251199097248072

namespace A099012

/-- `A000045(n)/3*A000244(n)` -/
def P14463251199097248072.Spec : Prop :=
  ∀ n, P14463251199097248072.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P4130727637974625583

`A000045(n)/4*A003946(n)`
-/

namespace A099012.P4130727637974625583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 4 * (A003946 n : ℚ)

end

end A099012.P4130727637974625583

namespace A099012

/-- `A000045(n)/4*A003946(n)` -/
def P4130727637974625583.Spec : Prop :=
  ∀ n, P4130727637974625583.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P4053309222228141564

`A000045(n)/2*∑[A052156(n)]`
-/

namespace A099012.P4053309222228141564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A099012.P4053309222228141564

namespace A099012

/-- `A000045(n)/2*∑[A052156(n)]` -/
def P4053309222228141564.Spec : Prop :=
  ∀ n, P4053309222228141564.a n = (A099012 n : ℚ)

end A099012

/-! ## A099012.P16051945461228462001

`Δ[A124302(n)]*A302126(2*n)`
-/

namespace A099012.P16051945461228462001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A302126 (2 * n)

end

end A099012.P16051945461228462001

namespace A099012

/-- `Δ[A124302(n)]*A302126(2*n)` -/
def P16051945461228462001.Spec : Prop :=
  ∀ n, P16051945461228462001.a n = A099012 n

end A099012

/-! ## A099012.P4504092256447341295

`(A001611(n)-1)*A000244(n)/3`
-/

namespace A099012.P4504092256447341295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001611 n - 1) * A000244 n : ℚ) / 3

end

end A099012.P4504092256447341295

namespace A099012

/-- `(A001611(n)-1)*A000244(n)/3` -/
def P4504092256447341295.Spec : Prop :=
  ∀ n, P4504092256447341295.a n = (A099012 n : ℚ)

end A099012

/-!
# A099013: a(n) = Sum_{k=0..n} 3^(k-1)*Fibonacci(k).

The programs for A099013, the canonical program `A099013.P8160720499598485717` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099013 has offset 0).

The definition of A099013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099013.P17151807129518351389

`ogf(x/(1-4x-6x^2+9x^3))`
-/

namespace A099013.P17151807129518351389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, -6, 9] n

end

end A099013.P17151807129518351389

namespace A099013

/-- `ogf(x/(1-4x-6x^2+9x^3))` -/
def P17151807129518351389.Spec : Prop :=
  ∀ n, P17151807129518351389.a n = A099013 n

end A099013

/-! ## A099013.P8160720499598485717

`4*a(n-1)+6*a(n-2)-9*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099013

/-- `4*a(n-1)+6*a(n-2)-9*a(n-3)` -/
def P8160720499598485717.Spec : Prop :=
  ∀ n, P8160720499598485717.a n = A099013 n

theorem P8160720499598485717.correct : P8160720499598485717.Spec := by
  intro n
  simp only [A099013]

end A099013

/-! ## A099013.P2377234154253103589

`(3^n*A000285(n)-1)/11`
-/

namespace A099013.P2377234154253103589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) * A000285 n - 1 : ℚ) / 11

end

end A099013.P2377234154253103589

namespace A099013

/-- `(3^n*A000285(n)-1)/11` -/
def P2377234154253103589.Spec : Prop :=
  ∀ n, P2377234154253103589.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P5320266428998081826

`∑[3*(a(n-1)+3*a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A099013.P5320266428998081826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * (f1 (n - 1) + 3 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P5320266428998081826

namespace A099013

/-- `∑[3*(a(n-1)+3*a(n-2))]` -/
def P5320266428998081826.Spec : Prop :=
  ∀ n, (P5320266428998081826.a n : ℤ) = A099013 n

end A099013

/-! ## A099013.P8265336110097299055

`3*(a(n-1)+3*a(n-2))+1` with `a(0)=0, a(1)=1`
-/

namespace A099013.P8265336110097299055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (a (n - 1) + 3 * a (n - 2)) + 1

end

end A099013.P8265336110097299055

namespace A099013

/-- `3*(a(n-1)+3*a(n-2))+1` -/
def P8265336110097299055.Spec : Prop :=
  ∀ n, (P8265336110097299055.a n : ℤ) = A099013 n

end A099013

/-! ## A099013.P10944415771438055189

`∑[3*(4*a(n-2)-(a(n-2)-a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A099013.P10944415771438055189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * (4 * f1 (n - 2) - (f1 (n - 2) - f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P10944415771438055189

namespace A099013

/-- `∑[3*(4*a(n-2)-(a(n-2)-a(n-1)))]` -/
def P10944415771438055189.Spec : Prop :=
  ∀ n, P10944415771438055189.a n = A099013 n

end A099013

/-! ## A099013.P4004820427446648354

`a(n-1)+1+a(n-1)+a(n-1)+a(n-2)/(1/3)²` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A099013.P4004820427446648354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2))

end

end A099013.P4004820427446648354

namespace A099013

/-- `a(n-1)+1+a(n-1)+a(n-1)+a(n-2)/(1/3)²` -/
def P4004820427446648354.Spec : Prop :=
  ∀ n, P4004820427446648354.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P9514778375795893911

`∑[A099012(n)]`
-/

namespace A099013.P9514778375795893911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P9514778375795893911

namespace A099013

/-- `∑[A099012(n)]` -/
def P9514778375795893911.Spec : Prop :=
  ∀ n, P9514778375795893911.a n = A099013 n

end A099013

/-! ## A099013.P3135444071594119893

`A082987(n)/3`
-/

namespace A099013.P3135444071594119893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082987 n : ℚ) / 3

end

end A099013.P3135444071594119893

namespace A099013

/-- `A082987(n)/3` -/
def P3135444071594119893.Spec : Prop :=
  ∀ n, P3135444071594119893.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P4528058987491271447

`∑[A261397(n)/3]`
-/

namespace A099013.P4528058987491271447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261397 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P4528058987491271447

namespace A099013

/-- `∑[A261397(n)/3]` -/
def P4528058987491271447.Spec : Prop :=
  ∀ n, P4528058987491271447.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P2354850499556779839

`∑[3^(n-1)*A000045(n)]`
-/

namespace A099013.P2354850499556779839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P2354850499556779839

namespace A099013

/-- `∑[3^(n-1)*A000045(n)]` -/
def P2354850499556779839.Spec : Prop :=
  ∀ n, P2354850499556779839.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P7323495439396095403

`∑[(A001611(n)-1)/3*3^n]`
-/

namespace A099013.P7323495439396095403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1 : ℚ) / 3 * (3 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P7323495439396095403

namespace A099013

/-- `∑[(A001611(n)-1)/3*3^n]` -/
def P7323495439396095403.Spec : Prop :=
  ∀ n, P7323495439396095403.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P1110876613173262097

`∑[(A002062(n)-n)*3^n/3]`
-/

namespace A099013.P1110876613173262097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002062 n - (n : ℤ)) * (3 ^ n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P1110876613173262097

namespace A099013

/-- `∑[(A002062(n)-n)*3^n/3]` -/
def P1110876613173262097.Spec : Prop :=
  ∀ n, P1110876613173262097.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P11783015951078891206

`∑[A000045(n)/4*A003946(n)]`
-/

namespace A099013.P11783015951078891206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 4 * (A003946 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099013.P11783015951078891206

namespace A099013

/-- `∑[A000045(n)/4*A003946(n)]` -/
def P11783015951078891206.Spec : Prop :=
  ∀ n, P11783015951078891206.a n = (A099013 n : ℚ)

end A099013

/-! ## A099013.P15517026144741366735

`∑[A122069(n)]-A122069(n)`
-/

namespace A099013.P15517026144741366735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122069 n

end

end A099013.P15517026144741366735

namespace A099013

/-- `∑[A122069(n)]-A122069(n)` -/
def P15517026144741366735.Spec : Prop :=
  ∀ n, P15517026144741366735.a n = A099013 n

end A099013

/-!
# A099014: a(n) = Fibonacci(n)*(Fibonacci(n-1)^2 + Fibonacci(n+1)^2).

The programs for A099014, the canonical program `A099014.P5907760643700913183` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099014 has offset 0).

The definition of A099014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099014.P799286807644972088

`ogf((x+2x^2-x^3)/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A099014.P799286807644972088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -1] [1, -3, -6, 3, 1] n

end

end A099014.P799286807644972088

namespace A099014

/-- `ogf((x+2x^2-x^3)/(1-3x-6x^2+3x^3+x^4))` -/
def P799286807644972088.Spec : Prop :=
  ∀ n, P799286807644972088.a n = A099014 n

end A099014

/-! ## A099014.P5907760643700913183

`((-1)^n*A000045(n)+3*A000045(3*n))/5`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099014

/-- `((-1)^n*A000045(n)+3*A000045(3*n))/5` -/
def P5907760643700913183.Spec : Prop :=
  ∀ n, P5907760643700913183.a n = (A099014 n : ℚ)

end A099014

/-! ## A099014.P16613586745379697457

`A000045(n)*A295690(2*n)`
-/

namespace A099014.P16613586745379697457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A295690 (2 * n)

end

end A099014.P16613586745379697457

namespace A099014

/-- `A000045(n)*A295690(2*n)` -/
def P16613586745379697457.Spec : Prop :=
  ∀ n, P16613586745379697457.a n = A099014 n

end A099014

/-! ## A099014.P17198247234173929448

`A000045(n)*A295682(Δ[n²])`
-/

namespace A099014.P17198247234173929448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A295682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099014.P17198247234173929448

namespace A099014

/-- `A000045(n)*A295682(Δ[n²])` -/
def P17198247234173929448.Spec : Prop :=
  ∀ n, P17198247234173929448.a n = A099014 n

end A099014

/-! ## A099014.P325891772912923921

`(A001611(n)-1)*A295690(2*n)`
-/

namespace A099014.P325891772912923921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A295690 (2 * n)

end

end A099014.P325891772912923921

namespace A099014

/-- `(A001611(n)-1)*A295690(2*n)` -/
def P325891772912923921.Spec : Prop :=
  ∀ n, P325891772912923921.a n = A099014 n

end A099014

/-! ## A099014.P5936764497168841086

`A103609(2*n)*A295690(2*n)`
-/

namespace A099014.P5936764497168841086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) * A295690 (2 * n)

end

end A099014.P5936764497168841086

namespace A099014

/-- `A103609(2*n)*A295690(2*n)` -/
def P5936764497168841086.Spec : Prop :=
  ∀ n, P5936764497168841086.a n = A099014 n

end A099014

/-! ## A099014.P2158749332899816719

`Δ[A000045(n+1)]*A295682(2*n+1)`
-/

namespace A099014.P2158749332899816719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A295682 (2 * n + 1)

end

end A099014.P2158749332899816719

namespace A099014

/-- `Δ[A000045(n+1)]*A295682(2*n+1)` -/
def P2158749332899816719.Spec : Prop :=
  ∀ n, P2158749332899816719.a n = A099014 n

end A099014

/-! ## A099014.P15128357609721795838

`(A005248(n)-A175395(n))*A000045(n)`
-/

namespace A099014.P15128357609721795838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 n - A175395 n) * A000045 n

end

end A099014.P15128357609721795838

namespace A099014

/-- `(A005248(n)-A175395(n))*A000045(n)` -/
def P15128357609721795838.Spec : Prop :=
  ∀ n, P15128357609721795838.a n = A099014 n

end A099014

/-! ## A099014.P14506630658900554146

`(A001519(n)+Δ[A007598(n)])*A000045(n)`
-/

namespace A099014.P14506630658900554146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001519 n + (f1 (n + 1) - f1 n)) * A000045 n

end

end A099014.P14506630658900554146

namespace A099014

/-- `(A001519(n)+Δ[A007598(n)])*A000045(n)` -/
def P14506630658900554146.Spec : Prop :=
  ∀ n, P14506630658900554146.a n = A099014 n

end A099014

/-! ## A099014.P15142733810573285311

`(A226205(n+1)+A001519(n))*A000045(n)`
-/

namespace A099014.P15142733810573285311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226205 (n + 1) + A001519 n) * A000045 n

end

end A099014.P15142733810573285311

namespace A099014

/-- `(A226205(n+1)+A001519(n))*A000045(n)` -/
def P15142733810573285311.Spec : Prop :=
  ∀ n, P15142733810573285311.a n = A099014 n

end A099014

/-! ## A099014.P15063219407568579028

`(A192921(n+1)-A001654(n))*A000045(n)`
-/

namespace A099014.P15063219407568579028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A192921 (n + 1) - A001654 n) * A000045 n

end

end A099014.P15063219407568579028

namespace A099014

/-- `(A192921(n+1)-A001654(n))*A000045(n)` -/
def P15063219407568579028.Spec : Prop :=
  ∀ n, P15063219407568579028.a n = A099014 n

end A099014

/-! ## A099014.P9831341769135037938

`(A126358(n)-A226205(n+2))*A000045(n)`
-/

namespace A099014.P9831341769135037938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126358 n - A226205 (n + 2)) * A000045 n

end

end A099014.P9831341769135037938

namespace A099014

/-- `(A126358(n)-A226205(n+2))*A000045(n)` -/
def P9831341769135037938.Spec : Prop :=
  ∀ n, P9831341769135037938.a n = A099014 n

end A099014

/-! ## A099014.P18264236940306697323

`(A236165(2*n+1)+A212804(2*n))*A212804(n+1)`
-/

namespace A099014.P18264236940306697323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A236165 (2 * n + 1) + A212804 (2 * n)) * A212804 (n + 1)

end

end A099014.P18264236940306697323

namespace A099014

/-- `(A236165(2*n+1)+A212804(2*n))*A212804(n+1)` -/
def P18264236940306697323.Spec : Prop :=
  ∀ n, P18264236940306697323.a n = A099014 n

end A099014

/-! ## A099014.P10180501569975305361

`A066259(n+1)-A033887(n)`
-/

namespace A099014.P10180501569975305361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) - A033887 n

end

end A099014.P10180501569975305361

namespace A099014

/-- `A066259(n+1)-A033887(n)` -/
def P10180501569975305361.Spec : Prop :=
  ∀ n, P10180501569975305361.a n = A099014 n

end A099014

/-! ## A099014.P252043966339350853

`A066259(n+1)-(A001077(n)+A001076(n))`
-/

namespace A099014.P252043966339350853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) - (A001077 n + A001076 n)

end

end A099014.P252043966339350853

namespace A099014

/-- `A066259(n+1)-(A001077(n)+A001076(n))` -/
def P252043966339350853.Spec : Prop :=
  ∀ n, P252043966339350853.a n = A099014 n

end A099014

/-! ## A099014.P4515488479145355010

`A066258(n+1)+A056570(n)-A099015(n)`
-/

namespace A099014.P4515488479145355010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (n + 1) + (A056570 n - A099015 n)

end

end A099014.P4515488479145355010

namespace A099014

/-- `A066258(n+1)+A056570(n)-A099015(n)` -/
def P4515488479145355010.Spec : Prop :=
  ∀ n, P4515488479145355010.a n = A099014 n

end A099014

/-! ## A099014.P11923607856465505435

`A066259(n+1)+A001076(n)-A001076(n+1)`
-/

namespace A099014.P11923607856465505435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) + (A001076 n - A001076 (n + 1))

end

end A099014.P11923607856465505435

namespace A099014

/-- `A066259(n+1)+A001076(n)-A001076(n+1)` -/
def P11923607856465505435.Spec : Prop :=
  ∀ n, P11923607856465505435.a n = A099014 n

end A099014

/-! ## A099014.P3827545123870716444

`A065563(n+1)-(A066258(n+1)+A033887(n))`
-/

namespace A099014.P3827545123870716444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065563 (n + 1) - (A066258 (n + 1) + A033887 n)

end

end A099014.P3827545123870716444

namespace A099014

/-- `A065563(n+1)-(A066258(n+1)+A033887(n))` -/
def P3827545123870716444.Spec : Prop :=
  ∀ n, P3827545123870716444.a n = A099014 n

end A099014

/-! ## A099014.P8038016979316704879

`A000032(n+1)*A001519(n+1)-A318376(n+1)`
-/

namespace A099014.P8038016979316704879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) * A001519 (n + 1) - A318376 (n + 1)

end

end A099014.P8038016979316704879

namespace A099014

/-- `A000032(n+1)*A001519(n+1)-A318376(n+1)` -/
def P8038016979316704879.Spec : Prop :=
  ∀ n, P8038016979316704879.a n = A099014 n

end A099014

/-!
# A099015: a(n) = Fib(n+1)*(2*Fib(n)^2 + Fib(n)*Fib(n-1) + Fib(n-1)^2).

The programs for A099015, the canonical program `A099015.P17825217446862345682` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099015 has offset 0).

The definition of A099015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099015.P17825217446862345682

`ogf((1-x-4x^2)/(1-3x-6x^2+3x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099015

/-- `ogf((1-x-4x^2)/(1-3x-6x^2+3x^3+x^4))` -/
def P17825217446862345682.Spec : Prop :=
  ∀ n, P17825217446862345682.a n = A099015 n

theorem P17825217446862345682.correct : P17825217446862345682.Spec := by
  intro n
  simp only [A099015]

end A099015

/-! ## A099015.P15566299586886694036

`∑[A212804(n)]*A099016(n)`
-/

namespace A099015.P15566299586886694036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A099016 n

end

end A099015.P15566299586886694036

namespace A099015

/-- `∑[A212804(n)]*A099016(n)` -/
def P15566299586886694036.Spec : Prop :=
  ∀ n, P15566299586886694036.a n = A099015 n

end A099015

/-! ## A099015.P3801293077919128128

`A000045(n+1)*A099016(n)`
-/

namespace A099015.P3801293077919128128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A099016 n

end

end A099015.P3801293077919128128

namespace A099015

/-- `A000045(n+1)*A099016(n)` -/
def P3801293077919128128.Spec : Prop :=
  ∀ n, P3801293077919128128.a n = A099015 n

end A099015

/-! ## A099015.P2170365297344531222

`A099016(n)*A212804(n+2)`
-/

namespace A099015.P2170365297344531222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n * A212804 (n + 2)

end

end A099015.P2170365297344531222

namespace A099015

/-- `A099016(n)*A212804(n+2)` -/
def P2170365297344531222.Spec : Prop :=
  ∀ n, P2170365297344531222.a n = A099015 n

end A099015

/-! ## A099015.P5923026978365348186

`sqrt(Δ[A001654(n)])*A099016(n)`
-/

namespace A099015.P5923026978365348186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ) * (A099016 n : ℝ)

end

end A099015.P5923026978365348186

namespace A099015

/-- `sqrt(Δ[A001654(n)])*A099016(n)` -/
def P5923026978365348186.Spec : Prop :=
  ∀ n, P5923026978365348186.a n = (A099015 n : ℝ)

end A099015

/-! ## A099015.P2210719745294382744

`sqrt(A007598(n+1))*A099016(n)`
-/

namespace A099015.P2210719745294382744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 (n + 1) : ℝ) * (A099016 n : ℝ)

end

end A099015.P2210719745294382744

namespace A099015

/-- `sqrt(A007598(n+1))*A099016(n)` -/
def P2210719745294382744.Spec : Prop :=
  ∀ n, P2210719745294382744.a n = (A099015 n : ℝ)

end A099015

/-! ## A099015.P663308431833863910

`A000045(n+1)*A295687(2*n)`
-/

namespace A099015.P663308431833863910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A295687 (2 * n)

end

end A099015.P663308431833863910

namespace A099015

/-- `A000045(n+1)*A295687(2*n)` -/
def P663308431833863910.Spec : Prop :=
  ∀ n, P663308431833863910.a n = A099015 n

end A099015

/-! ## A099015.P414604411097508404

`A000045(n+1)*A295681(2*n+1)`
-/

namespace A099015.P414604411097508404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A295681 (2 * n + 1)

end

end A099015.P414604411097508404

namespace A099015

/-- `A000045(n+1)*A295681(2*n+1)` -/
def P414604411097508404.Spec : Prop :=
  ∀ n, P414604411097508404.a n = A099015 n

end A099015

/-! ## A099015.P7812378996134838833

`A226958(n+1)+A066258(n)-A220363(n)`
-/

namespace A099015.P7812378996134838833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226958 (n + 1) + (A066258 n - A220363 n)

end

end A099015.P7812378996134838833

namespace A099015

/-- `A226958(n+1)+A066258(n)-A220363(n)` -/
def P7812378996134838833.Spec : Prop :=
  ∀ n, P7812378996134838833.a n = A099015 n

end A099015

/-! ## A099015.P11764371051760285407

`(A001654(n)+A001519(n))*A000045(n+1)`
-/

namespace A099015.P11764371051760285407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001654 n + A001519 n) * A000045 (n + 1)

end

end A099015.P11764371051760285407

namespace A099015

/-- `(A001654(n)+A001519(n))*A000045(n+1)` -/
def P11764371051760285407.Spec : Prop :=
  ∀ n, P11764371051760285407.a n = A099015 n

end A099015

/-! ## A099015.P7047714014365092279

`(A005248(n+1)-A102714(n))*A000045(n+1)`
-/

namespace A099015.P7047714014365092279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005248 (n + 1) - A102714 n) * A000045 (n + 1)

end

end A099015.P7047714014365092279

namespace A099015

/-- `(A005248(n+1)-A102714(n))*A000045(n+1)` -/
def P7047714014365092279.Spec : Prop :=
  ∀ n, P7047714014365092279.a n = A099015 n

end A099015

/-! ## A099015.P14703005434329420318

`(A014742(n+1)-A264080(n))*A000045(n+1)`
-/

namespace A099015.P14703005434329420318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014742 (n + 1) - A264080 n) * A000045 (n + 1)

end

end A099015.P14703005434329420318

namespace A099015

/-- `(A014742(n+1)-A264080(n))*A000045(n+1)` -/
def P14703005434329420318.Spec : Prop :=
  ∀ n, P14703005434329420318.a n = A099015 n

end A099015

/-! ## A099015.P18198130407746431506

`(A052995(n+1)-A001654(n+1))*A000045(n+1)`
-/

namespace A099015.P18198130407746431506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052995 (n + 1) - A001654 (n + 1)) * A000045 (n + 1)

end

end A099015.P18198130407746431506

namespace A099015

/-- `(A052995(n+1)-A001654(n+1))*A000045(n+1)` -/
def P18198130407746431506.Spec : Prop :=
  ∀ n, P18198130407746431506.a n = A099015 n

end A099015

/-! ## A099015.P17351341308189622638

`(A295671(2*n)+A000045(2*n))*A000045(n+1)`
-/

namespace A099015.P17351341308189622638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295671 (2 * n) + A000045 (2 * n)) * A000045 (n + 1)

end

end A099015.P17351341308189622638

namespace A099015

/-- `(A295671(2*n)+A000045(2*n))*A000045(n+1)` -/
def P17351341308189622638.Spec : Prop :=
  ∀ n, P17351341308189622638.a n = A099015 n

end A099015

/-! ## A099015.P1078498292078484286

`(A000032(2*n)-A126116(2*n))*A000045(n+1)`
-/

namespace A099015.P1078498292078484286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) - A126116 (2 * n)) * A000045 (n + 1)

end

end A099015.P1078498292078484286

namespace A099015

/-- `(A000032(2*n)-A126116(2*n))*A000045(n+1)` -/
def P1078498292078484286.Spec : Prop :=
  ∀ n, P1078498292078484286.a n = A099015 n

end A099015

/-! ## A099015.P4777674393225617166

`(A293411(2*n)-A000045(2*n))*A000045(n+1)`
-/

namespace A099015.P4777674393225617166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293411 (2 * n) - A000045 (2 * n)) * A000045 (n + 1)

end

end A099015.P4777674393225617166

namespace A099015

/-- `(A293411(2*n)-A000045(2*n))*A000045(n+1)` -/
def P4777674393225617166.Spec : Prop :=
  ∀ n, P4777674393225617166.a n = A099015 n

end A099015

/-!
# A099016: a(n) = 3*L(2*n)/5 - (-1)^n/5, where L = A000032.

The programs for A099016, the canonical program `A099016.P11074582352199998274` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099016 has offset 0).

The definition of A099016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099016.P4217644778572509686

`ogf((1-2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A099016.P4217644778572509686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -2, -2, 1] n

end

end A099016.P4217644778572509686

namespace A099016

/-- `ogf((1-2x^2)/(1-2x-2x^2+x^3))` -/
def P4217644778572509686.Spec : Prop :=
  ∀ n, P4217644778572509686.a n = A099016 n

end A099016

/-! ## A099016.P11074582352199998274

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099016

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P11074582352199998274.Spec : Prop :=
  ∀ n, P11074582352199998274.a n = A099016 n

theorem P11074582352199998274.correct : P11074582352199998274.Spec := by
  intro n
  simp only [A099016]

end A099016

/-! ## A099016.P10858807162694270671

`3*A000045(n)²+(-1)^n`
-/

namespace A099016.P10858807162694270671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 n ^ 2 + (-1) ^ n

end

end A099016.P10858807162694270671

namespace A099016

/-- `3*A000045(n)²+(-1)^n` -/
def P10858807162694270671.Spec : Prop :=
  ∀ n, P10858807162694270671.a n = A099016 n

end A099016

/-! ## A099016.P13337606007683833334

`3*A005248(n)/5-(-1)^n/5`
-/

namespace A099016.P13337606007683833334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A005248 n : ℚ) / 5 - ((-1) ^ n : ℚ) / 5

end

end A099016.P13337606007683833334

namespace A099016

/-- `3*A005248(n)/5-(-1)^n/5` -/
def P13337606007683833334.Spec : Prop :=
  ∀ n, P13337606007683833334.a n = (A099016 n : ℚ)

end A099016

/-! ## A099016.P17220998383905855936

`3*A000032(2*n)/5-(-1)^n/5`
-/

namespace A099016.P17220998383905855936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A000032 (2 * n) : ℚ) / 5 - ((-1) ^ n : ℚ) / 5

end

end A099016.P17220998383905855936

namespace A099016

/-- `3*A000032(2*n)/5-(-1)^n/5` -/
def P17220998383905855936.Spec : Prop :=
  ∀ n, P17220998383905855936.a n = (A099016 n : ℚ)

end A099016

/-! ## A099016.P10152411640413781100

`A099015(n)/A000045(n+1)`
-/

namespace A099016.P10152411640413781100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099015 n : ℚ) / (A000045 (n + 1) : ℚ)

end

end A099016.P10152411640413781100

namespace A099016

/-- `A099015(n)/A000045(n+1)` -/
def P10152411640413781100.Spec : Prop :=
  ∀ n, P10152411640413781100.a n = (A099016 n : ℚ)

end A099016

/-! ## A099016.P12853684939211676102

`round(3/5*ϕ^(2*n))`
-/

namespace A099016.P12853684939211676102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 5 : ℝ) * Real.goldenRatio ^ (2 * n))

end

end A099016.P12853684939211676102

namespace A099016

/-- `round(3/5*ϕ^(2*n))` -/
def P12853684939211676102.Spec : Prop :=
  ∀ n, P12853684939211676102.a n = A099016 n

end A099016

/-! ## A099016.P11247089644814090873

`A295687(2*n)`
-/

namespace A099016.P11247089644814090873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295687 (2 * n)

end

end A099016.P11247089644814090873

namespace A099016

/-- `A295687(2*n)` -/
def P11247089644814090873.Spec : Prop :=
  ∀ n, P11247089644814090873.a n = A099016 n

end A099016

/-! ## A099016.P5673356811995841112

`A295681(Δ[n²])`
-/

namespace A099016.P5673356811995841112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099016.P5673356811995841112

namespace A099016

/-- `A295681(Δ[n²])` -/
def P5673356811995841112.Spec : Prop :=
  ∀ n, P5673356811995841112.a n = A099016 n

end A099016

/-! ## A099016.P16862323258338037051

`A014742(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A099016.P16862323258338037051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014742 (n - 1) + a (n - 1)

end

end A099016.P16862323258338037051

namespace A099016

/-- `A014742(n-1)+a(n-1)` -/
def P16862323258338037051.Spec : Prop :=
  ∀ n, P16862323258338037051.a n = A099016 n

end A099016

/-! ## A099016.P12293677972074954932

`A001654(n)+A001519(n)`
-/

namespace A099016.P12293677972074954932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A001519 n

end

end A099016.P12293677972074954932

namespace A099016

/-- `A001654(n)+A001519(n)` -/
def P12293677972074954932.Spec : Prop :=
  ∀ n, P12293677972074954932.a n = A099016 n

end A099016

/-! ## A099016.P8381581973854690224

`A192873(n)+A166516(n)`
-/

namespace A099016.P8381581973854690224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n + A166516 n

end

end A099016.P8381581973854690224

namespace A099016

/-- `A192873(n)+A166516(n)` -/
def P8381581973854690224.Spec : Prop :=
  ∀ n, P8381581973854690224.a n = A099016 n

end A099016

/-! ## A099016.P15581672185850649395

`A129905(n)-A001654(n)`
-/

namespace A099016.P15581672185850649395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n - A001654 n

end

end A099016.P15581672185850649395

namespace A099016

/-- `A129905(n)-A001654(n)` -/
def P15581672185850649395.Spec : Prop :=
  ∀ n, P15581672185850649395.a n = A099016 n

end A099016

/-! ## A099016.P18268535704584010311

`A110391(n)-A175395(n)`
-/

namespace A099016.P18268535704584010311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110391 n - A175395 n

end

end A099016.P18268535704584010311

namespace A099016

/-- `A110391(n)-A175395(n)` -/
def P18268535704584010311.Spec : Prop :=
  ∀ n, P18268535704584010311.a n = A099016 n

end A099016

/-! ## A099016.P10741695462384789954

`A059929(n)+A212804(n)²`
-/

namespace A099016.P10741695462384789954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n + A212804 n ^ 2

end

end A099016.P10741695462384789954

namespace A099016

/-- `A059929(n)+A212804(n)²` -/
def P10741695462384789954.Spec : Prop :=
  ∀ n, P10741695462384789954.a n = A099016 n

end A099016

/-! ## A099016.P10105429956733440353

`A226205(n+1)+A128534(n)`
-/

namespace A099016.P10105429956733440353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) + A128534 n

end

end A099016.P10105429956733440353

namespace A099016

/-- `A226205(n+1)+A128534(n)` -/
def P10105429956733440353.Spec : Prop :=
  ∀ n, P10105429956733440353.a n = A099016 n

end A099016

/-!
# A099017: Numbers k such that 4*10^k + 6*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A099017, there is no canonical definition to state claims against.
-/

/-! ## A099017.P15913745730723959032

`A101731(A028310(n))+A057427(n)`
-/

namespace A099017.P15913745730723959032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101731 (A028310 n).toNat + A057427 n

end

end A099017.P15913745730723959032

/-! ## A099017.P5878454403663725259

`A178334(n)+A101731(A028310(n))`
-/

namespace A099017.P5878454403663725259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A101731 (A028310 n).toNat

end

end A099017.P5878454403663725259

/-! ## A099017.P5138463380308304462

`A101731(A028310(n))-A057428(n)`
-/

namespace A099017.P5138463380308304462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101731 (A028310 n).toNat - A057428 n

end

end A099017.P5138463380308304462

/-! ## A099017.P12428040162370490881

`A101731(A028310(n))+char[A007318(n)]`
-/

namespace A099017.P12428040162370490881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101731 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A099017.P12428040162370490881

/-! ## A099017.P8788086207074424807

`A101731(A028310(n))+A000040(n+1)%2`
-/

namespace A099017.P8788086207074424807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101731 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A099017.P8788086207074424807

/-!
# A099019: Odd composite numbers k such that k-2 and k+2 are also composite.

The programs for A099019, the canonical program `A099019.P264222523887219230` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099019 has offset 1).

The definition of A099019 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099019.P6942680224531597460

`A161945(n+1)+2`
-/

namespace A099019.P6942680224531597460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161945 (n + 1) + 2

end

end A099019.P6942680224531597460

namespace A099019

/-- `A161945(n+1)+2` -/
def P6942680224531597460.Spec : Prop :=
  ∀ n, P6942680224531597460.a n = A099019 (n + 1)

theorem P6942680224531597460.correct : P6942680224531597460.Spec := by
  intro n
  simp only [A099019, Nat.add_sub_cancel, A099019.P6942680224531597460.a, A099019.P264222523887219230.f1, A099019.P264222523887219230.f2, A099019.P264222523887219230.a, A161945, A161945.P6716022411705922474.a, A269345, A269345.P4206844201345878076.a, A061673, A061673.P6703242266188128252.f1, A061673.P6703242266188128252.f2, A061673.P6703242266188128252.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099019

/-! ## A099019.P1520769281357620441

`lt[12, A046611(A175851(n+2)+1)]`
-/

namespace A099019.P1520769281357620441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046611 (A175851 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099019.P1520769281357620441

namespace A099019

/-- `lt[12, A046611(A175851(n+2)+1)]` -/
def P1520769281357620441.Spec : Prop :=
  ∀ n, (P1520769281357620441.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P13745676973854395520

`filter[A110673(n+1), A005171(#)]`
-/

namespace A099019.P13745676973854395520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A099019.P13745676973854395520

namespace A099019

/-- `filter[A110673(n+1), A005171(#)]` -/
def P13745676973854395520.Spec : Prop :=
  ∀ n, P13745676973854395520.a n = A099019 (n + 1)

end A099019

/-! ## A099019.P10736035431600965951

`filter[A110673(n+1), A066247(#)]`
-/

namespace A099019.P10736035431600965951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A099019.P10736035431600965951

namespace A099019

/-- `filter[A110673(n+1), A066247(#)]` -/
def P10736035431600965951.Spec : Prop :=
  ∀ n, P10736035431600965951.a n = A099019 (n + 1)

end A099019

/-! ## A099019.P13517357969480715349

`filter[A110673(n+1), A202238(#)]`
-/

namespace A099019.P13517357969480715349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A099019.P13517357969480715349

namespace A099019

/-- `filter[A110673(n+1), A202238(#)]` -/
def P13517357969480715349.Spec : Prop :=
  ∀ n, P13517357969480715349.a n = A099019 (n + 1)

end A099019

/-! ## A099019.P14609127834053311444

`filter[A110673(n+1), A292438(#)]`
-/

namespace A099019.P14609127834053311444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A099019.P14609127834053311444

namespace A099019

/-- `filter[A110673(n+1), A292438(#)]` -/
def P14609127834053311444.Spec : Prop :=
  ∀ n, P14609127834053311444.a n = A099019 (n + 1)

end A099019

/-! ## A099019.P11205479602778573507

`filter[A110673(n+1), A323162(#)]`
-/

namespace A099019.P11205479602778573507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A099019.P11205479602778573507

namespace A099019

/-- `filter[A110673(n+1), A323162(#)]` -/
def P11205479602778573507.Spec : Prop :=
  ∀ n, P11205479602778573507.a n = A099019 (n + 1)

end A099019

/-! ## A099019.P8968750868874578429

`∩[A025583(n+1), A110673(n+1)]`
-/

namespace A099019.P8968750868874578429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P8968750868874578429

namespace A099019

/-- `∩[A025583(n+1), A110673(n+1)]` -/
def P8968750868874578429.Spec : Prop :=
  ∀ n, (P8968750868874578429.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P17486555896426005354

`∩[A109934(n+1), A110673(n+1)]`
-/

namespace A099019.P17486555896426005354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P17486555896426005354

namespace A099019

/-- `∩[A109934(n+1), A110673(n+1)]` -/
def P17486555896426005354.Spec : Prop :=
  ∀ n, (P17486555896426005354.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P264222523887219230

`∩[A269345(n+1)+2, A269345(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099019

/-- `∩[A269345(n+1)+2, A269345(n+1)]` -/
def P264222523887219230.Spec : Prop :=
  ∀ n, (P264222523887219230.a n : ℤ) = A099019 (n + 1)

theorem P264222523887219230.correct : P264222523887219230.Spec := by
  intro n
  simp only [A099019, Nat.add_sub_cancel]

end A099019

/-! ## A099019.P11739157121613098483

`∩[A025583(n+2)-2, A025583(n+2)]`
-/

namespace A099019.P11739157121613098483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P11739157121613098483

namespace A099019

/-- `∩[A025583(n+2)-2, A025583(n+2)]` -/
def P11739157121613098483.Spec : Prop :=
  ∀ n, (P11739157121613098483.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P17740524737985664899

`∩[A164376(n+1)-2, A164376(n+1)]`
-/

namespace A099019.P17740524737985664899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P17740524737985664899

namespace A099019

/-- `∩[A164376(n+1)-2, A164376(n+1)]` -/
def P17740524737985664899.Spec : Prop :=
  ∀ n, (P17740524737985664899.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P14175849849063277534

`∩[A109934(n+2)-2, A109934(n+2)]`
-/

namespace A099019.P14175849849063277534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P14175849849063277534

namespace A099019

/-- `∩[A109934(n+2)-2, A109934(n+2)]` -/
def P14175849849063277534.Spec : Prop :=
  ∀ n, (P14175849849063277534.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P7478079340685556626

`∩[A072492(n+1), A110673(n+1)]`
-/

namespace A099019.P7478079340685556626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P7478079340685556626

namespace A099019

/-- `∩[A072492(n+1), A110673(n+1)]` -/
def P7478079340685556626.Spec : Prop :=
  ∀ n, (P7478079340685556626.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P10956417106937774409

`∩[A072492(n+1), A269345(n+1)]`
-/

namespace A099019.P10956417106937774409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P10956417106937774409

namespace A099019

/-- `∩[A072492(n+1), A269345(n+1)]` -/
def P10956417106937774409.Spec : Prop :=
  ∀ n, (P10956417106937774409.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P12525346170779444485

`∩[2*n+1, A167776(n+1)]`
-/

namespace A099019.P12525346170779444485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P12525346170779444485

namespace A099019

/-- `∩[2*n+1, A167776(n+1)]` -/
def P12525346170779444485.Spec : Prop :=
  ∀ n, (P12525346170779444485.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P10628213386366202757

`∩[A071904(n+1), A110673(n+1)]`
-/

namespace A099019.P10628213386366202757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P10628213386366202757

namespace A099019

/-- `∩[A071904(n+1), A110673(n+1)]` -/
def P10628213386366202757.Spec : Prop :=
  ∀ n, (P10628213386366202757.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P10616587973795436857

`∩[A007921(n+1), A025583(n+1)]`
-/

namespace A099019.P10616587973795436857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P10616587973795436857

namespace A099019

/-- `∩[A007921(n+1), A025583(n+1)]` -/
def P10616587973795436857.Spec : Prop :=
  ∀ n, (P10616587973795436857.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P12620274276818543997

`∩[A007921(n+1), A072492(n+1)]`
-/

namespace A099019.P12620274276818543997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P12620274276818543997

namespace A099019

/-- `∩[A007921(n+1), A072492(n+1)]` -/
def P12620274276818543997.Spec : Prop :=
  ∀ n, (P12620274276818543997.a n : ℤ) = A099019 (n + 1)

end A099019

/-! ## A099019.P11999691618733233616

`∩[A007921(n+1), A109934(n+1)]`
-/

namespace A099019.P11999691618733233616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P11999691618733233616

namespace A099019

/-- `∩[A007921(n+1), A109934(n+1)]` -/
def P11999691618733233616.Spec : Prop :=
  ∀ n, (P11999691618733233616.a n : ℤ) = A099019 (n + 1)

end A099019

/-!
# A099020: Euler-Seidel matrix T(k,n) with start sequence A001147, read by antidiagonals.

The programs for A099020, there is no canonical definition to state claims against.
-/

/-! ## A099020.P10732181306468485935

`xor(A288991(A263284(3*(n+1))), A327805(n))`
-/

namespace A099020.P10732181306468485935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A288991 (A263284 (3 * (n + 1))).toNat) (A327805 n)

end

end A099020.P10732181306468485935

/-!
# A099021: Main diagonal of array in A099020.

The programs for A099021, there is no canonical definition to state claims against.
-/

/-! ## A099021.P10445293280398378773

`(4*n-3)*a(n-1)-(n-1)*(4*n-7)*a(n-2)-(n-2)*(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A099021.P10445293280398378773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  ((4 * n : ℤ) - 3) * a (n - 1) - ((n : ℤ) - 1) * (((4 * n : ℤ) - 7) * a (n - 2)) - ((n : ℤ) - 2) * (((n : ℤ) - 1) * a (n - 3))

end

end A099021.P10445293280398378773

/-! ## A099021.P12642213419705005374

`A099020(∑[4*n])`
-/

namespace A099021.P12642213419705005374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099021.P12642213419705005374

/-! ## A099021.P3693320826051710456

`A099020(A046092(n))*A304042(n)`
-/

namespace A099021.P3693320826051710456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (A046092 n).toNat * A304042 n

end

end A099021.P3693320826051710456

/-! ## A099021.P11137094662211714754

`lcm(A004065(n), A099020(A046092(n)))`
-/

namespace A099021.P11137094662211714754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004065 n) (A099020 (A046092 n).toNat)

end

end A099021.P11137094662211714754

/-! ## A099021.P11979769082522332402

`or(A000007(n), A099020(A046092(n)))`
-/

namespace A099021.P11979769082522332402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A099020 (A046092 n).toNat)

end

end A099021.P11979769082522332402

/-! ## A099021.P16339054485581306461

`A033999(n)²*A099020(A046092(n))`
-/

namespace A099021.P16339054485581306461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A099020 (A046092 n).toNat

end

end A099021.P16339054485581306461

/-! ## A099021.P10027645876657019117

`A099020(A046092(n))^(A159075(n)+1)`
-/

namespace A099021.P10027645876657019117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099020 (A046092 n).toNat : ℚ) ^ (A159075 n + 1 : ℤ)

end

end A099021.P10027645876657019117

/-! ## A099021.P6147323728709122086

`A019425(A013609(n))*A099020(A046092(n))`
-/

namespace A099021.P6147323728709122086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A013609 n).toNat * A099020 (A046092 n).toNat

end

end A099021.P6147323728709122086

/-! ## A099021.P12744430950904887884

`A001222(A077317(n+1))*A099020(A046092(n))`
-/

namespace A099021.P12744430950904887884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A077317 (n + 1)).toNat * A099020 (A046092 n).toNat

end

end A099021.P12744430950904887884

/-! ## A099021.P1059744780797239980

`A014963(A005899(n))*A099020(A046092(n))`
-/

namespace A099021.P1059744780797239980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005899 n).toNat * A099020 (A046092 n).toNat

end

end A099021.P1059744780797239980

/-!
# A099022: a(n) = Sum_{k=0..n} C(n,k)*(2*n-k)!.

The programs for A099022, the canonical program `A099022.P17796764133125657597` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099022 has offset 0).

The definition of A099022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*(2*n-#)!]` (program `A099022.P17796764133125657597`, by `A099022.P17796764133125657597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099022.P17796764133125657597

`∑{#}[n, C(n, #)*(2*n-#)!]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099022

/-- `∑{#}[n, C(n, #)*(2*n-#)!]` -/
def P17796764133125657597.Spec : Prop :=
  ∀ n, (P17796764133125657597.a n : ℤ) = A099022 n

theorem P17796764133125657597.correct : P17796764133125657597.Spec := by
  intro n
  simp only [A099022]

end A099022

/-! ## A099022.P16520180858302788548

`2*n*(2*n-1)*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A099022.P16520180858302788548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 * n : ℤ) * ((2 * n : ℤ) - 1) * a (n - 1) + (n : ℤ) * ((n : ℤ) - 1) * a (n - 2)

end

end A099022.P16520180858302788548

namespace A099022

/-- `2*n*(2*n-1)*a(n-1)+n*(n-1)*a(n-2)` -/
def P16520180858302788548.Spec : Prop :=
  ∀ n, P16520180858302788548.a n = A099022 n

end A099022

/-! ## A099022.P3527187175587588143

`n!*A001517(n)`
-/

namespace A099022.P3527187175587588143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001517 n

end

end A099022.P3527187175587588143

namespace A099022

/-- `n!*A001517(n)` -/
def P3527187175587588143.Spec : Prop :=
  ∀ n, P3527187175587588143.a n = A099022 n

end A099022

/-! ## A099022.P1030944117396913839

`A076571(∑[4*n])`
-/

namespace A099022.P1030944117396913839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099022.P1030944117396913839

namespace A099022

/-- `A076571(∑[4*n])` -/
def P1030944117396913839.Spec : Prop :=
  ∀ n, P1030944117396913839.a n = A099022 n

end A099022

/-! ## A099022.P8826519045351628695

`∑{#}[n, (-1)^(n+#)*C(n, #)*A000522(n+#)]`
-/

namespace A099022.P8826519045351628695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ (n + k) * (Nat.choose n k : ℤ) * A000522 (n + k)

end

end A099022.P8826519045351628695

namespace A099022

/-- `∑{#}[n, (-1)^(n+#)*C(n, #)*A000522(n+#)]` -/
def P8826519045351628695.Spec : Prop :=
  ∀ n, P8826519045351628695.a n = A099022 n

end A099022

/-!
# A099023: Diagonal of Euler-Seidel matrix with start sequence e.g.f. 1-tanh(x).

The programs for A099023, there is no canonical definition to state claims against.
-/

/-! ## A099023.P14265760214977168791

`A398998(A062725(n))`
-/

namespace A099023.P14265760214977168791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398998 (A062725 n).toNat

end

end A099023.P14265760214977168791

/-! ## A099023.P13397107706190668353

`A398998(A062728(n))`
-/

namespace A099023.P13397107706190668353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398998 (A062728 n).toNat

end

end A099023.P13397107706190668353

/-! ## A099023.P15628078895427269532

`A000657(n)*A033999(n)`
-/

namespace A099023.P15628078895427269532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000657 n * A033999 n

end

end A099023.P15628078895427269532

/-! ## A099023.P2322415963469532867

`A000657(n)/A033999(n+2)`
-/

namespace A099023.P2322415963469532867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000657 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A099023.P2322415963469532867

/-! ## A099023.P8866624123707694237

`A000657(n)*A029582(2*n)`
-/

namespace A099023.P8866624123707694237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000657 n * A029582 (2 * n)

end

end A099023.P8866624123707694237

/-!
# A099024: a(n) = A033466(5n+2). Values of A033466(n) that differ from A058031(n+1)+1.

The programs for A099024, there is no canonical definition to state claims against.
-/

/-! ## A099024.P12956527081447679534

`A033466(5*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099024.P12956527081447679534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033466 (5 * n + 2)

end

end A099024.P12956527081447679534

/-! ## A099024.P11875124626441522764

`lcm(2, A033466(A016873(n)))`
-/

namespace A099024.P11875124626441522764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A033466 (A016873 n).toNat)

end

end A099024.P11875124626441522764

/-! ## A099024.P1596182708189483514

`A033466(A016873(n))/A007318(C(3, n))`
-/

namespace A099024.P1596182708189483514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033466 (A016873 n).toNat : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A099024.P1596182708189483514

/-! ## A099024.P17413689607761765657

`Δ[A042948(n)]%2*A033466(A016873(n))`
-/

namespace A099024.P17413689607761765657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2 * A033466 (A016873 n).toNat

end

end A099024.P17413689607761765657

/-! ## A099024.P12945004559740759802

`A345957(A007519(n+1))+A033466(A016873(n))`
-/

namespace A099024.P12945004559740759802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345957 (A007519 (n + 1)).toNat + A033466 (A016873 n).toNat

end

end A099024.P12945004559740759802

/-! ## A099024.P14932706932055563603

`A033466(A016873(n))%A000045(n+9)²`
-/

namespace A099024.P14932706932055563603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033466 (A016873 n).toNat) (A000045 (n + 9) ^ 2)

end

end A099024.P14932706932055563603

/-! ## A099024.P18067681765898943142

`A007318(∑[n])*A033466(A016873(n))`
-/

namespace A099024.P18067681765898943142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A033466 (A016873 n).toNat

end

end A099024.P18067681765898943142

/-!
# A099025: Expansion of 1 / ((1+x) * (1-5*x+x^2)).

The programs for A099025, the canonical program `A099025.P10078255691604030868` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099025 has offset 0).

The definition of A099025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x-4x^2+x^3))` (program `A099025.P10078255691604030868`, by `A099025.P10078255691604030868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099025.P10078255691604030868

`ogf(1/(1-4x-4x^2+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099025

/-- `ogf(1/(1-4x-4x^2+x^3))` -/
def P10078255691604030868.Spec : Prop :=
  ∀ n, P10078255691604030868.a n = A099025 n

theorem P10078255691604030868.correct : P10078255691604030868.Spec := by
  intro n
  simp only [A099025]

end A099025

/-! ## A099025.P2941800533505527823

`5*a(n-1)-a(n-2)+(-1)^n` with `a(0)=1, a(1)=4`
-/

namespace A099025.P2941800533505527823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * a (n - 1) - a (n - 2) + (-1) ^ n

end

end A099025.P2941800533505527823

namespace A099025

/-- `5*a(n-1)-a(n-2)+(-1)^n` -/
def P2941800533505527823.Spec : Prop :=
  ∀ n, P2941800533505527823.a n = A099025 n

end A099025

/-! ## A099025.P16309928817424149314

`1/7*(A030221(n+2)-A003501(n+2)+(-1)^n)`
-/

namespace A099025.P16309928817424149314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * (A030221 (n + 2) - A003501 (n + 2) + (-1) ^ n : ℚ)

end

end A099025.P16309928817424149314

namespace A099025

/-- `1/7*(A030221(n+2)-A003501(n+2)+(-1)^n)` -/
def P16309928817424149314.Spec : Prop :=
  ∀ n, P16309928817424149314.a n = (A099025 n : ℚ)

end A099025

/-! ## A099025.P17702224301894322475

`∑[A005386(n+1)]`
-/

namespace A099025.P17702224301894322475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099025.P17702224301894322475

namespace A099025

/-- `∑[A005386(n+1)]` -/
def P17702224301894322475.Spec : Prop :=
  ∀ n, P17702224301894322475.a n = A099025 n

end A099025

/-! ## A099025.P8331600508196051138

`∑[abs(∑[A101463(2*n)])]`
-/

namespace A099025.P8331600508196051138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101463 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099025.P8331600508196051138

namespace A099025

/-- `∑[abs(∑[A101463(2*n)])]` -/
def P8331600508196051138.Spec : Prop :=
  ∀ n, P8331600508196051138.a n = A099025 n

end A099025

/-! ## A099025.P12305541538141190696

`A003769(n)+a(n-1)` with `a(0)=1`
-/

namespace A099025.P12305541538141190696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003769 n + a (n - 1)

end

end A099025.P12305541538141190696

namespace A099025

/-- `A003769(n)+a(n-1)` -/
def P12305541538141190696.Spec : Prop :=
  ∀ n, P12305541538141190696.a n = A099025 n

end A099025

/-! ## A099025.P9371742118950547071

`∑[A003769(A028310(n))]-2`
-/

namespace A099025.P9371742118950547071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003769 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A099025.P9371742118950547071

namespace A099025

/-- `∑[A003769(A028310(n))]-2` -/
def P9371742118950547071.Spec : Prop :=
  ∀ n, P9371742118950547071.a n = A099025 n

end A099025

/-! ## A099025.P3010300969131024645

`A136211(n+1)*A136211(round(sqrt(n²+1)))`
-/

namespace A099025.P3010300969131024645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (n + 1) * A136211 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A099025.P3010300969131024645

namespace A099025

/-- `A136211(n+1)*A136211(round(sqrt(n²+1)))` -/
def P3010300969131024645.Spec : Prop :=
  ∀ n, P3010300969131024645.a n = A099025 n

end A099025

/-! ## A099025.P4683825639092131366

`A123620(n)/A003946(n)*A125145(n)`
-/

namespace A099025.P4683825639092131366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123620 n : ℚ) / (A003946 n : ℚ) * (A125145 n : ℚ)

end

end A099025.P4683825639092131366

namespace A099025

/-- `A123620(n)/A003946(n)*A125145(n)` -/
def P4683825639092131366.Spec : Prop :=
  ∀ n, P4683825639092131366.a n = (A099025 n : ℚ)

end A099025

/-! ## A099025.P3619978726658077634

`(A136211(n+2)-A136210(n+2))*A136211(n+1)`
-/

namespace A099025.P3619978726658077634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136211 (n + 2) - A136210 (n + 2)) * A136211 (n + 1)

end

end A099025.P3619978726658077634

namespace A099025

/-- `(A136211(n+2)-A136210(n+2))*A136211(n+1)` -/
def P3619978726658077634.Spec : Prop :=
  ∀ n, P3619978726658077634.a n = A099025 n

end A099025

/-! ## A099025.P12324650224158985699

`∑[5*a(n-1)-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A099025.P12324650224158985699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  5 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A099025.P12324650224158985699

namespace A099025

/-- `∑[5*a(n-1)-a(n-2)]-a(n-1)` -/
def P12324650224158985699.Spec : Prop :=
  ∀ n, P12324650224158985699.a n = A099025 n

end A099025

/-! ## A099025.P2945927737519896650

`A004254(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A099025.P2945927737519896650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004254 (n + 1) - a (n - 1)

end

end A099025.P2945927737519896650

namespace A099025

/-- `A004254(n+1)-a(n-1)` -/
def P2945927737519896650.Spec : Prop :=
  ∀ n, P2945927737519896650.a n = A099025 n

end A099025

/-! ## A099025.P3575958266132494013

`∑[A004253(n+2)-A003769(n+1)]`
-/

namespace A099025.P3575958266132494013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - A003769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099025.P3575958266132494013

namespace A099025

/-- `∑[A004253(n+2)-A003769(n+1)]` -/
def P3575958266132494013.Spec : Prop :=
  ∀ n, P3575958266132494013.a n = A099025 n

end A099025

/-! ## A099025.P408272772976411836

`Δ[A089927(n)]-A005386(n+2)`
-/

namespace A099025.P408272772976411836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089927 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005386 (n + 2)

end

end A099025.P408272772976411836

namespace A099025

/-- `Δ[A089927(n)]-A005386(n+2)` -/
def P408272772976411836.Spec : Prop :=
  ∀ n, P408272772976411836.a n = A099025 n

end A099025

/-! ## A099025.P3293578171810347112

`A207824(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A099025.P3293578171810347112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A207824 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A099025.P3293578171810347112

namespace A099025

/-- `A207824(∑[n])-a(n-1)` -/
def P3293578171810347112.Spec : Prop :=
  ∀ n, P3293578171810347112.a n = A099025 n

end A099025

/-!
# A099026: Array x AND NOT y, read by rising antidiagonals.

The programs for A099026, the canonical program `A099026.P7282398254408915574` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099026 has offset 0).

The definition of A099026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099026.P720296177642474756

`or(row(n)-col(n), col(n))-col(n)`
-/

namespace A099026.P720296177642474756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A099026.P720296177642474756

namespace A099026

/-- `or(row(n)-col(n), col(n))-col(n)` -/
def P720296177642474756.Spec : Prop :=
  ∀ n, P720296177642474756.a n = A099026 n

end A099026

/-! ## A099026.P14874470303141603748

`A286099(n)-n`
-/

namespace A099026.P14874470303141603748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - (n : ℤ)

end

end A099026.P14874470303141603748

namespace A099026

/-- `A286099(n)-n` -/
def P14874470303141603748.Spec : Prop :=
  ∀ n, P14874470303141603748.a n = A099026 n

theorem P14874470303141603748.correct : P14874470303141603748.Spec := by
  intro n
  simp only [A099026, Nat.add_sub_cancel, A099026.P14874470303141603748.a, A099026.P7282398254408915574.a, A002262, A002262.P17823619022233514403.a, A003986, A003986.P12926496113833734776.a, A286099, A286099.P16724800913237782090.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099026

/-! ## A099026.P15636640303339924614

`C(comp[∑[n]]-n, 2)-(n+1)-A004198(n)`
-/

namespace A099026.P15636640303339924614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) - A004198 n

end

end A099026.P15636640303339924614

namespace A099026

/-- `C(comp[∑[n]]-n, 2)-(n+1)-A004198(n)` -/
def P15636640303339924614.Spec : Prop :=
  ∀ n, P15636640303339924614.a n = A099026 n

end A099026

/-! ## A099026.P14626404188274115393

`A292371(A054238(n))`
-/

namespace A099026.P14626404188274115393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A054238 n).toNat

end

end A099026.P14626404188274115393

namespace A099026

/-- `A292371(A054238(n))` -/
def P14626404188274115393.Spec : Prop :=
  ∀ n, P14626404188274115393.a n = A099026 n

end A099026

/-! ## A099026.P9065537939948610873

`A292372(A346453(n))`
-/

namespace A099026.P9065537939948610873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A346453 n).toNat

end

end A099026.P9065537939948610873

namespace A099026

/-- `A292372(A346453(n))` -/
def P9065537939948610873.Spec : Prop :=
  ∀ n, P9065537939948610873.a n = A099026 n

end A099026

/-! ## A099026.P7282398254408915574

`A003986(n)-A002262(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099026

/-- `A003986(n)-A002262(n)` -/
def P7282398254408915574.Spec : Prop :=
  ∀ n, P7282398254408915574.a n = A099026 n

theorem P7282398254408915574.correct : P7282398254408915574.Spec := by
  intro n
  simp only [A099026]

end A099026

/-! ## A099026.P2831385310537500186

`A025581(n)-A004198(n)`
-/

namespace A099026.P2831385310537500186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A004198 n

end

end A099026.P2831385310537500186

namespace A099026

/-- `A025581(n)-A004198(n)` -/
def P2831385310537500186.Spec : Prop :=
  ∀ n, P2831385310537500186.a n = A099026 n

end A099026

/-! ## A099026.P7758661542957399301

`A061579(n)-A286098(n)`
-/

namespace A099026.P7758661542957399301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n - A286098 n

end

end A099026.P7758661542957399301

namespace A099026

/-- `A061579(n)-A286098(n)` -/
def P7758661542957399301.Spec : Prop :=
  ∀ n, P7758661542957399301.a n = A099026 n

end A099026

/-! ## A099026.P16009463989926794860

`and(A003987(n), A025581(n))`
-/

namespace A099026.P16009463989926794860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003987 n) (A025581 n)

end

end A099026.P16009463989926794860

namespace A099026

/-- `and(A003987(n), A025581(n))` -/
def P16009463989926794860.Spec : Prop :=
  ∀ n, P16009463989926794860.a n = A099026 n

end A099026

/-! ## A099026.P2205977098871063691

`and(A025581(n), A128078(n+1))`
-/

namespace A099026.P2205977098871063691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 n) (A128078 (n + 1))

end

end A099026.P2205977098871063691

namespace A099026

/-- `and(A025581(n), A128078(n+1))` -/
def P2205977098871063691.Spec : Prop :=
  ∀ n, P2205977098871063691.a n = A099026 n

end A099026

/-! ## A099026.P14306995368108397753

`A003986(n)+A057944(n)-n`
-/

namespace A099026.P14306995368108397753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + (A057944 n - (n : ℤ))

end

end A099026.P14306995368108397753

namespace A099026

/-- `A003986(n)+A057944(n)-n` -/
def P14306995368108397753.Spec : Prop :=
  ∀ n, P14306995368108397753.a n = A099026 n

end A099026

/-! ## A099026.P1033469388399722143

`A003987(n)+A286098(n)-n`
-/

namespace A099026.P1033469388399722143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + (A286098 n - (n : ℤ))

end

end A099026.P1033469388399722143

namespace A099026

/-- `A003987(n)+A286098(n)-n` -/
def P1033469388399722143.Spec : Prop :=
  ∀ n, P1033469388399722143.a n = A099026 n

end A099026

/-! ## A099026.P3381239969625995112

`A004198(n)+A286109(n)-n`
-/

namespace A099026.P3381239969625995112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + (A286109 n - (n : ℤ))

end

end A099026.P3381239969625995112

namespace A099026

/-- `A004198(n)+A286109(n)-n` -/
def P3381239969625995112.Spec : Prop :=
  ∀ n, P3381239969625995112.a n = A099026 n

end A099026

/-! ## A099026.P12710552425230810504

`A114327(n)+n-A286098(n)`
-/

namespace A099026.P12710552425230810504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n + ((n : ℤ) - A286098 n)

end

end A099026.P12710552425230810504

namespace A099026

/-- `A114327(n)+n-A286098(n)` -/
def P12710552425230810504.Spec : Prop :=
  ∀ n, P12710552425230810504.a n = A099026 n

end A099026

/-! ## A099026.P14010418939307881018

`and(-A002260(n+1), A025581(n))`
-/

namespace A099026.P14010418939307881018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A002260 (n + 1)) (A025581 n)

end

end A099026.P14010418939307881018

namespace A099026

/-- `and(-A002260(n+1), A025581(n))` -/
def P14010418939307881018.Spec : Prop :=
  ∀ n, P14010418939307881018.a n = A099026 n

end A099026

/-! ## A099026.P4942713056919122751

`A003986(n)+1-A002260(n+1)`
-/

namespace A099026.P4942713056919122751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n + (1 - A002260 (n + 1))

end

end A099026.P4942713056919122751

namespace A099026

/-- `A003986(n)+1-A002260(n+1)` -/
def P4942713056919122751.Spec : Prop :=
  ∀ n, P4942713056919122751.a n = A099026 n

theorem P4942713056919122751.correct : P4942713056919122751.Spec := by
  intro n
  simp only [A099026, Nat.add_sub_cancel, A099026.P4942713056919122751.a, A099026.P7282398254408915574.a, A002260, A002260.P9170571874073898642.a, A002262, A002262.P17823619022233514403.a, A003986, A003986.P12926496113833734776.a, A025581, A025581.P16112744757063613497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099026

/-! ## A099026.P7755771094968634536

`and(A004736(n+1)-1, -(A002262(n)+1))`
-/

namespace A099026.P7755771094968634536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (n + 1) - 1) (-(A002262 n + 1))

end

end A099026.P7755771094968634536

namespace A099026

/-- `and(A004736(n+1)-1, -(A002262(n)+1))` -/
def P7755771094968634536.Spec : Prop :=
  ∀ n, P7755771094968634536.a n = A099026 n

end A099026

/-! ## A099026.P6312728538424259641

`A025581(n)-A002262(A286098(n))`
-/

namespace A099026.P6312728538424259641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A002262 (A286098 n).toNat

end

end A099026.P6312728538424259641

namespace A099026

/-- `A025581(n)-A002262(A286098(n))` -/
def P6312728538424259641.Spec : Prop :=
  ∀ n, P6312728538424259641.a n = A099026 n

end A099026

/-! ## A099026.P2629919705050726358

`A000217(A003056(n))+A003986(n)-n`
-/

namespace A099026.P2629919705050726358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n).toNat + (A003986 n - (n : ℤ))

end

end A099026.P2629919705050726358

namespace A099026

/-- `A000217(A003056(n))+A003986(n)-n` -/
def P2629919705050726358.Spec : Prop :=
  ∀ n, P2629919705050726358.a n = A099026 n

end A099026

/-! ## A099026.P16024139379535901533

`A000096(A003056(n))-(A004198(n)+n)`
-/

namespace A099026.P16024139379535901533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n).toNat - (A004198 n + (n : ℤ))

end

end A099026.P16024139379535901533

namespace A099026

/-- `A000096(A003056(n))-(A004198(n)+n)` -/
def P16024139379535901533.Spec : Prop :=
  ∀ n, P16024139379535901533.a n = A099026 n

end A099026

/-!
# A099027: a(n) = Sum_{k=0..n} n-k AND NOT k.

The programs for A099027, the canonical program `A099027.P7113044353760483026` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099027 has offset 0).

The definition of A099027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099027.P7113044353760483026

`∑[∑[n*∑{e}[xor(n, -n), 2-#]]]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099027

/-- `∑[∑[n*∑{e}[xor(n, -n), 2-#]]]` -/
def P7113044353760483026.Spec : Prop :=
  ∀ n, P7113044353760483026.a n = A099027 n

theorem P7113044353760483026.correct : P7113044353760483026.Spec := by
  intro n
  simp only [A099027]

end A099027

/-! ## A099027.P6068423990340910202

`A375551(n)/2`
-/

namespace A099027.P6068423990340910202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375551 n : ℚ) / 2

end

end A099027.P6068423990340910202

namespace A099027

/-- `A375551(n)/2` -/
def P6068423990340910202.Spec : Prop :=
  ∀ n, P6068423990340910202.a n = (A099027 n : ℚ)

theorem P6068423990340910202.correct : P6068423990340910202.Spec := by
  intro n
  simp only [A099027, Nat.add_sub_cancel, A099027.P6068423990340910202.a, A099027.P7113044353760483026.f3, A099027.P7113044353760483026.f2, A099027.P7113044353760483026.f1, A099027.P7113044353760483026.a, A375551, A375551.P17811213240839334410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099027

/-! ## A099027.P12326486482382019363

`∑[∑[n]-A249152(n)]`
-/

namespace A099027.P12326486482382019363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A249152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099027.P12326486482382019363

namespace A099027

/-- `∑[∑[n]-A249152(n)]` -/
def P12326486482382019363.Spec : Prop :=
  ∀ n, P12326486482382019363.a n = A099027 n

end A099027

/-! ## A099027.P12348431715113166598

`∑[∑[n*A088705(n)]]`
-/

namespace A099027.P12348431715113166598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088705 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099027.P12348431715113166598

namespace A099027

/-- `∑[∑[n*A088705(n)]]` -/
def P12348431715113166598.Spec : Prop :=
  ∀ n, P12348431715113166598.a n = A099027 n

end A099027

/-! ## A099027.P14328216904729453934

`∑[∑[2*n]-A143157(n)]`
-/

namespace A099027.P14328216904729453934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A143157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099027.P14328216904729453934

namespace A099027

/-- `∑[∑[2*n]-A143157(n)]` -/
def P14328216904729453934.Spec : Prop :=
  ∀ n, P14328216904729453934.a n = A099027 n

end A099027

/-! ## A099027.P3116361054071257704

`A000292(n)-A090889(n)`
-/

namespace A099027.P3116361054071257704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - A090889 n

end

end A099027.P3116361054071257704

namespace A099027

/-- `A000292(n)-A090889(n)` -/
def P3116361054071257704.Spec : Prop :=
  ∀ n, P3116361054071257704.a n = A099027 n

end A099027

/-! ## A099027.P14312190612745503157

`∑[A000788(n)-A187059(n)]`
-/

namespace A099027.P14312190612745503157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - A187059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099027.P14312190612745503157

namespace A099027

/-- `∑[A000788(n)-A187059(n)]` -/
def P14312190612745503157.Spec : Prop :=
  ∀ n, P14312190612745503157.a n = A099027 n

end A099027

/-! ## A099027.P11284536972418989959

`∑[A249154(n)-A000788(n)]`
-/

namespace A099027.P11284536972418989959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249154 n - A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099027.P11284536972418989959

namespace A099027

/-- `∑[A249154(n)-A000788(n)]` -/
def P11284536972418989959.Spec : Prop :=
  ∀ n, P11284536972418989959.a n = A099027 n

end A099027

/-! ## A099027.P7577022817542511574

`∑[∑[n]-A249153(A004526(n))]`
-/

namespace A099027.P7577022817542511574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A249153 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099027.P7577022817542511574

namespace A099027

/-- `∑[∑[n]-A249153(A004526(n))]` -/
def P7577022817542511574.Spec : Prop :=
  ∀ n, P7577022817542511574.a n = A099027 n

end A099027

/-! ## A099027.P12383095264553122978

`A001281(A375551(n))`
-/

namespace A099027.P12383095264553122978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A375551 n).toNat

end

end A099027.P12383095264553122978

namespace A099027

/-- `A001281(A375551(n))` -/
def P12383095264553122978.Spec : Prop :=
  ∀ n, P12383095264553122978.a n = A099027 n

end A099027

/-!
# A099029: Main diagonal of array A099028.

The programs for A099029, there is no canonical definition to state claims against.
-/

/-! ## A099029.P8949248815649825435

`-((n+1)*A323833(A058331(n)+A008574(n)))`
-/

namespace A099029.P8949248815649825435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * A323833 (A058331 n + A008574 n).toNat)

end

end A099029.P8949248815649825435

/-! ## A099029.P1433264333983894466

`A213736((n+2)²-2)`
-/

namespace A099029.P1433264333983894466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213736 ((n + 2) ^ 2 - 2)

end

end A099029.P1433264333983894466

/-!
# A099030: Number of tone-rows in n-tone music.

The programs for A099030, there is no canonical definition to state claims against.
-/

/-! ## A099030.P5278185790201597883

`A089066(n+3)`
-/

namespace A099030.P5278185790201597883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089066 (n + 3)

end

end A099030.P5278185790201597883

/-! ## A099030.P16296850190062003753

`record[A089066(A137734(n))]`
-/

namespace A099030.P16296850190062003753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089066 (A137734 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099030.P16296850190062003753

/-! ## A099030.P14055988166487832432

`record[A089066(A154958(n))]`
-/

namespace A099030.P14055988166487832432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089066 (A154958 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099030.P14055988166487832432

/-! ## A099030.P9456905613071021815

`record[A089066(A286552(n))]`
-/

namespace A099030.P9456905613071021815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089066 (A286552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099030.P9456905613071021815

/-! ## A099030.P12303436513980060221

`record[A089066(A068962(comp[n^7]))]`
-/

namespace A099030.P12303436513980060221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089066 (A068962 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099030.P12303436513980060221

/-!
# A099032: Number of different patterns of n-motifs.

The programs for A099032, there is no canonical definition to state claims against.
-/

/-! ## A099032.P10735973783774272371

`A004442(A088160(n)-∏{e}[n+1, #+1])`
-/

namespace A099032.P10735973783774272371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A088160 n - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A099032.P10735973783774272371

/-! ## A099032.P10353169109744996422

`A289207(A351737(n))+A193592(n)`
-/

namespace A099032.P10353169109744996422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A351737 n).toNat + A193592 n

end

end A099032.P10353169109744996422

/-!
# A099033: a(n) = Sum_{k=1..n} (-1)^A000120(3*k).

The programs for A099033, the canonical program `A099033.P12921075024038566039` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099033 has offset 1).

The definition of A099033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099033.P3101701639817474161

`∑[A065359(A134660(n+1))]`
-/

namespace A099033.P3101701639817474161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A134660 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P3101701639817474161

namespace A099033

/-- `∑[A065359(A134660(n+1))]` -/
def P3101701639817474161.Spec : Prop :=
  ∀ n, P3101701639817474161.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P17603426726152303575

`∑[A065359(A001316(3*(n+1)))]`
-/

namespace A099033.P17603426726152303575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A001316 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P17603426726152303575

namespace A099033

/-- `∑[A065359(A001316(3*(n+1)))]` -/
def P17603426726152303575.Spec : Prop :=
  ∀ n, P17603426726152303575.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P12921075024038566039

`A005599(n+1)-(A293162(n+1)+A293162(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099033

/-- `A005599(n+1)-(A293162(n+1)+A293162(n+1))` -/
def P12921075024038566039.Spec : Prop :=
  ∀ n, P12921075024038566039.a n = A099033 (n + 1)

theorem P12921075024038566039.correct : P12921075024038566039.Spec := by
  intro n
  simp only [A099033, Nat.add_sub_cancel]

end A099033

/-! ## A099033.P10942413651317006903

`A005599(n+2)-1`
-/

namespace A099033.P10942413651317006903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (n + 2) - 1

end

end A099033.P10942413651317006903

namespace A099033

/-- `A005599(n+2)-1` -/
def P10942413651317006903.Spec : Prop :=
  ∀ n, P10942413651317006903.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P4863407360087899586

`∑[1/Δ[A005599(n+1)]]`
-/

namespace A099033.P4863407360087899586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P4863407360087899586

namespace A099033

/-- `∑[1/Δ[A005599(n+1)]]` -/
def P4863407360087899586.Spec : Prop :=
  ∀ n, P4863407360087899586.a n = (A099033 (n + 1) : ℚ)

end A099033

/-! ## A099033.P8368223011890162551

`∑[A106400(3*(n+1))]`
-/

namespace A099033.P8368223011890162551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P8368223011890162551

namespace A099033

/-- `∑[A106400(3*(n+1))]` -/
def P8368223011890162551.Spec : Prop :=
  ∀ n, P8368223011890162551.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P1486462171164103864

`abs(∑[A186032(3*n+2)])`
-/

namespace A099033.P1486462171164103864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186032 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A099033.P1486462171164103864

namespace A099033

/-- `abs(∑[A186032(3*n+2)])` -/
def P1486462171164103864.Spec : Prop :=
  ∀ n, P1486462171164103864.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P6468906857223804365

`∑[2-A268676(3*(n+1))]`
-/

namespace A099033.P6468906857223804365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A268676 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P6468906857223804365

namespace A099033

/-- `∑[2-A268676(3*(n+1))]` -/
def P6468906857223804365.Spec : Prop :=
  ∀ n, P6468906857223804365.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P8546606751314758425

`∑[A281048(3*n+4)%2]`
-/

namespace A099033.P8546606751314758425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281048 (3 * n + 4)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P8546606751314758425

namespace A099033

/-- `∑[A281048(3*n+4)%2]` -/
def P8546606751314758425.Spec : Prop :=
  ∀ n, P8546606751314758425.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P634980312893399814

`∑[A015751(A000120(3*(n+1)))]`
-/

namespace A099033.P634980312893399814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 (A000120 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P634980312893399814

namespace A099033

/-- `∑[A015751(A000120(3*(n+1)))]` -/
def P634980312893399814.Spec : Prop :=
  ∀ n, P634980312893399814.a n = A099033 (n + 1)

end A099033

/-! ## A099033.P5378288121915011940

`∑[A029883(6*n+7)]`
-/

namespace A099033.P5378288121915011940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (6 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099033.P5378288121915011940

namespace A099033

/-- `∑[A029883(6*n+7)]` -/
def P5378288121915011940.Spec : Prop :=
  ∀ n, P5378288121915011940.a n = A099033 (n + 1)

end A099033

/-!
# A099034: a(n) = Sum_{k=1..n} (-1)^A000120(5*k).

The programs for A099034, the canonical program `A099034.P5054995373188191690` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099034 has offset 1).

The definition of A099034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099034.P5054995373188191690

`∑[3-2*A026517(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099034

/-- `∑[3-2*A026517(n+1)]` -/
def P5054995373188191690.Spec : Prop :=
  ∀ n, P5054995373188191690.a n = A099034 (n + 1)

theorem P5054995373188191690.correct : P5054995373188191690.Spec := by
  intro n
  simp only [A099034, Nat.add_sub_cancel]

end A099034

/-! ## A099034.P15319616302830359877

`∑[log2(1/2)^A046820(n+1)]`
-/

namespace A099034.P15319616302830359877
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) ^ (A046820 (n + 1) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099034.P15319616302830359877

namespace A099034

/-- `∑[log2(1/2)^A046820(n+1)]` -/
def P15319616302830359877.Spec : Prop :=
  ∀ n, P15319616302830359877.a n = (A099034 (n + 1) : ℝ)

end A099034

/-! ## A099034.P420949665761086584

`∑[A318984(A001316(5*(n+1)))-1]`
-/

namespace A099034.P420949665761086584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318984 (A001316 (5 * (n + 1))).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099034.P420949665761086584

namespace A099034

/-- `∑[A318984(A001316(5*(n+1)))-1]` -/
def P420949665761086584.Spec : Prop :=
  ∀ n, P420949665761086584.a n = A099034 (n + 1)

end A099034

/-! ## A099034.P14330939102872325713

`∑[A106400(5*(n+1))]`
-/

namespace A099034.P14330939102872325713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099034.P14330939102872325713

namespace A099034

/-- `∑[A106400(5*(n+1))]` -/
def P14330939102872325713.Spec : Prop :=
  ∀ n, P14330939102872325713.a n = A099034 (n + 1)

end A099034

/-! ## A099034.P17879725341555381489

`∑[A033999(A000120(5*(n+1)))]`
-/

namespace A099034.P17879725341555381489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000120 (5 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099034.P17879725341555381489

namespace A099034

/-- `∑[A033999(A000120(5*(n+1)))]` -/
def P17879725341555381489.Spec : Prop :=
  ∀ n, P17879725341555381489.a n = A099034 (n + 1)

end A099034

/-! ## A099034.P15568130677338417860

`∑[A029883(10*n+11)]`
-/

namespace A099034.P15568130677338417860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029883 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099034.P15568130677338417860

namespace A099034

/-- `∑[A029883(10*n+11)]` -/
def P15568130677338417860.Spec : Prop :=
  ∀ n, P15568130677338417860.a n = A099034 (n + 1)

end A099034

/-!
# A099035: a(n) = (n+1)*2^(n-1) - 1.

The programs for A099035, the canonical program `A099035.P6598920201532399146` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099035 has offset 1).

The definition of A099035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*2^n-1` (program `A099035.P6598920201532399146`, by `A099035.P6598920201532399146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099035.P6598920201532399146

`(n+2)*2^n-1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099035

/-- `(n+2)*2^n-1` -/
def P6598920201532399146.Spec : Prop :=
  ∀ n, P6598920201532399146.a n = A099035 (n + 1)

theorem P6598920201532399146.correct : P6598920201532399146.Spec := by
  intro n
  simp only [A099035, Nat.add_sub_cancel]

end A099035

/-! ## A099035.P17360581005533688348

`ogf((1-2x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A099035.P17360581005533688348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -5, 8, -4] n

end

end A099035.P17360581005533688348

namespace A099035

/-- `ogf((1-2x^2)/(1-5x+8x^2-4x^3))` -/
def P17360581005533688348.Spec : Prop :=
  ∀ n, P17360581005533688348.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P13962008405849359948

`A058966(n+4)/2`
-/

namespace A099035.P13962008405849359948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058966 (n + 4) : ℚ) / 2

end

end A099035.P13962008405849359948

namespace A099035

/-- `A058966(n+4)/2` -/
def P13962008405849359948.Spec : Prop :=
  ∀ n, P13962008405849359948.a n = (A099035 (n + 1) : ℚ)

end A099035

/-! ## A099035.P17400346825678104430

`(A087323(n+1)-1)/2`
-/

namespace A099035.P17400346825678104430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087323 (n + 1) - 1 : ℚ) / 2

end

end A099035.P17400346825678104430

namespace A099035

/-- `(A087323(n+1)-1)/2` -/
def P17400346825678104430.Spec : Prop :=
  ∀ n, P17400346825678104430.a n = (A099035 (n + 1) : ℚ)

theorem P17400346825678104430.correct : P17400346825678104430.Spec := by
  intro n
  simp only [A099035, Nat.add_sub_cancel, A099035.P17400346825678104430.a, A099035.P6598920201532399146.a, A087323, A087323.P14968093904984587548.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099035

/-! ## A099035.P17355409790280121023

`(A074494(n+2)-2)/3`
-/

namespace A099035.P17355409790280121023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074494 (n + 2) - 2 : ℚ) / 3

end

end A099035.P17355409790280121023

namespace A099035

/-- `(A074494(n+2)-2)/3` -/
def P17355409790280121023.Spec : Prop :=
  ∀ n, P17355409790280121023.a n = (A099035 (n + 1) : ℚ)

end A099035

/-! ## A099035.P15789356770956939926

`(A003261(n+2)-3)/4`
-/

namespace A099035.P15789356770956939926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003261 (n + 2) - 3 : ℚ) / 4

end

end A099035.P15789356770956939926

namespace A099035

/-- `(A003261(n+2)-3)/4` -/
def P15789356770956939926.Spec : Prop :=
  ∀ n, P15789356770956939926.a n = (A099035 (n + 1) : ℚ)

theorem P15789356770956939926.correct : P15789356770956939926.Spec := by
  intro n
  simp only [A099035, Nat.add_sub_cancel, A099035.P15789356770956939926.a, A099035.P6598920201532399146.a, A003261, A003261.P10775905742820185947.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A099035

/-! ## A099035.P13807257959598763692

`∑[ogf((1-2x^2)/(1-4x+4x^2))]`
-/

namespace A099035.P13807257959598763692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099035.P13807257959598763692

namespace A099035

/-- `∑[ogf((1-2x^2)/(1-4x+4x^2))]` -/
def P13807257959598763692.Spec : Prop :=
  ∀ n, P13807257959598763692.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P7615334790542020661

`or(1, 4*(a(n-1)-a(n-2))-2)` with `a(0)=1, a(1)=5`
-/

namespace A099035.P7615334790542020661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.lor 1 (4 * (a (n - 1) - a (n - 2)) - 2)

end

end A099035.P7615334790542020661

namespace A099035

/-- `or(1, 4*(a(n-1)-a(n-2))-2)` -/
def P7615334790542020661.Spec : Prop :=
  ∀ n, P7615334790542020661.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P5363081772417710279

`xor(1, 4*(a(n-1)-a(n-2))-2)` with `a(0)=1, a(1)=5`
-/

namespace A099035.P5363081772417710279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  Int.xor 1 (4 * (a (n - 1) - a (n - 2)) - 2)

end

end A099035.P5363081772417710279

namespace A099035

/-- `xor(1, 4*(a(n-1)-a(n-2))-2)` -/
def P5363081772417710279.Spec : Prop :=
  ∀ n, P5363081772417710279.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P10085321983370412810

`∑[∑[A129954(n)]]`
-/

namespace A099035.P10085321983370412810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099035.P10085321983370412810

namespace A099035

/-- `∑[∑[A129954(n)]]` -/
def P10085321983370412810.Spec : Prop :=
  ∀ n, P10085321983370412810.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P1905473582872692744

`∑[A087447(n+1)]`
-/

namespace A099035.P1905473582872692744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099035.P1905473582872692744

namespace A099035

/-- `∑[A087447(n+1)]` -/
def P1905473582872692744.Spec : Prop :=
  ∀ n, P1905473582872692744.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P15628352421122195633

`∑[A129953(n+1)]`
-/

namespace A099035.P15628352421122195633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099035.P15628352421122195633

namespace A099035

/-- `∑[A129953(n+1)]` -/
def P15628352421122195633.Spec : Prop :=
  ∀ n, P15628352421122195633.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P1253368946915540556

`xor(A221882(n+1), n)`
-/

namespace A099035.P1253368946915540556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A221882 (n + 1)) (n : ℤ)

end

end A099035.P1253368946915540556

namespace A099035

/-- `xor(A221882(n+1), n)` -/
def P1253368946915540556.Spec : Prop :=
  ∀ n, P1253368946915540556.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P821455556565287296

`record[2*A211164(n)-1]`
-/

namespace A099035.P821455556565287296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211164 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099035.P821455556565287296

namespace A099035

/-- `record[2*A211164(n)-1]` -/
def P821455556565287296.Spec : Prop :=
  ∀ n, P821455556565287296.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P5745766398733166521

`∑[floor(A001792(n+1)/2)]`
-/

namespace A099035.P5745766398733166521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001792 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099035.P5745766398733166521

namespace A099035

/-- `∑[floor(A001792(n+1)/2)]` -/
def P5745766398733166521.Spec : Prop :=
  ∀ n, P5745766398733166521.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P5634735216846067129

`∑[∑[A057711(n)+2^n]]`
-/

namespace A099035.P5634735216846067129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 n + (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099035.P5634735216846067129

namespace A099035

/-- `∑[∑[A057711(n)+2^n]]` -/
def P5634735216846067129.Spec : Prop :=
  ∀ n, P5634735216846067129.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P382917856349122817

`abs((n+2)*A000079(n)-1)`
-/

namespace A099035.P382917856349122817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A000079 n - 1|

end

end A099035.P382917856349122817

namespace A099035

/-- `abs((n+2)*A000079(n)-1)` -/
def P382917856349122817.Spec : Prop :=
  ∀ n, P382917856349122817.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P2207972464782087221

`abs((n+2)*A155559(n)-1)`
-/

namespace A099035.P2207972464782087221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A155559 n - 1|

end

end A099035.P2207972464782087221

namespace A099035

/-- `abs((n+2)*A155559(n)-1)` -/
def P2207972464782087221.Spec : Prop :=
  ∀ n, P2207972464782087221.a n = A099035 (n + 1)

end A099035

/-! ## A099035.P13718344047830697028

`xor(A000975(n), A127981(n+1))`
-/

namespace A099035.P13718344047830697028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A127981 (n + 1))

end

end A099035.P13718344047830697028

namespace A099035

/-- `xor(A000975(n), A127981(n+1))` -/
def P13718344047830697028.Spec : Prop :=
  ∀ n, P13718344047830697028.a n = A099035 (n + 1)

end A099035

/-!
# A099036: a(n) = 2^n - Fibonacci(n).

The programs for A099036, the canonical program `A099036.P3170140726151309437` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099036 has offset 0).

The definition of A099036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-A000045(n)` (program `A099036.P3170140726151309437`, by `A099036.P3170140726151309437.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099036.P4890419683652094553

`ogf((1-2x+x^2)/(1-3x+x^2+2x^3))`
-/

namespace A099036.P4890419683652094553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 1, 2] n

end

end A099036.P4890419683652094553

namespace A099036

/-- `ogf((1-2x+x^2)/(1-3x+x^2+2x^3))` -/
def P4890419683652094553.Spec : Prop :=
  ∀ n, P4890419683652094553.a n = A099036 n

end A099036

/-! ## A099036.P3170140726151309437

`2^n-A000045(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099036

/-- `2^n-A000045(n)` -/
def P3170140726151309437.Spec : Prop :=
  ∀ n, P3170140726151309437.a n = A099036 n

theorem P3170140726151309437.correct : P3170140726151309437.Spec := by
  intro n
  simp only [A099036]

end A099036

/-! ## A099036.P8392171261590195701

`A117591(n)-2*A000045(n)`
-/

namespace A099036.P8392171261590195701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117591 n - 2 * A000045 n

end

end A099036.P8392171261590195701

namespace A099036

/-- `A117591(n)-2*A000045(n)` -/
def P8392171261590195701.Spec : Prop :=
  ∀ n, P8392171261590195701.a n = A099036 n

theorem P8392171261590195701.correct : P8392171261590195701.Spec := by
  intro n
  simp only [A099036, Nat.add_sub_cancel, A099036.P8392171261590195701.a, A099036.P3170140726151309437.a, A000045, A000045.P11838749114346432762.a, A117591, A117591.P16275801565193355413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099036

/-! ## A099036.P15536837356230818306

`3*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A099036.P15536837356230818306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A099036.P15536837356230818306

namespace A099036

/-- `3*a(n-1)-a(n-2)-2*a(n-3)` -/
def P15536837356230818306.Spec : Prop :=
  ∀ n, P15536837356230818306.a n = A099036 n

end A099036

/-! ## A099036.P18368464278483622068

`A000079(n+1)-A117591(n)`
-/

namespace A099036.P18368464278483622068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A117591 n

end

end A099036.P18368464278483622068

namespace A099036

/-- `A000079(n+1)-A117591(n)` -/
def P18368464278483622068.Spec : Prop :=
  ∀ n, P18368464278483622068.a n = A099036 n

theorem P18368464278483622068.correct : P18368464278483622068.Spec := by
  intro n
  simp only [A099036, Nat.add_sub_cancel, A099036.P18368464278483622068.a, A099036.P3170140726151309437.a, A000045, A000045.P11838749114346432762.a, A000079, A000079.P10855139691139572931.a, A117591, A117591.P16275801565193355413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099036

/-! ## A099036.P333668271171796189

`2^n+(((1-sqrt(5))/2)^n-((1+sqrt(5))/2)^n)/sqrt(5)`
-/

namespace A099036.P333668271171796189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℝ) + (((1 - Real.sqrt (5 : ℝ)) / 2) ^ n - ((1 + Real.sqrt (5 : ℝ)) / 2) ^ n) / Real.sqrt (5 : ℝ)

end

end A099036.P333668271171796189

namespace A099036

/-- `2^n+(((1-sqrt(5))/2)^n-((1+sqrt(5))/2)^n)/sqrt(5)` -/
def P333668271171796189.Spec : Prop :=
  ∀ n, P333668271171796189.a n = (A099036 n : ℝ)

end A099036

/-! ## A099036.P16669161782349461358

`lcm(A228078(n)+1, (-1)^n)`
-/

namespace A099036.P16669161782349461358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A228078 n + 1) ((-1) ^ n)

end

end A099036.P16669161782349461358

namespace A099036

/-- `lcm(A228078(n)+1, (-1)^n)` -/
def P16669161782349461358.Spec : Prop :=
  ∀ n, (P16669161782349461358.a n : ℤ) = A099036 n

end A099036

/-! ## A099036.P14551662798832640983

`abs(A000045(n)-A000079(n))`
-/

namespace A099036.P14551662798832640983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 n - A000079 n|

end

end A099036.P14551662798832640983

namespace A099036

/-- `abs(A000045(n)-A000079(n))` -/
def P14551662798832640983.Spec : Prop :=
  ∀ n, P14551662798832640983.a n = A099036 n

end A099036

/-! ## A099036.P15842132263885238935

`abs(A011782(n+1)-A000045(n))`
-/

namespace A099036.P15842132263885238935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A000045 n|

end

end A099036.P15842132263885238935

namespace A099036

/-- `abs(A011782(n+1)-A000045(n))` -/
def P15842132263885238935.Spec : Prop :=
  ∀ n, P15842132263885238935.a n = A099036 n

end A099036

/-! ## A099036.P9864097014059172374

`∑{d}[n+1, A008683(#)*A130711((n+1)/#)]`
-/

namespace A099036.P9864097014059172374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A130711 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A099036.P9864097014059172374

namespace A099036

/-- `∑{d}[n+1, A008683(#)*A130711((n+1)/#)]` -/
def P9864097014059172374.Spec : Prop :=
  ∀ n, P9864097014059172374.a n = A099036 n

end A099036

/-! ## A099036.P14619962592336946502

`Δ[A027934(n)]`
-/

namespace A099036.P14619962592336946502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P14619962592336946502

namespace A099036

/-- `Δ[A027934(n)]` -/
def P14619962592336946502.Spec : Prop :=
  ∀ n, P14619962592336946502.a n = A099036 n

end A099036

/-! ## A099036.P3500823760973340408

`Δ[abs(Δ[A100321(n)])]`
-/

namespace A099036.P3500823760973340408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P3500823760973340408

namespace A099036

/-- `Δ[abs(Δ[A100321(n)])]` -/
def P3500823760973340408.Spec : Prop :=
  ∀ n, P3500823760973340408.a n = A099036 n

end A099036

/-! ## A099036.P15449609645334283936

`Δ[A000051(n)-A000045(n+1)]`
-/

namespace A099036.P15449609645334283936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P15449609645334283936

namespace A099036

/-- `Δ[A000051(n)-A000045(n+1)]` -/
def P15449609645334283936.Spec : Prop :=
  ∀ n, P15449609645334283936.a n = A099036 n

end A099036

/-! ## A099036.P7733575467106291204

`Δ[A000079(n)-A000071(n+1)]`
-/

namespace A099036.P7733575467106291204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P7733575467106291204

namespace A099036

/-- `Δ[A000079(n)-A000071(n+1)]` -/
def P7733575467106291204.Spec : Prop :=
  ∀ n, P7733575467106291204.a n = A099036 n

end A099036

/-! ## A099036.P1648123387591898978

`Δ[A011782(n+1)-A000045(n+1)]`
-/

namespace A099036.P1648123387591898978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P1648123387591898978

namespace A099036

/-- `Δ[A011782(n+1)-A000045(n+1)]` -/
def P1648123387591898978.Spec : Prop :=
  ∀ n, P1648123387591898978.a n = A099036 n

end A099036

/-! ## A099036.P12694279237656547460

`Δ[A131577(n+1)-A000045(n+1)]`
-/

namespace A099036.P12694279237656547460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P12694279237656547460

namespace A099036

/-- `Δ[A131577(n+1)-A000045(n+1)]` -/
def P12694279237656547460.Spec : Prop :=
  ∀ n, P12694279237656547460.a n = A099036 n

end A099036

/-! ## A099036.P10577364922395192822

`Δ[A016116(2*n)-A000045(n+1)]`
-/

namespace A099036.P10577364922395192822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P10577364922395192822

namespace A099036

/-- `Δ[A016116(2*n)-A000045(n+1)]` -/
def P10577364922395192822.Spec : Prop :=
  ∀ n, P10577364922395192822.a n = A099036 n

end A099036

/-! ## A099036.P17641793890645578713

`Δ[A016116(2*n)-A001611(n+1)]`
-/

namespace A099036.P17641793890645578713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P17641793890645578713

namespace A099036

/-- `Δ[A016116(2*n)-A001611(n+1)]` -/
def P17641793890645578713.Spec : Prop :=
  ∀ n, P17641793890645578713.a n = A099036 n

end A099036

/-! ## A099036.P16647639592364398691

`Δ[A060546(2*n)-A001611(n+1)]`
-/

namespace A099036.P16647639592364398691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) - A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P16647639592364398691

namespace A099036

/-- `Δ[A060546(2*n)-A001611(n+1)]` -/
def P16647639592364398691.Spec : Prop :=
  ∀ n, P16647639592364398691.a n = A099036 n

end A099036

/-! ## A099036.P10985461942026280333

`Δ[A016116(2*n)-Δ[A000071(n+2)]]`
-/

namespace A099036.P10985461942026280333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099036.P10985461942026280333

namespace A099036

/-- `Δ[A016116(2*n)-Δ[A000071(n+2)]]` -/
def P10985461942026280333.Spec : Prop :=
  ∀ n, P10985461942026280333.a n = A099036 n

end A099036

/-!
# A099037: Triangle of diagonals of symmetric Krawtchouk matrices.

The programs for A099037, the canonical program `A099037.P12966065095049389843` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099037 has offset 0).

The definition of A099037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099037.P12966065095049389843

`A098593(n)*A130595(A061579(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099037

/-- `A098593(n)*A130595(A061579(n))` -/
def P12966065095049389843.Spec : Prop :=
  ∀ n, P12966065095049389843.a n = A099037 n

theorem P12966065095049389843.correct : P12966065095049389843.Spec := by
  intro n
  simp only [A099037]

end A099037

/-! ## A099037.P13579770427956616642

`A098593(n)*A130595(∑[A198954(n)-1])`
-/

namespace A099037.P13579770427956616642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 n * A130595 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099037.P13579770427956616642

namespace A099037

/-- `A098593(n)*A130595(∑[A198954(n)-1])` -/
def P13579770427956616642.Spec : Prop :=
  ∀ n, P13579770427956616642.a n = A099037 n

end A099037

/-! ## A099037.P204512541460415570

`(2*A119326(n)-A007318(n))*A130595(A061579(n))`
-/

namespace A099037.P204512541460415570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A119326 n - A007318 n) * A130595 (A061579 n).toNat

end

end A099037.P204512541460415570

namespace A099037

/-- `(2*A119326(n)-A007318(n))*A130595(A061579(n))` -/
def P204512541460415570.Spec : Prop :=
  ∀ n, P204512541460415570.a n = A099037 n

end A099037

/-! ## A099037.P10592467966226126510

`(2-A062756(A022167(n)))*A130595(A061579(n))`
-/

namespace A099037.P10592467966226126510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A062756 (A022167 n).toNat) * A130595 (A061579 n).toNat

end

end A099037.P10592467966226126510

namespace A099037

/-- `(2-A062756(A022167(n)))*A130595(A061579(n))` -/
def P10592467966226126510.Spec : Prop :=
  ∀ n, P10592467966226126510.a n = A099037 n

end A099037

/-! ## A099037.P14336755025041304842

`(1-A106493(A300966(n+1)))*A130595(A061579(n))`
-/

namespace A099037.P14336755025041304842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A106493 (A300966 (n + 1)).toNat) * A130595 (A061579 n).toNat

end

end A099037.P14336755025041304842

namespace A099037

/-- `(1-A106493(A300966(n+1)))*A130595(A061579(n))` -/
def P14336755025041304842.Spec : Prop :=
  ∀ n, P14336755025041304842.a n = A099037 n

end A099037

/-!
# A099039: Riordan array (1,c(-x)), where c(x) = g.f. of Catalan numbers.

The programs for A099039, the canonical program `A099039.P8333967815748513514` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099039 has offset 0).

The definition of A099039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099039.P8333967815748513514

`A097807(n)*A106566(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099039

/-- `A097807(n)*A106566(n)` -/
def P8333967815748513514.Spec : Prop :=
  ∀ n, P8333967815748513514.a n = A099039 n

theorem P8333967815748513514.correct : P8333967815748513514.Spec := by
  intro n
  simp only [A099039]

end A099039

/-! ## A099039.P5358289153162566810

`A033999(A025581(n))*A106566(n)`
-/

namespace A099039.P5358289153162566810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A106566 n

end

end A099039.P5358289153162566810

namespace A099039

/-- `A033999(A025581(n))*A106566(n)` -/
def P5358289153162566810.Spec : Prop :=
  ∀ n, P5358289153162566810.a n = A099039 n

end A099039

/-! ## A099039.P1305594832300899688

`A033999(A051162(n))*A106566(n)`
-/

namespace A099039.P1305594832300899688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A106566 n

end

end A099039.P1305594832300899688

namespace A099039

/-- `A033999(A051162(n))*A106566(n)` -/
def P1305594832300899688.Spec : Prop :=
  ∀ n, P1305594832300899688.a n = A099039 n

end A099039

/-! ## A099039.P341101222507348464

`A106566(n)*A164677(A099375(n))`
-/

namespace A099039.P341101222507348464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n * A164677 (A099375 n).toNat

end

end A099039.P341101222507348464

namespace A099039

/-- `A106566(n)*A164677(A099375(n))` -/
def P341101222507348464.Spec : Prop :=
  ∀ n, P341101222507348464.a n = A099039 n

end A099039

/-! ## A099039.P18324808330382734827

`A062157(A004736(n+1))*A106566(n)`
-/

namespace A099039.P18324808330382734827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A106566 n

end

end A099039.P18324808330382734827

namespace A099039

/-- `A062157(A004736(n+1))*A106566(n)` -/
def P18324808330382734827.Spec : Prop :=
  ∀ n, P18324808330382734827.a n = A099039 n

end A099039

/-! ## A099039.P14002784210079608263

`A062157(A094727(n+1))*A106566(n)`
-/

namespace A099039.P14002784210079608263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A094727 (n + 1)).toNat * A106566 n

end

end A099039.P14002784210079608263

namespace A099039

/-- `A062157(A094727(n+1))*A106566(n)` -/
def P14002784210079608263.Spec : Prop :=
  ∀ n, P14002784210079608263.a n = A099039 n

end A099039

/-! ## A099039.P1107969852587151020

`A091698(n)/A168216(n)*A106566(n)`
-/

namespace A099039.P1107969852587151020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091698 n : ℚ) / (A168216 n : ℚ) * (A106566 n : ℚ)

end

end A099039.P1107969852587151020

namespace A099039

/-- `A091698(n)/A168216(n)*A106566(n)` -/
def P1107969852587151020.Spec : Prop :=
  ∀ n, P1107969852587151020.a n = (A099039 n : ℚ)

end A099039

/-! ## A099039.P10948631421064859178

`A091698(n)*A106566(n)/A168216(n)`
-/

namespace A099039.P10948631421064859178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091698 n * A106566 n : ℚ) / (A168216 n : ℚ)

end

end A099039.P10948631421064859178

namespace A099039

/-- `A091698(n)*A106566(n)/A168216(n)` -/
def P10948631421064859178.Spec : Prop :=
  ∀ n, P10948631421064859178.a n = (A099039 n : ℚ)

end A099039

/-! ## A099039.P8095719491403462150

`A004718(A130321(n))*A106566(n)`
-/

namespace A099039.P8095719491403462150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A106566 n

end

end A099039.P8095719491403462150

namespace A099039

/-- `A004718(A130321(n))*A106566(n)` -/
def P8095719491403462150.Spec : Prop :=
  ∀ n, P8095719491403462150.a n = A099039 n

end A099039

/-! ## A099039.P15096470801862135192

`A106566(n)*A113278(n)/A132382(n)`
-/

namespace A099039.P15096470801862135192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106566 n * A113278 n : ℚ) / (A132382 n : ℚ)

end

end A099039.P15096470801862135192

namespace A099039

/-- `A106566(n)*A113278(n)/A132382(n)` -/
def P15096470801862135192.Spec : Prop :=
  ∀ n, P15096470801862135192.a n = (A099039 n : ℚ)

end A099039

/-!
# A099040: Riordan array (1, 2+2x).

The programs for A099040, the canonical program `A099040.P6572399841340811543` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099040 has offset 0).

The definition of A099040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099040.P6572399841340811543

`2^col(n)*C(col(n), row(n)-col(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099040

/-- `2^col(n)*C(col(n), row(n)-col(n))` -/
def P6572399841340811543.Spec : Prop :=
  ∀ n, (P6572399841340811543.a n : ℤ) = A099040 n

theorem P6572399841340811543.correct : P6572399841340811543.Spec := by
  intro n
  simp only [A099040]

end A099040

/-! ## A099040.P10246118450073290506

`2*(T(n-1,k-1)+T(n-2,k-1))` with `a(0)=1`
-/

namespace A099040.P10246118450073290506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n)

end

end A099040.P10246118450073290506

namespace A099040

/-- `2*(T(n-1,k-1)+T(n-2,k-1))` -/
def P10246118450073290506.Spec : Prop :=
  ∀ n, (P10246118450073290506.a n : ℤ) = A099040 n

end A099040

/-! ## A099040.P12767803993125503303

`2*2*T(n-1,k-1)-2*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A099040.P12767803993125503303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 * SequenceMachineLib.triUpLeft a n) - 2 * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A099040.P12767803993125503303

namespace A099040

/-- `2*2*T(n-1,k-1)-2*(T(n-1,k-1)-T(n-2,k-1))` -/
def P12767803993125503303.Spec : Prop :=
  ∀ n, P12767803993125503303.a n = A099040 n

end A099040

/-! ## A099040.P12712577473766050037

`A026729(n)*A059268(n)`
-/

namespace A099040.P12712577473766050037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A059268 n

end

end A099040.P12712577473766050037

namespace A099040

/-- `A026729(n)*A059268(n)` -/
def P12712577473766050037.Spec : Prop :=
  ∀ n, P12712577473766050037.a n = A099040 n

end A099040

/-! ## A099040.P1560765928236227932

`A026729(n)*A061930(n)`
-/

namespace A099040.P1560765928236227932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A061930 n

end

end A099040.P1560765928236227932

namespace A099040

/-- `A026729(n)*A061930(n)` -/
def P1560765928236227932.Spec : Prop :=
  ∀ n, P1560765928236227932.a n = A099040 n

end A099040

/-! ## A099040.P623442373611597807

`A052509(n)*A099089(n)`
-/

namespace A099040.P623442373611597807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n * A099089 n

end

end A099040.P623442373611597807

namespace A099040

/-- `A052509(n)*A099089(n)` -/
def P623442373611597807.Spec : Prop :=
  ∀ n, P623442373611597807.a n = A099040 n

end A099040

/-! ## A099040.P6087328349069913762

`A068913(n)*A099089(n)`
-/

namespace A099040.P6087328349069913762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 n * A099089 n

end

end A099040.P6087328349069913762

namespace A099040

/-- `A068913(n)*A099089(n)` -/
def P6087328349069913762.Spec : Prop :=
  ∀ n, P6087328349069913762.a n = A099040 n

end A099040

/-! ## A099040.P11186148096867060579

`A099089(n)*A130321(n)`
-/

namespace A099040.P11186148096867060579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A130321 n

end

end A099040.P11186148096867060579

namespace A099040

/-- `A099089(n)*A130321(n)` -/
def P11186148096867060579.Spec : Prop :=
  ∀ n, P11186148096867060579.a n = A099040 n

end A099040

/-! ## A099040.P16511685663660610000

`A113953(n)*A116588(n)`
-/

namespace A099040.P16511685663660610000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113953 n * A116588 n

end

end A099040.P16511685663660610000

namespace A099040

/-- `A113953(n)*A116588(n)` -/
def P16511685663660610000.Spec : Prop :=
  ∀ n, P16511685663660610000.a n = A099040 n

end A099040

/-! ## A099040.P9637582220674121919

`A099089(n)*A144464(n)`
-/

namespace A099040.P9637582220674121919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A144464 n

end

end A099040.P9637582220674121919

namespace A099040

/-- `A099089(n)*A144464(n)` -/
def P9637582220674121919.Spec : Prop :=
  ∀ n, P9637582220674121919.a n = A099040 n

end A099040

/-! ## A099040.P15472497808776797304

`A099089(n)*A385674(n)`
-/

namespace A099040.P15472497808776797304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A385674 n

end

end A099040.P15472497808776797304

namespace A099040

/-- `A099089(n)*A385674(n)` -/
def P15472497808776797304.Spec : Prop :=
  ∀ n, P15472497808776797304.a n = A099040 n

end A099040

/-! ## A099040.P12692947136737518063

`A099092(n)/A052509(n)`
-/

namespace A099040.P12692947136737518063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A052509 n : ℚ)

end

end A099040.P12692947136737518063

namespace A099040

/-- `A099092(n)/A052509(n)` -/
def P12692947136737518063.Spec : Prop :=
  ∀ n, P12692947136737518063.a n = (A099040 n : ℚ)

end A099040

/-! ## A099040.P4815657428886678003

`A099092(n)/A130321(n)`
-/

namespace A099040.P4815657428886678003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A130321 n : ℚ)

end

end A099040.P4815657428886678003

namespace A099040

/-- `A099092(n)/A130321(n)` -/
def P4815657428886678003.Spec : Prop :=
  ∀ n, P4815657428886678003.a n = (A099040 n : ℚ)

end A099040

/-! ## A099040.P9894093471050496569

`A099092(n)/A144464(n)`
-/

namespace A099040.P9894093471050496569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A144464 n : ℚ)

end

end A099040.P9894093471050496569

namespace A099040

/-- `A099092(n)/A144464(n)` -/
def P9894093471050496569.Spec : Prop :=
  ∀ n, P9894093471050496569.a n = (A099040 n : ℚ)

end A099040

/-! ## A099040.P2041478498704105603

`abs(A059268(n)*A109466(n))`
-/

namespace A099040.P2041478498704105603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059268 n * A109466 n|

end

end A099040.P2041478498704105603

namespace A099040

/-- `abs(A059268(n)*A109466(n))` -/
def P2041478498704105603.Spec : Prop :=
  ∀ n, P2041478498704105603.a n = A099040 n

end A099040

/-! ## A099040.P17193956755608619366

`A057728(n+1)*A099089(n)`
-/

namespace A099040.P17193956755608619366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A099089 n

end

end A099040.P17193956755608619366

namespace A099040

/-- `A057728(n+1)*A099089(n)` -/
def P17193956755608619366.Spec : Prop :=
  ∀ n, P17193956755608619366.a n = A099040 n

end A099040

/-! ## A099040.P2318280203933113867

`A099089(n)*A152072(n+1)`
-/

namespace A099040.P2318280203933113867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A152072 (n + 1)

end

end A099040.P2318280203933113867

namespace A099040

/-- `A099089(n)*A152072(n+1)` -/
def P2318280203933113867.Spec : Prop :=
  ∀ n, P2318280203933113867.a n = A099040 n

end A099040

/-! ## A099040.P7997553336672875782

`A000079(A002262(n))*A026729(n)`
-/

namespace A099040.P7997553336672875782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A026729 n

end

end A099040.P7997553336672875782

namespace A099040

/-- `A000079(A002262(n))*A026729(n)` -/
def P7997553336672875782.Spec : Prop :=
  ∀ n, P7997553336672875782.a n = A099040 n

end A099040

/-! ## A099040.P16873125944048981433

`A011782(A002260(n+1))*A026729(n)`
-/

namespace A099040.P16873125944048981433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A026729 n

end

end A099040.P16873125944048981433

namespace A099040

/-- `A011782(A002260(n+1))*A026729(n)` -/
def P16873125944048981433.Spec : Prop :=
  ∀ n, P16873125944048981433.a n = A099040 n

end A099040

/-!
# A099041: Number of 3 X n 0-1 matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (10;0) and (10;1).

The programs for A099041, the canonical program `A099041.P8563892961990419018` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099041 has offset 0).

The definition of A099041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099041.P12965581992534575771

`ogf((1+4x-3x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A099041.P12965581992534575771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3] [1, -4, 5, -2] n

end

end A099041.P12965581992534575771

namespace A099041

/-- `ogf((1+4x-3x^2)/(1-4x+5x^2-2x^3))` -/
def P12965581992534575771.Spec : Prop :=
  ∀ n, P12965581992534575771.a n = A099041 n

end A099041

/-! ## A099041.P8563892961990419018

`9*2^n-2*n-8`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099041

/-- `9*2^n-2*n-8` -/
def P8563892961990419018.Spec : Prop :=
  ∀ n, P8563892961990419018.a n = A099041 n

theorem P8563892961990419018.correct : P8563892961990419018.Spec := by
  intro n
  simp only [A099041]

end A099041

/-! ## A099041.P327691808637249837

`∑[ogf((1+4x-3x^2)/(1-3x+2x^2))]`
-/

namespace A099041.P327691808637249837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099041.P327691808637249837

namespace A099041

/-- `∑[ogf((1+4x-3x^2)/(1-3x+2x^2))]` -/
def P327691808637249837.Spec : Prop :=
  ∀ n, P327691808637249837.a n = A099041 n

end A099041

/-! ## A099041.P899186135059306770

`∑[2*(a(n-1)+1)]` with `a(0)=1, a(1)=7`
-/

namespace A099041.P899186135059306770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099041.P899186135059306770

namespace A099041

/-- `∑[2*(a(n-1)+1)]` -/
def P899186135059306770.Spec : Prop :=
  ∀ n, (P899186135059306770.a n : ℤ) = A099041 n

end A099041

/-! ## A099041.P9764353869505509960

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=6, a(2)=9`
-/

namespace A099041.P9764353869505509960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 9] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099041.P9764353869505509960

namespace A099041

/-- `∑[∑[2*a(n-1)]]` -/
def P9764353869505509960.Spec : Prop :=
  ∀ n, (P9764353869505509960.a n : ℤ) = A099041 n

end A099041

/-! ## A099041.P13587106788367833183

`2*(a(n-1)+2+n)` with `a(0)=1`
-/

namespace A099041.P13587106788367833183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 2 + n)

end

end A099041.P13587106788367833183

namespace A099041

/-- `2*(a(n-1)+2+n)` -/
def P13587106788367833183.Spec : Prop :=
  ∀ n, (P13587106788367833183.a n : ℤ) = A099041 n

theorem P13587106788367833183.correct : P13587106788367833183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099041, Nat.add_sub_cancel, A099041.P13587106788367833183.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099041, Nat.add_sub_cancel, A099041.P13587106788367833183.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099041

/-! ## A099041.P1794982583346791520

`2*(a(xor(-1, -n))+n+2)` with `a(0)=1`
-/

namespace A099041.P1794982583346791520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (Int.xor (-1) (-(n : ℤ))).toNat + (n + 2))

end

end A099041.P1794982583346791520

namespace A099041

/-- `2*(a(xor(-1, -n))+n+2)` -/
def P1794982583346791520.Spec : Prop :=
  ∀ n, (P1794982583346791520.a n : ℤ) = A099041 n

end A099041

/-! ## A099041.P10006935018182422873

`2*(3-floor(1-a(n-1)-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A099041.P10006935018182422873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (3 - (1 - a (n - 1) - (n : ℤ)))

end

end A099041.P10006935018182422873

namespace A099041

/-- `2*(3-floor(1-a(n-1)-n))` -/
def P10006935018182422873.Spec : Prop :=
  ∀ n, P10006935018182422873.a n = A099041 n

theorem P10006935018182422873.correct : P10006935018182422873.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099041, Nat.add_sub_cancel, A099041.P10006935018182422873.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099041, Nat.add_sub_cancel, A099041.P10006935018182422873.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099041

/-! ## A099041.P9253144381565740484

`∑[a(n-1)+a(n-1)+2]` with `a(0)=1, a(1)=7`
-/

namespace A099041.P9253144381565740484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099041.P9253144381565740484

namespace A099041

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P9253144381565740484.Spec : Prop :=
  ∀ n, (P9253144381565740484.a n : ℤ) = A099041 n

end A099041

/-! ## A099041.P13455827677438549965

`(a(n-1)+2+n)/(1-1/2)` with `a(0)=1`
-/

namespace A099041.P13455827677438549965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 2 + (n : ℚ)) / (1 - (1 : ℚ) / 2)

end

end A099041.P13455827677438549965

namespace A099041

/-- `(a(n-1)+2+n)/(1-1/2)` -/
def P13455827677438549965.Spec : Prop :=
  ∀ n, P13455827677438549965.a n = (A099041 n : ℚ)

theorem P13455827677438549965.correct : P13455827677438549965.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099041, Nat.add_sub_cancel, A099041.P13455827677438549965.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099041, Nat.add_sub_cancel, A099041.P13455827677438549965.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099041

/-! ## A099041.P10057525394877823306

`2*(2-(n-2*n-a(n-1)))` with `a(0)=1`
-/

namespace A099041.P10057525394877823306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - ((n : ℤ) - (2 * n : ℤ) - a (n - 1)))

end

end A099041.P10057525394877823306

namespace A099041

/-- `2*(2-(n-2*n-a(n-1)))` -/
def P10057525394877823306.Spec : Prop :=
  ∀ n, P10057525394877823306.a n = A099041 n

theorem P10057525394877823306.correct : P10057525394877823306.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A099041, Nat.add_sub_cancel, A099041.P10057525394877823306.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A099041, Nat.add_sub_cancel, A099041.P10057525394877823306.a, A099041.P8563892961990419018.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A099041

/-! ## A099041.P15542998820475188235

`∑[record[A134693(n)-2]]`
-/

namespace A099041.P15542998820475188235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134693 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099041.P15542998820475188235

namespace A099041

/-- `∑[record[A134693(n)-2]]` -/
def P15542998820475188235.Spec : Prop :=
  ∀ n, P15542998820475188235.a n = A099041 n

end A099041

/-! ## A099041.P1436857140552862864

`2*(a(A023443(n))+n+2)` with `a(0)=1`
-/

namespace A099041.P1436857140552862864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (A023443 n).toNat + (n + 2))

end

end A099041.P1436857140552862864

namespace A099041

/-- `2*(a(A023443(n))+n+2)` -/
def P1436857140552862864.Spec : Prop :=
  ∀ n, (P1436857140552862864.a n : ℤ) = A099041 n

end A099041

/-! ## A099041.P9225722818464289589

`2*(a(abs(A024000(n)))+n+2)` with `a(0)=1`
-/

namespace A099041.P9225722818464289589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a |A024000 n|.toNat + (n + 2))

end

end A099041.P9225722818464289589

namespace A099041

/-- `2*(a(abs(A024000(n)))+n+2)` -/
def P9225722818464289589.Spec : Prop :=
  ∀ n, (P9225722818464289589.a n : ℤ) = A099041 n

end A099041

/-! ## A099041.P6915712004863124723

`abs(5-abs(2*n+3-A005010(n)))`
-/

namespace A099041.P6915712004863124723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 - |(2 * n + 3 : ℤ) - A005010 n|)|

end

end A099041.P6915712004863124723

namespace A099041

/-- `abs(5-abs(2*n+3-A005010(n)))` -/
def P6915712004863124723.Spec : Prop :=
  ∀ n, P6915712004863124723.a n = A099041 n

end A099041

/-! ## A099041.P5833227770247673114

`∑[A134067(n)+A131577(n)]`
-/

namespace A099041.P5833227770247673114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 n + A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099041.P5833227770247673114

namespace A099041

/-- `∑[A134067(n)+A131577(n)]` -/
def P5833227770247673114.Spec : Prop :=
  ∀ n, P5833227770247673114.a n = A099041 n

end A099041

/-! ## A099041.P17681365571826164332

`(A053209(n)-n)*A036453(n+1)`
-/

namespace A099041.P17681365571826164332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053209 n - (n : ℤ)) * A036453 (n + 1)

end

end A099041.P17681365571826164332

namespace A099041

/-- `(A053209(n)-n)*A036453(n+1)` -/
def P17681365571826164332.Spec : Prop :=
  ∀ n, P17681365571826164332.a n = A099041 n

end A099041

/-! ## A099041.P13666495890091187117

`Δ[∑[A154251(n)]-n²]`
-/

namespace A099041.P13666495890091187117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099041.P13666495890091187117

namespace A099041

/-- `Δ[∑[A154251(n)]-n²]` -/
def P13666495890091187117.Spec : Prop :=
  ∀ n, P13666495890091187117.a n = A099041 n

end A099041

/-! ## A099041.P12535716772448964253

`Δ[A227712(n)-(n+2)²]`
-/

namespace A099041.P12535716772448964253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227712 n - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099041.P12535716772448964253

namespace A099041

/-- `Δ[A227712(n)-(n+2)²]` -/
def P12535716772448964253.Spec : Prop :=
  ∀ n, P12535716772448964253.a n = A099041 n

theorem P12535716772448964253.correct : P12535716772448964253.Spec := by
  intro n
  simp only [A099041, Nat.add_sub_cancel, A099041.P12535716772448964253.f1, A099041.P12535716772448964253.a, A099041.P8563892961990419018.a, A227712, A227712.P14342544986382020901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099041

/-!
# A099042: Number of badly sieved (A066680) divisors of n.

The programs for A099042, there is no canonical definition to state claims against.
-/

/-! ## A099042.P10528838685852404140

`∑{d}[n+1, A099104(#)]`
-/

namespace A099042.P10528838685852404140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099104 d

end

end A099042.P10528838685852404140

/-! ## A099042.P6463660473174112989

`A087436(∏{e}[n+1, #+1]!+6^val(n+1, 6))`
-/

namespace A099042.P6463660473174112989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 6 ^ SequenceMachineLib.valuation (n + 1) 6)

end

end A099042.P6463660473174112989

/-! ## A099042.P12463627665927657510

`A341596(n+1)+A295884(A097004(n))`
-/

namespace A099042.P12463627665927657510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 (n + 1) + A295884 (A097004 n).toNat

end

end A099042.P12463627665927657510

/-! ## A099042.P13730861767914353717

`A354344(A318726(n+1))+A341596(n+1)`
-/

namespace A099042.P13730861767914353717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354344 (A318726 (n + 1)).toNat + A341596 (n + 1)

end

end A099042.P13730861767914353717

/-! ## A099042.P13881911769222915212

`and(A140774(n+1), A362920(n))`
-/

namespace A099042.P13881911769222915212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140774 (n + 1)) (A362920 n)

end

end A099042.P13881911769222915212

/-!
# A099043: Sum of badly sieved (A066680) divisors of n.

The programs for A099043, there is no canonical definition to state claims against.
-/

/-! ## A099043.P277125079125162634

`∑{d}[n+1, #*A099104(#)]`
-/

namespace A099043.P277125079125162634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A099104 d

end

end A099043.P277125079125162634

/-! ## A099043.P14684874269485198284

`A318677(n+1)%A318675(A324458(n+1))`
-/

namespace A099043.P14684874269485198284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318677 (n + 1)) (A318675 (A324458 (n + 1)).toNat)

end

end A099043.P14684874269485198284

/-! ## A099043.P3529269147060729826

`A318677(n+1)%A031140(A214551(n))`
-/

namespace A099043.P3529269147060729826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318677 (n + 1)) (A031140 (A214551 n).toNat)

end

end A099043.P3529269147060729826

/-!
# A099044: a(n) = (2*0^n + 3^n*binomial(2*n,n))/3.

The programs for A099044, the canonical program `A099044.P1499130633452543323` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099044 has offset 0).

The definition of A099044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099044.P1499130633452543323

`(2*0^n+3^n*C(2*n, n))/3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099044

/-- `(2*0^n+3^n*C(2*n, n))/3` -/
def P1499130633452543323.Spec : Prop :=
  ∀ n, P1499130633452543323.a n = (A099044 n : ℚ)

end A099044

/-! ## A099044.P10836476689553553564

`C(2*n, n)*ceil(3^(n-1))`
-/

namespace A099044.P10836476689553553564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A099044.P10836476689553553564

namespace A099044

/-- `C(2*n, n)*ceil(3^(n-1))` -/
def P10836476689553553564.Spec : Prop :=
  ∀ n, P10836476689553553564.a n = A099044 n

end A099044

/-! ## A099044.P9653635681244187503

`3*(4-2/n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A099044.P9653635681244187503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 * ((4 - 2 / (n : ℚ)) * a (n - 1))

end

end A099044.P9653635681244187503

namespace A099044

/-- `3*(4-2/n)*a(n-1)` -/
def P9653635681244187503.Spec : Prop :=
  ∀ n, P9653635681244187503.a n = (A099044 n : ℚ)

end A099044

/-! ## A099044.P1048714621861850627

`ceil(3^(n-1))*A000984(n)`
-/

namespace A099044.P1048714621861850627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000984 n

end

end A099044.P1048714621861850627

namespace A099044

/-- `ceil(3^(n-1))*A000984(n)` -/
def P1048714621861850627.Spec : Prop :=
  ∀ n, P1048714621861850627.a n = A099044 n

end A099044

/-! ## A099044.P2260785691783270996

`Δ[floor(3^(n-1))]*A088218(n)`
-/

namespace A099044.P2260785691783270996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A088218 n

end

end A099044.P2260785691783270996

namespace A099044

/-- `Δ[floor(3^(n-1))]*A088218(n)` -/
def P2260785691783270996.Spec : Prop :=
  ∀ n, P2260785691783270996.a n = A099044 n

end A099044

/-! ## A099044.P8186321950701666473

`ceil(3^(n-1))*A001405(2*n)`
-/

namespace A099044.P8186321950701666473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A001405 (2 * n)

end

end A099044.P8186321950701666473

namespace A099044

/-- `ceil(3^(n-1))*A001405(2*n)` -/
def P8186321950701666473.Spec : Prop :=
  ∀ n, P8186321950701666473.a n = A099044 n

end A099044

/-! ## A099044.P5323363344219194741

`3^log2(A011782(n))*C(2*n, n)`
-/

namespace A099044.P5323363344219194741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A011782 n : ℝ)) * (Nat.choose (2 * n) n : ℝ)

end

end A099044.P5323363344219194741

namespace A099044

/-- `3^log2(A011782(n))*C(2*n, n)` -/
def P5323363344219194741.Spec : Prop :=
  ∀ n, P5323363344219194741.a n = (A099044 n : ℝ)

end A099044

/-! ## A099044.P499995649572518823

`A000984(n)*A133494(n)`
-/

namespace A099044.P499995649572518823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A133494 n

end

end A099044.P499995649572518823

namespace A099044

/-- `A000984(n)*A133494(n)` -/
def P499995649572518823.Spec : Prop :=
  ∀ n, P499995649572518823.a n = A099044 n

end A099044

/-! ## A099044.P3413517781293380440

`A000984(n)*A017913(A004275(n))`
-/

namespace A099044.P3413517781293380440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A017913 (A004275 n).toNat

end

end A099044.P3413517781293380440

namespace A099044

/-- `A000984(n)*A017913(A004275(n))` -/
def P3413517781293380440.Spec : Prop :=
  ∀ n, P3413517781293380440.a n = A099044 n

end A099044

/-! ## A099044.P6326565052368139907

`A001405(A004273(n))*A025192(n)`
-/

namespace A099044.P6326565052368139907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A004273 n).toNat * A025192 n

end

end A099044.P6326565052368139907

namespace A099044

/-- `A001405(A004273(n))*A025192(n)` -/
def P6326565052368139907.Spec : Prop :=
  ∀ n, P6326565052368139907.a n = A099044 n

end A099044

/-!
# A099045: a(n) = (3*0^n + 4^n*binomial(2*n,n))/4.

The programs for A099045, the canonical program `A099045.P11385674932422720955` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099045 has offset 0).

The definition of A099045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099045.P11385674932422720955

`(3*0^n+4^n*C(2*n, n))/4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099045

/-- `(3*0^n+4^n*C(2*n, n))/4` -/
def P11385674932422720955.Spec : Prop :=
  ∀ n, P11385674932422720955.a n = (A099045 n : ℚ)

end A099045

/-! ## A099045.P6044770499427927853

`C(2*n, n)*ceil(4^(n-1))`
-/

namespace A099045.P6044770499427927853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * ⌈(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A099045.P6044770499427927853

namespace A099045

/-- `C(2*n, n)*ceil(4^(n-1))` -/
def P6044770499427927853.Spec : Prop :=
  ∀ n, P6044770499427927853.a n = A099045 n

end A099045

/-! ## A099045.P4441487344127903372

`ceil(4^n*C(2*n, n)/4)`
-/

namespace A099045.P4441487344127903372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n * Nat.choose (2 * n) n : ℚ) / 4⌉

end

end A099045.P4441487344127903372

namespace A099045

/-- `ceil(4^n*C(2*n, n)/4)` -/
def P4441487344127903372.Spec : Prop :=
  ∀ n, P4441487344127903372.a n = A099045 n

end A099045

/-! ## A099045.P1466546357587325917

`round(2^(n-1))²*C(2*n, n)`
-/

namespace A099045.P1466546357587325917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ 2 * (Nat.choose (2 * n) n : ℤ)

end

end A099045.P1466546357587325917

namespace A099045

/-- `round(2^(n-1))²*C(2*n, n)` -/
def P1466546357587325917.Spec : Prop :=
  ∀ n, P1466546357587325917.a n = A099045 n

end A099045

/-! ## A099045.P10268755454942531981

`(4-2/n)*4*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A099045.P10268755454942531981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 - 2 / (n : ℚ)) * (4 * a (n - 1))

end

end A099045.P10268755454942531981

namespace A099045

/-- `(4-2/n)*4*a(n-1)` -/
def P10268755454942531981.Spec : Prop :=
  ∀ n, P10268755454942531981.a n = (A099045 n : ℚ)

end A099045

/-! ## A099045.P3992282556002343150

`ceil(A098402(n)/2)`
-/

namespace A099045.P3992282556002343150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098402 n : ℚ) / 2⌉

end

end A099045.P3992282556002343150

namespace A099045

/-- `ceil(A098402(n)/2)` -/
def P3992282556002343150.Spec : Prop :=
  ∀ n, P3992282556002343150.a n = A099045 n

end A099045

/-! ## A099045.P10436709905423363867

`ceil(A098430(n)/4)`
-/

namespace A099045.P10436709905423363867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098430 n : ℚ) / 4⌉

end

end A099045.P10436709905423363867

namespace A099045

/-- `ceil(A098430(n)/4)` -/
def P10436709905423363867.Spec : Prop :=
  ∀ n, P10436709905423363867.a n = A099045 n

end A099045

/-! ## A099045.P16984011530239653618

`ceil(4^n/2)*A088218(n)`
-/

namespace A099045.P16984011530239653618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ * A088218 n

end

end A099045.P16984011530239653618

namespace A099045

/-- `ceil(4^n/2)*A088218(n)` -/
def P16984011530239653618.Spec : Prop :=
  ∀ n, P16984011530239653618.a n = A099045 n

end A099045

/-! ## A099045.P16486995020084521408

`ceil(2^(n-1))²*A000984(n)`
-/

namespace A099045.P16486995020084521408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2 * A000984 n

end

end A099045.P16486995020084521408

namespace A099045

/-- `ceil(2^(n-1))²*A000984(n)` -/
def P16486995020084521408.Spec : Prop :=
  ∀ n, P16486995020084521408.a n = A099045 n

end A099045

/-! ## A099045.P7035522572770860190

`A060899(A004273(n))`
-/

namespace A099045.P7035522572770860190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060899 (A004273 n).toNat

end

end A099045.P7035522572770860190

namespace A099045

/-- `A060899(A004273(n))` -/
def P7035522572770860190.Spec : Prop :=
  ∀ n, P7035522572770860190.a n = A099045 n

end A099045

/-!
# A099046: a(n) = (4*0^n + 5^n*binomial(2*n,n))/5.

The programs for A099046, the canonical program `A099046.P3265216960746419148` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099046 has offset 0).

The definition of A099046 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099046.P3265216960746419148

`(4*0^n+5^n*C(2*n, n))/5`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099046

/-- `(4*0^n+5^n*C(2*n, n))/5` -/
def P3265216960746419148.Spec : Prop :=
  ∀ n, P3265216960746419148.a n = (A099046 n : ℚ)

end A099046

/-! ## A099046.P10463117566622807127

`C(2*n, n)*ceil(5^(n-1))`
-/

namespace A099046.P10463117566622807127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * ⌈(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A099046.P10463117566622807127

namespace A099046

/-- `C(2*n, n)*ceil(5^(n-1))` -/
def P10463117566622807127.Spec : Prop :=
  ∀ n, P10463117566622807127.a n = A099046 n

end A099046

/-! ## A099046.P12107841847084645748

`5*(4-2/n)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A099046.P12107841847084645748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * ((4 - 2 / (n : ℚ)) * a (n - 1))

end

end A099046.P12107841847084645748

namespace A099046

/-- `5*(4-2/n)*a(n-1)` -/
def P12107841847084645748.Spec : Prop :=
  ∀ n, P12107841847084645748.a n = (A099046 n : ℚ)

end A099046

/-! ## A099046.P310653786044952252

`A001405(A004273(n))*A020699(n)`
-/

namespace A099046.P310653786044952252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A004273 n).toNat * A020699 n

end

end A099046.P310653786044952252

namespace A099046

/-- `A001405(A004273(n))*A020699(n)` -/
def P310653786044952252.Spec : Prop :=
  ∀ n, P310653786044952252.a n = A099046 n

end A099046

/-! ## A099046.P10789881935341554858

`A000984(n)*A074872(A053438(n))`
-/

namespace A099046.P10789881935341554858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A074872 (A053438 n).toNat

end

end A099046.P10789881935341554858

namespace A099046

/-- `A000984(n)*A074872(A053438(n))` -/
def P10789881935341554858.Spec : Prop :=
  ∀ n, P10789881935341554858.a n = A099046 n

end A099046

/-! ## A099046.P658611059792801886

`A000984(n)*A074872(A004275(n+1))`
-/

namespace A099046.P658611059792801886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A074872 (A004275 (n + 1)).toNat

end

end A099046.P658611059792801886

namespace A099046

/-- `A000984(n)*A074872(A004275(n+1))` -/
def P658611059792801886.Spec : Prop :=
  ∀ n, P658611059792801886.a n = A099046 n

end A099046

/-! ## A099046.P15281483827804065212

`A098615(A004273(n))*A126930(2*n)`
-/

namespace A099046.P15281483827804065212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098615 (A004273 n).toNat * A126930 (2 * n)

end

end A099046.P15281483827804065212

namespace A099046

/-- `A098615(A004273(n))*A126930(2*n)` -/
def P15281483827804065212.Spec : Prop :=
  ∀ n, P15281483827804065212.a n = A099046 n

end A099046

/-!
# A099047: Numbers n such that n-1 and n+1 are both composite.

The programs for A099047, the canonical program `A099047.P83096896092586081` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099047 has offset 1).

The definition of A099047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099047.P83096896092586081

`comp[A045718(n)-1]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099047

/-- `comp[A045718(n)-1]+1` -/
def P83096896092586081.Spec : Prop :=
  ∀ n, (P83096896092586081.a n : ℤ) = A099047 (n + 1)

theorem P83096896092586081.correct : P83096896092586081.Spec := by
  intro n
  simp only [A099047, Nat.add_sub_cancel]

end A099047

/-! ## A099047.P144400124177717393

`comp[A006530(n+1)-(1-and(2, n))]`
-/

namespace A099047.P144400124177717393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - (1 - (Nat.land 2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099047.P144400124177717393

namespace A099047

/-- `comp[A006530(n+1)-(1-and(2, n))]` -/
def P144400124177717393.Spec : Prop :=
  ∀ n, (P144400124177717393.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P10508901736951647750

`∪[A020735(n+1), A061673(n+1)]`
-/

namespace A099047.P10508901736951647750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P10508901736951647750

namespace A099047

/-- `∪[A020735(n+1), A061673(n+1)]` -/
def P10508901736951647750.Spec : Prop :=
  ∀ n, (P10508901736951647750.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P18096692102319520603

`∪[A020735(n+1), A079364(n+1)]`
-/

namespace A099047.P18096692102319520603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P18096692102319520603

namespace A099047

/-- `∪[A020735(n+1), A079364(n+1)]` -/
def P18096692102319520603.Spec : Prop :=
  ∀ n, (P18096692102319520603.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P17924048466794782439

`∩[A079696(n+1), A099049(n+1)]`
-/

namespace A099047.P17924048466794782439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P17924048466794782439

namespace A099047

/-- `∩[A079696(n+1), A099049(n+1)]` -/
def P17924048466794782439.Spec : Prop :=
  ∀ n, (P17924048466794782439.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P15732661658453227332

`∩[A002808(n+1)-1, A079696(n+1)]`
-/

namespace A099047.P15732661658453227332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P15732661658453227332

namespace A099047

/-- `∩[A002808(n+1)-1, A079696(n+1)]` -/
def P15732661658453227332.Spec : Prop :=
  ∀ n, (P15732661658453227332.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P13475336116615216313

`∩[A018252(n+1)-1, A079696(n+1)]`
-/

namespace A099047.P13475336116615216313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P13475336116615216313

namespace A099047

/-- `∩[A018252(n+1)-1, A079696(n+1)]` -/
def P13475336116615216313.Spec : Prop :=
  ∀ n, (P13475336116615216313.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P6986181213024439634

`∩[A079696(n+1), A118742(n)]`
-/

namespace A099047.P6986181213024439634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P6986181213024439634

namespace A099047

/-- `∩[A079696(n+1), A118742(n)]` -/
def P6986181213024439634.Spec : Prop :=
  ∀ n, (P6986181213024439634.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P15428804466638900023

`∩[A099049(n+1), A118742(n)]`
-/

namespace A099047.P15428804466638900023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P15428804466638900023

namespace A099047

/-- `∩[A099049(n+1), A118742(n)]` -/
def P15428804466638900023.Spec : Prop :=
  ∀ n, (P15428804466638900023.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P15566901954223333646

`∩[A072668(n+1), A079696(n+1)]`
-/

namespace A099047.P15566901954223333646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P15566901954223333646

namespace A099047

/-- `∩[A072668(n+1), A079696(n+1)]` -/
def P15566901954223333646.Spec : Prop :=
  ∀ n, (P15566901954223333646.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P7333129300231744671

`∩[A072668(n+1), A099049(n+1)]`
-/

namespace A099047.P7333129300231744671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P7333129300231744671

namespace A099047

/-- `∩[A072668(n+1), A099049(n+1)]` -/
def P7333129300231744671.Spec : Prop :=
  ∀ n, (P7333129300231744671.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P5319207463947352210

`∩[A018252(n+1)+1, A072668(n+1)]`
-/

namespace A099047.P5319207463947352210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P5319207463947352210

namespace A099047

/-- `∩[A018252(n+1)+1, A072668(n+1)]` -/
def P5319207463947352210.Spec : Prop :=
  ∀ n, (P5319207463947352210.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P9713537667374387536

`∩[A056653(n+1)-1, A079696(n+1)]`
-/

namespace A099047.P9713537667374387536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P9713537667374387536

namespace A099047

/-- `∩[A056653(n+1)-1, A079696(n+1)]` -/
def P9713537667374387536.Spec : Prop :=
  ∀ n, (P9713537667374387536.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P17777909847116639572

`∩[A122825(n+1), A118742(n)]`
-/

namespace A099047.P17777909847116639572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P17777909847116639572

namespace A099047

/-- `∩[A122825(n+1), A118742(n)]` -/
def P17777909847116639572.Spec : Prop :=
  ∀ n, (P17777909847116639572.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P2986480328015840709

`∩[A060462(n+1), A079696(n+1)]`
-/

namespace A099047.P2986480328015840709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P2986480328015840709

namespace A099047

/-- `∩[A060462(n+1), A079696(n+1)]` -/
def P2986480328015840709.Spec : Prop :=
  ∀ n, (P2986480328015840709.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P2688640963980078582

`∩[A060462(n+1), A099049(n+1)]`
-/

namespace A099047.P2688640963980078582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P2688640963980078582

namespace A099047

/-- `∩[A060462(n+1), A099049(n+1)]` -/
def P2688640963980078582.Spec : Prop :=
  ∀ n, (P2688640963980078582.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P8671252294742455044

`∩[A072668(n+1), A122825(n+1)]`
-/

namespace A099047.P8671252294742455044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P8671252294742455044

namespace A099047

/-- `∩[A072668(n+1), A122825(n+1)]` -/
def P8671252294742455044.Spec : Prop :=
  ∀ n, (P8671252294742455044.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P5623134231927699472

`∩[A079696(n+1), A166460(n+1)]`
-/

namespace A099047.P5623134231927699472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P5623134231927699472

namespace A099047

/-- `∩[A079696(n+1), A166460(n+1)]` -/
def P5623134231927699472.Spec : Prop :=
  ∀ n, (P5623134231927699472.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P7109010088054196494

`∩[A065090(n+1)-1, A079696(n+1)]`
-/

namespace A099047.P7109010088054196494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P7109010088054196494

namespace A099047

/-- `∩[A065090(n+1)-1, A079696(n+1)]` -/
def P7109010088054196494.Spec : Prop :=
  ∀ n, (P7109010088054196494.a n : ℤ) = A099047 (n + 1)

end A099047

/-! ## A099047.P4446963938421930667

`∩[A099049(n+1), A100318(n+1)]`
-/

namespace A099047.P4446963938421930667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099047.P4446963938421930667

namespace A099047

/-- `∩[A099049(n+1), A100318(n+1)]` -/
def P4446963938421930667.Spec : Prop :=
  ∀ n, (P4446963938421930667.a n : ℤ) = A099047 (n + 1)

end A099047

/-!
# A099048: Number of 5 X n 0-1 matrices avoiding simultaneously the right angled numbered polyomino patterns (ranpp) (00;1), (01;0), (10;0) and (11;0).

The programs for A099048, the canonical program `A099048.P7310262579519558884` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099048 has offset 1).

The definition of A099048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099048.P7310262579519558884

`18*(n+1)+14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099048

/-- `18*(n+1)+14` -/
def P7310262579519558884.Spec : Prop :=
  ∀ n, (P7310262579519558884.a n : ℤ) = A099048 (n + 1)

theorem P7310262579519558884.correct : P7310262579519558884.Spec := by
  intro n
  simp only [A099048, Nat.add_sub_cancel]

end A099048

/-!
# A099049: Numbers n such that n-1 and n+1 are both prime or both composite.

The programs for A099049, the canonical program `A099049.P5479479623844878701` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099049 has offset 1).

The definition of A099049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099049.P2250674211381098762

`comp[A100317(n+1)-1]+1`
-/

namespace A099049.P2250674211381098762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A099049.P2250674211381098762

namespace A099049

/-- `comp[A100317(n+1)-1]+1` -/
def P2250674211381098762.Spec : Prop :=
  ∀ n, (P2250674211381098762.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P11790005480887606756

`eq[A107393(n+2), A107393(n)]+1`
-/

namespace A099049.P11790005480887606756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A099049.P11790005480887606756

namespace A099049

/-- `eq[A107393(n+2), A107393(n)]+1` -/
def P11790005480887606756.Spec : Prop :=
  ∀ n, (P11790005480887606756.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P7348028724300438706

`∪[A014574(n+1), A099047(n+1)]`
-/

namespace A099049.P7348028724300438706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P7348028724300438706

namespace A099049

/-- `∪[A014574(n+1), A099047(n+1)]` -/
def P7348028724300438706.Spec : Prop :=
  ∀ n, (P7348028724300438706.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P5479479623844878701

`∪[A024675(n+1), A099047(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A099049

/-- `∪[A024675(n+1), A099047(n+1)]` -/
def P5479479623844878701.Spec : Prop :=
  ∀ n, (P5479479623844878701.a n : ℤ) = A099049 (n + 1)

theorem P5479479623844878701.correct : P5479479623844878701.Spec := by
  intro n
  simp only [A099049, Nat.add_sub_cancel]

end A099049

/-! ## A099049.P7627788416458502901

`∪[A056853(n+1), A099047(n+1)]`
-/

namespace A099049.P7627788416458502901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P7627788416458502901

namespace A099049

/-- `∪[A056853(n+1), A099047(n+1)]` -/
def P7627788416458502901.Spec : Prop :=
  ∀ n, (P7627788416458502901.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P12921270559289544873

`∪[A061715(n+1), A099047(n+1)]`
-/

namespace A099049.P12921270559289544873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P12921270559289544873

namespace A099049

/-- `∪[A061715(n+1), A099047(n+1)]` -/
def P12921270559289544873.Spec : Prop :=
  ∀ n, (P12921270559289544873.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P4891541700687699254

`∪[A067888(n+1), A099047(n+1)]`
-/

namespace A099049.P4891541700687699254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P4891541700687699254

namespace A099049

/-- `∪[A067888(n+1), A099047(n+1)]` -/
def P4891541700687699254.Spec : Prop :=
  ∀ n, (P4891541700687699254.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P14770231103490976974

`∪[A072568(n+1), A099047(n+1)]`
-/

namespace A099049.P14770231103490976974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P14770231103490976974

namespace A099049

/-- `∪[A072568(n+1), A099047(n+1)]` -/
def P14770231103490976974.Spec : Prop :=
  ∀ n, (P14770231103490976974.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P784092486051547256

`∪[A072570(n+1), A099047(n+1)]`
-/

namespace A099049.P784092486051547256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P784092486051547256

namespace A099049

/-- `∪[A072570(n+1), A099047(n+1)]` -/
def P784092486051547256.Spec : Prop :=
  ∀ n, (P784092486051547256.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P6004505512174369093

`∪[A074997(n+1), A099047(n+1)]`
-/

namespace A099049.P6004505512174369093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P6004505512174369093

namespace A099049

/-- `∪[A074997(n+1), A099047(n+1)]` -/
def P6004505512174369093.Spec : Prop :=
  ∀ n, (P6004505512174369093.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P1990953172830567185

`∪[A074998(n+1), A099047(n+1)]`
-/

namespace A099049.P1990953172830567185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P1990953172830567185

namespace A099049

/-- `∪[A074998(n+1), A099047(n+1)]` -/
def P1990953172830567185.Spec : Prop :=
  ∀ n, (P1990953172830567185.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P12621248822384970443

`∪[A099047(n+1), A145025(n+1)]`
-/

namespace A099049.P12621248822384970443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P12621248822384970443

namespace A099049

/-- `∪[A099047(n+1), A145025(n+1)]` -/
def P12621248822384970443.Spec : Prop :=
  ∀ n, (P12621248822384970443.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P11900401573778582250

`∪[A099047(n+1), A217259(n+1)]`
-/

namespace A099049.P11900401573778582250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P11900401573778582250

namespace A099049

/-- `∪[A099047(n+1), A217259(n+1)]` -/
def P11900401573778582250.Spec : Prop :=
  ∀ n, (P11900401573778582250.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P6171126028476696257

`∪[A099047(n+1), A242040(n+1)]`
-/

namespace A099049.P6171126028476696257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A099049.P6171126028476696257

namespace A099049

/-- `∪[A099047(n+1), A242040(n+1)]` -/
def P6171126028476696257.Spec : Prop :=
  ∀ n, (P6171126028476696257.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P4375657851716437828

`lt[1, A343730(2*(n+1))]+1`
-/

namespace A099049.P4375657851716437828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A099049.P4375657851716437828

namespace A099049

/-- `lt[1, A343730(2*(n+1))]+1` -/
def P4375657851716437828.Spec : Prop :=
  ∀ n, (P4375657851716437828.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P5144118511525267964

`lt[2, A343730(A004273(n)+1)]`
-/

namespace A099049.P5144118511525267964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (A004273 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099049.P5144118511525267964

namespace A099049

/-- `lt[2, A343730(A004273(n)+1)]` -/
def P5144118511525267964.Spec : Prop :=
  ∀ n, (P5144118511525267964.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P5918320499325864363

`lt[1, A343730(2*A028310(n))]`
-/

namespace A099049.P5918320499325864363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (2 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099049.P5918320499325864363

namespace A099049

/-- `lt[1, A343730(2*A028310(n))]` -/
def P5918320499325864363.Spec : Prop :=
  ∀ n, (P5918320499325864363.a n : ℤ) = A099049 (n + 1)

end A099049

/-! ## A099049.P10354717437897439770

`lt[2, A343730(A028310(n)+n)]`
-/

namespace A099049.P10354717437897439770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343730 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099049.P10354717437897439770

namespace A099049

/-- `lt[2, A343730(A028310(n)+n)]` -/
def P10354717437897439770.Spec : Prop :=
  ∀ n, (P10354717437897439770.a n : ℤ) = A099049 (n + 1)

end A099049

/-!
# A099050: a(1)=1; for n>=2, a(n)=sum(1<=i<=j<=n-1, gcd(a(i),a(j))).

The programs for A099050, there is no canonical definition to state claims against.
-/

/-! ## A099050.P17595244219429952484

`∑[A055086(A149367(n)-n)]`
-/

namespace A099050.P17595244219429952484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A149367 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099050.P17595244219429952484

/-! ## A099050.P8769757976913878849

`A354110(A000699(n))+A330457(n)`
-/

namespace A099050.P8769757976913878849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354110 (A000699 n).toNat + A330457 n

end

end A099050.P8769757976913878849

/-! ## A099050.P3691716942423665132

`A005041(A150416(n)-A091596(n))`
-/

namespace A099050.P3691716942423665132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A150416 n - A091596 n).toNat

end

end A099050.P3691716942423665132

/-! ## A099050.P7078927756445091415

`A100938(n)-A102572(A092688(n))`
-/

namespace A099050.P7078927756445091415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100938 n - A102572 (A092688 n).toNat

end

end A099050.P7078927756445091415

/-!
# A099051: p*2^p - 1 where p is prime.

The programs for A099051, the canonical program `A099051.P6631131880264682840` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099051 has offset 1).

The definition of A099051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099051.P6631131880264682840

`A000040(n+1)*2^A000040(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099051

/-- `A000040(n+1)*2^A000040(n+1)-1` -/
def P6631131880264682840.Spec : Prop :=
  ∀ n, P6631131880264682840.a n = (A099051 (n + 1) : ℚ)

end A099051

/-! ## A099051.P13878214645111829988

`A003261(p?[comp[n²]])`
-/

namespace A099051.P13878214645111829988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A099051.P13878214645111829988

namespace A099051

/-- `A003261(p?[comp[n²]])` -/
def P13878214645111829988.Spec : Prop :=
  ∀ n, P13878214645111829988.a n = A099051 (n + 1)

end A099051

/-! ## A099051.P15816537324848912528

`A100042(n+1)-1`
-/

namespace A099051.P15816537324848912528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100042 (n + 1) - 1

end

end A099051.P15816537324848912528

namespace A099051

/-- `A100042(n+1)-1` -/
def P15816537324848912528.Spec : Prop :=
  ∀ n, P15816537324848912528.a n = A099051 (n + 1)

end A099051

/-! ## A099051.P7802422765456071835

`A098773(n+1)-2`
-/

namespace A099051.P7802422765456071835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098773 (n + 1) - 2

end

end A099051.P7802422765456071835

namespace A099051

/-- `A098773(n+1)-2` -/
def P7802422765456071835.Spec : Prop :=
  ∀ n, P7802422765456071835.a n = A099051 (n + 1)

end A099051

/-! ## A099051.P4580174712860368052

`2*A299795(n+1)-1`
-/

namespace A099051.P4580174712860368052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299795 (n + 1) - 1

end

end A099051.P4580174712860368052

namespace A099051

/-- `2*A299795(n+1)-1` -/
def P4580174712860368052.Spec : Prop :=
  ∀ n, P4580174712860368052.a n = A099051 (n + 1)

end A099051

/-! ## A099051.P1920894885816331136

`∑{p}[A000040(n+1), #*2^#]-1`
-/

namespace A099051.P1920894885816331136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * 2 ^ p : ℕ) : ℤ) - 1

end

end A099051.P1920894885816331136

namespace A099051

/-- `∑{p}[A000040(n+1), #*2^#]-1` -/
def P1920894885816331136.Spec : Prop :=
  ∀ n, P1920894885816331136.a n = A099051 (n + 1)

end A099051

/-! ## A099051.P388738888026579002

`record[(n+2)*2^A006530(n+2)]-1`
-/

namespace A099051.P388738888026579002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A006530 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A099051.P388738888026579002

namespace A099051

/-- `record[(n+2)*2^A006530(n+2)]-1` -/
def P388738888026579002.Spec : Prop :=
  ∀ n, P388738888026579002.a n = (A099051 (n + 1) : ℚ)

end A099051

/-! ## A099051.P4290397055297865280

`record[(n+2)*2^A020639(n+2)]-1`
-/

namespace A099051.P4290397055297865280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A020639 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A099051.P4290397055297865280

namespace A099051

/-- `record[(n+2)*2^A020639(n+2)]-1` -/
def P4290397055297865280.Spec : Prop :=
  ∀ n, P4290397055297865280.a n = (A099051 (n + 1) : ℚ)

end A099051

/-! ## A099051.P18421367561932791314

`A003261(A000040(n+1))`
-/

namespace A099051.P18421367561932791314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (A000040 (n + 1)).toNat

end

end A099051.P18421367561932791314

namespace A099051

/-- `A003261(A000040(n+1))` -/
def P18421367561932791314.Spec : Prop :=
  ∀ n, P18421367561932791314.a n = A099051 (n + 1)

end A099051

/-! ## A099051.P12081080325224486747

`A003261(record[A006530(n+2)])`
-/

namespace A099051.P12081080325224486747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A099051.P12081080325224486747

namespace A099051

/-- `A003261(record[A006530(n+2)])` -/
def P12081080325224486747.Spec : Prop :=
  ∀ n, P12081080325224486747.a n = A099051 (n + 1)

end A099051

/-!
# A099052: All palindromes of length greater than 1 in the decimal expansion of e, ordered by the ending position of the palindrome. Multiple terms ending at the same position are ordered by the starting position of the palindrome.

The programs for A099052, there is no canonical definition to state claims against.
-/

/-! ## A099052.P6347550254621208159

`A226536(A175213(n²))`
-/

namespace A099052.P6347550254621208159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226536 (A175213 (n ^ 2)).toNat

end

end A099052.P6347550254621208159

/-! ## A099052.P8462266229536668978

`A226536(A090110(n+1))`
-/

namespace A099052.P8462266229536668978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226536 (A090110 (n + 1)).toNat

end

end A099052.P8462266229536668978

/-! ## A099052.P15863798084048759809

`A010051(A089637(n))*A226536(n+1)`
-/

namespace A099052.P15863798084048759809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A089637 n).toNat * A226536 (n + 1)

end

end A099052.P15863798084048759809

/-! ## A099052.P1699929213767542124

`A057427(A370585(n))*A226536(n+1)`
-/

namespace A099052.P1699929213767542124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A370585 n).toNat * A226536 (n + 1)

end

end A099052.P1699929213767542124

/-! ## A099052.P7900305888553111865

`A226536(n+1)+A061397(A064218(2*n))`
-/

namespace A099052.P7900305888553111865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226536 (n + 1) + A061397 (A064218 (2 * n)).toNat

end

end A099052.P7900305888553111865

/-!
# A099053: a(n) is the smallest number of 1s and 2s that are needed to construct n using any number of +, -, *, ^ signs but not allowing concatenation of digits.

The programs for A099053, there is no canonical definition to state claims against.
-/

/-! ## A099053.P12638264239070797716

`A140361(A077342(n+1))+1`
-/

namespace A099053.P12638264239070797716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (A077342 (n + 1)).toNat + 1

end

end A099053.P12638264239070797716

/-! ## A099053.P1194926074495446212

`A140361(A242474(n+1))+1`
-/

namespace A099053.P1194926074495446212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140361 (A242474 (n + 1)).toNat + 1

end

end A099053.P1194926074495446212

/-! ## A099053.P16527806146437619676

`A173419(n+1)+A000007(A001610(n))`
-/

namespace A099053.P16527806146437619676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (n + 1) + A000007 (A001610 n).toNat

end

end A099053.P16527806146437619676

/-! ## A099053.P18403833409173582109

`A173419(n+1)+A121262(A001190(n))`
-/

namespace A099053.P18403833409173582109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (n + 1) + A121262 (A001190 n).toNat

end

end A099053.P18403833409173582109

/-! ## A099053.P17031278365174387421

`A173419(n+1)+A000007(A236559(n))`
-/

namespace A099053.P17031278365174387421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173419 (n + 1) + A000007 (A236559 n).toNat

end

end A099053.P17031278365174387421

/-!
# A099054: 

The programs for A099054, there is no canonical definition to state claims against.
-/

/-! ## A099054.P16203070295448468632

`A219762(n+1)+1`
-/

namespace A099054.P16203070295448468632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219762 (n + 1) + 1

end

end A099054.P16203070295448468632

/-! ## A099054.P9233691537031662477

`∑[A241418(abs(1-n))]`
-/

namespace A099054.P9233691537031662477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099054.P9233691537031662477

/-! ## A099054.P12478179324755342621

`A241418(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A099054.P12478179324755342621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241418 (n - 1) + a (n - 1)

end

end A099054.P12478179324755342621

/-! ## A099054.P12377126330423360850

`∑[A241418(n)]+1-A241418(n)`
-/

namespace A099054.P12377126330423360850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A241418 n)

end

end A099054.P12377126330423360850

/-! ## A099054.P12195827020066203889

`A028242(2*(∑[A241418(n)]-A241418(n)))`
-/

namespace A099054.P12195827020066203889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n)).toNat

end

end A099054.P12195827020066203889

/-! ## A099054.P16966596128825961003

`A070939(2*(∑[A241418(n)]-A241418(n)))`
-/

namespace A099054.P16966596128825961003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n)).toNat

end

end A099054.P16966596128825961003

/-! ## A099054.P2273318125834573950

`A007318(4*(∑[A241418(n)]-A241418(n)))`
-/

namespace A099054.P2273318125834573950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (4 * (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n)).toNat

end

end A099054.P2273318125834573950

/-! ## A099054.P16046529120543465448

`A000005(2^(∑[A241418(n)]-A241418(n)))`
-/

namespace A099054.P16046529120543465448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - A241418 n : ℤ))).toNat

end

end A099054.P16046529120543465448

/-! ## A099054.P16768334504226988122

`A026600(A128173(n)+1)`
-/

namespace A099054.P16768334504226988122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (A128173 n + 1).toNat

end

end A099054.P16768334504226988122

/-! ## A099054.P8479502740567832447

`ceil(abs(tan(A100337(n+1))))`
-/

namespace A099054.P8479502740567832447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.tan (A100337 (n + 1) : ℝ)|⌉

end

end A099054.P8479502740567832447

/-! ## A099054.P18282016804188648928

`ceil(abs(tan(A100336(n+1)+1)))`
-/

namespace A099054.P18282016804188648928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.tan (A100336 (n + 1) + 1 : ℝ)|⌉

end

end A099054.P18282016804188648928

/-! ## A099054.P5227799646982401596

`xor(A100336(n+1), A100337(n+1))`
-/

namespace A099054.P5227799646982401596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100336 (n + 1)) (A100337 (n + 1))

end

end A099054.P5227799646982401596

/-!
# A099055: A bisection of A054519.

The programs for A099055, the canonical program `A099055.P11362990028236912789` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099055 has offset 0).

The definition of A099055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099055.P5953216928281254346

`A062550(n)+1`
-/

namespace A099055.P5953216928281254346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 n + 1

end

end A099055.P5953216928281254346

namespace A099055

/-- `A062550(n)+1` -/
def P5953216928281254346.Spec : Prop :=
  ∀ n, P5953216928281254346.a n = A099055 n

end A099055

/-! ## A099055.P16892522556945231550

`A006218(2*n)+1`
-/

namespace A099055.P16892522556945231550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * n) + 1

end

end A099055.P16892522556945231550

namespace A099055

/-- `A006218(2*n)+1` -/
def P16892522556945231550.Spec : Prop :=
  ∀ n, P16892522556945231550.a n = A099055 n

end A099055

/-! ## A099055.P8767544327190157112

`A339217(n)+Δ[n²]`
-/

namespace A099055.P8767544327190157112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339217 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099055.P8767544327190157112

namespace A099055

/-- `A339217(n)+Δ[n²]` -/
def P8767544327190157112.Spec : Prop :=
  ∀ n, P8767544327190157112.a n = A099055 n

end A099055

/-! ## A099055.P17781982636320184568

`record[A006218(and(3, n)+n)+1]`
-/

namespace A099055.P17781982636320184568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (Nat.land 3 n + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099055.P17781982636320184568

namespace A099055

/-- `record[A006218(and(3, n)+n)+1]` -/
def P17781982636320184568.Spec : Prop :=
  ∀ n, P17781982636320184568.a n = A099055 n

end A099055

/-! ## A099055.P3691875943780253036

`record[A006218(n)-lcm(2, n)+n+1]`
-/

namespace A099055.P3691875943780253036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (Nat.lcm 2 n : ℤ) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099055.P3691875943780253036

namespace A099055

/-- `record[A006218(n)-lcm(2, n)+n+1]` -/
def P3691875943780253036.Spec : Prop :=
  ∀ n, P3691875943780253036.a n = A099055 n

end A099055

/-! ## A099055.P17828474856227910230

`A056549(n)+A054519(n)`
-/

namespace A099055.P17828474856227910230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056549 n + A054519 n

end

end A099055.P17828474856227910230

namespace A099055

/-- `A056549(n)+A054519(n)` -/
def P17828474856227910230.Spec : Prop :=
  ∀ n, P17828474856227910230.a n = A099055 n

end A099055

/-! ## A099055.P2950779837808759659

`A099056(n)-A099774(n+1)`
-/

namespace A099055.P2950779837808759659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - A099774 (n + 1)

end

end A099055.P2950779837808759659

namespace A099055

/-- `A099056(n)-A099774(n+1)` -/
def P2950779837808759659.Spec : Prop :=
  ∀ n, P2950779837808759659.a n = A099055 n

theorem P2950779837808759659.correct : P2950779837808759659.Spec := by
  intro n
  simp only [A099055, Nat.add_sub_cancel, A099055.P2950779837808759659.a, A099055.P11362990028236912789.f1, A099055.P11362990028236912789.a, A099056, A099056.P6861540062732746160.a, A099774, A099774.P6953595514890795505.a, A274010, A274010.P14654792066424409895.a, A000005, A000005.P16091521709108585461.a, A028310, A028310.P18130301328277559831.a, A092338, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099055

/-! ## A099055.P1792256372417342146

`A099056(n)-A000005(2*n+1)`
-/

namespace A099055.P1792256372417342146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099056 n - A000005 (2 * n + 1)

end

end A099055.P1792256372417342146

namespace A099055

/-- `A099056(n)-A000005(2*n+1)` -/
def P1792256372417342146.Spec : Prop :=
  ∀ n, P1792256372417342146.a n = A099055 n

theorem P1792256372417342146.correct : P1792256372417342146.Spec := by
  intro n
  simp only [A099055, Nat.add_sub_cancel, A099055.P1792256372417342146.a, A099055.P11362990028236912789.f1, A099055.P11362990028236912789.a, A000005, A000005.P16091521709108585461.a, A099056, A099056.P6861540062732746160.a, A274010, A274010.P14654792066424409895.a, A028310, A028310.P18130301328277559831.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A092338, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, A099774, A099774.P6953595514890795505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099055

/-! ## A099055.P2252679641021129604

`A057427(n)+A006218(A004277(n))`
-/

namespace A099055.P2252679641021129604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A006218 (A004277 n).toNat

end

end A099055.P2252679641021129604

namespace A099055

/-- `A057427(n)+A006218(A004277(n))` -/
def P2252679641021129604.Spec : Prop :=
  ∀ n, P2252679641021129604.a n = A099055 n

end A099055

/-! ## A099055.P12084827408562308080

`A054519(2*n)`
-/

namespace A099055.P12084827408562308080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (2 * n)

end

end A099055.P12084827408562308080

namespace A099055

/-- `A054519(2*n)` -/
def P12084827408562308080.Spec : Prop :=
  ∀ n, P12084827408562308080.a n = A099055 n

end A099055

/-! ## A099055.P2858890353614423688

`record[A054519(and(n, n+1))]`
-/

namespace A099055.P2858890353614423688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099055.P2858890353614423688

namespace A099055

/-- `record[A054519(and(n, n+1))]` -/
def P2858890353614423688.Spec : Prop :=
  ∀ n, P2858890353614423688.a n = A099055 n

end A099055

/-! ## A099055.P11362990028236912789

`∑[A274010(2*n)]+2*n+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099055

/-- `∑[A274010(2*n)]+2*n+1` -/
def P11362990028236912789.Spec : Prop :=
  ∀ n, P11362990028236912789.a n = A099055 n

theorem P11362990028236912789.correct : P11362990028236912789.Spec := by
  intro n
  simp only [A099055]

end A099055

/-! ## A099055.P634279054749122387

`A325459(2*n)+A008574(n)`
-/

namespace A099055.P634279054749122387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (2 * n) + A008574 n

end

end A099055.P634279054749122387

namespace A099055

/-- `A325459(2*n)+A008574(n)` -/
def P634279054749122387.Spec : Prop :=
  ∀ n, P634279054749122387.a n = A099055 n

end A099055

/-! ## A099055.P170054210667061581

`A132106(2*n)-A000196(2*n)`
-/

namespace A099055.P170054210667061581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132106 (2 * n) - A000196 (2 * n)

end

end A099055.P170054210667061581

namespace A099055

/-- `A132106(2*n)-A000196(2*n)` -/
def P170054210667061581.Spec : Prop :=
  ∀ n, P170054210667061581.a n = A099055 n

end A099055

/-! ## A099055.P5149953483968304974

`record[A054519(n)/(1-A020639(n+2))²]`
-/

namespace A099055.P5149953483968304974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054519 n : ℚ) / ((1 - A020639 (n + 2)) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099055.P5149953483968304974

namespace A099055

/-- `record[A054519(n)/(1-A020639(n+2))²]` -/
def P5149953483968304974.Spec : Prop :=
  ∀ n, P5149953483968304974.a n = (A099055 n : ℚ)

end A099055

/-! ## A099055.P4027732061672623425

`A350102(Δ[n²])-1`
-/

namespace A099055.P4027732061672623425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A099055.P4027732061672623425

namespace A099055

/-- `A350102(Δ[n²])-1` -/
def P4027732061672623425.Spec : Prop :=
  ∀ n, P4027732061672623425.a n = A099055 n

end A099055

/-! ## A099055.P8570543382892982549

`record[A006590(n+1)-lcm(2, n)]`
-/

namespace A099055.P8570543382892982549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099055.P8570543382892982549

namespace A099055

/-- `record[A006590(n+1)-lcm(2, n)]` -/
def P8570543382892982549.Spec : Prop :=
  ∀ n, P8570543382892982549.a n = A099055 n

end A099055

/-! ## A099055.P8804189428397183395

`A006590(2*n+1)-2*n`
-/

namespace A099055.P8804189428397183395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (2 * n + 1) - (2 * n : ℤ)

end

end A099055.P8804189428397183395

namespace A099055

/-- `A006590(2*n+1)-2*n` -/
def P8804189428397183395.Spec : Prop :=
  ∀ n, P8804189428397183395.a n = A099055 n

end A099055

/-! ## A099055.P13506488591107825937

`A327326(2*n)+A005187(2*n+1)`
-/

namespace A099055.P13506488591107825937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327326 (2 * n) + A005187 (2 * n + 1)

end

end A099055.P13506488591107825937

namespace A099055

/-- `A327326(2*n)+A005187(2*n+1)` -/
def P13506488591107825937.Spec : Prop :=
  ∀ n, P13506488591107825937.a n = A099055 n

end A099055

/-! ## A099055.P9843701445749740747

`A389737(2*n+1)-A389737(2*n)`
-/

namespace A099055.P9843701445749740747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389737 (2 * n + 1) - A389737 (2 * n)

end

end A099055.P9843701445749740747

namespace A099055

/-- `A389737(2*n+1)-A389737(2*n)` -/
def P9843701445749740747.Spec : Prop :=
  ∀ n, P9843701445749740747.a n = A099055 n

end A099055

/-!
# A099056: A bisection of A054519.

The programs for A099056, the canonical program `A099056.P6861540062732746160` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099056 has offset 0).

The definition of A099056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099056.P11280411584312483141

`A006218(Δ[n²])+1`
-/

namespace A099056.P11280411584312483141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099056.P11280411584312483141

namespace A099056

/-- `A006218(Δ[n²])+1` -/
def P11280411584312483141.Spec : Prop :=
  ∀ n, P11280411584312483141.a n = A099056 n

end A099056

/-! ## A099056.P17026492921775863890

`1+A006218(2*n+1)`
-/

namespace A099056.P17026492921775863890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A006218 (2 * n + 1)

end

end A099056.P17026492921775863890

namespace A099056

/-- `1+A006218(2*n+1)` -/
def P17026492921775863890.Spec : Prop :=
  ∀ n, P17026492921775863890.a n = A099056 n

end A099056

/-! ## A099056.P6861540062732746160

`A099774(n+1)+A099055(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099056

/-- `A099774(n+1)+A099055(n)` -/
def P6861540062732746160.Spec : Prop :=
  ∀ n, P6861540062732746160.a n = A099056 n

theorem P6861540062732746160.correct : P6861540062732746160.Spec := by
  intro n
  simp only [A099056]

end A099056

/-! ## A099056.P11141381717288366554

`A000027(A006218(n+1+n)+1)`
-/

namespace A099056.P11141381717288366554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A006218 (n + 1 + n) + 1).toNat

end

end A099056.P11141381717288366554

namespace A099056

/-- `A000027(A006218(n+1+n)+1)` -/
def P11141381717288366554.Spec : Prop :=
  ∀ n, P11141381717288366554.a n = A099056 n

end A099056

/-! ## A099056.P9838802721975932198

`A006591(n+1)+A006590(n+1)`
-/

namespace A099056.P9838802721975932198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) + A006590 (n + 1)

end

end A099056.P9838802721975932198

namespace A099056

/-- `A006591(n+1)+A006590(n+1)` -/
def P9838802721975932198.Spec : Prop :=
  ∀ n, P9838802721975932198.a n = A099056 n

end A099056

/-! ## A099056.P6094041010875648513

`A099055(n)+A000005(2*n+1)`
-/

namespace A099056.P6094041010875648513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099055 n + A000005 (2 * n + 1)

end

end A099056.P6094041010875648513

namespace A099056

/-- `A099055(n)+A000005(2*n+1)` -/
def P6094041010875648513.Spec : Prop :=
  ∀ n, P6094041010875648513.a n = A099056 n

theorem P6094041010875648513.correct : P6094041010875648513.Spec := by
  intro n
  simp only [A099056, Nat.add_sub_cancel, A099056.P6094041010875648513.a, A099056.P6861540062732746160.a, A000005, A000005.P16091521709108585461.a, A099055, A099055.P11362990028236912789.f1, A099055.P11362990028236912789.a, A099774, A099774.P6953595514890795505.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A274010, A274010.P14654792066424409895.a, A028310, A028310.P18130301328277559831.a, A092338, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A099056

/-! ## A099056.P12212010077276665839

`A006591(n+1)+A054519(n)+n`
-/

namespace A099056.P12212010077276665839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006591 (n + 1) + (A054519 n + (n : ℤ))

end

end A099056.P12212010077276665839

namespace A099056

/-- `A006591(n+1)+A054519(n)+n` -/
def P12212010077276665839.Spec : Prop :=
  ∀ n, P12212010077276665839.a n = A099056 n

end A099056

/-! ## A099056.P1461207882326315747

`A000005(2*n+1)+A000005(2*n)+a(n-1)` with `a(0)=2`
-/

namespace A099056.P1461207882326315747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000005 (2 * n + 1) + (A000005 (2 * n) + a (n - 1))

end

end A099056.P1461207882326315747

namespace A099056

/-- `A000005(2*n+1)+A000005(2*n)+a(n-1)` -/
def P1461207882326315747.Spec : Prop :=
  ∀ n, P1461207882326315747.a n = A099056 n

end A099056

/-! ## A099056.P5967438589420006975

`∑[A000005(2*n+1)+A000005(A004275(n+1))]`
-/

namespace A099056.P5967438589420006975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) + A000005 (A004275 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099056.P5967438589420006975

namespace A099056

/-- `∑[A000005(2*n+1)+A000005(A004275(n+1))]` -/
def P5967438589420006975.Spec : Prop :=
  ∀ n, P5967438589420006975.a n = A099056 n

end A099056

/-! ## A099056.P7400218214342238824

`∑[A000005(2*n+1)+A000005(A092535(n+1))]`
-/

namespace A099056.P7400218214342238824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) + A000005 (A092535 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099056.P7400218214342238824

namespace A099056

/-- `∑[A000005(2*n+1)+A000005(A092535(n+1))]` -/
def P7400218214342238824.Spec : Prop :=
  ∀ n, P7400218214342238824.a n = A099056 n

end A099056

/-! ## A099056.P7299640665235921591

`A054519(2*n)+A000005(2*n+1)`
-/

namespace A099056.P7299640665235921591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (2 * n) + A000005 (2 * n + 1)

end

end A099056.P7299640665235921591

namespace A099056

/-- `A054519(2*n)+A000005(2*n+1)` -/
def P7299640665235921591.Spec : Prop :=
  ∀ n, P7299640665235921591.a n = A099056 n

end A099056

/-! ## A099056.P16012584350169266103

`A054519(Δ[n²])`
-/

namespace A099056.P16012584350169266103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099056.P16012584350169266103

namespace A099056

/-- `A054519(Δ[n²])` -/
def P16012584350169266103.Spec : Prop :=
  ∀ n, P16012584350169266103.a n = A099056 n

end A099056

/-! ## A099056.P6794630867205083838

`A077597(2*n)+2`
-/

namespace A099056.P6794630867205083838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077597 (2 * n) + 2

end

end A099056.P6794630867205083838

namespace A099056

/-- `A077597(2*n)+2` -/
def P6794630867205083838.Spec : Prop :=
  ∀ n, P6794630867205083838.a n = A099056 n

end A099056

/-! ## A099056.P7525272254177067884

`A350102(2*(n+1))-1`
-/

namespace A099056.P7525272254177067884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (2 * (n + 1)) - 1

end

end A099056.P7525272254177067884

namespace A099056

/-- `A350102(2*(n+1))-1` -/
def P7525272254177067884.Spec : Prop :=
  ∀ n, P7525272254177067884.a n = A099056 n

end A099056

/-! ## A099056.P17835749890352295272

`∑[A092338(2*n+1)+1]`
-/

namespace A099056.P17835749890352295272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099056.P17835749890352295272

namespace A099056

/-- `∑[A092338(2*n+1)+1]` -/
def P17835749890352295272.Spec : Prop :=
  ∀ n, P17835749890352295272.a n = A099056 n

end A099056

/-! ## A099056.P12271308187454723987

`∑[A274010(2*n+1)+2]`
-/

namespace A099056.P12271308187454723987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (2 * n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099056.P12271308187454723987

namespace A099056

/-- `∑[A274010(2*n+1)+2]` -/
def P12271308187454723987.Spec : Prop :=
  ∀ n, P12271308187454723987.a n = A099056 n

end A099056

/-! ## A099056.P15255337547148385376

`or(char[2], A054519(2*n+1))`
-/

namespace A099056.P15255337547148385376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A054519 (2 * n + 1))

end

end A099056.P15255337547148385376

namespace A099056

/-- `or(char[2], A054519(2*n+1))` -/
def P15255337547148385376.Spec : Prop :=
  ∀ n, P15255337547148385376.a n = A099056 n

end A099056

/-! ## A099056.P17154255337855144257

`A156745(2*n+1)-2*n`
-/

namespace A099056.P17154255337855144257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (2 * n + 1) - (2 * n : ℤ)

end

end A099056.P17154255337855144257

namespace A099056

/-- `A156745(2*n+1)-2*n` -/
def P17154255337855144257.Spec : Prop :=
  ∀ n, P17154255337855144257.a n = A099056 n

end A099056

/-! ## A099056.P4297404877321060705

`A006590(2*(n+1))-Δ[n²]`
-/

namespace A099056.P4297404877321060705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (2 * (n + 1)) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A099056.P4297404877321060705

namespace A099056

/-- `A006590(2*(n+1))-Δ[n²]` -/
def P4297404877321060705.Spec : Prop :=
  ∀ n, P4297404877321060705.a n = A099056 n

end A099056

/-! ## A099056.P16893929046759927298

`A002541(2*n+1)+2*(n+1)`
-/

namespace A099056.P16893929046759927298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (2 * n + 1) + (2 * (n + 1) : ℤ)

end

end A099056.P16893929046759927298

namespace A099056

/-- `A002541(2*n+1)+2*(n+1)` -/
def P16893929046759927298.Spec : Prop :=
  ∀ n, P16893929046759927298.a n = A099056 n

end A099056

/-!
# A099057: 

The programs for A099057, there is no canonical definition to state claims against.
-/

/-! ## A099057.P17019192225489670107

`A000396(Δ[n²])`
-/

namespace A099057.P17019192225489670107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099057.P17019192225489670107

/-!
# A099058: 

The programs for A099058, there is no canonical definition to state claims against.
-/

/-! ## A099058.P8202015222410433898

`A000396(2*(n+1))`
-/

namespace A099058.P8202015222410433898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (2 * (n + 1))

end

end A099058.P8202015222410433898

/-!
# A099059: The odd bisection of A000594.

The programs for A099059, there is no canonical definition to state claims against.
-/

/-! ## A099059.P12828346612243993544

`A000594(2*n+1)`
-/

namespace A099059.P12828346612243993544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (2 * n + 1)

end

end A099059.P12828346612243993544

/-! ## A099059.P2283903353640372562

`A000594(A005408(n))/gcd(n, n+1)`
-/

namespace A099059.P2283903353640372562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000594 (A005408 n).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A099059.P2283903353640372562

/-! ## A099059.P3288419662482593340

`gcd(2, A005408(n))*A000594(A005408(n))`
-/

namespace A099059.P3288419662482593340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A005408 n) : ℤ) * A000594 (A005408 n).toNat

end

end A099059.P3288419662482593340

/-! ## A099059.P756005516433980277

`∑{d}[Δ[n²], A308492(#)]`
-/

namespace A099059.P756005516433980277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A308492 d

end

end A099059.P756005516433980277

/-! ## A099059.P12312882608409798081

`A145155(2*n)/Δ[n²]`
-/

namespace A099059.P12312882608409798081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 (2 * n) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A099059.P12312882608409798081

/-! ## A099059.P18103302197056393518

`A292781(A075349(2*(n+1)))`
-/

namespace A099059.P18103302197056393518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (2 * (n + 1))).toNat

end

end A099059.P18103302197056393518

/-! ## A099059.P2380764068363653413

`A292781(A006463(2*n)+2*n)`
-/

namespace A099059.P2380764068363653413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A006463 (2 * n) + (2 * n : ℤ)).toNat

end

end A099059.P2380764068363653413

/-! ## A099059.P9814569097182009711

`A055978(8*n+4)`
-/

namespace A099059.P9814569097182009711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (8 * n + 4)

end

end A099059.P9814569097182009711

/-!
# A099060: The even bisection of A000594.

The programs for A099060, there is no canonical definition to state claims against.
-/

/-! ## A099060.P11776385332340116749

`A000594(2*(n+1))`
-/

namespace A099060.P11776385332340116749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (2 * (n + 1))

end

end A099060.P11776385332340116749

/-! ## A099060.P1301672608766074737

`A000594(n+2+n)%A016903(n)`
-/

namespace A099060.P1301672608766074737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000594 (n + 2 + n)) (A016903 n)

end

end A099060.P1301672608766074737

/-! ## A099060.P15702760360308070271

`A000594(A005843(n+1))+2-4/2`
-/

namespace A099060.P15702760360308070271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000594 (A005843 (n + 1)).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A099060.P15702760360308070271

/-! ## A099060.P15882918909459380963

`A000594(Δ[n²]+1)+A000007(n+1)`
-/

namespace A099060.P15882918909459380963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + A000007 (n + 1)

end

end A099060.P15882918909459380963

/-! ## A099060.P1590881715273026779

`A145155(2*n+1)/(2*(n+1))`
-/

namespace A099060.P1590881715273026779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145155 (2 * n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A099060.P1590881715273026779

/-! ## A099060.P14896104540483538305

`A289833(2*n+1)+A145155(2*n+1)`
-/

namespace A099060.P14896104540483538305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289833 (2 * n + 1) + A145155 (2 * n + 1)

end

end A099060.P14896104540483538305

/-! ## A099060.P1357303212452252471

`A144248(2*(n+1))-A144248(2*n+1)`
-/

namespace A099060.P1357303212452252471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144248 (2 * (n + 1)) - A144248 (2 * n + 1)

end

end A099060.P1357303212452252471

/-! ## A099060.P9652369877927182449

`A289833(2*n+1)/(2-A009056(2*n+1))`
-/

namespace A099060.P9652369877927182449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289833 (2 * n + 1) : ℚ) / (2 - A009056 (2 * n + 1) : ℚ)

end

end A099060.P9652369877927182449

/-! ## A099060.P9946304882099470437

`A204689(n+2+n)+A000594(Δ[n²]+1)`
-/

namespace A099060.P9946304882099470437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204689 (n + 2 + n) + A000594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A099060.P9946304882099470437

/-! ## A099060.P11992076022268354126

`A292781(A075349(2*(n+1))-1)`
-/

namespace A099060.P11992076022268354126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (2 * (n + 1)) - 1).toNat

end

end A099060.P11992076022268354126

/-! ## A099060.P1633062771014448564

`A292781(A006463(2*n+1)+2*n+1)`
-/

namespace A099060.P1633062771014448564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A006463 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A099060.P1633062771014448564

/-! ## A099060.P2725639622534592329

`A292781(A075349(2*n+3))`
-/

namespace A099060.P2725639622534592329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292781 (A075349 (2 * n + 3)).toNat

end

end A099060.P2725639622534592329

/-! ## A099060.P10355384126954240565

`A000594(Δ[n²]+1)/A007318(∑[n])`
-/

namespace A099060.P10355384126954240565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000594 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A099060.P10355384126954240565

/-! ## A099060.P10182316749802690826

`A055978(8*(n+1))`
-/

namespace A099060.P10182316749802690826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055978 (8 * (n + 1))

end

end A099060.P10182316749802690826

/-!
# A099061: A bisection of A000960.

The programs for A099061, there is no canonical definition to state claims against.
-/

/-! ## A099061.P4310689631392513615

`A278484(2*n)+1`
-/

namespace A099061.P4310689631392513615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 (2 * n) + 1

end

end A099061.P4310689631392513615

/-! ## A099061.P12182225739899720814

`A000960(Δ[n²])`
-/

namespace A099061.P12182225739899720814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099061.P12182225739899720814

/-! ## A099061.P15193290451288590372

`or(1, A000960(2*n+1))`
-/

namespace A099061.P15193290451288590372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000960 (2 * n + 1))

end

end A099061.P15193290451288590372

/-! ## A099061.P519164625912658818

`record[A000960(lcm(4, n+1)/4)]`
-/

namespace A099061.P519164625912658818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099061.P519164625912658818

/-! ## A099061.P17507882194244066031

`record[(-1)^n*A000960(n+1)]`
-/

namespace A099061.P17507882194244066031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099061.P17507882194244066031

/-! ## A099061.P16319931659848347066

`record[A000960(A000265(n+1))]`
-/

namespace A099061.P16319931659848347066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099061.P16319931659848347066

/-! ## A099061.P4451216200252597582

`A099062(n)-A056526(2*n+1)`
-/

namespace A099061.P4451216200252597582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099062 n - A056526 (2 * n + 1)

end

end A099061.P4451216200252597582

/-! ## A099061.P6334992150392231250

`abs(A000960(2*n+1)*A033999(n))`
-/

namespace A099061.P6334992150392231250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000960 (2 * n + 1) * A033999 n|

end

end A099061.P6334992150392231250

/-! ## A099061.P14709122201311778266

`record[gcd(A000960(n+1), A007814(n+1))]`
-/

namespace A099061.P14709122201311778266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000960 (n + 1)) (A007814 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099061.P14709122201311778266

/-! ## A099061.P6578148549466160904

`A000960(2*n+1)+A000007(n+1)`
-/

namespace A099061.P6578148549466160904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * n + 1) + A000007 (n + 1)

end

end A099061.P6578148549466160904

/-! ## A099061.P7515991569918607263

`A000034(2*n)*A000960(2*n+1)`
-/

namespace A099061.P7515991569918607263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A000960 (2 * n + 1)

end

end A099061.P7515991569918607263

/-! ## A099061.P63255472907818559

`A000960(2*n+1)*A033999(2*n)`
-/

namespace A099061.P63255472907818559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * n + 1) * A033999 (2 * n)

end

end A099061.P63255472907818559

/-! ## A099061.P12781117465000933931

`A000960(2*n+1)*A152271(2*n)`
-/

namespace A099061.P12781117465000933931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * n + 1) * A152271 (2 * n)

end

end A099061.P12781117465000933931

/-! ## A099061.P7723379669333748780

`A000960(2*n+1)%A005408(n+1)²`
-/

namespace A099061.P7723379669333748780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000960 (2 * n + 1)) (A005408 (n + 1) ^ 2)

end

end A099061.P7723379669333748780

/-! ## A099061.P15053983024702849625

`A278169(2*(n+1))+A000960(2*n+1)`
-/

namespace A099061.P15053983024702849625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (2 * (n + 1)) + A000960 (2 * n + 1)

end

end A099061.P15053983024702849625

/-! ## A099061.P15604082742172976597

`A000960(2*(n+1))-A056526(2*n+1)`
-/

namespace A099061.P15604082742172976597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * (n + 1)) - A056526 (2 * n + 1)

end

end A099061.P15604082742172976597

/-! ## A099061.P18249872592154283819

`A000960(2*n+1)*A278528(2*(n+1))`
-/

namespace A099061.P18249872592154283819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * n + 1) * A278528 (2 * (n + 1))

end

end A099061.P18249872592154283819

/-! ## A099061.P4200520406643215055

`A000960(2*n+1)*A278538(2*(n+1))`
-/

namespace A099061.P4200520406643215055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * n + 1) * A278538 (2 * (n + 1))

end

end A099061.P4200520406643215055

/-! ## A099061.P4114480462660474703

`and(1, A000040(n+2))*A000960(2*n+1)`
-/

namespace A099061.P4114480462660474703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 2)) * A000960 (2 * n + 1)

end

end A099061.P4114480462660474703

/-! ## A099061.P7040445716324468540

`A000960(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A099061.P7040445716324468540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * n + 1) + (2 - A020639 (2 * (n + 1)))

end

end A099061.P7040445716324468540

/-!
# A099062: A bisection of A000960.

The programs for A099062, there is no canonical definition to state claims against.
-/

/-! ## A099062.P13200158371597886553

`A000960(2*(n+1))`
-/

namespace A099062.P13200158371597886553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (2 * (n + 1))

end

end A099062.P13200158371597886553

/-! ## A099062.P12994943335299155794

`A278484(Δ[n²])+1`
-/

namespace A099062.P12994943335299155794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A099062.P12994943335299155794

/-! ## A099062.P2955359570132409913

`1+A278484(2*n+1)`
-/

namespace A099062.P2955359570132409913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A278484 (2 * n + 1)

end

end A099062.P2955359570132409913

/-! ## A099062.P4704525389818010489

`record[A000960((-1)^n+n+1)]`
-/

namespace A099062.P4704525389818010489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 ((-1) ^ n + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099062.P4704525389818010489

/-! ## A099062.P2176374414830934865

`record[A278484((n+1)/and(n+1, -(n+1)))+1]`
-/

namespace A099062.P2176374414830934865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099062.P2176374414830934865

/-! ## A099062.P16541951930217694564

`A099061(n)+A056526(2*n+1)`
-/

namespace A099062.P16541951930217694564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099061 n + A056526 (2 * n + 1)

end

end A099062.P16541951930217694564

/-! ## A099062.P2214586839489164675

`A099074(2*n+1)-A099074(2*n)`
-/

namespace A099062.P2214586839489164675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099074 (2 * n + 1) - A099074 (2 * n)

end

end A099062.P2214586839489164675

/-! ## A099062.P15061703532729949790

`A399877(A002491(2*(n+1)))`
-/

namespace A099062.P15061703532729949790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399877 (A002491 (2 * (n + 1))).toNat

end

end A099062.P15061703532729949790

/-! ## A099062.P3271264144438335737

`A278505((2*n+3)*(n+1))`
-/

namespace A099062.P3271264144438335737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 ((2 * n + 3) * (n + 1))

end

end A099062.P3271264144438335737

/-! ## A099062.P12194338283212398633

`A278511((n+1)*(2*n+3))`
-/

namespace A099062.P12194338283212398633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278511 ((n + 1) * (2 * n + 3))

end

end A099062.P12194338283212398633

/-!
# A099063: Binomial transform of A000960.

The programs for A099063, there is no canonical definition to state claims against.
-/

/-! ## A099063.P9867063806634471866

`A092442(n)+A066983(A065666(2*n+3))`
-/

namespace A099063.P9867063806634471866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092442 n + A066983 (A065666 (2 * n + 3)).toNat

end

end A099063.P9867063806634471866

/-! ## A099063.P4262081211749792460

`A020639(A001813(n))*A188920(2*n)`
-/

namespace A099063.P4262081211749792460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001813 n).toNat * A188920 (2 * n)

end

end A099063.P4262081211749792460

/-!
# A099065: Euler transform of A000960.

The programs for A099065, there is no canonical definition to state claims against.
-/

/-! ## A099065.P1446947558903866501

`A341151(A219676(n))+n*A219676(n)`
-/

namespace A099065.P1446947558903866501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341151 (A219676 n).toNat + (n : ℤ) * A219676 n

end

end A099065.P1446947558903866501

/-! ## A099065.P9024800530548974010

`A135660(A194460(n+1))+A005209(n+1)`
-/

namespace A099065.P9024800530548974010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A194460 (n + 1)).toNat + A005209 (n + 1)

end

end A099065.P9024800530548974010

/-!
# A099069: Numbers n such that n = prime(d_1*d_2*...*d_k) - phi(d_1 + d_2 + ... + d_k) where d_1 d_2 ... d_k is the decimal expansion of n.

The programs for A099069, there is no canonical definition to state claims against.
-/

/-! ## A099069.P5370629409596185914

`A080678(n)+A027038(A109192(n))`
-/

namespace A099069.P5370629409596185914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080678 n + A027038 (A109192 n).toNat

end

end A099069.P5370629409596185914

/-!
# A099071: Composite numbers k such that the concatenation of all nonprime positive integers up to k in decreasing order is prime.

The programs for A099071, there is no canonical definition to state claims against.
-/

/-! ## A099071.P9902128607868908420

`A099070(comp[3^n]+1)`
-/

namespace A099071.P9902128607868908420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099070 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A099071.P9902128607868908420

/-!
# A099072: First differences of A000960, divided by 2.

The programs for A099072, there is no canonical definition to state claims against.
-/

/-! ## A099072.P17179720163323755813

`Δ[A278484(n)/2]`
-/

namespace A099072.P17179720163323755813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278484 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099072.P17179720163323755813

/-! ## A099072.P11647426865367610229

`A056526(n+1)/2`
-/

namespace A099072.P11647426865367610229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056526 (n + 1) : ℚ) / 2

end

end A099072.P11647426865367610229

/-! ## A099072.P14899885441173680667

`Δ[A000960(n+1)/2]`
-/

namespace A099072.P14899885441173680667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000960 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099072.P14899885441173680667

/-! ## A099072.P15260608890216021663

`A001281(Δ[A278484(n)])`
-/

namespace A099072.P15260608890216021663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A099072.P15260608890216021663

/-! ## A099072.P10425156342918382376

`A001281(A056526(n+1))`
-/

namespace A099072.P10425156342918382376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A056526 (n + 1)).toNat

end

end A099072.P10425156342918382376

/-! ## A099072.P12688624909212336088

`Δ[A278505(C(n+2, 2))/2]`
-/

namespace A099072.P12688624909212336088
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278505 (Nat.choose (n + 2) 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099072.P12688624909212336088

/-! ## A099072.P2951776693263677244

`Δ[A278503(C(n+1, 2)+1)%(n+2)²/2]`
-/

namespace A099072.P2951776693263677244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A278503 (Nat.choose (n + 1) 2 + 1)) ((n + 2) ^ 2 : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099072.P2951776693263677244

/-! ## A099072.P11034293061956081451

`Δ[eq[1, A278169(2*n+1)]]`
-/

namespace A099072.P11034293061956081451
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A099072.P11034293061956081451

/-! ## A099072.P7989687362967546676

`Δ[eq[1, A278169(n+1)]/2]`
-/

namespace A099072.P7989687362967546676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099072.P7989687362967546676

/-!
# A099073: Numbers k such that the concatenation of the first k-1 odd primes in decreasing order is prime.

The programs for A099073, there is no canonical definition to state claims against.
-/

/-! ## A099073.P819953649992877044

`A000720(A100003(n+1))`
-/

namespace A099073.P819953649992877044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A100003 (n + 1)).toNat

end

end A099073.P819953649992877044

/-!
# A099074: Partial sums of A000960.

The programs for A099074, there is no canonical definition to state claims against.
-/

/-! ## A099074.P5243152865535503056

`∑[A000960(n+1)]`
-/

namespace A099074.P5243152865535503056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P5243152865535503056

/-! ## A099074.P10296230869814104967

`∑[A278484(n)+1]`
-/

namespace A099074.P10296230869814104967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P10296230869814104967

/-! ## A099074.P6618448694404352890

`∑[A056526(n)+a(n-1)]` with `a(0)=1`
-/

namespace A099074.P6618448694404352890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A056526 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P6618448694404352890

/-! ## A099074.P9520044225344363984

`∑[record[A000960(A286378(n))]]`
-/

namespace A099074.P9520044225344363984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P9520044225344363984

/-! ## A099074.P13557264736147684993

`∑[record[A000960(A328395(n))]]`
-/

namespace A099074.P13557264736147684993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A328395 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P13557264736147684993

/-! ## A099074.P11497323370879822668

`∑[record[A000960(A331300(n))]]`
-/

namespace A099074.P11497323370879822668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P11497323370879822668

/-! ## A099074.P12534957053760089106

`∑[record[A000960(A152271(n))]]`
-/

namespace A099074.P12534957053760089106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P12534957053760089106

/-! ## A099074.P12252529445636902818

`∑[record[A000960(A154958(n))]]`
-/

namespace A099074.P12252529445636902818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P12252529445636902818

/-! ## A099074.P2713483983453840578

`∑[record[A000960(A117910(n))]]`
-/

namespace A099074.P2713483983453840578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P2713483983453840578

/-! ## A099074.P17584992253085613915

`∑[record[A399877(n+1)]]`
-/

namespace A099074.P17584992253085613915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P17584992253085613915

/-! ## A099074.P8040779213665868816

`∑[A278505(∑[n+1])]`
-/

namespace A099074.P8040779213665868816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P8040779213665868816

/-! ## A099074.P15171025005587999382

`∑[A141310(A278484(n))]`
-/

namespace A099074.P15171025005587999382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A278484 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P15171025005587999382

/-! ## A099074.P15295111423855805111

`∑[A278503(∑[n]+1)]`
-/

namespace A099074.P15295111423855805111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P15295111423855805111

/-! ## A099074.P17594585947184401967

`∑[lt[A278529(n+1), 1]+1]`
-/

namespace A099074.P17594585947184401967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P17594585947184401967

/-! ## A099074.P4630594432102230976

`∑[eq[2, A100002(n+1)]]`
-/

namespace A099074.P4630594432102230976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100002 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099074.P4630594432102230976

/-!
# A099075: Weigh transform of A000960.

The programs for A099075, there is no canonical definition to state claims against.
-/

/-! ## A099075.P1015657559344390793

`A116598(A116573(n+3)%A116572(n+4))`
-/

namespace A099075.P1015657559344390793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (Int.tmod (A116573 (n + 3)) (A116572 (n + 4))).toNat

end

end A099075.P1015657559344390793

/-! ## A099075.P5192966547340111648

`A086014(A175052(n+5)-A003557(n+1))`
-/

namespace A099075.P5192966547340111648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086014 (A175052 (n + 5) - A003557 (n + 1)).toNat

end

end A099075.P5192966547340111648

/-! ## A099075.P17980787203968109044

`A276890(gcd(A002180(n+2), A264886(n+1)))`
-/

namespace A099075.P17980787203968109044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276890 (Int.gcd (A002180 (n + 2)) (A264886 (n + 1)))

end

end A099075.P17980787203968109044

/-! ## A099075.P5571088155604161791

`A086694(A051013(n))`
-/

namespace A099075.P5571088155604161791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (A051013 n).toNat

end

end A099075.P5571088155604161791

/-! ## A099075.P850275865686142037

`A179020(A063810(n))`
-/

namespace A099075.P850275865686142037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179020 (A063810 n).toNat

end

end A099075.P850275865686142037

/-!
# A099076: a(n) = A000960(n) mod 3.

The programs for A099076, there is no canonical definition to state claims against.
-/

/-! ## A099076.P12545242427472136721

`A000960(n+1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099076.P12545242427472136721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000960 (n + 1)) 3

end

end A099076.P12545242427472136721

/-! ## A099076.P13683764638272931794

`(A278484(n)+1)%3`
-/

namespace A099076.P13683764638272931794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278484 n + 1) 3

end

end A099076.P13683764638272931794

/-! ## A099076.P337967208562832492

`xor(1, A278484(xor(1, xor(1, n))))%3`
-/

namespace A099076.P337967208562832492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor 1 (A278484 (Nat.xor 1 (Nat.xor 1 n)))) 3

end

end A099076.P337967208562832492

/-! ## A099076.P3723618994551736764

`(A056526(n)+a(n-1))%3` with `a(0)=1`
-/

namespace A099076.P3723618994551736764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A056526 n + a (n - 1)) 3

end

end A099076.P3723618994551736764

/-! ## A099076.P287607693575763554

`A049347(∑{digits}[A278484(n), #])`
-/

namespace A099076.P287607693575763554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A099076.P287607693575763554

/-! ## A099076.P6825518313396808288

`A000007(val(A000960(n+1), 3))`
-/

namespace A099076.P6825518313396808288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A000960 (n + 1)).toNat 3)

end

end A099076.P6825518313396808288

/-! ## A099076.P17277647895327938261

`A079979(A278484(n))`
-/

namespace A099076.P17277647895327938261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A278484 n).toNat

end

end A099076.P17277647895327938261

/-! ## A099076.P7624579240447687828

`A060398(A278484(n)/2)`
-/

namespace A099076.P7624579240447687828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (SequenceMachineLib.roundAway ((A278484 n : ℚ) / 2)).toNat

end

end A099076.P7624579240447687828

/-! ## A099076.P7886567625650107613

`A278505(∑[n+1])%3`
-/

namespace A099076.P7886567625650107613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278505 (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A099076.P7886567625650107613

/-! ## A099076.P17554962074593257277

`A278503(∑[n]+1)%3`
-/

namespace A099076.P17554962074593257277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278503 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 3

end

end A099076.P17554962074593257277

/-! ## A099076.P15066055568596048610

`A010892(A278484(n))`
-/

namespace A099076.P15066055568596048610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A278484 n).toNat

end

end A099076.P15066055568596048610

/-! ## A099076.P6270278336489967943

`A010872(A000960(n+1))`
-/

namespace A099076.P6270278336489967943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000960 (n + 1)).toNat

end

end A099076.P6270278336489967943

/-! ## A099076.P16570108091971983533

`A049347(A278484(n)+2)+1`
-/

namespace A099076.P16570108091971983533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (A278484 n + 2).toNat + 1

end

end A099076.P16570108091971983533

/-! ## A099076.P16831569054898169041

`1-A060398(A278484(n)+1)`
-/

namespace A099076.P16831569054898169041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060398 (A278484 n + 1).toNat

end

end A099076.P16831569054898169041

/-! ## A099076.P568094454354421582

`A104706(A000960(n+1)+1)-1`
-/

namespace A099076.P568094454354421582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104706 (A000960 (n + 1) + 1).toNat - 1

end

end A099076.P568094454354421582

/-! ## A099076.P8295741534956609679

`A374048(A099207(n+1))`
-/

namespace A099076.P8295741534956609679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374048 (A099207 (n + 1)).toNat

end

end A099076.P8295741534956609679

/-!
# A099082: Numbers k such that 1.2. ... .k-1.k + 2 is prime (dot between numbers means concatenation).

The programs for A099082, there is no canonical definition to state claims against.
-/

/-! ## A099082.P12627349851313925859

`or(n^(n%2), ∑[A305235(n)])`
-/

namespace A099082.P12627349851313925859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ (n % 2) : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099082.P12627349851313925859

/-!
# A099084: Numbers k such that 1.2. ... .k-1.k + 4 is a prime (dot between numbers means concatenation).

The programs for A099084, there is no canonical definition to state claims against.
-/

/-! ## A099084.P6601033296620504310

`A003601(A045754(n)*A286472(n+1))`
-/

namespace A099084.P6601033296620504310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (A045754 n * A286472 (n + 1)).toNat

end

end A099084.P6601033296620504310

/-!
# A099085: A bisection of A006966.

The programs for A099085, there is no canonical definition to state claims against.
-/

/-! ## A099085.P17056986947435805640

`A006966(2*n)`
-/

namespace A099085.P17056986947435805640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (2 * n)

end

end A099085.P17056986947435805640

/-! ## A099085.P9588956459668575746

`∏{e}[4^n, A006966(#)]`
-/

namespace A099085.P9588956459668575746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006966 (Nat.factorization (f1 n) p)

end

end A099085.P9588956459668575746

/-! ## A099085.P18064413864642663093

`∑{digits}[n, A006966(#+n)]`
-/

namespace A099085.P18064413864642663093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A006966 (x + n)).sum

end

end A099085.P18064413864642663093

/-! ## A099085.P10352517038824038109

`sqrt(A006966(∏{digits}[n, #]+n))^(4/2)`
-/

namespace A099085.P10352517038824038109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006966 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + n) : ℝ) ^ ((4 : ℚ) / 2 : ℝ)

end

end A099085.P10352517038824038109

/-! ## A099085.P6778053257840169628

`A006966(A005843(n))^(1-char[1])`
-/

namespace A099085.P6778053257840169628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006966 (A005843 n).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A099085.P6778053257840169628

/-!
# A099086: A bisection of A006966.

The programs for A099086, there is no canonical definition to state claims against.
-/

/-! ## A099086.P2403571004173890576

`A006966(Δ[n²])`
-/

namespace A099086.P2403571004173890576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099086.P2403571004173890576

/-! ## A099086.P11929538620037007116

`∑{e}[2*4^n, A006966(#)]`
-/

namespace A099086.P11929538620037007116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A006966 (Nat.factorization (f1 n) p)

end

end A099086.P11929538620037007116

/-! ## A099086.P2238997896938095892

`and(-1, A006966(2*n+1))`
-/

namespace A099086.P2238997896938095892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A006966 (2 * n + 1))

end

end A099086.P2238997896938095892

/-! ## A099086.P6406016154484067120

`A006966((n+1)²-n²)-(n-∑{digits}[n, #])`
-/

namespace A099086.P6406016154484067120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 ((n + 1) ^ 2 - n ^ 2) - ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A099086.P6406016154484067120

/-! ## A099086.P17162510627198225123

`A009714(n)+A006966(2*n+1)`
-/

namespace A099086.P17162510627198225123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009714 n + A006966 (2 * n + 1)

end

end A099086.P17162510627198225123

/-!
# A099087: Expansion of 1/(1 - 2*x + 2*x^2).

The programs for A099087, the canonical program `A099087.P2365621033626007359` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099087 has offset 0).

The definition of A099087 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^2))` (program `A099087.P2365621033626007359`, by `A099087.P2365621033626007359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099087.P2365621033626007359

`ogf(1/(1-2x+2x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099087

/-- `ogf(1/(1-2x+2x^2))` -/
def P2365621033626007359.Spec : Prop :=
  ∀ n, P2365621033626007359.a n = A099087 n

theorem P2365621033626007359.correct : P2365621033626007359.Spec := by
  intro n
  simp only [A099087]

end A099087

/-! ## A099087.P7024693793850812740

`2*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A099087.P7024693793850812740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (a (n - 1) - a (n - 2))

end

end A099087.P7024693793850812740

namespace A099087

/-- `2*(a(n-1)-a(n-2))` -/
def P7024693793850812740.Spec : Prop :=
  ∀ n, P7024693793850812740.a n = A099087 n

end A099087

/-! ## A099087.P17439243791398848390

`A146559(n)+A009545(n)`
-/

namespace A099087.P17439243791398848390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n + A009545 n

end

end A099087.P17439243791398848390

namespace A099087

/-- `A146559(n)+A009545(n)` -/
def P17439243791398848390.Spec : Prop :=
  ∀ n, P17439243791398848390.a n = A099087 n

end A099087

/-! ## A099087.P8695788883497131860

`∑{#}[n, C(n, #)*(-1)^C(#, 2)]`
-/

namespace A099087.P8695788883497131860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * (-1) ^ Nat.choose k 2

end

end A099087.P8695788883497131860

namespace A099087

/-- `∑{#}[n, C(n, #)*(-1)^C(#, 2)]` -/
def P8695788883497131860.Spec : Prop :=
  ∀ n, P8695788883497131860.a n = A099087 n

end A099087

/-! ## A099087.P3314630600221230336

`-(4*a(n-4))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=0`
-/

namespace A099087.P3314630600221230336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 0] fun n a =>
  -(4 * a (n - 4))

end

end A099087.P3314630600221230336

namespace A099087

/-- `-(4*a(n-4))` -/
def P3314630600221230336.Spec : Prop :=
  ∀ n, P3314630600221230336.a n = A099087 n

end A099087

/-! ## A099087.P3901060821118474643

`(a(n-1)-a(n-2))/(1-1/2)` with `a(0)=1, a(1)=2`
-/

namespace A099087.P3901060821118474643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) / (1 - (1 : ℚ) / 2)

end

end A099087.P3901060821118474643

namespace A099087

/-- `(a(n-1)-a(n-2))/(1-1/2)` -/
def P3901060821118474643.Spec : Prop :=
  ∀ n, P3901060821118474643.a n = (A099087 n : ℚ)

end A099087

/-! ## A099087.P2954218406439701703

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A099087.P2954218406439701703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A099087.P2954218406439701703

namespace A099087

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P2954218406439701703.Spec : Prop :=
  ∀ n, P2954218406439701703.a n = A099087 n

end A099087

/-! ## A099087.P299736392747064930

`∑[A146559(n)]`
-/

namespace A099087.P299736392747064930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099087.P299736392747064930

namespace A099087

/-- `∑[A146559(n)]` -/
def P299736392747064930.Spec : Prop :=
  ∀ n, P299736392747064930.a n = A099087 n

end A099087

/-! ## A099087.P1045773358857186024

`A009545(n+1)`
-/

namespace A099087.P1045773358857186024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1)

end

end A099087.P1045773358857186024

namespace A099087

/-- `A009545(n+1)` -/
def P1045773358857186024.Spec : Prop :=
  ∀ n, P1045773358857186024.a n = A099087 n

end A099087

/-! ## A099087.P14802806492326056682

`Δ[-A146559(n+1)]`
-/

namespace A099087.P14802806492326056682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A146559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099087.P14802806492326056682

namespace A099087

/-- `Δ[-A146559(n+1)]` -/
def P14802806492326056682.Spec : Prop :=
  ∀ n, P14802806492326056682.a n = A099087 n

end A099087

/-! ## A099087.P16293005997349969907

`A363524(A098180(n))`
-/

namespace A099087.P16293005997349969907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363524 (A098180 n).toNat

end

end A099087.P16293005997349969907

namespace A099087

/-- `A363524(A098180(n))` -/
def P16293005997349969907.Spec : Prop :=
  ∀ n, P16293005997349969907.a n = A099087 n

end A099087

/-! ## A099087.P2802488177211307859

`A033999(n)*A108520(n)`
-/

namespace A099087.P2802488177211307859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A108520 n

end

end A099087.P2802488177211307859

namespace A099087

/-- `A033999(n)*A108520(n)` -/
def P2802488177211307859.Spec : Prop :=
  ∀ n, P2802488177211307859.a n = A099087 n

end A099087

/-! ## A099087.P10638138558153555124

`A084102(n)*A165326(n)`
-/

namespace A099087.P10638138558153555124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 n * A165326 n

end

end A099087.P10638138558153555124

namespace A099087

/-- `A084102(n)*A165326(n)` -/
def P10638138558153555124.Spec : Prop :=
  ∀ n, P10638138558153555124.a n = A099087 n

end A099087

/-! ## A099087.P4217421809397982285

`A000034(n)*A363524(n)`
-/

namespace A099087.P4217421809397982285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A363524 n

end

end A099087.P4217421809397982285

namespace A099087

/-- `A000034(n)*A363524(n)` -/
def P4217421809397982285.Spec : Prop :=
  ∀ n, P4217421809397982285.a n = A099087 n

end A099087

/-! ## A099087.P1302551525840226739

`A133186(n)*A363524(n)`
-/

namespace A099087.P1302551525840226739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133186 n * A363524 n

end

end A099087.P1302551525840226739

namespace A099087

/-- `A133186(n)*A363524(n)` -/
def P1302551525840226739.Spec : Prop :=
  ∀ n, P1302551525840226739.a n = A099087 n

end A099087

/-! ## A099087.P17940999353758490568

`∑[A016116(n)*A046980(n)]`
-/

namespace A099087.P17940999353758490568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A046980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099087.P17940999353758490568

namespace A099087

/-- `∑[A016116(n)*A046980(n)]` -/
def P17940999353758490568.Spec : Prop :=
  ∀ n, P17940999353758490568.a n = A099087 n

end A099087

/-! ## A099087.P6322874916691459677

`A046978(n+1)*A060546(n)`
-/

namespace A099087.P6322874916691459677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (n + 1) * A060546 n

end

end A099087.P6322874916691459677

namespace A099087

/-- `A046978(n+1)*A060546(n)` -/
def P6322874916691459677.Spec : Prop :=
  ∀ n, P6322874916691459677.a n = A099087 n

end A099087

/-! ## A099087.P8466249051305277409

`A078014(n)-A078014(n+2)`
-/

namespace A099087.P8466249051305277409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078014 n - A078014 (n + 2)

end

end A099087.P8466249051305277409

namespace A099087

/-- `A078014(n)-A078014(n+2)` -/
def P8466249051305277409.Spec : Prop :=
  ∀ n, P8466249051305277409.a n = A099087 n

end A099087

/-! ## A099087.P802689841787812470

`A001511(n+1)*A363524(n)`
-/

namespace A099087.P802689841787812470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A363524 n

end

end A099087.P802689841787812470

namespace A099087

/-- `A001511(n+1)*A363524(n)` -/
def P802689841787812470.Spec : Prop :=
  ∀ n, P802689841787812470.a n = A099087 n

end A099087

/-! ## A099087.P16919267420974849611

`A003484(n+1)*A363524(n)`
-/

namespace A099087.P16919267420974849611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (n + 1) * A363524 n

end

end A099087.P16919267420974849611

namespace A099087

/-- `A003484(n+1)*A363524(n)` -/
def P16919267420974849611.Spec : Prop :=
  ∀ n, P16919267420974849611.a n = A099087 n

end A099087

/-!
# A099088: Indices of prime companion Pell numbers, divided by 2 (A001333).

The programs for A099088, there is no canonical definition to state claims against.
-/

/-! ## A099088.P9873012942650022690

`eq[1, A229288(n+1)]+2`
-/

namespace A099088.P9873012942650022690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A099088.P9873012942650022690

/-! ## A099088.P13170521766314184612

`record[A020725(n+1)/A229288(n+1)]`
-/

namespace A099088.P13170521766314184612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A229288 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099088.P13170521766314184612

/-! ## A099088.P9710413944744696843

`record[A028310(n+2)/A229288(n+1)]`
-/

namespace A099088.P9710413944744696843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 2) : ℚ) / (A229288 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099088.P9710413944744696843

/-!
# A099089: Riordan array (1, 2+x).

The programs for A099089, the canonical program `A099089.P16312076340161435879` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099089 has offset 0).

The definition of A099089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099089.P16312076340161435879

`2*T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099089

/-- `2*T(n-1,k-1)+T(n-2,k-1)` -/
def P16312076340161435879.Spec : Prop :=
  ∀ n, (P16312076340161435879.a n : ℤ) = A099089 n

theorem P16312076340161435879.correct : P16312076340161435879.Spec := by
  intro n
  simp only [A099089]

end A099089

/-! ## A099089.P11280312259247169172

`C(col(n), row(n)-col(n))*2^col(n)*(1/2)^(row(n)-col(n))`
-/

namespace A099089.P11280312259247169172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat * 2 ^ SequenceMachineLib.triCol n : ℚ) * ((1 : ℚ) / 2) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A099089.P11280312259247169172

namespace A099089

/-- `C(col(n), row(n)-col(n))*2^col(n)*(1/2)^(row(n)-col(n))` -/
def P11280312259247169172.Spec : Prop :=
  ∀ n, P11280312259247169172.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P8074786400620578276

`T(n-2,k-1)-2*(T(n-1,k-1)-2*T(n-1,k-1))` with `a(0)=1`
-/

namespace A099089.P8074786400620578276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2Left a n - 2 * (SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUpLeft a n)

end

end A099089.P8074786400620578276

namespace A099089

/-- `T(n-2,k-1)-2*(T(n-1,k-1)-2*T(n-1,k-1))` -/
def P8074786400620578276.Spec : Prop :=
  ∀ n, P8074786400620578276.a n = A099089 n

end A099089

/-! ## A099089.P16753829962051055653

`2^(col(n)-(row(n)-col(n)))*C(col(n), row(n)-col(n))`
-/

namespace A099089.P16753829962051055653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ) * (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A099089.P16753829962051055653

namespace A099089

/-- `2^(col(n)-(row(n)-col(n)))*C(col(n), row(n)-col(n))` -/
def P16753829962051055653.Spec : Prop :=
  ∀ n, P16753829962051055653.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P16678931521212468264

`abs(A099096(n))`
-/

namespace A099089.P16678931521212468264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099096 n|

end

end A099089.P16678931521212468264

namespace A099089

/-- `abs(A099096(n))` -/
def P16678931521212468264.Spec : Prop :=
  ∀ n, P16678931521212468264.a n = A099089 n

end A099089

/-! ## A099089.P15896369819035492277

`A026729(n)*A116588(n)`
-/

namespace A099089.P15896369819035492277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A116588 n

end

end A099089.P15896369819035492277

namespace A099089

/-- `A026729(n)*A116588(n)` -/
def P15896369819035492277.Spec : Prop :=
  ∀ n, P15896369819035492277.a n = A099089 n

end A099089

/-! ## A099089.P17325595788495104626

`A097807(n)*A099096(n)`
-/

namespace A099089.P17325595788495104626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A099096 n

end

end A099089.P17325595788495104626

namespace A099089

/-- `A097807(n)*A099096(n)` -/
def P17325595788495104626.Spec : Prop :=
  ∀ n, P17325595788495104626.a n = A099089 n

end A099089

/-! ## A099089.P7598479401955050424

`A099096(n)*A128257(n)`
-/

namespace A099089.P7598479401955050424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099096 n * A128257 n

end

end A099089.P7598479401955050424

namespace A099089

/-- `A099096(n)*A128257(n)` -/
def P7598479401955050424.Spec : Prop :=
  ∀ n, P7598479401955050424.a n = A099089 n

end A099089

/-! ## A099089.P3828141750469961236

`A099096(n)*A187034(n)`
-/

namespace A099089.P3828141750469961236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099096 n * A187034 n

end

end A099089.P3828141750469961236

namespace A099089

/-- `A099096(n)*A187034(n)` -/
def P3828141750469961236.Spec : Prop :=
  ∀ n, P3828141750469961236.a n = A099089 n

end A099089

/-! ## A099089.P9870493332420421964

`A099040(n)/A052509(n)`
-/

namespace A099089.P9870493332420421964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) / (A052509 n : ℚ)

end

end A099089.P9870493332420421964

namespace A099089

/-- `A099040(n)/A052509(n)` -/
def P9870493332420421964.Spec : Prop :=
  ∀ n, P9870493332420421964.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P2474097249659875976

`A099040(n)/A130321(n)`
-/

namespace A099089.P2474097249659875976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) / (A130321 n : ℚ)

end

end A099089.P2474097249659875976

namespace A099089

/-- `A099040(n)/A130321(n)` -/
def P2474097249659875976.Spec : Prop :=
  ∀ n, P2474097249659875976.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P16147229913927819953

`A099091(n)/A140303(n)`
-/

namespace A099089.P16147229913927819953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099091 n : ℚ) / (A140303 n : ℚ)

end

end A099089.P16147229913927819953

namespace A099089

/-- `A099091(n)/A140303(n)` -/
def P16147229913927819953.Spec : Prop :=
  ∀ n, P16147229913927819953.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P227681868581933759

`A099040(n)/A144464(n)`
-/

namespace A099089.P227681868581933759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) / (A144464 n : ℚ)

end

end A099089.P227681868581933759

namespace A099089

/-- `A099040(n)/A144464(n)` -/
def P227681868581933759.Spec : Prop :=
  ∀ n, P227681868581933759.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P7404188057492802886

`A099091(n)/A152714(n)`
-/

namespace A099089.P7404188057492802886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099091 n : ℚ) / (A152714 n : ℚ)

end

end A099089.P7404188057492802886

namespace A099089

/-- `A099091(n)/A152714(n)` -/
def P7404188057492802886.Spec : Prop :=
  ∀ n, P7404188057492802886.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P8158531390709321447

`A099092(n)/A152716(n)`
-/

namespace A099089.P8158531390709321447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A152716 n : ℚ)

end

end A099089.P8158531390709321447

namespace A099089

/-- `A099092(n)/A152716(n)` -/
def P8158531390709321447.Spec : Prop :=
  ∀ n, P8158531390709321447.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P11028869816640880963

`A099092(n)/A262616(n)`
-/

namespace A099089.P11028869816640880963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A262616 n : ℚ)

end

end A099089.P11028869816640880963

namespace A099089

/-- `A099092(n)/A262616(n)` -/
def P11028869816640880963.Spec : Prop :=
  ∀ n, P11028869816640880963.a n = (A099089 n : ℚ)

end A099089

/-! ## A099089.P15000468686455284337

`gcd(A000038(n), A099096(n))`
-/

namespace A099089.P15000468686455284337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A099096 n)

end

end A099089.P15000468686455284337

namespace A099089

/-- `gcd(A000038(n), A099096(n))` -/
def P15000468686455284337.Spec : Prop :=
  ∀ n, (P15000468686455284337.a n : ℤ) = A099089 n

end A099089

/-! ## A099089.P9515207218720254975

`gcd(A099040(n), A099091(n))`
-/

namespace A099089.P9515207218720254975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099040 n) (A099091 n)

end

end A099089.P9515207218720254975

namespace A099089

/-- `gcd(A099040(n), A099091(n))` -/
def P9515207218720254975.Spec : Prop :=
  ∀ n, (P9515207218720254975.a n : ℤ) = A099089 n

end A099089

/-! ## A099089.P15244372174928092544

`lcm(A000034(n), A099096(n))`
-/

namespace A099089.P15244372174928092544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A099096 n)

end

end A099089.P15244372174928092544

namespace A099089

/-- `lcm(A000034(n), A099096(n))` -/
def P15244372174928092544.Spec : Prop :=
  ∀ n, (P15244372174928092544.a n : ℤ) = A099089 n

end A099089

/-! ## A099089.P14434969735203481894

`A099092(n)/A052509(n)²`
-/

namespace A099089.P14434969735203481894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A052509 n ^ 2 : ℚ)

end

end A099089.P14434969735203481894

namespace A099089

/-- `A099092(n)/A052509(n)²` -/
def P14434969735203481894.Spec : Prop :=
  ∀ n, P14434969735203481894.a n = (A099089 n : ℚ)

end A099089

/-!
# A099091: Riordan array (1, 2+3x).

The programs for A099091, the canonical program `A099091.P16410805521126483773` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099091 has offset 0).

The definition of A099091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099091.P9534829671507979340

`2*T(n-1,k-1)+3*T(n-2,k-1)` with `a(0)=1`
-/

namespace A099091.P9534829671507979340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n + 3 * SequenceMachineLib.triUp2Left a n

end

end A099091.P9534829671507979340

namespace A099091

/-- `2*T(n-1,k-1)+3*T(n-2,k-1)` -/
def P9534829671507979340.Spec : Prop :=
  ∀ n, (P9534829671507979340.a n : ℤ) = A099091 n

end A099091

/-! ## A099091.P16410805521126483773

`C(col(n), row(n)-col(n))*2^col(n)*(3/2)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099091

/-- `C(col(n), row(n)-col(n))*2^col(n)*(3/2)^(row(n)-col(n))` -/
def P16410805521126483773.Spec : Prop :=
  ∀ n, P16410805521126483773.a n = (A099091 n : ℚ)

end A099091

/-! ## A099091.P16088135899374809610

`3^(C(comp[∑[n]]-n, 2)-(n+1))*A099089(n)`
-/

namespace A099091.P16088135899374809610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A099089 n : ℚ)

end

end A099091.P16088135899374809610

namespace A099091

/-- `3^(C(comp[∑[n]]-n, 2)-(n+1))*A099089(n)` -/
def P16088135899374809610.Spec : Prop :=
  ∀ n, P16088135899374809610.a n = (A099091 n : ℚ)

end A099091

/-! ## A099091.P612241145686123983

`A099089(n)*A140303(n)`
-/

namespace A099091.P612241145686123983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A140303 n

end

end A099091.P612241145686123983

namespace A099091

/-- `A099089(n)*A140303(n)` -/
def P612241145686123983.Spec : Prop :=
  ∀ n, P612241145686123983.a n = A099091 n

end A099091

/-! ## A099091.P10622492942553598069

`A099089(n)*A152714(n)`
-/

namespace A099091.P10622492942553598069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A152714 n

end

end A099091.P10622492942553598069

namespace A099091

/-- `A099089(n)*A152714(n)` -/
def P10622492942553598069.Spec : Prop :=
  ∀ n, P10622492942553598069.a n = A099091 n

end A099091

/-! ## A099091.P17874733644059129748

`lcm(A099089(n), A110517(n))`
-/

namespace A099091.P17874733644059129748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099089 n) (A110517 n)

end

end A099091.P17874733644059129748

namespace A099091

/-- `lcm(A099089(n), A110517(n))` -/
def P17874733644059129748.Spec : Prop :=
  ∀ n, (P17874733644059129748.a n : ℤ) = A099091 n

end A099091

/-! ## A099091.P7072114585112782990

`abs(A099096(n)*A140303(n))`
-/

namespace A099091.P7072114585112782990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099096 n * A140303 n|

end

end A099091.P7072114585112782990

namespace A099091

/-- `abs(A099096(n)*A140303(n))` -/
def P7072114585112782990.Spec : Prop :=
  ∀ n, P7072114585112782990.a n = A099091 n

end A099091

/-! ## A099091.P12448792418669809934

`abs(A099096(n)*A152714(n))`
-/

namespace A099091.P12448792418669809934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099096 n * A152714 n|

end

end A099091.P12448792418669809934

namespace A099091

/-- `abs(A099096(n)*A152714(n))` -/
def P12448792418669809934.Spec : Prop :=
  ∀ n, P12448792418669809934.a n = A099091 n

end A099091

/-! ## A099091.P15011715362118189039

`lcm(abs(A110517(n)), A099096(n))`
-/

namespace A099091.P15011715362118189039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm |A110517 n| (A099096 n)

end

end A099091.P15011715362118189039

namespace A099091

/-- `lcm(abs(A110517(n)), A099096(n))` -/
def P15011715362118189039.Spec : Prop :=
  ∀ n, (P15011715362118189039.a n : ℤ) = A099091 n

end A099091

/-! ## A099091.P3230183403142268064

`A000244(A004197(n))*A099089(n)`
-/

namespace A099091.P3230183403142268064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004197 n).toNat * A099089 n

end

end A099091.P3230183403142268064

namespace A099091

/-- `A000244(A004197(n))*A099089(n)` -/
def P3230183403142268064.Spec : Prop :=
  ∀ n, P3230183403142268064.a n = A099091 n

end A099091

/-! ## A099091.P17000115195995633396

`A000244(A025581(n))*A099089(n)`
-/

namespace A099091.P17000115195995633396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A099089 n

end

end A099091.P17000115195995633396

namespace A099091

/-- `A000244(A025581(n))*A099089(n)` -/
def P17000115195995633396.Spec : Prop :=
  ∀ n, P17000115195995633396.a n = A099091 n

end A099091

/-! ## A099091.P12816259505233066397

`A064614(A052509(n))*A099089(n)`
-/

namespace A099091.P12816259505233066397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A052509 n).toNat * A099089 n

end

end A099091.P12816259505233066397

namespace A099091

/-- `A064614(A052509(n))*A099089(n)` -/
def P12816259505233066397.Spec : Prop :=
  ∀ n, P12816259505233066397.a n = A099091 n

end A099091

/-!
# A099092: Riordan array (1,2+4x).

The programs for A099092, the canonical program `A099092.P15444936032417172020` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099092 has offset 0).

The definition of A099092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099092.P11256704131240334269

`2*T(n-1,k-1)+4*T(n-2,k-1)` with `a(0)=1`
-/

namespace A099092.P11256704131240334269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUpLeft a n + 4 * SequenceMachineLib.triUp2Left a n

end

end A099092.P11256704131240334269

namespace A099092

/-- `2*T(n-1,k-1)+4*T(n-2,k-1)` -/
def P11256704131240334269.Spec : Prop :=
  ∀ n, (P11256704131240334269.a n : ℤ) = A099092 n

end A099092

/-! ## A099092.P15444936032417172020

`C(col(n), row(n)-col(n))*2^row(n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099092

/-- `C(col(n), row(n)-col(n))*2^row(n)` -/
def P15444936032417172020.Spec : Prop :=
  ∀ n, (P15444936032417172020.a n : ℤ) = A099092 n

theorem P15444936032417172020.correct : P15444936032417172020.Spec := by
  intro n
  simp only [A099092]

end A099092

/-! ## A099092.P7243880123873841865

`2*(T(n-1,k-1)+2*T(n-2,k-1))` with `a(0)=1`
-/

namespace A099092.P7243880123873841865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2Left a n)

end

end A099092.P7243880123873841865

namespace A099092

/-- `2*(T(n-1,k-1)+2*T(n-2,k-1))` -/
def P7243880123873841865.Spec : Prop :=
  ∀ n, (P7243880123873841865.a n : ℤ) = A099092 n

end A099092

/-! ## A099092.P15687771429861523147

`2*(T(n-1,k-1)-2*(T(n-2,k-1)-2*T(n-2,k-1)))` with `a(0)=1`
-/

namespace A099092.P15687771429861523147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n - 2 * (SequenceMachineLib.triUp2Left a n - 2 * SequenceMachineLib.triUp2Left a n))

end

end A099092.P15687771429861523147

namespace A099092

/-- `2*(T(n-1,k-1)-2*(T(n-2,k-1)-2*T(n-2,k-1)))` -/
def P15687771429861523147.Spec : Prop :=
  ∀ n, P15687771429861523147.a n = A099092 n

end A099092

/-! ## A099092.P17781620627196759931

`2^row(n)*C(col(n), row(n)-col(n))`
-/

namespace A099092.P17781620627196759931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triRow n * Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A099092.P17781620627196759931

namespace A099092

/-- `2^row(n)*C(col(n), row(n)-col(n))` -/
def P17781620627196759931.Spec : Prop :=
  ∀ n, (P17781620627196759931.a n : ℤ) = A099092 n

theorem P17781620627196759931.correct : P17781620627196759931.Spec := by
  intro n
  simp only [A099092, Nat.add_sub_cancel, A099092.P17781620627196759931.a, A099092.P15444936032417172020.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099092

/-! ## A099092.P9033497174033425978

`∏[char[∑[n+1]]+1]*A026729(n)`
-/

namespace A099092.P9033497174033425978
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A026729 n

end

end A099092.P9033497174033425978

namespace A099092

/-- `∏[char[∑[n+1]]+1]*A026729(n)` -/
def P9033497174033425978.Spec : Prop :=
  ∀ n, P9033497174033425978.a n = A099092 n

end A099092

/-! ## A099092.P6434285943723902078

`abs(A109466(n))*∏[char[∑[n+1]]+1]`
-/

namespace A099092.P6434285943723902078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109466 n| * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A099092.P6434285943723902078

namespace A099092

/-- `abs(A109466(n))*∏[char[∑[n+1]]+1]` -/
def P6434285943723902078.Spec : Prop :=
  ∀ n, P6434285943723902078.a n = A099092 n

end A099092

/-! ## A099092.P15948986028680699830

`2^(n-C(∑[char[∑[n]]], 2))*A113953(n)`
-/

namespace A099092.P15948986028680699830
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A113953 n : ℚ)

end

end A099092.P15948986028680699830

namespace A099092

/-- `2^(n-C(∑[char[∑[n]]], 2))*A113953(n)` -/
def P15948986028680699830.Spec : Prop :=
  ∀ n, P15948986028680699830.a n = (A099092 n : ℚ)

end A099092

/-! ## A099092.P17067234343867227714

`(2^(C(comp[∑[n]]-n, 2)-(n+1)))²*A099089(n)`
-/

namespace A099092.P17067234343867227714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ 2 * (A099089 n : ℚ)

end

end A099092.P17067234343867227714

namespace A099092

/-- `(2^(C(comp[∑[n]]-n, 2)-(n+1)))²*A099089(n)` -/
def P17067234343867227714.Spec : Prop :=
  ∀ n, P17067234343867227714.a n = (A099092 n : ℚ)

end A099092

/-! ## A099092.P10884975328211019821

`A052509(n)*A099040(n)`
-/

namespace A099092.P10884975328211019821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n * A099040 n

end

end A099092.P10884975328211019821

namespace A099092

/-- `A052509(n)*A099040(n)` -/
def P10884975328211019821.Spec : Prop :=
  ∀ n, P10884975328211019821.a n = A099092 n

end A099092

/-! ## A099092.P16011122932174453728

`A026729(n)*A137688(n)`
-/

namespace A099092.P16011122932174453728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A137688 n

end

end A099092.P16011122932174453728

namespace A099092

/-- `A026729(n)*A137688(n)` -/
def P16011122932174453728.Spec : Prop :=
  ∀ n, P16011122932174453728.a n = A099092 n

end A099092

/-! ## A099092.P2520440273895308358

`A068913(n)*A099040(n)`
-/

namespace A099092.P2520440273895308358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 n * A099040 n

end

end A099092.P2520440273895308358

namespace A099092

/-- `A068913(n)*A099040(n)` -/
def P2520440273895308358.Spec : Prop :=
  ∀ n, P2520440273895308358.a n = A099092 n

end A099092

/-! ## A099092.P8809553285941138123

`A059268(n)*A113953(n)`
-/

namespace A099092.P8809553285941138123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A113953 n

end

end A099092.P8809553285941138123

namespace A099092

/-- `A059268(n)*A113953(n)` -/
def P8809553285941138123.Spec : Prop :=
  ∀ n, P8809553285941138123.a n = A099092 n

end A099092

/-! ## A099092.P11999602211809554216

`A061930(n)*A113953(n)`
-/

namespace A099092.P11999602211809554216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061930 n * A113953 n

end

end A099092.P11999602211809554216

namespace A099092

/-- `A061930(n)*A113953(n)` -/
def P11999602211809554216.Spec : Prop :=
  ∀ n, P11999602211809554216.a n = A099092 n

end A099092

/-! ## A099092.P18396806007756984215

`A099040(n)*A130321(n)`
-/

namespace A099092.P18396806007756984215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n * A130321 n

end

end A099092.P18396806007756984215

namespace A099092

/-- `A099040(n)*A130321(n)` -/
def P18396806007756984215.Spec : Prop :=
  ∀ n, P18396806007756984215.a n = A099092 n

end A099092

/-! ## A099092.P14753869767670341604

`A099040(n)*A144464(n)`
-/

namespace A099092.P14753869767670341604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n * A144464 n

end

end A099092.P14753869767670341604

namespace A099092

/-- `A099040(n)*A144464(n)` -/
def P14753869767670341604.Spec : Prop :=
  ∀ n, P14753869767670341604.a n = A099092 n

end A099092

/-! ## A099092.P6041646158485442281

`A099089(n)*A152716(n)`
-/

namespace A099092.P6041646158485442281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A152716 n

end

end A099092.P6041646158485442281

namespace A099092

/-- `A099089(n)*A152716(n)` -/
def P6041646158485442281.Spec : Prop :=
  ∀ n, P6041646158485442281.a n = A099092 n

end A099092

/-! ## A099092.P9407989511158453851

`A099089(n)*A262616(n)`
-/

namespace A099092.P9407989511158453851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A262616 n

end

end A099092.P9407989511158453851

namespace A099092

/-- `A099089(n)*A262616(n)` -/
def P9407989511158453851.Spec : Prop :=
  ∀ n, P9407989511158453851.a n = A099092 n

end A099092

/-! ## A099092.P1024977236740964670

`A099040(n)*A385674(n)`
-/

namespace A099092.P1024977236740964670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099040 n * A385674 n

end

end A099092.P1024977236740964670

namespace A099092

/-- `A099040(n)*A385674(n)` -/
def P1024977236740964670.Spec : Prop :=
  ∀ n, P1024977236740964670.a n = A099092 n

end A099092

/-! ## A099092.P10357418092028516549

`A052509(n)²*A099089(n)`
-/

namespace A099092.P10357418092028516549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n ^ 2 * A099089 n

end

end A099092.P10357418092028516549

namespace A099092

/-- `A052509(n)²*A099089(n)` -/
def P10357418092028516549.Spec : Prop :=
  ∀ n, P10357418092028516549.a n = A099092 n

end A099092

/-!
# A099093: Riordan array (1, 3+3*x).

The programs for A099093, the canonical program `A099093.P10696492888509174617` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099093 has offset 0).

The definition of A099093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099093.P8795097288429765727

`3*(T(n-1,k-1)+T(n-2,k-1))` with `a(0)=1`
-/

namespace A099093.P8795097288429765727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n)

end

end A099093.P8795097288429765727

namespace A099093

/-- `3*(T(n-1,k-1)+T(n-2,k-1))` -/
def P8795097288429765727.Spec : Prop :=
  ∀ n, (P8795097288429765727.a n : ℤ) = A099093 n

end A099093

/-! ## A099093.P10696492888509174617

`C(col(n), row(n)-col(n))*3^col(n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099093

/-- `C(col(n), row(n)-col(n))*3^col(n)` -/
def P10696492888509174617.Spec : Prop :=
  ∀ n, (P10696492888509174617.a n : ℤ) = A099093 n

theorem P10696492888509174617.correct : P10696492888509174617.Spec := by
  intro n
  simp only [A099093]

end A099093

/-! ## A099093.P13263842068305472464

`3^(C(comp[∑[n]]-n, 2)-(n+1))*A099097(n)`
-/

namespace A099093.P13263842068305472464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A099097 n : ℚ)

end

end A099093.P13263842068305472464

namespace A099093

/-- `3^(C(comp[∑[n]]-n, 2)-(n+1))*A099097(n)` -/
def P13263842068305472464.Spec : Prop :=
  ∀ n, P13263842068305472464.a n = (A099093 n : ℚ)

end A099093

/-! ## A099093.P15757593892520743036

`A099097(n)*A140303(n)`
-/

namespace A099093.P15757593892520743036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A140303 n

end

end A099093.P15757593892520743036

namespace A099093

/-- `A099097(n)*A140303(n)` -/
def P15757593892520743036.Spec : Prop :=
  ∀ n, P15757593892520743036.a n = A099093 n

end A099093

/-! ## A099093.P9115563511338729027

`A099097(n)*A152714(n)`
-/

namespace A099093.P9115563511338729027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A152714 n

end

end A099093.P9115563511338729027

namespace A099093

/-- `A099097(n)*A152714(n)` -/
def P9115563511338729027.Spec : Prop :=
  ∀ n, P9115563511338729027.a n = A099093 n

end A099093

/-! ## A099093.P5408207180544289151

`3^A002262(n)*A026729(n)`
-/

namespace A099093.P5408207180544289151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A026729 n : ℚ)

end

end A099093.P5408207180544289151

namespace A099093

/-- `3^A002262(n)*A026729(n)` -/
def P5408207180544289151.Spec : Prop :=
  ∀ n, P5408207180544289151.a n = (A099093 n : ℚ)

end A099093

/-! ## A099093.P7013704306070960122

`3^A025581(n)*A099097(n)`
-/

namespace A099093.P7013704306070960122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025581 n : ℤ) * (A099097 n : ℚ)

end

end A099093.P7013704306070960122

namespace A099093

/-- `3^A025581(n)*A099097(n)` -/
def P7013704306070960122.Spec : Prop :=
  ∀ n, P7013704306070960122.a n = (A099093 n : ℚ)

end A099093

/-! ## A099093.P4503154830546688613

`A000244(A002262(n))*A026729(n)`
-/

namespace A099093.P4503154830546688613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A026729 n

end

end A099093.P4503154830546688613

namespace A099093

/-- `A000244(A002262(n))*A026729(n)` -/
def P4503154830546688613.Spec : Prop :=
  ∀ n, P4503154830546688613.a n = A099093 n

end A099093

/-! ## A099093.P10654930999727762638

`A013610(n)/A007318(n)*A026729(n)`
-/

namespace A099093.P10654930999727762638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A007318 n : ℚ) * (A026729 n : ℚ)

end

end A099093.P10654930999727762638

namespace A099093

/-- `A013610(n)/A007318(n)*A026729(n)` -/
def P10654930999727762638.Spec : Prop :=
  ∀ n, P10654930999727762638.a n = (A099093 n : ℚ)

end A099093

/-! ## A099093.P12564560217443228041

`A027465(n)/A007318(n)*A099097(n)`
-/

namespace A099093.P12564560217443228041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A007318 n : ℚ) * (A099097 n : ℚ)

end

end A099093.P12564560217443228041

namespace A099093

/-- `A027465(n)/A007318(n)*A099097(n)` -/
def P12564560217443228041.Spec : Prop :=
  ∀ n, P12564560217443228041.a n = (A099093 n : ℚ)

end A099093

/-! ## A099093.P6714200477197053890

`A026729(n)*A152714(A245300(n))`
-/

namespace A099093.P6714200477197053890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A152714 (A245300 n).toNat

end

end A099093.P6714200477197053890

namespace A099093

/-- `A026729(n)*A152714(A245300(n))` -/
def P6714200477197053890.Spec : Prop :=
  ∀ n, P6714200477197053890.a n = A099093 n

end A099093

/-! ## A099093.P11421340749219218750

`A003959(A059268(n))*A026729(n)`
-/

namespace A099093.P11421340749219218750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A026729 n

end

end A099093.P11421340749219218750

namespace A099093

/-- `A003959(A059268(n))*A026729(n)` -/
def P11421340749219218750.Spec : Prop :=
  ∀ n, P11421340749219218750.a n = A099093 n

end A099093

/-!
# A099094: a(n) = 3*a(n-2) + 3*a(n-3), a(0)=1, a(1)=0, a(2)=3.

The programs for A099094, the canonical program `A099094.P7447491526449205621` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099094 has offset 0).

The definition of A099094 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)+3*a(n-3)` (program `A099094.P7447491526449205621`, by `A099094.P7447491526449205621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099094.P3207049388456688862

`ogf(1/(1-3x^2-3x^3))`
-/

namespace A099094.P3207049388456688862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3, -3] n

end

end A099094.P3207049388456688862

namespace A099094

/-- `ogf(1/(1-3x^2-3x^3))` -/
def P3207049388456688862.Spec : Prop :=
  ∀ n, P3207049388456688862.a n = A099094 n

end A099094

/-! ## A099094.P7447491526449205621

`3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099094

/-- `3*a(n-2)+3*a(n-3)` -/
def P7447491526449205621.Spec : Prop :=
  ∀ n, (P7447491526449205621.a n : ℤ) = A099094 n

theorem P7447491526449205621.correct : P7447491526449205621.Spec := by
  intro n
  simp only [A099094]

end A099094

/-! ## A099094.P962779047175713395

`3*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A099094.P962779047175713395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  3 * (a (n - 2) + a (n - 3))

end

end A099094.P962779047175713395

namespace A099094

/-- `3*(a(n-2)+a(n-3))` -/
def P962779047175713395.Spec : Prop :=
  ∀ n, (P962779047175713395.a n : ℤ) = A099094 n

theorem P962779047175713395.correct : P962779047175713395.Spec := by
  intro n
  simp only [A099094, Nat.add_sub_cancel, A099094.P962779047175713395.a, A099094.P7447491526449205621.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A099094

/-! ## A099094.P5958400091811536657

`a(n-1)-3*(a(n-4)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=3, a(3)=3`
-/

namespace A099094.P5958400091811536657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 3] fun n a =>
  a (n - 1) - 3 * (a (n - 4) - a (n - 2))

end

end A099094.P5958400091811536657

namespace A099094

/-- `a(n-1)-3*(a(n-4)-a(n-2))` -/
def P5958400091811536657.Spec : Prop :=
  ∀ n, P5958400091811536657.a n = A099094 n

end A099094

/-! ## A099094.P647688341019187616

`A008486(a(n-2)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A099094.P647688341019187616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  A008486 (a (n - 2) + a (n - 3)).toNat

end

end A099094.P647688341019187616

namespace A099094

/-- `A008486(a(n-2)+a(n-3))` -/
def P647688341019187616.Spec : Prop :=
  ∀ n, P647688341019187616.a n = A099094 n

end A099094

/-!
# A099095: Riordan array (1,3+2x).

The programs for A099095, the canonical program `A099095.P14626324855763644383` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099095 has offset 0).

The definition of A099095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099095.P4147739158330940548

`3*T(n-1,k-1)+2*T(n-2,k-1)` with `a(0)=1`
-/

namespace A099095.P4147739158330940548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp2Left a n

end

end A099095.P4147739158330940548

namespace A099095

/-- `3*T(n-1,k-1)+2*T(n-2,k-1)` -/
def P4147739158330940548.Spec : Prop :=
  ∀ n, (P4147739158330940548.a n : ℤ) = A099095 n

end A099095

/-! ## A099095.P14626324855763644383

`C(col(n), row(n)-col(n))*3^col(n)*(2/3)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099095

/-- `C(col(n), row(n)-col(n))*3^col(n)*(2/3)^(row(n)-col(n))` -/
def P14626324855763644383.Spec : Prop :=
  ∀ n, P14626324855763644383.a n = (A099095 n : ℚ)

end A099095

/-! ## A099095.P17429950336664471595

`2*T(n-2,k-1)+3*T(n-1,k-1)` with `a(0)=1`
-/

namespace A099095.P17429950336664471595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * SequenceMachineLib.triUp2Left a n + 3 * SequenceMachineLib.triUpLeft a n

end

end A099095.P17429950336664471595

namespace A099095

/-- `2*T(n-2,k-1)+3*T(n-1,k-1)` -/
def P17429950336664471595.Spec : Prop :=
  ∀ n, (P17429950336664471595.a n : ℤ) = A099095 n

end A099095

/-! ## A099095.P1833750318230673176

`C(col(n), row(n)-col(n))*3^(col(n)-(row(n)-col(n)))*2^(row(n)-col(n))`
-/

namespace A099095.P1833750318230673176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) * (3 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ) * (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A099095.P1833750318230673176

namespace A099095

/-- `C(col(n), row(n)-col(n))*3^(col(n)-(row(n)-col(n)))*2^(row(n)-col(n))` -/
def P1833750318230673176.Spec : Prop :=
  ∀ n, P1833750318230673176.a n = (A099095 n : ℚ)

end A099095

/-! ## A099095.P7843583291157571163

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A099097(n)`
-/

namespace A099095.P7843583291157571163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A099097 n : ℚ)

end

end A099095.P7843583291157571163

namespace A099095

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A099097(n)` -/
def P7843583291157571163.Spec : Prop :=
  ∀ n, P7843583291157571163.a n = (A099095 n : ℚ)

end A099095

/-! ## A099095.P11983905011562369699

`A052509(n)*A099097(n)`
-/

namespace A099095.P11983905011562369699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n * A099097 n

end

end A099095.P11983905011562369699

namespace A099095

/-- `A052509(n)*A099097(n)` -/
def P11983905011562369699.Spec : Prop :=
  ∀ n, P11983905011562369699.a n = A099095 n

end A099095

/-! ## A099095.P12139426202422071513

`A068913(n)*A099097(n)`
-/

namespace A099095.P12139426202422071513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068913 n * A099097 n

end

end A099095.P12139426202422071513

namespace A099095

/-- `A068913(n)*A099097(n)` -/
def P12139426202422071513.Spec : Prop :=
  ∀ n, P12139426202422071513.a n = A099095 n

end A099095

/-! ## A099095.P17860397901266749864

`A099097(n)*A130321(n)`
-/

namespace A099095.P17860397901266749864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A130321 n

end

end A099095.P17860397901266749864

namespace A099095

/-- `A099097(n)*A130321(n)` -/
def P17860397901266749864.Spec : Prop :=
  ∀ n, P17860397901266749864.a n = A099095 n

end A099095

/-! ## A099095.P9662696789182030873

`A099097(n)*A144464(n)`
-/

namespace A099095.P9662696789182030873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A144464 n

end

end A099095.P9662696789182030873

namespace A099095

/-- `A099097(n)*A144464(n)` -/
def P9662696789182030873.Spec : Prop :=
  ∀ n, P9662696789182030873.a n = A099095 n

end A099095

/-! ## A099095.P17526855138885098984

`A099097(n)*A385674(n)`
-/

namespace A099095.P17526855138885098984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A385674 n

end

end A099095.P17526855138885098984

namespace A099095

/-- `A099097(n)*A385674(n)` -/
def P17526855138885098984.Spec : Prop :=
  ∀ n, P17526855138885098984.a n = A099095 n

end A099095

/-! ## A099095.P128050862851682592

`lcm(A099097(n), A110509(n))`
-/

namespace A099095.P128050862851682592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099097 n) (A110509 n)

end

end A099095.P128050862851682592

namespace A099095

/-- `lcm(A099097(n), A110509(n))` -/
def P128050862851682592.Spec : Prop :=
  ∀ n, (P128050862851682592.a n : ℤ) = A099095 n

end A099095

/-! ## A099095.P17103458021351594815

`A057728(n+1)*A099097(n)`
-/

namespace A099095.P17103458021351594815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A099097 n

end

end A099095.P17103458021351594815

namespace A099095

/-- `A057728(n+1)*A099097(n)` -/
def P17103458021351594815.Spec : Prop :=
  ∀ n, P17103458021351594815.a n = A099095 n

end A099095

/-! ## A099095.P13232153287815288329

`A062001(n+1)*A099097(n)`
-/

namespace A099095.P13232153287815288329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062001 (n + 1) * A099097 n

end

end A099095.P13232153287815288329

namespace A099095

/-- `A062001(n+1)*A099097(n)` -/
def P13232153287815288329.Spec : Prop :=
  ∀ n, P13232153287815288329.a n = A099095 n

end A099095

/-! ## A099095.P6280444267298617036

`A099097(n)*A152072(n+1)`
-/

namespace A099095.P6280444267298617036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A152072 (n + 1)

end

end A099095.P6280444267298617036

namespace A099095

/-- `A099097(n)*A152072(n+1)` -/
def P6280444267298617036.Spec : Prop :=
  ∀ n, P6280444267298617036.a n = A099095 n

end A099095

/-! ## A099095.P7242132643801423189

`A099097(n)*A175331(n+2)`
-/

namespace A099095.P7242132643801423189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A175331 (n + 2)

end

end A099095.P7242132643801423189

namespace A099095

/-- `A099097(n)*A175331(n+2)` -/
def P7242132643801423189.Spec : Prop :=
  ∀ n, P7242132643801423189.a n = A099095 n

end A099095

/-! ## A099095.P2899982412962926491

`2*A209996(n+1)-A209998(n+1)`
-/

namespace A099095.P2899982412962926491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209996 (n + 1) - A209998 (n + 1)

end

end A099095.P2899982412962926491

namespace A099095

/-- `2*A209996(n+1)-A209998(n+1)` -/
def P2899982412962926491.Spec : Prop :=
  ∀ n, P2899982412962926491.a n = A099095 n

end A099095

/-! ## A099095.P14216824658637691361

`A099097(n)*A209434(n)`
-/

namespace A099095.P14216824658637691361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A209434 n

end

end A099095.P14216824658637691361

namespace A099095

/-- `A099097(n)*A209434(n)` -/
def P14216824658637691361.Spec : Prop :=
  ∀ n, P14216824658637691361.a n = A099095 n

end A099095

/-! ## A099095.P15691867438123511788

`A099097(n)*A209438(n)`
-/

namespace A099095.P15691867438123511788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A209438 n

end

end A099095.P15691867438123511788

namespace A099095

/-- `A099097(n)*A209438(n)` -/
def P15691867438123511788.Spec : Prop :=
  ∀ n, P15691867438123511788.a n = A099095 n

end A099095

/-! ## A099095.P7668456515638950911

`A099097(n)*A209439(n)`
-/

namespace A099095.P7668456515638950911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099097 n * A209439 n

end

end A099095.P7668456515638950911

namespace A099095

/-- `A099097(n)*A209439(n)` -/
def P7668456515638950911.Spec : Prop :=
  ∀ n, P7668456515638950911.a n = A099095 n

end A099095

/-!
# A099096: Riordan array (1,2-x).

The programs for A099096, the canonical program `A099096.P11448432001605555125` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099096 has offset 0).

The definition of A099096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099096.P11448432001605555125

`2*T(n-1,k-1)-T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099096

/-- `2*T(n-1,k-1)-T(n-2,k-1)` -/
def P11448432001605555125.Spec : Prop :=
  ∀ n, P11448432001605555125.a n = A099096 n

theorem P11448432001605555125.correct : P11448432001605555125.Spec := by
  intro n
  simp only [A099096]

end A099096

/-! ## A099096.P1028392586388151492

`(-1)^(row(n)-col(n))*2^(col(n)-(row(n)-col(n)))*C(col(n), row(n)-col(n))`
-/

namespace A099096.P1028392586388151492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ) * (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A099096.P1028392586388151492

namespace A099096

/-- `(-1)^(row(n)-col(n))*2^(col(n)-(row(n)-col(n)))*C(col(n), row(n)-col(n))` -/
def P1028392586388151492.Spec : Prop :=
  ∀ n, P1028392586388151492.a n = (A099096 n : ℚ)

end A099096

/-! ## A099096.P10240550018504382056

`A097807(n)*A099089(n)`
-/

namespace A099096.P10240550018504382056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A099089 n

end

end A099096.P10240550018504382056

namespace A099096

/-- `A097807(n)*A099089(n)` -/
def P10240550018504382056.Spec : Prop :=
  ∀ n, P10240550018504382056.a n = A099096 n

end A099096

/-! ## A099096.P12673467143561915557

`A109466(n)*A116588(n)`
-/

namespace A099096.P12673467143561915557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A116588 n

end

end A099096.P12673467143561915557

namespace A099096

/-- `A109466(n)*A116588(n)` -/
def P12673467143561915557.Spec : Prop :=
  ∀ n, P12673467143561915557.a n = A099096 n

end A099096

/-! ## A099096.P11252923265853592133

`A099089(n)*A128257(n)`
-/

namespace A099096.P11252923265853592133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A128257 n

end

end A099096.P11252923265853592133

namespace A099096

/-- `A099089(n)*A128257(n)` -/
def P11252923265853592133.Spec : Prop :=
  ∀ n, P11252923265853592133.a n = A099096 n

end A099096

/-! ## A099096.P13374746929331746977

`A099089(n)*A187034(n)`
-/

namespace A099096.P13374746929331746977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A187034 n

end

end A099096.P13374746929331746977

namespace A099096

/-- `A099089(n)*A187034(n)` -/
def P13374746929331746977.Spec : Prop :=
  ∀ n, P13374746929331746977.a n = A099096 n

end A099096

/-! ## A099096.P14457824541307691870

`A033999(A025581(n))*A099089(n)`
-/

namespace A099096.P14457824541307691870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A099089 n

end

end A099096.P14457824541307691870

namespace A099096

/-- `A033999(A025581(n))*A099089(n)` -/
def P14457824541307691870.Spec : Prop :=
  ∀ n, P14457824541307691870.a n = A099096 n

end A099096

/-! ## A099096.P4811294663504465235

`A000079(A049581(n))*A109466(n)`
-/

namespace A099096.P4811294663504465235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A049581 n).toNat * A109466 n

end

end A099096.P4811294663504465235

namespace A099096

/-- `A000079(A049581(n))*A109466(n)` -/
def P4811294663504465235.Spec : Prop :=
  ∀ n, P4811294663504465235.a n = A099096 n

end A099096

/-! ## A099096.P8050877471632093565

`A009531(A099375(n))*A099089(n)`
-/

namespace A099096.P8050877471632093565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A099089 n

end

end A099096.P8050877471632093565

namespace A099096

/-- `A009531(A099375(n))*A099089(n)` -/
def P8050877471632093565.Spec : Prop :=
  ∀ n, P8050877471632093565.a n = A099096 n

end A099096

/-! ## A099096.P1485789428926771024

`A059268(A132118(n+1))*A109466(n)`
-/

namespace A099096.P1485789428926771024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A132118 (n + 1)).toNat * A109466 n

end

end A099096.P1485789428926771024

namespace A099096

/-- `A059268(A132118(n+1))*A109466(n)` -/
def P1485789428926771024.Spec : Prop :=
  ∀ n, P1485789428926771024.a n = A099096 n

end A099096

/-! ## A099096.P1554284824768994950

`A053117(A185180(n+1)-1)`
-/

namespace A099096.P1554284824768994950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053117 (A185180 (n + 1) - 1).toNat

end

end A099096.P1554284824768994950

namespace A099096

/-- `A053117(A185180(n+1)-1)` -/
def P1554284824768994950.Spec : Prop :=
  ∀ n, P1554284824768994950.a n = A099096 n

end A099096

/-! ## A099096.P6773278364172585876

`A059268(n)*A109466(n)/A209438(n)`
-/

namespace A099096.P6773278364172585876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n * A109466 n : ℚ) / (A209438 n : ℚ)

end

end A099096.P6773278364172585876

namespace A099096

/-- `A059268(n)*A109466(n)/A209438(n)` -/
def P6773278364172585876.Spec : Prop :=
  ∀ n, P6773278364172585876.a n = (A099096 n : ℚ)

end A099096

/-! ## A099096.P8549096587208022999

`A099089(n)*A115660(A057728(n+1))`
-/

namespace A099096.P8549096587208022999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A115660 (A057728 (n + 1)).toNat

end

end A099096.P8549096587208022999

namespace A099096

/-- `A099089(n)*A115660(A057728(n+1))` -/
def P8549096587208022999.Spec : Prop :=
  ∀ n, P8549096587208022999.a n = A099096 n

end A099096

/-! ## A099096.P18390910618326165683

`A099089(n)*A114116(n)`
-/

namespace A099096.P18390910618326165683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A114116 n

end

end A099096.P18390910618326165683

namespace A099096

/-- `A099089(n)*A114116(n)` -/
def P18390910618326165683.Spec : Prop :=
  ∀ n, P18390910618326165683.a n = A099096 n

end A099096

/-! ## A099096.P16334703927539223130

`A008836(A130321(n))*A099089(n)`
-/

namespace A099096.P16334703927539223130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A099089 n

end

end A099096.P16334703927539223130

namespace A099096

/-- `A008836(A130321(n))*A099089(n)` -/
def P16334703927539223130.Spec : Prop :=
  ∀ n, P16334703927539223130.a n = A099096 n

end A099096

/-!
# A099097: Riordan array (1, 3+x).

The programs for A099097, the canonical program `A099097.P12050509495006175844` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099097 has offset 0).

The definition of A099097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099097.P3200482976718620418

`3*T(n-1,k-1)+T(n-2,k-1)` with `a(0)=1`
-/

namespace A099097.P3200482976718620418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2Left a n

end

end A099097.P3200482976718620418

namespace A099097

/-- `3*T(n-1,k-1)+T(n-2,k-1)` -/
def P3200482976718620418.Spec : Prop :=
  ∀ n, (P3200482976718620418.a n : ℤ) = A099097 n

end A099097

/-! ## A099097.P12050509495006175844

`C(col(n), row(n)-col(n))*3^col(n)*(1/3)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099097

/-- `C(col(n), row(n)-col(n))*3^col(n)*(1/3)^(row(n)-col(n))` -/
def P12050509495006175844.Spec : Prop :=
  ∀ n, P12050509495006175844.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P7927818459335095208

`C(col(n), row(n)-col(n))*3^(col(n)-(row(n)-col(n)))`
-/

namespace A099097.P7927818459335095208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) * (3 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℤ)

end

end A099097.P7927818459335095208

namespace A099097

/-- `C(col(n), row(n)-col(n))*3^(col(n)-(row(n)-col(n)))` -/
def P7927818459335095208.Spec : Prop :=
  ∀ n, P7927818459335095208.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P8708078651468017156

`A099095(n)/2^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A099097.P8708078651468017156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A099097.P8708078651468017156

namespace A099097

/-- `A099095(n)/2^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P8708078651468017156.Spec : Prop :=
  ∀ n, P8708078651468017156.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P15003867168667101908

`A099095(n)/A052509(n)`
-/

namespace A099097.P15003867168667101908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A052509 n : ℚ)

end

end A099097.P15003867168667101908

namespace A099097

/-- `A099095(n)/A052509(n)` -/
def P15003867168667101908.Spec : Prop :=
  ∀ n, P15003867168667101908.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P6975511765318805005

`A099095(n)/A130321(n)`
-/

namespace A099097.P6975511765318805005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A130321 n : ℚ)

end

end A099097.P6975511765318805005

namespace A099097

/-- `A099095(n)/A130321(n)` -/
def P6975511765318805005.Spec : Prop :=
  ∀ n, P6975511765318805005.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P7722630247010984773

`A099093(n)/A140303(n)`
-/

namespace A099097.P7722630247010984773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099093 n : ℚ) / (A140303 n : ℚ)

end

end A099097.P7722630247010984773

namespace A099097

/-- `A099093(n)/A140303(n)` -/
def P7722630247010984773.Spec : Prop :=
  ∀ n, P7722630247010984773.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P14521549132059799214

`A099095(n)/A144464(n)`
-/

namespace A099097.P14521549132059799214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A144464 n : ℚ)

end

end A099097.P14521549132059799214

namespace A099097

/-- `A099095(n)/A144464(n)` -/
def P14521549132059799214.Spec : Prop :=
  ∀ n, P14521549132059799214.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P11978787075259121898

`A099093(n)/A152714(n)`
-/

namespace A099097.P11978787075259121898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099093 n : ℚ) / (A152714 n : ℚ)

end

end A099097.P11978787075259121898

namespace A099097

/-- `A099093(n)/A152714(n)` -/
def P11978787075259121898.Spec : Prop :=
  ∀ n, P11978787075259121898.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P18236493997336048727

`A099095(n)/A385674(n)`
-/

namespace A099097.P18236493997336048727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A385674 n : ℚ)

end

end A099097.P18236493997336048727

namespace A099097

/-- `A099095(n)/A385674(n)` -/
def P18236493997336048727.Spec : Prop :=
  ∀ n, P18236493997336048727.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P11321792246922312308

`gcd(A099093(n), A099095(n))`
-/

namespace A099097.P11321792246922312308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099093 n) (A099095 n)

end

end A099097.P11321792246922312308

namespace A099097

/-- `gcd(A099093(n), A099095(n))` -/
def P11321792246922312308.Spec : Prop :=
  ∀ n, (P11321792246922312308.a n : ℤ) = A099097 n

end A099097

/-! ## A099097.P8152352132056186818

`A099095(n)/A057728(n+1)`
-/

namespace A099097.P8152352132056186818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A099097.P8152352132056186818

namespace A099097

/-- `A099095(n)/A057728(n+1)` -/
def P8152352132056186818.Spec : Prop :=
  ∀ n, P8152352132056186818.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P4030394771383476024

`A099095(n)/A062001(n+1)`
-/

namespace A099097.P4030394771383476024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A062001 (n + 1) : ℚ)

end

end A099097.P4030394771383476024

namespace A099097

/-- `A099095(n)/A062001(n+1)` -/
def P4030394771383476024.Spec : Prop :=
  ∀ n, P4030394771383476024.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P16112738164511351773

`A099095(n)/A152072(n+1)`
-/

namespace A099097.P16112738164511351773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A152072 (n + 1) : ℚ)

end

end A099097.P16112738164511351773

namespace A099097

/-- `A099095(n)/A152072(n+1)` -/
def P16112738164511351773.Spec : Prop :=
  ∀ n, P16112738164511351773.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P6668236635072503447

`A099095(n)/A175331(n+2)`
-/

namespace A099097.P6668236635072503447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A175331 (n + 2) : ℚ)

end

end A099097.P6668236635072503447

namespace A099097

/-- `A099095(n)/A175331(n+2)` -/
def P6668236635072503447.Spec : Prop :=
  ∀ n, P6668236635072503447.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P8261118669691220561

`A026729(n)/3^A114327(n)`
-/

namespace A099097.P8261118669691220561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026729 n : ℚ) / (3 : ℚ) ^ (A114327 n : ℤ)

end

end A099097.P8261118669691220561

namespace A099097

/-- `A026729(n)/3^A114327(n)` -/
def P8261118669691220561.Spec : Prop :=
  ∀ n, P8261118669691220561.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P598840586196083363

`A000244(A049581(n))*A026729(n)`
-/

namespace A099097.P598840586196083363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A049581 n).toNat * A026729 n

end

end A099097.P598840586196083363

namespace A099097

/-- `A000244(A049581(n))*A026729(n)` -/
def P598840586196083363.Spec : Prop :=
  ∀ n, P598840586196083363.a n = A099097 n

end A099097

/-! ## A099097.P9625536911343012985

`A013610(n)/A027465(n)*A026729(n)`
-/

namespace A099097.P9625536911343012985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013610 n : ℚ) / (A027465 n : ℚ) * (A026729 n : ℚ)

end

end A099097.P9625536911343012985

namespace A099097

/-- `A013610(n)/A027465(n)*A026729(n)` -/
def P9625536911343012985.Spec : Prop :=
  ∀ n, P9625536911343012985.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P700911358105252604

`3^A002262(n)*A026729(n)/A152714(n)`
-/

namespace A099097.P700911358105252604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A026729 n : ℚ) / (A152714 n : ℚ)

end

end A099097.P700911358105252604

namespace A099097

/-- `3^A002262(n)*A026729(n)/A152714(n)` -/
def P700911358105252604.Spec : Prop :=
  ∀ n, P700911358105252604.a n = (A099097 n : ℚ)

end A099097

/-! ## A099097.P4514173988083218278

`A099095(n)/A209434(n)`
-/

namespace A099097.P4514173988083218278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099095 n : ℚ) / (A209434 n : ℚ)

end

end A099097.P4514173988083218278

namespace A099097

/-- `A099095(n)/A209434(n)` -/
def P4514173988083218278.Spec : Prop :=
  ∀ n, P4514173988083218278.a n = (A099097 n : ℚ)

end A099097

/-!
# A099098: Quadrisection of a Padovan sequence.

The programs for A099098, the canonical program `A099098.P4713977623303336351` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099098 has offset 0).

The definition of A099098 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099098.P5257267509134672661

`ogf((1-x-x^2)/(1-2x-3x^2-x^3))`
-/

namespace A099098.P5257267509134672661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, -3, -1] n

end

end A099098.P5257267509134672661

namespace A099098

/-- `ogf((1-x-x^2)/(1-2x-3x^2-x^3))` -/
def P5257267509134672661.Spec : Prop :=
  ∀ n, P5257267509134672661.a n = A099098 n

end A099098

/-! ## A099098.P4713977623303336351

`2*a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A099098

/-- `2*a(n-1)+3*a(n-2)+a(n-3)` -/
def P4713977623303336351.Spec : Prop :=
  ∀ n, (P4713977623303336351.a n : ℤ) = A099098 n

theorem P4713977623303336351.correct : P4713977623303336351.Spec := by
  intro n
  simp only [A099098]

end A099098

/-! ## A099098.P8105335537615460982

`A000931(4*n+3)`
-/

namespace A099098.P8105335537615460982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (4 * n + 3)

end

end A099098.P8105335537615460982

namespace A099098

/-- `A000931(4*n+3)` -/
def P8105335537615460982.Spec : Prop :=
  ∀ n, P8105335537615460982.a n = A099098 n

end A099098

/-! ## A099098.P6478054133558551324

`A182097(4*n)`
-/

namespace A099098.P6478054133558551324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (4 * n)

end

end A099098.P6478054133558551324

namespace A099098

/-- `A182097(4*n)` -/
def P6478054133558551324.Spec : Prop :=
  ∀ n, P6478054133558551324.a n = A099098 n

end A099098

/-! ## A099098.P16158652740715298738

`A005251(Δ[n²])`
-/

namespace A099098.P16158652740715298738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099098.P16158652740715298738

namespace A099098

/-- `A005251(Δ[n²])` -/
def P16158652740715298738.Spec : Prop :=
  ∀ n, P16158652740715298738.a n = A099098 n

end A099098

/-! ## A099098.P12420797878763907612

`A052954(4*n)-1`
-/

namespace A099098.P12420797878763907612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (4 * n) - 1

end

end A099098.P12420797878763907612

namespace A099098

/-- `A052954(4*n)-1` -/
def P12420797878763907612.Spec : Prop :=
  ∀ n, P12420797878763907612.a n = A099098 n

end A099098

/-! ## A099098.P12915276342668010280

`A078027(4*n+5)`
-/

namespace A099098.P12915276342668010280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (4 * n + 5)

end

end A099098.P12915276342668010280

namespace A099098

/-- `A078027(4*n+5)` -/
def P12915276342668010280.Spec : Prop :=
  ∀ n, P12915276342668010280.a n = A099098 n

end A099098

/-! ## A099098.P7401482797977771492

`A114775(8*n+2)`
-/

namespace A099098.P7401482797977771492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (8 * n + 2)

end

end A099098.P7401482797977771492

namespace A099098

/-- `A114775(8*n+2)` -/
def P7401482797977771492.Spec : Prop :=
  ∀ n, P7401482797977771492.a n = A099098 n

end A099098

/-! ## A099098.P4546729579766008245

`A133034(3*(n+2)+n+1)`
-/

namespace A099098.P4546729579766008245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * (n + 2) + (n + 1))

end

end A099098.P4546729579766008245

namespace A099098

/-- `A133034(3*(n+2)+n+1)` -/
def P4546729579766008245.Spec : Prop :=
  ∀ n, P4546729579766008245.a n = A099098 n

end A099098

/-! ## A099098.P2143584834416810634

`A334293(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A099098.P2143584834416810634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A334293 (n + 1) - a (n - 1)

end

end A099098.P2143584834416810634

namespace A099098

/-- `A334293(n+1)-a(n-1)` -/
def P2143584834416810634.Spec : Prop :=
  ∀ n, P2143584834416810634.a n = A099098 n

end A099098

/-! ## A099098.P4004334406096060241

`A005314(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A099098.P4004334406096060241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005314 (2 * n) - a (n - 1)

end

end A099098.P4004334406096060241

namespace A099098

/-- `A005314(2*n)-a(n-1)` -/
def P4004334406096060241.Spec : Prop :=
  ∀ n, P4004334406096060241.a n = A099098 n

end A099098

/-! ## A099098.P446745038462215659

`A134816(A131098(n+1))`
-/

namespace A099098.P446745038462215659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A131098 (n + 1)).toNat

end

end A099098.P446745038462215659

namespace A099098

/-- `A134816(A131098(n+1))` -/
def P446745038462215659.Spec : Prop :=
  ∀ n, P446745038462215659.a n = A099098 n

end A099098

/-! ## A099098.P15186869135297325496

`A334293(n)+A005251(2*n)`
-/

namespace A099098.P15186869135297325496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334293 n + A005251 (2 * n)

end

end A099098.P15186869135297325496

namespace A099098

/-- `A334293(n)+A005251(2*n)` -/
def P15186869135297325496.Spec : Prop :=
  ∀ n, P15186869135297325496.a n = A099098 n

end A099098

/-! ## A099098.P7237720418854118879

`A134816(A004278(2*(n+1))-1)`
-/

namespace A099098.P7237720418854118879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (A004278 (2 * (n + 1)) - 1).toNat

end

end A099098.P7237720418854118879

namespace A099098

/-- `A134816(A004278(2*(n+1))-1)` -/
def P7237720418854118879.Spec : Prop :=
  ∀ n, P7237720418854118879.a n = A099098 n

end A099098

/-! ## A099098.P4686847943771315325

`A049853(2*n)-A005251(2*n)`
-/

namespace A099098.P4686847943771315325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 (2 * n) - A005251 (2 * n)

end

end A099098.P4686847943771315325

namespace A099098

/-- `A049853(2*n)-A005251(2*n)` -/
def P4686847943771315325.Spec : Prop :=
  ∀ n, P4686847943771315325.a n = A099098 n

end A099098

/-! ## A099098.P12584090085290978566

`A005251(2*n+1)*A057427(n+1)`
-/

namespace A099098.P12584090085290978566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * n + 1) * A057427 (n + 1)

end

end A099098.P12584090085290978566

namespace A099098

/-- `A005251(2*n+1)*A057427(n+1)` -/
def P12584090085290978566.Spec : Prop :=
  ∀ n, P12584090085290978566.a n = A099098 n

end A099098

/-! ## A099098.P8166205623022109042

`A005251(2*n+1)+A000035(2*n)`
-/

namespace A099098.P8166205623022109042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (2 * n + 1) + A000035 (2 * n)

end

end A099098.P8166205623022109042

namespace A099098

/-- `A005251(2*n+1)+A000035(2*n)` -/
def P8166205623022109042.Spec : Prop :=
  ∀ n, P8166205623022109042.a n = A099098 n

end A099098

/-! ## A099098.P8694473303212290236

`A057428(n+1)²*A005251(2*n+1)`
-/

namespace A099098.P8694473303212290236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) ^ 2 * A005251 (2 * n + 1)

end

end A099098.P8694473303212290236

namespace A099098

/-- `A057428(n+1)²*A005251(2*n+1)` -/
def P8694473303212290236.Spec : Prop :=
  ∀ n, P8694473303212290236.a n = A099098 n

end A099098

/-! ## A099098.P16612188884088616036

`A099529(2*n)+A005251(2*n)`
-/

namespace A099098.P16612188884088616036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099529 (2 * n) + A005251 (2 * n)

end

end A099098.P16612188884088616036

namespace A099098

/-- `A099529(2*n)+A005251(2*n)` -/
def P16612188884088616036.Spec : Prop :=
  ∀ n, P16612188884088616036.a n = A099098 n

end A099098

/-! ## A099098.P5524139961091961401

`A005314(2*n+1)-A334293(n+1)`
-/

namespace A099098.P5524139961091961401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (2 * n + 1) - A334293 (n + 1)

end

end A099098.P5524139961091961401

namespace A099098

/-- `A005314(2*n+1)-A334293(n+1)` -/
def P5524139961091961401.Spec : Prop :=
  ∀ n, P5524139961091961401.a n = A099098 n

end A099098

/-!
# A099099: Quadrisection of a generalized Padovan sequence.

The programs for A099099, the canonical program `A099099.P5331076617350821600` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099099 has offset 0).

The definition of A099099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099099.P15295301218208059507

`ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-5x^3+x^4))`
-/

namespace A099099.P15295301218208059507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -4, 6, -5, 1] n

end

end A099099.P15295301218208059507

namespace A099099

/-- `ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-5x^3+x^4))` -/
def P15295301218208059507.Spec : Prop :=
  ∀ n, P15295301218208059507.a n = A099099 n

end A099099

/-! ## A099099.P5331076617350821600

`A017817(4*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A099099

/-- `A017817(4*n)` -/
def P5331076617350821600.Spec : Prop :=
  ∀ n, P5331076617350821600.a n = A099099 n

theorem P5331076617350821600.correct : P5331076617350821600.Spec := by
  intro n
  simp only [A099099]

end A099099

/-! ## A099099.P7658719589432903167

`4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A099099.P7658719589432903167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A099099.P7658719589432903167

namespace A099099

/-- `4*a(n-1)-6*a(n-2)+5*a(n-3)-a(n-4)` -/
def P7658719589432903167.Spec : Prop :=
  ∀ n, P7658719589432903167.a n = A099099 n

end A099099

/-! ## A099099.P3397883138081554450

`A127838(4*n+5)`
-/

namespace A099099.P3397883138081554450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (4 * n + 5)

end

end A099099.P3397883138081554450

namespace A099099

/-- `A127838(4*n+5)` -/
def P3397883138081554450.Spec : Prop :=
  ∀ n, P3397883138081554450.a n = A099099 n

end A099099

/-! ## A099099.P16713807683320487450

`A062200(abs(2*(1-n)))`
-/

namespace A099099.P16713807683320487450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062200 |2 * (1 - (n : ℤ))|.toNat

end

end A099099.P16713807683320487450

namespace A099099

/-- `A062200(abs(2*(1-n)))` -/
def P16713807683320487450.Spec : Prop :=
  ∀ n, P16713807683320487450.a n = A099099 n

end A099099

/-! ## A099099.P767647320821697711

`A175790(4*n+3)+1`
-/

namespace A099099.P767647320821697711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175790 (4 * n + 3) + 1

end

end A099099.P767647320821697711

namespace A099099

/-- `A175790(4*n+3)+1` -/
def P767647320821697711.Spec : Prop :=
  ∀ n, P767647320821697711.a n = A099099 n

end A099099

/-! ## A099099.P8502595614107138549

`1-A177825(4*n+3)`
-/

namespace A099099.P8502595614107138549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A177825 (4 * n + 3)

end

end A099099.P8502595614107138549

namespace A099099

/-- `1-A177825(4*n+3)` -/
def P8502595614107138549.Spec : Prop :=
  ∀ n, P8502595614107138549.a n = A099099 n

end A099099

/-! ## A099099.P13653293389103807459

`A290998(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A099099.P13653293389103807459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290998 (n - 1) + a (n - 1)

end

end A099099.P13653293389103807459

namespace A099099

/-- `A290998(n-1)+a(n-1)` -/
def P13653293389103807459.Spec : Prop :=
  ∀ n, P13653293389103807459.a n = A099099 n

end A099099

/-! ## A099099.P10013492334190896592

`A017817(A008486(n)+n)+A000007(n)`
-/

namespace A099099.P10013492334190896592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (A008486 n + (n : ℤ)).toNat + A000007 n

end

end A099099.P10013492334190896592

namespace A099099

/-- `A017817(A008486(n)+n)+A000007(n)` -/
def P10013492334190896592.Spec : Prop :=
  ∀ n, P10013492334190896592.a n = A099099 n

end A099099

/-! ## A099099.P16211886125803089163

`A017817(A008706(n)-n)+A000007(n)`
-/

namespace A099099.P16211886125803089163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (A008706 n - (n : ℤ)).toNat + A000007 n

end

end A099099.P16211886125803089163

namespace A099099

/-- `A017817(A008706(n)-n)+A000007(n)` -/
def P16211886125803089163.Spec : Prop :=
  ∀ n, P16211886125803089163.a n = A099099 n

end A099099

/-! ## A099099.P18088021976145235396

`or(A000007(n), A017817(A008587(n)-n))`
-/

namespace A099099.P18088021976145235396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A017817 (A008587 n - (n : ℤ)).toNat)

end

end A099099.P18088021976145235396

namespace A099099

/-- `or(A000007(n), A017817(A008587(n)-n))` -/
def P18088021976145235396.Spec : Prop :=
  ∀ n, P18088021976145235396.a n = A099099 n

end A099099

/-! ## A099099.P1847082511317770470

`Δ[A177825(4*n+2)]`
-/

namespace A099099.P1847082511317770470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177825 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099099.P1847082511317770470

namespace A099099

/-- `Δ[A177825(4*n+2)]` -/
def P1847082511317770470.Spec : Prop :=
  ∀ n, P1847082511317770470.a n = A099099 n

end A099099

/-! ## A099099.P7373901784287111363

`A062200(2*n)-A122514(2*n)`
-/

namespace A099099.P7373901784287111363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062200 (2 * n) - A122514 (2 * n)

end

end A099099.P7373901784287111363

namespace A099099

/-- `A062200(2*n)-A122514(2*n)` -/
def P7373901784287111363.Spec : Prop :=
  ∀ n, P7373901784287111363.a n = A099099 n

end A099099

/-! ## A099099.P1662432190952191483

`Δ[A137166(n)]-A137166(n)`
-/

namespace A099099.P1662432190952191483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A137166 n

end

end A099099.P1662432190952191483

namespace A099099

/-- `Δ[A137166(n)]-A137166(n)` -/
def P1662432190952191483.Spec : Prop :=
  ∀ n, P1662432190952191483.a n = A099099 n

end A099099

/-! ## A099099.P16541440530278492165

`A137166(n+1)-2*A137166(n)`
-/

namespace A099099.P16541440530278492165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137166 (n + 1) - 2 * A137166 n

end

end A099099.P16541440530278492165

namespace A099099

/-- `A137166(n+1)-2*A137166(n)` -/
def P16541440530278492165.Spec : Prop :=
  ∀ n, P16541440530278492165.a n = A099099 n

end A099099

/-! ## A099099.P4437237508710875136

`Δ[A027947(2*n+1)]-A027947(2*n+1)`
-/

namespace A099099.P4437237508710875136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027947 (2 * n + 1)

end

end A099099.P4437237508710875136

namespace A099099

/-- `Δ[A027947(2*n+1)]-A027947(2*n+1)` -/
def P4437237508710875136.Spec : Prop :=
  ∀ n, P4437237508710875136.a n = A099099 n

end A099099

/-! ## A099099.P6200873880565794683

`Δ[A027947(2*n+1)-Δ[A027947(2*n)]]`
-/

namespace A099099.P6200873880565794683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027947 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099099.P6200873880565794683

namespace A099099

/-- `Δ[A027947(2*n+1)-Δ[A027947(2*n)]]` -/
def P6200873880565794683.Spec : Prop :=
  ∀ n, P6200873880565794683.a n = A099099 n

end A099099

/-! ## A099099.P272779895178708770

`Δ[Δ[A027959(2*n+1)]-A027959(2*n+1)]`
-/

namespace A099099.P272779895178708770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027959 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A027959 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099099.P272779895178708770

namespace A099099

/-- `Δ[Δ[A027959(2*n+1)]-A027959(2*n+1)]` -/
def P272779895178708770.Spec : Prop :=
  ∀ n, P272779895178708770.a n = A099099 n

end A099099

