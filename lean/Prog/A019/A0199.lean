import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C039
import Seq.B001.C000
import Seq.B002.C003
import Seq.B007.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C021
import Seq.Opaque.C022

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A019913: Decimal expansion of tangent of 15 degrees.

The programs for A019913, there is no canonical definition to state claims against.
-/

/-! ## A019913.P7039871470047354474

`9-A160390(n)`
-/

namespace A019913.P7039871470047354474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A160390 n

end

end A019913.P7039871470047354474

/-! ## A019913.P2360453396488948200

`9-A002194(n+1)`
-/

namespace A019913.P2360453396488948200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A002194 (n + 1 + 1)

end

end A019913.P2360453396488948200

/-! ## A019913.P14420493879924885096

`9-A019973(n+1)`
-/

namespace A019913.P14420493879924885096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019973 (n + 1 + 1)

end

end A019913.P14420493879924885096

/-! ## A019913.P14567200054021939632

`9-A090388(n+1)`
-/

namespace A019913.P14567200054021939632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A090388 (n + 1 + 1)

end

end A019913.P14567200054021939632

/-! ## A019913.P17702488909063120521

`9-A165663(n+1)`
-/

namespace A019913.P17702488909063120521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A165663 (n + 1 + 1)

end

end A019913.P17702488909063120521

/-! ## A019913.P8016294117583513185

`9-A344111(n+1)`
-/

namespace A019913.P8016294117583513185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A344111 (n + 1 + 1)

end

end A019913.P8016294117583513185

/-!
# A019928: Expansion of 1/((1-5x)(1-7x)(1-8x)).

The programs for A019928, the canonical program `A019928.P13040171382313327413` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019928 has offset 0).

The definition of A019928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019928.P13040171382313327413

`15*a(n-1)-56*a(n-2)+5^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019928

/-- `15*a(n-1)-56*a(n-2)+5^n` -/
def P13040171382313327413.Spec : Prop :=
  ∀ n, P13040171382313327413.a n = A019928 n

theorem P13040171382313327413.correct : P13040171382313327413.Spec := by
  intro n
  simp only [A019928]

end A019928

/-! ## A019928.P3869179742904066381

`25*5^n/6-49*7^n/2+64*8^n/3`
-/

namespace A019928.P3869179742904066381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * 5 ^ n : ℚ) / 6 - (49 * 7 ^ n : ℚ) / 2 + (64 * 8 ^ n : ℚ) / 3

end

end A019928.P3869179742904066381

namespace A019928

/-- `25*5^n/6-49*7^n/2+64*8^n/3` -/
def P3869179742904066381.Spec : Prop :=
  ∀ n, P3869179742904066381.a n = (A019928 n : ℚ)

theorem P3869179742904066381.correct : P3869179742904066381.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019928, Nat.add_sub_cancel, A019928.P3869179742904066381.a, A019928.P13040171382313327413.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019928, Nat.add_sub_cancel, A019928.P3869179742904066381.a, A019928.P13040171382313327413.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019928

/-! ## A019928.P1370227856991600216

`Δ[A016233(n)-A016230(n)]`
-/

namespace A019928.P1370227856991600216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016233 n - A016230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019928.P1370227856991600216

namespace A019928

/-- `Δ[A016233(n)-A016230(n)]` -/
def P1370227856991600216.Spec : Prop :=
  ∀ n, P1370227856991600216.a n = A019928 n

end A019928

/-!
# A019943: Expansion of 1/((1-5*x)*(1-7*x)*(1-9*x)).

The programs for A019943, the canonical program `A019943.P14829080063701238804` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019943 has offset 0).

The definition of A019943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019943.P14829080063701238804

`16*a(n-1)-63*a(n-2)+5^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019943

/-- `16*a(n-1)-63*a(n-2)+5^n` -/
def P14829080063701238804.Spec : Prop :=
  ∀ n, P14829080063701238804.a n = A019943 n

theorem P14829080063701238804.correct : P14829080063701238804.Spec := by
  intro n
  simp only [A019943]

end A019943

/-! ## A019943.P4623308934492313573

`(5^(n+2)-2*7^(n+2)+9^(n+2))/8`
-/

namespace A019943.P4623308934492313573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 2) : ℤ) - (2 * 7 ^ (n + 2) : ℤ) + (9 ^ (n + 2) : ℤ) : ℚ) / 8

end

end A019943.P4623308934492313573

namespace A019943

/-- `(5^(n+2)-2*7^(n+2)+9^(n+2))/8` -/
def P4623308934492313573.Spec : Prop :=
  ∀ n, P4623308934492313573.a n = (A019943 n : ℚ)

theorem P4623308934492313573.correct : P4623308934492313573.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019943, Nat.add_sub_cancel, A019943.P4623308934492313573.a, A019943.P14829080063701238804.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019943, Nat.add_sub_cancel, A019943.P4623308934492313573.a, A019943.P14829080063701238804.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019943

/-! ## A019943.P5271256113152451810

`2*A016250(n)-A016230(n)`
-/

namespace A019943.P5271256113152451810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016250 n - A016230 n

end

end A019943.P5271256113152451810

namespace A019943

/-- `2*A016250(n)-A016230(n)` -/
def P5271256113152451810.Spec : Prop :=
  ∀ n, P5271256113152451810.a n = A019943 n

end A019943

/-! ## A019943.P7397706103649447730

`5*a(n-1)+A016178(n)*A057427(n)` with `a(0)=1`
-/

namespace A019943.P7397706103649447730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + A016178 n * A057427 n

end

end A019943.P7397706103649447730

namespace A019943

/-- `5*a(n-1)+A016178(n)*A057427(n)` -/
def P7397706103649447730.Spec : Prop :=
  ∀ n, P7397706103649447730.a n = A019943 n

end A019943

/-! ## A019943.P1189135534698075359

`2*A020000(n)-A020499(n)`
-/

namespace A019943.P1189135534698075359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020000 n - A020499 n

end

end A019943.P1189135534698075359

namespace A019943

/-- `2*A020000(n)-A020499(n)` -/
def P1189135534698075359.Spec : Prop :=
  ∀ n, P1189135534698075359.a n = A019943 n

end A019943

/-!
# A019958: Expansion of 1/((1-5*x)*(1-7*x)*(1-10*x)).

The programs for A019958, the canonical program `A019958.P5129313094110022891` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019958 has offset 0).

The definition of A019958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019958.P5129313094110022891

`17*a(n-1)-70*a(n-2)+5^n` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019958

/-- `17*a(n-1)-70*a(n-2)+5^n` -/
def P5129313094110022891.Spec : Prop :=
  ∀ n, P5129313094110022891.a n = A019958 n

theorem P5129313094110022891.correct : P5129313094110022891.Spec := by
  intro n
  simp only [A019958]

end A019958

/-! ## A019958.P8170445649978857550

`5*5^n/2-49*7^n/6+20*10^n/3`
-/

namespace A019958.P8170445649978857550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 5 ^ n : ℚ) / 2 - (49 * 7 ^ n : ℚ) / 6 + (20 * 10 ^ n : ℚ) / 3

end

end A019958.P8170445649978857550

namespace A019958

/-- `5*5^n/2-49*7^n/6+20*10^n/3` -/
def P8170445649978857550.Spec : Prop :=
  ∀ n, P8170445649978857550.a n = (A019958 n : ℚ)

theorem P8170445649978857550.correct : P8170445649978857550.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A019958, Nat.add_sub_cancel, A019958.P8170445649978857550.a, A019958.P5129313094110022891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A019958, Nat.add_sub_cancel, A019958.P8170445649978857550.a, A019958.P5129313094110022891.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A019958

/-! ## A019958.P9424397517150506934

`Δ[(A016252(n)-A016230(n))/5]`
-/

namespace A019958.P9424397517150506934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016252 n - A016230 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019958.P9424397517150506934

namespace A019958

/-- `Δ[(A016252(n)-A016230(n))/5]` -/
def P9424397517150506934.Spec : Prop :=
  ∀ n, P9424397517150506934.a n = (A019958 n : ℚ)

end A019958

/-!
# A019973: Decimal expansion of tangent of 75 degrees.

The programs for A019973, there is no canonical definition to state claims against.
-/

/-! ## A019973.P8037218748395156780

`A002194(A000038(n)+n)`
-/

namespace A019973.P8037218748395156780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A019973.P8037218748395156780

/-! ## A019973.P7302930029599483223

`A090388(n)+A000007(n)`
-/

namespace A019973.P7302930029599483223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (n + 1) + A000007 n

end

end A019973.P7302930029599483223

/-! ## A019973.P3123911138027539356

`A165663(n)-A000007(n)`
-/

namespace A019973.P3123911138027539356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165663 (n + 1) - A000007 n

end

end A019973.P3123911138027539356

/-! ## A019973.P10703306295053314041

`or(A002194(n), A090388(n))`
-/

namespace A019973.P10703306295053314041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002194 (n + 1)) (A090388 (n + 1))

end

end A019973.P10703306295053314041

/-! ## A019973.P6895041934237530624

`A002194(xor(n, A000038(n)))`
-/

namespace A019973.P6895041934237530624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((Int.xor (n : ℤ) (A000038 n)).toNat + 1)

end

end A019973.P6895041934237530624

/-! ## A019973.P10897010785021710786

`A002194(2*A000007(n)+n)`
-/

namespace A019973.P10897010785021710786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((2 * A000007 n + (n : ℤ)).toNat + 1)

end

end A019973.P10897010785021710786

/-! ## A019973.P7060644312932034314

`(A165663(n)+A090388(n))/2`
-/

namespace A019973.P7060644312932034314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165663 (n + 1) + A090388 (n + 1) : ℚ) / 2

end

end A019973.P7060644312932034314

/-! ## A019973.P7936514616992714101

`A160390(n+1-A134451(2*n))`
-/

namespace A019973.P7936514616992714101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160390 ((n + 1 : ℤ) - A134451 (2 * n)).toNat

end

end A019973.P7936514616992714101

/-! ## A019973.P908949947173912481

`A002194(n+2-A134451(2*n))`
-/

namespace A019973.P908949947173912481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (((n + 2 : ℤ) - A134451 (2 * n)).toNat + 1)

end

end A019973.P908949947173912481

/-! ## A019973.P15391466290255494522

`A165663(n+2-A134451(2*n))`
-/

namespace A019973.P15391466290255494522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165663 (((n + 2 : ℤ) - A134451 (2 * n)).toNat + 1)

end

end A019973.P15391466290255494522

/-! ## A019973.P1997319804011335827

`A344111(n+2-A134451(2*n))`
-/

namespace A019973.P1997319804011335827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344111 (((n + 2 : ℤ) - A134451 (2 * n)).toNat + 1)

end

end A019973.P1997319804011335827

/-! ## A019973.P6196638259577998350

`A002194(A000007(n)+A000007(n)+n)`
-/

namespace A019973.P6196638259577998350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A019973.P6196638259577998350

/-! ## A019973.P11254185286742736511

`A002194(n)+A165663(n)-A090388(n)`
-/

namespace A019973.P11254185286742736511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + (A165663 (n + 1) - A090388 (n + 1))

end

end A019973.P11254185286742736511

/-! ## A019973.P1749658710347777288

`A090388(A165663(n)+n-A090388(n))`
-/

namespace A019973.P1749658710347777288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 ((A165663 (n + 1) + ((n : ℤ) - A090388 (n + 1))).toNat + 1)

end

end A019973.P1749658710347777288

/-! ## A019973.P1325874104915768630

`A002194(n-(A090388(n)-A165663(n)))`
-/

namespace A019973.P1325874104915768630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (((n : ℤ) - (A090388 (n + 1) - A165663 (n + 1))).toNat + 1)

end

end A019973.P1325874104915768630

/-! ## A019973.P8779727185879714144

`A002194(n)+A131595(n)*A152623(n)`
-/

namespace A019973.P8779727185879714144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + A131595 (n + 2) * A152623 (n + 1)

end

end A019973.P8779727185879714144

/-! ## A019973.P4195703931386585290

`A090388(n-(A090388(n)-A165663(n)))`
-/

namespace A019973.P4195703931386585290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (((n : ℤ) - (A090388 (n + 1) - A165663 (n + 1))).toNat + 1)

end

end A019973.P4195703931386585290

/-! ## A019973.P5315065805965279981

`A000038(n)²-(A000038(n)-A002194(n))`
-/

namespace A019973.P5315065805965279981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2 - (A000038 n - A002194 (n + 1))

end

end A019973.P5315065805965279981

/-! ## A019973.P15504830228408475133

`A084642(n+1)+A002194(n)-A040001(n)`
-/

namespace A019973.P15504830228408475133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 (n + 1) + (A002194 (n + 1) - A040001 n)

end

end A019973.P15504830228408475133

/-! ## A019973.P7417355085603829838

`A002194(n)+A010469(n)-A343964(n+1)`
-/

namespace A019973.P7417355085603829838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1) + (A010469 (n + 1) - A343964 (n + 1 + 2))

end

end A019973.P7417355085603829838

/-!
# A019988: Number of ways of embedding a connected graph with n edges in the square lattice.

The programs for A019988, there is no canonical definition to state claims against.
-/

/-! ## A019988.P15122561779639118466

`A348095(n+1)+A056841(n+2)`
-/

namespace A019988.P15122561779639118466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348095 (n + 1) + A056841 (n + 2)

end

end A019988.P15122561779639118466

/-! ## A019988.P13075646546584032474

`A366766(A167499(n+4)+1)`
-/

namespace A019988.P13075646546584032474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (A167499 (n + 4) + 1).toNat

end

end A019988.P13075646546584032474

/-! ## A019988.P1637346181403033039

`A366766(A077169(n+6)+1)`
-/

namespace A019988.P1637346181403033039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (A077169 (n + 6) + 1).toNat

end

end A019988.P1637346181403033039

/-! ## A019988.P4594126998496913989

`A366766(A000096(n+4)+7)`
-/

namespace A019988.P4594126998496913989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (A000096 (n + 4) + 7).toNat

end

end A019988.P4594126998496913989

/-! ## A019988.P5298024682481000991

`A366766(A000217(n+5)+6)`
-/

namespace A019988.P5298024682481000991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (A000217 (n + 5) + 6).toNat

end

end A019988.P5298024682481000991

/-!
# A019989: Indices n such that A307672(2*n) = 0.

The programs for A019989, there is no canonical definition to state claims against.
-/

/-! ## A019989.P11348186801102760550

`lt[n*A108964(2*n), n]`
-/

namespace A019989.P11348186801102760550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108964 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A019989.P11348186801102760550

/-! ## A019989.P2238919239651784195

`eq[A000007(n), A108964(2*n)]`
-/

namespace A019989.P2238919239651784195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019989.P2238919239651784195

/-! ## A019989.P11121541201651509320

`eq[A000038(n), A108964(2*n)]`
-/

namespace A019989.P11121541201651509320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019989.P11121541201651509320

/-! ## A019989.P17085918915042989737

`lt[n*A307672(2*n), n]`
-/

namespace A019989.P17085918915042989737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A307672 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A019989.P17085918915042989737

/-! ## A019989.P37416755319458517

`eq[A000007(n), A307672(2*n)]`
-/

namespace A019989.P37416755319458517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019989.P37416755319458517

/-! ## A019989.P12755872138360271639

`eq[A000038(n), A307672(2*n)]`
-/

namespace A019989.P12755872138360271639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019989.P12755872138360271639

/-! ## A019989.P15685717617215082883

`eq[A000007(n), A307672(n)]/2`
-/

namespace A019989.P15685717617215082883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A019989.P15685717617215082883

/-! ## A019989.P5280150300589130332

`eq[A000038(n), A307672(n)]/2`
-/

namespace A019989.P5280150300589130332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A019989.P5280150300589130332

/-! ## A019989.P6605901458373064106

`A001281(eq[A000007(n), A307672(n)])`
-/

namespace A019989.P6605901458373064106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A019989.P6605901458373064106

/-! ## A019989.P1452805612092742000

`eq[A010052(A006530(n+1)), A307672(2*n)]`
-/

namespace A019989.P1452805612092742000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019989.P1452805612092742000

/-! ## A019989.P9649343943126733984

`eq[A010052(A006530(n+1)), A307672(n)]/2`
-/

namespace A019989.P9649343943126733984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A019989.P9649343943126733984

/-! ## A019989.P11685188210037636549

`eq[A010052(2*n+1)*A010052(2*n), A307672(2*n)]`
-/

namespace A019989.P11685188210037636549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (2 * n + 1) * A010052 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019989.P11685188210037636549

/-! ## A019989.P3025352674118578237

`eq[0, A108964(A008458(n))]`
-/

namespace A019989.P3025352674118578237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019989.P3025352674118578237

/-! ## A019989.P4297748201483353815

`eq[1, A108964(A271114(n))]`
-/

namespace A019989.P4297748201483353815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (A271114 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019989.P4297748201483353815

/-! ## A019989.P5012904303774097891

`eq[2, A108964(A001651(A008574(n)))]`
-/

namespace A019989.P5012904303774097891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (A001651 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019989.P5012904303774097891

/-!
# A019990: Indices n such that A307672(2*n) = 2.

The programs for A019990, there is no canonical definition to state claims against.
-/

/-! ## A019990.P10603366566232196035

`lt[1, A108964(2*n)]`
-/

namespace A019990.P10603366566232196035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A019990.P10603366566232196035

/-! ## A019990.P14815920840029699482

`eq[2, A307672(2*n)]`
-/

namespace A019990.P14815920840029699482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019990.P14815920840029699482

/-! ## A019990.P13509415769112353796

`eq[2, A307672(n)]/2`
-/

namespace A019990.P13509415769112353796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A019990.P13509415769112353796

/-! ## A019990.P6058805147537985800

`A001281(eq[2, A307672(n)])`
-/

namespace A019990.P6058805147537985800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019990.P6058805147537985800

/-! ## A019990.P9365685821791089591

`A004525(eq[2, A307672(n)])`
-/

namespace A019990.P9365685821791089591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019990.P9365685821791089591

/-! ## A019990.P10920932799929083862

`A032742(eq[2, A307672(n)])`
-/

namespace A019990.P10920932799929083862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019990.P10920932799929083862

/-! ## A019990.P13082836016673753186

`A060681(eq[2, A307672(n)])`
-/

namespace A019990.P13082836016673753186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019990.P13082836016673753186

/-! ## A019990.P5248618985657845602

`A110654(eq[2, A307672(n)])`
-/

namespace A019990.P5248618985657845602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019990.P5248618985657845602

/-! ## A019990.P8506091904570903090

`eq[1, A108964(A271114(n))+1]`
-/

namespace A019990.P8506091904570903090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (A271114 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019990.P8506091904570903090

/-! ## A019990.P6301394987204478583

`eq[1, A108964(A008458(n))-1]`
-/

namespace A019990.P6301394987204478583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (A008458 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019990.P6301394987204478583

/-!
# A019991: Indices n such that A307672(2*n) = 4.

The programs for A019991, there is no canonical definition to state claims against.
-/

/-! ## A019991.P2303349384386416425

`eq[1, A108964(2*n)]`
-/

namespace A019991.P2303349384386416425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019991.P2303349384386416425

/-! ## A019991.P908495723971848275

`lt[2, A307672(2*n)]`
-/

namespace A019991.P908495723971848275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A019991.P908495723971848275

/-! ## A019991.P12238339955353461211

`A001281(eq[4, A307672(n)])`
-/

namespace A019991.P12238339955353461211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019991.P12238339955353461211

/-! ## A019991.P10966115600937338113

`A004525(eq[4, A307672(n)])`
-/

namespace A019991.P10966115600937338113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019991.P10966115600937338113

/-! ## A019991.P6175176022079598048

`A032742(eq[4, A307672(n)])`
-/

namespace A019991.P6175176022079598048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019991.P6175176022079598048

/-! ## A019991.P10231011291000034454

`A060681(eq[4, A307672(n)])`
-/

namespace A019991.P10231011291000034454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019991.P10231011291000034454

/-! ## A019991.P2179809476730106762

`A110654(eq[4, A307672(n)])`
-/

namespace A019991.P2179809476730106762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A019991.P2179809476730106762

/-! ## A019991.P11284742707766681797

`lt[1, A108964(6*n+1)]`
-/

namespace A019991.P11284742707766681797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108964 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A019991.P11284742707766681797

/-!
# A019992: 

The programs for A019992, there is no canonical definition to state claims against.
-/

/-! ## A019992.P11630357714450839266

`ogf((5+x-x^2-x^4)/(1-4x-x^2+x^3+x^5))`
-/

namespace A019992.P11630357714450839266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, -1, 0, -1] [1, -4, -1, 1, 0, 1] n

end

end A019992.P11630357714450839266

/-!
# A019998: From George Gilbert's marks problem: jumping 7 marks at a time (final positions).

The programs for A019998, there is no canonical definition to state claims against.
-/

/-! ## A019998.P7158017702493804900

`∑[p?[A286535(A081204(n))]]`
-/

namespace A019998.P7158017702493804900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286535 (A081204 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019998.P7158017702493804900

/-! ## A019998.P1338917832709373737

`∑[A002034(A259795(n)+1)]`
-/

namespace A019998.P1338917832709373737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A259795 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019998.P1338917832709373737

/-!
# A019999: Number of similarity classes of descendants created by bisection refinement from an initial n-simplex.

The programs for A019999, the canonical program `A019999.P1544371880021922848` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019999 has offset 2).

The definition of A019999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019999.P1544371880021922848

`(n+2)*(n+2)!*2^n`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A019999

/-- `(n+2)*(n+2)!*2^n` -/
def P1544371880021922848.Spec : Prop :=
  ∀ n, (P1544371880021922848.a n : ℤ) = A019999 (n + 2)

theorem P1544371880021922848.correct : P1544371880021922848.Spec := by
  intro n
  simp only [A019999, Nat.add_sub_cancel]

end A019999

/-! ## A019999.P10435309398838877173

`2^n*Δ[(n+2)!]`
-/

namespace A019999.P10435309398838877173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A019999.P10435309398838877173

namespace A019999

/-- `2^n*Δ[(n+2)!]` -/
def P10435309398838877173.Spec : Prop :=
  ∀ n, P10435309398838877173.a n = A019999 (n + 2)

theorem P10435309398838877173.correct : P10435309398838877173.Spec := by
  intro n
  simp only [A019999, Nat.add_sub_cancel, A019999.P10435309398838877173.f1, A019999.P10435309398838877173.a, A019999.P1544371880021922848.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A019999

/-! ## A019999.P7285689729520394919

`Δ[(n+2)!]/2^-n`
-/

namespace A019999.P7285689729520394919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A019999.P7285689729520394919

namespace A019999

/-- `Δ[(n+2)!]/2^-n` -/
def P7285689729520394919.Spec : Prop :=
  ∀ n, P7285689729520394919.a n = (A019999 (n + 2) : ℚ)

theorem P7285689729520394919.correct : P7285689729520394919.Spec := by
  intro n
  simp only [A019999, Nat.add_sub_cancel, A019999.P7285689729520394919.f1, A019999.P7285689729520394919.a, A019999.P1544371880021922848.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A019999

/-! ## A019999.P2601253417339307733

`(n+2)*∏[2*(n+2)]/2`
-/

namespace A019999.P2601253417339307733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A019999.P2601253417339307733

namespace A019999

/-- `(n+2)*∏[2*(n+2)]/2` -/
def P2601253417339307733.Spec : Prop :=
  ∀ n, P2601253417339307733.a n = (A019999 (n + 2) : ℚ)

end A019999

/-! ## A019999.P3663782573100942263

`(n+2)*2^n*(n+2)!`
-/

namespace A019999.P3663782573100942263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n * Nat.factorial (n + 2)

end

end A019999.P3663782573100942263

namespace A019999

/-- `(n+2)*2^n*(n+2)!` -/
def P3663782573100942263.Spec : Prop :=
  ∀ n, (P3663782573100942263.a n : ℤ) = A019999 (n + 2)

theorem P3663782573100942263.correct : P3663782573100942263.Spec := by
  intro n
  simp only [A019999, Nat.add_sub_cancel, A019999.P3663782573100942263.a, A019999.P1544371880021922848.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019999

/-! ## A019999.P7685927997779357787

`(n+2)*A014297(n)`
-/

namespace A019999.P7685927997779357787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A014297 n

end

end A019999.P7685927997779357787

namespace A019999

/-- `(n+2)*A014297(n)` -/
def P7685927997779357787.Spec : Prop :=
  ∀ n, P7685927997779357787.a n = A019999 (n + 2)

theorem P7685927997779357787.correct : P7685927997779357787.Spec := by
  intro n
  simp only [A019999, Nat.add_sub_cancel, A019999.P7685927997779357787.a, A019999.P1544371880021922848.a, A014297, A014297.P10375066448210910229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A019999

/-! ## A019999.P17411557398286869307

`(n+2)*A052564(n+2)`
-/

namespace A019999.P17411557398286869307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A052564 (n + 2)

end

end A019999.P17411557398286869307

namespace A019999

/-- `(n+2)*A052564(n+2)` -/
def P17411557398286869307.Spec : Prop :=
  ∀ n, P17411557398286869307.a n = A019999 (n + 2)

end A019999

/-! ## A019999.P13578384043050660499

`(n+2)²*A002866(n+1)`
-/

namespace A019999.P13578384043050660499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A002866 (n + 1)

end

end A019999.P13578384043050660499

namespace A019999

/-- `(n+2)²*A002866(n+1)` -/
def P13578384043050660499.Spec : Prop :=
  ∀ n, P13578384043050660499.a n = A019999 (n + 2)

end A019999

/-! ## A019999.P5424148335721081959

`Δ[A051578(n)]-A051578(n)`
-/

namespace A019999.P5424148335721081959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A051578 n

end

end A019999.P5424148335721081959

namespace A019999

/-- `Δ[A051578(n)]-A051578(n)` -/
def P5424148335721081959.Spec : Prop :=
  ∀ n, P5424148335721081959.a n = A019999 (n + 2)

end A019999

/-! ## A019999.P17116476191560991699

`A000079(n)*A001563(n+2)`
-/

namespace A019999.P17116476191560991699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001563 (n + 2)

end

end A019999.P17116476191560991699

namespace A019999

/-- `A000079(n)*A001563(n+2)` -/
def P17116476191560991699.Spec : Prop :=
  ∀ n, P17116476191560991699.a n = A019999 (n + 2)

theorem P17116476191560991699.correct : P17116476191560991699.Spec := by
  intro n
  simp only [A019999, Nat.add_sub_cancel, A019999.P17116476191560991699.a, A019999.P1544371880021922848.a, A000079, A000079.P10855139691139572931.a, A001563, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A019999

