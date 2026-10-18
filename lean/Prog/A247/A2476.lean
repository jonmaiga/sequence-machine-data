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
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A247601: Least positive integer m with pi(m*n) = phi(m), where pi(.) is the prime-counting function and phi(.) is Euler's totient function.

The programs for A247601, there is no canonical definition to state claims against.
-/

/-! ## A247601.P15664647233591184434

`A325280(A000142(n))+A062742(n+1)`
-/

namespace A247601.P15664647233591184434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (A000142 n).toNat + A062742 (n + 1)

end

end A247601.P15664647233591184434

/-!
# A247607: Primes whose number of symmetric connections to other primes within the same power of two interval exceeds the number of symmetric connections to composites.

The programs for A247607, there is no canonical definition to state claims against.
-/

/-! ## A247607.P4550161005256242409

`or(A122565(n+1), A143227(A003945(n)))`
-/

namespace A247607.P4550161005256242409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122565 (n + 1)) (A143227 (A003945 n).toNat)

end

end A247607.P4550161005256242409

/-! ## A247607.P14553307660116386319

`or(A122565(n+1), A296150(A181442(n)))`
-/

namespace A247607.P14553307660116386319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122565 (n + 1)) (A296150 (A181442 n).toNat)

end

end A247607.P14553307660116386319

/-!
# A247608: a(n) = Sum_{k=0..3} binomial(6,k)*binomial(n,k).

The programs for A247608, the canonical program `A247608.P3588417961381764389` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247608 has offset 0).

The definition of A247608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247608.P9929350459363870037

`(6+31*n-15*n²+20*n^3)/6`
-/

namespace A247608.P9929350459363870037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 + 31 * n : ℤ) - (15 * n ^ 2 : ℤ) + (20 * n ^ 3 : ℤ) : ℚ) / 6

end

end A247608.P9929350459363870037

namespace A247608

/-- `(6+31*n-15*n²+20*n^3)/6` -/
def P9929350459363870037.Spec : Prop :=
  ∀ n, P9929350459363870037.a n = (A247608 n : ℚ)

theorem P9929350459363870037.correct : P9929350459363870037.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A247608, Nat.add_sub_cancel, A247608.P9929350459363870037.a, A247608.P3588417961381764389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A247608, Nat.add_sub_cancel, A247608.P9929350459363870037.a, A247608.P3588417961381764389.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247608

/-! ## A247608.P3588417961381764389

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=28, a(3)=84`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247608

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3588417961381764389.Spec : Prop :=
  ∀ n, P3588417961381764389.a n = A247608 n

theorem P3588417961381764389.correct : P3588417961381764389.Spec := by
  intro n
  simp only [A247608]

end A247608

/-! ## A247608.P11758288734778788995

`∑[∑[a(n-1)+20]]` with `a(0)=1, a(1)=5, a(2)=15`
-/

namespace A247608.P11758288734778788995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 15] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247608.P11758288734778788995

namespace A247608

/-- `∑[∑[a(n-1)+20]]` -/
def P11758288734778788995.Spec : Prop :=
  ∀ n, (P11758288734778788995.a n : ℤ) = A247608 n

end A247608

/-! ## A247608.P13448104976795932047

`∑[∑[ogf((1+3x+6x^2+10x^3)/(1-2x+x^2))]]`
-/

namespace A247608.P13448104976795932047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 6, 10] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247608.P13448104976795932047

namespace A247608

/-- `∑[∑[ogf((1+3x+6x^2+10x^3)/(1-2x+x^2))]]` -/
def P13448104976795932047.Spec : Prop :=
  ∀ n, P13448104976795932047.a n = A247608 n

end A247608

/-! ## A247608.P5876755890412978494

`A056000(n)+A034721(n)`
-/

namespace A247608.P5876755890412978494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A034721 n

end

end A247608.P5876755890412978494

namespace A247608

/-- `A056000(n)+A034721(n)` -/
def P5876755890412978494.Spec : Prop :=
  ∀ n, P5876755890412978494.a n = A247608 n

end A247608

/-! ## A247608.P10705066120458944709

`A143131(n+1)+A005476(n)`
-/

namespace A247608.P10705066120458944709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143131 (n + 1) + A005476 n

end

end A247608.P10705066120458944709

namespace A247608

/-- `A143131(n+1)+A005476(n)` -/
def P10705066120458944709.Spec : Prop :=
  ∀ n, P10705066120458944709.a n = A247608 n

end A247608

/-! ## A247608.P4111902581537439134

`A034720(n+1)-A022276(n)`
-/

namespace A247608.P4111902581537439134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034720 (n + 1) - A022276 n

end

end A247608.P4111902581537439134

namespace A247608

/-- `A034720(n+1)-A022276(n)` -/
def P4111902581537439134.Spec : Prop :=
  ∀ n, P4111902581537439134.a n = A247608 n

end A247608

/-! ## A247608.P824042281071413604

`A017281(n)+A172117(n)-A045944(n)`
-/

namespace A247608.P824042281071413604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n + (A172117 n - A045944 n)

end

end A247608.P824042281071413604

namespace A247608

/-- `A017281(n)+A172117(n)-A045944(n)` -/
def P824042281071413604.Spec : Prop :=
  ∀ n, P824042281071413604.a n = A247608 n

end A247608

/-! ## A247608.P7042193274382235711

`A056220(n+1)+A172117(n)-A051624(n)`
-/

namespace A247608.P7042193274382235711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) + (A172117 n - A051624 n)

end

end A247608.P7042193274382235711

namespace A247608

/-- `A056220(n+1)+A172117(n)-A051624(n)` -/
def P7042193274382235711.Spec : Prop :=
  ∀ n, P7042193274382235711.a n = A247608 n

end A247608

/-! ## A247608.P1311294829980840150

`∑[A005891(2*n)]-A033583(n)`
-/

namespace A247608.P1311294829980840150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033583 n

end

end A247608.P1311294829980840150

namespace A247608

/-- `∑[A005891(2*n)]-A033583(n)` -/
def P1311294829980840150.Spec : Prop :=
  ∀ n, P1311294829980840150.a n = A247608 n

end A247608

/-! ## A247608.P320814812356911909

`5*A022554(n²)+n+1`
-/

namespace A247608.P320814812356911909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A022554 (n ^ 2) + (n + 1 : ℤ)

end

end A247608.P320814812356911909

namespace A247608

/-- `5*A022554(n²)+n+1` -/
def P320814812356911909.Spec : Prop :=
  ∀ n, P320814812356911909.a n = A247608 n

end A247608

/-!
# A247609: a(n) = Sum_{k=0..4} binomial(8,k)*binomial(n,k).

The programs for A247609, the canonical program `A247609.P15183654082143088059` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247609 has offset 0).

The definition of A247609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247609.P6108894205904254561

`(12-58*n+217*n²-98*n^3+35*n^4)/12`
-/

namespace A247609.P6108894205904254561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 - (58 * n : ℤ) + (217 * n ^ 2 : ℤ) - (98 * n ^ 3 : ℤ) + (35 * n ^ 4 : ℤ) : ℚ) / 12

end

end A247609.P6108894205904254561

namespace A247609

/-- `(12-58*n+217*n²-98*n^3+35*n^4)/12` -/
def P6108894205904254561.Spec : Prop :=
  ∀ n, P6108894205904254561.a n = (A247609 n : ℚ)

theorem P6108894205904254561.correct : P6108894205904254561.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A247609, Nat.add_sub_cancel, A247609.P6108894205904254561.a, A247609.P15183654082143088059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A247609, Nat.add_sub_cancel, A247609.P6108894205904254561.a, A247609.P15183654082143088059.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247609

/-! ## A247609.P15183654082143088059

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=9, a(2)=45, a(3)=165, a(4)=495`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247609

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15183654082143088059.Spec : Prop :=
  ∀ n, P15183654082143088059.a n = A247609 n

theorem P15183654082143088059.correct : P15183654082143088059.Spec := by
  intro n
  simp only [A247609]

end A247609

/-!
# A247610: a(n) = Sum_{k=0..5} binomial(10,k)*binomial(n,k).

The programs for A247610, the canonical program `A247610.P2854156894728087378` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247610 has offset 0).

The definition of A247610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247610.P2854156894728087378

`(20+508*n-925*n²+820*n^3-245*n^4+42*n^5)/20`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247610

/-- `(20+508*n-925*n²+820*n^3-245*n^4+42*n^5)/20` -/
def P2854156894728087378.Spec : Prop :=
  ∀ n, P2854156894728087378.a n = (A247610 n : ℚ)

end A247610

/-!
# A247616: Numbers with more than two distinct digits in arithmetic progression.

The programs for A247616, there is no canonical definition to state claims against.
-/

/-! ## A247616.P11068473904004310683

`filter[A135643(n+1), A178788(#)]`
-/

namespace A247616.P11068473904004310683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A247616.P11068473904004310683

/-! ## A247616.P13778990788412210193

`filter[A135643(n+1), A196368(#)]`
-/

namespace A247616.P13778990788412210193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A247616.P13778990788412210193

/-! ## A247616.P3765358620470712274

`∩[A135643(n+1), A328996(n+1)]`
-/

namespace A247616.P3765358620470712274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247616.P3765358620470712274

/-! ## A247616.P5437715928304145401

`∩[A280823(n+1), A328996(n+1)]`
-/

namespace A247616.P5437715928304145401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247616.P5437715928304145401

/-! ## A247616.P11653876296648455735

`∩[A328996(n+1), A034840(n)]`
-/

namespace A247616.P11653876296648455735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247616.P11653876296648455735

/-!
# A247617: a(4n) = n + 1/2 - (-1)^n/2 + (-1)^n, a(2n+1) = 2*n + 5, a(4n+2) = 2*n + 3.

The programs for A247617, the canonical program `A247617.P3615264077344713285` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247617 has offset 0).

The definition of A247617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247617.P3615264077344713285

`A145979(n)-A246416(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247617

/-- `A145979(n)-A246416(n)` -/
def P3615264077344713285.Spec : Prop :=
  ∀ n, P3615264077344713285.a n = A247617 n

theorem P3615264077344713285.correct : P3615264077344713285.Spec := by
  intro n
  simp only [A247617]

end A247617

/-! ## A247617.P6841210510687776167

`or(1, A097362(A097362(n+1))-1)`
-/

namespace A247617.P6841210510687776167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A097362 (A097362 (n + 1)).toNat - 1)

end

end A247617.P6841210510687776167

namespace A247617

/-- `or(1, A097362(A097362(n+1))-1)` -/
def P6841210510687776167.Spec : Prop :=
  ∀ n, P6841210510687776167.a n = A247617 n

end A247617

/-! ## A247617.P12039218693682610028

`or(1, A060819(n+4)-1)`
-/

namespace A247617.P12039218693682610028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060819 (n + 4) - 1)

end

end A247617.P12039218693682610028

namespace A247617

/-- `or(1, A060819(n+4)-1)` -/
def P12039218693682610028.Spec : Prop :=
  ∀ n, P12039218693682610028.a n = A247617 n

end A247617

/-! ## A247617.P5147607409673692828

`A131055(A060819(n+4)+1)-1`
-/

namespace A247617.P5147607409673692828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A060819 (n + 4) + 1).toNat - 1

end

end A247617.P5147607409673692828

namespace A247617

/-- `A131055(A060819(n+4)+1)-1` -/
def P5147607409673692828.Spec : Prop :=
  ∀ n, P5147607409673692828.a n = A247617 n

end A247617

/-! ## A247617.P3748199650065238002

`or(1, A174239(A174239(n+1)+1))`
-/

namespace A247617.P3748199650065238002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A174239 (A174239 (n + 1) + 1).toNat)

end

end A247617.P3748199650065238002

namespace A247617

/-- `or(1, A174239(A174239(n+1)+1))` -/
def P3748199650065238002.Spec : Prop :=
  ∀ n, P3748199650065238002.a n = A247617 n

end A247617

/-! ## A247617.P14980556946918708381

`or(1, A065423(A065423(n+4)+1))`
-/

namespace A247617.P14980556946918708381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065423 (A065423 (n + 4) + 1).toNat)

end

end A247617.P14980556946918708381

namespace A247617

/-- `or(1, A065423(A065423(n+4)+1))` -/
def P14980556946918708381.Spec : Prop :=
  ∀ n, P14980556946918708381.a n = A247617 n

end A247617

/-! ## A247617.P12289016446786322883

`or(1, A225058(n+4))`
-/

namespace A247617.P12289016446786322883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A225058 (n + 4))

end

end A247617.P12289016446786322883

namespace A247617

/-- `or(1, A225058(n+4))` -/
def P12289016446786322883.Spec : Prop :=
  ∀ n, P12289016446786322883.a n = A247617 n

end A247617

/-! ## A247617.P17699609437902087611

`or(1, A246416(n+4)-1)`
-/

namespace A247617.P17699609437902087611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A246416 (n + 4) - 1)

end

end A247617.P17699609437902087611

namespace A247617

/-- `or(1, A246416(n+4)-1)` -/
def P17699609437902087611.Spec : Prop :=
  ∀ n, P17699609437902087611.a n = A247617 n

end A247617

/-! ## A247617.P15523402379518449203

`A129756(A129756((n+3)*A176895(n)))`
-/

namespace A247617.P15523402379518449203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A129756 ((n + 3 : ℤ) * A176895 n).toNat).toNat

end

end A247617.P15523402379518449203

namespace A247617

/-- `A129756(A129756((n+3)*A176895(n)))` -/
def P15523402379518449203.Spec : Prop :=
  ∀ n, P15523402379518449203.a n = A247617 n

end A247617

/-!
# A247618: Start with a single square; at n-th generation add a square at each expandable vertex; a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

The programs for A247618, the canonical program `A247618.P4960337282067690901` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247618 has offset 0).

The definition of A247618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247618.P4960337282067690901

`2^(n+3)-4*n-7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247618

/-- `2^(n+3)-4*n-7` -/
def P4960337282067690901.Spec : Prop :=
  ∀ n, P4960337282067690901.a n = A247618 n

theorem P4960337282067690901.correct : P4960337282067690901.Spec := by
  intro n
  simp only [A247618]

end A247618

/-! ## A247618.P9369731862699077855

`∑[ogf((1+x+2x^2)/(1-3x+2x^2))]`
-/

namespace A247618.P9369731862699077855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P9369731862699077855

namespace A247618

/-- `∑[ogf((1+x+2x^2)/(1-3x+2x^2))]` -/
def P9369731862699077855.Spec : Prop :=
  ∀ n, P9369731862699077855.a n = A247618 n

end A247618

/-! ## A247618.P14460889020089520918

`ogf((1+x+2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A247618.P14460889020089520918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, -4, 5, -2] n

end

end A247618.P14460889020089520918

namespace A247618

/-- `ogf((1+x+2x^2)/(1-4x+5x^2-2x^3))` -/
def P14460889020089520918.Spec : Prop :=
  ∀ n, P14460889020089520918.a n = A247618 n

end A247618

/-! ## A247618.P1132267798408725597

`∑[2*(a(n-1)+2)]` with `a(0)=1, a(1)=4`
-/

namespace A247618.P1132267798408725597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P1132267798408725597

namespace A247618

/-- `∑[2*(a(n-1)+2)]` -/
def P1132267798408725597.Spec : Prop :=
  ∀ n, (P1132267798408725597.a n : ℤ) = A247618 n

end A247618

/-! ## A247618.P3704261182859905544

`∑[∑[2*a(n-1)]]` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A247618.P3704261182859905544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P3704261182859905544

namespace A247618

/-- `∑[∑[2*a(n-1)]]` -/
def P3704261182859905544.Spec : Prop :=
  ∀ n, (P3704261182859905544.a n : ℤ) = A247618 n

end A247618

/-! ## A247618.P10508300300445667340

`or(1, ∑[2^(n+2)-4]+1)`
-/

namespace A247618.P10508300300445667340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247618.P10508300300445667340

namespace A247618

/-- `or(1, ∑[2^(n+2)-4]+1)` -/
def P10508300300445667340.Spec : Prop :=
  ∀ n, P10508300300445667340.a n = A247618 n

end A247618

/-! ## A247618.P7547886950273824906

`∑[lcm(2, a(n-1)+1)+2]` with `a(0)=1`
-/

namespace A247618.P7547886950273824906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lcm 2 (f1 (n - 1) + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P7547886950273824906

namespace A247618

/-- `∑[lcm(2, a(n-1)+1)+2]` -/
def P7547886950273824906.Spec : Prop :=
  ∀ n, (P7547886950273824906.a n : ℤ) = A247618 n

end A247618

/-! ## A247618.P9382434145665691822

`floor(2*a(n-1)+4*n-1)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A247618.P9382434145665691822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + ((4 * n : ℤ) - 1)

end

end A247618.P9382434145665691822

namespace A247618

/-- `floor(2*a(n-1)+4*n-1)` -/
def P9382434145665691822.Spec : Prop :=
  ∀ n, P9382434145665691822.a n = A247618 n

theorem P9382434145665691822.correct : P9382434145665691822.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A247618, Nat.add_sub_cancel, A247618.P9382434145665691822.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A247618, Nat.add_sub_cancel, A247618.P9382434145665691822.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247618

/-! ## A247618.P15980208590733068610

`floor(4*n-(1-2*a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A247618.P15980208590733068610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n : ℤ) - (1 - 2 * a (n - 1))

end

end A247618.P15980208590733068610

namespace A247618

/-- `floor(4*n-(1-2*a(n-1)))` -/
def P15980208590733068610.Spec : Prop :=
  ∀ n, P15980208590733068610.a n = A247618 n

theorem P15980208590733068610.correct : P15980208590733068610.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A247618, Nat.add_sub_cancel, A247618.P15980208590733068610.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A247618, Nat.add_sub_cancel, A247618.P15980208590733068610.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247618

/-! ## A247618.P12843849937738840191

`∑[a(n-1)+a(n-1)+4]` with `a(0)=1, a(1)=4`
-/

namespace A247618.P12843849937738840191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P12843849937738840191

namespace A247618

/-- `∑[a(n-1)+a(n-1)+4]` -/
def P12843849937738840191.Spec : Prop :=
  ∀ n, (P12843849937738840191.a n : ℤ) = A247618 n

end A247618

/-! ## A247618.P1665001335231046756

`2*(2*n+a(n-1)-1/2)` with `a(0)=1`
-/

namespace A247618.P1665001335231046756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n : ℚ) + (a (n - 1) - (1 : ℚ) / 2))

end

end A247618.P1665001335231046756

namespace A247618

/-- `2*(2*n+a(n-1)-1/2)` -/
def P1665001335231046756.Spec : Prop :=
  ∀ n, P1665001335231046756.a n = (A247618 n : ℚ)

theorem P1665001335231046756.correct : P1665001335231046756.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A247618, Nat.add_sub_cancel, A247618.P1665001335231046756.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A247618, Nat.add_sub_cancel, A247618.P1665001335231046756.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247618

/-! ## A247618.P12990834421623086358

`2*(2*n-(1/2-a(n-1)))` with `a(0)=1`
-/

namespace A247618.P12990834421623086358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n : ℚ) - ((1 : ℚ) / 2 - a (n - 1)))

end

end A247618.P12990834421623086358

namespace A247618

/-- `2*(2*n-(1/2-a(n-1)))` -/
def P12990834421623086358.Spec : Prop :=
  ∀ n, P12990834421623086358.a n = (A247618 n : ℚ)

theorem P12990834421623086358.correct : P12990834421623086358.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A247618, Nat.add_sub_cancel, A247618.P12990834421623086358.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A247618, Nat.add_sub_cancel, A247618.P12990834421623086358.a, A247618.P4960337282067690901.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247618

/-! ## A247618.P15097667968126411001

`∑[A173033(n)]`
-/

namespace A247618.P15097667968126411001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P15097667968126411001

namespace A247618

/-- `∑[A173033(n)]` -/
def P15097667968126411001.Spec : Prop :=
  ∀ n, P15097667968126411001.a n = A247618 n

end A247618

/-! ## A247618.P14419788120802956512

`∑[∑[A077552(n)]]`
-/

namespace A247618.P14419788120802956512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P14419788120802956512

namespace A247618

/-- `∑[∑[A077552(n)]]` -/
def P14419788120802956512.Spec : Prop :=
  ∀ n, P14419788120802956512.a n = A247618 n

end A247618

/-! ## A247618.P1231217349996341458

`∑[A091270(n+1)-1]`
-/

namespace A247618.P1231217349996341458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091270 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P1231217349996341458

namespace A247618

/-- `∑[A091270(n+1)-1]` -/
def P1231217349996341458.Spec : Prop :=
  ∀ n, P1231217349996341458.a n = A247618 n

end A247618

/-! ## A247618.P11959714503912342596

`∑[A307457(n+1)-2]`
-/

namespace A247618.P11959714503912342596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307457 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P11959714503912342596

namespace A247618

/-- `∑[A307457(n+1)-2]` -/
def P11959714503912342596.Spec : Prop :=
  ∀ n, P11959714503912342596.a n = A247618 n

end A247618

/-! ## A247618.P3129098134368200124

`∑[A023758(∑[n+2])]`
-/

namespace A247618.P3129098134368200124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023758 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247618.P3129098134368200124

namespace A247618

/-- `∑[A023758(∑[n+2])]` -/
def P3129098134368200124.Spec : Prop :=
  ∀ n, P3129098134368200124.a n = A247618 n

end A247618

/-!
# A247619: Start with a single pentagon; at n-th generation add a pentagon at each expandable vertex; a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

The programs for A247619, the canonical program `A247619.P7380383791181226722` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247619 has offset 0).

The definition of A247619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247619.P7380383791181226722

`5*A027383(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247619

/-- `5*A027383(n-1)+a(n-1)` -/
def P7380383791181226722.Spec : Prop :=
  ∀ n, P7380383791181226722.a n = A247619 n

theorem P7380383791181226722.correct : P7380383791181226722.Spec := by
  intro n
  simp only [A247619]

end A247619

/-! ## A247619.P18013445069388906640

`2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=36`
-/

namespace A247619.P18013445069388906640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 16, 36] fun n a =>
  2 * a (n - 1) + a (n - 2) - 4 * a (n - 3) + 2 * a (n - 4)

end

end A247619.P18013445069388906640

namespace A247619

/-- `2*a(n-1)+a(n-2)-4*a(n-3)+2*a(n-4)` -/
def P18013445069388906640.Spec : Prop :=
  ∀ n, P18013445069388906640.a n = A247619 n

end A247619

/-! ## A247619.P7686837040935432352

`∑[2*(a(n-2)+5)]+1` with `a(0)=0, a(1)=5`
-/

namespace A247619.P7686837040935432352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  2 * (f1 (n - 2) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247619.P7686837040935432352

namespace A247619

/-- `∑[2*(a(n-2)+5)]+1` -/
def P7686837040935432352.Spec : Prop :=
  ∀ n, (P7686837040935432352.a n : ℤ) = A247619 n

end A247619

/-! ## A247619.P7491338896549959219

`∑[∑[2*a(n-2)]]-n` with `a(0)=1, a(1)=5, a(2)=5`
-/

namespace A247619.P7491338896549959219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5] fun n f2 =>
  2 * f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A247619.P7491338896549959219

namespace A247619

/-- `∑[∑[2*a(n-2)]]-n` -/
def P7491338896549959219.Spec : Prop :=
  ∀ n, P7491338896549959219.a n = A247619 n

end A247619

/-! ## A247619.P18033706922317835921

`∑[A347789(n+1)+A061776(n)]`
-/

namespace A247619.P18033706922317835921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 1) + A061776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247619.P18033706922317835921

namespace A247619

/-- `∑[A347789(n+1)+A061776(n)]` -/
def P18033706922317835921.Spec : Prop :=
  ∀ n, P18033706922317835921.a n = A247619 n

end A247619

/-! ## A247619.P16055199123919238310

`A247903(n)+A247903(n)-A061777(n)`
-/

namespace A247619.P16055199123919238310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247903 n + (A247903 n - A061777 n)

end

end A247619.P16055199123919238310

namespace A247619

/-- `A247903(n)+A247903(n)-A061777(n)` -/
def P16055199123919238310.Spec : Prop :=
  ∀ n, P16055199123919238310.a n = A247619 n

end A247619

/-! ## A247619.P14796181015076883051

`ogf((1+4x+3x^2+2x^3)/(1-2x-x^2+4x^3-2x^4))`
-/

namespace A247619.P14796181015076883051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3, 2] [1, -2, -1, 4, -2] n

end

end A247619.P14796181015076883051

namespace A247619

/-- `ogf((1+4x+3x^2+2x^3)/(1-2x-x^2+4x^3-2x^4))` -/
def P14796181015076883051.Spec : Prop :=
  ∀ n, P14796181015076883051.a n = A247619 n

end A247619

/-! ## A247619.P3205914201586425554

`A061777(n)-(A247903(n)-A247905(n))`
-/

namespace A247619.P3205914201586425554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061777 n - (A247903 n - A247905 n)

end

end A247619.P3205914201586425554

namespace A247619

/-- `A061777(n)-(A247903(n)-A247905(n))` -/
def P3205914201586425554.Spec : Prop :=
  ∀ n, P3205914201586425554.a n = A247619 n

end A247619

/-! ## A247619.P16402985588948635835

`2*A247903(n)-A061777(n)`
-/

namespace A247619.P16402985588948635835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247903 n - A061777 n

end

end A247619.P16402985588948635835

namespace A247619

/-- `2*A247903(n)-A061777(n)` -/
def P16402985588948635835.Spec : Prop :=
  ∀ n, P16402985588948635835.a n = A247619 n

end A247619

/-! ## A247619.P18224611846011669928

`(A247905(n)+A247903(n))/2`
-/

namespace A247619.P18224611846011669928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247905 n + A247903 n : ℚ) / 2

end

end A247619.P18224611846011669928

namespace A247619

/-- `(A247905(n)+A247903(n))/2` -/
def P18224611846011669928.Spec : Prop :=
  ∀ n, P18224611846011669928.a n = (A247619 n : ℚ)

end A247619

/-!
# A247620: Start with a single hexagon; at n-th generation add a hexagon at each expandable vertex; a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

The programs for A247620, the canonical program `A247620.P3501996909612434225` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247620 has offset 0).

The definition of A247620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247620.P3501996909612434225

`3*2^(n+2)-6*n-11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247620

/-- `3*2^(n+2)-6*n-11` -/
def P3501996909612434225.Spec : Prop :=
  ∀ n, P3501996909612434225.a n = A247620 n

theorem P3501996909612434225.correct : P3501996909612434225.Spec := by
  intro n
  simp only [A247620]

end A247620

/-! ## A247620.P3838470824142399043

`∑[ogf((1+3x+2x^2)/(1-3x+2x^2))]`
-/

namespace A247620.P3838470824142399043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247620.P3838470824142399043

namespace A247620

/-- `∑[ogf((1+3x+2x^2)/(1-3x+2x^2))]` -/
def P3838470824142399043.Spec : Prop :=
  ∀ n, P3838470824142399043.a n = A247620 n

end A247620

/-! ## A247620.P14193933496477889517

`ogf((1+3x+2x^2)/(1-4x+5x^2-2x^3))`
-/

namespace A247620.P14193933496477889517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -4, 5, -2] n

end

end A247620.P14193933496477889517

namespace A247620

/-- `ogf((1+3x+2x^2)/(1-4x+5x^2-2x^3))` -/
def P14193933496477889517.Spec : Prop :=
  ∀ n, P14193933496477889517.a n = A247620 n

end A247620

/-! ## A247620.P18354118767307906342

`or(1, ∑[6*(2^n-1)])`
-/

namespace A247620.P18354118767307906342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247620.P18354118767307906342

namespace A247620

/-- `or(1, ∑[6*(2^n-1)])` -/
def P18354118767307906342.Spec : Prop :=
  ∀ n, P18354118767307906342.a n = A247620 n

end A247620

/-! ## A247620.P2400900071371853339

`xor(1, ∑[6*(2^n-1)])`
-/

namespace A247620.P2400900071371853339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247620.P2400900071371853339

namespace A247620

/-- `xor(1, ∑[6*(2^n-1)])` -/
def P2400900071371853339.Spec : Prop :=
  ∀ n, P2400900071371853339.a n = A247620 n

end A247620

/-! ## A247620.P17587412281495240770

`∑[2*(a(n-1)+3)]` with `a(0)=1, a(1)=6`
-/

namespace A247620.P17587412281495240770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  2 * (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247620.P17587412281495240770

namespace A247620

/-- `∑[2*(a(n-1)+3)]` -/
def P17587412281495240770.Spec : Prop :=
  ∀ n, (P17587412281495240770.a n : ℤ) = A247620 n

end A247620

/-! ## A247620.P761156658293451050

`∑[lcm(6, a(n-1)+3)]` with `a(0)=1, a(1)=6`
-/

namespace A247620.P761156658293451050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  Nat.lcm 6 (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247620.P761156658293451050

namespace A247620

/-- `∑[lcm(6, a(n-1)+3)]` -/
def P761156658293451050.Spec : Prop :=
  ∀ n, (P761156658293451050.a n : ℤ) = A247620 n

end A247620

/-! ## A247620.P16201189897643403526

`∑[∑[2*a(n-1)]-1]` with `a(0)=2, a(1)=5, a(2)=12`
-/

namespace A247620.P16201189897643403526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 12] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247620.P16201189897643403526

namespace A247620

/-- `∑[∑[2*a(n-1)]-1]` -/
def P16201189897643403526.Spec : Prop :=
  ∀ n, P16201189897643403526.a n = A247620 n

end A247620

/-! ## A247620.P7519060663142325332

`∑[a(n-1)+a(n-1)+6]` with `a(0)=1, a(1)=6`
-/

namespace A247620.P7519060663142325332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247620.P7519060663142325332

namespace A247620

/-- `∑[a(n-1)+a(n-1)+6]` -/
def P7519060663142325332.Spec : Prop :=
  ∀ n, (P7519060663142325332.a n : ℤ) = A247620 n

end A247620

/-! ## A247620.P158169338312924918

`∑[A068293(n+1)]`
-/

namespace A247620.P158169338312924918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247620.P158169338312924918

namespace A247620

/-- `∑[A068293(n+1)]` -/
def P158169338312924918.Spec : Prop :=
  ∀ n, P158169338312924918.a n = A247620 n

end A247620

/-! ## A247620.P10413315223872292630

`∑[A061776(2*n)]`
-/

namespace A247620.P10413315223872292630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061776 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247620.P10413315223872292630

namespace A247620

/-- `∑[A061776(2*n)]` -/
def P10413315223872292630.Spec : Prop :=
  ∀ n, P10413315223872292630.a n = A247620 n

end A247620

/-! ## A247620.P4542277672292536928

`A350129(3*n+2)`
-/

namespace A247620.P4542277672292536928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350129 (3 * n + 2)

end

end A247620.P4542277672292536928

namespace A247620

/-- `A350129(3*n+2)` -/
def P4542277672292536928.Spec : Prop :=
  ∀ n, P4542277672292536928.a n = A247620 n

end A247620

/-! ## A247620.P3151065086595887881

`(A061777(2*n)+A027383(2*n))/2`
-/

namespace A247620.P3151065086595887881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061777 (2 * n) + A027383 (2 * n) : ℚ) / 2

end

end A247620.P3151065086595887881

namespace A247620

/-- `(A061777(2*n)+A027383(2*n))/2` -/
def P3151065086595887881.Spec : Prop :=
  ∀ n, P3151065086595887881.a n = (A247620 n : ℚ)

end A247620

/-! ## A247620.P1646281393827119959

`A069993(n+1)%A250162(n+1)`
-/

namespace A247620.P1646281393827119959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069993 (n + 1)) (A250162 (n + 1))

end

end A247620.P1646281393827119959

namespace A247620

/-- `A069993(n+1)%A250162(n+1)` -/
def P1646281393827119959.Spec : Prop :=
  ∀ n, P1646281393827119959.a n = A247620 n

end A247620

/-!
# A247622: Triangular array: T(n,k) = number of paths from (0,0) to (n,k), each segment given by a vector (1,1), (1,-1), or (2,0), not crossing the x-axis, and including no horizontal segment on the x-axis.

The programs for A247622, there is no canonical definition to state claims against.
-/

/-! ## A247622.P10104616337068575945

`A276611(A256036(n))`
-/

namespace A247622.P10104616337068575945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A256036 n).toNat

end

end A247622.P10104616337068575945

/-! ## A247622.P9255456197148470084

`A276611(A242653(n)^3)`
-/

namespace A247622.P9255456197148470084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A242653 n ^ 3).toNat

end

end A247622.P9255456197148470084

/-! ## A247622.P574961102713172401

`∑{d}[A131577(A242653(n)), A006530(#)]`
-/

namespace A247622.P574961102713172401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A242653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A247622.P574961102713172401

/-! ## A247622.P16833179115512178048

`∑{d}[A131577(A242653(n)), A014963(#)]`
-/

namespace A247622.P16833179115512178048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A242653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A247622.P16833179115512178048

/-! ## A247622.P2900249654276117024

`∑{d}[A131577(A242653(n)), A020639(#)]`
-/

namespace A247622.P2900249654276117024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A242653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A247622.P2900249654276117024

/-!
# A247623: Number of paths from (0,0) to the line x = n, each segment given by a vector (1,1), (1,-1), or (2,0), not crossing the x-axis, and including no horizontal segment on the x-axis.

The programs for A247623, there is no canonical definition to state claims against.
-/

/-! ## A247623.P11285414761676532068

`ceil(A110110(n)/2)`
-/

namespace A247623.P11285414761676532068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110110 n : ℚ) / 2⌉

end

end A247623.P11285414761676532068

/-! ## A247623.P1663240183884799435

`A110110(n)/A036453(n+1)`
-/

namespace A247623.P1663240183884799435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A247623.P1663240183884799435

/-! ## A247623.P12474090256677424822

`A110110(A000007(n)+n)/2`
-/

namespace A247623.P12474090256677424822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A247623.P12474090256677424822

/-! ## A247623.P931646528459660903

`A110110(n)/(2-A000007(n))`
-/

namespace A247623.P931646528459660903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (2 - A000007 n : ℚ)

end

end A247623.P931646528459660903

/-! ## A247623.P13172030537792251149

`A110110(A004277(n)-n)/2`
-/

namespace A247623.P13172030537792251149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A247623.P13172030537792251149

/-! ## A247623.P9827333016541090790

`A110110(n)/A020639(A001316(n))`
-/

namespace A247623.P9827333016541090790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A247623.P9827333016541090790

/-! ## A247623.P6416405652704556877

`A110110(n)/A020639(A004277(n))`
-/

namespace A247623.P6416405652704556877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A247623.P6416405652704556877

/-! ## A247623.P14710360017324688441

`A110110(n)/A020639(A037225(n))`
-/

namespace A247623.P14710360017324688441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (A020639 (A037225 n).toNat : ℚ)

end

end A247623.P14710360017324688441

/-! ## A247623.P12717581907161412129

`A110110(n)/A020639(A286631(n))`
-/

namespace A247623.P12717581907161412129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (A020639 (A286631 n).toNat : ℚ)

end

end A247623.P12717581907161412129

/-! ## A247623.P46760561397536587

`A110110(n)/A000005(A090368(n+1))`
-/

namespace A247623.P46760561397536587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (A000005 (A090368 (n + 1)).toNat : ℚ)

end

end A247623.P46760561397536587

/-! ## A247623.P17399891499124974090

`∑[A247630(n)]/gcd(2, A247630(n+1))`
-/

namespace A247623.P17399891499124974090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Int.gcd 2 (A247630 (n + 1)) : ℚ)

end

end A247623.P17399891499124974090

/-! ## A247623.P5389080653196777727

`A110110(n)/A020639(A025487(n+1))`
-/

namespace A247623.P5389080653196777727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110110 n : ℚ) / (A020639 (A025487 (n + 1)).toNat : ℚ)

end

end A247623.P5389080653196777727

/-! ## A247623.P2646165781478916271

`A142978(floor(n²/2)+1)`
-/

namespace A247623.P2646165781478916271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142978 (⌊(n ^ 2 : ℚ) / 2⌋ + 1).toNat

end

end A247623.P2646165781478916271

/-! ## A247623.P14884997634941345761

`A101603(A007590(n+1))`
-/

namespace A247623.P14884997634941345761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 (A007590 (n + 1)).toNat

end

end A247623.P14884997634941345761

/-! ## A247623.P17609132292773216849

`A217874(A061925(n+1)-2)`
-/

namespace A247623.P17609132292773216849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217874 (A061925 (n + 1) - 2).toNat

end

end A247623.P17609132292773216849

/-! ## A247623.P16668909416154124278

`A001003(n)/A006318(n)*A110110(n)`
-/

namespace A247623.P16668909416154124278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) / (A006318 n : ℚ) * (A110110 n : ℚ)

end

end A247623.P16668909416154124278

/-! ## A247623.P1586728253531783870

`A101603(A004525(n²)+n)`
-/

namespace A247623.P1586728253531783870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101603 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A247623.P1586728253531783870

/-!
# A247624: Knife numbers (first version): n=concat(a,b) is divisible by a+b; a,b>0.

The programs for A247624, there is no canonical definition to state claims against.
-/

/-! ## A247624.P1695119208458090962

`∩[A247627(A120951(n+1)), A247625(n+1)]`
-/

namespace A247624.P1695119208458090962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (A120951 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247624.P1695119208458090962

/-! ## A247624.P13052810501087478826

`∩[A247625(n+1), A247627(n+1)]`
-/

namespace A247624.P13052810501087478826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247624.P13052810501087478826

/-! ## A247624.P4004142916601361082

`∩[A247625(n+1), A046349(A020710(n))]`
-/

namespace A247624.P4004142916601361082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (A020710 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247624.P4004142916601361082

/-! ## A247624.P6318148613418834233

`∩[A046349(n+1), A247625(n+1)]`
-/

namespace A247624.P6318148613418834233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247624.P6318148613418834233

/-! ## A247624.P10002520880513099923

`∩[A033620(A133576(n+1)), A247625(n+1)]`
-/

namespace A247624.P10002520880513099923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (A133576 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247624.P10002520880513099923

/-!
# A247625: Knife numbers (second version): n=concat(a,b) is divisible by a+b; a>0; b must not have leading zeros.

The programs for A247625, there is no canonical definition to state claims against.
-/

/-! ## A247625.P1689027033221802487

`∩[A247626(n+1), A119247(n+2)]`
-/

namespace A247625.P1689027033221802487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119247 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247625.P1689027033221802487

/-! ## A247625.P1035397059346691668

`∪[A171674(n+1), A247624(A055645(n)+2)]`
-/

namespace A247625.P1035397059346691668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247624 (A055645 n + 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247625.P1035397059346691668

/-! ## A247625.P9637525819462873832

`∪[A171674(A043320(n+1)+2), A247624(n+1)]`
-/

namespace A247625.P9637525819462873832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171674 (A043320 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247625.P9637525819462873832

/-! ## A247625.P18438649976217121015

`∪[A171674(A044917(n+1)+2), A247624(n+1)]`
-/

namespace A247625.P18438649976217121015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171674 (A044917 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247625.P18438649976217121015

/-! ## A247625.P12383407277954969271

`∩[A247626(n+1), A342051(n+1)]`
-/

namespace A247625.P12383407277954969271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247625.P12383407277954969271

/-!
# A247626: Knife numbers (third version): n=concat(a,b) is divisible by a+b; a>0, b may have leading zeros.

The programs for A247626, there is no canonical definition to state claims against.
-/

/-! ## A247626.P7029006209201618672

`∪[A008592(n+1), A247625(n+1)]`
-/

namespace A247626.P7029006209201618672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247626.P7029006209201618672

/-! ## A247626.P15921031921644337758

`∪[A096092(n+1), A247625(n+1)]`
-/

namespace A247626.P15921031921644337758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247626.P15921031921644337758

/-! ## A247626.P15814561921763719887

`∪[A247625(n+1), A247627(n+1)]`
-/

namespace A247626.P15814561921763719887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247626.P15814561921763719887

/-! ## A247626.P4219578809130735396

`∪[A247627(n+1), A247625(A020710(n))]`
-/

namespace A247626.P4219578809130735396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247625 (A020710 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247626.P4219578809130735396

/-! ## A247626.P9624216884762409786

`filter[A214602(n+2), A188641(#)]`
-/

namespace A247626.P9624216884762409786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A247626.P9624216884762409786

/-!
# A247627: Knife numbers (fourth version): n=concat(a,b) is divisible by a+b; a>0 and b may be zero but not have leading zeros.

The programs for A247627, there is no canonical definition to state claims against.
-/

/-! ## A247627.P14426991759282813044

`∪[A008592(n+1), A247624(n+1)]`
-/

namespace A247627.P14426991759282813044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247627.P14426991759282813044

/-! ## A247627.P15839286307128973161

`∪[A096092(n+1), A247624(n+1)]`
-/

namespace A247627.P15839286307128973161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247627.P15839286307128973161

/-! ## A247627.P14926582849927150703

`∩[A080197(A133576(n+1)), A247626(n+1)]`
-/

namespace A247627.P14926582849927150703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (A133576 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247627.P14926582849927150703

/-! ## A247627.P1328640978141269112

`∩[A247626(n+1), A080197(n+5)]`
-/

namespace A247627.P1328640978141269112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247627.P1328640978141269112

/-! ## A247627.P10564476376483567075

`∩[A247626(n+1), A349898(n+1)]`
-/

namespace A247627.P10564476376483567075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247627.P10564476376483567075

/-!
# A247629: Triangular array: T(n,k) = number of paths from (0,0) to (n,k), each segment given by a vector (1,1), (1,-1), or (2,0), not crossing the x-axis.

The programs for A247629, there is no canonical definition to state claims against.
-/

/-! ## A247629.P4339417130032619407

`A100196(A003056(A137286(n)²))`
-/

namespace A247629.P4339417130032619407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A003056 (A137286 n ^ 2).toNat).toNat

end

end A247629.P4339417130032619407

/-! ## A247629.P17283003454199220

`A155726(A060524(n))`
-/

namespace A247629.P17283003454199220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155726 (A060524 n).toNat

end

end A247629.P17283003454199220

/-! ## A247629.P13984840381921805618

`A072660(A156960(n))`
-/

namespace A247629.P13984840381921805618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072660 (A156960 n).toNat

end

end A247629.P13984840381921805618

/-! ## A247629.P11174528865926147901

`A147981(A188832(n+1))`
-/

namespace A247629.P11174528865926147901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A188832 (n + 1)).toNat

end

end A247629.P11174528865926147901

/-! ## A247629.P13669908420479294374

`A325678(A059419(n+1))`
-/

namespace A247629.P13669908420479294374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A059419 (n + 1)).toNat

end

end A247629.P13669908420479294374

/-!
# A247630: Number of paths from (0,0) to the line x = n, each segment given by a vector (1,1), (1,-1), or (2,0), not crossing the x-axis, and including no horizontal segment on the x-axis.

The programs for A247630, there is no canonical definition to state claims against.
-/

/-! ## A247630.P14565234862846630817

`A128966(A080476(n+1))`
-/

namespace A247630.P14565234862846630817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128966 (A080476 (n + 1)).toNat

end

end A247630.P14565234862846630817

/-! ## A247630.P1412055444503719941

`A342735(A122852(n))`
-/

namespace A247630.P1412055444503719941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342735 (A122852 n).toNat

end

end A247630.P1412055444503719941

/-! ## A247630.P9587023220129178493

`A382092(A298897(n+2))`
-/

namespace A247630.P9587023220129178493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382092 (A298897 (n + 2)).toNat

end

end A247630.P9587023220129178493

/-! ## A247630.P2735317507334696154

`A378294(A368032(n+2))`
-/

namespace A247630.P2735317507334696154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378294 (A368032 (n + 2)).toNat

end

end A247630.P2735317507334696154

/-!
# A247631: Numbers k such that d(r,k) = 0 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(8)}, and { } = fractional part.

The programs for A247631, there is no canonical definition to state claims against.
-/

/-! ## A247631.P4775827795805432280

`A293761(n+1)-1`
-/

namespace A247631.P4775827795805432280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293761 (n + 1) - 1

end

end A247631.P4775827795805432280

/-! ## A247631.P4190542630076398928

`∩[A247635(n+1), A320985(n+1)]`
-/

namespace A247631.P4190542630076398928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247631.P4190542630076398928

/-! ## A247631.P9406378697648964041

`∩[A246339(n+1), A320985(n+1)]-1`
-/

namespace A247631.P9406378697648964041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A247631.P9406378697648964041

/-! ## A247631.P5412852181204349885

`A023443(A293761(n+1))`
-/

namespace A247631.P5412852181204349885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A293761 (n + 1)).toNat

end

end A247631.P5412852181204349885

/-! ## A247631.P6007008612601772088

`eq[Δ[A004539(n+1)], A004539(n+1)]`
-/

namespace A247631.P6007008612601772088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A247631.P6007008612601772088

/-! ## A247631.P93208223987474149

`eq[tan(A004539(n+1)), A004539(n+2)]`
-/

namespace A247631.P93208223987474149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A004539 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A247631.P93208223987474149

/-! ## A247631.P16900808173696137041

`eq[A004539(n+2)/A002378(n+1), A004539(n+1)]`
-/

namespace A247631.P16900808173696137041
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004539 (n + 2) : ℚ) / (A002378 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A247631.P16900808173696137041

/-! ## A247631.P821991910244594076

`eq[A004539(n+2)/A219085(n+1), A004539(n+1)]`
-/

namespace A247631.P821991910244594076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004539 (n + 2) : ℚ) / (A219085 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A247631.P821991910244594076

/-!
# A247632: Numbers k such that d(r,k) = 0 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(8)}, and { } = fractional part.

The programs for A247632, there is no canonical definition to state claims against.
-/

/-! ## A247632.P4341719722155401248

`A293762(n+1)-1`
-/

namespace A247632.P4341719722155401248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293762 (n + 1) - 1

end

end A247632.P4341719722155401248

/-! ## A247632.P6747599045691519214

`∩[A092855(n+1), A246339(n+1)]-1`
-/

namespace A247632.P6747599045691519214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A247632.P6747599045691519214

/-! ## A247632.P5034276611170174982

`∩[A004713(n+1)-2, A320985(n+1)]`
-/

namespace A247632.P5034276611170174982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247632.P5034276611170174982

/-! ## A247632.P9575462011611171966

`A247636(Δ[n²])`
-/

namespace A247632.P9575462011611171966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A247632.P9575462011611171966

/-! ## A247632.P8306678348505267826

`A247636(2*n+1)/floor(sqrt(3^(n%2)))`
-/

namespace A247632.P8306678348505267826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247636 (2 * n + 1) : ℚ) / (Nat.sqrt (3 ^ (n % 2)) : ℚ)

end

end A247632.P8306678348505267826

/-! ## A247632.P11391688084023307179

`∩[A247636(n+1), A320985(n+1)]`
-/

namespace A247632.P11391688084023307179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247632.P11391688084023307179

/-! ## A247632.P2442217279792262465

`record[A247636(n+1)-A029578(n)]+n`
-/

namespace A247632.P2442217279792262465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (n + 1) - A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A247632.P2442217279792262465

/-! ## A247632.P4459847056970892026

`∩[A092855(n+1)-1, A247636(n+1)]`
-/

namespace A247632.P4459847056970892026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247632.P4459847056970892026

/-! ## A247632.P2086789431096107330

`A293763(n+1)+A233836(2*(n+1))-1`
-/

namespace A247632.P2086789431096107330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 1) + A233836 (2 * (n + 1)) - 1

end

end A247632.P2086789431096107330

/-! ## A247632.P2468437907317795416

`eq[char[A293761(n+1)-1], A004539(n+1)]`
-/

namespace A247632.P2468437907317795416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293761 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A247632.P2468437907317795416

/-! ## A247632.P6533637707257608515

`lt[0, Δ[A004539(n+1)]]`
-/

namespace A247632.P6533637707257608515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247632.P6533637707257608515

/-! ## A247632.P12223500835564266108

`A023443(A293762(n+1))`
-/

namespace A247632.P12223500835564266108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A293762 (n + 1)).toNat

end

end A247632.P12223500835564266108

/-! ## A247632.P129602976406557769

`lt[A004539(n+1), A004539(n+2)]`
-/

namespace A247632.P129602976406557769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247632.P129602976406557769

/-!
# A247633: Numbers k such that d(r,k) = 1 and d(s,k) = 0, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(8)}, and { } = fractional part.

The programs for A247633, there is no canonical definition to state claims against.
-/

/-! ## A247633.P7705336007309957685

`A293763(n+2)-1`
-/

namespace A247633.P7705336007309957685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 2) - 1

end

end A247633.P7705336007309957685

/-! ## A247633.P2758500927405547477

`∑[abs(Δ[A293763(n+1)])]`
-/

namespace A247633.P2758500927405547477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247633.P2758500927405547477

/-! ## A247633.P17163974747809398410

`∑[A000027(Δ[A293763(n+1)])]`
-/

namespace A247633.P17163974747809398410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247633.P17163974747809398410

/-! ## A247633.P9168758207360920415

`∩[A092855(n+1), A246339(n+1)-2]`
-/

namespace A247633.P9168758207360920415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247633.P9168758207360920415

/-! ## A247633.P15233184447769958477

`A247636(2*(n+1))`
-/

namespace A247633.P15233184447769958477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (2 * (n + 1))

end

end A247633.P15233184447769958477

/-! ## A247633.P8930459443301443342

`record[A247636(and(n, n+1)+2)]`
-/

namespace A247633.P8930459443301443342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (Nat.land n (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247633.P8930459443301443342

/-! ## A247633.P4771140402183167623

`record[A247636((n+1)%88+n+1)]`
-/

namespace A247633.P4771140402183167623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 ((n + 1) % 88 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247633.P4771140402183167623

/-! ## A247633.P17556733919395635831

`∩[A092855(n+1), A247636(n+1)]`
-/

namespace A247633.P17556733919395635831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247633.P17556733919395635831

/-! ## A247633.P10909147421754740998

`∩[A247636(n+1), A320985(n+1)-1]`
-/

namespace A247633.P10909147421754740998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247633.P10909147421754740998

/-! ## A247633.P15017279244529294475

`A247636(Δ[A002378(n)])%A000040(n+3)²`
-/

namespace A247633.P15017279244529294475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247636 (f1 (n + 1) - f1 n).toNat) (A000040 (n + 3) ^ 2)

end

end A247633.P15017279244529294475

/-! ## A247633.P12233778162867044876

`record[A247636(A029578(n+3))]`
-/

namespace A247633.P12233778162867044876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (A029578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247633.P12233778162867044876

/-! ## A247633.P2248800544497034291

`A023443(A293763(n+2))`
-/

namespace A247633.P2248800544497034291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A293763 (n + 2)).toNat

end

end A247633.P2248800544497034291

/-! ## A247633.P7916073940043546526

`eq[1, Δ[A054977(n)-A004539(n+1)]]`
-/

namespace A247633.P7916073940043546526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247633.P7916073940043546526

/-! ## A247633.P17931402483194109315

`eq[1, Δ[A057427(n)-A004539(n+1)]]`
-/

namespace A247633.P17931402483194109315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247633.P17931402483194109315

/-! ## A247633.P12702721260106285533

`lt[A004539(A028310(n)+2), A004539(n+1)]`
-/

namespace A247633.P12702721260106285533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A028310 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247633.P12702721260106285533

/-!
# A247634: Numbers k such that d(r,k) = 1 and d(s,k) = 1, where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(8)}, and { } = fractional part.

The programs for A247634, there is no canonical definition to state claims against.
-/

/-! ## A247634.P15873430779895749597

`A293764(n+1)-1`
-/

namespace A247634.P15873430779895749597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293764 (n + 1) - 1

end

end A247634.P15873430779895749597

/-! ## A247634.P1636464163338984764

`A322119(A266072(2*n))+A293764(n+1)`
-/

namespace A247634.P1636464163338984764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322119 (A266072 (2 * n)).toNat + A293764 (n + 1)

end

end A247634.P1636464163338984764

/-! ## A247634.P678421686281932442

`∩[A092855(n+1), A247635(n+1)]`
-/

namespace A247634.P678421686281932442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247634.P678421686281932442

/-! ## A247634.P8868807681756904027

`∩[A004713(n+1), A092855(n+1)]-1`
-/

namespace A247634.P8868807681756904027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A247634.P8868807681756904027

/-! ## A247634.P3763556061157695181

`eq[1, Δ[n*A004539(n+1)]]`
-/

namespace A247634.P3763556061157695181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247634.P3763556061157695181

/-! ## A247634.P1929645173544171311

`A023443(A293764(n+1))`
-/

namespace A247634.P1929645173544171311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A293764 (n + 1)).toNat

end

end A247634.P1929645173544171311

/-! ## A247634.P1806558221785092890

`A023444(A293764(n+1)+1)`
-/

namespace A247634.P1806558221785092890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A293764 (n + 1) + 1).toNat

end

end A247634.P1806558221785092890

/-! ## A247634.P6519604081864752423

`lt[acot(A004539(n+1)), A004539(n+2)]`
-/

namespace A247634.P6519604081864752423
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A004539 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A247634.P6519604081864752423

/-! ## A247634.P4073046692770134409

`eq[1, A004539(A004539(n+1)+1+n)]`
-/

namespace A247634.P4073046692770134409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A004539 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247634.P4073046692770134409

/-! ## A247634.P9068029618670952042

`A349920(A000040(n+1))+A293764(n+1)`
-/

namespace A247634.P9068029618670952042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (A000040 (n + 1)).toNat + A293764 (n + 1)

end

end A247634.P9068029618670952042

/-! ## A247634.P32085801841724665

`A349920(record[A014963(n+2)])+A293764(n+1)`
-/

namespace A247634.P32085801841724665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349920 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A293764 (n + 1)

end

end A247634.P32085801841724665

/-! ## A247634.P14212535703248044228

`gcd(A000038(n), A233583(A293764(n+1)))`
-/

namespace A247634.P14212535703248044228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A233583 (A293764 (n + 1)).toNat)

end

end A247634.P14212535703248044228

/-! ## A247634.P15389950400861363862

`A233583(xor(A000038(n), A293764(n+1)))`
-/

namespace A247634.P15389950400861363862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.xor (A000038 n) (A293764 (n + 1))).toNat

end

end A247634.P15389950400861363862

/-!
# A247635: Numbers k such that d(r,k) = d(s,k), where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(8)}, and { } = fractional part.

The programs for A247635, there is no canonical definition to state claims against.
-/

/-! ## A247635.P12074951194576402

`∪[A247631(n+1), A247634(n+1)]`
-/

namespace A247635.P12074951194576402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247635.P12074951194576402

/-! ## A247635.P5324761392768717114

`eq[0, Δ[A004539(n+1)]]`
-/

namespace A247635.P5324761392768717114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247635.P5324761392768717114

/-! ## A247635.P12569904819901393426

`eq[A004539(n+1), A004539(n+2)]`
-/

namespace A247635.P12569904819901393426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247635.P12569904819901393426

/-! ## A247635.P13976346449479251098

`lt[A001644(Δ[A004539(n+1)]+1), 2]`
-/

namespace A247635.P13976346449479251098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (f2 (n + 1) - f2 n + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A247635.P13976346449479251098

/-! ## A247635.P11528329961746054570

`lt[A004539(Δ[A004539(n+1)]+2), 1]`
-/

namespace A247635.P11528329961746054570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (f2 (n + 1) - f2 n + 2).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A247635.P11528329961746054570

/-! ## A247635.P17999549182877147460

`eq[2, gcd(2, A017911(2*n+1))]`
-/

namespace A247635.P17999549182877147460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A017911 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247635.P17999549182877147460

/-!
# A247636: Numbers k such that d(r,k) != d(s,k), where d(x,k) = k-th binary digit of x, r = {sqrt(2)}, s = {sqrt(8)}, and { } = fractional part.

The programs for A247636, there is no canonical definition to state claims against.
-/

/-! ## A247636.P14728303724005932291

`∪[A247632(n+1), A247633(n+1)]`
-/

namespace A247636.P14728303724005932291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247636.P14728303724005932291

/-! ## A247636.P8168873639409197731

`∑[A233836(n+2)]`
-/

namespace A247636.P8168873639409197731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233836 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247636.P8168873639409197731

/-! ## A247636.P2324015472760944193

`Δ[A233836(n+1)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A247636.P2324015472760944193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A233836 (n + 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A247636.P2324015472760944193

/-! ## A247636.P5760912923503131505

`eq[Δ[A004539(n+1)]², A054977(n)]`
-/

namespace A247636.P5760912923503131505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A247636.P5760912923503131505

/-! ## A247636.P9060015317073027458

`eq[Δ[A004539(n+1)]², A057427(n)]`
-/

namespace A247636.P9060015317073027458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A247636.P9060015317073027458

/-! ## A247636.P11009979008906810732

`record[Δ[A004539(n+1)]²*A028310(n)]`
-/

namespace A247636.P11009979008906810732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247636.P11009979008906810732

/-! ## A247636.P11919409786076149142

`eq[Δ[A004539(n+1)]², A019426(2*n)]`
-/

namespace A247636.P11919409786076149142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A247636.P11919409786076149142

/-!
# A247637: Hilbert series of combinatorial Hopf algebra H(Heap_1).

The programs for A247637, there is no canonical definition to state claims against.
-/

/-! ## A247637.P6256902406755740072

`A174571(ceil(3^(n-1))+ceil(5^n/2))`
-/

namespace A247637.P6256902406755740072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ⌈(5 ^ n : ℚ) / 2⌉).toNat

end

end A247637.P6256902406755740072

/-! ## A247637.P13042612556142399021

`A065033(ceil(∑[3^(n-2)])+floor(5^n/4))`
-/

namespace A247637.P13042612556142399021
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + ⌊(5 ^ n : ℚ) / 4⌋).toNat

end

end A247637.P13042612556142399021

/-! ## A247637.P9332181459530024222

`A004526((5^n-2*3^n+1)/4)+ceil(3^(n-1))`
-/

namespace A247637.P9332181459530024222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (2 * 3 ^ n : ℤ) + 1 : ℚ) / 4)).toNat + ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A247637.P9332181459530024222

/-!
# A247638: Hilbert series of combinatorial Hopf algebra H(Heap_2).

The programs for A247638, there is no canonical definition to state claims against.
-/

/-! ## A247638.P3277633445087909584

`A263089((n+3)^n)-n`
-/

namespace A247638.P3277633445087909584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263089 ((n + 3) ^ n) - (n : ℤ)

end

end A247638.P3277633445087909584

/-!
# A247639: Dimensions of algebraic generators of combinatorial Hopf algebra H(Heap_2).

The programs for A247639, there is no canonical definition to state claims against.
-/

/-! ## A247639.P5562600998975694223

`record[A103221(A127846(n))]`
-/

namespace A247639.P5562600998975694223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A127846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247639.P5562600998975694223

/-!
# A247640: Number of ON cells after n generations of "Odd-Rule" cellular automaton on hexagonal lattice based on 6-celled neighborhood.

The programs for A247640, there is no canonical definition to state claims against.
-/

/-! ## A247640.P11741014292829139229

`A383369(2*n)`
-/

namespace A247640.P11741014292829139229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383369 (2 * n)

end

end A247640.P11741014292829139229

/-! ## A247640.P8688150160459673404

`A268444(2*(2*∑[and(n, -n)²]+n))`
-/

namespace A247640.P8688150160459673404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (2 * (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ))).toNat

end

end A247640.P8688150160459673404

/-! ## A247640.P5809741650210271420

`a(and(n, n-1))*A007400(4*n+2)` with `a(0)=1`
-/

namespace A247640.P5809741650210271420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat * A007400 (4 * n + 2)

end

end A247640.P5809741650210271420

/-! ## A247640.P17232043934899060430

`A179276(A255470(n))`
-/

namespace A247640.P17232043934899060430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179276 (A255470 n).toNat

end

end A247640.P17232043934899060430

/-! ## A247640.P7476056655857440589

`A385138(A255473(n))`
-/

namespace A247640.P7476056655857440589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385138 (A255473 n).toNat

end

end A247640.P7476056655857440589

/-! ## A247640.P16314354629155640744

`A268444(2*A001196(n))`
-/

namespace A247640.P16314354629155640744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (2 * A001196 n).toNat

end

end A247640.P16314354629155640744

/-! ## A247640.P9027846150318668061

`A268444(3*A062880(n))`
-/

namespace A247640.P9027846150318668061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (3 * A062880 n).toNat

end

end A247640.P9027846150318668061

/-! ## A247640.P7070750094348905922

`A268444(6*A000695(n))`
-/

namespace A247640.P7070750094348905922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (6 * A000695 n).toNat

end

end A247640.P7070750094348905922

/-! ## A247640.P12804044061615520781

`A268444(A008585(43*n))`
-/

namespace A247640.P12804044061615520781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A008585 (43 * n)).toNat

end

end A247640.P12804044061615520781

/-! ## A247640.P16893864139185218578

`A268444(A008588(43*n))`
-/

namespace A247640.P16893864139185218578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A008588 (43 * n)).toNat

end

end A247640.P16893864139185218578

/-!
# A247642: Triangle read by rows: T(n,2k+1) = T(n-1,2k-1)+T(n-1,2k), T(n,2k) = T(n-1,2k-2)+2T(n-1,2k-1)+T(n-1,2k).

The programs for A247642, there is no canonical definition to state claims against.
-/

/-! ## A247642.P8922937077105355787

`A247645(A020703(n+2))`
-/

namespace A247642.P8922937077105355787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A020703 (n + 2)).toNat

end

end A247642.P8922937077105355787

/-! ## A247642.P307658485272118531

`A247645(abs(3-A094064(n)))`
-/

namespace A247642.P307658485272118531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 |3 - A094064 n|.toNat

end

end A247642.P307658485272118531

/-! ## A247642.P12193689524107869946

`A247645(A094064(n+2)-1)`
-/

namespace A247642.P12193689524107869946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (A094064 (n + 2) - 1).toNat

end

end A247642.P12193689524107869946

/-! ## A247642.P15066945211606940142

`A247645(∑[-Δ[-A094064(n+1)]])`
-/

namespace A247642.P15066945211606940142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A094064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247645 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247642.P15066945211606940142

/-!
# A247643: a(n) = ( 10*n*(n+1)+(2*n+1)*(-1)^n+7 )/8.

The programs for A247643, the canonical program `A247643.P12201572840659621056` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247643 has offset 0).

The definition of A247643 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n*(n+1)+(2*n+1)*(-1)^n+7)/8` (program `A247643.P5700587664353696846`, by `A247643.P5700587664353696846.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247643.P5700587664353696846

`(10*n*(n+1)+(2*n+1)*(-1)^n+7)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247643.P5700587664353696846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n * (n + 1)) : ℤ) + (2 * n + 1 : ℤ) * (-1) ^ n + 7 : ℚ) / 8

end

end A247643.P5700587664353696846

namespace A247643

/-- `(10*n*(n+1)+(2*n+1)*(-1)^n+7)/8` -/
def P5700587664353696846.Spec : Prop :=
  ∀ n, P5700587664353696846.a n = (A247643 n : ℚ)

theorem P5700587664353696846.correct : P5700587664353696846.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A247643, Nat.add_sub_cancel, A247643.P5700587664353696846.a, A247643.P12201572840659621056.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A247643, Nat.add_sub_cancel, A247643.P5700587664353696846.a, A247643.P12201572840659621056.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247643

/-! ## A247643.P12201572840659621056

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=15, a(4)=27`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247643

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P12201572840659621056.Spec : Prop :=
  ∀ n, P12201572840659621056.a n = A247643 n

theorem P12201572840659621056.correct : P12201572840659621056.Spec := by
  intro n
  simp only [A247643]

end A247643

/-! ## A247643.P3630131027502659966

`1+2*A085787(n)`
-/

namespace A247643.P3630131027502659966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A085787 n

end

end A247643.P3630131027502659966

namespace A247643

/-- `1+2*A085787(n)` -/
def P3630131027502659966.Spec : Prop :=
  ∀ n, P3630131027502659966.a n = A247643 n

end A247643

/-! ## A247643.P6185421633736828457

`∑[C(or(1, n), n)]+n²`
-/

namespace A247643.P6185421633736828457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A247643.P6185421633736828457

namespace A247643

/-- `∑[C(or(1, n), n)]+n²` -/
def P6185421633736828457.Spec : Prop :=
  ∀ n, (P6185421633736828457.a n : ℤ) = A247643 n

end A247643

/-! ## A247643.P15940575221145671546

`∑[n*(gcd(2, n)+1)]+1`
-/

namespace A247643.P15940575221145671546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247643.P15940575221145671546

namespace A247643

/-- `∑[n*(gcd(2, n)+1)]+1` -/
def P15940575221145671546.Spec : Prop :=
  ∀ n, (P15940575221145671546.a n : ℤ) = A247643 n

end A247643

/-! ## A247643.P3564267672298605220

`∑[n*(3-n%2)]+1`
-/

namespace A247643.P3564267672298605220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A247643.P3564267672298605220

namespace A247643

/-- `∑[n*(3-n%2)]+1` -/
def P3564267672298605220.Spec : Prop :=
  ∀ n, P3564267672298605220.a n = A247643 n

end A247643

/-! ## A247643.P12991118699276349114

`∑[gcd(n+1, and(1, n))]+n²`
-/

namespace A247643.P12991118699276349114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A247643.P12991118699276349114

namespace A247643

/-- `∑[gcd(n+1, and(1, n))]+n²` -/
def P12991118699276349114.Spec : Prop :=
  ∀ n, (P12991118699276349114.a n : ℤ) = A247643 n

end A247643

/-! ## A247643.P7573317516128168699

`∑[∏{p}[n, #^val(2*n, #)]+n]`
-/

namespace A247643.P7573317516128168699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (2 * n) p + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247643.P7573317516128168699

namespace A247643

/-- `∑[∏{p}[n, #^val(2*n, #)]+n]` -/
def P7573317516128168699.Spec : Prop :=
  ∀ n, (P7573317516128168699.a n : ℤ) = A247643 n

end A247643

/-! ## A247643.P14328117617922666430

`∑[2*n+1-lcm(2, n)]+n²`
-/

namespace A247643.P14328117617922666430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.lcm 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A247643.P14328117617922666430

namespace A247643

/-- `∑[2*n+1-lcm(2, n)]+n²` -/
def P14328117617922666430.Spec : Prop :=
  ∀ n, P14328117617922666430.a n = A247643 n

end A247643

/-! ## A247643.P3717201478762907728

`∑[C(n+1, and(1, n+1))]+n²`
-/

namespace A247643.P3717201478762907728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Nat.land 1 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A247643.P3717201478762907728

namespace A247643

/-- `∑[C(n+1, and(1, n+1))]+n²` -/
def P3717201478762907728.Spec : Prop :=
  ∀ n, (P3717201478762907728.a n : ℤ) = A247643 n

end A247643

/-! ## A247643.P3265241031864597679

`a(n-1)-n*((1-n)%2-2)` with `a(0)=1`
-/

namespace A247643.P3265241031864597679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (n : ℤ) * (Int.tmod (1 - (n : ℤ)) 2 - 2)

end

end A247643.P3265241031864597679

namespace A247643

/-- `a(n-1)-n*((1-n)%2-2)` -/
def P3265241031864597679.Spec : Prop :=
  ∀ n, P3265241031864597679.a n = A247643 n

end A247643

/-! ## A247643.P7073766369801344865

`∑[floor((n+1)/a(n-1))]+n²` with `a(0)=1, a(1)=1`
-/

namespace A247643.P7073766369801344865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A247643.P7073766369801344865

namespace A247643

/-- `∑[floor((n+1)/a(n-1))]+n²` -/
def P7073766369801344865.Spec : Prop :=
  ∀ n, P7073766369801344865.a n = A247643 n

end A247643

/-! ## A247643.P5334472393625585112

`A257083(n)+∑[n]`
-/

namespace A247643.P5334472393625585112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A247643.P5334472393625585112

namespace A247643

/-- `A257083(n)+∑[n]` -/
def P5334472393625585112.Spec : Prop :=
  ∀ n, P5334472393625585112.a n = A247643 n

end A247643

/-! ## A247643.P18428041896578932489

`∑[A257088(n)+n]`
-/

namespace A247643.P18428041896578932489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247643.P18428041896578932489

namespace A247643

/-- `∑[A257088(n)+n]` -/
def P18428041896578932489.Spec : Prop :=
  ∀ n, P18428041896578932489.a n = A247643 n

end A247643

/-! ## A247643.P6525377378178809132

`A212965(n)-∑[n]`
-/

namespace A247643.P6525377378178809132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A247643.P6525377378178809132

namespace A247643

/-- `A212965(n)-∑[n]` -/
def P6525377378178809132.Spec : Prop :=
  ∀ n, P6525377378178809132.a n = A247643 n

end A247643

/-! ## A247643.P4768950425602990402

`A273368(n)/2+1`
-/

namespace A247643.P4768950425602990402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273368 n : ℚ) / 2 + 1

end

end A247643.P4768950425602990402

namespace A247643

/-- `A273368(n)/2+1` -/
def P4768950425602990402.Spec : Prop :=
  ∀ n, P4768950425602990402.a n = (A247643 n : ℚ)

end A247643

/-! ## A247643.P6213014365747288510

`A239767(n)+1+n`
-/

namespace A247643.P6213014365747288510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n + 1 + (n : ℤ)

end

end A247643.P6213014365747288510

namespace A247643

/-- `A239767(n)+1+n` -/
def P6213014365747288510.Spec : Prop :=
  ∀ n, P6213014365747288510.a n = A247643 n

end A247643

/-! ## A247643.P3236618104437553977

`∑[abs(A280166(n))+n]`
-/

namespace A247643.P3236618104437553977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280166 n| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247643.P3236618104437553977

namespace A247643

/-- `∑[abs(A280166(n))+n]` -/
def P3236618104437553977.Spec : Prop :=
  ∀ n, P3236618104437553977.a n = A247643 n

end A247643

/-! ## A247643.P647085391546994629

`round(A220082(n+1)/2)`
-/

namespace A247643.P647085391546994629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A220082 (n + 1) : ℚ) / 2)

end

end A247643.P647085391546994629

namespace A247643

/-- `round(A220082(n+1)/2)` -/
def P647085391546994629.Spec : Prop :=
  ∀ n, P647085391546994629.a n = A247643 n

end A247643

/-! ## A247643.P6006956980770813708

`A140144(n+1)+n²`
-/

namespace A247643.P6006956980770813708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140144 (n + 1) + (n ^ 2 : ℤ)

end

end A247643.P6006956980770813708

namespace A247643

/-- `A140144(n+1)+n²` -/
def P6006956980770813708.Spec : Prop :=
  ∀ n, P6006956980770813708.a n = A247643 n

end A247643

/-!
# A247644: Triangle formed from the odd-numbered rows of A088855.

The programs for A247644, the canonical program `A247644.P317797350283830947` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247644 has offset 1).

The definition of A247644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247644.P11689161355184033197

`A088855(A007606(n+1))`
-/

namespace A247644.P11689161355184033197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A007606 (n + 1)).toNat

end

end A247644.P11689161355184033197

namespace A247644

/-- `A088855(A007606(n+1))` -/
def P11689161355184033197.Spec : Prop :=
  ∀ n, P11689161355184033197.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P6084441731792365513

`A088855(A161983(n+1))`
-/

namespace A247644.P6084441731792365513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A161983 (n + 1)).toNat

end

end A247644.P6084441731792365513

namespace A247644

/-- `A088855(A161983(n+1))` -/
def P6084441731792365513.Spec : Prop :=
  ∀ n, P6084441731792365513.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P18365005776791230789

`A088855(∑[A005408(A037213(n))])`
-/

namespace A247644.P18365005776791230789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A037213 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247644.P18365005776791230789

namespace A247644

/-- `A088855(∑[A005408(A037213(n))])` -/
def P18365005776791230789.Spec : Prop :=
  ∀ n, P18365005776791230789.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P17855369771489335290

`A088855(A116942(2*n)+1)`
-/

namespace A247644.P17855369771489335290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A116942 (2 * n) + 1).toNat

end

end A247644.P17855369771489335290

namespace A247644

/-- `A088855(A116942(2*n)+1)` -/
def P17855369771489335290.Spec : Prop :=
  ∀ n, P17855369771489335290.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P1445915919006165839

`A088855(A116942(Δ[A014206(n)]))`
-/

namespace A247644.P1445915919006165839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A116942 (f1 (n + 1) - f1 n).toNat).toNat

end

end A247644.P1445915919006165839

namespace A247644

/-- `A088855(A116942(Δ[A014206(n)]))` -/
def P1445915919006165839.Spec : Prop :=
  ∀ n, P1445915919006165839.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P9471440678169660209

`A088855(A316670(n+1)+1)`
-/

namespace A247644.P9471440678169660209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A316670 (n + 1) + 1).toNat

end

end A247644.P9471440678169660209

namespace A247644

/-- `A088855(A316670(n+1)+1)` -/
def P9471440678169660209.Spec : Prop :=
  ∀ n, P9471440678169660209.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P317797350283830947

`A140751(n+1)*A140751(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247644

/-- `A140751(n+1)*A140751(n)` -/
def P317797350283830947.Spec : Prop :=
  ∀ n, P317797350283830947.a n = A247644 (n + 1)

theorem P317797350283830947.correct : P317797350283830947.Spec := by
  intro n
  simp only [A247644, Nat.add_sub_cancel]

end A247644

/-! ## A247644.P296748734492002264

`A088855(A316965(n)+2)`
-/

namespace A247644.P296748734492002264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088855 (A316965 n + 2).toNat

end

end A247644.P296748734492002264

namespace A247644

/-- `A088855(A316965(n)+2)` -/
def P296748734492002264.Spec : Prop :=
  ∀ n, P296748734492002264.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P13103407210792794783

`A172101(A317303(n+1))`
-/

namespace A247644.P13103407210792794783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172101 (A317303 (n + 1)).toNat

end

end A247644.P13103407210792794783

namespace A247644

/-- `A172101(A317303(n+1))` -/
def P13103407210792794783.Spec : Prop :=
  ∀ n, P13103407210792794783.a n = A247644 (n + 1)

end A247644

/-! ## A247644.P14088001845945986988

`A152659(n+1)/2`
-/

namespace A247644.P14088001845945986988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152659 (n + 1) : ℚ) / 2

end

end A247644.P14088001845945986988

namespace A247644

/-- `A152659(n+1)/2` -/
def P14088001845945986988.Spec : Prop :=
  ∀ n, P14088001845945986988.a n = (A247644 (n + 1) : ℚ)

end A247644

/-!
# A247645: Triangle read by rows: T(j,0)=1, T(0,j) = [j=0], T(-1,j)=T(-2,j)=0, T(j,k)=2T(j-1,k)-T(j-2,k)+T(j-1,k-2)+T(j-2,k-2).

The programs for A247645, there is no canonical definition to state claims against.
-/

/-! ## A247645.P8440383892984619287

`A247642(abs(3-A094064(n)))`
-/

namespace A247645.P8440383892984619287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247642 |3 - A094064 n|.toNat

end

end A247645.P8440383892984619287

/-! ## A247645.P5999796044174186980

`A247642(A020703(n+1)-1)`
-/

namespace A247645.P5999796044174186980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247642 (A020703 (n + 1) - 1).toNat

end

end A247645.P5999796044174186980

/-! ## A247645.P17987993459075606789

`A247642(A020703(n+2))`
-/

namespace A247645.P17987993459075606789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247642 (A020703 (n + 2)).toNat

end

end A247645.P17987993459075606789

/-! ## A247645.P14345864464394325648

`A247642(A094064(n+3))`
-/

namespace A247645.P14345864464394325648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247642 (A094064 (n + 3)).toNat

end

end A247645.P14345864464394325648

/-!
# A247647: Binary numbers that begin and end with 1 and do not contain two adjacent zeros.

The programs for A247647, the canonical program `A247647.P11206846488229151234` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247647 has offset 1).

The definition of A247647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A247648, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247647.P11206846488229151234

`A007088(A247648(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A247647

/-- `A007088(A247648(n+1))` -/
def P11206846488229151234.Spec : Prop :=
  ∀ n, P11206846488229151234.a n = A247647 (n + 1)

theorem P11206846488229151234.correct : P11206846488229151234.Spec := by
  intro n
  simp only [A247647, Nat.add_sub_cancel]

end A247647

/-! ## A247647.P1745251390472494048

`10*A104326(n)+1`
-/

namespace A247647.P1745251390472494048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A104326 n + 1

end

end A247647.P1745251390472494048

namespace A247647

/-- `10*A104326(n)+1` -/
def P1745251390472494048.Spec : Prop :=
  ∀ n, P1745251390472494048.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P1405409694025872287

`A104326(A000201(n+1))`
-/

namespace A247647.P1405409694025872287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A000201 (n + 1)).toNat

end

end A247647.P1405409694025872287

namespace A247647

/-- `A104326(A000201(n+1))` -/
def P1405409694025872287.Spec : Prop :=
  ∀ n, P1405409694025872287.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P4710945222624755181

`A104326(A066096(n+1))`
-/

namespace A247647.P4710945222624755181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A066096 (n + 1)).toNat

end

end A247647.P4710945222624755181

namespace A247647

/-- `A104326(A066096(n+1))` -/
def P4710945222624755181.Spec : Prop :=
  ∀ n, P4710945222624755181.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P15241083523718776811

`A104326(A022342(n+1)+1)`
-/

namespace A247647.P15241083523718776811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A022342 (n + 1) + 1).toNat

end

end A247647.P15241083523718776811

namespace A247647

/-- `A104326(A022342(n+1)+1)` -/
def P15241083523718776811.Spec : Prop :=
  ∀ n, P15241083523718776811.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P13822201112761481286

`A104326(A001950(n+1))/10`
-/

namespace A247647.P13822201112761481286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104326 (A001950 (n + 1)).toNat : ℚ) / 10

end

end A247647.P13822201112761481286

namespace A247647

/-- `A104326(A001950(n+1))/10` -/
def P13822201112761481286.Spec : Prop :=
  ∀ n, P13822201112761481286.a n = (A247647 (n + 1) : ℚ)

end A247647

/-! ## A247647.P17390004104581768022

`A104326(A003622(n+1)-n)`
-/

namespace A247647.P17390004104581768022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A003622 (n + 1) - (n : ℤ)).toNat

end

end A247647.P17390004104581768022

namespace A247647

/-- `A104326(A003622(n+1)-n)` -/
def P17390004104581768022.Spec : Prop :=
  ∀ n, P17390004104581768022.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P13041696860511842386

`A104326(A001950(n+1)-(n+1))`
-/

namespace A247647.P13041696860511842386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A001950 (n + 1) - (n + 1 : ℤ)).toNat

end

end A247647.P13041696860511842386

namespace A247647

/-- `A104326(A001950(n+1)-(n+1))` -/
def P13041696860511842386.Spec : Prop :=
  ∀ n, P13041696860511842386.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P16300266481032924158

`A104326(A026352(n+1)-(n+2))`
-/

namespace A247647.P16300266481032924158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A026352 (n + 1) - (n + 2 : ℤ)).toNat

end

end A247647.P16300266481032924158

namespace A247647

/-- `A104326(A026352(n+1)-(n+2))` -/
def P16300266481032924158.Spec : Prop :=
  ∀ n, P16300266481032924158.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P16387222436375475222

`A130311(A195121(n+1))`
-/

namespace A247647.P16387222436375475222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130311 (A195121 (n + 1)).toNat

end

end A247647.P16387222436375475222

namespace A247647

/-- `A130311(A195121(n+1))` -/
def P16387222436375475222.Spec : Prop :=
  ∀ n, P16387222436375475222.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P345286371028025

`A130311(A063732(n+1)+2)`
-/

namespace A247647.P345286371028025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130311 (A063732 (n + 1) + 2).toNat

end

end A247647.P345286371028025

namespace A247647

/-- `A130311(A063732(n+1)+2)` -/
def P345286371028025.Spec : Prop :=
  ∀ n, P345286371028025.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P4952768402618831758

`A130311(A195170(n+1)-(n+1))`
-/

namespace A247647.P4952768402618831758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130311 (A195170 (n + 1) - (n + 1 : ℤ)).toNat

end

end A247647.P4952768402618831758

namespace A247647

/-- `A130311(A195170(n+1)-(n+1))` -/
def P4952768402618831758.Spec : Prop :=
  ∀ n, P4952768402618831758.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P8771979022817699183

`A104326(A002251(A001950(n+1)))`
-/

namespace A247647.P8771979022817699183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (A002251 (A001950 (n + 1)).toNat).toNat

end

end A247647.P8771979022817699183

namespace A247647

/-- `A104326(A002251(A001950(n+1)))` -/
def P8771979022817699183.Spec : Prop :=
  ∀ n, P8771979022817699183.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P505802394443612195

`A007088(2*eq[and(n, 2*n+1), and(n, 2*n+n+2)]+1)`
-/

namespace A247647.P505802394443612195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A247647.P505802394443612195

namespace A247647

/-- `A007088(2*eq[and(n, 2*n+1), and(n, 2*n+n+2)]+1)` -/
def P505802394443612195.Spec : Prop :=
  ∀ n, P505802394443612195.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P17274214845145250582

`A007088(2*A052499(n)-1)`
-/

namespace A247647.P17274214845145250582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A052499 n - 1).toNat

end

end A247647.P17274214845145250582

namespace A247647

/-- `A007088(2*A052499(n)-1)` -/
def P17274214845145250582.Spec : Prop :=
  ∀ n, P17274214845145250582.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P8637983479470292087

`A007088(2*A003754(n+1)+1)`
-/

namespace A247647.P8637983479470292087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A003754 (n + 1) + 1).toNat

end

end A247647.P8637983479470292087

namespace A247647

/-- `A007088(2*A003754(n+1)+1)` -/
def P8637983479470292087.Spec : Prop :=
  ∀ n, P8637983479470292087.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P890086942087763247

`A007088(A052499(n)+A003754(n+1))`
-/

namespace A247647.P890086942087763247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A052499 n + A003754 (n + 1)).toNat

end

end A247647.P890086942087763247

namespace A247647

/-- `A007088(A052499(n)+A003754(n+1))` -/
def P890086942087763247.Spec : Prop :=
  ∀ n, P890086942087763247.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P18231535029830554730

`A007088(A003754(A001950(n+1)-n))`
-/

namespace A247647.P18231535029830554730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A003754 (A001950 (n + 1) - (n : ℤ)).toNat).toNat

end

end A247647.P18231535029830554730

namespace A247647

/-- `A007088(A003754(A001950(n+1)-n))` -/
def P18231535029830554730.Spec : Prop :=
  ∀ n, P18231535029830554730.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P16526145669515624401

`A007088(A052499(n)+A052499(n)-1)`
-/

namespace A247647.P16526145669515624401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A052499 n + (A052499 n - 1)).toNat

end

end A247647.P16526145669515624401

namespace A247647

/-- `A007088(A052499(n)+A052499(n)-1)` -/
def P16526145669515624401.Spec : Prop :=
  ∀ n, P16526145669515624401.a n = A247647 (n + 1)

end A247647

/-! ## A247647.P4953656827348289692

`∩[A280049(n+1), A104326(n)]`
-/

namespace A247647.P4953656827348289692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247647.P4953656827348289692

namespace A247647

/-- `∩[A280049(n+1), A104326(n)]` -/
def P4953656827348289692.Spec : Prop :=
  ∀ n, (P4953656827348289692.a n : ℤ) = A247647 (n + 1)

end A247647

/-!
# A247648: Numbers whose binary expansion begins and ends with 1 and does not contain two adjacent zeros.

The programs for A247648, the canonical program `A247648.P7622667877464504082` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247648 has offset 1).

The definition of A247648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247648.P7622667877464504082

`2*A052499(n)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A247648

/-- `2*A052499(n)-1` -/
def P7622667877464504082.Spec : Prop :=
  ∀ n, P7622667877464504082.a n = A247648 (n + 1)

theorem P7622667877464504082.correct : P7622667877464504082.Spec := by
  intro n
  simp only [A247648, Nat.add_sub_cancel]

end A247648

/-! ## A247648.P1178923400431622830

`2*A003754(n+1)+1`
-/

namespace A247648.P1178923400431622830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003754 (n + 1) + 1

end

end A247648.P1178923400431622830

namespace A247648

/-- `2*A003754(n+1)+1` -/
def P1178923400431622830.Spec : Prop :=
  ∀ n, P1178923400431622830.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P4114021793557105872

`(A380358(n+1)-1)/2`
-/

namespace A247648.P4114021793557105872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380358 (n + 1) - 1 : ℚ) / 2

end

end A247648.P4114021793557105872

namespace A247648

/-- `(A380358(n+1)-1)/2` -/
def P4114021793557105872.Spec : Prop :=
  ∀ n, P4114021793557105872.a n = (A247648 (n + 1) : ℚ)

end A247648

/-! ## A247648.P2073549101618278128

`(A365809(n+1)-2)/3`
-/

namespace A247648.P2073549101618278128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365809 (n + 1) - 2 : ℚ) / 3

end

end A247648.P2073549101618278128

namespace A247648

/-- `(A365809(n+1)-2)/3` -/
def P2073549101618278128.Spec : Prop :=
  ∀ n, P2073549101618278128.a n = (A247648 (n + 1) : ℚ)

end A247648

/-! ## A247648.P17779477728776056653

`A003754(A004956(n+1))`
-/

namespace A247648.P17779477728776056653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A004956 (n + 1)).toNat

end

end A247648.P17779477728776056653

namespace A247648

/-- `A003754(A004956(n+1))` -/
def P17779477728776056653.Spec : Prop :=
  ∀ n, P17779477728776056653.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P9447214407692615666

`A003754(A026351(n+1))`
-/

namespace A247648.P9447214407692615666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A026351 (n + 1)).toNat

end

end A247648.P9447214407692615666

namespace A247648

/-- `A003754(A026351(n+1))` -/
def P9447214407692615666.Spec : Prop :=
  ∀ n, P9447214407692615666.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P11620299838478239929

`A003754(A000201(n+1)+1)`
-/

namespace A247648.P11620299838478239929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A000201 (n + 1) + 1).toNat

end

end A247648.P11620299838478239929

namespace A247648

/-- `A003754(A000201(n+1)+1)` -/
def P11620299838478239929.Spec : Prop :=
  ∀ n, P11620299838478239929.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P17368941516767835101

`A003754(A022342(n+1)+2)`
-/

namespace A247648.P17368941516767835101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A022342 (n + 1) + 2).toNat

end

end A247648.P17368941516767835101

namespace A247648

/-- `A003754(A022342(n+1)+2)` -/
def P17368941516767835101.Spec : Prop :=
  ∀ n, P17368941516767835101.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P5804542191635628724

`A052499(n)+A003754(n+1)`
-/

namespace A247648.P5804542191635628724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n + A003754 (n + 1)

end

end A247648.P5804542191635628724

namespace A247648

/-- `A052499(n)+A003754(n+1)` -/
def P5804542191635628724.Spec : Prop :=
  ∀ n, P5804542191635628724.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P1392343497540009198

`A003754(A001950(n+1)-n)`
-/

namespace A247648.P1392343497540009198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (A001950 (n + 1) - (n : ℤ)).toNat

end

end A247648.P1392343497540009198

namespace A247648

/-- `A003754(A001950(n+1)-n)` -/
def P1392343497540009198.Spec : Prop :=
  ∀ n, P1392343497540009198.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P9539606728766840083

`A003754(A001950(n+1)+1)/2`
-/

namespace A247648.P9539606728766840083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003754 (A001950 (n + 1) + 1).toNat : ℚ) / 2

end

end A247648.P9539606728766840083

namespace A247648

/-- `A003754(A001950(n+1)+1)/2` -/
def P9539606728766840083.Spec : Prop :=
  ∀ n, P9539606728766840083.a n = (A247648 (n + 1) : ℚ)

end A247648

/-! ## A247648.P3980492631998554180

`A380358(n+1)-A052499(n)-A052499(n)`
-/

namespace A247648.P3980492631998554180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380358 (n + 1) - A052499 n - A052499 n

end

end A247648.P3980492631998554180

namespace A247648

/-- `A380358(n+1)-A052499(n)-A052499(n)` -/
def P3980492631998554180.Spec : Prop :=
  ∀ n, P3980492631998554180.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P14015965891869543420

`A365808(n+2)-A052499(n)`
-/

namespace A247648.P14015965891869543420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 2) - A052499 n

end

end A247648.P14015965891869543420

namespace A247648

/-- `A365808(n+2)-A052499(n)` -/
def P14015965891869543420.Spec : Prop :=
  ∀ n, P14015965891869543420.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P10898136312551936927

`A003754(n+1)+A380358(n+1)-A365808(n+2)`
-/

namespace A247648.P10898136312551936927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1) + (A380358 (n + 1) - A365808 (n + 2))

end

end A247648.P10898136312551936927

namespace A247648

/-- `A003754(n+1)+A380358(n+1)-A365808(n+2)` -/
def P10898136312551936927.Spec : Prop :=
  ∀ n, P10898136312551936927.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P3520811665293814081

`2*eq[and(n, 2*n+1), and(n, 2*n+n+2)]+1`
-/

namespace A247648.P3520811665293814081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A247648.P3520811665293814081

namespace A247648

/-- `2*eq[and(n, 2*n+1), and(n, 2*n+n+2)]+1` -/
def P3520811665293814081.Spec : Prop :=
  ∀ n, (P3520811665293814081.a n : ℤ) = A247648 (n + 1)

end A247648

/-! ## A247648.P12020119193666138812

`filter[A003754(n+2), A373157(#)]`
-/

namespace A247648.P12020119193666138812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A247648.P12020119193666138812

namespace A247648

/-- `filter[A003754(n+2), A373157(#)]` -/
def P12020119193666138812.Spec : Prop :=
  ∀ n, P12020119193666138812.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P14212103519660763982

`filter[A003754(n+2), A379952(#)]`
-/

namespace A247648.P14212103519660763982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A247648.P14212103519660763982

namespace A247648

/-- `filter[A003754(n+2), A379952(#)]` -/
def P14212103519660763982.Spec : Prop :=
  ∀ n, P14212103519660763982.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P17710733189702309312

`A006257(A280873(n+1))`
-/

namespace A247648.P17710733189702309312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A280873 (n + 1)).toNat

end

end A247648.P17710733189702309312

namespace A247648

/-- `A006257(A280873(n+1))` -/
def P17710733189702309312.Spec : Prop :=
  ∀ n, P17710733189702309312.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P7044795556855916418

`filter[A003754(n+2), A035263(#)]`
-/

namespace A247648.P7044795556855916418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A247648.P7044795556855916418

namespace A247648

/-- `filter[A003754(n+2), A035263(#)]` -/
def P7044795556855916418.Spec : Prop :=
  ∀ n, P7044795556855916418.a n = A247648 (n + 1)

end A247648

/-! ## A247648.P1890999987418542705

`filter[A003754(n+2), A152822(#)]`
-/

namespace A247648.P1890999987418542705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A247648.P1890999987418542705

namespace A247648

/-- `filter[A003754(n+2), A152822(#)]` -/
def P1890999987418542705.Spec : Prop :=
  ∀ n, P1890999987418542705.a n = A247648 (n + 1)

end A247648

/-!
# A247649: Number of terms in expansion of f^n mod 2, where f = 1/x^2 + 1/x + 1 + x + x^2 mod 2.

The programs for A247649, there is no canonical definition to state claims against.
-/

/-! ## A247649.P9339309415600100006

`sqrt(A247650(n))`
-/

namespace A247649.P9339309415600100006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A247650 n : ℝ)

end

end A247649.P9339309415600100006

/-! ## A247649.P17481684898197762948

`root(A247650(or(n, char[1])), 2)`
-/

namespace A247649.P17481684898197762948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) : ℝ) ^ (1 / (2 : ℝ))

end

end A247649.P17481684898197762948

/-! ## A247649.P16592880638022387177

`root(A247650(gcd(n, ∑[n])), 2)`
-/

namespace A247649.P16592880638022387177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) : ℝ) ^ (1 / (2 : ℝ))

end

end A247649.P16592880638022387177

/-! ## A247649.P17394662999243709386

`root(A247650(lcm(2, n)/2), 2)`
-/

namespace A247649.P17394662999243709386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A247649.P17394662999243709386

/-! ## A247649.P437951592314909744

`A000027(root(A247650(n), 2))`
-/

namespace A247649.P437951592314909744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P437951592314909744

/-! ## A247649.P3472744183088928530

`A000265(root(A247650(n), 2))`
-/

namespace A247649.P3472744183088928530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P3472744183088928530

/-! ## A247649.P16899885763850026897

`A022998(root(A247650(n), 2))`
-/

namespace A247649.P16899885763850026897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P16899885763850026897

/-! ## A247649.P1815441338848685222

`A029579(root(A247650(n), 2))`
-/

namespace A247649.P1815441338848685222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P1815441338848685222

/-! ## A247649.P644874412937214686

`A065679(root(A247650(n), 2))`
-/

namespace A247649.P644874412937214686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065679 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P644874412937214686

/-! ## A247649.P10272689775159062433

`A086799(root(A247650(n), 2))`
-/

namespace A247649.P10272689775159062433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P10272689775159062433

/-! ## A247649.P3410252574863103816

`A195159(root(A247650(n), 2))`
-/

namespace A247649.P3410252574863103816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P3410252574863103816

/-! ## A247649.P12518191751878360868

`A014681(root(A247650(n), 2)+1)`
-/

namespace A247649.P12518191751878360868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)) + 1)).toNat

end

end A247649.P12518191751878360868

/-! ## A247649.P6260795157743506665

`A004526(2*root(A247650(n), 2))`
-/

namespace A247649.P6260795157743506665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway (2 * (A247650 n : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A247649.P6260795157743506665

/-! ## A247649.P10081499106084520471

`∑{d}[root(A247650(n), 2), A000010(#)]`
-/

namespace A247649.P10081499106084520471
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 n : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A247649.P10081499106084520471

/-! ## A247649.P15347561103711696075

`∏{d}[root(A247650(n), 2), A014963(#)]`
-/

namespace A247649.P15347561103711696075
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 n : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 d

end

end A247649.P15347561103711696075

/-! ## A247649.P1306356760454861379

`root(A247650(n), A020639(2*(n+1)))`
-/

namespace A247649.P1306356760454861379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 n : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A247649.P1306356760454861379

/-! ## A247649.P16059145768167787124

`root(A247650(n), 2)%A000041(n+4)`
-/

namespace A247649.P16059145768167787124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A247650 n : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 4))

end

end A247649.P16059145768167787124

/-! ## A247649.P9510889357886491144

`root(A247650(n), 2)*A007318(C(2, n))`
-/

namespace A247649.P9510889357886491144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 n : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (Nat.choose 2 n) : ℝ)

end

end A247649.P9510889357886491144

/-! ## A247649.P3815701732540104761

`root(A247650(n), 2)*A014963(4*n+6)`
-/

namespace A247649.P3815701732540104761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A247650 n : ℝ) ^ (1 / (2 : ℝ)) * (A014963 (4 * n + 6) : ℝ)

end

end A247649.P3815701732540104761

/-!
# A247650: Number of terms in expansion of f^n mod 2, where f = (1/x^2+1/x+1+x+x^2)*(1/y^2+1/y+1+y+y^2) mod 2.

The programs for A247650, there is no canonical definition to state claims against.
-/

/-! ## A247650.P7373220902463379478

`A247649(n)²`
-/

namespace A247650.P7373220902463379478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 n ^ 2

end

end A247650.P7373220902463379478

/-! ## A247650.P9579567982286398313

`A247649(2*n)^2`
-/

namespace A247650.P9579567982286398313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (2 * n) ^ 2

end

end A247650.P9579567982286398313

/-! ## A247650.P2135036722529944974

`A081346(A247649(n)-1)`
-/

namespace A247650.P2135036722529944974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 (A247649 n - 1).toNat

end

end A247650.P2135036722529944974

/-! ## A247650.P7791064903659761722

`A081351(A247649(n)-1)`
-/

namespace A247650.P7791064903659761722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081351 (A247649 n - 1).toNat

end

end A247650.P7791064903659761722

/-! ## A247650.P10481476998841215306

`A174679(A247649(n)+2)`
-/

namespace A247650.P10481476998841215306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174679 (A247649 n + 2).toNat

end

end A247650.P10481476998841215306

/-! ## A247650.P2701171540381162570

`A270454(A247649(n)-1)`
-/

namespace A247650.P2701171540381162570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 (A247649 n - 1).toNat

end

end A247650.P2701171540381162570

/-! ## A247650.P15655827262766119732

`A000290(A247649(2*n))`
-/

namespace A247650.P15655827262766119732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A247649 (2 * n)).toNat

end

end A247650.P15655827262766119732

/-! ## A247650.P5929103320609496499

`A000463(2*A247649(n))`
-/

namespace A247650.P5929103320609496499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A247649 n).toNat

end

end A247650.P5929103320609496499

/-! ## A247650.P2491050512360889731

`A002620(2*A247649(n))`
-/

namespace A247650.P2491050512360889731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A247649 n).toNat

end

end A247650.P2491050512360889731

/-! ## A247650.P15056814490140937015

`A000027(A247649(n)^2)`
-/

namespace A247650.P15056814490140937015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A247649 n ^ 2).toNat

end

end A247650.P15056814490140937015

/-! ## A247650.P5932978788049296447

`A000290(or(1, A247649(n)))`
-/

namespace A247650.P5932978788049296447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A247649 n)).toNat

end

end A247650.P5932978788049296447

/-! ## A247650.P87340245667979911

`A174679(2*2*A247649(n))`
-/

namespace A247650.P87340245667979911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174679 (2 * (2 * A247649 n)).toNat

end

end A247650.P87340245667979911

/-! ## A247650.P14548856719938620204

`A247649(2*n)*A247649(n)`
-/

namespace A247650.P14548856719938620204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (2 * n) * A247649 n

end

end A247650.P14548856719938620204

/-! ## A247650.P6580707571093608196

`(A000038(n)-A247649(n))^2`
-/

namespace A247650.P6580707571093608196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - A247649 n) ^ 2

end

end A247650.P6580707571093608196

/-! ## A247650.P5085511178456385530

`or(1, A247649(n))^A020639(n+2+n)`
-/

namespace A247650.P5085511178456385530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (A247649 n) : ℚ) ^ (A020639 (n + 2 + n) : ℤ)

end

end A247650.P5085511178456385530

/-!
# A247651: Maximum number of binary strings of length 2n obtained from a partition of n.

The programs for A247651, there is no canonical definition to state claims against.
-/

/-! ## A247651.P5225403014137477939

`(n+1)*A130760(n)`
-/

namespace A247651.P5225403014137477939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A130760 n

end

end A247651.P5225403014137477939

/-! ## A247651.P9428520571019829328

`A130760(n)*A387051(n)`
-/

namespace A247651.P9428520571019829328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130760 n * A387051 n

end

end A247651.P9428520571019829328

/-! ## A247651.P11253839619964051231

`A130760(n)*A158416(2*n)`
-/

namespace A247651.P11253839619964051231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130760 n * A158416 (2 * n)

end

end A247651.P11253839619964051231

/-! ## A247651.P2292159498025504042

`A130760(n)*A176743(2*n)`
-/

namespace A247651.P2292159498025504042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130760 n * A176743 (2 * n)

end

end A247651.P2292159498025504042

/-! ## A247651.P8138574698481400562

`A130760(n)*A131821(A000124(n))`
-/

namespace A247651.P8138574698481400562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130760 n * A131821 (A000124 n).toNat

end

end A247651.P8138574698481400562

/-!
# A247653: Write 2n as a product of numbers of the form 4k+2 (A016825) so as to minimize the sum of the factors; a(n) is this sum.

The programs for A247653, there is no canonical definition to state claims against.
-/

/-! ## A247653.P17901477273353382769

`A247654((n+1)²)/2`
-/

namespace A247653.P17901477273353382769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247654 ((n + 1) ^ 2) : ℚ) / 2

end

end A247653.P17901477273353382769

/-! ## A247653.P18206406046592677404

`floor(A247654(∑[2*n+1])/2)`
-/

namespace A247653.P18206406046592677404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247654 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌋

end

end A247653.P18206406046592677404

/-! ## A247653.P12233680185327921402

`ceil(A247654(∑[n+1+n])/2)`
-/

namespace A247653.P12233680185327921402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A247654 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2⌉

end

end A247653.P12233680185327921402

/-! ## A247653.P11792237310482006008

`lcm(2, A247654(∑[a(n-1)+2])/2)` with `a(0)=1`
-/

namespace A247653.P11792237310482006008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((A247654 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2))

end

end A247653.P11792237310482006008

/-! ## A247653.P9069265397542507770

`A001281(A247654((n+1)²))`
-/

namespace A247653.P9069265397542507770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A247654 ((n + 1) ^ 2)).toNat

end

end A247653.P9069265397542507770

/-! ## A247653.P16619862971354839407

`A004526(A247654((n+1)²)+1)`
-/

namespace A247653.P16619862971354839407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247654 ((n + 1) ^ 2) + 1).toNat

end

end A247653.P16619862971354839407

/-! ## A247653.P9748123600065795782

`A001057(A247654((n+1)²)-1)`
-/

namespace A247653.P9748123600065795782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A247654 ((n + 1) ^ 2) - 1).toNat

end

end A247653.P9748123600065795782

/-! ## A247653.P7101046346782661895

`A003602(A247654((n+1)²)-1)`
-/

namespace A247653.P7101046346782661895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A247654 ((n + 1) ^ 2) - 1).toNat

end

end A247653.P7101046346782661895

/-! ## A247653.P12080212810077447669

`A004525(A247654(∑[2*n+1]))`
-/

namespace A247653.P12080212810077447669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A247654 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A247653.P12080212810077447669

/-! ## A247653.P10713821838491446094

`A004526(A247654(Δ[A000330(n)]))`
-/

namespace A247653.P10713821838491446094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A247654 (f1 (n + 1) - f1 n).toNat).toNat

end

end A247653.P10713821838491446094

/-! ## A247653.P14709618395661172493

`A123108(A247654(A000027(n+1)²))`
-/

namespace A247653.P14709618395661172493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A247654 (A000027 (n + 1) ^ 2).toNat).toNat

end

end A247653.P14709618395661172493

/-! ## A247653.P14535497320791843667

`A110654(A247654(A130446(n+1)²))`
-/

namespace A247653.P14535497320791843667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A247654 (A130446 (n + 1) ^ 2).toNat).toNat

end

end A247653.P14535497320791843667

/-!
# A247654: Write 4n as a product of numbers of the form 4k+2 (A016825) so as to minimize the sum of the factors; a(n) is this sum.

The programs for A247654, there is no canonical definition to state claims against.
-/

/-! ## A247654.P3818913898704129915

`A247653(2*(n+1))`
-/

namespace A247654.P3818913898704129915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247653 (2 * (n + 1))

end

end A247654.P3818913898704129915

/-! ## A247654.P3464541876605550913

`A247653(Δ[A048058(n)])-A000035(2*n)`
-/

namespace A247654.P3464541876605550913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247653 (f1 (n + 1) - f1 n).toNat - A000035 (2 * n)

end

end A247654.P3464541876605550913

/-! ## A247654.P14218927393605273420

`A247653(Δ[A002378(n)])%A033249(n+1)`
-/

namespace A247654.P14218927393605273420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247653 (f1 (n + 1) - f1 n).toNat) (A033249 (n + 1))

end

end A247654.P14218927393605273420

/-! ## A247654.P7904688202900951047

`A247653(Δ[A048058(n)])%A002025(n+1)`
-/

namespace A247654.P7904688202900951047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247653 (f1 (n + 1) - f1 n).toNat) (A002025 (n + 1))

end

end A247654.P7904688202900951047

/-! ## A247654.P655045543521573335

`A247653(Δ[A048058(n)])+A088684(n+1)%2`
-/

namespace A247654.P655045543521573335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247653 (f1 (n + 1) - f1 n).toNat + Int.tmod (A088684 (n + 1)) 2

end

end A247654.P655045543521573335

/-! ## A247654.P15797885637476663555

`A283983(n)%2*A247653(Δ[A048058(n)])`
-/

namespace A247654.P15797885637476663555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283983 n) 2 * A247653 (f1 (n + 1) - f1 n).toNat

end

end A247654.P15797885637476663555

/-! ## A247654.P16187647933443583026

`A247653(Δ[A002378(n)])+A010051((n+1)²)`
-/

namespace A247654.P16187647933443583026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247653 (f1 (n + 1) - f1 n).toNat + A010051 ((n + 1) ^ 2)

end

end A247654.P16187647933443583026

/-!
# A247655: Number of letters in n-th word of The Star Spangled Banner (version 1).

The programs for A247655, there is no canonical definition to state claims against.
-/

/-! ## A247655.P1663937857405733644

`A247656(n+1)-floor(1/(n+1))`
-/

namespace A247655.P1663937857405733644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247656 (n + 1) - ⌊1 / (n + 1 : ℚ)⌋

end

end A247655.P1663937857405733644

/-! ## A247655.P9865558429195137014

`A247656(n+1)/A054977(n)`
-/

namespace A247655.P9865558429195137014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247656 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A247655.P9865558429195137014

/-! ## A247655.P2307574499810571392

`gcd(A023935(n), A247656(n+1))`
-/

namespace A247655.P2307574499810571392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023935 n) (A247656 (n + 1))

end

end A247655.P2307574499810571392

/-! ## A247655.P1784710308632241788

`A247656(n+1)/A000079(floor(1/(n+1)))`
-/

namespace A247655.P1784710308632241788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247656 (n + 1) : ℚ) / (A000079 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A247655.P1784710308632241788

/-! ## A247655.P9109007146068247850

`A247656(n+1)/A042049(floor(1/(n+1)))`
-/

namespace A247655.P9109007146068247850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247656 (n + 1) : ℚ) / (A042049 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℚ)

end

end A247655.P9109007146068247850

/-!
# A247656: Number of letters in n-th word of The Star Spangled Banner (version 2).

The programs for A247656, there is no canonical definition to state claims against.
-/

/-! ## A247656.P11868932380637571380

`floor(A247655(n+1)+acot(n))`
-/

namespace A247656.P11868932380637571380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247655 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A247656.P11868932380637571380

/-! ## A247656.P15756072976756664736

`A247655(n+1)+A000007(n)`
-/

namespace A247656.P15756072976756664736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + A000007 n

end

end A247656.P15756072976756664736

/-! ## A247656.P7377788808988370522

`A247655(n+1)+A151878(n)`
-/

namespace A247656.P7377788808988370522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + A151878 n

end

end A247656.P7377788808988370522

/-! ## A247656.P12111045507455125071

`A247655(n+1)+A151909(n)`
-/

namespace A247656.P12111045507455125071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + A151909 n

end

end A247656.P12111045507455125071

/-! ## A247656.P13666366665566623770

`A247655(n+1)+A151933(n)`
-/

namespace A247656.P13666366665566623770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + A151933 n

end

end A247656.P13666366665566623770

/-! ## A247656.P9651605736867317112

`A054977(n)*A247655(n+1)`
-/

namespace A247656.P9651605736867317112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A247655 (n + 1)

end

end A247656.P9651605736867317112

/-! ## A247656.P16415648309347678985

`A247655(n+1)+A008683((n+1)²)`
-/

namespace A247656.P16415648309347678985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A247656.P16415648309347678985

/-! ## A247656.P18154618825758039524

`A247655(n+1)+val(A000040(n+1), 2)`
-/

namespace A247656.P18154618825758039524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A247656.P18154618825758039524

/-! ## A247656.P10072464081627598026

`A247655(n+1)+A000045(C(2, n+2))`
-/

namespace A247656.P10072464081627598026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247655 (n + 1) + A000045 (Nat.choose 2 (n + 2))

end

end A247656.P10072464081627598026

/-!
# A247657: Partial sums of primes, but with a twist.

The programs for A247657, there is no canonical definition to state claims against.
-/

/-! ## A247657.P8549146337696507386

`p?[A109653(n+3)]`
-/

namespace A247657.P8549146337696507386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247657.P8549146337696507386

/-! ## A247657.P17130993378977293813

`filter[A109653(n+2), A080545(#)]`
-/

namespace A247657.P17130993378977293813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A247657.P17130993378977293813

/-! ## A247657.P6609852776218427868

`filter[A109653(n+2), A171387(#)]`
-/

namespace A247657.P6609852776218427868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A247657.P6609852776218427868

/-! ## A247657.P12002921162077863709

`filter[A109653(n+2), A257531(#)]`
-/

namespace A247657.P12002921162077863709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A247657.P12002921162077863709

/-! ## A247657.P3972142455956463208

`filter[A109653(n+2), A383298(#)]`
-/

namespace A247657.P3972142455956463208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383298 (f1 j).toNat = 1) n)

end

end A247657.P3972142455956463208

/-!
# A247658: Partial sums of the sequence of (primes omitting A247657).

The programs for A247658, there is no canonical definition to state claims against.
-/

/-! ## A247658.P5345877876994482177

`A109653(n+2)+char[45]`
-/

namespace A247658.P5345877876994482177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A247658.P5345877876994482177

/-! ## A247658.P15791483327024222770

`A109653(A180925(n+2))`
-/

namespace A247658.P15791483327024222770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (A180925 (n + 2)).toNat

end

end A247658.P15791483327024222770

/-! ## A247658.P11691892916551299983

`A338782(A109653(n+2))`
-/

namespace A247658.P11691892916551299983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (A109653 (n + 2)).toNat

end

end A247658.P11691892916551299983

/-! ## A247658.P15218901137761676086

`A109653(A396476(n+2))`
-/

namespace A247658.P15218901137761676086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (A396476 (n + 2)).toNat

end

end A247658.P15218901137761676086

/-! ## A247658.P6704430605511401188

`A109653(3-A063435(n)+n)`
-/

namespace A247658.P6704430605511401188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109653 (3 - A063435 n + (n : ℤ)).toNat

end

end A247658.P6704430605511401188

/-!
# A247659: Number of down-arrow-indecomposable topologies on n labeled points.

The programs for A247659, there is no canonical definition to state claims against.
-/

/-! ## A247659.P6020455694318093365

`A338477(A325996(n)-A236191(n))`
-/

namespace A247659.P6020455694318093365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338477 (A325996 n - A236191 n).toNat

end

end A247659.P6020455694318093365

/-!
# A247660: Number of bi-indecomposable topologies on n labeled points.

The programs for A247660, there is no canonical definition to state claims against.
-/

/-! ## A247660.P821883031991893698

`A278490(A392734(n))+n`
-/

namespace A247660.P821883031991893698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278490 (A392734 n).toNat + (n : ℤ)

end

end A247660.P821883031991893698

/-!
# A247661: The number phi_4(n) of Frobenius partitions that allow up to 4 repetitions of an integer in a row.

The programs for A247661, there is no canonical definition to state claims against.
-/

/-! ## A247661.P12961992634330483832

`A137734((floor(n²/2)+1)*(2^n-1))`
-/

namespace A247661.P12961992634330483832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 ((⌊(n ^ 2 : ℚ) / 2⌋ + 1) * ((2 ^ n : ℤ) - 1)).toNat

end

end A247661.P12961992634330483832

/-! ## A247661.P14275478494431250937

`A002024(∑[A318413(n)-n])`
-/

namespace A247661.P14275478494431250937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318413 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247661.P14275478494431250937

/-! ## A247661.P9462918481446941751

`A178786(A293943(n+4)+4)-2`
-/

namespace A247661.P9462918481446941751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A293943 (n + 4) + 4).toNat - 2

end

end A247661.P9462918481446941751

/-! ## A247661.P8168717588792865059

`A161680(n)+A117924(A001405(n))`
-/

namespace A247661.P8168717588792865059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A117924 (A001405 n).toNat

end

end A247661.P8168717588792865059

/-! ## A247661.P12641871050006146674

`A185083(n)+A039999(A185070(n))`
-/

namespace A247661.P12641871050006146674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185083 n + A039999 (A185070 n).toNat

end

end A247661.P12641871050006146674

/-!
# A247662: The number phi_5(n) of Frobenius partitions that allow up to 5 repetitions of an integer in a row.

The programs for A247662, there is no canonical definition to state claims against.
-/

/-! ## A247662.P7433958631723630193

`A055086(A072863(n))-A153013(n)`
-/

namespace A247662.P7433958631723630193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A072863 n).toNat - A153013 n

end

end A247662.P7433958631723630193

/-! ## A247662.P12002861465817337515

`A274933(A051013(n))`
-/

namespace A247662.P12002861465817337515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A051013 n).toNat

end

end A247662.P12002861465817337515

/-! ## A247662.P175658226452484267

`A003056(A258347(n)+1-n)`
-/

namespace A247662.P175658226452484267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A258347 n + (1 - (n : ℤ))).toNat

end

end A247662.P175658226452484267

/-! ## A247662.P9399434439957719799

`A003056(1-(n-A258347(n)))`
-/

namespace A247662.P9399434439957719799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (1 - ((n : ℤ) - A258347 n)).toNat

end

end A247662.P9399434439957719799

/-! ## A247662.P14217807669577802112

`A108949(2*n+1)+A001055(3^n)`
-/

namespace A247662.P14217807669577802112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108949 (2 * n + 1) + A001055 (3 ^ n)

end

end A247662.P14217807669577802112

/-!
# A247666: Number of ON cells after n generations of "Odd-Rule" cellular automaton on hexagonal lattice based on 7-celled neighborhood.

The programs for A247666, there is no canonical definition to state claims against.
-/

/-! ## A247666.P17818615842623871415

`A275667(2*n)`
-/

namespace A247666.P17818615842623871415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 (2 * n)

end

end A247666.P17818615842623871415

/-! ## A247666.P1474112264388016889

`A247649(2*∑[and(n, -n)²]+n)`
-/

namespace A247666.P1474112264388016889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A247666.P1474112264388016889

/-! ## A247666.P1468653969650027511

`A247649(A001196(n))`
-/

namespace A247666.P1468653969650027511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (A001196 n).toNat

end

end A247666.P1468653969650027511

/-! ## A247666.P17013976787534201010

`A247649(3*A000695(n))`
-/

namespace A247666.P17013976787534201010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (3 * A000695 n).toNat

end

end A247666.P17013976787534201010

/-! ## A247666.P8497488975889423015

`A247649(3*A062880(n))`
-/

namespace A247666.P8497488975889423015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247649 (3 * A062880 n).toNat

end

end A247666.P8497488975889423015

/-! ## A247666.P13447298435925571747

`filter[A275667(n), A011655(#)]`
-/

namespace A247666.P13447298435925571747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A247666.P13447298435925571747

/-! ## A247666.P9303423731348675708

`filter[A275667(n), A088911(#)]`
-/

namespace A247666.P9303423731348675708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A247666.P9303423731348675708

/-! ## A247666.P9119923433270718365

`filter[A275667(n), A095130(#)]`
-/

namespace A247666.P9119923433270718365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A247666.P9119923433270718365

/-! ## A247666.P14047338704448480042

`filter[A275667(n), A156595(#)]`
-/

namespace A247666.P14047338704448480042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A247666.P14047338704448480042

/-! ## A247666.P18390592459360100479

`filter[A275667(n), A187074(#)]`
-/

namespace A247666.P18390592459360100479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A247666.P18390592459360100479

/-!
# A247676: Odd composite numbers congruent to 2 modulo 9.

The programs for A247676, the canonical program `A247676.P15700024140662741661` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247676 has offset 1).

The definition of A247676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247676.P15700024140662741661

`∩[A092256(n+1), A017185(n)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A247676

/-- `∩[A092256(n+1), A017185(n)]` -/
def P15700024140662741661.Spec : Prop :=
  ∀ n, (P15700024140662741661.a n : ℤ) = A247676 (n + 1)

theorem P15700024140662741661.correct : P15700024140662741661.Spec := by
  intro n
  simp only [A247676, Nat.add_sub_cancel]

end A247676

/-! ## A247676.P16240175560536470228

`∩[A092256(n+1), A143988(n+1)-2]`
-/

namespace A247676.P16240175560536470228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P16240175560536470228

namespace A247676

/-- `∩[A092256(n+1), A143988(n+1)-2]` -/
def P16240175560536470228.Spec : Prop :=
  ∀ n, (P16240175560536470228.a n : ℤ) = A247676 (n + 1)

end A247676

/-! ## A247676.P16844161211098580232

`filter[A017185(2*n+1), A005171(#)]`
-/

namespace A247676.P16844161211098580232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247676.P16844161211098580232

namespace A247676

/-- `filter[A017185(2*n+1), A005171(#)]` -/
def P16844161211098580232.Spec : Prop :=
  ∀ n, P16844161211098580232.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P672234666705011403

`filter[A017185(2*n+1), A066247(#)]`
-/

namespace A247676.P672234666705011403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247676.P672234666705011403

namespace A247676

/-- `filter[A017185(2*n+1), A066247(#)]` -/
def P672234666705011403.Spec : Prop :=
  ∀ n, P672234666705011403.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P3359363625383301214

`filter[A138893(2*n+1), A005171(#)]`
-/

namespace A247676.P3359363625383301214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247676.P3359363625383301214

namespace A247676

/-- `filter[A138893(2*n+1), A005171(#)]` -/
def P3359363625383301214.Spec : Prop :=
  ∀ n, P3359363625383301214.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P11293348258320989887

`filter[A138893(2*n+1), A066247(#)]`
-/

namespace A247676.P11293348258320989887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247676.P11293348258320989887

namespace A247676

/-- `filter[A138893(2*n+1), A066247(#)]` -/
def P11293348258320989887.Spec : Prop :=
  ∀ n, P11293348258320989887.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P11151160449154988588

`filter[A017185(2*n+1), A202238(#)]`
-/

namespace A247676.P11151160449154988588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247676.P11151160449154988588

namespace A247676

/-- `filter[A017185(2*n+1), A202238(#)]` -/
def P11151160449154988588.Spec : Prop :=
  ∀ n, P11151160449154988588.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P17440463511835248614

`filter[A017185(2*n+1), A292438(#)]`
-/

namespace A247676.P17440463511835248614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247676.P17440463511835248614

namespace A247676

/-- `filter[A017185(2*n+1), A292438(#)]` -/
def P17440463511835248614.Spec : Prop :=
  ∀ n, P17440463511835248614.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P6173936304076656753

`filter[A017185(2*n+1), A323162(#)]`
-/

namespace A247676.P6173936304076656753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247676.P6173936304076656753

namespace A247676

/-- `filter[A017185(2*n+1), A323162(#)]` -/
def P6173936304076656753.Spec : Prop :=
  ∀ n, P6173936304076656753.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P10833550157535485962

`filter[A138893(2*n+1), A202238(#)]`
-/

namespace A247676.P10833550157535485962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247676.P10833550157535485962

namespace A247676

/-- `filter[A138893(2*n+1), A202238(#)]` -/
def P10833550157535485962.Spec : Prop :=
  ∀ n, P10833550157535485962.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P18379992466039564299

`filter[A373730(2*n+1), A005171(#)]`
-/

namespace A247676.P18379992466039564299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373730 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247676.P18379992466039564299

namespace A247676

/-- `filter[A373730(2*n+1), A005171(#)]` -/
def P18379992466039564299.Spec : Prop :=
  ∀ n, P18379992466039564299.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P2751113777703930495

`filter[A138893(2*n+1), A292438(#)]`
-/

namespace A247676.P2751113777703930495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138893 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247676.P2751113777703930495

namespace A247676

/-- `filter[A138893(2*n+1), A292438(#)]` -/
def P2751113777703930495.Spec : Prop :=
  ∀ n, P2751113777703930495.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P16178899681564972540

`filter[A373730(2*n+1), A066247(#)]`
-/

namespace A247676.P16178899681564972540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373730 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247676.P16178899681564972540

namespace A247676

/-- `filter[A373730(2*n+1), A066247(#)]` -/
def P16178899681564972540.Spec : Prop :=
  ∀ n, P16178899681564972540.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P12915125579537515953

`A017185(eq[1, A107393(A017185(n))])`
-/

namespace A247676.P12915125579537515953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247676.P12915125579537515953

namespace A247676

/-- `A017185(eq[1, A107393(A017185(n))])` -/
def P12915125579537515953.Spec : Prop :=
  ∀ n, P12915125579537515953.a n = A247676 (n + 1)

end A247676

/-! ## A247676.P16155906334392508812

`∩[A092256(n+1), A193910(n+1)]`
-/

namespace A247676.P16155906334392508812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P16155906334392508812

namespace A247676

/-- `∩[A092256(n+1), A193910(n+1)]` -/
def P16155906334392508812.Spec : Prop :=
  ∀ n, (P16155906334392508812.a n : ℤ) = A247676 (n + 1)

end A247676

/-! ## A247676.P16769686867399605734

`∩[A092256(n+1), A063289(n+2)]`
-/

namespace A247676.P16769686867399605734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P16769686867399605734

namespace A247676

/-- `∩[A092256(n+1), A063289(n+2)]` -/
def P16769686867399605734.Spec : Prop :=
  ∀ n, (P16769686867399605734.a n : ℤ) = A247676 (n + 1)

end A247676

/-! ## A247676.P11865087600562293631

`∩[A092256(n+1), A301291(n)+2]`
-/

namespace A247676.P11865087600562293631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P11865087600562293631

namespace A247676

/-- `∩[A092256(n+1), A301291(n)+2]` -/
def P11865087600562293631.Spec : Prop :=
  ∀ n, (P11865087600562293631.a n : ℤ) = A247676 (n + 1)

end A247676

/-! ## A247676.P12137434451957159881

`∩[A056020(n+1)+1, A092256(n+1)]`
-/

namespace A247676.P12137434451957159881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P12137434451957159881

namespace A247676

/-- `∩[A056020(n+1)+1, A092256(n+1)]` -/
def P12137434451957159881.Spec : Prop :=
  ∀ n, (P12137434451957159881.a n : ℤ) = A247676 (n + 1)

end A247676

/-! ## A247676.P2760230910322837136

`∩[A092256(n+1), A120740(n+1)+2]`
-/

namespace A247676.P2760230910322837136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120740 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P2760230910322837136

namespace A247676

/-- `∩[A092256(n+1), A120740(n+1)+2]` -/
def P2760230910322837136.Spec : Prop :=
  ∀ n, (P2760230910322837136.a n : ℤ) = A247676 (n + 1)

end A247676

/-! ## A247676.P8718060455077527271

`∩[A092256(n+1), A130877(n+1)+2]`
-/

namespace A247676.P8718060455077527271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247676.P8718060455077527271

namespace A247676

/-- `∩[A092256(n+1), A130877(n+1)+2]` -/
def P8718060455077527271.Spec : Prop :=
  ∀ n, (P8718060455077527271.a n : ℤ) = A247676 (n + 1)

end A247676

/-!
# A247678: Odd composite numbers congruent to 4 modulo 9.

The programs for A247678, the canonical program `A247678.P17590283635497127436` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247678 has offset 1).

The definition of A247678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3954 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247678.P17590283635497127436

`filter[A063305(n+3), A373977(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247678

/-- `filter[A063305(n+3), A373977(#)]` -/
def P17590283635497127436.Spec : Prop :=
  ∀ n, P17590283635497127436.a n = A247678 (n + 1)

theorem P17590283635497127436.correct : P17590283635497127436.Spec := by
  intro n
  simp only [A247678, Nat.add_sub_cancel]

end A247678

/-! ## A247678.P12529826124458179768

`record[A171435(A017233(n)+43)]`
-/

namespace A247678.P12529826124458179768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017233 n + 43).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247678.P12529826124458179768

namespace A247678

/-- `record[A171435(A017233(n)+43)]` -/
def P12529826124458179768.Spec : Prop :=
  ∀ n, P12529826124458179768.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P16199888935186440748

`filter[A143988(n+1), A373977(#)]`
-/

namespace A247678.P16199888935186440748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247678.P16199888935186440748

namespace A247678

/-- `filter[A143988(n+1), A373977(#)]` -/
def P16199888935186440748.Spec : Prop :=
  ∀ n, P16199888935186440748.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P12115178915971756430

`filter[A063121(n+2), A373977(#)]`
-/

namespace A247678.P12115178915971756430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247678.P12115178915971756430

namespace A247678

/-- `filter[A063121(n+2), A373977(#)]` -/
def P12115178915971756430.Spec : Prop :=
  ∀ n, P12115178915971756430.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P6911076329275273099

`filter[A017209(2*n+1), A373977(#)]`
-/

namespace A247678.P6911076329275273099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247678.P6911076329275273099

namespace A247678

/-- `filter[A017209(2*n+1), A373977(#)]` -/
def P6911076329275273099.Spec : Prop :=
  ∀ n, P6911076329275273099.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P4282117943570432316

`record[A171435(A017209(A079696(n+1)))]`
-/

namespace A247678.P4282117943570432316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017209 (A079696 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247678.P4282117943570432316

namespace A247678

/-- `record[A171435(A017209(A079696(n+1)))]` -/
def P4282117943570432316.Spec : Prop :=
  ∀ n, P4282117943570432316.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P3699309890683171944

`∩[8*n+4+n, A091300(n+2)]`
-/

namespace A247678.P3699309890683171944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247678.P3699309890683171944

namespace A247678

/-- `∩[8*n+4+n, A091300(n+2)]` -/
def P3699309890683171944.Spec : Prop :=
  ∀ n, (P3699309890683171944.a n : ℤ) = A247678 (n + 1)

end A247678

/-! ## A247678.P74031033535400228

`∩[A091300(n+1), A017209(n)]`
-/

namespace A247678.P74031033535400228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247678.P74031033535400228

namespace A247678

/-- `∩[A091300(n+1), A017209(n)]` -/
def P74031033535400228.Spec : Prop :=
  ∀ n, (P74031033535400228.a n : ℤ) = A247678 (n + 1)

end A247678

/-! ## A247678.P14953939518703411985

`∩[A091300(n+1), A143988(n+1)]`
-/

namespace A247678.P14953939518703411985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247678.P14953939518703411985

namespace A247678

/-- `∩[A091300(n+1), A143988(n+1)]` -/
def P14953939518703411985.Spec : Prop :=
  ∀ n, (P14953939518703411985.a n : ℤ) = A247678 (n + 1)

end A247678

/-! ## A247678.P12654368932268157072

`∩[A091300(n+1), A063305(n+2)]`
-/

namespace A247678.P12654368932268157072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247678.P12654368932268157072

namespace A247678

/-- `∩[A091300(n+1), A063305(n+2)]` -/
def P12654368932268157072.Spec : Prop :=
  ∀ n, (P12654368932268157072.a n : ℤ) = A247678 (n + 1)

end A247678

/-! ## A247678.P9337439841679428973

`filter[A063305(n+3), A005171(#)]`
-/

namespace A247678.P9337439841679428973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247678.P9337439841679428973

namespace A247678

/-- `filter[A063305(n+3), A005171(#)]` -/
def P9337439841679428973.Spec : Prop :=
  ∀ n, P9337439841679428973.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P256224305830401102

`filter[A063305(n+3), A066247(#)]`
-/

namespace A247678.P256224305830401102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247678.P256224305830401102

namespace A247678

/-- `filter[A063305(n+3), A066247(#)]` -/
def P256224305830401102.Spec : Prop :=
  ∀ n, P256224305830401102.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P7020742242895621500

`filter[A063305(n+3), A202238(#)]`
-/

namespace A247678.P7020742242895621500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247678.P7020742242895621500

namespace A247678

/-- `filter[A063305(n+3), A202238(#)]` -/
def P7020742242895621500.Spec : Prop :=
  ∀ n, P7020742242895621500.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P14423552087607879950

`filter[A063305(n+3), A292438(#)]`
-/

namespace A247678.P14423552087607879950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247678.P14423552087607879950

namespace A247678

/-- `filter[A063305(n+3), A292438(#)]` -/
def P14423552087607879950.Spec : Prop :=
  ∀ n, P14423552087607879950.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P6120837212236025654

`filter[A063305(n+3), A323162(#)]`
-/

namespace A247678.P6120837212236025654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063305 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247678.P6120837212236025654

namespace A247678

/-- `filter[A063305(n+3), A323162(#)]` -/
def P6120837212236025654.Spec : Prop :=
  ∀ n, P6120837212236025654.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P13261479215549769282

`filter[A017209(2*n+1), A005171(#)]`
-/

namespace A247678.P13261479215549769282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247678.P13261479215549769282

namespace A247678

/-- `filter[A017209(2*n+1), A005171(#)]` -/
def P13261479215549769282.Spec : Prop :=
  ∀ n, P13261479215549769282.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P1217808343041950157

`filter[A017209(2*n+1), A066247(#)]`
-/

namespace A247678.P1217808343041950157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247678.P1217808343041950157

namespace A247678

/-- `filter[A017209(2*n+1), A066247(#)]` -/
def P1217808343041950157.Spec : Prop :=
  ∀ n, P1217808343041950157.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P4788175477939859833

`filter[A017209(2*n+1), A202238(#)]`
-/

namespace A247678.P4788175477939859833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247678.P4788175477939859833

namespace A247678

/-- `filter[A017209(2*n+1), A202238(#)]` -/
def P4788175477939859833.Spec : Prop :=
  ∀ n, P4788175477939859833.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P2007663301416325261

`filter[A017209(2*n+1), A292438(#)]`
-/

namespace A247678.P2007663301416325261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247678.P2007663301416325261

namespace A247678

/-- `filter[A017209(2*n+1), A292438(#)]` -/
def P2007663301416325261.Spec : Prop :=
  ∀ n, P2007663301416325261.a n = A247678 (n + 1)

end A247678

/-! ## A247678.P14403354655046873421

`filter[A017209(2*n+1), A323162(#)]`
-/

namespace A247678.P14403354655046873421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247678.P14403354655046873421

namespace A247678

/-- `filter[A017209(2*n+1), A323162(#)]` -/
def P14403354655046873421.Spec : Prop :=
  ∀ n, P14403354655046873421.a n = A247678 (n + 1)

end A247678

/-!
# A247679: Composite numbers congruent to 17 modulo 18.

The programs for A247679, the canonical program `A247679.P17770235383496582350` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247679 has offset 1).

The definition of A247679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247679.P17770235383496582350

`record[A171435(A239129(n+2))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A247679

/-- `record[A171435(A239129(n+2))]` -/
def P17770235383496582350.Spec : Prop :=
  ∀ n, P17770235383496582350.a n = A247679 (n + 1)

theorem P17770235383496582350.correct : P17770235383496582350.Spec := by
  intro n
  simp only [A247679, Nat.add_sub_cancel]

end A247679

/-! ## A247679.P17322251404723850643

`∩[A092256(n+1), A017257(n)]`
-/

namespace A247679.P17322251404723850643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247679.P17322251404723850643

namespace A247679

/-- `∩[A092256(n+1), A017257(n)]` -/
def P17322251404723850643.Spec : Prop :=
  ∀ n, (P17322251404723850643.a n : ℤ) = A247679 (n + 1)

end A247679

/-! ## A247679.P14539858931078814557

`∩[A092256(n+1), A239129(n+1)]`
-/

namespace A247679.P14539858931078814557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247679.P14539858931078814557

namespace A247679

/-- `∩[A092256(n+1), A239129(n+1)]` -/
def P14539858931078814557.Spec : Prop :=
  ∀ n, (P14539858931078814557.a n : ℤ) = A247679 (n + 1)

end A247679

/-! ## A247679.P9616320865132993019

`∩[A092256(n+1), A133655(n)+n]`
-/

namespace A247679.P9616320865132993019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247679.P9616320865132993019

namespace A247679

/-- `∩[A092256(n+1), A133655(n)+n]` -/
def P9616320865132993019.Spec : Prop :=
  ∀ n, (P9616320865132993019.a n : ℤ) = A247679 (n + 1)

end A247679

/-! ## A247679.P17709184212868093265

`∩[A092256(n+1), A225539(n+1)+1]`
-/

namespace A247679.P17709184212868093265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247679.P17709184212868093265

namespace A247679

/-- `∩[A092256(n+1), A225539(n+1)+1]` -/
def P17709184212868093265.Spec : Prop :=
  ∀ n, (P17709184212868093265.a n : ℤ) = A247679 (n + 1)

end A247679

/-! ## A247679.P4967754695323691048

`∩[A092256(n+1), A146509(n+1)-2]`
-/

namespace A247679.P4967754695323691048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247679.P4967754695323691048

namespace A247679

/-- `∩[A092256(n+1), A146509(n+1)-2]` -/
def P4967754695323691048.Spec : Prop :=
  ∀ n, (P4967754695323691048.a n : ℤ) = A247679 (n + 1)

end A247679

/-! ## A247679.P800216816676642580

`filter[A239129(n+1), A005171(#)]`
-/

namespace A247679.P800216816676642580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247679.P800216816676642580

namespace A247679

/-- `filter[A239129(n+1), A005171(#)]` -/
def P800216816676642580.Spec : Prop :=
  ∀ n, P800216816676642580.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P15163741175012766135

`filter[A239129(n+1), A066247(#)]`
-/

namespace A247679.P15163741175012766135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247679.P15163741175012766135

namespace A247679

/-- `filter[A239129(n+1), A066247(#)]` -/
def P15163741175012766135.Spec : Prop :=
  ∀ n, P15163741175012766135.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P12092392891978043991

`filter[A239129(n+1), A202238(#)]`
-/

namespace A247679.P12092392891978043991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247679.P12092392891978043991

namespace A247679

/-- `filter[A239129(n+1), A202238(#)]` -/
def P12092392891978043991.Spec : Prop :=
  ∀ n, P12092392891978043991.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P15821391011834409427

`filter[A239129(n+1), A292438(#)]`
-/

namespace A247679.P15821391011834409427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247679.P15821391011834409427

namespace A247679

/-- `filter[A239129(n+1), A292438(#)]` -/
def P15821391011834409427.Spec : Prop :=
  ∀ n, P15821391011834409427.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P6107724517607469119

`filter[A239129(n+1), A323162(#)]`
-/

namespace A247679.P6107724517607469119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247679.P6107724517607469119

namespace A247679

/-- `filter[A239129(n+1), A323162(#)]` -/
def P6107724517607469119.Spec : Prop :=
  ∀ n, P6107724517607469119.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P13451876866301915125

`filter[A017257(2*n+1), A005171(#)]`
-/

namespace A247679.P13451876866301915125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247679.P13451876866301915125

namespace A247679

/-- `filter[A017257(2*n+1), A005171(#)]` -/
def P13451876866301915125.Spec : Prop :=
  ∀ n, P13451876866301915125.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P2179459791194000933

`filter[A017257(2*n+1), A066247(#)]`
-/

namespace A247679.P2179459791194000933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247679.P2179459791194000933

namespace A247679

/-- `filter[A017257(2*n+1), A066247(#)]` -/
def P2179459791194000933.Spec : Prop :=
  ∀ n, P2179459791194000933.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P395696899005998901

`filter[A017257(2*n+1), A202238(#)]`
-/

namespace A247679.P395696899005998901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247679.P395696899005998901

namespace A247679

/-- `filter[A017257(2*n+1), A202238(#)]` -/
def P395696899005998901.Spec : Prop :=
  ∀ n, P395696899005998901.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P6137405827188990326

`filter[A017257(2*n+1), A292438(#)]`
-/

namespace A247679.P6137405827188990326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247679.P6137405827188990326

namespace A247679

/-- `filter[A017257(2*n+1), A292438(#)]` -/
def P6137405827188990326.Spec : Prop :=
  ∀ n, P6137405827188990326.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P15386145536728126479

`filter[A017257(2*n+1), A323162(#)]`
-/

namespace A247679.P15386145536728126479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247679.P15386145536728126479

namespace A247679

/-- `filter[A017257(2*n+1), A323162(#)]` -/
def P15386145536728126479.Spec : Prop :=
  ∀ n, P15386145536728126479.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P16291964620149330378

`filter[A373864(2*n+1), A005171(#)]`
-/

namespace A247679.P16291964620149330378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247679.P16291964620149330378

namespace A247679

/-- `filter[A373864(2*n+1), A005171(#)]` -/
def P16291964620149330378.Spec : Prop :=
  ∀ n, P16291964620149330378.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P11225121151138730817

`filter[A373864(2*n+1), A066247(#)]`
-/

namespace A247679.P11225121151138730817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247679.P11225121151138730817

namespace A247679

/-- `filter[A373864(2*n+1), A066247(#)]` -/
def P11225121151138730817.Spec : Prop :=
  ∀ n, P11225121151138730817.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P10781789798003813150

`filter[A373864(2*n+1), A202238(#)]`
-/

namespace A247679.P10781789798003813150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247679.P10781789798003813150

namespace A247679

/-- `filter[A373864(2*n+1), A202238(#)]` -/
def P10781789798003813150.Spec : Prop :=
  ∀ n, P10781789798003813150.a n = A247679 (n + 1)

end A247679

/-! ## A247679.P18242567175504335582

`filter[A373864(2*n+1), A292438(#)]`
-/

namespace A247679.P18242567175504335582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373864 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247679.P18242567175504335582

namespace A247679

/-- `filter[A373864(2*n+1), A292438(#)]` -/
def P18242567175504335582.Spec : Prop :=
  ∀ n, P18242567175504335582.a n = A247679 (n + 1)

end A247679

/-!
# A247681: Odd nonprimes congruent to 1 modulo 9.

The programs for A247681, the canonical program `A247681.P16071207118859784125` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247681 has offset 1).

The definition of A247681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247681.P12220978650201201779

`A247900(n)+a(n-1)` with `a(0)=1`
-/

namespace A247681.P12220978650201201779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247900 n + a (n - 1)

end

end A247681.P12220978650201201779

namespace A247681

/-- `A247900(n)+a(n-1)` -/
def P12220978650201201779.Spec : Prop :=
  ∀ n, P12220978650201201779.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P16679602242233823151

`∑[A247900(n+1)]+1-A247900(n+1)`
-/

namespace A247681.P16679602242233823151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A247900 (n + 1))

end

end A247681.P16679602242233823151

namespace A247681

/-- `∑[A247900(n+1)]+1-A247900(n+1)` -/
def P16679602242233823151.Spec : Prop :=
  ∀ n, P16679602242233823151.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P16071207118859784125

`A161705(A153400(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A247681

/-- `A161705(A153400(n+1))` -/
def P16071207118859784125.Spec : Prop :=
  ∀ n, P16071207118859784125.a n = A247681 (n + 1)

theorem P16071207118859784125.correct : P16071207118859784125.Spec := by
  intro n
  simp only [A247681, Nat.add_sub_cancel]

end A247681

/-! ## A247681.P16006291320793481122

`record[A171435(3*6*n+1)]`
-/

namespace A247681.P16006291320793481122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (3 * (6 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247681.P16006291320793481122

namespace A247681

/-- `record[A171435(3*6*n+1)]` -/
def P16006291320793481122.Spec : Prop :=
  ∀ n, P16006291320793481122.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P5617181751603267515

`filter[A161705(n), A373977(#)]`
-/

namespace A247681.P5617181751603267515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247681.P5617181751603267515

namespace A247681

/-- `filter[A161705(n), A373977(#)]` -/
def P5617181751603267515.Spec : Prop :=
  ∀ n, P5617181751603267515.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P8549239652481363730

`filter[A118510(n+1), A373977(#)]`
-/

namespace A247681.P8549239652481363730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247681.P8549239652481363730

namespace A247681

/-- `filter[A118510(n+1), A373977(#)]` -/
def P8549239652481363730.Spec : Prop :=
  ∀ n, P8549239652481363730.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P12098383243109542731

`filter[A146509(n+1), A373977(#)]`
-/

namespace A247681.P12098383243109542731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247681.P12098383243109542731

namespace A247681

/-- `filter[A146509(n+1), A373977(#)]` -/
def P12098383243109542731.Spec : Prop :=
  ∀ n, P12098383243109542731.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P4055690172765165007

`filter[A017173(2*n), A373977(#)]`
-/

namespace A247681.P4055690172765165007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247681.P4055690172765165007

namespace A247681

/-- `filter[A017173(2*n), A373977(#)]` -/
def P4055690172765165007.Spec : Prop :=
  ∀ n, P4055690172765165007.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P8350998131060304712

`∩[A091300(n+1), A017173(n)]`
-/

namespace A247681.P8350998131060304712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247681.P8350998131060304712

namespace A247681

/-- `∩[A091300(n+1), A017173(n)]` -/
def P8350998131060304712.Spec : Prop :=
  ∀ n, (P8350998131060304712.a n : ℤ) = A247681 (n + 1)

end A247681

/-! ## A247681.P7643900989563359704

`∩[A091300(n+1), A161705(n)]`
-/

namespace A247681.P7643900989563359704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247681.P7643900989563359704

namespace A247681

/-- `∩[A091300(n+1), A161705(n)]` -/
def P7643900989563359704.Spec : Prop :=
  ∀ n, (P7643900989563359704.a n : ℤ) = A247681 (n + 1)

end A247681

/-! ## A247681.P7613484921531107481

`∩[A091300(n+1), A118510(n+1)]`
-/

namespace A247681.P7613484921531107481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247681.P7613484921531107481

namespace A247681

/-- `∩[A091300(n+1), A118510(n+1)]` -/
def P7613484921531107481.Spec : Prop :=
  ∀ n, (P7613484921531107481.a n : ℤ) = A247681 (n + 1)

end A247681

/-! ## A247681.P13130210442745037467

`∩[A091300(n+1), A146509(n+1)]`
-/

namespace A247681.P13130210442745037467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247681.P13130210442745037467

namespace A247681

/-- `∩[A091300(n+1), A146509(n+1)]` -/
def P13130210442745037467.Spec : Prop :=
  ∀ n, (P13130210442745037467.a n : ℤ) = A247681 (n + 1)

end A247681

/-! ## A247681.P10779498737954626344

`filter[A161705(n), A005171(#)]`
-/

namespace A247681.P10779498737954626344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247681.P10779498737954626344

namespace A247681

/-- `filter[A161705(n), A005171(#)]` -/
def P10779498737954626344.Spec : Prop :=
  ∀ n, P10779498737954626344.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P2136726608269254997

`filter[A161705(n), A292438(#)]`
-/

namespace A247681.P2136726608269254997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247681.P2136726608269254997

namespace A247681

/-- `filter[A161705(n), A292438(#)]` -/
def P2136726608269254997.Spec : Prop :=
  ∀ n, P2136726608269254997.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P6874678176120747394

`filter[A017173(2*n), A005171(#)]`
-/

namespace A247681.P6874678176120747394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247681.P6874678176120747394

namespace A247681

/-- `filter[A017173(2*n), A005171(#)]` -/
def P6874678176120747394.Spec : Prop :=
  ∀ n, P6874678176120747394.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P16779047607724111330

`filter[A017173(2*n), A292438(#)]`
-/

namespace A247681.P16779047607724111330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247681.P16779047607724111330

namespace A247681

/-- `filter[A017173(2*n), A292438(#)]` -/
def P16779047607724111330.Spec : Prop :=
  ∀ n, P16779047607724111330.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P17821433208524300037

`filter[A118510(2*n+1), A005171(#)]`
-/

namespace A247681.P17821433208524300037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247681.P17821433208524300037

namespace A247681

/-- `filter[A118510(2*n+1), A005171(#)]` -/
def P17821433208524300037.Spec : Prop :=
  ∀ n, P17821433208524300037.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P6926354975247526266

`filter[A146509(2*n+1), A005171(#)]`
-/

namespace A247681.P6926354975247526266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247681.P6926354975247526266

namespace A247681

/-- `filter[A146509(2*n+1), A005171(#)]` -/
def P6926354975247526266.Spec : Prop :=
  ∀ n, P6926354975247526266.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P4878082260336993319

`filter[A118510(2*n+1), A292438(#)]`
-/

namespace A247681.P4878082260336993319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118510 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247681.P4878082260336993319

namespace A247681

/-- `filter[A118510(2*n+1), A292438(#)]` -/
def P4878082260336993319.Spec : Prop :=
  ∀ n, P4878082260336993319.a n = A247681 (n + 1)

end A247681

/-! ## A247681.P10543124551743655532

`filter[A146509(2*n+1), A292438(#)]`
-/

namespace A247681.P10543124551743655532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247681.P10543124551743655532

namespace A247681

/-- `filter[A146509(2*n+1), A292438(#)]` -/
def P10543124551743655532.Spec : Prop :=
  ∀ n, P10543124551743655532.a n = A247681 (n + 1)

end A247681

/-!
# A247682: Odd composite numbers congruent to 5 modulo 9.

The programs for A247682, the canonical program `A247682.P4172309602348026969` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247682 has offset 1).

The definition of A247682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247682.P4172309602348026969

`record[A171435(A242215(n+4))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A247682

/-- `record[A171435(A242215(n+4))]` -/
def P4172309602348026969.Spec : Prop :=
  ∀ n, P4172309602348026969.a n = A247682 (n + 1)

theorem P4172309602348026969.correct : P4172309602348026969.Spec := by
  intro n
  simp only [A247682, Nat.add_sub_cancel]

end A247682

/-! ## A247682.P6230451259929565717

`record[A171435(A017221(A020744(n)))]`
-/

namespace A247682.P6230451259929565717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017221 (A020744 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247682.P6230451259929565717

namespace A247682

/-- `record[A171435(A017221(A020744(n)))]` -/
def P6230451259929565717.Spec : Prop :=
  ∀ n, P6230451259929565717.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P3353987904572450219

`∩[A092256(n+1), A017221(n)]`
-/

namespace A247682.P3353987904572450219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247682.P3353987904572450219

namespace A247682

/-- `∩[A092256(n+1), A017221(n)]` -/
def P3353987904572450219.Spec : Prop :=
  ∀ n, (P3353987904572450219.a n : ℤ) = A247682 (n + 1)

end A247682

/-! ## A247682.P6919917221239657491

`∩[A092256(n+1), A242215(n)]`
-/

namespace A247682.P6919917221239657491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247682.P6919917221239657491

namespace A247682

/-- `∩[A092256(n+1), A242215(n)]` -/
def P6919917221239657491.Spec : Prop :=
  ∀ n, (P6919917221239657491.a n : ℤ) = A247682 (n + 1)

end A247682

/-! ## A247682.P12909748479749860369

`∩[A092256(n+1), A143988(n+1)]`
-/

namespace A247682.P12909748479749860369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247682.P12909748479749860369

namespace A247682

/-- `∩[A092256(n+1), A143988(n+1)]` -/
def P12909748479749860369.Spec : Prop :=
  ∀ n, (P12909748479749860369.a n : ℤ) = A247682 (n + 1)

end A247682

/-! ## A247682.P11935373286699655283

`∩[A092256(n+1), A146509(n+1)]`
-/

namespace A247682.P11935373286699655283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247682.P11935373286699655283

namespace A247682

/-- `∩[A092256(n+1), A146509(n+1)]` -/
def P11935373286699655283.Spec : Prop :=
  ∀ n, (P11935373286699655283.a n : ℤ) = A247682 (n + 1)

end A247682

/-! ## A247682.P6240520986043886537

`∩[A092256(n+1), A225539(n+1)]`
-/

namespace A247682.P6240520986043886537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247682.P6240520986043886537

namespace A247682

/-- `∩[A092256(n+1), A225539(n+1)]` -/
def P6240520986043886537.Spec : Prop :=
  ∀ n, (P6240520986043886537.a n : ℤ) = A247682 (n + 1)

end A247682

/-! ## A247682.P5396955788004243900

`filter[A242215(n), A005171(#)]`
-/

namespace A247682.P5396955788004243900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247682.P5396955788004243900

namespace A247682

/-- `filter[A242215(n), A005171(#)]` -/
def P5396955788004243900.Spec : Prop :=
  ∀ n, P5396955788004243900.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P2527985972506934841

`filter[A242215(n), A066247(#)]`
-/

namespace A247682.P2527985972506934841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247682.P2527985972506934841

namespace A247682

/-- `filter[A242215(n), A066247(#)]` -/
def P2527985972506934841.Spec : Prop :=
  ∀ n, P2527985972506934841.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P5137277968922674818

`filter[A242215(n), A202238(#)]`
-/

namespace A247682.P5137277968922674818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247682.P5137277968922674818

namespace A247682

/-- `filter[A242215(n), A202238(#)]` -/
def P5137277968922674818.Spec : Prop :=
  ∀ n, P5137277968922674818.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P540966093979853312

`filter[A242215(n), A292438(#)]`
-/

namespace A247682.P540966093979853312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247682.P540966093979853312

namespace A247682

/-- `filter[A242215(n), A292438(#)]` -/
def P540966093979853312.Spec : Prop :=
  ∀ n, P540966093979853312.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P5643762856377042999

`filter[A242215(n), A323162(#)]`
-/

namespace A247682.P5643762856377042999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247682.P5643762856377042999

namespace A247682

/-- `filter[A242215(n), A323162(#)]` -/
def P5643762856377042999.Spec : Prop :=
  ∀ n, P5643762856377042999.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P6708993403700394006

`filter[A017221(2*n), A005171(#)]`
-/

namespace A247682.P6708993403700394006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247682.P6708993403700394006

namespace A247682

/-- `filter[A017221(2*n), A005171(#)]` -/
def P6708993403700394006.Spec : Prop :=
  ∀ n, P6708993403700394006.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P6487683929645580130

`filter[A017221(2*n), A066247(#)]`
-/

namespace A247682.P6487683929645580130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247682.P6487683929645580130

namespace A247682

/-- `filter[A017221(2*n), A066247(#)]` -/
def P6487683929645580130.Spec : Prop :=
  ∀ n, P6487683929645580130.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P5680549033917828944

`filter[A017221(2*n), A202238(#)]`
-/

namespace A247682.P5680549033917828944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247682.P5680549033917828944

namespace A247682

/-- `filter[A017221(2*n), A202238(#)]` -/
def P5680549033917828944.Spec : Prop :=
  ∀ n, P5680549033917828944.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P15894202103007077043

`filter[A260658(2*n), A005171(#)]`
-/

namespace A247682.P15894202103007077043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260658 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247682.P15894202103007077043

namespace A247682

/-- `filter[A260658(2*n), A005171(#)]` -/
def P15894202103007077043.Spec : Prop :=
  ∀ n, P15894202103007077043.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P7624029825084109852

`filter[A017221(2*n), A292438(#)]`
-/

namespace A247682.P7624029825084109852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247682.P7624029825084109852

namespace A247682

/-- `filter[A017221(2*n), A292438(#)]` -/
def P7624029825084109852.Spec : Prop :=
  ∀ n, P7624029825084109852.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P8978512530233778285

`filter[A260658(2*n), A066247(#)]`
-/

namespace A247682.P8978512530233778285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260658 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247682.P8978512530233778285

namespace A247682

/-- `filter[A260658(2*n), A066247(#)]` -/
def P8978512530233778285.Spec : Prop :=
  ∀ n, P8978512530233778285.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P14353483344450868641

`filter[A017221(2*n), A323162(#)]`
-/

namespace A247682.P14353483344450868641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247682.P14353483344450868641

namespace A247682

/-- `filter[A017221(2*n), A323162(#)]` -/
def P14353483344450868641.Spec : Prop :=
  ∀ n, P14353483344450868641.a n = A247682 (n + 1)

end A247682

/-! ## A247682.P16518535303033001495

`A017221(eq[1, A107393(A017221(n))])`
-/

namespace A247682.P16518535303033001495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A017221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247682.P16518535303033001495

namespace A247682

/-- `A017221(eq[1, A107393(A017221(n))])` -/
def P16518535303033001495.Spec : Prop :=
  ∀ n, P16518535303033001495.a n = A247682 (n + 1)

end A247682

/-!
# A247683: Odd composite numbers congruent to 7 modulo 9.

The programs for A247683, the canonical program `A247683.P2843368647040740458` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247683 has offset 1).

The definition of A247683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247683.P2843368647040740458

`record[A171435(A242215(n+1)+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A247683

/-- `record[A171435(A242215(n+1)+2)]` -/
def P2843368647040740458.Spec : Prop :=
  ∀ n, P2843368647040740458.a n = A247683 (n + 1)

theorem P2843368647040740458.correct : P2843368647040740458.Spec := by
  intro n
  simp only [A247683, Nat.add_sub_cancel]

end A247683

/-! ## A247683.P10787101869960224993

`record[A171435(A239129(n+1)+8)]`
-/

namespace A247683.P10787101869960224993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A239129 (n + 1) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247683.P10787101869960224993

namespace A247683

/-- `record[A171435(A239129(n+1)+8)]` -/
def P10787101869960224993.Spec : Prop :=
  ∀ n, P10787101869960224993.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P10898703284453696432

`filter[A019432(2*n+1), A373977(#)]`
-/

namespace A247683.P10898703284453696432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247683.P10898703284453696432

namespace A247683

/-- `filter[A019432(2*n+1), A373977(#)]` -/
def P10898703284453696432.Spec : Prop :=
  ∀ n, P10898703284453696432.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P7140223915098988409

`filter[A017245(2*n), A373977(#)]`
-/

namespace A247683.P7140223915098988409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A247683.P7140223915098988409

namespace A247683

/-- `filter[A017245(2*n), A373977(#)]` -/
def P7140223915098988409.Spec : Prop :=
  ∀ n, P7140223915098988409.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P13374152499265517139

`∩[A091300(n+1), A017245(n)]`
-/

namespace A247683.P13374152499265517139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247683.P13374152499265517139

namespace A247683

/-- `∩[A091300(n+1), A017245(n)]` -/
def P13374152499265517139.Spec : Prop :=
  ∀ n, (P13374152499265517139.a n : ℤ) = A247683 (n + 1)

end A247683

/-! ## A247683.P15062629323169141933

`∩[A091300(n+1), A309231(n+1)]`
-/

namespace A247683.P15062629323169141933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247683.P15062629323169141933

namespace A247683

/-- `∩[A091300(n+1), A309231(n+1)]` -/
def P15062629323169141933.Spec : Prop :=
  ∀ n, (P15062629323169141933.a n : ℤ) = A247683 (n + 1)

end A247683

/-! ## A247683.P17172565840806801902

`∩[A091300(n+1), A326664(n+1)]`
-/

namespace A247683.P17172565840806801902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247683.P17172565840806801902

namespace A247683

/-- `∩[A091300(n+1), A326664(n+1)]` -/
def P17172565840806801902.Spec : Prop :=
  ∀ n, (P17172565840806801902.a n : ℤ) = A247683 (n + 1)

end A247683

/-! ## A247683.P8526494737553622438

`∩[A091300(n+1), A004771(n)+n]`
-/

namespace A247683.P8526494737553622438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247683.P8526494737553622438

namespace A247683

/-- `∩[A091300(n+1), A004771(n)+n]` -/
def P8526494737553622438.Spec : Prop :=
  ∀ n, (P8526494737553622438.a n : ℤ) = A247683 (n + 1)

end A247683

/-! ## A247683.P2644740297514917011

`∩[A091300(n+1), A017353(n)-n]`
-/

namespace A247683.P2644740297514917011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247683.P2644740297514917011

namespace A247683

/-- `∩[A091300(n+1), A017353(n)-n]` -/
def P2644740297514917011.Spec : Prop :=
  ∀ n, (P2644740297514917011.a n : ℤ) = A247683 (n + 1)

end A247683

/-! ## A247683.P18188667998602428117

`∩[A091300(n+1), A143988(n+1)+2]`
-/

namespace A247683.P18188667998602428117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143988 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247683.P18188667998602428117

namespace A247683

/-- `∩[A091300(n+1), A143988(n+1)+2]` -/
def P18188667998602428117.Spec : Prop :=
  ∀ n, (P18188667998602428117.a n : ℤ) = A247683 (n + 1)

end A247683

/-! ## A247683.P17674512994491852154

`∩[A091300(n+1), A146509(n+1)+2]`
-/

namespace A247683.P17674512994491852154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247683.P17674512994491852154

namespace A247683

/-- `∩[A091300(n+1), A146509(n+1)+2]` -/
def P17674512994491852154.Spec : Prop :=
  ∀ n, (P17674512994491852154.a n : ℤ) = A247683 (n + 1)

end A247683

/-! ## A247683.P12373939978437123423

`filter[A019432(n+1), A202238(#)]`
-/

namespace A247683.P12373939978437123423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247683.P12373939978437123423

namespace A247683

/-- `filter[A019432(n+1), A202238(#)]` -/
def P12373939978437123423.Spec : Prop :=
  ∀ n, P12373939978437123423.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P8299641372918877383

`filter[A019432(n+1), A323162(#)]`
-/

namespace A247683.P8299641372918877383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247683.P8299641372918877383

namespace A247683

/-- `filter[A019432(n+1), A323162(#)]` -/
def P8299641372918877383.Spec : Prop :=
  ∀ n, P8299641372918877383.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P6962410374997090561

`filter[A019432(n+2), A066247(#)]`
-/

namespace A247683.P6962410374997090561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247683.P6962410374997090561

namespace A247683

/-- `filter[A019432(n+2), A066247(#)]` -/
def P6962410374997090561.Spec : Prop :=
  ∀ n, P6962410374997090561.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P581580430066885697

`filter[A017245(2*n), A005171(#)]`
-/

namespace A247683.P581580430066885697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247683.P581580430066885697

namespace A247683

/-- `filter[A017245(2*n), A005171(#)]` -/
def P581580430066885697.Spec : Prop :=
  ∀ n, P581580430066885697.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P7966950715605835922

`filter[A017245(2*n), A066247(#)]`
-/

namespace A247683.P7966950715605835922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A247683.P7966950715605835922

namespace A247683

/-- `filter[A017245(2*n), A066247(#)]` -/
def P7966950715605835922.Spec : Prop :=
  ∀ n, P7966950715605835922.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P17241229158431295444

`filter[A017245(2*n), A202238(#)]`
-/

namespace A247683.P17241229158431295444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A247683.P17241229158431295444

namespace A247683

/-- `filter[A017245(2*n), A202238(#)]` -/
def P17241229158431295444.Spec : Prop :=
  ∀ n, P17241229158431295444.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P18160404511656687469

`filter[A017245(2*n), A292438(#)]`
-/

namespace A247683.P18160404511656687469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A247683.P18160404511656687469

namespace A247683

/-- `filter[A017245(2*n), A292438(#)]` -/
def P18160404511656687469.Spec : Prop :=
  ∀ n, P18160404511656687469.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P9352279831486050657

`filter[A017245(2*n), A323162(#)]`
-/

namespace A247683.P9352279831486050657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A247683.P9352279831486050657

namespace A247683

/-- `filter[A017245(2*n), A323162(#)]` -/
def P9352279831486050657.Spec : Prop :=
  ∀ n, P9352279831486050657.a n = A247683 (n + 1)

end A247683

/-! ## A247683.P12905220407318377021

`filter[A309231(2*n+1), A005171(#)]`
-/

namespace A247683.P12905220407318377021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A247683.P12905220407318377021

namespace A247683

/-- `filter[A309231(2*n+1), A005171(#)]` -/
def P12905220407318377021.Spec : Prop :=
  ∀ n, P12905220407318377021.a n = A247683 (n + 1)

end A247683

/-!
# A247687: Numbers m with the property that the symmetric representation of sigma(m) has three parts of width one.

The programs for A247687, there is no canonical definition to state claims against.
-/

/-! ## A247687.P5250256079637509018

`record[A053626(A072502(n+1))]`
-/

namespace A247687.P5250256079637509018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A072502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247687.P5250256079637509018

/-! ## A247687.P11854738638761780173

`filter[A072502(n+1), A294934(#)]`
-/

namespace A247687.P11854738638761780173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A247687.P11854738638761780173

/-! ## A247687.P8024588149754383974

`filter[A072502(n+1), A294935(#)]`
-/

namespace A247687.P8024588149754383974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A247687.P8024588149754383974

/-! ## A247687.P9251183384125537271

`eq[2*A033630(n), A069283(n)]`
-/

namespace A247687.P9251183384125537271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247687.P9251183384125537271

/-! ## A247687.P9765746225610146428

`∩[A005100(n+1), A072502(n+1)]`
-/

namespace A247687.P9765746225610146428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247687.P9765746225610146428

/-! ## A247687.P8569101993587123649

`∩[A051772(n+1), A072502(n+1)]`
-/

namespace A247687.P8569101993587123649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247687.P8569101993587123649

/-! ## A247687.P843247436851103104

`∩[A072502(n+1), A087244(n+1)]`
-/

namespace A247687.P843247436851103104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247687.P843247436851103104

/-! ## A247687.P2899220857490046144

`∩[A072502(n+1), A136447(n+1)]`
-/

namespace A247687.P2899220857490046144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247687.P2899220857490046144

/-! ## A247687.P9046259853778979963

`∩[A072502(n+1), A174905(n+1)]`
-/

namespace A247687.P9046259853778979963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247687.P9046259853778979963

/-! ## A247687.P14825168753496271217

`∩[A072502(n+1), A204826(n+1)]`
-/

namespace A247687.P14825168753496271217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247687.P14825168753496271217

/-!
# A247689: Absolute discriminants of complex quadratic fields with 3-class group of type (3,3) and 3-principalization type (2241).

The programs for A247689, there is no canonical definition to state claims against.
-/

/-! ## A247689.P14597714518350190343

`A242864(A083724(n+2))`
-/

namespace A247689.P14597714518350190343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242864 (A083724 (n + 2)).toNat

end

end A247689.P14597714518350190343

/-!
# A247690: Absolute discriminants of complex quadratic fields with 3-class group of type (3,3) and 3-principalization type (4224).

The programs for A247690, there is no canonical definition to state claims against.
-/

/-! ## A247690.P15463407945062885611

`A242864(lt[A066459(3*n+2), A061067(n)])`
-/

namespace A247690.P15463407945062885611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242864 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247690.P15463407945062885611

/-! ## A247690.P7902000746670256262

`A242864(lt[A066459(3*n+2), A080149(n+1)])`
-/

namespace A247690.P7902000746670256262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242864 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247690.P7902000746670256262

/-! ## A247690.P16462384486885334296

`A242864(lt[A066459(3*n+2), A225039(3*n+1)])`
-/

namespace A247690.P16462384486885334296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066459 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225039 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242864 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247690.P16462384486885334296

/-!
# A247691: Absolute discriminants of complex quadratic fields with 3-class group of type (3,3) whose second 3-class group is located on the sporadic part of the coclass graph G(3,2) outside of coclass trees.

The programs for A247691, there is no canonical definition to state claims against.
-/

/-! ## A247691.P10874538260786239722

`∪[A242864(n+1), A242863(A359998(n+1)+n)]`
-/

namespace A247691.P10874538260786239722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242863 (A359998 (n + 1) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247691.P10874538260786239722

/-! ## A247691.P16085687397619651863

`∪[A242864(n+1), A242863(A377840(n)+n)]`
-/

namespace A247691.P16085687397619651863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242863 (A377840 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247691.P16085687397619651863

/-! ## A247691.P2612679084717781052

`A242863(lt[A167805(n+1), A226047(2*n+1)])`
-/

namespace A247691.P2612679084717781052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226047 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242863 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247691.P2612679084717781052

