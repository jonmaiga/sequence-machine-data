import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A358600: Number of genetic relatives of a person M in a genealogical tree extending back n generations and where everyone has 6 children down to the generation of M.

The programs for A358600, the canonical program `A358600.P15186161477050317510` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358600 has offset 0).

The definition of A358600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358600.P15186161477050317510

`2^n+6*(12^n-1)/11`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358600

/-- `2^n+6*(12^n-1)/11` -/
def P15186161477050317510.Spec : Prop :=
  ∀ n, P15186161477050317510.a n = (A358600 n : ℚ)

end A358600

/-! ## A358600.P15783499363586756537

`∑[(A001021(n)+2^n)/2]`
-/

namespace A358600.P15783499363586756537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001021 n + (2 ^ n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358600.P15783499363586756537

namespace A358600

/-- `∑[(A001021(n)+2^n)/2]` -/
def P15783499363586756537.Spec : Prop :=
  ∀ n, P15783499363586756537.a n = (A358600 n : ℚ)

end A358600

/-! ## A358600.P1024192305736972435

`∑[A000079(n)+12^n]/2`
-/

namespace A358600.P1024192305736972435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (12 ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A358600.P1024192305736972435

namespace A358600

/-- `∑[A000079(n)+12^n]/2` -/
def P1024192305736972435.Spec : Prop :=
  ∀ n, P1024192305736972435.a n = (A358600 n : ℚ)

end A358600

/-! ## A358600.P15854628050813485068

`∑[(A000400(n)+1)*2^(n-1)]`
-/

namespace A358600.P15854628050813485068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358600.P15854628050813485068

namespace A358600

/-- `∑[(A000400(n)+1)*2^(n-1)]` -/
def P15854628050813485068.Spec : Prop :=
  ∀ n, P15854628050813485068.a n = (A358600 n : ℚ)

end A358600

/-! ## A358600.P13639872188472796530

`∑[A007283(n)*A062394(n)]/6`
-/

namespace A358600.P13639872188472796530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n * A062394 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A358600.P13639872188472796530

namespace A358600

/-- `∑[A007283(n)*A062394(n)]/6` -/
def P13639872188472796530.Spec : Prop :=
  ∀ n, P13639872188472796530.a n = (A358600 n : ℚ)

end A358600

/-!
# A358601: Number of genetic relatives of a person M in a genealogical tree extending back n generations and where everyone has 7 children down to the generation of M.

The programs for A358601, the canonical program `A358601.P8563918001958904924` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358601 has offset 0).

The definition of A358601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358601.P8563918001958904924

`2^n+7*(14^n-1)/13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358601

/-- `2^n+7*(14^n-1)/13` -/
def P8563918001958904924.Spec : Prop :=
  ∀ n, P8563918001958904924.a n = (A358601 n : ℚ)

end A358601

/-! ## A358601.P4608199038219345019

`∑[2^(n-1)*A034491(n)]`
-/

namespace A358601.P4608199038219345019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A034491 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358601.P4608199038219345019

namespace A358601

/-- `∑[2^(n-1)*A034491(n)]` -/
def P4608199038219345019.Spec : Prop :=
  ∀ n, P4608199038219345019.a n = (A358601 n : ℚ)

end A358601

/-! ## A358601.P8620808058589276245

`∑[A000079(n)*A034494(n)]`
-/

namespace A358601.P8620808058589276245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A034494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358601.P8620808058589276245

namespace A358601

/-- `∑[A000079(n)*A034494(n)]` -/
def P8620808058589276245.Spec : Prop :=
  ∀ n, P8620808058589276245.a n = A358601 n

end A358601

/-! ## A358601.P5228028634101346323

`∑[A034494(n)*A098293(2*n)]`
-/

namespace A358601.P5228028634101346323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n * A098293 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358601.P5228028634101346323

namespace A358601

/-- `∑[A034494(n)*A098293(2*n)]` -/
def P5228028634101346323.Spec : Prop :=
  ∀ n, P5228028634101346323.a n = A358601 n

end A358601

/-! ## A358601.P18121745776494084657

`(A135519(n+1)+∑[A000079(n)])/2`
-/

namespace A358601.P18121745776494084657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A135519 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A358601.P18121745776494084657

namespace A358601

/-- `(A135519(n+1)+∑[A000079(n)])/2` -/
def P18121745776494084657.Spec : Prop :=
  ∀ n, P18121745776494084657.a n = (A358601 n : ℚ)

end A358601

/-!
# A358603: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * (n-k)!/(n-2*k)!.

The programs for A358603, the canonical program `A358603.P4249635791049001674` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358603 has offset 0).

The definition of A358603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358603.P4249635791049001674

`(a(n-1)-n*a(n-2)+1)/2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358603

/-- `(a(n-1)-n*a(n-2)+1)/2` -/
def P4249635791049001674.Spec : Prop :=
  ∀ n, P4249635791049001674.a n = (A358603 n : ℚ)

end A358603

/-! ## A358603.P3094922844498152323

`ceil((a(n-1)-n*a(n-2))/2)` with `a(0)=1, a(1)=1`
-/

namespace A358603.P3094922844498152323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 1) - (n : ℤ) * a (n - 2) : ℚ) / 2⌉

end

end A358603.P3094922844498152323

namespace A358603

/-- `ceil((a(n-1)-n*a(n-2))/2)` -/
def P3094922844498152323.Spec : Prop :=
  ∀ n, P3094922844498152323.a n = A358603 n

end A358603

/-! ## A358603.P8316009331497618406

`(1-(n*a(n-2)-a(n-1)))/2` with `a(0)=1, a(1)=1`
-/

namespace A358603.P8316009331497618406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - ((n : ℚ) * a (n - 2) - a (n - 1))) / 2

end

end A358603.P8316009331497618406

namespace A358603

/-- `(1-(n*a(n-2)-a(n-1)))/2` -/
def P8316009331497618406.Spec : Prop :=
  ∀ n, P8316009331497618406.a n = (A358603 n : ℚ)

end A358603

/-!
# A358604: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * (n-2*k)!/(n-3*k)!.

The programs for A358604, the canonical program `A358604.P884496445271653006` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358604 has offset 0).

The definition of A358604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358604.P884496445271653006

`(2*a(n-1)-n*a(n-3)+1)/3` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358604

/-- `(2*a(n-1)-n*a(n-3)+1)/3` -/
def P884496445271653006.Spec : Prop :=
  ∀ n, P884496445271653006.a n = (A358604 n : ℚ)

end A358604

/-!
# A358605: a(n) = Sum_{k=0..floor(n/4)} (-1)^k * (n-3*k)!/(n-4*k)!.

The programs for A358605, the canonical program `A358605.P11443453774100257484` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358605 has offset 0).

The definition of A358605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358605.P11443453774100257484

`(3*a(n-1)-n*a(n-4)+1)/4` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358605

/-- `(3*a(n-1)-n*a(n-4)+1)/4` -/
def P11443453774100257484.Spec : Prop :=
  ∀ n, P11443453774100257484.a n = (A358605 n : ℚ)

end A358605

/-!
# A358606: a(n) = Sum_{k=0..floor(n/5)} (-1)^k * (n-4*k)!/(n-5*k)!.

The programs for A358606, the canonical program `A358606.P9007092485720062296` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358606 has offset 0).

The definition of A358606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358606.P9007092485720062296

`(4*a(n-1)-n*a(n-5)+1)/5` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358606

/-- `(4*a(n-1)-n*a(n-5)+1)/5` -/
def P9007092485720062296.Spec : Prop :=
  ∀ n, P9007092485720062296.a n = (A358606 n : ℚ)

end A358606

/-!
# A358607: a(n) = Sum_{k=0..floor(n/2)} (-1)^k * (n-2*k)!.

The programs for A358607, the canonical program `A358607.P10319100290942879641` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358607 has offset 0).

The definition of A358607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358607.P10319100290942879641

`n*a(n-1)-a(n-2)+n*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358607

/-- `n*a(n-1)-a(n-2)+n*a(n-3)` -/
def P10319100290942879641.Spec : Prop :=
  ∀ n, P10319100290942879641.a n = A358607 n

theorem P10319100290942879641.correct : P10319100290942879641.Spec := by
  intro n
  simp only [A358607]

end A358607

/-! ## A358607.P3720067838921421734

`n!-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A358607.P3720067838921421734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial n : ℤ) - a (n - 2)

end

end A358607.P3720067838921421734

namespace A358607

/-- `n!-a(n-2)` -/
def P3720067838921421734.Spec : Prop :=
  ∀ n, P3720067838921421734.a n = A358607 n

end A358607

/-! ## A358607.P3728545918357912739

`∏[round(1/acot(n))]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A358607.P3728545918357912739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A358607.P3728545918357912739

namespace A358607

/-- `∏[round(1/acot(n))]-a(n-2)` -/
def P3728545918357912739.Spec : Prop :=
  ∀ n, P3728545918357912739.a n = A358607 n

end A358607

/-! ## A358607.P577096926435631670

`∏[ceil(abs(γ-n))]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A358607.P577096926435631670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A358607.P577096926435631670

namespace A358607

/-- `∏[ceil(abs(γ-n))]-a(n-2)` -/
def P577096926435631670.Spec : Prop :=
  ∀ n, P577096926435631670.a n = A358607 n

end A358607

/-! ## A358607.P1750424147437045504

`2*A358499(n)-A136580(n)`
-/

namespace A358607.P1750424147437045504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358499 n - A136580 n

end

end A358607.P1750424147437045504

namespace A358607

/-- `2*A358499(n)-A136580(n)` -/
def P1750424147437045504.Spec : Prop :=
  ∀ n, P1750424147437045504.a n = A358607 n

end A358607

/-! ## A358607.P13163493977737426003

`floor(A233543(A055998(n+1))-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A358607.P13163493977737426003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A233543 (A055998 (n + 1)).toNat - a (n - 2)

end

end A358607.P13163493977737426003

namespace A358607

/-- `floor(A233543(A055998(n+1))-a(n-2))` -/
def P13163493977737426003.Spec : Prop :=
  ∀ n, P13163493977737426003.a n = A358607 n

end A358607

/-!
# A358608: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * (n-3*k)!.

The programs for A358608, the canonical program `A358608.P11704783017978090480` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358608 has offset 0).

The definition of A358608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358608.P11704783017978090480

`n*a(n-1)-a(n-3)+n*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358608

/-- `n*a(n-1)-a(n-3)+n*a(n-4)` -/
def P11704783017978090480.Spec : Prop :=
  ∀ n, P11704783017978090480.a n = A358608 n

theorem P11704783017978090480.correct : P11704783017978090480.Spec := by
  intro n
  simp only [A358608]

end A358608

/-! ## A358608.P7089578832080955353

`n!-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A358608.P7089578832080955353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (Nat.factorial n : ℤ) - a (n - 3)

end

end A358608.P7089578832080955353

namespace A358608

/-- `n!-a(n-3)` -/
def P7089578832080955353.Spec : Prop :=
  ∀ n, P7089578832080955353.a n = A358608 n

end A358608

/-! ## A358608.P17105081687472517589

`A000142(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A358608.P17105081687472517589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A000142 n - a (n - 3)

end

end A358608.P17105081687472517589

namespace A358608

/-- `A000142(n)-a(n-3)` -/
def P17105081687472517589.Spec : Prop :=
  ∀ n, P17105081687472517589.a n = A358608 n

end A358608

/-! ## A358608.P4257011286737717240

`∏[A028310(n)]-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A358608.P4257011286737717240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j - a (n - 3)

end

end A358608.P4257011286737717240

namespace A358608

/-- `∏[A028310(n)]-a(n-3)` -/
def P4257011286737717240.Spec : Prop :=
  ∀ n, P4257011286737717240.a n = A358608 n

end A358608

/-!
# A358609: a(n) = Sum_{k=0..floor(n/4)} (-1)^k * (n-4*k)!.

The programs for A358609, the canonical program `A358609.P6516022765753857908` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358609 has offset 0).

The definition of A358609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358609.P6516022765753857908

`n*a(n-1)-a(n-4)+n*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=23`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358609

/-- `n*a(n-1)-a(n-4)+n*a(n-5)` -/
def P6516022765753857908.Spec : Prop :=
  ∀ n, P6516022765753857908.a n = A358609 n

theorem P6516022765753857908.correct : P6516022765753857908.Spec := by
  intro n
  simp only [A358609]

end A358609

/-! ## A358609.P6158436880086561090

`A062968(A082043(n)+A000142(n))`
-/

namespace A358609.P6158436880086561090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (A082043 n + A000142 n).toNat

end

end A358609.P6158436880086561090

namespace A358609

/-- `A062968(A082043(n)+A000142(n))` -/
def P6158436880086561090.Spec : Prop :=
  ∀ n, P6158436880086561090.a n = A358609 n

end A358609

/-! ## A358609.P2362729429745033804

`A000142(n)-A001899(A129442(n))`
-/

namespace A358609.P2362729429745033804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A001899 (A129442 n).toNat

end

end A358609.P2362729429745033804

namespace A358609

/-- `A000142(n)-A001899(A129442(n))` -/
def P2362729429745033804.Spec : Prop :=
  ∀ n, P2362729429745033804.a n = A358609 n

end A358609

/-! ## A358609.P7595343222382622710

`A000142(n)-A233867(A096201(n))`
-/

namespace A358609.P7595343222382622710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A233867 (A096201 n).toNat

end

end A358609.P7595343222382622710

namespace A358609

/-- `A000142(n)-A233867(A096201(n))` -/
def P7595343222382622710.Spec : Prop :=
  ∀ n, P7595343222382622710.a n = A358609 n

end A358609

/-!
# A358610: Numbers k such that the concatenation 1,2,3,... up to (k-1) is one less than a multiple of k.

The programs for A358610, there is no canonical definition to state claims against.
-/

/-! ## A358610.P5139982656876688557

`eq[n, A094151(n+1)]+1`
-/

namespace A358610.P5139982656876688557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358610.P5139982656876688557

/-! ## A358610.P5497974201900657841

`A018433(n+1)-A061853(A154139(n+1)+1)`
-/

namespace A358610.P5497974201900657841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018433 (n + 1) - A061853 (A154139 (n + 1) + 1).toNat

end

end A358610.P5497974201900657841

/-! ## A358610.P1079921049892664818

`∩[A055019(n+1), A392291(n+1)]`
-/

namespace A358610.P1079921049892664818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358610.P1079921049892664818

/-! ## A358610.P10888141758092368333

`A018498(n+1)-A185644(A018490(2*(n+1)))`
-/

namespace A358610.P10888141758092368333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018498 (n + 1) - A185644 (A018490 (2 * (n + 1))).toNat

end

end A358610.P10888141758092368333

/-!
# A358611: a(n) = Sum_{k=0..floor(n/5)} (-1)^k * (n-5*k)!.

The programs for A358611, the canonical program `A358611.P9512532115866278041` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358611 has offset 0).

The definition of A358611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358611.P9512532115866278041

`n*a(n-1)-a(n-5)+n*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24, a(5)=119`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358611

/-- `n*a(n-1)-a(n-5)+n*a(n-6)` -/
def P9512532115866278041.Spec : Prop :=
  ∀ n, P9512532115866278041.a n = A358611 n

theorem P9512532115866278041.correct : P9512532115866278041.Spec := by
  intro n
  simp only [A358611]

end A358611

/-! ## A358611.P5523061638901360464

`n!-A089233(A201649(n+1))`
-/

namespace A358611.P5523061638901360464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A089233 (A201649 (n + 1)).toNat

end

end A358611.P5523061638901360464

namespace A358611

/-- `n!-A089233(A201649(n+1))` -/
def P5523061638901360464.Spec : Prop :=
  ∀ n, P5523061638901360464.a n = A358611 n

end A358611

/-! ## A358611.P5588795513904527434

`A000142(n)-A114045(A026811(n))`
-/

namespace A358611.P5588795513904527434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A114045 (A026811 n).toNat

end

end A358611.P5588795513904527434

namespace A358611

/-- `A000142(n)-A114045(A026811(n))` -/
def P5588795513904527434.Spec : Prop :=
  ∀ n, P5588795513904527434.a n = A358611 n

end A358611

/-! ## A358611.P5311929566081146828

`A038507(n)-A110868(A027193(n))`
-/

namespace A358611.P5311929566081146828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 n - A110868 (A027193 n).toNat

end

end A358611.P5311929566081146828

namespace A358611

/-- `A038507(n)-A110868(A027193(n))` -/
def P5311929566081146828.Spec : Prop :=
  ∀ n, P5311929566081146828.a n = A358611 n

end A358611

/-!
# A358613: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * (n-k)!/(k! * (n-3*k)!).

The programs for A358613, the canonical program `A358613.P8352813188789008712` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358613 has offset 0).

The definition of A358613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358613.P8352813188789008712

`(4*a(n-1)-a(n-2)-2*(2*n-3)*a(n-3))/3` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358613

/-- `(4*a(n-1)-a(n-2)-2*(2*n-3)*a(n-3))/3` -/
def P8352813188789008712.Spec : Prop :=
  ∀ n, P8352813188789008712.a n = (A358613 n : ℚ)

end A358613

/-!
# A358615: Record high values in A358497.

The programs for A358615, there is no canonical definition to state claims against.
-/

/-! ## A358615.P9084273899011418500

`A231869(n+1)%A118899(A017991(n))`
-/

namespace A358615.P9084273899011418500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231869 (n + 1)) (A118899 (A017991 n).toNat)

end

end A358615.P9084273899011418500

/-! ## A358615.P3625390262224618932

`A231869(n+1)+A092436(A011782(n))`
-/

namespace A358615.P3625390262224618932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231869 (n + 1) + A092436 (A011782 n).toNat

end

end A358615.P3625390262224618932

/-! ## A358615.P6654329970699981741

`A231869(n+1)+A010051(A011782(n+3))`
-/

namespace A358615.P6654329970699981741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231869 (n + 1) + A010051 (A011782 (n + 3)).toNat

end

end A358615.P6654329970699981741

/-! ## A358615.P14602739903889234201

`A231869(n+1)*A368335(A005902(n))`
-/

namespace A358615.P14602739903889234201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231869 (n + 1) * A368335 (A005902 n).toNat

end

end A358615.P14602739903889234201

/-! ## A358615.P15949199882767507436

`A340599(A102777(n+1))+A231869(n+1)`
-/

namespace A358615.P15949199882767507436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A102777 (n + 1)).toNat + A231869 (n + 1)

end

end A358615.P15949199882767507436

/-!
# A358618: First differences of A258036.

The programs for A358618, there is no canonical definition to state claims against.
-/

/-! ## A358618.P6358918245754146146

`Δ[A258036(n+1)]`
-/

namespace A358618.P6358918245754146146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358618.P6358918245754146146

/-! ## A358618.P10784184138955864776

`Δ[A000720(A258038(n+1))]`
-/

namespace A358618.P10784184138955864776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258038 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358618.P10784184138955864776

/-! ## A358618.P14269409245265206250

`A258036(n+2)-A258036(n+1)`
-/

namespace A358618.P14269409245265206250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258036 (n + 2) - A258036 (n + 1)

end

end A358618.P14269409245265206250

/-! ## A358618.P8965281700945205823

`A000041(A258036(n+2)%A258036(n+1))`
-/

namespace A358618.P8965281700945205823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A258036 (n + 2)) (A258036 (n + 1))).toNat

end

end A358618.P8965281700945205823

/-! ## A358618.P18356326701356968460

`Δ[A257989(p?[A258038(n+1)])]`
-/

namespace A358618.P18356326701356968460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258038 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257989 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358618.P18356326701356968460

/-! ## A358618.P15056519332904306618

`Δ[lt[A007442(n+1), 0]]`
-/

namespace A358618.P15056519332904306618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358618.P15056519332904306618

/-!
# A358619: First forward difference of A258037.

The programs for A358619, there is no canonical definition to state claims against.
-/

/-! ## A358619.P5163672905255869068

`Δ[A258037(n+1)]`
-/

namespace A358619.P5163672905255869068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358619.P5163672905255869068

/-! ## A358619.P7200045758463802153

`Δ[lt[0, A007442(n+1)]]`
-/

namespace A358619.P7200045758463802153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007442 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358619.P7200045758463802153

/-! ## A358619.P13418053786146774350

`Δ[record[A258037(A291769(n))]]`
-/

namespace A358619.P13418053786146774350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358619.P13418053786146774350

/-! ## A358619.P14678774552576102812

`Δ[A000720(A258039(n+1))]`
-/

namespace A358619.P14678774552576102812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358619.P14678774552576102812

/-! ## A358619.P11535433304920080201

`Δ[A036234(A258039(n+1)-1)]`
-/

namespace A358619.P11535433304920080201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A258039 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358619.P11535433304920080201

/-! ## A358619.P6784150620423116353

`A258037(n+2)-A258037(n+1)`
-/

namespace A358619.P6784150620423116353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258037 (n + 2) - A258037 (n + 1)

end

end A358619.P6784150620423116353

/-!
# A358620: Number of nonzero digits needed to write all nonnegative n-digit integers.

The programs for A358620, the canonical program `A358620.P10268233054270487209` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358620 has offset 1).

The definition of A358620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358620.P10268233054270487209

`(81*(n+1)+9)*10^(n-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358620

/-- `(81*(n+1)+9)*10^(n-1)` -/
def P10268233054270487209.Spec : Prop :=
  ∀ n, P10268233054270487209.a n = (A358620 (n + 1) : ℚ)

end A358620

/-! ## A358620.P2979669733042165099

`∑[9*A255381(n)]`
-/

namespace A358620.P2979669733042165099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A255381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358620.P2979669733042165099

namespace A358620

/-- `∑[9*A255381(n)]` -/
def P2979669733042165099.Spec : Prop :=
  ∀ n, P2979669733042165099.a n = A358620 (n + 1)

end A358620

/-! ## A358620.P9439728246789533804

`Δ[9*A094797(n)]`
-/

namespace A358620.P9439728246789533804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A094797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358620.P9439728246789533804

namespace A358620

/-- `Δ[9*A094797(n)]` -/
def P9439728246789533804.Spec : Prop :=
  ∀ n, P9439728246789533804.a n = A358620 (n + 1)

end A358620

/-! ## A358620.P355583224225806783

`Δ[n*Δ[A178501(n)]]`
-/

namespace A358620.P355583224225806783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358620.P355583224225806783

namespace A358620

/-- `Δ[n*Δ[A178501(n)]]` -/
def P355583224225806783.Spec : Prop :=
  ∀ n, P355583224225806783.a n = A358620 (n + 1)

end A358620

/-! ## A358620.P9596268979281312333

`A081045(n+1)-(A081045(n)+A052268(n+1))`
-/

namespace A358620.P9596268979281312333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 (n + 1) - (A081045 n + A052268 (n + 1))

end

end A358620.P9596268979281312333

namespace A358620

/-- `A081045(n+1)-(A081045(n)+A052268(n+1))` -/
def P9596268979281312333.Spec : Prop :=
  ∀ n, P9596268979281312333.a n = A358620 (n + 1)

end A358620

/-! ## A358620.P1197644654873602950

`Δ[A034967(n)/5]`
-/

namespace A358620.P1197644654873602950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034967 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358620.P1197644654873602950

namespace A358620

/-- `Δ[A034967(n)/5]` -/
def P1197644654873602950.Spec : Prop :=
  ∀ n, P1197644654873602950.a n = (A358620 (n + 1) : ℚ)

end A358620

/-! ## A358620.P17077650123154085816

`A078761(n+1)/5`
-/

namespace A358620.P17077650123154085816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078761 (n + 1) : ℚ) / 5

end

end A358620.P17077650123154085816

namespace A358620

/-- `A078761(n+1)/5` -/
def P17077650123154085816.Spec : Prop :=
  ∀ n, P17077650123154085816.a n = (A358620 (n + 1) : ℚ)

end A358620

/-!
# A358622: Regular triangle read by rows. T(n, k) = [[n, k]], where [[n, k]] are the second order Stirling cycle numbers (or second order reciprocal Stirling numbers). T(n, k) for 0 <= k <= n.

The programs for A358622, there is no canonical definition to state claims against.
-/

/-! ## A358622.P13449847675243576589

`and(A023022(A074345(3*n+1)), A132393(n))`
-/

namespace A358622.P13449847675243576589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023022 (A074345 (3 * n + 1)).toNat) (A132393 n)

end

end A358622.P13449847675243576589

/-!
# A358623: Regular triangle read by rows. T(n, k) = {{n, k}}, where {{n, k}} are the second order Stirling set numbers (or second order Stirling numbers). T(n, k) for 0 <= k <= n.

The programs for A358623, there is no canonical definition to state claims against.
-/

/-! ## A358623.P15125124841983476833

`A029931(A386636(n)^A124768(n))`
-/

namespace A358623.P15125124841983476833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (SequenceMachineLib.roundAway ((A386636 n : ℚ) ^ (A124768 n : ℤ))).toNat

end

end A358623.P15125124841983476833

/-! ## A358623.P5972838977862537040

`C(A325188(n), A325169(A325161(n+1)))`
-/

namespace A358623.P5972838977862537040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325188 n).toNat (A325169 (A325161 (n + 1)).toNat).toNat

end

end A358623.P5972838977862537040

/-! ## A358623.P4361800653136714988

`C(A325188(n), A353510(A052551(n+4)))`
-/

namespace A358623.P4361800653136714988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A325188 n).toNat (A353510 (A052551 (n + 4)).toNat).toNat

end

end A358623.P4361800653136714988

/-! ## A358623.P13121344623090424448

`A316893(A118390(n))`
-/

namespace A358623.P13121344623090424448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316893 (A118390 n).toNat

end

end A358623.P13121344623090424448

/-!
# A358625: a(n) = numerator of Bernoulli(n, 1) / n for n >= 1, a(0) = 1.

The programs for A358625, there is no canonical definition to state claims against.
-/

/-! ## A358625.P1389254707374306521

`A060054(A233583(n+1))`
-/

namespace A358625.P1389254707374306521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060054 (A233583 (n + 1)).toNat

end

end A358625.P1389254707374306521

/-! ## A358625.P9338349183237836668

`A164555(n)/A336898(n)`
-/

namespace A358625.P9338349183237836668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164555 n : ℚ) / (A336898 n : ℚ)

end

end A358625.P9338349183237836668

/-! ## A358625.P6417143368346738688

`A120082(A038712(n+1)+1)*A120082(n)`
-/

namespace A358625.P6417143368346738688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120082 (A038712 (n + 1) + 1).toNat * A120082 n

end

end A358625.P6417143368346738688

/-! ## A358625.P7662177168158375669

`A027641(n)+A120082(n)-A227570(n)`
-/

namespace A358625.P7662177168158375669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n + (A120082 n - A227570 n)

end

end A358625.P7662177168158375669

/-! ## A358625.P4872740950404321722

`A120080(n)+A164555(n)-A227570(n)`
-/

namespace A358625.P4872740950404321722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120080 n + (A164555 n - A227570 n)

end

end A358625.P4872740950404321722

/-!
# A358626: Number of (undirected) paths in the 4 X n king graph.

The programs for A358626, there is no canonical definition to state claims against.
-/

/-! ## A358626.P409571347333492797

`record[A307026(a(n-5)+8)]` with `a(0)=6, a(1)=0, a(2)=1, a(3)=2, a(4)=4, a(5)=6`
-/

namespace A358626.P409571347333492797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 0, 1, 2, 4, 6] fun n f1 =>
  A307026 (f1 (n - 5) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358626.P409571347333492797

/-!
# A358627: Triangle read by rows: T(n,k) is the number of edges formed when n points are placed along each edge of a square that divide the edges into n+1 equal parts and a line is continuously drawn from the current point to that k points, 2 <= k <= 2*n, counterclockwise around the square until the starting point is again reached.

The programs for A358627, there is no canonical definition to state claims against.
-/

/-! ## A358627.P8237577651601628226

`A358556(n+1)+A358574(n+1)-1`
-/

namespace A358627.P8237577651601628226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358556 (n + 1) + (A358574 (n + 1) - 1)

end

end A358627.P8237577651601628226

/-!
# A358628: Square array A(i,j), i >= 0, j >= 0, read by antidiagonals: A(i,j) = Sum_{|X|=0..i} Sum_{|Y|=0..i} Product_{k=1..j} (1+X(k)+Y(k)), where X and Y are multi-indices of length j.

The programs for A358628, there is no canonical definition to state claims against.
-/

/-! ## A358628.P11502514427956514484

`A271269(A168287(n))%A087112(2*n+1)`
-/

namespace A358628.P11502514427956514484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271269 (A168287 n).toNat) (A087112 (2 * n + 1))

end

end A358628.P11502514427956514484

/-!
# A358632: Coordination sequence for the faces of the uniform infinite surface that is formed from congruent regular pentagons and from which there is a continuous function that maps the faces 1:1 to regular pentagons in the plane.

The programs for A358632, there is no canonical definition to state claims against.
-/

/-! ## A358632.P476179384810858644

`∪[A008383(n), Δ[A175898(n)]]`
-/

namespace A358632.P476179384810858644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008383 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A358632.P476179384810858644

/-!
# A358635: Number of partitions of n into at most 2 distinct prime powers (including 1).

The programs for A358635, there is no canonical definition to state claims against.
-/

/-! ## A358635.P17959462127340905771

`A347643(n)-A282062(n)%2`
-/

namespace A358635.P17959462127340905771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 n - Int.tmod (A282062 n) 2

end

end A358635.P17959462127340905771

/-! ## A358635.P9443075604197374308

`A347643(n)-char[A138929(n+1)]`
-/

namespace A358635.P9443075604197374308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A358635.P9443075604197374308

/-! ## A358635.P211539203090158343

`A347762(n)-floor((A282062(n)+1)/2)`
-/

namespace A358635.P211539203090158343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - ⌊(A282062 n + 1 : ℚ) / 2⌋

end

end A358635.P211539203090158343

/-! ## A358635.P11539265514001190452

`A347762(n)-A071330(A028310(n))`
-/

namespace A358635.P11539265514001190452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A071330 (A028310 n).toNat

end

end A358635.P11539265514001190452

/-! ## A358635.P4724406123092071358

`A347762(n)-A110654(A282062(n))`
-/

namespace A358635.P4724406123092071358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A110654 (A282062 n).toNat

end

end A358635.P4724406123092071358

/-! ## A358635.P8660517480351572909

`A347762(n)-A004526(A282062(n)+1)`
-/

namespace A358635.P8660517480351572909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347762 n - A004526 (A282062 n + 1).toNat

end

end A358635.P8660517480351572909

/-! ## A358635.P7065092074013372346

`A004526(2*A347762(n)-A282062(n))`
-/

namespace A358635.P7065092074013372346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A347762 n - A282062 n).toNat

end

end A358635.P7065092074013372346

/-! ## A358635.P10294639599807707909

`A004526(A347762(n)-(A282062(n)-A347762(n)))`
-/

namespace A358635.P10294639599807707909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A347762 n - (A282062 n - A347762 n)).toNat

end

end A358635.P10294639599807707909

/-!
# A358636: Number of partitions of n into at most 3 distinct prime powers (including 1).

The programs for A358636, there is no canonical definition to state claims against.
-/

/-! ## A358636.P8331823721028194887

`A070939(A006755(n))-A094570(n)`
-/

namespace A358636.P8331823721028194887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A006755 n).toNat - A094570 n

end

end A358636.P8331823721028194887

/-! ## A358636.P16527519599256091946

`A130259(A034799(n)*A056768(n+1))`
-/

namespace A358636.P16527519599256091946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (A034799 n * A056768 (n + 1)).toNat

end

end A358636.P16527519599256091946

/-!
# A358637: Number of partitions of n into at most 4 distinct prime powers (including 1).

The programs for A358637, there is no canonical definition to state claims against.
-/

/-! ## A358637.P3484024928623863955

`A106244(n-A122840(A036378(n)))`
-/

namespace A358637.P3484024928623863955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 ((n : ℤ) - A122840 (A036378 n).toNat).toNat

end

end A358637.P3484024928623863955

/-! ## A358637.P173718597827978529

`A106244(n)-A025469(A351041(2*(n+1)))`
-/

namespace A358637.P173718597827978529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 n - A025469 (A351041 (2 * (n + 1))).toNat

end

end A358637.P173718597827978529

/-! ## A358637.P4514203588872117231

`A106244(n)-A267142(A240573(2*n+3))`
-/

namespace A358637.P4514203588872117231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106244 n - A267142 (A240573 (2 * n + 3)).toNat

end

end A358637.P4514203588872117231

/-! ## A358637.P11091571908588271717

`∑[and(-A076197(n+1), A027349(n+1))]`
-/

namespace A358637.P11091571908588271717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A076197 (n + 1)) (A027349 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358637.P11091571908588271717

/-! ## A358637.P8176113953934134154

`A070939(A000219(n))-A253315(n)`
-/

namespace A358637.P8176113953934134154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000219 n).toNat - A253315 n

end

end A358637.P8176113953934134154

/-!
# A358639: Number of partitions of n into at most 3 distinct nonprime parts.

The programs for A358639, there is no canonical definition to state claims against.
-/

/-! ## A358639.P17861539370999608478

`A068063(A096258(n)²)`
-/

namespace A358639.P17861539370999608478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A096258 n ^ 2).toNat

end

end A358639.P17861539370999608478

/-! ## A358639.P6010026901556064347

`A089854(A096258(n)%A269060(2*(n+1)))`
-/

namespace A358639.P6010026901556064347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (Int.tmod (A096258 n) (A269060 (2 * (n + 1)))).toNat

end

end A358639.P6010026901556064347

/-! ## A358639.P3201260215879990598

`A356964(A096258(n))%A134810(2*(n+2))`
-/

namespace A358639.P3201260215879990598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356964 (A096258 n).toNat) (A134810 (2 * (n + 2)))

end

end A358639.P3201260215879990598

/-! ## A358639.P12419493257490527284

`A122282(A096258(n))%A001210(3*n+5)`
-/

namespace A358639.P12419493257490527284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122282 (A096258 n).toNat) (A001210 (3 * n + 5))

end

end A358639.P12419493257490527284

/-! ## A358639.P8189641147156224036

`A096258(n)-A008966(A262624(n+1))`
-/

namespace A358639.P8189641147156224036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096258 n - A008966 (A262624 (n + 1)).toNat

end

end A358639.P8189641147156224036

/-!
# A358640: Number of partitions of n into at most 4 distinct nonprime parts.

The programs for A358640, there is no canonical definition to state claims against.
-/

/-! ## A358640.P392312463241870369

`A096258(n)-A302479(A350032(3*n+4))`
-/

namespace A358640.P392312463241870369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096258 n - A302479 (A350032 (3 * n + 4)).toNat

end

end A358640.P392312463241870369

/-!
# A358647: Final digit reached by traveling right (with wraparound) through the digits of n. Each move steps right k places, where k is the digit at the beginning of the move. Moves begin at the most significant digit and d moves are made, where d is the number of digits in n.

The programs for A358647, there is no canonical definition to state claims against.
-/

/-! ## A358647.P1369753437767158667

`A354719(A348179(n))%10`
-/

namespace A358647.P1369753437767158667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354719 (A348179 n).toNat) 10

end

end A358647.P1369753437767158667

/-! ## A358647.P17428641348525076053

`A354719(A349422(n))%10`
-/

namespace A358647.P17428641348525076053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354719 (A349422 n).toNat) 10

end

end A358647.P17428641348525076053

/-! ## A358647.P5125691297688089484

`(A349422(n)+A000007(A115154(n)))%10`
-/

namespace A358647.P5125691297688089484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349422 n + A000007 (A115154 n).toNat) 10

end

end A358647.P5125691297688089484

/-! ## A358647.P1882126224706081045

`A031298(lt[A063865(n), A265140(2*(n+2))])`
-/

namespace A358647.P1882126224706081045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265140 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358647.P1882126224706081045

/-! ## A358647.P12703682960746195564

`A031298(lt[A063865(n), A340602(2*n+5)])`
-/

namespace A358647.P12703682960746195564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358647.P12703682960746195564

/-!
# A358648: 

The programs for A358648, there is no canonical definition to state claims against.
-/

/-! ## A358648.P3745875395123259403

`((2*n+1)!^(n+1))²`
-/

namespace A358648.P3745875395123259403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) ^ (n + 1)) ^ 2

end

end A358648.P3745875395123259403

/-!
# A358651: a(n) = n!*Sum_{m=1..floor(n/2)} 1/(m^2*binomial(n-m,m)).

The programs for A358651, there is no canonical definition to state claims against.
-/

/-! ## A358651.P4875369160759778713

`A063954(A056606(n))-A063967(n)`
-/

namespace A358651.P4875369160759778713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063954 (A056606 n).toNat - A063967 n

end

end A358651.P4875369160759778713

/-! ## A358651.P6488239525569950322

`A008615(A352683(n+1))-A276123(n)`
-/

namespace A358651.P6488239525569950322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A352683 (n + 1)).toNat - A276123 n

end

end A358651.P6488239525569950322

/-! ## A358651.P15219432486430090156

`lcm(A000005(n+1), A131394(A179500(n)))`
-/

namespace A358651.P15219432486430090156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A131394 (A179500 n).toNat)

end

end A358651.P15219432486430090156

/-!
# A358652: a(n) = n!*Sum_{m=1..floor((n+1)/2)} 1/(m*binomial(n-m,m-1)).

The programs for A358652, there is no canonical definition to state claims against.
-/

/-! ## A358652.P200349541999852100

`A324991(a(n-1))` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A358652.P200349541999852100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n a =>
  A324991 (a (n - 1)).toNat

end

end A358652.P200349541999852100

/-!
# A358654: a(n) = A025480(A353654(n+1) - 1).

The programs for A358654, the canonical program `A358654.P4638968349516908894` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358654 has offset 0).

The definition of A358654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358654.P6637314768415848811

`A025480(A353654(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358654.P6637314768415848811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A353654 (n + 1) - 1).toNat

end

end A358654.P6637314768415848811

namespace A358654

/-- `A025480(A353654(n+1)-1)` -/
def P6637314768415848811.Spec : Prop :=
  ∀ n, P6637314768415848811.a n = A358654 n

end A358654

/-! ## A358654.P9026849564395678910

`A030109(A030101(A353654(n+1)))`
-/

namespace A358654.P9026849564395678910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A030101 (A353654 (n + 1)).toNat).toNat

end

end A358654.P9026849564395678910

namespace A358654

/-- `A030109(A030101(A353654(n+1)))` -/
def P9026849564395678910.Spec : Prop :=
  ∀ n, P9026849564395678910.a n = A358654 n

end A358654

/-! ## A358654.P11162840269689295011

`A003602(A353654(n+1))-A033630(2*n+1)`
-/

namespace A358654.P11162840269689295011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A353654 (n + 1)).toNat - A033630 (2 * n + 1)

end

end A358654.P11162840269689295011

namespace A358654

/-- `A003602(A353654(n+1))-A033630(2*n+1)` -/
def P11162840269689295011.Spec : Prop :=
  ∀ n, P11162840269689295011.a n = A358654 n

end A358654

/-! ## A358654.P4638968349516908894

`A003602(eq[A001511(n+1), A023416(n)]+1)-1`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A358654

/-- `A003602(eq[A001511(n+1), A023416(n)]+1)-1` -/
def P4638968349516908894.Spec : Prop :=
  ∀ n, P4638968349516908894.a n = A358654 n

theorem P4638968349516908894.correct : P4638968349516908894.Spec := by
  intro n
  simp only [A358654]

end A358654

/-! ## A358654.P15445930333266889902

`A367306(A200714(n+1))`
-/

namespace A358654.P15445930333266889902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A200714 (n + 1)).toNat

end

end A358654.P15445930333266889902

namespace A358654

/-- `A367306(A200714(n+1))` -/
def P15445930333266889902.Spec : Prop :=
  ∀ n, P15445930333266889902.a n = A358654 n

end A358654

/-!
# A358655: a(n) is the number of distinct scalar products which can be formed by pairs of signed permutations (V, W) of [n].

The programs for A358655, the canonical program `A358655.P12169393783642234653` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358655 has offset 0).

The definition of A358655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358655.P12169393783642234653

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=24, a(4)=61, a(5)=111, a(6)=183, a(7)=281`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358655

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12169393783642234653.Spec : Prop :=
  ∀ n, P12169393783642234653.a n = A358655 n

theorem P12169393783642234653.correct : P12169393783642234653.Spec := by
  intro n
  simp only [A358655]

end A358655

/-! ## A358655.P9340470164920083

`A248614(∑[∑[n]])+A055803(n+3)`
-/

namespace A358655.P9340470164920083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248614 (∑ j ∈ Finset.range (n + 1), f1 j) + A055803 (n + 3)

end

end A358655.P9340470164920083

namespace A358655

/-- `A248614(∑[∑[n]])+A055803(n+3)` -/
def P9340470164920083.Spec : Prop :=
  ∀ n, P9340470164920083.a n = A358655 n

end A358655

/-!
# A358656: Least prime p such that p^n + 2 is the product of n distinct primes.

The programs for A358656, there is no canonical definition to state claims against.
-/

/-! ## A358656.P1143721399403402381

`A038699((a(n-2)+4)²)` with `a(0)=3, a(1)=2, a(2)=7`
-/

namespace A358656.P1143721399403402381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 7] fun n a =>
  A038699 ((a (n - 2) + 4) ^ 2).toNat

end

end A358656.P1143721399403402381

/-!
# A358657: Numbers such that the three numbers before and the three numbers after are squarefree semiprimes.

The programs for A358657, there is no canonical definition to state claims against.
-/

/-! ## A358657.P1978260438526761153

`2*(A158476(n+1)+1)`
-/

namespace A358657.P1978260438526761153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158476 (n + 1) + 1)

end

end A358657.P1978260438526761153

/-! ## A358657.P7036071375090728429

`A242804(n+1)+3`
-/

namespace A358657.P7036071375090728429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242804 (n + 1) + 3

end

end A358657.P7036071375090728429

/-! ## A358657.P5545479866814885805

`A158476(A000027(n+1))+A158476(n+1)+2`
-/

namespace A358657.P5545479866814885805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158476 (A000027 (n + 1)).toNat + A158476 (n + 1) + 2

end

end A358657.P5545479866814885805

/-! ## A358657.P173288855774163655

`A202319(n+1)+2`
-/

namespace A358657.P173288855774163655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202319 (n + 1) + 2

end

end A358657.P173288855774163655

/-! ## A358657.P15374080299091574259

`12*(A257044(n+1)+1)`
-/

namespace A358657.P15374080299091574259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A257044 (n + 1) + 1)

end

end A358657.P15374080299091574259

/-!
# A358660: a(n) = Sum_{d|n} d * (n/d)^(n-d).

The programs for A358660, the canonical program `A358660.P7171504698430678868` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358660 has offset 1).

The definition of A358660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358660.P7171504698430678868

`∑{d}[n+1, ((n+1)/#)^(n+1-#)*#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358660

/-- `∑{d}[n+1, ((n+1)/#)^(n+1-#)*#]` -/
def P7171504698430678868.Spec : Prop :=
  ∀ n, P7171504698430678868.a n = (A358660 (n + 1) : ℚ)

end A358660

/-!
# A358665: Number of (undirected) paths in the 7 X n king graph.

The programs for A358665, there is no canonical definition to state claims against.
-/

/-! ## A358665.P18057567147451464171

`A307026(A236404(n+1))`
-/

namespace A358665.P18057567147451464171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307026 (A236404 (n + 1)).toNat

end

end A358665.P18057567147451464171

/-!
# A358666: Numbers such that the two numbers before and the two numbers after are squarefree semiprimes.

The programs for A358666, there is no canonical definition to state claims against.
-/

/-! ## A358666.P11195641910161341024

`∩[A054735(n+1), A189974(n+1)]`
-/

namespace A358666.P11195641910161341024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358666.P11195641910161341024

/-! ## A358666.P12695136492955315330

`∩[A105571(n+1), A189974(n+1)]`
-/

namespace A358666.P12695136492955315330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358666.P12695136492955315330

/-! ## A358666.P10262878703725130817

`∩[A189974(n+1), A350500(n+1)]`
-/

namespace A358666.P10262878703725130817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358666.P10262878703725130817

/-! ## A358666.P2736812454270965268

`∩[A061715(n+1), A350500(n+1)]`
-/

namespace A358666.P2736812454270965268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358666.P2736812454270965268

/-! ## A358666.P7712953222683034299

`∩[A280469(n+1), A350500(n+1)]`
-/

namespace A358666.P7712953222683034299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358666.P7712953222683034299

/-!
# A358669: Pointwise product of the arithmetic derivative and the primorial base exp-function.

The programs for A358669, there is no canonical definition to state claims against.
-/

/-! ## A358669.P10572792183562855357

`A003415(n)*A276086(n)`
-/

namespace A358669.P10572792183562855357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A276086 n

end

end A358669.P10572792183562855357

/-! ## A358669.P9438252667814957017

`A327858(n)*A359423(n)`
-/

namespace A358669.P9438252667814957017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A359423 n

end

end A358669.P9438252667814957017

/-! ## A358669.P9774309998118242544

`(A351225(n)+n)*A003415(n)`
-/

namespace A358669.P9774309998118242544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A351225 n + (n : ℤ)) * A003415 n

end

end A358669.P9774309998118242544

/-! ## A358669.P7797154744978435972

`(A168036(n)+n)*A276086(n)`
-/

namespace A358669.P7797154744978435972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168036 n + (n : ℤ)) * A276086 n

end

end A358669.P7797154744978435972

/-! ## A358669.P399450942765470430

`(A129283(n)-n)*A276086(n)`
-/

namespace A358669.P399450942765470430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129283 n - (n : ℤ)) * A276086 n

end

end A358669.P399450942765470430

/-! ## A358669.P6228660285015595789

`(A373849(n)+A003415(n))*A003415(n)`
-/

namespace A358669.P6228660285015595789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A373849 n + A003415 n) * A003415 n

end

end A358669.P6228660285015595789

/-! ## A358669.P1880939420583311618

`(A368921(n)+A068346(n))*A276086(n)`
-/

namespace A358669.P1880939420583311618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A368921 n + A068346 n) * A276086 n

end

end A358669.P1880939420583311618

/-! ## A358669.P14527979606812673686

`(A327860(n)-A342016(n))*A003415(n)`
-/

namespace A358669.P14527979606812673686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327860 n - A342016 n) * A003415 n

end

end A358669.P14527979606812673686

/-! ## A358669.P6155853395656053085

`(A348949(n)-A348950(n))*A003415(n)`
-/

namespace A358669.P6155853395656053085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348949 n - A348950 n) * A003415 n

end

end A358669.P6155853395656053085

/-! ## A358669.P7922592144162964540

`(A276086(n)-A373849(n))*A276086(n)`
-/

namespace A358669.P7922592144162964540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A276086 n - A373849 n) * A276086 n

end

end A358669.P7922592144162964540

/-! ## A358669.P16916833612483580696

`A003415(n)*A328571(n)*A328572(n)`
-/

namespace A358669.P16916833612483580696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A328571 n * A328572 n

end

end A358669.P16916833612483580696

/-! ## A358669.P15892923624101591614

`A003415(n)*A324198(n)*A351251(n)`
-/

namespace A358669.P15892923624101591614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A324198 n * A351251 n

end

end A358669.P15892923624101591614

/-! ## A358669.P10742636174678279090

`A003415(n)*A327858(n)*A351231(n)`
-/

namespace A358669.P10742636174678279090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A327858 n * A351231 n

end

end A358669.P10742636174678279090

/-! ## A358669.P11649186100125691090

`A276086(n)*A327858(n)*A351230(n)`
-/

namespace A358669.P11649186100125691090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n * A327858 n * A351230 n

end

end A358669.P11649186100125691090

/-! ## A358669.P9116141879302878397

`A276086(n)/A351231(n)*A359423(n)`
-/

namespace A358669.P9116141879302878397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n : ℚ) / (A351231 n : ℚ) * (A359423 n : ℚ)

end

end A358669.P9116141879302878397

/-! ## A358669.P9916606866704574424

`A276086(n)²*A351230(n)/A351231(n)`
-/

namespace A358669.P9916606866704574424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276086 n ^ 2 * A351230 n : ℚ) / (A351231 n : ℚ)

end

end A358669.P9916606866704574424

/-! ## A358669.P11345760650567077611

`(∑[A258057(n)]-A258057(n))*A276086(n)`
-/

namespace A358669.P11345760650567077611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A258057 n) * A276086 n

end

end A358669.P11345760650567077611

/-! ## A358669.P12239008502848826778

`A003415(n)*A346101(A289234(n))`
-/

namespace A358669.P12239008502848826778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A346101 (A289234 n).toNat

end

end A358669.P12239008502848826778

/-! ## A358669.P16547570332340476859

`A003415(n)*A328627(A328625(n))`
-/

namespace A358669.P16547570332340476859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A328627 (A328625 n).toNat

end

end A358669.P16547570332340476859

/-! ## A358669.P17242493053279013150

`A003415(n)*A328624(A328626(n))`
-/

namespace A358669.P17242493053279013150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A328624 (A328626 n).toNat

end

end A358669.P17242493053279013150

/-!
# A358670: a(n) = 1 if for all factorizations of n as x*y, the sum x+y is carryfree when the addition is done in the primorial base, otherwise 0.

The programs for A358670, there is no canonical definition to state claims against.
-/

/-! ## A358670.P8782455850911914782

`C(A358233(n+1), A038548(n+1))`
-/

namespace A358670.P8782455850911914782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358233 (n + 1)).toNat (A038548 (n + 1)).toNat

end

end A358670.P8782455850911914782

/-! ## A358670.P4009036739376961877

`round(A358233(n+1)/Δ[A006218(n)])`
-/

namespace A358670.P4009036739376961877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A358233 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A358670.P4009036739376961877

/-! ## A358670.P6311970642486635848

`round(A358233(n+1)/Δ[A054519(n)])`
-/

namespace A358670.P6311970642486635848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A358233 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A358670.P6311970642486635848

/-! ## A358670.P15752165509670272979

`round(A358233(n+1)/A000005(n+1))`
-/

namespace A358670.P15752165509670272979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A358233 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))

end

end A358670.P15752165509670272979

/-! ## A358670.P5969632628573869324

`A000007(A038548(n+1)-A358233(n+1))`
-/

namespace A358670.P5969632628573869324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A038548 (n + 1) - A358233 (n + 1)).toNat

end

end A358670.P5969632628573869324

/-!
# A358671: Numbers k such that for all factorizations of k as x*y, the sum x+y is carryfree when the addition is done in the primorial base, A049345.

The programs for A358671, there is no canonical definition to state claims against.
-/

/-! ## A358671.P459518790676582792

`filter[n+1, A358670(#)]`
-/

namespace A358671.P459518790676582792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358670 (f1 j) = 1) n)

end

end A358671.P459518790676582792

/-! ## A358671.P11399515676959658558

`eq[1, A358670(n+1)]+1`
-/

namespace A358671.P11399515676959658558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358671.P11399515676959658558

/-! ## A358671.P12090778420844640756

`A164020(lt[0, A358670(n+1)])`
-/

namespace A358671.P12090778420844640756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A358671.P12090778420844640756

/-! ## A358671.P14037144803400726271

`A316631(lt[0, A358670(n+1)])+1`
-/

namespace A358671.P14037144803400726271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A358671.P14037144803400726271

/-! ## A358671.P11862187108154604770

`eq[A038548(n+1), A358233(n+1)]+1`
-/

namespace A358671.P11862187108154604770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358671.P11862187108154604770

/-! ## A358671.P1853416188426496757

`lt[A010051(3*n+5), A358670(n+1)]+1`
-/

namespace A358671.P1853416188426496757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358671.P1853416188426496757

/-!
# A358672: a(n) = 1 if for all factorizations of n as x*y, the sum (x * y') + (x' * y) is carryfree when the addition is done in the primorial base, otherwise 0. Here u' stands for A003415(u), the arithmetic derivative of u.

The programs for A358672, there is no canonical definition to state claims against.
-/

/-! ## A358672.P9876103958301184290

`round(A358235(n+1)/∏{e}[n+1, #+1])`
-/

namespace A358672.P9876103958301184290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A358235 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ))

end

end A358672.P9876103958301184290

/-! ## A358672.P2526771327799862862

`C(A358235(n+1), A038548(n+1))`
-/

namespace A358672.P2526771327799862862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358235 (n + 1)).toNat (A038548 (n + 1)).toNat

end

end A358672.P2526771327799862862

/-! ## A358672.P14389882947563651075

`round(A358235(n+1)/A000005(n+1))`
-/

namespace A358672.P14389882947563651075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A358235 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))

end

end A358672.P14389882947563651075

/-! ## A358672.P13476607504297450085

`floor(A358235(n+1)/Δ[A132106(n)/2])`
-/

namespace A358672.P13476607504297450085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A358235 (n + 1) : ℚ) / (f1 (n + 1) - f1 n)⌋

end

end A358672.P13476607504297450085

/-! ## A358672.P17429060812689367506

`floor(A358235(n+1)/(floor(A325765(n)/2)+1))`
-/

namespace A358672.P17429060812689367506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A358235 (n + 1) : ℚ) / (⌊(A325765 n : ℚ) / 2⌋ + 1 : ℚ)⌋

end

end A358672.P17429060812689367506

/-!
# A358673: Numbers k such that for all factorizations of k as x*y, the sum (x * y') + (x' * y) is carryfree when the addition is done in the primorial base, A049345. Here n' stands for A003415(n), the arithmetic derivative of n.

The programs for A358673, there is no canonical definition to state claims against.
-/

/-! ## A358673.P8926653495033747989

`record[(n+1)*A358672(n+1)]`
-/

namespace A358673.P8926653495033747989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A358672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358673.P8926653495033747989

/-! ## A358673.P8075904063845341381

`lt[0, A358672(n+1)]+1`
-/

namespace A358673.P8075904063845341381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358673.P8075904063845341381

/-! ## A358673.P11393639428390176112

`eq[1, A358672(A000027(n+1))]+1`
-/

namespace A358673.P11393639428390176112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358673.P11393639428390176112

/-! ## A358673.P4613333396383734668

`(eq[1, A358672(n+1)]+1)%A000040(n+1)`
-/

namespace A358673.P4613333396383734668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A000040 (n + 1))

end

end A358673.P4613333396383734668

/-! ## A358673.P7919725668724503452

`eq[A049240(3*n+2), A358672(n+1)]+1`
-/

namespace A358673.P7919725668724503452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358673.P7919725668724503452

/-! ## A358673.P18098405826626622396

`filter[A068937(n+1), A358672(#)]`
-/

namespace A358673.P18098405826626622396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A358673.P18098405826626622396

/-! ## A358673.P9079672568564586327

`filter[n+1, A358672(#)]`
-/

namespace A358673.P9079672568564586327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j) = 1) n)

end

end A358673.P9079672568564586327

/-! ## A358673.P7857919624263658998

`eq[A038548(n+1), A358235(n+1)]+1`
-/

namespace A358673.P7857919624263658998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358673.P7857919624263658998

/-! ## A358673.P8788660973270593615

`eq[A056957(n+1)%4, A358672(n+1)]+1`
-/

namespace A358673.P8788660973270593615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056957 (n + 1)) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358673.P8788660973270593615

/-! ## A358673.P13620235439610936769

`eq[A225561(2*n+1), A358672(n+1)]+1`
-/

namespace A358673.P13620235439610936769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358673.P13620235439610936769

/-!
# A358674: Numbers k for which there is a factorization of k into such a pair of natural numbers x and y, that the sum (x * y') + (x' * y) will generate at least one carry when the addition is done in the primorial base. Here n' stands for A003415(n), the arithmetic derivative of n.

The programs for A358674, there is no canonical definition to state claims against.
-/

/-! ## A358674.P10605054217226217778

`eq[0, A358672(n+1)]+1`
-/

namespace A358674.P10605054217226217778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358674.P10605054217226217778

/-! ## A358674.P12502023290767326575

`comp[A358673(n+1)-1]+1`
-/

namespace A358674.P12502023290767326575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358673 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358674.P12502023290767326575

/-! ## A358674.P3521647420978179521

`lt[A358672(abs(1-n)+1), 1]`
-/

namespace A358674.P3521647420978179521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358674.P3521647420978179521

/-! ## A358674.P1632705041415285947

`eq[0, A358672(A028310(n))]`
-/

namespace A358674.P1632705041415285947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358674.P1632705041415285947

/-! ## A358674.P1142075410774096698

`A065475(lt[A358672(n+1), 1])`
-/

namespace A358674.P1142075410774096698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358672 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A358674.P1142075410774096698

/-! ## A358674.P8153698648565657793

`comp[A000027(n+1)*A358672(n+1)]`
-/

namespace A358674.P8153698648565657793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A358672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358674.P8153698648565657793

/-! ## A358674.P3488038553176721080

`lt[A358235(n+1), A038548(n+1)]+1`
-/

namespace A358674.P3488038553176721080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358674.P3488038553176721080

/-!
# A358675: Numbers k such that for all nontrivial factorizations of k as x*y, the sum (x * y') + (x' * y) will generate at least one carry when the addition is done in the primorial base. Here n' stands for A003415(n), the arithmetic derivative of n.

The programs for A358675, there is no canonical definition to state claims against.
-/

/-! ## A358675.P15932151988897085012

`record[A358674(n+1)/A358235(A358674(n+1))]`
-/

namespace A358675.P15932151988897085012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358674 (n + 1) : ℚ) / (A358235 (A358674 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358675.P15932151988897085012

/-! ## A358675.P17240910356548759108

`A130706(A290296(n))+A054020(n+1)`
-/

namespace A358675.P17240910356548759108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A290296 n).toNat + A054020 (n + 1)

end

end A358675.P17240910356548759108

/-! ## A358675.P17153220786468202291

`A358674(lt[A338511(n+6), A006233(3*n)])`
-/

namespace A358675.P17153220786468202291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338511 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006233 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358674 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358675.P17153220786468202291

/-!
# A358678: a(n) = 1 if n is odd and sigma(n) == 2 mod 4, otherwise 0.

The programs for A358678, the canonical program `A358678.P8777088749171866875` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358678 has offset 1).

The definition of A358678 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353812, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358678.P8777088749171866875

`A000035(n+1)*A353812(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A358678

/-- `A000035(n+1)*A353812(n+1)` -/
def P8777088749171866875.Spec : Prop :=
  ∀ n, P8777088749171866875.a n = A358678 (n + 1)

theorem P8777088749171866875.correct : P8777088749171866875.Spec := by
  intro n
  simp only [A358678, Nat.add_sub_cancel]

end A358678

/-! ## A358678.P12389378788795175858

`A353812(or(n, n+1))`
-/

namespace A358678.P12389378788795175858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (Nat.lor n (n + 1))

end

end A358678.P12389378788795175858

namespace A358678

/-- `A353812(or(n, n+1))` -/
def P12389378788795175858.Spec : Prop :=
  ∀ n, P12389378788795175858.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P15578462289231843996

`char[A191218(n+1)-1]`
-/

namespace A358678.P15578462289231843996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358678.P15578462289231843996

namespace A358678

/-- `char[A191218(n+1)-1]` -/
def P15578462289231843996.Spec : Prop :=
  ∀ n, (P15578462289231843996.a n : ℤ) = A358678 (n + 1)

end A358678

/-! ## A358678.P17196789077195868367

`char[eq[2, A126812(n+1)]]`
-/

namespace A358678.P17196789077195868367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126812 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358678.P17196789077195868367

namespace A358678

/-- `char[eq[2, A126812(n+1)]]` -/
def P17196789077195868367.Spec : Prop :=
  ∀ n, (P17196789077195868367.a n : ℤ) = A358678 (n + 1)

end A358678

/-! ## A358678.P28910666582483384

`and(n+1, A353812(n+1))`
-/

namespace A358678.P28910666582483384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A353812 (n + 1))

end

end A358678.P28910666582483384

namespace A358678

/-- `and(n+1, A353812(n+1))` -/
def P28910666582483384.Spec : Prop :=
  ∀ n, P28910666582483384.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P13352984601686630078

`and(char[4*n], A326040(n+1))`
-/

namespace A358678.P13352984601686630078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A326040 (n + 1))

end

end A358678.P13352984601686630078

namespace A358678

/-- `and(char[4*n], A326040(n+1))` -/
def P13352984601686630078.Spec : Prop :=
  ∀ n, P13352984601686630078.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P1733047513131701716

`A353812(A141310(n))`
-/

namespace A358678.P1733047513131701716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A141310 n).toNat

end

end A358678.P1733047513131701716

namespace A358678

/-- `A353812(A141310(n))` -/
def P1733047513131701716.Spec : Prop :=
  ∀ n, P1733047513131701716.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P18239229635933163516

`A354037(A341522(n))`
-/

namespace A358678.P18239229635933163516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (A341522 n).toNat

end

end A358678.P18239229635933163516

namespace A358678

/-- `A354037(A341522(n))` -/
def P18239229635933163516.Spec : Prop :=
  ∀ n, P18239229635933163516.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P12275180942689676548

`A353812(A042964(n+1))`
-/

namespace A358678.P12275180942689676548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A042964 (n + 1)).toNat

end

end A358678.P12275180942689676548

namespace A358678

/-- `A353812(A042964(n+1))` -/
def P12275180942689676548.Spec : Prop :=
  ∀ n, P12275180942689676548.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P7607395487345291683

`A353812(A047406(n+1))`
-/

namespace A358678.P7607395487345291683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A047406 (n + 1)).toNat

end

end A358678.P7607395487345291683

namespace A358678

/-- `A353812(A047406(n+1))` -/
def P7607395487345291683.Spec : Prop :=
  ∀ n, P7607395487345291683.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P9544801179557349523

`A353812(A047535(n+1))`
-/

namespace A358678.P9544801179557349523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A047535 (n + 1)).toNat

end

end A358678.P9544801179557349523

namespace A358678

/-- `A353812(A047535(n+1))` -/
def P9544801179557349523.Spec : Prop :=
  ∀ n, P9544801179557349523.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P2597028076401579742

`A354037(A047447(n+1))`
-/

namespace A358678.P2597028076401579742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (A047447 (n + 1)).toNat

end

end A358678.P2597028076401579742

namespace A358678

/-- `A354037(A047447(n+1))` -/
def P2597028076401579742.Spec : Prop :=
  ∀ n, P2597028076401579742.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P18204586837663361679

`A354037(A047578(n+1))`
-/

namespace A358678.P18204586837663361679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354037 (A047578 (n + 1)).toNat

end

end A358678.P18204586837663361679

namespace A358678

/-- `A354037(A047578(n+1))` -/
def P18204586837663361679.Spec : Prop :=
  ∀ n, P18204586837663361679.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P13166201233430498467

`A185013(A286451(n+1))`
-/

namespace A358678.P13166201233430498467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (A286451 (n + 1)).toNat

end

end A358678.P13166201233430498467

namespace A358678

/-- `A185013(A286451(n+1))` -/
def P13166201233430498467.Spec : Prop :=
  ∀ n, P13166201233430498467.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P5765326812346147375

`A353812(A047521(n+1)+4)`
-/

namespace A358678.P5765326812346147375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A047521 (n + 1) + 4).toNat

end

end A358678.P5765326812346147375

namespace A358678

/-- `A353812(A047521(n+1)+4)` -/
def P5765326812346147375.Spec : Prop :=
  ∀ n, P5765326812346147375.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P1893195814053374330

`A056594(n)*A353812(n+1)`
-/

namespace A358678.P1893195814053374330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A353812 (n + 1)

end

end A358678.P1893195814053374330

namespace A358678

/-- `A056594(n)*A353812(n+1)` -/
def P1893195814053374330.Spec : Prop :=
  ∀ n, P1893195814053374330.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P5277952835378739748

`A059841(n)*A353812(n+1)`
-/

namespace A358678.P5277952835378739748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A353812 (n + 1)

end

end A358678.P5277952835378739748

namespace A358678

/-- `A059841(n)*A353812(n+1)` -/
def P5277952835378739748.Spec : Prop :=
  ∀ n, P5277952835378739748.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P6206746653640185572

`A108357(n)*A353812(n+1)`
-/

namespace A358678.P6206746653640185572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108357 n * A353812 (n + 1)

end

end A358678.P6206746653640185572

namespace A358678

/-- `A108357(n)*A353812(n+1)` -/
def P6206746653640185572.Spec : Prop :=
  ∀ n, P6206746653640185572.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P4923565022550778927

`A121262(n)*A353812(n+1)`
-/

namespace A358678.P4923565022550778927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n * A353812 (n + 1)

end

end A358678.P4923565022550778927

namespace A358678

/-- `A121262(n)*A353812(n+1)` -/
def P4923565022550778927.Spec : Prop :=
  ∀ n, P4923565022550778927.a n = A358678 (n + 1)

end A358678

/-! ## A358678.P241038699813968869

`A353812(A270684(n))`
-/

namespace A358678.P241038699813968869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353812 (A270684 n).toNat

end

end A358678.P241038699813968869

namespace A358678

/-- `A353812(A270684(n))` -/
def P241038699813968869.Spec : Prop :=
  ∀ n, P241038699813968869.a n = A358678 (n + 1)

end A358678

/-!
# A358679: Dirichlet inverse of the characteristic function of A061345, odd prime powers.

The programs for A358679, there is no canonical definition to state claims against.
-/

/-! ## A358679.P13387020007489078993

`A059841(n)*A355817(n+1)`
-/

namespace A358679.P13387020007489078993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A355817 (n + 1)

end

end A358679.P13387020007489078993

/-! ## A358679.P16405193071461037326

`∑[A033999(n)]*A355817(n+1)`
-/

namespace A358679.P16405193071461037326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A355817 (n + 1)

end

end A358679.P16405193071461037326

/-! ## A358679.P7860689410192448355

`(1-A000035(n))*A355817(n+1)`
-/

namespace A358679.P7860689410192448355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A355817 (n + 1)

end

end A358679.P7860689410192448355

/-! ## A358679.P17020013472854564711

`A000035(n+1)*A355817(n+1)`
-/

namespace A358679.P17020013472854564711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A355817 (n + 1)

end

end A358679.P17020013472854564711

/-! ## A358679.P6267469098050483682

`(and(1, n)-1)^∑{e}[n+1, #]*A335452(A064989(n+1))`
-/

namespace A358679.P6267469098050483682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A335452 (A064989 (n + 1)).toNat

end

end A358679.P6267469098050483682

/-! ## A358679.P6460578467656755539

`A166698(n+1)*A335452(n+1)`
-/

namespace A358679.P6460578467656755539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (n + 1) * A335452 (n + 1)

end

end A358679.P6460578467656755539

/-! ## A358679.P1928993095097394350

`A079978(A003961(n+2))*A355817(n+1)`
-/

namespace A358679.P1928993095097394350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A003961 (n + 2)).toNat * A355817 (n + 1)

end

end A358679.P1928993095097394350

/-! ## A358679.P11106739839048410112

`A359773(A000188(∑[2*n+1])²)`
-/

namespace A358679.P11106739839048410112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359773 (A000188 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A358679.P11106739839048410112

/-! ## A358679.P8050822855634933210

`A358777(A028260(A055037((n+1)*(n+1))))`
-/

namespace A358679.P8050822855634933210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A028260 (A055037 ((n + 1) * (n + 1))).toNat).toNat

end

end A358679.P8050822855634933210

/-! ## A358679.P8668015235119960287

`A358777(A246676((n+1)²))`
-/

namespace A358679.P8668015235119960287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358777 (A246676 ((n + 1) ^ 2)).toNat

end

end A358679.P8668015235119960287

/-!
# A358680: a(n) = 1 if the arithmetic derivative of n is even, 0 otherwise.

The programs for A358680, the canonical program `A358680.P17815025508061281044` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358680 has offset 0).

The definition of A358680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353494, A353495, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358680.P17377524191234376235

`1-A165560(n)`
-/

namespace A358680.P17377524191234376235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A165560 n

end

end A358680.P17377524191234376235

namespace A358680

/-- `1-A165560(n)` -/
def P17377524191234376235.Spec : Prop :=
  ∀ n, P17377524191234376235.a n = A358680 n

end A358680

/-! ## A358680.P17815025508061281044

`A353494(n)+A353495(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A358680

/-- `A353494(n)+A353495(n)` -/
def P17815025508061281044.Spec : Prop :=
  ∀ n, P17815025508061281044.a n = A358680 n

theorem P17815025508061281044.correct : P17815025508061281044.Spec := by
  intro n
  simp only [A358680]

end A358680

/-! ## A358680.P8617331598434402797

`A059841(A003415(n))`
-/

namespace A358680.P8617331598434402797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A003415 n).toNat

end

end A358680.P8617331598434402797

namespace A358680

/-- `A059841(A003415(n))` -/
def P8617331598434402797.Spec : Prop :=
  ∀ n, P8617331598434402797.a n = A358680 n

end A358680

/-! ## A358680.P9216370916840308664

`A327859(n)%2`
-/

namespace A358680.P9216370916840308664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327859 n) 2

end

end A358680.P9216370916840308664

namespace A358680

/-- `A327859(n)%2` -/
def P9216370916840308664.Spec : Prop :=
  ∀ n, P9216370916840308664.a n = A358680 n

end A358680

/-! ## A358680.P11468084531586815627

`char[A235992(n+1)]`
-/

namespace A358680.P11468084531586815627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358680.P11468084531586815627

namespace A358680

/-- `char[A235992(n+1)]` -/
def P11468084531586815627.Spec : Prop :=
  ∀ n, (P11468084531586815627.a n : ℤ) = A358680 n

end A358680

/-! ## A358680.P1547137726968232128

`1-A359820(3*n)`
-/

namespace A358680.P1547137726968232128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A359820 (3 * n)

end

end A358680.P1547137726968232128

namespace A358680

/-- `1-A359820(3*n)` -/
def P1547137726968232128.Spec : Prop :=
  ∀ n, P1547137726968232128.a n = A358680 n

end A358680

/-! ## A358680.P12220183950035342860

`and(1, A353493(n)+1)`
-/

namespace A358680.P12220183950035342860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353493 n + 1)

end

end A358680.P12220183950035342860

namespace A358680

/-- `and(1, A353493(n)+1)` -/
def P12220183950035342860.Spec : Prop :=
  ∀ n, P12220183950035342860.a n = A358680 n

end A358680

/-! ## A358680.P4677123323138342322

`and(1, A368922(n)+1)`
-/

namespace A358680.P4677123323138342322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A368922 n + 1)

end

end A358680.P4677123323138342322

namespace A358680

/-- `and(1, A368922(n)+1)` -/
def P4677123323138342322.Spec : Prop :=
  ∀ n, P4677123323138342322.a n = A358680 n

end A358680

/-! ## A358680.P13517248772926405632

`1-char[A235991(n+1)]`
-/

namespace A358680.P13517248772926405632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A358680.P13517248772926405632

namespace A358680

/-- `1-char[A235991(n+1)]` -/
def P13517248772926405632.Spec : Prop :=
  ∀ n, P13517248772926405632.a n = A358680 n

end A358680

/-! ## A358680.P17143702182968353026

`1-A001222(gcd(n, ∑[xor(1, n)]))%2`
-/

namespace A358680.P17143702182968353026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A001222 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))) 2

end

end A358680.P17143702182968353026

namespace A358680

/-- `1-A001222(gcd(n, ∑[xor(1, n)]))%2` -/
def P17143702182968353026.Spec : Prop :=
  ∀ n, P17143702182968353026.a n = A358680 n

end A358680

/-! ## A358680.P11498782253575758698

`A059841(A328772(n))`
-/

namespace A358680.P11498782253575758698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A328772 n).toNat

end

end A358680.P11498782253575758698

namespace A358680

/-- `A059841(A328772(n))` -/
def P11498782253575758698.Spec : Prop :=
  ∀ n, P11498782253575758698.a n = A358680 n

end A358680

/-! ## A358680.P15039372443273704362

`A121262(A358765(n))`
-/

namespace A358680.P15039372443273704362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A358765 n).toNat

end

end A358680.P15039372443273704362

namespace A358680

/-- `A121262(A358765(n))` -/
def P15039372443273704362.Spec : Prop :=
  ∀ n, P15039372443273704362.a n = A358680 n

end A358680

/-! ## A358680.P2921885340297093312

`A121262(A374123(n))`
-/

namespace A358680.P2921885340297093312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A374123 n).toNat

end

end A358680.P2921885340297093312

namespace A358680

/-- `A121262(A374123(n))` -/
def P2921885340297093312.Spec : Prop :=
  ∀ n, P2921885340297093312.a n = A358680 n

end A358680

/-! ## A358680.P1772107469539378901

`A359820(A263426(n))`
-/

namespace A358680.P1772107469539378901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A263426 n).toNat

end

end A358680.P1772107469539378901

namespace A358680

/-- `A359820(A263426(n))` -/
def P1772107469539378901.Spec : Prop :=
  ∀ n, P1772107469539378901.a n = A358680 n

end A358680

/-! ## A358680.P13527788264339089785

`A000035(A328772(n)+1)`
-/

namespace A358680.P13527788264339089785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328772 n + 1).toNat

end

end A358680.P13527788264339089785

namespace A358680

/-- `A000035(A328772(n)+1)` -/
def P13527788264339089785.Spec : Prop :=
  ∀ n, P13527788264339089785.a n = A358680 n

end A358680

/-! ## A358680.P7797693421697391634

`A359820(A014681(n+1))`
-/

namespace A358680.P7797693421697391634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A014681 (n + 1)).toNat

end

end A358680.P7797693421697391634

namespace A358680

/-- `A359820(A014681(n+1))` -/
def P7797693421697391634.Spec : Prop :=
  ∀ n, P7797693421697391634.a n = A358680 n

end A358680

/-! ## A358680.P12800633291777903856

`A359820(A103889(n+1))`
-/

namespace A358680.P12800633291777903856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A103889 (n + 1)).toNat

end

end A358680.P12800633291777903856

namespace A358680

/-- `A359820(A103889(n+1))` -/
def P12800633291777903856.Spec : Prop :=
  ∀ n, P12800633291777903856.a n = A358680 n

end A358680

/-! ## A358680.P18046599587157852276

`A359820(A114112(n+1))`
-/

namespace A358680.P18046599587157852276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A114112 (n + 1)).toNat

end

end A358680.P18046599587157852276

namespace A358680

/-- `A359820(A114112(n+1))` -/
def P18046599587157852276.Spec : Prop :=
  ∀ n, P18046599587157852276.a n = A358680 n

end A358680

/-! ## A358680.P2972017569744350852

`A359820(n)+A056594(n)`
-/

namespace A358680.P2972017569744350852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 n + A056594 n

end

end A358680.P2972017569744350852

namespace A358680

/-- `A359820(n)+A056594(n)` -/
def P2972017569744350852.Spec : Prop :=
  ∀ n, P2972017569744350852.a n = A358680 n

end A358680

/-! ## A358680.P14386105362421102710

`A014017(n*A165560(n))`
-/

namespace A358680.P14386105362421102710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 ((n : ℤ) * A165560 n).toNat

end

end A358680.P14386105362421102710

namespace A358680

/-- `A014017(n*A165560(n))` -/
def P14386105362421102710.Spec : Prop :=
  ∀ n, P14386105362421102710.a n = A358680 n

end A358680

/-!
# A358682: Numbers k such that 8*k^2 + 8*k - 7 is a square.

The programs for A358682, the canonical program `A358682.P8535191185801330454` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358682 has offset 1).

The definition of A358682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358682.P8535191185801330454

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=43`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358682

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P8535191185801330454.Spec : Prop :=
  ∀ n, P8535191185801330454.a n = A358682 (n + 1)

theorem P8535191185801330454.correct : P8535191185801330454.Spec := by
  intro n
  simp only [A358682, Nat.add_sub_cancel]

end A358682

/-! ## A358682.P13212933783929490510

`3*A011900(n)-2`
-/

namespace A358682.P13212933783929490510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011900 n - 2

end

end A358682.P13212933783929490510

namespace A358682

/-- `3*A011900(n)-2` -/
def P13212933783929490510.Spec : Prop :=
  ∀ n, P13212933783929490510.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P135064249572996815

`6*A053142(n)+1`
-/

namespace A358682.P135064249572996815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A053142 n + 1

end

end A358682.P135064249572996815

namespace A358682

/-- `6*A053142(n)+1` -/
def P135064249572996815.Spec : Prop :=
  ∀ n, P135064249572996815.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P17155742693095439886

`floor(a(n-1)/(3-sqrt(8)))+3` with `a(0)=1, a(1)=7`
-/

namespace A358682.P17155742693095439886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 3

end

end A358682.P17155742693095439886

namespace A358682

/-- `floor(a(n-1)/(3-sqrt(8)))+3` -/
def P17155742693095439886.Spec : Prop :=
  ∀ n, P17155742693095439886.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P10436757105838374027

`6*a(n-1)+2-a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A358682.P10436757105838374027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 * a (n - 1) + (2 - a (n - 2))

end

end A358682.P10436757105838374027

namespace A358682

/-- `6*a(n-1)+2-a(n-2)` -/
def P10436757105838374027.Spec : Prop :=
  ∀ n, P10436757105838374027.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P16329792208398102017

`2-(a(n-2)-6*a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A358682.P16329792208398102017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 - (a (n - 2) - 6 * a (n - 1))

end

end A358682.P16329792208398102017

namespace A358682

/-- `2-(a(n-2)-6*a(n-1))` -/
def P16329792208398102017.Spec : Prop :=
  ∀ n, P16329792208398102017.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P14215920495578068667

`∑[A075848(n)]+1`
-/

namespace A358682.P14215920495578068667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A358682.P14215920495578068667

namespace A358682

/-- `∑[A075848(n)]+1` -/
def P14215920495578068667.Spec : Prop :=
  ∀ n, P14215920495578068667.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P16582542886753246785

`3*A053141(n)+1`
-/

namespace A358682.P16582542886753246785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A053141 n + 1

end

end A358682.P16582542886753246785

namespace A358682

/-- `3*A053141(n)+1` -/
def P16582542886753246785.Spec : Prop :=
  ∀ n, P16582542886753246785.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P8289354917699287775

`(A075841(n+1)-1)/2`
-/

namespace A358682.P8289354917699287775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075841 (n + 1) - 1 : ℚ) / 2

end

end A358682.P8289354917699287775

namespace A358682

/-- `(A075841(n+1)-1)/2` -/
def P8289354917699287775.Spec : Prop :=
  ∀ n, P8289354917699287775.a n = (A358682 (n + 1) : ℚ)

end A358682

/-! ## A358682.P1577891792524488012

`A182190(n)+A011900(n)`
-/

namespace A358682.P1577891792524488012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n + A011900 n

end

end A358682.P1577891792524488012

namespace A358682

/-- `A182190(n)+A011900(n)` -/
def P1577891792524488012.Spec : Prop :=
  ∀ n, P1577891792524488012.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P4300159467121960708

`A001108(n)+Δ[A053142(n)]`
-/

namespace A358682.P4300159467121960708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (f1 (n + 1) - f1 n)

end

end A358682.P4300159467121960708

namespace A358682

/-- `A001108(n)+Δ[A053142(n)]` -/
def P4300159467121960708.Spec : Prop :=
  ∀ n, P4300159467121960708.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P13319501876970273444

`A053141(n)+Δ[A001109(n)]`
-/

namespace A358682.P13319501876970273444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n + (f1 (n + 1) - f1 n)

end

end A358682.P13319501876970273444

namespace A358682

/-- `A053141(n)+Δ[A001109(n)]` -/
def P13319501876970273444.Spec : Prop :=
  ∀ n, P13319501876970273444.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P17928904223876273991

`A001109(n+1)+A001108(n)`
-/

namespace A358682.P17928904223876273991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) + A001108 n

end

end A358682.P17928904223876273991

namespace A358682

/-- `A001109(n+1)+A001108(n)` -/
def P17928904223876273991.Spec : Prop :=
  ∀ n, P17928904223876273991.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P10312158708579471203

`A053141(n)+A001653(n+1)`
-/

namespace A358682.P10312158708579471203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n + A001653 (n + 1)

end

end A358682.P10312158708579471203

namespace A358682

/-- `A053141(n)+A001653(n+1)` -/
def P10312158708579471203.Spec : Prop :=
  ∀ n, P10312158708579471203.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P2761453606780215312

`A106328(n+1)+A072221(n)`
-/

namespace A358682.P2761453606780215312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (n + 1) + A072221 n

end

end A358682.P2761453606780215312

namespace A358682

/-- `A106328(n+1)+A072221(n)` -/
def P2761453606780215312.Spec : Prop :=
  ∀ n, P2761453606780215312.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P15234534145910645413

`A053141(n+1)-A002315(n)`
-/

namespace A358682.P15234534145910645413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 (n + 1) - A002315 n

end

end A358682.P15234534145910645413

namespace A358682

/-- `A053141(n+1)-A002315(n)` -/
def P15234534145910645413.Spec : Prop :=
  ∀ n, P15234534145910645413.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P12855165076389188100

`A038725(n+1)-A046090(n)`
-/

namespace A358682.P12855165076389188100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038725 (n + 1) - A046090 n

end

end A358682.P12855165076389188100

namespace A358682

/-- `A038725(n+1)-A046090(n)` -/
def P12855165076389188100.Spec : Prop :=
  ∀ n, P12855165076389188100.a n = A358682 (n + 1)

end A358682

/-! ## A358682.P13863341993928515238

`A216134(2*n)+A001541(n)`
-/

namespace A358682.P13863341993928515238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 (2 * n) + A001541 n

end

end A358682.P13863341993928515238

namespace A358682

/-- `A216134(2*n)+A001541(n)` -/
def P13863341993928515238.Spec : Prop :=
  ∀ n, P13863341993928515238.a n = A358682 (n + 1)

end A358682

/-!
# A358683: a(n) is the sum of all divisors of all positive integers k where A182986(n) < k <= prime(n), n >= 1.

The programs for A358683, there is no canonical definition to state claims against.
-/

/-! ## A358683.P1884502271887884887

`Δ[A160664(eq[n, ∑{p}[n, #]])]`
-/

namespace A358683.P1884502271887884887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (SequenceMachineLib.nth (fun j => f2 j = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P1884502271887884887

/-! ## A358683.P3527208767234424676

`Δ[A160664(A182986(n+1))]`
-/

namespace A358683.P3527208767234424676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P3527208767234424676

/-! ## A358683.P10976592420517673510

`Δ[A160664(eq[n, A039653(n)])]`
-/

namespace A358683.P10976592420517673510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P10976592420517673510

/-! ## A358683.P6092673936383451958

`Δ[A160664(record[A008472(n+1)])]`
-/

namespace A358683.P6092673936383451958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P6092673936383451958

/-! ## A358683.P16772909340274509425

`Δ[A160664(record[A061397(n+1)])]`
-/

namespace A358683.P16772909340274509425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P16772909340274509425

/-! ## A358683.P13446651566079532417

`Δ[A160664(∑{p}[A015919(n+1), #])]`
-/

namespace A358683.P13446651566079532417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P13446651566079532417

/-! ## A358683.P9883569113658376019

`Δ[A160664(A008578(n+1)%A064987(n+1))]`
-/

namespace A358683.P9883569113658376019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (Int.tmod (A008578 (n + 1)) (A064987 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P9883569113658376019

/-! ## A358683.P5815138859892567292

`Δ[A160664((A028815(n)-1)%A064987(n+1))]`
-/

namespace A358683.P5815138859892567292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (Int.tmod (A028815 n - 1) (A064987 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358683.P5815138859892567292

/-!
# A358685: Number of primes < 10^n whose digits are all odd.

The programs for A358685, there is no canonical definition to state claims against.
-/

/-! ## A358685.P12710651653450259932

`∑[A358690(n+1)]`
-/

namespace A358685.P12710651653450259932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358685.P12710651653450259932

/-!
# A358686: Numbers sandwiched between two semiprimes, one of which is a square.

The programs for A358686, there is no canonical definition to state claims against.
-/

/-! ## A358686.P7679194373999342560

`∩[A080262(n+1), A092207(n+1)+1]`
-/

namespace A358686.P7679194373999342560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092207 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358686.P7679194373999342560

/-! ## A358686.P16910859995858149102

`∩[A080262(n+1), A023890(A092207(n+1))]`
-/

namespace A358686.P16910859995858149102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A092207 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358686.P16910859995858149102

/-! ## A358686.P16462618723463453866

`∩[A087279(n+1), A023890(A092207(n+1))]`
-/

namespace A358686.P16462618723463453866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (A092207 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358686.P16462618723463453866

/-! ## A358686.P565846677746414848

`∩[A080262(n+1), A124936(n+1)]`
-/

namespace A358686.P565846677746414848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358686.P565846677746414848

/-! ## A358686.P10805992861930304841

`∩[A087279(n+1), A124936(n+1)]`
-/

namespace A358686.P10805992861930304841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358686.P10805992861930304841

/-!
# A358687: a(n) = n! * Sum_{k=0..n} k^(3 * (n-k)) / (n-k)!.

The programs for A358687, there is no canonical definition to state claims against.
-/

/-! ## A358687.P8005378312954400685

`A018825(A300986(n))`
-/

namespace A358687.P8005378312954400685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (A300986 n).toNat

end

end A358687.P8005378312954400685

/-!
# A358688: a(n) = n! * Sum_{k=0..n} k^(k * (n-k)) / (n-k)!.

The programs for A358688, there is no canonical definition to state claims against.
-/

/-! ## A358688.P3276078307305364994

`∑[A000177(A016153(n))]`
-/

namespace A358688.P3276078307305364994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000177 (A016153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358688.P3276078307305364994

/-!
# A358691: Gilbreath transform of primes p(2k-1); see Comments.

The programs for A358691, the canonical program `A358691.P7352561342334619910` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358691 has offset 1).

The definition of A358691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358691.P7352561342334619910

`ceil(7/or(3, n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A358691

/-- `ceil(7/or(3, n))` -/
def P7352561342334619910.Spec : Prop :=
  ∀ n, P7352561342334619910.a n = A358691 (n + 1)

theorem P7352561342334619910.correct : P7352561342334619910.Spec := by
  intro n
  simp only [A358691, Nat.add_sub_cancel]

end A358691

/-!
# A358692: Gilbreath transform of primes p(2*k) with 2 prefixed; see Comments.

The programs for A358692, there is no canonical definition to state claims against.
-/

/-! ## A358692.P11883236167656972244

`or(1, C(2, n))`
-/

namespace A358692.P11883236167656972244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose 2 n)

end

end A358692.P11883236167656972244

/-!
# A358693: Numbers k such that k / (sum of digits of k) is the square of a prime.

The programs for A358693, there is no canonical definition to state claims against.
-/

/-! ## A358693.P3260540239760246417

`∩[A001102(n+1), A085772(n+1)]`
-/

namespace A358693.P3260540239760246417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358693.P3260540239760246417

/-! ## A358693.P4093571519292793508

`∩[A085772(n+1), A236750(n+1)]`
-/

namespace A358693.P4093571519292793508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358693.P4093571519292793508

/-! ## A358693.P1346497463125918824

`∩[A085772(n+1), A227224(n+1)]`
-/

namespace A358693.P1346497463125918824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358693.P1346497463125918824

/-!
# A358694: Triangle read by rows. Coefficients of the polynomials H(n, x) = Sum_{k=0..n-1} Sum_{i=0..k} abs(Stirling1(n, n - i)) * x^(n - k) in ascending order of powers.

The programs for A358694, there is no canonical definition to state claims against.
-/

/-! ## A358694.P6051323709862625565

`A262071(n)+A025465(A000129(n))`
-/

namespace A358694.P6051323709862625565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 n + A025465 (A000129 n).toNat

end

end A358694.P6051323709862625565

/-! ## A358694.P15351983004317736998

`A262071(n)+A129251(A000051(n+1))`
-/

namespace A358694.P15351983004317736998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 n + A129251 (A000051 (n + 1)).toNat

end

end A358694.P15351983004317736998

/-! ## A358694.P3496641819464204951

`A368413(A317256(n+1))+A262071(n)`
-/

namespace A358694.P3496641819464204951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368413 (A317256 (n + 1)).toNat + A262071 n

end

end A358694.P3496641819464204951

/-! ## A358694.P16520535476978138822

`A104557(n)*A316824(A005471(n+2))`
-/

namespace A358694.P16520535476978138822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104557 n * A316824 (A005471 (n + 2)).toNat

end

end A358694.P16520535476978138822

/-! ## A358694.P7972021333575825343

`A090238(n)+A089789(A359215(2*(n+1)))`
-/

namespace A358694.P7972021333575825343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090238 n + A089789 (A359215 (2 * (n + 1))).toNat

end

end A358694.P7972021333575825343

/-!
# A358695: a(n) = numerator( Sum_{k=0..n} (-1)^k * binomial(1/2, k)^2 * binomial(n, k) ).

The programs for A358695, there is no canonical definition to state claims against.
-/

/-! ## A358695.P13151896225797835461

`A358113(n)/A102376(n)`
-/

namespace A358695.P13151896225797835461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358113 n : ℚ) / (A102376 n : ℚ)

end

end A358695.P13151896225797835461

/-! ## A358695.P6708340618008025781

`A358113(n)/A001316(n)²`
-/

namespace A358695.P6708340618008025781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358113 n : ℚ) / (A001316 n ^ 2 : ℚ)

end

end A358695.P6708340618008025781

/-! ## A358695.P11082471736648571578

`A358113(n)/A000302(A000120(n))`
-/

namespace A358695.P11082471736648571578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358113 n : ℚ) / (A000302 (A000120 n).toNat : ℚ)

end

end A358695.P11082471736648571578

/-!
# A358696: Number of self-avoiding closed paths in the 5 X n grid graph which pass through all vertices on four (left, right, upper, lower) sides of the graph.

The programs for A358696, there is no canonical definition to state claims against.
-/

/-! ## A358696.P12095044718934138075

`record[char[∑[n]]*A333758(n+5)]`
-/

namespace A358696.P12095044718934138075
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A333758 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358696.P12095044718934138075

/-! ## A358696.P7704511573207499546

`A333758(A167499(n+2))`
-/

namespace A358696.P7704511573207499546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (A167499 (n + 2)).toNat

end

end A358696.P7704511573207499546

/-! ## A358696.P6311524603989693818

`A333758(A155212(n)+6)`
-/

namespace A358696.P6311524603989693818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (A155212 n + 6).toNat

end

end A358696.P6311524603989693818

/-!
# A358697: Number of self-avoiding closed paths in the 6 X n grid graph which pass through all vertices on four (left, right, upper, lower) sides of the graph.

The programs for A358697, there is no canonical definition to state claims against.
-/

/-! ## A358697.P4895548519705588081

`A333758(Δ[A111396(n)])`
-/

namespace A358697.P4895548519705588081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (f1 (n + 1) - f1 n).toNat

end

end A358697.P4895548519705588081

/-! ## A358697.P16903685960084966814

`A333758(A055998(n+3))`
-/

namespace A358697.P16903685960084966814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (A055998 (n + 3)).toNat

end

end A358697.P16903685960084966814

/-!
# A358698: Number of self-avoiding closed paths in the 7 X n grid graph which pass through all vertices on four (left, right, upper, lower) sides of the graph.

The programs for A358698, there is no canonical definition to state claims against.
-/

/-! ## A358698.P8315315066185446520

`A333758(C(n+6, 2)+n+2)`
-/

namespace A358698.P8315315066185446520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333758 (Nat.choose (n + 6) 2 + (n + 2))

end

end A358698.P8315315066185446520

/-!
# A358699: a(n) is the largest prime factor of 2^(prime(n) - 1) - 1.

The programs for A358699, the canonical program `A358699.P18163707120374341478` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358699 has offset 2).

The definition of A358699 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005420, A006093, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358699.P18163707120374341478

`A005420(A006093(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A358699

/-- `A005420(A006093(n+2))` -/
def P18163707120374341478.Spec : Prop :=
  ∀ n, P18163707120374341478.a n = A358699 (n + 2)

theorem P18163707120374341478.correct : P18163707120374341478.Spec := by
  intro n
  simp only [A358699, Nat.add_sub_cancel]

end A358699

/-! ## A358699.P3173019747103217733

`A006530(A098102(n+2))`
-/

namespace A358699.P3173019747103217733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098102 (n + 2)).toNat

end

end A358699.P3173019747103217733

namespace A358699

/-- `A006530(A098102(n+2))` -/
def P3173019747103217733.Spec : Prop :=
  ∀ n, P3173019747103217733.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P1623564246508086934

`A274906(A005097(n+1))`
-/

namespace A358699.P1623564246508086934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274906 (A005097 (n + 1)).toNat

end

end A358699.P1623564246508086934

namespace A358699

/-- `A274906(A005097(n+1))` -/
def P1623564246508086934.Spec : Prop :=
  ∀ n, P1623564246508086934.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P18291322079617324967

`A274906(A102781(n+2))`
-/

namespace A358699.P18291322079617324967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274906 (A102781 (n + 2)).toNat

end

end A358699.P18291322079617324967

namespace A358699

/-- `A274906(A102781(n+2))` -/
def P18291322079617324967.Spec : Prop :=
  ∀ n, P18291322079617324967.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P15806853011392178353

`A274906(A130290(n+2))`
-/

namespace A358699.P15806853011392178353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274906 (A130290 (n + 2)).toNat

end

end A358699.P15806853011392178353

namespace A358699

/-- `A274906(A130290(n+2))` -/
def P15806853011392178353.Spec : Prop :=
  ∀ n, P15806853011392178353.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P4448810754940369503

`A274906(A006093(n+2)/2)`
-/

namespace A358699.P4448810754940369503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274906 (SequenceMachineLib.roundAway ((A006093 (n + 2) : ℚ) / 2)).toNat

end

end A358699.P4448810754940369503

namespace A358699

/-- `A274906(A006093(n+2)/2)` -/
def P4448810754940369503.Spec : Prop :=
  ∀ n, P4448810754940369503.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P10111244635711443453

`A005420(A039915(n+2))`
-/

namespace A358699.P10111244635711443453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A039915 (n + 2)).toNat

end

end A358699.P10111244635711443453

namespace A358699

/-- `A005420(A039915(n+2))` -/
def P10111244635711443453.Spec : Prop :=
  ∀ n, P10111244635711443453.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P3584067646646907321

`A005420(record[A000010(n+3)])`
-/

namespace A358699.P3584067646646907321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358699.P3584067646646907321

namespace A358699

/-- `A005420(record[A000010(n+3)])` -/
def P3584067646646907321.Spec : Prop :=
  ∀ n, P3584067646646907321.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P3594966957884384474

`A005420(A065091(n+1)-1)`
-/

namespace A358699.P3594966957884384474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A065091 (n + 1) - 1).toNat

end

end A358699.P3594966957884384474

namespace A358699

/-- `A005420(A065091(n+1)-1)` -/
def P3594966957884384474.Spec : Prop :=
  ∀ n, P3594966957884384474.a n = A358699 (n + 2)

end A358699

/-! ## A358699.P19173854301280000

`A005420(A000040(n+2)-1)`
-/

namespace A358699.P19173854301280000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A000040 (n + 2) - 1).toNat

end

end A358699.P19173854301280000

namespace A358699

/-- `A005420(A000040(n+2)-1)` -/
def P19173854301280000.Spec : Prop :=
  ∀ n, P19173854301280000.a n = A358699 (n + 2)

end A358699

