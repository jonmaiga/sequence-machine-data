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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A386201: Lengths of the long leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A386201, the canonical program `A386201.P11856909807172330877` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386201 has offset 0).

The definition of A386201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386201.P8376501650695198829

`ogf((12-32x+24x^3)/(1-3x-x^2+5x^3+x^4-x^5))`
-/

namespace A386201.P8376501650695198829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -32, 0, 24] [1, -3, -1, 5, 1, -1] n

end

end A386201.P8376501650695198829

namespace A386201

/-- `ogf((12-32x+24x^3)/(1-3x-x^2+5x^3+x^4-x^5))` -/
def P8376501650695198829.Spec : Prop :=
  ∀ n, P8376501650695198829.a n = A386201 n

end A386201

/-! ## A386201.P11856909807172330877

`2*A000032(n)*(A000032(n)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386201

/-- `2*A000032(n)*(A000032(n)+1)` -/
def P11856909807172330877.Spec : Prop :=
  ∀ n, P11856909807172330877.a n = A386201 n

theorem P11856909807172330877.correct : P11856909807172330877.Spec := by
  intro n
  simp only [A386201]

end A386201

/-! ## A386201.P14094848939748350416

`4*C(A000032(n)+1, 2)`
-/

namespace A386201.P14094848939748350416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (A000032 n + 1).toNat 2

end

end A386201.P14094848939748350416

namespace A386201

/-- `4*C(A000032(n)+1, 2)` -/
def P14094848939748350416.Spec : Prop :=
  ∀ n, (P14094848939748350416.a n : ℤ) = A386201 n

end A386201

/-! ## A386201.P4573073629454725801

`A382379(n)+A156279(n)`
-/

namespace A386201.P4573073629454725801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382379 n + A156279 n

end

end A386201.P4573073629454725801

namespace A386201

/-- `A382379(n)+A156279(n)` -/
def P4573073629454725801.Spec : Prop :=
  ∀ n, P4573073629454725801.a n = A386201 n

end A386201

/-! ## A386201.P14004252391980613122

`A383039(n)+A380821(n)`
-/

namespace A386201.P14004252391980613122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383039 n + A380821 n

end

end A386201.P14004252391980613122

namespace A386201

/-- `A383039(n)+A380821(n)` -/
def P14004252391980613122.Spec : Prop :=
  ∀ n, P14004252391980613122.a n = A386201 n

end A386201

/-! ## A386201.P2178905008572623380

`A380823(n)-A001612(n)`
-/

namespace A386201.P2178905008572623380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380823 n - A001612 n

end

end A386201.P2178905008572623380

namespace A386201

/-- `A380823(n)-A001612(n)` -/
def P2178905008572623380.Spec : Prop :=
  ∀ n, P2178905008572623380.a n = A386201 n

end A386201

/-! ## A386201.P6933589419993159157

`A381721(n)-A380821(n)`
-/

namespace A386201.P6933589419993159157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381721 n - A380821 n

end

end A386201.P6933589419993159157

namespace A386201

/-- `A381721(n)-A380821(n)` -/
def P6933589419993159157.Spec : Prop :=
  ∀ n, P6933589419993159157.a n = A386201 n

theorem P6933589419993159157.correct : P6933589419993159157.Spec := by
  intro n
  simp only [A386201, Nat.add_sub_cancel, A386201.P6933589419993159157.a, A386201.P11856909807172330877.a, A000032, A000032.P8352177345629330861.a, A380821, A380821.P10996316985306517664.a, A381721, A381721.P9195889644798697899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386201

/-! ## A386201.P10478938239020452453

`A000032(n)+A380823(n)-A380821(n)`
-/

namespace A386201.P10478938239020452453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A380823 n - A380821 n)

end

end A386201.P10478938239020452453

namespace A386201

/-- `A000032(n)+A380823(n)-A380821(n)` -/
def P10478938239020452453.Spec : Prop :=
  ∀ n, P10478938239020452453.a n = A386201 n

theorem P10478938239020452453.correct : P10478938239020452453.Spec := by
  intro n
  simp only [A386201, Nat.add_sub_cancel, A386201.P10478938239020452453.a, A386201.P11856909807172330877.a, A000032, A000032.P8352177345629330861.a, A380821, A380821.P10996316985306517664.a, A380823, A380823.P15923719920850826478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386201

/-! ## A386201.P7117397468008297643

`(A187891(n+1)-A001611(n))*A001612(n)`
-/

namespace A386201.P7117397468008297643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187891 (n + 1) - A001611 n) * A001612 n

end

end A386201.P7117397468008297643

namespace A386201

/-- `(A187891(n+1)-A001611(n))*A001612(n)` -/
def P7117397468008297643.Spec : Prop :=
  ∀ n, P7117397468008297643.a n = A386201 n

end A386201

/-! ## A386201.P4610723041960813781

`2*A380824(n)/A380821(n)`
-/

namespace A386201.P4610723041960813781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A380824 n : ℚ) / (A380821 n : ℚ)

end

end A386201.P4610723041960813781

namespace A386201

/-- `2*A380824(n)/A380821(n)` -/
def P4610723041960813781.Spec : Prop :=
  ∀ n, P4610723041960813781.a n = (A386201 n : ℚ)

end A386201

/-!
# A386206: Triangle read by rows: T(n,k) = n^2 - k, with 0 <= k <= n.

The programs for A386206, the canonical program `A386206.P14457694289844690241` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386206 has offset 0).

The definition of A386206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²-col(n)` (program `A386206.P14457694289844690241`, by `A386206.P14457694289844690241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386206.P14457694289844690241

`row(n)²-col(n)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386206

/-- `row(n)²-col(n)` -/
def P14457694289844690241.Spec : Prop :=
  ∀ n, P14457694289844690241.a n = A386206 n

theorem P14457694289844690241.correct : P14457694289844690241.Spec := by
  intro n
  simp only [A386206]

end A386206

/-! ## A386206.P6943115624192567359

`row(n)^2-col(n)`
-/

namespace A386206.P6943115624192567359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ 2 : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A386206.P6943115624192567359

namespace A386206

/-- `row(n)^2-col(n)` -/
def P6943115624192567359.Spec : Prop :=
  ∀ n, P6943115624192567359.a n = A386206 n

theorem P6943115624192567359.correct : P6943115624192567359.Spec := by
  intro n
  simp only [A386206, Nat.add_sub_cancel, A386206.P6943115624192567359.a, A386206.P14457694289844690241.a, SequenceMachineLib.memo_apply]

end A386206

/-! ## A386206.P17081054014160830565

`row(n)*row(n)-col(n)`
-/

namespace A386206.P17081054014160830565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A386206.P17081054014160830565

namespace A386206

/-- `row(n)*row(n)-col(n)` -/
def P17081054014160830565.Spec : Prop :=
  ∀ n, P17081054014160830565.a n = A386206 n

theorem P17081054014160830565.correct : P17081054014160830565.Spec := by
  intro n
  simp only [A386206, Nat.add_sub_cancel, A386206.P17081054014160830565.a, A386206.P14457694289844690241.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A386206

/-! ## A386206.P12234732377111634505

`root(row(n), 1/2)-col(n)`
-/

namespace A386206.P12234732377111634505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - (SequenceMachineLib.triCol n : ℝ)

end

end A386206.P12234732377111634505

namespace A386206

/-- `root(row(n), 1/2)-col(n)` -/
def P12234732377111634505.Spec : Prop :=
  ∀ n, P12234732377111634505.a n = (A386206 n : ℝ)

theorem P12234732377111634505.correct : P12234732377111634505.Spec := by
  intro n
  simp only [A386206, Nat.add_sub_cancel, A386206.P12234732377111634505.a, A386206.P14457694289844690241.a, SequenceMachineLib.memo_apply]
  try simp

end A386206

/-! ## A386206.P12339184299043690565

`∑[char[∑[1+n]]]²-col(n)`
-/

namespace A386206.P12339184299043690565
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A386206.P12339184299043690565

namespace A386206

/-- `∑[char[∑[1+n]]]²-col(n)` -/
def P12339184299043690565.Spec : Prop :=
  ∀ n, P12339184299043690565.a n = A386206 n

end A386206

/-! ## A386206.P7275804323649403936

`A005449(row(n))-n`
-/

namespace A386206.P7275804323649403936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (SequenceMachineLib.triRow n) - (n : ℤ)

end

end A386206.P7275804323649403936

namespace A386206

/-- `A005449(row(n))-n` -/
def P7275804323649403936.Spec : Prop :=
  ∀ n, P7275804323649403936.a n = A386206 n

end A386206

/-! ## A386206.P108020433531004343

`A292564(n)-2*n`
-/

namespace A386206.P108020433531004343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292564 n - (2 * n : ℤ)

end

end A386206.P108020433531004343

namespace A386206

/-- `A292564(n)-2*n` -/
def P108020433531004343.Spec : Prop :=
  ∀ n, P108020433531004343.a n = A386206 n

end A386206

/-! ## A386206.P7525682827116505803

`A001318(A279891(n))-n`
-/

namespace A386206.P7525682827116505803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A279891 n).toNat - (n : ℤ)

end

end A386206.P7525682827116505803

namespace A386206

/-- `A001318(A279891(n))-n` -/
def P7525682827116505803.Spec : Prop :=
  ∀ n, P7525682827116505803.a n = A386206 n

end A386206

/-! ## A386206.P15975844185920258852

`A292564(n)%A004277(n)`
-/

namespace A386206.P15975844185920258852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292564 n) (A004277 n)

end

end A386206.P15975844185920258852

namespace A386206

/-- `A292564(n)%A004277(n)` -/
def P15975844185920258852.Spec : Prop :=
  ∀ n, P15975844185920258852.a n = A386206 n

end A386206

/-! ## A386206.P2412773314487846870

`A003056(n)²-A002262(n)`
-/

namespace A386206.P2412773314487846870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A002262 n

end

end A386206.P2412773314487846870

namespace A386206

/-- `A003056(n)²-A002262(n)` -/
def P2412773314487846870.Spec : Prop :=
  ∀ n, P2412773314487846870.a n = A386206 n

end A386206

/-! ## A386206.P17343050679937072640

`A064801(n+1)-A131421(n+1)`
-/

namespace A386206.P17343050679937072640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A131421 (n + 1)

end

end A386206.P17343050679937072640

namespace A386206

/-- `A064801(n+1)-A131421(n+1)` -/
def P17343050679937072640.Spec : Prop :=
  ∀ n, P17343050679937072640.a n = A386206 n

end A386206

/-! ## A386206.P4688087242056552200

`A093995(n+1)-A134483(n+1)`
-/

namespace A386206.P4688087242056552200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A134483 (n + 1)

end

end A386206.P4688087242056552200

namespace A386206

/-- `A093995(n+1)-A134483(n+1)` -/
def P4688087242056552200.Spec : Prop :=
  ∀ n, P4688087242056552200.a n = A386206 n

end A386206

/-! ## A386206.P1550392880150552380

`A061887(A061885(n))-2*n`
-/

namespace A386206.P1550392880150552380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 (A061885 n).toNat - (2 * n : ℤ)

end

end A386206.P1550392880150552380

namespace A386206

/-- `A061887(A061885(n))-2*n` -/
def P1550392880150552380.Spec : Prop :=
  ∀ n, P1550392880150552380.a n = A386206 n

end A386206

/-!
# A386207: Numbers m > 1 such that there exists k such that k | m, k^k = k mod m and 1 < k < m.

The programs for A386207, there is no canonical definition to state claims against.
-/

/-! ## A386207.P11641336078569866429

`lt[2, A384237(n+1)]+1`
-/

namespace A386207.P11641336078569866429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A386207.P11641336078569866429

/-! ## A386207.P3596955433375738434

`lt[2, A384237(A028310(n))]`
-/

namespace A386207.P3596955433375738434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A386207.P3596955433375738434

/-! ## A386207.P12986812785099780478

`A002808(lt[A141220(n+1), A018252(n+1)])`
-/

namespace A386207.P12986812785099780478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386207.P12986812785099780478

/-! ## A386207.P9740850405703232367

`A056653(lt[A141220(n+1), A018252(n+1)])`
-/

namespace A386207.P9740850405703232367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A386207.P9740850405703232367

/-! ## A386207.P13130278071013627968

`lt[A338941(n+3), A130064(n+1)]+1`
-/

namespace A386207.P13130278071013627968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338941 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A386207.P13130278071013627968

/-!
# A386208: G.f. A(x) satisfies A(x) = 1/(1-x) + x^2 * (d/dx A(x)^2).

The programs for A386208, there is no canonical definition to state claims against.
-/

/-! ## A386208.P3098305293717119133

`A022564(2*n+1)+A001147(n)`
-/

namespace A386208.P3098305293717119133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022564 (2 * n + 1) + A001147 n

end

end A386208.P3098305293717119133

/-! ## A386208.P9897306197407582823

`A399119(n)+A397809(A136221(n))`
-/

namespace A386208.P9897306197407582823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399119 n + A397809 (A136221 n).toNat

end

end A386208.P9897306197407582823

/-!
# A386209: G.f. A(x) satisfies A(x) = 1/(1-x)^2 + x^2 * (d/dx A(x)^2).

The programs for A386209, there is no canonical definition to state claims against.
-/

/-! ## A386209.P13420428055355820482

`A246277(A289680(n))+A000108(n)`
-/

namespace A386209.P13420428055355820482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A289680 n).toNat + A000108 n

end

end A386209.P13420428055355820482

/-!
# A386210: G.f. A(x) satisfies A(x) = 1/(1-x)^3 + x^2 * (d/dx A(x)^2).

The programs for A386210, there is no canonical definition to state claims against.
-/

/-! ## A386210.P9012510309689225546

`A335834(∑[(n+1)^n])`
-/

namespace A386210.P9012510309689225546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335834 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386210.P9012510309689225546

/-!
# A386211: G.f. A(x) satisfies A(x) = 1/(1-x)^2 + x^2*A(x)*A'(x).

The programs for A386211, there is no canonical definition to state claims against.
-/

/-! ## A386211.P17762229199940110930

`A241419(A227791(n))+A156077(n+1)`
-/

namespace A386211.P17762229199940110930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A227791 n).toNat + A156077 (n + 1)

end

end A386211.P17762229199940110930

/-! ## A386211.P2344832409136933428

`A245108(n)+A115361(A386422(n+1))`
-/

namespace A386211.P2344832409136933428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245108 n + A115361 (A386422 (n + 1)).toNat

end

end A386211.P2344832409136933428

/-!
# A386212: G.f. A(x) satisfies A(x) = 1/(1-x)^3 + x^2*A(x)*A'(x).

The programs for A386212, there is no canonical definition to state claims against.
-/

/-! ## A386212.P10183232271598653663

`A357708(a(n-1))-2` with `a(0)=1, a(1)=3`
-/

namespace A386212.P10183232271598653663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A357708 (a (n - 1)).toNat - 2

end

end A386212.P10183232271598653663

/-!
# A386213: Integers t having at least one nonempty subset of the set of its proper divisors for which the equation sigma(t) + r = m*t (m is any integer > 1, r is the sum of elements of such subset) is true.

The programs for A386213, there is no canonical definition to state claims against.
-/

/-! ## A386213.P15660373958157335890

`lt[A000203(n+1), A194778(A353845(n))]`
-/

namespace A386213.P15660373958157335890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194778 (A353845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386213.P15660373958157335890

/-!
# A386214: Rectangular array, read by descending antidiagonals: (row m) consists of the union, in increasing order, of the numbers in the following set: {k*((m+1)*F(n) + F(n - 1)): k = 1..m, n>=0}, where F = A000045, the Fibonacci numbers, with F(-1)=1 as in A039834.

The programs for A386214, there is no canonical definition to state claims against.
-/

/-! ## A386214.P16813061177154902088

`A319951(A388547(n+1))`
-/

namespace A386214.P16813061177154902088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A388547 (n + 1)).toNat

end

end A386214.P16813061177154902088

/-! ## A386214.P6964295813803740714

`A066063(A048516(n+2))`
-/

namespace A386214.P6964295813803740714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066063 (A048516 (n + 2)).toNat

end

end A386214.P6964295813803740714

/-! ## A386214.P4777950937774401313

`A087845(A388547(n+1)+1)`
-/

namespace A386214.P4777950937774401313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A388547 (n + 1) + 1).toNat

end

end A386214.P4777950937774401313

/-! ## A386214.P17419304575022656352

`A029931(A388718(n+1)%A081713(n+3))`
-/

namespace A386214.P17419304575022656352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (Int.tmod (A388718 (n + 1)) (A081713 (n + 3))).toNat

end

end A386214.P17419304575022656352

/-! ## A386214.P13163050756296735665

`A357299(A038303(n))`
-/

namespace A386214.P13163050756296735665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357299 (A038303 n).toNat

end

end A386214.P13163050756296735665

/-!
# A386215: Values of v in the (1,3)-quartals (m,u,v,w) having m=2; i.e., values of v for solutions to m + u^3 = v + w^3, in positive integers, with m<v, sorted by u, then v.

The programs for A386215, there is no canonical definition to state claims against.
-/

/-! ## A386215.P2150623764415780944

`A385882(n+1)+1`
-/

namespace A386215.P2150623764415780944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385882 (n + 1) + 1

end

end A386215.P2150623764415780944

/-! ## A386215.P14849254984425315266

`A386217(n+1)-1`
-/

namespace A386215.P14849254984425315266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386217 (n + 1) - 1

end

end A386215.P14849254984425315266

/-! ## A386215.P18158649720266652965

`A386219(n+1)-2`
-/

namespace A386215.P18158649720266652965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386219 (n + 1) - 2

end

end A386215.P18158649720266652965

/-! ## A386215.P13984626654703840239

`A386265(A038712(2*n+3))+A386217(n+1)`
-/

namespace A386215.P13984626654703840239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386265 (A038712 (2 * n + 3)).toNat + A386217 (n + 1)

end

end A386215.P13984626654703840239

/-! ## A386215.P13261595609412236112

`A020725(A385882(n+1))`
-/

namespace A386215.P13261595609412236112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A385882 (n + 1)).toNat

end

end A386215.P13261595609412236112

/-! ## A386215.P2768121581597136540

`A023443(A386217(n+1))`
-/

namespace A386215.P2768121581597136540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A386217 (n + 1)).toNat

end

end A386215.P2768121581597136540

/-! ## A386215.P9316974627017868148

`A023444(A386219(n+1))`
-/

namespace A386215.P9316974627017868148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A386219 (n + 1)).toNat

end

end A386215.P9316974627017868148

/-!
# A386217: Values of v in the (1,3)-quartals (m,u,v,w) having m=3; i.e., values of v for solutions to 3 + u^3 = v + w^3, in positive integers, with m<v; see Comments.

The programs for A386217, there is no canonical definition to state claims against.
-/

/-! ## A386217.P4938771707666130525

`A386215(n+1)+1`
-/

namespace A386217.P4938771707666130525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386215 (n + 1) + 1

end

end A386217.P4938771707666130525

/-! ## A386217.P8505280015339568174

`A385882(n+1)+2`
-/

namespace A386217.P8505280015339568174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385882 (n + 1) + 2

end

end A386217.P8505280015339568174

/-! ## A386217.P2527621228690209993

`A386219(n+1)-1`
-/

namespace A386217.P2527621228690209993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386219 (n + 1) - 1

end

end A386217.P2527621228690209993

/-! ## A386217.P13877954280234261046

`A386265(A038712(2*n+3))+A386219(n+1)`
-/

namespace A386217.P13877954280234261046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386265 (A038712 (2 * n + 3)).toNat + A386219 (n + 1)

end

end A386217.P13877954280234261046

/-! ## A386217.P7023716045761288570

`A009056(A385882(n+1))`
-/

namespace A386217.P7023716045761288570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A385882 (n + 1)).toNat

end

end A386217.P7023716045761288570

/-! ## A386217.P4964940487440617500

`A020725(A386215(n+1))`
-/

namespace A386217.P4964940487440617500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A386215 (n + 1)).toNat

end

end A386217.P4964940487440617500

/-! ## A386217.P17197006809171047295

`A023443(A386219(n+1))`
-/

namespace A386217.P17197006809171047295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A386219 (n + 1)).toNat

end

end A386217.P17197006809171047295

/-!
# A386219: Values of v in the (1,3)-quartals (m,u,v,w) having m=4; i.e., values of v for solutions to 4 + u^3 = v + w^3, in positive integers, with m<v; see Comments.

The programs for A386219, there is no canonical definition to state claims against.
-/

/-! ## A386219.P5110336360174246701

`A386217(1+n)+1`
-/

namespace A386219.P5110336360174246701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386217 (1 + n) + 1

end

end A386219.P5110336360174246701

/-! ## A386219.P1367045085140722996

`A386215(n+1)+2`
-/

namespace A386219.P1367045085140722996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386215 (n + 1) + 2

end

end A386219.P1367045085140722996

/-! ## A386219.P17237348643525946560

`A385882(1+n)+3`
-/

namespace A386219.P17237348643525946560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385882 (1 + n) + 3

end

end A386219.P17237348643525946560

/-! ## A386219.P10413043888350324669

`A009005(A385882(n+1))`
-/

namespace A386219.P10413043888350324669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A385882 (n + 1)).toNat

end

end A386219.P10413043888350324669

/-! ## A386219.P16291421019118043133

`A009056(A386215(n+1))`
-/

namespace A386219.P16291421019118043133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A386215 (n + 1)).toNat

end

end A386219.P16291421019118043133

/-! ## A386219.P12066687486899478481

`A020725(A386217(n+1))`
-/

namespace A386219.P12066687486899478481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A386217 (n + 1)).toNat

end

end A386219.P12066687486899478481

/-!
# A386220: a(n) = d + 2*2^e where n = d*2^e with d = A000265(n) odd.

The programs for A386220, the canonical program `A386220.P3238769250650299334` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386220 has offset 1).

The definition of A386220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386220.P3238769250650299334

`A000265(n+1)+A171977(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A386220

/-- `A000265(n+1)+A171977(n+1)` -/
def P3238769250650299334.Spec : Prop :=
  ∀ n, P3238769250650299334.a n = A386220 (n + 1)

theorem P3238769250650299334.correct : P3238769250650299334.Spec := by
  intro n
  simp only [A386220, Nat.add_sub_cancel]

end A386220

/-! ## A386220.P14840661867804897064

`(n+1)/2^val(n+1, 2)+xor(n+1, n)+1`
-/

namespace A386220.P14840661867804897064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (Nat.xor (n + 1) n + 1 : ℚ)

end

end A386220.P14840661867804897064

namespace A386220

/-- `(n+1)/2^val(n+1, 2)+xor(n+1, n)+1` -/
def P14840661867804897064.Spec : Prop :=
  ∀ n, P14840661867804897064.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P17670546780711045100

`2^(1+val(n+1, 2))+(n+1)/2^val(n+1, 2)`
-/

namespace A386220.P17670546780711045100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (1 + SequenceMachineLib.valuation (n + 1) 2) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A386220.P17670546780711045100

namespace A386220

/-- `2^(1+val(n+1, 2))+(n+1)/2^val(n+1, 2)` -/
def P17670546780711045100.Spec : Prop :=
  ∀ n, P17670546780711045100.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P5832381958105649742

`xor(n+1, n)+A000265(n+1)+1`
-/

namespace A386220.P5832381958105649742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) n : ℤ) + (A000265 (n + 1) + 1)

end

end A386220.P5832381958105649742

namespace A386220

/-- `xor(n+1, n)+A000265(n+1)+1` -/
def P5832381958105649742.Spec : Prop :=
  ∀ n, P5832381958105649742.a n = A386220 (n + 1)

theorem P5832381958105649742.correct : P5832381958105649742.Spec := by
  intro n
  simp only [A386220, Nat.add_sub_cancel, A386220.P5832381958105649742.a, A386220.P3238769250650299334.a, A000265, A000265.P16482698636471710744.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386220

/-! ## A386220.P17913666209845726300

`A268674(3*(n+1))+xor(n, n+1)`
-/

namespace A386220.P17913666209845726300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (3 * (n + 1)) + (Nat.xor n (n + 1) : ℤ)

end

end A386220.P17913666209845726300

namespace A386220

/-- `A268674(3*(n+1))+xor(n, n+1)` -/
def P17913666209845726300.Spec : Prop :=
  ∀ n, P17913666209845726300.a n = A386220 (n + 1)

end A386220

/-! ## A386220.P14191348443179846883

`A171977(n+1)+(n+1)/2^val(n+1, 2)`
-/

namespace A386220.P14191348443179846883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A386220.P14191348443179846883

namespace A386220

/-- `A171977(n+1)+(n+1)/2^val(n+1, 2)` -/
def P14191348443179846883.Spec : Prop :=
  ∀ n, P14191348443179846883.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P18295361652015070626

`A001316(xor(n+1, n))+(n+1)/2^val(n+1, 2)`
-/

namespace A386220.P18295361652015070626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (Nat.xor (n + 1) n) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A386220.P18295361652015070626

namespace A386220

/-- `A001316(xor(n+1, n))+(n+1)/2^val(n+1, 2)` -/
def P18295361652015070626.Spec : Prop :=
  ∀ n, P18295361652015070626.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P13675853509923672735

`A278222(xor(n+1, n))+(n+1)/2^val(n+1, 2)`
-/

namespace A386220.P13675853509923672735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278222 (Nat.xor (n + 1) n) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A386220.P13675853509923672735

namespace A386220

/-- `A278222(xor(n+1, n))+(n+1)/2^val(n+1, 2)` -/
def P13675853509923672735.Spec : Prop :=
  ∀ n, P13675853509923672735.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P270147477030367200

`A000079(val(n+1, 2)+1)+(n+1)/2^val(n+1, 2)`
-/

namespace A386220.P270147477030367200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (SequenceMachineLib.valuation (n + 1) 2 + 1) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A386220.P270147477030367200

namespace A386220

/-- `A000079(val(n+1, 2)+1)+(n+1)/2^val(n+1, 2)` -/
def P270147477030367200.Spec : Prop :=
  ∀ n, P270147477030367200.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P9765931352189821411

`A349102(n+1)-A331739(n+1)`
-/

namespace A386220.P9765931352189821411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349102 (n + 1) - A331739 (n + 1)

end

end A386220.P9765931352189821411

namespace A386220

/-- `A349102(n+1)-A331739(n+1)` -/
def P9765931352189821411.Spec : Prop :=
  ∀ n, P9765931352189821411.a n = A386220 (n + 1)

theorem P9765931352189821411.correct : P9765931352189821411.Spec := by
  intro n
  simp only [A386220, Nat.add_sub_cancel, A386220.P9765931352189821411.a, A386220.P3238769250650299334.a, A000265, A000265.P16482698636471710744.a, A171977, A171977.P14092944863121073856.a, A331739, A331739.P457850794578440847.a, A349102, A349102.P9361818263425834684.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386220

/-! ## A386220.P6805861708895932207

`A163511(A006519(n+1))+A000265(n+1)`
-/

namespace A386220.P6805861708895932207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A006519 (n + 1)).toNat + A000265 (n + 1)

end

end A386220.P6805861708895932207

namespace A386220

/-- `A163511(A006519(n+1))+A000265(n+1)` -/
def P6805861708895932207.Spec : Prop :=
  ∀ n, P6805861708895932207.a n = A386220 (n + 1)

end A386220

/-! ## A386220.P11779515710676210461

`A000265(n+1)+A005843(n+1)/A000265(n+1)`
-/

namespace A386220.P11779515710676210461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) + (A005843 (n + 1) : ℚ) / (A000265 (n + 1) : ℚ)

end

end A386220.P11779515710676210461

namespace A386220

/-- `A000265(n+1)+A005843(n+1)/A000265(n+1)` -/
def P11779515710676210461.Spec : Prop :=
  ∀ n, P11779515710676210461.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P9773394781269290073

`A171977(n+1)+A005843(n+1)/A171977(n+1)`
-/

namespace A386220.P9773394781269290073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) + (A005843 (n + 1) : ℚ) / (A171977 (n + 1) : ℚ)

end

end A386220.P9773394781269290073

namespace A386220

/-- `A171977(n+1)+A005843(n+1)/A171977(n+1)` -/
def P9773394781269290073.Spec : Prop :=
  ∀ n, P9773394781269290073.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P15000893208317108945

`A109613(xor(n+1, n)+(n+1)/2^val(n+1, 2))`
-/

namespace A386220.P15000893208317108945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((Nat.xor (n + 1) n : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A386220.P15000893208317108945

namespace A386220

/-- `A109613(xor(n+1, n)+(n+1)/2^val(n+1, 2))` -/
def P15000893208317108945.Spec : Prop :=
  ∀ n, P15000893208317108945.a n = A386220 (n + 1)

end A386220

/-! ## A386220.P16079779451095717202

`A165998(xor(n+1, n)+(n+1)/2^val(n+1, 2))`
-/

namespace A386220.P16079779451095717202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.roundAway ((Nat.xor (n + 1) n : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A386220.P16079779451095717202

namespace A386220

/-- `A165998(xor(n+1, n)+(n+1)/2^val(n+1, 2))` -/
def P16079779451095717202.Spec : Prop :=
  ∀ n, P16079779451095717202.a n = A386220 (n + 1)

end A386220

/-! ## A386220.P5047785960503554601

`A400438(xor(n+1, n))+(n+1)/2^val(n+1, 2)`
-/

namespace A386220.P5047785960503554601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A400438 (Nat.xor (n + 1) n) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A386220.P5047785960503554601

namespace A386220

/-- `A400438(xor(n+1, n))+(n+1)/2^val(n+1, 2)` -/
def P5047785960503554601.Spec : Prop :=
  ∀ n, P5047785960503554601.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P7824753575956191794

`A118824(A059161(n))+A000265(n+1)`
-/

namespace A386220.P7824753575956191794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (A059161 n).toNat + A000265 (n + 1)

end

end A386220.P7824753575956191794

namespace A386220

/-- `A118824(A059161(n))+A000265(n+1)` -/
def P7824753575956191794.Spec : Prop :=
  ∀ n, P7824753575956191794.a n = A386220 (n + 1)

end A386220

/-! ## A386220.P11371147167644793886

`A006519(2*(n+1))+(n+1)/2^val(n+1, 2)`
-/

namespace A386220.P11371147167644793886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (2 * (n + 1)) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A386220.P11371147167644793886

namespace A386220

/-- `A006519(2*(n+1))+(n+1)/2^val(n+1, 2)` -/
def P11371147167644793886.Spec : Prop :=
  ∀ n, P11371147167644793886.a n = (A386220 (n + 1) : ℚ)

end A386220

/-! ## A386220.P4631539044869744573

`A006519(2*(n+1))+A000265(n+1)`
-/

namespace A386220.P4631539044869744573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * (n + 1)) + A000265 (n + 1)

end

end A386220.P4631539044869744573

namespace A386220

/-- `A006519(2*(n+1))+A000265(n+1)` -/
def P4631539044869744573.Spec : Prop :=
  ∀ n, P4631539044869744573.a n = A386220 (n + 1)

end A386220

/-! ## A386220.P12320623816898748964

`A028233(2*(n+1))+A000265(n+1)`
-/

namespace A386220.P12320623816898748964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (2 * (n + 1)) + A000265 (n + 1)

end

end A386220.P12320623816898748964

namespace A386220

/-- `A028233(2*(n+1))+A000265(n+1)` -/
def P12320623816898748964.Spec : Prop :=
  ∀ n, P12320623816898748964.a n = A386220 (n + 1)

end A386220

/-!
# A386222: Number of 3-dimensional tilings of a 2 X 2 X (n+1) box with the two upper right cells removed, using 2 X 2 X 1 plates and 1 X 2 X 1 dominos.

The programs for A386222, the canonical program `A386222.P7813306655087467098` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386222 has offset 0).

The definition of A386222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386222.P112804930170789548

`ogf(1/(1-5x-9x^2+14x^3))`
-/

namespace A386222.P112804930170789548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, -9, 14] n

end

end A386222.P112804930170789548

namespace A386222

/-- `ogf(1/(1-5x-9x^2+14x^3))` -/
def P112804930170789548.Spec : Prop :=
  ∀ n, P112804930170789548.a n = A386222 n

end A386222

/-! ## A386222.P7813306655087467098

`5*a(n-1)+9*a(n-2)-14*a(n-3)` with `a(0)=1, a(1)=5, a(2)=34`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386222

/-- `5*a(n-1)+9*a(n-2)-14*a(n-3)` -/
def P7813306655087467098.Spec : Prop :=
  ∀ n, P7813306655087467098.a n = A386222 n

theorem P7813306655087467098.correct : P7813306655087467098.Spec := by
  intro n
  simp only [A386222]

end A386222

/-! ## A386222.P14542760873180845171

`A359884(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A386222.P14542760873180845171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A359884 n + 2 * a (n - 1)

end

end A386222.P14542760873180845171

namespace A386222

/-- `A359884(n)+2*a(n-1)` -/
def P14542760873180845171.Spec : Prop :=
  ∀ n, P14542760873180845171.a n = A386222 n

end A386222

/-!
# A386223: Nonsquarefree weak numbers k that are products of primorials.

The programs for A386223, there is no canonical definition to state claims against.
-/

/-! ## A386223.P15050625012545727779

`∩[A025487(n+1), A380543(n+1)]`
-/

namespace A386223.P15050625012545727779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386223.P15050625012545727779

/-! ## A386223.P2779067948165234297

`∩[A364710(n+1), A380543(n+1)]`
-/

namespace A386223.P2779067948165234297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386223.P2779067948165234297

/-! ## A386223.P10107344126017245309

`∩[A133812(n+1), A380543(n+1)]`
-/

namespace A386223.P10107344126017245309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386223.P10107344126017245309

/-! ## A386223.P4519992623907490195

`filter[A380543(n+1), A322585(#)]`
-/

namespace A386223.P4519992623907490195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A386223.P4519992623907490195

/-! ## A386223.P13363263403220608013

`filter[A025487(n+1), A389905(#)]`
-/

namespace A386223.P13363263403220608013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386223.P13363263403220608013

/-! ## A386223.P1386790601171098145

`filter[A364710(n+1), A389905(#)]`
-/

namespace A386223.P1386790601171098145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386223.P1386790601171098145

/-! ## A386223.P6786961571852009951

`∩[A065154(n+1), A364710(n+1)]`
-/

namespace A386223.P6786961571852009951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386223.P6786961571852009951

/-! ## A386223.P10057961261540050989

`∩[A055743(n+1), A364710(n+1)]`
-/

namespace A386223.P10057961261540050989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386223.P10057961261540050989

/-! ## A386223.P12135159843302837117

`∩[A068567(n+1), A364710(n+1)]`
-/

namespace A386223.P12135159843302837117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386223.P12135159843302837117

/-! ## A386223.P12819705024221432374

`filter[A389144(n+1), A322585(#)]`
-/

namespace A386223.P12819705024221432374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A386223.P12819705024221432374

/-!
# A386224: Nonsquarefree weak numbers k that are not products of primorials, whose squarefree kernel is a primorial.

The programs for A386224, there is no canonical definition to state claims against.
-/

/-! ## A386224.P909786128984421857

`∩[A056808(n+1), A380543(n+1)]`
-/

namespace A386224.P909786128984421857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P909786128984421857

/-! ## A386224.P12592487978932035469

`∩[A071365(n+1), A380543(n+1)]`
-/

namespace A386224.P12592487978932035469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P12592487978932035469

/-! ## A386224.P3060025530112302378

`filter[A056808(n+1), A389905(#)]`
-/

namespace A386224.P3060025530112302378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386224.P3060025530112302378

/-! ## A386224.P14520487446697456271

`∩[A056808(n+1), A391026(n+1)]`
-/

namespace A386224.P14520487446697456271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P14520487446697456271

/-! ## A386224.P15894670900549653685

`filter[A387919(n+1), A341629(#)]`
-/

namespace A386224.P15894670900549653685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A386224.P15894670900549653685

/-! ## A386224.P17314053126853052040

`∩[A056808(n+1), A332785(n+1)]`
-/

namespace A386224.P17314053126853052040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P17314053126853052040

/-! ## A386224.P1231821088741324646

`∩[A055932(n+1), A387919(n+1)]`
-/

namespace A386224.P1231821088741324646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P1231821088741324646

/-! ## A386224.P14396811982484835557

`∩[A056808(n+1), A387919(n+1)]`
-/

namespace A386224.P14396811982484835557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P14396811982484835557

/-! ## A386224.P14614579921267417079

`∩[A304450(n+1), A387919(n+1)]`
-/

namespace A386224.P14614579921267417079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P14614579921267417079

/-! ## A386224.P10425878273178342839

`∩[A363814(n+1), A387919(n+1)]`
-/

namespace A386224.P10425878273178342839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386224.P10425878273178342839

/-!
# A386226: The maximum possible number of 8-cycles in an outerplanar graph on n vertices.

The programs for A386226, the canonical program `A386226.P16483733817098933782` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386226 has offset 8).

The definition of A386226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386226.P16483733817098933782

`ogf((1+3x+6x^2+6x^3+10x^4+4x^5+4x^6+4x^7+4x^8)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386226

/-- `ogf((1+3x+6x^2+6x^3+10x^4+4x^5+4x^6+4x^7+4x^8)/(1-x-x^4+x^5))` -/
def P16483733817098933782.Spec : Prop :=
  ∀ n, P16483733817098933782.a n = A386226 (n + 8)

theorem P16483733817098933782.correct : P16483733817098933782.Spec := by
  intro n
  simp only [A386226, Nat.add_sub_cancel]

end A386226

/-!
# A386227: Expansion of e.g.f. cosh(x)^2*(1 + x + x^2/2).

The programs for A386227, the canonical program `A386227.P6999413781950729678` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386227 has offset 0).

The definition of A386227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386227.P6999413781950729678

`ogf((1+x-9x^2-6x^3+32x^4+16x^5-8x^6-32x^7-32x^8)/(1-12x^2+48x^4-64x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386227

/-- `ogf((1+x-9x^2-6x^3+32x^4+16x^5-8x^6-32x^7-32x^8)/(1-12x^2+48x^4-64x^6))` -/
def P6999413781950729678.Spec : Prop :=
  ∀ n, P6999413781950729678.a n = A386227 n

theorem P6999413781950729678.correct : P6999413781950729678.Spec := by
  intro n
  simp only [A386227]

end A386227

/-! ## A386227.P2172602812524180578

`A385601(n)+A199573(n)`
-/

namespace A386227.P2172602812524180578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385601 n + A199573 n

end

end A386227.P2172602812524180578

namespace A386227

/-- `A385601(n)+A199573(n)` -/
def P2172602812524180578.Spec : Prop :=
  ∀ n, P2172602812524180578.a n = A386227 n

end A386227

/-! ## A386227.P1848379523562996260

`∏{e}[A007559(n), A000043(#)]`
-/

namespace A386227.P1848379523562996260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000043 (Nat.factorization (f1 n).natAbs p)

end

end A386227.P1848379523562996260

namespace A386227

/-- `∏{e}[A007559(n), A000043(#)]` -/
def P1848379523562996260.Spec : Prop :=
  ∀ n, P1848379523562996260.a n = A386227 n

end A386227

/-!
# A386229: G.f. A(x) satisfies A(x) = 1/( (1-x)^2 * (1 - x*A(x) - x^2*A'(x)) ).

The programs for A386229, there is no canonical definition to state claims against.
-/

/-! ## A386229.P2606311139294201285

`A109598(A087224(n))`
-/

namespace A386229.P2606311139294201285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109598 (A087224 n).toNat

end

end A386229.P2606311139294201285

/-!
# A386230: G.f. A(x) satisfies A(x) = 1/( (1-x)^3 * (1 - x*A(x) - x^2*A'(x)) ).

The programs for A386230, there is no canonical definition to state claims against.
-/

/-! ## A386230.P16978494678058378951

`A193974(A101556(n))-A010054(n)`
-/

namespace A386230.P16978494678058378951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 (A101556 n).toNat - A010054 n

end

end A386230.P16978494678058378951

/-!
# A386231: Number of symmetric racks of order n, up to isomorphism.

The programs for A386231, there is no canonical definition to state claims against.
-/

/-! ## A386231.P17898149355840600184

`A002635(A181479(n))`
-/

namespace A386231.P17898149355840600184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A181479 n).toNat

end

end A386231.P17898149355840600184

/-! ## A386231.P827071413362760937

`A359755(A034691(n))+A029923(n)`
-/

namespace A386231.P827071413362760937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359755 (A034691 n).toNat + A029923 n

end

end A386231.P827071413362760937

/-!
# A386232: Number of symmetric quandles of order n, up to isomorphism.

The programs for A386232, there is no canonical definition to state claims against.
-/

/-! ## A386232.P4149528424482903282

`A157271(∑[A144188(n)])`
-/

namespace A386232.P4149528424482903282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386232.P4149528424482903282

/-! ## A386232.P16728355070648901550

`A369605(A000295(n))+A000295(n)`
-/

namespace A386232.P16728355070648901550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369605 (A000295 n).toNat + A000295 n

end

end A386232.P16728355070648901550

/-! ## A386232.P3298285300075499601

`A051889(A287891(n)+A039599(n))`
-/

namespace A386232.P3298285300075499601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A287891 n + A039599 n).toNat

end

end A386232.P3298285300075499601

/-!
# A386236: Ratio of the period and the reduced period of the Fibonacci 3-step sequence A000073 mod n.

The programs for A386236, there is no canonical definition to state claims against.
-/

/-! ## A386236.P10111457938368354671

`A046738(n+1)/A046737(n+1)`
-/

namespace A386236.P10111457938368354671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046738 (n + 1) : ℚ) / (A046737 (n + 1) : ℚ)

end

end A386236.P10111457938368354671

/-! ## A386236.P13967348994450865572

`gcd(A153679(A000010(n+1)), A235884(n+1))`
-/

namespace A386236.P13967348994450865572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153679 (A000010 (n + 1)).toNat) (A235884 (n + 1))

end

end A386236.P13967348994450865572

/-! ## A386236.P12627749778736303717

`gcd(3, A007088(A085587(n+1)))`
-/

namespace A386236.P12627749778736303717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A007088 (A085587 (n + 1)).toNat)

end

end A386236.P12627749778736303717

/-! ## A386236.P7737753084415972897

`gcd(A007733(n+1), A391332(A092295(n)))`
-/

namespace A386236.P7737753084415972897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007733 (n + 1)) (A391332 (A092295 n).toNat)

end

end A386236.P7737753084415972897

/-! ## A386236.P552228874268607106

`gcd(A000010(n+1), A064353(A190940(n+1)))`
-/

namespace A386236.P552228874268607106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A064353 (A190940 (n + 1)).toNat)

end

end A386236.P552228874268607106

/-!
# A386237: Denominators of h(n) which is the minimum among the maxima of period n cycles of T(x) = 1 - 2 * |x-1/2|.

The programs for A386237, there is no canonical definition to state claims against.
-/

/-! ## A386237.P15297493428452139193

`A233442(n+1)+A008836(A347990(n))`
-/

namespace A386237.P15297493428452139193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233442 (n + 1) + A008836 (A347990 n).toNat

end

end A386237.P15297493428452139193

/-! ## A386237.P4398751659969271062

`A106478(A034008(n))+A034008(n+3)`
-/

namespace A386237.P4398751659969271062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106478 (A034008 n).toNat + A034008 (n + 3)

end

end A386237.P4398751659969271062

/-! ## A386237.P8999502113913745937

`A126646(n)+A035188(A299282(2*(n+1)))`
-/

namespace A386237.P8999502113913745937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A035188 (A299282 (2 * (n + 1))).toNat

end

end A386237.P8999502113913745937

/-! ## A386237.P15237953846655869814

`A000225(n+1)+A000122(A007955(3*n+5))`
-/

namespace A386237.P15237953846655869814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + A000122 (A007955 (3 * n + 5)).toNat

end

end A386237.P15237953846655869814

/-!
# A386238: G.f. A(x) satisfies A(x) = 1/( (1+x) * (1 - x*A(x) - x^2*A'(x)) ).

The programs for A386238, there is no canonical definition to state claims against.
-/

/-! ## A386238.P11244143969714348305

`A152271(A179525(n))-A035368(n+1)`
-/

namespace A386238.P11244143969714348305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A179525 n).toNat - A035368 (n + 1)

end

end A386238.P11244143969714348305

/-!
# A386249: a(n) is the Hamming weight of A161792(n).

The programs for A386249, there is no canonical definition to state claims against.
-/

/-! ## A386249.P9641896877994913630

`A000120(A161792(n+1))`
-/

namespace A386249.P9641896877994913630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A161792 (n + 1)).toNat

end

end A386249.P9641896877994913630

/-! ## A386249.P5084241820502494731

`filter[A341359(n+1), A322586(#)]`
-/

namespace A386249.P5084241820502494731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322586 (f1 j).toNat = 1) n)

end

end A386249.P5084241820502494731

/-! ## A386249.P5878890210594867880

`filter[A341359(n+1), A344438(#)]`
-/

namespace A386249.P5878890210594867880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344438 (f1 j).toNat = 1) n)

end

end A386249.P5878890210594867880

/-! ## A386249.P15034878065219074371

`filter[A341359(n+1), A065333(#)]`
-/

namespace A386249.P15034878065219074371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A386249.P15034878065219074371

/-! ## A386249.P9040412801969903665

`filter[A341359(n+1), A239681(#)]`
-/

namespace A386249.P9040412801969903665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A239681 (f1 j).toNat = 1) n)

end

end A386249.P9040412801969903665

/-!
# A386250: Total number of ones in runs of 1's of length >= 4 over all binary strings of length n.

The programs for A386250, the canonical program `A386250.P12085811948825934987` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386250 has offset 0).

The definition of A386250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386250.P11132291949786763686

`ogf((4x^4-3x^5)/(1-4x+4x^2))`
-/

namespace A386250.P11132291949786763686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 4, -3] [1, -4, 4] n

end

end A386250.P11132291949786763686

namespace A386250

/-- `ogf((4x^4-3x^5)/(1-4x+4x^2))` -/
def P11132291949786763686.Spec : Prop :=
  ∀ n, P11132291949786763686.a n = A386250 n

end A386250

/-! ## A386250.P12085811948825934987

`4*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=13`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386250

/-- `4*a(n-1)-4*a(n-2)` -/
def P12085811948825934987.Spec : Prop :=
  ∀ n, P12085811948825934987.a n = A386250 n

theorem P12085811948825934987.correct : P12085811948825934987.Spec := by
  intro n
  simp only [A386250]

end A386250

/-!
# A386252: Numbers m of the form 2^i * 3^j * 5^k such that i, j, k > 0 and m+1 and m-1 are both prime numbers.

The programs for A386252, there is no canonical definition to state claims against.
-/

/-! ## A386252.P2532501917234830900

`A080185(n+2)+1`
-/

namespace A386252.P2532501917234830900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080185 (n + 2) + 1

end

end A386252.P2532501917234830900

/-! ## A386252.P11107890826654133309

`∩[A143207(n+1), A393795(n+1)]`
-/

namespace A386252.P11107890826654133309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P11107890826654133309

/-! ## A386252.P10436508845483533462

`∩[A143204(n+1), A393795(n+1)]`
-/

namespace A386252.P10436508845483533462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P10436508845483533462

/-! ## A386252.P10178187335188029829

`∩[A080193(n+1), A393795(n+1)]`
-/

namespace A386252.P10178187335188029829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P10178187335188029829

/-! ## A386252.P3944449115334623716

`∩[A080193(n+1), A384530(n+1)]`
-/

namespace A386252.P3944449115334623716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P3944449115334623716

/-! ## A386252.P2875989032361053118

`∩[A143204(n+1), A384530(n+1)]`
-/

namespace A386252.P2875989032361053118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P2875989032361053118

/-! ## A386252.P983315923316302268

`∩[A143207(n+1), A384530(n+1)]`
-/

namespace A386252.P983315923316302268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P983315923316302268

/-! ## A386252.P6007604835909629740

`∩[A365795(n+1), A384530(n+1)]`
-/

namespace A386252.P6007604835909629740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P6007604835909629740

/-! ## A386252.P15246748842219965279

`∩[A365795(n+1), A393795(n+1)]`
-/

namespace A386252.P15246748842219965279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P15246748842219965279

/-! ## A386252.P2309426492038679055

`∩[A069819(n+1), A384530(n+1)]`
-/

namespace A386252.P2309426492038679055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386252.P2309426492038679055

/-!
# A386253: a(n) = (smallest digit of n)^(largest digit of n) + n.

The programs for A386253, the canonical program `A386253.P11103916408010267952` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386253 has offset 0).

The definition of A386253 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386253.P11103916408010267952

`A054054(n)^A054055(n)+n`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386253

/-- `A054054(n)^A054055(n)+n` -/
def P11103916408010267952.Spec : Prop :=
  ∀ n, P11103916408010267952.a n = (A386253 n : ℚ)

end A386253

/-! ## A386253.P8619638016175460427

`A054054(n)^A004917(n+1)+n`
-/

namespace A386253.P8619638016175460427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054054 n : ℚ) ^ (A004917 (n + 1) : ℤ) + (n : ℚ)

end

end A386253.P8619638016175460427

namespace A386253

/-- `A054054(n)^A004917(n+1)+n` -/
def P8619638016175460427.Spec : Prop :=
  ∀ n, P8619638016175460427.a n = (A386253 n : ℚ)

end A386253

/-! ## A386253.P15096509563073508842

`A031298(n)^A062003(n)+n`
-/

namespace A386253.P15096509563073508842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) ^ (A062003 n : ℤ) + (n : ℚ)

end

end A386253.P15096509563073508842

namespace A386253

/-- `A031298(n)^A062003(n)+n` -/
def P15096509563073508842.Spec : Prop :=
  ∀ n, P15096509563073508842.a n = (A386253 n : ℚ)

end A386253

/-! ## A386253.P13313357182642405731

`A031298(n)^A004904(n+1)+n`
-/

namespace A386253.P13313357182642405731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) ^ (A004904 (n + 1) : ℤ) + (n : ℚ)

end

end A386253.P13313357182642405731

namespace A386253

/-- `A031298(n)^A004904(n+1)+n` -/
def P13313357182642405731.Spec : Prop :=
  ∀ n, P13313357182642405731.a n = (A386253 n : ℚ)

end A386253

/-! ## A386253.P6247633504327444231

`A031298(n)^A007814(A000079(n))+n`
-/

namespace A386253.P6247633504327444231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031298 n : ℚ) ^ (A007814 (A000079 n).toNat : ℤ) + (n : ℚ)

end

end A386253.P6247633504327444231

namespace A386253

/-- `A031298(n)^A007814(A000079(n))+n` -/
def P6247633504327444231.Spec : Prop :=
  ∀ n, P6247633504327444231.a n = (A386253 n : ℚ)

end A386253

/-!
# A386254: Number of words of length n over an infinite alphabet such that for any letter k appearing within a word the letter k appears at least k times.

The programs for A386254, there is no canonical definition to state claims against.
-/

/-! ## A386254.P2508756402190150175

`A337674(A027071(n))`
-/

namespace A386254.P2508756402190150175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337674 (A027071 n).toNat

end

end A386254.P2508756402190150175

/-! ## A386254.P3823478290768512386

`A350786(A148424(n))`
-/

namespace A386254.P3823478290768512386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A148424 n).toNat

end

end A386254.P3823478290768512386

/-! ## A386254.P8610339023295228874

`A350786(A148425(n))`
-/

namespace A386254.P8610339023295228874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350786 (A148425 n).toNat

end

end A386254.P8610339023295228874

/-!
# A386255: Number of words of length n over an infinite alphabet such that for any letter k appearing within a word the letter k appears at least k times and exactly one of each kind of letter is marked.

The programs for A386255, there is no canonical definition to state claims against.
-/

/-! ## A386255.P11569460801708463040

`n*A167482(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A386255.P11569460801708463040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * A167482 (a (n - 1)).toNat

end

end A386255.P11569460801708463040

/-! ## A386255.P2668206024334847070

`n*A293754(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A386255.P2668206024334847070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (n : ℤ) * A293754 (a (n - 1)).toNat

end

end A386255.P2668206024334847070

/-!
# A386258: Exponent of the highest power of 2 dividing the product of exponents of the prime factorization of n.

The programs for A386258, the canonical program `A386258.P4775169082945672394` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386258 has offset 1).

The definition of A386258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386258.P4775169082945672394

`A007814(A005361(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386258

/-- `A007814(A005361(n+1))` -/
def P4775169082945672394.Spec : Prop :=
  ∀ n, P4775169082945672394.a n = A386258 (n + 1)

theorem P4775169082945672394.correct : P4775169082945672394.Spec := by
  intro n
  simp only [A386258, Nat.add_sub_cancel]

end A386258

/-! ## A386258.P4760036519473997872

`∑{e}[n+1, val(#, 2)]`
-/

namespace A386258.P4760036519473997872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2

end

end A386258.P4760036519473997872

namespace A386258

/-- `∑{e}[n+1, val(#, 2)]` -/
def P4760036519473997872.Spec : Prop :=
  ∀ n, (P4760036519473997872.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P15411663597772569728

`val(∏{e}[1+n, #], 2)`
-/

namespace A386258.P15411663597772569728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) 2

end

end A386258.P15411663597772569728

namespace A386258

/-- `val(∏{e}[1+n, #], 2)` -/
def P15411663597772569728.Spec : Prop :=
  ∀ n, (P15411663597772569728.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P1716545411150407655

`∑{p}[n+1, val(val(n+1, #), 2)]`
-/

namespace A386258.P1716545411150407655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.valuation (n + 1) p) 2

end

end A386258.P1716545411150407655

namespace A386258

/-- `∑{p}[n+1, val(val(n+1, #), 2)]` -/
def P1716545411150407655.Spec : Prop :=
  ∀ n, (P1716545411150407655.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P753010444835934526

`val(∏{p}[n+1, val(n+1, #)], 2)`
-/

namespace A386258.P753010444835934526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p) 2

end

end A386258.P753010444835934526

namespace A386258

/-- `val(∏{p}[n+1, val(n+1, #)], 2)` -/
def P753010444835934526.Spec : Prop :=
  ∀ n, (P753010444835934526.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P12483848949810945169

`val(∏{e}[2*n-(n-1), #]², 4)`
-/

namespace A386258.P12483848949810945169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2) 4

end

end A386258.P12483848949810945169

namespace A386258

/-- `val(∏{e}[2*n-(n-1), #]², 4)` -/
def P12483848949810945169.Spec : Prop :=
  ∀ n, (P12483848949810945169.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P17517408588030026248

`log2(A401423(n+1))`
-/

namespace A386258.P17517408588030026248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A401423 (n + 1) : ℝ)

end

end A386258.P17517408588030026248

namespace A386258

/-- `log2(A401423(n+1))` -/
def P17517408588030026248.Spec : Prop :=
  ∀ n, P17517408588030026248.a n = (A386258 (n + 1) : ℝ)

end A386258

/-! ## A386258.P6589022403837489634

`val(A005361(n+1), 2)`
-/

namespace A386258.P6589022403837489634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005361 (n + 1)).toNat 2

end

end A386258.P6589022403837489634

namespace A386258

/-- `val(A005361(n+1), 2)` -/
def P6589022403837489634.Spec : Prop :=
  ∀ n, (P6589022403837489634.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P2069154251828642024

`val(A226602(n+1), 2)`
-/

namespace A386258.P2069154251828642024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A226602 (n + 1)).toNat 2

end

end A386258.P2069154251828642024

namespace A386258

/-- `val(A226602(n+1), 2)` -/
def P2069154251828642024.Spec : Prop :=
  ∀ n, (P2069154251828642024.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P15897514353398308813

`val(A360996(n+1), 2)`
-/

namespace A386258.P15897514353398308813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360996 (n + 1)).toNat 2

end

end A386258.P15897514353398308813

namespace A386258

/-- `val(A360996(n+1), 2)` -/
def P15897514353398308813.Spec : Prop :=
  ∀ n, (P15897514353398308813.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P17903955360364867517

`val(A360969(n+1), 4)`
-/

namespace A386258.P17903955360364867517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360969 (n + 1)).toNat 4

end

end A386258.P17903955360364867517

namespace A386258

/-- `val(A360969(n+1), 4)` -/
def P17903955360364867517.Spec : Prop :=
  ∀ n, (P17903955360364867517.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P4142909903363279421

`val(A360970(n+1), 8)`
-/

namespace A386258.P4142909903363279421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A360970 (n + 1)).toNat 8

end

end A386258.P4142909903363279421

namespace A386258

/-- `val(A360970(n+1), 8)` -/
def P4142909903363279421.Spec : Prop :=
  ∀ n, (P4142909903363279421.a n : ℤ) = A386258 (n + 1)

end A386258

/-! ## A386258.P16445257933461333751

`∑{e}[n+1, A007814(#)]`
-/

namespace A386258.P16445257933461333751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A007814 (Nat.factorization (f1 n) p)

end

end A386258.P16445257933461333751

namespace A386258

/-- `∑{e}[n+1, A007814(#)]` -/
def P16445257933461333751.Spec : Prop :=
  ∀ n, P16445257933461333751.a n = A386258 (n + 1)

end A386258

/-! ## A386258.P1166241959831994385

`A007814(A226602(n+1))`
-/

namespace A386258.P1166241959831994385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A226602 (n + 1)).toNat

end

end A386258.P1166241959831994385

namespace A386258

/-- `A007814(A226602(n+1))` -/
def P1166241959831994385.Spec : Prop :=
  ∀ n, P1166241959831994385.a n = A386258 (n + 1)

end A386258

/-! ## A386258.P16033350394886418085

`A295664(A011262(n+1))`
-/

namespace A386258.P16033350394886418085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (A011262 (n + 1)).toNat

end

end A386258.P16033350394886418085

namespace A386258

/-- `A295664(A011262(n+1))` -/
def P16033350394886418085.Spec : Prop :=
  ∀ n, P16033350394886418085.a n = A386258 (n + 1)

end A386258

/-!
# A386259: Exponent of the highest power of 2 dividing the maximum exponent in the prime factorization of n; a(1) = 0.

The programs for A386259, the canonical program `A386259.P13017037285920601135` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386259 has offset 1).

The definition of A386259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386259.P14195660032615843749

`val(val(A292589(n+1), 2)+1, 2)`
-/

namespace A386259.P14195660032615843749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (A292589 (n + 1)).toNat 2 + 1) 2

end

end A386259.P14195660032615843749

namespace A386259

/-- `val(val(A292589(n+1), 2)+1, 2)` -/
def P14195660032615843749.Spec : Prop :=
  ∀ n, (P14195660032615843749.a n : ℤ) = A386259 (n + 1)

end A386259

/-! ## A386259.P9240532537966057900

`log2(gcd(2^∑{e}[1+n, #], A051903(n+1)))`
-/

namespace A386259.P9240532537966057900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) (A051903 (n + 1)) : ℝ)

end

end A386259.P9240532537966057900

namespace A386259

/-- `log2(gcd(2^∑{e}[1+n, #], A051903(n+1)))` -/
def P9240532537966057900.Spec : Prop :=
  ∀ n, P9240532537966057900.a n = (A386259 (n + 1) : ℝ)

end A386259

/-! ## A386259.P13017037285920601135

`A007814(A066301(n+1)+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386259

/-- `A007814(A066301(n+1)+1)` -/
def P13017037285920601135.Spec : Prop :=
  ∀ n, P13017037285920601135.a n = A386259 (n + 1)

theorem P13017037285920601135.correct : P13017037285920601135.Spec := by
  intro n
  simp only [A386259, Nat.add_sub_cancel]

end A386259

/-! ## A386259.P10098144634999605936

`val(A008486(A051903(n+1)), 2)`
-/

namespace A386259.P10098144634999605936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 (A051903 (n + 1)).toNat).toNat 2

end

end A386259.P10098144634999605936

namespace A386259

/-- `val(A008486(A051903(n+1)), 2)` -/
def P10098144634999605936.Spec : Prop :=
  ∀ n, (P10098144634999605936.a n : ℤ) = A386259 (n + 1)

end A386259

/-! ## A386259.P8205090587325777490

`val(val(A028563(A046523(n+1)), 2), 2)`
-/

namespace A386259.P8205090587325777490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (A028563 (A046523 (n + 1)).toNat).toNat 2) 2

end

end A386259.P8205090587325777490

namespace A386259

/-- `val(val(A028563(A046523(n+1)), 2), 2)` -/
def P8205090587325777490.Spec : Prop :=
  ∀ n, (P8205090587325777490.a n : ℤ) = A386259 (n + 1)

end A386259

/-! ## A386259.P8223728233387052570

`A007814(A051903(n+1)+C(2, n+2))`
-/

namespace A386259.P8223728233387052570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A051903 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A386259.P8223728233387052570

namespace A386259

/-- `A007814(A051903(n+1)+C(2, n+2))` -/
def P8223728233387052570.Spec : Prop :=
  ∀ n, P8223728233387052570.a n = A386259 (n + 1)

end A386259

/-! ## A386259.P9485545442505913408

`A191255(A051903(n+1)+C(2, n+2))`
-/

namespace A386259.P9485545442505913408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (A051903 (n + 1) + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A386259.P9485545442505913408

namespace A386259

/-- `A191255(A051903(n+1)+C(2, n+2))` -/
def P9485545442505913408.Spec : Prop :=
  ∀ n, P9485545442505913408.a n = A386259 (n + 1)

end A386259

/-! ## A386259.P2274579541255607151

`A007814(A051903(n+1)+floor(1/(n+1)))`
-/

namespace A386259.P2274579541255607151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A051903 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A386259.P2274579541255607151

namespace A386259

/-- `A007814(A051903(n+1)+floor(1/(n+1)))` -/
def P2274579541255607151.Spec : Prop :=
  ∀ n, P2274579541255607151.a n = A386259 (n + 1)

end A386259

/-! ## A386259.P537616830083491601

`A191255(A051903(n+1)+A000007(n))`
-/

namespace A386259.P537616830083491601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (A051903 (n + 1) + A000007 n).toNat

end

end A386259.P537616830083491601

namespace A386259

/-- `A191255(A051903(n+1)+A000007(n))` -/
def P537616830083491601.Spec : Prop :=
  ∀ n, P537616830083491601.a n = A386259 (n + 1)

end A386259

/-! ## A386259.P16446724794158653993

`A066301(A066301((n+1)²)+1)`
-/

namespace A386259.P16446724794158653993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A066301 ((n + 1) ^ 2) + 1).toNat

end

end A386259.P16446724794158653993

namespace A386259

/-- `A066301(A066301((n+1)²)+1)` -/
def P16446724794158653993.Spec : Prop :=
  ∀ n, P16446724794158653993.a n = A386259 (n + 1)

end A386259

/-!
# A386260: Maximum exponent in the prime factorization of the exponent of the highest power of 2 dividing 4*n.

The programs for A386260, the canonical program `A386260.P6511394381099978900` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386260 has offset 1).

The definition of A386260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A386260.P6511394381099978900

`A051903(A001511(n+1)+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386260

/-- `A051903(A001511(n+1)+1)` -/
def P6511394381099978900.Spec : Prop :=
  ∀ n, P6511394381099978900.a n = A386260 (n + 1)

theorem P6511394381099978900.correct : P6511394381099978900.Spec := by
  intro n
  simp only [A386260, Nat.add_sub_cancel]

end A386260

/-!
# A386261: a(n) = A001511(A001511(n)), where A001511 is the ruler function.

The programs for A386261, the canonical program `A386261.P786158884757430491` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386261 has offset 1).

The definition of A386261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A001511(n+1))` (program `A386261.P786158884757430491`, by `A386261.P786158884757430491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386261.P7172525848969432037

`val(val(n+1, 2)+1, 2)+1`
-/

namespace A386261.P7172525848969432037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (n + 1) 2 + 1) 2 + 1

end

end A386261.P7172525848969432037

namespace A386261

/-- `val(val(n+1, 2)+1, 2)+1` -/
def P7172525848969432037.Spec : Prop :=
  ∀ n, (P7172525848969432037.a n : ℤ) = A386261 (n + 1)

end A386261

/-! ## A386261.P786158884757430491

`A001511(A001511(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386261

/-- `A001511(A001511(n+1))` -/
def P786158884757430491.Spec : Prop :=
  ∀ n, P786158884757430491.a n = A386261 (n + 1)

theorem P786158884757430491.correct : P786158884757430491.Spec := by
  intro n
  simp only [A386261, Nat.add_sub_cancel]

end A386261

/-! ## A386261.P10564441282863079216

`val(val((n+1)², 2)+2, 2)`
-/

namespace A386261.P10564441282863079216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 2) 2

end

end A386261.P10564441282863079216

namespace A386261

/-- `val(val((n+1)², 2)+2, 2)` -/
def P10564441282863079216.Spec : Prop :=
  ∀ n, (P10564441282863079216.a n : ℤ) = A386261 (n + 1)

end A386261

/-! ## A386261.P16538025456804735188

`val(A361689(n+1), 2)`
-/

namespace A386261.P16538025456804735188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A361689 (n + 1)).toNat 2

end

end A386261.P16538025456804735188

namespace A386261

/-- `val(A361689(n+1), 2)` -/
def P16538025456804735188.Spec : Prop :=
  ∀ n, (P16538025456804735188.a n : ℤ) = A386261 (n + 1)

end A386261

/-! ## A386261.P3347867417524754980

`val(A366839(n+1), 2)`
-/

namespace A386261.P3347867417524754980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A366839 (n + 1)).toNat 2

end

end A386261.P3347867417524754980

namespace A386261

/-- `val(A366839(n+1), 2)` -/
def P3347867417524754980.Spec : Prop :=
  ∀ n, (P3347867417524754980.a n : ℤ) = A386261 (n + 1)

end A386261

/-! ## A386261.P17979809096745308364

`A050603(A059132(n))`
-/

namespace A386261.P17979809096745308364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A059132 n).toNat

end

end A386261.P17979809096745308364

namespace A386261

/-- `A050603(A059132(n))` -/
def P17979809096745308364.Spec : Prop :=
  ∀ n, P17979809096745308364.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P2380154695149212028

`A127625(A115364(n+1))`
-/

namespace A386261.P2380154695149212028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127625 (A115364 (n + 1)).toNat

end

end A386261.P2380154695149212028

namespace A386261

/-- `A127625(A115364(n+1))` -/
def P2380154695149212028.Spec : Prop :=
  ∀ n, P2380154695149212028.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P2256939540313474637

`A007814(A361689(n+1))`
-/

namespace A386261.P2256939540313474637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A361689 (n + 1)).toNat

end

end A386261.P2256939540313474637

namespace A386261

/-- `A007814(A361689(n+1))` -/
def P2256939540313474637.Spec : Prop :=
  ∀ n, P2256939540313474637.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P8949936384587579104

`A001511(A059139(n)-1)`
-/

namespace A386261.P8949936384587579104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A059139 n - 1).toNat

end

end A386261.P8949936384587579104

namespace A386261

/-- `A001511(A059139(n)-1)` -/
def P8949936384587579104.Spec : Prop :=
  ∀ n, P8949936384587579104.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P8303327604723764617

`A007814(A059132(n)+2)`
-/

namespace A386261.P8303327604723764617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A059132 n + 2).toNat

end

end A386261.P8303327604723764617

namespace A386261

/-- `A007814(A059132(n)+2)` -/
def P8303327604723764617.Spec : Prop :=
  ∀ n, P8303327604723764617.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P14625063616348172313

`A001511(A085058(n)-1)`
-/

namespace A386261.P14625063616348172313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A085058 n - 1).toNat

end

end A386261.P14625063616348172313

namespace A386261

/-- `A001511(A085058(n)-1)` -/
def P14625063616348172313.Spec : Prop :=
  ∀ n, P14625063616348172313.a n = A386261 (n + 1)

theorem P14625063616348172313.correct : P14625063616348172313.Spec := by
  intro n
  simp only [A386261, Nat.add_sub_cancel, A386261.P14625063616348172313.a, A386261.P786158884757430491.a, A001511, A001511.P17146462531039486101.a, A085058, A085058.P14130226451424256143.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386261

/-! ## A386261.P3353882156465949862

`A059129(A059139(n)-2)`
-/

namespace A386261.P3353882156465949862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A059139 n - 2).toNat

end

end A386261.P3353882156465949862

namespace A386261

/-- `A059129(A059139(n)-2)` -/
def P3353882156465949862.Spec : Prop :=
  ∀ n, P3353882156465949862.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P55996959874642926

`A059129(A059132(n)/2)`
-/

namespace A386261.P55996959874642926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (SequenceMachineLib.roundAway ((A059132 n : ℚ) / 2)).toNat

end

end A386261.P55996959874642926

namespace A386261

/-- `A059129(A059132(n)/2)` -/
def P55996959874642926.Spec : Prop :=
  ∀ n, P55996959874642926.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P4211939120335871131

`A001511(A050603(2*n))`
-/

namespace A386261.P4211939120335871131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050603 (2 * n)).toNat

end

end A386261.P4211939120335871131

namespace A386261

/-- `A001511(A050603(2*n))` -/
def P4211939120335871131.Spec : Prop :=
  ∀ n, P4211939120335871131.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P16404034958464580087

`A001511(A094267(2*n))`
-/

namespace A386261.P16404034958464580087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A094267 (2 * n)).toNat

end

end A386261.P16404034958464580087

namespace A386261

/-- `A001511(A094267(2*n))` -/
def P16404034958464580087.Spec : Prop :=
  ∀ n, P16404034958464580087.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P6037198015169812655

`val(A390505(2*n+1), 2)`
-/

namespace A386261.P6037198015169812655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A390505 (2 * n + 1)).toNat 2

end

end A386261.P6037198015169812655

namespace A386261

/-- `val(A390505(2*n+1), 2)` -/
def P6037198015169812655.Spec : Prop :=
  ∀ n, (P6037198015169812655.a n : ℤ) = A386261 (n + 1)

end A386261

/-! ## A386261.P8033460454487768579

`A001511(A050604(2*n))`
-/

namespace A386261.P8033460454487768579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050604 (2 * n)).toNat

end

end A386261.P8033460454487768579

namespace A386261

/-- `A001511(A050604(2*n))` -/
def P8033460454487768579.Spec : Prop :=
  ∀ n, P8033460454487768579.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P9769359668068688924

`A001511(A279357(n))`
-/

namespace A386261.P9769359668068688924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A279357 n).toNat

end

end A386261.P9769359668068688924

namespace A386261

/-- `A001511(A279357(n))` -/
def P9769359668068688924.Spec : Prop :=
  ∀ n, P9769359668068688924.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P16787428296839309492

`A136480(A127750(n))`
-/

namespace A386261.P16787428296839309492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A127750 n).toNat

end

end A386261.P16787428296839309492

namespace A386261

/-- `A136480(A127750(n))` -/
def P16787428296839309492.Spec : Prop :=
  ∀ n, P16787428296839309492.a n = A386261 (n + 1)

end A386261

/-! ## A386261.P17450437544463324554

`A007814(2*A279357(n))`
-/

namespace A386261.P17450437544463324554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A279357 n).toNat

end

end A386261.P17450437544463324554

namespace A386261

/-- `A007814(2*A279357(n))` -/
def P17450437544463324554.Spec : Prop :=
  ∀ n, P17450437544463324554.a n = A386261 (n + 1)

end A386261

/-!
# A386262: a(n) = A051903(A051903(n)) for n >= 2, a(1) = 0.

The programs for A386262, the canonical program `A386262.P4974348746514539254` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386262 has offset 1).

The definition of A386262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386262.P4974348746514539254

`A051903(A066301(n+1)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386262

/-- `A051903(A066301(n+1)+1)` -/
def P4974348746514539254.Spec : Prop :=
  ∀ n, P4974348746514539254.a n = A386262 (n + 1)

theorem P4974348746514539254.correct : P4974348746514539254.Spec := by
  intro n
  simp only [A386262, Nat.add_sub_cancel]

end A386262

/-! ## A386262.P2724706570133308390

`A051903(A051903(floor(sqrt(n²+1))+1))`
-/

namespace A386262.P2724706570133308390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A051903 (Nat.sqrt (n ^ 2 + 1) + 1)).toNat

end

end A386262.P2724706570133308390

namespace A386262

/-- `A051903(A051903(floor(sqrt(n²+1))+1))` -/
def P2724706570133308390.Spec : Prop :=
  ∀ n, P2724706570133308390.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P17954327154064779828

`A051903(A051903(n+1)+floor(1/(n+1)))`
-/

namespace A386262.P17954327154064779828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A051903 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A386262.P17954327154064779828

namespace A386262

/-- `A051903(A051903(n+1)+floor(1/(n+1)))` -/
def P17954327154064779828.Spec : Prop :=
  ∀ n, P17954327154064779828.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P11962000841703471094

`A051903(gcd(A008683(n+1), A051903(n+1)))`
-/

namespace A386262.P11962000841703471094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.gcd (A008683 (n + 1)) (A051903 (n + 1)))

end

end A386262.P11962000841703471094

namespace A386262

/-- `A051903(gcd(A008683(n+1), A051903(n+1)))` -/
def P11962000841703471094.Spec : Prop :=
  ∀ n, P11962000841703471094.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P15921537567057854300

`A051903(or(A008966(n+1), A051903(n+1)))`
-/

namespace A386262.P15921537567057854300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.lor (A008966 (n + 1)) (A051903 (n + 1))).toNat

end

end A386262.P15921537567057854300

namespace A386262

/-- `A051903(or(A008966(n+1), A051903(n+1)))` -/
def P15921537567057854300.Spec : Prop :=
  ∀ n, P15921537567057854300.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P12582785857908993257

`A124010(A051903(n+1)!)`
-/

namespace A386262.P12582785857908993257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (Nat.factorial (A051903 (n + 1)).toNat)

end

end A386262.P12582785857908993257

namespace A386262

/-- `A124010(A051903(n+1)!)` -/
def P12582785857908993257.Spec : Prop :=
  ∀ n, P12582785857908993257.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P7311084346152029641

`A070198(n)%A096309(n+1)`
-/

namespace A386262.P7311084346152029641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A096309 (n + 1))

end

end A386262.P7311084346152029641

namespace A386262

/-- `A070198(n)%A096309(n+1)` -/
def P7311084346152029641.Spec : Prop :=
  ∀ n, P7311084346152029641.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P5439068238268569716

`A081973(n+1)%A096309(n+1)`
-/

namespace A386262.P5439068238268569716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081973 (n + 1)) (A096309 (n + 1))

end

end A386262.P5439068238268569716

namespace A386262

/-- `A081973(n+1)%A096309(n+1)` -/
def P5439068238268569716.Spec : Prop :=
  ∀ n, P5439068238268569716.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P14520961691103139870

`A023518(A294875(n+1))`
-/

namespace A386262.P14520961691103139870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023518 (A294875 (n + 1)).toNat

end

end A386262.P14520961691103139870

namespace A386262

/-- `A023518(A294875(n+1))` -/
def P14520961691103139870.Spec : Prop :=
  ∀ n, P14520961691103139870.a n = A386262 (n + 1)

end A386262

/-! ## A386262.P18156383493766113093

`A136973(n+1)%A096309(n+1)`
-/

namespace A386262.P18156383493766113093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136973 (n + 1)) (A096309 (n + 1))

end

end A386262.P18156383493766113093

namespace A386262

/-- `A136973(n+1)%A096309(n+1)` -/
def P18156383493766113093.Spec : Prop :=
  ∀ n, P18156383493766113093.a n = A386262 (n + 1)

end A386262

/-!
# A386263: G.f. A(x) satisfies A(x) = 1/( (1-x)^2 * (1 - x*A(x) - 2*x^2*A'(x)) ).

The programs for A386263, there is no canonical definition to state claims against.
-/

/-! ## A386263.P11320010206860062590

`A284511(A079489(n)+A000217(n))`
-/

namespace A386263.P11320010206860062590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284511 (A079489 n + A000217 n).toNat

end

end A386263.P11320010206860062590

/-!
# A386264: G.f. A(x) satisfies A(x) = 1/( (1-x)^3 * (1 - x*A(x) - 2*x^2*A'(x)) ).

The programs for A386264, there is no canonical definition to state claims against.
-/

/-! ## A386264.P11757169547652594236

`A004277(A387459(n))-A234017(n+2)`
-/

namespace A386264.P11757169547652594236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A387459 n).toNat - A234017 (n + 2)

end

end A386264.P11757169547652594236

/-!
# A386266: G.f. A(x) satisfies A(x) = 1/( (1+x) * (1 - x*A(x) - 2*x^2*A'(x)) ).

The programs for A386266, there is no canonical definition to state claims against.
-/

/-! ## A386266.P16615943828307837170

`A230747(A002110(n))+A000166(n)`
-/

namespace A386266.P16615943828307837170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230747 (A002110 n).toNat + A000166 n

end

end A386266.P16615943828307837170

/-! ## A386266.P270361803445338926

`A379879(n)-A165656(A368095(n))`
-/

namespace A386266.P270361803445338926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379879 n - A165656 (A368095 n).toNat

end

end A386266.P270361803445338926

/-!
# A386267: If k appears, k^2 does not.

The programs for A386267, the canonical program `A386267.P3202596603399632592` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386267 has offset 1).

The definition of A386267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386267.P3202596603399632592

`comp[comp[comp[n²]²]²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386267

/-- `comp[comp[comp[n²]²]²]` -/
def P3202596603399632592.Spec : Prop :=
  ∀ n, (P3202596603399632592.a n : ℤ) = A386267 (n + 1)

theorem P3202596603399632592.correct : P3202596603399632592.Spec := by
  intro n
  simp only [A386267, Nat.add_sub_cancel]

end A386267

/-! ## A386267.P10306316466379749283

`record[sqrt(A073842(n+2))]`
-/

namespace A386267.P10306316466379749283
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073842 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386267.P10306316466379749283

namespace A386267

/-- `record[sqrt(A073842(n+2))]` -/
def P10306316466379749283.Spec : Prop :=
  ∀ n, P10306316466379749283.a n = (A386267 (n + 1) : ℝ)

end A386267

/-! ## A386267.P8573882468142506279

`lt[A096483(A032741(n)+1)%3, 1]`
-/

namespace A386267.P8573882468142506279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096483 (A032741 n + 1).toNat) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A386267.P8573882468142506279

namespace A386267

/-- `lt[A096483(A032741(n)+1)%3, 1]` -/
def P8573882468142506279.Spec : Prop :=
  ∀ n, (P8573882468142506279.a n : ℤ) = A386267 (n + 1)

end A386267

/-! ## A386267.P17200023828886817710

`lt[A030129(A000005(n+1)), 1]+1`
-/

namespace A386267.P17200023828886817710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030129 (A000005 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A386267.P17200023828886817710

namespace A386267

/-- `lt[A030129(A000005(n+1)), 1]+1` -/
def P17200023828886817710.Spec : Prop :=
  ∀ n, (P17200023828886817710.a n : ℤ) = A386267 (n + 1)

end A386267

/-! ## A386267.P8067940027695917710

`lt[A010052(n), A000188(A284639(3*n+2))]`
-/

namespace A386267.P8067940027695917710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A284639 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386267.P8067940027695917710

namespace A386267

/-- `lt[A010052(n), A000188(A284639(3*n+2))]` -/
def P8067940027695917710.Spec : Prop :=
  ∀ n, (P8067940027695917710.a n : ℤ) = A386267 (n + 1)

end A386267

/-! ## A386267.P12903038685658064548

`lt[A000122(n), A331184(A296121(3*n+2))]`
-/

namespace A386267.P12903038685658064548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331184 (A296121 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386267.P12903038685658064548

namespace A386267

/-- `lt[A000122(n), A331184(A296121(3*n+2))]` -/
def P12903038685658064548.Spec : Prop :=
  ∀ n, (P12903038685658064548.a n : ℤ) = A386267 (n + 1)

end A386267

/-! ## A386267.P15347998356018104990

`lt[A000122(n), A073184(A008476(3*n+2))]`
-/

namespace A386267.P15347998356018104990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (A008476 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386267.P15347998356018104990

namespace A386267

/-- `lt[A000122(n), A073184(A008476(3*n+2))]` -/
def P15347998356018104990.Spec : Prop :=
  ∀ n, (P15347998356018104990.a n : ℤ) = A386267 (n + 1)

end A386267

/-! ## A386267.P12224462768086671427

`lt[A000122(n), A033630(A111503(n+4))]`
-/

namespace A386267.P12224462768086671427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A111503 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386267.P12224462768086671427

namespace A386267

/-- `lt[A000122(n), A033630(A111503(n+4))]` -/
def P12224462768086671427.Spec : Prop :=
  ∀ n, (P12224462768086671427.a n : ℤ) = A386267 (n + 1)

end A386267

/-! ## A386267.P8372925212317046236

`lt[A000122(n), A304687(A260563(3*(n+1)))]`
-/

namespace A386267.P8372925212317046236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304687 (A260563 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A386267.P8372925212317046236

namespace A386267

/-- `lt[A000122(n), A304687(A260563(3*(n+1)))]` -/
def P8372925212317046236.Spec : Prop :=
  ∀ n, (P8372925212317046236.a n : ℤ) = A386267 (n + 1)

end A386267

/-! ## A386267.P16678829651269947886

`A073842(record[A073842(n+2)])`
-/

namespace A386267.P16678829651269947886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073842 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A386267.P16678829651269947886

namespace A386267

/-- `A073842(record[A073842(n+2)])` -/
def P16678829651269947886.Spec : Prop :=
  ∀ n, P16678829651269947886.a n = A386267 (n + 1)

end A386267

/-!
# A386268: a(n) = numerator((prime(n) - 2)/(n - 1)).

The programs for A386268, the canonical program `A386268.P721446606681825854` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386268 has offset 2).

The definition of A386268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386268.P721446606681825854

`A392359(A040976(n+2))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A386268

/-- `A392359(A040976(n+2))` -/
def P721446606681825854.Spec : Prop :=
  ∀ n, P721446606681825854.a n = A386268 (n + 2)

theorem P721446606681825854.correct : P721446606681825854.Spec := by
  intro n
  simp only [A386268, Nat.add_sub_cancel]

end A386268

/-! ## A386268.P10433958203654885548

`A392359(eq[A040011(n), A296118(n+2)])`
-/

namespace A386268.P10433958203654885548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296118 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A386268.P10433958203654885548

namespace A386268

/-- `A392359(eq[A040011(n), A296118(n+2)])` -/
def P10433958203654885548.Spec : Prop :=
  ∀ n, P10433958203654885548.a n = A386268 (n + 2)

end A386268

/-!
# A386269: a(n) = denominator((prime(n) - 2)/(n - 1)).

The programs for A386269, there is no canonical definition to state claims against.
-/

/-! ## A386269.P368122773984596893

`A000122(A225554(2*n+7))+(n+1)/3^val(n+1, 3)`
-/

namespace A386269.P368122773984596893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (A225554 (2 * n + 7)).toNat : ℚ) + (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

end

end A386269.P368122773984596893

/-! ## A386269.P1713562070646204334

`A173677(A000045(n+4))+A038502(n+1)`
-/

namespace A386269.P1713562070646204334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173677 (A000045 (n + 4)).toNat + A038502 (n + 1)

end

end A386269.P1713562070646204334

/-! ## A386269.P11967349112636411519

`A159782(A134612(3*(n+1)))+A038502(n+1)`
-/

namespace A386269.P11967349112636411519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159782 (A134612 (3 * (n + 1))).toNat + A038502 (n + 1)

end

end A386269.P11967349112636411519

/-! ## A386269.P15479686143587096669

`gcd(n+1, A000292(A057813(n)))`
-/

namespace A386269.P15479686143587096669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000292 (A057813 n).toNat)

end

end A386269.P15479686143587096669

/-!
# A386270: Total number of ones in runs of 1s of length <=2 over all binary strings of length n.

The programs for A386270, the canonical program `A386270.P12520224299471244233` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386270 has offset 0).

The definition of A386270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386270.P12520224299471244233

`ogf((x-3x^3+2x^4)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386270

/-- `ogf((x-3x^3+2x^4)/(1-4x+4x^2))` -/
def P12520224299471244233.Spec : Prop :=
  ∀ n, P12520224299471244233.a n = A386270 n

theorem P12520224299471244233.correct : P12520224299471244233.Spec := by
  intro n
  simp only [A386270]

end A386270

/-! ## A386270.P15296392339893213735

`A045623(n)-A122391(n)`
-/

namespace A386270.P15296392339893213735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A122391 n

end

end A386270.P15296392339893213735

namespace A386270

/-- `A045623(n)-A122391(n)` -/
def P15296392339893213735.Spec : Prop :=
  ∀ n, P15296392339893213735.a n = A386270 n

end A386270

/-! ## A386270.P10990128002408188778

`Δ[4*(a(n-1)-a(n-2))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=14`
-/

namespace A386270.P10990128002408188778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5, 14] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A386270.P10990128002408188778

namespace A386270

/-- `Δ[4*(a(n-1)-a(n-2))]` -/
def P10990128002408188778.Spec : Prop :=
  ∀ n, P10990128002408188778.a n = A386270 n

end A386270

/-! ## A386270.P15623717302208189178

`round(A052951(n)/4)`
-/

namespace A386270.P15623717302208189178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A052951 n : ℚ) / 4)

end

end A386270.P15623717302208189178

namespace A386270

/-- `round(A052951(n)/4)` -/
def P15623717302208189178.Spec : Prop :=
  ∀ n, P15623717302208189178.a n = A386270 n

end A386270

/-! ## A386270.P18069036739907470343

`A026922(A052951(n))`
-/

namespace A386270.P18069036739907470343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A052951 n).toNat

end

end A386270.P18069036739907470343

namespace A386270

/-- `A026922(A052951(n))` -/
def P18069036739907470343.Spec : Prop :=
  ∀ n, P18069036739907470343.a n = A386270 n

end A386270

/-!
# A386278: Multiplicative sequence a(n) with a(p^e) = 1 + (e mod 4) * (3 - (e mod 4)) for prime p and e >= 0.

The programs for A386278, the canonical program `A386278.P4176702376567079211` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386278 has offset 1).

The definition of A386278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386278.P4176702376567079211

`∏{e}[n+1, C(3, #%4)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386278

/-- `∏{e}[n+1, C(3, #%4)]` -/
def P4176702376567079211.Spec : Prop :=
  ∀ n, (P4176702376567079211.a n : ℤ) = A386278 (n + 1)

theorem P4176702376567079211.correct : P4176702376567079211.Spec := by
  intro n
  simp only [A386278, Nat.add_sub_cancel]

end A386278

/-! ## A386278.P14843928259755139728

`∏{e}[n+1, and(2, -#)+1]`
-/

namespace A386278.P14843928259755139728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Int.land 2 (-(Nat.factorization (f1 n) p : ℤ)) + 1)

end

end A386278.P14843928259755139728

namespace A386278

/-- `∏{e}[n+1, and(2, -#)+1]` -/
def P14843928259755139728.Spec : Prop :=
  ∀ n, P14843928259755139728.a n = A386278 (n + 1)

end A386278

/-! ## A386278.P5783177792544346282

`∏{e}[n+1, A084101(#)]`
-/

namespace A386278.P5783177792544346282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A084101 (Nat.factorization (f1 n) p)

end

end A386278.P5783177792544346282

namespace A386278

/-- `∏{e}[n+1, A084101(#)]` -/
def P5783177792544346282.Spec : Prop :=
  ∀ n, P5783177792544346282.a n = A386278 (n + 1)

end A386278

/-! ## A386278.P1008604991887655078

`A246269(A368883(n+1))`
-/

namespace A386278.P1008604991887655078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246269 (A368883 (n + 1)).toNat

end

end A386278.P1008604991887655078

namespace A386278

/-- `A246269(A368883(n+1))` -/
def P1008604991887655078.Spec : Prop :=
  ∀ n, P1008604991887655078.a n = A386278 (n + 1)

end A386278

/-! ## A386278.P10764187630055137665

`∑{d}[n+1, A355837(#)*A370297((n+1)/#)]`
-/

namespace A386278.P10764187630055137665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355837 d * A370297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386278.P10764187630055137665

namespace A386278

/-- `∑{d}[n+1, A355837(#)*A370297((n+1)/#)]` -/
def P10764187630055137665.Spec : Prop :=
  ∀ n, P10764187630055137665.a n = A386278 (n + 1)

end A386278

/-! ## A386278.P8041580186579785726

`A293442(A007913(A019554(n+1))²)`
-/

namespace A386278.P8041580186579785726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A007913 (A019554 (n + 1)).toNat ^ 2).toNat

end

end A386278.P8041580186579785726

namespace A386278

/-- `A293442(A007913(A019554(n+1))²)` -/
def P8041580186579785726.Spec : Prop :=
  ∀ n, P8041580186579785726.a n = A386278 (n + 1)

end A386278

/-! ## A386278.P17266044844627132781

`A365345(A007913(A000188(A053143(n+1))))`
-/

namespace A386278.P17266044844627132781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365345 (A007913 (A000188 (A053143 (n + 1)).toNat).toNat).toNat

end

end A386278.P17266044844627132781

namespace A386278

/-- `A365345(A007913(A000188(A053143(n+1))))` -/
def P17266044844627132781.Spec : Prop :=
  ∀ n, P17266044844627132781.a n = A386278 (n + 1)

end A386278

/-!
# A386282: Numbers k such that (31^k - 4^k)/27 is prime.

The programs for A386282, there is no canonical definition to state claims against.
-/

/-! ## A386282.P7320628624499523666

`A291284(A158296(n+1))`
-/

namespace A386282.P7320628624499523666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291284 (A158296 (n + 1)).toNat

end

end A386282.P7320628624499523666

/-!
# A386291: Long leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A386291, the canonical program `A386291.P6378607592052834356` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386291 has offset 0).

The definition of A386291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386291.P6378607592052834356

`2*A000108(n)*(A000108(n)+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386291

/-- `2*A000108(n)*(A000108(n)+1)` -/
def P6378607592052834356.Spec : Prop :=
  ∀ n, P6378607592052834356.a n = A386291 n

theorem P6378607592052834356.correct : P6378607592052834356.Spec := by
  intro n
  simp only [A386291]

end A386291

/-! ## A386291.P17648187431859772951

`4*C(1+A000108(n), 2)`
-/

namespace A386291.P17648187431859772951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (1 + A000108 n).toNat 2

end

end A386291.P17648187431859772951

namespace A386291

/-- `4*C(1+A000108(n), 2)` -/
def P17648187431859772951.Spec : Prop :=
  ∀ n, (P17648187431859772951.a n : ℤ) = A386291 n

end A386291

/-! ## A386291.P15626599060413972688

`A383958(n)+A383251(n)`
-/

namespace A386291.P15626599060413972688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383958 n + A383251 n

end

end A386291.P15626599060413972688

namespace A386291

/-- `A383958(n)+A383251(n)` -/
def P15626599060413972688.Spec : Prop :=
  ∀ n, P15626599060413972688.a n = A386291 n

theorem P15626599060413972688.correct : P15626599060413972688.Spec := by
  intro n
  simp only [A386291, Nat.add_sub_cancel, A386291.P15626599060413972688.a, A386291.P6378607592052834356.a, A000108, A000108.P17551949696095299361.a, A383251, A383251.P10776672623636940607.a, A383958, A383958.P9624006830103847093.a, A001246, A001246.P6480413615949402633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386291

/-! ## A386291.P14110640087525894418

`A383957(n)-A383251(n)`
-/

namespace A386291.P14110640087525894418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383957 n - A383251 n

end

end A386291.P14110640087525894418

namespace A386291

/-- `A383957(n)-A383251(n)` -/
def P14110640087525894418.Spec : Prop :=
  ∀ n, P14110640087525894418.a n = A386291 n

theorem P14110640087525894418.correct : P14110640087525894418.Spec := by
  intro n
  simp only [A386291, Nat.add_sub_cancel, A386291.P14110640087525894418.a, A386291.P6378607592052834356.a, A000108, A000108.P17551949696095299361.a, A383251, A383251.P10776672623636940607.a, A383957, A383957.P8900195989436403223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386291

/-! ## A386291.P6392603343733614246

`A383251(n)+2*A039599(∑[n])²-1`
-/

namespace A386291.P6392603343733614246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 n + (2 * A039599 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1)

end

end A386291.P6392603343733614246

namespace A386291

/-- `A383251(n)+2*A039599(∑[n])²-1` -/
def P6392603343733614246.Spec : Prop :=
  ∀ n, P6392603343733614246.a n = A386291 n

end A386291

/-! ## A386291.P5544379556592156598

`lcm(A089408(2*(n+1))+2, A089408(2*(n+1)))`
-/

namespace A386291.P5544379556592156598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089408 (2 * (n + 1)) + 2) (A089408 (2 * (n + 1)))

end

end A386291.P5544379556592156598

namespace A386291

/-- `lcm(A089408(2*(n+1))+2, A089408(2*(n+1)))` -/
def P5544379556592156598.Spec : Prop :=
  ∀ n, (P5544379556592156598.a n : ℤ) = A386291 n

end A386291

/-! ## A386291.P1094649648247075796

`A000108(n)+A382114(n)-A383251(n)`
-/

namespace A386291.P1094649648247075796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A382114 n - A383251 n)

end

end A386291.P1094649648247075796

namespace A386291

/-- `A000108(n)+A382114(n)-A383251(n)` -/
def P1094649648247075796.Spec : Prop :=
  ∀ n, P1094649648247075796.a n = A386291 n

theorem P1094649648247075796.correct : P1094649648247075796.Spec := by
  intro n
  simp only [A386291, Nat.add_sub_cancel, A386291.P1094649648247075796.a, A386291.P6378607592052834356.a, A000108, A000108.P17551949696095299361.a, A382114, A382114.P18285456847627497086.a, A383251, A383251.P10776672623636940607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A386291

/-! ## A386291.P13875148044094589563

`A002420(n+1)*A115140(n+1)-A002420(n+1)`
-/

namespace A386291.P13875148044094589563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002420 (n + 1) * A115140 (n + 1) - A002420 (n + 1)

end

end A386291.P13875148044094589563

namespace A386291

/-- `A002420(n+1)*A115140(n+1)-A002420(n+1)` -/
def P13875148044094589563.Spec : Prop :=
  ∀ n, P13875148044094589563.a n = A386291 n

end A386291

/-! ## A386291.P8329777382014782300

`2*A381483(n)/A383251(n)`
-/

namespace A386291.P8329777382014782300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A381483 n : ℚ) / (A383251 n : ℚ)

end

end A386291.P8329777382014782300

namespace A386291

/-- `2*A381483(n)/A383251(n)` -/
def P8329777382014782300.Spec : Prop :=
  ∀ n, P8329777382014782300.a n = (A386291 n : ℚ)

end A386291

/-!
# A386292: The maximum possible number of 9-cycles in an outerplanar graph on n vertices.

The programs for A386292, the canonical program `A386292.P6601797165942423220` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386292 has offset 9).

The definition of A386292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386292.P6601797165942423220

`ogf((1+4x+6x^2+12x^3+11x^4+18x^5+16x^6+26x^7+14x^8+18x^9+14x^10+18x^11+8x^12+8x^13+8x^14+8x^15)/(1-x-x^8+x^9))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386292

/-- `ogf((1+4x+6x^2+12x^3+11x^4+18x^5+16x^6+26x^7+14x^8+18x^9+14x^10+18x^11+8x^12+8x^13+8x^14+8x^15)/(1-x-x^8+x^9))` -/
def P6601797165942423220.Spec : Prop :=
  ∀ n, P6601797165942423220.a n = A386292 (n + 9)

theorem P6601797165942423220.correct : P6601797165942423220.Spec := by
  intro n
  simp only [A386292, Nat.add_sub_cancel]

end A386292

/-!
# A386293: a(n) = 9^n - (1/2)*4^n, n > 0; a(0) = 0.

The programs for A386293, the canonical program `A386293.P14492066126498285944` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386293 has offset 0).

The definition of A386293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386293.P11784103313220943611

`ogf((7x-18x^2)/(1-13x+36x^2))`
-/

namespace A386293.P11784103313220943611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -18] [1, -13, 36] n

end

end A386293.P11784103313220943611

namespace A386293

/-- `ogf((7x-18x^2)/(1-13x+36x^2))` -/
def P11784103313220943611.Spec : Prop :=
  ∀ n, P11784103313220943611.a n = A386293 n

end A386293

/-! ## A386293.P14492066126498285944

`13*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=7, a(2)=73`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386293

/-- `13*a(n-1)-36*a(n-2)` -/
def P14492066126498285944.Spec : Prop :=
  ∀ n, P14492066126498285944.a n = A386293 n

theorem P14492066126498285944.correct : P14492066126498285944.Spec := by
  intro n
  simp only [A386293]

end A386293

/-! ## A386293.P15543609366504631264

`A064686(Δ[n²])`
-/

namespace A386293.P15543609366504631264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A386293.P15543609366504631264

namespace A386293

/-- `A064686(Δ[n²])` -/
def P15543609366504631264.Spec : Prop :=
  ∀ n, P15543609366504631264.a n = A386293 n

end A386293

/-! ## A386293.P16693705114367450157

`9^n-A081294(n)`
-/

namespace A386293.P16693705114367450157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) - A081294 n

end

end A386293.P16693705114367450157

namespace A386293

/-- `9^n-A081294(n)` -/
def P16693705114367450157.Spec : Prop :=
  ∀ n, P16693705114367450157.a n = A386293 n

end A386293

/-! ## A386293.P15152515817220772869

`floor(A027649(2*n)/2)`
-/

namespace A386293.P15152515817220772869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027649 (2 * n) : ℚ) / 2⌋

end

end A386293.P15152515817220772869

namespace A386293

/-- `floor(A027649(2*n)/2)` -/
def P15152515817220772869.Spec : Prop :=
  ∀ n, P15152515817220772869.a n = A386293 n

end A386293

/-! ## A386293.P10286331415896081157

`record[A064686(A000265(n+1))]`
-/

namespace A386293.P10286331415896081157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064686 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386293.P10286331415896081157

namespace A386293

/-- `record[A064686(A000265(n+1))]` -/
def P10286331415896081157.Spec : Prop :=
  ∀ n, P10286331415896081157.a n = A386293 n

end A386293

/-! ## A386293.P8599747863908965781

`A000244(n)²-A011782(2*n)`
-/

namespace A386293.P8599747863908965781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - A011782 (2 * n)

end

end A386293.P8599747863908965781

namespace A386293

/-- `A000244(n)²-A011782(2*n)` -/
def P8599747863908965781.Spec : Prop :=
  ∀ n, P8599747863908965781.a n = A386293 n

end A386293

/-! ## A386293.P7342781275202937164

`A000244(2*n)-A011782(2*n)`
-/

namespace A386293.P7342781275202937164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) - A011782 (2 * n)

end

end A386293.P7342781275202937164

namespace A386293

/-- `A000244(2*n)-A011782(2*n)` -/
def P7342781275202937164.Spec : Prop :=
  ∀ n, P7342781275202937164.a n = A386293 n

end A386293

/-! ## A386293.P6216720840171677735

`A281773(2*n)+A000918(2*n+1)`
-/

namespace A386293.P6216720840171677735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281773 (2 * n) + A000918 (2 * n + 1)

end

end A386293.P6216720840171677735

namespace A386293

/-- `A281773(2*n)+A000918(2*n+1)` -/
def P6216720840171677735.Spec : Prop :=
  ∀ n, P6216720840171677735.a n = A386293 n

end A386293

/-! ## A386293.P17240721749808728136

`A133494(2*n+1)-A011782(2*n)`
-/

namespace A386293.P17240721749808728136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (2 * n + 1) - A011782 (2 * n)

end

end A386293.P17240721749808728136

namespace A386293

/-- `A133494(2*n+1)-A011782(2*n)` -/
def P17240721749808728136.Spec : Prop :=
  ∀ n, P17240721749808728136.a n = A386293 n

end A386293

/-! ## A386293.P13220619496373299496

`A140429(2*n+1)-A011782(2*n)`
-/

namespace A386293.P13220619496373299496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (2 * n + 1) - A011782 (2 * n)

end

end A386293.P13220619496373299496

namespace A386293

/-- `A140429(2*n+1)-A011782(2*n)` -/
def P13220619496373299496.Spec : Prop :=
  ∀ n, P13220619496373299496.a n = A386293 n

end A386293

/-! ## A386293.P17642550258733222029

`A140796(2*n)-A015441(2*n+1)`
-/

namespace A386293.P17642550258733222029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140796 (2 * n) - A015441 (2 * n + 1)

end

end A386293.P17642550258733222029

namespace A386293

/-- `A140796(2*n)-A015441(2*n+1)` -/
def P17642550258733222029.Spec : Prop :=
  ∀ n, P17642550258733222029.a n = A386293 n

end A386293

/-! ## A386293.P10614459249962356558

`A155734(2*n+1)-A199573(2*n)`
-/

namespace A386293.P10614459249962356558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155734 (2 * n + 1) - A199573 (2 * n)

end

end A386293.P10614459249962356558

namespace A386293

/-- `A155734(2*n+1)-A199573(2*n)` -/
def P10614459249962356558.Spec : Prop :=
  ∀ n, P10614459249962356558.a n = A386293 n

end A386293

/-!
# A386294: Nonsquarefree weak numbers k such that A053669(k) < A006530(k).

The programs for A386294, there is no canonical definition to state claims against.
-/

/-! ## A386294.P8609650287706412585

`filter[A368089(n+1), A389905(#)]`
-/

namespace A386294.P8609650287706412585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386294.P8609650287706412585

/-! ## A386294.P2141396655017112779

`∩[A332785(n+1), A368089(n+1)]`
-/

namespace A386294.P2141396655017112779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386294.P2141396655017112779

/-! ## A386294.P1993729265210481371

`∩[A368089(n+1), A387919(n+1)]`
-/

namespace A386294.P1993729265210481371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386294.P1993729265210481371

/-! ## A386294.P9382492575173847390

`∩[A368089(n+1), A389065(n+1)]`
-/

namespace A386294.P9382492575173847390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386294.P9382492575173847390

/-! ## A386294.P5721721456754027722

`∩[A052485(n+1), A368089(n+1)]`
-/

namespace A386294.P5721721456754027722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386294.P5721721456754027722

/-! ## A386294.P2289539679700798578

`filter[A080259(n+1), A389905(#)]`
-/

namespace A386294.P2289539679700798578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A386294.P2289539679700798578

/-! ## A386294.P13482764650373084442

`∩[A080259(n+1), A332785(n+1)]`
-/

namespace A386294.P13482764650373084442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386294.P13482764650373084442

/-! ## A386294.P15767022436160407517

`∩[A080259(n+1), A387919(n+1)]`
-/

namespace A386294.P15767022436160407517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386294.P15767022436160407517

/-!
# A386295: Primes p such that p+1 is a triprime and 2*p+1 is prime.

The programs for A386295, the canonical program `A386295.P3144102033819088974` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386295 has offset 1).

The definition of A386295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386295.P4538042265166637503

`∩[A005384(n+1), A063639(n+1)]`
-/

namespace A386295.P4538042265166637503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P4538042265166637503

namespace A386295

/-- `∩[A005384(n+1), A063639(n+1)]` -/
def P4538042265166637503.Spec : Prop :=
  ∀ n, (P4538042265166637503.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P1506703472908187774

`∩[A063639(n+1), A246857(n+1)]`
-/

namespace A386295.P1506703472908187774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P1506703472908187774

namespace A386295

/-- `∩[A063639(n+1), A246857(n+1)]` -/
def P1506703472908187774.Spec : Prop :=
  ∀ n, (P1506703472908187774.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P4215080759983886436

`∩[A063639(n+1), A348511(n+1)]`
-/

namespace A386295.P4215080759983886436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P4215080759983886436

namespace A386295

/-- `∩[A063639(n+1), A348511(n+1)]` -/
def P4215080759983886436.Spec : Prop :=
  ∀ n, (P4215080759983886436.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P1366351938521778688

`∩[A063639(n+1), A364926(n+1)]`
-/

namespace A386295.P1366351938521778688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P1366351938521778688

namespace A386295

/-- `∩[A063639(n+1), A364926(n+1)]` -/
def P1366351938521778688.Spec : Prop :=
  ∀ n, (P1366351938521778688.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P1220862005350188702

`∩[A005384(n+1), A330410(n+1)]`
-/

namespace A386295.P1220862005350188702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P1220862005350188702

namespace A386295

/-- `∩[A005384(n+1), A330410(n+1)]` -/
def P1220862005350188702.Spec : Prop :=
  ∀ n, (P1220862005350188702.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P1626410612435498032

`∩[A156658(n+1), A330410(n+1)]`
-/

namespace A386295.P1626410612435498032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P1626410612435498032

namespace A386295

/-- `∩[A156658(n+1), A330410(n+1)]` -/
def P1626410612435498032.Spec : Prop :=
  ∀ n, (P1626410612435498032.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P14732832710940390597

`∩[A330410(n+1), A364926(n+1)]`
-/

namespace A386295.P14732832710940390597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P14732832710940390597

namespace A386295

/-- `∩[A330410(n+1), A364926(n+1)]` -/
def P14732832710940390597.Spec : Prop :=
  ∀ n, (P14732832710940390597.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P14100715200491927325

`∩[A063639(n+1), A350230(n+1)]`
-/

namespace A386295.P14100715200491927325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P14100715200491927325

namespace A386295

/-- `∩[A063639(n+1), A350230(n+1)]` -/
def P14100715200491927325.Spec : Prop :=
  ∀ n, (P14100715200491927325.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P3144102033819088974

`∩[A063639(n+1), A215751(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A386295

/-- `∩[A063639(n+1), A215751(n+1)]` -/
def P3144102033819088974.Spec : Prop :=
  ∀ n, (P3144102033819088974.a n : ℤ) = A386295 (n + 1)

theorem P3144102033819088974.correct : P3144102033819088974.Spec := by
  intro n
  simp only [A386295, Nat.add_sub_cancel]

end A386295

/-! ## A386295.P5240834658403503806

`∩[A063639(n+1), A259973(n+1)]`
-/

namespace A386295.P5240834658403503806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P5240834658403503806

namespace A386295

/-- `∩[A063639(n+1), A259973(n+1)]` -/
def P5240834658403503806.Spec : Prop :=
  ∀ n, (P5240834658403503806.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P435521460558642216

`∩[A063639(n+1), A163778(n+1)]`
-/

namespace A386295.P435521460558642216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P435521460558642216

namespace A386295

/-- `∩[A063639(n+1), A163778(n+1)]` -/
def P435521460558642216.Spec : Prop :=
  ∀ n, (P435521460558642216.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P8540265898748342554

`∩[A005384(n+1), A108815(n+1)]`
-/

namespace A386295.P8540265898748342554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P8540265898748342554

namespace A386295

/-- `∩[A005384(n+1), A108815(n+1)]` -/
def P8540265898748342554.Spec : Prop :=
  ∀ n, (P8540265898748342554.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P5554650278239814091

`∩[A108815(n+1), A246857(n+1)]`
-/

namespace A386295.P5554650278239814091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P5554650278239814091

namespace A386295

/-- `∩[A108815(n+1), A246857(n+1)]` -/
def P5554650278239814091.Spec : Prop :=
  ∀ n, (P5554650278239814091.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P15843615875222639866

`∩[A063639(n+1), A078762(n+1)]`
-/

namespace A386295.P15843615875222639866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P15843615875222639866

namespace A386295

/-- `∩[A063639(n+1), A078762(n+1)]` -/
def P15843615875222639866.Spec : Prop :=
  ∀ n, (P15843615875222639866.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P14122427588229022512

`∩[A063639(n+1), A104635(n+1)]`
-/

namespace A386295.P14122427588229022512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P14122427588229022512

namespace A386295

/-- `∩[A063639(n+1), A104635(n+1)]` -/
def P14122427588229022512.Spec : Prop :=
  ∀ n, (P14122427588229022512.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P1682659886745567938

`∩[A054639(n+1), A063639(n+1)]`
-/

namespace A386295.P1682659886745567938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P1682659886745567938

namespace A386295

/-- `∩[A054639(n+1), A063639(n+1)]` -/
def P1682659886745567938.Spec : Prop :=
  ∀ n, (P1682659886745567938.a n : ℤ) = A386295 (n + 1)

end A386295

/-! ## A386295.P6435296355245866755

`∩[A014109(n+1), A063639(n+1)]`
-/

namespace A386295.P6435296355245866755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386295.P6435296355245866755

namespace A386295

/-- `∩[A014109(n+1), A063639(n+1)]` -/
def P6435296355245866755.Spec : Prop :=
  ∀ n, (P6435296355245866755.a n : ℤ) = A386295 (n + 1)

end A386295

/-!
# A386296: Array read by descending antidiagonals: T(n,k) is the number of ways to partition n X n X n cube into k noncongruent cuboids.

The programs for A386296, there is no canonical definition to state claims against.
-/

/-! ## A386296.P6400104533605123633

`A055571(A387121(n+1)+1)`
-/

namespace A386296.P6400104533605123633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A387121 (n + 1) + 1).toNat

end

end A386296.P6400104533605123633

/-! ## A386296.P5792650864760707109

`A055570(A387121(n+1))`
-/

namespace A386296.P5792650864760707109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A387121 (n + 1)).toNat

end

end A386296.P5792650864760707109

/-! ## A386296.P4983774447359512128

`A387121(n+1)+A369427(A260340(n))`
-/

namespace A386296.P4983774447359512128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387121 (n + 1) + A369427 (A260340 n).toNat

end

end A386296.P4983774447359512128

/-! ## A386296.P2943487533696116248

`A245092(A387121(n+1)%A355159(2*n+3))`
-/

namespace A386296.P2943487533696116248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (Int.tmod (A387121 (n + 1)) (A355159 (2 * n + 3))).toNat

end

end A386296.P2943487533696116248

/-! ## A386296.P16359150974466888000

`A007095(A387121(n+1)^A342344(3*n+1))`
-/

namespace A386296.P16359150974466888000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A387121 (n + 1) : ℚ) ^ (A342344 (3 * n + 1) : ℤ))).toNat

end

end A386296.P16359150974466888000

/-!
# A386298: a(n) = 1 + Sum_{k=0..n-1} 2^k * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A386298, there is no canonical definition to state claims against.
-/

/-! ## A386298.P15383203748405982162

`∑[A335433(A001044(n))]`
-/

namespace A386298.P15383203748405982162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A001044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386298.P15383203748405982162

/-!
# A386299: a(n) = 1 + Sum_{k=0..n-1} 3^k * binomial(n-1,k) * a(k) * a(n-1-k).

The programs for A386299, there is no canonical definition to state claims against.
-/

/-! ## A386299.P16889780265817274404

`A367396(n+2)+A000010(A251577(n))`
-/

namespace A386299.P16889780265817274404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367396 (n + 2) + A000010 (A251577 n).toNat

end

end A386299.P16889780265817274404

