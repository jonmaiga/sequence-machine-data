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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A226500: Triangular numbers representable as 3 * x^2.

The programs for A226500, the canonical program `A226500.P8718805761054186493` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226500 has offset 1).

The definition of A226500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226500.P12584514751068346831

`floor((49+20*sqrt(6))^n/32)`
-/

namespace A226500.P12584514751068346831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(49 + 20 * Real.sqrt (6 : ℝ)) ^ n / 32⌋

end

end A226500.P12584514751068346831

namespace A226500

/-- `floor((49+20*sqrt(6))^n/32)` -/
def P12584514751068346831.Spec : Prop :=
  ∀ n, P12584514751068346831.a n = A226500 (n + 1)

end A226500

/-! ## A226500.P8718805761054186493

`99*(a(n-1)-a(n-2))+a(n-3)` with `a(0)=0, a(1)=3, a(2)=300`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226500

/-- `99*(a(n-1)-a(n-2))+a(n-3)` -/
def P8718805761054186493.Spec : Prop :=
  ∀ n, P8718805761054186493.a n = A226500 (n + 1)

theorem P8718805761054186493.correct : P8718805761054186493.Spec := by
  intro n
  simp only [A226500, Nat.add_sub_cancel]

end A226500

/-! ## A226500.P2917376942228610896

`3*A108741(n)`
-/

namespace A226500.P2917376942228610896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A108741 n

end

end A226500.P2917376942228610896

namespace A226500

/-- `3*A108741(n)` -/
def P2917376942228610896.Spec : Prop :=
  ∀ n, P2917376942228610896.a n = A226500 (n + 1)

end A226500

/-! ## A226500.P14635261788205615949

`C(∑[10*a(n-1)-a(n-2)], 2)` with `a(0)=1, a(1)=2, a(2)=22`
-/

namespace A226500.P14635261788205615949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 22] fun n f1 =>
  10 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A226500.P14635261788205615949

namespace A226500

/-- `C(∑[10*a(n-1)-a(n-2)], 2)` -/
def P14635261788205615949.Spec : Prop :=
  ∀ n, (P14635261788205615949.a n : ℤ) = A226500 (n + 1)

end A226500

/-! ## A226500.P1511506999263906639

`A173115(n)/8`
-/

namespace A226500.P1511506999263906639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173115 n : ℚ) / 8

end

end A226500.P1511506999263906639

namespace A226500

/-- `A173115(n)/8` -/
def P1511506999263906639.Spec : Prop :=
  ∀ n, P1511506999263906639.a n = (A226500 (n + 1) : ℚ)

end A226500

/-! ## A226500.P3093909954045876721

`3*A004189(n)²`
-/

namespace A226500.P3093909954045876721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004189 n ^ 2

end

end A226500.P3093909954045876721

namespace A226500

/-- `3*A004189(n)²` -/
def P3093909954045876721.Spec : Prop :=
  ∀ n, P3093909954045876721.a n = A226500 (n + 1)

end A226500

/-! ## A226500.P14918263717567667406

`A122653(n)²/12`
-/

namespace A226500.P14918263717567667406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122653 n ^ 2 : ℚ) / 12

end

end A226500.P14918263717567667406

namespace A226500

/-- `A122653(n)²/12` -/
def P14918263717567667406.Spec : Prop :=
  ∀ n, P14918263717567667406.a n = (A226500 (n + 1) : ℚ)

end A226500

/-! ## A226500.P4006132363820407957

`A098297(2*n)/4`
-/

namespace A226500.P4006132363820407957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098297 (2 * n) : ℚ) / 4

end

end A226500.P4006132363820407957

namespace A226500

/-- `A098297(2*n)/4` -/
def P4006132363820407957.Spec : Prop :=
  ∀ n, P4006132363820407957.a n = (A226500 (n + 1) : ℚ)

end A226500

/-! ## A226500.P236429467588306440

`A132596(2*n)/8`
-/

namespace A226500.P236429467588306440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 (2 * n) : ℚ) / 8

end

end A226500.P236429467588306440

namespace A226500

/-- `A132596(2*n)/8` -/
def P236429467588306440.Spec : Prop :=
  ∀ n, P236429467588306440.a n = (A226500 (n + 1) : ℚ)

end A226500

/-! ## A226500.P4506178552586613656

`C(A171640(n+1), 2)`
-/

namespace A226500.P4506178552586613656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A171640 (n + 1)).toNat 2

end

end A226500.P4506178552586613656

namespace A226500

/-- `C(A171640(n+1), 2)` -/
def P4506178552586613656.Spec : Prop :=
  ∀ n, (P4506178552586613656.a n : ℤ) = A226500 (n + 1)

end A226500

/-!
# A226502: Let P(k) denote the k-th prime (P(1)=2, P(2)=3 ...); a(n) = P(n+1)P(n+3) - P(n)P(n+2).

The programs for A226502, the canonical program `A226502.P16735220966508621268` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226502 has offset 1).

The definition of A226502 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226502.P12830869853550103674

`Δ[A090076(n+1)]`
-/

namespace A226502.P12830869853550103674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P12830869853550103674

namespace A226502

/-- `Δ[A090076(n+1)]` -/
def P12830869853550103674.Spec : Prop :=
  ∀ n, P12830869853550103674.a n = A226502 (n + 1)

theorem P12830869853550103674.correct : P12830869853550103674.Spec := by
  intro n
  simp only [A226502, Nat.add_sub_cancel, A226502.P12830869853550103674.f1, A226502.P12830869853550103674.a, A226502.P16735220966508621268.f1, A226502.P16735220966508621268.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P14041092475761084439.a, A215848, A215848.P17068717743202425727.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226502

/-! ## A226502.P5587224542078936045

`A090076(n+2)-A090076(n+1)`
-/

namespace A226502.P5587224542078936045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 2) - A090076 (n + 1)

end

end A226502.P5587224542078936045

namespace A226502

/-- `A090076(n+2)-A090076(n+1)` -/
def P5587224542078936045.Spec : Prop :=
  ∀ n, P5587224542078936045.a n = A226502 (n + 1)

theorem P5587224542078936045.correct : P5587224542078936045.Spec := by
  intro n
  simp only [A226502, Nat.add_sub_cancel, A226502.P5587224542078936045.a, A226502.P16735220966508621268.f1, A226502.P16735220966508621268.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P14041092475761084439.a, A215848, A215848.P17068717743202425727.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226502

/-! ## A226502.P14939404746322543655

`Δ[Δ[A007504(n)]*A215848(n+1)]`
-/

namespace A226502.P14939404746322543655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A215848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P14939404746322543655

namespace A226502

/-- `Δ[Δ[A007504(n)]*A215848(n+1)]` -/
def P14939404746322543655.Spec : Prop :=
  ∀ n, P14939404746322543655.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P16735220966508621268

`Δ[A000040(n+1)*A215848(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A226502

/-- `Δ[A000040(n+1)*A215848(n+1)]` -/
def P16735220966508621268.Spec : Prop :=
  ∀ n, P16735220966508621268.a n = A226502 (n + 1)

theorem P16735220966508621268.correct : P16735220966508621268.Spec := by
  intro n
  simp only [A226502, Nat.add_sub_cancel]

end A226502

/-! ## A226502.P15041608554224878215

`Δ[A046301(n+1)/A065091(n+1)]`
-/

namespace A226502.P15041608554224878215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P15041608554224878215

namespace A226502

/-- `Δ[A046301(n+1)/A065091(n+1)]` -/
def P15041608554224878215.Spec : Prop :=
  ∀ n, P15041608554224878215.a n = (A226502 (n + 1) : ℚ)

end A226502

/-! ## A226502.P3628561641820164492

`Δ[A000040(n+1)*A045344(n+2)]`
-/

namespace A226502.P3628561641820164492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A045344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P3628561641820164492

namespace A226502

/-- `Δ[A000040(n+1)*A045344(n+2)]` -/
def P3628561641820164492.Spec : Prop :=
  ∀ n, P3628561641820164492.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P14783935365110460713

`Δ[A000040(n+1)*A065091(n+2)]`
-/

namespace A226502.P14783935365110460713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P14783935365110460713

namespace A226502

/-- `Δ[A000040(n+1)*A065091(n+2)]` -/
def P14783935365110460713.Spec : Prop :=
  ∀ n, P14783935365110460713.a n = A226502 (n + 1)

theorem P14783935365110460713.correct : P14783935365110460713.Spec := by
  intro n
  simp only [A226502, Nat.add_sub_cancel, A226502.P14783935365110460713.f1, A226502.P14783935365110460713.a, A226502.P16735220966508621268.f1, A226502.P16735220966508621268.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A215848, A215848.P17068717743202425727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226502

/-! ## A226502.P14299937128151872613

`Δ[A046301(n+1)/A000040(n+2)]`
-/

namespace A226502.P14299937128151872613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P14299937128151872613

namespace A226502

/-- `Δ[A046301(n+1)/A000040(n+2)]` -/
def P14299937128151872613.Spec : Prop :=
  ∀ n, P14299937128151872613.a n = (A226502 (n + 1) : ℚ)

end A226502

/-! ## A226502.P11155715708374978118

`Δ[A008578(n+2)*A065091(n+2)]`
-/

namespace A226502.P11155715708374978118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A065091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P11155715708374978118

namespace A226502

/-- `Δ[A008578(n+2)*A065091(n+2)]` -/
def P11155715708374978118.Spec : Prop :=
  ∀ n, P11155715708374978118.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P1748118063832217316

`Δ[A176098(n+3)]`
-/

namespace A226502.P1748118063832217316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P1748118063832217316

namespace A226502

/-- `Δ[A176098(n+3)]` -/
def P1748118063832217316.Spec : Prop :=
  ∀ n, P1748118063832217316.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P17357728687586100180

`A176098(n+4)-A176098(n+3)`
-/

namespace A226502.P17357728687586100180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 4) - A176098 (n + 3)

end

end A226502.P17357728687586100180

namespace A226502

/-- `A176098(n+4)-A176098(n+3)` -/
def P17357728687586100180.Spec : Prop :=
  ∀ n, P17357728687586100180.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P14317978464937914258

`Δ[A000040(n+1)*A000040(n+3)]`
-/

namespace A226502.P14317978464937914258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P14317978464937914258

namespace A226502

/-- `Δ[A000040(n+1)*A000040(n+3)]` -/
def P14317978464937914258.Spec : Prop :=
  ∀ n, P14317978464937914258.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P13911379664431317516

`Δ[lcm(A014692(n+1)+n, A000040(n+3))]`
-/

namespace A226502.P13911379664431317516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014692 (n + 1) + (n : ℤ)) (A000040 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A226502.P13911379664431317516

namespace A226502

/-- `Δ[lcm(A014692(n+1)+n, A000040(n+3))]` -/
def P13911379664431317516.Spec : Prop :=
  ∀ n, P13911379664431317516.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P8359594142887520589

`Δ[(A040976(n+1)+2)*A182986(n+4)]`
-/

namespace A226502.P8359594142887520589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A182986 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P8359594142887520589

namespace A226502

/-- `Δ[(A040976(n+1)+2)*A182986(n+4)]` -/
def P8359594142887520589.Spec : Prop :=
  ∀ n, P8359594142887520589.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P11746785325188576408

`Δ[record[A006530(n+2)]*A182986(n+4)]`
-/

namespace A226502.P11746785325188576408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A182986 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P11746785325188576408

namespace A226502

/-- `Δ[record[A006530(n+2)]*A182986(n+4)]` -/
def P11746785325188576408.Spec : Prop :=
  ∀ n, P11746785325188576408.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P1904555737825769670

`Δ[A333747(2*(n+1))]`
-/

namespace A226502.P1904555737825769670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P1904555737825769670

namespace A226502

/-- `Δ[A333747(2*(n+1))]` -/
def P1904555737825769670.Spec : Prop :=
  ∀ n, P1904555737825769670.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P7263686430942160810

`Δ[A065091(n+2)*A134735(2*n+1)]`
-/

namespace A226502.P7263686430942160810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) * A134735 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P7263686430942160810

namespace A226502

/-- `Δ[A065091(n+2)*A134735(2*n+1)]` -/
def P7263686430942160810.Spec : Prop :=
  ∀ n, P7263686430942160810.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P15273448138713813239

`Δ[A045344(n+2)*A219606(2*(n+1))]`
-/

namespace A226502.P15273448138713813239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) * A219606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P15273448138713813239

namespace A226502

/-- `Δ[A045344(n+2)*A219606(2*(n+1))]` -/
def P15273448138713813239.Spec : Prop :=
  ∀ n, P15273448138713813239.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P12105645281500679690

`Δ[A065091(n+2)*A219606(2*(n+1))]`
-/

namespace A226502.P12105645281500679690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) * A219606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226502.P12105645281500679690

namespace A226502

/-- `Δ[A065091(n+2)*A219606(2*(n+1))]` -/
def P12105645281500679690.Spec : Prop :=
  ∀ n, P12105645281500679690.a n = A226502 (n + 1)

end A226502

/-! ## A226502.P3152671009302575778

`A333747(2*(n+2))-A333747(2*(n+1))`
-/

namespace A226502.P3152671009302575778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333747 (2 * (n + 2)) - A333747 (2 * (n + 1))

end

end A226502.P3152671009302575778

namespace A226502

/-- `A333747(2*(n+2))-A333747(2*(n+1))` -/
def P3152671009302575778.Spec : Prop :=
  ∀ n, P3152671009302575778.a n = A226502 (n + 1)

end A226502

/-!
# A226503: Expansion of g.f. x*(1+x+x^2)/(1-x^3-x^5).

The programs for A226503, the canonical program `A226503.P6802993546341272059` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226503 has offset 1).

The definition of A226503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x^3-x^5))` (program `A226503.P6802993546341272059`, by `A226503.P6802993546341272059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226503.P4193333724567210838

`a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A226503.P4193333724567210838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 3) + a (n - 5)

end

end A226503.P4193333724567210838

namespace A226503

/-- `a(n-3)+a(n-5)` -/
def P4193333724567210838.Spec : Prop :=
  ∀ n, (P4193333724567210838.a n : ℤ) = A226503 (n + 1)

end A226503

/-! ## A226503.P6802993546341272059

`ogf((1+x+x^2)/(1-x^3-x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226503

/-- `ogf((1+x+x^2)/(1-x^3-x^5))` -/
def P6802993546341272059.Spec : Prop :=
  ∀ n, P6802993546341272059.a n = A226503 (n + 1)

theorem P6802993546341272059.correct : P6802993546341272059.Spec := by
  intro n
  simp only [A226503, Nat.add_sub_cancel]

end A226503

/-! ## A226503.P5065893531641796101

`A052920(n+3)+A052920(n+4)-A052920(n+1)`
-/

namespace A226503.P5065893531641796101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (n + 3) + (A052920 (n + 4) - A052920 (n + 1))

end

end A226503.P5065893531641796101

namespace A226503

/-- `A052920(n+3)+A052920(n+4)-A052920(n+1)` -/
def P5065893531641796101.Spec : Prop :=
  ∀ n, P5065893531641796101.a n = A226503 (n + 1)

end A226503

/-! ## A226503.P8957539964747677681

`A052920(n+9)-2*A052920(n+1)`
-/

namespace A226503.P8957539964747677681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (n + 9) - 2 * A052920 (n + 1)

end

end A226503.P8957539964747677681

namespace A226503

/-- `A052920(n+9)-2*A052920(n+1)` -/
def P8957539964747677681.Spec : Prop :=
  ∀ n, P8957539964747677681.a n = A226503 (n + 1)

end A226503

/-! ## A226503.P3911521380552626354

`A052920(n+9)-A005843(A052920(n+1))`
-/

namespace A226503.P3911521380552626354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (n + 9) - A005843 (A052920 (n + 1)).toNat

end

end A226503.P3911521380552626354

namespace A226503

/-- `A052920(n+9)-A005843(A052920(n+1))` -/
def P3911521380552626354.Spec : Prop :=
  ∀ n, P3911521380552626354.a n = A226503 (n + 1)

end A226503

/-!
# A226504: Irregular triangle read by rows: T(n,k) = number of set partitions of [1..n] with dimension k.

The programs for A226504, there is no canonical definition to state claims against.
-/

/-! ## A226504.P7373173030858967870

`xor(A033665(A125800(n)), A125810(n))`
-/

namespace A226504.P7373173030858967870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033665 (A125800 n).toNat) (A125810 n)

end

end A226504.P7373173030858967870

/-! ## A226504.P3690392631097481446

`A125810(n)+Δ[A102683(A066827(n+1))]`
-/

namespace A226504.P3690392631097481446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A066827 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125810 n + (f1 (n + 1) - f1 n)

end

end A226504.P3690392631097481446

/-! ## A226504.P10112085775922498865

`xor(A125810(n), A185284(A016777(n)))`
-/

namespace A226504.P10112085775922498865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125810 n) (A185284 (A016777 n).toNat)

end

end A226504.P10112085775922498865

/-! ## A226504.P6421516203897413933

`A125810(n)+A074290(A022176(n))`
-/

namespace A226504.P6421516203897413933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125810 n + A074290 (A022176 n).toNat

end

end A226504.P6421516203897413933

/-! ## A226504.P6243103316671616336

`A185238(A125811(n))+A125810(n)`
-/

namespace A226504.P6243103316671616336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A125811 n).toNat + A125810 n

end

end A226504.P6243103316671616336

/-!
# A226506: a(n) = B(n+2)-3*B(n+1)+B(n), where B(i) are the Bell numbers A000110.

The programs for A226506, there is no canonical definition to state claims against.
-/

/-! ## A226506.P15361349212262158264

`2*A003128(n)`
-/

namespace A226506.P15361349212262158264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003128 n

end

end A226506.P15361349212262158264

/-! ## A226506.P9538532551090500186

`A011965(n)-A011972(∑[n])`
-/

namespace A226506.P9538532551090500186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A011972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226506.P9538532551090500186

/-! ## A226506.P6979660161291619119

`A011965(n)-A123346(∑[n])`
-/

namespace A226506.P6979660161291619119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A123346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226506.P6979660161291619119

/-! ## A226506.P5417351433753670996

`A033452(n)-Δ[A000110(n)]`
-/

namespace A226506.P5417351433753670996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033452 n - (f1 (n + 1) - f1 n)

end

end A226506.P5417351433753670996

/-! ## A226506.P461744993558184760

`A011965(n)-A000110(n+1)`
-/

namespace A226506.P461744993558184760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A000110 (n + 1)

end

end A226506.P461744993558184760

/-! ## A226506.P15890833907527406687

`2*(A033452(n)-A059606(n))`
-/

namespace A226506.P15890833907527406687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033452 n - A059606 n)

end

end A226506.P15890833907527406687

/-! ## A226506.P15691498587664266370

`2*(A005493(n)-A087648(n))`
-/

namespace A226506.P15691498587664266370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005493 n - A087648 n)

end

end A226506.P15691498587664266370

/-! ## A226506.P11444871102841212026

`2*(A011965(n)-A087649(n))`
-/

namespace A226506.P11444871102841212026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011965 n - A087649 n)

end

end A226506.P11444871102841212026

/-! ## A226506.P3409890135062361349

`A011965(n)-abs(A292935(n+1))`
-/

namespace A226506.P3409890135062361349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - |A292935 (n + 1)|

end

end A226506.P3409890135062361349

/-! ## A226506.P13003471861018437733

`A011965(n)-Δ[A005001(n+1)]`
-/

namespace A226506.P13003471861018437733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - (f1 (n + 1) - f1 n)

end

end A226506.P13003471861018437733

/-!
# A226507: 4*B(n+4) - (4*n+15)*B(n+3) + (n^2+8*n+9)*B(n+2) - (4*n+3)*B(n+1) + n*B(n), where B(i) are the Bell numbers A000110.

The programs for A226507, there is no canonical definition to state claims against.
-/

/-! ## A226507.P3499203689592299405

`A104320(∏[a(n-1)+3]+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A226507.P3499203689592299405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104320 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226507.P3499203689592299405

/-! ## A226507.P6832690261806324639

`A101591(C(n-1, 2)+a(n-1)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A226507.P6832690261806324639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A101591 ((Nat.choose ((n : ℤ) - 1).toNat 2 : ℤ) + (a (n - 1) + a (n - 2))).toNat

end

end A226507.P6832690261806324639

/-!
# A226508: a(n) = Sum_{i=3^n..3^(n+1)-1} i.

The programs for A226508, the canonical program `A226508.P2921338441337654994` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226508 has offset 0).

The definition of A226508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226508.P14049844174515591838

`3^(n-1)*(4*3^(n+1)-3)`
-/

namespace A226508.P14049844174515591838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((4 * 3 ^ (n + 1) : ℤ) - 3 : ℚ)

end

end A226508.P14049844174515591838

namespace A226508

/-- `3^(n-1)*(4*3^(n+1)-3)` -/
def P14049844174515591838.Spec : Prop :=
  ∀ n, P14049844174515591838.a n = (A226508 n : ℚ)

theorem P14049844174515591838.correct : P14049844174515591838.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A226508, Nat.add_sub_cancel, A226508.P14049844174515591838.a, A226508.P2921338441337654994.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A226508, Nat.add_sub_cancel, A226508.P14049844174515591838.a, A226508.P2921338441337654994.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A226508

/-! ## A226508.P2921338441337654994

`12*a(n-1)-27*a(n-2)` with `a(0)=3, a(1)=33`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226508

/-- `12*a(n-1)-27*a(n-2)` -/
def P2921338441337654994.Spec : Prop :=
  ∀ n, P2921338441337654994.a n = A226508 n

theorem P2921338441337654994.correct : P2921338441337654994.Spec := by
  intro n
  simp only [A226508]

end A226508

/-! ## A226508.P16358088973065324939

`lcm(4*3^n-1, 3^n)`
-/

namespace A226508.P16358088973065324939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((4 * 3 ^ n : ℤ) - 1) (3 ^ n : ℤ)

end

end A226508.P16358088973065324939

namespace A226508

/-- `lcm(4*3^n-1, 3^n)` -/
def P16358088973065324939.Spec : Prop :=
  ∀ n, (P16358088973065324939.a n : ℤ) = A226508 n

end A226508

/-! ## A226508.P14602442224607673257

`or(1, Δ[3^n*floor(3^n/2)])`
-/

namespace A226508.P14602442224607673257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌊(3 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A226508.P14602442224607673257

namespace A226508

/-- `or(1, Δ[3^n*floor(3^n/2)])` -/
def P14602442224607673257.Spec : Prop :=
  ∀ n, P14602442224607673257.a n = A226508 n

end A226508

/-! ## A226508.P2487410918098239092

`Δ[A026121(n)]`
-/

namespace A226508.P2487410918098239092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P2487410918098239092

namespace A226508

/-- `Δ[A026121(n)]` -/
def P2487410918098239092.Spec : Prop :=
  ∀ n, P2487410918098239092.a n = A226508 n

end A226508

/-! ## A226508.P5930388310060724709

`Δ[A167993(Δ[n²])]`
-/

namespace A226508.P5930388310060724709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P5930388310060724709

namespace A226508

/-- `Δ[A167993(Δ[n²])]` -/
def P5930388310060724709.Spec : Prop :=
  ∀ n, P5930388310060724709.a n = A226508 n

end A226508

/-! ## A226508.P4451066160998020135

`Δ[3^n*A003462(n)]`
-/

namespace A226508.P4451066160998020135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P4451066160998020135

namespace A226508

/-- `Δ[3^n*A003462(n)]` -/
def P4451066160998020135.Spec : Prop :=
  ∀ n, P4451066160998020135.a n = A226508 n

end A226508

/-! ## A226508.P12609950323729930174

`Δ[lcm(3^n, A029858(n+1))]`
-/

namespace A226508.P12609950323729930174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n : ℤ) (A029858 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A226508.P12609950323729930174

namespace A226508

/-- `Δ[lcm(3^n, A029858(n+1))]` -/
def P12609950323729930174.Spec : Prop :=
  ∀ n, P12609950323729930174.a n = A226508 n

end A226508

/-! ## A226508.P5477634849373767381

`Δ[A000244(n)+9*a(n-1)]` with `a(0)=0`
-/

namespace A226508.P5477634849373767381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000244 n + 9 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P5477634849373767381

namespace A226508

/-- `Δ[A000244(n)+9*a(n-1)]` -/
def P5477634849373767381.Spec : Prop :=
  ∀ n, P5477634849373767381.a n = A226508 n

end A226508

/-! ## A226508.P5331592205457372041

`A008776(n)²-A000244(n)`
-/

namespace A226508.P5331592205457372041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n ^ 2 - A000244 n

end

end A226508.P5331592205457372041

namespace A226508

/-- `A008776(n)²-A000244(n)` -/
def P5331592205457372041.Spec : Prop :=
  ∀ n, P5331592205457372041.a n = A226508 n

end A226508

/-! ## A226508.P9014399241458098261

`A026121(n+1)-A026121(n)`
-/

namespace A226508.P9014399241458098261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026121 (n + 1) - A026121 n

end

end A226508.P9014399241458098261

namespace A226508

/-- `A026121(n+1)-A026121(n)` -/
def P9014399241458098261.Spec : Prop :=
  ∀ n, P9014399241458098261.a n = A226508 n

end A226508

/-! ## A226508.P8118630826131806452

`A171498(2*n)-A024023(n)`
-/

namespace A226508.P8118630826131806452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 (2 * n) - A024023 n

end

end A226508.P8118630826131806452

namespace A226508

/-- `A171498(2*n)-A024023(n)` -/
def P8118630826131806452.Spec : Prop :=
  ∀ n, P8118630826131806452.a n = A226508 n

end A226508

/-! ## A226508.P7872006310494109600

`A199108(2*n)-A034472(n)`
-/

namespace A226508.P7872006310494109600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199108 (2 * n) - A034472 n

end

end A226508.P7872006310494109600

namespace A226508

/-- `A199108(2*n)-A034472(n)` -/
def P7872006310494109600.Spec : Prop :=
  ∀ n, P7872006310494109600.a n = A226508 n

end A226508

/-! ## A226508.P2694316756448557059

`Δ[Δ[A261547(n)]*A261547(n)]`
-/

namespace A226508.P2694316756448557059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A261547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P2694316756448557059

namespace A226508

/-- `Δ[Δ[A261547(n)]*A261547(n)]` -/
def P2694316756448557059.Spec : Prop :=
  ∀ n, P2694316756448557059.a n = A226508 n

end A226508

/-! ## A226508.P8138789008391132941

`Δ[(A007051(n)-1)*A000244(n)]`
-/

namespace A226508.P8138789008391132941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007051 n - 1) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P8138789008391132941

namespace A226508

/-- `Δ[(A007051(n)-1)*A000244(n)]` -/
def P8138789008391132941.Spec : Prop :=
  ∀ n, P8138789008391132941.a n = A226508 n

end A226508

/-! ## A226508.P133269271658118986

`Δ[A007051(2*n)-A007051(n)]`
-/

namespace A226508.P133269271658118986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (2 * n) - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P133269271658118986

namespace A226508

/-- `Δ[A007051(2*n)-A007051(n)]` -/
def P133269271658118986.Spec : Prop :=
  ∀ n, P133269271658118986.a n = A226508 n

end A226508

/-! ## A226508.P4683046891782978132

`Δ[A115098(2*n)-A115098(n)]`
-/

namespace A226508.P4683046891782978132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 (2 * n) - A115098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226508.P4683046891782978132

namespace A226508

/-- `Δ[A115098(2*n)-A115098(n)]` -/
def P4683046891782978132.Spec : Prop :=
  ∀ n, P4683046891782978132.a n = A226508 n

end A226508

/-! ## A226508.P5453225804060743532

`A003946(2*n+1)-A000244(n)`
-/

namespace A226508.P5453225804060743532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (2 * n + 1) - A000244 n

end

end A226508.P5453225804060743532

namespace A226508

/-- `A003946(2*n+1)-A000244(n)` -/
def P5453225804060743532.Spec : Prop :=
  ∀ n, P5453225804060743532.a n = A226508 n

end A226508

/-! ## A226508.P13470584573468356622

`A133125(2*n+1)-A000244(n)`
-/

namespace A226508.P13470584573468356622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133125 (2 * n + 1) - A000244 n

end

end A226508.P13470584573468356622

namespace A226508

/-- `A133125(2*n+1)-A000244(n)` -/
def P13470584573468356622.Spec : Prop :=
  ∀ n, P13470584573468356622.a n = A226508 n

end A226508

/-! ## A226508.P10617561857906071712

`A133125(2*n+1)-A038754(2*n)`
-/

namespace A226508.P10617561857906071712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133125 (2 * n + 1) - A038754 (2 * n)

end

end A226508.P10617561857906071712

namespace A226508

/-- `A133125(2*n+1)-A038754(2*n)` -/
def P10617561857906071712.Spec : Prop :=
  ∀ n, P10617561857906071712.a n = A226508 n

end A226508

/-!
# A226509: Expansion of (3-2*x)/(1-x-x^3)+x/(1-x)^2+x/(1-x^2).

The programs for A226509, the canonical program `A226509.P15011569521375733557` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226509 has offset 0).

The definition of A226509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-6x+8x^3-9x^4+4x^5)/(1-3x+2x^2+x^3-x^4+x^5-2x^6+x^7))` (program `A226509.P15011569521375733557`, by `A226509.P15011569521375733557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226509.P15011569521375733557

`ogf((3-6x+8x^3-9x^4+4x^5)/(1-3x+2x^2+x^3-x^4+x^5-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226509

/-- `ogf((3-6x+8x^3-9x^4+4x^5)/(1-3x+2x^2+x^3-x^4+x^5-2x^6+x^7))` -/
def P15011569521375733557.Spec : Prop :=
  ∀ n, P15011569521375733557.a n = A226509 n

theorem P15011569521375733557.correct : P15011569521375733557.Spec := by
  intro n
  simp only [A226509]

end A226509

/-! ## A226509.P5444790229536301618

`A001609(A028310(n))+2*A065033(n)`
-/

namespace A226509.P5444790229536301618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (A028310 n).toNat + 2 * A065033 n

end

end A226509.P5444790229536301618

namespace A226509

/-- `A001609(A028310(n))+2*A065033(n)` -/
def P5444790229536301618.Spec : Prop :=
  ∀ n, P5444790229536301618.a n = A226509 n

end A226509

/-! ## A226509.P7795328057969042355

`or(A137726(A028310(n)), A278105(n+1))`
-/

namespace A226509.P7795328057969042355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137726 (A028310 n).toNat) (A278105 (n + 1))

end

end A226509.P7795328057969042355

namespace A226509

/-- `or(A137726(A028310(n)), A278105(n+1))` -/
def P7795328057969042355.Spec : Prop :=
  ∀ n, P7795328057969042355.a n = A226509 n

end A226509

/-! ## A226509.P4613570356448926472

`or(A093709(n), A137726(A233583(n+1)))`
-/

namespace A226509.P4613570356448926472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093709 n) (A137726 (A233583 (n + 1)).toNat)

end

end A226509.P4613570356448926472

namespace A226509

/-- `or(A093709(n), A137726(A233583(n+1)))` -/
def P4613570356448926472.Spec : Prop :=
  ∀ n, P4613570356448926472.a n = A226509 n

end A226509

/-! ## A226509.P555519745495505241

`A137726(or(n, A036987(n)))+A278105(n+1)^n`
-/

namespace A226509.P555519745495505241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (Int.lor (n : ℤ) (A036987 n)).toNat + A278105 (n + 1) ^ n

end

end A226509.P555519745495505241

namespace A226509

/-- `A137726(or(n, A036987(n)))+A278105(n+1)^n` -/
def P555519745495505241.Spec : Prop :=
  ∀ n, P555519745495505241.a n = A226509 n

end A226509

/-! ## A226509.P17464682606404557523

`A005843(A065033(n))+A001609(A028310(n))`
-/

namespace A226509.P17464682606404557523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A065033 n).toNat + A001609 (A028310 n).toNat

end

end A226509.P17464682606404557523

namespace A226509

/-- `A005843(A065033(n))+A001609(A028310(n))` -/
def P17464682606404557523.Spec : Prop :=
  ∀ n, P17464682606404557523.a n = A226509 n

end A226509

/-! ## A226509.P5049768831058999491

`A199881(A057944(n))+A137726(A233583(n+1))`
-/

namespace A226509.P5049768831058999491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199881 (A057944 n).toNat + A137726 (A233583 (n + 1)).toNat

end

end A226509.P5049768831058999491

namespace A226509

/-- `A199881(A057944(n))+A137726(A233583(n+1))` -/
def P5049768831058999491.Spec : Prop :=
  ∀ n, P5049768831058999491.a n = A226509 n

end A226509

/-! ## A226509.P17159663242244505193

`A199881(C(n, 2))+A137726(A233583(n+1))`
-/

namespace A226509.P17159663242244505193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199881 (Nat.choose n 2) + A137726 (A233583 (n + 1)).toNat

end

end A226509.P17159663242244505193

namespace A226509

/-- `A199881(C(n, 2))+A137726(A233583(n+1))` -/
def P17159663242244505193.Spec : Prop :=
  ∀ n, P17159663242244505193.a n = A226509 n

end A226509

/-!
# A226510: Number of extended RNA secondary structures of size n according to the zu Siederdissen et al. (2011) model.

The programs for A226510, there is no canonical definition to state claims against.
-/

/-! ## A226510.P6179516981905973200

`A316964(A304787(n))`
-/

namespace A226510.P6179516981905973200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A304787 n).toNat

end

end A226510.P6179516981905973200

/-! ## A226510.P3619035789262102482

`A304787(n)-A014707(A071723(n))`
-/

namespace A226510.P3619035789262102482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304787 n - A014707 (A071723 n).toNat

end

end A226510.P3619035789262102482

/-! ## A226510.P3214171172784143917

`A304787(n)-A323170(A174687(n))`
-/

namespace A226510.P3214171172784143917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304787 n - A323170 (A174687 n).toNat

end

end A226510.P3214171172784143917

/-! ## A226510.P6316527720758505155

`A304787(n)-A014707(∑{d}[n+1, A191528(#²)])`
-/

namespace A226510.P6316527720758505155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304787 n - A014707 (∑ d ∈ Nat.divisors (f1 n), A191528 (d ^ 2)).toNat

end

end A226510.P6316527720758505155

/-!
# A226511: a(n) = 3*(5^n-3^n)/2.

The programs for A226511, the canonical program `A226511.P11154515553051184958` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226511 has offset 0).

The definition of A226511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(5^n-3^n)/2` (program `A226511.P17847952711189785253`, by `A226511.P17847952711189785253.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226511.P3472848838477460391

`3/2*(5^n-3^n)`
-/

namespace A226511.P3472848838477460391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * ((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ)

end

end A226511.P3472848838477460391

namespace A226511

/-- `3/2*(5^n-3^n)` -/
def P3472848838477460391.Spec : Prop :=
  ∀ n, P3472848838477460391.a n = (A226511 n : ℚ)

theorem P3472848838477460391.correct : P3472848838477460391.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A226511, Nat.add_sub_cancel, A226511.P3472848838477460391.a, A226511.P11154515553051184958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A226511, Nat.add_sub_cancel, A226511.P3472848838477460391.a, A226511.P11154515553051184958.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226511

/-! ## A226511.P17847952711189785253

`3*(5^n-3^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226511.P17847952711189785253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((5 ^ n : ℤ) - (3 ^ n : ℤ)) : ℚ) / 2

end

end A226511.P17847952711189785253

namespace A226511

/-- `3*(5^n-3^n)/2` -/
def P17847952711189785253.Spec : Prop :=
  ∀ n, P17847952711189785253.a n = (A226511 n : ℚ)

theorem P17847952711189785253.correct : P17847952711189785253.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A226511, Nat.add_sub_cancel, A226511.P17847952711189785253.a, A226511.P11154515553051184958.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A226511, Nat.add_sub_cancel, A226511.P17847952711189785253.a, A226511.P11154515553051184958.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226511

/-! ## A226511.P11154515553051184958

`8*a(n-1)-15*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226511

/-- `8*a(n-1)-15*a(n-2)` -/
def P11154515553051184958.Spec : Prop :=
  ∀ n, P11154515553051184958.a n = A226511 n

theorem P11154515553051184958.correct : P11154515553051184958.Spec := by
  intro n
  simp only [A226511]

end A226511

/-! ## A226511.P4986536134695300253

`ogf(3x/(1-8x+15x^2))`
-/

namespace A226511.P4986536134695300253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -8, 15] n

end

end A226511.P4986536134695300253

namespace A226511

/-- `ogf(3x/(1-8x+15x^2))` -/
def P4986536134695300253.Spec : Prop :=
  ∀ n, P4986536134695300253.a n = A226511 n

end A226511

/-! ## A226511.P12754274160999863278

`3^n+5*a(n-1)` with `a(0)=0`
-/

namespace A226511.P12754274160999863278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ n + 5 * a (n - 1)

end

end A226511.P12754274160999863278

namespace A226511

/-- `3^n+5*a(n-1)` -/
def P12754274160999863278.Spec : Prop :=
  ∀ n, (P12754274160999863278.a n : ℤ) = A226511 n

end A226511

/-! ## A226511.P14779885527638536969

`lcm(3, (5^n-3^n)/2)`
-/

namespace A226511.P14779885527638536969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway (((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2))

end

end A226511.P14779885527638536969

namespace A226511

/-- `lcm(3, (5^n-3^n)/2)` -/
def P14779885527638536969.Spec : Prop :=
  ∀ n, (P14779885527638536969.a n : ℤ) = A226511 n

end A226511

/-! ## A226511.P17401142613648030189

`lcm(5, a(n-1))+3^n` with `a(0)=0`
-/

namespace A226511.P17401142613648030189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 3 ^ n

end

end A226511.P17401142613648030189

namespace A226511

/-- `lcm(5, a(n-1))+3^n` -/
def P17401142613648030189.Spec : Prop :=
  ∀ n, (P17401142613648030189.a n : ℤ) = A226511 n

end A226511

/-! ## A226511.P10083568516622943126

`∑[A003948(n)-3^n]`
-/

namespace A226511.P10083568516622943126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226511.P10083568516622943126

namespace A226511

/-- `∑[A003948(n)-3^n]` -/
def P10083568516622943126.Spec : Prop :=
  ∀ n, P10083568516622943126.a n = A226511 n

end A226511

/-! ## A226511.P347883277670673021

`A057651(n)-∑[3*a(n-1)]` with `a(0)=1`
-/

namespace A226511.P347883277670673021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A226511.P347883277670673021

namespace A226511

/-- `A057651(n)-∑[3*a(n-1)]` -/
def P347883277670673021.Spec : Prop :=
  ∀ n, P347883277670673021.a n = A226511 n

end A226511

/-! ## A226511.P5277842391666801820

`A024023(n)+5*a(n-1)+1` with `a(0)=0`
-/

namespace A226511.P5277842391666801820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A024023 n + (5 * a (n - 1) + 1)

end

end A226511.P5277842391666801820

namespace A226511

/-- `A024023(n)+5*a(n-1)+1` -/
def P5277842391666801820.Spec : Prop :=
  ∀ n, P5277842391666801820.a n = A226511 n

end A226511

/-! ## A226511.P6544353059630092725

`A005059(n)+A005058(n)`
-/

namespace A226511.P6544353059630092725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n + A005058 n

end

end A226511.P6544353059630092725

namespace A226511

/-- `A005059(n)+A005058(n)` -/
def P6544353059630092725.Spec : Prop :=
  ∀ n, P6544353059630092725.a n = A226511 n

end A226511

/-! ## A226511.P11293641706464032105

`A005059(n)+Δ[A007798(n)]`
-/

namespace A226511.P11293641706464032105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005059 n + (f1 (n + 1) - f1 n)

end

end A226511.P11293641706464032105

namespace A226511

/-- `A005059(n)+Δ[A007798(n)]` -/
def P11293641706464032105.Spec : Prop :=
  ∀ n, P11293641706464032105.a n = A226511 n

end A226511

/-! ## A226511.P2566422657117042500

`A007798(n+1)+A003463(n)`
-/

namespace A226511.P2566422657117042500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 (n + 1) + A003463 n

end

end A226511.P2566422657117042500

namespace A226511

/-- `A007798(n+1)+A003463(n)` -/
def P2566422657117042500.Spec : Prop :=
  ∀ n, P2566422657117042500.a n = A226511 n

end A226511

/-! ## A226511.P9641441062801067116

`A199213(n)-A007051(n+1)`
-/

namespace A226511.P9641441062801067116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199213 n - A007051 (n + 1)

end

end A226511.P9641441062801067116

namespace A226511

/-- `A199213(n)-A007051(n+1)` -/
def P9641441062801067116.Spec : Prop :=
  ∀ n, P9641441062801067116.a n = A226511 n

end A226511

/-! ## A226511.P10446497928746216591

`Δ[A000351(n)]-A081186(n+1)`
-/

namespace A226511.P10446497928746216591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081186 (n + 1)

end

end A226511.P10446497928746216591

namespace A226511

/-- `Δ[A000351(n)]-A081186(n+1)` -/
def P10446497928746216591.Spec : Prop :=
  ∀ n, P10446497928746216591.a n = A226511 n

end A226511

/-! ## A226511.P11748280481410593178

`Δ[A034474(n)]-A081186(n+1)`
-/

namespace A226511.P11748280481410593178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A081186 (n + 1)

end

end A226511.P11748280481410593178

namespace A226511

/-- `Δ[A034474(n)]-A081186(n+1)` -/
def P11748280481410593178.Spec : Prop :=
  ∀ n, P11748280481410593178.a n = A226511 n

end A226511

/-! ## A226511.P9611255307425899185

`A097162(2*n)-A094025(2*n)`
-/

namespace A226511.P9611255307425899185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097162 (2 * n) - A094025 (2 * n)

end

end A226511.P9611255307425899185

namespace A226511

/-- `A097162(2*n)-A094025(2*n)` -/
def P9611255307425899185.Spec : Prop :=
  ∀ n, P9611255307425899185.a n = A226511 n

end A226511

/-! ## A226511.P5306581491898962147

`A294566(2*(n+1))-A007051(n+1)`
-/

namespace A226511.P5306581491898962147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 (2 * (n + 1)) - A007051 (n + 1)

end

end A226511.P5306581491898962147

namespace A226511

/-- `A294566(2*(n+1))-A007051(n+1)` -/
def P5306581491898962147.Spec : Prop :=
  ∀ n, P5306581491898962147.a n = A226511 n

end A226511

/-! ## A226511.P4479442278415550911

`A007798(n+1)+A007798(n)+A003462(n)`
-/

namespace A226511.P4479442278415550911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 (n + 1) + (A007798 n + A003462 n)

end

end A226511.P4479442278415550911

namespace A226511

/-- `A007798(n+1)+A007798(n)+A003462(n)` -/
def P4479442278415550911.Spec : Prop :=
  ∀ n, P4479442278415550911.a n = A226511 n

end A226511

/-! ## A226511.P14333864611616157203

`A003463(n+1)+A003463(n)-A003462(n+1)`
-/

namespace A226511.P14333864611616157203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (n + 1) + (A003463 n - A003462 (n + 1))

end

end A226511.P14333864611616157203

namespace A226511

/-- `A003463(n+1)+A003463(n)-A003462(n+1)` -/
def P14333864611616157203.Spec : Prop :=
  ∀ n, P14333864611616157203.a n = A226511 n

end A226511

/-!
# A226512: a(n) = minimum of sum of orders of all elements of G, where G is a group of order n.

The programs for A226512, there is no canonical definition to state claims against.
-/

/-! ## A226512.P6703142296233652321

`A328399(A074320(n+1)*A351870(n))`
-/

namespace A226512.P6703142296233652321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A074320 (n + 1) * A351870 n).toNat

end

end A226512.P6703142296233652321

/-!
# A226514: Column 3 of array in A226513.

The programs for A226514, the canonical program `A226514.P8316194481158658202` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226514 has offset 0).

The definition of A226514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226514.P8316194481158658202

`(n+1)*(n²+8*n+13)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226514

/-- `(n+1)*(n²+8*n+13)` -/
def P8316194481158658202.Spec : Prop :=
  ∀ n, (P8316194481158658202.a n : ℤ) = A226514 n

theorem P8316194481158658202.correct : P8316194481158658202.Spec := by
  intro n
  simp only [A226514]

end A226514

/-! ## A226514.P16070826867402094580

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=13, a(1)=44, a(2)=99, a(3)=184`
-/

namespace A226514.P16070826867402094580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 44, 99, 184] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A226514.P16070826867402094580

namespace A226514

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16070826867402094580.Spec : Prop :=
  ∀ n, P16070826867402094580.a n = A226514 n

theorem P16070826867402094580.correct : P16070826867402094580.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A226514, Nat.add_sub_cancel, A226514.P16070826867402094580.a, A226514.P8316194481158658202.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A226514, Nat.add_sub_cancel, A226514.P16070826867402094580.a, A226514.P8316194481158658202.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A226514

/-! ## A226514.P9254573588725300690

`record[(n+2)*(n-2)*(n-3)]+n+1`
-/

namespace A226514.P9254573588725300690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (((n : ℤ) - 2) * ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A226514.P9254573588725300690

namespace A226514

/-- `record[(n+2)*(n-2)*(n-3)]+n+1` -/
def P9254573588725300690.Spec : Prop :=
  ∀ n, P9254573588725300690.a n = A226514 n

end A226514

/-! ## A226514.P10573592989220093302

`∑[Δ[2*n*C(n+3, 2)]+2*n+1]`
-/

namespace A226514.P10573592989220093302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose (n + 3) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226514.P10573592989220093302

namespace A226514

/-- `∑[Δ[2*n*C(n+3, 2)]+2*n+1]` -/
def P10573592989220093302.Spec : Prop :=
  ∀ n, P10573592989220093302.a n = A226514 n

end A226514

/-! ## A226514.P17183045723217496910

`∑[n+3]*Δ[lcm(n+1, n+2)]+n+1`
-/

namespace A226514.P17183045723217496910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + (n + 1 : ℤ)

end

end A226514.P17183045723217496910

namespace A226514

/-- `∑[n+3]*Δ[lcm(n+1, n+2)]+n+1` -/
def P17183045723217496910.Spec : Prop :=
  ∀ n, P17183045723217496910.a n = A226514 n

end A226514

/-! ## A226514.P1132540474578839748

`Δ[A343994(n)]+1`
-/

namespace A226514.P1132540474578839748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A226514.P1132540474578839748

namespace A226514

/-- `Δ[A343994(n)]+1` -/
def P1132540474578839748.Spec : Prop :=
  ∀ n, P1132540474578839748.a n = A226514 n

end A226514

/-! ## A226514.P15892384534740445566

`A058794(n+1)-(3*n+5)`
-/

namespace A226514.P15892384534740445566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058794 (n + 1) - (3 * n + 5 : ℤ)

end

end A226514.P15892384534740445566

namespace A226514

/-- `A058794(n+1)-(3*n+5)` -/
def P15892384534740445566.Spec : Prop :=
  ∀ n, P15892384534740445566.a n = A226514 n

theorem P15892384534740445566.correct : P15892384534740445566.Spec := by
  intro n
  simp only [A226514, Nat.add_sub_cancel, A226514.P15892384534740445566.a, A226514.P8316194481158658202.a, A058794, A058794.P11529139745090401027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226514

/-! ## A226514.P14828935777710203181

`Δ[(A000217(n+1)+n-1)²]+4`
-/

namespace A226514.P14828935777710203181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 4

end

end A226514.P14828935777710203181

namespace A226514

/-- `Δ[(A000217(n+1)+n-1)²]+4` -/
def P14828935777710203181.Spec : Prop :=
  ∀ n, P14828935777710203181.a n = A226514 n

theorem P14828935777710203181.correct : P14828935777710203181.Spec := by
  intro n
  simp only [A226514, Nat.add_sub_cancel, A226514.P14828935777710203181.f1, A226514.P14828935777710203181.a, A226514.P8316194481158658202.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226514

/-! ## A226514.P402991817647621833

`A027620(n)+A090288(n)+2`
-/

namespace A226514.P402991817647621833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n + (A090288 n + 2)

end

end A226514.P402991817647621833

namespace A226514

/-- `A027620(n)+A090288(n)+2` -/
def P402991817647621833.Spec : Prop :=
  ∀ n, P402991817647621833.a n = A226514 n

theorem P402991817647621833.correct : P402991817647621833.Spec := by
  intro n
  simp only [A226514, Nat.add_sub_cancel, A226514.P402991817647621833.a, A226514.P8316194481158658202.a, A027620, A027620.P6451220114165535432.a, A090288, A090288.P18129157653264208824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226514

/-! ## A226514.P7057911188174804135

`A059997(n+1)-A127736(n+1)`
-/

namespace A226514.P7057911188174804135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059997 (n + 1) - A127736 (n + 1)

end

end A226514.P7057911188174804135

namespace A226514

/-- `A059997(n+1)-A127736(n+1)` -/
def P7057911188174804135.Spec : Prop :=
  ∀ n, P7057911188174804135.a n = A226514 n

end A226514

/-! ## A226514.P7771854021155529715

`A173962(n+1)-A382251(n+1)`
-/

namespace A226514.P7771854021155529715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173962 (n + 1) - A382251 (n + 1)

end

end A226514.P7771854021155529715

namespace A226514

/-- `A173962(n+1)-A382251(n+1)` -/
def P7771854021155529715.Spec : Prop :=
  ∀ n, P7771854021155529715.a n = A226514 n

end A226514

/-! ## A226514.P10091826085166809059

`A033570(n+1)+A034262(n+1)-1`
-/

namespace A226514.P10091826085166809059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033570 (n + 1) + (A034262 (n + 1) - 1)

end

end A226514.P10091826085166809059

namespace A226514

/-- `A033570(n+1)+A034262(n+1)-1` -/
def P10091826085166809059.Spec : Prop :=
  ∀ n, P10091826085166809059.a n = A226514 n

theorem P10091826085166809059.correct : P10091826085166809059.Spec := by
  intro n
  simp only [A226514, Nat.add_sub_cancel, A226514.P10091826085166809059.a, A226514.P8316194481158658202.a, A033570, A033570.P8308357737011808276.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226514

/-! ## A226514.P2755923753592864486

`A005914(n+1)+A000578(n)-A003215(n)`
-/

namespace A226514.P2755923753592864486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005914 (n + 1) + (A000578 n - A003215 n)

end

end A226514.P2755923753592864486

namespace A226514

/-- `A005914(n+1)+A000578(n)-A003215(n)` -/
def P2755923753592864486.Spec : Prop :=
  ∀ n, P2755923753592864486.a n = A226514 n

end A226514

/-! ## A226514.P6726544156215830234

`∑[A166143(n+2)]`
-/

namespace A226514.P6726544156215830234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226514.P6726544156215830234

namespace A226514

/-- `∑[A166143(n+2)]` -/
def P6726544156215830234.Spec : Prop :=
  ∀ n, P6726544156215830234.a n = A226514 n

end A226514

/-! ## A226514.P17724261385831353705

`A090197(n+1)-1`
-/

namespace A226514.P17724261385831353705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 (n + 1) - 1

end

end A226514.P17724261385831353705

namespace A226514

/-- `A090197(n+1)-1` -/
def P17724261385831353705.Spec : Prop :=
  ∀ n, P17724261385831353705.a n = A226514 n

theorem P17724261385831353705.correct : P17724261385831353705.Spec := by
  intro n
  simp only [A226514, Nat.add_sub_cancel, A226514.P17724261385831353705.a, A226514.P8316194481158658202.a, A090197, A090197.P16054348597824220922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226514

/-! ## A226514.P7736777411422588045

`A229013(n+2)-2`
-/

namespace A226514.P7736777411422588045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229013 (n + 2) - 2

end

end A226514.P7736777411422588045

namespace A226514

/-- `A229013(n+2)-2` -/
def P7736777411422588045.Spec : Prop :=
  ∀ n, P7736777411422588045.a n = A226514 n

theorem P7736777411422588045.correct : P7736777411422588045.Spec := by
  intro n
  simp only [A226514, Nat.add_sub_cancel, A226514.P7736777411422588045.a, A226514.P8316194481158658202.a, A229013, A229013.P14030391387298666303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226514

/-! ## A226514.P10184707633065569807

`∑[A277978(n+1)+1]`
-/

namespace A226514.P10184707633065569807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226514.P10184707633065569807

namespace A226514

/-- `∑[A277978(n+1)+1]` -/
def P10184707633065569807.Spec : Prop :=
  ∀ n, P10184707633065569807.a n = A226514 n

end A226514

/-! ## A226514.P12749853538339530299

`∑[A140678(n+1)-n]`
-/

namespace A226514.P12749853538339530299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140678 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226514.P12749853538339530299

namespace A226514

/-- `∑[A140678(n+1)-n]` -/
def P12749853538339530299.Spec : Prop :=
  ∀ n, P12749853538339530299.a n = A226514 n

end A226514

/-! ## A226514.P17969581715866499523

`A082040(n+1)+n^3`
-/

namespace A226514.P17969581715866499523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082040 (n + 1) + (n ^ 3 : ℤ)

end

end A226514.P17969581715866499523

namespace A226514

/-- `A082040(n+1)+n^3` -/
def P17969581715866499523.Spec : Prop :=
  ∀ n, P17969581715866499523.a n = A226514 n

theorem P17969581715866499523.correct : P17969581715866499523.Spec := by
  intro n
  simp only [A226514, Nat.add_sub_cancel, A226514.P17969581715866499523.a, A226514.P8316194481158658202.a, A082040, A082040.P13987900187150890134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226514

/-!
# A226515: Row 2 of array in A226513.

The programs for A226515, there is no canonical definition to state claims against.
-/

/-! ## A226515.P8181348463986774081

`A226513(∑[n+3])`
-/

namespace A226515.P8181348463986774081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226515.P8181348463986774081

/-! ## A226515.P17746973188749102500

`A258369(n)+Δ[A258369(n)/2]`
-/

namespace A226515.P17746973188749102500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258369 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258369 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A226515.P17746973188749102500

/-! ## A226515.P18327189357743934902

`record[A226513(A027379(A025480(n)))]`
-/

namespace A226515.P18327189357743934902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A027379 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P18327189357743934902

/-! ## A226515.P18140146045135793262

`record[A226513(A055998(A028242(n)))]`
-/

namespace A226515.P18140146045135793262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A055998 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P18140146045135793262

/-! ## A226515.P829828077475894901

`record[A226513(A027379(A057979(n)))]`
-/

namespace A226515.P829828077475894901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A027379 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P829828077475894901

/-! ## A226515.P14139969449723706814

`record[A226513(A027379(A103221(n)))]`
-/

namespace A226515.P14139969449723706814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A027379 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P14139969449723706814

/-! ## A226515.P1112016640328203859

`record[A226513(A027379(A126759(n)))]`
-/

namespace A226515.P1112016640328203859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A027379 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P1112016640328203859

/-! ## A226515.P8506099831027552427

`record[A226513(A055998(A285869(n)))]`
-/

namespace A226515.P8506099831027552427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A055998 (A285869 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P8506099831027552427

/-! ## A226515.P14784295171045945861

`record[A226513(A055998(A286589(n)))]`
-/

namespace A226515.P14784295171045945861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A055998 (A286589 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P14784295171045945861

/-! ## A226515.P4593730442792072070

`record[A226513(A055998(A023190(n+1)))]`
-/

namespace A226515.P4593730442792072070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (A055998 (A023190 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226515.P4593730442792072070

/-!
# A226517: Number of (19,14)-reverse multiples with n digits.

The programs for A226517, there is no canonical definition to state claims against.
-/

/-! ## A226517.P14011452742709633924

`A037800(A146002(n+1)+A000010(n+1))`
-/

namespace A226517.P14011452742709633924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A146002 (n + 1) + A000010 (n + 1)).toNat

end

end A226517.P14011452742709633924

/-! ## A226517.P2090139204242861331

`A124760(∑{e}[A002322(n+1), A000011(n)-#])`
-/

namespace A226517.P2090139204242861331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000011 n - (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A226517.P2090139204242861331

/-!
# A226518: Irregular triangle read by rows: T(n,k) = Sum_{i=0..k} Legendre(i,prime(n)).

The programs for A226518, there is no canonical definition to state claims against.
-/

/-! ## A226518.P17837673374282109514

`∑[A226520(n+1)-char[2]]`
-/

namespace A226518.P17837673374282109514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226518.P17837673374282109514

/-! ## A226518.P197416669329281114

`∑[A226520(n*(char[2]+1)+1)]`
-/

namespace A226518.P197416669329281114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n * ((if ∃ j, f2 j = n then 1 else 0) + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226518.P197416669329281114

/-! ## A226518.P127308989144357740

`∑[A226520(n+1)]-A057427(A057353(n))`
-/

namespace A226518.P127308989144357740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 (A057353 n).toNat

end

end A226518.P127308989144357740

/-! ## A226518.P18337556925167672580

`∑[A226520(n+1)]-A057427(A046079(n+1))`
-/

namespace A226518.P18337556925167672580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 (A046079 (n + 1)).toNat

end

end A226518.P18337556925167672580

/-! ## A226518.P17696013119975285673

`∑[A226520(n+1)]-A178489(A023645(n+1))`
-/

namespace A226518.P17696013119975285673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178489 (A023645 (n + 1)).toNat

end

end A226518.P17696013119975285673

/-! ## A226518.P16701473763406260532

`∑[A226520(n+1)]-A226520(A002378(n)+1)²`
-/

namespace A226518.P16701473763406260532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226520 (A002378 n + 1).toNat ^ 2

end

end A226518.P16701473763406260532

/-! ## A226518.P15792641753416700929

`∑[A226520(n+1)]-A057427(n²-n)`
-/

namespace A226518.P15792641753416700929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 (n ^ 2 - n)

end

end A226518.P15792641753416700929

/-!
# A226519: Irregular triangle read by rows: T(n,k) = Sum_{i=0..k} Legendre(i,prime(n)).

The programs for A226519, there is no canonical definition to state claims against.
-/

/-! ## A226519.P10261871923785108629

`A226518(A175969(n+1))`
-/

namespace A226519.P10261871923785108629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (A175969 (n + 1)).toNat

end

end A226519.P10261871923785108629

/-! ## A226519.P6996043089020199657

`A226518(eq[1, A226520(n+1)²]+1)`
-/

namespace A226519.P6996043089020199657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A226519.P6996043089020199657

/-! ## A226519.P10507620939797221107

`A226518(A175966(n+1)-1)`
-/

namespace A226519.P10507620939797221107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (A175966 (n + 1) - 1).toNat

end

end A226519.P10507620939797221107

/-! ## A226519.P13113338327937253088

`∑[A212157(n+1)-char[1]]`
-/

namespace A226519.P13113338327937253088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226519.P13113338327937253088

/-! ## A226519.P12784645279118164534

`A057428(n)+∑[A212157(n+1)]`
-/

namespace A226519.P12784645279118164534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226519.P12784645279118164534

/-! ## A226519.P16908881805904494445

`∑[A212157(n+1)]-A057427(n)`
-/

namespace A226519.P16908881805904494445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A226519.P16908881805904494445

/-! ## A226519.P12149694613649251347

`∑[A212157(n+1)]-A002828(n²)`
-/

namespace A226519.P12149694613649251347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002828 (n ^ 2)

end

end A226519.P12149694613649251347

/-! ## A226519.P972324406514350004

`∑[A212157(n+1)]-A000040(n+1)%2`
-/

namespace A226519.P972324406514350004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A000040 (n + 1)) 2

end

end A226519.P972324406514350004

/-! ## A226519.P6873731753410916525

`∑[A212157(n+1)]-record[A020639(n+2)]%2`
-/

namespace A226519.P6873731753410916525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 2

end

end A226519.P6873731753410916525

/-! ## A226519.P3134024034836899075

`a(n-1)+A212157(n+1)^A000040(n)` with `a(0)=1, a(1)=1`
-/

namespace A226519.P3134024034836899075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A212157 (n + 1) : ℚ) ^ (A000040 n : ℤ)

end

end A226519.P3134024034836899075

/-!
# A226520: Irregular triangle read by rows: T(n,k) = Legendre(k,prime(n)), for 0 <= k < prime(n).

The programs for A226520, there is no canonical definition to state claims against.
-/

/-! ## A226520.P11818553181872379439

`A226518(n+1)-A226518(C(2, n)+n)`
-/

namespace A226520.P11818553181872379439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226518 (n + 1) - A226518 (Nat.choose 2 n + n)

end

end A226520.P11818553181872379439

/-! ## A226520.P15446694883299779825

`A268921(A343809(n+1)+1)`
-/

namespace A226520.P15446694883299779825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268921 (A343809 (n + 1) + 1).toNat

end

end A226520.P15446694883299779825

/-! ## A226520.P11598245682256088492

`A330025(A038690(n)*A303421(n+1))`
-/

namespace A226520.P11598245682256088492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A038690 n * A303421 (n + 1)).toNat

end

end A226520.P11598245682256088492

/-! ## A226520.P822797317175567025

`A134452(xor(A050265(n+5), A097029(n+1)))`
-/

namespace A226520.P822797317175567025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (Int.xor (A050265 (n + 5)) (A097029 (n + 1))).toNat

end

end A226520.P822797317175567025

/-! ## A226520.P140829653931557190

`A163532(A001590(n)*A079696(n+1))`
-/

namespace A226520.P140829653931557190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (A001590 n * A079696 (n + 1)).toNat

end

end A226520.P140829653931557190

/-!
# A226522: Irregular triangle read by rows: T(n,k) = maximal number of minimal codewords over the set of all [n,k] cycle codes, for n >= 3.

The programs for A226522, there is no canonical definition to state claims against.
-/

/-! ## A226522.P6021571383031653817

`filter[A357443(2*n+1), A192490(#)]`
-/

namespace A226522.P6021571383031653817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357443 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192490 (f1 j).toNat = 1) n)

end

end A226522.P6021571383031653817

/-!
# A226523: a(n) = 0 if p=2, 1 if 2 is a square mod p, -1 otherwise, where p = prime(n).

The programs for A226523, the canonical program `A226523.P42842706496276235` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226523 has offset 1).

The definition of A226523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226523.P9443111382705884996

`A046980(A039714(n+1))`
-/

namespace A226523.P9443111382705884996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A039714 (n + 1)).toNat

end

end A226523.P9443111382705884996

namespace A226523

/-- `A046980(A039714(n+1))` -/
def P9443111382705884996.Spec : Prop :=
  ∀ n, P9443111382705884996.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P8981572126757222476

`A046980(A229787(n+1))`
-/

namespace A226523.P8981572126757222476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A229787 (n + 1)).toNat

end

end A226523.P8981572126757222476

namespace A226523

/-- `A046980(A229787(n+1))` -/
def P8981572126757222476.Spec : Prop :=
  ∀ n, P8981572126757222476.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P4900856461051722293

`A048272(A091382(n+1))-1`
-/

namespace A226523.P4900856461051722293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A091382 (n + 1)).toNat - 1

end

end A226523.P4900856461051722293

namespace A226523

/-- `A048272(A091382(n+1))-1` -/
def P4900856461051722293.Spec : Prop :=
  ∀ n, P4900856461051722293.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P13646560124016169597

`A008683(and(5, A000040(n+1)-6))`
-/

namespace A226523.P13646560124016169597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.land 5 (A000040 (n + 1) - 6)).toNat

end

end A226523.P13646560124016169597

namespace A226523

/-- `A008683(and(5, A000040(n+1)-6))` -/
def P13646560124016169597.Spec : Prop :=
  ∀ n, P13646560124016169597.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P5389056201668507724

`A008683(and(10, -A000040(n+1)²))`
-/

namespace A226523.P5389056201668507724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.land 10 (-(A000040 (n + 1) ^ 2))).toNat

end

end A226523.P5389056201668507724

namespace A226523

/-- `A008683(and(10, -A000040(n+1)²))` -/
def P5389056201668507724.Spec : Prop :=
  ∀ n, P5389056201668507724.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P7298354042855425667

`A008683(and(7, -A000040(n+1))+14)`
-/

namespace A226523.P7298354042855425667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.land 7 (-A000040 (n + 1)) + 14).toNat

end

end A226523.P7298354042855425667

namespace A226523

/-- `A008683(and(7, -A000040(n+1))+14)` -/
def P7298354042855425667.Spec : Prop :=
  ∀ n, P7298354042855425667.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P42842706496276235

`A006530(and(9, -A000040(n+1)²))-2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A226523

/-- `A006530(and(9, -A000040(n+1)²))-2` -/
def P42842706496276235.Spec : Prop :=
  ∀ n, P42842706496276235.a n = A226523 (n + 1)

theorem P42842706496276235.correct : P42842706496276235.Spec := by
  intro n
  simp only [A226523, Nat.add_sub_cancel]

end A226523

/-! ## A226523.P2558298383646450977

`A008683(and(5, record[A000010(n+1)-5]))`
-/

namespace A226523.P2558298383646450977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.land 5 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A226523.P2558298383646450977

namespace A226523

/-- `A008683(and(5, record[A000010(n+1)-5]))` -/
def P2558298383646450977.Spec : Prop :=
  ∀ n, P2558298383646450977.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P4958135748204589068

`A118917(record[A006530(n+2)])-1`
-/

namespace A226523.P4958135748204589068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A226523.P4958135748204589068

namespace A226523

/-- `A118917(record[A006530(n+2)])-1` -/
def P4958135748204589068.Spec : Prop :=
  ∀ n, P4958135748204589068.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P15375022434699376732

`A118917(record[A020639(n+2)])-1`
-/

namespace A226523.P15375022434699376732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118917 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A226523.P15375022434699376732

namespace A226523

/-- `A118917(record[A020639(n+2)])-1` -/
def P15375022434699376732.Spec : Prop :=
  ∀ n, P15375022434699376732.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P12338483063307689254

`A091069(record[A006530(n+2)])`
-/

namespace A226523.P12338483063307689254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226523.P12338483063307689254

namespace A226523

/-- `A091069(record[A006530(n+2)])` -/
def P12338483063307689254.Spec : Prop :=
  ∀ n, P12338483063307689254.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P7256402328873123803

`A091069(record[A020639(n+2)])`
-/

namespace A226523.P7256402328873123803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091069 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226523.P7256402328873123803

namespace A226523

/-- `A091069(record[A020639(n+2)])` -/
def P7256402328873123803.Spec : Prop :=
  ∀ n, P7256402328873123803.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P15311315654810685777

`A046980(p?[comp[n²]])`
-/

namespace A226523.P15311315654810685777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A226523.P15311315654810685777

namespace A226523

/-- `A046980(p?[comp[n²]])` -/
def P15311315654810685777.Spec : Prop :=
  ∀ n, P15311315654810685777.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P16153747426670300128

`A046980(A000040(n+1))`
-/

namespace A226523.P16153747426670300128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A000040 (n + 1)).toNat

end

end A226523.P16153747426670300128

namespace A226523

/-- `A046980(A000040(n+1))` -/
def P16153747426670300128.Spec : Prop :=
  ∀ n, P16153747426670300128.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P6044809601920367822

`A014017(A076342(n+1))`
-/

namespace A226523.P6044809601920367822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A076342 (n + 1)).toNat

end

end A226523.P6044809601920367822

namespace A226523

/-- `A014017(A076342(n+1))` -/
def P6044809601920367822.Spec : Prop :=
  ∀ n, P6044809601920367822.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P11299422504601466743

`A046978(A052147(n+1))`
-/

namespace A226523.P11299422504601466743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A052147 (n + 1)).toNat

end

end A226523.P11299422504601466743

namespace A226523

/-- `A046978(A052147(n+1))` -/
def P11299422504601466743.Spec : Prop :=
  ∀ n, P11299422504601466743.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P6455877406722760721

`A118822(A039915(n+1))`
-/

namespace A226523.P6455877406722760721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118822 (A039915 (n + 1)).toNat

end

end A226523.P6455877406722760721

namespace A226523

/-- `A118822(A039915(n+1))` -/
def P6455877406722760721.Spec : Prop :=
  ∀ n, P6455877406722760721.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P17684224792082072165

`A046980(A171019(n+1))`
-/

namespace A226523.P17684224792082072165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A171019 (n + 1)).toNat

end

end A226523.P17684224792082072165

namespace A226523

/-- `A046980(A171019(n+1))` -/
def P17684224792082072165.Spec : Prop :=
  ∀ n, P17684224792082072165.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P3879953904851261439

`A046980(A171030(n+1))`
-/

namespace A226523.P3879953904851261439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A171030 (n + 1)).toNat

end

end A226523.P3879953904851261439

namespace A226523

/-- `A046980(A171030(n+1))` -/
def P3879953904851261439.Spec : Prop :=
  ∀ n, P3879953904851261439.a n = A226523 (n + 1)

end A226523

/-! ## A226523.P5981283812520004246

`A046980(A171041(n+1))`
-/

namespace A226523.P5981283812520004246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A171041 (n + 1)).toNat

end

end A226523.P5981283812520004246

namespace A226523

/-- `A046980(A171041(n+1))` -/
def P5981283812520004246.Spec : Prop :=
  ∀ n, P5981283812520004246.a n = A226523 (n + 1)

end A226523

/-!
# A226524: Cubes which are the sum of two consecutive primes.

The programs for A226524, there is no canonical definition to state claims against.
-/

/-! ## A226524.P8308018364214167557

`A074925(n+1)^3`
-/

namespace A226524.P8308018364214167557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074925 (n + 1) ^ 3

end

end A226524.P8308018364214167557

/-! ## A226524.P2234388295042915656

`A074925(Δ[n²]-n)²*A074925(n+1)`
-/

namespace A226524.P2234388295042915656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074925 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2 * A074925 (n + 1)

end

end A226524.P2234388295042915656

/-! ## A226524.P10437917636314968021

`A016743(A074925(n+1)/2)`
-/

namespace A226524.P10437917636314968021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (SequenceMachineLib.roundAway ((A074925 (n + 1) : ℚ) / 2)).toNat

end

end A226524.P10437917636314968021

/-! ## A226524.P5933601763955984956

`A000578(A074925(n+1))`
-/

namespace A226524.P5933601763955984956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A074925 (n + 1)).toNat

end

end A226524.P5933601763955984956

/-! ## A226524.P18112622520955176386

`A184628(lcm(2, A074925(n+1)))`
-/

namespace A226524.P18112622520955176386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (Int.lcm 2 (A074925 (n + 1)))

end

end A226524.P18112622520955176386

/-! ## A226524.P269152027475376943

`A184628(A074925(n+1)%A020233(n+1))`
-/

namespace A226524.P269152027475376943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (Int.tmod (A074925 (n + 1)) (A020233 (n + 1))).toNat

end

end A226524.P269152027475376943

/-! ## A226524.P1275940524568443656

`A184628(A074925(n+1)%Δ[A081186(n)])`
-/

namespace A226524.P1275940524568443656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (Int.tmod (A074925 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A226524.P1275940524568443656

/-! ## A226524.P5847346100606872723

`∩[A245360(n+1), n*n²]`
-/

namespace A226524.P5847346100606872723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A226524.P5847346100606872723

/-! ## A226524.P17243337204120741366

`∩[A000578(n), A245360(n+1)]`
-/

namespace A226524.P17243337204120741366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226524.P17243337204120741366

/-! ## A226524.P3121314875353448243

`∩[A016743(n), A245360(n+1)]`
-/

namespace A226524.P3121314875353448243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226524.P3121314875353448243

/-! ## A226524.P3029976132929135386

`∩[A153147(n+1), A245360(n+1)]`
-/

namespace A226524.P3029976132929135386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226524.P3029976132929135386

/-! ## A226524.P5149618947784717314

`∩[A179125(n+1), A245360(n+1)]`
-/

namespace A226524.P5149618947784717314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226524.P5149618947784717314

/-! ## A226524.P952468349351572814

`∩[A184628(n+1), A245360(n+1)]`
-/

namespace A226524.P952468349351572814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226524.P952468349351572814

/-! ## A226524.P9818015367712947784

`∩[A301647(n+1), A245360(n+1)]`
-/

namespace A226524.P9818015367712947784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226524.P9818015367712947784

/-! ## A226524.P9291526192715307774

`∩[A109900(n), A245360(n+1)]`
-/

namespace A226524.P9291526192715307774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226524.P9291526192715307774

/-! ## A226524.P18243557608315270835

`A184628(A074925(n+1)%A081069(n))`
-/

namespace A226524.P18243557608315270835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (Int.tmod (A074925 (n + 1)) (A081069 n)).toNat

end

end A226524.P18243557608315270835

/-!
# A226526: Slowest-growing sequence of semiprimes where 1/(sp+1) sums to 1 without actually reaching it.

The programs for A226526, there is no canonical definition to state claims against.
-/

/-! ## A226526.P13664593766429737847

`A001358(∑[A008326(A203291(n+1))])`
-/

namespace A226526.P13664593766429737847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008326 (A203291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226526.P13664593766429737847

/-! ## A226526.P6522774347114659856

`A006924(A185036(n))+A001358(n+1)`
-/

namespace A226526.P6522774347114659856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 (A185036 n).toNat + A001358 (n + 1)

end

end A226526.P6522774347114659856

/-! ## A226526.P7364465663631741715

`A006924(A185236(n))+A001358(n+1)`
-/

namespace A226526.P7364465663631741715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006924 (A185236 n).toNat + A001358 (n + 1)

end

end A226526.P7364465663631741715

/-! ## A226526.P6052142858910862528

`A351592(A173018(n))+A001358(n+1)`
-/

namespace A226526.P6052142858910862528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351592 (A173018 n).toNat + A001358 (n + 1)

end

end A226526.P6052142858910862528

/-! ## A226526.P6679138775832002022

`A168261(A045798(n+1))+A001358(n+1)`
-/

namespace A226526.P6679138775832002022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168261 (A045798 (n + 1)).toNat + A001358 (n + 1)

end

end A226526.P6679138775832002022

/-!
# A226532: If n = Product_{i>0} prime(i)^e(i), then a(n) = Product_{i>0} prime(i)^(XOR_{j>=i} e(j)), where XOR is bitwise XOR.

The programs for A226532, there is no canonical definition to state claims against.
-/

/-! ## A226532.P13624727400872923838

`A335049(A060695(n+1))`
-/

namespace A226532.P13624727400872923838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335049 (A060695 (n + 1)).toNat

end

end A226532.P13624727400872923838

/-! ## A226532.P15287353651581777278

`A335049(n+1)/A035214(A045967(n+1))`
-/

namespace A226532.P15287353651581777278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335049 (n + 1) : ℚ) / (A035214 (A045967 (n + 1)).toNat : ℚ)

end

end A226532.P15287353651581777278

/-! ## A226532.P13891391893474537569

`A335049(n+1)/A325625(A234027(3*n+4))`
-/

namespace A226532.P13891391893474537569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335049 (n + 1) : ℚ) / (A325625 (A234027 (3 * n + 4)).toNat : ℚ)

end

end A226532.P13891391893474537569

/-! ## A226532.P2814222072890446303

`A335049(n+1)/A325625(A335023(n+1))`
-/

namespace A226532.P2814222072890446303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335049 (n + 1) : ℚ) / (A325625 (A335023 (n + 1)).toNat : ℚ)

end

end A226532.P2814222072890446303

/-! ## A226532.P9701826800764291368

`A335049(n+1)/A325625(A334622(n))`
-/

namespace A226532.P9701826800764291368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335049 (n + 1) : ℚ) / (A325625 (A334622 n).toNat : ℚ)

end

end A226532.P9701826800764291368

/-!
# A226534: a(n) = (p(n+1) + p(n) - 1) mod (p(n+1) - p(n) + 1) where p(n) is the n-th prime.

The programs for A226534, the canonical program `A226534.P11872375198540827166` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226534 has offset 1).

The definition of A226534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226534.P12283765866319522671

`A037168(n+1)%Δ[A014688(n+1)]`
-/

namespace A226534.P12283765866319522671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037168 (n + 1)) (f1 (n + 1) - f1 n)

end

end A226534.P12283765866319522671

namespace A226534

/-- `A037168(n+1)%Δ[A014688(n+1)]` -/
def P12283765866319522671.Spec : Prop :=
  ∀ n, P12283765866319522671.a n = A226534 (n + 1)

end A226534

/-! ## A226534.P2796686817010951356

`A100484(n+2)%Δ[A014688(n+1)]`
-/

namespace A226534.P2796686817010951356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100484 (n + 2)) (f1 (n + 1) - f1 n)

end

end A226534.P2796686817010951356

namespace A226534

/-- `A100484(n+2)%Δ[A014688(n+1)]` -/
def P2796686817010951356.Spec : Prop :=
  ∀ n, P2796686817010951356.a n = A226534 (n + 1)

end A226534

/-! ## A226534.P10361017382872205528

`A001747(n+3)%Δ[A014688(n+1)]`
-/

namespace A226534.P10361017382872205528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001747 (n + 3)) (f1 (n + 1) - f1 n)

end

end A226534.P10361017382872205528

namespace A226534

/-- `A001747(n+3)%Δ[A014688(n+1)]` -/
def P10361017382872205528.Spec : Prop :=
  ∀ n, P10361017382872205528.a n = A226534 (n + 1)

end A226534

/-! ## A226534.P11872375198540827166

`(2*A000040(n+2))%A076368(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A226534

/-- `(2*A000040(n+2))%A076368(n+2)` -/
def P11872375198540827166.Spec : Prop :=
  ∀ n, P11872375198540827166.a n = A226534 (n + 1)

theorem P11872375198540827166.correct : P11872375198540827166.Spec := by
  intro n
  simp only [A226534, Nat.add_sub_cancel]

end A226534

/-! ## A226534.P9175877058581886752

`A000010(A001749(n+1))%Δ[A014688(n+1)]`
-/

namespace A226534.P9175877058581886752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A001749 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A226534.P9175877058581886752

namespace A226534

/-- `A000010(A001749(n+1))%Δ[A014688(n+1)]` -/
def P9175877058581886752.Spec : Prop :=
  ∀ n, P9175877058581886752.a n = A226534 (n + 1)

end A226534

/-! ## A226534.P243155871400783384

`A004275(A000040(n+1))%Δ[A014688(n+1)]`
-/

namespace A226534.P243155871400783384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A000040 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A226534.P243155871400783384

namespace A226534

/-- `A004275(A000040(n+1))%Δ[A014688(n+1)]` -/
def P243155871400783384.Spec : Prop :=
  ∀ n, P243155871400783384.a n = A226534 (n + 1)

end A226534

/-! ## A226534.P15414869278333053053

`A000010(lcm(4, A000040(n+1)))%A076368(n+2)`
-/

namespace A226534.P15414869278333053053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (Int.lcm 4 (A000040 (n + 1)))) (A076368 (n + 2))

end

end A226534.P15414869278333053053

namespace A226534

/-- `A000010(lcm(4, A000040(n+1)))%A076368(n+2)` -/
def P15414869278333053053.Spec : Prop :=
  ∀ n, P15414869278333053053.a n = A226534 (n + 1)

end A226534

/-!
# A226535: Expansion of b(-q) in powers of q where b() is a cubic AGM theta function.

The programs for A226535, there is no canonical definition to state claims against.
-/

/-! ## A226535.P2444609940468945589

`(-1)^n*A005928(n)`
-/

namespace A226535.P2444609940468945589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A005928 n

end

end A226535.P2444609940468945589

/-! ## A226535.P5053598679057038004

`A005928(n)*A033999(n)`
-/

namespace A226535.P5053598679057038004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n * A033999 n

end

end A226535.P5053598679057038004

/-! ## A226535.P2515901280040318802

`A010684(n)*A097109(n)`
-/

namespace A226535.P2515901280040318802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A097109 n

end

end A226535.P2515901280040318802

/-! ## A226535.P3105978939559521889

`A010892(n)*A113062(n)`
-/

namespace A226535.P3105978939559521889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A113062 n

end

end A226535.P3105978939559521889

/-! ## A226535.P415905282048473571

`A113062(n)*A130151(n)`
-/

namespace A226535.P415905282048473571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A130151 n

end

end A226535.P415905282048473571

/-! ## A226535.P12633632694391899397

`A113062(n)*A132367(n)`
-/

namespace A226535.P12633632694391899397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A132367 n

end

end A226535.P12633632694391899397

/-! ## A226535.P17826504077621247582

`A113062(n)*A132419(n)`
-/

namespace A226535.P17826504077621247582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 n * A132419 n

end

end A226535.P17826504077621247582

/-! ## A226535.P2932034473499727008

`A097109(n)*A167817(n)`
-/

namespace A226535.P2932034473499727008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n * A167817 n

end

end A226535.P2932034473499727008

/-! ## A226535.P6687541798705759376

`A097109(n)*A254745(n)`
-/

namespace A226535.P6687541798705759376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n * A254745 n

end

end A226535.P6687541798705759376

/-! ## A226535.P8315473846722562240

`A004016(n)/A057079(n)`
-/

namespace A226535.P8315473846722562240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A057079 n : ℚ)

end

end A226535.P8315473846722562240

/-! ## A226535.P9064603253141739340

`A004016(n)/A132954(n)`
-/

namespace A226535.P9064603253141739340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A132954 n : ℚ)

end

end A226535.P9064603253141739340

/-! ## A226535.P3599701192953680702

`A180318(n)/A131713(n)`
-/

namespace A226535.P3599701192953680702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A131713 n : ℚ)

end

end A226535.P3599701192953680702

/-! ## A226535.P15630134117481431169

`A073575(n+1)*A097109(n)`
-/

namespace A226535.P15630134117481431169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (n + 1) * A097109 n

end

end A226535.P15630134117481431169

/-! ## A226535.P4478206019746080230

`A097109(n)*A287765(n+1)`
-/

namespace A226535.P4478206019746080230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 n * A287765 (n + 1)

end

end A226535.P4478206019746080230

/-! ## A226535.P5506587084300771968

`A180318(n)/(2-A057079(n)²)`
-/

namespace A226535.P5506587084300771968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (2 - A057079 n ^ 2 : ℚ)

end

end A226535.P5506587084300771968

/-! ## A226535.P10918613599640613476

`A180318(n)/(2-A117373(n)²)`
-/

namespace A226535.P10918613599640613476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (2 - A117373 n ^ 2 : ℚ)

end

end A226535.P10918613599640613476

/-! ## A226535.P1092514601078631635

`A180318(n)/(2-A131556(n)²)`
-/

namespace A226535.P1092514601078631635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (2 - A131556 n ^ 2 : ℚ)

end

end A226535.P1092514601078631635

/-! ## A226535.P1745434515459827407

`A180318(n)/(2-A131714(n)²)`
-/

namespace A226535.P1745434515459827407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (2 - A131714 n ^ 2 : ℚ)

end

end A226535.P1745434515459827407

/-! ## A226535.P12673799903172425180

`A180318(n)/(2-A132954(n)²)`
-/

namespace A226535.P12673799903172425180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (2 - A132954 n ^ 2 : ℚ)

end

end A226535.P12673799903172425180

/-! ## A226535.P436220273129857380

`A004011(n)*A005928(n)/A103640(n)`
-/

namespace A226535.P436220273129857380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n * A005928 n : ℚ) / (A103640 n : ℚ)

end

end A226535.P436220273129857380

/-!
# A226537: Numbers not of the form p + q^2 + r^3 + s^4 where p, q, r, and s are prime.

The programs for A226537, there is no canonical definition to state claims against.
-/

/-! ## A226537.P319144472516324267

`lt[A334178(A199017(n)), A054353(n+1)]`
-/

namespace A226537.P319144472516324267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334178 (A199017 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226537.P319144472516324267

/-! ## A226537.P4173022812361206222

`lt[3*n/12-5, A160651(n)]+1`
-/

namespace A226537.P4173022812361206222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / 12) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A226537.P4173022812361206222

/-! ## A226537.P13351784691423140375

`lt[A029374(n), A028949(n+1)]`
-/

namespace A226537.P13351784691423140375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029374 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226537.P13351784691423140375

/-! ## A226537.P16474380392813180619

`lt[A029404(n), A028949(n+1)]`
-/

namespace A226537.P16474380392813180619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029404 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226537.P16474380392813180619

/-! ## A226537.P10591506910681576062

`lt[A204201(A097793(n)), A016743(n)]`
-/

namespace A226537.P10591506910681576062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204201 (A097793 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226537.P10591506910681576062

/-!
# A226538: a(2t) = a(2t-1) + 1, a(2t+1) = a(2t) + a(2t-2) for t >= 1, with a(0) = a(1) = 1.

The programs for A226538, the canonical program `A226538.P17623945793006048119` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226538 has offset 0).

The definition of A226538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226538.P17623945793006048119

`a(n-1)+a(n-3)*(1-(-1)^n)/2+(1+(-1)^n)/2` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226538

/-- `a(n-1)+a(n-3)*(1-(-1)^n)/2+(1+(-1)^n)/2` -/
def P17623945793006048119.Spec : Prop :=
  ∀ n, P17623945793006048119.a n = (A226538 n : ℚ)

end A226538

/-! ## A226538.P8625491156146499653

`a(n-1)+a(n-3)^(n%2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A226538.P8625491156146499653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a (n - 3) ^ (n % 2)

end

end A226538.P8625491156146499653

namespace A226538

/-- `a(n-1)+a(n-3)^(n%2)` -/
def P8625491156146499653.Spec : Prop :=
  ∀ n, (P8625491156146499653.a n : ℤ) = A226538 n

end A226538

/-! ## A226538.P7708882908226433191

`a(n-1)+gcd((n+1)%2, a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A226538.P7708882908226433191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + Nat.gcd ((n + 1) % 2) (a (n - 3))

end

end A226538.P7708882908226433191

namespace A226538

/-- `a(n-1)+gcd((n+1)%2, a(n-3))` -/
def P7708882908226433191.Spec : Prop :=
  ∀ n, (P7708882908226433191.a n : ℤ) = A226538 n

end A226538

/-! ## A226538.P6988048595160891783

`A000045(floor((n+3)/2))+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A226538.P6988048595160891783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 ⌊(n + 3 : ℚ) / 2⌋.toNat + a (n - 2)

end

end A226538.P6988048595160891783

namespace A226538

/-- `A000045(floor((n+3)/2))+a(n-2)` -/
def P6988048595160891783.Spec : Prop :=
  ∀ n, P6988048595160891783.a n = A226538 n

end A226538

/-! ## A226538.P1757268631063076873

`A163227(n+1)+A131524(n+1)`
-/

namespace A226538.P1757268631063076873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163227 (n + 1) + A131524 (n + 1)

end

end A226538.P1757268631063076873

namespace A226538

/-- `A163227(n+1)+A131524(n+1)` -/
def P1757268631063076873.Spec : Prop :=
  ∀ n, P1757268631063076873.a n = A226538 n

end A226538

/-! ## A226538.P4764208707878189169

`A259623(A051755(n+2)-n)-2`
-/

namespace A226538.P4764208707878189169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (A051755 (n + 2) - (n : ℤ)).toNat - 2

end

end A226538.P4764208707878189169

namespace A226538

/-- `A259623(A051755(n+2)-n)-2` -/
def P4764208707878189169.Spec : Prop :=
  ∀ n, P4764208707878189169.a n = A226538 n

end A226538

/-! ## A226538.P11692100973028031722

`A258085(n+2)-n/A065033(2*n)`
-/

namespace A226538.P11692100973028031722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258085 (n + 2) : ℚ) - (n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A226538.P11692100973028031722

namespace A226538

/-- `A258085(n+2)-n/A065033(2*n)` -/
def P11692100973028031722.Spec : Prop :=
  ∀ n, P11692100973028031722.a n = (A226538 n : ℚ)

end A226538

/-! ## A226538.P9964281219227349178

`A001911(A065033(n))+Δ[A065033(n)]`
-/

namespace A226538.P9964281219227349178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A065033 n).toNat + (f1 (n + 1) - f1 n)

end

end A226538.P9964281219227349178

namespace A226538

/-- `A001911(A065033(n))+Δ[A065033(n)]` -/
def P9964281219227349178.Spec : Prop :=
  ∀ n, P9964281219227349178.a n = A226538 n

end A226538

/-! ## A226538.P7045404770358116984

`A000045(A080513(n)+2)-A000034(n)`
-/

namespace A226538.P7045404770358116984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080513 n + 2).toNat - A000034 n

end

end A226538.P7045404770358116984

namespace A226538

/-- `A000045(A080513(n)+2)-A000034(n)` -/
def P7045404770358116984.Spec : Prop :=
  ∀ n, P7045404770358116984.a n = A226538 n

end A226538

/-! ## A226538.P6448043199802179208

`A001911(∑[A000035(n)])+A000035(n+1)`
-/

namespace A226538.P6448043199802179208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000035 (n + 1)

end

end A226538.P6448043199802179208

namespace A226538

/-- `A001911(∑[A000035(n)])+A000035(n+1)` -/
def P6448043199802179208.Spec : Prop :=
  ∀ n, P6448043199802179208.a n = A226538 n

end A226538

/-! ## A226538.P1372005888123914900

`A065033(2*n)+A258085(n+2)-A065033(2*n+1)`
-/

namespace A226538.P1372005888123914900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + (A258085 (n + 2) - A065033 (2 * n + 1))

end

end A226538.P1372005888123914900

namespace A226538

/-- `A065033(2*n)+A258085(n+2)-A065033(2*n+1)` -/
def P1372005888123914900.Spec : Prop :=
  ∀ n, P1372005888123914900.a n = A226538 n

end A226538

/-! ## A226538.P3178727450414660171

`A143061(A117142(n+1))`
-/

namespace A226538.P3178727450414660171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A117142 (n + 1)).toNat

end

end A226538.P3178727450414660171

namespace A226538

/-- `A143061(A117142(n+1))` -/
def P3178727450414660171.Spec : Prop :=
  ∀ n, P3178727450414660171.a n = A226538 n

end A226538

/-! ## A226538.P2185518429062320628

`A011794(A101881(n+1))`
-/

namespace A226538.P2185518429062320628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011794 (A101881 (n + 1)).toNat

end

end A226538.P2185518429062320628

namespace A226538

/-- `A011794(A101881(n+1))` -/
def P2185518429062320628.Spec : Prop :=
  ∀ n, P2185518429062320628.a n = A226538 n

end A226538

/-! ## A226538.P9753456133135582801

`A011794(A165157(n+1)+1)`
-/

namespace A226538.P9753456133135582801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011794 (A165157 (n + 1) + 1).toNat

end

end A226538.P9753456133135582801

namespace A226538

/-- `A011794(A165157(n+1)+1)` -/
def P9753456133135582801.Spec : Prop :=
  ∀ n, P9753456133135582801.a n = A226538 n

end A226538

/-! ## A226538.P16228376982056051903

`A055801(A074148(n+3)+2)`
-/

namespace A226538.P16228376982056051903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 (A074148 (n + 3) + 2).toNat

end

end A226538.P16228376982056051903

namespace A226538

/-- `A055801(A074148(n+3)+2)` -/
def P16228376982056051903.Spec : Prop :=
  ∀ n, P16228376982056051903.a n = A226538 n

end A226538

/-!
# A226539: Numbers which are the sum of two squared primes in exactly two ways (ignoring order).

The programs for A226539, there is no canonical definition to state claims against.
-/

/-! ## A226539.P17170026455772012362

`eq[2, A045698(n)]`
-/

namespace A226539.P17170026455772012362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226539.P17170026455772012362

/-!
# A226540: Maximum of the proper divisors of the triangular numbers.

The programs for A226540, there is no canonical definition to state claims against.
-/

/-! ## A226540.P7976735398738753842

`A000217(n+2)/A069901(n+2)`
-/

namespace A226540.P7976735398738753842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 2) : ℚ) / (A069901 (n + 2) : ℚ)

end

end A226540.P7976735398738753842

/-! ## A226540.P16843763625711072146

`C(n+3, 2)/A020639(C(n+3, 2))`
-/

namespace A226540.P16843763625711072146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℚ) / (A020639 (Nat.choose (n + 3) 2) : ℚ)

end

end A226540.P16843763625711072146

/-! ## A226540.P13679807920903843518

`A253145(n+1)/A020639(A253145(n+1))`
-/

namespace A226540.P13679807920903843518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253145 (n + 1) : ℚ) / (A020639 (A253145 (n + 1)).toNat : ℚ)

end

end A226540.P13679807920903843518

/-! ## A226540.P122957250442917647

`A161680(n+3)/A020639(A161680(n+3))`
-/

namespace A226540.P122957250442917647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 (n + 3) : ℚ) / (A020639 (A161680 (n + 3)).toNat : ℚ)

end

end A226540.P122957250442917647

/-! ## A226540.P5301128815644247943

`(A000096(n+1)+1)/A020639(A000096(n+1)+1)`
-/

namespace A226540.P5301128815644247943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 1) + 1 : ℚ) / (A020639 (A000096 (n + 1) + 1).toNat : ℚ)

end

end A226540.P5301128815644247943

/-! ## A226540.P12547900529130614321

`A001972(2*(n+1))/A020639(A001972(2*(n+1)))`
-/

namespace A226540.P12547900529130614321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001972 (2 * (n + 1)) : ℚ) / (A020639 (A001972 (2 * (n + 1))).toNat : ℚ)

end

end A226540.P12547900529130614321

/-! ## A226540.P12763389452588203714

`A008795(2*(n+1))/A020639(A008795(2*(n+1)))`
-/

namespace A226540.P12763389452588203714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008795 (2 * (n + 1)) : ℚ) / (A020639 (A008795 (2 * (n + 1))).toNat : ℚ)

end

end A226540.P12763389452588203714

/-! ## A226540.P3149768512353209142

`A008805(2*(n+1))/A020639(A008805(2*(n+1)))`
-/

namespace A226540.P3149768512353209142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008805 (2 * (n + 1)) : ℚ) / (A020639 (A008805 (2 * (n + 1))).toNat : ℚ)

end

end A226540.P3149768512353209142

/-! ## A226540.P8015824612074231188

`A260220(2*(n+1))/A020639(A260220(2*(n+1)))`
-/

namespace A226540.P8015824612074231188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260220 (2 * (n + 1)) : ℚ) / (A020639 (A260220 (2 * (n + 1))).toNat : ℚ)

end

end A226540.P8015824612074231188

/-! ## A226540.P166624259153612513

`A160791(2*(n+2))/A020639(A160791(2*(n+2)))`
-/

namespace A226540.P166624259153612513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160791 (2 * (n + 2)) : ℚ) / (A020639 (A160791 (2 * (n + 2))).toNat : ℚ)

end

end A226540.P166624259153612513

/-! ## A226540.P14496585006189508829

`A008734(4*(n+1))/A020639(A008734(4*(n+1)))`
-/

namespace A226540.P14496585006189508829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008734 (4 * (n + 1)) : ℚ) / (A020639 (A008734 (4 * (n + 1))).toNat : ℚ)

end

end A226540.P14496585006189508829

/-! ## A226540.P14973686692263513277

`A055802(2*(n+3))/A020639(A055802(2*(n+3)))`
-/

namespace A226540.P14973686692263513277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055802 (2 * (n + 3)) : ℚ) / (A020639 (A055802 (2 * (n + 3))).toNat : ℚ)

end

end A226540.P14973686692263513277

/-! ## A226540.P9642437757517295981

`A134519(2*n+3)/A020639(A134519(2*n+3))`
-/

namespace A226540.P9642437757517295981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134519 (2 * n + 3) : ℚ) / (A020639 (A134519 (2 * n + 3)).toNat : ℚ)

end

end A226540.P9642437757517295981

/-! ## A226540.P6535173168329386533

`A001971(2*n+5)/A020639(A001971(2*n+5))`
-/

namespace A226540.P6535173168329386533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001971 (2 * n + 5) : ℚ) / (A020639 (A001971 (2 * n + 5)).toNat : ℚ)

end

end A226540.P6535173168329386533

/-! ## A226540.P4861250030877162032

`A322982(A163300(n+1)+A000124(n))`
-/

namespace A226540.P4861250030877162032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A163300 (n + 1) + A000124 n).toNat

end

end A226540.P4861250030877162032

/-! ## A226540.P12832844984399431803

`A117358(2*(n+2)*(n+3))`
-/

namespace A226540.P12832844984399431803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * ((n + 2) * (n + 3)))

end

end A226540.P12832844984399431803

/-! ## A226540.P11904258273220537902

`A032742(C(n+3, 2))`
-/

namespace A226540.P11904258273220537902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Nat.choose (n + 3) 2)

end

end A226540.P11904258273220537902

/-! ## A226540.P16666384398611691531

`A032742(∑[n+2]+1)`
-/

namespace A226540.P16666384398611691531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226540.P16666384398611691531

/-!
# A226542: Primes p such that p - 1 can be represented as a repdigit number in some base < p which is a power of two.

The programs for A226542, there is no canonical definition to state claims against.
-/

/-! ## A226542.P11272379232973373442

`p?[A242139(n+1)+1]`
-/

namespace A226542.P11272379232973373442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242139 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226542.P11272379232973373442

/-! ## A226542.P14335594925806215245

`p?[A004442(A242139(n+1))]`
-/

namespace A226542.P14335594925806215245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A242139 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226542.P14335594925806215245

/-! ## A226542.P7468580328667621268

`p?[A153152(A242139(n+2))]`
-/

namespace A226542.P7468580328667621268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A242139 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226542.P7468580328667621268

/-! ## A226542.P7000792853897930200

`record[A001414(A242139(n+3)+1)]`
-/

namespace A226542.P7000792853897930200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A242139 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226542.P7000792853897930200

/-! ## A226542.P2561007431661418903

`record[A006530(A242139(n+3)+1)]`
-/

namespace A226542.P2561007431661418903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242139 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226542.P2561007431661418903

/-!
# A226543: Number of tilings of a 9 X n rectangle using 1 X 1 squares and L-tiles.

The programs for A226543, there is no canonical definition to state claims against.
-/

/-! ## A226543.P12367668472732520354

`A226444(eq[9, A002262(n)])`
-/

namespace A226543.P12367668472732520354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226543.P12367668472732520354

/-! ## A226543.P4903663888867883782

`A226444(eq[9, A144328(n+1)])`
-/

namespace A226543.P4903663888867883782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226543.P4903663888867883782

/-! ## A226543.P13696974554196458525

`A226444(eq[10, A002260(n+1)])`
-/

namespace A226543.P13696974554196458525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226543.P13696974554196458525

/-! ## A226543.P3581542731917969512

`A226444(eq[9, A025581(n)])`
-/

namespace A226543.P3581542731917969512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226543.P3581542731917969512

/-! ## A226543.P9079687327922545641

`A226444(eq[10, A004736(n+1)])`
-/

namespace A226543.P9079687327922545641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226543.P9079687327922545641

/-!
# A226544: Number of tilings of a 10 X n rectangle using 1 X 1 squares and L-tiles.

The programs for A226544, there is no canonical definition to state claims against.
-/

/-! ## A226544.P1620156622871319248

`A226444(eq[10, A002262(n)])`
-/

namespace A226544.P1620156622871319248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226544.P1620156622871319248

/-! ## A226544.P3511755027333570900

`A226444(eq[10, A144328(n+1)])`
-/

namespace A226544.P3511755027333570900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226544.P3511755027333570900

/-! ## A226544.P8140786909968045412

`A226444(eq[11, A002260(n+1)])`
-/

namespace A226544.P8140786909968045412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226544.P8140786909968045412

/-! ## A226544.P10830274244468970289

`A226444(eq[10, A025581(n)])`
-/

namespace A226544.P10830274244468970289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226544.P10830274244468970289

/-! ## A226544.P7229799635851779740

`A226444(eq[11, A004736(n+1)])`
-/

namespace A226544.P7229799635851779740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226544.P7229799635851779740

/-!
# A226545: Number A(n,k) of squares in all tilings of a k X n rectangle using integer-sided square tiles; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A226545, there is no canonical definition to state claims against.
-/

/-! ## A226545.P13711966970283804331

`A039076(A302998(n)%A075935(n))`
-/

namespace A226545.P13711966970283804331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039076 (Int.tmod (A302998 n) (A075935 n)).toNat

end

end A226545.P13711966970283804331

/-! ## A226545.P15173859755830297124

`A039076(A303484(n)%A075935(n))`
-/

namespace A226545.P15173859755830297124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039076 (Int.tmod (A303484 n) (A075935 n)).toNat

end

end A226545.P15173859755830297124

/-! ## A226545.P4033761139694188835

`A039076(A302998(n))%A286431(n+1)`
-/

namespace A226545.P4033761139694188835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039076 (A302998 n).toNat) (A286431 (n + 1))

end

end A226545.P4033761139694188835

/-! ## A226545.P8047310153668235011

`A046800(A155971(n))`
-/

namespace A226545.P8047310153668235011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046800 (A155971 n).toNat

end

end A226545.P8047310153668235011

/-! ## A226545.P6399908921760285546

`A121536(A090011(n))`
-/

namespace A226545.P6399908921760285546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121536 (A090011 n).toNat

end

end A226545.P6399908921760285546

/-!
# A226546: Number of squares in all tilings of a 3 X n rectangle using integer-sided square tiles.

The programs for A226546, there is no canonical definition to state claims against.
-/

/-! ## A226546.P6385343044761525211

`A226545(∑[n+3]+6)`
-/

namespace A226546.P6385343044761525211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A226546.P6385343044761525211

/-! ## A226546.P12594539172424166323

`record[A023531(n+3)*A226545(n)]`
-/

namespace A226546.P12594539172424166323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 3) * A226545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226546.P12594539172424166323

/-! ## A226546.P13962755055019162859

`A033999(n)²*A226545(A046691(n+2))`
-/

namespace A226546.P13962755055019162859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A226545 (A046691 (n + 2)).toNat

end

end A226546.P13962755055019162859

/-! ## A226546.P582749157539489867

`A226545(A167614(n+2))%A000079(n)²`
-/

namespace A226546.P582749157539489867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226545 (A167614 (n + 2)).toNat) (A000079 n ^ 2)

end

end A226546.P582749157539489867

/-! ## A226546.P7732884437578631578

`A226545(A046691(n+2))+A000007(n+1)`
-/

namespace A226546.P7732884437578631578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A226546.P7732884437578631578

/-!
# A226547: Number of squares in all tilings of a 4 X n rectangle using integer-sided square tiles.

The programs for A226547, there is no canonical definition to state claims against.
-/

/-! ## A226547.P8106126091042101984

`A226545(A052905(n+2))`
-/

namespace A226547.P8106126091042101984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A052905 (n + 2)).toNat

end

end A226547.P8106126091042101984

/-! ## A226547.P16822442201318540867

`A226545(eq[4, A002262(n)])`
-/

namespace A226547.P16822442201318540867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226547.P16822442201318540867

/-! ## A226547.P5021948261920871234

`A226545(eq[4, A025581(n)])`
-/

namespace A226547.P5021948261920871234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226547.P5021948261920871234

/-! ## A226547.P2122325297511785868

`A226545(A055999(n+2)+1)`
-/

namespace A226547.P2122325297511785868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A055999 (n + 2) + 1).toNat

end

end A226547.P2122325297511785868

/-! ## A226547.P6950646717117594113

`A226545(A141214(n+2)-2)`
-/

namespace A226547.P6950646717117594113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A141214 (n + 2) - 2).toNat

end

end A226547.P6950646717117594113

/-!
# A226548: Number of squares in all tilings of a 5 X n rectangle using integer-sided square tiles.

The programs for A226548, there is no canonical definition to state claims against.
-/

/-! ## A226548.P12604395483356792796

`A226545(eq[5, A025581(n)])`
-/

namespace A226548.P12604395483356792796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226548.P12604395483356792796

/-! ## A226548.P15367096694003503381

`A226545(A000124(n+5)+4)`
-/

namespace A226548.P15367096694003503381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A000124 (n + 5) + 4).toNat

end

end A226548.P15367096694003503381

/-! ## A226548.P5683977564636724887

`A226545(A000217(n+6)-6)`
-/

namespace A226548.P5683977564636724887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A000217 (n + 6) - 6).toNat

end

end A226548.P5683977564636724887

/-! ## A226548.P1698961837265090441

`A226545(eq[5, val(A054582(n), 2)])`
-/

namespace A226548.P1698961837265090441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A054582 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226548.P1698961837265090441

/-! ## A226548.P426211156317000223

`A226545(2*n+A052905(n+1)+10)`
-/

namespace A226548.P426211156317000223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 ((2 * n : ℤ) + (A052905 (n + 1) + 10)).toNat

end

end A226548.P426211156317000223

/-!
# A226549: Number of squares in all tilings of a 6 X n rectangle using integer-sided square tiles.

The programs for A226549, there is no canonical definition to state claims against.
-/

/-! ## A226549.P18100906637440056617

`A226545(C(n+7, 2)+n)`
-/

namespace A226549.P18100906637440056617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (Nat.choose (n + 7) 2 + n)

end

end A226549.P18100906637440056617

/-! ## A226549.P298496889903014328

`A226545(eq[6, A002262(n)])`
-/

namespace A226549.P298496889903014328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226549.P298496889903014328

/-! ## A226549.P10193193972115984258

`A226545(eq[6, A025581(n)])`
-/

namespace A226549.P10193193972115984258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226549.P10193193972115984258

/-! ## A226549.P17563538621819790574

`A226545(A027379(n+5)-4)`
-/

namespace A226549.P17563538621819790574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A027379 (n + 5) - 4).toNat

end

end A226549.P17563538621819790574

/-! ## A226549.P17806836951971777439

`A226545(A000217(n+7)-7)`
-/

namespace A226549.P17806836951971777439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A000217 (n + 7) - 7).toNat

end

end A226549.P17806836951971777439

/-!
# A226550: Number of squares in all tilings of a 7 X n rectangle using integer-sided square tiles.

The programs for A226550, there is no canonical definition to state claims against.
-/

/-! ## A226550.P16551541428698880336

`A226545(eq[7, A002262(n)])`
-/

namespace A226550.P16551541428698880336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226550.P16551541428698880336

/-! ## A226550.P6264104103066693366

`A226545(eq[7, A025581(n)])`
-/

namespace A226550.P6264104103066693366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226550.P6264104103066693366

/-! ## A226550.P11244802352592908225

`A226545(A167499(n+6)+2)`
-/

namespace A226550.P11244802352592908225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A167499 (n + 6) + 2).toNat

end

end A226550.P11244802352592908225

/-! ## A226550.P9851072257430304008

`A226545(A000217(n+8)-8)`
-/

namespace A226550.P9851072257430304008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A000217 (n + 8) - 8).toNat

end

end A226550.P9851072257430304008

/-! ## A226550.P1900398222412389132

`A226545(2*(n+3)+A000124(n+6))`
-/

namespace A226550.P1900398222412389132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 ((2 * (n + 3) : ℤ) + A000124 (n + 6)).toNat

end

end A226550.P1900398222412389132

/-!
# A226551: Number of squares in all tilings of an 8 X n rectangle using integer-sided square tiles.

The programs for A226551, there is no canonical definition to state claims against.
-/

/-! ## A226551.P11464215983946275171

`A226545(A133263(n+8)+6)`
-/

namespace A226551.P11464215983946275171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A133263 (n + 8) + 6).toNat

end

end A226551.P11464215983946275171

/-! ## A226551.P12659664150803073892

`A226545(A000124(n+8)+7)`
-/

namespace A226551.P12659664150803073892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A000124 (n + 8) + 7).toNat

end

end A226551.P12659664150803073892

/-! ## A226551.P12701711655959121044

`A226545(A253145(n+7)+8)`
-/

namespace A226551.P12701711655959121044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A253145 (n + 7) + 8).toNat

end

end A226551.P12701711655959121044

/-! ## A226551.P13164132797672026275

`A226545(A000217(n+8)+8)`
-/

namespace A226551.P13164132797672026275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A000217 (n + 8) + 8).toNat

end

end A226551.P13164132797672026275

/-! ## A226551.P6690803279634391753

`A226545(A055998(n+8)-2*(n+4))`
-/

namespace A226551.P6690803279634391753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A055998 (n + 8) - (2 * (n + 4) : ℤ)).toNat

end

end A226551.P6690803279634391753

/-!
# A226552: Number of squares in all tilings of a 9 X n rectangle using integer-sided square tiles.

The programs for A226552, there is no canonical definition to state claims against.
-/

/-! ## A226552.P11055791984083592222

`A226545(eq[9, A002262(n)])`
-/

namespace A226552.P11055791984083592222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226552.P11055791984083592222

/-! ## A226552.P6111165691143313943

`A226545(eq[9, A025581(n)])`
-/

namespace A226552.P6111165691143313943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226552.P6111165691143313943

/-! ## A226552.P10158490332288941666

`A226545(eq[9, A144328(n+1)])`
-/

namespace A226552.P10158490332288941666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226552.P10158490332288941666

/-! ## A226552.P15661661526427939818

`A226545(eq[10, A002260(n+1)])`
-/

namespace A226552.P15661661526427939818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226552.P15661661526427939818

/-! ## A226552.P2611341190948973277

`A226545(eq[10, A004736(n+1)])`
-/

namespace A226552.P2611341190948973277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226552.P2611341190948973277

/-!
# A226553: Number of squares in all tilings of a 10 X n rectangle using integer-sided square tiles.

The programs for A226553, there is no canonical definition to state claims against.
-/

/-! ## A226553.P13134797008386685422

`A226545(eq[10, A002262(n)])`
-/

namespace A226553.P13134797008386685422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226553.P13134797008386685422

/-! ## A226553.P8019626463604392420

`A226545(eq[10, A025581(n)])`
-/

namespace A226553.P8019626463604392420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226553.P8019626463604392420

/-! ## A226553.P13246902777817721685

`A226545(eq[10, A144328(n+1)])`
-/

namespace A226553.P13246902777817721685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226553.P13246902777817721685

/-! ## A226553.P17549559209393325640

`A226545(eq[11, A002260(n+1)])`
-/

namespace A226553.P17549559209393325640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226553.P17549559209393325640

/-! ## A226553.P4945973756773356201

`A226545(eq[11, A004736(n+1)])`
-/

namespace A226553.P4945973756773356201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226553.P4945973756773356201

/-!
# A226554: Number of squares in all tilings of an n X n square using integer-sided square tiles.

The programs for A226554, there is no canonical definition to state claims against.
-/

/-! ## A226554.P3334975741659243917

`A226545(∑[4*n])`
-/

namespace A226554.P3334975741659243917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226554.P3334975741659243917

/-! ## A226554.P5926918783724803339

`record[A226545(A266725(n))]`
-/

namespace A226554.P5926918783724803339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226545 (A266725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226554.P5926918783724803339

/-! ## A226554.P911924297847657208

`or(char[1], A226545(A046092(n)))`
-/

namespace A226554.P911924297847657208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A226545 (A046092 n).toNat)

end

end A226554.P911924297847657208

/-! ## A226554.P16947491677254261013

`record[A214505(n)*A226545(n)]`
-/

namespace A226554.P16947491677254261013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A226545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226554.P16947491677254261013

/-! ## A226554.P12235329757593576350

`record[gcd(A037012(n), A226545(n))]`
-/

namespace A226554.P12235329757593576350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A226545 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226554.P12235329757593576350

/-!
# A226555: Numerators of row sums of the triangular enumeration of rational numbers A226314(n,k) / A054531(n,k), 1 <= k <= n.

The programs for A226555, the canonical program `A226555.P5954910614484465652` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226555 has offset 1).

The definition of A226555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226555.P5954910614484465652

`(A344598(n+1)+1)/gcd(2, n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226555

/-- `(A344598(n+1)+1)/gcd(2, n)` -/
def P5954910614484465652.Spec : Prop :=
  ∀ n, P5954910614484465652.a n = (A226555 (n + 1) : ℚ)

end A226555

/-! ## A226555.P9894513028478488113

`A145051(A344598(n+1))`
-/

namespace A226555.P9894513028478488113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (A344598 (n + 1)).toNat

end

end A226555.P9894513028478488113

namespace A226555

/-- `A145051(A344598(n+1))` -/
def P9894513028478488113.Spec : Prop :=
  ∀ n, P9894513028478488113.a n = A226555 (n + 1)

end A226555

/-! ## A226555.P7534432393872780801

`A026741(A344598(n+1)+1)`
-/

namespace A226555.P7534432393872780801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A344598 (n + 1) + 1).toNat

end

end A226555.P7534432393872780801

namespace A226555

/-- `A026741(A344598(n+1)+1)` -/
def P7534432393872780801.Spec : Prop :=
  ∀ n, P7534432393872780801.a n = A226555 (n + 1)

end A226555

/-! ## A226555.P17214123838220246613

`A062828(A344598(n+1)+1)`
-/

namespace A226555.P17214123838220246613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062828 (A344598 (n + 1) + 1).toNat

end

end A226555.P17214123838220246613

namespace A226555

/-- `A062828(A344598(n+1)+1)` -/
def P17214123838220246613.Spec : Prop :=
  ∀ n, P17214123838220246613.a n = A226555 (n + 1)

end A226555

/-! ## A226555.P7955170348497109951

`A029579(xor(1, A344598(n+1)))`
-/

namespace A226555.P7955170348497109951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.xor 1 (A344598 (n + 1))).toNat

end

end A226555.P7955170348497109951

namespace A226555

/-- `A029579(xor(1, A344598(n+1)))` -/
def P7955170348497109951.Spec : Prop :=
  ∀ n, P7955170348497109951.a n = A226555 (n + 1)

end A226555

/-! ## A226555.P13342806183756932065

`A026741(2*A018804(n+1)-n)`
-/

namespace A226555.P13342806183756932065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A018804 (n + 1) - (n : ℤ)).toNat

end

end A226555.P13342806183756932065

namespace A226555

/-- `A026741(2*A018804(n+1)-n)` -/
def P13342806183756932065.Spec : Prop :=
  ∀ n, P13342806183756932065.a n = A226555 (n + 1)

end A226555

/-! ## A226555.P13277165567670406371

`A026741(2*A006579(n+1)+n+2)`
-/

namespace A226555.P13277165567670406371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A006579 (n + 1) + (n + 2 : ℤ)).toNat

end

end A226555.P13277165567670406371

namespace A226555

/-- `A026741(2*A006579(n+1)+n+2)` -/
def P13277165567670406371.Spec : Prop :=
  ∀ n, P13277165567670406371.a n = A226555 (n + 1)

end A226555

/-! ## A226555.P1998783524788930941

`A026741(A018804(n+1)+A018804(n+1)-n)`
-/

namespace A226555.P1998783524788930941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A018804 (n + 1) + (A018804 (n + 1) - (n : ℤ))).toNat

end

end A226555.P1998783524788930941

namespace A226555

/-- `A026741(A018804(n+1)+A018804(n+1)-n)` -/
def P1998783524788930941.Spec : Prop :=
  ∀ n, P1998783524788930941.a n = A226555 (n + 1)

end A226555

/-! ## A226555.P12420033737917059113

`A001281(lcm(2, A344598(n+1)+1))`
-/

namespace A226555.P12420033737917059113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A344598 (n + 1) + 1))

end

end A226555.P12420033737917059113

namespace A226555

/-- `A001281(lcm(2, A344598(n+1)+1))` -/
def P12420033737917059113.Spec : Prop :=
  ∀ n, P12420033737917059113.a n = A226555 (n + 1)

end A226555

/-!
# A226556: Expansion of f(x, -x^4) / f(-x^2, x^3) in powers of x where f(,) is Ramanujan's general theta function.

The programs for A226556, there is no canonical definition to state claims against.
-/

/-! ## A226556.P11461661331178525465

`(-1)^n*A007325(n)`
-/

namespace A226556.P11461661331178525465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007325 n

end

end A226556.P11461661331178525465

/-! ## A226556.P9432920452955874983

`A007325(n)*A033999(n)`
-/

namespace A226556.P9432920452955874983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007325 n * A033999 n

end

end A226556.P9432920452955874983

/-! ## A226556.P16921910475603150527

`A007325(n)*A009001(2*n)`
-/

namespace A226556.P16921910475603150527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007325 n * A009001 (2 * n)

end

end A226556.P16921910475603150527

/-! ## A226556.P5581063000955069166

`A007325(n)/A010815(Δ[or(1, n)])`
-/

namespace A226556.P5581063000955069166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007325 n : ℚ) / (A010815 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A226556.P5581063000955069166

/-! ## A226556.P1862123855589505467

`A007325(n)*A319993(A007947(n+1))`
-/

namespace A226556.P1862123855589505467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007325 n * A319993 (A007947 (n + 1)).toNat

end

end A226556.P1862123855589505467

/-! ## A226556.P635515016440421133

`A007325(n)*A112299(2*n+1)`
-/

namespace A226556.P635515016440421133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007325 n * A112299 (2 * n + 1)

end

end A226556.P635515016440421133

/-! ## A226556.P6091895979240412780

`A033999(n)*A286509(A046691(n)+2)`
-/

namespace A226556.P6091895979240412780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A286509 (A046691 n + 2).toNat

end

end A226556.P6091895979240412780

/-!
# A226557: a(n) = |A020497(n) - prime(n+4) + 10|.

The programs for A226557, there is no canonical definition to state claims against.
-/

/-! ## A226557.P2395432276957509700

`abs(A020497(n+1)-A172407(n+1))`
-/

namespace A226557.P2395432276957509700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020497 (n + 1) - A172407 (n + 1)|

end

end A226557.P2395432276957509700

/-! ## A226557.P13021715108067676463

`abs(A008407(n+1)+1-A172407(n+1))`
-/

namespace A226557.P13021715108067676463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008407 (n + 1) + (1 - A172407 (n + 1))|

end

end A226557.P13021715108067676463

/-! ## A226557.P11930499844437011413

`abs(A008407(n+1)-A004442(A172407(n+1)))`
-/

namespace A226557.P11930499844437011413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008407 (n + 1) - A004442 (A172407 (n + 1)).toNat|

end

end A226557.P11930499844437011413

/-!
# A226559: Expansion of f(-x^1, -x^7) * f(-x^2, -x^6) / (f(-x^3, -x^5) * f(-x^4, -x^4)) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A226559, there is no canonical definition to state claims against.
-/

/-! ## A226559.P1793305229442591427

`A230534(2*n+1)`
-/

namespace A226559.P1793305229442591427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230534 (2 * n + 1)

end

end A226559.P1793305229442591427

/-! ## A226559.P9694004935575454693

`-A092869(2*n+1)`
-/

namespace A226559.P9694004935575454693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A092869 (2 * n + 1)

end

end A226559.P9694004935575454693

/-! ## A226559.P9370486978336299886

`A000007(n+1)-A092869(2*n+1)`
-/

namespace A226559.P9370486978336299886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A092869 (2 * n + 1)

end

end A226559.P9370486978336299886

/-! ## A226559.P16623172186470672341

`A000035(2*n)-A092869(2*n+1)`
-/

namespace A226559.P16623172186470672341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A092869 (2 * n + 1)

end

end A226559.P16623172186470672341

/-! ## A226559.P816741552633863446

`A127391(2*n)-A092869(2*n+1)`
-/

namespace A226559.P816741552633863446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127391 (2 * n) - A092869 (2 * n + 1)

end

end A226559.P816741552633863446

/-! ## A226559.P3380138079082072892

`A035457(2*n+1)-A092869(2*n+1)`
-/

namespace A226559.P3380138079082072892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n + 1) - A092869 (2 * n + 1)

end

end A226559.P3380138079082072892

/-! ## A226559.P16811213084551904257

`A230535(4*n+3)`
-/

namespace A226559.P16811213084551904257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230535 (4 * n + 3)

end

end A226559.P16811213084551904257

/-!
# A226560: exp( Sum_{n>=1} A226561(n)*x^n/n ), where A226561(n) = Sum_{d|n} d^n*phi(d).

The programs for A226560, there is no canonical definition to state claims against.
-/

/-! ## A226560.P10904143186390381850

`∑{d}[(n*a(n-1))², gcd(n, #)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A226560.P10904143186390381850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (n * f1 (n - 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A226560.P10904143186390381850

/-!
# A226561: a(n) = Sum_{d|n} d^n * phi(d), where phi(n) is the Euler totient function A000010(n).

The programs for A226561, there is no canonical definition to state claims against.
-/

/-! ## A226561.P7529610900374289283

`∑{d}[n+1, #^(n+1)*A000010(#)]`
-/

namespace A226561.P7529610900374289283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ (n + 1) : ℤ) * A000010 d

end

end A226561.P7529610900374289283

/-!
# A226562: Numbers which are the sum of two squared primes in exactly three ways (ignoring order).

The programs for A226562, there is no canonical definition to state claims against.
-/

/-! ## A226562.P6455475508845792323

`A248712(A248719(n+2)^A248764(n+1))`
-/

namespace A226562.P6455475508845792323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248712 (SequenceMachineLib.roundAway ((A248719 (n + 2) : ℚ) ^ (A248764 (n + 1) : ℤ))).toNat

end

end A226562.P6455475508845792323

/-!
# A226563: Numbers k such that sum(d|k, sigma(d)^2) is a multiple of k.

The programs for A226563, there is no canonical definition to state claims against.
-/

/-! ## A226563.P6638445142934447245

`A018418(comp[xor(n, 2*n)])`
-/

namespace A226563.P6638445142934447245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A226563.P6638445142934447245

/-!
# A226567: Numbers k such that 2*k+1 is neither a square nor a prime.

The programs for A226567, the canonical program `A226567.P14814399466170142573` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226567 has offset 1).

The definition of A226567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226567.P17716554742094876925

`comp[A326583(n+1)]`
-/

namespace A226567.P17716554742094876925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226567.P17716554742094876925

namespace A226567

/-- `comp[A326583(n+1)]` -/
def P17716554742094876925.Spec : Prop :=
  ∀ n, (P17716554742094876925.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P14806408259977051134

`(A082686(n+1)-1)/2`
-/

namespace A226567.P14806408259977051134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082686 (n + 1) - 1 : ℚ) / 2

end

end A226567.P14806408259977051134

namespace A226567

/-- `(A082686(n+1)-1)/2` -/
def P14806408259977051134.Spec : Prop :=
  ∀ n, P14806408259977051134.a n = (A226567 (n + 1) : ℚ)

theorem P14806408259977051134.correct : P14806408259977051134.Spec := by
  intro n
  simp only [A226567, Nat.add_sub_cancel, A226567.P14806408259977051134.a, A226567.P14814399466170142573.f1, A226567.P14814399466170142573.f2, A226567.P14814399466170142573.a, A003982, A003982.P6136202056268562101.a, A082686, A082686.P7085759963606305548.a, A101264, A101264.P18132826973570150985.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226567

/-! ## A226567.P14814399466170142573

`eq[A003982(n), A101264(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226567

/-- `eq[A003982(n), A101264(n)]` -/
def P14814399466170142573.Spec : Prop :=
  ∀ n, (P14814399466170142573.a n : ℤ) = A226567 (n + 1)

theorem P14814399466170142573.correct : P14814399466170142573.Spec := by
  intro n
  simp only [A226567, Nat.add_sub_cancel]

end A226567

/-! ## A226567.P787124163610061205

`lt[1, A053186(A278223(n+1))]`
-/

namespace A226567.P787124163610061205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A278223 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226567.P787124163610061205

namespace A226567

/-- `lt[1, A053186(A278223(n+1))]` -/
def P787124163610061205.Spec : Prop :=
  ∀ n, (P787124163610061205.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P8461513492997131411

`lt[0, A285069(A000005(2*n+1))]`
-/

namespace A226567.P8461513492997131411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285069 (A000005 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226567.P8461513492997131411

namespace A226567

/-- `lt[0, A285069(A000005(2*n+1))]` -/
def P8461513492997131411.Spec : Prop :=
  ∀ n, (P8461513492997131411.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P4731691115553877975

`lt[20, A001938(A000005(n+1+n))]`
-/

namespace A226567.P4731691115553877975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001938 (A000005 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226567.P4731691115553877975

namespace A226567

/-- `lt[20, A001938(A000005(n+1+n))]` -/
def P4731691115553877975.Spec : Prop :=
  ∀ n, (P4731691115553877975.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P9978281401480573070

`lt[2, A002033(A000005(2*n+1)+1)]`
-/

namespace A226567.P9978281401480573070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A000005 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226567.P9978281401480573070

namespace A226567

/-- `lt[2, A002033(A000005(2*n+1)+1)]` -/
def P9978281401480573070.Spec : Prop :=
  ∀ n, (P9978281401480573070.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P2082004496962747786

`lt[5, A085750(A000005(2*n+1)+1)]`
-/

namespace A226567.P2082004496962747786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (A000005 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226567.P2082004496962747786

namespace A226567

/-- `lt[5, A085750(A000005(2*n+1)+1)]` -/
def P2082004496962747786.Spec : Prop :=
  ∀ n, (P2082004496962747786.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P2896609190118148603

`lt[3, A109771(A000005(2*n+1)+1)/4]`
-/

namespace A226567.P2896609190118148603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109771 (A000005 (2 * n + 1) + 1).toNat : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A226567.P2896609190118148603

namespace A226567

/-- `lt[3, A109771(A000005(2*n+1)+1)/4]` -/
def P2896609190118148603.Spec : Prop :=
  ∀ n, (P2896609190118148603.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P8527987728523118202

`eq[A101264(n), A286100(n+1)]`
-/

namespace A226567.P8527987728523118202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P8527987728523118202

namespace A226567

/-- `eq[A101264(n), A286100(n+1)]` -/
def P8527987728523118202.Spec : Prop :=
  ∀ n, (P8527987728523118202.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P6238752405055435321

`lt[4, A320098(A320111(2*n+1))]`
-/

namespace A226567.P6238752405055435321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320098 (A320111 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226567.P6238752405055435321

namespace A226567

/-- `lt[4, A320098(A320111(2*n+1))]` -/
def P6238752405055435321.Spec : Prop :=
  ∀ n, (P6238752405055435321.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P4757802803337000978

`eq[A003982(n), A211173(n)]`
-/

namespace A226567.P4757802803337000978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P4757802803337000978

namespace A226567

/-- `eq[A003982(n), A211173(n)]` -/
def P4757802803337000978.Spec : Prop :=
  ∀ n, (P4757802803337000978.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P16348807376751043269

`eq[A003982(n), A286680(n)]`
-/

namespace A226567.P16348807376751043269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P16348807376751043269

namespace A226567

/-- `eq[A003982(n), A286680(n)]` -/
def P16348807376751043269.Spec : Prop :=
  ∀ n, (P16348807376751043269.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P16876952396678482704

`eq[A211173(n), A286100(n+1)]`
-/

namespace A226567.P16876952396678482704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P16876952396678482704

namespace A226567

/-- `eq[A211173(n), A286100(n+1)]` -/
def P16876952396678482704.Spec : Prop :=
  ∀ n, (P16876952396678482704.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P15318325318822386292

`eq[A286100(n+1), A286680(n)]`
-/

namespace A226567.P15318325318822386292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P15318325318822386292

namespace A226567

/-- `eq[A286100(n+1), A286680(n)]` -/
def P15318325318822386292.Spec : Prop :=
  ∀ n, (P15318325318822386292.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P1608862761997744682

`lt[3*n, ∏{d}[2*n+1, -#]]`
-/

namespace A226567.P1608862761997744682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (-(d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226567.P1608862761997744682

namespace A226567

/-- `lt[3*n, ∏{d}[2*n+1, -#]]` -/
def P1608862761997744682.Spec : Prop :=
  ∀ n, (P1608862761997744682.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P172065595568336421

`eq[A003982(n), A112448(n)]`
-/

namespace A226567.P172065595568336421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P172065595568336421

namespace A226567

/-- `eq[A003982(n), A112448(n)]` -/
def P172065595568336421.Spec : Prop :=
  ∀ n, (P172065595568336421.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P13897075725175127691

`eq[A003982(n), A085090(n+1)]`
-/

namespace A226567.P13897075725175127691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P13897075725175127691

namespace A226567

/-- `eq[A003982(n), A085090(n+1)]` -/
def P13897075725175127691.Spec : Prop :=
  ∀ n, (P13897075725175127691.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P415443764337694292

`eq[A003982(n), A283362(n+1)]`
-/

namespace A226567.P415443764337694292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P415443764337694292

namespace A226567

/-- `eq[A003982(n), A283362(n+1)]` -/
def P415443764337694292.Spec : Prop :=
  ∀ n, (P415443764337694292.a n : ℤ) = A226567 (n + 1)

end A226567

/-! ## A226567.P17860865200768193561

`eq[A112448(n), A286100(n+1)]`
-/

namespace A226567.P17860865200768193561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226567.P17860865200768193561

namespace A226567

/-- `eq[A112448(n), A286100(n+1)]` -/
def P17860865200768193561.Spec : Prop :=
  ∀ n, (P17860865200768193561.a n : ℤ) = A226567 (n + 1)

end A226567

/-!
# A226569: Inverse permutation to A226532.

The programs for A226569, there is no canonical definition to state claims against.
-/

/-! ## A226569.P13135565761485925053

`A053585(n+1)*A334990(n+1)`
-/

namespace A226569.P13135565761485925053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1) * A334990 (n + 1)

end

end A226569.P13135565761485925053

/-! ## A226569.P2173703332812067690

`lcm(A053585(A000027(n+1)), A334990(n+1))`
-/

namespace A226569.P2173703332812067690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053585 (A000027 (n + 1)).toNat) (A334990 (n + 1))

end

end A226569.P2173703332812067690

/-! ## A226569.P15417637967579379491

`lcm(A334990(n+1)%A017005(n), A053585(n+1))`
-/

namespace A226569.P15417637967579379491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A334990 (n + 1)) (A017005 n)) (A053585 (n + 1))

end

end A226569.P15417637967579379491

/-! ## A226569.P17613785440134299032

`A335049(n+1)/A096815(A335095(2*n))`
-/

namespace A226569.P17613785440134299032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335049 (n + 1) : ℚ) / (A096815 (A335095 (2 * n)).toNat : ℚ)

end

end A226569.P17613785440134299032

/-!
# A226570: a(n) = Sum_{k=1..n} (k+1)! mod n.

The programs for A226570, there is no canonical definition to state claims against.
-/

/-! ## A226570.P10213379658734750824

`(A067462(n+1)+n)%(n+1)`
-/

namespace A226570.P10213379658734750824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067462 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A226570.P10213379658734750824

/-! ## A226570.P12652740180783181352

`(A049782(n+1)+A005843(n))%(n+1)`
-/

namespace A226570.P12652740180783181352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049782 (n + 1) + A005843 n) (n + 1 : ℤ)

end

end A226570.P12652740180783181352

/-! ## A226570.P4803662983697757058

`(A135497(n)+A049782(n+1))%(n+1)`
-/

namespace A226570.P4803662983697757058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135497 n + A049782 (n + 1)) (n + 1 : ℤ)

end

end A226570.P4803662983697757058

/-! ## A226570.P926036002566680037

`(A049782(n+1)+record[A114112(n+1)])%(n+1)`
-/

namespace A226570.P926036002566680037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049782 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A226570.P926036002566680037

/-! ## A226570.P3371475224541827434

`(2*n-A216369(2*(n+1)))%(n+1)`
-/

namespace A226570.P3371475224541827434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - A216369 (2 * (n + 1))) (n + 1 : ℤ)

end

end A226570.P3371475224541827434

/-! ## A226570.P1159901994198849661

`A025581(A000217(n)-A067462(n+1))`
-/

namespace A226570.P1159901994198849661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000217 n - A067462 (n + 1)).toNat

end

end A226570.P1159901994198849661

/-! ## A226570.P16736824245599553313

`A025581(A000124(n+1)-A049782(2*(n+1)))`
-/

namespace A226570.P16736824245599553313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000124 (n + 1) - A049782 (2 * (n + 1))).toNat

end

end A226570.P16736824245599553313

/-! ## A226570.P2396764637194463114

`(∑[n!]-2)%(n+1)`
-/

namespace A226570.P2396764637194463114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2) (n + 1 : ℤ)

end

end A226570.P2396764637194463114

/-! ## A226570.P11744684977783451776

`∑[or(1, n!)]%(n+1)`
-/

namespace A226570.P11744684977783451776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.factorial n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A226570.P11744684977783451776

/-! ## A226570.P15614206072731557297

`A036782(n)%(n+1)`
-/

namespace A226570.P15614206072731557297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036782 n) (n + 1 : ℤ)

end

end A226570.P15614206072731557297

/-!
# A226575: Ordered excesses of internal lattice point counts of scaled up primitive Pythagorean triangles (PPT's) (see comments).

The programs for A226575, there is no canonical definition to state claims against.
-/

/-! ## A226575.P11729507596602346283

`A008904(A006880(n))*A056371(n+2)`
-/

namespace A226575.P11729507596602346283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008904 (A006880 n).toNat * A056371 (n + 2)

end

end A226575.P11729507596602346283

/-! ## A226575.P5450866860230260730

`A001223(A185891(n+1))*A359682(3*n)`
-/

namespace A226575.P5450866860230260730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A185891 (n + 1)).toNat * A359682 (3 * n)

end

end A226575.P5450866860230260730

/-!
# A226576: Smallest number of integer-sided squares needed to tile a 3 X n rectangle.

The programs for A226576, the canonical program `A226576.P11703242237510139500` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226576 has offset 0).

The definition of A226576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226576.P11703242237510139500

`1+a(n-3)` with `a(0)=0, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226576

/-- `1+a(n-3)` -/
def P11703242237510139500.Spec : Prop :=
  ∀ n, (P11703242237510139500.a n : ℤ) = A226576 n

theorem P11703242237510139500.correct : P11703242237510139500.Spec := by
  intro n
  simp only [A226576]

end A226576

/-! ## A226576.P6185005068748069350

`3*floor((n+2)/3)-2*floor(n/3)`
-/

namespace A226576.P6185005068748069350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n + 2 : ℚ) / 3⌋ - 2 * ⌊(n : ℚ) / 3⌋

end

end A226576.P6185005068748069350

namespace A226576

/-- `3*floor((n+2)/3)-2*floor(n/3)` -/
def P6185005068748069350.Spec : Prop :=
  ∀ n, P6185005068748069350.a n = A226576 n

end A226576

/-! ## A226576.P1221549328640987843

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=3, a(2)=0, a(3)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A226576.P1221549328640987843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0, -2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226576.P1221549328640987843

namespace A226576

/-- `∑[floor(a(n-3))]` -/
def P1221549328640987843.Spec : Prop :=
  ∀ n, P1221549328640987843.a n = A226576 n

end A226576

/-! ## A226576.P9707376188881156064

`abs(xor(-1, a(n-3)))` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A226576.P9707376188881156064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  |Int.xor (-1) (a (n - 3))|

end

end A226576.P9707376188881156064

namespace A226576

/-- `abs(xor(-1, a(n-3)))` -/
def P9707376188881156064.Spec : Prop :=
  ∀ n, P9707376188881156064.a n = A226576 n

end A226576

/-! ## A226576.P4005280810733734743

`-xor(-1, a(n-3))` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A226576.P4005280810733734743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  -Int.xor (-1) (a (n - 3))

end

end A226576.P4005280810733734743

namespace A226576

/-- `-xor(-1, a(n-3))` -/
def P4005280810733734743.Spec : Prop :=
  ∀ n, P4005280810733734743.a n = A226576 n

end A226576

/-! ## A226576.P16300344814166007833

`(dr(Δ[n^6])+n-1)/3`
-/

namespace A226576.P16300344814166007833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digitalRoot ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) + ((n : ℤ) - 1) : ℚ) / 3

end

end A226576.P16300344814166007833

namespace A226576

/-- `(dr(Δ[n^6])+n-1)/3` -/
def P16300344814166007833.Spec : Prop :=
  ∀ n, P16300344814166007833.a n = (A226576 n : ℚ)

end A226576

/-! ## A226576.P11548489924250099300

`ogf((3x-2x^3)/(1-x-x^3+x^4))`
-/

namespace A226576.P11548489924250099300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, -2] [1, -1, 0, -1, 1] n

end

end A226576.P11548489924250099300

namespace A226576

/-- `ogf((3x-2x^3)/(1-x-x^3+x^4))` -/
def P11548489924250099300.Spec : Prop :=
  ∀ n, P11548489924250099300.a n = A226576 n

end A226576

/-! ## A226576.P11063046344958474735

`∑[1-a(n-1)-a(n-2)]` with `a(0)=0, a(1)=3, a(2)=0`
-/

namespace A226576.P11063046344958474735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 0] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226576.P11063046344958474735

namespace A226576

/-- `∑[1-a(n-1)-a(n-2)]` -/
def P11063046344958474735.Spec : Prop :=
  ∀ n, P11063046344958474735.a n = A226576 n

end A226576

/-! ## A226576.P17524277797587068316

`A027656(2*a(n-3))` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A226576.P17524277797587068316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  A027656 (2 * a (n - 3)).toNat

end

end A226576.P17524277797587068316

namespace A226576

/-- `A027656(2*a(n-3))` -/
def P17524277797587068316.Spec : Prop :=
  ∀ n, P17524277797587068316.a n = A226576 n

end A226576

/-! ## A226576.P2311453467966484232

`A028242(2*a(n-3))` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A226576.P2311453467966484232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  A028242 (2 * a (n - 3)).toNat

end

end A226576.P2311453467966484232

namespace A226576

/-- `A028242(2*a(n-3))` -/
def P2311453467966484232.Spec : Prop :=
  ∀ n, P2311453467966484232.a n = A226576 n

end A226576

/-! ## A226576.P1127466233703308774

`A097065(2*a(n-3))` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A226576.P1127466233703308774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  A097065 (2 * a (n - 3)).toNat

end

end A226576.P1127466233703308774

namespace A226576

/-- `A097065(2*a(n-3))` -/
def P1127466233703308774.Spec : Prop :=
  ∀ n, P1127466233703308774.a n = A226576 n

end A226576

/-! ## A226576.P6785563026876335994

`A110514(2*a(n-3))` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A226576.P6785563026876335994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n a =>
  A110514 (2 * a (n - 3)).toNat

end

end A226576.P6785563026876335994

namespace A226576

/-- `A110514(2*a(n-3))` -/
def P6785563026876335994.Spec : Prop :=
  ∀ n, P6785563026876335994.a n = A226576 n

end A226576

/-! ## A226576.P10313661389827473651

`A267182(A066481(n+3))`
-/

namespace A226576.P10313661389827473651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (A066481 (n + 3)).toNat

end

end A226576.P10313661389827473651

namespace A226576

/-- `A267182(A066481(n+3))` -/
def P10313661389827473651.Spec : Prop :=
  ∀ n, P10313661389827473651.a n = A226576 n

end A226576

/-! ## A226576.P11535980407087999045

`A084964(A322042(n+2))`
-/

namespace A226576.P11535980407087999045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (A322042 (n + 2)).toNat

end

end A226576.P11535980407087999045

namespace A226576

/-- `A084964(A322042(n+2))` -/
def P11535980407087999045.Spec : Prop :=
  ∀ n, P11535980407087999045.a n = A226576 n

end A226576

/-! ## A226576.P6594326588072313350

`A171088(A113655(n+2))`
-/

namespace A226576.P6594326588072313350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 (A113655 (n + 2)).toNat

end

end A226576.P6594326588072313350

namespace A226576

/-- `A171088(A113655(n+2))` -/
def P6594326588072313350.Spec : Prop :=
  ∀ n, P6594326588072313350.a n = A226576 n

end A226576

/-! ## A226576.P9310248577588828920

`A171088(A330396(n+1)+1)`
-/

namespace A226576.P9310248577588828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171088 (A330396 (n + 1) + 1).toNat

end

end A226576.P9310248577588828920

namespace A226576

/-- `A171088(A330396(n+1)+1)` -/
def P9310248577588828920.Spec : Prop :=
  ∀ n, P9310248577588828920.a n = A226576 n

end A226576

/-! ## A226576.P4958902333413343002

`A047878(A330396(A011655(n+1)+n+1))`
-/

namespace A226576.P4958902333413343002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A330396 (A011655 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A226576.P4958902333413343002

namespace A226576

/-- `A047878(A330396(A011655(n+1)+n+1))` -/
def P4958902333413343002.Spec : Prop :=
  ∀ n, P4958902333413343002.a n = A226576 n

end A226576

/-! ## A226576.P5174094338206038334

`A226579(2*n)`
-/

namespace A226576.P5174094338206038334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226579 (2 * n)

end

end A226576.P5174094338206038334

namespace A226576

/-- `A226579(2*n)` -/
def P5174094338206038334.Spec : Prop :=
  ∀ n, P5174094338206038334.a n = A226576 n

end A226576

/-!
# A226577: Smallest number of integer-sided squares needed to tile a 4 X n rectangle.

The programs for A226577, the canonical program `A226577.P13880256772740066255` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226577 has offset 0).

The definition of A226577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226577.P13880256772740066255

`1+a(n-4)` with `a(0)=0, a(1)=4, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226577

/-- `1+a(n-4)` -/
def P13880256772740066255.Spec : Prop :=
  ∀ n, (P13880256772740066255.a n : ℤ) = A226577 n

theorem P13880256772740066255.correct : P13880256772740066255.Spec := by
  intro n
  simp only [A226577]

end A226577

/-! ## A226577.P14832729365941059206

`∑[floor(a(n-4))]` with `a(0)=0, a(1)=4, a(2)=-2, a(3)=2, a(4)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A226577.P14832729365941059206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, -2, 2, -3] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226577.P14832729365941059206

namespace A226577

/-- `∑[floor(a(n-4))]` -/
def P14832729365941059206.Spec : Prop :=
  ∀ n, P14832729365941059206.a n = A226577 n

end A226577

/-! ## A226577.P8271424599871409251

`a(n-1)-(a(n-5)-a(n-4))` with `a(0)=0, a(1)=4, a(2)=2, a(3)=4, a(4)=1`
-/

namespace A226577.P8271424599871409251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 2, 4, 1] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 4))

end

end A226577.P8271424599871409251

namespace A226577

/-- `a(n-1)-(a(n-5)-a(n-4))` -/
def P8271424599871409251.Spec : Prop :=
  ∀ n, P8271424599871409251.a n = A226577 n

end A226577

/-! ## A226577.P9715670796557109467

`A002265(n)+log2(A177499(n))`
-/

namespace A226577.P9715670796557109467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002265 n : ℝ) + Real.logb 2 (A177499 n : ℝ)

end

end A226577.P9715670796557109467

namespace A226577

/-- `A002265(n)+log2(A177499(n))` -/
def P9715670796557109467.Spec : Prop :=
  ∀ n, P9715670796557109467.a n = (A226577 n : ℝ)

end A226577

/-! ## A226577.P3980022905447956126

`A168284(n+1)-A055264(n)`
-/

namespace A226577.P3980022905447956126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (n + 1) - A055264 n

end

end A226577.P3980022905447956126

namespace A226577

/-- `A168284(n+1)-A055264(n)` -/
def P3980022905447956126.Spec : Prop :=
  ∀ n, P3980022905447956126.a n = A226577 n

end A226577

/-! ## A226577.P17048755716068112241

`A168199(n+1)-A160186(n)`
-/

namespace A226577.P17048755716068112241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168199 (n + 1) - A160186 n

end

end A226577.P17048755716068112241

namespace A226577

/-- `A168199(n+1)-A160186(n)` -/
def P17048755716068112241.Spec : Prop :=
  ∀ n, P17048755716068112241.a n = A226577 n

end A226577

/-! ## A226577.P13640499553132717716

`A056991(A163980(n+1)-n)-A163980(n+1)`
-/

namespace A226577.P13640499553132717716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A163980 (n + 1) - (n : ℤ)).toNat - A163980 (n + 1)

end

end A226577.P13640499553132717716

namespace A226577

/-- `A056991(A163980(n+1)-n)-A163980(n+1)` -/
def P13640499553132717716.Spec : Prop :=
  ∀ n, P13640499553132717716.a n = A226577 n

end A226577

/-! ## A226577.P18428335320070139628

`A246552(n+1)+3*n%2`
-/

namespace A226577.P18428335320070139628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (n + 1) + ((3 * (n % 2) : ℕ) : ℤ)

end

end A226577.P18428335320070139628

namespace A226577

/-- `A246552(n+1)+3*n%2` -/
def P18428335320070139628.Spec : Prop :=
  ∀ n, P18428335320070139628.a n = A226577 n

end A226577

/-! ## A226577.P13190583680717212121

`A059169(n+2)+4-gcd(4, n)`
-/

namespace A226577.P13190583680717212121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 2) + (4 - (Nat.gcd 4 n : ℤ))

end

end A226577.P13190583680717212121

namespace A226577

/-- `A059169(n+2)+4-gcd(4, n)` -/
def P13190583680717212121.Spec : Prop :=
  ∀ n, P13190583680717212121.a n = A226577 n

end A226577

/-! ## A226577.P679101133816373822

`A002265(n+3)+A176895(n)-1`
-/

namespace A226577.P679101133816373822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 3) + (A176895 n - 1)

end

end A226577.P679101133816373822

namespace A226577

/-- `A002265(n+3)+A176895(n)-1` -/
def P679101133816373822.Spec : Prop :=
  ∀ n, P679101133816373822.a n = A226577 n

end A226577

/-! ## A226577.P4318061089066864451

`A226581(2*n)`
-/

namespace A226577.P4318061089066864451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226581 (2 * n)

end

end A226577.P4318061089066864451

namespace A226577

/-- `A226581(2*n)` -/
def P4318061089066864451.Spec : Prop :=
  ∀ n, P4318061089066864451.a n = A226577 n

end A226577

/-! ## A226577.P539331097669445857

`A226581(A008602(n)/2)-n`
-/

namespace A226577.P539331097669445857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226581 (SequenceMachineLib.roundAway ((A008602 n : ℚ) / 2)).toNat - (n : ℤ)

end

end A226577.P539331097669445857

namespace A226577

/-- `A226581(A008602(n)/2)-n` -/
def P539331097669445857.Spec : Prop :=
  ∀ n, P539331097669445857.a n = A226577 n

end A226577

/-! ## A226577.P13749584577094205294

`A113881(A052905(n)+2)-A000038(n)`
-/

namespace A226577.P13749584577094205294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A052905 n + 2).toNat - A000038 n

end

end A226577.P13749584577094205294

namespace A226577

/-- `A113881(A052905(n)+2)-A000038(n)` -/
def P13749584577094205294.Spec : Prop :=
  ∀ n, P13749584577094205294.a n = A226577 n

end A226577

/-!
# A226578: Smallest number of integer-sided squares needed to tile a 5 X n rectangle.

The programs for A226578, the canonical program `A226578.P14544282390232198381` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226578 has offset 0).

The definition of A226578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226578.P14544282390232198381

`1+a(n-5)` with `a(0)=0, a(1)=5, a(2)=4, a(3)=4, a(4)=5, a(5)=1, a(6)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226578

/-- `1+a(n-5)` -/
def P14544282390232198381.Spec : Prop :=
  ∀ n, (P14544282390232198381.a n : ℤ) = A226578 n

theorem P14544282390232198381.correct : P14544282390232198381.Spec := by
  intro n
  simp only [A226578]

end A226578

/-! ## A226578.P8202922339374210062

`A226583(2*n)`
-/

namespace A226578.P8202922339374210062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226583 (2 * n)

end

end A226578.P8202922339374210062

namespace A226578

/-- `A226583(2*n)` -/
def P8202922339374210062.Spec : Prop :=
  ∀ n, P8202922339374210062.a n = A226578 n

end A226578

/-! ## A226578.P10222974672429462036

`A226583(n+n)%A134465(n+1)`
-/

namespace A226578.P10222974672429462036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226583 (n + n)) (A134465 (n + 1))

end

end A226578.P10222974672429462036

namespace A226578

/-- `A226583(n+n)%A134465(n+1)` -/
def P10222974672429462036.Spec : Prop :=
  ∀ n, P10222974672429462036.a n = A226578 n

end A226578

/-! ## A226578.P10281274445000034866

`A030451(A226583(n+n)+A226583(n+n))`
-/

namespace A226578.P10281274445000034866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 (A226583 (n + n) + A226583 (n + n)).toNat

end

end A226578.P10281274445000034866

namespace A226578

/-- `A030451(A226583(n+n)+A226583(n+n))` -/
def P10281274445000034866.Spec : Prop :=
  ∀ n, P10281274445000034866.a n = A226578 n

end A226578

/-! ## A226578.P12431451993482616950

`A226583(n+n)^A219158(∑[n+1])`
-/

namespace A226578.P12431451993482616950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226583 (n + n) : ℚ) ^ (A219158 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A226578.P12431451993482616950

namespace A226578

/-- `A226583(n+n)^A219158(∑[n+1])` -/
def P12431451993482616950.Spec : Prop :=
  ∀ n, P12431451993482616950.a n = (A226578 n : ℚ)

end A226578

/-! ## A226578.P5006986797394033537

`A226583(n+n)^A049834(∑[n+1])`
-/

namespace A226578.P5006986797394033537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226583 (n + n) : ℚ) ^ (A049834 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A226578.P5006986797394033537

namespace A226578

/-- `A226583(n+n)^A049834(∑[n+1])` -/
def P5006986797394033537.Spec : Prop :=
  ∀ n, P5006986797394033537.a n = (A226578 n : ℚ)

end A226578

/-!
# A226579: Smallest number of integer-sided squares needed to tile a 6 X n rectangle.

The programs for A226579, the canonical program `A226579.P1140982492837380230` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226579 has offset 0).

The definition of A226579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226579.P1140982492837380230

`1+a(n-6)` with `a(0)=0, a(1)=6, a(2)=3, a(3)=2, a(4)=3, a(5)=5, a(6)=1, a(7)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226579

/-- `1+a(n-6)` -/
def P1140982492837380230.Spec : Prop :=
  ∀ n, (P1140982492837380230.a n : ℤ) = A226579 n

theorem P1140982492837380230.correct : P1140982492837380230.Spec := by
  intro n
  simp only [A226579]

end A226579

/-! ## A226579.P11823513860899959953

`A113881(∑[n+5]+5)%(10*n+4)`
-/

namespace A226579.P11823513860899959953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (∑ j ∈ Finset.range (n + 1), f1 j + 5)) (10 * n + 4 : ℤ)

end

end A226579.P11823513860899959953

namespace A226579

/-- `A113881(∑[n+5]+5)%(10*n+4)` -/
def P11823513860899959953.Spec : Prop :=
  ∀ n, P11823513860899959953.a n = A226579 n

end A226579

/-! ## A226579.P2070179906670699233

`C(n, C(n, n²))*A113881(A052905(n+2))`
-/

namespace A226579.P2070179906670699233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) * A113881 (A052905 (n + 2)).toNat

end

end A226579.P2070179906670699233

namespace A226579

/-- `C(n, C(n, n²))*A113881(A052905(n+2))` -/
def P2070179906670699233.Spec : Prop :=
  ∀ n, P2070179906670699233.a n = A226579 n

end A226579

/-! ## A226579.P18298049274213664453

`A113881(A052905(n+2))-A000038(n)²`
-/

namespace A226579.P18298049274213664453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A052905 (n + 2)).toNat - A000038 n ^ 2

end

end A226579.P18298049274213664453

namespace A226579

/-- `A113881(A052905(n+2))-A000038(n)²` -/
def P18298049274213664453.Spec : Prop :=
  ∀ n, P18298049274213664453.a n = A226579 n

end A226579

/-! ## A226579.P1287078081055361317

`A060576(n+1)*A113881(A052905(n+2))`
-/

namespace A226579.P1287078081055361317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1) * A113881 (A052905 (n + 2)).toNat

end

end A226579.P1287078081055361317

namespace A226579

/-- `A060576(n+1)*A113881(A052905(n+2))` -/
def P1287078081055361317.Spec : Prop :=
  ∀ n, P1287078081055361317.a n = A226579 n

end A226579

/-! ## A226579.P7223223477547582945

`char[A038722(n+1)]*A113881(A052905(n+2))`
-/

namespace A226579.P7223223477547582945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A113881 (A052905 (n + 2)).toNat

end

end A226579.P7223223477547582945

namespace A226579

/-- `char[A038722(n+1)]*A113881(A052905(n+2))` -/
def P7223223477547582945.Spec : Prop :=
  ∀ n, P7223223477547582945.a n = A226579 n

end A226579

/-! ## A226579.P1712032036738345950

`char[A064413(n+1)]*A113881(A052905(n+2))`
-/

namespace A226579.P1712032036738345950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A113881 (A052905 (n + 2)).toNat

end

end A226579.P1712032036738345950

namespace A226579

/-- `char[A064413(n+1)]*A113881(A052905(n+2))` -/
def P1712032036738345950.Spec : Prop :=
  ∀ n, P1712032036738345950.a n = A226579 n

end A226579

/-! ## A226579.P15446484647460453431

`A113881(A052905(n+2))-A055999(C(2, n+2))`
-/

namespace A226579.P15446484647460453431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A052905 (n + 2)).toNat - A055999 (Nat.choose 2 (n + 2))

end

end A226579.P15446484647460453431

namespace A226579

/-- `A113881(A052905(n+2))-A055999(C(2, n+2))` -/
def P15446484647460453431.Spec : Prop :=
  ∀ n, P15446484647460453431.a n = A226579 n

end A226579

/-! ## A226579.P16022201495868478686

`A000007(C(2, n+2))*A113881(A052905(n+2))`
-/

namespace A226579.P16022201495868478686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose 2 (n + 2)) * A113881 (A052905 (n + 2)).toNat

end

end A226579.P16022201495868478686

namespace A226579

/-- `A000007(C(2, n+2))*A113881(A052905(n+2))` -/
def P16022201495868478686.Spec : Prop :=
  ∀ n, P16022201495868478686.a n = A226579 n

end A226579

/-! ## A226579.P15618500592025325318

`A000035(A030101(n))*A113881(A052905(n+2))`
-/

namespace A226579.P15618500592025325318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A030101 n).toNat * A113881 (A052905 (n + 2)).toNat

end

end A226579.P15618500592025325318

namespace A226579

/-- `A000035(A030101(n))*A113881(A052905(n+2))` -/
def P15618500592025325318.Spec : Prop :=
  ∀ n, P15618500592025325318.a n = A226579 n

end A226579

/-! ## A226579.P2023443621130496695

`A000035(A000040(n+1))*A113881(A052905(n+2))`
-/

namespace A226579.P2023443621130496695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000040 (n + 1)).toNat * A113881 (A052905 (n + 2)).toNat

end

end A226579.P2023443621130496695

namespace A226579

/-- `A000035(A000040(n+1))*A113881(A052905(n+2))` -/
def P2023443621130496695.Spec : Prop :=
  ∀ n, P2023443621130496695.a n = A226579 n

end A226579

/-! ## A226579.P14440899142432047704

`A113881(A052905(n+2))*A131836(A115349(n+1))`
-/

namespace A226579.P14440899142432047704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A052905 (n + 2)).toNat * A131836 (A115349 (n + 1)).toNat

end

end A226579.P14440899142432047704

namespace A226579

/-- `A113881(A052905(n+2))*A131836(A115349(n+1))` -/
def P14440899142432047704.Spec : Prop :=
  ∀ n, P14440899142432047704.a n = A226579 n

end A226579

/-! ## A226579.P1862361022567436486

`A113881(A052905(n+2))*A348327(A138655(n+1))`
-/

namespace A226579.P1862361022567436486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A052905 (n + 2)).toNat * A348327 (A138655 (n + 1)).toNat

end

end A226579.P1862361022567436486

namespace A226579

/-- `A113881(A052905(n+2))*A348327(A138655(n+1))` -/
def P1862361022567436486.Spec : Prop :=
  ∀ n, P1862361022567436486.a n = A226579 n

end A226579

/-! ## A226579.P16501966136844033879

`abs(A113881(A052905(n+2))%(A198845(n)-3))`
-/

namespace A226579.P16501966136844033879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A113881 (A052905 (n + 2)).toNat) (A198845 n - 3)|

end

end A226579.P16501966136844033879

namespace A226579

/-- `abs(A113881(A052905(n+2))%(A198845(n)-3))` -/
def P16501966136844033879.Spec : Prop :=
  ∀ n, P16501966136844033879.a n = A226579 n

end A226579

/-!
# A226580: Smallest number of integer-sided squares needed to tile a 7 X n rectangle.

The programs for A226580, the canonical program `A226580.P10319682433122822065` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226580 has offset 0).

The definition of A226580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226580.P10319682433122822065

`1+a(n-7)` with `a(0)=0, a(1)=7, a(2)=5, a(3)=5, a(4)=5, a(5)=5, a(6)=5, a(7)=1, a(8)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226580

/-- `1+a(n-7)` -/
def P10319682433122822065.Spec : Prop :=
  ∀ n, (P10319682433122822065.a n : ℤ) = A226580 n

theorem P10319682433122822065.correct : P10319682433122822065.Spec := by
  intro n
  simp only [A226580]

end A226580

/-! ## A226580.P5001469355984733455

`A113881(A055999(n+3))%A008410(n)`
-/

namespace A226580.P5001469355984733455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (A055999 (n + 3)).toNat) (A008410 n)

end

end A226580.P5001469355984733455

namespace A226580

/-- `A113881(A055999(n+3))%A008410(n)` -/
def P5001469355984733455.Spec : Prop :=
  ∀ n, P5001469355984733455.a n = A226580 n

end A226580

/-! ## A226580.P6574482643190892489

`lcm(A113881(A055999(n+3)), A165471(n))`
-/

namespace A226580.P6574482643190892489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113881 (A055999 (n + 3)).toNat) (A165471 n)

end

end A226580.P6574482643190892489

namespace A226580

/-- `lcm(A113881(A055999(n+3)), A165471(n))` -/
def P6574482643190892489.Spec : Prop :=
  ∀ n, (P6574482643190892489.a n : ℤ) = A226580 n

end A226580

/-! ## A226580.P2906677227357561144

`A165476(n²)*A113881(A055999(n+3))`
-/

namespace A226580.P2906677227357561144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (n ^ 2) * A113881 (A055999 (n + 3)).toNat

end

end A226580.P2906677227357561144

namespace A226580

/-- `A165476(n²)*A113881(A055999(n+3))` -/
def P2906677227357561144.Spec : Prop :=
  ∀ n, P2906677227357561144.a n = A226580 n

end A226580

/-! ## A226580.P13826005463154234979

`A165481(n)²*A113881(A055999(n+3))`
-/

namespace A226580.P13826005463154234979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165481 n ^ 2 * A113881 (A055999 (n + 3)).toNat

end

end A226580.P13826005463154234979

namespace A226580

/-- `A165481(n)²*A113881(A055999(n+3))` -/
def P13826005463154234979.Spec : Prop :=
  ∀ n, P13826005463154234979.a n = A226580 n

end A226580

/-! ## A226580.P16368504266553767594

`A165581(n²)*A113881(A055999(n+3))`
-/

namespace A226580.P16368504266553767594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165581 (n ^ 2) * A113881 (A055999 (n + 3)).toNat

end

end A226580.P16368504266553767594

namespace A226580

/-- `A165581(n²)*A113881(A055999(n+3))` -/
def P16368504266553767594.Spec : Prop :=
  ∀ n, P16368504266553767594.a n = A226580 n

end A226580

/-! ## A226580.P880922578172857020

`A113881(A000217(n+6)-6)%A081585(n)`
-/

namespace A226580.P880922578172857020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (A000217 (n + 6) - 6).toNat) (A081585 n)

end

end A226580.P880922578172857020

namespace A226580

/-- `A113881(A000217(n+6)-6)%A081585(n)` -/
def P880922578172857020.Spec : Prop :=
  ∀ n, P880922578172857020.a n = A226580 n

end A226580

/-! ## A226580.P17853153483507650877

`A113881(A055999(n+3))*A336541(A000124(n))`
-/

namespace A226580.P17853153483507650877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (A055999 (n + 3)).toNat * A336541 (A000124 n).toNat

end

end A226580.P17853153483507650877

namespace A226580

/-- `A113881(A055999(n+3))*A336541(A000124(n))` -/
def P17853153483507650877.Spec : Prop :=
  ∀ n, P17853153483507650877.a n = A226580 n

end A226580

/-!
# A226581: Smallest number of integer-sided squares needed to tile an 8 X n rectangle.

The programs for A226581, the canonical program `A226581.P8721156269348715464` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226581 has offset 0).

The definition of A226581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226581.P8721156269348715464

`1+a(n-8)` with `a(0)=0, a(1)=8, a(2)=4, a(3)=5, a(4)=2, a(5)=5, a(6)=4, a(7)=7, a(8)=1, a(9)=7`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226581

/-- `1+a(n-8)` -/
def P8721156269348715464.Spec : Prop :=
  ∀ n, (P8721156269348715464.a n : ℤ) = A226581 n

theorem P8721156269348715464.correct : P8721156269348715464.Spec := by
  intro n
  simp only [A226581]

end A226581

/-! ## A226581.P35305335552970739

`A057427(n)*A113881(A000217(n+7)-7)`
-/

namespace A226581.P35305335552970739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A113881 (A000217 (n + 7) - 7).toNat

end

end A226581.P35305335552970739

namespace A226581

/-- `A057427(n)*A113881(A000217(n+7)-7)` -/
def P35305335552970739.Spec : Prop :=
  ∀ n, P35305335552970739.a n = A226581 n

end A226581

/-! ## A226581.P9752051141636236874

`A113881(A000217(n+7)-7)%A033575(n)`
-/

namespace A226581.P9752051141636236874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (A000217 (n + 7) - 7).toNat) (A033575 n)

end

end A226581.P9752051141636236874

namespace A226581

/-- `A113881(A000217(n+7)-7)%A033575(n)` -/
def P9752051141636236874.Spec : Prop :=
  ∀ n, P9752051141636236874.a n = A226581 n

end A226581

/-! ## A226581.P17137354074036165246

`(1-A000007(n))*A113881(A000217(n+7)-7)`
-/

namespace A226581.P17137354074036165246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A113881 (A000217 (n + 7) - 7).toNat

end

end A226581.P17137354074036165246

namespace A226581

/-- `(1-A000007(n))*A113881(A000217(n+7)-7)` -/
def P17137354074036165246.Spec : Prop :=
  ∀ n, P17137354074036165246.a n = A226581 n

end A226581

/-! ## A226581.P16670166993323320091

`A091247(2*(n+1))*A113881(A000217(n+7)-7)`
-/

namespace A226581.P16670166993323320091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (2 * (n + 1)) * A113881 (A000217 (n + 7) - 7).toNat

end

end A226581.P16670166993323320091

namespace A226581

/-- `A091247(2*(n+1))*A113881(A000217(n+7)-7)` -/
def P16670166993323320091.Spec : Prop :=
  ∀ n, P16670166993323320091.a n = A226581 n

end A226581

/-! ## A226581.P15861794864457827818

`A001222(A241686(n+1))*A113881(A000217(n+7)-7)`
-/

namespace A226581.P15861794864457827818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A241686 (n + 1)).toNat * A113881 (A000217 (n + 7) - 7).toNat

end

end A226581.P15861794864457827818

namespace A226581

/-- `A001222(A241686(n+1))*A113881(A000217(n+7)-7)` -/
def P15861794864457827818.Spec : Prop :=
  ∀ n, P15861794864457827818.a n = A226581 n

end A226581

/-! ## A226581.P6449469863267549490

`A113881(eq[7, A004736(n+1)])%A164559(n+1)`
-/

namespace A226581.P6449469863267549490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A164559 (n + 1))

end

end A226581.P6449469863267549490

namespace A226581

/-- `A113881(eq[7, A004736(n+1)])%A164559(n+1)` -/
def P6449469863267549490.Spec : Prop :=
  ∀ n, P6449469863267549490.a n = A226581 n

end A226581

/-!
# A226582: Smallest number of integer-sided squares needed to tile a 9 X n rectangle.

The programs for A226582, there is no canonical definition to state claims against.
-/

/-! ## A226582.P9244195802798377140

`A113881(A000096(n+7)-7)%A005892(n)`
-/

namespace A226582.P9244195802798377140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (A000096 (n + 7) - 7).toNat) (A005892 n)

end

end A226582.P9244195802798377140

/-! ## A226582.P13213430324189566990

`char[A038722(n+1)]*A113881(A000096(n+7)-7)`
-/

namespace A226582.P13213430324189566990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A113881 (A000096 (n + 7) - 7).toNat

end

end A226582.P13213430324189566990

/-! ## A226582.P10672182397726616285

`char[A175500(n+1)]*A113881(A000096(n+7)-7)`
-/

namespace A226582.P10672182397726616285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175500 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A113881 (A000096 (n + 7) - 7).toNat

end

end A226582.P10672182397726616285

/-! ## A226582.P1196040164023726478

`char[A194922(n+1)]*A113881(A000096(n+7)-7)`
-/

namespace A226582.P1196040164023726478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194922 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A113881 (A000096 (n + 7) - 7).toNat

end

end A226582.P1196040164023726478

/-! ## A226582.P10414741177550331534

`char[A260742(n+1)]*A113881(A000096(n+7)-7)`
-/

namespace A226582.P10414741177550331534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A113881 (A000096 (n + 7) - 7).toNat

end

end A226582.P10414741177550331534

/-! ## A226582.P11736501042682411701

`A001222(A008578(n+1))*A113881(A000096(n+7)-7)`
-/

namespace A226582.P11736501042682411701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A113881 (A000096 (n + 7) - 7).toNat

end

end A226582.P11736501042682411701

/-! ## A226582.P18368074648512609565

`A113881(eq[8, A004736(n+1)])%A016817(n)`
-/

namespace A226582.P18368074648512609565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A016817 n)

end

end A226582.P18368074648512609565

/-!
# A226583: Smallest number of integer-sided squares needed to tile a 10 X n rectangle.

The programs for A226583, there is no canonical definition to state claims against.
-/

/-! ## A226583.P4125024544628162201

`floor(atan(n+1))*A113881(A046691(n+7)-5)`
-/

namespace A226583.P4125024544628162201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ * A113881 (A046691 (n + 7) - 5).toNat

end

end A226583.P4125024544628162201

/-! ## A226583.P14162916977927272511

`A057427(n)*A113881(A046691(n+7)-5)`
-/

namespace A226583.P14162916977927272511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A113881 (A046691 (n + 7) - 5).toNat

end

end A226583.P14162916977927272511

/-! ## A226583.P16755645639413586037

`A113881(A046691(n+7)-5)%A000144(n)`
-/

namespace A226583.P16755645639413586037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113881 (A046691 (n + 7) - 5).toNat) (A000144 n)

end

end A226583.P16755645639413586037

/-! ## A226583.P8737762276449741623

`(1-A000007(n))*A113881(A046691(n+7)-5)`
-/

namespace A226583.P8737762276449741623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A113881 (A046691 (n + 7) - 5).toNat

end

end A226583.P8737762276449741623

/-! ## A226583.P2981111558062443894

`A000040(n+1)%2*A113881(A046691(n+7)-5)`
-/

namespace A226583.P2981111558062443894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A113881 (A046691 (n + 7) - 5).toNat

end

end A226583.P2981111558062443894

/-! ## A226583.P3046529715396471533

`A001222(A192594(n+1))*A113881(A046691(n+7)-5)`
-/

namespace A226583.P3046529715396471533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A192594 (n + 1)).toNat * A113881 (A046691 (n + 7) - 5).toNat

end

end A226583.P3046529715396471533

/-!
# A226585: Denominators of the series expansion of the ground-state energy of the Hubbard model in the limits of strong coupling and infinite dimensions.

The programs for A226585, there is no canonical definition to state claims against.
-/

/-! ## A226585.P8650328021998046502

`A336496(A353526(n+5)+A336484(n))`
-/

namespace A226585.P8650328021998046502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336496 (A353526 (n + 5) + A336484 n).toNat

end

end A226585.P8650328021998046502

/-! ## A226585.P6622080902699010373

`∏[∏{e}[∑[-n]^n+1, #+1]]`
-/

namespace A226585.P6622080902699010373
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A226585.P6622080902699010373

/-!
# A226586: Odd values of sigma(n) - phi(n) in the order of appearance and with repetition.

The programs for A226586, the canonical program `A226586.P1032371712486698964` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226586 has offset 1).

The definition of A226586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 537 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226586.P1032371712486698964

`A152677(n+3)-A000010(A028982(n+3))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226586

/-- `A152677(n+3)-A000010(A028982(n+3))` -/
def P1032371712486698964.Spec : Prop :=
  ∀ n, P1032371712486698964.a n = A226586 (n + 1)

theorem P1032371712486698964.correct : P1032371712486698964.Spec := by
  intro n
  simp only [A226586, Nat.add_sub_cancel]

end A226586

/-! ## A226586.P2272222346102518815

`A051612(lt[2, lcm(n+1, (2*(n+1)-∑{d}[n+1, #])%2)]+1)`
-/

namespace A226586.P2272222346102518815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (Int.tmod ((2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A226586.P2272222346102518815

namespace A226586

/-- `A051612(lt[2, lcm(n+1, (2*(n+1)-∑{d}[n+1, #])%2)]+1)` -/
def P2272222346102518815.Spec : Prop :=
  ∀ n, P2272222346102518815.a n = A226586 (n + 1)

end A226586

/-! ## A226586.P16691616766731522045

`A051612(A028982(n+3))`
-/

namespace A226586.P16691616766731522045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (A028982 (n + 3)).toNat

end

end A226586.P16691616766731522045

namespace A226586

/-- `A051612(A028982(n+3))` -/
def P16691616766731522045.Spec : Prop :=
  ∀ n, P16691616766731522045.a n = A226586 (n + 1)

end A226586

/-! ## A226586.P1079849386956306691

`A051612(record[A235872(n+4)])`
-/

namespace A226586.P1079849386956306691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235872 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226586.P1079849386956306691

namespace A226586

/-- `A051612(record[A235872(n+4)])` -/
def P1079849386956306691.Spec : Prop :=
  ∀ n, P1079849386956306691.a n = A226586 (n + 1)

end A226586

/-! ## A226586.P5071050841104076440

`A051612(∩[A069265(n+1), A034023(n)])`
-/

namespace A226586.P5071050841104076440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A226586.P5071050841104076440

namespace A226586

/-- `A051612(∩[A069265(n+1), A034023(n)])` -/
def P5071050841104076440.Spec : Prop :=
  ∀ n, P5071050841104076440.a n = A226586 (n + 1)

end A226586

/-! ## A226586.P14926781535757002032

`filter[A051612(n+1), A000035(#)]`
-/

namespace A226586.P14926781535757002032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A226586.P14926781535757002032

namespace A226586

/-- `filter[A051612(n+1), A000035(#)]` -/
def P14926781535757002032.Spec : Prop :=
  ∀ n, P14926781535757002032.a n = A226586 (n + 1)

end A226586

/-! ## A226586.P1567558114924249757

`filter[A051612(n+2), A266070(#)]`
-/

namespace A226586.P1567558114924249757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A226586.P1567558114924249757

namespace A226586

/-- `filter[A051612(n+2), A266070(#)]` -/
def P1567558114924249757.Spec : Prop :=
  ∀ n, P1567558114924249757.a n = A226586 (n + 1)

end A226586

/-! ## A226586.P6106783369767995102

`filter[A051612(n+2), A267155(#)]`
-/

namespace A226586.P6106783369767995102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051612 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A226586.P6106783369767995102

namespace A226586

/-- `filter[A051612(n+2), A267155(#)]` -/
def P6106783369767995102.Spec : Prop :=
  ∀ n, P6106783369767995102.a n = A226586 (n + 1)

end A226586

/-!
# A226588: a(n) = c({1}^n), the Cantor tuple function c applied to an n-tuple of 1's.

The programs for A226588, the canonical program `A226588.P17623205007909523643` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226588 has offset 0).

The definition of A226588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226588.P17623205007909523643

`(a(n-1)+1)*(a(n-1)+2)/2+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226588

/-- `(a(n-1)+1)*(a(n-1)+2)/2+1` -/
def P17623205007909523643.Spec : Prop :=
  ∀ n, P17623205007909523643.a n = (A226588 n : ℚ)

end A226588

/-! ## A226588.P9634637669002972916

`C(a(n-1)+2, 2)+1` with `a(0)=0, a(1)=1`
-/

namespace A226588.P9634637669002972916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (a (n - 1) + 2) 2 + 1

end

end A226588.P9634637669002972916

namespace A226588

/-- `C(a(n-1)+2, 2)+1` -/
def P9634637669002972916.Spec : Prop :=
  ∀ n, (P9634637669002972916.a n : ℤ) = A226588 n

end A226588

/-! ## A226588.P11112947913618878387

`((a(n-1)+2)²-a(n-1))/2` with `a(0)=0, a(1)=1`
-/

namespace A226588.P11112947913618878387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((a (n - 1) + 2) ^ 2 - a (n - 1)) / 2

end

end A226588.P11112947913618878387

namespace A226588

/-- `((a(n-1)+2)²-a(n-1))/2` -/
def P11112947913618878387.Spec : Prop :=
  ∀ n, P11112947913618878387.a n = (A226588 n : ℚ)

end A226588

/-! ## A226588.P8134901549853027324

`(a(n-1)+3)/2*a(n-1)+2` with `a(0)=0, a(1)=1`
-/

namespace A226588.P8134901549853027324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + 3) / 2 * a (n - 1) + 2

end

end A226588.P8134901549853027324

namespace A226588

/-- `(a(n-1)+3)/2*a(n-1)+2` -/
def P8134901549853027324.Spec : Prop :=
  ∀ n, P8134901549853027324.a n = (A226588 n : ℚ)

end A226588

/-! ## A226588.P10334913206094197734

`A067339(A028310(n))-A054977(n)`
-/

namespace A226588.P10334913206094197734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067339 (A028310 n).toNat - A054977 n

end

end A226588.P10334913206094197734

namespace A226588

/-- `A067339(A028310(n))-A054977(n)` -/
def P10334913206094197734.Spec : Prop :=
  ∀ n, P10334913206094197734.a n = A226588 n

end A226588

/-!
# A226590: Total number of 0's in binary expansion of all divisors of n.

The programs for A226590, the canonical program `A226590.P8032106787844506352` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226590 has offset 1).

The definition of A226590 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093653, A182627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226590.P8032106787844506352

`A182627(n+1)-A093653(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A226590

/-- `A182627(n+1)-A093653(n+1)` -/
def P8032106787844506352.Spec : Prop :=
  ∀ n, P8032106787844506352.a n = A226590 (n + 1)

theorem P8032106787844506352.correct : P8032106787844506352.Spec := by
  intro n
  simp only [A226590, Nat.add_sub_cancel]

end A226590

/-! ## A226590.P17709813527332963461

`∑{d}[n+1, A023416(#)]`
-/

namespace A226590.P17709813527332963461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023416 d

end

end A226590.P17709813527332963461

namespace A226590

/-- `∑{d}[n+1, A023416(#)]` -/
def P17709813527332963461.Spec : Prop :=
  ∀ n, P17709813527332963461.a n = A226590 (n + 1)

end A226590

/-! ## A226590.P4577234498267275452

`∑{d}[n+1, A080791(#)]`
-/

namespace A226590.P4577234498267275452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080791 d

end

end A226590.P4577234498267275452

namespace A226590

/-- `∑{d}[n+1, A080791(#)]` -/
def P4577234498267275452.Spec : Prop :=
  ∀ n, P4577234498267275452.a n = A226590 (n + 1)

end A226590

/-! ## A226590.P12769206335365092854

`∑{d}[n+1, A037861(#)+A000120(#)]`
-/

namespace A226590.P12769206335365092854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A037861 d + A000120 d)

end

end A226590.P12769206335365092854

namespace A226590

/-- `∑{d}[n+1, A037861(#)+A000120(#)]` -/
def P12769206335365092854.Spec : Prop :=
  ∀ n, P12769206335365092854.a n = A226590 (n + 1)

end A226590

/-! ## A226590.P13632627245860562114

`∑{d}[n+1, A000120(A004760(#+1)%#)]`
-/

namespace A226590.P13632627245860562114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000120 (Int.tmod (A004760 (d + 1)) (d : ℤ)).toNat

end

end A226590.P13632627245860562114

namespace A226590

/-- `∑{d}[n+1, A000120(A004760(#+1)%#)]` -/
def P13632627245860562114.Spec : Prop :=
  ∀ n, P13632627245860562114.a n = A226590 (n + 1)

end A226590

/-! ## A226590.P6610281800681227016

`∑{digits}[A182621(n+1), 1-#]`
-/

namespace A226590.P6610281800681227016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A226590.P6610281800681227016

namespace A226590

/-- `∑{digits}[A182621(n+1), 1-#]` -/
def P6610281800681227016.Spec : Prop :=
  ∀ n, P6610281800681227016.a n = A226590 (n + 1)

end A226590

/-!
# A226591: Expansion of g.f. (x*(1+x)*(1-x+x^2)*(1+x+x^2)*(1-x^2+x^4))/(1-x^2+x^4-x^5-x^6+x^7-x^9).

The programs for A226591, the canonical program `A226591.P12788115828938032942` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226591 has offset 1).

The definition of A226591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^4+x^5+x^8+x^9)/(1-x^2+x^4-x^5-x^6+x^7-x^9))` (program `A226591.P12788115828938032942`, by `A226591.P12788115828938032942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226591.P12788115828938032942

`ogf((1+x+x^4+x^5+x^8+x^9)/(1-x^2+x^4-x^5-x^6+x^7-x^9))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226591

/-- `ogf((1+x+x^4+x^5+x^8+x^9)/(1-x^2+x^4-x^5-x^6+x^7-x^9))` -/
def P12788115828938032942.Spec : Prop :=
  ∀ n, P12788115828938032942.a n = A226591 (n + 1)

theorem P12788115828938032942.correct : P12788115828938032942.Spec := by
  intro n
  simp only [A226591, Nat.add_sub_cancel]

end A226591

/-!
# A226593: Largest period of a recurrence sequence of pairs of permutations of length n.

The programs for A226593, there is no canonical definition to state claims against.
-/

/-! ## A226593.P16857227529069245191

`A336322(A380125(n+1))`
-/

namespace A226593.P16857227529069245191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336322 (A380125 (n + 1)).toNat

end

end A226593.P16857227529069245191

/-! ## A226593.P525582871929834939

`A003963(A125785(n)-A127286(n))`
-/

namespace A226593.P525582871929834939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A125785 n - A127286 n).toNat

end

end A226593.P525582871929834939

/-!
# A226594: Number of distinct characteristic polynomials of trees with n nodes.

The programs for A226594, there is no canonical definition to state claims against.
-/

/-! ## A226594.P8503932343095654548

`A130696(A124973(n)+1)`
-/

namespace A226594.P8503932343095654548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A124973 n + 1).toNat

end

end A226594.P8503932343095654548

/-! ## A226594.P7935814237708599175

`A302496(A316474(n+2))`
-/

namespace A226594.P7935814237708599175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302496 (A316474 (n + 2)).toNat

end

end A226594.P7935814237708599175

/-! ## A226594.P13768671765126682059

`A000055(n)-A037860(A147219(n+1))`
-/

namespace A226594.P13768671765126682059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 n - A037860 (A147219 (n + 1)).toNat

end

end A226594.P13768671765126682059

/-!
# A226595: Lengths of maximal nontouching increasing paths in n X n grids.

The programs for A226595, there is no canonical definition to state claims against.
-/

/-! ## A226595.P11991411960418757425

`ceil(A050504(n+1)/ϕ)+n`
-/

namespace A226595.P11991411960418757425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A050504 (n + 1) : ℝ) / Real.goldenRatio⌉ + (n : ℤ)

end

end A226595.P11991411960418757425

/-! ## A226595.P13701119984701868833

`A004773(n)+∑[A112758(n+1)]`
-/

namespace A226595.P13701119984701868833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226595.P13701119984701868833

/-! ## A226595.P4898006103991951706

`A107750(A318735(n+1)-1+n)`
-/

namespace A226595.P4898006103991951706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (A318735 (n + 1) - 1 + (n : ℤ)).toNat

end

end A226595.P4898006103991951706

/-! ## A226595.P15682116320532095831

`∑[A109301(n+2)]-A188641(n+1)`
-/

namespace A226595.P15682116320532095831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A188641 (n + 1)

end

end A226595.P15682116320532095831

/-! ## A226595.P16778491049785765064

`∑[A001221(A311548(∑[15*n-12]+12))]`
-/

namespace A226595.P16778491049785765064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n : ℤ) - 12

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A311548 (∑ j ∈ Finset.range (n + 1), f2 j + 12).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226595.P16778491049785765064

/-!
# A226597: a(n) = c(1,2,...,n), the Cantor tuple function c applied to n-tuple (1,2,...,n).

The programs for A226597, the canonical program `A226597.P16938778511518771555` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226597 has offset 0).

The definition of A226597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226597.P16938778511518771555

`(a(n-1)+n)*(a(n-1)+n+1)/2+n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A226597

/-- `(a(n-1)+n)*(a(n-1)+n+1)/2+n` -/
def P16938778511518771555.Spec : Prop :=
  ∀ n, P16938778511518771555.a n = (A226597 n : ℚ)

end A226597

/-! ## A226597.P17489524552992837155

`C(a(n-1)+n+1, 2)+n` with `a(0)=0, a(1)=1`
-/

namespace A226597.P17489524552992837155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.choose (a (n - 1) + (n + 1)) 2 + n

end

end A226597.P17489524552992837155

namespace A226597

/-- `C(a(n-1)+n+1, 2)+n` -/
def P17489524552992837155.Spec : Prop :=
  ∀ n, (P17489524552992837155.a n : ℤ) = A226597 n

end A226597

/-!
# A226598: a(n) = c(n,n-1,...,1), the Cantor tuple function c applied to n-tuple (n,n-1,...,1).

The programs for A226598, there is no canonical definition to state claims against.
-/

/-! ## A226598.P11715592654673710431

`A038764(A297584(n+1))%A297561(n+2)`
-/

namespace A226598.P11715592654673710431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038764 (A297584 (n + 1)).toNat) (A297561 (n + 2))

end

end A226598.P11715592654673710431

