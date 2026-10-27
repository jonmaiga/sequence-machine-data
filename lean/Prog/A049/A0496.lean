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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A049600: Array T read by diagonals; T(i,j) is the number of paths from (0,0) to (i,j) consisting of nonvertical segments (x(k),y(k))-to-(x(k+1),y(k+1)) such that 0 = x(1) < x(2) < ... < x(n-1) < x(n)=i, 0 = y(1) <= y(2) <= ... <= y(n-1) <= y(n)=j, for i >= 0, j >= 0.

The programs for A049600, the canonical program `A049600.P12417633368915667654` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049600 has offset 0).

The definition of A049600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049600.P12417633368915667654

`2*T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049600

/-- `2*T(n-1,k-1)+T(n-1,k)-T(n-2,k-1)` -/
def P12417633368915667654.Spec : Prop :=
  ∀ n, P12417633368915667654.a n = A049600 n

theorem P12417633368915667654.correct : P12417633368915667654.Spec := by
  intro n
  simp only [A049600]

end A049600

/-! ## A049600.P5475023170909531225

`A208341(n)-A160232(n+1)`
-/

namespace A049600.P5475023170909531225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n - A160232 (n + 1)

end

end A049600.P5475023170909531225

namespace A049600

/-- `A208341(n)-A160232(n+1)` -/
def P5475023170909531225.Spec : Prop :=
  ∀ n, P5475023170909531225.a n = A049600 n

end A049600

/-! ## A049600.P10204244384621782570

`A207619(n+1)-A208341(n)`
-/

namespace A049600.P10204244384621782570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207619 (n + 1) - A208341 n

end

end A049600.P10204244384621782570

namespace A049600

/-- `A207619(n+1)-A208341(n)` -/
def P10204244384621782570.Spec : Prop :=
  ∀ n, P10204244384621782570.a n = A049600 n

end A049600

/-! ## A049600.P4901495476937451603

`(A207619(n+1)-A160232(n+1))/2`
-/

namespace A049600.P4901495476937451603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207619 (n + 1) - A160232 (n + 1) : ℚ) / 2

end

end A049600.P4901495476937451603

namespace A049600

/-- `(A207619(n+1)-A160232(n+1))/2` -/
def P4901495476937451603.Spec : Prop :=
  ∀ n, P4901495476937451603.a n = (A049600 n : ℚ)

end A049600

/-! ## A049600.P4311456968072567446

`(A209758(n+1)-A208511(n+1))/2`
-/

namespace A049600.P4311456968072567446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209758 (n + 1) - A208511 (n + 1) : ℚ) / 2

end

end A049600.P4311456968072567446

namespace A049600

/-- `(A209758(n+1)-A208511(n+1))/2` -/
def P4311456968072567446.Spec : Prop :=
  ∀ n, P4311456968072567446.a n = (A049600 n : ℚ)

theorem P4311456968072567446.correct : P4311456968072567446.Spec := by
  intro n
  simp only [A049600, Nat.add_sub_cancel, A049600.P4311456968072567446.a, A049600.P12417633368915667654.a, A208511, A208511.P7476908769405234328.a, A209758, A209758.P13269120077313166614.a, A010054, A010054.P18347828677204923252.a, A160232, A160232.P11664613383406721776.a, A208341, A208341.P16541214995392684149.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A049600

/-! ## A049600.P15573726961281434690

`A106195(A056943(n))%A013609(n)`
-/

namespace A049600.P15573726961281434690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106195 (A056943 n).toNat) (A013609 n)

end

end A049600.P15573726961281434690

namespace A049600

/-- `A106195(A056943(n))%A013609(n)` -/
def P15573726961281434690.Spec : Prop :=
  ∀ n, P15573726961281434690.a n = A049600 n

end A049600

/-! ## A049600.P10579889880008295311

`A160232(n+1)-A062110(A061579(n))`
-/

namespace A049600.P10579889880008295311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160232 (n + 1) - A062110 (A061579 n).toNat

end

end A049600.P10579889880008295311

namespace A049600

/-- `A160232(n+1)-A062110(A061579(n))` -/
def P10579889880008295311.Spec : Prop :=
  ∀ n, P10579889880008295311.a n = A049600 n

end A049600

/-! ## A049600.P7938912344165890547

`A208341(n)-A105306(A038722(n+1))`
-/

namespace A049600.P7938912344165890547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 n - A105306 (A038722 (n + 1)).toNat

end

end A049600.P7938912344165890547

namespace A049600

/-- `A208341(n)-A105306(A038722(n+1))` -/
def P7938912344165890547.Spec : Prop :=
  ∀ n, P7938912344165890547.a n = A049600 n

end A049600

/-! ## A049600.P5976693963274344533

`A055587(A038722(n+1))-A010054(n)`
-/

namespace A049600.P5976693963274344533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055587 (A038722 (n + 1)).toNat - A010054 n

end

end A049600.P5976693963274344533

namespace A049600

/-- `A055587(A038722(n+1))-A010054(n)` -/
def P5976693963274344533.Spec : Prop :=
  ∀ n, P5976693963274344533.a n = A049600 n

end A049600

/-! ## A049600.P8137179425426794440

`A055587(A038722(n+1))%A013609(n)`
-/

namespace A049600.P8137179425426794440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055587 (A038722 (n + 1)).toNat) (A013609 n)

end

end A049600.P8137179425426794440

namespace A049600

/-- `A055587(A038722(n+1))%A013609(n)` -/
def P8137179425426794440.Spec : Prop :=
  ∀ n, P8137179425426794440.a n = A049600 n

end A049600

/-! ## A049600.P9273465218666484392

`A106195(A038722(n+1)-1)-A160232(n+1)`
-/

namespace A049600.P9273465218666484392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A038722 (n + 1) - 1).toNat - A160232 (n + 1)

end

end A049600.P9273465218666484392

namespace A049600

/-- `A106195(A038722(n+1)-1)-A160232(n+1)` -/
def P9273465218666484392.Spec : Prop :=
  ∀ n, P9273465218666484392.a n = A049600 n

end A049600

/-! ## A049600.P10971077333172968796

`A106195(A061579(n))-A105306(A038722(n+1))`
-/

namespace A049600.P10971077333172968796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (A061579 n).toNat - A105306 (A038722 (n + 1)).toNat

end

end A049600.P10971077333172968796

namespace A049600

/-- `A106195(A061579(n))-A105306(A038722(n+1))` -/
def P10971077333172968796.Spec : Prop :=
  ∀ n, P10971077333172968796.a n = A049600 n

end A049600

/-! ## A049600.P9457821981214731073

`A001221(A059268(n))*A106195(A056943(n))`
-/

namespace A049600.P9457821981214731073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A059268 n).toNat * A106195 (A056943 n).toNat

end

end A049600.P9457821981214731073

namespace A049600

/-- `A001221(A059268(n))*A106195(A056943(n))` -/
def P9457821981214731073.Spec : Prop :=
  ∀ n, P9457821981214731073.a n = A049600 n

end A049600

/-!
# A049601: a(n)=Sum{T(2i,n-2i): i=0,1,...,[ n/2 ]}, array T as in A049600.

The programs for A049601, the canonical program `A049601.P17385866308062161435` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049601 has offset 0).

The definition of A049601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049601.P17385866308062161435

`(A000045(2*n)+(-1)^n*A000045(n))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049601

/-- `(A000045(2*n)+(-1)^n*A000045(n))/2` -/
def P17385866308062161435.Spec : Prop :=
  ∀ n, P17385866308062161435.a n = (A049601 n : ℚ)

end A049601

/-! ## A049601.P5950676303439185736

`ogf((-2x^2+x^3)/(-1+2x+3x^2-4x^3+x^4))`
-/

namespace A049601.P5950676303439185736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -1] [1, -2, -3, 4, -1] n

end

end A049601.P5950676303439185736

namespace A049601

/-- `ogf((-2x^2+x^3)/(-1+2x+3x^2-4x^3+x^4))` -/
def P5950676303439185736.Spec : Prop :=
  ∀ n, P5950676303439185736.a n = A049601 n

end A049601

/-! ## A049601.P3699509639406937843

`∑[A192352(n+1)]-1`
-/

namespace A049601.P3699509639406937843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049601.P3699509639406937843

namespace A049601

/-- `∑[A192352(n+1)]-1` -/
def P3699509639406937843.Spec : Prop :=
  ∀ n, P3699509639406937843.a n = A049601 n

end A049601

/-! ## A049601.P13675989029439752292

`A001906(n)-A049602(n)`
-/

namespace A049601.P13675989029439752292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A049602 n

end

end A049601.P13675989029439752292

namespace A049601

/-- `A001906(n)-A049602(n)` -/
def P13675989029439752292.Spec : Prop :=
  ∀ n, P13675989029439752292.a n = A049601 n

end A049601

/-! ## A049601.P16930613803299809145

`A000045(2*n)-A049602(n)`
-/

namespace A049601.P16930613803299809145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A049602 n

end

end A049601.P16930613803299809145

namespace A049601

/-- `A000045(2*n)-A049602(n)` -/
def P16930613803299809145.Spec : Prop :=
  ∀ n, P16930613803299809145.a n = A049601 n

end A049601

/-! ## A049601.P16289306942355453031

`(A254884(n)+A000045(n))/2`
-/

namespace A049601.P16289306942355453031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254884 n + A000045 n : ℚ) / 2

end

end A049601.P16289306942355453031

namespace A049601

/-- `(A254884(n)+A000045(n))/2` -/
def P16289306942355453031.Spec : Prop :=
  ∀ n, P16289306942355453031.a n = (A049601 n : ℚ)

end A049601

/-! ## A049601.P6396289857306503985

`A000045(n)/2*A099925(n)`
-/

namespace A049601.P6396289857306503985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A099925 n : ℚ)

end

end A049601.P6396289857306503985

namespace A049601

/-- `A000045(n)/2*A099925(n)` -/
def P6396289857306503985.Spec : Prop :=
  ∀ n, P6396289857306503985.a n = (A049601 n : ℚ)

end A049601

/-! ## A049601.P4941355826994881805

`sqrt(A007598(n))/2*A099925(n)`
-/

namespace A049601.P4941355826994881805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) / 2 * (A099925 n : ℝ)

end

end A049601.P4941355826994881805

namespace A049601

/-- `sqrt(A007598(n))/2*A099925(n)` -/
def P4941355826994881805.Spec : Prop :=
  ∀ n, P4941355826994881805.a n = (A049601 n : ℝ)

end A049601

/-! ## A049601.P2785339726733723208

`abs(A106511(2*n+1)+A106511(n+1))`
-/

namespace A049601.P2785339726733723208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106511 (2 * n + 1) + A106511 (n + 1)|

end

end A049601.P2785339726733723208

namespace A049601

/-- `abs(A106511(2*n+1)+A106511(n+1))` -/
def P2785339726733723208.Spec : Prop :=
  ∀ n, P2785339726733723208.a n = A049601 n

end A049601

/-! ## A049601.P3605603160447279019

`∑[A106511(2*n)+A106511(n+2)]-1`
-/

namespace A049601.P3605603160447279019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * n) + A106511 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049601.P3605603160447279019

namespace A049601

/-- `∑[A106511(2*n)+A106511(n+2)]-1` -/
def P3605603160447279019.Spec : Prop :=
  ∀ n, P3605603160447279019.a n = A049601 n

end A049601

/-! ## A049601.P5389328440134137288

`Δ[A001519(n)]-A049602(n)`
-/

namespace A049601.P5389328440134137288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049602 n

end

end A049601.P5389328440134137288

namespace A049601

/-- `Δ[A001519(n)]-A049602(n)` -/
def P5389328440134137288.Spec : Prop :=
  ∀ n, P5389328440134137288.a n = A049601 n

end A049601

/-! ## A049601.P5120881446408997004

`A164267(n+1)-A122367(n)`
-/

namespace A049601.P5120881446408997004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 (n + 1) - A122367 n

end

end A049601.P5120881446408997004

namespace A049601

/-- `A164267(n+1)-A122367(n)` -/
def P5120881446408997004.Spec : Prop :=
  ∀ n, P5120881446408997004.a n = A049601 n

end A049601

/-! ## A049601.P16858128041423942953

`A164267(n+1)-A001519(n+1)`
-/

namespace A049601.P16858128041423942953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 (n + 1) - A001519 (n + 1)

end

end A049601.P16858128041423942953

namespace A049601

/-- `A164267(n+1)-A001519(n+1)` -/
def P16858128041423942953.Spec : Prop :=
  ∀ n, P16858128041423942953.a n = A049601 n

end A049601

/-! ## A049601.P1093998434438189671

`A164267(n+1)-A094967(2*n)`
-/

namespace A049601.P1093998434438189671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 (n + 1) - A094967 (2 * n)

end

end A049601.P1093998434438189671

namespace A049601

/-- `A164267(n+1)-A094967(2*n)` -/
def P1093998434438189671.Spec : Prop :=
  ∀ n, P1093998434438189671.a n = A049601 n

end A049601

/-! ## A049601.P3472173476230738945

`A164267(n+1)-A000045(Δ[n²])`
-/

namespace A049601.P3472173476230738945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 (n + 1) - A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049601.P3472173476230738945

namespace A049601

/-- `A164267(n+1)-A000045(Δ[n²])` -/
def P3472173476230738945.Spec : Prop :=
  ∀ n, P3472173476230738945.a n = A049601 n

end A049601

/-! ## A049601.P11378676834465705032

`A164267(n+1)-Δ[A000045(2*n)]`
-/

namespace A049601.P11378676834465705032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049601.P11378676834465705032

namespace A049601

/-- `A164267(n+1)-Δ[A000045(2*n)]` -/
def P11378676834465705032.Spec : Prop :=
  ∀ n, P11378676834465705032.a n = A049601 n

end A049601

/-! ## A049601.P6367705563476559945

`A164267(n+1)+A001906(n)-A001906(n+1)`
-/

namespace A049601.P6367705563476559945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164267 (n + 1) + (A001906 n - A001906 (n + 1))

end

end A049601.P6367705563476559945

namespace A049601

/-- `A164267(n+1)+A001906(n)-A001906(n+1)` -/
def P6367705563476559945.Spec : Prop :=
  ∀ n, P6367705563476559945.a n = A049601 n

end A049601

/-! ## A049601.P1063935681780677390

`A049602(n+1)-(A192352(n+1)+A049602(n))`
-/

namespace A049601.P1063935681780677390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049602 (n + 1) - (A192352 (n + 1) + A049602 n)

end

end A049601.P1063935681780677390

namespace A049601

/-- `A049602(n+1)-(A192352(n+1)+A049602(n))` -/
def P1063935681780677390.Spec : Prop :=
  ∀ n, P1063935681780677390.a n = A049601 n

end A049601

/-!
# A049602: a(n) = (Fibonacci(2*n)-(-1)^n*Fibonacci(n))/2.

The programs for A049602, the canonical program `A049602.P10363113682009448082` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049602 has offset 0).

The definition of A049602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049602.P10363113682009448082

`2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049602

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)+a(n-4)` -/
def P10363113682009448082.Spec : Prop :=
  ∀ n, P10363113682009448082.a n = A049602 n

theorem P10363113682009448082.correct : P10363113682009448082.Spec := by
  intro n
  simp only [A049602]

end A049602

/-! ## A049602.P9587073872299576275

`(A000045(2*n)-(-1)^n*A000045(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049602.P9587073872299576275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) - (-1) ^ n * A000045 n : ℚ) / 2

end

end A049602.P9587073872299576275

namespace A049602

/-- `(A000045(2*n)-(-1)^n*A000045(n))/2` -/
def P9587073872299576275.Spec : Prop :=
  ∀ n, P9587073872299576275.a n = (A049602 n : ℚ)

end A049602

/-! ## A049602.P17730866430928793901

`ogf((-x+x^2)/(-1+2x+3x^2-4x^3+x^4))`
-/

namespace A049602.P17730866430928793901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, -3, 4, -1] n

end

end A049602.P17730866430928793901

namespace A049602

/-- `ogf((-x+x^2)/(-1+2x+3x^2-4x^3+x^4))` -/
def P17730866430928793901.Spec : Prop :=
  ∀ n, P17730866430928793901.a n = A049602 n

end A049602

/-! ## A049602.P8857449234966090133

`A001906(n)-A049601(n)`
-/

namespace A049602.P8857449234966090133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A049601 n

end

end A049602.P8857449234966090133

namespace A049602

/-- `A001906(n)-A049601(n)` -/
def P8857449234966090133.Spec : Prop :=
  ∀ n, P8857449234966090133.a n = A049602 n

end A049602

/-! ## A049602.P8807379117481847244

`A000045(2*n)-A049601(n)`
-/

namespace A049602.P8807379117481847244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A049601 n

end

end A049602.P8807379117481847244

namespace A049602

/-- `A000045(2*n)-A049601(n)` -/
def P8807379117481847244.Spec : Prop :=
  ∀ n, P8807379117481847244.a n = A049602 n

end A049602

/-! ## A049602.P5323592897580641773

`A000045(n)/2*A098600(n)`
-/

namespace A049602.P5323592897580641773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A098600 n : ℚ)

end

end A049602.P5323592897580641773

namespace A049602

/-- `A000045(n)/2*A098600(n)` -/
def P5323592897580641773.Spec : Prop :=
  ∀ n, P5323592897580641773.a n = (A049602 n : ℚ)

end A049602

/-! ## A049602.P1654028109901156614

`(A119282(n+1)+A001611(2*n))/2`
-/

namespace A049602.P1654028109901156614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119282 (n + 1) + A001611 (2 * n) : ℚ) / 2

end

end A049602.P1654028109901156614

namespace A049602

/-- `(A119282(n+1)+A001611(2*n))/2` -/
def P1654028109901156614.Spec : Prop :=
  ∀ n, P1654028109901156614.a n = (A049602 n : ℚ)

end A049602

/-! ## A049602.P12349776601433318012

`(A119282(n+1)+A008346(2*n))/2`
-/

namespace A049602.P12349776601433318012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119282 (n + 1) + A008346 (2 * n) : ℚ) / 2

end

end A049602.P12349776601433318012

namespace A049602

/-- `(A119282(n+1)+A008346(2*n))/2` -/
def P12349776601433318012.Spec : Prop :=
  ∀ n, P12349776601433318012.a n = (A049602 n : ℚ)

end A049602

/-! ## A049602.P13964573256892353147

`(A355020(2*n)+A119282(n+1))/2`
-/

namespace A049602.P13964573256892353147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355020 (2 * n) + A119282 (n + 1) : ℚ) / 2

end

end A049602.P13964573256892353147

namespace A049602

/-- `(A355020(2*n)+A119282(n+1))/2` -/
def P13964573256892353147.Spec : Prop :=
  ∀ n, P13964573256892353147.a n = (A049602 n : ℚ)

end A049602

/-! ## A049602.P5266689715012881622

`(A000032(n)-(-1)^n)*A000045(n)/2`
-/

namespace A049602.P5266689715012881622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000032 n - (-1) ^ n) * A000045 n : ℚ) / 2

end

end A049602.P5266689715012881622

namespace A049602

/-- `(A000032(n)-(-1)^n)*A000045(n)/2` -/
def P5266689715012881622.Spec : Prop :=
  ∀ n, P5266689715012881622.a n = (A049602 n : ℚ)

end A049602

/-! ## A049602.P13988611262149528795

`(A119282(n+1)-A119282(2*n+1))/2`
-/

namespace A049602.P13988611262149528795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119282 (n + 1) - A119282 (2 * n + 1) : ℚ) / 2

end

end A049602.P13988611262149528795

namespace A049602

/-- `(A119282(n+1)-A119282(2*n+1))/2` -/
def P13988611262149528795.Spec : Prop :=
  ∀ n, P13988611262149528795.a n = (A049602 n : ℚ)

end A049602

/-! ## A049602.P7604619646970393817

`A005252(2*n)+A106511(n+1)-A106511(2*n)`
-/

namespace A049602.P7604619646970393817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 (2 * n) + (A106511 (n + 1) - A106511 (2 * n))

end

end A049602.P7604619646970393817

namespace A049602

/-- `A005252(2*n)+A106511(n+1)-A106511(2*n)` -/
def P7604619646970393817.Spec : Prop :=
  ∀ n, P7604619646970393817.a n = A049602 n

end A049602

/-! ## A049602.P7195092258371765593

`A094686(2*n)+A106511(n+1)-A106511(2*n)`
-/

namespace A049602.P7195092258371765593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n) + (A106511 (n + 1) - A106511 (2 * n))

end

end A049602.P7195092258371765593

namespace A049602

/-- `A094686(2*n)+A106511(n+1)-A106511(2*n)` -/
def P7195092258371765593.Spec : Prop :=
  ∀ n, P7195092258371765593.a n = A049602 n

end A049602

/-! ## A049602.P13108856837982934618

`A106511(2*n+1)+A106511(n+1)+A094966(2*n)`
-/

namespace A049602.P13108856837982934618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * n + 1) + (A106511 (n + 1) + A094966 (2 * n))

end

end A049602.P13108856837982934618

namespace A049602

/-- `A106511(2*n+1)+A106511(n+1)+A094966(2*n)` -/
def P13108856837982934618.Spec : Prop :=
  ∀ n, P13108856837982934618.a n = A049602 n

end A049602

/-! ## A049602.P15025974550638766957

`Δ[A001519(n)]-A049601(n)`
-/

namespace A049602.P15025974550638766957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049601 n

end

end A049602.P15025974550638766957

namespace A049602

/-- `Δ[A001519(n)]-A049601(n)` -/
def P15025974550638766957.Spec : Prop :=
  ∀ n, P15025974550638766957.a n = A049602 n

end A049602

/-! ## A049602.P5670804195670506383

`A001906(n+1)-A164267(n+1)`
-/

namespace A049602.P5670804195670506383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A164267 (n + 1)

end

end A049602.P5670804195670506383

namespace A049602

/-- `A001906(n+1)-A164267(n+1)` -/
def P5670804195670506383.Spec : Prop :=
  ∀ n, P5670804195670506383.a n = A049602 n

end A049602

/-! ## A049602.P15034469062935865842

`∑[A000045(2*n+1)]-A164267(n+1)`
-/

namespace A049602.P15034469062935865842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A164267 (n + 1)

end

end A049602.P15034469062935865842

namespace A049602

/-- `∑[A000045(2*n+1)]-A164267(n+1)` -/
def P15034469062935865842.Spec : Prop :=
  ∀ n, P15034469062935865842.a n = A049602 n

end A049602

/-! ## A049602.P13176061753467942246

`A000045(2*n+1)+A000045(2*n)-A164267(n+1)`
-/

namespace A049602.P13176061753467942246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + (A000045 (2 * n) - A164267 (n + 1))

end

end A049602.P13176061753467942246

namespace A049602

/-- `A000045(2*n+1)+A000045(2*n)-A164267(n+1)` -/
def P13176061753467942246.Spec : Prop :=
  ∀ n, P13176061753467942246.a n = A049602 n

end A049602

/-! ## A049602.P4992120857288226693

`Δ[A000045(Δ[n²])]-A164267(n+1)`
-/

namespace A049602.P4992120857288226693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A164267 (n + 1)

end

end A049602.P4992120857288226693

namespace A049602

/-- `Δ[A000045(Δ[n²])]-A164267(n+1)` -/
def P4992120857288226693.Spec : Prop :=
  ∀ n, P4992120857288226693.a n = A049602 n

end A049602

/-!
# A049603: (1+e)-sigma perfect numbers: (1+e) - sigma(x) = 2*x.

The programs for A049603, there is no canonical definition to state claims against.
-/

/-! ## A049603.P10803129458281071350

`A333927(∑[ceil((n+3)/8)²])`
-/

namespace A049603.P10803129458281071350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / 8⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333927 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049603.P10803129458281071350

/-! ## A049603.P11974888178664647683

`record[A333927(A011973(n))]`
-/

namespace A049603.P11974888178664647683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333927 (A011973 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049603.P11974888178664647683

/-!
# A049604: Array T read by diagonals: T(i,j)=least number of knight's moves on unbounded chessboard from corner (0,0) to square (i,j).

The programs for A049604, there is no canonical definition to state claims against.
-/

/-! ## A049604.P13890076881430087275

`(char[4]+1)*A065775(n)`
-/

namespace A049604.P13890076881430087275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A065775 n

end

end A049604.P13890076881430087275

/-! ## A049604.P16523078293672309635

`A065775(n)*A141044(A183043(n))`
-/

namespace A049604.P16523078293672309635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 n * A141044 (A183043 n).toNat

end

end A049604.P16523078293672309635

/-! ## A049604.P14915549981509070058

`A065775(n)*A141044(A247617(n))`
-/

namespace A049604.P14915549981509070058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 n * A141044 (A247617 n).toNat

end

end A049604.P14915549981509070058

/-! ## A049604.P6955539938795037099

`A065775(n)+and(2, A174690(n))`
-/

namespace A049604.P6955539938795037099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 n + Int.land 2 (A174690 n)

end

end A049604.P6955539938795037099

/-! ## A049604.P11526054802302586486

`A065775(n)+A000122(A030726(n+1))`
-/

namespace A049604.P11526054802302586486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 n + A000122 (A030726 (n + 1)).toNat

end

end A049604.P11526054802302586486

/-! ## A049604.P6023483857424548135

`A065775(n)^A014963(A274426(n+1))`
-/

namespace A049604.P6023483857424548135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065775 n : ℚ) ^ (A014963 (A274426 (n + 1)).toNat : ℤ)

end

end A049604.P6023483857424548135

/-! ## A049604.P4154888360190524056

`A065775(n)+A000038((4-n)²)`
-/

namespace A049604.P4154888360190524056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065775 n + A000038 ((4 - (n : ℤ)) ^ 2).toNat

end

end A049604.P4154888360190524056

/-!
# A049605: Smallest k>1 such that k divides sigma(k*n).

The programs for A049605, there is no canonical definition to state claims against.
-/

/-! ## A049605.P14265182018740597637

`A291359(∑{d}[n+1, #])`
-/

namespace A049605.P14265182018740597637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A049605.P14265182018740597637

/-! ## A049605.P15013503155415458482

`A291359(A000203(n+1))`
-/

namespace A049605.P15013503155415458482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A000203 (n + 1)).toNat

end

end A049605.P15013503155415458482

/-! ## A049605.P1195036370412582184

`A291359(A071189(n+1))`
-/

namespace A049605.P1195036370412582184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A071189 (n + 1)).toNat

end

end A049605.P1195036370412582184

/-! ## A049605.P16908898308863257390

`A291359(A080398(n+1))`
-/

namespace A049605.P16908898308863257390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A080398 (n + 1)).toNat

end

end A049605.P16908898308863257390

/-! ## A049605.P9993846497155222906

`A291359(A175433(n+1))`
-/

namespace A049605.P9993846497155222906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A175433 (n + 1)).toNat

end

end A049605.P9993846497155222906

/-! ## A049605.P18174640130387085235

`A291359(A284326(n+1))`
-/

namespace A049605.P18174640130387085235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A284326 (n + 1)).toNat

end

end A049605.P18174640130387085235

/-! ## A049605.P9348446407638275013

`A291359(A284344(n+1))`
-/

namespace A049605.P9348446407638275013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A284344 (n + 1)).toNat

end

end A049605.P9348446407638275013

/-! ## A049605.P16560062207941549149

`gcd(6, A000203(6*A020639(A000203(n+1))))`
-/

namespace A049605.P16560062207941549149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A000203 (6 * A020639 (A000203 (n + 1)).toNat).toNat)

end

end A049605.P16560062207941549149

/-! ## A049605.P13835673620127156668

`A239492(A020639(A274535(n+1)))`
-/

namespace A049605.P13835673620127156668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (A020639 (A274535 (n + 1)).toNat).toNat

end

end A049605.P13835673620127156668

/-! ## A049605.P1865757757606931660

`A291359(A193553(n+1))`
-/

namespace A049605.P1865757757606931660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A193553 (n + 1)).toNat

end

end A049605.P1865757757606931660

/-! ## A049605.P329132167454465935

`A291359(A319527(n+1))`
-/

namespace A049605.P329132167454465935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A319527 (n + 1)).toNat

end

end A049605.P329132167454465935

/-! ## A049605.P1744837116916770563

`A291359(A283123(n+1))`
-/

namespace A049605.P1744837116916770563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A283123 (n + 1)).toNat

end

end A049605.P1744837116916770563

/-! ## A049605.P1190166639384271368

`A291359(A344132(n+1))`
-/

namespace A049605.P1190166639384271368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A344132 (n + 1)).toNat

end

end A049605.P1190166639384271368

/-! ## A049605.P5947312120016656870

`A291359(A187793(n+1)²)`
-/

namespace A049605.P5947312120016656870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A187793 (n + 1) ^ 2).toNat

end

end A049605.P5947312120016656870

/-! ## A049605.P4430581011991078008

`A291359(A072861(n+1))`
-/

namespace A049605.P4430581011991078008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291359 (A072861 (n + 1)).toNat

end

end A049605.P4430581011991078008

/-! ## A049605.P974872191601473822

`A055942(A000203(n+1)²-1)`
-/

namespace A049605.P974872191601473822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055942 (A000203 (n + 1) ^ 2 - 1).toNat

end

end A049605.P974872191601473822

/-!
# A049606: Largest odd divisor of n!.

The programs for A049606, the canonical program `A049606.P14072092178265714622` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049606 has offset 0).

The definition of A049606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049606.P15321810344032361733

`n!/A060818(n)`
-/

namespace A049606.P15321810344032361733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A060818 n : ℚ)

end

end A049606.P15321810344032361733

namespace A049606

/-- `n!/A060818(n)` -/
def P15321810344032361733.Spec : Prop :=
  ∀ n, P15321810344032361733.a n = (A049606 n : ℚ)

end A049606

/-! ## A049606.P14072092178265714622

`n!/2^A011371(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049606

/-- `n!/2^A011371(n)` -/
def P14072092178265714622.Spec : Prop :=
  ∀ n, P14072092178265714622.a n = (A049606 n : ℚ)

end A049606

/-! ## A049606.P12495731588308798697

`A000265(A000142(n))`
-/

namespace A049606.P12495731588308798697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000142 n).toNat

end

end A049606.P12495731588308798697

namespace A049606

/-- `A000265(A000142(n))` -/
def P12495731588308798697.Spec : Prop :=
  ∀ n, P12495731588308798697.a n = A049606 n

end A049606

/-! ## A049606.P728129905299526528

`n/and(n, -n)*a(n-1)` with `a(0)=1`
-/

namespace A049606.P728129905299526528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (Int.land (n : ℤ) (-(n : ℤ)) : ℚ) * a (n - 1)

end

end A049606.P728129905299526528

namespace A049606

/-- `n/and(n, -n)*a(n-1)` -/
def P728129905299526528.Spec : Prop :=
  ∀ n, P728129905299526528.a n = (A049606 n : ℚ)

end A049606

/-! ## A049606.P15529679792251573015

`∏[gcd(2*n, -∏[-n^(n%2)])]`
-/

namespace A049606.P15529679792251573015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ (n % 2) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (-(∏ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049606.P15529679792251573015

namespace A049606

/-- `∏[gcd(2*n, -∏[-n^(n%2)])]` -/
def P15529679792251573015.Spec : Prop :=
  ∀ n, (P15529679792251573015.a n : ℤ) = A049606 n

end A049606

/-! ## A049606.P6145433654163636300

`gcd(n, (n+1)%2*a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A049606.P6145433654163636300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n ((n + 1) % 2 * a (n - 1)) * a (n - 1)

end

end A049606.P6145433654163636300

namespace A049606

/-- `gcd(n, (n+1)%2*a(n-1))*a(n-1)` -/
def P6145433654163636300.Spec : Prop :=
  ∀ n, (P6145433654163636300.a n : ℤ) = A049606 n

end A049606

/-! ## A049606.P7289047130799094738

`A095987(2*n)`
-/

namespace A049606.P7289047130799094738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095987 (2 * n)

end

end A049606.P7289047130799094738

namespace A049606

/-- `A095987(2*n)` -/
def P7289047130799094738.Spec : Prop :=
  ∀ n, P7289047130799094738.a n = A049606 n

end A049606

/-! ## A049606.P3966439943967552358

`∏[gcd(n, A046983(n))]`
-/

namespace A049606.P3966439943967552358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046983 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049606.P3966439943967552358

namespace A049606

/-- `∏[gcd(n, A046983(n))]` -/
def P3966439943967552358.Spec : Prop :=
  ∀ n, (P3966439943967552358.a n : ℤ) = A049606 n

end A049606

/-! ## A049606.P6078918318908992232

`∏[gcd(2*n, A290716(n))]`
-/

namespace A049606.P6078918318908992232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A290716 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049606.P6078918318908992232

namespace A049606

/-- `∏[gcd(2*n, A290716(n))]` -/
def P6078918318908992232.Spec : Prop :=
  ∀ n, (P6078918318908992232.a n : ℤ) = A049606 n

end A049606

/-! ## A049606.P12365146178406655151

`∏[A000265(round(acot(n)+n))]`
-/

namespace A049606.P12365146178406655151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049606.P12365146178406655151

namespace A049606

/-- `∏[A000265(round(acot(n)+n))]` -/
def P12365146178406655151.Spec : Prop :=
  ∀ n, P12365146178406655151.a n = A049606 n

end A049606

/-!
# A049608: a(n)=T(n,n+2), array T as in A049600.

The programs for A049608, there is no canonical definition to state claims against.
-/

/-! ## A049608.P5595049344824173722

`A035029(n)-A089382(n)`
-/

namespace A049608.P5595049344824173722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035029 n - A089382 n

end

end A049608.P5595049344824173722

/-! ## A049608.P9800731137960576028

`A049600(∑[a(n-1)+4])` with `a(0)=3, a(1)=8`
-/

namespace A049608.P9800731137960576028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049608.P9800731137960576028

/-! ## A049608.P14752095945562248587

`A049600(A132209(n+1))`
-/

namespace A049608.P14752095945562248587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A132209 (n + 1)).toNat

end

end A049608.P14752095945562248587

/-! ## A049608.P14713530852561783983

`A049600(A142463(n+1))`
-/

namespace A049608.P14713530852561783983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A142463 (n + 1)).toNat

end

end A049608.P14713530852561783983

/-! ## A049608.P18436982417731008104

`A049600(A046092(n+1)-1)`
-/

namespace A049608.P18436982417731008104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A046092 (n + 1) - 1).toNat

end

end A049608.P18436982417731008104

/-! ## A049608.P9651536390189213508

`A049600(A001844(n+1)-2)`
-/

namespace A049608.P9651536390189213508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A001844 (n + 1) - 2).toNat

end

end A049608.P9651536390189213508

/-! ## A049608.P9528007390865685002

`A049600(A014105(n+1)+n)`
-/

namespace A049608.P9528007390865685002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A014105 (n + 1) + (n : ℤ)).toNat

end

end A049608.P9528007390865685002

/-! ## A049608.P2889427151639053302

`A049600(A004273(∑[2*(n+1)]))`
-/

namespace A049608.P2889427151639053302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049608.P2889427151639053302

/-! ## A049608.P9913272778923490463

`A049600(A053438(∑[2*(n+1)]))`
-/

namespace A049608.P9913272778923490463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A053438 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049608.P9913272778923490463

/-! ## A049608.P5971070720150413330

`A049600(A000217(2*(n+1))+n)`
-/

namespace A049608.P5971070720150413330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A000217 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A049608.P5971070720150413330

/-!
# A049609: a(n)=T(n,n+3), array T as in A049600.

The programs for A049609, there is no canonical definition to state claims against.
-/

/-! ## A049609.P16124959096439180200

`A049600(∑[a(n-1)+4])` with `a(0)=6`
-/

namespace A049609.P16124959096439180200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049609.P16124959096439180200

/-! ## A049609.P12289381101132977503

`A049600(2*(n+1)*(n+3))`
-/

namespace A049609.P12289381101132977503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (2 * ((n + 1) * (n + 3)))

end

end A049609.P12289381101132977503

/-! ## A049609.P17292869877810517640

`A049600(A054000(n+2))*A178334(n)`
-/

namespace A049609.P17292869877810517640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A054000 (n + 2)).toNat * A178334 n

end

end A049609.P17292869877810517640

/-! ## A049609.P7159488788075572487

`C(A049600(A054000(n+2)), A000038(n)+1)`
-/

namespace A049609.P7159488788075572487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049600 (A054000 (n + 2)).toNat).toNat (A000038 n + 1).toNat

end

end A049609.P7159488788075572487

/-! ## A049609.P9264754193307053372

`C(A049600(A054000(n+2)), A000027(n+1)-n)`
-/

namespace A049609.P9264754193307053372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049600 (A054000 (n + 2)).toNat).toNat (A000027 (n + 1) - (n : ℤ)).toNat

end

end A049609.P9264754193307053372

/-! ## A049609.P8731744684269541308

`A000120(A001316(n))*A049600(A054000(n+2))`
-/

namespace A049609.P8731744684269541308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001316 n).toNat * A049600 (A054000 (n + 2)).toNat

end

end A049609.P8731744684269541308

/-! ## A049609.P12924458593349561632

`A049600(A054000(n+2))-A211225(A178334(n)+1)`
-/

namespace A049609.P12924458593349561632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A054000 (n + 2)).toNat - A211225 (A178334 n + 1).toNat

end

end A049609.P12924458593349561632

/-!
# A049610: a(n) = Sum_{k=0..floor(n/2)} k*binomial(n,2*k) = floor(n*2^(n-3)).

The programs for A049610, the canonical program `A049610.P16178522909987797156` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049610 has offset 0).

The definition of A049610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*2^(n-3))` (program `A049610.P16178522909987797156`, by `A049610.P16178522909987797156.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049610.P16178522909987797156

`floor(n*2^(n-3))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049610

/-- `floor(n*2^(n-3))` -/
def P16178522909987797156.Spec : Prop :=
  ∀ n, P16178522909987797156.a n = A049610 n

theorem P16178522909987797156.correct : P16178522909987797156.Spec := by
  intro n
  simp only [A049610]

end A049610

/-! ## A049610.P16024156241243176658

`ogf((x^2-x^3)/(1-4x+4x^2))`
-/

namespace A049610.P16024156241243176658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -4, 4] n

end

end A049610.P16024156241243176658

namespace A049610

/-- `ogf((x^2-x^3)/(1-4x+4x^2))` -/
def P16024156241243176658.Spec : Prop :=
  ∀ n, P16024156241243176658.a n = A049610 n

end A049610

/-! ## A049610.P9473566562127616480

`n*(2%(n+1))^n/8`
-/

namespace A049610.P9473566562127616480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((((2 % (n + 1)) ^ n : ℕ) : ℚ) / 8)

end

end A049610.P9473566562127616480

namespace A049610

/-- `n*(2%(n+1))^n/8` -/
def P9473566562127616480.Spec : Prop :=
  ∀ n, P9473566562127616480.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P8699960817163990947

`n*Δ[2*a(n-1)]/2` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A049610.P8699960817163990947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 2)

end

end A049610.P8699960817163990947

namespace A049610

/-- `n*Δ[2*a(n-1)]/2` -/
def P8699960817163990947.Spec : Prop :=
  ∀ n, P8699960817163990947.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P10968986746514434408

`(2/(n-1)+2)*a(n-1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A049610.P10968986746514434408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  (2 / ((n : ℤ) - 1 : ℚ) + 2) * a (n - 1)

end

end A049610.P10968986746514434408

namespace A049610

/-- `(2/(n-1)+2)*a(n-1)` -/
def P10968986746514434408.Spec : Prop :=
  ∀ n, P10968986746514434408.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P16318312456634717671

`2*a(n-1)/(1-1/n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A049610.P16318312456634717671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * (a (n - 1) / (1 - 1 / (n : ℚ)))

end

end A049610.P16318312456634717671

namespace A049610

/-- `2*a(n-1)/(1-1/n)` -/
def P16318312456634717671.Spec : Prop :=
  ∀ n, P16318312456634717671.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P9701047704809583381

`2*a(n-1)+2^(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A049610.P9701047704809583381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A049610.P9701047704809583381

namespace A049610

/-- `2*a(n-1)+2^(n-3)` -/
def P9701047704809583381.Spec : Prop :=
  ∀ n, P9701047704809583381.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P12841420445241682245

`4*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A049610.P12841420445241682245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A049610.P12841420445241682245

namespace A049610

/-- `4*(a(n-1)-a(n-2))` -/
def P12841420445241682245.Spec : Prop :=
  ∀ n, P12841420445241682245.a n = A049610 n

end A049610

/-! ## A049610.P5702952841065088219

`n/2*A034008(n)`
-/

namespace A049610.P5702952841065088219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A034008 n : ℚ)

end

end A049610.P5702952841065088219

namespace A049610

/-- `n/2*A034008(n)` -/
def P5702952841065088219.Spec : Prop :=
  ∀ n, P5702952841065088219.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P11365531091614107910

`A111297(n)-2^n`
-/

namespace A049610.P11365531091614107910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n - (2 ^ n : ℤ)

end

end A049610.P11365531091614107910

namespace A049610

/-- `A111297(n)-2^n` -/
def P11365531091614107910.Spec : Prop :=
  ∀ n, P11365531091614107910.a n = A049610 n

end A049610

/-! ## A049610.P6735678071487420304

`n/2*Δ[A166444(n)]`
-/

namespace A049610.P6735678071487420304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A049610.P6735678071487420304

namespace A049610

/-- `n/2*Δ[A166444(n)]` -/
def P6735678071487420304.Spec : Prop :=
  ∀ n, P6735678071487420304.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P13544025825450479754

`n*A131577(abs(1-n))/2`
-/

namespace A049610.P13544025825450479754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A131577 |1 - (n : ℤ)|.toNat : ℚ) / 2)

end

end A049610.P13544025825450479754

namespace A049610

/-- `n*A131577(abs(1-n))/2` -/
def P13544025825450479754.Spec : Prop :=
  ∀ n, P13544025825450479754.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P4532229384093779961

`n*floor(A011782(n+1)/4)/2`
-/

namespace A049610.P4532229384093779961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((⌊(A011782 (n + 1) : ℚ) / 4⌋ : ℚ) / 2)

end

end A049610.P4532229384093779961

namespace A049610

/-- `n*floor(A011782(n+1)/4)/2` -/
def P4532229384093779961.Spec : Prop :=
  ∀ n, P4532229384093779961.a n = (A049610 n : ℚ)

end A049610

/-! ## A049610.P13493637542500189165

`A336102(A004273(n))`
-/

namespace A049610.P13493637542500189165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A004273 n).toNat

end

end A049610.P13493637542500189165

namespace A049610

/-- `A336102(A004273(n))` -/
def P13493637542500189165.Spec : Prop :=
  ∀ n, P13493637542500189165.a n = A049610 n

end A049610

/-! ## A049610.P3440502545073417819

`A336102(A004275(n))`
-/

namespace A049610.P3440502545073417819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A004275 n).toNat

end

end A049610.P3440502545073417819

namespace A049610

/-- `A336102(A004275(n))` -/
def P3440502545073417819.Spec : Prop :=
  ∀ n, P3440502545073417819.a n = A049610 n

end A049610

/-! ## A049610.P11809851943046384607

`A336102(A092535(n))`
-/

namespace A049610.P11809851943046384607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A092535 n).toNat

end

end A049610.P11809851943046384607

namespace A049610

/-- `A336102(A092535(n))` -/
def P11809851943046384607.Spec : Prop :=
  ∀ n, P11809851943046384607.a n = A049610 n

end A049610

/-! ## A049610.P11755379240004413091

`A336102(A163985(n))`
-/

namespace A049610.P11755379240004413091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A163985 n).toNat

end

end A049610.P11755379240004413091

namespace A049610

/-- `A336102(A163985(n))` -/
def P11755379240004413091.Spec : Prop :=
  ∀ n, P11755379240004413091.a n = A049610 n

end A049610

/-! ## A049610.P14848348106761205931

`A336102(A058992(n+1))`
-/

namespace A049610.P14848348106761205931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A058992 (n + 1)).toNat

end

end A049610.P14848348106761205931

namespace A049610

/-- `A336102(A058992(n+1))` -/
def P14848348106761205931.Spec : Prop :=
  ∀ n, P14848348106761205931.a n = A049610 n

end A049610

/-! ## A049610.P846358763761435150

`A336102(A004277(n)-1)`
-/

namespace A049610.P846358763761435150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A004277 n - 1).toNat

end

end A049610.P846358763761435150

namespace A049610

/-- `A336102(A004277(n)-1)` -/
def P846358763761435150.Spec : Prop :=
  ∀ n, P846358763761435150.a n = A049610 n

end A049610

/-! ## A049610.P3300123209642376129

`A336102(A130824(n)/2)`
-/

namespace A049610.P3300123209642376129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (SequenceMachineLib.roundAway ((A130824 n : ℚ) / 2)).toNat

end

end A049610.P3300123209642376129

namespace A049610

/-- `A336102(A130824(n)/2)` -/
def P3300123209642376129.Spec : Prop :=
  ∀ n, P3300123209642376129.a n = A049610 n

end A049610

/-!
# A049611: a(n) = T(n,2), array T as in A049600.

The programs for A049611, the canonical program `A049611.P6723745499137786091` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049611 has offset 0).

The definition of A049611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049611.P6723745499137786091

`A058396(n)-A045623(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049611

/-- `A058396(n)-A045623(n)` -/
def P6723745499137786091.Spec : Prop :=
  ∀ n, P6723745499137786091.a n = A049611 n

theorem P6723745499137786091.correct : P6723745499137786091.Spec := by
  intro n
  simp only [A049611]

end A049611

/-! ## A049611.P15498660974674598349

`A128183(n)-A045891(n)`
-/

namespace A049611.P15498660974674598349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128183 n - A045891 n

end

end A049611.P15498660974674598349

namespace A049611

/-- `A128183(n)-A045891(n)` -/
def P15498660974674598349.Spec : Prop :=
  ∀ n, P15498660974674598349.a n = A049611 n

theorem P15498660974674598349.correct : P15498660974674598349.Spec := by
  intro n
  simp only [A049611, Nat.add_sub_cancel, A049611.P15498660974674598349.a, A049611.P6723745499137786091.a, A045623, A045623.P6583215818188714141.a, A045891, A045891.P14011693326007966013.a, A058396, A058396.P10499411941867456114.a, A128183, A128183.P4602037080132375084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A049611

/-! ## A049611.P3669487745380230494

`A190050(n)-A011782(n)`
-/

namespace A049611.P3669487745380230494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n - A011782 n

end

end A049611.P3669487745380230494

namespace A049611

/-- `A190050(n)-A011782(n)` -/
def P3669487745380230494.Spec : Prop :=
  ∀ n, P3669487745380230494.a n = A049611 n

end A049611

/-! ## A049611.P15740130648901590843

`A189052(n+2)-A189052(n)`
-/

namespace A049611.P15740130648901590843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189052 (n + 2) - A189052 n

end

end A049611.P15740130648901590843

namespace A049611

/-- `A189052(n+2)-A189052(n)` -/
def P15740130648901590843.Spec : Prop :=
  ∀ n, P15740130648901590843.a n = A049611 n

end A049611

/-! ## A049611.P7766441862031070539

`A058396(n)-Δ[Δ[A139756(n)]]`
-/

namespace A049611.P7766441862031070539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n - (f1 (n + 1) - f1 n)

end

end A049611.P7766441862031070539

namespace A049611

/-- `A058396(n)-Δ[Δ[A139756(n)]]` -/
def P7766441862031070539.Spec : Prop :=
  ∀ n, P7766441862031070539.a n = A049611 n

end A049611

/-! ## A049611.P11379985607612678253

`A158920(n+2)-A045623(n+1)`
-/

namespace A049611.P11379985607612678253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 2) - A045623 (n + 1)

end

end A049611.P11379985607612678253

namespace A049611

/-- `A158920(n+2)-A045623(n+1)` -/
def P11379985607612678253.Spec : Prop :=
  ∀ n, P11379985607612678253.a n = A049611 n

end A049611

/-! ## A049611.P14250175329620477416

`A058396(n)-ceil(A001792(n+1)/4)`
-/

namespace A049611.P14250175329620477416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n - ⌈(A001792 (n + 1) : ℚ) / 4⌉

end

end A049611.P14250175329620477416

namespace A049611

/-- `A058396(n)-ceil(A001792(n+1)/4)` -/
def P14250175329620477416.Spec : Prop :=
  ∀ n, P14250175329620477416.a n = A049611 n

end A049611

/-! ## A049611.P14583597620239723385

`∑[∑[A158920(n+1)]-A158920(n+1)]`
-/

namespace A049611.P14583597620239723385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A158920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049611.P14583597620239723385

namespace A049611

/-- `∑[∑[A158920(n+1)]-A158920(n+1)]` -/
def P14583597620239723385.Spec : Prop :=
  ∀ n, P14583597620239723385.a n = A049611 n

end A049611

/-! ## A049611.P18013349224062951083

`A058396(n)-(A084858(n)-n*2^(n-1))`
-/

namespace A049611.P18013349224062951083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058396 n : ℚ) - ((A084858 n : ℚ) - (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A049611.P18013349224062951083

namespace A049611

/-- `A058396(n)-(A084858(n)-n*2^(n-1))` -/
def P18013349224062951083.Spec : Prop :=
  ∀ n, P18013349224062951083.a n = (A049611 n : ℚ)

end A049611

/-! ## A049611.P14111748063629982107

`A058396(n)-Δ[or(1, (n+1)*A000079(n))]/4`
-/

namespace A049611.P14111748063629982107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 1 : ℤ) * A000079 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058396 n : ℚ) - (f1 (n + 1) - f1 n : ℚ) / 4

end

end A049611.P14111748063629982107

namespace A049611

/-- `A058396(n)-Δ[or(1, (n+1)*A000079(n))]/4` -/
def P14111748063629982107.Spec : Prop :=
  ∀ n, P14111748063629982107.a n = (A049611 n : ℚ)

end A049611

/-! ## A049611.P5976206686516629059

`A190050(n)-gcd(A131575(n)², A131577(n))`
-/

namespace A049611.P5976206686516629059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n - (Int.gcd (A131575 n ^ 2) (A131577 n) : ℤ)

end

end A049611.P5976206686516629059

namespace A049611

/-- `A190050(n)-gcd(A131575(n)², A131577(n))` -/
def P5976206686516629059.Spec : Prop :=
  ∀ n, P5976206686516629059.a n = A049611 n

end A049611

/-! ## A049611.P4126605166312454659

`A084851(n)-A058396(n)`
-/

namespace A049611.P4126605166312454659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n - A058396 n

end

end A049611.P4126605166312454659

namespace A049611

/-- `A084851(n)-A058396(n)` -/
def P4126605166312454659.Spec : Prop :=
  ∀ n, P4126605166312454659.a n = A049611 n

end A049611

/-! ## A049611.P8288978008398449374

`(A084851(n)-A045623(n))/2`
-/

namespace A049611.P8288978008398449374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084851 n - A045623 n : ℚ) / 2

end

end A049611.P8288978008398449374

namespace A049611

/-- `(A084851(n)-A045623(n))/2` -/
def P8288978008398449374.Spec : Prop :=
  ∀ n, P8288978008398449374.a n = (A049611 n : ℚ)

end A049611

/-! ## A049611.P1155669754154951152

`(A000217(n+2)-2)*A131577(n)/4`
-/

namespace A049611.P1155669754154951152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 (n + 2) - 2) * A131577 n : ℚ) / 4

end

end A049611.P1155669754154951152

namespace A049611

/-- `(A000217(n+2)-2)*A131577(n)/4` -/
def P1155669754154951152.Spec : Prop :=
  ∀ n, P1155669754154951152.a n = (A049611 n : ℚ)

end A049611

/-! ## A049611.P10858609329352079954

`(∑[n+2]-1)*A155559(n)/8`
-/

namespace A049611.P10858609329352079954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * A155559 n : ℚ) / 8

end

end A049611.P10858609329352079954

namespace A049611

/-- `(∑[n+2]-1)*A155559(n)/8` -/
def P10858609329352079954.Spec : Prop :=
  ∀ n, P10858609329352079954.a n = (A049611 n : ℚ)

end A049611

/-! ## A049611.P13038914490141898010

`2*A049612(n)-∑[A049612(n)]`
-/

namespace A049611.P13038914490141898010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049612 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049611.P13038914490141898010

namespace A049611

/-- `2*A049612(n)-∑[A049612(n)]` -/
def P13038914490141898010.Spec : Prop :=
  ∀ n, P13038914490141898010.a n = A049611 n

end A049611

/-! ## A049611.P3085348566530803442

`A318946(n+2)-A318947(n+2)`
-/

namespace A049611.P3085348566530803442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318946 (n + 2) - A318947 (n + 2)

end

end A049611.P3085348566530803442

namespace A049611

/-- `A318946(n+2)-A318947(n+2)` -/
def P3085348566530803442.Spec : Prop :=
  ∀ n, P3085348566530803442.a n = A049611 n

end A049611

/-! ## A049611.P17171334975742998396

`∑[A062110(A167614(n+1))]`
-/

namespace A049611.P17171334975742998396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049611.P17171334975742998396

namespace A049611

/-- `∑[A062110(A167614(n+1))]` -/
def P17171334975742998396.Spec : Prop :=
  ∀ n, P17171334975742998396.a n = A049611 n

end A049611

/-! ## A049611.P8679478130356668505

`A049600(∑[n+3])`
-/

namespace A049611.P8679478130356668505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049611.P8679478130356668505

namespace A049611

/-- `A049600(∑[n+3])` -/
def P8679478130356668505.Spec : Prop :=
  ∀ n, P8679478130356668505.a n = A049611 n

end A049611

/-! ## A049611.P9011912492750405075

`Δ[A124182(∑[n+3])]`
-/

namespace A049611.P9011912492750405075
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049611.P9011912492750405075

namespace A049611

/-- `Δ[A124182(∑[n+3])]` -/
def P9011912492750405075.Spec : Prop :=
  ∀ n, P9011912492750405075.a n = A049611 n

end A049611

/-!
# A049612: a(n) = T(n,3), array T as in A049600.

The programs for A049612, the canonical program `A049612.P3661608275935080557` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049612 has offset 0).

The definition of A049612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049612.P3661608275935080557

`A062109(n)-A058396(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049612

/-- `A062109(n)-A058396(n)` -/
def P3661608275935080557.Spec : Prop :=
  ∀ n, P3661608275935080557.a n = A049612 n

theorem P3661608275935080557.correct : P3661608275935080557.Spec := by
  intro n
  simp only [A049612]

end A049612

/-! ## A049612.P8376637283937860553

`A062109(n)-Δ[A049611(n)]`
-/

namespace A049612.P8376637283937860553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 n - (f1 (n + 1) - f1 n)

end

end A049612.P8376637283937860553

namespace A049612

/-- `A062109(n)-Δ[A049611(n)]` -/
def P8376637283937860553.Spec : Prop :=
  ∀ n, P8376637283937860553.a n = A049612 n

end A049612

/-! ## A049612.P14588583299095732995

`A049611(n)+A062109(n)-A049611(n+1)`
-/

namespace A049612.P14588583299095732995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n + (A062109 n - A049611 (n + 1))

end

end A049612.P14588583299095732995

namespace A049612

/-- `A049611(n)+A062109(n)-A049611(n+1)` -/
def P14588583299095732995.Spec : Prop :=
  ∀ n, P14588583299095732995.a n = A049612 n

end A049612

/-! ## A049612.P9501776359147258154

`2*A055589(n)-∑[A055589(n)]`
-/

namespace A049612.P9501776359147258154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055589 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049612.P9501776359147258154

namespace A049612

/-- `2*A055589(n)-∑[A055589(n)]` -/
def P9501776359147258154.Spec : Prop :=
  ∀ n, P9501776359147258154.a n = A049612 n

end A049612

/-! ## A049612.P13685729182700030204

`∑[A062110(A167614(n+2)+1)]`
-/

namespace A049612.P13685729182700030204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049612.P13685729182700030204

namespace A049612

/-- `∑[A062110(A167614(n+2)+1)]` -/
def P13685729182700030204.Spec : Prop :=
  ∀ n, P13685729182700030204.a n = A049612 n

end A049612

/-! ## A049612.P2483906078207080907

`∑[A062110(A166136(n+2)-2)]`
-/

namespace A049612.P2483906078207080907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A166136 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049612.P2483906078207080907

namespace A049612

/-- `∑[A062110(A166136(n+2)-2)]` -/
def P2483906078207080907.Spec : Prop :=
  ∀ n, P2483906078207080907.a n = A049612 n

end A049612

/-! ## A049612.P5636394705537706830

`A053616(A000124(n))*A106195(A167614(n+1))`
-/

namespace A049612.P5636394705537706830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A000124 n).toNat * A106195 (A167614 (n + 1)).toNat

end

end A049612.P5636394705537706830

namespace A049612

/-- `A053616(A000124(n))*A106195(A167614(n+1))` -/
def P5636394705537706830.Spec : Prop :=
  ∀ n, P5636394705537706830.a n = A049612 n

end A049612

/-! ## A049612.P12207682748647427324

`A049600(C(n+4, 2)+n)`
-/

namespace A049612.P12207682748647427324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (Nat.choose (n + 4) 2 + n)

end

end A049612.P12207682748647427324

namespace A049612

/-- `A049600(C(n+4, 2)+n)` -/
def P12207682748647427324.Spec : Prop :=
  ∀ n, P12207682748647427324.a n = A049612 n

end A049612

/-! ## A049612.P12041143721890333789

`A049600(∑[n+3]+n+3)`
-/

namespace A049612.P12041143721890333789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A049612.P12041143721890333789

namespace A049612

/-- `A049600(∑[n+3]+n+3)` -/
def P12041143721890333789.Spec : Prop :=
  ∀ n, P12041143721890333789.a n = A049612 n

end A049612

/-! ## A049612.P6019488321775933330

`record[A049600(abs(A046691(n)))]`
-/

namespace A049612.P6019488321775933330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049612.P6019488321775933330

namespace A049612

/-- `record[A049600(abs(A046691(n)))]` -/
def P6019488321775933330.Spec : Prop :=
  ∀ n, P6019488321775933330.a n = A049612 n

end A049612

/-! ## A049612.P13422862911465906135

`Δ[Δ[A201701(A055999(n)+9)]]`
-/

namespace A049612.P13422862911465906135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A055999 n + 9).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049612.P13422862911465906135

namespace A049612

/-- `Δ[Δ[A201701(A055999(n)+9)]]` -/
def P13422862911465906135.Spec : Prop :=
  ∀ n, P13422862911465906135.a n = A049612 n

end A049612

/-!
# A049613: a(n) = 2n - (largest prime < 2n-2).

The programs for A049613, the canonical program `A049613.P4444371646384926939` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049613 has offset 3).

The definition of A049613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049613.P4444371646384926939

`2*(n+3)-A007917(2*(n+3)-2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049613

/-- `2*(n+3)-A007917(2*(n+3)-2)` -/
def P4444371646384926939.Spec : Prop :=
  ∀ n, P4444371646384926939.a n = A049613 (n + 3)

theorem P4444371646384926939.correct : P4444371646384926939.Spec := by
  intro n
  simp only [A049613, Nat.add_sub_cancel]

end A049613

/-! ## A049613.P6165397218719363825

`A049653(n+2)+2`
-/

namespace A049613.P6165397218719363825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049653 (n + 2) + 2

end

end A049613.P6165397218719363825

namespace A049613

/-- `A049653(n+2)+2` -/
def P6165397218719363825.Spec : Prop :=
  ∀ n, P6165397218719363825.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P2496442060840644139

`2*A049847(n+2)+1`
-/

namespace A049613.P2496442060840644139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049847 (n + 2) + 1

end

end A049613.P2496442060840644139

namespace A049613

/-- `2*A049847(n+2)+1` -/
def P2496442060840644139.Spec : Prop :=
  ∀ n, P2496442060840644139.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P12836057809797850117

`A175851(2*(n+2))+1`
-/

namespace A049613.P12836057809797850117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * (n + 2)) + 1

end

end A049613.P12836057809797850117

namespace A049613

/-- `A175851(2*(n+2))+1` -/
def P12836057809797850117.Spec : Prop :=
  ∀ n, P12836057809797850117.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P12491773010911015879

`4-A088631(n+2)+n`
-/

namespace A049613.P12491773010911015879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A088631 (n + 2) + (n : ℤ)

end

end A049613.P12491773010911015879

namespace A049613

/-- `4-A088631(n+2)+n` -/
def P12491773010911015879.Spec : Prop :=
  ∀ n, P12491773010911015879.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P8247212650232839943

`2*(n+3)-A060265(n+2)`
-/

namespace A049613.P8247212650232839943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A060265 (n + 2)

end

end A049613.P8247212650232839943

namespace A049613

/-- `2*(n+3)-A060265(n+2)` -/
def P8247212650232839943.Spec : Prop :=
  ∀ n, P8247212650232839943.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P11062792299080298217

`A009056(A049653(n+2))`
-/

namespace A049613.P11062792299080298217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A049653 (n + 2)).toNat

end

end A049613.P11062792299080298217

namespace A049613

/-- `A009056(A049653(n+2))` -/
def P11062792299080298217.Spec : Prop :=
  ∀ n, P11062792299080298217.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P13631697178958553490

`A020705(n)-A088631(n+2)`
-/

namespace A049613.P13631697178958553490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n - A088631 (n + 2)

end

end A049613.P13631697178958553490

namespace A049613

/-- `A020705(n)-A088631(n+2)` -/
def P13631697178958553490.Spec : Prop :=
  ∀ n, P13631697178958553490.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P11290628976042357445

`A020481(n+3)+A020482(n+3)-A060265(n+2)`
-/

namespace A049613.P11290628976042357445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 3) + (A020482 (n + 3) - A060265 (n + 2))

end

end A049613.P11290628976042357445

namespace A049613

/-- `A020481(n+3)+A020482(n+3)-A060265(n+2)` -/
def P11290628976042357445.Spec : Prop :=
  ∀ n, P11290628976042357445.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P15335948609487625297

`A049716(n+2)+1`
-/

namespace A049613.P15335948609487625297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 2) + 1

end

end A049613.P15335948609487625297

namespace A049613

/-- `A049716(n+2)+1` -/
def P15335948609487625297.Spec : Prop :=
  ∀ n, P15335948609487625297.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P5202271066388756201

`A238737(n+1)+2`
-/

namespace A049613.P5202271066388756201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (n + 1) + 2

end

end A049613.P5202271066388756201

namespace A049613

/-- `A238737(n+1)+2` -/
def P5202271066388756201.Spec : Prop :=
  ∀ n, P5202271066388756201.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P15353560341412512362

`2*(n+3)-A060308(n+2)`
-/

namespace A049613.P15353560341412512362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A060308 (n + 2)

end

end A049613.P15353560341412512362

namespace A049613

/-- `2*(n+3)-A060308(n+2)` -/
def P15353560341412512362.Spec : Prop :=
  ∀ n, P15353560341412512362.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P5182966443835541572

`A009056(A238737(n+1))`
-/

namespace A049613.P5182966443835541572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A238737 (n + 1)).toNat

end

end A049613.P5182966443835541572

namespace A049613

/-- `A009056(A238737(n+1))` -/
def P5182966443835541572.Spec : Prop :=
  ∀ n, P5182966443835541572.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P11210617669311469916

`A004442(A049716(n+2))`
-/

namespace A049613.P11210617669311469916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A049716 (n + 2)).toNat

end

end A049613.P11210617669311469916

namespace A049613

/-- `A004442(A049716(n+2))` -/
def P11210617669311469916.Spec : Prop :=
  ∀ n, P11210617669311469916.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P4517537205579729742

`A144396(n+2)+1-A060308(n+2)`
-/

namespace A049613.P4517537205579729742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 2) + (1 - A060308 (n + 2))

end

end A049613.P4517537205579729742

namespace A049613

/-- `A144396(n+2)+1-A060308(n+2)` -/
def P4517537205579729742.Spec : Prop :=
  ∀ n, P4517537205579729742.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P11959376798367209821

`A020481(n+3)+A020482(n+3)-A060308(n+2)`
-/

namespace A049613.P11959376798367209821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 3) + (A020482 (n + 3) - A060308 (n + 2))

end

end A049613.P11959376798367209821

namespace A049613

/-- `A020481(n+3)+A020482(n+3)-A060308(n+2)` -/
def P11959376798367209821.Spec : Prop :=
  ∀ n, P11959376798367209821.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P14930264368087133477

`A049711(2*(n+2))+2`
-/

namespace A049613.P14930264368087133477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (2 * (n + 2)) + 2

end

end A049613.P14930264368087133477

namespace A049613

/-- `A049711(2*(n+2))+2` -/
def P14930264368087133477.Spec : Prop :=
  ∀ n, P14930264368087133477.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P9458033502836474194

`A308050(2*n+5)+1`
-/

namespace A049613.P9458033502836474194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308050 (2 * n + 5) + 1

end

end A049613.P9458033502836474194

namespace A049613

/-- `A308050(2*n+5)+1` -/
def P9458033502836474194.Spec : Prop :=
  ∀ n, P9458033502836474194.a n = A049613 (n + 3)

end A049613

/-! ## A049613.P12464495827956889203

`4*(n+2)+2-A013635(2*(n+2))`
-/

namespace A049613.P12464495827956889203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 2) : ℤ) + (2 - A013635 (2 * (n + 2)))

end

end A049613.P12464495827956889203

namespace A049613

/-- `4*(n+2)+2-A013635(2*(n+2))` -/
def P12464495827956889203.Spec : Prop :=
  ∀ n, P12464495827956889203.a n = A049613 (n + 3)

end A049613

/-!
# A049614: n! divided by its squarefree kernel.

The programs for A049614, the canonical program `A049614.P5818696899068743169` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049614 has offset 0).

The definition of A049614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049614.P5818696899068743169

`A000142(n)/A034386(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049614

/-- `A000142(n)/A034386(n)` -/
def P5818696899068743169.Spec : Prop :=
  ∀ n, P5818696899068743169.a n = (A049614 n : ℚ)

end A049614

/-! ## A049614.P12009553066566636345

`a(n-1)*A005451(n)` with `a(0)=1`
-/

namespace A049614.P12009553066566636345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A005451 n

end

end A049614.P12009553066566636345

namespace A049614

/-- `a(n-1)*A005451(n)` -/
def P12009553066566636345.Spec : Prop :=
  ∀ n, P12009553066566636345.a n = A049614 n

end A049614

/-! ## A049614.P4817671406411932724

`a(n-1)*A063928(2*n)` with `a(0)=1`
-/

namespace A049614.P4817671406411932724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A063928 (2 * n)

end

end A049614.P4817671406411932724

namespace A049614

/-- `a(n-1)*A063928(2*n)` -/
def P4817671406411932724.Spec : Prop :=
  ∀ n, P4817671406411932724.a n = A049614 n

end A049614

/-! ## A049614.P9408109072518686453

`(n-A166260(n))*a(n-1)` with `a(0)=1`
-/

namespace A049614.P9408109072518686453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - A166260 n) * a (n - 1)

end

end A049614.P9408109072518686453

namespace A049614

/-- `(n-A166260(n))*a(n-1)` -/
def P9408109072518686453.Spec : Prop :=
  ∀ n, P9408109072518686453.a n = A049614 n

end A049614

/-! ## A049614.P6221313707957528759

`gcd(n, C(2, A000005(n)))*a(n-1)` with `a(0)=1`
-/

namespace A049614.P6221313707957528759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n (Nat.choose 2 (A000005 n).toNat) * a (n - 1)

end

end A049614.P6221313707957528759

namespace A049614

/-- `gcd(n, C(2, A000005(n)))*a(n-1)` -/
def P6221313707957528759.Spec : Prop :=
  ∀ n, (P6221313707957528759.a n : ℤ) = A049614 n

end A049614

/-! ## A049614.P4480369623965954136

`∏[A063928(A004277(n))]`
-/

namespace A049614.P4480369623965954136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049614.P4480369623965954136

namespace A049614

/-- `∏[A063928(A004277(n))]` -/
def P4480369623965954136.Spec : Prop :=
  ∀ n, P4480369623965954136.a n = A049614 n

end A049614

/-! ## A049614.P17179719736211007691

`∏[n^A261079(A030664(n))]`
-/

namespace A049614.P17179719736211007691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A261079 (A030664 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049614.P17179719736211007691

namespace A049614

/-- `∏[n^A261079(A030664(n))]` -/
def P17179719736211007691.Spec : Prop :=
  ∀ n, P17179719736211007691.a n = (A049614 n : ℚ)

end A049614

/-! ## A049614.P17926174664377356592

`∏[gcd(n, A003418(A049820(n+1))²)]`
-/

namespace A049614.P17926174664377356592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003418 (A049820 (n + 1)).toNat ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049614.P17926174664377356592

namespace A049614

/-- `∏[gcd(n, A003418(A049820(n+1))²)]` -/
def P17926174664377356592.Spec : Prop :=
  ∀ n, (P17926174664377356592.a n : ℤ) = A049614 n

end A049614

/-! ## A049614.P5253168817895942831

`∏[A028310(n/A089026(A028310(n)))]`
-/

namespace A049614.P5253168817895942831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((n : ℚ) / (A089026 (A028310 n).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A049614.P5253168817895942831

namespace A049614

/-- `∏[A028310(n/A089026(A028310(n)))]` -/
def P5253168817895942831.Spec : Prop :=
  ∀ n, P5253168817895942831.a n = A049614 n

end A049614

/-! ## A049614.P14819172215063686285

`A002944(n+1)/A034386(n)*A025527(n+1)`
-/

namespace A049614.P14819172215063686285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 1) : ℚ) / (A034386 n : ℚ) * (A025527 (n + 1) : ℚ)

end

end A049614.P14819172215063686285

namespace A049614

/-- `A002944(n+1)/A034386(n)*A025527(n+1)` -/
def P14819172215063686285.Spec : Prop :=
  ∀ n, P14819172215063686285.a n = (A049614 n : ℚ)

end A049614

/-!
# A049615: Array T by antidiagonals; T(i,j) = number of lattice points (x,y) hidden from (i,j), where 0<=x<=i, 0<=y<=j; (x,y) is hidden if there is a lattice point (h,k) collinear with and between (x,y) and (i,j).

The programs for A049615, there is no canonical definition to state claims against.
-/

/-! ## A049615.P14137592404882607320

`A059036(n)-A049687(n)`
-/

namespace A049615.P14137592404882607320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n - A049687 n

end

end A049615.P14137592404882607320

/-! ## A049615.P8693455453156246291

`A003991(n+1)-A049627(n)`
-/

namespace A049615.P8693455453156246291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A049627 n

end

end A049615.P8693455453156246291

/-! ## A049615.P8984326622685422760

`A003991(n+1)-(A049687(n)+1)`
-/

namespace A049615.P8984326622685422760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - (A049687 n + 1)

end

end A049615.P8984326622685422760

/-! ## A049615.P12164772235933556795

`A023443(A003991(n+1)-A049687(n))`
-/

namespace A049615.P12164772235933556795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003991 (n + 1) - A049687 n).toNat

end

end A049615.P12164772235933556795

/-! ## A049615.P15024582249126637376

`A003056(n)+A004247(n)-A049687(n)`
-/

namespace A049615.P15024582249126637376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A004247 n - A049687 n)

end

end A049615.P15024582249126637376

/-! ## A049615.P15520490299570195141

`A141387(n)-(A049687(n)+A004247(n))`
-/

namespace A049615.P15520490299570195141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n - (A049687 n + A004247 n)

end

end A049615.P15520490299570195141

/-! ## A049615.P11527684066600638932

`A002024(n+1)-(A176270(n)+A049687(n))`
-/

namespace A049615.P11527684066600638932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (A176270 n + A049687 n)

end

end A049615.P11527684066600638932

/-! ## A049615.P10500175135961182769

`A059169(A098352(n+1))-A049687(n)`
-/

namespace A049615.P10500175135961182769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A098352 (n + 1)).toNat - A049687 n

end

end A049615.P10500175135961182769

/-! ## A049615.P4736940108524244359

`A000005(A036561(n))-A049627(n)`
-/

namespace A049615.P4736940108524244359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat - A049627 n

end

end A049615.P4736940108524244359

/-! ## A049615.P10635118490614888834

`A000005(A175840(n))-A049627(n)`
-/

namespace A049615.P10635118490614888834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175840 n).toNat - A049627 n

end

end A049615.P10635118490614888834

/-!
# A049616: a(n) = Sum_{i=1..n} T(i,n-i), where T is A049615.

The programs for A049616, the canonical program `A049616.P9575760654266147499` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049616 has offset 0).

The definition of A049616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049616.P752125717335100721

`∑[∑[A062830(n)]-1]`
-/

namespace A049616.P752125717335100721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049616.P752125717335100721

namespace A049616

/-- `∑[∑[A062830(n)]-1]` -/
def P752125717335100721.Spec : Prop :=
  ∀ n, P752125717335100721.a n = A049616 n

end A049616

/-! ## A049616.P2644957419627670372

`∑[∑[n]+n-A049643(n)]`
-/

namespace A049616.P2644957419627670372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ) - A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049616.P2644957419627670372

namespace A049616

/-- `∑[∑[n]+n-A049643(n)]` -/
def P2644957419627670372.Spec : Prop :=
  ∀ n, P2644957419627670372.a n = A049616 n

end A049616

/-! ## A049616.P6782179166656163937

`∑[a(n-1)+n+1-A000010(n)]` with `a(0)=0, a(1)=0`
-/

namespace A049616.P6782179166656163937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + ((n + 1 : ℤ) - A000010 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049616.P6782179166656163937

namespace A049616

/-- `∑[a(n-1)+n+1-A000010(n)]` -/
def P6782179166656163937.Spec : Prop :=
  ∀ n, P6782179166656163937.a n = A049616 n

end A049616

/-! ## A049616.P14299665965390132682

`A049619(n)+A049618(n)`
-/

namespace A049616.P14299665965390132682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049619 n + A049618 n

end

end A049616.P14299665965390132682

namespace A049616

/-- `A049619(n)+A049618(n)` -/
def P14299665965390132682.Spec : Prop :=
  ∀ n, P14299665965390132682.a n = A049616 n

end A049616

/-! ## A049616.P9575760654266147499

`A121968(n+1)-A005598(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049616

/-- `A121968(n+1)-A005598(n)` -/
def P9575760654266147499.Spec : Prop :=
  ∀ n, P9575760654266147499.a n = A049616 n

theorem P9575760654266147499.correct : P9575760654266147499.Spec := by
  intro n
  simp only [A049616]

end A049616

/-! ## A049616.P3108595850791158083

`A074742(n)%A135342(n+1)`
-/

namespace A049616.P3108595850791158083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074742 n) (A135342 (n + 1))

end

end A049616.P3108595850791158083

namespace A049616

/-- `A074742(n)%A135342(n+1)` -/
def P3108595850791158083.Spec : Prop :=
  ∀ n, P3108595850791158083.a n = A049616 n

end A049616

/-! ## A049616.P7404539327743066250

`∑[n-(A002088(n)-A000217(n))]-n`
-/

namespace A049616.P7404539327743066250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A002088 n - A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A049616.P7404539327743066250

namespace A049616

/-- `∑[n-(A002088(n)-A000217(n))]-n` -/
def P7404539327743066250.Spec : Prop :=
  ∀ n, P7404539327743066250.a n = A049616 n

end A049616

/-! ## A049616.P11903761899805731436

`A049617(A142150(n))+2*A049619(n)`
-/

namespace A049616.P11903761899805731436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049617 (A142150 n).toNat + 2 * A049619 n

end

end A049616.P11903761899805731436

namespace A049616

/-- `A049617(A142150(n))+2*A049619(n)` -/
def P11903761899805731436.Spec : Prop :=
  ∀ n, P11903761899805731436.a n = A049616 n

end A049616

/-! ## A049616.P3703195155705910057

`2*A049618(n)-A049617(A142150(n))`
-/

namespace A049616.P3703195155705910057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049618 n - A049617 (A142150 n).toNat

end

end A049616.P3703195155705910057

namespace A049616

/-- `2*A049618(n)-A049617(A142150(n))` -/
def P3703195155705910057.Spec : Prop :=
  ∀ n, P3703195155705910057.a n = A049616 n

end A049616

/-! ## A049616.P17402645347302901368

`∑[∑[n+1]]-A049628(n)`
-/

namespace A049616.P17402645347302901368
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A049628 n

end

end A049616.P17402645347302901368

namespace A049616

/-- `∑[∑[n+1]]-A049628(n)` -/
def P17402645347302901368.Spec : Prop :=
  ∀ n, P17402645347302901368.a n = A049616 n

end A049616

/-! ## A049616.P7030852460218517181

`∑[∑[n+1]-A225531(n)]`
-/

namespace A049616.P7030852460218517181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A225531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049616.P7030852460218517181

namespace A049616

/-- `∑[∑[n+1]-A225531(n)]` -/
def P7030852460218517181.Spec : Prop :=
  ∀ n, P7030852460218517181.a n = A049616 n

end A049616

/-! ## A049616.P8042134786203748026

`∑[∑[1-A225530(n)+n]]`
-/

namespace A049616.P8042134786203748026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A225530 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049616.P8042134786203748026

namespace A049616

/-- `∑[∑[1-A225530(n)+n]]` -/
def P8042134786203748026.Spec : Prop :=
  ∀ n, P8042134786203748026.a n = A049616 n

end A049616

/-!
# A049617: a(n) = Sum_{i=0..2n} (-1)^i * T(i,2n-i) where T is A049615.

The programs for A049617, the canonical program `A049617.P9357326945850119537` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049617 has offset 0).

The definition of A049617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049617.P11682363742462349

`n+A049690(n)`
-/

namespace A049617.P11682363742462349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A049690 n

end

end A049617.P11682363742462349

namespace A049617

/-- `n+A049690(n)` -/
def P11682363742462349.Spec : Prop :=
  ∀ n, P11682363742462349.a n = A049617 n

end A049617

/-! ## A049617.P9357326945850119537

`A106481(2*n)+n`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049617

/-- `A106481(2*n)+n` -/
def P9357326945850119537.Spec : Prop :=
  ∀ n, P9357326945850119537.a n = A049617 n

theorem P9357326945850119537.correct : P9357326945850119537.Spec := by
  intro n
  simp only [A049617]

end A049617

/-! ## A049617.P6289737378538099451

`A225373(2*n)+n-1`
-/

namespace A049617.P6289737378538099451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225373 (2 * n) + ((n : ℤ) - 1)

end

end A049617.P6289737378538099451

namespace A049617

/-- `A225373(2*n)+n-1` -/
def P6289737378538099451.Spec : Prop :=
  ∀ n, P6289737378538099451.a n = A049617 n

theorem P6289737378538099451.correct : P6289737378538099451.Spec := by
  intro n
  simp only [A049617, Nat.add_sub_cancel, A049617.P6289737378538099451.a, A049617.P9357326945850119537.a, A106481, A106481.P12208794138596707601.a, A225373, A225373.P1027320793838939059.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A106477, A106477.P792080474902771144.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049617

/-! ## A049617.P8522667320011347260

`A000010(2*n)+a(n-1)+1` with `a(0)=0`
-/

namespace A049617.P8522667320011347260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000010 (2 * n) + (a (n - 1) + 1)

end

end A049617.P8522667320011347260

namespace A049617

/-- `A000010(2*n)+a(n-1)+1` -/
def P8522667320011347260.Spec : Prop :=
  ∀ n, P8522667320011347260.a n = A049617 n

end A049617

/-! ## A049617.P11491958242360787296

`∑[A000010(ceil(abs(2*n-γ)))]+n-1`
-/

namespace A049617.P11491958242360787296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈|(2 * n : ℝ) - Real.eulerMascheroniConstant|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A049617.P11491958242360787296

namespace A049617

/-- `∑[A000010(ceil(abs(2*n-γ)))]+n-1` -/
def P11491958242360787296.Spec : Prop :=
  ∀ n, P11491958242360787296.a n = A049617 n

end A049617

/-! ## A049617.P1705509302431217098

`∑[A000010(abs(1-n)+n+1)+1]-2`
-/

namespace A049617.P1705509302431217098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A049617.P1705509302431217098

namespace A049617

/-- `∑[A000010(abs(1-n)+n+1)+1]-2` -/
def P1705509302431217098.Spec : Prop :=
  ∀ n, P1705509302431217098.a n = A049617 n

end A049617

/-! ## A049617.P12111876000135919600

`A049690(n)-A001489(n)`
-/

namespace A049617.P12111876000135919600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n - A001489 n

end

end A049617.P12111876000135919600

namespace A049617

/-- `A049690(n)-A001489(n)` -/
def P12111876000135919600.Spec : Prop :=
  ∀ n, P12111876000135919600.a n = A049617 n

end A049617

/-! ## A049617.P15802121458620542853

`∑[A039649(A004277(n))]-2`
-/

namespace A049617.P15802121458620542853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A049617.P15802121458620542853

namespace A049617

/-- `∑[A039649(A004277(n))]-2` -/
def P15802121458620542853.Spec : Prop :=
  ∀ n, P15802121458620542853.a n = A049617 n

end A049617

/-! ## A049617.P11132272143007887997

`∑[A300721(A008574(n))]+n`
-/

namespace A049617.P11132272143007887997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A049617.P11132272143007887997

namespace A049617

/-- `∑[A300721(A008574(n))]+n` -/
def P11132272143007887997.Spec : Prop :=
  ∀ n, P11132272143007887997.a n = A049617 n

end A049617

/-! ## A049617.P13667620643156585505

`A005843(n)-(n-A049690(n))`
-/

namespace A049617.P13667620643156585505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A049690 n)

end

end A049617.P13667620643156585505

namespace A049617

/-- `A005843(n)-(n-A049690(n))` -/
def P13667620643156585505.Spec : Prop :=
  ∀ n, P13667620643156585505.a n = A049617 n

end A049617

/-! ## A049617.P2501994265305450300

`∑[A039649(A028310(2*n))]-2`
-/

namespace A049617.P2501994265305450300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A049617.P2501994265305450300

namespace A049617

/-- `∑[A039649(A028310(2*n))]-2` -/
def P2501994265305450300.Spec : Prop :=
  ∀ n, P2501994265305450300.a n = A049617 n

end A049617

/-! ## A049617.P6028234466776779930

`A008619(2*n)-(1-A106481(2*n))`
-/

namespace A049617.P6028234466776779930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (1 - A106481 (2 * n))

end

end A049617.P6028234466776779930

namespace A049617

/-- `A008619(2*n)-(1-A106481(2*n))` -/
def P6028234466776779930.Spec : Prop :=
  ∀ n, P6028234466776779930.a n = A049617 n

end A049617

/-! ## A049617.P8646131884853853321

`A237420(2*n)-(n-A106481(2*n))`
-/

namespace A049617.P8646131884853853321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (2 * n) - ((n : ℤ) - A106481 (2 * n))

end

end A049617.P8646131884853853321

namespace A049617

/-- `A237420(2*n)-(n-A106481(2*n))` -/
def P8646131884853853321.Spec : Prop :=
  ∀ n, P8646131884853853321.a n = A049617 n

end A049617

/-! ## A049617.P6111843983592622542

`∑[A062570(n+1)]-A062570(n+1)+n`
-/

namespace A049617.P6111843983592622542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062570 (n + 1) + (n : ℤ)

end

end A049617.P6111843983592622542

namespace A049617

/-- `∑[A062570(n+1)]-A062570(n+1)+n` -/
def P6111843983592622542.Spec : Prop :=
  ∀ n, P6111843983592622542.a n = A049617 n

end A049617

/-! ## A049617.P13000631819574786409

`∑[A039649(A028310(n)+n)-1]-1+n`
-/

namespace A049617.P13000631819574786409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A028310 n + (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 + (n : ℤ)

end

end A049617.P13000631819574786409

namespace A049617

/-- `∑[A039649(A028310(n)+n)-1]-1+n` -/
def P13000631819574786409.Spec : Prop :=
  ∀ n, P13000631819574786409.a n = A049617 n

end A049617

/-! ## A049617.P12679465297942542316

`∑[A039649(2*(n+1))]-A039649(2*(n+1))`
-/

namespace A049617.P12679465297942542316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A039649 (2 * (n + 1))

end

end A049617.P12679465297942542316

namespace A049617

/-- `∑[A039649(2*(n+1))]-A039649(2*(n+1))` -/
def P12679465297942542316.Spec : Prop :=
  ∀ n, P12679465297942542316.a n = A049617 n

end A049617

/-! ## A049617.P16694035526689765844

`∑[A008624(A000010(A022144(n)))]`
-/

namespace A049617.P16694035526689765844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A000010 (A022144 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049617.P16694035526689765844

namespace A049617

/-- `∑[A008624(A000010(A022144(n)))]` -/
def P16694035526689765844.Spec : Prop :=
  ∀ n, P16694035526689765844.a n = A049617 n

end A049617

/-! ## A049617.P14662672140957674141

`∑[A028242(A000010(A008574(n)))]`
-/

namespace A049617.P14662672140957674141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A000010 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049617.P14662672140957674141

namespace A049617

/-- `∑[A028242(A000010(A008574(n)))]` -/
def P14662672140957674141.Spec : Prop :=
  ∀ n, P14662672140957674141.a n = A049617 n

end A049617

/-! ## A049617.P17496364112617727466

`∑[(A000010(A004277(n))+1)%A003215(n)]`
-/

namespace A049617.P17496364112617727466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A004277 n).toNat + 1) (A003215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049617.P17496364112617727466

namespace A049617

/-- `∑[(A000010(A004277(n))+1)%A003215(n)]` -/
def P17496364112617727466.Spec : Prop :=
  ∀ n, P17496364112617727466.a n = A049617 n

end A049617

/-! ## A049617.P9929896149523326309

`∑[A109613(A055034(2*(n+1)))]-A055034(2*(n+1))`
-/

namespace A049617.P9929896149523326309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A055034 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055034 (2 * (n + 1))

end

end A049617.P9929896149523326309

namespace A049617

/-- `∑[A109613(A055034(2*(n+1)))]-A055034(2*(n+1))` -/
def P9929896149523326309.Spec : Prop :=
  ∀ n, P9929896149523326309.a n = A049617 n

end A049617

/-!
# A049618: a(n) = Sum_{i=0..floor(n/2)} T(2i,n-2i) where T is A049615.

The programs for A049618, there is no canonical definition to state claims against.
-/

/-! ## A049618.P2488787497754447501

`A005993(n)-A049630(n)`
-/

namespace A049618.P2488787497754447501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A049630 n

end

end A049618.P2488787497754447501

/-! ## A049618.P3573452565315087990

`∑[A008619(n)²]-A049630(n)`
-/

namespace A049618.P3573452565315087990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049630 n

end

end A049618.P3573452565315087990

/-! ## A049618.P2891813520191350258

`A049619(n)+A049617(A142150(n))`
-/

namespace A049618.P2891813520191350258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049619 n + A049617 (A142150 n).toNat

end

end A049618.P2891813520191350258

/-! ## A049618.P11955741558004423384

`A121968(n+1)-(A049619(n)+A005598(n))`
-/

namespace A049618.P11955741558004423384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) - (A049619 n + A005598 n)

end

end A049618.P11955741558004423384

/-! ## A049618.P9537876072056019121

`A049616(n)-A049619(n)`
-/

namespace A049618.P9537876072056019121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049616 n - A049619 n

end

end A049618.P9537876072056019121

/-! ## A049618.P12922040288676989542

`A049616(n)+A049619(n)*A057428(n)`
-/

namespace A049618.P12922040288676989542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049616 n + A049619 n * A057428 n

end

end A049618.P12922040288676989542

/-!
# A049619: a(n) = Sum_{i=0..floor((n+1)/2)} T(2i+1,n-2i-1) where T is A049615.

The programs for A049619, there is no canonical definition to state claims against.
-/

/-! ## A049619.P6780747557425200370

`A049618(n)-A049617(A142150(n))`
-/

namespace A049619.P6780747557425200370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049618 n - A049617 (A142150 n).toNat

end

end A049619.P6780747557425200370

/-! ## A049619.P6638226965652411357

`A121968(n+1)-(A049618(n)+A005598(n))`
-/

namespace A049619.P6638226965652411357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 1) - (A049618 n + A005598 n)

end

end A049619.P6638226965652411357

/-! ## A049619.P17287247198788194274

`A074742(n)%A135342(n+1)-A049618(n)`
-/

namespace A049619.P17287247198788194274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074742 n) (A135342 (n + 1)) - A049618 n

end

end A049619.P17287247198788194274

/-! ## A049619.P5583598225730688909

`∑[n-(A002088(n)-A000217(n))]-n-A049618(n)`
-/

namespace A049619.P5583598225730688909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A002088 n - A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - A049618 n

end

end A049619.P5583598225730688909

/-! ## A049619.P7100794501304494293

`A049616(n)-A049618(n)`
-/

namespace A049619.P7100794501304494293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049616 n - A049618 n

end

end A049619.P7100794501304494293

/-! ## A049619.P15569211592722479418

`A049616(n)+A049630(n)-A005993(n)`
-/

namespace A049619.P15569211592722479418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049616 n + (A049630 n - A005993 n)

end

end A049619.P15569211592722479418

/-!
# A049620: a(n) = T(n,n), array T as in A049615.

The programs for A049620, the canonical program `A049620.P15532980577468314224` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049620 has offset 0).

The definition of A049620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2797 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049620.P14169171803103209419

`(n+1)²-A049632(n)`
-/

namespace A049620.P14169171803103209419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A049632 n

end

end A049620.P14169171803103209419

namespace A049620

/-- `(n+1)²-A049632(n)` -/
def P14169171803103209419.Spec : Prop :=
  ∀ n, P14169171803103209419.a n = A049620 n

end A049620

/-! ## A049620.P6825253802376758231

`n*(n+2)-A049691(n)`
-/

namespace A049620.P6825253802376758231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) - A049691 n

end

end A049620.P6825253802376758231

namespace A049620

/-- `n*(n+2)-A049691(n)` -/
def P6825253802376758231.Spec : Prop :=
  ∀ n, P6825253802376758231.a n = A049620 n

end A049620

/-! ## A049620.P13667983891213776030

`∑[A005408(n)]%A049632(n)`
-/

namespace A049620.P13667983891213776030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A049632 n)

end

end A049620.P13667983891213776030

namespace A049620

/-- `∑[A005408(n)]%A049632(n)` -/
def P13667983891213776030.Spec : Prop :=
  ∀ n, P13667983891213776030.a n = A049620 n

end A049620

/-! ## A049620.P1977983525384465393

`A005563(n)+1-A049632(n)`
-/

namespace A049620.P1977983525384465393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A049632 n)

end

end A049620.P1977983525384465393

namespace A049620

/-- `A005563(n)+1-A049632(n)` -/
def P1977983525384465393.Spec : Prop :=
  ∀ n, P1977983525384465393.a n = A049620 n

end A049620

/-! ## A049620.P3950504171261480331

`A264724(n+1)-A049633(n)`
-/

namespace A049620.P3950504171261480331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1) - A049633 n

end

end A049620.P3950504171261480331

namespace A049620

/-- `A264724(n+1)-A049633(n)` -/
def P3950504171261480331.Spec : Prop :=
  ∀ n, P3950504171261480331.a n = A049620 n

end A049620

/-! ## A049620.P788422294666416959

`A000027(n+1)²%A049632(n)`
-/

namespace A049620.P788422294666416959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1) ^ 2) (A049632 n)

end

end A049620.P788422294666416959

namespace A049620

/-- `A000027(n+1)²%A049632(n)` -/
def P788422294666416959.Spec : Prop :=
  ∀ n, P788422294666416959.a n = A049620 n

end A049620

/-! ## A049620.P6321443002693579767

`n²+A004273(n)-A049696(n)`
-/

namespace A049620.P6321443002693579767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A004273 n - A049696 n)

end

end A049620.P6321443002693579767

namespace A049620

/-- `n²+A004273(n)-A049696(n)` -/
def P6321443002693579767.Spec : Prop :=
  ∀ n, P6321443002693579767.a n = A049620 n

end A049620

/-! ## A049620.P1146020949122876584

`A000290(n+1)-(A049691(n)+1)`
-/

namespace A049620.P1146020949122876584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) - (A049691 n + 1)

end

end A049620.P1146020949122876584

namespace A049620

/-- `A000290(n+1)-(A049691(n)+1)` -/
def P1146020949122876584.Spec : Prop :=
  ∀ n, P1146020949122876584.a n = A049620 n

end A049620

/-! ## A049620.P15532980577468314224

`A008865(n+1)%A206350(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049620

/-- `A008865(n+1)%A206350(n+1)` -/
def P15532980577468314224.Spec : Prop :=
  ∀ n, P15532980577468314224.a n = A049620 n

theorem P15532980577468314224.correct : P15532980577468314224.Spec := by
  intro n
  simp only [A049620]

end A049620

/-! ## A049620.P14557515233296974109

`(n+1)²-(A049643(n)+A005728(n))`
-/

namespace A049620.P14557515233296974109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (A049643 n + A005728 n)

end

end A049620.P14557515233296974109

namespace A049620

/-- `(n+1)²-(A049643(n)+A005728(n))` -/
def P14557515233296974109.Spec : Prop :=
  ∀ n, P14557515233296974109.a n = A049620 n

end A049620

/-! ## A049620.P6951770348640119527

`A049621(n)-A051953(n+1)`
-/

namespace A049620.P6951770348640119527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049621 n - A051953 (n + 1)

end

end A049620.P6951770348640119527

namespace A049620

/-- `A049621(n)-A051953(n+1)` -/
def P6951770348640119527.Spec : Prop :=
  ∀ n, P6951770348640119527.a n = A049620 n

end A049620

/-! ## A049620.P2602431429461545012

`(n*(n+2))%A206297(n+1)`
-/

namespace A049620.P2602431429461545012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n * (n + 2) : ℤ) (A206297 (n + 1))

end

end A049620.P2602431429461545012

namespace A049620

/-- `(n*(n+2))%A206297(n+1)` -/
def P2602431429461545012.Spec : Prop :=
  ∀ n, P2602431429461545012.a n = A049620 n

end A049620

/-! ## A049620.P9700999726993257147

`A005563(n)%-A206297(n+1)`
-/

namespace A049620.P9700999726993257147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n) (-A206297 (n + 1))

end

end A049620.P9700999726993257147

namespace A049620

/-- `A005563(n)%-A206297(n+1)` -/
def P9700999726993257147.Spec : Prop :=
  ∀ n, P9700999726993257147.a n = A049620 n

end A049620

/-!
# A049621: a(n) = T(n,n+1), array T as in A049615.

The programs for A049621, the canonical program `A049621.P790567699714540639` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049621 has offset 0).

The definition of A049621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049621.P14549336358273217378

`∑[2*(n+1)]-A049633(n)`
-/

namespace A049621.P14549336358273217378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A049633 n

end

end A049621.P14549336358273217378

namespace A049621

/-- `∑[2*(n+1)]-A049633(n)` -/
def P14549336358273217378.Spec : Prop :=
  ∀ n, P14549336358273217378.a n = A049621 n

end A049621

/-! ## A049621.P7098617775862911151

`A028552(n)%A049697(n)`
-/

namespace A049621.P7098617775862911151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028552 n) (A049697 n)

end

end A049621.P7098617775862911151

namespace A049621

/-- `A028552(n)%A049697(n)` -/
def P7098617775862911151.Spec : Prop :=
  ∀ n, P7098617775862911151.a n = A049621 n

end A049621

/-! ## A049621.P16708914895412770532

`A051953(n+1)+A049620(n)`
-/

namespace A049621.P16708914895412770532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A049620 n

end

end A049621.P16708914895412770532

namespace A049621

/-- `A051953(n+1)+A049620(n)` -/
def P16708914895412770532.Spec : Prop :=
  ∀ n, P16708914895412770532.a n = A049621 n

end A049621

/-! ## A049621.P1594015734246517087

`A217748(n+3)-A049697(n)`
-/

namespace A049621.P1594015734246517087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217748 (n + 3) - A049697 n

end

end A049621.P1594015734246517087

namespace A049621

/-- `A217748(n+3)-A049697(n)` -/
def P1594015734246517087.Spec : Prop :=
  ∀ n, P1594015734246517087.a n = A049621 n

end A049621

/-! ## A049621.P1444348966707706665

`A049620(n+1)-A062830(n+1)`
-/

namespace A049621.P1444348966707706665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049620 (n + 1) - A062830 (n + 1)

end

end A049621.P1444348966707706665

namespace A049621

/-- `A049620(n+1)-A062830(n+1)` -/
def P1444348966707706665.Spec : Prop :=
  ∀ n, P1444348966707706665.a n = A049621 n

end A049621

/-! ## A049621.P790567699714540639

`floor((A049620(n+1)+A049620(n))/2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049621

/-- `floor((A049620(n+1)+A049620(n))/2)` -/
def P790567699714540639.Spec : Prop :=
  ∀ n, P790567699714540639.a n = A049621 n

theorem P790567699714540639.correct : P790567699714540639.Spec := by
  intro n
  simp only [A049621]

end A049621

/-! ## A049621.P10645031070656664334

`A049620(n)+n+1-A000010(n+1)`
-/

namespace A049621.P10645031070656664334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049620 n + ((n + 1 : ℤ) - A000010 (n + 1))

end

end A049621.P10645031070656664334

namespace A049621

/-- `A049620(n)+n+1-A000010(n+1)` -/
def P10645031070656664334.Spec : Prop :=
  ∀ n, P10645031070656664334.a n = A049621 n

end A049621

/-! ## A049621.P16363276818325497605

`A002378(n+1)-(A049643(n+1)+A049643(n))`
-/

namespace A049621.P16363276818325497605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - (A049643 (n + 1) + A049643 n)

end

end A049621.P16363276818325497605

namespace A049621

/-- `A002378(n+1)-(A049643(n+1)+A049643(n))` -/
def P16363276818325497605.Spec : Prop :=
  ∀ n, P16363276818325497605.a n = A049621 n

end A049621

/-! ## A049621.P15520988518762621093

`A000027(n+1)+A000027(n+1)²-A049633(n)`
-/

namespace A049621.P15520988518762621093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (A000027 (n + 1) ^ 2 - A049633 n)

end

end A049621.P15520988518762621093

namespace A049621

/-- `A000027(n+1)+A000027(n+1)²-A049633(n)` -/
def P15520988518762621093.Spec : Prop :=
  ∀ n, P15520988518762621093.a n = A049621 n

end A049621

/-! ## A049621.P2018251381610010816

`A028387(n)-A049648(n)`
-/

namespace A049621.P2018251381610010816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A049648 n

end

end A049621.P2018251381610010816

namespace A049621

/-- `A028387(n)-A049648(n)` -/
def P2018251381610010816.Spec : Prop :=
  ∀ n, P2018251381610010816.a n = A049621 n

theorem P2018251381610010816.correct : P2018251381610010816.Spec := by
  intro n
  simp only [A049621, Nat.add_sub_cancel, A049621.P2018251381610010816.a, A049621.P790567699714540639.a, A028387, A028387.P5954590561330899546.a, A049620, A049620.P15532980577468314224.a, A049648, A049648.P396275532436959907.a, A008865, A008865.P16699731729816255732.a, A206350, A206350.P761280235204802101.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049621

/-! ## A049621.P15126531340621533468

`n²+A016777(n)-A049648(n)`
-/

namespace A049621.P15126531340621533468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A016777 n - A049648 n)

end

end A049621.P15126531340621533468

namespace A049621

/-- `n²+A016777(n)-A049648(n)` -/
def P15126531340621533468.Spec : Prop :=
  ∀ n, P15126531340621533468.a n = A049621 n

theorem P15126531340621533468.correct : P15126531340621533468.Spec := by
  intro n
  simp only [A049621, Nat.add_sub_cancel, A049621.P15126531340621533468.a, A049621.P790567699714540639.a, A016777, A016777.P9931792138852554157.a, A049620, A049620.P15532980577468314224.a, A049648, A049648.P396275532436959907.a, A008865, A008865.P16699731729816255732.a, A206350, A206350.P761280235204802101.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049621

/-! ## A049621.P10446412194140463228

`(n+1)²-A049649(2*n)+n`
-/

namespace A049621.P10446412194140463228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A049649 (2 * n) + (n : ℤ)

end

end A049621.P10446412194140463228

namespace A049621

/-- `(n+1)²-A049649(2*n)+n` -/
def P10446412194140463228.Spec : Prop :=
  ∀ n, P10446412194140463228.a n = A049621 n

end A049621

/-!
# A049622: a(n) = T(n,n+2), array T as in A049615.

The programs for A049622, the canonical program `A049622.P13422498576475773910` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049622 has offset 0).

The definition of A049622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049622.P13422498576475773910

`(n+2)²-1-A049634(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049622

/-- `(n+2)²-1-A049634(n)` -/
def P13422498576475773910.Spec : Prop :=
  ∀ n, P13422498576475773910.a n = A049622 n

theorem P13422498576475773910.correct : P13422498576475773910.Spec := by
  intro n
  simp only [A049622]

end A049622

/-! ## A049622.P3226861399535270131

`∑[n+1]+A000096(n+1)-A049634(n)`
-/

namespace A049622.P3226861399535270131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000096 (n + 1) - A049634 n)

end

end A049622.P3226861399535270131

namespace A049622

/-- `∑[n+1]+A000096(n+1)-A049634(n)` -/
def P3226861399535270131.Spec : Prop :=
  ∀ n, P3226861399535270131.a n = A049622 n

end A049622

/-! ## A049622.P4934347620964013425

`(n+2)²-(A049693(n)+2)`
-/

namespace A049622.P4934347620964013425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (A049693 n + 2)

end

end A049622.P4934347620964013425

namespace A049622

/-- `(n+2)²-(A049693(n)+2)` -/
def P4934347620964013425.Spec : Prop :=
  ∀ n, P4934347620964013425.a n = A049622 n

theorem P4934347620964013425.correct : P4934347620964013425.Spec := by
  intro n
  simp only [A049622, Nat.add_sub_cancel, A049622.P4934347620964013425.a, A049622.P13422498576475773910.a, A049634, A049634.P8228112400628920281.a, A049693, A049693.P1234389797638437336.a, A049643, A049643.P15143516310095013308.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A091369, A091369.P3969440163011087150.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049622

/-! ## A049622.P8410864628730940522

`A028387(n)+1-A049693(n)+n`
-/

namespace A049622.P8410864628730940522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A049693 n + (n : ℤ))

end

end A049622.P8410864628730940522

namespace A049622

/-- `A028387(n)+1-A049693(n)+n` -/
def P8410864628730940522.Spec : Prop :=
  ∀ n, P8410864628730940522.a n = A049622 n

theorem P8410864628730940522.correct : P8410864628730940522.Spec := by
  intro n
  simp only [A049622, Nat.add_sub_cancel, A049622.P8410864628730940522.a, A049622.P13422498576475773910.a, A028387, A028387.P5954590561330899546.a, A049634, A049634.P8228112400628920281.a, A049693, A049693.P1234389797638437336.a, A049643, A049643.P15143516310095013308.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A091369, A091369.P3969440163011087150.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049622

/-! ## A049622.P6052886659447094290

`A051953(n+2)+A049621(n)`
-/

namespace A049622.P6052886659447094290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 2) + A049621 n

end

end A049622.P6052886659447094290

namespace A049622

/-- `A051953(n+2)+A049621(n)` -/
def P6052886659447094290.Spec : Prop :=
  ∀ n, P6052886659447094290.a n = A049622 n

end A049622

/-! ## A049622.P13437128368028230675

`A049621(n)+Δ[A063985(n+1)]`
-/

namespace A049622.P13437128368028230675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049621 n + (f1 (n + 1) - f1 n)

end

end A049622.P13437128368028230675

namespace A049622

/-- `A049621(n)+Δ[A063985(n+1)]` -/
def P13437128368028230675.Spec : Prop :=
  ∀ n, P13437128368028230675.a n = A049622 n

end A049622

/-! ## A049622.P9264186360651042239

`A049621(n+1)-A062830(n+1)`
-/

namespace A049622.P9264186360651042239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049621 (n + 1) - A062830 (n + 1)

end

end A049622.P9264186360651042239

namespace A049622

/-- `A049621(n+1)-A062830(n+1)` -/
def P9264186360651042239.Spec : Prop :=
  ∀ n, P9264186360651042239.a n = A049622 n

end A049622

/-! ## A049622.P7793575181778646093

`A049621(n+1)+A049621(n)-A049620(n+1)`
-/

namespace A049622.P7793575181778646093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049621 (n + 1) + (A049621 n - A049620 (n + 1))

end

end A049622.P7793575181778646093

namespace A049622

/-- `A049621(n+1)+A049621(n)-A049620(n+1)` -/
def P7793575181778646093.Spec : Prop :=
  ∀ n, P7793575181778646093.a n = A049622 n

end A049622

/-! ## A049622.P14157390589147165892

`(n+2)²-(A049649(2*n+1)+2)`
-/

namespace A049622.P14157390589147165892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - (A049649 (2 * n + 1) + 2)

end

end A049622.P14157390589147165892

namespace A049622

/-- `(n+2)²-(A049649(2*n+1)+2)` -/
def P14157390589147165892.Spec : Prop :=
  ∀ n, P14157390589147165892.a n = A049622 n

end A049622

/-! ## A049622.P12222174552510775564

`A049615((n+1)²+(n+2)²)`
-/

namespace A049622.P12222174552510775564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A049622.P12222174552510775564

namespace A049622

/-- `A049615((n+1)²+(n+2)²)` -/
def P12222174552510775564.Spec : Prop :=
  ∀ n, P12222174552510775564.a n = A049622 n

end A049622

/-!
# A049623: a(n) = T(n,n+3), array T as in A049615.

The programs for A049623, the canonical program `A049623.P3173641935706412517` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049623 has offset 0).

The definition of A049623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049623.P3173641935706412517

`A014209(n+1)-A049694(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049623

/-- `A014209(n+1)-A049694(n)` -/
def P3173641935706412517.Spec : Prop :=
  ∀ n, P3173641935706412517.a n = A049623 n

theorem P3173641935706412517.correct : P3173641935706412517.Spec := by
  intro n
  simp only [A049623]

end A049623

/-! ## A049623.P6359049882939097992

`A028552(n+1)-(A049694(n)+1)`
-/

namespace A049623.P6359049882939097992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n + 1) - (A049694 n + 1)

end

end A049623.P6359049882939097992

namespace A049623

/-- `A028552(n+1)-(A049694(n)+1)` -/
def P6359049882939097992.Spec : Prop :=
  ∀ n, P6359049882939097992.a n = A049623 n

theorem P6359049882939097992.correct : P6359049882939097992.Spec := by
  intro n
  simp only [A049623, Nat.add_sub_cancel, A049623.P6359049882939097992.a, A049623.P3173641935706412517.a, A014209, A014209.P8391054817103649375.a, A028552, A028552.P13982725828206412774.a, A049694, A049694.P6352157248811227265.a, A049635, A049635.P15281965004979027358.a, A049693, A049693.P1234389797638437336.a, A216475, A216475.P1503443610381396525.a, A000010, A000010.P4673923239450215316.a, A049634, A049634.P8228112400628920281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049623

/-! ## A049623.P13162504415155566261

`∑[A144396(n+1)]+n-A049694(n)`
-/

namespace A049623.P13162504415155566261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A049694 n)

end

end A049623.P13162504415155566261

namespace A049623

/-- `∑[A144396(n+1)]+n-A049694(n)` -/
def P13162504415155566261.Spec : Prop :=
  ∀ n, P13162504415155566261.a n = A049623 n

end A049623

/-! ## A049623.P6928348045986501706

`A028552(n+1)-A049635(n)`
-/

namespace A049623.P6928348045986501706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (n + 1) - A049635 n

end

end A049623.P6928348045986501706

namespace A049623

/-- `A028552(n+1)-A049635(n)` -/
def P6928348045986501706.Spec : Prop :=
  ∀ n, P6928348045986501706.a n = A049623 n

end A049623

/-! ## A049623.P17844945542914382294

`∑[A103517(n+1)]-A049635(n)`
-/

namespace A049623.P17844945542914382294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049635 n

end

end A049623.P17844945542914382294

namespace A049623

/-- `∑[A103517(n+1)]-A049635(n)` -/
def P17844945542914382294.Spec : Prop :=
  ∀ n, P17844945542914382294.a n = A049623 n

end A049623

/-! ## A049623.P14841691400577916597

`∑[A004277(n+2)]-A049635(n)`
-/

namespace A049623.P14841691400577916597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049635 n

end

end A049623.P14841691400577916597

namespace A049623

/-- `∑[A004277(n+2)]-A049635(n)` -/
def P14841691400577916597.Spec : Prop :=
  ∀ n, P14841691400577916597.a n = A049623 n

end A049623

/-! ## A049623.P5603433636652569684

`A005843(∑[n+2])-A049635(n)`
-/

namespace A049623.P5603433636652569684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j) - A049635 n

end

end A049623.P5603433636652569684

namespace A049623

/-- `A005843(∑[n+2])-A049635(n)` -/
def P5603433636652569684.Spec : Prop :=
  ∀ n, P5603433636652569684.a n = A049623 n

end A049623

/-! ## A049623.P16053954777457709613

`A005408(A034856(n+1))-A049694(n)`
-/

namespace A049623.P16053954777457709613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A034856 (n + 1)).toNat - A049694 n

end

end A049623.P16053954777457709613

namespace A049623

/-- `A005408(A034856(n+1))-A049694(n)` -/
def P16053954777457709613.Spec : Prop :=
  ∀ n, P16053954777457709613.a n = A049623 n

end A049623

/-! ## A049623.P9186342578868654735

`A049615(2*(n+1)*(n+3))`
-/

namespace A049623.P9186342578868654735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (2 * ((n + 1) * (n + 3)))

end

end A049623.P9186342578868654735

namespace A049623

/-- `A049615(2*(n+1)*(n+3))` -/
def P9186342578868654735.Spec : Prop :=
  ∀ n, P9186342578868654735.a n = A049623 n

end A049623

/-!
# A049625: Congruent to 1, 2, 4, 6, 8 or 9 mod 11, but with 2 instead of 1.

The programs for A049625, the canonical program `A049625.P9602203195490884813` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049625 has offset 0).

The definition of A049625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049625.P9602203195490884813

`comp[4*n]+ceil(abs((1-n)/2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049625

/-- `comp[4*n]+ceil(abs((1-n)/2))` -/
def P9602203195490884813.Spec : Prop :=
  ∀ n, P9602203195490884813.a n = A049625 n

theorem P9602203195490884813.correct : P9602203195490884813.Spec := by
  intro n
  simp only [A049625]

end A049625

/-! ## A049625.P10905146435697104623

`∑[A239140(n+3)-A063524(n)]`
-/

namespace A049625.P10905146435697104623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (n + 3) - A063524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049625.P10905146435697104623

namespace A049625

/-- `∑[A239140(n+3)-A063524(n)]` -/
def P10905146435697104623.Spec : Prop :=
  ∀ n, P10905146435697104623.a n = A049625 n

end A049625

/-! ## A049625.P17293842930079457411

`Δ[A010000(n)-A001399(n)]`
-/

namespace A049625.P17293842930079457411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n - A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049625.P17293842930079457411

namespace A049625

/-- `Δ[A010000(n)-A001399(n)]` -/
def P17293842930079457411.Spec : Prop :=
  ∀ n, P17293842930079457411.a n = A049625 n

end A049625

/-! ## A049625.P18248074808583114378

`A028310(A123108(n)+A042968(n+1))`
-/

namespace A049625.P18248074808583114378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A123108 n + A042968 (n + 1)).toNat

end

end A049625.P18248074808583114378

namespace A049625

/-- `A028310(A123108(n)+A042968(n+1))` -/
def P18248074808583114378.Spec : Prop :=
  ∀ n, P18248074808583114378.a n = A049625 n

end A049625

/-! ## A049625.P12700605441941406693

`A028242(A063203(n+1))`
-/

namespace A049625.P12700605441941406693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A063203 (n + 1)).toNat

end

end A049625.P12700605441941406693

namespace A049625

/-- `A028242(A063203(n+1))` -/
def P12700605441941406693.Spec : Prop :=
  ∀ n, P12700605441941406693.a n = A049625 n

end A049625

/-! ## A049625.P7619275570634148729

`A001281(A063280(2*n+3)+1)`
-/

namespace A049625.P7619275570634148729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A063280 (2 * n + 3) + 1).toNat

end

end A049625.P7619275570634148729

namespace A049625

/-- `A001281(A063280(2*n+3)+1)` -/
def P7619275570634148729.Spec : Prop :=
  ∀ n, P7619275570634148729.a n = A049625 n

end A049625

/-! ## A049625.P2449980941553852107

`A028242(A063199(n+1)+2*n+1)`
-/

namespace A049625.P2449980941553852107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A063199 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A049625.P2449980941553852107

namespace A049625

/-- `A028242(A063199(n+1)+2*n+1)` -/
def P2449980941553852107.Spec : Prop :=
  ∀ n, P2449980941553852107.a n = A049625 n

end A049625

/-! ## A049625.P17531767728250537003

`A233583(A065033(n+1)+A004396(2*n+1))`
-/

namespace A049625.P17531767728250537003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A065033 (n + 1) + A004396 (2 * n + 1)).toNat

end

end A049625.P17531767728250537003

namespace A049625

/-- `A233583(A065033(n+1)+A004396(2*n+1))` -/
def P17531767728250537003.Spec : Prop :=
  ∀ n, P17531767728250537003.a n = A049625 n

end A049625

/-! ## A049625.P6319438500996925113

`A049615(A167614(n+2))`
-/

namespace A049625.P6319438500996925113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A167614 (n + 2)).toNat

end

end A049625.P6319438500996925113

namespace A049625

/-- `A049615(A167614(n+2))` -/
def P6319438500996925113.Spec : Prop :=
  ∀ n, P6319438500996925113.a n = A049625 n

end A049625

/-! ## A049625.P17701044787728342771

`A049615(A000217(n+3)+3)`
-/

namespace A049625.P17701044787728342771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A000217 (n + 3) + 3).toNat

end

end A049625.P17701044787728342771

namespace A049625

/-- `A049615(A000217(n+3)+3)` -/
def P17701044787728342771.Spec : Prop :=
  ∀ n, P17701044787728342771.a n = A049625 n

end A049625

/-! ## A049625.P14880745641363288447

`A049615(A166136(n+2)-3)`
-/

namespace A049625.P14880745641363288447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A166136 (n + 2) - 3).toNat

end

end A049625.P14880745641363288447

namespace A049625

/-- `A049615(A166136(n+2)-3)` -/
def P14880745641363288447.Spec : Prop :=
  ∀ n, P14880745641363288447.a n = A049625 n

end A049625

/-! ## A049625.P8520146271095352733

`A049615(A052905(n+1)+1)`
-/

namespace A049625.P8520146271095352733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A052905 (n + 1) + 1).toNat

end

end A049625.P8520146271095352733

namespace A049625

/-- `A049615(A052905(n+1)+1)` -/
def P8520146271095352733.Spec : Prop :=
  ∀ n, P8520146271095352733.a n = A049625 n

end A049625

/-!
# A049626: a(n) = T(n,4), array T as in A049615.

The programs for A049626, the canonical program `A049626.P8816477011414561251` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049626 has offset 0).

The definition of A049626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049626.P8816477011414561251

`a(n-2)-and(1, a(n-1))+5` with `a(0)=3, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049626

/-- `a(n-2)-and(1, a(n-1))+5` -/
def P8816477011414561251.Spec : Prop :=
  ∀ n, P8816477011414561251.a n = A049626 n

theorem P8816477011414561251.correct : P8816477011414561251.Spec := by
  intro n
  simp only [A049626]

end A049626

/-! ## A049626.P10502147836747523985

`5-(and(1, a(n-1))-a(n-2))` with `a(0)=3, a(1)=3, a(2)=6`
-/

namespace A049626.P10502147836747523985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 6] fun n a =>
  5 - (Int.land 1 (a (n - 1)) - a (n - 2))

end

end A049626.P10502147836747523985

namespace A049626

/-- `5-(and(1, a(n-1))-a(n-2))` -/
def P10502147836747523985.Spec : Prop :=
  ∀ n, P10502147836747523985.a n = A049626 n

end A049626

/-! ## A049626.P1160392289484682348

`A220128(n)+a(n-1)` with `a(0)=3, a(1)=3`
-/

namespace A049626.P1160392289484682348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  A220128 n + a (n - 1)

end

end A049626.P1160392289484682348

namespace A049626

/-- `A220128(n)+a(n-1)` -/
def P1160392289484682348.Spec : Prop :=
  ∀ n, P1160392289484682348.a n = A049626 n

end A049626

/-! ## A049626.P5633306716461028582

`A301298(n)-a(n-1)` with `a(0)=3, a(1)=3`
-/

namespace A049626.P5633306716461028582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  A301298 n - a (n - 1)

end

end A049626.P5633306716461028582

namespace A049626

/-- `A301298(n)-a(n-1)` -/
def P5633306716461028582.Spec : Prop :=
  ∀ n, P5633306716461028582.a n = A049626 n

end A049626

/-! ## A049626.P17943128505676279192

`A049625(n)+round((n+1)/2)`
-/

namespace A049626.P17943128505676279192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049625 n + SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)

end

end A049626.P17943128505676279192

namespace A049626

/-- `A049625(n)+round((n+1)/2)` -/
def P17943128505676279192.Spec : Prop :=
  ∀ n, P17943128505676279192.a n = A049626 n

end A049626

/-! ## A049626.P5460563749624223481

`A051274(n)+Δ[A010000(n)]`
-/

namespace A049626.P5460563749624223481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 n + (f1 (n + 1) - f1 n)

end

end A049626.P5460563749624223481

namespace A049626

/-- `A051274(n)+Δ[A010000(n)]` -/
def P5460563749624223481.Spec : Prop :=
  ∀ n, P5460563749624223481.a n = A049626 n

end A049626

/-! ## A049626.P10293857095654746311

`A051275(n+2)+A004277(n)`
-/

namespace A049626.P10293857095654746311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (n + 2) + A004277 n

end

end A049626.P10293857095654746311

namespace A049626

/-- `A051275(n+2)+A004277(n)` -/
def P10293857095654746311.Spec : Prop :=
  ∀ n, P10293857095654746311.a n = A049626 n

end A049626

/-! ## A049626.P10193489797540972614

`A051274(n)+A004274(n+2)`
-/

namespace A049626.P10193489797540972614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051274 n + A004274 (n + 2)

end

end A049626.P10193489797540972614

namespace A049626

/-- `A051274(n)+A004274(n+2)` -/
def P10193489797540972614.Spec : Prop :=
  ∀ n, P10193489797540972614.a n = A049626 n

end A049626

/-! ## A049626.P2465042174359105196

`A049636(3*n+1)-A049637(n)`
-/

namespace A049626.P2465042174359105196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049636 (3 * n + 1) - A049637 n

end

end A049626.P2465042174359105196

namespace A049626

/-- `A049636(3*n+1)-A049637(n)` -/
def P2465042174359105196.Spec : Prop :=
  ∀ n, P2465042174359105196.a n = A049626 n

end A049626

/-! ## A049626.P16986114084845532308

`A008619(2*A049625(n)+n)`
-/

namespace A049626.P16986114084845532308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A049625 n + (n : ℤ)).toNat

end

end A049626.P16986114084845532308

namespace A049626

/-- `A008619(2*A049625(n)+n)` -/
def P16986114084845532308.Spec : Prop :=
  ∀ n, P16986114084845532308.a n = A049626 n

end A049626

/-! ## A049626.P2975679479921079488

`A008619(A049625(n)+A049625(n)+n)`
-/

namespace A049626.P2975679479921079488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A049625 n + (A049625 n + (n : ℤ))).toNat

end

end A049626.P2975679479921079488

namespace A049626

/-- `A008619(A049625(n)+A049625(n)+n)` -/
def P2975679479921079488.Spec : Prop :=
  ∀ n, P2975679479921079488.a n = A049626 n

end A049626

/-! ## A049626.P7571695888535767017

`A049615(A000124(n+4)+3)`
-/

namespace A049626.P7571695888535767017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A000124 (n + 4) + 3).toNat

end

end A049626.P7571695888535767017

namespace A049626

/-- `A049615(A000124(n+4)+3)` -/
def P7571695888535767017.Spec : Prop :=
  ∀ n, P7571695888535767017.a n = A049626 n

end A049626

/-! ## A049626.P4468707391396190094

`A049615(A052905(n+2))`
-/

namespace A049626.P4468707391396190094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A052905 (n + 2)).toNat

end

end A049626.P4468707391396190094

namespace A049626

/-- `A049615(A052905(n+2))` -/
def P4468707391396190094.Spec : Prop :=
  ∀ n, P4468707391396190094.a n = A049626 n

end A049626

/-!
# A049627: Array T read by diagonals; T(i,j)=(i+1)*(j+1)-H(i,j), where H is the array in A049615; thus T(i,j) is the number of lattice points in rectangle having diagonal (0,0)-to-(i,j) that are visible from (i,j).

The programs for A049627, there is no canonical definition to state claims against.
-/

/-! ## A049627.P11728458496381706547

`A049687(n)+1`
-/

namespace A049627.P11728458496381706547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n + 1

end

end A049627.P11728458496381706547

/-! ## A049627.P9443785292669175522

`A008619(2*A049687(n))`
-/

namespace A049627.P9443785292669175522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A049687 n).toNat

end

end A049627.P9443785292669175522

/-! ## A049627.P9448976625972903129

`A027656(2*A049687(n))`
-/

namespace A049627.P9448976625972903129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A049687 n).toNat

end

end A049627.P9448976625972903129

/-! ## A049627.P14503492294454221752

`A008611(3*A049687(n))`
-/

namespace A049627.P14503492294454221752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A049687 n).toNat

end

end A049627.P14503492294454221752

/-! ## A049627.P2120897013884147026

`A008620(3*A049687(n))`
-/

namespace A049627.P2120897013884147026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A049687 n).toNat

end

end A049627.P2120897013884147026

/-! ## A049627.P3785107606241236137

`A154325(n)+A049695(n)`
-/

namespace A049627.P3785107606241236137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154325 n + A049695 n

end

end A049627.P3785107606241236137

/-! ## A049627.P1696767834631639195

`A184985(A049695(n)+1)+1`
-/

namespace A049627.P1696767834631639195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A049695 n + 1).toNat + 1

end

end A049627.P1696767834631639195

/-! ## A049627.P13361279258822511485

`A003991(n+1)-A049615(n)`
-/

namespace A049627.P13361279258822511485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A049615 n

end

end A049627.P13361279258822511485

/-! ## A049627.P634784116135714922

`A059036(n)+1-A049615(n)`
-/

namespace A049627.P634784116135714922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + (1 - A049615 n)

end

end A049627.P634784116135714922

/-! ## A049627.P731631933798719506

`A049695(n)+2-A103451(n)`
-/

namespace A049627.P731631933798719506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 n + (2 - A103451 n)

end

end A049627.P731631933798719506

/-! ## A049627.P3751703684578363565

`1-A049687(n)*A057428(n)`
-/

namespace A049627.P3751703684578363565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A049687 n * A057428 n

end

end A049627.P3751703684578363565

/-! ## A049627.P4526835308916639879

`n-A023443(n-A049687(n))`
-/

namespace A049627.P4526835308916639879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A049687 n).toNat

end

end A049627.P4526835308916639879

/-! ## A049627.P6313429356064963637

`A008612(6*A049687(n))`
-/

namespace A049627.P6313429356064963637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A049687 n).toNat

end

end A049627.P6313429356064963637

/-! ## A049627.P12693032751259675987

`A266977(A049702(n))`
-/

namespace A049627.P12693032751259675987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A049702 n).toNat

end

end A049627.P12693032751259675987

/-! ## A049627.P5245839388971252261

`A154325(n)+A049702(n)/A154325(n)`
-/

namespace A049627.P5245839388971252261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154325 n : ℚ) + (A049702 n : ℚ) / (A154325 n : ℚ)

end

end A049627.P5245839388971252261

/-! ## A049627.P110805233731374842

`A049639(A185869(n+1))+1`
-/

namespace A049627.P110805233731374842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (A185869 (n + 1)).toNat + 1

end

end A049627.P110805233731374842

/-! ## A049627.P96017873298966697

`A002024(A027379(A049695(n)))`
-/

namespace A049627.P96017873298966697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A027379 (A049695 n).toNat).toNat

end

end A049627.P96017873298966697

/-!
# A049628: a(n) = Sum_{i=0..n} T(i,n-i) where T is A049627.

The programs for A049628, the canonical program `A049628.P9996388528544294496` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049628 has offset 0).

The definition of A049628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049628.P9595180211295400389

`∑[A225531(n)]`
-/

namespace A049628.P9595180211295400389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049628.P9595180211295400389

namespace A049628

/-- `∑[A225531(n)]` -/
def P9595180211295400389.Spec : Prop :=
  ∀ n, P9595180211295400389.a n = A049628 n

end A049628

/-! ## A049628.P8201221435539320747

`∑[A049643(n)+1]`
-/

namespace A049628.P8201221435539320747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049628.P8201221435539320747

namespace A049628

/-- `∑[A049643(n)+1]` -/
def P8201221435539320747.Spec : Prop :=
  ∀ n, P8201221435539320747.a n = A049628 n

end A049628

/-! ## A049628.P9697854804788819743

`∑[A005728(n)]+n`
-/

namespace A049628.P9697854804788819743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A049628.P9697854804788819743

namespace A049628

/-- `∑[A005728(n)]+n` -/
def P9697854804788819743.Spec : Prop :=
  ∀ n, P9697854804788819743.a n = A049628 n

end A049628

/-! ## A049628.P11691570318981479062

`A049688(n)+1+n`
-/

namespace A049628.P11691570318981479062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n + 1 + (n : ℤ)

end

end A049628.P11691570318981479062

namespace A049628

/-- `A049688(n)+1+n` -/
def P11691570318981479062.Spec : Prop :=
  ∀ n, P11691570318981479062.a n = A049628 n

theorem P11691570318981479062.correct : P11691570318981479062.Spec := by
  intro n
  simp only [A049628, Nat.add_sub_cancel, A049628.P11691570318981479062.a, A049628.P9996388528544294496.a, A005598, A005598.P13593438204838445571.a, A049688, A049688.P4025135909260073091.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049628

/-! ## A049628.P9996388528544294496

`A005598(n)+2*n`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049628

/-- `A005598(n)+2*n` -/
def P9996388528544294496.Spec : Prop :=
  ∀ n, P9996388528544294496.a n = A049628 n

theorem P9996388528544294496.correct : P9996388528544294496.Spec := by
  intro n
  simp only [A049628]

end A049628

/-! ## A049628.P12708981720945107126

`A103116(n)+Δ[n²]`
-/

namespace A049628.P12708981720945107126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A049628.P12708981720945107126

namespace A049628

/-- `A103116(n)+Δ[n²]` -/
def P12708981720945107126.Spec : Prop :=
  ∀ n, P12708981720945107126.a n = A049628 n

theorem P12708981720945107126.correct : P12708981720945107126.Spec := by
  intro n
  simp only [A049628, Nat.add_sub_cancel, A049628.P12708981720945107126.f1, A049628.P12708981720945107126.a, A049628.P9996388528544294496.a, A005598, A005598.P13593438204838445571.a, A103116, A103116.P13446593034198861880.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049628

/-! ## A049628.P16677559120810082955

`∑[A002088(n)+2]-1`
-/

namespace A049628.P16677559120810082955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049628.P16677559120810082955

namespace A049628

/-- `∑[A002088(n)+2]-1` -/
def P16677559120810082955.Spec : Prop :=
  ∀ n, P16677559120810082955.a n = A049628 n

end A049628

/-! ## A049628.P13389930264895279938

`(∑[A049632(n)+1]+n)/2`
-/

namespace A049628.P13389930264895279938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) : ℤ) : ℚ) / 2

end

end A049628.P13389930264895279938

namespace A049628

/-- `(∑[A049632(n)+1]+n)/2` -/
def P13389930264895279938.Spec : Prop :=
  ∀ n, P13389930264895279938.a n = (A049628 n : ℚ)

end A049628

/-! ## A049628.P10870933549861126195

`∑[∑[A000010(C(2, n²)+n)]]`
-/

namespace A049628.P10870933549861126195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049628.P10870933549861126195

namespace A049628

/-- `∑[∑[A000010(C(2, n²)+n)]]` -/
def P10870933549861126195.Spec : Prop :=
  ∀ n, P10870933549861126195.a n = A049628 n

end A049628

/-! ## A049628.P4515251787983847562

`a(n-1)+A092249(n)+2` with `a(0)=1`
-/

namespace A049628.P4515251787983847562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A092249 n + 2)

end

end A049628.P4515251787983847562

namespace A049628

/-- `a(n-1)+A092249(n)+2` -/
def P4515251787983847562.Spec : Prop :=
  ∀ n, P4515251787983847562.a n = A049628 n

end A049628

/-! ## A049628.P3733539731962728783

`a(n-1)+A015614(n)+3` with `a(0)=1`
-/

namespace A049628.P3733539731962728783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A015614 n + 3)

end

end A049628.P3733539731962728783

namespace A049628

/-- `a(n-1)+A015614(n)+3` -/
def P3733539731962728783.Spec : Prop :=
  ∀ n, P3733539731962728783.a n = A049628 n

end A049628

/-! ## A049628.P17681877566858292061

`∑[A000010(n)+a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A049628.P17681877566858292061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  A000010 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049628.P17681877566858292061

namespace A049628

/-- `∑[A000010(n)+a(n-1)]` -/
def P17681877566858292061.Spec : Prop :=
  ∀ n, P17681877566858292061.a n = A049628 n

end A049628

/-! ## A049628.P1936126056541316536

`∑[∑[A000010(abs(1-n)+1)]]+n`
-/

namespace A049628.P1936126056541316536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A049628.P1936126056541316536

namespace A049628

/-- `∑[∑[A000010(abs(1-n)+1)]]+n` -/
def P1936126056541316536.Spec : Prop :=
  ∀ n, P1936126056541316536.a n = A049628 n

end A049628

/-! ## A049628.P17014621030250646830

`A005843(n)+A005598(n)`
-/

namespace A049628.P17014621030250646830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A005598 n

end

end A049628.P17014621030250646830

namespace A049628

/-- `A005843(n)+A005598(n)` -/
def P17014621030250646830.Spec : Prop :=
  ∀ n, P17014621030250646830.a n = A049628 n

theorem P17014621030250646830.correct : P17014621030250646830.Spec := by
  intro n
  simp only [A049628, Nat.add_sub_cancel, A049628.P17014621030250646830.a, A049628.P9996388528544294496.a, A005598, A005598.P13593438204838445571.a, A005843, A005843.P3167286115683555970.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049628

/-! ## A049628.P15915334926346311821

`A049631(n)+A049630(n)`
-/

namespace A049628.P15915334926346311821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049631 n + A049630 n

end

end A049628.P15915334926346311821

namespace A049628

/-- `A049631(n)+A049630(n)` -/
def P15915334926346311821.Spec : Prop :=
  ∀ n, P15915334926346311821.a n = A049628 n

end A049628

/-! ## A049628.P15268747549682968893

`A135342(n+1)+A004273(n)`
-/

namespace A049628.P15268747549682968893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135342 (n + 1) + A004273 n

end

end A049628.P15268747549682968893

namespace A049628

/-- `A135342(n+1)+A004273(n)` -/
def P15268747549682968893.Spec : Prop :=
  ∀ n, P15268747549682968893.a n = A049628 n

end A049628

/-! ## A049628.P1998384955508503444

`1-(A001489(n)-A049688(n))`
-/

namespace A049628.P1998384955508503444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A049688 n)

end

end A049628.P1998384955508503444

namespace A049628

/-- `1-(A001489(n)-A049688(n))` -/
def P1998384955508503444.Spec : Prop :=
  ∀ n, P1998384955508503444.a n = A049628 n

theorem P1998384955508503444.correct : P1998384955508503444.Spec := by
  intro n
  simp only [A049628, Nat.add_sub_cancel, A049628.P1998384955508503444.a, A049628.P9996388528544294496.a, A001489, A001489.P15233530513763566776.a, A005598, A005598.P13593438204838445571.a, A049688, A049688.P4025135909260073091.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049628

/-! ## A049628.P11772147504687696939

`2-(A024000(n)-A049688(n))`
-/

namespace A049628.P11772147504687696939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A024000 n - A049688 n)

end

end A049628.P11772147504687696939

namespace A049628

/-- `2-(A024000(n)-A049688(n))` -/
def P11772147504687696939.Spec : Prop :=
  ∀ n, P11772147504687696939.a n = A049628 n

theorem P11772147504687696939.correct : P11772147504687696939.Spec := by
  intro n
  simp only [A049628, Nat.add_sub_cancel, A049628.P11772147504687696939.a, A049628.P9996388528544294496.a, A005598, A005598.P13593438204838445571.a, A024000, A024000.P8748414335487061084.a, A049688, A049688.P4025135909260073091.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049628

/-! ## A049628.P13740441337038263162

`(A005408(n)+∑[A049632(n)])/2`
-/

namespace A049628.P13740441337038263162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005408 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A049628.P13740441337038263162

namespace A049628

/-- `(A005408(n)+∑[A049632(n)])/2` -/
def P13740441337038263162.Spec : Prop :=
  ∀ n, P13740441337038263162.a n = (A049628 n : ℚ)

end A049628

/-!
# A049629: a(n) = (F(6*n+5) - F(6*n+1))/4 = (F(6*n+4) + F(6*n+2))/4, where F = A000045.

The programs for A049629, the canonical program `A049629.P17428339842843370455` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049629 has offset 0).

The definition of A049629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049629.P17428339842843370455

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049629

/-- `18*a(n-1)-a(n-2)` -/
def P17428339842843370455.Spec : Prop :=
  ∀ n, P17428339842843370455.a n = A049629 n

theorem P17428339842843370455.correct : P17428339842843370455.Spec := by
  intro n
  simp only [A049629]

end A049629

/-! ## A049629.P15601370639361199855

`1/4*((sqrt(5)+2)^(2*n+1)-(sqrt(5)-2)^(2*n+1))`
-/

namespace A049629.P15601370639361199855
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 4 : ℝ) * ((Real.sqrt (5 : ℝ) + 2) ^ (2 * n + 1) - (Real.sqrt (5 : ℝ) - 2) ^ (2 * n + 1))

end

end A049629.P15601370639361199855

namespace A049629

/-- `1/4*((sqrt(5)+2)^(2*n+1)-(sqrt(5)-2)^(2*n+1))` -/
def P15601370639361199855.Spec : Prop :=
  ∀ n, P15601370639361199855.a n = (A049629 n : ℝ)

theorem P15601370639361199855.correct : P15601370639361199855.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049629, Nat.add_sub_cancel, A049629.P15601370639361199855.a, A049629.P17428339842843370455.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049629, Nat.add_sub_cancel, A049629.P15601370639361199855.a, A049629.P17428339842843370455.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A049629

/-! ## A049629.P1559548465291702441

`A000032(6*n+3)/4`
-/

namespace A049629.P1559548465291702441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (6 * n + 3) : ℚ) / 4

end

end A049629.P1559548465291702441

namespace A049629

/-- `A000032(6*n+3)/4` -/
def P1559548465291702441.Spec : Prop :=
  ∀ n, P1559548465291702441.a n = (A049629 n : ℚ)

end A049629

/-! ## A049629.P8322980757428255459

`A049660(n)+A049660(n+1)`
-/

namespace A049629.P8322980757428255459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 n + A049660 (n + 1)

end

end A049629.P8322980757428255459

namespace A049629

/-- `A049660(n)+A049660(n+1)` -/
def P8322980757428255459.Spec : Prop :=
  ∀ n, P8322980757428255459.a n = A049629 n

end A049629

/-! ## A049629.P2217162481047538199

`(A188378(n)^3+(A188378(n)-2)^3)/8`
-/

namespace A049629.P2217162481047538199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188378 n ^ 3 + (A188378 n - 2) ^ 3 : ℚ) / 8

end

end A049629.P2217162481047538199

namespace A049629

/-- `(A188378(n)^3+(A188378(n)-2)^3)/8` -/
def P2217162481047538199.Spec : Prop :=
  ∀ n, P2217162481047538199.a n = (A049629 n : ℚ)

end A049629

/-! ## A049629.P6953536149547005617

`(A000045(6*n+4)+A000045(6*n+2))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049629.P6953536149547005617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 4) + A000045 (6 * n + 2) : ℚ) / 4

end

end A049629.P6953536149547005617

namespace A049629

/-- `(A000045(6*n+4)+A000045(6*n+2))/4` -/
def P6953536149547005617.Spec : Prop :=
  ∀ n, P6953536149547005617.a n = (A049629 n : ℚ)

end A049629

/-! ## A049629.P13079705685714801439

`(A000045(6*n+5)-A000045(6*n+1))/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049629.P13079705685714801439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 5) - A000045 (6 * n + 1) : ℚ) / 4

end

end A049629.P13079705685714801439

namespace A049629

/-- `(A000045(6*n+5)-A000045(6*n+1))/4` -/
def P13079705685714801439.Spec : Prop :=
  ∀ n, P13079705685714801439.a n = (A049629 n : ℚ)

end A049629

/-! ## A049629.P7210623428553469307

`ogf((1+x)/(1-18x+x^2))`
-/

namespace A049629.P7210623428553469307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -18, 1] n

end

end A049629.P7210623428553469307

namespace A049629

/-- `ogf((1+x)/(1-18x+x^2))` -/
def P7210623428553469307.Spec : Prop :=
  ∀ n, P7210623428553469307.a n = A049629 n

end A049629

/-! ## A049629.P7030055771284469894

`Δ[A049683(n)]`
-/

namespace A049629.P7030055771284469894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049629.P7030055771284469894

namespace A049629

/-- `Δ[A049683(n)]` -/
def P7030055771284469894.Spec : Prop :=
  ∀ n, P7030055771284469894.a n = A049629 n

end A049629

/-! ## A049629.P8231861927272992754

`A085348(2*n)`
-/

namespace A049629.P8231861927272992754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085348 (2 * n)

end

end A049629.P8231861927272992754

namespace A049629

/-- `A085348(2*n)` -/
def P8231861927272992754.Spec : Prop :=
  ∀ n, P8231861927272992754.a n = A049629 n

end A049629

/-!
# A049630: a(n) = Sum_{i=0..floor(n/2)} T(2i,n-2i) where T is A049627.

The programs for A049630, there is no canonical definition to state claims against.
-/

/-! ## A049630.P2312611268337858769

`2*n-(A049631(n)-A005598(n))`
-/

namespace A049630.P2312611268337858769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A049631 n - A005598 n)

end

end A049630.P2312611268337858769

/-! ## A049630.P841644623453205969

`A005993(n)-A049618(n)`
-/

namespace A049630.P841644623453205969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n - A049618 n

end

end A049630.P841644623453205969

/-! ## A049630.P2026221358273245869

`∑[A008619(n)²]-A049618(n)`
-/

namespace A049630.P2026221358273245869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049618 n

end

end A049630.P2026221358273245869

/-! ## A049630.P12882363589360579024

`A005993(n)+A049619(n)-A049616(n)`
-/

namespace A049630.P12882363589360579024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + (A049619 n - A049616 n)

end

end A049630.P12882363589360579024

/-! ## A049630.P17917452624630786687

`A049628(n)-A049631(n)`
-/

namespace A049630.P17917452624630786687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049628 n - A049631 n

end

end A049630.P17917452624630786687

/-! ## A049630.P1720443496620776092

`∑[A225531(n)]-A049631(n)`
-/

namespace A049630.P1720443496620776092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049631 n

end

end A049630.P1720443496620776092

/-!
# A049631: a(n) = Sum_{i=0..floor(n/2)} T(2i+1,n-2i-1) where T is A049627.

The programs for A049631, there is no canonical definition to state claims against.
-/

/-! ## A049631.P4093169996780309115

`A049628(n)-A049630(n)`
-/

namespace A049631.P4093169996780309115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049628 n - A049630 n

end

end A049631.P4093169996780309115

/-! ## A049631.P4107022595430588518

`∑[A225531(n)]-A049630(n)`
-/

namespace A049631.P4107022595430588518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049630 n

end

end A049631.P4107022595430588518

/-! ## A049631.P9458140509058594476

`A049618(n)+A049628(n)-A005993(n)`
-/

namespace A049631.P9458140509058594476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049618 n + (A049628 n - A005993 n)

end

end A049631.P9458140509058594476

/-! ## A049631.P15656656247057050249

`A049618(n)+∑[A225531(n)]-A005993(n)`
-/

namespace A049631.P15656656247057050249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049618 n + (∑ j ∈ Finset.range (n + 1), f1 j - A005993 n)

end

end A049631.P15656656247057050249

/-! ## A049631.P16274970502331628641

`A049628(n)-(∑[A008619(n)²]-A049618(n))`
-/

namespace A049631.P16274970502331628641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049628 n - (∑ j ∈ Finset.range (n + 1), f1 j - A049618 n)

end

end A049631.P16274970502331628641

/-! ## A049631.P2327179587773619340

`A049628(n)+A008683(A008578(n+2))*A049630(n)`
-/

namespace A049631.P2327179587773619340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049628 n + A008683 (A008578 (n + 2)).toNat * A049630 n

end

end A049631.P2327179587773619340

/-!
# A049632: a(n) = T(n,n), array T as in A049627.

The programs for A049632, the canonical program `A049632.P1310813934760745666` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049632 has offset 0).

The definition of A049632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2836 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049632.P15075182839538513336

`A049691(n)+1`
-/

namespace A049632.P15075182839538513336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + 1

end

end A049632.P15075182839538513336

namespace A049632

/-- `A049691(n)+1` -/
def P15075182839538513336.Spec : Prop :=
  ∀ n, P15075182839538513336.a n = A049632 n

end A049632

/-! ## A049632.P5184331043263357948

`floor(2/acot(A049643(n)))`
-/

namespace A049632.P5184331043263357948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A049643 n : ℝ)⌋

end

end A049632.P5184331043263357948

namespace A049632

/-- `floor(2/acot(A049643(n)))` -/
def P5184331043263357948.Spec : Prop :=
  ∀ n, P5184331043263357948.a n = A049632 n

end A049632

/-! ## A049632.P1310813934760745666

`abs(xor(-2, A206350(n+1)))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049632

/-- `abs(xor(-2, A206350(n+1)))` -/
def P1310813934760745666.Spec : Prop :=
  ∀ n, P1310813934760745666.a n = A049632 n

theorem P1310813934760745666.correct : P1310813934760745666.Spec := by
  intro n
  simp only [A049632]

end A049632

/-! ## A049632.P5697219797824610787

`A140434(n)+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A049632.P5697219797824610787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A140434 n + a (n - 1)

end

end A049632.P5697219797824610787

namespace A049632

/-- `A140434(n)+a(n-1)` -/
def P5697219797824610787.Spec : Prop :=
  ∀ n, P5697219797824610787.a n = A049632 n

end A049632

/-! ## A049632.P9891835022428674250

`a(n-1)+2*A000010(n)` with `a(0)=1, a(1)=4`
-/

namespace A049632.P9891835022428674250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 2 * A000010 n

end

end A049632.P9891835022428674250

namespace A049632

/-- `a(n-1)+2*A000010(n)` -/
def P9891835022428674250.Spec : Prop :=
  ∀ n, P9891835022428674250.a n = A049632 n

end A049632

/-! ## A049632.P2702606657784230226

`A049643(n)+A005728(n)`
-/

namespace A049632.P2702606657784230226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + A005728 n

end

end A049632.P2702606657784230226

namespace A049632

/-- `A049643(n)+A005728(n)` -/
def P2702606657784230226.Spec : Prop :=
  ∀ n, P2702606657784230226.a n = A049632 n

end A049632

/-! ## A049632.P13210153493636725998

`A002088(n)+A049643(n)+1`
-/

namespace A049632.P13210153493636725998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (A049643 n + 1)

end

end A049632.P13210153493636725998

namespace A049632

/-- `A002088(n)+A049643(n)+1` -/
def P13210153493636725998.Spec : Prop :=
  ∀ n, P13210153493636725998.a n = A049632 n

end A049632

/-! ## A049632.P13143435846995751015

`A049696(n)+A036453(n+1)`
-/

namespace A049632.P13143435846995751015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + A036453 (n + 1)

end

end A049632.P13143435846995751015

namespace A049632

/-- `A049696(n)+A036453(n+1)` -/
def P13143435846995751015.Spec : Prop :=
  ∀ n, P13143435846995751015.a n = A049632 n

end A049632

/-! ## A049632.P9326019011142725639

`A049696(n)+A057427(n)+1`
-/

namespace A049632.P9326019011142725639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (A057427 n + 1)

end

end A049632.P9326019011142725639

namespace A049632

/-- `A049696(n)+A057427(n)+1` -/
def P9326019011142725639.Spec : Prop :=
  ∀ n, P9326019011142725639.a n = A049632 n

end A049632

/-! ## A049632.P16645306634815631790

`A049696(n)+1-A057428(n)`
-/

namespace A049632.P16645306634815631790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (1 - A057428 n)

end

end A049632.P16645306634815631790

namespace A049632

/-- `A049696(n)+1-A057428(n)` -/
def P16645306634815631790.Spec : Prop :=
  ∀ n, P16645306634815631790.a n = A049632 n

end A049632

/-! ## A049632.P9365586596617978481

`A049696(n)+2-A000007(n)`
-/

namespace A049632.P9365586596617978481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (2 - A000007 n)

end

end A049632.P9365586596617978481

namespace A049632

/-- `A049696(n)+2-A000007(n)` -/
def P9365586596617978481.Spec : Prop :=
  ∀ n, P9365586596617978481.a n = A049632 n

end A049632

/-! ## A049632.P8059769595604528928

`A000032(C(2, n+2))*A005728(n)`
-/

namespace A049632.P8059769595604528928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A005728 n

end

end A049632.P8059769595604528928

namespace A049632

/-- `A000032(C(2, n+2))*A005728(n)` -/
def P8059769595604528928.Spec : Prop :=
  ∀ n, P8059769595604528928.a n = A049632 n

end A049632

/-! ## A049632.P11816648922287389660

`(A002088(n)+1)*A000032(C(2, n+2))`
-/

namespace A049632.P11816648922287389660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 n + 1) * A000032 (Nat.choose 2 (n + 2))

end

end A049632.P11816648922287389660

namespace A049632

/-- `(A002088(n)+1)*A000032(C(2, n+2))` -/
def P11816648922287389660.Spec : Prop :=
  ∀ n, P11816648922287389660.a n = A049632 n

end A049632

/-! ## A049632.P5018868062819792103

`A020639(∏{e}[n+1, 2*#])*A005728(n)`
-/

namespace A049632.P5018868062819792103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), 2 * Nat.factorization (f1 n) p) * A005728 n

end

end A049632.P5018868062819792103

namespace A049632

/-- `A020639(∏{e}[n+1, 2*#])*A005728(n)` -/
def P5018868062819792103.Spec : Prop :=
  ∀ n, P5018868062819792103.a n = A049632 n

end A049632

/-! ## A049632.P6825658180630572490

`A049643(n+1)+A049643(n)-A000010(n+1)`
-/

namespace A049632.P6825658180630572490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 1) + (A049643 n - A000010 (n + 1))

end

end A049632.P6825658180630572490

namespace A049632

/-- `A049643(n+1)+A049643(n)-A000010(n+1)` -/
def P6825658180630572490.Spec : Prop :=
  ∀ n, P6825658180630572490.a n = A049632 n

end A049632

/-! ## A049632.P3391775467328837642

`A049633(n)-A000010(n+1)`
-/

namespace A049632.P3391775467328837642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - A000010 (n + 1)

end

end A049632.P3391775467328837642

namespace A049632

/-- `A049633(n)-A000010(n+1)` -/
def P3391775467328837642.Spec : Prop :=
  ∀ n, P3391775467328837642.a n = A049632 n

end A049632

/-! ## A049632.P15746082594936243580

`(n+1)²-A049620(n)`
-/

namespace A049632.P15746082594936243580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A049620 n

end

end A049632.P15746082594936243580

namespace A049632

/-- `(n+1)²-A049620(n)` -/
def P15746082594936243580.Spec : Prop :=
  ∀ n, P15746082594936243580.a n = A049632 n

end A049632

/-!
# A049633: a(n) = T(n,n+1), array T as in A049627.

The programs for A049633, the canonical program `A049633.P8943239964190066196` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049633 has offset 0).

The definition of A049633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049633.P15447061111127570913

`A049632(n)+A000010(n+1)`
-/

namespace A049633.P15447061111127570913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n + A000010 (n + 1)

end

end A049633.P15447061111127570913

namespace A049633

/-- `A049632(n)+A000010(n+1)` -/
def P15447061111127570913.Spec : Prop :=
  ∀ n, P15447061111127570913.a n = A049633 n

end A049633

/-! ## A049633.P15501735145623052459

`A049643(n)+A005728(n+1)`
-/

namespace A049633.P15501735145623052459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + A005728 (n + 1)

end

end A049633.P15501735145623052459

namespace A049633

/-- `A049643(n)+A005728(n+1)` -/
def P15501735145623052459.Spec : Prop :=
  ∀ n, P15501735145623052459.a n = A049633 n

end A049633

/-! ## A049633.P16626749385629700799

`A049691(n)+A039649(n+1)`
-/

namespace A049633.P16626749385629700799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + A039649 (n + 1)

end

end A049633.P16626749385629700799

namespace A049633

/-- `A049691(n)+A039649(n+1)` -/
def P16626749385629700799.Spec : Prop :=
  ∀ n, P16626749385629700799.a n = A049633 n

end A049633

/-! ## A049633.P8943239964190066196

`A049643(n+1)+A049643(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049633

/-- `A049643(n+1)+A049643(n)` -/
def P8943239964190066196.Spec : Prop :=
  ∀ n, P8943239964190066196.a n = A049633 n

theorem P8943239964190066196.correct : P8943239964190066196.Spec := by
  intro n
  simp only [A049633]

end A049633

/-! ## A049633.P11091486065413968659

`A000010(n+1)+A049691(n)+1`
-/

namespace A049633.P11091486065413968659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A049691 n + 1)

end

end A049633.P11091486065413968659

namespace A049633

/-- `A000010(n+1)+A049691(n)+1` -/
def P11091486065413968659.Spec : Prop :=
  ∀ n, P11091486065413968659.a n = A049633 n

end A049633

/-! ## A049633.P8497970851351364582

`A109606(n+1)+A049632(n)+1`
-/

namespace A049633.P8497970851351364582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (A049632 n + 1)

end

end A049633.P8497970851351364582

namespace A049633

/-- `A109606(n+1)+A049632(n)+1` -/
def P8497970851351364582.Spec : Prop :=
  ∀ n, P8497970851351364582.a n = A049633 n

end A049633

/-! ## A049633.P2745609794969059756

`A002088(n)+∑[lcm(2, A000010(n+1))]`
-/

namespace A049633.P2745609794969059756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049633.P2745609794969059756

namespace A049633

/-- `A002088(n)+∑[lcm(2, A000010(n+1))]` -/
def P2745609794969059756.Spec : Prop :=
  ∀ n, P2745609794969059756.a n = A049633 n

end A049633

/-! ## A049633.P3694626598962786674

`∑[A000010(C(2, n²)+n)+A000010(n+1)]`
-/

namespace A049633.P3694626598962786674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n) + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049633.P3694626598962786674

namespace A049633

/-- `∑[A000010(C(2, n²)+n)+A000010(n+1)]` -/
def P3694626598962786674.Spec : Prop :=
  ∀ n, P3694626598962786674.a n = A049633 n

end A049633

/-! ## A049633.P17048873065851719890

`a(n-1)+A000010(n+1)+A000010(n)` with `a(0)=2, a(1)=5`
-/

namespace A049633.P17048873065851719890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + (A000010 (n + 1) + A000010 n)

end

end A049633.P17048873065851719890

namespace A049633

/-- `a(n-1)+A000010(n+1)+A000010(n)` -/
def P17048873065851719890.Spec : Prop :=
  ∀ n, P17048873065851719890.a n = A049633 n

end A049633

/-! ## A049633.P4987226487081059654

`A005728(n+1)+A049632(n)-A005728(n)`
-/

namespace A049633.P4987226487081059654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) + (A049632 n - A005728 n)

end

end A049633.P4987226487081059654

namespace A049633

/-- `A005728(n+1)+A049632(n)-A005728(n)` -/
def P4987226487081059654.Spec : Prop :=
  ∀ n, P4987226487081059654.a n = A049633 n

end A049633

/-! ## A049633.P12224948755977638429

`A264724(n+1)-A049620(n)`
-/

namespace A049633.P12224948755977638429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1) - A049620 n

end

end A049633.P12224948755977638429

namespace A049633

/-- `A264724(n+1)-A049620(n)` -/
def P12224948755977638429.Spec : Prop :=
  ∀ n, P12224948755977638429.a n = A049633 n

end A049633

/-! ## A049633.P9930281073474216063

`A049697(n)+A036453(n+1)`
-/

namespace A049633.P9930281073474216063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n + A036453 (n + 1)

end

end A049633.P9930281073474216063

namespace A049633

/-- `A049697(n)+A036453(n+1)` -/
def P9930281073474216063.Spec : Prop :=
  ∀ n, P9930281073474216063.a n = A049633 n

theorem P9930281073474216063.correct : P9930281073474216063.Spec := by
  intro n
  simp only [A049633, Nat.add_sub_cancel, A049633.P9930281073474216063.a, A049633.P8943239964190066196.a, A036453, A036453.P17495263989008753229.a, A049643, A049643.P15143516310095013308.a, A049697, A049697.P8461540125229909495.a, A010553, A010553.P11932377395426747626.a, A036450, A036450.P17654615826854850628.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A000005, A000005.P16091521709108585461.a, A008619, A008619.P16053834178911111118.a, A049688, A049688.P4025135909260073091.a, A005598, A005598.P13593438204838445571.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049633

/-! ## A049633.P3214811854308804719

`A049697(n)+A057427(n)+1`
-/

namespace A049633.P3214811854308804719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n + (A057427 n + 1)

end

end A049633.P3214811854308804719

namespace A049633

/-- `A049697(n)+A057427(n)+1` -/
def P3214811854308804719.Spec : Prop :=
  ∀ n, P3214811854308804719.a n = A049633 n

end A049633

/-! ## A049633.P1535734198648435755

`A049697(n)+1-A057428(n)`
-/

namespace A049633.P1535734198648435755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n + (1 - A057428 n)

end

end A049633.P1535734198648435755

namespace A049633

/-- `A049697(n)+1-A057428(n)` -/
def P1535734198648435755.Spec : Prop :=
  ∀ n, P1535734198648435755.a n = A049633 n

end A049633

/-! ## A049633.P4702131201045758628

`A049697(n)+3-A054977(n)`
-/

namespace A049633.P4702131201045758628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n + (3 - A054977 n)

end

end A049633.P4702131201045758628

namespace A049633

/-- `A049697(n)+3-A054977(n)` -/
def P4702131201045758628.Spec : Prop :=
  ∀ n, P4702131201045758628.a n = A049633 n

end A049633

/-! ## A049633.P17656373988428385924

`A049697(n)+A020639(A008574(n))`
-/

namespace A049633.P17656373988428385924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n + A020639 (A008574 n).toNat

end

end A049633.P17656373988428385924

namespace A049633

/-- `A049697(n)+A020639(A008574(n))` -/
def P17656373988428385924.Spec : Prop :=
  ∀ n, P17656373988428385924.a n = A049633 n

end A049633

/-! ## A049633.P9689495060241312096

`A049697(n)+A020639(A000010(n+2))`
-/

namespace A049633.P9689495060241312096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n + A020639 (A000010 (n + 2)).toNat

end

end A049633.P9689495060241312096

namespace A049633

/-- `A049697(n)+A020639(A000010(n+2))` -/
def P9689495060241312096.Spec : Prop :=
  ∀ n, P9689495060241312096.a n = A049633 n

end A049633

/-! ## A049633.P2015972235486407009

`(n+1)*(n+2)-A049621(n)`
-/

namespace A049633.P2015972235486407009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℤ) - A049621 n

end

end A049633.P2015972235486407009

namespace A049633

/-- `(n+1)*(n+2)-A049621(n)` -/
def P2015972235486407009.Spec : Prop :=
  ∀ n, P2015972235486407009.a n = A049633 n

end A049633

/-! ## A049633.P6241209492056839157

`A028387(n)+1-A049621(n)`
-/

namespace A049633.P6241209492056839157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n + (1 - A049621 n)

end

end A049633.P6241209492056839157

namespace A049633

/-- `A028387(n)+1-A049621(n)` -/
def P6241209492056839157.Spec : Prop :=
  ∀ n, P6241209492056839157.a n = A049633 n

end A049633

/-!
# A049634: a(n) = T(n,n+2), array T as in A049627.

The programs for A049634, the canonical program `A049634.P8228112400628920281` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049634 has offset 0).

The definition of A049634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2897 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049634.P10105438124720001443

`A092404(n+1)+A049691(n)`
-/

namespace A049634.P10105438124720001443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092404 (n + 1) + A049691 n

end

end A049634.P10105438124720001443

namespace A049634

/-- `A092404(n+1)+A049691(n)` -/
def P10105438124720001443.Spec : Prop :=
  ∀ n, P10105438124720001443.a n = A049634 n

end A049634

/-! ## A049634.P13107512780149029355

`A049643(n)+A002088(n+2)`
-/

namespace A049634.P13107512780149029355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + A002088 (n + 2)

end

end A049634.P13107512780149029355

namespace A049634

/-- `A049643(n)+A002088(n+2)` -/
def P13107512780149029355.Spec : Prop :=
  ∀ n, P13107512780149029355.a n = A049634 n

end A049634

/-! ## A049634.P8228112400628920281

`A092249(n+2)+A049643(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049634

/-- `A092249(n+2)+A049643(n)` -/
def P8228112400628920281.Spec : Prop :=
  ∀ n, P8228112400628920281.a n = A049634 n

theorem P8228112400628920281.correct : P8228112400628920281.Spec := by
  intro n
  simp only [A049634]

end A049634

/-! ## A049634.P17191930871969016112

`A005728(n)+Δ[A005819(n+1)]`
-/

namespace A049634.P17191930871969016112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n + (f1 (n + 1) - f1 n)

end

end A049634.P17191930871969016112

namespace A049634

/-- `A005728(n)+Δ[A005819(n+1)]` -/
def P17191930871969016112.Spec : Prop :=
  ∀ n, P17191930871969016112.a n = A049634 n

end A049634

/-! ## A049634.P2111150236574831275

`a(n-1)+A000010(n+2)+A000010(n)` with `a(0)=2, a(1)=6`
-/

namespace A049634.P2111150236574831275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) + (A000010 (n + 2) + A000010 n)

end

end A049634.P2111150236574831275

namespace A049634

/-- `a(n-1)+A000010(n+2)+A000010(n)` -/
def P2111150236574831275.Spec : Prop :=
  ∀ n, P2111150236574831275.a n = A049634 n

end A049634

/-! ## A049634.P15444929657913759911

`A005728(A065475(n+1))+A005728(n)-1`
-/

namespace A049634.P15444929657913759911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A065475 (n + 1)).toNat + (A005728 n - 1)

end

end A049634.P15444929657913759911

namespace A049634

/-- `A005728(A065475(n+1))+A005728(n)-1` -/
def P15444929657913759911.Spec : Prop :=
  ∀ n, P15444929657913759911.a n = A049634 n

end A049634

/-! ## A049634.P15595870078074934808

`A049635(n)+1-A216475(n+1)`
-/

namespace A049634.P15595870078074934808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n + (1 - A216475 (n + 1))

end

end A049634.P15595870078074934808

namespace A049634

/-- `A049635(n)+1-A216475(n+1)` -/
def P15595870078074934808.Spec : Prop :=
  ∀ n, P15595870078074934808.a n = A049634 n

end A049634

/-! ## A049634.P9978104382700506340

`A049698(n)+A036453(n+1)`
-/

namespace A049634.P9978104382700506340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + A036453 (n + 1)

end

end A049634.P9978104382700506340

namespace A049634

/-- `A049698(n)+A036453(n+1)` -/
def P9978104382700506340.Spec : Prop :=
  ∀ n, P9978104382700506340.a n = A049634 n

end A049634

/-! ## A049634.P9568952897449166448

`A049698(n)+A057427(n)+1`
-/

namespace A049634.P9568952897449166448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + (A057427 n + 1)

end

end A049634.P9568952897449166448

namespace A049634

/-- `A049698(n)+A057427(n)+1` -/
def P9568952897449166448.Spec : Prop :=
  ∀ n, P9568952897449166448.a n = A049634 n

end A049634

/-! ## A049634.P2767872126438074025

`A049698(n)+1-A057428(n)`
-/

namespace A049634.P2767872126438074025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + (1 - A057428 n)

end

end A049634.P2767872126438074025

namespace A049634

/-- `A049698(n)+1-A057428(n)` -/
def P2767872126438074025.Spec : Prop :=
  ∀ n, P2767872126438074025.a n = A049634 n

end A049634

/-! ## A049634.P15933245726649659510

`A049698(n)+A020639(A004277(n))`
-/

namespace A049634.P15933245726649659510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + A020639 (A004277 n).toNat

end

end A049634.P15933245726649659510

namespace A049634

/-- `A049698(n)+A020639(A004277(n))` -/
def P15933245726649659510.Spec : Prop :=
  ∀ n, P15933245726649659510.a n = A049634 n

end A049634

/-! ## A049634.P2969390648994078768

`A049698(n)+A020639(A005574(n+1))`
-/

namespace A049634.P2969390648994078768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + A020639 (A005574 (n + 1)).toNat

end

end A049634.P2969390648994078768

namespace A049634

/-- `A049698(n)+A020639(A005574(n+1))` -/
def P2969390648994078768.Spec : Prop :=
  ∀ n, P2969390648994078768.a n = A049634 n

end A049634

/-! ## A049634.P4838684944290645514

`A049698(n)+A020639(A049716(n+1))`
-/

namespace A049634.P4838684944290645514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + A020639 (A049716 (n + 1)).toNat

end

end A049634.P4838684944290645514

namespace A049634

/-- `A049698(n)+A020639(A049716(n+1))` -/
def P4838684944290645514.Spec : Prop :=
  ∀ n, P4838684944290645514.a n = A049634 n

end A049634

/-! ## A049634.P15958433204391759414

`A109606(n+2)+A049633(n)`
-/

namespace A049634.P15958433204391759414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 2) + A049633 n

end

end A049634.P15958433204391759414

namespace A049634

/-- `A109606(n+2)+A049633(n)` -/
def P15958433204391759414.Spec : Prop :=
  ∀ n, P15958433204391759414.a n = A049634 n

end A049634

/-! ## A049634.P185912172861410813

`(n+1)*(n+3)-A049622(n)`
-/

namespace A049634.P185912172861410813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 3) : ℤ) - A049622 n

end

end A049634.P185912172861410813

namespace A049634

/-- `(n+1)*(n+3)-A049622(n)` -/
def P185912172861410813.Spec : Prop :=
  ∀ n, P185912172861410813.a n = A049634 n

end A049634

/-! ## A049634.P742159083309199161

`A049693(n)+1`
-/

namespace A049634.P742159083309199161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049693 n + 1

end

end A049634.P742159083309199161

namespace A049634

/-- `A049693(n)+1` -/
def P742159083309199161.Spec : Prop :=
  ∀ n, P742159083309199161.a n = A049634 n

end A049634

/-! ## A049634.P3000655274296111736

`A049691(n)+Δ[A049697(n)]`
-/

namespace A049634.P3000655274296111736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + (f1 (n + 1) - f1 n)

end

end A049634.P3000655274296111736

namespace A049634

/-- `A049691(n)+Δ[A049697(n)]` -/
def P3000655274296111736.Spec : Prop :=
  ∀ n, P3000655274296111736.a n = A049634 n

end A049634

/-! ## A049634.P11750499461046493799

`A206297(n+3)-Δ[A049633(n)]`
-/

namespace A049634.P11750499461046493799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 3) - (f1 (n + 1) - f1 n)

end

end A049634.P11750499461046493799

namespace A049634

/-- `A206297(n+3)-Δ[A049633(n)]` -/
def P11750499461046493799.Spec : Prop :=
  ∀ n, P11750499461046493799.a n = A049634 n

end A049634

/-! ## A049634.P2925136945148800098

`A225531(n)+A015614(n+2)`
-/

namespace A049634.P2925136945148800098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n + A015614 (n + 2)

end

end A049634.P2925136945148800098

namespace A049634

/-- `A225531(n)+A015614(n+2)` -/
def P2925136945148800098.Spec : Prop :=
  ∀ n, P2925136945148800098.a n = A049634 n

end A049634

/-!
# A049635: a(n) = T(n,n+3), array T as in A049627.

The programs for A049635, the canonical program `A049635.P15281965004979027358` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049635 has offset 0).

The definition of A049635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049635.P2323113398966328598

`A049694(n)+1`
-/

namespace A049635.P2323113398966328598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n + 1

end

end A049635.P2323113398966328598

namespace A049635

/-- `A049694(n)+1` -/
def P2323113398966328598.Spec : Prop :=
  ∀ n, P2323113398966328598.a n = A049635 n

end A049635

/-! ## A049635.P1338329744804863391

`∑[n+2]+∑[n+2]-A049623(n)`
-/

namespace A049635.P1338329744804863391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A049623 n)

end

end A049635.P1338329744804863391

namespace A049635

/-- `∑[n+2]+∑[n+2]-A049623(n)` -/
def P1338329744804863391.Spec : Prop :=
  ∀ n, P1338329744804863391.a n = A049635 n

end A049635

/-! ## A049635.P15012047738272591281

`A049699(n)+A036453(n+1)`
-/

namespace A049635.P15012047738272591281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A036453 (n + 1)

end

end A049635.P15012047738272591281

namespace A049635

/-- `A049699(n)+A036453(n+1)` -/
def P15012047738272591281.Spec : Prop :=
  ∀ n, P15012047738272591281.a n = A049635 n

end A049635

/-! ## A049635.P17387001946706135799

`A049699(n)+A057427(n)+1`
-/

namespace A049635.P17387001946706135799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + (A057427 n + 1)

end

end A049635.P17387001946706135799

namespace A049635

/-- `A049699(n)+A057427(n)+1` -/
def P17387001946706135799.Spec : Prop :=
  ∀ n, P17387001946706135799.a n = A049635 n

end A049635

/-! ## A049635.P8215484690802534384

`A049699(n)+1-A057428(n)`
-/

namespace A049635.P8215484690802534384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + (1 - A057428 n)

end

end A049635.P8215484690802534384

namespace A049635

/-- `A049699(n)+1-A057428(n)` -/
def P8215484690802534384.Spec : Prop :=
  ∀ n, P8215484690802534384.a n = A049635 n

end A049635

/-! ## A049635.P2000813664960472828

`A049699(n)+2-A000007(n)`
-/

namespace A049635.P2000813664960472828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + (2 - A000007 n)

end

end A049635.P2000813664960472828

namespace A049635

/-- `A049699(n)+2-A000007(n)` -/
def P2000813664960472828.Spec : Prop :=
  ∀ n, P2000813664960472828.a n = A049635 n

end A049635

/-! ## A049635.P13082599195160133072

`A049699(n)+A040001(2*n)`
-/

namespace A049635.P13082599195160133072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A040001 (2 * n)

end

end A049635.P13082599195160133072

namespace A049635

/-- `A049699(n)+A040001(2*n)` -/
def P13082599195160133072.Spec : Prop :=
  ∀ n, P13082599195160133072.a n = A049635 n

end A049635

/-! ## A049635.P1556307302455876384

`n-(A023443(n)-A049694(n))`
-/

namespace A049635.P1556307302455876384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A049694 n)

end

end A049635.P1556307302455876384

namespace A049635

/-- `n-(A023443(n)-A049694(n))` -/
def P1556307302455876384.Spec : Prop :=
  ∀ n, P1556307302455876384.a n = A049635 n

end A049635

/-! ## A049635.P10056352087960322381

`A005408(n)-n-(n-A049694(n))`
-/

namespace A049635.P10056352087960322381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) - ((n : ℤ) - A049694 n)

end

end A049635.P10056352087960322381

namespace A049635

/-- `A005408(n)-n-(n-A049694(n))` -/
def P10056352087960322381.Spec : Prop :=
  ∀ n, P10056352087960322381.a n = A049635 n

end A049635

/-! ## A049635.P15535141199140427553

`A049699(n)+A014963(A001316(n))`
-/

namespace A049635.P15535141199140427553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A014963 (A001316 n).toNat

end

end A049635.P15535141199140427553

namespace A049635

/-- `A049699(n)+A014963(A001316(n))` -/
def P15535141199140427553.Spec : Prop :=
  ∀ n, P15535141199140427553.a n = A049635 n

end A049635

/-! ## A049635.P10189468652283844218

`A049699(n)+A020639(A005942(n))`
-/

namespace A049635.P10189468652283844218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A020639 (A005942 n).toNat

end

end A049635.P10189468652283844218

namespace A049635

/-- `A049699(n)+A020639(A005942(n))` -/
def P10189468652283844218.Spec : Prop :=
  ∀ n, P10189468652283844218.a n = A049635 n

end A049635

/-! ## A049635.P3596798205767871869

`A049699(n)+A020639(A001223(n+1))`
-/

namespace A049635.P3596798205767871869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A020639 (A001223 (n + 1)).toNat

end

end A049635.P3596798205767871869

namespace A049635

/-- `A049699(n)+A020639(A001223(n+1))` -/
def P3596798205767871869.Spec : Prop :=
  ∀ n, P3596798205767871869.a n = A049635 n

end A049635

/-! ## A049635.P3614949307880049411

`A049699(n)+A020639(A049716(n+1))`
-/

namespace A049635.P3614949307880049411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A020639 (A049716 (n + 1)).toNat

end

end A049635.P3614949307880049411

namespace A049635

/-- `A049699(n)+A020639(A049716(n+1))` -/
def P3614949307880049411.Spec : Prop :=
  ∀ n, P3614949307880049411.a n = A049635 n

end A049635

/-! ## A049635.P15281965004979027358

`A216475(n+1)+A049693(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049635

/-- `A216475(n+1)+A049693(n)` -/
def P15281965004979027358.Spec : Prop :=
  ∀ n, P15281965004979027358.a n = A049635 n

theorem P15281965004979027358.correct : P15281965004979027358.Spec := by
  intro n
  simp only [A049635]

end A049635

/-! ## A049635.P12732696999197659156

`A049699(n)+A000034(A000040(n+1))`
-/

namespace A049635.P12732696999197659156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A000034 (A000040 (n + 1)).toNat

end

end A049635.P12732696999197659156

namespace A049635

/-- `A049699(n)+A000034(A000040(n+1))` -/
def P12732696999197659156.Spec : Prop :=
  ∀ n, P12732696999197659156.a n = A049635 n

end A049635

/-! ## A049635.P1591502641468445827

`A049699(n)+A020639(A049697(2*n))`
-/

namespace A049635.P1591502641468445827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A020639 (A049697 (2 * n)).toNat

end

end A049635.P1591502641468445827

namespace A049635

/-- `A049699(n)+A020639(A049697(2*n))` -/
def P1591502641468445827.Spec : Prop :=
  ∀ n, P1591502641468445827.a n = A049635 n

end A049635

/-! ## A049635.P11158823610759800192

`A020725(A049694(n))`
-/

namespace A049635.P11158823610759800192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A049694 n).toNat

end

end A049635.P11158823610759800192

namespace A049635

/-- `A020725(A049694(n))` -/
def P11158823610759800192.Spec : Prop :=
  ∀ n, P11158823610759800192.a n = A049635 n

end A049635

/-! ## A049635.P4838334334288778286

`A049699(n)+A000034(A324855(n+1))`
-/

namespace A049635.P4838334334288778286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A000034 (A324855 (n + 1)).toNat

end

end A049635.P4838334334288778286

namespace A049635

/-- `A049699(n)+A000034(A324855(n+1))` -/
def P4838334334288778286.Spec : Prop :=
  ∀ n, P4838334334288778286.a n = A049635 n

end A049635

/-!
# A049636: Congruent to 0 or 2 mod 3, but not equal to 0 or 3.

The programs for A049636, the canonical program `A049636.P15875505231310437759` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049636 has offset 0).

The definition of A049636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049636.P15875505231310437759

`record[5-gcd(3, n)+n]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049636

/-- `record[5-gcd(3, n)+n]` -/
def P15875505231310437759.Spec : Prop :=
  ∀ n, P15875505231310437759.a n = A049636 n

theorem P15875505231310437759.correct : P15875505231310437759.Spec := by
  intro n
  simp only [A049636]

end A049636

/-! ## A049636.P934936585588351477

`∑[ceil(ratio[or(1, n)])]+1`
-/

namespace A049636.P934936585588351477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049636.P934936585588351477

namespace A049636

/-- `∑[ceil(ratio[or(1, n)])]+1` -/
def P934936585588351477.Spec : Prop :=
  ∀ n, P934936585588351477.a n = A049636 n

end A049636

/-! ## A049636.P15788816671229080105

`a(n-2)+3` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A049636.P15788816671229080105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6] fun n a =>
  a (n - 2) + 3

end

end A049636.P15788816671229080105

namespace A049636

/-- `a(n-2)+3` -/
def P15788816671229080105.Spec : Prop :=
  ∀ n, (P15788816671229080105.a n : ℤ) = A049636 n

end A049636

/-! ## A049636.P9281916349835714828

`ceil(3/asin(2/(n+2)))`
-/

namespace A049636.P9281916349835714828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / Real.arcsin (2 / (n + 2 : ℚ) : ℝ)⌉

end

end A049636.P9281916349835714828

namespace A049636

/-- `ceil(3/asin(2/(n+2)))` -/
def P9281916349835714828.Spec : Prop :=
  ∀ n, P9281916349835714828.a n = A049636 n

end A049636

/-! ## A049636.P10311440422233280177

`∑[3-a(n-1)]` with `a(0)=2, a(1)=3, a(2)=1`
-/

namespace A049636.P10311440422233280177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049636.P10311440422233280177

namespace A049636

/-- `∑[3-a(n-1)]` -/
def P10311440422233280177.Spec : Prop :=
  ∀ n, P10311440422233280177.a n = A049636 n

end A049636

/-! ## A049636.P4853360315130191996

`record[lcm(3, n+3)/3+1]`
-/

namespace A049636.P4853360315130191996
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 3) : ℚ) / 3 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049636.P4853360315130191996

namespace A049636

/-- `record[lcm(3, n+3)/3+1]` -/
def P4853360315130191996.Spec : Prop :=
  ∀ n, P4853360315130191996.a n = (A049636 n : ℚ)

end A049636

/-! ## A049636.P12331744179667460900

`record[n-a(n-3)]` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A049636.P12331744179667460900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6] fun n f1 =>
  (n : ℤ) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049636.P12331744179667460900

namespace A049636

/-- `record[n-a(n-3)]` -/
def P12331744179667460900.Spec : Prop :=
  ∀ n, P12331744179667460900.a n = A049636 n

end A049636

/-! ## A049636.P8746047962825965995

`∑[∑[ogf((2+3x-x^2-x^3)/(1+x))]]`
-/

namespace A049636.P8746047962825965995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -1, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049636.P8746047962825965995

namespace A049636

/-- `∑[∑[ogf((2+3x-x^2-x^3)/(1+x))]]` -/
def P8746047962825965995.Spec : Prop :=
  ∀ n, P8746047962825965995.a n = A049636 n

end A049636

/-! ## A049636.P10800616476966767104

`ogf((2+3x-x^2-x^3)/(1-x-x^2+x^3))`
-/

namespace A049636.P10800616476966767104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -1, -1] [1, -1, -1, 1] n

end

end A049636.P10800616476966767104

namespace A049636

/-- `ogf((2+3x-x^2-x^3)/(1-x-x^2+x^3))` -/
def P10800616476966767104.Spec : Prop :=
  ∀ n, P10800616476966767104.a n = A049636 n

end A049636

/-! ## A049636.P2796240347657445604

`lt[3, n*(2*n+1)%3]`
-/

namespace A049636.P2796240347657445604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((2 * n + 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049636.P2796240347657445604

namespace A049636

/-- `lt[3, n*(2*n+1)%3]` -/
def P2796240347657445604.Spec : Prop :=
  ∀ n, (P2796240347657445604.a n : ℤ) = A049636 n

end A049636

/-! ## A049636.P2912880242359045944

`∑[floor(lcm(2, n+2)/(n+1))]`
-/

namespace A049636.P2912880242359045944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049636.P2912880242359045944

namespace A049636

/-- `∑[floor(lcm(2, n+2)/(n+1))]` -/
def P2912880242359045944.Spec : Prop :=
  ∀ n, P2912880242359045944.a n = A049636 n

end A049636

/-! ## A049636.P14046051672500942819

`∑[C(n, n²)+gcd(2, n+1)]`
-/

namespace A049636.P14046051672500942819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + Nat.gcd 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049636.P14046051672500942819

namespace A049636

/-- `∑[C(n, n²)+gcd(2, n+1)]` -/
def P14046051672500942819.Spec : Prop :=
  ∀ n, (P14046051672500942819.a n : ℤ) = A049636 n

end A049636

/-! ## A049636.P10230432174344322834

`3*n-(a(n-1)-5)` with `a(0)=2, a(1)=5`
-/

namespace A049636.P10230432174344322834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (3 * n : ℤ) - (a (n - 1) - 5)

end

end A049636.P10230432174344322834

namespace A049636

/-- `3*n-(a(n-1)-5)` -/
def P10230432174344322834.Spec : Prop :=
  ∀ n, P10230432174344322834.a n = A049636 n

end A049636

/-! ## A049636.P11217357310698838240

`round(or(1, n-1)/2)+n+3`
-/

namespace A049636.P11217357310698838240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 ((n : ℤ) - 1) : ℚ) / 2) + (n + 3 : ℤ)

end

end A049636.P11217357310698838240

namespace A049636

/-- `round(or(1, n-1)/2)+n+3` -/
def P11217357310698838240.Spec : Prop :=
  ∀ n, P11217357310698838240.a n = A049636 n

end A049636

/-! ## A049636.P2929756458364777724

`(record[xor(2, n+3)]+n+3)/2`
-/

namespace A049636.P2929756458364777724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 3) : ℚ) / 2

end

end A049636.P2929756458364777724

namespace A049636

/-- `(record[xor(2, n+3)]+n+3)/2` -/
def P2929756458364777724.Spec : Prop :=
  ∀ n, P2929756458364777724.a n = (A049636 n : ℚ)

end A049636

/-! ## A049636.P13538254726289809388

`∪[2*n+n+2, 3*(n+2)]`
-/

namespace A049636.P13538254726289809388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A049636.P13538254726289809388

namespace A049636

/-- `∪[2*n+n+2, 3*(n+2)]` -/
def P13538254726289809388.Spec : Prop :=
  ∀ n, (P13538254726289809388.a n : ℤ) = A049636 n

end A049636

/-! ## A049636.P15086900734473388571

`lt[2*n, (n-1)*dr(n²+n)]`
-/

namespace A049636.P15086900734473388571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.digitalRoot (n ^ 2 + n : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A049636.P15086900734473388571

namespace A049636

/-- `lt[2*n, (n-1)*dr(n²+n)]` -/
def P15086900734473388571.Spec : Prop :=
  ∀ n, (P15086900734473388571.a n : ℤ) = A049636 n

end A049636

/-! ## A049636.P3369104347996151500

`floor(n-(a(n-1)/3-4-n))` with `a(0)=2`
-/

namespace A049636.P3369104347996151500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(n : ℚ) - ((a (n - 1) : ℚ) / 3 - 4 - (n : ℚ))⌋

end

end A049636.P3369104347996151500

namespace A049636

/-- `floor(n-(a(n-1)/3-4-n))` -/
def P3369104347996151500.Spec : Prop :=
  ∀ n, P3369104347996151500.a n = A049636 n

end A049636

/-! ## A049636.P8430875120489924044

`n+2-floor(∑[2*n]/(1-2*n))`
-/

namespace A049636.P8430875120489924044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 - (2 * n : ℤ) : ℚ)⌋

end

end A049636.P8430875120489924044

namespace A049636

/-- `n+2-floor(∑[2*n]/(1-2*n))` -/
def P8430875120489924044.Spec : Prop :=
  ∀ n, P8430875120489924044.a n = A049636 n

end A049636

/-! ## A049636.P3729915402354700004

`∑[A166333(A166333(n))]`
-/

namespace A049636.P3729915402354700004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A166333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049636.P3729915402354700004

namespace A049636

/-- `∑[A166333(A166333(n))]` -/
def P3729915402354700004.Spec : Prop :=
  ∀ n, P3729915402354700004.a n = A049636 n

end A049636

/-!
# A049637: Congruent to 2, 3, 6, 8, 10 or 12 mod 13, but not equal to 3.

The programs for A049637, the canonical program `A049637.P13520611787667614773` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049637 has offset 0).

The definition of A049637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049637.P13520611787667614773

`Δ[round((4*n+3)²/12)]-ceil(abs((1-n)/2))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049637

/-- `Δ[round((4*n+3)²/12)]-ceil(abs((1-n)/2))` -/
def P13520611787667614773.Spec : Prop :=
  ∀ n, P13520611787667614773.a n = A049637 n

theorem P13520611787667614773.correct : P13520611787667614773.Spec := by
  intro n
  simp only [A049637]

end A049637

/-! ## A049637.P9289578071344187979

`(A049638(n)-ceil(n/2))%A030469(n+1)`
-/

namespace A049637.P9289578071344187979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049638 n - ⌈(n : ℚ) / 2⌉) (A030469 (n + 1))

end

end A049637.P9289578071344187979

namespace A049637

/-- `(A049638(n)-ceil(n/2))%A030469(n+1)` -/
def P9289578071344187979.Spec : Prop :=
  ∀ n, P9289578071344187979.a n = A049637 n

end A049637

/-! ## A049637.P6832507159444699383

`Δ[A035106(2*n+1)+A001399(n)]`
-/

namespace A049637.P6832507159444699383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (2 * n + 1) + A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049637.P6832507159444699383

namespace A049637

/-- `Δ[A035106(2*n+1)+A001399(n)]` -/
def P6832507159444699383.Spec : Prop :=
  ∀ n, P6832507159444699383.a n = A049637 n

end A049637

/-! ## A049637.P4780414204215462926

`A087156(A049636(n)+n-A002264(n))`
-/

namespace A049637.P4780414204215462926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A049636 n + ((n : ℤ) - A002264 n)).toNat

end

end A049637.P4780414204215462926

namespace A049637

/-- `A087156(A049636(n)+n-A002264(n))` -/
def P4780414204215462926.Spec : Prop :=
  ∀ n, P4780414204215462926.a n = A049637 n

end A049637

/-! ## A049637.P8593379110275702777

`A087156(A049636(n)+A002264(2*(n+1)))`
-/

namespace A049637.P8593379110275702777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A049636 n + A002264 (2 * (n + 1))).toNat

end

end A049637.P8593379110275702777

namespace A049637

/-- `A087156(A049636(n)+A002264(2*(n+1)))` -/
def P8593379110275702777.Spec : Prop :=
  ∀ n, P8593379110275702777.a n = A049637 n

end A049637

/-! ## A049637.P17418643408653509897

`A254667(A049638(n)-ceil(n/2))`
-/

namespace A049637.P17418643408653509897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A049638 n - ⌈(n : ℚ) / 2⌉).toNat

end

end A049637.P17418643408653509897

namespace A049637

/-- `A254667(A049638(n)-ceil(n/2))` -/
def P17418643408653509897.Spec : Prop :=
  ∀ n, P17418643408653509897.a n = A049637 n

end A049637

/-! ## A049637.P6440083051514472417

`A049627(∑[n+2]+n+7)`
-/

namespace A049637.P6440083051514472417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 (∑ j ∈ Finset.range (n + 1), f1 j + n + 7)

end

end A049637.P6440083051514472417

namespace A049637

/-- `A049627(∑[n+2]+n+7)` -/
def P6440083051514472417.Spec : Prop :=
  ∀ n, P6440083051514472417.a n = A049637 n

end A049637

/-!
# A049638: a(n) = T(n,4), array T as in A049627.

The programs for A049638, the canonical program `A049638.P13946218056775625831` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049638 has offset 0).

The definition of A049638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049638.P13946218056775625831

`Δ[round((4*n+3)²/12)+ceil(abs((1-n)/2))]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049638

/-- `Δ[round((4*n+3)²/12)+ceil(abs((1-n)/2))]` -/
def P13946218056775625831.Spec : Prop :=
  ∀ n, P13946218056775625831.a n = A049638 n

theorem P13946218056775625831.correct : P13946218056775625831.Spec := by
  intro n
  simp only [A049638]

end A049638

/-! ## A049638.P14030770165998049486

`ceil(A049637(n)+n/2)`
-/

namespace A049638.P14030770165998049486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049637 n : ℚ) + (n : ℚ) / 2⌉

end

end A049638.P14030770165998049486

namespace A049638

/-- `ceil(A049637(n)+n/2)` -/
def P14030770165998049486.Spec : Prop :=
  ∀ n, P14030770165998049486.a n = A049638 n

end A049638

/-! ## A049638.P7410154980194040039

`5*(n+1)-A049626(n)`
-/

namespace A049638.P7410154980194040039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A049626 n

end

end A049638.P7410154980194040039

namespace A049638

/-- `5*(n+1)-A049626(n)` -/
def P7410154980194040039.Spec : Prop :=
  ∀ n, P7410154980194040039.a n = A049638 n

end A049638

/-! ## A049638.P8052968391096872695

`A110654(n)+A049637(n)`
-/

namespace A049638.P8052968391096872695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A049637 n

end

end A049638.P8052968391096872695

namespace A049638

/-- `A110654(n)+A049637(n)` -/
def P8052968391096872695.Spec : Prop :=
  ∀ n, P8052968391096872695.a n = A049638 n

end A049638

/-! ## A049638.P7419544928346658362

`A049637(n)+abs(A001057(n))`
-/

namespace A049638.P7419544928346658362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049637 n + |A001057 n|

end

end A049638.P7419544928346658362

namespace A049638

/-- `A049637(n)+abs(A001057(n))` -/
def P7419544928346658362.Spec : Prop :=
  ∀ n, P7419544928346658362.a n = A049638 n

end A049638

/-! ## A049638.P10936283925488090764

`A049637(n)+∑[A000035(n)]`
-/

namespace A049638.P10936283925488090764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049637 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049638.P10936283925488090764

namespace A049638

/-- `A049637(n)+∑[A000035(n)]` -/
def P10936283925488090764.Spec : Prop :=
  ∀ n, P10936283925488090764.a n = A049638 n

end A049638

/-! ## A049638.P17579019935328606442

`A049637(n)+Δ[A002620(n)]`
-/

namespace A049638.P17579019935328606442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049637 n + (f1 (n + 1) - f1 n)

end

end A049638.P17579019935328606442

namespace A049638

/-- `A049637(n)+Δ[A002620(n)]` -/
def P17579019935328606442.Spec : Prop :=
  ∀ n, P17579019935328606442.a n = A049638 n

end A049638

/-! ## A049638.P34731759214922739

`A049637(n)+Δ[A033638(n)]`
-/

namespace A049638.P34731759214922739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049637 n + (f1 (n + 1) - f1 n)

end

end A049638.P34731759214922739

namespace A049638

/-- `A049637(n)+Δ[A033638(n)]` -/
def P34731759214922739.Spec : Prop :=
  ∀ n, P34731759214922739.a n = A049638 n

end A049638

/-! ## A049638.P14519304481471841523

`A049637(n)+n-A004526(n)`
-/

namespace A049638.P14519304481471841523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049637 n + ((n : ℤ) - A004526 n)

end

end A049638.P14519304481471841523

namespace A049638

/-- `A049637(n)+n-A004526(n)` -/
def P14519304481471841523.Spec : Prop :=
  ∀ n, P14519304481471841523.a n = A049638 n

end A049638

/-! ## A049638.P4436495076818196824

`A047537(n+1)+A020639(A008486(n))`
-/

namespace A049638.P4436495076818196824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047537 (n + 1) + A020639 (A008486 n).toNat

end

end A049638.P4436495076818196824

namespace A049638

/-- `A047537(n+1)+A020639(A008486(n))` -/
def P4436495076818196824.Spec : Prop :=
  ∀ n, P4436495076818196824.a n = A049638 n

end A049638

/-! ## A049638.P5711568146693536195

`A049637(n)+A004526(n+1)`
-/

namespace A049638.P5711568146693536195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049637 n + A004526 (n + 1)

end

end A049638.P5711568146693536195

namespace A049638

/-- `A049637(n)+A004526(n+1)` -/
def P5711568146693536195.Spec : Prop :=
  ∀ n, P5711568146693536195.a n = A049638 n

end A049638

/-! ## A049638.P12092458898476258195

`A004773(A103517(n))+A000034(n)`
-/

namespace A049638.P12092458898476258195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A103517 n).toNat + A000034 n

end

end A049638.P12092458898476258195

namespace A049638

/-- `A004773(A103517(n))+A000034(n)` -/
def P12092458898476258195.Spec : Prop :=
  ∀ n, P12092458898476258195.a n = A049638 n

end A049638

/-! ## A049638.P7179918624504128879

`A008620(A116966(Δ[A273405(n)]))`
-/

namespace A049638.P7179918624504128879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A116966 (f1 (n + 1) - f1 n).toNat).toNat

end

end A049638.P7179918624504128879

namespace A049638

/-- `A008620(A116966(Δ[A273405(n)]))` -/
def P7179918624504128879.Spec : Prop :=
  ∀ n, P7179918624504128879.a n = A049638 n

end A049638

/-! ## A049638.P6944590063472606471

`A008620(A273407(n)+A000034(n))`
-/

namespace A049638.P6944590063472606471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A273407 n + A000034 n).toNat

end

end A049638.P6944590063472606471

namespace A049638

/-- `A008620(A273407(n)+A000034(n))` -/
def P6944590063472606471.Spec : Prop :=
  ∀ n, P6944590063472606471.a n = A049638 n

end A049638

/-! ## A049638.P14939589106059464576

`A049637(n)+log2(A060546(n))`
-/

namespace A049638.P14939589106059464576
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049637 n : ℝ) + Real.logb 2 (A060546 n : ℝ)

end

end A049638.P14939589106059464576

namespace A049638

/-- `A049637(n)+log2(A060546(n))` -/
def P14939589106059464576.Spec : Prop :=
  ∀ n, P14939589106059464576.a n = (A049638 n : ℝ)

end A049638

/-!
# A049639: Array T read by diagonals; T(i,j) = number of lines passing through (i,j) and at least two other lattice points (h,k) satisfying 0<=h<=i, 0<=k<=j.

The programs for A049639, there is no canonical definition to state claims against.
-/

/-! ## A049639.P14039225730906715476

`val(A294874(A036561(n)), 2)`
-/

namespace A049639.P14039225730906715476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294874 (A036561 n).toNat).toNat 2

end

end A049639.P14039225730906715476

/-! ## A049639.P17227049006655120711

`A051903(A294874(A036561(n)))`
-/

namespace A049639.P17227049006655120711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A294874 (A036561 n).toNat).toNat

end

end A049639.P17227049006655120711

/-! ## A049639.P8449854439449563581

`val(A294874(A175840(n)), 2)`
-/

namespace A049639.P8449854439449563581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294874 (A175840 n).toNat).toNat 2

end

end A049639.P8449854439449563581

/-! ## A049639.P16383717903836639487

`A007814(A230980(A263799(n+1))!)`
-/

namespace A049639.P16383717903836639487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Nat.factorial (A230980 (A263799 (n + 1)).toNat).toNat)

end

end A049639.P16383717903836639487

/-! ## A049639.P4303230488739531220

`A000032(A119963(n))%A204714(n+1)`
-/

namespace A049639.P4303230488739531220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (A119963 n).toNat) (A204714 (n + 1))

end

end A049639.P4303230488739531220

/-!
# A049640: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049639.

The programs for A049640, the canonical program `A049640.P11900036197294698839` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049640 has offset 0).

The definition of A049640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049640.P7097185173852232418

`∑[A049643(floor(n/2))]`
-/

namespace A049640.P7097185173852232418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P7097185173852232418

namespace A049640

/-- `∑[A049643(floor(n/2))]` -/
def P7097185173852232418.Spec : Prop :=
  ∀ n, P7097185173852232418.a n = A049640 n

end A049640

/-! ## A049640.P11900036197294698839

`∑[ceil(A049644(n)/2)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049640

/-- `∑[ceil(A049644(n)/2)]` -/
def P11900036197294698839.Spec : Prop :=
  ∀ n, P11900036197294698839.a n = A049640 n

theorem P11900036197294698839.correct : P11900036197294698839.Spec := by
  intro n
  simp only [A049640]

end A049640

/-! ## A049640.P15881801213482198489

`∑[A049641(n-n%2)]`
-/

namespace A049640.P15881801213482198489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 (n - n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P15881801213482198489

namespace A049640

/-- `∑[A049641(n-n%2)]` -/
def P15881801213482198489.Spec : Prop :=
  ∀ n, P15881801213482198489.a n = A049640 n

end A049640

/-! ## A049640.P12044338027118511998

`∑[A049643(ceil(abs((1-n)/2)))]-2`
-/

namespace A049640.P12044338027118511998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A049640.P12044338027118511998

namespace A049640

/-- `∑[A049643(ceil(abs((1-n)/2)))]-2` -/
def P12044338027118511998.Spec : Prop :=
  ∀ n, P12044338027118511998.a n = A049640 n

end A049640

/-! ## A049640.P5624126368241429169

`∑[A001057(A049644(n))]`
-/

namespace A049640.P5624126368241429169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A049644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P5624126368241429169

namespace A049640

/-- `∑[A001057(A049644(n))]` -/
def P5624126368241429169.Spec : Prop :=
  ∀ n, P5624126368241429169.a n = A049640 n

end A049640

/-! ## A049640.P18034528691379425688

`∑[A049641(A052928(n))]`
-/

namespace A049640.P18034528691379425688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 (A052928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P18034528691379425688

namespace A049640

/-- `∑[A049641(A052928(n))]` -/
def P18034528691379425688.Spec : Prop :=
  ∀ n, P18034528691379425688.a n = A049640 n

end A049640

/-! ## A049640.P427121259149789201

`∑[A004526(A049644(n)+1)]`
-/

namespace A049640.P427121259149789201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049644 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P427121259149789201

namespace A049640

/-- `∑[A004526(A049644(n)+1)]` -/
def P427121259149789201.Spec : Prop :=
  ∀ n, P427121259149789201.a n = A049640 n

end A049640

/-! ## A049640.P6896855320845964454

`∑[A225531(A004526(n))-1]`
-/

namespace A049640.P6896855320845964454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 (A004526 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P6896855320845964454

namespace A049640

/-- `∑[A225531(A004526(n))-1]` -/
def P6896855320845964454.Spec : Prop :=
  ∀ n, P6896855320845964454.a n = A049640 n

end A049640

/-! ## A049640.P3858678788277131153

`∑[A049641(A004524(2*n))]`
-/

namespace A049640.P3858678788277131153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 (A004524 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P3858678788277131153

namespace A049640

/-- `∑[A049641(A004524(2*n))]` -/
def P3858678788277131153.Spec : Prop :=
  ∀ n, P3858678788277131153.a n = A049640 n

end A049640

/-! ## A049640.P2024663504263075217

`∑[A028242(xor(1, A049644(n)))]`
-/

namespace A049640.P2024663504263075217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A049644 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P2024663504263075217

namespace A049640

/-- `∑[A028242(xor(1, A049644(n)))]` -/
def P2024663504263075217.Spec : Prop :=
  ∀ n, P2024663504263075217.a n = A049640 n

end A049640

/-! ## A049640.P16144875048167380817

`∑[A049641(A042948(n)-n)]`
-/

namespace A049640.P16144875048167380817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 (A042948 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P16144875048167380817

namespace A049640

/-- `∑[A049641(A042948(n)-n)]` -/
def P16144875048167380817.Spec : Prop :=
  ∀ n, P16144875048167380817.a n = A049640 n

end A049640

/-! ## A049640.P9570216630339255756

`∑[2*A049641(n)]-A049641(n)`
-/

namespace A049640.P9570216630339255756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049641 n

end

end A049640.P9570216630339255756

namespace A049640

/-- `∑[2*A049641(n)]-A049641(n)` -/
def P9570216630339255756.Spec : Prop :=
  ∀ n, P9570216630339255756.a n = A049640 n

end A049640

/-! ## A049640.P13711547087546199432

`∑[A005728(floor(n/2))%A030533(n)]`
-/

namespace A049640.P13711547087546199432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005728 ⌊(n : ℚ) / 2⌋.toNat) (A030533 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P13711547087546199432

namespace A049640

/-- `∑[A005728(floor(n/2))%A030533(n)]` -/
def P13711547087546199432.Spec : Prop :=
  ∀ n, P13711547087546199432.a n = A049640 n

end A049640

/-! ## A049640.P13379528562413535727

`∑[A049643(A008619(n)-1)%(n+1)²]`
-/

namespace A049640.P13379528562413535727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049643 (A008619 n - 1).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P13379528562413535727

namespace A049640

/-- `∑[A049643(A008619(n)-1)%(n+1)²]` -/
def P13379528562413535727.Spec : Prop :=
  ∀ n, P13379528562413535727.a n = A049640 n

end A049640

/-! ## A049640.P17414988467164509360

`A000007(n+1)+∑[A049643(A004526(n))]`
-/

namespace A049640.P17414988467164509360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049640.P17414988467164509360

namespace A049640

/-- `A000007(n+1)+∑[A049643(A004526(n))]` -/
def P17414988467164509360.Spec : Prop :=
  ∀ n, P17414988467164509360.a n = A049640 n

end A049640

/-! ## A049640.P8878161755461972066

`∑[A049643(A008619(n)-1)]%A017439(n)`
-/

namespace A049640.P8878161755461972066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (A008619 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A017439 n)

end

end A049640.P8878161755461972066

namespace A049640

/-- `∑[A049643(A008619(n)-1)]%A017439(n)` -/
def P8878161755461972066.Spec : Prop :=
  ∀ n, P8878161755461972066.a n = A049640 n

end A049640

/-! ## A049640.P15729463215781548286

`∑[A049643(A004526(n))]%A221647(n+2)`
-/

namespace A049640.P15729463215781548286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A221647 (n + 2))

end

end A049640.P15729463215781548286

namespace A049640

/-- `∑[A049643(A004526(n))]%A221647(n+2)` -/
def P15729463215781548286.Spec : Prop :=
  ∀ n, P15729463215781548286.a n = A049640 n

end A049640

/-!
# A049641: a(n) = Sum_{i=0..n} ((-1)^i)*T(i,n-i), array T as in A049639.

The programs for A049641, the canonical program `A049641.P593643033419943837` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049641 has offset 0).

The definition of A049641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049641.P11000685119884081597

`A049643(n-gcd(n, ∑[n]))`
-/

namespace A049641.P11000685119884081597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A049641.P11000685119884081597

namespace A049641

/-- `A049643(n-gcd(n, ∑[n]))` -/
def P11000685119884081597.Spec : Prop :=
  ∀ n, P11000685119884081597.a n = A049641 n

end A049641

/-! ## A049641.P2706296111335140275

`A049643(n-lcm(2, n)/2)`
-/

namespace A049641.P2706296111335140275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A049641.P2706296111335140275

namespace A049641

/-- `A049643(n-lcm(2, n)/2)` -/
def P2706296111335140275.Spec : Prop :=
  ∀ n, P2706296111335140275.a n = A049641 n

end A049641

/-! ## A049641.P4450336885685594233

`A049643(n%or(1, n)/2)`
-/

namespace A049641.P4450336885685594233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (SequenceMachineLib.roundAway (((n % Nat.lor 1 n : ℕ) : ℚ) / 2)).toNat

end

end A049641.P4450336885685594233

namespace A049641

/-- `A049643(n%or(1, n)/2)` -/
def P4450336885685594233.Spec : Prop :=
  ∀ n, P4450336885685594233.a n = A049641 n

end A049641

/-! ## A049641.P6156110211216357323

`A049643(floor(n^(-1)^n/2))`
-/

namespace A049641.P6156110211216357323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 ⌊(n : ℚ) ^ ((-1) ^ n : ℤ) / 2⌋.toNat

end

end A049641.P6156110211216357323

namespace A049641

/-- `A049643(floor(n^(-1)^n/2))` -/
def P6156110211216357323.Spec : Prop :=
  ∀ n, P6156110211216357323.a n = A049641 n

end A049641

/-! ## A049641.P5624956327526485572

`ceil(A049644(n)/2)*char[2*n]`
-/

namespace A049641.P5624956327526485572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049644 n : ℚ) / 2⌉ * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049641.P5624956327526485572

namespace A049641

/-- `ceil(A049644(n)/2)*char[2*n]` -/
def P5624956327526485572.Spec : Prop :=
  ∀ n, P5624956327526485572.a n = A049641 n

end A049641

/-! ## A049641.P4634587570183256867

`and(1, 1-n)%(n+1)*A005728(floor(n/2))`
-/

namespace A049641.P4634587570183256867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 1 (1 - (n : ℤ))) (n + 1 : ℤ) * A005728 ⌊(n : ℚ) / 2⌋.toNat

end

end A049641.P4634587570183256867

namespace A049641

/-- `and(1, 1-n)%(n+1)*A005728(floor(n/2))` -/
def P4634587570183256867.Spec : Prop :=
  ∀ n, P4634587570183256867.a n = A049641 n

end A049641

/-! ## A049641.P593643033419943837

`Δ[A049688(n%A008619(n))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049641

/-- `Δ[A049688(n%A008619(n))]` -/
def P593643033419943837.Spec : Prop :=
  ∀ n, P593643033419943837.a n = A049641 n

theorem P593643033419943837.correct : P593643033419943837.Spec := by
  intro n
  simp only [A049641]

end A049641

/-! ## A049641.P7823701308488119109

`(A040001(n)-1)*A005728(floor(n/2))`
-/

namespace A049641.P7823701308488119109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040001 n - 1) * A005728 ⌊(n : ℚ) / 2⌋.toNat

end

end A049641.P7823701308488119109

namespace A049641

/-- `(A040001(n)-1)*A005728(floor(n/2))` -/
def P7823701308488119109.Spec : Prop :=
  ∀ n, P7823701308488119109.a n = A049641 n

end A049641

/-! ## A049641.P11812227905254372965

`char[2*(n+1)]*A005728(A030451(n))`
-/

namespace A049641.P11812227905254372965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A005728 (A030451 n).toNat

end

end A049641.P11812227905254372965

namespace A049641

/-- `char[2*(n+1)]*A005728(A030451(n))` -/
def P11812227905254372965.Spec : Prop :=
  ∀ n, P11812227905254372965.a n = A049641 n

end A049641

/-! ## A049641.P14261834906365636997

`xor(a(n-1), A049643(A008619(n)-1))` with `a(0)=0`
-/

namespace A049641.P14261834906365636997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor (a (n - 1)) (A049643 (A008619 n - 1).toNat)

end

end A049641.P14261834906365636997

namespace A049641

/-- `xor(a(n-1), A049643(A008619(n)-1))` -/
def P14261834906365636997.Spec : Prop :=
  ∀ n, P14261834906365636997.a n = A049641 n

end A049641

/-! ## A049641.P13523902535486282782

`Δ[A049640(n)]*char[2*n]`
-/

namespace A049641.P13523902535486282782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049640 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049641.P13523902535486282782

namespace A049641

/-- `Δ[A049640(n)]*char[2*n]` -/
def P13523902535486282782.Spec : Prop :=
  ∀ n, P13523902535486282782.a n = A049641 n

end A049641

/-!
# A049642: Numbers k such that the number of divisors of k does not divide the sum of divisors of k.

The programs for A049642, the canonical program `A049642.P13855088796741878616` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049642 has offset 1).

The definition of A049642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3690 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049642.P13855088796741878616

`eq[0, A245656(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049642

/-- `eq[0, A245656(n+1)]+1` -/
def P13855088796741878616.Spec : Prop :=
  ∀ n, (P13855088796741878616.a n : ℤ) = A049642 (n + 1)

theorem P13855088796741878616.correct : P13855088796741878616.Spec := by
  intro n
  simp only [A049642, Nat.add_sub_cancel]

end A049642

/-! ## A049642.P4682075440751630332

`lt[1, A176801(n+1)]+1`
-/

namespace A049642.P4682075440751630332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049642.P4682075440751630332

namespace A049642

/-- `lt[1, A176801(n+1)]+1` -/
def P4682075440751630332.Spec : Prop :=
  ∀ n, (P4682075440751630332.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P17871719296654875597

`comp[A003601(n+1)-1]+1`
-/

namespace A049642.P17871719296654875597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A049642.P17871719296654875597

namespace A049642

/-- `comp[A003601(n+1)-1]+1` -/
def P17871719296654875597.Spec : Prop :=
  ∀ n, (P17871719296654875597.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P7355838725772770718

`eq[0, A286628(n+1)]+1`
-/

namespace A049642.P7355838725772770718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049642.P7355838725772770718

namespace A049642

/-- `eq[0, A286628(n+1)]+1` -/
def P7355838725772770718.Spec : Prop :=
  ∀ n, (P7355838725772770718.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P14544080577035411866

`lt[1, A057021(n+1)]+1`
-/

namespace A049642.P14544080577035411866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049642.P14544080577035411866

namespace A049642

/-- `lt[1, A057021(n+1)]+1` -/
def P14544080577035411866.Spec : Prop :=
  ∀ n, (P14544080577035411866.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P2765421498668976478

`eq[2, sqrt(a(A286628(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A049642.P2765421498668976478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  Real.sqrt (f2 (A286628 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A049642.P2765421498668976478

namespace A049642

/-- `eq[2, sqrt(a(A286628(n)))]` -/
def P2765421498668976478.Spec : Prop :=
  ∀ n, (P2765421498668976478.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P3371506075854759654

`eq[2, A000010(a(A286628(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A049642.P3371506075854759654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000010 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049642.P3371506075854759654

namespace A049642

/-- `eq[2, A000010(a(A286628(n)))]` -/
def P3371506075854759654.Spec : Prop :=
  ∀ n, (P3371506075854759654.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P4247357646586330058

`eq[1, A057427(A054025(n+1))]+1`
-/

namespace A049642.P4247357646586330058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054025 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049642.P4247357646586330058

namespace A049642

/-- `eq[1, A057427(A054025(n+1))]+1` -/
def P4247357646586330058.Spec : Prop :=
  ∀ n, (P4247357646586330058.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P363109664857247889

`eq[1, A070750(A054025(n+1)+1)²]+1`
-/

namespace A049642.P363109664857247889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (A054025 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049642.P363109664857247889

namespace A049642

/-- `eq[1, A070750(A054025(n+1)+1)²]+1` -/
def P363109664857247889.Spec : Prop :=
  ∀ n, (P363109664857247889.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P11601589076302313711

`eq[0, A245656(A008619(A004273(n)))]`
-/

namespace A049642.P11601589076302313711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049642.P11601589076302313711

namespace A049642

/-- `eq[0, A245656(A008619(A004273(n)))]` -/
def P11601589076302313711.Spec : Prop :=
  ∀ n, (P11601589076302313711.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P2873854123793712838

`eq[0, A245656(A065033(A005843(n)))]`
-/

namespace A049642.P2873854123793712838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (A065033 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049642.P2873854123793712838

namespace A049642

/-- `eq[0, A245656(A065033(A005843(n)))]` -/
def P2873854123793712838.Spec : Prop :=
  ∀ n, (P2873854123793712838.a n : ℤ) = A049642 (n + 1)

end A049642

/-! ## A049642.P6221306090459495130

`comp[n%2*A003601(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A049642.P6221306090459495130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A003601 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A049642.P6221306090459495130

namespace A049642

/-- `comp[n%2*A003601(floor(n/(xor(n, n+1)+1))+1)]` -/
def P6221306090459495130.Spec : Prop :=
  ∀ n, (P6221306090459495130.a n : ℤ) = A049642 (n + 1)

end A049642

/-!
# A049643: Number of fractions in Farey series of order n.

The programs for A049643, the canonical program `A049643.P15143516310095013308` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049643 has offset 0).

The definition of A049643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049643.P13399819932842320488

`a(n-1)+A000010(n)` with `a(0)=0, a(1)=2`
-/

namespace A049643.P13399819932842320488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + A000010 n

end

end A049643.P13399819932842320488

namespace A049643

/-- `a(n-1)+A000010(n)` -/
def P13399819932842320488.Spec : Prop :=
  ∀ n, P13399819932842320488.a n = A049643 n

end A049643

/-! ## A049643.P15143516310095013308

`A049641(2*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A049643

/-- `A049641(2*n)` -/
def P15143516310095013308.Spec : Prop :=
  ∀ n, P15143516310095013308.a n = A049643 n

theorem P15143516310095013308.correct : P15143516310095013308.Spec := by
  intro n
  simp only [A049643]

end A049643

/-! ## A049643.P7092241003727630931

`∑[A384710(n)]`
-/

namespace A049643.P7092241003727630931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049643.P7092241003727630931

namespace A049643

/-- `∑[A384710(n)]` -/
def P7092241003727630931.Spec : Prop :=
  ∀ n, P7092241003727630931.a n = A049643 n

end A049643

/-! ## A049643.P13485791122774198584

`A005728(n)%(n+1)²`
-/

namespace A049643.P13485791122774198584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005728 n) ((n + 1) ^ 2 : ℤ)

end

end A049643.P13485791122774198584

namespace A049643

/-- `A005728(n)%(n+1)²` -/
def P13485791122774198584.Spec : Prop :=
  ∀ n, P13485791122774198584.a n = A049643 n

end A049643

/-! ## A049643.P12040778150909567599

`∑[n+1-A062830(n)]`
-/

namespace A049643.P12040778150909567599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A062830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049643.P12040778150909567599

namespace A049643

/-- `∑[n+1-A062830(n)]` -/
def P12040778150909567599.Spec : Prop :=
  ∀ n, P12040778150909567599.a n = A049643 n

end A049643

/-! ## A049643.P12855030036043659001

`ceil(sqrt(A002088(n)²+n))`
-/

namespace A049643.P12855030036043659001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002088 n ^ 2 + (n : ℤ) : ℝ)⌉

end

end A049643.P12855030036043659001

namespace A049643

/-- `ceil(sqrt(A002088(n)²+n))` -/
def P12855030036043659001.Spec : Prop :=
  ∀ n, P12855030036043659001.a n = A049643 n

end A049643

/-! ## A049643.P8478380916565183717

`∑[A000010(C(2, n²)+n)]-1`
-/

namespace A049643.P8478380916565183717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n ^ 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049643.P8478380916565183717

namespace A049643

/-- `∑[A000010(C(2, n²)+n)]-1` -/
def P8478380916565183717.Spec : Prop :=
  ∀ n, P8478380916565183717.a n = A049643 n

end A049643

/-! ## A049643.P2079614575009611740

`a(n-1)+A109606(n)+1` with `a(0)=0, a(1)=2`
-/

namespace A049643.P2079614575009611740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (A109606 n + 1)

end

end A049643.P2079614575009611740

namespace A049643

/-- `a(n-1)+A109606(n)+1` -/
def P2079614575009611740.Spec : Prop :=
  ∀ n, P2079614575009611740.a n = A049643 n

end A049643

/-! ## A049643.P5623600977728574595

`∑[A000010(n-and(1, a(n-2)))]` with `a(0)=0, a(1)=2`
-/

namespace A049643.P5623600977728574595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000010 ((n : ℤ) - Int.land 1 (f1 (n - 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049643.P5623600977728574595

namespace A049643

/-- `∑[A000010(n-and(1, a(n-2)))]` -/
def P5623600977728574595.Spec : Prop :=
  ∀ n, P5623600977728574595.a n = A049643 n

end A049643

/-! ## A049643.P5320800576025297527

`∑[A000010(gcd(n, n*a(n-2)))]` with `a(0)=0, a(1)=2`
-/

namespace A049643.P5320800576025297527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000010 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049643.P5320800576025297527

namespace A049643

/-- `∑[A000010(gcd(n, n*a(n-2)))]` -/
def P5320800576025297527.Spec : Prop :=
  ∀ n, P5320800576025297527.a n = A049643 n

end A049643

/-! ## A049643.P5798462261879710442

`A057427(n)+A002088(n)`
-/

namespace A049643.P5798462261879710442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002088 n

end

end A049643.P5798462261879710442

namespace A049643

/-- `A057427(n)+A002088(n)` -/
def P5798462261879710442.Spec : Prop :=
  ∀ n, P5798462261879710442.a n = A049643 n

end A049643

/-! ## A049643.P5208267449083500264

`A005728(n)-A000007(n)`
-/

namespace A049643.P5208267449083500264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - A000007 n

end

end A049643.P5208267449083500264

namespace A049643

/-- `A005728(n)-A000007(n)` -/
def P5208267449083500264.Spec : Prop :=
  ∀ n, P5208267449083500264.a n = A049643 n

end A049643

/-! ## A049643.P3737113205621722409

`A002088(n)-A057428(n)`
-/

namespace A049643.P3737113205621722409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n - A057428 n

end

end A049643.P3737113205621722409

namespace A049643

/-- `A002088(n)-A057428(n)` -/
def P3737113205621722409.Spec : Prop :=
  ∀ n, P3737113205621722409.a n = A049643 n

end A049643

/-! ## A049643.P6839907483742394022

`A005728(n)*A057427(n)`
-/

namespace A049643.P6839907483742394022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n * A057427 n

end

end A049643.P6839907483742394022

namespace A049643

/-- `A005728(n)*A057427(n)` -/
def P6839907483742394022.Spec : Prop :=
  ∀ n, P6839907483742394022.a n = A049643 n

end A049643

/-! ## A049643.P16578437817895965773

`and(A005728(n), A057428(n))`
-/

namespace A049643.P16578437817895965773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005728 n) (A057428 n)

end

end A049643.P16578437817895965773

namespace A049643

/-- `and(A005728(n), A057428(n))` -/
def P16578437817895965773.Spec : Prop :=
  ∀ n, P16578437817895965773.a n = A049643 n

end A049643

/-! ## A049643.P873317118359541937

`A002088(n)+A062157(n)²`
-/

namespace A049643.P873317118359541937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + A062157 n ^ 2

end

end A049643.P873317118359541937

namespace A049643

/-- `A002088(n)+A062157(n)²` -/
def P873317118359541937.Spec : Prop :=
  ∀ n, P873317118359541937.a n = A049643 n

end A049643

/-! ## A049643.P15557506139814413631

`A002088(n)+1-A000007(n)`
-/

namespace A049643.P15557506139814413631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (1 - A000007 n)

end

end A049643.P15557506139814413631

namespace A049643

/-- `A002088(n)+1-A000007(n)` -/
def P15557506139814413631.Spec : Prop :=
  ∀ n, P15557506139814413631.a n = A049643 n

end A049643

/-! ## A049643.P6801082767515285869

`A019428(2*n)+A002088(n)`
-/

namespace A049643.P6801082767515285869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n) + A002088 n

end

end A049643.P6801082767515285869

namespace A049643

/-- `A019428(2*n)+A002088(n)` -/
def P6801082767515285869.Spec : Prop :=
  ∀ n, P6801082767515285869.a n = A049643 n

end A049643

/-!
# A049644: T(n,n), array T given by A049639.

The programs for A049644, the canonical program `A049644.P1684655514801948572` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049644 has offset 0).

The definition of A049644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049644.P3676340323264331798

`A049646(and(n, -2))`
-/

namespace A049644.P3676340323264331798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (Int.land (n : ℤ) (-2)).toNat

end

end A049644.P3676340323264331798

namespace A049644

/-- `A049646(and(n, -2))` -/
def P3676340323264331798.Spec : Prop :=
  ∀ n, P3676340323264331798.a n = A049644 n

end A049644

/-! ## A049644.P228327210966200340

`A049691(floor(n/2))`
-/

namespace A049644.P228327210966200340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 ⌊(n : ℚ) / 2⌋.toNat

end

end A049644.P228327210966200340

namespace A049644

/-- `A049691(floor(n/2))` -/
def P228327210966200340.Spec : Prop :=
  ∀ n, P228327210966200340.a n = A049644 n

end A049644

/-! ## A049644.P6524605914673392377

`A049646(or(1, n)-1)`
-/

namespace A049644.P6524605914673392377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (Nat.lor 1 n - 1)

end

end A049644.P6524605914673392377

namespace A049644

/-- `A049646(or(1, n)-1)` -/
def P6524605914673392377.Spec : Prop :=
  ∀ n, P6524605914673392377.a n = A049644 n

end A049644

/-! ## A049644.P4796306317349193100

`A049646(n-n%2)`
-/

namespace A049644.P4796306317349193100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (n - n % 2)

end

end A049644.P4796306317349193100

namespace A049644

/-- `A049646(n-n%2)` -/
def P4796306317349193100.Spec : Prop :=
  ∀ n, P4796306317349193100.a n = A049644 n

end A049644

/-! ## A049644.P11750735078650068539

`A049646(n-and(1, n))`
-/

namespace A049644.P11750735078650068539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (n - Nat.land 1 n)

end

end A049644.P11750735078650068539

namespace A049644

/-- `A049646(n-and(1, n))` -/
def P11750735078650068539.Spec : Prop :=
  ∀ n, P11750735078650068539.a n = A049644 n

end A049644

/-! ## A049644.P4213081043322087365

`A049646(xor(n, and(1, n)))`
-/

namespace A049644.P4213081043322087365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (Nat.xor n (Nat.land 1 n))

end

end A049644.P4213081043322087365

namespace A049644

/-- `A049646(xor(n, and(1, n)))` -/
def P4213081043322087365.Spec : Prop :=
  ∀ n, P4213081043322087365.a n = A049644 n

end A049644

/-! ## A049644.P4277698072534265274

`A049691(ceil(abs((1-n)/2)))%(∑[n+2]-1)`
-/

namespace A049644.P4277698072534265274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049691 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A049644.P4277698072534265274

namespace A049644

/-- `A049691(ceil(abs((1-n)/2)))%(∑[n+2]-1)` -/
def P4277698072534265274.Spec : Prop :=
  ∀ n, P4277698072534265274.a n = A049644 n

end A049644

/-! ## A049644.P7896138653526877774

`A049646(A052928(n))`
-/

namespace A049644.P7896138653526877774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (A052928 n).toNat

end

end A049644.P7896138653526877774

namespace A049644

/-- `A049646(A052928(n))` -/
def P7896138653526877774.Spec : Prop :=
  ∀ n, P7896138653526877774.a n = A049644 n

end A049644

/-! ## A049644.P1684655514801948572

`A049632(A004526(n))-1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049644

/-- `A049632(A004526(n))-1` -/
def P1684655514801948572.Spec : Prop :=
  ∀ n, P1684655514801948572.a n = A049644 n

theorem P1684655514801948572.correct : P1684655514801948572.Spec := by
  intro n
  simp only [A049644]

end A049644

/-! ## A049644.P8881699446257165214

`A049646(A109613(n)-1)`
-/

namespace A049644.P8881699446257165214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (A109613 n - 1).toNat

end

end A049644.P8881699446257165214

namespace A049644

/-- `A049646(A109613(n)-1)` -/
def P8881699446257165214.Spec : Prop :=
  ∀ n, P8881699446257165214.a n = A049644 n

end A049644

/-! ## A049644.P14692897208830488959

`A049646(2*A004526(n))`
-/

namespace A049644.P14692897208830488959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (2 * A004526 n).toNat

end

end A049644.P14692897208830488959

namespace A049644

/-- `A049646(2*A004526(n))` -/
def P14692897208830488959.Spec : Prop :=
  ∀ n, P14692897208830488959.a n = A049644 n

end A049644

/-! ## A049644.P17652960320194144856

`A049646(n-A000035(n))`
-/

namespace A049644.P17652960320194144856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 ((n : ℤ) - A000035 n).toNat

end

end A049644.P17652960320194144856

namespace A049644

/-- `A049646(n-A000035(n))` -/
def P17652960320194144856.Spec : Prop :=
  ∀ n, P17652960320194144856.a n = A049644 n

end A049644

/-! ## A049644.P17773060460090236046

`A049632(A008619(n)-1)-1`
-/

namespace A049644.P17773060460090236046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 (A008619 n - 1).toNat - 1

end

end A049644.P17773060460090236046

namespace A049644

/-- `A049632(A008619(n)-1)-1` -/
def P17773060460090236046.Spec : Prop :=
  ∀ n, P17773060460090236046.a n = A049644 n

theorem P17773060460090236046.correct : P17773060460090236046.Spec := by
  intro n
  simp only [A049644, Nat.add_sub_cancel, A049644.P17773060460090236046.a, A049644.P1684655514801948572.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, A049632, A049632.P1310813934760745666.a, A206350, A206350.P761280235204802101.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049644

/-! ## A049644.P12816421905618691088

`A049632(A002265(2*n))-1`
-/

namespace A049644.P12816421905618691088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 (A002265 (2 * n)).toNat - 1

end

end A049644.P12816421905618691088

namespace A049644

/-- `A049632(A002265(2*n))-1` -/
def P12816421905618691088.Spec : Prop :=
  ∀ n, P12816421905618691088.a n = A049644 n

theorem P12816421905618691088.correct : P12816421905618691088.Spec := by
  intro n
  simp only [A049644, Nat.add_sub_cancel, A049644.P12816421905618691088.a, A049644.P1684655514801948572.a, A002265, A002265.P2157561802369677908.a, A004526, A004526.P10084182425416171735.a, A049632, A049632.P1310813934760745666.a, A206350, A206350.P761280235204802101.a, A140434, A140434.P96571140770797263.a, A004277, A004277.P16255821370285667660.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049644

/-!
# A049645: Numbers k such that the square of the number of divisors of k divides the sum of the divisors of k.

The programs for A049645, the canonical program `A049645.P576075873221011945` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049645 has offset 1).

The definition of A049645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049645.P576075873221011945

`lt[A000203(n+1)%A000005(n+1)², 1]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049645

/-- `lt[A000203(n+1)%A000005(n+1)², 1]+1` -/
def P576075873221011945.Spec : Prop :=
  ∀ n, (P576075873221011945.a n : ℤ) = A049645 (n + 1)

theorem P576075873221011945.correct : P576075873221011945.Spec := by
  intro n
  simp only [A049645, Nat.add_sub_cancel]

end A049645

/-! ## A049645.P2706200337366476769

`eq[char[A049692(n+1)], A000007(n)]`
-/

namespace A049645.P2706200337366476769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049692 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A049645.P2706200337366476769

namespace A049645

/-- `eq[char[A049692(n+1)], A000007(n)]` -/
def P2706200337366476769.Spec : Prop :=
  ∀ n, (P2706200337366476769.a n : ℤ) = A049645 (n + 1)

end A049645

/-! ## A049645.P11072365501312430002

`eq[char[A049692(n+1)], A000038(n)]`
-/

namespace A049645.P11072365501312430002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049692 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A049645.P11072365501312430002

namespace A049645

/-- `eq[char[A049692(n+1)], A000038(n)]` -/
def P11072365501312430002.Spec : Prop :=
  ∀ n, (P11072365501312430002.a n : ℤ) = A049645 (n + 1)

end A049645

/-! ## A049645.P2708277653539970124

`lt[A060576(n+1), A286628(n+1)]+1`
-/

namespace A049645.P2708277653539970124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049645.P2708277653539970124

namespace A049645

/-- `lt[A060576(n+1), A286628(n+1)]+1` -/
def P2708277653539970124.Spec : Prop :=
  ∀ n, (P2708277653539970124.a n : ℤ) = A049645 (n + 1)

end A049645

/-! ## A049645.P3991976471103419160

`lt[A171047(n+1)%2, A286628(n+1)]+1`
-/

namespace A049645.P3991976471103419160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171047 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049645.P3991976471103419160

namespace A049645

/-- `lt[A171047(n+1)%2, A286628(n+1)]+1` -/
def P3991976471103419160.Spec : Prop :=
  ∀ n, (P3991976471103419160.a n : ℤ) = A049645 (n + 1)

end A049645

/-! ## A049645.P14187674862933822507

`lt[(3*A000040(n+1))%2, A286628(n+1)]+1`
-/

namespace A049645.P14187674862933822507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A000040 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A049645.P14187674862933822507

namespace A049645

/-- `lt[(3*A000040(n+1))%2, A286628(n+1)]+1` -/
def P14187674862933822507.Spec : Prop :=
  ∀ n, (P14187674862933822507.a n : ℤ) = A049645 (n + 1)

end A049645

/-!
# A049646: a(n) = T(n,n+1), array T given by A049639.

The programs for A049646, the canonical program `A049646.P16318745313949960329` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049646 has offset 0).

The definition of A049646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049646.P16318745313949960329

`∪[A049648(n), A049691(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A049646

/-- `∪[A049648(n), A049691(n)]` -/
def P16318745313949960329.Spec : Prop :=
  ∀ n, (P16318745313949960329.a n : ℤ) = A049646 n

theorem P16318745313949960329.correct : P16318745313949960329.Spec := by
  intro n
  simp only [A049646]

end A049646

/-! ## A049646.P17343206263116437403

`∑[A000010(A065033(n))]-A019590(n+1)`
-/

namespace A049646.P17343206263116437403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A019590 (n + 1)

end

end A049646.P17343206263116437403

namespace A049646

/-- `∑[A000010(A065033(n))]-A019590(n+1)` -/
def P17343206263116437403.Spec : Prop :=
  ∀ n, P17343206263116437403.a n = A049646 n

end A049646

/-! ## A049646.P17694533572827129865

`A049643(A004526(n))+A002088(A110654(n))`
-/

namespace A049646.P17694533572827129865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (A004526 n).toNat + A002088 (A110654 n).toNat

end

end A049646.P17694533572827129865

namespace A049646

/-- `A049643(A004526(n))+A002088(A110654(n))` -/
def P17694533572827129865.Spec : Prop :=
  ∀ n, P17694533572827129865.a n = A049646 n

end A049646

/-! ## A049646.P14559766964508258864

`A049644(n)+A319998(n+1)/2`
-/

namespace A049646.P14559766964508258864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049644 n : ℚ) + (A319998 (n + 1) : ℚ) / 2

end

end A049646.P14559766964508258864

namespace A049646

/-- `A049644(n)+A319998(n+1)/2` -/
def P14559766964508258864.Spec : Prop :=
  ∀ n, P14559766964508258864.a n = (A049646 n : ℚ)

end A049646

/-! ## A049646.P2430428253206840554

`A049644(n)+A004525(A319998(n+1))`
-/

namespace A049646.P2430428253206840554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049644 n + A004525 (A319998 (n + 1)).toNat

end

end A049646.P2430428253206840554

namespace A049646

/-- `A049644(n)+A004525(A319998(n+1))` -/
def P2430428253206840554.Spec : Prop :=
  ∀ n, P2430428253206840554.a n = A049646 n

end A049646

/-! ## A049646.P6156319956938037292

`A049644(n)+A004525(Δ[A049644(n)])`
-/

namespace A049646.P6156319956938037292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049644 n + A004525 (f1 (n + 1) - f1 n).toNat

end

end A049646.P6156319956938037292

namespace A049646

/-- `A049644(n)+A004525(Δ[A049644(n)])` -/
def P6156319956938037292.Spec : Prop :=
  ∀ n, P6156319956938037292.a n = A049646 n

end A049646

/-! ## A049646.P11439133232666303477

`A049644(n)+A004526(Δ[A049644(n)])`
-/

namespace A049646.P11439133232666303477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049644 n + A004526 (f1 (n + 1) - f1 n).toNat

end

end A049646.P11439133232666303477

namespace A049646

/-- `A049644(n)+A004526(Δ[A049644(n)])` -/
def P11439133232666303477.Spec : Prop :=
  ∀ n, P11439133232666303477.a n = A049646 n

end A049646

/-! ## A049646.P10192538211156117674

`A254667(a(n-1))+A000010(A065033(n))` with `a(0)=0`
-/

namespace A049646.P10192538211156117674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A254667 (a (n - 1)).toNat + A000010 (A065033 n).toNat

end

end A049646.P10192538211156117674

namespace A049646

/-- `A254667(a(n-1))+A000010(A065033(n))` -/
def P10192538211156117674.Spec : Prop :=
  ∀ n, P10192538211156117674.a n = A049646 n

end A049646

/-! ## A049646.P13046856126438597242

`A004525(A049644(n+1)+A049644(n))`
-/

namespace A049646.P13046856126438597242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049644 (n + 1) + A049644 n).toNat

end

end A049646.P13046856126438597242

namespace A049646

/-- `A004525(A049644(n+1)+A049644(n))` -/
def P13046856126438597242.Spec : Prop :=
  ∀ n, P13046856126438597242.a n = A049646 n

end A049646

/-! ## A049646.P2927186476360749596

`A004526(A049644(n+1)+A049644(n))`
-/

namespace A049646.P2927186476360749596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049644 (n + 1) + A049644 n).toNat

end

end A049646.P2927186476360749596

namespace A049646

/-- `A004526(A049644(n+1)+A049644(n))` -/
def P2927186476360749596.Spec : Prop :=
  ∀ n, P2927186476360749596.a n = A049646 n

end A049646

/-! ## A049646.P3730643037316866690

`A049687(A194274(n))`
-/

namespace A049646.P3730643037316866690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A194274 n).toNat

end

end A049646.P3730643037316866690

namespace A049646

/-- `A049687(A194274(n))` -/
def P3730643037316866690.Spec : Prop :=
  ∀ n, P3730643037316866690.a n = A049646 n

end A049646

/-! ## A049646.P13582629923298261671

`A049687(A007590(n+1))`
-/

namespace A049646.P13582629923298261671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A007590 (n + 1)).toNat

end

end A049646.P13582629923298261671

namespace A049646

/-- `A049687(A007590(n+1))` -/
def P13582629923298261671.Spec : Prop :=
  ∀ n, P13582629923298261671.a n = A049646 n

end A049646

/-! ## A049646.P10230042263282361321

`A049687(A000982(n)+n)`
-/

namespace A049646.P10230042263282361321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A000982 n + (n : ℤ)).toNat

end

end A049646.P10230042263282361321

namespace A049646

/-- `A049687(A000982(n)+n)` -/
def P10230042263282361321.Spec : Prop :=
  ∀ n, P10230042263282361321.a n = A049646 n

end A049646

/-! ## A049646.P6610738190808071113

`A049627(A000982(n)+n)-1`
-/

namespace A049646.P6610738190808071113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 (A000982 n + (n : ℤ)).toNat - 1

end

end A049646.P6610738190808071113

namespace A049646

/-- `A049627(A000982(n)+n)-1` -/
def P6610738190808071113.Spec : Prop :=
  ∀ n, P6610738190808071113.a n = A049646 n

end A049646

/-! ## A049646.P4183313067337110911

`A049687(A047838(n+2)-(n+1))`
-/

namespace A049646.P4183313067337110911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A049646.P4183313067337110911

namespace A049646

/-- `A049687(A047838(n+2)-(n+1))` -/
def P4183313067337110911.Spec : Prop :=
  ∀ n, P4183313067337110911.a n = A049646 n

end A049646

/-! ## A049646.P7354466148376847594

`A049687(A004525(n²)+n)`
-/

namespace A049646.P7354466148376847594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A049646.P7354466148376847594

namespace A049646

/-- `A049687(A004525(n²)+n)` -/
def P7354466148376847594.Spec : Prop :=
  ∀ n, P7354466148376847594.a n = A049646 n

end A049646

/-! ## A049646.P14119565484087456499

`A049687(A110654(n²)+n)`
-/

namespace A049646.P14119565484087456499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A049646.P14119565484087456499

namespace A049646

/-- `A049687(A110654(n²)+n)` -/
def P14119565484087456499.Spec : Prop :=
  ∀ n, P14119565484087456499.a n = A049646 n

end A049646

/-!
# A049647: a(n) = T(n,n+2), array T given by A049639.

The programs for A049647, the canonical program `A049647.P9788054326573138071` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049647 has offset 0).

The definition of A049647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049647.P4665692215616808491

`A049646(or(1, n))`
-/

namespace A049647.P4665692215616808491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (Nat.lor 1 n)

end

end A049647.P4665692215616808491

namespace A049647

/-- `A049646(or(1, n))` -/
def P4665692215616808491.Spec : Prop :=
  ∀ n, P4665692215616808491.a n = A049647 n

end A049647

/-! ## A049647.P5772324967708576846

`A049649(and(n, -2))`
-/

namespace A049647.P5772324967708576846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049649 (Int.land (n : ℤ) (-2)).toNat

end

end A049647.P5772324967708576846

namespace A049647

/-- `A049649(and(n, -2))` -/
def P5772324967708576846.Spec : Prop :=
  ∀ n, P5772324967708576846.a n = A049647 n

end A049647

/-! ## A049647.P9788054326573138071

`A049648(floor(n/2))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A049647

/-- `A049648(floor(n/2))` -/
def P9788054326573138071.Spec : Prop :=
  ∀ n, P9788054326573138071.a n = A049647 n

theorem P9788054326573138071.correct : P9788054326573138071.Spec := by
  intro n
  simp only [A049647]

end A049647

/-! ## A049647.P11506855645622662413

`A049649(n-and(1, n))`
-/

namespace A049647.P11506855645622662413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049649 (n - Nat.land 1 n)

end

end A049647.P11506855645622662413

namespace A049647

/-- `A049649(n-and(1, n))` -/
def P11506855645622662413.Spec : Prop :=
  ∀ n, P11506855645622662413.a n = A049647 n

end A049647

/-! ## A049647.P3011751381226903927

`A049646(char[2*n]+n)`
-/

namespace A049647.P3011751381226903927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A049647.P3011751381226903927

namespace A049647

/-- `A049646(char[2*n]+n)` -/
def P3011751381226903927.Spec : Prop :=
  ∀ n, P3011751381226903927.a n = A049647 n

end A049647

/-! ## A049647.P16914002407223416814

`A049649(lcm(2, n)%(n+1))`
-/

namespace A049647.P16914002407223416814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049649 (Nat.lcm 2 n % (n + 1))

end

end A049647.P16914002407223416814

namespace A049647

/-- `A049649(lcm(2, n)%(n+1))` -/
def P16914002407223416814.Spec : Prop :=
  ∀ n, P16914002407223416814.a n = A049647 n

end A049647

/-! ## A049647.P16134687618606327121

`A049649(n-char[2*n+1])`
-/

namespace A049647.P16134687618606327121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049649 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A049647.P16134687618606327121

namespace A049647

/-- `A049649(n-char[2*n+1])` -/
def P16134687618606327121.Spec : Prop :=
  ∀ n, P16134687618606327121.a n = A049647 n

end A049647

/-! ## A049647.P8359730313632554773

`A049633(A004526(n))-1`
-/

namespace A049647.P8359730313632554773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 (A004526 n).toNat - 1

end

end A049647.P8359730313632554773

namespace A049647

/-- `A049633(A004526(n))-1` -/
def P8359730313632554773.Spec : Prop :=
  ∀ n, P8359730313632554773.a n = A049647 n

end A049647

/-! ## A049647.P2385981091305044559

`A049646(n+1)+A049646(n)-A049644(n+1)`
-/

namespace A049647.P2385981091305044559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049646 (n + 1) + (A049646 n - A049644 (n + 1))

end

end A049647.P2385981091305044559

namespace A049647

/-- `A049646(n+1)+A049646(n)-A049644(n+1)` -/
def P2385981091305044559.Spec : Prop :=
  ∀ n, P2385981091305044559.a n = A049647 n

end A049647

/-! ## A049647.P17808496071588167373

`A049687(A213037(n+1))`
-/

namespace A049647.P17808496071588167373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A213037 (n + 1)).toNat

end

end A049647.P17808496071588167373

namespace A049647

/-- `A049687(A213037(n+1))` -/
def P17808496071588167373.Spec : Prop :=
  ∀ n, P17808496071588167373.a n = A049647 n

end A049647

/-! ## A049647.P14226144693043576827

`A049687(2*A008619(n)²)`
-/

namespace A049647.P14226144693043576827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (2 * A008619 n ^ 2).toNat

end

end A049647.P14226144693043576827

namespace A049647

/-- `A049687(2*A008619(n)²)` -/
def P14226144693043576827.Spec : Prop :=
  ∀ n, P14226144693043576827.a n = A049647 n

end A049647

/-! ## A049647.P18117965349103716556

`A049687(2*A110654(n+1)²)`
-/

namespace A049647.P18117965349103716556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (2 * A110654 (n + 1) ^ 2).toNat

end

end A049647.P18117965349103716556

namespace A049647

/-- `A049687(2*A110654(n+1)²)` -/
def P18117965349103716556.Spec : Prop :=
  ∀ n, P18117965349103716556.a n = A049647 n

end A049647

/-! ## A049647.P9209984132282352747

`A049687(2*A008619(n)*A008619(n))`
-/

namespace A049647.P9209984132282352747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (2 * A008619 n * A008619 n).toNat

end

end A049647.P9209984132282352747

namespace A049647

/-- `A049687(2*A008619(n)*A008619(n))` -/
def P9209984132282352747.Spec : Prop :=
  ∀ n, P9209984132282352747.a n = A049647 n

end A049647

/-!
# A049648: T(n,n+1), array T as in A049687 and T(2n,2n+2), array T given by A049639.

The programs for A049648, the canonical program `A049648.P396275532436959907` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049648 has offset 0).

The definition of A049648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049648.P2421228526274441063

`A049633(n)-1`
-/

namespace A049648.P2421228526274441063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - 1

end

end A049648.P2421228526274441063

namespace A049648

/-- `A049633(n)-1` -/
def P2421228526274441063.Spec : Prop :=
  ∀ n, P2421228526274441063.a n = A049648 n

end A049648

/-! ## A049648.P396275532436959907

`(n+1)²+n-A049621(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049648

/-- `(n+1)²+n-A049621(n)` -/
def P396275532436959907.Spec : Prop :=
  ∀ n, P396275532436959907.a n = A049648 n

theorem P396275532436959907.correct : P396275532436959907.Spec := by
  intro n
  simp only [A049648]

end A049648

/-! ## A049648.P6138332456901359437

`A057427(n)+A049697(n)`
-/

namespace A049648.P6138332456901359437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A049697 n

end

end A049648.P6138332456901359437

namespace A049648

/-- `A057427(n)+A049697(n)` -/
def P6138332456901359437.Spec : Prop :=
  ∀ n, P6138332456901359437.a n = A049648 n

end A049648

/-! ## A049648.P7350490042014667399

`A028387(n)-A049621(n)`
-/

namespace A049648.P7350490042014667399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - A049621 n

end

end A049648.P7350490042014667399

namespace A049648

/-- `A028387(n)-A049621(n)` -/
def P7350490042014667399.Spec : Prop :=
  ∀ n, P7350490042014667399.a n = A049648 n

theorem P7350490042014667399.correct : P7350490042014667399.Spec := by
  intro n
  simp only [A049648, Nat.add_sub_cancel, A049648.P7350490042014667399.a, A049648.P396275532436959907.a, A028387, A028387.P5954590561330899546.a, A049621, A049621.P790567699714540639.a, A049620, A049620.P15532980577468314224.a, A008865, A008865.P16699731729816255732.a, A206350, A206350.P761280235204802101.a, A140434, A140434.P96571140770797263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049648

/-! ## A049648.P7969609544053388358

`A049697(n)-A057428(n)`
-/

namespace A049648.P7969609544053388358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n - A057428 n

end

end A049648.P7969609544053388358

namespace A049648

/-- `A049697(n)-A057428(n)` -/
def P7969609544053388358.Spec : Prop :=
  ∀ n, P7969609544053388358.a n = A049648 n

end A049648

/-! ## A049648.P8420665598401133629

`A049691(n)+Δ[A002088(n)]`
-/

namespace A049648.P8420665598401133629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + (f1 (n + 1) - f1 n)

end

end A049648.P8420665598401133629

namespace A049648

/-- `A049691(n)+Δ[A002088(n)]` -/
def P8420665598401133629.Spec : Prop :=
  ∀ n, P8420665598401133629.a n = A049648 n

end A049648

/-! ## A049648.P9109770054521420

`A049691(n)+A000010(n+1)`
-/

namespace A049648.P9109770054521420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + A000010 (n + 1)

end

end A049648.P9109770054521420

namespace A049648

/-- `A049691(n)+A000010(n+1)` -/
def P9109770054521420.Spec : Prop :=
  ∀ n, P9109770054521420.a n = A049648 n

end A049648

/-! ## A049648.P6477723759397658071

`A049643(n)+A002088(n+1)`
-/

namespace A049648.P6477723759397658071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + A002088 (n + 1)

end

end A049648.P6477723759397658071

namespace A049648

/-- `A049643(n)+A002088(n+1)` -/
def P6477723759397658071.Spec : Prop :=
  ∀ n, P6477723759397658071.a n = A049648 n

end A049648

/-! ## A049648.P5344955784461485067

`A092249(n+1)+A049643(n)`
-/

namespace A049648.P5344955784461485067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + A049643 n

end

end A049648.P5344955784461485067

namespace A049648

/-- `A092249(n+1)+A049643(n)` -/
def P5344955784461485067.Spec : Prop :=
  ∀ n, P5344955784461485067.a n = A049648 n

end A049648

/-! ## A049648.P10991853165769367450

`A109606(n+1)+A049632(n)`
-/

namespace A049648.P10991853165769367450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A049632 n

end

end A049648.P10991853165769367450

namespace A049648

/-- `A109606(n+1)+A049632(n)` -/
def P10991853165769367450.Spec : Prop :=
  ∀ n, P10991853165769367450.a n = A049648 n

end A049648

/-! ## A049648.P792142155593435110

`A225531(n)+A015614(n+1)`
-/

namespace A049648.P792142155593435110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225531 n + A015614 (n + 1)

end

end A049648.P792142155593435110

namespace A049648

/-- `A225531(n)+A015614(n+1)` -/
def P792142155593435110.Spec : Prop :=
  ∀ n, P792142155593435110.a n = A049648 n

end A049648

/-! ## A049648.P6507800175159252093

`A049634(n)-A000010(n+2)`
-/

namespace A049648.P6507800175159252093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - A000010 (n + 2)

end

end A049648.P6507800175159252093

namespace A049648

/-- `A049634(n)-A000010(n+2)` -/
def P6507800175159252093.Spec : Prop :=
  ∀ n, P6507800175159252093.a n = A049648 n

end A049648

/-! ## A049648.P8877497881771420875

`A049697(n)+2-A054977(n)`
-/

namespace A049648.P8877497881771420875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n + (2 - A054977 n)

end

end A049648.P8877497881771420875

namespace A049648

/-- `A049697(n)+2-A054977(n)` -/
def P8877497881771420875.Spec : Prop :=
  ∀ n, P8877497881771420875.a n = A049648 n

end A049648

/-! ## A049648.P14747987248002942772

`A049643(n)+∑[A000010(n+1)]`
-/

namespace A049648.P14747987248002942772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049648.P14747987248002942772

namespace A049648

/-- `A049643(n)+∑[A000010(n+1)]` -/
def P14747987248002942772.Spec : Prop :=
  ∀ n, P14747987248002942772.a n = A049648 n

end A049648

/-! ## A049648.P3188268497381851206

`A015614(n+1)+A049643(n)+1`
-/

namespace A049648.P3188268497381851206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A049643 n + 1)

end

end A049648.P3188268497381851206

namespace A049648

/-- `A015614(n+1)+A049643(n)+1` -/
def P3188268497381851206.Spec : Prop :=
  ∀ n, P3188268497381851206.a n = A049648 n

end A049648

/-! ## A049648.P6660199720293668267

`A000010(n+1)+A049632(n)-1`
-/

namespace A049648.P6660199720293668267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A049632 n - 1)

end

end A049648.P6660199720293668267

namespace A049648

/-- `A000010(n+1)+A049632(n)-1` -/
def P6660199720293668267.Spec : Prop :=
  ∀ n, P6660199720293668267.a n = A049648 n

end A049648

/-! ## A049648.P1107219534200553151

`A039649(n+1)+A049691(n)-1`
-/

namespace A049648.P1107219534200553151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A049691 n - 1)

end

end A049648.P1107219534200553151

namespace A049648

/-- `A039649(n+1)+A049691(n)-1` -/
def P1107219534200553151.Spec : Prop :=
  ∀ n, P1107219534200553151.a n = A049648 n

end A049648

/-! ## A049648.P4177395977092255401

`A049691(n+1)-A225530(n+1)`
-/

namespace A049648.P4177395977092255401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 (n + 1) - A225530 (n + 1)

end

end A049648.P4177395977092255401

namespace A049648

/-- `A049691(n+1)-A225530(n+1)` -/
def P4177395977092255401.Spec : Prop :=
  ∀ n, P4177395977092255401.a n = A049648 n

end A049648

/-! ## A049648.P13795879209901860703

`∑[A225530(n)+A000010(n+1)]-1`
-/

namespace A049648.P13795879209901860703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n + A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049648.P13795879209901860703

namespace A049648

/-- `∑[A225530(n)+A000010(n+1)]-1` -/
def P13795879209901860703.Spec : Prop :=
  ∀ n, P13795879209901860703.a n = A049648 n

end A049648

/-!
# A049649: T(n,n+3), array T given by A049639.

The programs for A049649, there is no canonical definition to state claims against.
-/

/-! ## A049649.P10216590383318421852

`A049687(∑[or(1, n)]+n)`
-/

namespace A049649.P10216590383318421852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A049649.P10216590383318421852

/-! ## A049649.P9940921673499430281

`A049627(∑[or(1, n)]+n)-1`
-/

namespace A049649.P9940921673499430281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 (∑ j ∈ Finset.range (n + 1), f1 j + n) - 1

end

end A049649.P9940921673499430281

/-! ## A049649.P12403422058895266061

`A049687(floor((n+2)²/2)-1)`
-/

namespace A049649.P12403422058895266061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (⌊((n + 2) ^ 2 : ℚ) / 2⌋ - 1).toNat

end

end A049649.P12403422058895266061

/-! ## A049649.P14775561202647937830

`A049627(A178218(n+1))-1`
-/

namespace A049649.P14775561202647937830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 (A178218 (n + 1)).toNat - 1

end

end A049649.P14775561202647937830

/-! ## A049649.P4146929343315805352

`A049627(A000982(n+2))-1`
-/

namespace A049649.P4146929343315805352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 (A000982 (n + 2)).toNat - 1

end

end A049649.P4146929343315805352

/-! ## A049649.P9571541967884474284

`A049627(A047838(n+2))-1`
-/

namespace A049649.P9571541967884474284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 (A047838 (n + 2)).toNat - 1

end

end A049649.P9571541967884474284

/-! ## A049649.P10341009116816626440

`A023443(A049627(floor((n+1)/asin(2/(n+3)))))`
-/

namespace A049649.P10341009116816626440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049627 ⌊(n + 1 : ℝ) / Real.arcsin (2 / (n + 3 : ℚ) : ℝ)⌋.toNat).toNat

end

end A049649.P10341009116816626440

/-! ## A049649.P4677102742040975347

`A049687(A047838(n+2))%A017105(n)`
-/

namespace A049649.P4677102742040975347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049687 (A047838 (n + 2)).toNat) (A017105 n)

end

end A049649.P4677102742040975347

/-! ## A049649.P1199527466006564480

`A054525(A001511(2*n+1)+1)+A049627(A047838(n+2))`
-/

namespace A049649.P1199527466006564480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (A001511 (2 * n + 1) + 1).toNat + A049627 (A047838 (n + 2)).toNat

end

end A049649.P1199527466006564480

/-! ## A049649.P3094586903405524084

`A049639(xor(3, ∑[record[or(5, n)]]+1))`
-/

namespace A049649.P3094586903405524084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (Nat.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A049649.P3094586903405524084

/-!
# A049650: Compositorial numbers (A036691) + 1.

The programs for A049650, there is no canonical definition to state claims against.
-/

/-! ## A049650.P9883320225055886749

`∏[comp[p?[xor(1, n)]-1]+1]+1`
-/

namespace A049650.P9883320225055886749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P9883320225055886749

/-! ## A049650.P1723077588460317775

`A036691(n)+1`
-/

namespace A049650.P1723077588460317775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036691 n + 1

end

end A049650.P1723077588460317775

/-! ## A049650.P12788543049418737736

`A060880(n)+2`
-/

namespace A049650.P12788543049418737736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060880 n + 2

end

end A049650.P12788543049418737736

/-! ## A049650.P14945987700340191853

`∏[Δ[A051349(n)]]+1`
-/

namespace A049650.P14945987700340191853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P14945987700340191853

/-! ## A049650.P17975024845755401730

`∏[A018252(n+1)]+1`
-/

namespace A049650.P17975024845755401730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P17975024845755401730

/-! ## A049650.P7632517845764710862

`∏[A141468(n+2)]+1`
-/

namespace A049650.P7632517845764710862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P7632517845764710862

/-! ## A049650.P5652204401542074202

`∏[sqrt(A062312(n+1))]+1`
-/

namespace A049650.P5652204401542074202
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P5652204401542074202

/-! ## A049650.P17566730047480100283

`∏[∑[A054546(n+1)]]+1`
-/

namespace A049650.P17566730047480100283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P17566730047480100283

/-! ## A049650.P7959020326414530596

`∏[Δ[A175967(n+1)]]+1`
-/

namespace A049650.P7959020326414530596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P7959020326414530596

/-! ## A049650.P6851993488270014312

`∏[record[A005451(n+1)]]+1`
-/

namespace A049650.P6851993488270014312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049650.P6851993488270014312

/-!
# A049651: a(n) = (F(3*n+1) - 1)/2, where F=A000045 (the Fibonacci sequence).

The programs for A049651, the canonical program `A049651.P13896596399977477955` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049651 has offset 0).

The definition of A049651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049651.P13896596399977477955

`4*a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049651

/-- `4*a(n-1)+a(n-2)+2` -/
def P13896596399977477955.Spec : Prop :=
  ∀ n, (P13896596399977477955.a n : ℤ) = A049651 n

theorem P13896596399977477955.correct : P13896596399977477955.Spec := by
  intro n
  simp only [A049651]

end A049651

/-! ## A049651.P12873109757511747480

`(A000045(3*n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049651.P12873109757511747480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n + 1) - 1 : ℚ) / 2

end

end A049651.P12873109757511747480

namespace A049651

/-- `(A000045(3*n+1)-1)/2` -/
def P12873109757511747480.Spec : Prop :=
  ∀ n, P12873109757511747480.a n = (A049651 n : ℚ)

end A049651

/-! ## A049651.P2310361374105843088

`ogf((x+x^2)/(1-5x+3x^2+x^3))`
-/

namespace A049651.P2310361374105843088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, 3, 1] n

end

end A049651.P2310361374105843088

namespace A049651

/-- `ogf((x+x^2)/(1-5x+3x^2+x^3))` -/
def P2310361374105843088.Spec : Prop :=
  ∀ n, P2310361374105843088.a n = A049651 n

end A049651

/-! ## A049651.P6075499332328295228

`round(ϕ^3*a(n-1))+2` with `a(0)=0, a(1)=1`
-/

namespace A049651.P6075499332328295228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)) + 2

end

end A049651.P6075499332328295228

namespace A049651

/-- `round(ϕ^3*a(n-1))+2` -/
def P6075499332328295228.Spec : Prop :=
  ∀ n, P6075499332328295228.a n = A049651 n

end A049651

/-! ## A049651.P15878858913174955835

`∑[round(ϕ^3*a(n-1))]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A049651.P15878858913174955835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049651.P15878858913174955835

namespace A049651

/-- `∑[round(ϕ^3*a(n-1))]` -/
def P15878858913174955835.Spec : Prop :=
  ∀ n, P15878858913174955835.a n = A049651 n

end A049651

/-! ## A049651.P3779946140334071383

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A049651.P3779946140334071383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2) - a (n - 3)

end

end A049651.P3779946140334071383

namespace A049651

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P3779946140334071383.Spec : Prop :=
  ∀ n, P3779946140334071383.a n = A049651 n

end A049651

/-! ## A049651.P3818919474136863481

`A232970(n)-1`
-/

namespace A049651.P3818919474136863481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232970 n - 1

end

end A049651.P3818919474136863481

namespace A049651

/-- `A232970(n)-1` -/
def P3818919474136863481.Spec : Prop :=
  ∀ n, P3818919474136863481.a n = A049651 n

end A049651

/-! ## A049651.P9536738544422011773

`∑[A015448(n)]-1`
-/

namespace A049651.P9536738544422011773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049651.P9536738544422011773

namespace A049651

/-- `∑[A015448(n)]-1` -/
def P9536738544422011773.Spec : Prop :=
  ∀ n, P9536738544422011773.a n = A049651 n

end A049651

/-! ## A049651.P10883506117655747639

`floor(ϕ*A001076(n))`
-/

namespace A049651.P10883506117655747639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A001076 n : ℝ)⌋

end

end A049651.P10883506117655747639

namespace A049651

/-- `floor(ϕ*A001076(n))` -/
def P10883506117655747639.Spec : Prop :=
  ∀ n, P10883506117655747639.a n = A049651 n

end A049651

/-! ## A049651.P17433949767094790548

`A004695(3*n+1)`
-/

namespace A049651.P17433949767094790548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (3 * n + 1)

end

end A049651.P17433949767094790548

namespace A049651

/-- `A004695(3*n+1)` -/
def P17433949767094790548.Spec : Prop :=
  ∀ n, P17433949767094790548.a n = A049651 n

end A049651

/-! ## A049651.P10438658670507683502

`A100887(3*n)+1`
-/

namespace A049651.P10438658670507683502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100887 (3 * n) + 1

end

end A049651.P10438658670507683502

namespace A049651

/-- `A100887(3*n)+1` -/
def P10438658670507683502.Spec : Prop :=
  ∀ n, P10438658670507683502.a n = A049651 n

end A049651

/-! ## A049651.P13436044338347085744

`A173434(3*n+1)`
-/

namespace A049651.P13436044338347085744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (3 * n + 1)

end

end A049651.P13436044338347085744

namespace A049651

/-- `A173434(3*n+1)` -/
def P13436044338347085744.Spec : Prop :=
  ∀ n, P13436044338347085744.a n = A049651 n

end A049651

/-! ## A049651.P9294801489720883560

`A201864(3*n+1)`
-/

namespace A049651.P9294801489720883560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (3 * n + 1)

end

end A049651.P9294801489720883560

namespace A049651

/-- `A201864(3*n+1)` -/
def P9294801489720883560.Spec : Prop :=
  ∀ n, P9294801489720883560.a n = A049651 n

end A049651

/-! ## A049651.P15290708925425423686

`A094686(3*n)-1`
-/

namespace A049651.P15290708925425423686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (3 * n) - 1

end

end A049651.P15290708925425423686

namespace A049651

/-- `A094686(3*n)-1` -/
def P15290708925425423686.Spec : Prop :=
  ∀ n, P15290708925425423686.a n = A049651 n

end A049651

/-! ## A049651.P3880047826948449077

`A107857(Δ[n²])-1`
-/

namespace A049651.P3880047826948449077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A049651.P3880047826948449077

namespace A049651

/-- `A107857(Δ[n²])-1` -/
def P3880047826948449077.Spec : Prop :=
  ∀ n, P3880047826948449077.a n = A049651 n

end A049651

/-! ## A049651.P833872216747296934

`A147997(3*n+1)-1`
-/

namespace A049651.P833872216747296934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (3 * n + 1) - 1

end

end A049651.P833872216747296934

namespace A049651

/-- `A147997(3*n+1)-1` -/
def P833872216747296934.Spec : Prop :=
  ∀ n, P833872216747296934.a n = A049651 n

end A049651

/-! ## A049651.P15548289695215187307

`floor(∑[A000045(3*n)/ϕ])`
-/

namespace A049651.P15548289695215187307
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n) : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A049651.P15548289695215187307

namespace A049651

/-- `floor(∑[A000045(3*n)/ϕ])` -/
def P15548289695215187307.Spec : Prop :=
  ∀ n, P15548289695215187307.a n = A049651 n

end A049651

/-! ## A049651.P6720549181663988341

`∑[A000045(abs(1-3*n))]-1`
-/

namespace A049651.P6720549181663988341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (3 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049651.P6720549181663988341

namespace A049651

/-- `∑[A000045(abs(1-3*n))]-1` -/
def P6720549181663988341.Spec : Prop :=
  ∀ n, P6720549181663988341.a n = A049651 n

end A049651

/-! ## A049651.P15591589531913028655

`∑[A000045(comp[2*(n+1)]+n)]`
-/

namespace A049651.P15591589531913028655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049651.P15591589531913028655

namespace A049651

/-- `∑[A000045(comp[2*(n+1)]+n)]` -/
def P15591589531913028655.Spec : Prop :=
  ∀ n, P15591589531913028655.a n = A049651 n

end A049651

/-! ## A049651.P3650568252050972963

`A000045(2*n-1+n)+a(n-1)` with `a(0)=0`
-/

namespace A049651.P3650568252050972963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 ((2 * n : ℤ) - 1 + (n : ℤ)).toNat + a (n - 1)

end

end A049651.P3650568252050972963

namespace A049651

/-- `A000045(2*n-1+n)+a(n-1)` -/
def P3650568252050972963.Spec : Prop :=
  ∀ n, P3650568252050972963.a n = A049651 n

end A049651

/-!
# A049652: a(n) = (F(3*n+2) - 1)/4, where F=A000045 (the Fibonacci sequence).

The programs for A049652, the canonical program `A049652.P15292321905598915633` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049652 has offset 0).

The definition of A049652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049652.P15292321905598915633

`5*a(n-1)-3*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=22`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049652

/-- `5*a(n-1)-3*a(n-2)-a(n-3)` -/
def P15292321905598915633.Spec : Prop :=
  ∀ n, P15292321905598915633.a n = A049652 n

theorem P15292321905598915633.correct : P15292321905598915633.Spec := by
  intro n
  simp only [A049652]

end A049652

/-! ## A049652.P15381216271815076395

`A099919(n)/2`
-/

namespace A049652.P15381216271815076395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099919 n : ℚ) / 2

end

end A049652.P15381216271815076395

namespace A049652

/-- `A099919(n)/2` -/
def P15381216271815076395.Spec : Prop :=
  ∀ n, P15381216271815076395.a n = (A049652 n : ℚ)

end A049652

/-! ## A049652.P4033369758386480705

`(A000045(3*n+2)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049652.P4033369758386480705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n + 2) - 1 : ℚ) / 4

end

end A049652.P4033369758386480705

namespace A049652

/-- `(A000045(3*n+2)-1)/4` -/
def P4033369758386480705.Spec : Prop :=
  ∀ n, P4033369758386480705.a n = (A049652 n : ℚ)

end A049652

/-! ## A049652.P12417193040988941963

`ogf(x/(1-5x+3x^2+x^3))`
-/

namespace A049652.P12417193040988941963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 3, 1] n

end

end A049652.P12417193040988941963

namespace A049652

/-- `ogf(x/(1-5x+3x^2+x^3))` -/
def P12417193040988941963.Spec : Prop :=
  ∀ n, P12417193040988941963.a n = A049652 n

end A049652

/-! ## A049652.P10940854680860705988

`ceil(ϕ^3*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A049652.P10940854680860705988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)⌉

end

end A049652.P10940854680860705988

namespace A049652

/-- `ceil(ϕ^3*a(n-1))` -/
def P10940854680860705988.Spec : Prop :=
  ∀ n, P10940854680860705988.a n = A049652 n

end A049652

/-! ## A049652.P8003960500489642272

`round(ϕ^3*a(n-1))+1` with `a(0)=0`
-/

namespace A049652.P8003960500489642272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ)) + 1

end

end A049652.P8003960500489642272

namespace A049652

/-- `round(ϕ^3*a(n-1))+1` -/
def P8003960500489642272.Spec : Prop :=
  ∀ n, P8003960500489642272.a n = A049652 n

end A049652

/-! ## A049652.P4938875891358757419

`∑[round(ϕ^3*a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A049652.P4938875891358757419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P4938875891358757419

namespace A049652

/-- `∑[round(ϕ^3*a(n-1))]` -/
def P4938875891358757419.Spec : Prop :=
  ∀ n, P4938875891358757419.a n = A049652 n

end A049652

/-! ## A049652.P15654477207885553605

`∑[a(n-2)+4*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A049652.P15654477207885553605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P15654477207885553605

namespace A049652

/-- `∑[a(n-2)+4*a(n-1)]` -/
def P15654477207885553605.Spec : Prop :=
  ∀ n, (P15654477207885553605.a n : ℤ) = A049652 n

end A049652

/-! ## A049652.P9199621082330365522

`4*a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A049652.P9199621082330365522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * a (n - 1) + (a (n - 2) + 1)

end

end A049652.P9199621082330365522

namespace A049652

/-- `4*a(n-1)+a(n-2)+1` -/
def P9199621082330365522.Spec : Prop :=
  ∀ n, (P9199621082330365522.a n : ℤ) = A049652 n

end A049652

/-! ## A049652.P14080635208210697358

`∑[5*a(n-1)-(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A049652.P14080635208210697358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  5 * f1 (n - 1) - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P14080635208210697358

namespace A049652

/-- `∑[5*a(n-1)-(a(n-1)-a(n-2))]` -/
def P14080635208210697358.Spec : Prop :=
  ∀ n, P14080635208210697358.a n = A049652 n

end A049652

/-! ## A049652.P8038958278010816364

`∑[A001076(n)]`
-/

namespace A049652.P8038958278010816364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P8038958278010816364

namespace A049652

/-- `∑[A001076(n)]` -/
def P8038958278010816364.Spec : Prop :=
  ∀ n, P8038958278010816364.a n = A049652 n

end A049652

/-! ## A049652.P5164362951951454195

`∑[A059973(2*n)]`
-/

namespace A049652.P5164362951951454195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P5164362951951454195

namespace A049652

/-- `∑[A059973(2*n)]` -/
def P5164362951951454195.Spec : Prop :=
  ∀ n, P5164362951951454195.a n = A049652 n

end A049652

/-! ## A049652.P17526262360694580255

`∑[A004695(3*n)]`
-/

namespace A049652.P17526262360694580255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P17526262360694580255

namespace A049652

/-- `∑[A004695(3*n)]` -/
def P17526262360694580255.Spec : Prop :=
  ∀ n, P17526262360694580255.a n = A049652 n

end A049652

/-! ## A049652.P11071053862559418013

`∑[A014445(n)/2]`
-/

namespace A049652.P11071053862559418013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P11071053862559418013

namespace A049652

/-- `∑[A014445(n)/2]` -/
def P11071053862559418013.Spec : Prop :=
  ∀ n, P11071053862559418013.a n = (A049652 n : ℚ)

end A049652

/-! ## A049652.P10789196412511650269

`∑[A167808(3*n)]`
-/

namespace A049652.P10789196412511650269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P10789196412511650269

namespace A049652

/-- `∑[A167808(3*n)]` -/
def P10789196412511650269.Spec : Prop :=
  ∀ n, P10789196412511650269.a n = A049652 n

end A049652

/-! ## A049652.P4778558915914517808

`∑[A173173(3*n)]`
-/

namespace A049652.P4778558915914517808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P4778558915914517808

namespace A049652

/-- `∑[A173173(3*n)]` -/
def P4778558915914517808.Spec : Prop :=
  ∀ n, P4778558915914517808.a n = A049652 n

end A049652

/-! ## A049652.P9400199891646073835

`∑[A293505(3*n)]`
-/

namespace A049652.P9400199891646073835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049652.P9400199891646073835

namespace A049652

/-- `∑[A293505(3*n)]` -/
def P9400199891646073835.Spec : Prop :=
  ∀ n, P9400199891646073835.a n = A049652 n

end A049652

/-! ## A049652.P2216030440778103015

`A004697(3*n+2)`
-/

namespace A049652.P2216030440778103015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (3 * n + 2)

end

end A049652.P2216030440778103015

namespace A049652

/-- `A004697(3*n+2)` -/
def P2216030440778103015.Spec : Prop :=
  ∀ n, P2216030440778103015.a n = A049652 n

end A049652

/-! ## A049652.P13882732400106086948

`A293553(3*n+2)`
-/

namespace A049652.P13882732400106086948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (3 * n + 2)

end

end A049652.P13882732400106086948

namespace A049652

/-- `A293553(3*n+2)` -/
def P13882732400106086948.Spec : Prop :=
  ∀ n, P13882732400106086948.a n = A049652 n

end A049652

/-! ## A049652.P2592459900005606458

`A179006(3*n)+n`
-/

namespace A049652.P2592459900005606458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179006 (3 * n) + (n : ℤ)

end

end A049652.P2592459900005606458

namespace A049652

/-- `A179006(3*n)+n` -/
def P2592459900005606458.Spec : Prop :=
  ∀ n, P2592459900005606458.a n = A049652 n

end A049652

/-!
# A049653: a(n) = 2*n - prevprime(2*n).

The programs for A049653, the canonical program `A049653.P2986559009846252833` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049653 has offset 2).

The definition of A049653 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049653.P2986559009846252833

`A049711(2*(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049653

/-- `A049711(2*(n+2))` -/
def P2986559009846252833.Spec : Prop :=
  ∀ n, P2986559009846252833.a n = A049653 (n + 2)

theorem P2986559009846252833.correct : P2986559009846252833.Spec := by
  intro n
  simp only [A049653, Nat.add_sub_cancel]

end A049653

/-! ## A049653.P8093008327633006723

`2*(n+2)-A007917(2*(n+2))`
-/

namespace A049653.P8093008327633006723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A007917 (2 * (n + 2))

end

end A049653.P8093008327633006723

namespace A049653

/-- `2*(n+2)-A007917(2*(n+2))` -/
def P8093008327633006723.Spec : Prop :=
  ∀ n, P8093008327633006723.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P6932272734946224347

`A049613(n+3)-2`
-/

namespace A049653.P6932272734946224347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049613 (n + 3) - 2

end

end A049653.P6932272734946224347

namespace A049653

/-- `A049613(n+3)-2` -/
def P6932272734946224347.Spec : Prop :=
  ∀ n, P6932272734946224347.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P5034795836793224360

`A175851(2*n+3)`
-/

namespace A049653.P5034795836793224360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 3)

end

end A049653.P5034795836793224360

namespace A049653

/-- `A175851(2*n+3)` -/
def P5034795836793224360.Spec : Prop :=
  ∀ n, P5034795836793224360.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P15622459472038175572

`2*A049847(n+2)-1`
-/

namespace A049653.P15622459472038175572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049847 (n + 2) - 1

end

end A049653.P15622459472038175572

namespace A049653

/-- `2*A049847(n+2)-1` -/
def P15622459472038175572.Spec : Prop :=
  ∀ n, P15622459472038175572.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P1088024825186835276

`2-A088631(n+2)+n`
-/

namespace A049653.P1088024825186835276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088631 (n + 2) + (n : ℤ)

end

end A049653.P1088024825186835276

namespace A049653

/-- `2-A088631(n+2)+n` -/
def P1088024825186835276.Spec : Prop :=
  ∀ n, P1088024825186835276.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P16098416247682051970

`A175851(Δ[n²]+3)-1`
-/

namespace A049653.P16098416247682051970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat - 1

end

end A049653.P16098416247682051970

namespace A049653

/-- `A175851(Δ[n²]+3)-1` -/
def P16098416247682051970.Spec : Prop :=
  ∀ n, P16098416247682051970.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P6194355753344455341

`2*(n+2)-A060265(n+2)`
-/

namespace A049653.P6194355753344455341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A060265 (n + 2)

end

end A049653.P6194355753344455341

namespace A049653

/-- `2*(n+2)-A060265(n+2)` -/
def P6194355753344455341.Spec : Prop :=
  ∀ n, P6194355753344455341.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P7508606045923676512

`A020481(n+2)+A020482(n+2)-A060265(n+2)`
-/

namespace A049653.P7508606045923676512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2) + (A020482 (n + 2) - A060265 (n + 2))

end

end A049653.P7508606045923676512

namespace A049653

/-- `A020481(n+2)+A020482(n+2)-A060265(n+2)` -/
def P7508606045923676512.Spec : Prop :=
  ∀ n, P7508606045923676512.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P6800406500350591722

`A238737(n+1)`
-/

namespace A049653.P6800406500350591722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (n + 1)

end

end A049653.P6800406500350591722

namespace A049653

/-- `A238737(n+1)` -/
def P6800406500350591722.Spec : Prop :=
  ∀ n, P6800406500350591722.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P13360400541308536764

`A049716(n+2)-1`
-/

namespace A049653.P13360400541308536764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 2) - 1

end

end A049653.P13360400541308536764

namespace A049653

/-- `A049716(n+2)-1` -/
def P13360400541308536764.Spec : Prop :=
  ∀ n, P13360400541308536764.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P17315631084161039763

`∑[2-Δ[A060308(n+1)]]`
-/

namespace A049653.P17315631084161039763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049653.P17315631084161039763

namespace A049653

/-- `∑[2-Δ[A060308(n+1)]]` -/
def P17315631084161039763.Spec : Prop :=
  ∀ n, P17315631084161039763.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P17666046419866546246

`2*(n+2)-A060308(n+2)`
-/

namespace A049653.P17666046419866546246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A060308 (n + 2)

end

end A049653.P17666046419866546246

namespace A049653

/-- `2*(n+2)-A060308(n+2)` -/
def P17666046419866546246.Spec : Prop :=
  ∀ n, P17666046419866546246.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P771018031757416958

`filter[A238737(n), A000035(#)]`
-/

namespace A049653.P771018031757416958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A049653.P771018031757416958

namespace A049653

/-- `filter[A238737(n), A000035(#)]` -/
def P771018031757416958.Spec : Prop :=
  ∀ n, P771018031757416958.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P14167410050133727314

`filter[A238737(n), A097325(#)]`
-/

namespace A049653.P14167410050133727314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A049653.P14167410050133727314

namespace A049653

/-- `filter[A238737(n), A097325(#)]` -/
def P14167410050133727314.Spec : Prop :=
  ∀ n, P14167410050133727314.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P18113577114601247183

`filter[A238737(n), A098725(#)]`
-/

namespace A049653.P18113577114601247183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A049653.P18113577114601247183

namespace A049653

/-- `filter[A238737(n), A098725(#)]` -/
def P18113577114601247183.Spec : Prop :=
  ∀ n, P18113577114601247183.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P6477108190885746504

`filter[A238737(n), A115971(#)]`
-/

namespace A049653.P6477108190885746504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A049653.P6477108190885746504

namespace A049653

/-- `filter[A238737(n), A115971(#)]` -/
def P6477108190885746504.Spec : Prop :=
  ∀ n, P6477108190885746504.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P11290191441672031639

`filter[A238737(n), A166486(#)]`
-/

namespace A049653.P11290191441672031639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A049653.P11290191441672031639

namespace A049653

/-- `filter[A238737(n), A166486(#)]` -/
def P11290191441672031639.Spec : Prop :=
  ∀ n, P11290191441672031639.a n = A049653 (n + 2)

end A049653

/-! ## A049653.P13261416436424060245

`filter[A238737(n), A168046(#)]`
-/

namespace A049653.P13261416436424060245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A049653.P13261416436424060245

namespace A049653

/-- `filter[A238737(n), A168046(#)]` -/
def P13261416436424060245.Spec : Prop :=
  ∀ n, P13261416436424060245.a n = A049653 (n + 2)

end A049653

/-!
# A049654: a(n) = (F(8*n+1) - 1)/3 where F=A000045 (the Fibonacci sequence).

The programs for A049654, the canonical program `A049654.P5892494079061840902` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049654 has offset 0).

The definition of A049654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049654.P5892494079061840902

`(A000045(8*n+1)-1)/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049654

/-- `(A000045(8*n+1)-1)/3` -/
def P5892494079061840902.Spec : Prop :=
  ∀ n, P5892494079061840902.a n = (A049654 n : ℚ)

end A049654

/-! ## A049654.P16374642191356408355

`floor(ϕ*A049686(n))`
-/

namespace A049654.P16374642191356408355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A049686 n : ℝ)⌋

end

end A049654.P16374642191356408355

namespace A049654

/-- `floor(ϕ*A049686(n))` -/
def P16374642191356408355.Spec : Prop :=
  ∀ n, P16374642191356408355.a n = A049654 n

end A049654

/-! ## A049654.P15611315908721653942

`A004696(8*n+1)`
-/

namespace A049654.P15611315908721653942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (8 * n + 1)

end

end A049654.P15611315908721653942

namespace A049654

/-- `A004696(8*n+1)` -/
def P15611315908721653942.Spec : Prop :=
  ∀ n, P15611315908721653942.a n = A049654 n

end A049654

/-! ## A049654.P2362566222923078223

`A293544(8*n+1)`
-/

namespace A049654.P2362566222923078223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (8 * n + 1)

end

end A049654.P2362566222923078223

namespace A049654

/-- `A293544(8*n+1)` -/
def P2362566222923078223.Spec : Prop :=
  ∀ n, P2362566222923078223.a n = A049654 n

end A049654

/-! ## A049654.P16634817658337181806

`A049655(n)-A049686(n)`
-/

namespace A049654.P16634817658337181806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049655 n - A049686 n

end

end A049654.P16634817658337181806

namespace A049654

/-- `A049655(n)-A049686(n)` -/
def P16634817658337181806.Spec : Prop :=
  ∀ n, P16634817658337181806.a n = A049654 n

end A049654

/-! ## A049654.P14080987175288820744

`A004187(n)*A056914(n)`
-/

namespace A049654.P14080987175288820744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n * A056914 n

end

end A049654.P14080987175288820744

namespace A049654

/-- `A004187(n)*A056914(n)` -/
def P14080987175288820744.Spec : Prop :=
  ∀ n, P14080987175288820744.a n = A049654 n

end A049654

/-! ## A049654.P2870316277528448695

`A002878(2*n)*A004187(n)`
-/

namespace A049654.P2870316277528448695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (2 * n) * A004187 n

end

end A049654.P2870316277528448695

namespace A049654

/-- `A002878(2*n)*A004187(n)` -/
def P2870316277528448695.Spec : Prop :=
  ∀ n, P2870316277528448695.a n = A049654 n

end A049654

/-! ## A049654.P17774227974317433500

`A000032(A016813(n))*A004187(n)`
-/

namespace A049654.P17774227974317433500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A016813 n).toNat * A004187 n

end

end A049654.P17774227974317433500

namespace A049654

/-- `A000032(A016813(n))*A004187(n)` -/
def P17774227974317433500.Spec : Prop :=
  ∀ n, P17774227974317433500.a n = A049654 n

end A049654

/-! ## A049654.P5202094624096040255

`A081007(2*n)/3`
-/

namespace A049654.P5202094624096040255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081007 (2 * n) : ℚ) / 3

end

end A049654.P5202094624096040255

namespace A049654

/-- `A081007(2*n)/3` -/
def P5202094624096040255.Spec : Prop :=
  ∀ n, P5202094624096040255.a n = (A049654 n : ℚ)

end A049654

/-! ## A049654.P18270824881218799631

`A000071(8*n+1)/3`
-/

namespace A049654.P18270824881218799631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (8 * n + 1) : ℚ) / 3

end

end A049654.P18270824881218799631

namespace A049654

/-- `A000071(8*n+1)/3` -/
def P18270824881218799631.Spec : Prop :=
  ∀ n, P18270824881218799631.a n = (A049654 n : ℚ)

end A049654

/-!
# A049655: a(n) = (F(8n+2)-1)/3, where F=A000045 (the Fibonacci sequence).

The programs for A049655, the canonical program `A049655.P3432272687746600747` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049655 has offset 0).

The definition of A049655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049655.P3432272687746600747

`47*a(n-1)-a(n-2)+15` with `a(0)=0, a(1)=18`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049655

/-- `47*a(n-1)-a(n-2)+15` -/
def P3432272687746600747.Spec : Prop :=
  ∀ n, P3432272687746600747.a n = A049655 n

theorem P3432272687746600747.correct : P3432272687746600747.Spec := by
  intro n
  simp only [A049655]

end A049655

/-! ## A049655.P3763928786777953129

`(A000045(8*n+2)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049655.P3763928786777953129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n + 2) - 1 : ℚ) / 3

end

end A049655.P3763928786777953129

namespace A049655

/-- `(A000045(8*n+2)-1)/3` -/
def P3763928786777953129.Spec : Prop :=
  ∀ n, P3763928786777953129.a n = (A049655 n : ℚ)

end A049655

/-! ## A049655.P7401657777143512184

`A099483(4*n)`
-/

namespace A049655.P7401657777143512184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099483 (4 * n)

end

end A049655.P7401657777143512184

namespace A049655

/-- `A099483(4*n)` -/
def P7401657777143512184.Spec : Prop :=
  ∀ n, P7401657777143512184.a n = A049655 n

end A049655

/-! ## A049655.P5524151933252843522

`A004696(8*n+2)`
-/

namespace A049655.P5524151933252843522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (8 * n + 2)

end

end A049655.P5524151933252843522

namespace A049655

/-- `A004696(8*n+2)` -/
def P5524151933252843522.Spec : Prop :=
  ∀ n, P5524151933252843522.a n = A049655 n

end A049655

/-! ## A049655.P18002827427321830140

`A387782(3*n+n+1)`
-/

namespace A049655.P18002827427321830140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (3 * n + (n + 1))

end

end A049655.P18002827427321830140

namespace A049655

/-- `A387782(3*n+n+1)` -/
def P18002827427321830140.Spec : Prop :=
  ∀ n, P18002827427321830140.a n = A049655 n

end A049655

/-! ## A049655.P1564271076269105029

`A033888(n)*A049685(n)`
-/

namespace A049655.P1564271076269105029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n * A049685 n

end

end A049655.P1564271076269105029

namespace A049655

/-- `A033888(n)*A049685(n)` -/
def P1564271076269105029.Spec : Prop :=
  ∀ n, P1564271076269105029.a n = A049655 n

end A049655

/-! ## A049655.P11051020712318749135

`A004187(n)*A246453(n+2)`
-/

namespace A049655.P11051020712318749135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n * A246453 (n + 2)

end

end A049655.P11051020712318749135

namespace A049655

/-- `A004187(n)*A246453(n+2)` -/
def P11051020712318749135.Spec : Prop :=
  ∀ n, P11051020712318749135.a n = A049655 n

end A049655

/-! ## A049655.P10317589525787246050

`A001906(2*n)*A049685(n)`
-/

namespace A049655.P10317589525787246050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) * A049685 n

end

end A049655.P10317589525787246050

namespace A049655

/-- `A001906(2*n)*A049685(n)` -/
def P10317589525787246050.Spec : Prop :=
  ∀ n, P10317589525787246050.a n = A049655 n

end A049655

/-! ## A049655.P6141567142924887751

`lcm(A000045(4*n), A342710(n))`
-/

namespace A049655.P6141567142924887751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000045 (4 * n)) (A342710 n)

end

end A049655.P6141567142924887751

namespace A049655

/-- `lcm(A000045(4*n), A342710(n))` -/
def P6141567142924887751.Spec : Prop :=
  ∀ n, (P6141567142924887751.a n : ℤ) = A049655 n

end A049655

/-! ## A049655.P6127384122447005038

`lcm(Δ[A000045(4*n)], A033888(n))`
-/

namespace A049655.P6127384122447005038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A033888 n)

end

end A049655.P6127384122447005038

namespace A049655

/-- `lcm(Δ[A000045(4*n)], A033888(n))` -/
def P6127384122447005038.Spec : Prop :=
  ∀ n, (P6127384122447005038.a n : ℤ) = A049655 n

end A049655

/-!
# A049656: a(n) = (F(8n+7)-1)/3, where F=A000045 (the Fibonacci sequence).

The programs for A049656, the canonical program `A049656.P3593737750298315895` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049656 has offset 0).

The definition of A049656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049656.P3593737750298315895

`47*a(n-1)-a(n-2)+15` with `a(0)=4, a(1)=203`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049656

/-- `47*a(n-1)-a(n-2)+15` -/
def P3593737750298315895.Spec : Prop :=
  ∀ n, P3593737750298315895.a n = A049656 n

theorem P3593737750298315895.correct : P3593737750298315895.Spec := by
  intro n
  simp only [A049656]

end A049656

/-! ## A049656.P5736812193215326352

`(A000045(8*n+7)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049656.P5736812193215326352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n + 7) - 1 : ℚ) / 3

end

end A049656.P5736812193215326352

namespace A049656

/-- `(A000045(8*n+7)-1)/3` -/
def P5736812193215326352.Spec : Prop :=
  ∀ n, P5736812193215326352.a n = (A049656 n : ℚ)

end A049656

/-! ## A049656.P7768273266707795864

`A094567(Δ[n²])`
-/

namespace A049656.P7768273266707795864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049656.P7768273266707795864

namespace A049656

/-- `A094567(Δ[n²])` -/
def P7768273266707795864.Spec : Prop :=
  ∀ n, P7768273266707795864.a n = A049656 n

end A049656

/-! ## A049656.P6314399999776173444

`∑[A288913(2*n)]`
-/

namespace A049656.P6314399999776173444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288913 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049656.P6314399999776173444

namespace A049656

/-- `∑[A288913(2*n)]` -/
def P6314399999776173444.Spec : Prop :=
  ∀ n, P6314399999776173444.a n = A049656 n

end A049656

/-! ## A049656.P16548057619979211908

`ceil(ϕ*A049659(n))`
-/

namespace A049656.P16548057619979211908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A049659 n : ℝ)⌉

end

end A049656.P16548057619979211908

namespace A049656

/-- `ceil(ϕ*A049659(n))` -/
def P16548057619979211908.Spec : Prop :=
  ∀ n, P16548057619979211908.a n = A049656 n

end A049656

/-! ## A049656.P12347341301490331271

`∑[A081015(2*n)-1]`
-/

namespace A049656.P12347341301490331271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081015 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049656.P12347341301490331271

namespace A049656

/-- `∑[A081015(2*n)-1]` -/
def P12347341301490331271.Spec : Prop :=
  ∀ n, P12347341301490331271.a n = A049656 n

end A049656

/-! ## A049656.P9524127565432931806

`∑[A002878(4*n+1)]`
-/

namespace A049656.P9524127565432931806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049656.P9524127565432931806

namespace A049656

/-- `∑[A002878(4*n+1)]` -/
def P9524127565432931806.Spec : Prop :=
  ∀ n, P9524127565432931806.a n = A049656 n

end A049656

/-! ## A049656.P1134015572966087991

`∑[A000032(8*n+3)]`
-/

namespace A049656.P1134015572966087991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049656.P1134015572966087991

namespace A049656

/-- `∑[A000032(8*n+3)]` -/
def P1134015572966087991.Spec : Prop :=
  ∀ n, P1134015572966087991.a n = A049656 n

end A049656

/-! ## A049656.P2117742379254668117

`∑[A000204(8*n+3)]`
-/

namespace A049656.P2117742379254668117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049656.P2117742379254668117

namespace A049656

/-- `∑[A000204(8*n+3)]` -/
def P2117742379254668117.Spec : Prop :=
  ∀ n, P2117742379254668117.a n = A049656 n

end A049656

/-! ## A049656.P12989493524597861960

`A027941(record[xor(3, n)])/3`
-/

namespace A049656.P12989493524597861960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027941 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 3

end

end A049656.P12989493524597861960

namespace A049656

/-- `A027941(record[xor(3, n)])/3` -/
def P12989493524597861960.Spec : Prop :=
  ∀ n, P12989493524597861960.a n = (A049656 n : ℚ)

end A049656

/-!
# A049657: a(n) = (F(8*n+3) - 2)/3, where F = A000045 (the Fibonacci sequence).

The programs for A049657, the canonical program `A049657.P17075907910752082858` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049657 has offset 0).

The definition of A049657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049657.P17075907910752082858

`(A000045(8*n+3)-2)/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049657

/-- `(A000045(8*n+3)-2)/3` -/
def P17075907910752082858.Spec : Prop :=
  ∀ n, P17075907910752082858.a n = (A049657 n : ℚ)

end A049657

/-! ## A049657.P3485007044351146090

`floor(A049678(n)/ϕ)`
-/

namespace A049657.P3485007044351146090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049678 n : ℝ) / Real.goldenRatio⌋

end

end A049657.P3485007044351146090

namespace A049657

/-- `floor(A049678(n)/ϕ)` -/
def P3485007044351146090.Spec : Prop :=
  ∀ n, P3485007044351146090.a n = A049657 n

end A049657

/-! ## A049657.P8200438695312745712

`A094567(2*n)-1`
-/

namespace A049657.P8200438695312745712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094567 (2 * n) - 1

end

end A049657.P8200438695312745712

namespace A049657

/-- `A094567(2*n)-1` -/
def P8200438695312745712.Spec : Prop :=
  ∀ n, P8200438695312745712.a n = A049657 n

end A049657

/-! ## A049657.P12913040565029205513

`A081013(2*n)/3`
-/

namespace A049657.P12913040565029205513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081013 (2 * n) : ℚ) / 3

end

end A049657.P12913040565029205513

namespace A049657

/-- `A081013(2*n)/3` -/
def P12913040565029205513.Spec : Prop :=
  ∀ n, P12913040565029205513.a n = (A049657 n : ℚ)

end A049657

/-! ## A049657.P17153711662002902654

`A004696(A017101(n))`
-/

namespace A049657.P17153711662002902654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (A017101 n).toNat

end

end A049657.P17153711662002902654

namespace A049657

/-- `A004696(A017101(n))` -/
def P17153711662002902654.Spec : Prop :=
  ∀ n, P17153711662002902654.a n = A049657 n

end A049657

/-! ## A049657.P10081336294914755337

`A004696(Δ[A033991(n)])`
-/

namespace A049657.P10081336294914755337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (f1 (n + 1) - f1 n).toNat

end

end A049657.P10081336294914755337

namespace A049657

/-- `A004696(Δ[A033991(n)])` -/
def P10081336294914755337.Spec : Prop :=
  ∀ n, P10081336294914755337.a n = A049657 n

end A049657

/-! ## A049657.P12661321465984775534

`A004696(A017077(n)+2)`
-/

namespace A049657.P12661321465984775534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (A017077 n + 2).toNat

end

end A049657.P12661321465984775534

namespace A049657

/-- `A004696(A017077(n)+2)` -/
def P12661321465984775534.Spec : Prop :=
  ∀ n, P12661321465984775534.a n = A049657 n

end A049657

/-! ## A049657.P12491803778743895986

`A004696(A004771(n)-4)`
-/

namespace A049657.P12491803778743895986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (A004771 n - 4).toNat

end

end A049657.P12491803778743895986

namespace A049657

/-- `A004696(A004771(n)-4)` -/
def P12491803778743895986.Spec : Prop :=
  ∀ n, P12491803778743895986.a n = A049657 n

end A049657

/-! ## A049657.P4993963987240408972

`A004696(or(2, A017077(n)))`
-/

namespace A049657.P4993963987240408972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (Int.lor 2 (A017077 n)).toNat

end

end A049657.P4993963987240408972

namespace A049657

/-- `A004696(or(2, A017077(n)))` -/
def P4993963987240408972.Spec : Prop :=
  ∀ n, P4993963987240408972.a n = A049657 n

end A049657

/-! ## A049657.P10389237825249628338

`A004696(xor(2, A017077(n)))`
-/

namespace A049657.P10389237825249628338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (Int.xor 2 (A017077 n)).toNat

end

end A049657.P10389237825249628338

namespace A049657

/-- `A004696(xor(2, A017077(n)))` -/
def P10389237825249628338.Spec : Prop :=
  ∀ n, P10389237825249628338.a n = A049657 n

end A049657

/-!
# A049658: a(n) = (F(8*n+5) - 2)/3, where F = A000045 (the Fibonacci sequence).

The programs for A049658, the canonical program `A049658.P15367982729611053734` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049658 has offset 0).

The definition of A049658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049658.P15367982729611053734

`(A000045(8*n+5)-2)/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049658

/-- `(A000045(8*n+5)-2)/3` -/
def P15367982729611053734.Spec : Prop :=
  ∀ n, P15367982729611053734.a n = (A049658 n : ℚ)

end A049658

/-! ## A049658.P4621779739757809188

`∑[A056914(2*n)]`
-/

namespace A049658.P4621779739757809188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049658.P4621779739757809188

namespace A049658

/-- `∑[A056914(2*n)]` -/
def P4621779739757809188.Spec : Prop :=
  ∀ n, P4621779739757809188.a n = A049658 n

end A049658

/-! ## A049658.P12525359376038577808

`∑[A002878(4*n)]`
-/

namespace A049658.P12525359376038577808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049658.P12525359376038577808

namespace A049658

/-- `∑[A002878(4*n)]` -/
def P12525359376038577808.Spec : Prop :=
  ∀ n, P12525359376038577808.a n = A049658 n

end A049658

/-! ## A049658.P1252182209058205553

`∑[A075193(8*n)]`
-/

namespace A049658.P1252182209058205553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049658.P1252182209058205553

namespace A049658

/-- `∑[A075193(8*n)]` -/
def P1252182209058205553.Spec : Prop :=
  ∀ n, P1252182209058205553.a n = A049658 n

end A049658

/-! ## A049658.P647783568857694987

`floor(ϕ*A049678(n))`
-/

namespace A049658.P647783568857694987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A049678 n : ℝ)⌋

end

end A049658.P647783568857694987

namespace A049658

/-- `floor(ϕ*A049678(n))` -/
def P647783568857694987.Spec : Prop :=
  ∀ n, P647783568857694987.a n = A049658 n

end A049658

/-! ## A049658.P9652525758182308273

`A094569(2*n)-1`
-/

namespace A049658.P9652525758182308273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094569 (2 * n) - 1

end

end A049658.P9652525758182308273

namespace A049658

/-- `A094569(2*n)-1` -/
def P9652525758182308273.Spec : Prop :=
  ∀ n, P9652525758182308273.a n = A049658 n

end A049658

/-! ## A049658.P3874235799527136008

`∑[A000032(8*n+1)]`
-/

namespace A049658.P3874235799527136008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (8 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049658.P3874235799527136008

namespace A049658

/-- `∑[A000032(8*n+1)]` -/
def P3874235799527136008.Spec : Prop :=
  ∀ n, P3874235799527136008.a n = A049658 n

end A049658

/-! ## A049658.P2634177277581949739

`A081012(2*n+1)/3`
-/

namespace A049658.P2634177277581949739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081012 (2 * n + 1) : ℚ) / 3

end

end A049658.P2634177277581949739

namespace A049658

/-- `A081012(2*n+1)/3` -/
def P2634177277581949739.Spec : Prop :=
  ∀ n, P2634177277581949739.a n = (A049658 n : ℚ)

end A049658

/-! ## A049658.P17026079247076657902

`A295674(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A049658.P17026079247076657902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295674 (8 * n) + a (n - 1)

end

end A049658.P17026079247076657902

namespace A049658

/-- `A295674(8*n)+a(n-1)` -/
def P17026079247076657902.Spec : Prop :=
  ∀ n, P17026079247076657902.a n = A049658 n

end A049658

/-! ## A049658.P9898573625382571051

`A056914(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A049658.P9898573625382571051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056914 (n + n) + a (n - 1)

end

end A049658.P9898573625382571051

namespace A049658

/-- `A056914(n+n)+a(n-1)` -/
def P9898573625382571051.Spec : Prop :=
  ∀ n, P9898573625382571051.a n = A049658 n

end A049658

/-!
# A049659: a(n) = (F(8*n+6) - 2)/3, where F=A000045 (the Fibonacci sequence).

The programs for A049659, the canonical program `A049659.P9645754329853282149` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049659 has offset 0).

The definition of A049659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049659.P9645754329853282149

`(A000045(8*n+6)-2)/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049659

/-- `(A000045(8*n+6)-2)/3` -/
def P9645754329853282149.Spec : Prop :=
  ∀ n, P9645754329853282149.a n = (A049659 n : ℚ)

end A049659

/-! ## A049659.P9909182268565183545

`floor(∑[(ϕ^(2*n+2*n+1))²])`
-/

namespace A049659.P9909182268565183545
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio ^ (2 * n + (2 * n + 1))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A049659.P9909182268565183545

namespace A049659

/-- `floor(∑[(ϕ^(2*n+2*n+1))²])` -/
def P9909182268565183545.Spec : Prop :=
  ∀ n, P9909182268565183545.a n = A049659 n

end A049659

/-! ## A049659.P3742095334097059437

`∑[A288219(8*n)]`
-/

namespace A049659.P3742095334097059437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049659.P3742095334097059437

namespace A049659

/-- `∑[A288219(8*n)]` -/
def P3742095334097059437.Spec : Prop :=
  ∀ n, P3742095334097059437.a n = A049659 n

end A049659

/-! ## A049659.P8779887192290003090

`Δ[record[∑[A156089(n)]]]`
-/

namespace A049659.P8779887192290003090
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049659.P8779887192290003090

namespace A049659

/-- `Δ[record[∑[A156089(n)]]]` -/
def P8779887192290003090.Spec : Prop :=
  ∀ n, P8779887192290003090.a n = A049659 n

end A049659

/-! ## A049659.P2928960112575420988

`A099484(4*n+2)`
-/

namespace A049659.P2928960112575420988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099484 (4 * n + 2)

end

end A049659.P2928960112575420988

namespace A049659

/-- `A099484(4*n+2)` -/
def P2928960112575420988.Spec : Prop :=
  ∀ n, P2928960112575420988.a n = A049659 n

end A049659

/-! ## A049659.P8389236140459718077

`A387782(3*(n+1)+n)`
-/

namespace A049659.P8389236140459718077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387782 (3 * (n + 1) + n)

end

end A049659.P8389236140459718077

namespace A049659

/-- `A387782(3*(n+1)+n)` -/
def P8389236140459718077.Spec : Prop :=
  ∀ n, P8389236140459718077.a n = A049659 n

end A049659

/-! ## A049659.P3171935995994289136

`∑[A000032(8*n+2)]-1`
-/

namespace A049659.P3171935995994289136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (8 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049659.P3171935995994289136

namespace A049659

/-- `∑[A000032(8*n+2)]-1` -/
def P3171935995994289136.Spec : Prop :=
  ∀ n, P3171935995994289136.a n = A049659 n

end A049659

/-! ## A049659.P11483255839634310532

`∑[A081071(2*n)]+2*n+1`
-/

namespace A049659.P11483255839634310532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081071 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A049659.P11483255839634310532

namespace A049659

/-- `∑[A081071(2*n)]+2*n+1` -/
def P11483255839634310532.Spec : Prop :=
  ∀ n, P11483255839634310532.a n = A049659 n

end A049659

/-! ## A049659.P17713894532633234384

`A000032(2*(2*n+2*n+1))+a(n-1)` with `a(0)=2`
-/

namespace A049659.P17713894532633234384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000032 (2 * (2 * n + (2 * n + 1))) + a (n - 1)

end

end A049659.P17713894532633234384

namespace A049659

/-- `A000032(2*(2*n+2*n+1))+a(n-1)` -/
def P17713894532633234384.Spec : Prop :=
  ∀ n, P17713894532633234384.a n = A049659 n

end A049659

/-! ## A049659.P12091408564067173886

`∑[A000032(2*n+2*n+1)²]+2*n+1`
-/

namespace A049659.P12091408564067173886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + (2 * n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A049659.P12091408564067173886

namespace A049659

/-- `∑[A000032(2*n+2*n+1)²]+2*n+1` -/
def P12091408564067173886.Spec : Prop :=
  ∀ n, P12091408564067173886.a n = A049659 n

end A049659

/-!
# A049660: a(n) = Fibonacci(6*n)/8.

The programs for A049660, the canonical program `A049660.P3237877005541122845` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049660 has offset 0).

The definition of A049660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049660.P3237877005541122845

`18*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049660

/-- `18*a(n-1)-a(n-2)` -/
def P3237877005541122845.Spec : Prop :=
  ∀ n, P3237877005541122845.a n = A049660 n

theorem P3237877005541122845.correct : P3237877005541122845.Spec := by
  intro n
  simp only [A049660]

end A049660

/-! ## A049660.P5147259000696455676

`A134492(n)/8`
-/

namespace A049660.P5147259000696455676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134492 n : ℚ) / 8

end

end A049660.P5147259000696455676

namespace A049660

/-- `A134492(n)/8` -/
def P5147259000696455676.Spec : Prop :=
  ∀ n, P5147259000696455676.a n = (A049660 n : ℚ)

end A049660

/-! ## A049660.P18266088320235951665

`A001076(2*n)/4`
-/

namespace A049660.P18266088320235951665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (2 * n) : ℚ) / 4

end

end A049660.P18266088320235951665

namespace A049660

/-- `A001076(2*n)/4` -/
def P18266088320235951665.Spec : Prop :=
  ∀ n, P18266088320235951665.a n = (A049660 n : ℚ)

end A049660

/-! ## A049660.P12430973062968171225

`A000045(6*n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049660.P12430973062968171225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n) : ℚ) / 8

end

end A049660.P12430973062968171225

namespace A049660

/-- `A000045(6*n)/8` -/
def P12430973062968171225.Spec : Prop :=
  ∀ n, P12430973062968171225.a n = (A049660 n : ℚ)

end A049660

/-! ## A049660.P14361328851314358290

`((9+4*sqrt(5))^n-(9-4*sqrt(5))^n)/(8*sqrt(5))`
-/

namespace A049660.P14361328851314358290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + 4 * Real.sqrt (5 : ℝ)) ^ n - (9 - 4 * Real.sqrt (5 : ℝ)) ^ n) / (8 * Real.sqrt (5 : ℝ))

end

end A049660.P14361328851314358290

namespace A049660

/-- `((9+4*sqrt(5))^n-(9-4*sqrt(5))^n)/(8*sqrt(5))` -/
def P14361328851314358290.Spec : Prop :=
  ∀ n, P14361328851314358290.a n = (A049660 n : ℝ)

theorem P14361328851314358290.correct : P14361328851314358290.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049660, Nat.add_sub_cancel, A049660.P14361328851314358290.a, A049660.P3237877005541122845.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049660, Nat.add_sub_cancel, A049660.P14361328851314358290.a, A049660.P3237877005541122845.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A049660

/-! ## A049660.P5511315182948725243

`ogf(x/(1-18x+x^2))`
-/

namespace A049660.P5511315182948725243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -18, 1] n

end

end A049660.P5511315182948725243

namespace A049660

/-- `ogf(x/(1-18x+x^2))` -/
def P5511315182948725243.Spec : Prop :=
  ∀ n, P5511315182948725243.a n = A049660 n

end A049660

/-! ## A049660.P11147378449611925568

`∑[A001076(A004273(n))]`
-/

namespace A049660.P11147378449611925568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049660.P11147378449611925568

namespace A049660

/-- `∑[A001076(A004273(n))]` -/
def P11147378449611925568.Spec : Prop :=
  ∀ n, P11147378449611925568.a n = A049660 n

end A049660

/-! ## A049660.P12622303444995727474

`A033313(n+1)/A180495(n+2)*A207832(n)`
-/

namespace A049660.P12622303444995727474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033313 (n + 1) : ℚ) / (A180495 (n + 2) : ℚ) * (A207832 n : ℚ)

end

end A049660.P12622303444995727474

namespace A049660

/-- `A033313(n+1)/A180495(n+2)*A207832(n)` -/
def P12622303444995727474.Spec : Prop :=
  ∀ n, P12622303444995727474.a n = (A049660 n : ℚ)

end A049660

/-! ## A049660.P6390157711490649684

`A041143(2*n+1)-A041143(2*n)`
-/

namespace A049660.P6390157711490649684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041143 (2 * n + 1) - A041143 (2 * n)

end

end A049660.P6390157711490649684

namespace A049660

/-- `A041143(2*n+1)-A041143(2*n)` -/
def P6390157711490649684.Spec : Prop :=
  ∀ n, P6390157711490649684.a n = A049660 n

end A049660

/-! ## A049660.P596435889668987678

`A085348(2*n+1)-A085349(2*(n+1))`
-/

namespace A049660.P596435889668987678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085348 (2 * n + 1) - A085349 (2 * (n + 1))

end

end A049660.P596435889668987678

namespace A049660

/-- `A085348(2*n+1)-A085349(2*(n+1))` -/
def P596435889668987678.Spec : Prop :=
  ∀ n, P596435889668987678.a n = A049660 n

end A049660

/-!
# A049661: a(n) = (Fibonacci(6*n+1) - 1)/4.

The programs for A049661, the canonical program `A049661.P9557949667344338884` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049661 has offset 0).

The definition of A049661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049661.P9557949667344338884

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=58`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049661

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P9557949667344338884.Spec : Prop :=
  ∀ n, P9557949667344338884.a n = A049661 n

theorem P9557949667344338884.correct : P9557949667344338884.Spec := by
  intro n
  simp only [A049661]

end A049661

/-! ## A049661.P4958004418791053679

`(A000045(6*n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049661.P4958004418791053679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 1) - 1 : ℚ) / 4

end

end A049661.P4958004418791053679

namespace A049661

/-- `(A000045(6*n+1)-1)/4` -/
def P4958004418791053679.Spec : Prop :=
  ∀ n, P4958004418791053679.a n = (A049661 n : ℚ)

end A049661

/-! ## A049661.P6800019066958811952

`∑[record[floor(-(ϕ^3*a(n-1)))]]` with `a(0)=0, a(1)=3`
-/

namespace A049661.P6800019066958811952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  ⌊-(Real.goldenRatio ^ 3 * (f2 (n - 1) : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049661.P6800019066958811952

namespace A049661

/-- `∑[record[floor(-(ϕ^3*a(n-1)))]]` -/
def P6800019066958811952.Spec : Prop :=
  ∀ n, P6800019066958811952.a n = A049661 n

end A049661

/-! ## A049661.P2856916756601250500

`A110526(2*n)`
-/

namespace A049661.P2856916756601250500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 (2 * n)

end

end A049661.P2856916756601250500

namespace A049661

/-- `A110526(2*n)` -/
def P2856916756601250500.Spec : Prop :=
  ∀ n, P2856916756601250500.a n = A049661 n

end A049661

/-! ## A049661.P15810059313816382592

`∑[A102875(6*n)]`
-/

namespace A049661.P15810059313816382592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049661.P15810059313816382592

namespace A049661

/-- `∑[A102875(6*n)]` -/
def P15810059313816382592.Spec : Prop :=
  ∀ n, P15810059313816382592.a n = A049661 n

end A049661

/-! ## A049661.P7930871437795449646

`floor(ϕ*A207832(n))`
-/

namespace A049661.P7930871437795449646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A207832 n : ℝ)⌋

end

end A049661.P7930871437795449646

namespace A049661

/-- `floor(ϕ*A207832(n))` -/
def P7930871437795449646.Spec : Prop :=
  ∀ n, P7930871437795449646.a n = A049661 n

end A049661

/-! ## A049661.P51631406998995803

`A049651(2*n)/2`
-/

namespace A049661.P51631406998995803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049651 (2 * n) : ℚ) / 2

end

end A049661.P51631406998995803

namespace A049661

/-- `A049651(2*n)/2` -/
def P51631406998995803.Spec : Prop :=
  ∀ n, P51631406998995803.a n = (A049661 n : ℚ)

end A049661

/-! ## A049661.P2783224891409870325

`A077259(2*n)/2`
-/

namespace A049661.P2783224891409870325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077259 (2 * n) : ℚ) / 2

end

end A049661.P2783224891409870325

namespace A049661

/-- `A077259(2*n)/2` -/
def P2783224891409870325.Spec : Prop :=
  ∀ n, P2783224891409870325.a n = (A049661 n : ℚ)

end A049661

/-! ## A049661.P323832598193003500

`floor(A232970(2*n)/2)`
-/

namespace A049661.P323832598193003500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A232970 (2 * n) : ℚ) / 2⌋

end

end A049661.P323832598193003500

namespace A049661

/-- `floor(A232970(2*n)/2)` -/
def P323832598193003500.Spec : Prop :=
  ∀ n, P323832598193003500.a n = A049661 n

end A049661

/-! ## A049661.P10892070104386043183

`floor(ϕ*A000045(6*n)/4)`
-/

namespace A049661.P10892070104386043183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((A000045 (6 * n) : ℚ) / 4 : ℝ)⌋

end

end A049661.P10892070104386043183

namespace A049661

/-- `floor(ϕ*A000045(6*n)/4)` -/
def P10892070104386043183.Spec : Prop :=
  ∀ n, P10892070104386043183.a n = A049661 n

end A049661

/-!
# A049662: a(n) = (F(6*n+2)-1)/4, where F=A000045 (the Fibonacci sequence).

The programs for A049662, the canonical program `A049662.P12129507738377797945` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049662 has offset 0).

The definition of A049662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049662.P12129507738377797945

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=5, a(2)=94`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049662

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P12129507738377797945.Spec : Prop :=
  ∀ n, P12129507738377797945.a n = A049662 n

theorem P12129507738377797945.correct : P12129507738377797945.Spec := by
  intro n
  simp only [A049662]

end A049662

/-! ## A049662.P2190484840180185911

`(A000045(6*n+2)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049662.P2190484840180185911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 2) - 1 : ℚ) / 4

end

end A049662.P2190484840180185911

namespace A049662

/-- `(A000045(6*n+2)-1)/4` -/
def P2190484840180185911.Spec : Prop :=
  ∀ n, P2190484840180185911.a n = (A049662 n : ℚ)

end A049662

/-! ## A049662.P9800036527122519165

`∑[18*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=5, a(2)=89`
-/

namespace A049662.P9800036527122519165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 89] fun n f1 =>
  18 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049662.P9800036527122519165

namespace A049662

/-- `∑[18*a(n-1)-a(n-2)]` -/
def P9800036527122519165.Spec : Prop :=
  ∀ n, P9800036527122519165.a n = A049662 n

end A049662

/-! ## A049662.P8004719167198352176

`A049652(2*n)`
-/

namespace A049662.P8004719167198352176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 (2 * n)

end

end A049662.P8004719167198352176

namespace A049662

/-- `A049652(2*n)` -/
def P8004719167198352176.Spec : Prop :=
  ∀ n, P8004719167198352176.a n = A049662 n

end A049662

/-! ## A049662.P16510697240226801504

`A182890(3*n)`
-/

namespace A049662.P16510697240226801504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182890 (3 * n)

end

end A049662.P16510697240226801504

namespace A049662

/-- `A182890(3*n)` -/
def P16510697240226801504.Spec : Prop :=
  ∀ n, P16510697240226801504.a n = A049662 n

end A049662

/-! ## A049662.P14618210019922123928

`ceil(A053606(n)/ϕ)`
-/

namespace A049662.P14618210019922123928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053606 n : ℝ) / Real.goldenRatio⌉

end

end A049662.P14618210019922123928

namespace A049662

/-- `ceil(A053606(n)/ϕ)` -/
def P14618210019922123928.Spec : Prop :=
  ∀ n, P14618210019922123928.a n = A049662 n

end A049662

/-! ## A049662.P3325984907009561987

`∑[A015448(2*n)]-1`
-/

namespace A049662.P3325984907009561987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015448 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049662.P3325984907009561987

namespace A049662

/-- `∑[A015448(2*n)]-1` -/
def P3325984907009561987.Spec : Prop :=
  ∀ n, P3325984907009561987.a n = A049662 n

end A049662

/-! ## A049662.P12276087533783104192

`∑[ceil(A000045(6*n)/ϕ)]`
-/

namespace A049662.P12276087533783104192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (6 * n) : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049662.P12276087533783104192

namespace A049662

/-- `∑[ceil(A000045(6*n)/ϕ)]` -/
def P12276087533783104192.Spec : Prop :=
  ∀ n, P12276087533783104192.a n = A049662 n

end A049662

/-! ## A049662.P3653531330858145105

`A004697(A016933(n))`
-/

namespace A049662.P3653531330858145105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (A016933 n).toNat

end

end A049662.P3653531330858145105

namespace A049662

/-- `A004697(A016933(n))` -/
def P3653531330858145105.Spec : Prop :=
  ∀ n, P3653531330858145105.a n = A049662 n

end A049662

/-! ## A049662.P17903180893169623978

`A004697(A016921(n)+1)`
-/

namespace A049662.P17903180893169623978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (A016921 n + 1).toNat

end

end A049662.P17903180893169623978

namespace A049662

/-- `A004697(A016921(n)+1)` -/
def P17903180893169623978.Spec : Prop :=
  ∀ n, P17903180893169623978.a n = A049662 n

end A049662

/-!
# A049663: a(n) = (F(6*n+5) - 1)/4, where F = A000045 (the Fibonacci sequence).

The programs for A049663, the canonical program `A049663.P6559661186756473221` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049663 has offset 0).

The definition of A049663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049663.P6559661186756473221

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=1, a(1)=22, a(2)=399`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049663

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P6559661186756473221.Spec : Prop :=
  ∀ n, P6559661186756473221.a n = A049663 n

theorem P6559661186756473221.correct : P6559661186756473221.Spec := by
  intro n
  simp only [A049663]

end A049663

/-! ## A049663.P12346873655548351328

`(A000045(6*n+5)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049663.P12346873655548351328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 5) - 1 : ℚ) / 4

end

end A049663.P12346873655548351328

namespace A049663

/-- `(A000045(6*n+5)-1)/4` -/
def P12346873655548351328.Spec : Prop :=
  ∀ n, P12346873655548351328.a n = (A049663 n : ℚ)

end A049663

/-! ## A049663.P5913342473656152294

`A049664(n+1)+3*A049664(n)`
-/

namespace A049663.P5913342473656152294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049664 (n + 1) + 3 * A049664 n

end

end A049663.P5913342473656152294

namespace A049663

/-- `A049664(n+1)+3*A049664(n)` -/
def P5913342473656152294.Spec : Prop :=
  ∀ n, P5913342473656152294.a n = A049663 n

end A049663

/-! ## A049663.P11673681633149347894

`∑[ogf((1+3x)/(1-18x+x^2))]`
-/

namespace A049663.P11673681633149347894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -18, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049663.P11673681633149347894

namespace A049663

/-- `∑[ogf((1+3x)/(1-18x+x^2))]` -/
def P11673681633149347894.Spec : Prop :=
  ∀ n, P11673681633149347894.a n = A049663 n

end A049663

/-! ## A049663.P6583096749804110164

`∑[record[floor(-(ϕ^3*a(n-1)))]]` with `a(0)=1`
-/

namespace A049663.P6583096749804110164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  ⌊-(Real.goldenRatio ^ 3 * (f2 (n - 1) : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049663.P6583096749804110164

namespace A049663

/-- `∑[record[floor(-(ϕ^3*a(n-1)))]]` -/
def P6583096749804110164.Spec : Prop :=
  ∀ n, P6583096749804110164.a n = A049663 n

end A049663

/-! ## A049663.P10465555707159759389

`∑[18*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=21`
-/

namespace A049663.P10465555707159759389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  18 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049663.P10465555707159759389

namespace A049663

/-- `∑[18*a(n-1)-a(n-2)]` -/
def P10465555707159759389.Spec : Prop :=
  ∀ n, P10465555707159759389.a n = A049663 n

end A049663

/-! ## A049663.P18429515368004197147

`∑[A134494(n)]`
-/

namespace A049663.P18429515368004197147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049663.P18429515368004197147

namespace A049663

/-- `∑[A134494(n)]` -/
def P18429515368004197147.Spec : Prop :=
  ∀ n, P18429515368004197147.a n = A049663 n

end A049663

/-! ## A049663.P2550058128602790520

`A213044(6*n)`
-/

namespace A049663.P2550058128602790520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213044 (6 * n)

end

end A049663.P2550058128602790520

namespace A049663

/-- `A213044(6*n)` -/
def P2550058128602790520.Spec : Prop :=
  ∀ n, P2550058128602790520.a n = A049663 n

end A049663

/-! ## A049663.P9062740735536127633

`A049652(Δ[n²])`
-/

namespace A049663.P9062740735536127633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049663.P9062740735536127633

namespace A049663

/-- `A049652(Δ[n²])` -/
def P9062740735536127633.Spec : Prop :=
  ∀ n, P9062740735536127633.a n = A049663 n

end A049663

/-! ## A049663.P11901175314281582330

`∑[record[A099843(n)]]`
-/

namespace A049663.P11901175314281582330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049663.P11901175314281582330

namespace A049663

/-- `∑[record[A099843(n)]]` -/
def P11901175314281582330.Spec : Prop :=
  ∀ n, P11901175314281582330.a n = A049663 n

end A049663

/-!
# A049664: a(n) = (F(6*n+3) - 2)/32, where F = A000045 (the Fibonacci sequence).

The programs for A049664, the canonical program `A049664.P2325392752604248159` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049664 has offset 0).

The definition of A049664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049664.P2325392752604248159

`18*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049664

/-- `18*a(n-1)-a(n-2)+1` -/
def P2325392752604248159.Spec : Prop :=
  ∀ n, P2325392752604248159.a n = A049664 n

theorem P2325392752604248159.correct : P2325392752604248159.Spec := by
  intro n
  simp only [A049664]

end A049664

/-! ## A049664.P13591839155948885417

`(A000045(6*n+3)-2)/32`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049664.P13591839155948885417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 3) - 2 : ℚ) / 32

end

end A049664.P13591839155948885417

namespace A049664

/-- `(A000045(6*n+3)-2)/32` -/
def P13591839155948885417.Spec : Prop :=
  ∀ n, P13591839155948885417.a n = (A049664 n : ℚ)

end A049664

/-! ## A049664.P3505983693476389596

`∑[ogf(x/(1-18x+x^2))]`
-/

namespace A049664.P3505983693476389596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -18, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049664.P3505983693476389596

namespace A049664

/-- `∑[ogf(x/(1-18x+x^2))]` -/
def P3505983693476389596.Spec : Prop :=
  ∀ n, P3505983693476389596.a n = A049664 n

end A049664

/-! ## A049664.P10635662950714390207

`∑[18*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A049664.P10635662950714390207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  18 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049664.P10635662950714390207

namespace A049664

/-- `∑[18*a(n-1)-a(n-2)]` -/
def P10635662950714390207.Spec : Prop :=
  ∀ n, P10635662950714390207.a n = A049664 n

end A049664

/-! ## A049664.P16567927543768233981

`∑[A049660(n)]`
-/

namespace A049664.P16567927543768233981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049664.P16567927543768233981

namespace A049664

/-- `∑[A049660(n)]` -/
def P16567927543768233981.Spec : Prop :=
  ∀ n, P16567927543768233981.a n = A049664 n

end A049664

/-! ## A049664.P4370146249407635233

`A053606(n)/8`
-/

namespace A049664.P4370146249407635233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053606 n : ℚ) / 8

end

end A049664.P4370146249407635233

namespace A049664

/-- `A053606(n)/8` -/
def P4370146249407635233.Spec : Prop :=
  ∀ n, P4370146249407635233.a n = (A049664 n : ℚ)

end A049664

/-! ## A049664.P3977493406320010598

`∑[A207832(n)/2]`
-/

namespace A049664.P3977493406320010598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207832 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049664.P3977493406320010598

namespace A049664

/-- `∑[A207832(n)/2]` -/
def P3977493406320010598.Spec : Prop :=
  ∀ n, P3977493406320010598.a n = (A049664 n : ℚ)

end A049664

/-! ## A049664.P18284873583353690894

`∑[A060645(n)/4]`
-/

namespace A049664.P18284873583353690894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060645 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049664.P18284873583353690894

namespace A049664

/-- `∑[A060645(n)/4]` -/
def P18284873583353690894.Spec : Prop :=
  ∀ n, P18284873583353690894.a n = (A049664 n : ℚ)

end A049664

/-! ## A049664.P14762657005175923327

`∑[A001076(2*n)/4]`
-/

namespace A049664.P14762657005175923327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (2 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049664.P14762657005175923327

namespace A049664

/-- `∑[A001076(2*n)/4]` -/
def P14762657005175923327.Spec : Prop :=
  ∀ n, P14762657005175923327.a n = (A049664 n : ℚ)

end A049664

/-! ## A049664.P2599964909428252094

`∑[A000045(6*n)/8]`
-/

namespace A049664.P2599964909428252094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049664.P2599964909428252094

namespace A049664

/-- `∑[A000045(6*n)/8]` -/
def P2599964909428252094.Spec : Prop :=
  ∀ n, P2599964909428252094.a n = (A049664 n : ℚ)

end A049664

/-!
# A049665: a(n) = (F(6*n+4) - 3)/4, where F=A000045 (the Fibonacci sequence).

The programs for A049665, the canonical program `A049665.P4040211216738765708` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049665 has offset 0).

The definition of A049665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049665.P4040211216738765708

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=13, a(2)=246`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049665

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P4040211216738765708.Spec : Prop :=
  ∀ n, P4040211216738765708.a n = A049665 n

theorem P4040211216738765708.correct : P4040211216738765708.Spec := by
  intro n
  simp only [A049665]

end A049665

/-! ## A049665.P18181353059135947980

`(A000045(6*n+4)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049665.P18181353059135947980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (6 * n + 4) - 3 : ℚ) / 4

end

end A049665.P18181353059135947980

namespace A049665

/-- `(A000045(6*n+4)-3)/4` -/
def P18181353059135947980.Spec : Prop :=
  ∀ n, P18181353059135947980.a n = (A049665 n : ℚ)

end A049665

/-! ## A049665.P11375918525169616358

`∑[ogf((1-5x)/(1-18x+x^2))]-1`
-/

namespace A049665.P11375918525169616358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5] [1, -18, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049665.P11375918525169616358

namespace A049665

/-- `∑[ogf((1-5x)/(1-18x+x^2))]-1` -/
def P11375918525169616358.Spec : Prop :=
  ∀ n, P11375918525169616358.a n = A049665 n

end A049665

/-! ## A049665.P14392409402872795741

`floor(A103134(n)/4)`
-/

namespace A049665.P14392409402872795741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A103134 n : ℚ) / 4⌋

end

end A049665.P14392409402872795741

namespace A049665

/-- `floor(A103134(n)/4)` -/
def P14392409402872795741.Spec : Prop :=
  ∀ n, P14392409402872795741.a n = A049665 n

end A049665

/-! ## A049665.P14541721878409626572

`∑[A134493(n)]-1`
-/

namespace A049665.P14541721878409626572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049665.P14541721878409626572

namespace A049665

/-- `∑[A134493(n)]-1` -/
def P14541721878409626572.Spec : Prop :=
  ∀ n, P14541721878409626572.a n = A049665 n

end A049665

/-! ## A049665.P8604647834403073550

`A110526(Δ[n²])-1`
-/

namespace A049665.P8604647834403073550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A049665.P8604647834403073550

namespace A049665

/-- `A110526(Δ[n²])-1` -/
def P8604647834403073550.Spec : Prop :=
  ∀ n, P8604647834403073550.a n = A049665 n

end A049665

/-! ## A049665.P8134267624032212535

`∑[A033887(2*n)]-1`
-/

namespace A049665.P8134267624032212535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049665.P8134267624032212535

namespace A049665

/-- `∑[A033887(2*n)]-1` -/
def P8134267624032212535.Spec : Prop :=
  ∀ n, P8134267624032212535.a n = A049665 n

end A049665

/-! ## A049665.P16934862754186377548

`∑[A000045(6*n+1)]-1`
-/

namespace A049665.P16934862754186377548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049665.P16934862754186377548

namespace A049665

/-- `∑[A000045(6*n+1)]-1` -/
def P16934862754186377548.Spec : Prop :=
  ∀ n, P16934862754186377548.a n = A049665 n

end A049665

/-! ## A049665.P15857435984072952153

`A000045(2*n+2*n+2*n+1)+a(n-1)` with `a(0)=0`
-/

namespace A049665.P15857435984072952153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * n + (2 * n + (2 * n + 1))) + a (n - 1)

end

end A049665.P15857435984072952153

namespace A049665

/-- `A000045(2*n+2*n+2*n+1)+a(n-1)` -/
def P15857435984072952153.Spec : Prop :=
  ∀ n, P15857435984072952153.a n = A049665 n

end A049665

/-! ## A049665.P15263554770001958181

`A004697(A016957(n))`
-/

namespace A049665.P15263554770001958181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (A016957 n).toNat

end

end A049665.P15263554770001958181

namespace A049665

/-- `A004697(A016957(n))` -/
def P15263554770001958181.Spec : Prop :=
  ∀ n, P15263554770001958181.a n = A049665 n

end A049665

/-!
# A049666: a(n) = Fibonacci(5*n)/5.

The programs for A049666, the canonical program `A049666.P213772639482346607` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049666 has offset 0).

The definition of A049666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049666.P213772639482346607

`11*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049666

/-- `11*a(n-1)+a(n-2)` -/
def P213772639482346607.Spec : Prop :=
  ∀ n, (P213772639482346607.a n : ℤ) = A049666 n

theorem P213772639482346607.correct : P213772639482346607.Spec := by
  intro n
  simp only [A049666]

end A049666

/-! ## A049666.P12101707113921512918

`A102312(n)/5`
-/

namespace A049666.P12101707113921512918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102312 n : ℚ) / 5

end

end A049666.P12101707113921512918

namespace A049666

/-- `A102312(n)/5` -/
def P12101707113921512918.Spec : Prop :=
  ∀ n, P12101707113921512918.a n = (A049666 n : ℚ)

end A049666

/-! ## A049666.P7730057249676647302

`A000045(5*n)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049666.P7730057249676647302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (5 * n) : ℚ) / 5

end

end A049666.P7730057249676647302

namespace A049666

/-- `A000045(5*n)/5` -/
def P7730057249676647302.Spec : Prop :=
  ∀ n, P7730057249676647302.a n = (A049666 n : ℚ)

end A049666

/-! ## A049666.P1416087995151695963

`A000045(n)+(-1)^n*5*A000045(n)^3+5*A000045(n)^5`
-/

namespace A049666.P1416087995151695963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (-1) ^ n * 5 * A000045 n ^ 3 + 5 * A000045 n ^ 5

end

end A049666.P1416087995151695963

namespace A049666

/-- `A000045(n)+(-1)^n*5*A000045(n)^3+5*A000045(n)^5` -/
def P1416087995151695963.Spec : Prop :=
  ∀ n, P1416087995151695963.a n = A049666 n

end A049666

/-! ## A049666.P6771794475618119290

`((11+sqrt(125))^n-(11-sqrt(125))^n)/(2^n*sqrt(125))`
-/

namespace A049666.P6771794475618119290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + Real.sqrt (125 : ℝ)) ^ n - (11 - Real.sqrt (125 : ℝ)) ^ n) / ((2 ^ n : ℝ) * Real.sqrt (125 : ℝ))

end

end A049666.P6771794475618119290

namespace A049666

/-- `((11+sqrt(125))^n-(11-sqrt(125))^n)/(2^n*sqrt(125))` -/
def P6771794475618119290.Spec : Prop :=
  ∀ n, P6771794475618119290.a n = (A049666 n : ℝ)

theorem P6771794475618119290.correct : P6771794475618119290.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A049666, Nat.add_sub_cancel, A049666.P6771794475618119290.a, A049666.P213772639482346607.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A049666, Nat.add_sub_cancel, A049666.P6771794475618119290.a, A049666.P213772639482346607.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A049666

/-! ## A049666.P6487588490582064584

`ogf(x/(1-11x-x^2))`
-/

namespace A049666.P6487588490582064584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -11, -1] n

end

end A049666.P6487588490582064584

namespace A049666

/-- `ogf(x/(1-11x-x^2))` -/
def P6487588490582064584.Spec : Prop :=
  ∀ n, P6487588490582064584.a n = A049666 n

end A049666

/-! ## A049666.P290766131724531440

`round(ϕ^5*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A049666.P290766131724531440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 5 * (a (n - 1) : ℝ))

end

end A049666.P290766131724531440

namespace A049666

/-- `round(ϕ^5*a(n-1))` -/
def P290766131724531440.Spec : Prop :=
  ∀ n, P290766131724531440.a n = A049666 n

end A049666

/-! ## A049666.P3267017412759706316

`3*4*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A049666.P3267017412759706316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (4 * a (n - 1)) - (a (n - 1) - a (n - 2))

end

end A049666.P3267017412759706316

namespace A049666

/-- `3*4*a(n-1)-(a(n-1)-a(n-2))` -/
def P3267017412759706316.Spec : Prop :=
  ∀ n, P3267017412759706316.a n = A049666 n

end A049666

/-! ## A049666.P14543320817717206923

`A004698(5*n)`
-/

namespace A049666.P14543320817717206923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004698 (5 * n)

end

end A049666.P14543320817717206923

namespace A049666

/-- `A004698(5*n)` -/
def P14543320817717206923.Spec : Prop :=
  ∀ n, P14543320817717206923.a n = A049666 n

end A049666

/-! ## A049666.P5339826895263168834

`A293637(5*n)`
-/

namespace A049666.P5339826895263168834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293637 (5 * n)

end

end A049666.P5339826895263168834

namespace A049666

/-- `A293637(5*n)` -/
def P5339826895263168834.Spec : Prop :=
  ∀ n, P5339826895263168834.a n = A049666 n

end A049666

/-!
# A049667: a(n) = Fibonacci(7*n)/13.

The programs for A049667, the canonical program `A049667.P6697081628589609842` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049667 has offset 0).

The definition of A049667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049667.P6697081628589609842

`29*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049667

/-- `29*a(n-1)+a(n-2)` -/
def P6697081628589609842.Spec : Prop :=
  ∀ n, (P6697081628589609842.a n : ℤ) = A049667 n

theorem P6697081628589609842.correct : P6697081628589609842.Spec := by
  intro n
  simp only [A049667]

end A049667

/-! ## A049667.P8005364335869469054

`A134498(n)/13`
-/

namespace A049667.P8005364335869469054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134498 n : ℚ) / 13

end

end A049667.P8005364335869469054

namespace A049667

/-- `A134498(n)/13` -/
def P8005364335869469054.Spec : Prop :=
  ∀ n, P8005364335869469054.a n = (A049667 n : ℚ)

end A049667

/-! ## A049667.P14680539993614973533

`A000045(7*n)/13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049667.P14680539993614973533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (7 * n) : ℚ) / 13

end

end A049667.P14680539993614973533

namespace A049667

/-- `A000045(7*n)/13` -/
def P14680539993614973533.Spec : Prop :=
  ∀ n, P14680539993614973533.a n = (A049667 n : ℚ)

end A049667

/-! ## A049667.P4881344035377254239

`A103609(14*n)/13`
-/

namespace A049667.P4881344035377254239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 (14 * n) : ℚ) / 13

end

end A049667.P4881344035377254239

namespace A049667

/-- `A103609(14*n)/13` -/
def P4881344035377254239.Spec : Prop :=
  ∀ n, P4881344035377254239.a n = (A049667 n : ℚ)

end A049667

/-! ## A049667.P16684486397207671147

`A212804(7*n+1)/13`
-/

namespace A049667.P16684486397207671147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (7 * n + 1) : ℚ) / 13

end

end A049667.P16684486397207671147

namespace A049667

/-- `A212804(7*n+1)/13` -/
def P16684486397207671147.Spec : Prop :=
  ∀ n, P16684486397207671147.a n = (A049667 n : ℚ)

end A049667

/-! ## A049667.P1491745324834991870

`(A001611(7*n)-1)/13`
-/

namespace A049667.P1491745324834991870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (7 * n) - 1 : ℚ) / 13

end

end A049667.P1491745324834991870

namespace A049667

/-- `(A001611(7*n)-1)/13` -/
def P1491745324834991870.Spec : Prop :=
  ∀ n, P1491745324834991870.a n = (A049667 n : ℚ)

end A049667

/-! ## A049667.P3242391431025675804

`(A134500(n)-A134499(n))/13`
-/

namespace A049667.P3242391431025675804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134500 n - A134499 n : ℚ) / 13

end

end A049667.P3242391431025675804

namespace A049667

/-- `(A134500(n)-A134499(n))/13` -/
def P3242391431025675804.Spec : Prop :=
  ∀ n, P3242391431025675804.a n = (A049667 n : ℚ)

end A049667

/-! ## A049667.P16637591621119103267

`A134501(n)%A134499(n)/13`
-/

namespace A049667.P16637591621119103267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A134501 n) (A134499 n) : ℚ) / 13

end

end A049667.P16637591621119103267

namespace A049667

/-- `A134501(n)%A134499(n)/13` -/
def P16637591621119103267.Spec : Prop :=
  ∀ n, P16637591621119103267.a n = (A049667 n : ℚ)

end A049667

/-! ## A049667.P10641310713760437703

`lcm(A167808(7*n), A167816(n))/13`
-/

namespace A049667.P10641310713760437703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A167808 (7 * n)) (A167816 n) : ℚ) / 13

end

end A049667.P10641310713760437703

namespace A049667

/-- `lcm(A167808(7*n), A167816(n))/13` -/
def P10641310713760437703.Spec : Prop :=
  ∀ n, P10641310713760437703.a n = (A049667 n : ℚ)

end A049667

/-!
# A049668: a(n) = Fibonacci(8*n)/21.

The programs for A049668, the canonical program `A049668.P16865365341202603630` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049668 has offset 0).

The definition of A049668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049668.P16865365341202603630

`47*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049668

/-- `47*a(n-1)-a(n-2)` -/
def P16865365341202603630.Spec : Prop :=
  ∀ n, P16865365341202603630.a n = A049668 n

theorem P16865365341202603630.correct : P16865365341202603630.Spec := by
  intro n
  simp only [A049668]

end A049668

/-! ## A049668.P3494955436661999043

`A000045(8*n)/21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049668.P3494955436661999043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n) : ℚ) / 21

end

end A049668.P3494955436661999043

namespace A049668

/-- `A000045(8*n)/21` -/
def P3494955436661999043.Spec : Prop :=
  ∀ n, P3494955436661999043.a n = (A049668 n : ℚ)

end A049668

/-! ## A049668.P2963467399181451770

`(a(n-1)²-1)/a(n-2)` with `a(0)=0, a(1)=1, a(2)=47`
-/

namespace A049668.P2963467399181451770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 47] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A049668.P2963467399181451770

namespace A049668

/-- `(a(n-1)²-1)/a(n-2)` -/
def P2963467399181451770.Spec : Prop :=
  ∀ n, P2963467399181451770.a n = (A049668 n : ℚ)

end A049668

/-! ## A049668.P2565226986064992796

`A049686(n)/7`
-/

namespace A049668.P2565226986064992796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049686 n : ℚ) / 7

end

end A049668.P2565226986064992796

namespace A049668

/-- `A049686(n)/7` -/
def P2565226986064992796.Spec : Prop :=
  ∀ n, P2565226986064992796.a n = (A049668 n : ℚ)

end A049668

/-! ## A049668.P4973121151434326523

`A138473(n)/21`
-/

namespace A049668.P4973121151434326523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138473 n : ℚ) / 21

end

end A049668.P4973121151434326523

namespace A049668

/-- `A138473(n)/21` -/
def P4973121151434326523.Spec : Prop :=
  ∀ n, P4973121151434326523.a n = (A049668 n : ℚ)

end A049668

/-! ## A049668.P11357692316808380411

`A004187(2*n)/7`
-/

namespace A049668.P11357692316808380411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004187 (2 * n) : ℚ) / 7

end

end A049668.P11357692316808380411

namespace A049668

/-- `A004187(2*n)/7` -/
def P11357692316808380411.Spec : Prop :=
  ∀ n, P11357692316808380411.a n = (A049668 n : ℚ)

end A049668

/-! ## A049668.P15178024525713196894

`A212804(A017077(n))/21`
-/

namespace A049668.P15178024525713196894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (A017077 n).toNat : ℚ) / 21

end

end A049668.P15178024525713196894

namespace A049668

/-- `A212804(A017077(n))/21` -/
def P15178024525713196894.Spec : Prop :=
  ∀ n, P15178024525713196894.a n = (A049668 n : ℚ)

end A049668

/-!
# A049669: a(n) = Fibonacci(9*n)/34.

The programs for A049669, the canonical program `A049669.P8744081801925825536` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049669 has offset 0).

The definition of A049669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049669.P8744081801925825536

`76*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049669

/-- `76*a(n-1)+a(n-2)` -/
def P8744081801925825536.Spec : Prop :=
  ∀ n, (P8744081801925825536.a n : ℤ) = A049669 n

theorem P8744081801925825536.correct : P8744081801925825536.Spec := by
  intro n
  simp only [A049669]

end A049669

/-! ## A049669.P9037938638941278497

`A000045(9*n)/34`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049669.P9037938638941278497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (9 * n) : ℚ) / 34

end

end A049669.P9037938638941278497

namespace A049669

/-- `A000045(9*n)/34` -/
def P9037938638941278497.Spec : Prop :=
  ∀ n, P9037938638941278497.a n = (A049669 n : ℚ)

end A049669

/-! ## A049669.P170011300796653143

`77*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A049669.P170011300796653143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  77 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A049669.P170011300796653143

namespace A049669

/-- `77*a(n-1)-(a(n-1)-a(n-2))` -/
def P170011300796653143.Spec : Prop :=
  ∀ n, P170011300796653143.a n = A049669 n

end A049669

/-! ## A049669.P1731688230901250301

`A014445(3*n)/34`
-/

namespace A049669.P1731688230901250301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 (3 * n) : ℚ) / 34

end

end A049669.P1731688230901250301

namespace A049669

/-- `A014445(3*n)/34` -/
def P1731688230901250301.Spec : Prop :=
  ∀ n, P1731688230901250301.a n = (A049669 n : ℚ)

end A049669

/-! ## A049669.P2981552507332163293

`A117647(6*n)/34`
-/

namespace A049669.P2981552507332163293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117647 (6 * n) : ℚ) / 34

end

end A049669.P2981552507332163293

namespace A049669

/-- `A117647(6*n)/34` -/
def P2981552507332163293.Spec : Prop :=
  ∀ n, P2981552507332163293.a n = (A049669 n : ℚ)

end A049669

/-! ## A049669.P15465428688626146904

`A053602(3*6*n)/34`
-/

namespace A049669.P15465428688626146904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 (3 * (6 * n)) : ℚ) / 34

end

end A049669.P15465428688626146904

namespace A049669

/-- `A053602(3*6*n)/34` -/
def P15465428688626146904.Spec : Prop :=
  ∀ n, P15465428688626146904.a n = (A049669 n : ℚ)

end A049669

/-! ## A049669.P13272046193230619392

`A001076(A008585(n))/17`
-/

namespace A049669.P13272046193230619392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 (A008585 n).toNat : ℚ) / 17

end

end A049669.P13272046193230619392

namespace A049669

/-- `A001076(A008585(n))/17` -/
def P13272046193230619392.Spec : Prop :=
  ∀ n, P13272046193230619392.a n = (A049669 n : ℚ)

end A049669

/-! ## A049669.P9584086733718948793

`A059973(A008588(n))/17`
-/

namespace A049669.P9584086733718948793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059973 (A008588 n).toNat : ℚ) / 17

end

end A049669.P9584086733718948793

namespace A049669

/-- `A059973(A008588(n))/17` -/
def P9584086733718948793.Spec : Prop :=
  ∀ n, P9584086733718948793.a n = (A049669 n : ℚ)

end A049669

/-!
# A049670: a(n) = Fibonacci(10*n)/55.

The programs for A049670, the canonical program `A049670.P7639621242065437244` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049670 has offset 0).

The definition of A049670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049670.P7639621242065437244

`123*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049670

/-- `123*a(n-1)-a(n-2)` -/
def P7639621242065437244.Spec : Prop :=
  ∀ n, P7639621242065437244.a n = A049670 n

theorem P7639621242065437244.correct : P7639621242065437244.Spec := by
  intro n
  simp only [A049670]

end A049670

/-! ## A049670.P16450483901842714390

`A000045(10*n)/55`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049670.P16450483901842714390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (10 * n) : ℚ) / 55

end

end A049670.P16450483901842714390

namespace A049670

/-- `A000045(10*n)/55` -/
def P16450483901842714390.Spec : Prop :=
  ∀ n, P16450483901842714390.a n = (A049670 n : ℚ)

end A049670

/-! ## A049670.P12824852968408896603

`∑[A049666(A004273(n))]`
-/

namespace A049670.P12824852968408896603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049670.P12824852968408896603

namespace A049670

/-- `∑[A049666(A004273(n))]` -/
def P12824852968408896603.Spec : Prop :=
  ∀ n, P12824852968408896603.a n = A049670 n

end A049670

/-! ## A049670.P12392630737853948535

`A004698(A008592(n))/11`
-/

namespace A049670.P12392630737853948535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004698 (A008592 n).toNat : ℚ) / 11

end

end A049670.P12392630737853948535

namespace A049670

/-- `A004698(A008592(n))/11` -/
def P12392630737853948535.Spec : Prop :=
  ∀ n, P12392630737853948535.a n = (A049670 n : ℚ)

end A049670

/-! ## A049670.P4733379178512937161

`∑[A049666(record[A195938(n+1)])]`
-/

namespace A049670.P4733379178512937161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049666 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049670.P4733379178512937161

namespace A049670

/-- `∑[A049666(record[A195938(n+1)])]` -/
def P4733379178512937161.Spec : Prop :=
  ∀ n, P4733379178512937161.a n = A049670 n

end A049670

/-!
# A049671: a(n) = (F(n) + F(4*n))/2, where F=A000045 (the Fibonacci sequence).

The programs for A049671, the canonical program `A049671.P18145160272804093381` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049671 has offset 0).

The definition of A049671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049671.P18145160272804093381

`(A000045(4*n)+A000045(n))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049671

/-- `(A000045(4*n)+A000045(n))/2` -/
def P18145160272804093381.Spec : Prop :=
  ∀ n, P18145160272804093381.a n = (A049671 n : ℚ)

end A049671

/-! ## A049671.P6758360691811187394

`(A000045(n)+A000045(4*n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049671.P6758360691811187394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n + A000045 (4 * n) : ℚ) / 2

end

end A049671.P6758360691811187394

namespace A049671

/-- `(A000045(n)+A000045(4*n))/2` -/
def P6758360691811187394.Spec : Prop :=
  ∀ n, P6758360691811187394.a n = (A049671 n : ℚ)

end A049671

/-! ## A049671.P13365479765326664954

`A049672(n)+A000045(n)`
-/

namespace A049671.P13365479765326664954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049672 n + A000045 n

end

end A049671.P13365479765326664954

namespace A049671

/-- `A049672(n)+A000045(n)` -/
def P13365479765326664954.Spec : Prop :=
  ∀ n, P13365479765326664954.a n = A049671 n

end A049671

/-! ## A049671.P6287488439081373219

`(A033888(n)+A000045(n))/2`
-/

namespace A049671.P6287488439081373219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033888 n + A000045 n : ℚ) / 2

end

end A049671.P6287488439081373219

namespace A049671

/-- `(A033888(n)+A000045(n))/2` -/
def P6287488439081373219.Spec : Prop :=
  ∀ n, P6287488439081373219.a n = (A049671 n : ℚ)

end A049671

/-! ## A049671.P7286207986069266866

`A000045(4*n)-A049672(n)`
-/

namespace A049671.P7286207986069266866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n) - A049672 n

end

end A049671.P7286207986069266866

namespace A049671

/-- `A000045(4*n)-A049672(n)` -/
def P7286207986069266866.Spec : Prop :=
  ∀ n, P7286207986069266866.a n = A049671 n

end A049671

/-! ## A049671.P2789080816699703083

`(A212804(n+1)+A001906(2*n))/2`
-/

namespace A049671.P2789080816699703083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 1) + A001906 (2 * n) : ℚ) / 2

end

end A049671.P2789080816699703083

namespace A049671

/-- `(A212804(n+1)+A001906(2*n))/2` -/
def P2789080816699703083.Spec : Prop :=
  ∀ n, P2789080816699703083.a n = (A049671 n : ℚ)

end A049671

/-! ## A049671.P16547142003811360312

`(A103609(2*n)+A001906(2*n))/2`
-/

namespace A049671.P16547142003811360312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 (2 * n) + A001906 (2 * n) : ℚ) / 2

end

end A049671.P16547142003811360312

namespace A049671

/-- `(A103609(2*n)+A001906(2*n))/2` -/
def P16547142003811360312.Spec : Prop :=
  ∀ n, P16547142003811360312.a n = (A049671 n : ℚ)

end A049671

/-! ## A049671.P5148808513098715557

`A173673(2*n+1)+A173673(8*n)`
-/

namespace A049671.P5148808513098715557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n + 1) + A173673 (8 * n)

end

end A049671.P5148808513098715557

namespace A049671

/-- `A173673(2*n+1)+A173673(8*n)` -/
def P5148808513098715557.Spec : Prop :=
  ∀ n, P5148808513098715557.a n = A049671 n

end A049671

/-! ## A049671.P5267601610981908611

`A293014(A016825(n))+A004695(n)`
-/

namespace A049671.P5267601610981908611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (A016825 n).toNat + A004695 n

end

end A049671.P5267601610981908611

namespace A049671

/-- `A293014(A016825(n))+A004695(n)` -/
def P5267601610981908611.Spec : Prop :=
  ∀ n, P5267601610981908611.a n = A049671 n

end A049671

/-! ## A049671.P1743337107139812086

`A293014(2*A005408(n))+A004695(n)`
-/

namespace A049671.P1743337107139812086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (2 * A005408 n).toNat + A004695 n

end

end A049671.P1743337107139812086

namespace A049671

/-- `A293014(2*A005408(n))+A004695(n)` -/
def P1743337107139812086.Spec : Prop :=
  ∀ n, P1743337107139812086.a n = A049671 n

end A049671

/-! ## A049671.P243722745465588963

`(A022349(4*n)+A022349(n))/30`
-/

namespace A049671.P243722745465588963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022349 (4 * n) + A022349 n : ℚ) / 30

end

end A049671.P243722745465588963

namespace A049671

/-- `(A022349(4*n)+A022349(n))/30` -/
def P243722745465588963.Spec : Prop :=
  ∀ n, P243722745465588963.a n = (A049671 n : ℚ)

end A049671

/-!
# A049672: a(n) = (F(4*n) - F(n))/2, where F=A000045 (the Fibonacci sequence).

The programs for A049672, the canonical program `A049672.P632812308261817469` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049672 has offset 0).

The definition of A049672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049672.P632812308261817469

`(A000045(4*n)-A000045(n))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049672

/-- `(A000045(4*n)-A000045(n))/2` -/
def P632812308261817469.Spec : Prop :=
  ∀ n, P632812308261817469.a n = (A049672 n : ℚ)

end A049672

/-! ## A049672.P15975966321891206987

`A049671(n)-A000045(n)`
-/

namespace A049672.P15975966321891206987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049671 n - A000045 n

end

end A049672.P15975966321891206987

namespace A049672

/-- `A049671(n)-A000045(n)` -/
def P15975966321891206987.Spec : Prop :=
  ∀ n, P15975966321891206987.a n = A049672 n

end A049672

/-! ## A049672.P12547037804677428710

`A094292(2*n)+A094292(n)`
-/

namespace A049672.P12547037804677428710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 (2 * n) + A094292 n

end

end A049672.P12547037804677428710

namespace A049672

/-- `A094292(2*n)+A094292(n)` -/
def P12547037804677428710.Spec : Prop :=
  ∀ n, P12547037804677428710.a n = A049672 n

end A049672

/-! ## A049672.P16626149194353723614

`(A033888(n)-A000045(n))/2`
-/

namespace A049672.P16626149194353723614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033888 n - A000045 n : ℚ) / 2

end

end A049672.P16626149194353723614

namespace A049672

/-- `(A033888(n)-A000045(n))/2` -/
def P16626149194353723614.Spec : Prop :=
  ∀ n, P16626149194353723614.a n = (A049672 n : ℚ)

end A049672

/-! ## A049672.P12280353228889701348

`A004695(4*n)-A004695(n)`
-/

namespace A049672.P12280353228889701348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (4 * n) - A004695 n

end

end A049672.P12280353228889701348

namespace A049672

/-- `A004695(4*n)-A004695(n)` -/
def P12280353228889701348.Spec : Prop :=
  ∀ n, P12280353228889701348.a n = A049672 n

end A049672

/-! ## A049672.P10895094083818059745

`(A001906(2*n)-A212804(n+1))/2`
-/

namespace A049672.P10895094083818059745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (2 * n) - A212804 (n + 1) : ℚ) / 2

end

end A049672.P10895094083818059745

namespace A049672

/-- `(A001906(2*n)-A212804(n+1))/2` -/
def P10895094083818059745.Spec : Prop :=
  ∀ n, P10895094083818059745.a n = (A049672 n : ℚ)

end A049672

/-! ## A049672.P3391065254367300470

`(A001906(2*n)-A103609(2*n))/2`
-/

namespace A049672.P3391065254367300470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (2 * n) - A103609 (2 * n) : ℚ) / 2

end

end A049672.P3391065254367300470

namespace A049672

/-- `(A001906(2*n)-A103609(2*n))/2` -/
def P3391065254367300470.Spec : Prop :=
  ∀ n, P3391065254367300470.a n = (A049672 n : ℚ)

end A049672

/-! ## A049672.P7157869875960800415

`record[A004695(A022998(n))]-A004695(n)`
-/

namespace A049672.P7157869875960800415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004695 n

end

end A049672.P7157869875960800415

namespace A049672

/-- `record[A004695(A022998(n))]-A004695(n)` -/
def P7157869875960800415.Spec : Prop :=
  ∀ n, P7157869875960800415.a n = A049672 n

end A049672

/-!
# A049673: a(n) = (F(3n) + F(n))/3, where F = A000045 (the Fibonacci sequence).

The programs for A049673, the canonical program `A049673.P12244884847311271928` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049673 has offset 0).

The definition of A049673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049673.P12244884847311271928

`5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=12`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049673

/-- `5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` -/
def P12244884847311271928.Spec : Prop :=
  ∀ n, P12244884847311271928.a n = A049673 n

theorem P12244884847311271928.correct : P12244884847311271928.Spec := by
  intro n
  simp only [A049673]

end A049673

/-! ## A049673.P4580540123406367296

`(A000045(3*n)+A000045(n))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049673.P4580540123406367296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n) + A000045 n : ℚ) / 3

end

end A049673.P4580540123406367296

namespace A049673

/-- `(A000045(3*n)+A000045(n))/3` -/
def P4580540123406367296.Spec : Prop :=
  ∀ n, P4580540123406367296.a n = (A049673 n : ℚ)

end A049673

/-! ## A049673.P4627885816147740938

`ogf((x-2x^2-x^3)/(1-5x+2x^2+5x^3+x^4))`
-/

namespace A049673.P4627885816147740938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, -1] [1, -5, 2, 5, 1] n

end

end A049673.P4627885816147740938

namespace A049673

/-- `ogf((x-2x^2-x^3)/(1-5x+2x^2+5x^3+x^4))` -/
def P4627885816147740938.Spec : Prop :=
  ∀ n, P4627885816147740938.a n = A049673 n

end A049673

/-! ## A049673.P1078215720368615311

`A001076(n)-A049674(n)`
-/

namespace A049673.P1078215720368615311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n - A049674 n

end

end A049673.P1078215720368615311

namespace A049673

/-- `A001076(n)-A049674(n)` -/
def P1078215720368615311.Spec : Prop :=
  ∀ n, P1078215720368615311.a n = A049673 n

end A049673

/-! ## A049673.P7746544664572832705

`A014445(n)-A049675(n)`
-/

namespace A049673.P7746544664572832705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A049675 n

end

end A049673.P7746544664572832705

namespace A049673

/-- `A014445(n)-A049675(n)` -/
def P7746544664572832705.Spec : Prop :=
  ∀ n, P7746544664572832705.a n = A049673 n

end A049673

/-! ## A049673.P10948466779780127189

`A000045(n)+2*A049674(n)`
-/

namespace A049673.P10948466779780127189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A049674 n

end

end A049673.P10948466779780127189

namespace A049673

/-- `A000045(n)+2*A049674(n)` -/
def P10948466779780127189.Spec : Prop :=
  ∀ n, P10948466779780127189.a n = A049673 n

end A049673

/-! ## A049673.P10044520690266876495

`2*A001076(n)-A049675(n)`
-/

namespace A049673.P10044520690266876495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001076 n - A049675 n

end

end A049673.P10044520690266876495

namespace A049673

/-- `2*A001076(n)-A049675(n)` -/
def P10044520690266876495.Spec : Prop :=
  ∀ n, P10044520690266876495.a n = A049673 n

end A049673

/-! ## A049673.P17446749429260668378

`A049675(n)-2*A049674(n)`
-/

namespace A049673.P17446749429260668378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049675 n - 2 * A049674 n

end

end A049673.P17446749429260668378

namespace A049673

/-- `A049675(n)-2*A049674(n)` -/
def P17446749429260668378.Spec : Prop :=
  ∀ n, P17446749429260668378.a n = A049673 n

end A049673

/-! ## A049673.P10335762644217143994

`A293543(3*n)+A004696(n)`
-/

namespace A049673.P10335762644217143994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (3 * n) + A004696 n

end

end A049673.P10335762644217143994

namespace A049673

/-- `A293543(3*n)+A004696(n)` -/
def P10335762644217143994.Spec : Prop :=
  ∀ n, P10335762644217143994.a n = A049673 n

end A049673

/-! ## A049673.P10194230261193533420

`A293544(3*n)+A293544(n)`
-/

namespace A049673.P10194230261193533420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (3 * n) + A293544 n

end

end A049673.P10194230261193533420

namespace A049673

/-- `A293544(3*n)+A293544(n)` -/
def P10194230261193533420.Spec : Prop :=
  ∀ n, P10194230261193533420.a n = A049673 n

end A049673

/-!
# A049674: a(n) = (F(3*n) - 2*F(n))/6, where F=A000045 (the Fibonacci sequence).

The programs for A049674, the canonical program `A049674.P6954987417079022406` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049674 has offset 0).

The definition of A049674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049674.P6954987417079022406

`5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049674

/-- `5*a(n-1)-2*a(n-2)-5*a(n-3)-a(n-4)` -/
def P6954987417079022406.Spec : Prop :=
  ∀ n, P6954987417079022406.a n = A049674 n

theorem P6954987417079022406.correct : P6954987417079022406.Spec := by
  intro n
  simp only [A049674]

end A049674

/-! ## A049674.P7374187212804329169

`(A000045(3*n)-2*A000045(n))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049674.P7374187212804329169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (3 * n) - 2 * A000045 n : ℚ) / 6

end

end A049674.P7374187212804329169

namespace A049674

/-- `(A000045(3*n)-2*A000045(n))/6` -/
def P7374187212804329169.Spec : Prop :=
  ∀ n, P7374187212804329169.a n = (A049674 n : ℚ)

end A049674

/-! ## A049674.P11666875278965388771

`ogf(x^2/(1-5x+2x^2+5x^3+x^4))`
-/

namespace A049674.P11666875278965388771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -5, 2, 5, 1] n

end

end A049674.P11666875278965388771

namespace A049674

/-- `ogf(x^2/(1-5x+2x^2+5x^3+x^4))` -/
def P11666875278965388771.Spec : Prop :=
  ∀ n, P11666875278965388771.a n = A049674 n

end A049674

/-! ## A049674.P16415584732677256508

`A001076(n)-A049673(n)`
-/

namespace A049674.P16415584732677256508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n - A049673 n

end

end A049674.P16415584732677256508

namespace A049674

/-- `A001076(n)-A049673(n)` -/
def P16415584732677256508.Spec : Prop :=
  ∀ n, P16415584732677256508.a n = A049674 n

end A049674

/-! ## A049674.P9291747257203458640

`A049675(n)-A001076(n)`
-/

namespace A049674.P9291747257203458640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049675 n - A001076 n

end

end A049674.P9291747257203458640

namespace A049674

/-- `A049675(n)-A001076(n)` -/
def P9291747257203458640.Spec : Prop :=
  ∀ n, P9291747257203458640.a n = A049674 n

end A049674

/-! ## A049674.P876533038095395542

`(A049673(n)-A000045(n))/2`
-/

namespace A049674.P876533038095395542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049673 n - A000045 n : ℚ) / 2

end

end A049674.P876533038095395542

namespace A049674

/-- `(A049673(n)-A000045(n))/2` -/
def P876533038095395542.Spec : Prop :=
  ∀ n, P876533038095395542.a n = (A049674 n : ℚ)

end A049674

/-! ## A049674.P1794021876360816217

`A014445(n)/2-A049673(n)`
-/

namespace A049674.P1794021876360816217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014445 n : ℚ) / 2 - (A049673 n : ℚ)

end

end A049674.P1794021876360816217

namespace A049674

/-- `A014445(n)/2-A049673(n)` -/
def P1794021876360816217.Spec : Prop :=
  ∀ n, P1794021876360816217.a n = (A049674 n : ℚ)

end A049674

/-! ## A049674.P2456664974610723036

`A049675(n)-A014445(n)/2`
-/

namespace A049674.P2456664974610723036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049675 n : ℚ) - (A014445 n : ℚ) / 2

end

end A049674.P2456664974610723036

namespace A049674

/-- `A049675(n)-A014445(n)/2` -/
def P2456664974610723036.Spec : Prop :=
  ∀ n, P2456664974610723036.a n = (A049674 n : ℚ)

end A049674

/-! ## A049674.P6396943244799162809

`(A001076(n)-A000045(n))/3`
-/

namespace A049674.P6396943244799162809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 n - A000045 n : ℚ) / 3

end

end A049674.P6396943244799162809

namespace A049674

/-- `(A001076(n)-A000045(n))/3` -/
def P6396943244799162809.Spec : Prop :=
  ∀ n, P6396943244799162809.a n = (A049674 n : ℚ)

end A049674

/-! ## A049674.P8356831388652556339

`Δ[A049675(n+1)-A049652(n+1)]`
-/

namespace A049674.P8356831388652556339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049675 (n + 1) - A049652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049674.P8356831388652556339

namespace A049674

/-- `Δ[A049675(n+1)-A049652(n+1)]` -/
def P8356831388652556339.Spec : Prop :=
  ∀ n, P8356831388652556339.a n = A049674 n

end A049674

/-!
# A049675: a(n) = (2*F(3*n) - F(n))/3, where F=A000045 (the Fibonacci sequence).

The programs for A049675, the canonical program `A049675.P11527534447748048758` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049675 has offset 0).

The definition of A049675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049675.P11527534447748048758

`(2*A000045(3*n)-A000045(n))/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049675

/-- `(2*A000045(3*n)-A000045(n))/3` -/
def P11527534447748048758.Spec : Prop :=
  ∀ n, P11527534447748048758.a n = (A049675 n : ℚ)

end A049675

/-! ## A049675.P14144589799170024569

`ogf((x-x^3)/(1-5x+2x^2+5x^3+x^4))`
-/

namespace A049675.P14144589799170024569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -5, 2, 5, 1] n

end

end A049675.P14144589799170024569

namespace A049675

/-- `ogf((x-x^3)/(1-5x+2x^2+5x^3+x^4))` -/
def P14144589799170024569.Spec : Prop :=
  ∀ n, P14144589799170024569.a n = A049675 n

end A049675

/-! ## A049675.P15627023795938211189

`A049674(n)+A001076(n)`
-/

namespace A049675.P15627023795938211189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049674 n + A001076 n

end

end A049675.P15627023795938211189

namespace A049675

/-- `A049674(n)+A001076(n)` -/
def P15627023795938211189.Spec : Prop :=
  ∀ n, P15627023795938211189.a n = A049675 n

end A049675

/-! ## A049675.P1479141499836384702

`A014445(n)-A049673(n)`
-/

namespace A049675.P1479141499836384702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A049673 n

end

end A049675.P1479141499836384702

namespace A049675

/-- `A014445(n)-A049673(n)` -/
def P1479141499836384702.Spec : Prop :=
  ∀ n, P1479141499836384702.a n = A049675 n

end A049675

/-! ## A049675.P4134685696746509602

`A049673(n)+2*A049674(n)`
-/

namespace A049675.P4134685696746509602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049673 n + 2 * A049674 n

end

end A049675.P4134685696746509602

namespace A049675

/-- `A049673(n)+2*A049674(n)` -/
def P4134685696746509602.Spec : Prop :=
  ∀ n, P4134685696746509602.a n = A049675 n

end A049675

/-! ## A049675.P1304588210490437353

`2*A049673(n)-A000045(n)`
-/

namespace A049675.P1304588210490437353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049673 n - A000045 n

end

end A049675.P1304588210490437353

namespace A049675

/-- `2*A049673(n)-A000045(n)` -/
def P1304588210490437353.Spec : Prop :=
  ∀ n, P1304588210490437353.a n = A049675 n

end A049675

/-! ## A049675.P10687667743208942164

`2*A001076(n)-A049673(n)`
-/

namespace A049675.P10687667743208942164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001076 n - A049673 n

end

end A049675.P10687667743208942164

namespace A049675

/-- `2*A001076(n)-A049673(n)` -/
def P10687667743208942164.Spec : Prop :=
  ∀ n, P10687667743208942164.a n = A049675 n

end A049675

/-! ## A049675.P5224197376738624707

`A293545(3*n)-A004696(n)`
-/

namespace A049675.P5224197376738624707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 (3 * n) - A004696 n

end

end A049675.P5224197376738624707

namespace A049675

/-- `A293545(3*n)-A004696(n)` -/
def P5224197376738624707.Spec : Prop :=
  ∀ n, P5224197376738624707.a n = A049675 n

end A049675

/-! ## A049675.P14534136118187093137

`A293546(3*n)-A293543(n)`
-/

namespace A049675.P14534136118187093137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 (3 * n) - A293543 n

end

end A049675.P14534136118187093137

namespace A049675

/-- `A293546(3*n)-A293543(n)` -/
def P14534136118187093137.Spec : Prop :=
  ∀ n, P14534136118187093137.a n = A049675 n

end A049675

/-! ## A049675.P5700598296998865254

`A000045(A008585(n))-A049673(n)`
-/

namespace A049675.P5700598296998865254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008585 n).toNat - A049673 n

end

end A049675.P5700598296998865254

namespace A049675

/-- `A000045(A008585(n))-A049673(n)` -/
def P5700598296998865254.Spec : Prop :=
  ∀ n, P5700598296998865254.a n = A049675 n

end A049675

/-!
# A049676: a(n) = (F(8*n+3) + F(8*n+1))/3, where F = A000045 (the Fibonacci sequence).

The programs for A049676, the canonical program `A049676.P4737108664342262118` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049676 has offset 0).

The definition of A049676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049676.P4737108664342262118

`47*a(n-1)-a(n-2)` with `a(0)=1, a(1)=41`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049676

/-- `47*a(n-1)-a(n-2)` -/
def P4737108664342262118.Spec : Prop :=
  ∀ n, P4737108664342262118.a n = A049676 n

theorem P4737108664342262118.correct : P4737108664342262118.Spec := by
  intro n
  simp only [A049676]

end A049676

/-! ## A049676.P14064426847754263682

`(A000045(8*n+3)+A000045(8*n+1))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049676.P14064426847754263682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n + 3) + A000045 (8 * n + 1) : ℚ) / 3

end

end A049676.P14064426847754263682

namespace A049676

/-- `(A000045(8*n+3)+A000045(8*n+1))/3` -/
def P14064426847754263682.Spec : Prop :=
  ∀ n, P14064426847754263682.a n = (A049676 n : ℚ)

end A049676

/-! ## A049676.P1454488136873219951

`A049685(2*n)`
-/

namespace A049676.P1454488136873219951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049685 (2 * n)

end

end A049676.P1454488136873219951

namespace A049676

/-- `A049685(2*n)` -/
def P1454488136873219951.Spec : Prop :=
  ∀ n, P1454488136873219951.a n = A049676 n

end A049676

/-! ## A049676.P14594552236637802904

`A342710(2*n)/3`
-/

namespace A049676.P14594552236637802904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342710 (2 * n) : ℚ) / 3

end

end A049676.P14594552236637802904

namespace A049676

/-- `A342710(2*n)/3` -/
def P14594552236637802904.Spec : Prop :=
  ∀ n, P14594552236637802904.a n = (A049676 n : ℚ)

end A049676

/-! ## A049676.P11470895755038975616

`A276529(10*n+5)`
-/

namespace A049676.P11470895755038975616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276529 (10 * n + 5)

end

end A049676.P11470895755038975616

namespace A049676

/-- `A276529(10*n+5)` -/
def P11470895755038975616.Spec : Prop :=
  ∀ n, P11470895755038975616.a n = A049676 n

end A049676

/-! ## A049676.P14791500967219866702

`floor(A081067(2*n)/3)`
-/

namespace A049676.P14791500967219866702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081067 (2 * n) : ℚ) / 3⌋

end

end A049676.P14791500967219866702

namespace A049676

/-- `floor(A081067(2*n)/3)` -/
def P14791500967219866702.Spec : Prop :=
  ∀ n, P14791500967219866702.a n = A049676 n

end A049676

/-! ## A049676.P9046187165652695961

`A000032(8*n+2)/3`
-/

namespace A049676.P9046187165652695961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (8 * n + 2) : ℚ) / 3

end

end A049676.P9046187165652695961

namespace A049676

/-- `A000032(8*n+2)/3` -/
def P9046187165652695961.Spec : Prop :=
  ∀ n, P9046187165652695961.a n = (A049676 n : ℚ)

end A049676

/-! ## A049676.P16551394503923102434

`A140824(3*n+n+1)`
-/

namespace A049676.P16551394503923102434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140824 (3 * n + (n + 1))

end

end A049676.P16551394503923102434

namespace A049676

/-- `A140824(3*n+n+1)` -/
def P16551394503923102434.Spec : Prop :=
  ∀ n, P16551394503923102434.a n = A049676 n

end A049676

/-! ## A049676.P17799720818524925453

`A152119(3*n+n+1)`
-/

namespace A049676.P17799720818524925453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 (3 * n + (n + 1))

end

end A049676.P17799720818524925453

namespace A049676

/-- `A152119(3*n+n+1)` -/
def P17799720818524925453.Spec : Prop :=
  ∀ n, P17799720818524925453.a n = A049676 n

end A049676

/-! ## A049676.P3378227201497582711

`A169985(2*(4*n+1))/3`
-/

namespace A049676.P3378227201497582711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169985 (2 * (4 * n + 1)) : ℚ) / 3

end

end A049676.P3378227201497582711

namespace A049676

/-- `A169985(2*(4*n+1))/3` -/
def P3378227201497582711.Spec : Prop :=
  ∀ n, P3378227201497582711.a n = (A049676 n : ℚ)

end A049676

/-!
# A049677: a(n) = (F(8*n+6) + F(8*n+1))/3, where F = A000045 (the Fibonacci sequence).

The programs for A049677, the canonical program `A049677.P3507896266874010904` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049677 has offset 0).

The definition of A049677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049677.P3507896266874010904

`47*a(n-1)-a(n-2)` with `a(0)=3, a(1)=137`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049677

/-- `47*a(n-1)-a(n-2)` -/
def P3507896266874010904.Spec : Prop :=
  ∀ n, P3507896266874010904.a n = A049677 n

theorem P3507896266874010904.correct : P3507896266874010904.Spec := by
  intro n
  simp only [A049677]

end A049677

/-! ## A049677.P6978585504503283290

`(A000045(8*n+6)+A000045(8*n+1))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049677.P6978585504503283290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n + 6) + A000045 (8 * n + 1) : ℚ) / 3

end

end A049677.P6978585504503283290

namespace A049677

/-- `(A000045(8*n+6)+A000045(8*n+1))/3` -/
def P6978585504503283290.Spec : Prop :=
  ∀ n, P6978585504503283290.a n = (A049677 n : ℚ)

end A049677

/-! ## A049677.P17966830910595860064

`A276529(A017353(n))`
-/

namespace A049677.P17966830910595860064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276529 (A017353 n).toNat

end

end A049677.P17966830910595860064

namespace A049677

/-- `A276529(A017353(n))` -/
def P17966830910595860064.Spec : Prop :=
  ∀ n, P17966830910595860064.a n = A049677 n

end A049677

/-! ## A049677.P5855398397901899244

`A276529(A017329(n)+2)`
-/

namespace A049677.P5855398397901899244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276529 (A017329 n + 2).toNat

end

end A049677.P5855398397901899244

namespace A049677

/-- `A276529(A017329(n)+2)` -/
def P5855398397901899244.Spec : Prop :=
  ∀ n, P5855398397901899244.a n = A049677 n

end A049677

/-! ## A049677.P2828759324752210443

`A276529(A160912(n+2))`
-/

namespace A049677.P2828759324752210443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276529 (A160912 (n + 2)).toNat

end

end A049677.P2828759324752210443

namespace A049677

/-- `A276529(A160912(n+2))` -/
def P2828759324752210443.Spec : Prop :=
  ∀ n, P2828759324752210443.a n = A049677 n

end A049677

/-! ## A049677.P5291056979439188236

`A000285(A017101(n))/3`
-/

namespace A049677.P5291056979439188236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000285 (A017101 n).toNat : ℚ) / 3

end

end A049677.P5291056979439188236

namespace A049677

/-- `A000285(A017101(n))/3` -/
def P5291056979439188236.Spec : Prop :=
  ∀ n, P5291056979439188236.a n = (A049677 n : ℚ)

end A049677

/-! ## A049677.P14659197260762703692

`A104449(A017113(n))/3`
-/

namespace A049677.P14659197260762703692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104449 (A017113 n).toNat : ℚ) / 3

end

end A049677.P14659197260762703692

namespace A049677

/-- `A104449(A017113(n))/3` -/
def P14659197260762703692.Spec : Prop :=
  ∀ n, P14659197260762703692.a n = (A049677 n : ℚ)

end A049677

/-! ## A049677.P247950701008024897

`A049676(n)+2*A049678(n)`
-/

namespace A049677.P247950701008024897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049676 n + 2 * A049678 n

end

end A049677.P247950701008024897

namespace A049677

/-- `A049676(n)+2*A049678(n)` -/
def P247950701008024897.Spec : Prop :=
  ∀ n, P247950701008024897.a n = A049677 n

end A049677

/-! ## A049677.P15324475346449352020

`A033888(2*n+1)-A049686(n)`
-/

namespace A049677.P15324475346449352020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 (2 * n + 1) - A049686 n

end

end A049677.P15324475346449352020

namespace A049677

/-- `A033888(2*n+1)-A049686(n)` -/
def P15324475346449352020.Spec : Prop :=
  ∀ n, P15324475346449352020.a n = A049677 n

end A049677

/-! ## A049677.P12589266803667233796

`A033891(2*n)+A004187(2*n+1)`
-/

namespace A049677.P12589266803667233796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033891 (2 * n) + A004187 (2 * n + 1)

end

end A049677.P12589266803667233796

namespace A049677

/-- `A033891(2*n)+A004187(2*n+1)` -/
def P12589266803667233796.Spec : Prop :=
  ∀ n, P12589266803667233796.a n = A049677 n

end A049677

/-!
# A049678: a(n) = F(8*n+4)/3, where F=A000045 (the Fibonacci sequence).

The programs for A049678, the canonical program `A049678.P9678538142612641536` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049678 has offset 0).

The definition of A049678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049678.P9678538142612641536

`47*a(n-1)-a(n-2)` with `a(0)=1, a(1)=48`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049678

/-- `47*a(n-1)-a(n-2)` -/
def P9678538142612641536.Spec : Prop :=
  ∀ n, P9678538142612641536.a n = A049678 n

theorem P9678538142612641536.correct : P9678538142612641536.Spec := by
  intro n
  simp only [A049678]

end A049678

/-! ## A049678.P17482555654268366227

`A004187(2*n+1)`
-/

namespace A049678.P17482555654268366227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (2 * n + 1)

end

end A049678.P17482555654268366227

namespace A049678

/-- `A004187(2*n+1)` -/
def P17482555654268366227.Spec : Prop :=
  ∀ n, P17482555654268366227.a n = A049678 n

end A049678

/-! ## A049678.P8045691687537712921

`A099483(4*n+1)`
-/

namespace A049678.P8045691687537712921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099483 (4 * n + 1)

end

end A049678.P8045691687537712921

namespace A049678

/-- `A099483(4*n+1)` -/
def P8045691687537712921.Spec : Prop :=
  ∀ n, P8045691687537712921.a n = A049678 n

end A049678

/-! ## A049678.P15595869489594581065

`A000045(8*n+4)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049678.P15595869489594581065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n + 4) : ℚ) / 3

end

end A049678.P15595869489594581065

namespace A049678

/-- `A000045(8*n+4)/3` -/
def P15595869489594581065.Spec : Prop :=
  ∀ n, P15595869489594581065.a n = (A049678 n : ℚ)

end A049678

/-! ## A049678.P14093265985750842170

`∑[ceil(ϕ^(8*n))]`
-/

namespace A049678.P14093265985750842170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (8 * n)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049678.P14093265985750842170

namespace A049678

/-- `∑[ceil(ϕ^(8*n))]` -/
def P14093265985750842170.Spec : Prop :=
  ∀ n, P14093265985750842170.a n = A049678 n

end A049678

/-! ## A049678.P1402579608936118497

`Δ[A049682(n)]`
-/

namespace A049678.P1402579608936118497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049678.P1402579608936118497

namespace A049678

/-- `Δ[A049682(n)]` -/
def P1402579608936118497.Spec : Prop :=
  ∀ n, P1402579608936118497.a n = A049678 n

end A049678

/-! ## A049678.P11156933795395191944

`Δ[A004187(n)²]`
-/

namespace A049678.P11156933795395191944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049678.P11156933795395191944

namespace A049678

/-- `Δ[A004187(n)²]` -/
def P11156933795395191944.Spec : Prop :=
  ∀ n, P11156933795395191944.a n = A049678 n

end A049678

/-! ## A049678.P11629591864650336072

`∑[A087265(n)]-1`
-/

namespace A049678.P11629591864650336072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049678.P11629591864650336072

namespace A049678

/-- `∑[A087265(n)]-1` -/
def P11629591864650336072.Spec : Prop :=
  ∀ n, P11629591864650336072.a n = A049678 n

end A049678

/-! ## A049678.P7798972037697264097

`A152119(4*n+2)`
-/

namespace A049678.P7798972037697264097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 (4 * n + 2)

end

end A049678.P7798972037697264097

namespace A049678

/-- `A152119(4*n+2)` -/
def P7798972037697264097.Spec : Prop :=
  ∀ n, P7798972037697264097.a n = A049678 n

end A049678

/-! ## A049678.P4306294959795175783

`A290903(2*n)/5`
-/

namespace A049678.P4306294959795175783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290903 (2 * n) : ℚ) / 5

end

end A049678.P4306294959795175783

namespace A049678

/-- `A290903(2*n)/5` -/
def P4306294959795175783.Spec : Prop :=
  ∀ n, P4306294959795175783.a n = (A049678 n : ℚ)

end A049678

/-!
# A049679: a(n) = (F(8*n+7)+F(8*n+5))/3, where F=A000045 (the Fibonacci sequence).

The programs for A049679, the canonical program `A049679.P16444881155173927679` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049679 has offset 0).

The definition of A049679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049679.P16444881155173927679

`47*a(n-1)-a(n-2)` with `a(0)=6, a(1)=281`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049679

/-- `47*a(n-1)-a(n-2)` -/
def P16444881155173927679.Spec : Prop :=
  ∀ n, P16444881155173927679.a n = A049679 n

theorem P16444881155173927679.correct : P16444881155173927679.Spec := by
  intro n
  simp only [A049679]

end A049679

/-! ## A049679.P5971417554908238487

`(A000045(8*n+7)+A000045(8*n+5))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049679.P5971417554908238487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n + 7) + A000045 (8 * n + 5) : ℚ) / 3

end

end A049679.P5971417554908238487

namespace A049679

/-- `(A000045(8*n+7)+A000045(8*n+5))/3` -/
def P5971417554908238487.Spec : Prop :=
  ∀ n, P5971417554908238487.a n = (A049679 n : ℚ)

end A049679

/-! ## A049679.P10189892380580661286

`record[-round(ϕ^4*a(n-1))]` with `a(0)=6`
-/

namespace A049679.P10189892380580661286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -SequenceMachineLib.roundAway (Real.goldenRatio ^ 4 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049679.P10189892380580661286

namespace A049679

/-- `record[-round(ϕ^4*a(n-1))]` -/
def P10189892380580661286.Spec : Prop :=
  ∀ n, P10189892380580661286.a n = A049679 n

end A049679

/-! ## A049679.P14610477825910721384

`A049685(Δ[n²])`
-/

namespace A049679.P14610477825910721384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049685 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049679.P14610477825910721384

namespace A049679

/-- `A049685(Δ[n²])` -/
def P14610477825910721384.Spec : Prop :=
  ∀ n, P14610477825910721384.a n = A049679 n

end A049679

/-! ## A049679.P1665806232735861723

`Δ[A049655(n)/3]`
-/

namespace A049679.P1665806232735861723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049655 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049679.P1665806232735861723

namespace A049679

/-- `Δ[A049655(n)/3]` -/
def P1665806232735861723.Spec : Prop :=
  ∀ n, P1665806232735861723.a n = (A049679 n : ℚ)

end A049679

/-! ## A049679.P13651833531335678218

`A005248(record[xor(3, n)])/3`
-/

namespace A049679.P13651833531335678218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 3

end

end A049679.P13651833531335678218

namespace A049679

/-- `A005248(record[xor(3, n)])/3` -/
def P13651833531335678218.Spec : Prop :=
  ∀ n, P13651833531335678218.a n = (A049679 n : ℚ)

end A049679

/-! ## A049679.P18432518299292478689

`A342710(2*n+1)/3`
-/

namespace A049679.P18432518299292478689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342710 (2 * n + 1) : ℚ) / 3

end

end A049679.P18432518299292478689

namespace A049679

/-- `A342710(2*n+1)/3` -/
def P18432518299292478689.Spec : Prop :=
  ∀ n, P18432518299292478689.a n = (A049679 n : ℚ)

end A049679

/-! ## A049679.P17330327656505683411

`A000032(8*n+6)/3`
-/

namespace A049679.P17330327656505683411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (8 * n + 6) : ℚ) / 3

end

end A049679.P17330327656505683411

namespace A049679

/-- `A000032(8*n+6)/3` -/
def P17330327656505683411.Spec : Prop :=
  ∀ n, P17330327656505683411.a n = (A049679 n : ℚ)

end A049679

/-! ## A049679.P5454911471453497268

`A140824(3*(n+1)+n)`
-/

namespace A049679.P5454911471453497268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140824 (3 * (n + 1) + n)

end

end A049679.P5454911471453497268

namespace A049679

/-- `A140824(3*(n+1)+n)` -/
def P5454911471453497268.Spec : Prop :=
  ∀ n, P5454911471453497268.a n = A049679 n

end A049679

/-! ## A049679.P12515512967354862436

`A152119(3*(n+1)+n)`
-/

namespace A049679.P12515512967354862436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 (3 * (n + 1) + n)

end

end A049679.P12515512967354862436

namespace A049679

/-- `A152119(3*(n+1)+n)` -/
def P12515512967354862436.Spec : Prop :=
  ∀ n, P12515512967354862436.a n = A049679 n

end A049679

/-!
# A049680: a(n) = (L(n) + L(2*n))/2, where L = A000032 (the Lucas sequence).

The programs for A049680, the canonical program `A049680.P13128630125297268951` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049680 has offset 0).

The definition of A049680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049680.P13128630125297268951

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049680

/-- `4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P13128630125297268951.Spec : Prop :=
  ∀ n, P13128630125297268951.a n = A049680 n

theorem P13128630125297268951.correct : P13128630125297268951.Spec := by
  intro n
  simp only [A049680]

end A049680

/-! ## A049680.P6452091516601538505

`(A000032(n)+A000032(2*n))/2`
-/

namespace A049680.P6452091516601538505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n + A000032 (2 * n) : ℚ) / 2

end

end A049680.P6452091516601538505

namespace A049680

/-- `(A000032(n)+A000032(2*n))/2` -/
def P6452091516601538505.Spec : Prop :=
  ∀ n, P6452091516601538505.a n = (A049680 n : ℚ)

end A049680

/-! ## A049680.P14423521749395504963

`A049681(n)+A000032(n)`
-/

namespace A049680.P14423521749395504963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049681 n + A000032 n

end

end A049680.P14423521749395504963

namespace A049680

/-- `A049681(n)+A000032(n)` -/
def P14423521749395504963.Spec : Prop :=
  ∀ n, P14423521749395504963.a n = A049680 n

end A049680

/-! ## A049680.P5110492569580087858

`A005248(n)-A049681(n)`
-/

namespace A049680.P5110492569580087858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A049681 n

end

end A049680.P5110492569580087858

namespace A049680

/-- `A005248(n)-A049681(n)` -/
def P5110492569580087858.Spec : Prop :=
  ∀ n, P5110492569580087858.a n = A049680 n

end A049680

/-! ## A049680.P11301641195026012259

`A059512(n+1)+A005207(n)`
-/

namespace A049680.P11301641195026012259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 1) + A005207 n

end

end A049680.P11301641195026012259

namespace A049680

/-- `A059512(n+1)+A005207(n)` -/
def P11301641195026012259.Spec : Prop :=
  ∀ n, P11301641195026012259.a n = A049680 n

end A049680

/-! ## A049680.P8363080196035402971

`A094292(n)+2*A005207(n)`
-/

namespace A049680.P8363080196035402971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 n + 2 * A005207 n

end

end A049680.P8363080196035402971

namespace A049680

/-- `A094292(n)+2*A005207(n)` -/
def P8363080196035402971.Spec : Prop :=
  ∀ n, P8363080196035402971.a n = A049680 n

end A049680

/-! ## A049680.P5437723226027293401

`(A005248(n)+A000032(n))/2`
-/

namespace A049680.P5437723226027293401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n + A000032 n : ℚ) / 2

end

end A049680.P5437723226027293401

namespace A049680

/-- `(A005248(n)+A000032(n))/2` -/
def P5437723226027293401.Spec : Prop :=
  ∀ n, P5437723226027293401.a n = (A049680 n : ℚ)

end A049680

/-! ## A049680.P4109902497826943414

`A000032(2*n)-A049681(n)`
-/

namespace A049680.P4109902497826943414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - A049681 n

end

end A049680.P4109902497826943414

namespace A049680

/-- `A000032(2*n)-A049681(n)` -/
def P4109902497826943414.Spec : Prop :=
  ∀ n, P4109902497826943414.a n = A049680 n

end A049680

/-! ## A049680.P12825878360274042775

`A124697(A004277(n)-n)/2`
-/

namespace A049680.P12825878360274042775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124697 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A049680.P12825878360274042775

namespace A049680

/-- `A124697(A004277(n)-n)/2` -/
def P12825878360274042775.Spec : Prop :=
  ∀ n, P12825878360274042775.a n = (A049680 n : ℚ)

end A049680

/-! ## A049680.P4569175562905924314

`A061084(2*n+1)-A049681(n)`
-/

namespace A049680.P4569175562905924314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (2 * n + 1) - A049681 n

end

end A049680.P4569175562905924314

namespace A049680

/-- `A061084(2*n+1)-A049681(n)` -/
def P4569175562905924314.Spec : Prop :=
  ∀ n, P4569175562905924314.a n = A049680 n

end A049680

/-! ## A049680.P5686010426950572813

`(A127218(2*n)+A127218(4*n))/2`
-/

namespace A049680.P5686010426950572813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127218 (2 * n) + A127218 (4 * n) : ℚ) / 2

end

end A049680.P5686010426950572813

namespace A049680

/-- `(A127218(2*n)+A127218(4*n))/2` -/
def P5686010426950572813.Spec : Prop :=
  ∀ n, P5686010426950572813.a n = (A049680 n : ℚ)

end A049680

/-! ## A049680.P12496667532437495277

`(A303427(2*n)+A303427(4*n))/2`
-/

namespace A049680.P12496667532437495277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303427 (2 * n) + A303427 (4 * n) : ℚ) / 2

end

end A049680.P12496667532437495277

namespace A049680

/-- `(A303427(2*n)+A303427(4*n))/2` -/
def P12496667532437495277.Spec : Prop :=
  ∀ n, P12496667532437495277.a n = (A049680 n : ℚ)

end A049680

/-! ## A049680.P3714347606811821003

`(A090244(2*n+1)+A061084(2*n+1))/2`
-/

namespace A049680.P3714347606811821003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090244 (2 * n + 1) + A061084 (2 * n + 1) : ℚ) / 2

end

end A049680.P3714347606811821003

namespace A049680

/-- `(A090244(2*n+1)+A061084(2*n+1))/2` -/
def P3714347606811821003.Spec : Prop :=
  ∀ n, P3714347606811821003.a n = (A049680 n : ℚ)

end A049680

/-! ## A049680.P16057467295678497214

`(A302126(2*n+1)+A061084(2*n+1))/2`
-/

namespace A049680.P16057467295678497214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302126 (2 * n + 1) + A061084 (2 * n + 1) : ℚ) / 2

end

end A049680.P16057467295678497214

namespace A049680

/-- `(A302126(2*n+1)+A061084(2*n+1))/2` -/
def P16057467295678497214.Spec : Prop :=
  ∀ n, P16057467295678497214.a n = (A049680 n : ℚ)

end A049680

/-! ## A049680.P6646667094129294342

`A005207(n+1)+A005207(n)-A000045(n)`
-/

namespace A049680.P6646667094129294342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + (A005207 n - A000045 n)

end

end A049680.P6646667094129294342

namespace A049680

/-- `A005207(n+1)+A005207(n)-A000045(n)` -/
def P6646667094129294342.Spec : Prop :=
  ∀ n, P6646667094129294342.a n = A049680 n

end A049680

/-! ## A049680.P9940285463638175525

`A059512(n+1)+A001519(n)-A056014(n)`
-/

namespace A049680.P9940285463638175525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 (n + 1) + (A001519 n - A056014 n)

end

end A049680.P9940285463638175525

namespace A049680

/-- `A059512(n+1)+A001519(n)-A056014(n)` -/
def P9940285463638175525.Spec : Prop :=
  ∀ n, P9940285463638175525.a n = A049680 n

end A049680

/-! ## A049680.P11961555889189831621

`A000045(n+1)+A059512(n+1)+A056014(n)`
-/

namespace A049680.P11961555889189831621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A059512 (n + 1) + A056014 n)

end

end A049680.P11961555889189831621

namespace A049680

/-- `A000045(n+1)+A059512(n+1)+A056014(n)` -/
def P11961555889189831621.Spec : Prop :=
  ∀ n, P11961555889189831621.a n = A049680 n

end A049680

/-! ## A049680.P6666640366118561408

`A005207(n+1)+A005207(n)-A212804(n+1)`
-/

namespace A049680.P6666640366118561408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + (A005207 n - A212804 (n + 1))

end

end A049680.P6666640366118561408

namespace A049680

/-- `A005207(n+1)+A005207(n)-A212804(n+1)` -/
def P6666640366118561408.Spec : Prop :=
  ∀ n, P6666640366118561408.a n = A049680 n

end A049680

/-! ## A049680.P7227435673304701807

`A000204(n+2)+A049681(n)-A000204(n+1)`
-/

namespace A049680.P7227435673304701807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (A049681 n - A000204 (n + 1))

end

end A049680.P7227435673304701807

namespace A049680

/-- `A000204(n+2)+A049681(n)-A000204(n+1)` -/
def P7227435673304701807.Spec : Prop :=
  ∀ n, P7227435673304701807.a n = A049680 n

end A049680

/-! ## A049680.P13904042385364627143

`A226447(2*n)+abs(A226447(n))`
-/

namespace A049680.P13904042385364627143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226447 (2 * n) + |A226447 n|

end

end A049680.P13904042385364627143

namespace A049680

/-- `A226447(2*n)+abs(A226447(n))` -/
def P13904042385364627143.Spec : Prop :=
  ∀ n, P13904042385364627143.a n = A049680 n

end A049680

/-!
# A049681: a(n) = (Lucas(2*n) - Lucas(n))/2.

The programs for A049681, the canonical program `A049681.P7230864429153483578` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049681 has offset 0).

The definition of A049681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049681.P7230864429153483578

`(A000032(2*n)-A000032(n))/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049681

/-- `(A000032(2*n)-A000032(n))/2` -/
def P7230864429153483578.Spec : Prop :=
  ∀ n, P7230864429153483578.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P13106532943093961499

`ogf((x-2x^2+2x^3)/(1-4x+3x^2+2x^3-x^4))`
-/

namespace A049681.P13106532943093961499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2] [1, -4, 3, 2, -1] n

end

end A049681.P13106532943093961499

namespace A049681

/-- `ogf((x-2x^2+2x^3)/(1-4x+3x^2+2x^3-x^4))` -/
def P13106532943093961499.Spec : Prop :=
  ∀ n, P13106532943093961499.a n = A049681 n

end A049681

/-! ## A049681.P7423990895963622018

`record[floor((-ϕ)^n/2)]-A245968(n)`
-/

namespace A049681.P7423990895963622018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-Real.goldenRatio) ^ n / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A245968 n

end

end A049681.P7423990895963622018

namespace A049681

/-- `record[floor((-ϕ)^n/2)]-A245968(n)` -/
def P7423990895963622018.Spec : Prop :=
  ∀ n, P7423990895963622018.a n = A049681 n

end A049681

/-! ## A049681.P14278708176793685312

`A049680(n)-A000032(n)`
-/

namespace A049681.P14278708176793685312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049680 n - A000032 n

end

end A049681.P14278708176793685312

namespace A049681

/-- `A049680(n)-A000032(n)` -/
def P14278708176793685312.Spec : Prop :=
  ∀ n, P14278708176793685312.a n = A049681 n

end A049681

/-! ## A049681.P14390294448865188494

`A005248(n)-A049680(n)`
-/

namespace A049681.P14390294448865188494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - A049680 n

end

end A049681.P14390294448865188494

namespace A049681

/-- `A005248(n)-A049680(n)` -/
def P14390294448865188494.Spec : Prop :=
  ∀ n, P14390294448865188494.a n = A049681 n

end A049681

/-! ## A049681.P6039870255592531293

`A096140(n)-A094292(n)`
-/

namespace A049681.P6039870255592531293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096140 n - A094292 n

end

end A049681.P6039870255592531293

namespace A049681

/-- `A096140(n)-A094292(n)` -/
def P6039870255592531293.Spec : Prop :=
  ∀ n, P6039870255592531293.a n = A049681 n

end A049681

/-! ## A049681.P1904146623770523209

`A071618(n)-A245968(n)`
-/

namespace A049681.P1904146623770523209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071618 n - A245968 n

end

end A049681.P1904146623770523209

namespace A049681

/-- `A071618(n)-A245968(n)` -/
def P1904146623770523209.Spec : Prop :=
  ∀ n, P1904146623770523209.a n = A049681 n

end A049681

/-! ## A049681.P12575752804504394003

`A059512(n)+A056014(n+1)`
-/

namespace A049681.P12575752804504394003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059512 n + A056014 (n + 1)

end

end A049681.P12575752804504394003

namespace A049681

/-- `A059512(n)+A056014(n+1)` -/
def P12575752804504394003.Spec : Prop :=
  ∀ n, P12575752804504394003.a n = A049681 n

end A049681

/-! ## A049681.P17972281736529442068

`A173495(2*n)-A173495(n)`
-/

namespace A049681.P17972281736529442068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 (2 * n) - A173495 n

end

end A049681.P17972281736529442068

namespace A049681

/-- `A173495(2*n)-A173495(n)` -/
def P17972281736529442068.Spec : Prop :=
  ∀ n, P17972281736529442068.a n = A049681 n

end A049681

/-! ## A049681.P5170392266885329471

`A245968(2*n)-A245968(n)`
-/

namespace A049681.P5170392266885329471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (2 * n) - A245968 n

end

end A049681.P5170392266885329471

namespace A049681

/-- `A245968(2*n)-A245968(n)` -/
def P5170392266885329471.Spec : Prop :=
  ∀ n, P5170392266885329471.a n = A049681 n

end A049681

/-! ## A049681.P7186750938464884951

`(A005248(n)-A000032(n))/2`
-/

namespace A049681.P7186750938464884951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005248 n - A000032 n : ℚ) / 2

end

end A049681.P7186750938464884951

namespace A049681

/-- `(A005248(n)-A000032(n))/2` -/
def P7186750938464884951.Spec : Prop :=
  ∀ n, P7186750938464884951.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P10099316080709799104

`A056014(n)+Δ[Δ[A056014(n)]]`
-/

namespace A049681.P10099316080709799104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + (f1 (n + 1) - f1 n)

end

end A049681.P10099316080709799104

namespace A049681

/-- `A056014(n)+Δ[Δ[A056014(n)]]` -/
def P10099316080709799104.Spec : Prop :=
  ∀ n, P10099316080709799104.a n = A049681 n

end A049681

/-! ## A049681.P7634541363090294863

`(A061084(2*n+1)-A127218(2*n))/2`
-/

namespace A049681.P7634541363090294863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n + 1) - A127218 (2 * n) : ℚ) / 2

end

end A049681.P7634541363090294863

namespace A049681

/-- `(A061084(2*n+1)-A127218(2*n))/2` -/
def P7634541363090294863.Spec : Prop :=
  ∀ n, P7634541363090294863.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P10526645766389808149

`(A061084(2*n+1)-A303427(2*n))/2`
-/

namespace A049681.P10526645766389808149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n + 1) - A303427 (2 * n) : ℚ) / 2

end

end A049681.P10526645766389808149

namespace A049681

/-- `(A061084(2*n+1)-A303427(2*n))/2` -/
def P10526645766389808149.Spec : Prop :=
  ∀ n, P10526645766389808149.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P5640036444699206819

`(A061084(2*n+1)-A090244(2*n+1))/2`
-/

namespace A049681.P5640036444699206819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n + 1) - A090244 (2 * n + 1) : ℚ) / 2

end

end A049681.P5640036444699206819

namespace A049681

/-- `(A061084(2*n+1)-A090244(2*n+1))/2` -/
def P5640036444699206819.Spec : Prop :=
  ∀ n, P5640036444699206819.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P11499468239198123252

`(A061084(2*n+1)-A302126(2*n+1))/2`
-/

namespace A049681.P11499468239198123252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061084 (2 * n + 1) - A302126 (2 * n + 1) : ℚ) / 2

end

end A049681.P11499468239198123252

namespace A049681

/-- `(A061084(2*n+1)-A302126(2*n+1))/2` -/
def P11499468239198123252.Spec : Prop :=
  ∀ n, P11499468239198123252.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P7913053752498756148

`(A000211(A005843(n))-A000211(n))/2`
-/

namespace A049681.P7913053752498756148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000211 (A005843 n).toNat - A000211 n : ℚ) / 2

end

end A049681.P7913053752498756148

namespace A049681

/-- `(A000211(A005843(n))-A000211(n))/2` -/
def P7913053752498756148.Spec : Prop :=
  ∀ n, P7913053752498756148.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P6876397784572680416

`(A001612(A005843(n))-A001612(n))/2`
-/

namespace A049681.P6876397784572680416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001612 (A005843 n).toNat - A001612 n : ℚ) / 2

end

end A049681.P6876397784572680416

namespace A049681

/-- `(A001612(A005843(n))-A001612(n))/2` -/
def P6876397784572680416.Spec : Prop :=
  ∀ n, P6876397784572680416.a n = (A049681 n : ℚ)

end A049681

/-! ## A049681.P4857841229333032502

`A362067(n)-(A094292(n)+A001906(n))`
-/

namespace A049681.P4857841229333032502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 n - (A094292 n + A001906 n)

end

end A049681.P4857841229333032502

namespace A049681

/-- `A362067(n)-(A094292(n)+A001906(n))` -/
def P4857841229333032502.Spec : Prop :=
  ∀ n, P4857841229333032502.a n = A049681 n

end A049681

/-! ## A049681.P15273636082948609426

`A056014(n+1)+A056014(n)+A000045(n)`
-/

namespace A049681.P15273636082948609426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 (n + 1) + (A056014 n + A000045 n)

end

end A049681.P15273636082948609426

namespace A049681

/-- `A056014(n+1)+A056014(n)+A000045(n)` -/
def P15273636082948609426.Spec : Prop :=
  ∀ n, P15273636082948609426.a n = A049681 n

end A049681

/-!
# A049682: a(n) = (Lucas(8*n) - 2)/45.

The programs for A049682, the canonical program `A049682.P16509218587618789967` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049682 has offset 0).

The definition of A049682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049682.P16509218587618789967

`48*a(n-1)-48*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=49`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049682

/-- `48*a(n-1)-48*a(n-2)+a(n-3)` -/
def P16509218587618789967.Spec : Prop :=
  ∀ n, P16509218587618789967.a n = A049682 n

theorem P16509218587618789967.correct : P16509218587618789967.Spec := by
  intro n
  simp only [A049682]

end A049682

/-! ## A049682.P5178372369111322561

`A004187(n)²`
-/

namespace A049682.P5178372369111322561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n ^ 2

end

end A049682.P5178372369111322561

namespace A049682

/-- `A004187(n)²` -/
def P5178372369111322561.Spec : Prop :=
  ∀ n, P5178372369111322561.a n = A049682 n

end A049682

/-! ## A049682.P10384356671457578137

`(A000045(4*n)/3)²`
-/

namespace A049682.P10384356671457578137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (4 * n) : ℚ) / 3) ^ 2

end

end A049682.P10384356671457578137

namespace A049682

/-- `(A000045(4*n)/3)²` -/
def P10384356671457578137.Spec : Prop :=
  ∀ n, P10384356671457578137.a n = (A049682 n : ℚ)

end A049682

/-! ## A049682.P13255258288578913532

`(A000032(8*n)-2)/45`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049682.P13255258288578913532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (8 * n) - 2 : ℚ) / 45

end

end A049682.P13255258288578913532

namespace A049682

/-- `(A000032(8*n)-2)/45` -/
def P13255258288578913532.Spec : Prop :=
  ∀ n, P13255258288578913532.a n = (A049682 n : ℚ)

end A049682

/-! ## A049682.P11928892037810303981

`47*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A049682.P11928892037810303981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  47 * a (n - 1) - a (n - 2) + 2

end

end A049682.P11928892037810303981

namespace A049682

/-- `47*a(n-1)-a(n-2)+2` -/
def P11928892037810303981.Spec : Prop :=
  ∀ n, P11928892037810303981.a n = A049682 n

end A049682

/-! ## A049682.P13922177999748116667

`A004696(4*n)²`
-/

namespace A049682.P13922177999748116667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (4 * n) ^ 2

end

end A049682.P13922177999748116667

namespace A049682

/-- `A004696(4*n)²` -/
def P13922177999748116667.Spec : Prop :=
  ∀ n, P13922177999748116667.a n = A049682 n

end A049682

/-! ## A049682.P5848564716727455361

`(A033888(n)/3)²`
-/

namespace A049682.P5848564716727455361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A033888 n : ℚ) / 3) ^ 2

end

end A049682.P5848564716727455361

namespace A049682

/-- `(A033888(n)/3)²` -/
def P5848564716727455361.Spec : Prop :=
  ∀ n, P5848564716727455361.a n = (A049682 n : ℚ)

end A049682

/-! ## A049682.P4219946081642439715

`A167816(4*n)²`
-/

namespace A049682.P4219946081642439715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (4 * n) ^ 2

end

end A049682.P4219946081642439715

namespace A049682

/-- `A167816(4*n)²` -/
def P4219946081642439715.Spec : Prop :=
  ∀ n, P4219946081642439715.a n = A049682 n

end A049682

/-! ## A049682.P12799088052691267568

`A293543(4*n)²`
-/

namespace A049682.P12799088052691267568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (4 * n) ^ 2

end

end A049682.P12799088052691267568

namespace A049682

/-- `A293543(4*n)²` -/
def P12799088052691267568.Spec : Prop :=
  ∀ n, P12799088052691267568.a n = A049682 n

end A049682

/-! ## A049682.P8189034104139156400

`A293544(4*n)²`
-/

namespace A049682.P8189034104139156400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (4 * n) ^ 2

end

end A049682.P8189034104139156400

namespace A049682

/-- `A293544(4*n)²` -/
def P8189034104139156400.Spec : Prop :=
  ∀ n, P8189034104139156400.a n = A049682 n

end A049682

/-!
# A049683: a(n) = (Lucas(6*n) - 2)/16.

The programs for A049683, the canonical program `A049683.P132302187022426686` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049683 has offset 0).

The definition of A049683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049683.P132302187022426686

`19*a(n-1)-19*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=20`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049683

/-- `19*a(n-1)-19*a(n-2)+a(n-3)` -/
def P132302187022426686.Spec : Prop :=
  ∀ n, P132302187022426686.a n = A049683 n

theorem P132302187022426686.correct : P132302187022426686.Spec := by
  intro n
  simp only [A049683]

end A049683

/-! ## A049683.P13009421253760477393

`(A000032(6*n)-2)/16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049683.P13009421253760477393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (6 * n) - 2 : ℚ) / 16

end

end A049683.P13009421253760477393

namespace A049683

/-- `(A000032(6*n)-2)/16` -/
def P13009421253760477393.Spec : Prop :=
  ∀ n, P13009421253760477393.a n = (A049683 n : ℚ)

end A049683

/-! ## A049683.P11455299830373706832

`(5*A000045(3*n)²-2*(1-(-1)^n))/16`
-/

namespace A049683.P11455299830373706832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A000045 (3 * n) ^ 2 - 2 * (1 - (-1) ^ n) : ℚ) / 16

end

end A049683.P11455299830373706832

namespace A049683

/-- `(5*A000045(3*n)²-2*(1-(-1)^n))/16` -/
def P11455299830373706832.Spec : Prop :=
  ∀ n, P11455299830373706832.a n = (A049683 n : ℚ)

end A049683

/-! ## A049683.P2018676472955652085

`∑[ogf((x+x^2)/(1-18x+x^2))]`
-/

namespace A049683.P2018676472955652085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -18, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049683.P2018676472955652085

namespace A049683

/-- `∑[ogf((x+x^2)/(1-18x+x^2))]` -/
def P2018676472955652085.Spec : Prop :=
  ∀ n, P2018676472955652085.a n = A049683 n

end A049683

/-! ## A049683.P2252376547703657834

`18*a(n-1)-(a(n-2)-2)` with `a(0)=0, a(1)=1`
-/

namespace A049683.P2252376547703657834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  18 * a (n - 1) - (a (n - 2) - 2)

end

end A049683.P2252376547703657834

namespace A049683

/-- `18*a(n-1)-(a(n-2)-2)` -/
def P2252376547703657834.Spec : Prop :=
  ∀ n, P2252376547703657834.a n = A049683 n

end A049683

/-! ## A049683.P11400183051283616140

`A132584(n)/4`
-/

namespace A049683.P11400183051283616140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132584 n : ℚ) / 4

end

end A049683.P11400183051283616140

namespace A049683

/-- `A132584(n)/4` -/
def P11400183051283616140.Spec : Prop :=
  ∀ n, P11400183051283616140.a n = (A049683 n : ℚ)

end A049683

/-! ## A049683.P9890400581361040405

`floor((A001077(n)/2)²)`
-/

namespace A049683.P9890400581361040405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001077 n : ℚ) / 2) ^ 2⌋

end

end A049683.P9890400581361040405

namespace A049683

/-- `floor((A001077(n)/2)²)` -/
def P9890400581361040405.Spec : Prop :=
  ∀ n, P9890400581361040405.a n = A049683 n

end A049683

/-! ## A049683.P1162352935242419492

`round((A014448(n)/4)²)`
-/

namespace A049683.P1162352935242419492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A014448 n : ℚ) / 4) ^ 2)

end

end A049683.P1162352935242419492

namespace A049683

/-- `round((A014448(n)/4)²)` -/
def P1162352935242419492.Spec : Prop :=
  ∀ n, P1162352935242419492.a n = A049683 n

end A049683

/-! ## A049683.P17516847231037022666

`floor((A000032(3*n)/4)²)`
-/

namespace A049683.P17516847231037022666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (3 * n) : ℚ) / 4) ^ 2⌋

end

end A049683.P17516847231037022666

namespace A049683

/-- `floor((A000032(3*n)/4)²)` -/
def P17516847231037022666.Spec : Prop :=
  ∀ n, P17516847231037022666.a n = A049683 n

end A049683

/-! ## A049683.P16564361882182144489

`round((A000032(2*n+n)/4)²)`
-/

namespace A049683.P16564361882182144489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000032 (2 * n + n) : ℚ) / 4) ^ 2)

end

end A049683.P16564361882182144489

namespace A049683

/-- `round((A000032(2*n+n)/4)²)` -/
def P16564361882182144489.Spec : Prop :=
  ∀ n, P16564361882182144489.a n = A049683 n

end A049683

/-!
# A049684: a(n) = Fibonacci(2n)^2.

The programs for A049684, the canonical program `A049684.P7569504399048333540` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049684 has offset 0).

The definition of A049684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n)²` (program `A049684.P7569504399048333540`, by `A049684.P7569504399048333540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049684.P17763644723763419225

`7*a(n-1)-a(n-2)+2` with `a(0)=0, a(1)=1`
-/

namespace A049684.P17763644723763419225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 * a (n - 1) - a (n - 2) + 2

end

end A049684.P17763644723763419225

namespace A049684

/-- `7*a(n-1)-a(n-2)+2` -/
def P17763644723763419225.Spec : Prop :=
  ∀ n, P17763644723763419225.a n = A049684 n

end A049684

/-! ## A049684.P10530064057074424448

`A001906(n)²`
-/

namespace A049684.P10530064057074424448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 2

end

end A049684.P10530064057074424448

namespace A049684

/-- `A001906(n)²` -/
def P10530064057074424448.Spec : Prop :=
  ∀ n, P10530064057074424448.a n = A049684 n

end A049684

/-! ## A049684.P7569504399048333540

`A000045(2*n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049684

/-- `A000045(2*n)²` -/
def P7569504399048333540.Spec : Prop :=
  ∀ n, P7569504399048333540.a n = A049684 n

theorem P7569504399048333540.correct : P7569504399048333540.Spec := by
  intro n
  simp only [A049684]

end A049684

/-! ## A049684.P14817222599119654619

`(A000032(4*n)-2)/5`
-/

namespace A049684.P14817222599119654619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (4 * n) - 2 : ℚ) / 5

end

end A049684.P14817222599119654619

namespace A049684

/-- `(A000032(4*n)-2)/5` -/
def P14817222599119654619.Spec : Prop :=
  ∀ n, P14817222599119654619.a n = (A049684 n : ℚ)

end A049684

/-! ## A049684.P13756118524243495898

`∑[ogf((x+x^2)/(1-7x+x^2))]`
-/

namespace A049684.P13756118524243495898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049684.P13756118524243495898

namespace A049684

/-- `∑[ogf((x+x^2)/(1-7x+x^2))]` -/
def P13756118524243495898.Spec : Prop :=
  ∀ n, P13756118524243495898.a n = A049684 n

end A049684

/-! ## A049684.P16437175492550399014

`ogf((x+x^2)/(1-8x+8x^2-x^3))`
-/

namespace A049684.P16437175492550399014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -8, 8, -1] n

end

end A049684.P16437175492550399014

namespace A049684

/-- `ogf((x+x^2)/(1-8x+8x^2-x^3))` -/
def P16437175492550399014.Spec : Prop :=
  ∀ n, P16437175492550399014.a n = A049684 n

end A049684

/-! ## A049684.P4418095792470479641

`floor(ϕ^(2*n)/sqrt(5))²`
-/

namespace A049684.P4418095792470479641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (2 * n) / Real.sqrt (5 : ℝ)⌋ ^ 2

end

end A049684.P4418095792470479641

namespace A049684

/-- `floor(ϕ^(2*n)/sqrt(5))²` -/
def P4418095792470479641.Spec : Prop :=
  ∀ n, P4418095792470479641.a n = A049684 n

end A049684

/-! ## A049684.P2612590169335622647

`2-(a(n-2)-7*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A049684.P2612590169335622647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - (a (n - 2) - 7 * a (n - 1))

end

end A049684.P2612590169335622647

namespace A049684

/-- `2-(a(n-2)-7*a(n-1))` -/
def P2612590169335622647.Spec : Prop :=
  ∀ n, P2612590169335622647.a n = A049684 n

end A049684

/-! ## A049684.P10309954106380570306

`A007598(2*n)`
-/

namespace A049684.P10309954106380570306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n)

end

end A049684.P10309954106380570306

namespace A049684

/-- `A007598(2*n)` -/
def P10309954106380570306.Spec : Prop :=
  ∀ n, P10309954106380570306.a n = A049684 n

end A049684

/-! ## A049684.P11874621221519436799

`A357553(4*n)`
-/

namespace A049684.P11874621221519436799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357553 (4 * n)

end

end A049684.P11874621221519436799

namespace A049684

/-- `A357553(4*n)` -/
def P11874621221519436799.Spec : Prop :=
  ∀ n, P11874621221519436799.a n = A049684 n

end A049684

/-! ## A049684.P710170616581472898

`record[A098054(n)²]`
-/

namespace A049684.P710170616581472898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049684.P710170616581472898

namespace A049684

/-- `record[A098054(n)²]` -/
def P710170616581472898.Spec : Prop :=
  ∀ n, P710170616581472898.a n = A049684 n

end A049684

/-! ## A049684.P4384505748273918070

`A064170(n+2)-1`
-/

namespace A049684.P4384505748273918070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064170 (n + 2) - 1

end

end A049684.P4384505748273918070

namespace A049684

/-- `A064170(n+2)-1` -/
def P4384505748273918070.Spec : Prop :=
  ∀ n, P4384505748273918070.a n = A049684 n

end A049684

/-! ## A049684.P2447749556832281706

`A166516(2*n)-1`
-/

namespace A049684.P2447749556832281706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (2 * n) - 1

end

end A049684.P2447749556832281706

namespace A049684

/-- `A166516(2*n)-1` -/
def P2447749556832281706.Spec : Prop :=
  ∀ n, P2447749556832281706.a n = A049684 n

end A049684

/-! ## A049684.P15374785500396527273

`A245306(2*n)-1`
-/

namespace A049684.P15374785500396527273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 (2 * n) - 1

end

end A049684.P15374785500396527273

namespace A049684

/-- `A245306(2*n)-1` -/
def P15374785500396527273.Spec : Prop :=
  ∀ n, P15374785500396527273.a n = A049684 n

theorem P15374785500396527273.correct : P15374785500396527273.Spec := by
  intro n
  simp only [A049684, Nat.add_sub_cancel, A049684.P15374785500396527273.a, A049684.P7569504399048333540.a, A000045, A000045.P11838749114346432762.a, A245306, A245306.P10470454293037442129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049684

/-! ## A049684.P15480386399297071365

`A295672(4*(n+1))`
-/

namespace A049684.P15480386399297071365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (4 * (n + 1))

end

end A049684.P15480386399297071365

namespace A049684

/-- `A295672(4*(n+1))` -/
def P15480386399297071365.Spec : Prop :=
  ∀ n, P15480386399297071365.a n = A049684 n

end A049684

/-! ## A049684.P10999812830056004711

`A175395(2*n)/2`
-/

namespace A049684.P10999812830056004711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175395 (2 * n) : ℚ) / 2

end

end A049684.P10999812830056004711

namespace A049684

/-- `A175395(2*n)/2` -/
def P10999812830056004711.Spec : Prop :=
  ∀ n, P10999812830056004711.a n = (A049684 n : ℚ)

theorem P10999812830056004711.correct : P10999812830056004711.Spec := by
  intro n
  simp only [A049684, Nat.add_sub_cancel, A049684.P10999812830056004711.a, A049684.P7569504399048333540.a, A000045, A000045.P11838749114346432762.a, A175395, A175395.P1994188799197197583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049684

/-! ## A049684.P7640576861009137124

`A192873(2*n)/2`
-/

namespace A049684.P7640576861009137124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192873 (2 * n) : ℚ) / 2

end

end A049684.P7640576861009137124

namespace A049684

/-- `A192873(2*n)/2` -/
def P7640576861009137124.Spec : Prop :=
  ∀ n, P7640576861009137124.a n = (A049684 n : ℚ)

end A049684

/-! ## A049684.P16212004139343451181

`A292612(2*n)-4`
-/

namespace A049684.P16212004139343451181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292612 (2 * n) - 4

end

end A049684.P16212004139343451181

namespace A049684

/-- `A292612(2*n)-4` -/
def P16212004139343451181.Spec : Prop :=
  ∀ n, P16212004139343451181.a n = A049684 n

end A049684

/-! ## A049684.P5535082323798627920

`∑[A000045(record[lcm(2, n)])]`
-/

namespace A049684.P5535082323798627920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049684.P5535082323798627920

namespace A049684

/-- `∑[A000045(record[lcm(2, n)])]` -/
def P5535082323798627920.Spec : Prop :=
  ∀ n, P5535082323798627920.a n = A049684 n

end A049684

/-! ## A049684.P3333488287230927590

`record[A000045(n%4+n)²]`
-/

namespace A049684.P3333488287230927590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n % 4 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049684.P3333488287230927590

namespace A049684

/-- `record[A000045(n%4+n)²]` -/
def P3333488287230927590.Spec : Prop :=
  ∀ n, P3333488287230927590.a n = A049684 n

end A049684

/-!
# A049685: a(n) = L(4*n+2)/3, where L=A000032 (the Lucas sequence).

The programs for A049685, the canonical program `A049685.P11265948384615670488` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049685 has offset 0).

The definition of A049685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049685.P11265948384615670488

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049685

/-- `7*a(n-1)-a(n-2)` -/
def P11265948384615670488.Spec : Prop :=
  ∀ n, P11265948384615670488.a n = A049685 n

theorem P11265948384615670488.correct : P11265948384615670488.Spec := by
  intro n
  simp only [A049685]

end A049685

/-! ## A049685.P15639139748325169398

`A000032(4*n+2)/3`
-/

namespace A049685.P15639139748325169398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (4 * n + 2) : ℚ) / 3

end

end A049685.P15639139748325169398

namespace A049685

/-- `A000032(4*n+2)/3` -/
def P15639139748325169398.Spec : Prop :=
  ∀ n, P15639139748325169398.a n = (A049685 n : ℚ)

end A049685

/-! ## A049685.P15042848080069240852

`(A000045(4*n+1)+A000045(4*n+3))/3`
-/

namespace A049685.P15042848080069240852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * n + 1) + A000045 (4 * n + 3) : ℚ) / 3

end

end A049685.P15042848080069240852

namespace A049685

/-- `(A000045(4*n+1)+A000045(4*n+3))/3` -/
def P15042848080069240852.Spec : Prop :=
  ∀ n, P15042848080069240852.a n = (A049685 n : ℚ)

end A049685

/-! ## A049685.P6125411998373067462

`ogf((1-x)/(1-7x+x^2))`
-/

namespace A049685.P6125411998373067462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -7, 1] n

end

end A049685.P6125411998373067462

namespace A049685

/-- `ogf((1-x)/(1-7x+x^2))` -/
def P6125411998373067462.Spec : Prop :=
  ∀ n, P6125411998373067462.a n = A049685 n

end A049685

/-! ## A049685.P2045215656144654132

`floor(ϕ^4*a(n-1))` with `a(0)=1`
-/

namespace A049685.P2045215656144654132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)⌋

end

end A049685.P2045215656144654132

namespace A049685

/-- `floor(ϕ^4*a(n-1))` -/
def P2045215656144654132.Spec : Prop :=
  ∀ n, P2045215656144654132.a n = A049685 n

end A049685

/-! ## A049685.P11859850605694585195

`round(ϕ²^(2*n+1))/3`
-/

namespace A049685.P11859850605694585195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((Real.goldenRatio ^ 2) ^ (2 * n + 1)) : ℚ) / 3

end

end A049685.P11859850605694585195

namespace A049685

/-- `round(ϕ²^(2*n+1))/3` -/
def P11859850605694585195.Spec : Prop :=
  ∀ n, P11859850605694585195.a n = (A049685 n : ℚ)

end A049685

/-! ## A049685.P3107458292908328920

`floor(a(n-1)/ϕ^-4)` with `a(0)=1`
-/

namespace A049685.P3107458292908328920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.goldenRatio ^ (-4 : ℤ)⌋

end

end A049685.P3107458292908328920

namespace A049685

/-- `floor(a(n-1)/ϕ^-4)` -/
def P3107458292908328920.Spec : Prop :=
  ∀ n, P3107458292908328920.a n = A049685 n

end A049685

/-! ## A049685.P11453740633788170595

`Δ[A004187(n)]`
-/

namespace A049685.P11453740633788170595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049685.P11453740633788170595

namespace A049685

/-- `Δ[A004187(n)]` -/
def P11453740633788170595.Spec : Prop :=
  ∀ n, P11453740633788170595.a n = A049685 n

end A049685

/-! ## A049685.P13500481284397301979

`A140824(Δ[n²])`
-/

namespace A049685.P13500481284397301979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140824 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049685.P13500481284397301979

namespace A049685

/-- `A140824(Δ[n²])` -/
def P13500481284397301979.Spec : Prop :=
  ∀ n, P13500481284397301979.a n = A049685 n

end A049685

/-! ## A049685.P1494917391909398982

`A152119(Δ[n²])`
-/

namespace A049685.P1494917391909398982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049685.P1494917391909398982

namespace A049685

/-- `A152119(Δ[n²])` -/
def P1494917391909398982.Spec : Prop :=
  ∀ n, P1494917391909398982.a n = A049685 n

end A049685

/-! ## A049685.P17012121519055148891

`Δ[A004696(4*n)]`
-/

namespace A049685.P17012121519055148891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049685.P17012121519055148891

namespace A049685

/-- `Δ[A004696(4*n)]` -/
def P17012121519055148891.Spec : Prop :=
  ∀ n, P17012121519055148891.a n = A049685 n

end A049685

/-! ## A049685.P10332277281306237767

`Δ[A167816(4*n)]`
-/

namespace A049685.P10332277281306237767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049685.P10332277281306237767

namespace A049685

/-- `Δ[A167816(4*n)]` -/
def P10332277281306237767.Spec : Prop :=
  ∀ n, P10332277281306237767.a n = A049685 n

end A049685

/-! ## A049685.P8296607118434659516

`Δ[A293543(4*n)]`
-/

namespace A049685.P8296607118434659516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049685.P8296607118434659516

namespace A049685

/-- `Δ[A293543(4*n)]` -/
def P8296607118434659516.Spec : Prop :=
  ∀ n, P8296607118434659516.a n = A049685 n

end A049685

/-! ## A049685.P16322496016663875813

`Δ[A293544(4*n)]`
-/

namespace A049685.P16322496016663875813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049685.P16322496016663875813

namespace A049685

/-- `Δ[A293544(4*n)]` -/
def P16322496016663875813.Spec : Prop :=
  ∀ n, P16322496016663875813.a n = A049685 n

end A049685

/-! ## A049685.P15322574524338802684

`A081079(n)/3+1`
-/

namespace A049685.P15322574524338802684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081079 n : ℚ) / 3 + 1

end

end A049685.P15322574524338802684

namespace A049685

/-- `A081079(n)/3+1` -/
def P15322574524338802684.Spec : Prop :=
  ∀ n, P15322574524338802684.a n = (A049685 n : ℚ)

end A049685

/-! ## A049685.P4438505800464372139

`A081077(n)/3-1`
-/

namespace A049685.P4438505800464372139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081077 n : ℚ) / 3 - 1

end

end A049685.P4438505800464372139

namespace A049685

/-- `A081077(n)/3-1` -/
def P4438505800464372139.Spec : Prop :=
  ∀ n, P4438505800464372139.a n = (A049685 n : ℚ)

end A049685

/-! ## A049685.P4804981085562649112

`A276529(5*(n+1))`
-/

namespace A049685.P4804981085562649112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276529 (5 * (n + 1))

end

end A049685.P4804981085562649112

namespace A049685

/-- `A276529(5*(n+1))` -/
def P4804981085562649112.Spec : Prop :=
  ∀ n, P4804981085562649112.a n = A049685 n

end A049685

/-! ## A049685.P8418543864009765449

`Δ[A000045(4*n)/3]`
-/

namespace A049685.P8418543864009765449
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049685.P8418543864009765449

namespace A049685

/-- `Δ[A000045(4*n)/3]` -/
def P8418543864009765449.Spec : Prop :=
  ∀ n, P8418543864009765449.a n = (A049685 n : ℚ)

end A049685

/-! ## A049685.P2495678241295692601

`ceil(A000032(Δ[n²])²/3)`
-/

namespace A049685.P2495678241295692601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 : ℚ) / 3⌉

end

end A049685.P2495678241295692601

namespace A049685

/-- `ceil(A000032(Δ[n²])²/3)` -/
def P2495678241295692601.Spec : Prop :=
  ∀ n, P2495678241295692601.a n = A049685 n

end A049685

/-! ## A049685.P17484616710742344002

`A000032(4*n)-a(n-1)` with `a(0)=1`
-/

namespace A049685.P17484616710742344002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000032 (4 * n) - a (n - 1)

end

end A049685.P17484616710742344002

namespace A049685

/-- `A000032(4*n)-a(n-1)` -/
def P17484616710742344002.Spec : Prop :=
  ∀ n, P17484616710742344002.a n = A049685 n

end A049685

/-!
# A049686: a(n) = Fibonacci(8n)/3.

The programs for A049686, the canonical program `A049686.P13805215257628979111` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049686 has offset 0).

The definition of A049686 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049686.P13805215257628979111

`47*a(n-1)-a(n-2)` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049686

/-- `47*a(n-1)-a(n-2)` -/
def P13805215257628979111.Spec : Prop :=
  ∀ n, P13805215257628979111.a n = A049686 n

theorem P13805215257628979111.correct : P13805215257628979111.Spec := by
  intro n
  simp only [A049686]

end A049686

/-! ## A049686.P8305069152205817387

`A004187(2*n)`
-/

namespace A049686.P8305069152205817387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (2 * n)

end

end A049686.P8305069152205817387

namespace A049686

/-- `A004187(2*n)` -/
def P8305069152205817387.Spec : Prop :=
  ∀ n, P8305069152205817387.a n = A049686 n

end A049686

/-! ## A049686.P7411957375117864282

`7*A049668(n)`
-/

namespace A049686.P7411957375117864282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A049668 n

end

end A049686.P7411957375117864282

namespace A049686

/-- `7*A049668(n)` -/
def P7411957375117864282.Spec : Prop :=
  ∀ n, P7411957375117864282.a n = A049686 n

end A049686

/-! ## A049686.P9907532927797068948

`A000045(8*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A049686.P9907532927797068948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (8 * n) : ℚ) / 3

end

end A049686.P9907532927797068948

namespace A049686

/-- `A000045(8*n)/3` -/
def P9907532927797068948.Spec : Prop :=
  ∀ n, P9907532927797068948.a n = (A049686 n : ℚ)

end A049686

/-! ## A049686.P17309359438545132622

`∑[ceil((ϕ+1)²^(2*n-1))]-1`
-/

namespace A049686.P17309359438545132622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Real.goldenRatio + 1) ^ 2) ^ ((2 * n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049686.P17309359438545132622

namespace A049686

/-- `∑[ceil((ϕ+1)²^(2*n-1))]-1` -/
def P17309359438545132622.Spec : Prop :=
  ∀ n, P17309359438545132622.a n = A049686 n

end A049686

/-! ## A049686.P10765750014821246826

`A138473(n)/3`
-/

namespace A049686.P10765750014821246826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138473 n : ℚ) / 3

end

end A049686.P10765750014821246826

namespace A049686

/-- `A138473(n)/3` -/
def P10765750014821246826.Spec : Prop :=
  ∀ n, P10765750014821246826.a n = (A049686 n : ℚ)

end A049686

/-! ## A049686.P13107989255304623534

`A004696(8*n)`
-/

namespace A049686.P13107989255304623534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (8 * n)

end

end A049686.P13107989255304623534

namespace A049686

/-- `A004696(8*n)` -/
def P13107989255304623534.Spec : Prop :=
  ∀ n, P13107989255304623534.a n = A049686 n

end A049686

/-! ## A049686.P5959644183060412064

`A167816(8*n)`
-/

namespace A049686.P5959644183060412064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (8 * n)

end

end A049686.P5959644183060412064

namespace A049686

/-- `A167816(8*n)` -/
def P5959644183060412064.Spec : Prop :=
  ∀ n, P5959644183060412064.a n = A049686 n

end A049686

/-! ## A049686.P18306685634516164929

`A293543(8*n)`
-/

namespace A049686.P18306685634516164929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (8 * n)

end

end A049686.P18306685634516164929

namespace A049686

/-- `A293543(8*n)` -/
def P18306685634516164929.Spec : Prop :=
  ∀ n, P18306685634516164929.a n = A049686 n

end A049686

/-! ## A049686.P12143456104982535299

`A293544(8*n)`
-/

namespace A049686.P12143456104982535299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 (8 * n)

end

end A049686.P12143456104982535299

namespace A049686

/-- `A293544(8*n)` -/
def P12143456104982535299.Spec : Prop :=
  ∀ n, P12143456104982535299.a n = A049686 n

end A049686

/-!
# A049687: Array T read by diagonals: T(i,j)=number of lines passing through (0,0) and at least one other lattice point (h,k) satisfying 0<=h<=i, 0<=k<=j.

The programs for A049687, there is no canonical definition to state claims against.
-/

/-! ## A049687.P3044438765263529625

`A049627(n)-1`
-/

namespace A049687.P3044438765263529625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 n - 1

end

end A049687.P3044438765263529625

/-! ## A049687.P4125045663557167831

`A023443(A049627(n))`
-/

namespace A049687.P4125045663557167831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049627 n).toNat

end

end A049687.P4125045663557167831

/-! ## A049687.P13950538560904982740

`A184985(A049695(n)+1)`
-/

namespace A049687.P13950538560904982740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A049695 n + 1).toNat

end

end A049687.P13950538560904982740

/-! ## A049687.P123816460558018897

`A059036(n)-A049615(n)`
-/

namespace A049687.P123816460558018897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n - A049615 n

end

end A049687.P123816460558018897

/-! ## A049687.P15528248508528323635

`A049695(n)+1-A103451(n)`
-/

namespace A049687.P15528248508528323635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 n + (1 - A103451 n)

end

end A049687.P15528248508528323635

/-! ## A049687.P14766775819715346615

`A049695(n)+A154325(n)-1`
-/

namespace A049687.P14766775819715346615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 n + (A154325 n - 1)

end

end A049687.P14766775819715346615

/-! ## A049687.P11272621759516462553

`A003991(n+1)-(A049615(n)+1)`
-/

namespace A049687.P11272621759516462553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - (A049615 n + 1)

end

end A049687.P11272621759516462553

/-! ## A049687.P9489865739493907940

`(A049627(n)+A000027(3*n+2))%(n+1)`
-/

namespace A049687.P9489865739493907940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049627 n + A000027 (3 * n + 2)) (n + 1 : ℤ)

end

end A049687.P9489865739493907940

/-! ## A049687.P11492638689491441779

`A003056(n)+A004247(n)-A049615(n)`
-/

namespace A049687.P11492638689491441779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A004247 n - A049615 n)

end

end A049687.P11492638689491441779

/-! ## A049687.P16983010386910278655

`A057427(A049695(n)-A057427(n))+A049695(n)`
-/

namespace A049687.P16983010386910278655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A049695 n - A057427 n).toNat + A049695 n

end

end A049687.P16983010386910278655

/-! ## A049687.P3265290670069404428

`A049695(n)-A057428(A057428(n)+A049695(n))`
-/

namespace A049687.P3265290670069404428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 n - A057428 (A057428 n + A049695 n).toNat

end

end A049687.P3265290670069404428

/-! ## A049687.P7677135933364038241

`A057428(n+1)+A049627(n)`
-/

namespace A049687.P7677135933364038241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A049627 n

end

end A049687.P7677135933364038241

/-! ## A049687.P11826957688122785752

`A060576(A176346(n))+A049695(n)`
-/

namespace A049687.P11826957688122785752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A176346 n).toNat + A049695 n

end

end A049687.P11826957688122785752

/-! ## A049687.P12732487411391004055

`A266977(A049702(n))-1`
-/

namespace A049687.P12732487411391004055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A049702 n).toNat - 1

end

end A049687.P12732487411391004055

/-! ## A049687.P17558699895411905169

`A049639(A185869(n+1))`
-/

namespace A049687.P17558699895411905169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (A185869 (n + 1)).toNat

end

end A049687.P17558699895411905169

/-! ## A049687.P12549106815847272985

`A049639(A114327(n)+A016825(n))`
-/

namespace A049687.P12549106815847272985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (A114327 n + A016825 n).toNat

end

end A049687.P12549106815847272985

/-! ## A049687.P18232419631698330456

`A049639(A016825(n)-(1-A114327(n)))`
-/

namespace A049687.P18232419631698330456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (A016825 n - (1 - A114327 n)).toNat

end

end A049687.P18232419631698330456

/-! ## A049687.P14964419822837311387

`A049639(A005843(n)+A002024(n+1)²)`
-/

namespace A049687.P14964419822837311387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049639 (A005843 n + A002024 (n + 1) ^ 2).toNat

end

end A049687.P14964419822837311387

/-! ## A049687.P6989928849044475593

`val(A266550(A049627(n)+2)+1, 2)`
-/

namespace A049687.P6989928849044475593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266550 (A049627 n + 2).toNat + 1).toNat 2

end

end A049687.P6989928849044475593

/-! ## A049687.P6887862584284520696

`A242378(C(A049627(n), 2))`
-/

namespace A049687.P6887862584284520696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 (Nat.choose (A049627 n).toNat 2)

end

end A049687.P6887862584284520696

/-!
# A049688: a(n) = Sum_{i=0..n} T(i,n-i), array T as in A049687.

The programs for A049688, the canonical program `A049688.P4025135909260073091` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049688 has offset 0).

The definition of A049688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049688.P4803166138760691704

`∑[A049643(n)]`
-/

namespace A049688.P4803166138760691704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049688.P4803166138760691704

namespace A049688

/-- `∑[A049643(n)]` -/
def P4803166138760691704.Spec : Prop :=
  ∀ n, P4803166138760691704.a n = A049688 n

end A049688

/-! ## A049688.P16280292696198876602

`A103116(n)+n`
-/

namespace A049688.P16280292696198876602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n + (n : ℤ)

end

end A049688.P16280292696198876602

namespace A049688

/-- `A103116(n)+n` -/
def P16280292696198876602.Spec : Prop :=
  ∀ n, P16280292696198876602.a n = A049688 n

end A049688

/-! ## A049688.P2881859057118797092

`∑[∑[A384710(n)]]`
-/

namespace A049688.P2881859057118797092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049688.P2881859057118797092

namespace A049688

/-- `∑[∑[A384710(n)]]` -/
def P2881859057118797092.Spec : Prop :=
  ∀ n, P2881859057118797092.a n = A049688 n

end A049688

/-! ## A049688.P11374294218484191190

`∑[A005728(n)]-1`
-/

namespace A049688.P11374294218484191190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049688.P11374294218484191190

namespace A049688

/-- `∑[A005728(n)]-1` -/
def P11374294218484191190.Spec : Prop :=
  ∀ n, P11374294218484191190.a n = A049688 n

end A049688

/-! ## A049688.P18062815373681074868

`∑[A002088(n)]+n`
-/

namespace A049688.P18062815373681074868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A049688.P18062815373681074868

namespace A049688

/-- `∑[A002088(n)]+n` -/
def P18062815373681074868.Spec : Prop :=
  ∀ n, P18062815373681074868.a n = A049688 n

end A049688

/-! ## A049688.P4025135909260073091

`A005598(n)-1+n`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049688

/-- `A005598(n)-1+n` -/
def P4025135909260073091.Spec : Prop :=
  ∀ n, P4025135909260073091.a n = A049688 n

theorem P4025135909260073091.correct : P4025135909260073091.Spec := by
  intro n
  simp only [A049688]

end A049688

/-! ## A049688.P7168267731177738042

`∑[A049696(n)/2]+n`
-/

namespace A049688.P7168267731177738042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A049688.P7168267731177738042

namespace A049688

/-- `∑[A049696(n)/2]+n` -/
def P7168267731177738042.Spec : Prop :=
  ∀ n, P7168267731177738042.a n = (A049688 n : ℚ)

end A049688

/-! ## A049688.P7147538921761599626

`∑[A000010(n)+a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A049688.P7147538921761599626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000010 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049688.P7147538921761599626

namespace A049688

/-- `∑[A000010(n)+a(n-1)]` -/
def P7147538921761599626.Spec : Prop :=
  ∀ n, P7147538921761599626.a n = A049688 n

end A049688

/-! ## A049688.P16701821867074145993

`∑[∑[A000010(abs(1-n)+1)]]-1`
-/

namespace A049688.P16701821867074145993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049688.P16701821867074145993

namespace A049688

/-- `∑[∑[A000010(abs(1-n)+1)]]-1` -/
def P16701821867074145993.Spec : Prop :=
  ∀ n, P16701821867074145993.a n = A049688 n

end A049688

/-! ## A049688.P10050411888566211250

`∑[∑[A109606(abs(1-n)+1)+1]]-1`
-/

namespace A049688.P10050411888566211250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (|1 - (n : ℤ)| + 1).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049688.P10050411888566211250

namespace A049688

/-- `∑[∑[A109606(abs(1-n)+1)+1]]-1` -/
def P10050411888566211250.Spec : Prop :=
  ∀ n, P10050411888566211250.a n = A049688 n

end A049688

/-! ## A049688.P4480624697883946510

`A023443(n)+A005598(n)`
-/

namespace A049688.P4480624697883946510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A005598 n

end

end A049688.P4480624697883946510

namespace A049688

/-- `A023443(n)+A005598(n)` -/
def P4480624697883946510.Spec : Prop :=
  ∀ n, P4480624697883946510.a n = A049688 n

theorem P4480624697883946510.correct : P4480624697883946510.Spec := by
  intro n
  simp only [A049688, Nat.add_sub_cancel, A049688.P4480624697883946510.a, A049688.P4025135909260073091.a, A005598, A005598.P13593438204838445571.a, A023443, A023443.P2966051066474347068.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049688

/-! ## A049688.P11988875717063000095

`A005598(n)-A024000(n)`
-/

namespace A049688.P11988875717063000095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n - A024000 n

end

end A049688.P11988875717063000095

namespace A049688

/-- `A005598(n)-A024000(n)` -/
def P11988875717063000095.Spec : Prop :=
  ∀ n, P11988875717063000095.a n = A049688 n

theorem P11988875717063000095.correct : P11988875717063000095.Spec := by
  intro n
  simp only [A049688, Nat.add_sub_cancel, A049688.P11988875717063000095.a, A049688.P4025135909260073091.a, A005598, A005598.P13593438204838445571.a, A024000, A024000.P8748414335487061084.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049688

/-! ## A049688.P3147596393848108406

`n-(A005598(n)-A274008(n))`
-/

namespace A049688.P3147596393848108406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A005598 n - A274008 n)

end

end A049688.P3147596393848108406

namespace A049688

/-- `n-(A005598(n)-A274008(n))` -/
def P3147596393848108406.Spec : Prop :=
  ∀ n, P3147596393848108406.a n = A049688 n

theorem P3147596393848108406.correct : P3147596393848108406.Spec := by
  intro n
  simp only [A049688, Nat.add_sub_cancel, A049688.P3147596393848108406.a, A049688.P4025135909260073091.a, A005598, A005598.P13593438204838445571.a, A274008, A274008.P14054883072027176064.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A091369, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049688

/-! ## A049688.P11426215738008698261

`A143270(n+1)-A011755(n+1)+n`
-/

namespace A049688.P11426215738008698261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143270 (n + 1) - A011755 (n + 1) + (n : ℤ)

end

end A049688.P11426215738008698261

namespace A049688

/-- `A143270(n+1)-A011755(n+1)+n` -/
def P11426215738008698261.Spec : Prop :=
  ∀ n, P11426215738008698261.a n = A049688 n

end A049688

/-! ## A049688.P13368527238266437726

`∑[A092249(n+1)]-A092249(n+1)+n`
-/

namespace A049688.P13368527238266437726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A092249 (n + 1) + (n : ℤ)

end

end A049688.P13368527238266437726

namespace A049688

/-- `∑[A092249(n+1)]-A092249(n+1)+n` -/
def P13368527238266437726.Spec : Prop :=
  ∀ n, P13368527238266437726.a n = A049688 n

end A049688

/-! ## A049688.P13860919431061684082

`∑[∑[A000010(n+1)]-A000010(n+1)]+n`
-/

namespace A049688.P13860919431061684082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A049688.P13860919431061684082

namespace A049688

/-- `∑[∑[A000010(n+1)]-A000010(n+1)]+n` -/
def P13860919431061684082.Spec : Prop :=
  ∀ n, P13860919431061684082.a n = A049688 n

end A049688

/-! ## A049688.P10843548153531830124

`∑[ceil(A049691(n)/2)]`
-/

namespace A049688.P10843548153531830124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049691 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049688.P10843548153531830124

namespace A049688

/-- `∑[ceil(A049691(n)/2)]` -/
def P10843548153531830124.Spec : Prop :=
  ∀ n, P10843548153531830124.a n = A049688 n

end A049688

/-! ## A049688.P9768741456573039680

`∑[floor(A049632(n)/2)]`
-/

namespace A049688.P9768741456573039680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049632 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049688.P9768741456573039680

namespace A049688

/-- `∑[floor(A049632(n)/2)]` -/
def P9768741456573039680.Spec : Prop :=
  ∀ n, P9768741456573039680.a n = A049688 n

end A049688

/-! ## A049688.P15937806080782156276

`A049632(n)-(A049643(n)-a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A049688.P15937806080782156276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A049632 n - (A049643 n - a (n - 1))

end

end A049688.P15937806080782156276

namespace A049688

/-- `A049632(n)-(A049643(n)-a(n-1))` -/
def P15937806080782156276.Spec : Prop :=
  ∀ n, P15937806080782156276.a n = A049688 n

end A049688

/-!
# A049689: a(n)=Sum{((-1)^(i+1))*T(i,n-i): i=0,1,...,n}, array T as in A049687.

The programs for A049689, the canonical program `A049689.P16202850422466564671` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049689 has offset 0).

The definition of A049689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049689.P16202850422466564671

`A106481(n%or(1, n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A049689

/-- `A106481(n%or(1, n))` -/
def P16202850422466564671.Spec : Prop :=
  ∀ n, P16202850422466564671.a n = A049689 n

theorem P16202850422466564671.correct : P16202850422466564671.Spec := by
  intro n
  simp only [A049689]

end A049689

/-! ## A049689.P16330924405086486177

`char[2*n]*A106481(n)`
-/

namespace A049689.P16330924405086486177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A106481 n

end

end A049689.P16330924405086486177

namespace A049689

/-- `char[2*n]*A106481(n)` -/
def P16330924405086486177.Spec : Prop :=
  ∀ n, P16330924405086486177.a n = A049689 n

end A049689

/-! ## A049689.P3751292860685853945

`A049690(A142150(n))`
-/

namespace A049689.P3751292860685853945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (A142150 n).toNat

end

end A049689.P3751292860685853945

namespace A049689

/-- `A049690(A142150(n))` -/
def P3751292860685853945.Spec : Prop :=
  ∀ n, P3751292860685853945.a n = A049689 n

end A049689

/-! ## A049689.P168179020928953886

`A106481(A237420(n))`
-/

namespace A049689.P168179020928953886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (A237420 n).toNat

end

end A049689.P168179020928953886

namespace A049689

/-- `A106481(A237420(n))` -/
def P168179020928953886.Spec : Prop :=
  ∀ n, P168179020928953886.a n = A049689 n

end A049689

/-! ## A049689.P969741447903280170

`A049690(n-A026741(n))`
-/

namespace A049689.P969741447903280170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 ((n : ℤ) - A026741 n).toNat

end

end A049689.P969741447903280170

namespace A049689

/-- `A049690(n-A026741(n))` -/
def P969741447903280170.Spec : Prop :=
  ∀ n, P969741447903280170.a n = A049689 n

end A049689

/-! ## A049689.P14791831960055408168

`A106481(n*A059841(n))`
-/

namespace A049689.P14791831960055408168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 ((n : ℤ) * A059841 n).toNat

end

end A049689.P14791831960055408168

namespace A049689

/-- `A106481(n*A059841(n))` -/
def P14791831960055408168.Spec : Prop :=
  ∀ n, P14791831960055408168.a n = A049689 n

end A049689

/-! ## A049689.P16487360931681280900

`A106481(lcm(n, A056594(n)))`
-/

namespace A049689.P16487360931681280900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (Int.lcm (n : ℤ) (A056594 n))

end

end A049689.P16487360931681280900

namespace A049689

/-- `A106481(lcm(n, A056594(n)))` -/
def P16487360931681280900.Spec : Prop :=
  ∀ n, P16487360931681280900.a n = A049689 n

end A049689

/-! ## A049689.P15684314682847459919

`A106481(n*A056594(n)²)`
-/

namespace A049689.P15684314682847459919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 ((n : ℤ) * A056594 n ^ 2).toNat

end

end A049689.P15684314682847459919

namespace A049689

/-- `A106481(n*A056594(n)²)` -/
def P15684314682847459919.Spec : Prop :=
  ∀ n, P15684314682847459919.a n = A049689 n

end A049689

/-! ## A049689.P6059283122592065858

`A049690((n+1)%A008619(n))`
-/

namespace A049689.P6059283122592065858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (Int.tmod (n + 1 : ℤ) (A008619 n)).toNat

end

end A049689.P6059283122592065858

namespace A049689

/-- `A049690((n+1)%A008619(n))` -/
def P6059283122592065858.Spec : Prop :=
  ∀ n, P6059283122592065858.a n = A049689 n

end A049689

/-! ## A049689.P3075996784383073407

`char[2*n]*A049690(A004526(n))`
-/

namespace A049689.P3075996784383073407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A049690 (A004526 n).toNat

end

end A049689.P3075996784383073407

namespace A049689

/-- `char[2*n]*A049690(A004526(n))` -/
def P3075996784383073407.Spec : Prop :=
  ∀ n, P3075996784383073407.a n = A049689 n

end A049689

/-! ## A049689.P17601330327840889146

`A049690(∑[n]%(A000007(n)+n))`
-/

namespace A049689.P17601330327840889146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000007 n + (n : ℤ))).toNat

end

end A049689.P17601330327840889146

namespace A049689

/-- `A049690(∑[n]%(A000007(n)+n))` -/
def P17601330327840889146.Spec : Prop :=
  ∀ n, P17601330327840889146.a n = A049689 n

end A049689

/-! ## A049689.P4184536996899157650

`A000010(2*n)+a(n-2)-A000010(n)` with `a(0)=0, a(1)=0`
-/

namespace A049689.P4184536996899157650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A000010 (2 * n) + (a (n - 2) - A000010 n)

end

end A049689.P4184536996899157650

namespace A049689

/-- `A000010(2*n)+a(n-2)-A000010(n)` -/
def P4184536996899157650.Spec : Prop :=
  ∀ n, P4184536996899157650.a n = A049689 n

end A049689

/-! ## A049689.P4534977957095262818

`A056594(n)*A106481(n)*A056594(n)`
-/

namespace A049689.P4534977957095262818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A106481 n * A056594 n

end

end A049689.P4534977957095262818

namespace A049689

/-- `A056594(n)*A106481(n)*A056594(n)` -/
def P4534977957095262818.Spec : Prop :=
  ∀ n, P4534977957095262818.a n = A049689 n

end A049689

/-! ## A049689.P17330835965430927000

`A106481(n%A052552(n))`
-/

namespace A049689.P17330835965430927000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (Int.tmod (n : ℤ) (A052552 n)).toNat

end

end A049689.P17330835965430927000

namespace A049689

/-- `A106481(n%A052552(n))` -/
def P17330835965430927000.Spec : Prop :=
  ∀ n, P17330835965430927000.a n = A049689 n

end A049689

/-! ## A049689.P14769231591161824463

`A106481(and(n, A077896(n)))`
-/

namespace A049689.P14769231591161824463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (Int.land (n : ℤ) (A077896 n)).toNat

end

end A049689.P14769231591161824463

namespace A049689

/-- `A106481(and(n, A077896(n)))` -/
def P14769231591161824463.Spec : Prop :=
  ∀ n, P14769231591161824463.a n = A049689 n

end A049689

/-! ## A049689.P10643400636172840444

`A106481(and(n, A097110(n)))`
-/

namespace A049689.P10643400636172840444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (Int.land (n : ℤ) (A097110 n)).toNat

end

end A049689.P10643400636172840444

namespace A049689

/-- `A106481(and(n, A097110(n)))` -/
def P10643400636172840444.Spec : Prop :=
  ∀ n, P10643400636172840444.a n = A049689 n

end A049689

/-! ## A049689.P18228373667280441617

`A106481(and(n, A166920(n)))`
-/

namespace A049689.P18228373667280441617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (Int.land (n : ℤ) (A166920 n)).toNat

end

end A049689.P18228373667280441617

namespace A049689

/-- `A106481(and(n, A166920(n)))` -/
def P18228373667280441617.Spec : Prop :=
  ∀ n, P18228373667280441617.a n = A049689 n

end A049689

/-! ## A049689.P13989605963225609703

`A106481(and(n, A278755(n)))`
-/

namespace A049689.P13989605963225609703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (Int.land (n : ℤ) (A278755 n)).toNat

end

end A049689.P13989605963225609703

namespace A049689

/-- `A106481(and(n, A278755(n)))` -/
def P13989605963225609703.Spec : Prop :=
  ∀ n, P13989605963225609703.a n = A049689 n

end A049689

/-! ## A049689.P6875412559302568354

`A106481(and(n, A282417(n)))`
-/

namespace A049689.P6875412559302568354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (Int.land (n : ℤ) (A282417 n)).toNat

end

end A049689.P6875412559302568354

namespace A049689

/-- `A106481(and(n, A282417(n)))` -/
def P6875412559302568354.Spec : Prop :=
  ∀ n, P6875412559302568354.a n = A049689 n

end A049689

/-! ## A049689.P4634809406607316528

`and(A106481(n), A288663(n))`
-/

namespace A049689.P4634809406607316528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106481 n) (A288663 n)

end

end A049689.P4634809406607316528

namespace A049689

/-- `and(A106481(n), A288663(n))` -/
def P4634809406607316528.Spec : Prop :=
  ∀ n, P4634809406607316528.a n = A049689 n

end A049689

/-!
# A049690: a(n) = Sum_{k=1..n} phi(2*k), where phi = Euler totient function, cf. A000010.

The programs for A049690, the canonical program `A049690.P5802976432463203985` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049690 has offset 0).

The definition of A049690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049690.P5802976432463203985

`A002088(n)+a(floor(n/2))` with `a(0)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049690

/-- `A002088(n)+a(floor(n/2))` -/
def P5802976432463203985.Spec : Prop :=
  ∀ n, P5802976432463203985.a n = A049690 n

theorem P5802976432463203985.correct : P5802976432463203985.Spec := by
  intro n
  simp only [A049690]

end A049690

/-! ## A049690.P9812653625413168737

`A000010(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A049690.P9812653625413168737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000010 (2 * n) + a (n - 1)

end

end A049690.P9812653625413168737

namespace A049690

/-- `A000010(2*n)+a(n-1)` -/
def P9812653625413168737.Spec : Prop :=
  ∀ n, P9812653625413168737.a n = A049690 n

end A049690

/-! ## A049690.P7776453086562856665

`A300721(4*n)+a(n-1)` with `a(0)=0`
-/

namespace A049690.P7776453086562856665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A300721 (4 * n) + a (n - 1)

end

end A049690.P7776453086562856665

namespace A049690

/-- `A300721(4*n)+a(n-1)` -/
def P7776453086562856665.Spec : Prop :=
  ∀ n, P7776453086562856665.a n = A049690 n

end A049690

/-! ## A049690.P16957716166775558373

`a(n-1)+n-A176095(n)` with `a(0)=0`
-/

namespace A049690.P16957716166775558373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A176095 n)

end

end A049690.P16957716166775558373

namespace A049690

/-- `a(n-1)+n-A176095(n)` -/
def P16957716166775558373.Spec : Prop :=
  ∀ n, P16957716166775558373.a n = A049690 n

end A049690

/-! ## A049690.P14852547205692448156

`∑[A000010(abs(1-2*n)+1)]-1`
-/

namespace A049690.P14852547205692448156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (2 * n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049690.P14852547205692448156

namespace A049690

/-- `∑[A000010(abs(1-2*n)+1)]-1` -/
def P14852547205692448156.Spec : Prop :=
  ∀ n, P14852547205692448156.a n = A049690 n

end A049690

/-! ## A049690.P2391779934288659171

`∑[A000010(n*gcd(2, a(n-2)))]` with `a(0)=0, a(1)=1`
-/

namespace A049690.P2391779934288659171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000010 (n * Int.gcd 2 (f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049690.P2391779934288659171

namespace A049690

/-- `∑[A000010(n*gcd(2, a(n-2)))]` -/
def P2391779934288659171.Spec : Prop :=
  ∀ n, P2391779934288659171.a n = A049690 n

end A049690

/-! ## A049690.P16139206827856881330

`∑[A000010(2*n-and(1, a(n-1)))]` with `a(0)=0`
-/

namespace A049690.P16139206827856881330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000010 ((2 * n : ℤ) - Int.land 1 (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049690.P16139206827856881330

namespace A049690

/-- `∑[A000010(2*n-and(1, a(n-1)))]` -/
def P16139206827856881330.Spec : Prop :=
  ∀ n, P16139206827856881330.a n = A049690 n

end A049690

/-! ## A049690.P6068366917928023643

`∑[A000010(abs(1-n)+1+n)-1]+n`
-/

namespace A049690.P6068366917928023643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A049690.P6068366917928023643

namespace A049690

/-- `∑[A000010(abs(1-n)+1+n)-1]+n` -/
def P6068366917928023643.Spec : Prop :=
  ∀ n, P6068366917928023643.a n = A049690 n

end A049690

/-! ## A049690.P9568948349551899328

`∑[A300721(A008574(n))]`
-/

namespace A049690.P9568948349551899328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300721 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049690.P9568948349551899328

namespace A049690

/-- `∑[A300721(A008574(n))]` -/
def P9568948349551899328.Spec : Prop :=
  ∀ n, P9568948349551899328.a n = A049690 n

end A049690

/-! ## A049690.P6571167429744827462

`A190815(n+1)-A002088(2*n)`
-/

namespace A049690.P6571167429744827462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190815 (n + 1) - A002088 (2 * n)

end

end A049690.P6571167429744827462

namespace A049690

/-- `A190815(n+1)-A002088(2*n)` -/
def P6571167429744827462.Spec : Prop :=
  ∀ n, P6571167429744827462.a n = A049690 n

end A049690

/-! ## A049690.P8915975863957941730

`∪[A099958(n+1), A190815(n+1)]`
-/

namespace A049690.P8915975863957941730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049690.P8915975863957941730

namespace A049690

/-- `∪[A099958(n+1), A190815(n+1)]` -/
def P8915975863957941730.Spec : Prop :=
  ∀ n, (P8915975863957941730.a n : ℤ) = A049690 n

end A049690

/-! ## A049690.P14903028381266219012

`∑[A062570(n+1)]-A062570(n+1)`
-/

namespace A049690.P14903028381266219012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062570 (n + 1)

end

end A049690.P14903028381266219012

namespace A049690

/-- `∑[A062570(n+1)]-A062570(n+1)` -/
def P14903028381266219012.Spec : Prop :=
  ∀ n, P14903028381266219012.a n = A049690 n

end A049690

/-! ## A049690.P18230820686187015716

`A002088(2*n+1)-A099957(n+1)`
-/

namespace A049690.P18230820686187015716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 * n + 1) - A099957 (n + 1)

end

end A049690.P18230820686187015716

namespace A049690

/-- `A002088(2*n+1)-A099957(n+1)` -/
def P18230820686187015716.Spec : Prop :=
  ∀ n, P18230820686187015716.a n = A049690 n

end A049690

/-! ## A049690.P5655230705486632781

`A099958(n+1)-A002088(2*n+1)`
-/

namespace A049690.P5655230705486632781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099958 (n + 1) - A002088 (2 * n + 1)

end

end A049690.P5655230705486632781

namespace A049690

/-- `A099958(n+1)-A002088(2*n+1)` -/
def P5655230705486632781.Spec : Prop :=
  ∀ n, P5655230705486632781.a n = A049690 n

end A049690

/-! ## A049690.P5396126151574703812

`A176095(n+1)+∑[n-A176095(n+1)]`
-/

namespace A049690.P5396126151574703812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A176095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049690.P5396126151574703812

namespace A049690

/-- `A176095(n+1)+∑[n-A176095(n+1)]` -/
def P5396126151574703812.Spec : Prop :=
  ∀ n, P5396126151574703812.a n = A049690 n

end A049690

/-! ## A049690.P3607161713404759029

`A002088(2*n+1)-∑[A000010(2*n+1)]`
-/

namespace A049690.P3607161713404759029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049690.P3607161713404759029

namespace A049690

/-- `A002088(2*n+1)-∑[A000010(2*n+1)]` -/
def P3607161713404759029.Spec : Prop :=
  ∀ n, P3607161713404759029.a n = A049690 n

end A049690

/-! ## A049690.P11059147880083736984

`∑[A000010(A004767(n)+1)/2]-A000010(2*(n+1))`
-/

namespace A049690.P11059147880083736984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A004767 n + 1).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000010 (2 * (n + 1)) : ℚ)

end

end A049690.P11059147880083736984

namespace A049690

/-- `∑[A000010(A004767(n)+1)/2]-A000010(2*(n+1))` -/
def P11059147880083736984.Spec : Prop :=
  ∀ n, P11059147880083736984.a n = (A049690 n : ℚ)

end A049690

/-! ## A049690.P4525636556424692385

`∑[A000010(A000027(n+1)+n+1)%(n+2)]-A000010(2*(n+1))`
-/

namespace A049690.P4525636556424692385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A000027 (n + 1) + (n : ℤ) + 1).toNat) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000010 (2 * (n + 1))

end

end A049690.P4525636556424692385

namespace A049690

/-- `∑[A000010(A000027(n+1)+n+1)%(n+2)]-A000010(2*(n+1))` -/
def P4525636556424692385.Spec : Prop :=
  ∀ n, P4525636556424692385.a n = A049690 n

end A049690

/-! ## A049690.P11667890963709994188

`A132952(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A049690.P11667890963709994188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A132952 (2 * n) + a (n - 1)

end

end A049690.P11667890963709994188

namespace A049690

/-- `A132952(2*n)+a(n-1)` -/
def P11667890963709994188.Spec : Prop :=
  ∀ n, P11667890963709994188.a n = A049690 n

end A049690

/-! ## A049690.P17744102445202167666

`A297117(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A049690.P17744102445202167666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A297117 (2 * n) + a (n - 1)

end

end A049690.P17744102445202167666

namespace A049690

/-- `A297117(2*n)+a(n-1)` -/
def P17744102445202167666.Spec : Prop :=
  ∀ n, P17744102445202167666.a n = A049690 n

end A049690

/-!
# A049691: a(n)=T(n,n), array T as in A049687. Also a(n)=T(2n,2n), array T given by A049639.

The programs for A049691, the canonical program `A049691.P16354850273583101` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049691 has offset 0).

The definition of A049691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049691.P16354850273583101

`xor(1, A206350(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049691

/-- `xor(1, A206350(n+1))` -/
def P16354850273583101.Spec : Prop :=
  ∀ n, P16354850273583101.a n = A049691 n

theorem P16354850273583101.correct : P16354850273583101.Spec := by
  intro n
  simp only [A049691]

end A049691

/-! ## A049691.P3752512881289803982

`ceil(A049696(n)+abs(sin(n)))`
-/

namespace A049691.P3752512881289803982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049696 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A049691.P3752512881289803982

namespace A049691

/-- `ceil(A049696(n)+abs(sin(n)))` -/
def P3752512881289803982.Spec : Prop :=
  ∀ n, P3752512881289803982.a n = A049691 n

end A049691

/-! ## A049691.P8765303235074020931

`a(n-1)+2*A000010(n)` with `a(0)=0, a(1)=3`
-/

namespace A049691.P8765303235074020931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 2 * A000010 n

end

end A049691.P8765303235074020931

namespace A049691

/-- `a(n-1)+2*A000010(n)` -/
def P8765303235074020931.Spec : Prop :=
  ∀ n, P8765303235074020931.a n = A049691 n

end A049691

/-! ## A049691.P16385919677706894209

`A049643(n)+A002088(n)`
-/

namespace A049691.P16385919677706894209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + A002088 n

end

end A049691.P16385919677706894209

namespace A049691

/-- `A049643(n)+A002088(n)` -/
def P16385919677706894209.Spec : Prop :=
  ∀ n, P16385919677706894209.a n = A049691 n

end A049691

/-! ## A049691.P3297205898493480825

`A057427(n)+A049696(n)`
-/

namespace A049691.P3297205898493480825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A049696 n

end

end A049691.P3297205898493480825

namespace A049691

/-- `A057427(n)+A049696(n)` -/
def P3297205898493480825.Spec : Prop :=
  ∀ n, P3297205898493480825.a n = A049691 n

end A049691

/-! ## A049691.P16954108765977780865

`A049696(n)-A057428(n)`
-/

namespace A049691.P16954108765977780865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n - A057428 n

end

end A049691.P16954108765977780865

namespace A049691

/-- `A049696(n)-A057428(n)` -/
def P16954108765977780865.Spec : Prop :=
  ∀ n, P16954108765977780865.a n = A049691 n

end A049691

/-! ## A049691.P18092204321038462060

`A206350(n+1)+A158388(n)`
-/

namespace A049691.P18092204321038462060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1) + A158388 n

end

end A049691.P18092204321038462060

namespace A049691

/-- `A206350(n+1)+A158388(n)` -/
def P18092204321038462060.Spec : Prop :=
  ∀ n, P18092204321038462060.a n = A049691 n

end A049691

/-! ## A049691.P5763585471999158194

`A049696(n)+1-A000007(n)`
-/

namespace A049691.P5763585471999158194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (1 - A000007 n)

end

end A049691.P5763585471999158194

namespace A049691

/-- `A049696(n)+1-A000007(n)` -/
def P5763585471999158194.Spec : Prop :=
  ∀ n, P5763585471999158194.a n = A049691 n

end A049691

/-! ## A049691.P1070018301076845119

`A005728(n)+A049643(n)-1`
-/

namespace A049691.P1070018301076845119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n + (A049643 n - 1)

end

end A049691.P1070018301076845119

namespace A049691

/-- `A005728(n)+A049643(n)-1` -/
def P1070018301076845119.Spec : Prop :=
  ∀ n, P1070018301076845119.a n = A049691 n

end A049691

/-! ## A049691.P5424307831800154693

`A057427(n)+2*A002088(n)`
-/

namespace A049691.P5424307831800154693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + 2 * A002088 n

end

end A049691.P5424307831800154693

namespace A049691

/-- `A057427(n)+2*A002088(n)` -/
def P5424307831800154693.Spec : Prop :=
  ∀ n, P5424307831800154693.a n = A049691 n

end A049691

/-! ## A049691.P7515687928318241056

`2*A049643(n)-A057427(n)`
-/

namespace A049691.P7515687928318241056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049643 n - A057427 n

end

end A049691.P7515687928318241056

namespace A049691

/-- `2*A049643(n)-A057427(n)` -/
def P7515687928318241056.Spec : Prop :=
  ∀ n, P7515687928318241056.a n = A049691 n

end A049691

/-! ## A049691.P17367378203592762996

`A057427(n)+A140466(n)/2`
-/

namespace A049691.P17367378203592762996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) + (A140466 n : ℚ) / 2

end

end A049691.P17367378203592762996

namespace A049691

/-- `A057427(n)+A140466(n)/2` -/
def P17367378203592762996.Spec : Prop :=
  ∀ n, P17367378203592762996.a n = (A049691 n : ℚ)

end A049691

/-! ## A049691.P4221049787131684317

`A049696(n)+n/A028310(n)`
-/

namespace A049691.P4221049787131684317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A049691.P4221049787131684317

namespace A049691

/-- `A049696(n)+n/A028310(n)` -/
def P4221049787131684317.Spec : Prop :=
  ∀ n, P4221049787131684317.a n = (A049691 n : ℚ)

end A049691

/-! ## A049691.P16414191331878261568

`A332681(n+1)-A002321(n+1)`
-/

namespace A049691.P16414191331878261568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332681 (n + 1) - A002321 (n + 1)

end

end A049691.P16414191331878261568

namespace A049691

/-- `A332681(n+1)-A002321(n+1)` -/
def P16414191331878261568.Spec : Prop :=
  ∀ n, P16414191331878261568.a n = A049691 n

end A049691

/-! ## A049691.P17860441781833810877

`A049643(n)+∑[A000010(abs(1-n)+1)]-1`
-/

namespace A049691.P17860441781833810877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A049691.P17860441781833810877

namespace A049691

/-- `A049643(n)+∑[A000010(abs(1-n)+1)]-1` -/
def P17860441781833810877.Spec : Prop :=
  ∀ n, P17860441781833810877.a n = A049691 n

end A049691

/-! ## A049691.P2072703888318041687

`A001221(A000961(n+1))+2*A002088(n)`
-/

namespace A049691.P2072703888318041687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat + 2 * A002088 n

end

end A049691.P2072703888318041687

namespace A049691

/-- `A001221(A000961(n+1))+2*A002088(n)` -/
def P2072703888318041687.Spec : Prop :=
  ∀ n, P2072703888318041687.a n = A049691 n

end A049691

/-! ## A049691.P8443251259384797981

`A049696(n)+A049696(n)/A206350(n+1)`
-/

namespace A049691.P8443251259384797981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049696 n : ℚ) + (A049696 n : ℚ) / (A206350 (n + 1) : ℚ)

end

end A049691.P8443251259384797981

namespace A049691

/-- `A049696(n)+A049696(n)/A206350(n+1)` -/
def P8443251259384797981.Spec : Prop :=
  ∀ n, P8443251259384797981.a n = (A049691 n : ℚ)

end A049691

/-! ## A049691.P16940333092452918027

`A049634(n)-A092404(n+1)`
-/

namespace A049691.P16940333092452918027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - A092404 (n + 1)

end

end A049691.P16940333092452918027

namespace A049691

/-- `A049634(n)-A092404(n+1)` -/
def P16940333092452918027.Spec : Prop :=
  ∀ n, P16940333092452918027.a n = A049691 n

end A049691

/-!
# A049692: Numbers k such that the square of the number of divisors of k does not divide the sum of the divisors of k.

The programs for A049692, the canonical program `A049692.P17847140543767200427` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049692 has offset 1).

The definition of A049692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7345 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049692.P17847140543767200427

`lt[A286628(n+2), 2]+2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049692

/-- `lt[A286628(n+2), 2]+2` -/
def P17847140543767200427.Spec : Prop :=
  ∀ n, (P17847140543767200427.a n : ℤ) = A049692 (n + 1)

theorem P17847140543767200427.correct : P17847140543767200427.Spec := by
  intro n
  simp only [A049692, Nat.add_sub_cancel]

end A049692

/-! ## A049692.P18297406355597327937

`eq[2, sqrt(a(A286628(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A049692.P18297406355597327937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  Real.sqrt (f2 (A286628 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A049692.P18297406355597327937

namespace A049692

/-- `eq[2, sqrt(a(A286628(n)))]` -/
def P18297406355597327937.Spec : Prop :=
  ∀ n, (P18297406355597327937.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P14299640194694010979

`eq[2, A000037(a(A286628(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A049692.P14299640194694010979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000037 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P14299640194694010979

namespace A049692

/-- `eq[2, A000037(a(A286628(n)))]` -/
def P14299640194694010979.Spec : Prop :=
  ∀ n, (P14299640194694010979.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P8982067776326153151

`eq[2, A000040(a(A286628(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A049692.P8982067776326153151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000040 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P8982067776326153151

namespace A049692

/-- `eq[2, A000040(a(A286628(n)))]` -/
def P8982067776326153151.Spec : Prop :=
  ∀ n, (P8982067776326153151.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P5050385249832178728

`eq[2, A000043(a(A286628(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A049692.P5050385249832178728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000043 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P5050385249832178728

namespace A049692

/-- `eq[2, A000043(a(A286628(n)))]` -/
def P5050385249832178728.Spec : Prop :=
  ∀ n, (P5050385249832178728.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P12815315943800770558

`eq[2, A000079(a(A286628(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A049692.P12815315943800770558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000079 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P12815315943800770558

namespace A049692

/-- `eq[2, A000079(a(A286628(n)))]` -/
def P12815315943800770558.Spec : Prop :=
  ∀ n, (P12815315943800770558.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P18085230686893418032

`eq[2, A000096(a(A286628(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A049692.P18085230686893418032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000096 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P18085230686893418032

namespace A049692

/-- `eq[2, A000096(a(A286628(n)))]` -/
def P18085230686893418032.Spec : Prop :=
  ∀ n, (P18085230686893418032.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P17843446631513841573

`eq[2, A000009(a(A286628(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A049692.P17843446631513841573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000009 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P17843446631513841573

namespace A049692

/-- `eq[2, A000009(a(A286628(n)))]` -/
def P17843446631513841573.Spec : Prop :=
  ∀ n, (P17843446631513841573.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P14530074605577971744

`eq[2, A000010(a(A286628(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A049692.P14530074605577971744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P14530074605577971744

namespace A049692

/-- `eq[2, A000010(a(A286628(n)))]` -/
def P14530074605577971744.Spec : Prop :=
  ∀ n, (P14530074605577971744.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P5207914879350134546

`eq[2, A000045(a(A286628(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A049692.P5207914879350134546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000045 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P5207914879350134546

namespace A049692

/-- `eq[2, A000045(a(A286628(n)))]` -/
def P5207914879350134546.Spec : Prop :=
  ∀ n, (P5207914879350134546.a n : ℤ) = A049692 (n + 1)

end A049692

/-! ## A049692.P5565038112288177648

`eq[2, A007318(a(A286628(n)))]` with `a(0)=4, a(1)=4`
-/

namespace A049692.P5565038112288177648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f2 =>
  A007318 (f2 (A286628 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049692.P5565038112288177648

namespace A049692

/-- `eq[2, A007318(a(A286628(n)))]` -/
def P5565038112288177648.Spec : Prop :=
  ∀ n, (P5565038112288177648.a n : ℤ) = A049692 (n + 1)

end A049692

/-!
# A049693: a(n) = T(n,n+2), array T as in A049687.

The programs for A049693, the canonical program `A049693.P1234389797638437336` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049693 has offset 0).

The definition of A049693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049693.P1234389797638437336

`A049634(n)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049693

/-- `A049634(n)-1` -/
def P1234389797638437336.Spec : Prop :=
  ∀ n, P1234389797638437336.a n = A049693 n

theorem P1234389797638437336.correct : P1234389797638437336.Spec := by
  intro n
  simp only [A049693]

end A049693

/-! ## A049693.P8257886081327226222

`A049698(n)+char[xor(1, n)+1]`
-/

namespace A049693.P8257886081327226222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049693.P8257886081327226222

namespace A049693

/-- `A049698(n)+char[xor(1, n)+1]` -/
def P8257886081327226222.Spec : Prop :=
  ∀ n, P8257886081327226222.a n = A049693 n

end A049693

/-! ## A049693.P12187655251723279164

`A057427(n)+A049698(n)`
-/

namespace A049693.P12187655251723279164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A049698 n

end

end A049693.P12187655251723279164

namespace A049693

/-- `A057427(n)+A049698(n)` -/
def P12187655251723279164.Spec : Prop :=
  ∀ n, P12187655251723279164.a n = A049693 n

end A049693

/-! ## A049693.P12526307532694675753

`A049698(n)-A057428(n)`
-/

namespace A049693.P12526307532694675753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n - A057428 n

end

end A049693.P12526307532694675753

namespace A049693

/-- `A049698(n)-A057428(n)` -/
def P12526307532694675753.Spec : Prop :=
  ∀ n, P12526307532694675753.a n = A049693 n

end A049693

/-! ## A049693.P683149598190784214

`A049643(n)+A015614(n+2)`
-/

namespace A049693.P683149598190784214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + A015614 (n + 2)

end

end A049693.P683149598190784214

namespace A049693

/-- `A049643(n)+A015614(n+2)` -/
def P683149598190784214.Spec : Prop :=
  ∀ n, P683149598190784214.a n = A049693 n

end A049693

/-! ## A049693.P3975984908360958838

`A049635(n)-A216475(n+1)`
-/

namespace A049693.P3975984908360958838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n - A216475 (n + 1)

end

end A049693.P3975984908360958838

namespace A049693

/-- `A049635(n)-A216475(n+1)` -/
def P3975984908360958838.Spec : Prop :=
  ∀ n, P3975984908360958838.a n = A049693 n

end A049693

/-! ## A049693.P4164967997626054242

`A049698(n)%A049694(n)+1`
-/

namespace A049693.P4164967997626054242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049698 n) (A049694 n) + 1

end

end A049693.P4164967997626054242

namespace A049693

/-- `A049698(n)%A049694(n)+1` -/
def P4164967997626054242.Spec : Prop :=
  ∀ n, P4164967997626054242.a n = A049693 n

end A049693

/-! ## A049693.P12341557910181641251

`A049698(n)+A049691(n)%2`
-/

namespace A049693.P12341557910181641251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + Int.tmod (A049691 n) 2

end

end A049693.P12341557910181641251

namespace A049693

/-- `A049698(n)+A049691(n)%2` -/
def P12341557910181641251.Spec : Prop :=
  ∀ n, P12341557910181641251.a n = A049693 n

end A049693

/-! ## A049693.P7951964436532695756

`A049643(n)+∑[A000010(n+2)]`
-/

namespace A049693.P7951964436532695756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049693.P7951964436532695756

namespace A049693

/-- `A049643(n)+∑[A000010(n+2)]` -/
def P7951964436532695756.Spec : Prop :=
  ∀ n, P7951964436532695756.a n = A049693 n

end A049693

/-! ## A049693.P2404551789806457971

`A036453(n+1)+A049698(n)-1`
-/

namespace A049693.P2404551789806457971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A049698 n - 1)

end

end A049693.P2404551789806457971

namespace A049693

/-- `A036453(n+1)+A049698(n)-1` -/
def P2404551789806457971.Spec : Prop :=
  ∀ n, P2404551789806457971.a n = A049693 n

theorem P2404551789806457971.correct : P2404551789806457971.Spec := by
  intro n
  simp only [A049693, Nat.add_sub_cancel, A049693.P2404551789806457971.a, A049693.P1234389797638437336.a, A036453, A036453.P17495263989008753229.a, A049634, A049634.P8228112400628920281.a, A049698, A049698.P2174958753758549193.a, A010553, A010553.P11932377395426747626.a, A036450, A036450.P17654615826854850628.a, A049643, A049643.P15143516310095013308.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A000005, A000005.P16091521709108585461.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A091369, A091369.P3969440163011087150.a, A008619, A008619.P16053834178911111118.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049688, A049688.P4025135909260073091.a, A063985, A063985.P3942861327483730228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049693

/-! ## A049693.P4513152553748922882

`A092404(n+1)+A049691(n)-1`
-/

namespace A049693.P4513152553748922882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092404 (n + 1) + (A049691 n - 1)

end

end A049693.P4513152553748922882

namespace A049693

/-- `A092404(n+1)+A049691(n)-1` -/
def P4513152553748922882.Spec : Prop :=
  ∀ n, P4513152553748922882.a n = A049693 n

end A049693

/-! ## A049693.P13365216782607203671

`A049643(n)+A002088(n+2)-1`
-/

namespace A049693.P13365216782607203671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n + (A002088 (n + 2) - 1)

end

end A049693.P13365216782607203671

namespace A049693

/-- `A049643(n)+A002088(n+2)-1` -/
def P13365216782607203671.Spec : Prop :=
  ∀ n, P13365216782607203671.a n = A049693 n

end A049693

/-! ## A049693.P10613487861401759967

`A049698(n)+A049698(n+1)%2`
-/

namespace A049693.P10613487861401759967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n + Int.tmod (A049698 (n + 1)) 2

end

end A049693.P10613487861401759967

namespace A049693

/-- `A049698(n)+A049698(n+1)%2` -/
def P10613487861401759967.Spec : Prop :=
  ∀ n, P10613487861401759967.a n = A049693 n

end A049693

/-! ## A049693.P8953949486389414850

`Δ[A005819(n+1)]+A005728(n)-1`
-/

namespace A049693.P8953949486389414850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A005728 n - 1)

end

end A049693.P8953949486389414850

namespace A049693

/-- `Δ[A005819(n+1)]+A005728(n)-1` -/
def P8953949486389414850.Spec : Prop :=
  ∀ n, P8953949486389414850.a n = A049693 n

end A049693

/-! ## A049693.P5004402232497710236

`a(n-1)+A000010(n+2)+A000010(n)` with `a(0)=1, a(1)=5`
-/

namespace A049693.P5004402232497710236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + (A000010 (n + 2) + A000010 n)

end

end A049693.P5004402232497710236

namespace A049693

/-- `a(n-1)+A000010(n+2)+A000010(n)` -/
def P5004402232497710236.Spec : Prop :=
  ∀ n, P5004402232497710236.a n = A049693 n

end A049693

/-! ## A049693.P12087092559394283685

`A020639(A004277(n))+A049698(n)-1`
-/

namespace A049693.P12087092559394283685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat + (A049698 n - 1)

end

end A049693.P12087092559394283685

namespace A049693

/-- `A020639(A004277(n))+A049698(n)-1` -/
def P12087092559394283685.Spec : Prop :=
  ∀ n, P12087092559394283685.a n = A049693 n

end A049693

/-! ## A049693.P6304444782018835202

`A020639(A005574(n+1))+A049698(n)-1`
-/

namespace A049693.P6304444782018835202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005574 (n + 1)).toNat + (A049698 n - 1)

end

end A049693.P6304444782018835202

namespace A049693

/-- `A020639(A005574(n+1))+A049698(n)-1` -/
def P6304444782018835202.Spec : Prop :=
  ∀ n, P6304444782018835202.a n = A049693 n

end A049693

/-! ## A049693.P2350681222404875719

`A049691(n)+Δ[A049697(n)]-1`
-/

namespace A049693.P2350681222404875719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049691 n + (f1 (n + 1) - f1 n - 1)

end

end A049693.P2350681222404875719

namespace A049693

/-- `A049691(n)+Δ[A049697(n)]-1` -/
def P2350681222404875719.Spec : Prop :=
  ∀ n, P2350681222404875719.a n = A049693 n

end A049693

/-! ## A049693.P12781309139882074895

`A049649(Δ[n²])`
-/

namespace A049693.P12781309139882074895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049649 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049693.P12781309139882074895

namespace A049693

/-- `A049649(Δ[n²])` -/
def P12781309139882074895.Spec : Prop :=
  ∀ n, P12781309139882074895.a n = A049693 n

end A049693

/-!
# A049694: a(n) = T(n,n+3), array T as in A049687.

The programs for A049694, the canonical program `A049694.P6352157248811227265` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049694 has offset 0).

The definition of A049694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2844 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049694.P2240492755662501460

`A049699(n)+char[xor(1, n)+1]`
-/

namespace A049694.P2240492755662501460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049694.P2240492755662501460

namespace A049694

/-- `A049699(n)+char[xor(1, n)+1]` -/
def P2240492755662501460.Spec : Prop :=
  ∀ n, P2240492755662501460.a n = A049694 n

end A049694

/-! ## A049694.P10715345603377710587

`A057427(n)+A049699(n)`
-/

namespace A049694.P10715345603377710587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A049699 n

end

end A049694.P10715345603377710587

namespace A049694

/-- `A057427(n)+A049699(n)` -/
def P10715345603377710587.Spec : Prop :=
  ∀ n, P10715345603377710587.a n = A049694 n

end A049694

/-! ## A049694.P1531843201114594128

`A049699(n)-A057428(n)`
-/

namespace A049694.P1531843201114594128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n - A057428 n

end

end A049694.P1531843201114594128

namespace A049694

/-- `A049699(n)-A057428(n)` -/
def P1531843201114594128.Spec : Prop :=
  ∀ n, P1531843201114594128.a n = A049694 n

end A049694

/-! ## A049694.P12698087267675376479

`A049699(n)+1-A000007(n)`
-/

namespace A049694.P12698087267675376479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + (1 - A000007 n)

end

end A049694.P12698087267675376479

namespace A049694

/-- `A049699(n)+1-A000007(n)` -/
def P12698087267675376479.Spec : Prop :=
  ∀ n, P12698087267675376479.a n = A049694 n

end A049694

/-! ## A049694.P17497755846496394203

`A036453(n+1)+A049699(n)-1`
-/

namespace A049694.P17497755846496394203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A049699 n - 1)

end

end A049694.P17497755846496394203

namespace A049694

/-- `A036453(n+1)+A049699(n)-1` -/
def P17497755846496394203.Spec : Prop :=
  ∀ n, P17497755846496394203.a n = A049694 n

end A049694

/-! ## A049694.P9272048843659187070

`A020639(A005942(n))+A049699(n)-1`
-/

namespace A049694.P9272048843659187070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005942 n).toNat + (A049699 n - 1)

end

end A049694.P9272048843659187070

namespace A049694

/-- `A020639(A005942(n))+A049699(n)-1` -/
def P9272048843659187070.Spec : Prop :=
  ∀ n, P9272048843659187070.a n = A049694 n

end A049694

/-! ## A049694.P6352157248811227265

`A049635(n)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049694

/-- `A049635(n)-1` -/
def P6352157248811227265.Spec : Prop :=
  ∀ n, P6352157248811227265.a n = A049694 n

theorem P6352157248811227265.correct : P6352157248811227265.Spec := by
  intro n
  simp only [A049694]

end A049694

/-! ## A049694.P3436726603254610090

`A057428(n+1)+A049635(n)`
-/

namespace A049694.P3436726603254610090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A049635 n

end

end A049694.P3436726603254610090

namespace A049694

/-- `A057428(n+1)+A049635(n)` -/
def P3436726603254610090.Spec : Prop :=
  ∀ n, P3436726603254610090.a n = A049694 n

end A049694

/-! ## A049694.P9672652683985113152

`A216475(n+1)+A049693(n)-1`
-/

namespace A049694.P9672652683985113152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216475 (n + 1) + (A049693 n - 1)

end

end A049694.P9672652683985113152

namespace A049694

/-- `A216475(n+1)+A049693(n)-1` -/
def P9672652683985113152.Spec : Prop :=
  ∀ n, P9672652683985113152.a n = A049694 n

end A049694

/-! ## A049694.P13073200404544978006

`A049699(n)+A000035(record[A014963(n+2)])`
-/

namespace A049694.P13073200404544978006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A000035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049694.P13073200404544978006

namespace A049694

/-- `A049699(n)+A000035(record[A014963(n+2)])` -/
def P13073200404544978006.Spec : Prop :=
  ∀ n, P13073200404544978006.a n = A049694 n

end A049694

/-! ## A049694.P4546099343690035217

`A000034(A000040(n+1))+A049699(n)-1`
-/

namespace A049694.P4546099343690035217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000040 (n + 1)).toNat + (A049699 n - 1)

end

end A049694.P4546099343690035217

namespace A049694

/-- `A000034(A000040(n+1))+A049699(n)-1` -/
def P4546099343690035217.Spec : Prop :=
  ∀ n, P4546099343690035217.a n = A049694 n

end A049694

/-! ## A049694.P6498092055418348061

`A023443(A049635(n))`
-/

namespace A049694.P6498092055418348061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049635 n).toNat

end

end A049694.P6498092055418348061

namespace A049694

/-- `A023443(A049635(n))` -/
def P6498092055418348061.Spec : Prop :=
  ∀ n, P6498092055418348061.a n = A049694 n

end A049694

/-! ## A049694.P13051312249429435866

`A065475(A049699(n))`
-/

namespace A049694.P13051312249429435866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A049699 n).toNat

end

end A049694.P13051312249429435866

namespace A049694

/-- `A065475(A049699(n))` -/
def P13051312249429435866.Spec : Prop :=
  ∀ n, P13051312249429435866.a n = A049694 n

end A049694

/-! ## A049694.P3950515647231279320

`A171950(A049635(n)+1)`
-/

namespace A049694.P3950515647231279320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171950 (A049635 n + 1).toNat

end

end A049694.P3950515647231279320

namespace A049694

/-- `A171950(A049635(n)+1)` -/
def P3950515647231279320.Spec : Prop :=
  ∀ n, P3950515647231279320.a n = A049694 n

end A049694

/-! ## A049694.P13042455044263777179

`A049699(n)+A000035(A014963(n²+2))`
-/

namespace A049694.P13042455044263777179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049699 n + A000035 (A014963 (n ^ 2 + 2)).toNat

end

end A049694.P13042455044263777179

namespace A049694

/-- `A049699(n)+A000035(A014963(n²+2))` -/
def P13042455044263777179.Spec : Prop :=
  ∀ n, P13042455044263777179.a n = A049694 n

end A049694

/-!
# A049695: Array T read by diagonals; T(i,j) is the number of nonnegative slopes of lines determined by 2 lattice points in [ 0,i ] X [ 0,j ] if i > 0; T(0,j)=1 if j > 0; T(0,0)=0.

The programs for A049695, there is no canonical definition to state claims against.
-/

/-! ## A049695.P3947573845457385438

`A049627(n)-A154325(n)`
-/

namespace A049695.P3947573845457385438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049627 n - A154325 n

end

end A049695.P3947573845457385438

/-! ## A049695.P16476986342769130238

`A057428(A004247(n))+A049687(n)`
-/

namespace A049695.P16476986342769130238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A004247 n).toNat + A049687 n

end

end A049695.P16476986342769130238

/-! ## A049695.P9375245229524776733

`A058992(A049627(n)+1)-A049627(n)`
-/

namespace A049695.P9375245229524776733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A049627 n + 1).toNat - A049627 n

end

end A049695.P9375245229524776733

/-! ## A049695.P1069658403017509494

`A049687(n)-A049687(A000217(A004197(n)))`
-/

namespace A049695.P1069658403017509494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n - A049687 (A000217 (A004197 n).toNat).toNat

end

end A049695.P1069658403017509494

/-! ## A049695.P1043803964177814928

`A057428(A057428(n)+A049687(n))+A049687(n)`
-/

namespace A049695.P1043803964177814928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A057428 n + A049687 n).toNat + A049687 n

end

end A049695.P1043803964177814928

/-! ## A049695.P3736401987121545355

`A049687(n)-A057427(A049687(n)-A057427(n))`
-/

namespace A049695.P3736401987121545355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n - A057427 (A049687 n - A057427 n).toNat

end

end A049695.P3736401987121545355

/-! ## A049695.P8084645722135109553

`A057428(A004247(n))-A049687(n)*A057428(n)`
-/

namespace A049695.P8084645722135109553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A004247 n).toNat - A049687 n * A057428 n

end

end A049695.P8084645722135109553

/-! ## A049695.P2886725543391696417

`A049687(n)-A001221(A103444(n))`
-/

namespace A049695.P2886725543391696417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n - A001221 (A103444 n).toNat

end

end A049695.P2886725543391696417

/-! ## A049695.P9056006542831097160

`ceil(A049702(n)/2)`
-/

namespace A049695.P9056006542831097160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049702 n : ℚ) / 2⌉

end

end A049695.P9056006542831097160

/-! ## A049695.P1137485867731008170

`A004525(A049702(n))`
-/

namespace A049695.P1137485867731008170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049702 n).toNat

end

end A049695.P1137485867731008170

/-! ## A049695.P16979560384133634702

`A049702(n)/A154325(n)`
-/

namespace A049695.P16979560384133634702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049702 n : ℚ) / (A154325 n : ℚ)

end

end A049695.P16979560384133634702

/-! ## A049695.P5747210584060343804

`A266977(A049702(n)+1)-2`
-/

namespace A049695.P5747210584060343804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A049702 n + 1).toNat - 2

end

end A049695.P5747210584060343804

/-! ## A049695.P16381057844574973565

`A003056(A000982(A049687(n)))`
-/

namespace A049695.P16381057844574973565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000982 (A049687 n).toNat).toNat

end

end A049695.P16381057844574973565

/-! ## A049695.P5147602131452491220

`A003056(A004525(A049687(n)²))`
-/

namespace A049695.P5147602131452491220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A004525 (A049687 n ^ 2).toNat).toNat

end

end A049695.P5147602131452491220

/-! ## A049695.P11194808543453391587

`A003056(A110654(A049687(n)²))`
-/

namespace A049695.P11194808543453391587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A110654 (A049687 n ^ 2).toNat).toNat

end

end A049695.P11194808543453391587

/-! ## A049695.P5647884488306298850

`A000196(A143051(A049687(n)²))`
-/

namespace A049695.P5647884488306298850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A143051 (A049687 n ^ 2).toNat).toNat

end

end A049695.P5647884488306298850

/-! ## A049695.P15797511166719682371

`A049687(n)-A049687(A285192(n))`
-/

namespace A049695.P15797511166719682371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n - A049687 (A285192 n).toNat

end

end A049695.P15797511166719682371

/-! ## A049695.P6154647779923271345

`A049687(n)-A001221(A152714(n))`
-/

namespace A049695.P6154647779923271345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n - A001221 (A152714 n).toNat

end

end A049695.P6154647779923271345

/-! ## A049695.P3474785175057850946

`A049687(n)-A057427(A098356(n))`
-/

namespace A049695.P3474785175057850946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n - A057427 (A098356 n).toNat

end

end A049695.P3474785175057850946

/-!
# A049696: a(n)=T(n,n), array T as in A049695.

The programs for A049696, the canonical program `A049696.P12004431397855860570` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049696 has offset 0).

The definition of A049696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049696.P12004431397855860570

`2*A002088(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049696

/-- `2*A002088(n)` -/
def P12004431397855860570.Spec : Prop :=
  ∀ n, P12004431397855860570.a n = A049696 n

theorem P12004431397855860570.correct : P12004431397855860570.Spec := by
  intro n
  simp only [A049696]

end A049696

/-! ## A049696.P16186228864620187050

`A140466(n)/2`
-/

namespace A049696.P16186228864620187050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 n : ℚ) / 2

end

end A049696.P16186228864620187050

namespace A049696

/-- `A140466(n)/2` -/
def P16186228864620187050.Spec : Prop :=
  ∀ n, P16186228864620187050.a n = (A049696 n : ℚ)

end A049696

/-! ## A049696.P11312070529588836466

`floor(A100449(n)/2)`
-/

namespace A049696.P11312070529588836466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100449 n : ℚ) / 2⌋

end

end A049696.P11312070529588836466

namespace A049696

/-- `floor(A100449(n)/2)` -/
def P11312070529588836466.Spec : Prop :=
  ∀ n, P11312070529588836466.a n = A049696 n

end A049696

/-! ## A049696.P4658174302775806121

`2*(A005728(n)-1)`
-/

namespace A049696.P4658174302775806121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005728 n - 1)

end

end A049696.P4658174302775806121

namespace A049696

/-- `2*(A005728(n)-1)` -/
def P4658174302775806121.Spec : Prop :=
  ∀ n, P4658174302775806121.a n = A049696 n

end A049696

/-! ## A049696.P8764966422904336836

`or(1, A206350(n+1))-1`
-/

namespace A049696.P8764966422904336836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A206350 (n + 1)) - 1

end

end A049696.P8764966422904336836

namespace A049696

/-- `or(1, A206350(n+1))-1` -/
def P8764966422904336836.Spec : Prop :=
  ∀ n, P8764966422904336836.a n = A049696 n

end A049696

/-! ## A049696.P7752391020441193467

`a(n-1)+2*A000010(n)` with `a(0)=0`
-/

namespace A049696.P7752391020441193467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A000010 n

end

end A049696.P7752391020441193467

namespace A049696

/-- `a(n-1)+2*A000010(n)` -/
def P7752391020441193467.Spec : Prop :=
  ∀ n, P7752391020441193467.a n = A049696 n

end A049696

/-! ## A049696.P11737657878642206089

`A319998(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A049696.P11737657878642206089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A319998 (2 * n) + a (n - 1)

end

end A049696.P11737657878642206089

namespace A049696

/-- `A319998(2*n)+a(n-1)` -/
def P11737657878642206089.Spec : Prop :=
  ∀ n, P11737657878642206089.a n = A049696 n

end A049696

/-! ## A049696.P7624924923418807204

`a(n-1)+A083254(n)+n` with `a(0)=0`
-/

namespace A049696.P7624924923418807204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A083254 n + (n : ℤ))

end

end A049696.P7624924923418807204

namespace A049696

/-- `a(n-1)+A083254(n)+n` -/
def P7624924923418807204.Spec : Prop :=
  ∀ n, P7624924923418807204.a n = A049696 n

end A049696

/-! ## A049696.P10047818243218442061

`A002088(n)+A005728(n)-1`
-/

namespace A049696.P10047818243218442061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (A005728 n - 1)

end

end A049696.P10047818243218442061

namespace A049696

/-- `A002088(n)+A005728(n)-1` -/
def P10047818243218442061.Spec : Prop :=
  ∀ n, P10047818243218442061.a n = A049696 n

end A049696

/-! ## A049696.P15364509177224233205

`A206350(n+1)-A000007(n)`
-/

namespace A049696.P15364509177224233205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1) - A000007 n

end

end A049696.P15364509177224233205

namespace A049696

/-- `A206350(n+1)-A000007(n)` -/
def P15364509177224233205.Spec : Prop :=
  ∀ n, P15364509177224233205.a n = A049696 n

end A049696

/-! ## A049696.P5997599996019905216

`A206350(n+1)%A000156(n)`
-/

namespace A049696.P5997599996019905216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206350 (n + 1)) (A000156 n)

end

end A049696.P5997599996019905216

namespace A049696

/-- `A206350(n+1)%A000156(n)` -/
def P5997599996019905216.Spec : Prop :=
  ∀ n, P5997599996019905216.a n = A049696 n

end A049696

/-! ## A049696.P6187045364429009779

`lcm(A002088(n), A206350(n+1))`
-/

namespace A049696.P6187045364429009779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002088 n) (A206350 (n + 1))

end

end A049696.P6187045364429009779

namespace A049696

/-- `lcm(A002088(n), A206350(n+1))` -/
def P6187045364429009779.Spec : Prop :=
  ∀ n, (P6187045364429009779.a n : ℤ) = A049696 n

end A049696

/-! ## A049696.P8731222069256603598

`and(A057428(n), A206350(n+1))`
-/

namespace A049696.P8731222069256603598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A206350 (n + 1))

end

end A049696.P8731222069256603598

namespace A049696

/-- `and(A057428(n), A206350(n+1))` -/
def P8731222069256603598.Spec : Prop :=
  ∀ n, P8731222069256603598.a n = A049696 n

end A049696

/-! ## A049696.P383774954165145407

`2*(A092249(n+1)-A000010(n+1))`
-/

namespace A049696.P383774954165145407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092249 (n + 1) - A000010 (n + 1))

end

end A049696.P383774954165145407

namespace A049696

/-- `2*(A092249(n+1)-A000010(n+1))` -/
def P383774954165145407.Spec : Prop :=
  ∀ n, P383774954165145407.a n = A049696 n

end A049696

/-! ## A049696.P282099305592254825

`A140466(n)-A002088(n)-A002088(n)`
-/

namespace A049696.P282099305592254825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n - A002088 n - A002088 n

end

end A049696.P282099305592254825

namespace A049696

/-- `A140466(n)-A002088(n)-A002088(n)` -/
def P282099305592254825.Spec : Prop :=
  ∀ n, P282099305592254825.a n = A049696 n

end A049696

/-! ## A049696.P8729019397406213261

`A002088(n+1)+A002088(n)-A000010(n+1)`
-/

namespace A049696.P8729019397406213261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A002088 n - A000010 (n + 1))

end

end A049696.P8729019397406213261

namespace A049696

/-- `A002088(n+1)+A002088(n)-A000010(n+1)` -/
def P8729019397406213261.Spec : Prop :=
  ∀ n, P8729019397406213261.a n = A049696 n

end A049696

/-! ## A049696.P12402186022036814849

`A015614(n+1)+A005728(n)-A000010(n+1)`
-/

namespace A049696.P12402186022036814849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + (A005728 n - A000010 (n + 1))

end

end A049696.P12402186022036814849

namespace A049696

/-- `A015614(n+1)+A005728(n)-A000010(n+1)` -/
def P12402186022036814849.Spec : Prop :=
  ∀ n, P12402186022036814849.a n = A049696 n

end A049696

/-! ## A049696.P2454487667059172705

`2*(Δ[A005598(n)]-A000010(n+1))`
-/

namespace A049696.P2454487667059172705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A000010 (n + 1))

end

end A049696.P2454487667059172705

namespace A049696

/-- `2*(Δ[A005598(n)]-A000010(n+1))` -/
def P2454487667059172705.Spec : Prop :=
  ∀ n, P2454487667059172705.a n = A049696 n

end A049696

/-! ## A049696.P5841528574533319623

`A000007(n+1)+A002088(n)+A002088(n)`
-/

namespace A049696.P5841528574533319623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A002088 n + A002088 n)

end

end A049696.P5841528574533319623

namespace A049696

/-- `A000007(n+1)+A002088(n)+A002088(n)` -/
def P5841528574533319623.Spec : Prop :=
  ∀ n, P5841528574533319623.a n = A049696 n

end A049696

/-! ## A049696.P3699414113740859464

`A206350(n+2)-A000010(n+1)-A000010(n+1)`
-/

namespace A049696.P3699414113740859464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 2) - A000010 (n + 1) - A000010 (n + 1)

end

end A049696.P3699414113740859464

namespace A049696

/-- `A206350(n+2)-A000010(n+1)-A000010(n+1)` -/
def P3699414113740859464.Spec : Prop :=
  ∀ n, P3699414113740859464.a n = A049696 n

end A049696

/-!
# A049697: a(n)=T(n,n+1), array T as in A049695.

The programs for A049697, the canonical program `A049697.P8461540125229909495` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049697 has offset 0).

The definition of A049697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2753 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049697.P16195581526419399626

`A092404(n)+a(n-1)` with `a(0)=1`
-/

namespace A049697.P16195581526419399626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092404 n + a (n - 1)

end

end A049697.P16195581526419399626

namespace A049697

/-- `A092404(n)+a(n-1)` -/
def P16195581526419399626.Spec : Prop :=
  ∀ n, P16195581526419399626.a n = A049697 n

end A049697

/-! ## A049697.P6333935468928712990

`A002088(n)+Δ[A005598(n)]`
-/

namespace A049697.P6333935468928712990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (f1 (n + 1) - f1 n)

end

end A049697.P6333935468928712990

namespace A049697

/-- `A002088(n)+Δ[A005598(n)]` -/
def P6333935468928712990.Spec : Prop :=
  ∀ n, P6333935468928712990.a n = A049697 n

end A049697

/-! ## A049697.P4450883335955008140

`A049696(n)+Δ[A002088(n)]`
-/

namespace A049697.P4450883335955008140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (f1 (n + 1) - f1 n)

end

end A049697.P4450883335955008140

namespace A049697

/-- `A049696(n)+Δ[A002088(n)]` -/
def P4450883335955008140.Spec : Prop :=
  ∀ n, P4450883335955008140.a n = A049697 n

end A049697

/-! ## A049697.P5651456206249699543

`A002088(n+1)+A002088(n)`
-/

namespace A049697.P5651456206249699543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + A002088 n

end

end A049697.P5651456206249699543

namespace A049697

/-- `A002088(n+1)+A002088(n)` -/
def P5651456206249699543.Spec : Prop :=
  ∀ n, P5651456206249699543.a n = A049697 n

end A049697

/-! ## A049697.P6378326339694172248

`A015614(n+1)+A005728(n)`
-/

namespace A049697.P6378326339694172248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + A005728 n

end

end A049697.P6378326339694172248

namespace A049697

/-- `A015614(n+1)+A005728(n)` -/
def P6378326339694172248.Spec : Prop :=
  ∀ n, P6378326339694172248.a n = A049697 n

end A049697

/-! ## A049697.P17413309810671837161

`A049696(n)+A000010(n+1)`
-/

namespace A049697.P17413309810671837161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + A000010 (n + 1)

end

end A049697.P17413309810671837161

namespace A049697

/-- `A049696(n)+A000010(n+1)` -/
def P17413309810671837161.Spec : Prop :=
  ∀ n, P17413309810671837161.a n = A049697 n

end A049697

/-! ## A049697.P8461540125229909495

`A049633(n)-A036453(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049697

/-- `A049633(n)-A036453(n+1)` -/
def P8461540125229909495.Spec : Prop :=
  ∀ n, P8461540125229909495.a n = A049697 n

theorem P8461540125229909495.correct : P8461540125229909495.Spec := by
  intro n
  simp only [A049697]

end A049697

/-! ## A049697.P9084112343366143834

`A018805(n+1)-A109606(n+1)`
-/

namespace A049697.P9084112343366143834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) - A109606 (n + 1)

end

end A049697.P9084112343366143834

namespace A049697

/-- `A018805(n+1)-A109606(n+1)` -/
def P9084112343366143834.Spec : Prop :=
  ∀ n, P9084112343366143834.a n = A049697 n

end A049697

/-! ## A049697.P14892085295189702915

`A005728(n+1)+A005728(n)-2`
-/

namespace A049697.P14892085295189702915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) + (A005728 n - 2)

end

end A049697.P14892085295189702915

namespace A049697

/-- `A005728(n+1)+A005728(n)-2` -/
def P14892085295189702915.Spec : Prop :=
  ∀ n, P14892085295189702915.a n = A049697 n

end A049697

/-! ## A049697.P8262739208307586090

`A206350(n+2)-A000010(n+1)`
-/

namespace A049697.P8262739208307586090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 2) - A000010 (n + 1)

end

end A049697.P8262739208307586090

namespace A049697

/-- `A206350(n+2)-A000010(n+1)` -/
def P8262739208307586090.Spec : Prop :=
  ∀ n, P8262739208307586090.a n = A049697 n

end A049697

/-! ## A049697.P17536120312597688436

`A015613(n+1)+A005728(n)+n`
-/

namespace A049697.P17536120312597688436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + (A005728 n + (n : ℤ))

end

end A049697.P17536120312597688436

namespace A049697

/-- `A015613(n+1)+A005728(n)+n` -/
def P17536120312597688436.Spec : Prop :=
  ∀ n, P17536120312597688436.a n = A049697 n

end A049697

/-! ## A049697.P6681437698608727242

`∑[A140434(n+1)]-A109606(n+1)`
-/

namespace A049697.P6681437698608727242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109606 (n + 1)

end

end A049697.P6681437698608727242

namespace A049697

/-- `∑[A140434(n+1)]-A109606(n+1)` -/
def P6681437698608727242.Spec : Prop :=
  ∀ n, P6681437698608727242.a n = A049697 n

end A049697

/-! ## A049697.P12978534463918541601

`Δ[2*A005598(n)]-A000010(n+1)`
-/

namespace A049697.P12978534463918541601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000010 (n + 1)

end

end A049697.P12978534463918541601

namespace A049697

/-- `Δ[2*A005598(n)]-A000010(n+1)` -/
def P12978534463918541601.Spec : Prop :=
  ∀ n, P12978534463918541601.a n = A049697 n

end A049697

/-! ## A049697.P11795255516051985686

`A018805(n+1)+1-A000010(n+1)`
-/

namespace A049697.P11795255516051985686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (1 - A000010 (n + 1))

end

end A049697.P11795255516051985686

namespace A049697

/-- `A018805(n+1)+1-A000010(n+1)` -/
def P11795255516051985686.Spec : Prop :=
  ∀ n, P11795255516051985686.a n = A049697 n

end A049697

/-! ## A049697.P8559328731471314028

`A018805(n+1)+2-A039649(n+1)`
-/

namespace A049697.P8559328731471314028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (2 - A039649 (n + 1))

end

end A049697.P8559328731471314028

namespace A049697

/-- `A018805(n+1)+2-A039649(n+1)` -/
def P8559328731471314028.Spec : Prop :=
  ∀ n, P8559328731471314028.a n = A049697 n

end A049697

/-! ## A049697.P16752992366132416782

`2*A092249(n+1)-A000010(n+1)`
-/

namespace A049697.P16752992366132416782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092249 (n + 1) - A000010 (n + 1)

end

end A049697.P16752992366132416782

namespace A049697

/-- `2*A092249(n+1)-A000010(n+1)` -/
def P16752992366132416782.Spec : Prop :=
  ∀ n, P16752992366132416782.a n = A049697 n

end A049697

/-! ## A049697.P4670926591431794589

`A018805(n+1)+A051953(n+1)-n`
-/

namespace A049697.P4670926591431794589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (A051953 (n + 1) - (n : ℤ))

end

end A049697.P4670926591431794589

namespace A049697

/-- `A018805(n+1)+A051953(n+1)-n` -/
def P4670926591431794589.Spec : Prop :=
  ∀ n, P4670926591431794589.a n = A049697 n

end A049697

/-! ## A049697.P15686710139041865882

`A000010(n+1)+A000010(n)+a(n-1)` with `a(0)=1`
-/

namespace A049697.P15686710139041865882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (n + 1) + (A000010 n + a (n - 1))

end

end A049697.P15686710139041865882

namespace A049697

/-- `A000010(n+1)+A000010(n)+a(n-1)` -/
def P15686710139041865882.Spec : Prop :=
  ∀ n, P15686710139041865882.a n = A049697 n

end A049697

/-! ## A049697.P8228974004795476923

`A049696(n)+A004526(Δ[A049696(n)])`
-/

namespace A049697.P8228974004795476923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + A004526 (f1 (n + 1) - f1 n).toNat

end

end A049697.P8228974004795476923

namespace A049697

/-- `A049696(n)+A004526(Δ[A049696(n)])` -/
def P8228974004795476923.Spec : Prop :=
  ∀ n, P8228974004795476923.a n = A049697 n

end A049697

/-!
# A049698: a(n) = T(n,n+2), array T as in A049695.

The programs for A049698, the canonical program `A049698.P2174958753758549193` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049698 has offset 0).

The definition of A049698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2819 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049698.P14538994801276069193

`A362334(n)+a(n-1)` with `a(0)=1`
-/

namespace A049698.P14538994801276069193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A362334 n + a (n - 1)

end

end A049698.P14538994801276069193

namespace A049698

/-- `A362334(n)+a(n-1)` -/
def P14538994801276069193.Spec : Prop :=
  ∀ n, P14538994801276069193.a n = A049698 n

end A049698

/-! ## A049698.P14006794500675819068

`A015614(n+2)+A002088(n)`
-/

namespace A049698.P14006794500675819068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 2) + A002088 n

end

end A049698.P14006794500675819068

namespace A049698

/-- `A015614(n+2)+A002088(n)` -/
def P14006794500675819068.Spec : Prop :=
  ∀ n, P14006794500675819068.a n = A049698 n

end A049698

/-! ## A049698.P2174958753758549193

`A049634(n)-A036453(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049698

/-- `A049634(n)-A036453(n+1)` -/
def P2174958753758549193.Spec : Prop :=
  ∀ n, P2174958753758549193.a n = A049698 n

theorem P2174958753758549193.correct : P2174958753758549193.Spec := by
  intro n
  simp only [A049698]

end A049698

/-! ## A049698.P6053296575723052526

`A000007(n)+A049634(n)-2`
-/

namespace A049698.P6053296575723052526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A049634 n - 2)

end

end A049698.P6053296575723052526

namespace A049698

/-- `A000007(n)+A049634(n)-2` -/
def P6053296575723052526.Spec : Prop :=
  ∀ n, P6053296575723052526.a n = A049698 n

end A049698

/-! ## A049698.P10972876836413742136

`or(A049634(n)-2, A266514(n))`
-/

namespace A049698.P10972876836413742136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049634 n - 2) (A266514 n)

end

end A049698.P10972876836413742136

namespace A049698

/-- `or(A049634(n)-2, A266514(n))` -/
def P10972876836413742136.Spec : Prop :=
  ∀ n, P10972876836413742136.a n = A049698 n

end A049698

/-! ## A049698.P12319797565095640310

`A002088(n)+∑[A000010(n+2)]`
-/

namespace A049698.P12319797565095640310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049698.P12319797565095640310

namespace A049698

/-- `A002088(n)+∑[A000010(n+2)]` -/
def P12319797565095640310.Spec : Prop :=
  ∀ n, P12319797565095640310.a n = A049698 n

end A049698

/-! ## A049698.P5948204655182693160

`A057000(n+1)+A018805(n+1)`
-/

namespace A049698.P5948204655182693160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057000 (n + 1) + A018805 (n + 1)

end

end A049698.P5948204655182693160

namespace A049698

/-- `A057000(n+1)+A018805(n+1)` -/
def P5948204655182693160.Spec : Prop :=
  ∀ n, P5948204655182693160.a n = A049698 n

end A049698

/-! ## A049698.P1363979907406268138

`A018805(n+1)+Δ[A000010(n+1)]`
-/

namespace A049698.P1363979907406268138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049698.P1363979907406268138

namespace A049698

/-- `A018805(n+1)+Δ[A000010(n+1)]` -/
def P1363979907406268138.Spec : Prop :=
  ∀ n, P1363979907406268138.a n = A049698 n

end A049698

/-! ## A049698.P8377153818866157580

`A018805(n+1)+Δ[A039649(n+1)]`
-/

namespace A049698.P8377153818866157580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049698.P8377153818866157580

namespace A049698

/-- `A018805(n+1)+Δ[A039649(n+1)]` -/
def P8377153818866157580.Spec : Prop :=
  ∀ n, P8377153818866157580.a n = A049698 n

end A049698

/-! ## A049698.P11090690540136435475

`A018805(n+1)+Δ[A109606(n+1)]`
-/

namespace A049698.P11090690540136435475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049698.P11090690540136435475

namespace A049698

/-- `A018805(n+1)+Δ[A109606(n+1)]` -/
def P11090690540136435475.Spec : Prop :=
  ∀ n, P11090690540136435475.a n = A049698 n

end A049698

/-! ## A049698.P178730467178462928

`Δ[A039649(n+1)]+∑[A140434(n+1)]`
-/

namespace A049698.P178730467178462928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A049698.P178730467178462928

namespace A049698

/-- `Δ[A039649(n+1)]+∑[A140434(n+1)]` -/
def P178730467178462928.Spec : Prop :=
  ∀ n, P178730467178462928.a n = A049698 n

end A049698

/-! ## A049698.P11502598732829110425

`Δ[A109606(n+1)]+∑[A140434(n+1)]`
-/

namespace A049698.P11502598732829110425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A049698.P11502598732829110425

namespace A049698

/-- `Δ[A109606(n+1)]+∑[A140434(n+1)]` -/
def P11502598732829110425.Spec : Prop :=
  ∀ n, P11502598732829110425.a n = A049698 n

end A049698

/-! ## A049698.P17400472434083792427

`a(n-1)+A000010(n+2)+A000010(n)` with `a(0)=1`
-/

namespace A049698.P17400472434083792427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000010 (n + 2) + A000010 n)

end

end A049698.P17400472434083792427

namespace A049698

/-- `a(n-1)+A000010(n+2)+A000010(n)` -/
def P17400472434083792427.Spec : Prop :=
  ∀ n, P17400472434083792427.a n = A049698 n

end A049698

/-! ## A049698.P9918687176786107421

`Δ[A039649(n+1)]+∑[2*A000010(n+1)]-1`
-/

namespace A049698.P9918687176786107421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A049698.P9918687176786107421

namespace A049698

/-- `Δ[A039649(n+1)]+∑[2*A000010(n+1)]-1` -/
def P9918687176786107421.Spec : Prop :=
  ∀ n, P9918687176786107421.a n = A049698 n

end A049698

/-! ## A049698.P15888958985489189794

`Δ[A109606(n+1)]+∑[2*A000010(n+1)]-1`
-/

namespace A049698.P15888958985489189794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A049698.P15888958985489189794

namespace A049698

/-- `Δ[A109606(n+1)]+∑[2*A000010(n+1)]-1` -/
def P15888958985489189794.Spec : Prop :=
  ∀ n, P15888958985489189794.a n = A049698 n

end A049698

/-! ## A049698.P3892369957019830366

`Δ[A039649(n+1)]+∑[2*(A109606(n+1)+1)]-1`
-/

namespace A049698.P3892369957019830366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (∑ j ∈ Finset.range (n + 1), f2 j - 1)

end

end A049698.P3892369957019830366

namespace A049698

/-- `Δ[A039649(n+1)]+∑[2*(A109606(n+1)+1)]-1` -/
def P3892369957019830366.Spec : Prop :=
  ∀ n, P3892369957019830366.a n = A049698 n

end A049698

/-! ## A049698.P2670978812322677928

`A049634(n)-A014963(A001316(n))`
-/

namespace A049698.P2670978812322677928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - A014963 (A001316 n).toNat

end

end A049698.P2670978812322677928

namespace A049698

/-- `A049634(n)-A014963(A001316(n))` -/
def P2670978812322677928.Spec : Prop :=
  ∀ n, P2670978812322677928.a n = A049698 n

end A049698

/-! ## A049698.P11974403356990947764

`A000217(n+1)+A002088(n)-A185670(n+2)`
-/

namespace A049698.P11974403356990947764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A002088 n - A185670 (n + 2))

end

end A049698.P11974403356990947764

namespace A049698

/-- `A000217(n+1)+A002088(n)-A185670(n+2)` -/
def P11974403356990947764.Spec : Prop :=
  ∀ n, P11974403356990947764.a n = A049698 n

end A049698

/-! ## A049698.P4197453449028817459

`A018805(n+1)+A000010(n+2)-A000010(n+1)`
-/

namespace A049698.P4197453449028817459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (A000010 (n + 2) - A000010 (n + 1))

end

end A049698.P4197453449028817459

namespace A049698

/-- `A018805(n+1)+A000010(n+2)-A000010(n+1)` -/
def P4197453449028817459.Spec : Prop :=
  ∀ n, P4197453449028817459.a n = A049698 n

end A049698

/-!
# A049699: a(n) = T(n,n+3), array T as in A049695.

The programs for A049699, the canonical program `A049699.P5945401674549983801` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049699 has offset 0).

The definition of A049699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049699.P5945401674549983801

`A057428(n)+A049694(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049699

/-- `A057428(n)+A049694(n)` -/
def P5945401674549983801.Spec : Prop :=
  ∀ n, P5945401674549983801.a n = A049699 n

theorem P5945401674549983801.correct : P5945401674549983801.Spec := by
  intro n
  simp only [A049699]

end A049699

/-! ## A049699.P3492566999411059944

`A049694(n)-A057427(n)`
-/

namespace A049699.P3492566999411059944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n - A057427 n

end

end A049699.P3492566999411059944

namespace A049699

/-- `A049694(n)-A057427(n)` -/
def P3492566999411059944.Spec : Prop :=
  ∀ n, P3492566999411059944.a n = A049699 n

theorem P3492566999411059944.correct : P3492566999411059944.Spec := by
  intro n
  simp only [A049699, Nat.add_sub_cancel, A049699.P3492566999411059944.a, A049699.P5945401674549983801.a, A049694, A049694.P6352157248811227265.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, A049635, A049635.P15281965004979027358.a, A049693, A049693.P1234389797638437336.a, A216475, A216475.P1503443610381396525.a, A000010, A000010.P4673923239450215316.a, A049634, A049634.P8228112400628920281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049699

/-! ## A049699.P7717475268783818257

`A000007(n)+A049694(n)-1`
-/

namespace A049699.P7717475268783818257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A049694 n - 1)

end

end A049699.P7717475268783818257

namespace A049699

/-- `A000007(n)+A049694(n)-1` -/
def P7717475268783818257.Spec : Prop :=
  ∀ n, P7717475268783818257.a n = A049699 n

theorem P7717475268783818257.correct : P7717475268783818257.Spec := by
  intro n
  simp only [A049699, Nat.add_sub_cancel, A049699.P7717475268783818257.a, A049699.P5945401674549983801.a, A000007, A000007.P6599383543502402472.a, A049694, A049694.P6352157248811227265.a, A057428, A057428.P2999489532230392221.a, A049635, A049635.P15281965004979027358.a, A057427, A057427.P3058147525557661423.a, A049693, A049693.P1234389797638437336.a, A216475, A216475.P1503443610381396525.a, A000010, A000010.P4673923239450215316.a, A049634, A049634.P8228112400628920281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049699

/-! ## A049699.P8817961037467322906

`A049694(n)-A280076(n+2)%2`
-/

namespace A049699.P8817961037467322906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n - Int.tmod (A280076 (n + 2)) 2

end

end A049699.P8817961037467322906

namespace A049699

/-- `A049694(n)-A280076(n+2)%2` -/
def P8817961037467322906.Spec : Prop :=
  ∀ n, P8817961037467322906.a n = A049699 n

end A049699

/-! ## A049699.P5904641394895216026

`floor(A049694(n)-n/A285081(n+1))`
-/

namespace A049699.P5904641394895216026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049694 n : ℚ) - (n : ℚ) / (A285081 (n + 1) : ℚ)⌋

end

end A049699.P5904641394895216026

namespace A049699

/-- `floor(A049694(n)-n/A285081(n+1))` -/
def P5904641394895216026.Spec : Prop :=
  ∀ n, P5904641394895216026.a n = A049699 n

end A049699

/-! ## A049699.P18388776782642322354

`floor(A049694(n)-n/A285082(n+1))`
-/

namespace A049699.P18388776782642322354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049694 n : ℚ) - (n : ℚ) / (A285082 (n + 1) : ℚ)⌋

end

end A049699.P18388776782642322354

namespace A049699

/-- `floor(A049694(n)-n/A285082(n+1))` -/
def P18388776782642322354.Spec : Prop :=
  ∀ n, P18388776782642322354.a n = A049699 n

end A049699

/-! ## A049699.P15717298876143538639

`floor(A049694(n)-n/A285084(n+1))`
-/

namespace A049699.P15717298876143538639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049694 n : ℚ) - (n : ℚ) / (A285084 (n + 1) : ℚ)⌋

end

end A049699.P15717298876143538639

namespace A049699

/-- `floor(A049694(n)-n/A285084(n+1))` -/
def P15717298876143538639.Spec : Prop :=
  ∀ n, P15717298876143538639.a n = A049699 n

end A049699

/-! ## A049699.P5297847511606626363

`floor(A049694(n)-n/A285085(n+1))`
-/

namespace A049699.P5297847511606626363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049694 n : ℚ) - (n : ℚ) / (A285085 (n + 1) : ℚ)⌋

end

end A049699.P5297847511606626363

namespace A049699

/-- `floor(A049694(n)-n/A285085(n+1))` -/
def P5297847511606626363.Spec : Prop :=
  ∀ n, P5297847511606626363.a n = A049699 n

end A049699

/-! ## A049699.P18009009854729204463

`floor(A049694(n)-n/A287127(n+1))`
-/

namespace A049699.P18009009854729204463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049694 n : ℚ) - (n : ℚ) / (A287127 (n + 1) : ℚ)⌋

end

end A049699.P18009009854729204463

namespace A049699

/-- `floor(A049694(n)-n/A287127(n+1))` -/
def P18009009854729204463.Spec : Prop :=
  ∀ n, P18009009854729204463.a n = A049699 n

end A049699

/-! ## A049699.P16166338391783767159

`A049694(n)-A001221(A001316(n))`
-/

namespace A049699.P16166338391783767159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n - A001221 (A001316 n).toNat

end

end A049699.P16166338391783767159

namespace A049699

/-- `A049694(n)-A001221(A001316(n))` -/
def P16166338391783767159.Spec : Prop :=
  ∀ n, P16166338391783767159.a n = A049699 n

end A049699

/-! ## A049699.P8501014053075915734

`A049694(n)-A001221(A061142(n+1))`
-/

namespace A049699.P8501014053075915734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n - A001221 (A061142 (n + 1)).toNat

end

end A049699.P8501014053075915734

namespace A049699

/-- `A049694(n)-A001221(A061142(n+1))` -/
def P8501014053075915734.Spec : Prop :=
  ∀ n, P8501014053075915734.a n = A049699 n

end A049699

/-! ## A049699.P3505393453999052752

`A049694(n)-A001221(A068794(n+1))`
-/

namespace A049699.P3505393453999052752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n - A001221 (A068794 (n + 1)).toNat

end

end A049699.P3505393453999052752

namespace A049699

/-- `A049694(n)-A001221(A068794(n+1))` -/
def P3505393453999052752.Spec : Prop :=
  ∀ n, P3505393453999052752.a n = A049699 n

end A049699

/-! ## A049699.P8767818431532295641

`A049635(n)-A036453(n+1)`
-/

namespace A049699.P8767818431532295641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n - A036453 (n + 1)

end

end A049699.P8767818431532295641

namespace A049699

/-- `A049635(n)-A036453(n+1)` -/
def P8767818431532295641.Spec : Prop :=
  ∀ n, P8767818431532295641.a n = A049699 n

end A049699

/-! ## A049699.P15479178463349842509

`A049635(n)+A057428(n)-1`
-/

namespace A049699.P15479178463349842509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n + (A057428 n - 1)

end

end A049699.P15479178463349842509

namespace A049699

/-- `A049635(n)+A057428(n)-1` -/
def P15479178463349842509.Spec : Prop :=
  ∀ n, P15479178463349842509.a n = A049699 n

end A049699

/-! ## A049699.P11624632789342610270

`A049635(n)-A000032(C(2, n+2))`
-/

namespace A049699.P11624632789342610270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n - A000032 (Nat.choose 2 (n + 2))

end

end A049699.P11624632789342610270

namespace A049699

/-- `A049635(n)-A000032(C(2, n+2))` -/
def P11624632789342610270.Spec : Prop :=
  ∀ n, P11624632789342610270.a n = A049699 n

end A049699

/-! ## A049699.P1262898559825551311

`A049635(n)-A014963(A001316(n))`
-/

namespace A049699.P1262898559825551311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n - A014963 (A001316 n).toNat

end

end A049699.P1262898559825551311

namespace A049699

/-- `A049635(n)-A014963(A001316(n))` -/
def P1262898559825551311.Spec : Prop :=
  ∀ n, P1262898559825551311.a n = A049699 n

end A049699

/-! ## A049699.P1164934095063386964

`A049635(n)-A020639(A001223(n+1))`
-/

namespace A049699.P1164934095063386964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n - A020639 (A001223 (n + 1)).toNat

end

end A049699.P1164934095063386964

namespace A049699

/-- `A049635(n)-A020639(A001223(n+1))` -/
def P1164934095063386964.Spec : Prop :=
  ∀ n, P1164934095063386964.a n = A049699 n

end A049699

/-! ## A049699.P4739360646513434128

`A049694(n)-char[A048673(n+1)]`
-/

namespace A049699.P4739360646513434128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049694 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A049699.P4739360646513434128

namespace A049699

/-- `A049694(n)-char[A048673(n+1)]` -/
def P4739360646513434128.Spec : Prop :=
  ∀ n, P4739360646513434128.a n = A049699 n

end A049699

/-! ## A049699.P1158027071660137216

`A055456(A049694(n))`
-/

namespace A049699.P1158027071660137216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A049694 n).toNat

end

end A049699.P1158027071660137216

namespace A049699

/-- `A055456(A049694(n))` -/
def P1158027071660137216.Spec : Prop :=
  ∀ n, P1158027071660137216.a n = A049699 n

end A049699

