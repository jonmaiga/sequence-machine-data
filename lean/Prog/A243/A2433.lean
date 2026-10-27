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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
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
# A243303: Least number k > 0 such that 2^k contains an n-digit long substring of the infinite string "98765432109876543210987654...".

The programs for A243303, there is no canonical definition to state claims against.
-/

/-! ## A243303.P17523328387389754924

`A238449(n+1)+A008683(A001018(n))`
-/

namespace A243303.P17523328387389754924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238449 (n + 1) + A008683 (A001018 n).toNat

end

end A243303.P17523328387389754924

/-! ## A243303.P4837339225205099590

`A238449(n+1)+A008683(A001019(n))`
-/

namespace A243303.P4837339225205099590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238449 (n + 1) + A008683 (A001019 n).toNat

end

end A243303.P4837339225205099590

/-!
# A243304: Least number k > 0 such that 3^k contains at least an n-digit long substring of the infinite string "98765432109876543210987654...".

The programs for A243304, there is no canonical definition to state claims against.
-/

/-! ## A243304.P11721379695391043976

`A238508(n+1)+A008683(A093123(n))`
-/

namespace A243304.P11721379695391043976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238508 (n + 1) + A008683 (A093123 n).toNat

end

end A243304.P11721379695391043976

/-! ## A243304.P12724378338620849890

`A238508(n+1)+A010054(A172025(n))`
-/

namespace A243304.P12724378338620849890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238508 (n + 1) + A010054 (A172025 n).toNat

end

end A243304.P12724378338620849890

/-!
# A243305: a(n) = 2^phi(n)+1 = A066781(n)+1.

The programs for A243305, the canonical program `A243305.P11485261021790212205` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243305 has offset 1).

The definition of A243305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243305.P11485261021790212205

`A066781(n+1)+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A243305

/-- `A066781(n+1)+1` -/
def P11485261021790212205.Spec : Prop :=
  ∀ n, P11485261021790212205.a n = A243305 (n + 1)

theorem P11485261021790212205.correct : P11485261021790212205.Spec := by
  intro n
  simp only [A243305, Nat.add_sub_cancel]

end A243305

/-! ## A243305.P17859807966480194084

`2^A000010(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243305.P17859807966480194084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ) + 1

end

end A243305.P17859807966480194084

namespace A243305

/-- `2^A000010(n+1)+1` -/
def P17859807966480194084.Spec : Prop :=
  ∀ n, P17859807966480194084.a n = (A243305 (n + 1) : ℚ)

end A243305

/-! ## A243305.P7081034023820220365

`A100371(n+1)+2`
-/

namespace A243305.P7081034023820220365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + 2

end

end A243305.P7081034023820220365

namespace A243305

/-- `A100371(n+1)+2` -/
def P7081034023820220365.Spec : Prop :=
  ∀ n, P7081034023820220365.a n = A243305 (n + 1)

theorem P7081034023820220365.correct : P7081034023820220365.Spec := by
  intro n
  simp only [A243305, Nat.add_sub_cancel, A243305.P7081034023820220365.a, A243305.P11485261021790212205.a, A066781, A066781.P13882244352398290553.a, A100371, A100371.P1765266703165715938.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243305

/-! ## A243305.P4203900465794189994

`or(1, 2^A000010(2*n-(n-1)))`
-/

namespace A243305.P4203900465794189994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)))

end

end A243305.P4203900465794189994

namespace A243305

/-- `or(1, 2^A000010(2*n-(n-1)))` -/
def P4203900465794189994.Spec : Prop :=
  ∀ n, P4203900465794189994.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P2475218398726372662

`A000051(A000010(n+1))`
-/

namespace A243305.P2475218398726372662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A000010 (n + 1)).toNat

end

end A243305.P2475218398726372662

namespace A243305

/-- `A000051(A000010(n+1))` -/
def P2475218398726372662.Spec : Prop :=
  ∀ n, P2475218398726372662.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P8155322018661785794

`A085613(A039649(n+1))`
-/

namespace A243305.P8155322018661785794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085613 (A039649 (n + 1)).toNat

end

end A243305.P8155322018661785794

namespace A243305

/-- `A085613(A039649(n+1))` -/
def P8155322018661785794.Spec : Prop :=
  ∀ n, P8155322018661785794.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P7154893370356745467

`A048578(A109606(n+1))`
-/

namespace A243305.P7154893370356745467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (A109606 (n + 1)).toNat

end

end A243305.P7154893370356745467

namespace A243305

/-- `A048578(A109606(n+1))` -/
def P7154893370356745467.Spec : Prop :=
  ∀ n, P7154893370356745467.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P8676290557433941150

`A000079(Δ[A002088(n)])+1`
-/

namespace A243305.P8676290557433941150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (f1 (n + 1) - f1 n).toNat + 1

end

end A243305.P8676290557433941150

namespace A243305

/-- `A000079(Δ[A002088(n)])+1` -/
def P8676290557433941150.Spec : Prop :=
  ∀ n, P8676290557433941150.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P6089166851425044107

`A000225(Δ[A002088(n)])+2`
-/

namespace A243305.P6089166851425044107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (f1 (n + 1) - f1 n).toNat + 2

end

end A243305.P6089166851425044107

namespace A243305

/-- `A000225(Δ[A002088(n)])+2` -/
def P6089166851425044107.Spec : Prop :=
  ∀ n, P6089166851425044107.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P1061661458116635667

`A085613(A000010(n+1)+1)`
-/

namespace A243305.P1061661458116635667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085613 (A000010 (n + 1) + 1).toNat

end

end A243305.P1061661458116635667

namespace A243305

/-- `A085613(A000010(n+1)+1)` -/
def P1061661458116635667.Spec : Prop :=
  ∀ n, P1061661458116635667.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P3716349073547207831

`A094373(A000010(n+1)+1)`
-/

namespace A243305.P3716349073547207831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A000010 (n + 1) + 1).toNat

end

end A243305.P3716349073547207831

namespace A243305

/-- `A094373(A000010(n+1)+1)` -/
def P3716349073547207831.Spec : Prop :=
  ∀ n, P3716349073547207831.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P4956464934720465587

`A048656(A048848(n+1))+1`
-/

namespace A243305.P4956464934720465587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A048848 (n + 1)).toNat + 1

end

end A243305.P4956464934720465587

namespace A243305

/-- `A048656(A048848(n+1))+1` -/
def P4956464934720465587.Spec : Prop :=
  ∀ n, P4956464934720465587.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P15410316094319785286

`A127904(A000010(n+1)+1)`
-/

namespace A243305.P15410316094319785286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (A000010 (n + 1) + 1).toNat

end

end A243305.P15410316094319785286

namespace A243305

/-- `A127904(A000010(n+1)+1)` -/
def P15410316094319785286.Spec : Prop :=
  ∀ n, P15410316094319785286.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P16134936725482535654

`A017912(A140434(n+1))+1`
-/

namespace A243305.P16134936725482535654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (A140434 (n + 1)).toNat + 1

end

end A243305.P16134936725482535654

namespace A243305

/-- `A017912(A140434(n+1))+1` -/
def P16134936725482535654.Spec : Prop :=
  ∀ n, P16134936725482535654.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P11703049027461708120

`A017979(A200905(n+1))+1`
-/

namespace A243305.P11703049027461708120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017979 (A200905 (n + 1)).toNat + 1

end

end A243305.P11703049027461708120

namespace A243305

/-- `A017979(A200905(n+1))+1` -/
def P11703049027461708120.Spec : Prop :=
  ∀ n, P11703049027461708120.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P5849436896120702109

`A048578(A000010(n+1)-1)`
-/

namespace A243305.P5849436896120702109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (A000010 (n + 1) - 1).toNat

end

end A243305.P5849436896120702109

namespace A243305

/-- `A048578(A000010(n+1)-1)` -/
def P5849436896120702109.Spec : Prop :=
  ∀ n, P5849436896120702109.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P13689211859944736094

`A240277(A000010(n+1)+2)`
-/

namespace A243305.P13689211859944736094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240277 (A000010 (n + 1) + 2).toNat

end

end A243305.P13689211859944736094

namespace A243305

/-- `A240277(A000010(n+1)+2)` -/
def P13689211859944736094.Spec : Prop :=
  ∀ n, P13689211859944736094.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P1492862419865401380

`A051032(2*A000010(n+1))`
-/

namespace A243305.P1492862419865401380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051032 (2 * A000010 (n + 1)).toNat

end

end A243305.P1492862419865401380

namespace A243305

/-- `A051032(2*A000010(n+1))` -/
def P1492862419865401380.Spec : Prop :=
  ∀ n, P1492862419865401380.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P15065580887595070525

`A052552(2*A000010(n+1))`
-/

namespace A243305.P15065580887595070525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (2 * A000010 (n + 1)).toNat

end

end A243305.P15065580887595070525

namespace A243305

/-- `A052552(2*A000010(n+1))` -/
def P15065580887595070525.Spec : Prop :=
  ∀ n, P15065580887595070525.a n = A243305 (n + 1)

end A243305

/-! ## A243305.P3465957875981831678

`A243306(n+1)+A039649(n+1)`
-/

namespace A243305.P3465957875981831678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243306 (n + 1) + A039649 (n + 1)

end

end A243305.P3465957875981831678

namespace A243305

/-- `A243306(n+1)+A039649(n+1)` -/
def P3465957875981831678.Spec : Prop :=
  ∀ n, P3465957875981831678.a n = A243305 (n + 1)

theorem P3465957875981831678.correct : P3465957875981831678.Spec := by
  intro n
  simp only [A243305, Nat.add_sub_cancel, A243305.P3465957875981831678.a, A243305.P11485261021790212205.a, A039649, A039649.P16717312505280968063.a, A066781, A066781.P13882244352398290553.a, A243306, A243306.P11123591734652521989.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243305

/-!
# A243306: 2^phi(n) - phi(n).

The programs for A243306, the canonical program `A243306.P11123591734652521989` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243306 has offset 1).

The definition of A243306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243306.P11123591734652521989

`A066781(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A243306

/-- `A066781(n+1)-A000010(n+1)` -/
def P11123591734652521989.Spec : Prop :=
  ∀ n, P11123591734652521989.a n = A243306 (n + 1)

theorem P11123591734652521989.correct : P11123591734652521989.Spec := by
  intro n
  simp only [A243306, Nat.add_sub_cancel]

end A243306

/-! ## A243306.P10080852622170874839

`2^A000010(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243306.P10080852622170874839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ) - (A000010 (n + 1) : ℚ)

end

end A243306.P10080852622170874839

namespace A243306

/-- `2^A000010(n+1)-A000010(n+1)` -/
def P10080852622170874839.Spec : Prop :=
  ∀ n, P10080852622170874839.a n = (A243306 (n + 1) : ℚ)

end A243306

/-! ## A243306.P8739254602926738954

`A000325(A000010(n+1))`
-/

namespace A243306.P8739254602926738954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (A000010 (n + 1)).toNat

end

end A243306.P8739254602926738954

namespace A243306

/-- `A000325(A000010(n+1))` -/
def P8739254602926738954.Spec : Prop :=
  ∀ n, P8739254602926738954.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P1209335098586116000

`A132753(A000010(n+1)-1)-2`
-/

namespace A243306.P1209335098586116000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132753 (A000010 (n + 1) - 1).toNat - 2

end

end A243306.P1209335098586116000

namespace A243306

/-- `A132753(A000010(n+1)-1)-2` -/
def P1209335098586116000.Spec : Prop :=
  ∀ n, P1209335098586116000.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P18120714085765763414

`A100371(n+1)-A109606(n+1)`
-/

namespace A243306.P18120714085765763414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) - A109606 (n + 1)

end

end A243306.P18120714085765763414

namespace A243306

/-- `A100371(n+1)-A109606(n+1)` -/
def P18120714085765763414.Spec : Prop :=
  ∀ n, P18120714085765763414.a n = A243306 (n + 1)

theorem P18120714085765763414.correct : P18120714085765763414.Spec := by
  intro n
  simp only [A243306, Nat.add_sub_cancel, A243306.P18120714085765763414.a, A243306.P11123591734652521989.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A100371, A100371.P1765266703165715938.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243306

/-! ## A243306.P13671999947962235249

`A243305(n+1)-A039649(n+1)`
-/

namespace A243306.P13671999947962235249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - A039649 (n + 1)

end

end A243306.P13671999947962235249

namespace A243306

/-- `A243305(n+1)-A039649(n+1)` -/
def P13671999947962235249.Spec : Prop :=
  ∀ n, P13671999947962235249.a n = A243306 (n + 1)

theorem P13671999947962235249.correct : P13671999947962235249.Spec := by
  intro n
  simp only [A243306, Nat.add_sub_cancel, A243306.P13671999947962235249.a, A243306.P11123591734652521989.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A066781, A066781.P13882244352398290553.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243306

/-! ## A243306.P11834146151124011513

`A243305(n+1)-(A000010(n+1)+1)`
-/

namespace A243306.P11834146151124011513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - (A000010 (n + 1) + 1)

end

end A243306.P11834146151124011513

namespace A243306

/-- `A243305(n+1)-(A000010(n+1)+1)` -/
def P11834146151124011513.Spec : Prop :=
  ∀ n, P11834146151124011513.a n = A243306 (n + 1)

theorem P11834146151124011513.correct : P11834146151124011513.Spec := by
  intro n
  simp only [A243306, Nat.add_sub_cancel, A243306.P11834146151124011513.a, A243306.P11123591734652521989.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243306

/-! ## A243306.P1812855922248740609

`A100371(n+1)+2-A039649(n+1)`
-/

namespace A243306.P1812855922248740609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + (2 - A039649 (n + 1))

end

end A243306.P1812855922248740609

namespace A243306

/-- `A100371(n+1)+2-A039649(n+1)` -/
def P1812855922248740609.Spec : Prop :=
  ∀ n, P1812855922248740609.a n = A243306 (n + 1)

theorem P1812855922248740609.correct : P1812855922248740609.Spec := by
  intro n
  simp only [A243306, Nat.add_sub_cancel, A243306.P1812855922248740609.a, A243306.P11123591734652521989.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A066781, A066781.P13882244352398290553.a, A100371, A100371.P1765266703165715938.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243306

/-! ## A243306.P657912362414546693

`A243305(n+1)-(A109606(n+1)+2)`
-/

namespace A243306.P657912362414546693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - (A109606 (n + 1) + 2)

end

end A243306.P657912362414546693

namespace A243306

/-- `A243305(n+1)-(A109606(n+1)+2)` -/
def P657912362414546693.Spec : Prop :=
  ∀ n, P657912362414546693.a n = A243306 (n + 1)

theorem P657912362414546693.correct : P657912362414546693.Spec := by
  intro n
  simp only [A243306, Nat.add_sub_cancel, A243306.P657912362414546693.a, A243306.P11123591734652521989.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A109606, A109606.P2415810041766612210.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243306

/-! ## A243306.P13548995427856493886

`A243307(n+1)-2*A000010(n+1)`
-/

namespace A243306.P13548995427856493886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243307 (n + 1) - 2 * A000010 (n + 1)

end

end A243306.P13548995427856493886

namespace A243306

/-- `A243307(n+1)-2*A000010(n+1)` -/
def P13548995427856493886.Spec : Prop :=
  ∀ n, P13548995427856493886.a n = A243306 (n + 1)

theorem P13548995427856493886.correct : P13548995427856493886.Spec := by
  intro n
  simp only [A243306, Nat.add_sub_cancel, A243306.P13548995427856493886.a, A243306.P11123591734652521989.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A243307, A243307.P15340824748724089513.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243306

/-! ## A243306.P16101606386268835107

`A011782(A000010(n+1)+1)-A000010(n+1)`
-/

namespace A243306.P16101606386268835107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000010 (n + 1) + 1).toNat - A000010 (n + 1)

end

end A243306.P16101606386268835107

namespace A243306

/-- `A011782(A000010(n+1)+1)-A000010(n+1)` -/
def P16101606386268835107.Spec : Prop :=
  ∀ n, P16101606386268835107.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P7592607526137327911

`A079102(A000010(n+1)+1)-A000010(n+1)`
-/

namespace A243306.P7592607526137327911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079102 (A000010 (n + 1) + 1).toNat - A000010 (n + 1)

end

end A243306.P7592607526137327911

namespace A243306

/-- `A079102(A000010(n+1)+1)-A000010(n+1)` -/
def P7592607526137327911.Spec : Prop :=
  ∀ n, P7592607526137327911.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P18276491532698987134

`A131577(A000010(n+1)+1)-A000010(n+1)`
-/

namespace A243306.P18276491532698987134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000010 (n + 1) + 1).toNat - A000010 (n + 1)

end

end A243306.P18276491532698987134

namespace A243306

/-- `A131577(A000010(n+1)+1)-A000010(n+1)` -/
def P18276491532698987134.Spec : Prop :=
  ∀ n, P18276491532698987134.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P11045322224982350099

`A034008(A000010(n+1)+2)-A000010(n+1)`
-/

namespace A243306.P11045322224982350099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A000010 (n + 1) + 2).toNat - A000010 (n + 1)

end

end A243306.P11045322224982350099

namespace A243306

/-- `A034008(A000010(n+1)+2)-A000010(n+1)` -/
def P11045322224982350099.Spec : Prop :=
  ∀ n, P11045322224982350099.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P16057827075863494961

`A166444(A000010(n+1)+2)-A000010(n+1)`
-/

namespace A243306.P16057827075863494961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A000010 (n + 1) + 2).toNat - A000010 (n + 1)

end

end A243306.P16057827075863494961

namespace A243306

/-- `A166444(A000010(n+1)+2)-A000010(n+1)` -/
def P16057827075863494961.Spec : Prop :=
  ∀ n, P16057827075863494961.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P14149038621214929298

`A016116(2*A000010(n+1))-A000010(n+1)`
-/

namespace A243306.P14149038621214929298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A000010 (n + 1)).toNat - A000010 (n + 1)

end

end A243306.P14149038621214929298

namespace A243306

/-- `A016116(2*A000010(n+1))-A000010(n+1)` -/
def P14149038621214929298.Spec : Prop :=
  ∀ n, P14149038621214929298.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P13832684641829418869

`A017910(2*A000010(n+1))-A000010(n+1)`
-/

namespace A243306.P13832684641829418869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * A000010 (n + 1)).toNat - A000010 (n + 1)

end

end A243306.P13832684641829418869

namespace A243306

/-- `A017910(2*A000010(n+1))-A000010(n+1)` -/
def P13832684641829418869.Spec : Prop :=
  ∀ n, P13832684641829418869.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P2275548060169576317

`A017911(2*A000010(n+1))-A000010(n+1)`
-/

namespace A243306.P2275548060169576317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (2 * A000010 (n + 1)).toNat - A000010 (n + 1)

end

end A243306.P2275548060169576317

namespace A243306

/-- `A017911(2*A000010(n+1))-A000010(n+1)` -/
def P2275548060169576317.Spec : Prop :=
  ∀ n, P2275548060169576317.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P7899112812259108829

`A017912(2*A000010(n+1))-A000010(n+1)`
-/

namespace A243306.P7899112812259108829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (2 * A000010 (n + 1)).toNat - A000010 (n + 1)

end

end A243306.P7899112812259108829

namespace A243306

/-- `A017912(2*A000010(n+1))-A000010(n+1)` -/
def P7899112812259108829.Spec : Prop :=
  ∀ n, P7899112812259108829.a n = A243306 (n + 1)

end A243306

/-! ## A243306.P10103822607357486146

`A029744(2*A000010(n+1))-A000010(n+1)`
-/

namespace A243306.P10103822607357486146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * A000010 (n + 1)).toNat - A000010 (n + 1)

end

end A243306.P10103822607357486146

namespace A243306

/-- `A029744(2*A000010(n+1))-A000010(n+1)` -/
def P10103822607357486146.Spec : Prop :=
  ∀ n, P10103822607357486146.a n = A243306 (n + 1)

end A243306

/-!
# A243307: a(n) = 2^phi(n) + phi(n).

The programs for A243307, the canonical program `A243307.P15340824748724089513` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243307 has offset 1).

The definition of A243307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243307.P15340824748724089513

`A066781(n+1)+A000010(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A243307

/-- `A066781(n+1)+A000010(n+1)` -/
def P15340824748724089513.Spec : Prop :=
  ∀ n, P15340824748724089513.a n = A243307 (n + 1)

theorem P15340824748724089513.correct : P15340824748724089513.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel]

end A243307

/-! ## A243307.P15001118547632079333

`2^A000010(n+1)+A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243307.P15001118547632079333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000010 (n + 1) : ℤ) + (A000010 (n + 1) : ℚ)

end

end A243307.P15001118547632079333

namespace A243307

/-- `2^A000010(n+1)+A000010(n+1)` -/
def P15001118547632079333.Spec : Prop :=
  ∀ n, P15001118547632079333.a n = (A243307 (n + 1) : ℚ)

end A243307

/-! ## A243307.P12765587722825116007

`A006127(A000010(n+1))`
-/

namespace A243307.P12765587722825116007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 (A000010 (n + 1)).toNat

end

end A243307.P12765587722825116007

namespace A243307

/-- `A006127(A000010(n+1))` -/
def P12765587722825116007.Spec : Prop :=
  ∀ n, P12765587722825116007.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P8764747860246928309

`A188917(2*A000010(n+1))`
-/

namespace A243307.P8764747860246928309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188917 (2 * A000010 (n + 1)).toNat

end

end A243307.P8764747860246928309

namespace A243307

/-- `A188917(2*A000010(n+1))` -/
def P8764747860246928309.Spec : Prop :=
  ∀ n, P8764747860246928309.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P4435492538227009370

`A083706(A000010(n+1)-1)+2`
-/

namespace A243307.P4435492538227009370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 (A000010 (n + 1) - 1).toNat + 2

end

end A243307.P4435492538227009370

namespace A243307

/-- `A083706(A000010(n+1)-1)+2` -/
def P4435492538227009370.Spec : Prop :=
  ∀ n, P4435492538227009370.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P5835011320586951286

`A100371(n+1)+A039649(n+1)`
-/

namespace A243307.P5835011320586951286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + A039649 (n + 1)

end

end A243307.P5835011320586951286

namespace A243307

/-- `A100371(n+1)+A039649(n+1)` -/
def P5835011320586951286.Spec : Prop :=
  ∀ n, P5835011320586951286.a n = A243307 (n + 1)

theorem P5835011320586951286.correct : P5835011320586951286.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel, A243307.P5835011320586951286.a, A243307.P15340824748724089513.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A066781, A066781.P13882244352398290553.a, A100371, A100371.P1765266703165715938.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243307

/-! ## A243307.P2099915330311366467

`A243305(n+1)+A109606(n+1)`
-/

namespace A243307.P2099915330311366467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) + A109606 (n + 1)

end

end A243307.P2099915330311366467

namespace A243307

/-- `A243305(n+1)+A109606(n+1)` -/
def P2099915330311366467.Spec : Prop :=
  ∀ n, P2099915330311366467.a n = A243307 (n + 1)

theorem P2099915330311366467.correct : P2099915330311366467.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel, A243307.P2099915330311366467.a, A243307.P15340824748724089513.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A109606, A109606.P2415810041766612210.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243307

/-! ## A243307.P5122358958059146425

`A100371(n+1)+A109606(n+1)+2`
-/

namespace A243307.P5122358958059146425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + (A109606 (n + 1) + 2)

end

end A243307.P5122358958059146425

namespace A243307

/-- `A100371(n+1)+A109606(n+1)+2` -/
def P5122358958059146425.Spec : Prop :=
  ∀ n, P5122358958059146425.a n = A243307 (n + 1)

theorem P5122358958059146425.correct : P5122358958059146425.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel, A243307.P5122358958059146425.a, A243307.P15340824748724089513.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A100371, A100371.P1765266703165715938.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243307

/-! ## A243307.P10896786351246472783

`A000010(n+1)+A243305(n+1)-1`
-/

namespace A243307.P10896786351246472783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A243305 (n + 1) - 1)

end

end A243307.P10896786351246472783

namespace A243307

/-- `A000010(n+1)+A243305(n+1)-1` -/
def P10896786351246472783.Spec : Prop :=
  ∀ n, P10896786351246472783.a n = A243307 (n + 1)

theorem P10896786351246472783.correct : P10896786351246472783.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel, A243307.P10896786351246472783.a, A243307.P15340824748724089513.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243307

/-! ## A243307.P5858235686475039137

`A039649(n+1)+A243305(n+1)-2`
-/

namespace A243307.P5858235686475039137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A243305 (n + 1) - 2)

end

end A243307.P5858235686475039137

namespace A243307

/-- `A039649(n+1)+A243305(n+1)-2` -/
def P5858235686475039137.Spec : Prop :=
  ∀ n, P5858235686475039137.a n = A243307 (n + 1)

theorem P5858235686475039137.correct : P5858235686475039137.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel, A243307.P5858235686475039137.a, A243307.P15340824748724089513.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A066781, A066781.P13882244352398290553.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243307

/-! ## A243307.P9425652512530346873

`A243306(n+1)+2*A000010(n+1)`
-/

namespace A243307.P9425652512530346873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243306 (n + 1) + 2 * A000010 (n + 1)

end

end A243307.P9425652512530346873

namespace A243307

/-- `A243306(n+1)+2*A000010(n+1)` -/
def P9425652512530346873.Spec : Prop :=
  ∀ n, P9425652512530346873.a n = A243307 (n + 1)

theorem P9425652512530346873.correct : P9425652512530346873.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel, A243307.P9425652512530346873.a, A243307.P15340824748724089513.a, A000010, A000010.P4673923239450215316.a, A066781, A066781.P13882244352398290553.a, A243306, A243306.P11123591734652521989.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243307

/-! ## A243307.P18150720009385401389

`A243305(n+1)-A051953(n+1)+n`
-/

namespace A243307.P18150720009385401389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1) - A051953 (n + 1) + (n : ℤ)

end

end A243307.P18150720009385401389

namespace A243307

/-- `A243305(n+1)-A051953(n+1)+n` -/
def P18150720009385401389.Spec : Prop :=
  ∀ n, P18150720009385401389.a n = A243307 (n + 1)

theorem P18150720009385401389.correct : P18150720009385401389.Spec := by
  intro n
  simp only [A243307, Nat.add_sub_cancel, A243307.P18150720009385401389.a, A243307.P15340824748724089513.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A066781, A066781.P13882244352398290553.a, A243305, A243305.P11485261021790212205.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A243307

/-! ## A243307.P14594156715213887551

`A011782(A000010(n+1)+1)+A000010(n+1)`
-/

namespace A243307.P14594156715213887551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000010 (n + 1) + 1).toNat + A000010 (n + 1)

end

end A243307.P14594156715213887551

namespace A243307

/-- `A011782(A000010(n+1)+1)+A000010(n+1)` -/
def P14594156715213887551.Spec : Prop :=
  ∀ n, P14594156715213887551.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P7392769976645966794

`A079102(A000010(n+1)+1)+A000010(n+1)`
-/

namespace A243307.P7392769976645966794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079102 (A000010 (n + 1) + 1).toNat + A000010 (n + 1)

end

end A243307.P7392769976645966794

namespace A243307

/-- `A079102(A000010(n+1)+1)+A000010(n+1)` -/
def P7392769976645966794.Spec : Prop :=
  ∀ n, P7392769976645966794.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P17399113039563506380

`A131577(A000010(n+1)+1)+A000010(n+1)`
-/

namespace A243307.P17399113039563506380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000010 (n + 1) + 1).toNat + A000010 (n + 1)

end

end A243307.P17399113039563506380

namespace A243307

/-- `A131577(A000010(n+1)+1)+A000010(n+1)` -/
def P17399113039563506380.Spec : Prop :=
  ∀ n, P17399113039563506380.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P12156045764618711173

`A034008(A000010(n+1)+2)+A000010(n+1)`
-/

namespace A243307.P12156045764618711173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A000010 (n + 1) + 2).toNat + A000010 (n + 1)

end

end A243307.P12156045764618711173

namespace A243307

/-- `A034008(A000010(n+1)+2)+A000010(n+1)` -/
def P12156045764618711173.Spec : Prop :=
  ∀ n, P12156045764618711173.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P18268833945884784873

`A166444(A000010(n+1)+2)+A000010(n+1)`
-/

namespace A243307.P18268833945884784873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A000010 (n + 1) + 2).toNat + A000010 (n + 1)

end

end A243307.P18268833945884784873

namespace A243307

/-- `A166444(A000010(n+1)+2)+A000010(n+1)` -/
def P18268833945884784873.Spec : Prop :=
  ∀ n, P18268833945884784873.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P4891576326528340154

`A016116(2*A000010(n+1))+A000010(n+1)`
-/

namespace A243307.P4891576326528340154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A000010 (n + 1)).toNat + A000010 (n + 1)

end

end A243307.P4891576326528340154

namespace A243307

/-- `A016116(2*A000010(n+1))+A000010(n+1)` -/
def P4891576326528340154.Spec : Prop :=
  ∀ n, P4891576326528340154.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P629855208600586693

`A017910(2*A000010(n+1))+A000010(n+1)`
-/

namespace A243307.P629855208600586693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * A000010 (n + 1)).toNat + A000010 (n + 1)

end

end A243307.P629855208600586693

namespace A243307

/-- `A017910(2*A000010(n+1))+A000010(n+1)` -/
def P629855208600586693.Spec : Prop :=
  ∀ n, P629855208600586693.a n = A243307 (n + 1)

end A243307

/-! ## A243307.P4565653700412064631

`A017911(2*A000010(n+1))+A000010(n+1)`
-/

namespace A243307.P4565653700412064631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 (2 * A000010 (n + 1)).toNat + A000010 (n + 1)

end

end A243307.P4565653700412064631

namespace A243307

/-- `A017911(2*A000010(n+1))+A000010(n+1)` -/
def P4565653700412064631.Spec : Prop :=
  ∀ n, P4565653700412064631.a n = A243307 (n + 1)

end A243307

/-!
# A243310: Smallest k such that both prime(k)*prime(k+1) +/ - 2^n are prime, or 0 if no such k exists.

The programs for A243310, there is no canonical definition to state claims against.
-/

/-! ## A243310.P5672996138519253519

`a(4%n)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=0, a(5)=3`
-/

namespace A243310.P5672996138519253519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2, 0, 3] fun n a =>
  a (4 % n)

end

end A243310.P5672996138519253519

/-!
# A243312: The total T(d,n) of expressions with n instances of a digit d between 6 and 9 (and using the four arithmetic operators) which have a defined value when evaluated.

The programs for A243312, there is no canonical definition to state claims against.
-/

/-! ## A243312.P6104211610522688639

`A214670(A005321(n))+Δ[A214693(n)]`
-/

namespace A243312.P6104211610522688639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214670 (A005321 n).toNat + (f1 (n + 1) - f1 n)

end

end A243312.P6104211610522688639

/-!
# A243315: Number of ways to reciprocally link elements of an n X 9 array either to themselves or to exactly one king-move neighbor.

The programs for A243315, there is no canonical definition to state claims against.
-/

/-! ## A243315.P9025630780181759002

`A220644(C(A262390(n+1), 2)-n+1)`
-/

namespace A243315.P9025630780181759002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220644 ((Nat.choose (A262390 (n + 1)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A243315.P9025630780181759002

/-!
# A243321: Number of simple connected graphs with n nodes that are bipartite and planar.

The programs for A243321, there is no canonical definition to state claims against.
-/

/-! ## A243321.P9566178330188720868

`A120035(n)+A046155(A000679(n))`
-/

namespace A243321.P9566178330188720868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120035 n + A046155 (A000679 n).toNat

end

end A243321.P9566178330188720868

/-! ## A243321.P10855355114673979141

`A298338(n)+A181835(A037952(n))`
-/

namespace A243321.P10855355114673979141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298338 n + A181835 (A037952 n).toNat

end

end A243321.P10855355114673979141

/-!
# A243323: Number of simple connected graphs with n nodes that are bipartite and not integral.

The programs for A243323, there is no canonical definition to state claims against.
-/

/-! ## A243323.P687675833537181577

`A243326(A052382(n+1))-A116079(n+1)`
-/

namespace A243323.P687675833537181577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A052382 (n + 1)).toNat - A116079 (n + 1)

end

end A243323.P687675833537181577

/-! ## A243323.P1886704677370291112

`A243326(A103357(n+1))-A116079(n+1)`
-/

namespace A243323.P1886704677370291112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A103357 (n + 1)).toNat - A116079 (n + 1)

end

end A243323.P1886704677370291112

/-! ## A243323.P140147609758225034

`A243326(A225580(n+1))-A116079(n+1)`
-/

namespace A243323.P140147609758225034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A225580 (n + 1)).toNat - A116079 (n + 1)

end

end A243323.P140147609758225034

/-! ## A243323.P10754440519869716947

`A243326(A325364(n+1))-A116079(n+1)`
-/

namespace A243323.P10754440519869716947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243326 (A325364 (n + 1)).toNat - A116079 (n + 1)

end

end A243323.P10754440519869716947

/-!
# A243324: Number of simple connected graphs with n nodes that are Eulerian and not integral.

The programs for A243324, there is no canonical definition to state claims against.
-/

/-! ## A243324.P10017134968364302661

`A003049(n+1)-A243330(n+1)`
-/

namespace A243324.P10017134968364302661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) - A243330 (n + 1)

end

end A243324.P10017134968364302661

/-! ## A243324.P3063094691174418058

`A001349(n+1)-A158007(n+1)-A243330(n+1)`
-/

namespace A243324.P3063094691174418058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A158007 (n + 1) - A243330 (n + 1)

end

end A243324.P3063094691174418058

/-! ## A243324.P5507858556706705959

`A201922(A000124(n))-(A243330(n+1)+A158007(n+1))`
-/

namespace A243324.P5507858556706705959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - (A243330 (n + 1) + A158007 (n + 1))

end

end A243324.P5507858556706705959

/-! ## A243324.P7874304974415441006

`A224065(A119663(n+1))-(A243330(n+1)+A158007(n+1))`
-/

namespace A243324.P7874304974415441006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - (A243330 (n + 1) + A158007 (n + 1))

end

end A243324.P7874304974415441006

/-!
# A243325: Number of simple connected graphs with n nodes that are planar and not integral.

The programs for A243325, there is no canonical definition to state claims against.
-/

/-! ## A243325.P5278443744812191129

`round(A257808(A000142(n+1))/4)`
-/

namespace A243325.P5278443744812191129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A257808 (A000142 (n + 1)).toNat : ℚ) / 4)

end

end A243325.P5278443744812191129

/-! ## A243325.P10244794978111875015

`A027868(A190820(n)+A188588(n))`
-/

namespace A243325.P10244794978111875015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A190820 n + A188588 n).toNat

end

end A243325.P10244794978111875015

/-! ## A243325.P13353357833235010885

`A004524(A324621(n)+A138538(n))`
-/

namespace A243325.P13353357833235010885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A324621 n + A138538 n).toNat

end

end A243325.P13353357833235010885

/-!
# A243326: Number of simple connected graphs with n nodes that are triangle-free and not integral.

The programs for A243326, there is no canonical definition to state claims against.
-/

/-! ## A243326.P17066181739391589915

`A024607(n+1)-A243332(n+1)`
-/

namespace A243326.P17066181739391589915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024607 (n + 1) - A243332 (n + 1)

end

end A243326.P17066181739391589915

/-! ## A243326.P10125206371773320725

`A283417(∑[n+1]+1)-A243332(n+1)`
-/

namespace A243326.P10125206371773320725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283417 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A243332 (n + 1)

end

end A243326.P10125206371773320725

/-! ## A243326.P5925446856196173324

`A001349(n+1)-A128240(n+1)-A243332(n+1)`
-/

namespace A243326.P5925446856196173324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A128240 (n + 1) - A243332 (n + 1)

end

end A243326.P5925446856196173324

/-! ## A243326.P1594282206596716800

`A126744(A000124(n)+C(2, n+2))-A243332(n+1)`
-/

namespace A243326.P1594282206596716800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126744 (A000124 n + (Nat.choose 2 (n + 2) : ℤ)).toNat - A243332 (n + 1)

end

end A243326.P1594282206596716800

/-! ## A243326.P1114068482681340046

`A126744(A054977(n)+A000217(n))-A243332(n+1)`
-/

namespace A243326.P1114068482681340046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126744 (A054977 n + A000217 n).toNat - A243332 (n + 1)

end

end A243326.P1114068482681340046

/-!
# A243327: Number of simple connected graphs with n nodes that are K_4 free and not integral.

The programs for A243327, there is no canonical definition to state claims against.
-/

/-! ## A243327.P9699707451066020733

`A079574(n+1)-A243333(n+1)`
-/

namespace A243327.P9699707451066020733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) - A243333 (n + 1)

end

end A243327.P9699707451066020733

/-! ## A243327.P13543586829027054915

`A024607(n+1)+A126745(n+1)-A243333(n+1)`
-/

namespace A243327.P13543586829027054915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024607 (n + 1) + (A126745 (n + 1) - A243333 (n + 1))

end

end A243327.P13543586829027054915

/-! ## A243327.P3354985783923856540

`A241782(n+1)-(A243333(n+1)+A126746(n+1))`
-/

namespace A243327.P3354985783923856540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241782 (n + 1) - (A243333 (n + 1) + A126746 (n + 1))

end

end A243327.P3354985783923856540

/-! ## A243327.P17360572386822618851

`A001349(n+1)-A243244(n+1)-A243333(n+1)`
-/

namespace A243327.P17360572386822618851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243244 (n + 1) - A243333 (n + 1)

end

end A243327.P17360572386822618851

/-! ## A243327.P12958603997631834247

`A079574(n+1)-(A054193(n)+A000203(A251725(n+1)))`
-/

namespace A243327.P12958603997631834247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) - (A054193 n + A000203 (A251725 (n + 1)).toNat)

end

end A243327.P12958603997631834247

/-!
# A243333: Number of simple connected graphs with n nodes that are integral and K_4 free.

The programs for A243333, there is no canonical definition to state claims against.
-/

/-! ## A243333.P13377893938495110508

`A068322(A372823(n))`
-/

namespace A243333.P13377893938495110508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068322 (A372823 n).toNat

end

end A243333.P13377893938495110508

/-! ## A243333.P14459988329585872644

`A373346(A337720(n))`
-/

namespace A243333.P14459988329585872644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373346 (A337720 n).toNat

end

end A243333.P14459988329585872644

/-! ## A243333.P16873308885312823751

`A218914(A065565(n)+1)`
-/

namespace A243333.P16873308885312823751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218914 (A065565 n + 1).toNat

end

end A243333.P16873308885312823751

/-! ## A243333.P3926892821341410155

`A209037(floor(sqrt(A273696(n))))`
-/

namespace A243333.P3926892821341410155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209037 (Int.sqrt (A273696 n)).toNat

end

end A243333.P3926892821341410155

/-! ## A243333.P13623743971540627647

`A079574(n+1)-A243327(n+1)`
-/

namespace A243333.P13623743971540627647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (n + 1) - A243327 (n + 1)

end

end A243333.P13623743971540627647

/-!
# A243334: Number of simple connected graphs with n nodes that are distance regular and triangle-free.

The programs for A243334, there is no canonical definition to state claims against.
-/

/-! ## A243334.P10807043322116277699

`A035232(A351638(n)+A094535(n))`
-/

namespace A243334.P10807043322116277699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A351638 n + A094535 n).toNat

end

end A243334.P10807043322116277699

/-! ## A243334.P2804099365977250721

`and(A002828(A145550(n+1)), A119259(n))`
-/

namespace A243334.P2804099365977250721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002828 (A145550 (n + 1)).toNat) (A119259 n)

end

end A243334.P2804099365977250721

/-! ## A243334.P15502679953386541080

`A360615(A341660(n+1)-A008854(n+1))`
-/

namespace A243334.P15502679953386541080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A341660 (n + 1) - A008854 (n + 1)).toNat

end

end A243334.P15502679953386541080

/-! ## A243334.P5398203323626637760

`A351907(A165988(n+3)+A006530(n+1))`
-/

namespace A243334.P5398203323626637760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351907 (A165988 (n + 3) + A006530 (n + 1)).toNat

end

end A243334.P5398203323626637760

/-! ## A243334.P3678725077654784475

`A125920(A309673(n+2))`
-/

namespace A243334.P3678725077654784475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125920 (A309673 (n + 2)).toNat

end

end A243334.P3678725077654784475

/-!
# A243335: Number of simple connected graphs with n nodes that are Eulerian and triangle-free.

The programs for A243335, there is no canonical definition to state claims against.
-/

/-! ## A243335.P10443873434993899494

`A243791(n+1)-char[2]`
-/

namespace A243335.P10443873434993899494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243791 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243335.P10443873434993899494

/-! ## A243335.P4136064058133102747

`A243791(2-A329684(n)+n)`
-/

namespace A243335.P4136064058133102747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243791 (2 - A329684 n + (n : ℤ)).toNat

end

end A243335.P4136064058133102747

/-! ## A243335.P2052925840191893417

`A243791(2-(A329684(n)-n))`
-/

namespace A243335.P2052925840191893417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243791 (2 - (A329684 n - (n : ℤ))).toNat

end

end A243335.P2052925840191893417

/-! ## A243335.P16909582430182140527

`A243791(n/A329684(n)+1)`
-/

namespace A243335.P16909582430182140527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243791 (SequenceMachineLib.roundAway ((n : ℚ) / (A329684 n : ℚ) + 1)).toNat

end

end A243335.P16909582430182140527

/-! ## A243335.P11196777772534576467

`A243791(n+1)%Δ[A243764(n)]`
-/

namespace A243335.P11196777772534576467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243791 (n + 1)) (f1 (n + 1) - f1 n)

end

end A243335.P11196777772534576467

/-!
# A243337: Number of simple connected graphs with n nodes that are planar and K_4 free.

The programs for A243337, there is no canonical definition to state claims against.
-/

/-! ## A243337.P458563413597981557

`A341307(A341350(n!))`
-/

namespace A243337.P458563413597981557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A341350 (Nat.factorial n)).toNat

end

end A243337.P458563413597981557

/-! ## A243337.P18437479645869808448

`A008620(A113059(n)+n)`
-/

namespace A243337.P18437479645869808448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A113059 n + (n : ℤ)).toNat

end

end A243337.P18437479645869808448

/-! ## A243337.P3773950164932818706

`A002264(A113059(n)+n)+1`
-/

namespace A243337.P3773950164932818706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A113059 n + (n : ℤ)).toNat + 1

end

end A243337.P3773950164932818706

/-!
# A243338: Number of simple connected graphs with n nodes that are trees and not integral.

The programs for A243338, there is no canonical definition to state claims against.
-/

/-! ## A243338.P9858409900614080898

`A045919(A244457(n+5)+1)`
-/

namespace A243338.P9858409900614080898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045919 (A244457 (n + 5) + 1).toNat

end

end A243338.P9858409900614080898

/-! ## A243338.P14516251512928059569

`A000055(n+1)-A167769(n)`
-/

namespace A243338.P14516251512928059569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000055 (n + 1) - A167769 n

end

end A243338.P14516251512928059569

/-! ## A243338.P14609302519588477025

`A215981(n+1)-A275333(n)`
-/

namespace A243338.P14609302519588477025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215981 (n + 1) - A275333 n

end

end A243338.P14609302519588477025

/-! ## A243338.P11201976024573441546

`A002264(or(1, or(n, A247295(n))))`
-/

namespace A243338.P11201976024573441546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor 1 (Int.lor (n : ℤ) (A247295 n))).toNat

end

end A243338.P11201976024573441546

/-! ## A243338.P16989184468453442735

`A130131(n+1)-A068434(n+1)`
-/

namespace A243338.P16989184468453442735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130131 (n + 1) - A068434 (n + 1)

end

end A243338.P16989184468453442735

/-!
# A243343: a(1)=1; thereafter, if n is the k-th squarefree number (i.e., n = A005117(k)), a(n) = 1 + (2*a(k-1)); otherwise, when n is k-th nonsquarefree number (i.e., n = A013929(k)), a(n) = 2*a(k).

The programs for A243343, there is no canonical definition to state claims against.
-/

/-! ## A243343.P6585578792251669556

`A054429(A243345(n+1))`
-/

namespace A243343.P6585578792251669556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A243345 (n + 1)).toNat

end

end A243343.P6585578792251669556

/-! ## A243343.P5471334597598363672

`A243345(A243347(n+1))`
-/

namespace A243343.P5471334597598363672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243345 (A243347 (n + 1)).toNat

end

end A243343.P5471334597598363672

/-! ## A243343.P14863723882784986047

`A054429(A122111(n+1)%A006035(n+1))`
-/

namespace A243343.P14863723882784986047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (Int.tmod (A122111 (n + 1)) (A006035 (n + 1))).toNat

end

end A243343.P14863723882784986047

/-! ## A243343.P6504188782272150491

`A054429(A122111(n+1))%A103072(n+1)`
-/

namespace A243343.P6504188782272150491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054429 (A122111 (n + 1)).toNat) (A103072 (n + 1))

end

end A243343.P6504188782272150491

/-!
# A243344: a(1) = 1, a(2n) = A013929(a(n)), a(2n+1) = A005117(1+a(n)).

The programs for A243344, there is no canonical definition to state claims against.
-/

/-! ## A243344.P7753463684772323472

`A243346(A054429(n+1))`
-/

namespace A243344.P7753463684772323472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (A054429 (n + 1)).toNat

end

end A243344.P7753463684772323472

/-! ## A243344.P10711543518582982058

`A243346(A004756(n+1)-A144396(n+1))`
-/

namespace A243344.P10711543518582982058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (A004756 (n + 1) - A144396 (n + 1)).toNat

end

end A243344.P10711543518582982058

/-! ## A243344.P7121035153367504000

`A243346(A004758(n+1)-A171763(n+1))`
-/

namespace A243344.P7121035153367504000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (A004758 (n + 1) - A171763 (n + 1)).toNat

end

end A243344.P7121035153367504000

/-! ## A243344.P17981508944795044005

`A243346(A004756(n+1)%A144396(n+1))`
-/

namespace A243344.P17981508944795044005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (Int.tmod (A004756 (n + 1)) (A144396 (n + 1))).toNat

end

end A243344.P17981508944795044005

/-! ## A243344.P5703836162524067999

`A243346(A004758(n+1)%A171763(n+1))`
-/

namespace A243344.P5703836162524067999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (Int.tmod (A004758 (n + 1)) (A171763 (n + 1))).toNat

end

end A243344.P5703836162524067999

/-! ## A243344.P738682255248146711

`A243346(A243343(A243346(n+1)))`
-/

namespace A243344.P738682255248146711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (A243343 (A243346 (n + 1)).toNat).toNat

end

end A243344.P738682255248146711

/-! ## A243344.P10041967014794875079

`A243347(A243346(n+1))`
-/

namespace A243344.P10041967014794875079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243347 (A243346 (n + 1)).toNat

end

end A243344.P10041967014794875079

/-!
# A243345: a(1)=1; thereafter, if n is k-th squarefree number [i.e., n = A005117(k)], a(n) = 2*a(k-1); otherwise, when n is k-th nonsquarefree number [i.e., n = A013929(k)], a(n) = 2*a(k)+1.

The programs for A243345, there is no canonical definition to state claims against.
-/

/-! ## A243345.P13749247835677675571

`A054429(A243343(n+1))`
-/

namespace A243345.P13749247835677675571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A243343 (n + 1)).toNat

end

end A243345.P13749247835677675571

/-! ## A243345.P9888008411271710017

`A243343(A243347(n+1))`
-/

namespace A243345.P9888008411271710017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243343 (A243347 (n + 1)).toNat

end

end A243345.P9888008411271710017

/-! ## A243345.P17509697066400905002

`A243343(A243346(A243343(A122111(A122111(n+1)))))`
-/

namespace A243345.P17509697066400905002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243343 (A243346 (A243343 (A122111 (A122111 (n + 1)).toNat).toNat).toNat).toNat

end

end A243345.P17509697066400905002

/-! ## A243345.P3275481550080261111

`A297499(n+1)%A337091(A122111(n+4))`
-/

namespace A243345.P3275481550080261111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297499 (n + 1)) (A337091 (A122111 (n + 4)).toNat)

end

end A243345.P3275481550080261111

/-! ## A243345.P12149526856694549294

`A297499(A084193(∑[n]))`
-/

namespace A243345.P12149526856694549294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297499 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A243345.P12149526856694549294

/-!
# A243346: a(1) = 1, a(2n) = A005117(1+a(n)), a(2n+1) = A013929(a(n)), where A005117 are squarefree and A013929 are nonsquarefree numbers.

The programs for A243346, there is no canonical definition to state claims against.
-/

/-! ## A243346.P12323550279298794693

`A243344(A054429(n+1))`
-/

namespace A243346.P12323550279298794693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (A054429 (n + 1)).toNat

end

end A243346.P12323550279298794693

/-! ## A243346.P17784097403391995784

`A243344(A346306(Δ[n²])/2)`
-/

namespace A243346.P17784097403391995784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (SequenceMachineLib.roundAway ((A346306 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A243346.P17784097403391995784

/-! ## A243346.P3629711778709372365

`A243344(∑[A099892(n+1)]-n)`
-/

namespace A243346.P3629711778709372365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A243346.P3629711778709372365

/-! ## A243346.P3587639286228948637

`A243344(A004756(n+1)-(2*n+3))`
-/

namespace A243346.P3587639286228948637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A243346.P3587639286228948637

/-! ## A243346.P1272231520630473501

`A243344(3*A000079(floor(log2(n+1)))-2-n)`
-/

namespace A243346.P1272231520630473501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (3 * A000079 (Nat.log 2 (n + 1)) - 2 - (n : ℤ)).toNat

end

end A243346.P1272231520630473501

/-! ## A243346.P12074672189805833212

`A243344(A053644(n+1)+A035327(n+1))`
-/

namespace A243346.P12074672189805833212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (A053644 (n + 1) + A035327 (n + 1)).toNat

end

end A243346.P12074672189805833212

/-! ## A243346.P7735737617532961951

`A243344(A004756(n+1)%A144396(n+1))`
-/

namespace A243346.P7735737617532961951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (Int.tmod (A004756 (n + 1)) (A144396 (n + 1))).toNat

end

end A243346.P7735737617532961951

/-! ## A243346.P1341217212853887408

`A243344(A243345(A243344(n+1)))`
-/

namespace A243346.P1341217212853887408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (A243345 (A243344 (n + 1)).toNat).toNat

end

end A243346.P1341217212853887408

/-! ## A243346.P8485070498413638637

`A243347(A243344(n+1))`
-/

namespace A243346.P8485070498413638637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243347 (A243344 (n + 1)).toNat

end

end A243346.P8485070498413638637

/-!
# A243347: a(1)=1, and for n>1, if mu(n) = 0, a(n) = A005117(1+a(A057627(n))), otherwise, a(n) = A013929(a(A013928(n))).

The programs for A243347, there is no canonical definition to state claims against.
-/

/-! ## A243347.P3392960110145240669

`A243346(A243343(n+1))`
-/

namespace A243347.P3392960110145240669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243346 (A243343 (n + 1)).toNat

end

end A243347.P3392960110145240669

/-! ## A243347.P11319647209761810183

`A243344(A243345(n+1))`
-/

namespace A243347.P11319647209761810183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (A243345 (n + 1)).toNat

end

end A243347.P11319647209761810183

/-! ## A243347.P15093859143690020520

`A243344(A257647(n+1)+A243287(n+1))`
-/

namespace A243347.P15093859143690020520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (A257647 (n + 1) + A243287 (n + 1)).toNat

end

end A243347.P15093859143690020520

/-! ## A243347.P13462512800514461592

`A243344(A122111(n+1)%A057187(n+1))`
-/

namespace A243347.P13462512800514461592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (Int.tmod (A122111 (n + 1)) (A057187 (n + 1))).toNat

end

end A243347.P13462512800514461592

/-! ## A243347.P2857818839057387946

`A243344(A243288(n+1)%A016060(3*n+5))`
-/

namespace A243347.P2857818839057387946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243344 (Int.tmod (A243288 (n + 1)) (A016060 (3 * n + 5))).toNat

end

end A243347.P2857818839057387946

/-!
# A243348: Difference between the n-th squarefree number and n: a(n) = A005117(n) - n.

The programs for A243348, the canonical program `A243348.P5579662287376898014` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243348 has offset 1).

The definition of A243348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005117(n+1)-(n+1)` (program `A243348.P5579662287376898014`, by `A243348.P5579662287376898014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243348.P5579662287376898014

`A005117(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A243348

/-- `A005117(n+1)-(n+1)` -/
def P5579662287376898014.Spec : Prop :=
  ∀ n, P5579662287376898014.a n = A243348 (n + 1)

theorem P5579662287376898014.correct : P5579662287376898014.Spec := by
  intro n
  simp only [A243348, Nat.add_sub_cancel]

end A243348

/-! ## A243348.P17370902175621663473

`n+1-A243351(n+1)`
-/

namespace A243348.P17370902175621663473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A243351 (n + 1)

end

end A243348.P17370902175621663473

namespace A243348

/-- `n+1-A243351(n+1)` -/
def P17370902175621663473.Spec : Prop :=
  ∀ n, P17370902175621663473.a n = A243348 (n + 1)

theorem P17370902175621663473.correct : P17370902175621663473.Spec := by
  intro n
  simp only [A243348, Nat.add_sub_cancel, A243348.P17370902175621663473.a, A243348.P5579662287376898014.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A243351, A243351.P857383307926038219.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243348

/-! ## A243348.P9467034150244978717

`A243349(n+1)-A243289(n+1)`
-/

namespace A243348.P9467034150244978717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243349 (n + 1) - A243289 (n + 1)

end

end A243348.P9467034150244978717

namespace A243348

/-- `A243349(n+1)-A243289(n+1)` -/
def P9467034150244978717.Spec : Prop :=
  ∀ n, P9467034150244978717.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P9646233916420800995

`comp[A105570(n)]-(n+1)`
-/

namespace A243348.P9646233916420800995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n + 1 : ℤ)

end

end A243348.P9646233916420800995

namespace A243348

/-- `comp[A105570(n)]-(n+1)` -/
def P9646233916420800995.Spec : Prop :=
  ∀ n, P9646233916420800995.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P10501103391227864872

`A161203(n+1)%(n+1)`
-/

namespace A243348.P10501103391227864872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161203 (n + 1)) (n + 1 : ℤ)

end

end A243348.P10501103391227864872

namespace A243348

/-- `A161203(n+1)%(n+1)` -/
def P10501103391227864872.Spec : Prop :=
  ∀ n, P10501103391227864872.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P5942613227163352042

`eq[0, A071327(n+1)]-n`
-/

namespace A243348.P5942613227163352042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P5942613227163352042

namespace A243348

/-- `eq[0, A071327(n+1)]-n` -/
def P5942613227163352042.Spec : Prop :=
  ∀ n, P5942613227163352042.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P10935116010680007424

`eq[1, A005361(n+1)]-n`
-/

namespace A243348.P10935116010680007424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P10935116010680007424

namespace A243348

/-- `eq[1, A005361(n+1)]-n` -/
def P10935116010680007424.Spec : Prop :=
  ∀ n, P10935116010680007424.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P10118837943764074236

`eq[1, A007424(n+1)]-n`
-/

namespace A243348.P10118837943764074236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P10118837943764074236

namespace A243348

/-- `eq[1, A007424(n+1)]-n` -/
def P10118837943764074236.Spec : Prop :=
  ∀ n, P10118837943764074236.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P13572494995849006132

`eq[1, A008833(n+1)]-n`
-/

namespace A243348.P13572494995849006132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P13572494995849006132

namespace A243348

/-- `eq[1, A008833(n+1)]-n` -/
def P13572494995849006132.Spec : Prop :=
  ∀ n, P13572494995849006132.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P319895056207078998

`eq[1, A008966(n+1)]-n`
-/

namespace A243348.P319895056207078998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P319895056207078998

namespace A243348

/-- `eq[1, A008966(n+1)]-n` -/
def P319895056207078998.Spec : Prop :=
  ∀ n, P319895056207078998.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P5461466084858458507

`lt[n, A007947(n+1)]-n`
-/

namespace A243348.P5461466084858458507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P5461466084858458507

namespace A243348

/-- `lt[n, A007947(n+1)]-n` -/
def P5461466084858458507.Spec : Prop :=
  ∀ n, P5461466084858458507.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P4739892441359250658

`sqrt(A062503(n+1))-(n+1)`
-/

namespace A243348.P4739892441359250658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 1) : ℝ) - (n + 1 : ℝ)

end

end A243348.P4739892441359250658

namespace A243348

/-- `sqrt(A062503(n+1))-(n+1)` -/
def P4739892441359250658.Spec : Prop :=
  ∀ n, P4739892441359250658.a n = (A243348 (n + 1) : ℝ)

end A243348

/-! ## A243348.P12897048565199069936

`eq[1, abs(A008683(n+1))]-n`
-/

namespace A243348.P12897048565199069936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P12897048565199069936

namespace A243348

/-- `eq[1, abs(A008683(n+1))]-n` -/
def P12897048565199069936.Spec : Prop :=
  ∀ n, P12897048565199069936.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P5821350672231848950

`A133466(n+1)/4-(n+1)`
-/

namespace A243348.P5821350672231848950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133466 (n + 1) : ℚ) / 4 - (n + 1 : ℚ)

end

end A243348.P5821350672231848950

namespace A243348

/-- `A133466(n+1)/4-(n+1)` -/
def P5821350672231848950.Spec : Prop :=
  ∀ n, P5821350672231848950.a n = (A243348 (n + 1) : ℚ)

theorem P5821350672231848950.correct : P5821350672231848950.Spec := by
  intro n
  simp only [A243348, Nat.add_sub_cancel, A243348.P5821350672231848950.a, A243348.P5579662287376898014.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A133466, A133466.P7898642945469282061.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243348

/-! ## A243348.P8500578784042788519

`eq[1, A008683(lcm(2, n+1))²]-n`
-/

namespace A243348.P8500578784042788519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.lcm 2 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P8500578784042788519

namespace A243348

/-- `eq[1, A008683(lcm(2, n+1))²]-n` -/
def P8500578784042788519.Spec : Prop :=
  ∀ n, P8500578784042788519.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P13748803091903607104

`eq[1, A008683(C(n+1, n))²]-n`
-/

namespace A243348.P13748803091903607104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.choose (n + 1) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P13748803091903607104

namespace A243348

/-- `eq[1, A008683(C(n+1, n))²]-n` -/
def P13748803091903607104.Spec : Prop :=
  ∀ n, P13748803091903607104.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P13284122315334906679

`eq[1, A008683(2*n+1-n)²]-n`
-/

namespace A243348.P13284122315334906679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P13284122315334906679

namespace A243348

/-- `eq[1, A008683(2*n+1-n)²]-n` -/
def P13284122315334906679.Spec : Prop :=
  ∀ n, P13284122315334906679.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P9212580422931742774

`A005117(n+1)%A000027(n+1)`
-/

namespace A243348.P9212580422931742774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (n + 1)) (A000027 (n + 1))

end

end A243348.P9212580422931742774

namespace A243348

/-- `A005117(n+1)%A000027(n+1)` -/
def P9212580422931742774.Spec : Prop :=
  ∀ n, P9212580422931742774.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P9436552472620750156

`eq[A001222(n+1), A001221(n+1)]-n`
-/

namespace A243348.P9436552472620750156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A243348.P9436552472620750156

namespace A243348

/-- `eq[A001222(n+1), A001221(n+1)]-n` -/
def P9436552472620750156.Spec : Prop :=
  ∀ n, P9436552472620750156.a n = A243348 (n + 1)

end A243348

/-! ## A243348.P4823184431338366579

`eq[log2(A000005(n+1)), A001221(n+1)]-n`
-/

namespace A243348.P4823184431338366579
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n : ℤ) - (n : ℤ)

end

end A243348.P4823184431338366579

namespace A243348

/-- `eq[log2(A000005(n+1)), A001221(n+1)]-n` -/
def P4823184431338366579.Spec : Prop :=
  ∀ n, P4823184431338366579.a n = A243348 (n + 1)

end A243348

/-!
# A243349: Difference between the n-th squarefree number and the index of its largest prime factor.

The programs for A243349, the canonical program `A243349.P9380144028528106204` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243349 has offset 1).

The definition of A243349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243291, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243349.P9380144028528106204

`A243291(A005117(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A243349

/-- `A243291(A005117(n+1))` -/
def P9380144028528106204.Spec : Prop :=
  ∀ n, P9380144028528106204.a n = A243349 (n + 1)

theorem P9380144028528106204.correct : P9380144028528106204.Spec := by
  intro n
  simp only [A243349, Nat.add_sub_cancel]

end A243349

/-! ## A243349.P18356836338533472260

`comp[A105570(n)]-A243290(n+1)`
-/

namespace A243349.P18356836338533472260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A243290 (n + 1)

end

end A243349.P18356836338533472260

namespace A243349

/-- `comp[A105570(n)]-A243290(n+1)` -/
def P18356836338533472260.Spec : Prop :=
  ∀ n, P18356836338533472260.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P11149727119981102460

`A243348(n+1)+A243289(n+1)`
-/

namespace A243349.P11149727119981102460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1) + A243289 (n + 1)

end

end A243349.P11149727119981102460

namespace A243349

/-- `A243348(n+1)+A243289(n+1)` -/
def P11149727119981102460.Spec : Prop :=
  ∀ n, P11149727119981102460.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P12567301772792210123

`A005117(n+1)-A243290(n+1)`
-/

namespace A243349.P12567301772792210123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - A243290 (n + 1)

end

end A243349.P12567301772792210123

namespace A243349

/-- `A005117(n+1)-A243290(n+1)` -/
def P12567301772792210123.Spec : Prop :=
  ∀ n, P12567301772792210123.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P13953899814711783881

`record[A003967(n+1)]-A243290(n+1)`
-/

namespace A243349.P13953899814711783881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A243290 (n + 1)

end

end A243349.P13953899814711783881

namespace A243349

/-- `record[A003967(n+1)]-A243290(n+1)` -/
def P13953899814711783881.Spec : Prop :=
  ∀ n, P13953899814711783881.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P11812907417831029572

`record[A007913(n+1)]-A243290(n+1)`
-/

namespace A243349.P11812907417831029572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A243290 (n + 1)

end

end A243349.P11812907417831029572

namespace A243349

/-- `record[A007913(n+1)]-A243290(n+1)` -/
def P11812907417831029572.Spec : Prop :=
  ∀ n, P11812907417831029572.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P17711917168122848210

`record[A055653(n+1)]-A243290(n+1)`
-/

namespace A243349.P17711917168122848210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A243290 (n + 1)

end

end A243349.P17711917168122848210

namespace A243349

/-- `record[A055653(n+1)]-A243290(n+1)` -/
def P17711917168122848210.Spec : Prop :=
  ∀ n, P17711917168122848210.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P11819775696078510069

`record[A325978(n+1)]-A243290(n+1)`
-/

namespace A243349.P11819775696078510069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A243290 (n + 1)

end

end A243349.P11819775696078510069

namespace A243349

/-- `record[A325978(n+1)]-A243290(n+1)` -/
def P11819775696078510069.Spec : Prop :=
  ∀ n, P11819775696078510069.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P271685950477231677

`eq[1, A008683(2*n+1-n)²]+1-A243290(n+1)`
-/

namespace A243349.P271685950477231677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1 - n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A243290 (n + 1)

end

end A243349.P271685950477231677

namespace A243349

/-- `eq[1, A008683(2*n+1-n)²]+1-A243290(n+1)` -/
def P271685950477231677.Spec : Prop :=
  ∀ n, P271685950477231677.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P13113872681727315110

`A005117(n+1)-A000720(A073482(n+1))`
-/

namespace A243349.P13113872681727315110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - A000720 (A073482 (n + 1)).toNat

end

end A243349.P13113872681727315110

namespace A243349

/-- `A005117(n+1)-A000720(A073482(n+1))` -/
def P13113872681727315110.Spec : Prop :=
  ∀ n, P13113872681727315110.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P3545420157673214187

`eq[1, 3%(n*(1-A057521(n+1))-2)]+1-A243290(n+1)`
-/

namespace A243349.P3545420157673214187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 ((n : ℤ) * (1 - A057521 (n + 1)) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A243290 (n + 1)

end

end A243349.P3545420157673214187

namespace A243349

/-- `eq[1, 3%(n*(1-A057521(n+1))-2)]+1-A243290(n+1)` -/
def P3545420157673214187.Spec : Prop :=
  ∀ n, P3545420157673214187.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P10113045676803212918

`A243291(record[A007913(n+1)])`
-/

namespace A243349.P10113045676803212918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243349.P10113045676803212918

namespace A243349

/-- `A243291(record[A007913(n+1)])` -/
def P10113045676803212918.Spec : Prop :=
  ∀ n, P10113045676803212918.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P11627997978465662902

`A243291(record[A007947(n+1)])`
-/

namespace A243349.P11627997978465662902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243349.P11627997978465662902

namespace A243349

/-- `A243291(record[A007947(n+1)])` -/
def P11627997978465662902.Spec : Prop :=
  ∀ n, P11627997978465662902.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P4142598213045544284

`A243291(record[A097246(n+1)])`
-/

namespace A243349.P4142598213045544284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243349.P4142598213045544284

namespace A243349

/-- `A243291(record[A097246(n+1)])` -/
def P4142598213045544284.Spec : Prop :=
  ∀ n, P4142598213045544284.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P5308535784184248538

`A243291(A243348(n+1)+1+n)`
-/

namespace A243349.P5308535784184248538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 (A243348 (n + 1) + 1 + (n : ℤ)).toNat

end

end A243349.P5308535784184248538

namespace A243349

/-- `A243291(A243348(n+1)+1+n)` -/
def P5308535784184248538.Spec : Prop :=
  ∀ n, P5308535784184248538.a n = A243349 (n + 1)

theorem P5308535784184248538.correct : P5308535784184248538.Spec := by
  intro n
  simp only [A243349, Nat.add_sub_cancel, A243349.P5308535784184248538.a, A243349.P9380144028528106204.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A243291, A243291.P16902629913632114201.a, A243348, A243348.P5579662287376898014.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243349

/-! ## A243349.P13343968958386777922

`record[A097246(n+1)]-A243290(n+1)`
-/

namespace A243349.P13343968958386777922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A243290 (n + 1)

end

end A243349.P13343968958386777922

namespace A243349

/-- `record[A097246(n+1)]-A243290(n+1)` -/
def P13343968958386777922.Spec : Prop :=
  ∀ n, P13343968958386777922.a n = A243349 (n + 1)

end A243349

/-! ## A243349.P2482611783162777439

`A243291(2*(n+1)-A243351(n+1))`
-/

namespace A243349.P2482611783162777439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243291 ((2 * (n + 1) : ℤ) - A243351 (n + 1)).toNat

end

end A243349.P2482611783162777439

namespace A243349

/-- `A243291(2*(n+1)-A243351(n+1))` -/
def P2482611783162777439.Spec : Prop :=
  ∀ n, P2482611783162777439.a n = A243349 (n + 1)

theorem P2482611783162777439.correct : P2482611783162777439.Spec := by
  intro n
  simp only [A243349, Nat.add_sub_cancel, A243349.P2482611783162777439.a, A243349.P9380144028528106204.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A243291, A243291.P16902629913632114201.a, A243351, A243351.P857383307926038219.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243349

/-! ## A243349.P16534130341307191001

`sqrt(A062503(n+1))-A061395(A062503(n+1))`
-/

namespace A243349.P16534130341307191001
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062503 (n + 1) : ℝ) - (A061395 (A062503 (n + 1)).toNat : ℝ)

end

end A243349.P16534130341307191001

namespace A243349

/-- `sqrt(A062503(n+1))-A061395(A062503(n+1))` -/
def P16534130341307191001.Spec : Prop :=
  ∀ n, P16534130341307191001.a n = (A243349 (n + 1) : ℝ)

end A243349

/-!
# A243351: Difference between 2n and the n-th squarefree number: a(n) = 2n - A005117(n).

The programs for A243351, the canonical program `A243351.P857383307926038219` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243351 has offset 1).

The definition of A243351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A005117(n+1)` (program `A243351.P857383307926038219`, by `A243351.P857383307926038219.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243351.P1675062670539570048

`n+1-A243348(n+1)`
-/

namespace A243351.P1675062670539570048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A243348 (n + 1)

end

end A243351.P1675062670539570048

namespace A243351

/-- `n+1-A243348(n+1)` -/
def P1675062670539570048.Spec : Prop :=
  ∀ n, P1675062670539570048.a n = A243351 (n + 1)

theorem P1675062670539570048.correct : P1675062670539570048.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel, A243351.P1675062670539570048.a, A243351.P857383307926038219.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A243348, A243348.P5579662287376898014.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243351

/-! ## A243351.P857383307926038219

`2*(n+1)-A005117(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A243351

/-- `2*(n+1)-A005117(n+1)` -/
def P857383307926038219.Spec : Prop :=
  ∀ n, P857383307926038219.a n = A243351 (n + 1)

theorem P857383307926038219.correct : P857383307926038219.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel]

end A243351

/-! ## A243351.P8210677268168010523

`n+2-(comp[A105570(n)]-n)`
-/

namespace A243351.P8210677268168010523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A243351.P8210677268168010523

namespace A243351

/-- `n+2-(comp[A105570(n)]-n)` -/
def P8210677268168010523.Spec : Prop :=
  ∀ n, P8210677268168010523.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P13030306980683904786

`a(n-1)+2-A076259(n)` with `a(0)=1`
-/

namespace A243351.P13030306980683904786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 - A076259 n)

end

end A243351.P13030306980683904786

namespace A243351

/-- `a(n-1)+2-A076259(n)` -/
def P13030306980683904786.Spec : Prop :=
  ∀ n, P13030306980683904786.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P8795747098351349361

`Δ[n²]-lt[n, A007947(n+1)]`
-/

namespace A243351.P8795747098351349361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

end

end A243351.P8795747098351349361

namespace A243351

/-- `Δ[n²]-lt[n, A007947(n+1)]` -/
def P8795747098351349361.Spec : Prop :=
  ∀ n, P8795747098351349361.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P1231732445813627950

`2*(n+1)-record[A007913(n+1)]`
-/

namespace A243351.P1231732445813627950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243351.P1231732445813627950

namespace A243351

/-- `2*(n+1)-record[A007913(n+1)]` -/
def P1231732445813627950.Spec : Prop :=
  ∀ n, P1231732445813627950.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P4416511299548939288

`Δ[n²]-eq[1, A008683(n+1)²]`
-/

namespace A243351.P4416511299548939288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A243351.P4416511299548939288

namespace A243351

/-- `Δ[n²]-eq[1, A008683(n+1)²]` -/
def P4416511299548939288.Spec : Prop :=
  ∀ n, P4416511299548939288.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P11292323269344523392

`2*n+1-eq[1, A005361(n+1)]`
-/

namespace A243351.P11292323269344523392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A243351.P11292323269344523392

namespace A243351

/-- `2*n+1-eq[1, A005361(n+1)]` -/
def P11292323269344523392.Spec : Prop :=
  ∀ n, P11292323269344523392.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P15201530120266789297

`A005408(n)+1-A005117(n+1)`
-/

namespace A243351.P15201530120266789297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A005117 (n + 1))

end

end A243351.P15201530120266789297

namespace A243351

/-- `A005408(n)+1-A005117(n+1)` -/
def P15201530120266789297.Spec : Prop :=
  ∀ n, P15201530120266789297.a n = A243351 (n + 1)

theorem P15201530120266789297.correct : P15201530120266789297.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel, A243351.P15201530120266789297.a, A243351.P857383307926038219.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A005408, A005408.P17437947328870227736.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243351

/-! ## A243351.P3145894499235726541

`A005843(n)+2-A005117(n+1)`
-/

namespace A243351.P3145894499235726541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A005117 (n + 1))

end

end A243351.P3145894499235726541

namespace A243351

/-- `A005843(n)+2-A005117(n+1)` -/
def P3145894499235726541.Spec : Prop :=
  ∀ n, P3145894499235726541.a n = A243351 (n + 1)

theorem P3145894499235726541.correct : P3145894499235726541.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel, A243351.P3145894499235726541.a, A243351.P857383307926038219.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A005843, A005843.P3167286115683555970.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243351

/-! ## A243351.P15025479963025276870

`A066503(n+1)+A073353(n+1)-A005117(n+1)`
-/

namespace A243351.P15025479963025276870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) + (A073353 (n + 1) - A005117 (n + 1))

end

end A243351.P15025479963025276870

namespace A243351

/-- `A066503(n+1)+A073353(n+1)-A005117(n+1)` -/
def P15025479963025276870.Spec : Prop :=
  ∀ n, P15025479963025276870.a n = A243351 (n + 1)

theorem P15025479963025276870.correct : P15025479963025276870.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel, A243351.P15025479963025276870.a, A243351.P857383307926038219.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A066503, A066503.P17588364347287804265.a, A073353, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243351

/-! ## A243351.P6248783449007527273

`A327952(n+1)-(A327953(n+1)+A005117(n+1))`
-/

namespace A243351.P6248783449007527273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327952 (n + 1) - (A327953 (n + 1) + A005117 (n + 1))

end

end A243351.P6248783449007527273

namespace A243351

/-- `A327952(n+1)-(A327953(n+1)+A005117(n+1))` -/
def P6248783449007527273.Spec : Prop :=
  ∀ n, P6248783449007527273.a n = A243351 (n + 1)

theorem P6248783449007527273.correct : P6248783449007527273.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel, A243351.P6248783449007527273.a, A243351.P857383307926038219.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A327952, A327952.P3929770748935459996.f1, A327952.P3929770748935459996.a, A327953, A327953.P9054110330457496942.a, A006218, A006218.P9218434490128439557.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A153818, A153818.P11151295241026271931.a, A000005, A000005.P16091521709108585461.a, A013936, A013936.P11699563197597450949.f2, A013936.P11699563197597450949.f1, A013936.P11699563197597450949.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243351

/-! ## A243351.P3110434215568655597

`A000069(n+2)-(A010059(n+1)+A005117(n+1))`
-/

namespace A243351.P3110434215568655597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 2) - (A010059 (n + 1) + A005117 (n + 1))

end

end A243351.P3110434215568655597

namespace A243351

/-- `A000069(n+2)-(A010059(n+1)+A005117(n+1))` -/
def P3110434215568655597.Spec : Prop :=
  ∀ n, P3110434215568655597.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P17439435385044635453

`A002378(n+1)-(A005117(n+1)+A002378(n))`
-/

namespace A243351.P17439435385044635453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) - (A005117 (n + 1) + A002378 n)

end

end A243351.P17439435385044635453

namespace A243351

/-- `A002378(n+1)-(A005117(n+1)+A002378(n))` -/
def P17439435385044635453.Spec : Prop :=
  ∀ n, P17439435385044635453.a n = A243351 (n + 1)

theorem P17439435385044635453.correct : P17439435385044635453.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel, A243351.P17439435385044635453.a, A243351.P857383307926038219.a, A002378, A002378.P6342434596694243671.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243351

/-! ## A243351.P269712041968216844

`A059100(n+1)-(A005117(n+1)+A002522(n))`
-/

namespace A243351.P269712041968216844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (n + 1) - (A005117 (n + 1) + A002522 n)

end

end A243351.P269712041968216844

namespace A243351

/-- `A059100(n+1)-(A005117(n+1)+A002522(n))` -/
def P269712041968216844.Spec : Prop :=
  ∀ n, P269712041968216844.a n = A243351 (n + 1)

theorem P269712041968216844.correct : P269712041968216844.Spec := by
  intro n
  simp only [A243351, Nat.add_sub_cancel, A243351.P269712041968216844.a, A243351.P857383307926038219.a, A002522, A002522.P3778392011853271743.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A059100, A059100.P4969484960020007252.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243351

/-! ## A243351.P14913057725258693807

`A005408(n)-eq[1, A335341(n+1)]`
-/

namespace A243351.P14913057725258693807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A243351.P14913057725258693807

namespace A243351

/-- `A005408(n)-eq[1, A335341(n+1)]` -/
def P14913057725258693807.Spec : Prop :=
  ∀ n, P14913057725258693807.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P16858814833999073649

`A005408(n)-lt[A162296(n+1), 1]`
-/

namespace A243351.P16858814833999073649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A243351.P16858814833999073649

namespace A243351

/-- `A005408(n)-lt[A162296(n+1), 1]` -/
def P16858814833999073649.Spec : Prop :=
  ∀ n, P16858814833999073649.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P17321837934865393653

`2*(n+1)-record[∏{p}[n, #]]`
-/

namespace A243351.P17321837934865393653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A243351.P17321837934865393653

namespace A243351

/-- `2*(n+1)-record[∏{p}[n, #]]` -/
def P17321837934865393653.Spec : Prop :=
  ∀ n, P17321837934865393653.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P13264721646615841312

`2-(record[∏{p}[n, #]]-2*n)`
-/

namespace A243351.P13264721646615841312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 * n : ℤ))

end

end A243351.P13264721646615841312

namespace A243351

/-- `2-(record[∏{p}[n, #]]-2*n)` -/
def P13264721646615841312.Spec : Prop :=
  ∀ n, P13264721646615841312.a n = A243351 (n + 1)

end A243351

/-! ## A243351.P17747893796983130900

`n+2-record[∏{p}[n, #]]+n`
-/

namespace A243351.P17747893796983130900
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + (n : ℤ)

end

end A243351.P17747893796983130900

namespace A243351

/-- `n+2-record[∏{p}[n, #]]+n` -/
def P17747893796983130900.Spec : Prop :=
  ∀ n, P17747893796983130900.a n = A243351 (n + 1)

end A243351

/-!
# A243352: If n is k-th squarefree number [i.e., n = A005117(k)], a(n) = 2k-1; otherwise, when n is k-th nonsquarefree number [i.e., n = A013929(k)], a(n) = 2k.

The programs for A243352, there is no canonical definition to state claims against.
-/

/-! ## A243352.P6822816078424890884

`A008966(n+1)+2*A284584(n+1)`
-/

namespace A243352.P6822816078424890884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + 2 * A284584 (n + 1)

end

end A243352.P6822816078424890884

/-! ## A243352.P11775200237980043564

`abs(A080323(n+1))+2*A284584(n+1)`
-/

namespace A243352.P11775200237980043564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080323 (n + 1)| + 2 * A284584 (n + 1)

end

end A243352.P11775200237980043564

/-! ## A243352.P16422456945408225954

`A008683(n+1)²+2*A284584(n+1)`
-/

namespace A243352.P16422456945408225954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2 + 2 * A284584 (n + 1)

end

end A243352.P16422456945408225954

/-! ## A243352.P17976451695347723722

`A008966(n+1)+A005843(A284584(n+1))`
-/

namespace A243352.P17976451695347723722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) + A005843 (A284584 (n + 1)).toNat

end

end A243352.P17976451695347723722

/-! ## A243352.P8839866909282851703

`A005843(A284584(n+1))+abs(A080323(n+1))`
-/

namespace A243352.P8839866909282851703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A284584 (n + 1)).toNat + |A080323 (n + 1)|

end

end A243352.P8839866909282851703

/-! ## A243352.P6406949684196332910

`A087049(A088609(n+1))+2*A284584(n+1)`
-/

namespace A243352.P6406949684196332910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A088609 (n + 1)).toNat + 2 * A284584 (n + 1)

end

end A243352.P6406949684196332910

/-! ## A243352.P9856011388700631783

`A087049(A088609(n+1))+A005843(A284584(n+1))`
-/

namespace A243352.P9856011388700631783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A088609 (n + 1)).toNat + A005843 (A284584 (n + 1)).toNat

end

end A243352.P9856011388700631783

/-! ## A243352.P7639733731588237625

`A087049(A243347(n+1))+2*A284584(n+1)`
-/

namespace A243352.P7639733731588237625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A243347 (n + 1)).toNat + 2 * A284584 (n + 1)

end

end A243352.P7639733731588237625

/-! ## A243352.P9590785806840346728

`A087049(A243347(n+1))+A005843(A284584(n+1))`
-/

namespace A243352.P9590785806840346728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A243347 (n + 1)).toNat + A005843 (A284584 (n + 1)).toNat

end

end A243352.P9590785806840346728

/-!
# A243353: Permutation of natural numbers which maps between the partitions as encoded in A227739 (binary based system, zero-based) to A112798 (prime-index based system, one-based).

The programs for A243353, the canonical program `A243353.P15336044787577737942` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243353 has offset 0).

The definition of A243353 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243353.P15336044787577737942

`A005940(1+A003188(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A243353

/-- `A005940(1+A003188(n))` -/
def P15336044787577737942.Spec : Prop :=
  ∀ n, P15336044787577737942.a n = A243353 n

theorem P15336044787577737942.correct : P15336044787577737942.Spec := by
  intro n
  simp only [A243353]

end A243353

/-! ## A243353.P15373793280199312487

`A241909(1+A075157(n))`
-/

namespace A243353.P15373793280199312487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (1 + A075157 n).toNat

end

end A243353.P15373793280199312487

namespace A243353

/-- `A241909(1+A075157(n))` -/
def P15373793280199312487.Spec : Prop :=
  ∀ n, P15373793280199312487.a n = A243353 n

end A243353

/-! ## A243353.P3474216024470061345

`A366263(A234613(n))`
-/

namespace A243353.P3474216024470061345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A234613 n).toNat

end

end A243353.P3474216024470061345

namespace A243353

/-- `A366263(A234613(n))` -/
def P3474216024470061345.Spec : Prop :=
  ∀ n, P3474216024470061345.a n = A243353 n

end A243353

/-! ## A243353.P9991592874441762347

`A253565(A341915(n))`
-/

namespace A243353.P9991592874441762347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 (A341915 n).toNat

end

end A243353.P9991592874441762347

namespace A243353

/-- `A253565(A341915(n))` -/
def P9991592874441762347.Spec : Prop :=
  ∀ n, P9991592874441762347.a n = A243353 n

end A243353

/-! ## A243353.P1389891714908354864

`A005940(xor(n, floor(n/2))+1)`
-/

namespace A243353.P1389891714908354864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A243353.P1389891714908354864

namespace A243353

/-- `A005940(xor(n, floor(n/2))+1)` -/
def P1389891714908354864.Spec : Prop :=
  ∀ n, P1389891714908354864.a n = A243353 n

theorem P1389891714908354864.correct : P1389891714908354864.Spec := by
  intro n
  simp only [A243353, Nat.add_sub_cancel, A243353.P1389891714908354864.a, A243353.P15336044787577737942.a, A003188, A003188.P10544524695508875182.a, A005940, A005940.P5942875842694471387.a, A122111, A122111.P18124015185857335041.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P10934841406439867276.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243353

/-! ## A243353.P18289650894854752396

`A005940(abs(xor(n, n-∑[n%2]))+1)`
-/

namespace A243353.P18289650894854752396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (|Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))| + 1).toNat

end

end A243353.P18289650894854752396

namespace A243353

/-- `A005940(abs(xor(n, n-∑[n%2]))+1)` -/
def P18289650894854752396.Spec : Prop :=
  ∀ n, P18289650894854752396.a n = A243353 n

end A243353

/-! ## A243353.P12666414643522413483

`A005940(abs(xor(n, (or(1, n)-1)/2))+1)`
-/

namespace A243353.P12666414643522413483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (|Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))| + 1).toNat

end

end A243353.P12666414643522413483

namespace A243353

/-- `A005940(abs(xor(n, (or(1, n)-1)/2))+1)` -/
def P12666414643522413483.Spec : Prop :=
  ∀ n, P12666414643522413483.a n = A243353 n

end A243353

/-! ## A243353.P1383773014800129354

`A005940(xor(2*n, and(n, -2))/2+1)`
-/

namespace A243353.P1383773014800129354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway ((Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2 + 1)).toNat

end

end A243353.P1383773014800129354

namespace A243353

/-- `A005940(xor(2*n, and(n, -2))/2+1)` -/
def P1383773014800129354.Spec : Prop :=
  ∀ n, P1383773014800129354.a n = A243353 n

end A243353

/-! ## A243353.P4623683174539266396

`A005940(or(n, 2*n)-ceil(3*n/2)+1)`
-/

namespace A243353.P4623683174539266396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 ((Nat.lor n (2 * n) : ℤ) - ⌈3 * ((n : ℚ) / 2)⌉ + 1).toNat

end

end A243353.P4623683174539266396

namespace A243353

/-- `A005940(or(n, 2*n)-ceil(3*n/2)+1)` -/
def P4623683174539266396.Spec : Prop :=
  ∀ n, P4623683174539266396.a n = A243353 n

end A243353

/-! ## A243353.P5006592789371827450

`A005940(ceil(1/2*xor(2*n+1, n+1))+1)`
-/

namespace A243353.P5006592789371827450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (⌈(1 : ℚ) / 2 * (Nat.xor (2 * n + 1) (n + 1) : ℚ)⌉ + 1).toNat

end

end A243353.P5006592789371827450

namespace A243353

/-- `A005940(ceil(1/2*xor(2*n+1, n+1))+1)` -/
def P5006592789371827450.Spec : Prop :=
  ∀ n, P5006592789371827450.a n = A243353 n

end A243353

/-! ## A243353.P14485821994603971352

`A163511(A180201(n))`
-/

namespace A243353.P14485821994603971352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 (A180201 n).toNat

end

end A243353.P14485821994603971352

namespace A243353

/-- `A163511(A180201(n))` -/
def P14485821994603971352.Spec : Prop :=
  ∀ n, P14485821994603971352.a n = A243353 n

end A243353

/-! ## A243353.P9429712655197450538

`A005940(A105081(n+1))`
-/

namespace A243353.P9429712655197450538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A105081 (n + 1)).toNat

end

end A243353.P9429712655197450538

namespace A243353

/-- `A005940(A105081(n+1))` -/
def P9429712655197450538.Spec : Prop :=
  ∀ n, P9429712655197450538.a n = A243353 n

end A243353

/-! ## A243353.P4009811495159013827

`A005940(-xor(n, -A008619(n)))`
-/

namespace A243353.P4009811495159013827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (-Int.xor (n : ℤ) (-A008619 n)).toNat

end

end A243353.P4009811495159013827

namespace A243353

/-- `A005940(-xor(n, -A008619(n)))` -/
def P4009811495159013827.Spec : Prop :=
  ∀ n, P4009811495159013827.a n = A243353 n

end A243353

/-! ## A243353.P8482165318190145070

`A366263(A193231(A003188(n)))`
-/

namespace A243353.P8482165318190145070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A193231 (A003188 n).toNat).toNat

end

end A243353.P8482165318190145070

namespace A243353

/-- `A366263(A193231(A003188(n)))` -/
def P8482165318190145070.Spec : Prop :=
  ∀ n, P8482165318190145070.a n = A243353 n

end A243353

/-! ## A243353.P1127515804903543570

`A005940(A038554(n)+A053644(n)+1)`
-/

namespace A243353.P1127515804903543570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A038554 n + (A053644 n + 1)).toNat

end

end A243353.P1127515804903543570

namespace A243353

/-- `A005940(A038554(n)+A053644(n)+1)` -/
def P1127515804903543570.Spec : Prop :=
  ∀ n, P1127515804903543570.a n = A243353 n

end A243353

/-! ## A243353.P17703150560328880394

`A005940(A008619(xor(n, 2*n)))`
-/

namespace A243353.P17703150560328880394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A008619 (Nat.xor n (2 * n))).toNat

end

end A243353.P17703150560328880394

namespace A243353

/-- `A005940(A008619(xor(n, 2*n)))` -/
def P17703150560328880394.Spec : Prop :=
  ∀ n, P17703150560328880394.a n = A243353 n

end A243353

/-! ## A243353.P3714289993162092222

`A005940(A160588(A122199(2*n+1)))`
-/

namespace A243353.P3714289993162092222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A160588 (A122199 (2 * n + 1)).toNat).toNat

end

end A243353.P3714289993162092222

namespace A243353

/-- `A005940(A160588(A122199(2*n+1)))` -/
def P3714289993162092222.Spec : Prop :=
  ∀ n, P3714289993162092222.a n = A243353 n

end A243353

/-! ## A243353.P7973054041130890384

`A250246(A286555(n))`
-/

namespace A243353.P7973054041130890384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A286555 n).toNat

end

end A243353.P7973054041130890384

namespace A243353

/-- `A250246(A286555(n))` -/
def P7973054041130890384.Spec : Prop :=
  ∀ n, P7973054041130890384.a n = A243353 n

end A243353

/-! ## A243353.P158673468765646024

`A075157(A165199(n))+1`
-/

namespace A243353.P158673468765646024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (A165199 n).toNat + 1

end

end A243353.P158673468765646024

namespace A243353

/-- `A075157(A165199(n))+1` -/
def P158673468765646024.Spec : Prop :=
  ∀ n, P158673468765646024.a n = A243353 n

end A243353

/-!
# A243354: Permutation of natural numbers which maps between the partitions as encoded in A112798 (prime-index based system, one-based) to A227739 (binary based system, zero-based).

The programs for A243354, the canonical program `A243354.P3649320102710959271` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243354 has offset 1).

The definition of A243354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A243354.P3649320102710959271

`A006068(A156552(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A243354

/-- `A006068(A156552(n+1))` -/
def P3649320102710959271.Spec : Prop :=
  ∀ n, P3649320102710959271.a n = A243354 (n + 1)

theorem P3649320102710959271.correct : P3649320102710959271.Spec := by
  intro n
  simp only [A243354, Nat.add_sub_cancel]

end A243354

/-! ## A243354.P18070015775722001425

`A075158(A241909(n+1)-1)`
-/

namespace A243354.P18070015775722001425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075158 (A241909 (n + 1) - 1).toNat

end

end A243354.P18070015775722001425

namespace A243354

/-- `A075158(A241909(n+1)-1)` -/
def P18070015775722001425.Spec : Prop :=
  ∀ n, P18070015775722001425.a n = A243354 (n + 1)

end A243354

/-! ## A243354.P13933978800634678826

`∑{d}[n+1, A297156(#)]`
-/

namespace A243354.P13933978800634678826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297156 d

end

end A243354.P13933978800634678826

namespace A243354

/-- `∑{d}[n+1, A297156(#)]` -/
def P13933978800634678826.Spec : Prop :=
  ∀ n, P13933978800634678826.a n = A243354 (n + 1)

end A243354

/-! ## A243354.P10951497883027009187

`A286556(A250245(n+1))`
-/

namespace A243354.P10951497883027009187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286556 (A250245 (n + 1)).toNat

end

end A243354.P10951497883027009187

namespace A243354

/-- `A286556(A250245(n+1))` -/
def P10951497883027009187.Spec : Prop :=
  ∀ n, P10951497883027009187.a n = A243354 (n + 1)

end A243354

/-! ## A243354.P7851168799579936302

`A286556(A280495(2*(n+1)))`
-/

namespace A243354.P7851168799579936302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286556 (A280495 (2 * (n + 1))).toNat

end

end A243354.P7851168799579936302

namespace A243354

/-- `A286556(A280495(2*(n+1)))` -/
def P7851168799579936302.Spec : Prop :=
  ∀ n, P7851168799579936302.a n = A243354 (n + 1)

end A243354

/-! ## A243354.P8108644540682111456

`A302029(A302023(n+1))`
-/

namespace A243354.P8108644540682111456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (A302023 (n + 1)).toNat

end

end A243354.P8108644540682111456

namespace A243354

/-- `A302029(A302023(n+1))` -/
def P8108644540682111456.Spec : Prop :=
  ∀ n, P8108644540682111456.a n = A243354 (n + 1)

end A243354

/-!
# A243355: Numbers n such that n and prime(n) have no common digits.

The programs for A243355, there is no canonical definition to state claims against.
-/

/-! ## A243355.P14494626467469319009

`eq[0, A081227(n+1)]+1`
-/

namespace A243355.P14494626467469319009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A243355.P14494626467469319009

/-! ## A243355.P17014636225295287274

`record[-xor(n, A081229(n+1))]`
-/

namespace A243355.P17014636225295287274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (A081229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243355.P17014636225295287274

/-! ## A243355.P1470098310106457928

`record[A001478(n+1)*A081229(n+1)]`
-/

namespace A243355.P1470098310106457928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A081229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243355.P1470098310106457928

/-! ## A243355.P12261659592140370245

`record[-(A000027(n+1)*A081229(n+1))]`
-/

namespace A243355.P12261659592140370245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000027 (n + 1) * A081229 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243355.P12261659592140370245

/-! ## A243355.P9041869163770876532

`record[gcd(n+1, A222251(A081229(n+1)+1))]`
-/

namespace A243355.P9041869163770876532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A222251 (A081229 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243355.P9041869163770876532

/-! ## A243355.P13028137670821502675

`record[n+1-A004214(n+1)*A081227(n+1)]`
-/

namespace A243355.P13028137670821502675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004214 (n + 1) * A081227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243355.P13028137670821502675

/-! ## A243355.P9560557316952086075

`record[n+1-A001105(n*A081227(n+1))]`
-/

namespace A243355.P9560557316952086075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001105 ((n : ℤ) * A081227 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243355.P9560557316952086075

/-! ## A243355.P2701001933112637461

`A296882(eq[n, A296882(n+1)+A081229(n+1)]+1)`
-/

namespace A243355.P2701001933112637461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (n + 1) + A081229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A243355.P2701001933112637461

/-!
# A243356: Numbers n such that n and phi(n) have no common digits.

The programs for A243356, there is no canonical definition to state claims against.
-/

/-! ## A243356.P14576910626255677805

`lt[A147786(n+4), A003415(n)+1]`
-/

namespace A243356.P14576910626255677805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147786 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243356.P14576910626255677805

/-! ## A243356.P16799752105048518262

`lt[A029391(n), A001222(n+1)+1]+1`
-/

namespace A243356.P16799752105048518262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243356.P16799752105048518262

/-! ## A243356.P12385674865456516964

`lt[A095149(n), A067274(A003415(n))]`
-/

namespace A243356.P12385674865456516964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067274 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243356.P12385674865456516964

/-! ## A243356.P18097171264293885157

`lt[A206560(n+1), A106481(A003415(n))]`
-/

namespace A243356.P18097171264293885157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106481 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243356.P18097171264293885157

/-!
# A243358: The densest possibly infinite sequence of primes of the form a(n) = floor[A^(C^n)] for A < 2. The density parameter C here approaches its minimal possible value C_0 = 1.2209864... (A117739), while the corresponding value of A is 1.8252076... (A243370).

The programs for A243358, there is no canonical definition to state claims against.
-/

/-! ## A243358.P12800060486520802578

`A060699(n*A290104(a(n-1)))` with `a(0)=2`
-/

namespace A243358.P12800060486520802578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A060699 ((n : ℤ) * A290104 (a (n - 1)).toNat).toNat

end

end A243358.P12800060486520802578

/-! ## A243358.P5590806442542830202

`A060699(A060695(n+1)-ceil(sin(n)²))`
-/

namespace A243358.P5590806442542830202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060699 (A060695 (n + 1) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A243358.P5590806442542830202

/-! ## A243358.P16542803470699054577

`A060699(A060695(n+1)+floor(acot(n))-1)`
-/

namespace A243358.P16542803470699054577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060699 (A060695 (n + 1) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)).toNat

end

end A243358.P16542803470699054577

/-! ## A243358.P7731142224798079075

`A060699(A060695(n+1)+A057428(n))`
-/

namespace A243358.P7731142224798079075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060699 (A060695 (n + 1) + A057428 n).toNat

end

end A243358.P7731142224798079075

/-! ## A243358.P4211334063027118832

`A060699(A060695(n+1)-A057427(n))`
-/

namespace A243358.P4211334063027118832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060699 (A060695 (n + 1) - A057427 n).toNat

end

end A243358.P4211334063027118832

/-!
# A243359: Number of steps it takes the terms in A029742 and their reversals to reach the value 9 when the smaller term is successively subtracted from the larger term.

The programs for A243359, there is no canonical definition to state claims against.
-/

/-! ## A243359.P17348715155666659906

`A001222(∑[-a(n-5)])` with `a(0)=439, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=1`
-/

namespace A243359.P17348715155666659906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [439, 0, 1, 2, 2, 1] fun n f1 =>
  -f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243359.P17348715155666659906

/-!
# A243360: a(n) = arrange digits of concatenation of divisors of n (A037278, A176558) in decreasing order (in base 10).

The programs for A243360, there is no canonical definition to state claims against.
-/

/-! ## A243360.P16849415232016576135

`A243361(n+1)+A151949(A037278(n+1))`
-/

namespace A243360.P16849415232016576135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243361 (n + 1) + A151949 (A037278 (n + 1)).toNat

end

end A243360.P16849415232016576135

/-! ## A243360.P9225210898130278227

`A243361(n+1)+A151949(A176558(n+1))`
-/

namespace A243360.P9225210898130278227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243361 (n + 1) + A151949 (A176558 (n + 1)).toNat

end

end A243360.P9225210898130278227

/-!
# A243361: a(n) = arrange digits of concatenation of divisors of n (A037278, A176558) in increasing order in base 10 (zero digits are omitted).

The programs for A243361, there is no canonical definition to state claims against.
-/

/-! ## A243361.P12046517393061019709

`A243360(n+1)-A151949(A037278(n+1))`
-/

namespace A243361.P12046517393061019709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1) - A151949 (A037278 (n + 1)).toNat

end

end A243361.P12046517393061019709

/-! ## A243361.P11932213811362819313

`A243360(n+1)-A151949(A176558(n+1))`
-/

namespace A243361.P11932213811362819313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243360 (n + 1) - A151949 (A176558 (n + 1)).toNat

end

end A243361.P11932213811362819313

/-! ## A243361.P5981753486023767073

`A037278(n+1)%A109183(A299821(n+1))`
-/

namespace A243361.P5981753486023767073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037278 (n + 1)) (A109183 (A299821 (n + 1)).toNat)

end

end A243361.P5981753486023767073

/-! ## A243361.P16646873564917231500

`A087712(A275700(n+1))%A109183(A284549(n))`
-/

namespace A243361.P16646873564917231500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087712 (A275700 (n + 1)).toNat) (A109183 (A284549 n).toNat)

end

end A243361.P16646873564917231500

/-! ## A243361.P3416449256220197808

`A037278(n+1)%A109183(A073107(n))`
-/

namespace A243361.P3416449256220197808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037278 (n + 1)) (A109183 (A073107 n).toNat)

end

end A243361.P3416449256220197808

/-!
# A243362: Numbers k such that A243361(k) = 123456789.

The programs for A243362, there is no canonical definition to state claims against.
-/

/-! ## A243362.P1638599696416876393

`record[root(A038564(n+1), A038565(n+1))]`
-/

namespace A243362.P1638599696416876393
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038564 (n + 1) : ℝ) ^ (1 / (A038565 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243362.P1638599696416876393

/-!
# A243364: Primes whose reverse concatenation of divisors (A176558) contains all the digits 1-9 exactly once; the number of digits 0 is arbitrary (in base 10).

The programs for A243364, there is no canonical definition to state claims against.
-/

/-! ## A243364.P10644252616367974797

`A038564(n+21)`
-/

namespace A243364.P10644252616367974797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038564 (n + 21)

end

end A243364.P10644252616367974797

/-! ## A243364.P6841376973922333490

`A160402(comp[(7*n)²])`
-/

namespace A243364.P6841376973922333490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160402 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A243364.P6841376973922333490

/-! ## A243364.P6507338220671114978

`A160402(n+1)+char[26]`
-/

namespace A243364.P6507338220671114978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160402 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243364.P6507338220671114978

/-! ## A243364.P6155668177189277620

`record[A160402(A025824(n+8))]`
-/

namespace A243364.P6155668177189277620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160402 (A025824 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243364.P6155668177189277620

/-! ## A243364.P4293902507672282361

`A178780(n)+A160402(n+1)`
-/

namespace A243364.P4293902507672282361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n + A160402 (n + 1)

end

end A243364.P4293902507672282361

/-!
# A243365: Primes p such that both p^2 + 6 and p^2 - 6 are semiprime.

The programs for A243365, there is no canonical definition to state claims against.
-/

/-! ## A243365.P7526062024631288576

`A107808(A118298(n+1)+A031131(n+1))`
-/

namespace A243365.P7526062024631288576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107808 (A118298 (n + 1) + A031131 (n + 1)).toNat

end

end A243365.P7526062024631288576

/-!
# A243366: Number T(n,k) of Dyck paths of semilength n having exactly k (possibly overlapping) occurrences of the consecutive steps UDUUDU (with U=(1,1), D=(1,-1)); triangle T(n,k), n>=0, 0<=k<=max(0,floor(n/2)-1), read by rows.

The programs for A243366, there is no canonical definition to state claims against.
-/

/-! ## A243366.P14255053592988656475

`A114508(n)+A014189(A000110(n))`
-/

namespace A243366.P14255053592988656475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114508 n + A014189 (A000110 n).toNat

end

end A243366.P14255053592988656475

/-! ## A243366.P18243455185652293198

`A114508(n)+A025466(A007581(n))`
-/

namespace A243366.P18243455185652293198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114508 n + A025466 (A007581 n).toNat

end

end A243366.P18243455185652293198

/-! ## A243366.P8531770040999989033

`A114508(n)+A001878(A058275(n))`
-/

namespace A243366.P8531770040999989033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114508 n + A001878 (A058275 n).toNat

end

end A243366.P8531770040999989033

/-! ## A243366.P10231646121488406120

`A114508(n)+A025466(A047970(n))`
-/

namespace A243366.P10231646121488406120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114508 n + A025466 (A047970 n).toNat

end

end A243366.P10231646121488406120

/-!
# A243367: Primes p such that p^2 + 10 is prime.

The programs for A243367, there is no canonical definition to state claims against.
-/

/-! ## A243367.P3161016379127178888

`sqrt(A182475(n+1)-10)`
-/

namespace A243367.P3161016379127178888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A182475 (n + 1) - 10 : ℝ)

end

end A243367.P3161016379127178888

/-! ## A243367.P3629081458191560153

`p?[A114273(n+1)]`
-/

namespace A243367.P3629081458191560153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243367.P3629081458191560153

/-! ## A243367.P6216563208695567963

`p?[floor(sqrt(A138355(n+1)))]`
-/

namespace A243367.P6216563208695567963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A138355 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243367.P6216563208695567963

/-! ## A243367.P12588394399975167343

`∩[A045417(n+1), A114273(n+1)]`
-/

namespace A243367.P12588394399975167343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P12588394399975167343

/-! ## A243367.P6238443373154867256

`∩[A045320(n+1), A114273(n+1)]`
-/

namespace A243367.P6238443373154867256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P6238443373154867256

/-! ## A243367.P10019765239415614468

`∩[A045393(n+1), A114273(n+1)]`
-/

namespace A243367.P10019765239415614468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P10019765239415614468

/-! ## A243367.P1036429581872269122

`∩[A000040(n+1), A114273(n+1)]`
-/

namespace A243367.P1036429581872269122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P1036429581872269122

/-! ## A243367.P1213322921569807648

`∩[A004139(n+1), A114273(n+1)]`
-/

namespace A243367.P1213322921569807648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P1213322921569807648

/-! ## A243367.P14424890187025416668

`∩[A045319(n+1), A114273(n+1)]`
-/

namespace A243367.P14424890187025416668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P14424890187025416668

/-! ## A243367.P428827927874886890

`∩[A051948(n+1), A114273(n+1)]`
-/

namespace A243367.P428827927874886890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P428827927874886890

/-! ## A243367.P9502403898343746877

`∩[A053813(n+1), A114273(n+1)]`
-/

namespace A243367.P9502403898343746877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P9502403898343746877

/-! ## A243367.P2221642156293904813

`∩[A065091(n+1), A114273(n+1)]`
-/

namespace A243367.P2221642156293904813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P2221642156293904813

/-! ## A243367.P13600031263760444037

`∩[A093515(n+1), A114273(n+1)]`
-/

namespace A243367.P13600031263760444037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P13600031263760444037

/-! ## A243367.P3151961969086233856

`∩[A114273(n+1), A116974(n+1)]`
-/

namespace A243367.P3151961969086233856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P3151961969086233856

/-! ## A243367.P11587512731549089811

`∩[A114273(n+1), A161346(n+1)]`
-/

namespace A243367.P11587512731549089811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P11587512731549089811

/-! ## A243367.P16627560322416572543

`∩[A114273(n+1), A175787(n+1)]`
-/

namespace A243367.P16627560322416572543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P16627560322416572543

/-! ## A243367.P1375050528382582568

`∩[A114273(n+1), A182986(n+1)]`
-/

namespace A243367.P1375050528382582568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P1375050528382582568

/-! ## A243367.P9399791810208092223

`∩[A064728(n+1), A114273(n+1)]`
-/

namespace A243367.P9399791810208092223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P9399791810208092223

/-! ## A243367.P17367327915327098841

`∩[A114273(n+1), A140826(n+1)]`
-/

namespace A243367.P17367327915327098841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P17367327915327098841

/-! ## A243367.P6913052765187873003

`∩[A066542(n+1), A114273(n+1)]`
-/

namespace A243367.P6913052765187873003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243367.P6913052765187873003

/-!
# A243369: Denominators of Egyptian fraction expansion of e, without repetition.

The programs for A243369, there is no canonical definition to state claims against.
-/

/-! ## A243369.P12634537794802998553

`A117358(A356281(n))+n`
-/

namespace A243369.P12634537794802998553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A356281 n).toNat + (n : ℤ)

end

end A243369.P12634537794802998553

/-! ## A243369.P6944749261196075759

`A317078(A308809(n))+n`
-/

namespace A243369.P6944749261196075759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317078 (A308809 n).toNat + (n : ℤ)

end

end A243369.P6944749261196075759

/-! ## A243369.P11546426670293526569

`A317078(A308989(n))+n`
-/

namespace A243369.P11546426670293526569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317078 (A308989 n).toNat + (n : ℤ)

end

end A243369.P11546426670293526569

/-! ## A243369.P5803454130892279859

`A317078(A309484(n))+n`
-/

namespace A243369.P5803454130892279859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317078 (A309484 n).toNat + (n : ℤ)

end

end A243369.P5803454130892279859

/-! ## A243369.P15320999202252310051

`A147001(A147041(n+1))+n`
-/

namespace A243369.P15320999202252310051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147001 (A147041 (n + 1)).toNat + (n : ℤ)

end

end A243369.P15320999202252310051

/-!
# A243373: Numbers m such that k*phi(n) = Sum_{j|n} sigma(j), where k >= 1 is an integer.

The programs for A243373, there is no canonical definition to state claims against.
-/

/-! ## A243373.P8102505970073504260

`record[A127913(n+1)%A025478(n+2)]`
-/

namespace A243373.P8102505970073504260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127913 (n + 1)) (A025478 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243373.P8102505970073504260

/-! ## A243373.P17340240165812580212

`eq[A068915(n), A193472(A002264(n))]`
-/

namespace A243373.P17340240165812580212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068915 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193472 (A002264 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243373.P17340240165812580212

/-! ## A243373.P7551555093877633071

`eq[A054992(A340932(n+1)), A103185(n)]`
-/

namespace A243373.P7551555093877633071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (A340932 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243373.P7551555093877633071

/-! ## A243373.P1309099167808551560

`lt[A327802(n+5), A033999(A000124(n))]`
-/

namespace A243373.P1309099167808551560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243373.P1309099167808551560

/-! ## A243373.P16071969822215265085

`lt[A158565(A158582(n+2)), A158570(n+1)]`
-/

namespace A243373.P16071969822215265085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158565 (A158582 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243373.P16071969822215265085

/-!
# A243374: Least number k such that n//k and k//n are both prime where // is the concatenation function, or 0 if no such k exists.

The programs for A243374, there is no canonical definition to state claims against.
-/

/-! ## A243374.P14511123857585025792

`char[2*n]*A083803(A008619(n))`
-/

namespace A243374.P14511123857585025792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A083803 (A008619 n).toNat

end

end A243374.P14511123857585025792

/-! ## A243374.P7923002980902724074

`char[2*n]*A083803(∑[A059841(n)])`
-/

namespace A243374.P7923002980902724074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A083803 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A243374.P7923002980902724074

/-! ## A243374.P14078922010856678030

`((n+1)%2)^n*A083803(A242112(n))`
-/

namespace A243374.P14078922010856678030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n + 1) % 2) ^ n : ℕ) : ℤ) * A083803 (A242112 n).toNat

end

end A243374.P14078922010856678030

/-! ## A243374.P467515105775934531

`A059841(n)*A083803(A080513(n))`
-/

namespace A243374.P467515105775934531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A083803 (A080513 n).toNat

end

end A243374.P467515105775934531

/-! ## A243374.P14971326646317194691

`A059841(n)*A083803(A242112(n))`
-/

namespace A243374.P14971326646317194691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A083803 (A242112 n).toNat

end

end A243374.P14971326646317194691

/-! ## A243374.P17449186889295476527

`lcm(A056594(n), A083803(A008619(n)))`
-/

namespace A243374.P17449186889295476527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A083803 (A008619 n).toNat)

end

end A243374.P17449186889295476527

/-! ## A243374.P6190906697853998158

`∑[A033999(n)*A083803(A008619(n))]`
-/

namespace A243374.P6190906697853998158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A083803 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243374.P6190906697853998158

/-! ## A243374.P11187743145132229534

`A059841(n)*A083803(A003602(n+1))`
-/

namespace A243374.P11187743145132229534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A083803 (A003602 (n + 1)).toNat

end

end A243374.P11187743145132229534

/-! ## A243374.P1302682527020642518

`A000035(n+1)*A083803(A080513(n))`
-/

namespace A243374.P1302682527020642518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A083803 (A080513 n).toNat

end

end A243374.P1302682527020642518

/-! ## A243374.P17927355850398583114

`(1-A000035(n))*A083803(A080513(n))`
-/

namespace A243374.P17927355850398583114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A083803 (A080513 n).toNat

end

end A243374.P17927355850398583114

/-! ## A243374.P2839255479076381102

`A083803(A008619(n))%A019425(n+3)`
-/

namespace A243374.P2839255479076381102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083803 (A008619 n).toNat) (A019425 (n + 3))

end

end A243374.P2839255479076381102

/-! ## A243374.P9993807857678589721

`∑[(A004442(n)-n)*A083803(A008619(n))]`
-/

namespace A243374.P9993807857678589721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A083803 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243374.P9993807857678589721

/-! ## A243374.P9228967176936381447

`lcm(A083803(A008619(n+1)), A166698(n+1))`
-/

namespace A243374.P9228967176936381447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083803 (A008619 (n + 1)).toNat) (A166698 (n + 1))

end

end A243374.P9228967176936381447

/-! ## A243374.P837848287870688336

`∑[A034947(2*n+1)*A083803(A008619(n))]`
-/

namespace A243374.P837848287870688336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A083803 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243374.P837848287870688336

/-! ## A243374.P9262872874543205077

`A083803(A008619(n))*A166698(n+1)*A166698(n+1)`
-/

namespace A243374.P9262872874543205077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083803 (A008619 n).toNat * A166698 (n + 1) * A166698 (n + 1)

end

end A243374.P9262872874543205077

/-!
# A243382: Number of length n+3 0..n arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..n introduced in 0..n order.

The programs for A243382, there is no canonical definition to state claims against.
-/

/-! ## A243382.P11984156616441549359

`A243389(∑[4*n]+1)`
-/

namespace A243382.P11984156616441549359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243382.P11984156616441549359

/-! ## A243382.P6577151539834712938

`record[A003982(n)*A243389(n+1)]`
-/

namespace A243382.P6577151539834712938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A243389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243382.P6577151539834712938

/-! ## A243382.P16795679515454666103

`record[gcd(A003987(n), A243389(n+1))]`
-/

namespace A243382.P16795679515454666103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A243389 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243382.P16795679515454666103

/-! ## A243382.P10977792469976057907

`record[char[A046092(n)]*A243389(n+1)]`
-/

namespace A243382.P10977792469976057907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A243389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243382.P10977792469976057907

/-! ## A243382.P10133912584573024823

`or(A000007(n), A243389(A001844(n)))`
-/

namespace A243382.P10133912584573024823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A243389 (A001844 n).toNat)

end

end A243382.P10133912584573024823

/-! ## A243382.P9390014869026481597

`or(A151909(n), A243389(A001844(n)))`
-/

namespace A243382.P9390014869026481597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151909 n) (A243389 (A001844 n).toNat)

end

end A243382.P9390014869026481597

/-!
# A243383: Number of length n+3 0..2 arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..2 introduced in 0..2 order.

The programs for A243383, the canonical program `A243383.P7779960076744446923` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243383 has offset 1).

The definition of A243383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243383.P7779960076744446923

`4*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=13, a(1)=35, a(2)=96, a(3)=265`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243383

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)-a(n-4)` -/
def P7779960076744446923.Spec : Prop :=
  ∀ n, P7779960076744446923.a n = A243383 (n + 1)

theorem P7779960076744446923.correct : P7779960076744446923.Spec := by
  intro n
  simp only [A243383, Nat.add_sub_cancel]

end A243383

/-! ## A243383.P6466621918112799513

`ceil(A098182(n+4)/2)`
-/

namespace A243383.P6466621918112799513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098182 (n + 4) : ℚ) / 2⌉

end

end A243383.P6466621918112799513

namespace A243383

/-- `ceil(A098182(n+4)/2)` -/
def P6466621918112799513.Spec : Prop :=
  ∀ n, P6466621918112799513.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P7757811692249248321

`A243389(∑[n+2])`
-/

namespace A243383.P7757811692249248321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243383.P7757811692249248321

namespace A243383

/-- `A243389(∑[n+2])` -/
def P7757811692249248321.Spec : Prop :=
  ∀ n, P7757811692249248321.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P4118874168450603839

`record[A243389(A000096(A020986(n)))]`
-/

namespace A243383.P4118874168450603839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P4118874168450603839

namespace A243383

/-- `record[A243389(A000096(A020986(n)))]` -/
def P4118874168450603839.Spec : Prop :=
  ∀ n, P4118874168450603839.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P1744246135260071449

`record[A243389(A000096(A154958(n)))]`
-/

namespace A243383.P1744246135260071449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P1744246135260071449

namespace A243383

/-- `record[A243389(A000096(A154958(n)))]` -/
def P1744246135260071449.Spec : Prop :=
  ∀ n, P1744246135260071449.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P17512917891633216740

`record[A243389(A000096(A292266(n)))]`
-/

namespace A243383.P17512917891633216740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (A292266 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P17512917891633216740

namespace A243383

/-- `record[A243389(A000096(A292266(n)))]` -/
def P17512917891633216740.Spec : Prop :=
  ∀ n, P17512917891633216740.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P11245607351736626761

`record[A243389(A000096(A003602(n+1)))]`
-/

namespace A243383.P11245607351736626761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P11245607351736626761

namespace A243383

/-- `record[A243389(A000096(A003602(n+1)))]` -/
def P11245607351736626761.Spec : Prop :=
  ∀ n, P11245607351736626761.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P15434718499184765907

`record[A243389(A000096(A032742(n+1)))]`
-/

namespace A243383.P15434718499184765907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P15434718499184765907

namespace A243383

/-- `record[A243389(A000096(A032742(n+1)))]` -/
def P15434718499184765907.Spec : Prop :=
  ∀ n, P15434718499184765907.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P3208935035943686560

`record[A243389(A000096(A260739(n+1)))]`
-/

namespace A243383.P3208935035943686560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (A260739 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P3208935035943686560

namespace A243383

/-- `record[A243389(A000096(A260739(n+1)))]` -/
def P3208935035943686560.Spec : Prop :=
  ∀ n, P3208935035943686560.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P591138429507770995

`record[A243389(A000096(A266348(n+1)))]`
-/

namespace A243383.P591138429507770995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (A266348 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P591138429507770995

namespace A243383

/-- `record[A243389(A000096(A266348(n+1)))]` -/
def P591138429507770995.Spec : Prop :=
  ∀ n, P591138429507770995.a n = A243383 (n + 1)

end A243383

/-! ## A243383.P15544730880069803995

`record[A243389(A233583(n+1)+A000217(n))]`
-/

namespace A243383.P15544730880069803995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A233583 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243383.P15544730880069803995

namespace A243383

/-- `record[A243389(A233583(n+1)+A000217(n))]` -/
def P15544730880069803995.Spec : Prop :=
  ∀ n, P15544730880069803995.a n = A243383 (n + 1)

end A243383

/-!
# A243384: Number of length n+3 0..3 arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..3 introduced in 0..3 order.

The programs for A243384, there is no canonical definition to state claims against.
-/

/-! ## A243384.P5663661798258088287

`A243389(∑[n+3]+1)`
-/

namespace A243384.P5663661798258088287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243384.P5663661798258088287

/-!
# A243385: Number of length n+3 0..4 arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..4 introduced in 0..4 order.

The programs for A243385, there is no canonical definition to state claims against.
-/

/-! ## A243385.P161847541269579820

`A243389(A027379(n+2))`
-/

namespace A243385.P161847541269579820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A027379 (n + 2)).toNat

end

end A243385.P161847541269579820

/-! ## A243385.P8259103653664119145

`A243389(A055998(n+2))`
-/

namespace A243385.P8259103653664119145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A055998 (n + 2)).toNat

end

end A243385.P8259103653664119145

/-! ## A243385.P3298760167126733084

`A243389(A056000(n)+7)`
-/

namespace A243385.P3298760167126733084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A056000 n + 7).toNat

end

end A243385.P3298760167126733084

/-! ## A243385.P10146870547988493092

`A243389(Δ[A034857(n+1)])`
-/

namespace A243385.P10146870547988493092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n).toNat

end

end A243385.P10146870547988493092

/-! ## A243385.P8908326456249353507

`A243389(Δ[A006416(n+2)])`
-/

namespace A243385.P8908326456249353507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n).toNat

end

end A243385.P8908326456249353507

/-! ## A243385.P114210531580021383

`A243389(A052905(n+1)+2)`
-/

namespace A243385.P114210531580021383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A052905 (n + 1) + 2).toNat

end

end A243385.P114210531580021383

/-! ## A243385.P14283001829735345501

`A243389(A167614(n+1)+A005408(n))`
-/

namespace A243385.P14283001829735345501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A167614 (n + 1) + A005408 n).toNat

end

end A243385.P14283001829735345501

/-!
# A243386: Number of length n+3 0..5 arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..5 introduced in 0..5 order.

The programs for A243386, there is no canonical definition to state claims against.
-/

/-! ## A243386.P16745061590372678499

`A243389(A046691(n+3))`
-/

namespace A243386.P16745061590372678499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A046691 (n + 3)).toNat

end

end A243386.P16745061590372678499

/-! ## A243386.P7092005121659934089

`A243389(Δ[A023545(n+1)])`
-/

namespace A243386.P7092005121659934089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n).toNat

end

end A243386.P7092005121659934089

/-! ## A243386.P15026156144260099122

`A243389(Δ[A111396(n)]-1)`
-/

namespace A243386.P15026156144260099122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n - 1).toNat

end

end A243386.P15026156144260099122

/-! ## A243386.P699020690550890485

`A243389(Δ[A034857(n+2)]-1)`
-/

namespace A243386.P699020690550890485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n - 1).toNat

end

end A243386.P699020690550890485

/-! ## A243386.P1215768245712128407

`A243389(Δ[A006416(n+3)]-1)`
-/

namespace A243386.P1215768245712128407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n - 1).toNat

end

end A243386.P1215768245712128407

/-! ## A243386.P5345906479474013859

`A243389(A000096(n+6)-A005843(n+8))`
-/

namespace A243386.P5345906479474013859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (n + 6) - A005843 (n + 8)).toNat

end

end A243386.P5345906479474013859

/-! ## A243386.P16610548393954299888

`A243389(A000096(n+6)-A051755(n+9))`
-/

namespace A243386.P16610548393954299888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (n + 6) - A051755 (n + 9)).toNat

end

end A243386.P16610548393954299888

/-! ## A243386.P6398599181275345451

`A243389(A000124(n+7)-A005843(n+9))`
-/

namespace A243386.P6398599181275345451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000124 (n + 7) - A005843 (n + 9)).toNat

end

end A243386.P6398599181275345451

/-!
# A243387: Number of length n+3 0..6 arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..6 introduced in 0..6 order.

The programs for A243387, there is no canonical definition to state claims against.
-/

/-! ## A243387.P2282443548661641287

`A243389(A052905(n+3))`
-/

namespace A243387.P2282443548661641287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A052905 (n + 3)).toNat

end

end A243387.P2282443548661641287

/-! ## A243387.P15465429684805938569

`A243389(A056119(n)+16)`
-/

namespace A243387.P15465429684805938569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A056119 n + 16).toNat

end

end A243387.P15465429684805938569

/-! ## A243387.P6606600062167859285

`A243389(A000217(n+6)-5)`
-/

namespace A243387.P6606600062167859285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000217 (n + 6) - 5).toNat

end

end A243387.P6606600062167859285

/-! ## A243387.P7695866783520712659

`A243389(A000124(n+6)-6)`
-/

namespace A243387.P7695866783520712659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000124 (n + 6) - 6).toNat

end

end A243387.P7695866783520712659

/-! ## A243387.P6773516951477676919

`A243389(A134869(n+6)-6)`
-/

namespace A243387.P6773516951477676919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A134869 (n + 6) - 6).toNat

end

end A243387.P6773516951477676919

/-! ## A243387.P8463815953163127351

`A243389(Δ[A023545(n+2)]-1)`
-/

namespace A243387.P8463815953163127351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n - 1).toNat

end

end A243387.P8463815953163127351

/-! ## A243387.P4017752661408651487

`A243389(Δ[A111396(n+1)]-2)`
-/

namespace A243387.P4017752661408651487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (f1 (n + 1) - f1 n - 2).toNat

end

end A243387.P4017752661408651487

/-! ## A243387.P12403576002155215392

`A243389(A007401(Δ[A111396(n)]))`
-/

namespace A243387.P12403576002155215392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A007401 (f1 (n + 1) - f1 n).toNat).toNat

end

end A243387.P12403576002155215392

/-!
# A243388: Number of length n+3 0..7 arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..7 introduced in 0..7 order.

The programs for A243388, there is no canonical definition to state claims against.
-/

/-! ## A243388.P10767102778686803449

`A243389(A055999(n+4))`
-/

namespace A243388.P10767102778686803449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A055999 (n + 4)).toNat

end

end A243388.P10767102778686803449

/-! ## A243388.P7305283870581744601

`A243389(A000124(n+7)-7)`
-/

namespace A243388.P7305283870581744601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000124 (n + 7) - 7).toNat

end

end A243388.P7305283870581744601

/-! ## A243388.P7428279285216032243

`A243389(A022856(n+10)+n-1)`
-/

namespace A243388.P7428279285216032243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A022856 (n + 10) + ((n : ℤ) - 1)).toNat

end

end A243388.P7428279285216032243

/-! ## A243388.P11602880501993745243

`A243389(A000096(n+8)-A005843(n+11))`
-/

namespace A243388.P11602880501993745243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (n + 8) - A005843 (n + 11)).toNat

end

end A243388.P11602880501993745243

/-! ## A243388.P12957827268429228891

`A243389(A000096(n+8)-A051755(n+12))`
-/

namespace A243388.P12957827268429228891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243389 (A000096 (n + 8) - A051755 (n + 12)).toNat

end

end A243388.P12957827268429228891

/-!
# A243389: T(n,k)=Number of length n+3 0..k arrays with no four elements in a row with pattern abba (with a!=b) and new values 0..k introduced in 0..k order.

The programs for A243389, there is no canonical definition to state claims against.
-/

/-! ## A243389.P258197380102060715

`A242584(n+1)-A051768(A074586(n+1))`
-/

namespace A243389.P258197380102060715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (n + 1) - A051768 (A074586 (n + 1)).toNat

end

end A243389.P258197380102060715

/-! ## A243389.P18157681158673678960

`A242584(n+1)-A100910(A290234(n))`
-/

namespace A243389.P18157681158673678960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (n + 1) - A100910 (A290234 n).toNat

end

end A243389.P18157681158673678960

/-! ## A243389.P15799874154095330678

`A242584(n+1)-A051768(A028412(n))`
-/

namespace A243389.P15799874154095330678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (n + 1) - A051768 (A028412 n).toNat

end

end A243389.P15799874154095330678

/-! ## A243389.P14086244018029162466

`A242584(n+1)-A121262(A054392(n))`
-/

namespace A243389.P14086244018029162466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (n + 1) - A121262 (A054392 n).toNat

end

end A243389.P14086244018029162466

/-! ## A243389.P9876553265399743541

`A242584(n+1)-A198318(A062003(n))`
-/

namespace A243389.P9876553265399743541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242584 (n + 1) - A198318 (A062003 n).toNat

end

end A243389.P9876553265399743541

/-!
# A243391: Number of isomorphism classes of connected 3-regular loopless multigraphs with n vertices and with semi-edges allowed.

The programs for A243391, there is no canonical definition to state claims against.
-/

/-! ## A243391.P10858008441727293494

`A303030(n+1)+char[1]`
-/

namespace A243391.P10858008441727293494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303030 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243391.P10858008441727293494

/-! ## A243391.P10786268498768356878

`A243392(n+1)-floor(acot(n))`
-/

namespace A243391.P10786268498768356878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243392 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A243391.P10786268498768356878

/-! ## A243391.P17412363577526078218

`A243392(n+1)-A000007(n)`
-/

namespace A243391.P17412363577526078218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243392 (n + 1) - A000007 n

end

end A243391.P17412363577526078218

/-! ## A243391.P7511912154574557403

`A243392(n+1)-A088157(n)`
-/

namespace A243391.P7511912154574557403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243392 (n + 1) - A088157 n

end

end A243391.P7511912154574557403

/-! ## A243391.P12722086395772472767

`A243392(n+1)-A112315(n)`
-/

namespace A243391.P12722086395772472767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243392 (n + 1) - A112315 n

end

end A243391.P12722086395772472767

/-!
# A243392: Number of isomorphism classes of connected 3-regular simple graphs of order 2n with loops and semi-edges allowed.

The programs for A243392, there is no canonical definition to state claims against.
-/

/-! ## A243392.P5668563201752402485

`floor(A243391(n+1)+acot(n))`
-/

namespace A243392.P5668563201752402485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A243391 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A243392.P5668563201752402485

/-! ## A243392.P6609701384505640417

`floor(acot(n))+A303030(n+1)+char[1]`
-/

namespace A243392.P6609701384505640417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (A303030 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A243392.P6609701384505640417

/-! ## A243392.P11338091700366911146

`A243391((n+1)%round(ϕ*a(n-1)))` with `a(0)=2`
-/

namespace A243392.P11338091700366911146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A243391 (Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))).toNat

end

end A243392.P11338091700366911146

/-! ## A243392.P4405975744034307648

`A243391(n+1)+A000007(n)`
-/

namespace A243392.P4405975744034307648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243391 (n + 1) + A000007 n

end

end A243392.P4405975744034307648

/-! ## A243392.P2307212489144480647

`A243391(n+1)+A088157(n)`
-/

namespace A243392.P2307212489144480647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243391 (n + 1) + A088157 n

end

end A243392.P2307212489144480647

/-!
# A243394: Number of isomorphism classes of connected 3-regular multigraphs with n vertices and with loops and semi-edges allowed.

The programs for A243394, there is no canonical definition to state claims against.
-/

/-! ## A243394.P18051739836434185666

`A002487(A027741(n+2)+2)`
-/

namespace A243394.P18051739836434185666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A027741 (n + 2) + 2).toNat

end

end A243394.P18051739836434185666

/-! ## A243394.P11475131797186393057

`record[A239700(A039494(n+1))+1]`
-/

namespace A243394.P11475131797186393057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (A039494 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243394.P11475131797186393057

/-!
# A243397: Numbers n such that 19^n+4 is prime.

The programs for A243397, there is no canonical definition to state claims against.
-/

/-! ## A243397.P3849714072502762670

`A154452(A000670(n))-A057078(n)`
-/

namespace A243397.P3849714072502762670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154452 (A000670 n).toNat - A057078 n

end

end A243397.P3849714072502762670

/-! ## A243397.P2082248915722202659

`A030101(A222058(n)-A137176(n))`
-/

namespace A243397.P2082248915722202659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A222058 n - A137176 n).toNat

end

end A243397.P2082248915722202659

/-!
# A243399: a(0) = 1, a(1) = 19; for n > 1, a(n) = 19*a(n-1) + a(n-2).

The programs for A243399, the canonical program `A243399.P17564609914706485586` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243399 has offset 0).

The definition of A243399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*a(n-1)+a(n-2)` (program `A243399.P17564609914706485586`, by `A243399.P17564609914706485586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243399.P17564609914706485586

`19*a(n-1)+a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A243399

/-- `19*a(n-1)+a(n-2)` -/
def P17564609914706485586.Spec : Prop :=
  ∀ n, (P17564609914706485586.a n : ℤ) = A243399 n

theorem P17564609914706485586.correct : P17564609914706485586.Spec := by
  intro n
  simp only [A243399]

end A243399

/-! ## A243399.P2453421210322983164

`((19+sqrt(365))^(n+1)-(19-sqrt(365))^(n+1))/(2^(n+1)*sqrt(365))`
-/

namespace A243399.P2453421210322983164
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((19 + Real.sqrt (365 : ℝ)) ^ (n + 1) - (19 - Real.sqrt (365 : ℝ)) ^ (n + 1)) / ((2 ^ (n + 1) : ℝ) * Real.sqrt (365 : ℝ))

end

end A243399.P2453421210322983164

namespace A243399

/-- `((19+sqrt(365))^(n+1)-(19-sqrt(365))^(n+1))/(2^(n+1)*sqrt(365))` -/
def P2453421210322983164.Spec : Prop :=
  ∀ n, P2453421210322983164.a n = (A243399 n : ℝ)

theorem P2453421210322983164.correct : P2453421210322983164.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A243399, Nat.add_sub_cancel, A243399.P2453421210322983164.a, A243399.P17564609914706485586.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A243399, Nat.add_sub_cancel, A243399.P2453421210322983164.a, A243399.P17564609914706485586.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A243399

/-! ## A243399.P2173778002941920602

`ogf(1/(1-19x-x^2))`
-/

namespace A243399.P2173778002941920602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -19, -1] n

end

end A243399.P2173778002941920602

namespace A243399

/-- `ogf(1/(1-19x-x^2))` -/
def P2173778002941920602.Spec : Prop :=
  ∀ n, P2173778002941920602.a n = A243399 n

end A243399

/-! ## A243399.P9330921849686169296

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=1, a(1)=19`
-/

namespace A243399.P9330921849686169296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A243399.P9330921849686169296

namespace A243399

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P9330921849686169296.Spec : Prop :=
  ∀ n, P9330921849686169296.a n = A243399 n

end A243399

