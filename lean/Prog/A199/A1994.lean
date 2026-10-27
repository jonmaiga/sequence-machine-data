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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A199400: Triangle T(n,k), read by rows, given by (2,0,3,0,4,0,5,0,6,0,7,0,8,0,9,...) DELTA (2,1,3,2,4,3,5,4,6,5,7,6,8,7,9,...) where DELTA is the operator defined in A084938.

The programs for A199400, the canonical program `A199400.P12103510985092836709` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199400 has offset 0).

The definition of A199400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199400.P12103510985092836709

`(col(n)+1)*T(n-1,k-1)+(col(n)+2)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199400

/-- `(col(n)+1)*T(n-1,k-1)+(col(n)+2)*T(n-1,k)` -/
def P12103510985092836709.Spec : Prop :=
  ∀ n, (P12103510985092836709.a n : ℤ) = A199400 n

theorem P12103510985092836709.correct : P12103510985092836709.Spec := by
  intro n
  simp only [A199400]

end A199400

/-! ## A199400.P4606889393661152651

`A002260(n+1)*A038719(n)`
-/

namespace A199400.P4606889393661152651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A038719 n

end

end A199400.P4606889393661152651

namespace A199400

/-- `A002260(n+1)*A038719(n)` -/
def P4606889393661152651.Spec : Prop :=
  ∀ n, P4606889393661152651.a n = A199400 n

end A199400

/-! ## A199400.P4977595906175353057

`(A002262(n)+1)*A038719(n)`
-/

namespace A199400.P4977595906175353057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A038719 n

end

end A199400.P4977595906175353057

namespace A199400

/-- `(A002262(n)+1)*A038719(n)` -/
def P4977595906175353057.Spec : Prop :=
  ∀ n, P4977595906175353057.a n = A199400 n

end A199400

/-! ## A199400.P18268313235868882557

`A143494(n+2)*A166350(n+1)`
-/

namespace A199400.P18268313235868882557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143494 (n + 2) * A166350 (n + 1)

end

end A199400.P18268313235868882557

namespace A199400

/-- `A143494(n+2)*A166350(n+1)` -/
def P18268313235868882557.Spec : Prop :=
  ∀ n, P18268313235868882557.a n = A199400 n

end A199400

/-! ## A199400.P15650290086211213907

`A019538(n+1)/A028246(n+1)*A038719(n)`
-/

namespace A199400.P15650290086211213907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A028246 (n + 1) : ℚ) * (A038719 n : ℚ)

end

end A199400.P15650290086211213907

namespace A199400

/-- `A019538(n+1)/A028246(n+1)*A038719(n)` -/
def P15650290086211213907.Spec : Prop :=
  ∀ n, P15650290086211213907.a n = (A199400 n : ℚ)

end A199400

/-! ## A199400.P7859951509205004056

`A019538(n+1)+A019538(n+2)-A028246(n+2)`
-/

namespace A199400.P7859951509205004056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019538 (n + 1) + (A019538 (n + 2) - A028246 (n + 2))

end

end A199400.P7859951509205004056

namespace A199400

/-- `A019538(n+1)+A019538(n+2)-A028246(n+2)` -/
def P7859951509205004056.Spec : Prop :=
  ∀ n, P7859951509205004056.a n = A199400 n

end A199400

/-! ## A199400.P14202591310680011929

`abs(A162508(n+1))`
-/

namespace A199400.P14202591310680011929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162508 (n + 1)|

end

end A199400.P14202591310680011929

namespace A199400

/-- `abs(A162508(n+1))` -/
def P14202591310680011929.Spec : Prop :=
  ∀ n, P14202591310680011929.a n = A199400 n

end A199400

/-! ## A199400.P2196125796867091211

`gcd(A000038(n), A162508(n+1))`
-/

namespace A199400.P2196125796867091211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A162508 (n + 1))

end

end A199400.P2196125796867091211

namespace A199400

/-- `gcd(A000038(n), A162508(n+1))` -/
def P2196125796867091211.Spec : Prop :=
  ∀ n, (P2196125796867091211.a n : ℤ) = A199400 n

end A199400

/-! ## A199400.P2677027210003860151

`lcm(A000034(n), A162508(n+1))`
-/

namespace A199400.P2677027210003860151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A162508 (n + 1))

end

end A199400.P2677027210003860151

namespace A199400

/-- `lcm(A000034(n), A162508(n+1))` -/
def P2677027210003860151.Spec : Prop :=
  ∀ n, (P2677027210003860151.a n : ℤ) = A199400 n

end A199400

/-! ## A199400.P3995485727882848732

`(A001222(A059268(n))+1)*A038719(n)`
-/

namespace A199400.P3995485727882848732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A059268 n).toNat + 1) * A038719 n

end

end A199400.P3995485727882848732

namespace A199400

/-- `(A001222(A059268(n))+1)*A038719(n)` -/
def P3995485727882848732.Spec : Prop :=
  ∀ n, P3995485727882848732.a n = A199400 n

end A199400

/-! ## A199400.P4914159145997121582

`A001222(2*A059268(n))*A038719(n)`
-/

namespace A199400.P4914159145997121582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A059268 n).toNat * A038719 n

end

end A199400.P4914159145997121582

namespace A199400

/-- `A001222(2*A059268(n))*A038719(n)` -/
def P4914159145997121582.Spec : Prop :=
  ∀ n, P4914159145997121582.a n = A199400 n

end A199400

/-!
# A199402: Binary XOR of 2^k - (-1)^k as k varies from 1 to n.

The programs for A199402, the canonical program `A199402.P12515294198941595141` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199402 has offset 1).

The definition of A199402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199402.P12515294198941595141

`xor(a(n-1), 2^(n+1)-(-1)^(n+1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199402

/-- `xor(a(n-1), 2^(n+1)-(-1)^(n+1))` -/
def P12515294198941595141.Spec : Prop :=
  ∀ n, P12515294198941595141.a n = A199402 (n + 1)

theorem P12515294198941595141.correct : P12515294198941595141.Spec := by
  intro n
  simp only [A199402, Nat.add_sub_cancel]

end A199402

/-! ## A199402.P17133640806133642921

`a(n-2)+3*(or(3, a(n-2))-1)` with `a(0)=3, a(1)=0`
-/

namespace A199402.P17133640806133642921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  a (n - 2) + 3 * (Int.lor 3 (a (n - 2)) - 1)

end

end A199402.P17133640806133642921

namespace A199402

/-- `a(n-2)+3*(or(3, a(n-2))-1)` -/
def P17133640806133642921.Spec : Prop :=
  ∀ n, P17133640806133642921.a n = A199402 (n + 1)

end A199402

/-! ## A199402.P11103882713559269923

`a(n-2)-3*(1-or(3, a(n-2)))` with `a(0)=3, a(1)=0`
-/

namespace A199402.P11103882713559269923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n a =>
  a (n - 2) - 3 * (1 - Int.lor 3 (a (n - 2)))

end

end A199402.P11103882713559269923

namespace A199402

/-- `a(n-2)-3*(1-or(3, a(n-2)))` -/
def P11103882713559269923.Spec : Prop :=
  ∀ n, P11103882713559269923.a n = A199402 (n + 1)

end A199402

/-! ## A199402.P6917109796622700150

`xor(3*A001045(n+1), a(n-1))` with `a(0)=3`
-/

namespace A199402.P6917109796622700150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor (3 * A001045 (n + 1)) (a (n - 1))

end

end A199402.P6917109796622700150

namespace A199402

/-- `xor(3*A001045(n+1), a(n-1))` -/
def P6917109796622700150.Spec : Prop :=
  ∀ n, P6917109796622700150.a n = A199402 (n + 1)

end A199402

/-! ## A199402.P14213543371432655249

`A176040(n)*A199403(n+1)`
-/

namespace A199402.P14213543371432655249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n * A199403 (n + 1)

end

end A199402.P14213543371432655249

namespace A199402

/-- `A176040(n)*A199403(n+1)` -/
def P14213543371432655249.Spec : Prop :=
  ∀ n, P14213543371432655249.a n = A199402 (n + 1)

end A199402

/-! ## A199402.P1889068829603949992

`Δ[A014601(n)]*A199403(n+1)`
-/

namespace A199402.P1889068829603949992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A199403 (n + 1)

end

end A199402.P1889068829603949992

namespace A199402

/-- `Δ[A014601(n)]*A199403(n+1)` -/
def P1889068829603949992.Spec : Prop :=
  ∀ n, P1889068829603949992.a n = A199402 (n + 1)

end A199402

/-! ## A199402.P10162036720199025921

`(3-A010673(n))*A199403(n+1)`
-/

namespace A199402.P10162036720199025921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A010673 n) * A199403 (n + 1)

end

end A199402.P10162036720199025921

namespace A199402

/-- `(3-A010673(n))*A199403(n+1)` -/
def P10162036720199025921.Spec : Prop :=
  ∀ n, P10162036720199025921.a n = A199402 (n + 1)

end A199402

/-!
# A199403: Binary XOR of (2^k - (-1)^k)/3 as k varies from 1 to n.

The programs for A199403, the canonical program `A199403.P6777690607196254638` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199403 has offset 1).

The definition of A199403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199403.P6777690607196254638

`2*a(n-1)+a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=6, a(4)=13`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199403

/-- `2*a(n-1)+a(n-4)-2*a(n-5)` -/
def P6777690607196254638.Spec : Prop :=
  ∀ n, P6777690607196254638.a n = A199403 (n + 1)

theorem P6777690607196254638.correct : P6777690607196254638.Spec := by
  intro n
  simp only [A199403, Nat.add_sub_cancel]

end A199403

/-! ## A199403.P497541391473963692

`xor(a(n-1), (2^(n+1)-(-1)^(n+1))/3)` with `a(0)=1`
-/

namespace A199403.P497541391473963692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (SequenceMachineLib.roundAway (((2 ^ (n + 1) : ℤ) - (-1) ^ (n + 1) : ℚ) / 3))

end

end A199403.P497541391473963692

namespace A199403

/-- `xor(a(n-1), (2^(n+1)-(-1)^(n+1))/3)` -/
def P497541391473963692.Spec : Prop :=
  ∀ n, P497541391473963692.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P15830776147461691782

`xor(2*a(n-1), (n+1)%4)` with `a(0)=1`
-/

namespace A199403.P15830776147461691782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) ((n + 1) % 4)

end

end A199403.P15830776147461691782

namespace A199403

/-- `xor(2*a(n-1), (n+1)%4)` -/
def P15830776147461691782.Spec : Prop :=
  ∀ n, (P15830776147461691782.a n : ℤ) = A199403 (n + 1)

end A199403

/-! ## A199403.P6234096904952036690

`xor(2*a(n-1), and(3, n+1))` with `a(0)=1`
-/

namespace A199403.P6234096904952036690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.land 3 (n + 1))

end

end A199403.P6234096904952036690

namespace A199403

/-- `xor(2*a(n-1), and(3, n+1))` -/
def P6234096904952036690.Spec : Prop :=
  ∀ n, (P6234096904952036690.a n : ℤ) = A199403 (n + 1)

end A199403

/-! ## A199403.P3062555665330130903

`xor(a(n-1)+a(n-1), and(3, n+1))` with `a(0)=1`
-/

namespace A199403.P3062555665330130903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1) + a (n - 1)) (Nat.land 3 (n + 1))

end

end A199403.P3062555665330130903

namespace A199403

/-- `xor(a(n-1)+a(n-1), and(3, n+1))` -/
def P3062555665330130903.Spec : Prop :=
  ∀ n, (P3062555665330130903.a n : ℤ) = A199403 (n + 1)

end A199403

/-! ## A199403.P18242771410613423325

`A190569(n)-and(1, n)`
-/

namespace A199403.P18242771410613423325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 n - (Nat.land 1 n : ℤ)

end

end A199403.P18242771410613423325

namespace A199403

/-- `A190569(n)-and(1, n)` -/
def P18242771410613423325.Spec : Prop :=
  ∀ n, P18242771410613423325.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P9198895687863692638

`A007909(n+1)-n%2`
-/

namespace A199403.P9198895687863692638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A199403.P9198895687863692638

namespace A199403

/-- `A007909(n+1)-n%2` -/
def P9198895687863692638.Spec : Prop :=
  ∀ n, P9198895687863692638.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P4066153542917638557

`A099430(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A199403.P4066153542917638557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A099430 n - a (n - 2)

end

end A199403.P4066153542917638557

namespace A199403

/-- `A099430(n)-a(n-2)` -/
def P4066153542917638557.Spec : Prop :=
  ∀ n, P4066153542917638557.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P15353685983074552452

`A190569(n)-A000035(n)`
-/

namespace A199403.P15353685983074552452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190569 n - A000035 n

end

end A199403.P15353685983074552452

namespace A199403

/-- `A190569(n)-A000035(n)` -/
def P15353685983074552452.Spec : Prop :=
  ∀ n, P15353685983074552452.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P1892108735444451033

`and(A007910(n), A190569(n))`
-/

namespace A199403.P1892108735444451033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007910 n) (A190569 n)

end

end A199403.P1892108735444451033

namespace A199403

/-- `and(A007910(n), A190569(n))` -/
def P1892108735444451033.Spec : Prop :=
  ∀ n, P1892108735444451033.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P16779928620779156481

`xor(A000975(n), A007909(n))`
-/

namespace A199403.P16779928620779156481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A007909 n)

end

end A199403.P16779928620779156481

namespace A199403

/-- `xor(A000975(n), A007909(n))` -/
def P16779928620779156481.Spec : Prop :=
  ∀ n, P16779928620779156481.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P13725114353185361745

`xor(A010674(n), A133190(n))`
-/

namespace A199403.P13725114353185361745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A133190 n)

end

end A199403.P13725114353185361745

namespace A199403

/-- `xor(A010674(n), A133190(n))` -/
def P13725114353185361745.Spec : Prop :=
  ∀ n, P13725114353185361745.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P14642041187511106233

`A007909(n+1)-A000035(n)`
-/

namespace A199403.P14642041187511106233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1) - A000035 n

end

end A199403.P14642041187511106233

namespace A199403

/-- `A007909(n+1)-A000035(n)` -/
def P14642041187511106233.Spec : Prop :=
  ∀ n, P14642041187511106233.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P1632912296592637950

`A190569(n)-A010673(n)/2`
-/

namespace A199403.P1632912296592637950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190569 n : ℚ) - (A010673 n : ℚ) / 2

end

end A199403.P1632912296592637950

namespace A199403

/-- `A190569(n)-A010673(n)/2` -/
def P1632912296592637950.Spec : Prop :=
  ∀ n, P1632912296592637950.a n = (A199403 (n + 1) : ℚ)

end A199403

/-! ## A199403.P6742491130654105544

`and(A007909(n+1), A007910(n))`
-/

namespace A199403.P6742491130654105544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007909 (n + 1)) (A007910 n)

end

end A199403.P6742491130654105544

namespace A199403

/-- `and(A007909(n+1), A007910(n))` -/
def P6742491130654105544.Spec : Prop :=
  ∀ n, P6742491130654105544.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P141742069780448179

`and(∑[A007909(n)], A007909(n+1))`
-/

namespace A199403.P141742069780448179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A007909 (n + 1))

end

end A199403.P141742069780448179

namespace A199403

/-- `and(∑[A007909(n)], A007909(n+1))` -/
def P141742069780448179.Spec : Prop :=
  ∀ n, P141742069780448179.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P14872530687039302542

`A133872(2*n)+A007909(n+1)-1`
-/

namespace A199403.P14872530687039302542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * n) + (A007909 (n + 1) - 1)

end

end A199403.P14872530687039302542

namespace A199403

/-- `A133872(2*n)+A007909(n+1)-1` -/
def P14872530687039302542.Spec : Prop :=
  ∀ n, P14872530687039302542.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P3839250178014703040

`A152822(2*n)+A007909(n+1)-1`
-/

namespace A199403.P3839250178014703040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (2 * n) + (A007909 (n + 1) - 1)

end

end A199403.P3839250178014703040

namespace A199403

/-- `A152822(2*n)+A007909(n+1)-1` -/
def P3839250178014703040.Spec : Prop :=
  ∀ n, P3839250178014703040.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P5120191933023800070

`A007909(n+1)-char[A116921(2*(n+1))]`
-/

namespace A199403.P5120191933023800070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A199403.P5120191933023800070

namespace A199403

/-- `A007909(n+1)-char[A116921(2*(n+1))]` -/
def P5120191933023800070.Spec : Prop :=
  ∀ n, P5120191933023800070.a n = A199403 (n + 1)

end A199403

/-! ## A199403.P964400055148840934

`A199402(n+1)/A176040(n)`
-/

namespace A199403.P964400055148840934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199402 (n + 1) : ℚ) / (A176040 n : ℚ)

end

end A199403.P964400055148840934

namespace A199403

/-- `A199402(n+1)/A176040(n)` -/
def P964400055148840934.Spec : Prop :=
  ∀ n, P964400055148840934.a n = (A199403 (n + 1) : ℚ)

end A199403

/-!
# A199404: x-values in the solution to 13*x^2 - 12 = y^2.

The programs for A199404, the canonical program `A199404.P5689658067500872064` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199404 has offset 1).

The definition of A199404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199404.P5689658067500872064

`A249579(A047468(n+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199404

/-- `A249579(A047468(n+2))` -/
def P5689658067500872064.Spec : Prop :=
  ∀ n, P5689658067500872064.a n = A199404 (n + 1)

theorem P5689658067500872064.correct : P5689658067500872064.Spec := by
  intro n
  simp only [A199404, Nat.add_sub_cancel]

end A199404

/-! ## A199404.P11582044675037372350

`A249579(Δ[A195015(n)]-n)`
-/

namespace A199404.P11582044675037372350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A199404.P11582044675037372350

namespace A199404

/-- `A249579(Δ[A195015(n)]-n)` -/
def P11582044675037372350.Spec : Prop :=
  ∀ n, P11582044675037372350.a n = A199404 (n + 1)

end A199404

/-! ## A199404.P18038975497133076568

`A249579(A168286(n+1)+n)`
-/

namespace A199404.P18038975497133076568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (A168286 (n + 1) + (n : ℤ)).toNat

end

end A199404.P18038975497133076568

namespace A199404

/-- `A249579(A168286(n+1)+n)` -/
def P18038975497133076568.Spec : Prop :=
  ∀ n, P18038975497133076568.a n = A199404 (n + 1)

end A199404

/-! ## A199404.P6974803814693777356

`abs(Δ[A006190(n)*A057077(n)])`
-/

namespace A199404.P6974803814693777356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n * A057077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A199404.P6974803814693777356

namespace A199404

/-- `abs(Δ[A006190(n)*A057077(n)])` -/
def P6974803814693777356.Spec : Prop :=
  ∀ n, P6974803814693777356.a n = A199404 (n + 1)

end A199404

/-! ## A199404.P5277254396884541602

`A052924(n)+A006190(n)*A010673(n)`
-/

namespace A199404.P5277254396884541602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + A006190 n * A010673 n

end

end A199404.P5277254396884541602

namespace A199404

/-- `A052924(n)+A006190(n)*A010673(n)` -/
def P5277254396884541602.Spec : Prop :=
  ∀ n, P5277254396884541602.a n = A199404 (n + 1)

end A199404

/-!
# A199405: y-values in the solution to 13*x^2 - 12 = y^2.

The programs for A199405, the canonical program `A199405.P4656372193440413382` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199405 has offset 1).

The definition of A199405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199405.P4656372193440413382

`abs(Δ[A006497(n)*A057077(n)])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199405

/-- `abs(Δ[A006497(n)*A057077(n)])` -/
def P4656372193440413382.Spec : Prop :=
  ∀ n, P4656372193440413382.a n = A199405 (n + 1)

theorem P4656372193440413382.correct : P4656372193440413382.Spec := by
  intro n
  simp only [A199405, Nat.add_sub_cancel]

end A199405

/-! ## A199405.P12542309069507048695

`lcm(Δ[A006497(n)*A057077(n)], A165326(n))`
-/

namespace A199405.P12542309069507048695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n * A057077 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A165326 n)

end

end A199405.P12542309069507048695

namespace A199405

/-- `lcm(Δ[A006497(n)*A057077(n)], A165326(n))` -/
def P12542309069507048695.Spec : Prop :=
  ∀ n, (P12542309069507048695.a n : ℤ) = A199405 (n + 1)

end A199405

/-! ## A199405.P16007284431754512641

`A006497(n+1)-A006497(n)*A033999(n)`
-/

namespace A199405.P16007284431754512641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (n + 1) - A006497 n * A033999 n

end

end A199405.P16007284431754512641

namespace A199405

/-- `A006497(n+1)-A006497(n)*A033999(n)` -/
def P16007284431754512641.Spec : Prop :=
  ∀ n, P16007284431754512641.a n = A199405 (n + 1)

end A199405

/-! ## A199405.P2440959263964650534

`A006497(n+1)-A006497(n)*A087960(2*n)`
-/

namespace A199405.P2440959263964650534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (n + 1) - A006497 n * A087960 (2 * n)

end

end A199405.P2440959263964650534

namespace A199405

/-- `A006497(n+1)-A006497(n)*A087960(2*n)` -/
def P2440959263964650534.Spec : Prop :=
  ∀ n, P2440959263964650534.a n = A199405 (n + 1)

end A199405

/-! ## A199405.P3316168449003216050

`A006497(A000027(n+1))-A006497(n)/A033999(n)`
-/

namespace A199405.P3316168449003216050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006497 (A000027 (n + 1)).toNat : ℚ) - (A006497 n : ℚ) / (A033999 n : ℚ)

end

end A199405.P3316168449003216050

namespace A199405

/-- `A006497(A000027(n+1))-A006497(n)/A033999(n)` -/
def P3316168449003216050.Spec : Prop :=
  ∀ n, P3316168449003216050.a n = (A199405 (n + 1) : ℚ)

end A199405

/-!
# A199406: The number of inequivalent ways to color the edges of a cube using at most n colors.

The programs for A199406, the canonical program `A199406.P3448545819865992562` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199406 has offset 1).

The definition of A199406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199406.P3448545819865992562

`A337406(n+1)+A331351(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A199406

/-- `A337406(n+1)+A331351(n+1)` -/
def P3448545819865992562.Spec : Prop :=
  ∀ n, P3448545819865992562.a n = A199406 (n + 1)

theorem P3448545819865992562.correct : P3448545819865992562.Spec := by
  intro n
  simp only [A199406, Nat.add_sub_cancel]

end A199406

/-! ## A199406.P12985932025584803154

`A060530(n+1)-A337406(n+1)`
-/

namespace A199406.P12985932025584803154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060530 (n + 1) - A337406 (n + 1)

end

end A199406.P12985932025584803154

namespace A199406

/-- `A060530(n+1)-A337406(n+1)` -/
def P12985932025584803154.Spec : Prop :=
  ∀ n, P12985932025584803154.a n = A199406 (n + 1)

end A199406

/-! ## A199406.P13946788480908187198

`(A060530(n+1)+A331351(n+1))/2`
-/

namespace A199406.P13946788480908187198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060530 (n + 1) + A331351 (n + 1) : ℚ) / 2

end

end A199406.P13946788480908187198

namespace A199406

/-- `(A060530(n+1)+A331351(n+1))/2` -/
def P13946788480908187198.Spec : Prop :=
  ∀ n, P13946788480908187198.a n = (A199406 (n + 1) : ℚ)

end A199406

/-! ## A199406.P17705922572947485589

`∑[A100794(n)]-A337406(n+1)`
-/

namespace A199406.P17705922572947485589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337406 (n + 1)

end

end A199406.P17705922572947485589

namespace A199406

/-- `∑[A100794(n)]-A337406(n+1)` -/
def P17705922572947485589.Spec : Prop :=
  ∀ n, P17705922572947485589.a n = A199406 (n + 1)

end A199406

/-!
# A199407: Integers n such that for all i > n the largest prime factor of product(i+k, {k,0,7}) exceeds the largest prime factor of product(n+k, {k,0,7}).

The programs for A199407, there is no canonical definition to state claims against.
-/

/-! ## A199407.P7242706724974202163

`eq[2, A353845(n+8)]`
-/

namespace A199407.P7242706724974202163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353845 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199407.P7242706724974202163

/-! ## A199407.P12449188502121469687

`eq[2, A363719(n+8)]`
-/

namespace A199407.P12449188502121469687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363719 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199407.P12449188502121469687

/-! ## A199407.P17448075928336768881

`eq[2, A363723(n+8)]`
-/

namespace A199407.P17448075928336768881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199407.P17448075928336768881

/-! ## A199407.P4541785208794927865

`p?[lt[30, A220226(n+1)]]-8`
-/

namespace A199407.P4541785208794927865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220226 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 8

end

end A199407.P4541785208794927865

/-! ## A199407.P234132483697894654

`A347050(p?[p?[2*n+1]+12])+p?[2*n+9]-9`
-/

namespace A199407.P234132483697894654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 12

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347050 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + ((f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 9)

end

end A199407.P234132483697894654

/-!
# A199408: Triangle T(n,k) = n + k - gcd(n,k) read by rows, 1 <= n, 1 <= k <= n.

The programs for A199408, the canonical program `A199408.P10704695596668764351` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199408 has offset 1).

The definition of A199408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+1+col(n)+1-gcd(row(n)+1, col(n)+1)` (program `A199408.P10704695596668764351`, by `A199408.P10704695596668764351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199408.P10704695596668764351

`row(n)+1+col(n)+1-gcd(row(n)+1, col(n)+1)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199408

/-- `row(n)+1+col(n)+1-gcd(row(n)+1, col(n)+1)` -/
def P10704695596668764351.Spec : Prop :=
  ∀ n, P10704695596668764351.a n = A199408 (n + 1)

theorem P10704695596668764351.correct : P10704695596668764351.Spec := by
  intro n
  simp only [A199408, Nat.add_sub_cancel]

end A199408

/-! ## A199408.P6440677713308286708

`A049840(n+1)-A049828(n+1)`
-/

namespace A199408.P6440677713308286708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049840 (n + 1) - A049828 (n + 1)

end

end A199408.P6440677713308286708

namespace A199408

/-- `A049840(n+1)-A049828(n+1)` -/
def P6440677713308286708.Spec : Prop :=
  ∀ n, P6440677713308286708.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P6946388780141795136

`A108872(n+1)-A050873(n+1)`
-/

namespace A199408.P6946388780141795136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A050873 (n + 1)

end

end A199408.P6946388780141795136

namespace A199408

/-- `A108872(n+1)-A050873(n+1)` -/
def P6946388780141795136.Spec : Prop :=
  ∀ n, P6946388780141795136.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P2567162829501282709

`A050873(n+1)*A059026(n+1)`
-/

namespace A199408.P2567162829501282709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A059026 (n + 1)

end

end A199408.P2567162829501282709

namespace A199408

/-- `A050873(n+1)*A059026(n+1)` -/
def P2567162829501282709.Spec : Prop :=
  ∀ n, P2567162829501282709.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P11938390701460101500

`A094727(2-A050873(n+1)+n)`
-/

namespace A199408.P11938390701460101500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (2 - A050873 (n + 1) + (n : ℤ)).toNat

end

end A199408.P11938390701460101500

namespace A199408

/-- `A094727(2-A050873(n+1)+n)` -/
def P11938390701460101500.Spec : Prop :=
  ∀ n, P11938390701460101500.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P263389189254220822

`A002262(n+1-A050873(n+1))+A002024(n+1)`
-/

namespace A199408.P263389189254220822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n + 1 : ℤ) - A050873 (n + 1)).toNat + A002024 (n + 1)

end

end A199408.P263389189254220822

namespace A199408

/-- `A002262(n+1-A050873(n+1))+A002024(n+1)` -/
def P263389189254220822.Spec : Prop :=
  ∀ n, P263389189254220822.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P16703373461720622815

`A002024(n+1)+A002260(n+1)-A050873(n+1)`
-/

namespace A199408.P16703373461720622815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002260 (n + 1) - A050873 (n + 1))

end

end A199408.P16703373461720622815

namespace A199408

/-- `A002024(n+1)+A002260(n+1)-A050873(n+1)` -/
def P16703373461720622815.Spec : Prop :=
  ∀ n, P16703373461720622815.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P3269333400494421690

`floor(A094727(n+1)/A050873(n+1))*A050873(n+1)`
-/

namespace A199408.P3269333400494421690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094727 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)⌋ * A050873 (n + 1)

end

end A199408.P3269333400494421690

namespace A199408

/-- `floor(A094727(n+1)/A050873(n+1))*A050873(n+1)` -/
def P3269333400494421690.Spec : Prop :=
  ∀ n, P3269333400494421690.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P5009870319471458038

`A051162(2-A050873(n+1)+n)`
-/

namespace A199408.P5009870319471458038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (2 - A050873 (n + 1) + (n : ℤ)).toNat

end

end A199408.P5009870319471458038

namespace A199408

/-- `A051162(2-A050873(n+1)+n)` -/
def P5009870319471458038.Spec : Prop :=
  ∀ n, P5009870319471458038.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P2997987596773693508

`A074712(A245300(n)+1)`
-/

namespace A199408.P2997987596773693508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A245300 n + 1).toNat

end

end A199408.P2997987596773693508

namespace A199408

/-- `A074712(A245300(n)+1)` -/
def P2997987596773693508.Spec : Prop :=
  ∀ n, P2997987596773693508.a n = A199408 (n + 1)

end A199408

/-! ## A199408.P14359337820431280995

`A094727(1-A093057(n+1)+n)`
-/

namespace A199408.P14359337820431280995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (1 - A093057 (n + 1) + (n : ℤ)).toNat

end

end A199408.P14359337820431280995

namespace A199408

/-- `A094727(1-A093057(n+1)+n)` -/
def P14359337820431280995.Spec : Prop :=
  ∀ n, P14359337820431280995.a n = A199408 (n + 1)

end A199408

/-!
# A199409: G.f. satisfies: A(x) = Sum_{n>=0} A(x)^n * x^(n^2) * (1 - x^(2*n+1))/(1 - x).

The programs for A199409, there is no canonical definition to state claims against.
-/

/-! ## A199409.P1437532254860427895

`A100196(A047653(n)+2)-1`
-/

namespace A199409.P1437532254860427895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A047653 n + 2).toNat - 1

end

end A199409.P1437532254860427895

/-! ## A199409.P5836051792518680912

`A054846(A047653(n)-A000045(n))`
-/

namespace A199409.P5836051792518680912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A047653 n - A000045 n).toNat

end

end A199409.P5836051792518680912

/-! ## A199409.P9959826810409924647

`A100196(A047653(n)-A000045(n))`
-/

namespace A199409.P9959826810409924647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A047653 n - A000045 n).toNat

end

end A199409.P9959826810409924647

/-! ## A199409.P8350912161287695076

`A100196(A047653(n)-A187070(n))`
-/

namespace A199409.P8350912161287695076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A047653 n - A187070 n).toNat

end

end A199409.P8350912161287695076

/-! ## A199409.P9055976389530801720

`ceil((sqrt(A331680(3*n+5))+1)/4)`
-/

namespace A199409.P9055976389530801720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (A331680 (3 * n + 5) : ℝ) + 1) / 4⌉

end

end A199409.P9055976389530801720

/-!
# A199410: G.f. satisfies: A(x) = Sum_{n>=0} A(x)^n * x^(n*(n+1)/2) * (1 - x^(n+1))/(1 - x).

The programs for A199410, there is no canonical definition to state claims against.
-/

/-! ## A199410.P2199088666845357626

`A261664(n)+A137747(n)`
-/

namespace A199410.P2199088666845357626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 n + A137747 n

end

end A199410.P2199088666845357626

/-! ## A199410.P1892368884330038176

`A261664(n)+A000418(n+1)`
-/

namespace A199410.P1892368884330038176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 n + A000418 (n + 1)

end

end A199410.P1892368884330038176

/-! ## A199410.P7956220114143417271

`A261664(n)+A036639(n+1)`
-/

namespace A199410.P7956220114143417271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 n + A036639 (n + 1)

end

end A199410.P7956220114143417271

/-! ## A199410.P9895667215941854332

`A062108(A192405(n)+A192401(n))`
-/

namespace A199410.P9895667215941854332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A192405 n + A192401 n).toNat

end

end A199410.P9895667215941854332

/-! ## A199410.P9155641055812191131

`or(A054900(A000296(n)), A171842(n))`
-/

namespace A199410.P9155641055812191131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054900 (A000296 n).toNat) (A171842 n)

end

end A199410.P9155641055812191131

/-!
# A199411: a(n) = 8*6^n+1.

The programs for A199411, the canonical program `A199411.P5252944955051985801` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199411 has offset 0).

The definition of A199411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*6^n+1` (program `A199411.P5252944955051985801`, by `A199411.P5252944955051985801.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199411.P5252944955051985801

`8*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199411

/-- `8*6^n+1` -/
def P5252944955051985801.Spec : Prop :=
  ∀ n, (P5252944955051985801.a n : ℤ) = A199411 n

theorem P5252944955051985801.correct : P5252944955051985801.Spec := by
  intro n
  simp only [A199411]

end A199411

/-! ## A199411.P10947022102575317807

`or(1, 8*6^n)`
-/

namespace A199411.P10947022102575317807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * 6 ^ n)

end

end A199411.P10947022102575317807

namespace A199411

/-- `or(1, 8*6^n)` -/
def P10947022102575317807.Spec : Prop :=
  ∀ n, (P10947022102575317807.a n : ℤ) = A199411 n

end A199411

/-! ## A199411.P14677351753180432434

`xor(1, 8*6^n)`
-/

namespace A199411.P14677351753180432434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * 6 ^ n)

end

end A199411.P14677351753180432434

namespace A199411

/-- `xor(1, 8*6^n)` -/
def P14677351753180432434.Spec : Prop :=
  ∀ n, (P14677351753180432434.a n : ℤ) = A199411 n

end A199411

/-! ## A199411.P18280578854267993286

`ogf((9-14x)/(1-7x+6x^2))`
-/

namespace A199411.P18280578854267993286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -14] [1, -7, 6] n

end

end A199411.P18280578854267993286

namespace A199411

/-- `ogf((9-14x)/(1-7x+6x^2))` -/
def P18280578854267993286.Spec : Prop :=
  ∀ n, P18280578854267993286.a n = A199411 n

end A199411

/-! ## A199411.P15147889271281944320

`abs(5-6*a(n-1))` with `a(0)=9`
-/

namespace A199411.P15147889271281944320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  |5 - 6 * a (n - 1)|

end

end A199411.P15147889271281944320

namespace A199411

/-- `abs(5-6*a(n-1))` -/
def P15147889271281944320.Spec : Prop :=
  ∀ n, P15147889271281944320.a n = A199411 n

end A199411

/-! ## A199411.P16231055715110317232

`6*(a(n-1)-5/6)` with `a(0)=9`
-/

namespace A199411.P16231055715110317232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  6 * (a (n - 1) - (5 : ℚ) / 6)

end

end A199411.P16231055715110317232

namespace A199411

/-- `6*(a(n-1)-5/6)` -/
def P16231055715110317232.Spec : Prop :=
  ∀ n, P16231055715110317232.a n = (A199411 n : ℚ)

theorem P16231055715110317232.correct : P16231055715110317232.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199411, Nat.add_sub_cancel, A199411.P16231055715110317232.a, A199411.P5252944955051985801.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199411, Nat.add_sub_cancel, A199411.P16231055715110317232.a, A199411.P5252944955051985801.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199411

/-! ## A199411.P9635767897944203422

`(A199319(n+1)+2)/3`
-/

namespace A199411.P9635767897944203422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199319 (n + 1) + 2 : ℚ) / 3

end

end A199411.P9635767897944203422

namespace A199411

/-- `(A199319(n+1)+2)/3` -/
def P9635767897944203422.Spec : Prop :=
  ∀ n, P9635767897944203422.a n = (A199411 n : ℚ)

theorem P9635767897944203422.correct : P9635767897944203422.Spec := by
  intro n
  simp only [A199411, Nat.add_sub_cancel, A199411.P9635767897944203422.a, A199411.P5252944955051985801.a, A199319, A199319.P11870111649505060977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199411

/-! ## A199411.P10468186518943770937

`A094617(A004273((n+2)²))`
-/

namespace A199411.P10468186518943770937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094617 (A004273 ((n + 2) ^ 2)).toNat

end

end A199411.P10468186518943770937

namespace A199411

/-- `A094617(A004273((n+2)²))` -/
def P10468186518943770937.Spec : Prop :=
  ∀ n, P10468186518943770937.a n = A199411 n

end A199411

/-!
# A199412: a(n) = (9*6^n+1)/5.

The programs for A199412, the canonical program `A199412.P9193519974234596610` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199412 has offset 0).

The definition of A199412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*6^n+1)/5` (program `A199412.P5411869511928464901`, by `A199412.P5411869511928464901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199412.P9193519974234596610

`6*a(n-1)-1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199412

/-- `6*a(n-1)-1` -/
def P9193519974234596610.Spec : Prop :=
  ∀ n, P9193519974234596610.a n = A199412 n

theorem P9193519974234596610.correct : P9193519974234596610.Spec := by
  intro n
  simp only [A199412]

end A199412

/-! ## A199412.P5411869511928464901

`(9*6^n+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199412.P5411869511928464901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 6 ^ n + 1 : ℚ) / 5

end

end A199412.P5411869511928464901

namespace A199412

/-- `(9*6^n+1)/5` -/
def P5411869511928464901.Spec : Prop :=
  ∀ n, P5411869511928464901.a n = (A199412 n : ℚ)

theorem P5411869511928464901.correct : P5411869511928464901.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199412, Nat.add_sub_cancel, A199412.P5411869511928464901.a, A199412.P9193519974234596610.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199412, Nat.add_sub_cancel, A199412.P5411869511928464901.a, A199412.P9193519974234596610.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199412

/-! ## A199412.P3249402700403533187

`ogf((2-3x)/(1-7x+6x^2))`
-/

namespace A199412.P3249402700403533187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -7, 6] n

end

end A199412.P3249402700403533187

namespace A199412

/-- `ogf((2-3x)/(1-7x+6x^2))` -/
def P3249402700403533187.Spec : Prop :=
  ∀ n, P3249402700403533187.a n = A199412 n

end A199412

/-! ## A199412.P7812903172612236998

`lcm(6, a(n-1))-1` with `a(0)=2, a(1)=11`
-/

namespace A199412.P7812903172612236998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11] fun n a =>
  (Int.lcm 6 (a (n - 1)) : ℤ) - 1

end

end A199412.P7812903172612236998

namespace A199412

/-- `lcm(6, a(n-1))-1` -/
def P7812903172612236998.Spec : Prop :=
  ∀ n, P7812903172612236998.a n = A199412 n

end A199412

/-! ## A199412.P8671692456065949570

`a(n-1)+∑[6^n]+a(n-1)` with `a(0)=2`
-/

namespace A199412.P8671692456065949570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A199412.P8671692456065949570

namespace A199412

/-- `a(n-1)+∑[6^n]+a(n-1)` -/
def P8671692456065949570.Spec : Prop :=
  ∀ n, (P8671692456065949570.a n : ℤ) = A199412 n

end A199412

/-! ## A199412.P8996079649896461315

`9*A003464(n)+2`
-/

namespace A199412.P8996079649896461315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A003464 n + 2

end

end A199412.P8996079649896461315

namespace A199412

/-- `9*A003464(n)+2` -/
def P8996079649896461315.Spec : Prop :=
  ∀ n, P8996079649896461315.a n = A199412 n

end A199412

/-! ## A199412.P3540310597376080880

`9*A047851(n)-7`
-/

namespace A199412.P3540310597376080880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A047851 n - 7

end

end A199412.P3540310597376080880

namespace A199412

/-- `9*A047851(n)-7` -/
def P3540310597376080880.Spec : Prop :=
  ∀ n, P3540310597376080880.a n = A199412 n

end A199412

/-! ## A199412.P13202212042955599740

`A026534(Δ[n²])+1`
-/

namespace A199412.P13202212042955599740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026534 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A199412.P13202212042955599740

namespace A199412

/-- `A026534(Δ[n²])+1` -/
def P13202212042955599740.Spec : Prop :=
  ∀ n, P13202212042955599740.a n = A199412 n

end A199412

/-! ## A199412.P11050420415846827826

`∑[A026565(2*n)]+1`
-/

namespace A199412.P11050420415846827826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A199412.P11050420415846827826

namespace A199412

/-- `∑[A026565(2*n)]+1` -/
def P11050420415846827826.Spec : Prop :=
  ∀ n, P11050420415846827826.a n = A199412 n

end A199412

/-! ## A199412.P375455345633740907

`3*A261399(n+1)-1`
-/

namespace A199412.P375455345633740907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A261399 (n + 1) - 1

end

end A199412.P375455345633740907

namespace A199412

/-- `3*A261399(n+1)-1` -/
def P375455345633740907.Spec : Prop :=
  ∀ n, P375455345633740907.a n = A199412 n

end A199412

/-! ## A199412.P16662632334360189823

`3*A329114(2*(n+1))+2`
-/

namespace A199412.P16662632334360189823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A329114 (2 * (n + 1)) + 2

end

end A199412.P16662632334360189823

namespace A199412

/-- `3*A329114(2*(n+1))+2` -/
def P16662632334360189823.Spec : Prop :=
  ∀ n, P16662632334360189823.a n = A199412 n

end A199412

/-! ## A199412.P4095120158257104069

`A000079(n)+∑[2^n*∑[3^n]]`
-/

namespace A199412.P4095120158257104069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A199412.P4095120158257104069

namespace A199412

/-- `A000079(n)+∑[2^n*∑[3^n]]` -/
def P4095120158257104069.Spec : Prop :=
  ∀ n, P4095120158257104069.a n = A199412 n

end A199412

/-! ## A199412.P14879388482240318681

`A016200(n)+A000079(n)`
-/

namespace A199412.P14879388482240318681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016200 n + A000079 n

end

end A199412.P14879388482240318681

namespace A199412

/-- `A016200(n)+A000079(n)` -/
def P14879388482240318681.Spec : Prop :=
  ∀ n, P14879388482240318681.a n = A199412 n

end A199412

/-! ## A199412.P3229606404014545240

`A000225(n)+A016200(n)+1`
-/

namespace A199412.P3229606404014545240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A016200 n + 1)

end

end A199412.P3229606404014545240

namespace A199412

/-- `A000225(n)+A016200(n)+1` -/
def P3229606404014545240.Spec : Prop :=
  ∀ n, P3229606404014545240.a n = A199412 n

end A199412

/-! ## A199412.P11563016281429244164

`∑[Δ[A003945(n)]*A000244(n)]`
-/

namespace A199412.P11563016281429244164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199412.P11563016281429244164

namespace A199412

/-- `∑[Δ[A003945(n)]*A000244(n)]` -/
def P11563016281429244164.Spec : Prop :=
  ∀ n, P11563016281429244164.a n = A199412 n

end A199412

/-! ## A199412.P12230120588688496879

`∑[A100852(A165157(2*n))]+1`
-/

namespace A199412.P12230120588688496879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 (A165157 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A199412.P12230120588688496879

namespace A199412

/-- `∑[A100852(A165157(2*n))]+1` -/
def P12230120588688496879.Spec : Prop :=
  ∀ n, P12230120588688496879.a n = A199412 n

end A199412

/-! ## A199412.P617866027342069651

`∑[A081341(n)+A026549(2*n)]`
-/

namespace A199412.P617866027342069651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081341 n + A026549 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199412.P617866027342069651

namespace A199412

/-- `∑[A081341(n)+A026549(2*n)]` -/
def P617866027342069651.Spec : Prop :=
  ∀ n, P617866027342069651.a n = A199412 n

end A199412

/-! ## A199412.P3956968319417205656

`A026549(2*n+1)-A329115(2*n+1)`
-/

namespace A199412.P3956968319417205656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * n + 1) - A329115 (2 * n + 1)

end

end A199412.P3956968319417205656

namespace A199412

/-- `A026549(2*n+1)-A329115(2*n+1)` -/
def P3956968319417205656.Spec : Prop :=
  ∀ n, P3956968319417205656.a n = A199412 n

end A199412

/-! ## A199412.P17571755761693526729

`A000400(n)+A000400(n)-A003464(n)`
-/

namespace A199412.P17571755761693526729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + (A000400 n - A003464 n)

end

end A199412.P17571755761693526729

namespace A199412

/-- `A000400(n)+A000400(n)-A003464(n)` -/
def P17571755761693526729.Spec : Prop :=
  ∀ n, P17571755761693526729.a n = A199412 n

end A199412

/-! ## A199412.P10812899863988441618

`a(n-1)+6^(n+1)/4` with `a(0)=2`
-/

namespace A199412.P10812899863988441618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (6 ^ (n + 1) : ℚ) / 4

end

end A199412.P10812899863988441618

namespace A199412

/-- `a(n-1)+6^(n+1)/4` -/
def P10812899863988441618.Spec : Prop :=
  ∀ n, P10812899863988441618.a n = (A199412 n : ℚ)

end A199412

/-!
# A199413: a(n) = 9*6^n+1.

The programs for A199413, the canonical program `A199413.P5056224015376817070` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199413 has offset 0).

The definition of A199413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*6^n+1` (program `A199413.P5056224015376817070`, by `A199413.P5056224015376817070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199413.P5056224015376817070

`9*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199413

/-- `9*6^n+1` -/
def P5056224015376817070.Spec : Prop :=
  ∀ n, (P5056224015376817070.a n : ℤ) = A199413 n

theorem P5056224015376817070.correct : P5056224015376817070.Spec := by
  intro n
  simp only [A199413]

end A199413

/-! ## A199413.P3224790559972032421

`ogf((10-15x)/(1-7x+6x^2))`
-/

namespace A199413.P3224790559972032421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -15] [1, -7, 6] n

end

end A199413.P3224790559972032421

namespace A199413

/-- `ogf((10-15x)/(1-7x+6x^2))` -/
def P3224790559972032421.Spec : Prop :=
  ∀ n, P3224790559972032421.a n = A199413 n

end A199413

/-! ## A199413.P6840887054649577412

`abs(5-6*a(n-1))` with `a(0)=10`
-/

namespace A199413.P6840887054649577412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |5 - 6 * a (n - 1)|

end

end A199413.P6840887054649577412

namespace A199413

/-- `abs(5-6*a(n-1))` -/
def P6840887054649577412.Spec : Prop :=
  ∀ n, P6840887054649577412.a n = A199413 n

end A199413

/-! ## A199413.P8320526950524167830

`6*(a(n-1)-5/6)` with `a(0)=10`
-/

namespace A199413.P8320526950524167830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  6 * (a (n - 1) - (5 : ℚ) / 6)

end

end A199413.P8320526950524167830

namespace A199413

/-- `6*(a(n-1)-5/6)` -/
def P8320526950524167830.Spec : Prop :=
  ∀ n, P8320526950524167830.a n = (A199413 n : ℚ)

theorem P8320526950524167830.correct : P8320526950524167830.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199413, Nat.add_sub_cancel, A199413.P8320526950524167830.a, A199413.P5056224015376817070.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199413, Nat.add_sub_cancel, A199413.P8320526950524167830.a, A199413.P5056224015376817070.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199413

/-! ## A199413.P11923578241080036416

`5*∑[6*a(n-1)]` with `a(0)=2, a(1)=9`
-/

namespace A199413.P11923578241080036416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199413.P11923578241080036416

namespace A199413

/-- `5*∑[6*a(n-1)]` -/
def P11923578241080036416.Spec : Prop :=
  ∀ n, (P11923578241080036416.a n : ℤ) = A199413 n

end A199413

/-! ## A199413.P10294732240819724551

`5*A199412(n)`
-/

namespace A199413.P10294732240819724551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A199412 n

end

end A199413.P10294732240819724551

namespace A199413

/-- `5*A199412(n)` -/
def P10294732240819724551.Spec : Prop :=
  ∀ n, P10294732240819724551.a n = A199413 n

end A199413

/-! ## A199413.P11812529026639254066

`Δ[A026534(2*n+1)+n]`
-/

namespace A199413.P11812529026639254066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026534 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199413.P11812529026639254066

namespace A199413

/-- `Δ[A026534(2*n+1)+n]` -/
def P11812529026639254066.Spec : Prop :=
  ∀ n, P11812529026639254066.a n = A199413 n

end A199413

/-! ## A199413.P17673171209092295444

`xor(A000051(n), A016129(n+1))`
-/

namespace A199413.P17673171209092295444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 n) (A016129 (n + 1))

end

end A199413.P17673171209092295444

namespace A199413

/-- `xor(A000051(n), A016129(n+1))` -/
def P17673171209092295444.Spec : Prop :=
  ∀ n, P17673171209092295444.a n = A199413 n

end A199413

/-! ## A199413.P4136135645872950927

`xor(A000079(n)+1, A016129(n+1))`
-/

namespace A199413.P4136135645872950927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n + 1) (A016129 (n + 1))

end

end A199413.P4136135645872950927

namespace A199413

/-- `xor(A000079(n)+1, A016129(n+1))` -/
def P4136135645872950927.Spec : Prop :=
  ∀ n, P4136135645872950927.a n = A199413 n

end A199413

/-! ## A199413.P4188811324787945809

`ceil(A199318(n+1)/2)`
-/

namespace A199413.P4188811324787945809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199318 (n + 1) : ℚ) / 2⌉

end

end A199413.P4188811324787945809

namespace A199413

/-- `ceil(A199318(n+1)/2)` -/
def P4188811324787945809.Spec : Prop :=
  ∀ n, P4188811324787945809.a n = A199413 n

end A199413

/-! ## A199413.P1251830419629767827

`(A198796(n+1)+3)/2`
-/

namespace A199413.P1251830419629767827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198796 (n + 1) + 3 : ℚ) / 2

end

end A199413.P1251830419629767827

namespace A199413

/-- `(A198796(n+1)+3)/2` -/
def P1251830419629767827.Spec : Prop :=
  ∀ n, P1251830419629767827.a n = (A199413 n : ℚ)

theorem P1251830419629767827.correct : P1251830419629767827.Spec := by
  intro n
  simp only [A199413, Nat.add_sub_cancel, A199413.P1251830419629767827.a, A199413.P5056224015376817070.a, A198796, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199413

/-!
# A199414: a(n) = 10*6^n+1.

The programs for A199414, the canonical program `A199414.P13741416716051852048` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199414 has offset 0).

The definition of A199414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*6^n+1` (program `A199414.P13741416716051852048`, by `A199414.P13741416716051852048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199414.P13741416716051852048

`10*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199414

/-- `10*6^n+1` -/
def P13741416716051852048.Spec : Prop :=
  ∀ n, (P13741416716051852048.a n : ℤ) = A199414 n

theorem P13741416716051852048.correct : P13741416716051852048.Spec := by
  intro n
  simp only [A199414]

end A199414

/-! ## A199414.P3610418056776798872

`or(1, 10*6^n)`
-/

namespace A199414.P3610418056776798872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 * 6 ^ n)

end

end A199414.P3610418056776798872

namespace A199414

/-- `or(1, 10*6^n)` -/
def P3610418056776798872.Spec : Prop :=
  ∀ n, (P3610418056776798872.a n : ℤ) = A199414 n

end A199414

/-! ## A199414.P8025969809251927177

`xor(1, 10*6^n)`
-/

namespace A199414.P8025969809251927177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * 6 ^ n)

end

end A199414.P8025969809251927177

namespace A199414

/-- `xor(1, 10*6^n)` -/
def P8025969809251927177.Spec : Prop :=
  ∀ n, (P8025969809251927177.a n : ℤ) = A199414 n

end A199414

/-! ## A199414.P16106113158067301921

`ogf((11-16x)/(1-7x+6x^2))`
-/

namespace A199414.P16106113158067301921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -16] [1, -7, 6] n

end

end A199414.P16106113158067301921

namespace A199414

/-- `ogf((11-16x)/(1-7x+6x^2))` -/
def P16106113158067301921.Spec : Prop :=
  ∀ n, P16106113158067301921.a n = A199414 n

end A199414

/-! ## A199414.P1681314421973775808

`abs(6*a(n-1)-5)` with `a(0)=11`
-/

namespace A199414.P1681314421973775808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  |6 * a (n - 1) - 5|

end

end A199414.P1681314421973775808

namespace A199414

/-- `abs(6*a(n-1)-5)` -/
def P1681314421973775808.Spec : Prop :=
  ∀ n, P1681314421973775808.a n = A199414 n

end A199414

/-! ## A199414.P4366141376783627373

`Δ[A199317(n)+n]`
-/

namespace A199414.P4366141376783627373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199317 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199414.P4366141376783627373

namespace A199414

/-- `Δ[A199317(n)+n]` -/
def P4366141376783627373.Spec : Prop :=
  ∀ n, P4366141376783627373.a n = A199414 n

theorem P4366141376783627373.correct : P4366141376783627373.Spec := by
  intro n
  simp only [A199414, Nat.add_sub_cancel, A199414.P4366141376783627373.f1, A199414.P4366141376783627373.a, A199414.P13741416716051852048.a, A199317, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199414

/-! ## A199414.P13436796011075229215

`Δ[A164559(n+1)+n]`
-/

namespace A199414.P13436796011075229215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164559 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199414.P13436796011075229215

namespace A199414

/-- `Δ[A164559(n+1)+n]` -/
def P13436796011075229215.Spec : Prop :=
  ∀ n, P13436796011075229215.a n = A199414 n

end A199414

/-! ## A199414.P3921686932134466042

`Δ[2*A000400(n)+n]`
-/

namespace A199414.P3921686932134466042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000400 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199414.P3921686932134466042

namespace A199414

/-- `Δ[2*A000400(n)+n]` -/
def P3921686932134466042.Spec : Prop :=
  ∀ n, P3921686932134466042.a n = A199414 n

theorem P3921686932134466042.correct : P3921686932134466042.Spec := by
  intro n
  simp only [A199414, Nat.add_sub_cancel, A199414.P3921686932134466042.f1, A199414.P3921686932134466042.a, A199414.P13741416716051852048.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199414

/-! ## A199414.P16387334280847434305

`Δ[2*A024062(n)+n]`
-/

namespace A199414.P16387334280847434305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024062 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199414.P16387334280847434305

namespace A199414

/-- `Δ[2*A024062(n)+n]` -/
def P16387334280847434305.Spec : Prop :=
  ∀ n, P16387334280847434305.a n = A199414 n

theorem P16387334280847434305.correct : P16387334280847434305.Spec := by
  intro n
  simp only [A199414, Nat.add_sub_cancel, A199414.P16387334280847434305.f1, A199414.P16387334280847434305.a, A199414.P13741416716051852048.a, A024062, A024062.P10607984613619163046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199414

/-! ## A199414.P12545119858396485010

`Δ[A026549(Δ[n²])+n]`
-/

namespace A199414.P12545119858396485010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199414.P12545119858396485010

namespace A199414

/-- `Δ[A026549(Δ[n²])+n]` -/
def P12545119858396485010.Spec : Prop :=
  ∀ n, P12545119858396485010.a n = A199414 n

end A199414

/-! ## A199414.P6210174569489636826

`Δ[2*6^n-A001489(n)]`
-/

namespace A199414.P6210174569489636826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 6 ^ n : ℤ) - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199414.P6210174569489636826

namespace A199414

/-- `Δ[2*6^n-A001489(n)]` -/
def P6210174569489636826.Spec : Prop :=
  ∀ n, P6210174569489636826.a n = A199414 n

theorem P6210174569489636826.correct : P6210174569489636826.Spec := by
  intro n
  simp only [A199414, Nat.add_sub_cancel, A199414.P6210174569489636826.f1, A199414.P6210174569489636826.a, A199414.P13741416716051852048.a, A001489, A001489.P15233530513763566776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199414

/-! ## A199414.P3795396138409571518

`xor(2, Δ[6*a(n-1)])/2` with `a(0)=4`
-/

namespace A199414.P3795396138409571518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A199414.P3795396138409571518

namespace A199414

/-- `xor(2, Δ[6*a(n-1)])/2` -/
def P3795396138409571518.Spec : Prop :=
  ∀ n, P3795396138409571518.a n = (A199414 n : ℚ)

end A199414

/-! ## A199414.P2081273908057356930

`(A199320(n+1)+2)/3`
-/

namespace A199414.P2081273908057356930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199320 (n + 1) + 2 : ℚ) / 3

end

end A199414.P2081273908057356930

namespace A199414

/-- `(A199320(n+1)+2)/3` -/
def P2081273908057356930.Spec : Prop :=
  ∀ n, P2081273908057356930.a n = (A199414 n : ℚ)

theorem P2081273908057356930.correct : P2081273908057356930.Spec := by
  intro n
  simp only [A199414, Nat.add_sub_cancel, A199414.P2081273908057356930.a, A199414.P13741416716051852048.a, A199320, A199320.P10342410003786426177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199414

/-!
# A199415: a(n) = 11*6^n+1.

The programs for A199415, the canonical program `A199415.P4482483949489340233` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199415 has offset 0).

The definition of A199415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*6^n+1` (program `A199415.P4482483949489340233`, by `A199415.P4482483949489340233.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199415.P4482483949489340233

`11*6^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199415

/-- `11*6^n+1` -/
def P4482483949489340233.Spec : Prop :=
  ∀ n, (P4482483949489340233.a n : ℤ) = A199415 n

theorem P4482483949489340233.correct : P4482483949489340233.Spec := by
  intro n
  simp only [A199415]

end A199415

/-! ## A199415.P14658862892764219344

`ogf((12-17x)/(1-7x+6x^2))`
-/

namespace A199415.P14658862892764219344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -17] [1, -7, 6] n

end

end A199415.P14658862892764219344

namespace A199415

/-- `ogf((12-17x)/(1-7x+6x^2))` -/
def P14658862892764219344.Spec : Prop :=
  ∀ n, P14658862892764219344.a n = A199415 n

end A199415

/-! ## A199415.P4201074453989767205

`∑[6*a(n-1)]` with `a(0)=12, a(1)=55`
-/

namespace A199415.P4201074453989767205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 55] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199415.P4201074453989767205

namespace A199415

/-- `∑[6*a(n-1)]` -/
def P4201074453989767205.Spec : Prop :=
  ∀ n, (P4201074453989767205.a n : ℤ) = A199415 n

end A199415

/-! ## A199415.P13225934113641441317

`Δ[A198849(n)+n]`
-/

namespace A199415.P13225934113641441317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198849 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199415.P13225934113641441317

namespace A199415

/-- `Δ[A198849(n)+n]` -/
def P13225934113641441317.Spec : Prop :=
  ∀ n, P13225934113641441317.a n = A199415 n

end A199415

/-! ## A199415.P12134391571666519601

`Δ[A062394(n)+∑[A062394(n)]]`
-/

namespace A199415.P12134391571666519601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199415.P12134391571666519601

namespace A199415

/-- `Δ[A062394(n)+∑[A062394(n)]]` -/
def P12134391571666519601.Spec : Prop :=
  ∀ n, P12134391571666519601.a n = A199415 n

end A199415

/-! ## A199415.P5669157243054067693

`(A196731(n+1)+A000079(n))/A000079(n)`
-/

namespace A199415.P5669157243054067693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196731 (n + 1) + A000079 n : ℚ) / (A000079 n : ℚ)

end

end A199415.P5669157243054067693

namespace A199415

/-- `(A196731(n+1)+A000079(n))/A000079(n)` -/
def P5669157243054067693.Spec : Prop :=
  ∀ n, P5669157243054067693.a n = (A199415 n : ℚ)

end A199415

/-! ## A199415.P1147459128225152056

`(A196731(n+1)+A011782(n+1))/A011782(n+1)`
-/

namespace A199415.P1147459128225152056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196731 (n + 1) + A011782 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A199415.P1147459128225152056

namespace A199415

/-- `(A196731(n+1)+A011782(n+1))/A011782(n+1)` -/
def P1147459128225152056.Spec : Prop :=
  ∀ n, P1147459128225152056.a n = (A199415 n : ℚ)

end A199415

/-! ## A199415.P5480940268382840930

`(A067406(n+1)+A000400(n))/A000400(n)`
-/

namespace A199415.P5480940268382840930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067406 (n + 1) + A000400 n : ℚ) / (A000400 n : ℚ)

end

end A199415.P5480940268382840930

namespace A199415

/-- `(A067406(n+1)+A000400(n))/A000400(n)` -/
def P5480940268382840930.Spec : Prop :=
  ∀ n, P5480940268382840930.a n = (A199415 n : ℚ)

end A199415

/-!
# A199416: a(n) = 2*7^n+1.

The programs for A199416, the canonical program `A199416.P9418973205687149069` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199416 has offset 0).

The definition of A199416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*7^n+1` (program `A199416.P9418973205687149069`, by `A199416.P9418973205687149069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199416.P9418973205687149069

`2*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199416

/-- `2*7^n+1` -/
def P9418973205687149069.Spec : Prop :=
  ∀ n, (P9418973205687149069.a n : ℤ) = A199416 n

theorem P9418973205687149069.correct : P9418973205687149069.Spec := by
  intro n
  simp only [A199416]

end A199416

/-! ## A199416.P4436482262309069655

`3*A083076(n)`
-/

namespace A199416.P4436482262309069655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083076 n

end

end A199416.P4436482262309069655

namespace A199416

/-- `3*A083076(n)` -/
def P4436482262309069655.Spec : Prop :=
  ∀ n, P4436482262309069655.a n = A199416 n

end A199416

/-! ## A199416.P7737031568069558046

`or(1, 2*7^n)`
-/

namespace A199416.P7737031568069558046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 7 ^ n)

end

end A199416.P7737031568069558046

namespace A199416

/-- `or(1, 2*7^n)` -/
def P7737031568069558046.Spec : Prop :=
  ∀ n, (P7737031568069558046.a n : ℤ) = A199416 n

end A199416

/-! ## A199416.P18181526578522447150

`xor(1, 2*7^n)`
-/

namespace A199416.P18181526578522447150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 7 ^ n)

end

end A199416.P18181526578522447150

namespace A199416

/-- `xor(1, 2*7^n)` -/
def P18181526578522447150.Spec : Prop :=
  ∀ n, (P18181526578522447150.a n : ℤ) = A199416 n

end A199416

/-! ## A199416.P13518405201329995264

`ogf((3-9x)/(1-8x+7x^2))`
-/

namespace A199416.P13518405201329995264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9] [1, -8, 7] n

end

end A199416.P13518405201329995264

namespace A199416

/-- `ogf((3-9x)/(1-8x+7x^2))` -/
def P13518405201329995264.Spec : Prop :=
  ∀ n, P13518405201329995264.a n = A199416 n

end A199416

/-! ## A199416.P18382590612996542100

`∑[7*a(n-1)]` with `a(0)=3, a(1)=12`
-/

namespace A199416.P18382590612996542100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 12] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199416.P18382590612996542100

namespace A199416

/-- `∑[7*a(n-1)]` -/
def P18382590612996542100.Spec : Prop :=
  ∀ n, (P18382590612996542100.a n : ℤ) = A199416 n

end A199416

/-! ## A199416.P6774816223468328607

`abs(3-lcm(2, 7^n+2))`
-/

namespace A199416.P6774816223468328607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (Nat.lcm 2 (7 ^ n + 2) : ℤ)|

end

end A199416.P6774816223468328607

namespace A199416

/-- `abs(3-lcm(2, 7^n+2))` -/
def P6774816223468328607.Spec : Prop :=
  ∀ n, P6774816223468328607.a n = A199416 n

end A199416

/-! ## A199416.P1962305364377210887

`abs(6-7*a(n-1))` with `a(0)=3`
-/

namespace A199416.P1962305364377210887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199416.P1962305364377210887

namespace A199416

/-- `abs(6-7*a(n-1))` -/
def P1962305364377210887.Spec : Prop :=
  ∀ n, P1962305364377210887.a n = A199416 n

end A199416

/-! ## A199416.P6554207111851977069

`floor(7*(a(n-1)-4/5))` with `a(0)=3`
-/

namespace A199416.P6554207111851977069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊7 * ((a (n - 1) : ℚ) - (4 : ℚ) / 5)⌋

end

end A199416.P6554207111851977069

namespace A199416

/-- `floor(7*(a(n-1)-4/5))` -/
def P6554207111851977069.Spec : Prop :=
  ∀ n, P6554207111851977069.a n = A199416 n

end A199416

/-! ## A199416.P16386733365705440813

`(7-6/a(n-1))*a(n-1)` with `a(0)=3`
-/

namespace A199416.P16386733365705440813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (7 - 6 / a (n - 1)) * a (n - 1)

end

end A199416.P16386733365705440813

namespace A199416

/-- `(7-6/a(n-1))*a(n-1)` -/
def P16386733365705440813.Spec : Prop :=
  ∀ n, P16386733365705440813.a n = (A199416 n : ℚ)

end A199416

/-! ## A199416.P2041623831326756243

`floor(a(n-1)+6*(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199416.P2041623831326756243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 6 * (a (n - 1) - 1)

end

end A199416.P2041623831326756243

namespace A199416

/-- `floor(a(n-1)+6*(a(n-1)-1))` -/
def P2041623831326756243.Spec : Prop :=
  ∀ n, P2041623831326756243.a n = A199416 n

theorem P2041623831326756243.correct : P2041623831326756243.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199416, Nat.add_sub_cancel, A199416.P2041623831326756243.a, A199416.P9418973205687149069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199416, Nat.add_sub_cancel, A199416.P2041623831326756243.a, A199416.P9418973205687149069.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199416

/-! ## A199416.P5164033758551506133

`floor(a(n-1)-6*(1-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199416.P5164033758551506133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 6 * (1 - a (n - 1))

end

end A199416.P5164033758551506133

namespace A199416

/-- `floor(a(n-1)-6*(1-a(n-1)))` -/
def P5164033758551506133.Spec : Prop :=
  ∀ n, P5164033758551506133.a n = A199416 n

theorem P5164033758551506133.correct : P5164033758551506133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199416, Nat.add_sub_cancel, A199416.P5164033758551506133.a, A199416.P9418973205687149069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199416, Nat.add_sub_cancel, A199416.P5164033758551506133.a, A199416.P9418973205687149069.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199416

/-! ## A199416.P3361583559812357284

`∑[A328778(n+1)]`
-/

namespace A199416.P3361583559812357284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199416.P3361583559812357284

namespace A199416

/-- `∑[A328778(n+1)]` -/
def P3361583559812357284.Spec : Prop :=
  ∀ n, P3361583559812357284.a n = A199416 n

end A199416

/-! ## A199416.P14102869543423292684

`∑[3*A270471(n)]`
-/

namespace A199416.P14102869543423292684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A270471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199416.P14102869543423292684

namespace A199416

/-- `∑[3*A270471(n)]` -/
def P14102869543423292684.Spec : Prop :=
  ∀ n, P14102869543423292684.a n = A199416 n

end A199416

/-! ## A199416.P7137120997222068570

`(A199419(n)+1)/2`
-/

namespace A199416.P7137120997222068570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199419 n + 1 : ℚ) / 2

end

end A199416.P7137120997222068570

namespace A199416

/-- `(A199419(n)+1)/2` -/
def P7137120997222068570.Spec : Prop :=
  ∀ n, P7137120997222068570.a n = (A199416 n : ℚ)

theorem P7137120997222068570.correct : P7137120997222068570.Spec := by
  intro n
  simp only [A199416, Nat.add_sub_cancel, A199416.P7137120997222068570.a, A199416.P9418973205687149069.a, A199419, A199419.P2685936194755919386.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199416

/-! ## A199416.P12548614159047040360

`(A198686(n)+3)/2`
-/

namespace A199416.P12548614159047040360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198686 n + 3 : ℚ) / 2

end

end A199416.P12548614159047040360

namespace A199416

/-- `(A198686(n)+3)/2` -/
def P12548614159047040360.Spec : Prop :=
  ∀ n, P12548614159047040360.a n = (A199416 n : ℚ)

theorem P12548614159047040360.correct : P12548614159047040360.Spec := by
  intro n
  simp only [A199416, Nat.add_sub_cancel, A199416.P12548614159047040360.a, A199416.P9418973205687149069.a, A198686, A198686.P16801955039865335109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199416

/-! ## A199416.P13959516451616289976

`(A199483(n)+2)/3`
-/

namespace A199416.P13959516451616289976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199483 n + 2 : ℚ) / 3

end

end A199416.P13959516451616289976

namespace A199416

/-- `(A199483(n)+2)/3` -/
def P13959516451616289976.Spec : Prop :=
  ∀ n, P13959516451616289976.a n = (A199416 n : ℚ)

theorem P13959516451616289976.correct : P13959516451616289976.Spec := by
  intro n
  simp only [A199416, Nat.add_sub_cancel, A199416.P13959516451616289976.a, A199416.P9418973205687149069.a, A199483, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199416

/-! ## A199416.P16666345854467910936

`(A198688(n)+4)/3`
-/

namespace A199416.P16666345854467910936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198688 n + 4 : ℚ) / 3

end

end A199416.P16666345854467910936

namespace A199416

/-- `(A198688(n)+4)/3` -/
def P16666345854467910936.Spec : Prop :=
  ∀ n, P16666345854467910936.a n = (A199416 n : ℚ)

theorem P16666345854467910936.correct : P16666345854467910936.Spec := by
  intro n
  simp only [A199416, Nat.add_sub_cancel, A199416.P16666345854467910936.a, A199416.P9418973205687149069.a, A198688, A198688.P14860372083485364830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199416

/-! ## A199416.P7619839101296842275

`(A199485(n)+3)/4`
-/

namespace A199416.P7619839101296842275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199485 n + 3 : ℚ) / 4

end

end A199416.P7619839101296842275

namespace A199416

/-- `(A199485(n)+3)/4` -/
def P7619839101296842275.Spec : Prop :=
  ∀ n, P7619839101296842275.a n = (A199416 n : ℚ)

theorem P7619839101296842275.correct : P7619839101296842275.Spec := by
  intro n
  simp only [A199416, Nat.add_sub_cancel, A199416.P7619839101296842275.a, A199416.P9418973205687149069.a, A199485, A199485.P2526462473916779298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199416

/-! ## A199416.P8996223477075997339

`(A198689(n)+5)/4`
-/

namespace A199416.P8996223477075997339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198689 n + 5 : ℚ) / 4

end

end A199416.P8996223477075997339

namespace A199416

/-- `(A198689(n)+5)/4` -/
def P8996223477075997339.Spec : Prop :=
  ∀ n, P8996223477075997339.a n = (A199416 n : ℚ)

theorem P8996223477075997339.correct : P8996223477075997339.Spec := by
  intro n
  simp only [A199416, Nat.add_sub_cancel, A199416.P8996223477075997339.a, A199416.P9418973205687149069.a, A198689, A198689.P6892318393002689499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199416

/-!
# A199417: a(n) = (3*7^n+1)/2.

The programs for A199417, the canonical program `A199417.P4796294185682153727` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199417 has offset 0).

The definition of A199417 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*7^n+1)/2` (program `A199417.P8590239415825792835`, by `A199417.P8590239415825792835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199417.P4796294185682153727

`7*a(n-1)-3` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199417

/-- `7*a(n-1)-3` -/
def P4796294185682153727.Spec : Prop :=
  ∀ n, P4796294185682153727.a n = A199417 n

theorem P4796294185682153727.correct : P4796294185682153727.Spec := by
  intro n
  simp only [A199417]

end A199417

/-! ## A199417.P8590239415825792835

`(3*7^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199417.P8590239415825792835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 7 ^ n + 1 : ℚ) / 2

end

end A199417.P8590239415825792835

namespace A199417

/-- `(3*7^n+1)/2` -/
def P8590239415825792835.Spec : Prop :=
  ∀ n, P8590239415825792835.a n = (A199417 n : ℚ)

theorem P8590239415825792835.correct : P8590239415825792835.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199417, Nat.add_sub_cancel, A199417.P8590239415825792835.a, A199417.P4796294185682153727.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199417, Nat.add_sub_cancel, A199417.P8590239415825792835.a, A199417.P4796294185682153727.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199417

/-! ## A199417.P9690274838078432525

`ogf((2-5x)/(1-8x+7x^2))`
-/

namespace A199417.P9690274838078432525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -8, 7] n

end

end A199417.P9690274838078432525

namespace A199417

/-- `ogf((2-5x)/(1-8x+7x^2))` -/
def P9690274838078432525.Spec : Prop :=
  ∀ n, P9690274838078432525.a n = A199417 n

end A199417

/-! ## A199417.P7856734403070004582

`lcm(7, a(n-1))-3` with `a(0)=2`
-/

namespace A199417.P7856734403070004582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 3

end

end A199417.P7856734403070004582

namespace A199417

/-- `lcm(7, a(n-1))-3` -/
def P7856734403070004582.Spec : Prop :=
  ∀ n, P7856734403070004582.a n = A199417 n

end A199417

/-! ## A199417.P7826369363545432013

`9*∑[7^n]%(7^n)+2`
-/

namespace A199417.P7826369363545432013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 7 ^ n) + 2

end

end A199417.P7826369363545432013

namespace A199417

/-- `9*∑[7^n]%(7^n)+2` -/
def P7826369363545432013.Spec : Prop :=
  ∀ n, (P7826369363545432013.a n : ℤ) = A199417 n

end A199417

/-! ## A199417.P6819742765078312318

`a(n-1)/(1-6/7)-3` with `a(0)=2`
-/

namespace A199417.P6819742765078312318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 3

end

end A199417.P6819742765078312318

namespace A199417

/-- `a(n-1)/(1-6/7)-3` -/
def P6819742765078312318.Spec : Prop :=
  ∀ n, P6819742765078312318.a n = (A199417 n : ℚ)

end A199417

/-! ## A199417.P12713375646983689326

`Δ[A244975(n)]+1`
-/

namespace A199417.P12713375646983689326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A199417.P12713375646983689326

namespace A199417

/-- `Δ[A244975(n)]+1` -/
def P12713375646983689326.Spec : Prop :=
  ∀ n, P12713375646983689326.a n = A199417 n

end A199417

/-! ## A199417.P7165695278227300753

`3*A034494(n)-1`
-/

namespace A199417.P7165695278227300753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034494 n - 1

end

end A199417.P7165695278227300753

namespace A199417

/-- `3*A034494(n)-1` -/
def P7165695278227300753.Spec : Prop :=
  ∀ n, P7165695278227300753.a n = A199417 n

end A199417

/-! ## A199417.P11076674882361840752

`3*A120741(n)+2`
-/

namespace A199417.P11076674882361840752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A120741 n + 2

end

end A199417.P11076674882361840752

namespace A199417

/-- `3*A120741(n)+2` -/
def P11076674882361840752.Spec : Prop :=
  ∀ n, P11076674882361840752.a n = A199417 n

end A199417

/-! ## A199417.P7466900964120443542

`A297180(3*n+2)`
-/

namespace A199417.P7466900964120443542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * n + 2)

end

end A199417.P7466900964120443542

namespace A199417

/-- `A297180(3*n+2)` -/
def P7466900964120443542.Spec : Prop :=
  ∀ n, P7466900964120443542.a n = A199417 n

end A199417

/-! ## A199417.P6651333912445092787

`9*A023000(n)+2`
-/

namespace A199417.P6651333912445092787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A023000 n + 2

end

end A199417.P6651333912445092787

namespace A199417

/-- `9*A023000(n)+2` -/
def P6651333912445092787.Spec : Prop :=
  ∀ n, P6651333912445092787.a n = A199417 n

end A199417

/-! ## A199417.P3854475181996334313

`A120741(n)+A034491(n)`
-/

namespace A199417.P3854475181996334313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + A034491 n

end

end A199417.P3854475181996334313

namespace A199417

/-- `A120741(n)+A034491(n)` -/
def P3854475181996334313.Spec : Prop :=
  ∀ n, P3854475181996334313.a n = A199417 n

end A199417

/-! ## A199417.P12470545544946560824

`A083076(n)+A083067(n)`
-/

namespace A199417.P12470545544946560824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + A083067 n

end

end A199417.P12470545544946560824

namespace A199417

/-- `A083076(n)+A083067(n)` -/
def P12470545544946560824.Spec : Prop :=
  ∀ n, P12470545544946560824.a n = A199417 n

end A199417

/-! ## A199417.P4725514077573009364

`A000420(n)+A120741(n)+1`
-/

namespace A199417.P4725514077573009364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + (A120741 n + 1)

end

end A199417.P4725514077573009364

namespace A199417

/-- `A000420(n)+A120741(n)+1` -/
def P4725514077573009364.Spec : Prop :=
  ∀ n, P4725514077573009364.a n = A199417 n

end A199417

/-! ## A199417.P15308230816456253338

`A034494(n)+A226199(n)-n`
-/

namespace A199417.P15308230816456253338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n + (A226199 n - (n : ℤ))

end

end A199417.P15308230816456253338

namespace A199417

/-- `A034494(n)+A226199(n)-n` -/
def P15308230816456253338.Spec : Prop :=
  ∀ n, P15308230816456253338.a n = A199417 n

end A199417

/-! ## A199417.P15883805595959367907

`A000035(n)+Δ[2*A015552(n)]`
-/

namespace A199417.P15883805595959367907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (f1 (n + 1) - f1 n)

end

end A199417.P15883805595959367907

namespace A199417

/-- `A000035(n)+Δ[2*A015552(n)]` -/
def P15883805595959367907.Spec : Prop :=
  ∀ n, P15883805595959367907.a n = A199417 n

end A199417

/-! ## A199417.P16827240648281639775

`round(A169634(n)/2)`
-/

namespace A199417.P16827240648281639775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A169634 n : ℚ) / 2)

end

end A199417.P16827240648281639775

namespace A199417

/-- `round(A169634(n)/2)` -/
def P16827240648281639775.Spec : Prop :=
  ∀ n, P16827240648281639775.a n = A199417 n

end A199417

/-! ## A199417.P18434062036909034517

`A198647(n)/2+1`
-/

namespace A199417.P18434062036909034517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198647 n : ℚ) / 2 + 1

end

end A199417.P18434062036909034517

namespace A199417

/-- `A198647(n)/2+1` -/
def P18434062036909034517.Spec : Prop :=
  ∀ n, P18434062036909034517.a n = (A199417 n : ℚ)

theorem P18434062036909034517.correct : P18434062036909034517.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199417, Nat.add_sub_cancel, A199417.P18434062036909034517.a, A199417.P4796294185682153727.a, A198647, A198647.P10615548625283556023.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199417, Nat.add_sub_cancel, A199417.P18434062036909034517.a, A199417.P4796294185682153727.a, A198647, A198647.P10615548625283556023.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199417

/-!
# A199418: a(n) = 3*7^n+1.

The programs for A199418, the canonical program `A199418.P15994950680946096815` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199418 has offset 0).

The definition of A199418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*7^n+1` (program `A199418.P15994950680946096815`, by `A199418.P15994950680946096815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199418.P15994950680946096815

`3*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199418

/-- `3*7^n+1` -/
def P15994950680946096815.Spec : Prop :=
  ∀ n, (P15994950680946096815.a n : ℤ) = A199418 n

theorem P15994950680946096815.correct : P15994950680946096815.Spec := by
  intro n
  simp only [A199418]

end A199418

/-! ## A199418.P3776719785985784412

`ogf((4-10x)/(1-8x+7x^2))`
-/

namespace A199418.P3776719785985784412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -10] [1, -8, 7] n

end

end A199418.P3776719785985784412

namespace A199418

/-- `ogf((4-10x)/(1-8x+7x^2))` -/
def P3776719785985784412.Spec : Prop :=
  ∀ n, P3776719785985784412.a n = A199418 n

end A199418

/-! ## A199418.P1480711503209252818

`∑[7*a(n-1)]` with `a(0)=4, a(1)=18`
-/

namespace A199418.P1480711503209252818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 18] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199418.P1480711503209252818

namespace A199418

/-- `∑[7*a(n-1)]` -/
def P1480711503209252818.Spec : Prop :=
  ∀ n, (P1480711503209252818.a n : ℤ) = A199418 n

end A199418

/-! ## A199418.P11594138463427852034

`abs(6-7*a(n-1))` with `a(0)=4`
-/

namespace A199418.P11594138463427852034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199418.P11594138463427852034

namespace A199418

/-- `abs(6-7*a(n-1))` -/
def P11594138463427852034.Spec : Prop :=
  ∀ n, P11594138463427852034.a n = A199418 n

end A199418

/-! ## A199418.P9265445892194948205

`floor(7*(a(n-1)-5/6))` with `a(0)=4`
-/

namespace A199418.P9265445892194948205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊7 * ((a (n - 1) : ℚ) - (5 : ℚ) / 6)⌋

end

end A199418.P9265445892194948205

namespace A199418

/-- `floor(7*(a(n-1)-5/6))` -/
def P9265445892194948205.Spec : Prop :=
  ∀ n, P9265445892194948205.a n = A199418 n

end A199418

/-! ## A199418.P6031941169880883578

`(7-6/a(n-1))*a(n-1)` with `a(0)=4`
-/

namespace A199418.P6031941169880883578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (7 - 6 / a (n - 1)) * a (n - 1)

end

end A199418.P6031941169880883578

namespace A199418

/-- `(7-6/a(n-1))*a(n-1)` -/
def P6031941169880883578.Spec : Prop :=
  ∀ n, P6031941169880883578.a n = (A199418 n : ℚ)

end A199418

/-! ## A199418.P8782065819864721331

`floor(a(n-1)+6*(a(n-1)-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199418.P8782065819864721331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 6 * (a (n - 1) - 1)

end

end A199418.P8782065819864721331

namespace A199418

/-- `floor(a(n-1)+6*(a(n-1)-1))` -/
def P8782065819864721331.Spec : Prop :=
  ∀ n, P8782065819864721331.a n = A199418 n

theorem P8782065819864721331.correct : P8782065819864721331.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199418, Nat.add_sub_cancel, A199418.P8782065819864721331.a, A199418.P15994950680946096815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199418, Nat.add_sub_cancel, A199418.P8782065819864721331.a, A199418.P15994950680946096815.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199418

/-! ## A199418.P17068494143347875003

`floor(a(n-1)-6*(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199418.P17068494143347875003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - 6 * (1 - a (n - 1))

end

end A199418.P17068494143347875003

namespace A199418

/-- `floor(a(n-1)-6*(1-a(n-1)))` -/
def P17068494143347875003.Spec : Prop :=
  ∀ n, P17068494143347875003.a n = A199418 n

theorem P17068494143347875003.correct : P17068494143347875003.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199418, Nat.add_sub_cancel, A199418.P17068494143347875003.a, A199418.P15994950680946096815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199418, Nat.add_sub_cancel, A199418.P17068494143347875003.a, A199418.P15994950680946096815.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199418

/-! ## A199418.P1278490602059847266

`2*A199417(n)`
-/

namespace A199418.P1278490602059847266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199417 n

end

end A199418.P1278490602059847266

namespace A199418

/-- `2*A199417(n)` -/
def P1278490602059847266.Spec : Prop :=
  ∀ n, P1278490602059847266.a n = A199418 n

end A199418

/-! ## A199418.P607154790233844049

`Δ[A034494(n)+n]`
-/

namespace A199418.P607154790233844049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199418.P607154790233844049

namespace A199418

/-- `Δ[A034494(n)+n]` -/
def P607154790233844049.Spec : Prop :=
  ∀ n, P607154790233844049.a n = A199418 n

end A199418

/-! ## A199418.P10240946423023767648

`(A199483(n)+1)/2`
-/

namespace A199418.P10240946423023767648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199483 n + 1 : ℚ) / 2

end

end A199418.P10240946423023767648

namespace A199418

/-- `(A199483(n)+1)/2` -/
def P10240946423023767648.Spec : Prop :=
  ∀ n, P10240946423023767648.a n = (A199418 n : ℚ)

theorem P10240946423023767648.correct : P10240946423023767648.Spec := by
  intro n
  simp only [A199418, Nat.add_sub_cancel, A199418.P10240946423023767648.a, A199418.P15994950680946096815.a, A199483, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199418

/-! ## A199418.P710935557150740855

`(A198688(n)+3)/2`
-/

namespace A199418.P710935557150740855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198688 n + 3 : ℚ) / 2

end

end A199418.P710935557150740855

namespace A199418

/-- `(A198688(n)+3)/2` -/
def P710935557150740855.Spec : Prop :=
  ∀ n, P710935557150740855.a n = (A199418 n : ℚ)

theorem P710935557150740855.correct : P710935557150740855.Spec := by
  intro n
  simp only [A199418, Nat.add_sub_cancel, A199418.P710935557150740855.a, A199418.P15994950680946096815.a, A198688, A198688.P14860372083485364830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199418

/-! ## A199418.P6590467494326950665

`(A199487(n)+2)/3`
-/

namespace A199418.P6590467494326950665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199487 n + 2 : ℚ) / 3

end

end A199418.P6590467494326950665

namespace A199418

/-- `(A199487(n)+2)/3` -/
def P6590467494326950665.Spec : Prop :=
  ∀ n, P6590467494326950665.a n = (A199418 n : ℚ)

theorem P6590467494326950665.correct : P6590467494326950665.Spec := by
  intro n
  simp only [A199418, Nat.add_sub_cancel, A199418.P6590467494326950665.a, A199418.P15994950680946096815.a, A199487, A199487.P11743803444286523681.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199418

/-! ## A199418.P3863686250776687839

`(A198690(n)+4)/3`
-/

namespace A199418.P3863686250776687839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198690 n + 4 : ℚ) / 3

end

end A199418.P3863686250776687839

namespace A199418

/-- `(A198690(n)+4)/3` -/
def P3863686250776687839.Spec : Prop :=
  ∀ n, P3863686250776687839.a n = (A199418 n : ℚ)

theorem P3863686250776687839.correct : P3863686250776687839.Spec := by
  intro n
  simp only [A199418, Nat.add_sub_cancel, A199418.P3863686250776687839.a, A199418.P15994950680946096815.a, A198690, A198690.P10161993839040080843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199418

/-! ## A199418.P8505556004788917567

`2*(Δ[A244975(n)]+1)`
-/

namespace A199418.P8505556004788917567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A199418.P8505556004788917567

namespace A199418

/-- `2*(Δ[A244975(n)]+1)` -/
def P8505556004788917567.Spec : Prop :=
  ∀ n, P8505556004788917567.a n = A199418 n

end A199418

/-! ## A199418.P14775205347423124909

`(Δ[A226199(n)]+1)/2`
-/

namespace A199418.P14775205347423124909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226199 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A199418.P14775205347423124909

namespace A199418

/-- `(Δ[A226199(n)]+1)/2` -/
def P14775205347423124909.Spec : Prop :=
  ∀ n, P14775205347423124909.a n = (A199418 n : ℚ)

theorem P14775205347423124909.correct : P14775205347423124909.Spec := by
  intro n
  simp only [A199418, Nat.add_sub_cancel, A199418.P14775205347423124909.f1, A199418.P14775205347423124909.a, A199418.P15994950680946096815.a, A226199, A226199.P3513308682891619503.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199418

/-! ## A199418.P14197796771219011867

`(Δ[A000420(n)]+2)/2`
-/

namespace A199418.P14197796771219011867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 2

end

end A199418.P14197796771219011867

namespace A199418

/-- `(Δ[A000420(n)]+2)/2` -/
def P14197796771219011867.Spec : Prop :=
  ∀ n, P14197796771219011867.a n = (A199418 n : ℚ)

theorem P14197796771219011867.correct : P14197796771219011867.Spec := by
  intro n
  simp only [A199418, Nat.add_sub_cancel, A199418.P14197796771219011867.f1, A199418.P14197796771219011867.a, A199418.P15994950680946096815.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199418

/-! ## A199418.P15021223538112933276

`floor(3*(A208704(n+1)+2)/4)`
-/

namespace A199418.P15021223538112933276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (A208704 (n + 1) + 2) : ℚ) / 4⌋

end

end A199418.P15021223538112933276

namespace A199418

/-- `floor(3*(A208704(n+1)+2)/4)` -/
def P15021223538112933276.Spec : Prop :=
  ∀ n, P15021223538112933276.a n = A199418 n

end A199418

/-! ## A199418.P5798061915840694216

`Δ[A226199(n)-A034494(n)]`
-/

namespace A199418.P5798061915840694216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226199 n - A034494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199418.P5798061915840694216

namespace A199418

/-- `Δ[A226199(n)-A034494(n)]` -/
def P5798061915840694216.Spec : Prop :=
  ∀ n, P5798061915840694216.a n = A199418 n

end A199418

/-! ## A199418.P11452462664958450946

`2*A297180(A016777(n)+1)`
-/

namespace A199418.P11452462664958450946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297180 (A016777 n + 1).toNat

end

end A199418.P11452462664958450946

namespace A199418

/-- `2*A297180(A016777(n)+1)` -/
def P11452462664958450946.Spec : Prop :=
  ∀ n, P11452462664958450946.a n = A199418 n

end A199418

/-!
# A199419: a(n) = 4*7^n+1.

The programs for A199419, the canonical program `A199419.P2685936194755919386` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199419 has offset 0).

The definition of A199419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*7^n+1` (program `A199419.P2685936194755919386`, by `A199419.P2685936194755919386.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199419.P2685936194755919386

`4*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199419

/-- `4*7^n+1` -/
def P2685936194755919386.Spec : Prop :=
  ∀ n, (P2685936194755919386.a n : ℤ) = A199419 n

theorem P2685936194755919386.correct : P2685936194755919386.Spec := by
  intro n
  simp only [A199419]

end A199419

/-! ## A199419.P5449101049827367792

`or(1, 4*7^n)`
-/

namespace A199419.P5449101049827367792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * 7 ^ n)

end

end A199419.P5449101049827367792

namespace A199419

/-- `or(1, 4*7^n)` -/
def P5449101049827367792.Spec : Prop :=
  ∀ n, (P5449101049827367792.a n : ℤ) = A199419 n

end A199419

/-! ## A199419.P7011594892431103791

`xor(1, 4*7^n)`
-/

namespace A199419.P7011594892431103791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * 7 ^ n)

end

end A199419.P7011594892431103791

namespace A199419

/-- `xor(1, 4*7^n)` -/
def P7011594892431103791.Spec : Prop :=
  ∀ n, (P7011594892431103791.a n : ℤ) = A199419 n

end A199419

/-! ## A199419.P13843518343927695401

`ogf((5-11x)/(1-8x+7x^2))`
-/

namespace A199419.P13843518343927695401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -11] [1, -8, 7] n

end

end A199419.P13843518343927695401

namespace A199419

/-- `ogf((5-11x)/(1-8x+7x^2))` -/
def P13843518343927695401.Spec : Prop :=
  ∀ n, P13843518343927695401.a n = A199419 n

end A199419

/-! ## A199419.P3004257569545502060

`abs(6-7*a(n-1))` with `a(0)=5`
-/

namespace A199419.P3004257569545502060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199419.P3004257569545502060

namespace A199419

/-- `abs(6-7*a(n-1))` -/
def P3004257569545502060.Spec : Prop :=
  ∀ n, P3004257569545502060.a n = A199419 n

end A199419

/-! ## A199419.P6868316547387600877

`floor(7*(a(n-1)-5/6))` with `a(0)=5`
-/

namespace A199419.P6868316547387600877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊7 * ((a (n - 1) : ℚ) - (5 : ℚ) / 6)⌋

end

end A199419.P6868316547387600877

namespace A199419

/-- `floor(7*(a(n-1)-5/6))` -/
def P6868316547387600877.Spec : Prop :=
  ∀ n, P6868316547387600877.a n = A199419 n

end A199419

/-! ## A199419.P2138616398450659141

`(7-6/a(n-1))*a(n-1)` with `a(0)=5`
-/

namespace A199419.P2138616398450659141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (7 - 6 / a (n - 1)) * a (n - 1)

end

end A199419.P2138616398450659141

namespace A199419

/-- `(7-6/a(n-1))*a(n-1)` -/
def P2138616398450659141.Spec : Prop :=
  ∀ n, P2138616398450659141.a n = (A199419 n : ℚ)

end A199419

/-! ## A199419.P12697313273216672289

`floor(a(n-1)+6*(a(n-1)-1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199419.P12697313273216672289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 6 * (a (n - 1) - 1)

end

end A199419.P12697313273216672289

namespace A199419

/-- `floor(a(n-1)+6*(a(n-1)-1))` -/
def P12697313273216672289.Spec : Prop :=
  ∀ n, P12697313273216672289.a n = A199419 n

theorem P12697313273216672289.correct : P12697313273216672289.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199419, Nat.add_sub_cancel, A199419.P12697313273216672289.a, A199419.P2685936194755919386.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199419, Nat.add_sub_cancel, A199419.P12697313273216672289.a, A199419.P2685936194755919386.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199419

/-! ## A199419.P13079830080809721086

`floor(a(n-1)-6*(1-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A199419.P13079830080809721086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - 6 * (1 - a (n - 1))

end

end A199419.P13079830080809721086

namespace A199419

/-- `floor(a(n-1)-6*(1-a(n-1)))` -/
def P13079830080809721086.Spec : Prop :=
  ∀ n, P13079830080809721086.a n = A199419 n

theorem P13079830080809721086.correct : P13079830080809721086.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199419, Nat.add_sub_cancel, A199419.P13079830080809721086.a, A199419.P2685936194755919386.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199419, Nat.add_sub_cancel, A199419.P13079830080809721086.a, A199419.P2685936194755919386.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199419

/-! ## A199419.P7451377774510406451

`(A199485(n)+1)/2`
-/

namespace A199419.P7451377774510406451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199485 n + 1 : ℚ) / 2

end

end A199419.P7451377774510406451

namespace A199419

/-- `(A199485(n)+1)/2` -/
def P7451377774510406451.Spec : Prop :=
  ∀ n, P7451377774510406451.a n = (A199419 n : ℚ)

theorem P7451377774510406451.correct : P7451377774510406451.Spec := by
  intro n
  simp only [A199419, Nat.add_sub_cancel, A199419.P7451377774510406451.a, A199419.P2685936194755919386.a, A199485, A199485.P2526462473916779298.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199419

/-! ## A199419.P8955985331125546448

`(A198689(n)+3)/2`
-/

namespace A199419.P8955985331125546448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198689 n + 3 : ℚ) / 2

end

end A199419.P8955985331125546448

namespace A199419

/-- `(A198689(n)+3)/2` -/
def P8955985331125546448.Spec : Prop :=
  ∀ n, P8955985331125546448.a n = (A199419 n : ℚ)

theorem P8955985331125546448.correct : P8955985331125546448.Spec := by
  intro n
  simp only [A199419, Nat.add_sub_cancel, A199419.P8955985331125546448.a, A199419.P2685936194755919386.a, A198689, A198689.P6892318393002689499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199419

/-! ## A199419.P7081591252386171883

`(Δ[A238275(n)]+2)/2`
-/

namespace A199419.P7081591252386171883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238275 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 2

end

end A199419.P7081591252386171883

namespace A199419

/-- `(Δ[A238275(n)]+2)/2` -/
def P7081591252386171883.Spec : Prop :=
  ∀ n, P7081591252386171883.a n = (A199419 n : ℚ)

end A199419

/-! ## A199419.P12705639474805058301

`(8*A000420(n)+2)/2`
-/

namespace A199419.P12705639474805058301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * A000420 n + 2 : ℚ) / 2

end

end A199419.P12705639474805058301

namespace A199419

/-- `(8*A000420(n)+2)/2` -/
def P12705639474805058301.Spec : Prop :=
  ∀ n, P12705639474805058301.a n = (A199419 n : ℚ)

theorem P12705639474805058301.correct : P12705639474805058301.Spec := by
  intro n
  simp only [A199419, Nat.add_sub_cancel, A199419.P12705639474805058301.a, A199419.P2685936194755919386.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199419

/-! ## A199419.P10205167962061445369

`C(A208704(n+1)+1, A208704(n+1))`
-/

namespace A199419.P10205167962061445369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A208704 (n + 1) + 1).toNat (A208704 (n + 1)).toNat

end

end A199419.P10205167962061445369

namespace A199419

/-- `C(A208704(n+1)+1, A208704(n+1))` -/
def P10205167962061445369.Spec : Prop :=
  ∀ n, (P10205167962061445369.a n : ℤ) = A199419 n

end A199419

/-! ## A199419.P8009980451495034348

`Δ[A109808(n+1)/3+n]`
-/

namespace A199419.P8009980451495034348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109808 (n + 1) : ℚ) / 3 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199419.P8009980451495034348

namespace A199419

/-- `Δ[A109808(n+1)/3+n]` -/
def P8009980451495034348.Spec : Prop :=
  ∀ n, P8009980451495034348.a n = (A199419 n : ℚ)

theorem P8009980451495034348.correct : P8009980451495034348.Spec := by
  intro n
  simp only [A199419, Nat.add_sub_cancel, A199419.P8009980451495034348.f1, A199419.P8009980451495034348.a, A199419.P2685936194755919386.a, A109808, A109808.P10761423487218282710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199419

/-!
# A199420: a(n) = (5*7^n+1)/3.

The programs for A199420, the canonical program `A199420.P17227799639230179872` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199420 has offset 0).

The definition of A199420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*7^n+1)/3` (program `A199420.P8097594742741968254`, by `A199420.P8097594742741968254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199420.P17227799639230179872

`7*a(n-1)-2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199420

/-- `7*a(n-1)-2` -/
def P17227799639230179872.Spec : Prop :=
  ∀ n, P17227799639230179872.a n = A199420 n

theorem P17227799639230179872.correct : P17227799639230179872.Spec := by
  intro n
  simp only [A199420]

end A199420

/-! ## A199420.P8097594742741968254

`(5*7^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199420.P8097594742741968254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 7 ^ n + 1 : ℚ) / 3

end

end A199420.P8097594742741968254

namespace A199420

/-- `(5*7^n+1)/3` -/
def P8097594742741968254.Spec : Prop :=
  ∀ n, P8097594742741968254.a n = (A199420 n : ℚ)

theorem P8097594742741968254.correct : P8097594742741968254.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199420, Nat.add_sub_cancel, A199420.P8097594742741968254.a, A199420.P17227799639230179872.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199420, Nat.add_sub_cancel, A199420.P8097594742741968254.a, A199420.P17227799639230179872.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199420

/-! ## A199420.P2362188881039246873

`ogf((2-4x)/(1-8x+7x^2))`
-/

namespace A199420.P2362188881039246873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4] [1, -8, 7] n

end

end A199420.P2362188881039246873

namespace A199420

/-- `ogf((2-4x)/(1-8x+7x^2))` -/
def P2362188881039246873.Spec : Prop :=
  ∀ n, P2362188881039246873.a n = A199420 n

end A199420

/-! ## A199420.P2716026226905651056

`lcm(7, a(n-1))-2` with `a(0)=2`
-/

namespace A199420.P2716026226905651056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 2

end

end A199420.P2716026226905651056

namespace A199420

/-- `lcm(7, a(n-1))-2` -/
def P2716026226905651056.Spec : Prop :=
  ∀ n, P2716026226905651056.a n = A199420 n

end A199420

/-! ## A199420.P10730844287154755048

`a(n-1)/(1-6/7)-2` with `a(0)=2`
-/

namespace A199420.P10730844287154755048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 2

end

end A199420.P10730844287154755048

namespace A199420

/-- `a(n-1)/(1-6/7)-2` -/
def P10730844287154755048.Spec : Prop :=
  ∀ n, P10730844287154755048.a n = (A199420 n : ℚ)

end A199420

/-! ## A199420.P9934078829972038042

`2*A083067(n)`
-/

namespace A199420.P9934078829972038042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083067 n

end

end A199420.P9934078829972038042

namespace A199420

/-- `2*A083067(n)` -/
def P9934078829972038042.Spec : Prop :=
  ∀ n, P9934078829972038042.a n = A199420 n

end A199420

/-! ## A199420.P11315682257576555234

`∑[2*A196661(n)]`
-/

namespace A199420.P11315682257576555234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199420.P11315682257576555234

namespace A199420

/-- `∑[2*A196661(n)]` -/
def P11315682257576555234.Spec : Prop :=
  ∀ n, P11315682257576555234.a n = A199420 n

end A199420

/-! ## A199420.P5231780507844898303

`A083076(n)+7^n`
-/

namespace A199420.P5231780507844898303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + (7 ^ n : ℤ)

end

end A199420.P5231780507844898303

namespace A199420

/-- `A083076(n)+7^n` -/
def P5231780507844898303.Spec : Prop :=
  ∀ n, P5231780507844898303.a n = A199420 n

end A199420

/-! ## A199420.P17745481487482122067

`2*(A125729(n+1)+1)`
-/

namespace A199420.P17745481487482122067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125729 (n + 1) + 1)

end

end A199420.P17745481487482122067

namespace A199420

/-- `2*(A125729(n+1)+1)` -/
def P17745481487482122067.Spec : Prop :=
  ∀ n, P17745481487482122067.a n = A199420 n

end A199420

/-! ## A199420.P11604394793369473806

`5*A125725(n+1)+2`
-/

namespace A199420.P11604394793369473806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A125725 (n + 1) + 2

end

end A199420.P11604394793369473806

namespace A199420

/-- `5*A125725(n+1)+2` -/
def P11604394793369473806.Spec : Prop :=
  ∀ n, P11604394793369473806.a n = A199420 n

end A199420

/-! ## A199420.P10269164244522218978

`2*(5*A023000(n)+1)`
-/

namespace A199420.P10269164244522218978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (5 * A023000 n + 1)

end

end A199420.P10269164244522218978

namespace A199420

/-- `2*(5*A023000(n)+1)` -/
def P10269164244522218978.Spec : Prop :=
  ∀ n, P10269164244522218978.a n = A199420 n

end A199420

/-! ## A199420.P17546651836437243901

`A199417(n)+A023000(n)`
-/

namespace A199420.P17546651836437243901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n + A023000 n

end

end A199420.P17546651836437243901

namespace A199420

/-- `A199417(n)+A023000(n)` -/
def P17546651836437243901.Spec : Prop :=
  ∀ n, P17546651836437243901.a n = A199420 n

end A199420

/-! ## A199420.P15963996198066888789

`2*(A083076(n)+A023000(n))`
-/

namespace A199420.P15963996198066888789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083076 n + A023000 n)

end

end A199420.P15963996198066888789

namespace A199420

/-- `2*(A083076(n)+A023000(n))` -/
def P15963996198066888789.Spec : Prop :=
  ∀ n, P15963996198066888789.a n = A199420 n

end A199420

/-! ## A199420.P1726556273128262662

`2*(A199417(n)-A083076(n))`
-/

namespace A199420.P1726556273128262662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199417 n - A083076 n)

end

end A199420.P1726556273128262662

namespace A199420

/-- `2*(A199417(n)-A083076(n))` -/
def P1726556273128262662.Spec : Prop :=
  ∀ n, P1726556273128262662.a n = A199420 n

end A199420

/-! ## A199420.P3355868837125251241

`2*(∑[A055272(n)]-A023000(n))`
-/

namespace A199420.P3355868837125251241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A023000 n)

end

end A199420.P3355868837125251241

namespace A199420

/-- `2*(∑[A055272(n)]-A023000(n))` -/
def P3355868837125251241.Spec : Prop :=
  ∀ n, P3355868837125251241.a n = A199420 n

end A199420

/-! ## A199420.P15119482636550678906

`A034494(n)+∑[A120741(n)+A034494(n)]`
-/

namespace A199420.P15119482636550678906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + A034494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199420.P15119482636550678906

namespace A199420

/-- `A034494(n)+∑[A120741(n)+A034494(n)]` -/
def P15119482636550678906.Spec : Prop :=
  ∀ n, P15119482636550678906.a n = A199420 n

end A199420

/-! ## A199420.P8393118245591801482

`A023000(n+1)+A023000(n+1)-A125823(n+1)`
-/

namespace A199420.P8393118245591801482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 1) + (A023000 (n + 1) - A125823 (n + 1))

end

end A199420.P8393118245591801482

namespace A199420

/-- `A023000(n+1)+A023000(n+1)-A125823(n+1)` -/
def P8393118245591801482.Spec : Prop :=
  ∀ n, P8393118245591801482.a n = A199420 n

end A199420

/-! ## A199420.P17892628181395969502

`2/3*A199421(n)`
-/

namespace A199420.P17892628181395969502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A199421 n : ℚ)

end

end A199420.P17892628181395969502

namespace A199420

/-- `2/3*A199421(n)` -/
def P17892628181395969502.Spec : Prop :=
  ∀ n, P17892628181395969502.a n = (A199420 n : ℚ)

end A199420

/-! ## A199420.P4054091968535242699

`A125725(n+2)-A125725(n+1)-A125725(n+1)`
-/

namespace A199420.P4054091968535242699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 2) - A125725 (n + 1) - A125725 (n + 1)

end

end A199420.P4054091968535242699

namespace A199420

/-- `A125725(n+2)-A125725(n+1)-A125725(n+1)` -/
def P4054091968535242699.Spec : Prop :=
  ∀ n, P4054091968535242699.a n = A199420 n

end A199420

/-!
# A199421: a(n) = (5*7^n+1)/2.

The programs for A199421, the canonical program `A199421.P14374307925877671526` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199421 has offset 0).

The definition of A199421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*7^n+1)/2` (program `A199421.P111669474477387448`, by `A199421.P111669474477387448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199421.P111669474477387448

`(5*7^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199421.P111669474477387448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 7 ^ n + 1 : ℚ) / 2

end

end A199421.P111669474477387448

namespace A199421

/-- `(5*7^n+1)/2` -/
def P111669474477387448.Spec : Prop :=
  ∀ n, P111669474477387448.a n = (A199421 n : ℚ)

theorem P111669474477387448.correct : P111669474477387448.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199421, Nat.add_sub_cancel, A199421.P111669474477387448.a, A199421.P14374307925877671526.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199421, Nat.add_sub_cancel, A199421.P111669474477387448.a, A199421.P14374307925877671526.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199421

/-! ## A199421.P14374307925877671526

`7*a(n-1)-3` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199421

/-- `7*a(n-1)-3` -/
def P14374307925877671526.Spec : Prop :=
  ∀ n, P14374307925877671526.a n = A199421 n

theorem P14374307925877671526.correct : P14374307925877671526.Spec := by
  intro n
  simp only [A199421]

end A199421

/-! ## A199421.P75193236685695714

`ogf((3-6x)/(1-8x+7x^2))`
-/

namespace A199421.P75193236685695714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6] [1, -8, 7] n

end

end A199421.P75193236685695714

namespace A199421

/-- `ogf((3-6x)/(1-8x+7x^2))` -/
def P75193236685695714.Spec : Prop :=
  ∀ n, P75193236685695714.a n = A199421 n

end A199421

/-! ## A199421.P3502541645586076529

`lcm(7, a(n-1))-3` with `a(0)=3`
-/

namespace A199421.P3502541645586076529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 3

end

end A199421.P3502541645586076529

namespace A199421

/-- `lcm(7, a(n-1))-3` -/
def P3502541645586076529.Spec : Prop :=
  ∀ n, P3502541645586076529.a n = A199421 n

end A199421

/-! ## A199421.P951111457213971303

`a(n-1)/(1-6/7)-3` with `a(0)=3`
-/

namespace A199421.P951111457213971303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 3

end

end A199421.P951111457213971303

namespace A199421

/-- `a(n-1)/(1-6/7)-3` -/
def P951111457213971303.Spec : Prop :=
  ∀ n, P951111457213971303.a n = (A199421 n : ℚ)

end A199421

/-! ## A199421.P13571627651096934176

`3*A083067(n)`
-/

namespace A199421.P13571627651096934176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A083067 n

end

end A199421.P13571627651096934176

namespace A199421

/-- `3*A083067(n)` -/
def P13571627651096934176.Spec : Prop :=
  ∀ n, P13571627651096934176.a n = A199421 n

end A199421

/-! ## A199421.P3354166472366399585

`round(A193577(n)/2)`
-/

namespace A199421.P3354166472366399585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A193577 n : ℚ) / 2)

end

end A199421.P3354166472366399585

namespace A199421

/-- `round(A193577(n)/2)` -/
def P3354166472366399585.Spec : Prop :=
  ∀ n, P3354166472366399585.a n = A199421 n

end A199421

/-! ## A199421.P9355522142459993740

`∑[3*A196661(n)]`
-/

namespace A199421.P9355522142459993740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A196661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199421.P9355522142459993740

namespace A199421

/-- `∑[3*A196661(n)]` -/
def P9355522142459993740.Spec : Prop :=
  ∀ n, P9355522142459993740.a n = A199421 n

end A199421

/-! ## A199421.P17411819920021925818

`A198687(n)/2+1`
-/

namespace A199421.P17411819920021925818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198687 n : ℚ) / 2 + 1

end

end A199421.P17411819920021925818

namespace A199421

/-- `A198687(n)/2+1` -/
def P17411819920021925818.Spec : Prop :=
  ∀ n, P17411819920021925818.a n = (A199421 n : ℚ)

theorem P17411819920021925818.correct : P17411819920021925818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199421, Nat.add_sub_cancel, A199421.P17411819920021925818.a, A199421.P14374307925877671526.a, A198687, A198687.P4521838440088221776.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199421, Nat.add_sub_cancel, A199421.P17411819920021925818.a, A199421.P14374307925877671526.a, A198687, A198687.P4521838440088221776.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199421

/-! ## A199421.P9769367762895097084

`A297180(3*(n+1))`
-/

namespace A199421.P9769367762895097084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * (n + 1))

end

end A199421.P9769367762895097084

namespace A199421

/-- `A297180(3*(n+1))` -/
def P9769367762895097084.Spec : Prop :=
  ∀ n, P9769367762895097084.a n = A199421 n

end A199421

/-! ## A199421.P9178452623318303424

`5*A034494(n)-2`
-/

namespace A199421.P9178452623318303424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A034494 n - 2

end

end A199421.P9178452623318303424

namespace A199421

/-- `5*A034494(n)-2` -/
def P9178452623318303424.Spec : Prop :=
  ∀ n, P9178452623318303424.a n = A199421 n

end A199421

/-! ## A199421.P8297659037851497525

`5*A120741(n)+3`
-/

namespace A199421.P8297659037851497525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A120741 n + 3

end

end A199421.P8297659037851497525

namespace A199421

/-- `5*A120741(n)+3` -/
def P8297659037851497525.Spec : Prop :=
  ∀ n, P8297659037851497525.a n = A199421 n

end A199421

/-! ## A199421.P1748889628497151029

`3/2*A199420(n)`
-/

namespace A199421.P1748889628497151029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A199420 n : ℚ)

end

end A199421.P1748889628497151029

namespace A199421

/-- `3/2*A199420(n)` -/
def P1748889628497151029.Spec : Prop :=
  ∀ n, P1748889628497151029.a n = (A199421 n : ℚ)

end A199421

/-! ## A199421.P15285858280839699680

`round(A196661(n+1)/2)`
-/

namespace A199421.P15285858280839699680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A196661 (n + 1) : ℚ) / 2)

end

end A199421.P15285858280839699680

namespace A199421

/-- `round(A196661(n+1)/2)` -/
def P15285858280839699680.Spec : Prop :=
  ∀ n, P15285858280839699680.a n = A199421 n

end A199421

/-! ## A199421.P908824266304406960

`3*(A125729(n+1)+1)`
-/

namespace A199421.P908824266304406960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A125729 (n + 1) + 1)

end

end A199421.P908824266304406960

namespace A199421

/-- `3*(A125729(n+1)+1)` -/
def P908824266304406960.Spec : Prop :=
  ∀ n, P908824266304406960.a n = A199421 n

end A199421

/-! ## A199421.P7262015928738357427

`A169634(n)-A120741(n)`
-/

namespace A199421.P7262015928738357427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169634 n - A120741 n

end

end A199421.P7262015928738357427

namespace A199421

/-- `A169634(n)-A120741(n)` -/
def P7262015928738357427.Spec : Prop :=
  ∀ n, P7262015928738357427.a n = A199421 n

end A199421

/-! ## A199421.P15205597228552588446

`A181303(A016969(n))/2+1`
-/

namespace A199421.P15205597228552588446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181303 (A016969 n).toNat : ℚ) / 2 + 1

end

end A199421.P15205597228552588446

namespace A199421

/-- `A181303(A016969(n))/2+1` -/
def P15205597228552588446.Spec : Prop :=
  ∀ n, P15205597228552588446.a n = (A199421 n : ℚ)

end A199421

/-! ## A199421.P946594753264792465

`A120741(n+1)-A120741(n)-A120741(n)`
-/

namespace A199421.P946594753264792465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A120741 n - A120741 n

end

end A199421.P946594753264792465

namespace A199421

/-- `A120741(n+1)-A120741(n)-A120741(n)` -/
def P946594753264792465.Spec : Prop :=
  ∀ n, P946594753264792465.a n = A199421 n

end A199421

/-!
# A199422: a(n) = 5*7^n+1.

The programs for A199422, the canonical program `A199422.P2515613482203871178` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199422 has offset 0).

The definition of A199422 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*7^n+1` (program `A199422.P2515613482203871178`, by `A199422.P2515613482203871178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199422.P2515613482203871178

`5*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199422

/-- `5*7^n+1` -/
def P2515613482203871178.Spec : Prop :=
  ∀ n, (P2515613482203871178.a n : ℤ) = A199422 n

theorem P2515613482203871178.correct : P2515613482203871178.Spec := by
  intro n
  simp only [A199422]

end A199422

/-! ## A199422.P6098961193333958451

`6*A083067(n)`
-/

namespace A199422.P6098961193333958451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A083067 n

end

end A199422.P6098961193333958451

namespace A199422

/-- `6*A083067(n)` -/
def P6098961193333958451.Spec : Prop :=
  ∀ n, P6098961193333958451.a n = A199422 n

end A199422

/-! ## A199422.P4799832807007750375

`ogf((6-12x)/(1-8x+7x^2))`
-/

namespace A199422.P4799832807007750375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -12] [1, -8, 7] n

end

end A199422.P4799832807007750375

namespace A199422

/-- `ogf((6-12x)/(1-8x+7x^2))` -/
def P4799832807007750375.Spec : Prop :=
  ∀ n, P4799832807007750375.a n = A199422 n

end A199422

/-! ## A199422.P12680559691685091428

`abs(6-7*a(n-1))` with `a(0)=6`
-/

namespace A199422.P12680559691685091428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199422.P12680559691685091428

namespace A199422

/-- `abs(6-7*a(n-1))` -/
def P12680559691685091428.Spec : Prop :=
  ∀ n, P12680559691685091428.a n = A199422 n

end A199422

/-! ## A199422.P5660149082685651235

`6*∑[7*a(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A199422.P5660149082685651235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A199422.P5660149082685651235

namespace A199422

/-- `6*∑[7*a(n-1)]` -/
def P5660149082685651235.Spec : Prop :=
  ∀ n, (P5660149082685651235.a n : ℤ) = A199422 n

end A199422

/-! ## A199422.P8655389492602444204

`floor(a(n-1)+6*(a(n-1)-1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199422.P8655389492602444204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 6 * (a (n - 1) - 1)

end

end A199422.P8655389492602444204

namespace A199422

/-- `floor(a(n-1)+6*(a(n-1)-1))` -/
def P8655389492602444204.Spec : Prop :=
  ∀ n, P8655389492602444204.a n = A199422 n

theorem P8655389492602444204.correct : P8655389492602444204.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199422, Nat.add_sub_cancel, A199422.P8655389492602444204.a, A199422.P2515613482203871178.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199422, Nat.add_sub_cancel, A199422.P8655389492602444204.a, A199422.P2515613482203871178.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199422

/-! ## A199422.P13441946860663502802

`floor(a(n-1)-6*(1-a(n-1)))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A199422.P13441946860663502802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) - 6 * (1 - a (n - 1))

end

end A199422.P13441946860663502802

namespace A199422

/-- `floor(a(n-1)-6*(1-a(n-1)))` -/
def P13441946860663502802.Spec : Prop :=
  ∀ n, P13441946860663502802.a n = A199422 n

theorem P13441946860663502802.correct : P13441946860663502802.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199422, Nat.add_sub_cancel, A199422.P13441946860663502802.a, A199422.P2515613482203871178.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199422, Nat.add_sub_cancel, A199422.P13441946860663502802.a, A199422.P2515613482203871178.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199422

/-! ## A199422.P8103837881793691403

`2*A199421(n)`
-/

namespace A199422.P8103837881793691403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199421 n

end

end A199422.P8103837881793691403

namespace A199422

/-- `2*A199421(n)` -/
def P8103837881793691403.Spec : Prop :=
  ∀ n, P8103837881793691403.a n = A199422 n

end A199422

/-! ## A199422.P221188088669945899

`3*A199420(n)`
-/

namespace A199422.P221188088669945899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199420 n

end

end A199422.P221188088669945899

namespace A199422

/-- `3*A199420(n)` -/
def P221188088669945899.Spec : Prop :=
  ∀ n, P221188088669945899.a n = A199422 n

end A199422

/-! ## A199422.P12691560792298562778

`round(A199488(n)/2)`
-/

namespace A199422.P12691560792298562778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199488 n : ℚ) / 2)

end

end A199422.P12691560792298562778

namespace A199422

/-- `round(A199488(n)/2)` -/
def P12691560792298562778.Spec : Prop :=
  ∀ n, P12691560792298562778.a n = A199422 n

end A199422

/-! ## A199422.P17789835047251170782

`∑[6*A196661(n)]`
-/

namespace A199422.P17789835047251170782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A196661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199422.P17789835047251170782

namespace A199422

/-- `∑[6*A196661(n)]` -/
def P17789835047251170782.Spec : Prop :=
  ∀ n, P17789835047251170782.a n = A199422 n

end A199422

/-! ## A199422.P8501540281475920640

`(A198691(n)+3)/2`
-/

namespace A199422.P8501540281475920640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198691 n + 3 : ℚ) / 2

end

end A199422.P8501540281475920640

namespace A199422

/-- `(A198691(n)+3)/2` -/
def P8501540281475920640.Spec : Prop :=
  ∀ n, P8501540281475920640.a n = (A199422 n : ℚ)

theorem P8501540281475920640.correct : P8501540281475920640.Spec := by
  intro n
  simp only [A199422, Nat.add_sub_cancel, A199422.P8501540281475920640.a, A199422.P2515613482203871178.a, A198691, A198691.P142409172853269444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199422

/-! ## A199422.P5769918316798017045

`2*A297180(3*(n+1))`
-/

namespace A199422.P5769918316798017045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297180 (3 * (n + 1))

end

end A199422.P5769918316798017045

namespace A199422

/-- `2*A297180(3*(n+1))` -/
def P5769918316798017045.Spec : Prop :=
  ∀ n, P5769918316798017045.a n = A199422 n

end A199422

/-! ## A199422.P14387842717759893586

`2*(A169634(n)-A120741(n))`
-/

namespace A199422.P14387842717759893586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A169634 n - A120741 n)

end

end A199422.P14387842717759893586

namespace A199422

/-- `2*(A169634(n)-A120741(n))` -/
def P14387842717759893586.Spec : Prop :=
  ∀ n, P14387842717759893586.a n = A199422 n

end A199422

/-! ## A199422.P14919682842196684175

`(A193577(n)+1)*A060680(2*(n+1))`
-/

namespace A199422.P14919682842196684175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193577 n + 1) * A060680 (2 * (n + 1))

end

end A199422.P14919682842196684175

namespace A199422

/-- `(A193577(n)+1)*A060680(2*(n+1))` -/
def P14919682842196684175.Spec : Prop :=
  ∀ n, P14919682842196684175.a n = A199422 n

end A199422

/-!
# A199423: Greatest prime factor of n and 2*n+1.

The programs for A199423, the canonical program `A199423.P9821996436638623636` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199423 has offset 1).

The definition of A199423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A199423.P9821996436638623636

`A006530((n+1)*(2*(n+1)+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A199423

/-- `A006530((n+1)*(2*(n+1)+1))` -/
def P9821996436638623636.Spec : Prop :=
  ∀ n, P9821996436638623636.a n = A199423 (n + 1)

theorem P9821996436638623636.correct : P9821996436638623636.Spec := by
  intro n
  simp only [A199423, Nat.add_sub_cancel]

end A199423

/-! ## A199423.P12186207950475292492

`A069902(2*(n+1))`
-/

namespace A199423.P12186207950475292492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (2 * (n + 1))

end

end A199423.P12186207950475292492

namespace A199423

/-- `A069902(2*(n+1))` -/
def P12186207950475292492.Spec : Prop :=
  ∀ n, P12186207950475292492.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P12252199054360884648

`A074399(2*(n+1))`
-/

namespace A199423.P12252199054360884648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (2 * (n + 1))

end

end A199423.P12252199054360884648

namespace A199423

/-- `A074399(2*(n+1))` -/
def P12252199054360884648.Spec : Prop :=
  ∀ n, P12252199054360884648.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P6939370200138958437

`or(1, A074399(n+2+n))`
-/

namespace A199423.P6939370200138958437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074399 (n + 2 + n))

end

end A199423.P6939370200138958437

namespace A199423

/-- `or(1, A074399(n+2+n))` -/
def P6939370200138958437.Spec : Prop :=
  ∀ n, P6939370200138958437.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P3009102497123273453

`A000040(A252489(2*(n+1)))`
-/

namespace A199423.P3009102497123273453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A252489 (2 * (n + 1))).toNat

end

end A199423.P3009102497123273453

namespace A199423

/-- `A000040(A252489(2*(n+1)))` -/
def P3009102497123273453.Spec : Prop :=
  ∀ n, P3009102497123273453.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P5314591712719771811

`A000027(A074399(n+2+n))`
-/

namespace A199423.P5314591712719771811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A074399 (n + 2 + n)).toNat

end

end A199423.P5314591712719771811

namespace A199423

/-- `A000027(A074399(n+2+n))` -/
def P5314591712719771811.Spec : Prop :=
  ∀ n, P5314591712719771811.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P7127716207394212134

`A074399(n+2+n)%A272298(n)`
-/

namespace A199423.P7127716207394212134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074399 (n + 2 + n)) (A272298 n)

end

end A199423.P7127716207394212134

namespace A199423

/-- `A074399(n+2+n)%A272298(n)` -/
def P7127716207394212134.Spec : Prop :=
  ∀ n, P7127716207394212134.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P13465579468455682720

`A328827(6*(n+1))`
-/

namespace A199423.P13465579468455682720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328827 (6 * (n + 1))

end

end A199423.P13465579468455682720

namespace A199423

/-- `A328827(6*(n+1))` -/
def P13465579468455682720.Spec : Prop :=
  ∀ n, P13465579468455682720.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P1689733224491679911

`A076605(4*n+5)`
-/

namespace A199423.P1689733224491679911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (4 * n + 5)

end

end A199423.P1689733224491679911

namespace A199423

/-- `A076605(4*n+5)` -/
def P1689733224491679911.Spec : Prop :=
  ∀ n, P1689733224491679911.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P17516753934256502517

`or(1, A006530(A000217(2*(n+1))))`
-/

namespace A199423.P17516753934256502517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A000217 (2 * (n + 1))).toNat)

end

end A199423.P17516753934256502517

namespace A199423

/-- `or(1, A006530(A000217(2*(n+1))))` -/
def P17516753934256502517.Spec : Prop :=
  ∀ n, P17516753934256502517.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P1002067001668880661

`or(1, A006530(A161680(2*n+3)))`
-/

namespace A199423.P1002067001668880661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A161680 (2 * n + 3)).toNat)

end

end A199423.P1002067001668880661

namespace A199423

/-- `or(1, A006530(A161680(2*n+3)))` -/
def P1002067001668880661.Spec : Prop :=
  ∀ n, P1002067001668880661.a n = A199423 (n + 1)

end A199423

/-! ## A199423.P7801382545265001072

`or(1, A006530(A046092(2*(n+1))))`
-/

namespace A199423.P7801382545265001072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A046092 (2 * (n + 1))).toNat)

end

end A199423.P7801382545265001072

namespace A199423

/-- `or(1, A006530(A046092(2*(n+1))))` -/
def P7801382545265001072.Spec : Prop :=
  ∀ n, P7801382545265001072.a n = A199423 (n + 1)

end A199423

/-!
# A199425: Number of distinct primes in rows 0 through n of the triangle in A199333.

The programs for A199425, there is no canonical definition to state claims against.
-/

/-! ## A199425.P10908836364096419834

`A213259(∑[A000041(A287775(n+1))])`
-/

namespace A199425.P10908836364096419834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A287775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199425.P10908836364096419834

/-! ## A199425.P8189794479322382833

`∑[A283682(C(floor(3*n/2), n))]`
-/

namespace A199425.P8189794479322382833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283682 (Nat.choose ⌊3 * ((n : ℚ) / 2)⌋.toNat n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199425.P8189794479322382833

/-! ## A199425.P8464706887496103879

`A239517(n+1)+A097249(A238428(n))`
-/

namespace A199425.P8464706887496103879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239517 (n + 1) + A097249 (A238428 n).toNat

end

end A199425.P8464706887496103879

/-! ## A199425.P17011772852456116755

`A341868(n)-A124765(A129339(n+3))`
-/

namespace A199425.P17011772852456116755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341868 (n + 10) - A124765 (A129339 (n + 3)).toNat

end

end A199425.P17011772852456116755

/-!
# A199427: Numbers n such that 4n+1 and 8n+3 are prime.

The programs for A199427, the canonical program `A199427.P16032660571928218146` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199427 has offset 1).

The definition of A199427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199427.P8446609508853073035

`floor(p?[A163779(n+1)]/4)`
-/

namespace A199427.P8446609508853073035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A199427.P8446609508853073035

namespace A199427

/-- `floor(p?[A163779(n+1)]/4)` -/
def P8446609508853073035.Spec : Prop :=
  ∀ n, P8446609508853073035.a n = A199427 (n + 1)

end A199427

/-! ## A199427.P5363584150128755569

`∩[A005098(n+1), A005124(n+1)]`
-/

namespace A199427.P5363584150128755569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A199427.P5363584150128755569

namespace A199427

/-- `∩[A005098(n+1), A005124(n+1)]` -/
def P5363584150128755569.Spec : Prop :=
  ∀ n, (P5363584150128755569.a n : ℤ) = A199427 (n + 1)

end A199427

/-! ## A199427.P11483558007002086770

`∑[A054576(Δ[A103579(n+1)])]`
-/

namespace A199427.P11483558007002086770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199427.P11483558007002086770

namespace A199427

/-- `∑[A054576(Δ[A103579(n+1)])]` -/
def P11483558007002086770.Spec : Prop :=
  ∀ n, P11483558007002086770.a n = A199427 (n + 1)

end A199427

/-! ## A199427.P16032660571928218146

`∑[A110655(Δ[A103579(n+1)])]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A199427

/-- `∑[A110655(Δ[A103579(n+1)])]` -/
def P16032660571928218146.Spec : Prop :=
  ∀ n, P16032660571928218146.a n = A199427 (n + 1)

theorem P16032660571928218146.correct : P16032660571928218146.Spec := by
  intro n
  simp only [A199427, Nat.add_sub_cancel]

end A199427

/-! ## A199427.P15261447464884348486

`∑[A285727(Δ[A103579(n+1)])]`
-/

namespace A199427.P15261447464884348486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285727 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199427.P15261447464884348486

namespace A199427

/-- `∑[A285727(Δ[A103579(n+1)])]` -/
def P15261447464884348486.Spec : Prop :=
  ∀ n, P15261447464884348486.a n = A199427 (n + 1)

end A199427

/-! ## A199427.P4646061672422316553

`A000010(A103579(n+2))/4`
-/

namespace A199427.P4646061672422316553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A103579 (n + 2)).toNat : ℚ) / 4

end

end A199427.P4646061672422316553

namespace A199427

/-- `A000010(A103579(n+2))/4` -/
def P4646061672422316553.Spec : Prop :=
  ∀ n, P4646061672422316553.a n = (A199427 (n + 1) : ℚ)

end A199427

/-! ## A199427.P8183452078577674038

`eq[2, A001222(A000010(6*n+2*n+3))]`
-/

namespace A199427.P8183452078577674038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (6 * n + (2 * n + 3))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A199427.P8183452078577674038

namespace A199427

/-- `eq[2, A001222(A000010(6*n+2*n+3))]` -/
def P8183452078577674038.Spec : Prop :=
  ∀ n, (P8183452078577674038.a n : ℤ) = A199427 (n + 1)

end A199427

/-! ## A199427.P17521937206084816810

`lt[A245203(2*n), A101264(2*n)]`
-/

namespace A199427.P17521937206084816810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A199427.P17521937206084816810

namespace A199427

/-- `lt[A245203(2*n), A101264(2*n)]` -/
def P17521937206084816810.Spec : Prop :=
  ∀ n, (P17521937206084816810.a n : ℤ) = A199427 (n + 1)

end A199427

/-! ## A199427.P2504167725320643190

`A008619(record[A093178(A152843(n+1))])`
-/

namespace A199427.P2504167725320643190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A152843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A199427.P2504167725320643190

namespace A199427

/-- `A008619(record[A093178(A152843(n+1))])` -/
def P2504167725320643190.Spec : Prop :=
  ∀ n, P2504167725320643190.a n = A199427 (n + 1)

end A199427

/-! ## A199427.P10386810222824989902

`A002265(A103579(n+2))`
-/

namespace A199427.P10386810222824989902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A103579 (n + 2)).toNat

end

end A199427.P10386810222824989902

namespace A199427

/-- `A002265(A103579(n+2))` -/
def P10386810222824989902.Spec : Prop :=
  ∀ n, P10386810222824989902.a n = A199427 (n + 1)

end A199427

/-!
# A199474: Leftmost column in the monotonic justified array of all positive generalized Fibonacci sequences (A160271).

The programs for A199474, the canonical program `A199474.P17289938978720021697` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199474 has offset 1).

The definition of A199474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A199474.P17289938978720021697

`floor(ceil(sqrt(4*(n+1)))²/4)+floor(sqrt(4*(n+1)-2))-floor(sqrt(n+1)+1/2)-(n+1)+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199474

/-- `floor(ceil(sqrt(4*(n+1)))²/4)+floor(sqrt(4*(n+1)-2))-floor(sqrt(n+1)+1/2)-(n+1)+1` -/
def P17289938978720021697.Spec : Prop :=
  ∀ n, P17289938978720021697.a n = A199474 (n + 1)

theorem P17289938978720021697.correct : P17289938978720021697.Spec := by
  intro n
  simp only [A199474, Nat.add_sub_cancel]

end A199474

/-! ## A199474.P9464795815420749543

`A339399(2*(n+1))`
-/

namespace A199474.P9464795815420749543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (2 * (n + 1))

end

end A199474.P9464795815420749543

namespace A199474

/-- `A339399(2*(n+1))` -/
def P9464795815420749543.Spec : Prop :=
  ∀ n, P9464795815420749543.a n = A199474 (n + 1)

end A199474

/-! ## A199474.P3622768647339230515

`A057059(∑[2-char[n²]])`
-/

namespace A199474.P3622768647339230515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199474.P3622768647339230515

namespace A199474

/-- `A057059(∑[2-char[n²]])` -/
def P3622768647339230515.Spec : Prop :=
  ∀ n, P3622768647339230515.a n = A199474 (n + 1)

end A199474

/-! ## A199474.P7934307080592403897

`round(sqrt(2*A056536(n+1)))`
-/

namespace A199474.P7934307080592403897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A056536 (n + 1) : ℝ))

end

end A199474.P7934307080592403897

namespace A199474

/-- `round(sqrt(2*A056536(n+1)))` -/
def P7934307080592403897.Spec : Prop :=
  ∀ n, P7934307080592403897.a n = A199474 (n + 1)

end A199474

/-! ## A199474.P12754223343469909887

`round(sqrt(2*(A091018(n)+1)))`
-/

namespace A199474.P12754223343469909887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (A091018 n + 1) : ℝ))

end

end A199474.P12754223343469909887

namespace A199474

/-- `round(sqrt(2*(A091018(n)+1)))` -/
def P12754223343469909887.Spec : Prop :=
  ∀ n, P12754223343469909887.a n = A199474 (n + 1)

end A199474

/-! ## A199474.P12089752558861026426

`A002024(A056536(n+1))`
-/

namespace A199474.P12089752558861026426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A056536 (n + 1)).toNat

end

end A199474.P12089752558861026426

namespace A199474

/-- `A002024(A056536(n+1))` -/
def P12089752558861026426.Spec : Prop :=
  ∀ n, P12089752558861026426.a n = A199474 (n + 1)

end A199474

/-! ## A199474.P13229822048687123001

`A004736(A274427(n+1))`
-/

namespace A199474.P13229822048687123001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A274427 (n + 1)).toNat

end

end A199474.P13229822048687123001

namespace A199474

/-- `A004736(A274427(n+1))` -/
def P13229822048687123001.Spec : Prop :=
  ∀ n, P13229822048687123001.a n = A199474 (n + 1)

end A199474

/-! ## A199474.P4195189024463152787

`A004736(A206224(n)+n+1)`
-/

namespace A199474.P4195189024463152787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A206224 n + (n + 1 : ℤ)).toNat

end

end A199474.P4195189024463152787

namespace A199474

/-- `A004736(A206224(n)+n+1)` -/
def P4195189024463152787.Spec : Prop :=
  ∀ n, P4195189024463152787.a n = A199474 (n + 1)

end A199474

/-! ## A199474.P4363668565933560805

`A350634(n+1)/A122197(n+1)`
-/

namespace A199474.P4363668565933560805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350634 (n + 1) : ℚ) / (A122197 (n + 1) : ℚ)

end

end A199474.P4363668565933560805

namespace A199474

/-- `A350634(n+1)/A122197(n+1)` -/
def P4363668565933560805.Spec : Prop :=
  ∀ n, P4363668565933560805.a n = (A199474 (n + 1) : ℚ)

end A199474

/-! ## A199474.P2386089920104203247

`A128502(n)/A115139(n+1)`
-/

namespace A199474.P2386089920104203247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128502 n : ℚ) / (A115139 (n + 1) : ℚ)

end

end A199474.P2386089920104203247

namespace A199474

/-- `A128502(n)/A115139(n+1)` -/
def P2386089920104203247.Spec : Prop :=
  ∀ n, P2386089920104203247.a n = (A199474 (n + 1) : ℚ)

end A199474

/-!
# A199475: G.f. satisfies A(x) = Sum_{n>=0} x^n * (1 - A(x)^(2*n+2))/(1 - A(x)^2).

The programs for A199475, there is no canonical definition to state claims against.
-/

/-! ## A199475.P561782347572909499

`∑[A366176(n)]`
-/

namespace A199475.P561782347572909499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199475.P561782347572909499

/-! ## A199475.P4699418656815231525

`A303787(A108452(n)+n)`
-/

namespace A199475.P4699418656815231525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A108452 n + (n : ℤ)).toNat

end

end A199475.P4699418656815231525

/-!
# A199477: Right hand diagonal of triangle A199476.

The programs for A199477, there is no canonical definition to state claims against.
-/

/-! ## A199477.P16164429628630537502

`record[A199476(n+2)]`
-/

namespace A199477.P16164429628630537502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199477.P16164429628630537502

/-! ## A199477.P1825583807181576365

`A199476(∑[n+1]+1)`
-/

namespace A199477.P1825583807181576365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199476 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199477.P1825583807181576365

/-!
# A199478: Irregular triangle read by rows: T(n,i) = 2^(i-1)*(binomial(n-i+1,i)+binomial(n-i,i)), n >= 1, 0 <= i <= (n+1)/2.

The programs for A199478, the canonical program `A199478.P6630177777262602825` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199478 has offset 1).

The definition of A199478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199478.P6630177777262602825

`A081277(A091018(n+2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A199478

/-- `A081277(A091018(n+2))` -/
def P6630177777262602825.Spec : Prop :=
  ∀ n, P6630177777262602825.a n = A199478 (n + 1)

theorem P6630177777262602825.correct : P6630177777262602825.Spec := by
  intro n
  simp only [A199478, Nat.add_sub_cancel]

end A199478

/-! ## A199478.P8039363268536192756

`A081277(A056536(n+3)-1)`
-/

namespace A199478.P8039363268536192756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A056536 (n + 3) - 1).toNat

end

end A199478.P8039363268536192756

namespace A199478

/-- `A081277(A056536(n+3)-1)` -/
def P8039363268536192756.Spec : Prop :=
  ∀ n, P8039363268536192756.a n = A199478 (n + 1)

theorem P8039363268536192756.correct : P8039363268536192756.Spec := by
  intro n
  simp only [A199478, Nat.add_sub_cancel, A199478.P8039363268536192756.a, A199478.P6630177777262602825.a, A056536, A056536.P15475188742304027796.a, A081277, A081277.P11435500292925941980.a, A091018, A091018.P2259398009619809425.a, A056537, A056537.P3331014331152516535.a, A091995, A091995.P16558306300262697301.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A199478

/-! ## A199478.P5743327571536818854

`gcd(A000038(n), A079628(A091018(n+2)))`
-/

namespace A199478.P5743327571536818854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A079628 (A091018 (n + 2)).toNat)

end

end A199478.P5743327571536818854

namespace A199478

/-- `gcd(A000038(n), A079628(A091018(n+2)))` -/
def P5743327571536818854.Spec : Prop :=
  ∀ n, (P5743327571536818854.a n : ℤ) = A199478 (n + 1)

end A199478

/-! ## A199478.P11729978119478760003

`lcm(A020985(n), A079628(A091018(n+2)))`
-/

namespace A199478.P11729978119478760003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A079628 (A091018 (n + 2)).toNat)

end

end A199478.P11729978119478760003

namespace A199478

/-- `lcm(A020985(n), A079628(A091018(n+2)))` -/
def P11729978119478760003.Spec : Prop :=
  ∀ n, (P11729978119478760003.a n : ℤ) = A199478 (n + 1)

end A199478

/-! ## A199478.P15276331156928186152

`lcm(-A079628(A091018(n+2)), A033999(n)²)`
-/

namespace A199478.P15276331156928186152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A079628 (A091018 (n + 2)).toNat) (A033999 n ^ 2)

end

end A199478.P15276331156928186152

namespace A199478

/-- `lcm(-A079628(A091018(n+2)), A033999(n)²)` -/
def P15276331156928186152.Spec : Prop :=
  ∀ n, (P15276331156928186152.a n : ℤ) = A199478 (n + 1)

end A199478

/-! ## A199478.P291027725115081772

`∑{d}[A079628(A091018(n+2)), A000010(#)]`
-/

namespace A199478.P291027725115081772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079628 (A091018 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A199478.P291027725115081772

namespace A199478

/-- `∑{d}[A079628(A091018(n+2)), A000010(#)]` -/
def P291027725115081772.Spec : Prop :=
  ∀ n, P291027725115081772.a n = A199478 (n + 1)

end A199478

/-! ## A199478.P9187060835509326114

`∏{d}[A079628(A091018(n+2)), A014963(#)]`
-/

namespace A199478.P9187060835509326114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079628 (A091018 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A199478.P9187060835509326114

namespace A199478

/-- `∏{d}[A079628(A091018(n+2)), A014963(#)]` -/
def P9187060835509326114.Spec : Prop :=
  ∀ n, P9187060835509326114.a n = A199478 (n + 1)

end A199478

/-!
# A199479: Triangle T(n,k), read by rows, given by (1,0,0,0,0,0,0,0,0,0,...) DELTA (1,1,1,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A199479, the canonical program `A199479.P4312967222297535368` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199479 has offset 0).

The definition of A199479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A199479.P4312967222297535368

`A147703((1-A010054(n))*A061579(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A199479

/-- `A147703((1-A010054(n))*A061579(n))` -/
def P4312967222297535368.Spec : Prop :=
  ∀ n, P4312967222297535368.a n = A199479 n

theorem P4312967222297535368.correct : P4312967222297535368.Spec := by
  intro n
  simp only [A199479]

end A199479

/-! ## A199479.P2363176118535897651

`A147703(A061579(n))`
-/

namespace A199479.P2363176118535897651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A061579 n).toNat

end

end A199479.P2363176118535897651

namespace A199479

/-- `A147703(A061579(n))` -/
def P2363176118535897651.Spec : Prop :=
  ∀ n, P2363176118535897651.a n = A199479 n

end A199479

/-! ## A199479.P7591778971164204692

`A147703(A114327(n)+n)`
-/

namespace A199479.P7591778971164204692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A114327 n + (n : ℤ)).toNat

end

end A199479.P7591778971164204692

namespace A199479

/-- `A147703(A114327(n)+n)` -/
def P7591778971164204692.Spec : Prop :=
  ∀ n, P7591778971164204692.a n = A199479 n

end A199479

/-! ## A199479.P14492200752483477199

`A147703(∑[A198954(n)-1])`
-/

namespace A199479.P14492200752483477199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A199479.P14492200752483477199

namespace A199479

/-- `A147703(∑[A198954(n)-1])` -/
def P14492200752483477199.Spec : Prop :=
  ∀ n, P14492200752483477199.a n = A199479 n

end A199479

/-! ## A199479.P1389401324944980327

`A147703(A038722(n+1)-1)`
-/

namespace A199479.P1389401324944980327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A038722 (n + 1) - 1).toNat

end

end A199479.P1389401324944980327

namespace A199479

/-- `A147703(A038722(n+1)-1)` -/
def P1389401324944980327.Spec : Prop :=
  ∀ n, P1389401324944980327.a n = A199479 n

end A199479

/-! ## A199479.P7327599619439816026

`A147703(A093995(n+1)-(n+1))`
-/

namespace A199479.P7327599619439816026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A199479.P7327599619439816026

namespace A199479

/-- `A147703(A093995(n+1)-(n+1))` -/
def P7327599619439816026.Spec : Prop :=
  ∀ n, P7327599619439816026.a n = A199479 n

end A199479

/-! ## A199479.P11646825408069099590

`A147703(A002024(n+1)²-(n+1))`
-/

namespace A199479.P11646825408069099590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A199479.P11646825408069099590

namespace A199479

/-- `A147703(A002024(n+1)²-(n+1))` -/
def P11646825408069099590.Spec : Prop :=
  ∀ n, P11646825408069099590.a n = A199479 n

end A199479

/-! ## A199479.P3151951357350278520

`A147703(A023443(A038722(n+1)))`
-/

namespace A199479.P3151951357350278520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A199479.P3151951357350278520

namespace A199479

/-- `A147703(A023443(A038722(n+1)))` -/
def P3151951357350278520.Spec : Prop :=
  ∀ n, P3151951357350278520.a n = A199479 n

end A199479

/-! ## A199479.P6209615686060382192

`A147703(A057944(n)+A025581(n))`
-/

namespace A199479.P6209615686060382192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (A057944 n + A025581 n).toNat

end

end A199479.P6209615686060382192

namespace A199479

/-- `A147703(A057944(n)+A025581(n))` -/
def P6209615686060382192.Spec : Prop :=
  ∀ n, P6209615686060382192.a n = A199479 n

end A199479

/-!
# A199480: E.g.f. exp(x*(1+log(1+x))/(1-log(1+x))).

The programs for A199480, there is no canonical definition to state claims against.
-/

/-! ## A199480.P8259649538565023235

`A244234((n+1)!+1)`
-/

namespace A199480.P8259649538565023235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244234 (Nat.factorial (n + 1) + 1)

end

end A199480.P8259649538565023235

/-! ## A199480.P2940604272945052277

`A244234(∏[n+1]+1)`
-/

namespace A199480.P2940604272945052277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244234 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A199480.P2940604272945052277

/-!
# A199481: G.f. A(x) satisfies: 1-x = Sum_{n>=0} (-x)^n * A(x)^[n*phi], where phi = (sqrt(5)+1)/2.

The programs for A199481, there is no canonical definition to state claims against.
-/

/-! ## A199481.P17668195028494262282

`A101402(A219312(n)+A032153(n))`
-/

namespace A199481.P17668195028494262282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A219312 n + A032153 n).toNat

end

end A199481.P17668195028494262282

/-! ## A199481.P15877783693634509841

`A049127(n+1)+A025457(A000142(n))`
-/

namespace A199481.P15877783693634509841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049127 (n + 1) + A025457 (A000142 n).toNat

end

end A199481.P15877783693634509841

/-! ## A199481.P12423302259612707691

`A216602(A279557(n))+A049127(n+1)`
-/

namespace A199481.P12423302259612707691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A279557 n).toNat + A049127 (n + 1)

end

end A199481.P12423302259612707691

/-! ## A199481.P17875541485605893419

`A307670(A133031(n+1))+A049127(n+1)`
-/

namespace A199481.P17875541485605893419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307670 (A133031 (n + 1)).toNat + A049127 (n + 1)

end

end A199481.P17875541485605893419

/-!
# A199482: a(n) is defined by exp(x^2*cotan(x)) = Sum_(n>=0) a(n)*x^n/n!^2.

The programs for A199482, there is no canonical definition to state claims against.
-/

/-! ## A199482.P14054038523713666119

`n*A054585(a(n-1)²)` with `a(0)=1`
-/

namespace A199482.P14054038523713666119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A054585 (a (n - 1) ^ 2).toNat

end

end A199482.P14054038523713666119

/-!
# A199483: a(n) = 6*7^n+1.

The programs for A199483, the canonical program `A199483.P12567627494003250871` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199483 has offset 0).

The definition of A199483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*7^n+1` (program `A199483.P12567627494003250871`, by `A199483.P12567627494003250871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199483.P12567627494003250871

`6*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199483

/-- `6*7^n+1` -/
def P12567627494003250871.Spec : Prop :=
  ∀ n, (P12567627494003250871.a n : ℤ) = A199483 n

theorem P12567627494003250871.correct : P12567627494003250871.Spec := by
  intro n
  simp only [A199483]

end A199483

/-! ## A199483.P10626242222229142819

`or(1, Δ[7^n])`
-/

namespace A199483.P10626242222229142819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199483.P10626242222229142819

namespace A199483

/-- `or(1, Δ[7^n])` -/
def P10626242222229142819.Spec : Prop :=
  ∀ n, P10626242222229142819.a n = A199483 n

end A199483

/-! ## A199483.P4366960591532422097

`xor(1, Δ[7^n])`
-/

namespace A199483.P4366960591532422097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A199483.P4366960591532422097

namespace A199483

/-- `xor(1, Δ[7^n])` -/
def P4366960591532422097.Spec : Prop :=
  ∀ n, P4366960591532422097.a n = A199483 n

end A199483

/-! ## A199483.P8414601640050350718

`ogf((7-13x)/(1-8x+7x^2))`
-/

namespace A199483.P8414601640050350718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -13] [1, -8, 7] n

end

end A199483.P8414601640050350718

namespace A199483

/-- `ogf((7-13x)/(1-8x+7x^2))` -/
def P8414601640050350718.Spec : Prop :=
  ∀ n, P8414601640050350718.a n = A199483 n

end A199483

/-! ## A199483.P843997140722939889

`∑[7*a(n-1)]` with `a(0)=7, a(1)=36`
-/

namespace A199483.P843997140722939889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 36] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199483.P843997140722939889

namespace A199483

/-- `∑[7*a(n-1)]` -/
def P843997140722939889.Spec : Prop :=
  ∀ n, (P843997140722939889.a n : ℤ) = A199483 n

end A199483

/-! ## A199483.P6779582893473196173

`abs(6-7*a(n-1))` with `a(0)=7`
-/

namespace A199483.P6779582893473196173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199483.P6779582893473196173

namespace A199483

/-- `abs(6-7*a(n-1))` -/
def P6779582893473196173.Spec : Prop :=
  ∀ n, P6779582893473196173.a n = A199483 n

end A199483

/-! ## A199483.P16370097457435519771

`7*(a(n-1)-6/7)` with `a(0)=7`
-/

namespace A199483.P16370097457435519771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  7 * (a (n - 1) - (6 : ℚ) / 7)

end

end A199483.P16370097457435519771

namespace A199483

/-- `7*(a(n-1)-6/7)` -/
def P16370097457435519771.Spec : Prop :=
  ∀ n, P16370097457435519771.a n = (A199483 n : ℚ)

theorem P16370097457435519771.correct : P16370097457435519771.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199483, Nat.add_sub_cancel, A199483.P16370097457435519771.a, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199483, Nat.add_sub_cancel, A199483.P16370097457435519771.a, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199483

/-! ## A199483.P3671445826324435092

`floor(a(n-1)+6*(a(n-1)-1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199483.P3671445826324435092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 6 * (a (n - 1) - 1)

end

end A199483.P3671445826324435092

namespace A199483

/-- `floor(a(n-1)+6*(a(n-1)-1))` -/
def P3671445826324435092.Spec : Prop :=
  ∀ n, P3671445826324435092.a n = A199483 n

theorem P3671445826324435092.correct : P3671445826324435092.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199483, Nat.add_sub_cancel, A199483.P3671445826324435092.a, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199483, Nat.add_sub_cancel, A199483.P3671445826324435092.a, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199483

/-! ## A199483.P3975201481072234789

`floor(a(n-1)-6*(1-a(n-1)))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A199483.P3975201481072234789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - 6 * (1 - a (n - 1))

end

end A199483.P3975201481072234789

namespace A199483

/-- `floor(a(n-1)-6*(1-a(n-1)))` -/
def P3975201481072234789.Spec : Prop :=
  ∀ n, P3975201481072234789.a n = A199483 n

theorem P3975201481072234789.correct : P3975201481072234789.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199483, Nat.add_sub_cancel, A199483.P3975201481072234789.a, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199483, Nat.add_sub_cancel, A199483.P3975201481072234789.a, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199483

/-! ## A199483.P131253956835276197

`Δ[A226199(n)]`
-/

namespace A199483.P131253956835276197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199483.P131253956835276197

namespace A199483

/-- `Δ[A226199(n)]` -/
def P131253956835276197.Spec : Prop :=
  ∀ n, P131253956835276197.a n = A199483 n

theorem P131253956835276197.correct : P131253956835276197.Spec := by
  intro n
  simp only [A199483, Nat.add_sub_cancel, A199483.P131253956835276197.f1, A199483.P131253956835276197.a, A199483.P12567627494003250871.a, A226199, A226199.P3513308682891619503.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199483

/-! ## A199483.P13012996159790824902

`Δ[A000420(n)+n]`
-/

namespace A199483.P13012996159790824902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199483.P13012996159790824902

namespace A199483

/-- `Δ[A000420(n)+n]` -/
def P13012996159790824902.Spec : Prop :=
  ∀ n, P13012996159790824902.a n = A199483 n

theorem P13012996159790824902.correct : P13012996159790824902.Spec := by
  intro n
  simp only [A199483, Nat.add_sub_cancel, A199483.P13012996159790824902.f1, A199483.P13012996159790824902.a, A199483.P12567627494003250871.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199483

/-! ## A199483.P12060963087942321359

`Δ[A034491(n)+n]`
-/

namespace A199483.P12060963087942321359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034491 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199483.P12060963087942321359

namespace A199483

/-- `Δ[A034491(n)+n]` -/
def P12060963087942321359.Spec : Prop :=
  ∀ n, P12060963087942321359.a n = A199483 n

theorem P12060963087942321359.correct : P12060963087942321359.Spec := by
  intro n
  simp only [A199483, Nat.add_sub_cancel, A199483.P12060963087942321359.f1, A199483.P12060963087942321359.a, A199483.P12567627494003250871.a, A034491, A034491.P8360530145105108237.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199483

/-! ## A199483.P7896793908143926656

`Δ[A024075(n)+1+n]`
-/

namespace A199483.P7896793908143926656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199483.P7896793908143926656

namespace A199483

/-- `Δ[A024075(n)+1+n]` -/
def P7896793908143926656.Spec : Prop :=
  ∀ n, P7896793908143926656.a n = A199483 n

theorem P7896793908143926656.correct : P7896793908143926656.Spec := by
  intro n
  simp only [A199483, Nat.add_sub_cancel, A199483.P7896793908143926656.f1, A199483.P7896793908143926656.a, A199483.P12567627494003250871.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199483

/-! ## A199483.P15148850525240217374

`Δ[A155605(n)-(3^n-n)]`
-/

namespace A199483.P15148850525240217374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155605 n - ((3 ^ n : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199483.P15148850525240217374

namespace A199483

/-- `Δ[A155605(n)-(3^n-n)]` -/
def P15148850525240217374.Spec : Prop :=
  ∀ n, P15148850525240217374.a n = A199483 n

theorem P15148850525240217374.correct : P15148850525240217374.Spec := by
  intro n
  simp only [A199483, Nat.add_sub_cancel, A199483.P15148850525240217374.f1, A199483.P15148850525240217374.a, A199483.P12567627494003250871.a, A155605, A155605.P10722146233848865176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199483

/-!
# A199484: a(n) = (8*7^n+1)/3.

The programs for A199484, the canonical program `A199484.P6885871490618989604` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199484 has offset 0).

The definition of A199484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*7^n+1)/3` (program `A199484.P9650503793508139908`, by `A199484.P9650503793508139908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199484.P9650503793508139908

`(8*7^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199484.P9650503793508139908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * 7 ^ n + 1 : ℚ) / 3

end

end A199484.P9650503793508139908

namespace A199484

/-- `(8*7^n+1)/3` -/
def P9650503793508139908.Spec : Prop :=
  ∀ n, P9650503793508139908.a n = (A199484 n : ℚ)

theorem P9650503793508139908.correct : P9650503793508139908.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199484, Nat.add_sub_cancel, A199484.P9650503793508139908.a, A199484.P6885871490618989604.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199484, Nat.add_sub_cancel, A199484.P9650503793508139908.a, A199484.P6885871490618989604.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199484

/-! ## A199484.P6885871490618989604

`7*a(n-1)-2` with `a(0)=3`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199484

/-- `7*a(n-1)-2` -/
def P6885871490618989604.Spec : Prop :=
  ∀ n, P6885871490618989604.a n = A199484 n

theorem P6885871490618989604.correct : P6885871490618989604.Spec := by
  intro n
  simp only [A199484]

end A199484

/-! ## A199484.P4960086648042882945

`ogf((3-5x)/(1-8x+7x^2))`
-/

namespace A199484.P4960086648042882945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -8, 7] n

end

end A199484.P4960086648042882945

namespace A199484

/-- `ogf((3-5x)/(1-8x+7x^2))` -/
def P4960086648042882945.Spec : Prop :=
  ∀ n, P4960086648042882945.a n = A199484 n

end A199484

/-! ## A199484.P10782692168507558050

`lcm(7, a(n-1))-2` with `a(0)=3`
-/

namespace A199484.P10782692168507558050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 2

end

end A199484.P10782692168507558050

namespace A199484

/-- `lcm(7, a(n-1))-2` -/
def P10782692168507558050.Spec : Prop :=
  ∀ n, P10782692168507558050.a n = A199484 n

end A199484

/-! ## A199484.P554966433449162679

`a(n-1)/(1-6/7)-2` with `a(0)=3`
-/

namespace A199484.P554966433449162679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 2

end

end A199484.P554966433449162679

namespace A199484

/-- `a(n-1)/(1-6/7)-2` -/
def P554966433449162679.Spec : Prop :=
  ∀ n, P554966433449162679.a n = (A199484 n : ℚ)

end A199484

/-! ## A199484.P8212996654466385388

`2*A238275(n)+1`
-/

namespace A199484.P8212996654466385388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238275 n + 1

end

end A199484.P8212996654466385388

namespace A199484

/-- `2*A238275(n)+1` -/
def P8212996654466385388.Spec : Prop :=
  ∀ n, P8212996654466385388.a n = A199484 n

end A199484

/-! ## A199484.P10173282684601823920

`4*A083076(n)-1`
-/

namespace A199484.P10173282684601823920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A083076 n - 1

end

end A199484.P10173282684601823920

namespace A199484

/-- `4*A083076(n)-1` -/
def P10173282684601823920.Spec : Prop :=
  ∀ n, P10173282684601823920.a n = A199484 n

end A199484

/-! ## A199484.P10839732065210175988

`5-2*A165759(n)`
-/

namespace A199484.P10839732065210175988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 2 * A165759 n

end

end A199484.P10839732065210175988

namespace A199484

/-- `5-2*A165759(n)` -/
def P10839732065210175988.Spec : Prop :=
  ∀ n, P10839732065210175988.a n = A199484 n

end A199484

/-! ## A199484.P2513792228087937472

`∑[2*A003950(n)]+1`
-/

namespace A199484.P2513792228087937472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A199484.P2513792228087937472

namespace A199484

/-- `∑[2*A003950(n)]+1` -/
def P2513792228087937472.Spec : Prop :=
  ∀ n, P2513792228087937472.a n = A199484 n

end A199484

/-! ## A199484.P16788343890626112911

`A304826(n+1)/4+1`
-/

namespace A199484.P16788343890626112911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304826 (n + 1) : ℚ) / 4 + 1

end

end A199484.P16788343890626112911

namespace A199484

/-- `A304826(n+1)/4+1` -/
def P16788343890626112911.Spec : Prop :=
  ∀ n, P16788343890626112911.a n = (A199484 n : ℚ)

end A199484

/-! ## A199484.P5313491257367647471

`4*A125823(n+1)+3`
-/

namespace A199484.P5313491257367647471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A125823 (n + 1) + 3

end

end A199484.P5313491257367647471

namespace A199484

/-- `4*A125823(n+1)+3` -/
def P5313491257367647471.Spec : Prop :=
  ∀ n, P5313491257367647471.a n = A199484 n

end A199484

/-! ## A199484.P1239364099962109305

`A199417(n)+A023000(n+1)`
-/

namespace A199484.P1239364099962109305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n + A023000 (n + 1)

end

end A199484.P1239364099962109305

namespace A199484

/-- `A199417(n)+A023000(n+1)` -/
def P1239364099962109305.Spec : Prop :=
  ∀ n, P1239364099962109305.a n = A199484 n

end A199484

/-! ## A199484.P384264129481241209

`A034494(n+1)-A083067(n)`
-/

namespace A199484.P384264129481241209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 (n + 1) - A083067 n

end

end A199484.P384264129481241209

namespace A199484

/-- `A034494(n+1)-A083067(n)` -/
def P384264129481241209.Spec : Prop :=
  ∀ n, P384264129481241209.a n = A199484 n

end A199484

/-! ## A199484.P6996163013000091483

`A083076(n)+2*A000420(n)`
-/

namespace A199484.P6996163013000091483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + 2 * A000420 n

end

end A199484.P6996163013000091483

namespace A199484

/-- `A083076(n)+2*A000420(n)` -/
def P6996163013000091483.Spec : Prop :=
  ∀ n, P6996163013000091483.a n = A199484 n

end A199484

/-! ## A199484.P16663349487454996421

`A083076(n)+A208704(n+1)/2`
-/

namespace A199484.P16663349487454996421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083076 n : ℚ) + (A208704 (n + 1) : ℚ) / 2

end

end A199484.P16663349487454996421

namespace A199484

/-- `A083076(n)+A208704(n+1)/2` -/
def P16663349487454996421.Spec : Prop :=
  ∀ n, P16663349487454996421.a n = (A199484 n : ℚ)

end A199484

/-! ## A199484.P4998129597917162445

`A083076(n+1)-A270471(n+1)/2`
-/

namespace A199484.P4998129597917162445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083076 (n + 1) : ℚ) - (A270471 (n + 1) : ℚ) / 2

end

end A199484.P4998129597917162445

namespace A199484

/-- `A083076(n+1)-A270471(n+1)/2` -/
def P4998129597917162445.Spec : Prop :=
  ∀ n, P4998129597917162445.a n = (A199484 n : ℚ)

end A199484

/-! ## A199484.P5429653770588373759

`A083076(n)+A193577(n)-A169634(n)`
-/

namespace A199484.P5429653770588373759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + (A193577 n - A169634 n)

end

end A199484.P5429653770588373759

namespace A199484

/-- `A083076(n)+A193577(n)-A169634(n)` -/
def P5429653770588373759.Spec : Prop :=
  ∀ n, P5429653770588373759.a n = A199484 n

end A199484

/-!
# A199485: a(n) = 8*7^n+1.

The programs for A199485, the canonical program `A199485.P2526462473916779298` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199485 has offset 0).

The definition of A199485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*7^n+1` (program `A199485.P2526462473916779298`, by `A199485.P2526462473916779298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199485.P2526462473916779298

`8*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199485

/-- `8*7^n+1` -/
def P2526462473916779298.Spec : Prop :=
  ∀ n, (P2526462473916779298.a n : ℤ) = A199485 n

theorem P2526462473916779298.correct : P2526462473916779298.Spec := by
  intro n
  simp only [A199485]

end A199485

/-! ## A199485.P1633527549842925169

`3*A199484(n)`
-/

namespace A199485.P1633527549842925169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199484 n

end

end A199485.P1633527549842925169

namespace A199485

/-- `3*A199484(n)` -/
def P1633527549842925169.Spec : Prop :=
  ∀ n, P1633527549842925169.a n = A199485 n

end A199485

/-! ## A199485.P16494162095017802966

`or(1, 8*7^n)`
-/

namespace A199485.P16494162095017802966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * 7 ^ n)

end

end A199485.P16494162095017802966

namespace A199485

/-- `or(1, 8*7^n)` -/
def P16494162095017802966.Spec : Prop :=
  ∀ n, (P16494162095017802966.a n : ℤ) = A199485 n

end A199485

/-! ## A199485.P1913435022098221500

`xor(1, 8*7^n)`
-/

namespace A199485.P1913435022098221500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * 7 ^ n)

end

end A199485.P1913435022098221500

namespace A199485

/-- `xor(1, 8*7^n)` -/
def P1913435022098221500.Spec : Prop :=
  ∀ n, (P1913435022098221500.a n : ℤ) = A199485 n

end A199485

/-! ## A199485.P15166886526804133795

`ogf((9-15x)/(1-8x+7x^2))`
-/

namespace A199485.P15166886526804133795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -15] [1, -8, 7] n

end

end A199485.P15166886526804133795

namespace A199485

/-- `ogf((9-15x)/(1-8x+7x^2))` -/
def P15166886526804133795.Spec : Prop :=
  ∀ n, P15166886526804133795.a n = A199485 n

end A199485

/-! ## A199485.P81566034757555843

`abs(6-7*a(n-1))` with `a(0)=9`
-/

namespace A199485.P81566034757555843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199485.P81566034757555843

namespace A199485

/-- `abs(6-7*a(n-1))` -/
def P81566034757555843.Spec : Prop :=
  ∀ n, P81566034757555843.a n = A199485 n

end A199485

/-! ## A199485.P15942470456144993610

`and(7*a(n-1), -7)` with `a(0)=9`
-/

namespace A199485.P15942470456144993610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  Int.land (7 * a (n - 1)) (-7)

end

end A199485.P15942470456144993610

namespace A199485

/-- `and(7*a(n-1), -7)` -/
def P15942470456144993610.Spec : Prop :=
  ∀ n, P15942470456144993610.a n = A199485 n

end A199485

/-! ## A199485.P15694534943688801534

`7*(a(n-1)-6/7)` with `a(0)=9`
-/

namespace A199485.P15694534943688801534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  7 * (a (n - 1) - (6 : ℚ) / 7)

end

end A199485.P15694534943688801534

namespace A199485

/-- `7*(a(n-1)-6/7)` -/
def P15694534943688801534.Spec : Prop :=
  ∀ n, P15694534943688801534.a n = (A199485 n : ℚ)

theorem P15694534943688801534.correct : P15694534943688801534.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199485, Nat.add_sub_cancel, A199485.P15694534943688801534.a, A199485.P2526462473916779298.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199485, Nat.add_sub_cancel, A199485.P15694534943688801534.a, A199485.P2526462473916779298.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199485

/-! ## A199485.P3765765361680573522

`Δ[A238275(n)+n]`
-/

namespace A199485.P3765765361680573522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238275 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199485.P3765765361680573522

namespace A199485

/-- `Δ[A238275(n)+n]` -/
def P3765765361680573522.Spec : Prop :=
  ∀ n, P3765765361680573522.a n = A199485 n

end A199485

/-! ## A199485.P2893604631836010140

`Δ[n-A165759(n)]`
-/

namespace A199485.P2893604631836010140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A165759 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199485.P2893604631836010140

namespace A199485

/-- `Δ[n-A165759(n)]` -/
def P2893604631836010140.Spec : Prop :=
  ∀ n, P2893604631836010140.a n = A199485 n

end A199485

/-! ## A199485.P3329109060681936301

`Δ[∑[A003950(n)]+n]`
-/

namespace A199485.P3329109060681936301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199485.P3329109060681936301

namespace A199485

/-- `Δ[∑[A003950(n)]+n]` -/
def P3329109060681936301.Spec : Prop :=
  ∀ n, P3329109060681936301.a n = A199485 n

end A199485

/-! ## A199485.P7493891826297241633

`abs(2-Δ[n-A208704(n+1)/3])`
-/

namespace A199485.P7493891826297241633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A208704 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A199485.P7493891826297241633

namespace A199485

/-- `abs(2-Δ[n-A208704(n+1)/3])` -/
def P7493891826297241633.Spec : Prop :=
  ∀ n, P7493891826297241633.a n = (A199485 n : ℚ)

end A199485

/-!
# A199486: a(n) = (9*7^n+1)/2.

The programs for A199486, the canonical program `A199486.P17796831040087944900` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199486 has offset 0).

The definition of A199486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9*7^n+1)/2` (program `A199486.P6520831795924621155`, by `A199486.P6520831795924621155.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199486.P6520831795924621155

`(9*7^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199486.P6520831795924621155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * 7 ^ n + 1 : ℚ) / 2

end

end A199486.P6520831795924621155

namespace A199486

/-- `(9*7^n+1)/2` -/
def P6520831795924621155.Spec : Prop :=
  ∀ n, P6520831795924621155.a n = (A199486 n : ℚ)

theorem P6520831795924621155.correct : P6520831795924621155.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199486, Nat.add_sub_cancel, A199486.P6520831795924621155.a, A199486.P17796831040087944900.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199486, Nat.add_sub_cancel, A199486.P6520831795924621155.a, A199486.P17796831040087944900.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199486

/-! ## A199486.P17796831040087944900

`7*a(n-1)-3` with `a(0)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199486

/-- `7*a(n-1)-3` -/
def P17796831040087944900.Spec : Prop :=
  ∀ n, P17796831040087944900.a n = A199486 n

theorem P17796831040087944900.correct : P17796831040087944900.Spec := by
  intro n
  simp only [A199486]

end A199486

/-! ## A199486.P8772983819899818310

`ogf((5-8x)/(1-8x+7x^2))`
-/

namespace A199486.P8772983819899818310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -8] [1, -8, 7] n

end

end A199486.P8772983819899818310

namespace A199486

/-- `ogf((5-8x)/(1-8x+7x^2))` -/
def P8772983819899818310.Spec : Prop :=
  ∀ n, P8772983819899818310.a n = A199486 n

end A199486

/-! ## A199486.P12196981882065722118

`lcm(7, a(n-1))-3` with `a(0)=5`
-/

namespace A199486.P12196981882065722118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 3

end

end A199486.P12196981882065722118

namespace A199486

/-- `lcm(7, a(n-1))-3` -/
def P12196981882065722118.Spec : Prop :=
  ∀ n, P12196981882065722118.a n = A199486 n

end A199486

/-! ## A199486.P13917974313681663693

`a(n-1)/(1-6/7)-3` with `a(0)=5`
-/

namespace A199486.P13917974313681663693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 3

end

end A199486.P13917974313681663693

namespace A199486

/-- `a(n-1)/(1-6/7)-3` -/
def P13917974313681663693.Spec : Prop :=
  ∀ n, P13917974313681663693.a n = (A199486 n : ℚ)

end A199486

/-! ## A199486.P7491566646945061619

`A198690(n)/2+1`
-/

namespace A199486.P7491566646945061619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198690 n : ℚ) / 2 + 1

end

end A199486.P7491566646945061619

namespace A199486

/-- `A198690(n)/2+1` -/
def P7491566646945061619.Spec : Prop :=
  ∀ n, P7491566646945061619.a n = (A199486 n : ℚ)

theorem P7491566646945061619.correct : P7491566646945061619.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199486, Nat.add_sub_cancel, A199486.P7491566646945061619.a, A199486.P17796831040087944900.a, A198690, A198690.P10161993839040080843.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199486, Nat.add_sub_cancel, A199486.P7491566646945061619.a, A199486.P17796831040087944900.a, A198690, A198690.P10161993839040080843.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199486

/-! ## A199486.P12347367112552993154

`3*A199417(n)-1`
-/

namespace A199486.P12347367112552993154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199417 n - 1

end

end A199486.P12347367112552993154

namespace A199486

/-- `3*A199417(n)-1` -/
def P12347367112552993154.Spec : Prop :=
  ∀ n, P12347367112552993154.a n = A199486 n

end A199486

/-! ## A199486.P18264587698125930083

`abs(A297180(3*n+1)-(5*7^n+1))`
-/

namespace A199486.P18264587698125930083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A297180 (3 * n + 1) - (5 * 7 ^ n + 1 : ℤ)|

end

end A199486.P18264587698125930083

namespace A199486

/-- `abs(A297180(3*n+1)-(5*7^n+1))` -/
def P18264587698125930083.Spec : Prop :=
  ∀ n, P18264587698125930083.a n = A199486 n

end A199486

/-! ## A199486.P5401914139670216532

`A199419(n)+A120741(n)`
-/

namespace A199486.P5401914139670216532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199419 n + A120741 n

end

end A199486.P5401914139670216532

namespace A199486

/-- `A199419(n)+A120741(n)` -/
def P5401914139670216532.Spec : Prop :=
  ∀ n, P5401914139670216532.a n = A199486 n

end A199486

/-! ## A199486.P18199902872833066343

`A199417(n)+A169634(n)`
-/

namespace A199486.P18199902872833066343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n + A169634 n

end

end A199486.P18199902872833066343

namespace A199486

/-- `A199417(n)+A169634(n)` -/
def P18199902872833066343.Spec : Prop :=
  ∀ n, P18199902872833066343.a n = A199486 n

end A199486

/-! ## A199486.P6891009214804777848

`A199483(n)-A199417(n)`
-/

namespace A199486.P6891009214804777848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199483 n - A199417 n

end

end A199486.P6891009214804777848

namespace A199486

/-- `A199483(n)-A199417(n)` -/
def P6891009214804777848.Spec : Prop :=
  ∀ n, P6891009214804777848.a n = A199486 n

end A199486

/-! ## A199486.P621460900126495658

`A199488(n)-A199491(n)`
-/

namespace A199486.P621460900126495658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199488 n - A199491 n

end

end A199486.P621460900126495658

namespace A199486

/-- `A199488(n)-A199491(n)` -/
def P621460900126495658.Spec : Prop :=
  ∀ n, P621460900126495658.a n = A199486 n

end A199486

/-! ## A199486.P8122417898352017804

`A120741(n+1)+A034491(n)`
-/

namespace A199486.P8122417898352017804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) + A034491 n

end

end A199486.P8122417898352017804

namespace A199486

/-- `A120741(n+1)+A034491(n)` -/
def P8122417898352017804.Spec : Prop :=
  ∀ n, P8122417898352017804.a n = A199486 n

end A199486

/-! ## A199486.P16132107657487999166

`A083076(n+1)-A023000(n)`
-/

namespace A199486.P16132107657487999166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 (n + 1) - A023000 n

end

end A199486.P16132107657487999166

namespace A199486

/-- `A083076(n+1)-A023000(n)` -/
def P16132107657487999166.Spec : Prop :=
  ∀ n, P16132107657487999166.a n = A199486 n

end A199486

/-! ## A199486.P4530806521122344240

`A198687(n)+2-A034494(n)`
-/

namespace A199486.P4530806521122344240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198687 n + (2 - A034494 n)

end

end A199486.P4530806521122344240

namespace A199486

/-- `A198687(n)+2-A034494(n)` -/
def P4530806521122344240.Spec : Prop :=
  ∀ n, P4530806521122344240.a n = A199486 n

end A199486

/-! ## A199486.P7823497342320660960

`A199421(n)+2*A000420(n)`
-/

namespace A199486.P7823497342320660960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199421 n + 2 * A000420 n

end

end A199486.P7823497342320660960

namespace A199486

/-- `A199421(n)+2*A000420(n)` -/
def P7823497342320660960.Spec : Prop :=
  ∀ n, P7823497342320660960.a n = A199486 n

end A199486

/-! ## A199486.P13468708276620074136

`A198692(n)/2-A024075(n)`
-/

namespace A199486.P13468708276620074136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198692 n : ℚ) / 2 - (A024075 n : ℚ)

end

end A199486.P13468708276620074136

namespace A199486

/-- `A198692(n)/2-A024075(n)` -/
def P13468708276620074136.Spec : Prop :=
  ∀ n, P13468708276620074136.a n = (A199486 n : ℚ)

theorem P13468708276620074136.correct : P13468708276620074136.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199486, Nat.add_sub_cancel, A199486.P13468708276620074136.a, A199486.P17796831040087944900.a, A024075, A024075.P909197775632093808.a, A198692, A198692.P8895989276105564419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199486, Nat.add_sub_cancel, A199486.P13468708276620074136.a, A199486.P17796831040087944900.a, A024075, A024075.P909197775632093808.a, A198692, A198692.P8895989276105564419.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199486

/-! ## A199486.P4615741605736649231

`A199483(n)-A199418(n)/2`
-/

namespace A199486.P4615741605736649231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199483 n : ℚ) - (A199418 n : ℚ) / 2

end

end A199486.P4615741605736649231

namespace A199486

/-- `A199483(n)-A199418(n)/2` -/
def P4615741605736649231.Spec : Prop :=
  ∀ n, P4615741605736649231.a n = (A199486 n : ℚ)

theorem P4615741605736649231.correct : P4615741605736649231.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199486, Nat.add_sub_cancel, A199486.P4615741605736649231.a, A199486.P17796831040087944900.a, A199418, A199418.P15994950680946096815.a, A199483, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199486, Nat.add_sub_cancel, A199486.P4615741605736649231.a, A199486.P17796831040087944900.a, A199418, A199418.P15994950680946096815.a, A199483, A199483.P12567627494003250871.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199486

/-! ## A199486.P13787224950545562594

`Δ[(A226199(n)+A034494(n))/2]`
-/

namespace A199486.P13787224950545562594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226199 n + A034494 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199486.P13787224950545562594

namespace A199486

/-- `Δ[(A226199(n)+A034494(n))/2]` -/
def P13787224950545562594.Spec : Prop :=
  ∀ n, P13787224950545562594.a n = (A199486 n : ℚ)

end A199486

/-!
# A199487: a(n) = 9*7^n+1.

The programs for A199487, the canonical program `A199487.P11743803444286523681` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199487 has offset 0).

The definition of A199487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*7^n+1` (program `A199487.P11743803444286523681`, by `A199487.P11743803444286523681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199487.P11743803444286523681

`9*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199487

/-- `9*7^n+1` -/
def P11743803444286523681.Spec : Prop :=
  ∀ n, (P11743803444286523681.a n : ℤ) = A199487 n

theorem P11743803444286523681.correct : P11743803444286523681.Spec := by
  intro n
  simp only [A199487]

end A199487

/-! ## A199487.P9829498091438626316

`ogf((10-16x)/(1-8x+7x^2))`
-/

namespace A199487.P9829498091438626316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -16] [1, -8, 7] n

end

end A199487.P9829498091438626316

namespace A199487

/-- `ogf((10-16x)/(1-8x+7x^2))` -/
def P9829498091438626316.Spec : Prop :=
  ∀ n, P9829498091438626316.a n = A199487 n

end A199487

/-! ## A199487.P17408092140771874389

`abs(6-7*a(n-1))` with `a(0)=10`
-/

namespace A199487.P17408092140771874389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199487.P17408092140771874389

namespace A199487

/-- `abs(6-7*a(n-1))` -/
def P17408092140771874389.Spec : Prop :=
  ∀ n, P17408092140771874389.a n = A199487 n

end A199487

/-! ## A199487.P18117403490442703577

`7*(a(n-1)-6/7)` with `a(0)=10`
-/

namespace A199487.P18117403490442703577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  7 * (a (n - 1) - (6 : ℚ) / 7)

end

end A199487.P18117403490442703577

namespace A199487

/-- `7*(a(n-1)-6/7)` -/
def P18117403490442703577.Spec : Prop :=
  ∀ n, P18117403490442703577.a n = (A199487 n : ℚ)

theorem P18117403490442703577.correct : P18117403490442703577.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199487, Nat.add_sub_cancel, A199487.P18117403490442703577.a, A199487.P11743803444286523681.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199487, Nat.add_sub_cancel, A199487.P18117403490442703577.a, A199487.P11743803444286523681.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199487

/-! ## A199487.P14771600043465600749

`xor(4, 7*a(n-1)-2)` with `a(0)=10`
-/

namespace A199487.P14771600043465600749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.xor 4 (7 * a (n - 1) - 2)

end

end A199487.P14771600043465600749

namespace A199487

/-- `xor(4, 7*a(n-1)-2)` -/
def P14771600043465600749.Spec : Prop :=
  ∀ n, P14771600043465600749.a n = A199487 n

end A199487

/-! ## A199487.P13841195310174443435

`2*A199486(n)`
-/

namespace A199487.P13841195310174443435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199486 n

end

end A199487.P13841195310174443435

namespace A199487

/-- `2*A199486(n)` -/
def P13841195310174443435.Spec : Prop :=
  ∀ n, P13841195310174443435.a n = A199487 n

end A199487

/-! ## A199487.P7495672449290997502

`Δ[A199417(n)+n]`
-/

namespace A199487.P7495672449290997502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199417 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199487.P7495672449290997502

namespace A199487

/-- `Δ[A199417(n)+n]` -/
def P7495672449290997502.Spec : Prop :=
  ∀ n, P7495672449290997502.a n = A199487 n

end A199487

/-! ## A199487.P15634162245397307430

`lcm(2, A198690(n)+2)`
-/

namespace A199487.P15634162245397307430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A198690 n + 2)

end

end A199487.P15634162245397307430

namespace A199487

/-- `lcm(2, A198690(n)+2)` -/
def P15634162245397307430.Spec : Prop :=
  ∀ n, (P15634162245397307430.a n : ℤ) = A199487 n

end A199487

/-! ## A199487.P17601298122582116060

`Δ[Δ[A244975(n)]+n]`
-/

namespace A199487.P17601298122582116060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199487.P17601298122582116060

namespace A199487

/-- `Δ[Δ[A244975(n)]+n]` -/
def P17601298122582116060.Spec : Prop :=
  ∀ n, P17601298122582116060.a n = A199487 n

end A199487

/-! ## A199487.P16524906750801533252

`Δ[3*A034494(n)+n]`
-/

namespace A199487.P16524906750801533252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034494 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199487.P16524906750801533252

namespace A199487

/-- `Δ[3*A034494(n)+n]` -/
def P16524906750801533252.Spec : Prop :=
  ∀ n, P16524906750801533252.a n = A199487 n

end A199487

/-! ## A199487.P10065879605228239099

`Δ[A226199(n)+A034494(n)]`
-/

namespace A199487.P10065879605228239099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226199 n + A034494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199487.P10065879605228239099

namespace A199487

/-- `Δ[A226199(n)+A034494(n)]` -/
def P10065879605228239099.Spec : Prop :=
  ∀ n, P10065879605228239099.a n = A199487 n

end A199487

/-! ## A199487.P18061117547364884235

`2*(A199419(n)+A120741(n))`
-/

namespace A199487.P18061117547364884235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199419 n + A120741 n)

end

end A199487.P18061117547364884235

namespace A199487

/-- `2*(A199419(n)+A120741(n))` -/
def P18061117547364884235.Spec : Prop :=
  ∀ n, P18061117547364884235.a n = A199487 n

end A199487

/-! ## A199487.P16629269157741125071

`2*(A199417(n)+A169634(n))`
-/

namespace A199487.P16629269157741125071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199417 n + A169634 n)

end

end A199487.P16629269157741125071

namespace A199487

/-- `2*(A199417(n)+A169634(n))` -/
def P16629269157741125071.Spec : Prop :=
  ∀ n, P16629269157741125071.a n = A199487 n

end A199487

/-! ## A199487.P4306924090957821631

`2*(A199483(n)-A199417(n))`
-/

namespace A199487.P4306924090957821631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199483 n - A199417 n)

end

end A199487.P4306924090957821631

namespace A199487

/-- `2*(A199483(n)-A199417(n))` -/
def P4306924090957821631.Spec : Prop :=
  ∀ n, P4306924090957821631.a n = A199487 n

end A199487

/-! ## A199487.P6099363112221566873

`2*(A199488(n)-A199491(n))`
-/

namespace A199487.P6099363112221566873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199488 n - A199491 n)

end

end A199487.P6099363112221566873

namespace A199487

/-- `2*(A199488(n)-A199491(n))` -/
def P6099363112221566873.Spec : Prop :=
  ∀ n, P6099363112221566873.a n = A199487 n

end A199487

/-! ## A199487.P14388042652321497853

`Δ[A297180(A016777(n)+1)+n]`
-/

namespace A199487.P14388042652321497853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (A016777 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199487.P14388042652321497853

namespace A199487

/-- `Δ[A297180(A016777(n)+1)+n]` -/
def P14388042652321497853.Spec : Prop :=
  ∀ n, P14388042652321497853.a n = A199487 n

end A199487

/-!
# A199488: a(n) = 10*7^n+1.

The programs for A199488, the canonical program `A199488.P1470934944725990418` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199488 has offset 0).

The definition of A199488 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*7^n+1` (program `A199488.P1470934944725990418`, by `A199488.P1470934944725990418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199488.P1470934944725990418

`10*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199488

/-- `10*7^n+1` -/
def P1470934944725990418.Spec : Prop :=
  ∀ n, (P1470934944725990418.a n : ℤ) = A199488 n

theorem P1470934944725990418.correct : P1470934944725990418.Spec := by
  intro n
  simp only [A199488]

end A199488

/-! ## A199488.P18369276852741226581

`or(1, 10*7^n)`
-/

namespace A199488.P18369276852741226581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 * 7 ^ n)

end

end A199488.P18369276852741226581

namespace A199488

/-- `or(1, 10*7^n)` -/
def P18369276852741226581.Spec : Prop :=
  ∀ n, (P18369276852741226581.a n : ℤ) = A199488 n

end A199488

/-! ## A199488.P5653229978478749149

`xor(1, 10*7^n)`
-/

namespace A199488.P5653229978478749149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * 7 ^ n)

end

end A199488.P5653229978478749149

namespace A199488

/-- `xor(1, 10*7^n)` -/
def P5653229978478749149.Spec : Prop :=
  ∀ n, (P5653229978478749149.a n : ℤ) = A199488 n

end A199488

/-! ## A199488.P13233594603188405153

`ogf((11-17x)/(1-8x+7x^2))`
-/

namespace A199488.P13233594603188405153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -17] [1, -8, 7] n

end

end A199488.P13233594603188405153

namespace A199488

/-- `ogf((11-17x)/(1-8x+7x^2))` -/
def P13233594603188405153.Spec : Prop :=
  ∀ n, P13233594603188405153.a n = A199488 n

end A199488

/-! ## A199488.P3231649780895340940

`Δ[A199420(n)+n]`
-/

namespace A199488.P3231649780895340940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199420 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199488.P3231649780895340940

namespace A199488

/-- `Δ[A199420(n)+n]` -/
def P3231649780895340940.Spec : Prop :=
  ∀ n, P3231649780895340940.a n = A199488 n

end A199488

/-! ## A199488.P13237206838579250143

`Δ[5*A125725(n+1)+n]`
-/

namespace A199488.P13237206838579250143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A125725 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199488.P13237206838579250143

namespace A199488

/-- `Δ[5*A125725(n+1)+n]` -/
def P13237206838579250143.Spec : Prop :=
  ∀ n, P13237206838579250143.a n = A199488 n

end A199488

/-! ## A199488.P11112380258697008958

`Δ[A083076(n)+A000420(n)+n]`
-/

namespace A199488.P11112380258697008958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + A000420 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199488.P11112380258697008958

namespace A199488

/-- `Δ[A083076(n)+A000420(n)+n]` -/
def P11112380258697008958.Spec : Prop :=
  ∀ n, P11112380258697008958.a n = A199488 n

end A199488

/-! ## A199488.P15597034410252840915

`(10*A000420(n)+1)%A180035(2*n+3)`
-/

namespace A199488.P15597034410252840915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * A000420 n + 1) (A180035 (2 * n + 3))

end

end A199488.P15597034410252840915

namespace A199488

/-- `(10*A000420(n)+1)%A180035(2*n+3)` -/
def P15597034410252840915.Spec : Prop :=
  ∀ n, P15597034410252840915.a n = A199488 n

end A199488

/-!
# A199489: a(n) = (11*7^n + 1)/6.

The programs for A199489, the canonical program `A199489.P14455153723493936655` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199489 has offset 0).

The definition of A199489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*7^n+1)/6` (program `A199489.P12475154724806794075`, by `A199489.P12475154724806794075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199489.P14455153723493936655

`7*a(n-1)-1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199489

/-- `7*a(n-1)-1` -/
def P14455153723493936655.Spec : Prop :=
  ∀ n, P14455153723493936655.a n = A199489 n

theorem P14455153723493936655.correct : P14455153723493936655.Spec := by
  intro n
  simp only [A199489]

end A199489

/-! ## A199489.P12475154724806794075

`(11*7^n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199489.P12475154724806794075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 7 ^ n + 1 : ℚ) / 6

end

end A199489.P12475154724806794075

namespace A199489

/-- `(11*7^n+1)/6` -/
def P12475154724806794075.Spec : Prop :=
  ∀ n, P12475154724806794075.a n = (A199489 n : ℚ)

theorem P12475154724806794075.correct : P12475154724806794075.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199489, Nat.add_sub_cancel, A199489.P12475154724806794075.a, A199489.P14455153723493936655.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199489, Nat.add_sub_cancel, A199489.P12475154724806794075.a, A199489.P14455153723493936655.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199489

/-! ## A199489.P9750115361750734906

`ogf((2-3x)/(1-8x+7x^2))`
-/

namespace A199489.P9750115361750734906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -8, 7] n

end

end A199489.P9750115361750734906

namespace A199489

/-- `ogf((2-3x)/(1-8x+7x^2))` -/
def P9750115361750734906.Spec : Prop :=
  ∀ n, P9750115361750734906.a n = A199489 n

end A199489

/-! ## A199489.P9477564664075306701

`lcm(7, a(n-1))-1` with `a(0)=2`
-/

namespace A199489.P9477564664075306701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 1

end

end A199489.P9477564664075306701

namespace A199489

/-- `lcm(7, a(n-1))-1` -/
def P9477564664075306701.Spec : Prop :=
  ∀ n, P9477564664075306701.a n = A199489 n

end A199489

/-! ## A199489.P9442628182817036802

`∑[A270471(n)+7^n]`
-/

namespace A199489.P9442628182817036802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270471 n + (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199489.P9442628182817036802

namespace A199489

/-- `∑[A270471(n)+7^n]` -/
def P9442628182817036802.Spec : Prop :=
  ∀ n, P9442628182817036802.a n = A199489 n

end A199489

/-! ## A199489.P6662619692160915077

`ceil(A198692(n)/6)`
-/

namespace A199489.P6662619692160915077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198692 n : ℚ) / 6⌉

end

end A199489.P6662619692160915077

namespace A199489

/-- `ceil(A198692(n)/6)` -/
def P6662619692160915077.Spec : Prop :=
  ∀ n, P6662619692160915077.a n = A199489 n

end A199489

/-!
# A199490: a(n) = (11*7^n + 1)/3.

The programs for A199490, the canonical program `A199490.P17000720436538953757` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199490 has offset 0).

The definition of A199490 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*7^n+1)/3` (program `A199490.P5490210691222296604`, by `A199490.P5490210691222296604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199490.P5490210691222296604

`(11*7^n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199490.P5490210691222296604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 7 ^ n + 1 : ℚ) / 3

end

end A199490.P5490210691222296604

namespace A199490

/-- `(11*7^n+1)/3` -/
def P5490210691222296604.Spec : Prop :=
  ∀ n, P5490210691222296604.a n = (A199490 n : ℚ)

theorem P5490210691222296604.correct : P5490210691222296604.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199490, Nat.add_sub_cancel, A199490.P5490210691222296604.a, A199490.P17000720436538953757.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199490, Nat.add_sub_cancel, A199490.P5490210691222296604.a, A199490.P17000720436538953757.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199490

/-! ## A199490.P17000720436538953757

`7*a(n-1)-2` with `a(0)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199490

/-- `7*a(n-1)-2` -/
def P17000720436538953757.Spec : Prop :=
  ∀ n, P17000720436538953757.a n = A199490 n

theorem P17000720436538953757.correct : P17000720436538953757.Spec := by
  intro n
  simp only [A199490]

end A199490

/-! ## A199490.P4490518600554979761

`2*A199489(n)`
-/

namespace A199490.P4490518600554979761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199489 n

end

end A199490.P4490518600554979761

namespace A199490

/-- `2*A199489(n)` -/
def P4490518600554979761.Spec : Prop :=
  ∀ n, P4490518600554979761.a n = A199490 n

end A199490

/-! ## A199490.P11948864450582483271

`ogf((4-6x)/(1-8x+7x^2))`
-/

namespace A199490.P11948864450582483271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6] [1, -8, 7] n

end

end A199490.P11948864450582483271

namespace A199490

/-- `ogf((4-6x)/(1-8x+7x^2))` -/
def P11948864450582483271.Spec : Prop :=
  ∀ n, P11948864450582483271.a n = A199490 n

end A199490

/-! ## A199490.P7496658072953539414

`lcm(7, a(n-1))-2` with `a(0)=4`
-/

namespace A199490.P7496658072953539414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 2

end

end A199490.P7496658072953539414

namespace A199490

/-- `lcm(7, a(n-1))-2` -/
def P7496658072953539414.Spec : Prop :=
  ∀ n, P7496658072953539414.a n = A199490 n

end A199490

/-! ## A199490.P5115533287543727929

`a(n-1)/(1-6/7)-2` with `a(0)=4`
-/

namespace A199490.P5115533287543727929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 2

end

end A199490.P5115533287543727929

namespace A199490

/-- `a(n-1)/(1-6/7)-2` -/
def P5115533287543727929.Spec : Prop :=
  ∀ n, P5115533287543727929.a n = (A199490 n : ℚ)

end A199490

/-! ## A199490.P17290187306584127190

`ceil(A198692(n)/3)`
-/

namespace A199490.P17290187306584127190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198692 n : ℚ) / 3⌉

end

end A199490.P17290187306584127190

namespace A199490

/-- `ceil(A198692(n)/3)` -/
def P17290187306584127190.Spec : Prop :=
  ∀ n, P17290187306584127190.a n = A199490 n

end A199490

/-! ## A199490.P9993297534929262450

`2/3*A199491(n)`
-/

namespace A199490.P9993297534929262450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A199491 n : ℚ)

end

end A199490.P9993297534929262450

namespace A199490

/-- `2/3*A199491(n)` -/
def P9993297534929262450.Spec : Prop :=
  ∀ n, P9993297534929262450.a n = (A199490 n : ℚ)

end A199490

/-! ## A199490.P5013652608962038925

`ceil(11/3*A000420(n))`
-/

namespace A199490.P5013652608962038925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 : ℚ) / 3 * (A000420 n : ℚ)⌉

end

end A199490.P5013652608962038925

namespace A199490

/-- `ceil(11/3*A000420(n))` -/
def P5013652608962038925.Spec : Prop :=
  ∀ n, P5013652608962038925.a n = A199490 n

end A199490

/-! ## A199490.P5161354924392037005

`A169634(n)+A083076(n)`
-/

namespace A199490.P5161354924392037005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169634 n + A083076 n

end

end A199490.P5161354924392037005

namespace A199490

/-- `A169634(n)+A083076(n)` -/
def P5161354924392037005.Spec : Prop :=
  ∀ n, P5161354924392037005.a n = A199490 n

end A199490

/-! ## A199490.P9109174599448306312

`A199491(n)-A199489(n)`
-/

namespace A199490.P9109174599448306312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199491 n - A199489 n

end

end A199490.P9109174599448306312

namespace A199490

/-- `A199491(n)-A199489(n)` -/
def P9109174599448306312.Spec : Prop :=
  ∀ n, P9109174599448306312.a n = A199490 n

end A199490

/-! ## A199490.P10701989435462213577

`A083076(n+1)-A000420(n)`
-/

namespace A199490.P10701989435462213577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 (n + 1) - A000420 n

end

end A199490.P10701989435462213577

namespace A199490

/-- `A083076(n+1)-A000420(n)` -/
def P10701989435462213577.Spec : Prop :=
  ∀ n, P10701989435462213577.a n = A199490 n

end A199490

/-! ## A199490.P6670391465096918716

`A083076(n)+3*A000420(n)`
-/

namespace A199490.P6670391465096918716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 n + 3 * A000420 n

end

end A199490.P6670391465096918716

namespace A199490

/-- `A083076(n)+3*A000420(n)` -/
def P6670391465096918716.Spec : Prop :=
  ∀ n, P6670391465096918716.a n = A199490 n

end A199490

/-! ## A199490.P15901633762736222873

`A055272(n+1)-2*A023000(n+1)`
-/

namespace A199490.P15901633762736222873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 (n + 1) - 2 * A023000 (n + 1)

end

end A199490.P15901633762736222873

namespace A199490

/-- `A055272(n+1)-2*A023000(n+1)` -/
def P15901633762736222873.Spec : Prop :=
  ∀ n, P15901633762736222873.a n = A199490 n

end A199490

/-! ## A199490.P3648824447122981369

`Δ[2*A125725(n+1)]-A125725(n+1)`
-/

namespace A199490.P3648824447122981369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A125725 (n + 1)

end

end A199490.P3648824447122981369

namespace A199490

/-- `Δ[2*A125725(n+1)]-A125725(n+1)` -/
def P3648824447122981369.Spec : Prop :=
  ∀ n, P3648824447122981369.a n = A199490 n

end A199490

/-! ## A199490.P6663071417621762157

`Δ[A125823(n+1)]-A125823(n+1)/2`
-/

namespace A199490.P6663071417621762157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125823 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A125823 (n + 1) : ℚ) / 2

end

end A199490.P6663071417621762157

namespace A199490

/-- `Δ[A125823(n+1)]-A125823(n+1)/2` -/
def P6663071417621762157.Spec : Prop :=
  ∀ n, P6663071417621762157.a n = (A199490 n : ℚ)

end A199490

/-! ## A199490.P7162630102850318803

`Δ[A123752(2*n)]-∑[A123752(2*n+1)]`
-/

namespace A199490.P7162630102850318803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A199490.P7162630102850318803

namespace A199490

/-- `Δ[A123752(2*n)]-∑[A123752(2*n+1)]` -/
def P7162630102850318803.Spec : Prop :=
  ∀ n, P7162630102850318803.a n = A199490 n

end A199490

/-! ## A199490.P3561154036301436718

`A083076(n+1)+A208704(n+1)-A193577(n)`
-/

namespace A199490.P3561154036301436718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 (n + 1) + (A208704 (n + 1) - A193577 n)

end

end A199490.P3561154036301436718

namespace A199490

/-- `A083076(n+1)+A208704(n+1)-A193577(n)` -/
def P3561154036301436718.Spec : Prop :=
  ∀ n, P3561154036301436718.a n = A199490 n

end A199490

/-! ## A199490.P5938850151024764339

`A083076(n+1)+A270471(n+1)-A193577(n)`
-/

namespace A199490.P5938850151024764339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 (n + 1) + (A270471 (n + 1) - A193577 n)

end

end A199490.P5938850151024764339

namespace A199490

/-- `A083076(n+1)+A270471(n+1)-A193577(n)` -/
def P5938850151024764339.Spec : Prop :=
  ∀ n, P5938850151024764339.a n = A199490 n

end A199490

/-!
# A199491: a(n) = (11*7^n + 1)/2.

The programs for A199491, the canonical program `A199491.P12368368680490491647` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199491 has offset 0).

The definition of A199491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*7^n+1)/2` (program `A199491.P16242454335630598218`, by `A199491.P16242454335630598218.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199491.P16242454335630598218

`(11*7^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A199491.P16242454335630598218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * 7 ^ n + 1 : ℚ) / 2

end

end A199491.P16242454335630598218

namespace A199491

/-- `(11*7^n+1)/2` -/
def P16242454335630598218.Spec : Prop :=
  ∀ n, P16242454335630598218.a n = (A199491 n : ℚ)

theorem P16242454335630598218.correct : P16242454335630598218.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199491, Nat.add_sub_cancel, A199491.P16242454335630598218.a, A199491.P12368368680490491647.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199491, Nat.add_sub_cancel, A199491.P16242454335630598218.a, A199491.P12368368680490491647.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199491

/-! ## A199491.P12368368680490491647

`7*a(n-1)-3` with `a(0)=6`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199491

/-- `7*a(n-1)-3` -/
def P12368368680490491647.Spec : Prop :=
  ∀ n, P12368368680490491647.a n = A199491 n

theorem P12368368680490491647.correct : P12368368680490491647.Spec := by
  intro n
  simp only [A199491]

end A199491

/-! ## A199491.P1091174433734010214

`ogf((6-9x)/(1-8x+7x^2))`
-/

namespace A199491.P1091174433734010214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -9] [1, -8, 7] n

end

end A199491.P1091174433734010214

namespace A199491

/-- `ogf((6-9x)/(1-8x+7x^2))` -/
def P1091174433734010214.Spec : Prop :=
  ∀ n, P1091174433734010214.a n = A199491 n

end A199491

/-! ## A199491.P8906724411768765245

`lcm(7, a(n-1))-3` with `a(0)=6`
-/

namespace A199491.P8906724411768765245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 3

end

end A199491.P8906724411768765245

namespace A199491

/-- `lcm(7, a(n-1))-3` -/
def P8906724411768765245.Spec : Prop :=
  ∀ n, P8906724411768765245.a n = A199491 n

end A199491

/-! ## A199491.P14354639092389455848

`a(n-1)/(1-6/7)-3` with `a(0)=6`
-/

namespace A199491.P14354639092389455848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7) - 3

end

end A199491.P14354639092389455848

namespace A199491

/-- `a(n-1)/(1-6/7)-3` -/
def P14354639092389455848.Spec : Prop :=
  ∀ n, P14354639092389455848.a n = (A199491 n : ℚ)

end A199491

/-! ## A199491.P14483825127384145535

`3*A199489(n)`
-/

namespace A199491.P14483825127384145535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199489 n

end

end A199491.P14483825127384145535

namespace A199491

/-- `3*A199489(n)` -/
def P14483825127384145535.Spec : Prop :=
  ∀ n, P14483825127384145535.a n = A199491 n

end A199491

/-! ## A199491.P8682447214541828818

`A198692(n)/2+1`
-/

namespace A199491.P8682447214541828818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198692 n : ℚ) / 2 + 1

end

end A199491.P8682447214541828818

namespace A199491

/-- `A198692(n)/2+1` -/
def P8682447214541828818.Spec : Prop :=
  ∀ n, P8682447214541828818.a n = (A199491 n : ℚ)

theorem P8682447214541828818.correct : P8682447214541828818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199491, Nat.add_sub_cancel, A199491.P8682447214541828818.a, A199491.P12368368680490491647.a, A198692, A198692.P8895989276105564419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199491, Nat.add_sub_cancel, A199491.P8682447214541828818.a, A199491.P12368368680490491647.a, A198692, A198692.P8895989276105564419.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199491

/-! ## A199491.P3716793844074731038

`3/2*A199490(n)`
-/

namespace A199491.P3716793844074731038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A199490 n : ℚ)

end

end A199491.P3716793844074731038

namespace A199491

/-- `3/2*A199490(n)` -/
def P3716793844074731038.Spec : Prop :=
  ∀ n, P3716793844074731038.a n = (A199491 n : ℚ)

end A199491

/-! ## A199491.P4581587476388420500

`11*A034494(n)-5`
-/

namespace A199491.P4581587476388420500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A034494 n - 5

end

end A199491.P4581587476388420500

namespace A199491

/-- `11*A034494(n)-5` -/
def P4581587476388420500.Spec : Prop :=
  ∀ n, P4581587476388420500.a n = A199491 n

end A199491

/-! ## A199491.P13671423388923512353

`A034494(n+1)+2*7^n`
-/

namespace A199491.P13671423388923512353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 (n + 1) + (2 * 7 ^ n : ℤ)

end

end A199491.P13671423388923512353

namespace A199491

/-- `A034494(n+1)+2*7^n` -/
def P13671423388923512353.Spec : Prop :=
  ∀ n, P13671423388923512353.a n = A199491 n

end A199491

/-! ## A199491.P15076377078212135082

`A199490(n)+A199489(n)`
-/

namespace A199491.P15076377078212135082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199490 n + A199489 n

end

end A199491.P15076377078212135082

namespace A199491

/-- `A199490(n)+A199489(n)` -/
def P15076377078212135082.Spec : Prop :=
  ∀ n, P15076377078212135082.a n = A199491 n

end A199491

/-! ## A199491.P8566459516539875534

`A199483(n)-A034494(n)`
-/

namespace A199491.P8566459516539875534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199483 n - A034494 n

end

end A199491.P8566459516539875534

namespace A199491

/-- `A199483(n)-A034494(n)` -/
def P8566459516539875534.Spec : Prop :=
  ∀ n, P8566459516539875534.a n = A199491 n

end A199491

/-! ## A199491.P805828026141266281

`Δ[A226199(n)]-A034494(n)`
-/

namespace A199491.P805828026141266281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034494 n

end

end A199491.P805828026141266281

namespace A199491

/-- `Δ[A226199(n)]-A034494(n)` -/
def P805828026141266281.Spec : Prop :=
  ∀ n, P805828026141266281.a n = A199491 n

end A199491

/-! ## A199491.P5787599688183454393

`A083076(n+1)+A083067(n)`
-/

namespace A199491.P5787599688183454393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083076 (n + 1) + A083067 n

end

end A199491.P5787599688183454393

namespace A199491

/-- `A083076(n+1)+A083067(n)` -/
def P5787599688183454393.Spec : Prop :=
  ∀ n, P5787599688183454393.a n = A199491 n

end A199491

/-! ## A199491.P12750198567572811503

`A196661(n+1)+A034494(n)`
-/

namespace A199491.P12750198567572811503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196661 (n + 1) + A034494 n

end

end A199491.P12750198567572811503

namespace A199491

/-- `A196661(n+1)+A034494(n)` -/
def P12750198567572811503.Spec : Prop :=
  ∀ n, P12750198567572811503.a n = A199491 n

end A199491

/-! ## A199491.P899492397250650747

`2*A169634(n)-A120741(n)`
-/

namespace A199491.P899492397250650747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169634 n - A120741 n

end

end A199491.P899492397250650747

namespace A199491

/-- `2*A169634(n)-A120741(n)` -/
def P899492397250650747.Spec : Prop :=
  ∀ n, P899492397250650747.a n = A199491 n

end A199491

/-! ## A199491.P14160448759732215908

`Δ[A024075(n)]-A024075(n)/2`
-/

namespace A199491.P14160448759732215908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A024075 n : ℚ) / 2

end

end A199491.P14160448759732215908

namespace A199491

/-- `Δ[A024075(n)]-A024075(n)/2` -/
def P14160448759732215908.Spec : Prop :=
  ∀ n, P14160448759732215908.a n = (A199491 n : ℚ)

theorem P14160448759732215908.correct : P14160448759732215908.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199491, Nat.add_sub_cancel, A199491.P14160448759732215908.f1, A199491.P14160448759732215908.a, A199491.P12368368680490491647.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199491, Nat.add_sub_cancel, A199491.P14160448759732215908.f1, A199491.P14160448759732215908.a, A199491.P12368368680490491647.a, A024075, A024075.P909197775632093808.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A199491

/-! ## A199491.P8970250530263028919

`A297180(3*n+1)+A193577(n)`
-/

namespace A199491.P8970250530263028919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * n + 1) + A193577 n

end

end A199491.P8970250530263028919

namespace A199491

/-- `A297180(3*n+1)+A193577(n)` -/
def P8970250530263028919.Spec : Prop :=
  ∀ n, P8970250530263028919.a n = A199491 n

end A199491

/-! ## A199491.P4421724781511230952

`A000420(n+1)+A244975(n)-A244975(n+1)`
-/

namespace A199491.P4421724781511230952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (n + 1) + (A244975 n - A244975 (n + 1))

end

end A199491.P4421724781511230952

namespace A199491

/-- `A000420(n+1)+A244975(n)-A244975(n+1)` -/
def P4421724781511230952.Spec : Prop :=
  ∀ n, P4421724781511230952.a n = A199491 n

end A199491

/-!
# A199492: a(n) = 11*7^n + 1.

The programs for A199492, the canonical program `A199492.P16074224654945325292` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199492 has offset 0).

The definition of A199492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*7^n+1` (program `A199492.P16074224654945325292`, by `A199492.P16074224654945325292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199492.P16074224654945325292

`11*7^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199492

/-- `11*7^n+1` -/
def P16074224654945325292.Spec : Prop :=
  ∀ n, (P16074224654945325292.a n : ℤ) = A199492 n

theorem P16074224654945325292.correct : P16074224654945325292.Spec := by
  intro n
  simp only [A199492]

end A199492

/-! ## A199492.P7039942521450901731

`2*A199491(n)`
-/

namespace A199492.P7039942521450901731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199491 n

end

end A199492.P7039942521450901731

namespace A199492

/-- `2*A199491(n)` -/
def P7039942521450901731.Spec : Prop :=
  ∀ n, P7039942521450901731.a n = A199492 n

end A199492

/-! ## A199492.P4934376246359009678

`3*A199490(n)`
-/

namespace A199492.P4934376246359009678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A199490 n

end

end A199492.P4934376246359009678

namespace A199492

/-- `3*A199490(n)` -/
def P4934376246359009678.Spec : Prop :=
  ∀ n, P4934376246359009678.a n = A199492 n

end A199492

/-! ## A199492.P3651299081770637165

`6*A199489(n)`
-/

namespace A199492.P3651299081770637165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A199489 n

end

end A199492.P3651299081770637165

namespace A199492

/-- `6*A199489(n)` -/
def P3651299081770637165.Spec : Prop :=
  ∀ n, P3651299081770637165.a n = A199492 n

end A199492

/-! ## A199492.P12022396583127086446

`ogf((12-18x)/(1-8x+7x^2))`
-/

namespace A199492.P12022396583127086446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -18] [1, -8, 7] n

end

end A199492.P12022396583127086446

namespace A199492

/-- `ogf((12-18x)/(1-8x+7x^2))` -/
def P12022396583127086446.Spec : Prop :=
  ∀ n, P12022396583127086446.a n = A199492 n

end A199492

/-! ## A199492.P2243211981660575288

`abs(xor(11*7^n, -1))`
-/

namespace A199492.P2243211981660575288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (11 * 7 ^ n : ℤ) (-1)|

end

end A199492.P2243211981660575288

namespace A199492

/-- `abs(xor(11*7^n, -1))` -/
def P2243211981660575288.Spec : Prop :=
  ∀ n, P2243211981660575288.a n = A199492 n

end A199492

/-! ## A199492.P16770567075609808673

`-xor(11*7^n, -1)`
-/

namespace A199492.P16770567075609808673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (11 * 7 ^ n : ℤ) (-1)

end

end A199492.P16770567075609808673

namespace A199492

/-- `-xor(11*7^n, -1)` -/
def P16770567075609808673.Spec : Prop :=
  ∀ n, P16770567075609808673.a n = A199492 n

end A199492

/-! ## A199492.P14449433591531870768

`abs(6-7*a(n-1))` with `a(0)=12`
-/

namespace A199492.P14449433591531870768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12] fun n a =>
  |6 - 7 * a (n - 1)|

end

end A199492.P14449433591531870768

namespace A199492

/-- `abs(6-7*a(n-1))` -/
def P14449433591531870768.Spec : Prop :=
  ∀ n, P14449433591531870768.a n = A199492 n

end A199492

/-! ## A199492.P121545146453274194

`lcm(2, A198692(n)+2)`
-/

namespace A199492.P121545146453274194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A198692 n + 2)

end

end A199492.P121545146453274194

namespace A199492

/-- `lcm(2, A198692(n)+2)` -/
def P121545146453274194.Spec : Prop :=
  ∀ n, (P121545146453274194.a n : ℤ) = A199492 n

end A199492

/-! ## A199492.P17710986999742778881

`2*(11*A034494(n)-5)`
-/

namespace A199492.P17710986999742778881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (11 * A034494 n - 5)

end

end A199492.P17710986999742778881

namespace A199492

/-- `2*(11*A034494(n)-5)` -/
def P17710986999742778881.Spec : Prop :=
  ∀ n, P17710986999742778881.a n = A199492 n

end A199492

/-! ## A199492.P7936959508956306358

`Δ[7*a(n-1)-A008458(n)]` with `a(0)=3`
-/

namespace A199492.P7936959508956306358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  7 * f1 (n - 1) - A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199492.P7936959508956306358

namespace A199492

/-- `Δ[7*a(n-1)-A008458(n)]` -/
def P7936959508956306358.Spec : Prop :=
  ∀ n, P7936959508956306358.a n = A199492 n

end A199492

/-! ## A199492.P249103104599102344

`2*(A199483(n)-A034494(n))`
-/

namespace A199492.P249103104599102344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199483 n - A034494 n)

end

end A199492.P249103104599102344

namespace A199492

/-- `2*(A199483(n)-A034494(n))` -/
def P249103104599102344.Spec : Prop :=
  ∀ n, P249103104599102344.a n = A199492 n

end A199492

/-!
# A199493: a(n) = 2*8^n + 1.

The programs for A199493, the canonical program `A199493.P8566600676184767821` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199493 has offset 0).

The definition of A199493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*8^n+1` (program `A199493.P8566600676184767821`, by `A199493.P8566600676184767821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199493.P8566600676184767821

`2*8^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199493

/-- `2*8^n+1` -/
def P8566600676184767821.Spec : Prop :=
  ∀ n, (P8566600676184767821.a n : ℤ) = A199493 n

theorem P8566600676184767821.correct : P8566600676184767821.Spec := by
  intro n
  simp only [A199493]

end A199493

/-! ## A199493.P16934779773736531727

`or(1, 2*8^n)`
-/

namespace A199493.P16934779773736531727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * 8 ^ n)

end

end A199493.P16934779773736531727

namespace A199493

/-- `or(1, 2*8^n)` -/
def P16934779773736531727.Spec : Prop :=
  ∀ n, (P16934779773736531727.a n : ℤ) = A199493 n

end A199493

/-! ## A199493.P13839040652679716744

`xor(1, 2*8^n)`
-/

namespace A199493.P13839040652679716744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * 8 ^ n)

end

end A199493.P13839040652679716744

namespace A199493

/-- `xor(1, 2*8^n)` -/
def P13839040652679716744.Spec : Prop :=
  ∀ n, (P13839040652679716744.a n : ℤ) = A199493 n

end A199493

/-! ## A199493.P845039783856080712

`ogf((3-10x)/(1-9x+8x^2))`
-/

namespace A199493.P845039783856080712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10] [1, -9, 8] n

end

end A199493.P845039783856080712

namespace A199493

/-- `ogf((3-10x)/(1-9x+8x^2))` -/
def P845039783856080712.Spec : Prop :=
  ∀ n, P845039783856080712.a n = A199493 n

end A199493

/-! ## A199493.P9760803583523980331

`∑[8*a(n-1)]` with `a(0)=3, a(1)=14`
-/

namespace A199493.P9760803583523980331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 14] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199493.P9760803583523980331

namespace A199493

/-- `∑[8*a(n-1)]` -/
def P9760803583523980331.Spec : Prop :=
  ∀ n, (P9760803583523980331.a n : ℤ) = A199493 n

end A199493

/-! ## A199493.P6598191188076582974

`abs(7-8*a(n-1))` with `a(0)=3`
-/

namespace A199493.P6598191188076582974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199493.P6598191188076582974

namespace A199493

/-- `abs(7-8*a(n-1))` -/
def P6598191188076582974.Spec : Prop :=
  ∀ n, P6598191188076582974.a n = A199493 n

end A199493

/-! ## A199493.P4795302999107870080

`8*(a(n-1)-7/8)` with `a(0)=3`
-/

namespace A199493.P4795302999107870080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  8 * (a (n - 1) - (7 : ℚ) / 8)

end

end A199493.P4795302999107870080

namespace A199493

/-- `8*(a(n-1)-7/8)` -/
def P4795302999107870080.Spec : Prop :=
  ∀ n, P4795302999107870080.a n = (A199493 n : ℚ)

theorem P4795302999107870080.correct : P4795302999107870080.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199493, Nat.add_sub_cancel, A199493.P4795302999107870080.a, A199493.P8566600676184767821.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199493, Nat.add_sub_cancel, A199493.P4795302999107870080.a, A199493.P8566600676184767821.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199493

/-! ## A199493.P16826477275761018191

`floor(a(n-1)+7*(a(n-1)-1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199493.P16826477275761018191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 7 * (a (n - 1) - 1)

end

end A199493.P16826477275761018191

namespace A199493

/-- `floor(a(n-1)+7*(a(n-1)-1))` -/
def P16826477275761018191.Spec : Prop :=
  ∀ n, P16826477275761018191.a n = A199493 n

theorem P16826477275761018191.correct : P16826477275761018191.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199493, Nat.add_sub_cancel, A199493.P16826477275761018191.a, A199493.P8566600676184767821.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199493, Nat.add_sub_cancel, A199493.P16826477275761018191.a, A199493.P8566600676184767821.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199493

/-! ## A199493.P3004251196997578334

`floor(a(n-1)-7*(1-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A199493.P3004251196997578334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 7 * (1 - a (n - 1))

end

end A199493.P3004251196997578334

namespace A199493

/-- `floor(a(n-1)-7*(1-a(n-1)))` -/
def P3004251196997578334.Spec : Prop :=
  ∀ n, P3004251196997578334.a n = A199493 n

theorem P3004251196997578334.correct : P3004251196997578334.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199493, Nat.add_sub_cancel, A199493.P3004251196997578334.a, A199493.P8566600676184767821.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199493, Nat.add_sub_cancel, A199493.P3004251196997578334.a, A199493.P8566600676184767821.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199493

/-! ## A199493.P10389949874529845928

`A048578(3*n)`
-/

namespace A199493.P10389949874529845928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (3 * n)

end

end A199493.P10389949874529845928

namespace A199493

/-- `A048578(3*n)` -/
def P10389949874529845928.Spec : Prop :=
  ∀ n, P10389949874529845928.a n = A199493 n

end A199493

/-! ## A199493.P4837076497346698027

`A056008(6*n)`
-/

namespace A199493.P4837076497346698027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056008 (6 * n)

end

end A199493.P4837076497346698027

namespace A199493

/-- `A056008(6*n)` -/
def P4837076497346698027.Spec : Prop :=
  ∀ n, P4837076497346698027.a n = A199493 n

end A199493

/-! ## A199493.P15580186621181998965

`ceil(A199552(n)/2)`
-/

namespace A199493.P15580186621181998965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A199552 n : ℚ) / 2⌉

end

end A199493.P15580186621181998965

namespace A199493

/-- `ceil(A199552(n)/2)` -/
def P15580186621181998965.Spec : Prop :=
  ∀ n, P15580186621181998965.a n = A199493 n

end A199493

/-! ## A199493.P7450663895343487385

`A000051(3*n+1)`
-/

namespace A199493.P7450663895343487385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (3 * n + 1)

end

end A199493.P7450663895343487385

namespace A199493

/-- `A000051(3*n+1)` -/
def P7450663895343487385.Spec : Prop :=
  ∀ n, P7450663895343487385.a n = A199493 n

end A199493

/-! ## A199493.P17765124155745923707

`A083318(3*n+1)`
-/

namespace A199493.P17765124155745923707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (3 * n + 1)

end

end A199493.P17765124155745923707

namespace A199493

/-- `A083318(3*n+1)` -/
def P17765124155745923707.Spec : Prop :=
  ∀ n, P17765124155745923707.a n = A199493 n

end A199493

/-! ## A199493.P13420531556593052073

`A240277(3*(n+1))`
-/

namespace A199493.P13420531556593052073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240277 (3 * (n + 1))

end

end A199493.P13420531556593052073

namespace A199493

/-- `A240277(3*(n+1))` -/
def P13420531556593052073.Spec : Prop :=
  ∀ n, P13420531556593052073.a n = A199493 n

end A199493

/-! ## A199493.P6458553500456439885

`A094373(3*n+2)`
-/

namespace A199493.P6458553500456439885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (3 * n + 2)

end

end A199493.P6458553500456439885

namespace A199493

/-- `A094373(3*n+2)` -/
def P6458553500456439885.Spec : Prop :=
  ∀ n, P6458553500456439885.a n = A199493 n

end A199493

/-! ## A199493.P7180085749334648947

`A127904(3*n+2)`
-/

namespace A199493.P7180085749334648947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (3 * n + 2)

end

end A199493.P7180085749334648947

namespace A199493

/-- `A127904(3*n+2)` -/
def P7180085749334648947.Spec : Prop :=
  ∀ n, P7180085749334648947.a n = A199493 n

end A199493

/-! ## A199493.P3522717462705036301

`(A198852(n)+3)/2`
-/

namespace A199493.P3522717462705036301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198852 n + 3 : ℚ) / 2

end

end A199493.P3522717462705036301

namespace A199493

/-- `(A198852(n)+3)/2` -/
def P3522717462705036301.Spec : Prop :=
  ∀ n, P3522717462705036301.a n = (A199493 n : ℚ)

theorem P3522717462705036301.correct : P3522717462705036301.Spec := by
  intro n
  simp only [A199493, Nat.add_sub_cancel, A199493.P3522717462705036301.a, A199493.P8566600676184767821.a, A198852, A198852.P6026599190474071269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199493

/-! ## A199493.P18073224200737461400

`A051032(6*n+2)`
-/

namespace A199493.P18073224200737461400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (6 * n + 2)

end

end A199493.P18073224200737461400

namespace A199493

/-- `A051032(6*n+2)` -/
def P18073224200737461400.Spec : Prop :=
  ∀ n, P18073224200737461400.a n = A199493 n

end A199493

/-! ## A199493.P9968288389226928931

`A140407(6*n+3)`
-/

namespace A199493.P9968288389226928931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140407 (6 * n + 3)

end

end A199493.P9968288389226928931

namespace A199493

/-- `A140407(6*n+3)` -/
def P9968288389226928931.Spec : Prop :=
  ∀ n, P9968288389226928931.a n = A199493 n

end A199493

/-!
# A199494: a(n) = 3*8^n + 1.

The programs for A199494, the canonical program `A199494.P2234030096917492201` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A199494 has offset 0).

The definition of A199494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*8^n+1` (program `A199494.P2234030096917492201`, by `A199494.P2234030096917492201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A199494.P2234030096917492201

`3*8^n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A199494

/-- `3*8^n+1` -/
def P2234030096917492201.Spec : Prop :=
  ∀ n, (P2234030096917492201.a n : ℤ) = A199494 n

theorem P2234030096917492201.correct : P2234030096917492201.Spec := by
  intro n
  simp only [A199494]

end A199494

/-! ## A199494.P11287875839123246316

`ogf((4-11x)/(1-9x+8x^2))`
-/

namespace A199494.P11287875839123246316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -11] [1, -9, 8] n

end

end A199494.P11287875839123246316

namespace A199494

/-- `ogf((4-11x)/(1-9x+8x^2))` -/
def P11287875839123246316.Spec : Prop :=
  ∀ n, P11287875839123246316.a n = A199494 n

end A199494

/-! ## A199494.P6763718914753163539

`∑[8*a(n-1)]` with `a(0)=4, a(1)=21`
-/

namespace A199494.P6763718914753163539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 21] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A199494.P6763718914753163539

namespace A199494

/-- `∑[8*a(n-1)]` -/
def P6763718914753163539.Spec : Prop :=
  ∀ n, (P6763718914753163539.a n : ℤ) = A199494 n

end A199494

/-! ## A199494.P18296165564323140194

`abs(7-8*a(n-1))` with `a(0)=4`
-/

namespace A199494.P18296165564323140194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  |7 - 8 * a (n - 1)|

end

end A199494.P18296165564323140194

namespace A199494

/-- `abs(7-8*a(n-1))` -/
def P18296165564323140194.Spec : Prop :=
  ∀ n, P18296165564323140194.a n = A199494 n

end A199494

/-! ## A199494.P8101686069738788184

`8*(a(n-1)-7/8)` with `a(0)=4`
-/

namespace A199494.P8101686069738788184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  8 * (a (n - 1) - (7 : ℚ) / 8)

end

end A199494.P8101686069738788184

namespace A199494

/-- `8*(a(n-1)-7/8)` -/
def P8101686069738788184.Spec : Prop :=
  ∀ n, P8101686069738788184.a n = (A199494 n : ℚ)

theorem P8101686069738788184.correct : P8101686069738788184.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199494, Nat.add_sub_cancel, A199494.P8101686069738788184.a, A199494.P2234030096917492201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199494, Nat.add_sub_cancel, A199494.P8101686069738788184.a, A199494.P2234030096917492201.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199494

/-! ## A199494.P876190329048278462

`xor(4, 8*a(n-1)-3)` with `a(0)=4`
-/

namespace A199494.P876190329048278462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.xor 4 (8 * a (n - 1) - 3)

end

end A199494.P876190329048278462

namespace A199494

/-- `xor(4, 8*a(n-1)-3)` -/
def P876190329048278462.Spec : Prop :=
  ∀ n, P876190329048278462.a n = A199494 n

end A199494

/-! ## A199494.P15917125155328040027

`floor(a(n-1)+7*(a(n-1)-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199494.P15917125155328040027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 7 * (a (n - 1) - 1)

end

end A199494.P15917125155328040027

namespace A199494

/-- `floor(a(n-1)+7*(a(n-1)-1))` -/
def P15917125155328040027.Spec : Prop :=
  ∀ n, P15917125155328040027.a n = A199494 n

theorem P15917125155328040027.correct : P15917125155328040027.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199494, Nat.add_sub_cancel, A199494.P15917125155328040027.a, A199494.P2234030096917492201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199494, Nat.add_sub_cancel, A199494.P15917125155328040027.a, A199494.P2234030096917492201.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199494

/-! ## A199494.P14359520304771172133

`floor(a(n-1)-7*(1-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A199494.P14359520304771172133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) - 7 * (1 - a (n - 1))

end

end A199494.P14359520304771172133

namespace A199494

/-- `floor(a(n-1)-7*(1-a(n-1)))` -/
def P14359520304771172133.Spec : Prop :=
  ∀ n, P14359520304771172133.a n = A199494 n

theorem P14359520304771172133.correct : P14359520304771172133.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A199494, Nat.add_sub_cancel, A199494.P14359520304771172133.a, A199494.P2234030096917492201.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A199494, Nat.add_sub_cancel, A199494.P14359520304771172133.a, A199494.P2234030096917492201.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A199494

/-! ## A199494.P7860026440527305931

`A181565(3*n)`
-/

namespace A199494.P7860026440527305931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (3 * n)

end

end A199494.P7860026440527305931

namespace A199494

/-- `A181565(3*n)` -/
def P7860026440527305931.Spec : Prop :=
  ∀ n, P7860026440527305931.a n = A199494 n

end A199494

/-! ## A199494.P7201460429803277726

`Δ[A136169(3*n)]`
-/

namespace A199494.P7201460429803277726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136169 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199494.P7201460429803277726

namespace A199494

/-- `Δ[A136169(3*n)]` -/
def P7201460429803277726.Spec : Prop :=
  ∀ n, P7201460429803277726.a n = A199494 n

end A199494

/-! ## A199494.P15909023330507278021

`Δ[A083713(n)+n]`
-/

namespace A199494.P15909023330507278021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083713 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199494.P15909023330507278021

namespace A199494

/-- `Δ[A083713(n)+n]` -/
def P15909023330507278021.Spec : Prop :=
  ∀ n, P15909023330507278021.a n = A199494 n

end A199494

/-! ## A199494.P9591629721549058120

`A004119(3*n+1)`
-/

namespace A199494.P9591629721549058120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (3 * n + 1)

end

end A199494.P9591629721549058120

namespace A199494

/-- `A004119(3*n+1)` -/
def P9591629721549058120.Spec : Prop :=
  ∀ n, P9591629721549058120.a n = A199494 n

end A199494

/-! ## A199494.P8367238609421917036

`A103204(3*n+2)`
-/

namespace A199494.P8367238609421917036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (3 * n + 2)

end

end A199494.P8367238609421917036

namespace A199494

/-- `A103204(3*n+2)` -/
def P8367238609421917036.Spec : Prop :=
  ∀ n, P8367238609421917036.a n = A199494 n

end A199494

/-! ## A199494.P12645603033483711091

`A097581(6*n+2)`
-/

namespace A199494.P12645603033483711091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (6 * n + 2)

end

end A199494.P12645603033483711091

namespace A199494

/-- `A097581(6*n+2)` -/
def P12645603033483711091.Spec : Prop :=
  ∀ n, P12645603033483711091.a n = A199494 n

end A199494

/-! ## A199494.P4532900479959235404

`record[1-Δ[A094014(n)]]`
-/

namespace A199494.P4532900479959235404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A199494.P4532900479959235404

namespace A199494

/-- `record[1-Δ[A094014(n)]]` -/
def P4532900479959235404.Spec : Prop :=
  ∀ n, P4532900479959235404.a n = A199494 n

end A199494

/-! ## A199494.P4962739987511438602

`Δ[3*A023001(n)+n]`
-/

namespace A199494.P4962739987511438602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023001 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A199494.P4962739987511438602

namespace A199494

/-- `Δ[3*A023001(n)+n]` -/
def P4962739987511438602.Spec : Prop :=
  ∀ n, P4962739987511438602.a n = A199494 n

end A199494

/-! ## A199494.P18276740740912872650

`abs(2-3*A000051(3*n))`
-/

namespace A199494.P18276740740912872650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 3 * A000051 (3 * n)|

end

end A199494.P18276740740912872650

namespace A199494

/-- `abs(2-3*A000051(3*n))` -/
def P18276740740912872650.Spec : Prop :=
  ∀ n, P18276740740912872650.a n = A199494 n

end A199494

/-! ## A199494.P11923308167827641613

`(A199554(n)+1)/2`
-/

namespace A199494.P11923308167827641613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199554 n + 1 : ℚ) / 2

end

end A199494.P11923308167827641613

namespace A199494

/-- `(A199554(n)+1)/2` -/
def P11923308167827641613.Spec : Prop :=
  ∀ n, P11923308167827641613.a n = (A199494 n : ℚ)

theorem P11923308167827641613.correct : P11923308167827641613.Spec := by
  intro n
  simp only [A199494, Nat.add_sub_cancel, A199494.P11923308167827641613.a, A199494.P2234030096917492201.a, A199554, A199554.P8652109811334265959.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199494

/-! ## A199494.P14670709412555112151

`(A198854(n)+3)/2`
-/

namespace A199494.P14670709412555112151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198854 n + 3 : ℚ) / 2

end

end A199494.P14670709412555112151

namespace A199494

/-- `(A198854(n)+3)/2` -/
def P14670709412555112151.Spec : Prop :=
  ∀ n, P14670709412555112151.a n = (A199494 n : ℚ)

theorem P14670709412555112151.correct : P14670709412555112151.Spec := by
  intro n
  simp only [A199494, Nat.add_sub_cancel, A199494.P14670709412555112151.a, A199494.P2234030096917492201.a, A198854, A198854.P17957750961830901507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199494

/-! ## A199494.P2523623778073105690

`(A199556(n)+2)/3`
-/

namespace A199494.P2523623778073105690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199556 n + 2 : ℚ) / 3

end

end A199494.P2523623778073105690

namespace A199494

/-- `(A199556(n)+2)/3` -/
def P2523623778073105690.Spec : Prop :=
  ∀ n, P2523623778073105690.a n = (A199494 n : ℚ)

theorem P2523623778073105690.correct : P2523623778073105690.Spec := by
  intro n
  simp only [A199494, Nat.add_sub_cancel, A199494.P2523623778073105690.a, A199494.P2234030096917492201.a, A199556, A199556.P14079784976606576389.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A199494

/-!
# A199495: Number of permutations of [n] starting and ending with an odd number.

The programs for A199495, there is no canonical definition to state claims against.
-/

/-! ## A199495.P8175731369191665371

`A004525(A098557(n)*A340647(n))`
-/

namespace A199495.P8175731369191665371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A098557 n * A340647 n).toNat

end

end A199495.P8175731369191665371

/-! ## A199495.P5076142701006230501

`A110654(A098557(n)*A340647(n))`
-/

namespace A199495.P5076142701006230501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A098557 n * A340647 n).toNat

end

end A199495.P5076142701006230501

/-! ## A199495.P89095192372730168

`A152976(a(n-1)+a(n-2))²` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A199495.P89095192372730168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  A152976 (a (n - 1) + a (n - 2)).toNat ^ 2

end

end A199495.P89095192372730168

