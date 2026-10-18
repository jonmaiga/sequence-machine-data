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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A081200: 6th binomial transform of (0,1,0,1,0,1,...), A000035.

The programs for A081200, the canonical program `A081200.P16296643330027943874` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081200 has offset 0).

The definition of A081200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081200.P16296643330027943874

`12*a(n-1)-35*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081200

/-- `12*a(n-1)-35*a(n-2)` -/
def P16296643330027943874.Spec : Prop :=
  ∀ n, P16296643330027943874.a n = A081200 n

theorem P16296643330027943874.correct : P16296643330027943874.Spec := by
  intro n
  simp only [A081200]

end A081200

/-! ## A081200.P13112626473592109546

`A121213(n)/2`
-/

namespace A081200.P13112626473592109546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121213 n : ℚ) / 2

end

end A081200.P13112626473592109546

namespace A081200

/-- `A121213(n)/2` -/
def P13112626473592109546.Spec : Prop :=
  ∀ n, P13112626473592109546.a n = (A081200 n : ℚ)

end A081200

/-! ## A081200.P432138199808759945

`(7^n-5^n)/2`
-/

namespace A081200.P432138199808759945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) - (5 ^ n : ℤ) : ℚ) / 2

end

end A081200.P432138199808759945

namespace A081200

/-- `(7^n-5^n)/2` -/
def P432138199808759945.Spec : Prop :=
  ∀ n, P432138199808759945.a n = (A081200 n : ℚ)

theorem P432138199808759945.correct : P432138199808759945.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081200, Nat.add_sub_cancel, A081200.P432138199808759945.a, A081200.P16296643330027943874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081200, Nat.add_sub_cancel, A081200.P432138199808759945.a, A081200.P16296643330027943874.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081200

/-! ## A081200.P1449308699927782596

`(7^n)%((5^n+7^n)/2)`
-/

namespace A081200.P1449308699927782596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (7 ^ n : ℤ) (SequenceMachineLib.roundAway ((5 ^ n + 7 ^ n : ℚ) / 2))

end

end A081200.P1449308699927782596

namespace A081200

/-- `(7^n)%((5^n+7^n)/2)` -/
def P1449308699927782596.Spec : Prop :=
  ∀ n, P1449308699927782596.a n = A081200 n

end A081200

/-! ## A081200.P10472894324742013528

`A121204(n)/2+n`
-/

namespace A081200.P10472894324742013528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121204 n : ℚ) / 2 + (n : ℚ)

end

end A081200.P10472894324742013528

namespace A081200

/-- `A121204(n)/2+n` -/
def P10472894324742013528.Spec : Prop :=
  ∀ n, P10472894324742013528.a n = (A081200 n : ℚ)

end A081200

/-! ## A081200.P13682398470434435049

`A121203(n)/2-n`
-/

namespace A081200.P13682398470434435049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121203 n : ℚ) / 2 - (n : ℚ)

end

end A081200.P13682398470434435049

namespace A081200

/-- `A121203(n)/2-n` -/
def P13682398470434435049.Spec : Prop :=
  ∀ n, P13682398470434435049.a n = (A081200 n : ℚ)

end A081200

/-! ## A081200.P2013980275343152258

`A081188(n)-5^n`
-/

namespace A081200.P2013980275343152258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081188 n - (5 ^ n : ℤ)

end

end A081200.P2013980275343152258

namespace A081200

/-- `A081188(n)-5^n` -/
def P2013980275343152258.Spec : Prop :=
  ∀ n, P2013980275343152258.a n = A081200 n

end A081200

/-! ## A081200.P2876834697565792889

`A034494(n)-A034478(n)`
-/

namespace A081200.P2876834697565792889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n - A034478 n

end

end A081200.P2876834697565792889

namespace A081200

/-- `A034494(n)-A034478(n)` -/
def P2876834697565792889.Spec : Prop :=
  ∀ n, P2876834697565792889.a n = A081200 n

end A081200

/-! ## A081200.P9322462271664988815

`A120741(n)+1-A034478(n)`
-/

namespace A081200.P9322462271664988815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + (1 - A034478 n)

end

end A081200.P9322462271664988815

namespace A081200

/-- `A120741(n)+1-A034478(n)` -/
def P9322462271664988815.Spec : Prop :=
  ∀ n, P9322462271664988815.a n = A081200 n

end A081200

/-! ## A081200.P13629326106231081554

`∑[(A055272(n)-A005054(n))/2]`
-/

namespace A081200.P13629326106231081554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055272 n - A005054 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081200.P13629326106231081554

namespace A081200

/-- `∑[(A055272(n)-A005054(n))/2]` -/
def P13629326106231081554.Spec : Prop :=
  ∀ n, P13629326106231081554.a n = (A081200 n : ℚ)

end A081200

/-! ## A081200.P11637544550598638313

`Δ[(A023000(n)-A003463(n))/2]`
-/

namespace A081200.P11637544550598638313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023000 n - A003463 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081200.P11637544550598638313

namespace A081200

/-- `Δ[(A023000(n)-A003463(n))/2]` -/
def P11637544550598638313.Spec : Prop :=
  ∀ n, P11637544550598638313.a n = (A081200 n : ℚ)

end A081200

/-!
# A081201: 7th binomial transform of (0,1,0,1,0,1,....), A000035.

The programs for A081201, the canonical program `A081201.P12638881587723355303` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081201 has offset 0).

The definition of A081201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081201.P87673967801225159

`(8^n-6^n)/2`
-/

namespace A081201.P87673967801225159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) - (6 ^ n : ℤ) : ℚ) / 2

end

end A081201.P87673967801225159

namespace A081201

/-- `(8^n-6^n)/2` -/
def P87673967801225159.Spec : Prop :=
  ∀ n, P87673967801225159.a n = (A081201 n : ℚ)

theorem P87673967801225159.correct : P87673967801225159.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081201, Nat.add_sub_cancel, A081201.P87673967801225159.a, A081201.P12638881587723355303.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081201, Nat.add_sub_cancel, A081201.P87673967801225159.a, A081201.P12638881587723355303.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081201

/-! ## A081201.P12638881587723355303

`14*a(n-1)-48*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081201

/-- `14*a(n-1)-48*a(n-2)` -/
def P12638881587723355303.Spec : Prop :=
  ∀ n, P12638881587723355303.a n = A081201 n

theorem P12638881587723355303.correct : P12638881587723355303.Spec := by
  intro n
  simp only [A081201]

end A081201

/-! ## A081201.P4840834713169678901

`lcm(4^n-3^n, ceil(2^(n-1)))`
-/

namespace A081201.P4840834713169678901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 ^ n : ℤ) - (3 ^ n : ℤ)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A081201.P4840834713169678901

namespace A081201

/-- `lcm(4^n-3^n, ceil(2^(n-1)))` -/
def P4840834713169678901.Spec : Prop :=
  ∀ n, (P4840834713169678901.a n : ℤ) = A081201 n

end A081201

/-! ## A081201.P16904352800730769730

`A081342(n)-A081335(n)`
-/

namespace A081201.P16904352800730769730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081342 n - A081335 n

end

end A081201.P16904352800730769730

namespace A081201

/-- `A081342(n)-A081335(n)` -/
def P16904352800730769730.Spec : Prop :=
  ∀ n, P16904352800730769730.a n = A081201 n

end A081201

/-! ## A081201.P2464808983313049885

`A092811(n)-A081341(n)`
-/

namespace A081201.P2464808983313049885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092811 n - A081341 n

end

end A081201.P2464808983313049885

namespace A081201

/-- `A092811(n)-A081341(n)` -/
def P2464808983313049885.Spec : Prop :=
  ∀ n, P2464808983313049885.a n = A081201 n

end A081201

/-! ## A081201.P14772930840811877540

`A005061(n)*A011782(n)`
-/

namespace A081201.P14772930840811877540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n * A011782 n

end

end A081201.P14772930840811877540

namespace A081201

/-- `A005061(n)*A011782(n)` -/
def P14772930840811877540.Spec : Prop :=
  ∀ n, P14772930840811877540.a n = A081201 n

end A081201

/-! ## A081201.P969665652441277220

`A005061(n)*A131577(n)`
-/

namespace A081201.P969665652441277220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 n * A131577 n

end

end A081201.P969665652441277220

namespace A081201

/-- `A005061(n)*A131577(n)` -/
def P969665652441277220.Spec : Prop :=
  ∀ n, P969665652441277220.a n = A081201 n

end A081201

/-! ## A081201.P15192444906278568765

`A011782(A008486(n))-A081341(n)`
-/

namespace A081201.P15192444906278568765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008486 n).toNat - A081341 n

end

end A081201.P15192444906278568765

namespace A081201

/-- `A011782(A008486(n))-A081341(n)` -/
def P15192444906278568765.Spec : Prop :=
  ∀ n, P15192444906278568765.a n = A081201 n

end A081201

/-! ## A081201.P11455033720487206899

`A000079(n)*A006516(n)-A081199(n)`
-/

namespace A081201.P11455033720487206899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A006516 n - A081199 n

end

end A081201.P11455033720487206899

namespace A081201

/-- `A000079(n)*A006516(n)-A081199(n)` -/
def P11455033720487206899.Spec : Prop :=
  ∀ n, P11455033720487206899.a n = A081201 n

end A081201

/-! ## A081201.P15245459938629904283

`A000079(n)*A007582(n)-A081187(n)`
-/

namespace A081201.P15245459938629904283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007582 n - A081187 n

end

end A081201.P15245459938629904283

namespace A081201

/-- `A000079(n)*A007582(n)-A081187(n)` -/
def P15245459938629904283.Spec : Prop :=
  ∀ n, P15245459938629904283.a n = A081201 n

end A081201

/-! ## A081201.P16855428993998972932

`A000302(n)/A000079(n+1)*A005061(n)`
-/

namespace A081201.P16855428993998972932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) / (A000079 (n + 1) : ℚ) * (A005061 n : ℚ)

end

end A081201.P16855428993998972932

namespace A081201

/-- `A000302(n)/A000079(n+1)*A005061(n)` -/
def P16855428993998972932.Spec : Prop :=
  ∀ n, P16855428993998972932.a n = (A081201 n : ℚ)

end A081201

/-! ## A081201.P8841206964988856858

`A000079(3*n)-A081189(n)`
-/

namespace A081201.P8841206964988856858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n) - A081189 n

end

end A081201.P8841206964988856858

namespace A081201

/-- `A000079(3*n)-A081189(n)` -/
def P8841206964988856858.Spec : Prop :=
  ∀ n, P8841206964988856858.a n = A081201 n

end A081201

/-!
# A081202: 8th binomial transform of (0,1,0,1,0,1,....), A000035.

The programs for A081202, the canonical program `A081202.P6570105560882856797` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081202 has offset 0).

The definition of A081202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081202.P9229278094997612306

`(9^n-7^n)/2`
-/

namespace A081202.P9229278094997612306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) - (7 ^ n : ℤ) : ℚ) / 2

end

end A081202.P9229278094997612306

namespace A081202

/-- `(9^n-7^n)/2` -/
def P9229278094997612306.Spec : Prop :=
  ∀ n, P9229278094997612306.a n = (A081202 n : ℚ)

theorem P9229278094997612306.correct : P9229278094997612306.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081202, Nat.add_sub_cancel, A081202.P9229278094997612306.a, A081202.P6570105560882856797.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081202, Nat.add_sub_cancel, A081202.P9229278094997612306.a, A081202.P6570105560882856797.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081202

/-! ## A081202.P6570105560882856797

`16*a(n-1)-63*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081202

/-- `16*a(n-1)-63*a(n-2)` -/
def P6570105560882856797.Spec : Prop :=
  ∀ n, P6570105560882856797.a n = A081202 n

theorem P6570105560882856797.correct : P6570105560882856797.Spec := by
  intro n
  simp only [A081202]

end A081202

/-! ## A081202.P11994235531191945502

`A191681(n)-A120741(n)`
-/

namespace A081202.P11994235531191945502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n - A120741 n

end

end A081202.P11994235531191945502

namespace A081202

/-- `A191681(n)-A120741(n)` -/
def P11994235531191945502.Spec : Prop :=
  ∀ n, P11994235531191945502.a n = A081202 n

end A081202

/-! ## A081202.P7944710211951059891

`A016178(n-A057427(n))*A057427(n)`
-/

namespace A081202.P7944710211951059891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016178 ((n : ℤ) - A057427 n).toNat * A057427 n

end

end A081202.P7944710211951059891

namespace A081202

/-- `A016178(n-A057427(n))*A057427(n)` -/
def P7944710211951059891.Spec : Prop :=
  ∀ n, P7944710211951059891.a n = A081202 n

end A081202

/-! ## A081202.P7880387384129900258

`floor(A155660(n)/2)`
-/

namespace A081202.P7880387384129900258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155660 n : ℚ) / 2⌋

end

end A081202.P7880387384129900258

namespace A081202

/-- `floor(A155660(n)/2)` -/
def P7880387384129900258.Spec : Prop :=
  ∀ n, P7880387384129900258.a n = A081202 n

end A081202

/-! ## A081202.P13531809770339375824

`(5*9^n-4*7^n)%A016178(n)`
-/

namespace A081202.P13531809770339375824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((5 * 9 ^ n : ℤ) - (4 * 7 ^ n : ℤ)) (A016178 n)

end

end A081202.P13531809770339375824

namespace A081202

/-- `(5*9^n-4*7^n)%A016178(n)` -/
def P13531809770339375824.Spec : Prop :=
  ∀ n, P13531809770339375824.a n = A081202 n

end A081202

/-! ## A081202.P2862593811750953607

`A001019(n)-A081190(n)`
-/

namespace A081202.P2862593811750953607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - A081190 n

end

end A081202.P2862593811750953607

namespace A081202

/-- `A001019(n)-A081190(n)` -/
def P2862593811750953607.Spec : Prop :=
  ∀ n, P2862593811750953607.a n = A081202 n

end A081202

/-! ## A081202.P18289947795767822112

`abs(A016178(n)-A081035(n))`
-/

namespace A081202.P18289947795767822112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016178 n - A081035 n|

end

end A081202.P18289947795767822112

namespace A081202

/-- `abs(A016178(n)-A081035(n))` -/
def P18289947795767822112.Spec : Prop :=
  ∀ n, P18289947795767822112.a n = A081202 n

end A081202

/-! ## A081202.P15857288492871746815

`A101990(2*n+1)-A081190(n)`
-/

namespace A081202.P15857288492871746815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101990 (2 * n + 1) - A081190 n

end

end A081202.P15857288492871746815

namespace A081202

/-- `A101990(2*n+1)-A081190(n)` -/
def P15857288492871746815.Spec : Prop :=
  ∀ n, P15857288492871746815.a n = A081202 n

end A081202

/-!
# A081203: 9th binomial transform of (0,1,0,1,0,1,.....), A000035.

The programs for A081203, the canonical program `A081203.P10701753157426835903` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081203 has offset 0).

The definition of A081203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081203.P1463148986889120431

`(10^n-8^n)/2`
-/

namespace A081203.P1463148986889120431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - (8 ^ n : ℤ) : ℚ) / 2

end

end A081203.P1463148986889120431

namespace A081203

/-- `(10^n-8^n)/2` -/
def P1463148986889120431.Spec : Prop :=
  ∀ n, P1463148986889120431.a n = (A081203 n : ℚ)

theorem P1463148986889120431.correct : P1463148986889120431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081203, Nat.add_sub_cancel, A081203.P1463148986889120431.a, A081203.P10701753157426835903.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081203, Nat.add_sub_cancel, A081203.P1463148986889120431.a, A081203.P10701753157426835903.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081203

/-! ## A081203.P10701753157426835903

`18*a(n-1)-80*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081203

/-- `18*a(n-1)-80*a(n-2)` -/
def P10701753157426835903.Spec : Prop :=
  ∀ n, P10701753157426835903.a n = A081203 n

theorem P10701753157426835903.correct : P10701753157426835903.Spec := by
  intro n
  simp only [A081203]

end A081203

/-! ## A081203.P3933574779724268650

`lcm(5^n-4^n, ceil(2^(n-1)))`
-/

namespace A081203.P3933574779724268650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((5 ^ n : ℤ) - (4 ^ n : ℤ)) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A081203.P3933574779724268650

namespace A081203

/-- `lcm(5^n-4^n, ceil(2^(n-1)))` -/
def P3933574779724268650.Spec : Prop :=
  ∀ n, (P3933574779724268650.a n : ℤ) = A081203 n

end A081203

/-! ## A081203.P66769288887696578

`floor(A155667(n)/2)`
-/

namespace A081203.P66769288887696578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155667 n : ℚ) / 2⌋

end

end A081203.P66769288887696578

namespace A081203

/-- `floor(A155667(n)/2)` -/
def P66769288887696578.Spec : Prop :=
  ∀ n, P66769288887696578.a n = A081203 n

end A081203

/-! ## A081203.P3157792816673604915

`floor(A248343(n)/2)`
-/

namespace A081203.P3157792816673604915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248343 n : ℚ) / 2⌋

end

end A081203.P3157792816673604915

namespace A081203

/-- `floor(A248343(n)/2)` -/
def P3157792816673604915.Spec : Prop :=
  ∀ n, P3157792816673604915.a n = A081203 n

end A081203

/-! ## A081203.P7805374018172508768

`A005060(n)/2*2^n`
-/

namespace A081203.P7805374018172508768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005060 n : ℚ) / 2 * (2 ^ n : ℚ)

end

end A081203.P7805374018172508768

namespace A081203

/-- `A005060(n)/2*2^n` -/
def P7805374018172508768.Spec : Prop :=
  ∀ n, P7805374018172508768.a n = (A081203 n : ℚ)

end A081203

/-! ## A081203.P1714398467848529007

`A060531(n)-A001018(n)`
-/

namespace A081203.P1714398467848529007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060531 n - A001018 n

end

end A081203.P1714398467848529007

namespace A081203

/-- `A060531(n)-A001018(n)` -/
def P1714398467848529007.Spec : Prop :=
  ∀ n, P1714398467848529007.a n = A081203 n

end A081203

/-! ## A081203.P3945004393569473324

`A081343(n)-A081337(n)`
-/

namespace A081203.P3945004393569473324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081343 n - A081337 n

end

end A081203.P3945004393569473324

namespace A081203

/-- `A081343(n)-A081337(n)` -/
def P3945004393569473324.Spec : Prop :=
  ∀ n, P3945004393569473324.a n = A081203 n

end A081203

/-! ## A081203.P11323998120514447539

`A093143(n)-A092811(n)`
-/

namespace A081203.P11323998120514447539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n - A092811 n

end

end A081203.P11323998120514447539

namespace A081203

/-- `A093143(n)-A092811(n)` -/
def P11323998120514447539.Spec : Prop :=
  ∀ n, P11323998120514447539.a n = A081203 n

end A081203

/-! ## A081203.P17639069780097691806

`A005060(n)*A011782(n)`
-/

namespace A081203.P17639069780097691806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 n * A011782 n

end

end A081203.P17639069780097691806

namespace A081203

/-- `A005060(n)*A011782(n)` -/
def P17639069780097691806.Spec : Prop :=
  ∀ n, P17639069780097691806.a n = A081203 n

end A081203

/-! ## A081203.P9733535965366490187

`A005060(n)*A131577(n)`
-/

namespace A081203.P9733535965366490187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 n * A131577 n

end

end A081203.P9733535965366490187

namespace A081203

/-- `A005060(n)*A131577(n)` -/
def P9733535965366490187.Spec : Prop :=
  ∀ n, P9733535965366490187.a n = A081203 n

end A081203

/-! ## A081203.P15506203074636149149

`A060531(n)-A000079(3*n)`
-/

namespace A081203.P15506203074636149149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060531 n - A000079 (3 * n)

end

end A081203.P15506203074636149149

namespace A081203

/-- `A060531(n)-A000079(3*n)` -/
def P15506203074636149149.Spec : Prop :=
  ∀ n, P15506203074636149149.a n = A081203 n

end A081203

/-! ## A081203.P13213747442384843644

`A000079(n)/2*A005060(n)`
-/

namespace A081203.P13213747442384843644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A005060 n : ℚ)

end

end A081203.P13213747442384843644

namespace A081203

/-- `A000079(n)/2*A005060(n)` -/
def P13213747442384843644.Spec : Prop :=
  ∀ n, P13213747442384843644.a n = (A081203 n : ℚ)

end A081203

/-! ## A081203.P10667083939663598268

`A005060(n)*A054582(A161680(n))`
-/

namespace A081203.P10667083939663598268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005060 n * A054582 (A161680 n).toNat

end

end A081203.P10667083939663598268

namespace A081203

/-- `A005060(n)*A054582(A161680(n))` -/
def P10667083939663598268.Spec : Prop :=
  ∀ n, P10667083939663598268.a n = A081203 n

end A081203

/-! ## A081203.P6204521890060684180

`A000079(n)*A005059(n)-A081201(n)`
-/

namespace A081203.P6204521890060684180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005059 n - A081201 n

end

end A081203.P6204521890060684180

namespace A081203

/-- `A000079(n)*A005059(n)-A081201(n)` -/
def P6204521890060684180.Spec : Prop :=
  ∀ n, P6204521890060684180.a n = A081203 n

end A081203

/-! ## A081203.P8953094632997291706

`(A024049(n)-A024036(n))*A131577(n)`
-/

namespace A081203.P8953094632997291706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024049 n - A024036 n) * A131577 n

end

end A081203.P8953094632997291706

namespace A081203

/-- `(A024049(n)-A024036(n))*A131577(n)` -/
def P8953094632997291706.Spec : Prop :=
  ∀ n, P8953094632997291706.a n = A081203 n

end A081203

/-! ## A081203.P5733595322757061780

`A000079(n)/A000079(n+1)*A248343(n)`
-/

namespace A081203.P5733595322757061780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000079 (n + 1) : ℚ) * (A248343 n : ℚ)

end

end A081203.P5733595322757061780

namespace A081203

/-- `A000079(n)/A000079(n+1)*A248343(n)` -/
def P5733595322757061780.Spec : Prop :=
  ∀ n, P5733595322757061780.a n = (A081203 n : ℚ)

end A081203

/-!
# A081204: Staircase on Pascal's triangle.

The programs for A081204, the canonical program `A081204.P12343401143930803537` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081204 has offset 0).

The definition of A081204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081204.P12343401143930803537

`∪[A005809(n), A165817(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081204

/-- `∪[A005809(n), A165817(n)]` -/
def P12343401143930803537.Spec : Prop :=
  ∀ n, (P12343401143930803537.a n : ℤ) = A081204 n

theorem P12343401143930803537.correct : P12343401143930803537.Spec := by
  intro n
  simp only [A081204]

end A081204

/-! ## A081204.P12621162467227581987

`A047749(n)*A063914(n+1)`
-/

namespace A081204.P12621162467227581987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n * A063914 (n + 1)

end

end A081204.P12621162467227581987

namespace A081204

/-- `A047749(n)*A063914(n+1)` -/
def P12621162467227581987.Spec : Prop :=
  ∀ n, P12621162467227581987.a n = A081204 n

end A081204

/-! ## A081204.P5168447328488263793

`A053438(n+1)/(4*n+2)*A182584(n+1)`
-/

namespace A081204.P5168447328488263793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053438 (n + 1) : ℚ) / (4 * n + 2 : ℚ) * (A182584 (n + 1) : ℚ)

end

end A081204.P5168447328488263793

namespace A081204

/-- `A053438(n+1)/(4*n+2)*A182584(n+1)` -/
def P5168447328488263793.Spec : Prop :=
  ∀ n, P5168447328488263793.a n = (A081204 n : ℚ)

end A081204

/-! ## A081204.P10586995989193200712

`C(ceil(3*n/2), n)`
-/

namespace A081204.P10586995989193200712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat n

end

end A081204.P10586995989193200712

namespace A081204

/-- `C(ceil(3*n/2), n)` -/
def P10586995989193200712.Spec : Prop :=
  ∀ n, (P10586995989193200712.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P14143732247542236387

`record[C(n, A131380(n))]`
-/

namespace A081204.P14143732247542236387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A131380 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P14143732247542236387

namespace A081204

/-- `record[C(n, A131380(n))]` -/
def P14143732247542236387.Spec : Prop :=
  ∀ n, (P14143732247542236387.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P9888949320529649210

`record[C(A057353(n), floor(n/(n%2+1)))]`
-/

namespace A081204.P9888949320529649210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057353 n).toNat ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P9888949320529649210

namespace A081204

/-- `record[C(A057353(n), floor(n/(n%2+1)))]` -/
def P9888949320529649210.Spec : Prop :=
  ∀ n, (P9888949320529649210.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P3805245020887124227

`record[C(A008621(n), A051724(n+1))]`
-/

namespace A081204.P3805245020887124227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008621 n).toNat (A051724 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P3805245020887124227

namespace A081204

/-- `record[C(A008621(n), A051724(n+1))]` -/
def P3805245020887124227.Spec : Prop :=
  ∀ n, (P3805245020887124227.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P16767221596678661905

`record[C(A004526(n+1), A130724(n))]`
-/

namespace A081204.P16767221596678661905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (n + 1)).toNat (A130724 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P16767221596678661905

namespace A081204

/-- `record[C(A004526(n+1), A130724(n))]` -/
def P16767221596678661905.Spec : Prop :=
  ∀ n, (P16767221596678661905.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P6149100294941820285

`C(A007494(n), n)%A301995(n+1)`
-/

namespace A081204.P6149100294941820285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A007494 n).toNat n : ℤ) (A301995 (n + 1))

end

end A081204.P6149100294941820285

namespace A081204

/-- `C(A007494(n), n)%A301995(n+1)` -/
def P6149100294941820285.Spec : Prop :=
  ∀ n, P6149100294941820285.a n = A081204 n

end A081204

/-! ## A081204.P14597941125126902315

`lcm(C(A007494(n), n), A309873(n+1))`
-/

namespace A081204.P14597941125126902315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.choose (A007494 n).toNat n : ℤ) (A309873 (n + 1))

end

end A081204.P14597941125126902315

namespace A081204

/-- `lcm(C(A007494(n), n), A309873(n+1))` -/
def P14597941125126902315.Spec : Prop :=
  ∀ n, (P14597941125126902315.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P3533947184130320885

`record[C(A029906(3*(n+1)), A029906(n))]`
-/

namespace A081204.P3533947184130320885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A029906 (3 * (n + 1))).toNat (A029906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P3533947184130320885

namespace A081204

/-- `record[C(A029906(3*(n+1)), A029906(n))]` -/
def P3533947184130320885.Spec : Prop :=
  ∀ n, (P3533947184130320885.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P1271376932697824993

`record[C(A002265(3*n+2), A026741(n))]`
-/

namespace A081204.P1271376932697824993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002265 (3 * n + 2)).toNat (A026741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P1271376932697824993

namespace A081204

/-- `record[C(A002265(3*n+2), A026741(n))]` -/
def P1271376932697824993.Spec : Prop :=
  ∀ n, (P1271376932697824993.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P9552233888640588028

`record[C(A002265(3*n+2), A064680(n))]`
-/

namespace A081204.P9552233888640588028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002265 (3 * n + 2)).toNat (A064680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P9552233888640588028

namespace A081204

/-- `record[C(A002265(3*n+2), A064680(n))]` -/
def P9552233888640588028.Spec : Prop :=
  ∀ n, (P9552233888640588028.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P745256185368318088

`record[C(A002265(3*n+2), A188134(2*n))]`
-/

namespace A081204.P745256185368318088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002265 (3 * n + 2)).toNat (A188134 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081204.P745256185368318088

namespace A081204

/-- `record[C(A002265(3*n+2), A188134(2*n))]` -/
def P745256185368318088.Spec : Prop :=
  ∀ n, (P745256185368318088.a n : ℤ) = A081204 n

end A081204

/-! ## A081204.P14163711383643570213

`A046899(A007590(n+1))`
-/

namespace A081204.P14163711383643570213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A007590 (n + 1)).toNat

end

end A081204.P14163711383643570213

namespace A081204

/-- `A046899(A007590(n+1))` -/
def P14163711383643570213.Spec : Prop :=
  ∀ n, P14163711383643570213.a n = A081204 n

end A081204

/-! ## A081204.P2276677517564937552

`A046899(A080476(n+1))`
-/

namespace A081204.P2276677517564937552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A080476 (n + 1)).toNat

end

end A081204.P2276677517564937552

namespace A081204

/-- `A046899(A080476(n+1))` -/
def P2276677517564937552.Spec : Prop :=
  ∀ n, P2276677517564937552.a n = A081204 n

end A081204

/-! ## A081204.P1804542342991248927

`A046899(A000982(n)+n)`
-/

namespace A081204.P1804542342991248927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000982 n + (n : ℤ)).toNat

end

end A081204.P1804542342991248927

namespace A081204

/-- `A046899(A000982(n)+n)` -/
def P1804542342991248927.Spec : Prop :=
  ∀ n, P1804542342991248927.a n = A081204 n

end A081204

/-! ## A081204.P3891027189957194919

`A046899(A116940(n)-n)`
-/

namespace A081204.P3891027189957194919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A116940 n - (n : ℤ)).toNat

end

end A081204.P3891027189957194919

namespace A081204

/-- `A046899(A116940(n)-n)` -/
def P3891027189957194919.Spec : Prop :=
  ∀ n, P3891027189957194919.a n = A081204 n

end A081204

/-! ## A081204.P13951865235154704551

`A046899(A000096(n)+1-A008619(n))`
-/

namespace A081204.P13951865235154704551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000096 n + (1 - A008619 n)).toNat

end

end A081204.P13951865235154704551

namespace A081204

/-- `A046899(A000096(n)+1-A008619(n))` -/
def P13951865235154704551.Spec : Prop :=
  ∀ n, P13951865235154704551.a n = A081204 n

end A081204

/-! ## A081204.P5325227415883866840

`A046899(1-(A008619(n)-A000096(n)))`
-/

namespace A081204.P5325227415883866840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (1 - (A008619 n - A000096 n)).toNat

end

end A081204.P5325227415883866840

namespace A081204

/-- `A046899(1-(A008619(n)-A000096(n)))` -/
def P5325227415883866840.Spec : Prop :=
  ∀ n, P5325227415883866840.a n = A081204 n

end A081204

/-!
# A081205: Staircase on Pascal's triangle.

The programs for A081205, the canonical program `A081205.P11049441091641514256` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081205 has offset 0).

The definition of A081205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081205.P11049441091641514256

`A081181(n+1)-A081204(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A081205

/-- `A081181(n+1)-A081204(n+1)` -/
def P11049441091641514256.Spec : Prop :=
  ∀ n, P11049441091641514256.a n = A081205 n

theorem P11049441091641514256.correct : P11049441091641514256.Spec := by
  intro n
  simp only [A081205]

end A081205

/-! ## A081205.P17670048398486175635

`C(∑[gcd(2, n)], n)`
-/

namespace A081205.P17670048398486175635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n

end

end A081205.P17670048398486175635

namespace A081205

/-- `C(∑[gcd(2, n)], n)` -/
def P17670048398486175635.Spec : Prop :=
  ∀ n, (P17670048398486175635.a n : ℤ) = A081205 n

end A081205

/-! ## A081205.P17341331294751238485

`C(comp[3*n]+1, n)`
-/

namespace A081205.P17341331294751238485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) n

end

end A081205.P17341331294751238485

namespace A081205

/-- `C(comp[3*n]+1, n)` -/
def P17341331294751238485.Spec : Prop :=
  ∀ n, (P17341331294751238485.a n : ℤ) = A081205 n

end A081205

/-! ## A081205.P15252193470972096857

`C(A007494(n+1), n)%A301995(n+1)`
-/

namespace A081205.P15252193470972096857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (A007494 (n + 1)).toNat n : ℤ) (A301995 (n + 1))

end

end A081205.P15252193470972096857

namespace A081205

/-- `C(A007494(n+1), n)%A301995(n+1)` -/
def P15252193470972096857.Spec : Prop :=
  ∀ n, P15252193470972096857.a n = A081205 n

end A081205

/-! ## A081205.P9832169517941784819

`C(lt[n, A130724(n)]+1, n)%(A000302(n)+1)`
-/

namespace A081205.P9832169517941784819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) n : ℤ) (A000302 n + 1)

end

end A081205.P9832169517941784819

namespace A081205

/-- `C(lt[n, A130724(n)]+1, n)%(A000302(n)+1)` -/
def P9832169517941784819.Spec : Prop :=
  ∀ n, P9832169517941784819.a n = A081205 n

end A081205

/-! ## A081205.P17380768447864004336

`A100100(A116940(n))`
-/

namespace A081205.P17380768447864004336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A116940 n).toNat

end

end A081205.P17380768447864004336

namespace A081205

/-- `A100100(A116940(n))` -/
def P17380768447864004336.Spec : Prop :=
  ∀ n, P17380768447864004336.a n = A081205 n

end A081205

/-! ## A081205.P10590573971260281282

`A059481(A080827(n+2))`
-/

namespace A081205.P10590573971260281282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A080827 (n + 2)).toNat

end

end A081205.P10590573971260281282

namespace A081205

/-- `A059481(A080827(n+2))` -/
def P10590573971260281282.Spec : Prop :=
  ∀ n, P10590573971260281282.a n = A081205 n

end A081205

/-! ## A081205.P17758554697398785467

`A059481(A047838(n+2)+2)`
-/

namespace A081205.P17758554697398785467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A047838 (n + 2) + 2).toNat

end

end A081205.P17758554697398785467

namespace A081205

/-- `A059481(A047838(n+2)+2)` -/
def P17758554697398785467.Spec : Prop :=
  ∀ n, P17758554697398785467.a n = A081205 n

end A081205

/-! ## A081205.P16677307165527437414

`A100100(A080476(n+1)+n)`
-/

namespace A081205.P16677307165527437414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100100 (A080476 (n + 1) + (n : ℤ)).toNat

end

end A081205.P16677307165527437414

namespace A081205

/-- `A100100(A080476(n+1)+n)` -/
def P16677307165527437414.Spec : Prop :=
  ∀ n, P16677307165527437414.a n = A081205 n

end A081205

/-! ## A081205.P1974565804580754148

`A059481(A116940(n+1)-n)`
-/

namespace A081205.P1974565804580754148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A116940 (n + 1) - (n : ℤ)).toNat

end

end A081205.P1974565804580754148

namespace A081205

/-- `A059481(A116940(n+1)-n)` -/
def P1974565804580754148.Spec : Prop :=
  ∀ n, P1974565804580754148.a n = A081205 n

end A081205

/-! ## A081205.P17567596403981181460

`A059481(A001972(2*n+1)+1)`
-/

namespace A081205.P17567596403981181460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 (A001972 (2 * n + 1) + 1).toNat

end

end A081205.P17567596403981181460

namespace A081205

/-- `A059481(A001972(2*n+1)+1)` -/
def P17567596403981181460.Spec : Prop :=
  ∀ n, P17567596403981181460.a n = A081205 n

end A081205

/-! ## A081205.P7519801838853622373

`A349727(A047838(n+3))`
-/

namespace A081205.P7519801838853622373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349727 (A047838 (n + 3)).toNat

end

end A081205.P7519801838853622373

namespace A081205

/-- `A349727(A047838(n+3))` -/
def P7519801838853622373.Spec : Prop :=
  ∀ n, P7519801838853622373.a n = A081205 n

end A081205

/-!
# A081206: Correlation matrix of triangle A046854.

The programs for A081206, there is no canonical definition to state claims against.
-/

/-! ## A081206.P9439230379563541394

`A054725(A215292(n+1)+A114225(n))`
-/

namespace A081206.P9439230379563541394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A215292 (n + 1) + A114225 n).toNat

end

end A081206.P9439230379563541394

/-! ## A081206.P2640672224197855908

`A054725(A215292(n+1)+A038792(n+1))`
-/

namespace A081206.P2640672224197855908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A215292 (n + 1) + A038792 (n + 1)).toNat

end

end A081206.P2640672224197855908

/-! ## A081206.P16272104483431988999

`A377722(A176487(n))`
-/

namespace A081206.P16272104483431988999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377722 (A176487 n).toNat

end

end A081206.P16272104483431988999

/-! ## A081206.P17323747091897504556

`A377722(A176560(n))`
-/

namespace A081206.P17323747091897504556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377722 (A176560 n).toNat

end

end A081206.P17323747091897504556

/-! ## A081206.P13225619875372384289

`A377722(A008292(n+1))`
-/

namespace A081206.P13225619875372384289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377722 (A008292 (n + 1)).toNat

end

end A081206.P13225619875372384289

/-!
# A081207: Main diagonal of number square A081206.

The programs for A081207, there is no canonical definition to state claims against.
-/

/-! ## A081207.P1313031637243782758

`∑[A051292(n)]-1`
-/

namespace A081207.P1313031637243782758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081207.P1313031637243782758

/-! ## A081207.P14891764394682706067

`∑[A051292(A028310(n))]`
-/

namespace A081207.P14891764394682706067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081207.P14891764394682706067

/-! ## A081207.P18201581184833990945

`∑[A051292(A065033(2*n))]`
-/

namespace A081207.P18201581184833990945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081207.P18201581184833990945

/-! ## A081207.P12385459417691080477

`∑[A051292(A123108(2*n))]`
-/

namespace A081207.P12385459417691080477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081207.P12385459417691080477

/-! ## A081207.P12621615221304610910

`∑[A051292(A000038(n)+n)]`
-/

namespace A081207.P12621615221304610910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081207.P12621615221304610910

/-! ## A081207.P6528528235393854559

`A091964(n)-Δ[A166287(n)]`
-/

namespace A081207.P6528528235393854559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 n - (f1 (n + 1) - f1 n)

end

end A081207.P6528528235393854559

/-! ## A081207.P10152802728564780326

`∑[A051292(or(n, A000038(n)))]`
-/

namespace A081207.P10152802728564780326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081207.P10152802728564780326

/-! ## A081207.P4979566150667804588

`∑[A051292(xor(n, A000038(n)))]`
-/

namespace A081207.P4979566150667804588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081207.P4979566150667804588

/-! ## A081207.P1682578742352809980

`A088518(2*n+1)-Δ[A166287(n)]`
-/

namespace A081207.P1682578742352809980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A081207.P1682578742352809980

/-! ## A081207.P4595315425890456049

`∑[A051292(A123108(n+1)+A123108(n))]`
-/

namespace A081207.P4595315425890456049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051292 (A123108 (n + 1) + A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081207.P4595315425890456049

/-! ## A081207.P14891995580972520723

`A077419(2*n+1)+A077419(2*n)-A088518(2*n)`
-/

namespace A081207.P14891995580972520723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077419 (2 * n + 1) + (A077419 (2 * n) - A088518 (2 * n))

end

end A081207.P14891995580972520723

/-! ## A081207.P17328490705928146723

`2*A088518(2*n+1)-A051286(n+1)`
-/

namespace A081207.P17328490705928146723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088518 (2 * n + 1) - A051286 (n + 1)

end

end A081207.P17328490705928146723

/-! ## A081207.P18276207696205033638

`A051286(n+1)+A051286(n)-A051292(n+1)`
-/

namespace A081207.P18276207696205033638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 (n + 1) + (A051286 n - A051292 (n + 1))

end

end A081207.P18276207696205033638

/-!
# A081209: a(n) = Sum_{k=0..n} (-1)^(n-k)*n^k.

The programs for A081209, the canonical program `A081209.P6952457802688555084` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081209 has offset 0).

The definition of A081209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081209.P6952457802688555084

`(n^(n+1)+(-1)^n)/(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081209

/-- `(n^(n+1)+(-1)^n)/(n+1)` -/
def P6952457802688555084.Spec : Prop :=
  ∀ n, P6952457802688555084.a n = (A081209 n : ℚ)

end A081209

/-! ## A081209.P13219704420763332072

`floor(or(1, n^(n+1))/(n+1))`
-/

namespace A081209.P13219704420763332072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n ^ (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A081209.P13219704420763332072

namespace A081209

/-- `floor(or(1, n^(n+1))/(n+1))` -/
def P13219704420763332072.Spec : Prop :=
  ∀ n, P13219704420763332072.a n = A081209 n

end A081209

/-! ## A081209.P16974135512081932945

`(n+1)*A081215(n)`
-/

namespace A081209.P16974135512081932945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081215 n

end

end A081209.P16974135512081932945

namespace A081209

/-- `(n+1)*A081215(n)` -/
def P16974135512081932945.Spec : Prop :=
  ∀ n, P16974135512081932945.a n = A081209 n

end A081209

/-! ## A081209.P15002777127037071503

`xor(1, n*A081216(n))`
-/

namespace A081209.P15002777127037071503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A081216 n)

end

end A081209.P15002777127037071503

namespace A081209

/-- `xor(1, n*A081216(n))` -/
def P15002777127037071503.Spec : Prop :=
  ∀ n, P15002777127037071503.a n = A081209 n

end A081209

/-! ## A081209.P9236316753243318243

`A000312(n)-A081216(n)`
-/

namespace A081209.P9236316753243318243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A081216 n

end

end A081209.P9236316753243318243

namespace A081209

/-- `A000312(n)-A081216(n)` -/
def P9236316753243318243.Spec : Prop :=
  ∀ n, P9236316753243318243.a n = A081209 n

end A081209

/-! ## A081209.P11058855894833541451

`round(A000312(n)-A000312(n)/A181440(n+1))`
-/

namespace A081209.P11058855894833541451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000312 n : ℚ) - (A000312 n : ℚ) / (A181440 (n + 1) : ℚ))

end

end A081209.P11058855894833541451

namespace A081209

/-- `round(A000312(n)-A000312(n)/A181440(n+1))` -/
def P11058855894833541451.Spec : Prop :=
  ∀ n, P11058855894833541451.a n = A081209 n

end A081209

/-! ## A081209.P13394200944674262621

`A173499(n+1)+A185634(n+2)-A173499(n+2)`
-/

namespace A081209.P13394200944674262621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173499 (n + 1) + (A185634 (n + 2) - A173499 (n + 2))

end

end A081209.P13394200944674262621

namespace A081209

/-- `A173499(n+1)+A185634(n+2)-A173499(n+2)` -/
def P13394200944674262621.Spec : Prop :=
  ∀ n, P13394200944674262621.a n = A081209 n

end A081209

/-!
# A081210: In prime factorization of n replace each prime power p^e with the greatest squarefree number <= p^e.

The programs for A081210, there is no canonical definition to state claims against.
-/

/-! ## A081210.P6306080681254679398

`A081211(n+1)+A131072(n+1)%A000688(2*n+5)`
-/

namespace A081210.P6306080681254679398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081211 (n + 1) + Int.tmod (A131072 (n + 1)) (A000688 (2 * n + 5))

end

end A081210.P6306080681254679398

/-! ## A081210.P7498915102034034401

`A081211(n+1)+2*A064911(A067199(n+1))`
-/

namespace A081210.P7498915102034034401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081211 (n + 1) + 2 * A064911 (A067199 (n + 1)).toNat

end

end A081210.P7498915102034034401

/-! ## A081210.P4477411399205617914

`A003967(A205542(∑[n])-A061704(n+1))`
-/

namespace A081210.P4477411399205617914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A205542 (∑ j ∈ Finset.range (n + 1), f1 j) - A061704 (n + 1)).toNat

end

end A081210.P4477411399205617914

/-! ## A081210.P7002594439061661211

`A003967(A205542(∑[n])-A072911(n+1))`
-/

namespace A081210.P7002594439061661211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (A205542 (∑ j ∈ Finset.range (n + 1), f1 j) - A072911 (n + 1)).toNat

end

end A081210.P7002594439061661211

/-! ## A081210.P9722749323183424706

`or(A085310(n+1), A268726(A161701(n)))`
-/

namespace A081210.P9722749323183424706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085310 (n + 1)) (A268726 (A161701 n).toNat)

end

end A081210.P9722749323183424706

/-!
# A081211: a(n) = A081210(A081210(n)).

The programs for A081211, there is no canonical definition to state claims against.
-/

/-! ## A081211.P4275660316271843365

`A081210(A081210(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081211.P4275660316271843365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081210 (A081210 (n + 1)).toNat

end

end A081211.P4275660316271843365

/-! ## A081211.P8633335125758914028

`A081213(n+1)%A260482(n+1)`
-/

namespace A081211.P8633335125758914028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081213 (n + 1)) (A260482 (n + 1))

end

end A081211.P8633335125758914028

/-! ## A081211.P4814733607631353483

`A081213(A003056(∑[A085736(n+1)]))`
-/

namespace A081211.P4814733607631353483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081213 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A081211.P4814733607631353483

/-! ## A081211.P3937705884804786100

`A081213(n+1)+A000007(A054142(n))`
-/

namespace A081211.P3937705884804786100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081213 (n + 1) + A000007 (A054142 n).toNat

end

end A081211.P3937705884804786100

/-! ## A081211.P6999956890548588859

`A081213(n+1)+A000007(A001157(n+1))`
-/

namespace A081211.P6999956890548588859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081213 (n + 1) + A000007 (A001157 (n + 1)).toNat

end

end A081211.P6999956890548588859

/-! ## A081211.P6074028721630638547

`A081213(n+1)+A010051(A000292(n+1))`
-/

namespace A081211.P6074028721630638547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081213 (n + 1) + A010051 (A000292 (n + 1)).toNat

end

end A081211.P6074028721630638547

/-! ## A081211.P14113966175549485445

`A081213(n+1)%A002189(n)`
-/

namespace A081211.P14113966175549485445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081213 (n + 1)) (A002189 n)

end

end A081211.P14113966175549485445

/-! ## A081211.P10436054749138079476

`A081213(n+1)/A001221(A161387(2*n+3))`
-/

namespace A081211.P10436054749138079476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081213 (n + 1) : ℚ) / (A001221 (A161387 (2 * n + 3)).toNat : ℚ)

end

end A081211.P10436054749138079476

/-! ## A081211.P10992240047821848602

`A001222(A235934(n+1))*A081213(n+1)`
-/

namespace A081211.P10992240047821848602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A235934 (n + 1)).toNat * A081213 (n + 1)

end

end A081211.P10992240047821848602

/-!
# A081212: Let r(n,k) = if k=0 then n else r(A081210(n),k-1), then a(n) = Min{i:r(n,i) = r(n,i+1)}.

The programs for A081212, there is no canonical definition to state claims against.
-/

/-! ## A081212.P3561765890405630235

`A295662((n+1)²/∏{p}[n+1, #]*A081210(n+1))`
-/

namespace A081212.P3561765890405630235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295662 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A081210 (n + 1) : ℚ))).toNat

end

end A081212.P3561765890405630235

/-! ## A081212.P18012573896749346710

`A322453(A081210(n+1))-A008683(A183102(n+1))`
-/

namespace A081212.P18012573896749346710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322453 (A081210 (n + 1)).toNat - A008683 (A183102 (n + 1)).toNat

end

end A081212.P18012573896749346710

/-! ## A081212.P16297226036819047224

`A140082(A282345(n+1)*A317946(n+1))`
-/

namespace A081212.P16297226036819047224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140082 (A282345 (n + 1) * A317946 (n + 1)).toNat

end

end A081212.P16297226036819047224

/-! ## A081212.P4260607097994164198

`A196931(lcm(A050935(n+1), A335487(n+1)))`
-/

namespace A081212.P4260607097994164198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 (Int.lcm (A050935 (n + 1)) (A335487 (n + 1)))

end

end A081212.P4260607097994164198

/-! ## A081212.P8632060697088698072

`A140082(lcm(A282345(n+1), A317946(n+1)))`
-/

namespace A081212.P8632060697088698072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140082 (Int.lcm (A282345 (n + 1)) (A317946 (n + 1)))

end

end A081212.P8632060697088698072

/-! ## A081212.P10610870566588158925

`A202841(A326691(n+1))%A008477(n+1)`
-/

namespace A081212.P10610870566588158925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202841 (A326691 (n + 1)).toNat) (A008477 (n + 1))

end

end A081212.P10610870566588158925

/-! ## A081212.P8403323464707944522

`A014963(A309096(n+1))%A008833(n+1)`
-/

namespace A081212.P8403323464707944522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A309096 (n + 1)).toNat) (A008833 (n + 1))

end

end A081212.P8403323464707944522

/-!
# A081213: Let r(n,k) = if k=0 then n, else r(A081210(n),k-1), then a(n)=r(n, A081212(n)).

The programs for A081213, there is no canonical definition to state claims against.
-/

/-! ## A081213.P8127580292561957185

`A081211(A081211(n+1))`
-/

namespace A081213.P8127580292561957185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081211 (A081211 (n + 1)).toNat

end

end A081213.P8127580292561957185

/-!
# A081214: Least m such that A081212(m) = n.

The programs for A081214, there is no canonical definition to state claims against.
-/

/-! ## A081214.P6108611575037465125

`A360523(a(n-1)²)` with `a(0)=1, a(1)=4`
-/

namespace A081214.P6108611575037465125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A360523 (a (n - 1) ^ 2).toNat

end

end A081214.P6108611575037465125

/-!
# A081215: a(n) = (n^(n+1)+(-1)^n)/(n+1)^2.

The programs for A081215, the canonical program `A081215.P12763746668880266363` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081215 has offset 0).

The definition of A081215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081215.P12763746668880266363

`(n^(n+1)+(-1)^n)/(n+1)²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081215

/-- `(n^(n+1)+(-1)^n)/(n+1)²` -/
def P12763746668880266363.Spec : Prop :=
  ∀ n, P12763746668880266363.a n = (A081215 n : ℚ)

end A081215

/-! ## A081215.P8186382456776811034

`floor(A081209(n)/(n+1))`
-/

namespace A081215.P8186382456776811034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081209 n : ℚ) / (n + 1 : ℚ)⌋

end

end A081215.P8186382456776811034

namespace A081215

/-- `floor(A081209(n)/(n+1))` -/
def P8186382456776811034.Spec : Prop :=
  ∀ n, P8186382456776811034.a n = A081215 n

end A081215

/-! ## A081215.P13993514469584697538

`round(A014293(n)/(n+1)²)`
-/

namespace A081215.P13993514469584697538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014293 n : ℚ) / ((n + 1) ^ 2 : ℚ))

end

end A081215.P13993514469584697538

namespace A081215

/-- `round(A014293(n)/(n+1)²)` -/
def P13993514469584697538.Spec : Prop :=
  ∀ n, P13993514469584697538.a n = A081215 n

end A081215

/-!
# A081216: a(n) = (n^n-(-1)^n)/(n+1).

The programs for A081216, the canonical program `A081216.P9384036644220608133` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081216 has offset 0).

The definition of A081216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081216.P9384036644220608133

`(n^n-(-1)^n)/(n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081216

/-- `(n^n-(-1)^n)/(n+1)` -/
def P9384036644220608133.Spec : Prop :=
  ∀ n, P9384036644220608133.a n = (A081216 n : ℚ)

end A081216

/-! ## A081216.P18060765585845956801

`n^n-A081209(n)`
-/

namespace A081216.P18060765585845956801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A081209 n

end

end A081216.P18060765585845956801

namespace A081216

/-- `n^n-A081209(n)` -/
def P18060765585845956801.Spec : Prop :=
  ∀ n, P18060765585845956801.a n = A081216 n

end A081216

/-! ## A081216.P7555363726884473093

`round(n^A028310(n)/(n+1))`
-/

namespace A081216.P7555363726884473093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (A028310 n : ℤ) / (n + 1 : ℚ))

end

end A081216.P7555363726884473093

namespace A081216

/-- `round(n^A028310(n)/(n+1))` -/
def P7555363726884473093.Spec : Prop :=
  ∀ n, P7555363726884473093.a n = A081216 n

end A081216

/-! ## A081216.P3177926650667551124

`abs(A000312(n)-A081209(n))`
-/

namespace A081216.P3177926650667551124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n - A081209 n|

end

end A081216.P3177926650667551124

namespace A081216

/-- `abs(A000312(n)-A081209(n))` -/
def P3177926650667551124.Spec : Prop :=
  ∀ n, P3177926650667551124.a n = A081216 n

end A081216

/-! ## A081216.P3733694733848218347

`A014566(n)-(A081209(n)+1)`
-/

namespace A081216.P3733694733848218347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 n - (A081209 n + 1)

end

end A081216.P3733694733848218347

namespace A081216

/-- `A014566(n)-(A081209(n)+1)` -/
def P3733694733848218347.Spec : Prop :=
  ∀ n, P3733694733848218347.a n = A081216 n

end A081216

/-! ## A081216.P16245217754251527003

`round(A000312(n)/A348776(A181440(n+1)))`
-/

namespace A081216.P16245217754251527003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000312 n : ℚ) / (A348776 (A181440 (n + 1)).toNat : ℚ))

end

end A081216.P16245217754251527003

namespace A081216

/-- `round(A000312(n)/A348776(A181440(n+1)))` -/
def P16245217754251527003.Spec : Prop :=
  ∀ n, P16245217754251527003.a n = A081216 n

end A081216

/-!
# A081217: Greatest squarefree number not exceeding n-th prime power.

The programs for A081217, the canonical program `A081217.P9485337886457492587` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081217 has offset 1).

The definition of A081217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A070321, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081217.P9485337886457492587

`A070321(A000961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A081217

/-- `A070321(A000961(n+1))` -/
def P9485337886457492587.Spec : Prop :=
  ∀ n, P9485337886457492587.a n = A081217 (n + 1)

theorem P9485337886457492587.correct : P9485337886457492587.Spec := by
  intro n
  simp only [A081217, Nat.add_sub_cancel]

end A081217

/-! ## A081217.P17201429682467215689

`A070321(sqrt(A056798(n+1)))`
-/

namespace A081217.P17201429682467215689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A081217.P17201429682467215689

namespace A081217

/-- `A070321(sqrt(A056798(n+1)))` -/
def P17201429682467215689.Spec : Prop :=
  ∀ n, P17201429682467215689.a n = A081217 (n + 1)

end A081217

/-! ## A081217.P1766274388774169708

`A070321(A181062(n+1)+1)`
-/

namespace A081217.P1766274388774169708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A181062 (n + 1) + 1).toNat

end

end A081217.P1766274388774169708

namespace A081217

/-- `A070321(A181062(n+1)+1)` -/
def P1766274388774169708.Spec : Prop :=
  ∀ n, P1766274388774169708.a n = A081217 (n + 1)

end A081217

/-! ## A081217.P14427768733718162418

`A070321(eq[1, A010055(n+1)]+1)`
-/

namespace A081217.P14427768733718162418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081217.P14427768733718162418

namespace A081217

/-- `A070321(eq[1, A010055(n+1)]+1)` -/
def P14427768733718162418.Spec : Prop :=
  ∀ n, P14427768733718162418.a n = A081217 (n + 1)

end A081217

/-! ## A081217.P1552778652669095684

`A081210(A000961(2*n+1-n))`
-/

namespace A081217.P1552778652669095684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081210 (A000961 (2 * n + 1 - n)).toNat

end

end A081217.P1552778652669095684

namespace A081217

/-- `A081210(A000961(2*n+1-n))` -/
def P1552778652669095684.Spec : Prop :=
  ∀ n, P1552778652669095684.a n = A081217 (n + 1)

end A081217

/-! ## A081217.P17518733579592831363

`A070321(record[n/a(A001221(n))]/2)` with `a(0)=2`
-/

namespace A081217.P17518733579592831363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2)).toNat

end

end A081217.P17518733579592831363

namespace A081217

/-- `A070321(record[n/a(A001221(n))]/2)` -/
def P17518733579592831363.Spec : Prop :=
  ∀ n, P17518733579592831363.a n = A081217 (n + 1)

end A081217

/-! ## A081217.P12715913151211985861

`A070321(eq[A006530(n+1), A020639(n+1)]+1)`
-/

namespace A081217.P12715913151211985861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A081217.P12715913151211985861

namespace A081217

/-- `A070321(eq[A006530(n+1), A020639(n+1)]+1)` -/
def P12715913151211985861.Spec : Prop :=
  ∀ n, P12715913151211985861.a n = A081217 (n + 1)

end A081217

/-! ## A081217.P5132316289567791266

`A007947(A081210(A000961(n+1))²)`
-/

namespace A081217.P5132316289567791266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A081210 (A000961 (n + 1)).toNat ^ 2).toNat

end

end A081217.P5132316289567791266

namespace A081217

/-- `A007947(A081210(A000961(n+1))²)` -/
def P5132316289567791266.Spec : Prop :=
  ∀ n, P5132316289567791266.a n = A081217 (n + 1)

end A081217

/-!
# A081218: Greatest squarefree number not exceeding n-th prime power which is not prime.

The programs for A081218, the canonical program `A081218.P17386277852684792015` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081218 has offset 1).

The definition of A081218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081218.P17520688476648733870

`A070321(A025475(n+1))`
-/

namespace A081218.P17520688476648733870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A025475 (n + 1)).toNat

end

end A081218.P17520688476648733870

namespace A081218

/-- `A070321(A025475(n+1))` -/
def P17520688476648733870.Spec : Prop :=
  ∀ n, P17520688476648733870.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P17386277852684792015

`A081217(A024621(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A081218

/-- `A081217(A024621(n+1))` -/
def P17386277852684792015.Spec : Prop :=
  ∀ n, P17386277852684792015.a n = A081218 (n + 1)

theorem P17386277852684792015.correct : P17386277852684792015.Spec := by
  intro n
  simp only [A081218, Nat.add_sub_cancel]

end A081218

/-! ## A081218.P13462583756153017635

`A070321(record[A163813(n+1)])`
-/

namespace A081218.P13462583756153017635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081218.P13462583756153017635

namespace A081218

/-- `A070321(record[A163813(n+1)])` -/
def P13462583756153017635.Spec : Prop :=
  ∀ n, P13462583756153017635.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P5851768272947751733

`A081210(record[A163813(n+1)])`
-/

namespace A081218.P5851768272947751733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081210 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081218.P5851768272947751733

namespace A081218

/-- `A081210(record[A163813(n+1)])` -/
def P5851768272947751733.Spec : Prop :=
  ∀ n, P5851768272947751733.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P3014746608140342733

`A081211(record[A163813(n+1)])`
-/

namespace A081218.P3014746608140342733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081211 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081218.P3014746608140342733

namespace A081218

/-- `A081211(record[A163813(n+1)])` -/
def P3014746608140342733.Spec : Prop :=
  ∀ n, P3014746608140342733.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P17732320636191736265

`A285719(record[A163813(n+1)])`
-/

namespace A081218.P17732320636191736265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081218.P17732320636191736265

namespace A081218

/-- `A285719(record[A163813(n+1)])` -/
def P17732320636191736265.Spec : Prop :=
  ∀ n, P17732320636191736265.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P15581171732466856006

`A070321(A249435(n+1)+1)`
-/

namespace A081218.P15581171732466856006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A249435 (n + 1) + 1).toNat

end

end A081218.P15581171732466856006

namespace A081218

/-- `A070321(A249435(n+1)+1)` -/
def P15581171732466856006.Spec : Prop :=
  ∀ n, P15581171732466856006.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P6765746445067261072

`A081210(A249435(n+1)+1)`
-/

namespace A081218.P6765746445067261072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081210 (A249435 (n + 1) + 1).toNat

end

end A081218.P6765746445067261072

namespace A081218

/-- `A081210(A249435(n+1)+1)` -/
def P6765746445067261072.Spec : Prop :=
  ∀ n, P6765746445067261072.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P11339966885495596167

`A081211(A249435(n+1)+1)`
-/

namespace A081218.P11339966885495596167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081211 (A249435 (n + 1) + 1).toNat

end

end A081218.P11339966885495596167

namespace A081218

/-- `A081211(A249435(n+1)+1)` -/
def P11339966885495596167.Spec : Prop :=
  ∀ n, P11339966885495596167.a n = A081218 (n + 1)

end A081218

/-! ## A081218.P17364968632542391275

`A285719(or(1, A025475(n+1)))`
-/

namespace A081218.P17364968632542391275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (Int.lor 1 (A025475 (n + 1))).toNat

end

end A081218.P17364968632542391275

namespace A081218

/-- `A285719(or(1, A025475(n+1)))` -/
def P17364968632542391275.Spec : Prop :=
  ∀ n, P17364968632542391275.a n = A081218 (n + 1)

end A081218

/-!
# A081219: One sixtieth the product of primitive Pythagorean triangles' sides whose odd values differ by 2.

The programs for A081219, the canonical program `A081219.P5292337465946196330` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081219 has offset 1).

The definition of A081219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081219.P5292337465946196330

`(n+1)*(16*(n+1)^4-1)/15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081219

/-- `(n+1)*(16*(n+1)^4-1)/15` -/
def P5292337465946196330.Spec : Prop :=
  ∀ n, P5292337465946196330.a n = (A081219 (n + 1) : ℚ)

end A081219

/-! ## A081219.P6216523493932660207

`Δ[Δ[C(2*n+3, 7)]]`
-/

namespace A081219.P6216523493932660207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081219.P6216523493932660207

namespace A081219

/-- `Δ[Δ[C(2*n+3, 7)]]` -/
def P6216523493932660207.Spec : Prop :=
  ∀ n, P6216523493932660207.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P14642219718017821651

`Δ[A259317(n)/2]`
-/

namespace A081219.P14642219718017821651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259317 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081219.P14642219718017821651

namespace A081219

/-- `Δ[A259317(n)/2]` -/
def P14642219718017821651.Spec : Prop :=
  ∀ n, P14642219718017821651.a n = (A081219 (n + 1) : ℚ)

end A081219

/-! ## A081219.P17876996365885906746

`2*A213546(n+1)-Δ[A000538(n)]`
-/

namespace A081219.P17876996365885906746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213546 (n + 1) - (f1 (n + 1) - f1 n)

end

end A081219.P17876996365885906746

namespace A081219

/-- `2*A213546(n+1)-Δ[A000538(n)]` -/
def P17876996365885906746.Spec : Prop :=
  ∀ n, P17876996365885906746.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P8603497664100419594

`A213546(n+1)+A213546(n+1)-A000583(n+1)`
-/

namespace A081219.P8603497664100419594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213546 (n + 1) + (A213546 (n + 1) - A000583 (n + 1))

end

end A081219.P8603497664100419594

namespace A081219

/-- `A213546(n+1)+A213546(n+1)-A000583(n+1)` -/
def P8603497664100419594.Spec : Prop :=
  ∀ n, P8603497664100419594.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P9800708661434165638

`A114239(2*n)/(n+1)²`
-/

namespace A081219.P9800708661434165638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114239 (2 * n) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A081219.P9800708661434165638

namespace A081219

/-- `A114239(2*n)/(n+1)²` -/
def P9800708661434165638.Spec : Prop :=
  ∀ n, P9800708661434165638.a n = (A081219 (n + 1) : ℚ)

end A081219

/-! ## A081219.P1721827765513708706

`A033455(Δ[n²])`
-/

namespace A081219.P1721827765513708706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081219.P1721827765513708706

namespace A081219

/-- `A033455(Δ[n²])` -/
def P1721827765513708706.Spec : Prop :=
  ∀ n, P1721827765513708706.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P7437078202234402206

`A164938(2*(n+1))/3`
-/

namespace A081219.P7437078202234402206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164938 (2 * (n + 1)) : ℚ) / 3

end

end A081219.P7437078202234402206

namespace A081219

/-- `A164938(2*(n+1))/3` -/
def P7437078202234402206.Spec : Prop :=
  ∀ n, P7437078202234402206.a n = (A081219 (n + 1) : ℚ)

end A081219

/-! ## A081219.P3481804462473996107

`A213547(Δ[n²])/(n+1)`
-/

namespace A081219.P3481804462473996107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A081219.P3481804462473996107

namespace A081219

/-- `A213547(Δ[n²])/(n+1)` -/
def P3481804462473996107.Spec : Prop :=
  ∀ n, P3481804462473996107.a n = (A081219 (n + 1) : ℚ)

end A081219

/-! ## A081219.P13229906146147574950

`A014820(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A081219.P13229906146147574950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014820 (2 * n) + a (n - 1)

end

end A081219.P13229906146147574950

namespace A081219

/-- `A014820(2*n)+a(n-1)` -/
def P13229906146147574950.Spec : Prop :=
  ∀ n, P13229906146147574950.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P4314116863219441000

`∑[A035598(A004273(n+1))]/2`
-/

namespace A081219.P4314116863219441000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 (A004273 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A081219.P4314116863219441000

namespace A081219

/-- `∑[A035598(A004273(n+1))]/2` -/
def P4314116863219441000.Spec : Prop :=
  ∀ n, P4314116863219441000.a n = (A081219 (n + 1) : ℚ)

end A081219

/-! ## A081219.P8099507639258410578

`A033455(2*n+1)+A019590(n+3)`
-/

namespace A081219.P8099507639258410578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (2 * n + 1) + A019590 (n + 3)

end

end A081219.P8099507639258410578

namespace A081219

/-- `A033455(2*n+1)+A019590(n+3)` -/
def P8099507639258410578.Spec : Prop :=
  ∀ n, P8099507639258410578.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P9325551241984998508

`A095166(2*n+1)-A051843(2*n)`
-/

namespace A081219.P9325551241984998508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (2 * n + 1) - A051843 (2 * n)

end

end A081219.P9325551241984998508

namespace A081219

/-- `A095166(2*n+1)-A051843(2*n)` -/
def P9325551241984998508.Spec : Prop :=
  ∀ n, P9325551241984998508.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P4791546919221557459

`A259181(2*n+1)-A259181(2*n)`
-/

namespace A081219.P4791546919221557459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (2 * n + 1) - A259181 (2 * n)

end

end A081219.P4791546919221557459

namespace A081219

/-- `A259181(2*n+1)-A259181(2*n)` -/
def P4791546919221557459.Spec : Prop :=
  ∀ n, P4791546919221557459.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P1535154396526193710

`A053132(2*n+5)-A086755(2*n)`
-/

namespace A081219.P1535154396526193710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053132 (2 * n + 5) - A086755 (2 * n)

end

end A081219.P1535154396526193710

namespace A081219

/-- `A053132(2*n+5)-A086755(2*n)` -/
def P1535154396526193710.Spec : Prop :=
  ∀ n, P1535154396526193710.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P7608895918019234143

`(A244882(2*n)+A051836(2*n+1))/2`
-/

namespace A081219.P7608895918019234143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244882 (2 * n) + A051836 (2 * n + 1) : ℚ) / 2

end

end A081219.P7608895918019234143

namespace A081219

/-- `(A244882(2*n)+A051836(2*n+1))/2` -/
def P7608895918019234143.Spec : Prop :=
  ∀ n, P7608895918019234143.a n = (A081219 (n + 1) : ℚ)

end A081219

/-! ## A081219.P5057224410462631069

`A000292(2*n+1)+2*A277935(2*n+1)`
-/

namespace A081219.P5057224410462631069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n + 1) + 2 * A277935 (2 * n + 1)

end

end A081219.P5057224410462631069

namespace A081219

/-- `A000292(2*n+1)+2*A277935(2*n+1)` -/
def P5057224410462631069.Spec : Prop :=
  ∀ n, P5057224410462631069.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P15614832362671306409

`2*A081282(2*n+1)-A000292(2*n+1)`
-/

namespace A081219.P15614832362671306409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081282 (2 * n + 1) - A000292 (2 * n + 1)

end

end A081219.P15614832362671306409

namespace A081219

/-- `2*A081282(2*n+1)-A000292(2*n+1)` -/
def P15614832362671306409.Spec : Prop :=
  ∀ n, P15614832362671306409.a n = A081219 (n + 1)

end A081219

/-! ## A081219.P6144737462783594136

`A027484(2*(n+1))/A027484(A020639(2*(n+1)))`
-/

namespace A081219.P6144737462783594136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027484 (2 * (n + 1)) : ℚ) / (A027484 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A081219.P6144737462783594136

namespace A081219

/-- `A027484(2*(n+1))/A027484(A020639(2*(n+1)))` -/
def P6144737462783594136.Spec : Prop :=
  ∀ n, P6144737462783594136.a n = (A081219 (n + 1) : ℚ)

end A081219

/-!
# A081220: Palindromic primes = 1 mod 4.

The programs for A081220, there is no canonical definition to state claims against.
-/

/-! ## A081220.P5316469221036012824

`4*A192261(n+1)+1`
-/

namespace A081220.P5316469221036012824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A192261 (n + 1) + 1

end

end A081220.P5316469221036012824

/-! ## A081220.P10235893343280372181

`A002385(eq[1, A002385(n+1)%4]+1)`
-/

namespace A081220.P10235893343280372181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002385 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081220.P10235893343280372181

/-! ## A081220.P6078927163771687609

`A002385(eq[1, and(3, A002385(n+1))]+1)`
-/

namespace A081220.P6078927163771687609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081220.P6078927163771687609

/-! ## A081220.P8703394340309039039

`A002385(lt[C(A002385(n+1), 2)%2, 1]+1)`
-/

namespace A081220.P8703394340309039039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002385 (n + 1)).toNat 2 % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A081220.P8703394340309039039

/-! ## A081220.P12643221637683146050

`p?[A162709(n+2)]`
-/

namespace A081220.P12643221637683146050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162709 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081220.P12643221637683146050

/-! ## A081220.P5785019430580403231

`p?[A073579(A075807(n+1))]`
-/

namespace A081220.P5785019430580403231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (A075807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081220.P5785019430580403231

/-! ## A081220.P12023112574801175272

`record[A073579(A075807(n+3))]`
-/

namespace A081220.P12023112574801175272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (A075807 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081220.P12023112574801175272

/-! ## A081220.P5203195056956225674

`A151800(4*A192261(n+1))`
-/

namespace A081220.P5203195056956225674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (4 * A192261 (n + 1)).toNat

end

end A081220.P5203195056956225674

/-! ## A081220.P16779351831897436475

`filter[A002385(n+1), A353812(#)]`
-/

namespace A081220.P16779351831897436475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A081220.P16779351831897436475

/-!
# A081221: Number of consecutive numbers >= n having at least one square divisor > 1.

The programs for A081221, the canonical program `A081221.P6243088705239368053` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081221 has offset 1).

The definition of A081221 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081221.P6243088705239368053

`A067535(n+1)-(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A081221

/-- `A067535(n+1)-(n+1)` -/
def P6243088705239368053.Spec : Prop :=
  ∀ n, P6243088705239368053.a n = A081221 (n + 1)

theorem P6243088705239368053.correct : P6243088705239368053.Spec := by
  intro n
  simp only [A081221, Nat.add_sub_cancel]

end A081221

/-! ## A081221.P16021884539818822252

`A001633(A067535(n+1)-n)`
-/

namespace A081221.P16021884539818822252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 (A067535 (n + 1) - (n : ℤ)).toNat

end

end A081221.P16021884539818822252

namespace A081221

/-- `A001633(A067535(n+1)-n)` -/
def P16021884539818822252.Spec : Prop :=
  ∀ n, P16021884539818822252.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P11767447108953434810

`A002113(A067535(n+1)-n)`
-/

namespace A081221.P11767447108953434810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A067535 (n + 1) - (n : ℤ)).toNat

end

end A081221.P11767447108953434810

namespace A081221

/-- `A002113(A067535(n+1)-n)` -/
def P11767447108953434810.Spec : Prop :=
  ∀ n, P11767447108953434810.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P9419244902517574445

`A004859(A067535(n+1)-n)`
-/

namespace A081221.P9419244902517574445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (A067535 (n + 1) - (n : ℤ)).toNat

end

end A081221.P9419244902517574445

namespace A081221

/-- `A004859(A067535(n+1)-n)` -/
def P9419244902517574445.Spec : Prop :=
  ∀ n, P9419244902517574445.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P15805566266121385763

`A004869(A067535(n+1)-n)`
-/

namespace A081221.P15805566266121385763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004869 (A067535 (n + 1) - (n : ℤ)).toNat

end

end A081221.P15805566266121385763

namespace A081221

/-- `A004869(A067535(n+1)-n)` -/
def P15805566266121385763.Spec : Prop :=
  ∀ n, P15805566266121385763.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P12579264810453254446

`A004894(A067535(n+1)-n)`
-/

namespace A081221.P12579264810453254446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004894 (A067535 (n + 1) - (n : ℤ)).toNat

end

end A081221.P12579264810453254446

namespace A081221

/-- `A004894(A067535(n+1)-n)` -/
def P12579264810453254446.Spec : Prop :=
  ∀ n, P12579264810453254446.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P1748003419278203962

`A004896(A067535(n+1)-n)`
-/

namespace A081221.P1748003419278203962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (A067535 (n + 1) - (n : ℤ)).toNat

end

end A081221.P1748003419278203962

namespace A081221

/-- `A004896(A067535(n+1)-n)` -/
def P1748003419278203962.Spec : Prop :=
  ∀ n, P1748003419278203962.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P16170463239772447941

`A004913(A067535(n+1)-n)`
-/

namespace A081221.P16170463239772447941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004913 (A067535 (n + 1) - (n : ℤ)).toNat

end

end A081221.P16170463239772447941

namespace A081221

/-- `A004913(A067535(n+1)-n)` -/
def P16170463239772447941.Spec : Prop :=
  ∀ n, P16170463239772447941.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P7123960738012771963

`A067535(n+1)%A030640(n)`
-/

namespace A081221.P7123960738012771963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067535 (n + 1)) (A030640 n)

end

end A081221.P7123960738012771963

namespace A081221

/-- `A067535(n+1)%A030640(n)` -/
def P7123960738012771963.Spec : Prop :=
  ∀ n, P7123960738012771963.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P13678201048732421125

`A005117(A107079(n+1))-(n+1)`
-/

namespace A081221.P13678201048732421125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A107079 (n + 1)).toNat - (n + 1 : ℤ)

end

end A081221.P13678201048732421125

namespace A081221

/-- `A005117(A107079(n+1))-(n+1)` -/
def P13678201048732421125.Spec : Prop :=
  ∀ n, P13678201048732421125.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P18204170978720103626

`A072909(n+1)*A107078(n+1)`
-/

namespace A081221.P18204170978720103626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1) * A107078 (n + 1)

end

end A081221.P18204170978720103626

namespace A081221

/-- `A072909(n+1)*A107078(n+1)` -/
def P18204170978720103626.Spec : Prop :=
  ∀ n, P18204170978720103626.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P5388569738509889889

`xor(A072909(n+1), A378087(n+1))`
-/

namespace A081221.P5388569738509889889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A072909 (n + 1)) (A378087 (n + 1))

end

end A081221.P5388569738509889889

namespace A081221

/-- `xor(A072909(n+1), A378087(n+1))` -/
def P5388569738509889889.Spec : Prop :=
  ∀ n, P5388569738509889889.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P2933533549241665669

`(1-A008966(n+1))*A072909(n+1)`
-/

namespace A081221.P2933533549241665669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008966 (n + 1)) * A072909 (n + 1)

end

end A081221.P2933533549241665669

namespace A081221

/-- `(1-A008966(n+1))*A072909(n+1)` -/
def P2933533549241665669.Spec : Prop :=
  ∀ n, P2933533549241665669.a n = A081221 (n + 1)

end A081221

/-! ## A081221.P5265362368033440723

`A072909(n+1)-lcm(A008683(n+1), A072909(n+1))`
-/

namespace A081221.P5265362368033440723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (n + 1) - (Int.lcm (A008683 (n + 1)) (A072909 (n + 1)) : ℤ)

end

end A081221.P5265362368033440723

namespace A081221

/-- `A072909(n+1)-lcm(A008683(n+1), A072909(n+1))` -/
def P5265362368033440723.Spec : Prop :=
  ∀ n, P5265362368033440723.a n = A081221 (n + 1)

end A081221

/-!
# A081223: Smallest k such that floor(k*gamma) begins with n (gamma=0.5772156649...).

The programs for A081223, the canonical program `A081223.P12973320959175258762` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081223 has offset 1).

The definition of A081223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081223.P5039828820975159102

`ceil((n+1)/γ)`
-/

namespace A081223.P5039828820975159102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.eulerMascheroniConstant⌉

end

end A081223.P5039828820975159102

namespace A081223

/-- `ceil((n+1)/γ)` -/
def P5039828820975159102.Spec : Prop :=
  ∀ n, P5039828820975159102.a n = A081223 (n + 1)

end A081223

/-! ## A081223.P14321176412466478948

`∑[Δ[ceil(n/γ)]!]`
-/

namespace A081223.P14321176412466478948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.eulerMascheroniConstant⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081223.P14321176412466478948

namespace A081223

/-- `∑[Δ[ceil(n/γ)]!]` -/
def P14321176412466478948.Spec : Prop :=
  ∀ n, (P14321176412466478948.a n : ℤ) = A081223 (n + 1)

end A081223

/-! ## A081223.P1472246948146342153

`∑[dr(Δ[ceil(n/γ)])]`
-/

namespace A081223.P1472246948146342153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.eulerMascheroniConstant⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081223.P1472246948146342153

namespace A081223

/-- `∑[dr(Δ[ceil(n/γ)])]` -/
def P1472246948146342153.Spec : Prop :=
  ∀ n, (P1472246948146342153.a n : ℤ) = A081223 (n + 1)

end A081223

/-! ## A081223.P9716919406100676451

`-floor(xor(n, -1)/γ)`
-/

namespace A081223.P9716919406100676451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(Int.xor (n : ℤ) (-1) : ℝ) / Real.eulerMascheroniConstant⌋

end

end A081223.P9716919406100676451

namespace A081223

/-- `-floor(xor(n, -1)/γ)` -/
def P9716919406100676451.Spec : Prop :=
  ∀ n, P9716919406100676451.a n = A081223 (n + 1)

end A081223

/-! ## A081223.P6816103456852675619

`record[ceil(abs((n-1)/γ))]`
-/

namespace A081223.P6816103456852675619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((n : ℤ) - 1 : ℝ) / Real.eulerMascheroniConstant|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081223.P6816103456852675619

namespace A081223

/-- `record[ceil(abs((n-1)/γ))]` -/
def P6816103456852675619.Spec : Prop :=
  ∀ n, P6816103456852675619.a n = A081223 (n + 1)

end A081223

/-! ## A081223.P17757409254196158031

`∑[gcd(2, Δ[ceil(n/γ)])]`
-/

namespace A081223.P17757409254196158031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.eulerMascheroniConstant⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081223.P17757409254196158031

namespace A081223

/-- `∑[gcd(2, Δ[ceil(n/γ)])]` -/
def P17757409254196158031.Spec : Prop :=
  ∀ n, (P17757409254196158031.a n : ℤ) = A081223 (n + 1)

end A081223

/-! ## A081223.P12554242819801222357

`∑[Δ[ceil(n/γ)]%3]`
-/

namespace A081223.P12554242819801222357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.eulerMascheroniConstant⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081223.P12554242819801222357

namespace A081223

/-- `∑[Δ[ceil(n/γ)]%3]` -/
def P12554242819801222357.Spec : Prop :=
  ∀ n, P12554242819801222357.a n = A081223 (n + 1)

end A081223

/-! ## A081223.P12973320959175258762

`A059556(n+1)-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081223

/-- `A059556(n+1)-n` -/
def P12973320959175258762.Spec : Prop :=
  ∀ n, P12973320959175258762.a n = A081223 (n + 1)

theorem P12973320959175258762.correct : P12973320959175258762.Spec := by
  intro n
  simp only [A081223, Nat.add_sub_cancel]

end A081223

/-!
# A081225: Floor( e * (3/2)^n ).

The programs for A081225, the canonical program `A081225.P9050211435859546196` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081225 has offset 0).

The definition of A081225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081225.P9050211435859546196

`floor(e*(3/2)^n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081225

/-- `floor(e*(3/2)^n)` -/
def P9050211435859546196.Spec : Prop :=
  ∀ n, P9050211435859546196.a n = A081225 n

theorem P9050211435859546196.correct : P9050211435859546196.Spec := by
  intro n
  simp only [A081225]

end A081225

/-! ## A081225.P10862296578679912866

`ceil(A008683(A105555(n+1))+e*(3/2)^n)`
-/

namespace A081225.P10862296578679912866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008683 (A105555 (n + 1)).toNat : ℝ) + Real.exp 1 * (((3 : ℚ) / 2) ^ n : ℝ)⌉

end

end A081225.P10862296578679912866

namespace A081225

/-- `ceil(A008683(A105555(n+1))+e*(3/2)^n)` -/
def P10862296578679912866.Spec : Prop :=
  ∀ n, P10862296578679912866.a n = A081225 n

end A081225

/-! ## A081225.P16250471850305585901

`ceil(e*(3/2)^n-A002828(A016754(n)))`
-/

namespace A081225.P16250471850305585901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (((3 : ℚ) / 2) ^ n : ℝ) - (A002828 (A016754 n).toNat : ℝ)⌉

end

end A081225.P16250471850305585901

namespace A081225

/-- `ceil(e*(3/2)^n-A002828(A016754(n)))` -/
def P16250471850305585901.Spec : Prop :=
  ∀ n, P16250471850305585901.a n = A081225 n

end A081225

/-! ## A081225.P7763576749312617934

`ceil(e*(3/2)^n-A000035(A014634(n)))`
-/

namespace A081225.P7763576749312617934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (((3 : ℚ) / 2) ^ n : ℝ) - (A000035 (A014634 n).toNat : ℝ)⌉

end

end A081225.P7763576749312617934

namespace A081225

/-- `ceil(e*(3/2)^n-A000035(A014634(n)))` -/
def P7763576749312617934.Spec : Prop :=
  ∀ n, P7763576749312617934.a n = A081225 n

end A081225

/-! ## A081225.P11208987549559921715

`ceil(e*(3/2)^n-A001221(A014210(n)))`
-/

namespace A081225.P11208987549559921715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (((3 : ℚ) / 2) ^ n : ℝ) - (A001221 (A014210 n).toNat : ℝ)⌉

end

end A081225.P11208987549559921715

namespace A081225

/-- `ceil(e*(3/2)^n-A001221(A014210(n)))` -/
def P11208987549559921715.Spec : Prop :=
  ∀ n, P11208987549559921715.a n = A081225 n

end A081225

/-!
# A081226: Floor( phi * (3/2)^n ) where phi = (1+sqrt(5))/2.

The programs for A081226, the canonical program `A081226.P3840508477976319564` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081226 has offset 0).

The definition of A081226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 567 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081226.P3840508477976319564

`floor(ϕ*(3/2)^n)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081226

/-- `floor(ϕ*(3/2)^n)` -/
def P3840508477976319564.Spec : Prop :=
  ∀ n, P3840508477976319564.a n = A081226 n

theorem P3840508477976319564.correct : P3840508477976319564.Spec := by
  intro n
  simp only [A081226]

end A081226

/-! ## A081226.P9393255257191924701

`ceil(ϕ*(3/2)^n-gcd(n, n+1))`
-/

namespace A081226.P9393255257191924701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (((3 : ℚ) / 2) ^ n : ℝ) - (Nat.gcd n (n + 1) : ℝ)⌉

end

end A081226.P9393255257191924701

namespace A081226

/-- `ceil(ϕ*(3/2)^n-gcd(n, n+1))` -/
def P9393255257191924701.Spec : Prop :=
  ∀ n, P9393255257191924701.a n = A081226 n

end A081226

/-! ## A081226.P11997719012698965156

`ceil(ϕ*(3/2)^n-A001222(A331634(n+2)))`
-/

namespace A081226.P11997719012698965156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (((3 : ℚ) / 2) ^ n : ℝ) - (A001222 (A331634 (n + 2)).toNat : ℝ)⌉

end

end A081226.P11997719012698965156

namespace A081226

/-- `ceil(ϕ*(3/2)^n-A001222(A331634(n+2)))` -/
def P11997719012698965156.Spec : Prop :=
  ∀ n, P11997719012698965156.a n = A081226 n

end A081226

/-! ## A081226.P3804715333066835157

`ceil(ϕ*(3/2)^n-A001222(A187128(n+1)))`
-/

namespace A081226.P3804715333066835157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (((3 : ℚ) / 2) ^ n : ℝ) - (A001222 (A187128 (n + 1)).toNat : ℝ)⌉

end

end A081226.P3804715333066835157

namespace A081226

/-- `ceil(ϕ*(3/2)^n-A001222(A187128(n+1)))` -/
def P3804715333066835157.Spec : Prop :=
  ∀ n, P3804715333066835157.a n = A081226 n

end A081226

/-! ## A081226.P1857705660315720808

`ceil(ϕ*(3/2)^n-A003557(A061304(n+1)))`
-/

namespace A081226.P1857705660315720808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (((3 : ℚ) / 2) ^ n : ℝ) - (A003557 (A061304 (n + 1)).toNat : ℝ)⌉

end

end A081226.P1857705660315720808

namespace A081226

/-- `ceil(ϕ*(3/2)^n-A003557(A061304(n+1)))` -/
def P1857705660315720808.Spec : Prop :=
  ∀ n, P1857705660315720808.a n = A081226 n

end A081226

/-!
# A081227: a(n) is the number of digits in common between n and the n-th prime in base 10.

The programs for A081227, there is no canonical definition to state claims against.
-/

/-! ## A081227.P8198434772409888021

`Δ[A081228(A028310(n))]`
-/

namespace A081227.P8198434772409888021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P8198434772409888021

/-! ## A081227.P3657690139788372789

`A081228(n+1)-A081228(A028310(n))`
-/

namespace A081227.P3657690139788372789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (n + 1) - A081228 (A028310 n).toNat

end

end A081227.P3657690139788372789

/-! ## A081227.P11003089250700048839

`Δ[A081228(A004275(n+1)-n)]`
-/

namespace A081227.P11003089250700048839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A004275 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P11003089250700048839

/-! ## A081227.P17074131233841986024

`Δ[A081228(A008619(A004275(n)))]`
-/

namespace A081227.P17074131233841986024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P17074131233841986024

/-! ## A081227.P2522070676318424868

`Δ[A081228(A008619(A004273(n)))]`
-/

namespace A081227.P2522070676318424868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P2522070676318424868

/-! ## A081227.P16609658349582804715

`A081228(n+1)-A081228(A065033(2*n))`
-/

namespace A081227.P16609658349582804715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (n + 1) - A081228 (A065033 (2 * n)).toNat

end

end A081227.P16609658349582804715

/-! ## A081227.P15672405262419898251

`Δ[A081228(A065033(2*n))]`
-/

namespace A081227.P15672405262419898251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P15672405262419898251

/-! ## A081227.P1624081644096758045

`Δ[A081228(A000267(A033638(n)))]`
-/

namespace A081227.P1624081644096758045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A000267 (A033638 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P1624081644096758045

/-! ## A081227.P11993437332150889812

`Δ[A081228(A003056(A000124(n)))]`
-/

namespace A081227.P11993437332150889812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P11993437332150889812

/-! ## A081227.P6962107589880571559

`A081228(n+1)-A081228(A137735(n²))`
-/

namespace A081227.P6962107589880571559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (n + 1) - A081228 (A137735 (n ^ 2)).toNat

end

end A081227.P6962107589880571559

/-! ## A081227.P17207474053808140390

`Δ[A081228(A137735(n²))]`
-/

namespace A081227.P17207474053808140390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081228 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081227.P17207474053808140390

/-!
# A081228: Partial sums of A081227.

The programs for A081228, there is no canonical definition to state claims against.
-/

/-! ## A081228.P12076847087288099736

`∑[A081227(n+1)]`
-/

namespace A081228.P12076847087288099736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081228.P12076847087288099736

/-! ## A081228.P2005026196427680812

`A081227(round(sqrt(n²+1))+1)+a(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A081228.P2005026196427680812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A081227 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + a (n - 1)

end

end A081228.P2005026196427680812

/-! ## A081228.P3241450245875281751

`A081227(n+1)+a(n-1)*A057427(n)` with `a(0)=0`
-/

namespace A081228.P3241450245875281751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A081227 (n + 1) + a (n - 1) * A057427 n

end

end A081228.P3241450245875281751

/-! ## A081228.P16141949563309934423

`A081227(n+1)+a(n-1)%A037237(n)` with `a(0)=0`
-/

namespace A081228.P16141949563309934423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A081227 (n + 1) + Int.tmod (a (n - 1)) (A037237 n)

end

end A081228.P16141949563309934423

/-! ## A081228.P3902773651986644604

`A081227(n+1)-A001489(a(n-1))` with `a(0)=0`
-/

namespace A081228.P3902773651986644604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A081227 (n + 1) - A001489 (a (n - 1)).toNat

end

end A081228.P3902773651986644604

/-! ## A081228.P3295062518901355967

`A001222(∏[A081227(n+1)+1])`
-/

namespace A081228.P3295062518901355967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081228.P3295062518901355967

/-! ## A081228.P16771451784766630391

`A000005(∏[A081227(n+1)+1])-1`
-/

namespace A081228.P16771451784766630391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A081228.P16771451784766630391

/-! ## A081228.P11011288753157711639

`∑[ceil(A081229(n+1)/A107940(n+1))]`
-/

namespace A081228.P11011288753157711639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081229 (n + 1) : ℚ) / (A107940 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081228.P11011288753157711639

/-!
# A081231: Let p = n-th prime of the form 4k+3, take smallest solution (x,y) to the Pellian equation x^2 - p*y^2 = 1 with x and y >= 1; sequence gives value of x.

The programs for A081231, there is no canonical definition to state claims against.
-/

/-! ## A081231.P7458844757207528973

`A006702(p?[4*n-1])`
-/

namespace A081231.P7458844757207528973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081231.P7458844757207528973

/-! ## A081231.P10559681520666466289

`A006704(p?[4*n-1])`
-/

namespace A081231.P10559681520666466289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006704 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081231.P10559681520666466289

/-! ## A081231.P9109152561578119975

`A006702(A002145(n+1))`
-/

namespace A081231.P9109152561578119975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A002145 (n + 1)).toNat

end

end A081231.P9109152561578119975

/-! ## A081231.P6810382087140989345

`A006702(A045326(n+2))`
-/

namespace A081231.P6810382087140989345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A045326 (n + 2)).toNat

end

end A081231.P6810382087140989345

/-! ## A081231.P349287955308822321

`A006702(A281664(n+2)+1)`
-/

namespace A081231.P349287955308822321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (A281664 (n + 2) + 1).toNat

end

end A081231.P349287955308822321

/-! ## A081231.P17247943612413746350

`A002350(p?[4*n-1])`
-/

namespace A081231.P17247943612413746350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A081231.P17247943612413746350

/-! ## A081231.P5351076568522624538

`A081233(A080148(n+1))`
-/

namespace A081231.P5351076568522624538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081233 (A080148 (n + 1)).toNat

end

end A081231.P5351076568522624538

/-!
# A081232: Let p = n-th prime of the form 4k+1, take smallest solution (x,y) to the Pellian equation x^2 - p*y^2 = 1 with x and y >= 1; sequence gives value of x.

The programs for A081232, there is no canonical definition to state claims against.
-/

/-! ## A081232.P18268116810965285488

`A002350(p?[4*n+1])`
-/

namespace A081232.P18268116810965285488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A081232.P18268116810965285488

/-! ## A081232.P4276041537537361520

`A002350(A002144(n+1))`
-/

namespace A081232.P4276041537537361520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A002144 (n + 1)).toNat

end

end A081232.P4276041537537361520

/-! ## A081232.P5346160355465505209

`A081233(A080147(n+1))`
-/

namespace A081232.P5346160355465505209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081233 (A080147 (n + 1)).toNat

end

end A081232.P5346160355465505209

/-! ## A081232.P1588039524457166493

`A002350(A002313(n+2))`
-/

namespace A081232.P1588039524457166493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A002313 (n + 2)).toNat

end

end A081232.P1588039524457166493

/-! ## A081232.P123177412058986772

`A002350(A280084(n+2))`
-/

namespace A081232.P123177412058986772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A280084 (n + 2)).toNat

end

end A081232.P123177412058986772

/-! ## A081232.P10385793478975890361

`A002350(A152680(n+1)+1)`
-/

namespace A081232.P10385793478975890361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A152680 (n + 1) + 1).toNat

end

end A081232.P10385793478975890361

/-! ## A081232.P5514398078277895971

`A002350(record[A076567(2*n+1)])`
-/

namespace A081232.P5514398078277895971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081232.P5514398078277895971

/-! ## A081232.P2681281481973321717

`A006702(2*2*A002144(n+1))`
-/

namespace A081232.P2681281481973321717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006702 (2 * (2 * A002144 (n + 1))).toNat

end

end A081232.P2681281481973321717

/-!
# A081233: Let p = n-th prime, take smallest solution (x,y) to the Pellian equation x^2 - p*y^2 = 1 with x and y >= 1; sequence gives value of x.

The programs for A081233, there is no canonical definition to state claims against.
-/

/-! ## A081233.P1402267859416550568

`A002350(p?[comp[n²]])`
-/

namespace A081233.P1402267859416550568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A081233.P1402267859416550568

/-! ## A081233.P9839467625016664469

`A002350(A000040(n+1))`
-/

namespace A081233.P9839467625016664469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A000040 (n + 1)).toNat

end

end A081233.P9839467625016664469

/-! ## A081233.P3053795502504629202

`A033313(A112045(n+1))`
-/

namespace A081233.P3053795502504629202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033313 (A112045 (n + 1)).toNat

end

end A081233.P3053795502504629202

/-! ## A081233.P998482463500188170

`A002350(A008578(n+2))`
-/

namespace A081233.P998482463500188170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A008578 (n + 2)).toNat

end

end A081233.P998482463500188170

/-! ## A081233.P9934498512484028467

`A002350(A182986(n+2))`
-/

namespace A081233.P9934498512484028467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A182986 (n + 2)).toNat

end

end A081233.P9934498512484028467

/-! ## A081233.P15418363372742180303

`A002350(record[A006530(n+2)])`
-/

namespace A081233.P15418363372742180303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081233.P15418363372742180303

/-! ## A081233.P2929750695227424998

`A002350(record[A014963(n+2)])`
-/

namespace A081233.P2929750695227424998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081233.P2929750695227424998

/-! ## A081233.P8566144291920311923

`A002350(record[A020639(n+2)])`
-/

namespace A081233.P8566144291920311923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081233.P8566144291920311923

/-! ## A081233.P13166097293076863138

`A002350(A006093(n+1)+1)`
-/

namespace A081233.P13166097293076863138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A006093 (n + 1) + 1).toNat

end

end A081233.P13166097293076863138

/-! ## A081233.P7005468548503528666

`A002350(eq[2, A000005(n+1)]+1)`
-/

namespace A081233.P7005468548503528666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A081233.P7005468548503528666

/-! ## A081233.P3458541814418672809

`A002350(A275115(A006093(n+1)))`
-/

namespace A081233.P3458541814418672809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A275115 (A006093 (n + 1)).toNat).toNat

end

end A081233.P3458541814418672809

/-!
# A081234: Let p = n-th prime, take smallest solution (x,y) to the Pellian equation x^2 - p*y^2 = 1 with x and y >= 1; sequence gives value of y.

The programs for A081234, there is no canonical definition to state claims against.
-/

/-! ## A081234.P13846474927572935610

`A002349(p?[comp[n²]])`
-/

namespace A081234.P13846474927572935610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A081234.P13846474927572935610

/-! ## A081234.P16095035547647271410

`A002349(Δ[A007504(n)])`
-/

namespace A081234.P16095035547647271410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (n + 1) - f1 n).toNat

end

end A081234.P16095035547647271410

/-! ## A081234.P7316465294907665095

`A002349(record[A051698(n)])`
-/

namespace A081234.P7316465294907665095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A081234.P7316465294907665095

/-! ## A081234.P6372849980175581831

`A002349(A000040(n+1))`
-/

namespace A081234.P6372849980175581831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A000040 (n + 1)).toNat

end

end A081234.P6372849980175581831

/-! ## A081234.P8025307848110560778

`A033317(A112045(n+1))`
-/

namespace A081234.P8025307848110560778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033317 (A112045 (n + 1)).toNat

end

end A081234.P8025307848110560778

/-! ## A081234.P1791447031203783098

`A002349(A008578(n+2))`
-/

namespace A081234.P1791447031203783098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A008578 (n + 2)).toNat

end

end A081234.P1791447031203783098

/-! ## A081234.P529547689480882245

`A002349(A182986(n+2))`
-/

namespace A081234.P529547689480882245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A182986 (n + 2)).toNat

end

end A081234.P529547689480882245

/-!
# A081235: Smallest prime starting a sequence of 2n consecutive primes with symmetrical gaps about the center.

The programs for A081235, there is no canonical definition to state claims against.
-/

/-! ## A081235.P3460513800338154735

`A175309(2*n+1)`
-/

namespace A081235.P3460513800338154735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175309 (2 * n + 1)

end

end A081235.P3460513800338154735

/-! ## A081235.P8941511080000538184

`xor(char[(8*n)²], A055382(n+1))`
-/

namespace A081235.P8941511080000538184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A055382 (n + 1))

end

end A081235.P8941511080000538184

/-! ## A081235.P5422369875673529226

`A055382(n+1)-A000007(n)`
-/

namespace A081235.P5422369875673529226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055382 (n + 1) - A000007 n

end

end A081235.P5422369875673529226

/-! ## A081235.P956507142034665617

`A055382(n+1)-char[A014283(n)]`
-/

namespace A081235.P956507142034665617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014283 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055382 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081235.P956507142034665617

/-! ## A081235.P9277509495761194430

`A055382(n+1)-char[A147963(n+1)]`
-/

namespace A081235.P9277509495761194430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055382 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081235.P9277509495761194430

/-!
# A081236: Greatest k

The programs for A081236, there is no canonical definition to state claims against.
-/

/-! ## A081236.P2039117114784320211

`and(n-2, A201246(A187829(n+1)))`
-/

namespace A081236.P2039117114784320211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 2) (A201246 (A187829 (n + 1)).toNat)

end

end A081236.P2039117114784320211

/-! ## A081236.P6314302243331846305

`and(A062420(n+1), A237225(A131945(n)))`
-/

namespace A081236.P6314302243331846305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062420 (n + 1)) (A237225 (A131945 n).toNat)

end

end A081236.P6314302243331846305

/-! ## A081236.P4195901022628342244

`and(A023445(A187829(n+1)), A201246(n+1))`
-/

namespace A081236.P4195901022628342244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023445 (A187829 (n + 1)).toNat) (A201246 (n + 1))

end

end A081236.P4195901022628342244

/-!
# A081238: #{(i,j): mu(i)*mu(j) = -1, 1 <= i <= n, 1 <= j <= n}, where mu=A008683 (Moebius function).

The programs for A081238, the canonical program `A081238.P2386912721371686134` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081238 has offset 1).

The definition of A081238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081238.P2386912721371686134

`2*A070548(n+1)*A070549(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081238

/-- `2*A070548(n+1)*A070549(n+1)` -/
def P2386912721371686134.Spec : Prop :=
  ∀ n, P2386912721371686134.a n = A081238 (n + 1)

theorem P2386912721371686134.correct : P2386912721371686134.Spec := by
  intro n
  simp only [A081238, Nat.add_sub_cancel]

end A081238

/-! ## A081238.P12725421792593177544

`A081240(n+1)-A002321(n+1)²`
-/

namespace A081238.P12725421792593177544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081240 (n + 1) - A002321 (n + 1) ^ 2

end

end A081238.P12725421792593177544

namespace A081238

/-- `A081240(n+1)-A002321(n+1)²` -/
def P12725421792593177544.Spec : Prop :=
  ∀ n, P12725421792593177544.a n = A081238 (n + 1)

end A081238

/-! ## A081238.P14772345080536993976

`(A013928(n+2)+A002321(n+1))*A070549(n+1)`
-/

namespace A081238.P14772345080536993976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013928 (n + 2) + A002321 (n + 1)) * A070549 (n + 1)

end

end A081238.P14772345080536993976

namespace A081238

/-- `(A013928(n+2)+A002321(n+1))*A070549(n+1)` -/
def P14772345080536993976.Spec : Prop :=
  ∀ n, P14772345080536993976.a n = A081238 (n + 1)

end A081238

/-! ## A081238.P9467895597726725675

`(A013928(n+2)-A002321(n+1))*A070548(n+1)`
-/

namespace A081238.P9467895597726725675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A013928 (n + 2) - A002321 (n + 1)) * A070548 (n + 1)

end

end A081238.P9467895597726725675

namespace A081238

/-- `(A013928(n+2)-A002321(n+1))*A070548(n+1)` -/
def P9467895597726725675.Spec : Prop :=
  ∀ n, P9467895597726725675.a n = A081238 (n + 1)

end A081238

/-! ## A081238.P10584249371119402423

`A013928(n+2)*A013928(n+2)-A081240(n+1)`
-/

namespace A081238.P10584249371119402423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) * A013928 (n + 2) - A081240 (n + 1)

end

end A081238.P10584249371119402423

namespace A081238

/-- `A013928(n+2)*A013928(n+2)-A081240(n+1)` -/
def P10584249371119402423.Spec : Prop :=
  ∀ n, P10584249371119402423.a n = A081238 (n + 1)

end A081238

/-!
# A081239: #{(i,j): mu(i)*mu(j) = 0, 1<=i,j<=n}, where mu=A008683 (Moebius function).

The programs for A081239, the canonical program `A081239.P10224072463825662570` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081239 has offset 1).

The definition of A081239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081239.P10224072463825662570

`(n+1)²-A013928(n+2)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081239

/-- `(n+1)²-A013928(n+2)²` -/
def P10224072463825662570.Spec : Prop :=
  ∀ n, P10224072463825662570.a n = A081239 (n + 1)

theorem P10224072463825662570.correct : P10224072463825662570.Spec := by
  intro n
  simp only [A081239, Nat.add_sub_cancel]

end A081239

/-! ## A081239.P2595141420378612127

`(n+1)²-∑[A008966(n+1)]²`
-/

namespace A081239.P2595141420378612127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A081239.P2595141420378612127

namespace A081239

/-- `(n+1)²-∑[A008966(n+1)]²` -/
def P2595141420378612127.Spec : Prop :=
  ∀ n, P2595141420378612127.a n = A081239 (n + 1)

end A081239

/-! ## A081239.P7450202672560811695

`(n+1)²-∑[abs(A008683(n+1))]²`
-/

namespace A081239.P7450202672560811695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A081239.P7450202672560811695

namespace A081239

/-- `(n+1)²-∑[abs(A008683(n+1))]²` -/
def P7450202672560811695.Spec : Prop :=
  ∀ n, P7450202672560811695.a n = A081239 (n + 1)

end A081239

/-! ## A081239.P414112640505512532

`A000290(n+1)-A000290(A013928(n+2))`
-/

namespace A081239.P414112640505512532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - A000290 (A013928 (n + 2)).toNat

end

end A081239.P414112640505512532

namespace A081239

/-- `A000290(n+1)-A000290(A013928(n+2))` -/
def P414112640505512532.Spec : Prop :=
  ∀ n, P414112640505512532.a n = A081239 (n + 1)

end A081239

/-! ## A081239.P16100100752123516737

`A197985(n+1)-A197985(∑[A008683(n+1)²])`
-/

namespace A081239.P16100100752123516737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197985 (n + 1) - A197985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081239.P16100100752123516737

namespace A081239

/-- `A197985(n+1)-A197985(∑[A008683(n+1)²])` -/
def P16100100752123516737.Spec : Prop :=
  ∀ n, P16100100752123516737.a n = A081239 (n + 1)

end A081239

/-! ## A081239.P3863795801636352086

`(n+1)²-A262869(2*(n+1))²`
-/

namespace A081239.P3863795801636352086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A262869 (2 * (n + 1)) ^ 2

end

end A081239.P3863795801636352086

namespace A081239

/-- `(n+1)²-A262869(2*(n+1))²` -/
def P3863795801636352086.Spec : Prop :=
  ∀ n, P3863795801636352086.a n = A081239 (n + 1)

end A081239

/-!
# A081240: a(n) = #{(i,j): mu(i)*mu(j) = 1, 1<=i,j<=n}, where mu = A008683 (Moebius function).

The programs for A081240, the canonical program `A081240.P9652852946263676047` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081240 has offset 1).

The definition of A081240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081240.P9652852946263676047

`A081238(n+1)+A002321(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081240

/-- `A081238(n+1)+A002321(n+1)²` -/
def P9652852946263676047.Spec : Prop :=
  ∀ n, P9652852946263676047.a n = A081240 (n + 1)

theorem P9652852946263676047.correct : P9652852946263676047.Spec := by
  intro n
  simp only [A081240, Nat.add_sub_cancel]

end A081240

/-! ## A081240.P16420253042079056579

`A070548(n+1)²+A070549(n+1)²`
-/

namespace A081240.P16420253042079056579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 1) ^ 2 + A070549 (n + 1) ^ 2

end

end A081240.P16420253042079056579

namespace A081240

/-- `A070548(n+1)²+A070549(n+1)²` -/
def P16420253042079056579.Spec : Prop :=
  ∀ n, P16420253042079056579.a n = A081240 (n + 1)

end A081240

/-! ## A081240.P18307594006697400411

`A081238(n+1)+∑[A008683(n+1)]²`
-/

namespace A081240.P18307594006697400411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081238 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A081240.P18307594006697400411

namespace A081240

/-- `A081238(n+1)+∑[A008683(n+1)]²` -/
def P18307594006697400411.Spec : Prop :=
  ∀ n, P18307594006697400411.a n = A081240 (n + 1)

end A081240

/-! ## A081240.P14472581344408892040

`(n+1)²-(A081239(n+1)+A081238(n+1))`
-/

namespace A081240.P14472581344408892040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A081239 (n + 1) + A081238 (n + 1))

end

end A081240.P14472581344408892040

namespace A081240

/-- `(n+1)²-(A081239(n+1)+A081238(n+1))` -/
def P14472581344408892040.Spec : Prop :=
  ∀ n, P14472581344408892040.a n = A081240 (n + 1)

end A081240

/-! ## A081240.P10460114916977889729

`(n+1-A057627(n+1))²-A081238(n+1)`
-/

namespace A081240.P10460114916977889729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A057627 (n + 1)) ^ 2 - A081238 (n + 1)

end

end A081240.P10460114916977889729

namespace A081240

/-- `(n+1-A057627(n+1))²-A081238(n+1)` -/
def P10460114916977889729.Spec : Prop :=
  ∀ n, P10460114916977889729.a n = A081240 (n + 1)

end A081240

/-! ## A081240.P17700067094118771756

`A013928(n+2)*A013928(n+2)-A081238(n+1)`
-/

namespace A081240.P17700067094118771756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) * A013928 (n + 2) - A081238 (n + 1)

end

end A081240.P17700067094118771756

namespace A081240

/-- `A013928(n+2)*A013928(n+2)-A081238(n+1)` -/
def P17700067094118771756.Spec : Prop :=
  ∀ n, P17700067094118771756.a n = A081240 (n + 1)

end A081240

/-!
# A081241: Position in B of reversal of n-th term of B, where B is the logic-binary sequence, A007931.

The programs for A081241, the canonical program `A081241.P18283941350862078452` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081241 has offset 1).

The definition of A081241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081241.P18283941350862078452

`(A145341(n+3)-3)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081241

/-- `(A145341(n+3)-3)/2` -/
def P18283941350862078452.Spec : Prop :=
  ∀ n, P18283941350862078452.a n = (A081241 (n + 1) : ℚ)

end A081241

/-! ## A081241.P16751488302224098532

`∑[Δ[A145341(n+2)]/2]`
-/

namespace A081241.P16751488302224098532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081241.P16751488302224098532

namespace A081241

/-- `∑[Δ[A145341(n+2)]/2]` -/
def P16751488302224098532.Spec : Prop :=
  ∀ n, P16751488302224098532.a n = (A081241 (n + 1) : ℚ)

end A081241

/-! ## A081241.P11498620491912316394

`A059893(n+2)-1`
-/

namespace A081241.P11498620491912316394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 2) - 1

end

end A081241.P11498620491912316394

namespace A081241

/-- `A059893(n+2)-1` -/
def P11498620491912316394.Spec : Prop :=
  ∀ n, P11498620491912316394.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P10829202654938036856

`A057889(A139708(n+2))-1`
-/

namespace A081241.P10829202654938036856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A139708 (n + 2)).toNat - 1

end

end A081241.P10829202654938036856

namespace A081241

/-- `A057889(A139708(n+2))-1` -/
def P10829202654938036856.Spec : Prop :=
  ∀ n, P10829202654938036856.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P5168486481901377938

`A001489(n+1)+A059893(n+2)+n`
-/

namespace A081241.P5168486481901377938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + (A059893 (n + 2) + (n : ℤ))

end

end A081241.P5168486481901377938

namespace A081241

/-- `A001489(n+1)+A059893(n+2)+n` -/
def P5168486481901377938.Spec : Prop :=
  ∀ n, P5168486481901377938.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P4717504512599812449

`A145342(n+3)-2`
-/

namespace A081241.P4717504512599812449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 3) - 2

end

end A081241.P4717504512599812449

namespace A081241

/-- `A145342(n+3)-2` -/
def P4717504512599812449.Spec : Prop :=
  ∀ n, P4717504512599812449.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P5871781912421788550

`A003188(A341916(n+2))-1`
-/

namespace A081241.P5871781912421788550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A341916 (n + 2)).toNat - 1

end

end A081241.P5871781912421788550

namespace A081241

/-- `A003188(A341916(n+2))-1` -/
def P5871781912421788550.Spec : Prop :=
  ∀ n, P5871781912421788550.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P6524188474351406871

`A103131(A114227(n+3))+A059893(n+2)`
-/

namespace A081241.P6524188474351406871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103131 (A114227 (n + 3)).toNat + A059893 (n + 2)

end

end A081241.P6524188474351406871

namespace A081241

/-- `A103131(A114227(n+3))+A059893(n+2)` -/
def P6524188474351406871.Spec : Prop :=
  ∀ n, P6524188474351406871.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P10756980131075809226

`A163807(A080541(n+2))-1`
-/

namespace A081241.P10756980131075809226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A080541 (n + 2)).toNat - 1

end

end A081241.P10756980131075809226

namespace A081241

/-- `A163807(A080541(n+2))-1` -/
def P10756980131075809226.Spec : Prop :=
  ∀ n, P10756980131075809226.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P11854534648098995006

`A080542(A163807(n+2))-1`
-/

namespace A081241.P11854534648098995006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A163807 (n + 2)).toNat - 1

end

end A081241.P11854534648098995006

namespace A081241

/-- `A080542(A163807(n+2))-1` -/
def P11854534648098995006.Spec : Prop :=
  ∀ n, P11854534648098995006.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P11334655163693390088

`A023443(A059893(n+2))`
-/

namespace A081241.P11334655163693390088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A059893 (n + 2)).toNat

end

end A081241.P11334655163693390088

namespace A081241

/-- `A023443(A059893(n+2))` -/
def P11334655163693390088.Spec : Prop :=
  ∀ n, P11334655163693390088.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P8061766445145184156

`A289207(A059893(n+2)+1)`
-/

namespace A081241.P8061766445145184156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A059893 (n + 2) + 1).toNat

end

end A081241.P8061766445145184156

namespace A081241

/-- `A289207(A059893(n+2)+1)` -/
def P8061766445145184156.Spec : Prop :=
  ∀ n, P8061766445145184156.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P1076189173804529429

`A333777(A333692(n+2))-1`
-/

namespace A081241.P1076189173804529429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (A333692 (n + 2)).toNat - 1

end

end A081241.P1076189173804529429

namespace A081241

/-- `A333777(A333692(n+2))-1` -/
def P1076189173804529429.Spec : Prop :=
  ∀ n, P1076189173804529429.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P9840004202228832040

`A333693(A333776(n+2))-1`
-/

namespace A081241.P9840004202228832040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 (A333776 (n + 2)).toNat - 1

end

end A081241.P9840004202228832040

namespace A081241

/-- `A333693(A333776(n+2))-1` -/
def P9840004202228832040.Spec : Prop :=
  ∀ n, P9840004202228832040.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P14626802398925914165

`A059894(A054429(n+2))-1`
-/

namespace A081241.P14626802398925914165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A054429 (n + 2)).toNat - 1

end

end A081241.P14626802398925914165

namespace A081241

/-- `A059894(A054429(n+2))-1` -/
def P14626802398925914165.Spec : Prop :=
  ∀ n, P14626802398925914165.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P14400127476138713814

`A341915(A006068(n+2))-1`
-/

namespace A081241.P14400127476138713814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A006068 (n + 2)).toNat - 1

end

end A081241.P14400127476138713814

namespace A081241

/-- `A341915(A006068(n+2))-1` -/
def P14400127476138713814.Spec : Prop :=
  ∀ n, P14400127476138713814.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P17001654201813724219

`A335858(A284460(n+2))-1`
-/

namespace A081241.P17001654201813724219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 (A284460 (n + 2)).toNat - 1

end

end A081241.P17001654201813724219

namespace A081241

/-- `A335858(A284460(n+2))-1` -/
def P17001654201813724219.Spec : Prop :=
  ∀ n, P17001654201813724219.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P14500302175673808841

`A030109(2*n+5)-1`
-/

namespace A081241.P14500302175673808841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * n + 5) - 1

end

end A081241.P14500302175673808841

namespace A081241

/-- `A030109(2*n+5)-1` -/
def P14500302175673808841.Spec : Prop :=
  ∀ n, P14500302175673808841.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P6530848382423591579

`A049773(2*n+5)-2`
-/

namespace A081241.P6530848382423591579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049773 (2 * n + 5) - 2

end

end A081241.P6530848382423591579

namespace A081241

/-- `A049773(2*n+5)-2` -/
def P6530848382423591579.Spec : Prop :=
  ∀ n, P6530848382423591579.a n = A081241 (n + 1)

end A081241

/-! ## A081241.P3291739035189684434

`A153151(A153142(A059893(n+1)))`
-/

namespace A081241.P3291739035189684434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A153142 (A059893 (n + 1)).toNat).toNat

end

end A081241.P3291739035189684434

namespace A081241

/-- `A153151(A153142(A059893(n+1)))` -/
def P3291739035189684434.Spec : Prop :=
  ∀ n, P3291739035189684434.a n = A081241 (n + 1)

end A081241

/-!
# A081242: Left-to-right binary enumeration.

The programs for A081242, there is no canonical definition to state claims against.
-/

/-! ## A081242.P10971866192076995122

`A007931(A081241(n+1))`
-/

namespace A081242.P10971866192076995122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A081241 (n + 1)).toNat

end

end A081242.P10971866192076995122

/-! ## A081242.P13291943772889722205

`A007931(A059893(n+2)-1)`
-/

namespace A081242.P13291943772889722205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A059893 (n + 2) - 1).toNat

end

end A081242.P13291943772889722205

/-! ## A081242.P17761189105811381428

`A305877(A032924(n+1))`
-/

namespace A081242.P17761189105811381428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A032924 (n + 1)).toNat

end

end A081242.P17761189105811381428

/-! ## A081242.P2069821031100840803

`A305877(eq[0, A077267(n)])`
-/

namespace A081242.P2069821031100840803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081242.P2069821031100840803

/-! ## A081242.P5074058114014282482

`A007931(A185969(A375375(n+1)))`
-/

namespace A081242.P5074058114014282482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (A375375 (n + 1)).toNat).toNat

end

end A081242.P5074058114014282482

/-! ## A081242.P4716394702750963087

`A007089(A244591(n+2))`
-/

namespace A081242.P4716394702750963087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A244591 (n + 2)).toNat

end

end A081242.P4716394702750963087

/-! ## A081242.P1165691541926657759

`A004086(A007931(n+1))`
-/

namespace A081242.P1165691541926657759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007931 (n + 1)).toNat

end

end A081242.P1165691541926657759

/-! ## A081242.P15170316620647821658

`A007931(A185969(A375374(A375374(A375374(n+1)))))`
-/

namespace A081242.P15170316620647821658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (A375374 (A375374 (A375374 (n + 1)).toNat).toNat).toNat).toNat

end

end A081242.P15170316620647821658

/-!
# A081243: a(n) = Mod[n+(Mod[Prime[n],3]-1),10].

The programs for A081243, the canonical program `A081243.P8816106567389271415` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081243 has offset 1).

The definition of A081243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081243.P13101520455837238787

`(A001363(n+1)+n)%10`
-/

namespace A081243.P13101520455837238787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001363 (n + 1) + (n : ℤ)) 10

end

end A081243.P13101520455837238787

namespace A081243

/-- `(A001363(n+1)+n)%10` -/
def P13101520455837238787.Spec : Prop :=
  ∀ n, P13101520455837238787.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P8816106567389271415

`(A039701(n+1)+n)%10`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081243

/-- `(A039701(n+1)+n)%10` -/
def P8816106567389271415.Spec : Prop :=
  ∀ n, P8816106567389271415.a n = A081243 (n + 1)

theorem P8816106567389271415.correct : P8816106567389271415.Spec := by
  intro n
  simp only [A081243, Nat.add_sub_cancel]

end A081243

/-! ## A081243.P4101445649929814427

`(A000040(n+1)%3+n)%10`
-/

namespace A081243.P4101445649929814427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000040 (n + 1)) 3 + (n : ℤ)) 10

end

end A081243.P4101445649929814427

namespace A081243

/-- `(A000040(n+1)%3+n)%10` -/
def P4101445649929814427.Spec : Prop :=
  ∀ n, P4101445649929814427.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P8593740692774060203

`(A004087(n+1)%3+n)%10`
-/

namespace A081243.P8593740692774060203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004087 (n + 1)) 3 + (n : ℤ)) 10

end

end A081243.P8593740692774060203

namespace A081243

/-- `(A004087(n+1)%3+n)%10` -/
def P8593740692774060203.Spec : Prop :=
  ∀ n, P8593740692774060203.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P1095785967796653152

`(A038194(n+1)%3+n)%10`
-/

namespace A081243.P1095785967796653152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A038194 (n + 1)) 3 + (n : ℤ)) 10

end

end A081243.P1095785967796653152

namespace A081243

/-- `(A038194(n+1)%3+n)%10` -/
def P1095785967796653152.Spec : Prop :=
  ∀ n, P1095785967796653152.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P1334127876943655224

`(A008578(n+2)%3+n)%10`
-/

namespace A081243.P1334127876943655224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A008578 (n + 2)) 3 + (n : ℤ)) 10

end

end A081243.P1334127876943655224

namespace A081243

/-- `(A008578(n+2)%3+n)%10` -/
def P1334127876943655224.Spec : Prop :=
  ∀ n, P1334127876943655224.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P7237898070671036642

`A010879(A039701(n+1)+n)`
-/

namespace A081243.P7237898070671036642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A039701 (n + 1) + (n : ℤ)).toNat

end

end A081243.P7237898070671036642

namespace A081243

/-- `A010879(A039701(n+1)+n)` -/
def P7237898070671036642.Spec : Prop :=
  ∀ n, P7237898070671036642.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P5087994264259632828

`A010879(A000040(n+1)%3+n)`
-/

namespace A081243.P5087994264259632828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Int.tmod (A000040 (n + 1)) 3 + (n : ℤ)).toNat

end

end A081243.P5087994264259632828

namespace A081243

/-- `A010879(A000040(n+1)%3+n)` -/
def P5087994264259632828.Spec : Prop :=
  ∀ n, P5087994264259632828.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P5541344757532943389

`(record[A006530(n+2)]%3+n)%10`
-/

namespace A081243.P5541344757532943389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 3 + (n : ℤ)) 10

end

end A081243.P5541344757532943389

namespace A081243

/-- `(record[A006530(n+2)]%3+n)%10` -/
def P5541344757532943389.Spec : Prop :=
  ∀ n, P5541344757532943389.a n = A081243 (n + 1)

end A081243

/-! ## A081243.P17920168420372010446

`(A083218(A171035(n+1))+n)%10`
-/

namespace A081243.P17920168420372010446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083218 (A171035 (n + 1)).toNat + (n : ℤ)) 10

end

end A081243.P17920168420372010446

namespace A081243

/-- `(A083218(A171035(n+1))+n)%10` -/
def P17920168420372010446.Spec : Prop :=
  ∀ n, P17920168420372010446.a n = A081243 (n + 1)

end A081243

/-!
# A081245: Number of days in months in the Haab year of Mayan/Mesoamerican calendars.

The programs for A081245, there is no canonical definition to state claims against.
-/

/-! ## A081245.P943808488415210974

`A040093(A272950(n+2))`
-/

namespace A081245.P943808488415210974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040093 (A272950 (n + 2)).toNat

end

end A081245.P943808488415210974

/-!
# A081249: Partial sums of A081134.

The programs for A081249, the canonical program `A081249.P17615615709827917834` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081249 has offset 1).

The definition of A081249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081249.P17615615709827917834

`∑[A081134(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081249

/-- `∑[A081134(n+1)]` -/
def P17615615709827917834.Spec : Prop :=
  ∀ n, P17615615709827917834.a n = A081249 (n + 1)

theorem P17615615709827917834.correct : P17615615709827917834.Spec := by
  intro n
  simp only [A081249, Nat.add_sub_cancel]

end A081249

/-! ## A081249.P6521078955076806347

`∑[∑[2-Δ[A003605(n)]]]`
-/

namespace A081249.P6521078955076806347
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P6521078955076806347

namespace A081249

/-- `∑[∑[2-Δ[A003605(n)]]]` -/
def P6521078955076806347.Spec : Prop :=
  ∀ n, P6521078955076806347.a n = A081249 (n + 1)

end A081249

/-! ## A081249.P12150186863978414124

`∑[Δ[n²]-A080727(n)]`
-/

namespace A081249.P12150186863978414124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A080727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P12150186863978414124

namespace A081249

/-- `∑[Δ[n²]-A080727(n)]` -/
def P12150186863978414124.Spec : Prop :=
  ∀ n, P12150186863978414124.a n = A081249 (n + 1)

end A081249

/-! ## A081249.P5358313539808775885

`∑[2*(n+1)-A003605(n+1)]`
-/

namespace A081249.P5358313539808775885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A003605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P5358313539808775885

namespace A081249

/-- `∑[2*(n+1)-A003605(n+1)]` -/
def P5358313539808775885.Spec : Prop :=
  ∀ n, P5358313539808775885.a n = A081249 (n + 1)

end A081249

/-! ## A081249.P1563051962733118726

`∑[A267872(n)%A080727(n)]`
-/

namespace A081249.P1563051962733118726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267872 n) (A080727 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P1563051962733118726

namespace A081249

/-- `∑[A267872(n)%A080727(n)]` -/
def P1563051962733118726.Spec : Prop :=
  ∀ n, P1563051962733118726.a n = A081249 (n + 1)

end A081249

/-! ## A081249.P16304259894818146249

`∑[∑[1-Δ[A006166(n)]]]`
-/

namespace A081249.P16304259894818146249
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P16304259894818146249

namespace A081249

/-- `∑[∑[1-Δ[A006166(n)]]]` -/
def P16304259894818146249.Spec : Prop :=
  ∀ n, P16304259894818146249.a n = A081249 (n + 1)

end A081249

/-! ## A081249.P16801222344253470131

`∑[1-A006166(n+1)+n]`
-/

namespace A081249.P16801222344253470131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006166 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081249.P16801222344253470131

namespace A081249

/-- `∑[1-A006166(n+1)+n]` -/
def P16801222344253470131.Spec : Prop :=
  ∀ n, P16801222344253470131.a n = A081249 (n + 1)

end A081249

/-!
# A081250: Numbers k such that A081249(m)/m^2 has a local minimum for m = k.

The programs for A081250, the canonical program `A081250.P13025013288821966356` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081250 has offset 0).

The definition of A081250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081250.P5849461115612684781

`a(n-2)+10*3^(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A081250.P5849461115612684781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 10 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A081250.P5849461115612684781

namespace A081250

/-- `a(n-2)+10*3^(n-2)` -/
def P5849461115612684781.Spec : Prop :=
  ∀ n, P5849461115612684781.a n = (A081250 n : ℚ)

end A081250

/-! ## A081250.P13025013288821966356

`2*a(n-1)+3*a(n-2)+2` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081250

/-- `2*a(n-1)+3*a(n-2)+2` -/
def P13025013288821966356.Spec : Prop :=
  ∀ n, (P13025013288821966356.a n : ℤ) = A081250 n

theorem P13025013288821966356.correct : P13025013288821966356.Spec := by
  intro n
  simp only [A081250]

end A081250

/-! ## A081250.P6473569760599614389

`(5*3^n+(-1)^n-2)/4`
-/

namespace A081250.P6473569760599614389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) + (-1) ^ n - 2 : ℚ) / 4

end

end A081250.P6473569760599614389

namespace A081250

/-- `(5*3^n+(-1)^n-2)/4` -/
def P6473569760599614389.Spec : Prop :=
  ∀ n, P6473569760599614389.a n = (A081250 n : ℚ)

theorem P6473569760599614389.correct : P6473569760599614389.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081250, Nat.add_sub_cancel, A081250.P6473569760599614389.a, A081250.P13025013288821966356.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081250, Nat.add_sub_cancel, A081250.P6473569760599614389.a, A081250.P13025013288821966356.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081250

/-! ## A081250.P15109666682401251408

`ogf((1+x^2)/(1-3x-x^2+3x^3))`
-/

namespace A081250.P15109666682401251408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -3, -1, 3] n

end

end A081250.P15109666682401251408

namespace A081250

/-- `ogf((1+x^2)/(1-3x-x^2+3x^3))` -/
def P15109666682401251408.Spec : Prop :=
  ∀ n, P15109666682401251408.a n = A081250 n

end A081250

/-! ## A081250.P362544131702954349

`round(5*3^n/4)-n%2`
-/

namespace A081250.P362544131702954349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((3 ^ n : ℚ) / 4)) - ((n % 2 : ℕ) : ℤ)

end

end A081250.P362544131702954349

namespace A081250

/-- `round(5*3^n/4)-n%2` -/
def P362544131702954349.Spec : Prop :=
  ∀ n, P362544131702954349.a n = A081250 n

end A081250

/-! ## A081250.P12508697529311361578

`∑[-xor(2, -3*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A081250.P12508697529311361578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -Int.xor 2 (-(3 * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081250.P12508697529311361578

namespace A081250

/-- `∑[-xor(2, -3*a(n-1))]` -/
def P12508697529311361578.Spec : Prop :=
  ∀ n, P12508697529311361578.a n = A081250 n

end A081250

/-! ## A081250.P3297139135101122891

`3*a(n-1)-Δ[or(1, -n)]` with `a(0)=1`
-/

namespace A081250.P3297139135101122891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (f1 (n + 1) - f1 n)

end

end A081250.P3297139135101122891

namespace A081250

/-- `3*a(n-1)-Δ[or(1, -n)]` -/
def P3297139135101122891.Spec : Prop :=
  ∀ n, P3297139135101122891.a n = A081250 n

end A081250

/-! ## A081250.P18257220120466825915

`3*a(n-1)+(-1)^n+1` with `a(0)=1`
-/

namespace A081250.P18257220120466825915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + ((-1) ^ n + 1)

end

end A081250.P18257220120466825915

namespace A081250

/-- `3*a(n-1)+(-1)^n+1` -/
def P18257220120466825915.Spec : Prop :=
  ∀ n, P18257220120466825915.a n = A081250 n

end A081250

/-! ## A081250.P17626954902237056058

`Δ[or(1, 3*a(n-1)-n)]-1` with `a(0)=1`
-/

namespace A081250.P17626954902237056058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lor 1 (3 * f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081250.P17626954902237056058

namespace A081250

/-- `Δ[or(1, 3*a(n-1)-n)]-1` -/
def P17626954902237056058.Spec : Prop :=
  ∀ n, P17626954902237056058.a n = A081250 n

end A081250

/-! ## A081250.P2911826504056410537

`2*(n+1)%2+3*a(n-1)` with `a(0)=1`
-/

namespace A081250.P2911826504056410537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n + 1) % 2) + 3 * a (n - 1)

end

end A081250.P2911826504056410537

namespace A081250

/-- `2*(n+1)%2+3*a(n-1)` -/
def P2911826504056410537.Spec : Prop :=
  ∀ n, (P2911826504056410537.a n : ℤ) = A081250 n

end A081250

/-! ## A081250.P11950791710435250743

`2-(a(n-1)%3-3*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A081250.P11950791710435250743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 - (Int.tmod (a (n - 1)) 3 - 3 * a (n - 1))

end

end A081250.P11950791710435250743

namespace A081250

/-- `2-(a(n-1)%3-3*a(n-1))` -/
def P11950791710435250743.Spec : Prop :=
  ∀ n, P11950791710435250743.a n = A081250 n

end A081250

/-! ## A081250.P3263855008240169458

`∑[A321573(n)]`
-/

namespace A081250.P3263855008240169458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081250.P3263855008240169458

namespace A081250

/-- `∑[A321573(n)]` -/
def P3263855008240169458.Spec : Prop :=
  ∀ n, P3263855008240169458.a n = A081250 n

end A081250

/-! ## A081250.P6502286492174551287

`Δ[A104522(n)]-1`
-/

namespace A081250.P6502286492174551287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A081250.P6502286492174551287

namespace A081250

/-- `Δ[A104522(n)]-1` -/
def P6502286492174551287.Spec : Prop :=
  ∀ n, P6502286492174551287.a n = A081250 n

end A081250

/-! ## A081250.P4122084714533158352

`A060925(n)-and(1, n)`
-/

namespace A081250.P4122084714533158352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060925 n - (Nat.land 1 n : ℤ)

end

end A081250.P4122084714533158352

namespace A081250

/-- `A060925(n)-and(1, n)` -/
def P4122084714533158352.Spec : Prop :=
  ∀ n, P4122084714533158352.a n = A081250 n

end A081250

/-! ## A081250.P17198282199320542949

`∑[3^n]-A015518(n)`
-/

namespace A081250.P17198282199320542949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A015518 n

end

end A081250.P17198282199320542949

namespace A081250

/-- `∑[3^n]-A015518(n)` -/
def P17198282199320542949.Spec : Prop :=
  ∀ n, P17198282199320542949.a n = A081250 n

end A081250

/-! ## A081250.P10772727398353503875

`2*A153773(n+1)-1`
-/

namespace A081250.P10772727398353503875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153773 (n + 1) - 1

end

end A081250.P10772727398353503875

namespace A081250

/-- `2*A153773(n+1)-1` -/
def P10772727398353503875.Spec : Prop :=
  ∀ n, P10772727398353503875.a n = A081250 n

end A081250

/-! ## A081250.P3618321745739666181

`A090328(n+1)-round(n/2)`
-/

namespace A081250.P3618321745739666181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090328 (n + 1) - SequenceMachineLib.roundAway ((n : ℚ) / 2)

end

end A081250.P3618321745739666181

namespace A081250

/-- `A090328(n+1)-round(n/2)` -/
def P3618321745739666181.Spec : Prop :=
  ∀ n, P3618321745739666181.a n = A081250 n

end A081250

/-! ## A081250.P11385248821678894728

`A198643(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A081250.P11385248821678894728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A198643 (n - 1) - a (n - 1)

end

end A081250.P11385248821678894728

namespace A081250

/-- `A198643(n-1)-a(n-1)` -/
def P11385248821678894728.Spec : Prop :=
  ∀ n, P11385248821678894728.a n = A081250 n

end A081250

/-! ## A081250.P11079818298143390830

`2*A060816(n)-a(n-1)` with `a(0)=1`
-/

namespace A081250.P11079818298143390830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A060816 n - a (n - 1)

end

end A081250.P11079818298143390830

namespace A081250

/-- `2*A060816(n)-a(n-1)` -/
def P11079818298143390830.Spec : Prop :=
  ∀ n, P11079818298143390830.a n = A081250 n

end A081250

/-! ## A081250.P7586379187129252040

`A079362(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A081250.P7586379187129252040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079362 (2 * n) - a (n - 1)

end

end A081250.P7586379187129252040

namespace A081250

/-- `A079362(2*n)-a(n-1)` -/
def P7586379187129252040.Spec : Prop :=
  ∀ n, P7586379187129252040.a n = A081250 n

end A081250

/-!
# A081251: Numbers k such that A081249(m)/m^2 has a local maximum for m = k.

The programs for A081251, the canonical program `A081251.P14502691980658541489` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081251 has offset 1).

The definition of A081251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081251.P14502691980658541489

`a(n-2)+2*3^n` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081251

/-- `a(n-2)+2*3^n` -/
def P14502691980658541489.Spec : Prop :=
  ∀ n, (P14502691980658541489.a n : ℤ) = A081251 (n + 1)

theorem P14502691980658541489.correct : P14502691980658541489.Spec := by
  intro n
  simp only [A081251, Nat.add_sub_cancel]

end A081251

/-! ## A081251.P3255392419295660312

`2*A033113(n+1)`
-/

namespace A081251.P3255392419295660312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033113 (n + 1)

end

end A081251.P3255392419295660312

namespace A081251

/-- `2*A033113(n+1)` -/
def P3255392419295660312.Spec : Prop :=
  ∀ n, P3255392419295660312.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P14215288945761969575

`floor(3^(n+2)/4)`
-/

namespace A081251.P14215288945761969575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ (n + 2) : ℚ) / 4⌋

end

end A081251.P14215288945761969575

namespace A081251

/-- `floor(3^(n+2)/4)` -/
def P14215288945761969575.Spec : Prop :=
  ∀ n, P14215288945761969575.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P15794039478260579131

`ogf(2/(1-3x-x^2+3x^3))`
-/

namespace A081251.P15794039478260579131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -3, -1, 3] n

end

end A081251.P15794039478260579131

namespace A081251

/-- `ogf(2/(1-3x-x^2+3x^3))` -/
def P15794039478260579131.Spec : Prop :=
  ∀ n, P15794039478260579131.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P6373242394020015670

`∑[∑[or(2, 3^n-1)]]`
-/

namespace A081251.P6373242394020015670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((3 ^ n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081251.P6373242394020015670

namespace A081251

/-- `∑[∑[or(2, 3^n-1)]]` -/
def P6373242394020015670.Spec : Prop :=
  ∀ n, P6373242394020015670.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P7605629137313869548

`∑[xor(2, 3*a(n-1))]` with `a(0)=2`
-/

namespace A081251.P7605629137313869548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor 2 (3 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081251.P7605629137313869548

namespace A081251

/-- `∑[xor(2, 3*a(n-1))]` -/
def P7605629137313869548.Spec : Prop :=
  ∀ n, (P7605629137313869548.a n : ℤ) = A081251 (n + 1)

end A081251

/-! ## A081251.P5001716227634838728

`∑[∑[3^n]+log2(gcd(2, n))]`
-/

namespace A081251.P5001716227634838728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081251.P5001716227634838728

namespace A081251

/-- `∑[∑[3^n]+log2(gcd(2, n))]` -/
def P5001716227634838728.Spec : Prop :=
  ∀ n, P5001716227634838728.a n = (A081251 (n + 1) : ℝ)

end A081251

/-! ## A081251.P1839758445155685930

`ceil(∑[3*a(n-1)]/2)` with `a(0)=3`
-/

namespace A081251.P1839758445155685930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A081251.P1839758445155685930

namespace A081251

/-- `ceil(∑[3*a(n-1)]/2)` -/
def P1839758445155685930.Spec : Prop :=
  ∀ n, P1839758445155685930.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P2122762269120132236

`round(∑[3*a(n-1)]/2)` with `a(0)=3`
-/

namespace A081251.P2122762269120132236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)

end

end A081251.P2122762269120132236

namespace A081251

/-- `round(∑[3*a(n-1)]/2)` -/
def P2122762269120132236.Spec : Prop :=
  ∀ n, P2122762269120132236.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P2196137084962763213

`∑[∑[3^n]+(n+1)%2]`
-/

namespace A081251.P2196137084962763213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081251.P2196137084962763213

namespace A081251

/-- `∑[∑[3^n]+(n+1)%2]` -/
def P2196137084962763213.Spec : Prop :=
  ∀ n, (P2196137084962763213.a n : ℤ) = A081251 (n + 1)

end A081251

/-! ## A081251.P14334589916071253897

`∑[Δ[3^n]-a(n-1)]` with `a(0)=2`
-/

namespace A081251.P14334589916071253897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081251.P14334589916071253897

namespace A081251

/-- `∑[Δ[3^n]-a(n-1)]` -/
def P14334589916071253897.Spec : Prop :=
  ∀ n, P14334589916071253897.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P6424735523727698583

`2*∑[3^n-a(n-1)]` with `a(0)=1`
-/

namespace A081251.P6424735523727698583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (3 ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081251.P6424735523727698583

namespace A081251

/-- `2*∑[3^n-a(n-1)]` -/
def P6424735523727698583.Spec : Prop :=
  ∀ n, P6424735523727698583.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P3738732710919103384

`3^(n+1)-(a(n-1)+1)` with `a(0)=2`
-/

namespace A081251.P3738732710919103384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (3 ^ (n + 1) : ℤ) - (a (n - 1) + 1)

end

end A081251.P3738732710919103384

namespace A081251

/-- `3^(n+1)-(a(n-1)+1)` -/
def P3738732710919103384.Spec : Prop :=
  ∀ n, P3738732710919103384.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P6153923969976039531

`3*3^n-1-a(n-1)` with `a(0)=2`
-/

namespace A081251.P6153923969976039531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (3 * 3 ^ n : ℤ) - 1 - a (n - 1)

end

end A081251.P6153923969976039531

namespace A081251

/-- `3*3^n-1-a(n-1)` -/
def P6153923969976039531.Spec : Prop :=
  ∀ n, P6153923969976039531.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P443313134404683927

`∑[-a(n-1)]+3*a(n-1)` with `a(0)=2`
-/

namespace A081251.P443313134404683927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * a (n - 1)

end

end A081251.P443313134404683927

namespace A081251

/-- `∑[-a(n-1)]+3*a(n-1)` -/
def P443313134404683927.Spec : Prop :=
  ∀ n, P443313134404683927.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P17929359582611674523

`a(n-2)%3+3*a(n-1)` with `a(0)=2, a(1)=6`
-/

namespace A081251.P17929359582611674523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 2) % 3 + 3 * a (n - 1)

end

end A081251.P17929359582611674523

namespace A081251

/-- `a(n-2)%3+3*a(n-1)` -/
def P17929359582611674523.Spec : Prop :=
  ∀ n, (P17929359582611674523.a n : ℤ) = A081251 (n + 1)

end A081251

/-! ## A081251.P12175064084430553500

`∑[3*floor(a(n-1))]-floor(a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A081251.P12175064084430553500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A081251.P12175064084430553500

namespace A081251

/-- `∑[3*floor(a(n-1))]-floor(a(n-1))` -/
def P12175064084430553500.Spec : Prop :=
  ∀ n, P12175064084430553500.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P15929458299425426251

`3*a(n-1)+gcd(3, a(n-1))-1` with `a(0)=2`
-/

namespace A081251.P15929458299425426251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (n - 1) + ((Int.gcd 3 (a (n - 1)) : ℤ) - 1)

end

end A081251.P15929458299425426251

namespace A081251

/-- `3*a(n-1)+gcd(3, a(n-1))-1` -/
def P15929458299425426251.Spec : Prop :=
  ∀ n, P15929458299425426251.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P6779972341167785219

`2-(a(n-1)%3-3*a(n-1))` with `a(0)=2`
-/

namespace A081251.P6779972341167785219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - (Int.tmod (a (n - 1)) 3 - 3 * a (n - 1))

end

end A081251.P6779972341167785219

namespace A081251

/-- `2-(a(n-1)%3-3*a(n-1))` -/
def P6779972341167785219.Spec : Prop :=
  ∀ n, P6779972341167785219.a n = A081251 (n + 1)

end A081251

/-! ## A081251.P4463086766469604198

`∑[2*a(n-1)+3*a(n-2)]` with `a(0)=2, a(1)=4`
-/

namespace A081251.P4463086766469604198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  2 * f1 (n - 1) + 3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081251.P4463086766469604198

namespace A081251

/-- `∑[2*a(n-1)+3*a(n-2)]` -/
def P4463086766469604198.Spec : Prop :=
  ∀ n, (P4463086766469604198.a n : ℤ) = A081251 (n + 1)

end A081251

/-!
# A081252: Partial sums of A053646.

The programs for A081252, the canonical program `A081252.P15153065248392608660` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081252 has offset 1).

The definition of A081252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081252.P15153065248392608660

`∑[A053646(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081252

/-- `∑[A053646(n+1)]` -/
def P15153065248392608660.Spec : Prop :=
  ∀ n, P15153065248392608660.a n = A081252 (n + 1)

theorem P15153065248392608660.correct : P15153065248392608660.Spec := by
  intro n
  simp only [A081252, Nat.add_sub_cancel]

end A081252

/-! ## A081252.P14112615934192457281

`∑[A005942(n+2)%(n+1)]`
-/

namespace A081252.P14112615934192457281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005942 (n + 2)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P14112615934192457281

namespace A081252

/-- `∑[A005942(n+2)%(n+1)]` -/
def P14112615934192457281.Spec : Prop :=
  ∀ n, P14112615934192457281.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P18181643382576207454

`∑[A060973(A079905(n+1))-A060973(n+1)]`
-/

namespace A081252.P18181643382576207454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A079905 (n + 1)).toNat - A060973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P18181643382576207454

namespace A081252

/-- `∑[A060973(A079905(n+1))-A060973(n+1)]` -/
def P18181643382576207454.Spec : Prop :=
  ∀ n, P18181643382576207454.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P14942515882889804397

`∑[n-A277267(2*n+1)]`
-/

namespace A081252.P14942515882889804397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277267 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P14942515882889804397

namespace A081252

/-- `∑[n-A277267(2*n+1)]` -/
def P14942515882889804397.Spec : Prop :=
  ∀ n, P14942515882889804397.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P15676799665589746975

`∑[A279521(2*n+1)-n]`
-/

namespace A081252.P15676799665589746975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P15676799665589746975

namespace A081252

/-- `∑[A279521(2*n+1)-n]` -/
def P15676799665589746975.Spec : Prop :=
  ∀ n, P15676799665589746975.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P14165046106422307169

`∑[A006165(2*(n+1))-(n+1)]`
-/

namespace A081252.P14165046106422307169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (2 * (n + 1)) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P14165046106422307169

namespace A081252

/-- `∑[A006165(2*(n+1))-(n+1)]` -/
def P14165046106422307169.Spec : Prop :=
  ∀ n, P14165046106422307169.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P7350166586984404264

`∑[n+1-A060973(2*(n+1))]`
-/

namespace A081252.P7350166586984404264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A060973 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P7350166586984404264

namespace A081252

/-- `∑[n+1-A060973(2*(n+1))]` -/
def P7350166586984404264.Spec : Prop :=
  ∀ n, P7350166586984404264.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P15329181326689551527

`∑[A078881(2*n+1)-(n+1)]`
-/

namespace A081252.P15329181326689551527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (2 * n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P15329181326689551527

namespace A081252

/-- `∑[A078881(2*n+1)-(n+1)]` -/
def P15329181326689551527.Spec : Prop :=
  ∀ n, P15329181326689551527.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P4886583767468480268

`∑[A006165(2*(n+1))%A000027(n+1)]`
-/

namespace A081252.P4886583767468480268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006165 (2 * (n + 1))) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P4886583767468480268

namespace A081252

/-- `∑[A006165(2*(n+1))%A000027(n+1)]` -/
def P4886583767468480268.Spec : Prop :=
  ∀ n, P4886583767468480268.a n = A081252 (n + 1)

end A081252

/-! ## A081252.P6223377055435309468

`∑[val(A298413(n+1), 6)]`
-/

namespace A081252.P6223377055435309468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A298413 (n + 1)).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P6223377055435309468

namespace A081252

/-- `∑[val(A298413(n+1), 6)]` -/
def P6223377055435309468.Spec : Prop :=
  ∀ n, (P6223377055435309468.a n : ℤ) = A081252 (n + 1)

end A081252

/-!
# A081253: Numbers k such that A081252(m)/m^2 has a local minimum for m = k.

The programs for A081253, the canonical program `A081253.P4174516997601208577` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081253 has offset 1).

The definition of A081253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081253.P4174516997601208577

`a(n-2)+7*2^(n-2)` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081253

/-- `a(n-2)+7*2^(n-2)` -/
def P4174516997601208577.Spec : Prop :=
  ∀ n, P4174516997601208577.a n = (A081253 (n + 1) : ℚ)

end A081253

/-! ## A081253.P12087468262850759568

`floor(2^n*7/3)`
-/

namespace A081253.P12087468262850759568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) * ((7 : ℚ) / 3)⌋

end

end A081253.P12087468262850759568

namespace A081253

/-- `floor(2^n*7/3)` -/
def P12087468262850759568.Spec : Prop :=
  ∀ n, P12087468262850759568.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P4731017090125261990

`∑[ogf((-2+x^2)/(-1+x+2x^2))]`
-/

namespace A081253.P4731017090125261990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081253.P4731017090125261990

namespace A081253

/-- `∑[ogf((-2+x^2)/(-1+x+2x^2))]` -/
def P4731017090125261990.Spec : Prop :=
  ∀ n, P4731017090125261990.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P17292786250525967718

`ogf((2-x^2)/(1-2x-x^2+2x^3))`
-/

namespace A081253.P17292786250525967718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, -2, -1, 2] n

end

end A081253.P17292786250525967718

namespace A081253

/-- `ogf((2-x^2)/(1-2x-x^2+2x^3))` -/
def P17292786250525967718.Spec : Prop :=
  ∀ n, P17292786250525967718.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P16495547525451525484

`char[2*n]+2*a(n-1)` with `a(0)=2`
-/

namespace A081253.P16495547525451525484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * a (n - 1)

end

end A081253.P16495547525451525484

namespace A081253

/-- `char[2*n]+2*a(n-1)` -/
def P16495547525451525484.Spec : Prop :=
  ∀ n, (P16495547525451525484.a n : ℤ) = A081253 (n + 1)

end A081253

/-! ## A081253.P3676908668883577246

`1-(n%2-2*a(n-1))` with `a(0)=2`
-/

namespace A081253.P3676908668883577246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - 2 * a (n - 1))

end

end A081253.P3676908668883577246

namespace A081253

/-- `1-(n%2-2*a(n-1))` -/
def P3676908668883577246.Spec : Prop :=
  ∀ n, P3676908668883577246.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P8918343798102939668

`2*a(n-1)+gcd(2, n)-1` with `a(0)=2`
-/

namespace A081253.P8918343798102939668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) + ((Nat.gcd 2 n : ℤ) - 1)

end

end A081253.P8918343798102939668

namespace A081253

/-- `2*a(n-1)+gcd(2, n)-1` -/
def P8918343798102939668.Spec : Prop :=
  ∀ n, P8918343798102939668.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P15255704333858771589

`2*a(n-2)+a(n-1)+1` with `a(0)=2, a(1)=4`
-/

namespace A081253.P15255704333858771589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * a (n - 2) + (a (n - 1) + 1)

end

end A081253.P15255704333858771589

namespace A081253

/-- `2*a(n-2)+a(n-1)+1` -/
def P15255704333858771589.Spec : Prop :=
  ∀ n, (P15255704333858771589.a n : ℤ) = A081253 (n + 1)

end A081253

/-! ## A081253.P16169481860707741855

`3-(2*(1-a(n-2))-a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A081253.P16169481860707741855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  3 - (2 * (1 - a (n - 2)) - a (n - 1))

end

end A081253.P16169481860707741855

namespace A081253

/-- `3-(2*(1-a(n-2))-a(n-1))` -/
def P16169481860707741855.Spec : Prop :=
  ∀ n, P16169481860707741855.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P7627961480132005548

`A062092(n)-and(1, n)`
-/

namespace A081253.P7627961480132005548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - (Nat.land 1 n : ℤ)

end

end A081253.P7627961480132005548

namespace A081253

/-- `A062092(n)-and(1, n)` -/
def P7627961480132005548.Spec : Prop :=
  ∀ n, P7627961480132005548.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P17967570041161228856

`A000975(n+1)+2^n`
-/

namespace A081253.P17967570041161228856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (n + 1) + (2 ^ n : ℤ)

end

end A081253.P17967570041161228856

namespace A081253

/-- `A000975(n+1)+2^n` -/
def P17967570041161228856.Spec : Prop :=
  ∀ n, P17967570041161228856.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P11295719252154375603

`A081254(n+2)-2^n`
-/

namespace A081253.P11295719252154375603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (n + 2) - (2 ^ n : ℤ)

end

end A081253.P11295719252154375603

namespace A081253

/-- `A081254(n+2)-2^n` -/
def P11295719252154375603.Spec : Prop :=
  ∀ n, P11295719252154375603.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P18014943546251667313

`2^(n+2)-A171231(n)`
-/

namespace A081253.P18014943546251667313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A171231 n

end

end A081253.P18014943546251667313

namespace A081253

/-- `2^(n+2)-A171231(n)` -/
def P18014943546251667313.Spec : Prop :=
  ∀ n, P18014943546251667313.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P17405289394132382460

`A267045(n+2)-2^(n+1)`
-/

namespace A081253.P17405289394132382460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267045 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A081253.P17405289394132382460

namespace A081253

/-- `A267045(n+2)-2^(n+1)` -/
def P17405289394132382460.Spec : Prop :=
  ∀ n, P17405289394132382460.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P12574075237326554935

`A062092(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A081253.P12574075237326554935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A062092 (n - 1) + a (n - 1)

end

end A081253.P12574075237326554935

namespace A081253

/-- `A062092(n-1)+a(n-1)` -/
def P12574075237326554935.Spec : Prop :=
  ∀ n, P12574075237326554935.a n = A081253 (n + 1)

end A081253

/-! ## A081253.P10116478863860435782

`A267604(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A081253.P10116478863860435782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A267604 (n + 1) - a (n - 1)

end

end A081253.P10116478863860435782

namespace A081253

/-- `A267604(n+1)-a(n-1)` -/
def P10116478863860435782.Spec : Prop :=
  ∀ n, P10116478863860435782.a n = A081253 (n + 1)

end A081253

/-!
# A081254: Numbers k such that A081252(m)/m^2 has a local maximum for m = k.

The programs for A081254, the canonical program `A081254.P10593241581811353927` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081254 has offset 1).

The definition of A081254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081254.P12010431422685711020

`a(n-2)+5*2^(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A081254.P12010431422685711020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A081254.P12010431422685711020

namespace A081254

/-- `a(n-2)+5*2^(n-2)` -/
def P12010431422685711020.Spec : Prop :=
  ∀ n, P12010431422685711020.a n = (A081254 (n + 1) : ℚ)

end A081254

/-! ## A081254.P10593241581811353927

`A000975(n)+2^n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081254

/-- `A000975(n)+2^n` -/
def P10593241581811353927.Spec : Prop :=
  ∀ n, P10593241581811353927.a n = A081254 (n + 1)

theorem P10593241581811353927.correct : P10593241581811353927.Spec := by
  intro n
  simp only [A081254, Nat.add_sub_cancel]

end A081254

/-! ## A081254.P9345202976387248871

`A005578(n+1)+A000225(n)`
-/

namespace A081254.P9345202976387248871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) + A000225 n

end

end A081254.P9345202976387248871

namespace A081254

/-- `A005578(n+1)+A000225(n)` -/
def P9345202976387248871.Spec : Prop :=
  ∀ n, P9345202976387248871.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P13822013102060523607

`floor(5*2^n/3)`
-/

namespace A081254.P13822013102060523607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((2 ^ n : ℚ) / 3)⌋

end

end A081254.P13822013102060523607

namespace A081254

/-- `floor(5*2^n/3)` -/
def P13822013102060523607.Spec : Prop :=
  ∀ n, P13822013102060523607.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P9622646407021663493

`ogf((1+x-x^2)/(1-2x-x^2+2x^3))`
-/

namespace A081254.P9622646407021663493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -2, -1, 2] n

end

end A081254.P9622646407021663493

namespace A081254

/-- `ogf((1+x-x^2)/(1-2x-x^2+2x^3))` -/
def P9622646407021663493.Spec : Prop :=
  ∀ n, P9622646407021663493.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P16909598910383326211

`2*a(n-1)+n%2` with `a(0)=1`
-/

namespace A081254.P16909598910383326211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + n % 2

end

end A081254.P16909598910383326211

namespace A081254

/-- `2*a(n-1)+n%2` -/
def P16909598910383326211.Spec : Prop :=
  ∀ n, (P16909598910383326211.a n : ℤ) = A081254 (n + 1)

end A081254

/-! ## A081254.P10792873323398085250

`and(1, n)+2*a(n-1)` with `a(0)=1`
-/

namespace A081254.P10792873323398085250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 n + 2 * a (n - 1)

end

end A081254.P10792873323398085250

namespace A081254

/-- `and(1, n)+2*a(n-1)` -/
def P10792873323398085250.Spec : Prop :=
  ∀ n, (P10792873323398085250.a n : ℤ) = A081254 (n + 1)

end A081254

/-! ## A081254.P3398215150785567318

`or(2*a(n-1), gcd(2, n))` with `a(0)=1`
-/

namespace A081254.P3398215150785567318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (Nat.gcd 2 n)

end

end A081254.P3398215150785567318

namespace A081254

/-- `or(2*a(n-1), gcd(2, n))` -/
def P3398215150785567318.Spec : Prop :=
  ∀ n, (P3398215150785567318.a n : ℤ) = A081254 (n + 1)

end A081254

/-! ## A081254.P3995240117541110633

`∑[2*a(n-1)-(-1)^n]` with `a(0)=1, a(1)=2`
-/

namespace A081254.P3995240117541110633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * f1 (n - 1) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081254.P3995240117541110633

namespace A081254

/-- `∑[2*a(n-1)-(-1)^n]` -/
def P3995240117541110633.Spec : Prop :=
  ∀ n, P3995240117541110633.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P17889709761949577196

`2*(a(n-1)-floor(n/2))+n` with `a(0)=1`
-/

namespace A081254.P17889709761949577196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ⌊(n : ℚ) / 2⌋) + (n : ℤ)

end

end A081254.P17889709761949577196

namespace A081254

/-- `2*(a(n-1)-floor(n/2))+n` -/
def P17889709761949577196.Spec : Prop :=
  ∀ n, P17889709761949577196.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P2307324288583254601

`n-2*floor(n/2-a(n-1))` with `a(0)=1`
-/

namespace A081254.P2307324288583254601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - 2 * ⌊(n : ℚ) / 2 - (a (n - 1) : ℚ)⌋

end

end A081254.P2307324288583254601

namespace A081254

/-- `n-2*floor(n/2-a(n-1))` -/
def P2307324288583254601.Spec : Prop :=
  ∀ n, P2307324288583254601.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P12335907413924860677

`2*a(n-2)+a(n-1)+1` with `a(0)=1, a(1)=3`
-/

namespace A081254.P12335907413924860677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 2) + (a (n - 1) + 1)

end

end A081254.P12335907413924860677

namespace A081254

/-- `2*a(n-2)+a(n-1)+1` -/
def P12335907413924860677.Spec : Prop :=
  ∀ n, (P12335907413924860677.a n : ℤ) = A081254 (n + 1)

end A081254

/-! ## A081254.P18225119145665275187

`∑[a(n-1)+a(n-1)-(-1)^n]` with `a(0)=1, a(1)=2`
-/

namespace A081254.P18225119145665275187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081254.P18225119145665275187

namespace A081254

/-- `∑[a(n-1)+a(n-1)-(-1)^n]` -/
def P18225119145665275187.Spec : Prop :=
  ∀ n, P18225119145665275187.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P7028642382922864682

`∑[a(n-1)-((-1)^n-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A081254.P7028642382922864682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - ((-1) ^ n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081254.P7028642382922864682

namespace A081254

/-- `∑[a(n-1)-((-1)^n-a(n-1))]` -/
def P7028642382922864682.Spec : Prop :=
  ∀ n, P7028642382922864682.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P38802913720913582

`3-(2*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A081254.P38802913720913582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (2 * (1 - a (n - 2)) - a (n - 1))

end

end A081254.P38802913720913582

namespace A081254

/-- `3-(2*(1-a(n-2))-a(n-1))` -/
def P38802913720913582.Spec : Prop :=
  ∀ n, P38802913720913582.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P6385728924012152841

`1-((n-1)%2-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A081254.P6385728924012152841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (Int.tmod ((n : ℤ) - 1) 2 - a (n - 1) - a (n - 1))

end

end A081254.P6385728924012152841

namespace A081254

/-- `1-((n-1)%2-a(n-1)-a(n-1))` -/
def P6385728924012152841.Spec : Prop :=
  ∀ n, P6385728924012152841.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P12732111147521510051

`gcd(4, a(n-1))-(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A081254.P12732111147521510051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.gcd 4 (a (n - 1)) : ℤ) - (1 - a (n - 1) - a (n - 1))

end

end A081254.P12732111147521510051

namespace A081254

/-- `gcd(4, a(n-1))-(1-a(n-1)-a(n-1))` -/
def P12732111147521510051.Spec : Prop :=
  ∀ n, P12732111147521510051.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P1157963234076452779

`A171231(n)-1`
-/

namespace A081254.P1157963234076452779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171231 n - 1

end

end A081254.P1157963234076452779

namespace A081254

/-- `A171231(n)-1` -/
def P1157963234076452779.Spec : Prop :=
  ∀ n, P1157963234076452779.a n = A081254 (n + 1)

end A081254

/-! ## A081254.P8382893478615293162

`A380384(n)+1+n`
-/

namespace A081254.P8382893478615293162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380384 n + 1 + (n : ℤ)

end

end A081254.P8382893478615293162

namespace A081254

/-- `A380384(n)+1+n` -/
def P8382893478615293162.Spec : Prop :=
  ∀ n, P8382893478615293162.a n = A081254 (n + 1)

end A081254

/-!
# A081256: Greatest prime factor of n^3 + 1.

The programs for A081256, the canonical program `A081256.P9897892585436177543` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081256 has offset 1).

The definition of A081256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081256.P9897892585436177543

`A006530((n+1)^3+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A081256

/-- `A006530((n+1)^3+1)` -/
def P9897892585436177543.Spec : Prop :=
  ∀ n, P9897892585436177543.a n = A081256 (n + 1)

theorem P9897892585436177543.correct : P9897892585436177543.Spec := by
  intro n
  simp only [A081256, Nat.add_sub_cancel]

end A081256

/-! ## A081256.P7780970589077893863

`A006530(A061925(2*n+1))%A001105(A333427(n+4))`
-/

namespace A081256.P7780970589077893863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A061925 (2 * n + 1)).toNat) (A001105 (A333427 (n + 4)).toNat)

end

end A081256.P7780970589077893863

namespace A081256

/-- `A006530(A061925(2*n+1))%A001105(A333427(n+4))` -/
def P7780970589077893863.Spec : Prop :=
  ∀ n, P7780970589077893863.a n = A081256 (n + 1)

end A081256

/-! ## A081256.P17872827935322436284

`A240554(A167614(n+2))`
-/

namespace A081256.P17872827935322436284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240554 (A167614 (n + 2)).toNat

end

end A081256.P17872827935322436284

namespace A081256

/-- `A240554(A167614(n+2))` -/
def P17872827935322436284.Spec : Prop :=
  ∀ n, P17872827935322436284.a n = A081256 (n + 1)

end A081256

/-! ## A081256.P3122658180995787213

`A081812(A069894(n)+2)`
-/

namespace A081256.P3122658180995787213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081812 (A069894 n + 2).toNat

end

end A081256.P3122658180995787213

namespace A081256

/-- `A081812(A069894(n)+2)` -/
def P3122658180995787213.Spec : Prop :=
  ∀ n, P3122658180995787213.a n = A081256 (n + 1)

end A081256

/-! ## A081256.P7298697675616339043

`p?[A006530(n+2)*A010052(2*n+1)]`
-/

namespace A081256.P7298697675616339043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) * A010052 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A081256.P7298697675616339043

namespace A081256

/-- `p?[A006530(n+2)*A010052(2*n+1)]` -/
def P7298697675616339043.Spec : Prop :=
  ∀ n, P7298697675616339043.a n = A081256 (n + 1)

end A081256

/-!
# A081257: a(n) is the greatest prime factor of (n^3 - 1).

The programs for A081257, the canonical program `A081257.P5186140164925073176` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081257 has offset 2).

The definition of A081257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A081257.P5186140164925073176

`A006530((n+2)^3-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A081257

/-- `A006530((n+2)^3-1)` -/
def P5186140164925073176.Spec : Prop :=
  ∀ n, P5186140164925073176.a n = A081257 (n + 2)

theorem P5186140164925073176.correct : P5186140164925073176.Spec := by
  intro n
  simp only [A081257, Nat.add_sub_cancel]

end A081257

/-! ## A081257.P11057527180064612202

`A328827(∑[A108872(A000124(2*(n+1)))])`
-/

namespace A081257.P11057527180064612202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (A000124 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328827 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A081257.P11057527180064612202

namespace A081257

/-- `A328827(∑[A108872(A000124(2*(n+1)))])` -/
def P11057527180064612202.Spec : Prop :=
  ∀ n, P11057527180064612202.a n = A081257 (n + 2)

end A081257

/-!
# A081258: Numbers k > 1 such that k^3 - 1 (or equivalently k^2 + k + 1) has no prime factor greater than k.

The programs for A081258, the canonical program `A081258.P1681590963594973240` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081258 has offset 1).

The definition of A081258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081258.P1681590963594973240

`lt[A081256(n+1), A078358(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A081258

/-- `lt[A081256(n+1), A078358(n+1)]` -/
def P1681590963594973240.Spec : Prop :=
  ∀ n, (P1681590963594973240.a n : ℤ) = A081258 (n + 1)

theorem P1681590963594973240.correct : P1681590963594973240.Spec := by
  intro n
  simp only [A081258, Nat.add_sub_cancel]

end A081258

/-! ## A081258.P1284886540182922456

`lt[A081256(n+1), A000015(n+1)+1]`
-/

namespace A081258.P1284886540182922456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081258.P1284886540182922456

namespace A081258

/-- `lt[A081256(n+1), A000015(n+1)+1]` -/
def P1284886540182922456.Spec : Prop :=
  ∀ n, (P1284886540182922456.a n : ℤ) = A081258 (n + 1)

end A081258

/-! ## A081258.P4356192459658978417

`lt[A081256(n+1), A014681(A151800(n))]`
-/

namespace A081258.P4356192459658978417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A151800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081258.P4356192459658978417

namespace A081258

/-- `lt[A081256(n+1), A014681(A151800(n))]` -/
def P4356192459658978417.Spec : Prop :=
  ∀ n, (P4356192459658978417.a n : ℤ) = A081258 (n + 1)

end A081258

/-! ## A081258.P11788325760783374714

`lt[A081256(n+1), A014681(A000015(n+1))]`
-/

namespace A081258.P11788325760783374714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A000015 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A081258.P11788325760783374714

namespace A081258

/-- `lt[A081256(n+1), A014681(A000015(n+1))]` -/
def P11788325760783374714.Spec : Prop :=
  ∀ n, (P11788325760783374714.a n : ℤ) = A081258 (n + 1)

end A081258

/-! ## A081258.P4906743718252121357

`eq[A089124(2*n+1)%(n+1), A089124(2*n+1)]`
-/

namespace A081258.P4906743718252121357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089124 (2 * n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089124 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081258.P4906743718252121357

namespace A081258

/-- `eq[A089124(2*n+1)%(n+1), A089124(2*n+1)]` -/
def P4906743718252121357.Spec : Prop :=
  ∀ n, (P4906743718252121357.a n : ℤ) = A081258 (n + 1)

end A081258

/-!
# A081259: a(n) is the smallest k such that C(3n,n) divides k!.

The programs for A081259, the canonical program `A081259.P16989465696639261266` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081259 has offset 1).

The definition of A081259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081259.P6845815892562441675

`A000040(A000720(3*n+2))`
-/

namespace A081259.P6845815892562441675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (3 * n + 2)).toNat

end

end A081259.P6845815892562441675

namespace A081259

/-- `A000040(A000720(3*n+2))` -/
def P6845815892562441675.Spec : Prop :=
  ∀ n, P6845815892562441675.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P16989465696639261266

`A118749(n+1)-A000007(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081259

/-- `A118749(n+1)-A000007(n)` -/
def P16989465696639261266.Spec : Prop :=
  ∀ n, P16989465696639261266.a n = A081259 (n + 1)

theorem P16989465696639261266.correct : P16989465696639261266.Spec := by
  intro n
  simp only [A081259, Nat.add_sub_cancel]

end A081259

/-! ## A081259.P3002538860371239059

`A060308(A032766(n+1))`
-/

namespace A081259.P3002538860371239059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A032766 (n + 1)).toNat

end

end A081259.P3002538860371239059

namespace A081259

/-- `A060308(A032766(n+1))` -/
def P3002538860371239059.Spec : Prop :=
  ∀ n, P3002538860371239059.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P13356476325275177575

`A060308(A189669(n+1))`
-/

namespace A081259.P13356476325275177575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A189669 (n + 1)).toNat

end

end A081259.P13356476325275177575

namespace A081259

/-- `A060308(A189669(n+1))` -/
def P13356476325275177575.Spec : Prop :=
  ∀ n, P13356476325275177575.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P13046154372639113695

`A060308(A080513(n)+n)`
-/

namespace A081259.P13046154372639113695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A080513 n + (n : ℤ)).toNat

end

end A081259.P13046154372639113695

namespace A081259

/-- `A060308(A080513(n)+n)` -/
def P13046154372639113695.Spec : Prop :=
  ∀ n, P13046154372639113695.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P5185419644204298652

`A060308(A001651(n+2)-1)`
-/

namespace A081259.P5185419644204298652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A001651 (n + 2) - 1).toNat

end

end A081259.P5185419644204298652

namespace A081259

/-- `A060308(A001651(n+2)-1)` -/
def P5185419644204298652.Spec : Prop :=
  ∀ n, P5185419644204298652.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P16504657515303168971

`A060308(A114119(n+1)-2)`
-/

namespace A081259.P16504657515303168971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A114119 (n + 1) - 2).toNat

end

end A081259.P16504657515303168971

namespace A081259

/-- `A060308(A114119(n+1)-2)` -/
def P16504657515303168971.Spec : Prop :=
  ∀ n, P16504657515303168971.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P9945185861213554296

`A060308(A008619(n+1)+n)`
-/

namespace A081259.P9945185861213554296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A008619 (n + 1) + (n : ℤ)).toNat

end

end A081259.P9945185861213554296

namespace A081259

/-- `A060308(A008619(n+1)+n)` -/
def P9945185861213554296.Spec : Prop :=
  ∀ n, P9945185861213554296.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P2723128583854191958

`A060308(A114119(n))`
-/

namespace A081259.P2723128583854191958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A114119 n).toNat

end

end A081259.P2723128583854191958

namespace A081259

/-- `A060308(A114119(n))` -/
def P2723128583854191958.Spec : Prop :=
  ∀ n, P2723128583854191958.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P11584789279362787492

`A060308(A026430(n+1))`
-/

namespace A081259.P11584789279362787492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A026430 (n + 1)).toNat

end

end A081259.P11584789279362787492

namespace A081259

/-- `A060308(A026430(n+1))` -/
def P11584789279362787492.Spec : Prop :=
  ∀ n, P11584789279362787492.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P225487130075540687

`A060308(A128929(2*(n+2))+n)`
-/

namespace A081259.P225487130075540687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A128929 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A081259.P225487130075540687

namespace A081259

/-- `A060308(A128929(2*(n+2))+n)` -/
def P225487130075540687.Spec : Prop :=
  ∀ n, P225487130075540687.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P15549408662310442705

`A064614(A118749(n+1))`
-/

namespace A081259.P15549408662310442705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A118749 (n + 1)).toNat

end

end A081259.P15549408662310442705

namespace A081259

/-- `A064614(A118749(n+1))` -/
def P15549408662310442705.Spec : Prop :=
  ∀ n, P15549408662310442705.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P1331644776668813569

`A103889(A055670(A000720(A014682(2*n+1))))`
-/

namespace A081259.P1331644776668813569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A055670 (A000720 (A014682 (2 * n + 1)).toNat).toNat).toNat

end

end A081259.P1331644776668813569

namespace A081259

/-- `A103889(A055670(A000720(A014682(2*n+1))))` -/
def P1331644776668813569.Spec : Prop :=
  ∀ n, P1331644776668813569.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P15731024844450622632

`A007917(A008585(n)+2)`
-/

namespace A081259.P15731024844450622632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A008585 n + 2).toNat

end

end A081259.P15731024844450622632

namespace A081259

/-- `A007917(A008585(n)+2)` -/
def P15731024844450622632.Spec : Prop :=
  ∀ n, P15731024844450622632.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P2858200293866348618

`A060308(A080513(3*n))`
-/

namespace A081259.P2858200293866348618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A080513 (3 * n)).toNat

end

end A081259.P2858200293866348618

namespace A081259

/-- `A060308(A080513(3*n))` -/
def P2858200293866348618.Spec : Prop :=
  ∀ n, P2858200293866348618.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P11832187417289813338

`A008578(A036234(2*n+n+2))`
-/

namespace A081259.P11832187417289813338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A036234 (2 * n + (n + 2))).toNat

end

end A081259.P11832187417289813338

namespace A081259

/-- `A008578(A036234(2*n+n+2))` -/
def P11832187417289813338.Spec : Prop :=
  ∀ n, P11832187417289813338.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P10966683530299080806

`A000040(A230980(2*n+n+2))`
-/

namespace A081259.P10966683530299080806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (2 * n + (n + 2))).toNat

end

end A081259.P10966683530299080806

namespace A081259

/-- `A000040(A230980(2*n+n+2))` -/
def P10966683530299080806.Spec : Prop :=
  ∀ n, P10966683530299080806.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P2729309954091558406

`A064989(A151800(2*n+n+2))`
-/

namespace A081259.P2729309954091558406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A151800 (2 * n + (n + 2))).toNat

end

end A081259.P2729309954091558406

namespace A081259

/-- `A064989(A151800(2*n+n+2))` -/
def P2729309954091558406.Spec : Prop :=
  ∀ n, P2729309954091558406.a n = A081259 (n + 1)

end A081259

/-! ## A081259.P10141261955826848983

`A055377(A016957(n))`
-/

namespace A081259.P10141261955826848983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A016957 n).toNat

end

end A081259.P10141261955826848983

namespace A081259

/-- `A055377(A016957(n))` -/
def P10141261955826848983.Spec : Prop :=
  ∀ n, P10141261955826848983.a n = A081259 (n + 1)

end A081259

/-!
# A081260: a(1)=4; for n>1, a(n) is taken to be the third-smallest integer greater than a(n-1) such that the condition "n is a member of the sequence if and only if a(n) is odd" is satisfied.

The programs for A081260, there is no canonical definition to state claims against.
-/

/-! ## A081260.P5827976429146293712

`∑[A081261(n+1)]`
-/

namespace A081260.P5827976429146293712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081260.P5827976429146293712

/-! ## A081260.P363437304458051471

`A081261(a(n-1)+5)+a(n-1)` with `a(0)=4`
-/

namespace A081260.P363437304458051471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A081261 (a (n - 1) + 5).toNat + a (n - 1)

end

end A081260.P363437304458051471

/-! ## A081260.P4030879353552101500

`A090701(A304497(3*n+1)+A265389(n+1))`
-/

namespace A081260.P4030879353552101500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090701 (A304497 (3 * n + 1) + A265389 (n + 1)).toNat

end

end A081260.P4030879353552101500

/-! ## A081260.P18350892464054163060

`A093609(2*(n+1))-A030190(A004111(n+3))`
-/

namespace A081260.P18350892464054163060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093609 (2 * (n + 1)) - A030190 (A004111 (n + 3)).toNat

end

end A081260.P18350892464054163060

/-! ## A081260.P6913527264231122123

`A029903(3*n+1)+A029903(n+1)`
-/

namespace A081260.P6913527264231122123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029903 (3 * n + 1) + A029903 (n + 1)

end

end A081260.P6913527264231122123

/-!
# A081264: Odd Fibonacci pseudoprimes: odd composite numbers k such that either (1) k divides Fibonacci(k-1) if k == +-1 (mod 5) or (2) k divides Fibonacci(k+1) if k == +-2 (mod 5).

The programs for A081264, there is no canonical definition to state claims against.
-/

/-! ## A081264.P762659102159711135

`∩[A182554(n+1), A339728(n+1)]`
-/

namespace A081264.P762659102159711135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P762659102159711135

/-! ## A081264.P47967776205727429

`∩[A335672(n+1), A339728(n+1)]`
-/

namespace A081264.P47967776205727429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P47967776205727429

/-! ## A081264.P7275790259244584791

`∩[A337231(n+1), A339728(n+1)]`
-/

namespace A081264.P7275790259244584791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P7275790259244584791

/-! ## A081264.P2244195307874685960

`∩[A086504(n+1), A241505(n+1)]`
-/

namespace A081264.P2244195307874685960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P2244195307874685960

/-! ## A081264.P1902687575353114543

`∩[A241505(n+1), A335672(n+1)]`
-/

namespace A081264.P1902687575353114543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P1902687575353114543

/-! ## A081264.P1024747697384097042

`∩[A241505(n+1), A337231(n+1)]`
-/

namespace A081264.P1024747697384097042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P1024747697384097042

/-! ## A081264.P14435532702489795850

`∩[A241505(n+1), A339728(n+1)]`
-/

namespace A081264.P14435532702489795850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P14435532702489795850

/-! ## A081264.P9076714132594838637

`∩[A182554(n+1), A339129(n+1)]`
-/

namespace A081264.P9076714132594838637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P9076714132594838637

/-! ## A081264.P13417680742376071521

`∩[A182554(n+1), A340097(n+1)]`
-/

namespace A081264.P13417680742376071521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P13417680742376071521

/-! ## A081264.P3447129613527916530

`∩[A335672(n+1), A339129(n+1)]`
-/

namespace A081264.P3447129613527916530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081264.P3447129613527916530

/-!
# A081265: Triangle of coefficients of the polynomials a(n, x) = 2*a(n-1, x)+ x^2*a(n-2,x), n >= 1, a(0, x) = 1, a(1, x) = 1.

The programs for A081265, the canonical program `A081265.P2377281126130984844` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081265 has offset 0).

The definition of A081265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081265.P15154563552314806243

`abs(A039991(n))`
-/

namespace A081265.P15154563552314806243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039991 n|

end

end A081265.P15154563552314806243

namespace A081265

/-- `abs(A039991(n))` -/
def P15154563552314806243.Spec : Prop :=
  ∀ n, P15154563552314806243.a n = A081265 n

end A081265

/-! ## A081265.P11221070410355005921

`gcd(A000038(n), A039991(n))`
-/

namespace A081265.P11221070410355005921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039991 n)

end

end A081265.P11221070410355005921

namespace A081265

/-- `gcd(A000038(n), A039991(n))` -/
def P11221070410355005921.Spec : Prop :=
  ∀ n, (P11221070410355005921.a n : ℤ) = A081265 n

end A081265

/-! ## A081265.P4668559065943672209

`lcm(A020985(n), A039991(n))`
-/

namespace A081265.P4668559065943672209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A039991 n)

end

end A081265.P4668559065943672209

namespace A081265

/-- `lcm(A020985(n), A039991(n))` -/
def P4668559065943672209.Spec : Prop :=
  ∀ n, (P4668559065943672209.a n : ℤ) = A081265 n

end A081265

/-! ## A081265.P2377281126130984844

`abs(A053120(A061579(n)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A081265

/-- `abs(A053120(A061579(n)))` -/
def P2377281126130984844.Spec : Prop :=
  ∀ n, P2377281126130984844.a n = A081265 n

theorem P2377281126130984844.correct : P2377281126130984844.Spec := by
  intro n
  simp only [A081265]

end A081265

/-! ## A081265.P13443605220909988192

`sqrt(A039991(n)²*char[A003188(n)])`
-/

namespace A081265.P13443605220909988192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A039991 n ^ 2 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℝ)

end

end A081265.P13443605220909988192

namespace A081265

/-- `sqrt(A039991(n)²*char[A003188(n)])` -/
def P13443605220909988192.Spec : Prop :=
  ∀ n, P13443605220909988192.a n = (A081265 n : ℝ)

end A081265

/-! ## A081265.P10611458767646272508

`sqrt(A039991(n)²*A007318(C(3, n)))`
-/

namespace A081265.P10611458767646272508
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A039991 n ^ 2 * A007318 (Nat.choose 3 n) : ℝ)

end

end A081265.P10611458767646272508

namespace A081265

/-- `sqrt(A039991(n)²*A007318(C(3, n)))` -/
def P10611458767646272508.Spec : Prop :=
  ∀ n, P10611458767646272508.a n = (A081265 n : ℝ)

end A081265

/-! ## A081265.P11266443894464158993

`sqrt(A039991(n)^A020639(2*(n+1)))`
-/

namespace A081265.P11266443894464158993
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A039991 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A081265.P11266443894464158993

namespace A081265

/-- `sqrt(A039991(n)^A020639(2*(n+1)))` -/
def P11266443894464158993.Spec : Prop :=
  ∀ n, P11266443894464158993.a n = (A081265 n : ℝ)

end A081265

/-! ## A081265.P9888686382260815658

`∑{d}[A039991(n), A000010(#)]`
-/

namespace A081265.P9888686382260815658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A081265.P9888686382260815658

namespace A081265

/-- `∑{d}[A039991(n), A000010(#)]` -/
def P9888686382260815658.Spec : Prop :=
  ∀ n, P9888686382260815658.a n = A081265 n

end A081265

/-! ## A081265.P9852092416884531615

`A104040(n)*A376583(n+1)`
-/

namespace A081265.P9852092416884531615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104040 n * A376583 (n + 1)

end

end A081265.P9852092416884531615

namespace A081265

/-- `A104040(n)*A376583(n+1)` -/
def P9852092416884531615.Spec : Prop :=
  ∀ n, P9852092416884531615.a n = A081265 n

end A081265

/-!
# A081266: Staggered diagonal of triangular spiral in A051682.

The programs for A081266, the canonical program `A081266.P4675071685135098826` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081266 has offset 0).

The definition of A081266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081266.P14664810575529363242

`3*n*(3*n+1)/2`
-/

namespace A081266.P14664810575529363242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * ((3 * n + 1 : ℚ) / 2))

end

end A081266.P14664810575529363242

namespace A081266

/-- `3*n*(3*n+1)/2` -/
def P14664810575529363242.Spec : Prop :=
  ∀ n, P14664810575529363242.a n = (A081266 n : ℚ)

theorem P14664810575529363242.correct : P14664810575529363242.Spec := by
  intro n
  induction n with
  | zero => simp [A081266, A081266.P14664810575529363242.a, A081266.P4675071685135098826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A081266, Nat.add_sub_cancel, A081266.P14664810575529363242.a, A081266.P4675071685135098826.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A081266

/-! ## A081266.P4675071685135098826

`9*n+a(n-1)-3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081266

/-- `9*n+a(n-1)-3` -/
def P4675071685135098826.Spec : Prop :=
  ∀ n, P4675071685135098826.a n = A081266 n

theorem P4675071685135098826.correct : P4675071685135098826.Spec := by
  intro n
  simp only [A081266]

end A081266

/-! ## A081266.P8799689074100428909

`A000217(3*n)`
-/

namespace A081266.P8799689074100428909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n)

end

end A081266.P8799689074100428909

namespace A081266

/-- `A000217(3*n)` -/
def P8799689074100428909.Spec : Prop :=
  ∀ n, P8799689074100428909.a n = A081266 n

end A081266

/-! ## A081266.P15610453260735254503

`A003154(n+1)-A133694(n+1)`
-/

namespace A081266.P15610453260735254503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1) - A133694 (n + 1)

end

end A081266.P15610453260735254503

namespace A081266

/-- `A003154(n+1)-A133694(n+1)` -/
def P15610453260735254503.Spec : Prop :=
  ∀ n, P15610453260735254503.a n = A081266 n

end A081266

/-! ## A081266.P1169066350493943461

`A218470(9*n+5)`
-/

namespace A081266.P1169066350493943461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 5)

end

end A081266.P1169066350493943461

namespace A081266

/-- `A218470(9*n+5)` -/
def P1169066350493943461.Spec : Prop :=
  ∀ n, P1169066350493943461.a n = A081266 n

end A081266

/-! ## A081266.P6591930001088220905

`C(3*n+1, 2)`
-/

namespace A081266.P6591930001088220905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 1) 2

end

end A081266.P6591930001088220905

namespace A081266

/-- `C(3*n+1, 2)` -/
def P6591930001088220905.Spec : Prop :=
  ∀ n, (P6591930001088220905.a n : ℤ) = A081266 n

end A081266

/-! ## A081266.P532837137759188511

`Δ[3*n*C(n, 2)]`
-/

namespace A081266.P532837137759188511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081266.P532837137759188511

namespace A081266

/-- `Δ[3*n*C(n, 2)]` -/
def P532837137759188511.Spec : Prop :=
  ∀ n, P532837137759188511.a n = A081266 n

end A081266

/-! ## A081266.P13437920706705943827

`∑[a(n-1)+9]` with `a(0)=0, a(1)=6`
-/

namespace A081266.P13437920706705943827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081266.P13437920706705943827

namespace A081266

/-- `∑[a(n-1)+9]` -/
def P13437920706705943827.Spec : Prop :=
  ∀ n, (P13437920706705943827.a n : ℤ) = A081266 n

end A081266

/-! ## A081266.P16012633324772918570

`∑[ogf((6x+3x^2)/(1-2x+x^2))]`
-/

namespace A081266.P16012633324772918570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081266.P16012633324772918570

namespace A081266

/-- `∑[ogf((6x+3x^2)/(1-2x+x^2))]` -/
def P16012633324772918570.Spec : Prop :=
  ∀ n, P16012633324772918570.a n = A081266 n

end A081266

/-! ## A081266.P13340905234451373026

`ogf((6x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A081266.P13340905234451373026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 3] [1, -3, 3, -1] n

end

end A081266.P13340905234451373026

namespace A081266

/-- `ogf((6x+3x^2)/(1-3x+3x^2-x^3))` -/
def P13340905234451373026.Spec : Prop :=
  ∀ n, P13340905234451373026.a n = A081266 n

end A081266

/-! ## A081266.P14031293242059938415

`3-∑[a(n-1)-9]` with `a(0)=3`
-/

namespace A081266.P14031293242059938415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081266.P14031293242059938415

namespace A081266

/-- `3-∑[a(n-1)-9]` -/
def P14031293242059938415.Spec : Prop :=
  ∀ n, P14031293242059938415.a n = A081266 n

end A081266

/-! ## A081266.P9832308283611857054

`9*n-(3-a(n-1))` with `a(0)=0`
-/

namespace A081266.P9832308283611857054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) - (3 - a (n - 1))

end

end A081266.P9832308283611857054

namespace A081266

/-- `9*n-(3-a(n-1))` -/
def P9832308283611857054.Spec : Prop :=
  ∀ n, P9832308283611857054.a n = A081266 n

theorem P9832308283611857054.correct : P9832308283611857054.Spec := by
  intro n
  simp only [A081266, Nat.add_sub_cancel, A081266.P9832308283611857054.a, A081266.P4675071685135098826.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A081266

/-! ## A081266.P16012582950758833535

`∑[lcm(3, 2*n+n-1)]-3`
-/

namespace A081266.P16012582950758833535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((2 * n : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A081266.P16012582950758833535

namespace A081266

/-- `∑[lcm(3, 2*n+n-1)]-3` -/
def P16012582950758833535.Spec : Prop :=
  ∀ n, P16012582950758833535.a n = A081266 n

end A081266

/-! ## A081266.P3032648186948381462

`(2*n)²-(C(n, 2)-∑[2*n])`
-/

namespace A081266.P3032648186948381462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A081266.P3032648186948381462

namespace A081266

/-- `(2*n)²-(C(n, 2)-∑[2*n])` -/
def P3032648186948381462.Spec : Prop :=
  ∀ n, P3032648186948381462.a n = A081266 n

end A081266

/-! ## A081266.P13835741071756854905

`∑[3*((2*n)%(n+1)+2*n)]`
-/

namespace A081266.P13835741071756854905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (2 * n % (n + 1) + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081266.P13835741071756854905

namespace A081266

/-- `∑[3*((2*n)%(n+1)+2*n)]` -/
def P13835741071756854905.Spec : Prop :=
  ∀ n, (P13835741071756854905.a n : ℤ) = A081266 n

end A081266

/-! ## A081266.P1174195686258421970

`∑[n]+lcm(n, 2*n+2*n+1)`
-/

namespace A081266.P1174195686258421970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm n (2 * n + (2 * n + 1))

end

end A081266.P1174195686258421970

namespace A081266

/-- `∑[n]+lcm(n, 2*n+2*n+1)` -/
def P1174195686258421970.Spec : Prop :=
  ∀ n, (P1174195686258421970.a n : ℤ) = A081266 n

end A081266

/-! ## A081266.P1665763680132008762

`∑[n-1]+or(1, (2*n+1)*2*n)`
-/

namespace A081266.P1665763680132008762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lor 1 ((2 * n + 1) * (2 * n)) : ℤ)

end

end A081266.P1665763680132008762

namespace A081266

/-- `∑[n-1]+or(1, (2*n+1)*2*n)` -/
def P1665763680132008762.Spec : Prop :=
  ∀ n, P1665763680132008762.a n = A081266 n

end A081266

/-! ## A081266.P8229015467493703372

`∑[n-1]+xor(1, (2*n+1)*2*n)`
-/

namespace A081266.P8229015467493703372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.xor 1 ((2 * n + 1) * (2 * n)) : ℤ)

end

end A081266.P8229015467493703372

namespace A081266

/-- `∑[n-1]+xor(1, (2*n+1)*2*n)` -/
def P8229015467493703372.Spec : Prop :=
  ∀ n, P8229015467493703372.a n = A081266 n

end A081266

/-! ## A081266.P11419036413328882201

`A038764(n)-1`
-/

namespace A081266.P11419036413328882201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n - 1

end

end A081266.P11419036413328882201

namespace A081266

/-- `A038764(n)-1` -/
def P11419036413328882201.Spec : Prop :=
  ∀ n, P11419036413328882201.a n = A081266 n

end A081266

/-!
# A081267: Diagonal of triangular spiral in A051682.

The programs for A081267, the canonical program `A081267.P9406323780234199555` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081267 has offset 0).

The definition of A081267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081267.P9406323780234199555

`9*n+a(n-1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081267

/-- `9*n+a(n-1)-1` -/
def P9406323780234199555.Spec : Prop :=
  ∀ n, P9406323780234199555.a n = A081267 n

theorem P9406323780234199555.correct : P9406323780234199555.Spec := by
  intro n
  simp only [A081267]

end A081267

/-! ## A081267.P12956036890921382851

`(9*n²+7*n+2)/2`
-/

namespace A081267.P12956036890921382851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 7 * n + 2 : ℚ) / 2

end

end A081267.P12956036890921382851

namespace A081267

/-- `(9*n²+7*n+2)/2` -/
def P12956036890921382851.Spec : Prop :=
  ∀ n, P12956036890921382851.a n = (A081267 n : ℚ)

theorem P12956036890921382851.correct : P12956036890921382851.Spec := by
  intro n
  induction n with
  | zero => simp [A081267, A081267.P12956036890921382851.a, A081267.P9406323780234199555.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A081267, Nat.add_sub_cancel, A081267.P12956036890921382851.a, A081267.P9406323780234199555.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A081267

/-! ## A081267.P10059390645917628898

`(n+1)*A000326(n+1)-n*A000326(n)`
-/

namespace A081267.P10059390645917628898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000326 (n + 1) - (n : ℤ) * A000326 n

end

end A081267.P10059390645917628898

namespace A081267

/-- `(n+1)*A000326(n+1)-n*A000326(n)` -/
def P10059390645917628898.Spec : Prop :=
  ∀ n, P10059390645917628898.a n = A081267 n

end A081267

/-! ## A081267.P9618256437584908821

`C(n, 2)+Δ[n²]²`
-/

namespace A081267.P9618256437584908821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A081267.P9618256437584908821

namespace A081267

/-- `C(n, 2)+Δ[n²]²` -/
def P9618256437584908821.Spec : Prop :=
  ∀ n, P9618256437584908821.a n = A081267 n

end A081267

/-! ## A081267.P1842899633314980980

`∑[a(n-1)+9]` with `a(0)=1, a(1)=8`
-/

namespace A081267.P1842899633314980980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081267.P1842899633314980980

namespace A081267

/-- `∑[a(n-1)+9]` -/
def P1842899633314980980.Spec : Prop :=
  ∀ n, (P1842899633314980980.a n : ℤ) = A081267 n

end A081267

/-! ## A081267.P1168560418385427661

`∑[ogf((1+6x+2x^2)/(1-2x+x^2))]`
-/

namespace A081267.P1168560418385427661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081267.P1168560418385427661

namespace A081267

/-- `∑[ogf((1+6x+2x^2)/(1-2x+x^2))]` -/
def P1168560418385427661.Spec : Prop :=
  ∀ n, P1168560418385427661.a n = A081267 n

end A081267

/-! ## A081267.P11116185287650550853

`ogf((1+6x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A081267.P11116185287650550853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 2] [1, -3, 3, -1] n

end

end A081267.P11116185287650550853

namespace A081267

/-- `ogf((1+6x+2x^2)/(1-3x+3x^2-x^3))` -/
def P11116185287650550853.Spec : Prop :=
  ∀ n, P11116185287650550853.a n = A081267 n

end A081267

/-! ## A081267.P17819211550362798548

`2-∑[a(n-1)-9]` with `a(0)=1`
-/

namespace A081267.P17819211550362798548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081267.P17819211550362798548

namespace A081267

/-- `2-∑[a(n-1)-9]` -/
def P17819211550362798548.Spec : Prop :=
  ∀ n, P17819211550362798548.a n = A081267 n

end A081267

/-! ## A081267.P2452573275656683919

`abs(C(3*n+2, 2)-n)`
-/

namespace A081267.P2452573275656683919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (3 * n + 2) 2 : ℤ) - (n : ℤ)|

end

end A081267.P2452573275656683919

namespace A081267

/-- `abs(C(3*n+2, 2)-n)` -/
def P2452573275656683919.Spec : Prop :=
  ∀ n, P2452573275656683919.a n = A081267 n

end A081267

/-! ## A081267.P15685243814457447623

`Δ[n*C(3*n, 2)/3]`
-/

namespace A081267.P15685243814457447623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.choose (3 * n) 2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081267.P15685243814457447623

namespace A081267

/-- `Δ[n*C(3*n, 2)/3]` -/
def P15685243814457447623.Spec : Prop :=
  ∀ n, P15685243814457447623.a n = (A081267 n : ℚ)

end A081267

/-! ## A081267.P16278896623200279013

`Δ[n*(3*C(n, 2)+n)]`
-/

namespace A081267.P16278896623200279013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * Nat.choose n 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081267.P16278896623200279013

namespace A081267

/-- `Δ[n*(3*C(n, 2)+n)]` -/
def P16278896623200279013.Spec : Prop :=
  ∀ n, P16278896623200279013.a n = A081267 n

end A081267

/-! ## A081267.P14486459666238962648

`5*n+C(3*n, 2)+1`
-/

namespace A081267.P14486459666238962648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + (Nat.choose (3 * n) 2 + 1)

end

end A081267.P14486459666238962648

namespace A081267

/-- `5*n+C(3*n, 2)+1` -/
def P14486459666238962648.Spec : Prop :=
  ∀ n, (P14486459666238962648.a n : ℤ) = A081267 n

end A081267

/-! ## A081267.P10901755080013785908

`9*n-(1-a(n-1))` with `a(0)=1`
-/

namespace A081267.P10901755080013785908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n : ℤ) - (1 - a (n - 1))

end

end A081267.P10901755080013785908

namespace A081267

/-- `9*n-(1-a(n-1))` -/
def P10901755080013785908.Spec : Prop :=
  ∀ n, P10901755080013785908.a n = A081267 n

theorem P10901755080013785908.correct : P10901755080013785908.Spec := by
  intro n
  simp only [A081267, Nat.add_sub_cancel, A081267.P10901755080013785908.a, A081267.P9406323780234199555.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A081267

/-! ## A081267.P14379440973529791126

`∑[n+3]-or(2, -(2*n)²)`
-/

namespace A081267.P14379440973529791126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.lor 2 (-((2 * n) ^ 2 : ℤ))

end

end A081267.P14379440973529791126

namespace A081267

/-- `∑[n+3]-or(2, -(2*n)²)` -/
def P14379440973529791126.Spec : Prop :=
  ∀ n, P14379440973529791126.a n = A081267 n

end A081267

/-! ## A081267.P11327066132031234237

`∑[n+3]-xor(2, -(2*n)²)`
-/

namespace A081267.P11327066132031234237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor 2 (-((2 * n) ^ 2 : ℤ))

end

end A081267.P11327066132031234237

namespace A081267

/-- `∑[n+3]-xor(2, -(2*n)²)` -/
def P11327066132031234237.Spec : Prop :=
  ∀ n, P11327066132031234237.a n = A081267 n

end A081267

/-! ## A081267.P15770395260017656256

`∑[n+1]+lcm(2*n, Δ[n²])`
-/

namespace A081267.P15770395260017656256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.lcm (2 * n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A081267.P15770395260017656256

namespace A081267

/-- `∑[n+1]+lcm(2*n, Δ[n²])` -/
def P15770395260017656256.Spec : Prop :=
  ∀ n, (P15770395260017656256.a n : ℤ) = A081267 n

end A081267

/-! ## A081267.P16481989958130880313

`lcm(2, (2*n)²)+∑[n+3]-2`
-/

namespace A081267.P16481989958130880313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((2 * n) ^ 2) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A081267.P16481989958130880313

namespace A081267

/-- `lcm(2, (2*n)²)+∑[n+3]-2` -/
def P16481989958130880313.Spec : Prop :=
  ∀ n, P16481989958130880313.a n = A081267 n

end A081267

/-! ## A081267.P8113805140579745879

`∑[n+1]+2*n*or(1, 2*n)`
-/

namespace A081267.P8113805140579745879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * Nat.lor 1 (2 * n)

end

end A081267.P8113805140579745879

namespace A081267

/-- `∑[n+1]+2*n*or(1, 2*n)` -/
def P8113805140579745879.Spec : Prop :=
  ∀ n, (P8113805140579745879.a n : ℤ) = A081267 n

end A081267

/-! ## A081267.P2239952444687124473

`∑[n+1]+2*n*xor(1, 2*n)`
-/

namespace A081267.P2239952444687124473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n * Nat.xor 1 (2 * n)

end

end A081267.P2239952444687124473

namespace A081267

/-- `∑[n+1]+2*n*xor(1, 2*n)` -/
def P2239952444687124473.Spec : Prop :=
  ∀ n, (P2239952444687124473.a n : ℤ) = A081267 n

end A081267

/-! ## A081267.P10362324955812440771

`(2*n)²+∑[n+3]-gcd(2, 2*n)`
-/

namespace A081267.P10362324955812440771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd 2 (2 * n) : ℤ))

end

end A081267.P10362324955812440771

namespace A081267

/-- `(2*n)²+∑[n+3]-gcd(2, 2*n)` -/
def P10362324955812440771.Spec : Prop :=
  ∀ n, P10362324955812440771.a n = A081267 n

end A081267

/-!
# A081268: Diagonal of triangular spiral in A051682.

The programs for A081268, the canonical program `A081268.P15898246318838673210` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081268 has offset 0).

The definition of A081268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081268.P15898246318838673210

`9*n+a(n-1)+2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081268

/-- `9*n+a(n-1)+2` -/
def P15898246318838673210.Spec : Prop :=
  ∀ n, (P15898246318838673210.a n : ℤ) = A081268 n

theorem P15898246318838673210.correct : P15898246318838673210.Spec := by
  intro n
  simp only [A081268]

end A081268

/-! ## A081268.P5955676173248383893

`(9*n²+13*n+2)/2`
-/

namespace A081268.P5955676173248383893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 13 * n + 2 : ℚ) / 2

end

end A081268.P5955676173248383893

namespace A081268

/-- `(9*n²+13*n+2)/2` -/
def P5955676173248383893.Spec : Prop :=
  ∀ n, P5955676173248383893.a n = (A081268 n : ℚ)

theorem P5955676173248383893.correct : P5955676173248383893.Spec := by
  intro n
  induction n with
  | zero => simp [A081268, A081268.P5955676173248383893.a, A081268.P15898246318838673210.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A081268, Nat.add_sub_cancel, A081268.P5955676173248383893.a, A081268.P15898246318838673210.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A081268

/-! ## A081268.P8857433559549949270

`A064226(n)-2`
-/

namespace A081268.P8857433559549949270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 n - 2

end

end A081268.P8857433559549949270

namespace A081268

/-- `A064226(n)-2` -/
def P8857433559549949270.Spec : Prop :=
  ∀ n, P8857433559549949270.a n = A081268 n

end A081268

/-! ## A081268.P13363503515199321990

`∑[a(n-1)+9]` with `a(0)=1, a(1)=11`
-/

namespace A081268.P13363503515199321990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081268.P13363503515199321990

namespace A081268

/-- `∑[a(n-1)+9]` -/
def P13363503515199321990.Spec : Prop :=
  ∀ n, (P13363503515199321990.a n : ℤ) = A081268 n

end A081268

/-! ## A081268.P7322662441575250649

`∑[ogf((1+9x-x^2)/(1-2x+x^2))]`
-/

namespace A081268.P7322662441575250649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081268.P7322662441575250649

namespace A081268

/-- `∑[ogf((1+9x-x^2)/(1-2x+x^2))]` -/
def P7322662441575250649.Spec : Prop :=
  ∀ n, P7322662441575250649.a n = A081268 n

end A081268

/-! ## A081268.P15391194889095078237

`ogf((1+9x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A081268.P15391194889095078237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -1] [1, -3, 3, -1] n

end

end A081268.P15391194889095078237

namespace A081268

/-- `ogf((1+9x-x^2)/(1-3x+3x^2-x^3))` -/
def P15391194889095078237.Spec : Prop :=
  ∀ n, P15391194889095078237.a n = A081268 n

end A081268

/-! ## A081268.P12586675440954589122

`C(3*(n+1), 2)-(n+2)`
-/

namespace A081268.P12586675440954589122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * (n + 1)) 2 : ℤ) - (n + 2 : ℤ)

end

end A081268.P12586675440954589122

namespace A081268

/-- `C(3*(n+1), 2)-(n+2)` -/
def P12586675440954589122.Spec : Prop :=
  ∀ n, P12586675440954589122.a n = A081268 n

end A081268

/-! ## A081268.P15306690604893095249

`A081271(n)-n`
-/

namespace A081268.P15306690604893095249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n - (n : ℤ)

end

end A081268.P15306690604893095249

namespace A081268

/-- `A081271(n)-n` -/
def P15306690604893095249.Spec : Prop :=
  ∀ n, P15306690604893095249.a n = A081268 n

end A081268

/-! ## A081268.P14851503685256016112

`∑[A017185(n)]-1`
-/

namespace A081268.P14851503685256016112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081268.P14851503685256016112

namespace A081268

/-- `∑[A017185(n)]-1` -/
def P14851503685256016112.Spec : Prop :=
  ∀ n, P14851503685256016112.a n = A081268 n

end A081268

/-! ## A081268.P3314260408453015347

`∑[A017173(n)]+n`
-/

namespace A081268.P3314260408453015347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A081268.P3314260408453015347

namespace A081268

/-- `∑[A017173(n)]+n` -/
def P3314260408453015347.Spec : Prop :=
  ∀ n, P3314260408453015347.a n = A081268 n

end A081268

/-! ## A081268.P4684348007592203487

`A082108(n)+∑[n]`
-/

namespace A081268.P4684348007592203487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082108 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081268.P4684348007592203487

namespace A081268

/-- `A082108(n)+∑[n]` -/
def P4684348007592203487.Spec : Prop :=
  ∀ n, P4684348007592203487.a n = A081268 n

end A081268

/-! ## A081268.P13773411930476663360

`A145910(n)-(n+1)`
-/

namespace A081268.P13773411930476663360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n - (n + 1 : ℤ)

end

end A081268.P13773411930476663360

namespace A081268

/-- `A145910(n)-(n+1)` -/
def P13773411930476663360.Spec : Prop :=
  ∀ n, P13773411930476663360.a n = A081268 n

end A081268

/-! ## A081268.P2732583128636338565

`A081267(n)+3*n`
-/

namespace A081268.P2732583128636338565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n + (3 * n : ℤ)

end

end A081268.P2732583128636338565

namespace A081268

/-- `A081267(n)+3*n` -/
def P2732583128636338565.Spec : Prop :=
  ∀ n, P2732583128636338565.a n = A081268 n

end A081268

/-! ## A081268.P16322410265734715569

`A064225(n)+4*n`
-/

namespace A081268.P16322410265734715569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n + (4 * n : ℤ)

end

end A081268.P16322410265734715569

namespace A081268

/-- `A064225(n)+4*n` -/
def P16322410265734715569.Spec : Prop :=
  ∀ n, P16322410265734715569.a n = A081268 n

end A081268

/-! ## A081268.P2626701883487564328

`A129863(n)-(n+5)`
-/

namespace A081268.P2626701883487564328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n - (n + 5 : ℤ)

end

end A081268.P2626701883487564328

namespace A081268

/-- `A129863(n)-(n+5)` -/
def P2626701883487564328.Spec : Prop :=
  ∀ n, P2626701883487564328.a n = A081268 n

end A081268

/-! ## A081268.P3103439076145966235

`A038764(n)+5*n`
-/

namespace A081268.P3103439076145966235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n + (5 * n : ℤ)

end

end A081268.P3103439076145966235

namespace A081268

/-- `A038764(n)+5*n` -/
def P3103439076145966235.Spec : Prop :=
  ∀ n, P3103439076145966235.a n = A081268 n

end A081268

/-! ## A081268.P5233017516338181654

`∑[A017401(n)]-n²`
-/

namespace A081268.P5233017516338181654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A081268.P5233017516338181654

namespace A081268

/-- `∑[A017401(n)]-n²` -/
def P5233017516338181654.Spec : Prop :=
  ∀ n, P5233017516338181654.a n = A081268 n

end A081268

/-! ## A081268.P13484521082935945925

`A027468(n)+Δ[n²]`
-/

namespace A081268.P13484521082935945925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A081268.P13484521082935945925

namespace A081268

/-- `A027468(n)+Δ[n²]` -/
def P13484521082935945925.Spec : Prop :=
  ∀ n, P13484521082935945925.a n = A081268 n

end A081268

/-! ## A081268.P15663561319986657827

`A062741(n+1)-(n+2)`
-/

namespace A081268.P15663561319986657827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (n + 1) - (n + 2 : ℤ)

end

end A081268.P15663561319986657827

namespace A081268

/-- `A062741(n+1)-(n+2)` -/
def P15663561319986657827.Spec : Prop :=
  ∀ n, P15663561319986657827.a n = A081268 n

end A081268

/-!
# A081270: Diagonal of triangular spiral in A051682.

The programs for A081270, the canonical program `A081270.P11307067427438074440` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081270 has offset 0).

The definition of A081270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081270.P3068138581944460142

`(9*n²+17*n+6)/2`
-/

namespace A081270.P3068138581944460142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 17 * n + 6 : ℚ) / 2

end

end A081270.P3068138581944460142

namespace A081270

/-- `(9*n²+17*n+6)/2` -/
def P3068138581944460142.Spec : Prop :=
  ∀ n, P3068138581944460142.a n = (A081270 n : ℚ)

theorem P3068138581944460142.correct : P3068138581944460142.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A081270, Nat.add_sub_cancel, A081270.P3068138581944460142.a, A081270.P11307067427438074440.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A081270, Nat.add_sub_cancel, A081270.P3068138581944460142.a, A081270.P11307067427438074440.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081270

/-! ## A081270.P11307067427438074440

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=16, a(2)=38`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081270

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P11307067427438074440.Spec : Prop :=
  ∀ n, P11307067427438074440.a n = A081270 n

theorem P11307067427438074440.correct : P11307067427438074440.Spec := by
  intro n
  simp only [A081270]

end A081270

/-! ## A081270.P15309888275648812688

`A064226(n)+2*n`
-/

namespace A081270.P15309888275648812688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 n + (2 * n : ℤ)

end

end A081270.P15309888275648812688

namespace A081270

/-- `A064226(n)+2*n` -/
def P15309888275648812688.Spec : Prop :=
  ∀ n, P15309888275648812688.a n = A081270 n

end A081270

/-! ## A081270.P4261763627398786832

`∑[a(n-1)+9]` with `a(0)=3, a(1)=13`
-/

namespace A081270.P4261763627398786832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 13] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081270.P4261763627398786832

namespace A081270

/-- `∑[a(n-1)+9]` -/
def P4261763627398786832.Spec : Prop :=
  ∀ n, (P4261763627398786832.a n : ℤ) = A081270 n

end A081270

/-! ## A081270.P16230106525969528358

`C(3*(n+1), 2)+n`
-/

namespace A081270.P16230106525969528358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * (n + 1)) 2 + n

end

end A081270.P16230106525969528358

namespace A081270

/-- `C(3*(n+1), 2)+n` -/
def P16230106525969528358.Spec : Prop :=
  ∀ n, (P16230106525969528358.a n : ℤ) = A081270 n

end A081270

/-! ## A081270.P10207416591605148505

`∑[ogf((3+7x-x^2)/(1-2x+x^2))]`
-/

namespace A081270.P10207416591605148505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, -1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081270.P10207416591605148505

namespace A081270

/-- `∑[ogf((3+7x-x^2)/(1-2x+x^2))]` -/
def P10207416591605148505.Spec : Prop :=
  ∀ n, P10207416591605148505.a n = A081270 n

end A081270

/-! ## A081270.P17264563968511191139

`ogf((3+7x-x^2)/(1-3x+3x^2-x^3))`
-/

namespace A081270.P17264563968511191139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, -1] [1, -3, 3, -1] n

end

end A081270.P17264563968511191139

namespace A081270

/-- `ogf((3+7x-x^2)/(1-3x+3x^2-x^3))` -/
def P17264563968511191139.Spec : Prop :=
  ∀ n, P17264563968511191139.a n = A081270 n

end A081270

/-! ## A081270.P639466325715721364

`9*n+a(n-1)+4` with `a(0)=3`
-/

namespace A081270.P639466325715721364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  9 * n + (a (n - 1) + 4)

end

end A081270.P639466325715721364

namespace A081270

/-- `9*n+a(n-1)+4` -/
def P639466325715721364.Spec : Prop :=
  ∀ n, (P639466325715721364.a n : ℤ) = A081270 n

end A081270

/-! ## A081270.P13938648838583830572

`n-3*∑[a(n-1)-3]` with `a(0)=-1`
-/

namespace A081270.P13938648838583830572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081270.P13938648838583830572

namespace A081270

/-- `n-3*∑[a(n-1)-3]` -/
def P13938648838583830572.Spec : Prop :=
  ∀ n, P13938648838583830572.a n = A081270 n

end A081270

/-! ## A081270.P13907253015256594051

`floor((a(n-1)+1)/(n/(n+1))²)` with `a(0)=3`
-/

namespace A081270.P13907253015256594051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) + 1 : ℚ) / ((n : ℚ) / (n + 1 : ℚ)) ^ 2⌋

end

end A081270.P13907253015256594051

namespace A081270

/-- `floor((a(n-1)+1)/(n/(n+1))²)` -/
def P13907253015256594051.Spec : Prop :=
  ∀ n, P13907253015256594051.a n = A081270 n

end A081270

/-! ## A081270.P4998038772736320510

`∑[A017209(n)]-1`
-/

namespace A081270.P4998038772736320510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A081270.P4998038772736320510

namespace A081270

/-- `∑[A017209(n)]-1` -/
def P4998038772736320510.Spec : Prop :=
  ∀ n, P4998038772736320510.a n = A081270 n

end A081270

/-! ## A081270.P2034794548422487609

`∑[A017197(n)]+n`
-/

namespace A081270.P2034794548422487609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A081270.P2034794548422487609

namespace A081270

/-- `∑[A017197(n)]+n` -/
def P2034794548422487609.Spec : Prop :=
  ∀ n, P2034794548422487609.a n = A081270 n

end A081270

/-! ## A081270.P11391067398381741601

`∑[A281813(n)+n]`
-/

namespace A081270.P11391067398381741601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081270.P11391067398381741601

namespace A081270

/-- `∑[A281813(n)+n]` -/
def P11391067398381741601.Spec : Prop :=
  ∀ n, P11391067398381741601.a n = A081270 n

end A081270

/-! ## A081270.P13568165067237286136

`A062741(n+1)+n`
-/

namespace A081270.P13568165067237286136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (n + 1) + (n : ℤ)

end

end A081270.P13568165067237286136

namespace A081270

/-- `A062741(n+1)+n` -/
def P13568165067237286136.Spec : Prop :=
  ∀ n, P13568165067237286136.a n = A081270 n

end A081270

/-! ## A081270.P1918925598411960149

`A145910(n)+1+n`
-/

namespace A081270.P1918925598411960149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n + 1 + (n : ℤ)

end

end A081270.P1918925598411960149

namespace A081270

/-- `A145910(n)+1+n` -/
def P1918925598411960149.Spec : Prop :=
  ∀ n, P1918925598411960149.a n = A081270 n

end A081270

/-! ## A081270.P11007870089042830932

`A081271(n)+2+n`
-/

namespace A081270.P11007870089042830932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n + 2 + (n : ℤ)

end

end A081270.P11007870089042830932

namespace A081270

/-- `A081271(n)+2+n` -/
def P11007870089042830932.Spec : Prop :=
  ∀ n, P11007870089042830932.a n = A081270 n

end A081270

/-! ## A081270.P8349969944121242011

`A129863(n)-3+n`
-/

namespace A081270.P8349969944121242011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n - 3 + (n : ℤ)

end

end A081270.P8349969944121242011

namespace A081270

/-- `A129863(n)-3+n` -/
def P8349969944121242011.Spec : Prop :=
  ∀ n, P8349969944121242011.a n = A081270 n

end A081270

/-! ## A081270.P1170689942388729629

`A164013(n)+4*n`
-/

namespace A081270.P1170689942388729629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164013 n + (4 * n : ℤ)

end

end A081270.P1170689942388729629

namespace A081270

/-- `A164013(n)+4*n` -/
def P1170689942388729629.Spec : Prop :=
  ∀ n, P1170689942388729629.a n = A081270 n

end A081270

/-! ## A081270.P13080364035712046632

`∑[A017425(n)]-n²`
-/

namespace A081270.P13080364035712046632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A081270.P13080364035712046632

namespace A081270

/-- `∑[A017425(n)]-n²` -/
def P13080364035712046632.Spec : Prop :=
  ∀ n, P13080364035712046632.a n = A081270 n

end A081270

/-! ## A081270.P1012099881660226781

`A283394(n)-Δ[n²]`
-/

namespace A081270.P1012099881660226781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283394 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A081270.P1012099881660226781

namespace A081270

/-- `A283394(n)-Δ[n²]` -/
def P1012099881660226781.Spec : Prop :=
  ∀ n, P1012099881660226781.a n = A081270 n

end A081270

/-!
# A081271: Vertical of triangular spiral in A051682.

The programs for A081271, the canonical program `A081271.P852894250701931772` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081271 has offset 0).

The definition of A081271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081271.P852894250701931772

`a(n-1)+9*n+3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081271

/-- `a(n-1)+9*n+3` -/
def P852894250701931772.Spec : Prop :=
  ∀ n, (P852894250701931772.a n : ℤ) = A081271 n

theorem P852894250701931772.correct : P852894250701931772.Spec := by
  intro n
  simp only [A081271]

end A081271

/-! ## A081271.P10808021280558831596

`(9*n²+15*n+2)/2`
-/

namespace A081271.P10808021280558831596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 + 15 * n + 2 : ℚ) / 2

end

end A081271.P10808021280558831596

namespace A081271

/-- `(9*n²+15*n+2)/2` -/
def P10808021280558831596.Spec : Prop :=
  ∀ n, P10808021280558831596.a n = (A081271 n : ℚ)

theorem P10808021280558831596.correct : P10808021280558831596.Spec := by
  intro n
  induction n with
  | zero => simp [A081271, A081271.P10808021280558831596.a, A081271.P852894250701931772.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A081271, Nat.add_sub_cancel, A081271.P10808021280558831596.a, A081271.P852894250701931772.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A081271

/-! ## A081271.P655538459542146383

`C(3*(n+1), 2)-2`
-/

namespace A081271.P655538459542146383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * (n + 1)) 2 : ℤ) - 2

end

end A081271.P655538459542146383

namespace A081271

/-- `C(3*(n+1), 2)-2` -/
def P655538459542146383.Spec : Prop :=
  ∀ n, P655538459542146383.a n = A081271 n

end A081271

/-! ## A081271.P70310176934374096

`∑[a(n-1)+9]` with `a(0)=1, a(1)=12`
-/

namespace A081271.P70310176934374096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081271.P70310176934374096

namespace A081271

/-- `∑[a(n-1)+9]` -/
def P70310176934374096.Spec : Prop :=
  ∀ n, (P70310176934374096.a n : ℤ) = A081271 n

end A081271

/-! ## A081271.P9313992684341040025

`∑[ogf((1+10x-2x^2)/(1-2x+x^2))]`
-/

namespace A081271.P9313992684341040025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081271.P9313992684341040025

namespace A081271

/-- `∑[ogf((1+10x-2x^2)/(1-2x+x^2))]` -/
def P9313992684341040025.Spec : Prop :=
  ∀ n, P9313992684341040025.a n = A081271 n

end A081271

/-! ## A081271.P17960087818338681586

`ogf((1+10x-2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A081271.P17960087818338681586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -2] [1, -3, 3, -1] n

end

end A081271.P17960087818338681586

namespace A081271

/-- `ogf((1+10x-2x^2)/(1-3x+3x^2-x^3))` -/
def P17960087818338681586.Spec : Prop :=
  ∀ n, P17960087818338681586.a n = A081271 n

end A081271

/-! ## A081271.P13760748063129192490

`A145910(n)-1`
-/

namespace A081271.P13760748063129192490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n - 1

end

end A081271.P13760748063129192490

namespace A081271

/-- `A145910(n)-1` -/
def P13760748063129192490.Spec : Prop :=
  ∀ n, P13760748063129192490.a n = A081271 n

end A081271

/-! ## A081271.P12329482578550659360

`A129863(n)-5`
-/

namespace A081271.P12329482578550659360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129863 n - 5

end

end A081271.P12329482578550659360

namespace A081271

/-- `A129863(n)-5` -/
def P12329482578550659360.Spec : Prop :=
  ∀ n, P12329482578550659360.a n = A081271 n

end A081271

/-! ## A081271.P2528960763296874518

`A081268(n)+n`
-/

namespace A081271.P2528960763296874518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081268 n + (n : ℤ)

end

end A081271.P2528960763296874518

namespace A081271

/-- `A081268(n)+n` -/
def P2528960763296874518.Spec : Prop :=
  ∀ n, P2528960763296874518.a n = A081271 n

end A081271

/-! ## A081271.P8057802756874955092

`∑[A017197(n)]-2`
-/

namespace A081271.P8057802756874955092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A081271.P8057802756874955092

namespace A081271

/-- `∑[A017197(n)]-2` -/
def P8057802756874955092.Spec : Prop :=
  ∀ n, P8057802756874955092.a n = A081271 n

end A081271

/-! ## A081271.P16242806770281997233

`A131874(n)+n²`
-/

namespace A081271.P16242806770281997233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131874 n + (n ^ 2 : ℤ)

end

end A081271.P16242806770281997233

namespace A081271

/-- `A131874(n)+n²` -/
def P16242806770281997233.Spec : Prop :=
  ∀ n, P16242806770281997233.a n = A081271 n

end A081271

/-! ## A081271.P5313948944556302445

`A062741(n+1)-2`
-/

namespace A081271.P5313948944556302445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 (n + 1) - 2

end

end A081271.P5313948944556302445

namespace A081271

/-- `A062741(n+1)-2` -/
def P5313948944556302445.Spec : Prop :=
  ∀ n, P5313948944556302445.a n = A081271 n

end A081271

/-! ## A081271.P13091003853662179583

`A085001(n)/2-1`
-/

namespace A081271.P13091003853662179583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085001 n : ℚ) / 2 - 1

end

end A081271.P13091003853662179583

namespace A081271

/-- `A085001(n)/2-1` -/
def P13091003853662179583.Spec : Prop :=
  ∀ n, P13091003853662179583.a n = (A081271 n : ℚ)

end A081271

/-! ## A081271.P15561384803022319548

`A064226(n)-2+n`
-/

namespace A081271.P15561384803022319548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 n - 2 + (n : ℤ)

end

end A081271.P15561384803022319548

namespace A081271

/-- `A064226(n)-2+n` -/
def P15561384803022319548.Spec : Prop :=
  ∀ n, P15561384803022319548.a n = A081271 n

end A081271

/-! ## A081271.P8665151908429049516

`A081270(n)-(n+2)`
-/

namespace A081271.P8665151908429049516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081270 n - (n + 2 : ℤ)

end

end A081271.P8665151908429049516

namespace A081271

/-- `A081270(n)-(n+2)` -/
def P8665151908429049516.Spec : Prop :=
  ∀ n, P8665151908429049516.a n = A081271 n

end A081271

/-! ## A081271.P876184686050929647

`A081267(n)+4*n`
-/

namespace A081271.P876184686050929647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n + (4 * n : ℤ)

end

end A081271.P876184686050929647

namespace A081271

/-- `A081267(n)+4*n` -/
def P876184686050929647.Spec : Prop :=
  ∀ n, P876184686050929647.a n = A081271 n

end A081271

/-! ## A081271.P13801875326858514540

`A064225(n)+5*n`
-/

namespace A081271.P13801875326858514540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n + (5 * n : ℤ)

end

end A081271.P13801875326858514540

namespace A081271

/-- `A064225(n)+5*n` -/
def P13801875326858514540.Spec : Prop :=
  ∀ n, P13801875326858514540.a n = A081271 n

end A081271

/-! ## A081271.P15758084757740868242

`3*A115067(n+1)+1`
-/

namespace A081271.P15758084757740868242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115067 (n + 1) + 1

end

end A081271.P15758084757740868242

namespace A081271

/-- `3*A115067(n+1)+1` -/
def P15758084757740868242.Spec : Prop :=
  ∀ n, P15758084757740868242.a n = A081271 n

end A081271

/-! ## A081271.P8439026149715490827

`3*A000326(n+1)-2`
-/

namespace A081271.P8439026149715490827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000326 (n + 1) - 2

end

end A081271.P8439026149715490827

namespace A081271

/-- `3*A000326(n+1)-2` -/
def P8439026149715490827.Spec : Prop :=
  ∀ n, P8439026149715490827.a n = A081271 n

end A081271

/-! ## A081271.P15296071860389325301

`abs(2-A000217(3*n+2))`
-/

namespace A081271.P15296071860389325301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000217 (3 * n + 2)|

end

end A081271.P15296071860389325301

namespace A081271

/-- `abs(2-A000217(3*n+2))` -/
def P15296071860389325301.Spec : Prop :=
  ∀ n, P15296071860389325301.a n = A081271 n

end A081271

/-!
# A081272: Downward vertical of triangular spiral in A051682.

The programs for A081272, the canonical program `A081272.P2942107853835122224` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081272 has offset 0).

The definition of A081272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081272.P2942107853835122224

`18*n²+6*n+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081272

/-- `18*n²+6*n+1` -/
def P2942107853835122224.Spec : Prop :=
  ∀ n, (P2942107853835122224.a n : ℤ) = A081272 n

theorem P2942107853835122224.correct : P2942107853835122224.Spec := by
  intro n
  simp only [A081272]

end A081272

/-! ## A081272.P7871536773995763634

`∑[a(n-1)+36]` with `a(0)=1, a(1)=24`
-/

namespace A081272.P7871536773995763634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081272.P7871536773995763634

namespace A081272

/-- `∑[a(n-1)+36]` -/
def P7871536773995763634.Spec : Prop :=
  ∀ n, (P7871536773995763634.a n : ℤ) = A081272 n

end A081272

/-! ## A081272.P12058790883674314568

`A298037(2*n)`
-/

namespace A081272.P12058790883674314568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (2 * n)

end

end A081272.P12058790883674314568

namespace A081272

/-- `A298037(2*n)` -/
def P12058790883674314568.Spec : Prop :=
  ∀ n, P12058790883674314568.a n = A081272 n

end A081272

/-! ## A081272.P3206268552623278473

`or(1, A045946(n))`
-/

namespace A081272.P3206268552623278473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A045946 n)

end

end A081272.P3206268552623278473

namespace A081272

/-- `or(1, A045946(n))` -/
def P3206268552623278473.Spec : Prop :=
  ∀ n, P3206268552623278473.a n = A081272 n

end A081272

/-! ## A081272.P6247806914013496576

`ceil(A016922(n)/2)`
-/

namespace A081272.P6247806914013496576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016922 n : ℚ) / 2⌉

end

end A081272.P6247806914013496576

namespace A081272

/-- `ceil(A016922(n)/2)` -/
def P6247806914013496576.Spec : Prop :=
  ∀ n, P6247806914013496576.a n = A081272 n

end A081272

/-! ## A081272.P5743875216654763754

`xor(1, 6*A049451(n))`
-/

namespace A081272.P5743875216654763754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (6 * A049451 n)

end

end A081272.P5743875216654763754

namespace A081272

/-- `xor(1, 6*A049451(n))` -/
def P5743875216654763754.Spec : Prop :=
  ∀ n, P5743875216654763754.a n = A081272 n

end A081272

/-! ## A081272.P7403710447254124454

`ceil(A016921(n)²/2)`
-/

namespace A081272.P7403710447254124454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016921 n ^ 2 : ℚ) / 2⌉

end

end A081272.P7403710447254124454

namespace A081272

/-- `ceil(A016921(n)²/2)` -/
def P7403710447254124454.Spec : Prop :=
  ∀ n, P7403710447254124454.a n = A081272 n

end A081272

/-! ## A081272.P17721508944436518029

`(sqrt(A016924(n))+1)/2`
-/

namespace A081272.P17721508944436518029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A016924 n : ℝ) + 1) / 2

end

end A081272.P17721508944436518029

namespace A081272

/-- `(sqrt(A016924(n))+1)/2` -/
def P17721508944436518029.Spec : Prop :=
  ∀ n, P17721508944436518029.a n = (A081272 n : ℝ)

end A081272

/-! ## A081272.P11605894246501238385

`Δ[n*(A103115(n)+2)]`
-/

namespace A081272.P11605894246501238385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A103115 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081272.P11605894246501238385

namespace A081272

/-- `Δ[n*(A103115(n)+2)]` -/
def P11605894246501238385.Spec : Prop :=
  ∀ n, P11605894246501238385.a n = A081272 n

end A081272

/-! ## A081272.P575887449719779918

`ceil(Δ[A000567(n)]²/2)`
-/

namespace A081272.P575887449719779918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2⌉

end

end A081272.P575887449719779918

namespace A081272

/-- `ceil(Δ[A000567(n)]²/2)` -/
def P575887449719779918.Spec : Prop :=
  ∀ n, P575887449719779918.a n = A081272 n

end A081272

/-! ## A081272.P5585578936860325315

`Δ[n*(A033568(n)-n)]`
-/

namespace A081272.P5585578936860325315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033568 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081272.P5585578936860325315

namespace A081272

/-- `Δ[n*(A033568(n)-n)]` -/
def P5585578936860325315.Spec : Prop :=
  ∀ n, P5585578936860325315.a n = A081272 n

end A081272

/-! ## A081272.P1367848095253524686

`ceil(A016777(2*n)²/2)`
-/

namespace A081272.P1367848095253524686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016777 (2 * n) ^ 2 : ℚ) / 2⌉

end

end A081272.P1367848095253524686

namespace A081272

/-- `ceil(A016777(2*n)²/2)` -/
def P1367848095253524686.Spec : Prop :=
  ∀ n, P1367848095253524686.a n = A081272 n

end A081272

/-! ## A081272.P12310328654873314841

`A204467(2*n)`
-/

namespace A081272.P12310328654873314841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204467 (2 * n)

end

end A081272.P12310328654873314841

namespace A081272

/-- `A204467(2*n)` -/
def P12310328654873314841.Spec : Prop :=
  ∀ n, P12310328654873314841.a n = A081272 n

end A081272

/-! ## A081272.P1433561856239960721

`A348232(2*n)`
-/

namespace A081272.P1433561856239960721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348232 (2 * n)

end

end A081272.P1433561856239960721

namespace A081272

/-- `A348232(2*n)` -/
def P1433561856239960721.Spec : Prop :=
  ∀ n, P1433561856239960721.a n = A081272 n

end A081272

/-! ## A081272.P11720196427880979259

`ceil(A016778(2*n)/2)`
-/

namespace A081272.P11720196427880979259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016778 (2 * n) : ℚ) / 2⌉

end

end A081272.P11720196427880979259

namespace A081272

/-- `ceil(A016778(2*n)/2)` -/
def P11720196427880979259.Spec : Prop :=
  ∀ n, P11720196427880979259.a n = A081272 n

end A081272

/-! ## A081272.P18050678846464192351

`ceil(A165355(2*n)²/2)`
-/

namespace A081272.P18050678846464192351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165355 (2 * n) ^ 2 : ℚ) / 2⌉

end

end A081272.P18050678846464192351

namespace A081272

/-- `ceil(A165355(2*n)²/2)` -/
def P18050678846464192351.Spec : Prop :=
  ∀ n, P18050678846464192351.a n = A081272 n

end A081272

/-! ## A081272.P452041403060127066

`ceil(A276283(2*n)²/2)`
-/

namespace A081272.P452041403060127066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A276283 (2 * n) ^ 2 : ℚ) / 2⌉

end

end A081272.P452041403060127066

namespace A081272

/-- `ceil(A276283(2*n)²/2)` -/
def P452041403060127066.Spec : Prop :=
  ∀ n, P452041403060127066.a n = A081272 n

end A081272

/-! ## A081272.P7991885480822306135

`∩[A204467(n), A298037(n)]`
-/

namespace A081272.P7991885480822306135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081272.P7991885480822306135

namespace A081272

/-- `∩[A204467(n), A298037(n)]` -/
def P7991885480822306135.Spec : Prop :=
  ∀ n, (P7991885480822306135.a n : ℤ) = A081272 n

end A081272

/-! ## A081272.P18081518487782587427

`∩[A204467(n), A348232(n)]`
-/

namespace A081272.P18081518487782587427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204467 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348232 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081272.P18081518487782587427

namespace A081272

/-- `∩[A204467(n), A348232(n)]` -/
def P18081518487782587427.Spec : Prop :=
  ∀ n, (P18081518487782587427.a n : ℤ) = A081272 n

end A081272

/-! ## A081272.P8420042284994435876

`∩[A298037(n), A348232(n)]`
-/

namespace A081272.P8420042284994435876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348232 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081272.P8420042284994435876

namespace A081272

/-- `∩[A298037(n), A348232(n)]` -/
def P8420042284994435876.Spec : Prop :=
  ∀ n, (P8420042284994435876.a n : ℤ) = A081272 n

end A081272

/-!
# A081275: Shallow diagonal of triangular spiral in A051682.

The programs for A081275, the canonical program `A081275.P11714172675934927490` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081275 has offset 0).

The definition of A081275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081275.P11714172675934927490

`18*n²+12*n+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081275

/-- `18*n²+12*n+1` -/
def P11714172675934927490.Spec : Prop :=
  ∀ n, (P11714172675934927490.a n : ℤ) = A081275 n

theorem P11714172675934927490.correct : P11714172675934927490.Spec := by
  intro n
  simp only [A081275]

end A081275

/-! ## A081275.P15156376012129894669

`∑[a(n-1)+36]` with `a(0)=1, a(1)=30`
-/

namespace A081275.P15156376012129894669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081275.P15156376012129894669

namespace A081275

/-- `∑[a(n-1)+36]` -/
def P15156376012129894669.Spec : Prop :=
  ∀ n, (P15156376012129894669.a n : ℤ) = A081275 n

end A081275

/-! ## A081275.P8746981870665182968

`(A016934(n)-2)/2`
-/

namespace A081275.P8746981870665182968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016934 n - 2 : ℚ) / 2

end

end A081275.P8746981870665182968

namespace A081275

/-- `(A016934(n)-2)/2` -/
def P8746981870665182968.Spec : Prop :=
  ∀ n, P8746981870665182968.a n = (A081275 n : ℚ)

end A081275

/-! ## A081275.P2328042454624820081

`or(1, 6*A045944(n))`
-/

namespace A081275.P2328042454624820081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (6 * A045944 n)

end

end A081275.P2328042454624820081

namespace A081275

/-- `or(1, 6*A045944(n))` -/
def P2328042454624820081.Spec : Prop :=
  ∀ n, P2328042454624820081.a n = A081275 n

end A081275

/-! ## A081275.P11753539498067489219

`(A016933(n)²-2)/2`
-/

namespace A081275.P11753539498067489219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016933 n ^ 2 - 2 : ℚ) / 2

end

end A081275.P11753539498067489219

namespace A081275

/-- `(A016933(n)²-2)/2` -/
def P11753539498067489219.Spec : Prop :=
  ∀ n, P11753539498067489219.a n = (A081275 n : ℚ)

end A081275

/-! ## A081275.P17741400296081834233

`((A016921(n)+1)²-2)/2`
-/

namespace A081275.P17741400296081834233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016921 n + 1) ^ 2 - 2 : ℚ) / 2

end

end A081275.P17741400296081834233

namespace A081275

/-- `((A016921(n)+1)²-2)/2` -/
def P17741400296081834233.Spec : Prop :=
  ∀ n, P17741400296081834233.a n = (A081275 n : ℚ)

end A081275

/-! ## A081275.P14266516938801211824

`A016780(n)%A017234(n)`
-/

namespace A081275.P14266516938801211824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016780 n) (A017234 n)

end

end A081275.P14266516938801211824

namespace A081275

/-- `A016780(n)%A017234(n)` -/
def P14266516938801211824.Spec : Prop :=
  ∀ n, P14266516938801211824.a n = A081275 n

end A081275

/-! ## A081275.P9133259391067810134

`A305072(n+1)%A157910(n+1)`
-/

namespace A081275.P9133259391067810134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305072 (n + 1)) (A157910 (n + 1))

end

end A081275.P9133259391067810134

namespace A081275

/-- `A305072(n+1)%A157910(n+1)` -/
def P9133259391067810134.Spec : Prop :=
  ∀ n, P9133259391067810134.a n = A081275 n

end A081275

/-! ## A081275.P4076620888825079380

`Δ[(n-1)*A085473(n)]`
-/

namespace A081275.P4076620888825079380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A085473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081275.P4076620888825079380

namespace A081275

/-- `Δ[(n-1)*A085473(n)]` -/
def P4076620888825079380.Spec : Prop :=
  ∀ n, P4076620888825079380.a n = A081275 n

end A081275

/-! ## A081275.P13577911412841170818

`Δ[n*(A094159(n)-2)]`
-/

namespace A081275.P13577911412841170818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A094159 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081275.P13577911412841170818

namespace A081275

/-- `Δ[n*(A094159(n)-2)]` -/
def P13577911412841170818.Spec : Prop :=
  ∀ n, P13577911412841170818.a n = A081275 n

end A081275

/-! ## A081275.P2754873652210244691

`A298039(2*n)`
-/

namespace A081275.P2754873652210244691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (2 * n)

end

end A081275.P2754873652210244691

namespace A081275

/-- `A298039(2*n)` -/
def P2754873652210244691.Spec : Prop :=
  ∀ n, P2754873652210244691.a n = A081275 n

end A081275

/-! ## A081275.P15223587012880352255

`∑[A019557(2*n)]`
-/

namespace A081275.P15223587012880352255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019557 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081275.P15223587012880352255

namespace A081275

/-- `∑[A019557(2*n)]` -/
def P15223587012880352255.Spec : Prop :=
  ∀ n, P15223587012880352255.a n = A081275 n

end A081275

/-! ## A081275.P7272307380390039086

`record[n*A269416(n)+1]`
-/

namespace A081275.P7272307380390039086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A269416 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081275.P7272307380390039086

namespace A081275

/-- `record[n*A269416(n)+1]` -/
def P7272307380390039086.Spec : Prop :=
  ∀ n, P7272307380390039086.a n = A081275 n

end A081275

/-! ## A081275.P15207244226352271583

`(A152751(2*n+1)-1)/2`
-/

namespace A081275.P15207244226352271583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152751 (2 * n + 1) - 1 : ℚ) / 2

end

end A081275.P15207244226352271583

namespace A081275

/-- `(A152751(2*n+1)-1)/2` -/
def P15207244226352271583.Spec : Prop :=
  ∀ n, P15207244226352271583.a n = (A081275 n : ℚ)

end A081275

/-! ## A081275.P1775037721187652259

`∩[A298032(n), A298039(n)]`
-/

namespace A081275.P1775037721187652259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081275.P1775037721187652259

namespace A081275

/-- `∩[A298032(n), A298039(n)]` -/
def P1775037721187652259.Spec : Prop :=
  ∀ n, (P1775037721187652259.a n : ℤ) = A081275 n

end A081275

/-! ## A081275.P10335446193730832079

`A056220(3*n+1)`
-/

namespace A081275.P10335446193730832079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (3 * n + 1)

end

end A081275.P10335446193730832079

namespace A081275

/-- `A056220(3*n+1)` -/
def P10335446193730832079.Spec : Prop :=
  ∀ n, P10335446193730832079.a n = A081275 n

end A081275

/-! ## A081275.P4569932597074893751

`A060626(3*n)/2`
-/

namespace A081275.P4569932597074893751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060626 (3 * n) : ℚ) / 2

end

end A081275.P4569932597074893751

namespace A081275

/-- `A060626(3*n)/2` -/
def P4569932597074893751.Spec : Prop :=
  ∀ n, P4569932597074893751.a n = (A081275 n : ℚ)

end A081275

/-! ## A081275.P9062882617478514244

`Δ[(n-1)*A008822(3*n)]`
-/

namespace A081275.P9062882617478514244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A008822 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081275.P9062882617478514244

namespace A081275

/-- `Δ[(n-1)*A008822(3*n)]` -/
def P9062882617478514244.Spec : Prop :=
  ∀ n, P9062882617478514244.a n = A081275 n

end A081275

/-! ## A081275.P6431853911829097871

`∩[A056220(n), A298032(n)]`
-/

namespace A081275.P6431853911829097871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298032 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081275.P6431853911829097871

namespace A081275

/-- `∩[A056220(n), A298032(n)]` -/
def P6431853911829097871.Spec : Prop :=
  ∀ n, (P6431853911829097871.a n : ℤ) = A081275 n

end A081275

/-! ## A081275.P8563053904954749715

`∑[A261950(4*n)]`
-/

namespace A081275.P8563053904954749715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261950 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081275.P8563053904954749715

namespace A081275

/-- `∑[A261950(4*n)]` -/
def P8563053904954749715.Spec : Prop :=
  ∀ n, P8563053904954749715.a n = A081275 n

end A081275

/-!
# A081276: Floor(n^3/8).

The programs for A081276, the canonical program `A081276.P13758596102974014564` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081276 has offset 0).

The definition of A081276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^3/8)` (program `A081276.P13758596102974014564`, by `A081276.P13758596102974014564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081276.P13758596102974014564

`floor(n^3/8)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081276

/-- `floor(n^3/8)` -/
def P13758596102974014564.Spec : Prop :=
  ∀ n, P13758596102974014564.a n = A081276 n

theorem P13758596102974014564.correct : P13758596102974014564.Spec := by
  intro n
  simp only [A081276]

end A081276

/-! ## A081276.P5160835512431107265

`and(-8, n^3)/8`
-/

namespace A081276.P5160835512431107265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-8) (n ^ 3 : ℤ) : ℚ) / 8

end

end A081276.P5160835512431107265

namespace A081276

/-- `and(-8, n^3)/8` -/
def P5160835512431107265.Spec : Prop :=
  ∀ n, P5160835512431107265.a n = (A081276 n : ℚ)

end A081276

/-! ## A081276.P14864090359100586210

`ceil(sqrt((n/2)²^3))-n%2`
-/

namespace A081276.P14864090359100586210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((((n : ℚ) / 2) ^ 2) ^ 3 : ℝ)⌉ - ((n % 2 : ℕ) : ℤ)

end

end A081276.P14864090359100586210

namespace A081276

/-- `ceil(sqrt((n/2)²^3))-n%2` -/
def P14864090359100586210.Spec : Prop :=
  ∀ n, P14864090359100586210.a n = A081276 n

end A081276

/-! ## A081276.P13122666681007083142

`round(cosh(log(n/4*n²+1)))-1`
-/

namespace A081276.P13122666681007083142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log ((n : ℚ) / 4 * (n ^ 2 : ℚ) + 1 : ℝ))) - 1

end

end A081276.P13122666681007083142

namespace A081276

/-- `round(cosh(log(n/4*n²+1)))-1` -/
def P13122666681007083142.Spec : Prop :=
  ∀ n, P13122666681007083142.a n = A081276 n

end A081276

/-! ## A081276.P6907776790998835564

`∑[floor((n/2)²)]+floor(C(n, 3)/4)`
-/

namespace A081276.P6907776790998835564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(Nat.choose n 3 : ℚ) / 4⌋

end

end A081276.P6907776790998835564

namespace A081276

/-- `∑[floor((n/2)²)]+floor(C(n, 3)/4)` -/
def P6907776790998835564.Spec : Prop :=
  ∀ n, P6907776790998835564.a n = A081276 n

end A081276

/-! ## A081276.P16690767066403094394

`ceil((A000578(n)+1)/8)-1`
-/

namespace A081276.P16690767066403094394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000578 n + 1 : ℚ) / 8⌉ - 1

end

end A081276.P16690767066403094394

namespace A081276

/-- `ceil((A000578(n)+1)/8)-1` -/
def P16690767066403094394.Spec : Prop :=
  ∀ n, P16690767066403094394.a n = A081276 n

end A081276

/-! ## A081276.P6154770478689802455

`A173196(n)+A011842(n)`
-/

namespace A081276.P6154770478689802455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + A011842 n

end

end A081276.P6154770478689802455

namespace A081276

/-- `A173196(n)+A011842(n)` -/
def P6154770478689802455.Spec : Prop :=
  ∀ n, P6154770478689802455.a n = A081276 n

end A081276

/-! ## A081276.P18154249229492920812

`A011842(n)+∑[A002620(n)]`
-/

namespace A081276.P18154249229492920812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011842 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081276.P18154249229492920812

namespace A081276

/-- `A011842(n)+∑[A002620(n)]` -/
def P18154249229492920812.Spec : Prop :=
  ∀ n, P18154249229492920812.a n = A081276 n

end A081276

/-! ## A081276.P13193979380433040879

`A011842(n)+∑[∑[A004526(n)]]`
-/

namespace A081276.P13193979380433040879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011842 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081276.P13193979380433040879

namespace A081276

/-- `A011842(n)+∑[∑[A004526(n)]]` -/
def P13193979380433040879.Spec : Prop :=
  ∀ n, P13193979380433040879.a n = A081276 n

end A081276

/-! ## A081276.P17579263626043106452

`A004526(n)+∑[A057353(∑[n]-n)]`
-/

namespace A081276.P17579263626043106452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081276.P17579263626043106452

namespace A081276

/-- `A004526(n)+∑[A057353(∑[n]-n)]` -/
def P17579263626043106452.Spec : Prop :=
  ∀ n, P17579263626043106452.a n = A081276 n

end A081276

/-! ## A081276.P2581131592913508748

`A004526(n)+∑[A057360(n²-n)]`
-/

namespace A081276.P2581131592913508748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081276.P2581131592913508748

namespace A081276

/-- `A004526(n)+∑[A057360(n²-n)]` -/
def P2581131592913508748.Spec : Prop :=
  ∀ n, P2581131592913508748.a n = A081276 n

end A081276

/-!
# A081277: Square array of unsigned coefficients of Chebyshev polynomials of the first kind.

The programs for A081277, the canonical program `A081277.P2168798880117759400` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081277 has offset 0).

The definition of A081277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081277.P16756838741616507037

`abs(A079628(n))`
-/

namespace A081277.P16756838741616507037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079628 n|

end

end A081277.P16756838741616507037

namespace A081277

/-- `abs(A079628(n))` -/
def P16756838741616507037.Spec : Prop :=
  ∀ n, P16756838741616507037.a n = A081277 n

end A081277

/-! ## A081277.P17286679318648101779

`lcm(2, A185045(n+1))/2`
-/

namespace A081277.P17286679318648101779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A185045 (n + 1)) : ℚ) / 2

end

end A081277.P17286679318648101779

namespace A081277

/-- `lcm(2, A185045(n+1))/2` -/
def P17286679318648101779.Spec : Prop :=
  ∀ n, P17286679318648101779.a n = (A081277 n : ℚ)

end A081277

/-! ## A081277.P17132894593423960081

`A193734(n)/A059268(n)`
-/

namespace A081277.P17132894593423960081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193734 n : ℚ) / (A059268 n : ℚ)

end

end A081277.P17132894593423960081

namespace A081277

/-- `A193734(n)/A059268(n)` -/
def P17132894593423960081.Spec : Prop :=
  ∀ n, P17132894593423960081.a n = (A081277 n : ℚ)

end A081277

/-! ## A081277.P2773113244396494511

`gcd(A000038(n), A079628(n))`
-/

namespace A081277.P2773113244396494511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A079628 n)

end

end A081277.P2773113244396494511

namespace A081277

/-- `gcd(A000038(n), A079628(n))` -/
def P2773113244396494511.Spec : Prop :=
  ∀ n, (P2773113244396494511.a n : ℤ) = A081277 n

end A081277

/-! ## A081277.P13431010100011215827

`lcm(A020985(n), A079628(n))`
-/

namespace A081277.P13431010100011215827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A079628 n)

end

end A081277.P13431010100011215827

namespace A081277

/-- `lcm(A020985(n), A079628(n))` -/
def P13431010100011215827.Spec : Prop :=
  ∀ n, (P13431010100011215827.a n : ℤ) = A081277 n

end A081277

/-! ## A081277.P2168798880117759400

`A208510(n+1)*A232089(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A081277

/-- `A208510(n+1)*A232089(n)` -/
def P2168798880117759400.Spec : Prop :=
  ∀ n, P2168798880117759400.a n = A081277 n

theorem P2168798880117759400.correct : P2168798880117759400.Spec := by
  intro n
  simp only [A081277]

end A081277

/-! ## A081277.P873000161952398454

`A185045(n+1)/A238303(n)`
-/

namespace A081277.P873000161952398454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185045 (n + 1) : ℚ) / (A238303 n : ℚ)

end

end A081277.P873000161952398454

namespace A081277

/-- `A185045(n+1)/A238303(n)` -/
def P873000161952398454.Spec : Prop :=
  ∀ n, P873000161952398454.a n = (A081277 n : ℚ)

end A081277

/-! ## A081277.P587291161253240672

`A200139(A061579(n))`
-/

namespace A081277.P587291161253240672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200139 (A061579 n).toNat

end

end A081277.P587291161253240672

namespace A081277

/-- `A200139(A061579(n))` -/
def P587291161253240672.Spec : Prop :=
  ∀ n, P587291161253240672.a n = A081277 n

end A081277

/-! ## A081277.P11811369919757172735

`A097807(n)*A118800(A061579(n))`
-/

namespace A081277.P11811369919757172735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A118800 (A061579 n).toNat

end

end A081277.P11811369919757172735

namespace A081277

/-- `A097807(n)*A118800(A061579(n))` -/
def P11811369919757172735.Spec : Prop :=
  ∀ n, P11811369919757172735.a n = A081277 n

end A081277

/-! ## A081277.P3905223186862712815

`sqrt(A079628(n)²%A020706(n))`
-/

namespace A081277.P3905223186862712815
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A079628 n ^ 2) (A020706 n) : ℝ)

end

end A081277.P3905223186862712815

namespace A081277

/-- `sqrt(A079628(n)²%A020706(n))` -/
def P3905223186862712815.Spec : Prop :=
  ∀ n, P3905223186862712815.a n = (A081277 n : ℝ)

end A081277

/-!
# A081278: Binomial transform of Chebyshev polynomial coefficients A001793.

The programs for A081278, the canonical program `A081278.P5433367363675961488` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081278 has offset 0).

The definition of A081278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081278.P16170354576789203341

`(n²+8*n+9)*3^(n-2)`
-/

namespace A081278.P16170354576789203341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 8 * n + 9 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A081278.P16170354576789203341

namespace A081278

/-- `(n²+8*n+9)*3^(n-2)` -/
def P16170354576789203341.Spec : Prop :=
  ∀ n, P16170354576789203341.a n = (A081278 n : ℚ)

end A081278

/-! ## A081278.P5433367363675961488

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=6, a(2)=29`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081278

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P5433367363675961488.Spec : Prop :=
  ∀ n, P5433367363675961488.a n = A081278 n

theorem P5433367363675961488.correct : P5433367363675961488.Spec := by
  intro n
  simp only [A081278]

end A081278

/-! ## A081278.P16157571150219518292

`Δ[n/2*A038765(n)]`
-/

namespace A081278.P16157571150219518292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A038765 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081278.P16157571150219518292

namespace A081278

/-- `Δ[n/2*A038765(n)]` -/
def P16157571150219518292.Spec : Prop :=
  ∀ n, P16157571150219518292.a n = (A081278 n : ℚ)

end A081278

/-! ## A081278.P17092231496155645236

`Δ[3^(n-2)*A055998(n)]`
-/

namespace A081278.P17092231496155645236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A055998 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081278.P17092231496155645236

namespace A081278

/-- `Δ[3^(n-2)*A055998(n)]` -/
def P17092231496155645236.Spec : Prop :=
  ∀ n, P17092231496155645236.a n = (A081278 n : ℚ)

end A081278

/-! ## A081278.P5339615873131294515

`A199923(n)+3^(n-1)+a(n-1)/cot(atan(3))` with `a(0)=1`
-/

namespace A081278.P5339615873131294515
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A199923 n : ℝ) + (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + a (n - 1) / Real.cot (Real.arctan (3 : ℝ)))

end

end A081278.P5339615873131294515

namespace A081278

/-- `A199923(n)+3^(n-1)+a(n-1)/cot(atan(3))` -/
def P5339615873131294515.Spec : Prop :=
  ∀ n, P5339615873131294515.a n = (A081278 n : ℝ)

end A081278

/-! ## A081278.P1480261767546667543

`A383136(n)+A081038(n)`
-/

namespace A081278.P1480261767546667543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 n + A081038 n

end

end A081278.P1480261767546667543

namespace A081278

/-- `A383136(n)+A081038(n)` -/
def P1480261767546667543.Spec : Prop :=
  ∀ n, P1480261767546667543.a n = A081278 n

end A081278

/-! ## A081278.P8991558390163359122

`A000244(n)+n*A126184(n)`
-/

namespace A081278.P8991558390163359122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (n : ℤ) * A126184 n

end

end A081278.P8991558390163359122

namespace A081278

/-- `A000244(n)+n*A126184(n)` -/
def P8991558390163359122.Spec : Prop :=
  ∀ n, P8991558390163359122.a n = A081278 n

end A081278

/-! ## A081278.P11592031424087137320

`Δ[A081892(n)-A006234(n+3)]`
-/

namespace A081278.P11592031424087137320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081892 n - A006234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081278.P11592031424087137320

namespace A081278

/-- `Δ[A081892(n)-A006234(n+3)]` -/
def P11592031424087137320.Spec : Prop :=
  ∀ n, P11592031424087137320.a n = A081278 n

end A081278

/-! ## A081278.P1797619793976696809

`A006234(n+3)+n*A038765(n)`
-/

namespace A081278.P1797619793976696809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) + (n : ℤ) * A038765 n

end

end A081278.P1797619793976696809

namespace A081278

/-- `A006234(n+3)+n*A038765(n)` -/
def P1797619793976696809.Spec : Prop :=
  ∀ n, P1797619793976696809.a n = A081278 n

end A081278

/-! ## A081278.P9818903602310724941

`A027471(n+2)+A383136(n)-A027471(n+1)`
-/

namespace A081278.P9818903602310724941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 2) + (A383136 n - A027471 (n + 1))

end

end A081278.P9818903602310724941

namespace A081278

/-- `A027471(n+2)+A383136(n)-A027471(n+1)` -/
def P9818903602310724941.Spec : Prop :=
  ∀ n, P9818903602310724941.a n = A081278 n

end A081278

/-! ## A081278.P147812623151496797

`A383136(n+1)-2*A383136(n)`
-/

namespace A081278.P147812623151496797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 (n + 1) - 2 * A383136 n

end

end A081278.P147812623151496797

namespace A081278

/-- `A383136(n+1)-2*A383136(n)` -/
def P147812623151496797.Spec : Prop :=
  ∀ n, P147812623151496797.a n = A081278 n

end A081278

/-! ## A081278.P10381968171534672743

`A383137(n+1)/(n+1)`
-/

namespace A081278.P10381968171534672743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383137 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A081278.P10381968171534672743

namespace A081278

/-- `A383137(n+1)/(n+1)` -/
def P10381968171534672743.Spec : Prop :=
  ∀ n, P10381968171534672743.a n = (A081278 n : ℚ)

end A081278

/-! ## A081278.P11252894816166710200

`A081281(∑[n+3])`
-/

namespace A081278.P11252894816166710200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081278.P11252894816166710200

namespace A081278

/-- `A081281(∑[n+3])` -/
def P11252894816166710200.Spec : Prop :=
  ∀ n, P11252894816166710200.a n = A081278 n

end A081278

/-!
# A081279: Binomial transform of Chebyshev coefficients A001794.

The programs for A081279, the canonical program `A081279.P11554498562707795381` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081279 has offset 0).

The definition of A081279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081279.P14633991915900453207

`(2*n^3+30*n²+103*n+81)*3^(n-4)`
-/

namespace A081279.P14633991915900453207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + 30 * n ^ 2 + 103 * n + 81 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 4 : ℤ)

end

end A081279.P14633991915900453207

namespace A081279

/-- `(2*n^3+30*n²+103*n+81)*3^(n-4)` -/
def P14633991915900453207.Spec : Prop :=
  ∀ n, P14633991915900453207.a n = (A081279 n : ℚ)

end A081279

/-! ## A081279.P11554498562707795381

`12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` with `a(0)=1, a(1)=8, a(2)=47, a(3)=238`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081279

/-- `12*a(n-1)-54*a(n-2)+108*a(n-3)-81*a(n-4)` -/
def P11554498562707795381.Spec : Prop :=
  ∀ n, P11554498562707795381.a n = A081279 n

theorem P11554498562707795381.correct : P11554498562707795381.Spec := by
  intro n
  simp only [A081279]

end A081279

/-! ## A081279.P6845310256606751558

`A081281(∑[n+3]+n+3)`
-/

namespace A081279.P6845310256606751558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081281 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A081279.P6845310256606751558

namespace A081279

/-- `A081281(∑[n+3]+n+3)` -/
def P6845310256606751558.Spec : Prop :=
  ∀ n, P6845310256606751558.a n = A081279 n

end A081279

/-!
# A081280: Binomial transform of Chebyshev coefficients A006974.

The programs for A081280, the canonical program `A081280.P15734936704633181745` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081280 has offset 0).

The definition of A081280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081280.P15734936704633181745

`(n^4+24*n^3+164*n²+378*n+243)*3^(n-5)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081280

/-- `(n^4+24*n^3+164*n²+378*n+243)*3^(n-5)` -/
def P15734936704633181745.Spec : Prop :=
  ∀ n, P15734936704633181745.a n = (A081280 n : ℚ)

end A081280

/-! ## A081280.P16397291838216215414

`A081281(∑[n+5]+5)`
-/

namespace A081280.P16397291838216215414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081281 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A081280.P16397291838216215414

namespace A081280

/-- `A081281(∑[n+5]+5)` -/
def P16397291838216215414.Spec : Prop :=
  ∀ n, P16397291838216215414.a n = A081280 n

end A081280

/-!
# A081281: Square array of binomial transforms of Chebyshev polynomial coefficients.

The programs for A081281, there is no canonical definition to state claims against.
-/

/-! ## A081281.P2393934430785109297

`A371113(A208766(n+1))`
-/

namespace A081281.P2393934430785109297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371113 (A208766 (n + 1)).toNat

end

end A081281.P2393934430785109297

/-! ## A081281.P3052231754899938748

`A111660(2*A108198(n))`
-/

namespace A081281.P3052231754899938748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A108198 n).toNat

end

end A081281.P3052231754899938748

/-! ## A081281.P4397836525384532601

`A111660(A013610(n)+A007318(n))`
-/

namespace A081281.P4397836525384532601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A013610 n + A007318 n).toNat

end

end A081281.P4397836525384532601

/-! ## A081281.P16647469710041289739

`A111660(A088699(n)+A013610(n))`
-/

namespace A081281.P16647469710041289739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A088699 n + A013610 n).toNat

end

end A081281.P16647469710041289739

/-! ## A081281.P9602016763473220271

`A111660(A108198(n)+A108198(n))`
-/

namespace A081281.P9602016763473220271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A108198 n + A108198 n).toNat

end

end A081281.P9602016763473220271

/-!
# A081282: Generalized centered polygonal numbers.

The programs for A081282, the canonical program `A081282.P5075163246190717500` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081282 has offset 0).

The definition of A081282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081282.P5075163246190717500

`n*(n+1)*(n+2)*(n²+2*n+7)/60`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081282

/-- `n*(n+1)*(n+2)*(n²+2*n+7)/60` -/
def P5075163246190717500.Spec : Prop :=
  ∀ n, P5075163246190717500.a n = (A081282 n : ℚ)

end A081282

/-! ## A081282.P4048072547177622103

`∑[∑[(1-n)²+a(n-1)+n]]` with `a(0)=0`
-/

namespace A081282.P4048072547177622103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (1 - (n : ℤ)) ^ 2 + (f2 (n - 1) + (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081282.P4048072547177622103

namespace A081282

/-- `∑[∑[(1-n)²+a(n-1)+n]]` -/
def P4048072547177622103.Spec : Prop :=
  ∀ n, P4048072547177622103.a n = A081282 n

end A081282

/-! ## A081282.P8736024655746679827

`∑[∑[a(n-1)-(n-1-n²)]]` with `a(0)=0`
-/

namespace A081282.P8736024655746679827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - ((n : ℤ) - 1 - (n ^ 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081282.P8736024655746679827

namespace A081282

/-- `∑[∑[a(n-1)-(n-1-n²)]]` -/
def P8736024655746679827.Spec : Prop :=
  ∀ n, P8736024655746679827.a n = A081282 n

end A081282

/-! ## A081282.P17941370524635547973

`∑[A006007(n)]`
-/

namespace A081282.P17941370524635547973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081282.P17941370524635547973

namespace A081282

/-- `∑[A006007(n)]` -/
def P17941370524635547973.Spec : Prop :=
  ∀ n, P17941370524635547973.a n = A081282 n

end A081282

/-! ## A081282.P5146908078974784467

`∑[∑[A006527(n)]]`
-/

namespace A081282.P5146908078974784467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081282.P5146908078974784467

namespace A081282

/-- `∑[∑[A006527(n)]]` -/
def P5146908078974784467.Spec : Prop :=
  ∀ n, P5146908078974784467.a n = A081282 n

end A081282

/-! ## A081282.P15352130373640003256

`∑[A061316(n)/3]`
-/

namespace A081282.P15352130373640003256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061316 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081282.P15352130373640003256

namespace A081282

/-- `∑[A061316(n)/3]` -/
def P15352130373640003256.Spec : Prop :=
  ∀ n, P15352130373640003256.a n = (A081282 n : ℚ)

end A081282

/-! ## A081282.P5277022179926328435

`∑[A103290(n+1)/2]`
-/

namespace A081282.P5277022179926328435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103290 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081282.P5277022179926328435

namespace A081282

/-- `∑[A103290(n+1)/2]` -/
def P5277022179926328435.Spec : Prop :=
  ∀ n, P5277022179926328435.a n = (A081282 n : ℚ)

end A081282

/-! ## A081282.P14587409879985989518

`∑[∑[n*A010000(n)]]/3`
-/

namespace A081282.P14587409879985989518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A081282.P14587409879985989518

namespace A081282

/-- `∑[∑[n*A010000(n)]]/3` -/
def P14587409879985989518.Spec : Prop :=
  ∀ n, P14587409879985989518.a n = (A081282 n : ℚ)

end A081282

/-! ## A081282.P8388592775612234828

`∑[A134393(n+1)-(n+1)]`
-/

namespace A081282.P8388592775612234828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134393 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081282.P8388592775612234828

namespace A081282

/-- `∑[A134393(n+1)-(n+1)]` -/
def P8388592775612234828.Spec : Prop :=
  ∀ n, P8388592775612234828.a n = A081282 n

end A081282

/-! ## A081282.P3764536766800082647

`A277935(n+1)-∑[∑[n²]]`
-/

namespace A081282.P3764536766800082647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277935 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081282.P3764536766800082647

namespace A081282

/-- `A277935(n+1)-∑[∑[n²]]` -/
def P3764536766800082647.Spec : Prop :=
  ∀ n, P3764536766800082647.a n = A081282 n

end A081282

/-! ## A081282.P3995253818484667098

`A005585(n+1)-A002817(n+1)`
-/

namespace A081282.P3995253818484667098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) - A002817 (n + 1)

end

end A081282.P3995253818484667098

namespace A081282

/-- `A005585(n+1)-A002817(n+1)` -/
def P3995253818484667098.Spec : Prop :=
  ∀ n, P3995253818484667098.a n = A081282 n

end A081282

/-! ## A081282.P3159416393620421968

`∑[A014629(n+1)]-A014629(n+1)+n`
-/

namespace A081282.P3159416393620421968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014629 (n + 1) + (n : ℤ)

end

end A081282.P3159416393620421968

namespace A081282

/-- `∑[A014629(n+1)]-A014629(n+1)+n` -/
def P3159416393620421968.Spec : Prop :=
  ∀ n, P3159416393620421968.a n = A081282 n

end A081282

/-! ## A081282.P13004772846292129972

`∑[(A089071(n+1)+n)*A000217(n)]/3`
-/

namespace A081282.P13004772846292129972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089071 (n + 1) + (n : ℤ)) * A000217 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A081282.P13004772846292129972

namespace A081282

/-- `∑[(A089071(n+1)+n)*A000217(n)]/3` -/
def P13004772846292129972.Spec : Prop :=
  ∀ n, P13004772846292129972.a n = (A081282 n : ℚ)

end A081282

/-! ## A081282.P2273324737528620506

`A005585(n+1)-(A001296(n)+A000330(n+1))`
-/

namespace A081282.P2273324737528620506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) - (A001296 n + A000330 (n + 1))

end

end A081282.P2273324737528620506

namespace A081282

/-- `A005585(n+1)-(A001296(n)+A000330(n+1))` -/
def P2273324737528620506.Spec : Prop :=
  ∀ n, P2273324737528620506.a n = A081282 n

end A081282

/-! ## A081282.P2992122728907453542

`A002415(n+1)+A337895(n+2)-A132366(n+1)`
-/

namespace A081282.P2992122728907453542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A337895 (n + 2) - A132366 (n + 1))

end

end A081282.P2992122728907453542

namespace A081282

/-- `A002415(n+1)+A337895(n+2)-A132366(n+1)` -/
def P2992122728907453542.Spec : Prop :=
  ∀ n, P2992122728907453542.a n = A081282 n

end A081282

/-! ## A081282.P15083722906776257898

`A024166(n)-A210569(n+2)`
-/

namespace A081282.P15083722906776257898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 n - A210569 (n + 2)

end

end A081282.P15083722906776257898

namespace A081282

/-- `A024166(n)-A210569(n+2)` -/
def P15083722906776257898.Spec : Prop :=
  ∀ n, P15083722906776257898.a n = A081282 n

end A081282

/-! ## A081282.P18282637950249172804

`2*A000389(n+3)+A000292(n)`
-/

namespace A081282.P18282637950249172804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000389 (n + 3) + A000292 n

end

end A081282.P18282637950249172804

namespace A081282

/-- `2*A000389(n+3)+A000292(n)` -/
def P18282637950249172804.Spec : Prop :=
  ∀ n, P18282637950249172804.a n = A081282 n

end A081282

/-! ## A081282.P790801386447408068

`A059174(n+3)-A000125(n+3)`
-/

namespace A081282.P790801386447408068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 (n + 3) - A000125 (n + 3)

end

end A081282.P790801386447408068

namespace A081282

/-- `A059174(n+3)-A000125(n+3)` -/
def P790801386447408068.Spec : Prop :=
  ∀ n, P790801386447408068.a n = A081282 n

end A081282

/-! ## A081282.P12113058245131673546

`A000389(n+2)+A000389(n+4)`
-/

namespace A081282.P12113058245131673546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 2) + A000389 (n + 4)

end

end A081282.P12113058245131673546

namespace A081282

/-- `A000389(n+2)+A000389(n+4)` -/
def P12113058245131673546.Spec : Prop :=
  ∀ n, P12113058245131673546.a n = A081282 n

end A081282

/-! ## A081282.P17615135011777292835

`A081284(A004273(n))`
-/

namespace A081282.P17615135011777292835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081284 (A004273 n).toNat

end

end A081282.P17615135011777292835

namespace A081282

/-- `A081284(A004273(n))` -/
def P17615135011777292835.Spec : Prop :=
  ∀ n, P17615135011777292835.a n = A081282 n

end A081282

/-!
# A081283: An interleaved sequence of pyramidal and polygonal numbers.

The programs for A081283, the canonical program `A081283.P5094034475194814324` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081283 has offset 0).

The definition of A081283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081283.P5094034475194814324

`∑[C(A052938(n), 3)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081283

/-- `∑[C(A052938(n), 3)]` -/
def P5094034475194814324.Spec : Prop :=
  ∀ n, (P5094034475194814324.a n : ℤ) = A081283 n

theorem P5094034475194814324.correct : P5094034475194814324.Spec := by
  intro n
  simp only [A081283]

end A081283

/-! ## A081283.P13097721407370676930

`∑[C(A030451(n)+1, 3)]`
-/

namespace A081283.P13097721407370676930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030451 n + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P13097721407370676930

namespace A081283

/-- `∑[C(A030451(n)+1, 3)]` -/
def P13097721407370676930.Spec : Prop :=
  ∀ n, (P13097721407370676930.a n : ℤ) = A081283 n

end A081283

/-! ## A081283.P3475683002098705424

`∑[C(A168233(n+1)-n, 3)]`
-/

namespace A081283.P3475683002098705424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168233 (n + 1) - (n : ℤ)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P3475683002098705424

namespace A081283

/-- `∑[C(A168233(n+1)-n, 3)]` -/
def P3475683002098705424.Spec : Prop :=
  ∀ n, (P3475683002098705424.a n : ℤ) = A081283 n

end A081283

/-! ## A081283.P2750537412383440947

`∑[A007531(∑[1-a(n-1)])/6]` with `a(0)=1, a(1)=2`
-/

namespace A081283.P2750537412383440947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P2750537412383440947

namespace A081283

/-- `∑[A007531(∑[1-a(n-1)])/6]` -/
def P2750537412383440947.Spec : Prop :=
  ∀ n, P2750537412383440947.a n = (A081283 n : ℚ)

end A081283

/-! ## A081283.P5538293078996032210

`∑[A000292((3*A110654(n))%(n+1))]`
-/

namespace A081283.P5538293078996032210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod (3 * A110654 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P5538293078996032210

namespace A081283

/-- `∑[A000292((3*A110654(n))%(n+1))]` -/
def P5538293078996032210.Spec : Prop :=
  ∀ n, P5538293078996032210.a n = A081283 n

end A081283

/-! ## A081283.P655561915645049728

`∑[C(A028242(n+3), 3)]`
-/

namespace A081283.P655561915645049728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028242 (n + 3)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P655561915645049728

namespace A081283

/-- `∑[C(A028242(n+3), 3)]` -/
def P655561915645049728.Spec : Prop :=
  ∀ n, (P655561915645049728.a n : ℤ) = A081283 n

end A081283

/-! ## A081283.P4512925610669419032

`∑[C(A110657(2*n)+1, 3)]`
-/

namespace A081283.P4512925610669419032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A110657 (2 * n) + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P4512925610669419032

namespace A081283

/-- `∑[C(A110657(2*n)+1, 3)]` -/
def P4512925610669419032.Spec : Prop :=
  ∀ n, (P4512925610669419032.a n : ℤ) = A081283 n

end A081283

/-! ## A081283.P210175642458662738

`∑[∑[(n+1)²-A098046((n+1)²)]]`
-/

namespace A081283.P210175642458662738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A098046 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P210175642458662738

namespace A081283

/-- `∑[∑[(n+1)²-A098046((n+1)²)]]` -/
def P210175642458662738.Spec : Prop :=
  ∀ n, P210175642458662738.a n = A081283 n

end A081283

/-!
# A081284: An interleaved sequence of pyramidal and polygonal numbers.

The programs for A081284, the canonical program `A081284.P1423847120179373102` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081284 has offset 0).

The definition of A081284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081284.P1423847120179373102

`A081283(n)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081284

/-- `A081283(n)+a(n-2)` -/
def P1423847120179373102.Spec : Prop :=
  ∀ n, P1423847120179373102.a n = A081284 n

theorem P1423847120179373102.correct : P1423847120179373102.Spec := by
  intro n
  simp only [A081284]

end A081284

/-! ## A081284.P6040438696260048809

`∑[A000332(A052938(n)+1)]`
-/

namespace A081284.P6040438696260048809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A052938 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081284.P6040438696260048809

namespace A081284

/-- `∑[A000332(A052938(n)+1)]` -/
def P6040438696260048809.Spec : Prop :=
  ∀ n, P6040438696260048809.a n = A081284 n

end A081284

/-! ## A081284.P3747283622294347905

`∑[A000332(A060762(n+1))]`
-/

namespace A081284.P3747283622294347905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A060762 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081284.P3747283622294347905

namespace A081284

/-- `∑[A000332(A060762(n+1))]` -/
def P3747283622294347905.Spec : Prop :=
  ∀ n, P3747283622294347905.a n = A081284 n

end A081284

/-! ## A081284.P15264964343990866397

`∑[A000332(A030451(n)+2)]`
-/

namespace A081284.P15264964343990866397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (A030451 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081284.P15264964343990866397

namespace A081284

/-- `∑[A000332(A030451(n)+2)]` -/
def P15264964343990866397.Spec : Prop :=
  ∀ n, P15264964343990866397.a n = A081284 n

end A081284

/-!
# A081285: Table of coefficients of polynomials f_n(q) defined by 1/Product_{i>=1} (1-a q^i)^i = Sum_{n>=0} a^n q^n f_n(q) / ((q)_n)^2, where (x)_n is the q-Pochhammer symbol, defined to be Product_{i=0..n-1} (1-x q^i).

The programs for A081285, there is no canonical definition to state claims against.
-/

/-! ## A081285.P12448280923859184137

`A050326(A003056(∑[A003064(n)]))`
-/

namespace A081285.P12448280923859184137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A081285.P12448280923859184137

/-! ## A081285.P13817707790904978366

`A108921(A330472(n+1))`
-/

namespace A081285.P13817707790904978366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 (A330472 (n + 1)).toNat

end

end A081285.P13817707790904978366

/-! ## A081285.P17403075307035842300

`A064874(A152537(n)+2)`
-/

namespace A081285.P17403075307035842300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 (A152537 n + 2).toNat

end

end A081285.P17403075307035842300

/-! ## A081285.P13501432145854095129

`A065192(A156308(n+1))%3`
-/

namespace A081285.P13501432145854095129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065192 (A156308 (n + 1)).toNat) 3

end

end A081285.P13501432145854095129

/-! ## A081285.P13286404360836053093

`A030351(A126077(n+1)+37)`
-/

namespace A081285.P13286404360836053093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030351 (A126077 (n + 1) + 37).toNat

end

end A081285.P13286404360836053093

/-!
# A081287: Excess area when consecutive squares of sizes 1 to n are packed into the smallest possible rectangle.

The programs for A081287, there is no canonical definition to state claims against.
-/

/-! ## A081287.P13350537141991968189

`A038666(n+1)-A000330(n+1)`
-/

namespace A081287.P13350537141991968189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038666 (n + 1) - A000330 (n + 1)

end

end A081287.P13350537141991968189

/-! ## A081287.P9346984795224895774

`A318931(n+1)+1+n`
-/

namespace A081287.P9346984795224895774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318931 (n + 1) + 1 + (n : ℤ)

end

end A081287.P9346984795224895774

/-! ## A081287.P10484205540379806016

`A387051(n)+A318931(n+1)`
-/

namespace A081287.P10484205540379806016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387051 n + A318931 (n + 1)

end

end A081287.P10484205540379806016

/-! ## A081287.P877505704784486122

`abs(A038666(n+1)-A109678(n+1))`
-/

namespace A081287.P877505704784486122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038666 (n + 1) - A109678 (n + 1)|

end

end A081287.P877505704784486122

/-!
# A081288: a(n) is the minimal i such that A000108(i) > n.

The programs for A081288, the canonical program `A081288.P4176146987399022176` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081288 has offset 0).

The definition of A081288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081288.P4176146987399022176

`A072643(2*A081290(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081288

/-- `A072643(2*A081290(n))` -/
def P4176146987399022176.Spec : Prop :=
  ∀ n, P4176146987399022176.a n = A081288 n

theorem P4176146987399022176.correct : P4176146987399022176.Spec := by
  intro n
  simp only [A081288]

end A081288

/-! ## A081288.P16515893313692104337

`A244160(n)+A057427(n)`
-/

namespace A081288.P16515893313692104337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 n + A057427 n

end

end A081288.P16515893313692104337

namespace A081288

/-- `A244160(n)+A057427(n)` -/
def P16515893313692104337.Spec : Prop :=
  ∀ n, P16515893313692104337.a n = A081288 n

end A081288

/-! ## A081288.P656213602946301513

`A244160(n)-A057428(n)`
-/

namespace A081288.P656213602946301513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 n - A057428 n

end

end A081288.P656213602946301513

namespace A081288

/-- `A244160(n)-A057428(n)` -/
def P656213602946301513.Spec : Prop :=
  ∀ n, P656213602946301513.a n = A081288 n

end A081288

/-! ## A081288.P132099182991403435

`A244160(n)+A236859(A081290(n))`
-/

namespace A081288.P132099182991403435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 n + A236859 (A081290 n).toNat

end

end A081288.P132099182991403435

namespace A081288

/-- `A244160(n)+A236859(A081290(n))` -/
def P132099182991403435.Spec : Prop :=
  ∀ n, P132099182991403435.a n = A081288 n

end A081288

/-! ## A081288.P6182768704539978575

`A072643(A153242(n))`
-/

namespace A081288.P6182768704539978575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A153242 n).toNat

end

end A081288.P6182768704539978575

namespace A081288

/-- `A072643(A153242(n))` -/
def P6182768704539978575.Spec : Prop :=
  ∀ n, P6182768704539978575.a n = A081288 n

end A081288

/-! ## A081288.P543569543259554477

`A072643(A082852(n)+n)`
-/

namespace A081288.P543569543259554477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A082852 n + (n : ℤ)).toNat

end

end A081288.P543569543259554477

namespace A081288

/-- `A072643(A082852(n)+n)` -/
def P543569543259554477.Spec : Prop :=
  ∀ n, P543569543259554477.a n = A081288 n

end A081288

/-! ## A081288.P2356968088203800198

`A072643(2*n-A082853(n))`
-/

namespace A081288.P2356968088203800198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 ((2 * n : ℤ) - A082853 n).toNat

end

end A081288.P2356968088203800198

namespace A081288

/-- `A072643(2*n-A082853(n))` -/
def P2356968088203800198.Spec : Prop :=
  ∀ n, P2356968088203800198.a n = A081288 n

end A081288

/-! ## A081288.P12999613454034310370

`A072643(A081290(n)+n)`
-/

namespace A081288.P12999613454034310370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A081290 n + (n : ℤ)).toNat

end

end A081288.P12999613454034310370

namespace A081288

/-- `A072643(A081290(n)+n)` -/
def P12999613454034310370.Spec : Prop :=
  ∀ n, P12999613454034310370.a n = A081288 n

end A081288

/-! ## A081288.P10991101410753296127

`A072643(A082855(n)+n)`
-/

namespace A081288.P10991101410753296127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A082855 n + (n : ℤ)).toNat

end

end A081288.P10991101410753296127

namespace A081288

/-- `A072643(A082855(n)+n)` -/
def P10991101410753296127.Spec : Prop :=
  ∀ n, P10991101410753296127.a n = A081288 n

end A081288

/-! ## A081288.P7386261835817154737

`A072643(A081289(n))`
-/

namespace A081288.P7386261835817154737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A081289 n).toNat

end

end A081288.P7386261835817154737

namespace A081288

/-- `A072643(A081289(n))` -/
def P7386261835817154737.Spec : Prop :=
  ∀ n, P7386261835817154737.a n = A081288 n

end A081288

/-! ## A081288.P3130597696688776906

`A072643(A081291(n))`
-/

namespace A081288.P3130597696688776906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (A081291 n).toNat

end

end A081288.P3130597696688776906

namespace A081288

/-- `A072643(A081291(n))` -/
def P3130597696688776906.Spec : Prop :=
  ∀ n, P3130597696688776906.a n = A081288 n

end A081288

/-! ## A081288.P9485980828270135048

`A244160(A081289(n)+n)`
-/

namespace A081288.P9485980828270135048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (A081289 n + (n : ℤ)).toNat

end

end A081288.P9485980828270135048

namespace A081288

/-- `A244160(A081289(n)+n)` -/
def P9485980828270135048.Spec : Prop :=
  ∀ n, P9485980828270135048.a n = A081288 n

end A081288

/-! ## A081288.P10203085365901036640

`A244317(A081291(2*n-n))`
-/

namespace A081288.P10203085365901036640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244317 (A081291 (2 * n - n)).toNat

end

end A081288.P10203085365901036640

namespace A081288

/-- `A244317(A081291(2*n-n))` -/
def P10203085365901036640.Spec : Prop :=
  ∀ n, P10203085365901036640.a n = A081288 n

end A081288

/-! ## A081288.P15811108257510477243

`A244160(A244314(A081290(n)))`
-/

namespace A081288.P15811108257510477243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (A244314 (A081290 n).toNat).toNat

end

end A081288.P15811108257510477243

namespace A081288

/-- `A244160(A244314(A081290(n)))` -/
def P15811108257510477243.Spec : Prop :=
  ∀ n, P15811108257510477243.a n = A081288 n

end A081288

/-! ## A081288.P16637002262333289730

`A244316(A081290(4*A081290(n)))`
-/

namespace A081288.P16637002262333289730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 (A081290 (4 * A081290 n).toNat).toNat

end

end A081288.P16637002262333289730

namespace A081288

/-- `A244316(A081290(4*A081290(n)))` -/
def P16637002262333289730.Spec : Prop :=
  ∀ n, P16637002262333289730.a n = A081288 n

end A081288

/-! ## A081288.P10068610469354151821

`A244316(A081290(A081289(n)+n))`
-/

namespace A081288.P10068610469354151821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244316 (A081290 (A081289 n + (n : ℤ)).toNat).toNat

end

end A081288.P10068610469354151821

namespace A081288

/-- `A244316(A081290(A081289(n)+n))` -/
def P10068610469354151821.Spec : Prop :=
  ∀ n, P10068610469354151821.a n = A081288 n

end A081288

/-! ## A081288.P284045586584426503

`A244317(A244317(n)+A081291(n))`
-/

namespace A081288.P284045586584426503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244317 (A244317 n + A081291 n).toNat

end

end A081288.P284045586584426503

namespace A081288

/-- `A244317(A244317(n)+A081291(n))` -/
def P284045586584426503.Spec : Prop :=
  ∀ n, P284045586584426503.a n = A081288 n

end A081288

/-! ## A081288.P1203849566119869522

`A244160(A081291(n)+n)`
-/

namespace A081288.P1203849566119869522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (A081291 n + (n : ℤ)).toNat

end

end A081288.P1203849566119869522

namespace A081288

/-- `A244160(A081291(n)+n)` -/
def P1203849566119869522.Spec : Prop :=
  ∀ n, P1203849566119869522.a n = A081288 n

end A081288

/-!
# A081289: a(0) = 0, a(n) = A081293(A081288(n)-1).

The programs for A081289, the canonical program `A081289.P17307542022439683697` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081289 has offset 0).

The definition of A081289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081289.P17307542022439683697

`A081291(A081290(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081289

/-- `A081291(A081290(n))` -/
def P17307542022439683697.Spec : Prop :=
  ∀ n, P17307542022439683697.a n = A081289 n

theorem P17307542022439683697.correct : P17307542022439683697.Spec := by
  intro n
  simp only [A081289]

end A081289

/-! ## A081289.P12116051555808856484

`A072093(A081291(n)-n)`
-/

namespace A081289.P12116051555808856484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072093 (A081291 n - (n : ℤ)).toNat

end

end A081289.P12116051555808856484

namespace A081289

/-- `A072093(A081291(n)-n)` -/
def P12116051555808856484.Spec : Prop :=
  ∀ n, P12116051555808856484.a n = A081289 n

end A081289

/-! ## A081289.P1858085395079032674

`A074679(A081291(n)-n)`
-/

namespace A081289.P1858085395079032674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A081291 n - (n : ℤ)).toNat

end

end A081289.P1858085395079032674

namespace A081289

/-- `A074679(A081291(n)-n)` -/
def P1858085395079032674.Spec : Prop :=
  ∀ n, P1858085395079032674.a n = A081289 n

end A081289

/-! ## A081289.P6512691690356240280

`A074690(A081291(n)-n)`
-/

namespace A081289.P6512691690356240280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074690 (A081291 n - (n : ℤ)).toNat

end

end A081289.P6512691690356240280

namespace A081289

/-- `A074690(A081291(n)-n)` -/
def P6512691690356240280.Spec : Prop :=
  ∀ n, P6512691690356240280.a n = A081289 n

end A081289

/-! ## A081289.P7540725741359818025

`A082335(A081291(n)-n)`
-/

namespace A081289.P7540725741359818025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082335 (A081291 n - (n : ℤ)).toNat

end

end A081289.P7540725741359818025

namespace A081289

/-- `A082335(A081291(n)-n)` -/
def P7540725741359818025.Spec : Prop :=
  ∀ n, P7540725741359818025.a n = A081289 n

end A081289

/-! ## A081289.P13151115797785534870

`A082349(A081291(n)-n)`
-/

namespace A081289.P13151115797785534870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082349 (A081291 n - (n : ℤ)).toNat

end

end A081289.P13151115797785534870

namespace A081289

/-- `A082349(A081291(n)-n)` -/
def P13151115797785534870.Spec : Prop :=
  ∀ n, P13151115797785534870.a n = A081289 n

end A081289

/-! ## A081289.P9630913519415912989

`A089858(A081291(n)-n)`
-/

namespace A081289.P9630913519415912989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089858 (A081291 n - (n : ℤ)).toNat

end

end A081289.P9630913519415912989

namespace A081289

/-- `A089858(A081291(n)-n)` -/
def P9630913519415912989.Spec : Prop :=
  ∀ n, P9630913519415912989.a n = A081289 n

end A081289

/-! ## A081289.P17616903159748208121

`A123495(A081291(n)-n)`
-/

namespace A081289.P17616903159748208121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123495 (A081291 n - (n : ℤ)).toNat

end

end A081289.P17616903159748208121

namespace A081289

/-- `A123495(A081291(n)-n)` -/
def P17616903159748208121.Spec : Prop :=
  ∀ n, P17616903159748208121.a n = A081289 n

end A081289

/-! ## A081289.P15864726128723511656

`A123499(A081291(n)-n)`
-/

namespace A081289.P15864726128723511656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123499 (A081291 n - (n : ℤ)).toNat

end

end A081289.P15864726128723511656

namespace A081289

/-- `A123499(A081291(n)-n)` -/
def P15864726128723511656.Spec : Prop :=
  ∀ n, P15864726128723511656.a n = A081289 n

end A081289

/-!
# A081290: a(0) = 0, and for n >=1, a(n) = the largest Catalan number <= n.

The programs for A081290, the canonical program `A081290.P17861651078763600075` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081290 has offset 0).

The definition of A081290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081290.P17861651078763600075

`comp[A000108(comp[A000108(n)+n]-n)+n]-n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081290

/-- `comp[A000108(comp[A000108(n)+n]-n)+n]-n` -/
def P17861651078763600075.Spec : Prop :=
  ∀ n, P17861651078763600075.a n = A081290 n

theorem P17861651078763600075.correct : P17861651078763600075.Spec := by
  intro n
  simp only [A081290]

end A081290

/-! ## A081290.P16786942769572596409

`A081289(n)-A082852(A081289(n))`
-/

namespace A081290.P16786942769572596409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081289 n - A082852 (A081289 n).toNat

end

end A081290.P16786942769572596409

namespace A081290

/-- `A081289(n)-A082852(A081289(n))` -/
def P16786942769572596409.Spec : Prop :=
  ∀ n, P16786942769572596409.a n = A081290 n

end A081290

/-! ## A081290.P16741240158262517658

`comp[eq[1, A244215(n+1)]+1]-n`
-/

namespace A081290.P16741240158262517658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244215 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A081290.P16741240158262517658

namespace A081290

/-- `comp[eq[1, A244215(n+1)]+1]-n` -/
def P16741240158262517658.Spec : Prop :=
  ∀ n, P16741240158262517658.a n = A081290 n

end A081290

/-! ## A081290.P7318438541390035854

`A353086(A082855(n+1))`
-/

namespace A081290.P7318438541390035854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A082855 (n + 1)).toNat

end

end A081290.P7318438541390035854

namespace A081290

/-- `A353086(A082855(n+1))` -/
def P7318438541390035854.Spec : Prop :=
  ∀ n, P7318438541390035854.a n = A081290 n

end A081290

/-!
# A081291: Complement of A072795.

The programs for A081291, the canonical program `A081291.P11555757365020455851` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081291 has offset 0).

The definition of A081291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081291.P6292397259929913166

`A081289(n)+n-A081290(n)`
-/

namespace A081291.P6292397259929913166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081289 n + ((n : ℤ) - A081290 n)

end

end A081291.P6292397259929913166

namespace A081291

/-- `A081289(n)+n-A081290(n)` -/
def P6292397259929913166.Spec : Prop :=
  ∀ n, P6292397259929913166.a n = A081291 n

end A081291

/-! ## A081291.P10373077841446902034

`A080300(A081292(n+1))`
-/

namespace A081291.P10373077841446902034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A081292 (n + 1)).toNat

end

end A081291.P10373077841446902034

namespace A081291

/-- `A080300(A081292(n+1))` -/
def P10373077841446902034.Spec : Prop :=
  ∀ n, P10373077841446902034.a n = A081291 n

end A081291

/-! ## A081291.P11555757365020455851

`comp[A072795(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081291

/-- `comp[A072795(n)]` -/
def P11555757365020455851.Spec : Prop :=
  ∀ n, (P11555757365020455851.a n : ℤ) = A081291 n

theorem P11555757365020455851.correct : P11555757365020455851.Spec := by
  intro n
  simp only [A081291]

end A081291

/-! ## A081291.P3536189643809632840

`comp[A080067(n)]`
-/

namespace A081291.P3536189643809632840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080067 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081291.P3536189643809632840

namespace A081291

/-- `comp[A080067(n)]` -/
def P3536189643809632840.Spec : Prop :=
  ∀ n, (P3536189643809632840.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P13726231363032854505

`A074679(A153242(n))`
-/

namespace A081291.P13726231363032854505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A153242 n).toNat

end

end A081291.P13726231363032854505

namespace A081291

/-- `A074679(A153242(n))` -/
def P13726231363032854505.Spec : Prop :=
  ∀ n, P13726231363032854505.a n = A081291 n

end A081291

/-! ## A081291.P918251767171569615

`record[A074679(A057427(n)+n)]`
-/

namespace A081291.P918251767171569615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 (A057427 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081291.P918251767171569615

namespace A081291

/-- `record[A074679(A057427(n)+n)]` -/
def P918251767171569615.Spec : Prop :=
  ∀ n, P918251767171569615.a n = A081291 n

end A081291

/-! ## A081291.P14595192454576183724

`record[A074679(n-A057428(n))]`
-/

namespace A081291.P14595192454576183724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074679 ((n : ℤ) - A057428 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081291.P14595192454576183724

namespace A081291

/-- `record[A074679(n-A057428(n))]` -/
def P14595192454576183724.Spec : Prop :=
  ∀ n, P14595192454576183724.a n = A081291 n

end A081291

/-! ## A081291.P10143720620633167889

`eq[0, A083924(n)]`
-/

namespace A081291.P10143720620633167889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081291.P10143720620633167889

namespace A081291

/-- `eq[0, A083924(n)]` -/
def P10143720620633167889.Spec : Prop :=
  ∀ n, (P10143720620633167889.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P12868446077416222047

`lt[A057501(n), or(1, n)]`
-/

namespace A081291.P12868446077416222047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081291.P12868446077416222047

namespace A081291

/-- `lt[A057501(n), or(1, n)]` -/
def P12868446077416222047.Spec : Prop :=
  ∀ n, (P12868446077416222047.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P16565812178357072424

`lt[A057503(n), or(1, n)]`
-/

namespace A081291.P16565812178357072424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081291.P16565812178357072424

namespace A081291

/-- `lt[A057503(n), or(1, n)]` -/
def P16565812178357072424.Spec : Prop :=
  ∀ n, (P16565812178357072424.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P7225852309568472985

`lt[A074680(n), or(1, n)]`
-/

namespace A081291.P7225852309568472985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081291.P7225852309568472985

namespace A081291

/-- `lt[A074680(n), or(1, n)]` -/
def P7225852309568472985.Spec : Prop :=
  ∀ n, (P7225852309568472985.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P6526345240022620151

`A082852(A081289(n))+n`
-/

namespace A081291.P6526345240022620151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 (A081289 n).toNat + (n : ℤ)

end

end A081291.P6526345240022620151

namespace A081291

/-- `A082852(A081289(n))+n` -/
def P6526345240022620151.Spec : Prop :=
  ∀ n, P6526345240022620151.a n = A081291 n

end A081291

/-! ## A081291.P9516890668616783455

`eq[A063524(n), A083926(n)]`
-/

namespace A081291.P9516890668616783455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081291.P9516890668616783455

namespace A081291

/-- `eq[A063524(n), A083926(n)]` -/
def P9516890668616783455.Spec : Prop :=
  ∀ n, (P9516890668616783455.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P14809342400335926332

`eq[A083926(n), A181405(n+1)]`
-/

namespace A081291.P14809342400335926332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081291.P14809342400335926332

namespace A081291

/-- `eq[A083926(n), A181405(n+1)]` -/
def P14809342400335926332.Spec : Prop :=
  ∀ n, (P14809342400335926332.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P3593336932797300601

`eq[A083926(n), A186685(n+1)]`
-/

namespace A081291.P3593336932797300601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081291.P3593336932797300601

namespace A081291

/-- `eq[A083926(n), A186685(n+1)]` -/
def P3593336932797300601.Spec : Prop :=
  ∀ n, (P3593336932797300601.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P2490063927693097374

`lt[A130370(n), or(1, n)]`
-/

namespace A081291.P2490063927693097374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081291.P2490063927693097374

namespace A081291

/-- `lt[A130370(n), or(1, n)]` -/
def P2490063927693097374.Spec : Prop :=
  ∀ n, (P2490063927693097374.a n : ℤ) = A081291 n

end A081291

/-! ## A081291.P10918623642584406020

`lt[A130923(n), or(1, n)]`
-/

namespace A081291.P10918623642584406020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130923 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081291.P10918623642584406020

namespace A081291

/-- `lt[A130923(n), or(1, n)]` -/
def P10918623642584406020.Spec : Prop :=
  ∀ n, (P10918623642584406020.a n : ℤ) = A081291 n

end A081291

/-!
# A081292: Intersection of A014486 and A079946.

The programs for A081292, there is no canonical definition to state claims against.
-/

/-! ## A081292.P14724000887325967563

`A014486(A081291(n))`
-/

namespace A081292.P14724000887325967563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A081291 n).toNat

end

end A081292.P14724000887325967563

/-! ## A081292.P8752677438452354535

`A014486(lt[A057501(n), or(1, n)])`
-/

namespace A081292.P8752677438452354535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057501 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A081292.P8752677438452354535

/-! ## A081292.P18265758295796563251

`A014486(lt[A057503(n), or(1, n)])`
-/

namespace A081292.P18265758295796563251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A081292.P18265758295796563251

/-! ## A081292.P17679395273862894534

`A014486(lt[A074680(n), or(1, n)])`
-/

namespace A081292.P17679395273862894534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A081292.P17679395273862894534

/-! ## A081292.P11075844205372011883

`A014486(lt[A074680(n), xor(2, n+1)])`
-/

namespace A081292.P11075844205372011883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A081292.P11075844205372011883

/-! ## A081292.P10247185156707482146

`A014486(lt[A130370(n), or(1, n)])`
-/

namespace A081292.P10247185156707482146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130370 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A081292.P10247185156707482146

/-! ## A081292.P11234270394502969970

`∩[or(a(n-1)+1, n-1), A014486(n)]` with `a(0)=0`
-/

namespace A081292.P11234270394502969970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor (f1 (n - 1) + 1) ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081292.P11234270394502969970

/-! ## A081292.P17233943523867290516

`∩[A004760(n+1), A014486(n)]`
-/

namespace A081292.P17233943523867290516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081292.P17233943523867290516

/-!
# A081293: a(n) = A000108(n) + A014137(n).

The programs for A081293, the canonical program `A081293.P4681464809512952339` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081293 has offset 0).

The definition of A081293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081293.P4681464809512952339

`A000108(n)+A014137(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081293

/-- `A000108(n)+A014137(n)` -/
def P4681464809512952339.Spec : Prop :=
  ∀ n, P4681464809512952339.a n = A081293 n

theorem P4681464809512952339.correct : P4681464809512952339.Spec := by
  intro n
  simp only [A081293]

end A081293

/-! ## A081293.P4490682095352406724

`A000782(n)+a(n-1)` with `a(0)=2`
-/

namespace A081293.P4490682095352406724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000782 n + a (n - 1)

end

end A081293.P4490682095352406724

namespace A081293

/-- `A000782(n)+a(n-1)` -/
def P4490682095352406724.Spec : Prop :=
  ∀ n, P4490682095352406724.a n = A081293 n

end A081293

/-! ## A081293.P4401666691768193335

`A061557(n-1)+a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A081293.P4401666691768193335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A061557 (n - 1) + a (n - 1)

end

end A081293.P4401666691768193335

namespace A081293

/-- `A061557(n-1)+a(n-1)` -/
def P4401666691768193335.Spec : Prop :=
  ∀ n, P4401666691768193335.a n = A081293 n

end A081293

/-! ## A081293.P12350827354555156870

`A155587(n)+A131428(n)`
-/

namespace A081293.P12350827354555156870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n + A131428 n

end

end A081293.P12350827354555156870

namespace A081293

/-- `A155587(n)+A131428(n)` -/
def P12350827354555156870.Spec : Prop :=
  ∀ n, P12350827354555156870.a n = A081293 n

end A081293

/-! ## A081293.P14082326833580407596

`A014137(n)+abs(A168491(n))`
-/

namespace A081293.P14082326833580407596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + |A168491 n|

end

end A081293.P14082326833580407596

namespace A081293

/-- `A014137(n)+abs(A168491(n))` -/
def P14082326833580407596.Spec : Prop :=
  ∀ n, P14082326833580407596.a n = A081293 n

end A081293

/-! ## A081293.P14791691025973984841

`A014137(n)+Δ[A155587(n)]`
-/

namespace A081293.P14791691025973984841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + (f1 (n + 1) - f1 n)

end

end A081293.P14791691025973984841

namespace A081293

/-- `A014137(n)+Δ[A155587(n)]` -/
def P14791691025973984841.Spec : Prop :=
  ∀ n, P14791691025973984841.a n = A081293 n

end A081293

/-! ## A081293.P14023739699092299777

`A000108(n)+A014138(n)+1`
-/

namespace A081293.P14023739699092299777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A014138 n + 1)

end

end A081293.P14023739699092299777

namespace A081293

/-- `A000108(n)+A014138(n)+1` -/
def P14023739699092299777.Spec : Prop :=
  ∀ n, P14023739699092299777.a n = A081293 n

end A081293

/-! ## A081293.P11023674500029145143

`A120588(n+1)+A014137(n)`
-/

namespace A081293.P11023674500029145143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + A014137 n

end

end A081293.P11023674500029145143

namespace A081293

/-- `A120588(n+1)+A014137(n)` -/
def P11023674500029145143.Spec : Prop :=
  ∀ n, P11023674500029145143.a n = A081293 n

end A081293

/-! ## A081293.P16842939796795933359

`A014137(n)+A120304(n)+2`
-/

namespace A081293.P16842939796795933359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + (A120304 n + 2)

end

end A081293.P16842939796795933359

namespace A081293

/-- `A014137(n)+A120304(n)+2` -/
def P16842939796795933359.Spec : Prop :=
  ∀ n, P16842939796795933359.a n = A081293 n

end A081293

/-! ## A081293.P1056491033746959251

`A000108(n)+2-A106271(n)`
-/

namespace A081293.P1056491033746959251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (2 - A106271 n)

end

end A081293.P1056491033746959251

namespace A081293

/-- `A000108(n)+2-A106271(n)` -/
def P1056491033746959251.Spec : Prop :=
  ∀ n, P1056491033746959251.a n = A081293 n

end A081293

/-! ## A081293.P2492697511880841980

`A028304(2*n)+A014137(n)`
-/

namespace A081293.P2492697511880841980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) + A014137 n

end

end A081293.P2492697511880841980

namespace A081293

/-- `A028304(2*n)+A014137(n)` -/
def P2492697511880841980.Spec : Prop :=
  ∀ n, P2492697511880841980.a n = A081293 n

end A081293

/-! ## A081293.P7034209200492030194

`A110199(2*n)+A000108(n)`
-/

namespace A081293.P7034209200492030194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (2 * n) + A000108 n

end

end A081293.P7034209200492030194

namespace A081293

/-- `A110199(2*n)+A000108(n)` -/
def P7034209200492030194.Spec : Prop :=
  ∀ n, P7034209200492030194.a n = A081293 n

end A081293

/-! ## A081293.P15570397243894258546

`A126120(2*n)+A014137(n)`
-/

namespace A081293.P15570397243894258546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) + A014137 n

end

end A081293.P15570397243894258546

namespace A081293

/-- `A126120(2*n)+A014137(n)` -/
def P15570397243894258546.Spec : Prop :=
  ∀ n, P15570397243894258546.a n = A081293 n

end A081293

/-! ## A081293.P3320975758605470774

`A014137(n)+A246604(n)+n`
-/

namespace A081293.P3320975758605470774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n + (A246604 n + (n : ℤ))

end

end A081293.P3320975758605470774

namespace A081293

/-- `A014137(n)+A246604(n)+n` -/
def P3320975758605470774.Spec : Prop :=
  ∀ n, P3320975758605470774.a n = A081293 n

end A081293

/-! ## A081293.P2715957028009558118

`A131428(n)+∑[abs(A115140(n))]`
-/

namespace A081293.P2715957028009558118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081293.P2715957028009558118

namespace A081293

/-- `A131428(n)+∑[abs(A115140(n))]` -/
def P2715957028009558118.Spec : Prop :=
  ∀ n, P2715957028009558118.a n = A081293 n

end A081293

/-! ## A081293.P17710680729088543219

`record[A126120(n)+∑[A126120(n)]]`
-/

namespace A081293.P17710680729088543219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081293.P17710680729088543219

namespace A081293

/-- `record[A126120(n)+∑[A126120(n)]]` -/
def P17710680729088543219.Spec : Prop :=
  ∀ n, P17710680729088543219.a n = A081293 n

end A081293

/-! ## A081293.P5021220045272809453

`A120588(n+1)+∑[A000108(n)]`
-/

namespace A081293.P5021220045272809453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081293.P5021220045272809453

namespace A081293

/-- `A120588(n+1)+∑[A000108(n)]` -/
def P5021220045272809453.Spec : Prop :=
  ∀ n, P5021220045272809453.a n = A081293 n

end A081293

/-! ## A081293.P10359876763963645608

`A000108(n)+∑[A246604(n)+n]`
-/

namespace A081293.P10359876763963645608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081293.P10359876763963645608

namespace A081293

/-- `A000108(n)+∑[A246604(n)+n]` -/
def P10359876763963645608.Spec : Prop :=
  ∀ n, P10359876763963645608.a n = A081293 n

end A081293

/-! ## A081293.P13723258120765280418

`A089408(2*n+1)+A014137(n)`
-/

namespace A081293.P13723258120765280418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) + A014137 n

end

end A081293.P13723258120765280418

namespace A081293

/-- `A089408(2*n+1)+A014137(n)` -/
def P13723258120765280418.Spec : Prop :=
  ∀ n, P13723258120765280418.a n = A081293 n

end A081293

/-! ## A081293.P15308218370175571752

`A014137(n+1)-A000245(n)`
-/

namespace A081293.P15308218370175571752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1) - A000245 n

end

end A081293.P15308218370175571752

namespace A081293

/-- `A014137(n+1)-A000245(n)` -/
def P15308218370175571752.Spec : Prop :=
  ∀ n, P15308218370175571752.a n = A081293 n

end A081293

/-!
# A081294: Expansion of (1-2*x)/(1-4*x).

The programs for A081294, the canonical program `A081294.P14054507065107062197` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081294 has offset 0).

The definition of A081294 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-4x))` (program `A081294.P14054507065107062197`, by `A081294.P14054507065107062197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081294.P14054507065107062197

`ogf((1-2x)/(1-4x))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081294

/-- `ogf((1-2x)/(1-4x))` -/
def P14054507065107062197.Spec : Prop :=
  ∀ n, P14054507065107062197.a n = A081294 n

theorem P14054507065107062197.correct : P14054507065107062197.Spec := by
  intro n
  simp only [A081294]

end A081294

/-! ## A081294.P5223419883173528882

`4*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A081294.P5223419883173528882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1)

end

end A081294.P5223419883173528882

namespace A081294

/-- `4*a(n-1)` -/
def P5223419883173528882.Spec : Prop :=
  ∀ n, (P5223419883173528882.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P16547305317630558893

`ceil(2^(2*n-1))`
-/

namespace A081294.P16547305317630558893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉

end

end A081294.P16547305317630558893

namespace A081294

/-- `ceil(2^(2*n-1))` -/
def P16547305317630558893.Spec : Prop :=
  ∀ n, P16547305317630558893.a n = A081294 n

end A081294

/-! ## A081294.P17399885310411931743

`A011782(2*n)`
-/

namespace A081294.P17399885310411931743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n)

end

end A081294.P17399885310411931743

namespace A081294

/-- `A011782(2*n)` -/
def P17399885310411931743.Spec : Prop :=
  ∀ n, P17399885310411931743.a n = A081294 n

end A081294

/-! ## A081294.P4824964166128533810

`abs(record[-(-2)^n])`
-/

namespace A081294.P4824964166128533810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A081294.P4824964166128533810

namespace A081294

/-- `abs(record[-(-2)^n])` -/
def P4824964166128533810.Spec : Prop :=
  ∀ n, P4824964166128533810.a n = A081294 n

end A081294

/-! ## A081294.P3429987562101151582

`lcm(2, 4^n)/2`
-/

namespace A081294.P3429987562101151582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℚ) / 2

end

end A081294.P3429987562101151582

namespace A081294

/-- `lcm(2, 4^n)/2` -/
def P3429987562101151582.Spec : Prop :=
  ∀ n, P3429987562101151582.a n = (A081294 n : ℚ)

end A081294

/-! ## A081294.P9824177527235230797

`record[2^gcd(n, ∑[n])]`
-/

namespace A081294.P9824177527235230797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P9824177527235230797

namespace A081294

/-- `record[2^gcd(n, ∑[n])]` -/
def P9824177527235230797.Spec : Prop :=
  ∀ n, (P9824177527235230797.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P8175900758049946758

`2^lt[(-2)^n, 2]`
-/

namespace A081294.P8175900758049946758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A081294.P8175900758049946758

namespace A081294

/-- `2^lt[(-2)^n, 2]` -/
def P8175900758049946758.Spec : Prop :=
  ∀ n, (P8175900758049946758.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P124565545743411782

`2^comp[or(1, n)+1]`
-/

namespace A081294.P124565545743411782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081294.P124565545743411782

namespace A081294

/-- `2^comp[or(1, n)+1]` -/
def P124565545743411782.Spec : Prop :=
  ∀ n, (P124565545743411782.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P10693612037250725794

`record[(n%2+1)^n]`
-/

namespace A081294.P10693612037250725794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2 + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P10693612037250725794

namespace A081294

/-- `record[(n%2+1)^n]` -/
def P10693612037250725794.Spec : Prop :=
  ∀ n, (P10693612037250725794.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P9121349807421680043

`record[gcd(2, n+1)^n]`
-/

namespace A081294.P9121349807421680043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P9121349807421680043

namespace A081294

/-- `record[gcd(2, n+1)^n]` -/
def P9121349807421680043.Spec : Prop :=
  ∀ n, (P9121349807421680043.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P15429168715274983399

`record[(and(1, n)+1)^n]`
-/

namespace A081294.P15429168715274983399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P15429168715274983399

namespace A081294

/-- `record[(and(1, n)+1)^n]` -/
def P15429168715274983399.Spec : Prop :=
  ∀ n, (P15429168715274983399.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P1982121262683059132

`record[((2*n)%4)^n]`
-/

namespace A081294.P1982121262683059132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n % 4) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P1982121262683059132

namespace A081294

/-- `record[((2*n)%4)^n]` -/
def P1982121262683059132.Spec : Prop :=
  ∀ n, (P1982121262683059132.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P6386922656548517836

`record[(2*and(1, n))^n]`
-/

namespace A081294.P6386922656548517836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.land 1 n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P6386922656548517836

namespace A081294

/-- `record[(2*and(1, n))^n]` -/
def P6386922656548517836.Spec : Prop :=
  ∀ n, (P6386922656548517836.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P14736957730663058776

`record[2^and(1, n)^n]`
-/

namespace A081294.P14736957730663058776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.land 1 n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P14736957730663058776

namespace A081294

/-- `record[2^and(1, n)^n]` -/
def P14736957730663058776.Spec : Prop :=
  ∀ n, (P14736957730663058776.a n : ℤ) = A081294 n

end A081294

/-! ## A081294.P18254967257574997180

`record[round((-2)^n/2)]`
-/

namespace A081294.P18254967257574997180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081294.P18254967257574997180

namespace A081294

/-- `record[round((-2)^n/2)]` -/
def P18254967257574997180.Spec : Prop :=
  ∀ n, P18254967257574997180.a n = A081294 n

end A081294

/-! ## A081294.P10875249956035372551

`round(record[-(-2)^(n-1)])`
-/

namespace A081294.P10875249956035372551
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A081294.P10875249956035372551

namespace A081294

/-- `round(record[-(-2)^(n-1)])` -/
def P10875249956035372551.Spec : Prop :=
  ∀ n, P10875249956035372551.a n = A081294 n

end A081294

/-! ## A081294.P15025510954130857641

`round(2^or(1, 2*(n-1)))`
-/

namespace A081294.P15025510954130857641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.lor 1 (2 * ((n : ℤ) - 1)) : ℤ))

end

end A081294.P15025510954130857641

namespace A081294

/-- `round(2^or(1, 2*(n-1)))` -/
def P15025510954130857641.Spec : Prop :=
  ∀ n, P15025510954130857641.a n = A081294 n

end A081294

/-! ## A081294.P14620000900529510788

`round(2^xor(1, 2*(n-1)))`
-/

namespace A081294.P14620000900529510788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.xor 1 (2 * ((n : ℤ) - 1)) : ℤ))

end

end A081294.P14620000900529510788

namespace A081294

/-- `round(2^xor(1, 2*(n-1)))` -/
def P14620000900529510788.Spec : Prop :=
  ∀ n, P14620000900529510788.a n = A081294 n

end A081294

/-! ## A081294.P1473302944149050522

`A090129(2*n+1)`
-/

namespace A081294.P1473302944149050522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (2 * n + 1)

end

end A081294.P1473302944149050522

namespace A081294

/-- `A090129(2*n+1)` -/
def P1473302944149050522.Spec : Prop :=
  ∀ n, P1473302944149050522.a n = A081294 n

end A081294

/-!
# A081295: a(n) = (-1)^(n+1) * coefficient of x^n in Sum_{k>=1} x^k/(1+2*x^k).

The programs for A081295, the canonical program `A081295.P14385682165981110871` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081295 has offset 1).

The definition of A081295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081295.P14385682165981110871

`(-1)^(n+2)*∑{d}[n+1, (-2)^(#-1)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081295

/-- `(-1)^(n+2)*∑{d}[n+1, (-2)^(#-1)]` -/
def P14385682165981110871.Spec : Prop :=
  ∀ n, P14385682165981110871.a n = (A081295 (n + 1) : ℚ)

end A081295

/-! ## A081295.P4102932837393743060

`abs(∑{d}[n+1, A123344(#)])`
-/

namespace A081295.P4102932837393743060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A123344 d|

end

end A081295.P4102932837393743060

namespace A081295

/-- `abs(∑{d}[n+1, A123344(#)])` -/
def P4102932837393743060.Spec : Prop :=
  ∀ n, P4102932837393743060.a n = A081295 (n + 1)

end A081295

/-! ## A081295.P10542573050055357339

`∑{d}[n+1, A123344(#)]*A033999(n)`
-/

namespace A081295.P10542573050055357339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A123344 d) * A033999 n

end

end A081295.P10542573050055357339

namespace A081295

/-- `∑{d}[n+1, A123344(#)]*A033999(n)` -/
def P10542573050055357339.Spec : Prop :=
  ∀ n, P10542573050055357339.a n = A081295 (n + 1)

end A081295

/-! ## A081295.P3612870413426887475

`abs(∑{d}[n+1, (-2)^#])/2`
-/

namespace A081295.P3612870413426887475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((|∑ d ∈ Nat.divisors (f1 n), (-2) ^ d| : ℤ) : ℚ) / 2

end

end A081295.P3612870413426887475

namespace A081295

/-- `abs(∑{d}[n+1, (-2)^#])/2` -/
def P3612870413426887475.Spec : Prop :=
  ∀ n, P3612870413426887475.a n = (A081295 (n + 1) : ℚ)

end A081295

/-! ## A081295.P13863194675793378113

`lcm(∑{d}[n+1, A123344(#)], A122188(n+1))`
-/

namespace A081295.P13863194675793378113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ d ∈ Nat.divisors (f1 n), A123344 d) (A122188 (n + 1))

end

end A081295.P13863194675793378113

namespace A081295

/-- `lcm(∑{d}[n+1, A123344(#)], A122188(n+1))` -/
def P13863194675793378113.Spec : Prop :=
  ∀ n, (P13863194675793378113.a n : ℤ) = A081295 (n + 1)

end A081295

/-!
# A081296: Primes of the form 2^k - k.

The programs for A081296, there is no canonical definition to state claims against.
-/

/-! ## A081296.P16907592912869083468

`2^A048744(n+1)-A048744(n+1)`
-/

namespace A081296.P16907592912869083468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A048744 (n + 1) : ℤ) - (A048744 (n + 1) : ℚ)

end

end A081296.P16907592912869083468

/-! ## A081296.P4339430727184977639

`A000325(A048744(n+1))`
-/

namespace A081296.P4339430727184977639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (A048744 (n + 1)).toNat

end

end A081296.P4339430727184977639

/-! ## A081296.P1467429121869960752

`∩[A069356(n+1), A076878(n+1)]`
-/

namespace A081296.P1467429121869960752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A081296.P1467429121869960752

/-!
# A081297: Array T(k,n), read by antidiagonals: T(k,n) = ((k+1)^(n+1)-(-k)^(n+1))/(2k+1).

The programs for A081297, there is no canonical definition to state claims against.
-/

/-! ## A081297.P353377148432069807

`A072024(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A081297.P353377148432069807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A081297.P353377148432069807

/-! ## A081297.P8725958745376769821

`A072024(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A081297.P8725958745376769821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A081297.P8725958745376769821

/-! ## A081297.P15068454454066847271

`A072024(A099375(n)+n)`
-/

namespace A081297.P15068454454066847271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A099375 n + (n : ℤ)).toNat

end

end A081297.P15068454454066847271

/-! ## A081297.P13610307142306431889

`A072024(A380649(n+1))`
-/

namespace A081297.P13610307142306431889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A380649 (n + 1)).toNat

end

end A081297.P13610307142306431889

/-!
# A081298: Main diagonal of the square array A081297.

The programs for A081298, the canonical program `A081298.P14501918109321096318` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081298 has offset 0).

The definition of A081298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081298.P14501918109321096318

`((n+1)^(n+1)-(-n)^(n+1))/(2*n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081298

/-- `((n+1)^(n+1)-(-n)^(n+1))/(2*n+1)` -/
def P14501918109321096318.Spec : Prop :=
  ∀ n, P14501918109321096318.a n = (A081298 n : ℚ)

end A081298

/-! ## A081298.P14309967245334773672

`A081297(∑[4*n])`
-/

namespace A081298.P14309967245334773672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081298.P14309967245334773672

namespace A081298

/-- `A081297(∑[4*n])` -/
def P14309967245334773672.Spec : Prop :=
  ∀ n, P14309967245334773672.a n = A081298 n

end A081298

/-! ## A081298.P11347042828669056762

`A072024(A056220(n+1))`
-/

namespace A081298.P11347042828669056762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A056220 (n + 1)).toNat

end

end A081298.P11347042828669056762

namespace A081298

/-- `A072024(A056220(n+1))` -/
def P11347042828669056762.Spec : Prop :=
  ∀ n, P11347042828669056762.a n = A081298 n

end A081298

/-! ## A081298.P1738222775208799828

`A072024(A054000(n+1)+1)`
-/

namespace A081298.P1738222775208799828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A054000 (n + 1) + 1).toNat

end

end A081298.P1738222775208799828

namespace A081298

/-- `A072024(A054000(n+1)+1)` -/
def P1738222775208799828.Spec : Prop :=
  ∀ n, P1738222775208799828.a n = A081298 n

end A081298

/-! ## A081298.P7337446940703399921

`A072024(A001844(n)+2*n)`
-/

namespace A081298.P7337446940703399921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A001844 n + (2 * n : ℤ)).toNat

end

end A081298.P7337446940703399921

namespace A081298

/-- `A072024(A001844(n)+2*n)` -/
def P7337446940703399921.Spec : Prop :=
  ∀ n, P7337446940703399921.a n = A081298 n

end A081298

/-!
# A081299: Diagonal of square array A081297.

The programs for A081299, the canonical program `A081299.P8395650538262509914` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081299 has offset 0).

The definition of A081299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081299.P8395650538262509914

`((n+1)^(n+2)-(-n)^(n+2))/(2*n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A081299

/-- `((n+1)^(n+2)-(-n)^(n+2))/(2*n+1)` -/
def P8395650538262509914.Spec : Prop :=
  ∀ n, P8395650538262509914.a n = (A081299 n : ℚ)

end A081299

/-! ## A081299.P12496295412915404900

`A081297(2*(n+1)²)`
-/

namespace A081299.P12496295412915404900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (2 * (n + 1) ^ 2)

end

end A081299.P12496295412915404900

namespace A081299

/-- `A081297(2*(n+1)²)` -/
def P12496295412915404900.Spec : Prop :=
  ∀ n, P12496295412915404900.a n = A081299 n

end A081299

/-! ## A081299.P444941076550802452

`A072024(A132209(n+1))`
-/

namespace A081299.P444941076550802452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A132209 (n + 1)).toNat

end

end A081299.P444941076550802452

namespace A081299

/-- `A072024(A132209(n+1))` -/
def P444941076550802452.Spec : Prop :=
  ∀ n, P444941076550802452.a n = A081299 n

end A081299

/-! ## A081299.P18298608737929760030

`A072024(A142463(n+1))`
-/

namespace A081299.P18298608737929760030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A142463 (n + 1)).toNat

end

end A081299.P18298608737929760030

namespace A081299

/-- `A072024(A142463(n+1))` -/
def P18298608737929760030.Spec : Prop :=
  ∀ n, P18298608737929760030.a n = A081299 n

end A081299

/-! ## A081299.P9849838350727823979

`A072024(A046092(n+1)-1)`
-/

namespace A081299.P9849838350727823979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072024 (A046092 (n + 1) - 1).toNat

end

end A081299.P9849838350727823979

namespace A081299

/-- `A072024(A046092(n+1)-1)` -/
def P9849838350727823979.Spec : Prop :=
  ∀ n, P9849838350727823979.a n = A081299 n

end A081299

