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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A097800: Number of partitions of the n-th abundant number into abundant numbers.

The programs for A097800, there is no canonical definition to state claims against.
-/

/-! ## A097800.P7090460645032536198

`A097798(A005101(n+1))`
-/

namespace A097800.P7090460645032536198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (A005101 (n + 1)).toNat

end

end A097800.P7090460645032536198

/-! ## A097800.P17585577625549577027

`A097798(A224907(n+1)/2)`
-/

namespace A097800.P17585577625549577027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat

end

end A097800.P17585577625549577027

/-! ## A097800.P9156402393272127679

`A097798(lt[2*n, A039653(n)])`
-/

namespace A097800.P9156402393272127679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A097800.P9156402393272127679

/-! ## A097800.P9964881030810609227

`A097798(lt[n, A039653(n)/2])`
-/

namespace A097800.P9964881030810609227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A097800.P9964881030810609227

/-! ## A097800.P9955085188597999316

`A097798(lt[n, A039653(n)-n])`
-/

namespace A097800.P9955085188597999316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A097800.P9955085188597999316

/-! ## A097800.P10212347334139385835

`A097798(eq[1, A060862(n+1)]+1)`
-/

namespace A097800.P10212347334139385835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A097800.P10212347334139385835

/-! ## A097800.P8944345881309764748

`A097798(eq[1, A294937(n+1)]+1)`
-/

namespace A097800.P8944345881309764748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A097800.P8944345881309764748

/-! ## A097800.P4136491103313129652

`A097798(lt[0, A318679(n+1)]+1)`
-/

namespace A097800.P4136491103313129652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A097800.P4136491103313129652

/-! ## A097800.P11550467165133798909

`A097798(eq[0, A294935(n+2)]+2)`
-/

namespace A097800.P11550467165133798909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A097800.P11550467165133798909

/-! ## A097800.P10376254114831366965

`A097798(lt[2*(n+1), A000203(n+1)]+1)`
-/

namespace A097800.P10376254114831366965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A097800.P10376254114831366965

/-! ## A097800.P1741064421996260704

`A097798(lt[2, A000203(n+2)/(n+2)]+2)`
-/

namespace A097800.P1741064421996260704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097798 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2)

end

end A097800.P1741064421996260704

/-!
# A097801: a(n) = (2*n)!/(n!*2^(n-1)).

The programs for A097801, the canonical program `A097801.P16842108591234661419` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097801 has offset 0).

The definition of A097801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097801.P16842108591234661419

`a(n-1)*(2*n-1)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097801

/-- `a(n-1)*(2*n-1)` -/
def P16842108591234661419.Spec : Prop :=
  ∀ n, P16842108591234661419.a n = A097801 n

theorem P16842108591234661419.correct : P16842108591234661419.Spec := by
  intro n
  simp only [A097801]

end A097801

/-! ## A097801.P13971577417533594404

`2*A001147(n)`
-/

namespace A097801.P13971577417533594404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001147 n

end

end A097801.P13971577417533594404

namespace A097801

/-- `2*A001147(n)` -/
def P13971577417533594404.Spec : Prop :=
  ∀ n, P13971577417533594404.a n = A097801 n

end A097801

/-! ## A097801.P18344295725521844048

`(2*n)!/(n!*2^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A097801.P18344295725521844048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / ((Nat.factorial n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A097801.P18344295725521844048

namespace A097801

/-- `(2*n)!/(n!*2^(n-1))` -/
def P18344295725521844048.Spec : Prop :=
  ∀ n, P18344295725521844048.a n = (A097801 n : ℚ)

end A097801

/-! ## A097801.P2442387449822188361

`lcm(2, ∏[1-2*n])`
-/

namespace A097801.P2442387449822188361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A097801.P2442387449822188361

namespace A097801

/-- `lcm(2, ∏[1-2*n])` -/
def P2442387449822188361.Spec : Prop :=
  ∀ n, (P2442387449822188361.a n : ℤ) = A097801 n

end A097801

/-! ## A097801.P15736849074284816556

`∏[abs(record[xor(1, n-1)])]`
-/

namespace A097801.P15736849074284816556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097801.P15736849074284816556

namespace A097801

/-- `∏[abs(record[xor(1, n-1)])]` -/
def P15736849074284816556.Spec : Prop :=
  ∀ n, P15736849074284816556.a n = A097801 n

end A097801

/-! ## A097801.P17664679023827946572

`-∏[record[xor(1, n-1)]]`
-/

namespace A097801.P17664679023827946572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A097801.P17664679023827946572

namespace A097801

/-- `-∏[record[xor(1, n-1)]]` -/
def P17664679023827946572.Spec : Prop :=
  ∀ n, P17664679023827946572.a n = A097801 n

end A097801

/-! ## A097801.P15597798453041739152

`∏[ceil(abs(2*n-ϕ))]`
-/

namespace A097801.P15597798453041739152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(2 * n : ℝ) - Real.goldenRatio|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097801.P15597798453041739152

namespace A097801

/-- `∏[ceil(abs(2*n-ϕ))]` -/
def P15597798453041739152.Spec : Prop :=
  ∀ n, P15597798453041739152.a n = A097801 n

end A097801

/-! ## A097801.P6779082087611187186

`abs(∏[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A097801.P6779082087611187186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097801.P6779082087611187186

namespace A097801

/-- `abs(∏[a(n-1)+2])` -/
def P6779082087611187186.Spec : Prop :=
  ∀ n, (P6779082087611187186.a n : ℤ) = A097801 n

end A097801

/-! ## A097801.P18220281642972470570

`floor(∏[a(n-1)+2])` with `a(0)=2, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097801.P18220281642972470570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097801.P18220281642972470570

namespace A097801

/-- `floor(∏[a(n-1)+2])` -/
def P18220281642972470570.Spec : Prop :=
  ∀ n, (P18220281642972470570.a n : ℤ) = A097801 n

end A097801

/-! ## A097801.P17811008085497958488

`lcm(4, ∏[n-1+n])/2`
-/

namespace A097801.P17811008085497958488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A097801.P17811008085497958488

namespace A097801

/-- `lcm(4, ∏[n-1+n])/2` -/
def P17811008085497958488.Spec : Prop :=
  ∀ n, P17811008085497958488.a n = (A097801 n : ℚ)

end A097801

/-!
# A097802: a(n) = 3*(25*n + 1).

The programs for A097802, the canonical program `A097802.P6550429785087276543` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097802 has offset 0).

The definition of A097802 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(25*n+1)` (program `A097802.P6550429785087276543`, by `A097802.P6550429785087276543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097802.P6550429785087276543

`3*(25*n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097802

/-- `3*(25*n+1)` -/
def P6550429785087276543.Spec : Prop :=
  ∀ n, (P6550429785087276543.a n : ℤ) = A097802 n

theorem P6550429785087276543.correct : P6550429785087276543.Spec := by
  intro n
  simp only [A097802]

end A097802

/-!
# A097803: a(n) = 3*(2*n^2 + 1).

The programs for A097803, the canonical program `A097803.P14601754456533614847` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097803 has offset 0).

The definition of A097803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(2*n²+1)` (program `A097803.P14601754456533614847`, by `A097803.P14601754456533614847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097803.P14601754456533614847

`3*(2*n²+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097803

/-- `3*(2*n²+1)` -/
def P14601754456533614847.Spec : Prop :=
  ∀ n, (P14601754456533614847.a n : ℤ) = A097803 n

theorem P14601754456533614847.correct : P14601754456533614847.Spec := by
  intro n
  simp only [A097803]

end A097803

/-! ## A097803.P9583913439138937200

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=9, a(2)=27`
-/

namespace A097803.P9583913439138937200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 27] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A097803.P9583913439138937200

namespace A097803

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P9583913439138937200.Spec : Prop :=
  ∀ n, P9583913439138937200.a n = A097803 n

theorem P9583913439138937200.correct : P9583913439138937200.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A097803, Nat.add_sub_cancel, A097803.P9583913439138937200.a, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A097803, Nat.add_sub_cancel, A097803.P9583913439138937200.a, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097803

/-! ## A097803.P3090068866669622018

`∑[a(n-1)+12]` with `a(0)=3, a(1)=6`
-/

namespace A097803.P3090068866669622018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097803.P3090068866669622018

namespace A097803

/-- `∑[a(n-1)+12]` -/
def P3090068866669622018.Spec : Prop :=
  ∀ n, (P3090068866669622018.a n : ℤ) = A097803 n

end A097803

/-! ## A097803.P709148210799599740

`∑[ogf((3+9x^2)/(1-2x+x^2))]`
-/

namespace A097803.P709148210799599740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097803.P709148210799599740

namespace A097803

/-- `∑[ogf((3+9x^2)/(1-2x+x^2))]` -/
def P709148210799599740.Spec : Prop :=
  ∀ n, P709148210799599740.a n = A097803 n

end A097803

/-! ## A097803.P7443572570371958899

`ogf((3+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A097803.P7443572570371958899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, 9] [1, -3, 3, -1] n

end

end A097803.P7443572570371958899

namespace A097803

/-- `ogf((3+9x^2)/(1-3x+3x^2-x^3))` -/
def P7443572570371958899.Spec : Prop :=
  ∀ n, P7443572570371958899.a n = A097803 n

end A097803

/-! ## A097803.P17618688739301381804

`3*or(2, (2*n)²)/2`
-/

namespace A097803.P17618688739301381804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.lor 2 ((2 * n) ^ 2) : ℚ) / 2

end

end A097803.P17618688739301381804

namespace A097803

/-- `3*or(2, (2*n)²)/2` -/
def P17618688739301381804.Spec : Prop :=
  ∀ n, P17618688739301381804.a n = (A097803 n : ℚ)

end A097803

/-! ## A097803.P14014393490382174501

`3*xor(2, (2*n)²)/2`
-/

namespace A097803.P14014393490382174501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.xor 2 ((2 * n) ^ 2) : ℚ) / 2

end

end A097803.P14014393490382174501

namespace A097803

/-- `3*xor(2, (2*n)²)/2` -/
def P14014393490382174501.Spec : Prop :=
  ∀ n, P14014393490382174501.a n = (A097803 n : ℚ)

end A097803

/-! ## A097803.P16532903432225734596

`a(n-1)+3*(4*n-2)` with `a(0)=3`
-/

namespace A097803.P16532903432225734596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 3 * ((4 * n : ℤ) - 2)

end

end A097803.P16532903432225734596

namespace A097803

/-- `a(n-1)+3*(4*n-2)` -/
def P16532903432225734596.Spec : Prop :=
  ∀ n, P16532903432225734596.a n = A097803 n

theorem P16532903432225734596.correct : P16532903432225734596.Spec := by
  intro n
  induction n with
  | zero => simp [A097803, A097803.P16532903432225734596.a, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A097803, Nat.add_sub_cancel, A097803.P16532903432225734596.a, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A097803

/-! ## A097803.P1029423453337360549

`A227776(n)+2`
-/

namespace A097803.P1029423453337360549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 n + 2

end

end A097803.P1029423453337360549

namespace A097803

/-- `A227776(n)+2` -/
def P1029423453337360549.Spec : Prop :=
  ∀ n, P1029423453337360549.a n = A097803 n

theorem P1029423453337360549.correct : P1029423453337360549.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P1029423453337360549.a, A097803.P14601754456533614847.a, A227776, A227776.P10684709739672148907.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P740616041795638458

`A033581(n)+3`
-/

namespace A097803.P740616041795638458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + 3

end

end A097803.P740616041795638458

namespace A097803

/-- `A033581(n)+3` -/
def P740616041795638458.Spec : Prop :=
  ∀ n, P740616041795638458.a n = A097803 n

theorem P740616041795638458.correct : P740616041795638458.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P740616041795638458.a, A097803.P14601754456533614847.a, A033581, A033581.P13583599227635646969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P5882213655043762582

`A140811(n)+4`
-/

namespace A097803.P5882213655043762582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140811 n + 4

end

end A097803.P5882213655043762582

namespace A097803

/-- `A140811(n)+4` -/
def P5882213655043762582.Spec : Prop :=
  ∀ n, P5882213655043762582.a n = A097803 n

theorem P5882213655043762582.correct : P5882213655043762582.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P5882213655043762582.a, A097803.P14601754456533614847.a, A140811, A140811.P17716776478933671421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P13167977697246303555

`2*A056107(n)+1`
-/

namespace A097803.P13167977697246303555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056107 n + 1

end

end A097803.P13167977697246303555

namespace A097803

/-- `2*A056107(n)+1` -/
def P13167977697246303555.Spec : Prop :=
  ∀ n, P13167977697246303555.a n = A097803 n

theorem P13167977697246303555.correct : P13167977697246303555.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P13167977697246303555.a, A097803.P14601754456533614847.a, A056107, A056107.P16256314836093114361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P12422492853642050377

`2*A033428(n)+3`
-/

namespace A097803.P12422492853642050377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033428 n + 3

end

end A097803.P12422492853642050377

namespace A097803

/-- `2*A033428(n)+3` -/
def P12422492853642050377.Spec : Prop :=
  ∀ n, P12422492853642050377.a n = A097803 n

theorem P12422492853642050377.correct : P12422492853642050377.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P12422492853642050377.a, A097803.P14601754456533614847.a, A033428, A033428.P10473664201403486648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P4631630091535455646

`A135453(n)/2+3`
-/

namespace A097803.P4631630091535455646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135453 n : ℚ) / 2 + 3

end

end A097803.P4631630091535455646

namespace A097803

/-- `A135453(n)/2+3` -/
def P4631630091535455646.Spec : Prop :=
  ∀ n, P4631630091535455646.a n = (A097803 n : ℚ)

theorem P4631630091535455646.correct : P4631630091535455646.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P4631630091535455646.a, A097803.P14601754456533614847.a, A135453, A135453.P11012822800042862878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P9740722345095018103

`A195321(n)/3+3`
-/

namespace A097803.P9740722345095018103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195321 n : ℚ) / 3 + 3

end

end A097803.P9740722345095018103

namespace A097803

/-- `A195321(n)/3+3` -/
def P9740722345095018103.Spec : Prop :=
  ∀ n, P9740722345095018103.a n = (A097803 n : ℚ)

theorem P9740722345095018103.correct : P9740722345095018103.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P9740722345095018103.a, A097803.P14601754456533614847.a, A195321, A195321.P9690014683711486293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P11271567428121155427

`(A158480(n)+5)/2`
-/

namespace A097803.P11271567428121155427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158480 n + 5 : ℚ) / 2

end

end A097803.P11271567428121155427

namespace A097803

/-- `(A158480(n)+5)/2` -/
def P11271567428121155427.Spec : Prop :=
  ∀ n, P11271567428121155427.a n = (A097803 n : ℚ)

theorem P11271567428121155427.correct : P11271567428121155427.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P11271567428121155427.a, A097803.P14601754456533614847.a, A158480, A158480.P3708911020539906385.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P297066500082738834

`A049452(n)+3+n`
-/

namespace A097803.P297066500082738834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049452 n + 3 + (n : ℤ)

end

end A097803.P297066500082738834

namespace A097803

/-- `A049452(n)+3+n` -/
def P297066500082738834.Spec : Prop :=
  ∀ n, P297066500082738834.a n = A097803 n

theorem P297066500082738834.correct : P297066500082738834.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P297066500082738834.a, A097803.P14601754456533614847.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P3634112655696729373

`A006124(n)+A005476(n)`
-/

namespace A097803.P3634112655696729373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006124 n + A005476 n

end

end A097803.P3634112655696729373

namespace A097803

/-- `A006124(n)+A005476(n)` -/
def P3634112655696729373.Spec : Prop :=
  ∀ n, P3634112655696729373.a n = A097803 n

end A097803

/-! ## A097803.P6881610176678565956

`A033816(n)+A001107(n)`
-/

namespace A097803.P6881610176678565956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033816 n + A001107 n

end

end A097803.P6881610176678565956

namespace A097803

/-- `A033816(n)+A001107(n)` -/
def P6881610176678565956.Spec : Prop :=
  ∀ n, P6881610176678565956.a n = A097803 n

theorem P6881610176678565956.correct : P6881610176678565956.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P6881610176678565956.a, A097803.P14601754456533614847.a, A001107, A001107.P15766833630772781234.a, A033816, A033816.P2874186077373317365.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-! ## A097803.P3524848077475929578

`A033568(n)+A016873(n)`
-/

namespace A097803.P3524848077475929578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033568 n + A016873 n

end

end A097803.P3524848077475929578

namespace A097803

/-- `A033568(n)+A016873(n)` -/
def P3524848077475929578.Spec : Prop :=
  ∀ n, P3524848077475929578.a n = A097803 n

theorem P3524848077475929578.correct : P3524848077475929578.Spec := by
  intro n
  simp only [A097803, Nat.add_sub_cancel, A097803.P3524848077475929578.a, A097803.P14601754456533614847.a, A016873, A016873.P366335242068170250.a, A033568, A033568.P8873267953823805199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097803

/-!
# A097804: a(n) = 3*(2*5^n + 1).

The programs for A097804, the canonical program `A097804.P7234613398924251718` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097804 has offset 0).

The definition of A097804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(2*5^n+1)` (program `A097804.P7234613398924251718`, by `A097804.P7234613398924251718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097804.P7234613398924251718

`3*(2*5^n+1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097804

/-- `3*(2*5^n+1)` -/
def P7234613398924251718.Spec : Prop :=
  ∀ n, (P7234613398924251718.a n : ℤ) = A097804 n

theorem P7234613398924251718.correct : P7234613398924251718.Spec := by
  intro n
  simp only [A097804]

end A097804

/-! ## A097804.P5255769439580229715

`6*a(n-1)-5*a(n-2)` with `a(0)=9, a(1)=33`
-/

namespace A097804.P5255769439580229715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 33] fun n a =>
  6 * a (n - 1) - 5 * a (n - 2)

end

end A097804.P5255769439580229715

namespace A097804

/-- `6*a(n-1)-5*a(n-2)` -/
def P5255769439580229715.Spec : Prop :=
  ∀ n, P5255769439580229715.a n = A097804 n

theorem P5255769439580229715.correct : P5255769439580229715.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A097804, Nat.add_sub_cancel, A097804.P5255769439580229715.a, A097804.P7234613398924251718.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A097804, Nat.add_sub_cancel, A097804.P5255769439580229715.a, A097804.P7234613398924251718.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097804

/-! ## A097804.P9339094729816448959

`ogf((9-21x)/(1-6x+5x^2))`
-/

namespace A097804.P9339094729816448959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -21] [1, -6, 5] n

end

end A097804.P9339094729816448959

namespace A097804

/-- `ogf((9-21x)/(1-6x+5x^2))` -/
def P9339094729816448959.Spec : Prop :=
  ∀ n, P9339094729816448959.a n = A097804 n

end A097804

/-! ## A097804.P7159714338001797892

`∑[5*a(n-1)]` with `a(0)=9, a(1)=24`
-/

namespace A097804.P7159714338001797892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 24] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097804.P7159714338001797892

namespace A097804

/-- `∑[5*a(n-1)]` -/
def P7159714338001797892.Spec : Prop :=
  ∀ n, (P7159714338001797892.a n : ℤ) = A097804 n

end A097804

/-! ## A097804.P1075573875944066762

`A199216(n)+2`
-/

namespace A097804.P1075573875944066762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199216 n + 2

end

end A097804.P1075573875944066762

namespace A097804

/-- `A199216(n)+2` -/
def P1075573875944066762.Spec : Prop :=
  ∀ n, P1075573875944066762.a n = A097804 n

theorem P1075573875944066762.correct : P1075573875944066762.Spec := by
  intro n
  simp only [A097804, Nat.add_sub_cancel, A097804.P1075573875944066762.a, A097804.P7234613398924251718.a, A199216, A199216.P4532041409865639420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097804

/-! ## A097804.P13552847787849734363

`A198764(n)+4`
-/

namespace A097804.P13552847787849734363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198764 n + 4

end

end A097804.P13552847787849734363

namespace A097804

/-- `A198764(n)+4` -/
def P13552847787849734363.Spec : Prop :=
  ∀ n, P13552847787849734363.a n = A097804 n

theorem P13552847787849734363.correct : P13552847787849734363.Spec := by
  intro n
  simp only [A097804, Nat.add_sub_cancel, A097804.P13552847787849734363.a, A097804.P7234613398924251718.a, A198764, A198764.P9353381281078835859.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097804

/-! ## A097804.P7818993191379520852

`A003948(n+1)+3`
-/

namespace A097804.P7818993191379520852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (n + 1) + 3

end

end A097804.P7818993191379520852

namespace A097804

/-- `A003948(n+1)+3` -/
def P7818993191379520852.Spec : Prop :=
  ∀ n, P7818993191379520852.a n = A097804 n

end A097804

/-! ## A097804.P6736860393267975771

`2*A199214(n)+1`
-/

namespace A097804.P6736860393267975771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199214 n + 1

end

end A097804.P6736860393267975771

namespace A097804

/-- `2*A199214(n)+1` -/
def P6736860393267975771.Spec : Prop :=
  ∀ n, P6736860393267975771.a n = A097804 n

theorem P6736860393267975771.correct : P6736860393267975771.Spec := by
  intro n
  simp only [A097804, Nat.add_sub_cancel, A097804.P6736860393267975771.a, A097804.P7234613398924251718.a, A199214, A199214.P12604043165413767863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097804

/-! ## A097804.P5164645564322028910

`4*A199213(n)+1`
-/

namespace A097804.P5164645564322028910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A199213 n + 1

end

end A097804.P5164645564322028910

namespace A097804

/-- `4*A199213(n)+1` -/
def P5164645564322028910.Spec : Prop :=
  ∀ n, P5164645564322028910.a n = A097804 n

end A097804

/-! ## A097804.P16403864984346353782

`A216491(n)/2+3`
-/

namespace A097804.P16403864984346353782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216491 n : ℚ) / 2 + 3

end

end A097804.P16403864984346353782

namespace A097804

/-- `A216491(n)/2+3` -/
def P16403864984346353782.Spec : Prop :=
  ∀ n, P16403864984346353782.a n = (A097804 n : ℚ)

theorem P16403864984346353782.correct : P16403864984346353782.Spec := by
  intro n
  simp only [A097804, Nat.add_sub_cancel, A097804.P16403864984346353782.a, A097804.P7234613398924251718.a, A216491, A216491.P11113372753551455099.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097804

/-! ## A097804.P17247128055626859103

`2*A198762(n)+5`
-/

namespace A097804.P17247128055626859103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198762 n + 5

end

end A097804.P17247128055626859103

namespace A097804

/-- `2*A198762(n)+5` -/
def P17247128055626859103.Spec : Prop :=
  ∀ n, P17247128055626859103.a n = A097804 n

theorem P17247128055626859103.correct : P17247128055626859103.Spec := by
  intro n
  simp only [A097804, Nat.add_sub_cancel, A097804.P17247128055626859103.a, A097804.P7234613398924251718.a, A198762, A198762.P13273572539260848219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097804

/-! ## A097804.P11613505469232363613

`4*A057651(n)+5`
-/

namespace A097804.P11613505469232363613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A057651 n + 5

end

end A097804.P11613505469232363613

namespace A097804

/-- `4*A057651(n)+5` -/
def P11613505469232363613.Spec : Prop :=
  ∀ n, P11613505469232363613.a n = A097804 n

end A097804

/-! ## A097804.P11793930357480033885

`A117864(2*n+1)+5`
-/

namespace A097804.P11793930357480033885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117864 (2 * n + 1) + 5

end

end A097804.P11793930357480033885

namespace A097804

/-- `A117864(2*n+1)+5` -/
def P11793930357480033885.Spec : Prop :=
  ∀ n, P11793930357480033885.a n = A097804 n

end A097804

/-! ## A097804.P7988100424551873056

`A242328(n+1)+A034474(n)`
-/

namespace A097804.P7988100424551873056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242328 (n + 1) + A034474 n

end

end A097804.P7988100424551873056

namespace A097804

/-- `A242328(n+1)+A034474(n)` -/
def P7988100424551873056.Spec : Prop :=
  ∀ n, P7988100424551873056.a n = A097804 n

theorem P7988100424551873056.correct : P7988100424551873056.Spec := by
  intro n
  simp only [A097804, Nat.add_sub_cancel, A097804.P7988100424551873056.a, A097804.P7234613398924251718.a, A034474, A034474.P1568972853745923564.a, A242328, A242328.P4220867818708811592.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097804

/-! ## A097804.P6566546871526029769

`A038474(∑[n+1])+3`
-/

namespace A097804.P6566546871526029769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038474 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A097804.P6566546871526029769

namespace A097804

/-- `A038474(∑[n+1])+3` -/
def P6566546871526029769.Spec : Prop :=
  ∀ n, P6566546871526029769.a n = A097804 n

end A097804

/-!
# A097805: Number of compositions of n with k parts, T(n, k) = binomial(n-1, k-1) for n, k >= 1 and T(n, 0) = 0^n, triangle read by rows for n >= 0 and 0 <= k <= n.

The programs for A097805, the canonical program `A097805.P1755176267250853107` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097805 has offset 0).

The definition of A097805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097805.P1755176267250853107

`A007318(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A097805

/-- `A007318(n-1)-a(n-1)` -/
def P1755176267250853107.Spec : Prop :=
  ∀ n, P1755176267250853107.a n = A097805 n

theorem P1755176267250853107.correct : P1755176267250853107.Spec := by
  intro n
  simp only [A097805]

end A097805

/-! ## A097805.P7947718822762251460

`a(n-1)-A112467(n-1)` with `a(0)=1`
-/

namespace A097805.P7947718822762251460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A112467 (n - 1)

end

end A097805.P7947718822762251460

namespace A097805

/-- `a(n-1)-A112467(n-1)` -/
def P7947718822762251460.Spec : Prop :=
  ∀ n, P7947718822762251460.a n = A097805 n

end A097805

/-! ## A097805.P18358617384558009547

`ceil(A134059(n-1)/3)-a(n-1)` with `a(0)=1`
-/

namespace A097805.P18358617384558009547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A134059 (n - 1) : ℚ) / 3⌉ - a (n - 1)

end

end A097805.P18358617384558009547

namespace A097805

/-- `ceil(A134059(n-1)/3)-a(n-1)` -/
def P18358617384558009547.Spec : Prop :=
  ∀ n, P18358617384558009547.a n = A097805 n

end A097805

/-! ## A097805.P14209038682350865244

`A071919(n)+A008482(n)`
-/

namespace A097805.P14209038682350865244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A008482 n

end

end A097805.P14209038682350865244

namespace A097805

/-- `A071919(n)+A008482(n)` -/
def P14209038682350865244.Spec : Prop :=
  ∀ n, P14209038682350865244.a n = A097805 n

end A097805

/-! ## A097805.P2110761837059350729

`A177767(n)+A073424(n)`
-/

namespace A097805.P2110761837059350729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177767 n + A073424 n

end

end A097805.P2110761837059350729

namespace A097805

/-- `A177767(n)+A073424(n)` -/
def P2110761837059350729.Spec : Prop :=
  ∀ n, P2110761837059350729.a n = A097805 n

end A097805

/-! ## A097805.P13102934187631912954

`A029635(n)-A007318(n)`
-/

namespace A097805.P13102934187631912954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n - A007318 n

end

end A097805.P13102934187631912954

namespace A097805

/-- `A029635(n)-A007318(n)` -/
def P13102934187631912954.Spec : Prop :=
  ∀ n, P13102934187631912954.a n = A097805 n

theorem P13102934187631912954.correct : P13102934187631912954.Spec := by
  intro n
  simp only [A097805, Nat.add_sub_cancel, A097805.P13102934187631912954.a, A097805.P1755176267250853107.a, A007318, A007318.P302227728145965961.a, A029635, A029635.P14447282759070454877.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097805

/-! ## A097805.P18399364733082695340

`A028326(n)-A029653(n)`
-/

namespace A097805.P18399364733082695340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A029653 n

end

end A097805.P18399364733082695340

namespace A097805

/-- `A028326(n)-A029653(n)` -/
def P18399364733082695340.Spec : Prop :=
  ∀ n, P18399364733082695340.a n = A097805 n

theorem P18399364733082695340.correct : P18399364733082695340.Spec := by
  intro n
  simp only [A097805, Nat.add_sub_cancel, A097805.P18399364733082695340.a, A097805.P1755176267250853107.a, A007318, A007318.P302227728145965961.a, A028326, A028326.P16610217584664895500.a, A029653, A029653.P15740320911286042854.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097805

/-! ## A097805.P9390707461744827813

`A071919(n)-A037012(n)`
-/

namespace A097805.P9390707461744827813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - A037012 n

end

end A097805.P9390707461744827813

namespace A097805

/-- `A071919(n)-A037012(n)` -/
def P9390707461744827813.Spec : Prop :=
  ∀ n, P9390707461744827813.a n = A097805 n

end A097805

/-! ## A097805.P15180122624481889427

`A095660(n)-A029635(n)`
-/

namespace A097805.P15180122624481889427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n - A029635 n

end

end A097805.P15180122624481889427

namespace A097805

/-- `A095660(n)-A029635(n)` -/
def P15180122624481889427.Spec : Prop :=
  ∀ n, P15180122624481889427.a n = A097805 n

theorem P15180122624481889427.correct : P15180122624481889427.Spec := by
  intro n
  simp only [A097805, Nat.add_sub_cancel, A097805.P15180122624481889427.a, A097805.P1755176267250853107.a, A007318, A007318.P302227728145965961.a, A029635, A029635.P14447282759070454877.a, A095660, A095660.P7165856868933140095.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097805

/-! ## A097805.P14239769279320808231

`A095666(n)-A095660(n)`
-/

namespace A097805.P14239769279320808231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 n - A095660 n

end

end A097805.P14239769279320808231

namespace A097805

/-- `A095666(n)-A095660(n)` -/
def P14239769279320808231.Spec : Prop :=
  ∀ n, P14239769279320808231.a n = A097805 n

theorem P14239769279320808231.correct : P14239769279320808231.Spec := by
  intro n
  simp only [A097805, Nat.add_sub_cancel, A097805.P14239769279320808231.a, A097805.P1755176267250853107.a, A007318, A007318.P302227728145965961.a, A095660, A095660.P7165856868933140095.a, A095666, A095666.P3074718101462256715.a, A029635, A029635.P14447282759070454877.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097805

/-! ## A097805.P227931121499002030

`A096940(n)-A095666(n)`
-/

namespace A097805.P227931121499002030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096940 n - A095666 n

end

end A097805.P227931121499002030

namespace A097805

/-- `A096940(n)-A095666(n)` -/
def P227931121499002030.Spec : Prop :=
  ∀ n, P227931121499002030.a n = A097805 n

theorem P227931121499002030.correct : P227931121499002030.Spec := by
  intro n
  simp only [A097805, Nat.add_sub_cancel, A097805.P227931121499002030.a, A097805.P1755176267250853107.a, A007318, A007318.P302227728145965961.a, A095666, A095666.P3074718101462256715.a, A096940, A096940.P1666605663653703973.a, A095660, A095660.P7165856868933140095.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A029635, A029635.P14447282759070454877.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097805

/-! ## A097805.P3281972907817996295

`A096956(n)-A096940(n)`
-/

namespace A097805.P3281972907817996295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 n - A096940 n

end

end A097805.P3281972907817996295

namespace A097805

/-- `A096956(n)-A096940(n)` -/
def P3281972907817996295.Spec : Prop :=
  ∀ n, P3281972907817996295.a n = A097805 n

theorem P3281972907817996295.correct : P3281972907817996295.Spec := by
  intro n
  simp only [A097805, Nat.add_sub_cancel, A097805.P3281972907817996295.a, A097805.P1755176267250853107.a, A007318, A007318.P302227728145965961.a, A096940, A096940.P1666605663653703973.a, A096956, A096956.P5895714996122041335.a, A095666, A095666.P3074718101462256715.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A095660, A095660.P7165856868933140095.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, A029635, A029635.P14447282759070454877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097805

/-! ## A097805.P15159236344525717047

`A135225(n)-A073424(n)`
-/

namespace A097805.P15159236344525717047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135225 n - A073424 n

end

end A097805.P15159236344525717047

namespace A097805

/-- `A135225(n)-A073424(n)` -/
def P15159236344525717047.Spec : Prop :=
  ∀ n, P15159236344525717047.a n = A097805 n

end A097805

/-! ## A097805.P17823261182716247314

`A123110(n)*A135225(n)`
-/

namespace A097805.P17823261182716247314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A135225 n

end

end A097805.P17823261182716247314

namespace A097805

/-- `A123110(n)*A135225(n)` -/
def P17823261182716247314.Spec : Prop :=
  ∀ n, P17823261182716247314.a n = A097805 n

end A097805

/-! ## A097805.P17706847965228378874

`A123110(n)*A177767(n)`
-/

namespace A097805.P17706847965228378874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A177767 n

end

end A097805.P17706847965228378874

namespace A097805

/-- `A123110(n)*A177767(n)` -/
def P17706847965228378874.Spec : Prop :=
  ∀ n, P17706847965228378874.a n = A097805 n

end A097805

/-! ## A097805.P14561631054374165097

`A123110(n)*A193554(n)`
-/

namespace A097805.P14561631054374165097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123110 n * A193554 n

end

end A097805.P14561631054374165097

namespace A097805

/-- `A123110(n)*A193554(n)` -/
def P14561631054374165097.Spec : Prop :=
  ∀ n, P14561631054374165097.a n = A097805 n

end A097805

/-! ## A097805.P7794369373726993836

`A029600(n)%A028326(n)`
-/

namespace A097805.P7794369373726993836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029600 n) (A028326 n)

end

end A097805.P7794369373726993836

namespace A097805

/-- `A029600(n)%A028326(n)` -/
def P7794369373726993836.Spec : Prop :=
  ∀ n, P7794369373726993836.a n = A097805 n

end A097805

/-! ## A097805.P13495234798268929116

`A135225(n)%A029635(n)`
-/

namespace A097805.P13495234798268929116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135225 n) (A029635 n)

end

end A097805.P13495234798268929116

namespace A097805

/-- `A135225(n)%A029635(n)` -/
def P13495234798268929116.Spec : Prop :=
  ∀ n, P13495234798268929116.a n = A097805 n

end A097805

/-! ## A097805.P1403647832847501143

`A177767(n)%A029635(n)`
-/

namespace A097805.P1403647832847501143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177767 n) (A029635 n)

end

end A097805.P1403647832847501143

namespace A097805

/-- `A177767(n)%A029635(n)` -/
def P1403647832847501143.Spec : Prop :=
  ∀ n, P1403647832847501143.a n = A097805 n

end A097805

/-! ## A097805.P2593197055788544569

`A193554(n)%A029635(n)`
-/

namespace A097805.P2593197055788544569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193554 n) (A029635 n)

end

end A097805.P2593197055788544569

namespace A097805

/-- `A193554(n)%A029635(n)` -/
def P2593197055788544569.Spec : Prop :=
  ∀ n, P2593197055788544569.a n = A097805 n

end A097805

/-!
# A097806: Riordan array (1+x, 1) read by rows.

The programs for A097806, the canonical program `A097806.P6713740258379660295` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097806 has offset 0).

The definition of A097806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097806.P16117857501699939670

`A103451(n+1)`
-/

namespace A097806.P16117857501699939670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (n + 1)

end

end A097806.P16117857501699939670

namespace A097806

/-- `A103451(n+1)` -/
def P16117857501699939670.Spec : Prop :=
  ∀ n, P16117857501699939670.a n = A097806 n

end A097806

/-! ## A097806.P6713740258379660295

`floor((A002260(n+1)+2)/(A003056(n)+2))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A097806

/-- `floor((A002260(n+1)+2)/(A003056(n)+2))` -/
def P6713740258379660295.Spec : Prop :=
  ∀ n, P6713740258379660295.a n = A097806 n

theorem P6713740258379660295.correct : P6713740258379660295.Spec := by
  intro n
  simp only [A097806]

end A097806

/-! ## A097806.P12081050078996406886

`char[C(ceil(n/2), 2)+n]`
-/

namespace A097806.P12081050078996406886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A097806.P12081050078996406886

namespace A097806

/-- `char[C(ceil(n/2), 2)+n]` -/
def P12081050078996406886.Spec : Prop :=
  ∀ n, (P12081050078996406886.a n : ℤ) = A097806 n

end A097806

/-! ## A097806.P4157410825787167622

`char[∑[∑[n]%(n+1)-1]]`
-/

namespace A097806.P4157410825787167622
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A097806.P4157410825787167622

namespace A097806

/-- `char[∑[∑[n]%(n+1)-1]]` -/
def P4157410825787167622.Spec : Prop :=
  ∀ n, (P4157410825787167622.a n : ℤ) = A097806 n

end A097806

/-! ## A097806.P530984591695027062

`char[∑[n-gcd(n+1, ∑[n])]]`
-/

namespace A097806.P530984591695027062
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A097806.P530984591695027062

namespace A097806

/-- `char[∑[n-gcd(n+1, ∑[n])]]` -/
def P530984591695027062.Spec : Prop :=
  ∀ n, (P530984591695027062.a n : ℤ) = A097806 n

end A097806

/-! ## A097806.P9173321620690200168

`2-Δ[∪[∑[2*n], comp[2*n]]]`
-/

namespace A097806.P9173321620690200168
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A097806.P9173321620690200168

namespace A097806

/-- `2-Δ[∪[∑[2*n], comp[2*n]]]` -/
def P9173321620690200168.Spec : Prop :=
  ∀ n, P9173321620690200168.a n = A097806 n

end A097806

/-! ## A097806.P16887305646939885315

`Δ[∪[∑[2*n], comp[2*n]]]%2`
-/

namespace A097806.P16887305646939885315
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2

end

end A097806.P16887305646939885315

namespace A097806

/-- `Δ[∪[∑[2*n], comp[2*n]]]%2` -/
def P16887305646939885315.Spec : Prop :=
  ∀ n, P16887305646939885315.a n = A097806 n

end A097806

/-! ## A097806.P11974960657618268823

`and(1, Δ[∪[∑[2*n], comp[2*n]]])`
-/

namespace A097806.P11974960657618268823
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f4 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A097806.P11974960657618268823

namespace A097806

/-- `and(1, Δ[∪[∑[2*n], comp[2*n]]])` -/
def P11974960657618268823.Spec : Prop :=
  ∀ n, P11974960657618268823.a n = A097806 n

end A097806

/-! ## A097806.P13925801097918456310

`abs(A167374(n))`
-/

namespace A097806.P13925801097918456310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A167374 n|

end

end A097806.P13925801097918456310

namespace A097806

/-- `abs(A167374(n))` -/
def P13925801097918456310.Spec : Prop :=
  ∀ n, P13925801097918456310.a n = A097806 n

end A097806

/-! ## A097806.P16034702610688009817

`A101566(n)%2`
-/

namespace A097806.P16034702610688009817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101566 n) 2

end

end A097806.P16034702610688009817

namespace A097806

/-- `A101566(n)%2` -/
def P16034702610688009817.Spec : Prop :=
  ∀ n, P16034702610688009817.a n = A097806 n

end A097806

/-! ## A097806.P11272711367138818480

`A106476(n)%2`
-/

namespace A097806.P11272711367138818480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106476 n) 2

end

end A097806.P11272711367138818480

namespace A097806

/-- `A106476(n)%2` -/
def P11272711367138818480.Spec : Prop :=
  ∀ n, P11272711367138818480.a n = A097806 n

end A097806

/-! ## A097806.P12032487313480610692

`A131108(n)%2`
-/

namespace A097806.P12032487313480610692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131108 n) 2

end

end A097806.P12032487313480610692

namespace A097806

/-- `A131108(n)%2` -/
def P12032487313480610692.Spec : Prop :=
  ∀ n, P12032487313480610692.a n = A097806 n

end A097806

/-! ## A097806.P5226742255073782180

`A131127(n)%2`
-/

namespace A097806.P5226742255073782180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131127 n) 2

end

end A097806.P5226742255073782180

namespace A097806

/-- `A131127(n)%2` -/
def P5226742255073782180.Spec : Prop :=
  ∀ n, P5226742255073782180.a n = A097806 n

end A097806

/-! ## A097806.P3294269830439426031

`A131131(n)%2`
-/

namespace A097806.P3294269830439426031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131131 n) 2

end

end A097806.P3294269830439426031

namespace A097806

/-- `A131131(n)%2` -/
def P3294269830439426031.Spec : Prop :=
  ∀ n, P3294269830439426031.a n = A097806 n

end A097806

/-! ## A097806.P5413443713982245320

`A136157(n)%2`
-/

namespace A097806.P5413443713982245320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136157 n) 2

end

end A097806.P5413443713982245320

namespace A097806

/-- `A136157(n)%2` -/
def P5413443713982245320.Spec : Prop :=
  ∀ n, P5413443713982245320.a n = A097806 n

end A097806

/-! ## A097806.P147186572269090245

`A167366(n)%2`
-/

namespace A097806.P147186572269090245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167366 n) 2

end

end A097806.P147186572269090245

namespace A097806

/-- `A167366(n)%2` -/
def P147186572269090245.Spec : Prop :=
  ∀ n, P147186572269090245.a n = A097806 n

end A097806

/-! ## A097806.P7843383483461763253

`A167666(n)%2`
-/

namespace A097806.P7843383483461763253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167666 n) 2

end

end A097806.P7843383483461763253

namespace A097806

/-- `A167666(n)%2` -/
def P7843383483461763253.Spec : Prop :=
  ∀ n, P7843383483461763253.a n = A097806 n

end A097806

/-! ## A097806.P2134806363184622597

`A200139(n)%2`
-/

namespace A097806.P2134806363184622597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200139 n) 2

end

end A097806.P2134806363184622597

namespace A097806

/-- `A200139(n)%2` -/
def P2134806363184622597.Spec : Prop :=
  ∀ n, P2134806363184622597.a n = A097806 n

end A097806

/-! ## A097806.P541698451606739303

`A136158(n)%3`
-/

namespace A097806.P541698451606739303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136158 n) 3

end

end A097806.P541698451606739303

namespace A097806

/-- `A136158(n)%3` -/
def P541698451606739303.Spec : Prop :=
  ∀ n, P541698451606739303.a n = A097806 n

end A097806

/-! ## A097806.P17514687935722636081

`char[∑[A255563(n)]]`
-/

namespace A097806.P17514687935722636081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A097806.P17514687935722636081

namespace A097806

/-- `char[∑[A255563(n)]]` -/
def P17514687935722636081.Spec : Prop :=
  ∀ n, (P17514687935722636081.a n : ℤ) = A097806 n

end A097806

/-!
# A097807: Riordan array (1/(1+x),1) read by rows.

The programs for A097807, the canonical program `A097807.P14328121779268374373` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097807 has offset 0).

The definition of A097807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097807.P17455925708281482691

`-(-1)^comp[∑[4*n]]`
-/

namespace A097807.P17455925708281482691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A097807.P17455925708281482691

namespace A097807

/-- `-(-1)^comp[∑[4*n]]` -/
def P17455925708281482691.Spec : Prop :=
  ∀ n, P17455925708281482691.a n = A097807 n

end A097807

/-! ## A097807.P13809377867181750588

`and(2, comp[∑[n]]+n)-1`
-/

namespace A097807.P13809377867181750588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1

end

end A097807.P13809377867181750588

namespace A097807

/-- `and(2, comp[∑[n]]+n)-1` -/
def P13809377867181750588.Spec : Prop :=
  ∀ n, P13809377867181750588.a n = A097807 n

end A097807

/-! ## A097807.P17825135705525459823

`1-and(2, ∑[2-char[∑[n]]])`
-/

namespace A097807.P17825135705525459823
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097807.P17825135705525459823

namespace A097807

/-- `1-and(2, ∑[2-char[∑[n]]])` -/
def P17825135705525459823.Spec : Prop :=
  ∀ n, P17825135705525459823.a n = A097807 n

end A097807

/-! ## A097807.P17974840505864763595

`or(comp[∑[n]]+n, -3)+2`
-/

namespace A097807.P17974840505864763595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) (-3) + 2

end

end A097807.P17974840505864763595

namespace A097807

/-- `or(comp[∑[n]]+n, -3)+2` -/
def P17974840505864763595.Spec : Prop :=
  ∀ n, P17974840505864763595.a n = A097807 n

end A097807

/-! ## A097807.P13260550378752600873

`(-1)^(comp[4*C(n, 2)]+1)`
-/

namespace A097807.P13260550378752600873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A097807.P13260550378752600873

namespace A097807

/-- `(-1)^(comp[4*C(n, 2)]+1)` -/
def P13260550378752600873.Spec : Prop :=
  ∀ n, P13260550378752600873.a n = A097807 n

end A097807

/-! ## A097807.P13906983811169448029

`(-1)^log2(gcd(2, comp[∑[4*n]]))`
-/

namespace A097807.P13906983811169448029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-1 : ℝ) ^ (Real.logb 2 (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ))

end

end A097807.P13906983811169448029

namespace A097807

/-- `(-1)^log2(gcd(2, comp[∑[4*n]]))` -/
def P13906983811169448029.Spec : Prop :=
  ∀ n, P13906983811169448029.a n = (A097807 n : ℝ)

end A097807

/-! ## A097807.P16873506927960071000

`(-1)^C(∑[2-char[∑[n]]], 2)`
-/

namespace A097807.P16873506927960071000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A097807.P16873506927960071000

namespace A097807

/-- `(-1)^C(∑[2-char[∑[n]]], 2)` -/
def P16873506927960071000.Spec : Prop :=
  ∀ n, P16873506927960071000.a n = A097807 n

end A097807

/-! ## A097807.P7210481527490293239

`2*comp[∑[4*n]]%2-1`
-/

namespace A097807.P7210481527490293239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) : ℕ) : ℤ) - 1

end

end A097807.P7210481527490293239

namespace A097807

/-- `2*comp[∑[4*n]]%2-1` -/
def P7210481527490293239.Spec : Prop :=
  ∀ n, P7210481527490293239.a n = A097807 n

end A097807

/-! ## A097807.P14753248409835110536

`2*and(1, comp[∑[4*n]])-1`
-/

namespace A097807.P14753248409835110536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - 1

end

end A097807.P14753248409835110536

namespace A097807

/-- `2*and(1, comp[∑[4*n]])-1` -/
def P14753248409835110536.Spec : Prop :=
  ∀ n, P14753248409835110536.a n = A097807 n

end A097807

/-! ## A097807.P13214840410459755903

`or(1, comp[∑[n]]+n)%4-2`
-/

namespace A097807.P13214840410459755903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 4 : ℕ) : ℤ) - 2

end

end A097807.P13214840410459755903

namespace A097807

/-- `or(1, comp[∑[n]]+n)%4-2` -/
def P13214840410459755903.Spec : Prop :=
  ∀ n, P13214840410459755903.a n = A097807 n

end A097807

/-! ## A097807.P3417518356416843311

`(-1)^∑[∪[2*n+1, n²]]`
-/

namespace A097807.P3417518356416843311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097807.P3417518356416843311

namespace A097807

/-- `(-1)^∑[∪[2*n+1, n²]]` -/
def P3417518356416843311.Spec : Prop :=
  ∀ n, P3417518356416843311.a n = A097807 n

end A097807

/-! ## A097807.P16973715888098132259

`∏[(-1)^∪[2*n+1, n²]]`
-/

namespace A097807.P16973715888098132259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A097807.P16973715888098132259

namespace A097807

/-- `∏[(-1)^∪[2*n+1, n²]]` -/
def P16973715888098132259.Spec : Prop :=
  ∀ n, P16973715888098132259.a n = A097807 n

end A097807

/-! ## A097807.P18248156995551798651

`(-a(n-1))^∪[2*n+1, n²]` with `a(0)=1`
-/

namespace A097807.P18248156995551798651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (-a (n - 1)) ^ SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A097807.P18248156995551798651

namespace A097807

/-- `(-a(n-1))^∪[2*n+1, n²]` -/
def P18248156995551798651.Spec : Prop :=
  ∀ n, P18248156995551798651.a n = A097807 n

end A097807

/-! ## A097807.P13500392060430955250

`A248810(n)%2`
-/

namespace A097807.P13500392060430955250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248810 n) 2

end

end A097807.P13500392060430955250

namespace A097807

/-- `A248810(n)%2` -/
def P13500392060430955250.Spec : Prop :=
  ∀ n, P13500392060430955250.a n = A097807 n

end A097807

/-! ## A097807.P4374028298796765634

`or(1, A122750(n))`
-/

namespace A097807.P4374028298796765634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122750 n)

end

end A097807.P4374028298796765634

namespace A097807

/-- `or(1, A122750(n))` -/
def P4374028298796765634.Spec : Prop :=
  ∀ n, P4374028298796765634.a n = A097807 n

end A097807

/-! ## A097807.P4591845265409999646

`lcm(2, A369736(n))-1`
-/

namespace A097807.P4591845265409999646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A369736 n) : ℤ) - 1

end

end A097807.P4591845265409999646

namespace A097807

/-- `lcm(2, A369736(n))-1` -/
def P4591845265409999646.Spec : Prop :=
  ∀ n, P4591845265409999646.a n = A097807 n

end A097807

/-! ## A097807.P17607288333577763385

`2*A128174(n+1)-1`
-/

namespace A097807.P17607288333577763385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128174 (n + 1) - 1

end

end A097807.P17607288333577763385

namespace A097807

/-- `2*A128174(n+1)-1` -/
def P17607288333577763385.Spec : Prop :=
  ∀ n, P17607288333577763385.a n = A097807 n

end A097807

/-! ## A097807.P12935693306376661742

`3-2*A131406(n+1)`
-/

namespace A097807.P12935693306376661742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A131406 (n + 1)

end

end A097807.P12935693306376661742

namespace A097807

/-- `3-2*A131406(n+1)` -/
def P12935693306376661742.Spec : Prop :=
  ∀ n, P12935693306376661742.a n = A097807 n

end A097807

/-! ## A097807.P2578690615289297026

`(-1)^(A004736(n+1)+1)`
-/

namespace A097807.P2578690615289297026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A004736 (n + 1) + 1 : ℤ)

end

end A097807.P2578690615289297026

namespace A097807

/-- `(-1)^(A004736(n+1)+1)` -/
def P2578690615289297026.Spec : Prop :=
  ∀ n, P2578690615289297026.a n = (A097807 n : ℚ)

end A097807

/-! ## A097807.P14328121779268374373

`A009531(A099375(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097807

/-- `A009531(A099375(n))` -/
def P14328121779268374373.Spec : Prop :=
  ∀ n, P14328121779268374373.a n = A097807 n

theorem P14328121779268374373.correct : P14328121779268374373.Spec := by
  intro n
  simp only [A097807]

end A097807

/-!
# A097808: Riordan array ((1+2x)/(1+x)^2, 1/(1+x)) read by rows.

The programs for A097808, the canonical program `A097808.P4376253910493636811` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097808 has offset 0).

The definition of A097808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097808.P15131133211821995829

`A112466(comp[∑[n]])`
-/

namespace A097808.P15131133211821995829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112466 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A097808.P15131133211821995829

namespace A097808

/-- `A112466(comp[∑[n]])` -/
def P15131133211821995829.Spec : Prop :=
  ∀ n, P15131133211821995829.a n = A097808 n

end A097808

/-! ## A097808.P4376253910493636811

`A097807(n)*A156644(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A097808

/-- `A097807(n)*A156644(n)` -/
def P4376253910493636811.Spec : Prop :=
  ∀ n, P4376253910493636811.a n = A097808 n

theorem P4376253910493636811.correct : P4376253910493636811.Spec := by
  intro n
  simp only [A097808]

end A097808

/-! ## A097808.P7595891810942806915

`A105810(n)+1-∑[A130595(n)]`
-/

namespace A097808.P7595891810942806915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105810 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097808.P7595891810942806915

namespace A097808

/-- `A105810(n)+1-∑[A130595(n)]` -/
def P7595891810942806915.Spec : Prop :=
  ∀ n, P7595891810942806915.a n = A097808 n

theorem P7595891810942806915.correct : P7595891810942806915.Spec := by
  intro n
  simp only [A097808, Nat.add_sub_cancel, A097808.P7595891810942806915.f1, A097808.P7595891810942806915.a, A097808.P4376253910493636811.a, A097807, A097807.P14328121779268374373.a, A105810, A105810.P17803328996045714001.f1, A105810.P17803328996045714001.a, A130595, A130595.P3475276304996858965.a, A156644, A156644.P8680727843130991433.a, A007318, A007318.P302227728145965961.a, A009531, A009531.P14285492072244400176.a, A051601, A051601.P16211897946955376091.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A099375, A099375.P13700148065993022910.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A010054, A010054.P18347828677204923252.a, A028276, A028276.P15109551320821074576.a, A028327, A028327.P9835590816428302231.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A005369, A005369.P10796159359873341658.a, A014430, A014430.P11701806938926061192.a, A028263, A028263.P3177418721069471964.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A097808

/-! ## A097808.P2980428487825286341

`A128585(n+1)/A104763(n+1)`
-/

namespace A097808.P2980428487825286341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128585 (n + 1) : ℚ) / (A104763 (n + 1) : ℚ)

end

end A097808.P2980428487825286341

namespace A097808

/-- `A128585(n+1)/A104763(n+1)` -/
def P2980428487825286341.Spec : Prop :=
  ∀ n, P2980428487825286341.a n = (A097808 n : ℚ)

end A097808

/-! ## A097808.P7950333689861651786

`A128065(n+1)/A140756(n+1)`
-/

namespace A097808.P7950333689861651786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128065 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A097808.P7950333689861651786

namespace A097808

/-- `A128065(n+1)/A140756(n+1)` -/
def P7950333689861651786.Spec : Prop :=
  ∀ n, P7950333689861651786.a n = (A097808 n : ℚ)

end A097808

/-! ## A097808.P10415701528033741882

`A033999(A025581(n))*A156644(n)`
-/

namespace A097808.P10415701528033741882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A156644 n

end

end A097808.P10415701528033741882

namespace A097808

/-- `A033999(A025581(n))*A156644(n)` -/
def P10415701528033741882.Spec : Prop :=
  ∀ n, P10415701528033741882.a n = A097808 n

end A097808

/-! ## A097808.P2652683319581339187

`A112466(A014132(n+1))^A019426(2*n)`
-/

namespace A097808.P2652683319581339187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112466 (A014132 (n + 1)).toNat : ℚ) ^ (A019426 (2 * n) : ℤ)

end

end A097808.P2652683319581339187

namespace A097808

/-- `A112466(A014132(n+1))^A019426(2*n)` -/
def P2652683319581339187.Spec : Prop :=
  ∀ n, P2652683319581339187.a n = (A097808 n : ℚ)

end A097808

/-! ## A097808.P891847211206985811

`A130595(n)+A130595(n+1)%A117852(n)`
-/

namespace A097808.P891847211206985811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n + Int.tmod (A130595 (n + 1)) (A117852 n)

end

end A097808.P891847211206985811

namespace A097808

/-- `A130595(n)+A130595(n+1)%A117852(n)` -/
def P891847211206985811.Spec : Prop :=
  ∀ n, P891847211206985811.a n = A097808 n

end A097808

/-! ## A097808.P7371845703088619090

`2*A130595(n)-A130595(A014132(n+1))`
-/

namespace A097808.P7371845703088619090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130595 n - A130595 (A014132 (n + 1)).toNat

end

end A097808.P7371845703088619090

namespace A097808

/-- `2*A130595(n)-A130595(A014132(n+1))` -/
def P7371845703088619090.Spec : Prop :=
  ∀ n, P7371845703088619090.a n = A097808 n

end A097808

/-! ## A097808.P10349613655873735297

`A156644(n)*A242179(A089633(n))`
-/

namespace A097808.P10349613655873735297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156644 n * A242179 (A089633 n).toNat

end

end A097808.P10349613655873735297

namespace A097808

/-- `A156644(n)*A242179(A089633(n))` -/
def P10349613655873735297.Spec : Prop :=
  ∀ n, P10349613655873735297.a n = A097808 n

end A097808

/-!
# A097809: a(n) = 5*2^n - 2*n - 4.

The programs for A097809, the canonical program `A097809.P16351375152789980644` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097809 has offset 0).

The definition of A097809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n-2*n-4` (program `A097809.P16351375152789980644`, by `A097809.P16351375152789980644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097809.P15211145022225779778

`5*2^n-2*(n+2)`
-/

namespace A097809.P15211145022225779778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ n : ℤ) - (2 * (n + 2) : ℤ)

end

end A097809.P15211145022225779778

namespace A097809

/-- `5*2^n-2*(n+2)` -/
def P15211145022225779778.Spec : Prop :=
  ∀ n, P15211145022225779778.a n = A097809 n

theorem P15211145022225779778.correct : P15211145022225779778.Spec := by
  intro n
  simp only [A097809, Nat.add_sub_cancel, A097809.P15211145022225779778.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097809

/-! ## A097809.P16351375152789980644

`5*2^n-2*n-4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097809

/-- `5*2^n-2*n-4` -/
def P16351375152789980644.Spec : Prop :=
  ∀ n, P16351375152789980644.a n = A097809 n

theorem P16351375152789980644.correct : P16351375152789980644.Spec := by
  intro n
  simp only [A097809]

end A097809

/-! ## A097809.P3278775701298244023

`2*(a(n-1)+n)` with `a(0)=1`
-/

namespace A097809.P3278775701298244023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + n)

end

end A097809.P3278775701298244023

namespace A097809

/-- `2*(a(n-1)+n)` -/
def P3278775701298244023.Spec : Prop :=
  ∀ n, (P3278775701298244023.a n : ℤ) = A097809 n

theorem P3278775701298244023.correct : P3278775701298244023.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097809, Nat.add_sub_cancel, A097809.P3278775701298244023.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097809, Nat.add_sub_cancel, A097809.P3278775701298244023.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097809

/-! ## A097809.P7150323307421165317

`∑[ogf((1+x^2)/(1-3x+2x^2))]`
-/

namespace A097809.P7150323307421165317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097809.P7150323307421165317

namespace A097809

/-- `∑[ogf((1+x^2)/(1-3x+2x^2))]` -/
def P7150323307421165317.Spec : Prop :=
  ∀ n, P7150323307421165317.a n = A097809 n

end A097809

/-! ## A097809.P10664661534223876811

`ogf((1+x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A097809.P10664661534223876811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -4, 5, -2] n

end

end A097809.P10664661534223876811

namespace A097809

/-- `ogf((1+x^2)/(1-4x+5x^2-2x^3))` -/
def P10664661534223876811.Spec : Prop :=
  ∀ n, P10664661534223876811.a n = A097809 n

end A097809

/-! ## A097809.P11330302691164557251

`2*(n-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097809.P11330302691164557251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - (-a (n - 1)))

end

end A097809.P11330302691164557251

namespace A097809

/-- `2*(n-floor(-a(n-1)))` -/
def P11330302691164557251.Spec : Prop :=
  ∀ n, P11330302691164557251.a n = A097809 n

theorem P11330302691164557251.correct : P11330302691164557251.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097809, Nat.add_sub_cancel, A097809.P11330302691164557251.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097809, Nat.add_sub_cancel, A097809.P11330302691164557251.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097809

/-! ## A097809.P12492153486710809977

`2*(n-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A097809.P12492153486710809977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - (-a (n - 1)))

end

end A097809.P12492153486710809977

namespace A097809

/-- `2*(n-ceil(-a(n-1)))` -/
def P12492153486710809977.Spec : Prop :=
  ∀ n, P12492153486710809977.a n = A097809 n

theorem P12492153486710809977.correct : P12492153486710809977.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097809, Nat.add_sub_cancel, A097809.P12492153486710809977.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097809, Nat.add_sub_cancel, A097809.P12492153486710809977.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097809

/-! ## A097809.P1473542399918311649

`2*(n-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A097809.P1473542399918311649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - (-a (n - 1)))

end

end A097809.P1473542399918311649

namespace A097809

/-- `2*(n-round(-a(n-1)))` -/
def P1473542399918311649.Spec : Prop :=
  ∀ n, P1473542399918311649.a n = A097809 n

theorem P1473542399918311649.correct : P1473542399918311649.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097809, Nat.add_sub_cancel, A097809.P1473542399918311649.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097809, Nat.add_sub_cancel, A097809.P1473542399918311649.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097809

/-! ## A097809.P1561398408947029495

`(a(n-1)+n)/(1-1/2)` with `a(0)=1`
-/

namespace A097809.P1561398408947029495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℚ)) / (1 - (1 : ℚ) / 2)

end

end A097809.P1561398408947029495

namespace A097809

/-- `(a(n-1)+n)/(1-1/2)` -/
def P1561398408947029495.Spec : Prop :=
  ∀ n, P1561398408947029495.a n = (A097809 n : ℚ)

theorem P1561398408947029495.correct : P1561398408947029495.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097809, Nat.add_sub_cancel, A097809.P1561398408947029495.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097809, Nat.add_sub_cancel, A097809.P1561398408947029495.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097809

/-! ## A097809.P4065243133453790781

`2*(2*n-(n-a(n-1)))` with `a(0)=1`
-/

namespace A097809.P4065243133453790781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n : ℤ) - ((n : ℤ) - a (n - 1)))

end

end A097809.P4065243133453790781

namespace A097809

/-- `2*(2*n-(n-a(n-1)))` -/
def P4065243133453790781.Spec : Prop :=
  ∀ n, P4065243133453790781.a n = A097809 n

theorem P4065243133453790781.correct : P4065243133453790781.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097809, Nat.add_sub_cancel, A097809.P4065243133453790781.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097809, Nat.add_sub_cancel, A097809.P4065243133453790781.a, A097809.P16351375152789980644.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097809

/-! ## A097809.P10788698414229179201

`∑[a(n-1)+a(n-1)+2]` with `a(0)=1, a(1)=3`
-/

namespace A097809.P10788698414229179201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097809.P10788698414229179201

namespace A097809

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P10788698414229179201.Spec : Prop :=
  ∀ n, (P10788698414229179201.a n : ℤ) = A097809 n

end A097809

/-! ## A097809.P11748092930516853270

`record[a(n-2)+a(n-2)+n]` with `a(0)=1, a(1)=0`
-/

namespace A097809.P11748092930516853270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097809.P11748092930516853270

namespace A097809

/-- `record[a(n-2)+a(n-2)+n]` -/
def P11748092930516853270.Spec : Prop :=
  ∀ n, (P11748092930516853270.a n : ℤ) = A097809 n

end A097809

/-! ## A097809.P112077397221164284

`∑[∑[A084215(n)]]`
-/

namespace A097809.P112077397221164284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097809.P112077397221164284

namespace A097809

/-- `∑[∑[A084215(n)]]` -/
def P112077397221164284.Spec : Prop :=
  ∀ n, P112077397221164284.a n = A097809 n

end A097809

/-! ## A097809.P2367902510719680277

`∑[A131051(n+1)]`
-/

namespace A097809.P2367902510719680277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097809.P2367902510719680277

namespace A097809

/-- `∑[A131051(n+1)]` -/
def P2367902510719680277.Spec : Prop :=
  ∀ n, P2367902510719680277.a n = A097809 n

end A097809

/-! ## A097809.P14093482521956579082

`∑[A054135(n+1)-1]`
-/

namespace A097809.P14093482521956579082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054135 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097809.P14093482521956579082

namespace A097809

/-- `∑[A054135(n+1)-1]` -/
def P14093482521956579082.Spec : Prop :=
  ∀ n, P14093482521956579082.a n = A097809 n

end A097809

/-! ## A097809.P2517852119718904430

`A131064(n+1)/2`
-/

namespace A097809.P2517852119718904430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131064 (n + 1) : ℚ) / 2

end

end A097809.P2517852119718904430

namespace A097809

/-- `A131064(n+1)/2` -/
def P2517852119718904430.Spec : Prop :=
  ∀ n, P2517852119718904430.a n = (A097809 n : ℚ)

theorem P2517852119718904430.correct : P2517852119718904430.Spec := by
  intro n
  simp only [A097809, Nat.add_sub_cancel, A097809.P2517852119718904430.a, A097809.P16351375152789980644.a, A131064, A131064.P1020797284623814673.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097809

/-! ## A097809.P6490729662571415096

`(A126284(n+1)+1)/2`
-/

namespace A097809.P6490729662571415096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126284 (n + 1) + 1 : ℚ) / 2

end

end A097809.P6490729662571415096

namespace A097809

/-- `(A126284(n+1)+1)/2` -/
def P6490729662571415096.Spec : Prop :=
  ∀ n, P6490729662571415096.a n = (A097809 n : ℚ)

theorem P6490729662571415096.correct : P6490729662571415096.Spec := by
  intro n
  simp only [A097809, Nat.add_sub_cancel, A097809.P6490729662571415096.a, A097809.P16351375152789980644.a, A126284, A126284.P7116744339461656326.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A097809

/-! ## A097809.P10322174182320922506

`(A247904(n)+n+1)/2`
-/

namespace A097809.P10322174182320922506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247904 n + (n + 1 : ℤ) : ℚ) / 2

end

end A097809.P10322174182320922506

namespace A097809

/-- `(A247904(n)+n+1)/2` -/
def P10322174182320922506.Spec : Prop :=
  ∀ n, P10322174182320922506.a n = (A097809 n : ℚ)

theorem P10322174182320922506.correct : P10322174182320922506.Spec := by
  intro n
  simp only [A097809, Nat.add_sub_cancel, A097809.P10322174182320922506.a, A097809.P16351375152789980644.a, A247904, A247904.P15407429314126461153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097809

/-!
# A097810: a(n) = 7*2^n - 3*n - 6.

The programs for A097810, the canonical program `A097810.P18084708850288509871` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097810 has offset 0).

The definition of A097810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n-3*n-6` (program `A097810.P18084708850288509871`, by `A097810.P18084708850288509871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097810.P18084708850288509871

`7*2^n-3*n-6`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097810

/-- `7*2^n-3*n-6` -/
def P18084708850288509871.Spec : Prop :=
  ∀ n, P18084708850288509871.a n = A097810 n

theorem P18084708850288509871.correct : P18084708850288509871.Spec := by
  intro n
  simp only [A097810]

end A097810

/-! ## A097810.P12839941957868202602

`A131068(n+1)/2`
-/

namespace A097810.P12839941957868202602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131068 (n + 1) : ℚ) / 2

end

end A097810.P12839941957868202602

namespace A097810

/-- `A131068(n+1)/2` -/
def P12839941957868202602.Spec : Prop :=
  ∀ n, P12839941957868202602.a n = (A097810 n : ℚ)

theorem P12839941957868202602.correct : P12839941957868202602.Spec := by
  intro n
  simp only [A097810, Nat.add_sub_cancel, A097810.P12839941957868202602.a, A097810.P18084708850288509871.a, A131068, A131068.P10384673899537543651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097810

/-! ## A097810.P14386708459722461647

`∑[ogf((1+x+x^2)/(1-3x+2x^2))]`
-/

namespace A097810.P14386708459722461647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P14386708459722461647

namespace A097810

/-- `∑[ogf((1+x+x^2)/(1-3x+2x^2))]` -/
def P14386708459722461647.Spec : Prop :=
  ∀ n, P14386708459722461647.a n = A097810 n

end A097810

/-! ## A097810.P16222371623578659254

`ogf((1+x+x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A097810.P16222371623578659254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -4, 5, -2] n

end

end A097810.P16222371623578659254

namespace A097810

/-- `ogf((1+x+x^2)/(1-4x+5x^2-2x^3))` -/
def P16222371623578659254.Spec : Prop :=
  ∀ n, P16222371623578659254.a n = A097810 n

end A097810

/-! ## A097810.P9145636105671046284

`∑[2*a(n-1)+3]` with `a(0)=1, a(1)=4`
-/

namespace A097810.P9145636105671046284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P9145636105671046284

namespace A097810

/-- `∑[2*a(n-1)+3]` -/
def P9145636105671046284.Spec : Prop :=
  ∀ n, (P9145636105671046284.a n : ℤ) = A097810 n

end A097810

/-! ## A097810.P1778042670835649427

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A097810.P1778042670835649427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P1778042670835649427

namespace A097810

/-- `∑[∑[2*a(n-1)]]` -/
def P1778042670835649427.Spec : Prop :=
  ∀ n, (P1778042670835649427.a n : ℤ) = A097810 n

end A097810

/-! ## A097810.P9246144235365793252

`∑[a(n-1)+a(n-1)+3]` with `a(0)=1, a(1)=4`
-/

namespace A097810.P9246144235365793252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P9246144235365793252

namespace A097810

/-- `∑[a(n-1)+a(n-1)+3]` -/
def P9246144235365793252.Spec : Prop :=
  ∀ n, (P9246144235365793252.a n : ℤ) = A097810 n

end A097810

/-! ## A097810.P1747089171104382592

`∑[A053208(n)+1]`
-/

namespace A097810.P1747089171104382592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053208 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P1747089171104382592

namespace A097810

/-- `∑[A053208(n)+1]` -/
def P1747089171104382592.Spec : Prop :=
  ∀ n, P1747089171104382592.a n = A097810 n

end A097810

/-! ## A097810.P6217369515342468859

`∑[∑[A125176(n+1)]]`
-/

namespace A097810.P6217369515342468859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P6217369515342468859

namespace A097810

/-- `∑[∑[A125176(n+1)]]` -/
def P6217369515342468859.Spec : Prop :=
  ∀ n, P6217369515342468859.a n = A097810 n

end A097810

/-! ## A097810.P16653208301676215791

`∑[A026622(n+1)-1]`
-/

namespace A097810.P16653208301676215791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026622 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P16653208301676215791

namespace A097810

/-- `∑[A026622(n+1)-1]` -/
def P16653208301676215791.Spec : Prop :=
  ∀ n, P16653208301676215791.a n = A097810 n

end A097810

/-! ## A097810.P2174633741532951910

`∑[A267604(n+1)-2]`
-/

namespace A097810.P2174633741532951910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267604 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097810.P2174633741532951910

namespace A097810

/-- `∑[A267604(n+1)-2]` -/
def P2174633741532951910.Spec : Prop :=
  ∀ n, P2174633741532951910.a n = A097810 n

end A097810

/-! ## A097810.P12788491145661992993

`A387391(n)%A176448(n)`
-/

namespace A097810.P12788491145661992993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387391 n) (A176448 n)

end

end A097810.P12788491145661992993

namespace A097810

/-- `A387391(n)%A176448(n)` -/
def P12788491145661992993.Spec : Prop :=
  ∀ n, P12788491145661992993.a n = A097810 n

end A097810

/-!
# A097811: Numbers n such that n^3 is the sum of three or more consecutive positive cubes.

The programs for A097811, there is no canonical definition to state claims against.
-/

/-! ## A097811.P6596167475736679316

`A131643(n+1)^(1/3)`
-/

namespace A097811.P6596167475736679316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131643 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A097811.P6596167475736679316

/-! ## A097811.P8310096793026423109

`root(A131643(n+1), 3)`
-/

namespace A097811.P8310096793026423109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A131643 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A097811.P8310096793026423109

/-! ## A097811.P12373668465238222954

`lt[1, A307609(n+1)]+1`
-/

namespace A097811.P12373668465238222954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097811.P12373668465238222954

/-! ## A097811.P17634631218741059586

`lt[1, A307609(A028310(n))]`
-/

namespace A097811.P17634631218741059586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307609 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097811.P17634631218741059586

/-! ## A097811.P16518121363014366278

`A153152(lt[1, A307609(n+1)])`
-/

namespace A097811.P16518121363014366278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A097811.P16518121363014366278

/-!
# A097812: Numbers n such that n^2 is the sum of two or more consecutive positive squares.

The programs for A097812, there is no canonical definition to state claims against.
-/

/-! ## A097812.P8135662685478057400

`sqrt(A151557(n+1))`
-/

namespace A097812.P8135662685478057400
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151557 (n + 1) : ℝ)

end

end A097812.P8135662685478057400

/-! ## A097812.P4120707825086036666

`root(A151557(n+1), 2%A027578(n))`
-/

namespace A097812.P4120707825086036666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151557 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A027578 n) : ℝ))

end

end A097812.P4120707825086036666

/-! ## A097812.P3896591154449945256

`A000027(root(A151557(n+1), 4)²)`
-/

namespace A097812.P3896591154449945256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (((A151557 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)).toNat

end

end A097812.P3896591154449945256

/-! ## A097812.P5186702574163206390

`root(A151557(n+1), and(2, A180274(n+1)))`
-/

namespace A097812.P5186702574163206390
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151557 (n + 1) : ℝ) ^ (1 / (Int.land 2 (A180274 (n + 1)) : ℝ))

end

end A097812.P5186702574163206390

/-! ## A097812.P15304486840069246568

`root(A151557(n+1), ratio[A000079(n)])`
-/

namespace A097812.P15304486840069246568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151557 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A097812.P15304486840069246568

/-!
# A097813: a(n) = 3*2^n - 2*n - 2.

The programs for A097813, the canonical program `A097813.P9463148433829689973` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097813 has offset 0).

The definition of A097813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n-2*n-2` (program `A097813.P9463148433829689973`, by `A097813.P9463148433829689973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097813.P12445872994040230993

`3*2^n-2*(n+1)`
-/

namespace A097813.P12445872994040230993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - (2 * (n + 1) : ℤ)

end

end A097813.P12445872994040230993

namespace A097813

/-- `3*2^n-2*(n+1)` -/
def P12445872994040230993.Spec : Prop :=
  ∀ n, P12445872994040230993.a n = A097813 n

theorem P12445872994040230993.correct : P12445872994040230993.Spec := by
  intro n
  simp only [A097813, Nat.add_sub_cancel, A097813.P12445872994040230993.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A097813

/-! ## A097813.P9463148433829689973

`3*2^n-2*n-2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097813

/-- `3*2^n-2*n-2` -/
def P9463148433829689973.Spec : Prop :=
  ∀ n, P9463148433829689973.a n = A097813 n

theorem P9463148433829689973.correct : P9463148433829689973.Spec := by
  intro n
  simp only [A097813]

end A097813

/-! ## A097813.P15065914891193558499

`∑[ogf((1-2x+3x^2)/(1-3x+2x^2))]`
-/

namespace A097813.P15065914891193558499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097813.P15065914891193558499

namespace A097813

/-- `∑[ogf((1-2x+3x^2)/(1-3x+2x^2))]` -/
def P15065914891193558499.Spec : Prop :=
  ∀ n, P15065914891193558499.a n = A097813 n

end A097813

/-! ## A097813.P18066087366941597253

`ogf((1-2x+3x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A097813.P18066087366941597253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 3] [1, -4, 5, -2] n

end

end A097813.P18066087366941597253

namespace A097813

/-- `ogf((1-2x+3x^2)/(1-4x+5x^2-2x^3))` -/
def P18066087366941597253.Spec : Prop :=
  ∀ n, P18066087366941597253.a n = A097813 n

end A097813

/-! ## A097813.P420009387596061881

`∑[2*(a(n-1)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A097813.P420009387596061881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097813.P420009387596061881

namespace A097813

/-- `∑[2*(a(n-1)+1)]` -/
def P420009387596061881.Spec : Prop :=
  ∀ n, (P420009387596061881.a n : ℤ) = A097813 n

end A097813

/-! ## A097813.P8578218248614034307

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A097813.P8578218248614034307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097813.P8578218248614034307

namespace A097813

/-- `∑[∑[2*a(n-1)]]` -/
def P8578218248614034307.Spec : Prop :=
  ∀ n, (P8578218248614034307.a n : ℤ) = A097813 n

end A097813

/-! ## A097813.P664082837777212512

`2*(a(n-1)-1+n)` with `a(0)=1`
-/

namespace A097813.P664082837777212512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - 1 + (n : ℤ))

end

end A097813.P664082837777212512

namespace A097813

/-- `2*(a(n-1)-1+n)` -/
def P664082837777212512.Spec : Prop :=
  ∀ n, P664082837777212512.a n = A097813 n

theorem P664082837777212512.correct : P664082837777212512.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097813, Nat.add_sub_cancel, A097813.P664082837777212512.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097813, Nat.add_sub_cancel, A097813.P664082837777212512.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097813

/-! ## A097813.P11260797054190755425

`2*(n-(1-a(n-1)))` with `a(0)=1`
-/

namespace A097813.P11260797054190755425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) - (1 - a (n - 1)))

end

end A097813.P11260797054190755425

namespace A097813

/-- `2*(n-(1-a(n-1)))` -/
def P11260797054190755425.Spec : Prop :=
  ∀ n, P11260797054190755425.a n = A097813 n

theorem P11260797054190755425.correct : P11260797054190755425.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097813, Nat.add_sub_cancel, A097813.P11260797054190755425.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097813, Nat.add_sub_cancel, A097813.P11260797054190755425.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097813

/-! ## A097813.P6586359378972930241

`∑[a(n-1)+a(n-1)+2]` with `a(0)=1, a(1)=1`
-/

namespace A097813.P6586359378972930241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097813.P6586359378972930241

namespace A097813

/-- `∑[a(n-1)+a(n-1)+2]` -/
def P6586359378972930241.Spec : Prop :=
  ∀ n, (P6586359378972930241.a n : ℤ) = A097813 n

end A097813

/-! ## A097813.P12892096326456680216

`(1-(a(n-1)+n))/(1/2-1)` with `a(0)=1`
-/

namespace A097813.P12892096326456680216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (a (n - 1) + (n : ℚ))) / ((1 : ℚ) / 2 - 1)

end

end A097813.P12892096326456680216

namespace A097813

/-- `(1-(a(n-1)+n))/(1/2-1)` -/
def P12892096326456680216.Spec : Prop :=
  ∀ n, P12892096326456680216.a n = (A097813 n : ℚ)

theorem P12892096326456680216.correct : P12892096326456680216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097813, Nat.add_sub_cancel, A097813.P12892096326456680216.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097813, Nat.add_sub_cancel, A097813.P12892096326456680216.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097813

/-! ## A097813.P14310499083171917211

`(1-a(n-1)-n)/(1/2-1)` with `a(0)=1`
-/

namespace A097813.P14310499083171917211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (1 - a (n - 1) - (n : ℚ)) / ((1 : ℚ) / 2 - 1)

end

end A097813.P14310499083171917211

namespace A097813

/-- `(1-a(n-1)-n)/(1/2-1)` -/
def P14310499083171917211.Spec : Prop :=
  ∀ n, P14310499083171917211.a n = (A097813 n : ℚ)

theorem P14310499083171917211.correct : P14310499083171917211.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097813, Nat.add_sub_cancel, A097813.P14310499083171917211.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097813, Nat.add_sub_cancel, A097813.P14310499083171917211.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097813

/-! ## A097813.P4839896411340841560

`floor(a(n-1)-2+a(n-1)+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097813.P4839896411340841560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 + (a (n - 1) + (n : ℤ) + (n : ℤ))

end

end A097813.P4839896411340841560

namespace A097813

/-- `floor(a(n-1)-2+a(n-1)+n+n)` -/
def P4839896411340841560.Spec : Prop :=
  ∀ n, P4839896411340841560.a n = A097813 n

theorem P4839896411340841560.correct : P4839896411340841560.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097813, Nat.add_sub_cancel, A097813.P4839896411340841560.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097813, Nat.add_sub_cancel, A097813.P4839896411340841560.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097813

/-! ## A097813.P12963412079636043661

`floor(a(n-1)-(2-a(n-1)-n-n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A097813.P12963412079636043661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (2 - a (n - 1) - (n : ℤ) - (n : ℤ))

end

end A097813.P12963412079636043661

namespace A097813

/-- `floor(a(n-1)-(2-a(n-1)-n-n))` -/
def P12963412079636043661.Spec : Prop :=
  ∀ n, P12963412079636043661.a n = A097813 n

theorem P12963412079636043661.correct : P12963412079636043661.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A097813, Nat.add_sub_cancel, A097813.P12963412079636043661.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A097813, Nat.add_sub_cancel, A097813.P12963412079636043661.a, A097813.P9463148433829689973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097813

/-! ## A097813.P5738053396464411524

`record[A074323(n)-n]`
-/

namespace A097813.P5738053396464411524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097813.P5738053396464411524

namespace A097813

/-- `record[A074323(n)-n]` -/
def P5738053396464411524.Spec : Prop :=
  ∀ n, P5738053396464411524.a n = A097813 n

end A097813

/-! ## A097813.P10893818936488916877

`∑[Δ[A004119(n)]-2]`
-/

namespace A097813.P10893818936488916877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097813.P10893818936488916877

namespace A097813

/-- `∑[Δ[A004119(n)]-2]` -/
def P10893818936488916877.Spec : Prop :=
  ∀ n, P10893818936488916877.a n = A097813 n

end A097813

/-! ## A097813.P1243747935145476338

`record[∑[A137206(n+1)-1]]`
-/

namespace A097813.P1243747935145476338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137206 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097813.P1243747935145476338

namespace A097813

/-- `record[∑[A137206(n+1)-1]]` -/
def P1243747935145476338.Spec : Prop :=
  ∀ n, P1243747935145476338.a n = A097813 n

end A097813

/-! ## A097813.P271529781939084831

`(∑[A131128(n)]+1)/2`
-/

namespace A097813.P271529781939084831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A097813.P271529781939084831

namespace A097813

/-- `(∑[A131128(n)]+1)/2` -/
def P271529781939084831.Spec : Prop :=
  ∀ n, P271529781939084831.a n = (A097813 n : ℚ)

end A097813

/-! ## A097813.P11531348929397461212

`Δ[∑[A055010(n)]-n²]`
-/

namespace A097813.P11531348929397461212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097813.P11531348929397461212

namespace A097813

/-- `Δ[∑[A055010(n)]-n²]` -/
def P11531348929397461212.Spec : Prop :=
  ∀ n, P11531348929397461212.a n = A097813 n

end A097813

/-! ## A097813.P837251784409624727

`(A131066(n)+1+n)/2`
-/

namespace A097813.P837251784409624727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131066 n + 1 + (n : ℤ) : ℚ) / 2

end

end A097813.P837251784409624727

namespace A097813

/-- `(A131066(n)+1+n)/2` -/
def P837251784409624727.Spec : Prop :=
  ∀ n, P837251784409624727.a n = (A097813 n : ℚ)

theorem P837251784409624727.correct : P837251784409624727.Spec := by
  intro n
  simp only [A097813, Nat.add_sub_cancel, A097813.P837251784409624727.a, A097813.P9463148433829689973.a, A131066, A131066.P1369875246180018976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097813

/-!
# A097814: Expansion of e.g.f. exp(3*x)/(1-3*x).

The programs for A097814, the canonical program `A097814.P14357672893527661182` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097814 has offset 0).

The definition of A097814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097814.P14357672893527661182

`3*n*a(n-1)+3^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097814

/-- `3*n*a(n-1)+3^n` -/
def P14357672893527661182.Spec : Prop :=
  ∀ n, (P14357672893527661182.a n : ℤ) = A097814 n

theorem P14357672893527661182.correct : P14357672893527661182.Spec := by
  intro n
  simp only [A097814]

end A097814

/-! ## A097814.P17412003745130790664

`3^n*A000522(n)`
-/

namespace A097814.P17412003745130790664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000522 n

end

end A097814.P17412003745130790664

namespace A097814

/-- `3^n*A000522(n)` -/
def P17412003745130790664.Spec : Prop :=
  ∀ n, P17412003745130790664.a n = A097814 n

end A097814

/-! ## A097814.P8613234892988435406

`n!*∑[1/n!]*3^n`
-/

namespace A097814.P8613234892988435406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (3 ^ n : ℚ)

end

end A097814.P8613234892988435406

namespace A097814

/-- `n!*∑[1/n!]*3^n` -/
def P8613234892988435406.Spec : Prop :=
  ∀ n, P8613234892988435406.a n = (A097814 n : ℚ)

end A097814

/-! ## A097814.P9830898367996909446

`(A002627(n)+n!)*3^n`
-/

namespace A097814.P9830898367996909446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002627 n + (Nat.factorial n : ℤ)) * (3 ^ n : ℤ)

end

end A097814.P9830898367996909446

namespace A097814

/-- `(A002627(n)+n!)*3^n` -/
def P9830898367996909446.Spec : Prop :=
  ∀ n, P9830898367996909446.a n = A097814 n

end A097814

/-! ## A097814.P2867491473596011761

`lcm(A168607(n)-2, n!*∑[1/n!])`
-/

namespace A097814.P2867491473596011761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168607 n - 2) (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A097814.P2867491473596011761

namespace A097814

/-- `lcm(A168607(n)-2, n!*∑[1/n!])` -/
def P2867491473596011761.Spec : Prop :=
  ∀ n, (P2867491473596011761.a n : ℤ) = A097814 n

end A097814

/-! ## A097814.P14078982493485908533

`lcm(A000244(n), A000522(n))`
-/

namespace A097814.P14078982493485908533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A000522 n)

end

end A097814.P14078982493485908533

namespace A097814

/-- `lcm(A000244(n), A000522(n))` -/
def P14078982493485908533.Spec : Prop :=
  ∀ n, (P14078982493485908533.a n : ℤ) = A097814 n

end A097814

/-! ## A097814.P16100376349562090309

`A000522(n)*A027465(∑[n])`
-/

namespace A097814.P16100376349562090309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A027465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097814.P16100376349562090309

namespace A097814

/-- `A000522(n)*A027465(∑[n])` -/
def P16100376349562090309.Spec : Prop :=
  ∀ n, P16100376349562090309.a n = A097814 n

end A097814

/-! ## A097814.P738447144143110911

`A000244(n)*A143409(∑[n])`
-/

namespace A097814.P738447144143110911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A143409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097814.P738447144143110911

namespace A097814

/-- `A000244(n)*A143409(∑[n])` -/
def P738447144143110911.Spec : Prop :=
  ∀ n, P738447144143110911.a n = A097814 n

end A097814

/-! ## A097814.P3101846629016155481

`Δ[A002104(n)]*A000244(n)`
-/

namespace A097814.P3101846629016155481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000244 n

end

end A097814.P3101846629016155481

namespace A097814

/-- `Δ[A002104(n)]*A000244(n)` -/
def P3101846629016155481.Spec : Prop :=
  ∀ n, P3101846629016155481.a n = A097814 n

end A097814

/-! ## A097814.P12344940345408008145

`(A007526(n)+1)*A000244(n)`
-/

namespace A097814.P12344940345408008145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007526 n + 1) * A000244 n

end

end A097814.P12344940345408008145

namespace A097814

/-- `(A007526(n)+1)*A000244(n)` -/
def P12344940345408008145.Spec : Prop :=
  ∀ n, P12344940345408008145.a n = A097814 n

end A097814

/-!
# A097815: E.g.f. exp(4x)/(1-4x).

The programs for A097815, the canonical program `A097815.P12437047139038806953` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097815 has offset 0).

The definition of A097815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097815.P12437047139038806953

`4*n*a(n-1)+4^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097815

/-- `4*n*a(n-1)+4^n` -/
def P12437047139038806953.Spec : Prop :=
  ∀ n, (P12437047139038806953.a n : ℤ) = A097815 n

theorem P12437047139038806953.correct : P12437047139038806953.Spec := by
  intro n
  simp only [A097815]

end A097815

/-! ## A097815.P584158312641630830

`4^n*A000522(n)`
-/

namespace A097815.P584158312641630830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000522 n

end

end A097815.P584158312641630830

namespace A097815

/-- `4^n*A000522(n)` -/
def P584158312641630830.Spec : Prop :=
  ∀ n, P584158312641630830.a n = A097815 n

end A097815

/-! ## A097815.P5235157340445409454

`n!*∑[1/n!]*4^n`
-/

namespace A097815.P5235157340445409454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (4 ^ n : ℚ)

end

end A097815.P5235157340445409454

namespace A097815

/-- `n!*∑[1/n!]*4^n` -/
def P5235157340445409454.Spec : Prop :=
  ∀ n, P5235157340445409454.a n = (A097815 n : ℚ)

end A097815

/-! ## A097815.P13825321271651948710

`2^n*A082032(n)`
-/

namespace A097815.P13825321271651948710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A082032 n

end

end A097815.P13825321271651948710

namespace A097815

/-- `2^n*A082032(n)` -/
def P13825321271651948710.Spec : Prop :=
  ∀ n, P13825321271651948710.a n = A097815 n

end A097815

/-! ## A097815.P5532948807609772962

`4^n*A143409(∑[n])`
-/

namespace A097815.P5532948807609772962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A143409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097815.P5532948807609772962

namespace A097815

/-- `4^n*A143409(∑[n])` -/
def P5532948807609772962.Spec : Prop :=
  ∀ n, P5532948807609772962.a n = A097815 n

end A097815

/-! ## A097815.P1052924852980354663

`4^n*record[A143409(n)]`
-/

namespace A097815.P1052924852980354663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097815.P1052924852980354663

namespace A097815

/-- `4^n*record[A143409(n)]` -/
def P1052924852980354663.Spec : Prop :=
  ∀ n, P1052924852980354663.a n = A097815 n

end A097815

/-! ## A097815.P18386633421977463472

`Δ[A002104(n)]*A000302(n)`
-/

namespace A097815.P18386633421977463472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000302 n

end

end A097815.P18386633421977463472

namespace A097815

/-- `Δ[A002104(n)]*A000302(n)` -/
def P18386633421977463472.Spec : Prop :=
  ∀ n, P18386633421977463472.a n = A097815 n

end A097815

/-! ## A097815.P2939373583941095713

`record[A073107(n)]*A000302(n)`
-/

namespace A097815.P2939373583941095713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000302 n

end

end A097815.P2939373583941095713

namespace A097815

/-- `record[A073107(n)]*A000302(n)` -/
def P2939373583941095713.Spec : Prop :=
  ∀ n, P2939373583941095713.a n = A097815 n

end A097815

/-! ## A097815.P318573065151205817

`record[A143409(n)]*A000302(n)`
-/

namespace A097815.P318573065151205817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000302 n

end

end A097815.P318573065151205817

namespace A097815

/-- `record[A143409(n)]*A000302(n)` -/
def P318573065151205817.Spec : Prop :=
  ∀ n, P318573065151205817.a n = A097815 n

end A097815

/-! ## A097815.P11929126388785607870

`(A007526(n)+1)*A000302(n)`
-/

namespace A097815.P11929126388785607870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007526 n + 1) * A000302 n

end

end A097815.P11929126388785607870

namespace A097815

/-- `(A007526(n)+1)*A000302(n)` -/
def P11929126388785607870.Spec : Prop :=
  ∀ n, P11929126388785607870.a n = A097815 n

end A097815

/-!
# A097816: E.g.f. exp(5x)/(1-5x).

The programs for A097816, the canonical program `A097816.P10384155921709980232` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097816 has offset 0).

The definition of A097816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097816.P10384155921709980232

`5*n*a(n-1)+5^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097816

/-- `5*n*a(n-1)+5^n` -/
def P10384155921709980232.Spec : Prop :=
  ∀ n, (P10384155921709980232.a n : ℤ) = A097816 n

theorem P10384155921709980232.correct : P10384155921709980232.Spec := by
  intro n
  simp only [A097816]

end A097816

/-! ## A097816.P11727067655568022725

`5^n*A000522(n)`
-/

namespace A097816.P11727067655568022725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000522 n

end

end A097816.P11727067655568022725

namespace A097816

/-- `5^n*A000522(n)` -/
def P11727067655568022725.Spec : Prop :=
  ∀ n, P11727067655568022725.a n = A097816 n

end A097816

/-! ## A097816.P66171630481437613

`n!*∑[1/n!]*5^n`
-/

namespace A097816.P66171630481437613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) * (5 ^ n : ℚ)

end

end A097816.P66171630481437613

namespace A097816

/-- `n!*∑[1/n!]*5^n` -/
def P66171630481437613.Spec : Prop :=
  ∀ n, P66171630481437613.a n = (A097816 n : ℚ)

end A097816

/-! ## A097816.P18273361660476549728

`5^n*A143409(∑[n])`
-/

namespace A097816.P18273361660476549728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A143409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097816.P18273361660476549728

namespace A097816

/-- `5^n*A143409(∑[n])` -/
def P18273361660476549728.Spec : Prop :=
  ∀ n, P18273361660476549728.a n = A097816 n

end A097816

/-! ## A097816.P14317962788188808186

`5^n*Δ[A002104(n)]`
-/

namespace A097816.P14317962788188808186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A097816.P14317962788188808186

namespace A097816

/-- `5^n*Δ[A002104(n)]` -/
def P14317962788188808186.Spec : Prop :=
  ∀ n, P14317962788188808186.a n = A097816 n

end A097816

/-! ## A097816.P6395326703195553177

`Δ[A002104(n)]*A000351(n)`
-/

namespace A097816.P6395326703195553177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000351 n

end

end A097816.P6395326703195553177

namespace A097816

/-- `Δ[A002104(n)]*A000351(n)` -/
def P6395326703195553177.Spec : Prop :=
  ∀ n, P6395326703195553177.a n = A097816 n

end A097816

/-! ## A097816.P2951705553386968491

`A000522(n)*A218016(A000217(n))`
-/

namespace A097816.P2951705553386968491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A218016 (A000217 n).toNat

end

end A097816.P2951705553386968491

namespace A097816

/-- `A000522(n)*A218016(A000217(n))` -/
def P2951705553386968491.Spec : Prop :=
  ∀ n, P2951705553386968491.a n = A097816 n

end A097816

/-! ## A097816.P897597826053927508

`record[A143409(n)]*A218016(A000217(n))`
-/

namespace A097816.P897597826053927508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A218016 (A000217 n).toNat

end

end A097816.P897597826053927508

namespace A097816

/-- `record[A143409(n)]*A218016(A000217(n))` -/
def P897597826053927508.Spec : Prop :=
  ∀ n, P897597826053927508.a n = A097816 n

end A097816

/-!
# A097817: E.g.f. exp(2x)/(1-3x).

The programs for A097817, the canonical program `A097817.P6033339713230605981` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097817 has offset 0).

The definition of A097817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097817.P6033339713230605981

`3*n*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097817

/-- `3*n*a(n-1)+2^n` -/
def P6033339713230605981.Spec : Prop :=
  ∀ n, (P6033339713230605981.a n : ℤ) = A097817 n

theorem P6033339713230605981.correct : P6033339713230605981.Spec := by
  intro n
  simp only [A097817]

end A097817

/-! ## A097817.P8748338253053631902

`A000079(n)+3*n*a(n-1)` with `a(0)=1`
-/

namespace A097817.P8748338253053631902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + (3 * n : ℤ) * a (n - 1)

end

end A097817.P8748338253053631902

namespace A097817

/-- `A000079(n)+3*n*a(n-1)` -/
def P8748338253053631902.Spec : Prop :=
  ∀ n, P8748338253053631902.a n = A097817 n

end A097817

/-! ## A097817.P5827958511199748783

`record[A130321(n)]+3*n*a(n-1)` with `a(0)=1`
-/

namespace A097817.P5827958511199748783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (3 * n : ℤ) * a (n - 1)

end

end A097817.P5827958511199748783

namespace A097817

/-- `record[A130321(n)]+3*n*a(n-1)` -/
def P5827958511199748783.Spec : Prop :=
  ∀ n, P5827958511199748783.a n = A097817 n

end A097817

/-! ## A097817.P13648980982959787596

`A000079(n)+a(n-1)*A008486(n)` with `a(0)=1`
-/

namespace A097817.P13648980982959787596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + a (n - 1) * A008486 n

end

end A097817.P13648980982959787596

namespace A097817

/-- `A000079(n)+a(n-1)*A008486(n)` -/
def P13648980982959787596.Spec : Prop :=
  ∀ n, P13648980982959787596.a n = A097817 n

end A097817

/-! ## A097817.P9738864661589514508

`A375600(∑[n]+n)`
-/

namespace A097817.P9738864661589514508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375600 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A097817.P9738864661589514508

namespace A097817

/-- `A375600(∑[n]+n)` -/
def P9738864661589514508.Spec : Prop :=
  ∀ n, P9738864661589514508.a n = A097817 n

end A097817

/-!
# A097818: Expansion of (8+10*x)/((1-x)*(1-100*x)).

The programs for A097818, the canonical program `A097818.P946380029152868393` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097818 has offset 0).

The definition of A097818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097818.P4406581796590546885

`(90*100^n-2)/11`
-/

namespace A097818.P4406581796590546885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((90 * 100 ^ n : ℤ) - 2 : ℚ) / 11

end

end A097818.P4406581796590546885

namespace A097818

/-- `(90*100^n-2)/11` -/
def P4406581796590546885.Spec : Prop :=
  ∀ n, P4406581796590546885.a n = (A097818 n : ℚ)

theorem P4406581796590546885.correct : P4406581796590546885.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A097818, Nat.add_sub_cancel, A097818.P4406581796590546885.a, A097818.P946380029152868393.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A097818, Nat.add_sub_cancel, A097818.P4406581796590546885.a, A097818.P946380029152868393.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A097818

/-! ## A097818.P946380029152868393

`101*a(n-1)-100*a(n-2)` with `a(0)=8, a(1)=818`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097818

/-- `101*a(n-1)-100*a(n-2)` -/
def P946380029152868393.Spec : Prop :=
  ∀ n, P946380029152868393.a n = A097818 n

theorem P946380029152868393.correct : P946380029152868393.Spec := by
  intro n
  simp only [A097818]

end A097818

/-! ## A097818.P743704095578411039

`record[-(10*a(n-1)+2)]` with `a(0)=8`
-/

namespace A097818.P743704095578411039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  -(10 * f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097818.P743704095578411039

namespace A097818

/-- `record[-(10*a(n-1)+2)]` -/
def P743704095578411039.Spec : Prop :=
  ∀ n, P743704095578411039.a n = A097818 n

end A097818

/-! ## A097818.P2186325867275693724

`9*A095372(n)-1`
-/

namespace A097818.P2186325867275693724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A095372 n - 1

end

end A097818.P2186325867275693724

namespace A097818

/-- `9*A095372(n)-1` -/
def P2186325867275693724.Spec : Prop :=
  ∀ n, P2186325867275693724.a n = A097818 n

end A097818

/-! ## A097818.P5916712362534310787

`A165750(Δ[n²])-2`
-/

namespace A097818.P5916712362534310787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165750 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A097818.P5916712362534310787

namespace A097818

/-- `A165750(Δ[n²])-2` -/
def P5916712362534310787.Spec : Prop :=
  ∀ n, P5916712362534310787.a n = A097818 n

end A097818

/-! ## A097818.P13329724249746987219

`∑[A055996(2*n+1)]`
-/

namespace A097818.P13329724249746987219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097818.P13329724249746987219

namespace A097818

/-- `∑[A055996(2*n+1)]` -/
def P13329724249746987219.Spec : Prop :=
  ∀ n, P13329724249746987219.a n = A097818 n

end A097818

/-! ## A097818.P12609189628541550760

`abs(2-A165750(2*n+1))`
-/

namespace A097818.P12609189628541550760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A165750 (2 * n + 1)|

end

end A097818.P12609189628541550760

namespace A097818

/-- `abs(2-A165750(2*n+1))` -/
def P12609189628541550760.Spec : Prop :=
  ∀ n, P12609189628541550760.a n = A097818 n

end A097818

/-! ## A097818.P284858611150672317

`A048409(A017365(n))`
-/

namespace A097818.P284858611150672317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048409 (A017365 n).toNat

end

end A097818.P284858611150672317

namespace A097818

/-- `A048409(A017365(n))` -/
def P284858611150672317.Spec : Prop :=
  ∀ n, P284858611150672317.a n = A097818 n

end A097818

/-! ## A097818.P2305636935098529880

`A048409(A008592(n)+8)`
-/

namespace A097818.P2305636935098529880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048409 (A008592 n + 8).toNat

end

end A097818.P2305636935098529880

namespace A097818

/-- `A048409(A008592(n)+8)` -/
def P2305636935098529880.Spec : Prop :=
  ∀ n, P2305636935098529880.a n = A097818 n

end A097818

/-! ## A097818.P14599916840980637412

`A015585(2*(n+1))-A015585(2*n+1)`
-/

namespace A097818.P14599916840980637412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015585 (2 * (n + 1)) - A015585 (2 * n + 1)

end

end A097818.P14599916840980637412

namespace A097818

/-- `A015585(2*(n+1))-A015585(2*n+1)` -/
def P14599916840980637412.Spec : Prop :=
  ∀ n, P14599916840980637412.a n = A097818 n

end A097818

/-!
# A097819: E.g.f. exp(3x)/(1-4x).

The programs for A097819, there is no canonical definition to state claims against.
-/

/-! ## A097819.P17493502745430873523

`3^n+4*n*a(n-1)` with `a(0)=1`
-/

namespace A097819.P17493502745430873523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ n + 4 * (n * a (n - 1))

end

end A097819.P17493502745430873523

/-! ## A097819.P17548870827345004459

`2*a(n-1)*2*n-xor(-2, 3^n)` with `a(0)=1`
-/

namespace A097819.P17548870827345004459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * (2 * n : ℤ) - Int.xor (-2) (3 ^ n : ℤ)

end

end A097819.P17548870827345004459

/-! ## A097819.P8883838069403347016

`A000244(n)+a(n-1)*A008574(n)` with `a(0)=1`
-/

namespace A097819.P8883838069403347016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000244 n + a (n - 1) * A008574 n

end

end A097819.P8883838069403347016

/-! ## A097819.P7358368076965057266

`A003961(A000079(n))+4*n*a(n-1)` with `a(0)=1`
-/

namespace A097819.P7358368076965057266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003961 (A000079 n).toNat + (4 * n : ℤ) * a (n - 1)

end

end A097819.P7358368076965057266

/-!
# A097820: Expansion of e.g.f. exp(2*x)/(1-4*x).

The programs for A097820, the canonical program `A097820.P14666087355872284550` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097820 has offset 0).

The definition of A097820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097820.P14666087355872284550

`4*n*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097820

/-- `4*n*a(n-1)+2^n` -/
def P14666087355872284550.Spec : Prop :=
  ∀ n, (P14666087355872284550.a n : ℤ) = A097820 n

theorem P14666087355872284550.correct : P14666087355872284550.Spec := by
  intro n
  simp only [A097820]

end A097820

/-! ## A097820.P4661435195828149643

`xor(4*n*a(abs(1-n)), 2^n)` with `a(0)=1`
-/

namespace A097820.P4661435195828149643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * n * a |1 - (n : ℤ)|.toNat) (2 ^ n)

end

end A097820.P4661435195828149643

namespace A097820

/-- `xor(4*n*a(abs(1-n)), 2^n)` -/
def P4661435195828149643.Spec : Prop :=
  ∀ n, (P4661435195828149643.a n : ℤ) = A097820 n

end A097820

/-! ## A097820.P17661747103310276028

`2^n*A010844(n)`
-/

namespace A097820.P17661747103310276028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010844 n

end

end A097820.P17661747103310276028

namespace A097820

/-- `2^n*A010844(n)` -/
def P17661747103310276028.Spec : Prop :=
  ∀ n, P17661747103310276028.a n = A097820 n

end A097820

/-! ## A097820.P1619101961226199573

`2^n*A161380(∑[n]+n)`
-/

namespace A097820.P1619101961226199573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A161380 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A097820.P1619101961226199573

namespace A097820

/-- `2^n*A161380(∑[n]+n)` -/
def P1619101961226199573.Spec : Prop :=
  ∀ n, P1619101961226199573.a n = A097820 n

end A097820

/-! ## A097820.P15576759826074587402

`(2*A308876(n)-1)*2^n`
-/

namespace A097820.P15576759826074587402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A308876 n - 1) * (2 ^ n : ℤ)

end

end A097820.P15576759826074587402

namespace A097820

/-- `(2*A308876(n)-1)*2^n` -/
def P15576759826074587402.Spec : Prop :=
  ∀ n, P15576759826074587402.a n = A097820 n

end A097820

/-! ## A097820.P12548948256776653179

`A000079(n)+4*n*a(n-1)` with `a(0)=1`
-/

namespace A097820.P12548948256776653179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + (4 * n : ℤ) * a (n - 1)

end

end A097820.P12548948256776653179

namespace A097820

/-- `A000079(n)+4*n*a(n-1)` -/
def P12548948256776653179.Spec : Prop :=
  ∀ n, P12548948256776653179.a n = A097820 n

end A097820

/-! ## A097820.P6883109525745310793

`Δ[A000225(n)]+4*n*a(n-1)` with `a(0)=1`
-/

namespace A097820.P6883109525745310793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (4 * n : ℤ) * a (n - 1)

end

end A097820.P6883109525745310793

namespace A097820

/-- `Δ[A000225(n)]+4*n*a(n-1)` -/
def P6883109525745310793.Spec : Prop :=
  ∀ n, P6883109525745310793.a n = A097820 n

end A097820

/-! ## A097820.P3539715921276255200

`xor(4*n*a(n-1)+1, A000051(n))` with `a(0)=1`
-/

namespace A097820.P3539715921276255200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor ((4 * n : ℤ) * a (n - 1) + 1) (A000051 n)

end

end A097820.P3539715921276255200

namespace A097820

/-- `xor(4*n*a(n-1)+1, A000051(n))` -/
def P3539715921276255200.Spec : Prop :=
  ∀ n, P3539715921276255200.a n = A097820 n

end A097820

/-! ## A097820.P7933907686326318406

`lcm(A000079(n), A010844(n))`
-/

namespace A097820.P7933907686326318406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A010844 n)

end

end A097820.P7933907686326318406

namespace A097820

/-- `lcm(A000079(n), A010844(n))` -/
def P7933907686326318406.Spec : Prop :=
  ∀ n, (P7933907686326318406.a n : ℤ) = A097820 n

end A097820

/-! ## A097820.P14827602952239061888

`A010844(n)*A011782(n+1)`
-/

namespace A097820.P14827602952239061888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010844 n * A011782 (n + 1)

end

end A097820.P14827602952239061888

namespace A097820

/-- `A010844(n)*A011782(n+1)` -/
def P14827602952239061888.Spec : Prop :=
  ∀ n, P14827602952239061888.a n = A097820 n

end A097820

/-!
# A097821: Expansion of e.g.f. exp(2x)/(1-5x).

The programs for A097821, the canonical program `A097821.P10248719058048539180` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097821 has offset 0).

The definition of A097821 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097821.P10248719058048539180

`5*n*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097821

/-- `5*n*a(n-1)+2^n` -/
def P10248719058048539180.Spec : Prop :=
  ∀ n, (P10248719058048539180.a n : ℤ) = A097821 n

theorem P10248719058048539180.correct : P10248719058048539180.Spec := by
  intro n
  simp only [A097821]

end A097821

/-! ## A097821.P12767875294585284462

`abs((n-6*n)*a(n-1)-2^n)` with `a(0)=1`
-/

namespace A097821.P12767875294585284462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |((n : ℤ) - (6 * n : ℤ)) * a (n - 1) - (2 ^ n : ℤ)|

end

end A097821.P12767875294585284462

namespace A097821

/-- `abs((n-6*n)*a(n-1)-2^n)` -/
def P12767875294585284462.Spec : Prop :=
  ∀ n, P12767875294585284462.a n = A097821 n

end A097821

/-! ## A097821.P4186281249179721877

`A000079(n)+5*n*a(n-1)` with `a(0)=1`
-/

namespace A097821.P4186281249179721877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + (5 * n : ℤ) * a (n - 1)

end

end A097821.P4186281249179721877

namespace A097821

/-- `A000079(n)+5*n*a(n-1)` -/
def P4186281249179721877.Spec : Prop :=
  ∀ n, P4186281249179721877.a n = A097821 n

end A097821

/-! ## A097821.P2511743680019115510

`2^n+a(n-1)*A008706(n)` with `a(0)=1`
-/

namespace A097821.P2511743680019115510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + a (n - 1) * A008706 n

end

end A097821.P2511743680019115510

namespace A097821

/-- `2^n+a(n-1)*A008706(n)` -/
def P2511743680019115510.Spec : Prop :=
  ∀ n, P2511743680019115510.a n = A097821 n

end A097821

/-! ## A097821.P4641969187267525625

`A011782(n+1)+5*n*a(n-1)` with `a(0)=1`
-/

namespace A097821.P4641969187267525625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 (n + 1) + (5 * n : ℤ) * a (n - 1)

end

end A097821.P4641969187267525625

namespace A097821

/-- `A011782(n+1)+5*n*a(n-1)` -/
def P4641969187267525625.Spec : Prop :=
  ∀ n, P4641969187267525625.a n = A097821 n

end A097821

/-!
# A097825: Triangle of permutations of [1..n] made by alternatively reversing terms counted from the left and right. (See comment.)

The programs for A097825, there is no canonical definition to state claims against.
-/

/-! ## A097825.P7085710548117493818

`A162696(A229197(n))`
-/

namespace A097825.P7085710548117493818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162696 (A229197 n).toNat

end

end A097825.P7085710548117493818

/-! ## A097825.P2788824709076362772

`A072078(7*A088209(n))`
-/

namespace A097825.P2788824709076362772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (7 * A088209 n).toNat

end

end A097825.P2788824709076362772

/-! ## A097825.P14397073306234282110

`A072078(lcm(7, A088209(n)))`
-/

namespace A097825.P14397073306234282110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (Int.lcm 7 (A088209 n))

end

end A097825.P14397073306234282110

/-! ## A097825.P5981483267991723974

`A340853(2*A217347(n+1))`
-/

namespace A097825.P5981483267991723974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340853 (2 * A217347 (n + 1)).toNat

end

end A097825.P5981483267991723974

/-!
# A097826: Partial sums of Chebyshev sequence S(n,11) = U(n,11/2) = A004190(n).

The programs for A097826, the canonical program `A097826.P15796135066668755441` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097826 has offset 0).

The definition of A097826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097826.P15796135066668755441

`11*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097826

/-- `11*a(n-1)-a(n-2)+1` -/
def P15796135066668755441.Spec : Prop :=
  ∀ n, P15796135066668755441.a n = A097826 n

theorem P15796135066668755441.correct : P15796135066668755441.Spec := by
  intro n
  simp only [A097826]

end A097826

/-! ## A097826.P16652670913802681698

`∑[ogf(1/(1-11x+x^2))]`
-/

namespace A097826.P16652670913802681698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -11, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097826.P16652670913802681698

namespace A097826

/-- `∑[ogf(1/(1-11x+x^2))]` -/
def P16652670913802681698.Spec : Prop :=
  ∀ n, P16652670913802681698.a n = A097826 n

end A097826

/-! ## A097826.P7669165148570476456

`ogf(1/(1-12x+12x^2-x^3))`
-/

namespace A097826.P7669165148570476456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 12, -1] n

end

end A097826.P7669165148570476456

namespace A097826

/-- `ogf(1/(1-12x+12x^2-x^3))` -/
def P7669165148570476456.Spec : Prop :=
  ∀ n, P7669165148570476456.a n = A097826 n

end A097826

/-! ## A097826.P1869574360429506257

`∑[11*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=11`
-/

namespace A097826.P1869574360429506257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  11 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097826.P1869574360429506257

namespace A097826

/-- `∑[11*a(n-1)-a(n-2)]` -/
def P1869574360429506257.Spec : Prop :=
  ∀ n, P1869574360429506257.a n = A097826 n

end A097826

/-! ## A097826.P7945952601894842652

`∑[A004190(n)]`
-/

namespace A097826.P7945952601894842652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097826.P7945952601894842652

namespace A097826

/-- `∑[A004190(n)]` -/
def P7945952601894842652.Spec : Prop :=
  ∀ n, P7945952601894842652.a n = A097826 n

end A097826

/-! ## A097826.P7740669765720533895

`∑[∑[A078922(n+1)]]`
-/

namespace A097826.P7740669765720533895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078922 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097826.P7740669765720533895

namespace A097826

/-- `∑[∑[A078922(n+1)]]` -/
def P7740669765720533895.Spec : Prop :=
  ∀ n, P7740669765720533895.a n = A097826 n

end A097826

/-! ## A097826.P15258874225228451905

`∑[∑[A006190(Δ[n²])]]`
-/

namespace A097826.P15258874225228451905
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097826.P15258874225228451905

namespace A097826

/-- `∑[∑[A006190(Δ[n²])]]` -/
def P15258874225228451905.Spec : Prop :=
  ∀ n, P15258874225228451905.a n = A097826 n

end A097826

/-! ## A097826.P8757479928751729490

`∑[∑[∑[A052906(2*n)]]]`
-/

namespace A097826.P8757479928751729490
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052906 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097826.P8757479928751729490

namespace A097826

/-- `∑[∑[∑[A052906(2*n)]]]` -/
def P8757479928751729490.Spec : Prop :=
  ∀ n, P8757479928751729490.a n = A097826 n

end A097826

/-! ## A097826.P15717936602939275281

`A097783(n)+a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A097826.P15717936602939275281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A097783 n + a (n - 2)

end

end A097826.P15717936602939275281

namespace A097826

/-- `A097783(n)+a(n-2)` -/
def P15717936602939275281.Spec : Prop :=
  ∀ n, P15717936602939275281.a n = A097826 n

end A097826

/-! ## A097826.P9365776468453661546

`A098298(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A097826.P9365776468453661546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098298 (n + 1) - a (n - 1)

end

end A097826.P9365776468453661546

namespace A097826

/-- `A098298(n+1)-a(n-1)` -/
def P9365776468453661546.Spec : Prop :=
  ∀ n, P9365776468453661546.a n = A097826 n

end A097826

/-!
# A097827: Partial sums of Chebyshev sequence S(n,12) = U(n,6) = A004191(n).

The programs for A097827, the canonical program `A097827.P10486247477894512693` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097827 has offset 0).

The definition of A097827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097827.P10486247477894512693

`12*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097827

/-- `12*a(n-1)-a(n-2)+1` -/
def P10486247477894512693.Spec : Prop :=
  ∀ n, P10486247477894512693.a n = A097827 n

theorem P10486247477894512693.correct : P10486247477894512693.Spec := by
  intro n
  simp only [A097827]

end A097827

/-! ## A097827.P797440912352730118

`∑[ogf(1/(1-12x+x^2))]`
-/

namespace A097827.P797440912352730118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P797440912352730118

namespace A097827

/-- `∑[ogf(1/(1-12x+x^2))]` -/
def P797440912352730118.Spec : Prop :=
  ∀ n, P797440912352730118.a n = A097827 n

end A097827

/-! ## A097827.P17052857595721618894

`ogf(1/(1-13x+13x^2-x^3))`
-/

namespace A097827.P17052857595721618894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -13, 13, -1] n

end

end A097827.P17052857595721618894

namespace A097827

/-- `ogf(1/(1-13x+13x^2-x^3))` -/
def P17052857595721618894.Spec : Prop :=
  ∀ n, P17052857595721618894.a n = A097827 n

end A097827

/-! ## A097827.P8516855191943045148

`∑[12*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=12`
-/

namespace A097827.P8516855191943045148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  12 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P8516855191943045148

namespace A097827

/-- `∑[12*a(n-1)-a(n-2)]` -/
def P8516855191943045148.Spec : Prop :=
  ∀ n, P8516855191943045148.a n = A097827 n

end A097827

/-! ## A097827.P3120281644178778883

`∑[A004191(n)]`
-/

namespace A097827.P3120281644178778883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P3120281644178778883

namespace A097827

/-- `∑[A004191(n)]` -/
def P3120281644178778883.Spec : Prop :=
  ∀ n, P3120281644178778883.a n = A097827 n

end A097827

/-! ## A097827.P4820138337305225129

`∑[∑[A077417(n)]]`
-/

namespace A097827.P4820138337305225129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077417 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P4820138337305225129

namespace A097827

/-- `∑[∑[A077417(n)]]` -/
def P4820138337305225129.Spec : Prop :=
  ∀ n, P4820138337305225129.a n = A097827 n

end A097827

/-! ## A097827.P2447503869769503384

`∑[A065101(n)/2]`
-/

namespace A097827.P2447503869769503384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065101 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P2447503869769503384

namespace A097827

/-- `∑[A065101(n)/2]` -/
def P2447503869769503384.Spec : Prop :=
  ∀ n, P2447503869769503384.a n = (A097827 n : ℚ)

end A097827

/-! ## A097827.P5432876773034263947

`∑[A041059(Δ[n²])]`
-/

namespace A097827.P5432876773034263947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041059 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P5432876773034263947

namespace A097827

/-- `∑[A041059(Δ[n²])]` -/
def P5432876773034263947.Spec : Prop :=
  ∀ n, P5432876773034263947.a n = A097827 n

end A097827

/-! ## A097827.P14306121165297572806

`∑[∑[A041059(2*n)]]`
-/

namespace A097827.P14306121165297572806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041059 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P14306121165297572806

namespace A097827

/-- `∑[∑[A041059(2*n)]]` -/
def P14306121165297572806.Spec : Prop :=
  ∀ n, P14306121165297572806.a n = A097827 n

end A097827

/-! ## A097827.P14543083044966655664

`∑[∑[A080875(2*n+1)]]`
-/

namespace A097827.P14543083044966655664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097827.P14543083044966655664

namespace A097827

/-- `∑[∑[A080875(2*n+1)]]` -/
def P14543083044966655664.Spec : Prop :=
  ∀ n, P14543083044966655664.a n = A097827 n

end A097827

/-!
# A097828: Partial sums of Chebyshev sequence S(n,13)= U(n,13/2) = A078362(n).

The programs for A097828, the canonical program `A097828.P3906504460574031408` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097828 has offset 0).

The definition of A097828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097828.P3906504460574031408

`13*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097828

/-- `13*a(n-1)-a(n-2)+1` -/
def P3906504460574031408.Spec : Prop :=
  ∀ n, P3906504460574031408.a n = A097828 n

theorem P3906504460574031408.correct : P3906504460574031408.Spec := by
  intro n
  simp only [A097828]

end A097828

/-! ## A097828.P14121572541012304067

`∑[ogf(1/(1-13x+x^2))]`
-/

namespace A097828.P14121572541012304067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -13, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097828.P14121572541012304067

namespace A097828

/-- `∑[ogf(1/(1-13x+x^2))]` -/
def P14121572541012304067.Spec : Prop :=
  ∀ n, P14121572541012304067.a n = A097828 n

end A097828

/-! ## A097828.P12234193123659567621

`ogf(1/(1-14x+14x^2-x^3))`
-/

namespace A097828.P12234193123659567621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -14, 14, -1] n

end

end A097828.P12234193123659567621

namespace A097828

/-- `ogf(1/(1-14x+14x^2-x^3))` -/
def P12234193123659567621.Spec : Prop :=
  ∀ n, P12234193123659567621.a n = A097828 n

end A097828

/-! ## A097828.P2224654133292759664

`∑[13*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=13`
-/

namespace A097828.P2224654133292759664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  13 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097828.P2224654133292759664

namespace A097828

/-- `∑[13*a(n-1)-a(n-2)]` -/
def P2224654133292759664.Spec : Prop :=
  ∀ n, P2224654133292759664.a n = A097828 n

end A097828

/-! ## A097828.P12318572553202650679

`∑[A078362(n)]`
-/

namespace A097828.P12318572553202650679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097828.P12318572553202650679

namespace A097828

/-- `∑[A078362(n)]` -/
def P12318572553202650679.Spec : Prop :=
  ∀ n, P12318572553202650679.a n = A097828 n

end A097828

/-! ## A097828.P4552032316348239498

`∑[∑[A085260(n+1)]]`
-/

namespace A097828.P4552032316348239498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097828.P4552032316348239498

namespace A097828

/-- `∑[∑[A085260(n+1)]]` -/
def P4552032316348239498.Spec : Prop :=
  ∀ n, P4552032316348239498.a n = A097828 n

end A097828

/-! ## A097828.P2451083573131067635

`A126866(n)+a(n-2)` with `a(0)=1, a(1)=14`
-/

namespace A097828.P2451083573131067635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  A126866 n + a (n - 2)

end

end A097828.P2451083573131067635

namespace A097828

/-- `A126866(n)+a(n-2)` -/
def P2451083573131067635.Spec : Prop :=
  ∀ n, P2451083573131067635.a n = A097828 n

end A097828

/-! ## A097828.P6806171986557405865

`A098300(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A097828.P6806171986557405865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098300 (n + 1) - a (n - 1)

end

end A097828.P6806171986557405865

namespace A097828

/-- `A098300(n+1)-a(n-1)` -/
def P6806171986557405865.Spec : Prop :=
  ∀ n, P6806171986557405865.a n = A097828 n

end A097828

/-!
# A097829: Partial sums of Chebyshev sequence S(n,15) = U(n,15/2) = A078364(n).

The programs for A097829, the canonical program `A097829.P16679827882363471065` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097829 has offset 0).

The definition of A097829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097829.P16679827882363471065

`15*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097829

/-- `15*a(n-1)-a(n-2)+1` -/
def P16679827882363471065.Spec : Prop :=
  ∀ n, P16679827882363471065.a n = A097829 n

theorem P16679827882363471065.correct : P16679827882363471065.Spec := by
  intro n
  simp only [A097829]

end A097829

/-! ## A097829.P12475146875057216034

`∑[ogf(1/(1-15x+x^2))]`
-/

namespace A097829.P12475146875057216034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -15, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097829.P12475146875057216034

namespace A097829

/-- `∑[ogf(1/(1-15x+x^2))]` -/
def P12475146875057216034.Spec : Prop :=
  ∀ n, P12475146875057216034.a n = A097829 n

end A097829

/-! ## A097829.P16182637623840127427

`ogf(1/(1-16x+16x^2-x^3))`
-/

namespace A097829.P16182637623840127427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -16, 16, -1] n

end

end A097829.P16182637623840127427

namespace A097829

/-- `ogf(1/(1-16x+16x^2-x^3))` -/
def P16182637623840127427.Spec : Prop :=
  ∀ n, P16182637623840127427.a n = A097829 n

end A097829

/-! ## A097829.P8843090733465333390

`∑[15*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=15`
-/

namespace A097829.P8843090733465333390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  15 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097829.P8843090733465333390

namespace A097829

/-- `∑[15*a(n-1)-a(n-2)]` -/
def P8843090733465333390.Spec : Prop :=
  ∀ n, P8843090733465333390.a n = A097829 n

end A097829

/-! ## A097829.P8933821617515398451

`∑[A078364(n)]`
-/

namespace A097829.P8933821617515398451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097829.P8933821617515398451

namespace A097829

/-- `∑[A078364(n)]` -/
def P8933821617515398451.Spec : Prop :=
  ∀ n, P8933821617515398451.a n = A097829 n

end A097829

/-! ## A097829.P744872464911288400

`∑[∑[A160682(n+1)]]`
-/

namespace A097829.P744872464911288400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160682 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097829.P744872464911288400

namespace A097829

/-- `∑[∑[A160682(n+1)]]` -/
def P744872464911288400.Spec : Prop :=
  ∀ n, P744872464911288400.a n = A097829 n

end A097829

/-! ## A097829.P10295412236826740557

`A098302(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A097829.P10295412236826740557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098302 (n + 1) - a (n - 1)

end

end A097829.P10295412236826740557

namespace A097829

/-- `A098302(n+1)-a(n-1)` -/
def P10295412236826740557.Spec : Prop :=
  ∀ n, P10295412236826740557.a n = A097829 n

end A097829

/-!
# A097830: Partial sums of Chebyshev sequence S(n,16) = U(n,16/2) = A077412(n).

The programs for A097830, the canonical program `A097830.P6202618560968228691` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097830 has offset 0).

The definition of A097830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097830.P6202618560968228691

`16*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097830

/-- `16*a(n-1)-a(n-2)+1` -/
def P6202618560968228691.Spec : Prop :=
  ∀ n, P6202618560968228691.a n = A097830 n

theorem P6202618560968228691.correct : P6202618560968228691.Spec := by
  intro n
  simp only [A097830]

end A097830

/-! ## A097830.P5053331734368896627

`∑[ogf(1/(1-16x+x^2))]`
-/

namespace A097830.P5053331734368896627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -16, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097830.P5053331734368896627

namespace A097830

/-- `∑[ogf(1/(1-16x+x^2))]` -/
def P5053331734368896627.Spec : Prop :=
  ∀ n, P5053331734368896627.a n = A097830 n

end A097830

/-! ## A097830.P9935245180571043995

`ogf(1/(1-17x+17x^2-x^3))`
-/

namespace A097830.P9935245180571043995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -17, 17, -1] n

end

end A097830.P9935245180571043995

namespace A097830

/-- `ogf(1/(1-17x+17x^2-x^3))` -/
def P9935245180571043995.Spec : Prop :=
  ∀ n, P9935245180571043995.a n = A097830 n

end A097830

/-! ## A097830.P7458315505624693

`∑[16*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=16`
-/

namespace A097830.P7458315505624693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  16 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097830.P7458315505624693

namespace A097830

/-- `∑[16*a(n-1)-a(n-2)]` -/
def P7458315505624693.Spec : Prop :=
  ∀ n, P7458315505624693.a n = A097830 n

end A097830

/-! ## A097830.P12884579512128259820

`∑[a(n-1)/(1/4)²-a(n-2)]` with `a(0)=1, a(1)=16`
-/

namespace A097830.P12884579512128259820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 4) ^ 2 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097830.P12884579512128259820

namespace A097830

/-- `∑[a(n-1)/(1/4)²-a(n-2)]` -/
def P12884579512128259820.Spec : Prop :=
  ∀ n, P12884579512128259820.a n = (A097830 n : ℚ)

end A097830

/-! ## A097830.P12284517087743114960

`a(n-1)/(1/4)²-a(n-2)+1` with `a(0)=1, a(1)=17`
-/

namespace A097830.P12284517087743114960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 17] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - a (n - 2) + 1

end

end A097830.P12284517087743114960

namespace A097830

/-- `a(n-1)/(1/4)²-a(n-2)+1` -/
def P12284517087743114960.Spec : Prop :=
  ∀ n, P12284517087743114960.a n = (A097830 n : ℚ)

end A097830

/-! ## A097830.P16905079062576367139

`∑[A077412(n)]`
-/

namespace A097830.P16905079062576367139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097830.P16905079062576367139

namespace A097830

/-- `∑[A077412(n)]` -/
def P16905079062576367139.Spec : Prop :=
  ∀ n, P16905079062576367139.a n = A097830 n

end A097830

/-! ## A097830.P14007555101765705672

`∑[∑[A157456(n+1)]]`
-/

namespace A097830.P14007555101765705672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157456 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097830.P14007555101765705672

namespace A097830

/-- `∑[∑[A157456(n+1)]]` -/
def P14007555101765705672.Spec : Prop :=
  ∀ n, P14007555101765705672.a n = A097830 n

end A097830

/-! ## A097830.P4633589135198463752

`∑[∑[A041111(2*n)]]`
-/

namespace A097830.P4633589135198463752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041111 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097830.P4633589135198463752

namespace A097830

/-- `∑[∑[A041111(2*n)]]` -/
def P4633589135198463752.Spec : Prop :=
  ∀ n, P4633589135198463752.a n = A097830 n

end A097830

/-! ## A097830.P9922762603944603261

`∑[∑[A243469(2*n+1)]]`
-/

namespace A097830.P9922762603944603261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243469 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097830.P9922762603944603261

namespace A097830

/-- `∑[∑[A243469(2*n+1)]]` -/
def P9922762603944603261.Spec : Prop :=
  ∀ n, P9922762603944603261.a n = A097830 n

end A097830

/-!
# A097831: Partial sums of Chebyshev sequence S(n,17) = U(n,17/2) = A078366(n).

The programs for A097831, the canonical program `A097831.P4610691169848550978` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097831 has offset 0).

The definition of A097831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097831.P4610691169848550978

`17*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097831

/-- `17*a(n-1)-a(n-2)+1` -/
def P4610691169848550978.Spec : Prop :=
  ∀ n, P4610691169848550978.a n = A097831 n

theorem P4610691169848550978.correct : P4610691169848550978.Spec := by
  intro n
  simp only [A097831]

end A097831

/-! ## A097831.P17893801532917100775

`∑[ogf(1/(1-17x+x^2))]`
-/

namespace A097831.P17893801532917100775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -17, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097831.P17893801532917100775

namespace A097831

/-- `∑[ogf(1/(1-17x+x^2))]` -/
def P17893801532917100775.Spec : Prop :=
  ∀ n, P17893801532917100775.a n = A097831 n

end A097831

/-! ## A097831.P10091654642006398350

`ogf(1/(1-18x+18x^2-x^3))`
-/

namespace A097831.P10091654642006398350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -18, 18, -1] n

end

end A097831.P10091654642006398350

namespace A097831

/-- `ogf(1/(1-18x+18x^2-x^3))` -/
def P10091654642006398350.Spec : Prop :=
  ∀ n, P10091654642006398350.a n = A097831 n

end A097831

/-! ## A097831.P12881279606928571103

`∑[17*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=17`
-/

namespace A097831.P12881279606928571103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  17 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097831.P12881279606928571103

namespace A097831

/-- `∑[17*a(n-1)-a(n-2)]` -/
def P12881279606928571103.Spec : Prop :=
  ∀ n, P12881279606928571103.a n = A097831 n

end A097831

/-! ## A097831.P10559266381584907907

`∑[A078366(n)]`
-/

namespace A097831.P10559266381584907907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097831.P10559266381584907907

namespace A097831

/-- `∑[A078366(n)]` -/
def P10559266381584907907.Spec : Prop :=
  ∀ n, P10559266381584907907.a n = A097831 n

end A097831

/-! ## A097831.P2755518972625837695

`∑[∑[A161595(n+1)]]`
-/

namespace A097831.P2755518972625837695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161595 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097831.P2755518972625837695

namespace A097831

/-- `∑[∑[A161595(n+1)]]` -/
def P2755518972625837695.Spec : Prop :=
  ∀ n, P2755518972625837695.a n = A097831 n

end A097831

/-! ## A097831.P14325883898707402261

`A098304(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A097831.P14325883898707402261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098304 (n + 1) - a (n - 1)

end

end A097831.P14325883898707402261

namespace A097831

/-- `A098304(n+1)-a(n-1)` -/
def P14325883898707402261.Spec : Prop :=
  ∀ n, P14325883898707402261.a n = A097831 n

end A097831

/-!
# A097832: Partial sums of Chebyshev sequence S(n,19) = U(n,19/2) = A078368(n).

The programs for A097832, the canonical program `A097832.P1781472317658513886` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097832 has offset 0).

The definition of A097832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097832.P1781472317658513886

`19*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097832

/-- `19*a(n-1)-a(n-2)+1` -/
def P1781472317658513886.Spec : Prop :=
  ∀ n, P1781472317658513886.a n = A097832 n

theorem P1781472317658513886.correct : P1781472317658513886.Spec := by
  intro n
  simp only [A097832]

end A097832

/-! ## A097832.P2299266290379743284

`∑[ogf(1/(1-19x+x^2))]`
-/

namespace A097832.P2299266290379743284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -19, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097832.P2299266290379743284

namespace A097832

/-- `∑[ogf(1/(1-19x+x^2))]` -/
def P2299266290379743284.Spec : Prop :=
  ∀ n, P2299266290379743284.a n = A097832 n

end A097832

/-! ## A097832.P7575659205878415627

`ogf(1/(1-20x+20x^2-x^3))`
-/

namespace A097832.P7575659205878415627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -20, 20, -1] n

end

end A097832.P7575659205878415627

namespace A097832

/-- `ogf(1/(1-20x+20x^2-x^3))` -/
def P7575659205878415627.Spec : Prop :=
  ∀ n, P7575659205878415627.a n = A097832 n

end A097832

/-! ## A097832.P16074611778186788752

`∑[19*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=19`
-/

namespace A097832.P16074611778186788752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  19 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097832.P16074611778186788752

namespace A097832

/-- `∑[19*a(n-1)-a(n-2)]` -/
def P16074611778186788752.Spec : Prop :=
  ∀ n, P16074611778186788752.a n = A097832 n

end A097832

/-! ## A097832.P15292369163141802441

`∑[A078368(n)]`
-/

namespace A097832.P15292369163141802441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097832.P15292369163141802441

namespace A097832

/-- `∑[A078368(n)]` -/
def P15292369163141802441.Spec : Prop :=
  ∀ n, P15292369163141802441.a n = A097832 n

end A097832

/-! ## A097832.P3678824671611760586

`∑[∑[A099275(n+1)+A099275(n)]]`
-/

namespace A097832.P3678824671611760586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099275 (n + 1) + A099275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097832.P3678824671611760586

namespace A097832

/-- `∑[∑[A099275(n+1)+A099275(n)]]` -/
def P3678824671611760586.Spec : Prop :=
  ∀ n, P3678824671611760586.a n = A097832 n

end A097832

/-!
# A097833: Partial sums of Chebyshev sequence S(n,20)= U(n,10) = A075843(n+1).

The programs for A097833, the canonical program `A097833.P11384465672913386471` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097833 has offset 0).

The definition of A097833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097833.P11384465672913386471

`20*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097833

/-- `20*a(n-1)-a(n-2)+1` -/
def P11384465672913386471.Spec : Prop :=
  ∀ n, P11384465672913386471.a n = A097833 n

theorem P11384465672913386471.correct : P11384465672913386471.Spec := by
  intro n
  simp only [A097833]

end A097833

/-! ## A097833.P10611679365883088577

`∑[ogf(1/(1-20x+x^2))]`
-/

namespace A097833.P10611679365883088577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -20, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P10611679365883088577

namespace A097833

/-- `∑[ogf(1/(1-20x+x^2))]` -/
def P10611679365883088577.Spec : Prop :=
  ∀ n, P10611679365883088577.a n = A097833 n

end A097833

/-! ## A097833.P8951390541455082494

`ogf(1/(1-21x+21x^2-x^3))`
-/

namespace A097833.P8951390541455082494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -21, 21, -1] n

end

end A097833.P8951390541455082494

namespace A097833

/-- `ogf(1/(1-21x+21x^2-x^3))` -/
def P8951390541455082494.Spec : Prop :=
  ∀ n, P8951390541455082494.a n = A097833 n

end A097833

/-! ## A097833.P18409548828445213008

`∑[record[20*a(n-1)-a(n-2)]]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A097833.P18409548828445213008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f2 =>
  20 * f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P18409548828445213008

namespace A097833

/-- `∑[record[20*a(n-1)-a(n-2)]]` -/
def P18409548828445213008.Spec : Prop :=
  ∀ n, P18409548828445213008.a n = A097833 n

end A097833

/-! ## A097833.P15702269086298378082

`∑[A075843(n+1)]`
-/

namespace A097833.P15702269086298378082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P15702269086298378082

namespace A097833

/-- `∑[A075843(n+1)]` -/
def P15702269086298378082.Spec : Prop :=
  ∀ n, P15702269086298378082.a n = A097833 n

end A097833

/-! ## A097833.P14874860376534572182

`∑[∑[A075839(n+1)]]`
-/

namespace A097833.P14874860376534572182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075839 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P14874860376534572182

namespace A097833

/-- `∑[∑[A075839(n+1)]]` -/
def P14874860376534572182.Spec : Prop :=
  ∀ n, P14874860376534572182.a n = A097833 n

end A097833

/-! ## A097833.P269423376444719906

`∑[∑[A041015(2*n)]]`
-/

namespace A097833.P269423376444719906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041015 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P269423376444719906

namespace A097833

/-- `∑[∑[A041015(2*n)]]` -/
def P269423376444719906.Spec : Prop :=
  ∀ n, P269423376444719906.a n = A097833 n

end A097833

/-! ## A097833.P12574430553910165374

`∑[∑[A041179(2*n)]]`
-/

namespace A097833.P12574430553910165374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041179 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P12574430553910165374

namespace A097833

/-- `∑[∑[A041179(2*n)]]` -/
def P12574430553910165374.Spec : Prop :=
  ∀ n, P12574430553910165374.a n = A097833 n

end A097833

/-! ## A097833.P7531507993743756

`∑[A001084(n+1)/3]`
-/

namespace A097833.P7531507993743756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001084 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P7531507993743756

namespace A097833

/-- `∑[A001084(n+1)/3]` -/
def P7531507993743756.Spec : Prop :=
  ∀ n, P7531507993743756.a n = (A097833 n : ℚ)

end A097833

/-! ## A097833.P6232084787728552283

`∑[record[A075843(A008612(n))]]`
-/

namespace A097833.P6232084787728552283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075843 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097833.P6232084787728552283

namespace A097833

/-- `∑[record[A075843(A008612(n))]]` -/
def P6232084787728552283.Spec : Prop :=
  ∀ n, P6232084787728552283.a n = A097833 n

end A097833

/-!
# A097834: Chebyshev polynomials S(n,27) + S(n-1,27) with Diophantine property.

The programs for A097834, the canonical program `A097834.P7279457304896108372` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097834 has offset 0).

The definition of A097834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097834.P7279457304896108372

`(a(n-1)*a(n-2)-783)/a(n-3)` with `a(0)=1, a(1)=28, a(2)=755`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097834

/-- `(a(n-1)*a(n-2)-783)/a(n-3)` -/
def P7279457304896108372.Spec : Prop :=
  ∀ n, P7279457304896108372.a n = (A097834 n : ℚ)

end A097834

/-! ## A097834.P6027219077136596259

`27*a(n-1)-a(n-2)` with `a(0)=1, a(1)=28`
-/

namespace A097834.P6027219077136596259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  27 * a (n - 1) - a (n - 2)

end

end A097834.P6027219077136596259

namespace A097834

/-- `27*a(n-1)-a(n-2)` -/
def P6027219077136596259.Spec : Prop :=
  ∀ n, P6027219077136596259.a n = A097834 n

end A097834

/-! ## A097834.P1884464776388477814

`∑[A090248(n)]-1`
-/

namespace A097834.P1884464776388477814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097834.P1884464776388477814

namespace A097834

/-- `∑[A090248(n)]-1` -/
def P1884464776388477814.Spec : Prop :=
  ∀ n, P1884464776388477814.a n = A097834 n

end A097834

/-! ## A097834.P4747899276079173296

`A087130(Δ[n²])/5`
-/

namespace A097834.P4747899276079173296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087130 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 5

end

end A097834.P4747899276079173296

namespace A097834

/-- `A087130(Δ[n²])/5` -/
def P4747899276079173296.Spec : Prop :=
  ∀ n, P4747899276079173296.a n = (A097834 n : ℚ)

end A097834

/-! ## A097834.P12648596359607311791

`∑[A087130(2*n)]-1`
-/

namespace A097834.P12648596359607311791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097834.P12648596359607311791

namespace A097834

/-- `∑[A087130(2*n)]-1` -/
def P12648596359607311791.Spec : Prop :=
  ∀ n, P12648596359607311791.a n = A097834 n

end A097834

/-! ## A097834.P9839917080082717112

`∑[A100236(2*n)]+n`
-/

namespace A097834.P9839917080082717112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100236 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A097834.P9839917080082717112

namespace A097834

/-- `∑[A100236(2*n)]+n` -/
def P9839917080082717112.Spec : Prop :=
  ∀ n, P9839917080082717112.a n = A097834 n

end A097834

/-! ## A097834.P522275528389060561

`2*A097781(n)-A097835(n)`
-/

namespace A097834.P522275528389060561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097781 n - A097835 n

end

end A097834.P522275528389060561

namespace A097834

/-- `2*A097781(n)-A097835(n)` -/
def P522275528389060561.Spec : Prop :=
  ∀ n, P522275528389060561.a n = A097834 n

end A097834

/-!
# A097835: First differences of Chebyshev polynomials S(n,27) = A097781(n) with Diophantine property.

The programs for A097835, the canonical program `A097835.P4062051589936731528` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097835 has offset 0).

The definition of A097835 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097835.P4062051589936731528

`27*a(n-1)-a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097835

/-- `27*a(n-1)-a(n-2)` -/
def P4062051589936731528.Spec : Prop :=
  ∀ n, P4062051589936731528.a n = A097835 n

theorem P4062051589936731528.correct : P4062051589936731528.Spec := by
  intro n
  simp only [A097835]

end A097835

/-! ## A097835.P15755058292303031145

`A052918(2*n)`
-/

namespace A097835.P15755058292303031145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (2 * n)

end

end A097835.P15755058292303031145

namespace A097835

/-- `A052918(2*n)` -/
def P15755058292303031145.Spec : Prop :=
  ∀ n, P15755058292303031145.a n = A097835 n

end A097835

/-! ## A097835.P12170312209619623275

`A155181(2*n+1)/4`
-/

namespace A097835.P12170312209619623275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155181 (2 * n + 1) : ℚ) / 4

end

end A097835.P12170312209619623275

namespace A097835

/-- `A155181(2*n+1)/4` -/
def P12170312209619623275.Spec : Prop :=
  ∀ n, P12170312209619623275.a n = (A097835 n : ℚ)

end A097835

/-! ## A097835.P14378928018474312512

`A090248(n)-a(n-1)` with `a(0)=1`
-/

namespace A097835.P14378928018474312512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090248 n - a (n - 1)

end

end A097835.P14378928018474312512

namespace A097835

/-- `A090248(n)-a(n-1)` -/
def P14378928018474312512.Spec : Prop :=
  ∀ n, P14378928018474312512.a n = A097835 n

end A097835

/-! ## A097835.P9750584448202918455

`record[A052918(n+1)^(n%2)]`
-/

namespace A097835.P9750584448202918455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097835.P9750584448202918455

namespace A097835

/-- `record[A052918(n+1)^(n%2)]` -/
def P9750584448202918455.Spec : Prop :=
  ∀ n, P9750584448202918455.a n = A097835 n

end A097835

/-! ## A097835.P4378832397943636969

`record[A052918(A014681(n))]`
-/

namespace A097835.P4378832397943636969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097835.P4378832397943636969

namespace A097835

/-- `record[A052918(A014681(n))]` -/
def P4378832397943636969.Spec : Prop :=
  ∀ n, P4378832397943636969.a n = A097835 n

end A097835

/-! ## A097835.P18325037742806799081

`record[A052918(A083220(n))]`
-/

namespace A097835.P18325037742806799081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (A083220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097835.P18325037742806799081

namespace A097835

/-- `record[A052918(A083220(n))]` -/
def P18325037742806799081.Spec : Prop :=
  ∀ n, P18325037742806799081.a n = A097835 n

end A097835

/-! ## A097835.P7843748809837247017

`record[A052918(A127366(n))]`
-/

namespace A097835.P7843748809837247017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052918 (A127366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097835.P7843748809837247017

namespace A097835

/-- `record[A052918(A127366(n))]` -/
def P7843748809837247017.Spec : Prop :=
  ∀ n, P7843748809837247017.a n = A097835 n

end A097835

/-! ## A097835.P17449031753824964608

`record[gcd(A052918(n), A134746(n))]`
-/

namespace A097835.P17449031753824964608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052918 n) (A134746 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097835.P17449031753824964608

namespace A097835

/-- `record[gcd(A052918(n), A134746(n))]` -/
def P17449031753824964608.Spec : Prop :=
  ∀ n, (P17449031753824964608.a n : ℤ) = A097835 n

end A097835

/-! ## A097835.P14590448893472275758

`A099365(n+1)+A099365(n)`
-/

namespace A097835.P14590448893472275758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099365 (n + 1) + A099365 n

end

end A097835.P14590448893472275758

namespace A097835

/-- `A099365(n+1)+A099365(n)` -/
def P14590448893472275758.Spec : Prop :=
  ∀ n, P14590448893472275758.a n = A097835 n

end A097835

/-!
# A097836: Chebyshev polynomials S(n,51).

The programs for A097836, the canonical program `A097836.P532066699471987509` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097836 has offset 0).

The definition of A097836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097836.P532066699471987509

`51*a(n-1)-a(n-2)` with `a(0)=1, a(1)=51`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097836

/-- `51*a(n-1)-a(n-2)` -/
def P532066699471987509.Spec : Prop :=
  ∀ n, P532066699471987509.a n = A097836 n

theorem P532066699471987509.correct : P532066699471987509.Spec := by
  intro n
  simp only [A097836]

end A097836

/-! ## A097836.P4725529433169283205

`∑[A097838(n)]`
-/

namespace A097836.P4725529433169283205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097838 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097836.P4725529433169283205

namespace A097836

/-- `∑[A097838(n)]` -/
def P4725529433169283205.Spec : Prop :=
  ∀ n, P4725529433169283205.a n = A097836 n

end A097836

/-! ## A097836.P12485183435011806121

`∑[A054413(2*n)]`
-/

namespace A097836.P12485183435011806121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097836.P12485183435011806121

namespace A097836

/-- `∑[A054413(2*n)]` -/
def P12485183435011806121.Spec : Prop :=
  ∀ n, P12485183435011806121.a n = A097836 n

end A097836

/-! ## A097836.P15204959067729808365

`A054413(2*n+1)/7`
-/

namespace A097836.P15204959067729808365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054413 (2 * n + 1) : ℚ) / 7

end

end A097836.P15204959067729808365

namespace A097836

/-- `A054413(2*n+1)/7` -/
def P15204959067729808365.Spec : Prop :=
  ∀ n, P15204959067729808365.a n = (A097836 n : ℚ)

end A097836

/-! ## A097836.P3686550524130287570

`A097837(n)-a(n-1)` with `a(0)=1`
-/

namespace A097836.P3686550524130287570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097837 n - a (n - 1)

end

end A097836.P3686550524130287570

namespace A097836

/-- `A097837(n)-a(n-1)` -/
def P3686550524130287570.Spec : Prop :=
  ∀ n, P3686550524130287570.a n = A097836 n

end A097836

/-! ## A097836.P3682905531883090217

`A054413(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A097836.P3682905531883090217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054413 (n + n) + a (n - 1)

end

end A097836.P3682905531883090217

namespace A097836

/-- `A054413(n+n)+a(n-1)` -/
def P3682905531883090217.Spec : Prop :=
  ∀ n, P3682905531883090217.a n = A097836 n

end A097836

/-! ## A097836.P13760447348672842551

`∑[record[A054413(A127366(n))]]`
-/

namespace A097836.P13760447348672842551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 (A127366 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097836.P13760447348672842551

namespace A097836

/-- `∑[record[A054413(A127366(n))]]` -/
def P13760447348672842551.Spec : Prop :=
  ∀ n, P13760447348672842551.a n = A097836 n

end A097836

/-! ## A097836.P3921596834785063808

`∑[A099367(n+1)+A099367(n)]`
-/

namespace A097836.P3921596834785063808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099367 (n + 1) + A099367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097836.P3921596834785063808

namespace A097836

/-- `∑[A099367(n+1)+A099367(n)]` -/
def P3921596834785063808.Spec : Prop :=
  ∀ n, P3921596834785063808.a n = A097836 n

end A097836

/-!
# A097837: Chebyshev polynomials S(n,51) + S(n-1,51) with Diophantine property.

The programs for A097837, the canonical program `A097837.P3229006563701793111` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097837 has offset 0).

The definition of A097837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097837.P3229006563701793111

`51*a(n-1)-a(n-2)` with `a(0)=1, a(1)=52`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097837

/-- `51*a(n-1)-a(n-2)` -/
def P3229006563701793111.Spec : Prop :=
  ∀ n, P3229006563701793111.a n = A097837 n

theorem P3229006563701793111.correct : P3229006563701793111.Spec := by
  intro n
  simp only [A097837]

end A097837

/-! ## A097837.P12606235363743109093

`∑[A099368(n)]-1`
-/

namespace A097837.P12606235363743109093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097837.P12606235363743109093

namespace A097837

/-- `∑[A099368(n)]-1` -/
def P12606235363743109093.Spec : Prop :=
  ∀ n, P12606235363743109093.a n = A097837 n

end A097837

/-! ## A097837.P6610251059969706922

`A086902(Δ[n²])/7`
-/

namespace A097837.P6610251059969706922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086902 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 7

end

end A097837.P6610251059969706922

namespace A097837

/-- `A086902(Δ[n²])/7` -/
def P6610251059969706922.Spec : Prop :=
  ∀ n, P6610251059969706922.a n = (A097837 n : ℚ)

end A097837

/-! ## A097837.P14087457587739345463

`∑[A086902(2*n)]-1`
-/

namespace A097837.P14087457587739345463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086902 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097837.P14087457587739345463

namespace A097837

/-- `∑[A086902(2*n)]-1` -/
def P14087457587739345463.Spec : Prop :=
  ∀ n, P14087457587739345463.a n = A097837 n

end A097837

/-! ## A097837.P13362752152562144391

`2*A097836(n)-A097838(n)`
-/

namespace A097837.P13362752152562144391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097836 n - A097838 n

end

end A097837.P13362752152562144391

namespace A097837

/-- `2*A097836(n)-A097838(n)` -/
def P13362752152562144391.Spec : Prop :=
  ∀ n, P13362752152562144391.a n = A097837 n

end A097837

/-! ## A097837.P17189187757829597203

`A097836(n+1)+A097836(n)-A099368(n+1)`
-/

namespace A097837.P17189187757829597203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097836 (n + 1) + (A097836 n - A099368 (n + 1))

end

end A097837.P17189187757829597203

namespace A097837

/-- `A097836(n+1)+A097836(n)-A099368(n+1)` -/
def P17189187757829597203.Spec : Prop :=
  ∀ n, P17189187757829597203.a n = A097837 n

end A097837

/-!
# A097838: First differences of Chebyshev polynomials S(n,51) = A097836(n) with Diophantine property.

The programs for A097838, the canonical program `A097838.P6038099397338062299` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097838 has offset 0).

The definition of A097838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097838.P6038099397338062299

`51*a(n-1)-a(n-2)` with `a(0)=1, a(1)=50`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097838

/-- `51*a(n-1)-a(n-2)` -/
def P6038099397338062299.Spec : Prop :=
  ∀ n, P6038099397338062299.a n = A097838 n

theorem P6038099397338062299.correct : P6038099397338062299.Spec := by
  intro n
  simp only [A097838]

end A097838

/-! ## A097838.P1434621699418867940

`A054413(2*n)`
-/

namespace A097838.P1434621699418867940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 (2 * n)

end

end A097838.P1434621699418867940

namespace A097838

/-- `A054413(2*n)` -/
def P1434621699418867940.Spec : Prop :=
  ∀ n, P1434621699418867940.a n = A097838 n

end A097838

/-! ## A097838.P6739465757926156029

`A155196(2*n+1)/6`
-/

namespace A097838.P6739465757926156029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155196 (2 * n + 1) : ℚ) / 6

end

end A097838.P6739465757926156029

namespace A097838

/-- `A155196(2*n+1)/6` -/
def P6739465757926156029.Spec : Prop :=
  ∀ n, P6739465757926156029.a n = (A097838 n : ℚ)

end A097838

/-! ## A097838.P10538394682794096399

`A099368(n)-a(n-1)` with `a(0)=1`
-/

namespace A097838.P10538394682794096399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099368 n - a (n - 1)

end

end A097838.P10538394682794096399

namespace A097838

/-- `A099368(n)-a(n-1)` -/
def P10538394682794096399.Spec : Prop :=
  ∀ n, P10538394682794096399.a n = A097838 n

end A097838

/-! ## A097838.P10321353858247561615

`record[gcd(val(n+1, 2), A054413(n))]`
-/

namespace A097838.P10321353858247561615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A054413 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097838.P10321353858247561615

namespace A097838

/-- `record[gcd(val(n+1, 2), A054413(n))]` -/
def P10321353858247561615.Spec : Prop :=
  ∀ n, (P10321353858247561615.a n : ℤ) = A097838 n

end A097838

/-! ## A097838.P6540358567832564303

`record[A054413(C(n, a(n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A097838.P6540358567832564303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A054413 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097838.P6540358567832564303

namespace A097838

/-- `record[A054413(C(n, a(n-1)))]` -/
def P6540358567832564303.Spec : Prop :=
  ∀ n, P6540358567832564303.a n = A097838 n

end A097838

/-! ## A097838.P10557132714972956483

`record[A054413(A127366(n))]`
-/

namespace A097838.P10557132714972956483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054413 (A127366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097838.P10557132714972956483

namespace A097838

/-- `record[A054413(A127366(n))]` -/
def P10557132714972956483.Spec : Prop :=
  ∀ n, P10557132714972956483.a n = A097838 n

end A097838

/-! ## A097838.P5066331729584332129

`A099367(n)+A054413(n)²`
-/

namespace A097838.P5066331729584332129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099367 n + A054413 n ^ 2

end

end A097838.P5066331729584332129

namespace A097838

/-- `A099367(n)+A054413(n)²` -/
def P5066331729584332129.Spec : Prop :=
  ∀ n, P5066331729584332129.a n = A097838 n

end A097838

/-! ## A097838.P14556790059832177519

`A099367(n+1)+A099367(n)`
-/

namespace A097838.P14556790059832177519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099367 (n + 1) + A099367 n

end

end A097838.P14556790059832177519

namespace A097838

/-- `A099367(n+1)+A099367(n)` -/
def P14556790059832177519.Spec : Prop :=
  ∀ n, P14556790059832177519.a n = A097838 n

end A097838

/-! ## A097838.P10666510832944368624

`2*A097836(n)-A097837(n)`
-/

namespace A097838.P10666510832944368624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097836 n - A097837 n

end

end A097838.P10666510832944368624

namespace A097838

/-- `2*A097836(n)-A097837(n)` -/
def P10666510832944368624.Spec : Prop :=
  ∀ n, P10666510832944368624.a n = A097838 n

end A097838

/-!
# A097839: Chebyshev polynomials S(n,83).

The programs for A097839, the canonical program `A097839.P17522717518988878525` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097839 has offset 0).

The definition of A097839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097839.P17522717518988878525

`83*a(n-1)-a(n-2)` with `a(0)=1, a(1)=83`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097839

/-- `83*a(n-1)-a(n-2)` -/
def P17522717518988878525.Spec : Prop :=
  ∀ n, P17522717518988878525.a n = A097839 n

theorem P17522717518988878525.correct : P17522717518988878525.Spec := by
  intro n
  simp only [A097839]

end A097839

/-! ## A097839.P4928051444863983753

`∑[A097841(n)]`
-/

namespace A097839.P4928051444863983753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097839.P4928051444863983753

namespace A097839

/-- `∑[A097841(n)]` -/
def P4928051444863983753.Spec : Prop :=
  ∀ n, P4928051444863983753.a n = A097839 n

end A097839

/-! ## A097839.P16981848634984306040

`∑[A099371(2*n+1)]`
-/

namespace A097839.P16981848634984306040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097839.P16981848634984306040

namespace A097839

/-- `∑[A099371(2*n+1)]` -/
def P16981848634984306040.Spec : Prop :=
  ∀ n, P16981848634984306040.a n = A097839 n

end A097839

/-! ## A097839.P5382762284955132766

`A097840(n)-a(n-1)` with `a(0)=1`
-/

namespace A097839.P5382762284955132766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097840 n - a (n - 1)

end

end A097839.P5382762284955132766

namespace A097839

/-- `A097840(n)-a(n-1)` -/
def P5382762284955132766.Spec : Prop :=
  ∀ n, P5382762284955132766.a n = A097839 n

end A097839

/-! ## A097839.P2923170959066076765

`∑[A099373(n)-a(n-1)]` with `a(0)=1`
-/

namespace A097839.P2923170959066076765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A099373 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097839.P2923170959066076765

namespace A097839

/-- `∑[A099373(n)-a(n-1)]` -/
def P2923170959066076765.Spec : Prop :=
  ∀ n, P2923170959066076765.a n = A097839 n

end A097839

/-! ## A097839.P3705620655588773185

`∑[record[A099371(A004442(n))]]`
-/

namespace A097839.P3705620655588773185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 (A004442 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097839.P3705620655588773185

namespace A097839

/-- `∑[record[A099371(A004442(n))]]` -/
def P3705620655588773185.Spec : Prop :=
  ∀ n, P3705620655588773185.a n = A097839 n

end A097839

/-! ## A097839.P1266337721799425960

`∑[A099372(n+1)+A099372(n)]`
-/

namespace A097839.P1266337721799425960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099372 (n + 1) + A099372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097839.P1266337721799425960

namespace A097839

/-- `∑[A099372(n+1)+A099372(n)]` -/
def P1266337721799425960.Spec : Prop :=
  ∀ n, P1266337721799425960.a n = A097839 n

end A097839

/-! ## A097839.P17848453602447025525

`A099371(A004277(n+1))/9`
-/

namespace A097839.P17848453602447025525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099371 (A004277 (n + 1)).toNat : ℚ) / 9

end

end A097839.P17848453602447025525

namespace A097839

/-- `A099371(A004277(n+1))/9` -/
def P17848453602447025525.Spec : Prop :=
  ∀ n, P17848453602447025525.a n = (A097839 n : ℚ)

end A097839

/-!
# A097840: Chebyshev polynomials S(n,83) + S(n-1,83) with Diophantine property.

The programs for A097840, the canonical program `A097840.P6547087835919941429` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097840 has offset 0).

The definition of A097840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097840.P6547087835919941429

`83*a(n-1)-a(n-2)` with `a(0)=1, a(1)=84`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097840

/-- `83*a(n-1)-a(n-2)` -/
def P6547087835919941429.Spec : Prop :=
  ∀ n, P6547087835919941429.a n = A097840 n

theorem P6547087835919941429.correct : P6547087835919941429.Spec := by
  intro n
  simp only [A097840]

end A097840

/-! ## A097840.P6340614157871320369

`∑[A099373(n)]-1`
-/

namespace A097840.P6340614157871320369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097840.P6340614157871320369

namespace A097840

/-- `∑[A099373(n)]-1` -/
def P6340614157871320369.Spec : Prop :=
  ∀ n, P6340614157871320369.a n = A097840 n

end A097840

/-! ## A097840.P6152260342528187632

`∑[A087798(2*n)]-1`
-/

namespace A097840.P6152260342528187632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087798 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097840.P6152260342528187632

namespace A097840

/-- `∑[A087798(2*n)]-1` -/
def P6152260342528187632.Spec : Prop :=
  ∀ n, P6152260342528187632.a n = A097840 n

end A097840

/-! ## A097840.P8281868951932176437

`A097839(n)+A097839(n)-A097841(n)`
-/

namespace A097840.P8281868951932176437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097839 n + (A097839 n - A097841 n)

end

end A097840.P8281868951932176437

namespace A097840

/-- `A097839(n)+A097839(n)-A097841(n)` -/
def P8281868951932176437.Spec : Prop :=
  ∀ n, P8281868951932176437.a n = A097840 n

end A097840

/-! ## A097840.P5744955035737584263

`A087798(Δ[n²])/9`
-/

namespace A097840.P5744955035737584263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087798 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 9

end

end A097840.P5744955035737584263

namespace A097840

/-- `A087798(Δ[n²])/9` -/
def P5744955035737584263.Spec : Prop :=
  ∀ n, P5744955035737584263.a n = (A097840 n : ℚ)

end A097840

/-! ## A097840.P4864480568350594269

`2*A097839(n)-A097841(n)`
-/

namespace A097840.P4864480568350594269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097839 n - A097841 n

end

end A097840.P4864480568350594269

namespace A097840

/-- `2*A097839(n)-A097841(n)` -/
def P4864480568350594269.Spec : Prop :=
  ∀ n, P4864480568350594269.a n = A097840 n

end A097840

/-! ## A097840.P17785943170842454026

`record[A087798(n+1)/A087798(A007814(n+1)+1)]`
-/

namespace A097840.P17785943170842454026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087798 (n + 1) : ℚ) / (A087798 (A007814 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097840.P17785943170842454026

namespace A097840

/-- `record[A087798(n+1)/A087798(A007814(n+1)+1)]` -/
def P17785943170842454026.Spec : Prop :=
  ∀ n, P17785943170842454026.a n = (A097840 n : ℚ)

end A097840

/-!
# A097841: First differences of Chebyshev polynomials S(n,83) = A097839(n) with Diophantine property.

The programs for A097841, the canonical program `A097841.P5642386255070091784` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097841 has offset 0).

The definition of A097841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097841.P5642386255070091784

`83*a(n-1)-a(n-2)` with `a(0)=1, a(1)=82`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097841

/-- `83*a(n-1)-a(n-2)` -/
def P5642386255070091784.Spec : Prop :=
  ∀ n, P5642386255070091784.a n = A097841 n

theorem P5642386255070091784.correct : P5642386255070091784.Spec := by
  intro n
  simp only [A097841]

end A097841

/-! ## A097841.P4950298454582870787

`A099371(2*n+1)`
-/

namespace A097841.P4950298454582870787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 (2 * n + 1)

end

end A097841.P4950298454582870787

namespace A097841

/-- `A099371(2*n+1)` -/
def P4950298454582870787.Spec : Prop :=
  ∀ n, P4950298454582870787.a n = A097841 n

end A097841

/-! ## A097841.P15817284854453185071

`A099371(n)²+A099371(n+1)²`
-/

namespace A097841.P15817284854453185071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 n ^ 2 + A099371 (n + 1) ^ 2

end

end A097841.P15817284854453185071

namespace A097841

/-- `A099371(n)²+A099371(n+1)²` -/
def P15817284854453185071.Spec : Prop :=
  ∀ n, P15817284854453185071.a n = A097841 n

end A097841

/-! ## A097841.P12496829218309816325

`A099373(n)-a(n-1)` with `a(0)=1`
-/

namespace A097841.P12496829218309816325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099373 n - a (n - 1)

end

end A097841.P12496829218309816325

namespace A097841

/-- `A099373(n)-a(n-1)` -/
def P12496829218309816325.Spec : Prop :=
  ∀ n, P12496829218309816325.a n = A097841 n

end A097841

/-! ## A097841.P2519575707601835321

`record[A099371(A004442(n))]`
-/

namespace A097841.P2519575707601835321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097841.P2519575707601835321

namespace A097841

/-- `record[A099371(A004442(n))]` -/
def P2519575707601835321.Spec : Prop :=
  ∀ n, P2519575707601835321.a n = A097841 n

end A097841

/-! ## A097841.P4891903985704098768

`record[A099371(A099375(n))]`
-/

namespace A097841.P4891903985704098768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099371 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097841.P4891903985704098768

namespace A097841

/-- `record[A099371(A099375(n))]` -/
def P4891903985704098768.Spec : Prop :=
  ∀ n, P4891903985704098768.a n = A097841 n

end A097841

/-! ## A097841.P1347673719665514884

`A099372(n+1)+A099372(n)`
-/

namespace A097841.P1347673719665514884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099372 (n + 1) + A099372 n

end

end A097841.P1347673719665514884

namespace A097841

/-- `A099372(n+1)+A099372(n)` -/
def P1347673719665514884.Spec : Prop :=
  ∀ n, P1347673719665514884.a n = A097841 n

end A097841

/-! ## A097841.P13397100008458798539

`abs(A099371(A099375(∑[n]))-1)+1`
-/

namespace A097841.P13397100008458798539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099371 (A099375 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1| + 1

end

end A097841.P13397100008458798539

namespace A097841

/-- `abs(A099371(A099375(∑[n]))-1)+1` -/
def P13397100008458798539.Spec : Prop :=
  ∀ n, P13397100008458798539.a n = A097841 n

end A097841

/-! ## A097841.P8138043089543482752

`A155198(Δ[n²])/8`
-/

namespace A097841.P8138043089543482752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155198 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 8

end

end A097841.P8138043089543482752

namespace A097841

/-- `A155198(Δ[n²])/8` -/
def P8138043089543482752.Spec : Prop :=
  ∀ n, P8138043089543482752.a n = (A097841 n : ℚ)

end A097841

/-! ## A097841.P18421279866857327697

`Δ[A097840(n)-A097839(n)]`
-/

namespace A097841.P18421279866857327697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097840 n - A097839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097841.P18421279866857327697

namespace A097841

/-- `Δ[A097840(n)-A097839(n)]` -/
def P18421279866857327697.Spec : Prop :=
  ∀ n, P18421279866857327697.a n = A097841 n

end A097841

/-!
# A097842: Chebyshev polynomials S(n,123) + S(n-1,123) with Diophantine property.

The programs for A097842, the canonical program `A097842.P4863066668582876363` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097842 has offset 0).

The definition of A097842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097842.P4863066668582876363

`123*a(n-1)-a(n-2)` with `a(0)=1, a(1)=124`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097842

/-- `123*a(n-1)-a(n-2)` -/
def P4863066668582876363.Spec : Prop :=
  ∀ n, P4863066668582876363.a n = A097842 n

theorem P4863066668582876363.correct : P4863066668582876363.Spec := by
  intro n
  simp only [A097842]

end A097842

/-! ## A097842.P3140216279495239451

`∑[ceil(ϕ^(10*n))]`
-/

namespace A097842.P3140216279495239451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (10 * n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097842.P3140216279495239451

namespace A097842

/-- `∑[ceil(ϕ^(10*n))]` -/
def P3140216279495239451.Spec : Prop :=
  ∀ n, P3140216279495239451.a n = A097842 n

end A097842

/-! ## A097842.P4592245593976628434

`∑[A065705(n)]-1`
-/

namespace A097842.P4592245593976628434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097842.P4592245593976628434

namespace A097842

/-- `∑[A065705(n)]-1` -/
def P4592245593976628434.Spec : Prop :=
  ∀ n, P4592245593976628434.a n = A097842 n

end A097842

/-! ## A097842.P14582214586506134529

`∑[A000032(10*n)]-1`
-/

namespace A097842.P14582214586506134529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (10 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097842.P14582214586506134529

namespace A097842

/-- `∑[A000032(10*n)]-1` -/
def P14582214586506134529.Spec : Prop :=
  ∀ n, P14582214586506134529.a n = A097842 n

end A097842

/-! ## A097842.P9980807937472937783

`A000032(10*n+5)/11`
-/

namespace A097842.P9980807937472937783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (10 * n + 5) : ℚ) / 11

end

end A097842.P9980807937472937783

namespace A097842

/-- `A000032(10*n+5)/11` -/
def P9980807937472937783.Spec : Prop :=
  ∀ n, P9980807937472937783.a n = (A097842 n : ℚ)

end A097842

/-!
# A097843: First differences of Chebyshev polynomials S(n,123) = A049670(n+1) with Diophantine property.

The programs for A097843, the canonical program `A097843.P14768439155799978658` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097843 has offset 0).

The definition of A097843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097843.P14768439155799978658

`123*a(n-1)-a(n-2)` with `a(0)=1, a(1)=122`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097843

/-- `123*a(n-1)-a(n-2)` -/
def P14768439155799978658.Spec : Prop :=
  ∀ n, P14768439155799978658.a n = A097843 n

theorem P14768439155799978658.correct : P14768439155799978658.Spec := by
  intro n
  simp only [A097843]

end A097843

/-! ## A097843.P1707842580769391700

`A049666(2*n+1)`
-/

namespace A097843.P1707842580769391700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (2 * n + 1)

end

end A097843.P1707842580769391700

namespace A097843

/-- `A049666(2*n+1)` -/
def P1707842580769391700.Spec : Prop :=
  ∀ n, P1707842580769391700.a n = A097843 n

end A097843

/-! ## A097843.P5692077800739594645

`Δ[A049670(n)]`
-/

namespace A097843.P5692077800739594645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097843.P5692077800739594645

namespace A097843

/-- `Δ[A049670(n)]` -/
def P5692077800739594645.Spec : Prop :=
  ∀ n, P5692077800739594645.a n = A097843 n

end A097843

/-! ## A097843.P11541504963309470056

`record[A049666(xor(1, n))]`
-/

namespace A097843.P11541504963309470056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097843.P11541504963309470056

namespace A097843

/-- `record[A049666(xor(1, n))]` -/
def P11541504963309470056.Spec : Prop :=
  ∀ n, P11541504963309470056.a n = A097843 n

end A097843

/-! ## A097843.P4265005881758706830

`A004698(5*(2*n+1))`
-/

namespace A097843.P4265005881758706830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 (5 * (2 * n + 1))

end

end A097843.P4265005881758706830

namespace A097843

/-- `A004698(5*(2*n+1))` -/
def P4265005881758706830.Spec : Prop :=
  ∀ n, P4265005881758706830.a n = A097843 n

end A097843

/-!
# A097844: Chebyshev polynomials S(n,171).

The programs for A097844, the canonical program `A097844.P2805485431030526866` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097844 has offset 0).

The definition of A097844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097844.P2805485431030526866

`171*a(n-1)-a(n-2)` with `a(0)=1, a(1)=171`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097844

/-- `171*a(n-1)-a(n-2)` -/
def P2805485431030526866.Spec : Prop :=
  ∀ n, P2805485431030526866.a n = A097844 n

theorem P2805485431030526866.correct : P2805485431030526866.Spec := by
  intro n
  simp only [A097844]

end A097844

/-! ## A097844.P2257399605108476041

`∑[A098244(n)]`
-/

namespace A097844.P2257399605108476041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097844.P2257399605108476041

namespace A097844

/-- `∑[A098244(n)]` -/
def P2257399605108476041.Spec : Prop :=
  ∀ n, P2257399605108476041.a n = A097844 n

end A097844

/-! ## A097844.P7376148776329657538

`∑[A140455(record[xor(1, n)])]`
-/

namespace A097844.P7376148776329657538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140455 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097844.P7376148776329657538

namespace A097844

/-- `∑[A140455(record[xor(1, n)])]` -/
def P7376148776329657538.Spec : Prop :=
  ∀ n, P7376148776329657538.a n = A097844 n

end A097844

/-! ## A097844.P16785571163764477664

`∑[A140455(2*n+1)]`
-/

namespace A097844.P16785571163764477664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140455 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097844.P16785571163764477664

namespace A097844

/-- `∑[A140455(2*n+1)]` -/
def P16785571163764477664.Spec : Prop :=
  ∀ n, P16785571163764477664.a n = A097844 n

end A097844

/-! ## A097844.P7837162665867705970

`A097845(n)-a(n-1)` with `a(0)=1`
-/

namespace A097844.P7837162665867705970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097845 n - a (n - 1)

end

end A097844.P7837162665867705970

namespace A097844

/-- `A097845(n)-a(n-1)` -/
def P7837162665867705970.Spec : Prop :=
  ∀ n, P7837162665867705970.a n = A097844 n

end A097844

/-!
# A097845: Chebyshev polynomials S(n,171) + S(n-1,171) with Diophantine property.

The programs for A097845, the canonical program `A097845.P7716739935577697480` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097845 has offset 0).

The definition of A097845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097845.P7716739935577697480

`171*a(n-1)-a(n-2)` with `a(0)=1, a(1)=172`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097845

/-- `171*a(n-1)-a(n-2)` -/
def P7716739935577697480.Spec : Prop :=
  ∀ n, P7716739935577697480.a n = A097845 n

theorem P7716739935577697480.correct : P7716739935577697480.Spec := by
  intro n
  simp only [A097845]

end A097845

/-! ## A097845.P12638137925718651602

`∑[A088316(2*n)]-1`
-/

namespace A097845.P12638137925718651602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088316 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A097845.P12638137925718651602

namespace A097845

/-- `∑[A088316(2*n)]-1` -/
def P12638137925718651602.Spec : Prop :=
  ∀ n, P12638137925718651602.a n = A097845 n

end A097845

/-! ## A097845.P12705864452081167797

`A088316(2*n+1)/13`
-/

namespace A097845.P12705864452081167797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088316 (2 * n + 1) : ℚ) / 13

end

end A097845.P12705864452081167797

namespace A097845

/-- `A088316(2*n+1)/13` -/
def P12705864452081167797.Spec : Prop :=
  ∀ n, P12705864452081167797.a n = (A097845 n : ℚ)

end A097845

/-! ## A097845.P15760875376331236937

`record[ratio[A088316(n^(n%2))]]`
-/

namespace A097845.P15760875376331236937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088316 (n ^ (n % 2))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097845.P15760875376331236937

namespace A097845

/-- `record[ratio[A088316(n^(n%2))]]` -/
def P15760875376331236937.Spec : Prop :=
  ∀ n, P15760875376331236937.a n = (A097845 n : ℚ)

end A097845

/-! ## A097845.P12595425516384257007

`2*A097844(n)-A098244(n)`
-/

namespace A097845.P12595425516384257007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097844 n - A098244 n

end

end A097845.P12595425516384257007

namespace A097845

/-- `2*A097844(n)-A098244(n)` -/
def P12595425516384257007.Spec : Prop :=
  ∀ n, P12595425516384257007.a n = A097845 n

end A097845

/-!
# A097846: Differences between A097598 and A045918.

The programs for A097846, there is no canonical definition to state claims against.
-/

/-! ## A097846.P1861621633231905539

`-(11*(11*floor(n/10)-n)*dr(n-dr(n)))`
-/

namespace A097846.P1861621633231905539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(11 * ((11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * (SequenceMachineLib.digitalRoot ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) : ℤ)))

end

end A097846.P1861621633231905539

/-! ## A097846.P14978954548942396796

`11-11*((11*floor(n/10)-n)*dr(n-dr(n))+1)`
-/

namespace A097846.P14978954548942396796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - 11 * ((11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * (SequenceMachineLib.digitalRoot ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) : ℤ) + 1)

end

end A097846.P14978954548942396796

/-! ## A097846.P5182199381873107836

`-(11*A056965(n))`
-/

namespace A097846.P5182199381873107836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(11 * A056965 n)

end

end A097846.P5182199381873107836

/-! ## A097846.P11277240561271063412

`11*(A004086(n)-n)`
-/

namespace A097846.P11277240561271063412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A004086 n - (n : ℤ))

end

end A097846.P11277240561271063412

/-! ## A097846.P13288366620929675310

`11*(A345110(n)-n)`
-/

namespace A097846.P13288366620929675310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A345110 n - (n : ℤ))

end

end A097846.P13288366620929675310

/-!
# A097847: Triangle read by rows: T(n,k) = minimal number of terms needed to write k/n (for 1 <= k <= n) as a sum of unit fractions.

The programs for A097847, there is no canonical definition to state claims against.
-/

/-! ## A097847.P2123648175738329201

`A281530(∑[char[comp[∑[n]]]]+2)`
-/

namespace A097847.P2123648175738329201
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281530 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A097847.P2123648175738329201

/-! ## A097847.P3040658267042676559

`A050205((n+1-∑[char[∑[n]]])%(n+1)+2)`
-/

namespace A097847.P3040658267042676559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (Int.tmod ((n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (n + 1 : ℤ) + 2).toNat

end

end A097847.P3040658267042676559

/-! ## A097847.P14728343376651813691

`A050205(A122797(n+1)+1)`
-/

namespace A097847.P14728343376651813691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (A122797 (n + 1) + 1).toNat

end

end A097847.P14728343376651813691

/-! ## A097847.P11518084547071702623

`A050205(A185868(n+1)+2)`
-/

namespace A097847.P11518084547071702623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (A185868 (n + 1) + 2).toNat

end

end A097847.P11518084547071702623

/-! ## A097847.P14018418407222483806

`A050205(2-A003056(n)+n)`
-/

namespace A097847.P14018418407222483806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050205 (2 - A003056 n + (n : ℤ)).toNat

end

end A097847.P14018418407222483806

/-!
# A097848: Triangle read by rows: T(n,k) = minimal number of terms needed to write k/n (for 1 <= k <= n with gcd(k,n) = 1) as a sum of unit fractions.

The programs for A097848, there is no canonical definition to state claims against.
-/

/-! ## A097848.P16124007371462449258

`A097847(A169581(n+1))`
-/

namespace A097848.P16124007371462449258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097847 (A169581 (n + 1)).toNat

end

end A097848.P16124007371462449258

/-! ## A097848.P8291819042284958816

`A001221(A038566(n+1)*A322902(3*(n+1)))`
-/

namespace A097848.P8291819042284958816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038566 (n + 1) * A322902 (3 * (n + 1))).toNat

end

end A097848.P8291819042284958816

/-! ## A097848.P89413266127401905

`A001222(or(2, A086520(A033428(n))))`
-/

namespace A097848.P89413266127401905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 2 (A086520 (A033428 n).toNat)).toNat

end

end A097848.P89413266127401905

/-! ## A097848.P9763864551282139273

`A001221(∑[A020634(A130290(n+1))])`
-/

namespace A097848.P9763864551282139273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020634 (A130290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097848.P9763864551282139273

/-! ## A097848.P11983674139962856710

`A322869(2^A342022(n))`
-/

namespace A097848.P11983674139962856710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A342022 n : ℤ))).toNat

end

end A097848.P11983674139962856710

/-!
# A097849: Maximal entry in row n of A097847.

The programs for A097849, there is no canonical definition to state claims against.
-/

/-! ## A097849.P1234452069867622132

`A330808(n+1)+A010054(A005897(n))`
-/

namespace A097849.P1234452069867622132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (n + 1) + A010054 (A005897 n).toNat

end

end A097849.P1234452069867622132

/-! ## A097849.P4578723164648613957

`A330808(n+1)+A000007(A033579(n))`
-/

namespace A097849.P4578723164648613957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (n + 1) + A000007 (A033579 n).toNat

end

end A097849.P4578723164648613957

/-! ## A097849.P6164759152828511103

`A330808(n+1)+A039966(A033581(n))`
-/

namespace A097849.P6164759152828511103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (n + 1) + A039966 (A033581 n).toNat

end

end A097849.P6164759152828511103

/-! ## A097849.P16165003825684958520

`A330808(n+1)+A000007(2*A183126(n))`
-/

namespace A097849.P16165003825684958520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330808 (n + 1) + A000007 (2 * A183126 n).toNat

end

end A097849.P16165003825684958520

/-! ## A097849.P12967165606545062934

`gcd(A077006(n+1), A330808(n+1))`
-/

namespace A097849.P12967165606545062934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077006 (n + 1)) (A330808 (n + 1))

end

end A097849.P12967165606545062934

/-!
# A097851: G.f.: (1+x^8+x^9+x^10+x^18)/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)*(1-x^6)*(1-x^7)).

The programs for A097851, there is no canonical definition to state claims against.
-/

/-! ## A097851.P10485771933719652814

`A001981(n)-A001982(n)`
-/

namespace A097851.P10485771933719652814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001981 n - A001982 n

end

end A097851.P10485771933719652814

/-! ## A097851.P4258132672182877784

`A201503(A133263(n+6)+6)-A001982(n)`
-/

namespace A097851.P4258132672182877784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A133263 (n + 6) + 6).toNat - A001982 n

end

end A097851.P4258132672182877784

/-! ## A097851.P11423608999520161600

`A201503(A000217(n+6)+8)-A001982(n)`
-/

namespace A097851.P11423608999520161600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 6) + 8).toNat - A001982 n

end

end A097851.P11423608999520161600

/-! ## A097851.P2416165666473416761

`A201503(A167614(n+4)+n+11)-A001982(n)`
-/

namespace A097851.P2416165666473416761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A167614 (n + 4) + (n + 11 : ℤ)).toNat - A001982 n

end

end A097851.P2416165666473416761

/-! ## A097851.P16292561051261749505

`A201503(A056000(n+3)+3)-A001982(n)`
-/

namespace A097851.P16292561051261749505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A056000 (n + 3) + 3).toNat - A001982 n

end

end A097851.P16292561051261749505

/-! ## A097851.P14149737979753317598

`A201503(A027379(n+5)-4)-A001982(n)`
-/

namespace A097851.P14149737979753317598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A027379 (n + 5) - 4).toNat - A001982 n

end

end A097851.P14149737979753317598

/-!
# A097852: Expansion of (1+x^15)/((1-x^2)*(1-x^4)*(1-x^6)*(1-x^10)).

The programs for A097852, there is no canonical definition to state claims against.
-/

/-! ## A097852.P9034248225585789253

`A001977(n)-A001978(n)`
-/

namespace A097852.P9034248225585789253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 n - A001978 n

end

end A097852.P9034248225585789253

/-! ## A097852.P4523762357691196129

`A001977(n)+A001978(n)*A153881(n+1)`
-/

namespace A097852.P4523762357691196129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001977 n + A001978 n * A153881 (n + 1)

end

end A097852.P4523762357691196129

/-! ## A097852.P13405449560947460191

`A001977(n)+A001978(n)/A153881(n+2)`
-/

namespace A097852.P13405449560947460191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001977 n : ℚ) + (A001978 n : ℚ) / (A153881 (n + 2) : ℚ)

end

end A097852.P13405449560947460191

/-! ## A097852.P11371435652251847360

`A201503(∑[n+5]+5)-A001978(n)`
-/

namespace A097852.P11371435652251847360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (∑ j ∈ Finset.range (n + 1), f1 j + 5) - A001978 n

end

end A097852.P11371435652251847360

/-! ## A097852.P5154087678034938869

`and(A126646(n), A201503(A000217(n+5)-5))-A001978(n)`
-/

namespace A097852.P5154087678034938869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A201503 (A000217 (n + 5) - 5).toNat) - A001978 n

end

end A097852.P5154087678034938869

/-! ## A097852.P9020264549339631011

`A201503(Δ[A023545(n+1)]-1)%A025094(n+1)-A001978(n)`
-/

namespace A097852.P9020264549339631011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201503 (f1 (n + 1) - f1 n - 1).toNat) (A025094 (n + 1)) - A001978 n

end

end A097852.P9020264549339631011

/-! ## A097852.P8597468717431241256

`A201503(A000217(n+5)-5)+A008683(A001248(n+1))-A001978(n)`
-/

namespace A097852.P8597468717431241256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 5) - 5).toNat + A008683 (A001248 (n + 1)).toNat - A001978 n

end

end A097852.P8597468717431241256

/-! ## A097852.P10992290046694592408

`A183917(∑[n+2]-1)-A001978(n)`
-/

namespace A097852.P10992290046694592408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A001978 n

end

end A097852.P10992290046694592408

/-!
# A097853: Period of continued fraction for square root of n (or 1 if n is a square).

The programs for A097853, there is no canonical definition to state claims against.
-/

/-! ## A097853.P8684903816425155665

`round(sqrt(A003285(n+1)²+1))`
-/

namespace A097853.P8684903816425155665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A003285 (n + 1) ^ 2 + 1 : ℝ))

end

end A097853.P8684903816425155665

/-! ## A097853.P18010727869521689710

`A028310(A003285(n+1))`
-/

namespace A097853.P18010727869521689710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A003285 (n + 1)).toNat

end

end A097853.P18010727869521689710

/-! ## A097853.P16766896196330534197

`A013943(A028391(n)+1)`
-/

namespace A097853.P16766896196330534197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (A028391 n + 1).toNat

end

end A097853.P16766896196330534197

/-! ## A097853.P16392306938541400004

`A013943(A173517(n)+1)`
-/

namespace A097853.P16392306938541400004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (A173517 n + 1).toNat

end

end A097853.P16392306938541400004

/-! ## A097853.P9497721440616285715

`A028310(A067280(n+1)-1)`
-/

namespace A097853.P9497721440616285715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A067280 (n + 1) - 1).toNat

end

end A097853.P9497721440616285715

/-! ## A097853.P7494666548600106143

`A065033(2*A003285(n+1))`
-/

namespace A097853.P7494666548600106143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A003285 (n + 1)).toNat

end

end A097853.P7494666548600106143

/-! ## A097853.P7850551627310895535

`A123108(2*A003285(n+1))`
-/

namespace A097853.P7850551627310895535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A003285 (n + 1)).toNat

end

end A097853.P7850551627310895535

/-! ## A097853.P727295917271723107

`∏{d}[A003285(n+1), A014963(#)]`
-/

namespace A097853.P727295917271723107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A097853.P727295917271723107

/-! ## A097853.P14552730987371678122

`A003285(n+1)+Δ[A000196(n)]`
-/

namespace A097853.P14552730987371678122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + (f1 (n + 1) - f1 n)

end

end A097853.P14552730987371678122

/-! ## A097853.P5693314519678796335

`A003285(n+1)+char[A005563(n)]`
-/

namespace A097853.P5693314519678796335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A097853.P5693314519678796335

/-! ## A097853.P17183710196008575036

`A233583(A067280(n+1)+1)-1`
-/

namespace A097853.P17183710196008575036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A067280 (n + 1) + 1).toNat - 1

end

end A097853.P17183710196008575036

/-! ## A097853.P9300538882320220185

`A233583(A003285(n+1)+2)-1`
-/

namespace A097853.P9300538882320220185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A003285 (n + 1) + 2).toNat - 1

end

end A097853.P9300538882320220185

/-! ## A097853.P13698117650610791828

`A010052(n+1)+A003285(n+1)`
-/

namespace A097853.P13698117650610791828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) + A003285 (n + 1)

end

end A097853.P13698117650610791828

/-! ## A097853.P15101535358313926263

`A067280(n+1)-A049240(n+1)`
-/

namespace A097853.P15101535358313926263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1) - A049240 (n + 1)

end

end A097853.P15101535358313926263

/-! ## A097853.P11085263428795193795

`A003285(n+1)+2-A275437(n)`
-/

namespace A097853.P11085263428795193795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + (2 - A275437 n)

end

end A097853.P11085263428795193795

/-! ## A097853.P11307436195883433948

`A003285(n+1)+Δ[A028392(n)]-1`
-/

namespace A097853.P11307436195883433948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A097853.P11307436195883433948

/-! ## A097853.P800917793108564957

`A003285(n+1)+1-A049240(n+1)`
-/

namespace A097853.P800917793108564957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + (1 - A049240 (n + 1))

end

end A097853.P800917793108564957

/-! ## A097853.P15638890528750143342

`A003285(n+1)+A003285(Δ[A028392(n)])`
-/

namespace A097853.P15638890528750143342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + A003285 (f1 (n + 1) - f1 n).toNat

end

end A097853.P15638890528750143342

/-! ## A097853.P10073648804831522361

`A003285(n+1)+A000035(A000005(n+1))`
-/

namespace A097853.P10073648804831522361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1) + A000035 (A000005 (n + 1)).toNat

end

end A097853.P10073648804831522361

/-! ## A097853.P4693820688832432543

`A000196(n+1)+A003285(n+1)-A000196(n)`
-/

namespace A097853.P4693820688832432543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A003285 (n + 1) - A000196 n)

end

end A097853.P4693820688832432543

/-!
# A097854: Triangle read by rows: T(n,k) = number of Motzkin paths of length n and having abscissa of first return (i.e., first down step hitting the x-axis) equal to k (k>0); T(n,0)=1 (accounts for the paths consisting only of level steps).

The programs for A097854, there is no canonical definition to state claims against.
-/

/-! ## A097854.P9574246491660986096

`A001222(A005598(A266832(n+1)))`
-/

namespace A097854.P9574246491660986096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005598 (A266832 (n + 1)).toNat).toNat

end

end A097854.P9574246491660986096

/-! ## A097854.P1451565484776395481

`A278182(A266878(n+1)-A070141(n+1))`
-/

namespace A097854.P1451565484776395481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278182 (A266878 (n + 1) - A070141 (n + 1)).toNat

end

end A097854.P1451565484776395481

/-! ## A097854.P9002881635603164397

`A278182(xor(A070141(n+1), A266878(n+1)))`
-/

namespace A097854.P9002881635603164397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278182 (Int.xor (A070141 (n + 1)) (A266878 (n + 1))).toNat

end

end A097854.P9002881635603164397

/-! ## A097854.P17782471702217996980

`A005128(A002262(n))^A024939(A242474(n+1))`
-/

namespace A097854.P17782471702217996980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005128 (A002262 n).toNat : ℚ) ^ (A024939 (A242474 (n + 1)).toNat : ℤ)

end

end A097854.P17782471702217996980

/-! ## A097854.P4381736479124059860

`A140084(A004773(A266878(n+1)^A105239(n)))`
-/

namespace A097854.P4381736479124059860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140084 (A004773 (SequenceMachineLib.roundAway ((A266878 (n + 1) : ℚ) ^ (A105239 n : ℤ))).toNat).toNat

end

end A097854.P4381736479124059860

/-!
# A097855: Numbers palindromic in bases 10 and 17.

The programs for A097855, there is no canonical definition to state claims against.
-/

/-! ## A097855.P3182880482792928531

`record[A020485(A225633(n))]`
-/

namespace A097855.P3182880482792928531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A225633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097855.P3182880482792928531

/-! ## A097855.P8731632851025917711

`record[A020485(A285189(n))]`
-/

namespace A097855.P8731632851025917711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A285189 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097855.P8731632851025917711

/-! ## A097855.P2925664689758470842

`record[A020485(A330240(n))]`
-/

namespace A097855.P2925664689758470842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020485 (A330240 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097855.P2925664689758470842

/-! ## A097855.P567895581495929057

`record[A061816(A304465(2^n))]`
-/

namespace A097855.P567895581495929057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (A304465 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097855.P567895581495929057

/-! ## A097855.P5643751821650953876

`record[A061816(n)]%A121964(n)`
-/

namespace A097855.P5643751821650953876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A121964 (n + 30))

end

end A097855.P5643751821650953876

/-!
# A097856: Base 10 numbers that are palindromic in bases 2 and 4.

The programs for A097856, there is no canonical definition to state claims against.
-/

/-! ## A097856.P3293009671434734190

`∩[A006995(n+1), A014192(n+1)]`
-/

namespace A097856.P3293009671434734190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097856.P3293009671434734190

/-! ## A097856.P929828294415997356

`∩[A014192(n+1), A180204(n+1)]`
-/

namespace A097856.P929828294415997356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097856.P929828294415997356

/-! ## A097856.P12033096148470110377

`eq[A055949(n), A178226(n)]`
-/

namespace A097856.P12033096148470110377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097856.P12033096148470110377

/-! ## A097856.P4286848454575259643

`eq[A055949(n), A303534(n)]`
-/

namespace A097856.P4286848454575259643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303534 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097856.P4286848454575259643

/-! ## A097856.P10795505429941405081

`eq[A055949(n), A370427(n)]`
-/

namespace A097856.P10795505429941405081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097856.P10795505429941405081

/-!
# A097858: Triangle read by rows where the top row is a 1. The m-th row of the triangle contains the smallest m as-yet-unused positive integers, in order from left to right, which are each coprime with every integer in the (m-1)th row.

The programs for A097858, there is no canonical definition to state claims against.
-/

/-! ## A097858.P16833660045424403133

`A084408(n+1)-A184955(A079955(n))`
-/

namespace A097858.P16833660045424403133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1) - A184955 (A079955 n).toNat

end

end A097858.P16833660045424403133

/-! ## A097858.P16298262210164730464

`A084408(n+1)-A224893(A187829(n+1))`
-/

namespace A097858.P16298262210164730464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1) - A224893 (A187829 (n + 1)).toNat

end

end A097858.P16298262210164730464

/-! ## A097858.P13540410961946518548

`xor(A084408(A187829(n+1)), A224893(n+1))`
-/

namespace A097858.P13540410961946518548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084408 (A187829 (n + 1)).toNat) (A224893 (n + 1))

end

end A097858.P13540410961946518548

/-! ## A097858.P1395441759272140371

`A084408(n+1)-A347689(A347689(A000217(n)))`
-/

namespace A097858.P1395441759272140371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1) - A347689 (A347689 (A000217 n).toNat).toNat

end

end A097858.P1395441759272140371

/-! ## A097858.P18018103062433287109

`A026239(A085049(n+1))-A224893(A187829(n+1))`
-/

namespace A097858.P18018103062433287109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A085049 (n + 1)).toNat - A224893 (A187829 (n + 1)).toNat

end

end A097858.P18018103062433287109

/-!
# A097859: a(m,0) = a(m,m) = 2; a(m,n) = sum of primes (with repetition) dividing a(m-1,n-1) and of primes (with repetition) dividing a(m-1,n).

The programs for A097859, there is no canonical definition to state claims against.
-/

/-! ## A097859.P15108070523167345112

`A049113(A155495(n))+A000377(A155495(n))`
-/

namespace A097859.P15108070523167345112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049113 (A155495 n).toNat + A000377 (A155495 n).toNat

end

end A097859.P15108070523167345112

/-! ## A097859.P12968622825808900053

`A055642(A176794(n))+A007318(n)`
-/

namespace A097859.P12968622825808900053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A176794 n).toNat + A007318 n

end

end A097859.P12968622825808900053

/-! ## A097859.P16264635287279586856

`A265359(A028326(n))%A078133(n+2)`
-/

namespace A097859.P16264635287279586856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265359 (A028326 n).toNat) (A078133 (n + 2))

end

end A097859.P16264635287279586856

/-! ## A097859.P9893280040878259237

`A054437(A022169(n))`
-/

namespace A097859.P9893280040878259237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054437 (A022169 n).toNat

end

end A097859.P9893280040878259237

/-! ## A097859.P7572556793763277732

`A038605(A239633(n))`
-/

namespace A097859.P7572556793763277732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A239633 n).toNat

end

end A097859.P7572556793763277732

/-!
# A097861: Number of humps in all Motzkin paths of length n. (A hump is an upstep followed by 0 or more flatsteps followed by a downstep.)

The programs for A097861, the canonical program `A097861.P10253467573463981684` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097861 has offset 0).

The definition of A097861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097861.P10253467573463981684

`(A002426(n)-1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097861

/-- `(A002426(n)-1)/2` -/
def P10253467573463981684.Spec : Prop :=
  ∀ n, P10253467573463981684.a n = (A097861 n : ℚ)

end A097861

/-! ## A097861.P4029859822499299885

`A257520(n)-1`
-/

namespace A097861.P4029859822499299885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n - 1

end

end A097861.P4029859822499299885

namespace A097861

/-- `A257520(n)-1` -/
def P4029859822499299885.Spec : Prop :=
  ∀ n, P4029859822499299885.a n = A097861 n

end A097861

/-! ## A097861.P5814389190933220548

`∑[(n-1)*A086246(n)]`
-/

namespace A097861.P5814389190933220548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A086246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097861.P5814389190933220548

namespace A097861

/-- `∑[(n-1)*A086246(n)]` -/
def P5814389190933220548.Spec : Prop :=
  ∀ n, P5814389190933220548.a n = A097861 n

end A097861

/-! ## A097861.P16917493980461007030

`∑[(n-1)*A007971(n)/2]`
-/

namespace A097861.P16917493980461007030
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) * ((A007971 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097861.P16917493980461007030

namespace A097861

/-- `∑[(n-1)*A007971(n)/2]` -/
def P16917493980461007030.Spec : Prop :=
  ∀ n, P16917493980461007030.a n = (A097861 n : ℚ)

end A097861

/-! ## A097861.P5509830095470064684

`A246437(n)-ceil((-1)^n/(n+2))`
-/

namespace A097861.P5509830095470064684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n - ⌈((-1) ^ n : ℚ) / (n + 2 : ℚ)⌉

end

end A097861.P5509830095470064684

namespace A097861

/-- `A246437(n)-ceil((-1)^n/(n+2))` -/
def P5509830095470064684.Spec : Prop :=
  ∀ n, P5509830095470064684.a n = A097861 n

end A097861

/-! ## A097861.P3216472921943281403

`A000035(n)+A246437(n)-1`
-/

namespace A097861.P3216472921943281403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A246437 n - 1)

end

end A097861.P3216472921943281403

namespace A097861

/-- `A000035(n)+A246437(n)-1` -/
def P3216472921943281403.Spec : Prop :=
  ∀ n, P3216472921943281403.a n = A097861 n

end A097861

/-! ## A097861.P6864919180707256369

`∑[(A028310(n)-1)*A168049(n)]`
-/

namespace A097861.P6864919180707256369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 n - 1) * A168049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097861.P6864919180707256369

namespace A097861

/-- `∑[(A028310(n)-1)*A168049(n)]` -/
def P6864919180707256369.Spec : Prop :=
  ∀ n, P6864919180707256369.a n = A097861 n

end A097861

/-! ## A097861.P5997007512799774881

`floor(A002426(n)/2)`
-/

namespace A097861.P5997007512799774881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002426 n : ℚ) / 2⌋

end

end A097861.P5997007512799774881

namespace A097861

/-- `floor(A002426(n)/2)` -/
def P5997007512799774881.Spec : Prop :=
  ∀ n, P5997007512799774881.a n = A097861 n

end A097861

/-! ## A097861.P2274453488875497261

`Δ[A247287(abs(1-n))]`
-/

namespace A097861.P2274453488875497261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247287 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097861.P2274453488875497261

namespace A097861

/-- `Δ[A247287(abs(1-n))]` -/
def P2274453488875497261.Spec : Prop :=
  ∀ n, P2274453488875497261.a n = A097861 n

end A097861

/-! ## A097861.P12659001295036411284

`floor(A005213(2*n)/2)`
-/

namespace A097861.P12659001295036411284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005213 (2 * n) : ℚ) / 2⌋

end

end A097861.P12659001295036411284

namespace A097861

/-- `floor(A005213(2*n)/2)` -/
def P12659001295036411284.Spec : Prop :=
  ∀ n, P12659001295036411284.a n = A097861 n

end A097861

/-! ## A097861.P4255060659433217538

`A097893(n)-A383527(n)`
-/

namespace A097861.P4255060659433217538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n - A383527 n

end

end A097861.P4255060659433217538

namespace A097861

/-- `A097893(n)-A383527(n)` -/
def P4255060659433217538.Spec : Prop :=
  ∀ n, P4255060659433217538.a n = A097861 n

end A097861

/-! ## A097861.P9731578838536458426

`A002426(n)%A257520(n)`
-/

namespace A097861.P9731578838536458426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002426 n) (A257520 n)

end

end A097861.P9731578838536458426

namespace A097861

/-- `A002426(n)%A257520(n)` -/
def P9731578838536458426.Spec : Prop :=
  ∀ n, P9731578838536458426.a n = A097861 n

end A097861

/-! ## A097861.P16323690096652667457

`∑[2*A194589(n)]-A194589(n)`
-/

namespace A097861.P16323690096652667457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A194589 n

end

end A097861.P16323690096652667457

namespace A097861

/-- `∑[2*A194589(n)]-A194589(n)` -/
def P16323690096652667457.Spec : Prop :=
  ∀ n, P16323690096652667457.a n = A097861 n

end A097861

/-! ## A097861.P17479069407326427742

`∑[A005213(2*n+1)]-A005213(2*n+1)`
-/

namespace A097861.P17479069407326427742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005213 (2 * n + 1)

end

end A097861.P17479069407326427742

namespace A097861

/-- `∑[A005213(2*n+1)]-A005213(2*n+1)` -/
def P17479069407326427742.Spec : Prop :=
  ∀ n, P17479069407326427742.a n = A097861 n

end A097861

/-! ## A097861.P15546406658500545322

`A116410(n)-A124302(n)`
-/

namespace A097861.P15546406658500545322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 n - A124302 n

end

end A097861.P15546406658500545322

namespace A097861

/-- `A116410(n)-A124302(n)` -/
def P15546406658500545322.Spec : Prop :=
  ∀ n, P15546406658500545322.a n = A097861 n

end A097861

/-! ## A097861.P4575255148373132713

`(∑[A025178(n+1)]-A025178(n+1))/2`
-/

namespace A097861.P4575255148373132713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A025178 (n + 1) : ℤ) : ℚ) / 2

end

end A097861.P4575255148373132713

namespace A097861

/-- `(∑[A025178(n+1)]-A025178(n+1))/2` -/
def P4575255148373132713.Spec : Prop :=
  ∀ n, P4575255148373132713.a n = (A097861 n : ℚ)

end A097861

/-! ## A097861.P8595787503188655630

`A027914(n)-A007051(n)`
-/

namespace A097861.P8595787503188655630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A007051 n

end

end A097861.P8595787503188655630

namespace A097861

/-- `A027914(n)-A007051(n)` -/
def P8595787503188655630.Spec : Prop :=
  ∀ n, P8595787503188655630.a n = A097861 n

end A097861

/-! ## A097861.P14646216047506486774

`A123183(n+1)+A116410(n)`
-/

namespace A097861.P14646216047506486774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123183 (n + 1) + A116410 n

end

end A097861.P14646216047506486774

namespace A097861

/-- `A123183(n+1)+A116410(n)` -/
def P14646216047506486774.Spec : Prop :=
  ∀ n, P14646216047506486774.a n = A097861 n

end A097861

/-! ## A097861.P10864211713440727544

`A027914(n)-(A003462(n)+1)`
-/

namespace A097861.P10864211713440727544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - (A003462 n + 1)

end

end A097861.P10864211713440727544

namespace A097861

/-- `A027914(n)-(A003462(n)+1)` -/
def P10864211713440727544.Spec : Prop :=
  ∀ n, P10864211713440727544.a n = A097861 n

end A097861

/-! ## A097861.P167289256275721519

`A027914(n)-A124302(n+1)`
-/

namespace A097861.P167289256275721519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A124302 (n + 1)

end

end A097861.P167289256275721519

namespace A097861

/-- `A027914(n)-A124302(n+1)` -/
def P167289256275721519.Spec : Prop :=
  ∀ n, P167289256275721519.a n = A097861 n

end A097861

/-!
# A097862: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n and height k (n>=0, k>=0).

The programs for A097862, there is no canonical definition to state claims against.
-/

/-! ## A097862.P9857440514092762693

`A097229(abs(1-n))+A094518(A094535(n))`
-/

namespace A097862.P9857440514092762693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097229 |1 - (n : ℤ)|.toNat + A094518 (A094535 n).toNat

end

end A097862.P9857440514092762693

/-! ## A097862.P10728096237380271903

`∏{e}[ceil(2^(n-1)), A097229(#)]`
-/

namespace A097862.P10728096237380271903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A097229 (Nat.factorization (f1 n).natAbs p)

end

end A097862.P10728096237380271903

/-! ## A097862.P12223392100980865316

`A097229(A151722(n)-1+n)`
-/

namespace A097862.P12223392100980865316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097229 (A151722 n - 1 + (n : ℤ)).toNat

end

end A097862.P12223392100980865316

/-! ## A097862.P9503143845260994388

`A097229(n-(1-A151722(n)))`
-/

namespace A097862.P9503143845260994388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097229 ((n : ℤ) - (1 - A151722 n)).toNat

end

end A097862.P9503143845260994388

/-! ## A097862.P4671172934391133320

`A097229(abs(1-n))%A000040(A259939(n))`
-/

namespace A097862.P4671172934391133320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097229 |1 - (n : ℤ)|.toNat) (A000040 (A259939 n).toNat)

end

end A097862.P4671172934391133320

/-!
# A097863: Sum of 5-infinitary divisors of n.

The programs for A097863, there is no canonical definition to state claims against.
-/

/-! ## A097863.P415785449446405200

`A001065(C(n, A318671(n+1))+1)+n+1`
-/

namespace A097863.P415785449446405200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Nat.choose n (A318671 (n + 1)).toNat + 1) + (n + 1 : ℤ)

end

end A097863.P415785449446405200

/-! ## A097863.P13575515553291413258

`∑{d}[n+1, #]+1-A146458(A318622(n+1))`
-/

namespace A097863.P13575515553291413258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ) - A146458 (A318622 (n + 1)).toNat

end

end A097863.P13575515553291413258

/-! ## A097863.P16154060629722298382

`A000203(n+1)-A215698((n+1)/gcd(n+1, ∏{p}[n+1, #]^3))`
-/

namespace A097863.P16154060629722298382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A215698 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ 3) : ℚ))).toNat

end

end A097863.P16154060629722298382

/-! ## A097863.P3426841089241636038

`A088580(n+1)-A146458(A003557(n+1))`
-/

namespace A097863.P3426841089241636038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A146458 (A003557 (n + 1)).toNat

end

end A097863.P3426841089241636038

/-! ## A097863.P13650591256416661435

`A088580(n+1)-A146458(A318622(n+1))`
-/

namespace A097863.P13650591256416661435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A146458 (A318622 (n + 1)).toNat

end

end A097863.P13650591256416661435

/-!
# A097864: Matrix recurrence A[n] = M * A[n-1] with A[0] = [[0,1,1],[1,1,2],[1,2,4]] and M = [[0,1,0],[0,1,0],[1,1,1]], flattened.

The programs for A097864, there is no canonical definition to state claims against.
-/

/-! ## A097864.P17140216109257843298

`gcd(A097866(n), A340998(A003114(n)))`
-/

namespace A097864.P17140216109257843298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097866 n) (A340998 ((A003114 n).toNat + 140))

end

end A097864.P17140216109257843298

/-! ## A097864.P13753067285129285358

`A097866(n)%A181338(A056617(n))`
-/

namespace A097864.P13753067285129285358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097866 n) (A181338 (A056617 n).toNat)

end

end A097864.P13753067285129285358

/-! ## A097864.P18313718400014570417

`A097866(n^A280865(n))`
-/

namespace A097864.P18313718400014570417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097866 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A280865 n : ℤ))).toNat

end

end A097864.P18313718400014570417

/-! ## A097864.P10373508751706797279

`A097866(n)%A075929(n)`
-/

namespace A097864.P10373508751706797279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097866 n) (A075929 n)

end

end A097864.P10373508751706797279

/-! ## A097864.P13883377804074687619

`A097866(n*A280865(n)²)`
-/

namespace A097864.P13883377804074687619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097866 ((n : ℤ) * A280865 n ^ 2).toNat

end

end A097864.P13883377804074687619

/-!
# A097865: The n-th group (n>=0) of 9 consecutive terms are the entries, read by rows, of the 3 X 3 matrix A[n], where A[0]= [[0,1,1],[1,1,2],[1,2,4]], A[1]=[[1,1,2],[1,1,2],[2,4,7]] and A[n]=A[n-A[n-1](1,1)] + A[n-A[n-2](1,2)], (M(i,j) denotes the (i,j)-entry of the matrix M).

The programs for A097865, there is no canonical definition to state claims against.
-/

/-! ## A097865.P17063682837019144539

`A097864(n)+A097864(A185294(n))`
-/

namespace A097865.P17063682837019144539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097864 n + A097864 (A185294 n).toNat

end

end A097865.P17063682837019144539

/-! ## A097865.P15797768596460696171

`A097866(n)+A097866(A185294(n))`
-/

namespace A097865.P15797768596460696171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097866 n + A097866 (A185294 n).toNat

end

end A097865.P15797768596460696171

/-! ## A097865.P6290703131042111671

`A327104(Δ[A184945(n)])+A097866(n)`
-/

namespace A097865.P6290703131042111671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (f1 (n + 1) - f1 n).toNat + A097866 n

end

end A097865.P6290703131042111671

/-!
# A097867: The n-th group (n>=0) of 9 consecutive terms are the entries, read by rows, of the 3 X 3 matrix A[n]=M*A[n-1], where M is the 3 X 3 matrix [[0, 1, 0], [0, 0, 1], [1, 1, 0]] and A[0] is the 3 X 3 matrix [[0, 1, 1], [1, 1, 2], [1, 2, 2]].

The programs for A097867, there is no canonical definition to state claims against.
-/

/-! ## A097867.P11772303430670307786

`A122651(A073300(n))%A113478(n+1)`
-/

namespace A097867.P11772303430670307786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122651 (A073300 n).toNat) (A113478 (n + 1))

end

end A097867.P11772303430670307786

/-! ## A097867.P12873991410747045314

`A034968(A053735(n)-A286052(A023271(n+1)))`
-/

namespace A097867.P12873991410747045314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A053735 n - A286052 (A023271 (n + 1)).toNat).toNat

end

end A097867.P12873991410747045314

/-! ## A097867.P10247072300349082232

`A003056(A073300(n)%A058848(n+1))`
-/

namespace A097867.P10247072300349082232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A073300 n) (A058848 (n + 1))).toNat

end

end A097867.P10247072300349082232

/-! ## A097867.P5788448500272681178

`A007949(n+1)+A007949(A064538(n+1))`
-/

namespace A097867.P5788448500272681178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A007949 (A064538 (n + 1)).toNat

end

end A097867.P5788448500272681178

/-! ## A097867.P12233147819529572526

`A114091(A073300(n))%A114162(3*n+1)`
-/

namespace A097867.P12233147819529572526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114091 (A073300 n).toNat) (A114162 (3 * n + 1))

end

end A097867.P12233147819529572526

/-!
# A097868: The n-th group (n>=0) of 16 consecutive terms are the entries, read by rows, of the 4 X 4 matrix A[n]=MA[n-1] (n>=1), where M is the 4 X 4 matrix [[0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1], [1, 0, 0, 1]] and A[0] is the 4 X 4 matrix [[1, 1, 1, 1], [1, 1, 1, 2], [1, 1, 2, 3], [1, 2, 3, 4]].

The programs for A097868, there is no canonical definition to state claims against.
-/

/-! ## A097868.P1199377095326166974

`A352041(A053737(n))%A005448(A102214(n+3))`
-/

namespace A097868.P1199377095326166974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352041 (A053737 n).toNat) (A005448 (A102214 (n + 3)).toNat)

end

end A097868.P1199377095326166974

/-! ## A097868.P2013185594221667625

`A006456(A053737(n)%A317589(n+1))`
-/

namespace A097868.P2013185594221667625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (Int.tmod (A053737 n) (A317589 (n + 1))).toNat

end

end A097868.P2013185594221667625

/-! ## A097868.P12456608204557182905

`A352041(A053737(n))+A000007(A323780(n+3))`
-/

namespace A097868.P12456608204557182905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352041 (A053737 n).toNat + A000007 (A323780 (n + 3)).toNat

end

end A097868.P12456608204557182905

/-! ## A097868.P11543320380188865574

`A352041(A053737(n))%A345436(n+3)`
-/

namespace A097868.P11543320380188865574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352041 (A053737 n).toNat) (A345436 (n + 3))

end

end A097868.P11543320380188865574

/-! ## A097868.P15672446521522253397

`A010051(A079079(2*(n+2)))+A006456(A053737(n))`
-/

namespace A097868.P15672446521522253397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A079079 (2 * (n + 2))).toNat + A006456 (A053737 n).toNat

end

end A097868.P15672446521522253397

/-! ## A097868.P16520078231010599608

`A006456(A053737(n)%A090166(n))`
-/

namespace A097868.P16520078231010599608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006456 (Int.tmod (A053737 n) (A090166 n)).toNat

end

end A097868.P16520078231010599608

/-!
# A097869: Expansion of g.f.: (1+x^4+x^5+x^9)/((1-x)*(1-x^2)*(1-x^4)^2).

The programs for A097869, the canonical program `A097869.P9578927229491689319` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097869 has offset 0).

The definition of A097869 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^4+x^5+x^9)/(1-x-x^2+x^3-2x^4+2x^5+2x^6-2x^7+x^8-x^9-x^10+x^11))` (program `A097869.P9578927229491689319`, by `A097869.P9578927229491689319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097869.P9578927229491689319

`ogf((1+x^4+x^5+x^9)/(1-x-x^2+x^3-2x^4+2x^5+2x^6-2x^7+x^8-x^9-x^10+x^11))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097869

/-- `ogf((1+x^4+x^5+x^9)/(1-x-x^2+x^3-2x^4+2x^5+2x^6-2x^7+x^8-x^9-x^10+x^11))` -/
def P9578927229491689319.Spec : Prop :=
  ∀ n, P9578927229491689319.a n = A097869 n

theorem P9578927229491689319.correct : P9578927229491689319.Spec := by
  intro n
  simp only [A097869]

end A097869

/-! ## A097869.P7783369780776978451

`∑[Δ[ceil(n²/8)]²]`
-/

namespace A097869.P7783369780776978451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 8⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097869.P7783369780776978451

namespace A097869

/-- `∑[Δ[ceil(n²/8)]²]` -/
def P7783369780776978451.Spec : Prop :=
  ∀ n, P7783369780776978451.a n = A097869 n

end A097869

/-! ## A097869.P2665470279730215498

`a(n-1)+Δ[ceil(n²/8)]²` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A097869.P2665470279730215498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A097869.P2665470279730215498

namespace A097869

/-- `a(n-1)+Δ[ceil(n²/8)]²` -/
def P2665470279730215498.Spec : Prop :=
  ∀ n, P2665470279730215498.a n = A097869 n

end A097869

/-! ## A097869.P15304708835891090852

`A033999(n)²*∑[Δ[A036406(n)]²]`
-/

namespace A097869.P15304708835891090852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097869.P15304708835891090852

namespace A097869

/-- `A033999(n)²*∑[Δ[A036406(n)]²]` -/
def P15304708835891090852.Spec : Prop :=
  ∀ n, P15304708835891090852.a n = A097869 n

end A097869

/-! ## A097869.P11670390207005333486

`∑[Δ[A036406(n)]²]%A003825(n+1)`
-/

namespace A097869.P11670390207005333486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A003825 (n + 1))

end

end A097869.P11670390207005333486

namespace A097869

/-- `∑[Δ[A036406(n)]²]%A003825(n+1)` -/
def P11670390207005333486.Spec : Prop :=
  ∀ n, P11670390207005333486.a n = A097869 n

end A097869

/-! ## A097869.P7432574868359645423

`A000035(2*n)+∑[Δ[A036406(n)]²]`
-/

namespace A097869.P7432574868359645423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097869.P7432574868359645423

namespace A097869

/-- `A000035(2*n)+∑[Δ[A036406(n)]²]` -/
def P7432574868359645423.Spec : Prop :=
  ∀ n, P7432574868359645423.a n = A097869 n

end A097869

/-! ## A097869.P11245613767863754022

`∑[Δ[A036406(n)]²]*A000034(2*n)`
-/

namespace A097869.P11245613767863754022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * n)

end

end A097869.P11245613767863754022

namespace A097869

/-- `∑[Δ[A036406(n)]²]*A000034(2*n)` -/
def P11245613767863754022.Spec : Prop :=
  ∀ n, P11245613767863754022.a n = A097869 n

end A097869

/-! ## A097869.P3691184339609880741

`∑[Δ[A036406(n)]²]*A050603(12*n)`
-/

namespace A097869.P3691184339609880741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A050603 (12 * n)

end

end A097869.P3691184339609880741

namespace A097869

/-- `∑[Δ[A036406(n)]²]*A050603(12*n)` -/
def P3691184339609880741.Spec : Prop :=
  ∀ n, P3691184339609880741.a n = A097869 n

end A097869

/-! ## A097869.P2759516643499692426

`A000027(∑[Δ[A036406(n)]²])`
-/

namespace A097869.P2759516643499692426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097869.P2759516643499692426

namespace A097869

/-- `A000027(∑[Δ[A036406(n)]²])` -/
def P2759516643499692426.Spec : Prop :=
  ∀ n, P2759516643499692426.a n = A097869 n

end A097869

/-! ## A097869.P2124826098716330848

`A004526(2*∑[Δ[A036406(n)]²])`
-/

namespace A097869.P2124826098716330848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036406 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A097869.P2124826098716330848

namespace A097869

/-- `A004526(2*∑[Δ[A036406(n)]²])` -/
def P2124826098716330848.Spec : Prop :=
  ∀ n, P2124826098716330848.a n = A097869 n

end A097869

/-!
# A097870: Molien series for group of order 4608 acting on joint weight enumerators of a pair of binary doubly-even self-dual codes.

The programs for A097870, the canonical program `A097870.P5312423832647180621` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097870 has offset 0).

The definition of A097870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097870.P5312423832647180621

`A004773(n)+∑[A002620(A004773(n))]+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097870

/-- `A004773(n)+∑[A002620(A004773(n))]+1` -/
def P5312423832647180621.Spec : Prop :=
  ∀ n, P5312423832647180621.a n = A097870 n

theorem P5312423832647180621.correct : P5312423832647180621.Spec := by
  intro n
  simp only [A097870]

end A097870

/-! ## A097870.P8554648306360031343

`A042968(n+1)+∑[A008133(A005843(n))]`
-/

namespace A097870.P8554648306360031343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097870.P8554648306360031343

namespace A097870

/-- `A042968(n+1)+∑[A008133(A005843(n))]` -/
def P8554648306360031343.Spec : Prop :=
  ∀ n, P8554648306360031343.a n = A097870 n

end A097870

/-! ## A097870.P15434637819312684022

`A004396(2*n+1)+∑[A008133(2*n)]`
-/

namespace A097870.P15434637819312684022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097870.P15434637819312684022

namespace A097870

/-- `A004396(2*n+1)+∑[A008133(2*n)]` -/
def P15434637819312684022.Spec : Prop :=
  ∀ n, P15434637819312684022.a n = A097870 n

end A097870

/-! ## A097870.P7702979535319410007

`A004396(2*n+1)+∑[A002620(A004523(2*n))]`
-/

namespace A097870.P7702979535319410007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004523 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097870.P7702979535319410007

namespace A097870

/-- `A004396(2*n+1)+∑[A002620(A004523(2*n))]` -/
def P7702979535319410007.Spec : Prop :=
  ∀ n, P7702979535319410007.a n = A097870 n

end A097870

/-! ## A097870.P5751634309306969634

`A008620(4*n)+∑[A008133(2*n)]`
-/

namespace A097870.P5751634309306969634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (4 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097870.P5751634309306969634

namespace A097870

/-- `A008620(4*n)+∑[A008133(2*n)]` -/
def P5751634309306969634.Spec : Prop :=
  ∀ n, P5751634309306969634.a n = A097870 n

end A097870

/-!
# A097872: Numerator of J(n) = A000356(n)/A000309(n) (average number of 4-colorings of rank 0 in a rooted nonseparable map which is trivalent and has 2n nodes).

The programs for A097872, there is no canonical definition to state claims against.
-/

/-! ## A097872.P15279424438020563866

`A060819(A000108(n+2)*A146535(n+1))`
-/

namespace A097872.P15279424438020563866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A000108 (n + 2) * A146535 (n + 1)).toNat

end

end A097872.P15279424438020563866

/-!
# A097873: A nonsense sequence.

The programs for A097873, there is no canonical definition to state claims against.
-/

/-! ## A097873.P9500994693067761273

`A063882(n+2)%A118034(n)`
-/

namespace A097873.P9500994693067761273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063882 (n + 2)) (A118034 n)

end

end A097873.P9500994693067761273

/-! ## A097873.P4480290812154142010

`Δ[A129632(n+1)]%A118034(n)`
-/

namespace A097873.P4480290812154142010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A118034 n)

end

end A097873.P4480290812154142010

/-! ## A097873.P16007184162474342693

`A057427(A064173(n+1))*A063882(n+2)`
-/

namespace A097873.P16007184162474342693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A064173 (n + 1)).toNat * A063882 (n + 2)

end

end A097873.P16007184162474342693

/-! ## A097873.P2944723682691501787

`A063882(n+2)-A294935(A084921(2*n+1))`
-/

namespace A097873.P2944723682691501787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063882 (n + 2) - A294935 (A084921 (2 * n + 1)).toNat

end

end A097873.P2944723682691501787

/-! ## A097873.P6048818685506039276

`A156253(n+1)-A159684(A003242(n))`
-/

namespace A097873.P6048818685506039276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (n + 1) - A159684 (A003242 n).toNat

end

end A097873.P6048818685506039276

/-!
# A097875: Denominator of J(n) = A000356(n)/A000309(n) (average number of 4-colorings of rank 0 in a rooted nonseparable map which is trivalent and has 2n nodes).

The programs for A097875, there is no canonical definition to state claims against.
-/

/-! ## A097875.P15409197616906682148

`A000309(n+1)/A000356(n+1)*A097872(n+1)`
-/

namespace A097875.P15409197616906682148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000309 (n + 1) : ℚ) / (A000356 (n + 1) : ℚ) * (A097872 (n + 1) : ℚ)

end

end A097875.P15409197616906682148

/-!
# A097876: Number of ways to partition n into sums of squares of nonprimes.

The programs for A097876, there is no canonical definition to state claims against.
-/

/-! ## A097876.P17450867879632803873

`A001156(A002265(n)%A326024(n))`
-/

namespace A097876.P17450867879632803873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (Int.tmod (A002265 n) (A326024 n)).toNat

end

end A097876.P17450867879632803873

/-! ## A097876.P3612831832163713093

`A001156(A002265(n))+A000038(A094441(n))`
-/

namespace A097876.P3612831832163713093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (A002265 n).toNat + A000038 (A094441 n).toNat

end

end A097876.P3612831832163713093

/-! ## A097876.P7944581310814758609

`A001156(floor(n/4))%A000217(A056126(3*n+1))`
-/

namespace A097876.P7944581310814758609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001156 ⌊(n : ℚ) / 4⌋.toNat) (A000217 (A056126 (3 * n + 1)).toNat)

end

end A097876.P7944581310814758609

/-! ## A097876.P13531209136577043001

`A001156(floor(n/4)%A191426(n+1))`
-/

namespace A097876.P13531209136577043001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 (Int.tmod ⌊(n : ℚ) / 4⌋ (A191426 (n + 1))).toNat

end

end A097876.P13531209136577043001

/-! ## A097876.P8266898794451447967

`A001156(floor(n/4))%(3*A334100(n+1))`
-/

namespace A097876.P8266898794451447967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001156 ⌊(n : ℚ) / 4⌋.toNat) (3 * A334100 (n + 1))

end

end A097876.P8266898794451447967

/-! ## A097876.P16585649077132508766

`A001156(A002265(n))%A344926(n+2)`
-/

namespace A097876.P16585649077132508766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001156 (A002265 n).toNat) (A344926 (n + 2))

end

end A097876.P16585649077132508766

/-! ## A097876.P163447348233656980

`A211225(A136054(3*n+5))+A001156(floor(n/4))`
-/

namespace A097876.P163447348233656980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211225 (A136054 (3 * n + 5)).toNat + A001156 ⌊(n : ℚ) / 4⌋.toNat

end

end A097876.P163447348233656980

/-! ## A097876.P2913791063920284365

`A017979(∑[A129218(n)%2])`
-/

namespace A097876.P2913791063920284365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129218 (n + 10)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097876.P2913791063920284365

/-!
# A097877: Triangle read by rows: T(n,k) is the number of Dyck n-paths with k large components, 0 <= k <= n/2.

The programs for A097877, there is no canonical definition to state claims against.
-/

/-! ## A097877.P1810180587237892247

`A143952(A062388(n))`
-/

namespace A097877.P1810180587237892247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A062388 n).toNat

end

end A097877.P1810180587237892247

/-! ## A097877.P5327208942003329828

`A143952(A070244(n))`
-/

namespace A097877.P5327208942003329828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A070244 n).toNat

end

end A097877.P5327208942003329828

/-! ## A097877.P7072067707185470014

`A143952(A387546(n))`
-/

namespace A097877.P7072067707185470014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 (A387546 n).toNat

end

end A097877.P7072067707185470014

/-! ## A097877.P9480762821389325407

`A173261(A080196(∑[n]+1)+1)`
-/

namespace A097877.P9480762821389325407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173261 (A080196 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat

end

end A097877.P9480762821389325407

/-! ## A097877.P11571773636253032899

`A327482(Δ[A278602(n)/2]+n)`
-/

namespace A097877.P11571773636253032899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278602 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327482 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n + (n : ℚ))).toNat

end

end A097877.P11571773636253032899

/-!
# A097882: a(n) = floor( n^2/prime(n) ).

The programs for A097882, the canonical program `A097882.P1032828811957580673` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097882 has offset 1).

The definition of A097882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097882.P1032828811957580673

`floor(A000290(n+1)/A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097882

/-- `floor(A000290(n+1)/A000040(n+1))` -/
def P1032828811957580673.Spec : Prop :=
  ∀ n, P1032828811957580673.a n = A097882 (n + 1)

theorem P1032828811957580673.correct : P1032828811957580673.Spec := by
  intro n
  simp only [A097882, Nat.add_sub_cancel]

end A097882

/-! ## A097882.P3552210180349459924

`floor((n+1)²/(A095116(n+1)-n))`
-/

namespace A097882.P3552210180349459924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A095116 (n + 1) - (n : ℤ) : ℚ)⌋

end

end A097882.P3552210180349459924

namespace A097882

/-- `floor((n+1)²/(A095116(n+1)-n))` -/
def P3552210180349459924.Spec : Prop :=
  ∀ n, P3552210180349459924.a n = A097882 (n + 1)

end A097882

/-! ## A097882.P13432643304774450608

`floor((n+2)*n/A000040(C(n+1, n)))`
-/

namespace A097882.P13432643304774450608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * ((n : ℚ) / (A000040 (Nat.choose (n + 1) n) : ℚ))⌋

end

end A097882.P13432643304774450608

namespace A097882

/-- `floor((n+2)*n/A000040(C(n+1, n)))` -/
def P13432643304774450608.Spec : Prop :=
  ∀ n, P13432643304774450608.a n = A097882 (n + 1)

end A097882

/-! ## A097882.P14073154970061202438

`floor((n+2)*n/A000040(2*n+1-n))`
-/

namespace A097882.P14073154970061202438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * ((n : ℚ) / (A000040 (2 * n + 1 - n) : ℚ))⌋

end

end A097882.P14073154970061202438

namespace A097882

/-- `floor((n+2)*n/A000040(2*n+1-n))` -/
def P14073154970061202438.Spec : Prop :=
  ∀ n, P14073154970061202438.a n = A097882 (n + 1)

end A097882

/-! ## A097882.P120292572604231581

`A075771(n+1)-A069547(n+1)`
-/

namespace A097882.P120292572604231581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075771 (n + 1) - A069547 (n + 1)

end

end A097882.P120292572604231581

namespace A097882

/-- `A075771(n+1)-A069547(n+1)` -/
def P120292572604231581.Spec : Prop :=
  ∀ n, P120292572604231581.a n = A097882 (n + 1)

end A097882

/-! ## A097882.P14988892207251677466

`((n+1)²-A069547(n+1))/A000040(n+1)`
-/

namespace A097882.P14988892207251677466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A069547 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A097882.P14988892207251677466

namespace A097882

/-- `((n+1)²-A069547(n+1))/A000040(n+1)` -/
def P14988892207251677466.Spec : Prop :=
  ∀ n, P14988892207251677466.a n = (A097882 (n + 1) : ℚ)

end A097882

/-! ## A097882.P9951244255993271901

`floor((n+1)²/A008578(n+2))`
-/

namespace A097882.P9951244255993271901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A008578 (n + 2) : ℚ)⌋

end

end A097882.P9951244255993271901

namespace A097882

/-- `floor((n+1)²/A008578(n+2))` -/
def P9951244255993271901.Spec : Prop :=
  ∀ n, P9951244255993271901.a n = A097882 (n + 1)

end A097882

/-! ## A097882.P1746887003675100884

`floor((n+1)²/record[A020639(n+2)])`
-/

namespace A097882.P1746887003675100884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A097882.P1746887003675100884

namespace A097882

/-- `floor((n+1)²/record[A020639(n+2)])` -/
def P1746887003675100884.Spec : Prop :=
  ∀ n, P1746887003675100884.a n = A097882 (n + 1)

end A097882

/-! ## A097882.P3038747617705436060

`floor((n+1)²/(record[A000010(n+1)]+1))`
-/

namespace A097882.P3038747617705436060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 : ℚ)⌋

end

end A097882.P3038747617705436060

namespace A097882

/-- `floor((n+1)²/(record[A000010(n+1)]+1))` -/
def P3038747617705436060.Spec : Prop :=
  ∀ n, P3038747617705436060.a n = A097882 (n + 1)

end A097882

/-! ## A097882.P6848208526406722983

`floor((n+1)²/record[A014963(n+2)])`
-/

namespace A097882.P6848208526406722983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A097882.P6848208526406722983

namespace A097882

/-- `floor((n+1)²/record[A014963(n+2)])` -/
def P6848208526406722983.Spec : Prop :=
  ∀ n, P6848208526406722983.a n = A097882 (n + 1)

end A097882

/-!
# A097884: First differences of A097605 (phi(n) divides n^2 - 1).

The programs for A097884, the canonical program `A097884.P18184592152229519995` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097884 has offset 1).

The definition of A097884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097884.P18184592152229519995

`Δ[A097605(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A097884

/-- `Δ[A097605(n+1)]` -/
def P18184592152229519995.Spec : Prop :=
  ∀ n, P18184592152229519995.a n = A097884 (n + 1)

theorem P18184592152229519995.correct : P18184592152229519995.Spec := by
  intro n
  simp only [A097884, Nat.add_sub_cancel]

end A097884

/-! ## A097884.P13531532915955185882

`A097605(n+2)-A097605(n+1)`
-/

namespace A097884.P13531532915955185882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 2) - A097605 (n + 1)

end

end A097884.P13531532915955185882

namespace A097884

/-- `A097605(n+2)-A097605(n+1)` -/
def P13531532915955185882.Spec : Prop :=
  ∀ n, P13531532915955185882.a n = A097884 (n + 1)

theorem P13531532915955185882.correct : P13531532915955185882.Spec := by
  intro n
  simp only [A097884, Nat.add_sub_cancel, A097884.P13531532915955185882.a, A097884.P18184592152229519995.f1, A097884.P18184592152229519995.a, SequenceMachineLib.memo_apply]

end A097884

/-! ## A097884.P4737607883793704287

`abs(Δ[A097605(A028242(2*n))])`
-/

namespace A097884.P4737607883793704287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A097884.P4737607883793704287

namespace A097884

/-- `abs(Δ[A097605(A028242(2*n))])` -/
def P4737607883793704287.Spec : Prop :=
  ∀ n, P4737607883793704287.a n = A097884 (n + 1)

end A097884

/-! ## A097884.P12791423281843836786

`Δ[A097605(A028242(2*n))%A016972(n)]`
-/

namespace A097884.P12791423281843836786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097605 (A028242 (2 * n)).toNat) (A016972 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097884.P12791423281843836786

namespace A097884

/-- `Δ[A097605(A028242(2*n))%A016972(n)]` -/
def P12791423281843836786.Spec : Prop :=
  ∀ n, P12791423281843836786.a n = A097884 (n + 1)

end A097884

/-! ## A097884.P2400159321279184566

`Δ[A097605(A028242(2*n))]^A000038(n)!`
-/

namespace A097884.P2400159321279184566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ Nat.factorial (A000038 n).toNat

end

end A097884.P2400159321279184566

namespace A097884

/-- `Δ[A097605(A028242(2*n))]^A000038(n)!` -/
def P2400159321279184566.Spec : Prop :=
  ∀ n, P2400159321279184566.a n = A097884 (n + 1)

end A097884

/-! ## A097884.P17715108742939642637

`Δ[A097605(A028242(2*n))]%(A016825(n)-n)`
-/

namespace A097884.P17715108742939642637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016825 n - (n : ℤ))

end

end A097884.P17715108742939642637

namespace A097884

/-- `Δ[A097605(A028242(2*n))]%(A016825(n)-n)` -/
def P17715108742939642637.Spec : Prop :=
  ∀ n, P17715108742939642637.a n = A097884 (n + 1)

end A097884

/-! ## A097884.P15141396663204586236

`Δ[A097605(A028242(2*n))]*A025177(n²)`
-/

namespace A097884.P15141396663204586236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A025177 (n ^ 2)

end

end A097884.P15141396663204586236

namespace A097884

/-- `Δ[A097605(A028242(2*n))]*A025177(n²)` -/
def P15141396663204586236.Spec : Prop :=
  ∀ n, P15141396663204586236.a n = A097884 (n + 1)

end A097884

/-! ## A097884.P11291437712242836601

`Δ[A097605(A028242(2*n))]%A179216(n)`
-/

namespace A097884.P11291437712242836601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (A028242 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A179216 n)

end

end A097884.P11291437712242836601

namespace A097884

/-- `Δ[A097605(A028242(2*n))]%A179216(n)` -/
def P11291437712242836601.Spec : Prop :=
  ∀ n, P11291437712242836601.a n = A097884 (n + 1)

end A097884

/-! ## A097884.P5654617154367546557

`Δ[eq[n+1, A160595((n+1)²)]]`
-/

namespace A097884.P5654617154367546557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 ((n + 1) ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A097884.P5654617154367546557

namespace A097884

/-- `Δ[eq[n+1, A160595((n+1)²)]]` -/
def P5654617154367546557.Spec : Prop :=
  ∀ n, P5654617154367546557.a n = A097884 (n + 1)

end A097884

/-!
# A097885: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n with k valleys (n>=0, 0<=k<=floor(n/2)-1; a valley is a downstep followed by an upstep).

The programs for A097885, there is no canonical definition to state claims against.
-/

/-! ## A097885.P6131323247791559063

`A246183(n)+A134022(A149005(n))`
-/

namespace A097885.P6131323247791559063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246183 n + A134022 (A149005 n).toNat

end

end A097885.P6131323247791559063

/-! ## A097885.P14055833311580861541

`A097892(n)-A166301(A004148(n))`
-/

namespace A097885.P14055833311580861541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097892 n - A166301 (A004148 n).toNat

end

end A097885.P14055833311580861541

/-! ## A097885.P973456347579200591

`A097892(n)-A055641(A119370(n))`
-/

namespace A097885.P973456347579200591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097892 n - A055641 (A119370 n).toNat

end

end A097885.P973456347579200591

/-! ## A097885.P7059489976228226006

`A097892(n)-A185284(A000124(n))`
-/

namespace A097885.P7059489976228226006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097892 n - A185284 (A000124 n).toNat

end

end A097885.P7059489976228226006

/-! ## A097885.P16081320078855745109

`A097892(n)-A102683(A121654(n))`
-/

namespace A097885.P16081320078855745109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097892 n - A102683 (A121654 n).toNat

end

end A097885.P16081320078855745109

/-!
# A097886: Flattened 5 x 5 matrices: the n-th power a matrix M multiplied by some matrix A.

The programs for A097886, there is no canonical definition to state claims against.
-/

/-! ## A097886.P6007321351059193390

`A228571(2*A173525(n+1))`
-/

namespace A097886.P6007321351059193390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228571 (2 * A173525 (n + 1)).toNat

end

end A097886.P6007321351059193390

/-! ## A097886.P17489979039319401011

`A287864(A000041(A053824(n)))`
-/

namespace A097886.P17489979039319401011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A000041 (A053824 n).toNat).toNat

end

end A097886.P17489979039319401011

/-! ## A097886.P8688783043890712345

`A094984(A057428(n)+A053824(n))`
-/

namespace A097886.P8688783043890712345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094984 (A057428 n + A053824 n).toNat

end

end A097886.P8688783043890712345

/-! ## A097886.P8606925089041889282

`A094984(A053824(n)-A057428(n)²)`
-/

namespace A097886.P8606925089041889282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094984 (A053824 n - A057428 n ^ 2).toNat

end

end A097886.P8606925089041889282

/-! ## A097886.P4468079425533697214

`A094984((1-A053824(n))*A057428(n))`
-/

namespace A097886.P4468079425533697214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094984 ((1 - A053824 n) * A057428 n).toNat

end

end A097886.P4468079425533697214

/-!
# A097888: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n having k high humps. (A hump is an upstep followed by 0 or more flatsteps followed by a downstep. A high hump is a hump that starts at a level higher than zero.).

The programs for A097888, there is no canonical definition to state claims against.
-/

/-! ## A097888.P9490218958205568279

`gcd(A000178(n), A065274(n²))`
-/

namespace A097888.P9490218958205568279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000178 n) (A065274 (n ^ 2))

end

end A097888.P9490218958205568279

/-! ## A097888.P8353571180483104564

`and(A322026(n!), A361583(n))`
-/

namespace A097888.P8353571180483104564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A322026 (Nat.factorial n)) (A361583 n)

end

end A097888.P8353571180483104564

/-! ## A097888.P6124571432428722794

`A332013(record[Δ[A303421(n+1)]])`
-/

namespace A097888.P6124571432428722794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303421 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332013 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097888.P6124571432428722794

/-! ## A097888.P737613595769514418

`gcd(A003959(A001764(n)), A188915(n))`
-/

namespace A097888.P737613595769514418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003959 (A001764 n).toNat) (A188915 n)

end

end A097888.P737613595769514418

/-! ## A097888.P15906037065510778201

`A028297(lt[A120042(n), A028297(n)])`
-/

namespace A097888.P15906037065510778201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A097888.P15906037065510778201

/-!
# A097889: Numbers that are products of (at least two) consecutive primes.

The programs for A097889, there is no canonical definition to state claims against.
-/

/-! ## A097889.P12730608730294482779

`∪[A006094(n+1), A257891(n+1)]`
-/

namespace A097889.P12730608730294482779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097889.P12730608730294482779

/-! ## A097889.P7585342645564567086

`∩[A066312(n+1), A073485(n+1)]`
-/

namespace A097889.P7585342645564567086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097889.P7585342645564567086

/-! ## A097889.P2267706475492945215

`filter[A260442(n), A354353(#)]`
-/

namespace A097889.P2267706475492945215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A097889.P2267706475492945215

/-! ## A097889.P14214856516613122384

`record[A007913(A066312(n+1))]`
-/

namespace A097889.P14214856516613122384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A066312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097889.P14214856516613122384

/-! ## A097889.P3579515003425200183

`record[A007947(A066312(n+2))]`
-/

namespace A097889.P3579515003425200183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A066312 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097889.P3579515003425200183

/-! ## A097889.P1233073049330181366

`filter[A066312(n+1), A008966(#)]`
-/

namespace A097889.P1233073049330181366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A097889.P1233073049330181366

/-! ## A097889.P15782923684062834046

`filter[A066312(n+1), A354819(#)]`
-/

namespace A097889.P15782923684062834046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A097889.P15782923684062834046

/-! ## A097889.P944940365923948573

`filter[A073485(n+1), A354353(#)]`
-/

namespace A097889.P944940365923948573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A097889.P944940365923948573

/-! ## A097889.P15585189143086969089

`filter[A260442(n+1), A354819(#)]`
-/

namespace A097889.P15585189143086969089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A097889.P15585189143086969089

/-! ## A097889.P4404658689531108303

`filter[A073485(n+2), A354819(#)]`
-/

namespace A097889.P4404658689531108303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A097889.P4404658689531108303

/-!
# A097892: Triangle read by rows: T(n,k) is the number of Motzkin paths of length n and having k peaks at even height.

The programs for A097892, there is no canonical definition to state claims against.
-/

/-! ## A097892.P15954129823315091173

`A166301(A004148(n))+A097885(n)`
-/

namespace A097892.P15954129823315091173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 (A004148 n).toNat + A097885 n

end

end A097892.P15954129823315091173

/-! ## A097892.P1538422146427673060

`A144197(A079500(n))+A097885(n)`
-/

namespace A097892.P1538422146427673060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144197 (A079500 n).toNat + A097885 n

end

end A097892.P1538422146427673060

/-! ## A097892.P11850182171256484103

`A211225(A110318(n))+A097885(n)`
-/

namespace A097892.P11850182171256484103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211225 (A110318 n).toNat + A097885 n

end

end A097892.P11850182171256484103

/-! ## A097892.P15697002238170763580

`A166301(A097724(∑[n]))+A097885(n)`
-/

namespace A097892.P15697002238170763580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166301 (A097724 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A097885 n

end

end A097892.P15697002238170763580

/-! ## A097892.P2255186464727959868

`A185284(A003402(n+1))+A097885(n)`
-/

namespace A097892.P2255186464727959868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A003402 (n + 1)).toNat + A097885 n

end

end A097892.P2255186464727959868

/-!
# A097893: Partial sums of the central trinomial coefficients (A002426).

The programs for A097893, the canonical program `A097893.P4112899202506986756` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097893 has offset 0).

The definition of A097893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097893.P4112899202506986756

`∑[A002426(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A097893

/-- `∑[A002426(n)]` -/
def P4112899202506986756.Spec : Prop :=
  ∀ n, P4112899202506986756.a n = A097893 n

theorem P4112899202506986756.correct : P4112899202506986756.Spec := by
  intro n
  simp only [A097893]

end A097893

/-! ## A097893.P5989381354394523675

`∑[A005213(2*n)]`
-/

namespace A097893.P5989381354394523675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P5989381354394523675

namespace A097893

/-- `∑[A005213(2*n)]` -/
def P5989381354394523675.Spec : Prop :=
  ∀ n, P5989381354394523675.a n = A097893 n

end A097893

/-! ## A097893.P15714456858318559091

`∑[abs(∑[A085455(n)])]`
-/

namespace A097893.P15714456858318559091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085455 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P15714456858318559091

namespace A097893

/-- `∑[abs(∑[A085455(n)])]` -/
def P15714456858318559091.Spec : Prop :=
  ∀ n, P15714456858318559091.a n = A097893 n

end A097893

/-! ## A097893.P3694510388381260558

`∑[2*A097861(n)+1]`
-/

namespace A097893.P3694510388381260558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097861 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P3694510388381260558

namespace A097893

/-- `∑[2*A097861(n)+1]` -/
def P3694510388381260558.Spec : Prop :=
  ∀ n, P3694510388381260558.a n = A097893 n

end A097893

/-! ## A097893.P9627132457151542017

`∑[2*A257520(n)-1]`
-/

namespace A097893.P9627132457151542017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257520 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P9627132457151542017

namespace A097893

/-- `∑[2*A257520(n)-1]` -/
def P9627132457151542017.Spec : Prop :=
  ∀ n, P9627132457151542017.a n = A097893 n

end A097893

/-! ## A097893.P2239827205920509743

`∑[abs(Δ[n*A099323(n)])]`
-/

namespace A097893.P2239827205920509743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P2239827205920509743

namespace A097893

/-- `∑[abs(Δ[n*A099323(n)])]` -/
def P2239827205920509743.Spec : Prop :=
  ∀ n, P2239827205920509743.a n = A097893 n

end A097893

/-! ## A097893.P6987168747511326703

`2*A247287(n)+n+1`
-/

namespace A097893.P6987168747511326703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247287 n + (n + 1 : ℤ)

end

end A097893.P6987168747511326703

namespace A097893

/-- `2*A247287(n)+n+1` -/
def P6987168747511326703.Spec : Prop :=
  ∀ n, P6987168747511326703.a n = A097893 n

end A097893

/-! ## A097893.P7854846566359203612

`A025577(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A097893.P7854846566359203612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025577 (n + 1) - a (n - 1)

end

end A097893.P7854846566359203612

namespace A097893

/-- `A025577(n+1)-a(n-1)` -/
def P7854846566359203612.Spec : Prop :=
  ∀ n, P7854846566359203612.a n = A097893 n

end A097893

/-! ## A097893.P9268830008471173523

`A005213(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A097893.P9268830008471173523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005213 (n + n) + a (n - 1)

end

end A097893.P9268830008471173523

namespace A097893

/-- `A005213(n+n)+a(n-1)` -/
def P9268830008471173523.Spec : Prop :=
  ∀ n, P9268830008471173523.a n = A097893 n

end A097893

/-! ## A097893.P2732833137598864563

`A383527(n)+A097861(n)`
-/

namespace A097893.P2732833137598864563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383527 n + A097861 n

end

end A097893.P2732833137598864563

namespace A097893

/-- `A383527(n)+A097861(n)` -/
def P2732833137598864563.Spec : Prop :=
  ∀ n, P2732833137598864563.a n = A097893 n

end A097893

/-! ## A097893.P3265399580622525705

`A304011(n+1)+A082397(n+1)`
-/

namespace A097893.P3265399580622525705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304011 (n + 1) + A082397 (n + 1)

end

end A097893.P3265399580622525705

namespace A097893

/-- `A304011(n+1)+A082397(n+1)` -/
def P3265399580622525705.Spec : Prop :=
  ∀ n, P3265399580622525705.a n = A097893 n

theorem P3265399580622525705.correct : P3265399580622525705.Spec := by
  intro n
  simp only [A097893, Nat.add_sub_cancel, A097893.P3265399580622525705.a, A097893.P4112899202506986756.f1, A097893.P4112899202506986756.a, A002426, A002426.P18316219981098248731.a, A082397, A082397.P14776032934976419240.f1, A082397.P14776032934976419240.a, A304011, A304011.P17788673777642198236.a, A342912, A342912.P7509738024584367679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097893

/-! ## A097893.P15630252601366292227

`A081669(n)+a(n-1)-A000079(n)` with `a(0)=1`
-/

namespace A097893.P15630252601366292227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081669 n + (a (n - 1) - A000079 n)

end

end A097893.P15630252601366292227

namespace A097893

/-- `A081669(n)+a(n-1)-A000079(n)` -/
def P15630252601366292227.Spec : Prop :=
  ∀ n, P15630252601366292227.a n = A097893 n

end A097893

/-! ## A097893.P8559834011216426032

`A002426(n%A002426(n))+a(n-1)` with `a(0)=1`
-/

namespace A097893.P8559834011216426032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002426 (Int.tmod (n : ℤ) (A002426 n)).toNat + a (n - 1)

end

end A097893.P8559834011216426032

namespace A097893

/-- `A002426(n%A002426(n))+a(n-1)` -/
def P8559834011216426032.Spec : Prop :=
  ∀ n, P8559834011216426032.a n = A097893 n

end A097893

/-! ## A097893.P2721556989844238605

`A002426(n)+A383527(n)-A257520(n)`
-/

namespace A097893.P2721556989844238605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (A383527 n - A257520 n)

end

end A097893.P2721556989844238605

namespace A097893

/-- `A002426(n)+A383527(n)-A257520(n)` -/
def P2721556989844238605.Spec : Prop :=
  ∀ n, P2721556989844238605.a n = A097893 n

end A097893

/-! ## A097893.P9720183905721032496

`A383527(n+1)-A257520(n+1)`
-/

namespace A097893.P9720183905721032496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383527 (n + 1) - A257520 (n + 1)

end

end A097893.P9720183905721032496

namespace A097893

/-- `A383527(n+1)-A257520(n+1)` -/
def P9720183905721032496.Spec : Prop :=
  ∀ n, P9720183905721032496.a n = A097893 n

end A097893

/-! ## A097893.P1602289932916037789

`∑[A005717(n+1)+A005043(n)]-A005717(n+1)`
-/

namespace A097893.P1602289932916037789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 1) + A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005717 (n + 1)

end

end A097893.P1602289932916037789

namespace A097893

/-- `∑[A005717(n+1)+A005043(n)]-A005717(n+1)` -/
def P1602289932916037789.Spec : Prop :=
  ∀ n, P1602289932916037789.a n = A097893 n

end A097893

/-! ## A097893.P15212761673915784504

`A385641(n+1)-(A385641(n)+A002426(n+1))`
-/

namespace A097893.P15212761673915784504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385641 (n + 1) - (A385641 n + A002426 (n + 1))

end

end A097893.P15212761673915784504

namespace A097893

/-- `A385641(n+1)-(A385641(n)+A002426(n+1))` -/
def P15212761673915784504.Spec : Prop :=
  ∀ n, P15212761673915784504.a n = A097893 n

end A097893

/-! ## A097893.P16401708027174186890

`∑[A109188(n+1)/(n+1)]`
-/

namespace A097893.P16401708027174186890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109188 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P16401708027174186890

namespace A097893

/-- `∑[A109188(n+1)/(n+1)]` -/
def P16401708027174186890.Spec : Prop :=
  ∀ n, P16401708027174186890.a n = (A097893 n : ℚ)

end A097893

/-! ## A097893.P6080434779671964195

`∑[A305161(∑[n+3])]`
-/

namespace A097893.P6080434779671964195
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305161 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P6080434779671964195

namespace A097893

/-- `∑[A305161(∑[n+3])]` -/
def P6080434779671964195.Spec : Prop :=
  ∀ n, P6080434779671964195.a n = A097893 n

end A097893

/-! ## A097893.P8974512034037488961

`∑[A094531(∑[n])]`
-/

namespace A097893.P8974512034037488961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094531 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097893.P8974512034037488961

namespace A097893

/-- `∑[A094531(∑[n])]` -/
def P8974512034037488961.Spec : Prop :=
  ∀ n, P8974512034037488961.a n = A097893 n

end A097893

/-!
# A097894: Partial sums of A014531.

The programs for A097894, the canonical program `A097894.P17020405718607012267` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097894 has offset 1).

The definition of A097894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097894.P17020405718607012267

`∑[A014531(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A097894

/-- `∑[A014531(n+1)]` -/
def P17020405718607012267.Spec : Prop :=
  ∀ n, P17020405718607012267.a n = A097894 (n + 1)

theorem P17020405718607012267.correct : P17020405718607012267.Spec := by
  intro n
  simp only [A097894, Nat.add_sub_cancel]

end A097894

/-! ## A097894.P5472147286602551399

`∑[∑[A025180(n+2)]]`
-/

namespace A097894.P5472147286602551399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025180 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P5472147286602551399

namespace A097894

/-- `∑[∑[A025180(n+2)]]` -/
def P5472147286602551399.Spec : Prop :=
  ∀ n, P5472147286602551399.a n = A097894 (n + 1)

end A097894

/-! ## A097894.P10316145398177208711

`∑[∑[n+1]/(n+1)*A002026(n+1)]`
-/

namespace A097894.P10316145398177208711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 1 : ℚ) * (A002026 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P10316145398177208711

namespace A097894

/-- `∑[∑[n+1]/(n+1)*A002026(n+1)]` -/
def P10316145398177208711.Spec : Prop :=
  ∀ n, P10316145398177208711.a n = (A097894 (n + 1) : ℚ)

end A097894

/-! ## A097894.P10597666343068775936

`∑[record[A014531(A328628(n))]]`
-/

namespace A097894.P10597666343068775936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014531 (A328628 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P10597666343068775936

namespace A097894

/-- `∑[record[A014531(A328628(n))]]` -/
def P10597666343068775936.Spec : Prop :=
  ∀ n, P10597666343068775936.a n = A097894 (n + 1)

end A097894

/-! ## A097894.P10700907585410638975

`A005774(n+2)-A097893(n+1)`
-/

namespace A097894.P10700907585410638975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005774 (n + 2) - A097893 (n + 1)

end

end A097894.P10700907585410638975

namespace A097894

/-- `A005774(n+2)-A097893(n+1)` -/
def P10700907585410638975.Spec : Prop :=
  ∀ n, P10700907585410638975.a n = A097894 (n + 1)

end A097894

/-! ## A097894.P243183447300952480

`∑[A005717(n+2)-record[A005043(n)]]`
-/

namespace A097894.P243183447300952480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P243183447300952480

namespace A097894

/-- `∑[A005717(n+2)-record[A005043(n)]]` -/
def P243183447300952480.Spec : Prop :=
  ∀ n, P243183447300952480.a n = A097894 (n + 1)

end A097894

/-! ## A097894.P120925359462411456

`∑[(A275208(n)+A275207(n))*(n+2)/2]`
-/

namespace A097894.P120925359462411456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A275208 n + A275207 n) * (n + 2 : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P120925359462411456

namespace A097894

/-- `∑[(A275208(n)+A275207(n))*(n+2)/2]` -/
def P120925359462411456.Spec : Prop :=
  ∀ n, P120925359462411456.a n = (A097894 (n + 1) : ℚ)

end A097894

/-! ## A097894.P9896525724365373775

`A005717(n+3)-A097893(n+2)`
-/

namespace A097894.P9896525724365373775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 3) - A097893 (n + 2)

end

end A097894.P9896525724365373775

namespace A097894

/-- `A005717(n+3)-A097893(n+2)` -/
def P9896525724365373775.Spec : Prop :=
  ∀ n, P9896525724365373775.a n = A097894 (n + 1)

end A097894

/-! ## A097894.P10733706220626491935

`∑[A027907(∑[2*(n+2)])]`
-/

namespace A097894.P10733706220626491935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P10733706220626491935

namespace A097894

/-- `∑[A027907(∑[2*(n+2)])]` -/
def P10733706220626491935.Spec : Prop :=
  ∀ n, P10733706220626491935.a n = A097894 (n + 1)

end A097894

/-! ## A097894.P15058637564025135301

`∑[∑[A025177((n+2)²+n)]]`
-/

namespace A097894.P15058637564025135301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025177 ((n + 2) ^ 2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097894.P15058637564025135301

namespace A097894

/-- `∑[∑[A025177((n+2)²+n)]]` -/
def P15058637564025135301.Spec : Prop :=
  ∀ n, P15058637564025135301.a n = A097894 (n + 1)

end A097894

/-!
# A097895: Number of compositions of n with at least 1 odd and 1 even part.

The programs for A097895, the canonical program `A097895.P10815352944119541378` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097895 has offset 1).

The definition of A097895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097895.P10815352944119541378

`3*a(n-1)+a(n-2)-8*a(n-3)+2*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=11`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097895

/-- `3*a(n-1)+a(n-2)-8*a(n-3)+2*a(n-4)+4*a(n-5)` -/
def P10815352944119541378.Spec : Prop :=
  ∀ n, P10815352944119541378.a n = A097895 (n + 1)

theorem P10815352944119541378.correct : P10815352944119541378.Spec := by
  intro n
  simp only [A097895, Nat.add_sub_cancel]

end A097895

/-! ## A097895.P2326349433945609076

`2^n-A097896(n+1)`
-/

namespace A097895.P2326349433945609076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A097896 (n + 1)

end

end A097895.P2326349433945609076

namespace A097895

/-- `2^n-A097896(n+1)` -/
def P2326349433945609076.Spec : Prop :=
  ∀ n, P2326349433945609076.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P17684513752699698976

`A295857(n)+A027558(n)`
-/

namespace A097895.P17684513752699698976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295857 n + A027558 n

end

end A097895.P17684513752699698976

namespace A097895

/-- `A295857(n)+A027558(n)` -/
def P17684513752699698976.Spec : Prop :=
  ∀ n, P17684513752699698976.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P15973699586466856080

`A233411(n)-A005672(n)`
-/

namespace A097895.P15973699586466856080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n - A005672 n

end

end A097895.P15973699586466856080

namespace A097895

/-- `A233411(n)-A005672(n)` -/
def P15973699586466856080.Spec : Prop :=
  ∀ n, P15973699586466856080.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P11550251542964761118

`A027934(n)-Δ[A016116(n)]`
-/

namespace A097895.P11550251542964761118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027934 n - (f1 (n + 1) - f1 n)

end

end A097895.P11550251542964761118

namespace A097895

/-- `A027934(n)-Δ[A016116(n)]` -/
def P11550251542964761118.Spec : Prop :=
  ∀ n, P11550251542964761118.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P5135960205151887052

`A274638(n)-A000071(n+1)`
-/

namespace A097895.P5135960205151887052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274638 n - A000071 (n + 1)

end

end A097895.P5135960205151887052

namespace A097895

/-- `A274638(n)-A000071(n+1)` -/
def P5135960205151887052.Spec : Prop :=
  ∀ n, P5135960205151887052.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P886953439062762542

`A007179(n+1)-A000045(n+1)`
-/

namespace A097895.P886953439062762542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) - A000045 (n + 1)

end

end A097895.P886953439062762542

namespace A097895

/-- `A007179(n+1)-A000045(n+1)` -/
def P886953439062762542.Spec : Prop :=
  ∀ n, P886953439062762542.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P13743272875279473856

`A016116(n)+A027934(n)-A016116(n+1)`
-/

namespace A097895.P13743272875279473856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + (A027934 n - A016116 (n + 1))

end

end A097895.P13743272875279473856

namespace A097895

/-- `A016116(n)+A027934(n)-A016116(n+1)` -/
def P13743272875279473856.Spec : Prop :=
  ∀ n, P13743272875279473856.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P337917627215378741

`A005418(n+2)-(A016116(n+1)+A000045(n+1))`
-/

namespace A097895.P337917627215378741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) - (A016116 (n + 1) + A000045 (n + 1))

end

end A097895.P337917627215378741

namespace A097895

/-- `A005418(n+2)-(A016116(n+1)+A000045(n+1))` -/
def P337917627215378741.Spec : Prop :=
  ∀ n, P337917627215378741.a n = A097895 (n + 1)

end A097895

/-! ## A097895.P14450099774020261684

`A014236(n+1)/2-A000045(n+1)`
-/

namespace A097895.P14450099774020261684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014236 (n + 1) : ℚ) / 2 - (A000045 (n + 1) : ℚ)

end

end A097895.P14450099774020261684

namespace A097895

/-- `A014236(n+1)/2-A000045(n+1)` -/
def P14450099774020261684.Spec : Prop :=
  ∀ n, P14450099774020261684.a n = (A097895 (n + 1) : ℚ)

end A097895

/-!
# A097896: Number of compositions of n with either all parts odd or all parts even.

The programs for A097896, the canonical program `A097896.P18212603294401441639` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097896 has offset 1).

The definition of A097896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097896.P18212603294401441639

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A097896

/-- `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` -/
def P18212603294401441639.Spec : Prop :=
  ∀ n, P18212603294401441639.a n = A097896 (n + 1)

theorem P18212603294401441639.correct : P18212603294401441639.Spec := by
  intro n
  simp only [A097896, Nat.add_sub_cancel]

end A097896

/-! ## A097896.P18322241722432556537

`Δ[2^floor(n/2)]+A000045(n+1)`
-/

namespace A097896.P18322241722432556537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A000045 (n + 1) : ℚ)

end

end A097896.P18322241722432556537

namespace A097896

/-- `Δ[2^floor(n/2)]+A000045(n+1)` -/
def P18322241722432556537.Spec : Prop :=
  ∀ n, P18322241722432556537.a n = (A097896 (n + 1) : ℚ)

end A097896

/-! ## A097896.P12815945070744120470

`A000045(n-2)+2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A097896.P12815945070744120470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 (n - 2) + 2 * a (n - 2)

end

end A097896.P12815945070744120470

namespace A097896

/-- `A000045(n-2)+2*a(n-2)` -/
def P12815945070744120470.Spec : Prop :=
  ∀ n, P12815945070744120470.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P12153042247824078561

`A060546(n)+A005672(n)`
-/

namespace A097896.P12153042247824078561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n + A005672 n

end

end A097896.P12153042247824078561

namespace A097896

/-- `A060546(n)+A005672(n)` -/
def P12153042247824078561.Spec : Prop :=
  ∀ n, P12153042247824078561.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P1265833341290853378

`A295725(n)+A295619(n)`
-/

namespace A097896.P1265833341290853378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 n + A295619 n

end

end A097896.P1265833341290853378

namespace A097896

/-- `A295725(n)+A295619(n)` -/
def P1265833341290853378.Spec : Prop :=
  ∀ n, P1265833341290853378.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P3243432787229092502

`A174959(n+1)+A052955(n)`
-/

namespace A097896.P3243432787229092502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 (n + 1) + A052955 n

end

end A097896.P3243432787229092502

namespace A097896

/-- `A174959(n+1)+A052955(n)` -/
def P3243432787229092502.Spec : Prop :=
  ∀ n, P3243432787229092502.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P5412238456444006094

`A000071(n+1)+Δ[A016116(n)]+1`
-/

namespace A097896.P5412238456444006094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (f1 (n + 1) - f1 n + 1)

end

end A097896.P5412238456444006094

namespace A097896

/-- `A000071(n+1)+Δ[A016116(n)]+1` -/
def P5412238456444006094.Spec : Prop :=
  ∀ n, P5412238456444006094.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P2506245044375510524

`A000045(n+1)+A077957(n+1)/2`
-/

namespace A097896.P2506245044375510524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) + (A077957 (n + 1) : ℚ) / 2

end

end A097896.P2506245044375510524

namespace A097896

/-- `A000045(n+1)+A077957(n+1)/2` -/
def P2506245044375510524.Spec : Prop :=
  ∀ n, P2506245044375510524.a n = (A097896 (n + 1) : ℚ)

end A097896

/-! ## A097896.P14020818827716552991

`A295619(n+1)+A000045(n)-A295619(n)`
-/

namespace A097896.P14020818827716552991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295619 (n + 1) + (A000045 n - A295619 n)

end

end A097896.P14020818827716552991

namespace A097896

/-- `A295619(n+1)+A000045(n)-A295619(n)` -/
def P14020818827716552991.Spec : Prop :=
  ∀ n, P14020818827716552991.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P14739447658338164310

`A295718(n+1)+A295727(n)-A295718(n)`
-/

namespace A097896.P14739447658338164310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295718 (n + 1) + (A295727 n - A295718 n)

end

end A097896.P14739447658338164310

namespace A097896

/-- `A295718(n+1)+A295727(n)-A295718(n)` -/
def P14739447658338164310.Spec : Prop :=
  ∀ n, P14739447658338164310.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P14709185146572518601

`A000045(n+1)+A000035(n)*A016116(n)`
-/

namespace A097896.P14709185146572518601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000035 n * A016116 n

end

end A097896.P14709185146572518601

namespace A097896

/-- `A000045(n+1)+A000035(n)*A016116(n)` -/
def P14709185146572518601.Spec : Prop :=
  ∀ n, P14709185146572518601.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P16323193357044473466

`A000045(n+1)+A016116(n+1)-A016116(n)`
-/

namespace A097896.P16323193357044473466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A016116 (n + 1) - A016116 n)

end

end A097896.P16323193357044473466

namespace A097896

/-- `A000045(n+1)+A016116(n+1)-A016116(n)` -/
def P16323193357044473466.Spec : Prop :=
  ∀ n, P16323193357044473466.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P15336050638796969603

`ogf((1+x-3x^2-x^3)/(1-x-3x^2+2x^3+2x^4))`
-/

namespace A097896.P15336050638796969603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, -1] [1, -1, -3, 2, 2] n

end

end A097896.P15336050638796969603

namespace A097896

/-- `ogf((1+x-3x^2-x^3)/(1-x-3x^2+2x^3+2x^4))` -/
def P15336050638796969603.Spec : Prop :=
  ∀ n, P15336050638796969603.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P14737835722051707523

`A079285(n)-A028892(n)`
-/

namespace A097896.P14737835722051707523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079285 n - A028892 n

end

end A097896.P14737835722051707523

namespace A097896

/-- `A079285(n)-A028892(n)` -/
def P14737835722051707523.Spec : Prop :=
  ∀ n, P14737835722051707523.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P11135848357080391146

`A295727(n+1)+A000045(n)-A005672(n)`
-/

namespace A097896.P11135848357080391146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295727 (n + 1) + (A000045 n - A005672 n)

end

end A097896.P11135848357080391146

namespace A097896

/-- `A295727(n+1)+A000045(n)-A005672(n)` -/
def P11135848357080391146.Spec : Prop :=
  ∀ n, P11135848357080391146.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P17295012019929962914

`A022086(n)-A295727(n)`
-/

namespace A097896.P17295012019929962914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n - A295727 n

end

end A097896.P17295012019929962914

namespace A097896

/-- `A022086(n)-A295727(n)` -/
def P17295012019929962914.Spec : Prop :=
  ∀ n, P17295012019929962914.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P389582035546482467

`Δ[A016116(n)+A000045(n+2)]`
-/

namespace A097896.P389582035546482467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097896.P389582035546482467

namespace A097896

/-- `Δ[A016116(n)+A000045(n+2)]` -/
def P389582035546482467.Spec : Prop :=
  ∀ n, P389582035546482467.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P10687349390640621063

`Δ[A016116(n)+A000071(n+2)]`
-/

namespace A097896.P10687349390640621063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097896.P10687349390640621063

namespace A097896

/-- `Δ[A016116(n)+A000071(n+2)]` -/
def P10687349390640621063.Spec : Prop :=
  ∀ n, P10687349390640621063.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P12176217140069621171

`Δ[A016116(n)+A001611(n+2)]`
-/

namespace A097896.P12176217140069621171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A001611 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097896.P12176217140069621171

namespace A097896

/-- `Δ[A016116(n)+A001611(n+2)]` -/
def P12176217140069621171.Spec : Prop :=
  ∀ n, P12176217140069621171.a n = A097896 (n + 1)

end A097896

/-! ## A097896.P10445104323914662236

`Δ[A212804(n+3)+A016116(n)]`
-/

namespace A097896.P10445104323914662236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) + A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097896.P10445104323914662236

namespace A097896

/-- `Δ[A212804(n+3)+A016116(n)]` -/
def P10445104323914662236.Spec : Prop :=
  ∀ n, P10445104323914662236.a n = A097896 (n + 1)

end A097896

/-!
# A097898: Triangle read by rows: T(n,k) is the number of permutations of [n] with k runs of length 1. For example, 457/3/26/1 has two runs of length 1: 3 and 1.

The programs for A097898, there is no canonical definition to state claims against.
-/

/-! ## A097898.P15654425728565864344

`A095370(2^A143949(n))`
-/

namespace A097898.P15654425728565864344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A143949 n : ℤ))).toNat

end

end A097898.P15654425728565864344

/-! ## A097898.P12074898781218775051

`A048766(A002378(A124323(n)²))`
-/

namespace A097898.P12074898781218775051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002378 (A124323 n ^ 2).toNat).toNat

end

end A097898.P12074898781218775051

/-! ## A097898.P3320263032521339425

`∑{d}[A124323(n), A006530(A000142(#))]`
-/

namespace A097898.P3320263032521339425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 (A000142 d).toNat

end

end A097898.P3320263032521339425

/-!
# A097899: Number of permutations of [n] with no runs of length 1. (The permutation 3574162 has two runs of length 1: 357/4/16/2).

The programs for A097899, there is no canonical definition to state claims against.
-/

/-! ## A097899.P15677544279529781887

`A000142(n)-A228614(n)`
-/

namespace A097899.P15677544279529781887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A228614 n

end

end A097899.P15677544279529781887

/-! ## A097899.P2183958088835763079

`A186735(n)+A185652(n)`
-/

namespace A097899.P2183958088835763079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186735 n + A185652 n

end

end A097899.P2183958088835763079

/-! ## A097899.P11459656204204968883

`abs(A133942(n))-A228614(n)`
-/

namespace A097899.P11459656204204968883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n| - A228614 n

end

end A097899.P11459656204204968883

/-! ## A097899.P16170083122042737133

`∏[A028310(n)]-A228614(n)`
-/

namespace A097899.P16170083122042737133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A228614 n

end

end A097899.P16170083122042737133

/-! ## A097899.P16824820630860401608

`∏[A065033(2*n)]-A228614(n)`
-/

namespace A097899.P16824820630860401608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A228614 n

end

end A097899.P16824820630860401608

/-! ## A097899.P10875249263300104856

`∏[A000007(n)+n]-A228614(n)`
-/

namespace A097899.P10875249263300104856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A228614 n

end

end A097899.P10875249263300104856

/-! ## A097899.P12039551059579878367

`A028421(A000217(n))-A228614(n)`
-/

namespace A097899.P12039551059579878367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat - A228614 n

end

end A097899.P12039551059579878367

