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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A336801: Value of prime number D for incrementally largest values of minimal x satisfying the equation x^2 - D*y^2 = -3.

The programs for A336801, there is no canonical definition to state claims against.
-/

/-! ## A336801.P15765405363348614907

`p?[A086273(record[A049310(n)])]`
-/

namespace A336801.P15765405363348614907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336801.P15765405363348614907

/-! ## A336801.P9009999892649383355

`p?[A065824(∑[A257815(n+1)])]`
-/

namespace A336801.P9009999892649383355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336801.P9009999892649383355

/-! ## A336801.P13903795861970267896

`p?[∑[A280496(A181764(n+1))]]`
-/

namespace A336801.P13903795861970267896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (A181764 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A336801.P13903795861970267896

/-!
# A336803: Numbers k such that A230319(k) - A230319(k-1) = 2.

The programs for A336803, there is no canonical definition to state claims against.
-/

/-! ## A336803.P13440605545690305446

`A277675(n+2)-n`
-/

namespace A336803.P13440605545690305446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277675 (n + 2) - (n : ℤ)

end

end A336803.P13440605545690305446

/-! ## A336803.P986392654355945396

`eq[2, Δ[A230319(n)]]+1`
-/

namespace A336803.P986392654355945396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A336803.P986392654355945396

/-! ## A336803.P10956567272829372115

`A060151(A277675(n+2)+1)`
-/

namespace A336803.P10956567272829372115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060151 (A277675 (n + 2) + 1).toNat

end

end A336803.P10956567272829372115

/-! ## A336803.P17492588427823070279

`A074184(A277675(n+2)+1)`
-/

namespace A336803.P17492588427823070279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (A277675 (n + 2) + 1).toNat

end

end A336803.P17492588427823070279

/-! ## A336803.P17260259811040132791

`A248868(A277675(n+2)+1)`
-/

namespace A336803.P17260259811040132791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248868 (A277675 (n + 2) + 1).toNat

end

end A336803.P17260259811040132791

/-! ## A336803.P18192114523797635037

`A039960(A277675(n+2)+3)`
-/

namespace A336803.P18192114523797635037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039960 (A277675 (n + 2) + 3).toNat

end

end A336803.P18192114523797635037

/-!
# A336804: a(n) = (n!)^2 * Sum_{k=0..n} 2^(n-k) / (k!)^2.

The programs for A336804, the canonical program `A336804.P979828968059012538` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336804 has offset 0).

The definition of A336804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336804.P979828968059012538

`2*n²*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336804

/-- `2*n²*a(n-1)+1` -/
def P979828968059012538.Spec : Prop :=
  ∀ n, (P979828968059012538.a n : ℤ) = A336804 n

theorem P979828968059012538.correct : P979828968059012538.Spec := by
  intro n
  simp only [A336804]

end A336804

/-! ## A336804.P16988844244239138337

`or(1, 2*a(n-1)*n²)` with `a(0)=1`
-/

namespace A336804.P16988844244239138337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * a (n - 1) * n ^ 2)

end

end A336804.P16988844244239138337

namespace A336804

/-- `or(1, 2*a(n-1)*n²)` -/
def P16988844244239138337.Spec : Prop :=
  ∀ n, (P16988844244239138337.a n : ℤ) = A336804 n

end A336804

/-! ## A336804.P7563630630535919249

`xor(1, 2*a(n-1)*n²)` with `a(0)=1`
-/

namespace A336804.P7563630630535919249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * a (n - 1) * n ^ 2)

end

end A336804.P7563630630535919249

namespace A336804

/-- `xor(1, 2*a(n-1)*n²)` -/
def P7563630630535919249.Spec : Prop :=
  ∀ n, (P7563630630535919249.a n : ℤ) = A336804 n

end A336804

/-! ## A336804.P5827229777063517669

`2*n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A336804.P5827229777063517669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (n * (n * a (n - 1))) + 1

end

end A336804.P5827229777063517669

namespace A336804

/-- `2*n*n*a(n-1)+1` -/
def P5827229777063517669.Spec : Prop :=
  ∀ n, (P5827229777063517669.a n : ℤ) = A336804 n

theorem P5827229777063517669.correct : P5827229777063517669.Spec := by
  intro n
  simp only [A336804, Nat.add_sub_cancel, A336804.P5827229777063517669.a, A336804.P979828968059012538.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A336804

/-! ## A336804.P10696653253030418774

`or(1, 2*n*n*a(n-1))` with `a(0)=1`
-/

namespace A336804.P10696653253030418774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * n * (n * a (n - 1)))

end

end A336804.P10696653253030418774

namespace A336804

/-- `or(1, 2*n*n*a(n-1))` -/
def P10696653253030418774.Spec : Prop :=
  ∀ n, (P10696653253030418774.a n : ℤ) = A336804 n

end A336804

/-!
# A336805: a(n) = (n!)^2 * Sum_{k=0..n} 3^(n-k) / (k!)^2.

The programs for A336805, the canonical program `A336805.P843326113818442338` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336805 has offset 0).

The definition of A336805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336805.P843326113818442338

`3*n²*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336805

/-- `3*n²*a(n-1)+1` -/
def P843326113818442338.Spec : Prop :=
  ∀ n, (P843326113818442338.a n : ℤ) = A336805 n

theorem P843326113818442338.correct : P843326113818442338.Spec := by
  intro n
  simp only [A336805]

end A336805

/-! ## A336805.P12078985846702780497

`3*n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A336805.P12078985846702780497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * (n * (n * a (n - 1))) + 1

end

end A336805.P12078985846702780497

namespace A336805

/-- `3*n*n*a(n-1)+1` -/
def P12078985846702780497.Spec : Prop :=
  ∀ n, (P12078985846702780497.a n : ℤ) = A336805 n

theorem P12078985846702780497.correct : P12078985846702780497.Spec := by
  intro n
  simp only [A336805, Nat.add_sub_cancel, A336805.P12078985846702780497.a, A336805.P843326113818442338.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A336805

/-! ## A336805.P3953116492279186239

`a(n-1)*A033428(n)+1` with `a(0)=1`
-/

namespace A336805.P3953116492279186239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A033428 n + 1

end

end A336805.P3953116492279186239

namespace A336805

/-- `a(n-1)*A033428(n)+1` -/
def P3953116492279186239.Spec : Prop :=
  ∀ n, P3953116492279186239.a n = A336805 n

end A336805

/-! ## A336805.P12557011072624518534

`a(n-1)*A008486(n²)+1` with `a(0)=1`
-/

namespace A336805.P12557011072624518534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008486 (n ^ 2) + 1

end

end A336805.P12557011072624518534

namespace A336805

/-- `a(n-1)*A008486(n²)+1` -/
def P12557011072624518534.Spec : Prop :=
  ∀ n, P12557011072624518534.a n = A336805 n

end A336805

/-! ## A336805.P3524390683003044425

`a(n-1)*A000212(3*n)+1` with `a(0)=1`
-/

namespace A336805.P3524390683003044425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000212 (3 * n) + 1

end

end A336805.P3524390683003044425

namespace A336805

/-- `a(n-1)*A000212(3*n)+1` -/
def P3524390683003044425.Spec : Prop :=
  ∀ n, P3524390683003044425.a n = A336805 n

end A336805

/-!
# A336807: a(n) = (n!)^2 * Sum_{k=0..n} 4^(n-k) / (k!)^2.

The programs for A336807, the canonical program `A336807.P1689110772410397604` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336807 has offset 0).

The definition of A336807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336807.P1689110772410397604

`4*n²*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336807

/-- `4*n²*a(n-1)+1` -/
def P1689110772410397604.Spec : Prop :=
  ∀ n, (P1689110772410397604.a n : ℤ) = A336807 n

theorem P1689110772410397604.correct : P1689110772410397604.Spec := by
  intro n
  simp only [A336807]

end A336807

/-! ## A336807.P5550786353821751544

`or(1, (2*n)²*a(n-1))` with `a(0)=1`
-/

namespace A336807.P5550786353821751544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 ((2 * n) ^ 2 * a (n - 1))

end

end A336807.P5550786353821751544

namespace A336807

/-- `or(1, (2*n)²*a(n-1))` -/
def P5550786353821751544.Spec : Prop :=
  ∀ n, (P5550786353821751544.a n : ℤ) = A336807 n

end A336807

/-! ## A336807.P16709308843944702365

`xor(1, (2*n)²*a(n-1))` with `a(0)=1`
-/

namespace A336807.P16709308843944702365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 ((2 * n) ^ 2 * a (n - 1))

end

end A336807.P16709308843944702365

namespace A336807

/-- `xor(1, (2*n)²*a(n-1))` -/
def P16709308843944702365.Spec : Prop :=
  ∀ n, (P16709308843944702365.a n : ℤ) = A336807 n

end A336807

/-! ## A336807.P11585014345410475349

`4*a(n-1)*n*n+1` with `a(0)=1`
-/

namespace A336807.P11585014345410475349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) * (n * n) + 1

end

end A336807.P11585014345410475349

namespace A336807

/-- `4*a(n-1)*n*n+1` -/
def P11585014345410475349.Spec : Prop :=
  ∀ n, (P11585014345410475349.a n : ℤ) = A336807 n

end A336807

/-! ## A336807.P2876807832478934472

`or(1, n*a(n-1)*4*n)` with `a(0)=1`
-/

namespace A336807.P2876807832478934472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (n * a (n - 1) * (4 * n))

end

end A336807.P2876807832478934472

namespace A336807

/-- `or(1, n*a(n-1)*4*n)` -/
def P2876807832478934472.Spec : Prop :=
  ∀ n, (P2876807832478934472.a n : ℤ) = A336807 n

end A336807

/-!
# A336808: a(n) = (n!)^2 * Sum_{k=0..n} 5^(n-k) / (k!)^2.

The programs for A336808, the canonical program `A336808.P10660410219062743747` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336808 has offset 0).

The definition of A336808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336808.P10660410219062743747

`5*n²*a(n-1)+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336808

/-- `5*n²*a(n-1)+1` -/
def P10660410219062743747.Spec : Prop :=
  ∀ n, (P10660410219062743747.a n : ℤ) = A336808 n

theorem P10660410219062743747.correct : P10660410219062743747.Spec := by
  intro n
  simp only [A336808]

end A336808

/-! ## A336808.P8795257599384499871

`5*n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A336808.P8795257599384499871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * (n * (n * a (n - 1))) + 1

end

end A336808.P8795257599384499871

namespace A336808

/-- `5*n*n*a(n-1)+1` -/
def P8795257599384499871.Spec : Prop :=
  ∀ n, (P8795257599384499871.a n : ℤ) = A336808 n

theorem P8795257599384499871.correct : P8795257599384499871.Spec := by
  intro n
  simp only [A336808, Nat.add_sub_cancel, A336808.P8795257599384499871.a, A336808.P10660410219062743747.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A336808

/-! ## A336808.P2927539912560676251

`a(n-1)*A033429(n)+1` with `a(0)=1`
-/

namespace A336808.P2927539912560676251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A033429 n + 1

end

end A336808.P2927539912560676251

namespace A336808

/-- `a(n-1)*A033429(n)+1` -/
def P2927539912560676251.Spec : Prop :=
  ∀ n, P2927539912560676251.a n = A336808 n

end A336808

/-! ## A336808.P3917018183829145051

`a(n-1)*A008706(n²)+1` with `a(0)=1`
-/

namespace A336808.P3917018183829145051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A008706 (n ^ 2) + 1

end

end A336808.P3917018183829145051

namespace A336808

/-- `a(n-1)*A008706(n²)+1` -/
def P3917018183829145051.Spec : Prop :=
  ∀ n, P3917018183829145051.a n = A336808 n

end A336808

/-! ## A336808.P7913379590582967690

`n*a(n-1)*A008587(n)+1` with `a(0)=1`
-/

namespace A336808.P7913379590582967690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * A008587 n) + 1

end

end A336808.P7913379590582967690

namespace A336808

/-- `n*a(n-1)*A008587(n)+1` -/
def P7913379590582967690.Spec : Prop :=
  ∀ n, P7913379590582967690.a n = A336808 n

end A336808

/-!
# A336809: a(n) = (n!)^2 * Sum_{k=0..n} (k+1) / ((n-k)!)^2.

The programs for A336809, there is no canonical definition to state claims against.
-/

/-! ## A336809.P2200660199647427326

`A006040(n)+n²*a(n-1)` with `a(0)=1`
-/

namespace A336809.P2200660199647427326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006040 n + (n ^ 2 : ℤ) * a (n - 1)

end

end A336809.P2200660199647427326

/-! ## A336809.P13255919028135947092

`A193563(n)+a(n-1)*n²+1` with `a(0)=1`
-/

namespace A336809.P13255919028135947092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193563 n + (a (n - 1) * (n ^ 2 : ℤ) + 1)

end

end A336809.P13255919028135947092

/-! ## A336809.P8898743146714508745

`A193563(n)+abs(a(A023443(n)))*n²+1` with `a(0)=1`
-/

namespace A336809.P8898743146714508745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193563 n + (|a (A023443 n).toNat| * (n ^ 2 : ℤ) + 1)

end

end A336809.P8898743146714508745

/-! ## A336809.P5688173373518668736

`A008683(A000040(n+1))+A006040(n)+n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A336809.P5688173373518668736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (A000040 (n + 1)).toNat + A006040 n + ((n : ℤ) * ((n : ℤ) * a (n - 1)) + 1)

end

end A336809.P5688173373518668736

/-! ## A336809.P5157818780952208574

`A008683(A074822(n+1))+A006040(n)+n*n*a(n-1)+1` with `a(0)=1`
-/

namespace A336809.P5157818780952208574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008683 (A074822 (n + 1)).toNat + A006040 n + ((n : ℤ) * ((n : ℤ) * a (n - 1)) + 1)

end

end A336809.P5157818780952208574

/-!
# A336811: Irregular triangle read by rows T(n,k) in which the length of row n equals the partition number A000041(n-1) and every column k gives the positive integers A000027, with n >= 1 and k >= 1.

The programs for A336811, there is no canonical definition to state claims against.
-/

/-! ## A336811.P7559479857436399277

`A002024(A359279(n+1))`
-/

namespace A336811.P7559479857436399277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A359279 (n + 1)).toNat

end

end A336811.P7559479857436399277

/-! ## A336811.P7461676034980453667

`A007318(A359279(n+1)+1)`
-/

namespace A336811.P7461676034980453667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A359279 (n + 1) + 1).toNat

end

end A336811.P7461676034980453667

/-! ## A336811.P17820328011533065747

`A141157(A359279(n+1)+1)`
-/

namespace A336811.P17820328011533065747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141157 (A359279 (n + 1) + 1).toNat

end

end A336811.P17820328011533065747

/-! ## A336811.P17157914701618583589

`A003987(A359279(abs((-1)^n)+n))`
-/

namespace A336811.P17157914701618583589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A359279 (|(-1) ^ n| + (n : ℤ)).toNat).toNat

end

end A336811.P17157914701618583589

/-! ## A336811.P5533958316884324311

`A003991(A359279(2*n+1-n))`
-/

namespace A336811.P5533958316884324311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A359279 (2 * n + 1 - n)).toNat

end

end A336811.P5533958316884324311

/-! ## A336811.P2323990264475212050

`A003987(lcm((-1)^n, A359279(n+1)))`
-/

namespace A336811.P2323990264475212050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Int.lcm ((-1) ^ n) (A359279 (n + 1)))

end

end A336811.P2323990264475212050

/-! ## A336811.P5389212898412224422

`A001511(A334437(n))`
-/

namespace A336811.P5389212898412224422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A334437 n).toNat

end

end A336811.P5389212898412224422

/-! ## A336811.P1157258838556154308

`floor(root(A340529(n+1), sqrt(2)))`
-/

namespace A336811.P1157258838556154308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A340529 (n + 1) : ℝ) ^ (1 / Real.sqrt (2 : ℝ))⌋

end

end A336811.P1157258838556154308

/-! ## A336811.P13907288109375518363

`A000006(A340529(n+1))`
-/

namespace A336811.P13907288109375518363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A340529 (n + 1)).toNat

end

end A336811.P13907288109375518363

/-! ## A336811.P4535792031778672605

`A127321(A340529(n+1)²)`
-/

namespace A336811.P4535792031778672605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A340529 (n + 1) ^ 2).toNat

end

end A336811.P4535792031778672605

/-!
# A336812: Irregular triangle read by rows T(n,k), n >= 1, k >= 1, in which row n is constructed replacing every term of row n of A336811 with its divisors.

The programs for A336812, there is no canonical definition to state claims against.
-/

/-! ## A336812.P7059156721204024400

`A346741(n+43)`
-/

namespace A336812.P7059156721204024400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346741 (n + 43)

end

end A336812.P7059156721204024400

/-! ## A336812.P2024792278471346045

`gcd(A027907(2*n+3), A050000(A003387(n+1)))`
-/

namespace A336812.P2024792278471346045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027907 (2 * n + 3)) (A050000 (A003387 (n + 1)).toNat)

end

end A336812.P2024792278471346045

/-! ## A336812.P18015061007457671032

`gcd(round(sqrt(2*n)), A355356(2*n))`
-/

namespace A336812.P18015061007457671032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) (A355356 (2 * n))

end

end A336812.P18015061007457671032

/-! ## A336812.P6861699312698669424

`A182715(A175632(3*(n+1))+A143543(n+1))`
-/

namespace A336812.P6861699312698669424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182715 (A175632 (3 * (n + 1)) + A143543 (n + 1)).toNat

end

end A336812.P6861699312698669424

/-!
# A336813: Fixed points of A187769.

The programs for A336813, there is no canonical definition to state claims against.
-/

/-! ## A336813.P4124244599977669123

`eq[A019565(n), A381500(n)]`
-/

namespace A336813.P4124244599977669123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336813.P4124244599977669123

/-! ## A336813.P16698023571415136519

`eq[A381500(n)², A334110(n)]`
-/

namespace A336813.P16698023571415136519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381500 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336813.P16698023571415136519

/-! ## A336813.P17069390403286989651

`eq[n, A187769(n)]`
-/

namespace A336813.P17069390403286989651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336813.P17069390403286989651

/-! ## A336813.P8102177785169533796

`eq[A048680(n), A371590(n)]`
-/

namespace A336813.P8102177785169533796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336813.P8102177785169533796

/-! ## A336813.P3573546554299379412

`eq[A279004(A209861(n)), A279004(n)]`
-/

namespace A336813.P3573546554299379412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279004 (A209861 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336813.P3573546554299379412

/-!
# A336814: Denominator of the average distance among first n primes.

The programs for A336814, there is no canonical definition to state claims against.
-/

/-! ## A336814.P3828140901277902689

`gcd(A000217(n+1), A001971(A113101(n)))`
-/

namespace A336814.P3828140901277902689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (n + 1)) (A001971 (A113101 n).toNat)

end

end A336814.P3828140901277902689

/-!
# A336815: Number of subsets of {1..n} whose sum of squares of elements is a square.

The programs for A336815, there is no canonical definition to state claims against.
-/

/-! ## A336815.P17088666870223772470

`∑[A339612(C(2, n)+n)]`
-/

namespace A336815.P17088666870223772470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339612 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336815.P17088666870223772470

/-! ## A336815.P2633639765284248463

`∑[A339612(or(n, C(3, n)))]`
-/

namespace A336815.P2633639765284248463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339612 (Nat.lor n (Nat.choose 3 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336815.P2633639765284248463

/-! ## A336815.P18334499243633422652

`∑[A339612(round(acot(n)+n))]`
-/

namespace A336815.P18334499243633422652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339612 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336815.P18334499243633422652

/-! ## A336815.P14894065705046759104

`A339612(n)+a(n-1)` with `a(0)=1`
-/

namespace A336815.P14894065705046759104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339612 n + a (n - 1)

end

end A336815.P14894065705046759104

/-! ## A336815.P11079549844554788089

`∑[A339612(abs(1-n)+1)]`
-/

namespace A336815.P11079549844554788089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339612 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336815.P11079549844554788089

/-!
# A336817: Lexicographically earliest sequence of distinct positive numbers such that for any n > 0, a(n) XOR a(n+1) is a prime number (where XOR denotes the bitwise XOR operator).

The programs for A336817, there is no canonical definition to state claims against.
-/

/-! ## A336817.P1120462306782340117

`xor(a(n-1), A337013(n))` with `a(0)=1`
-/

namespace A336817.P1120462306782340117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A337013 n)

end

end A336817.P1120462306782340117

/-!
# A336819: Odd values of D > 0 for which the generalized Ramanujan-Nagell equation x^2 + D = 2^m has two or more solutions in the positive integers.

The programs for A336819, the canonical program `A336819.P6922658138581304859` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336819 has offset 1).

The definition of A336819 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336819.P6922658138581304859

`3*a(n-1)-2*a(n-2)` with `a(0)=7, a(1)=15, a(2)=23, a(3)=31, a(4)=63`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336819

/-- `3*a(n-1)-2*a(n-2)` -/
def P6922658138581304859.Spec : Prop :=
  ∀ n, P6922658138581304859.a n = A336819 (n + 1)

theorem P6922658138581304859.correct : P6922658138581304859.Spec := by
  intro n
  simp only [A336819, Nat.add_sub_cancel]

end A336819

/-! ## A336819.P7986941524925219888

`or(a(n-1)+5, ∑[2^n])` with `a(0)=7`
-/

namespace A336819.P7986941524925219888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor (a (n - 1) + 5) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336819.P7986941524925219888

namespace A336819

/-- `or(a(n-1)+5, ∑[2^n])` -/
def P7986941524925219888.Spec : Prop :=
  ∀ n, (P7986941524925219888.a n : ℤ) = A336819 (n + 1)

end A336819

/-! ## A336819.P2130304530372667028

`record[or(∑[2^n], ∑{p}[6*n+7, #])]`
-/

namespace A336819.P2130304530372667028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (∑ j ∈ Finset.range (n + 1), f2 j) (∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336819.P2130304530372667028

namespace A336819

/-- `record[or(∑[2^n], ∑{p}[6*n+7, #])]` -/
def P2130304530372667028.Spec : Prop :=
  ∀ n, (P2130304530372667028.a n : ℤ) = A336819 (n + 1)

end A336819

/-! ## A336819.P4164533289547143515

`record[or(7, A323247(n+1))]`
-/

namespace A336819.P4164533289547143515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A323247 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336819.P4164533289547143515

namespace A336819

/-- `record[or(7, A323247(n+1))]` -/
def P4164533289547143515.Spec : Prop :=
  ∀ n, P4164533289547143515.a n = A336819 (n + 1)

end A336819

/-! ## A336819.P12461555814463539230

`record[or(5*n+4, A293447(2*n+3))]`
-/

namespace A336819.P12461555814463539230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (5 * n + 4 : ℤ) (A293447 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336819.P12461555814463539230

namespace A336819

/-- `record[or(5*n+4, A293447(2*n+3))]` -/
def P12461555814463539230.Spec : Prop :=
  ∀ n, P12461555814463539230.a n = A336819 (n + 1)

end A336819

/-! ## A336819.P7152849726349268882

`or(record[A284405(n)], A004771(n))`
-/

namespace A336819.P7152849726349268882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A004771 n)

end

end A336819.P7152849726349268882

namespace A336819

/-- `or(record[A284405(n)], A004771(n))` -/
def P7152849726349268882.Spec : Prop :=
  ∀ n, P7152849726349268882.a n = A336819 (n + 1)

end A336819

/-! ## A336819.P16345796314660446450

`or(A004771(n), A284405(n+1))`
-/

namespace A336819.P16345796314660446450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004771 n) (A284405 (n + 1))

end

end A336819.P16345796314660446450

namespace A336819

/-- `or(A004771(n), A284405(n+1))` -/
def P16345796314660446450.Spec : Prop :=
  ∀ n, P16345796314660446450.a n = A336819 (n + 1)

end A336819

/-! ## A336819.P16937389690919642492

`record[or(A267352(3*n), A290678(n+4))]`
-/

namespace A336819.P16937389690919642492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267352 (3 * n)) (A290678 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336819.P16937389690919642492

namespace A336819

/-- `record[or(A267352(3*n), A290678(n+4))]` -/
def P16937389690919642492.Spec : Prop :=
  ∀ n, P16937389690919642492.a n = A336819 (n + 1)

end A336819

/-! ## A336819.P8625780461514846471

`or(record[A284405(n)], A284371(3*n+4))`
-/

namespace A336819.P8625780461514846471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A284371 (3 * n + 4))

end

end A336819.P8625780461514846471

namespace A336819

/-- `or(record[A284405(n)], A284371(3*n+4))` -/
def P8625780461514846471.Spec : Prop :=
  ∀ n, P8625780461514846471.a n = A336819 (n + 1)

end A336819

/-! ## A336819.P9697220448507163886

`record[or(A284385(3*n+5), A284405(n))]`
-/

namespace A336819.P9697220448507163886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284385 (3 * n + 5)) (A284405 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336819.P9697220448507163886

namespace A336819

/-- `record[or(A284385(3*n+5), A284405(n))]` -/
def P9697220448507163886.Spec : Prop :=
  ∀ n, P9697220448507163886.a n = A336819 (n + 1)

end A336819

/-! ## A336819.P14517120985770955086

`or(eq[3, A001222(n+1)], A284405(n+1))`
-/

namespace A336819.P14517120985770955086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A284405 (n + 1))

end

end A336819.P14517120985770955086

namespace A336819

/-- `or(eq[3, A001222(n+1)], A284405(n+1))` -/
def P14517120985770955086.Spec : Prop :=
  ∀ n, P14517120985770955086.a n = A336819 (n + 1)

end A336819

/-!
# A336820: A(n,k) is the n-th number that is a sum of at most k positive k-th powers; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A336820, there is no canonical definition to state claims against.
-/

/-! ## A336820.P14213118508331088301

`A123740(A108131(n))+A002262(n)`
-/

namespace A336820.P14213118508331088301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123740 (A108131 n).toNat + A002262 n

end

end A336820.P14213118508331088301

/-! ## A336820.P8137327924159980595

`A171588(A113370(n))+A002262(n)`
-/

namespace A336820.P8137327924159980595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A113370 n).toNat + A002262 n

end

end A336820.P8137327924159980595

/-! ## A336820.P13713547565048789962

`A328615(A246868(n)+A069010(n))`
-/

namespace A336820.P13713547565048789962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A246868 n + A069010 n).toNat

end

end A336820.P13713547565048789962

/-! ## A336820.P11270101164704692222

`A079998(A000011(n))+A002262(n)`
-/

namespace A336820.P11270101164704692222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A000011 n).toNat + A002262 n

end

end A336820.P11270101164704692222

/-! ## A336820.P14841130484441003354

`A086016(A000045(n))+A002262(n)`
-/

namespace A336820.P14841130484441003354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A000045 n).toNat + A002262 n

end

end A336820.P14841130484441003354

/-!
# A336822: Integers with an even number of letters when written in Spanish.

The programs for A336822, there is no canonical definition to state claims against.
-/

/-! ## A336822.P15315935388663473873

`eq[2, A020639(A050047(n+1)+A011762(n))]`
-/

namespace A336822.P15315935388663473873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A050047 (n + 1) + A011762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A336822.P15315935388663473873

/-!
# A336823: a(1)=1; thereafter a(n) = a(n-1) / wt(n-1) if wt(n-1) divides a(n-1), otherwise a(n) = a(n-1) * wt(n-1) where wt(n) is the binary weight of n.

The programs for A336823, there is no canonical definition to state claims against.
-/

/-! ## A336823.P8483039998479135952

`A072400(A121853(n))`
-/

namespace A336823.P8483039998479135952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (A121853 n).toNat

end

end A336823.P8483039998479135952

/-! ## A336823.P8015661326608688032

`A007913(9*A121853(n))`
-/

namespace A336823.P8015661326608688032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (9 * A121853 n).toNat

end

end A336823.P8015661326608688032

/-! ## A336823.P6194902824562531086

`A072400(∏[A000041(A000120(n))])`
-/

namespace A336823.P6194902824562531086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336823.P6194902824562531086

/-! ## A336823.P13396114722073843599

`A072400(∏[A003056(A001316(n))])`
-/

namespace A336823.P13396114722073843599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336823.P13396114722073843599

/-! ## A336823.P887527250646132654

`A072400(∏[A000120(A008574(n))])`
-/

namespace A336823.P887527250646132654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072400 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336823.P887527250646132654

/-!
# A336826: Bogotá numbers: numbers k such that k = m*p(m) where p(m) is the digital product of m.

The programs for A336826, there is no canonical definition to state claims against.
-/

/-! ## A336826.P17241425886608589338

`A336876(n+1)*A336879(n+1)`
-/

namespace A336826.P17241425886608589338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336876 (n + 1) * A336879 (n + 1)

end

end A336826.P17241425886608589338

/-! ## A336826.P14501314484599663716

`A098736(A336876(n+1))`
-/

namespace A336826.P14501314484599663716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (A336876 (n + 1)).toNat

end

end A336826.P14501314484599663716

/-! ## A336826.P2728865781305117581

`A230101(A336876(1+n))`
-/

namespace A336826.P2728865781305117581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230101 (A336876 (1 + n)).toNat

end

end A336826.P2728865781305117581

/-! ## A336826.P2214877095784626660

`A007954(A336876(n+1))*A336876(A008619(2*n))`
-/

namespace A336826.P2214877095784626660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A336876 (n + 1)).toNat * A336876 (A008619 (2 * n)).toNat

end

end A336826.P2214877095784626660

/-! ## A336826.P5035067011575029655

`A051801(A336876(n+1))*A336876(n+1)*A057427(n)`
-/

namespace A336826.P5035067011575029655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A336876 (n + 1)).toNat * A336876 (n + 1) * A057427 n

end

end A336826.P5035067011575029655

/-! ## A336826.P2670776643163527374

`lt[0, char[n*∏{digits}[n, #]]]`
-/

namespace A336826.P2670776643163527374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336826.P2670776643163527374

/-! ## A336826.P11880809825652890810

`eq[1, char[n*∏{digits}[n, #]]]`
-/

namespace A336826.P11880809825652890810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336826.P11880809825652890810

/-! ## A336826.P9314619217558959606

`lt[0, char[A098736(n)]]`
-/

namespace A336826.P9314619217558959606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336826.P9314619217558959606

/-! ## A336826.P3500687613568675764

`eq[1, char[A098736(n+1)]]`
-/

namespace A336826.P3500687613568675764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336826.P3500687613568675764

/-! ## A336826.P16573270440753356809

`eq[1, char[n*A007954(n)]]`
-/

namespace A336826.P16573270440753356809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007954 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336826.P16573270440753356809

/-! ## A336826.P160091768602888153

`eq[1, char[n*(A230099(n)-n)]]`
-/

namespace A336826.P160091768602888153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A230099 n - (n : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A336826.P160091768602888153

/-!
# A336828: a(n) = Sum_{k=0..n} binomial(n,k)^2 * k^n.

The programs for A336828, there is no canonical definition to state claims against.
-/

/-! ## A336828.P12517354511688175522

`A312644(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A336828.P12517354511688175522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A312644 ((n : ℤ) * a (n - 1)).toNat

end

end A336828.P12517354511688175522

/-!
# A336831: a(n) = (n!)^n * [x^n] exp(-Sum_{k>=1} (-x)^k / (k!)^n).

The programs for A336831, there is no canonical definition to state claims against.
-/

/-! ## A336831.P8738645674333661390

`A249009(∑[(n-1)^n]²)`
-/

namespace A336831.P8738645674333661390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249009 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A336831.P8738645674333661390

/-!
# A336833: Triangle read by rows, 1 <= k <= n: T(n,k) is the number of graceful labelings of the n X k grid graph.

The programs for A336833, there is no canonical definition to state claims against.
-/

/-! ## A336833.P10444975331906782539

`∏{e}[(5-9*n)^n-1, #+1]`
-/

namespace A336833.P10444975331906782539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (9 * n : ℤ)) ^ n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A336833.P10444975331906782539

/-!
# A336834: a(n) = 1 if A005940(1+n) is deficient, 0 otherwise.

The programs for A336834, the canonical program `A336834.P16963777313214642767` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336834 has offset 0).

The definition of A336834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336834.P16963777313214642767

`A294934(A005940(1+n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A336834

/-- `A294934(A005940(1+n))` -/
def P16963777313214642767.Spec : Prop :=
  ∀ n, P16963777313214642767.a n = A336834 n

theorem P16963777313214642767.correct : P16963777313214642767.Spec := by
  intro n
  simp only [A336834]

end A336834

/-! ## A336834.P7360772784623619208

`1-A368990(n)`
-/

namespace A336834.P7360772784623619208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A368990 n

end

end A336834.P7360772784623619208

namespace A336834

/-- `1-A368990(n)` -/
def P7360772784623619208.Spec : Prop :=
  ∀ n, P7360772784623619208.a n = A336834 n

theorem P7360772784623619208.correct : P7360772784623619208.Spec := by
  intro n
  simp only [A336834, Nat.add_sub_cancel, A336834.P7360772784623619208.a, A336834.P16963777313214642767.a, A005940, A005940.P5942875842694471387.a, A294934, A294934.P6887900065844113771.f1, A294934.P6887900065844113771.a, A368990, A368990.P4935486375508684149.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A294936, A294936.P10769920400480544505.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336834

/-! ## A336834.P13403156513889950521

`ceil(A324055(n)/A158842(n))`
-/

namespace A336834.P13403156513889950521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A158842 n : ℚ)⌉

end

end A336834.P13403156513889950521

namespace A336834

/-- `ceil(A324055(n)/A158842(n))` -/
def P13403156513889950521.Spec : Prop :=
  ∀ n, P13403156513889950521.a n = A336834 n

end A336834

/-! ## A336834.P13501485642847051001

`ceil(A324055(n)/A324054(n))`
-/

namespace A336834.P13501485642847051001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A324054 n : ℚ)⌉

end

end A336834.P13501485642847051001

namespace A336834

/-- `ceil(A324055(n)/A324054(n))` -/
def P13501485642847051001.Spec : Prop :=
  ∀ n, P13501485642847051001.a n = A336834 n

end A336834

/-! ## A336834.P12589256478418039264

`ceil(A324055(n)/∑[A007318(n)])`
-/

namespace A336834.P12589256478418039264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A336834.P12589256478418039264

namespace A336834

/-- `ceil(A324055(n)/∑[A007318(n)])` -/
def P12589256478418039264.Spec : Prop :=
  ∀ n, P12589256478418039264.a n = A336834 n

end A336834

/-! ## A336834.P10719008187455534585

`ceil(A324055(n)/A249125(n+1))`
-/

namespace A336834.P10719008187455534585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A249125 (n + 1) : ℚ)⌉

end

end A336834.P10719008187455534585

namespace A336834

/-- `ceil(A324055(n)/A249125(n+1))` -/
def P10719008187455534585.Spec : Prop :=
  ∀ n, P10719008187455534585.a n = A336834 n

end A336834

/-! ## A336834.P11151301285411841286

`ceil(A324055(n)/A324042(n+1))`
-/

namespace A336834.P11151301285411841286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A324042 (n + 1) : ℚ)⌉

end

end A336834.P11151301285411841286

namespace A336834

/-- `ceil(A324055(n)/A324042(n+1))` -/
def P11151301285411841286.Spec : Prop :=
  ∀ n, P11151301285411841286.a n = A336834 n

end A336834

/-! ## A336834.P5920747596241151411

`ceil(A324055(n)/A066692(n+1)²)`
-/

namespace A336834.P5920747596241151411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A066692 (n + 1) ^ 2 : ℚ)⌉

end

end A336834.P5920747596241151411

namespace A336834

/-- `ceil(A324055(n)/A066692(n+1)²)` -/
def P5920747596241151411.Spec : Prop :=
  ∀ n, P5920747596241151411.a n = A336834 n

end A336834

/-! ## A336834.P15741189005800648393

`ceil(A324055(n)/∑[A324055(n+1)])`
-/

namespace A336834.P15741189005800648393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A336834.P15741189005800648393

namespace A336834

/-- `ceil(A324055(n)/∑[A324055(n+1)])` -/
def P15741189005800648393.Spec : Prop :=
  ∀ n, P15741189005800648393.a n = A336834 n

end A336834

/-! ## A336834.P16038777046114457645

`ceil(A324055(n)/A324022(n+1)²)`
-/

namespace A336834.P16038777046114457645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A324022 (n + 1) ^ 2 : ℚ)⌉

end

end A336834.P16038777046114457645

namespace A336834

/-- `ceil(A324055(n)/A324022(n+1)²)` -/
def P16038777046114457645.Spec : Prop :=
  ∀ n, P16038777046114457645.a n = A336834 n

end A336834

/-! ## A336834.P3921765445536509433

`ceil(A324055(n)/A328240(n+1))`
-/

namespace A336834.P3921765445536509433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A328240 (n + 1) : ℚ)⌉

end

end A336834.P3921765445536509433

namespace A336834

/-- `ceil(A324055(n)/A328240(n+1))` -/
def P3921765445536509433.Spec : Prop :=
  ∀ n, P3921765445536509433.a n = A336834 n

end A336834

/-! ## A336834.P14100559256136428551

`ceil(A324055(n)/A324022(2*n+1))`
-/

namespace A336834.P14100559256136428551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A324022 (2 * n + 1) : ℚ)⌉

end

end A336834.P14100559256136428551

namespace A336834

/-- `ceil(A324055(n)/A324022(2*n+1))` -/
def P14100559256136428551.Spec : Prop :=
  ∀ n, P14100559256136428551.a n = A336834 n

end A336834

/-! ## A336834.P7614191483086748600

`ceil(A324055(n)/A008848(n+1))`
-/

namespace A336834.P7614191483086748600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A008848 (n + 1) : ℚ)⌉

end

end A336834.P7614191483086748600

namespace A336834

/-- `ceil(A324055(n)/A008848(n+1))` -/
def P7614191483086748600.Spec : Prop :=
  ∀ n, P7614191483086748600.a n = A336834 n

end A336834

/-! ## A336834.P14341084524797791210

`ceil(A324055(n)/A182978(n+1))`
-/

namespace A336834.P14341084524797791210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324055 n : ℚ) / (A182978 (n + 1) : ℚ)⌉

end

end A336834.P14341084524797791210

namespace A336834

/-- `ceil(A324055(n)/A182978(n+1))` -/
def P14341084524797791210.Spec : Prop :=
  ∀ n, P14341084524797791210.a n = A336834 n

end A336834

/-! ## A336834.P3628786822838869748

`1-A294936(A005940(n+1))`
-/

namespace A336834.P3628786822838869748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294936 (A005940 (n + 1)).toNat

end

end A336834.P3628786822838869748

namespace A336834

/-- `1-A294936(A005940(n+1))` -/
def P3628786822838869748.Spec : Prop :=
  ∀ n, P3628786822838869748.a n = A336834 n

end A336834

/-! ## A336834.P15551636660244553839

`A302110(A368990(n)+A006039(n+1))`
-/

namespace A336834.P15551636660244553839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A368990 n + A006039 (n + 1)).toNat

end

end A336834.P15551636660244553839

namespace A336834

/-- `A302110(A368990(n)+A006039(n+1))` -/
def P15551636660244553839.Spec : Prop :=
  ∀ n, P15551636660244553839.a n = A336834 n

end A336834

/-!
# A336835: Number of iterations of x -> A003961(x) needed before the result is deficient (sigma(x) < 2x), when starting from x=n.

The programs for A336835, the canonical program `A336835.P9061713895655417858` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336835 has offset 1).

The definition of A336835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336835.P9061713895655417858

`A294936(A003961(n+1))+A294936(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336835

/-- `A294936(A003961(n+1))+A294936(n+1)` -/
def P9061713895655417858.Spec : Prop :=
  ∀ n, P9061713895655417858.a n = A336835 (n + 1)

theorem P9061713895655417858.correct : P9061713895655417858.Spec := by
  intro n
  simp only [A336835, Nat.add_sub_cancel]

end A336835

/-! ## A336835.P14080081727504295231

`A108775(n+1)-A008966(A252868(n+1))`
-/

namespace A336835.P14080081727504295231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1) - A008966 (A252868 (n + 1)).toNat

end

end A336835.P14080081727504295231

namespace A336835

/-- `A108775(n+1)-A008966(A252868(n+1))` -/
def P14080081727504295231.Spec : Prop :=
  ∀ n, P14080081727504295231.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P17131557325539728336

`A108775(n+1)-A340088(A180517(3*n+5))`
-/

namespace A336835.P17131557325539728336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1) - A340088 (A180517 (3 * n + 5)).toNat

end

end A336835.P17131557325539728336

namespace A336835

/-- `A108775(n+1)-A340088(A180517(3*n+5))` -/
def P17131557325539728336.Spec : Prop :=
  ∀ n, P17131557325539728336.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P18159580287349769643

`A026955(n)%A108775(n+1)`
-/

namespace A336835.P18159580287349769643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026955 n) (A108775 (n + 1))

end

end A336835.P18159580287349769643

namespace A336835

/-- `A026955(n)%A108775(n+1)` -/
def P18159580287349769643.Spec : Prop :=
  ∀ n, P18159580287349769643.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P5002940680812013179

`A088546(A003714(3*n+2))%A108775(n+1)`
-/

namespace A336835.P5002940680812013179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088546 (A003714 (3 * n + 2)).toNat) (A108775 (n + 1))

end

end A336835.P5002940680812013179

namespace A336835

/-- `A088546(A003714(3*n+2))%A108775(n+1)` -/
def P5002940680812013179.Spec : Prop :=
  ∀ n, P5002940680812013179.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P11655648485006996220

`A026950(n)%A108775(n+1)`
-/

namespace A336835.P11655648485006996220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026950 n) (A108775 (n + 1))

end

end A336835.P11655648485006996220

namespace A336835

/-- `A026950(n)%A108775(n+1)` -/
def P11655648485006996220.Spec : Prop :=
  ∀ n, P11655648485006996220.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P6869845247842405088

`A108775(n+1)-A108775(A017533(3*n+4))`
-/

namespace A336835.P6869845247842405088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1) - A108775 (A017533 (3 * n + 4)).toNat

end

end A336835.P6869845247842405088

namespace A336835

/-- `A108775(n+1)-A108775(A017533(3*n+4))` -/
def P6869845247842405088.Spec : Prop :=
  ∀ n, P6869845247842405088.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P8983207010877116546

`A002184(n)%A108775(n+1)`
-/

namespace A336835.P8983207010877116546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002184 n) (A108775 (n + 1))

end

end A336835.P8983207010877116546

namespace A336835

/-- `A002184(n)%A108775(n+1)` -/
def P8983207010877116546.Spec : Prop :=
  ∀ n, P8983207010877116546.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P15292757528635083425

`A108775(n+1)+A008683(A175789(3*n+1))`
-/

namespace A336835.P15292757528635083425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (n + 1) + A008683 (A175789 (3 * n + 1)).toNat

end

end A336835.P15292757528635083425

namespace A336835

/-- `A108775(n+1)+A008683(A175789(3*n+1))` -/
def P15292757528635083425.Spec : Prop :=
  ∀ n, P15292757528635083425.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P16144353429822727092

`A036567(n)%A108775(n+1)`
-/

namespace A336835.P16144353429822727092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036567 n) (A108775 (n + 1))

end

end A336835.P16144353429822727092

namespace A336835

/-- `A036567(n)%A108775(n+1)` -/
def P16144353429822727092.Spec : Prop :=
  ∀ n, P16144353429822727092.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P13707220683372287450

`A002536(n)%A108775(n+1)`
-/

namespace A336835.P13707220683372287450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002536 n) (A108775 (n + 1))

end

end A336835.P13707220683372287450

namespace A336835

/-- `A002536(n)%A108775(n+1)` -/
def P13707220683372287450.Spec : Prop :=
  ∀ n, P13707220683372287450.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P13564635561157498007

`A002537(n)%A108775(n+1)`
-/

namespace A336835.P13564635561157498007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002537 n) (A108775 (n + 1))

end

end A336835.P13564635561157498007

namespace A336835

/-- `A002537(n)%A108775(n+1)` -/
def P13564635561157498007.Spec : Prop :=
  ∀ n, P13564635561157498007.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P4510932056827154392

`A060357(n)%A108775(n+1)`
-/

namespace A336835.P4510932056827154392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060357 n) (A108775 (n + 1))

end

end A336835.P4510932056827154392

namespace A336835

/-- `A060357(n)%A108775(n+1)` -/
def P4510932056827154392.Spec : Prop :=
  ∀ n, P4510932056827154392.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P347109748833567880

`A070198(n)%A108775(n+1)`
-/

namespace A336835.P347109748833567880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A108775 (n + 1))

end

end A336835.P347109748833567880

namespace A336835

/-- `A070198(n)%A108775(n+1)` -/
def P347109748833567880.Spec : Prop :=
  ∀ n, P347109748833567880.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P18358978435604882662

`A005665(n)%A108775(n+1)`
-/

namespace A336835.P18358978435604882662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005665 n) (A108775 (n + 1))

end

end A336835.P18358978435604882662

namespace A336835

/-- `A005665(n)%A108775(n+1)` -/
def P18358978435604882662.Spec : Prop :=
  ∀ n, P18358978435604882662.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P490786145462415413

`A057960(n)%A108775(n+1)`
-/

namespace A336835.P490786145462415413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057960 n) (A108775 (n + 1))

end

end A336835.P490786145462415413

namespace A336835

/-- `A057960(n)%A108775(n+1)` -/
def P490786145462415413.Spec : Prop :=
  ∀ n, P490786145462415413.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P824806215599479268

`A068113(n)%A108775(n+1)`
-/

namespace A336835.P824806215599479268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068113 n) (A108775 (n + 1))

end

end A336835.P824806215599479268

namespace A336835

/-- `A068113(n)%A108775(n+1)` -/
def P824806215599479268.Spec : Prop :=
  ∀ n, P824806215599479268.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P6322835801208412302

`A049164(n)%A108775(n+1)`
-/

namespace A336835.P6322835801208412302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049164 n) (A108775 (n + 1))

end

end A336835.P6322835801208412302

namespace A336835

/-- `A049164(n)%A108775(n+1)` -/
def P6322835801208412302.Spec : Prop :=
  ∀ n, P6322835801208412302.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P11303197648334575601

`A046269(n)%A108775(n+1)`
-/

namespace A336835.P11303197648334575601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046269 n) (A108775 (n + 1))

end

end A336835.P11303197648334575601

namespace A336835

/-- `A046269(n)%A108775(n+1)` -/
def P11303197648334575601.Spec : Prop :=
  ∀ n, P11303197648334575601.a n = A336835 (n + 1)

end A336835

/-! ## A336835.P15651020595479425330

`A007689(n)%A108775(n+1)`
-/

namespace A336835.P15651020595479425330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007689 n) (A108775 (n + 1))

end

end A336835.P15651020595479425330

namespace A336835

/-- `A007689(n)%A108775(n+1)` -/
def P15651020595479425330.Spec : Prop :=
  ∀ n, P15651020595479425330.a n = A336835 (n + 1)

end A336835

/-!
# A336836: Number of iterations of x -> A003961(x) needed before A003961(x) < 2x, when starting from x=n, or -1 if such a number is never reached.

The programs for A336836, there is no canonical definition to state claims against.
-/

/-! ## A336836.P10541342116805973955

`A001055(A083401(n+3))%A001055(2*(n+1))`
-/

namespace A336836.P10541342116805973955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A083401 (n + 3)).toNat) (A001055 (2 * (n + 1)))

end

end A336836.P10541342116805973955

/-! ## A336836.P10488209063527733841

`A056924(A038548(n+1)^A131504(n+3))`
-/

namespace A336836.P10488209063527733841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (SequenceMachineLib.roundAway ((A038548 (n + 1) : ℚ) ^ (A131504 (n + 3) : ℤ))).toNat

end

end A336836.P10488209063527733841

/-! ## A336836.P6836353704264197661

`A090967(A176347(2*(n+1)))%A050379(2*(n+1))`
-/

namespace A336836.P6836353704264197661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090967 (A176347 (2 * (n + 1))).toNat) (A050379 (2 * (n + 1)))

end

end A336836.P6836353704264197661

/-! ## A336836.P7464595158057902487

`A321106(A340141(n+1)²)`
-/

namespace A336836.P7464595158057902487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321106 (A340141 (n + 1) ^ 2).toNat

end

end A336836.P7464595158057902487

/-! ## A336836.P15177868105452668829

`A321106(A340141(n+1)^2)`
-/

namespace A336836.P15177868105452668829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321106 (A340141 (n + 1) ^ 2).toNat

end

end A336836.P15177868105452668829

/-!
# A336837: Numerator of ratio A336841(n)/A000005(n).

The programs for A336837, the canonical program `A336837.P12627212875986616411` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336837 has offset 1).

The definition of A336837 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336837.P12627212875986616411

`A336841(n+1)/A336856(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336837

/-- `A336841(n+1)/A336856(n+1)` -/
def P12627212875986616411.Spec : Prop :=
  ∀ n, P12627212875986616411.a n = (A336837 (n + 1) : ℚ)

end A336837

/-! ## A336837.P8067514654753962078

`A336841(n+1)/gcd(A000005(n+1), A336841(n+1))`
-/

namespace A336837.P8067514654753962078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A336841 (n + 1)) : ℚ)

end

end A336837.P8067514654753962078

namespace A336837

/-- `A336841(n+1)/gcd(A000005(n+1), A336841(n+1))` -/
def P8067514654753962078.Spec : Prop :=
  ∀ n, P8067514654753962078.a n = (A336837 (n + 1) : ℚ)

end A336837

/-! ## A336837.P4734493273469889683

`2*A336854(n+1)/A336856(n+1)`
-/

namespace A336837.P4734493273469889683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A336854 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ))

end

end A336837.P4734493273469889683

namespace A336837

/-- `2*A336854(n+1)/A336856(n+1)` -/
def P4734493273469889683.Spec : Prop :=
  ∀ n, P4734493273469889683.a n = (A336837 (n + 1) : ℚ)

end A336837

/-! ## A336837.P10072354402646713097

`A003961(n+1)*A336839(n+1)-A336838(n+1)`
-/

namespace A336837.P10072354402646713097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A336839 (n + 1) - A336838 (n + 1)

end

end A336837.P10072354402646713097

namespace A336837

/-- `A003961(n+1)*A336839(n+1)-A336838(n+1)` -/
def P10072354402646713097.Spec : Prop :=
  ∀ n, P10072354402646713097.a n = A336837 (n + 1)

end A336837

/-! ## A336837.P6775336064973156564

`A336839(n+1)/A000005(n+1)*A336841(n+1)`
-/

namespace A336837.P6775336064973156564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336839 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A336841 (n + 1) : ℚ)

end

end A336837.P6775336064973156564

namespace A336837

/-- `A336839(n+1)/A000005(n+1)*A336841(n+1)` -/
def P6775336064973156564.Spec : Prop :=
  ∀ n, P6775336064973156564.a n = (A336837 (n + 1) : ℚ)

end A336837

/-! ## A336837.P17679801426764241854

`A336838(n+1)/A003973(n+1)*A336841(n+1)`
-/

namespace A336837.P17679801426764241854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336838 (n + 1) : ℚ) / (A003973 (n + 1) : ℚ) * (A336841 (n + 1) : ℚ)

end

end A336837.P17679801426764241854

namespace A336837

/-- `A336838(n+1)/A003973(n+1)*A336841(n+1)` -/
def P17679801426764241854.Spec : Prop :=
  ∀ n, P17679801426764241854.a n = (A336837 (n + 1) : ℚ)

end A336837

/-! ## A336837.P4744064800900622389

`A336841(n+1)/A009205(A003961(n+1))`
-/

namespace A336837.P4744064800900622389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / (A009205 (A003961 (n + 1)).toNat : ℚ)

end

end A336837.P4744064800900622389

namespace A336837

/-- `A336841(n+1)/A009205(A003961(n+1))` -/
def P4744064800900622389.Spec : Prop :=
  ∀ n, P4744064800900622389.a n = (A336837 (n + 1) : ℚ)

end A336837

/-! ## A336837.P9645433059579151487

`A094471(A003961(n+1))/A336856(n+1)`
-/

namespace A336837.P9645433059579151487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094471 (A003961 (n + 1)).toNat : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336837.P9645433059579151487

namespace A336837

/-- `A094471(A003961(n+1))/A336856(n+1)` -/
def P9645433059579151487.Spec : Prop :=
  ∀ n, P9645433059579151487.a n = (A336837 (n + 1) : ℚ)

end A336837

/-!
# A336838: Numerator of the arithmetic mean of the divisors of A003961(n).

The programs for A336838, the canonical program `A336838.P8565209777362080832` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336838 has offset 1).

The definition of A336838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A057020, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336838.P10660806171558261155

`A003973(n+1)/A336856(n+1)`
-/

namespace A336838.P10660806171558261155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336838.P10660806171558261155

namespace A336838

/-- `A003973(n+1)/A336856(n+1)` -/
def P10660806171558261155.Spec : Prop :=
  ∀ n, P10660806171558261155.a n = (A336838 (n + 1) : ℚ)

end A336838

/-! ## A336838.P14237384130366443420

`A003973(n+1)/gcd(A000005(n+1), A003973(n+1))`
-/

namespace A336838.P14237384130366443420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) (A003973 (n + 1)) : ℚ)

end

end A336838.P14237384130366443420

namespace A336838

/-- `A003973(n+1)/gcd(A000005(n+1), A003973(n+1))` -/
def P14237384130366443420.Spec : Prop :=
  ∀ n, P14237384130366443420.a n = (A336838 (n + 1) : ℚ)

end A336838

/-! ## A336838.P8565209777362080832

`A057020(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336838

/-- `A057020(A003961(n+1))` -/
def P8565209777362080832.Spec : Prop :=
  ∀ n, P8565209777362080832.a n = A336838 (n + 1)

theorem P8565209777362080832.correct : P8565209777362080832.Spec := by
  intro n
  simp only [A336838, Nat.add_sub_cancel]

end A336838

/-! ## A336838.P15472216160597649750

`(A336852(n+1)+A000203(n+1))/A336856(n+1)`
-/

namespace A336838.P15472216160597649750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336852 (n + 1) + A000203 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336838.P15472216160597649750

namespace A336838

/-- `(A336852(n+1)+A000203(n+1))/A336856(n+1)` -/
def P15472216160597649750.Spec : Prop :=
  ∀ n, P15472216160597649750.a n = (A336838 (n + 1) : ℚ)

end A336838

/-! ## A336838.P3521280015787221444

`A003961(n+1)*A336839(n+1)-A336837(n+1)`
-/

namespace A336838.P3521280015787221444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A336839 (n + 1) - A336837 (n + 1)

end

end A336838.P3521280015787221444

namespace A336838

/-- `A003961(n+1)*A336839(n+1)-A336837(n+1)` -/
def P3521280015787221444.Spec : Prop :=
  ∀ n, P3521280015787221444.a n = A336838 (n + 1)

end A336838

/-! ## A336838.P1704691226444976658

`A003973(n+1)/A000005(n+1)*A336839(n+1)`
-/

namespace A336838.P1704691226444976658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A336839 (n + 1) : ℚ)

end

end A336838.P1704691226444976658

namespace A336838

/-- `A003973(n+1)/A000005(n+1)*A336839(n+1)` -/
def P1704691226444976658.Spec : Prop :=
  ∀ n, P1704691226444976658.a n = (A336838 (n + 1) : ℚ)

end A336838

/-! ## A336838.P9085920909111846867

`A336846(n+1)*A336848(n+1)/A336856(n+1)`
-/

namespace A336838.P9085920909111846867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336846 (n + 1) * A336848 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336838.P9085920909111846867

namespace A336838

/-- `A336846(n+1)*A336848(n+1)/A336856(n+1)` -/
def P9085920909111846867.Spec : Prop :=
  ∀ n, P9085920909111846867.a n = (A336838 (n + 1) : ℚ)

end A336838

/-! ## A336838.P11946460174188370351

`A057020(A253885(n)+1)`
-/

namespace A336838.P11946460174188370351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A253885 n + 1).toNat

end

end A336838.P11946460174188370351

namespace A336838

/-- `A057020(A253885(n)+1)` -/
def P11946460174188370351.Spec : Prop :=
  ∀ n, P11946460174188370351.a n = A336838 (n + 1)

end A336838

/-! ## A336838.P7742037642395198473

`A003973(n+1)/A009205(A003961(n+1))`
-/

namespace A336838.P7742037642395198473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A009205 (A003961 (n + 1)).toNat : ℚ)

end

end A336838.P7742037642395198473

namespace A336838

/-- `A003973(n+1)/A009205(A003961(n+1))` -/
def P7742037642395198473.Spec : Prop :=
  ∀ n, P7742037642395198473.a n = (A336838 (n + 1) : ℚ)

end A336838

/-!
# A336839: Denominator of the arithmetic mean of the divisors of A003961(n).

The programs for A336839, the canonical program `A336839.P11553326894089779945` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336839 has offset 1).

The definition of A336839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A057021, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336839.P11553326894089779945

`A057021(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336839

/-- `A057021(A003961(n+1))` -/
def P11553326894089779945.Spec : Prop :=
  ∀ n, P11553326894089779945.a n = A336839 (n + 1)

theorem P11553326894089779945.correct : P11553326894089779945.Spec := by
  intro n
  simp only [A336839, Nat.add_sub_cancel]

end A336839

/-! ## A336839.P11590449814732586536

`A000005(n+1)/A336856(n+1)`
-/

namespace A336839.P11590449814732586536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336839.P11590449814732586536

namespace A336839

/-- `A000005(n+1)/A336856(n+1)` -/
def P11590449814732586536.Spec : Prop :=
  ∀ n, P11590449814732586536.a n = (A336839 (n + 1) : ℚ)

end A336839

/-! ## A336839.P8855390684747001901

`(A336838(n+1)+A336837(n+1))/A003961(n+1)`
-/

namespace A336839.P8855390684747001901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336838 (n + 1) + A336837 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)

end

end A336839.P8855390684747001901

namespace A336839

/-- `(A336838(n+1)+A336837(n+1))/A003961(n+1)` -/
def P8855390684747001901.Spec : Prop :=
  ∀ n, P8855390684747001901.a n = (A336839 (n + 1) : ℚ)

end A336839

/-! ## A336839.P4280917711218869819

`A000005(n+1)/A003973(n+1)*A336838(n+1)`
-/

namespace A336839.P4280917711218869819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A003973 (n + 1) : ℚ) * (A336838 (n + 1) : ℚ)

end

end A336839.P4280917711218869819

namespace A336839

/-- `A000005(n+1)/A003973(n+1)*A336838(n+1)` -/
def P4280917711218869819.Spec : Prop :=
  ∀ n, P4280917711218869819.a n = (A336839 (n + 1) : ℚ)

end A336839

/-! ## A336839.P3267031237552097098

`A064840(n+1)/(A000203(n+1)*A336856(n+1))`
-/

namespace A336839.P3267031237552097098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A000203 (n + 1) * A336856 (n + 1) : ℚ)

end

end A336839.P3267031237552097098

namespace A336839

/-- `A064840(n+1)/(A000203(n+1)*A336856(n+1))` -/
def P3267031237552097098.Spec : Prop :=
  ∀ n, P3267031237552097098.a n = (A336839 (n + 1) : ℚ)

end A336839

/-! ## A336839.P2114575694648635895

`A336845(n+1)/(A003961(n+1)*A336856(n+1))`
-/

namespace A336839.P2114575694648635895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A003961 (n + 1) * A336856 (n + 1) : ℚ)

end

end A336839.P2114575694648635895

namespace A336839

/-- `A336845(n+1)/(A003961(n+1)*A336856(n+1))` -/
def P2114575694648635895.Spec : Prop :=
  ∀ n, P2114575694648635895.a n = (A336839 (n + 1) : ℚ)

end A336839

/-! ## A336839.P13299419976266721636

`A057021(A253885(n)+1)`
-/

namespace A336839.P13299419976266721636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (A253885 n + 1).toNat

end

end A336839.P13299419976266721636

namespace A336839

/-- `A057021(A253885(n)+1)` -/
def P13299419976266721636.Spec : Prop :=
  ∀ n, P13299419976266721636.a n = A336839 (n + 1)

end A336839

/-! ## A336839.P6115179076011275740

`A000005(n+1)/A009205(A003961(n+1))`
-/

namespace A336839.P6115179076011275740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A009205 (A003961 (n + 1)).toNat : ℚ)

end

end A336839.P6115179076011275740

namespace A336839

/-- `A000005(n+1)/A009205(A003961(n+1))` -/
def P6115179076011275740.Spec : Prop :=
  ∀ n, P6115179076011275740.a n = (A336839 (n + 1) : ℚ)

end A336839

/-!
# A336840: Inverse Möbius transform of A048673.

The programs for A336840, the canonical program `A336840.P4199511304269638983` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336840 has offset 1).

The definition of A336840 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336840.P17191097845754745504

`1/2*(A000005(n+1)+A003973(n+1))`
-/

namespace A336840.P17191097845754745504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000005 (n + 1) + A003973 (n + 1) : ℚ)

end

end A336840.P17191097845754745504

namespace A336840

/-- `1/2*(A000005(n+1)+A003973(n+1))` -/
def P17191097845754745504.Spec : Prop :=
  ∀ n, P17191097845754745504.a n = (A336840 (n + 1) : ℚ)

end A336840

/-! ## A336840.P4199511304269638983

`A364063(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336840

/-- `A364063(A048673(n+1))` -/
def P4199511304269638983.Spec : Prop :=
  ∀ n, P4199511304269638983.a n = A336840 (n + 1)

theorem P4199511304269638983.correct : P4199511304269638983.Spec := by
  intro n
  simp only [A336840, Nat.add_sub_cancel]

end A336840

/-! ## A336840.P13513193883668559108

`A113415(A003961(n+1))`
-/

namespace A336840.P13513193883668559108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A003961 (n + 1)).toNat

end

end A336840.P13513193883668559108

namespace A336840

/-- `A113415(A003961(n+1))` -/
def P13513193883668559108.Spec : Prop :=
  ∀ n, P13513193883668559108.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P11050779793860178920

`∑{d}[n+1, A048673(#)]`
-/

namespace A336840.P11050779793860178920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 d

end

end A336840.P11050779793860178920

namespace A336840

/-- `∑{d}[n+1, A048673(#)]` -/
def P11050779793860178920.Spec : Prop :=
  ∀ n, P11050779793860178920.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P153777107584608400

`A349910(n+1)+A048673(n+1)`
-/

namespace A336840.P153777107584608400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349910 (n + 1) + A048673 (n + 1)

end

end A336840.P153777107584608400

namespace A336840

/-- `A349910(n+1)+A048673(n+1)` -/
def P153777107584608400.Spec : Prop :=
  ∀ n, P153777107584608400.a n = A336840 (n + 1)

theorem P153777107584608400.correct : P153777107584608400.Spec := by
  intro n
  simp only [A336840, Nat.add_sub_cancel, A336840.P153777107584608400.a, A336840.P4199511304269638983.a, A048673, A048673.P16342935298832955059.a, A349910, A349910.P15708250188466983779.a, A364063, A364063.P4438084833510939295.a, A007503, A007503.P13484425310514315912.a, A045965, A045965.P3274931299755745232.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336840

/-! ## A336840.P10102240963421679901

`(A003973(n+1)+A000005(n+1))/2`
-/

namespace A336840.P10102240963421679901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) + A000005 (n + 1) : ℚ) / 2

end

end A336840.P10102240963421679901

namespace A336840

/-- `(A003973(n+1)+A000005(n+1))/2` -/
def P10102240963421679901.Spec : Prop :=
  ∀ n, P10102240963421679901.a n = (A336840 (n + 1) : ℚ)

end A336840

/-! ## A336840.P7815205774996005767

`∑{d}[n+1, A000203(#)*A349571((n+1)/#)]`
-/

namespace A336840.P7815205774996005767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A349571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336840.P7815205774996005767

namespace A336840

/-- `∑{d}[n+1, A000203(#)*A349571((n+1)/#)]` -/
def P7815205774996005767.Spec : Prop :=
  ∀ n, P7815205774996005767.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P1407410985808768884

`∑{d}[n+1, A003973(#)*A349385((n+1)/#)]`
-/

namespace A336840.P1407410985808768884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A349385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336840.P1407410985808768884

namespace A336840

/-- `∑{d}[n+1, A003973(#)*A349385((n+1)/#)]` -/
def P1407410985808768884.Spec : Prop :=
  ∀ n, P1407410985808768884.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P10358860368882392913

`∑{d}[n+1, A000005(#)*A378521((n+1)/#)]`
-/

namespace A336840.P10358860368882392913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336840.P10358860368882392913

namespace A336840

/-- `∑{d}[n+1, A000005(#)*A378521((n+1)/#)]` -/
def P10358860368882392913.Spec : Prop :=
  ∀ n, P10358860368882392913.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P7277822553884847397

`(A000005(n+1)+A000203(A003961(n+1)))/2`
-/

namespace A336840.P7277822553884847397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) + A000203 (A003961 (n + 1)).toNat : ℚ) / 2

end

end A336840.P7277822553884847397

namespace A336840

/-- `(A000005(n+1)+A000203(A003961(n+1)))/2` -/
def P7277822553884847397.Spec : Prop :=
  ∀ n, P7277822553884847397.a n = (A336840 (n + 1) : ℚ)

end A336840

/-! ## A336840.P9907139819163335457

`A113415(A045965(n+1))`
-/

namespace A336840.P9907139819163335457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A045965 (n + 1)).toNat

end

end A336840.P9907139819163335457

namespace A336840

/-- `A113415(A045965(n+1))` -/
def P9907139819163335457.Spec : Prop :=
  ∀ n, P9907139819163335457.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P3274534183303562763

`A113415(2*A048673(n+1)-1)`
-/

namespace A336840.P3274534183303562763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (2 * A048673 (n + 1) - 1).toNat

end

end A336840.P3274534183303562763

namespace A336840

/-- `A113415(2*A048673(n+1)-1)` -/
def P3274534183303562763.Spec : Prop :=
  ∀ n, P3274534183303562763.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P3228753622893067927

`A349371(A003961(2*n+1-n))`
-/

namespace A336840.P3228753622893067927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349371 (A003961 (2 * n + 1 - n)).toNat

end

end A336840.P3228753622893067927

namespace A336840

/-- `A349371(A003961(2*n+1-n))` -/
def P3228753622893067927.Spec : Prop :=
  ∀ n, P3228753622893067927.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P16295468404634656123

`A113415(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A336840.P16295468404634656123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A336840.P16295468404634656123

namespace A336840

/-- `A113415(A048673(n+1)+A048673(n+1)-1)` -/
def P16295468404634656123.Spec : Prop :=
  ∀ n, P16295468404634656123.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P7035384145170730183

`A007503(A253885(n)+1)/2`
-/

namespace A336840.P7035384145170730183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (A253885 n + 1).toNat : ℚ) / 2

end

end A336840.P7035384145170730183

namespace A336840

/-- `A007503(A253885(n)+1)/2` -/
def P7035384145170730183.Spec : Prop :=
  ∀ n, P7035384145170730183.a n = (A336840 (n + 1) : ℚ)

end A336840

/-! ## A336840.P5413760253414048272

`∑{d}[A003961(n+1), A001057(#)]`
-/

namespace A336840.P5413760253414048272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001057 d

end

end A336840.P5413760253414048272

namespace A336840

/-- `∑{d}[A003961(n+1), A001057(#)]` -/
def P5413760253414048272.Spec : Prop :=
  ∀ n, P5413760253414048272.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P309343104774778605

`∑{d}[A003961(n+1), A003602(#)]`
-/

namespace A336840.P309343104774778605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003602 d

end

end A336840.P309343104774778605

namespace A336840

/-- `∑{d}[A003961(n+1), A003602(#)]` -/
def P309343104774778605.Spec : Prop :=
  ∀ n, P309343104774778605.a n = A336840 (n + 1)

end A336840

/-! ## A336840.P12363194954377493045

`A007503(A297166(2*(n+1)))/2`
-/

namespace A336840.P12363194954377493045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (A297166 (2 * (n + 1))).toNat : ℚ) / 2

end

end A336840.P12363194954377493045

namespace A336840

/-- `A007503(A297166(2*(n+1)))/2` -/
def P12363194954377493045.Spec : Prop :=
  ∀ n, P12363194954377493045.a n = (A336840 (n + 1) : ℚ)

end A336840

/-! ## A336840.P18331473548764956307

`A349371(2*A003961(n+1))/2`
-/

namespace A336840.P18331473548764956307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349371 (2 * A003961 (n + 1)).toNat : ℚ) / 2

end

end A336840.P18331473548764956307

namespace A336840

/-- `A349371(2*A003961(n+1))/2` -/
def P18331473548764956307.Spec : Prop :=
  ∀ n, P18331473548764956307.a n = (A336840 (n + 1) : ℚ)

end A336840

/-! ## A336840.P15344938952896411788

`∑{d}[A003961(n+1), A064680(#+1)]`
-/

namespace A336840.P15344938952896411788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A064680 (d + 1)

end

end A336840.P15344938952896411788

namespace A336840

/-- `∑{d}[A003961(n+1), A064680(#+1)]` -/
def P15344938952896411788.Spec : Prop :=
  ∀ n, P15344938952896411788.a n = A336840 (n + 1)

end A336840

/-!
# A336841: Prime-shifted analog of A094471: a(n) = A336845(n) - A003973(n).

The programs for A336841, the canonical program `A336841.P2971694009307455037` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336841 has offset 1).

The definition of A336841 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336845, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336841.P11706361960478565911

`2*A336854(n+1)`
-/

namespace A336841.P11706361960478565911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336854 (n + 1)

end

end A336841.P11706361960478565911

namespace A336841

/-- `2*A336854(n+1)` -/
def P11706361960478565911.Spec : Prop :=
  ∀ n, P11706361960478565911.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P2971694009307455037

`A336845(n+1)-A003973(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336841

/-- `A336845(n+1)-A003973(n+1)` -/
def P2971694009307455037.Spec : Prop :=
  ∀ n, P2971694009307455037.a n = A336841 (n + 1)

theorem P2971694009307455037.correct : P2971694009307455037.Spec := by
  intro n
  simp only [A336841, Nat.add_sub_cancel]

end A336841

/-! ## A336841.P5568613640807823232

`A336837(n+1)*A336856(n+1)`
-/

namespace A336841.P5568613640807823232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336837 (n + 1) * A336856 (n + 1)

end

end A336841.P5568613640807823232

namespace A336841

/-- `A336837(n+1)*A336856(n+1)` -/
def P5568613640807823232.Spec : Prop :=
  ∀ n, P5568613640807823232.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P14213920067955680950

`A000005(n+1)*A336837(n+1)/A336839(n+1)`
-/

namespace A336841.P14213920067955680950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) * ((A336837 (n + 1) : ℚ) / (A336839 (n + 1) : ℚ))

end

end A336841.P14213920067955680950

namespace A336841

/-- `A000005(n+1)*A336837(n+1)/A336839(n+1)` -/
def P14213920067955680950.Spec : Prop :=
  ∀ n, P14213920067955680950.a n = (A336841 (n + 1) : ℚ)

end A336841

/-! ## A336841.P17472708258996114313

`2*(A000005(n+1)*A048673(n+1)-A336840(n+1))`
-/

namespace A336841.P17472708258996114313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000005 (n + 1) * A048673 (n + 1) - A336840 (n + 1))

end

end A336841.P17472708258996114313

namespace A336841

/-- `2*(A000005(n+1)*A048673(n+1)-A336840(n+1))` -/
def P17472708258996114313.Spec : Prop :=
  ∀ n, P17472708258996114313.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P10152240297744580104

`(A003961(n+1)+1)*A000005(n+1)-2*A336840(n+1)`
-/

namespace A336841.P10152240297744580104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) + 1) * A000005 (n + 1) - 2 * A336840 (n + 1)

end

end A336841.P10152240297744580104

namespace A336841

/-- `(A003961(n+1)+1)*A000005(n+1)-2*A336840(n+1)` -/
def P10152240297744580104.Spec : Prop :=
  ∀ n, P10152240297744580104.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P3977205896380642324

`A000005(n+1)*A003961(n+1)-A000203(A003961(n+1))`
-/

namespace A336841.P3977205896380642324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A003961 (n + 1) - A000203 (A003961 (n + 1)).toNat

end

end A336841.P3977205896380642324

namespace A336841

/-- `A000005(n+1)*A003961(n+1)-A000203(A003961(n+1))` -/
def P3977205896380642324.Spec : Prop :=
  ∀ n, P3977205896380642324.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P5588251369394148851

`A094471(A003961(n+1))`
-/

namespace A336841.P5588251369394148851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (A003961 (n + 1)).toNat

end

end A336841.P5588251369394148851

namespace A336841

/-- `A094471(A003961(n+1))` -/
def P5588251369394148851.Spec : Prop :=
  ∀ n, P5588251369394148851.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P9622565373187525159

`∑{d}[n+1, A003961(#)*A253885((n+1)/#-1)]`
-/

namespace A336841.P9622565373187525159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A253885 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A336841.P9622565373187525159

namespace A336841

/-- `∑{d}[n+1, A003961(#)*A253885((n+1)/#-1)]` -/
def P9622565373187525159.Spec : Prop :=
  ∀ n, P9622565373187525159.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P5157889601698394085

`A336854(A000027(n+1))+A336854(n+1)`
-/

namespace A336841.P5157889601698394085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336854 (A000027 (n + 1)).toNat + A336854 (n + 1)

end

end A336841.P5157889601698394085

namespace A336841

/-- `A336854(A000027(n+1))+A336854(n+1)` -/
def P5157889601698394085.Spec : Prop :=
  ∀ n, P5157889601698394085.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P15521198108633524882

`A336845(n+1)-(A336847(n+1)+A336846(n+1))`
-/

namespace A336841.P15521198108633524882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - (A336847 (n + 1) + A336846 (n + 1))

end

end A336841.P15521198108633524882

namespace A336841

/-- `A336845(n+1)-(A336847(n+1)+A336846(n+1))` -/
def P15521198108633524882.Spec : Prop :=
  ∀ n, P15521198108633524882.a n = A336841 (n + 1)

theorem P15521198108633524882.correct : P15521198108633524882.Spec := by
  intro n
  simp only [A336841, Nat.add_sub_cancel, A336841.P15521198108633524882.a, A336841.P2971694009307455037.a, A003973, A003973.P4846480468008244812.a, A336845, A336845.P11271818747595827461.a, A336846, A336846.P1673161235969067192.a, A336847, A336847.P10873545021579543233.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A324121, A324121.P5058798757553332466.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038040, A038040.P16512896840577774730.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336841

/-! ## A336841.P4954698752509527370

`A000005(n+1)*A003961(n+1)-A003973(n+1)`
-/

namespace A336841.P4954698752509527370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A003961 (n + 1) - A003973 (n + 1)

end

end A336841.P4954698752509527370

namespace A336841

/-- `A000005(n+1)*A003961(n+1)-A003973(n+1)` -/
def P4954698752509527370.Spec : Prop :=
  ∀ n, P4954698752509527370.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P14473863617331302057

`A336845(n+1)-A336846(n+1)*A336848(n+1)`
-/

namespace A336841.P14473863617331302057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - A336846 (n + 1) * A336848 (n + 1)

end

end A336841.P14473863617331302057

namespace A336841

/-- `A336845(n+1)-A336846(n+1)*A336848(n+1)` -/
def P14473863617331302057.Spec : Prop :=
  ∀ n, P14473863617331302057.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P15220353323551293130

`(A348509(n+1)-A336848(n+1))*A336846(n+1)`
-/

namespace A336841.P15220353323551293130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348509 (n + 1) - A336848 (n + 1)) * A336846 (n + 1)

end

end A336841.P15220353323551293130

namespace A336841

/-- `(A348509(n+1)-A336848(n+1))*A336846(n+1)` -/
def P15220353323551293130.Spec : Prop :=
  ∀ n, P15220353323551293130.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P1237010408237139368

`A003973(n+1)*A336837(n+1)/A336838(n+1)`
-/

namespace A336841.P1237010408237139368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) * A336837 (n + 1) : ℚ) / (A336838 (n + 1) : ℚ)

end

end A336841.P1237010408237139368

namespace A336841

/-- `A003973(n+1)*A336837(n+1)/A336838(n+1)` -/
def P1237010408237139368.Spec : Prop :=
  ∀ n, P1237010408237139368.a n = (A336841 (n + 1) : ℚ)

end A336841

/-! ## A336841.P11705980361926165109

`A336845(n+1)-A000203(A003961(n+1))`
-/

namespace A336841.P11705980361926165109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - A000203 (A003961 (n + 1)).toNat

end

end A336841.P11705980361926165109

namespace A336841

/-- `A336845(n+1)-A000203(A003961(n+1))` -/
def P11705980361926165109.Spec : Prop :=
  ∀ n, P11705980361926165109.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P6919188201326763884

`A336845(n+1)-A000203(A336845(n+1)/A000005(n+1))`
-/

namespace A336841.P6919188201326763884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - A000203 (SequenceMachineLib.roundAway ((A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A336841.P6919188201326763884

namespace A336841

/-- `A336845(n+1)-A000203(A336845(n+1)/A000005(n+1))` -/
def P6919188201326763884.Spec : Prop :=
  ∀ n, P6919188201326763884.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P11254156255436027342

`∑{d}[A297166(2*(n+1)), A297166(2*(n+1))-#]`
-/

namespace A336841.P11254156255436027342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297166 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A297166 (2 * (n + 1)) - (d : ℤ))

end

end A336841.P11254156255436027342

namespace A336841

/-- `∑{d}[A297166(2*(n+1)), A297166(2*(n+1))-#]` -/
def P11254156255436027342.Spec : Prop :=
  ∀ n, P11254156255436027342.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P9517235288747475925

`A336475(A003961(n+1))-A003973(n+1)`
-/

namespace A336841.P9517235288747475925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336475 (A003961 (n + 1)).toNat - A003973 (n + 1)

end

end A336841.P9517235288747475925

namespace A336841

/-- `A336475(A003961(n+1))-A003973(n+1)` -/
def P9517235288747475925.Spec : Prop :=
  ∀ n, P9517235288747475925.a n = A336841 (n + 1)

end A336841

/-! ## A336841.P11941542046854238779

`A094471(A253885(n)+1)`
-/

namespace A336841.P11941542046854238779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (A253885 n + 1).toNat

end

end A336841.P11941542046854238779

namespace A336841

/-- `A094471(A253885(n)+1)` -/
def P11941542046854238779.Spec : Prop :=
  ∀ n, P11941542046854238779.a n = A336841 (n + 1)

end A336841

/-!
# A336842: Number of trailing 1-bits in the binary representation of A003961(n): a(n) = A007814(1+A003961(n)).

The programs for A336842, the canonical program `A336842.P8840037860068940282` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336842 has offset 1).

The definition of A336842 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336842.P8840037860068940282

`A007814(1+A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336842

/-- `A007814(1+A003961(n+1))` -/
def P8840037860068940282.Spec : Prop :=
  ∀ n, P8840037860068940282.a n = A336842 (n + 1)

theorem P8840037860068940282.correct : P8840037860068940282.Spec := by
  intro n
  simp only [A336842, Nat.add_sub_cancel]

end A336842

/-! ## A336842.P9806093700967265573

`A286583(n+1)+1`
-/

namespace A336842.P9806093700967265573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286583 (n + 1) + 1

end

end A336842.P9806093700967265573

namespace A336842

/-- `A286583(n+1)+1` -/
def P9806093700967265573.Spec : Prop :=
  ∀ n, P9806093700967265573.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P10671998875087072203

`val(A243501(n+1), 2)`
-/

namespace A336842.P10671998875087072203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243501 (n + 1)).toNat 2

end

end A336842.P10671998875087072203

namespace A336842

/-- `val(A243501(n+1), 2)` -/
def P10671998875087072203.Spec : Prop :=
  ∀ n, (P10671998875087072203.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P9403686037917998243

`val(A253885(n)+2, 2)`
-/

namespace A336842.P9403686037917998243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253885 n + 2).toNat 2

end

end A336842.P9403686037917998243

namespace A336842

/-- `val(A253885(n)+2, 2)` -/
def P9403686037917998243.Spec : Prop :=
  ∀ n, (P9403686037917998243.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P12444301375548284659

`val(A048673(n+1), 2)+1`
-/

namespace A336842.P12444301375548284659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048673 (n + 1)).toNat 2 + 1

end

end A336842.P12444301375548284659

namespace A336842

/-- `val(A048673(n+1), 2)+1` -/
def P12444301375548284659.Spec : Prop :=
  ∀ n, (P12444301375548284659.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P7517468725904458583

`A005555(A286583(n+1))`
-/

namespace A336842.P7517468725904458583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A286583 (n + 1)).toNat

end

end A336842.P7517468725904458583

namespace A336842

/-- `A005555(A286583(n+1))` -/
def P7517468725904458583.Spec : Prop :=
  ∀ n, P7517468725904458583.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P9471037965232212173

`val(A045965(n+1)+A045965(n+1)², 2)`
-/

namespace A336842.P9471037965232212173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045965 (n + 1) + A045965 (n + 1) ^ 2).toNat 2

end

end A336842.P9471037965232212173

namespace A336842

/-- `val(A045965(n+1)+A045965(n+1)², 2)` -/
def P9471037965232212173.Spec : Prop :=
  ∀ n, (P9471037965232212173.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P14854404100071880367

`val(A249810(2*(n+1)), 2)+1`
-/

namespace A336842.P14854404100071880367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249810 (2 * (n + 1))).toNat 2 + 1

end

end A336842.P14854404100071880367

namespace A336842

/-- `val(A249810(2*(n+1)), 2)+1` -/
def P14854404100071880367.Spec : Prop :=
  ∀ n, (P14854404100071880367.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P11277313520915859924

`A302045(A003961(n+1)+1)`
-/

namespace A336842.P11277313520915859924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A003961 (n + 1) + 1).toNat

end

end A336842.P11277313520915859924

namespace A336842

/-- `A302045(A003961(n+1)+1)` -/
def P11277313520915859924.Spec : Prop :=
  ∀ n, P11277313520915859924.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P794563216019665629

`val(A297166(2*(n+1))+1, 2)`
-/

namespace A336842.P794563216019665629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A297166 (2 * (n + 1)) + 1).toNat 2

end

end A336842.P794563216019665629

namespace A336842

/-- `val(A297166(2*(n+1))+1, 2)` -/
def P794563216019665629.Spec : Prop :=
  ∀ n, (P794563216019665629.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P10760382666040811850

`val(A283464(2*(n+1)), 2)+1`
-/

namespace A336842.P10760382666040811850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283464 (2 * (n + 1))).toNat 2 + 1

end

end A336842.P10760382666040811850

namespace A336842

/-- `val(A283464(2*(n+1)), 2)+1` -/
def P10760382666040811850.Spec : Prop :=
  ∀ n, (P10760382666040811850.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P2257244238907087280

`A001511(A048673(n+1))`
-/

namespace A336842.P2257244238907087280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A048673 (n + 1)).toNat

end

end A336842.P2257244238907087280

namespace A336842

/-- `A001511(A048673(n+1))` -/
def P2257244238907087280.Spec : Prop :=
  ∀ n, P2257244238907087280.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P6303077122608112949

`A001511((A003961(n+1)+1)/2)`
-/

namespace A336842.P6303077122608112949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A336842.P6303077122608112949

namespace A336842

/-- `A001511((A003961(n+1)+1)/2)` -/
def P6303077122608112949.Spec : Prop :=
  ∀ n, P6303077122608112949.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P5738276913159310484

`A007814(A243501(n+1)/2)+1`
-/

namespace A336842.P5738276913159310484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat + 1

end

end A336842.P5738276913159310484

namespace A336842

/-- `A007814(A243501(n+1)/2)+1` -/
def P5738276913159310484.Spec : Prop :=
  ∀ n, P5738276913159310484.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P18190130190270803674

`A001222(A171977(A249810(2*(n+1))))`
-/

namespace A336842.P18190130190270803674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A171977 (A249810 (2 * (n + 1))).toNat).toNat

end

end A336842.P18190130190270803674

namespace A336842

/-- `A001222(A171977(A249810(2*(n+1))))` -/
def P18190130190270803674.Spec : Prop :=
  ∀ n, P18190130190270803674.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P4881733535387616211

`A349371(A006519(A048673(A003602(2*n+1))))`
-/

namespace A336842.P4881733535387616211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349371 (A006519 (A048673 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A336842.P4881733535387616211

namespace A336842

/-- `A349371(A006519(A048673(A003602(2*n+1))))` -/
def P4881733535387616211.Spec : Prop :=
  ∀ n, P4881733535387616211.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P987025632075139139

`A089309(A045965(n+1))`
-/

namespace A336842.P987025632075139139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A045965 (n + 1)).toNat

end

end A336842.P987025632075139139

namespace A336842

/-- `A089309(A045965(n+1))` -/
def P987025632075139139.Spec : Prop :=
  ∀ n, P987025632075139139.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P16381550418134064201

`A254046(A245447(n+1))`
-/

namespace A336842.P16381550418134064201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A245447 (n + 1)).toNat

end

end A336842.P16381550418134064201

namespace A336842

/-- `A254046(A245447(n+1))` -/
def P16381550418134064201.Spec : Prop :=
  ∀ n, P16381550418134064201.a n = A336842 (n + 1)

end A336842

/-! ## A336842.P15845712246211339785

`val(A266646(2*(n+1)), 2)`
-/

namespace A336842.P15845712246211339785
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266646 (2 * (n + 1))).toNat 2

end

end A336842.P15845712246211339785

namespace A336842

/-- `val(A266646(2*(n+1)), 2)` -/
def P15845712246211339785.Spec : Prop :=
  ∀ n, (P15845712246211339785.a n : ℤ) = A336842 (n + 1)

end A336842

/-! ## A336842.P1630003278320181574

`A050603(A253885(n))`
-/

namespace A336842.P1630003278320181574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A253885 n).toNat

end

end A336842.P1630003278320181574

namespace A336842

/-- `A050603(A253885(n))` -/
def P1630003278320181574.Spec : Prop :=
  ∀ n, P1630003278320181574.a n = A336842 (n + 1)

end A336842

/-!
# A336843: Period of binary representation of 1/A003961(n): a(n) = A007733(A003961(n)).

The programs for A336843, there is no canonical definition to state claims against.
-/

/-! ## A336843.P8890636281028016523

`A002326(A108228(n+1))`
-/

namespace A336843.P8890636281028016523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A108228 (n + 1)).toNat

end

end A336843.P8890636281028016523

/-! ## A336843.P15651001411518130893

`A002326(A048673(n+1)-1)`
-/

namespace A336843.P15651001411518130893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A048673 (n + 1) - 1).toNat

end

end A336843.P15651001411518130893

/-! ## A336843.P11669892036745026398

`A007733(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336843.P11669892036745026398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A003961 (n + 1)).toNat

end

end A336843.P11669892036745026398

/-! ## A336843.P6965599640477870950

`A002326(floor(A003961(n+1)/2))`
-/

namespace A336843.P6965599640477870950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ⌊(A003961 (n + 1) : ℚ) / 2⌋.toNat

end

end A336843.P6965599640477870950

/-! ## A336843.P281988960442725548

`A002326((A003961(n+1)-1)/2)`
-/

namespace A336843.P281988960442725548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A003961 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A336843.P281988960442725548

/-! ## A336843.P2798484747453810598

`A002326(A003961(n+1)%A048673(n+1))`
-/

namespace A336843.P2798484747453810598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (Int.tmod (A003961 (n + 1)) (A048673 (n + 1))).toNat

end

end A336843.P2798484747453810598

/-! ## A336843.P17942392958708461339

`A007733(A045965(n+1))`
-/

namespace A336843.P17942392958708461339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A045965 (n + 1)).toNat

end

end A336843.P17942392958708461339

/-! ## A336843.P7154677276938353455

`A007733(A253885(n)+1)`
-/

namespace A336843.P7154677276938353455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A253885 n + 1).toNat

end

end A336843.P7154677276938353455

/-! ## A336843.P7319465879900855456

`A024222(A243501(n+1))`
-/

namespace A336843.P7319465879900855456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A243501 (n + 1)).toNat

end

end A336843.P7319465879900855456

/-! ## A336843.P1220730160565075478

`A024222(A003961(n+1)+1)`
-/

namespace A336843.P1220730160565075478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A003961 (n + 1) + 1).toNat

end

end A336843.P1220730160565075478

/-! ## A336843.P4674859793514154104

`A007733(2*A048673(n+1)-1)`
-/

namespace A336843.P4674859793514154104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (2 * A048673 (n + 1) - 1).toNat

end

end A336843.P4674859793514154104

/-! ## A336843.P16805607789398837363

`A007733(A108228(n+1)+A048673(n+1))`
-/

namespace A336843.P16805607789398837363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A108228 (n + 1) + A048673 (n + 1)).toNat

end

end A336843.P16805607789398837363

/-! ## A336843.P18082750159101737986

`A007733(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A336843.P18082750159101737986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A336843.P18082750159101737986

/-! ## A336843.P4714092972891094594

`A204987(A003961(n+1))+A008683(A240710(n+1))`
-/

namespace A336843.P4714092972891094594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A003961 (n + 1)).toNat + A008683 (A240710 (n + 1)).toNat

end

end A336843.P4714092972891094594

/-!
# A336844: a(n) = A336698(A003961(n)).

The programs for A336844, the canonical program `A336844.P6459901798776764731` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336844 has offset 1).

The definition of A336844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336844.P2754434808335769640

`A000265(1+A000265(A003973(n+1)))`
-/

namespace A336844.P2754434808335769640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A000265 (A003973 (n + 1)).toNat).toNat

end

end A336844.P2754434808335769640

namespace A336844

/-- `A000265(1+A000265(A003973(n+1)))` -/
def P2754434808335769640.Spec : Prop :=
  ∀ n, P2754434808335769640.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P6459901798776764731

`A336698(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336844

/-- `A336698(A003961(n+1))` -/
def P6459901798776764731.Spec : Prop :=
  ∀ n, P6459901798776764731.a n = A336844 (n + 1)

theorem P6459901798776764731.correct : P6459901798776764731.Spec := by
  intro n
  simp only [A336844, Nat.add_sub_cancel]

end A336844

/-! ## A336844.P18191871077491388748

`A003961(A064989(A048673(A326042(n+1))))`
-/

namespace A336844.P18191871077491388748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064989 (A048673 (A326042 (n + 1)).toNat).toNat).toNat

end

end A336844.P18191871077491388748

namespace A336844

/-- `A003961(A064989(A048673(A326042(n+1))))` -/
def P18191871077491388748.Spec : Prop :=
  ∀ n, P18191871077491388748.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P4410270050219082094

`A336698(A045965(n+1))`
-/

namespace A336844.P4410270050219082094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A045965 (n + 1)).toNat

end

end A336844.P4410270050219082094

namespace A336844

/-- `A336698(A045965(n+1))` -/
def P4410270050219082094.Spec : Prop :=
  ∀ n, P4410270050219082094.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P12923379998485691390

`A336698(A253885(n)+1)`
-/

namespace A336844.P12923379998485691390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A253885 n + 1).toNat

end

end A336844.P12923379998485691390

namespace A336844

/-- `A336698(A253885(n)+1)` -/
def P12923379998485691390.Spec : Prop :=
  ∀ n, P12923379998485691390.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P12445965464997494687

`A336698(2*A048673(n+1)-1)`
-/

namespace A336844.P12445965464997494687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (2 * A048673 (n + 1) - 1).toNat

end

end A336844.P12445965464997494687

namespace A336844

/-- `A336698(2*A048673(n+1)-1)` -/
def P12445965464997494687.Spec : Prop :=
  ∀ n, P12445965464997494687.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P8070803137293701793

`A336699(2*A048673(n+1)-1)`
-/

namespace A336844.P8070803137293701793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (2 * A048673 (n + 1) - 1).toNat

end

end A336844.P8070803137293701793

namespace A336844

/-- `A336699(2*A048673(n+1)-1)` -/
def P8070803137293701793.Spec : Prop :=
  ∀ n, P8070803137293701793.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P12177081410531315606

`A336699(A003961(2*n+1-n))`
-/

namespace A336844.P12177081410531315606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A003961 (2 * n + 1 - n)).toNat

end

end A336844.P12177081410531315606

namespace A336844

/-- `A336699(A003961(2*n+1-n))` -/
def P12177081410531315606.Spec : Prop :=
  ∀ n, P12177081410531315606.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P10605830789695882330

`A336698(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A336844.P10605830789695882330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336698 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A336844.P10605830789695882330

namespace A336844

/-- `A336698(A048673(n+1)+A048673(n+1)-1)` -/
def P10605830789695882330.Spec : Prop :=
  ∀ n, P10605830789695882330.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P7749088292102999879

`A336699(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A336844.P7749088292102999879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A336844.P7749088292102999879

namespace A336844

/-- `A336699(A048673(n+1)+A048673(n+1)-1)` -/
def P7749088292102999879.Spec : Prop :=
  ∀ n, P7749088292102999879.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P14520326271048898132

`A351565(A003973(n+1))`
-/

namespace A336844.P14520326271048898132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351565 (A003973 (n + 1)).toNat

end

end A336844.P14520326271048898132

namespace A336844

/-- `A351565(A003973(n+1))` -/
def P14520326271048898132.Spec : Prop :=
  ∀ n, P14520326271048898132.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P10233732508794324880

`A336699(2*A003961(n+1))`
-/

namespace A336844.P10233732508794324880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (2 * A003961 (n + 1)).toNat

end

end A336844.P10233732508794324880

namespace A336844

/-- `A336699(2*A003961(n+1))` -/
def P10233732508794324880.Spec : Prop :=
  ∀ n, P10233732508794324880.a n = A336844 (n + 1)

end A336844

/-! ## A336844.P8519733636042326140

`A336699(A003961(n+1)+A003961(n+1))`
-/

namespace A336844.P8519733636042326140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A003961 (n + 1) + A003961 (n + 1)).toNat

end

end A336844.P8519733636042326140

namespace A336844

/-- `A336699(A003961(n+1)+A003961(n+1))` -/
def P8519733636042326140.Spec : Prop :=
  ∀ n, P8519733636042326140.a n = A336844 (n + 1)

end A336844

/-!
# A336845: a(n) = A000005(n) * A003961(n), where A003961 is the prime shift towards larger primes, and A000005 gives the number of divisors of n, and also of A003961(n).

The programs for A336845, the canonical program `A336845.P11271818747595827461` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336845 has offset 1).

The definition of A336845 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336845.P17462323330912181768

`A336841(n+1)+A003973(n+1)`
-/

namespace A336845.P17462323330912181768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336841 (n + 1) + A003973 (n + 1)

end

end A336845.P17462323330912181768

namespace A336845

/-- `A336841(n+1)+A003973(n+1)` -/
def P17462323330912181768.Spec : Prop :=
  ∀ n, P17462323330912181768.a n = A336845 (n + 1)

theorem P17462323330912181768.correct : P17462323330912181768.Spec := by
  intro n
  simp only [A336845, Nat.add_sub_cancel, A336845.P17462323330912181768.a, A336845.P11271818747595827461.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A336841, A336841.P2971694009307455037.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336845

/-! ## A336845.P11271818747595827461

`A000005(n+1)*A003961(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336845

/-- `A000005(n+1)*A003961(n+1)` -/
def P11271818747595827461.Spec : Prop :=
  ∀ n, P11271818747595827461.a n = A336845 (n + 1)

theorem P11271818747595827461.correct : P11271818747595827461.Spec := by
  intro n
  simp only [A336845, Nat.add_sub_cancel]

end A336845

/-! ## A336845.P4881654564143291885

`A038040(A003961(n+1))`
-/

namespace A336845.P4881654564143291885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (A003961 (n + 1)).toNat

end

end A336845.P4881654564143291885

namespace A336845

/-- `A038040(A003961(n+1))` -/
def P4881654564143291885.Spec : Prop :=
  ∀ n, P4881654564143291885.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P17028025903229626513

`Δ[A006218(n)]*A003961(n+1)`
-/

namespace A336845.P17028025903229626513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003961 (n + 1)

end

end A336845.P17028025903229626513

namespace A336845

/-- `Δ[A006218(n)]*A003961(n+1)` -/
def P17028025903229626513.Spec : Prop :=
  ∀ n, P17028025903229626513.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P15110324603479077816

`Δ[A054519(n)]*A003961(n+1)`
-/

namespace A336845.P15110324603479077816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003961 (n + 1)

end

end A336845.P15110324603479077816

namespace A336845

/-- `Δ[A054519(n)]*A003961(n+1)` -/
def P15110324603479077816.Spec : Prop :=
  ∀ n, P15110324603479077816.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P3076180250639043755

`(A253885(n)+1)*A000005(n+1)`
-/

namespace A336845.P3076180250639043755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1) * A000005 (n + 1)

end

end A336845.P3076180250639043755

namespace A336845

/-- `(A253885(n)+1)*A000005(n+1)` -/
def P3076180250639043755.Spec : Prop :=
  ∀ n, P3076180250639043755.a n = A336845 (n + 1)

theorem P3076180250639043755.correct : P3076180250639043755.Spec := by
  intro n
  simp only [A336845, Nat.add_sub_cancel, A336845.P3076180250639043755.a, A336845.P11271818747595827461.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, A156552, A156552.P4268073137713085227.a, A252750, A252750.P12930142929614438506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336845

/-! ## A336845.P11090328728618572469

`A336846(n+1)*A348509(n+1)`
-/

namespace A336845.P11090328728618572469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336846 (n + 1) * A348509 (n + 1)

end

end A336845.P11090328728618572469

namespace A336845

/-- `A336846(n+1)*A348509(n+1)` -/
def P11090328728618572469.Spec : Prop :=
  ∀ n, P11090328728618572469.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P10008399793190673338

`(A243501(n+1)-1)*A000005(n+1)`
-/

namespace A336845.P10008399793190673338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) - 1) * A000005 (n + 1)

end

end A336845.P10008399793190673338

namespace A336845

/-- `(A243501(n+1)-1)*A000005(n+1)` -/
def P10008399793190673338.Spec : Prop :=
  ∀ n, P10008399793190673338.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P7682422094985975662

`A003973(n+1)+2*A336854(n+1)`
-/

namespace A336845.P7682422094985975662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + 2 * A336854 (n + 1)

end

end A336845.P7682422094985975662

namespace A336845

/-- `A003973(n+1)+2*A336854(n+1)` -/
def P7682422094985975662.Spec : Prop :=
  ∀ n, P7682422094985975662.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P10946818612291738972

`(2*A048673(n+1)-1)*A000005(n+1)`
-/

namespace A336845.P10946818612291738972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A048673 (n + 1) - 1) * A000005 (n + 1)

end

end A336845.P10946818612291738972

namespace A336845

/-- `(2*A048673(n+1)-1)*A000005(n+1)` -/
def P10946818612291738972.Spec : Prop :=
  ∀ n, P10946818612291738972.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P1092927981307694062

`∑{d}[n+1, A003961(#)*A003961((n+1)/#)]`
-/

namespace A336845.P1092927981307694062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336845.P1092927981307694062

namespace A336845

/-- `∑{d}[n+1, A003961(#)*A003961((n+1)/#)]` -/
def P1092927981307694062.Spec : Prop :=
  ∀ n, P1092927981307694062.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P15316524303378924943

`∑{d}[n+1, A003972(#)*A003973((n+1)/#)]`
-/

namespace A336845.P15316524303378924943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A003973 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336845.P15316524303378924943

namespace A336845

/-- `∑{d}[n+1, A003972(#)*A003973((n+1)/#)]` -/
def P15316524303378924943.Spec : Prop :=
  ∀ n, P15316524303378924943.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P2398700522932168955

`∑{d}[n+1, A347136(#)*A349387((n+1)/#)]`
-/

namespace A336845.P2398700522932168955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347136 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336845.P2398700522932168955

namespace A336845

/-- `∑{d}[n+1, A347136(#)*A349387((n+1)/#)]` -/
def P2398700522932168955.Spec : Prop :=
  ∀ n, P2398700522932168955.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P17493517152027555010

`(∑{d}[n+1, #+1]-A000203(n+1))*A003961(n+1)`
-/

namespace A336845.P17493517152027555010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)) * A003961 (n + 1)

end

end A336845.P17493517152027555010

namespace A336845

/-- `(∑{d}[n+1, #+1]-A000203(n+1))*A003961(n+1)` -/
def P17493517152027555010.Spec : Prop :=
  ∀ n, P17493517152027555010.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P2391912207990404657

`A003961(n+1)*A064553(A181819(n+1))`
-/

namespace A336845.P2391912207990404657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A064553 (A181819 (n + 1)).toNat

end

end A336845.P2391912207990404657

namespace A336845

/-- `A003961(n+1)*A064553(A181819(n+1))` -/
def P2391912207990404657.Spec : Prop :=
  ∀ n, P2391912207990404657.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P9767920991788866199

`A003961(n+1)+A003961(n+1)*A032741(n+1)`
-/

namespace A336845.P9767920991788866199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + A003961 (n + 1) * A032741 (n + 1)

end

end A336845.P9767920991788866199

namespace A336845

/-- `A003961(n+1)+A003961(n+1)*A032741(n+1)` -/
def P9767920991788866199.Spec : Prop :=
  ∀ n, P9767920991788866199.a n = A336845 (n + 1)

theorem P9767920991788866199.correct : P9767920991788866199.Spec := by
  intro n
  simp only [A336845, Nat.add_sub_cancel, A336845.P9767920991788866199.a, A336845.P11271818747595827461.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336845

/-! ## A336845.P16151220523901096407

`(A286385(n+1)+A000203(n+1))*A000005(n+1)`
-/

namespace A336845.P16151220523901096407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A286385 (n + 1) + A000203 (n + 1)) * A000005 (n + 1)

end

end A336845.P16151220523901096407

namespace A336845

/-- `(A286385(n+1)+A000203(n+1))*A000005(n+1)` -/
def P16151220523901096407.Spec : Prop :=
  ∀ n, P16151220523901096407.a n = A336845 (n + 1)

theorem P16151220523901096407.correct : P16151220523901096407.Spec := by
  intro n
  simp only [A336845, Nat.add_sub_cancel, A336845.P16151220523901096407.a, A336845.P11271818747595827461.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336845

/-! ## A336845.P13485871820971831922

`A003973(n+1)+A336837(n+1)*A336856(n+1)`
-/

namespace A336845.P13485871820971831922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + A336837 (n + 1) * A336856 (n + 1)

end

end A336845.P13485871820971831922

namespace A336845

/-- `A003973(n+1)+A336837(n+1)*A336856(n+1)` -/
def P13485871820971831922.Spec : Prop :=
  ∀ n, P13485871820971831922.a n = A336845 (n + 1)

end A336845

/-! ## A336845.P6836921197140158701

`(A353352(n+1)+A353351(n+1))*A003961(n+1)`
-/

namespace A336845.P6836921197140158701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353352 (n + 1) + A353351 (n + 1)) * A003961 (n + 1)

end

end A336845.P6836921197140158701

namespace A336845

/-- `(A353352(n+1)+A353351(n+1))*A003961(n+1)` -/
def P6836921197140158701.Spec : Prop :=
  ∀ n, P6836921197140158701.a n = A336845 (n + 1)

theorem P6836921197140158701.correct : P6836921197140158701.Spec := by
  intro n
  simp only [A336845, Nat.add_sub_cancel, A336845.P6836921197140158701.a, A336845.P11271818747595827461.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A353351, A353351.P1500515307686791628.a, A353352, A353352.P1673129124953599033.f1, A353352.P1673129124953599033.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A353350, A353350.P17688933372676458567.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A079978, A079978.P10382542118278163374.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336845

/-! ## A336845.P10340556595199673978

`(A353362(n+1)+A353361(n+1))*A003961(n+1)`
-/

namespace A336845.P10340556595199673978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353362 (n + 1) + A353361 (n + 1)) * A003961 (n + 1)

end

end A336845.P10340556595199673978

namespace A336845

/-- `(A353362(n+1)+A353361(n+1))*A003961(n+1)` -/
def P10340556595199673978.Spec : Prop :=
  ∀ n, P10340556595199673978.a n = A336845 (n + 1)

theorem P10340556595199673978.correct : P10340556595199673978.Spec := by
  intro n
  simp only [A336845, Nat.add_sub_cancel, A336845.P10340556595199673978.a, A336845.P11271818747595827461.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A353361, A353361.P1809669952894249071.f1, A353361.P1809669952894249071.a, A353362, A353362.P16534089322779185243.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A332814, A332814.P5107622216486189293.a, A102283, A102283.P18218274576938374007.a, A156552, A156552.P4268073137713085227.a, A252749, A252749.P15054942815197957636.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336845

/-!
# A336846: a(n) = gcd(sigma(A003961(n)), A000005(n)*A003961(n)).

The programs for A336846, the canonical program `A336846.P1673161235969067192` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336846 has offset 1).

The definition of A336846 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336846.P11998823308840194150

`gcd(A003973(n+1), A336841(n+1))`
-/

namespace A336846.P11998823308840194150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003973 (n + 1)) (A336841 (n + 1))

end

end A336846.P11998823308840194150

namespace A336846

/-- `gcd(A003973(n+1), A336841(n+1))` -/
def P11998823308840194150.Spec : Prop :=
  ∀ n, (P11998823308840194150.a n : ℤ) = A336846 (n + 1)

end A336846

/-! ## A336846.P388242436168297548

`gcd(A000203(A003961(n+1)), A000005(n+1)*A003961(n+1))`
-/

namespace A336846.P388242436168297548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A003961 (n + 1)).toNat) (A000005 (n + 1) * A003961 (n + 1))

end

end A336846.P388242436168297548

namespace A336846

/-- `gcd(A000203(A003961(n+1)), A000005(n+1)*A003961(n+1))` -/
def P388242436168297548.Spec : Prop :=
  ∀ n, (P388242436168297548.a n : ℤ) = A336846 (n + 1)

end A336846

/-! ## A336846.P1673161235969067192

`A324121(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336846

/-- `A324121(A003961(n+1))` -/
def P1673161235969067192.Spec : Prop :=
  ∀ n, P1673161235969067192.a n = A336846 (n + 1)

theorem P1673161235969067192.correct : P1673161235969067192.Spec := by
  intro n
  simp only [A336846, Nat.add_sub_cancel]

end A336846

/-! ## A336846.P15029827393852612920

`A003973(n+1)-A336847(n+1)`
-/

namespace A336846.P15029827393852612920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A336847 (n + 1)

end

end A336846.P15029827393852612920

namespace A336846

/-- `A003973(n+1)-A336847(n+1)` -/
def P15029827393852612920.Spec : Prop :=
  ∀ n, P15029827393852612920.a n = A336846 (n + 1)

theorem P15029827393852612920.correct : P15029827393852612920.Spec := by
  intro n
  simp only [A336846, Nat.add_sub_cancel, A336846.P15029827393852612920.a, A336846.P1673161235969067192.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A324121, A324121.P5058798757553332466.a, A336847, A336847.P10873545021579543233.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A000005, A000005.P16091521709108585461.a, A252749, A252749.P15054942815197957636.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336846

/-! ## A336846.P15435410883842455258

`A003973(n+1)/A336848(n+1)`
-/

namespace A336846.P15435410883842455258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336848 (n + 1) : ℚ)

end

end A336846.P15435410883842455258

namespace A336846

/-- `A003973(n+1)/A336848(n+1)` -/
def P15435410883842455258.Spec : Prop :=
  ∀ n, P15435410883842455258.a n = (A336846 (n + 1) : ℚ)

end A336846

/-! ## A336846.P10656559295496668954

`A336845(n+1)/A348509(n+1)`
-/

namespace A336846.P10656559295496668954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A348509 (n + 1) : ℚ)

end

end A336846.P10656559295496668954

namespace A336846

/-- `A336845(n+1)/A348509(n+1)` -/
def P10656559295496668954.Spec : Prop :=
  ∀ n, P10656559295496668954.a n = (A336846 (n + 1) : ℚ)

end A336846

/-! ## A336846.P17422978689437568409

`A336845(n+1)-(A336847(n+1)+A336841(n+1))`
-/

namespace A336846.P17422978689437568409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - (A336847 (n + 1) + A336841 (n + 1))

end

end A336846.P17422978689437568409

namespace A336846

/-- `A336845(n+1)-(A336847(n+1)+A336841(n+1))` -/
def P17422978689437568409.Spec : Prop :=
  ∀ n, P17422978689437568409.a n = A336846 (n + 1)

theorem P17422978689437568409.correct : P17422978689437568409.Spec := by
  intro n
  simp only [A336846, Nat.add_sub_cancel, A336846.P17422978689437568409.a, A336846.P1673161235969067192.a, A003961, A003961.P5996473960037614004.a, A324121, A324121.P5058798757553332466.a, A336841, A336841.P2971694009307455037.a, A336845, A336845.P11271818747595827461.a, A336847, A336847.P10873545021579543233.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003973, A003973.P4846480468008244812.a, A038040, A038040.P16512896840577774730.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336846

/-! ## A336846.P14493716784957837012

`(A336845(n+1)-A336841(n+1))/A336848(n+1)`
-/

namespace A336846.P14493716784957837012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) - A336841 (n + 1) : ℚ) / (A336848 (n + 1) : ℚ)

end

end A336846.P14493716784957837012

namespace A336846

/-- `(A336845(n+1)-A336841(n+1))/A336848(n+1)` -/
def P14493716784957837012.Spec : Prop :=
  ∀ n, P14493716784957837012.a n = (A336846 (n + 1) : ℚ)

end A336846

/-! ## A336846.P412209074920787031

`A336850(n+1)/A336848(n+1)*A341525(n+1)`
-/

namespace A336846.P412209074920787031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336850 (n + 1) : ℚ) / (A336848 (n + 1) : ℚ) * (A341525 (n + 1) : ℚ)

end

end A336846.P412209074920787031

namespace A336846

/-- `A336850(n+1)/A336848(n+1)*A341525(n+1)` -/
def P412209074920787031.Spec : Prop :=
  ∀ n, P412209074920787031.a n = (A336846 (n + 1) : ℚ)

end A336846

/-! ## A336846.P8323081730915022567

`A000203(A003961(n+1))-A336847(n+1)`
-/

namespace A336846.P8323081730915022567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A336847 (n + 1)

end

end A336846.P8323081730915022567

namespace A336846

/-- `A000203(A003961(n+1))-A336847(n+1)` -/
def P8323081730915022567.Spec : Prop :=
  ∀ n, P8323081730915022567.a n = A336846 (n + 1)

theorem P8323081730915022567.correct : P8323081730915022567.Spec := by
  intro n
  simp only [A336846, Nat.add_sub_cancel, A336846.P8323081730915022567.a, A336846.P1673161235969067192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A324121, A324121.P5058798757553332466.a, A336847, A336847.P10873545021579543233.a, A003973, A003973.P4846480468008244812.a, A038040, A038040.P16512896840577774730.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A000005, A000005.P16091521709108585461.a, A252749, A252749.P15054942815197957636.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336846

/-! ## A336846.P5684792002457222760

`A000203(A003961(n+1))/A336848(n+1)`
-/

namespace A336846.P5684792002457222760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003961 (n + 1)).toNat : ℚ) / (A336848 (n + 1) : ℚ)

end

end A336846.P5684792002457222760

namespace A336846

/-- `A000203(A003961(n+1))/A336848(n+1)` -/
def P5684792002457222760.Spec : Prop :=
  ∀ n, P5684792002457222760.a n = (A336846 (n + 1) : ℚ)

end A336846

/-! ## A336846.P17086270084080484217

`A336476(A336845(n+1)/A000005(n+1))`
-/

namespace A336846.P17086270084080484217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336476 (SequenceMachineLib.roundAway ((A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A336846.P17086270084080484217

namespace A336846

/-- `A336476(A336845(n+1)/A000005(n+1))` -/
def P17086270084080484217.Spec : Prop :=
  ∀ n, P17086270084080484217.a n = A336846 (n + 1)

end A336846

/-! ## A336846.P16938164844115287934

`A324121(A045965(n+1))`
-/

namespace A336846.P16938164844115287934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324121 (A045965 (n + 1)).toNat

end

end A336846.P16938164844115287934

namespace A336846

/-- `A324121(A045965(n+1))` -/
def P16938164844115287934.Spec : Prop :=
  ∀ n, P16938164844115287934.a n = A336846 (n + 1)

end A336846

/-! ## A336846.P13854014499080697345

`A038040(A003961(n+1))/A348509(n+1)`
-/

namespace A336846.P13854014499080697345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (A003961 (n + 1)).toNat : ℚ) / (A348509 (n + 1) : ℚ)

end

end A336846.P13854014499080697345

namespace A336846

/-- `A038040(A003961(n+1))/A348509(n+1)` -/
def P13854014499080697345.Spec : Prop :=
  ∀ n, P13854014499080697345.a n = (A336846 (n + 1) : ℚ)

end A336846

/-! ## A336846.P744792828278880905

`A336845(n+1)/A099377(A003961(n+1))`
-/

namespace A336846.P744792828278880905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A099377 (A003961 (n + 1)).toNat : ℚ)

end

end A336846.P744792828278880905

namespace A336846

/-- `A336845(n+1)/A099377(A003961(n+1))` -/
def P744792828278880905.Spec : Prop :=
  ∀ n, P744792828278880905.a n = (A336846 (n + 1) : ℚ)

end A336846

/-! ## A336846.P10583121122593502439

`A336845(n+1)/A099377(A336845(n+1)/A000005(n+1))`
-/

namespace A336846.P10583121122593502439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A099377 (SequenceMachineLib.roundAway ((A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat : ℚ)

end

end A336846.P10583121122593502439

namespace A336846

/-- `A336845(n+1)/A099377(A336845(n+1)/A000005(n+1))` -/
def P10583121122593502439.Spec : Prop :=
  ∀ n, P10583121122593502439.a n = (A336846 (n + 1) : ℚ)

end A336846

/-!
# A336847: a(n) = A003973(n) - A336846(n).

The programs for A336847, the canonical program `A336847.P10873545021579543233` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336847 has offset 1).

The definition of A336847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336847.P10873545021579543233

`A003973(n+1)-A336846(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336847

/-- `A003973(n+1)-A336846(n+1)` -/
def P10873545021579543233.Spec : Prop :=
  ∀ n, P10873545021579543233.a n = A336847 (n + 1)

theorem P10873545021579543233.correct : P10873545021579543233.Spec := by
  intro n
  simp only [A336847, Nat.add_sub_cancel]

end A336847

/-! ## A336847.P2943778060791014285

`(A336848(n+1)-1)*A336846(n+1)`
-/

namespace A336847.P2943778060791014285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336848 (n + 1) - 1) * A336846 (n + 1)

end

end A336847.P2943778060791014285

namespace A336847

/-- `(A336848(n+1)-1)*A336846(n+1)` -/
def P2943778060791014285.Spec : Prop :=
  ∀ n, P2943778060791014285.a n = A336847 (n + 1)

end A336847

/-! ## A336847.P1816617819050361292

`∑{d}[n+1, A003961(#)]-A336846(n+1)`
-/

namespace A336847.P1816617819050361292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d - A336846 (n + 1)

end

end A336847.P1816617819050361292

namespace A336847

/-- `∑{d}[n+1, A003961(#)]-A336846(n+1)` -/
def P1816617819050361292.Spec : Prop :=
  ∀ n, P1816617819050361292.a n = A336847 (n + 1)

end A336847

/-! ## A336847.P795582586729252078

`A336845(n+1)-(A336846(n+1)+A336841(n+1))`
-/

namespace A336847.P795582586729252078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (n + 1) - (A336846 (n + 1) + A336841 (n + 1))

end

end A336847.P795582586729252078

namespace A336847

/-- `A336845(n+1)-(A336846(n+1)+A336841(n+1))` -/
def P795582586729252078.Spec : Prop :=
  ∀ n, P795582586729252078.a n = A336847 (n + 1)

theorem P795582586729252078.correct : P795582586729252078.Spec := by
  intro n
  simp only [A336847, Nat.add_sub_cancel, A336847.P795582586729252078.a, A336847.P10873545021579543233.a, A003973, A003973.P4846480468008244812.a, A336841, A336841.P2971694009307455037.a, A336845, A336845.P11271818747595827461.a, A336846, A336846.P1673161235969067192.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A324121, A324121.P5058798757553332466.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038040, A038040.P16512896840577774730.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336847

/-! ## A336847.P7865300894072925385

`A003973(n+1)-A003973(n+1)/A336848(n+1)`
-/

namespace A336847.P7865300894072925385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) - (A003973 (n + 1) : ℚ) / (A336848 (n + 1) : ℚ)

end

end A336847.P7865300894072925385

namespace A336847

/-- `A003973(n+1)-A003973(n+1)/A336848(n+1)` -/
def P7865300894072925385.Spec : Prop :=
  ∀ n, P7865300894072925385.a n = (A336847 (n + 1) : ℚ)

end A336847

/-! ## A336847.P9049020547001877999

`A003973(n+1)-A336845(n+1)/A348509(n+1)`
-/

namespace A336847.P9049020547001877999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) - (A336845 (n + 1) : ℚ) / (A348509 (n + 1) : ℚ)

end

end A336847.P9049020547001877999

namespace A336847

/-- `A003973(n+1)-A336845(n+1)/A348509(n+1)` -/
def P9049020547001877999.Spec : Prop :=
  ∀ n, P9049020547001877999.a n = (A336847 (n + 1) : ℚ)

end A336847

/-! ## A336847.P10638227299782256462

`A003973(n+1)-gcd(A003973(n+1), A336841(n+1))`
-/

namespace A336847.P10638227299782256462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - (Int.gcd (A003973 (n + 1)) (A336841 (n + 1)) : ℤ)

end

end A336847.P10638227299782256462

namespace A336847

/-- `A003973(n+1)-gcd(A003973(n+1), A336841(n+1))` -/
def P10638227299782256462.Spec : Prop :=
  ∀ n, P10638227299782256462.a n = A336847 (n + 1)

end A336847

/-! ## A336847.P13520829147151830801

`A000203(A003961(n+1))-A336846(n+1)`
-/

namespace A336847.P13520829147151830801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A336846 (n + 1)

end

end A336847.P13520829147151830801

namespace A336847

/-- `A000203(A003961(n+1))-A336846(n+1)` -/
def P13520829147151830801.Spec : Prop :=
  ∀ n, P13520829147151830801.a n = A336847 (n + 1)

end A336847

/-! ## A336847.P9581137716531216148

`A324122(A003961(n+1))`
-/

namespace A336847.P9581137716531216148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324122 (A003961 (n + 1)).toNat

end

end A336847.P9581137716531216148

namespace A336847

/-- `A324122(A003961(n+1))` -/
def P9581137716531216148.Spec : Prop :=
  ∀ n, P9581137716531216148.a n = A336847 (n + 1)

end A336847

/-! ## A336847.P17437478966927130525

`A003973(n+1)-A324121(A003961(n+1))`
-/

namespace A336847.P17437478966927130525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A324121 (A003961 (n + 1)).toNat

end

end A336847.P17437478966927130525

namespace A336847

/-- `A003973(n+1)-A324121(A003961(n+1))` -/
def P17437478966927130525.Spec : Prop :=
  ∀ n, P17437478966927130525.a n = A336847 (n + 1)

end A336847

/-! ## A336847.P10689384435162107980

`A000593(2*A003961(n+1))-A336846(n+1)`
-/

namespace A336847.P10689384435162107980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A003961 (n + 1)).toNat - A336846 (n + 1)

end

end A336847.P10689384435162107980

namespace A336847

/-- `A000593(2*A003961(n+1))-A336846(n+1)` -/
def P10689384435162107980.Spec : Prop :=
  ∀ n, P10689384435162107980.a n = A336847 (n + 1)

end A336847

/-!
# A336848: a(n) = A003973(n) / A336846(n).

The programs for A336848, the canonical program `A336848.P11409207554523116840` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336848 has offset 1).

The definition of A336848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336848.P11409207554523116840

`A003973(n+1)/A336846(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336848

/-- `A003973(n+1)/A336846(n+1)` -/
def P11409207554523116840.Spec : Prop :=
  ∀ n, P11409207554523116840.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P13395194963261436396

`A336847(n+1)/A336846(n+1)+1`
-/

namespace A336848.P13395194963261436396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336847 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ) + 1

end

end A336848.P13395194963261436396

namespace A336848

/-- `A336847(n+1)/A336846(n+1)+1` -/
def P13395194963261436396.Spec : Prop :=
  ∀ n, P13395194963261436396.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P2130885314277447987

`A003973(n+1)/(A003973(n+1)-A336847(n+1))`
-/

namespace A336848.P2130885314277447987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A003973 (n + 1) - A336847 (n + 1) : ℚ)

end

end A336848.P2130885314277447987

namespace A336848

/-- `A003973(n+1)/(A003973(n+1)-A336847(n+1))` -/
def P2130885314277447987.Spec : Prop :=
  ∀ n, P2130885314277447987.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P3100878510044387810

`(A336845(n+1)-A336841(n+1))/A336846(n+1)`
-/

namespace A336848.P3100878510044387810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) - A336841 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ)

end

end A336848.P3100878510044387810

namespace A336848

/-- `(A336845(n+1)-A336841(n+1))/A336846(n+1)` -/
def P3100878510044387810.Spec : Prop :=
  ∀ n, P3100878510044387810.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P13451530804334016547

`A003973(n+1)/A336845(n+1)*A348509(n+1)`
-/

namespace A336848.P13451530804334016547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336845 (n + 1) : ℚ) * (A348509 (n + 1) : ℚ)

end

end A336848.P13451530804334016547

namespace A336848

/-- `A003973(n+1)/A336845(n+1)*A348509(n+1)` -/
def P13451530804334016547.Spec : Prop :=
  ∀ n, P13451530804334016547.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P4341328137918235176

`A003973(n+1)/gcd(A003973(n+1), A336841(n+1))`
-/

namespace A336848.P4341328137918235176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (Int.gcd (A003973 (n + 1)) (A336841 (n + 1)) : ℚ)

end

end A336848.P4341328137918235176

namespace A336848

/-- `A003973(n+1)/gcd(A003973(n+1), A336841(n+1))` -/
def P4341328137918235176.Spec : Prop :=
  ∀ n, P4341328137918235176.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P1589612295143890078

`∑{d}[A003961(n+1), #/A336846(n+1)]`
-/

namespace A336848.P1589612295143890078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A336846 (n + 1) : ℚ)

end

end A336848.P1589612295143890078

namespace A336848

/-- `∑{d}[A003961(n+1), #/A336846(n+1)]` -/
def P1589612295143890078.Spec : Prop :=
  ∀ n, P1589612295143890078.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P14767914669786149567

`A000203(A003961(n+1))/A336846(n+1)`
-/

namespace A336848.P14767914669786149567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A003961 (n + 1)).toNat : ℚ) / (A336846 (n + 1) : ℚ)

end

end A336848.P14767914669786149567

namespace A336848

/-- `A000203(A003961(n+1))/A336846(n+1)` -/
def P14767914669786149567.Spec : Prop :=
  ∀ n, P14767914669786149567.a n = (A336848 (n + 1) : ℚ)

end A336848

/-! ## A336848.P10504020949032456439

`A099378(A003961(n+1))`
-/

namespace A336848.P10504020949032456439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (A003961 (n + 1)).toNat

end

end A336848.P10504020949032456439

namespace A336848

/-- `A099378(A003961(n+1))` -/
def P10504020949032456439.Spec : Prop :=
  ∀ n, P10504020949032456439.a n = A336848 (n + 1)

end A336848

/-! ## A336848.P7637233631459273602

`A003973(n+1)/A324121(A003961(n+1))`
-/

namespace A336848.P7637233631459273602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A324121 (A003961 (n + 1)).toNat : ℚ)

end

end A336848.P7637233631459273602

namespace A336848

/-- `A003973(n+1)/A324121(A003961(n+1))` -/
def P7637233631459273602.Spec : Prop :=
  ∀ n, P7637233631459273602.a n = (A336848 (n + 1) : ℚ)

end A336848

/-!
# A336849: a(n) = A003961(n) / gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

The programs for A336849, the canonical program `A336849.P6112679595888065368` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336849 has offset 1).

The definition of A336849 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336849.P4280488945284989457

`A003961(n+1)/A336850(n+1)`
-/

namespace A336849.P4280488945284989457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A336849.P4280488945284989457

namespace A336849

/-- `A003961(n+1)/A336850(n+1)` -/
def P4280488945284989457.Spec : Prop :=
  ∀ n, P4280488945284989457.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P2983887839362669215

`A003961(n+1)/gcd(A003961(n+1), A003973(n+1))`
-/

namespace A336849.P2983887839362669215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (Int.gcd (A003961 (n + 1)) (A003973 (n + 1)) : ℚ)

end

end A336849.P2983887839362669215

namespace A336849

/-- `A003961(n+1)/gcd(A003961(n+1), A003973(n+1))` -/
def P2983887839362669215.Spec : Prop :=
  ∀ n, P2983887839362669215.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P6112679595888065368

`A017666(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336849

/-- `A017666(A003961(n+1))` -/
def P6112679595888065368.Spec : Prop :=
  ∀ n, P6112679595888065368.a n = A336849 (n + 1)

theorem P6112679595888065368.correct : P6112679595888065368.Spec := by
  intro n
  simp only [A336849, Nat.add_sub_cancel]

end A336849

/-! ## A336849.P8170065135795147831

`A003961(A348941(n+1))`
-/

namespace A336849.P8170065135795147831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A348941 (n + 1)).toNat

end

end A336849.P8170065135795147831

namespace A336849

/-- `A003961(A348941(n+1))` -/
def P8170065135795147831.Spec : Prop :=
  ∀ n, P8170065135795147831.a n = A336849 (n + 1)

end A336849

/-! ## A336849.P1412236393534006182

`A346255(n+1)-A346254(n+1)`
-/

namespace A336849.P1412236393534006182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346255 (n + 1) - A346254 (n + 1)

end

end A336849.P1412236393534006182

namespace A336849

/-- `A346255(n+1)-A346254(n+1)` -/
def P1412236393534006182.Spec : Prop :=
  ∀ n, P1412236393534006182.a n = A336849 (n + 1)

end A336849

/-! ## A336849.P15388146227757700211

`A003961((n+1)/A348940(n+1))`
-/

namespace A336849.P15388146227757700211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A348940 (n + 1) : ℚ))).toNat

end

end A336849.P15388146227757700211

namespace A336849

/-- `A003961((n+1)/A348940(n+1))` -/
def P15388146227757700211.Spec : Prop :=
  ∀ n, P15388146227757700211.a n = A336849 (n + 1)

end A336849

/-! ## A336849.P2759792819130625243

`A361468(n+1)/A341525(n+1)`
-/

namespace A336849.P2759792819130625243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361468 (n + 1) : ℚ) / (A341525 (n + 1) : ℚ)

end

end A336849.P2759792819130625243

namespace A336849

/-- `A361468(n+1)/A341525(n+1)` -/
def P2759792819130625243.Spec : Prop :=
  ∀ n, P2759792819130625243.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P8731215259989439013

`(A286385(n+1)+A000203(n+1))/A336850(n+1)`
-/

namespace A336849.P8731215259989439013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286385 (n + 1) + A000203 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A336849.P8731215259989439013

namespace A336849

/-- `(A286385(n+1)+A000203(n+1))/A336850(n+1)` -/
def P8731215259989439013.Spec : Prop :=
  ∀ n, P8731215259989439013.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P14959352648019155717

`(A003973(n+1)-A336851(n+1))/A336850(n+1)`
-/

namespace A336849.P14959352648019155717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) - A336851 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A336849.P14959352648019155717

namespace A336849

/-- `(A003973(n+1)-A336851(n+1))/A336850(n+1)` -/
def P14959352648019155717.Spec : Prop :=
  ∀ n, P14959352648019155717.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P3758758989646358586

`A341525(n+1)-A336851(n+1)/A336850(n+1)`
-/

namespace A336849.P3758758989646358586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341525 (n + 1) : ℚ) - (A336851 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A336849.P3758758989646358586

namespace A336849

/-- `A341525(n+1)-A336851(n+1)/A336850(n+1)` -/
def P3758758989646358586.Spec : Prop :=
  ∀ n, P3758758989646358586.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P10984323435698430962

`A003961(n+1)/A003973(n+1)*A341525(n+1)`
-/

namespace A336849.P10984323435698430962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A003973 (n + 1) : ℚ) * (A341525 (n + 1) : ℚ)

end

end A336849.P10984323435698430962

namespace A336849

/-- `A003961(n+1)/A003973(n+1)*A341525(n+1)` -/
def P10984323435698430962.Spec : Prop :=
  ∀ n, P10984323435698430962.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P5212386572955525278

`A341529(n+1)/(A000203(n+1)*A336850(n+1))`
-/

namespace A336849.P5212386572955525278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A000203 (n + 1) * A336850 (n + 1) : ℚ)

end

end A336849.P5212386572955525278

namespace A336849

/-- `A341529(n+1)/(A000203(n+1)*A336850(n+1))` -/
def P5212386572955525278.Spec : Prop :=
  ∀ n, P5212386572955525278.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P1812462795083279789

`A336850(n+1)/A003973(n+1)*A361468(n+1)`
-/

namespace A336849.P1812462795083279789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336850 (n + 1) : ℚ) / (A003973 (n + 1) : ℚ) * (A361468 (n + 1) : ℚ)

end

end A336849.P1812462795083279789

namespace A336849

/-- `A336850(n+1)/A003973(n+1)*A361468(n+1)` -/
def P1812462795083279789.Spec : Prop :=
  ∀ n, P1812462795083279789.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P9304310005966327221

`A342671(n+1)/A336850(n+1)*A349161(n+1)`
-/

namespace A336849.P9304310005966327221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342671 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ) * (A349161 (n + 1) : ℚ)

end

end A336849.P9304310005966327221

namespace A336849

/-- `A342671(n+1)/A336850(n+1)*A349161(n+1)` -/
def P9304310005966327221.Spec : Prop :=
  ∀ n, P9304310005966327221.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P9538358136487422987

`A003961(n+1)/A003961(A326042(n+1)/A348942(n+1))`
-/

namespace A336849.P9538358136487422987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A003961 (SequenceMachineLib.roundAway ((A326042 (n + 1) : ℚ) / (A348942 (n + 1) : ℚ))).toNat : ℚ)

end

end A336849.P9538358136487422987

namespace A336849

/-- `A003961(n+1)/A003961(A326042(n+1)/A348942(n+1))` -/
def P9538358136487422987.Spec : Prop :=
  ∀ n, P9538358136487422987.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P8905822338741787599

`A003961(n+1)/A353688(A253885(n)+1)`
-/

namespace A336849.P8905822338741787599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A353688 (A253885 n + 1).toNat : ℚ)

end

end A336849.P8905822338741787599

namespace A336849

/-- `A003961(n+1)/A353688(A253885(n)+1)` -/
def P8905822338741787599.Spec : Prop :=
  ∀ n, P8905822338741787599.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P5321578322115610499

`round(A246676(4*n+2)/3)/A353688(A003961(n+1))`
-/

namespace A336849.P5321578322115610499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3) : ℚ) / (A353688 (A003961 (n + 1)).toNat : ℚ)

end

end A336849.P5321578322115610499

namespace A336849

/-- `round(A246676(4*n+2)/3)/A353688(A003961(n+1))` -/
def P5321578322115610499.Spec : Prop :=
  ∀ n, P5321578322115610499.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P8805068043934501728

`round(A246676(4*n+2)/3)/A353688(A253885(n)+1)`
-/

namespace A336849.P8805068043934501728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3) : ℚ) / (A353688 (A253885 n + 1).toNat : ℚ)

end

end A336849.P8805068043934501728

namespace A336849

/-- `round(A246676(4*n+2)/3)/A353688(A253885(n)+1)` -/
def P8805068043934501728.Spec : Prop :=
  ∀ n, P8805068043934501728.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P4651624415104812430

`A297166(2*(n+1))/A353688(A003961(n+1))`
-/

namespace A336849.P4651624415104812430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297166 (2 * (n + 1)) : ℚ) / (A353688 (A003961 (n + 1)).toNat : ℚ)

end

end A336849.P4651624415104812430

namespace A336849

/-- `A297166(2*(n+1))/A353688(A003961(n+1))` -/
def P4651624415104812430.Spec : Prop :=
  ∀ n, P4651624415104812430.a n = (A336849 (n + 1) : ℚ)

end A336849

/-! ## A336849.P18185180881084894478

`A297166(2*n+2)/A353688(A297166(2*n+2))`
-/

namespace A336849.P18185180881084894478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297166 (2 * n + 2) : ℚ) / (A353688 (A297166 (2 * n + 2)).toNat : ℚ)

end

end A336849.P18185180881084894478

namespace A336849

/-- `A297166(2*n+2)/A353688(A297166(2*n+2))` -/
def P18185180881084894478.Spec : Prop :=
  ∀ n, P18185180881084894478.a n = (A336849 (n + 1) : ℚ)

end A336849

/-!
# A336850: a(n) = gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

The programs for A336850, the canonical program `A336850.P9532163891521390304` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336850 has offset 1).

The definition of A336850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336850.P16673548737057657194

`A003961(n+1)/A336849(n+1)`
-/

namespace A336850.P16673548737057657194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A336849 (n + 1) : ℚ)

end

end A336850.P16673548737057657194

namespace A336850

/-- `A003961(n+1)/A336849(n+1)` -/
def P16673548737057657194.Spec : Prop :=
  ∀ n, P16673548737057657194.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P755818135474840406

`gcd(A003961(n+1), A003973(n+1))`
-/

namespace A336850.P755818135474840406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A003973 (n + 1))

end

end A336850.P755818135474840406

namespace A336850

/-- `gcd(A003961(n+1), A003973(n+1))` -/
def P755818135474840406.Spec : Prop :=
  ∀ n, (P755818135474840406.a n : ℤ) = A336850 (n + 1)

end A336850

/-! ## A336850.P9532163891521390304

`A009194(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336850

/-- `A009194(A003961(n+1))` -/
def P9532163891521390304.Spec : Prop :=
  ∀ n, P9532163891521390304.a n = A336850 (n + 1)

theorem P9532163891521390304.correct : P9532163891521390304.Spec := by
  intro n
  simp only [A336850, Nat.add_sub_cancel]

end A336850

/-! ## A336850.P989987380263776712

`A003961(A348940(n+1))`
-/

namespace A336850.P989987380263776712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A348940 (n + 1)).toNat

end

end A336850.P989987380263776712

namespace A336850

/-- `A003961(A348940(n+1))` -/
def P989987380263776712.Spec : Prop :=
  ∀ n, P989987380263776712.a n = A336850 (n + 1)

end A336850

/-! ## A336850.P1944769079481930459

`A003973(n+1)/A341525(n+1)`
-/

namespace A336850.P1944769079481930459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A341525 (n + 1) : ℚ)

end

end A336850.P1944769079481930459

namespace A336850

/-- `A003973(n+1)/A341525(n+1)` -/
def P1944769079481930459.Spec : Prop :=
  ∀ n, P1944769079481930459.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P9995942140131367971

`A003961((n+1)/A348941(n+1))`
-/

namespace A336850.P9995942140131367971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A348941 (n + 1) : ℚ))).toNat

end

end A336850.P9995942140131367971

namespace A336850

/-- `A003961((n+1)/A348941(n+1))` -/
def P9995942140131367971.Spec : Prop :=
  ∀ n, P9995942140131367971.a n = A336850 (n + 1)

end A336850

/-! ## A336850.P9267088078275005943

`(A253885(n)+1)/A336849(n+1)`
-/

namespace A336850.P9267088078275005943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1 : ℚ) / (A336849 (n + 1) : ℚ)

end

end A336850.P9267088078275005943

namespace A336850

/-- `(A253885(n)+1)/A336849(n+1)` -/
def P9267088078275005943.Spec : Prop :=
  ∀ n, P9267088078275005943.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P7703038488973363675

`A003961(gcd(n+1, A326042(n+1)))`
-/

namespace A336850.P7703038488973363675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.gcd (n + 1 : ℤ) (A326042 (n + 1)))

end

end A336850.P7703038488973363675

namespace A336850

/-- `A003961(gcd(n+1, A326042(n+1)))` -/
def P7703038488973363675.Spec : Prop :=
  ∀ n, P7703038488973363675.a n = A336850 (n + 1)

end A336850

/-! ## A336850.P10730612001764996848

`gcd(A045965(n+1), A336846(n+1))`
-/

namespace A336850.P10730612001764996848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045965 (n + 1)) (A336846 (n + 1))

end

end A336850.P10730612001764996848

namespace A336850

/-- `gcd(A045965(n+1), A336846(n+1))` -/
def P10730612001764996848.Spec : Prop :=
  ∀ n, (P10730612001764996848.a n : ℤ) = A336850 (n + 1)

end A336850

/-! ## A336850.P2402577794576677213

`gcd(A253885(n)+1, A336851(n+1))`
-/

namespace A336850.P2402577794576677213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253885 n + 1) (A336851 (n + 1))

end

end A336850.P2402577794576677213

namespace A336850

/-- `gcd(A253885(n)+1, A336851(n+1))` -/
def P2402577794576677213.Spec : Prop :=
  ∀ n, (P2402577794576677213.a n : ℤ) = A336850 (n + 1)

end A336850

/-! ## A336850.P16287342897058384381

`gcd(A344587(n+1), A388975(n+1))`
-/

namespace A336850.P16287342897058384381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344587 (n + 1)) (A388975 (n + 1))

end

end A336850.P16287342897058384381

namespace A336850

/-- `gcd(A344587(n+1), A388975(n+1))` -/
def P16287342897058384381.Spec : Prop :=
  ∀ n, (P16287342897058384381.a n : ℤ) = A336850 (n + 1)

end A336850

/-! ## A336850.P1091212928956902532

`A003961(A326042(n+1)/A348942(n+1))`
-/

namespace A336850.P1091212928956902532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A326042 (n + 1) : ℚ) / (A348942 (n + 1) : ℚ))).toNat

end

end A336850.P1091212928956902532

namespace A336850

/-- `A003961(A326042(n+1)/A348942(n+1))` -/
def P1091212928956902532.Spec : Prop :=
  ∀ n, P1091212928956902532.a n = A336850 (n + 1)

end A336850

/-! ## A336850.P3419971046655997330

`(A336851(n+1)+A003961(n+1))/A341525(n+1)`
-/

namespace A336850.P3419971046655997330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336851 (n + 1) + A003961 (n + 1) : ℚ) / (A341525 (n + 1) : ℚ)

end

end A336850.P3419971046655997330

namespace A336850

/-- `(A336851(n+1)+A003961(n+1))/A341525(n+1)` -/
def P3419971046655997330.Spec : Prop :=
  ∀ n, P3419971046655997330.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P11578116136593948901

`(A003973(n+1)-A336851(n+1))/A336849(n+1)`
-/

namespace A336850.P11578116136593948901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) - A336851 (n + 1) : ℚ) / (A336849 (n + 1) : ℚ)

end

end A336850.P11578116136593948901

namespace A336850

/-- `(A003973(n+1)-A336851(n+1))/A336849(n+1)` -/
def P11578116136593948901.Spec : Prop :=
  ∀ n, P11578116136593948901.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P222076811060173471

`A003961(n+1)/(A346255(n+1)-A346254(n+1))`
-/

namespace A336850.P222076811060173471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A346255 (n + 1) - A346254 (n + 1) : ℚ)

end

end A336850.P222076811060173471

namespace A336850

/-- `A003961(n+1)/(A346255(n+1)-A346254(n+1))` -/
def P222076811060173471.Spec : Prop :=
  ∀ n, P222076811060173471.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P5786634726104161510

`A003973(n+1)*A336849(n+1)/A361468(n+1)`
-/

namespace A336850.P5786634726104161510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) * A336849 (n + 1) : ℚ) / (A361468 (n + 1) : ℚ)

end

end A336850.P5786634726104161510

namespace A336850

/-- `A003973(n+1)*A336849(n+1)/A361468(n+1)` -/
def P5786634726104161510.Spec : Prop :=
  ∀ n, P5786634726104161510.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P13311934066933907725

`A003961(n+1)*A341525(n+1)/A361468(n+1)`
-/

namespace A336850.P13311934066933907725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) * A341525 (n + 1) : ℚ) / (A361468 (n + 1) : ℚ)

end

end A336850.P13311934066933907725

namespace A336850

/-- `A003961(n+1)*A341525(n+1)/A361468(n+1)` -/
def P13311934066933907725.Spec : Prop :=
  ∀ n, P13311934066933907725.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P3204987372879594968

`A361467(n+1)/(A003961(n+1)*A341525(n+1))`
-/

namespace A336850.P3204987372879594968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361467 (n + 1) : ℚ) / (A003961 (n + 1) * A341525 (n + 1) : ℚ)

end

end A336850.P3204987372879594968

namespace A336850

/-- `A361467(n+1)/(A003961(n+1)*A341525(n+1))` -/
def P3204987372879594968.Spec : Prop :=
  ∀ n, P3204987372879594968.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P2476232017943219107

`A355932(n+1)/A341525(n+1)*A355933(n+1)`
-/

namespace A336850.P2476232017943219107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355932 (n + 1) : ℚ) / (A341525 (n + 1) : ℚ) * (A355933 (n + 1) : ℚ)

end

end A336850.P2476232017943219107

namespace A336850

/-- `A355932(n+1)/A341525(n+1)*A355933(n+1)` -/
def P2476232017943219107.Spec : Prop :=
  ∀ n, P2476232017943219107.a n = (A336850 (n + 1) : ℚ)

end A336850

/-! ## A336850.P3839552951293649903

`gcd(A346247(n+1)-A346246(n+1), 2*A048673(n+1)-1)`
-/

namespace A336850.P3839552951293649903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A346247 (n + 1) - A346246 (n + 1)) (2 * A048673 (n + 1) - 1)

end

end A336850.P3839552951293649903

namespace A336850

/-- `gcd(A346247(n+1)-A346246(n+1), 2*A048673(n+1)-1)` -/
def P3839552951293649903.Spec : Prop :=
  ∀ n, (P3839552951293649903.a n : ℤ) = A336850 (n + 1)

end A336850

/-!
# A336851: a(n) = sigma(A003961(n)) - A003961(n), where A003961 is a prime shift towards larger primes, sigma is the sum of divisors.

The programs for A336851, the canonical program `A336851.P7105463253357279779` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336851 has offset 1).

The definition of A336851 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A003973, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336851.P7105463253357279779

`A003973(n+1)-A003961(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336851

/-- `A003973(n+1)-A003961(n+1)` -/
def P7105463253357279779.Spec : Prop :=
  ∀ n, P7105463253357279779.a n = A336851 (n + 1)

theorem P7105463253357279779.correct : P7105463253357279779.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel]

end A336851

/-! ## A336851.P1005175953565637717

`A336852(n+1)-A286385(n+1)`
-/

namespace A336851.P1005175953565637717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (n + 1) - A286385 (n + 1)

end

end A336851.P1005175953565637717

namespace A336851

/-- `A336852(n+1)-A286385(n+1)` -/
def P1005175953565637717.Spec : Prop :=
  ∀ n, P1005175953565637717.a n = A336851 (n + 1)

theorem P1005175953565637717.correct : P1005175953565637717.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel, A336851.P1005175953565637717.a, A336851.P7105463253357279779.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A286385, A286385.P7583078268767377745.a, A336852, A336852.P2295908920068710363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336851

/-! ## A336851.P12524555419798812866

`A001065(A003961(n+1))`
-/

namespace A336851.P12524555419798812866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A003961 (n + 1)).toNat

end

end A336851.P12524555419798812866

namespace A336851

/-- `A001065(A003961(n+1))` -/
def P12524555419798812866.Spec : Prop :=
  ∀ n, P12524555419798812866.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P10888947993329142584

`A003961(n+1)-A344587(n+1)`
-/

namespace A336851.P10888947993329142584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A344587 (n + 1)

end

end A336851.P10888947993329142584

namespace A336851

/-- `A003961(n+1)-A344587(n+1)` -/
def P10888947993329142584.Spec : Prop :=
  ∀ n, P10888947993329142584.a n = A336851 (n + 1)

theorem P10888947993329142584.correct : P10888947993329142584.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel, A336851.P10888947993329142584.a, A336851.P7105463253357279779.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A344587, A344587.P3683186071812823048.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336851

/-! ## A336851.P2232783709723136593

`A253885(n)+1-A344587(n+1)`
-/

namespace A336851.P2232783709723136593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n + (1 - A344587 (n + 1))

end

end A336851.P2232783709723136593

namespace A336851

/-- `A253885(n)+1-A344587(n+1)` -/
def P2232783709723136593.Spec : Prop :=
  ∀ n, P2232783709723136593.a n = A336851 (n + 1)

theorem P2232783709723136593.correct : P2232783709723136593.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel, A336851.P2232783709723136593.a, A336851.P7105463253357279779.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A344587, A344587.P3683186071812823048.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, A156552, A156552.P4268073137713085227.a, A252750, A252750.P12930142929614438506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336851

/-! ## A336851.P6101176906418827211

`A377984(n+1)-A378752(n+1)`
-/

namespace A336851.P6101176906418827211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377984 (n + 1) - A378752 (n + 1)

end

end A336851.P6101176906418827211

namespace A336851

/-- `A377984(n+1)-A378752(n+1)` -/
def P6101176906418827211.Spec : Prop :=
  ∀ n, P6101176906418827211.a n = A336851 (n + 1)

theorem P6101176906418827211.correct : P6101176906418827211.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel, A336851.P6101176906418827211.a, A336851.P7105463253357279779.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A377984, A377984.P7677095437938167373.a, A378752, A378752.P11019158071708526030.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A002659, A002659.P10160211641234387559.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A074400, A074400.P16312391460013478761.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336851

/-! ## A336851.P5991250232221925866

`A389076(n+1)-A389078(n+1)`
-/

namespace A336851.P5991250232221925866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389076 (n + 1) - A389078 (n + 1)

end

end A336851.P5991250232221925866

namespace A336851

/-- `A389076(n+1)-A389078(n+1)` -/
def P5991250232221925866.Spec : Prop :=
  ∀ n, P5991250232221925866.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P8496850083904945237

`A003973(n+1)+1-A243501(n+1)`
-/

namespace A336851.P8496850083904945237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + (1 - A243501 (n + 1))

end

end A336851.P8496850083904945237

namespace A336851

/-- `A003973(n+1)+1-A243501(n+1)` -/
def P8496850083904945237.Spec : Prop :=
  ∀ n, P8496850083904945237.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P9264456133432012603

`(A003973(n+1)-A344587(n+1))/2`
-/

namespace A336851.P9264456133432012603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) - A344587 (n + 1) : ℚ) / 2

end

end A336851.P9264456133432012603

namespace A336851

/-- `(A003973(n+1)-A344587(n+1))/2` -/
def P9264456133432012603.Spec : Prop :=
  ∀ n, P9264456133432012603.a n = (A336851 (n + 1) : ℚ)

theorem P9264456133432012603.correct : P9264456133432012603.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel, A336851.P9264456133432012603.a, A336851.P7105463253357279779.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A344587, A344587.P3683186071812823048.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336851

/-! ## A336851.P3784755252867114550

`2*A048673(n+1)-1-A344587(n+1)`
-/

namespace A336851.P3784755252867114550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - 1 - A344587 (n + 1)

end

end A336851.P3784755252867114550

namespace A336851

/-- `2*A048673(n+1)-1-A344587(n+1)` -/
def P3784755252867114550.Spec : Prop :=
  ∀ n, P3784755252867114550.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P8395393925474089867

`∑{d}[n+1, A003972(#)*A032741((n+1)/#)]`
-/

namespace A336851.P8395393925474089867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336851.P8395393925474089867

namespace A336851

/-- `∑{d}[n+1, A003972(#)*A032741((n+1)/#)]` -/
def P8395393925474089867.Spec : Prop :=
  ∀ n, P8395393925474089867.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P8847611176442998131

`∑{d}[n+1, A003973(#)*A157658((n+1)/#)]`
-/

namespace A336851.P8847611176442998131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336851.P8847611176442998131

namespace A336851

/-- `∑{d}[n+1, A003973(#)*A157658((n+1)/#)]` -/
def P8847611176442998131.Spec : Prop :=
  ∀ n, P8847611176442998131.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P14430308721152155408

`∑{d}[n+1, A001065(#)*A349387((n+1)/#)]`
-/

namespace A336851.P14430308721152155408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336851.P14430308721152155408

namespace A336851

/-- `∑{d}[n+1, A001065(#)*A349387((n+1)/#)]` -/
def P14430308721152155408.Spec : Prop :=
  ∀ n, P14430308721152155408.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P4511708745026022258

`∑{d}[n+1, A211779(#)*A378606((n+1)/#)]`
-/

namespace A336851.P4511708745026022258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A211779 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336851.P4511708745026022258

namespace A336851

/-- `∑{d}[n+1, A211779(#)*A378606((n+1)/#)]` -/
def P4511708745026022258.Spec : Prop :=
  ∀ n, P4511708745026022258.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P9035632682071678242

`∑{d}[n+1, A293228(#)*A347236((n+1)/#)]`
-/

namespace A336851.P9035632682071678242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A293228 d * A347236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336851.P9035632682071678242

namespace A336851

/-- `∑{d}[n+1, A293228(#)*A347236((n+1)/#)]` -/
def P9035632682071678242.Spec : Prop :=
  ∀ n, P9035632682071678242.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P10337164367088136128

`∑{d}[n+1, A349384(#)*A349910((n+1)/#)]`
-/

namespace A336851.P10337164367088136128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349384 d * A349910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336851.P10337164367088136128

namespace A336851

/-- `∑{d}[n+1, A349384(#)*A349910((n+1)/#)]` -/
def P10337164367088136128.Spec : Prop :=
  ∀ n, P10337164367088136128.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P2396057234955345300

`∑{d}[n+1, A003961(#)*A057427((n+1)/#-1)]`
-/

namespace A336851.P2396057234955345300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A336851.P2396057234955345300

namespace A336851

/-- `∑{d}[n+1, A003961(#)*A057427((n+1)/#-1)]` -/
def P2396057234955345300.Spec : Prop :=
  ∀ n, P2396057234955345300.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P14528869104984138885

`A003973(n+1)-(A108228(n+1)+A048673(n+1))`
-/

namespace A336851.P14528869104984138885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - (A108228 (n + 1) + A048673 (n + 1))

end

end A336851.P14528869104984138885

namespace A336851

/-- `A003973(n+1)-(A108228(n+1)+A048673(n+1))` -/
def P14528869104984138885.Spec : Prop :=
  ∀ n, P14528869104984138885.a n = A336851 (n + 1)

end A336851

/-! ## A336851.P3441559902447886445

`A003973(n+1)-(A286385(n+1)+A000203(n+1))`
-/

namespace A336851.P3441559902447886445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - (A286385 (n + 1) + A000203 (n + 1))

end

end A336851.P3441559902447886445

namespace A336851

/-- `A003973(n+1)-(A286385(n+1)+A000203(n+1))` -/
def P3441559902447886445.Spec : Prop :=
  ∀ n, P3441559902447886445.a n = A336851 (n + 1)

theorem P3441559902447886445.correct : P3441559902447886445.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel, A336851.P3441559902447886445.a, A336851.P7105463253357279779.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336851

/-! ## A336851.P4217704705316849684

`A000203(n+1)+A336852(n+1)-A003961(n+1)`
-/

namespace A336851.P4217704705316849684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A336852 (n + 1) - A003961 (n + 1))

end

end A336851.P4217704705316849684

namespace A336851

/-- `A000203(n+1)+A336852(n+1)-A003961(n+1)` -/
def P4217704705316849684.Spec : Prop :=
  ∀ n, P4217704705316849684.a n = A336851 (n + 1)

theorem P4217704705316849684.correct : P4217704705316849684.Spec := by
  intro n
  simp only [A336851, Nat.add_sub_cancel, A336851.P4217704705316849684.a, A336851.P7105463253357279779.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A336852, A336852.P2295908920068710363.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A286385, A286385.P7583078268767377745.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336851

/-!
# A336852: a(n) = sigma(A003961(n)) - sigma(n).

The programs for A336852, the canonical program `A336852.P2295908920068710363` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336852 has offset 1).

The definition of A336852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286385, A336851, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336852.P2295908920068710363

`A336851(n+1)+A286385(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336852

/-- `A336851(n+1)+A286385(n+1)` -/
def P2295908920068710363.Spec : Prop :=
  ∀ n, P2295908920068710363.a n = A336852 (n + 1)

theorem P2295908920068710363.correct : P2295908920068710363.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel]

end A336852

/-! ## A336852.P17013696739306365913

`A003973(n+1)-A000203(n+1)`
-/

namespace A336852.P17013696739306365913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A000203 (n + 1)

end

end A336852.P17013696739306365913

namespace A336852

/-- `A003973(n+1)-A000203(n+1)` -/
def P17013696739306365913.Spec : Prop :=
  ∀ n, P17013696739306365913.a n = A336852 (n + 1)

theorem P17013696739306365913.correct : P17013696739306365913.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P17013696739306365913.a, A336852.P2295908920068710363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003973, A003973.P4846480468008244812.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P16576241349635200560

`A000203(A003961(n+1))-A000203(n+1)`
-/

namespace A336852.P16576241349635200560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A000203 (n + 1)

end

end A336852.P16576241349635200560

namespace A336852

/-- `A000203(A003961(n+1))-A000203(n+1)` -/
def P16576241349635200560.Spec : Prop :=
  ∀ n, P16576241349635200560.a n = A336852 (n + 1)

theorem P16576241349635200560.correct : P16576241349635200560.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P16576241349635200560.a, A336852.P2295908920068710363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A003973, A003973.P4846480468008244812.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P10959759752076489790

`∑{d}[n+1, A336853(#)]`
-/

namespace A336852.P10959759752076489790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336853 d

end

end A336852.P10959759752076489790

namespace A336852

/-- `∑{d}[n+1, A336853(#)]` -/
def P10959759752076489790.Spec : Prop :=
  ∀ n, P10959759752076489790.a n = A336852 (n + 1)

end A336852

/-! ## A336852.P16531246872367534399

`∑{d}[n+1, A003961(#)-#]`
-/

namespace A336852.P16531246872367534399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A003961 d - (d : ℤ))

end

end A336852.P16531246872367534399

namespace A336852

/-- `∑{d}[n+1, A003961(#)-#]` -/
def P16531246872367534399.Spec : Prop :=
  ∀ n, P16531246872367534399.a n = A336852 (n + 1)

end A336852

/-! ## A336852.P13421131713036211545

`A000203(n+1)-A378752(n+1)`
-/

namespace A336852.P13421131713036211545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378752 (n + 1)

end

end A336852.P13421131713036211545

namespace A336852

/-- `A000203(n+1)-A378752(n+1)` -/
def P13421131713036211545.Spec : Prop :=
  ∀ n, P13421131713036211545.a n = A336852 (n + 1)

theorem P13421131713036211545.correct : P13421131713036211545.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P13421131713036211545.a, A336852.P2295908920068710363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A378752, A378752.P11019158071708526030.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P8255721811521069266

`A003973(n+1)-sqrt(A072861(n+1))`
-/

namespace A336852.P8255721811521069266
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℝ) - Real.sqrt (A072861 (n + 1) : ℝ)

end

end A336852.P8255721811521069266

namespace A336852

/-- `A003973(n+1)-sqrt(A072861(n+1))` -/
def P8255721811521069266.Spec : Prop :=
  ∀ n, P8255721811521069266.a n = (A336852 (n + 1) : ℝ)

end A336852

/-! ## A336852.P10456876685382089956

`2*A336840(n+1)-A007503(n+1)`
-/

namespace A336852.P10456876685382089956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336840 (n + 1) - A007503 (n + 1)

end

end A336852.P10456876685382089956

namespace A336852

/-- `2*A336840(n+1)-A007503(n+1)` -/
def P10456876685382089956.Spec : Prop :=
  ∀ n, P10456876685382089956.a n = A336852 (n + 1)

end A336852

/-! ## A336852.P11760810257367384713

`A003973(n+1)-A074400(n+1)/2`
-/

namespace A336852.P11760810257367384713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A336852.P11760810257367384713

namespace A336852

/-- `A003973(n+1)-A074400(n+1)/2` -/
def P11760810257367384713.Spec : Prop :=
  ∀ n, P11760810257367384713.a n = (A336852 (n + 1) : ℚ)

theorem P11760810257367384713.correct : P11760810257367384713.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P11760810257367384713.a, A336852.P2295908920068710363.a, A003973, A003973.P4846480468008244812.a, A074400, A074400.P16312391460013478761.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P14060550711138388655

`(A003973(n+1)-A378752(n+1))/2`
-/

namespace A336852.P14060550711138388655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) - A378752 (n + 1) : ℚ) / 2

end

end A336852.P14060550711138388655

namespace A336852

/-- `(A003973(n+1)-A378752(n+1))/2` -/
def P14060550711138388655.Spec : Prop :=
  ∀ n, P14060550711138388655.a n = (A336852 (n + 1) : ℚ)

theorem P14060550711138388655.correct : P14060550711138388655.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P14060550711138388655.a, A336852.P2295908920068710363.a, A003973, A003973.P4846480468008244812.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A378752, A378752.P11019158071708526030.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P9498331449048558973

`A074400(n+1)/2-A378752(n+1)`
-/

namespace A336852.P9498331449048558973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A378752 (n + 1) : ℚ)

end

end A336852.P9498331449048558973

namespace A336852

/-- `A074400(n+1)/2-A378752(n+1)` -/
def P9498331449048558973.Spec : Prop :=
  ∀ n, P9498331449048558973.a n = (A336852 (n + 1) : ℚ)

theorem P9498331449048558973.correct : P9498331449048558973.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P9498331449048558973.a, A336852.P2295908920068710363.a, A074400, A074400.P16312391460013478761.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A378752, A378752.P11019158071708526030.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P17444688470000393430

`A003973(n+1)-A239050(n+1)/4`
-/

namespace A336852.P17444688470000393430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) - (A239050 (n + 1) : ℚ) / 4

end

end A336852.P17444688470000393430

namespace A336852

/-- `A003973(n+1)-A239050(n+1)/4` -/
def P17444688470000393430.Spec : Prop :=
  ∀ n, P17444688470000393430.a n = (A336852 (n + 1) : ℚ)

theorem P17444688470000393430.correct : P17444688470000393430.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P17444688470000393430.a, A336852.P2295908920068710363.a, A003973, A003973.P4846480468008244812.a, A239050, A239050.P12685587340824370499.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A074400, A074400.P16312391460013478761.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P1327149515796891149

`∑{d}[n+1, A000005(#)*A347100((n+1)/#)]`
-/

namespace A336852.P1327149515796891149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A347100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336852.P1327149515796891149

namespace A336852

/-- `∑{d}[n+1, A000005(#)*A347100((n+1)/#)]` -/
def P1327149515796891149.Spec : Prop :=
  ∀ n, P1327149515796891149.a n = A336852 (n + 1)

end A336852

/-! ## A336852.P6386422746092661236

`A003973(n+1)+A094471(n+1)-A038040(n+1)`
-/

namespace A336852.P6386422746092661236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + (A094471 (n + 1) - A038040 (n + 1))

end

end A336852.P6386422746092661236

namespace A336852

/-- `A003973(n+1)+A094471(n+1)-A038040(n+1)` -/
def P6386422746092661236.Spec : Prop :=
  ∀ n, P6386422746092661236.a n = A336852 (n + 1)

theorem P6386422746092661236.correct : P6386422746092661236.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P6386422746092661236.a, A336852.P2295908920068710363.a, A003973, A003973.P4846480468008244812.a, A038040, A038040.P16512896840577774730.a, A094471, A094471.P10880822235094612413.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P13263529704854703740

`A003973(n+1)+A286385(n+1)-A003961(n+1)`
-/

namespace A336852.P13263529704854703740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) + (A286385 (n + 1) - A003961 (n + 1))

end

end A336852.P13263529704854703740

namespace A336852

/-- `A003973(n+1)+A286385(n+1)-A003961(n+1)` -/
def P13263529704854703740.Spec : Prop :=
  ∀ n, P13263529704854703740.a n = A336852 (n + 1)

theorem P13263529704854703740.correct : P13263529704854703740.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P13263529704854703740.a, A336852.P2295908920068710363.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A286385, A286385.P7583078268767377745.a, A336851, A336851.P7105463253357279779.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P2255914981743096800

`A003973(n+1)-(A326126(n+1)+A007913(n+1))`
-/

namespace A336852.P2255914981743096800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - (A326126 (n + 1) + A007913 (n + 1))

end

end A336852.P2255914981743096800

namespace A336852

/-- `A003973(n+1)-(A326126(n+1)+A007913(n+1))` -/
def P2255914981743096800.Spec : Prop :=
  ∀ n, P2255914981743096800.a n = A336852 (n + 1)

theorem P2255914981743096800.correct : P2255914981743096800.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P2255914981743096800.a, A336852.P2295908920068710363.a, A003973, A003973.P4846480468008244812.a, A007913, A007913.P11359412940648999332.a, A286385, A286385.P7583078268767377745.a, A326126, A326126.P126110095243043684.a, A336851, A336851.P7105463253357279779.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A059479, A059479.P17464652159649958448.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P4575978009757317667

`A249734(n+1)-(A388975(n+1)+A000203(n+1))`
-/

namespace A336852.P4575978009757317667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249734 (n + 1) - (A388975 (n + 1) + A000203 (n + 1))

end

end A336852.P4575978009757317667

namespace A336852

/-- `A249734(n+1)-(A388975(n+1)+A000203(n+1))` -/
def P4575978009757317667.Spec : Prop :=
  ∀ n, P4575978009757317667.a n = A336852 (n + 1)

end A336852

/-! ## A336852.P15405090894459134832

`A336846(n+1)+A336847(n+1)-A000203(n+1)`
-/

namespace A336852.P15405090894459134832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336846 (n + 1) + (A336847 (n + 1) - A000203 (n + 1))

end

end A336852.P15405090894459134832

namespace A336852

/-- `A336846(n+1)+A336847(n+1)-A000203(n+1)` -/
def P15405090894459134832.Spec : Prop :=
  ∀ n, P15405090894459134832.a n = A336852 (n + 1)

theorem P15405090894459134832.correct : P15405090894459134832.Spec := by
  intro n
  simp only [A336852, Nat.add_sub_cancel, A336852.P15405090894459134832.a, A336852.P2295908920068710363.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A286385, A286385.P7583078268767377745.a, A336846, A336846.P1673161235969067192.a, A336847, A336847.P10873545021579543233.a, A336851, A336851.P7105463253357279779.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A324121, A324121.P5058798757553332466.a, A038040, A038040.P16512896840577774730.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A000005, A000005.P16091521709108585461.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A336852

/-! ## A336852.P8014703899536626124

`A003973(n+1)-A009194(n+1)*A017665(n+1)`
-/

namespace A336852.P8014703899536626124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A009194 (n + 1) * A017665 (n + 1)

end

end A336852.P8014703899536626124

namespace A336852

/-- `A003973(n+1)-A009194(n+1)*A017665(n+1)` -/
def P8014703899536626124.Spec : Prop :=
  ∀ n, P8014703899536626124.a n = A336852 (n + 1)

end A336852

/-! ## A336852.P10742064912371160925

`A336846(n+1)*A336848(n+1)-A000203(n+1)`
-/

namespace A336852.P10742064912371160925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336846 (n + 1) * A336848 (n + 1) - A000203 (n + 1)

end

end A336852.P10742064912371160925

namespace A336852

/-- `A336846(n+1)*A336848(n+1)-A000203(n+1)` -/
def P10742064912371160925.Spec : Prop :=
  ∀ n, P10742064912371160925.a n = A336852 (n + 1)

end A336852

/-!
# A336853: a(n) = A003961(n) - n, where A003961 is the prime shift towards larger primes.

The programs for A336853, the canonical program `A336853.P1645042944242011250` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336853 has offset 1).

The definition of A336853 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336853.P1645042944242011250

`A252748(n+1)+n+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A336853

/-- `A252748(n+1)+n+1` -/
def P1645042944242011250.Spec : Prop :=
  ∀ n, P1645042944242011250.a n = A336853 (n + 1)

theorem P1645042944242011250.correct : P1645042944242011250.Spec := by
  intro n
  simp only [A336853, Nat.add_sub_cancel]

end A336853

/-! ## A336853.P17153510744129978778

`A003961(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336853.P17153510744129978778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (n + 1 : ℤ)

end

end A336853.P17153510744129978778

namespace A336853

/-- `A003961(n+1)-(n+1)` -/
def P17153510744129978778.Spec : Prop :=
  ∀ n, P17153510744129978778.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P15637132973308627682

`A253885(n)-n`
-/

namespace A336853.P15637132973308627682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n - (n : ℤ)

end

end A336853.P15637132973308627682

namespace A336853

/-- `A253885(n)-n` -/
def P15637132973308627682.Spec : Prop :=
  ∀ n, P15637132973308627682.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P17113604001033864972

`∑{d}[n+1, A347100(#)]`
-/

namespace A336853.P17113604001033864972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347100 d

end

end A336853.P17113604001033864972

namespace A336853

/-- `∑{d}[n+1, A347100(#)]` -/
def P17113604001033864972.Spec : Prop :=
  ∀ n, P17113604001033864972.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P14534727135123861322

`Δ[A252749(n)]+1+n`
-/

namespace A336853.P14534727135123861322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A336853.P14534727135123861322

namespace A336853

/-- `Δ[A252749(n)]+1+n` -/
def P14534727135123861322.Spec : Prop :=
  ∀ n, P14534727135123861322.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P18416848351794027899

`A243501(n+1)-(n+2)`
-/

namespace A336853.P18416848351794027899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - (n + 2 : ℤ)

end

end A336853.P18416848351794027899

namespace A336853

/-- `A243501(n+1)-(n+2)` -/
def P18416848351794027899.Spec : Prop :=
  ∀ n, P18416848351794027899.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P921070299664117734

`2*A349573(n+1)+n`
-/

namespace A336853.P921070299664117734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A349573 (n + 1) + (n : ℤ)

end

end A336853.P921070299664117734

namespace A336853

/-- `2*A349573(n+1)+n` -/
def P921070299664117734.Spec : Prop :=
  ∀ n, P921070299664117734.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P12109370835799882099

`2*A108228(n+1)-n`
-/

namespace A336853.P12109370835799882099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108228 (n + 1) - (n : ℤ)

end

end A336853.P12109370835799882099

namespace A336853

/-- `2*A108228(n+1)-n` -/
def P12109370835799882099.Spec : Prop :=
  ∀ n, P12109370835799882099.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P8569159707916729955

`sqrt(A379481(n+1))-(n+1)`
-/

namespace A336853.P8569159707916729955
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A336853.P8569159707916729955

namespace A336853

/-- `sqrt(A379481(n+1))-(n+1)` -/
def P8569159707916729955.Spec : Prop :=
  ∀ n, P8569159707916729955.a n = (A336853 (n + 1) : ℝ)

end A336853

/-! ## A336853.P9996139244292210746

`2*A048673(n+1)-(n+2)`
-/

namespace A336853.P9996139244292210746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048673 (n + 1) - (n + 2 : ℤ)

end

end A336853.P9996139244292210746

namespace A336853

/-- `2*A048673(n+1)-(n+2)` -/
def P9996139244292210746.Spec : Prop :=
  ∀ n, P9996139244292210746.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P14322403664913046866

`A249734(n+1)/3-(n+1)`
-/

namespace A336853.P14322403664913046866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249734 (n + 1) : ℚ) / 3 - (n + 1 : ℚ)

end

end A336853.P14322403664913046866

namespace A336853

/-- `A249734(n+1)/3-(n+1)` -/
def P14322403664913046866.Spec : Prop :=
  ∀ n, P14322403664913046866.a n = (A336853 (n + 1) : ℚ)

end A336853

/-! ## A336853.P10481424545842271437

`∑{d}[n+1, A003972(#)]-(n+1)`
-/

namespace A336853.P10481424545842271437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d - (n + 1 : ℤ)

end

end A336853.P10481424545842271437

namespace A336853

/-- `∑{d}[n+1, A003972(#)]-(n+1)` -/
def P10481424545842271437.Spec : Prop :=
  ∀ n, P10481424545842271437.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P9701806967945702663

`A191002(n+1)/(n+1)-(n+1)`
-/

namespace A336853.P9701806967945702663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191002 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A336853.P9701806967945702663

namespace A336853

/-- `A191002(n+1)/(n+1)-(n+1)` -/
def P9701806967945702663.Spec : Prop :=
  ∀ n, P9701806967945702663.a n = (A336853 (n + 1) : ℚ)

end A336853

/-! ## A336853.P15475082087130358201

`A286385(n+1)+A001065(n+1)`
-/

namespace A336853.P15475082087130358201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) + A001065 (n + 1)

end

end A336853.P15475082087130358201

namespace A336853

/-- `A286385(n+1)+A001065(n+1)` -/
def P15475082087130358201.Spec : Prop :=
  ∀ n, P15475082087130358201.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P3281296009284386407

`A348937(n+1)+A168036(n+1)`
-/

namespace A336853.P3281296009284386407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (n + 1) + A168036 (n + 1)

end

end A336853.P3281296009284386407

namespace A336853

/-- `A348937(n+1)+A168036(n+1)` -/
def P3281296009284386407.Spec : Prop :=
  ∀ n, P3281296009284386407.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P1064305414246356356

`A347378(n+1)+A280692(n+1)`
-/

namespace A336853.P1064305414246356356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (n + 1) + A280692 (n + 1)

end

end A336853.P1064305414246356356

namespace A336853

/-- `A347378(n+1)+A280692(n+1)` -/
def P1064305414246356356.Spec : Prop :=
  ∀ n, P1064305414246356356.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P7092281518659909117

`A349573(n+1)+A253885(n)/2`
-/

namespace A336853.P7092281518659909117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349573 (n + 1) : ℚ) + (A253885 n : ℚ) / 2

end

end A336853.P7092281518659909117

namespace A336853

/-- `A349573(n+1)+A253885(n)/2` -/
def P7092281518659909117.Spec : Prop :=
  ∀ n, P7092281518659909117.a n = (A336853 (n + 1) : ℚ)

end A336853

/-! ## A336853.P12827967977552556506

`A045965(n+1)-(A054977(n)+n)`
-/

namespace A336853.P12827967977552556506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) - (A054977 n + (n : ℤ))

end

end A336853.P12827967977552556506

namespace A336853

/-- `A045965(n+1)-(A054977(n)+n)` -/
def P12827967977552556506.Spec : Prop :=
  ∀ n, P12827967977552556506.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P3541928668599025880

`A340071(n+1)*A340073(n+1)-n`
-/

namespace A336853.P3541928668599025880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (n + 1) * A340073 (n + 1) - (n : ℤ)

end

end A336853.P3541928668599025880

namespace A336853

/-- `A340071(n+1)*A340073(n+1)-n` -/
def P3541928668599025880.Spec : Prop :=
  ∀ n, P3541928668599025880.a n = A336853 (n + 1)

end A336853

/-! ## A336853.P16984476845124414463

`∑{d}[n+1, A008683(#)*A336852((n+1)/#)]`
-/

namespace A336853.P16984476845124414463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A336852 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336853.P16984476845124414463

namespace A336853

/-- `∑{d}[n+1, A008683(#)*A336852((n+1)/#)]` -/
def P16984476845124414463.Spec : Prop :=
  ∀ n, P16984476845124414463.a n = A336853 (n + 1)

end A336853

/-!
# A336854: a(n) = A336841(n)/2.

The programs for A336854, the canonical program `A336854.P17456032559665882968` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336854 has offset 1).

The definition of A336854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336854.P17456032559665882968

`A336841(n+1)/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336854

/-- `A336841(n+1)/2` -/
def P17456032559665882968.Spec : Prop :=
  ∀ n, P17456032559665882968.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P7431094935592033240

`(A336845(n+1)-A003973(n+1))/2`
-/

namespace A336854.P7431094935592033240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) - A003973 (n + 1) : ℚ) / 2

end

end A336854.P7431094935592033240

namespace A336854

/-- `(A336845(n+1)-A003973(n+1))/2` -/
def P7431094935592033240.Spec : Prop :=
  ∀ n, P7431094935592033240.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P11132489066756964044

`A336837(n+1)/2*A336856(n+1)`
-/

namespace A336854.P11132489066756964044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336837 (n + 1) : ℚ) / 2 * (A336856 (n + 1) : ℚ)

end

end A336854.P11132489066756964044

namespace A336854

/-- `A336837(n+1)/2*A336856(n+1)` -/
def P11132489066756964044.Spec : Prop :=
  ∀ n, P11132489066756964044.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P968819708729472805

`∑{d}[n+1, A048673(n+1)-A048673(#)]`
-/

namespace A336854.P968819708729472805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A048673 (n + 1) - A048673 d)

end

end A336854.P968819708729472805

namespace A336854

/-- `∑{d}[n+1, A048673(n+1)-A048673(#)]` -/
def P968819708729472805.Spec : Prop :=
  ∀ n, P968819708729472805.a n = A336854 (n + 1)

end A336854

/-! ## A336854.P16205226704770283339

`∑{d}[n+1, A003961(#)*A108228((n+1)/#)]`
-/

namespace A336854.P16205226704770283339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003961 d * A108228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A336854.P16205226704770283339

namespace A336854

/-- `∑{d}[n+1, A003961(#)*A108228((n+1)/#)]` -/
def P16205226704770283339.Spec : Prop :=
  ∀ n, P16205226704770283339.a n = A336854 (n + 1)

end A336854

/-! ## A336854.P7602752392625670402

`A000005(n+1)*A048673(n+1)-A336840(n+1)`
-/

namespace A336854.P7602752392625670402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A048673 (n + 1) - A336840 (n + 1)

end

end A336854.P7602752392625670402

namespace A336854

/-- `A000005(n+1)*A048673(n+1)-A336840(n+1)` -/
def P7602752392625670402.Spec : Prop :=
  ∀ n, P7602752392625670402.a n = A336854 (n + 1)

end A336854

/-! ## A336854.P8962704514154352948

`(A336845(n+1)-A000203(A003961(n+1)))/2`
-/

namespace A336854.P8962704514154352948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) - A000203 (A003961 (n + 1)).toNat : ℚ) / 2

end

end A336854.P8962704514154352948

namespace A336854

/-- `(A336845(n+1)-A000203(A003961(n+1)))/2` -/
def P8962704514154352948.Spec : Prop :=
  ∀ n, P8962704514154352948.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P14106275627614310668

`A094471(A003961(n+1))/2`
-/

namespace A336854.P14106275627614310668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094471 (A003961 (n + 1)).toNat : ℚ) / 2

end

end A336854.P14106275627614310668

namespace A336854

/-- `A094471(A003961(n+1))/2` -/
def P14106275627614310668.Spec : Prop :=
  ∀ n, P14106275627614310668.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P2429263488014880504

`A094471(A253885(n)+1)/2`
-/

namespace A336854.P2429263488014880504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094471 (A253885 n + 1).toNat : ℚ) / 2

end

end A336854.P2429263488014880504

namespace A336854

/-- `A094471(A253885(n)+1)/2` -/
def P2429263488014880504.Spec : Prop :=
  ∀ n, P2429263488014880504.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P7507702420882971554

`(A038040(A003961(n+1))-A003973(n+1))/2`
-/

namespace A336854.P7507702420882971554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (A003961 (n + 1)).toNat - A003973 (n + 1) : ℚ) / 2

end

end A336854.P7507702420882971554

namespace A336854

/-- `(A038040(A003961(n+1))-A003973(n+1))/2` -/
def P7507702420882971554.Spec : Prop :=
  ∀ n, P7507702420882971554.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P15021029372509232166

`A009205(A003961(n+1))/2*A336837(n+1)`
-/

namespace A336854.P15021029372509232166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009205 (A003961 (n + 1)).toNat : ℚ) / 2 * (A336837 (n + 1) : ℚ)

end

end A336854.P15021029372509232166

namespace A336854

/-- `A009205(A003961(n+1))/2*A336837(n+1)` -/
def P15021029372509232166.Spec : Prop :=
  ∀ n, P15021029372509232166.a n = (A336854 (n + 1) : ℚ)

end A336854

/-! ## A336854.P15494038137591405891

`A094471(A336845(n+1)/A000005(n+1))/2`
-/

namespace A336854.P15494038137591405891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094471 (SequenceMachineLib.roundAway ((A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat : ℚ) / 2

end

end A336854.P15494038137591405891

namespace A336854

/-- `A094471(A336845(n+1)/A000005(n+1))/2` -/
def P15494038137591405891.Spec : Prop :=
  ∀ n, P15494038137591405891.a n = (A336854 (n + 1) : ℚ)

end A336854

/-!
# A336856: Prime-shifted analog of gcd(d(n), sigma(n)): a(n) = gcd(A000005(n), A003973(n)).

The programs for A336856, the canonical program `A336856.P10996703592660352307` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336856 has offset 1).

The definition of A336856 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336856.P3541071656764758249

`A000005(n+1)/A336839(n+1)`
-/

namespace A336856.P3541071656764758249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A336839 (n + 1) : ℚ)

end

end A336856.P3541071656764758249

namespace A336856

/-- `A000005(n+1)/A336839(n+1)` -/
def P3541071656764758249.Spec : Prop :=
  ∀ n, P3541071656764758249.a n = (A336856 (n + 1) : ℚ)

end A336856

/-! ## A336856.P13725887052519878296

`A003973(n+1)/A336838(n+1)`
-/

namespace A336856.P13725887052519878296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336838 (n + 1) : ℚ)

end

end A336856.P13725887052519878296

namespace A336856

/-- `A003973(n+1)/A336838(n+1)` -/
def P13725887052519878296.Spec : Prop :=
  ∀ n, P13725887052519878296.a n = (A336856 (n + 1) : ℚ)

end A336856

/-! ## A336856.P10996703592660352307

`gcd(A000005(n+1), A003973(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A336856

/-- `gcd(A000005(n+1), A003973(n+1))` -/
def P10996703592660352307.Spec : Prop :=
  ∀ n, (P10996703592660352307.a n : ℤ) = A336856 (n + 1)

theorem P10996703592660352307.correct : P10996703592660352307.Spec := by
  intro n
  simp only [A336856, Nat.add_sub_cancel]

end A336856

/-! ## A336856.P16692519440347263202

`A009205(A003961(n+1))`
-/

namespace A336856.P16692519440347263202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (A003961 (n + 1)).toNat

end

end A336856.P16692519440347263202

namespace A336856

/-- `A009205(A003961(n+1))` -/
def P16692519440347263202.Spec : Prop :=
  ∀ n, P16692519440347263202.a n = A336856 (n + 1)

end A336856

/-! ## A336856.P1265552769225663731

`gcd(A062011(n+1), A336846(n+1))`
-/

namespace A336856.P1265552769225663731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062011 (n + 1)) (A336846 (n + 1))

end

end A336856.P1265552769225663731

namespace A336856

/-- `gcd(A062011(n+1), A336846(n+1))` -/
def P1265552769225663731.Spec : Prop :=
  ∀ n, (P1265552769225663731.a n : ℤ) = A336856 (n + 1)

end A336856

/-! ## A336856.P1670065678683797011

`A009205(n+1)*A057021(n+1)/A336839(n+1)`
-/

namespace A336856.P1670065678683797011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009205 (n + 1) * A057021 (n + 1) : ℚ) / (A336839 (n + 1) : ℚ)

end

end A336856.P1670065678683797011

namespace A336856

/-- `A009205(n+1)*A057021(n+1)/A336839(n+1)` -/
def P1670065678683797011.Spec : Prop :=
  ∀ n, P1670065678683797011.a n = (A336856 (n + 1) : ℚ)

end A336856

/-! ## A336856.P3104765661355906835

`A336845(n+1)/(A003961(n+1)*A336839(n+1))`
-/

namespace A336856.P3104765661355906835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A003961 (n + 1) * A336839 (n + 1) : ℚ)

end

end A336856.P3104765661355906835

namespace A336856

/-- `A336845(n+1)/(A003961(n+1)*A336839(n+1))` -/
def P3104765661355906835.Spec : Prop :=
  ∀ n, P3104765661355906835.a n = (A336856 (n + 1) : ℚ)

end A336856

/-! ## A336856.P441351457000805653

`gcd(A000203(A003961(n+1)), A329484(n+1))`
-/

namespace A336856.P441351457000805653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A003961 (n + 1)).toNat) (A329484 (n + 1))

end

end A336856.P441351457000805653

namespace A336856

/-- `gcd(A000203(A003961(n+1)), A329484(n+1))` -/
def P441351457000805653.Spec : Prop :=
  ∀ n, (P441351457000805653.a n : ℤ) = A336856 (n + 1)

end A336856

/-! ## A336856.P13339850844418862396

`A009205(A045965(n+1))`
-/

namespace A336856.P13339850844418862396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009205 (A045965 (n + 1)).toNat

end

end A336856.P13339850844418862396

namespace A336856

/-- `A009205(A045965(n+1))` -/
def P13339850844418862396.Spec : Prop :=
  ∀ n, P13339850844418862396.a n = A336856 (n + 1)

end A336856

/-! ## A336856.P16164122226704632095

`A003973(n+1)/A057020(A003961(n+1))`
-/

namespace A336856.P16164122226704632095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A057020 (A003961 (n + 1)).toNat : ℚ)

end

end A336856.P16164122226704632095

namespace A336856

/-- `A003973(n+1)/A057020(A003961(n+1))` -/
def P16164122226704632095.Spec : Prop :=
  ∀ n, P16164122226704632095.a n = (A336856 (n + 1) : ℚ)

end A336856

/-!
# A336857: The digit sum of n*(n^2 + 1)/2.

The programs for A336857, the canonical program `A336857.P1709420048949527903` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336857 has offset 1).

The definition of A336857 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A336857.P1709420048949527903

`A007953(A006003(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336857

/-- `A007953(A006003(n+1))` -/
def P1709420048949527903.Spec : Prop :=
  ∀ n, P1709420048949527903.a n = A336857 (n + 1)

theorem P1709420048949527903.correct : P1709420048949527903.Spec := by
  intro n
  simp only [A336857, Nat.add_sub_cancel]

end A336857

/-! ## A336857.P13238824897023001980

`∑{digits}[∑[∑[3*n]+1], #]`
-/

namespace A336857.P13238824897023001980
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A336857.P13238824897023001980

namespace A336857

/-- `∑{digits}[∑[∑[3*n]+1], #]` -/
def P13238824897023001980.Spec : Prop :=
  ∀ n, (P13238824897023001980.a n : ℤ) = A336857 (n + 1)

end A336857

/-! ## A336857.P9687990679928595887

`log2(∏{digits}[∑[∑[3*n]+1], 2^#])`
-/

namespace A336857.P9687990679928595887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A336857.P9687990679928595887

namespace A336857

/-- `log2(∏{digits}[∑[∑[3*n]+1], 2^#])` -/
def P9687990679928595887.Spec : Prop :=
  ∀ n, P9687990679928595887.a n = (A336857 (n + 1) : ℝ)

end A336857

/-! ## A336857.P11545750678285247448

`∑{digits}[Δ[A002817(n)], #]+A008683(4*(n+1))`
-/

namespace A336857.P11545750678285247448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + A008683 (4 * (n + 1))

end

end A336857.P11545750678285247448

namespace A336857

/-- `∑{digits}[Δ[A002817(n)], #]+A008683(4*(n+1))` -/
def P11545750678285247448.Spec : Prop :=
  ∀ n, P11545750678285247448.a n = A336857 (n + 1)

end A336857

/-! ## A336857.P11109633440701503958

`∑{d}[∑{digits}[A006003(n+1), #], A000010(#)]`
-/

namespace A336857.P11109633440701503958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A336857.P11109633440701503958

namespace A336857

/-- `∑{d}[∑{digits}[A006003(n+1), #], A000010(#)]` -/
def P11109633440701503958.Spec : Prop :=
  ∀ n, P11109633440701503958.a n = A336857 (n + 1)

end A336857

/-! ## A336857.P14936752054911912373

`A000041(C(2, n+2))*∑{digits}[A006003(n+1), #]`
-/

namespace A336857.P14936752054911912373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A336857.P14936752054911912373

namespace A336857

/-- `A000041(C(2, n+2))*∑{digits}[A006003(n+1), #]` -/
def P14936752054911912373.Spec : Prop :=
  ∀ n, P14936752054911912373.a n = A336857 (n + 1)

end A336857

/-! ## A336857.P2316447872532414750

`A014963(12*n+10)*∑{digits}[A006003(n+1), #]`
-/

namespace A336857.P2316447872532414750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 10) * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A336857.P2316447872532414750

namespace A336857

/-- `A014963(12*n+10)*∑{digits}[A006003(n+1), #]` -/
def P2316447872532414750.Spec : Prop :=
  ∀ n, P2316447872532414750.a n = A336857 (n + 1)

end A336857

/-!
# A336858: Triangle read by rows: T(n,k) = T(n,k-1) + T(n-1, k) + T(n-1,k-1) with T(n,0) = T(n, n) = 1 (n >= 0, 0 <= k <= n).

The programs for A336858, there is no canonical definition to state claims against.
-/

/-! ## A336858.P1626710434381691961

`A033878(n)-a(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A336858.P1626710434381691961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A033878 n - Int.tmod (a (n - 2)) (a (n - 1))

end

end A336858.P1626710434381691961

/-! ## A336858.P10757623707284827575

`or(1, A336859(A002378(n)%A080036(n)))`
-/

namespace A336858.P10757623707284827575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A336859 (Int.tmod (A002378 n) (A080036 n)).toNat)

end

end A336858.P10757623707284827575

/-! ## A336858.P16331777478731873097

`A336859(∑[char[∑[n]]]²-(n+1))`
-/

namespace A336858.P16331777478731873097
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A336858.P16331777478731873097

/-! ## A336858.P14760136839792128692

`or(1, A336859(A061579(n)))`
-/

namespace A336858.P14760136839792128692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A336859 (A061579 n).toNat)

end

end A336858.P14760136839792128692

/-! ## A336858.P9880295567929592051

`lcm(A033999(n), A336859(A061579(n)))`
-/

namespace A336858.P9880295567929592051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A336859 (A061579 n).toNat)

end

end A336858.P9880295567929592051

/-! ## A336858.P7900893350268801741

`A336859(A061579(n))+A000007(A098985(n))`
-/

namespace A336858.P7900893350268801741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (A061579 n).toNat + A000007 (A098985 n).toNat

end

end A336858.P7900893350268801741

/-! ## A336858.P16986157121284699898

`A336859(A061579(n))%A000041(n+2)`
-/

namespace A336858.P16986157121284699898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336859 (A061579 n).toNat) (A000041 (n + 2))

end

end A336858.P16986157121284699898

/-! ## A336858.P6982273085797348270

`A113453(A027379(n))*A336859(A061579(n))`
-/

namespace A336858.P6982273085797348270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113453 (A027379 n).toNat * A336859 (A061579 n).toNat

end

end A336858.P6982273085797348270

/-! ## A336858.P7043804000067119767

`∑{d}[A336859(A061579(n)), A000010(#)]`
-/

namespace A336858.P7043804000067119767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A336858.P7043804000067119767

/-!
# A336859: Mirror image of triangular array A336858.

The programs for A336859, there is no canonical definition to state claims against.
-/

/-! ## A336859.P13968590993924436788

`A336858(A061579(n))`
-/

namespace A336859.P13968590993924436788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A061579 n).toNat

end

end A336859.P13968590993924436788

/-! ## A336859.P4831860482974839918

`A336858(A114327(n)+n)`
-/

namespace A336859.P4831860482974839918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A114327 n + (n : ℤ)).toNat

end

end A336859.P4831860482974839918

/-! ## A336859.P5860019234062563514

`A336858(A038722(n+1)-1)`
-/

namespace A336859.P5860019234062563514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A038722 (n + 1) - 1).toNat

end

end A336859.P5860019234062563514

/-! ## A336859.P9511298110466920998

`A336858(A023443(A038722(n+1)))`
-/

namespace A336859.P9511298110466920998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A336859.P9511298110466920998

/-! ## A336859.P12069371727294645385

`A336858(A057944(n)+A025581(n))`
-/

namespace A336859.P12069371727294645385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A057944 n + A025581 n).toNat

end

end A336859.P12069371727294645385

/-! ## A336859.P8524106860282970351

`A336858(A038722(n+2))`
-/

namespace A336859.P8524106860282970351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336858 (A038722 (n + 2)).toNat

end

end A336859.P8524106860282970351

/-!
# A336861: a(n) = ceiling((n-1-sqrt(n+1))/2).

The programs for A336861, the canonical program `A336861.P9551668455224781397` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336861 has offset 1).

The definition of A336861 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n-sqrt(n+2))/2)` (program `A336861.P9551668455224781397`, by `A336861.P9551668455224781397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A336861.P9551668455224781397

`ceil((n-sqrt(n+2))/2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336861

/-- `ceil((n-sqrt(n+2))/2)` -/
def P9551668455224781397.Spec : Prop :=
  ∀ n, P9551668455224781397.a n = A336861 (n + 1)

theorem P9551668455224781397.correct : P9551668455224781397.Spec := by
  intro n
  simp only [A336861, Nat.add_sub_cancel]

end A336861

/-! ## A336861.P6072642596384396158

`n-floor(a(n-1)+sqrt(n+2))` with `a(0)=0`
-/

namespace A336861.P6072642596384396158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(a (n - 1) : ℝ) + Real.sqrt (n + 2 : ℝ)⌋

end

end A336861.P6072642596384396158

namespace A336861

/-- `n-floor(a(n-1)+sqrt(n+2))` -/
def P6072642596384396158.Spec : Prop :=
  ∀ n, P6072642596384396158.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P13455748604357360195

`floor(∪[2*n+1, (n+3)*2*n]/4)`
-/

namespace A336861.P13455748604357360195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℚ) / 4⌋

end

end A336861.P13455748604357360195

namespace A336861

/-- `floor(∪[2*n+1, (n+3)*2*n]/4)` -/
def P13455748604357360195.Spec : Prop :=
  ∀ n, P13455748604357360195.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P8738973867974602370

`∑[A267598(n)]-1`
-/

namespace A336861.P8738973867974602370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A336861.P8738973867974602370

namespace A336861

/-- `∑[A267598(n)]-1` -/
def P8738973867974602370.Spec : Prop :=
  ∀ n, P8738973867974602370.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P3663596267353600485

`round(sqrt(∑[A080344(n)]))`
-/

namespace A336861.P3663596267353600485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A336861.P3663596267353600485

namespace A336861

/-- `round(sqrt(∑[A080344(n)]))` -/
def P3663596267353600485.Spec : Prop :=
  ∀ n, P3663596267353600485.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P7557008921335917210

`∑[char[A007401(n+2)+n]]`
-/

namespace A336861.P7557008921335917210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336861.P7557008921335917210

namespace A336861

/-- `∑[char[A007401(n+2)+n]]` -/
def P7557008921335917210.Spec : Prop :=
  ∀ n, (P7557008921335917210.a n : ℤ) = A336861 (n + 1)

end A336861

/-! ## A336861.P4918547590494825379

`n-∑[char[A133280(n)-2]]`
-/

namespace A336861.P4918547590494825379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133280 n - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A336861.P4918547590494825379

namespace A336861

/-- `n-∑[char[A133280(n)-2]]` -/
def P4918547590494825379.Spec : Prop :=
  ∀ n, P4918547590494825379.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P2339421308619472966

`A267919(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A336861.P2339421308619472966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A267919 n + a (n - 2)

end

end A336861.P2339421308619472966

namespace A336861

/-- `A267919(n)+a(n-2)` -/
def P2339421308619472966.Spec : Prop :=
  ∀ n, P2339421308619472966.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P6480899901706511263

`∑[char[∑[A130321(n)%2+2]]]`
-/

namespace A336861.P6480899901706511263
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n) 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336861.P6480899901706511263

namespace A336861

/-- `∑[char[∑[A130321(n)%2+2]]]` -/
def P6480899901706511263.Spec : Prop :=
  ∀ n, (P6480899901706511263.a n : ℤ) = A336861 (n + 1)

end A336861

/-! ## A336861.P9454945233843166000

`A004526(n+1-floor(sqrt(n+2)))`
-/

namespace A336861.P9454945233843166000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1 - Nat.sqrt (n + 2))

end

end A336861.P9454945233843166000

namespace A336861

/-- `A004526(n+1-floor(sqrt(n+2)))` -/
def P9454945233843166000.Spec : Prop :=
  ∀ n, P9454945233843166000.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P712376868344333775

`∑[∑[A000005(n+2)+1]%2]-1`
-/

namespace A336861.P712376868344333775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A336861.P712376868344333775

namespace A336861

/-- `∑[∑[A000005(n+2)+1]%2]-1` -/
def P712376868344333775.Spec : Prop :=
  ∀ n, P712376868344333775.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P8363603699646329670

`∑[char[A052146(n+1)+2*n+3]]`
-/

namespace A336861.P8363603699646329670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (n + 1) + (2 * n + 3 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336861.P8363603699646329670

namespace A336861

/-- `∑[char[A052146(n+1)+2*n+3]]` -/
def P8363603699646329670.Spec : Prop :=
  ∀ n, (P8363603699646329670.a n : ℤ) = A336861 (n + 1)

end A336861

/-! ## A336861.P14689283912229842876

`(n+2-A256244(n+2))/2`
-/

namespace A336861.P14689283912229842876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A256244 (n + 2) : ℚ) / 2

end

end A336861.P14689283912229842876

namespace A336861

/-- `(n+2-A256244(n+2))/2` -/
def P14689283912229842876.Spec : Prop :=
  ∀ n, P14689283912229842876.a n = (A336861 (n + 1) : ℚ)

end A336861

/-! ## A336861.P14690164067919129258

`∑[and(ceil(n/(n+1)), A053186(n+2))]`
-/

namespace A336861.P14690164067919129258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(n : ℚ) / (n + 1 : ℚ)⌉ (A053186 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336861.P14690164067919129258

namespace A336861

/-- `∑[and(ceil(n/(n+1)), A053186(n+2))]` -/
def P14690164067919129258.Spec : Prop :=
  ∀ n, P14690164067919129258.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P6561118863957912297

`∑[A267598(n)*A267612(n+2)]`
-/

namespace A336861.P6561118863957912297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 n * A267612 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336861.P6561118863957912297

namespace A336861

/-- `∑[A267598(n)*A267612(n+2)]` -/
def P6561118863957912297.Spec : Prop :=
  ∀ n, P6561118863957912297.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P16765085284742318811

`n-∑[A071028(n+2)]`
-/

namespace A336861.P16765085284742318811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336861.P16765085284742318811

namespace A336861

/-- `n-∑[A071028(n+2)]` -/
def P16765085284742318811.Spec : Prop :=
  ∀ n, P16765085284742318811.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P979779302705317385

`n+2-A259549(n+3)`
-/

namespace A336861.P979779302705317385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A259549 (n + 3)

end

end A336861.P979779302705317385

namespace A336861

/-- `n+2-A259549(n+3)` -/
def P979779302705317385.Spec : Prop :=
  ∀ n, P979779302705317385.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P10706319131241236747

`A002265(A076874(n+3)+n)`
-/

namespace A336861.P10706319131241236747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A076874 (n + 3) + (n : ℤ)).toNat

end

end A336861.P10706319131241236747

namespace A336861

/-- `A002265(A076874(n+3)+n)` -/
def P10706319131241236747.Spec : Prop :=
  ∀ n, P10706319131241236747.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P10215293374349175271

`A002265(comp[A055086(n)+comp[2*n]])`
-/

namespace A336861.P10215293374349175271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A336861.P10215293374349175271

namespace A336861

/-- `A002265(comp[A055086(n)+comp[2*n]])` -/
def P10215293374349175271.Spec : Prop :=
  ∀ n, P10215293374349175271.a n = A336861 (n + 1)

end A336861

/-! ## A336861.P12949920825410012918

`A002265(2*n-A055086(n+2)+2)`
-/

namespace A336861.P12949920825410012918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((2 * n : ℤ) - A055086 (n + 2) + 2).toNat

end

end A336861.P12949920825410012918

namespace A336861

/-- `A002265(2*n-A055086(n+2)+2)` -/
def P12949920825410012918.Spec : Prop :=
  ∀ n, P12949920825410012918.a n = A336861 (n + 1)

end A336861

/-!
# A336864: Bogotá numbers k such that k + 1 is also Bogotá number.

The programs for A336864, there is no canonical definition to state claims against.
-/

/-! ## A336864.P15778229559354560191

`∩[A336826(n+1)-1, A336826(n+1)]`
-/

namespace A336864.P15778229559354560191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336864.P15778229559354560191

/-!
# A336865: Irregular triangle read by rows where T(n,k) is the number of divisors of n with distinct prime multiplicities and a total of k prime factors, counted with multiplicity.

The programs for A336865, there is no canonical definition to state claims against.
-/

/-! ## A336865.P13770734924347180934

`Δ[A004804(A056940(n))%2+n]`
-/

namespace A336865.P13770734924347180934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004804 (A056940 n).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336865.P13770734924347180934

/-!
# A336866: Number of integer partitions of n without all distinct multiplicities.

The programs for A336866, there is no canonical definition to state claims against.
-/

/-! ## A336866.P2819803632318431308

`A000041(n)-A098859(n)`
-/

namespace A336866.P2819803632318431308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A098859 n

end

end A336866.P2819803632318431308

/-! ## A336866.P537494267472231751

`A351592(n)+A351293(n)`
-/

namespace A336866.P537494267472231751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351592 n + A351293 n

end

end A336866.P537494267472231751

/-! ## A336866.P3110973415486751848

`A213598(n)-A098859(n)`
-/

namespace A336866.P3110973415486751848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A098859 n

end

end A336866.P3110973415486751848

/-! ## A336866.P9356112872086695094

`sqrt(A001255(n))-A098859(n)`
-/

namespace A336866.P9356112872086695094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A098859 n : ℝ)

end

end A336866.P9356112872086695094

/-! ## A336866.P3521227330698839191

`∑[A002865(n)]-A098859(n)`
-/

namespace A336866.P3521227330698839191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098859 n

end

end A336866.P3521227330698839191

/-!
# A336867: Numbers k such that k! does not have distinct prime multiplicities.

The programs for A336867, the canonical program `A336867.P8103193786968879714` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336867 has offset 1).

The definition of A336867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336867.P8103193786968879714

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=5, a(2)=7, a(3)=8, a(4)=9, a(5)=11, a(6)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A336867

/-- `2*a(n-1)-a(n-2)` -/
def P8103193786968879714.Spec : Prop :=
  ∀ n, P8103193786968879714.a n = A336867 (n + 1)

theorem P8103193786968879714.correct : P8103193786968879714.Spec := by
  intro n
  simp only [A336867, Nat.add_sub_cancel]

end A336867

/-!
# A336868: Indicator function for numbers k such that k! has distinct prime multiplicities.

The programs for A336868, there is no canonical definition to state claims against.
-/

/-! ## A336868.P4351193503974014949

`char[and(n, C(11, n))]`
-/

namespace A336868.P4351193503974014949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.choose 11 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A336868.P4351193503974014949

/-!
# A336870: Irregular triangle read by rows where T(n,k) is the number of divisors d of the superprimorial A006939(n) with k prime factors (counting multiplicity), such that d and A006939(n)/d both have distinct prime multiplicities.

The programs for A336870, there is no canonical definition to state claims against.
-/

/-! ## A336870.P16702990521256783030

`A048798(A053632(n)^A349976(n))`
-/

namespace A336870.P16702990521256783030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (SequenceMachineLib.roundAway ((A053632 n : ℚ) ^ (A349976 n : ℤ))).toNat

end

end A336870.P16702990521256783030

/-! ## A336870.P14848138564725256654

`A053632(n)^A001285(A000009(2*n))`
-/

namespace A336870.P14848138564725256654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053632 n : ℚ) ^ (A001285 (A000009 (2 * n)).toNat : ℤ)

end

end A336870.P14848138564725256654

/-! ## A336870.P6394361241108575371

`A136693(A053632(n)^A136696(15*n+14))`
-/

namespace A336870.P6394361241108575371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136693 (SequenceMachineLib.roundAway ((A053632 n : ℚ) ^ (A136696 (15 * n + 14) : ℤ))).toNat

end

end A336870.P6394361241108575371

/-!
# A336871: Number of divisors d of A076954(n) with distinct prime multiplicities such that the numerator of A006939(n)/d also has distinct prime multiplicities.

The programs for A336871, there is no canonical definition to state claims against.
-/

/-! ## A336871.P17114248904129714526

`A122283(A001470(n))+A000245(n)`
-/

namespace A336871.P17114248904129714526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122283 (A001470 n).toNat + A000245 n

end

end A336871.P17114248904129714526

/-! ## A336871.P6643798381621492915

`A165190(A122241(n+1)+A005891(n))`
-/

namespace A336871.P6643798381621492915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A122241 (n + 1) + A005891 n).toNat

end

end A336871.P6643798381621492915

/-! ## A336871.P10972488211644794834

`A324965(A047851(n))+A047287(n+1)`
-/

namespace A336871.P10972488211644794834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A047851 n).toNat + A047287 (n + 1)

end

end A336871.P10972488211644794834

/-!
# A336875: Number of parts, counted without multiplicity, in all compositions of n.

The programs for A336875, there is no canonical definition to state claims against.
-/

/-! ## A336875.P13895300318068244582

`A100196(n*A109192(n))`
-/

namespace A336875.P13895300318068244582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ((n : ℤ) * A109192 n).toNat

end

end A336875.P13895300318068244582

/-! ## A336875.P12964454465879505584

`A099325(n)-A247911(A099325(n))`
-/

namespace A336875.P12964454465879505584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A247911 (A099325 n).toNat

end

end A336875.P12964454465879505584

/-! ## A336875.P467738378737237574

`A235963(A015525(n))`
-/

namespace A336875.P467738378737237574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A015525 n).toNat

end

end A336875.P467738378737237574

/-! ## A336875.P13361028034355382029

`A046155(A005726(n+1)-1)`
-/

namespace A336875.P13361028034355382029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A005726 (n + 1) - 1).toNat

end

end A336875.P13361028034355382029

/-!
# A336876: a(n) is the least m such that A336826(n) = m*p(m) (where p(m) is the product of decimal digits of m).

The programs for A336876, there is no canonical definition to state claims against.
-/

/-! ## A336876.P4168262743567816731

`A336826(n+1)/A028310(A336879(n+1))`
-/

namespace A336876.P4168262743567816731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336826 (n + 1) : ℚ) / (A028310 (A336879 (n + 1)).toNat : ℚ)

end

end A336876.P4168262743567816731

/-! ## A336876.P12258747862267835452

`A336826(n+1)/(A336879(n+1)+A000007(n))`
-/

namespace A336876.P12258747862267835452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336826 (n + 1) : ℚ) / (A336879 (n + 1) + A000007 n : ℚ)

end

end A336876.P12258747862267835452

/-! ## A336876.P14695608020310738768

`A336826(n+1)/(A336879(n+1)+A000038(n))`
-/

namespace A336876.P14695608020310738768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336826 (n + 1) : ℚ) / (A336879 (n + 1) + A000038 n : ℚ)

end

end A336876.P14695608020310738768

/-! ## A336876.P16440707067324349089

`A336826(n+1)/A137735(A336879(n+1)²)`
-/

namespace A336876.P16440707067324349089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336826 (n + 1) : ℚ) / (A137735 (A336879 (n + 1) ^ 2).toNat : ℚ)

end

end A336876.P16440707067324349089

/-!
# A336877: The harmonic function on the Sierpinski gasket with vertices 0, 1, w = (-1)^(1/3) defined by the values a(0) = 0, a(1) = 1, a(w) = -1.

The programs for A336877, there is no canonical definition to state claims against.
-/

/-! ## A336877.P8767491676228857060

`∑[A178590(abs(1-2*n))]-1`
-/

namespace A336877.P8767491676228857060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178590 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A336877.P8767491676228857060

/-!
# A336878: Second differences of A336877, divided by 3.

The programs for A336878, there is no canonical definition to state claims against.
-/

/-! ## A336878.P7956305126011616870

`Δ[Δ[A336877(n)]/3]`
-/

namespace A336878.P7956305126011616870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336877 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336878.P7956305126011616870

/-! ## A336878.P16658614002091202263

`Δ[A178590(2*n+1)/3]`
-/

namespace A336878.P16658614002091202263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178590 (2 * n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336878.P16658614002091202263

/-! ## A336878.P4634702474122733834

`Δ[A002264(Δ[A336877(n)])]`
-/

namespace A336878.P4634702474122733834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336878.P4634702474122733834

/-! ## A336878.P12443318162292297117

`Δ[A002264(A178590(Δ[n²]))]`
-/

namespace A336878.P12443318162292297117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A178590 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336878.P12443318162292297117

/-! ## A336878.P9334603235340402617

`Δ[A114091(A178590(2*n+1))]`
-/

namespace A336878.P9334603235340402617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114091 (A178590 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336878.P9334603235340402617

/-! ## A336878.P4102424509664502818

`Δ[A002264(A178590(2*n+1)+1)]`
-/

namespace A336878.P4102424509664502818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A178590 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A336878.P4102424509664502818

/-!
# A336879: a(n) is the product of the decimal digits of A336876(n).

The programs for A336879, there is no canonical definition to state claims against.
-/

/-! ## A336879.P430072606445338810

`A007954(A336876(n+1))`
-/

namespace A336879.P430072606445338810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A336876 (n + 1)).toNat

end

end A336879.P430072606445338810

/-! ## A336879.P9057907419377581725

`∏{digits}[A336876(A000027(n+1)), #]`
-/

namespace A336879.P9057907419377581725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336876 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A336879.P9057907419377581725

/-! ## A336879.P10339302295459610052

`round(acot(A336876(n+1))*A336826(n+1))`
-/

namespace A336879.P10339302295459610052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A336876 (n + 1) : ℝ) * (A336826 (n + 1) : ℝ))

end

end A336879.P10339302295459610052

/-! ## A336879.P5673625304291156059

`A051801(A336876(n+1))*A057427(n)`
-/

namespace A336879.P5673625304291156059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A336876 (n + 1)).toNat * A057427 n

end

end A336879.P5673625304291156059

/-! ## A336879.P5822100825187185274

`A051801(A336876(n+1))%A000124(n)`
-/

namespace A336879.P5822100825187185274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051801 (A336876 (n + 1)).toNat) (A000124 n)

end

end A336879.P5822100825187185274

/-! ## A336879.P4946972200609674002

`A051801(A336876(n+1))-A258124(A292456(n+1))`
-/

namespace A336879.P4946972200609674002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A336876 (n + 1)).toNat - A258124 (A292456 (n + 1)).toNat

end

end A336879.P4946972200609674002

/-!
# A336881: a(n) is the number of solutions (x, m) of the generalized Ramanujan-Nagell equation x^2 + n = 2^m, x > 0, m > 0, n > 0.

The programs for A336881, there is no canonical definition to state claims against.
-/

/-! ## A336881.P12917323821722351774

`A332042(A323289(n)%A063975(n+3))`
-/

namespace A336881.P12917323821722351774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332042 (Int.tmod (A323289 n) (A063975 (n + 3))).toNat

end

end A336881.P12917323821722351774

/-! ## A336881.P374200501526069776

`and(A072400(n+1), A313373(A126120(n)))`
-/

namespace A336881.P374200501526069776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072400 (n + 1)) (A313373 (A126120 n).toNat)

end

end A336881.P374200501526069776

/-! ## A336881.P16384524062336025705

`A390675(A280161(n+1)+A189377(n+1))`
-/

namespace A336881.P16384524062336025705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390675 (A280161 (n + 1) + A189377 (n + 1)).toNat

end

end A336881.P16384524062336025705

/-! ## A336881.P8505660459317255485

`A286477(n+1)%A176088(A123231(n+1))`
-/

namespace A336881.P8505660459317255485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286477 (n + 1)) (A176088 (A123231 (n + 1)).toNat)

end

end A336881.P8505660459317255485

/-! ## A336881.P5048058502657460723

`and(A138798(n+2), A205482(A337483(n)))`
-/

namespace A336881.P5048058502657460723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138798 (n + 2)) (A205482 (A337483 n).toNat)

end

end A336881.P5048058502657460723

/-!
# A336882: a(0) = 1; for k >= 0, 0 <= i < 2^k, a(2^k + i) = m_k * a(i), where m_k is the least odd number not in terms 0..2^k - 1.

The programs for A336882, there is no canonical definition to state claims against.
-/

/-! ## A336882.P15588247440342799789

`A300717((2*n)²+2)+A052330(A079599(n))`
-/

namespace A336882.P15588247440342799789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 ((2 * n) ^ 2 + 2) + A052330 (A079599 n).toNat

end

end A336882.P15588247440342799789

/-! ## A336882.P13281509360174759101

`A052330(A079599(n))%A213969((n+1)²+1)`
-/

namespace A336882.P13281509360174759101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052330 (A079599 n).toNat) (A213969 ((n + 1) ^ 2 + 1))

end

end A336882.P13281509360174759101

/-! ## A336882.P13950938413999588965

`A052330(A079599(n))%A046063(A001694(n+1))`
-/

namespace A336882.P13950938413999588965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052330 (A079599 n).toNat) (A046063 (A001694 (n + 1)).toNat)

end

end A336882.P13950938413999588965

/-! ## A336882.P9964342358269831537

`A052330(A079599(n))-A178333(A121663(n)+2)`
-/

namespace A336882.P9964342358269831537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A079599 n).toNat - A178333 (A121663 n + 2).toNat

end

end A336882.P9964342358269831537

/-! ## A336882.P15247670550168404712

`A052330(A079599(n))^A351084((n+1)/∏{p}[n+1, #])`
-/

namespace A336882.P15247670550168404712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052330 (A079599 n).toNat : ℚ) ^ (A351084 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℤ)

end

end A336882.P15247670550168404712

/-! ## A336882.P18191058788459008525

`A052330(A079599(n))+A000007(A121663(n))`
-/

namespace A336882.P18191058788459008525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A079599 n).toNat + A000007 (A121663 n).toNat

end

end A336882.P18191058788459008525

/-! ## A336882.P13302786774009731956

`or(A052330(A079599(n)), A125999(n))`
-/

namespace A336882.P13302786774009731956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052330 (A079599 n).toNat) (A125999 n)

end

end A336882.P13302786774009731956

/-! ## A336882.P11637096761987228248

`or(A052330(A079599(n)), A126010(n))`
-/

namespace A336882.P11637096761987228248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052330 (A079599 n).toNat) (A126010 n)

end

end A336882.P11637096761987228248

/-! ## A336882.P8285886640259803688

`A052330(A079599(n))+A000007(A138509(n+1))`
-/

namespace A336882.P8285886640259803688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A079599 n).toNat + A000007 (A138509 (n + 1)).toNat

end

end A336882.P8285886640259803688

/-! ## A336882.P12837578937434020840

`A052330(A079599(n))+A000007(A052330(n))`
-/

namespace A336882.P12837578937434020840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A079599 n).toNat + A000007 (A052330 n).toNat

end

end A336882.P12837578937434020840

/-!
# A336883: a(n) = ((A002144(n) - 1)/2)! (mod A002144(n)) where A002144(n) is the n-th Pythagorean prime.

The programs for A336883, there is no canonical definition to state claims against.
-/

/-! ## A336883.P10915911810310401374

`A002144(n+1)-A336884(n+1)`
-/

namespace A336883.P10915911810310401374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A336884 (n + 1)

end

end A336883.P10915911810310401374

/-! ## A336883.P12462335809011082786

`A002313(n+2)-A336884(n+1)`
-/

namespace A336883.P12462335809011082786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A336884 (n + 1)

end

end A336883.P12462335809011082786

/-! ## A336883.P16290828816981048587

`A004055(A138970(n+1))`
-/

namespace A336883.P16290828816981048587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004055 (A138970 (n + 1)).toNat

end

end A336883.P16290828816981048587

/-! ## A336883.P16549687482768170088

`A004055(eq[0, and(2, A000040(n+1))])`
-/

namespace A336883.P16549687482768170088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A336883.P16549687482768170088

/-! ## A336883.P763560545711514956

`p?[A016813(n)]-A336884(n+1)`
-/

namespace A336883.P763560545711514956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A336884 (n + 1)

end

end A336883.P763560545711514956

/-! ## A336883.P13939264094878440015

`A014442(A209874(n+1))-A336884(n+1)`
-/

namespace A336883.P13939264094878440015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A209874 (n + 1)).toNat - A336884 (n + 1)

end

end A336883.P13939264094878440015

/-! ## A336883.P18368077749521773920

`A014442(A177979(n+2))-A336884(n+1)`
-/

namespace A336883.P18368077749521773920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A177979 (n + 2)).toNat - A336884 (n + 1)

end

end A336883.P18368077749521773920

/-! ## A336883.P9260263186002368543

`A206549(n+1)+A209874(n+1)-A336884(n+1)`
-/

namespace A336883.P9260263186002368543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206549 (n + 1) + (A209874 (n + 1) - A336884 (n + 1))

end

end A336883.P9260263186002368543

/-!
# A336884: a(n) = A002144(n) - A336883(n) where A002144(n) is the n-th Pythagorean prime.

The programs for A336884, there is no canonical definition to state claims against.
-/

/-! ## A336884.P6307772309079235275

`A002144(n+1)-A336883(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336884.P6307772309079235275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A336883 (n + 1)

end

end A336884.P6307772309079235275

/-! ## A336884.P13136185824510731853

`A002313(n+2)-A336883(n+1)`
-/

namespace A336884.P13136185824510731853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A336883 (n + 1)

end

end A336884.P13136185824510731853

/-! ## A336884.P13438742172211367028

`A267101(A080148(n+1))-A336883(n+1)`
-/

namespace A336884.P13438742172211367028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (A080148 (n + 1)).toNat - A336883 (n + 1)

end

end A336884.P13438742172211367028

/-! ## A336884.P8881007940343001859

`A111744(A005408(n))-A336883(n+1)`
-/

namespace A336884.P8881007940343001859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111744 (A005408 n).toNat - A336883 (n + 1)

end

end A336884.P8881007940343001859

/-! ## A336884.P15850374525254049240

`A002144(n+1)-A004055(A138970(n+1))`
-/

namespace A336884.P15850374525254049240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A004055 (A138970 (n + 1)).toNat

end

end A336884.P15850374525254049240

/-! ## A336884.P8851238006524353217

`A000040(A080147(n+1))-A336883(n+1)`
-/

namespace A336884.P8851238006524353217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080147 (n + 1)).toNat - A336883 (n + 1)

end

end A336884.P8851238006524353217

/-! ## A336884.P17185310130798554337

`p?[A057948(n+1)]-A336883(n+1)`
-/

namespace A336884.P17185310130798554337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A336883 (n + 1)

end

end A336884.P17185310130798554337

/-! ## A336884.P5707134968021697384

`p?[A016813(n)]-A336883(n+1)`
-/

namespace A336884.P5707134968021697384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A336883 (n + 1)

end

end A336884.P5707134968021697384

/-! ## A336884.P6770412740726313327

`p?[A042948(n)]-A336883(n+1)`
-/

namespace A336884.P6770412740726313327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A336883 (n + 1)

end

end A336884.P6770412740726313327

/-! ## A336884.P9471305261986333977

`A206549(n+1)+A209874(n+1)-A336883(n+1)`
-/

namespace A336884.P9471305261986333977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206549 (n + 1) + (A209874 (n + 1) - A336883 (n + 1))

end

end A336884.P9471305261986333977

/-!
# A336885: Irregular triangle read by rows: row n gives the sequence of pairs ((x(n)_j, y(n)_j))_{j=1..A336886(n)}, for all non-Pythagorean triples (X(n)_j = sqrt(x(n)_j), Y(n)_j = sqrt(y(n)_j), Z(n) = sqrt(z(n))), with integers 1 <= x(n)_j <= y(n)_j <= z(n) = A334818(n), which correspond to non-right triangles with positive integer area A(n)_j with leg pairs (X(n)_j, Y(n)_j) and base Z(n), for j = 1, 2, ..., A336886(n). The order of the pairs in row n is by nondecreasing y(n)_j.

The programs for A336885, there is no canonical definition to state claims against.
-/

/-! ## A336885.P17733045504476418229

`A309931(A146439(n+1))*A336888(n+1)`
-/

namespace A336885.P17733045504476418229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309931 (A146439 (n + 1)).toNat * A336888 (n + 1)

end

end A336885.P17733045504476418229

/-! ## A336885.P10538466774422160446

`A055642(A336886(2*n+1))*A336888(n+1)`
-/

namespace A336885.P10538466774422160446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A336886 (2 * n + 1)).toNat * A336888 (n + 1)

end

end A336885.P10538466774422160446

/-! ## A336885.P4844994416819975735

`A238747(A000203(3*n+4))*A336888(n+1)`
-/

namespace A336885.P4844994416819975735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238747 (A000203 (3 * n + 4)).toNat * A336888 (n + 1)

end

end A336885.P4844994416819975735

/-!
# A336887: Irregular triangle T(n, j) giving in row n the positive integer areas of all non-right angle triangles (X(n)_j, Y(n)_j, Z(n)), with X(n)_j = sqrt(x(n)_j), Y(n)_j = sqrt(y(n)_j), and Z(n) = sqrt(z(n)), and positive integers 1 <= x(n)_j <= y(n)_j <= z(n), for j = 1, 2,..., A336886. hence z(n) = A334818(n), for n >= 1.

The programs for A336887, there is no canonical definition to state claims against.
-/

/-! ## A336887.P5226525026775851942

`A001222(or(A001749(n+1), A259243(n+1)))`
-/

namespace A336887.P5226525026775851942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A001749 (n + 1)) (A259243 (n + 1))).toNat

end

end A336887.P5226525026775851942

/-!
# A336888: Irregular triangle read by rows: row n gives the pairs x(n)_j, y(n)_j, for j = 1, 2, ..., A336889(n), such that the legs of nonrectangular (nondegenerate) triangles X(n)_j = sqrt(x(n)_j), Y(n)_j = sqrt(y(n)_j), with base Z(n) = sqrt(z(n)), and integers 1 <= x(n)_j <= y(n)_j <= z(n), lead to primitive quartets (x(n)_j, y(n)_j, z(n), A(n)_j) with positive integer area A(n)_j. Hence z(n) = A337215(n) and A(n)_j = A337216(n, j).

The programs for A336888, there is no canonical definition to state claims against.
-/

/-! ## A336888.P6937499326228637362

`A336885(n+1)/A039953(A000124(n))`
-/

namespace A336888.P6937499326228637362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336885 (n + 1) : ℚ) / (A039953 (A000124 n).toNat : ℚ)

end

end A336888.P6937499326228637362

/-! ## A336888.P8948307959019324265

`A336885(n+1)/A309931(A146439(n+1))`
-/

namespace A336888.P8948307959019324265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336885 (n + 1) : ℚ) / (A309931 (A146439 (n + 1)).toNat : ℚ)

end

end A336888.P8948307959019324265

/-! ## A336888.P14927409294979374502

`A336885(xor(A073491(n+1), A324417(n+2)))`
-/

namespace A336888.P14927409294979374502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336885 (Int.xor (A073491 (n + 1)) (A324417 (n + 2))).toNat

end

end A336888.P14927409294979374502

/-!
# A336890: Numbers that eventually reach the fixed point 8208 under "x --> sum of the fourth powers of digits of x".

The programs for A336890, there is no canonical definition to state claims against.
-/

/-! ## A336890.P1387550596316468684

`∩[A031183(n+1), A193569(n+1)]`
-/

namespace A336890.P1387550596316468684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336890.P1387550596316468684

/-!
# A336891: Sequence following Van Eck's sequence unless a prime which was previously encountered is found, in which case, a(n+1) = n - m, where m is the largest possible value such that a(m) is also prime.

The programs for A336891, there is no canonical definition to state claims against.
-/

/-! ## A336891.P4710644717760659544

`gcd(Δ[A184955(n)], A181391(n+1))`
-/

namespace A336891.P4710644717760659544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A181391 (n + 1))

end

end A336891.P4710644717760659544

/-! ## A336891.P15694558306231256153

`and(∑[A160408(n)], A181391(n+1))`
-/

namespace A336891.P15694558306231256153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A181391 (n + 1))

end

end A336891.P15694558306231256153

/-! ## A336891.P10083563733398449510

`A181391(n+1)%A000005(A146205(n))`
-/

namespace A336891.P10083563733398449510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181391 (n + 1)) (A000005 (A146205 n).toNat)

end

end A336891.P10083563733398449510

/-! ## A336891.P12829049671315303976

`A333359(n+1)%A000005(A146205(n))`
-/

namespace A336891.P12829049671315303976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333359 (n + 1)) (A000005 (A146205 n).toNat)

end

end A336891.P12829049671315303976

/-! ## A336891.P1111533651948897090

`A350151(n+1)%A000005(A146205(n))`
-/

namespace A336891.P1111533651948897090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350151 (n + 1)) (A000005 (A146205 n).toNat)

end

end A336891.P1111533651948897090

/-!
# A336892: Numbers that are a divisor of the sum of their divisors to their own powers.

The programs for A336892, there is no canonical definition to state claims against.
-/

/-! ## A336892.P339203552808242810

`A354038(xor(n, A000984(n)))`
-/

namespace A336892.P339203552808242810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354038 (Int.xor (n : ℤ) (A000984 n)).toNat

end

end A336892.P339203552808242810

/-!
# A336895: The prime sandwiches sequence (see Comments lines for definition).

The programs for A336895, there is no canonical definition to state claims against.
-/

/-! ## A336895.P7528031273330466469

`A303290(A035528(a(n-1)))` with `a(0)=1, a(1)=22, a(2)=2`
-/

namespace A336895.P7528031273330466469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22, 2] fun n a =>
  A303290 (A035528 (a (n - 1)).toNat).toNat

end

end A336895.P7528031273330466469

/-!
# A336896: Sum of the leftmost parts in all compositions of n into distinct parts.

The programs for A336896, there is no canonical definition to state claims against.
-/

/-! ## A336896.P18397539533160079857

`n*A032153(n)`
-/

namespace A336896.P18397539533160079857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032153 n

end

end A336896.P18397539533160079857

/-! ## A336896.P267358688045812927

`n*(2*A032228(n)-A065033(n))`
-/

namespace A336896.P267358688045812927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * A032228 n - A065033 n)

end

end A336896.P267358688045812927

/-! ## A336896.P8134360870878793977

`n*(2*A032228(n)-A110654(n))`
-/

namespace A336896.P8134360870878793977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 * A032228 n - A110654 n)

end

end A336896.P8134360870878793977

/-! ## A336896.P5478517399626775170

`(A032155(n)+A032140(n))*n/2`
-/

namespace A336896.P5478517399626775170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032155 n + A032140 n : ℚ) * ((n : ℚ) / 2)

end

end A336896.P5478517399626775170

/-! ## A336896.P4692874161869388233

`n*(A032215(n)+A032230(n)-A065033(n))`
-/

namespace A336896.P4692874161869388233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A032215 n + (A032230 n - A065033 n))

end

end A336896.P4692874161869388233

/-! ## A336896.P17644300885379517873

`n/A032153(n)^A008683(A092789(or(1, n)))`
-/

namespace A336896.P17644300885379517873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A032153 n : ℚ) ^ (A008683 (A092789 (Nat.lor 1 n)).toNat : ℤ)

end

end A336896.P17644300885379517873

/-!
# A336898: a(n) = numerator(n / (4^n - 2^n)) for n > 0 and a(0) = 1.

The programs for A336898, there is no canonical definition to state claims against.
-/

/-! ## A336898.P1561613240823700988

`gcd(A046983(n), A131135(n))`
-/

namespace A336898.P1561613240823700988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046983 n) (A131135 n)

end

end A336898.P1561613240823700988

/-! ## A336898.P16287996508311373525

`A028310(n/A028310(gcd(n, A006516(n))))`
-/

namespace A336898.P16287996508311373525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 (Int.gcd (n : ℤ) (A006516 n)) : ℚ))).toNat

end

end A336898.P16287996508311373525

/-! ## A336898.P5611086937189304700

`A028310(n/gcd(A028310(n), A175166(n)))`
-/

namespace A336898.P5611086937189304700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (Int.gcd (A028310 n) (A175166 n) : ℚ))).toNat

end

end A336898.P5611086937189304700

/-! ## A336898.P9401500257955279161

`A000265(A004277(n))/A014491(A028310(n))`
-/

namespace A336898.P9401500257955279161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A004277 n).toNat : ℚ) / (A014491 (A028310 n).toNat : ℚ)

end

end A336898.P9401500257955279161

/-! ## A336898.P8200906308071206207

`A000265(A004277(n))/A014491(A060000(n+1))`
-/

namespace A336898.P8200906308071206207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A004277 n).toNat : ℚ) / (A014491 (A060000 (n + 1)).toNat : ℚ)

end

end A336898.P8200906308071206207

/-! ## A336898.P3358233023753511797

`A000265(A257088(n))/A014491(A060000(n+1))`
-/

namespace A336898.P3358233023753511797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A257088 n).toNat : ℚ) / (A014491 (A060000 (n + 1)).toNat : ℚ)

end

end A336898.P3358233023753511797

/-!
# A336899: a(n) = denominator(n / (4^n - 2^n)) for n > 0 and a(0) = 1.

The programs for A336899, there is no canonical definition to state claims against.
-/

/-! ## A336899.P5908372281246160284

`gcd(4^n-2^n, C(4^n-2^n, n))`
-/

namespace A336899.P5908372281246160284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((4 ^ n : ℤ) - (2 ^ n : ℤ)) (Nat.choose ((4 ^ n : ℤ) - (2 ^ n : ℤ)).toNat n : ℤ)

end

end A336899.P5908372281246160284

/-! ## A336899.P6640656267158909429

`gcd(C(A020522(n), n), A020522(n))`
-/

namespace A336899.P6640656267158909429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (A020522 n).toNat n : ℤ) (A020522 n)

end

end A336899.P6640656267158909429

/-! ## A336899.P10744280823216997287

`A004277(lcm(n, A020522(n))/A004277(n))`
-/

namespace A336899.P10744280823216997287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) (A020522 n) : ℚ) / (A004277 n : ℚ))).toNat

end

end A336899.P10744280823216997287

/-! ## A336899.P3922613257850299237

`A004277(A006516(n)/A076512(n+1))`
-/

namespace A336899.P3922613257850299237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A006516 n : ℚ) / (A076512 (n + 1) : ℚ))).toNat

end

end A336899.P3922613257850299237

