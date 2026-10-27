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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A028200: Expansion of 1/((1-6x)*(1-7x)*(1-8x)*(1-9x)).

The programs for A028200, the canonical program `A028200.P10250229952896004576` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028200 has offset 0).

The definition of A028200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028200.P10250229952896004576

`17*a(n-1)-72*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=30`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028200

/-- `17*a(n-1)-72*a(n-2)+7^(n+1)-6^(n+1)` -/
def P10250229952896004576.Spec : Prop :=
  ∀ n, P10250229952896004576.a n = A028200 n

theorem P10250229952896004576.correct : P10250229952896004576.Spec := by
  intro n
  simp only [A028200]

end A028200

/-! ## A028200.P1863284116553132870

`(9^(n+3)-3*8^(n+3)+3*7^(n+3)-6^(n+3))/6`
-/

namespace A028200.P1863284116553132870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (3 * 8 ^ (n + 3) : ℤ) + (3 * 7 ^ (n + 3) : ℤ) - (6 ^ (n + 3) : ℤ) : ℚ) / 6

end

end A028200.P1863284116553132870

namespace A028200

/-- `(9^(n+3)-3*8^(n+3)+3*7^(n+3)-6^(n+3))/6` -/
def P1863284116553132870.Spec : Prop :=
  ∀ n, P1863284116553132870.a n = (A028200 n : ℚ)

theorem P1863284116553132870.correct : P1863284116553132870.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028200, Nat.add_sub_cancel, A028200.P1863284116553132870.a, A028200.P10250229952896004576.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028200, Nat.add_sub_cancel, A028200.P1863284116553132870.a, A028200.P10250229952896004576.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028200

/-! ## A028200.P7992062013575371200

`Δ[A023950(n)-A023949(n)]`
-/

namespace A028200.P7992062013575371200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023950 n - A023949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028200.P7992062013575371200

namespace A028200

/-- `Δ[A023950(n)-A023949(n)]` -/
def P7992062013575371200.Spec : Prop :=
  ∀ n, P7992062013575371200.a n = A028200 n

end A028200

/-! ## A028200.P3184755595816551364

`Δ[A023954(n)-A023950(n)]`
-/

namespace A028200.P3184755595816551364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023954 n - A023950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028200.P3184755595816551364

namespace A028200

/-- `Δ[A023954(n)-A023950(n)]` -/
def P3184755595816551364.Spec : Prop :=
  ∀ n, P3184755595816551364.a n = A028200 n

end A028200

/-! ## A028200.P11472003110998368489

`2*A028089(n)-A028074(n)`
-/

namespace A028200.P11472003110998368489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028089 n - A028074 n

end

end A028200.P11472003110998368489

namespace A028200

/-- `2*A028089(n)-A028074(n)` -/
def P11472003110998368489.Spec : Prop :=
  ∀ n, P11472003110998368489.a n = A028200 n

end A028200

/-! ## A028200.P17131077309895284189

`2*A028170(n)-A028165(n)`
-/

namespace A028200.P17131077309895284189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028170 n - A028165 n

end

end A028200.P17131077309895284189

namespace A028200

/-- `2*A028170(n)-A028165(n)` -/
def P17131077309895284189.Spec : Prop :=
  ∀ n, P17131077309895284189.a n = A028200 n

end A028200

/-! ## A028200.P6127307166777984989

`2*A028180(n)-A028170(n)`
-/

namespace A028200.P6127307166777984989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028180 n - A028170 n

end

end A028200.P6127307166777984989

namespace A028200

/-- `2*A028180(n)-A028170(n)` -/
def P6127307166777984989.Spec : Prop :=
  ∀ n, P6127307166777984989.a n = A028200 n

end A028200

/-! ## A028200.P9524756584660774998

`2*A028201(n)-A028204(n)`
-/

namespace A028200.P9524756584660774998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028201 n - A028204 n

end

end A028200.P9524756584660774998

namespace A028200

/-- `2*A028201(n)-A028204(n)` -/
def P9524756584660774998.Spec : Prop :=
  ∀ n, P9524756584660774998.a n = A028200 n

end A028200

/-! ## A028200.P1515159174335621928

`A028180(n)+A028202(n)-A028175(n)`
-/

namespace A028200.P1515159174335621928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028180 n + (A028202 n - A028175 n)

end

end A028200.P1515159174335621928

namespace A028200

/-- `A028180(n)+A028202(n)-A028175(n)` -/
def P1515159174335621928.Spec : Prop :=
  ∀ n, P1515159174335621928.a n = A028200 n

end A028200

/-!
# A028201: Expansion of 1/((1-6x)(1-7x)(1-8x)(1-10x)).

The programs for A028201, the canonical program `A028201.P6715037780524328564` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028201 has offset 0).

The definition of A028201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028201.P6715037780524328564

`18*a(n-1)-80*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=31`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028201

/-- `18*a(n-1)-80*a(n-2)+7^(n+1)-6^(n+1)` -/
def P6715037780524328564.Spec : Prop :=
  ∀ n, P6715037780524328564.a n = A028201 n

theorem P6715037780524328564.correct : P6715037780524328564.Spec := by
  intro n
  simp only [A028201]

end A028201

/-! ## A028201.P4706998723904443999

`(10^(n+3)-6*8^(n+3)+8*7^(n+3)-3*6^(n+3))/24`
-/

namespace A028201.P4706998723904443999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (6 * 8 ^ (n + 3) : ℤ) + (8 * 7 ^ (n + 3) : ℤ) - (3 * 6 ^ (n + 3) : ℤ) : ℚ) / 24

end

end A028201.P4706998723904443999

namespace A028201

/-- `(10^(n+3)-6*8^(n+3)+8*7^(n+3)-3*6^(n+3))/24` -/
def P4706998723904443999.Spec : Prop :=
  ∀ n, P4706998723904443999.a n = (A028201 n : ℚ)

theorem P4706998723904443999.correct : P4706998723904443999.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028201, Nat.add_sub_cancel, A028201.P4706998723904443999.a, A028201.P6715037780524328564.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028201, Nat.add_sub_cancel, A028201.P4706998723904443999.a, A028201.P6715037780524328564.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028201

/-! ## A028201.P57194121046774893

`Δ[A021829(n)-A021854(n)]`
-/

namespace A028201.P57194121046774893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021829 n - A021854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028201.P57194121046774893

namespace A028201

/-- `Δ[A021829(n)-A021854(n)]` -/
def P57194121046774893.Spec : Prop :=
  ∀ n, P57194121046774893.a n = A028201 n

end A028201

/-! ## A028201.P8974603737194092098

`2*A028136(n)-A028130(n)`
-/

namespace A028201.P8974603737194092098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028136 n - A028130 n

end

end A028201.P8974603737194092098

namespace A028201

/-- `2*A028136(n)-A028130(n)` -/
def P8974603737194092098.Spec : Prop :=
  ∀ n, P8974603737194092098.a n = A028201 n

end A028201

/-! ## A028201.P12085046675452256292

`2*A028146(n)-A028132(n)`
-/

namespace A028201.P12085046675452256292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028146 n - A028132 n

end

end A028201.P12085046675452256292

namespace A028201

/-- `2*A028146(n)-A028132(n)` -/
def P12085046675452256292.Spec : Prop :=
  ∀ n, P12085046675452256292.a n = A028201 n

end A028201

/-! ## A028201.P17870306824444725986

`2*A028181(n)-A028171(n)`
-/

namespace A028201.P17870306824444725986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028181 n - A028171 n

end

end A028201.P17870306824444725986

namespace A028201

/-- `2*A028181(n)-A028171(n)` -/
def P17870306824444725986.Spec : Prop :=
  ∀ n, P17870306824444725986.a n = A028201 n

end A028201

/-! ## A028201.P4651028337122845316

`A028145(n)+A028149(n)-A028132(n)`
-/

namespace A028201.P4651028337122845316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028145 n + (A028149 n - A028132 n)

end

end A028201.P4651028337122845316

namespace A028201

/-- `A028145(n)+A028149(n)-A028132(n)` -/
def P4651028337122845316.Spec : Prop :=
  ∀ n, P4651028337122845316.a n = A028201 n

end A028201

/-! ## A028201.P2604991731878352574

`A028145(n)+A028204(n)-A028139(n)`
-/

namespace A028201.P2604991731878352574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028145 n + (A028204 n - A028139 n)

end

end A028201.P2604991731878352574

namespace A028201

/-- `A028145(n)+A028204(n)-A028139(n)` -/
def P2604991731878352574.Spec : Prop :=
  ∀ n, P2604991731878352574.a n = A028201 n

end A028201

/-! ## A028201.P14905786399657192388

`Δ[A023955(n)-A023951(n)]`
-/

namespace A028201.P14905786399657192388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023955 n - A023951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028201.P14905786399657192388

namespace A028201

/-- `Δ[A023955(n)-A023951(n)]` -/
def P14905786399657192388.Spec : Prop :=
  ∀ n, P14905786399657192388.a n = A028201 n

end A028201

/-!
# A028202: Expansion of 1/((1-6x)(1-7x)(1-8x)(1-11x)).

The programs for A028202, the canonical program `A028202.P1853257622058926545` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028202 has offset 0).

The definition of A028202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028202.P1853257622058926545

`19*a(n-1)-88*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028202

/-- `19*a(n-1)-88*a(n-2)+7^(n+1)-6^(n+1)` -/
def P1853257622058926545.Spec : Prop :=
  ∀ n, P1853257622058926545.a n = A028202 n

theorem P1853257622058926545.correct : P1853257622058926545.Spec := by
  intro n
  simp only [A028202]

end A028202

/-! ## A028202.P18310897825006408229

`Δ[A023956(n)-A023952(n)]`
-/

namespace A028202.P18310897825006408229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023956 n - A023952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028202.P18310897825006408229

namespace A028202

/-- `Δ[A023956(n)-A023952(n)]` -/
def P18310897825006408229.Spec : Prop :=
  ∀ n, P18310897825006408229.a n = A028202 n

end A028202

/-! ## A028202.P9288715123767927487

`2*A028081(n)-A028074(n)`
-/

namespace A028202.P9288715123767927487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028081 n - A028074 n

end

end A028202.P9288715123767927487

namespace A028202

/-- `2*A028081(n)-A028074(n)` -/
def P9288715123767927487.Spec : Prop :=
  ∀ n, P9288715123767927487.a n = A028202 n

end A028202

/-! ## A028202.P545199141969277502

`2*A028147(n)-A028133(n)`
-/

namespace A028202.P545199141969277502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028147 n - A028133 n

end

end A028202.P545199141969277502

namespace A028202

/-- `2*A028147(n)-A028133(n)` -/
def P545199141969277502.Spec : Prop :=
  ∀ n, P545199141969277502.a n = A028202 n

end A028202

/-! ## A028202.P7319174836606098372

`A020593(n+1)-A020573(n+1)`
-/

namespace A028202.P7319174836606098372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020593 (n + 1) - A020573 (n + 1)

end

end A028202.P7319174836606098372

namespace A028202

/-- `A020593(n+1)-A020573(n+1)` -/
def P7319174836606098372.Spec : Prop :=
  ∀ n, P7319174836606098372.a n = A028202 n

end A028202

/-! ## A028202.P5186247969914203432

`A028077(n)+A028091(n)-A028074(n)`
-/

namespace A028202.P5186247969914203432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028077 n + (A028091 n - A028074 n)

end

end A028202.P5186247969914203432

namespace A028202

/-- `A028077(n)+A028091(n)-A028074(n)` -/
def P5186247969914203432.Spec : Prop :=
  ∀ n, P5186247969914203432.a n = A028202 n

end A028202

/-! ## A028202.P4846330281327630744

`A028113(n)+A028147(n)-A028115(n)`
-/

namespace A028202.P4846330281327630744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028113 n + (A028147 n - A028115 n)

end

end A028202.P4846330281327630744

namespace A028202

/-- `A028113(n)+A028147(n)-A028115(n)` -/
def P4846330281327630744.Spec : Prop :=
  ∀ n, P4846330281327630744.a n = A028202 n

end A028202

/-!
# A028203: Expansion of 1/((1-6x)(1-7x)(1-8x)(1-12x)).

The programs for A028203, the canonical program `A028203.P15638977273021326386` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028203 has offset 0).

The definition of A028203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028203.P15638977273021326386

`20*a(n-1)-96*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028203

/-- `20*a(n-1)-96*a(n-2)+7^(n+1)-6^(n+1)` -/
def P15638977273021326386.Spec : Prop :=
  ∀ n, P15638977273021326386.a n = A028203 n

theorem P15638977273021326386.correct : P15638977273021326386.Spec := by
  intro n
  simp only [A028203]

end A028203

/-! ## A028203.P8633295911808402325

`A020594(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A028203.P8633295911808402325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020594 n + 7 * a (n - 1)

end

end A028203.P8633295911808402325

namespace A028203

/-- `A020594(n)+7*a(n-1)` -/
def P8633295911808402325.Spec : Prop :=
  ∀ n, P8633295911808402325.a n = A028203 n

end A028203

/-! ## A028203.P8077446159911068232

`2*A028134(n)-A028130(n)`
-/

namespace A028203.P8077446159911068232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028134 n - A028130 n

end

end A028203.P8077446159911068232

namespace A028203

/-- `2*A028134(n)-A028130(n)` -/
def P8077446159911068232.Spec : Prop :=
  ∀ n, P8077446159911068232.a n = A028203 n

end A028203

/-! ## A028203.P427125469247481258

`2*A028183(n)-A028173(n)`
-/

namespace A028203.P427125469247481258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028183 n - A028173 n

end

end A028203.P427125469247481258

namespace A028203

/-- `2*A028183(n)-A028173(n)` -/
def P427125469247481258.Spec : Prop :=
  ∀ n, P427125469247481258.a n = A028203 n

end A028203

/-! ## A028203.P10508719115931236777

`(A028208(n)+A028201(n))/2`
-/

namespace A028203.P10508719115931236777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028208 n + A028201 n : ℚ) / 2

end

end A028203.P10508719115931236777

namespace A028203

/-- `(A028208(n)+A028201(n))/2` -/
def P10508719115931236777.Spec : Prop :=
  ∀ n, P10508719115931236777.a n = (A028203 n : ℚ)

end A028203

/-! ## A028203.P7541285764603945039

`2*A028206(n)-A028212(n)`
-/

namespace A028203.P7541285764603945039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028206 n - A028212 n

end

end A028203.P7541285764603945039

namespace A028203

/-- `2*A028206(n)-A028212(n)` -/
def P7541285764603945039.Spec : Prop :=
  ∀ n, P7541285764603945039.a n = A028203 n

end A028203

/-! ## A028203.P18437589934930337601

`(A028221(n)+A028200(n))/2`
-/

namespace A028203.P18437589934930337601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028221 n + A028200 n : ℚ) / 2

end

end A028203.P18437589934930337601

namespace A028203

/-- `(A028221(n)+A028200(n))/2` -/
def P18437589934930337601.Spec : Prop :=
  ∀ n, P18437589934930337601.a n = (A028203 n : ℚ)

end A028203

/-! ## A028203.P7234462794834316931

`2*A028208(n)-A028223(n)`
-/

namespace A028203.P7234462794834316931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028208 n - A028223 n

end

end A028203.P7234462794834316931

namespace A028203

/-- `2*A028208(n)-A028223(n)` -/
def P7234462794834316931.Spec : Prop :=
  ∀ n, P7234462794834316931.a n = A028203 n

end A028203

/-! ## A028203.P1090913791381531521

`A028078(n)+A028082(n)-A028074(n)`
-/

namespace A028203.P1090913791381531521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028078 n + (A028082 n - A028074 n)

end

end A028203.P1090913791381531521

namespace A028203

/-- `A028078(n)+A028082(n)-A028074(n)` -/
def P1090913791381531521.Spec : Prop :=
  ∀ n, P1090913791381531521.a n = A028203 n

end A028203

/-! ## A028203.P14983626525258571099

`A028173(n)+A028183(n)-A028169(n)`
-/

namespace A028203.P14983626525258571099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028173 n + (A028183 n - A028169 n)

end

end A028203.P14983626525258571099

namespace A028203

/-- `A028173(n)+A028183(n)-A028169(n)` -/
def P14983626525258571099.Spec : Prop :=
  ∀ n, P14983626525258571099.a n = A028203 n

end A028203

/-!
# A028204: Expansion of 1/((1-6*x)*(1-7*x)*(1-9*x)*(1-10*x)).

The programs for A028204, the canonical program `A028204.P9962387879513996024` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028204 has offset 0).

The definition of A028204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028204.P9962387879513996024

`19*a(n-1)-90*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=32`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028204

/-- `19*a(n-1)-90*a(n-2)+7^(n+1)-6^(n+1)` -/
def P9962387879513996024.Spec : Prop :=
  ∀ n, P9962387879513996024.a n = A028204 n

theorem P9962387879513996024.correct : P9962387879513996024.Spec := by
  intro n
  simp only [A028204]

end A028204

/-! ## A028204.P10921126829116199704

`Δ[A023951(n)-A023950(n)]`
-/

namespace A028204.P10921126829116199704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023951 n - A023950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028204.P10921126829116199704

namespace A028204

/-- `Δ[A023951(n)-A023950(n)]` -/
def P10921126829116199704.Spec : Prop :=
  ∀ n, P10921126829116199704.a n = A028204 n

end A028204

/-! ## A028204.P16500587435628767813

`2*A028093(n)-A028076(n)`
-/

namespace A028204.P16500587435628767813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028093 n - A028076 n

end

end A028204.P16500587435628767813

namespace A028204

/-- `2*A028093(n)-A028076(n)` -/
def P16500587435628767813.Spec : Prop :=
  ∀ n, P16500587435628767813.a n = A028204 n

end A028204

/-! ## A028204.P18298887733445877294

`2*A028139(n)-A028131(n)`
-/

namespace A028204.P18298887733445877294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028139 n - A028131 n

end

end A028204.P18298887733445877294

namespace A028204

/-- `2*A028139(n)-A028131(n)` -/
def P18298887733445877294.Spec : Prop :=
  ∀ n, P18298887733445877294.a n = A028204 n

end A028204

/-! ## A028204.P202120053618759150

`2*A028201(n)-A028200(n)`
-/

namespace A028204.P202120053618759150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028201 n - A028200 n

end

end A028204.P202120053618759150

namespace A028204

/-- `2*A028201(n)-A028200(n)` -/
def P202120053618759150.Spec : Prop :=
  ∀ n, P202120053618759150.a n = A028204 n

end A028204

/-! ## A028204.P4458614932571117637

`(A028210(n)+A028201(n))/2`
-/

namespace A028204.P4458614932571117637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028210 n + A028201 n : ℚ) / 2

end

end A028204.P4458614932571117637

namespace A028204

/-- `(A028210(n)+A028201(n))/2` -/
def P4458614932571117637.Spec : Prop :=
  ∀ n, P4458614932571117637.a n = (A028204 n : ℚ)

end A028204

/-! ## A028204.P12072360326400213919

`A028200(n)+A028210(n)-A028201(n)`
-/

namespace A028204.P12072360326400213919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028200 n + (A028210 n - A028201 n)

end

end A028204.P12072360326400213919

namespace A028204

/-- `A028200(n)+A028210(n)-A028201(n)` -/
def P12072360326400213919.Spec : Prop :=
  ∀ n, P12072360326400213919.a n = A028204 n

end A028204

/-! ## A028204.P8831713803439411705

`2*A028205(n)-A028207(n)`
-/

namespace A028204.P8831713803439411705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028205 n - A028207 n

end

end A028204.P8831713803439411705

namespace A028204

/-- `2*A028205(n)-A028207(n)` -/
def P8831713803439411705.Spec : Prop :=
  ∀ n, P8831713803439411705.a n = A028204 n

end A028204

/-! ## A028204.P13422761685128823528

`2*A028207(n)-A028216(n)`
-/

namespace A028204.P13422761685128823528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028207 n - A028216 n

end

end A028204.P13422761685128823528

namespace A028204

/-- `2*A028207(n)-A028216(n)` -/
def P13422761685128823528.Spec : Prop :=
  ∀ n, P13422761685128823528.a n = A028204 n

end A028204

/-! ## A028204.P15763691475532990038

`A028206(n)+A028208(n)-A028217(n)`
-/

namespace A028204.P15763691475532990038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028206 n + (A028208 n - A028217 n)

end

end A028204.P15763691475532990038

namespace A028204

/-- `A028206(n)+A028208(n)-A028217(n)` -/
def P15763691475532990038.Spec : Prop :=
  ∀ n, P15763691475532990038.a n = A028204 n

end A028204

/-!
# A028205: Expansion of 1/((1-6x)(1-7x)(1-9x)(1-11x)).

The programs for A028205, the canonical program `A028205.P2371027374753112585` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028205 has offset 0).

The definition of A028205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028205.P2371027374753112585

`20*a(n-1)-99*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028205

/-- `20*a(n-1)-99*a(n-2)+7^(n+1)-6^(n+1)` -/
def P2371027374753112585.Spec : Prop :=
  ∀ n, P2371027374753112585.a n = A028205 n

theorem P2371027374753112585.correct : P2371027374753112585.Spec := by
  intro n
  simp only [A028205]

end A028205

/-! ## A028205.P8229654495896675006

`Δ[A021524(n)-A021594(n)]`
-/

namespace A028205.P8229654495896675006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021524 n - A021594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028205.P8229654495896675006

namespace A028205

/-- `Δ[A021524(n)-A021594(n)]` -/
def P8229654495896675006.Spec : Prop :=
  ∀ n, P8229654495896675006.a n = A028205 n

end A028205

/-! ## A028205.P16800964402456676088

`2*A028084(n)-A028075(n)`
-/

namespace A028205.P16800964402456676088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028084 n - A028075 n

end

end A028205.P16800964402456676088

namespace A028205

/-- `2*A028084(n)-A028075(n)` -/
def P16800964402456676088.Spec : Prop :=
  ∀ n, P16800964402456676088.a n = A028205 n

end A028205

/-! ## A028205.P4305504117340787400

`2*A028175(n)-A028168(n)`
-/

namespace A028205.P4305504117340787400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028175 n - A028168 n

end

end A028205.P4305504117340787400

namespace A028205

/-- `2*A028175(n)-A028168(n)` -/
def P4305504117340787400.Spec : Prop :=
  ∀ n, P4305504117340787400.a n = A028205 n

end A028205

/-! ## A028205.P13567485328967186716

`2*A028185(n)-A028175(n)`
-/

namespace A028205.P13567485328967186716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028185 n - A028175 n

end

end A028205.P13567485328967186716

namespace A028205

/-- `2*A028185(n)-A028175(n)` -/
def P13567485328967186716.Spec : Prop :=
  ∀ n, P13567485328967186716.a n = A028205 n

end A028205

/-! ## A028205.P13308451519238451511

`(A028207(n)+A028204(n))/2`
-/

namespace A028205.P13308451519238451511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028207 n + A028204 n : ℚ) / 2

end

end A028205.P13308451519238451511

namespace A028205

/-- `(A028207(n)+A028204(n))/2` -/
def P13308451519238451511.Spec : Prop :=
  ∀ n, P13308451519238451511.a n = (A028205 n : ℚ)

end A028205

/-! ## A028205.P6129883735201051695

`(A020573(n+1)-A020571(n+1))/2`
-/

namespace A028205.P6129883735201051695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020573 (n + 1) - A020571 (n + 1) : ℚ) / 2

end

end A028205.P6129883735201051695

namespace A028205

/-- `(A020573(n+1)-A020571(n+1))/2` -/
def P6129883735201051695.Spec : Prop :=
  ∀ n, P6129883735201051695.a n = (A028205 n : ℚ)

end A028205

/-! ## A028205.P14938425614223190274

`A024439(n)+A024772(n)-A023950(n)`
-/

namespace A028205.P14938425614223190274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024439 n + (A024772 n - A023950 n)

end

end A028205.P14938425614223190274

namespace A028205

/-- `A024439(n)+A024772(n)-A023950(n)` -/
def P14938425614223190274.Spec : Prop :=
  ∀ n, P14938425614223190274.a n = A028205 n

end A028205

/-! ## A028205.P889966560439853597

`A028083(n)+A028086(n)-A028075(n)`
-/

namespace A028205.P889966560439853597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028083 n + (A028086 n - A028075 n)

end

end A028205.P889966560439853597

namespace A028205

/-- `A028083(n)+A028086(n)-A028075(n)` -/
def P889966560439853597.Spec : Prop :=
  ∀ n, P889966560439853597.a n = A028205 n

end A028205

/-! ## A028205.P2179616925804537151

`A028086(n)+A028093(n)-A028076(n)`
-/

namespace A028205.P2179616925804537151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028086 n + (A028093 n - A028076 n)

end

end A028205.P2179616925804537151

namespace A028205

/-- `A028086(n)+A028093(n)-A028076(n)` -/
def P2179616925804537151.Spec : Prop :=
  ∀ n, P2179616925804537151.a n = A028205 n

end A028205

/-!
# A028206: Expansion of 1/((1-6x)(1-7x)(1-9x)(1-12x)).

The programs for A028206, the canonical program `A028206.P13499655734683264982` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028206 has offset 0).

The definition of A028206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028206.P13499655734683264982

`21*a(n-1)-108*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028206

/-- `21*a(n-1)-108*a(n-2)+7^(n+1)-6^(n+1)` -/
def P13499655734683264982.Spec : Prop :=
  ∀ n, P13499655734683264982.a n = A028206 n

theorem P13499655734683264982.correct : P13499655734683264982.Spec := by
  intro n
  simp only [A028206]

end A028206

/-! ## A028206.P9420010853426066140

`2*A028092(n)-A028079(n)`
-/

namespace A028206.P9420010853426066140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028092 n - A028079 n

end

end A028206.P9420010853426066140

namespace A028206

/-- `2*A028092(n)-A028079(n)` -/
def P9420010853426066140.Spec : Prop :=
  ∀ n, P9420010853426066140.a n = A028206 n

end A028206

/-! ## A028206.P7865390813978567228

`2*A028095(n)-A028078(n)`
-/

namespace A028206.P7865390813978567228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028095 n - A028078 n

end

end A028206.P7865390813978567228

namespace A028206

/-- `2*A028095(n)-A028078(n)` -/
def P7865390813978567228.Spec : Prop :=
  ∀ n, P7865390813978567228.a n = A028206 n

end A028206

/-! ## A028206.P1300811203814625990

`2*A028176(n)-A028169(n)`
-/

namespace A028206.P1300811203814625990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028176 n - A028169 n

end

end A028206.P1300811203814625990

namespace A028206

/-- `2*A028176(n)-A028169(n)` -/
def P1300811203814625990.Spec : Prop :=
  ∀ n, P1300811203814625990.a n = A028206 n

end A028206

/-! ## A028206.P10465692793823022840

`(A028212(n)+A028203(n))/2`
-/

namespace A028206.P10465692793823022840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028212 n + A028203 n : ℚ) / 2

end

end A028206.P10465692793823022840

namespace A028206

/-- `(A028212(n)+A028203(n))/2` -/
def P10465692793823022840.Spec : Prop :=
  ∀ n, P10465692793823022840.a n = (A028206 n : ℚ)

end A028206

/-! ## A028206.P14793873731166091836

`A028078(n)+A028095(n)-A028075(n)`
-/

namespace A028206.P14793873731166091836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028078 n + (A028095 n - A028075 n)

end

end A028206.P14793873731166091836

namespace A028206

/-- `A028078(n)+A028095(n)-A028075(n)` -/
def P14793873731166091836.Spec : Prop :=
  ∀ n, P14793873731166091836.a n = A028206 n

end A028206

/-! ## A028206.P9778958296893530495

`A028083(n)+A028097(n)-A028076(n)`
-/

namespace A028206.P9778958296893530495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028083 n + (A028097 n - A028076 n)

end

end A028206.P9778958296893530495

namespace A028206

/-- `A028083(n)+A028097(n)-A028076(n)` -/
def P9778958296893530495.Spec : Prop :=
  ∀ n, P9778958296893530495.a n = A028206 n

end A028206

/-! ## A028206.P15275078755624426530

`A028090(n)+A028097(n)-A028079(n)`
-/

namespace A028206.P15275078755624426530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028090 n + (A028097 n - A028079 n)

end

end A028206.P15275078755624426530

namespace A028206

/-- `A028090(n)+A028097(n)-A028079(n)` -/
def P15275078755624426530.Spec : Prop :=
  ∀ n, P15275078755624426530.a n = A028206 n

end A028206

/-! ## A028206.P14163783319672449989

`A028134(n)+A028141(n)-A028131(n)`
-/

namespace A028206.P14163783319672449989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028134 n + (A028141 n - A028131 n)

end

end A028206.P14163783319672449989

namespace A028206

/-- `A028134(n)+A028141(n)-A028131(n)` -/
def P14163783319672449989.Spec : Prop :=
  ∀ n, P14163783319672449989.a n = A028206 n

end A028206

/-!
# A028207: Expansion of 1/((1-6x)(1-7x)(1-10x)(1-11x)).

The programs for A028207, the canonical program `A028207.P5497746970747732277` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028207 has offset 0).

The definition of A028207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028207.P5497746970747732277

`21*a(n-1)-110*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028207

/-- `21*a(n-1)-110*a(n-2)+7^(n+1)-6^(n+1)` -/
def P5497746970747732277.Spec : Prop :=
  ∀ n, P5497746970747732277.a n = A028207 n

theorem P5497746970747732277.correct : P5497746970747732277.Spec := by
  intro n
  simp only [A028207]

end A028207

/-! ## A028207.P9318742864662522157

`A020573(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028207.P9318742864662522157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020573 n + 10 * a (n - 1)

end

end A028207.P9318742864662522157

namespace A028207

/-- `A020573(n)+10*a(n-1)` -/
def P9318742864662522157.Spec : Prop :=
  ∀ n, P9318742864662522157.a n = A028207 n

end A028207

/-! ## A028207.P5716130999271967633

`Δ[A023952(n)-A023951(n)]`
-/

namespace A028207.P5716130999271967633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023952 n - A023951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028207.P5716130999271967633

namespace A028207

/-- `Δ[A023952(n)-A023951(n)]` -/
def P5716130999271967633.Spec : Prop :=
  ∀ n, P5716130999271967633.a n = A028207 n

end A028207

/-! ## A028207.P11951695845855113077

`2*A028086(n)-A028076(n)`
-/

namespace A028207.P11951695845855113077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028086 n - A028076 n

end

end A028207.P11951695845855113077

namespace A028207

/-- `2*A028086(n)-A028076(n)` -/
def P11951695845855113077.Spec : Prop :=
  ∀ n, P11951695845855113077.a n = A028207 n

end A028207

/-! ## A028207.P13068203521896382087

`2*A028142(n)-A028133(n)`
-/

namespace A028207.P13068203521896382087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028142 n - A028133 n

end

end A028207.P13068203521896382087

namespace A028207

/-- `2*A028142(n)-A028133(n)` -/
def P13068203521896382087.Spec : Prop :=
  ∀ n, P13068203521896382087.a n = A028207 n

end A028207

/-! ## A028207.P4876812699382019106

`2*A028205(n)-A028204(n)`
-/

namespace A028207.P4876812699382019106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028205 n - A028204 n

end

end A028207.P4876812699382019106

namespace A028207

/-- `2*A028205(n)-A028204(n)` -/
def P4876812699382019106.Spec : Prop :=
  ∀ n, P4876812699382019106.a n = A028207 n

end A028207

/-! ## A028207.P6828448312999515025

`A020573(n+1)-Δ[A023951(n)]`
-/

namespace A028207.P6828448312999515025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020573 (n + 1) - (f1 (n + 1) - f1 n)

end

end A028207.P6828448312999515025

namespace A028207

/-- `A020573(n+1)-Δ[A023951(n)]` -/
def P6828448312999515025.Spec : Prop :=
  ∀ n, P6828448312999515025.a n = A028207 n

end A028207

/-! ## A028207.P14049453542650055340

`A028086(n)+A028096(n)-A028077(n)`
-/

namespace A028207.P14049453542650055340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028086 n + (A028096 n - A028077 n)

end

end A028207.P14049453542650055340

namespace A028207

/-- `A028086(n)+A028096(n)-A028077(n)` -/
def P14049453542650055340.Spec : Prop :=
  ∀ n, P14049453542650055340.a n = A028207 n

end A028207

/-! ## A028207.P8202440323120309341

`A028201(n)+A028213(n)-A028202(n)`
-/

namespace A028207.P8202440323120309341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028201 n + (A028213 n - A028202 n)

end

end A028207.P8202440323120309341

namespace A028207

/-- `A028201(n)+A028213(n)-A028202(n)` -/
def P8202440323120309341.Spec : Prop :=
  ∀ n, P8202440323120309341.a n = A028207 n

end A028207

/-! ## A028207.P16752116081158946379

`Δ[A024444(n)-A024434(n)]`
-/

namespace A028207.P16752116081158946379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024444 n - A024434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028207.P16752116081158946379

namespace A028207

/-- `Δ[A024444(n)-A024434(n)]` -/
def P16752116081158946379.Spec : Prop :=
  ∀ n, P16752116081158946379.a n = A028207 n

end A028207

/-!
# A028208: Expansion of 1/((1-6x)(1-7x)(1-10x)(1-12x)).

The programs for A028208, the canonical program `A028208.P10745936121477121858` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028208 has offset 0).

The definition of A028208 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028208.P10745936121477121858

`22*a(n-1)-120*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=35`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028208

/-- `22*a(n-1)-120*a(n-2)+7^(n+1)-6^(n+1)` -/
def P10745936121477121858.Spec : Prop :=
  ∀ n, P10745936121477121858.a n = A028208 n

theorem P10745936121477121858.correct : P10745936121477121858.Spec := by
  intro n
  simp only [A028208]

end A028208

/-! ## A028208.P17650513698920062559

`12^(n+2)/5-9*6^n+7^(n+3)/15-125*10^n/3`
-/

namespace A028208.P17650513698920062559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 ^ (n + 2) : ℚ) / 5 - (9 * 6 ^ n : ℚ) + (7 ^ (n + 3) : ℚ) / 15 - (125 * 10 ^ n : ℚ) / 3

end

end A028208.P17650513698920062559

namespace A028208

/-- `12^(n+2)/5-9*6^n+7^(n+3)/15-125*10^n/3` -/
def P17650513698920062559.Spec : Prop :=
  ∀ n, P17650513698920062559.a n = (A028208 n : ℚ)

theorem P17650513698920062559.correct : P17650513698920062559.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A028208, Nat.add_sub_cancel, A028208.P17650513698920062559.a, A028208.P10745936121477121858.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A028208, Nat.add_sub_cancel, A028208.P17650513698920062559.a, A028208.P10745936121477121858.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A028208

/-! ## A028208.P5206761542588112591

`Δ[A021214(n)-A021234(n)]`
-/

namespace A028208.P5206761542588112591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021214 n - A021234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028208.P5206761542588112591

namespace A028208

/-- `Δ[A021214(n)-A021234(n)]` -/
def P5206761542588112591.Spec : Prop :=
  ∀ n, P5206761542588112591.a n = A028208 n

end A028208

/-! ## A028208.P10185839739517183791

`(A028209(n)+A028207(n))/2`
-/

namespace A028208.P10185839739517183791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028209 n + A028207 n : ℚ) / 2

end

end A028208.P10185839739517183791

namespace A028208

/-- `(A028209(n)+A028207(n))/2` -/
def P10185839739517183791.Spec : Prop :=
  ∀ n, P10185839739517183791.a n = (A028208 n : ℚ)

end A028208

/-! ## A028208.P17240481139664470419

`Δ[A024445(n)-A024435(n)]`
-/

namespace A028208.P17240481139664470419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024445 n - A024435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028208.P17240481139664470419

namespace A028208

/-- `Δ[A024445(n)-A024435(n)]` -/
def P17240481139664470419.Spec : Prop :=
  ∀ n, P17240481139664470419.a n = A028208 n

end A028208

/-!
# A028209: Expansion of 1/((1-6x)(1-7x)(1-11x)(1-12x)).

The programs for A028209, the canonical program `A028209.P10017964568648344345` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028209 has offset 0).

The definition of A028209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028209.P10017964568648344345

`23*a(n-1)-132*a(n-2)+7^(n+1)-6^(n+1)` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028209

/-- `23*a(n-1)-132*a(n-2)+7^(n+1)-6^(n+1)` -/
def P10017964568648344345.Spec : Prop :=
  ∀ n, P10017964568648344345.a n = A028209 n

theorem P10017964568648344345.correct : P10017964568648344345.Spec := by
  intro n
  simp only [A028209]

end A028209

/-! ## A028209.P16328556583640092595

`2*A028208(n)-A028207(n)`
-/

namespace A028209.P16328556583640092595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028208 n - A028207 n

end

end A028209.P16328556583640092595

namespace A028209

/-- `2*A028208(n)-A028207(n)` -/
def P16328556583640092595.Spec : Prop :=
  ∀ n, P16328556583640092595.a n = A028209 n

end A028209

/-! ## A028209.P7706488654770187833

`A028088(n)+A028088(n)-A028078(n)`
-/

namespace A028209.P7706488654770187833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028088 n + (A028088 n - A028078 n)

end

end A028209.P7706488654770187833

namespace A028209

/-- `A028088(n)+A028088(n)-A028078(n)` -/
def P7706488654770187833.Spec : Prop :=
  ∀ n, P7706488654770187833.a n = A028209 n

end A028209

/-! ## A028209.P10904493266309653655

`Δ[A023953(n)-A023952(n)]`
-/

namespace A028209.P10904493266309653655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023953 n - A023952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028209.P10904493266309653655

namespace A028209

/-- `Δ[A023953(n)-A023952(n)]` -/
def P10904493266309653655.Spec : Prop :=
  ∀ n, P10904493266309653655.a n = A028209 n

end A028209

/-! ## A028209.P12922121169877356146

`Δ[A024446(n)-A024436(n)]`
-/

namespace A028209.P12922121169877356146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024446 n - A024436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028209.P12922121169877356146

namespace A028209

/-- `Δ[A024446(n)-A024436(n)]` -/
def P12922121169877356146.Spec : Prop :=
  ∀ n, P12922121169877356146.a n = A028209 n

end A028209

/-! ## A028209.P16419736888512798985

`2*A028088(n)-A028078(n)`
-/

namespace A028209.P16419736888512798985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028088 n - A028078 n

end

end A028209.P16419736888512798985

namespace A028209

/-- `2*A028088(n)-A028078(n)` -/
def P16419736888512798985.Spec : Prop :=
  ∀ n, P16419736888512798985.a n = A028209 n

end A028209

/-! ## A028209.P11669995405947650676

`(A028218(n)+A028206(n))/2`
-/

namespace A028209.P11669995405947650676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028218 n + A028206 n : ℚ) / 2

end

end A028209.P11669995405947650676

namespace A028209

/-- `(A028218(n)+A028206(n))/2` -/
def P11669995405947650676.Spec : Prop :=
  ∀ n, P11669995405947650676.a n = (A028209 n : ℚ)

end A028209

/-! ## A028209.P15034848756041229726

`2*A028215(n)-A028224(n)`
-/

namespace A028209.P15034848756041229726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028215 n - A028224 n

end

end A028209.P15034848756041229726

namespace A028209

/-- `2*A028215(n)-A028224(n)` -/
def P15034848756041229726.Spec : Prop :=
  ∀ n, P15034848756041229726.a n = A028209 n

end A028209

/-! ## A028209.P2212230087560731083

`A028202(n)+A028215(n)-A028203(n)`
-/

namespace A028209.P2212230087560731083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028202 n + (A028215 n - A028203 n)

end

end A028209.P2212230087560731083

namespace A028209

/-- `A028202(n)+A028215(n)-A028203(n)` -/
def P2212230087560731083.Spec : Prop :=
  ∀ n, P2212230087560731083.a n = A028209 n

end A028209

/-! ## A028209.P15224001629332409176

`A028211(n)+A028224(n)-A028221(n)`
-/

namespace A028209.P15224001629332409176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028211 n + (A028224 n - A028221 n)

end

end A028209.P15224001629332409176

namespace A028209

/-- `A028211(n)+A028224(n)-A028221(n)` -/
def P15224001629332409176.Spec : Prop :=
  ∀ n, P15224001629332409176.a n = A028209 n

end A028209

/-!
# A028210: Expansion of 1/((1-6x)(1-8x)(1-9x)(1-10x)).

The programs for A028210, the canonical program `A028210.P1955904657294203338` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028210 has offset 0).

The definition of A028210 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028210.P1955904657294203338

`19*a(n-1)-90*a(n-2)+4*8^n-3*6^n` with `a(0)=1, a(1)=33`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028210

/-- `19*a(n-1)-90*a(n-2)+4*8^n-3*6^n` -/
def P1955904657294203338.Spec : Prop :=
  ∀ n, P1955904657294203338.a n = A028210 n

theorem P1955904657294203338.correct : P1955904657294203338.Spec := by
  intro n
  simp only [A028210]

end A028210

/-! ## A028210.P15685724460897218720

`Δ[A023955(n)-A023954(n)]`
-/

namespace A028210.P15685724460897218720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023955 n - A023954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028210.P15685724460897218720

namespace A028210

/-- `Δ[A023955(n)-A023954(n)]` -/
def P15685724460897218720.Spec : Prop :=
  ∀ n, P15685724460897218720.a n = A028210 n

end A028210

/-! ## A028210.P916152343405097784

`2*A028155(n)-A028139(n)`
-/

namespace A028210.P916152343405097784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028155 n - A028139 n

end

end A028210.P916152343405097784

namespace A028210

/-- `2*A028155(n)-A028139(n)` -/
def P916152343405097784.Spec : Prop :=
  ∀ n, P916152343405097784.a n = A028210 n

end A028210

/-! ## A028210.P15798104413224711877

`2*A028204(n)-A028201(n)`
-/

namespace A028210.P15798104413224711877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028204 n - A028201 n

end

end A028210.P15798104413224711877

namespace A028210

/-- `2*A028204(n)-A028201(n)` -/
def P15798104413224711877.Spec : Prop :=
  ∀ n, P15798104413224711877.a n = A028210 n

end A028210

/-! ## A028210.P11219756486293155120

`A020584(n+1)-A020579(n+1)`
-/

namespace A028210.P11219756486293155120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020584 (n + 1) - A020579 (n + 1)

end

end A028210.P11219756486293155120

namespace A028210

/-- `A020584(n+1)-A020579(n+1)` -/
def P11219756486293155120.Spec : Prop :=
  ∀ n, P11219756486293155120.a n = A028210 n

end A028210

/-! ## A028210.P16585103755798462008

`(A020595(n+1)-A020579(n+1))/2`
-/

namespace A028210.P16585103755798462008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020595 (n + 1) - A020579 (n + 1) : ℚ) / 2

end

end A028210.P16585103755798462008

namespace A028210

/-- `(A020595(n+1)-A020579(n+1))/2` -/
def P16585103755798462008.Spec : Prop :=
  ∀ n, P16585103755798462008.a n = (A028210 n : ℚ)

end A028210

/-! ## A028210.P18094108324412159703

`A028139(n)+A028155(n)-A028135(n)`
-/

namespace A028210.P18094108324412159703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028139 n + (A028155 n - A028135 n)

end

end A028210.P18094108324412159703

namespace A028210

/-- `A028139(n)+A028155(n)-A028135(n)` -/
def P18094108324412159703.Spec : Prop :=
  ∀ n, P18094108324412159703.a n = A028210 n

end A028210

/-! ## A028210.P1890957387455403630

`A028139(n)+A028204(n)-A028145(n)`
-/

namespace A028210.P1890957387455403630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028139 n + (A028204 n - A028145 n)

end

end A028210.P1890957387455403630

namespace A028210

/-- `A028139(n)+A028204(n)-A028145(n)` -/
def P1890957387455403630.Spec : Prop :=
  ∀ n, P1890957387455403630.a n = A028210 n

end A028210

/-! ## A028210.P9155364981568839472

`A028201(n)+A028204(n)-A028200(n)`
-/

namespace A028210.P9155364981568839472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028201 n + (A028204 n - A028200 n)

end

end A028210.P9155364981568839472

namespace A028210

/-- `A028201(n)+A028204(n)-A028200(n)` -/
def P9155364981568839472.Spec : Prop :=
  ∀ n, P9155364981568839472.a n = A028210 n

end A028210

/-! ## A028210.P12308020213773570688

`2*A028211(n)-A028213(n)`
-/

namespace A028210.P12308020213773570688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028211 n - A028213 n

end

end A028210.P12308020213773570688

namespace A028210

/-- `2*A028211(n)-A028213(n)` -/
def P12308020213773570688.Spec : Prop :=
  ∀ n, P12308020213773570688.a n = A028210 n

end A028210

/-!
# A028211: Expansion of 1/((1-6x)(1-8x)(1-9x)(1-11x)).

The programs for A028211, the canonical program `A028211.P10447906100485110187` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028211 has offset 0).

The definition of A028211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028211.P10447906100485110187

`20*a(n-1)-99*a(n-2)+2^n*(4^(n+1)-3^(n+1))` with `a(0)=1, a(1)=34`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028211

/-- `20*a(n-1)-99*a(n-2)+2^n*(4^(n+1)-3^(n+1))` -/
def P10447906100485110187.Spec : Prop :=
  ∀ n, P10447906100485110187.a n = A028211 n

theorem P10447906100485110187.correct : P10447906100485110187.Spec := by
  intro n
  simp only [A028211]

end A028211

/-! ## A028211.P6642407412831121124

`2*A024772(n)-A023954(n)`
-/

namespace A028211.P6642407412831121124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024772 n - A023954 n

end

end A028211.P6642407412831121124

namespace A028211

/-- `2*A024772(n)-A023954(n)` -/
def P6642407412831121124.Spec : Prop :=
  ∀ n, P6642407412831121124.a n = A028211 n

end A028211

/-! ## A028211.P17162813076981578075

`2*A028100(n)-A028081(n)`
-/

namespace A028211.P17162813076981578075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028100 n - A028081 n

end

end A028211.P17162813076981578075

namespace A028211

/-- `2*A028100(n)-A028081(n)` -/
def P17162813076981578075.Spec : Prop :=
  ∀ n, P17162813076981578075.a n = A028211 n

end A028211

/-! ## A028211.P11427518035832667644

`2*A028175(n)-A028170(n)`
-/

namespace A028211.P11427518035832667644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028175 n - A028170 n

end

end A028211.P11427518035832667644

namespace A028211

/-- `2*A028175(n)-A028170(n)` -/
def P11427518035832667644.Spec : Prop :=
  ∀ n, P11427518035832667644.a n = A028211 n

end A028211

/-! ## A028211.P16739461128007047936

`2*A028202(n)-A028200(n)`
-/

namespace A028211.P16739461128007047936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028202 n - A028200 n

end

end A028211.P16739461128007047936

namespace A028211

/-- `2*A028202(n)-A028200(n)` -/
def P16739461128007047936.Spec : Prop :=
  ∀ n, P16739461128007047936.a n = A028211 n

end A028211

/-! ## A028211.P17818343425007221452

`(A028213(n)+A028210(n))/2`
-/

namespace A028211.P17818343425007221452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028213 n + A028210 n : ℚ) / 2

end

end A028211.P17818343425007221452

namespace A028211

/-- `(A028213(n)+A028210(n))/2` -/
def P17818343425007221452.Spec : Prop :=
  ∀ n, P17818343425007221452.a n = (A028211 n : ℚ)

end A028211

/-! ## A028211.P16471732657474548347

`(A028220(n)+A028205(n))/2`
-/

namespace A028211.P16471732657474548347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028220 n + A028205 n : ℚ) / 2

end

end A028211.P16471732657474548347

namespace A028211

/-- `(A028220(n)+A028205(n))/2` -/
def P16471732657474548347.Spec : Prop :=
  ∀ n, P16471732657474548347.a n = (A028211 n : ℚ)

end A028211

/-! ## A028211.P10352542313361443553

`(A020593(n+1)-A020579(n+1))/2`
-/

namespace A028211.P10352542313361443553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020593 (n + 1) - A020579 (n + 1) : ℚ) / 2

end

end A028211.P10352542313361443553

namespace A028211

/-- `(A020593(n+1)-A020579(n+1))/2` -/
def P10352542313361443553.Spec : Prop :=
  ∀ n, P10352542313361443553.a n = (A028211 n : ℚ)

end A028211

/-! ## A028211.P9117962397917137641

`A028084(n)+A028100(n)-A028079(n)`
-/

namespace A028211.P9117962397917137641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028084 n + (A028100 n - A028079 n)

end

end A028211.P9117962397917137641

namespace A028211

/-- `A028084(n)+A028100(n)-A028079(n)` -/
def P9117962397917137641.Spec : Prop :=
  ∀ n, P9117962397917137641.a n = A028211 n

end A028211

/-! ## A028211.P8137728684151186750

`A028175(n)+A028202(n)-A028180(n)`
-/

namespace A028211.P8137728684151186750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028175 n + (A028202 n - A028180 n)

end

end A028211.P8137728684151186750

namespace A028211

/-- `A028175(n)+A028202(n)-A028180(n)` -/
def P8137728684151186750.Spec : Prop :=
  ∀ n, P8137728684151186750.a n = A028211 n

end A028211

/-!
# A028212: Expansion of 1/((1-6x)(1-8x)(1-9x)(1-12x)).

The programs for A028212, the canonical program `A028212.P546716606322109463` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028212 has offset 0).

The definition of A028212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028212.P546716606322109463

`64*8^n-81*9^n+24*12^n-6*6^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028212

/-- `64*8^n-81*9^n+24*12^n-6*6^n` -/
def P546716606322109463.Spec : Prop :=
  ∀ n, P546716606322109463.a n = A028212 n

theorem P546716606322109463.correct : P546716606322109463.Spec := by
  intro n
  simp only [A028212]

end A028212

/-! ## A028212.P7800803644419443435

`Δ[A016248(n)-A016256(n)]`
-/

namespace A028212.P7800803644419443435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016248 n - A016256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028212.P7800803644419443435

namespace A028212

/-- `Δ[A016248(n)-A016256(n)]` -/
def P7800803644419443435.Spec : Prop :=
  ∀ n, P7800803644419443435.a n = A028212 n

end A028212

/-! ## A028212.P16066217022514679684

`(A028217(n)+A028210(n))/2`
-/

namespace A028212.P16066217022514679684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028217 n + A028210 n : ℚ) / 2

end

end A028212.P16066217022514679684

namespace A028212

/-- `(A028217(n)+A028210(n))/2` -/
def P16066217022514679684.Spec : Prop :=
  ∀ n, P16066217022514679684.a n = (A028212 n : ℚ)

end A028212

/-! ## A028212.P11650714442362567750

`(A028221(n)+A028206(n))/2`
-/

namespace A028212.P11650714442362567750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028221 n + A028206 n : ℚ) / 2

end

end A028212.P11650714442362567750

namespace A028212

/-- `(A028221(n)+A028206(n))/2` -/
def P11650714442362567750.Spec : Prop :=
  ∀ n, P11650714442362567750.a n = (A028212 n : ℚ)

end A028212

/-! ## A028212.P8690920766509811498

`A349466(n)/2^n`
-/

namespace A028212.P8690920766509811498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349466 n : ℚ) / (2 ^ n : ℚ)

end

end A028212.P8690920766509811498

namespace A028212

/-- `A349466(n)/2^n` -/
def P8690920766509811498.Spec : Prop :=
  ∀ n, P8690920766509811498.a n = (A028212 n : ℚ)

end A028212

/-!
# A028213: Expansion of 1/((1-6x)(1-8x)(1-10x)(1-11x)).

The programs for A028213, the canonical program `A028213.P1333585685725012290` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028213 has offset 0).

The definition of A028213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028213.P1333585685725012290

`11^(n+3)/15+2*8^(n+2)/3-125*10^n-27*6^n/5`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028213

/-- `11^(n+3)/15+2*8^(n+2)/3-125*10^n-27*6^n/5` -/
def P1333585685725012290.Spec : Prop :=
  ∀ n, P1333585685725012290.a n = (A028213 n : ℚ)

end A028213

/-! ## A028213.P2817844017091650916

`Δ[A023956(n)-A023955(n)]`
-/

namespace A028213.P2817844017091650916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023956 n - A023955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028213.P2817844017091650916

namespace A028213

/-- `Δ[A023956(n)-A023955(n)]` -/
def P2817844017091650916.Spec : Prop :=
  ∀ n, P2817844017091650916.a n = A028213 n

end A028213

/-! ## A028213.P14827555762641771775

`(A028216(n)+A028211(n))/2`
-/

namespace A028213.P14827555762641771775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028216 n + A028211 n : ℚ) / 2

end

end A028213.P14827555762641771775

namespace A028213

/-- `(A028216(n)+A028211(n))/2` -/
def P14827555762641771775.Spec : Prop :=
  ∀ n, P14827555762641771775.a n = (A028213 n : ℚ)

end A028213

/-!
# A028214: Expansion of 1/((1-6x)(1-8x)(1-10x)(1-12x)).

The programs for A028214, the canonical program `A028214.P12842155142514489788` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028214 has offset 0).

The definition of A028214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028214.P12842155142514489788

`22*a(n-1)-120*a(n-2)+2^n*(4^(n+1)-3^(n+1))` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028214

/-- `22*a(n-1)-120*a(n-2)+2^n*(4^(n+1)-3^(n+1))` -/
def P12842155142514489788.Spec : Prop :=
  ∀ n, P12842155142514489788.a n = A028214 n

theorem P12842155142514489788.correct : P12842155142514489788.Spec := by
  intro n
  simp only [A028214]

end A028214

/-! ## A028214.P18441099223235316013

`∑[ceil(2^(n-1))]*A028025(n)`
-/

namespace A028214.P18441099223235316013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A028025 n

end

end A028214.P18441099223235316013

namespace A028214

/-- `∑[ceil(2^(n-1))]*A028025(n)` -/
def P18441099223235316013.Spec : Prop :=
  ∀ n, P18441099223235316013.a n = A028214 n

end A028214

/-! ## A028214.P5073886595208313763

`2*A028019(n)-A026738(n)`
-/

namespace A028214.P5073886595208313763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028019 n - A026738 n

end

end A028214.P5073886595208313763

namespace A028214

/-- `2*A028019(n)-A026738(n)` -/
def P5073886595208313763.Spec : Prop :=
  ∀ n, P5073886595208313763.a n = A028214 n

end A028214

/-! ## A028214.P6145411750683363360

`6*a(n-1)+A000079(n)*A016103(n)` with `a(0)=1`
-/

namespace A028214.P6145411750683363360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + A000079 n * A016103 n

end

end A028214.P6145411750683363360

namespace A028214

/-- `6*a(n-1)+A000079(n)*A016103(n)` -/
def P6145411750683363360.Spec : Prop :=
  ∀ n, P6145411750683363360.a n = A028214 n

end A028214

/-! ## A028214.P8398311400457959122

`(A028215(n)+A028213(n))/2`
-/

namespace A028214.P8398311400457959122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028215 n + A028213 n : ℚ) / 2

end

end A028214.P8398311400457959122

namespace A028214

/-- `(A028215(n)+A028213(n))/2` -/
def P8398311400457959122.Spec : Prop :=
  ∀ n, P8398311400457959122.a n = (A028214 n : ℚ)

end A028214

/-! ## A028214.P15526763267418399081

`(A028217(n)+A028212(n))/2`
-/

namespace A028214.P15526763267418399081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028217 n + A028212 n : ℚ) / 2

end

end A028214.P15526763267418399081

namespace A028214

/-- `(A028217(n)+A028212(n))/2` -/
def P15526763267418399081.Spec : Prop :=
  ∀ n, P15526763267418399081.a n = (A028214 n : ℚ)

end A028214

/-! ## A028214.P3169365642745247244

`(A028223(n)+A028208(n))/2`
-/

namespace A028214.P3169365642745247244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028223 n + A028208 n : ℚ) / 2

end

end A028214.P3169365642745247244

namespace A028214

/-- `(A028223(n)+A028208(n))/2` -/
def P3169365642745247244.Spec : Prop :=
  ∀ n, P3169365642745247244.a n = (A028214 n : ℚ)

end A028214

/-! ## A028214.P11754433807030300954

`(A020594(n+1)-A020584(n+1))/2`
-/

namespace A028214.P11754433807030300954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020594 (n + 1) - A020584 (n + 1) : ℚ) / 2

end

end A028214.P11754433807030300954

namespace A028214

/-- `(A020594(n+1)-A020584(n+1))/2` -/
def P11754433807030300954.Spec : Prop :=
  ∀ n, P11754433807030300954.a n = (A028214 n : ℚ)

end A028214

/-!
# A028215: Expansion of 1/((1-6x)(1-8x)(1-11x)(1-12x)).

The programs for A028215, the canonical program `A028215.P6533713413062877434` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028215 has offset 0).

The definition of A028215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028215.P6533713413062877434

`23*a(n-1)-132*a(n-2)+2^n*(4^(n+1)-3^(n+1))` with `a(0)=1, a(1)=37`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028215

/-- `23*a(n-1)-132*a(n-2)+2^n*(4^(n+1)-3^(n+1))` -/
def P6533713413062877434.Spec : Prop :=
  ∀ n, P6533713413062877434.a n = A028215 n

theorem P6533713413062877434.correct : P6533713413062877434.Spec := by
  intro n
  simp only [A028215]

end A028215

/-! ## A028215.P16891645330803059397

`2*A028179(n)-A028173(n)`
-/

namespace A028215.P16891645330803059397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028179 n - A028173 n

end

end A028215.P16891645330803059397

namespace A028215

/-- `2*A028179(n)-A028173(n)` -/
def P16891645330803059397.Spec : Prop :=
  ∀ n, P16891645330803059397.a n = A028215 n

end A028215

/-! ## A028215.P5538852030280469601

`2*A028214(n)-A028213(n)`
-/

namespace A028215.P5538852030280469601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028214 n - A028213 n

end

end A028215.P5538852030280469601

namespace A028215

/-- `2*A028214(n)-A028213(n)` -/
def P5538852030280469601.Spec : Prop :=
  ∀ n, P5538852030280469601.a n = A028215 n

end A028215

/-! ## A028215.P14115501884972502912

`(A028219(n)+A028213(n))/2`
-/

namespace A028215.P14115501884972502912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028219 n + A028213 n : ℚ) / 2

end

end A028215.P14115501884972502912

namespace A028215

/-- `(A028219(n)+A028213(n))/2` -/
def P14115501884972502912.Spec : Prop :=
  ∀ n, P14115501884972502912.a n = (A028215 n : ℚ)

end A028215

/-! ## A028215.P5210503201985188972

`A028017(n)+A028023(n)-A028000(n)`
-/

namespace A028215.P5210503201985188972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028017 n + (A028023 n - A028000 n)

end

end A028215.P5210503201985188972

namespace A028215

/-- `A028017(n)+A028023(n)-A028000(n)` -/
def P5210503201985188972.Spec : Prop :=
  ∀ n, P5210503201985188972.a n = A028215 n

end A028215

/-! ## A028215.P12575501936481854228

`A028203(n)+A028209(n)-A028202(n)`
-/

namespace A028215.P12575501936481854228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028203 n + (A028209 n - A028202 n)

end

end A028215.P12575501936481854228

namespace A028215

/-- `A028203(n)+A028209(n)-A028202(n)` -/
def P12575501936481854228.Spec : Prop :=
  ∀ n, P12575501936481854228.a n = A028215 n

end A028215

/-! ## A028215.P5611815382302312928

`A028211(n)+A028218(n)-A028212(n)`
-/

namespace A028215.P5611815382302312928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028211 n + (A028218 n - A028212 n)

end

end A028215.P5611815382302312928

namespace A028215

/-- `A028211(n)+A028218(n)-A028212(n)` -/
def P5611815382302312928.Spec : Prop :=
  ∀ n, P5611815382302312928.a n = A028215 n

end A028215

/-! ## A028215.P3157814153590040891

`A028212(n)+A028217(n)-A028213(n)`
-/

namespace A028215.P3157814153590040891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028212 n + (A028217 n - A028213 n)

end

end A028215.P3157814153590040891

namespace A028215

/-- `A028212(n)+A028217(n)-A028213(n)` -/
def P3157814153590040891.Spec : Prop :=
  ∀ n, P3157814153590040891.a n = A028215 n

end A028215

/-!
# A028216: Expansion of 1/((1-6x)(1-9x)(1-10x)(1-11x)).

The programs for A028216, the canonical program `A028216.P3173743611604398153` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028216 has offset 0).

The definition of A028216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028216.P3173743611604398153

`21*a(n-1)-110*a(n-2)+3*9^n-2*6^n` with `a(0)=1, a(1)=36`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028216

/-- `21*a(n-1)-110*a(n-2)+3*9^n-2*6^n` -/
def P3173743611604398153.Spec : Prop :=
  ∀ n, P3173743611604398153.a n = A028216 n

theorem P3173743611604398153.correct : P3173743611604398153.Spec := by
  intro n
  simp only [A028216]

end A028216

/-! ## A028216.P5184231359602648190

`A020606(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A028216.P5184231359602648190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020606 n + 10 * a (n - 1)

end

end A028216.P5184231359602648190

namespace A028216

/-- `A020606(n)+10*a(n-1)` -/
def P5184231359602648190.Spec : Prop :=
  ∀ n, P5184231359602648190.a n = A028216 n

end A028216

/-! ## A028216.P13399528820834650673

`2*A028021(n)-A028000(n)`
-/

namespace A028216.P13399528820834650673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028021 n - A028000 n

end

end A028216.P13399528820834650673

namespace A028216

/-- `2*A028021(n)-A028000(n)` -/
def P13399528820834650673.Spec : Prop :=
  ∀ n, P13399528820834650673.a n = A028216 n

end A028216

/-! ## A028216.P2807270781377365932

`2*A028207(n)-A028204(n)`
-/

namespace A028216.P2807270781377365932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028207 n - A028204 n

end

end A028216.P2807270781377365932

namespace A028216

/-- `2*A028207(n)-A028204(n)` -/
def P2807270781377365932.Spec : Prop :=
  ∀ n, P2807270781377365932.a n = A028216 n

end A028216

/-! ## A028216.P16105572965063843672

`2*A028213(n)-A028211(n)`
-/

namespace A028216.P16105572965063843672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028213 n - A028211 n

end

end A028216.P16105572965063843672

namespace A028216

/-- `2*A028213(n)-A028211(n)` -/
def P16105572965063843672.Spec : Prop :=
  ∀ n, P16105572965063843672.a n = A028216 n

end A028216

/-! ## A028216.P11734495398677611720

`A020606(n+1)-A020595(n+1)`
-/

namespace A028216.P11734495398677611720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020606 (n + 1) - A020595 (n + 1)

end

end A028216.P11734495398677611720

namespace A028216

/-- `A020606(n+1)-A020595(n+1)` -/
def P11734495398677611720.Spec : Prop :=
  ∀ n, P11734495398677611720.a n = A028216 n

end A028216

/-! ## A028216.P9037798383225372933

`A028211(n)+A028213(n)-A028210(n)`
-/

namespace A028216.P9037798383225372933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028211 n + (A028213 n - A028210 n)

end

end A028216.P9037798383225372933

namespace A028216

/-- `A028211(n)+A028213(n)-A028210(n)` -/
def P9037798383225372933.Spec : Prop :=
  ∀ n, P9037798383225372933.a n = A028216 n

end A028216

/-! ## A028216.P4385806338001083629

`2*A028217(n)-A028218(n)`
-/

namespace A028216.P4385806338001083629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028217 n - A028218 n

end

end A028216.P4385806338001083629

namespace A028216

/-- `2*A028217(n)-A028218(n)` -/
def P4385806338001083629.Spec : Prop :=
  ∀ n, P4385806338001083629.a n = A028216 n

end A028216

/-! ## A028216.P1895903323140903412

`A028217(n)+A028218(n)-A028219(n)`
-/

namespace A028216.P1895903323140903412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028217 n + (A028218 n - A028219 n)

end

end A028216.P1895903323140903412

namespace A028216

/-- `A028217(n)+A028218(n)-A028219(n)` -/
def P1895903323140903412.Spec : Prop :=
  ∀ n, P1895903323140903412.a n = A028216 n

end A028216

/-!
# A028217: Expansion of 1/((1-6x)(1-9x)(1-10x)(1-12x)).

The programs for A028217, the canonical program `A028217.P6143185255645896624` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028217 has offset 0).

The definition of A028217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028217.P7705110723063049609

`22*a(n-1)-120*a(n-2)+3^n*(3^(n+1)-2^(n+1))` with `a(0)=1, a(1)=37`
-/

namespace A028217.P7705110723063049609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 37] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (3 ^ n : ℤ) * ((3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ))

end

end A028217.P7705110723063049609

namespace A028217

/-- `22*a(n-1)-120*a(n-2)+3^n*(3^(n+1)-2^(n+1))` -/
def P7705110723063049609.Spec : Prop :=
  ∀ n, P7705110723063049609.a n = A028217 n

end A028217

/-! ## A028217.P6143185255645896624

`(2*12^(n+3)-9*10^(n+3)+8*9^(n+3)-6^(n+3))/72`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028217

/-- `(2*12^(n+3)-9*10^(n+3)+8*9^(n+3)-6^(n+3))/72` -/
def P6143185255645896624.Spec : Prop :=
  ∀ n, P6143185255645896624.a n = (A028217 n : ℚ)

end A028217

/-! ## A028217.P10857297782899441634

`2*A028022(n)-A028001(n)`
-/

namespace A028217.P10857297782899441634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028022 n - A028001 n

end

end A028217.P10857297782899441634

namespace A028217

/-- `2*A028022(n)-A028001(n)` -/
def P10857297782899441634.Spec : Prop :=
  ∀ n, P10857297782899441634.a n = A028217 n

end A028217

/-! ## A028217.P9464072825457969592

`2*A028212(n)-A028210(n)`
-/

namespace A028217.P9464072825457969592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028212 n - A028210 n

end

end A028217.P9464072825457969592

namespace A028217

/-- `2*A028212(n)-A028210(n)` -/
def P9464072825457969592.Spec : Prop :=
  ∀ n, P9464072825457969592.a n = A028217 n

end A028217

/-! ## A028217.P3320939427764671344

`A028021(n)+A028023(n)-A028001(n)`
-/

namespace A028217.P3320939427764671344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028021 n + (A028023 n - A028001 n)

end

end A028217.P3320939427764671344

namespace A028217

/-- `A028021(n)+A028023(n)-A028001(n)` -/
def P3320939427764671344.Spec : Prop :=
  ∀ n, P3320939427764671344.a n = A028217 n

end A028217

/-! ## A028217.P15758699701345305044

`A028206(n)+A028208(n)-A028204(n)`
-/

namespace A028217.P15758699701345305044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028206 n + (A028208 n - A028204 n)

end

end A028217.P15758699701345305044

namespace A028217

/-- `A028206(n)+A028208(n)-A028204(n)` -/
def P15758699701345305044.Spec : Prop :=
  ∀ n, P15758699701345305044.a n = A028217 n

end A028217

/-! ## A028217.P1316105381060252010

`A028206(n)+A028221(n)-A028210(n)`
-/

namespace A028217.P1316105381060252010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028206 n + (A028221 n - A028210 n)

end

end A028217.P1316105381060252010

namespace A028217

/-- `A028206(n)+A028221(n)-A028210(n)` -/
def P1316105381060252010.Spec : Prop :=
  ∀ n, P1316105381060252010.a n = A028217 n

end A028217

/-! ## A028217.P3867874078767415445

`A028214(n)+A028214(n)-A028212(n)`
-/

namespace A028217.P3867874078767415445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028214 n + (A028214 n - A028212 n)

end

end A028217.P3867874078767415445

namespace A028217

/-- `A028214(n)+A028214(n)-A028212(n)` -/
def P3867874078767415445.Spec : Prop :=
  ∀ n, P3867874078767415445.a n = A028217 n

end A028217

/-! ## A028217.P7252260181988419962

`2*A028214(n)-A028212(n)`
-/

namespace A028217.P7252260181988419962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028214 n - A028212 n

end

end A028217.P7252260181988419962

namespace A028217

/-- `2*A028214(n)-A028212(n)` -/
def P7252260181988419962.Spec : Prop :=
  ∀ n, P7252260181988419962.a n = A028217 n

end A028217

/-! ## A028217.P5242868290289797509

`2*A028218(n)-A028219(n)`
-/

namespace A028217.P5242868290289797509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028218 n - A028219 n

end

end A028217.P5242868290289797509

namespace A028217

/-- `2*A028218(n)-A028219(n)` -/
def P5242868290289797509.Spec : Prop :=
  ∀ n, P5242868290289797509.a n = A028217 n

end A028217

/-!
# A028218: Expansion of 1/((1-6x)(1-9x)(1-11x)(1-12x)).

The programs for A028218, the canonical program `A028218.P12727951506277829979` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028218 has offset 0).

The definition of A028218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028218.P13815731371370066085

`23*a(n-1)-132*a(n-2)+3^n*(3^(n+1)-2^(n+1))` with `a(0)=1, a(1)=38`
-/

namespace A028218.P13815731371370066085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 38] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (3 ^ n : ℤ) * ((3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ))

end

end A028218.P13815731371370066085

namespace A028218

/-- `23*a(n-1)-132*a(n-2)+3^n*(3^(n+1)-2^(n+1))` -/
def P13815731371370066085.Spec : Prop :=
  ∀ n, P13815731371370066085.a n = A028218 n

end A028218

/-! ## A028218.P12727951506277829979

`(5*12^(n+3)-9*11^(n+3)+5*9^(n+3)-6^(n+3))/90`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028218

/-- `(5*12^(n+3)-9*11^(n+3)+5*9^(n+3)-6^(n+3))/90` -/
def P12727951506277829979.Spec : Prop :=
  ∀ n, P12727951506277829979.a n = (A028218 n : ℚ)

end A028218

/-! ## A028218.P10557067199239387521

`10*a(n-1)+a(n-1)+A020606(n)+a(n-1)` with `a(0)=1`
-/

namespace A028218.P10557067199239387521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (a (n - 1) + (A020606 n + a (n - 1)))

end

end A028218.P10557067199239387521

namespace A028218

/-- `10*a(n-1)+a(n-1)+A020606(n)+a(n-1)` -/
def P10557067199239387521.Spec : Prop :=
  ∀ n, P10557067199239387521.a n = A028218 n

end A028218

/-! ## A028218.P10705793843864809072

`Δ[A024347(n)-A024346(n)]`
-/

namespace A028218.P10705793843864809072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024347 n - A024346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028218.P10705793843864809072

namespace A028218

/-- `Δ[A024347(n)-A024346(n)]` -/
def P10705793843864809072.Spec : Prop :=
  ∀ n, P10705793843864809072.a n = A028218 n

end A028218

/-! ## A028218.P1708222301173834481

`2*A028209(n)-A028206(n)`
-/

namespace A028218.P1708222301173834481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028209 n - A028206 n

end

end A028218.P1708222301173834481

namespace A028218

/-- `2*A028209(n)-A028206(n)` -/
def P1708222301173834481.Spec : Prop :=
  ∀ n, P1708222301173834481.a n = A028218 n

end A028218

/-! ## A028218.P16561195778422456441

`2*A028217(n)-A028216(n)`
-/

namespace A028218.P16561195778422456441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028217 n - A028216 n

end

end A028218.P16561195778422456441

namespace A028218

/-- `2*A028217(n)-A028216(n)` -/
def P16561195778422456441.Spec : Prop :=
  ∀ n, P16561195778422456441.a n = A028218 n

end A028218

/-! ## A028218.P2674643905722000301

`A028212(n)+A028215(n)-A028211(n)`
-/

namespace A028218.P2674643905722000301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028212 n + (A028215 n - A028211 n)

end

end A028218.P2674643905722000301

namespace A028218

/-- `A028212(n)+A028215(n)-A028211(n)` -/
def P2674643905722000301.Spec : Prop :=
  ∀ n, P2674643905722000301.a n = A028218 n

end A028218

/-! ## A028218.P13479290107047239559

`A028216(n)+A028219(n)-A028217(n)`
-/

namespace A028218.P13479290107047239559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028216 n + (A028219 n - A028217 n)

end

end A028218.P13479290107047239559

namespace A028218

/-- `A028216(n)+A028219(n)-A028217(n)` -/
def P13479290107047239559.Spec : Prop :=
  ∀ n, P13479290107047239559.a n = A028218 n

end A028218

/-!
# A028219: Expansion of 1/((1 - 6*x)*(1 - 10*x)*(1 - 11*x)*(1 - 12*x)).

The programs for A028219, the canonical program `A028219.P12761912322257633962` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028219 has offset 0).

The definition of A028219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028219.P12761912322257633962

`23*a(n-1)-132*a(n-2)+2^(n-1)*(5^(n+1)-3^(n+1))` with `a(0)=1, a(1)=39`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028219

/-- `23*a(n-1)-132*a(n-2)+2^(n-1)*(5^(n+1)-3^(n+1))` -/
def P12761912322257633962.Spec : Prop :=
  ∀ n, P12761912322257633962.a n = (A028219 n : ℚ)

end A028219

/-! ## A028219.P17849759404584173481

`A020726(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A028219.P17849759404584173481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020726 n + 12 * a (n - 1)

end

end A028219.P17849759404584173481

namespace A028219

/-- `A020726(n)+12*a(n-1)` -/
def P17849759404584173481.Spec : Prop :=
  ∀ n, P17849759404584173481.a n = A028219 n

end A028219

/-! ## A028219.P2853067539943969878

`Δ[A024435(n)-A024434(n)]`
-/

namespace A028219.P2853067539943969878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024435 n - A024434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028219.P2853067539943969878

namespace A028219

/-- `Δ[A024435(n)-A024434(n)]` -/
def P2853067539943969878.Spec : Prop :=
  ∀ n, P2853067539943969878.a n = A028219 n

end A028219

/-! ## A028219.P3452741454518608653

`Δ[A024436(n)-A024435(n)]`
-/

namespace A028219.P3452741454518608653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024436 n - A024435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028219.P3452741454518608653

namespace A028219

/-- `Δ[A024436(n)-A024435(n)]` -/
def P3452741454518608653.Spec : Prop :=
  ∀ n, P3452741454518608653.a n = A028219 n

end A028219

/-! ## A028219.P1950210485169166987

`2*A028024(n)-A028004(n)`
-/

namespace A028219.P1950210485169166987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028024 n - A028004 n

end

end A028219.P1950210485169166987

namespace A028219

/-- `2*A028024(n)-A028004(n)` -/
def P1950210485169166987.Spec : Prop :=
  ∀ n, P1950210485169166987.a n = A028219 n

end A028219

/-! ## A028219.P6966161339748091596

`2*A028215(n)-A028213(n)`
-/

namespace A028219.P6966161339748091596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028215 n - A028213 n

end

end A028219.P6966161339748091596

namespace A028219

/-- `2*A028215(n)-A028213(n)` -/
def P6966161339748091596.Spec : Prop :=
  ∀ n, P6966161339748091596.a n = A028219 n

end A028219

/-! ## A028219.P13264684870069297037

`2*A028218(n)-A028217(n)`
-/

namespace A028219.P13264684870069297037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028218 n - A028217 n

end

end A028219.P13264684870069297037

namespace A028219

/-- `2*A028218(n)-A028217(n)` -/
def P13264684870069297037.Spec : Prop :=
  ∀ n, P13264684870069297037.a n = A028219 n

end A028219

/-! ## A028219.P11238663911679023184

`A028217(n)+A028218(n)-A028216(n)`
-/

namespace A028219.P11238663911679023184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028217 n + (A028218 n - A028216 n)

end

end A028219.P11238663911679023184

namespace A028219

/-- `A028217(n)+A028218(n)-A028216(n)` -/
def P11238663911679023184.Spec : Prop :=
  ∀ n, P11238663911679023184.a n = A028219 n

end A028219

/-!
# A028220: Expansion of 1/((1-7x)(1-8x)(1-9x)(1-11x)).

The programs for A028220, the canonical program `A028220.P241414457246031243` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028220 has offset 0).

The definition of A028220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028220.P241414457246031243

`(11^(n+3)-6*9^(n+3)+8^(n+4)-3*7^(n+3))/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028220

/-- `(11^(n+3)-6*9^(n+3)+8^(n+4)-3*7^(n+3))/24` -/
def P241414457246031243.Spec : Prop :=
  ∀ n, P241414457246031243.a n = (A028220 n : ℚ)

end A028220

/-! ## A028220.P16303241865455518227

`Δ[A022455(n)-A022469(n)]`
-/

namespace A028220.P16303241865455518227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022455 n - A022469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028220.P16303241865455518227

namespace A028220

/-- `Δ[A022455(n)-A022469(n)]` -/
def P16303241865455518227.Spec : Prop :=
  ∀ n, P16303241865455518227.a n = A028220 n

end A028220

/-! ## A028220.P8998534688578648299

`2*A028100(n)-A028089(n)`
-/

namespace A028220.P8998534688578648299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028100 n - A028089 n

end

end A028220.P8998534688578648299

namespace A028220

/-- `2*A028100(n)-A028089(n)` -/
def P8998534688578648299.Spec : Prop :=
  ∀ n, P8998534688578648299.a n = A028220 n

end A028220

/-! ## A028220.P11235214054167166955

`2*A028185(n)-A028180(n)`
-/

namespace A028220.P11235214054167166955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028185 n - A028180 n

end

end A028220.P11235214054167166955

namespace A028220

/-- `2*A028185(n)-A028180(n)` -/
def P11235214054167166955.Spec : Prop :=
  ∀ n, P11235214054167166955.a n = A028220 n

end A028220

/-! ## A028220.P3928011875584085725

`Δ[A024442(n)-A024439(n)]`
-/

namespace A028220.P3928011875584085725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024442 n - A024439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028220.P3928011875584085725

namespace A028220

/-- `Δ[A024442(n)-A024439(n)]` -/
def P3928011875584085725.Spec : Prop :=
  ∀ n, P3928011875584085725.a n = A028220 n

end A028220

/-! ## A028220.P6738414339431983174

`2*A028222(n)-A028225(n)`
-/

namespace A028220.P6738414339431983174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028222 n - A028225 n

end

end A028220.P6738414339431983174

namespace A028220

/-- `2*A028222(n)-A028225(n)` -/
def P6738414339431983174.Spec : Prop :=
  ∀ n, P6738414339431983174.a n = A028220 n

end A028220

/-! ## A028220.P13366359163366014561

`∑[-Δ[A020971(n)-A020977(n)]]`
-/

namespace A028220.P13366359163366014561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020971 n - A020977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028220.P13366359163366014561

namespace A028220

/-- `∑[-Δ[A020971(n)-A020977(n)]]` -/
def P13366359163366014561.Spec : Prop :=
  ∀ n, P13366359163366014561.a n = A028220 n

end A028220

/-! ## A028220.P13587031832321221488

`A020971(n+1)-A020968(n+1)`
-/

namespace A028220.P13587031832321221488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020971 (n + 1) - A020968 (n + 1)

end

end A028220.P13587031832321221488

namespace A028220

/-- `A020971(n+1)-A020968(n+1)` -/
def P13587031832321221488.Spec : Prop :=
  ∀ n, P13587031832321221488.a n = A028220 n

end A028220

/-! ## A028220.P507462102303816424

`A020977(n+1)-A020971(n+1)`
-/

namespace A028220.P507462102303816424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020977 (n + 1) - A020971 (n + 1)

end

end A028220.P507462102303816424

namespace A028220

/-- `A020977(n+1)-A020971(n+1)` -/
def P507462102303816424.Spec : Prop :=
  ∀ n, P507462102303816424.a n = A028220 n

end A028220

/-! ## A028220.P3438586897722844146

`A028221(n)+A028224(n)-A028227(n)`
-/

namespace A028220.P3438586897722844146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028221 n + (A028224 n - A028227 n)

end

end A028220.P3438586897722844146

namespace A028220

/-- `A028221(n)+A028224(n)-A028227(n)` -/
def P3438586897722844146.Spec : Prop :=
  ∀ n, P3438586897722844146.a n = A028220 n

end A028220

/-!
# A028221: Expansion of 1/((1-7x)(1-8x)(1-9x)(1-12x)).

The programs for A028221, the canonical program `A028221.P4663181287065023604` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028221 has offset 0).

The definition of A028221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028221.P4663181287065023604

`(12^(n+3)-10*9^(n+3)+15*8^(n+3)-6*7^(n+3))/60`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028221

/-- `(12^(n+3)-10*9^(n+3)+15*8^(n+3)-6*7^(n+3))/60` -/
def P4663181287065023604.Spec : Prop :=
  ∀ n, P4663181287065023604.a n = (A028221 n : ℚ)

end A028221

/-! ## A028221.P10214800674720726585

`A020978(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A028221.P10214800674720726585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020978 n + 7 * a (n - 1)

end

end A028221.P10214800674720726585

namespace A028221

/-- `A020978(n)+7*a(n-1)` -/
def P10214800674720726585.Spec : Prop :=
  ∀ n, P10214800674720726585.a n = A028221 n

end A028221

/-! ## A028221.P433589078966410783

`2*A028017(n)-A028005(n)`
-/

namespace A028221.P433589078966410783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028017 n - A028005 n

end

end A028221.P433589078966410783

namespace A028221

/-- `2*A028017(n)-A028005(n)` -/
def P433589078966410783.Spec : Prop :=
  ∀ n, P433589078966410783.a n = A028221 n

end A028221

/-! ## A028221.P7354718777433439257

`2*A028203(n)-A028200(n)`
-/

namespace A028221.P7354718777433439257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028203 n - A028200 n

end

end A028221.P7354718777433439257

namespace A028221

/-- `2*A028203(n)-A028200(n)` -/
def P7354718777433439257.Spec : Prop :=
  ∀ n, P7354718777433439257.a n = A028221 n

end A028221

/-! ## A028221.P5846755750231992508

`2*A028212(n)-A028206(n)`
-/

namespace A028221.P5846755750231992508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028212 n - A028206 n

end

end A028221.P5846755750231992508

namespace A028221

/-- `2*A028212(n)-A028206(n)` -/
def P5846755750231992508.Spec : Prop :=
  ∀ n, P5846755750231992508.a n = A028221 n

end A028221

/-! ## A028221.P9263936078297583740

`A028015(n)+A028022(n)-A028005(n)`
-/

namespace A028221.P9263936078297583740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028015 n + (A028022 n - A028005 n)

end

end A028221.P9263936078297583740

namespace A028221

/-- `A028015(n)+A028022(n)-A028005(n)` -/
def P9263936078297583740.Spec : Prop :=
  ∀ n, P9263936078297583740.a n = A028221 n

end A028221

/-! ## A028221.P72803066436308443

`A028201(n)+A028208(n)-A028200(n)`
-/

namespace A028221.P72803066436308443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028201 n + (A028208 n - A028200 n)

end

end A028221.P72803066436308443

namespace A028221

/-- `A028201(n)+A028208(n)-A028200(n)` -/
def P72803066436308443.Spec : Prop :=
  ∀ n, P72803066436308443.a n = A028221 n

end A028221

/-! ## A028221.P17548935291709535535

`A028204(n)+A028208(n)-A028201(n)`
-/

namespace A028221.P17548935291709535535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028204 n + (A028208 n - A028201 n)

end

end A028221.P17548935291709535535

namespace A028221

/-- `A028204(n)+A028208(n)-A028201(n)` -/
def P17548935291709535535.Spec : Prop :=
  ∀ n, P17548935291709535535.a n = A028221 n

end A028221

/-! ## A028221.P12804713368262491266

`A028206(n)+A028212(n)-A028203(n)`
-/

namespace A028221.P12804713368262491266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028206 n + (A028212 n - A028203 n)

end

end A028221.P12804713368262491266

namespace A028221

/-- `A028206(n)+A028212(n)-A028203(n)` -/
def P12804713368262491266.Spec : Prop :=
  ∀ n, P12804713368262491266.a n = A028221 n

end A028221

/-! ## A028221.P11955132475650785554

`A028208(n)+A028210(n)-A028204(n)`
-/

namespace A028221.P11955132475650785554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028208 n + (A028210 n - A028204 n)

end

end A028221.P11955132475650785554

namespace A028221

/-- `A028208(n)+A028210(n)-A028204(n)` -/
def P11955132475650785554.Spec : Prop :=
  ∀ n, P11955132475650785554.a n = A028221 n

end A028221

/-!
# A028222: Expansion of 1/((1-7x)(1-8x)(1-10x)(1-11x)).

The programs for A028222, the canonical program `A028222.P13847331302592736575` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028222 has offset 0).

The definition of A028222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028222.P13847331302592736575

`(11^(n+3)-2*10^(n+3)+2*8^(n+3)-7^(n+3))/12`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028222

/-- `(11^(n+3)-2*10^(n+3)+2*8^(n+3)-7^(n+3))/12` -/
def P13847331302592736575.Spec : Prop :=
  ∀ n, P13847331302592736575.a n = (A028222 n : ℚ)

end A028222

/-! ## A028222.P14158625164274992117

`Δ[A024439(n)-A024438(n)]`
-/

namespace A028222.P14158625164274992117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024439 n - A024438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028222.P14158625164274992117

namespace A028222

/-- `Δ[A024439(n)-A024438(n)]` -/
def P14158625164274992117.Spec : Prop :=
  ∀ n, P14158625164274992117.a n = A028222 n

end A028222

/-! ## A028222.P8878830705217963447

`2*A028187(n)-A028181(n)`
-/

namespace A028222.P8878830705217963447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028187 n - A028181 n

end

end A028222.P8878830705217963447

namespace A028222

/-- `2*A028187(n)-A028181(n)` -/
def P8878830705217963447.Spec : Prop :=
  ∀ n, P8878830705217963447.a n = A028222 n

end A028222

/-! ## A028222.P1904071228164569411

`A028012(n)+A028021(n)-A028005(n)`
-/

namespace A028222.P1904071228164569411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028012 n + (A028021 n - A028005 n)

end

end A028222.P1904071228164569411

namespace A028222

/-- `A028012(n)+A028021(n)-A028005(n)` -/
def P1904071228164569411.Spec : Prop :=
  ∀ n, P1904071228164569411.a n = A028222 n

end A028222

/-! ## A028222.P4697712892786920836

`A028202(n)+A028213(n)-A028201(n)`
-/

namespace A028222.P4697712892786920836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028202 n + (A028213 n - A028201 n)

end

end A028222.P4697712892786920836

namespace A028222

/-- `A028202(n)+A028213(n)-A028201(n)` -/
def P4697712892786920836.Spec : Prop :=
  ∀ n, P4697712892786920836.a n = A028222 n

end A028222

/-! ## A028222.P3591870185548011295

`A028207(n)+A028207(n)-A028202(n)`
-/

namespace A028222.P3591870185548011295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028207 n + (A028207 n - A028202 n)

end

end A028222.P3591870185548011295

namespace A028222

/-- `A028207(n)+A028207(n)-A028202(n)` -/
def P3591870185548011295.Spec : Prop :=
  ∀ n, P3591870185548011295.a n = A028222 n

end A028222

/-! ## A028222.P12115200991760724452

`2*A028207(n)-A028202(n)`
-/

namespace A028222.P12115200991760724452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028207 n - A028202 n

end

end A028222.P12115200991760724452

namespace A028222

/-- `2*A028207(n)-A028202(n)` -/
def P12115200991760724452.Spec : Prop :=
  ∀ n, P12115200991760724452.a n = A028222 n

end A028222

/-! ## A028222.P15400784508242263343

`A028204(n)+A028216(n)-A028202(n)`
-/

namespace A028222.P15400784508242263343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028204 n + (A028216 n - A028202 n)

end

end A028222.P15400784508242263343

namespace A028222

/-- `A028204(n)+A028216(n)-A028202(n)` -/
def P15400784508242263343.Spec : Prop :=
  ∀ n, P15400784508242263343.a n = A028222 n

end A028222

/-! ## A028222.P842643484339111518

`2*A028223(n)-A028224(n)`
-/

namespace A028222.P842643484339111518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028223 n - A028224 n

end

end A028222.P842643484339111518

namespace A028222

/-- `2*A028223(n)-A028224(n)` -/
def P842643484339111518.Spec : Prop :=
  ∀ n, P842643484339111518.a n = A028222 n

end A028222

/-! ## A028222.P11885742830247934601

`2*A028224(n)-A028228(n)`
-/

namespace A028222.P11885742830247934601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028224 n - A028228 n

end

end A028222.P11885742830247934601

namespace A028222

/-- `2*A028224(n)-A028228(n)` -/
def P11885742830247934601.Spec : Prop :=
  ∀ n, P11885742830247934601.a n = A028222 n

end A028222

/-!
# A028223: Expansion of 1/((1-7x)(1-8x)(1-10x)(1-12x)).

The programs for A028223, the canonical program `A028223.P796540975097859468` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028223 has offset 0).

The definition of A028223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028223.P796540975097859468

`(3*12^(n+3)-10^(n+4)+15*8^(n+3)-8*7^(n+3))/120`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028223

/-- `(3*12^(n+3)-10^(n+4)+15*8^(n+3)-8*7^(n+3))/120` -/
def P796540975097859468.Spec : Prop :=
  ∀ n, P796540975097859468.a n = (A028223 n : ℚ)

end A028223

/-! ## A028223.P7341030159590127725

`Δ[A021894(n)-A021914(n)]`
-/

namespace A028223.P7341030159590127725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021894 n - A021914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028223.P7341030159590127725

namespace A028223

/-- `Δ[A021894(n)-A021914(n)]` -/
def P7341030159590127725.Spec : Prop :=
  ∀ n, P7341030159590127725.a n = A028223 n

end A028223

/-! ## A028223.P18018008698383645804

`2*A028019(n)-A028006(n)`
-/

namespace A028223.P18018008698383645804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028019 n - A028006 n

end

end A028223.P18018008698383645804

namespace A028223

/-- `2*A028019(n)-A028006(n)` -/
def P18018008698383645804.Spec : Prop :=
  ∀ n, P18018008698383645804.a n = A028223 n

end A028223

/-! ## A028223.P10584725944451271448

`2*A028208(n)-A028203(n)`
-/

namespace A028223.P10584725944451271448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028208 n - A028203 n

end

end A028223.P10584725944451271448

namespace A028223

/-- `2*A028208(n)-A028203(n)` -/
def P10584725944451271448.Spec : Prop :=
  ∀ n, P10584725944451271448.a n = A028223 n

end A028223

/-! ## A028223.P6703451937893972749

`A028017(n)+A028022(n)-A028006(n)`
-/

namespace A028223.P6703451937893972749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028017 n + (A028022 n - A028006 n)

end

end A028223.P6703451937893972749

namespace A028223

/-- `A028017(n)+A028022(n)-A028006(n)` -/
def P6703451937893972749.Spec : Prop :=
  ∀ n, P6703451937893972749.a n = A028223 n

end A028223

/-! ## A028223.P4967928715872079373

`A028018(n)+A028020(n)-A028006(n)`
-/

namespace A028223.P4967928715872079373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028018 n + (A028020 n - A028006 n)

end

end A028223.P4967928715872079373

namespace A028223

/-- `A028018(n)+A028020(n)-A028006(n)` -/
def P4967928715872079373.Spec : Prop :=
  ∀ n, P4967928715872079373.a n = A028223 n

end A028223

/-! ## A028223.P997988626655170840

`A028203(n)+A028208(n)-A028201(n)`
-/

namespace A028223.P997988626655170840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028203 n + (A028208 n - A028201 n)

end

end A028223.P997988626655170840

namespace A028223

/-- `A028203(n)+A028208(n)-A028201(n)` -/
def P997988626655170840.Spec : Prop :=
  ∀ n, P997988626655170840.a n = A028223 n

end A028223

/-! ## A028223.P17252957363166559829

`A028203(n)+A028221(n)-A028204(n)`
-/

namespace A028223.P17252957363166559829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028203 n + (A028221 n - A028204 n)

end

end A028223.P17252957363166559829

namespace A028223

/-- `A028203(n)+A028221(n)-A028204(n)` -/
def P17252957363166559829.Spec : Prop :=
  ∀ n, P17252957363166559829.a n = A028223 n

end A028223

/-! ## A028223.P8421864779593996620

`A028206(n)+A028212(n)-A028204(n)`
-/

namespace A028223.P8421864779593996620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028206 n + (A028212 n - A028204 n)

end

end A028223.P8421864779593996620

namespace A028223

/-- `A028206(n)+A028212(n)-A028204(n)` -/
def P8421864779593996620.Spec : Prop :=
  ∀ n, P8421864779593996620.a n = A028223 n

end A028223

/-! ## A028223.P9014867945783209669

`A028207(n)+A028209(n)-A028203(n)`
-/

namespace A028223.P9014867945783209669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028207 n + (A028209 n - A028203 n)

end

end A028223.P9014867945783209669

namespace A028223

/-- `A028207(n)+A028209(n)-A028203(n)` -/
def P9014867945783209669.Spec : Prop :=
  ∀ n, P9014867945783209669.a n = A028223 n

end A028223

/-!
# A028224: Expansion of 1/((1-7x)(1-8x)(1-11x)(1-12x)).

The programs for A028224, there is no canonical definition to state claims against.
-/

/-! ## A028224.P9091082882454611048

`Δ[A024440(n)-A024439(n)]`
-/

namespace A028224.P9091082882454611048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024440 n - A024439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028224.P9091082882454611048

/-! ## A028224.P13815241255967448304

`2*A028020(n)-A028007(n)`
-/

namespace A028224.P13815241255967448304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028020 n - A028007 n

end

end A028224.P13815241255967448304

/-! ## A028224.P12929055548019996469

`2*A028104(n)-A028092(n)`
-/

namespace A028224.P12929055548019996469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028104 n - A028092 n

end

end A028224.P12929055548019996469

/-! ## A028224.P11787528854512278527

`2*A028154(n)-A028147(n)`
-/

namespace A028224.P11787528854512278527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028154 n - A028147 n

end

end A028224.P11787528854512278527

/-! ## A028224.P18050155102296706456

`2*A028189(n)-A028183(n)`
-/

namespace A028224.P18050155102296706456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028189 n - A028183 n

end

end A028224.P18050155102296706456

/-! ## A028224.P17630000687245167458

`2*A028215(n)-A028209(n)`
-/

namespace A028224.P17630000687245167458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028215 n - A028209 n

end

end A028224.P17630000687245167458

/-! ## A028224.P10874336713331522409

`2*A028223(n)-A028222(n)`
-/

namespace A028224.P10874336713331522409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028223 n - A028222 n

end

end A028224.P10874336713331522409

/-! ## A028224.P4640525044495993233

`(A028228(n)+A028222(n))/2`
-/

namespace A028224.P4640525044495993233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028228 n + A028222 n : ℚ) / 2

end

end A028224.P4640525044495993233

/-! ## A028224.P12877353891137999870

`A020969(n+1)-A020968(n+1)`
-/

namespace A028224.P12877353891137999870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020969 (n + 1) - A020968 (n + 1)

end

end A028224.P12877353891137999870

/-! ## A028224.P16305353602880046586

`A028012(n)+A028024(n)-A028006(n)`
-/

namespace A028224.P16305353602880046586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028012 n + (A028024 n - A028006 n)

end

end A028224.P16305353602880046586

/-!
# A028225: Expansion of 1/((1-7x)(1-9x)(1-10x)(1-11x)).

The programs for A028225, the canonical program `A028225.P1798751449775405290` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028225 has offset 0).

The definition of A028225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028225.P1798751449775405290

`(3*11^(n+3)-8*10^(n+3)+6*9^(n+3)-7^(n+3))/24`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028225

/-- `(3*11^(n+3)-8*10^(n+3)+6*9^(n+3)-7^(n+3))/24` -/
def P1798751449775405290.Spec : Prop :=
  ∀ n, P1798751449775405290.a n = (A028225 n : ℚ)

end A028225

/-! ## A028225.P4886597346234201010

`Δ[A024442(n)-A024441(n)]`
-/

namespace A028225.P4886597346234201010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024442 n - A024441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028225.P4886597346234201010

namespace A028225

/-- `Δ[A024442(n)-A024441(n)]` -/
def P4886597346234201010.Spec : Prop :=
  ∀ n, P4886597346234201010.a n = A028225 n

end A028225

/-! ## A028225.P2515600838091964904

`Δ[A024444(n)-A024442(n)]`
-/

namespace A028225.P2515600838091964904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024444 n - A024442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028225.P2515600838091964904

namespace A028225

/-- `Δ[A024444(n)-A024442(n)]` -/
def P2515600838091964904.Spec : Prop :=
  ∀ n, P2515600838091964904.a n = A028225 n

end A028225

/-! ## A028225.P6251334379858059993

`2*A028105(n)-A028093(n)`
-/

namespace A028225.P6251334379858059993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028105 n - A028093 n

end

end A028225.P6251334379858059993

namespace A028225

/-- `2*A028105(n)-A028093(n)` -/
def P6251334379858059993.Spec : Prop :=
  ∀ n, P6251334379858059993.a n = A028225 n

end A028225

/-! ## A028225.P8040176824159885559

`2*A028222(n)-A028220(n)`
-/

namespace A028225.P8040176824159885559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028222 n - A028220 n

end

end A028225.P8040176824159885559

namespace A028225

/-- `2*A028222(n)-A028220(n)` -/
def P8040176824159885559.Spec : Prop :=
  ∀ n, P8040176824159885559.a n = A028225 n

end A028225

/-! ## A028225.P427918353514603618

`A020971(n+1)-A020970(n+1)`
-/

namespace A028225.P427918353514603618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020971 (n + 1) - A020970 (n + 1)

end

end A028225.P427918353514603618

namespace A028225

/-- `A020971(n+1)-A020970(n+1)` -/
def P427918353514603618.Spec : Prop :=
  ∀ n, P427918353514603618.a n = A028225 n

end A028225

/-! ## A028225.P12106536477207785853

`A028205(n)+A028216(n)-A028204(n)`
-/

namespace A028225.P12106536477207785853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028205 n + (A028216 n - A028204 n)

end

end A028225.P12106536477207785853

namespace A028225

/-- `A028205(n)+A028216(n)-A028204(n)` -/
def P12106536477207785853.Spec : Prop :=
  ∀ n, P12106536477207785853.a n = A028225 n

end A028225

/-! ## A028225.P654308947626002471

`A028207(n)+A028216(n)-A028205(n)`
-/

namespace A028225.P654308947626002471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028207 n + (A028216 n - A028205 n)

end

end A028225.P654308947626002471

namespace A028225

/-- `A028207(n)+A028216(n)-A028205(n)` -/
def P654308947626002471.Spec : Prop :=
  ∀ n, P654308947626002471.a n = A028225 n

end A028225

/-!
# A028226: Expansion of 1/((1-7x)(1-9x)(1-10x)(1-12x)).

The programs for A028226, the canonical program `A028226.P4739716944814696299` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028226 has offset 0).

The definition of A028226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028226.P4739716944814696299

`(12^(n+3)-5*10^(n+3)+5*9^(n+3)-7^(n+3))/30`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028226

/-- `(12^(n+3)-5*10^(n+3)+5*9^(n+3)-7^(n+3))/30` -/
def P4739716944814696299.Spec : Prop :=
  ∀ n, P4739716944814696299.a n = (A028226 n : ℚ)

end A028226

/-! ## A028226.P7284483305064325767

`2*A028022(n)-A028009(n)`
-/

namespace A028226.P7284483305064325767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028022 n - A028009 n

end

end A028226.P7284483305064325767

namespace A028226

/-- `2*A028022(n)-A028009(n)` -/
def P7284483305064325767.Spec : Prop :=
  ∀ n, P7284483305064325767.a n = A028226 n

end A028226

/-! ## A028226.P16605796055483481912

`2*A028208(n)-A028204(n)`
-/

namespace A028226.P16605796055483481912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028208 n - A028204 n

end

end A028226.P16605796055483481912

namespace A028226

/-- `2*A028208(n)-A028204(n)` -/
def P16605796055483481912.Spec : Prop :=
  ∀ n, P16605796055483481912.a n = A028226 n

end A028226

/-! ## A028226.P8183333717991543615

`A028021(n)+A028023(n)-A028009(n)`
-/

namespace A028226.P8183333717991543615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028021 n + (A028023 n - A028009 n)

end

end A028226.P8183333717991543615

namespace A028226

/-- `A028021(n)+A028023(n)-A028009(n)` -/
def P8183333717991543615.Spec : Prop :=
  ∀ n, P8183333717991543615.a n = A028226 n

end A028226

/-! ## A028226.P13926020605386607103

`A028153(n)+A028162(n)-A028149(n)`
-/

namespace A028226.P13926020605386607103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028153 n + (A028162 n - A028149 n)

end

end A028226.P13926020605386607103

namespace A028226

/-- `A028153(n)+A028162(n)-A028149(n)` -/
def P13926020605386607103.Spec : Prop :=
  ∀ n, P13926020605386607103.a n = A028226 n

end A028226

/-! ## A028226.P18218381577895975891

`A028162(n)+A028162(n)-A028151(n)`
-/

namespace A028226.P18218381577895975891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028162 n + (A028162 n - A028151 n)

end

end A028226.P18218381577895975891

namespace A028226

/-- `A028162(n)+A028162(n)-A028151(n)` -/
def P18218381577895975891.Spec : Prop :=
  ∀ n, P18218381577895975891.a n = A028226 n

end A028226

/-! ## A028226.P12472438579849857999

`A028207(n)+A028209(n)-A028204(n)`
-/

namespace A028226.P12472438579849857999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028207 n + (A028209 n - A028204 n)

end

end A028226.P12472438579849857999

namespace A028226

/-- `A028207(n)+A028209(n)-A028204(n)` -/
def P12472438579849857999.Spec : Prop :=
  ∀ n, P12472438579849857999.a n = A028226 n

end A028226

/-! ## A028226.P3750263812778149124

`A028208(n)+A028217(n)-A028206(n)`
-/

namespace A028226.P3750263812778149124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028208 n + (A028217 n - A028206 n)

end

end A028226.P3750263812778149124

namespace A028226

/-- `A028208(n)+A028217(n)-A028206(n)` -/
def P3750263812778149124.Spec : Prop :=
  ∀ n, P3750263812778149124.a n = A028226 n

end A028226

/-! ## A028226.P11242466943841940963

`A028208(n)+A028221(n)-A028210(n)`
-/

namespace A028226.P11242466943841940963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028208 n + (A028221 n - A028210 n)

end

end A028226.P11242466943841940963

namespace A028226

/-- `A028208(n)+A028221(n)-A028210(n)` -/
def P11242466943841940963.Spec : Prop :=
  ∀ n, P11242466943841940963.a n = A028226 n

end A028226

/-! ## A028226.P16255458968581846189

`A028209(n)+A028216(n)-A028207(n)`
-/

namespace A028226.P16255458968581846189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028209 n + (A028216 n - A028207 n)

end

end A028226.P16255458968581846189

namespace A028226

/-- `A028209(n)+A028216(n)-A028207(n)` -/
def P16255458968581846189.Spec : Prop :=
  ∀ n, P16255458968581846189.a n = A028226 n

end A028226

/-!
# A028227: Expansion of 1/((1-7x)(1-9x)(1-11x)(1-12x)).

The programs for A028227, there is no canonical definition to state claims against.
-/

/-! ## A028227.P16564372304579341934

`Δ[A024443(n)-A024442(n)]`
-/

namespace A028227.P16564372304579341934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024443 n - A024442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028227.P16564372304579341934

/-! ## A028227.P1618258018778458776

`2*A028023(n)-A028010(n)`
-/

namespace A028227.P1618258018778458776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028023 n - A028010 n

end

end A028227.P1618258018778458776

/-! ## A028227.P16732007498900422904

`2*A028198(n)-A028189(n)`
-/

namespace A028227.P16732007498900422904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028198 n - A028189 n

end

end A028227.P16732007498900422904

/-! ## A028227.P17261251552302587761

`2*A028209(n)-A028205(n)`
-/

namespace A028227.P17261251552302587761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028209 n - A028205 n

end

end A028227.P17261251552302587761

/-! ## A028227.P4878977025028496867

`(A020975(n+1)-A020972(n+1))/2`
-/

namespace A028227.P4878977025028496867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020975 (n + 1) - A020972 (n + 1) : ℚ) / 2

end

end A028227.P4878977025028496867

/-! ## A028227.P11532075044083783471

`(A020984(n+1)-A020975(n+1))/2`
-/

namespace A028227.P11532075044083783471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020984 (n + 1) - A020975 (n + 1) : ℚ) / 2

end

end A028227.P11532075044083783471

/-! ## A028227.P14370488439319875802

`A028022(n)+A028024(n)-A028010(n)`
-/

namespace A028227.P14370488439319875802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028022 n + (A028024 n - A028010 n)

end

end A028227.P14370488439319875802

/-! ## A028227.P4035695814603125574

`A028206(n)+A028218(n)-A028205(n)`
-/

namespace A028227.P4035695814603125574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028206 n + (A028218 n - A028205 n)

end

end A028227.P4035695814603125574

/-!
# A028228: Expansion of 1/((1-7x)(1-10x)(1-11x)(1-12x)).

The programs for A028228, the canonical program `A028228.P16527530796402707161` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028228 has offset 0).

The definition of A028228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028228.P16527530796402707161

`23*a(n-1)-132*a(n-2)+(10^(n+1)-7^(n+1))/3` with `a(0)=1, a(1)=40`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028228

/-- `23*a(n-1)-132*a(n-2)+(10^(n+1)-7^(n+1))/3` -/
def P16527530796402707161.Spec : Prop :=
  ∀ n, P16527530796402707161.a n = (A028228 n : ℚ)

end A028228

/-! ## A028228.P11321787510226378898

`Δ[A024445(n)-A024444(n)]`
-/

namespace A028228.P11321787510226378898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024445 n - A024444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028228.P11321787510226378898

namespace A028228

/-- `Δ[A024445(n)-A024444(n)]` -/
def P11321787510226378898.Spec : Prop :=
  ∀ n, P11321787510226378898.a n = A028228 n

end A028228

/-! ## A028228.P9878309664222184812

`Δ[A024446(n)-A024445(n)]`
-/

namespace A028228.P9878309664222184812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024446 n - A024445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028228.P9878309664222184812

namespace A028228

/-- `Δ[A024446(n)-A024445(n)]` -/
def P9878309664222184812.Spec : Prop :=
  ∀ n, P9878309664222184812.a n = A028228 n

end A028228

/-! ## A028228.P16648326943453623213

`2*A028024(n)-A028012(n)`
-/

namespace A028228.P16648326943453623213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028024 n - A028012 n

end

end A028228.P16648326943453623213

namespace A028228

/-- `2*A028024(n)-A028012(n)` -/
def P16648326943453623213.Spec : Prop :=
  ∀ n, P16648326943453623213.a n = A028228 n

end A028228

/-! ## A028228.P125229156755728495

`A020974(n+1)-A020973(n+1)`
-/

namespace A028228.P125229156755728495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020974 (n + 1) - A020973 (n + 1)

end

end A028228.P125229156755728495

namespace A028228

/-- `A020974(n+1)-A020973(n+1)` -/
def P125229156755728495.Spec : Prop :=
  ∀ n, P125229156755728495.a n = A028228 n

end A028228

/-! ## A028228.P8144941715343702406

`(A020975(n+1)-A020973(n+1))/2`
-/

namespace A028228.P8144941715343702406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020975 (n + 1) - A020973 (n + 1) : ℚ) / 2

end

end A028228.P8144941715343702406

namespace A028228

/-- `(A020975(n+1)-A020973(n+1))/2` -/
def P8144941715343702406.Spec : Prop :=
  ∀ n, P8144941715343702406.a n = (A028228 n : ℚ)

end A028228

/-! ## A028228.P3847311933570196643

`A028208(n)+A028219(n)-A028207(n)`
-/

namespace A028228.P3847311933570196643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028208 n + (A028219 n - A028207 n)

end

end A028228.P3847311933570196643

namespace A028228

/-- `A028208(n)+A028219(n)-A028207(n)` -/
def P3847311933570196643.Spec : Prop :=
  ∀ n, P3847311933570196643.a n = A028228 n

end A028228

/-! ## A028228.P4319460726778340822

`A028209(n)+A028219(n)-A028208(n)`
-/

namespace A028228.P4319460726778340822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028209 n + (A028219 n - A028208 n)

end

end A028228.P4319460726778340822

namespace A028228

/-- `A028209(n)+A028219(n)-A028208(n)` -/
def P4319460726778340822.Spec : Prop :=
  ∀ n, P4319460726778340822.a n = A028228 n

end A028228

/-!
# A028230: Bisection of A001353. Indices of square numbers which are also octagonal.

The programs for A028230, the canonical program `A028230.P9524290425764873719` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028230 has offset 1).

The definition of A028230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028230.P9524290425764873719

`14*a(n-1)-a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028230

/-- `14*a(n-1)-a(n-2)` -/
def P9524290425764873719.Spec : Prop :=
  ∀ n, P9524290425764873719.a n = A028230 (n + 1)

theorem P9524290425764873719.correct : P9524290425764873719.Spec := by
  intro n
  simp only [A028230, Nat.add_sub_cancel]

end A028230

/-! ## A028230.P6750143926942941871

`2*A001921(n)+1`
-/

namespace A028230.P6750143926942941871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001921 n + 1

end

end A028230.P6750143926942941871

namespace A028230

/-- `2*A001921(n)+1` -/
def P6750143926942941871.Spec : Prop :=
  ∀ n, P6750143926942941871.a n = A028230 (n + 1)

end A028230

/-! ## A028230.P1076664388397915948

`A001353(n+1)²-A001353(n)²`
-/

namespace A028230.P1076664388397915948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) ^ 2 - A001353 n ^ 2

end

end A028230.P1076664388397915948

namespace A028230

/-- `A001353(n+1)²-A001353(n)²` -/
def P1076664388397915948.Spec : Prop :=
  ∀ n, P1076664388397915948.a n = A028230 (n + 1)

end A028230

/-! ## A028230.P15302768517603289745

`sqrt(A036428(n+1))`
-/

namespace A028230.P15302768517603289745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036428 (n + 1) : ℝ)

end

end A028230.P15302768517603289745

namespace A028230

/-- `sqrt(A036428(n+1))` -/
def P15302768517603289745.Spec : Prop :=
  ∀ n, P15302768517603289745.a n = (A028230 (n + 1) : ℝ)

end A028230

/-! ## A028230.P9211229027556522791

`ogf((1+x)/(1-14x+x^2))`
-/

namespace A028230.P9211229027556522791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -14, 1] n

end

end A028230.P9211229027556522791

namespace A028230

/-- `ogf((1+x)/(1-14x+x^2))` -/
def P9211229027556522791.Spec : Prop :=
  ∀ n, P9211229027556522791.a n = A028230 (n + 1)

end A028230

/-! ## A028230.P17910526399783991956

`∑[round(((sqrt(3)+2)^n)²)]`
-/

namespace A028230.P17910526399783991956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028230.P17910526399783991956

namespace A028230

/-- `∑[round(((sqrt(3)+2)^n)²)]` -/
def P17910526399783991956.Spec : Prop :=
  ∀ n, P17910526399783991956.a n = A028230 (n + 1)

end A028230

/-! ## A028230.P16402570442750725850

`record[round(a(n-1)/(sqrt(3)-2))]` with `a(0)=1`
-/

namespace A028230.P16402570442750725850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028230.P16402570442750725850

namespace A028230

/-- `record[round(a(n-1)/(sqrt(3)-2))]` -/
def P16402570442750725850.Spec : Prop :=
  ∀ n, P16402570442750725850.a n = A028230 (n + 1)

end A028230

/-! ## A028230.P8351813927543729053

`Δ[A098301(n)]`
-/

namespace A028230.P8351813927543729053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028230.P8351813927543729053

namespace A028230

/-- `Δ[A098301(n)]` -/
def P8351813927543729053.Spec : Prop :=
  ∀ n, P8351813927543729053.a n = A028230 (n + 1)

end A028230

/-! ## A028230.P4967948550525146028

`record[A110294(n)]`
-/

namespace A028230.P4967948550525146028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028230.P4967948550525146028

namespace A028230

/-- `record[A110294(n)]` -/
def P4967948550525146028.Spec : Prop :=
  ∀ n, P4967948550525146028.a n = A028230 (n + 1)

end A028230

/-! ## A028230.P16077381589847778887

`record[A125905(n)]`
-/

namespace A028230.P16077381589847778887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028230.P16077381589847778887

namespace A028230

/-- `record[A125905(n)]` -/
def P16077381589847778887.Spec : Prop :=
  ∀ n, P16077381589847778887.a n = A028230 (n + 1)

end A028230

/-!
# A028231: From hexagons in a circle problem.

The programs for A028231, the canonical program `A028231.P16425202620939525785` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028231 has offset 0).

The definition of A028231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028231.P16425202620939525785

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=22, a(2)=313`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028231

/-- `15*a(n-1)-15*a(n-2)+a(n-3)` -/
def P16425202620939525785.Spec : Prop :=
  ∀ n, P16425202620939525785.a n = A028231 n

theorem P16425202620939525785.correct : P16425202620939525785.Spec := by
  intro n
  simp only [A028231]

end A028231

/-! ## A028231.P1189633613326417582

`abs(floor((sqrt(3)+2)²*a(n-1))+7)` with `a(0)=1, a(1)=22`
-/

namespace A028231.P1189633613326417582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  |⌊(Real.sqrt (3 : ℝ) + 2) ^ 2 * (a (n - 1) : ℝ)⌋ + 7|

end

end A028231.P1189633613326417582

namespace A028231

/-- `abs(floor((sqrt(3)+2)²*a(n-1))+7)` -/
def P1189633613326417582.Spec : Prop :=
  ∀ n, P1189633613326417582.a n = A028231 n

end A028231

/-! ## A028231.P16435992056709572686

`3*floor(∑[round(((sqrt(3)+2)^n)²)]/2)+1`
-/

namespace A028231.P16435992056709572686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Real.sqrt (3 : ℝ) + 2) ^ n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 1

end

end A028231.P16435992056709572686

namespace A028231

/-- `3*floor(∑[round(((sqrt(3)+2)^n)²)]/2)+1` -/
def P16435992056709572686.Spec : Prop :=
  ∀ n, P16435992056709572686.a n = A028231 n

end A028231

/-! ## A028231.P4471866037046148474

`abs(xor((-1)^n, A157088(n)))`
-/

namespace A028231.P4471866037046148474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((-1) ^ n) (A157088 n)|

end

end A028231.P4471866037046148474

namespace A028231

/-- `abs(xor((-1)^n, A157088(n)))` -/
def P4471866037046148474.Spec : Prop :=
  ∀ n, P4471866037046148474.a n = A028231 n

end A028231

/-! ## A028231.P15849528555202941908

`record[A108946(n)+A001571(n)]`
-/

namespace A028231.P15849528555202941908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108946 n + A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028231.P15849528555202941908

namespace A028231

/-- `record[A108946(n)+A001571(n)]` -/
def P15849528555202941908.Spec : Prop :=
  ∀ n, P15849528555202941908.a n = A028231 n

end A028231

/-! ## A028231.P3077408776770095369

`record[A001571(n)-A097948(n)]`
-/

namespace A028231.P3077408776770095369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n - A097948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028231.P3077408776770095369

namespace A028231

/-- `record[A001571(n)-A097948(n)]` -/
def P3077408776770095369.Spec : Prop :=
  ∀ n, P3077408776770095369.a n = A028231 n

end A028231

/-! ## A028231.P10485196941152719363

`(A157088(n)+1)%A157089(n)`
-/

namespace A028231.P10485196941152719363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157088 n + 1) (A157089 n)

end

end A028231.P10485196941152719363

namespace A028231

/-- `(A157088(n)+1)%A157089(n)` -/
def P10485196941152719363.Spec : Prop :=
  ∀ n, P10485196941152719363.a n = A028231 n

end A028231

/-! ## A028231.P7997353357556513826

`record[A082840(n)+A108946(n)+1]`
-/

namespace A028231.P7997353357556513826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n + (A108946 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028231.P7997353357556513826

namespace A028231

/-- `record[A082840(n)+A108946(n)+1]` -/
def P7997353357556513826.Spec : Prop :=
  ∀ n, P7997353357556513826.a n = A028231 n

end A028231

/-! ## A028231.P941974502537423218

`record[A082840(n)+1-A097948(n)]`
-/

namespace A028231.P941974502537423218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n + (1 - A097948 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028231.P941974502537423218

namespace A028231

/-- `record[A082840(n)+1-A097948(n)]` -/
def P941974502537423218.Spec : Prop :=
  ∀ n, P941974502537423218.a n = A028231 n

end A028231

/-! ## A028231.P3762129490782484762

`record[A108946(n)+∑[A001075(n)]-1]`
-/

namespace A028231.P3762129490782484762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108946 n + (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028231.P3762129490782484762

namespace A028231

/-- `record[A108946(n)+∑[A001075(n)]-1]` -/
def P3762129490782484762.Spec : Prop :=
  ∀ n, P3762129490782484762.a n = A028231 n

end A028231

/-!
# A028233: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = p_1^e_1, with a(1) = 1.

The programs for A028233, there is no canonical definition to state claims against.
-/

/-! ## A028233.P13002379639496575207

`(n+1)/A028234(n+1)`
-/

namespace A028233.P13002379639496575207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A028234 (n + 1) : ℚ)

end

end A028233.P13002379639496575207

/-! ## A028233.P1707119900298464866

`A020639(n+1)^A067029(n+1)`
-/

namespace A028233.P1707119900298464866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A067029 (n + 1) : ℤ)

end

end A028233.P1707119900298464866

/-! ## A028233.P12577179105928477655

`gcd(n+1, A068794(n+1))`
-/

namespace A028233.P12577179105928477655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A068794 (n + 1))

end

end A028233.P12577179105928477655

/-! ## A028233.P3091069868535973902

`A277708(∏{p}[n+1, #])^A067029(n+1)`
-/

namespace A028233.P3091069868535973902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277708 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) ^ (A067029 (n + 1) : ℤ)

end

end A028233.P3091069868535973902

/-! ## A028233.P2840809107401798997

`A000015((n+1)*A028234(n+1)^-1)`
-/

namespace A028233.P2840809107401798997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (A028234 (n + 1) : ℚ) ^ (-1 : ℤ))).toNat

end

end A028233.P2840809107401798997

/-! ## A028233.P13506574895717861369

`A014963(A304181(n+1))^A067029(n+1)`
-/

namespace A028233.P13506574895717861369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A304181 (n + 1)).toNat : ℚ) ^ (A067029 (n + 1) : ℤ)

end

end A028233.P13506574895717861369

/-! ## A028233.P4221069413890540687

`A014963(A068794(n+1))^val(A318885(n+1), 2)`
-/

namespace A028233.P4221069413890540687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A068794 (n + 1)).toNat ^ SequenceMachineLib.valuation (A318885 (n + 1)).toNat 2

end

end A028233.P4221069413890540687

/-! ## A028233.P14295132858316799926

`(n+1)/A302026(A302034(A302025(n+1)))`
-/

namespace A028233.P14295132858316799926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A302026 (A302034 (A302025 (n + 1)).toNat).toNat : ℚ)

end

end A028233.P14295132858316799926

/-! ## A028233.P3106568231465249992

`A071975((n+1)*A032742(n+1))`
-/

namespace A028233.P3106568231465249992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 ((n + 1 : ℤ) * A032742 (n + 1)).toNat

end

end A028233.P3106568231465249992

/-! ## A028233.P13405747060994257749

`A071975(A032742((n+1)²))`
-/

namespace A028233.P13405747060994257749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A032742 ((n + 1) ^ 2)).toNat

end

end A028233.P13405747060994257749

/-! ## A028233.P11830324661935903715

`A014963(A088377(n+1))^A067029(n+1)`
-/

namespace A028233.P11830324661935903715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A088377 (n + 1)).toNat : ℚ) ^ (A067029 (n + 1) : ℤ)

end

end A028233.P11830324661935903715

/-! ## A028233.P9680736216846703174

`A014963(A088377(n+1))^val(A071364(n+1), 2)`
-/

namespace A028233.P9680736216846703174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A088377 (n + 1)).toNat ^ SequenceMachineLib.valuation (A071364 (n + 1)).toNat 2

end

end A028233.P9680736216846703174

/-!
# A028234: If n = p_1^e_1 * ... * p_k^e_k, p_1 < ... < p_k primes, then a(n) = n/p_1^e_1, with a(1) = 1.

The programs for A028234, there is no canonical definition to state claims against.
-/

/-! ## A028234.P590847467489235385

`(n+1)/A028233(n+1)`
-/

namespace A028234.P590847467489235385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A028233 (n + 1) : ℚ)

end

end A028234.P590847467489235385

/-! ## A028234.P4230456734515741849

`(n+1)/gcd(n+1, A068794(n+1))`
-/

namespace A028234.P4230456734515741849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A068794 (n + 1)) : ℚ)

end

end A028234.P4230456734515741849

/-! ## A028234.P9345937383018594012

`(n+1)/A020639(n+1)^A067029(n+1)`
-/

namespace A028234.P9345937383018594012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ) ^ (A067029 (n + 1) : ℤ)

end

end A028234.P9345937383018594012

/-! ## A028234.P13827810582571177806

`A302026(A302034(A302025(n+1)))`
-/

namespace A028234.P13827810582571177806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A302034 (A302025 (n + 1)).toNat).toNat

end

end A028234.P13827810582571177806

/-! ## A028234.P18038598777500022713

`A054531(A028233(n+1)+A000217(n))`
-/

namespace A028234.P18038598777500022713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A028233 (n + 1) + A000217 n).toNat

end

end A028234.P18038598777500022713

/-! ## A028234.P826379646278353515

`A032742(A242419(A243074(A242419(n+1))))`
-/

namespace A028234.P826379646278353515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A242419 (A243074 (A242419 (n + 1)).toNat).toNat).toNat

end

end A028234.P826379646278353515

/-! ## A028234.P6634109452198801292

`A153212(A153212((n+1)/A323130(n+1)))`
-/

namespace A028234.P6634109452198801292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (A153212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A323130 (n + 1) : ℚ))).toNat).toNat

end

end A028234.P6634109452198801292

/-! ## A028234.P15954656298467593285

`lcm(A006530(A183092(n+1)), A086767(n))`
-/

namespace A028234.P15954656298467593285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006530 (A183092 (n + 1)).toNat) (A086767 n)

end

end A028234.P15954656298467593285

/-!
# A028235: If n = Product (p_j^k_j), a(n) = numerator of Sum 1/p_j (the denominator of this sum is A007947).

The programs for A028235, the canonical program `A028235.P3234119567802931981` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028235 has offset 1).

The definition of A028235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A028235.P3234119567802931981

`A003415(A007947(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028235

/-- `A003415(A007947(n+1))` -/
def P3234119567802931981.Spec : Prop :=
  ∀ n, P3234119567802931981.a n = A028235 (n + 1)

theorem P3234119567802931981.correct : P3234119567802931981.Spec := by
  intro n
  simp only [A028235, Nat.add_sub_cancel]

end A028235

/-! ## A028235.P16068581228051723689

`∑{p}[n+1, (n+1)/#]/floor((n+1)/∏{p}[n+1, #])`
-/

namespace A028235.P16068581228051723689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)) / (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋ : ℚ)

end

end A028235.P16068581228051723689

namespace A028235

/-- `∑{p}[n+1, (n+1)/#]/floor((n+1)/∏{p}[n+1, #])` -/
def P16068581228051723689.Spec : Prop :=
  ∀ n, P16068581228051723689.a n = (A028235 (n + 1) : ℚ)

end A028235

/-! ## A028235.P15515015993166001058

`∑{p}[n+1, (n+1)/#]/ceil((n+1)/∏{p}[n+1, #])`
-/

namespace A028235.P15515015993166001058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)) / (⌈(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌉ : ℚ)

end

end A028235.P15515015993166001058

namespace A028235

/-- `∑{p}[n+1, (n+1)/#]/ceil((n+1)/∏{p}[n+1, #])` -/
def P15515015993166001058.Spec : Prop :=
  ∀ n, P15515015993166001058.a n = (A028235 (n + 1) : ℚ)

end A028235

/-! ## A028235.P18052888549979390698

`A003415(∏{p}[n+1, #])`
-/

namespace A028235.P18052888549979390698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P18052888549979390698

namespace A028235

/-- `A003415(∏{p}[n+1, #])` -/
def P18052888549979390698.Spec : Prop :=
  ∀ n, P18052888549979390698.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P10596977122277126358

`A066504(∏{p}[n+1, #])`
-/

namespace A028235.P10596977122277126358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P10596977122277126358

namespace A028235

/-- `A066504(∏{p}[n+1, #])` -/
def P10596977122277126358.Spec : Prop :=
  ∀ n, P10596977122277126358.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P10865128965289124581

`A069359(∏{p}[n+1, #])`
-/

namespace A028235.P10865128965289124581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P10865128965289124581

namespace A028235

/-- `A069359(∏{p}[n+1, #])` -/
def P10865128965289124581.Spec : Prop :=
  ∀ n, P10865128965289124581.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P6818160011056136893

`A083345(∏{p}[n+1, #])`
-/

namespace A028235.P6818160011056136893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P6818160011056136893

namespace A028235

/-- `A083345(∏{p}[n+1, #])` -/
def P6818160011056136893.Spec : Prop :=
  ∀ n, P6818160011056136893.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P8860585966723609312

`A095112(∏{p}[n+1, #])`
-/

namespace A028235.P8860585966723609312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095112 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P8860585966723609312

namespace A028235

/-- `A095112(∏{p}[n+1, #])` -/
def P8860585966723609312.Spec : Prop :=
  ∀ n, P8860585966723609312.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P15477249269599577987

`A340070(∏{p}[n+1, #])`
-/

namespace A028235.P15477249269599577987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P15477249269599577987

namespace A028235

/-- `A340070(∏{p}[n+1, #])` -/
def P15477249269599577987.Spec : Prop :=
  ∀ n, P15477249269599577987.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P11613137621706452059

`A342001(∏{p}[n+1, #])`
-/

namespace A028235.P11613137621706452059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P11613137621706452059

namespace A028235

/-- `A342001(∏{p}[n+1, #])` -/
def P11613137621706452059.Spec : Prop :=
  ∀ n, P11613137621706452059.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P13315896306336417844

`A345305(∏{p}[n+1, #])`
-/

namespace A028235.P13315896306336417844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345305 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P13315896306336417844

namespace A028235

/-- `A345305(∏{p}[n+1, #])` -/
def P13315896306336417844.Spec : Prop :=
  ∀ n, P13315896306336417844.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P14416394921420452176

`A345373(∏{p}[n+1, #])`
-/

namespace A028235.P14416394921420452176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345373 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P14416394921420452176

namespace A028235

/-- `A345373(∏{p}[n+1, #])` -/
def P14416394921420452176.Spec : Prop :=
  ∀ n, P14416394921420452176.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P11168464211968841558

`A348497(∏{p}[n+1, #])`
-/

namespace A028235.P11168464211968841558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P11168464211968841558

namespace A028235

/-- `A348497(∏{p}[n+1, #])` -/
def P11168464211968841558.Spec : Prop :=
  ∀ n, P11168464211968841558.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P11543401266847836265

`A348498(∏{p}[n+1, #])`
-/

namespace A028235.P11543401266847836265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348498 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P11543401266847836265

namespace A028235

/-- `A348498(∏{p}[n+1, #])` -/
def P11543401266847836265.Spec : Prop :=
  ∀ n, P11543401266847836265.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P664110451040190859

`A351573(∏{p}[n+1, #])`
-/

namespace A028235.P664110451040190859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351573 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P664110451040190859

namespace A028235

/-- `A351573(∏{p}[n+1, #])` -/
def P664110451040190859.Spec : Prop :=
  ∀ n, P664110451040190859.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P10746512120059943576

`A367202(∏{p}[n+1, #])`
-/

namespace A028235.P10746512120059943576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367202 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P10746512120059943576

namespace A028235

/-- `A367202(∏{p}[n+1, #])` -/
def P10746512120059943576.Spec : Prop :=
  ∀ n, P10746512120059943576.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P15399274110195794005

`A369865(∏{p}[n+1, #])`
-/

namespace A028235.P15399274110195794005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369865 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P15399274110195794005

namespace A028235

/-- `A369865(∏{p}[n+1, #])` -/
def P15399274110195794005.Spec : Prop :=
  ∀ n, P15399274110195794005.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P7848233893532767405

`A369915(∏{p}[n+1, #])`
-/

namespace A028235.P7848233893532767405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369915 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P7848233893532767405

namespace A028235

/-- `A369915(∏{p}[n+1, #])` -/
def P7848233893532767405.Spec : Prop :=
  ∀ n, P7848233893532767405.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P14491951173014022161

`A389454(∏{p}[n+1, #])`
-/

namespace A028235.P14491951173014022161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389454 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P14491951173014022161

namespace A028235

/-- `A389454(∏{p}[n+1, #])` -/
def P14491951173014022161.Spec : Prop :=
  ∀ n, P14491951173014022161.a n = A028235 (n + 1)

end A028235

/-! ## A028235.P5672111645781884534

`A396983(∏{p}[n+1, #])`
-/

namespace A028235.P5672111645781884534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396983 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A028235.P5672111645781884534

namespace A028235

/-- `A396983(∏{p}[n+1, #])` -/
def P5672111645781884534.Spec : Prop :=
  ∀ n, P5672111645781884534.a n = A028235 (n + 1)

end A028235

/-!
# A028236: If n = Product (p_j^k_j), a(n) = numerator of Sum 1/p_j^k_j.

The programs for A028236, there is no canonical definition to state claims against.
-/

/-! ## A028236.P8018136102750035247

`A066504(abs(1-n)+2)`
-/

namespace A028236.P8018136102750035247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (|1 - (n : ℤ)| + 2).toNat

end

end A028236.P8018136102750035247

/-! ## A028236.P18044486112553894738

`A066504(n+1)+A000007(n)`
-/

namespace A028236.P18044486112553894738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + A000007 n

end

end A028236.P18044486112553894738

/-! ## A028236.P9237318897171091766

`A066504(n+1)+val(A003627(n+1), 2)`
-/

namespace A028236.P9237318897171091766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + (SequenceMachineLib.valuation (A003627 (n + 1)).toNat 2 : ℤ)

end

end A028236.P9237318897171091766

/-! ## A028236.P128295554256409437

`A066504(n+1)+1-A001221(A000015(n+1))`
-/

namespace A028236.P128295554256409437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + (1 - A001221 (A000015 (n + 1)).toNat)

end

end A028236.P128295554256409437

/-! ## A028236.P15494505212274888486

`A066504(n+1)+1-A066504(A034444(n+1))`
-/

namespace A028236.P15494505212274888486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + (1 - A066504 (A034444 (n + 1)).toNat)

end

end A028236.P15494505212274888486

/-! ## A028236.P5958138118034834647

`A066504(n+1)+val(A000267(n+1), A003145(n+1))`
-/

namespace A028236.P5958138118034834647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + (SequenceMachineLib.valuation (A000267 (n + 1)).toNat (A003145 (n + 1)).toNat : ℤ)

end

end A028236.P5958138118034834647

/-! ## A028236.P10054892592869331862

`A066504(n+1)^A001221(A000961(n+1))`
-/

namespace A028236.P10054892592869331862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066504 (n + 1) : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A028236.P10054892592869331862

/-! ## A028236.P16020559710311341964

`A066504(n+1)+and(1, record[A000010(n+1)])`
-/

namespace A028236.P16020559710311341964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + Int.land 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A028236.P16020559710311341964

/-! ## A028236.P3698813073727852179

`A028310(A066504(n+1))`
-/

namespace A028236.P3698813073727852179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A066504 (n + 1)).toNat

end

end A028236.P3698813073727852179

/-! ## A028236.P16863256245523234226

`A254667(A066504(n+1)+1)-1`
-/

namespace A028236.P16863256245523234226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A066504 (n + 1) + 1).toNat - 1

end

end A028236.P16863256245523234226

/-! ## A028236.P17911913449970716756

`A066504(n+1)+and(1, A000010(A000217(n+1)))`
-/

namespace A028236.P17911913449970716756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + Int.land 1 (A000010 (A000217 (n + 1)).toNat)

end

end A028236.P17911913449970716756

/-! ## A028236.P12053080761934096640

`A066504(n+1)+and(1, A000010((n+1)²))`
-/

namespace A028236.P12053080761934096640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (n + 1) + Int.land 1 (A000010 ((n + 1) ^ 2))

end

end A028236.P12053080761934096640

/-! ## A028236.P12402790090892201347

`gcd(A066504(n+1), A336399(n+1))`
-/

namespace A028236.P12402790090892201347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066504 (n + 1)) (A336399 (n + 1))

end

end A028236.P12402790090892201347

/-! ## A028236.P9382660250770212303

`A000267(A066504(n+1)²)-A066504(n+1)`
-/

namespace A028236.P9382660250770212303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A066504 (n + 1) ^ 2).toNat - A066504 (n + 1)

end

end A028236.P9382660250770212303

/-! ## A028236.P17646641721829386777

`gcd(A066504(n+1), A067994(n))`
-/

namespace A028236.P17646641721829386777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066504 (n + 1)) (A067994 n)

end

end A028236.P17646641721829386777

/-!
# A028237: Numbers that are not the sum of 2 or more distinct positive squares.

The programs for A028237, there is no canonical definition to state claims against.
-/

/-! ## A028237.P6613671218445572176

`eq[2, or(2, A279360(n))]`
-/

namespace A028237.P6613671218445572176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A279360 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028237.P6613671218445572176

/-! ## A028237.P11099984983891903207

`lt[A242434(n)², n+1]`
-/

namespace A028237.P11099984983891903207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242434 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A028237.P11099984983891903207

/-! ## A028237.P11969755337014461015

`lt[A331844(n), atan(n+1)]`
-/

namespace A028237.P11969755337014461015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331844 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A028237.P11969755337014461015

/-! ## A028237.P9482569120209926362

`eq[0, A033985(n+1)]+1`
-/

namespace A028237.P9482569120209926362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028237.P9482569120209926362

/-! ## A028237.P1818466153182931953

`lt[A242434(n+1), 2]+1`
-/

namespace A028237.P1818466153182931953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242434 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028237.P1818466153182931953

/-!
# A028239: Weight distribution of (64, 2^52, 6) Preparata code.

The programs for A028239, there is no canonical definition to state claims against.
-/

/-! ## A028239.P7827629284318187008

`A046081(A046077(n+1))*A109159(n)`
-/

namespace A028239.P7827629284318187008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (A046077 (n + 1)).toNat * A109159 n

end

end A028239.P7827629284318187008

/-! ## A028239.P11740445783654502589

`A000120(A199296(3*n+4))*A109159(n)`
-/

namespace A028239.P11740445783654502589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A199296 (3 * n + 4)).toNat * A109159 n

end

end A028239.P11740445783654502589

/-!
# A028240: Weight distribution of (256,2^16,120) Kerdock code.

The programs for A028240, there is no canonical definition to state claims against.
-/

/-! ## A028240.P335329162395309203

`(2-A210709(n))*A109151(n)`
-/

namespace A028240.P335329162395309203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A210709 n) * A109151 n

end

end A028240.P335329162395309203

/-! ## A028240.P15034239316222519909

`A000032(A210709(n))*A109151(n)`
-/

namespace A028240.P15034239316222519909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A210709 n).toNat * A109151 n

end

end A028240.P15034239316222519909

/-! ## A028240.P16579237518738475808

`A109151(n)*A336041(A109163(n+1))`
-/

namespace A028240.P16579237518738475808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109151 n * A336041 (A109163 (n + 1)).toNat

end

end A028240.P16579237518738475808

/-! ## A028240.P17537100822817585367

`A109151(n)*A276327(A183253(n+1))`
-/

namespace A028240.P17537100822817585367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109151 n * A276327 (A183253 (n + 1)).toNat

end

end A028240.P17537100822817585367

/-!
# A028241: Weight distribution of (256,2^240,6) Preparata code.

The programs for A028241, there is no canonical definition to state claims against.
-/

/-! ## A028241.P18178048811271330380

`A109160(n)*A146089(A124492(n+1))`
-/

namespace A028241.P18178048811271330380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109160 n * A146089 (A124492 (n + 1)).toNat

end

end A028241.P18178048811271330380

/-!
# A028242: Follow n+1 by n. Also (essentially) Molien series of 2-dimensional quaternion group Q_8.

The programs for A028242, the canonical program `A028242.P334475472552892041` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028242 has offset 0).

The definition of A028242 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A028242.anchor (n : ℕ) : A028242 n = ((if n % 2 = 0 then n / 2 + 1 else n / 2 : ℕ) : ℤ)` in `Proof.A028.A028242`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028242.P334475472552892041

`n-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A028242

/-- `n-a(n-1)` -/
def P334475472552892041.Spec : Prop :=
  ∀ n, P334475472552892041.a n = A028242 n

theorem P334475472552892041.correct : P334475472552892041.Spec := by
  intro n
  simp only [A028242]

end A028242

/-! ## A028242.P4742869597404286703

`3*floor(n/2)-n+1`
-/

namespace A028242.P4742869597404286703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 2⌋ - (n : ℤ) + 1

end

end A028242.P4742869597404286703

namespace A028242

/-- `3*floor(n/2)-n+1` -/
def P4742869597404286703.Spec : Prop :=
  ∀ n, P4742869597404286703.a n = A028242 n

end A028242

/-! ## A028242.P3873923763652746857

`ceil(xor(1, n)/2)`
-/

namespace A028242.P3873923763652746857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉

end

end A028242.P3873923763652746857

namespace A028242

/-- `ceil(xor(1, n)/2)` -/
def P3873923763652746857.Spec : Prop :=
  ∀ n, P3873923763652746857.a n = A028242 n

end A028242

/-! ## A028242.P13251419059653222239

`round(xor(1, n)/2)`
-/

namespace A028242.P13251419059653222239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)

end

end A028242.P13251419059653222239

namespace A028242

/-- `round(xor(1, n)/2)` -/
def P13251419059653222239.Spec : Prop :=
  ∀ n, P13251419059653222239.a n = A028242 n

end A028242

/-! ## A028242.P10726822283065174985

`abs(Δ[lcm(2, n)/2])`
-/

namespace A028242.P10726822283065174985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A028242.P10726822283065174985

namespace A028242

/-- `abs(Δ[lcm(2, n)/2])` -/
def P10726822283065174985.Spec : Prop :=
  ∀ n, P10726822283065174985.a n = (A028242 n : ℚ)

end A028242

/-! ## A028242.P9066098907456524522

`floor((xor(1, n)+1)/2)`
-/

namespace A028242.P9066098907456524522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 n + 1 : ℚ) / 2⌋

end

end A028242.P9066098907456524522

namespace A028242

/-- `floor((xor(1, n)+1)/2)` -/
def P9066098907456524522.Spec : Prop :=
  ∀ n, P9066098907456524522.a n = A028242 n

end A028242

/-! ## A028242.P15014077961029734367

`floor(or(1, n)-n/2)`
-/

namespace A028242.P15014077961029734367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n : ℚ) - (n : ℚ) / 2⌋

end

end A028242.P15014077961029734367

namespace A028242

/-- `floor(or(1, n)-n/2)` -/
def P15014077961029734367.Spec : Prop :=
  ∀ n, P15014077961029734367.a n = A028242 n

end A028242

/-! ## A028242.P3637360023711638898

`floor(-(xor(n, -2)/2))`
-/

namespace A028242.P3637360023711638898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.xor (n : ℤ) (-2) : ℚ) / 2)⌋

end

end A028242.P3637360023711638898

namespace A028242

/-- `floor(-(xor(n, -2)/2))` -/
def P3637360023711638898.Spec : Prop :=
  ∀ n, P3637360023711638898.a n = A028242 n

end A028242

/-! ## A028242.P14313780465722718454

`floor(sinh(log(xor(1, n+2))))`
-/

namespace A028242.P14313780465722718454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.xor 1 (n + 2) : ℝ))⌋

end

end A028242.P14313780465722718454

namespace A028242

/-- `floor(sinh(log(xor(1, n+2))))` -/
def P14313780465722718454.Spec : Prop :=
  ∀ n, P14313780465722718454.a n = A028242 n

end A028242

/-! ## A028242.P11952333688481562973

`∑[∑[ogf((1-x+x^2)/(1+x))]]`
-/

namespace A028242.P11952333688481562973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028242.P11952333688481562973

namespace A028242

/-- `∑[∑[ogf((1-x+x^2)/(1+x))]]` -/
def P11952333688481562973.Spec : Prop :=
  ∀ n, P11952333688481562973.a n = A028242 n

end A028242

/-! ## A028242.P283475945189151229

`ogf((1-x+x^2)/(1-x-x^2+x^3))`
-/

namespace A028242.P283475945189151229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -1, -1, 1] n

end

end A028242.P283475945189151229

namespace A028242

/-- `ogf((1-x+x^2)/(1-x-x^2+x^3))` -/
def P283475945189151229.Spec : Prop :=
  ∀ n, P283475945189151229.a n = A028242 n

end A028242

/-! ## A028242.P9440229899806814012

`(gcd(2, n)²-2+n)/2`
-/

namespace A028242.P9440229899806814012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n ^ 2 : ℤ) - 2 + (n : ℤ) : ℚ) / 2

end

end A028242.P9440229899806814012

namespace A028242

/-- `(gcd(2, n)²-2+n)/2` -/
def P9440229899806814012.Spec : Prop :=
  ∀ n, P9440229899806814012.a n = (A028242 n : ℚ)

end A028242

/-! ## A028242.P16737021925211566734

`floor((n+1)%2+n/2)`
-/

namespace A028242.P16737021925211566734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) % 2 : ℕ) : ℚ) + (n : ℚ) / 2⌋

end

end A028242.P16737021925211566734

namespace A028242

/-- `floor((n+1)%2+n/2)` -/
def P16737021925211566734.Spec : Prop :=
  ∀ n, P16737021925211566734.a n = A028242 n

end A028242

/-! ## A028242.P7045013380004142413

`ceil((n+1)/2-n%2)`
-/

namespace A028242.P7045013380004142413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 - ((n % 2 : ℕ) : ℚ)⌉

end

end A028242.P7045013380004142413

namespace A028242

/-- `ceil((n+1)/2-n%2)` -/
def P7045013380004142413.Spec : Prop :=
  ∀ n, P7045013380004142413.a n = A028242 n

end A028242

/-! ## A028242.P542351600811514954

`floor(and(1, n+1)+n/2)`
-/

namespace A028242.P542351600811514954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A028242.P542351600811514954

namespace A028242

/-- `floor(and(1, n+1)+n/2)` -/
def P542351600811514954.Spec : Prop :=
  ∀ n, P542351600811514954.a n = A028242 n

end A028242

/-! ## A028242.P4388847551608869371

`ceil((n+1)/2-and(1, n))`
-/

namespace A028242.P4388847551608869371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 - (Nat.land 1 n : ℚ)⌉

end

end A028242.P4388847551608869371

namespace A028242

/-- `ceil((n+1)/2-and(1, n))` -/
def P4388847551608869371.Spec : Prop :=
  ∀ n, P4388847551608869371.a n = A028242 n

end A028242

/-! ## A028242.P166044122879952913

`round((n+1)/2-and(1, n))`
-/

namespace A028242.P166044122879952913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2 - (Nat.land 1 n : ℚ))

end

end A028242.P166044122879952913

namespace A028242

/-- `round((n+1)/2-and(1, n))` -/
def P166044122879952913.Spec : Prop :=
  ∀ n, P166044122879952913.a n = A028242 n

end A028242

/-! ## A028242.P14291320699873281201

`round(or(1, n)-(n+1)/2)`
-/

namespace A028242.P14291320699873281201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n : ℚ) - (n + 1 : ℚ) / 2)

end

end A028242.P14291320699873281201

namespace A028242

/-- `round(or(1, n)-(n+1)/2)` -/
def P14291320699873281201.Spec : Prop :=
  ∀ n, P14291320699873281201.a n = A028242 n

end A028242

/-! ## A028242.P14486509976565021842

`(gcd(4, n*n)-2+n)/2`
-/

namespace A028242.P14486509976565021842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 4 (n * n) : ℤ) - 2 + (n : ℤ) : ℚ) / 2

end

end A028242.P14486509976565021842

namespace A028242

/-- `(gcd(4, n*n)-2+n)/2` -/
def P14486509976565021842.Spec : Prop :=
  ∀ n, P14486509976565021842.a n = (A028242 n : ℚ)

end A028242

/-! ## A028242.P17781015934061719025

`round(or(1, n)²/(2*n+1))`
-/

namespace A028242.P17781015934061719025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 n ^ 2 : ℚ) / (2 * n + 1 : ℚ))

end

end A028242.P17781015934061719025

namespace A028242

/-- `round(or(1, n)²/(2*n+1))` -/
def P17781015934061719025.Spec : Prop :=
  ∀ n, P17781015934061719025.a n = A028242 n

end A028242

/-!
# A028243: a(n) = 3^(n-1) - 2^n + 1 (essentially Stirling numbers of second kind).

The programs for A028243, the canonical program `A028243.P7259272612448304247` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028243 has offset 1).

The definition of A028243 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2^(n+1)+1` (program `A028243.P7259272612448304247`, by `A028243.P7259272612448304247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028243.P7259272612448304247

`3^n-2^(n+1)+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028243

/-- `3^n-2^(n+1)+1` -/
def P7259272612448304247.Spec : Prop :=
  ∀ n, P7259272612448304247.a n = A028243 (n + 1)

theorem P7259272612448304247.correct : P7259272612448304247.Spec := by
  intro n
  simp only [A028243, Nat.add_sub_cancel]

end A028243

/-! ## A028243.P2398095589177876925

`2*A000392(n+1)`
-/

namespace A028243.P2398095589177876925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000392 (n + 1)

end

end A028243.P2398095589177876925

namespace A028243

/-- `2*A000392(n+1)` -/
def P2398095589177876925.Spec : Prop :=
  ∀ n, P2398095589177876925.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P761229417779687607

`∑[ogf(2x^2/(1-5x+6x^2))]`
-/

namespace A028243.P761229417779687607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028243.P761229417779687607

namespace A028243

/-- `∑[ogf(2x^2/(1-5x+6x^2))]` -/
def P761229417779687607.Spec : Prop :=
  ∀ n, P761229417779687607.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P5142940794160937904

`xor(1, A101052(n))`
-/

namespace A028243.P5142940794160937904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A101052 n)

end

end A028243.P5142940794160937904

namespace A028243

/-- `xor(1, A101052(n))` -/
def P5142940794160937904.Spec : Prop :=
  ∀ n, P5142940794160937904.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P1580642680067988588

`∑[A304973(2*n)]`
-/

namespace A028243.P1580642680067988588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028243.P1580642680067988588

namespace A028243

/-- `∑[A304973(2*n)]` -/
def P1580642680067988588.Spec : Prop :=
  ∀ n, P1580642680067988588.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P10341714820574635848

`2*(A134063(n)-1)`
-/

namespace A028243.P10341714820574635848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134063 n - 1)

end

end A028243.P10341714820574635848

namespace A028243

/-- `2*(A134063(n)-1)` -/
def P10341714820574635848.Spec : Prop :=
  ∀ n, P10341714820574635848.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P1489832489016246077

`2*A056509(Δ[n²])`
-/

namespace A028243.P1489832489016246077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056509 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A028243.P1489832489016246077

namespace A028243

/-- `2*A056509(Δ[n²])` -/
def P1489832489016246077.Spec : Prop :=
  ∀ n, P1489832489016246077.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P12126683518583924538

`Δ[2*∑[A000392(n)]]`
-/

namespace A028243.P12126683518583924538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028243.P12126683518583924538

namespace A028243

/-- `Δ[2*∑[A000392(n)]]` -/
def P12126683518583924538.Spec : Prop :=
  ∀ n, P12126683518583924538.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P13810634820772215376

`∑[A025192(n)-2^n]`
-/

namespace A028243.P13810634820772215376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028243.P13810634820772215376

namespace A028243

/-- `∑[A025192(n)-2^n]` -/
def P13810634820772215376.Spec : Prop :=
  ∀ n, P13810634820772215376.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P13680889376895678800

`2/3*A094033(n+1)`
-/

namespace A028243.P13680889376895678800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A094033 (n + 1) : ℚ)

end

end A028243.P13680889376895678800

namespace A028243

/-- `2/3*A094033(n+1)` -/
def P13680889376895678800.Spec : Prop :=
  ∀ n, P13680889376895678800.a n = (A028243 (n + 1) : ℚ)

end A028243

/-! ## A028243.P2984698465392342712

`abs(A001117(n)+A000918(n))`
-/

namespace A028243.P2984698465392342712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001117 n + A000918 n|

end

end A028243.P2984698465392342712

namespace A028243

/-- `abs(A001117(n)+A000918(n))` -/
def P2984698465392342712.Spec : Prop :=
  ∀ n, P2984698465392342712.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P7796983193690697762

`abs(A000225(n)-A001047(n))`
-/

namespace A028243.P7796983193690697762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A001047 n|

end

end A028243.P7796983193690697762

namespace A028243

/-- `abs(A000225(n)-A001047(n))` -/
def P7796983193690697762.Spec : Prop :=
  ∀ n, P7796983193690697762.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P2535535618922117152

`Δ[A003462(n)-A132753(n)]`
-/

namespace A028243.P2535535618922117152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A132753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028243.P2535535618922117152

namespace A028243

/-- `Δ[A003462(n)-A132753(n)]` -/
def P2535535618922117152.Spec : Prop :=
  ∀ n, P2535535618922117152.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P15760061873011102523

`Δ[A007051(n)-A132753(n)]`
-/

namespace A028243.P15760061873011102523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A132753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028243.P15760061873011102523

namespace A028243

/-- `Δ[A007051(n)-A132753(n)]` -/
def P15760061873011102523.Spec : Prop :=
  ∀ n, P15760061873011102523.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P5941060032800861205

`2*(A003462(n)-A000225(n))`
-/

namespace A028243.P5941060032800861205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 n - A000225 n)

end

end A028243.P5941060032800861205

namespace A028243

/-- `2*(A003462(n)-A000225(n))` -/
def P5941060032800861205.Spec : Prop :=
  ∀ n, P5941060032800861205.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P4137707571190143582

`2*(A007051(n)-A000079(n))`
-/

namespace A028243.P4137707571190143582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007051 n - A000079 n)

end

end A028243.P4137707571190143582

namespace A028243

/-- `2*(A007051(n)-A000079(n))` -/
def P4137707571190143582.Spec : Prop :=
  ∀ n, P4137707571190143582.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P16737380633819868318

`abs(A000225(n+1)-A000244(n))`
-/

namespace A028243.P16737380633819868318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (n + 1) - A000244 n|

end

end A028243.P16737380633819868318

namespace A028243

/-- `abs(A000225(n+1)-A000244(n))` -/
def P16737380633819868318.Spec : Prop :=
  ∀ n, P16737380633819868318.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P7548322176393318120

`abs(A000079(n+1)-A034472(n))`
-/

namespace A028243.P7548322176393318120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A034472 n|

end

end A028243.P7548322176393318120

namespace A028243

/-- `abs(A000079(n+1)-A034472(n))` -/
def P7548322176393318120.Spec : Prop :=
  ∀ n, P7548322176393318120.a n = A028243 (n + 1)

end A028243

/-! ## A028243.P9372492906798636040

`A260217(n+1)/2`
-/

namespace A028243.P9372492906798636040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260217 (n + 1) : ℚ) / 2

end

end A028243.P9372492906798636040

namespace A028243

/-- `A260217(n+1)/2` -/
def P9372492906798636040.Spec : Prop :=
  ∀ n, P9372492906798636040.a n = (A028243 (n + 1) : ℚ)

theorem P9372492906798636040.correct : P9372492906798636040.Spec := by
  intro n
  simp only [A028243, Nat.add_sub_cancel, A028243.P9372492906798636040.a, A028243.P7259272612448304247.a, A260217, A260217.P18320538759642150908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028243

/-! ## A028243.P280111408623010481

`A001117(n+1)/3`
-/

namespace A028243.P280111408623010481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001117 (n + 1) : ℚ) / 3

end

end A028243.P280111408623010481

namespace A028243

/-- `A001117(n+1)/3` -/
def P280111408623010481.Spec : Prop :=
  ∀ n, P280111408623010481.a n = (A028243 (n + 1) : ℚ)

theorem P280111408623010481.correct : P280111408623010481.Spec := by
  intro n
  simp only [A028243, Nat.add_sub_cancel, A028243.P280111408623010481.a, A028243.P7259272612448304247.a, A001117, A001117.P5586515972310678558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028243

/-!
# A028244: a(n) = 4^(n-1) - 3*3^(n-1) + 3*2^(n-1) - 1 (essentially Stirling numbers of second kind).

The programs for A028244, the canonical program `A028244.P5102568974761468582` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028244 has offset 1).

The definition of A028244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-3*3^n+3*2^n-1` (program `A028244.P5102568974761468582`, by `A028244.P5102568974761468582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028244.P5102568974761468582

`4^n-3*3^n+3*2^n-1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028244

/-- `4^n-3*3^n+3*2^n-1` -/
def P5102568974761468582.Spec : Prop :=
  ∀ n, P5102568974761468582.a n = A028244 (n + 1)

theorem P5102568974761468582.correct : P5102568974761468582.Spec := by
  intro n
  simp only [A028244, Nat.add_sub_cancel]

end A028244

/-! ## A028244.P12623679519456827637

`2*A032263(n+1)`
-/

namespace A028244.P12623679519456827637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032263 (n + 1)

end

end A028244.P12623679519456827637

namespace A028244

/-- `2*A032263(n+1)` -/
def P12623679519456827637.Spec : Prop :=
  ∀ n, P12623679519456827637.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P2074802175112555980

`6*A056473(2*(n+1))`
-/

namespace A028244.P2074802175112555980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056473 (2 * (n + 1))

end

end A028244.P2074802175112555980

namespace A028244

/-- `6*A056473(2*(n+1))` -/
def P2074802175112555980.Spec : Prop :=
  ∀ n, P2074802175112555980.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P15529585742128112007

`6*A056510(2*n+1)`
-/

namespace A028244.P15529585742128112007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056510 (2 * n + 1)

end

end A028244.P15529585742128112007

namespace A028244

/-- `6*A056510(2*n+1)` -/
def P15529585742128112007.Spec : Prop :=
  ∀ n, P15529585742128112007.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P3685043761975194552

`2*(A134168(n)-3^n)`
-/

namespace A028244.P3685043761975194552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134168 n - (3 ^ n : ℤ))

end

end A028244.P3685043761975194552

namespace A028244

/-- `2*(A134168(n)-3^n)` -/
def P3685043761975194552.Spec : Prop :=
  ∀ n, P3685043761975194552.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P7112264583247897464

`2*3*A056473(Δ[n²])`
-/

namespace A028244.P7112264583247897464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A056473 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A028244.P7112264583247897464

namespace A028244

/-- `2*3*A056473(Δ[n²])` -/
def P7112264583247897464.Spec : Prop :=
  ∀ n, P7112264583247897464.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P15812397339178967365

`xor(A024036(n), A210448(n))`
-/

namespace A028244.P15812397339178967365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024036 n) (A210448 n)

end

end A028244.P15812397339178967365

namespace A028244

/-- `xor(A024036(n), A210448(n))` -/
def P15812397339178967365.Spec : Prop :=
  ∀ n, P15812397339178967365.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P13515930752545331335

`2*(A053154(n)-A001047(n))`
-/

namespace A028244.P13515930752545331335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A053154 n - A001047 n)

end

end A028244.P13515930752545331335

namespace A028244

/-- `2*(A053154(n)-A001047(n))` -/
def P13515930752545331335.Spec : Prop :=
  ∀ n, P13515930752545331335.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P4017329269779806186

`2*(A084869(n)-A007051(n))`
-/

namespace A028244.P4017329269779806186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A084869 n - A007051 n)

end

end A028244.P4017329269779806186

namespace A028244

/-- `2*(A084869(n)-A007051(n))` -/
def P4017329269779806186.Spec : Prop :=
  ∀ n, P4017329269779806186.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P3321302349909172882

`2*(A134019(n)-A000079(n))`
-/

namespace A028244.P3321302349909172882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134019 n - A000079 n)

end

end A028244.P3321302349909172882

namespace A028244

/-- `2*(A134019(n)-A000079(n))` -/
def P3321302349909172882.Spec : Prop :=
  ∀ n, P3321302349909172882.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P10201033187018200874

`2*(A134018(n)-A000225(n))`
-/

namespace A028244.P10201033187018200874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134018 n - A000225 n)

end

end A028244.P10201033187018200874

namespace A028244

/-- `2*(A134018(n)-A000225(n))` -/
def P10201033187018200874.Spec : Prop :=
  ∀ n, P10201033187018200874.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P12443818845656280471

`2*(A133789(n)-A003462(n))`
-/

namespace A028244.P12443818845656280471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133789 n - A003462 n)

end

end A028244.P12443818845656280471

namespace A028244

/-- `2*(A133789(n)-A003462(n))` -/
def P12443818845656280471.Spec : Prop :=
  ∀ n, P12443818845656280471.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P6695151535894459409

`2*(A134064(n)-A083323(n))`
-/

namespace A028244.P6695151535894459409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134064 n - A083323 n)

end

end A028244.P6695151535894459409

namespace A028244

/-- `2*(A134064(n)-A083323(n))` -/
def P6695151535894459409.Spec : Prop :=
  ∀ n, P6695151535894459409.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P18197781872394540229

`2*(A092880(n)-A134064(n))`
-/

namespace A028244.P18197781872394540229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092880 n - A134064 n)

end

end A028244.P18197781872394540229

namespace A028244

/-- `2*(A092880(n)-A134064(n))` -/
def P18197781872394540229.Spec : Prop :=
  ∀ n, P18197781872394540229.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P14883303085968346811

`2*(A134165(n)-A094374(n))`
-/

namespace A028244.P14883303085968346811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134165 n - A094374 n)

end

end A028244.P14883303085968346811

namespace A028244

/-- `2*(A134165(n)-A094374(n))` -/
def P14883303085968346811.Spec : Prop :=
  ∀ n, P14883303085968346811.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P1216307429311568332

`2*(A134045(n)-A126646(n))`
-/

namespace A028244.P1216307429311568332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A134045 n - A126646 n)

end

end A028244.P1216307429311568332

namespace A028244

/-- `2*(A134045(n)-A126646(n))` -/
def P1216307429311568332.Spec : Prop :=
  ∀ n, P1216307429311568332.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P9384993547428940922

`3*(A002450(n)-A001047(n))`
-/

namespace A028244.P9384993547428940922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A002450 n - A001047 n)

end

end A028244.P9384993547428940922

namespace A028244

/-- `3*(A002450(n)-A001047(n))` -/
def P9384993547428940922.Spec : Prop :=
  ∀ n, P9384993547428940922.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P1734185166316265687

`6*(A007581(n)-A007051(n))`
-/

namespace A028244.P1734185166316265687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A007581 n - A007051 n)

end

end A028244.P1734185166316265687

namespace A028244

/-- `6*(A007581(n)-A007051(n))` -/
def P1734185166316265687.Spec : Prop :=
  ∀ n, P1734185166316265687.a n = A028244 (n + 1)

end A028244

/-! ## A028244.P11412926714960959937

`lcm(A010711(n), A032263(n+1))`
-/

namespace A028244.P11412926714960959937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010711 n) (A032263 (n + 1))

end

end A028244.P11412926714960959937

namespace A028244

/-- `lcm(A010711(n), A032263(n+1))` -/
def P11412926714960959937.Spec : Prop :=
  ∀ n, (P11412926714960959937.a n : ℤ) = A028244 (n + 1)

end A028244

/-! ## A028244.P1787560031040150271

`2*(A007582(n)-A053156(n+1))`
-/

namespace A028244.P1787560031040150271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007582 n - A053156 (n + 1))

end

end A028244.P1787560031040150271

namespace A028244

/-- `2*(A007582(n)-A053156(n+1))` -/
def P1787560031040150271.Spec : Prop :=
  ∀ n, P1787560031040150271.a n = A028244 (n + 1)

end A028244

/-!
# A028245: a(n) = 5^(n-1) - 4*4^(n-1) + 6*3^(n-1) - 4*2^(n-1) + 1 (essentially Stirling numbers of second kind).

The programs for A028245, the canonical program `A028245.P5131811478861519263` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028245 has offset 1).

The definition of A028245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4*4^n+6*3^n-4*2^n+1` (program `A028245.P5131811478861519263`, by `A028245.P5131811478861519263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028245.P5131811478861519263

`5^n-4*4^n+6*3^n-4*2^n+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028245

/-- `5^n-4*4^n+6*3^n-4*2^n+1` -/
def P5131811478861519263.Spec : Prop :=
  ∀ n, P5131811478861519263.a n = A028245 (n + 1)

theorem P5131811478861519263.correct : P5131811478861519263.Spec := by
  intro n
  simp only [A028245, Nat.add_sub_cancel]

end A028245

/-! ## A028245.P17945522424710585407

`24*A056511(2*n+1)`
-/

namespace A028245.P17945522424710585407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A056511 (2 * n + 1)

end

end A028245.P17945522424710585407

namespace A028245

/-- `24*A056511(2*n+1)` -/
def P17945522424710585407.Spec : Prop :=
  ∀ n, P17945522424710585407.a n = A028245 (n + 1)

end A028245

/-! ## A028245.P12719429936446447401

`A001118(n+1)/5`
-/

namespace A028245.P12719429936446447401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001118 (n + 1) : ℚ) / 5

end

end A028245.P12719429936446447401

namespace A028245

/-- `A001118(n+1)/5` -/
def P12719429936446447401.Spec : Prop :=
  ∀ n, P12719429936446447401.a n = (A028245 (n + 1) : ℚ)

end A028245

/-! ## A028245.P12736929464345203687

`A056456(2*(n+1))/5`
-/

namespace A028245.P12736929464345203687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056456 (2 * (n + 1)) : ℚ) / 5

end

end A028245.P12736929464345203687

namespace A028245

/-- `A056456(2*(n+1))/5` -/
def P12736929464345203687.Spec : Prop :=
  ∀ n, P12736929464345203687.a n = (A028245 (n + 1) : ℚ)

end A028245

/-! ## A028245.P13899088702349267349

`A056491(2*n+1)/5`
-/

namespace A028245.P13899088702349267349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056491 (2 * n + 1) : ℚ) / 5

end

end A028245.P13899088702349267349

namespace A028245

/-- `A056491(2*n+1)/5` -/
def P13899088702349267349.Spec : Prop :=
  ∀ n, P13899088702349267349.a n = (A028245 (n + 1) : ℚ)

end A028245

/-!
# A028246: Triangular array a(n,k) = (1/k)*Sum_{i=0..k} (-1)^(k-i)*binomial(k,i)*i^n; n >= 1, 1 <= k <= n, read by rows.

The programs for A028246, the canonical program `A028246.P4827826611868851436` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028246 has offset 1).

The definition of A028246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028246.P4827826611868851436

`(col(n)+1)*T(n-1,k)+col(n)*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028246

/-- `(col(n)+1)*T(n-1,k)+col(n)*T(n-1,k-1)` -/
def P4827826611868851436.Spec : Prop :=
  ∀ n, (P4827826611868851436.a n : ℤ) = A028246 (n + 1)

theorem P4827826611868851436.correct : P4827826611868851436.Spec := by
  intro n
  simp only [A028246, Nat.add_sub_cancel]

end A028246

/-! ## A028246.P13223505250531609510

`abs(A163626(n))`
-/

namespace A028246.P13223505250531609510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163626 n|

end

end A028246.P13223505250531609510

namespace A028246

/-- `abs(A163626(n))` -/
def P13223505250531609510.Spec : Prop :=
  ∀ n, P13223505250531609510.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P818958769398530147

`A142071(comp[∑[n]])`
-/

namespace A028246.P818958769398530147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A028246.P818958769398530147

namespace A028246

/-- `A142071(comp[∑[n]])` -/
def P818958769398530147.Spec : Prop :=
  ∀ n, P818958769398530147.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P9353083393775155294

`gcd(A000038(n), A163626(n))`
-/

namespace A028246.P9353083393775155294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A163626 n)

end

end A028246.P9353083393775155294

namespace A028246

/-- `gcd(A000038(n), A163626(n))` -/
def P9353083393775155294.Spec : Prop :=
  ∀ n, (P9353083393775155294.a n : ℤ) = A028246 (n + 1)

end A028246

/-! ## A028246.P13054342313337896250

`lcm(A020985(n), A163626(n))`
-/

namespace A028246.P13054342313337896250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A163626 n)

end

end A028246.P13054342313337896250

namespace A028246

/-- `lcm(A020985(n), A163626(n))` -/
def P13054342313337896250.Spec : Prop :=
  ∀ n, (P13054342313337896250.a n : ℤ) = A028246 (n + 1)

end A028246

/-! ## A028246.P18118380453381196732

`A131689(n+1)+A131689(n)`
-/

namespace A028246.P18118380453381196732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (n + 1) + A131689 n

end

end A028246.P18118380453381196732

namespace A028246

/-- `A131689(n+1)+A131689(n)` -/
def P18118380453381196732.Spec : Prop :=
  ∀ n, P18118380453381196732.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P2085816407030589680

`A008277(n+1)*A233543(n)`
-/

namespace A028246.P2085816407030589680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A233543 n

end

end A028246.P2085816407030589680

namespace A028246

/-- `A008277(n+1)*A233543(n)` -/
def P2085816407030589680.Spec : Prop :=
  ∀ n, P2085816407030589680.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P9583561049647755182

`lcm(-A163626(n), A160322(2*(n+2)))`
-/

namespace A028246.P9583561049647755182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A163626 n) (A160322 (2 * (n + 2)))

end

end A028246.P9583561049647755182

namespace A028246

/-- `lcm(-A163626(n), A160322(2*(n+2)))` -/
def P9583561049647755182.Spec : Prop :=
  ∀ n, (P9583561049647755182.a n : ℤ) = A028246 (n + 1)

end A028246

/-! ## A028246.P8154219180403420202

`A033999(n)²*A142071(A014132(n+1))`
-/

namespace A028246.P8154219180403420202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A142071 (A014132 (n + 1)).toNat

end

end A028246.P8154219180403420202

namespace A028246

/-- `A033999(n)²*A142071(A014132(n+1))` -/
def P8154219180403420202.Spec : Prop :=
  ∀ n, P8154219180403420202.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P10755517800560671642

`A008277(n+1)/A007318(n)*A008279(n)`
-/

namespace A028246.P10755517800560671642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A007318 n : ℚ) * (A008279 n : ℚ)

end

end A028246.P10755517800560671642

namespace A028246

/-- `A008277(n+1)/A007318(n)*A008279(n)` -/
def P10755517800560671642.Spec : Prop :=
  ∀ n, P10755517800560671642.a n = (A028246 (n + 1) : ℚ)

end A028246

/-! ## A028246.P6943553806185364703

`A008277(n+1)/A038207(n)*A090802(n)`
-/

namespace A028246.P6943553806185364703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A038207 n : ℚ) * (A090802 n : ℚ)

end

end A028246.P6943553806185364703

namespace A028246

/-- `A008277(n+1)/A038207(n)*A090802(n)` -/
def P6943553806185364703.Spec : Prop :=
  ∀ n, P6943553806185364703.a n = (A028246 (n + 1) : ℚ)

end A028246

/-! ## A028246.P7829244108628149778

`abs(Δ[A278075(n)])`
-/

namespace A028246.P7829244108628149778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A028246.P7829244108628149778

namespace A028246

/-- `abs(Δ[A278075(n)])` -/
def P7829244108628149778.Spec : Prop :=
  ∀ n, P7829244108628149778.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P14808210981819192766

`abs(A278075(n+1)-A278075(n))`
-/

namespace A028246.P14808210981819192766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A278075 (n + 1) - A278075 n|

end

end A028246.P14808210981819192766

namespace A028246

/-- `abs(A278075(n+1)-A278075(n))` -/
def P14808210981819192766.Spec : Prop :=
  ∀ n, P14808210981819192766.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P9608538176413485838

`A075263(n)/A130850(n)*A163626(n)`
-/

namespace A028246.P9608538176413485838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075263 n : ℚ) / (A130850 n : ℚ) * (A163626 n : ℚ)

end

end A028246.P9608538176413485838

namespace A028246

/-- `A075263(n)/A130850(n)*A163626(n)` -/
def P9608538176413485838.Spec : Prop :=
  ∀ n, P9608538176413485838.a n = (A028246 (n + 1) : ℚ)

end A028246

/-! ## A028246.P1722293090257405803

`A130850(A061579(n))`
-/

namespace A028246.P1722293090257405803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130850 (A061579 n).toNat

end

end A028246.P1722293090257405803

namespace A028246

/-- `A130850(A061579(n))` -/
def P1722293090257405803.Spec : Prop :=
  ∀ n, P1722293090257405803.a n = A028246 (n + 1)

end A028246

/-! ## A028246.P1257029258419529792

`A019538(n+1)/A002260(n+1)`
-/

namespace A028246.P1257029258419529792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A028246.P1257029258419529792

namespace A028246

/-- `A019538(n+1)/A002260(n+1)` -/
def P1257029258419529792.Spec : Prop :=
  ∀ n, P1257029258419529792.a n = (A028246 (n + 1) : ℚ)

end A028246

/-! ## A028246.P17457337079084265832

`A019538(n+1)/(A002262(n)+1)`
-/

namespace A028246.P17457337079084265832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A028246.P17457337079084265832

namespace A028246

/-- `A019538(n+1)/(A002262(n)+1)` -/
def P17457337079084265832.Spec : Prop :=
  ∀ n, P17457337079084265832.a n = (A028246 (n + 1) : ℚ)

end A028246

/-! ## A028246.P18409460297180658018

`A099394(n)/A262616(n)`
-/

namespace A028246.P18409460297180658018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099394 n : ℚ) / (A262616 n : ℚ)

end

end A028246.P18409460297180658018

namespace A028246

/-- `A099394(n)/A262616(n)` -/
def P18409460297180658018.Spec : Prop :=
  ∀ n, P18409460297180658018.a n = (A028246 (n + 1) : ℚ)

end A028246

/-! ## A028246.P13683793816824953304

`A008277(n+1)/A075499(n+1)*A099394(n)`
-/

namespace A028246.P13683793816824953304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A075499 (n + 1) : ℚ) * (A099394 n : ℚ)

end

end A028246.P13683793816824953304

namespace A028246

/-- `A008277(n+1)/A075499(n+1)*A099394(n)` -/
def P13683793816824953304.Spec : Prop :=
  ∀ n, P13683793816824953304.a n = (A028246 (n + 1) : ℚ)

end A028246

/-! ## A028246.P15269286349580667446

`A048743(n+1)/A103406(n)`
-/

namespace A028246.P15269286349580667446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048743 (n + 1) : ℚ) / (A103406 n : ℚ)

end

end A028246.P15269286349580667446

namespace A028246

/-- `A048743(n+1)/A103406(n)` -/
def P15269286349580667446.Spec : Prop :=
  ∀ n, P15269286349580667446.a n = (A028246 (n + 1) : ℚ)

end A028246

/-!
# A028247: Number of T-frame polyominoes with n cells.

The programs for A028247, there is no canonical definition to state claims against.
-/

/-! ## A028247.P4895688139620446906

`∑[A347709(3^n)²]`
-/

namespace A028247.P4895688139620446906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347709 (3 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028247.P4895688139620446906

/-! ## A028247.P2356179719821002126

`∑[A046660(5^ceil(n/2))²]`
-/

namespace A028247.P2356179719821002126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028247.P2356179719821002126

/-! ## A028247.P7298642265293600907

`∑[A004218(A006252(n))²]`
-/

namespace A028247.P7298642265293600907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A006252 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028247.P7298642265293600907

/-! ## A028247.P17369106231949923916

`∑[A004218(A022553(n))²]`
-/

namespace A028247.P17369106231949923916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A022553 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028247.P17369106231949923916

/-! ## A028247.P15266128039234446162

`∑[A077433(A003418(n))²]`
-/

namespace A028247.P15266128039234446162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077433 (A003418 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028247.P15266128039234446162

/-!
# A028248: Expansion of exp(exp(exp(x) - 1 - x) - 1).

The programs for A028248, there is no canonical definition to state claims against.
-/

/-! ## A028248.P9543307572196405684

`A355774(ceil(abs((1-n)/2))^ceil(n/2))`
-/

namespace A028248.P9543307572196405684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355774 (SequenceMachineLib.roundAway ((⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A028248.P9543307572196405684

/-! ## A028248.P4178137307661874842

`A151510(or(4, A045925(n)))`
-/

namespace A028248.P4178137307661874842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151510 (Int.lor 4 (A045925 n)).toNat

end

end A028248.P4178137307661874842

/-! ## A028248.P6543603210133145511

`A130996(A000296(comp[2*(n+3)]))`
-/

namespace A028248.P6543603210133145511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130996 (A000296 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A028248.P6543603210133145511

/-!
# A028249: Molien series for complete weight enumerator of self-dual code over GF(4) containing 1^n.

The programs for A028249, the canonical program `A028249.P728959745112348866` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028249 has offset 0).

The definition of A028249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028249.P728959745112348866

`∑[A000217(Δ[ceil(n²/12)])]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028249

/-- `∑[A000217(Δ[ceil(n²/12)])]` -/
def P728959745112348866.Spec : Prop :=
  ∀ n, P728959745112348866.a n = A028249 n

theorem P728959745112348866.correct : P728959745112348866.Spec := by
  intro n
  simp only [A028249]

end A028249

/-! ## A028249.P16778723032493579398

`∑[A161680(A008612(n)+1)]`
-/

namespace A028249.P16778723032493579398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A008612 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028249.P16778723032493579398

namespace A028249

/-- `∑[A161680(A008612(n)+1)]` -/
def P16778723032493579398.Spec : Prop :=
  ∀ n, P16778723032493579398.a n = A028249 n

end A028249

/-! ## A028249.P11414429023237106461

`∑[∑{d}[A008612(n), A007438(#)]]`
-/

namespace A028249.P11414429023237106461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A007438 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028249.P11414429023237106461

namespace A028249

/-- `∑[∑{d}[A008612(n), A007438(#)]]` -/
def P11414429023237106461.Spec : Prop :=
  ∀ n, P11414429023237106461.a n = A028249 n

end A028249

/-! ## A028249.P15259075688024488018

`A008627(n)-∑[A008615(n)²]`
-/

namespace A028249.P15259075688024488018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008627 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028249.P15259075688024488018

namespace A028249

/-- `A008627(n)-∑[A008615(n)²]` -/
def P15259075688024488018.Spec : Prop :=
  ∀ n, P15259075688024488018.a n = A028249 n

end A028249

/-! ## A028249.P7406108882867128324

`∑[A000217(A008612(n))%A003336(n+1)]`
-/

namespace A028249.P7406108882867128324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A008612 n).toNat) (A003336 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028249.P7406108882867128324

namespace A028249

/-- `∑[A000217(A008612(n))%A003336(n+1)]` -/
def P7406108882867128324.Spec : Prop :=
  ∀ n, P7406108882867128324.a n = A028249 n

end A028249

/-! ## A028249.P17802941749832272028

`∑[A000217(A008612(n))]%A157909(n+1)`
-/

namespace A028249.P17802941749832272028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A157909 (n + 1))

end

end A028249.P17802941749832272028

namespace A028249

/-- `∑[A000217(A008612(n))]%A157909(n+1)` -/
def P17802941749832272028.Spec : Prop :=
  ∀ n, P17802941749832272028.a n = A028249 n

end A028249

/-! ## A028249.P6519807717300508142

`∑[A014682(A008612(n)+A008612(n)²)]`
-/

namespace A028249.P6519807717300508142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A008612 n + A008612 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028249.P6519807717300508142

namespace A028249

/-- `∑[A014682(A008612(n)+A008612(n)²)]` -/
def P6519807717300508142.Spec : Prop :=
  ∀ n, P6519807717300508142.a n = A028249 n

end A028249

/-! ## A028249.P13655199280117588493

`∑[A091018(A025828(n))]`
-/

namespace A028249.P13655199280117588493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 (A025828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028249.P13655199280117588493

namespace A028249

/-- `∑[A091018(A025828(n))]` -/
def P13655199280117588493.Spec : Prop :=
  ∀ n, P13655199280117588493.a n = A028249 n

end A028249

/-! ## A028249.P17511573660785887448

`A014682(∑[A002378(A008612(n))])`
-/

namespace A028249.P17511573660785887448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028249.P17511573660785887448

namespace A028249

/-- `A014682(∑[A002378(A008612(n))])` -/
def P17511573660785887448.Spec : Prop :=
  ∀ n, P17511573660785887448.a n = A028249 n

end A028249

/-! ## A028249.P14961278594746494732

`A004525(∑[A002378(A008612(n))])`
-/

namespace A028249.P14961278594746494732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A008612 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028249.P14961278594746494732

namespace A028249

/-- `A004525(∑[A002378(A008612(n))])` -/
def P14961278594746494732.Spec : Prop :=
  ∀ n, P14961278594746494732.a n = A028249 n

end A028249

/-!
# A028250: Sequence arising in multiprocessor page migration.

The programs for A028250, the canonical program `A028250.P16144338509921234919` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028250 has offset 1).

The definition of A028250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028250.P17656689358273050792

`∑[char[A329825(n+1)]+2]`
-/

namespace A028250.P17656689358273050792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028250.P17656689358273050792

namespace A028250

/-- `∑[char[A329825(n+1)]+2]` -/
def P17656689358273050792.Spec : Prop :=
  ∀ n, (P17656689358273050792.a n : ℤ) = A028250 (n + 1)

end A028250

/-! ## A028250.P16144338509921234919

`ceil((A171984(n+1)+n)/2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028250

/-- `ceil((A171984(n+1)+n)/2)` -/
def P16144338509921234919.Spec : Prop :=
  ∀ n, P16144338509921234919.a n = A028250 (n + 1)

theorem P16144338509921234919.correct : P16144338509921234919.Spec := by
  intro n
  simp only [A028250, Nat.add_sub_cancel]

end A028250

/-! ## A028250.P7371309622774197314

`A329825(2*(n+1))-(n+1)`
-/

namespace A028250.P7371309622774197314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329825 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A028250.P7371309622774197314

namespace A028250

/-- `A329825(2*(n+1))-(n+1)` -/
def P7371309622774197314.Spec : Prop :=
  ∀ n, P7371309622774197314.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P17044485120171444632

`A329826(2*(n+1))-2*(n+1)`
-/

namespace A028250.P17044485120171444632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329826 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A028250.P17044485120171444632

namespace A028250

/-- `A329826(2*(n+1))-2*(n+1)` -/
def P17044485120171444632.Spec : Prop :=
  ∀ n, P17044485120171444632.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P5329949040233549298

`A065033(A171984(n+1)-n)+n`
-/

namespace A028250.P5329949040233549298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A171984 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A028250.P5329949040233549298

namespace A028250

/-- `A065033(A171984(n+1)-n)+n` -/
def P5329949040233549298.Spec : Prop :=
  ∀ n, P5329949040233549298.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P7194495213975180437

`A110654(A171984(n+1)-n)+n`
-/

namespace A028250.P7194495213975180437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A171984 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A028250.P7194495213975180437

namespace A028250

/-- `A110654(A171984(n+1)-n)+n` -/
def P7194495213975180437.Spec : Prop :=
  ∀ n, P7194495213975180437.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P17080626672294801655

`A065033(A171984(n+1)+n)`
-/

namespace A028250.P17080626672294801655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A171984 (n + 1) + (n : ℤ)).toNat

end

end A028250.P17080626672294801655

namespace A028250

/-- `A065033(A171984(n+1)+n)` -/
def P17080626672294801655.Spec : Prop :=
  ∀ n, P17080626672294801655.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P6034464915806769262

`A110654(A171984(n+1)+n)`
-/

namespace A028250.P6034464915806769262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A171984 (n + 1) + (n : ℤ)).toNat

end

end A028250.P6034464915806769262

namespace A028250

/-- `A110654(A171984(n+1)+n)` -/
def P6034464915806769262.Spec : Prop :=
  ∀ n, P6034464915806769262.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P8177301358923462957

`A008619(A171984(n+1)-1+n)`
-/

namespace A028250.P8177301358923462957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A171984 (n + 1) - 1 + (n : ℤ)).toNat

end

end A028250.P8177301358923462957

namespace A028250

/-- `A008619(A171984(n+1)-1+n)` -/
def P8177301358923462957.Spec : Prop :=
  ∀ n, P8177301358923462957.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P15093488202523054235

`A004526(A198395(n+1)+n)`
-/

namespace A028250.P15093488202523054235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198395 (n + 1) + (n : ℤ)).toNat

end

end A028250.P15093488202523054235

namespace A028250

/-- `A004526(A198395(n+1)+n)` -/
def P15093488202523054235.Spec : Prop :=
  ∀ n, P15093488202523054235.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P2616699066607947265

`A004526(A171984(n+1)+1+n)`
-/

namespace A028250.P2616699066607947265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A171984 (n + 1) + 1 + (n : ℤ)).toNat

end

end A028250.P2616699066607947265

namespace A028250

/-- `A004526(A171984(n+1)+1+n)` -/
def P2616699066607947265.Spec : Prop :=
  ∀ n, P2616699066607947265.a n = A028250 (n + 1)

end A028250

/-! ## A028250.P17329374597022362625

`A110655(2*(A171984(n+1)+n))`
-/

namespace A028250.P17329374597022362625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * (A171984 (n + 1) + (n : ℤ))).toNat

end

end A028250.P17329374597022362625

namespace A028250

/-- `A110655(2*(A171984(n+1)+n))` -/
def P17329374597022362625.Spec : Prop :=
  ∀ n, P17329374597022362625.a n = A028250 (n + 1)

end A028250

/-!
# A028251: Sequence arising in multiprocessor page migration.

The programs for A028251, the canonical program `A028251.P8547951660394490273` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028251 has offset 1).

The definition of A028251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028251.P8547951660394490273

`A194964(A016897(n))+A028310(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028251

/-- `A194964(A016897(n))+A028310(n)` -/
def P8547951660394490273.Spec : Prop :=
  ∀ n, P8547951660394490273.a n = A028251 (n + 1)

theorem P8547951660394490273.correct : P8547951660394490273.Spec := by
  intro n
  simp only [A028251, Nat.add_sub_cancel]

end A028251

/-! ## A028251.P11836478940516494125

`A194964(A016897(n))+A065033(2*n)`
-/

namespace A028251.P11836478940516494125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A016897 n).toNat + A065033 (2 * n)

end

end A028251.P11836478940516494125

namespace A028251

/-- `A194964(A016897(n))+A065033(2*n)` -/
def P11836478940516494125.Spec : Prop :=
  ∀ n, P11836478940516494125.a n = A028251 (n + 1)

end A028251

/-! ## A028251.P15144083149208273194

`A004277(n)+A194964(A016897(n))-n`
-/

namespace A028251.P15144083149208273194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A194964 (A016897 n).toNat - (n : ℤ))

end

end A028251.P15144083149208273194

namespace A028251

/-- `A004277(n)+A194964(A016897(n))-n` -/
def P15144083149208273194.Spec : Prop :=
  ∀ n, P15144083149208273194.a n = A028251 (n + 1)

end A028251

/-! ## A028251.P14600498567404768004

`A194964(A016897(n))+A008619(A004273(n))`
-/

namespace A028251.P14600498567404768004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A016897 n).toNat + A008619 (A004273 n).toNat

end

end A028251.P14600498567404768004

namespace A028251

/-- `A194964(A016897(n))+A008619(A004273(n))` -/
def P14600498567404768004.Spec : Prop :=
  ∀ n, P14600498567404768004.a n = A028251 (n + 1)

end A028251

/-! ## A028251.P13424555756696729672

`A194964(A016897(n))+A008619(A004275(n))`
-/

namespace A028251.P13424555756696729672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A016897 n).toNat + A008619 (A004275 n).toNat

end

end A028251.P13424555756696729672

namespace A028251

/-- `A194964(A016897(n))+A008619(A004275(n))` -/
def P13424555756696729672.Spec : Prop :=
  ∀ n, P13424555756696729672.a n = A028251 (n + 1)

end A028251

/-! ## A028251.P9234639643392929983

`A194964(A016897(n))+A007318(A000124(n))`
-/

namespace A028251.P9234639643392929983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A016897 n).toNat + A007318 (A000124 n).toNat

end

end A028251.P9234639643392929983

namespace A028251

/-- `A194964(A016897(n))+A007318(A000124(n))` -/
def P9234639643392929983.Spec : Prop :=
  ∀ n, P9234639643392929983.a n = A028251 (n + 1)

end A028251

/-!
# A028252: Sequence arising in multiprocessor page migration.

The programs for A028252, there is no canonical definition to state claims against.
-/

/-! ## A028252.P371133650356022434

`round(2*n*sqrt(7))+3`
-/

namespace A028252.P371133650356022434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) * Real.sqrt (7 : ℝ)) + 3

end

end A028252.P371133650356022434

/-! ## A028252.P12260390723653607100

`ceil((2*n+1)/sin(97))`
-/

namespace A028252.P12260390723653607100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.sin (97 : ℝ)⌉

end

end A028252.P12260390723653607100

/-! ## A028252.P6717164678473527568

`or(ceil(Δ[(ϕ*n)²]), char[9])`
-/

namespace A028252.P6717164678473527568
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈f1 (n + 1) - f1 n⌉ ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A028252.P6717164678473527568

/-! ## A028252.P8909831084753840666

`xor(ceil(Δ[(ϕ*n)²]), char[9])`
-/

namespace A028252.P8909831084753840666
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio * (n : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈f1 (n + 1) - f1 n⌉ ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A028252.P8909831084753840666

/-! ## A028252.P15654950304552233630

`ceil((2*n+1)*6^cos(1))`
-/

namespace A028252.P15654950304552233630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) * (6 : ℝ) ^ (Real.cos (1 : ℝ))⌉

end

end A028252.P15654950304552233630

/-!
# A028253: n mod Fibonacci(n).

The programs for A028253, the canonical program `A028253.P8855946488650615254` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028253 has offset 1).

The definition of A028253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028253.P8855946488650615254

`a(2%n)+n` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=0`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028253

/-- `a(2%n)+n` -/
def P8855946488650615254.Spec : Prop :=
  ∀ n, (P8855946488650615254.a n : ℤ) = A028253 (n + 1)

theorem P8855946488650615254.correct : P8855946488650615254.Spec := by
  intro n
  simp only [A028253, Nat.add_sub_cancel]

end A028253

/-!
# A028255: Fibonacci(n+3) mod n-th prime.

The programs for A028255, the canonical program `A028255.P917999492263847109` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028255 has offset 1).

The definition of A028255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028255.P917999492263847109

`A000045(n+4)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028255

/-- `A000045(n+4)%A000040(n+1)` -/
def P917999492263847109.Spec : Prop :=
  ∀ n, P917999492263847109.a n = A028255 (n + 1)

theorem P917999492263847109.correct : P917999492263847109.Spec := by
  intro n
  simp only [A028255, Nat.add_sub_cancel]

end A028255

/-! ## A028255.P2191073135393491375

`A020701(n)%p?[A001057(n)]`
-/

namespace A028255.P2191073135393491375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020701 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028255.P2191073135393491375

namespace A028255

/-- `A020701(n)%p?[A001057(n)]` -/
def P2191073135393491375.Spec : Prop :=
  ∀ n, P2191073135393491375.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P13465880111984100363

`A000045(n+4)%Δ[A007504(n)]`
-/

namespace A028255.P13465880111984100363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 4)) (f1 (n + 1) - f1 n)

end

end A028255.P13465880111984100363

namespace A028255

/-- `A000045(n+4)%Δ[A007504(n)]` -/
def P13465880111984100363.Spec : Prop :=
  ∀ n, P13465880111984100363.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P1174891504046005606

`A020695(n+1)%A000040(n+1)`
-/

namespace A028255.P1174891504046005606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020695 (n + 1)) (A000040 (n + 1))

end

end A028255.P1174891504046005606

namespace A028255

/-- `A020695(n+1)%A000040(n+1)` -/
def P1174891504046005606.Spec : Prop :=
  ∀ n, P1174891504046005606.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P13781889040181540382

`(A020706(n)-1)%A000040(n+1)`
-/

namespace A028255.P13781889040181540382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020706 n - 1) (A000040 (n + 1))

end

end A028255.P13781889040181540382

namespace A028255

/-- `(A020706(n)-1)%A000040(n+1)` -/
def P13781889040181540382.Spec : Prop :=
  ∀ n, P13781889040181540382.a n = A028255 (n + 1)

theorem P13781889040181540382.correct : P13781889040181540382.Spec := by
  intro n
  simp only [A028255, Nat.add_sub_cancel, A028255.P13781889040181540382.a, A028255.P917999492263847109.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A020706, A020706.P17542088062975438782.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A028255

/-! ## A028255.P10465448300354267090

`A071679(n+2)%A000040(n+1)`
-/

namespace A028255.P10465448300354267090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071679 (n + 2)) (A000040 (n + 1))

end

end A028255.P10465448300354267090

namespace A028255

/-- `A071679(n+2)%A000040(n+1)` -/
def P10465448300354267090.Spec : Prop :=
  ∀ n, P10465448300354267090.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P587087450019287770

`(A000071(n+4)+1)%A000040(n+1)`
-/

namespace A028255.P587087450019287770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 4) + 1) (A000040 (n + 1))

end

end A028255.P587087450019287770

namespace A028255

/-- `(A000071(n+4)+1)%A000040(n+1)` -/
def P587087450019287770.Spec : Prop :=
  ∀ n, P587087450019287770.a n = A028255 (n + 1)

theorem P587087450019287770.correct : P587087450019287770.Spec := by
  intro n
  simp only [A028255, Nat.add_sub_cancel, A028255.P587087450019287770.a, A028255.P917999492263847109.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A028255

/-! ## A028255.P5983583510497145096

`(A001611(n+4)-1)%A000040(n+1)`
-/

namespace A028255.P5983583510497145096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 4) - 1) (A000040 (n + 1))

end

end A028255.P5983583510497145096

namespace A028255

/-- `(A001611(n+4)-1)%A000040(n+1)` -/
def P5983583510497145096.Spec : Prop :=
  ∀ n, P5983583510497145096.a n = A028255 (n + 1)

theorem P5983583510497145096.correct : P5983583510497145096.Spec := by
  intro n
  simp only [A028255, Nat.add_sub_cancel, A028255.P5983583510497145096.a, A028255.P917999492263847109.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A028255

/-! ## A028255.P303073116365102483

`(A006327(n+4)+3)%record[A006530(n+2)]`
-/

namespace A028255.P303073116365102483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006327 (n + 4) + 3) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A028255.P303073116365102483

namespace A028255

/-- `(A006327(n+4)+3)%record[A006530(n+2)]` -/
def P303073116365102483.Spec : Prop :=
  ∀ n, P303073116365102483.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P14738190020314995194

`A003965(A000040(n+2))%A000040(n+1)`
-/

namespace A028255.P14738190020314995194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003965 (A000040 (n + 2)).toNat) (A000040 (n + 1))

end

end A028255.P14738190020314995194

namespace A028255

/-- `A003965(A000040(n+2))%A000040(n+1)` -/
def P14738190020314995194.Spec : Prop :=
  ∀ n, P14738190020314995194.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P18142765822912717823

`Δ[A020712(n)]%p?[A001057(n)]`
-/

namespace A028255.P18142765822912717823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A028255.P18142765822912717823

namespace A028255

/-- `Δ[A020712(n)]%p?[A001057(n)]` -/
def P18142765822912717823.Spec : Prop :=
  ∀ n, P18142765822912717823.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P304552131145448380

`Δ[A020743(n)]%A000040(n+1)`
-/

namespace A028255.P304552131145448380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A028255.P304552131145448380

namespace A028255

/-- `Δ[A020743(n)]%A000040(n+1)` -/
def P304552131145448380.Spec : Prop :=
  ∀ n, P304552131145448380.a n = A028255 (n + 1)

end A028255

/-! ## A028255.P9779295932559070718

`Δ[A006327(n+5)]%A000040(n+1)`
-/

namespace A028255.P9779295932559070718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006327 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A028255.P9779295932559070718

namespace A028255

/-- `Δ[A006327(n+5)]%A000040(n+1)` -/
def P9779295932559070718.Spec : Prop :=
  ∀ n, P9779295932559070718.a n = A028255 (n + 1)

end A028255

/-!
# A028256: Fibonacci(n+2) mod n-th prime.

The programs for A028256, the canonical program `A028256.P7335770125251068852` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028256 has offset 1).

The definition of A028256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028256.P7335770125251068852

`A000045(n+3)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028256

/-- `A000045(n+3)%A000040(n+1)` -/
def P7335770125251068852.Spec : Prop :=
  ∀ n, P7335770125251068852.a n = A028256 (n + 1)

theorem P7335770125251068852.correct : P7335770125251068852.Spec := by
  intro n
  simp only [A028256, Nat.add_sub_cancel]

end A028256

/-! ## A028256.P1817218934502254415

`A020695(n)%p?[A001057(n)]`
-/

namespace A028256.P1817218934502254415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020695 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028256.P1817218934502254415

namespace A028256

/-- `A020695(n)%p?[A001057(n)]` -/
def P1817218934502254415.Spec : Prop :=
  ∀ n, P1817218934502254415.a n = A028256 (n + 1)

end A028256

/-! ## A028256.P9718029511726172351

`A000045(n+3)%p?[A001057(n)]`
-/

namespace A028256.P9718029511726172351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 3)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028256.P9718029511726172351

namespace A028256

/-- `A000045(n+3)%p?[A001057(n)]` -/
def P9718029511726172351.Spec : Prop :=
  ∀ n, P9718029511726172351.a n = A028256 (n + 1)

end A028256

/-! ## A028256.P12545969565657852368

`A004399(n+1)%A000040(n+1)`
-/

namespace A028256.P12545969565657852368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004399 (n + 1)) (A000040 (n + 1))

end

end A028256.P12545969565657852368

namespace A028256

/-- `A004399(n+1)%A000040(n+1)` -/
def P12545969565657852368.Spec : Prop :=
  ∀ n, P12545969565657852368.a n = A028256 (n + 1)

end A028256

/-! ## A028256.P758038918894071449

`A071679(n+1)%A006005(n+1)`
-/

namespace A028256.P758038918894071449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071679 (n + 1)) (A006005 (n + 1))

end

end A028256.P758038918894071449

namespace A028256

/-- `A071679(n+1)%A006005(n+1)` -/
def P758038918894071449.Spec : Prop :=
  ∀ n, P758038918894071449.a n = A028256 (n + 1)

end A028256

/-! ## A028256.P7964711784608038218

`A160189(n+1)%A000040(n+1)`
-/

namespace A028256.P7964711784608038218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160189 (n + 1)) (A000040 (n + 1))

end

end A028256.P7964711784608038218

namespace A028256

/-- `A160189(n+1)%A000040(n+1)` -/
def P7964711784608038218.Spec : Prop :=
  ∀ n, P7964711784608038218.a n = A028256 (n + 1)

end A028256

/-! ## A028256.P11759979411745939143

`(A001911(n)+2)%A000040(n+1)`
-/

namespace A028256.P11759979411745939143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001911 n + 2) (A000040 (n + 1))

end

end A028256.P11759979411745939143

namespace A028256

/-- `(A001911(n)+2)%A000040(n+1)` -/
def P11759979411745939143.Spec : Prop :=
  ∀ n, P11759979411745939143.a n = A028256 (n + 1)

theorem P11759979411745939143.correct : P11759979411745939143.Spec := by
  intro n
  simp only [A028256, Nat.add_sub_cancel, A028256.P11759979411745939143.a, A028256.P7335770125251068852.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A028256

/-! ## A028256.P8853196774075796410

`(A001611(n+3)-1)%A000040(n+1)`
-/

namespace A028256.P8853196774075796410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 3) - 1) (A000040 (n + 1))

end

end A028256.P8853196774075796410

namespace A028256

/-- `(A001611(n+3)-1)%A000040(n+1)` -/
def P8853196774075796410.Spec : Prop :=
  ∀ n, P8853196774075796410.a n = A028256 (n + 1)

theorem P8853196774075796410.correct : P8853196774075796410.Spec := by
  intro n
  simp only [A028256, Nat.add_sub_cancel, A028256.P8853196774075796410.a, A028256.P7335770125251068852.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A028256

/-! ## A028256.P4241804947355894346

`(∑[A000045(n+1)]+1)%∑[A054541(n+1)]`
-/

namespace A028256.P4241804947355894346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A028256.P4241804947355894346

namespace A028256

/-- `(∑[A000045(n+1)]+1)%∑[A054541(n+1)]` -/
def P4241804947355894346.Spec : Prop :=
  ∀ n, P4241804947355894346.a n = A028256 (n + 1)

end A028256

/-! ## A028256.P10390135604620302524

`Δ[A020701(n)]%p?[A001057(n)]`
-/

namespace A028256.P10390135604620302524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A028256.P10390135604620302524

namespace A028256

/-- `Δ[A020701(n)]%p?[A001057(n)]` -/
def P10390135604620302524.Spec : Prop :=
  ∀ n, P10390135604620302524.a n = A028256 (n + 1)

end A028256

/-! ## A028256.P14896581979554601612

`Δ[A000071(n+4)]%A000040(n+1)`
-/

namespace A028256.P14896581979554601612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A028256.P14896581979554601612

namespace A028256

/-- `Δ[A000071(n+4)]%A000040(n+1)` -/
def P14896581979554601612.Spec : Prop :=
  ∀ n, P14896581979554601612.a n = A028256 (n + 1)

end A028256

/-!
# A028258: Expansion of 1/((1-2*x)*(1-4*x)(1-8*x)(1-16*x)).

The programs for A028258, there is no canonical definition to state claims against.
-/

/-! ## A028258.P9745686727872544318

`2^n*∑[2^n*∑[2^n*∑[2^n]]]`
-/

namespace A028258.P9745686727872544318
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028258.P9745686727872544318

/-! ## A028258.P15003105312940667933

`lcm(2^n, ∑[A016290(n)])`
-/

namespace A028258.P15003105312940667933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A028258.P15003105312940667933

/-! ## A028258.P13307238725741062825

`lcm(∑[A016290(n)], A000079(n))`
-/

namespace A028258.P13307238725741062825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000079 n)

end

end A028258.P13307238725741062825

/-! ## A028258.P2495660437197779803

`lcm(Δ[A000225(n)], A006096(n+3))`
-/

namespace A028258.P2495660437197779803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A006096 (n + 3))

end

end A028258.P2495660437197779803

/-! ## A028258.P2774879052396692034

`A000079(n+1)*A006096(n+3)/2`
-/

namespace A028258.P2774879052396692034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A006096 (n + 3) : ℚ) / 2

end

end A028258.P2774879052396692034

/-!
# A028259: Engel expansion of the golden ratio, (1 + sqrt(5))/2 = 1.61803... .

The programs for A028259, there is no canonical definition to state claims against.
-/

/-! ## A028259.P8892862276859173231

`A059176(n+1)+char[1]`
-/

namespace A028259.P8892862276859173231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059176 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A028259.P8892862276859173231

/-! ## A028259.P17071873536417332849

`A063524(n)+A059176(n+1)`
-/

namespace A028259.P17071873536417332849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A059176 (n + 1)

end

end A028259.P17071873536417332849

/-! ## A028259.P10972509935476257119

`A059176(n+1)*A373565(n)`
-/

namespace A028259.P10972509935476257119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059176 (n + 1) * A373565 n

end

end A028259.P10972509935476257119

/-! ## A028259.P10977063950489745449

`A112316(A008624(n))+A059176(n+1)`
-/

namespace A028259.P10977063950489745449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 (A008624 n).toNat + A059176 (n + 1)

end

end A028259.P10977063950489745449

/-! ## A028259.P6688027780497716188

`A000034(A053644(n))*A059176(n+1)`
-/

namespace A028259.P6688027780497716188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A053644 n).toNat * A059176 (n + 1)

end

end A028259.P6688027780497716188

/-! ## A028259.P8529638596763161346

`A059176(n+1)*A081729(A002378(n))`
-/

namespace A028259.P8529638596763161346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059176 (n + 1) * A081729 (A002378 n).toNat

end

end A028259.P8529638596763161346

/-! ## A028259.P5914223994753433562

`A059176(n+1)*A328479(A008578(n+1))`
-/

namespace A028259.P5914223994753433562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059176 (n + 1) * A328479 (A008578 (n + 1)).toNat

end

end A028259.P5914223994753433562

/-! ## A028259.P11436126768062919986

`A059176(n+1)*A286299(n²)`
-/

namespace A028259.P11436126768062919986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059176 (n + 1) * A286299 (n ^ 2)

end

end A028259.P11436126768062919986

/-! ## A028259.P8168165639566967935

`A014963(A008048(n))*A059176(n+1)`
-/

namespace A028259.P8168165639566967935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008048 n).toNat * A059176 (n + 1)

end

end A028259.P8168165639566967935

/-!
# A028260: Numbers with an even number of prime divisors (counted with multiplicity); numbers k such that the Liouville function lambda(k) (A008836) is positive.

The programs for A028260, the canonical program `A028260.P16894773402315614175` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028260 has offset 1).

The definition of A028260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028260.P5043754125680614528

`A046470(n+1)/2`
-/

namespace A028260.P5043754125680614528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046470 (n + 1) : ℚ) / 2

end

end A028260.P5043754125680614528

namespace A028260

/-- `A046470(n+1)/2` -/
def P5043754125680614528.Spec : Prop :=
  ∀ n, P5043754125680614528.a n = (A028260 (n + 1) : ℚ)

theorem P5043754125680614528.correct : P5043754125680614528.Spec := by
  intro n
  simp only [A028260, Nat.add_sub_cancel, A028260.P5043754125680614528.a, A028260.P16894773402315614175.f1, A028260.P16894773402315614175.f2, A028260.P16894773402315614175.a, A046470, A046470.P11553915186870651729.a, A344617, A344617.P17193290426147395898.f1, A344617.P17193290426147395898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A028260

/-! ## A028260.P16729479520475334726

`eq[0, A066829(n+1)]+1`
-/

namespace A028260.P16729479520475334726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028260.P16729479520475334726

namespace A028260

/-- `eq[0, A066829(n+1)]+1` -/
def P16729479520475334726.Spec : Prop :=
  ∀ n, (P16729479520475334726.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P2565138832600405692

`eq[1, A065043(n+1)]+1`
-/

namespace A028260.P2565138832600405692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028260.P2565138832600405692

namespace A028260

/-- `eq[1, A065043(n+1)]+1` -/
def P2565138832600405692.Spec : Prop :=
  ∀ n, (P2565138832600405692.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P16894773402315614175

`lt[A344617(n+1), 1]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028260

/-- `lt[A344617(n+1), 1]+1` -/
def P16894773402315614175.Spec : Prop :=
  ∀ n, (P16894773402315614175.a n : ℤ) = A028260 (n + 1)

theorem P16894773402315614175.correct : P16894773402315614175.Spec := by
  intro n
  simp only [A028260, Nat.add_sub_cancel]

end A028260

/-! ## A028260.P4154698944800111681

`round(eq[1, A353556(n+1)]/2)`
-/

namespace A028260.P4154698944800111681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2)

end

end A028260.P4154698944800111681

namespace A028260

/-- `round(eq[1, A353556(n+1)]/2)` -/
def P4154698944800111681.Spec : Prop :=
  ∀ n, P4154698944800111681.a n = A028260 (n + 1)

end A028260

/-! ## A028260.P1549761262964353825

`∪[(n+1)², A119899(n+1)]`
-/

namespace A028260.P1549761262964353825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028260.P1549761262964353825

namespace A028260

/-- `∪[(n+1)², A119899(n+1)]` -/
def P1549761262964353825.Spec : Prop :=
  ∀ n, (P1549761262964353825.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P9419480665529748096

`eq[2, gcd(2, A001222(n+1))]+1`
-/

namespace A028260.P9419480665529748096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028260.P9419480665529748096

namespace A028260

/-- `eq[2, gcd(2, A001222(n+1))]+1` -/
def P9419480665529748096.Spec : Prop :=
  ∀ n, (P9419480665529748096.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P3173138758326670846

`eq[1, gcd(2*a(n-1), A001222(2*n))]` with `a(0)=0`
-/

namespace A028260.P3173138758326670846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (2 * f2 (n - 1) : ℤ) (A001222 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028260.P3173138758326670846

namespace A028260

/-- `eq[1, gcd(2*a(n-1), A001222(2*n))]` -/
def P3173138758326670846.Spec : Prop :=
  ∀ n, (P3173138758326670846.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P17743261213546671271

`eq[1, A000034(A001222(n+1))]+1`
-/

namespace A028260.P17743261213546671271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A028260.P17743261213546671271

namespace A028260

/-- `eq[1, A000034(A001222(n+1))]+1` -/
def P17743261213546671271.Spec : Prop :=
  ∀ n, (P17743261213546671271.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P14825552044536203796

`∪[A046337(n+1), A063745(n+1)]`
-/

namespace A028260.P14825552044536203796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028260.P14825552044536203796

namespace A028260

/-- `∪[A046337(n+1), A063745(n+1)]` -/
def P14825552044536203796.Spec : Prop :=
  ∀ n, (P14825552044536203796.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P7184662583089011181

`∪[A063745(n+1), A345452(n+1)]`
-/

namespace A028260.P7184662583089011181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028260.P7184662583089011181

namespace A028260

/-- `∪[A063745(n+1), A345452(n+1)]` -/
def P7184662583089011181.Spec : Prop :=
  ∀ n, (P7184662583089011181.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P11693235560086400614

`∪[A279456(n+1), A279458(n+1)]`
-/

namespace A028260.P11693235560086400614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028260.P11693235560086400614

namespace A028260

/-- `∪[A279456(n+1), A279458(n+1)]` -/
def P11693235560086400614.Spec : Prop :=
  ∀ n, (P11693235560086400614.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P1412163407644712290

`∪[A320891(n+1), A320911(n+1)]`
-/

namespace A028260.P1412163407644712290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028260.P1412163407644712290

namespace A028260

/-- `∪[A320891(n+1), A320911(n+1)]` -/
def P1412163407644712290.Spec : Prop :=
  ∀ n, (P1412163407644712290.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P2120056185474974537

`∪[A374472(n+1), A378489(n+1)]`
-/

namespace A028260.P2120056185474974537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028260.P2120056185474974537

namespace A028260

/-- `∪[A374472(n+1), A378489(n+1)]` -/
def P2120056185474974537.Spec : Prop :=
  ∀ n, (P2120056185474974537.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P8416945989087163325

`lt[50, A319308(A001222(n+1)+2)]+1`
-/

namespace A028260.P8416945989087163325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A028260.P8416945989087163325

namespace A028260

/-- `lt[50, A319308(A001222(n+1)+2)]+1` -/
def P8416945989087163325.Spec : Prop :=
  ∀ n, (P8416945989087163325.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P2925261834111968852

`lt[A318677(n+1), A318676(n+1)]+1`
-/

namespace A028260.P2925261834111968852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A028260.P2925261834111968852

namespace A028260

/-- `lt[A318677(n+1), A318676(n+1)]+1` -/
def P2925261834111968852.Spec : Prop :=
  ∀ n, (P2925261834111968852.a n : ℤ) = A028260 (n + 1)

end A028260

/-! ## A028260.P11654847911073725957

`record[A061019(n+1)]`
-/

namespace A028260.P11654847911073725957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028260.P11654847911073725957

namespace A028260

/-- `record[A061019(n+1)]` -/
def P11654847911073725957.Spec : Prop :=
  ∀ n, P11654847911073725957.a n = A028260 (n + 1)

end A028260

/-! ## A028260.P9950661074291563125

`filter[A347450(n+1), A065043(#)]`
-/

namespace A028260.P9950661074291563125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A028260.P9950661074291563125

namespace A028260

/-- `filter[A347450(n+1), A065043(#)]` -/
def P9950661074291563125.Spec : Prop :=
  ∀ n, P9950661074291563125.a n = A028260 (n + 1)

end A028260

/-! ## A028260.P17544512952599749044

`lt[A316524(n+1), 1]+1`
-/

namespace A028260.P17544512952599749044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028260.P17544512952599749044

namespace A028260

/-- `lt[A316524(n+1), 1]+1` -/
def P17544512952599749044.Spec : Prop :=
  ∀ n, (P17544512952599749044.a n : ℤ) = A028260 (n + 1)

end A028260

/-!
# A028261: Numbers whose total number of prime factors (counting multiplicity) is squarefree.

The programs for A028261, the canonical program `A028261.P10191755896798268837` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028261 has offset 1).

The definition of A028261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028261.P8001889451229954244

`lt[A103840(A001222(n+1)), 1]+1`
-/

namespace A028261.P8001889451229954244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 (A001222 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028261.P8001889451229954244

namespace A028261

/-- `lt[A103840(A001222(n+1)), 1]+1` -/
def P8001889451229954244.Spec : Prop :=
  ∀ n, (P8001889451229954244.a n : ℤ) = A028261 (n + 1)

end A028261

/-! ## A028261.P10191755896798268837

`lt[A105570(A001222(n+2)), 2]+2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028261

/-- `lt[A105570(A001222(n+2)), 2]+2` -/
def P10191755896798268837.Spec : Prop :=
  ∀ n, (P10191755896798268837.a n : ℤ) = A028261 (n + 1)

theorem P10191755896798268837.correct : P10191755896798268837.Spec := by
  intro n
  simp only [A028261, Nat.add_sub_cancel]

end A028261

/-! ## A028261.P3190643863294264899

`record[n/A008835(a(A001222(n))²)]` with `a(0)=2`
-/

namespace A028261.P3190643863294264899
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / (A008835 (SequenceMachineLib.roundAway (f1 (A001222 n).toNat ^ 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028261.P3190643863294264899

namespace A028261

/-- `record[n/A008835(a(A001222(n))²)]` -/
def P3190643863294264899.Spec : Prop :=
  ∀ n, P3190643863294264899.a n = (A028261 (n + 1) : ℚ)

end A028261

/-! ## A028261.P14949981087061522253

`lt[A103840(val(A165827(n+1), 2)), 1]+1`
-/

namespace A028261.P14949981087061522253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103840 (SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A028261.P14949981087061522253

namespace A028261

/-- `lt[A103840(val(A165827(n+1), 2)), 1]+1` -/
def P14949981087061522253.Spec : Prop :=
  ∀ n, (P14949981087061522253.a n : ℤ) = A028261 (n + 1)

end A028261

/-! ## A028261.P4262018746095736942

`lt[3, dr(A007916(A165824(n+1)))]+1`
-/

namespace A028261.P4262018746095736942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007916 (A165824 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A028261.P4262018746095736942

namespace A028261

/-- `lt[3, dr(A007916(A165824(n+1)))]+1` -/
def P4262018746095736942.Spec : Prop :=
  ∀ n, (P4262018746095736942.a n : ℤ) = A028261 (n + 1)

end A028261

/-! ## A028261.P5174427154587605235

`eq[A000007(n), A011658(A001222(n+1)!)]+1`
-/

namespace A028261.P5174427154587605235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011658 (Nat.factorial (A001222 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028261.P5174427154587605235

namespace A028261

/-- `eq[A000007(n), A011658(A001222(n+1)!)]+1` -/
def P5174427154587605235.Spec : Prop :=
  ∀ n, (P5174427154587605235.a n : ℤ) = A028261 (n + 1)

end A028261

/-! ## A028261.P7387733166864622482

`eq[A000038(A004526(n)²+n), A101637(n+1)]+1`
-/

namespace A028261.P7387733166864622482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A004526 n ^ 2 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028261.P7387733166864622482

namespace A028261

/-- `eq[A000038(A004526(n)²+n), A101637(n+1)]+1` -/
def P7387733166864622482.Spec : Prop :=
  ∀ n, (P7387733166864622482.a n : ℤ) = A028261 (n + 1)

end A028261

/-! ## A028261.P12762378720369782715

`eq[A000038(57*n), A101637(n+1)]+1`
-/

namespace A028261.P12762378720369782715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (57 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A028261.P12762378720369782715

namespace A028261

/-- `eq[A000038(57*n), A101637(n+1)]+1` -/
def P12762378720369782715.Spec : Prop :=
  ∀ n, (P12762378720369782715.a n : ℤ) = A028261 (n + 1)

end A028261

/-! ## A028261.P8502307223167525456

`∪[A050260(n+1), A323521(n+1)]`
-/

namespace A028261.P8502307223167525456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A028261.P8502307223167525456

namespace A028261

/-- `∪[A050260(n+1), A323521(n+1)]` -/
def P8502307223167525456.Spec : Prop :=
  ∀ n, (P8502307223167525456.a n : ℤ) = A028261 (n + 1)

end A028261

/-!
# A028262: Elements in 3-Pascal triangle (by row).

The programs for A028262, the canonical program `A028262.P11072633460123417746` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028262 has offset 0).

The definition of A028262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028262.P1141491064833976953

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A028262.P1141491064833976953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 3] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A028262.P1141491064833976953

namespace A028262

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P1141491064833976953.Spec : Prop :=
  ∀ n, (P1141491064833976953.a n : ℤ) = A028262 n

end A028262

/-! ## A028262.P11072633460123417746

`A323211(n)+A014473(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028262

/-- `A323211(n)+A014473(n)` -/
def P11072633460123417746.Spec : Prop :=
  ∀ n, P11072633460123417746.a n = A028262 n

theorem P11072633460123417746.correct : P11072633460123417746.Spec := by
  intro n
  simp only [A028262]

end A028262

/-! ## A028262.P8290339874743413718

`A028326(n)-A072405(n)`
-/

namespace A028262.P8290339874743413718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A072405 n

end

end A028262.P8290339874743413718

namespace A028262

/-- `A028326(n)-A072405(n)` -/
def P8290339874743413718.Spec : Prop :=
  ∀ n, P8290339874743413718.a n = A028262 n

end A028262

/-! ## A028262.P10386526003789078142

`A007318(n)+A323211(n)-1`
-/

namespace A028262.P10386526003789078142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A323211 n - 1)

end

end A028262.P10386526003789078142

namespace A028262

/-- `A007318(n)+A323211(n)-1` -/
def P10386526003789078142.Spec : Prop :=
  ∀ n, P10386526003789078142.a n = A028262 n

theorem P10386526003789078142.correct : P10386526003789078142.Spec := by
  intro n
  simp only [A028262, Nat.add_sub_cancel, A028262.P10386526003789078142.a, A028262.P11072633460123417746.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A323211, A323211.P6731529718550413430.a, A113313, A113313.P6907104958604162947.f1, A113313.P6907104958604162947.a, A083920, A083920.P13248752610546876947.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028262

/-! ## A028262.P1082178773485779835

`A028275(n)+1-A323211(n)`
-/

namespace A028262.P1082178773485779835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n + (1 - A323211 n)

end

end A028262.P1082178773485779835

namespace A028262

/-- `A028275(n)+1-A323211(n)` -/
def P1082178773485779835.Spec : Prop :=
  ∀ n, P1082178773485779835.a n = A028262 n

end A028262

/-! ## A028262.P11895220096042255935

`(A028275(n)+A007318(n))/2`
-/

namespace A028262.P11895220096042255935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 n + A007318 n : ℚ) / 2

end

end A028262.P11895220096042255935

namespace A028262

/-- `(A028275(n)+A007318(n))/2` -/
def P11895220096042255935.Spec : Prop :=
  ∀ n, P11895220096042255935.a n = (A028262 n : ℚ)

end A028262

/-! ## A028262.P3673431677609253467

`2*A028275(n)-A028313(n)`
-/

namespace A028262.P3673431677609253467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028275 n - A028313 n

end

end A028262.P3673431677609253467

namespace A028262

/-- `2*A028275(n)-A028313(n)` -/
def P3673431677609253467.Spec : Prop :=
  ∀ n, P3673431677609253467.a n = A028262 n

end A028262

/-! ## A028262.P16434811533181704447

`2*A007318(n)-A072405(n)`
-/

namespace A028262.P16434811533181704447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A072405 n

end

end A028262.P16434811533181704447

namespace A028262

/-- `2*A007318(n)-A072405(n)` -/
def P16434811533181704447.Spec : Prop :=
  ∀ n, P16434811533181704447.a n = A028262 n

end A028262

/-! ## A028262.P2040329129867156264

`(A072405(n)+A028313(n))/2`
-/

namespace A028262.P2040329129867156264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072405 n + A028313 n : ℚ) / 2

end

end A028262.P2040329129867156264

namespace A028262

/-- `(A072405(n)+A028313(n))/2` -/
def P2040329129867156264.Spec : Prop :=
  ∀ n, P2040329129867156264.a n = (A028262 n : ℚ)

end A028262

/-! ## A028262.P15174248456143573986

`abs(2*A108086(n))-A072405(n)`
-/

namespace A028262.P15174248456143573986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A108086 n| - A072405 n

end

end A028262.P15174248456143573986

namespace A028262

/-- `abs(2*A108086(n))-A072405(n)` -/
def P15174248456143573986.Spec : Prop :=
  ∀ n, P15174248456143573986.a n = A028262 n

end A028262

/-! ## A028262.P12348194468277606887

`abs(2*A117440(n))-A072405(n)`
-/

namespace A028262.P12348194468277606887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A117440 n| - A072405 n

end

end A028262.P12348194468277606887

namespace A028262

/-- `abs(2*A117440(n))-A072405(n)` -/
def P12348194468277606887.Spec : Prop :=
  ∀ n, P12348194468277606887.a n = A028262 n

end A028262

/-! ## A028262.P12324412227993367778

`abs(2*A130595(n))-A072405(n)`
-/

namespace A028262.P12324412227993367778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A130595 n| - A072405 n

end

end A028262.P12324412227993367778

namespace A028262

/-- `abs(2*A130595(n))-A072405(n)` -/
def P12324412227993367778.Spec : Prop :=
  ∀ n, P12324412227993367778.a n = A028262 n

end A028262

/-! ## A028262.P4768860888936066208

`2*sqrt(A008459(n))-A072405(n)`
-/

namespace A028262.P4768860888936066208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A008459 n : ℝ) - (A072405 n : ℝ)

end

end A028262.P4768860888936066208

namespace A028262

/-- `2*sqrt(A008459(n))-A072405(n)` -/
def P4768860888936066208.Spec : Prop :=
  ∀ n, P4768860888936066208.a n = (A028262 n : ℝ)

end A028262

/-! ## A028262.P13126280408554326591

`Δ[A102363(n)]+A323211(n)-1`
-/

namespace A028262.P13126280408554326591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A323211 n - 1)

end

end A028262.P13126280408554326591

namespace A028262

/-- `Δ[A102363(n)]+A323211(n)-1` -/
def P13126280408554326591.Spec : Prop :=
  ∀ n, P13126280408554326591.a n = A028262 n

end A028262

/-! ## A028262.P9475440220931937802

`Δ[2*A102363(n)]-A072405(n)`
-/

namespace A028262.P9475440220931937802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A072405 n

end

end A028262.P9475440220931937802

namespace A028262

/-- `Δ[2*A102363(n)]-A072405(n)` -/
def P9475440220931937802.Spec : Prop :=
  ∀ n, P9475440220931937802.a n = A028262 n

end A028262

/-! ## A028262.P10565449838348167223

`A028275(n)-(A007318(n)-A072405(n))`
-/

namespace A028262.P10565449838348167223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n - (A007318 n - A072405 n)

end

end A028262.P10565449838348167223

namespace A028262

/-- `A028275(n)-(A007318(n)-A072405(n))` -/
def P10565449838348167223.Spec : Prop :=
  ∀ n, P10565449838348167223.a n = A028262 n

end A028262

/-! ## A028262.P17028405874210705645

`A144225(n+1)+A007318(n)-A000007(n)`
-/

namespace A028262.P17028405874210705645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (n + 1) + (A007318 n - A000007 n)

end

end A028262.P17028405874210705645

namespace A028262

/-- `A144225(n+1)+A007318(n)-A000007(n)` -/
def P17028405874210705645.Spec : Prop :=
  ∀ n, P17028405874210705645.a n = A028262 n

end A028262

/-! ## A028262.P14872122417911734016

`A173075(n)+1-A103451(n)`
-/

namespace A028262.P14872122417911734016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 n + (1 - A103451 n)

end

end A028262.P14872122417911734016

namespace A028262

/-- `A173075(n)+1-A103451(n)` -/
def P14872122417911734016.Spec : Prop :=
  ∀ n, P14872122417911734016.a n = A028262 n

end A028262

/-! ## A028262.P150864264090962384

`A007318(n)+A173075(n)-A132044(n)`
-/

namespace A028262.P150864264090962384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A173075 n - A132044 n)

end

end A028262.P150864264090962384

namespace A028262

/-- `A007318(n)+A173075(n)-A132044(n)` -/
def P150864264090962384.Spec : Prop :=
  ∀ n, P150864264090962384.a n = A028262 n

end A028262

/-! ## A028262.P2366174646685244057

`A028275(n)+A024000(A323211(n))`
-/

namespace A028262.P2366174646685244057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n + A024000 (A323211 n).toNat

end

end A028262.P2366174646685244057

namespace A028262

/-- `A028275(n)+A024000(A323211(n))` -/
def P2366174646685244057.Spec : Prop :=
  ∀ n, P2366174646685244057.a n = A028262 n

end A028262

/-!
# A028263: Elements in 3-Pascal triangle A028262 (by row) that are not 1.

The programs for A028263, the canonical program `A028263.P3177418721069471964` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028263 has offset 0).

The definition of A028263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028263.P12901780874902174815

`A028262(lt[1, A028262(n)])`
-/

namespace A028263.P12901780874902174815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028263.P12901780874902174815

namespace A028263

/-- `A028262(lt[1, A028262(n)])` -/
def P12901780874902174815.Spec : Prop :=
  ∀ n, P12901780874902174815.a n = A028263 n

end A028263

/-! ## A028263.P1308868784007191778

`A051597(n)+A028326(n)`
-/

namespace A028263.P1308868784007191778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + A028326 n

end

end A028263.P1308868784007191778

namespace A028263

/-- `A051597(n)+A028326(n)` -/
def P1308868784007191778.Spec : Prop :=
  ∀ n, P1308868784007191778.a n = A028263 n

theorem P1308868784007191778.correct : P1308868784007191778.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P1308868784007191778.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028326, A028326.P7676793339942299677.a, A051597, A051597.P4383731425265306086.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P12030113941629108014

`A028276(n)-A007318(n)`
-/

namespace A028263.P12030113941629108014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n - A007318 n

end

end A028263.P12030113941629108014

namespace A028263

/-- `A028276(n)-A007318(n)` -/
def P12030113941629108014.Spec : Prop :=
  ∀ n, P12030113941629108014.a n = A028263 n

theorem P12030113941629108014.correct : P12030113941629108014.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P12030113941629108014.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028276, A028276.P15109551320821074576.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P14442219076423669294

`A028314(n)-A028326(n)`
-/

namespace A028263.P14442219076423669294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 n - A028326 n

end

end A028263.P14442219076423669294

namespace A028263

/-- `A028314(n)-A028326(n)` -/
def P14442219076423669294.Spec : Prop :=
  ∀ n, P14442219076423669294.a n = A028263 n

end A028263

/-! ## A028263.P9405349686252872098

`A028327(n)-A051597(n)`
-/

namespace A028263.P9405349686252872098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - A051597 n

end

end A028263.P9405349686252872098

namespace A028263

/-- `A028327(n)-A051597(n)` -/
def P9405349686252872098.Spec : Prop :=
  ∀ n, P9405349686252872098.a n = A028263 n

theorem P9405349686252872098.correct : P9405349686252872098.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P9405349686252872098.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028327, A028327.P9835590816428302231.a, A051597, A051597.P4383731425265306086.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P15467527307410325813

`A134636(n)-A051632(n)`
-/

namespace A028263.P15467527307410325813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134636 n - A051632 n

end

end A028263.P15467527307410325813

namespace A028263

/-- `A134636(n)-A051632(n)` -/
def P15467527307410325813.Spec : Prop :=
  ∀ n, P15467527307410325813.a n = A028263 n

theorem P15467527307410325813.correct : P15467527307410325813.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P15467527307410325813.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A051632, A051632.P5030505018056849433.a, A134636, A134636.P14217444213641303487.a, A051631, A051631.P14444125950979056489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P13650569248842623237

`A028276(n)-sqrt(A008459(n))`
-/

namespace A028263.P13650569248842623237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028276 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A028263.P13650569248842623237

namespace A028263

/-- `A028276(n)-sqrt(A008459(n))` -/
def P13650569248842623237.Spec : Prop :=
  ∀ n, P13650569248842623237.a n = (A028263 n : ℝ)

end A028263

/-! ## A028263.P3177418721069471964

`A007318(n)+A014430(n)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028263

/-- `A007318(n)+A014430(n)+1` -/
def P3177418721069471964.Spec : Prop :=
  ∀ n, P3177418721069471964.a n = A028263 n

theorem P3177418721069471964.correct : P3177418721069471964.Spec := by
  intro n
  simp only [A028263]

end A028263

/-! ## A028263.P3359312993041728283

`A135278(n)+A029656(n+1)`
-/

namespace A028263.P3359312993041728283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A029656 (n + 1)

end

end A028263.P3359312993041728283

namespace A028263

/-- `A135278(n)+A029656(n+1)` -/
def P3359312993041728283.Spec : Prop :=
  ∀ n, P3359312993041728283.a n = A028263 n

end A028263

/-! ## A028263.P4546339969233419701

`A014410(n+2)+A007318(n)`
-/

namespace A028263.P4546339969233419701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + A007318 n

end

end A028263.P4546339969233419701

namespace A028263

/-- `A014410(n+2)+A007318(n)` -/
def P4546339969233419701.Spec : Prop :=
  ∀ n, P4546339969233419701.a n = A028263 n

end A028263

/-! ## A028263.P12014461906731176567

`A014430(n)+A014473(n)+2`
-/

namespace A028263.P12014461906731176567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (A014473 n + 2)

end

end A028263.P12014461906731176567

namespace A028263

/-- `A014430(n)+A014473(n)+2` -/
def P12014461906731176567.Spec : Prop :=
  ∀ n, P12014461906731176567.a n = A028263 n

theorem P12014461906731176567.correct : P12014461906731176567.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P12014461906731176567.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P10658736310241766316

`A051597(n)+2*A007318(n)`
-/

namespace A028263.P10658736310241766316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + 2 * A007318 n

end

end A028263.P10658736310241766316

namespace A028263

/-- `A051597(n)+2*A007318(n)` -/
def P10658736310241766316.Spec : Prop :=
  ∀ n, P10658736310241766316.a n = A028263 n

theorem P10658736310241766316.correct : P10658736310241766316.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P10658736310241766316.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A051597, A051597.P4383731425265306086.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P1596401751831740633

`A051631(n)+2*A028326(n)`
-/

namespace A028263.P1596401751831740633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051631 n + 2 * A028326 n

end

end A028263.P1596401751831740633

namespace A028263

/-- `A051631(n)+2*A028326(n)` -/
def P1596401751831740633.Spec : Prop :=
  ∀ n, P1596401751831740633.a n = A028263 n

end A028263

/-! ## A028263.P10356017062637020744

`A028314(n)-2*A007318(n)`
-/

namespace A028263.P10356017062637020744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 n - 2 * A007318 n

end

end A028263.P10356017062637020744

namespace A028263

/-- `A028314(n)-2*A007318(n)` -/
def P10356017062637020744.Spec : Prop :=
  ∀ n, P10356017062637020744.a n = A028263 n

end A028263

/-! ## A028263.P7318085846335097364

`A007318(n)+A028327(n)/2`
-/

namespace A028263.P7318085846335097364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) + (A028327 n : ℚ) / 2

end

end A028263.P7318085846335097364

namespace A028263

/-- `A007318(n)+A028327(n)/2` -/
def P7318085846335097364.Spec : Prop :=
  ∀ n, P7318085846335097364.a n = (A028263 n : ℚ)

theorem P7318085846335097364.correct : P7318085846335097364.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P7318085846335097364.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028327, A028327.P9835590816428302231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P10995262233236738017

`2*A028276(n)-A028314(n)`
-/

namespace A028263.P10995262233236738017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028276 n - A028314 n

end

end A028263.P10995262233236738017

namespace A028263

/-- `2*A028276(n)-A028314(n)` -/
def P10995262233236738017.Spec : Prop :=
  ∀ n, P10995262233236738017.a n = A028263 n

end A028263

/-! ## A028263.P5772564051774845236

`(A028327(n)+A028326(n))/2`
-/

namespace A028263.P5772564051774845236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028327 n + A028326 n : ℚ) / 2

end

end A028263.P5772564051774845236

namespace A028263

/-- `(A028327(n)+A028326(n))/2` -/
def P5772564051774845236.Spec : Prop :=
  ∀ n, P5772564051774845236.a n = (A028263 n : ℚ)

theorem P5772564051774845236.correct : P5772564051774845236.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P5772564051774845236.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028326, A028326.P7676793339942299677.a, A028327, A028327.P9835590816428302231.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P831907648801274834

`2*A051597(n)-A051631(n)`
-/

namespace A028263.P831907648801274834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 n - A051631 n

end

end A028263.P831907648801274834

namespace A028263

/-- `2*A051597(n)-A051631(n)` -/
def P831907648801274834.Spec : Prop :=
  ∀ n, P831907648801274834.a n = A028263 n

end A028263

/-! ## A028263.P1206983047763150630

`A028276(n)-A028326(n)/2`
-/

namespace A028263.P1206983047763150630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028276 n : ℚ) - (A028326 n : ℚ) / 2

end

end A028263.P1206983047763150630

namespace A028263

/-- `A028276(n)-A028326(n)/2` -/
def P1206983047763150630.Spec : Prop :=
  ∀ n, P1206983047763150630.a n = (A028263 n : ℚ)

theorem P1206983047763150630.correct : P1206983047763150630.Spec := by
  intro n
  simp only [A028263, Nat.add_sub_cancel, A028263.P1206983047763150630.a, A028263.P3177418721069471964.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028276, A028276.P15109551320821074576.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028263

/-! ## A028263.P2980398093852052023

`A014410(n+2)+abs(A108086(n))`
-/

namespace A028263.P2980398093852052023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + |A108086 n|

end

end A028263.P2980398093852052023

namespace A028263

/-- `A014410(n+2)+abs(A108086(n))` -/
def P2980398093852052023.Spec : Prop :=
  ∀ n, P2980398093852052023.a n = A028263 n

end A028263

/-!
# A028264: Odd elements in 3-Pascal triangle A028262 (by row).

The programs for A028264, the canonical program `A028264.P3210421839007678457` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028264 has offset 0).

The definition of A028264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028264.P3210421839007678457

`A028262(eq[1, A028262(n)%2])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028264

/-- `A028262(eq[1, A028262(n)%2])` -/
def P3210421839007678457.Spec : Prop :=
  ∀ n, P3210421839007678457.a n = A028264 n

theorem P3210421839007678457.correct : P3210421839007678457.Spec := by
  intro n
  simp only [A028264]

end A028264

/-! ## A028264.P1728890379615081123

`A028262(eq[1, gcd(2, A028262(n))])`
-/

namespace A028264.P1728890379615081123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028264.P1728890379615081123

namespace A028264

/-- `A028262(eq[1, gcd(2, A028262(n))])` -/
def P1728890379615081123.Spec : Prop :=
  ∀ n, P1728890379615081123.a n = A028264 n

end A028264

/-! ## A028264.P6819924612778845106

`A028262(eq[1, and(1, A028262(n))])`
-/

namespace A028264.P6819924612778845106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A028262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P6819924612778845106

namespace A028264

/-- `A028262(eq[1, and(1, A028262(n))])` -/
def P6819924612778845106.Spec : Prop :=
  ∀ n, P6819924612778845106.a n = A028264 n

end A028264

/-! ## A028264.P14139761169747146343

`filter[A028262(n), A000035(#)]`
-/

namespace A028264.P14139761169747146343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028264.P14139761169747146343

namespace A028264

/-- `filter[A028262(n), A000035(#)]` -/
def P14139761169747146343.Spec : Prop :=
  ∀ n, P14139761169747146343.a n = A028264 n

end A028264

/-! ## A028264.P17438676637007650130

`A028262(eq[0, A059841(A028262(n))])`
-/

namespace A028264.P17438676637007650130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A028262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P17438676637007650130

namespace A028264

/-- `A028262(eq[0, A059841(A028262(n))])` -/
def P17438676637007650130.Spec : Prop :=
  ∀ n, P17438676637007650130.a n = A028264 n

end A028264

/-! ## A028264.P3834495517704331190

`A028262(eq[1, A000035(A028262(n))])`
-/

namespace A028264.P3834495517704331190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P3834495517704331190

namespace A028264

/-- `A028262(eq[1, A000035(A028262(n))])` -/
def P3834495517704331190.Spec : Prop :=
  ∀ n, P3834495517704331190.a n = A028264 n

end A028264

/-! ## A028264.P16369479253692328815

`A028262(eq[1, A001511(A028262(n))])`
-/

namespace A028264.P16369479253692328815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A028262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P16369479253692328815

namespace A028264

/-- `A028262(eq[1, A001511(A028262(n))])` -/
def P16369479253692328815.Spec : Prop :=
  ∀ n, P16369479253692328815.a n = A028264 n

end A028264

/-! ## A028264.P16813121842248593779

`A028262(eq[1, A006519(A028262(n))])`
-/

namespace A028264.P16813121842248593779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A028262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P16813121842248593779

namespace A028264

/-- `A028262(eq[1, A006519(A028262(n))])` -/
def P16813121842248593779.Spec : Prop :=
  ∀ n, P16813121842248593779.a n = A028264 n

end A028264

/-! ## A028264.P7329515322158575289

`A028262(eq[2, A000034(A028262(n))])`
-/

namespace A028264.P7329515322158575289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P7329515322158575289

namespace A028264

/-- `A028262(eq[2, A000034(A028262(n))])` -/
def P7329515322158575289.Spec : Prop :=
  ∀ n, P7329515322158575289.a n = A028264 n

end A028264

/-! ## A028264.P10448000503448517092

`A028262(eq[2, A053669(A028262(n))])`
-/

namespace A028264.P10448000503448517092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A028262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028264.P10448000503448517092

namespace A028264

/-- `A028262(eq[2, A053669(A028262(n))])` -/
def P10448000503448517092.Spec : Prop :=
  ∀ n, P10448000503448517092.a n = A028264 n

end A028264

/-!
# A028265: Odd elements in 3-Pascal triangle A028262 (by row) that are not 1.

The programs for A028265, the canonical program `A028265.P5597927285948567232` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028265 has offset 1).

The definition of A028265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028265.P5597927285948567232

`A028264(lt[1, A028264(n)])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A028265

/-- `A028264(lt[1, A028264(n)])` -/
def P5597927285948567232.Spec : Prop :=
  ∀ n, P5597927285948567232.a n = A028265 (n + 1)

theorem P5597927285948567232.correct : P5597927285948567232.Spec := by
  intro n
  simp only [A028265, Nat.add_sub_cancel]

end A028265

/-! ## A028265.P2635786061084691728

`A028264(comp[eq[1, A028264(n)]])`
-/

namespace A028265.P2635786061084691728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A028265.P2635786061084691728

namespace A028265

/-- `A028264(comp[eq[1, A028264(n)]])` -/
def P2635786061084691728.Spec : Prop :=
  ∀ n, P2635786061084691728.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P1400390777706989425

`A028263(eq[1, A028263(n)%2])`
-/

namespace A028265.P1400390777706989425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028263 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028265.P1400390777706989425

namespace A028265

/-- `A028263(eq[1, A028263(n)%2])` -/
def P1400390777706989425.Spec : Prop :=
  ∀ n, P1400390777706989425.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P888181365839038609

`A028263(eq[1, gcd(2, A028263(n))])`
-/

namespace A028265.P888181365839038609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028265.P888181365839038609

namespace A028265

/-- `A028263(eq[1, gcd(2, A028263(n))])` -/
def P888181365839038609.Spec : Prop :=
  ∀ n, P888181365839038609.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P2747710133574736594

`A028263(eq[1, and(1, A028263(n))])`
-/

namespace A028265.P2747710133574736594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A028263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028265.P2747710133574736594

namespace A028265

/-- `A028263(eq[1, and(1, A028263(n))])` -/
def P2747710133574736594.Spec : Prop :=
  ∀ n, P2747710133574736594.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P6145156658195627081

`filter[A028264(n), A014306(#)]`
-/

namespace A028265.P6145156658195627081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A028265.P6145156658195627081

namespace A028265

/-- `filter[A028264(n), A014306(#)]` -/
def P6145156658195627081.Spec : Prop :=
  ∀ n, P6145156658195627081.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P4191932323079757873

`filter[A028264(n), A347523(#)]`
-/

namespace A028265.P4191932323079757873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A028265.P4191932323079757873

namespace A028265

/-- `filter[A028264(n), A347523(#)]` -/
def P4191932323079757873.Spec : Prop :=
  ∀ n, P4191932323079757873.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P5655580862027420492

`A028263(eq[1, A329900(A028263(n))])`
-/

namespace A028265.P5655580862027420492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A028263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028265.P5655580862027420492

namespace A028265

/-- `A028263(eq[1, A329900(A028263(n))])` -/
def P5655580862027420492.Spec : Prop :=
  ∀ n, P5655580862027420492.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P4505229800595244852

`A028263(eq[1, A115364(A028263(n))])`
-/

namespace A028265.P4505229800595244852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A028263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028265.P4505229800595244852

namespace A028265

/-- `A028263(eq[1, A115364(A028263(n))])` -/
def P4505229800595244852.Spec : Prop :=
  ∀ n, P4505229800595244852.a n = A028265 (n + 1)

end A028265

/-! ## A028265.P6532093743936000661

`A028263(eq[2, A141310(A028263(n))])`
-/

namespace A028265.P6532093743936000661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A028263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028265.P6532093743936000661

namespace A028265

/-- `A028263(eq[2, A141310(A028263(n))])` -/
def P6532093743936000661.Spec : Prop :=
  ∀ n, P6532093743936000661.a n = A028265 (n + 1)

end A028265

/-!
# A028266: Even elements in 3-Pascal triangle A028262 (by row).

The programs for A028266, the canonical program `A028266.P10744337187639313587` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028266 has offset 0).

The definition of A028266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8527 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028266.P11598641329215124590

`2*A051297(n)`
-/

namespace A028266.P11598641329215124590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051297 n

end

end A028266.P11598641329215124590

namespace A028266

/-- `2*A051297(n)` -/
def P11598641329215124590.Spec : Prop :=
  ∀ n, P11598641329215124590.a n = A028266 n

end A028266

/-! ## A028266.P12845433752750670619

`A051297(A028310(n))+A051297(n)`
-/

namespace A028266.P12845433752750670619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051297 (A028310 n).toNat + A051297 n

end

end A028266.P12845433752750670619

namespace A028266

/-- `A051297(A028310(n))+A051297(n)` -/
def P12845433752750670619.Spec : Prop :=
  ∀ n, P12845433752750670619.a n = A028266 n

end A028266

/-! ## A028266.P3772879087303915845

`A051297(A000007(n)+n)+A051297(n)`
-/

namespace A028266.P3772879087303915845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051297 (A000007 n + (n : ℤ)).toNat + A051297 n

end

end A028266.P3772879087303915845

namespace A028266

/-- `A051297(A000007(n)+n)+A051297(n)` -/
def P3772879087303915845.Spec : Prop :=
  ∀ n, P3772879087303915845.a n = A028266 n

end A028266

/-! ## A028266.P15015563824606776174

`A051297(lcm(n, A209615(n+1)))+A051297(n)`
-/

namespace A028266.P15015563824606776174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051297 (Int.lcm (n : ℤ) (A209615 (n + 1))) + A051297 n

end

end A028266.P15015563824606776174

namespace A028266

/-- `A051297(lcm(n, A209615(n+1)))+A051297(n)` -/
def P15015563824606776174.Spec : Prop :=
  ∀ n, P15015563824606776174.a n = A028266 n

end A028266

/-! ## A028266.P10744337187639313587

`A028263(eq[2, gcd(2, A028263(n))])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028266

/-- `A028263(eq[2, gcd(2, A028263(n))])` -/
def P10744337187639313587.Spec : Prop :=
  ∀ n, P10744337187639313587.a n = A028266 n

theorem P10744337187639313587.correct : P10744337187639313587.Spec := by
  intro n
  simp only [A028266]

end A028266

/-! ## A028266.P16437022762607766322

`A051297(n)+A051297(record[A124625(n)]-n)`
-/

namespace A028266.P16437022762607766322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051297 n + A051297 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A028266.P16437022762607766322

namespace A028266

/-- `A051297(n)+A051297(record[A124625(n)]-n)` -/
def P16437022762607766322.Spec : Prop :=
  ∀ n, P16437022762607766322.a n = A028266 n

end A028266

/-! ## A028266.P3974152171893799006

`A004277(A051297(n))`
-/

namespace A028266.P3974152171893799006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051297 n).toNat

end

end A028266.P3974152171893799006

namespace A028266

/-- `A004277(A051297(n))` -/
def P3974152171893799006.Spec : Prop :=
  ∀ n, P3974152171893799006.a n = A028266 n

end A028266

/-! ## A028266.P7945443042127487009

`A004275(A051297(n)+1)`
-/

namespace A028266.P7945443042127487009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A051297 n + 1).toNat

end

end A028266.P7945443042127487009

namespace A028266

/-- `A004275(A051297(n)+1)` -/
def P7945443042127487009.Spec : Prop :=
  ∀ n, P7945443042127487009.a n = A028266 n

end A028266

/-! ## A028266.P3073077677087927963

`A004278(A051297(n)+2)`
-/

namespace A028266.P3073077677087927963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A051297 n + 2).toNat

end

end A028266.P3073077677087927963

namespace A028266

/-- `A004278(A051297(n)+2)` -/
def P3073077677087927963.Spec : Prop :=
  ∀ n, P3073077677087927963.a n = A028266 n

end A028266

/-!
# A028268: Distinct odd elements in 3-Pascal triangle A028262 (by row).

The programs for A028268, there is no canonical definition to state claims against.
-/

/-! ## A028268.P3535898706948117360

`filter[A028267(n), A000035(#)]`
-/

namespace A028268.P3535898706948117360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028268.P3535898706948117360

/-!
# A028269: Distinct even elements in 3-Pascal triangle A028262 (by row).

The programs for A028269, there is no canonical definition to state claims against.
-/

/-! ## A028269.P7273150010048982515

`filter[A028267(n), A059841(#)]`
-/

namespace A028269.P7273150010048982515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A028269.P7273150010048982515

/-! ## A028269.P12555716184201044365

`filter[A028267(n), A267043(#)]`
-/

namespace A028269.P12555716184201044365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A028269.P12555716184201044365

/-! ## A028269.P7863653133022912364

`filter[A028267(n+1), A135528(#)]`
-/

namespace A028269.P7863653133022912364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A028269.P7863653133022912364

/-! ## A028269.P8335402806036047130

`filter[A028267(n+1), A266591(#)]`
-/

namespace A028269.P8335402806036047130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A028269.P8335402806036047130

/-!
# A028270: Central elements in 3-Pascal triangle A028262 (by row).

The programs for A028270, the canonical program `A028270.P16565106357147895899` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028270 has offset 0).

The definition of A028270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028270.P16565106357147895899

`A000984(n)+A323230(n)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028270

/-- `A000984(n)+A323230(n)-1` -/
def P16565106357147895899.Spec : Prop :=
  ∀ n, P16565106357147895899.a n = A028270 n

theorem P16565106357147895899.correct : P16565106357147895899.Spec := by
  intro n
  simp only [A028270]

end A028270

/-! ## A028270.P16070370487319311351

`A213290(2*n)+A057428(n)`
-/

namespace A028270.P16070370487319311351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213290 (2 * n) + A057428 n

end

end A028270.P16070370487319311351

namespace A028270

/-- `A213290(2*n)+A057428(n)` -/
def P16070370487319311351.Spec : Prop :=
  ∀ n, P16070370487319311351.a n = A028270 n

end A028270

/-! ## A028270.P5514966487782398525

`A323230(n)+A014495(2*n)`
-/

namespace A028270.P5514966487782398525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 n + A014495 (2 * n)

end

end A028270.P5514966487782398525

namespace A028270

/-- `A323230(n)+A014495(2*n)` -/
def P5514966487782398525.Spec : Prop :=
  ∀ n, P5514966487782398525.a n = A028270 n

end A028270

/-! ## A028270.P7955363146717813837

`A213290(2*n)-A057427(n)`
-/

namespace A028270.P7955363146717813837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213290 (2 * n) - A057427 n

end

end A028270.P7955363146717813837

namespace A028270

/-- `A213290(2*n)-A057427(n)` -/
def P7955363146717813837.Spec : Prop :=
  ∀ n, P7955363146717813837.a n = A028270 n

end A028270

/-! ## A028270.P16062449860876735445

`A000984(n)+n*A120588(n)`
-/

namespace A028270.P16062449860876735445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (n : ℤ) * A120588 n

end

end A028270.P16062449860876735445

namespace A028270

/-- `A000984(n)+n*A120588(n)` -/
def P16062449860876735445.Spec : Prop :=
  ∀ n, P16062449860876735445.a n = A028270 n

end A028270

/-! ## A028270.P15446222111589836587

`A028283(n)+n*A115140(n)`
-/

namespace A028270.P15446222111589836587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028283 n + (n : ℤ) * A115140 n

end

end A028270.P15446222111589836587

namespace A028270

/-- `A028283(n)+n*A115140(n)` -/
def P15446222111589836587.Spec : Prop :=
  ∀ n, P15446222111589836587.a n = A028270 n

end A028270

/-! ## A028270.P2592707709716375954

`A000108(n)+n*A167422(n)`
-/

namespace A028270.P2592707709716375954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ) * A167422 n

end

end A028270.P2592707709716375954

namespace A028270

/-- `A000108(n)+n*A167422(n)` -/
def P2592707709716375954.Spec : Prop :=
  ∀ n, P2592707709716375954.a n = A028270 n

end A028270

/-! ## A028270.P9608505864625047073

`A000984(n)-n*A115140(n)`
-/

namespace A028270.P9608505864625047073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (n : ℤ) * A115140 n

end

end A028270.P9608505864625047073

namespace A028270

/-- `A000984(n)-n*A115140(n)` -/
def P9608505864625047073.Spec : Prop :=
  ∀ n, P9608505864625047073.a n = A028270 n

end A028270

/-! ## A028270.P13661011894602374737

`A028283(n)-n*A120588(n)`
-/

namespace A028270.P13661011894602374737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028283 n - (n : ℤ) * A120588 n

end

end A028270.P13661011894602374737

namespace A028270

/-- `A028283(n)-n*A120588(n)` -/
def P13661011894602374737.Spec : Prop :=
  ∀ n, P13661011894602374737.a n = A028270 n

end A028270

/-! ## A028270.P5334813376588956213

`record[A065033(5*n)*A097331(n)]`
-/

namespace A028270.P5334813376588956213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (5 * n) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028270.P5334813376588956213

namespace A028270

/-- `record[A065033(5*n)*A097331(n)]` -/
def P5334813376588956213.Spec : Prop :=
  ∀ n, P5334813376588956213.a n = A028270 n

end A028270

/-! ## A028270.P14028788290851633179

`record[A081668(n)]+n*A120588(n)`
-/

namespace A028270.P14028788290851633179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * A120588 n

end

end A028270.P14028788290851633179

namespace A028270

/-- `record[A081668(n)]+n*A120588(n)` -/
def P14028788290851633179.Spec : Prop :=
  ∀ n, P14028788290851633179.a n = A028270 n

end A028270

/-! ## A028270.P2806827228339955866

`A323230(n+1)+A323230(n)-2`
-/

namespace A028270.P2806827228339955866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 (n + 1) + (A323230 n - 2)

end

end A028270.P2806827228339955866

namespace A028270

/-- `A323230(n+1)+A323230(n)-2` -/
def P2806827228339955866.Spec : Prop :=
  ∀ n, P2806827228339955866.a n = A028270 n

end A028270

/-! ## A028270.P11009616766398609161

`(A111284(n+1)+n)*A120588(n)`
-/

namespace A028270.P11009616766398609161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111284 (n + 1) + (n : ℤ)) * A120588 n

end

end A028270.P11009616766398609161

namespace A028270

/-- `(A111284(n+1)+n)*A120588(n)` -/
def P11009616766398609161.Spec : Prop :=
  ∀ n, P11009616766398609161.a n = A028270 n

end A028270

/-! ## A028270.P2713182796148753834

`A000984(n)+record[A126869(abs(1-n))]`
-/

namespace A028270.P2713182796148753834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028270.P2713182796148753834

namespace A028270

/-- `A000984(n)+record[A126869(abs(1-n))]` -/
def P2713182796148753834.Spec : Prop :=
  ∀ n, P2713182796148753834.a n = A028270 n

end A028270

/-! ## A028270.P6917143022446366308

`A029651(n)-A037955(A004275(n))`
-/

namespace A028270.P6917143022446366308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A037955 (A004275 n).toNat

end

end A028270.P6917143022446366308

namespace A028270

/-- `A029651(n)-A037955(A004275(n))` -/
def P6917143022446366308.Spec : Prop :=
  ∀ n, P6917143022446366308.a n = A028270 n

end A028270

/-! ## A028270.P6809039562160750761

`A028329(n)-Δ[A323230(n)]`
-/

namespace A028270.P6809039562160750761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - (f1 (n + 1) - f1 n)

end

end A028270.P6809039562160750761

namespace A028270

/-- `A028329(n)-Δ[A323230(n)]` -/
def P6809039562160750761.Spec : Prop :=
  ∀ n, P6809039562160750761.a n = A028270 n

end A028270

/-! ## A028270.P10861128768350594643

`(A028283(n)+A000984(n))/2`
-/

namespace A028270.P10861128768350594643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028283 n + A000984 n : ℚ) / 2

end

end A028270.P10861128768350594643

namespace A028270

/-- `(A028283(n)+A000984(n))/2` -/
def P10861128768350594643.Spec : Prop :=
  ∀ n, P10861128768350594643.a n = (A028270 n : ℚ)

theorem P10861128768350594643.correct : P10861128768350594643.Spec := by
  intro n
  simp only [A028270, Nat.add_sub_cancel, A028270.P10861128768350594643.a, A028270.P16565106357147895899.a, A000984, A000984.P7946844122574426130.a, A028283, A028283.P13523606839211364512.a, A323230, A323230.P7973305166393127570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028270

/-!
# A028271: Elements to right of central elements in 3-Pascal triangle A028262.

The programs for A028271, the canonical program `A028271.P5697614823521881732` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028271 has offset 0).

The definition of A028271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028271.P5697614823521881732

`A028262(eq[0, A152815(n)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028271

/-- `A028262(eq[0, A152815(n)])` -/
def P5697614823521881732.Spec : Prop :=
  ∀ n, P5697614823521881732.a n = A028271 n

theorem P5697614823521881732.correct : P5697614823521881732.Spec := by
  intro n
  simp only [A028271]

end A028271

/-! ## A028271.P12375592745918365363

`A028262(eq[1, A340507(n)])`
-/

namespace A028271.P12375592745918365363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P12375592745918365363

namespace A028271

/-- `A028262(eq[1, A340507(n)])` -/
def P12375592745918365363.Spec : Prop :=
  ∀ n, P12375592745918365363.a n = A028271 n

end A028271

/-! ## A028271.P7261331580516497705

`A028262(eq[0, A089627(n)])`
-/

namespace A028271.P7261331580516497705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P7261331580516497705

namespace A028271

/-- `A028262(eq[0, A089627(n)])` -/
def P7261331580516497705.Spec : Prop :=
  ∀ n, P7261331580516497705.a n = A028271 n

end A028271

/-! ## A028271.P17530472088431895147

`A028262(record[A061579(A278818(n))])`
-/

namespace A028271.P17530472088431895147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A278818 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028271.P17530472088431895147

namespace A028271

/-- `A028262(record[A061579(A278818(n))])` -/
def P17530472088431895147.Spec : Prop :=
  ∀ n, P17530472088431895147.a n = A028271 n

end A028271

/-! ## A028271.P6775061810663322801

`A028262(eq[0, A052553(n)])`
-/

namespace A028271.P6775061810663322801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P6775061810663322801

namespace A028271

/-- `A028262(eq[0, A052553(n)])` -/
def P6775061810663322801.Spec : Prop :=
  ∀ n, P6775061810663322801.a n = A028271 n

end A028271

/-! ## A028271.P7253545870855395847

`A028262(eq[0, A061896(n)])`
-/

namespace A028271.P7253545870855395847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P7253545870855395847

namespace A028271

/-- `A028262(eq[0, A061896(n)])` -/
def P7253545870855395847.Spec : Prop :=
  ∀ n, P7253545870855395847.a n = A028271 n

end A028271

/-! ## A028271.P14894384959188756155

`A028262(eq[0, A003988(n+1)])`
-/

namespace A028271.P14894384959188756155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P14894384959188756155

namespace A028271

/-- `A028262(eq[0, A003988(n+1)])` -/
def P14894384959188756155.Spec : Prop :=
  ∀ n, P14894384959188756155.a n = A028271 n

end A028271

/-! ## A028271.P9452208758959519326

`A028262(eq[0, A185914(n+1)])`
-/

namespace A028271.P9452208758959519326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P9452208758959519326

namespace A028271

/-- `A028262(eq[0, A185914(n+1)])` -/
def P9452208758959519326.Spec : Prop :=
  ∀ n, P9452208758959519326.a n = A028271 n

end A028271

/-! ## A028271.P14413661839597844132

`A028262(eq[0, A144299(n)])`
-/

namespace A028271.P14413661839597844132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P14413661839597844132

namespace A028271

/-- `A028262(eq[0, A144299(n)])` -/
def P14413661839597844132.Spec : Prop :=
  ∀ n, P14413661839597844132.a n = A028271 n

end A028271

/-! ## A028271.P18004123181687947006

`A028284(n)-A159854(A274428(n+1))`
-/

namespace A028271.P18004123181687947006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028284 n - A159854 (A274428 (n + 1)).toNat

end

end A028271.P18004123181687947006

namespace A028271

/-- `A028284(n)-A159854(A274428(n+1))` -/
def P18004123181687947006.Spec : Prop :=
  ∀ n, P18004123181687947006.a n = A028271 n

end A028271

/-! ## A028271.P5381509164895993888

`A028262(eq[0, A238347(n+1)])`
-/

namespace A028271.P5381509164895993888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028271.P5381509164895993888

namespace A028271

/-- `A028262(eq[0, A238347(n+1)])` -/
def P5381509164895993888.Spec : Prop :=
  ∀ n, P5381509164895993888.a n = A028271 n

end A028271

/-!
# A028272: Elements to right of central elements in 3-Pascal triangle A028262 that are not 1.

The programs for A028272, the canonical program `A028272.P16658782118669179364` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028272 has offset 0).

The definition of A028272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028272.P6991851038567272399

`A028324(n)-A028330(n)`
-/

namespace A028272.P6991851038567272399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028324 n - A028330 n

end

end A028272.P6991851038567272399

namespace A028272

/-- `A028324(n)-A028330(n)` -/
def P6991851038567272399.Spec : Prop :=
  ∀ n, P6991851038567272399.a n = A028272 n

theorem P6991851038567272399.correct : P6991851038567272399.Spec := by
  intro n
  simp only [A028272, Nat.add_sub_cancel, A028272.P6991851038567272399.a, A028272.P16658782118669179364.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028324, A028324.P3744947203801218243.a, A028330, A028330.P6625420377303343371.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A028285, A028285.P5292532840332202507.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028272

/-! ## A028272.P12215174010743267761

`A028285(n)-A014413(n+1)`
-/

namespace A028272.P12215174010743267761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n - A014413 (n + 1)

end

end A028272.P12215174010743267761

namespace A028272

/-- `A028285(n)-A014413(n+1)` -/
def P12215174010743267761.Spec : Prop :=
  ∀ n, P12215174010743267761.a n = A028272 n

theorem P12215174010743267761.correct : P12215174010743267761.Spec := by
  intro n
  simp only [A028272, Nat.add_sub_cancel, A028272.P12215174010743267761.a, A028272.P16658782118669179364.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028272

/-! ## A028272.P10356055491561199671

`2*A028285(n)-A028324(n)`
-/

namespace A028272.P10356055491561199671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028285 n - A028324 n

end

end A028272.P10356055491561199671

namespace A028272

/-- `2*A028285(n)-A028324(n)` -/
def P10356055491561199671.Spec : Prop :=
  ∀ n, P10356055491561199671.a n = A028272 n

theorem P10356055491561199671.correct : P10356055491561199671.Spec := by
  intro n
  simp only [A028272, Nat.add_sub_cancel, A028272.P10356055491561199671.a, A028272.P16658782118669179364.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A028324, A028324.P3744947203801218243.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028272

/-! ## A028272.P4321849911115914969

`A028285(n)-A028330(n)/2`
-/

namespace A028272.P4321849911115914969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028285 n : ℚ) - (A028330 n : ℚ) / 2

end

end A028272.P4321849911115914969

namespace A028272

/-- `A028285(n)-A028330(n)/2` -/
def P4321849911115914969.Spec : Prop :=
  ∀ n, P4321849911115914969.a n = (A028272 n : ℚ)

theorem P4321849911115914969.correct : P4321849911115914969.Spec := by
  intro n
  simp only [A028272, Nat.add_sub_cancel, A028272.P4321849911115914969.a, A028272.P16658782118669179364.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A028330, A028330.P6625420377303343371.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028272

/-! ## A028272.P16658782118669179364

`A014413(n+1)+A014411(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028272

/-- `A014413(n+1)+A014411(n+1)` -/
def P16658782118669179364.Spec : Prop :=
  ∀ n, P16658782118669179364.a n = A028272 n

theorem P16658782118669179364.correct : P16658782118669179364.Spec := by
  intro n
  simp only [A028272]

end A028272

/-! ## A028272.P13424228072854205826

`(A028285(n)+A014411(n+1))/2`
-/

namespace A028272.P13424228072854205826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028285 n + A014411 (n + 1) : ℚ) / 2

end

end A028272.P13424228072854205826

namespace A028272

/-- `(A028285(n)+A014411(n+1))/2` -/
def P13424228072854205826.Spec : Prop :=
  ∀ n, P13424228072854205826.a n = (A028272 n : ℚ)

theorem P13424228072854205826.correct : P13424228072854205826.Spec := by
  intro n
  simp only [A028272, Nat.add_sub_cancel, A028272.P13424228072854205826.a, A028272.P16658782118669179364.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028285, A028285.P5292532840332202507.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028272

/-! ## A028272.P5778740745733833139

`A014411(n+1)+A028330(n)/2`
-/

namespace A028272.P5778740745733833139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014411 (n + 1) : ℚ) + (A028330 n : ℚ) / 2

end

end A028272.P5778740745733833139

namespace A028272

/-- `A014411(n+1)+A028330(n)/2` -/
def P5778740745733833139.Spec : Prop :=
  ∀ n, P5778740745733833139.a n = (A028272 n : ℚ)

theorem P5778740745733833139.correct : P5778740745733833139.Spec := by
  intro n
  simp only [A028272, Nat.add_sub_cancel, A028272.P5778740745733833139.a, A028272.P16658782118669179364.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028330, A028330.P6625420377303343371.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028272

/-! ## A028272.P2121392782876069264

`A028324(n)-2*A014413(n+1)`
-/

namespace A028272.P2121392782876069264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028324 n - 2 * A014413 (n + 1)

end

end A028272.P2121392782876069264

namespace A028272

/-- `A028324(n)-2*A014413(n+1)` -/
def P2121392782876069264.Spec : Prop :=
  ∀ n, P2121392782876069264.a n = A028272 n

theorem P2121392782876069264.correct : P2121392782876069264.Spec := by
  intro n
  simp only [A028272, Nat.add_sub_cancel, A028272.P2121392782876069264.a, A028272.P16658782118669179364.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028324, A028324.P3744947203801218243.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A028285, A028285.P5292532840332202507.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028272

/-! ## A028272.P12610883967016884424

`A014413(n+1)+A014413(A049068(n+1))`
-/

namespace A028272.P12610883967016884424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) + A014413 (A049068 (n + 1)).toNat

end

end A028272.P12610883967016884424

namespace A028272

/-- `A014413(n+1)+A014413(A049068(n+1))` -/
def P12610883967016884424.Spec : Prop :=
  ∀ n, P12610883967016884424.a n = A028272 n

end A028272

/-! ## A028272.P3236034417938772948

`A028271(A183569(n+1))`
-/

namespace A028272.P3236034417938772948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 (A183569 (n + 1)).toNat

end

end A028272.P3236034417938772948

namespace A028272

/-- `A028271(A183569(n+1))` -/
def P3236034417938772948.Spec : Prop :=
  ∀ n, P3236034417938772948.a n = A028272 n

end A028272

/-! ## A028272.P11950852195359699102

`A028271(lt[1, A028271(n)])`
-/

namespace A028272.P11950852195359699102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028272.P11950852195359699102

namespace A028272

/-- `A028271(lt[1, A028271(n)])` -/
def P11950852195359699102.Spec : Prop :=
  ∀ n, P11950852195359699102.a n = A028272 n

end A028272

/-! ## A028272.P13090371145763058903

`A028323(lt[1, A028323(n)])-A028330(n)`
-/

namespace A028272.P13090371145763058903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A028330 n

end

end A028272.P13090371145763058903

namespace A028272

/-- `A028323(lt[1, A028323(n)])-A028330(n)` -/
def P13090371145763058903.Spec : Prop :=
  ∀ n, P13090371145763058903.a n = A028272 n

end A028272

/-! ## A028272.P15387564641566665402

`(A028330(A183569(n+1))+A028330(n))/2`
-/

namespace A028272.P15387564641566665402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028330 (A183569 (n + 1)).toNat + A028330 n : ℚ) / 2

end

end A028272.P15387564641566665402

namespace A028272

/-- `(A028330(A183569(n+1))+A028330(n))/2` -/
def P15387564641566665402.Spec : Prop :=
  ∀ n, P15387564641566665402.a n = (A028272 n : ℚ)

end A028272

/-! ## A028272.P10524554112883748807

`A028263(eq[0, A052553(n)])`
-/

namespace A028272.P10524554112883748807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028272.P10524554112883748807

namespace A028272

/-- `A028263(eq[0, A052553(n)])` -/
def P10524554112883748807.Spec : Prop :=
  ∀ n, P10524554112883748807.a n = A028272 n

end A028272

/-! ## A028272.P10675129142185152960

`A028263(eq[0, A061896(n)])`
-/

namespace A028272.P10675129142185152960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028272.P10675129142185152960

namespace A028272

/-- `A028263(eq[0, A061896(n)])` -/
def P10675129142185152960.Spec : Prop :=
  ∀ n, P10675129142185152960.a n = A028272 n

end A028272

/-! ## A028272.P2263061961033599593

`A028263(eq[0, A209599(n)])`
-/

namespace A028272.P2263061961033599593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028272.P2263061961033599593

namespace A028272

/-- `A028263(eq[0, A209599(n)])` -/
def P2263061961033599593.Spec : Prop :=
  ∀ n, P2263061961033599593.a n = A028272 n

end A028272

/-! ## A028272.P12106055700124112942

`A028263(eq[0, A003988(n+1)])`
-/

namespace A028272.P12106055700124112942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028272.P12106055700124112942

namespace A028272

/-- `A028263(eq[0, A003988(n+1)])` -/
def P12106055700124112942.Spec : Prop :=
  ∀ n, P12106055700124112942.a n = A028272 n

end A028272

/-! ## A028272.P13100530242910422320

`A028263(eq[0, A185914(n+1)])`
-/

namespace A028272.P13100530242910422320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028272.P13100530242910422320

namespace A028272

/-- `A028263(eq[0, A185914(n+1)])` -/
def P13100530242910422320.Spec : Prop :=
  ∀ n, P13100530242910422320.a n = A028272 n

end A028272

/-! ## A028272.P5142785206609565922

`A028263(lt[A025581(n), A002262(n)])`
-/

namespace A028272.P5142785206609565922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028272.P5142785206609565922

namespace A028272

/-- `A028263(lt[A025581(n), A002262(n)])` -/
def P5142785206609565922.Spec : Prop :=
  ∀ n, P5142785206609565922.a n = A028272 n

end A028272

/-! ## A028272.P479525898205051398

`A028263(lt[A004736(n+1), A002260(n+1)])`
-/

namespace A028272.P479525898205051398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028272.P479525898205051398

namespace A028272

/-- `A028263(lt[A004736(n+1), A002260(n+1)])` -/
def P479525898205051398.Spec : Prop :=
  ∀ n, P479525898205051398.a n = A028272 n

end A028272

/-!
# A028273: Even elements to right of central elements in 3-Pascal triangle A028262.

The programs for A028273, there is no canonical definition to state claims against.
-/

/-! ## A028273.P3677089360848380294

`2*A051298(n)`
-/

namespace A028273.P3677089360848380294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051298 n

end

end A028273.P3677089360848380294

/-! ## A028273.P4239112180493006438

`A051298(A023443(n)+1)+A051298(n)`
-/

namespace A028273.P4239112180493006438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 (A023443 n + 1).toNat + A051298 n

end

end A028273.P4239112180493006438

/-! ## A028273.P9669570603907007942

`A051298(A005843(n)/2)+A051298(n)`
-/

namespace A028273.P9669570603907007942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051298 n

end

end A028273.P9669570603907007942

/-! ## A028273.P10564970333019368484

`A051298(A005843(n)-n)+A051298(n)`
-/

namespace A028273.P10564970333019368484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 (A005843 n - (n : ℤ)).toNat + A051298 n

end

end A028273.P10564970333019368484

/-! ## A028273.P12824961871665985636

`A051298(A000027(n+1)-1)+A051298(n)`
-/

namespace A028273.P12824961871665985636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 (A000027 (n + 1) - 1).toNat + A051298 n

end

end A028273.P12824961871665985636

/-! ## A028273.P11545212385149091893

`A051298(log2(A000079(n)))+A051298(n)`
-/

namespace A028273.P11545212385149091893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat + A051298 n

end

end A028273.P11545212385149091893

/-! ## A028273.P1220370757569486780

`A051298(A025581(∑[n]))+A051298(n)`
-/

namespace A028273.P1220370757569486780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051298 (A025581 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A051298 n

end

end A028273.P1220370757569486780

/-! ## A028273.P1060061974405138373

`A000027(A051298(n)+A051298(n))`
-/

namespace A028273.P1060061974405138373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051298 n + A051298 n).toNat

end

end A028273.P1060061974405138373

/-!
# A028274: Odd elements (greater than 1) to right of central elements in 3-Pascal triangle A028262.

The programs for A028274, the canonical program `A028274.P11794825833933731270` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028274 has offset 1).

The definition of A028274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028274.P11794825833933731270

`A028272(eq[1, A028272(n)%2])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A028274

/-- `A028272(eq[1, A028272(n)%2])` -/
def P11794825833933731270.Spec : Prop :=
  ∀ n, P11794825833933731270.a n = A028274 (n + 1)

theorem P11794825833933731270.correct : P11794825833933731270.Spec := by
  intro n
  simp only [A028274, Nat.add_sub_cancel]

end A028274

/-! ## A028274.P11772110381125610277

`A028272(record[(n+1)/gcd(2, A028272(n+1))])`
-/

namespace A028274.P11772110381125610277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A028272 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A028274.P11772110381125610277

namespace A028274

/-- `A028272(record[(n+1)/gcd(2, A028272(n+1))])` -/
def P11772110381125610277.Spec : Prop :=
  ∀ n, P11772110381125610277.a n = A028274 (n + 1)

end A028274

/-! ## A028274.P10128110354472145907

`A028272(eq[1, A115364(A028272(n))])`
-/

namespace A028274.P10128110354472145907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115364 (A028272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028274.P10128110354472145907

namespace A028274

/-- `A028272(eq[1, A115364(A028272(n))])` -/
def P10128110354472145907.Spec : Prop :=
  ∀ n, P10128110354472145907.a n = A028274 (n + 1)

end A028274

/-! ## A028274.P2778405927362816748

`A028272(eq[2, A141310(A028272(n))])`
-/

namespace A028274.P2778405927362816748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A028272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028274.P2778405927362816748

namespace A028274

/-- `A028272(eq[2, A141310(A028272(n))])` -/
def P2778405927362816748.Spec : Prop :=
  ∀ n, P2778405927362816748.a n = A028274 (n + 1)

end A028274

/-! ## A028274.P12875644471960765432

`filter[A028272(n), A000035(#)]`
-/

namespace A028274.P12875644471960765432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028274.P12875644471960765432

namespace A028274

/-- `filter[A028272(n), A000035(#)]` -/
def P12875644471960765432.Spec : Prop :=
  ∀ n, P12875644471960765432.a n = A028274 (n + 1)

end A028274

/-!
# A028275: Elements in 4-Pascal triangle (by row).

The programs for A028275, the canonical program `A028275.P981092791414747383` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028275 has offset 0).

The definition of A028275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028275.P18332918165146584765

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A028275.P18332918165146584765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A028275.P18332918165146584765

namespace A028275

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P18332918165146584765.Spec : Prop :=
  ∀ n, (P18332918165146584765.a n : ℤ) = A028275 n

end A028275

/-! ## A028275.P3660454089671760937

`A028326(n)-A087698(n)`
-/

namespace A028275.P3660454089671760937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A087698 n

end

end A028275.P3660454089671760937

namespace A028275

/-- `A028326(n)-A087698(n)` -/
def P3660454089671760937.Spec : Prop :=
  ∀ n, P3660454089671760937.a n = A028275 n

end A028275

/-! ## A028275.P981092791414747383

`A028326(n)-abs(A159853(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A028275

/-- `A028326(n)-abs(A159853(n))` -/
def P981092791414747383.Spec : Prop :=
  ∀ n, P981092791414747383.a n = A028275 n

theorem P981092791414747383.correct : P981092791414747383.Spec := by
  intro n
  simp only [A028275]

end A028275

/-! ## A028275.P14179162313064526226

`A109128(n)+1-A087698(n)`
-/

namespace A028275.P14179162313064526226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A087698 n)

end

end A028275.P14179162313064526226

namespace A028275

/-- `A109128(n)+1-A087698(n)` -/
def P14179162313064526226.Spec : Prop :=
  ∀ n, P14179162313064526226.a n = A028275 n

theorem P14179162313064526226.correct : P14179162313064526226.Spec := by
  intro n
  simp only [A028275, Nat.add_sub_cancel, A028275.P14179162313064526226.a, A028275.P981092791414747383.a, A028326, A028326.P7676793339942299677.a, A087698, A087698.P14480629531617901505.a, A109128, A109128.P7867596798531783597.a, A159853, A159853.P10122269261997446491.f1, A159853.P10122269261997446491.a, A083920, A083920.P13248752610546876947.a, A097805, A097805.P1755176267250853107.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028275

/-! ## A028275.P15272258344815805250

`A028262(n)+A323211(n)-1`
-/

namespace A028275.P15272258344815805250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 n + (A323211 n - 1)

end

end A028275.P15272258344815805250

namespace A028275

/-- `A028262(n)+A323211(n)-1` -/
def P15272258344815805250.Spec : Prop :=
  ∀ n, P15272258344815805250.a n = A028275 n

end A028275

/-! ## A028275.P4648998940778582884

`A028313(n)+1-A323211(n)`
-/

namespace A028275.P4648998940778582884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028313 n + (1 - A323211 n)

end

end A028275.P4648998940778582884

namespace A028275

/-- `A028313(n)+1-A323211(n)` -/
def P4648998940778582884.Spec : Prop :=
  ∀ n, P4648998940778582884.a n = A028275 n

theorem P4648998940778582884.correct : P4648998940778582884.Spec := by
  intro n
  simp only [A028275, Nat.add_sub_cancel, A028275.P4648998940778582884.a, A028275.P981092791414747383.a, A028313, A028313.P12289256614395015877.a, A028326, A028326.P7676793339942299677.a, A159853, A159853.P10122269261997446491.f1, A159853.P10122269261997446491.a, A323211, A323211.P6731529718550413430.a, A083920, A083920.P13248752610546876947.a, A097805, A097805.P1755176267250853107.a, A113313, A113313.P6907104958604162947.f1, A113313.P6907104958604162947.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028275

/-! ## A028275.P13960050649270078785

`2*A028262(n)-A007318(n)`
-/

namespace A028275.P13960050649270078785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028262 n - A007318 n

end

end A028275.P13960050649270078785

namespace A028275

/-- `2*A028262(n)-A007318(n)` -/
def P13960050649270078785.Spec : Prop :=
  ∀ n, P13960050649270078785.a n = A028275 n

end A028275

/-! ## A028275.P10617505174567911483

`(A028313(n)+A028262(n))/2`
-/

namespace A028275.P10617505174567911483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028313 n + A028262 n : ℚ) / 2

end

end A028275.P10617505174567911483

namespace A028275

/-- `(A028313(n)+A028262(n))/2` -/
def P10617505174567911483.Spec : Prop :=
  ∀ n, P10617505174567911483.a n = (A028275 n : ℚ)

end A028275

/-! ## A028275.P15297267268432090976

`2*A007318(n)-A087698(n)`
-/

namespace A028275.P15297267268432090976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A087698 n

end

end A028275.P15297267268432090976

namespace A028275

/-- `2*A007318(n)-A087698(n)` -/
def P15297267268432090976.Spec : Prop :=
  ∀ n, P15297267268432090976.a n = A028275 n

theorem P15297267268432090976.correct : P15297267268432090976.Spec := by
  intro n
  simp only [A028275, Nat.add_sub_cancel, A028275.P15297267268432090976.a, A028275.P981092791414747383.a, A007318, A007318.P11755526479805562006.a, A028326, A028326.P7676793339942299677.a, A087698, A087698.P14480629531617901505.a, A159853, A159853.P10122269261997446491.f1, A159853.P10122269261997446491.a, A083920, A083920.P13248752610546876947.a, A097805, A097805.P1755176267250853107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028275

/-! ## A028275.P13991831468001900687

`A007318(n)+A028262(n)-A072405(n)`
-/

namespace A028275.P13991831468001900687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A028262 n - A072405 n)

end

end A028275.P13991831468001900687

namespace A028275

/-- `A007318(n)+A028262(n)-A072405(n)` -/
def P13991831468001900687.Spec : Prop :=
  ∀ n, P13991831468001900687.a n = A028275 n

end A028275

/-! ## A028275.P1333020599376704453

`A014473(n)+A004273(A028262(n)-A014473(n))`
-/

namespace A028275.P1333020599376704453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A004273 (A028262 n - A014473 n).toNat

end

end A028275.P1333020599376704453

namespace A028275

/-- `A014473(n)+A004273(A028262(n)-A014473(n))` -/
def P1333020599376704453.Spec : Prop :=
  ∀ n, P1333020599376704453.a n = A028275 n

end A028275

/-! ## A028275.P11874359992337593928

`A087698(n)+A005843(A007318(n)-A087698(n))`
-/

namespace A028275.P11874359992337593928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087698 n + A005843 (A007318 n - A087698 n).toNat

end

end A028275.P11874359992337593928

namespace A028275

/-- `A087698(n)+A005843(A007318(n)-A087698(n))` -/
def P11874359992337593928.Spec : Prop :=
  ∀ n, P11874359992337593928.a n = A028275 n

end A028275

/-! ## A028275.P8400072029642586412

`A005843(A007318(n))-A087698(n)`
-/

namespace A028275.P8400072029642586412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007318 n).toNat - A087698 n

end

end A028275.P8400072029642586412

namespace A028275

/-- `A005843(A007318(n))-A087698(n)` -/
def P8400072029642586412.Spec : Prop :=
  ∀ n, P8400072029642586412.a n = A028275 n

end A028275

/-! ## A028275.P4089514174499982543

`A004277(abs(2-A173740(n)))-A087698(n)`
-/

namespace A028275.P4089514174499982543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 |2 - A173740 n|.toNat - A087698 n

end

end A028275.P4089514174499982543

namespace A028275

/-- `A004277(abs(2-A173740(n)))-A087698(n)` -/
def P4089514174499982543.Spec : Prop :=
  ∀ n, P4089514174499982543.a n = A028275 n

end A028275

/-! ## A028275.P16460663337110646816

`A004277(ceil(A109128(n)/2))-A087698(n)`
-/

namespace A028275.P16460663337110646816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈(A109128 n : ℚ) / 2⌉.toNat - A087698 n

end

end A028275.P16460663337110646816

namespace A028275

/-- `A004277(ceil(A109128(n)/2))-A087698(n)` -/
def P16460663337110646816.Spec : Prop :=
  ∀ n, P16460663337110646816.a n = A028275 n

end A028275

/-! ## A028275.P17283732626541679189

`A004277(ceil(A134060(n)/3))-A087698(n)`
-/

namespace A028275.P17283732626541679189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈(A134060 n : ℚ) / 3⌉.toNat - A087698 n

end

end A028275.P17283732626541679189

namespace A028275

/-- `A004277(ceil(A134060(n)/3))-A087698(n)` -/
def P17283732626541679189.Spec : Prop :=
  ∀ n, P17283732626541679189.a n = A028275 n

end A028275

/-! ## A028275.P3679673503378383502

`A004277(A285118(n)+A285116(n))-A087698(n)`
-/

namespace A028275.P3679673503378383502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A285118 n + A285116 n).toNat - A087698 n

end

end A028275.P3679673503378383502

namespace A028275

/-- `A004277(A285118(n)+A285116(n))-A087698(n)` -/
def P3679673503378383502.Spec : Prop :=
  ∀ n, P3679673503378383502.a n = A028275 n

end A028275

/-! ## A028275.P487627535979716965

`A004277(A028276(n)-A028263(n))-A087698(n)`
-/

namespace A028275.P487627535979716965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A028276 n - A028263 n).toNat - A087698 n

end

end A028275.P487627535979716965

namespace A028275

/-- `A004277(A028276(n)-A028263(n))-A087698(n)` -/
def P487627535979716965.Spec : Prop :=
  ∀ n, P487627535979716965.a n = A028275 n

end A028275

/-! ## A028275.P8749163974208396255

`A005843(A028262(n))-A007318(n)`
-/

namespace A028275.P8749163974208396255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028262 n).toNat - A007318 n

end

end A028275.P8749163974208396255

namespace A028275

/-- `A005843(A028262(n))-A007318(n)` -/
def P8749163974208396255.Spec : Prop :=
  ∀ n, P8749163974208396255.a n = A028275 n

end A028275

/-! ## A028275.P13042393193480365209

`A004273(A028262(n))-A014473(n)`
-/

namespace A028275.P13042393193480365209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A028262 n).toNat - A014473 n

end

end A028275.P13042393193480365209

namespace A028275

/-- `A004273(A028262(n))-A014473(n)` -/
def P13042393193480365209.Spec : Prop :=
  ∀ n, P13042393193480365209.a n = A028275 n

end A028275

/-!
# A028276: Elements in 4-Pascal triangle A028275 (by row) that are not 1.

The programs for A028276, the canonical program `A028276.P15109551320821074576` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028276 has offset 0).

The definition of A028276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028276.P15109551320821074576

`A028263(n)+A007318(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028276

/-- `A028263(n)+A007318(n)` -/
def P15109551320821074576.Spec : Prop :=
  ∀ n, P15109551320821074576.a n = A028276 n

theorem P15109551320821074576.correct : P15109551320821074576.Spec := by
  intro n
  simp only [A028276]

end A028276

/-! ## A028276.P239134921099756212

`A028314(n)-A007318(n)`
-/

namespace A028276.P239134921099756212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028314 n - A007318 n

end

end A028276.P239134921099756212

namespace A028276

/-- `A028314(n)-A007318(n)` -/
def P239134921099756212.Spec : Prop :=
  ∀ n, P239134921099756212.a n = A028276 n

end A028276

/-! ## A028276.P18174618940383884250

`A028327(n)-A051601(n)`
-/

namespace A028276.P18174618940383884250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028327 n - A051601 n

end

end A028276.P18174618940383884250

namespace A028276

/-- `A028327(n)-A051601(n)` -/
def P18174618940383884250.Spec : Prop :=
  ∀ n, P18174618940383884250.a n = A028276 n

end A028276

/-! ## A028276.P17264692059121171526

`A028263(n)+abs(A130595(n))`
-/

namespace A028276.P17264692059121171526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + |A130595 n|

end

end A028276.P17264692059121171526

namespace A028276

/-- `A028263(n)+abs(A130595(n))` -/
def P17264692059121171526.Spec : Prop :=
  ∀ n, P17264692059121171526.a n = A028276 n

end A028276

/-! ## A028276.P13210492464302571954

`A028263(n)+sqrt(A008459(n))`
-/

namespace A028276.P13210492464302571954
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028263 n : ℝ) + Real.sqrt (A008459 n : ℝ)

end

end A028276.P13210492464302571954

namespace A028276

/-- `A028263(n)+sqrt(A008459(n))` -/
def P13210492464302571954.Spec : Prop :=
  ∀ n, P13210492464302571954.a n = (A028276 n : ℝ)

end A028276

/-! ## A028276.P1019124755089853869

`A014430(n)+A028326(n)+1`
-/

namespace A028276.P1019124755089853869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (A028326 n + 1)

end

end A028276.P1019124755089853869

namespace A028276

/-- `A014430(n)+A028326(n)+1` -/
def P1019124755089853869.Spec : Prop :=
  ∀ n, P1019124755089853869.a n = A028276 n

theorem P1019124755089853869.correct : P1019124755089853869.Spec := by
  intro n
  simp only [A028276, Nat.add_sub_cancel, A028276.P1019124755089853869.a, A028276.P15109551320821074576.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028263, A028263.P3177418721069471964.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028276

/-! ## A028276.P16105183698477577405

`A028326(n)+A014410(n+2)`
-/

namespace A028276.P16105183698477577405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + A014410 (n + 2)

end

end A028276.P16105183698477577405

namespace A028276

/-- `A028326(n)+A014410(n+2)` -/
def P16105183698477577405.Spec : Prop :=
  ∀ n, P16105183698477577405.a n = A028276 n

end A028276

/-! ## A028276.P5953672131751481331

`A014430(n)+A109128(n)+2`
-/

namespace A028276.P5953672131751481331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n + (A109128 n + 2)

end

end A028276.P5953672131751481331

namespace A028276

/-- `A014430(n)+A109128(n)+2` -/
def P5953672131751481331.Spec : Prop :=
  ∀ n, P5953672131751481331.a n = A028276 n

theorem P5953672131751481331.correct : P5953672131751481331.Spec := by
  intro n
  simp only [A028276, Nat.add_sub_cancel, A028276.P5953672131751481331.a, A028276.P15109551320821074576.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, A028263, A028263.P3177418721069471964.a, A109128, A109128.P7867596798531783597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028276

/-! ## A028276.P4128118321708986854

`A051601(n)+2*A028326(n)`
-/

namespace A028276.P4128118321708986854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + 2 * A028326 n

end

end A028276.P4128118321708986854

namespace A028276

/-- `A051601(n)+2*A028326(n)` -/
def P4128118321708986854.Spec : Prop :=
  ∀ n, P4128118321708986854.a n = A028276 n

end A028276

/-! ## A028276.P8906340149243294374

`(A028314(n)+A028263(n))/2`
-/

namespace A028276.P8906340149243294374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028314 n + A028263 n : ℚ) / 2

end

end A028276.P8906340149243294374

namespace A028276

/-- `(A028314(n)+A028263(n))/2` -/
def P8906340149243294374.Spec : Prop :=
  ∀ n, P8906340149243294374.a n = (A028276 n : ℚ)

end A028276

/-! ## A028276.P12159088576218470161

`A028263(n)+A028326(n)/2`
-/

namespace A028276.P12159088576218470161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028263 n : ℚ) + (A028326 n : ℚ) / 2

end

end A028276.P12159088576218470161

namespace A028276

/-- `A028263(n)+A028326(n)/2` -/
def P12159088576218470161.Spec : Prop :=
  ∀ n, P12159088576218470161.a n = (A028276 n : ℚ)

theorem P12159088576218470161.correct : P12159088576218470161.Spec := by
  intro n
  simp only [A028276, Nat.add_sub_cancel, A028276.P12159088576218470161.a, A028276.P15109551320821074576.a, A007318, A007318.P11755526479805562006.a, A028263, A028263.P3177418721069471964.a, A028326, A028326.P7676793339942299677.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028276

/-! ## A028276.P11249762557816562613

`A028326(n)+A028327(n)/2`
-/

namespace A028276.P11249762557816562613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) + (A028327 n : ℚ) / 2

end

end A028276.P11249762557816562613

namespace A028276

/-- `A028326(n)+A028327(n)/2` -/
def P11249762557816562613.Spec : Prop :=
  ∀ n, P11249762557816562613.a n = (A028276 n : ℚ)

theorem P11249762557816562613.correct : P11249762557816562613.Spec := by
  intro n
  simp only [A028276, Nat.add_sub_cancel, A028276.P11249762557816562613.a, A028276.P15109551320821074576.a, A007318, A007318.P11755526479805562006.a, A028263, A028263.P3177418721069471964.a, A028326, A028326.P7676793339942299677.a, A028327, A028327.P9835590816428302231.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028276

/-! ## A028276.P10758164646203272351

`A051597(n)+3*A007318(n)`
-/

namespace A028276.P10758164646203272351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + 3 * A007318 n

end

end A028276.P10758164646203272351

namespace A028276

/-- `A051597(n)+3*A007318(n)` -/
def P10758164646203272351.Spec : Prop :=
  ∀ n, P10758164646203272351.a n = A028276 n

theorem P10758164646203272351.correct : P10758164646203272351.Spec := by
  intro n
  simp only [A028276, Nat.add_sub_cancel, A028276.P10758164646203272351.a, A028276.P15109551320821074576.a, A007318, A007318.P11755526479805562006.a, A028263, A028263.P3177418721069471964.a, A051597, A051597.P4383731425265306086.a, A014430, A014430.P2601729842851247134.a, A014473, A014473.P9301799580602651200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028276

/-! ## A028276.P5427486472174245779

`2*A051597(n)-A051632(n)`
-/

namespace A028276.P5427486472174245779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 n - A051632 n

end

end A028276.P5427486472174245779

namespace A028276

/-- `2*A051597(n)-A051632(n)` -/
def P5427486472174245779.Spec : Prop :=
  ∀ n, P5427486472174245779.a n = A028276 n

end A028276

/-! ## A028276.P7407230175493455650

`A028314(n)-A028326(n)/2`
-/

namespace A028276.P7407230175493455650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028314 n : ℚ) - (A028326 n : ℚ) / 2

end

end A028276.P7407230175493455650

namespace A028276

/-- `A028314(n)-A028326(n)/2` -/
def P7407230175493455650.Spec : Prop :=
  ∀ n, P7407230175493455650.a n = (A028276 n : ℚ)

end A028276

/-! ## A028276.P8228213034915256907

`A028263(n)+ceil(A134059(n)/3)`
-/

namespace A028276.P8228213034915256907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028263 n + ⌈(A134059 n : ℚ) / 3⌉

end

end A028276.P8228213034915256907

namespace A028276

/-- `A028263(n)+ceil(A134059(n)/3)` -/
def P8228213034915256907.Spec : Prop :=
  ∀ n, P8228213034915256907.a n = A028276 n

end A028276

/-! ## A028276.P14209461766818189288

`A214292(n)+2*A029656(n+1)`
-/

namespace A028276.P14209461766818189288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n + 2 * A029656 (n + 1)

end

end A028276.P14209461766818189288

namespace A028276

/-- `A214292(n)+2*A029656(n+1)` -/
def P14209461766818189288.Spec : Prop :=
  ∀ n, P14209461766818189288.a n = A028276 n

end A028276

/-! ## A028276.P2526065603373864082

`A014410(n+2)+2*A007318(n)`
-/

namespace A028276.P2526065603373864082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014410 (n + 2) + 2 * A007318 n

end

end A028276.P2526065603373864082

namespace A028276

/-- `A014410(n+2)+2*A007318(n)` -/
def P2526065603373864082.Spec : Prop :=
  ∀ n, P2526065603373864082.a n = A028276 n

end A028276

/-! ## A028276.P17557690022508934715

`2*A028263(n)-A014410(n+2)`
-/

namespace A028276.P17557690022508934715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028263 n - A014410 (n + 2)

end

end A028276.P17557690022508934715

namespace A028276

/-- `2*A028263(n)-A014410(n+2)` -/
def P17557690022508934715.Spec : Prop :=
  ∀ n, P17557690022508934715.a n = A028276 n

end A028276

/-! ## A028276.P1263430322308032911

`2*A014410(n+2)-A051601(n)`
-/

namespace A028276.P1263430322308032911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014410 (n + 2) - A051601 n

end

end A028276.P1263430322308032911

namespace A028276

/-- `2*A014410(n+2)-A051601(n)` -/
def P1263430322308032911.Spec : Prop :=
  ∀ n, P1263430322308032911.a n = A028276 n

end A028276

/-!
# A028277: Odd elements in 4-Pascal triangle A028275 (by row).

The programs for A028277, the canonical program `A028277.P11561651408615929989` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028277 has offset 0).

The definition of A028277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028277.P11561651408615929989

`A028275(A268231(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028277

/-- `A028275(A268231(n+1))` -/
def P11561651408615929989.Spec : Prop :=
  ∀ n, P11561651408615929989.a n = A028277 n

theorem P11561651408615929989.correct : P11561651408615929989.Spec := by
  intro n
  simp only [A028277]

end A028277

/-! ## A028277.P12654192021265266391

`A028275(eq[0, A004198(n)])`
-/

namespace A028277.P12654192021265266391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028277.P12654192021265266391

namespace A028277

/-- `A028275(eq[0, A004198(n)])` -/
def P12654192021265266391.Spec : Prop :=
  ∀ n, P12654192021265266391.a n = A028277 n

end A028277

/-! ## A028277.P11651055445885388288

`A028275(eq[0, A219463(n)])`
-/

namespace A028277.P11651055445885388288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028277.P11651055445885388288

namespace A028277

/-- `A028275(eq[0, A219463(n)])` -/
def P11651055445885388288.Spec : Prop :=
  ∀ n, P11651055445885388288.a n = A028277 n

end A028277

/-! ## A028277.P13188647994835356671

`A028275(eq[1, A047999(n)])`
-/

namespace A028277.P13188647994835356671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028277.P13188647994835356671

namespace A028277

/-- `A028275(eq[1, A047999(n)])` -/
def P13188647994835356671.Spec : Prop :=
  ∀ n, P13188647994835356671.a n = A028277 n

end A028277

/-! ## A028277.P25901351155959008

`A028275(eq[1, A082907(n)])`
-/

namespace A028277.P25901351155959008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028277.P25901351155959008

namespace A028277

/-- `A028275(eq[1, A082907(n)])` -/
def P25901351155959008.Spec : Prop :=
  ∀ n, P25901351155959008.a n = A028277 n

end A028277

/-! ## A028277.P16462500385560339890

`A028275(eq[1, gcd(2, A028275(n))])`
-/

namespace A028277.P16462500385560339890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A028275 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028277.P16462500385560339890

namespace A028277

/-- `A028275(eq[1, gcd(2, A028275(n))])` -/
def P16462500385560339890.Spec : Prop :=
  ∀ n, P16462500385560339890.a n = A028277 n

end A028277

/-! ## A028277.P4128563020064470715

`filter[A028275(n), A000035(#)]`
-/

namespace A028277.P4128563020064470715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028277.P4128563020064470715

namespace A028277

/-- `filter[A028275(n), A000035(#)]` -/
def P4128563020064470715.Spec : Prop :=
  ∀ n, P4128563020064470715.a n = A028277 n

end A028277

/-! ## A028277.P14464064325172823772

`filter[A147644(n), A000035(#)]`
-/

namespace A028277.P14464064325172823772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028277.P14464064325172823772

namespace A028277

/-- `filter[A147644(n), A000035(#)]` -/
def P14464064325172823772.Spec : Prop :=
  ∀ n, P14464064325172823772.a n = A028277 n

end A028277

/-!
# A028278: Odd elements in 4-Pascal triangle A028275 (by row) that are not 1.

The programs for A028278, the canonical program `A028278.P8792746108487648138` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028278 has offset 0).

The definition of A028278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028278.P8792746108487648138

`A028277(lt[1, A028277(n)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028278

/-- `A028277(lt[1, A028277(n)])` -/
def P8792746108487648138.Spec : Prop :=
  ∀ n, P8792746108487648138.a n = A028278 n

theorem P8792746108487648138.correct : P8792746108487648138.Spec := by
  intro n
  simp only [A028278]

end A028278

/-! ## A028278.P4044025531359668674

`A028276(eq[0, A003985(n+1)])`
-/

namespace A028278.P4044025531359668674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028278.P4044025531359668674

namespace A028278

/-- `A028276(eq[0, A003985(n+1)])` -/
def P4044025531359668674.Spec : Prop :=
  ∀ n, P4044025531359668674.a n = A028278 n

end A028278

/-! ## A028278.P16344560868382325212

`A028276(eq[1, and(1, A028276(n))])`
-/

namespace A028278.P16344560868382325212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A028276 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028278.P16344560868382325212

namespace A028278

/-- `A028276(eq[1, and(1, A028276(n))])` -/
def P16344560868382325212.Spec : Prop :=
  ∀ n, P16344560868382325212.a n = A028278 n

end A028278

/-! ## A028278.P10382157879303240184

`A028276(lt[(A028276(n)+1)%2, 1])`
-/

namespace A028278.P10382157879303240184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028276 n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A028278.P10382157879303240184

namespace A028278

/-- `A028276(lt[(A028276(n)+1)%2, 1])` -/
def P10382157879303240184.Spec : Prop :=
  ∀ n, P10382157879303240184.a n = A028278 n

end A028278

/-! ## A028278.P5687314563519638046

`filter[A028277(n), A014306(#)]`
-/

namespace A028278.P5687314563519638046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A028278.P5687314563519638046

namespace A028278

/-- `filter[A028277(n), A014306(#)]` -/
def P5687314563519638046.Spec : Prop :=
  ∀ n, P5687314563519638046.a n = A028278 n

end A028278

/-! ## A028278.P16828342484083613159

`filter[A028277(n), A347523(#)]`
-/

namespace A028278.P16828342484083613159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A028278.P16828342484083613159

namespace A028278

/-- `filter[A028277(n), A347523(#)]` -/
def P16828342484083613159.Spec : Prop :=
  ∀ n, P16828342484083613159.a n = A028278 n

end A028278

/-! ## A028278.P5488555935319533932

`filter[A028277(n), A266070(#)]`
-/

namespace A028278.P5488555935319533932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A028278.P5488555935319533932

namespace A028278

/-- `filter[A028277(n), A266070(#)]` -/
def P5488555935319533932.Spec : Prop :=
  ∀ n, P5488555935319533932.a n = A028278 n

end A028278

/-! ## A028278.P4152264739722748232

`filter[A028277(n), A266246(#)]`
-/

namespace A028278.P4152264739722748232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A028278.P4152264739722748232

namespace A028278

/-- `filter[A028277(n), A266246(#)]` -/
def P4152264739722748232.Spec : Prop :=
  ∀ n, P4152264739722748232.a n = A028278 n

end A028278

/-! ## A028278.P2983464731722966974

`filter[A028277(n), A266611(#)]`
-/

namespace A028278.P2983464731722966974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A028278.P2983464731722966974

namespace A028278

/-- `filter[A028277(n), A266611(#)]` -/
def P2983464731722966974.Spec : Prop :=
  ∀ n, P2983464731722966974.a n = A028278 n

end A028278

/-! ## A028278.P11330776733284818170

`filter[A028277(n), A266719(#)]`
-/

namespace A028278.P11330776733284818170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A028278.P11330776733284818170

namespace A028278

/-- `filter[A028277(n), A266719(#)]` -/
def P11330776733284818170.Spec : Prop :=
  ∀ n, P11330776733284818170.a n = A028278 n

end A028278

/-!
# A028279: Even elements in 4-Pascal triangle A028275 (by row).

The programs for A028279, the canonical program `A028279.P15759741171861685895` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028279 has offset 0).

The definition of A028279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028279.P17067849218494251762

`2*A051358(n)`
-/

namespace A028279.P17067849218494251762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051358 n

end

end A028279.P17067849218494251762

namespace A028279

/-- `2*A051358(n)` -/
def P17067849218494251762.Spec : Prop :=
  ∀ n, P17067849218494251762.a n = A028279 n

end A028279

/-! ## A028279.P15759741171861685895

`A028275(A268232(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028279

/-- `A028275(A268232(n+1))` -/
def P15759741171861685895.Spec : Prop :=
  ∀ n, P15759741171861685895.a n = A028279 n

theorem P15759741171861685895.correct : P15759741171861685895.Spec := by
  intro n
  simp only [A028279]

end A028279

/-! ## A028279.P4884755301333390210

`A028275(eq[0, A047999(n)])`
-/

namespace A028279.P4884755301333390210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028279.P4884755301333390210

namespace A028279

/-- `A028275(eq[0, A047999(n)])` -/
def P4884755301333390210.Spec : Prop :=
  ∀ n, P4884755301333390210.a n = A028279 n

end A028279

/-! ## A028279.P9352245249496246025

`A028275(eq[1, A219463(n)])`
-/

namespace A028279.P9352245249496246025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028279.P9352245249496246025

namespace A028279

/-- `A028275(eq[1, A219463(n)])` -/
def P9352245249496246025.Spec : Prop :=
  ∀ n, P9352245249496246025.a n = A028279 n

end A028279

/-! ## A028279.P5976204280524638133

`A028275(eq[1, gcd(2, A014473(n))])`
-/

namespace A028279.P5976204280524638133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A014473 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A028279.P5976204280524638133

namespace A028279

/-- `A028275(eq[1, gcd(2, A014473(n))])` -/
def P5976204280524638133.Spec : Prop :=
  ∀ n, P5976204280524638133.a n = A028279 n

end A028279

/-! ## A028279.P2247900614822206799

`A004277(A051358(n))`
-/

namespace A028279.P2247900614822206799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A051358 n).toNat

end

end A028279.P2247900614822206799

namespace A028279

/-- `A004277(A051358(n))` -/
def P2247900614822206799.Spec : Prop :=
  ∀ n, P2247900614822206799.a n = A028279 n

end A028279

/-! ## A028279.P3233404472906947480

`A004275(A051358(n)+1)`
-/

namespace A028279.P3233404472906947480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A051358 n + 1).toNat

end

end A028279.P3233404472906947480

namespace A028279

/-- `A004275(A051358(n)+1)` -/
def P3233404472906947480.Spec : Prop :=
  ∀ n, P3233404472906947480.a n = A028279 n

end A028279

/-! ## A028279.P6322289515496374416

`A004278(A051358(n)+2)`
-/

namespace A028279.P6322289515496374416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A051358 n + 2).toNat

end

end A028279.P6322289515496374416

namespace A028279

/-- `A004278(A051358(n)+2)` -/
def P6322289515496374416.Spec : Prop :=
  ∀ n, P6322289515496374416.a n = A028279 n

end A028279

/-! ## A028279.P8354257727472446034

`filter[A028275(n), A059841(#)]`
-/

namespace A028279.P8354257727472446034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A028279.P8354257727472446034

namespace A028279

/-- `filter[A028275(n), A059841(#)]` -/
def P8354257727472446034.Spec : Prop :=
  ∀ n, P8354257727472446034.a n = A028279 n

end A028279

/-! ## A028279.P15677497277038634969

`filter[A028276(n), A059841(#)]`
-/

namespace A028279.P15677497277038634969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A028279.P15677497277038634969

namespace A028279

/-- `filter[A028276(n), A059841(#)]` -/
def P15677497277038634969.Spec : Prop :=
  ∀ n, P15677497277038634969.a n = A028279 n

end A028279

/-!
# A028281: Distinct odd elements in 4-Pascal triangle A028275 (by row).

The programs for A028281, there is no canonical definition to state claims against.
-/

/-! ## A028281.P5235672577361193791

`A028280(eq[1, A028280(n)%2])`
-/

namespace A028281.P5235672577361193791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028280 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028281.P5235672577361193791

/-! ## A028281.P10212830898157004793

`A028280(eq[1, and(1, A028280(n))])`
-/

namespace A028281.P10212830898157004793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A028280 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028281.P10212830898157004793

/-! ## A028281.P10428080065406258517

`A028280(eq[1, A040001(A028280(n))])`
-/

namespace A028281.P10428080065406258517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A028280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028281.P10428080065406258517

/-! ## A028281.P12823634584842951066

`filter[A028280(n), A000035(#)]`
-/

namespace A028281.P12823634584842951066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028281.P12823634584842951066

/-!
# A028282: Distinct even elements in 4-Pascal triangle A028275 (by row).

The programs for A028282, there is no canonical definition to state claims against.
-/

/-! ## A028282.P16880480217789717908

`A028280(eq[2, A020639(A028280(n))])`
-/

namespace A028282.P16880480217789717908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028282.P16880480217789717908

/-! ## A028282.P13685932712814334852

`A028280(eq[2, A319702(A028280(n))])`
-/

namespace A028282.P13685932712814334852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A028280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028282.P13685932712814334852

/-! ## A028282.P7288716857887212874

`A028280(eq[2, A040001(A028280(n))])`
-/

namespace A028282.P7288716857887212874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A028280 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028282.P7288716857887212874

/-! ## A028282.P10162007776582302155

`filter[A028280(n), A059841(#)]`
-/

namespace A028282.P10162007776582302155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A028282.P10162007776582302155

/-! ## A028282.P18040715350080889598

`filter[A028280(n), A267043(#)]`
-/

namespace A028282.P18040715350080889598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A028282.P18040715350080889598

/-!
# A028283: Central elements in 4-Pascal triangle A028275 (by row).

The programs for A028283, the canonical program `A028283.P13523606839211364512` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028283 has offset 0).

The definition of A028283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028283.P2555777933909913700

`(1-3*n)*A002420(n)`
-/

namespace A028283.P2555777933909913700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (3 * n : ℤ)) * A002420 n

end

end A028283.P2555777933909913700

namespace A028283

/-- `(1-3*n)*A002420(n)` -/
def P2555777933909913700.Spec : Prop :=
  ∀ n, P2555777933909913700.a n = A028283 n

end A028283

/-! ## A028283.P10685213583036839424

`record[(3*n+1)*A097331(n)]`
-/

namespace A028283.P10685213583036839424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028283.P10685213583036839424

namespace A028283

/-- `record[(3*n+1)*A097331(n)]` -/
def P10685213583036839424.Spec : Prop :=
  ∀ n, P10685213583036839424.a n = A028283 n

end A028283

/-! ## A028283.P17925828265646920728

`record[gcd(2, n+1)*A050168(n)]`
-/

namespace A028283.P17925828265646920728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (n + 1) : ℤ) * A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028283.P17925828265646920728

namespace A028283

/-- `record[gcd(2, n+1)*A050168(n)]` -/
def P17925828265646920728.Spec : Prop :=
  ∀ n, P17925828265646920728.a n = A028283 n

end A028283

/-! ## A028283.P14937513876155272513

`record[A000034(n)*A050168(n)]`
-/

namespace A028283.P14937513876155272513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028283.P14937513876155272513

namespace A028283

/-- `record[A000034(n)*A050168(n)]` -/
def P14937513876155272513.Spec : Prop :=
  ∀ n, P14937513876155272513.a n = A028283 n

end A028283

/-! ## A028283.P15933236574178655712

`(2-A008458(n))*A115140(n)`
-/

namespace A028283.P15933236574178655712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A008458 n) * A115140 n

end

end A028283.P15933236574178655712

namespace A028283

/-- `(2-A008458(n))*A115140(n)` -/
def P15933236574178655712.Spec : Prop :=
  ∀ n, P15933236574178655712.a n = A028283 n

end A028283

/-! ## A028283.P13692405991973680507

`A002420(n)*A024000(3*n)`
-/

namespace A028283.P13692405991973680507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 n * A024000 (3 * n)

end

end A028283.P13692405991973680507

namespace A028283

/-- `A002420(n)*A024000(3*n)` -/
def P13692405991973680507.Spec : Prop :=
  ∀ n, P13692405991973680507.a n = A028283 n

end A028283

/-! ## A028283.P4592931163861843141

`A000984(n)-n*A002420(n)`
-/

namespace A028283.P4592931163861843141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (n : ℤ) * A002420 n

end

end A028283.P4592931163861843141

namespace A028283

/-- `A000984(n)-n*A002420(n)` -/
def P4592931163861843141.Spec : Prop :=
  ∀ n, P4592931163861843141.a n = A028283 n

end A028283

/-! ## A028283.P17081669420828195791

`A033627(Δ[n²])*A120588(n)`
-/

namespace A028283.P17081669420828195791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A120588 n

end

end A028283.P17081669420828195791

namespace A028283

/-- `A033627(Δ[n²])*A120588(n)` -/
def P17081669420828195791.Spec : Prop :=
  ∀ n, P17081669420828195791.a n = A028283 n

end A028283

/-! ## A028283.P15988116083172116498

`A001405(2*n)+n*A089408(2*n)`
-/

namespace A028283.P15988116083172116498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) + (n : ℤ) * A089408 (2 * n)

end

end A028283.P15988116083172116498

namespace A028283

/-- `A001405(2*n)+n*A089408(2*n)` -/
def P15988116083172116498.Spec : Prop :=
  ∀ n, P15988116083172116498.a n = A028283 n

end A028283

/-! ## A028283.P6513805704055452464

`A063886(2*n)+n*A089408(2*n)`
-/

namespace A028283.P6513805704055452464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) + (n : ℤ) * A089408 (2 * n)

end

end A028283.P6513805704055452464

namespace A028283

/-- `A063886(2*n)+n*A089408(2*n)` -/
def P6513805704055452464.Spec : Prop :=
  ∀ n, P6513805704055452464.a n = A028283 n

end A028283

/-! ## A028283.P4994224334226054523

`A210736(2*n+1)+n*A089408(2*n)`
-/

namespace A028283.P4994224334226054523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 1) + (n : ℤ) * A089408 (2 * n)

end

end A028283.P4994224334226054523

namespace A028283

/-- `A210736(2*n+1)+n*A089408(2*n)` -/
def P4994224334226054523.Spec : Prop :=
  ∀ n, P4994224334226054523.a n = A028283 n

end A028283

/-! ## A028283.P13523606839211364512

`A028270(n)+A028270(n)-A000984(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A028283

/-- `A028270(n)+A028270(n)-A000984(n)` -/
def P13523606839211364512.Spec : Prop :=
  ∀ n, P13523606839211364512.a n = A028283 n

theorem P13523606839211364512.correct : P13523606839211364512.Spec := by
  intro n
  simp only [A028283]

end A028283

/-! ## A028283.P2821144102355681415

`2*A028270(n)-A000984(n)`
-/

namespace A028283.P2821144102355681415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028270 n - A000984 n

end

end A028283.P2821144102355681415

namespace A028283

/-- `2*A028270(n)-A000984(n)` -/
def P2821144102355681415.Spec : Prop :=
  ∀ n, P2821144102355681415.a n = A028283 n

theorem P2821144102355681415.correct : P2821144102355681415.Spec := by
  intro n
  simp only [A028283, Nat.add_sub_cancel, A028283.P2821144102355681415.a, A028283.P13523606839211364512.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A028283

/-! ## A028283.P14752892084401825644

`(A349835(n)+A000984(n))/2`
-/

namespace A028283.P14752892084401825644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349835 n + A000984 n : ℚ) / 2

end

end A028283.P14752892084401825644

namespace A028283

/-- `(A349835(n)+A000984(n))/2` -/
def P14752892084401825644.Spec : Prop :=
  ∀ n, P14752892084401825644.a n = (A028283 n : ℚ)

theorem P14752892084401825644.correct : P14752892084401825644.Spec := by
  intro n
  simp only [A028283, Nat.add_sub_cancel, A028283.P14752892084401825644.a, A028283.P13523606839211364512.a, A000984, A000984.P7946844122574426130.a, A028270, A028270.P16565106357147895899.a, A349835, A349835.P853498659600068463.a, A323230, A323230.P7973305166393127570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A028283

/-! ## A028283.P4080015106764900065

`A063886(2*n+1)+A182027(2*n)-A182027(2*n+1)`
-/

namespace A028283.P4080015106764900065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n + 1) + (A182027 (2 * n) - A182027 (2 * n + 1))

end

end A028283.P4080015106764900065

namespace A028283

/-- `A063886(2*n+1)+A182027(2*n)-A182027(2*n+1)` -/
def P4080015106764900065.Spec : Prop :=
  ∀ n, P4080015106764900065.a n = A028283 n

end A028283

/-! ## A028283.P1515001905496379996

`A081496(n+1)%Δ[A028270(n)]`
-/

namespace A028283.P1515001905496379996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081496 (n + 1)) (f1 (n + 1) - f1 n)

end

end A028283.P1515001905496379996

namespace A028283

/-- `A081496(n+1)%Δ[A028270(n)]` -/
def P1515001905496379996.Spec : Prop :=
  ∀ n, P1515001905496379996.a n = A028283 n

end A028283

/-! ## A028283.P13452804753028968789

`A213853(A212342(n+1))`
-/

namespace A028283.P13452804753028968789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213853 (A212342 (n + 1)).toNat

end

end A028283.P13452804753028968789

namespace A028283

/-- `A213853(A212342(n+1))` -/
def P13452804753028968789.Spec : Prop :=
  ∀ n, P13452804753028968789.a n = A028283 n

end A028283

/-! ## A028283.P1428417405507164611

`A213853(Δ[A000292(n)]-n²%(n+1))`
-/

namespace A028283.P1428417405507164611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213853 (f1 (n + 1) - f1 n - ((n ^ 2 % (n + 1) : ℕ) : ℤ)).toNat

end

end A028283.P1428417405507164611

namespace A028283

/-- `A213853(Δ[A000292(n)]-n²%(n+1))` -/
def P1428417405507164611.Spec : Prop :=
  ∀ n, P1428417405507164611.a n = A028283 n

end A028283

/-!
# A028284: Elements to right of central elements in 4-Pascal triangle A028275.

The programs for A028284, the canonical program `A028284.P7098314447050730030` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028284 has offset 0).

The definition of A028284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028284.P5890666054649421622

`(A028323(n)+A028271(n))/2`
-/

namespace A028284.P5890666054649421622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028323 n + A028271 n : ℚ) / 2

end

end A028284.P5890666054649421622

namespace A028284

/-- `(A028323(n)+A028271(n))/2` -/
def P5890666054649421622.Spec : Prop :=
  ∀ n, P5890666054649421622.a n = (A028284 n : ℚ)

theorem P5890666054649421622.correct : P5890666054649421622.Spec := by
  intro n
  simp only [A028284, Nat.add_sub_cancel, A028284.P5890666054649421622.a, A028284.P7098314447050730030.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028271, A028271.P5697614823521881732.f1, A028271.P5697614823521881732.f2, A028271.P5697614823521881732.a, A028323, A028323.P9765385915217977419.a, A007318, A007318.P11755526479805562006.a, A028262, A028262.P11072633460123417746.a, A152815, A152815.P5824275937676664892.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A014473, A014473.P9301799580602651200.a, A323211, A323211.P6731529718550413430.a, A113313, A113313.P6907104958604162947.f1, A113313.P6907104958604162947.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028284

/-! ## A028284.P7098314447050730030

`2*A028271(n)-A014413(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A028284

/-- `2*A028271(n)-A014413(n+1)` -/
def P7098314447050730030.Spec : Prop :=
  ∀ n, P7098314447050730030.a n = A028284 n

theorem P7098314447050730030.correct : P7098314447050730030.Spec := by
  intro n
  simp only [A028284]

end A028284

/-! ## A028284.P1831523352101682005

`(A028323(n)+A028271(n))*2^A008683(A020483(n))`
-/

namespace A028284.P1831523352101682005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028323 n + A028271 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A028284.P1831523352101682005

namespace A028284

/-- `(A028323(n)+A028271(n))*2^A008683(A020483(n))` -/
def P1831523352101682005.Spec : Prop :=
  ∀ n, P1831523352101682005.a n = (A028284 n : ℚ)

end A028284

/-! ## A028284.P6828556339618023376

`(A028323(n)+A028271(n))*2^A008683(A151800(n))`
-/

namespace A028284.P6828556339618023376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028323 n + A028271 n : ℚ) * (2 : ℚ) ^ (A008683 (A151800 n).toNat : ℤ)

end

end A028284.P6828556339618023376

namespace A028284

/-- `(A028323(n)+A028271(n))*2^A008683(A151800(n))` -/
def P6828556339618023376.Spec : Prop :=
  ∀ n, P6828556339618023376.a n = (A028284 n : ℚ)

end A028284

/-! ## A028284.P3854158352279882119

`A159854(A274428(n+1))+A028271(n)`
-/

namespace A028284.P3854158352279882119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 (A274428 (n + 1)).toNat + A028271 n

end

end A028284.P3854158352279882119

namespace A028284

/-- `A159854(A274428(n+1))+A028271(n)` -/
def P3854158352279882119.Spec : Prop :=
  ∀ n, P3854158352279882119.a n = A028284 n

end A028284

/-! ## A028284.P13005723856525161850

`A028323(n)-A159854(A274428(n+1))`
-/

namespace A028284.P13005723856525161850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028323 n - A159854 (A274428 (n + 1)).toNat

end

end A028284.P13005723856525161850

namespace A028284

/-- `A028323(n)-A159854(A274428(n+1))` -/
def P13005723856525161850.Spec : Prop :=
  ∀ n, P13005723856525161850.a n = A028284 n

end A028284

/-! ## A028284.P18156174910062538657

`A014413(n+1)+A005843(A028271(n)-A014413(n+1))`
-/

namespace A028284.P18156174910062538657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) + A005843 (A028271 n - A014413 (n + 1)).toNat

end

end A028284.P18156174910062538657

namespace A028284

/-- `A014413(n+1)+A005843(A028271(n)-A014413(n+1))` -/
def P18156174910062538657.Spec : Prop :=
  ∀ n, P18156174910062538657.a n = A028284 n

end A028284

/-! ## A028284.P88335618060987931

`A005843(A028271(n))-A014413(n+1)`
-/

namespace A028284.P88335618060987931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A028271 n).toNat - A014413 (n + 1)

end

end A028284.P88335618060987931

namespace A028284

/-- `A005843(A028271(n))-A014413(n+1)` -/
def P88335618060987931.Spec : Prop :=
  ∀ n, P88335618060987931.a n = A028284 n

end A028284

/-!
# A028285: Elements to right of central elements in 4-Pascal triangle A028275 that are not 1.

The programs for A028285, the canonical program `A028285.P5292532840332202507` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028285 has offset 0).

The definition of A028285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028285.P5292532840332202507

`A028272(n)+A014413(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A028285

/-- `A028272(n)+A014413(n+1)` -/
def P5292532840332202507.Spec : Prop :=
  ∀ n, P5292532840332202507.a n = A028285 n

theorem P5292532840332202507.correct : P5292532840332202507.Spec := by
  intro n
  simp only [A028285]

end A028285

/-! ## A028285.P17114481342343435264

`A028330(n)+A014411(n+1)`
-/

namespace A028285.P17114481342343435264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028330 n + A014411 (n + 1)

end

end A028285.P17114481342343435264

namespace A028285

/-- `A028330(n)+A014411(n+1)` -/
def P17114481342343435264.Spec : Prop :=
  ∀ n, P17114481342343435264.a n = A028285 n

theorem P17114481342343435264.correct : P17114481342343435264.Spec := by
  intro n
  simp only [A028285, Nat.add_sub_cancel, A028285.P17114481342343435264.a, A028285.P5292532840332202507.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028330, A028330.P6625420377303343371.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028285

/-! ## A028285.P16514105485456861533

`A028324(n)-A014413(n+1)`
-/

namespace A028285.P16514105485456861533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028324 n - A014413 (n + 1)

end

end A028285.P16514105485456861533

namespace A028285

/-- `A028324(n)-A014413(n+1)` -/
def P16514105485456861533.Spec : Prop :=
  ∀ n, P16514105485456861533.a n = A028285 n

theorem P16514105485456861533.correct : P16514105485456861533.Spec := by
  intro n
  simp only [A028285, Nat.add_sub_cancel, A028285.P16514105485456861533.a, A028285.P5292532840332202507.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028324, A028324.P3744947203801218243.a, A007318, A007318.P11755526479805562006.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028285

/-! ## A028285.P14213476872935378805

`A028272(n)+A028330(n)/2`
-/

namespace A028285.P14213476872935378805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028272 n : ℚ) + (A028330 n : ℚ) / 2

end

end A028285.P14213476872935378805

namespace A028285

/-- `A028272(n)+A028330(n)/2` -/
def P14213476872935378805.Spec : Prop :=
  ∀ n, P14213476872935378805.a n = (A028285 n : ℚ)

theorem P14213476872935378805.correct : P14213476872935378805.Spec := by
  intro n
  simp only [A028285, Nat.add_sub_cancel, A028285.P14213476872935378805.a, A028285.P5292532840332202507.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028330, A028330.P6625420377303343371.a, A007318, A007318.P11755526479805562006.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028285

/-! ## A028285.P13982904787652044192

`(A028324(n)+A028272(n))/2`
-/

namespace A028285.P13982904787652044192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028324 n + A028272 n : ℚ) / 2

end

end A028285.P13982904787652044192

namespace A028285

/-- `(A028324(n)+A028272(n))/2` -/
def P13982904787652044192.Spec : Prop :=
  ∀ n, P13982904787652044192.a n = (A028285 n : ℚ)

theorem P13982904787652044192.correct : P13982904787652044192.Spec := by
  intro n
  simp only [A028285, Nat.add_sub_cancel, A028285.P13982904787652044192.a, A028285.P5292532840332202507.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028324, A028324.P3744947203801218243.a, A007318, A007318.P11755526479805562006.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028285

/-! ## A028285.P17810816340908452279

`A028324(n)-A028330(n)/2`
-/

namespace A028285.P17810816340908452279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028324 n : ℚ) - (A028330 n : ℚ) / 2

end

end A028285.P17810816340908452279

namespace A028285

/-- `A028324(n)-A028330(n)/2` -/
def P17810816340908452279.Spec : Prop :=
  ∀ n, P17810816340908452279.a n = (A028285 n : ℚ)

theorem P17810816340908452279.correct : P17810816340908452279.Spec := by
  intro n
  simp only [A028285, Nat.add_sub_cancel, A028285.P17810816340908452279.a, A028285.P5292532840332202507.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A028324, A028324.P3744947203801218243.a, A028330, A028330.P6625420377303343371.a, A007318, A007318.P11755526479805562006.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008311, A008311.P16507071146551103518.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028285

/-! ## A028285.P6212865461454224592

`2*A028272(n)-A014411(n+1)`
-/

namespace A028285.P6212865461454224592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028272 n - A014411 (n + 1)

end

end A028285.P6212865461454224592

namespace A028285

/-- `2*A028272(n)-A014411(n+1)` -/
def P6212865461454224592.Spec : Prop :=
  ∀ n, P6212865461454224592.a n = A028285 n

theorem P6212865461454224592.correct : P6212865461454224592.Spec := by
  intro n
  simp only [A028285, Nat.add_sub_cancel, A028285.P6212865461454224592.a, A028285.P5292532840332202507.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028285

/-! ## A028285.P8842925587747133784

`A014411(n+1)+2*A014413(n+1)`
-/

namespace A028285.P8842925587747133784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014411 (n + 1) + 2 * A014413 (n + 1)

end

end A028285.P8842925587747133784

namespace A028285

/-- `A014411(n+1)+2*A014413(n+1)` -/
def P8842925587747133784.Spec : Prop :=
  ∀ n, P8842925587747133784.a n = A028285 n

theorem P8842925587747133784.correct : P8842925587747133784.Spec := by
  intro n
  simp only [A028285, Nat.add_sub_cancel, A028285.P8842925587747133784.a, A028285.P5292532840332202507.a, A014411, A014411.P10381451059067802495.f1, A014411.P10381451059067802495.f2, A014411.P10381451059067802495.a, A014413, A014413.P14567634354021645646.f1, A014413.P14567634354021645646.f2, A014413.P14567634354021645646.a, A028272, A028272.P16658782118669179364.a, A007318, A007318.P11755526479805562006.a, A008311, A008311.P16507071146551103518.a, A340507, A340507.P13308749696070402216.a, A003056, A003056.P5318256527314048597.a, A008314, A008314.P17030209366717782596.a, A028391, A028391.P17198271841435315725.a, A082375, A082375.P11690082017939293058.a, A000034, A000034.P10773112074177680709.a, A034868, A034868.P12965043593595847904.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A122197, A122197.P4223396972267691169.a, A199474, A199474.P17289938978720021697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A028285

/-! ## A028285.P18197782363422982861

`A014413(A049068(n+1))+2*A014413(n+1)`
-/

namespace A028285.P18197782363422982861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (A049068 (n + 1)).toNat + 2 * A014413 (n + 1)

end

end A028285.P18197782363422982861

namespace A028285

/-- `A014413(A049068(n+1))+2*A014413(n+1)` -/
def P18197782363422982861.Spec : Prop :=
  ∀ n, P18197782363422982861.a n = A028285 n

end A028285

/-! ## A028285.P16386612046187607727

`A028284(A183569(n+1))`
-/

namespace A028285.P16386612046187607727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028284 (A183569 (n + 1)).toNat

end

end A028285.P16386612046187607727

namespace A028285

/-- `A028284(A183569(n+1))` -/
def P16386612046187607727.Spec : Prop :=
  ∀ n, P16386612046187607727.a n = A028285 n

end A028285

/-! ## A028285.P11672673809866979070

`A028284(lt[1, A028271(n)])`
-/

namespace A028285.P11672673809866979070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028285.P11672673809866979070

namespace A028285

/-- `A028284(lt[1, A028271(n)])` -/
def P11672673809866979070.Spec : Prop :=
  ∀ n, P11672673809866979070.a n = A028285 n

end A028285

/-! ## A028285.P12804700711062149614

`A028284(lt[1, A028284(n)])`
-/

namespace A028285.P12804700711062149614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A028285.P12804700711062149614

namespace A028285

/-- `A028284(lt[1, A028284(n)])` -/
def P12804700711062149614.Spec : Prop :=
  ∀ n, P12804700711062149614.a n = A028285 n

end A028285

/-! ## A028285.P6338982069351541778

`A028330(n)+A028330(A183569(n+1))/2`
-/

namespace A028285.P6338982069351541778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028330 n : ℚ) + (A028330 (A183569 (n + 1)).toNat : ℚ) / 2

end

end A028285.P6338982069351541778

namespace A028285

/-- `A028330(n)+A028330(A183569(n+1))/2` -/
def P6338982069351541778.Spec : Prop :=
  ∀ n, P6338982069351541778.a n = (A028285 n : ℚ)

end A028285

/-! ## A028285.P16188148170636236529

`A028276(lt[A025581(n), A002262(n)])`
-/

namespace A028285.P16188148170636236529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028285.P16188148170636236529

namespace A028285

/-- `A028276(lt[A025581(n), A002262(n)])` -/
def P16188148170636236529.Spec : Prop :=
  ∀ n, P16188148170636236529.a n = A028285 n

end A028285

/-! ## A028285.P17413384623072271295

`A028276(lt[A004736(n+1), A002260(n+1)])`
-/

namespace A028285.P17413384623072271295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028285.P17413384623072271295

namespace A028285

/-- `A028276(lt[A004736(n+1), A002260(n+1)])` -/
def P17413384623072271295.Spec : Prop :=
  ∀ n, P17413384623072271295.a n = A028285 n

end A028285

/-! ## A028285.P3334261977379727597

`A028276(lt[A176346(n), A002260(n+1)])`
-/

namespace A028285.P3334261977379727597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A028285.P3334261977379727597

namespace A028285

/-- `A028276(lt[A176346(n), A002260(n+1)])` -/
def P3334261977379727597.Spec : Prop :=
  ∀ n, P3334261977379727597.a n = A028285 n

end A028285

/-!
# A028286: Even elements to right of central elements in 4-Pascal triangle A028275.

The programs for A028286, there is no canonical definition to state claims against.
-/

/-! ## A028286.P4302255681800645598

`2*A051359(n)`
-/

namespace A028286.P4302255681800645598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051359 n

end

end A028286.P4302255681800645598

/-! ## A028286.P1599806358075040066

`A051359(A005843(n)/2)+A051359(n)`
-/

namespace A028286.P1599806358075040066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051359 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A051359 n

end

end A028286.P1599806358075040066

/-! ## A028286.P13911196749825694250

`A051359(A005843(n)-n)+A051359(n)`
-/

namespace A028286.P13911196749825694250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051359 (A005843 n - (n : ℤ)).toNat + A051359 n

end

end A028286.P13911196749825694250

/-! ## A028286.P4682819032281325824

`lcm(A051359(n)+A051359(n), A000034(n))`
-/

namespace A028286.P4682819032281325824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051359 n + A051359 n) (A000034 n)

end

end A028286.P4682819032281325824

/-! ## A028286.P7088930936154984461

`A051359(A000027(n+1)-1)+A051359(n)`
-/

namespace A028286.P7088930936154984461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051359 (A000027 (n + 1) - 1).toNat + A051359 n

end

end A028286.P7088930936154984461

/-! ## A028286.P159315588903392409

`A051359(n)/2^A008683(A038888(n+1))`
-/

namespace A028286.P159315588903392409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051359 n : ℚ) / (2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ)

end

end A028286.P159315588903392409

/-! ## A028286.P4492309686999504451

`A000027(A051359(n)+A051359(n))`
-/

namespace A028286.P4492309686999504451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A051359 n + A051359 n).toNat

end

end A028286.P4492309686999504451

/-!
# A028287: Odd elements (greater than 1) to right of central elements in 4-Pascal triangle A028275.

The programs for A028287, the canonical program `A028287.P12035701407687927913` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028287 has offset 0).

The definition of A028287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028287.P12035701407687927913

`A028277(lt[A028277(n+1), A028277(n)])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A028287

/-- `A028277(lt[A028277(n+1), A028277(n)])` -/
def P12035701407687927913.Spec : Prop :=
  ∀ n, P12035701407687927913.a n = A028287 n

theorem P12035701407687927913.correct : P12035701407687927913.Spec := by
  intro n
  simp only [A028287]

end A028287

/-! ## A028287.P13151773983678044577

`A028285(eq[1, A028285(n)%2])`
-/

namespace A028287.P13151773983678044577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028285 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A028287.P13151773983678044577

namespace A028287

/-- `A028285(eq[1, A028285(n)%2])` -/
def P13151773983678044577.Spec : Prop :=
  ∀ n, P13151773983678044577.a n = A028287 n

end A028287

/-! ## A028287.P16177891058305272686

`A028285(record[(n+1)*A028285(n+1)%2])`
-/

namespace A028287.P16177891058305272686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A028285 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028287.P16177891058305272686

namespace A028287

/-- `A028285(record[(n+1)*A028285(n+1)%2])` -/
def P16177891058305272686.Spec : Prop :=
  ∀ n, P16177891058305272686.a n = A028287 n

end A028287

/-! ## A028287.P5092642737757814231

`A028285(record[(n+1)*and(1, A028285(n+1))])`
-/

namespace A028287.P5092642737757814231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A028285 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A028287.P5092642737757814231

namespace A028287

/-- `A028285(record[(n+1)*and(1, A028285(n+1))])` -/
def P5092642737757814231.Spec : Prop :=
  ∀ n, P5092642737757814231.a n = A028287 n

end A028287

/-! ## A028287.P9938017908859144902

`filter[A028285(n), A000035(#)]`
-/

namespace A028287.P9938017908859144902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A028287.P9938017908859144902

namespace A028287

/-- `filter[A028285(n), A000035(#)]` -/
def P9938017908859144902.Spec : Prop :=
  ∀ n, P9938017908859144902.a n = A028287 n

end A028287

/-!
# A028288: Molien series for complex 4-dimensional Clifford group of order 92160 and genus 2. Also Molien series of ring of biweight enumerators of Type II self-dual binary codes.

The programs for A028288, the canonical program `A028288.P9275905081504868524` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028288 has offset 0).

The definition of A028288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028288.P9275905081504868524

`floor((n^3+12*n²+49*n+135)/135+n*((n+1)%3-n%3)/27)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028288

/-- `floor((n^3+12*n²+49*n+135)/135+n*((n+1)%3-n%3)/27)` -/
def P9275905081504868524.Spec : Prop :=
  ∀ n, P9275905081504868524.a n = A028288 n

theorem P9275905081504868524.correct : P9275905081504868524.Spec := by
  intro n
  simp only [A028288]

end A028288

/-! ## A028288.P1543930178593302298

`A027634(2*n)-A352095(2*n)`
-/

namespace A028288.P1543930178593302298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027634 (2 * n) - A352095 (2 * n)

end

end A028288.P1543930178593302298

namespace A028288

/-- `A027634(2*n)-A352095(2*n)` -/
def P1543930178593302298.Spec : Prop :=
  ∀ n, P1543930178593302298.a n = A028288 n

end A028288

/-! ## A028288.P12182796705937412323

`A029143(2*n)`
-/

namespace A028288.P12182796705937412323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (2 * n)

end

end A028288.P12182796705937412323

namespace A028288

/-- `A029143(2*n)` -/
def P12182796705937412323.Spec : Prop :=
  ∀ n, P12182796705937412323.a n = A028288 n

end A028288

/-! ## A028288.P31194116965394020

`A029143(n+n)+A003982(A004614(n+1))`
-/

namespace A028288.P31194116965394020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (n + n) + A003982 (A004614 (n + 1)).toNat

end

end A028288.P31194116965394020

namespace A028288

/-- `A029143(n+n)+A003982(A004614(n+1))` -/
def P31194116965394020.Spec : Prop :=
  ∀ n, P31194116965394020.a n = A028288 n

end A028288

/-! ## A028288.P1725911930517735251

`∑[A025835(2*n)]`
-/

namespace A028288.P1725911930517735251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028288.P1725911930517735251

namespace A028288

/-- `∑[A025835(2*n)]` -/
def P1725911930517735251.Spec : Prop :=
  ∀ n, P1725911930517735251.a n = A028288 n

end A028288

/-! ## A028288.P5277296041367239729

`A025835(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A028288.P5277296041367239729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025835 (n + n) + a (n - 1)

end

end A028288.P5277296041367239729

namespace A028288

/-- `A025835(n+n)+a(n-1)` -/
def P5277296041367239729.Spec : Prop :=
  ∀ n, P5277296041367239729.a n = A028288 n

end A028288

/-! ## A028288.P5413281881184241531

`A091498(2*n+1)-(A091498(2*n)+A037145(2*n+1))`
-/

namespace A028288.P5413281881184241531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091498 (2 * n + 1) - (A091498 (2 * n) + A037145 (2 * n + 1))

end

end A028288.P5413281881184241531

namespace A028288

/-- `A091498(2*n+1)-(A091498(2*n)+A037145(2*n+1))` -/
def P5413281881184241531.Spec : Prop :=
  ∀ n, P5413281881184241531.a n = A028288 n

end A028288

/-! ## A028288.P17502813179670218406

`A027640(4*n)`
-/

namespace A028288.P17502813179670218406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (4 * n)

end

end A028288.P17502813179670218406

namespace A028288

/-- `A027640(4*n)` -/
def P17502813179670218406.Spec : Prop :=
  ∀ n, P17502813179670218406.a n = A028288 n

end A028288

/-! ## A028288.P15158890752911418228

`A029270(4*n)`
-/

namespace A028288.P15158890752911418228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 (4 * n)

end

end A028288.P15158890752911418228

namespace A028288

/-- `A029270(4*n)` -/
def P15158890752911418228.Spec : Prop :=
  ∀ n, P15158890752911418228.a n = A028288 n

end A028288

/-! ## A028288.P5025701525964946686

`A029331(4*n)`
-/

namespace A028288.P5025701525964946686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (4 * n)

end

end A028288.P5025701525964946686

namespace A028288

/-- `A029331(4*n)` -/
def P5025701525964946686.Spec : Prop :=
  ∀ n, P5025701525964946686.a n = A028288 n

end A028288

/-! ## A028288.P17509863198120385666

`∑[A025857(4*n)]`
-/

namespace A028288.P17509863198120385666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028288.P17509863198120385666

namespace A028288

/-- `∑[A025857(4*n)]` -/
def P17509863198120385666.Spec : Prop :=
  ∀ n, P17509863198120385666.a n = A028288 n

end A028288

/-! ## A028288.P2782005059633378117

`∑[A025881(4*n)]`
-/

namespace A028288.P2782005059633378117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028288.P2782005059633378117

namespace A028288

/-- `∑[A025881(4*n)]` -/
def P2782005059633378117.Spec : Prop :=
  ∀ n, P2782005059633378117.a n = A028288 n

end A028288

/-! ## A028288.P18237833143137782728

`A029143(n+n)%A004009(A001399(n))`
-/

namespace A028288.P18237833143137782728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029143 (n + n)) (A004009 (A001399 n).toNat)

end

end A028288.P18237833143137782728

namespace A028288

/-- `A029143(n+n)%A004009(A001399(n))` -/
def P18237833143137782728.Spec : Prop :=
  ∀ n, P18237833143137782728.a n = A028288 n

end A028288

/-!
# A028289: Expansion of (1+x^2+x^3+x^5)/((1-x)(1-x^3)(1-x^4)(1-x^6)).

The programs for A028289, the canonical program `A028289.P13264155748413353251` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028289 has offset 0).

The definition of A028289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2+x^3+x^5)/(1-x-x^3+x^5-x^6+2x^7-x^8+x^9-x^11-x^13+x^14))` (program `A028289.P13264155748413353251`, by `A028289.P13264155748413353251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028289.P13264155748413353251

`ogf((1+x^2+x^3+x^5)/(1-x-x^3+x^5-x^6+2x^7-x^8+x^9-x^11-x^13+x^14))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028289

/-- `ogf((1+x^2+x^3+x^5)/(1-x-x^3+x^5-x^6+2x^7-x^8+x^9-x^11-x^13+x^14))` -/
def P13264155748413353251.Spec : Prop :=
  ∀ n, P13264155748413353251.a n = A028289 n

theorem P13264155748413353251.correct : P13264155748413353251.Spec := by
  intro n
  simp only [A028289]

end A028289

/-! ## A028289.P6738212269035870946

`A144677(n)-a(n-1)` with `a(0)=1`
-/

namespace A028289.P6738212269035870946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144677 n - a (n - 1)

end

end A028289.P6738212269035870946

namespace A028289

/-- `A144677(n)-a(n-1)` -/
def P6738212269035870946.Spec : Prop :=
  ∀ n, P6738212269035870946.a n = A028289 n

end A028289

/-! ## A028289.P4719862581066897030

`A001399(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028289.P4719862581066897030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A001399 n + a (n - 3)

end

end A028289.P4719862581066897030

namespace A028289

/-- `A001399(n)+a(n-3)` -/
def P4719862581066897030.Spec : Prop :=
  ∀ n, P4719862581066897030.a n = A028289 n

end A028289

/-! ## A028289.P3961358687260036429

`∑[A002620(A008611(n)+1)]`
-/

namespace A028289.P3961358687260036429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008611 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028289.P3961358687260036429

namespace A028289

/-- `∑[A002620(A008611(n)+1)]` -/
def P3961358687260036429.Spec : Prop :=
  ∀ n, P3961358687260036429.a n = A028289 n

end A028289

/-! ## A028289.P14161828741622183017

`A001399(n)+∑[A307018(n)]`
-/

namespace A028289.P14161828741622183017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028289.P14161828741622183017

namespace A028289

/-- `A001399(n)+∑[A307018(n)]` -/
def P14161828741622183017.Spec : Prop :=
  ∀ n, P14161828741622183017.a n = A028289 n

end A028289

/-! ## A028289.P5801623862513342588

`∑[A000124(A002264(n)+1)-1]-a(n-1)` with `a(0)=1`
-/

namespace A028289.P5801623862513342588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002264 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A028289.P5801623862513342588

namespace A028289

/-- `∑[A000124(A002264(n)+1)-1]-a(n-1)` -/
def P5801623862513342588.Spec : Prop :=
  ∀ n, P5801623862513342588.a n = A028289 n

end A028289

/-! ## A028289.P8633251207101065617

`A144677(n)-A307872(n+2)`
-/

namespace A028289.P8633251207101065617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144677 n - A307872 (n + 2)

end

end A028289.P8633251207101065617

namespace A028289

/-- `A144677(n)-A307872(n+2)` -/
def P8633251207101065617.Spec : Prop :=
  ∀ n, P8633251207101065617.a n = A028289 n

end A028289

/-! ## A028289.P1569322263576979945

`A307872(n+3)`
-/

namespace A028289.P1569322263576979945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 3)

end

end A028289.P1569322263576979945

namespace A028289

/-- `A307872(n+3)` -/
def P1569322263576979945.Spec : Prop :=
  ∀ n, P1569322263576979945.a n = A028289 n

end A028289

/-! ## A028289.P3764130184935253710

`∑[A307018(n+3)]`
-/

namespace A028289.P3764130184935253710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028289.P3764130184935253710

namespace A028289

/-- `∑[A307018(n+3)]` -/
def P3764130184935253710.Spec : Prop :=
  ∀ n, P3764130184935253710.a n = A028289 n

end A028289

/-! ## A028289.P7520518412242177294

`A309686(n+3)+A309684(n+3)`
-/

namespace A028289.P7520518412242177294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309686 (n + 3) + A309684 (n + 3)

end

end A028289.P7520518412242177294

namespace A028289

/-- `A309686(n+3)+A309684(n+3)` -/
def P7520518412242177294.Spec : Prop :=
  ∀ n, P7520518412242177294.a n = A028289 n

end A028289

/-! ## A028289.P16202547515754868822

`A029136(2*n)`
-/

namespace A028289.P16202547515754868822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 (2 * n)

end

end A028289.P16202547515754868822

namespace A028289

/-- `A029136(2*n)` -/
def P16202547515754868822.Spec : Prop :=
  ∀ n, P16202547515754868822.a n = A028289 n

end A028289

/-! ## A028289.P5409677711997991621

`A387209(2*n)+1`
-/

namespace A028289.P5409677711997991621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387209 (2 * n) + 1

end

end A028289.P5409677711997991621

namespace A028289

/-- `A387209(2*n)+1` -/
def P5409677711997991621.Spec : Prop :=
  ∀ n, P5409677711997991621.a n = A028289 n

end A028289

/-! ## A028289.P2546703996830909031

`A029046(2*n)`
-/

namespace A028289.P2546703996830909031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 (2 * n)

end

end A028289.P2546703996830909031

namespace A028289

/-- `A029046(2*n)` -/
def P2546703996830909031.Spec : Prop :=
  ∀ n, P2546703996830909031.a n = A028289 n

end A028289

/-! ## A028289.P7672403058033384673

`∑[A025828(2*n)]`
-/

namespace A028289.P7672403058033384673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028289.P7672403058033384673

namespace A028289

/-- `∑[A025828(2*n)]` -/
def P7672403058033384673.Spec : Prop :=
  ∀ n, P7672403058033384673.a n = A028289 n

end A028289

/-! ## A028289.P1448486253565035335

`A025828(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A028289.P1448486253565035335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025828 (n + n) + a (n - 1)

end

end A028289.P1448486253565035335

namespace A028289

/-- `A025828(n+n)+a(n-1)` -/
def P1448486253565035335.Spec : Prop :=
  ∀ n, P1448486253565035335.a n = A028289 n

end A028289

/-! ## A028289.P8359748601021755215

`(A025796(2*n)+A008670(2*n))/2`
-/

namespace A028289.P8359748601021755215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025796 (2 * n) + A008670 (2 * n) : ℚ) / 2

end

end A028289.P8359748601021755215

namespace A028289

/-- `(A025796(2*n)+A008670(2*n))/2` -/
def P8359748601021755215.Spec : Prop :=
  ∀ n, P8359748601021755215.a n = (A028289 n : ℚ)

end A028289

/-! ## A028289.P1023068473122947585

`∑[A024165(2*n+1)+A008612(2*n)]`
-/

namespace A028289.P1023068473122947585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024165 (2 * n + 1) + A008612 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028289.P1023068473122947585

namespace A028289

/-- `∑[A024165(2*n+1)+A008612(2*n)]` -/
def P1023068473122947585.Spec : Prop :=
  ∀ n, P1023068473122947585.a n = A028289 n

end A028289

/-! ## A028289.P11527479274063908914

`∑[A025801(2*n)]-A025801(2*n+1)`
-/

namespace A028289.P11527479274063908914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025801 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A025801 (2 * n + 1)

end

end A028289.P11527479274063908914

namespace A028289

/-- `∑[A025801(2*n)]-A025801(2*n+1)` -/
def P11527479274063908914.Spec : Prop :=
  ∀ n, P11527479274063908914.a n = A028289 n

end A028289

/-! ## A028289.P15984654332475042046

`A026812(2*n)+A037145(2*n)-A026812(2*n+1)`
-/

namespace A028289.P15984654332475042046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (2 * n) + (A037145 (2 * n) - A026812 (2 * n + 1))

end

end A028289.P15984654332475042046

namespace A028289

/-- `A026812(2*n)+A037145(2*n)-A026812(2*n+1)` -/
def P15984654332475042046.Spec : Prop :=
  ∀ n, P15984654332475042046.a n = A028289 n

end A028289

/-! ## A028289.P7749083023946987761

`A008667(2*n+1)+A037145(2*n)-A037145(2*n+1)`
-/

namespace A028289.P7749083023946987761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (2 * n + 1) + (A037145 (2 * n) - A037145 (2 * n + 1))

end

end A028289.P7749083023946987761

namespace A028289

/-- `A008667(2*n+1)+A037145(2*n)-A037145(2*n+1)` -/
def P7749083023946987761.Spec : Prop :=
  ∀ n, P7749083023946987761.a n = A028289 n

end A028289

/-!
# A028290: Expansion of 1/((1-x)(1-x^2)(1-x^3)(1-x^5)(1-x^8)).

The programs for A028290, the canonical program `A028290.P3731788606478913173` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028290 has offset 0).

The definition of A028290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^4+x^7-x^8+x^11-x^12-x^15+x^17+x^18-x^19))` (program `A028290.P3731788606478913173`, by `A028290.P3731788606478913173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028290.P3731788606478913173

`ogf(1/(1-x-x^2+x^4+x^7-x^8+x^11-x^12-x^15+x^17+x^18-x^19))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028290

/-- `ogf(1/(1-x-x^2+x^4+x^7-x^8+x^11-x^12-x^15+x^17+x^18-x^19))` -/
def P3731788606478913173.Spec : Prop :=
  ∀ n, P3731788606478913173.a n = A028290 n

theorem P3731788606478913173.correct : P3731788606478913173.Spec := by
  intro n
  simp only [A028290]

end A028290

/-! ## A028290.P14845463782627253486

`∑[A029145(n)]`
-/

namespace A028290.P14845463782627253486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028290.P14845463782627253486

namespace A028290

/-- `∑[A029145(n)]` -/
def P14845463782627253486.Spec : Prop :=
  ∀ n, P14845463782627253486.a n = A028290 n

end A028290

/-! ## A028290.P12274601389250368036

`A029040(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A028290.P12274601389250368036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029040 n + a (n - 2)

end

end A028290.P12274601389250368036

namespace A028290

/-- `A029040(n)+a(n-2)` -/
def P12274601389250368036.Spec : Prop :=
  ∀ n, P12274601389250368036.a n = A028290 n

end A028290

/-! ## A028290.P1192053924900568182

`A029013(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A028290.P1192053924900568182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A029013 n + a (n - 3)

end

end A028290.P1192053924900568182

namespace A028290

/-- `A029013(n)+a(n-3)` -/
def P1192053924900568182.Spec : Prop :=
  ∀ n, P1192053924900568182.a n = A028290 n

end A028290

/-! ## A028290.P15613101002776833667

`A029145(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A028290.P15613101002776833667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029145 n + a (A023443 n).toNat

end

end A028290.P15613101002776833667

namespace A028290

/-- `A029145(n)+a(A023443(n))` -/
def P15613101002776833667.Spec : Prop :=
  ∀ n, P15613101002776833667.a n = A028290 n

end A028290

/-! ## A028290.P7540583092256802913

`a(n-1)+A029145(n)+A000038(n)` with `a(0)=1`
-/

namespace A028290.P7540583092256802913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A029145 n + A000038 n)

end

end A028290.P7540583092256802913

namespace A028290

/-- `a(n-1)+A029145(n)+A000038(n)` -/
def P7540583092256802913.Spec : Prop :=
  ∀ n, P7540583092256802913.a n = A028290 n

end A028290

/-! ## A028290.P9347828478322539256

`A029145(n)+a(A123108(A004273(n)))` with `a(0)=1`
-/

namespace A028290.P9347828478322539256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029145 n + a (A123108 (A004273 n).toNat).toNat

end

end A028290.P9347828478322539256

namespace A028290

/-- `A029145(n)+a(A123108(A004273(n)))` -/
def P9347828478322539256.Spec : Prop :=
  ∀ n, P9347828478322539256.a n = A028290 n

end A028290

/-! ## A028290.P1091488036924021372

`A261102(A261102(a(n-1)))+A029145(n)` with `a(0)=1`
-/

namespace A028290.P1091488036924021372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261102 (A261102 (a (n - 1)).toNat).toNat + A029145 n

end

end A028290.P1091488036924021372

namespace A028290

/-- `A261102(A261102(a(n-1)))+A029145(n)` -/
def P1091488036924021372.Spec : Prop :=
  ∀ n, P1091488036924021372.a n = A028290 n

end A028290

/-! ## A028290.P10965184854557900436

`A060125(A060125(a(n-1)))+A029145(n)` with `a(0)=1`
-/

namespace A028290.P10965184854557900436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060125 (A060125 (a (n - 1)).toNat).toNat + A029145 n

end

end A028290.P10965184854557900436

namespace A028290

/-- `A060125(A060125(a(n-1)))+A029145(n)` -/
def P10965184854557900436.Spec : Prop :=
  ∀ n, P10965184854557900436.a n = A028290 n

end A028290

/-!
# A028291: Expansion of 1/((1-x)^2(1-x^2)(1-x^3)(1-x^5)) in powers of x.

The programs for A028291, the canonical program `A028291.P18433397833030999233` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028291 has offset 0).

The definition of A028291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^3+x^4-x^5+x^7-x^8-x^9+2x^11-x^12))` (program `A028291.P18433397833030999233`, by `A028291.P18433397833030999233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028291.P18433397833030999233

`ogf(1/(1-2x+x^3+x^4-x^5+x^7-x^8-x^9+2x^11-x^12))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028291

/-- `ogf(1/(1-2x+x^3+x^4-x^5+x^7-x^8-x^9+2x^11-x^12))` -/
def P18433397833030999233.Spec : Prop :=
  ∀ n, P18433397833030999233.a n = A028291 n

theorem P18433397833030999233.correct : P18433397833030999233.Spec := by
  intro n
  simp only [A028291]

end A028291

/-! ## A028291.P15966348666068268886

`round((n+1)*(n^3+23*n²+173*n+451)/720)`
-/

namespace A028291.P15966348666068268886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) * (n ^ 3 + 23 * n ^ 2 + 173 * n + 451) : ℚ) / 720)

end

end A028291.P15966348666068268886

namespace A028291

/-- `round((n+1)*(n^3+23*n²+173*n+451)/720)` -/
def P15966348666068268886.Spec : Prop :=
  ∀ n, P15966348666068268886.a n = A028291 n

end A028291

/-! ## A028291.P606267557168916533

`∑[A008669(n)]`
-/

namespace A028291.P606267557168916533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P606267557168916533

namespace A028291

/-- `∑[A008669(n)]` -/
def P606267557168916533.Spec : Prop :=
  ∀ n, P606267557168916533.a n = A028291 n

end A028291

/-! ## A028291.P16384368841715684827

`∑[∑[A025795(n)]]`
-/

namespace A028291.P16384368841715684827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P16384368841715684827

namespace A028291

/-- `∑[∑[A025795(n)]]` -/
def P16384368841715684827.Spec : Prop :=
  ∀ n, P16384368841715684827.a n = A028291 n

end A028291

/-! ## A028291.P5877531074143929153

`A002621(n)-A026811(n+1)`
-/

namespace A028291.P5877531074143929153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 n - A026811 (n + 1)

end

end A028291.P5877531074143929153

namespace A028291

/-- `A002621(n)-A026811(n+1)` -/
def P5877531074143929153.Spec : Prop :=
  ∀ n, P5877531074143929153.a n = A028291 n

end A028291

/-! ## A028291.P2533568776586750236

`∑[A001401(n)-A026811(n+1)]`
-/

namespace A028291.P2533568776586750236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001401 n - A026811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P2533568776586750236

namespace A028291

/-- `∑[A001401(n)-A026811(n+1)]` -/
def P2533568776586750236.Spec : Prop :=
  ∀ n, P2533568776586750236.a n = A028291 n

end A028291

/-! ## A028291.P17493892093371166239

`A002621(n+1)+A002622(n)-A002622(n+1)`
-/

namespace A028291.P17493892093371166239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 (n + 1) + (A002622 n - A002622 (n + 1))

end

end A028291.P17493892093371166239

namespace A028291

/-- `A002621(n+1)+A002622(n)-A002622(n+1)` -/
def P17493892093371166239.Spec : Prop :=
  ∀ n, P17493892093371166239.a n = A028291 n

end A028291

/-! ## A028291.P8868595441830594597

`A002621(n+1)-A001401(n+1)`
-/

namespace A028291.P8868595441830594597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002621 (n + 1) - A001401 (n + 1)

end

end A028291.P8868595441830594597

namespace A028291

/-- `A002621(n+1)-A001401(n+1)` -/
def P8868595441830594597.Spec : Prop :=
  ∀ n, P8868595441830594597.a n = A028291 n

end A028291

/-! ## A028291.P8752555733434860074

`∑[A001400(n+1)-A008667(n+1)]`
-/

namespace A028291.P8752555733434860074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (n + 1) - A008667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P8752555733434860074

namespace A028291

/-- `∑[A001400(n+1)-A008667(n+1)]` -/
def P8752555733434860074.Spec : Prop :=
  ∀ n, P8752555733434860074.a n = A028291 n

end A028291

/-! ## A028291.P8142225044275542012

`∑[A029055(2*n)]`
-/

namespace A028291.P8142225044275542012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029055 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P8142225044275542012

namespace A028291

/-- `∑[A029055(2*n)]` -/
def P8142225044275542012.Spec : Prop :=
  ∀ n, P8142225044275542012.a n = A028291 n

end A028291

/-! ## A028291.P7120524269148003331

`∑[A029069(2*n)]`
-/

namespace A028291.P7120524269148003331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029069 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P7120524269148003331

namespace A028291

/-- `∑[A029069(2*n)]` -/
def P7120524269148003331.Spec : Prop :=
  ∀ n, P7120524269148003331.a n = A028291 n

end A028291

/-! ## A028291.P8687746926809829990

`∑[A029140(2*n)]`
-/

namespace A028291.P8687746926809829990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P8687746926809829990

namespace A028291

/-- `∑[A029140(2*n)]` -/
def P8687746926809829990.Spec : Prop :=
  ∀ n, P8687746926809829990.a n = A028291 n

end A028291

/-! ## A028291.P16942625674331286846

`∑[A029171(2*n)]`
-/

namespace A028291.P16942625674331286846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029171 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P16942625674331286846

namespace A028291

/-- `∑[A029171(2*n)]` -/
def P16942625674331286846.Spec : Prop :=
  ∀ n, P16942625674331286846.a n = A028291 n

end A028291

/-! ## A028291.P15111186736336548663

`∑[A097852(2*n)]`
-/

namespace A028291.P15111186736336548663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097852 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P15111186736336548663

namespace A028291

/-- `∑[A097852(2*n)]` -/
def P15111186736336548663.Spec : Prop :=
  ∀ n, P15111186736336548663.a n = A028291 n

end A028291

/-! ## A028291.P10374984948753292046

`∑[∑[A008682(2*n)]]`
-/

namespace A028291.P10374984948753292046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P10374984948753292046

namespace A028291

/-- `∑[∑[A008682(2*n)]]` -/
def P10374984948753292046.Spec : Prop :=
  ∀ n, P10374984948753292046.a n = A028291 n

end A028291

/-! ## A028291.P7493711422663376947

`∑[∑[A025832(2*n)]]`
-/

namespace A028291.P7493711422663376947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025832 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P7493711422663376947

namespace A028291

/-- `∑[∑[A025832(2*n)]]` -/
def P7493711422663376947.Spec : Prop :=
  ∀ n, P7493711422663376947.a n = A028291 n

end A028291

/-! ## A028291.P2642393075650620302

`∑[A029086(2*n+1)]`
-/

namespace A028291.P2642393075650620302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P2642393075650620302

namespace A028291

/-- `∑[A029086(2*n+1)]` -/
def P2642393075650620302.Spec : Prop :=
  ∀ n, P2642393075650620302.a n = A028291 n

end A028291

/-! ## A028291.P11727241797466747831

`∑[A029194(2*n+1)+A029194(2*n)]`
-/

namespace A028291.P11727241797466747831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 (2 * n + 1) + A029194 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P11727241797466747831

namespace A028291

/-- `∑[A029194(2*n+1)+A029194(2*n)]` -/
def P11727241797466747831.Spec : Prop :=
  ∀ n, P11727241797466747831.a n = A028291 n

end A028291

/-! ## A028291.P2016041016294269529

`∑[A025812(2*n)+∑[A025812(2*n+1)]]`
-/

namespace A028291.P2016041016294269529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025812 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P2016041016294269529

namespace A028291

/-- `∑[A025812(2*n)+∑[A025812(2*n+1)]]` -/
def P2016041016294269529.Spec : Prop :=
  ∀ n, P2016041016294269529.a n = A028291 n

end A028291

/-! ## A028291.P15384204721587281935

`∑[∑[A025877(2*n+1)+A025877(2*n)]]`
-/

namespace A028291.P15384204721587281935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (2 * n + 1) + A025877 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028291.P15384204721587281935

namespace A028291

/-- `∑[∑[A025877(2*n+1)+A025877(2*n)]]` -/
def P15384204721587281935.Spec : Prop :=
  ∀ n, P15384204721587281935.a n = A028291 n

end A028291

/-!
# A028292: Numbers of letters in n (in the Norwegian language Nynorsk).

The programs for A028292, there is no canonical definition to state claims against.
-/

/-! ## A028292.P17859635279262935028

`A014656(n+1)+A014560(A014641(n))`
-/

namespace A028292.P17859635279262935028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014656 (n + 1) + A014560 (A014641 n).toNat

end

end A028292.P17859635279262935028

/-! ## A028292.P4805122162073687327

`A014656(n+1)+A014624(A014642(n+1))`
-/

namespace A028292.P4805122162073687327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014656 (n + 1) + A014624 (A014642 (n + 1)).toNat

end

end A028292.P4805122162073687327

/-! ## A028292.P5375663906848205587

`A014656(n+1)-A014660(A014670(3*n))`
-/

namespace A028292.P5375663906848205587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014656 (n + 1) - A014660 (A014670 (3 * n)).toNat

end

end A028292.P5375663906848205587

/-! ## A028292.P15011761768397253269

`A014656(n+1)+A014647(A077126(2*(n+1)))`
-/

namespace A028292.P15011761768397253269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014656 (n + 1) + A014647 (A077126 (2 * (n + 1))).toNat

end

end A028292.P15011761768397253269

/-! ## A028292.P1033387385577336468

`A014656(n+1)+A014638((5*n)²)`
-/

namespace A028292.P1033387385577336468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014656 (n + 1) + A014638 ((5 * n) ^ 2)

end

end A028292.P1033387385577336468

/-!
# A028293: Period 7.

The programs for A028293, the canonical program `A028293.P2901531336027676159` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028293 has offset 0).

The definition of A028293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028293.P2901531336027676159

`val(n%7+1, 2)+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028293

/-- `val(n%7+1, 2)+1` -/
def P2901531336027676159.Spec : Prop :=
  ∀ n, (P2901531336027676159.a n : ℤ) = A028293 n

theorem P2901531336027676159.correct : P2901531336027676159.Spec := by
  intro n
  simp only [A028293]

end A028293

/-!
# A028296: Expansion of e.g.f. Gudermannian(x) = 2*arctan(exp(x)) - Pi/2.

The programs for A028296, there is no canonical definition to state claims against.
-/

/-! ## A028296.P16369471846433698275

`A122045(2*n)`
-/

namespace A028296.P16369471846433698275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 (2 * n)

end

end A028296.P16369471846433698275

/-! ## A028296.P16184270818289864152

`A119882(2*n)`
-/

namespace A028296.P16184270818289864152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119882 (2 * n)

end

end A028296.P16184270818289864152

/-! ## A028296.P15752536161382349681

`A241209(2*n)`
-/

namespace A028296.P15752536161382349681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241209 (2 * n)

end

end A028296.P15752536161382349681

/-! ## A028296.P7395142952254698477

`Δ[A009390(2*n)]`
-/

namespace A028296.P7395142952254698477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A028296.P7395142952254698477

/-! ## A028296.P16138360428886577667

`1-A009832(2*n)`
-/

namespace A028296.P16138360428886577667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A009832 (2 * n)

end

end A028296.P16138360428886577667

/-!
# A028297: Coefficients of Chebyshev polynomials of the first kind: triangle of coefficients in expansion of cos(n*x) in descending powers of cos(x).

The programs for A028297, the canonical program `A028297.P10095592831867531636` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028297 has offset 0).

The definition of A028297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028297.P10095592831867531636

`A118800(A091018(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A028297

/-- `A118800(A091018(n))` -/
def P10095592831867531636.Spec : Prop :=
  ∀ n, P10095592831867531636.a n = A028297 n

theorem P10095592831867531636.correct : P10095592831867531636.Spec := by
  intro n
  simp only [A028297]

end A028297

/-! ## A028297.P9618205388429965732

`A118800(A056536(n+1)-1)`
-/

namespace A028297.P9618205388429965732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (A056536 (n + 1) - 1).toNat

end

end A028297.P9618205388429965732

namespace A028297

/-- `A118800(A056536(n+1)-1)` -/
def P9618205388429965732.Spec : Prop :=
  ∀ n, P9618205388429965732.a n = A028297 n

end A028297

/-! ## A028297.P6327477465697961546

`A039991(A028391(n)+n)`
-/

namespace A028297.P6327477465697961546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 (A028391 n + (n : ℤ)).toNat

end

end A028297.P6327477465697961546

namespace A028297

/-- `A039991(A028391(n)+n)` -/
def P6327477465697961546.Spec : Prop :=
  ∀ n, P6327477465697961546.a n = A028297 n

end A028297

/-! ## A028297.P10583931156541729986

`A039991(2*n-A000196(n))`
-/

namespace A028297.P10583931156541729986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 ((2 * n : ℤ) - A000196 n).toNat

end

end A028297.P10583931156541729986

namespace A028297

/-- `A039991(2*n-A000196(n))` -/
def P10583931156541729986.Spec : Prop :=
  ∀ n, P10583931156541729986.a n = A028297 n

end A028297

/-! ## A028297.P770801937536127841

`A039991(n-A000196(n)+n)`
-/

namespace A028297.P770801937536127841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 ((n : ℤ) - A000196 n + (n : ℤ)).toNat

end

end A028297.P770801937536127841

namespace A028297

/-- `A039991(n-A000196(n)+n)` -/
def P770801937536127841.Spec : Prop :=
  ∀ n, P770801937536127841.a n = A028297 n

end A028297

/-! ## A028297.P14387901698659703044

`A039991(n-(A000196(n)-n))`
-/

namespace A028297.P14387901698659703044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 ((n : ℤ) - (A000196 n - (n : ℤ))).toNat

end

end A028297.P14387901698659703044

namespace A028297

/-- `A039991(n-(A000196(n)-n))` -/
def P14387901698659703044.Spec : Prop :=
  ∀ n, P14387901698659703044.a n = A028297 n

end A028297

/-!
# A028299: Weight distribution of the dodecacode, a [[12,0,6]] quantum-error-correcting code.

The programs for A028299, there is no canonical definition to state claims against.
-/

/-! ## A028299.P11471526665967976669

`A310097(n)*A333755(A022354(n))`
-/

namespace A028299.P11471526665967976669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310097 n * A333755 (A022354 n).toNat

end

end A028299.P11471526665967976669

