import SequenceMachineLib
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A127800: Inverse of number triangle A(n,k) = 1/(2 - 0^n), if k <= n <= 2k, 0 otherwise.

The programs for A127800, there is no canonical definition to state claims against.
-/

/-! ## A127800.P7363263310554717607

`ceil(cosh(sin(n)))*A111967(n)`
-/

namespace A127800.P7363263310554717607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A111967 n

end

end A127800.P7363263310554717607

/-! ## A127800.P1262888179165124922

`A111967(n)*A155124(n)`
-/

namespace A127800.P1262888179165124922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A155124 n

end

end A127800.P1262888179165124922

/-! ## A127800.P1692275424489403024

`A111967(n)*A238303(n)`
-/

namespace A127800.P1692275424489403024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A238303 n

end

end A127800.P1692275424489403024

/-! ## A127800.P3203996625997370097

`A036453(n+1)*A111967(n)`
-/

namespace A127800.P3203996625997370097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A111967 n

end

end A127800.P3203996625997370097

/-! ## A127800.P8086004602639055941

`A104435(n+1)*A111967(n)`
-/

namespace A127800.P8086004602639055941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A111967 n

end

end A127800.P8086004602639055941

/-! ## A127800.P2839343839625315826

`A111967(n)*A226774(n+1)`
-/

namespace A127800.P2839343839625315826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A226774 (n + 1)

end

end A127800.P2839343839625315826

/-! ## A127800.P18274754223491510192

`A111967(n)*A286016(n+1)`
-/

namespace A127800.P18274754223491510192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A286016 (n + 1)

end

end A127800.P18274754223491510192

/-! ## A127800.P11949103453467913705

`A111967(n)*A111982(2*n)`
-/

namespace A127800.P11949103453467913705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A111982 (2 * n)

end

end A127800.P11949103453467913705

/-! ## A127800.P16143970070942543969

`A111967(n)*A127750(2*n)`
-/

namespace A127800.P16143970070942543969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A127750 (2 * n)

end

end A127800.P16143970070942543969

/-!
# A127801: Inverse of number triangle A(n,k) = 1/(3 - 2*0^n) if k <= n <= 2k, 0 otherwise.

The programs for A127801, there is no canonical definition to state claims against.
-/

/-! ## A127801.P16427480568703918917

`round(log2(exp(A127800(n))))`
-/

namespace A127801.P16427480568703918917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.exp (A127800 n : ℝ)))

end

end A127801.P16427480568703918917

/-! ## A127801.P9574760992997130811

`(ceil(atan(n))+1)*A111967(n)`
-/

namespace A127801.P9574760992997130811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.arctan (n : ℝ)⌉ + 1) * A111967 n

end

end A127801.P9574760992997130811

/-! ## A127801.P16039923071139651578

`A111967(n)*A122553(n)`
-/

namespace A127801.P16039923071139651578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A122553 n

end

end A127801.P16039923071139651578

/-! ## A127801.P11436930251048228589

`A111967(n)*A158799(n)`
-/

namespace A127801.P11436930251048228589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A158799 n

end

end A127801.P11436930251048228589

/-! ## A127801.P9093043289642741754

`dr(A002001(n))*A111967(n)`
-/

namespace A127801.P9093043289642741754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A002001 n) : ℤ) * A111967 n

end

end A127801.P9093043289642741754

/-! ## A127801.P4155534470776241429

`dr(A032308(n))*A111967(n)`
-/

namespace A127801.P4155534470776241429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A032308 n) : ℤ) * A111967 n

end

end A127801.P4155534470776241429

/-! ## A127801.P9515949157950347848

`A087717(n+1)*A111967(n)`
-/

namespace A127801.P9515949157950347848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087717 (n + 1) * A111967 n

end

end A127801.P9515949157950347848

/-! ## A127801.P15645255839314102190

`A111967(n)*A127752(2*n)`
-/

namespace A127801.P15645255839314102190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A127752 (2 * n)

end

end A127801.P15645255839314102190

/-! ## A127801.P988430882770351282

`A000032(2-C(2, n+2))*A111967(n)`
-/

namespace A127801.P988430882770351282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 - Nat.choose 2 (n + 2)) * A111967 n

end

end A127801.P988430882770351282

/-! ## A127801.P17277256647728762875

`A048250(A059268(n))*A111967(n)`
-/

namespace A127801.P17277256647728762875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A059268 n).toNat * A111967 n

end

end A127801.P17277256647728762875

/-!
# A127802: a(0) = 1, a(n) = 3*A036987(n), n>1.

The programs for A127802, the canonical program `A127802.P22673564577656166` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127802 has offset 0).

The definition of A127802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127802.P22673564577656166

`∏{p}[n+1, 3*val(#, 2)]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127802

/-- `∏{p}[n+1, 3*val(#, 2)]` -/
def P22673564577656166.Spec : Prop :=
  ∀ n, (P22673564577656166.a n : ℤ) = A127802 n

theorem P22673564577656166.correct : P22673564577656166.Spec := by
  intro n
  simp only [A127802]

end A127802

/-! ## A127802.P2800828526461953120

`∏{p}[n+1, val(#+6, 2)]`
-/

namespace A127802.P2800828526461953120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p + 6) 2

end

end A127802.P2800828526461953120

namespace A127802

/-- `∏{p}[n+1, val(#+6, 2)]` -/
def P2800828526461953120.Spec : Prop :=
  ∀ n, (P2800828526461953120.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P14234595834680916740

`∏{p}[n+1, 3*C(2, #)]`
-/

namespace A127802.P14234595834680916740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 * Nat.choose 2 p

end

end A127802.P14234595834680916740

namespace A127802

/-- `∏{p}[n+1, 3*C(2, #)]` -/
def P14234595834680916740.Spec : Prop :=
  ∀ n, (P14234595834680916740.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P16529799340269595386

`∏{p}[n+1, C(C(3, #), 2)]`
-/

namespace A127802.P16529799340269595386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.choose 3 p) 2

end

end A127802.P16529799340269595386

namespace A127802

/-- `∏{p}[n+1, C(C(3, #), 2)]` -/
def P16529799340269595386.Spec : Prop :=
  ∀ n, (P16529799340269595386.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P9172276437347130685

`C(3, xor(n, 2*n)-n)`
-/

namespace A127802.P9172276437347130685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((Nat.xor n (2 * n) : ℤ) - (n : ℤ)).toNat

end

end A127802.P9172276437347130685

namespace A127802

/-- `C(3, xor(n, 2*n)-n)` -/
def P9172276437347130685.Spec : Prop :=
  ∀ n, (P9172276437347130685.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P9731250379669341555

`C(3, or(2*n, -n)²)`
-/

namespace A127802.P9731250379669341555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.lor (2 * n : ℤ) (-(n : ℤ)) ^ 2).toNat

end

end A127802.P9731250379669341555

namespace A127802

/-- `C(3, or(2*n, -n)²)` -/
def P9731250379669341555.Spec : Prop :=
  ∀ n, (P9731250379669341555.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P1307950453598843657

`C(3, or(2*n, -n)^4)`
-/

namespace A127802.P1307950453598843657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.lor (2 * n : ℤ) (-(n : ℤ)) ^ 4).toNat

end

end A127802.P1307950453598843657

namespace A127802

/-- `C(3, or(2*n, -n)^4)` -/
def P1307950453598843657.Spec : Prop :=
  ∀ n, (P1307950453598843657.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P17817380567577121317

`∏{p}[n+1, gcd(2, #)²-1]`
-/

namespace A127802.P17817380567577121317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.gcd 2 p ^ 2 : ℤ) - 1)

end

end A127802.P17817380567577121317

namespace A127802

/-- `∏{p}[n+1, gcd(2, #)²-1]` -/
def P17817380567577121317.Spec : Prop :=
  ∀ n, P17817380567577121317.a n = A127802 n

end A127802

/-! ## A127802.P11884118515535473166

`C(3, ∑{p}[n+1, (1-#)²])`
-/

namespace A127802.P11884118515535473166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) ^ 2).toNat

end

end A127802.P11884118515535473166

namespace A127802

/-- `C(3, ∑{p}[n+1, (1-#)²])` -/
def P11884118515535473166.Spec : Prop :=
  ∀ n, (P11884118515535473166.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P17655529293427206634

`and(3, ∏{p}[n+1, #²-1])`
-/

namespace A127802.P17655529293427206634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 2 : ℤ) - 1))

end

end A127802.P17655529293427206634

namespace A127802

/-- `and(3, ∏{p}[n+1, #²-1])` -/
def P17655529293427206634.Spec : Prop :=
  ∀ n, P17655529293427206634.a n = A127802 n

end A127802

/-! ## A127802.P8751172455154741403

`∏{p}[n+1, and(3, #²+3)]`
-/

namespace A127802.P8751172455154741403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.land 3 (p ^ 2 + 3)

end

end A127802.P8751172455154741403

namespace A127802

/-- `∏{p}[n+1, and(3, #²+3)]` -/
def P8751172455154741403.Spec : Prop :=
  ∀ n, (P8751172455154741403.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P2353361267332509706

`∏{p}[n+1, 3*floor(2/#)]`
-/

namespace A127802.P2353361267332509706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 * ⌊2 / (p : ℚ)⌋

end

end A127802.P2353361267332509706

namespace A127802

/-- `∏{p}[n+1, 3*floor(2/#)]` -/
def P2353361267332509706.Spec : Prop :=
  ∀ n, P2353361267332509706.a n = A127802 n

end A127802

/-! ## A127802.P10519432308586982100

`C(3, ∑{p}[n+1, C(#, 2)]²)`
-/

namespace A127802.P10519432308586982100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p 2) ^ 2)

end

end A127802.P10519432308586982100

namespace A127802

/-- `C(3, ∑{p}[n+1, C(#, 2)]²)` -/
def P10519432308586982100.Spec : Prop :=
  ∀ n, (P10519432308586982100.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P12876201652766060717

`C(3, (and(n, 2*n)-n)²)`
-/

namespace A127802.P12876201652766060717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (((Nat.land n (2 * n) : ℤ) - (n : ℤ)) ^ 2).toNat

end

end A127802.P12876201652766060717

namespace A127802

/-- `C(3, (and(n, 2*n)-n)²)` -/
def P12876201652766060717.Spec : Prop :=
  ∀ n, (P12876201652766060717.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P6432601521643708311

`n%2*a(floor(n/2))` with `a(0)=1, a(1)=3`
-/

namespace A127802.P6432601521643708311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  n % 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A127802.P6432601521643708311

namespace A127802

/-- `n%2*a(floor(n/2))` -/
def P6432601521643708311.Spec : Prop :=
  ∀ n, (P6432601521643708311.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P17527356765255870794

`C(3, and(n, -(2*n+1))²)`
-/

namespace A127802.P17527356765255870794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.land (n : ℤ) (-(2 * n + 1 : ℤ)) ^ 2).toNat

end

end A127802.P17527356765255870794

namespace A127802

/-- `C(3, and(n, -(2*n+1))²)` -/
def P17527356765255870794.Spec : Prop :=
  ∀ n, (P17527356765255870794.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P18395609773335251370

`C(or(n, n+1), 2*n)%4`
-/

namespace A127802.P18395609773335251370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor n (n + 1)) (2 * n) % 4

end

end A127802.P18395609773335251370

namespace A127802

/-- `C(or(n, n+1), 2*n)%4` -/
def P18395609773335251370.Spec : Prop :=
  ∀ n, (P18395609773335251370.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P1137708255404117550

`C(xor(n, n+1), 2*n)%4`
-/

namespace A127802.P1137708255404117550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor n (n + 1)) (2 * n) % 4

end

end A127802.P1137708255404117550

namespace A127802

/-- `C(xor(n, n+1), 2*n)%4` -/
def P1137708255404117550.Spec : Prop :=
  ∀ n, (P1137708255404117550.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P14838057975942932664

`∏{e}[n+1, val(8^#, n+1)]`
-/

namespace A127802.P14838057975942932664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (8 ^ Nat.factorization (f1 n) p) (n + 1)

end

end A127802.P14838057975942932664

namespace A127802

/-- `∏{e}[n+1, val(8^#, n+1)]` -/
def P14838057975942932664.Spec : Prop :=
  ∀ n, (P14838057975942932664.a n : ℤ) = A127802 n

end A127802

/-! ## A127802.P10044818693988925130

`C(3, 1-or(2*n, -(n+2)))`
-/

namespace A127802.P10044818693988925130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (1 - Int.lor (2 * n : ℤ) (-(n + 2 : ℤ))).toNat

end

end A127802.P10044818693988925130

namespace A127802

/-- `C(3, 1-or(2*n, -(n+2)))` -/
def P10044818693988925130.Spec : Prop :=
  ∀ n, (P10044818693988925130.a n : ℤ) = A127802 n

end A127802

/-!
# A127803: Inverse of number triangle A(n,k) = 1/(2*2^n-1) if k <= n <= 2k, 0 otherwise.

The programs for A127803, there is no canonical definition to state claims against.
-/

/-! ## A127803.P2514877374115321323

`∑{d}[A059268(n), #*A111967(n)]`
-/

namespace A127803.P2514877374115321323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A111967 n

end

end A127803.P2514877374115321323

/-! ## A127803.P7430229451122656860

`A000203(A059268(n))*A111967(n)`
-/

namespace A127803.P7430229451122656860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A059268 n).toNat * A111967 n

end

end A127803.P7430229451122656860

/-! ## A127803.P1672096454058719112

`A111967(n)*A126646(A002262(n))`
-/

namespace A127803.P1672096454058719112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A126646 (A002262 n).toNat

end

end A127803.P1672096454058719112

/-! ## A127803.P9616804949637777010

`A111967(n)*A130330(A061579(n))`
-/

namespace A127803.P9616804949637777010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 n * A130330 (A061579 n).toNat

end

end A127803.P9616804949637777010

/-! ## A127803.P7899023800837799775

`A000225(A002260(n+1))*A111967(n)`
-/

namespace A127803.P7899023800837799775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A002260 (n + 1)).toNat * A111967 n

end

end A127803.P7899023800837799775

/-! ## A127803.P5433363438135282607

`A000265(A043569(n+1))*A111967(n)`
-/

namespace A127803.P5433363438135282607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A043569 (n + 1)).toNat * A111967 n

end

end A127803.P5433363438135282607

/-! ## A127803.P9873050381519135895

`A038712(A018900(n+1))*A111967(n)`
-/

namespace A127803.P9873050381519135895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A018900 (n + 1)).toNat * A111967 n

end

end A127803.P9873050381519135895

/-! ## A127803.P10584212259812311184

`A127749(n)%2*A000203(A059268(n))`
-/

namespace A127803.P10584212259812311184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127749 n) 2 * A000203 (A059268 n).toNat

end

end A127803.P10584212259812311184

/-! ## A127803.P17319327518578721525

`A127801(n)%2*A000203(A059268(n))`
-/

namespace A127803.P17319327518578721525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127801 n) 2 * A000203 (A059268 n).toNat

end

end A127803.P17319327518578721525

/-!
# A127804: a(2n) = 2^(2n), a(2n+1) = 2^(2n+1) + a(n).

The programs for A127804, the canonical program `A127804.P1283349887769768592` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127804 has offset 0).

The definition of A127804 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A127804.P1283349887769768592

`A045654(n+1)/2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127804

/-- `A045654(n+1)/2` -/
def P1283349887769768592.Spec : Prop :=
  ∀ n, P1283349887769768592.a n = (A127804 n : ℚ)

end A127804

/-! ## A127804.P3667366799103524121

`2^n+n%2*a(floor(n/2))` with `a(0)=1`
-/

namespace A127804.P3667366799103524121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + n % 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A127804.P3667366799103524121

namespace A127804

/-- `2^n+n%2*a(floor(n/2))` -/
def P3667366799103524121.Spec : Prop :=
  ∀ n, (P3667366799103524121.a n : ℤ) = A127804 n

end A127804

/-! ## A127804.P12974735577151815702

`2^n+and(1, n)*a(floor(n/2))` with `a(0)=1`
-/

namespace A127804.P12974735577151815702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 ^ n + Nat.land 1 n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A127804.P12974735577151815702

namespace A127804

/-- `2^n+and(1, n)*a(floor(n/2))` -/
def P12974735577151815702.Spec : Prop :=
  ∀ n, (P12974735577151815702.a n : ℤ) = A127804 n

end A127804

/-! ## A127804.P16732081547623063274

`∑{d}[n+1, A011946(#)]`
-/

namespace A127804.P16732081547623063274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d

end

end A127804.P16732081547623063274

namespace A127804

/-- `∑{d}[n+1, A011946(#)]` -/
def P16732081547623063274.Spec : Prop :=
  ∀ n, P16732081547623063274.a n = A127804 n

end A127804

/-! ## A127804.P7874278328373349609

`∑{d}[n+1, #*A000048(#)]`
-/

namespace A127804.P7874278328373349609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000048 d

end

end A127804.P7874278328373349609

namespace A127804

/-- `∑{d}[n+1, #*A000048(#)]` -/
def P7874278328373349609.Spec : Prop :=
  ∀ n, P7874278328373349609.a n = A127804 n

end A127804

/-! ## A127804.P5697764913091423327

`∑{d}[n+1, A000740(#)*A001511((n+1)/#)]`
-/

namespace A127804.P5697764913091423327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A001511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127804.P5697764913091423327

namespace A127804

/-- `∑{d}[n+1, A000740(#)*A001511((n+1)/#)]` -/
def P5697764913091423327.Spec : Prop :=
  ∀ n, P5697764913091423327.a n = A127804 n

end A127804

/-! ## A127804.P10399170592945857216

`∑{d}[n+1, A034729(#)*A087003((n+1)/#)]`
-/

namespace A127804.P10399170592945857216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127804.P10399170592945857216

namespace A127804

/-- `∑{d}[n+1, A034729(#)*A087003((n+1)/#)]` -/
def P10399170592945857216.Spec : Prop :=
  ∀ n, P10399170592945857216.a n = A127804 n

end A127804

/-! ## A127804.P10653084112502470063

`∑{d}[n+1, A023900(#)*A306905((n+1)/#)]`
-/

namespace A127804.P10653084112502470063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A306905 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127804.P10653084112502470063

namespace A127804

/-- `∑{d}[n+1, A023900(#)*A306905((n+1)/#)]` -/
def P10653084112502470063.Spec : Prop :=
  ∀ n, P10653084112502470063.a n = A127804 n

end A127804

/-! ## A127804.P3630006747043161667

`∑{d}[n+1, A034737(#)*A326938((n+1)/#)]`
-/

namespace A127804.P3630006747043161667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034737 d * A326938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127804.P3630006747043161667

namespace A127804

/-- `∑{d}[n+1, A034737(#)*A326938((n+1)/#)]` -/
def P3630006747043161667.Spec : Prop :=
  ∀ n, P3630006747043161667.a n = A127804 n

end A127804

/-! ## A127804.P11826562711276941210

`∑{d}[n+1, A034771(#)*A327276((n+1)/#)]`
-/

namespace A127804.P11826562711276941210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034771 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127804.P11826562711276941210

namespace A127804

/-- `∑{d}[n+1, A034771(#)*A327276((n+1)/#)]` -/
def P11826562711276941210.Spec : Prop :=
  ∀ n, P11826562711276941210.a n = A127804 n

end A127804

/-! ## A127804.P11022794871563731709

`∑{d}[n+1, A129628(#)*A296302((n+1)/#)]`
-/

namespace A127804.P11022794871563731709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127804.P11022794871563731709

namespace A127804

/-- `∑{d}[n+1, A129628(#)*A296302((n+1)/#)]` -/
def P11022794871563731709.Spec : Prop :=
  ∀ n, P11022794871563731709.a n = A127804 n

end A127804

/-! ## A127804.P2562640085639914629

`∑{d}[n+1, A000079(#-1)*A036987((n+1)/#-1)]`
-/

namespace A127804.P2562640085639914629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A127804.P2562640085639914629

namespace A127804

/-- `∑{d}[n+1, A000079(#-1)*A036987((n+1)/#-1)]` -/
def P2562640085639914629.Spec : Prop :=
  ∀ n, P2562640085639914629.a n = A127804 n

end A127804

/-! ## A127804.P16928092724428124966

`Δ[a(floor(n/2))+2^n-1]` with `a(0)=0`
-/

namespace A127804.P16928092724428124966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127804.P16928092724428124966

namespace A127804

/-- `Δ[a(floor(n/2))+2^n-1]` -/
def P16928092724428124966.Spec : Prop :=
  ∀ n, P16928092724428124966.a n = A127804 n

end A127804

/-! ## A127804.P8544661532508453452

`A129342(n+1)/2`
-/

namespace A127804.P8544661532508453452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129342 (n + 1) : ℚ) / 2

end

end A127804.P8544661532508453452

namespace A127804

/-- `A129342(n+1)/2` -/
def P8544661532508453452.Spec : Prop :=
  ∀ n, P8544661532508453452.a n = (A127804 n : ℚ)

end A127804

/-! ## A127804.P12449042457429764355

`Δ[∑[A045654(n)]/2]`
-/

namespace A127804.P12449042457429764355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127804.P12449042457429764355

namespace A127804

/-- `Δ[∑[A045654(n)]/2]` -/
def P12449042457429764355.Spec : Prop :=
  ∀ n, P12449042457429764355.a n = (A127804 n : ℚ)

end A127804

/-! ## A127804.P18037606618314268689

`1+A187767(n+1)`
-/

namespace A127804.P18037606618314268689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A187767 (n + 1)

end

end A127804.P18037606618314268689

namespace A127804

/-- `1+A187767(n+1)` -/
def P18037606618314268689.Spec : Prop :=
  ∀ n, P18037606618314268689.a n = A127804 n

end A127804

/-! ## A127804.P4841125264034940028

`∑{d}[n+1, A317100(#)*A378218((n+1)/#)]`
-/

namespace A127804.P4841125264034940028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317100 d * A378218 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127804.P4841125264034940028

namespace A127804

/-- `∑{d}[n+1, A317100(#)*A378218((n+1)/#)]` -/
def P4841125264034940028.Spec : Prop :=
  ∀ n, P4841125264034940028.a n = A127804 n

end A127804

/-!
# A127805: Inverse of number triangle A(n,k) = 1/((10*10^n-1)/9) if k <= n <= 2k, 0 otherwise.

The programs for A127805, there is no canonical definition to state claims against.
-/

/-! ## A127805.P13667926683678206814

`A000042(A002260(n+1))*A111967(n)`
-/

namespace A127805.P13667926683678206814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A002260 (n + 1)).toNat * A111967 n

end

end A127805.P13667926683678206814

/-! ## A127805.P15719357488643358202

`A000042(A131818(n+1))*A111967(n)`
-/

namespace A127805.P15719357488643358202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A131818 (n + 1)).toNat * A111967 n

end

end A127805.P15719357488643358202

/-! ## A127805.P555207534443747938

`A002275(A134868(n+1))*A111967(n)`
-/

namespace A127805.P555207534443747938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A134868 (n + 1)).toNat * A111967 n

end

end A127805.P555207534443747938

/-! ## A127805.P6357778495544103006

`(A002275(A131818(n+1))*A111967(n))%A022378(n)`
-/

namespace A127805.P6357778495544103006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002275 (A131818 (n + 1)).toNat * A111967 n) (A022378 n)

end

end A127805.P6357778495544103006

/-!
# A127806: Row sums of number triangle A127805.

The programs for A127806, there is no canonical definition to state claims against.
-/

/-! ## A127806.P2398249239781309655

`A000433(A328408(n+1))`
-/

namespace A127806.P2398249239781309655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 (A328408 (n + 1)).toNat

end

end A127806.P2398249239781309655

/-! ## A127806.P260842444193115764

`Δ[A002275(n)+a(A008619(n)-1)]` with `a(0)=49`
-/

namespace A127806.P260842444193115764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [49] fun n f1 =>
  A002275 n + f1 (A008619 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127806.P260842444193115764

/-! ## A127806.P16891596364176521096

`∑{d}[A006519(n+1), A178501((n+1)/#)]`
-/

namespace A127806.P16891596364176521096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A178501 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127806.P16891596364176521096

/-! ## A127806.P15413804991629401669

`∑{d}[n+1, A087003(#)*A113999((n+1)/#)]`
-/

namespace A127806.P15413804991629401669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A113999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A127806.P15413804991629401669

/-! ## A127806.P13217157344935197154

`∑{d}[n+1, A011557(#-1)*A036987((n+1)/#-1)]`
-/

namespace A127806.P13217157344935197154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011557 (d - 1) * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A127806.P13217157344935197154

/-!
# A127807: Least positive primitive root of (n-th prime)^2.

The programs for A127807, there is no canonical definition to state claims against.
-/

/-! ## A127807.P3095068474216758661

`A046145(p?[a(n-1)+2])` with `a(0)=7, a(1)=1`
-/

namespace A127807.P3095068474216758661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127807.P3095068474216758661

/-! ## A127807.P16781905935525585913

`A046145(p?[A019430(n)+n])`
-/

namespace A127807.P16781905935525585913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127807.P16781905935525585913

/-! ## A127807.P16363442495314783164

`A111076(xor(1, A000040(n+1))+1)`
-/

namespace A127807.P16363442495314783164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (Int.xor 1 (A000040 (n + 1)) + 1).toNat

end

end A127807.P16363442495314783164

/-! ## A127807.P16444807477412586702

`A046145(A000040(n+1)+A000038(n))`
-/

namespace A127807.P16444807477412586702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A000040 (n + 1) + A000038 n).toNat

end

end A127807.P16444807477412586702

/-! ## A127807.P9491385838230376065

`A237420(A000040(n+1))+A001918(n+1)`
-/

namespace A127807.P9491385838230376065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (A000040 (n + 1)).toNat + A001918 (n + 1)

end

end A127807.P9491385838230376065

/-! ## A127807.P16977387790870955377

`A014963(9*n+3)*A001918(n+1)`
-/

namespace A127807.P16977387790870955377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 3) * A001918 (n + 1)

end

end A127807.P16977387790870955377

/-! ## A127807.P9686229688620253441

`A001918(n+1)+A000038(n²)`
-/

namespace A127807.P9686229688620253441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1) + A000038 (n ^ 2)

end

end A127807.P9686229688620253441

/-! ## A127807.P2082694009592137762

`A001918(n+1)+A000122(n²+1)`
-/

namespace A127807.P2082694009592137762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1) + A000122 (n ^ 2 + 1)

end

end A127807.P2082694009592137762

/-!
# A127808: Least positive primitive root of (n-th prime)^3.

The programs for A127808, there is no canonical definition to state claims against.
-/

/-! ## A127808.P11142032259976822293

`A127807(n+2)`
-/

namespace A127808.P11142032259976822293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127807 (n + 2)

end

end A127808.P11142032259976822293

/-! ## A127808.P11876876062252561599

`A046145(p?[2*n+1])`
-/

namespace A127808.P11876876062252561599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127808.P11876876062252561599

/-! ## A127808.P15669471820595430320

`A111076(p?[2*n+1])`
-/

namespace A127808.P15669471820595430320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127808.P15669471820595430320

/-! ## A127808.P17856381810240357532

`A046145(A065091(n+1))`
-/

namespace A127808.P17856381810240357532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A065091 (n + 1)).toNat

end

end A127808.P17856381810240357532

/-! ## A127808.P12847170012880761826

`A046145(A000040(n+2))`
-/

namespace A127808.P12847170012880761826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A000040 (n + 2)).toNat

end

end A127808.P12847170012880761826

/-! ## A127808.P17678351729584785124

`A046145(A006005(n+2))`
-/

namespace A127808.P17678351729584785124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A006005 (n + 2)).toNat

end

end A127808.P17678351729584785124

/-! ## A127808.P11844872008370422305

`A046145(sqrt(A001248(n+2)))`
-/

namespace A127808.P11844872008370422305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 2) : ℝ))).toNat

end

end A127808.P11844872008370422305

/-! ## A127808.P3440578110059755455

`A046145(Δ[A007504(n+1)])`
-/

namespace A127808.P3440578110059755455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (n + 1) - f1 n).toNat

end

end A127808.P3440578110059755455

/-! ## A127808.P10854430546831756122

`A111076(Δ[A007504(n+1)])`
-/

namespace A127808.P10854430546831756122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (f1 (n + 1) - f1 n).toNat

end

end A127808.P10854430546831756122

/-! ## A127808.P1235536511445729767

`A111076(A006093(n+2)+1)`
-/

namespace A127808.P1235536511445729767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A006093 (n + 2) + 1).toNat

end

end A127808.P1235536511445729767

/-! ## A127808.P14536536957610125178

`A046145(A100484(n+2)/2)`
-/

namespace A127808.P14536536957610125178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.roundAway ((A100484 (n + 2) : ℚ) / 2)).toNat

end

end A127808.P14536536957610125178

/-! ## A127808.P17924454627180417336

`A046145(eq[A020639(n+1), A327987(n)])`
-/

namespace A127808.P17924454627180417336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A127808.P17924454627180417336

/-! ## A127808.P218985290904062055

`A001918(n+2)-A237420(A000040(n+2))`
-/

namespace A127808.P218985290904062055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 2) - A237420 (A000040 (n + 2)).toNat

end

end A127808.P218985290904062055

/-! ## A127808.P10155881870953040139

`A174621(p?[2*n+1])`
-/

namespace A127808.P10155881870953040139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174621 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127808.P10155881870953040139

/-! ## A127808.P9068672376323118426

`A046145(eq[1, A107279(n)])`
-/

namespace A127808.P9068672376323118426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127808.P9068672376323118426

/-! ## A127808.P4528251208661678239

`A001918(n+2)+A002233(n+2)-A223942(n+2)`
-/

namespace A127808.P4528251208661678239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 2) + (A002233 (n + 2) - A223942 (n + 2))

end

end A127808.P4528251208661678239

/-! ## A127808.P10902731971031028346

`A001918(n+2)+A122028(n+2)-A223942(n+2)`
-/

namespace A127808.P10902731971031028346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 2) + (A122028 (n + 2) - A223942 (n + 2))

end

end A127808.P10902731971031028346

/-! ## A127808.P13371188680089796725

`A215573(A139099(2*n+1))+A001918(n+2)`
-/

namespace A127808.P13371188680089796725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215573 (A139099 (2 * n + 1)).toNat + A001918 (n + 2)

end

end A127808.P13371188680089796725

/-! ## A127808.P13574910662691247222

`A254309(A333315(n+1)+1)`
-/

namespace A127808.P13574910662691247222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254309 (A333315 (n + 1) + 1).toNat

end

end A127808.P13574910662691247222

/-! ## A127808.P7420618640801231715

`A254309(∑[A008330(n+1)]+1)`
-/

namespace A127808.P7420618640801231715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254309 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A127808.P7420618640801231715

/-!
# A127811: A127790(n)/2.

The programs for A127811, there is no canonical definition to state claims against.
-/

/-! ## A127811.P11010302491962673322

`A127790(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127811.P11010302491962673322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127790 n : ℚ) / 2

end

end A127811.P11010302491962673322

/-! ## A127811.P5083582303635088918

`(A124615(n)-A123991(n))/2`
-/

namespace A127811.P5083582303635088918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124615 n - A123991 n : ℚ) / 2

end

end A127811.P5083582303635088918

/-! ## A127811.P2625023362361705647

`2^A008683(A000040(n+1))*A127790(n)`
-/

namespace A127811.P2625023362361705647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) * (A127790 n : ℚ)

end

end A127811.P2625023362361705647

/-! ## A127811.P14152007284734548106

`2^A008683(A103666(n+1))*A127790(n)`
-/

namespace A127811.P14152007284734548106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A103666 (n + 1)).toNat : ℤ) * (A127790 n : ℚ)

end

end A127811.P14152007284734548106

/-! ## A127811.P16184704768369933993

`2^A008683(A006450(n+1))*A127790(n)`
-/

namespace A127811.P16184704768369933993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A127790 n : ℚ)

end

end A127811.P16184704768369933993

/-! ## A127811.P5980539141476028662

`2^A008683(A142661(n+1))*A127790(n)`
-/

namespace A127811.P5980539141476028662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A142661 (n + 1)).toNat : ℤ) * (A127790 n : ℚ)

end

end A127811.P5980539141476028662

/-! ## A127811.P6041657918077756991

`(A011900(n)*A127790(n))%A001653(n+1)`
-/

namespace A127811.P6041657918077756991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011900 n * A127790 n) (A001653 (n + 1))

end

end A127811.P6041657918077756991

/-!
# A127813: G.f.: (x^2+6*x^3+7*x^4+8*x^5+4*x^6-3*x^8-2*x^9-x^10) / ((1-x)^2*(1-x^2)^3*(1-x^3)^4*(1-x^4)).

The programs for A127813, there is no canonical definition to state claims against.
-/

/-! ## A127813.P8981470648592256887

`A000267(A081180(n))-A062355(n+1)`
-/

namespace A127813.P8981470648592256887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A081180 n).toNat - A062355 (n + 1)

end

end A127813.P8981470648592256887

/-! ## A127813.P4853155587791603144

`A043547(A084128(n))%A085411(n+1)`
-/

namespace A127813.P4853155587791603144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043547 (A084128 n).toNat) (A085411 (n + 1))

end

end A127813.P4853155587791603144

/-!
# A127814: a(n) = numerator of b(n), where b(1) = 2, b(n) = b(n-1) - 1/b(n-1).

The programs for A127814, there is no canonical definition to state claims against.
-/

/-! ## A127814.P15803879149358799710

`A065357(A023416(n))*A242995(n+1)`
-/

namespace A127814.P15803879149358799710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 (A023416 n).toNat * A242995 (n + 1)

end

end A127814.P15803879149358799710

/-! ## A127814.P1822250344184023696

`A033999(A243001(n))*A242995(n+1)`
-/

namespace A127814.P1822250344184023696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A243001 (n + 1583)).toNat * A242995 (n + 1)

end

end A127814.P1822250344184023696

/-! ## A127814.P11226505079158282818

`A127815(n+1)/A242996(n+1)*A242995(n+1)`
-/

namespace A127814.P11226505079158282818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127815 (n + 1) : ℚ) / (A242996 (n + 1) : ℚ) * (A242995 (n + 1) : ℚ)

end

end A127814.P11226505079158282818

/-! ## A127814.P16343178405075420110

`A242996(n+2)/A127815(n+1)`
-/

namespace A127814.P16343178405075420110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242996 (n + 2) : ℚ) / (A127815 (n + 1) : ℚ)

end

end A127814.P16343178405075420110

/-! ## A127814.P3142029963367885681

`∏[A242995(n+1)]/A127815(n+1)`
-/

namespace A127814.P3142029963367885681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242995 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A127815 (n + 1) : ℚ)

end

end A127814.P3142029963367885681

/-!
# A127815: a(n) = denominator of b(n), where b(1) = 2, b(n) = b(n-1) - 1/b(n-1).

The programs for A127815, there is no canonical definition to state claims against.
-/

/-! ## A127815.P8048095686162213426

`abs(A242996(n+1))`
-/

namespace A127815.P8048095686162213426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242996 (n + 1)|

end

end A127815.P8048095686162213426

/-! ## A127815.P3960558563941935960

`lcm(A007318(n), A242996(n+1))`
-/

namespace A127815.P3960558563941935960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A242996 (n + 1))

end

end A127815.P3960558563941935960

/-! ## A127815.P1452997647952321056

`lcm(-A242996(n+1), A033999(n))`
-/

namespace A127815.P1452997647952321056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A242996 (n + 1)) (A033999 n)

end

end A127815.P1452997647952321056

/-! ## A127815.P6125779443936274462

`gcd(A113263(n+1), A242996(n+1))`
-/

namespace A127815.P6125779443936274462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113263 (n + 1)) (A242996 (n + 1))

end

end A127815.P6125779443936274462

/-!
# A127822: Triangle whose row sums modulo 2 give the Fredholm-Rueppel sequence A036987.

The programs for A127822, the canonical program `A127822.P4246490665184018165` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127822 has offset 0).

The definition of A127822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127822.P4246490665184018165

`abs(A111967(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A127822

/-- `abs(A111967(n))` -/
def P4246490665184018165.Spec : Prop :=
  ∀ n, P4246490665184018165.a n = A127822 n

theorem P4246490665184018165.correct : P4246490665184018165.Spec := by
  intro n
  simp only [A127822]

end A127822

/-! ## A127822.P4777100774885353291

`and(1, A115452(n))`
-/

namespace A127822.P4777100774885353291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A115452 n)

end

end A127822.P4777100774885353291

namespace A127822

/-- `and(1, A115452(n))` -/
def P4777100774885353291.Spec : Prop :=
  ∀ n, P4777100774885353291.a n = A127822 n

end A127822

/-! ## A127822.P8699260963573097451

`A111967(2*n-n)²`
-/

namespace A127822.P8699260963573097451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 (2 * n - n) ^ 2

end

end A127822.P8699260963573097451

namespace A127822

/-- `A111967(2*n-n)²` -/
def P8699260963573097451.Spec : Prop :=
  ∀ n, P8699260963573097451.a n = A127822 n

end A127822

/-! ## A127822.P9481485809843032480

`A111967(n%(n+1))^2`
-/

namespace A127822.P9481485809843032480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111967 (n % (n + 1)) ^ 2

end

end A127822.P9481485809843032480

namespace A127822

/-- `A111967(n%(n+1))^2` -/
def P9481485809843032480.Spec : Prop :=
  ∀ n, P9481485809843032480.a n = A127822 n

end A127822

/-! ## A127822.P18403915314221416802

`gcd(A000038(n), A111967(n))`
-/

namespace A127822.P18403915314221416802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A111967 n)

end

end A127822.P18403915314221416802

namespace A127822

/-- `gcd(A000038(n), A111967(n))` -/
def P18403915314221416802.Spec : Prop :=
  ∀ n, (P18403915314221416802.a n : ℤ) = A127822 n

end A127822

/-! ## A127822.P3711883039533862426

`and(A060576(n), A111967(n))`
-/

namespace A127822.P3711883039533862426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A111967 n)

end

end A127822.P3711883039533862426

namespace A127822

/-- `and(A060576(n), A111967(n))` -/
def P3711883039533862426.Spec : Prop :=
  ∀ n, P3711883039533862426.a n = A127822 n

end A127822

/-! ## A127822.P5566462802659063352

`and(A111967(n), A123110(n))`
-/

namespace A127822.P5566462802659063352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111967 n) (A123110 n)

end

end A127822.P5566462802659063352

namespace A127822

/-- `and(A111967(n), A123110(n))` -/
def P5566462802659063352.Spec : Prop :=
  ∀ n, P5566462802659063352.a n = A127822 n

end A127822

/-! ## A127822.P15186776579030273956

`and(1, A127801(n))`
-/

namespace A127822.P15186776579030273956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127801 n)

end

end A127822.P15186776579030273956

namespace A127822

/-- `and(1, A127801(n))` -/
def P15186776579030273956.Spec : Prop :=
  ∀ n, P15186776579030273956.a n = A127822 n

end A127822

/-! ## A127822.P12398410272532347247

`gcd(A127800(n), A127801(n))`
-/

namespace A127822.P12398410272532347247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127800 n) (A127801 n)

end

end A127822.P12398410272532347247

namespace A127822

/-- `gcd(A127800(n), A127801(n))` -/
def P12398410272532347247.Spec : Prop :=
  ∀ n, (P12398410272532347247.a n : ℤ) = A127822 n

end A127822

/-! ## A127822.P10108696140736233214

`A091949(A127750(A127751(n)²))`
-/

namespace A127822.P10108696140736233214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091949 (A127750 (A127751 n ^ 2).toNat).toNat

end

end A127822.P10108696140736233214

namespace A127822

/-- `A091949(A127750(A127751(n)²))` -/
def P10108696140736233214.Spec : Prop :=
  ∀ n, P10108696140736233214.a n = A127822 n

end A127822

/-!
# A127823: Weighted Catalan numbers: number of combinatorial types of plane Morse links of order n.

The programs for A127823, there is no canonical definition to state claims against.
-/

/-! ## A127823.P12934761370623455881

`A291261(∑[n+3])`
-/

namespace A127823.P12934761370623455881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127823.P12934761370623455881

/-! ## A127823.P8448777808249804330

`lcm((-1)^n, A291261(A141214(n)))`
-/

namespace A127823.P8448777808249804330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A291261 (A141214 n).toNat)

end

end A127823.P8448777808249804330

/-! ## A127823.P4073492288365197893

`A291261(A141214(n))+A011844(n)`
-/

namespace A127823.P4073492288365197893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (A141214 n).toNat + A011844 n

end

end A127823.P4073492288365197893

/-! ## A127823.P12893361708040466814

`A291261(A141214(n))+A025465(n)`
-/

namespace A127823.P12893361708040466814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291261 (A141214 n).toNat + A025465 n

end

end A127823.P12893361708040466814

/-!
# A127824: Triangle in which row n is a sorted list of all numbers having total stopping time n in the Collatz (or 3x+1) iteration.

The programs for A127824, there is no canonical definition to state claims against.
-/

/-! ## A127824.P16189919313207947932

`A088975(n)+A000007(A008639(n))`
-/

namespace A127824.P16189919313207947932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088975 n + A000007 (A008639 n).toNat

end

end A127824.P16189919313207947932

/-! ## A127824.P14061588153076934256

`A088975(n)+A000038(A008778(n))`
-/

namespace A127824.P14061588153076934256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088975 n + A000038 (A008778 n).toNat

end

end A127824.P14061588153076934256

/-! ## A127824.P18113683873934052224

`A088975(n)+A000007(A035959(n))`
-/

namespace A127824.P18113683873934052224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088975 n + A000007 (A035959 n).toNat

end

end A127824.P18113683873934052224

/-! ## A127824.P878422679749185930

`A088975(n)+A056559(A062748(n))`
-/

namespace A127824.P878422679749185930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088975 n + A056559 (A062748 n).toNat

end

end A127824.P878422679749185930

/-! ## A127824.P568878149722218756

`A088975(n)%A007304(A080054(n))`
-/

namespace A127824.P568878149722218756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088975 n) (A007304 (A080054 n).toNat)

end

end A127824.P568878149722218756

/-!
# A127829: Number triangle mod(C(floor(k/2),n-k),2).

The programs for A127829, the canonical program `A127829.P18159773661985940597` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127829 has offset 0).

The definition of A127829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127829.P18159773661985940597

`A124788(n)%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127829

/-- `A124788(n)%2` -/
def P18159773661985940597.Spec : Prop :=
  ∀ n, P18159773661985940597.a n = A127829 n

theorem P18159773661985940597.correct : P18159773661985940597.Spec := by
  intro n
  simp only [A127829]

end A127829

/-! ## A127829.P10223961458822885542

`and(1, A124744(n))`
-/

namespace A127829.P10223961458822885542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124744 n)

end

end A127829.P10223961458822885542

namespace A127829

/-- `and(1, A124744(n))` -/
def P10223961458822885542.Spec : Prop :=
  ∀ n, P10223961458822885542.a n = A127829 n

end A127829

/-! ## A127829.P5087675727695218492

`and(1, A124788(2*n-n))`
-/

namespace A127829.P5087675727695218492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124788 (2 * n - n))

end

end A127829.P5087675727695218492

namespace A127829

/-- `and(1, A124788(2*n-n))` -/
def P5087675727695218492.Spec : Prop :=
  ∀ n, P5087675727695218492.a n = A127829 n

end A127829

/-! ## A127829.P6463667541853879810

`A000035(A124788(n))`
-/

namespace A127829.P6463667541853879810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A124788 n).toNat

end

end A127829.P6463667541853879810

namespace A127829

/-- `A000035(A124788(n))` -/
def P6463667541853879810.Spec : Prop :=
  ∀ n, P6463667541853879810.a n = A127829 n

end A127829

/-! ## A127829.P11919766734162464029

`A000035(abs(A124744(n)))`
-/

namespace A127829.P11919766734162464029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |A124744 n|.toNat

end

end A127829.P11919766734162464029

namespace A127829

/-- `A000035(abs(A124744(n)))` -/
def P11919766734162464029.Spec : Prop :=
  ∀ n, P11919766734162464029.a n = A127829 n

end A127829

/-! ## A127829.P16866817115436118435

`and(A124788(n), A174692(n))`
-/

namespace A127829.P16866817115436118435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A174692 n)

end

end A127829.P16866817115436118435

namespace A127829

/-- `and(A124788(n), A174692(n))` -/
def P16866817115436118435.Spec : Prop :=
  ∀ n, P16866817115436118435.a n = A127829 n

end A127829

/-! ## A127829.P7754520984610220189

`and(A124788(n), A195744(n))`
-/

namespace A127829.P7754520984610220189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A195744 n)

end

end A127829.P7754520984610220189

namespace A127829

/-- `and(A124788(n), A195744(n))` -/
def P7754520984610220189.Spec : Prop :=
  ∀ n, P7754520984610220189.a n = A127829 n

end A127829

/-! ## A127829.P3369639465317985566

`and(A124788(n), A196657(n))`
-/

namespace A127829.P3369639465317985566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A196657 n)

end

end A127829.P3369639465317985566

namespace A127829

/-- `and(A124788(n), A196657(n))` -/
def P3369639465317985566.Spec : Prop :=
  ∀ n, P3369639465317985566.a n = A127829 n

end A127829

/-! ## A127829.P15702689800662572639

`and(A124788(n), A132750(n))`
-/

namespace A127829.P15702689800662572639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A132750 n)

end

end A127829.P15702689800662572639

namespace A127829

/-- `and(A124788(n), A132750(n))` -/
def P15702689800662572639.Spec : Prop :=
  ∀ n, P15702689800662572639.a n = A127829 n

end A127829

/-! ## A127829.P16453550135760153209

`and(A124788(n), A135471(n+1))`
-/

namespace A127829.P16453550135760153209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A135471 (n + 1))

end

end A127829.P16453550135760153209

namespace A127829

/-- `and(A124788(n), A135471(n+1))` -/
def P16453550135760153209.Spec : Prop :=
  ∀ n, P16453550135760153209.a n = A127829 n

end A127829

/-! ## A127829.P12771595248592099068

`and(A124788(n), A168298(n))`
-/

namespace A127829.P12771595248592099068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A168298 n)

end

end A127829.P12771595248592099068

namespace A127829

/-- `and(A124788(n), A168298(n))` -/
def P12771595248592099068.Spec : Prop :=
  ∀ n, P12771595248592099068.a n = A127829 n

end A127829

/-! ## A127829.P5011345775600439250

`and(A124788(n), A248917(n))`
-/

namespace A127829.P5011345775600439250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A248917 n)

end

end A127829.P5011345775600439250

namespace A127829

/-- `and(A124788(n), A248917(n))` -/
def P5011345775600439250.Spec : Prop :=
  ∀ n, P5011345775600439250.a n = A127829 n

end A127829

/-! ## A127829.P8449392578432912762

`and(A124788(n), A258936(n))`
-/

namespace A127829.P8449392578432912762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A258936 n)

end

end A127829.P8449392578432912762

namespace A127829

/-- `and(A124788(n), A258936(n))` -/
def P8449392578432912762.Spec : Prop :=
  ∀ n, P8449392578432912762.a n = A127829 n

end A127829

/-! ## A127829.P14558732948209504851

`and(A124788(n), A211388(n))`
-/

namespace A127829.P14558732948209504851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A211388 n)

end

end A127829.P14558732948209504851

namespace A127829

/-- `and(A124788(n), A211388(n))` -/
def P14558732948209504851.Spec : Prop :=
  ∀ n, P14558732948209504851.a n = A127829 n

end A127829

/-! ## A127829.P7510592195327083839

`A000035(A124744(n)²)`
-/

namespace A127829.P7510592195327083839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A124744 n ^ 2).toNat

end

end A127829.P7510592195327083839

namespace A127829

/-- `A000035(A124744(n)²)` -/
def P7510592195327083839.Spec : Prop :=
  ∀ n, P7510592195327083839.a n = A127829 n

end A127829

/-! ## A127829.P4539805268299883632

`and(A124788(n), A174389(n))`
-/

namespace A127829.P4539805268299883632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A174389 n)

end

end A127829.P4539805268299883632

namespace A127829

/-- `and(A124788(n), A174389(n))` -/
def P4539805268299883632.Spec : Prop :=
  ∀ n, P4539805268299883632.a n = A127829 n

end A127829

/-! ## A127829.P3856129295359384007

`and(A124788(n), A189318(n))`
-/

namespace A127829.P3856129295359384007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A189318 n)

end

end A127829.P3856129295359384007

namespace A127829

/-- `and(A124788(n), A189318(n))` -/
def P3856129295359384007.Spec : Prop :=
  ∀ n, P3856129295359384007.a n = A127829 n

end A127829

/-! ## A127829.P829241850871397222

`and(A124788(n), A172196(n))`
-/

namespace A127829.P829241850871397222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A172196 n)

end

end A127829.P829241850871397222

namespace A127829

/-- `and(A124788(n), A172196(n))` -/
def P829241850871397222.Spec : Prop :=
  ∀ n, P829241850871397222.a n = A127829 n

end A127829

/-! ## A127829.P2838845845265219627

`and(A124788(n), A134169(n))`
-/

namespace A127829.P2838845845265219627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124788 n) (A134169 n)

end

end A127829.P2838845845265219627

namespace A127829

/-- `and(A124788(n), A134169(n))` -/
def P2838845845265219627.Spec : Prop :=
  ∀ n, P2838845845265219627.a n = A127829 n

end A127829

/-! ## A127829.P15015145244805120873

`and(1, A124788(n)*A140413(n))`
-/

namespace A127829.P15015145244805120873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A124788 n * A140413 n)

end

end A127829.P15015145244805120873

namespace A127829

/-- `and(1, A124788(n)*A140413(n))` -/
def P15015145244805120873.Spec : Prop :=
  ∀ n, P15015145244805120873.a n = A127829 n

end A127829

/-!
# A127830: a(n) = Sum_{k=0..n} (binomial(floor(k/2),n-k) mod 2).

The programs for A127830, there is no canonical definition to state claims against.
-/

/-! ## A127830.P17583753084813281808

`A106345(2*n)`
-/

namespace A127830.P17583753084813281808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (2 * n)

end

end A127830.P17583753084813281808

/-! ## A127830.P7446383088573218410

`A000027(A106345(n+n))`
-/

namespace A127830.P7446383088573218410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A106345 (n + n)).toNat

end

end A127830.P7446383088573218410

/-! ## A127830.P14150819724025331304

`and(-1, A106345(A005843(n)))`
-/

namespace A127830.P14150819724025331304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A106345 (A005843 n).toNat)

end

end A127830.P14150819724025331304

/-! ## A127830.P15166809505156920074

`A106345(Δ[n²])+A106345(n)`
-/

namespace A127830.P15166809505156920074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A106345 n

end

end A127830.P15166809505156920074

/-! ## A127830.P12367670141381856548

`or(A000007(n), A106345(Δ[n²]-1))`
-/

namespace A127830.P12367670141381856548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A106345 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat)

end

end A127830.P12367670141381856548

/-! ## A127830.P1190508448103178602

`∑{d}[A106345(Δ[n²]-1), A000010(#)]`
-/

namespace A127830.P1190508448103178602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A127830.P1190508448103178602

/-! ## A127830.P7005230790620816203

`A000196(A106345(Δ[n²]-1)²)`
-/

namespace A127830.P7005230790620816203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A106345 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat ^ 2).toNat

end

end A127830.P7005230790620816203

/-! ## A127830.P567982876543800710

`A002260(A106345(n+n)+∑[n])`
-/

namespace A127830.P567982876543800710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A106345 (n + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A127830.P567982876543800710

/-! ## A127830.P965927864197827658

`A001222(2^A106345(n+n))`
-/

namespace A127830.P965927864197827658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A106345 (n + n) : ℤ))).toNat

end

end A127830.P965927864197827658

/-!
# A127831: Inverse of number triangle mod(C(floor(k/2),n-k),2).

The programs for A127831, there is no canonical definition to state claims against.
-/

/-! ## A127831.P11320344177054176776

`A046980(A271875(n+1)²-A271875(n+1))`
-/

namespace A127831.P11320344177054176776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (A271875 (n + 1) ^ 2 - A271875 (n + 1)).toNat

end

end A127831.P11320344177054176776

/-! ## A127831.P11175190279387873865

`A046980((A271875(n+1)-1)*A271875(n+1))`
-/

namespace A127831.P11175190279387873865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 ((A271875 (n + 1) - 1) * A271875 (n + 1)).toNat

end

end A127831.P11175190279387873865

/-! ## A127831.P2293563329621071966

`A016359(A224531(n+1)%A203031(n+1))`
-/

namespace A127831.P2293563329621071966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016359 (Int.tmod (A224531 (n + 1)) (A203031 (n + 1))).toNat

end

end A127831.P2293563329621071966

/-! ## A127831.P15965110474932541889

`A015777(A212085(n+2))`
-/

namespace A127831.P15965110474932541889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015777 (A212085 (n + 2)).toNat

end

end A127831.P15965110474932541889

/-! ## A127831.P15102363491999272640

`-A304438(A249844(n+1))`
-/

namespace A127831.P15102363491999272640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A304438 (A249844 (n + 1)).toNat

end

end A127831.P15102363491999272640

/-!
# A127832: Array T by antidiagonals: for h>=0 and k>=0, T(h,k)=number of UR paths from (0,0) to (h,k) that touch the line y=2x/3 only at lattice points. A UR path is a path of steps of length 1 each directed up or right.

The programs for A127832, there is no canonical definition to state claims against.
-/

/-! ## A127832.P18361364488140055064

`A047020(n)%A097346(n)`
-/

namespace A127832.P18361364488140055064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047020 n) (A097346 n)

end

end A127832.P18361364488140055064

/-! ## A127832.P3861713042746925483

`A047020(n)-A000007(4*C(n+2, 3))`
-/

namespace A127832.P3861713042746925483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 n - A000007 (4 * Nat.choose (n + 2) 3)

end

end A127832.P3861713042746925483

/-! ## A127832.P8615875708253415082

`A047020(n)-A025455(A000032(n))`
-/

namespace A127832.P8615875708253415082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 n - A025455 (A000032 n).toNat

end

end A127832.P8615875708253415082

/-! ## A127832.P4974329887654274422

`A047020(n)-A063524(A055403(n))`
-/

namespace A127832.P4974329887654274422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 n - A063524 (A055403 n).toNat

end

end A127832.P4974329887654274422

/-! ## A127832.P4916227636035262590

`A047020(n)-A019590(A265062(n))`
-/

namespace A127832.P4916227636035262590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 n - A019590 (A265062 n).toNat

end

end A127832.P4916227636035262590

/-!
# A127834: Numbers whose 8-bit binary representation, when rotated by up to one bit, contains every 3-bit binary representation for the numbers 0 through 7.

The programs for A127834, there is no canonical definition to state claims against.
-/

/-! ## A127834.P10745952628333658109

`eq[A140191(n), A297661(A319416(n))]`
-/

namespace A127834.P10745952628333658109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297661 (A319416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127834.P10745952628333658109

/-! ## A127834.P12547942129255074573

`eq[A003983(A253065(n)), A011655(n)]`
-/

namespace A127834.P12547942129255074573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A253065 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127834.P12547942129255074573

/-!
# A127835: (Order of Galois group of Chebyshev polynomial)/(order of polynomial); or A124827(n)/n.

The programs for A127835, there is no canonical definition to state claims against.
-/

/-! ## A127835.P14383099585385398751

`∏{p}[n+1, #-1]*∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A127835.P14383099585385398751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ)

end

end A127835.P14383099585385398751

/-! ## A127835.P372662022472740835

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/Δ[comp[9*n]]`
-/

namespace A127835.P372662022472740835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) / ((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℚ)

end

end A127835.P372662022472740835

/-! ## A127835.P11539416807889542668

`A390753((n+1)²)`
-/

namespace A127835.P11539416807889542668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390753 ((n + 1) ^ 2)

end

end A127835.P11539416807889542668

/-! ## A127835.P16275551909030799286

`A124827(n+1)/(n+1)`
-/

namespace A127835.P16275551909030799286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124827 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A127835.P16275551909030799286

/-! ## A127835.P6945530258452750752

`A000010(gcd(n+1, lcm(4, ∑[n])))`
-/

namespace A127835.P6945530258452750752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd (n + 1) (Nat.lcm 4 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A127835.P6945530258452750752

/-!
# A127836: Triangle read by rows: row n gives coefficients (lowest degree first) of P_n(x), where P_0(x) = P_1(x) = 1; P_n(x) = P_{n-1}(x) + x^(n-1)*P_{n-2}(x).

The programs for A127836, there is no canonical definition to state claims against.
-/

/-! ## A127836.P5303464435923948779

`A119473(A119469(n+1)%A119481(n+1))`
-/

namespace A127836.P5303464435923948779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119473 (Int.tmod (A119469 (n + 1)) (A119481 (n + 1))).toNat

end

end A127836.P5303464435923948779

/-! ## A127836.P5343654017756624137

`A119469(A152881(A213777(A213777(A119469(n+1)))))`
-/

namespace A127836.P5343654017756624137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119469 (A152881 (A213777 (A213777 (A119469 (n + 1)).toNat).toNat).toNat).toNat

end

end A127836.P5343654017756624137

/-! ## A127836.P7572356416417617086

`A334297(A119469(n+1)!)`
-/

namespace A127836.P7572356416417617086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (Nat.factorial (A119469 (n + 1)).toNat)

end

end A127836.P7572356416417617086

/-! ## A127836.P11451933735918148278

`A275437(A212505(A119469(n+1)²))`
-/

namespace A127836.P11451933735918148278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (A212505 (A119469 (n + 1) ^ 2).toNat).toNat

end

end A127836.P11451933735918148278

/-! ## A127836.P17496248621675469133

`gcd(A000837(A119469(n+1)), A147557(n+1))`
-/

namespace A127836.P17496248621675469133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000837 (A119469 (n + 1)).toNat) (A147557 (n + 1))

end

end A127836.P17496248621675469133

/-!
# A127837: Numbers k such that ((k+1)^k-1)/k^2 is a prime.

The programs for A127837, there is no canonical definition to state claims against.
-/

/-! ## A127837.P8921590925971380512

`A054964(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A127837.P8921590925971380512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A054964 (a (n - 1)).toNat

end

end A127837.P8921590925971380512

/-!
# A127838: a(1) = 1, a(2) = a(3) = a(4) = 0; a(n) = a(n-4) + a(n-3) for n > 4.

The programs for A127838, the canonical program `A127838.P14786684091954905119` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127838 has offset 1).

The definition of A127838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-3)` (program `A127838.P14786684091954905119`, by `A127838.P14786684091954905119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127838.P14786684091954905119

`a(n-4)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127838

/-- `a(n-4)+a(n-3)` -/
def P14786684091954905119.Spec : Prop :=
  ∀ n, (P14786684091954905119.a n : ℤ) = A127838 (n + 1)

theorem P14786684091954905119.correct : P14786684091954905119.Spec := by
  intro n
  simp only [A127838, Nat.add_sub_cancel]

end A127838

/-! ## A127838.P5429224840119897532

`a(n-1)-(a(n-5)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A127838.P5429224840119897532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 3))

end

end A127838.P5429224840119897532

namespace A127838

/-- `a(n-1)-(a(n-5)-a(n-3))` -/
def P5429224840119897532.Spec : Prop :=
  ∀ n, P5429224840119897532.a n = A127838 (n + 1)

end A127838

/-! ## A127838.P12528115366892941282

`A017817(abs(2-abs(2-n)))`
-/

namespace A127838.P12528115366892941282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 |(2 - |2 - (n : ℤ)|)|.toNat

end

end A127838.P12528115366892941282

namespace A127838

/-- `A017817(abs(2-abs(2-n)))` -/
def P12528115366892941282.Spec : Prop :=
  ∀ n, P12528115366892941282.a n = A127838 (n + 1)

end A127838

/-! ## A127838.P11905097036973735311

`A017817(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A127838.P11905097036973735311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017817 (n - 1) - a (n - 1)

end

end A127838.P11905097036973735311

namespace A127838

/-- `A017817(n-1)-a(n-1)` -/
def P11905097036973735311.Spec : Prop :=
  ∀ n, P11905097036973735311.a n = A127838 (n + 1)

end A127838

/-! ## A127838.P5997517286198650382

`Δ[A079398(n)]`
-/

namespace A127838.P5997517286198650382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127838.P5997517286198650382

namespace A127838

/-- `Δ[A079398(n)]` -/
def P5997517286198650382.Spec : Prop :=
  ∀ n, P5997517286198650382.a n = A127838 (n + 1)

end A127838

/-! ## A127838.P468850825271375282

`A079398(n+1)-A079398(n)`
-/

namespace A127838.P468850825271375282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079398 (n + 1) - A079398 n

end

end A127838.P468850825271375282

namespace A127838

/-- `A079398(n+1)-A079398(n)` -/
def P468850825271375282.Spec : Prop :=
  ∀ n, P468850825271375282.a n = A127838 (n + 1)

end A127838

/-! ## A127838.P3497066158517745641

`Δ[A017817(n+3)+Δ[A017817(n)]]`
-/

namespace A127838.P3497066158517745641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 (n + 3) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127838.P3497066158517745641

namespace A127838

/-- `Δ[A017817(n+3)+Δ[A017817(n)]]` -/
def P3497066158517745641.Spec : Prop :=
  ∀ n, P3497066158517745641.a n = A127838 (n + 1)

end A127838

/-!
# A127839: a(1)=1, a(2)=...=a(5)=0, a(n) = a(n-5) + a(n-4) for n > 5.

The programs for A127839, the canonical program `A127839.P15318313136610786691` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127839 has offset 1).

The definition of A127839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-5)+a(n-4)` (program `A127839.P15318313136610786691`, by `A127839.P15318313136610786691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127839.P15318313136610786691

`a(n-5)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127839

/-- `a(n-5)+a(n-4)` -/
def P15318313136610786691.Spec : Prop :=
  ∀ n, (P15318313136610786691.a n : ℤ) = A127839 (n + 1)

theorem P15318313136610786691.correct : P15318313136610786691.Spec := by
  intro n
  simp only [A127839, Nat.add_sub_cancel]

end A127839

/-! ## A127839.P5527384110794141161

`A017827(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A127839.P5527384110794141161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017827 (n - 1) - a (n - 1)

end

end A127839.P5527384110794141161

namespace A127839

/-- `A017827(n-1)-a(n-1)` -/
def P5527384110794141161.Spec : Prop :=
  ∀ n, P5527384110794141161.a n = A127839 (n + 1)

end A127839

/-! ## A127839.P15701702172170769343

`Δ[A124789(n+3)]`
-/

namespace A127839.P15701702172170769343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127839.P15701702172170769343

namespace A127839

/-- `Δ[A124789(n+3)]` -/
def P15701702172170769343.Spec : Prop :=
  ∀ n, P15701702172170769343.a n = A127839 (n + 1)

end A127839

/-! ## A127839.P6782319893599831963

`A103372(n+1)-A124789(n+3)`
-/

namespace A127839.P6782319893599831963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 1) - A124789 (n + 3)

end

end A127839.P6782319893599831963

namespace A127839

/-- `A103372(n+1)-A124789(n+3)` -/
def P6782319893599831963.Spec : Prop :=
  ∀ n, P6782319893599831963.a n = A127839 (n + 1)

end A127839

/-! ## A127839.P16780222485984613535

`Δ[A017827(n+1)+A017827(n+3)]`
-/

namespace A127839.P16780222485984613535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (n + 1) + A017827 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127839.P16780222485984613535

namespace A127839

/-- `Δ[A017827(n+1)+A017827(n+3)]` -/
def P16780222485984613535.Spec : Prop :=
  ∀ n, P16780222485984613535.a n = A127839 (n + 1)

end A127839

/-! ## A127839.P11494346459015572896

`A103372(n+1)+A017827(n)-A103372(n+2)`
-/

namespace A127839.P11494346459015572896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 1) + (A017827 n - A103372 (n + 2))

end

end A127839.P11494346459015572896

namespace A127839

/-- `A103372(n+1)+A017827(n)-A103372(n+2)` -/
def P11494346459015572896.Spec : Prop :=
  ∀ n, P11494346459015572896.a n = A127839 (n + 1)

end A127839

/-! ## A127839.P17275647445158009885

`Δ[A103372(n+5)-A103372(n+1)]`
-/

namespace A127839.P17275647445158009885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 5) - A103372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127839.P17275647445158009885

namespace A127839

/-- `Δ[A103372(n+5)-A103372(n+1)]` -/
def P17275647445158009885.Spec : Prop :=
  ∀ n, P17275647445158009885.a n = A127839 (n + 1)

end A127839

/-! ## A127839.P4900854732678542504

`Δ[abs(A124746(n+3))]`
-/

namespace A127839.P4900854732678542504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124746 (n + 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127839.P4900854732678542504

namespace A127839

/-- `Δ[abs(A124746(n+3))]` -/
def P4900854732678542504.Spec : Prop :=
  ∀ n, P4900854732678542504.a n = A127839 (n + 1)

end A127839

/-!
# A127840: a(1)=1, a(2)=...=a(6)=0, a(n) = a(n-6)+a(n-5) for n>6.

The programs for A127840, the canonical program `A127840.P4844442858645179222` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127840 has offset 1).

The definition of A127840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-6)+a(n-5)` (program `A127840.P4844442858645179222`, by `A127840.P4844442858645179222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127840.P4844442858645179222

`a(n-6)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127840

/-- `a(n-6)+a(n-5)` -/
def P4844442858645179222.Spec : Prop :=
  ∀ n, (P4844442858645179222.a n : ℤ) = A127840 (n + 1)

theorem P4844442858645179222.correct : P4844442858645179222.Spec := by
  intro n
  simp only [A127840, Nat.add_sub_cancel]

end A127840

/-! ## A127840.P17466925986942315404

`A017837(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A127840.P17466925986942315404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017837 (n - 1) - a (n - 1)

end

end A127840.P17466925986942315404

namespace A127840

/-- `A017837(n-1)-a(n-1)` -/
def P17466925986942315404.Spec : Prop :=
  ∀ n, P17466925986942315404.a n = A127840 (n + 1)

end A127840

/-! ## A127840.P13101326026575238554

`A017837(n)-Δ[A103373(n+1)]`
-/

namespace A127840.P13101326026575238554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 n - (f1 (n + 1) - f1 n)

end

end A127840.P13101326026575238554

namespace A127840

/-- `A017837(n)-Δ[A103373(n+1)]` -/
def P13101326026575238554.Spec : Prop :=
  ∀ n, P13101326026575238554.a n = A127840 (n + 1)

end A127840

/-! ## A127840.P4106428048741048611

`Δ[A103373(n+6)-A103373(n+1)]`
-/

namespace A127840.P4106428048741048611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (n + 6) - A103373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127840.P4106428048741048611

namespace A127840

/-- `Δ[A103373(n+6)-A103373(n+1)]` -/
def P4106428048741048611.Spec : Prop :=
  ∀ n, P4106428048741048611.a n = A127840 (n + 1)

end A127840

/-! ## A127840.P14755088550606388601

`A017837(n-6%A244800(n+1))`
-/

namespace A127840.P14755088550606388601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 ((n : ℤ) - Int.tmod 6 (A244800 (n + 1))).toNat

end

end A127840.P14755088550606388601

namespace A127840

/-- `A017837(n-6%A244800(n+1))` -/
def P14755088550606388601.Spec : Prop :=
  ∀ n, P14755088550606388601.a n = A127840 (n + 1)

end A127840

/-!
# A127841: a(1)=1, a(2)=...=a(7)=0, a(n) = a(n-7)+a(n-6) for n>7.

The programs for A127841, the canonical program `A127841.P2441383861698767038` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127841 has offset 1).

The definition of A127841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127841.P2441383861698767038

`a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127841

/-- `a(n-6)+a(n-7)` -/
def P2441383861698767038.Spec : Prop :=
  ∀ n, (P2441383861698767038.a n : ℤ) = A127841 (n + 1)

theorem P2441383861698767038.correct : P2441383861698767038.Spec := by
  intro n
  simp only [A127841, Nat.add_sub_cancel]

end A127841

/-! ## A127841.P4088408798717945748

`A017847(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A127841.P4088408798717945748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017847 (n - 1) - a (n - 1)

end

end A127841.P4088408798717945748

namespace A127841

/-- `A017847(n-1)-a(n-1)` -/
def P4088408798717945748.Spec : Prop :=
  ∀ n, P4088408798717945748.a n = A127841 (n + 1)

end A127841

/-! ## A127841.P13497977685812514018

`A306755(n)-6*A017847(n)`
-/

namespace A127841.P13497977685812514018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306755 n - 6 * A017847 n

end

end A127841.P13497977685812514018

namespace A127841

/-- `A306755(n)-6*A017847(n)` -/
def P13497977685812514018.Spec : Prop :=
  ∀ n, P13497977685812514018.a n = A127841 (n + 1)

end A127841

/-! ## A127841.P16973613924938665308

`Δ[A103374(n+7)-A103374(n+1)]`
-/

namespace A127841.P16973613924938665308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103374 (n + 7) - A103374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127841.P16973613924938665308

namespace A127841

/-- `Δ[A103374(n+7)-A103374(n+1)]` -/
def P16973613924938665308.Spec : Prop :=
  ∀ n, P16973613924938665308.a n = A127841 (n + 1)

end A127841

/-! ## A127841.P6738980847246337448

`Δ[abs(A124751(n+5))]`
-/

namespace A127841.P6738980847246337448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124751 (n + 5)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127841.P6738980847246337448

namespace A127841

/-- `Δ[abs(A124751(n+5))]` -/
def P6738980847246337448.Spec : Prop :=
  ∀ n, P6738980847246337448.a n = A127841 (n + 1)

end A127841

/-! ## A127841.P12925570740722890561

`abs(A124751(n+5)+A124751(n+6))`
-/

namespace A127841.P12925570740722890561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124751 (n + 5) + A124751 (n + 6)|

end

end A127841.P12925570740722890561

namespace A127841

/-- `abs(A124751(n+5)+A124751(n+6))` -/
def P12925570740722890561.Spec : Prop :=
  ∀ n, P12925570740722890561.a n = A127841 (n + 1)

end A127841

/-! ## A127841.P694605140780603648

`A306755(n)%A008486(A017847(n))`
-/

namespace A127841.P694605140780603648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306755 n) (A008486 (A017847 n).toNat)

end

end A127841.P694605140780603648

namespace A127841

/-- `A306755(n)%A008486(A017847(n))` -/
def P694605140780603648.Spec : Prop :=
  ∀ n, P694605140780603648.a n = A127841 (n + 1)

end A127841

/-!
# A127842: a(1)=1, a(2)=...=a(8)=0, a(n) = a(n-8)+a(n-7) for n>8.

The programs for A127842, the canonical program `A127842.P1086830190189605208` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127842 has offset 1).

The definition of A127842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127842.P1086830190189605208

`a(n-7)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127842

/-- `a(n-7)+a(n-8)` -/
def P1086830190189605208.Spec : Prop :=
  ∀ n, (P1086830190189605208.a n : ℤ) = A127842 (n + 1)

theorem P1086830190189605208.correct : P1086830190189605208.Spec := by
  intro n
  simp only [A127842, Nat.add_sub_cancel]

end A127842

/-! ## A127842.P9780142692743942354

`A017857(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A127842.P9780142692743942354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017857 (n - 1) - a (n - 1)

end

end A127842.P9780142692743942354

namespace A127842

/-- `A017857(n-1)-a(n-1)` -/
def P9780142692743942354.Spec : Prop :=
  ∀ n, P9780142692743942354.a n = A127842 (n + 1)

end A127842

/-! ## A127842.P4206023827371327752

`A017857(n)-Δ[A103375(n+1)]`
-/

namespace A127842.P4206023827371327752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 n - (f1 (n + 1) - f1 n)

end

end A127842.P4206023827371327752

namespace A127842

/-- `A017857(n)-Δ[A103375(n+1)]` -/
def P4206023827371327752.Spec : Prop :=
  ∀ n, P4206023827371327752.a n = A127842 (n + 1)

end A127842

/-! ## A127842.P17780896913934623739

`A306756(n)-7*A017857(n)`
-/

namespace A127842.P17780896913934623739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306756 n - 7 * A017857 n

end

end A127842.P17780896913934623739

namespace A127842

/-- `A306756(n)-7*A017857(n)` -/
def P17780896913934623739.Spec : Prop :=
  ∀ n, P17780896913934623739.a n = A127842 (n + 1)

end A127842

/-! ## A127842.P6677551886089973114

`Δ[A103375(n+8)-A103375(n+1)]`
-/

namespace A127842.P6677551886089973114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103375 (n + 8) - A103375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127842.P6677551886089973114

namespace A127842

/-- `Δ[A103375(n+8)-A103375(n+1)]` -/
def P6677551886089973114.Spec : Prop :=
  ∀ n, P6677551886089973114.a n = A127842 (n + 1)

end A127842

/-! ## A127842.P6422650166091935790

`A127843(lt[A054897(n), A053829(n)])`
-/

namespace A127842.P6422650166091935790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127842.P6422650166091935790

namespace A127842

/-- `A127843(lt[A054897(n), A053829(n)])` -/
def P6422650166091935790.Spec : Prop :=
  ∀ n, P6422650166091935790.a n = A127842 (n + 1)

end A127842

/-!
# A127843: a(1) = 1, a(2) = ... = a(9) = 0, a(n) = a(n-9)+a(n-8) for n>9.

The programs for A127843, the canonical program `A127843.P10950889295994501467` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127843 has offset 1).

The definition of A127843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127843.P10950889295994501467

`a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127843

/-- `a(n-8)+a(n-9)` -/
def P10950889295994501467.Spec : Prop :=
  ∀ n, (P10950889295994501467.a n : ℤ) = A127843 (n + 1)

theorem P10950889295994501467.correct : P10950889295994501467.Spec := by
  intro n
  simp only [A127843, Nat.add_sub_cancel]

end A127843

/-! ## A127843.P1806983649277921186

`A017867(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A127843.P1806983649277921186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017867 (n - 1) - a (n - 1)

end

end A127843.P1806983649277921186

namespace A127843

/-- `A017867(n-1)-a(n-1)` -/
def P1806983649277921186.Spec : Prop :=
  ∀ n, P1806983649277921186.a n = A127843 (n + 1)

end A127843

/-! ## A127843.P16435339482625662910

`A017867(n)-Δ[A103376(n+1)]`
-/

namespace A127843.P16435339482625662910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 n - (f1 (n + 1) - f1 n)

end

end A127843.P16435339482625662910

namespace A127843

/-- `A017867(n)-Δ[A103376(n+1)]` -/
def P16435339482625662910.Spec : Prop :=
  ∀ n, P16435339482625662910.a n = A127843 (n + 1)

end A127843

/-! ## A127843.P6952081729154769722

`A306757(n)-8*A017867(n)`
-/

namespace A127843.P6952081729154769722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306757 n - 8 * A017867 n

end

end A127843.P6952081729154769722

namespace A127843

/-- `A306757(n)-8*A017867(n)` -/
def P6952081729154769722.Spec : Prop :=
  ∀ n, P6952081729154769722.a n = A127843 (n + 1)

end A127843

/-! ## A127843.P3105639877057340503

`Δ[A103376(n+9)-A103376(n+1)]`
-/

namespace A127843.P3105639877057340503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103376 (n + 9) - A103376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127843.P3105639877057340503

namespace A127843

/-- `Δ[A103376(n+9)-A103376(n+1)]` -/
def P3105639877057340503.Spec : Prop :=
  ∀ n, P3105639877057340503.a n = A127843 (n + 1)

end A127843

/-! ## A127843.P1779525586167015195

`Δ[A103376(A028310(n))%A029748(n)]`
-/

namespace A127843.P1779525586167015195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103376 (A028310 n).toNat) (A029748 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127843.P1779525586167015195

namespace A127843

/-- `Δ[A103376(A028310(n))%A029748(n)]` -/
def P1779525586167015195.Spec : Prop :=
  ∀ n, P1779525586167015195.a n = A127843 (n + 1)

end A127843

/-! ## A127843.P15565439114923370433

`A306757(n)%A022144(A017867(n))`
-/

namespace A127843.P15565439114923370433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306757 n) (A022144 (A017867 n).toNat)

end

end A127843.P15565439114923370433

namespace A127843

/-- `A306757(n)%A022144(A017867(n))` -/
def P15565439114923370433.Spec : Prop :=
  ∀ n, P15565439114923370433.a n = A127843 (n + 1)

end A127843

/-! ## A127843.P3060453371881951057

`A127844(A168183(n+1)%A103381(n+1))`
-/

namespace A127843.P3060453371881951057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (Int.tmod (A168183 (n + 1)) (A103381 (n + 1))).toNat

end

end A127843.P3060453371881951057

namespace A127843

/-- `A127844(A168183(n+1)%A103381(n+1))` -/
def P3060453371881951057.Spec : Prop :=
  ∀ n, P3060453371881951057.a n = A127843 (n + 1)

end A127843

/-!
# A127844: a(1) = 1, a(2) = ... = a(10) = 0, a(n) = a(n-10)+a(n-9) for n>10.

The programs for A127844, the canonical program `A127844.P7080419909099539167` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127844 has offset 1).

The definition of A127844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127844.P7080419909099539167

`a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0, a(8)=0, a(9)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127844

/-- `a(n-9)+a(n-10)` -/
def P7080419909099539167.Spec : Prop :=
  ∀ n, (P7080419909099539167.a n : ℤ) = A127844 (n + 1)

theorem P7080419909099539167.correct : P7080419909099539167.Spec := by
  intro n
  simp only [A127844, Nat.add_sub_cancel]

end A127844

/-! ## A127844.P561639194001892280

`A017877(A164009(n)%(n+2))`
-/

namespace A127844.P561639194001892280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (Int.tmod (A164009 n) (n + 2 : ℤ)).toNat

end

end A127844.P561639194001892280

namespace A127844

/-- `A017877(A164009(n)%(n+2))` -/
def P561639194001892280.Spec : Prop :=
  ∀ n, P561639194001892280.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P14674572257747717733

`A017877(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A127844.P14674572257747717733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017877 (n - 1) - a (n - 1)

end

end A127844.P14674572257747717733

namespace A127844

/-- `A017877(n-1)-a(n-1)` -/
def P14674572257747717733.Spec : Prop :=
  ∀ n, P14674572257747717733.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P11419913206032074558

`Δ[A103377(n-a(C(2, n)))]` with `a(0)=0, a(1)=1`
-/

namespace A127844.P11419913206032074558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A103377 ((n : ℤ) - f1 (Nat.choose 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127844.P11419913206032074558

namespace A127844

/-- `Δ[A103377(n-a(C(2, n)))]` -/
def P11419913206032074558.Spec : Prop :=
  ∀ n, P11419913206032074558.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P6581421809496769852

`A017877(n)-Δ[A103377(n+1)]`
-/

namespace A127844.P6581421809496769852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 n - (f1 (n + 1) - f1 n)

end

end A127844.P6581421809496769852

namespace A127844

/-- `A017877(n)-Δ[A103377(n+1)]` -/
def P6581421809496769852.Spec : Prop :=
  ∀ n, P6581421809496769852.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P7241371269964389760

`Δ[A103377(n+10)]-Δ[A103377(n+1)]`
-/

namespace A127844.P7241371269964389760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (n + 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (f2 (n + 1) - f2 n)

end

end A127844.P7241371269964389760

namespace A127844

/-- `Δ[A103377(n+10)]-Δ[A103377(n+1)]` -/
def P7241371269964389760.Spec : Prop :=
  ∀ n, P7241371269964389760.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P13132279173827292911

`or(A000007(n²), A017887(A226134(n)))`
-/

namespace A127844.P13132279173827292911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (n ^ 2)) (A017887 (A226134 n).toNat)

end

end A127844.P13132279173827292911

namespace A127844

/-- `or(A000007(n²), A017887(A226134(n)))` -/
def P13132279173827292911.Spec : Prop :=
  ∀ n, P13132279173827292911.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P7453789088215363874

`A017887(A226134(n))%Δ[A023109(n)]`
-/

namespace A127844.P7453789088215363874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017887 (A226134 n).toNat) (f1 (n + 1) - f1 n)

end

end A127844.P7453789088215363874

namespace A127844

/-- `A017887(A226134(n))%Δ[A023109(n)]` -/
def P7453789088215363874.Spec : Prop :=
  ∀ n, P7453789088215363874.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P4739882720130655062

`A017887(A226134(n))+A005369((n+1)²)`
-/

namespace A127844.P4739882720130655062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (A226134 n).toNat + A005369 ((n + 1) ^ 2)

end

end A127844.P4739882720130655062

namespace A127844

/-- `A017887(A226134(n))+A005369((n+1)²)` -/
def P4739882720130655062.Spec : Prop :=
  ∀ n, P4739882720130655062.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P5395044314858423146

`A017887(A226134(n))+A008434(n²+1)`
-/

namespace A127844.P5395044314858423146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (A226134 n).toNat + A008434 (n ^ 2 + 1)

end

end A127844.P5395044314858423146

namespace A127844

/-- `A017887(A226134(n))+A008434(n²+1)` -/
def P5395044314858423146.Spec : Prop :=
  ∀ n, P5395044314858423146.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P4913011738410903941

`A000034(A002378(n))*A017887(A226134(n))`
-/

namespace A127844.P4913011738410903941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002378 n).toNat * A017887 (A226134 n).toNat

end

end A127844.P4913011738410903941

namespace A127844

/-- `A000034(A002378(n))*A017887(A226134(n))` -/
def P4913011738410903941.Spec : Prop :=
  ∀ n, P4913011738410903941.a n = A127844 (n + 1)

end A127844

/-! ## A127844.P245248136385291360

`A017887(A226134(n))*A062760(A066048(n+1))`
-/

namespace A127844.P245248136385291360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (A226134 n).toNat * A062760 (A066048 (n + 1)).toNat

end

end A127844.P245248136385291360

namespace A127844

/-- `A017887(A226134(n))*A062760(A066048(n+1))` -/
def P245248136385291360.Spec : Prop :=
  ∀ n, P245248136385291360.a n = A127844 (n + 1)

end A127844

/-!
# A127845: Numbers k such that k^2 + 5 and k^2 + 7 are twin primes.

The programs for A127845, there is no canonical definition to state claims against.
-/

/-! ## A127845.P13401075691590554589

`∩[A078402(n+1), A114270(n+1)]`
-/

namespace A127845.P13401075691590554589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127845.P13401075691590554589

/-! ## A127845.P3472246135268656250

`∩[6*A056906(n+1), A114270(n+1)]`
-/

namespace A127845.P3472246135268656250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A056906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127845.P3472246135268656250

/-! ## A127845.P3513129716955061383

`∩[eq[1, A001222(n²+7)], A078402(n+1)]`
-/

namespace A127845.P3513129716955061383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A127845.P3513129716955061383

/-! ## A127845.P4317521079764194925

`∩[eq[2, A000005(n²+7)], A078402(n+1)]`
-/

namespace A127845.P4317521079764194925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A127845.P4317521079764194925

/-!
# A127846: Series reversion of x/(1+5x+4x^2).

The programs for A127846, the canonical program `A127846.P14279537381663799616` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127846 has offset 0).

The definition of A127846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127846.P14279537381663799616

`floor(A086871(n)/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127846

/-- `floor(A086871(n)/2)` -/
def P14279537381663799616.Spec : Prop :=
  ∀ n, P14279537381663799616.a n = A127846 n

theorem P14279537381663799616.correct : P14279537381663799616.Spec := by
  intro n
  simp only [A127846]

end A127846

/-! ## A127846.P763208743631187811

`Δ[A162326(n)/2]`
-/

namespace A127846.P763208743631187811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127846.P763208743631187811

namespace A127846

/-- `Δ[A162326(n)/2]` -/
def P763208743631187811.Spec : Prop :=
  ∀ n, P763208743631187811.a n = (A127846 n : ℚ)

end A127846

/-! ## A127846.P5369683472193486489

`A059231(n)-floor(acot(n))`
-/

namespace A127846.P5369683472193486489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A127846.P5369683472193486489

namespace A127846

/-- `A059231(n)-floor(acot(n))` -/
def P5369683472193486489.Spec : Prop :=
  ∀ n, P5369683472193486489.a n = A127846 n

end A127846

/-! ## A127846.P8521917212060161352

`A210474(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A127846.P8521917212060161352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A210474 n + a (n - 1)

end

end A127846.P8521917212060161352

namespace A127846

/-- `A210474(n)+a(n-1)` -/
def P8521917212060161352.Spec : Prop :=
  ∀ n, P8521917212060161352.a n = A127846 n

end A127846

/-! ## A127846.P9896391331622364997

`A059231(n)-A000007(n)`
-/

namespace A127846.P9896391331622364997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n - A000007 n

end

end A127846.P9896391331622364997

namespace A127846

/-- `A059231(n)-A000007(n)` -/
def P9896391331622364997.Spec : Prop :=
  ∀ n, P9896391331622364997.a n = A127846 n

end A127846

/-! ## A127846.P14686503045194636739

`A086871(n)-A059231(n)`
-/

namespace A127846.P14686503045194636739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n - A059231 n

end

end A127846.P14686503045194636739

namespace A127846

/-- `A086871(n)-A059231(n)` -/
def P14686503045194636739.Spec : Prop :=
  ∀ n, P14686503045194636739.a n = A127846 n

end A127846

/-! ## A127846.P2853374461450410584

`A057427(n)*A059231(n)`
-/

namespace A127846.P2853374461450410584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A059231 n

end

end A127846.P2853374461450410584

namespace A127846

/-- `A057427(n)*A059231(n)` -/
def P2853374461450410584.Spec : Prop :=
  ∀ n, P2853374461450410584.a n = A127846 n

end A127846

/-! ## A127846.P4896399655047519300

`A059231(n)%A163445(n)`
-/

namespace A127846.P4896399655047519300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059231 n) (A163445 n)

end

end A127846.P4896399655047519300

namespace A127846

/-- `A059231(n)%A163445(n)` -/
def P4896399655047519300.Spec : Prop :=
  ∀ n, P4896399655047519300.a n = A127846 n

end A127846

/-! ## A127846.P1723295103262071072

`(A086871(n)-A000007(n))/2`
-/

namespace A127846.P1723295103262071072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086871 n - A000007 n : ℚ) / 2

end

end A127846.P1723295103262071072

namespace A127846

/-- `(A086871(n)-A000007(n))/2` -/
def P1723295103262071072.Spec : Prop :=
  ∀ n, P1723295103262071072.a n = (A127846 n : ℚ)

end A127846

/-! ## A127846.P16126903984364242374

`A057427(n)/2*A086871(n)`
-/

namespace A127846.P16126903984364242374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 2 * (A086871 n : ℚ)

end

end A127846.P16126903984364242374

namespace A127846

/-- `A057427(n)/2*A086871(n)` -/
def P16126903984364242374.Spec : Prop :=
  ∀ n, P16126903984364242374.a n = (A127846 n : ℚ)

end A127846

/-! ## A127846.P33719113895733552

`∑[A210474(n)]+n-A028310(n)`
-/

namespace A127846.P33719113895733552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A028310 n)

end

end A127846.P33719113895733552

namespace A127846

/-- `∑[A210474(n)]+n-A028310(n)` -/
def P33719113895733552.Spec : Prop :=
  ∀ n, P33719113895733552.a n = A127846 n

end A127846

/-! ## A127846.P14580389535692362270

`∑[A210474(n)]+n-A007318(∑[n]+1)`
-/

namespace A127846.P14580389535692362270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210474 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) - A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A127846.P14580389535692362270

namespace A127846

/-- `∑[A210474(n)]+n-A007318(∑[n]+1)` -/
def P14580389535692362270.Spec : Prop :=
  ∀ n, P14580389535692362270.a n = A127846 n

end A127846

/-! ## A127846.P8346532774076149254

`A059450(A000096(n))-A000007(n)`
-/

namespace A127846.P8346532774076149254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059450 (A000096 n).toNat - A000007 n

end

end A127846.P8346532774076149254

namespace A127846

/-- `A059450(A000096(n))-A000007(n)` -/
def P8346532774076149254.Spec : Prop :=
  ∀ n, P8346532774076149254.a n = A127846 n

end A127846

/-! ## A127846.P2092099784093299726

`A059231(n)-A008683(A102376(n))`
-/

namespace A127846.P2092099784093299726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n - A008683 (A102376 n).toNat

end

end A127846.P2092099784093299726

namespace A127846

/-- `A059231(n)-A008683(A102376(n))` -/
def P2092099784093299726.Spec : Prop :=
  ∀ n, P2092099784093299726.a n = A127846 n

end A127846

/-! ## A127846.P5688616205923565025

`A057427(n)*A059450(A000096(n))`
-/

namespace A127846.P5688616205923565025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A059450 (A000096 n).toNat

end

end A127846.P5688616205923565025

namespace A127846

/-- `A057427(n)*A059450(A000096(n))` -/
def P5688616205923565025.Spec : Prop :=
  ∀ n, P5688616205923565025.a n = A127846 n

end A127846

/-! ## A127846.P9821104384322661128

`A059231(n)+A020639(A062383(n))-2`
-/

namespace A127846.P9821104384322661128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n + (A020639 (A062383 n).toNat - 2)

end

end A127846.P9821104384322661128

namespace A127846

/-- `A059231(n)+A020639(A062383(n))-2` -/
def P9821104384322661128.Spec : Prop :=
  ∀ n, P9821104384322661128.a n = A127846 n

end A127846

/-! ## A127846.P12486418815700212954

`A059231(n)+A020639(A256251(n))-2`
-/

namespace A127846.P12486418815700212954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n + (A020639 (A256251 n).toNat - 2)

end

end A127846.P12486418815700212954

namespace A127846

/-- `A059231(n)+A020639(A256251(n))-2` -/
def P12486418815700212954.Spec : Prop :=
  ∀ n, P12486418815700212954.a n = A127846 n

end A127846

/-! ## A127846.P13283650189133706111

`A059231(n)+A008683(2*A102376(n))`
-/

namespace A127846.P13283650189133706111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n + A008683 (2 * A102376 n).toNat

end

end A127846.P13283650189133706111

namespace A127846

/-- `A059231(n)+A008683(2*A102376(n))` -/
def P13283650189133706111.Spec : Prop :=
  ∀ n, P13283650189133706111.a n = A127846 n

end A127846

/-!
# A127847: a(n)=4^C(n,2)*(4^n-1)/3.

The programs for A127847, the canonical program `A127847.P12475554090115031858` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127847 has offset 0).

The definition of A127847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127847.P12475554090115031858

`4^C(n, 2)*(4^n-1)/3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127847

/-- `4^C(n, 2)*(4^n-1)/3` -/
def P12475554090115031858.Spec : Prop :=
  ∀ n, P12475554090115031858.a n = (A127847 n : ℚ)

end A127847

/-! ## A127847.P16910687447026263086

`Δ[4^C(n, 2)/3]`
-/

namespace A127847.P16910687447026263086
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ Nat.choose n 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127847.P16910687447026263086

namespace A127847

/-- `Δ[4^C(n, 2)/3]` -/
def P16910687447026263086.Spec : Prop :=
  ∀ n, P16910687447026263086.a n = (A127847 n : ℚ)

end A127847

/-! ## A127847.P3391297472605377106

`Δ[2^(n²-n)/3]`
-/

namespace A127847.P3391297472605377106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n ^ 2 : ℤ) - (n : ℤ) : ℤ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127847.P3391297472605377106

namespace A127847

/-- `Δ[2^(n²-n)/3]` -/
def P3391297472605377106.Spec : Prop :=
  ∀ n, P3391297472605377106.a n = (A127847 n : ℚ)

end A127847

/-! ## A127847.P17226356489963349114

`Δ[2^lcm(n, n-1)]/3`
-/

namespace A127847.P17226356489963349114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 3

end

end A127847.P17226356489963349114

namespace A127847

/-- `Δ[2^lcm(n, n-1)]/3` -/
def P17226356489963349114.Spec : Prop :=
  ∀ n, P17226356489963349114.a n = (A127847 n : ℚ)

end A127847

/-! ## A127847.P844161695477133483

`Δ[∏[(2^floor(n*tanh(3)))²]]/3`
-/

namespace A127847.P844161695477133483
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℝ) * Real.tanh (3 : ℝ)⌋ : ℤ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / 3

end

end A127847.P844161695477133483

namespace A127847

/-- `Δ[∏[(2^floor(n*tanh(3)))²]]/3` -/
def P844161695477133483.Spec : Prop :=
  ∀ n, P844161695477133483.a n = (A127847 n : ℚ)

end A127847

/-!
# A127848: Series reversion of x/(1+6x+5x^2).

The programs for A127848, the canonical program `A127848.P7432483440862649154` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127848 has offset 0).

The definition of A127848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127848.P7432483440862649154

`A078009(n)-(2^n)%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A127848

/-- `A078009(n)-(2^n)%2` -/
def P7432483440862649154.Spec : Prop :=
  ∀ n, P7432483440862649154.a n = A127848 n

theorem P7432483440862649154.correct : P7432483440862649154.Spec := by
  intro n
  simp only [A127848]

end A127848

/-! ## A127848.P9440832378654518245

`A078009(n)-A000007(n)`
-/

namespace A127848.P9440832378654518245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n - A000007 n

end

end A127848.P9440832378654518245

namespace A127848

/-- `A078009(n)-A000007(n)` -/
def P9440832378654518245.Spec : Prop :=
  ∀ n, P9440832378654518245.a n = A127848 n

end A127848

/-! ## A127848.P11811224754235063166

`A057427(n)*A078009(n)`
-/

namespace A127848.P11811224754235063166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A078009 n

end

end A127848.P11811224754235063166

namespace A127848

/-- `A057427(n)*A078009(n)` -/
def P11811224754235063166.Spec : Prop :=
  ∀ n, P11811224754235063166.a n = A127848 n

end A127848

/-! ## A127848.P9817434106759873450

`A078009(n)*A178334(n)`
-/

namespace A127848.P9817434106759873450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n * A178334 n

end

end A127848.P9817434106759873450

namespace A127848

/-- `A078009(n)*A178334(n)` -/
def P9817434106759873450.Spec : Prop :=
  ∀ n, P9817434106759873450.a n = A127848 n

end A127848

/-! ## A127848.P15105101882502217798

`char[A143182(n)]*A078009(n)`
-/

namespace A127848.P15105101882502217798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078009 n

end

end A127848.P15105101882502217798

namespace A127848

/-- `char[A143182(n)]*A078009(n)` -/
def P15105101882502217798.Spec : Prop :=
  ∀ n, P15105101882502217798.a n = A127848 n

end A127848

/-! ## A127848.P6960278766528426365

`A078009(n)+n-A028310(n)`
-/

namespace A127848.P6960278766528426365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078009 n + ((n : ℤ) - A028310 n)

end

end A127848.P6960278766528426365

namespace A127848

/-- `A078009(n)+n-A028310(n)` -/
def P6960278766528426365.Spec : Prop :=
  ∀ n, P6960278766528426365.a n = A127848 n

end A127848

/-! ## A127848.P18340497476856513913

`A000035(A004273(n))*A078009(n)`
-/

namespace A127848.P18340497476856513913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004273 n).toNat * A078009 n

end

end A127848.P18340497476856513913

namespace A127848

/-- `A000035(A004273(n))*A078009(n)` -/
def P18340497476856513913.Spec : Prop :=
  ∀ n, P18340497476856513913.a n = A127848 n

end A127848

/-! ## A127848.P3652391285936693982

`A059841(A004015(n))*A078009(n)`
-/

namespace A127848.P3652391285936693982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004015 n).toNat * A078009 n

end

end A127848.P3652391285936693982

namespace A127848

/-- `A059841(A004015(n))*A078009(n)` -/
def P3652391285936693982.Spec : Prop :=
  ∀ n, P3652391285936693982.a n = A127848 n

end A127848

/-! ## A127848.P6216353893392853110

`A059841(A005942(n))*A078009(n)`
-/

namespace A127848.P6216353893392853110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A005942 n).toNat * A078009 n

end

end A127848.P6216353893392853110

namespace A127848

/-- `A059841(A005942(n))*A078009(n)` -/
def P6216353893392853110.Spec : Prop :=
  ∀ n, P6216353893392853110.a n = A127848 n

end A127848

/-! ## A127848.P6532063465840319539

`A001221(A008578(n+1))*A078009(n)`
-/

namespace A127848.P6532063465840319539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 1)).toNat * A078009 n

end

end A127848.P6532063465840319539

namespace A127848

/-- `A001221(A008578(n+1))*A078009(n)` -/
def P6532063465840319539.Spec : Prop :=
  ∀ n, P6532063465840319539.a n = A127848 n

end A127848

/-!
# A127849: a(n) = 5^C(n,2)*(5^n-1)/4.

The programs for A127849, the canonical program `A127849.P15426084172318882746` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127849 has offset 0).

The definition of A127849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127849.P15426084172318882746

`5^C(n, 2)*(5^n-1)/4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127849

/-- `5^C(n, 2)*(5^n-1)/4` -/
def P15426084172318882746.Spec : Prop :=
  ∀ n, P15426084172318882746.a n = (A127849 n : ℚ)

end A127849

/-! ## A127849.P8558224677280678605

`Δ[5^C(n, 2)/4]`
-/

namespace A127849.P8558224677280678605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ Nat.choose n 2 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127849.P8558224677280678605

namespace A127849

/-- `Δ[5^C(n, 2)/4]` -/
def P8558224677280678605.Spec : Prop :=
  ∀ n, P8558224677280678605.a n = (A127849 n : ℚ)

end A127849

/-! ## A127849.P12873423579044211317

`Δ[A109345(n)/4]`
-/

namespace A127849.P12873423579044211317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109345 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127849.P12873423579044211317

namespace A127849

/-- `Δ[A109345(n)/4]` -/
def P12873423579044211317.Spec : Prop :=
  ∀ n, P12873423579044211317.a n = (A127849 n : ℚ)

end A127849

/-! ## A127849.P8861414458263184462

`Δ[A003463(C(n, 2))]`
-/

namespace A127849.P8861414458263184462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127849.P8861414458263184462

namespace A127849

/-- `Δ[A003463(C(n, 2))]` -/
def P8861414458263184462.Spec : Prop :=
  ∀ n, P8861414458263184462.a n = A127849 n

end A127849

/-! ## A127849.P10960665650473203327

`Δ[∏[A005054(n)/4]]`
-/

namespace A127849.P10960665650473203327
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005054 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127849.P10960665650473203327

namespace A127849

/-- `Δ[∏[A005054(n)/4]]` -/
def P10960665650473203327.Spec : Prop :=
  ∀ n, P10960665650473203327.a n = (A127849 n : ℚ)

end A127849

/-!
# A127850: a(n) = (2^n-1)*2^(n(n-1)/2)/(2^(n-1)).

The programs for A127850, the canonical program `A127850.P14033195949939154152` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127850 has offset 0).

The definition of A127850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127850.P14033195949939154152

`2^C(n, 2)*(2^n-1)/2^(n-1)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127850

/-- `2^C(n, 2)*(2^n-1)/2^(n-1)` -/
def P14033195949939154152.Spec : Prop :=
  ∀ n, P14033195949939154152.a n = (A127850 n : ℚ)

end A127850

/-! ## A127850.P10824896856945175371

`(2^n-1)*2^(n*(n-1)/2)/2^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127850.P10824896856945175371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℝ) * (2 : ℝ) ^ ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2) : ℝ) / ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)

end

end A127850.P10824896856945175371

namespace A127850

/-- `(2^n-1)*2^(n*(n-1)/2)/2^(n-1)` -/
def P10824896856945175371.Spec : Prop :=
  ∀ n, P10824896856945175371.a n = (A127850 n : ℝ)

end A127850

/-! ## A127850.P11984891771062393004

`record[A000007(n)-A157963(n)]`
-/

namespace A127850.P11984891771062393004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A157963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127850.P11984891771062393004

namespace A127850

/-- `record[A000007(n)-A157963(n)]` -/
def P11984891771062393004.Spec : Prop :=
  ∀ n, P11984891771062393004.a n = A127850 n

end A127850

/-! ## A127850.P395843855373494534

`record[lcm(A002262(n), A135950(n))]`
-/

namespace A127850.P395843855373494534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002262 n) (A135950 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127850.P395843855373494534

namespace A127850

/-- `record[lcm(A002262(n), A135950(n))]` -/
def P395843855373494534.Spec : Prop :=
  ∀ n, (P395843855373494534.a n : ℤ) = A127850 n

end A127850

/-! ## A127850.P12032463034170834938

`lcm(A000225(n), A135950(A000124(n)))`
-/

namespace A127850.P12032463034170834938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000225 n) (A135950 (A000124 n).toNat)

end

end A127850.P12032463034170834938

namespace A127850

/-- `lcm(A000225(n), A135950(A000124(n)))` -/
def P12032463034170834938.Spec : Prop :=
  ∀ n, (P12032463034170834938.a n : ℤ) = A127850 n

end A127850

/-!
# A127851: a(n) has n 1's followed by C(n-1,2) 0's.

The programs for A127851, the canonical program `A127851.P973241957726273775` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127851 has offset 0).

The definition of A127851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127851.P973241957726273775

`10^C(n, 2)*(10^n-1)/(9*10^(n-1))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127851

/-- `10^C(n, 2)*(10^n-1)/(9*10^(n-1))` -/
def P973241957726273775.Spec : Prop :=
  ∀ n, P973241957726273775.a n = (A127851 n : ℚ)

end A127851

/-! ## A127851.P7971854041161183468

`A007088((2^n-1)*2^(n*(n-1)/2)/2^(n-1))`
-/

namespace A127851.P7971854041161183468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway (((2 ^ n : ℤ) - 1 : ℝ) * (2 : ℝ) ^ ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2) : ℝ) / ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))).toNat

end

end A127851.P7971854041161183468

namespace A127851

/-- `A007088((2^n-1)*2^(n*(n-1)/2)/2^(n-1))` -/
def P7971854041161183468.Spec : Prop :=
  ∀ n, P7971854041161183468.a n = A127851 n

end A127851

/-!
# A127852: Numbers n such that A118679(n) = 1.

The programs for A127852, there is no canonical definition to state claims against.
-/

/-! ## A127852.P12027840610558532449

`eq[1, A118679(n+1)]+1`
-/

namespace A127852.P12027840610558532449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118679 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A127852.P12027840610558532449

/-! ## A127852.P6367653838019646256

`record[3-A118679(n+2)+n]`
-/

namespace A127852.P6367653838019646256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A118679 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127852.P6367653838019646256

/-! ## A127852.P3386155616494528902

`record[A000027(n+1)/A118679(n+1)]`
-/

namespace A127852.P3386155616494528902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A118679 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127852.P3386155616494528902

/-! ## A127852.P15393992091494663868

`record[A109680(n+1)/A118679(n+1)]`
-/

namespace A127852.P15393992091494663868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109680 (n + 1) : ℚ) / (A118679 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127852.P15393992091494663868

/-! ## A127852.P10673505640513192304

`record[A124219(n+1)/A118679(n+1)]`
-/

namespace A127852.P10673505640513192304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124219 (n + 1) : ℚ) / (A118679 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127852.P10673505640513192304

/-!
# A127853: Numbers n such that A118680(n) = 1.

The programs for A127853, there is no canonical definition to state claims against.
-/

/-! ## A127853.P1486231694375752357

`eq[1, A118680(n+1)]+1`
-/

namespace A127853.P1486231694375752357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A127853.P1486231694375752357

/-! ## A127853.P8294455684993266617

`record[n+11-A118680(n+10)]`
-/

namespace A127853.P8294455684993266617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 11 : ℤ) - A118680 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127853.P8294455684993266617

/-! ## A127853.P10867961669419072041

`eq[1, A118680(A028310(n))]`
-/

namespace A127853.P10867961669419072041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127853.P10867961669419072041

/-! ## A127853.P7844610726954620781

`A020725(eq[1, A118680(n+1)])`
-/

namespace A127853.P7844610726954620781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127853.P7844610726954620781

/-! ## A127853.P17925790329336187585

`eq[1, A118680(A060000(n+1))]`
-/

namespace A127853.P17925790329336187585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127853.P17925790329336187585

/-! ## A127853.P6337954665669861203

`eq[1, A118680(A138153(n+1))]`
-/

namespace A127853.P6337954665669861203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127853.P6337954665669861203

/-! ## A127853.P10011924503227263206

`A153152(eq[1, A118680(n+1)])`
-/

namespace A127853.P10011924503227263206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127853.P10011924503227263206

/-! ## A127853.P2888410554111253812

`eq[1, A118680(A233583(n+1))]`
-/

namespace A127853.P2888410554111253812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118680 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127853.P2888410554111253812

/-! ## A127853.P14097391104758146994

`record[A000027(n+10)/A118680(n+10)]`
-/

namespace A127853.P14097391104758146994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 10) : ℚ) / (A118680 (n + 10) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127853.P14097391104758146994

/-!
# A127854: Largest number k such that k^2 divides A007781(6n+1).

The programs for A127854, the canonical program `A127854.P2330955674011553013` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127854 has offset 1).

The definition of A127854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127854.P2330955674011553013

`∑[24*n+18]+1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127854

/-- `∑[24*n+18]+1` -/
def P2330955674011553013.Spec : Prop :=
  ∀ n, (P2330955674011553013.a n : ℤ) = A127854 (n + 1)

theorem P2330955674011553013.correct : P2330955674011553013.Spec := by
  intro n
  simp only [A127854, Nat.add_sub_cancel]

end A127854

/-! ## A127854.P11661181393637141969

`∑[a(n-1)+24]` with `a(0)=19, a(1)=42`
-/

namespace A127854.P11661181393637141969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19, 42] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127854.P11661181393637141969

namespace A127854

/-- `∑[a(n-1)+24]` -/
def P11661181393637141969.Spec : Prop :=
  ∀ n, (P11661181393637141969.a n : ℤ) = A127854 (n + 1)

end A127854

/-! ## A127854.P16359498099180364804

`or(1, ∑[record[6*xor(3, n)]])`
-/

namespace A127854.P16359498099180364804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127854.P16359498099180364804

namespace A127854

/-- `or(1, ∑[record[6*xor(3, n)]])` -/
def P16359498099180364804.Spec : Prop :=
  ∀ n, (P16359498099180364804.a n : ℤ) = A127854 (n + 1)

end A127854

/-! ## A127854.P14428285017566886693

`xor(1, ∑[record[6*xor(3, n)]])`
-/

namespace A127854.P14428285017566886693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127854.P14428285017566886693

namespace A127854

/-- `xor(1, ∑[record[6*xor(3, n)]])` -/
def P14428285017566886693.Spec : Prop :=
  ∀ n, (P14428285017566886693.a n : ℤ) = A127854 (n + 1)

end A127854

/-! ## A127854.P1454191608131348818

`or(1, ∑[6*xor(3, 4*n)])`
-/

namespace A127854.P1454191608131348818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 3 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127854.P1454191608131348818

namespace A127854

/-- `or(1, ∑[6*xor(3, 4*n)])` -/
def P1454191608131348818.Spec : Prop :=
  ∀ n, (P1454191608131348818.a n : ℤ) = A127854 (n + 1)

end A127854

/-! ## A127854.P16541828137199091020

`Δ[A103532(n)]`
-/

namespace A127854.P16541828137199091020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127854.P16541828137199091020

namespace A127854

/-- `Δ[A103532(n)]` -/
def P16541828137199091020.Spec : Prop :=
  ∀ n, P16541828137199091020.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P15090689849528232639

`Δ[A100207(n)-(n+1)²]`
-/

namespace A127854.P15090689849528232639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100207 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127854.P15090689849528232639

namespace A127854

/-- `Δ[A100207(n)-(n+1)²]` -/
def P15090689849528232639.Spec : Prop :=
  ∀ n, P15090689849528232639.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P15687577386790681323

`Δ[n*Δ[A332698(n)]]`
-/

namespace A127854.P15687577386790681323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127854.P15687577386790681323

namespace A127854

/-- `Δ[n*Δ[A332698(n)]]` -/
def P15687577386790681323.Spec : Prop :=
  ∀ n, P15687577386790681323.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P2145505965952520704

`Δ[n*A054567(n+2)]`
-/

namespace A127854.P2145505965952520704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127854.P2145505965952520704

namespace A127854

/-- `Δ[n*A054567(n+2)]` -/
def P2145505965952520704.Spec : Prop :=
  ∀ n, P2145505965952520704.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P1681318784723310444

`A068626(A016777(2*(n+1)))`
-/

namespace A127854.P1681318784723310444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A016777 (2 * (n + 1))).toNat

end

end A127854.P1681318784723310444

namespace A127854

/-- `A068626(A016777(2*(n+1)))` -/
def P1681318784723310444.Spec : Prop :=
  ∀ n, P1681318784723310444.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P6340514669177086194

`A068626(A016789(2*n+1)+2)`
-/

namespace A127854.P6340514669177086194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A016789 (2 * n + 1) + 2).toNat

end

end A127854.P6340514669177086194

namespace A127854

/-- `A068626(A016789(2*n+1)+2)` -/
def P6340514669177086194.Spec : Prop :=
  ∀ n, P6340514669177086194.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P11003593327857609728

`Δ[A011934(Δ[n²])]`
-/

namespace A127854.P11003593327857609728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127854.P11003593327857609728

namespace A127854

/-- `Δ[A011934(Δ[n²])]` -/
def P11003593327857609728.Spec : Prop :=
  ∀ n, P11003593327857609728.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P6228152230473336541

`Δ[A153026(Δ[n²])]`
-/

namespace A127854.P6228152230473336541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153026 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127854.P6228152230473336541

namespace A127854

/-- `Δ[A153026(Δ[n²])]` -/
def P6228152230473336541.Spec : Prop :=
  ∀ n, P6228152230473336541.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P11340896531190342743

`A003215(2*(n+1))`
-/

namespace A127854.P11340896531190342743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (2 * (n + 1))

end

end A127854.P11340896531190342743

namespace A127854

/-- `A003215(2*(n+1))` -/
def P11340896531190342743.Spec : Prop :=
  ∀ n, P11340896531190342743.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P10784557440684696062

`A090381(2*(n+1))`
-/

namespace A127854.P10784557440684696062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090381 (2 * (n + 1))

end

end A127854.P10784557440684696062

namespace A127854

/-- `A090381(2*(n+1))` -/
def P10784557440684696062.Spec : Prop :=
  ∀ n, P10784557440684696062.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P8623578735490748205

`A354343(2*(n+1))`
-/

namespace A127854.P8623578735490748205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 (2 * (n + 1))

end

end A127854.P8623578735490748205

namespace A127854

/-- `A354343(2*(n+1))` -/
def P8623578735490748205.Spec : Prop :=
  ∀ n, P8623578735490748205.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P7887307180589567387

`A298125(2*(n+2))`
-/

namespace A127854.P7887307180589567387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (2 * (n + 2))

end

end A127854.P7887307180589567387

namespace A127854

/-- `A298125(2*(n+2))` -/
def P7887307180589567387.Spec : Prop :=
  ∀ n, P7887307180589567387.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P15147582938845520806

`A277402(2*n+3)`
-/

namespace A127854.P15147582938845520806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277402 (2 * n + 3)

end

end A127854.P15147582938845520806

namespace A127854

/-- `A277402(2*n+3)` -/
def P15147582938845520806.Spec : Prop :=
  ∀ n, P15147582938845520806.a n = A127854 (n + 1)

end A127854

/-! ## A127854.P508340619641212461

`A164016(2*(n+1))/6`
-/

namespace A127854.P508340619641212461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164016 (2 * (n + 1)) : ℚ) / 6

end

end A127854.P508340619641212461

namespace A127854

/-- `A164016(2*(n+1))/6` -/
def P508340619641212461.Spec : Prop :=
  ∀ n, P508340619641212461.a n = (A127854 (n + 1) : ℚ)

end A127854

/-! ## A127854.P15751566626197456630

`Δ[abs(A232599(2*n+1))]`
-/

namespace A127854.P15751566626197456630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232599 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127854.P15751566626197456630

namespace A127854

/-- `Δ[abs(A232599(2*n+1))]` -/
def P15751566626197456630.Spec : Prop :=
  ∀ n, P15751566626197456630.a n = A127854 (n + 1)

end A127854

/-!
# A127855: Quotients A120492(p)/p, where p = Prime[n].

The programs for A127855, there is no canonical definition to state claims against.
-/

/-! ## A127855.P5539192964041305752

`A120492(A008578(n+2))/A008578(n+2)`
-/

namespace A127855.P5539192964041305752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120492 (A008578 (n + 2)).toNat : ℚ) / (A008578 (n + 2) : ℚ)

end

end A127855.P5539192964041305752

/-!
# A127856: Positive integers n such that if n is a square, then so is r(n), where r(n) is the nonnegative integer defined by cyclic replacement of the digits d of n in base 12, that is, d->d+1 if d0 if d=11.

The programs for A127856, there is no canonical definition to state claims against.
-/

/-! ## A127856.P14578948382741884729

`A127857(n+1)²`
-/

namespace A127856.P14578948382741884729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127857 (n + 1) ^ 2

end

end A127856.P14578948382741884729

/-! ## A127856.P13289672482197759619

`A127857(n+1)^A035214(∑[n])`
-/

namespace A127856.P13289672482197759619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A035214 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A127856.P13289672482197759619

/-! ## A127856.P13186292907605581806

`A127857(n+1)^A020639(A059132(n))`
-/

namespace A127856.P13186292907605581806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A020639 (A059132 n).toNat : ℤ)

end

end A127856.P13186292907605581806

/-! ## A127856.P17279198424267808931

`A127857(n+1)^A001222(A001248(n+1))`
-/

namespace A127856.P17279198424267808931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A001222 (A001248 (n + 1)).toNat : ℤ)

end

end A127856.P17279198424267808931

/-! ## A127856.P4215801827493593646

`A127857(n+1)^A001222(A001358(n+1))`
-/

namespace A127856.P4215801827493593646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A127856.P4215801827493593646

/-! ## A127856.P6128670398299530200

`A127857(n+1)^A000005(A019417(n+1))`
-/

namespace A127856.P6128670398299530200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A000005 (A019417 (n + 1)).toNat : ℤ)

end

end A127856.P6128670398299530200

/-! ## A127856.P1086091471636877094

`A127857(n+1)^A000005(A019421(n+1))`
-/

namespace A127856.P1086091471636877094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A000005 (A019421 (n + 1)).toNat : ℤ)

end

end A127856.P1086091471636877094

/-! ## A127856.P16013583957993299440

`A127857(n+1)^A020639(A059558(n+1))`
-/

namespace A127856.P16013583957993299440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A020639 (A059558 (n + 1)).toNat : ℤ)

end

end A127856.P16013583957993299440

/-! ## A127856.P952336563743122328

`A127857(n+1)^A000005(A273283(n+2))`
-/

namespace A127856.P952336563743122328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A000005 (A273283 (n + 2)).toNat : ℤ)

end

end A127856.P952336563743122328

/-! ## A127856.P14624228779164409455

`A127857(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A127856.P14624228779164409455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127857 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A127856.P14624228779164409455

/-!
# A127857: a(n)=sqrt(A127856(n)).

The programs for A127857, there is no canonical definition to state claims against.
-/

/-! ## A127857.P8080484018122132421

`sqrt(A127856(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127857.P8080484018122132421
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127856 (n + 1) : ℝ)

end

end A127857.P8080484018122132421

/-! ## A127857.P3465155987989421715

`root(A127856(n+1), A035214(∑[n]))`
-/

namespace A127857.P3465155987989421715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A127856 (n + 1) : ℝ) ^ (1 / (A035214 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A127857.P3465155987989421715

/-! ## A127857.P13526670995941556135

`root(A127856(n+1), A020639(2*(n+1)))`
-/

namespace A127857.P13526670995941556135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A127856 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A127857.P13526670995941556135

/-! ## A127857.P6308485755233618999

`root(A127856(n+1), A001316(A001316(n)))`
-/

namespace A127857.P6308485755233618999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A127856 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A127857.P6308485755233618999

/-! ## A127857.P8151955094102082246

`root(A127856(n+1), A059132(A059132(n)))²`
-/

namespace A127857.P8151955094102082246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A127856 (n + 1) : ℝ) ^ (1 / (A059132 (A059132 n).toNat : ℝ))) ^ 2

end

end A127857.P8151955094102082246

/-!
# A127858: Positive integers n such that r(n^2)=r(n)^2, where r is the cyclic replacement map of the digits d of n in base 12, that is, d->d+1 if d0 if d=11.

The programs for A127858, there is no canonical definition to state claims against.
-/

/-! ## A127858.P252423348549238833

`∑[5*12^n]+1`
-/

namespace A127858.P252423348549238833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 12 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A127858.P252423348549238833

/-! ## A127858.P13870541873421790377

`abs(6-12*a(n-1))` with `a(0)=6`
-/

namespace A127858.P13870541873421790377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |6 - 12 * a (n - 1)|

end

end A127858.P13870541873421790377

/-! ## A127858.P8448603027863536796

`3*(4*a(n-1)-2)` with `a(0)=6`
-/

namespace A127858.P8448603027863536796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  3 * (4 * a (n - 1) - 2)

end

end A127858.P8448603027863536796

/-! ## A127858.P10175748503500383788

`lcm(6, lcm(4, a(n-1))-1)` with `a(0)=6`
-/

namespace A127858.P10175748503500383788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Int.lcm 6 ((Nat.lcm 4 (a (n - 1)) : ℤ) - 1)

end

end A127858.P10175748503500383788

/-! ## A127858.P3074521880311818778

`A173535(n+1)`
-/

namespace A127858.P3074521880311818778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173535 (n + 1)

end

end A127858.P3074521880311818778

/-! ## A127858.P901940145567370965

`record[A173535(abs(1-n))]`
-/

namespace A127858.P901940145567370965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173535 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127858.P901940145567370965

/-!
# A127859: a(n) = r(A127858(n)), where r if the cyclic replacement map of the digits d of n in base 12 defined by d->d+1 if d0 if d=11.

The programs for A127859, there is no canonical definition to state claims against.
-/

/-! ## A127859.P11620802784725478109

`∑[6*12^n]+1`
-/

namespace A127859.P11620802784725478109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 12 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A127859.P11620802784725478109

/-! ## A127859.P12299053583754202233

`or(1, ∑[6*12^n])`
-/

namespace A127859.P12299053583754202233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 12 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127859.P12299053583754202233

/-! ## A127859.P16280502274992542376

`xor(1, ∑[6*12^n])`
-/

namespace A127859.P16280502274992542376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 12 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127859.P16280502274992542376

/-! ## A127859.P4359007147997477453

`∑[12*a(n-1)]` with `a(0)=7, a(1)=72`
-/

namespace A127859.P4359007147997477453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 72] fun n f1 =>
  12 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127859.P4359007147997477453

/-! ## A127859.P119172400127320945

`A196791(n+2)/2`
-/

namespace A127859.P119172400127320945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196791 (n + 2) : ℚ) / 2

end

end A127859.P119172400127320945

/-! ## A127859.P9273903801378404158

`ceil(A016125(n+1)/2)`
-/

namespace A127859.P9273903801378404158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016125 (n + 1) : ℚ) / 2⌉

end

end A127859.P9273903801378404158

/-!
# A127860: a(n) = A127858(n)^2.

The programs for A127860, there is no canonical definition to state claims against.
-/

/-! ## A127860.P8409216546487249527

`A127858(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127860.P8409216546487249527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127858 (n + 1) ^ 2

end

end A127860.P8409216546487249527

/-! ## A127860.P8461302198563439400

`(∑[3*4*a(n-1)]+1)²` with `a(0)=5`
-/

namespace A127860.P8461302198563439400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  3 * (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A127860.P8461302198563439400

/-! ## A127860.P9965947418647604853

`A173535(n+1)²`
-/

namespace A127860.P9965947418647604853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173535 (n + 1) ^ 2

end

end A127860.P9965947418647604853

/-! ## A127860.P7850215389880775559

`(∑[12^n]-A127859(n+1))²`
-/

namespace A127860.P7850215389880775559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A127859 (n + 1)) ^ 2

end

end A127860.P7850215389880775559

/-! ## A127860.P5677080968656964867

`A127858(n+1)^A110021(A029707(n+1))`
-/

namespace A127860.P5677080968656964867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127858 (n + 1) : ℚ) ^ (A110021 (A029707 (n + 1)).toNat : ℤ)

end

end A127860.P5677080968656964867

/-!
# A127861: a(n) = A127859(n)^2.

The programs for A127861, there is no canonical definition to state claims against.
-/

/-! ## A127861.P3981228862055435855

`A127859(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127861.P3981228862055435855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127859 (n + 1) ^ 2

end

end A127861.P3981228862055435855

/-! ## A127861.P13035042838048703175

`(∑[6*12^n]+1)²`
-/

namespace A127861.P13035042838048703175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 12 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A127861.P13035042838048703175

/-! ## A127861.P1400353366157932886

`ceil((A196791(n+2)/2)²)`
-/

namespace A127861.P1400353366157932886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A196791 (n + 2) : ℚ) / 2) ^ 2⌉

end

end A127861.P1400353366157932886

/-! ## A127861.P11580615643097986126

`A016125(2*n+1)+A173535(n+1)²`
-/

namespace A127861.P11580615643097986126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 (2 * n + 1) + A173535 (n + 1) ^ 2

end

end A127861.P11580615643097986126

/-! ## A127861.P3436747653806479573

`A127859(A004526(2*n+3))*A127859(n+1)`
-/

namespace A127861.P3436747653806479573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127859 (A004526 (2 * n + 3)).toNat * A127859 (n + 1)

end

end A127861.P3436747653806479573

/-!
# A127864: Number of tilings of a 2 X n board with 1 X 1 and L-shaped tiles (where the L-shaped tiles cover 3 squares).

The programs for A127864, the canonical program `A127864.P7148161554614555788` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127864 has offset 0).

The definition of A127864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127864.P7148161554614555788

`a(n-1)+4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127864

/-- `a(n-1)+4*a(n-2)+2*a(n-3)` -/
def P7148161554614555788.Spec : Prop :=
  ∀ n, (P7148161554614555788.a n : ℤ) = A127864 n

theorem P7148161554614555788.correct : P7148161554614555788.Spec := by
  intro n
  simp only [A127864]

end A127864

/-! ## A127864.P5370429083619034534

`A028860(n+2)+(-1)^n`
-/

namespace A127864.P5370429083619034534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (n + 2) + (-1) ^ n

end

end A127864.P5370429083619034534

namespace A127864

/-- `A028860(n+2)+(-1)^n` -/
def P5370429083619034534.Spec : Prop :=
  ∀ n, P5370429083619034534.a n = A127864 n

end A127864

/-! ## A127864.P1707102456087779837

`∑[2*(a(n-1)+a(n-2))]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A127864.P1707102456087779837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A127864.P1707102456087779837

namespace A127864

/-- `∑[2*(a(n-1)+a(n-2))]-a(n-1)` -/
def P1707102456087779837.Spec : Prop :=
  ∀ n, P1707102456087779837.a n = A127864 n

end A127864

/-! ## A127864.P17139351512004359860

`(-1)^n+1/sqrt(3)*((1+sqrt(3))^n-(1-sqrt(3))^n)`
-/

namespace A127864.P17139351512004359860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℝ) + 1 / Real.sqrt (3 : ℝ) * ((1 + Real.sqrt (3 : ℝ)) ^ n - (1 - Real.sqrt (3 : ℝ)) ^ n)

end

end A127864.P17139351512004359860

namespace A127864

/-- `(-1)^n+1/sqrt(3)*((1+sqrt(3))^n-(1-sqrt(3))^n)` -/
def P17139351512004359860.Spec : Prop :=
  ∀ n, P17139351512004359860.a n = (A127864 n : ℝ)

end A127864

/-! ## A127864.P3023209894359415972

`abs(A077917(n))`
-/

namespace A127864.P3023209894359415972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077917 n|

end

end A127864.P3023209894359415972

namespace A127864

/-- `abs(A077917(n))` -/
def P3023209894359415972.Spec : Prop :=
  ∀ n, P3023209894359415972.a n = A127864 n

end A127864

/-! ## A127864.P17290031865217624598

`Δ[A052948(n)-gcd(2, n)]`
-/

namespace A127864.P17290031865217624598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127864.P17290031865217624598

namespace A127864

/-- `Δ[A052948(n)-gcd(2, n)]` -/
def P17290031865217624598.Spec : Prop :=
  ∀ n, P17290031865217624598.a n = A127864 n

end A127864

/-! ## A127864.P17762337097947803522

`∑[A026150(n)-a(n-1)]` with `a(0)=1`
-/

namespace A127864.P17762337097947803522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A026150 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127864.P17762337097947803522

namespace A127864

/-- `∑[A026150(n)-a(n-1)]` -/
def P17762337097947803522.Spec : Prop :=
  ∀ n, P17762337097947803522.a n = A127864 n

end A127864

/-! ## A127864.P8216248244209784822

`A033999(n)*A077917(n)`
-/

namespace A127864.P8216248244209784822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077917 n

end

end A127864.P8216248244209784822

namespace A127864

/-- `A033999(n)*A077917(n)` -/
def P8216248244209784822.Spec : Prop :=
  ∀ n, P8216248244209784822.a n = A127864 n

end A127864

/-! ## A127864.P6713496716026745815

`gcd(A000038(n), A077917(n))`
-/

namespace A127864.P6713496716026745815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077917 n)

end

end A127864.P6713496716026745815

namespace A127864

/-- `gcd(A000038(n), A077917(n))` -/
def P6713496716026745815.Spec : Prop :=
  ∀ n, (P6713496716026745815.a n : ℤ) = A127864 n

end A127864

/-! ## A127864.P7929427656607370401

`Δ[A052948(n)+A000034(n)]`
-/

namespace A127864.P7929427656607370401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127864.P7929427656607370401

namespace A127864

/-- `Δ[A052948(n)+A000034(n)]` -/
def P7929427656607370401.Spec : Prop :=
  ∀ n, P7929427656607370401.a n = A127864 n

end A127864

/-! ## A127864.P9048565663861460234

`Δ[A052948(n)+A000035(n)]`
-/

namespace A127864.P9048565663861460234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127864.P9048565663861460234

namespace A127864

/-- `Δ[A052948(n)+A000035(n)]` -/
def P9048565663861460234.Spec : Prop :=
  ∀ n, P9048565663861460234.a n = A127864 n

end A127864

/-! ## A127864.P13244229943493655099

`Δ[A052948(n)-A059841(n)]`
-/

namespace A127864.P13244229943493655099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 n - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127864.P13244229943493655099

namespace A127864

/-- `Δ[A052948(n)-A059841(n)]` -/
def P13244229943493655099.Spec : Prop :=
  ∀ n, P13244229943493655099.a n = A127864 n

end A127864

/-! ## A127864.P11496935404749243700

`lcm(A008836(n+1), A077917(n))`
-/

namespace A127864.P11496935404749243700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A077917 n)

end

end A127864.P11496935404749243700

namespace A127864

/-- `lcm(A008836(n+1), A077917(n))` -/
def P11496935404749243700.Spec : Prop :=
  ∀ n, (P11496935404749243700.a n : ℤ) = A127864 n

end A127864

/-! ## A127864.P962314170486535447

`Δ[A059841(n+1)+A052948(n)]`
-/

namespace A127864.P962314170486535447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + A052948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127864.P962314170486535447

namespace A127864

/-- `Δ[A059841(n+1)+A052948(n)]` -/
def P962314170486535447.Spec : Prop :=
  ∀ n, P962314170486535447.a n = A127864 n

end A127864

/-! ## A127864.P4685361287110971096

`A077917(and(n, A077917(n)))*A077917(n)`
-/

namespace A127864.P4685361287110971096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077917 (Int.land (n : ℤ) (A077917 n)).toNat * A077917 n

end

end A127864.P4685361287110971096

namespace A127864

/-- `A077917(and(n, A077917(n)))*A077917(n)` -/
def P4685361287110971096.Spec : Prop :=
  ∀ n, P4685361287110971096.a n = A127864 n

end A127864

/-!
# A127866: Number of L-shaped tiles in all tilings of a 2 X n board with 1 X 1 and L-shaped tiles (where the L-shaped tiles cover 3 squares).

The programs for A127866, the canonical program `A127866.P7807827458110838021` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127866 has offset 2).

The definition of A127866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127866.P7807827458110838021

`4*A073388(n)-a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127866

/-- `4*A073388(n)-a(n-1)` -/
def P7807827458110838021.Spec : Prop :=
  ∀ n, P7807827458110838021.a n = A127866 (n + 2)

theorem P7807827458110838021.correct : P7807827458110838021.Spec := by
  intro n
  simp only [A127866, Nat.add_sub_cancel]

end A127866

/-! ## A127866.P2912395123267465702

`4*A109634(n+1)-a(n-1)` with `a(0)=4`
-/

namespace A127866.P2912395123267465702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * A109634 (n + 1) - a (n - 1)

end

end A127866.P2912395123267465702

namespace A127866

/-- `4*A109634(n+1)-a(n-1)` -/
def P2912395123267465702.Spec : Prop :=
  ∀ n, P2912395123267465702.a n = A127866 (n + 2)

end A127866

/-!
# A127867: Number of tilings of a 3 X n board with 1 X 1 and L-shaped tiles (where the L-shaped tiles cover 3 squares).

The programs for A127867, there is no canonical definition to state claims against.
-/

/-! ## A127867.P10818648542549790862

`A220054(∑[n+3]+n+3)`
-/

namespace A127867.P10818648542549790862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A127867.P10818648542549790862

/-! ## A127867.P287663833007389348

`or(1, A220054(A046691(n+2)))`
-/

namespace A127867.P287663833007389348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220054 (A046691 (n + 2)).toNat)

end

end A127867.P287663833007389348

/-! ## A127867.P788473812792869042

`or(1, A220054(A167614(n+2)))`
-/

namespace A127867.P788473812792869042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220054 (A167614 (n + 2)).toNat)

end

end A127867.P788473812792869042

/-! ## A127867.P3663474286654453442

`A020985(n)²*A220054(A052905(n)+8)`
-/

namespace A127867.P3663474286654453442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A220054 (A052905 n + 8).toNat

end

end A127867.P3663474286654453442

/-! ## A127867.P793558863421340236

`A076826(2*n+1)*A220054(A167614(n+2))`
-/

namespace A127867.P793558863421340236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (2 * n + 1) * A220054 (A167614 (n + 2)).toNat

end

end A127867.P793558863421340236

/-!
# A127870: Number of tilings of a 4 X n board with 1 X 1 and L-shaped tiles (where the L-shaped tiles cover 3 squares).

The programs for A127870, there is no canonical definition to state claims against.
-/

/-! ## A127870.P586748053570860608

`A220054(A052905(n+2))`
-/

namespace A127870.P586748053570860608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A052905 (n + 2)).toNat

end

end A127870.P586748053570860608

/-! ## A127870.P16371792259141588232

`A220054(A056115(n)+10)`
-/

namespace A127870.P16371792259141588232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A056115 n + 10).toNat

end

end A127870.P16371792259141588232

/-! ## A127870.P4616071544769572457

`A220054(A155212(n)+12)`
-/

namespace A127870.P4616071544769572457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A155212 n + 12).toNat

end

end A127870.P4616071544769572457

/-! ## A127870.P4628296330004023566

`A220054(A056000(n)+14)`
-/

namespace A127870.P4628296330004023566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (A056000 n + 14).toNat

end

end A127870.P4628296330004023566

/-! ## A127870.P17944896660929398983

`A220054(eq[4, A002262(n)])`
-/

namespace A127870.P17944896660929398983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220054 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A127870.P17944896660929398983

/-!
# A127871: Numbers n such that n^4+1 and n^4+3 are twin primes.

The programs for A127871, there is no canonical definition to state claims against.
-/

/-! ## A127871.P14687847503198326554

`∩[A000068(n+1), A125259(n+1)]`
-/

namespace A127871.P14687847503198326554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127871.P14687847503198326554

/-! ## A127871.P15190300030246468171

`∩[eq[1, A193929(n)], A125259(n+1)]`
-/

namespace A127871.P15190300030246468171
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A127871.P15190300030246468171

/-! ## A127871.P11095300531349475052

`∩[eq[2, A193562(n)], A125259(n+1)]`
-/

namespace A127871.P11095300531349475052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A127871.P11095300531349475052

/-! ## A127871.P6075495079181820998

`∩[A125259(n+1), lt[A193929(n+1), 2]+1]`
-/

namespace A127871.P6075495079181820998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125259 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A127871.P6075495079181820998

/-! ## A127871.P2410592562207119526

`sqrt(∩[A080149(n+1), n²])`
-/

namespace A127871.P2410592562207119526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080149 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A127871.P2410592562207119526

/-!
# A127872: Triangle formed by reading A039599 mod 2.

The programs for A127872, the canonical program `A127872.P15809757184933305004` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127872 has offset 0).

The definition of A127872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127872.P3801766892215260732

`A039599(n)%2`
-/

namespace A127872.P3801766892215260732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039599 n) 2

end

end A127872.P3801766892215260732

namespace A127872

/-- `A039599(n)%2` -/
def P3801766892215260732.Spec : Prop :=
  ∀ n, P3801766892215260732.a n = A127872 n

end A127872

/-! ## A127872.P15809757184933305004

`A061554(n)%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127872

/-- `A061554(n)%2` -/
def P15809757184933305004.Spec : Prop :=
  ∀ n, P15809757184933305004.a n = A127872 n

theorem P15809757184933305004.correct : P15809757184933305004.Spec := by
  intro n
  simp only [A127872]

end A127872

/-! ## A127872.P19405695278837499

`A111418(n)%2`
-/

namespace A127872.P19405695278837499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111418 n) 2

end

end A127872.P19405695278837499

namespace A127872

/-- `A111418(n)%2` -/
def P19405695278837499.Spec : Prop :=
  ∀ n, P19405695278837499.a n = A127872 n

end A127872

/-! ## A127872.P14891724669261242696

`A126953(n)%2`
-/

namespace A127872.P14891724669261242696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126953 n) 2

end

end A127872.P14891724669261242696

namespace A127872

/-- `A126953(n)%2` -/
def P14891724669261242696.Spec : Prop :=
  ∀ n, P14891724669261242696.a n = A127872 n

end A127872

/-! ## A127872.P18039555529788833414

`A158815(n)%2`
-/

namespace A127872.P18039555529788833414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158815 n) 2

end

end A127872.P18039555529788833414

namespace A127872

/-- `A158815(n)%2` -/
def P18039555529788833414.Spec : Prop :=
  ∀ n, P18039555529788833414.a n = A127872 n

end A127872

/-! ## A127872.P3362156348940650586

`and(1, A106180(n))`
-/

namespace A127872.P3362156348940650586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A106180 n)

end

end A127872.P3362156348940650586

namespace A127872

/-- `and(1, A106180(n))` -/
def P3362156348940650586.Spec : Prop :=
  ∀ n, P3362156348940650586.a n = A127872 n

end A127872

/-! ## A127872.P10955560654456059484

`and(1, A113187(n))`
-/

namespace A127872.P10955560654456059484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A113187 n)

end

end A127872.P10955560654456059484

namespace A127872

/-- `and(1, A113187(n))` -/
def P10955560654456059484.Spec : Prop :=
  ∀ n, P10955560654456059484.a n = A127872 n

end A127872

/-! ## A127872.P1577942615173416247

`and(1, A127543(n))`
-/

namespace A127872.P1577942615173416247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A127543 n)

end

end A127872.P1577942615173416247

namespace A127872

/-- `and(1, A127543(n))` -/
def P1577942615173416247.Spec : Prop :=
  ∀ n, P1577942615173416247.a n = A127872 n

end A127872

/-! ## A127872.P438621683754968645

`A047999(A375779(n+1))`
-/

namespace A127872.P438621683754968645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A375779 (n + 1)).toNat

end

end A127872.P438621683754968645

namespace A127872

/-- `A047999(A375779(n+1))` -/
def P438621683754968645.Spec : Prop :=
  ∀ n, P438621683754968645.a n = A127872 n

end A127872

/-! ## A127872.P2325131173137461764

`and(1, A039599(A028310(n)))`
-/

namespace A127872.P2325131173137461764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A039599 (A028310 n).toNat)

end

end A127872.P2325131173137461764

namespace A127872

/-- `and(1, A039599(A028310(n)))` -/
def P2325131173137461764.Spec : Prop :=
  ∀ n, P2325131173137461764.a n = A127872 n

end A127872

/-! ## A127872.P11957011178298925875

`and(1, n-A039599(n)-A005563(n))`
-/

namespace A127872.P11957011178298925875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) - A039599 n - A005563 n)

end

end A127872.P11957011178298925875

namespace A127872

/-- `and(1, n-A039599(n)-A005563(n))` -/
def P11957011178298925875.Spec : Prop :=
  ∀ n, P11957011178298925875.a n = A127872 n

end A127872

/-! ## A127872.P10839138634141940998

`A007318(round(A025581(n)/2+n))%2`
-/

namespace A127872.P10839138634141940998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (SequenceMachineLib.roundAway ((A025581 n : ℚ) / 2 + (n : ℚ))).toNat) 2

end

end A127872.P10839138634141940998

namespace A127872

/-- `A007318(round(A025581(n)/2+n))%2` -/
def P10839138634141940998.Spec : Prop :=
  ∀ n, P10839138634141940998.a n = A127872 n

end A127872

/-! ## A127872.P17627240821158758572

`A131929(lcm(2, A111418(n))/A111418(n))`
-/

namespace A127872.P17627240821158758572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131929 (SequenceMachineLib.roundAway ((Int.lcm 2 (A111418 n) : ℚ) / (A111418 n : ℚ))).toNat

end

end A127872.P17627240821158758572

namespace A127872

/-- `A131929(lcm(2, A111418(n))/A111418(n))` -/
def P17627240821158758572.Spec : Prop :=
  ∀ n, P17627240821158758572.a n = A127872 n

end A127872

/-! ## A127872.P11884341380692119335

`and(A039599(n), A177704(A060680(n+2)))`
-/

namespace A127872.P11884341380692119335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039599 n) (A177704 (A060680 (n + 2)).toNat)

end

end A127872.P11884341380692119335

namespace A127872

/-- `and(A039599(n), A177704(A060680(n+2)))` -/
def P11884341380692119335.Spec : Prop :=
  ∀ n, P11884341380692119335.a n = A127872 n

end A127872

/-! ## A127872.P18104137734839938366

`and(1, A033999(A025581(n))*A111418(n))`
-/

namespace A127872.P18104137734839938366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A033999 (A025581 n).toNat * A111418 n)

end

end A127872.P18104137734839938366

namespace A127872

/-- `and(1, A033999(A025581(n))*A111418(n))` -/
def P18104137734839938366.Spec : Prop :=
  ∀ n, P18104137734839938366.a n = A127872 n

end A127872

/-! ## A127872.P5921741665022503772

`A124576(n+1)%2`
-/

namespace A127872.P5921741665022503772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124576 (n + 1)) 2

end

end A127872.P5921741665022503772

namespace A127872

/-- `A124576(n+1)%2` -/
def P5921741665022503772.Spec : Prop :=
  ∀ n, P5921741665022503772.a n = A127872 n

end A127872

/-! ## A127872.P18302148780726299281

`A124574(n+1)%2`
-/

namespace A127872.P18302148780726299281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124574 (n + 1)) 2

end

end A127872.P18302148780726299281

namespace A127872

/-- `A124574(n+1)%2` -/
def P18302148780726299281.Spec : Prop :=
  ∀ n, P18302148780726299281.a n = A127872 n

end A127872

/-! ## A127872.P15690864590439124487

`A133366(n)%2`
-/

namespace A127872.P15690864590439124487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133366 n) 2

end

end A127872.P15690864590439124487

namespace A127872

/-- `A133366(n)%2` -/
def P15690864590439124487.Spec : Prop :=
  ∀ n, P15690864590439124487.a n = A127872 n

end A127872

/-! ## A127872.P13919378331170582577

`A071035(A061885(n))`
-/

namespace A127872.P13919378331170582577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071035 (A061885 n).toNat

end

end A127872.P13919378331170582577

namespace A127872

/-- `A071035(A061885(n))` -/
def P13919378331170582577.Spec : Prop :=
  ∀ n, P13919378331170582577.a n = A127872 n

end A127872

/-! ## A127872.P578318073371910766

`A110519(n)%2`
-/

namespace A127872.P578318073371910766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110519 n) 2

end

end A127872.P578318073371910766

namespace A127872

/-- `A110519(n)%2` -/
def P578318073371910766.Spec : Prop :=
  ∀ n, P578318073371910766.a n = A127872 n

end A127872

/-!
# A127873: a(n) = (n^3)/2 + (3*n^2)/2 + 3*n + 3.

The programs for A127873, the canonical program `A127873.P17409298793461522355` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127873 has offset 1).

The definition of A127873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127873.P17409298793461522355

`∑[∑[a(n-1)+3]]` with `a(0)=8, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127873

/-- `∑[∑[a(n-1)+3]]` -/
def P17409298793461522355.Spec : Prop :=
  ∀ n, (P17409298793461522355.a n : ℤ) = A127873 (n + 1)

theorem P17409298793461522355.correct : P17409298793461522355.Spec := by
  intro n
  simp only [A127873, Nat.add_sub_cancel]

end A127873

/-! ## A127873.P7409561466319618857

`∑[∑[3*(n+1)]+2]+3`
-/

namespace A127873.P7409561466319618857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A127873.P7409561466319618857

namespace A127873

/-- `∑[∑[3*(n+1)]+2]+3` -/
def P7409561466319618857.Spec : Prop :=
  ∀ n, (P7409561466319618857.a n : ℤ) = A127873 (n + 1)

end A127873

/-! ## A127873.P1677789701116410757

`Δ[3*C(n+3, 4)+(n+2)²]`
-/

namespace A127873.P1677789701116410757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 3) 4 + (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127873.P1677789701116410757

namespace A127873

/-- `Δ[3*C(n+3, 4)+(n+2)²]` -/
def P1677789701116410757.Spec : Prop :=
  ∀ n, P1677789701116410757.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P10595378209754512314

`Δ[C(C(n+2, 2), 2)+(n+2)²]`
-/

namespace A127873.P10595378209754512314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 2) 2) 2 + (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127873.P10595378209754512314

namespace A127873

/-- `Δ[C(C(n+2, 2), 2)+(n+2)²]` -/
def P10595378209754512314.Spec : Prop :=
  ∀ n, P10595378209754512314.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P6430753809050252672

`∑[A000124(abs(1-n)+1)+(n+2)²]`
-/

namespace A127873.P6430753809050252672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (|1 - (n : ℤ)| + 1).toNat + ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127873.P6430753809050252672

namespace A127873

/-- `∑[A000124(abs(1-n)+1)+(n+2)²]` -/
def P6430753809050252672.Spec : Prop :=
  ∀ n, P6430753809050252672.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P14033564716267860673

`(A126275(n+2)+A004320(n+1))/A000292(n+1)`
-/

namespace A127873.P14033564716267860673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126275 (n + 2) + A004320 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ)

end

end A127873.P14033564716267860673

namespace A127873

/-- `(A126275(n+2)+A004320(n+1))/A000292(n+1)` -/
def P14033564716267860673.Spec : Prop :=
  ∀ n, P14033564716267860673.a n = (A127873 (n + 1) : ℚ)

end A127873

/-! ## A127873.P3982649723669975916

`Δ[C(∑[n+1]+2, 2)+n]`
-/

namespace A127873.P3982649723669975916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 2) 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127873.P3982649723669975916

namespace A127873

/-- `Δ[C(∑[n+1]+2, 2)+n]` -/
def P3982649723669975916.Spec : Prop :=
  ∀ n, P3982649723669975916.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P10463432694501527453

`ceil(A197773(n+2)/2)`
-/

namespace A127873.P10463432694501527453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A197773 (n + 2) : ℚ) / 2⌉

end

end A127873.P10463432694501527453

namespace A127873

/-- `ceil(A197773(n+2)/2)` -/
def P10463432694501527453.Spec : Prop :=
  ∀ n, P10463432694501527453.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P12704800151365842303

`Δ[A153977(n+1)+n]`
-/

namespace A127873.P12704800151365842303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153977 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127873.P12704800151365842303

namespace A127873

/-- `Δ[A153977(n+1)+n]` -/
def P12704800151365842303.Spec : Prop :=
  ∀ n, P12704800151365842303.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P2391274705494708623

`(A155965(n+2)-n)/2`
-/

namespace A127873.P2391274705494708623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155965 (n + 2) - (n : ℤ) : ℚ) / 2

end

end A127873.P2391274705494708623

namespace A127873

/-- `(A155965(n+2)-n)/2` -/
def P2391274705494708623.Spec : Prop :=
  ∀ n, P2391274705494708623.a n = (A127873 (n + 1) : ℚ)

end A127873

/-! ## A127873.P12358174048345071990

`ceil(sqrt(A197605(n+2))/2)`
-/

namespace A127873.P12358174048345071990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A197605 (n + 2) : ℝ) / 2⌉

end

end A127873.P12358174048345071990

namespace A127873

/-- `ceil(sqrt(A197605(n+2))/2)` -/
def P12358174048345071990.Spec : Prop :=
  ∀ n, P12358174048345071990.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P7070335947737668305

`ceil(sqrt(A197905(n+2))/2)`
-/

namespace A127873.P7070335947737668305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A197905 (n + 2) : ℝ) / 2⌉

end

end A127873.P7070335947737668305

namespace A127873

/-- `ceil(sqrt(A197905(n+2))/2)` -/
def P7070335947737668305.Spec : Prop :=
  ∀ n, P7070335947737668305.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P10648609172933582515

`ceil(sqrt(A198071(n+2))/2)`
-/

namespace A127873.P10648609172933582515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A198071 (n + 2) : ℝ) / 2⌉

end

end A127873.P10648609172933582515

namespace A127873

/-- `ceil(sqrt(A198071(n+2))/2)` -/
def P10648609172933582515.Spec : Prop :=
  ∀ n, P10648609172933582515.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P6139037948999560968

`Δ[A002817(n+1)+A000096(n+1)]`
-/

namespace A127873.P6139037948999560968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + A000096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127873.P6139037948999560968

namespace A127873

/-- `Δ[A002817(n+1)+A000096(n+1)]` -/
def P6139037948999560968.Spec : Prop :=
  ∀ n, P6139037948999560968.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P5208866935025979561

`(A005491(n+2)+1)/2`
-/

namespace A127873.P5208866935025979561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005491 (n + 2) + 1 : ℚ) / 2

end

end A127873.P5208866935025979561

namespace A127873

/-- `(A005491(n+2)+1)/2` -/
def P5208866935025979561.Spec : Prop :=
  ∀ n, P5208866935025979561.a n = (A127873 (n + 1) : ℚ)

end A127873

/-! ## A127873.P13937648754220857678

`Δ[A002817(n+1)+Δ[A000292(n+1)]]`
-/

namespace A127873.P13937648754220857678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127873.P13937648754220857678

namespace A127873

/-- `Δ[A002817(n+1)+Δ[A000292(n+1)]]` -/
def P13937648754220857678.Spec : Prop :=
  ∀ n, P13937648754220857678.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P11913526445158653265

`Δ[A037255(n+2)]`
-/

namespace A127873.P11913526445158653265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037255 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127873.P11913526445158653265

namespace A127873

/-- `Δ[A037255(n+2)]` -/
def P11913526445158653265.Spec : Prop :=
  ∀ n, P11913526445158653265.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P7700039531220401495

`Δ[A000217(∑[n+1]+1)+n]`
-/

namespace A127873.P7700039531220401495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127873.P7700039531220401495

namespace A127873

/-- `Δ[A000217(∑[n+1]+1)+n]` -/
def P7700039531220401495.Spec : Prop :=
  ∀ n, P7700039531220401495.a n = A127873 (n + 1)

end A127873

/-! ## A127873.P4718381373298970444

`Δ[A000096(n+1)+A000096(A000096(n))]`
-/

namespace A127873.P4718381373298970444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) + A000096 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127873.P4718381373298970444

namespace A127873

/-- `Δ[A000096(n+1)+A000096(A000096(n))]` -/
def P4718381373298970444.Spec : Prop :=
  ∀ n, P4718381373298970444.a n = A127873 (n + 1)

end A127873

/-!
# A127874: Prime numbers of the form (x^3)/2+(3x^2)/2+3x+3.

The programs for A127874, there is no canonical definition to state claims against.
-/

/-! ## A127874.P7626901862853323849

`A127873(A127875(n+1))`
-/

namespace A127874.P7626901862853323849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127873 (A127875 (n + 1)).toNat

end

end A127874.P7626901862853323849

/-! ## A127874.P11844530192838133432

`A229183(A127875(n+1)+1)+1`
-/

namespace A127874.P11844530192838133432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229183 (A127875 (n + 1) + 1).toNat + 1

end

end A127874.P11844530192838133432

/-! ## A127874.P7946022045661597460

`p?[∑[∑[3*(n+1)]+2]+3]`
-/

namespace A127874.P7946022045661597460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127874.P7946022045661597460

/-! ## A127874.P5405550119644194264

`or(1, p?[A127873(n+1)])`
-/

namespace A127874.P5405550119644194264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A127874.P5405550119644194264

/-! ## A127874.P13738030180998992571

`∏{d}[p?[A127873(n+2)], #]`
-/

namespace A127874.P13738030180998992571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127873 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A127874.P13738030180998992571

/-!
# A127875: Numbers x for which (x^3)/2+(3x^2)/2+3x+3 is prime.

The programs for A127875, there is no canonical definition to state claims against.
-/

/-! ## A127875.P11209909344790870294

`eq[1, A001222(A127873(n+1))]+1`
-/

namespace A127875.P11209909344790870294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A127873 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A127875.P11209909344790870294

/-! ## A127875.P13459937025061683552

`eq[1, A001222((n+2)*A133263(n)-1)]`
-/

namespace A127875.P13459937025061683552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2 : ℤ) * A133263 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A127875.P13459937025061683552

/-! ## A127875.P11235126629525739167

`eq[A130156(n+3), A130192(A130152(n+1))]`
-/

namespace A127875.P11235126629525739167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130156 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130192 (A130152 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127875.P11235126629525739167

/-!
# A127876: Integers of the form (x^3)/6 + (x^2)/2 + x + 1.

The programs for A127876, the canonical program `A127876.P8640691921181668160` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127876 has offset 1).

The definition of A127876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127876.P8640691921181668160

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=13, a(2)=61, a(3)=172`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127876

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8640691921181668160.Spec : Prop :=
  ∀ n, P8640691921181668160.a n = A127876 (n + 1)

theorem P8640691921181668160.correct : P8640691921181668160.Spec := by
  intro n
  simp only [A127876, Nat.add_sub_cancel]

end A127876

/-! ## A127876.P16295243685886060537

`n*(∑[9*n]+3)+1`
-/

namespace A127876.P16295243685886060537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1

end

end A127876.P16295243685886060537

namespace A127876

/-- `n*(∑[9*n]+3)+1` -/
def P16295243685886060537.Spec : Prop :=
  ∀ n, (P16295243685886060537.a n : ℤ) = A127876 (n + 1)

end A127876

/-! ## A127876.P4681700670298298733

`Δ[C(C(n, 2)+n², 2)+n²]`
-/

namespace A127876.P4681700670298298733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + n ^ 2) 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127876.P4681700670298298733

namespace A127876

/-- `Δ[C(C(n, 2)+n², 2)+n²]` -/
def P4681700670298298733.Spec : Prop :=
  ∀ n, P4681700670298298733.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P1157958394865977555

`ceil(C(3*n, 2)+9*(n^3+n)/2+1)`
-/

namespace A127876.P1157958394865977555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (3 * n) 2 : ℚ) + (9 * ((n ^ 3 + n : ℚ) / 2) + 1)⌉

end

end A127876.P1157958394865977555

namespace A127876

/-- `ceil(C(3*n, 2)+9*(n^3+n)/2+1)` -/
def P1157958394865977555.Spec : Prop :=
  ∀ n, P1157958394865977555.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P16298149495684333016

`Δ[C(A000326(n), 2)+n²]`
-/

namespace A127876.P16298149495684333016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000326 n).toNat 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A127876.P16298149495684333016

namespace A127876

/-- `Δ[C(A000326(n), 2)+n²]` -/
def P16298149495684333016.Spec : Prop :=
  ∀ n, P16298149495684333016.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P7124199299992495213

`(ceil(A003215(n)²/2)+n)/(n+1)`
-/

namespace A127876.P7124199299992495213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A003215 n ^ 2 : ℚ) / 2⌉ + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A127876.P7124199299992495213

namespace A127876

/-- `(ceil(A003215(n)²/2)+n)/(n+1)` -/
def P7124199299992495213.Spec : Prop :=
  ∀ n, P7124199299992495213.a n = (A127876 (n + 1) : ℚ)

end A127876

/-! ## A127876.P11013247230453958499

`Δ[A085537(n)+A002817(n)]`
-/

namespace A127876.P11013247230453958499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + A002817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127876.P11013247230453958499

namespace A127876

/-- `Δ[A085537(n)+A002817(n)]` -/
def P11013247230453958499.Spec : Prop :=
  ∀ n, P11013247230453958499.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P10504696134219212087

`ceil(A309805(2*n+1)²/(2*(n+1)))`
-/

namespace A127876.P10504696134219212087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A309805 (2 * n + 1) ^ 2 : ℚ) / (2 * (n + 1) : ℚ)⌉

end

end A127876.P10504696134219212087

namespace A127876

/-- `ceil(A309805(2*n+1)²/(2*(n+1)))` -/
def P10504696134219212087.Spec : Prop :=
  ∀ n, P10504696134219212087.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P3838021187796118326

`(A081435(2*n)+A000578(n+1))/2`
-/

namespace A127876.P3838021187796118326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081435 (2 * n) + A000578 (n + 1) : ℚ) / 2

end

end A127876.P3838021187796118326

namespace A127876

/-- `(A081435(2*n)+A000578(n+1))/2` -/
def P3838021187796118326.Spec : Prop :=
  ∀ n, P3838021187796118326.a n = (A127876 (n + 1) : ℚ)

end A127876

/-! ## A127876.P14098586468607383496

`A370880(3*n+1)`
-/

namespace A127876.P14098586468607383496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370880 (3 * n + 1)

end

end A127876.P14098586468607383496

namespace A127876

/-- `A370880(3*n+1)` -/
def P14098586468607383496.Spec : Prop :=
  ∀ n, P14098586468607383496.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P10257960674260207195

`ceil(A132127(A016777(n))/3)`
-/

namespace A127876.P10257960674260207195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132127 (A016777 n).toNat : ℚ) / 3⌉

end

end A127876.P10257960674260207195

namespace A127876

/-- `ceil(A132127(A016777(n))/3)` -/
def P10257960674260207195.Spec : Prop :=
  ∀ n, P10257960674260207195.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P8690550387058855909

`(A000292(3*n)+2*n+1)%A238237(n+1)`
-/

namespace A127876.P8690550387058855909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (3 * n) + (2 * n + 1 : ℤ)) (A238237 (n + 1))

end

end A127876.P8690550387058855909

namespace A127876

/-- `(A000292(3*n)+2*n+1)%A238237(n+1)` -/
def P8690550387058855909.Spec : Prop :=
  ∀ n, P8690550387058855909.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P12001153981979686922

`abs(A004006(3*n+1)-n)`
-/

namespace A127876.P12001153981979686922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004006 (3 * n + 1) - (n : ℤ)|

end

end A127876.P12001153981979686922

namespace A127876

/-- `abs(A004006(3*n+1)-n)` -/
def P12001153981979686922.Spec : Prop :=
  ∀ n, P12001153981979686922.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P14066685417426124014

`abs(A000125(3*n+1)-(n+1))`
-/

namespace A127876.P14066685417426124014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000125 (3 * n + 1) - (n + 1 : ℤ)|

end

end A127876.P14066685417426124014

namespace A127876

/-- `abs(A000125(3*n+1)-(n+1))` -/
def P14066685417426124014.Spec : Prop :=
  ∀ n, P14066685417426124014.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P7777252878922989288

`Δ[A085537(n)+A000217(A000217(n))]`
-/

namespace A127876.P7777252878922989288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n + A000217 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127876.P7777252878922989288

namespace A127876

/-- `Δ[A085537(n)+A000217(A000217(n))]` -/
def P7777252878922989288.Spec : Prop :=
  ∀ n, P7777252878922989288.a n = A127876 (n + 1)

end A127876

/-! ## A127876.P9875923883037284909

`Δ[A000217(A143689(n))-A130883(n)]`
-/

namespace A127876.P9875923883037284909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A143689 n).toNat - A130883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127876.P9875923883037284909

namespace A127876

/-- `Δ[A000217(A143689(n))-A130883(n)]` -/
def P9875923883037284909.Spec : Prop :=
  ∀ n, P9875923883037284909.a n = A127876 (n + 1)

end A127876

/-!
# A127878: a(n) = n^4 + 4*n^3 + 12*n^2 + 24*n + 24.

The programs for A127878, the canonical program `A127878.P2403459994798392413` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127878 has offset 0).

The definition of A127878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127878.P2403459994798392413

`24+24*n+12*n²+4*n^3+n^4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127878

/-- `24+24*n+12*n²+4*n^3+n^4` -/
def P2403459994798392413.Spec : Prop :=
  ∀ n, (P2403459994798392413.a n : ℤ) = A127878 n

theorem P2403459994798392413.correct : P2403459994798392413.Spec := by
  intro n
  simp only [A127878]

end A127878

/-! ## A127878.P17332594659628743767

`A080955(∑[n+4]+10)`
-/

namespace A127878.P17332594659628743767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080955 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A127878.P17332594659628743767

namespace A127878

/-- `A080955(∑[n+4]+10)` -/
def P17332594659628743767.Spec : Prop :=
  ∀ n, P17332594659628743767.a n = A127878 n

end A127878

/-!
# A127879: Primes of the form x^4 + 4*x^3 + 12*x^2 + 24*x + 24.

The programs for A127879, there is no canonical definition to state claims against.
-/

/-! ## A127879.P2639423166583921957

`A127878(A127880(n+1))`
-/

namespace A127879.P2639423166583921957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127878 (A127880 (n + 1)).toNat

end

end A127879.P2639423166583921957

/-!
# A127880: Numbers x for which x^4 + 4x^3 + 12x^2 + 24x + 24 is prime.

The programs for A127880, there is no canonical definition to state claims against.
-/

/-! ## A127880.P953340470493546708

`A119877(A000142(n))+A002476(2*(n+2))`
-/

namespace A127880.P953340470493546708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119877 (A000142 n).toNat + A002476 (2 * (n + 2))

end

end A127880.P953340470493546708

/-!
# A127883: a(n) = 60*(n^5/120 + n^4/24 + n^3/6 + n^2/2 + n + 1).

The programs for A127883, there is no canonical definition to state claims against.
-/

/-! ## A127883.P13395834596199350331

`A080955(A167499(n+5))/2`
-/

namespace A127883.P13395834596199350331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080955 (A167499 (n + 5)).toNat : ℚ) / 2

end

end A127883.P13395834596199350331

/-!
# A127884: a(n) = floor(Fibonacci(n)/n).

The programs for A127884, the canonical program `A127884.P15284916899621604612` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127884 has offset 1).

The definition of A127884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127884.P15284916899621604612

`floor(∑[a(n-1)+a(n-2)]/(n+1))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A127884

/-- `floor(∑[a(n-1)+a(n-2)]/(n+1))` -/
def P15284916899621604612.Spec : Prop :=
  ∀ n, P15284916899621604612.a n = A127884 (n + 1)

theorem P15284916899621604612.correct : P15284916899621604612.Spec := by
  intro n
  simp only [A127884, Nat.add_sub_cancel]

end A127884

/-! ## A127884.P14467298839710371394

`floor(A000045(n+1)/(n+1))`
-/

namespace A127884.P14467298839710371394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P14467298839710371394

namespace A127884

/-- `floor(A000045(n+1)/(n+1))` -/
def P14467298839710371394.Spec : Prop :=
  ∀ n, P14467298839710371394.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P2740370603636333639

`floor(A141325(n+1)/(n+1))`
-/

namespace A127884.P2740370603636333639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141325 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P2740370603636333639

namespace A127884

/-- `floor(A141325(n+1)/(n+1))` -/
def P2740370603636333639.Spec : Prop :=
  ∀ n, P2740370603636333639.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P17585799804210724060

`floor(A212804(n+2)/(n+1))`
-/

namespace A127884.P17585799804210724060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P17585799804210724060

namespace A127884

/-- `floor(A212804(n+2)/(n+1))` -/
def P17585799804210724060.Spec : Prop :=
  ∀ n, P17585799804210724060.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P3048607846442935313

`floor(A324969(n+2)/(n+1))`
-/

namespace A127884.P3048607846442935313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324969 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P3048607846442935313

namespace A127884

/-- `floor(A324969(n+2)/(n+1))` -/
def P3048607846442935313.Spec : Prop :=
  ∀ n, P3048607846442935313.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P15018926980883540786

`ceil(A001611(n+1)/(n+1))-1`
-/

namespace A127884.P15018926980883540786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001611 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A127884.P15018926980883540786

namespace A127884

/-- `ceil(A001611(n+1)/(n+1))-1` -/
def P15018926980883540786.Spec : Prop :=
  ∀ n, P15018926980883540786.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P705394028718476751

`floor(A272912(2*n+1)/(n+1))`
-/

namespace A127884.P705394028718476751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A272912 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P705394028718476751

namespace A127884

/-- `floor(A272912(2*n+1)/(n+1))` -/
def P705394028718476751.Spec : Prop :=
  ∀ n, P705394028718476751.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P11576492354173629144

`floor(A123231(2*n+1)/(n+1))`
-/

namespace A127884.P11576492354173629144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123231 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P11576492354173629144

namespace A127884

/-- `floor(A123231(2*n+1)/(n+1))` -/
def P11576492354173629144.Spec : Prop :=
  ∀ n, P11576492354173629144.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P14076373761715256983

`floor(A163227(2*n+1)/(n+1))`
-/

namespace A127884.P14076373761715256983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163227 (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P14076373761715256983

namespace A127884

/-- `floor(A163227(2*n+1)/(n+1))` -/
def P14076373761715256983.Spec : Prop :=
  ∀ n, P14076373761715256983.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P15863623250995346536

`floor(Δ[floor(ϕ*a(n-1))]/(n+1))` with `a(0)=2`
-/

namespace A127884.P15863623250995346536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P15863623250995346536

namespace A127884

/-- `floor(Δ[floor(ϕ*a(n-1))]/(n+1))` -/
def P15863623250995346536.Spec : Prop :=
  ∀ n, P15863623250995346536.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P8062286516563832715

`floor(Δ[a(n-2)+a(n-1)]/(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A127884.P8062286516563832715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A127884.P8062286516563832715

namespace A127884

/-- `floor(Δ[a(n-2)+a(n-1)]/(n+1))` -/
def P8062286516563832715.Spec : Prop :=
  ∀ n, P8062286516563832715.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P742909142174921605

`floor(A096748(2*n+1)/(2*(n+1)))`
-/

namespace A127884.P742909142174921605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A096748 (2 * n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A127884.P742909142174921605

namespace A127884

/-- `floor(A096748(2*n+1)/(2*(n+1)))` -/
def P742909142174921605.Spec : Prop :=
  ∀ n, P742909142174921605.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P15890349545883914905

`floor(A045925(n+1)/(n+1)²)`
-/

namespace A127884.P15890349545883914905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045925 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)⌋

end

end A127884.P15890349545883914905

namespace A127884

/-- `floor(A045925(n+1)/(n+1)²)` -/
def P15890349545883914905.Spec : Prop :=
  ∀ n, P15890349545883914905.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P73338446160635665

`floor(A098614(n)/A000984(n))`
-/

namespace A127884.P73338446160635665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098614 n : ℚ) / (A000984 n : ℚ)⌋

end

end A127884.P73338446160635665

namespace A127884

/-- `floor(A098614(n)/A000984(n))` -/
def P73338446160635665.Spec : Prop :=
  ∀ n, P73338446160635665.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P13975236245922258836

`floor((A000071(n+1)+1)*A000108(n)/A000984(n))`
-/

namespace A127884.P13975236245922258836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000071 (n + 1) + 1) * A000108 n : ℚ) / (A000984 n : ℚ)⌋

end

end A127884.P13975236245922258836

namespace A127884

/-- `floor((A000071(n+1)+1)*A000108(n)/A000984(n))` -/
def P13975236245922258836.Spec : Prop :=
  ∀ n, P13975236245922258836.a n = A127884 (n + 1)

end A127884

/-! ## A127884.P10010659681598400632

`floor((A001611(n+1)-1)*A000108(n)/A000984(n))`
-/

namespace A127884.P10010659681598400632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001611 (n + 1) - 1) * A000108 n : ℚ) / (A000984 n : ℚ)⌋

end

end A127884.P10010659681598400632

namespace A127884

/-- `floor((A001611(n+1)-1)*A000108(n)/A000984(n))` -/
def P10010659681598400632.Spec : Prop :=
  ∀ n, P10010659681598400632.a n = A127884 (n + 1)

end A127884

/-!
# A127885: a(n) = minimal number of steps to get from n to 1, where a step is x -> 3x+1 if x is odd, or x -> either x/2 or 3x+1 if x is even; or -1 if 1 is never reached.

The programs for A127885, there is no canonical definition to state claims against.
-/

/-! ## A127885.P7718532130640083780

`A006577(n+1)-A127886(n+1)`
-/

namespace A127885.P7718532130640083780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A127886 (n + 1)

end

end A127885.P7718532130640083780

/-! ## A127885.P14078791501907909220

`A008908(n+1)-(A127886(n+1)+1)`
-/

namespace A127885.P14078791501907909220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A127886 (n + 1) + 1)

end

end A127885.P14078791501907909220

/-! ## A127885.P18189317395980311731

`A139399(4*(n+1))-A127886(n+1)`
-/

namespace A127885.P18189317395980311731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * (n + 1)) - A127886 (n + 1)

end

end A127885.P18189317395980311731

/-! ## A127885.P6633814830930224650

`A023443(A008908(n+1)-A127886(n+1))`
-/

namespace A127885.P6633814830930224650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (n + 1) - A127886 (n + 1)).toNat

end

end A127885.P6633814830930224650

/-! ## A127885.P1380233512499547588

`A006666(n+1)+A006667(n+1)-A127886(n+1)`
-/

namespace A127885.P1380233512499547588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) - A127886 (n + 1))

end

end A127885.P1380233512499547588

/-! ## A127885.P18129271616817835922

`A220421(n+1)+A222641(n+1)-A127886(n+1)`
-/

namespace A127885.P18129271616817835922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + (A222641 (n + 1) - A127886 (n + 1))

end

end A127885.P18129271616817835922

/-! ## A127885.P9867218137983500950

`A006577(n+1)+-A127886(n+1)%A008908(n+1)`
-/

namespace A127885.P9867218137983500950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + Int.tmod (-A127886 (n + 1)) (A008908 (n + 1))

end

end A127885.P9867218137983500950

/-!
# A127886: Steps saved by choice in "3x+1" iteration.

The programs for A127886, there is no canonical definition to state claims against.
-/

/-! ## A127886.P929171510288667705

`A006577(n+1)-A127885(n+1)`
-/

namespace A127886.P929171510288667705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A127885 (n + 1)

end

end A127886.P929171510288667705

/-! ## A127886.P7594370166471017432

`A008908(n+1)-(A127885(n+1)+1)`
-/

namespace A127886.P7594370166471017432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - (A127885 (n + 1) + 1)

end

end A127886.P7594370166471017432

/-! ## A127886.P15033549175742191592

`A139399(Δ[A046092(n)])-A127885(n+1)`
-/

namespace A127886.P15033549175742191592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (f1 (n + 1) - f1 n).toNat - A127885 (n + 1)

end

end A127886.P15033549175742191592

/-! ## A127886.P17783051347439248793

`A006666(n+1)+A006667(n+1)-A127885(n+1)`
-/

namespace A127886.P17783051347439248793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (A006667 (n + 1) - A127885 (n + 1))

end

end A127886.P17783051347439248793

/-! ## A127886.P9993946154140402001

`A220421(n+1)+A222641(n+1)-A127885(n+1)`
-/

namespace A127886.P9993946154140402001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1) + (A222641 (n + 1) - A127885 (n + 1))

end

end A127886.P9993946154140402001

/-!
# A127887: Indices of nonzero terms of A127886.

The programs for A127887, there is no canonical definition to state claims against.
-/

/-! ## A127887.P5374852316971442734

`lt[0, A127886(n+1)]+1`
-/

namespace A127887.P5374852316971442734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127886 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A127887.P5374852316971442734

/-! ## A127887.P5820546761677830957

`lt[0, A127886(A028310(n))]`
-/

namespace A127887.P5820546761677830957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127886 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127887.P5820546761677830957

/-! ## A127887.P969390120018561070

`lt[A127885(n+1), A006577(n+1)]+1`
-/

namespace A127887.P969390120018561070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A127887.P969390120018561070

/-! ## A127887.P1546540223282569144

`A020725(lt[A127885(n+1), A006577(n+1)])`
-/

namespace A127887.P1546540223282569144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127887.P1546540223282569144

/-! ## A127887.P17877062591002185541

`lt[1, A127886(A233583(n+1))]`
-/

namespace A127887.P17877062591002185541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127886 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A127887.P17877062591002185541

/-!
# A127889: Smallest n-digit right-truncatable prime.

The programs for A127889, there is no canonical definition to state claims against.
-/

/-! ## A127889.P10979530487763511994

`A088603(∏{digits}[n, #]+1)`
-/

namespace A127889.P10979530487763511994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088603 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod + 1)

end

end A127889.P10979530487763511994

/-! ## A127889.P5292085693155841189

`A088603(n+1)+char[9]`
-/

namespace A127889.P5292085693155841189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088603 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A127889.P5292085693155841189

/-! ## A127889.P4166234039210609976

`A088603(∑{digits}[n, 10^#]%9+n)`
-/

namespace A127889.P4166234039210609976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088603 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 + n)

end

end A127889.P4166234039210609976

/-! ## A127889.P2448011302730498053

`A088603(∑[round(1/∑{d}[n+1, #%2])])`
-/

namespace A127889.P2448011302730498053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∑ d ∈ Nat.divisors (f2 n), d % 2 : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088603 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127889.P2448011302730498053

/-!
# A127890: Largest n-digit right-truncatable prime.

The programs for A127890, there is no canonical definition to state claims against.
-/

/-! ## A127890.P11073148207603489236

`A024770(∑[A050986(n+1)])`
-/

namespace A127890.P11073148207603489236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127890.P11073148207603489236

/-!
# A127892: Largest n-digit left-truncatable prime.

The programs for A127892, there is no canonical definition to state claims against.
-/

/-! ## A127892.P12234102818555914537

`A024785(∑[A050987(n+1)])`
-/

namespace A127892.P12234102818555914537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024785 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127892.P12234102818555914537

/-!
# A127893: Riordan array (1/(1-x)^3, x/(1-x)^3).

The programs for A127893, there is no canonical definition to state claims against.
-/

/-! ## A127893.P3118992893184810822

`abs(A127895(n))`
-/

namespace A127893.P3118992893184810822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127895 n|

end

end A127893.P3118992893184810822

/-! ## A127893.P5553802662507685616

`A097807(n)*A127895(n)`
-/

namespace A127893.P5553802662507685616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127895 n

end

end A127893.P5553802662507685616

/-! ## A127893.P9625185676483214134

`gcd(A000038(n), A127895(n))`
-/

namespace A127893.P9625185676483214134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127895 n)

end

end A127893.P9625185676483214134

/-! ## A127893.P7522179172937201811

`lcm(A020985(n), A127895(n))`
-/

namespace A127893.P7522179172937201811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A127895 n)

end

end A127893.P7522179172937201811

/-! ## A127893.P9800912233541672359

`A206294(comp[∑[n]])`
-/

namespace A127893.P9800912233541672359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206294 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A127893.P9800912233541672359

/-! ## A127893.P3186558915354386667

`A033999(n)²*A206294(A014132(n+1))`
-/

namespace A127893.P3186558915354386667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A206294 (A014132 (n + 1)).toNat

end

end A127893.P3186558915354386667

/-! ## A127893.P8063114566977806270

`A206294(A014132(n+1))/A033999(A025581(n))²`
-/

namespace A127893.P8063114566977806270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206294 (A014132 (n + 1)).toNat : ℚ) / (A033999 (A025581 n).toNat ^ 2 : ℚ)

end

end A127893.P8063114566977806270

/-! ## A127893.P11767429985607809076

`A033999(2*(n+1))*A206294(A014132(n+1))`
-/

namespace A127893.P11767429985607809076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A206294 (A014132 (n + 1)).toNat

end

end A127893.P11767429985607809076

/-! ## A127893.P14078087015013937982

`∑{d}[A127895(n), A000010(#)]`
-/

namespace A127893.P14078087015013937982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A127893.P14078087015013937982

/-! ## A127893.P2394529499694635203

`A206294(A014132(n+1))/A033999(A206294(n))²`
-/

namespace A127893.P2394529499694635203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206294 (A014132 (n + 1)).toNat : ℚ) / (A033999 (A206294 n).toNat ^ 2 : ℚ)

end

end A127893.P2394529499694635203

/-!
# A127894: Inverse of Riordan array (1/(1-x)^3, x/(1-x)^3).

The programs for A127894, there is no canonical definition to state claims against.
-/

/-! ## A127894.P3131452285023256803

`A097807(n)*A127898(n)`
-/

namespace A127894.P3131452285023256803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127898 n

end

end A127894.P3131452285023256803

/-! ## A127894.P7458919304015741029

`A033999(A025581(n))*A127898(n)`
-/

namespace A127894.P7458919304015741029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A127898 n

end

end A127894.P7458919304015741029

/-! ## A127894.P9291747968681046222

`A127898(n)*A164677(A099375(n))`
-/

namespace A127894.P9291747968681046222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 n * A164677 (A099375 n).toNat

end

end A127894.P9291747968681046222

/-! ## A127894.P2541262013486778189

`A062157(A004736(n+1))*A127898(n)`
-/

namespace A127894.P2541262013486778189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A127898 n

end

end A127894.P2541262013486778189

/-! ## A127894.P15453093720698070401

`A127893(n)/A127895(n)*A127898(n)`
-/

namespace A127894.P15453093720698070401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127893 n : ℚ) / (A127895 n : ℚ) * (A127898 n : ℚ)

end

end A127894.P15453093720698070401

/-! ## A127894.P1388262532647360832

`A033999(A025581(n))*A064282(A061579(n))`
-/

namespace A127894.P1388262532647360832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A064282 (A061579 n).toNat

end

end A127894.P1388262532647360832

/-! ## A127894.P8311926593398306968

`A020985(A130330(n))*A127898(n)`
-/

namespace A127894.P8311926593398306968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A127898 n

end

end A127894.P8311926593398306968

/-!
# A127895: Riordan array (1/(1+x)^3, x/(1+x)^3).

The programs for A127895, there is no canonical definition to state claims against.
-/

/-! ## A127895.P7663095673388643840

`A097807(n)*A127893(n)`
-/

namespace A127895.P7663095673388643840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127893 n

end

end A127895.P7663095673388643840

/-! ## A127895.P13336683001017472880

`A033999(A025581(n))*A127893(n)`
-/

namespace A127895.P13336683001017472880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A127893 n

end

end A127895.P13336683001017472880

/-! ## A127895.P11002105510033748865

`A127893(n)*A164677(A099375(n))`
-/

namespace A127895.P11002105510033748865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127893 n * A164677 (A099375 n).toNat

end

end A127895.P11002105510033748865

/-! ## A127895.P12054653017444305462

`A062157(A004736(n+1))*A127893(n)`
-/

namespace A127895.P12054653017444305462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A004736 (n + 1)).toNat * A127893 n

end

end A127895.P12054653017444305462

/-! ## A127895.P13552790411605455566

`A033999(A025581(n))*A206294(A014132(n+1))`
-/

namespace A127895.P13552790411605455566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A206294 (A014132 (n + 1)).toNat

end

end A127895.P13552790411605455566

/-! ## A127895.P3553849119895444922

`A127893(n)/A127894(n)*A127898(n)`
-/

namespace A127895.P3553849119895444922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127893 n : ℚ) / (A127894 n : ℚ) * (A127898 n : ℚ)

end

end A127895.P3553849119895444922

/-! ## A127895.P1114068202293774942

`A033999(A063656(n))*A127893(n)`
-/

namespace A127895.P1114068202293774942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A127893 n

end

end A127895.P1114068202293774942

/-! ## A127895.P29673720959281159

`A020985(A130330(n))*A127893(n)`
-/

namespace A127895.P29673720959281159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A130330 n).toNat * A127893 n

end

end A127895.P29673720959281159

/-!
# A127896: Expansion of 1/(1 + 2*x + 3*x^2 + x^3).

The programs for A127896, the canonical program `A127896.P344767944556219001` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127896 has offset 0).

The definition of A127896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 547 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127896.P344767944556219001

`(n-A004442(n))*Δ[A185963(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A127896

/-- `(n-A004442(n))*Δ[A185963(n)]` -/
def P344767944556219001.Spec : Prop :=
  ∀ n, P344767944556219001.a n = A127896 n

theorem P344767944556219001.correct : P344767944556219001.Spec := by
  intro n
  simp only [A127896]

end A127896

/-! ## A127896.P3121147588938619367

`A050935(3*n+5)`
-/

namespace A127896.P3121147588938619367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (3 * n + 5)

end

end A127896.P3121147588938619367

namespace A127896

/-- `A050935(3*n+5)` -/
def P3121147588938619367.Spec : Prop :=
  ∀ n, P3121147588938619367.a n = A127896 n

end A127896

/-! ## A127896.P366376490357305582

`1-A203400(3*n+2)`
-/

namespace A127896.P366376490357305582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A203400 (3 * n + 2)

end

end A127896.P366376490357305582

namespace A127896

/-- `1-A203400(3*n+2)` -/
def P366376490357305582.Spec : Prop :=
  ∀ n, P366376490357305582.a n = A127896 n

end A127896

/-! ## A127896.P12301706009681165719

`A033999(n)*A247917(3*n+2)`
-/

namespace A127896.P12301706009681165719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A247917 (3 * n + 2)

end

end A127896.P12301706009681165719

namespace A127896

/-- `A033999(n)*A247917(3*n+2)` -/
def P12301706009681165719.Spec : Prop :=
  ∀ n, P12301706009681165719.a n = A127896 n

end A127896

/-!
# A127897: Series reversion of x/(1 + 2*x + 3*x^2 + x^3).

The programs for A127897, there is no canonical definition to state claims against.
-/

/-! ## A127897.P10996068306483799753

`A103221(ceil(sqrt(A218501(n))))`
-/

namespace A127897.P10996068306483799753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ⌈Real.sqrt (A218501 n : ℝ)⌉.toNat

end

end A127897.P10996068306483799753

/-! ## A127897.P9899190933360643291

`A081753(Δ[Δ[A137953(n)]])`
-/

namespace A127897.P9899190933360643291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137953 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (f1 (n + 1) - f1 n).toNat

end

end A127897.P9899190933360643291

/-! ## A127897.P14651278532530510319

`A008618(∑[A045902(n)+3]-1)`
-/

namespace A127897.P14651278532530510319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045902 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A127897.P14651278532530510319

/-!
# A127898: Inverse of Riordan array (1/(1+x)^3, x/(1+x)^3).

The programs for A127898, there is no canonical definition to state claims against.
-/

/-! ## A127898.P2206511500297891082

`A064282(A061579(n))`
-/

namespace A127898.P2206511500297891082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 (A061579 n).toNat

end

end A127898.P2206511500297891082

/-! ## A127898.P10291722045000206842

`A064282(A038722(n+1)-1)`
-/

namespace A127898.P10291722045000206842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 (A038722 (n + 1) - 1).toNat

end

end A127898.P10291722045000206842

/-! ## A127898.P12488583072949032241

`A064282(A038722(n+2))`
-/

namespace A127898.P12488583072949032241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 (A038722 (n + 2)).toNat

end

end A127898.P12488583072949032241

/-! ## A127898.P16692826101680664908

`A064282(A130855(n+1)*A130855(n+1)-(n+1))`
-/

namespace A127898.P16692826101680664908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 (A130855 (n + 1) * A130855 (n + 1) - (n + 1 : ℤ)).toNat

end

end A127898.P16692826101680664908

/-! ## A127898.P11568802368801619267

`abs(A127894(n))`
-/

namespace A127898.P11568802368801619267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127894 n|

end

end A127898.P11568802368801619267

/-! ## A127898.P12184590835182410614

`A097807(n)*A127894(n)`
-/

namespace A127898.P12184590835182410614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127894 n

end

end A127898.P12184590835182410614

/-! ## A127898.P11957662135959048237

`gcd(A000038(n), A127894(n))`
-/

namespace A127898.P11957662135959048237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127894 n)

end

end A127898.P11957662135959048237

/-! ## A127898.P5727107065806521166

`lcm(A020985(n), A127894(n))`
-/

namespace A127898.P5727107065806521166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A127894 n)

end

end A127898.P5727107065806521166

/-! ## A127898.P4953272541134640050

`A127893(n)/A127895(n)*A127894(n)`
-/

namespace A127898.P4953272541134640050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127893 n : ℚ) / (A127895 n : ℚ) * (A127894 n : ℚ)

end

end A127898.P4953272541134640050

/-!
# A127899: Transform related to the harmonic series.

The programs for A127899, the canonical program `A127899.P12920581761649048747` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127899 has offset 1).

The definition of A127899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127899.P12920581761649048747

`floor((A002260(n+1)+2)/(A003056(n)+2))*(A003056(n)+1)*(-1)^(A002260(n+1)+A003056(n)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A127899

/-- `floor((A002260(n+1)+2)/(A003056(n)+2))*(A003056(n)+1)*(-1)^(A002260(n+1)+A003056(n)+1)` -/
def P12920581761649048747.Spec : Prop :=
  ∀ n, P12920581761649048747.a n = (A127899 (n + 1) : ℚ)

end A127899

/-! ## A127899.P792283101895688691

`Δ[Δ[n-C(∑[char[∑[n]]], 2)]]`
-/

namespace A127899.P792283101895688691
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P792283101895688691

namespace A127899

/-- `Δ[Δ[n-C(∑[char[∑[n]]], 2)]]` -/
def P792283101895688691.Spec : Prop :=
  ∀ n, P792283101895688691.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P14442810749510473461

`Δ[-Δ[C(round(sqrt(2*(n+1))), 2)]]`
-/

namespace A127899.P14442810749510473461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P14442810749510473461

namespace A127899

/-- `Δ[-Δ[C(round(sqrt(2*(n+1))), 2)]]` -/
def P14442810749510473461.Spec : Prop :=
  ∀ n, P14442810749510473461.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P812463478575742824

`Δ[-A127648(n)]`
-/

namespace A127899.P812463478575742824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P812463478575742824

namespace A127899

/-- `Δ[-A127648(n)]` -/
def P812463478575742824.Spec : Prop :=
  ∀ n, P812463478575742824.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P3948661152034106369

`Δ[Δ[A002262(n)]]`
-/

namespace A127899.P3948661152034106369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P3948661152034106369

namespace A127899

/-- `Δ[Δ[A002262(n)]]` -/
def P3948661152034106369.Spec : Prop :=
  ∀ n, P3948661152034106369.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P10434133389314023487

`Δ[Δ[-A057944(n)]]`
-/

namespace A127899.P10434133389314023487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057944 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P10434133389314023487

namespace A127899

/-- `Δ[Δ[-A057944(n)]]` -/
def P10434133389314023487.Spec : Prop :=
  ∀ n, P10434133389314023487.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P4065050045588196888

`Δ[Δ[sqrt(A143844(n))]]`
-/

namespace A127899.P4065050045588196888
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P4065050045588196888

namespace A127899

/-- `Δ[Δ[sqrt(A143844(n))]]` -/
def P4065050045588196888.Spec : Prop :=
  ∀ n, P4065050045588196888.a n = (A127899 (n + 1) : ℝ)

end A127899

/-! ## A127899.P7001018045498193794

`Δ[Δ[log2(A059268(n))]]`
-/

namespace A127899.P7001018045498193794
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P7001018045498193794

namespace A127899

/-- `Δ[Δ[log2(A059268(n))]]` -/
def P7001018045498193794.Spec : Prop :=
  ∀ n, P7001018045498193794.a n = (A127899 (n + 1) : ℝ)

end A127899

/-! ## A127899.P14175120802221702873

`Δ[-A130296(n+2)]`
-/

namespace A127899.P14175120802221702873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A130296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P14175120802221702873

namespace A127899

/-- `Δ[-A130296(n+2)]` -/
def P14175120802221702873.Spec : Prop :=
  ∀ n, P14175120802221702873.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P8907905221164599323

`Δ[Δ[A002260(n+1)]]`
-/

namespace A127899.P8907905221164599323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P8907905221164599323

namespace A127899

/-- `Δ[Δ[A002260(n+1)]]` -/
def P8907905221164599323.Spec : Prop :=
  ∀ n, P8907905221164599323.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P7202114975131146760

`Δ[Δ[A132118(n+1)]]`
-/

namespace A127899.P7202114975131146760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P7202114975131146760

namespace A127899

/-- `Δ[Δ[A132118(n+1)]]` -/
def P7202114975131146760.Spec : Prop :=
  ∀ n, P7202114975131146760.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P4679233086411899175

`Δ[Δ[A131818(n+2)]]`
-/

namespace A127899.P4679233086411899175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P4679233086411899175

namespace A127899

/-- `Δ[Δ[A131818(n+2)]]` -/
def P4679233086411899175.Spec : Prop :=
  ∀ n, P4679233086411899175.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P16470638343654669479

`Δ[Δ[n-A061885(n)]]`
-/

namespace A127899.P16470638343654669479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P16470638343654669479

namespace A127899

/-- `Δ[Δ[n-A061885(n)]]` -/
def P16470638343654669479.Spec : Prop :=
  ∀ n, P16470638343654669479.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P3070636844023094654

`Δ[A066181(n+1)]-1`
-/

namespace A127899.P3070636844023094654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A127899.P3070636844023094654

namespace A127899

/-- `Δ[A066181(n+1)]-1` -/
def P3070636844023094654.Spec : Prop :=
  ∀ n, P3070636844023094654.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P14787717350141701454

`Δ[Δ[abs(A140756(n+1))]]`
-/

namespace A127899.P14787717350141701454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P14787717350141701454

namespace A127899

/-- `Δ[Δ[abs(A140756(n+1))]]` -/
def P14787717350141701454.Spec : Prop :=
  ∀ n, P14787717350141701454.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P2921831369623458471

`Δ[Δ[sqrt(A133819(n+1))]]`
-/

namespace A127899.P2921831369623458471
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P2921831369623458471

namespace A127899

/-- `Δ[Δ[sqrt(A133819(n+1))]]` -/
def P2921831369623458471.Spec : Prop :=
  ∀ n, P2921831369623458471.a n = (A127899 (n + 1) : ℝ)

end A127899

/-! ## A127899.P11875314717763607043

`Δ[Δ[A057554(2*n+1)]]`
-/

namespace A127899.P11875314717763607043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P11875314717763607043

namespace A127899

/-- `Δ[Δ[A057554(2*n+1)]]` -/
def P11875314717763607043.Spec : Prop :=
  ∀ n, P11875314717763607043.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P1483553816502958733

`Δ[Δ[A158405(n+1)/2]]`
-/

namespace A127899.P1483553816502958733
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158405 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P1483553816502958733

namespace A127899

/-- `Δ[Δ[A158405(n+1)/2]]` -/
def P1483553816502958733.Spec : Prop :=
  ∀ n, P1483553816502958733.a n = (A127899 (n + 1) : ℚ)

end A127899

/-! ## A127899.P7215662497913913382

`Δ[Δ[n-A004201(n+1)]]`
-/

namespace A127899.P7215662497913913382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004201 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127899.P7215662497913913382

namespace A127899

/-- `Δ[Δ[n-A004201(n+1)]]` -/
def P7215662497913913382.Spec : Prop :=
  ∀ n, P7215662497913913382.a n = A127899 (n + 1)

end A127899

/-! ## A127899.P479898983541920690

`A127648(n)-A132681(n)`
-/

namespace A127899.P479898983541920690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n - A132681 n

end

end A127899.P479898983541920690

namespace A127899

/-- `A127648(n)-A132681(n)` -/
def P479898983541920690.Spec : Prop :=
  ∀ n, P479898983541920690.a n = A127899 (n + 1)

end A127899

