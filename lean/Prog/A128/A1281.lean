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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A128100: Triangle read by rows: T(n,k) is the number of ways to tile a 2 X n rectangle with k pieces of 2 X 2 tiles and n-2k pieces of 1 X 2 tiles (0 <= k <= floor(n/2)).

The programs for A128100, there is no canonical definition to state claims against.
-/

/-! ## A128100.P759150142408682300

`A037027(A091018(n))`
-/

namespace A128100.P759150142408682300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A091018 n).toNat

end

end A128100.P759150142408682300

/-! ## A128100.P16631090840089728511

`A037027(A056536(n+1)-1)`
-/

namespace A128100.P16631090840089728511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A056536 (n + 1) - 1).toNat

end

end A128100.P16631090840089728511

/-! ## A128100.P5243206451302717767

`A037027(A057428(n)+A056536(n+1))`
-/

namespace A128100.P5243206451302717767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A057428 n + A056536 (n + 1)).toNat

end

end A128100.P5243206451302717767

/-! ## A128100.P59908261299707362

`A181974(2*n-floor(sqrt(n)))`
-/

namespace A128100.P59908261299707362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181974 (2 * n - Nat.sqrt n)

end

end A128100.P59908261299707362

/-! ## A128100.P10403823272797552449

`A155161(A014132(A056536(n+1)))`
-/

namespace A128100.P10403823272797552449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A014132 (A056536 (n + 1)).toNat).toNat

end

end A128100.P10403823272797552449

/-! ## A128100.P17800819299900703

`A155161(A199474(n+1)+A056536(n+1))`
-/

namespace A128100.P17800819299900703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A199474 (n + 1) + A056536 (n + 1)).toNat

end

end A128100.P17800819299900703

/-!
# A128102: Number of 2 X 2 tiles in all tilings of a 4 X n rectangle with 1 X 1 and 2 X 2 square tiles.

The programs for A128102, there is no canonical definition to state claims against.
-/

/-! ## A128102.P15962226255919907688

`A100951(A218190(n+1)+1)`
-/

namespace A128102.P15962226255919907688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100951 (A218190 (n + 1) + 1).toNat

end

end A128102.P15962226255919907688

/-! ## A128102.P5019819984926981668

`∑[A306180(n+1)%A344818(n+1)]`
-/

namespace A128102.P5019819984926981668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306180 (n + 1)) (A344818 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128102.P5019819984926981668

/-!
# A128103: Number of permutations of [n] with an even number of rises.

The programs for A128103, there is no canonical definition to state claims against.
-/

/-! ## A128103.P9837660639752570242

`A000142(n)-A262745(n)`
-/

namespace A128103.P9837660639752570242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A262745 n

end

end A128103.P9837660639752570242

/-! ## A128103.P6524267349802093373

`A262745(n)+A155585(n)`
-/

namespace A128103.P6524267349802093373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262745 n + A155585 n

end

end A128103.P6524267349802093373

/-! ## A128103.P2885637115402992208

`∏[A028310(n)]-A262745(n)`
-/

namespace A128103.P2885637115402992208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A262745 n

end

end A128103.P2885637115402992208

/-! ## A128103.P15461004319309912268

`A033312(n)+1-A262745(n)`
-/

namespace A128103.P15461004319309912268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n + (1 - A262745 n)

end

end A128103.P15461004319309912268

/-! ## A128103.P7625773632763674886

`A038507(n)-(A262745(n)+1)`
-/

namespace A128103.P7625773632763674886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038507 n - (A262745 n + 1)

end

end A128103.P7625773632763674886

/-! ## A128103.P17146734535844327094

`(A155585(n)+A000142(n))/2`
-/

namespace A128103.P17146734535844327094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155585 n + A000142 n : ℚ) / 2

end

end A128103.P17146734535844327094

/-!
# A128104: a(n) = largest multiple of n which is < exp(n).

The programs for A128104, the canonical program `A128104.P13547310896246531591` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128104 has offset 1).

The definition of A128104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128104.P13547310896246531591

`(n+1)*floor(exp(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128104

/-- `(n+1)*floor(exp(n+1)/(n+1))` -/
def P13547310896246531591.Spec : Prop :=
  ∀ n, P13547310896246531591.a n = A128104 (n + 1)

theorem P13547310896246531591.correct : P13547310896246531591.Spec := by
  intro n
  simp only [A128104, Nat.add_sub_cancel]

end A128104

/-! ## A128104.P12623701682030260130

`floor(exp(n+1))-floor(exp(n+1))%(n+1)`
-/

namespace A128104.P12623701682030260130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n + 1 : ℝ)⌋ - Int.tmod ⌊Real.exp (n + 1 : ℝ)⌋ (n + 1 : ℤ)

end

end A128104.P12623701682030260130

namespace A128104

/-- `floor(exp(n+1))-floor(exp(n+1))%(n+1)` -/
def P12623701682030260130.Spec : Prop :=
  ∀ n, P12623701682030260130.a n = A128104 (n + 1)

end A128104

/-! ## A128104.P677693955266252754

`A128105(n+1)-(n+1)`
-/

namespace A128104.P677693955266252754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128105 (n + 1) - (n + 1 : ℤ)

end

end A128104.P677693955266252754

namespace A128104

/-- `A128105(n+1)-(n+1)` -/
def P677693955266252754.Spec : Prop :=
  ∀ n, P677693955266252754.a n = A128104 (n + 1)

end A128104

/-! ## A128104.P2846272705391784872

`(n+1)*A132407(n+1)-(n+1)`
-/

namespace A128104.P2846272705391784872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A132407 (n + 1) - (n + 1 : ℤ)

end

end A128104.P2846272705391784872

namespace A128104

/-- `(n+1)*A132407(n+1)-(n+1)` -/
def P2846272705391784872.Spec : Prop :=
  ∀ n, P2846272705391784872.a n = A128104 (n + 1)

end A128104

/-! ## A128104.P9000718596983041526

`A090192(2*(n+1))+(n+1)*A107316(n+1)`
-/

namespace A128104.P9000718596983041526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (2 * (n + 1)) + (n + 1 : ℤ) * A107316 (n + 1)

end

end A128104.P9000718596983041526

namespace A128104

/-- `A090192(2*(n+1))+(n+1)*A107316(n+1)` -/
def P9000718596983041526.Spec : Prop :=
  ∀ n, P9000718596983041526.a n = A128104 (n + 1)

end A128104

/-! ## A128104.P4300503921946478581

`A107316(n+1)*A128105(n+1)/A132407(n+1)`
-/

namespace A128104.P4300503921946478581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107316 (n + 1) * A128105 (n + 1) : ℚ) / (A132407 (n + 1) : ℚ)

end

end A128104.P4300503921946478581

namespace A128104

/-- `A107316(n+1)*A128105(n+1)/A132407(n+1)` -/
def P4300503921946478581.Spec : Prop :=
  ∀ n, P4300503921946478581.a n = (A128104 (n + 1) : ℚ)

end A128104

/-!
# A128105: a(n) = smallest multiple of n which is > exp(n).

The programs for A128105, the canonical program `A128105.P4441743167530507556` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128105 has offset 1).

The definition of A128105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128105.P4441743167530507556

`(n+1)*ceil(exp(n+1)/(n+1))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128105

/-- `(n+1)*ceil(exp(n+1)/(n+1))` -/
def P4441743167530507556.Spec : Prop :=
  ∀ n, P4441743167530507556.a n = A128105 (n + 1)

theorem P4441743167530507556.correct : P4441743167530507556.Spec := by
  intro n
  simp only [A128105, Nat.add_sub_cancel]

end A128105

/-! ## A128105.P3190206781177043733

`A128104(n+1)+1+n`
-/

namespace A128105.P3190206781177043733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128104 (n + 1) + 1 + (n : ℤ)

end

end A128105.P3190206781177043733

namespace A128105

/-- `A128104(n+1)+1+n` -/
def P3190206781177043733.Spec : Prop :=
  ∀ n, P3190206781177043733.a n = A128105 (n + 1)

end A128105

/-! ## A128105.P14622224626827867676

`(n+1)*A107316(n+1)+1+n`
-/

namespace A128105.P14622224626827867676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A107316 (n + 1) + 1 + (n : ℤ)

end

end A128105.P14622224626827867676

namespace A128105

/-- `(n+1)*A107316(n+1)+1+n` -/
def P14622224626827867676.Spec : Prop :=
  ∀ n, P14622224626827867676.a n = A128105 (n + 1)

end A128105

/-! ## A128105.P7586879398452297629

`A132407(n+1)/abs(1/A001478(n+1))`
-/

namespace A128105.P7586879398452297629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132407 (n + 1) : ℚ) / |1 / (A001478 (n + 1) : ℚ)|

end

end A128105.P7586879398452297629

namespace A128105

/-- `A132407(n+1)/abs(1/A001478(n+1))` -/
def P7586879398452297629.Spec : Prop :=
  ∀ n, P7586879398452297629.a n = (A128105 (n + 1) : ℚ)

end A128105

/-! ## A128105.P10844903870599358021

`A045650(n+1)-A045650(n+1)%(n+1)`
-/

namespace A128105.P10844903870599358021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045650 (n + 1) - Int.tmod (A045650 (n + 1)) (n + 1 : ℤ)

end

end A128105.P10844903870599358021

namespace A128105

/-- `A045650(n+1)-A045650(n+1)%(n+1)` -/
def P10844903870599358021.Spec : Prop :=
  ∀ n, P10844903870599358021.a n = A128105 (n + 1)

end A128105

/-! ## A128105.P13177101484473029048

`record[A128104(A028920(n))+A028920(n)]`
-/

namespace A128105.P13177101484473029048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128104 (A028920 n).toNat + A028920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128105.P13177101484473029048

namespace A128105

/-- `record[A128104(A028920(n))+A028920(n)]` -/
def P13177101484473029048.Spec : Prop :=
  ∀ n, P13177101484473029048.a n = A128105 (n + 1)

end A128105

/-!
# A128106: Sizes of possible gaps around a Gaussian prime: 1 and the even numbers in A001481.

The programs for A128106, the canonical program `A128106.P7556689747914329909` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128106 has offset 1).

The definition of A128106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128106.P7556689747914329909

`A000007(n)+2*A001481(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128106

/-- `A000007(n)+2*A001481(n+1)` -/
def P7556689747914329909.Spec : Prop :=
  ∀ n, P7556689747914329909.a n = A128106 (n + 1)

theorem P7556689747914329909.correct : P7556689747914329909.Spec := by
  intro n
  simp only [A128106, Nat.add_sub_cancel]

end A128106

/-! ## A128106.P12356907897831474431

`A004277(n)+2*A001481(n+1)-2*n`
-/

namespace A128106.P12356907897831474431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + 2 * A001481 (n + 1) - (2 * n : ℤ)

end

end A128106.P12356907897831474431

namespace A128106

/-- `A004277(n)+2*A001481(n+1)-2*n` -/
def P12356907897831474431.Spec : Prop :=
  ∀ n, P12356907897831474431.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P15422874628681973324

`A001481(n+1)+A001481(A028310(n)+1)`
-/

namespace A128106.P15422874628681973324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + A001481 (A028310 n + 1).toNat

end

end A128106.P15422874628681973324

namespace A128106

/-- `A001481(n+1)+A001481(A028310(n)+1)` -/
def P15422874628681973324.Spec : Prop :=
  ∀ n, P15422874628681973324.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P10712433602402776448

`A001481(gcd(n, A008574(n))+1)+A001481(n+1)`
-/

namespace A128106.P10712433602402776448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (Int.gcd (n : ℤ) (A008574 n) + 1) + A001481 (n + 1)

end

end A128106.P10712433602402776448

namespace A128106

/-- `A001481(gcd(n, A008574(n))+1)+A001481(n+1)` -/
def P10712433602402776448.Spec : Prop :=
  ∀ n, P10712433602402776448.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P5116586559775460802

`A020639(A206348(A020639(a(n-1))+1))*A001481(n+1)` with `a(0)=1`
-/

namespace A128106.P5116586559775460802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (A206348 (A020639 (a (n - 1)).toNat + 1).toNat).toNat * A001481 (n + 1)

end

end A128106.P5116586559775460802

namespace A128106

/-- `A020639(A206348(A020639(a(n-1))+1))*A001481(n+1)` -/
def P5116586559775460802.Spec : Prop :=
  ∀ n, P5116586559775460802.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P17519186847433074080

`A020639(a(n-1)+a(n-1))*A001481(n+1)` with `a(0)=1`
-/

namespace A128106.P17519186847433074080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020639 (a (n - 1) + a (n - 1)).toNat * A001481 (n + 1)

end

end A128106.P17519186847433074080

namespace A128106

/-- `A020639(a(n-1)+a(n-1))*A001481(n+1)` -/
def P17519186847433074080.Spec : Prop :=
  ∀ n, P17519186847433074080.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P18237589282170298524

`A004277(A001481(n+1))`
-/

namespace A128106.P18237589282170298524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001481 (n + 1)).toNat

end

end A128106.P18237589282170298524

namespace A128106

/-- `A004277(A001481(n+1))` -/
def P18237589282170298524.Spec : Prop :=
  ∀ n, P18237589282170298524.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P11224592940591044346

`A004277(eq[0, A070176(n)])`
-/

namespace A128106.P11224592940591044346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128106.P11224592940591044346

namespace A128106

/-- `A004277(eq[0, A070176(n)])` -/
def P11224592940591044346.Spec : Prop :=
  ∀ n, P11224592940591044346.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P9253010965685362006

`A004277(lt[A002828(n), 3])`
-/

namespace A128106.P9253010965685362006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A128106.P9253010965685362006

namespace A128106

/-- `A004277(lt[A002828(n), 3])` -/
def P9253010965685362006.Spec : Prop :=
  ∀ n, P9253010965685362006.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P532334033083553117

`eq[A019425(n), A229062(n)]`
-/

namespace A128106.P532334033083553117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128106.P532334033083553117

namespace A128106

/-- `eq[A019425(n), A229062(n)]` -/
def P532334033083553117.Spec : Prop :=
  ∀ n, (P532334033083553117.a n : ℤ) = A128106 (n + 1)

end A128106

/-! ## A128106.P2629608509675324288

`record[A028310(n)+n*A229062(n)]`
-/

namespace A128106.P2629608509675324288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (n : ℤ) * A229062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128106.P2629608509675324288

namespace A128106

/-- `record[A028310(n)+n*A229062(n)]` -/
def P2629608509675324288.Spec : Prop :=
  ∀ n, P2629608509675324288.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P15925405060154865461

`A004273(A166687(n+1)-1)+1`
-/

namespace A128106.P15925405060154865461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A166687 (n + 1) - 1).toNat + 1

end

end A128106.P15925405060154865461

namespace A128106

/-- `A004273(A166687(n+1)-1)+1` -/
def P15925405060154865461.Spec : Prop :=
  ∀ n, P15925405060154865461.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P15010388999344979485

`A004275(A166687(n+1))`
-/

namespace A128106.P15010388999344979485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A166687 (n + 1)).toNat

end

end A128106.P15010388999344979485

namespace A128106

/-- `A004275(A166687(n+1))` -/
def P15010388999344979485.Spec : Prop :=
  ∀ n, P15010388999344979485.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P10247916261199279691

`filter[A004277(n), A229062(#)]`
-/

namespace A128106.P10247916261199279691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A128106.P10247916261199279691

namespace A128106

/-- `filter[A004277(n), A229062(#)]` -/
def P10247916261199279691.Spec : Prop :=
  ∀ n, P10247916261199279691.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P6470385819342690382

`filter[A004271(n+1), A229062(#)]`
-/

namespace A128106.P6470385819342690382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A128106.P6470385819342690382

namespace A128106

/-- `filter[A004271(n+1), A229062(#)]` -/
def P6470385819342690382.Spec : Prop :=
  ∀ n, P6470385819342690382.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P12975701476001400269

`filter[A004275(n+1), A229062(#)]`
-/

namespace A128106.P12975701476001400269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A128106.P12975701476001400269

namespace A128106

/-- `filter[A004275(n+1), A229062(#)]` -/
def P12975701476001400269.Spec : Prop :=
  ∀ n, P12975701476001400269.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P16922819209525210498

`filter[A004278(n+1), A229062(#)]`
-/

namespace A128106.P16922819209525210498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A128106.P16922819209525210498

namespace A128106

/-- `filter[A004278(n+1), A229062(#)]` -/
def P16922819209525210498.Spec : Prop :=
  ∀ n, P16922819209525210498.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P11122516408169617103

`filter[A185048(2*n+1), A229062(#)]`
-/

namespace A128106.P11122516408169617103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A128106.P11122516408169617103

namespace A128106

/-- `filter[A185048(2*n+1), A229062(#)]` -/
def P11122516408169617103.Spec : Prop :=
  ∀ n, P11122516408169617103.a n = A128106 (n + 1)

end A128106

/-! ## A128106.P7605045402004066730

`∩[A001481(n+1), A004278(n+1)]`
-/

namespace A128106.P7605045402004066730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128106.P7605045402004066730

namespace A128106

/-- `∩[A001481(n+1), A004278(n+1)]` -/
def P7605045402004066730.Spec : Prop :=
  ∀ n, (P7605045402004066730.a n : ℤ) = A128106 (n + 1)

end A128106

/-! ## A128106.P14533963932554916417

`A008574(A001481(n+1))/gcd(2, A008574(n))`
-/

namespace A128106.P14533963932554916417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A001481 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A008574 n) : ℚ)

end

end A128106.P14533963932554916417

namespace A128106

/-- `A008574(A001481(n+1))/gcd(2, A008574(n))` -/
def P14533963932554916417.Spec : Prop :=
  ∀ n, P14533963932554916417.a n = (A128106 (n + 1) : ℚ)

end A128106

/-!
# A128111: Expansion of q^(-1) * (phi(q) / phi(q^9) - 1) / 2 in powers of q^3 where phi() is a Ramanujan theta function.

The programs for A128111, there is no canonical definition to state claims against.
-/

/-! ## A128111.P8652471176058197834

`(-1)^n*A092848(n)`
-/

namespace A128111.P8652471176058197834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A092848 n

end

end A128111.P8652471176058197834

/-! ## A128111.P8152759264471681055

`A092848(n)/A033999(n)`
-/

namespace A128111.P8152759264471681055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092848 n : ℚ) / (A033999 n : ℚ)

end

end A128111.P8152759264471681055

/-! ## A128111.P1914058239484848488

`A092848(n)/A132972(n)*A141094(n)`
-/

namespace A128111.P1914058239484848488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092848 n : ℚ) / (A132972 n : ℚ) * (A141094 n : ℚ)

end

end A128111.P1914058239484848488

/-! ## A128111.P8768288413492683136

`A033999(n)*A062242(2*n+1)`
-/

namespace A128111.P8768288413492683136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A062242 (2 * n + 1)

end

end A128111.P8768288413492683136

/-! ## A128111.P6071175253279133827

`A033999(n+1)*A062244(2*n+1)`
-/

namespace A128111.P6071175253279133827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A062244 (2 * n + 1)

end

end A128111.P6071175253279133827

/-! ## A128111.P8666897785125124799

`(2-A010684(n))*A062242(2*n+1)`
-/

namespace A128111.P8666897785125124799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A062242 (2 * n + 1)

end

end A128111.P8666897785125124799

/-! ## A128111.P6658584233946327645

`(A010684(n)-2)*A062244(2*n+1)`
-/

namespace A128111.P6658584233946327645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010684 n - 2) * A062244 (2 * n + 1)

end

end A128111.P6658584233946327645

/-! ## A128111.P10845631628980289768

`A062242(2*n+1)*A209615(2*n+1)`
-/

namespace A128111.P10845631628980289768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062242 (2 * n + 1) * A209615 (2 * n + 1)

end

end A128111.P10845631628980289768

/-! ## A128111.P8154078567076337497

`A062244(2*n+1)/A132972(n+1)*A141094(n+1)`
-/

namespace A128111.P8154078567076337497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062244 (2 * n + 1) : ℚ) / (A132972 (n + 1) : ℚ) * (A141094 (n + 1) : ℚ)

end

end A128111.P8154078567076337497

/-! ## A128111.P15653057541692973190

`A062242(2*n+1)*A062242(3*n)/A062244(3*n)`
-/

namespace A128111.P15653057541692973190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062242 (2 * n + 1) * A062242 (3 * n) : ℚ) / (A062244 (3 * n) : ℚ)

end

end A128111.P15653057541692973190

/-! ## A128111.P8814396360663122316

`A164615(3*n+1)`
-/

namespace A128111.P8814396360663122316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 (3 * n + 1)

end

end A128111.P8814396360663122316

/-! ## A128111.P12356345493172759857

`A139380(3*n+1)/2`
-/

namespace A128111.P12356345493172759857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139380 (3 * n + 1) : ℚ) / 2

end

end A128111.P12356345493172759857

/-!
# A128113: Number of uniform polyhedra with n edges.

The programs for A128113, there is no canonical definition to state claims against.
-/

/-! ## A128113.P6215148881526842133

`A083632(A000201(n+1))%A002033(n)`
-/

namespace A128113.P6215148881526842133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083632 (A000201 (n + 1)).toNat) (A002033 n)

end

end A128113.P6215148881526842133

/-! ## A128113.P7888412095972619747

`A112269(A112277(n+1))%A011776(n+1)`
-/

namespace A128113.P7888412095972619747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112269 (A112277 (n + 1)).toNat) (A011776 (n + 1))

end

end A128113.P7888412095972619747

/-! ## A128113.P10927245822344429006

`A000236(n+2)%A110655(A337532(n+1))`
-/

namespace A128113.P10927245822344429006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000236 (n + 2)) (A110655 (A337532 (n + 1)).toNat)

end

end A128113.P10927245822344429006

/-! ## A128113.P7340227164333068916

`(A163901(2*(n+2))+n)%A349059(2*n+5)`
-/

namespace A128113.P7340227164333068916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163901 (2 * (n + 2)) + (n : ℤ)) (A349059 (2 * n + 5))

end

end A128113.P7340227164333068916

/-! ## A128113.P11105525029781716863

`A333806(2*n+5)*A333806(A265073(n))`
-/

namespace A128113.P11105525029781716863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (2 * n + 5) * A333806 (A265073 n).toNat

end

end A128113.P11105525029781716863

/-!
# A128114: Number of uniform polyhedra with n vertices.

The programs for A128114, there is no canonical definition to state claims against.
-/

/-! ## A128114.P14463900879432825554

`A128914(gcd(xor(1, n²), ∑[n]))`
-/

namespace A128114.P14463900879432825554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A128114.P14463900879432825554

/-! ## A128114.P5978778130349764738

`A128914(C(ceil(n/2), floor(n/2)))`
-/

namespace A128114.P5978778130349764738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (Nat.choose ⌈(n : ℚ) / 2⌉.toNat ⌊(n : ℚ) / 2⌋.toNat)

end

end A128114.P5978778130349764738

/-! ## A128114.P4652190457297827493

`A128914(gcd(floor((n/2)²), ∑[n-1]))`
-/

namespace A128114.P4652190457297827493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (Int.gcd ⌊((n : ℚ) / 2) ^ 2⌋ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A128114.P4652190457297827493

/-! ## A128114.P9600574929919729829

`A128914(gcd(1-n, floor(n/2))+n%2)`
-/

namespace A128114.P9600574929919729829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ + n % 2)

end

end A128114.P9600574929919729829

/-! ## A128114.P7525754826808089812

`A128914(lcm(2, xor(n, -2))/2-floor(n/2))`
-/

namespace A128114.P7525754826808089812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (SequenceMachineLib.roundAway ((Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2 - (⌊(n : ℚ) / 2⌋ : ℚ))).toNat

end

end A128114.P7525754826808089812

/-! ## A128114.P6416332905183638482

`A128914(A152271(n))`
-/

namespace A128114.P6416332905183638482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (A152271 n).toNat

end

end A128114.P6416332905183638482

/-! ## A128114.P913126152879614875

`A128914(A108756(∑[n]))`
-/

namespace A128114.P913126152879614875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (A108756 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A128114.P913126152879614875

/-! ## A128114.P6476555775023498902

`A128914(A057979(n+2))`
-/

namespace A128114.P6476555775023498902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (A057979 (n + 2)).toNat

end

end A128114.P6476555775023498902

/-! ## A128114.P2261073117316322433

`A128914(A133265(n)/2)`
-/

namespace A128114.P2261073117316322433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A128114.P2261073117316322433

/-! ## A128114.P345979884629630000

`A128914(A008619(n*and(1, n)))`
-/

namespace A128114.P345979884629630000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128914 (A008619 (n * Nat.land 1 n)).toNat

end

end A128114.P345979884629630000

/-!
# A128115: Mobius inversion of A103221.

The programs for A128115, there is no canonical definition to state claims against.
-/

/-! ## A128115.P17216771405836959966

`Δ[A340276(n+1)]`
-/

namespace A128115.P17216771405836959966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128115.P17216771405836959966

/-! ## A128115.P12584426604909360891

`Δ[A340275(C(2, n)%2+n)]`
-/

namespace A128115.P12584426604909360891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (Nat.choose 2 n % 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128115.P12584426604909360891

/-! ## A128115.P2062508118961004728

`Δ[A340275(round(2/(n+1))+n)]`
-/

namespace A128115.P2062508118961004728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340275 (SequenceMachineLib.roundAway (2 / (n + 1 : ℚ)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128115.P2062508118961004728

/-! ## A128115.P5304826411983892403

`A340276(n+2)-A340276(n+1)`
-/

namespace A128115.P5304826411983892403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340276 (n + 2) - A340276 (n + 1)

end

end A128115.P5304826411983892403

/-! ## A128115.P9345184157549757323

`∑{d}[n+1, A008683(#)*A008615((n+1)/#)]`
-/

namespace A128115.P9345184157549757323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A008615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A128115.P9345184157549757323

/-!
# A128116: A128064 * A122432 (unsigned).

The programs for A128116, the canonical program `A128116.P12706371843886189910` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128116 has offset 1).

The definition of A128116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128116.P12706371843886189910

`A096037(n+1)-A101447(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A128116

/-- `A096037(n+1)-A101447(n)` -/
def P12706371843886189910.Spec : Prop :=
  ∀ n, P12706371843886189910.a n = A128116 (n + 1)

theorem P12706371843886189910.correct : P12706371843886189910.Spec := by
  intro n
  simp only [A128116, Nat.add_sub_cancel]

end A128116

/-! ## A128116.P303606481474194252

`A131783(n+1)+A025581(n)²`
-/

namespace A128116.P303606481474194252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) + A025581 n ^ 2

end

end A128116.P303606481474194252

namespace A128116

/-- `A131783(n+1)+A025581(n)²` -/
def P303606481474194252.Spec : Prop :=
  ∀ n, P303606481474194252.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P1259345088166448728

`A095832(n+1)+A049777(n+1)`
-/

namespace A128116.P1259345088166448728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + A049777 (n + 1)

end

end A128116.P1259345088166448728

namespace A128116

/-- `A095832(n+1)+A049777(n+1)` -/
def P1259345088166448728.Spec : Prop :=
  ∀ n, P1259345088166448728.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P8383728177215118995

`A131783(n+1)+A095831(n+1)`
-/

namespace A128116.P8383728177215118995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) + A095831 (n + 1)

end

end A128116.P8383728177215118995

namespace A128116

/-- `A131783(n+1)+A095831(n+1)` -/
def P8383728177215118995.Spec : Prop :=
  ∀ n, P8383728177215118995.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P9280516124228443443

`A059036(n)+A005448(A004736(n+1))`
-/

namespace A128116.P9280516124228443443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A005448 (A004736 (n + 1)).toNat

end

end A128116.P9280516124228443443

namespace A128116

/-- `A059036(n)+A005448(A004736(n+1))` -/
def P9280516124228443443.Spec : Prop :=
  ∀ n, P9280516124228443443.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P7828751911842657363

`A049777(n+1)+A025581(n)+A025581(n)²`
-/

namespace A128116.P7828751911842657363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A025581 n + A025581 n ^ 2)

end

end A128116.P7828751911842657363

namespace A128116

/-- `A049777(n+1)+A025581(n)+A025581(n)²` -/
def P7828751911842657363.Spec : Prop :=
  ∀ n, P7828751911842657363.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P17378087357545654740

`A049777(n+1)+A094728(n+1)-A101447(n)`
-/

namespace A128116.P17378087357545654740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + (A094728 (n + 1) - A101447 n)

end

end A128116.P17378087357545654740

namespace A128116

/-- `A049777(n+1)+A094728(n+1)-A101447(n)` -/
def P17378087357545654740.Spec : Prop :=
  ∀ n, P17378087357545654740.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P1067788892296652180

`A004736(n+1)²+A049777(n+1)-A004736(n+1)`
-/

namespace A128116.P1067788892296652180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 + (A049777 (n + 1) - A004736 (n + 1))

end

end A128116.P1067788892296652180

namespace A128116

/-- `A004736(n+1)²+A049777(n+1)-A004736(n+1)` -/
def P1067788892296652180.Spec : Prop :=
  ∀ n, P1067788892296652180.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P6583326459930698557

`A049777(n+1)+A055461(n+1)-sqrt(A055461(n+1))`
-/

namespace A128116.P6583326459930698557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A049777 (n + 1) : ℝ) + ((A055461 (n + 1) : ℝ) - Real.sqrt (A055461 (n + 1) : ℝ))

end

end A128116.P6583326459930698557

namespace A128116

/-- `A049777(n+1)+A055461(n+1)-sqrt(A055461(n+1))` -/
def P6583326459930698557.Spec : Prop :=
  ∀ n, P6583326459930698557.a n = (A128116 (n + 1) : ℝ)

end A128116

/-! ## A128116.P1248945899733374741

`A000217(A004736(n+1))+A003056(n)*A004736(n+1)`
-/

namespace A128116.P1248945899733374741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1)).toNat + A003056 n * A004736 (n + 1)

end

end A128116.P1248945899733374741

namespace A128116

/-- `A000217(A004736(n+1))+A003056(n)*A004736(n+1)` -/
def P1248945899733374741.Spec : Prop :=
  ∀ n, P1248945899733374741.a n = A128116 (n + 1)

end A128116

/-! ## A128116.P16218589669633264124

`A161680(A004736(n+1))+A002024(n+1)*A004736(n+1)`
-/

namespace A128116.P16218589669633264124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004736 (n + 1)).toNat + A002024 (n + 1) * A004736 (n + 1)

end

end A128116.P16218589669633264124

namespace A128116

/-- `A161680(A004736(n+1))+A002024(n+1)*A004736(n+1)` -/
def P16218589669633264124.Spec : Prop :=
  ∀ n, P16218589669633264124.a n = A128116 (n + 1)

end A128116

/-!
# A128117: At the n-th iteration the sequence of integers from 1 to n are appended to the sequence a(n) times.

The programs for A128117, there is no canonical definition to state claims against.
-/

/-! ## A128117.P14458426279256358784

`A002260(lt[A096751(n), A034328(n)])`
-/

namespace A128117.P14458426279256358784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096751 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128117.P14458426279256358784

/-! ## A128117.P11761036284088438254

`A002262(lt[A365623(n), A086645(n)])`
-/

namespace A128117.P11761036284088438254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365623 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128117.P11761036284088438254

/-! ## A128117.P9663343870245918246

`ceil(A171172(3*n+5)/3)`
-/

namespace A128117.P9663343870245918246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171172 (3 * n + 5) : ℚ) / 3⌉

end

end A128117.P9663343870245918246

/-! ## A128117.P17994354884795695140

`A110534(A171172(3*n+5)-1)`
-/

namespace A128117.P17994354884795695140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110534 (A171172 (3 * n + 5) - 1).toNat

end

end A128117.P17994354884795695140

/-! ## A128117.P9128449693413148914

`A002262(lt[A143632(n), A124550(n)])`
-/

namespace A128117.P9128449693413148914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128117.P9128449693413148914

/-!
# A128118: At the n-th iteration the sequence of integers from n down to 1 are appended to the sequence a(n) times.

The programs for A128118, there is no canonical definition to state claims against.
-/

/-! ## A128118.P15767175150759489152

`A186189(p?[A271355(n+1)])`
-/

namespace A128118.P15767175150759489152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186189 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128118.P15767175150759489152

/-! ## A128118.P1903987697832361602

`A186189(p?[A169985(A004736(n+1))])`
-/

namespace A128118.P1903987697832361602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186189 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128118.P1903987697832361602

/-! ## A128118.P4366250289129773425

`A000523(A244644(p?[A271355(n+1)]))`
-/

namespace A128118.P4366250289129773425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A244644 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A128118.P4366250289129773425

/-! ## A128118.P5140302392188716314

`A000523(A283002(p?[A271355(n+1)]))`
-/

namespace A128118.P5140302392188716314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A283002 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A128118.P5140302392188716314

/-! ## A128118.P5849722419880503531

`A000720(p?[A046051(A130321(n))])`
-/

namespace A128118.P5849722419880503531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128118.P5849722419880503531

/-!
# A128119: Square array T(n,m) read by antidiagonals: number of sublattices of index m in generic n-dimensional lattice.

The programs for A128119, there is no canonical definition to state claims against.
-/

/-! ## A128119.P6483698878398133307

`A160870(A038722(n+1))`
-/

namespace A128119.P6483698878398133307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A038722 (n + 1)).toNat

end

end A128119.P6483698878398133307

/-! ## A128119.P6050218293962512879

`A160870(A061579(n)+1)`
-/

namespace A128119.P6050218293962512879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A061579 n + 1).toNat

end

end A128119.P6050218293962512879

/-! ## A128119.P9564269461778410595

`A160870(∑[A198954(n)]-n)`
-/

namespace A128119.P9564269461778410595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A128119.P9564269461778410595

/-! ## A128119.P11968802335796111758

`A160870(A114327(n)+1+n)`
-/

namespace A128119.P11968802335796111758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A114327 n + 1 + (n : ℤ)).toNat

end

end A128119.P11968802335796111758

/-! ## A128119.P5411534145932283073

`A160870(A002024(n+1)²-n)`
-/

namespace A128119.P5411534145932283073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160870 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A128119.P5411534145932283073

/-!
# A128123: Numbers k such that 2^k == 10 (mod k).

The programs for A128123, there is no canonical definition to state claims against.
-/

/-! ## A128123.P12835070644170751983

`A337850(n)+A236393(A164651(n))`
-/

namespace A128123.P12835070644170751983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337850 n + A236393 (A164651 n).toNat

end

end A128123.P12835070644170751983

/-!
# A128124: Numbers k such that 2^k == 12 (mod k).

The programs for A128124, there is no canonical definition to state claims against.
-/

/-! ## A128124.P14887005939928326924

`A038552(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A128124.P14887005939928326924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5] fun n a =>
  A038552 (2 * a (n - 1) - a (n - 2)).toNat

end

end A128124.P14887005939928326924

/-!
# A128125: Numbers k such that 2^k == 14 (mod k).

The programs for A128125, there is no canonical definition to state claims against.
-/

/-! ## A128125.P13219236554538359625

`∏{p}[lcm(10, (a(n-1)+1)²), #]` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A128125.P13219236554538359625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 9] fun n f1 =>
  Nat.lcm 10 ((f1 (n - 1) + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A128125.P13219236554538359625

/-!
# A128128: Expansion of chi(-q^3) / chi^3(-q) in powers of q where chi() is a Ramanujan theta function.

The programs for A128128, there is no canonical definition to state claims against.
-/

/-! ## A128128.P2743382871323643511

`abs(A294387(n))`
-/

namespace A128128.P2743382871323643511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A294387 n|

end

end A128128.P2743382871323643511

/-! ## A128128.P11429210533059655004

`A033999(n)*A294387(n)`
-/

namespace A128128.P11429210533059655004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A294387 n

end

end A128128.P11429210533059655004

/-! ## A128128.P812897352423174313

`gcd(A000038(n), A294387(n))`
-/

namespace A128128.P812897352423174313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A294387 n)

end

end A128128.P812897352423174313

/-! ## A128128.P4050695554833118005

`lcm(A010684(n), A294387(n))`
-/

namespace A128128.P4050695554833118005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A294387 n)

end

end A128128.P4050695554833118005

/-! ## A128128.P13968411067948475598

`A132972(n)/A141094(n)*A294387(n)`
-/

namespace A128128.P13968411067948475598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (A141094 n : ℚ) * (A294387 n : ℚ)

end

end A128128.P13968411067948475598

/-! ## A128128.P2688645487804674812

`record[A141094(n)]`
-/

namespace A128128.P2688645487804674812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128128.P2688645487804674812

/-! ## A128128.P12732637541144261354

`A141094(2*n)`
-/

namespace A128128.P12732637541144261354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141094 (2 * n)

end

end A128128.P12732637541144261354

/-! ## A128128.P1443324581754315827

`record[A132180(n)]`
-/

namespace A128128.P1443324581754315827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128128.P1443324581754315827

/-! ## A128128.P5210605067883859230

`A132180(2*n)`
-/

namespace A128128.P5210605067883859230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132180 (2 * n)

end

end A128128.P5210605067883859230

/-! ## A128128.P14628875413759332054

`A132972(2*n)`
-/

namespace A128128.P14628875413759332054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132972 (2 * n)

end

end A128128.P14628875413759332054

/-! ## A128128.P3648563981532912962

`A122553(n)*A145977(2*n)`
-/

namespace A128128.P3648563981532912962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A145977 (2 * n)

end

end A128128.P3648563981532912962

/-! ## A128128.P3602156895250064306

`A122553(n)*A213267(2*n)`
-/

namespace A128128.P3602156895250064306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A213267 (2 * n)

end

end A128128.P3602156895250064306

/-!
# A128129: Expansion of (chi(-q^3)/ chi^3(-q) -1)/3 in powers of q where chi() is a Ramanujan theta function.

The programs for A128129, there is no canonical definition to state claims against.
-/

/-! ## A128129.P8682299251069977410

`A128770(n+1)/2`
-/

namespace A128129.P8682299251069977410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 (n + 1) : ℚ) / 2

end

end A128129.P8682299251069977410

/-! ## A128129.P10477171473509966102

`A128128(n+1)/3`
-/

namespace A128129.P10477171473509966102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128128 (n + 1) : ℚ) / 3

end

end A128129.P10477171473509966102

/-! ## A128129.P6340148838880654504

`A128128(n+1)-A128770(n+1)`
-/

namespace A128129.P6340148838880654504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128128 (n + 1) - A128770 (n + 1)

end

end A128129.P6340148838880654504

/-! ## A128129.P14598931797991666154

`abs(A261988(n+1)/2)`
-/

namespace A128129.P14598931797991666154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A261988 (n + 1) : ℚ) / 2|

end

end A128129.P14598931797991666154

/-! ## A128129.P1497334992821098973

`A033999(n+1)/2*A261988(n+1)`
-/

namespace A128129.P1497334992821098973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A261988 (n + 1) : ℚ)

end

end A128129.P1497334992821098973

/-! ## A128129.P12027007701651955897

`gcd(A000038(n+1), A261988(n+1))/2`
-/

namespace A128129.P12027007701651955897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A261988 (n + 1)) : ℚ) / 2

end

end A128129.P12027007701651955897

/-! ## A128129.P18281190290058179251

`lcm(A000034(n+1), A261988(n+1))/2`
-/

namespace A128129.P18281190290058179251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A261988 (n + 1)) : ℚ) / 2

end

end A128129.P18281190290058179251

/-! ## A128129.P7287218245930021875

`lcm(A010684(n+1), A294387(n+1))/3`
-/

namespace A128129.P7287218245930021875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010684 (n + 1)) (A294387 (n + 1)) : ℚ) / 3

end

end A128129.P7287218245930021875

/-! ## A128129.P3049779238366945941

`A132975(n+1)/A141094(n+1)*A294387(n+1)`
-/

namespace A128129.P3049779238366945941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132975 (n + 1) : ℚ) / (A141094 (n + 1) : ℚ) * (A294387 (n + 1) : ℚ)

end

end A128129.P3049779238366945941

/-! ## A128129.P6527019244204627289

`A132975(2*(n+1))`
-/

namespace A128129.P6527019244204627289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (2 * (n + 1))

end

end A128129.P6527019244204627289

/-! ## A128129.P12050979137276177582

`record[-A124243(n+2)]`
-/

namespace A128129.P12050979137276177582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124243 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128129.P12050979137276177582

/-! ## A128129.P397433001043025245

`record[ceil(A141094(n)/3)]`
-/

namespace A128129.P397433001043025245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141094 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128129.P397433001043025245

/-! ## A128129.P11219999429504282750

`abs(A124243(2*(n+1)))`
-/

namespace A128129.P11219999429504282750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124243 (2 * (n + 1))|

end

end A128129.P11219999429504282750

/-! ## A128129.P7521304410958242799

`A141094(2*(n+1))/3`
-/

namespace A128129.P7521304410958242799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141094 (2 * (n + 1)) : ℚ) / 3

end

end A128129.P7521304410958242799

/-! ## A128129.P3563457534309374672

`gcd(A000038(n), A124243(2*(n+1)))`
-/

namespace A128129.P3563457534309374672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124243 (2 * (n + 1)))

end

end A128129.P3563457534309374672

/-! ## A128129.P11883410137272827636

`lcm(A020985(n), A124243(2*(n+1)))`
-/

namespace A128129.P11883410137272827636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A124243 (2 * (n + 1)))

end

end A128129.P11883410137272827636

/-! ## A128129.P10057982011272143116

`A000038(n+1)-A124243(2*n+2)`
-/

namespace A128129.P10057982011272143116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A124243 (2 * n + 2)

end

end A128129.P10057982011272143116

/-! ## A128129.P7339929266578125410

`1-(A124243(2*n+2)+A033999(2*n))`
-/

namespace A128129.P7339929266578125410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A124243 (2 * n + 2) + A033999 (2 * n))

end

end A128129.P7339929266578125410

/-! ## A128129.P2710697565814937006

`A033999(2*n+1)*A124243(2*(n+1))`
-/

namespace A128129.P2710697565814937006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A124243 (2 * (n + 1))

end

end A128129.P2710697565814937006

/-! ## A128129.P9899150703290106983

`record[A145977(n)]`
-/

namespace A128129.P9899150703290106983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128129.P9899150703290106983

/-!
# A128130: Expansion of (1-x)/(1+x^4); period 8: repeat [1,-1,0,0,-1,1,0,0].

The programs for A128130, the canonical program `A128130.P16605073706142620501` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128130 has offset 0).

The definition of A128130 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1+x^4))` (program `A128130.P16605073706142620501`, by `A128130.P16605073706142620501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128130.P16605073706142620501

`ogf((1-x)/(1+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128130

/-- `ogf((1-x)/(1+x^4))` -/
def P16605073706142620501.Spec : Prop :=
  ∀ n, P16605073706142620501.a n = A128130 n

theorem P16605073706142620501.correct : P16605073706142620501.Spec := by
  intro n
  simp only [A128130]

end A128130

/-!
# A128131: a(n) = 2^A000096(n)*A128130(n).

The programs for A128131, the canonical program `A128131.P8193772252132655658` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128131 has offset 0).

The definition of A128131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128131.P8193772252132655658

`2^(n*(n+3)/2)*A128130(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128131

/-- `2^(n*(n+3)/2)*A128130(n)` -/
def P8193772252132655658.Spec : Prop :=
  ∀ n, P8193772252132655658.a n = (A128131 n : ℝ)

end A128131

/-! ## A128131.P3836994298462257012

`2^A000096(n)*A128130(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128131.P3836994298462257012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000096 n : ℤ) * (A128130 n : ℚ)

end

end A128131.P3836994298462257012

namespace A128131

/-- `2^A000096(n)*A128130(n)` -/
def P3836994298462257012.Spec : Prop :=
  ∀ n, P3836994298462257012.a n = (A128131 n : ℚ)

end A128131

/-! ## A128131.P9626899978959479502

`A009116(n*(n+3))`
-/

namespace A128131.P9626899978959479502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n * (n + 3))

end

end A128131.P9626899978959479502

namespace A128131

/-- `A009116(n*(n+3))` -/
def P9626899978959479502.Spec : Prop :=
  ∀ n, P9626899978959479502.a n = A128131 n

end A128131

/-! ## A128131.P14044873352473752861

`A146559(n*(n+3))`
-/

namespace A128131.P14044873352473752861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 (n * (n + 3))

end

end A128131.P14044873352473752861

namespace A128131

/-- `A146559(n*(n+3))` -/
def P14044873352473752861.Spec : Prop :=
  ∀ n, P14044873352473752861.a n = A128131 n

end A128131

/-! ## A128131.P11626929763339817068

`A363524((n+1)²+n)`
-/

namespace A128131.P11626929763339817068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363524 ((n + 1) ^ 2 + n)

end

end A128131.P11626929763339817068

namespace A128131

/-- `A363524((n+1)²+n)` -/
def P11626929763339817068.Spec : Prop :=
  ∀ n, P11626929763339817068.a n = A128131 n

end A128131

/-!
# A128132: A natural number transform, companion to A127701.

The programs for A128132, the canonical program `A128132.P7267817112159039402` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128132 has offset 1).

The definition of A128132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128132.P14047303803158358635

`Δ[C(round(sqrt(2*(n+1))), 2)]-char[∑[n]-2]`
-/

namespace A128132.P14047303803158358635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A128132.P14047303803158358635

namespace A128132

/-- `Δ[C(round(sqrt(2*(n+1))), 2)]-char[∑[n]-2]` -/
def P14047303803158358635.Spec : Prop :=
  ∀ n, P14047303803158358635.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P14141151523498599643

`A127648(n)-char[∑[n+2]-1]`
-/

namespace A128132.P14141151523498599643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A128132.P14141151523498599643

namespace A128132

/-- `A127648(n)-char[∑[n+2]-1]` -/
def P14141151523498599643.Spec : Prop :=
  ∀ n, P14141151523498599643.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P1489866898846445799

`or(-char[∑[n]-2], A127701(n+1))`
-/

namespace A128132.P1489866898846445799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) (A127701 (n + 1))

end

end A128132.P1489866898846445799

namespace A128132

/-- `or(-char[∑[n]-2], A127701(n+1))` -/
def P1489866898846445799.Spec : Prop :=
  ∀ n, P1489866898846445799.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P11419826483686046162

`Δ[A061885(n)]-1-char[∑[n]-2]`
-/

namespace A128132.P11419826483686046162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A128132.P11419826483686046162

namespace A128132

/-- `Δ[A061885(n)]-1-char[∑[n]-2]` -/
def P11419826483686046162.Spec : Prop :=
  ∀ n, P11419826483686046162.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P7267817112159039402

`A051340(n)*A167374(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128132

/-- `A051340(n)*A167374(n)` -/
def P7267817112159039402.Spec : Prop :=
  ∀ n, P7267817112159039402.a n = A128132 (n + 1)

theorem P7267817112159039402.correct : P7267817112159039402.Spec := by
  intro n
  simp only [A128132, Nat.add_sub_cancel]

end A128132

/-! ## A128132.P944481839389393020

`A130266(n)*A167374(n)`
-/

namespace A128132.P944481839389393020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130266 n * A167374 n

end

end A128132.P944481839389393020

namespace A128132

/-- `A130266(n)*A167374(n)` -/
def P944481839389393020.Spec : Prop :=
  ∀ n, P944481839389393020.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P17083400593337441492

`A218234(n)+A128064(n+1)`
-/

namespace A128132.P17083400593337441492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218234 n + A128064 (n + 1)

end

end A128132.P17083400593337441492

namespace A128132

/-- `A218234(n)+A128064(n+1)` -/
def P17083400593337441492.Spec : Prop :=
  ∀ n, P17083400593337441492.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P7652347944205207962

`A050873(n+1)*A167374(n)`
-/

namespace A128132.P7652347944205207962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A167374 n

end

end A128132.P7652347944205207962

namespace A128132

/-- `A050873(n+1)*A167374(n)` -/
def P7652347944205207962.Spec : Prop :=
  ∀ n, P7652347944205207962.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P15196415096236959405

`A097807(n)*A127701(n+1)`
-/

namespace A128132.P15196415096236959405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A127701 (n + 1)

end

end A128132.P15196415096236959405

namespace A128132

/-- `A097807(n)*A127701(n+1)` -/
def P15196415096236959405.Spec : Prop :=
  ∀ n, P15196415096236959405.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P2725083983880250464

`A097806(n)*A128180(n+1)`
-/

namespace A128132.P2725083983880250464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A128180 (n + 1)

end

end A128132.P2725083983880250464

namespace A128132

/-- `A097806(n)*A128180(n+1)` -/
def P2725083983880250464.Spec : Prop :=
  ∀ n, P2725083983880250464.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P5535757038921626899

`A106180(n)*A127701(n+1)`
-/

namespace A128132.P5535757038921626899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106180 n * A127701 (n + 1)

end

end A128132.P5535757038921626899

namespace A128132

/-- `A106180(n)*A127701(n+1)` -/
def P5535757038921626899.Spec : Prop :=
  ∀ n, P5535757038921626899.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P13360843716922603516

`A106270(n)*A127701(n+1)`
-/

namespace A128132.P13360843716922603516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106270 n * A127701 (n + 1)

end

end A128132.P13360843716922603516

namespace A128132

/-- `A106270(n)*A127701(n+1)` -/
def P13360843716922603516.Spec : Prop :=
  ∀ n, P13360843716922603516.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P13050854251722339537

`A110515(n)*A127701(n+1)`
-/

namespace A128132.P13050854251722339537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110515 n * A127701 (n + 1)

end

end A128132.P13050854251722339537

namespace A128132

/-- `A110515(n)*A127701(n+1)` -/
def P13050854251722339537.Spec : Prop :=
  ∀ n, P13050854251722339537.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P7407672133483578525

`A117185(n)*A127701(n+1)`
-/

namespace A128132.P7407672133483578525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117185 n * A127701 (n + 1)

end

end A128132.P7407672133483578525

namespace A128132

/-- `A117185(n)*A127701(n+1)` -/
def P7407672133483578525.Spec : Prop :=
  ∀ n, P7407672133483578525.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P12446819737451444906

`A124341(n)*A127701(n+1)`
-/

namespace A128132.P12446819737451444906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124341 n * A127701 (n + 1)

end

end A128132.P12446819737451444906

namespace A128132

/-- `A124341(n)*A127701(n+1)` -/
def P12446819737451444906.Spec : Prop :=
  ∀ n, P12446819737451444906.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P3149491505546978197

`A127543(n)*A127701(n+1)`
-/

namespace A128132.P3149491505546978197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127543 n * A127701 (n + 1)

end

end A128132.P3149491505546978197

namespace A128132

/-- `A127543(n)*A127701(n+1)` -/
def P3149491505546978197.Spec : Prop :=
  ∀ n, P3149491505546978197.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P17231961039585242079

`A128064(n+1)/A007318(n)`
-/

namespace A128132.P17231961039585242079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128064 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A128132.P17231961039585242079

namespace A128132

/-- `A128064(n+1)/A007318(n)` -/
def P17231961039585242079.Spec : Prop :=
  ∀ n, P17231961039585242079.a n = (A128132 (n + 1) : ℚ)

end A128132

/-! ## A128132.P3611168979588998802

`A007318(n+2)*A167374(n)`
-/

namespace A128132.P3611168979588998802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 2) * A167374 n

end

end A128132.P3611168979588998802

namespace A128132

/-- `A007318(n+2)*A167374(n)` -/
def P3611168979588998802.Spec : Prop :=
  ∀ n, P3611168979588998802.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P15963657918912897336

`A077028(n+2)*A167374(n)`
-/

namespace A128132.P15963657918912897336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (n + 2) * A167374 n

end

end A128132.P15963657918912897336

namespace A128132

/-- `A077028(n+2)*A167374(n)` -/
def P15963657918912897336.Spec : Prop :=
  ∀ n, P15963657918912897336.a n = A128132 (n + 1)

end A128132

/-! ## A128132.P17854115896268025032

`A167374(n)*A208101(n+2)`
-/

namespace A128132.P17854115896268025032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A208101 (n + 2)

end

end A128132.P17854115896268025032

namespace A128132

/-- `A167374(n)*A208101(n+2)` -/
def P17854115896268025032.Spec : Prop :=
  ∀ n, P17854115896268025032.a n = A128132 (n + 1)

end A128132

/-!
# A128133: Binomial transform of A128132.

The programs for A128133, the canonical program `A128133.P8730551136205866684` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128133 has offset 1).

The definition of A128133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128133.P8730551136205866684

`A128710(n)-A135278(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128133

/-- `A128710(n)-A135278(n)` -/
def P8730551136205866684.Spec : Prop :=
  ∀ n, P8730551136205866684.a n = A128133 (n + 1)

theorem P8730551136205866684.correct : P8730551136205866684.Spec := by
  intro n
  simp only [A128133, Nat.add_sub_cancel]

end A128133

/-! ## A128133.P13393966878292323281

`A128710(n)-A074909(n+1)`
-/

namespace A128133.P13393966878292323281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A074909 (n + 1)

end

end A128133.P13393966878292323281

namespace A128133

/-- `A128710(n)-A074909(n+1)` -/
def P13393966878292323281.Spec : Prop :=
  ∀ n, P13393966878292323281.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P8770432830600158512

`A128710(n)-A007318(comp[∑[n]])`
-/

namespace A128133.P8770432830600158512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128133.P8770432830600158512

namespace A128133

/-- `A128710(n)-A007318(comp[∑[n]])` -/
def P8770432830600158512.Spec : Prop :=
  ∀ n, P8770432830600158512.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P17213666760757950504

`A103406(n)-A206735(n+1)`
-/

namespace A128133.P17213666760757950504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n - A206735 (n + 1)

end

end A128133.P17213666760757950504

namespace A128133

/-- `A103406(n)-A206735(n+1)` -/
def P17213666760757950504.Spec : Prop :=
  ∀ n, P17213666760757950504.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P10646128893551421816

`A103406(n)-A071919(A014132(n+1))`
-/

namespace A128133.P10646128893551421816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n - A071919 (A014132 (n + 1)).toNat

end

end A128133.P10646128893551421816

namespace A128133

/-- `A103406(n)-A071919(A014132(n+1))` -/
def P10646128893551421816.Spec : Prop :=
  ∀ n, P10646128893551421816.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P15873154019869363913

`A145033(n)-A214292(n)`
-/

namespace A128133.P15873154019869363913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145033 n - A214292 n

end

end A128133.P15873154019869363913

namespace A128133

/-- `A145033(n)-A214292(n)` -/
def P15873154019869363913.Spec : Prop :=
  ∀ n, P15873154019869363913.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P13591684840804281219

`A145033(n)-Δ[A074909(n)]`
-/

namespace A128133.P13591684840804281219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145033 n - (f1 (n + 1) - f1 n)

end

end A128133.P13591684840804281219

namespace A128133

/-- `A145033(n)-Δ[A074909(n)]` -/
def P13591684840804281219.Spec : Prop :=
  ∀ n, P13591684840804281219.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P11732319956686076881

`A264751(n+1)-A216973(n)`
-/

namespace A128133.P11732319956686076881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264751 (n + 1) - A216973 n

end

end A128133.P11732319956686076881

namespace A128133

/-- `A264751(n+1)-A216973(n)` -/
def P11732319956686076881.Spec : Prop :=
  ∀ n, P11732319956686076881.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P5268475825402449560

`A216973(n)+A127951(n+1)`
-/

namespace A128133.P5268475825402449560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A127951 (n + 1)

end

end A128133.P5268475825402449560

namespace A128133

/-- `A216973(n)+A127951(n+1)` -/
def P5268475825402449560.Spec : Prop :=
  ∀ n, P5268475825402449560.a n = A128133 (n + 1)

end A128133

/-! ## A128133.P6705751782180924340

`A127951(n+1)-∑[A141692(n)]`
-/

namespace A128133.P6705751782180924340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127951 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128133.P6705751782180924340

namespace A128133

/-- `A127951(n+1)-∑[A141692(n)]` -/
def P6705751782180924340.Spec : Prop :=
  ∀ n, P6705751782180924340.a n = A128133 (n + 1)

end A128133

/-!
# A128134: A128132 * A007318.

The programs for A128134, the canonical program `A128134.P5581643378467905340` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128134 has offset 1).

The definition of A128134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128134.P4580365680726045592

`A216973(n)+A127952(n)`
-/

namespace A128134.P4580365680726045592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A127952 n

end

end A128134.P4580365680726045592

namespace A128134

/-- `A216973(n)+A127952(n)` -/
def P4580365680726045592.Spec : Prop :=
  ∀ n, P4580365680726045592.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P6491359048586273635

`ceil((A132775(n)+A008482(n))/2)`
-/

namespace A128134.P6491359048586273635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132775 n + A008482 n : ℚ) / 2⌉

end

end A128134.P6491359048586273635

namespace A128134

/-- `ceil((A132775(n)+A008482(n))/2)` -/
def P6491359048586273635.Spec : Prop :=
  ∀ n, P6491359048586273635.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P13629425012935293755

`A003506(n+1)+∑[A008482(n)]`
-/

namespace A128134.P13629425012935293755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128134.P13629425012935293755

namespace A128134

/-- `A003506(n+1)+∑[A008482(n)]` -/
def P13629425012935293755.Spec : Prop :=
  ∀ n, P13629425012935293755.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P3463718874472447100

`A003506(n+1)-∑[A037012(n)]`
-/

namespace A128134.P3463718874472447100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128134.P3463718874472447100

namespace A128134

/-- `A003506(n+1)-∑[A037012(n)]` -/
def P3463718874472447100.Spec : Prop :=
  ∀ n, P3463718874472447100.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P5581643378467905340

`A003506(n+1)-A097805(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A128134

/-- `A003506(n+1)-A097805(n+1)` -/
def P5581643378467905340.Spec : Prop :=
  ∀ n, P5581643378467905340.a n = A128134 (n + 1)

theorem P5581643378467905340.correct : P5581643378467905340.Spec := by
  intro n
  simp only [A128134, Nat.add_sub_cancel]

end A128134

/-! ## A128134.P8589314245677747360

`(comp[∑[n]]-n)*A007318(n)-A029653(n)`
-/

namespace A128134.P8589314245677747360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A007318 n - A029653 n

end

end A128134.P8589314245677747360

namespace A128134

/-- `(comp[∑[n]]-n)*A007318(n)-A029653(n)` -/
def P8589314245677747360.Spec : Prop :=
  ∀ n, P8589314245677747360.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P12170079673782518368

`A003506(n+1)-Δ[A308663(n)]`
-/

namespace A128134.P12170079673782518368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) - (f1 (n + 1) - f1 n)

end

end A128134.P12170079673782518368

namespace A128134

/-- `A003506(n+1)-Δ[A308663(n)]` -/
def P12170079673782518368.Spec : Prop :=
  ∀ n, P12170079673782518368.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P18190101954026162500

`A127952(n+1)+A127952(n)-A097805(n+1)`
-/

namespace A128134.P18190101954026162500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 (n + 1) + (A127952 n - A097805 (n + 1))

end

end A128134.P18190101954026162500

namespace A128134

/-- `A127952(n+1)+A127952(n)-A097805(n+1)` -/
def P18190101954026162500.Spec : Prop :=
  ∀ n, P18190101954026162500.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P1504903880009641620

`A127952(n)-∑[A141692(n)]`
-/

namespace A128134.P1504903880009641620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127952 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128134.P1504903880009641620

namespace A128134

/-- `A127952(n)-∑[A141692(n)]` -/
def P1504903880009641620.Spec : Prop :=
  ∀ n, P1504903880009641620.a n = A128134 (n + 1)

end A128134

/-! ## A128134.P2558441938278150963

`A046206(2*n+1)-A097805(n+1)`
-/

namespace A128134.P2558441938278150963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 (2 * n + 1) - A097805 (n + 1)

end

end A128134.P2558441938278150963

namespace A128134

/-- `A046206(2*n+1)-A097805(n+1)` -/
def P2558441938278150963.Spec : Prop :=
  ∀ n, P2558441938278150963.a n = A128134 (n + 1)

end A128134

/-!
# A128135: Row sums of A128134.

The programs for A128135, the canonical program `A128135.P17280713247428981015` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128135 has offset 1).

The definition of A128135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128135.P17280713247428981015

`2*a(n-1)+2^n` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128135

/-- `2*a(n-1)+2^n` -/
def P17280713247428981015.Spec : Prop :=
  ∀ n, (P17280713247428981015.a n : ℤ) = A128135 (n + 1)

theorem P17280713247428981015.correct : P17280713247428981015.Spec := by
  intro n
  simp only [A128135, Nat.add_sub_cancel]

end A128135

/-! ## A128135.P11717189668554959830

`ogf((1-x+2x^2)/(1-4x+4x^2))`
-/

namespace A128135.P11717189668554959830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -4, 4] n

end

end A128135.P11717189668554959830

namespace A128135

/-- `ogf((1-x+2x^2)/(1-4x+4x^2))` -/
def P11717189668554959830.Spec : Prop :=
  ∀ n, P11717189668554959830.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P14264288707891727414

`ceil(2^(n-1)*Δ[n²])`
-/

namespace A128135.P14264288707891727414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌉

end

end A128135.P14264288707891727414

namespace A128135

/-- `ceil(2^(n-1)*Δ[n²])` -/
def P14264288707891727414.Spec : Prop :=
  ∀ n, P14264288707891727414.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P12557171763779830639

`lcm(ceil(2^(n-1)), Δ[n²])`
-/

namespace A128135.P12557171763779830639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128135.P12557171763779830639

namespace A128135

/-- `lcm(ceil(2^(n-1)), Δ[n²])` -/
def P12557171763779830639.Spec : Prop :=
  ∀ n, (P12557171763779830639.a n : ℤ) = A128135 (n + 1)

end A128135

/-! ## A128135.P7013899830423723707

`or(1, 2*n)*ceil(2^(n-1))`
-/

namespace A128135.P7013899830423723707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A128135.P7013899830423723707

namespace A128135

/-- `or(1, 2*n)*ceil(2^(n-1))` -/
def P7013899830423723707.Spec : Prop :=
  ∀ n, P7013899830423723707.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P8286959531028943515

`xor(1, 2*n)*ceil(2^(n-1))`
-/

namespace A128135.P8286959531028943515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A128135.P8286959531028943515

namespace A128135

/-- `xor(1, 2*n)*ceil(2^(n-1))` -/
def P8286959531028943515.Spec : Prop :=
  ∀ n, P8286959531028943515.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P2043691524431556359

`round(2^(n-1)*or(1, 2*n))`
-/

namespace A128135.P2043691524431556359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.lor 1 (2 * n) : ℚ))

end

end A128135.P2043691524431556359

namespace A128135

/-- `round(2^(n-1)*or(1, 2*n))` -/
def P2043691524431556359.Spec : Prop :=
  ∀ n, P2043691524431556359.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P5165522575060724931

`round(2^(n-1)*xor(1, 2*n))`
-/

namespace A128135.P5165522575060724931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.xor 1 (2 * n) : ℚ))

end

end A128135.P5165522575060724931

namespace A128135

/-- `round(2^(n-1)*xor(1, 2*n))` -/
def P5165522575060724931.Spec : Prop :=
  ∀ n, P5165522575060724931.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P16221933349714538595

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A128135.P16221933349714538595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A128135.P16221933349714538595

namespace A128135

/-- `4*(a(n-1)-a(n-2))` -/
def P16221933349714538595.Spec : Prop :=
  ∀ n, P16221933349714538595.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P6193811664728183682

`(2*n+1)*2^((n-1)%(n+1))`
-/

namespace A128135.P6193811664728183682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

end

end A128135.P6193811664728183682

namespace A128135

/-- `(2*n+1)*2^((n-1)%(n+1))` -/
def P6193811664728183682.Spec : Prop :=
  ∀ n, P6193811664728183682.a n = (A128135 (n + 1) : ℚ)

end A128135

/-! ## A128135.P4780133831757264208

`a(n-1)+a(n-1)+2^n` with `a(0)=1, a(1)=3`
-/

namespace A128135.P4780133831757264208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + 2 ^ n)

end

end A128135.P4780133831757264208

namespace A128135

/-- `a(n-1)+a(n-1)+2^n` -/
def P4780133831757264208.Spec : Prop :=
  ∀ n, (P4780133831757264208.a n : ℤ) = A128135 (n + 1)

theorem P4780133831757264208.correct : P4780133831757264208.Spec := by
  intro n
  simp only [A128135, Nat.add_sub_cancel, A128135.P4780133831757264208.a, A128135.P17280713247428981015.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A128135

/-! ## A128135.P8050198851614442139

`(2*n+1)*ceil(gcd(2, 2*n)^(n-1))`
-/

namespace A128135.P8050198851614442139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ⌈(Nat.gcd 2 (2 * n) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A128135.P8050198851614442139

namespace A128135

/-- `(2*n+1)*ceil(gcd(2, 2*n)^(n-1))` -/
def P8050198851614442139.Spec : Prop :=
  ∀ n, P8050198851614442139.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P6698981125950650517

`C(2*n+1, 2*n)*ceil(2^(n-1))`
-/

namespace A128135.P6698981125950650517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (2 * n) : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A128135.P6698981125950650517

namespace A128135

/-- `C(2*n+1, 2*n)*ceil(2^(n-1))` -/
def P6698981125950650517.Spec : Prop :=
  ∀ n, P6698981125950650517.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P2779177942920488504

`round(2^(n-1)*C(2*n+1, 2*n))`
-/

namespace A128135.P2779177942920488504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (2 * n + 1) (2 * n) : ℚ))

end

end A128135.P2779177942920488504

namespace A128135

/-- `round(2^(n-1)*C(2*n+1, 2*n))` -/
def P2779177942920488504.Spec : Prop :=
  ∀ n, P2779177942920488504.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P5220570914930660670

`Δ[n²]*A011782(n)`
-/

namespace A128135.P5220570914930660670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A011782 n

end

end A128135.P5220570914930660670

namespace A128135

/-- `Δ[n²]*A011782(n)` -/
def P5220570914930660670.Spec : Prop :=
  ∀ n, P5220570914930660670.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P3297055826874201213

`Δ[n²]*A166444(n+1)`
-/

namespace A128135.P3297055826874201213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A166444 (n + 1)

end

end A128135.P3297055826874201213

namespace A128135

/-- `Δ[n²]*A166444(n+1)` -/
def P3297055826874201213.Spec : Prop :=
  ∀ n, P3297055826874201213.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P16071486217575785091

`(2*n+1)*A211164(2*n)`
-/

namespace A128135.P16071486217575785091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A211164 (2 * n)

end

end A128135.P16071486217575785091

namespace A128135

/-- `(2*n+1)*A211164(2*n)` -/
def P16071486217575785091.Spec : Prop :=
  ∀ n, P16071486217575785091.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P9196252327271526403

`(2*n+1)*A158780(2*n+1)`
-/

namespace A128135.P9196252327271526403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A158780 (2 * n + 1)

end

end A128135.P9196252327271526403

namespace A128135

/-- `(2*n+1)*A158780(2*n+1)` -/
def P9196252327271526403.Spec : Prop :=
  ∀ n, P9196252327271526403.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P1963844220315606068

`A239632(A004277(n))`
-/

namespace A128135.P1963844220315606068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (A004277 n).toNat

end

end A128135.P1963844220315606068

namespace A128135

/-- `A239632(A004277(n))` -/
def P1963844220315606068.Spec : Prop :=
  ∀ n, P1963844220315606068.a n = A128135 (n + 1)

end A128135

/-! ## A128135.P15834812341206091207

`A239632(A004275(n+1))`
-/

namespace A128135.P15834812341206091207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (A004275 (n + 1)).toNat

end

end A128135.P15834812341206091207

namespace A128135

/-- `A239632(A004275(n+1))` -/
def P15834812341206091207.Spec : Prop :=
  ∀ n, P15834812341206091207.a n = A128135 (n + 1)

end A128135

/-!
# A128136: A128132 * A002260.

The programs for A128136, the canonical program `A128136.P1783025151407197287` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128136 has offset 1).

The definition of A128136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128136.P5101349910654532373

`(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n-1]]]`
-/

namespace A128136.P5101349910654532373
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A128136.P5101349910654532373

namespace A128136

/-- `(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n-1]]]` -/
def P5101349910654532373.Spec : Prop :=
  ∀ n, P5101349910654532373.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P1939839956469216459

`∑[char[∑[n-1]]]*A002260(n+1)`
-/

namespace A128136.P1939839956469216459
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002260 (n + 1)

end

end A128136.P1939839956469216459

namespace A128136

/-- `∑[char[∑[n-1]]]*A002260(n+1)` -/
def P1939839956469216459.Spec : Prop :=
  ∀ n, P1939839956469216459.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P8836105309795779874

`(A002262(n)+1)*∑[char[∑[n-1]]]`
-/

namespace A128136.P8836105309795779874
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128136.P8836105309795779874

namespace A128136

/-- `(A002262(n)+1)*∑[char[∑[n-1]]]` -/
def P8836105309795779874.Spec : Prop :=
  ∀ n, P8836105309795779874.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P14291268784612619165

`abs(A140756(n+1))*∑[char[∑[n-1]]]`
-/

namespace A128136.P14291268784612619165
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128136.P14291268784612619165

namespace A128136

/-- `abs(A140756(n+1))*∑[char[∑[n-1]]]` -/
def P14291268784612619165.Spec : Prop :=
  ∀ n, P14291268784612619165.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P337382864383042148

`sqrt(A133819(n+1))*∑[char[∑[n-1]]]`
-/

namespace A128136.P337382864383042148
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A128136.P337382864383042148

namespace A128136

/-- `sqrt(A133819(n+1))*∑[char[∑[n-1]]]` -/
def P337382864383042148.Spec : Prop :=
  ∀ n, P337382864383042148.a n = (A128136 (n + 1) : ℝ)

end A128136

/-! ## A128136.P2234970273872467959

`(1-A057944(n)+n)*∑[char[∑[n-1]]]`
-/

namespace A128136.P2234970273872467959
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128136.P2234970273872467959

namespace A128136

/-- `(1-A057944(n)+n)*∑[char[∑[n-1]]]` -/
def P2234970273872467959.Spec : Prop :=
  ∀ n, P2234970273872467959.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P2147660887079976414

`A191532(n)+A159797(n)`
-/

namespace A128136.P2147660887079976414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n + A159797 n

end

end A128136.P2147660887079976414

namespace A128136

/-- `A191532(n)+A159797(n)` -/
def P2147660887079976414.Spec : Prop :=
  ∀ n, P2147660887079976414.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P837200119835206953

`A075362(n+1)-A048151(n+1)`
-/

namespace A128136.P837200119835206953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A048151 (n + 1)

end

end A128136.P837200119835206953

namespace A128136

/-- `A075362(n+1)-A048151(n+1)` -/
def P837200119835206953.Spec : Prop :=
  ∀ n, P837200119835206953.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P1783025151407197287

`A002260(n+1)*A003056(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128136

/-- `A002260(n+1)*A003056(n+1)` -/
def P1783025151407197287.Spec : Prop :=
  ∀ n, P1783025151407197287.a n = A128136 (n + 1)

theorem P1783025151407197287.correct : P1783025151407197287.Spec := by
  intro n
  simp only [A128136, Nat.add_sub_cancel]

end A128136

/-! ## A128136.P15801989387215366994

`2*A075362(n+1)-A127735(n+1)`
-/

namespace A128136.P15801989387215366994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075362 (n + 1) - A127735 (n + 1)

end

end A128136.P15801989387215366994

namespace A128136

/-- `2*A075362(n+1)-A127735(n+1)` -/
def P15801989387215366994.Spec : Prop :=
  ∀ n, P15801989387215366994.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P8201691256967539699

`A003056(n+1)+A002262(n)*A003056(n+1)`
-/

namespace A128136.P8201691256967539699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + A002262 n * A003056 (n + 1)

end

end A128136.P8201691256967539699

namespace A128136

/-- `A003056(n+1)+A002262(n)*A003056(n+1)` -/
def P8201691256967539699.Spec : Prop :=
  ∀ n, P8201691256967539699.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P6279654778904500326

`A003056(n+1)+A003056(n)*A128138(n+1)`
-/

namespace A128136.P6279654778904500326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + A003056 n * A128138 (n + 1)

end

end A128136.P6279654778904500326

namespace A128136

/-- `A003056(n+1)+A003056(n)*A128138(n+1)` -/
def P6279654778904500326.Spec : Prop :=
  ∀ n, P6279654778904500326.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P7212465798795854125

`(A094727(n+1)-A003056(n))*A003056(n+1)`
-/

namespace A128136.P7212465798795854125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) - A003056 n) * A003056 (n + 1)

end

end A128136.P7212465798795854125

namespace A128136

/-- `(A094727(n+1)-A003056(n))*A003056(n+1)` -/
def P7212465798795854125.Spec : Prop :=
  ∀ n, P7212465798795854125.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P6083165726620470910

`(A004736(n+1)-A114327(n))*A003056(n+1)`
-/

namespace A128136.P6083165726620470910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - A114327 n) * A003056 (n + 1)

end

end A128136.P6083165726620470910

namespace A128136

/-- `(A004736(n+1)-A114327(n))*A003056(n+1)` -/
def P6083165726620470910.Spec : Prop :=
  ∀ n, P6083165726620470910.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P13488526634098002267

`(A003057(n+2)-A004736(n+1))*A003056(n+1)`
-/

namespace A128136.P13488526634098002267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A004736 (n + 1)) * A003056 (n + 1)

end

end A128136.P13488526634098002267

namespace A128136

/-- `(A003057(n+2)-A004736(n+1))*A003056(n+1)` -/
def P13488526634098002267.Spec : Prop :=
  ∀ n, P13488526634098002267.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P2890950657822540708

`A075362(n+1)-A002262(n+1)`
-/

namespace A128136.P2890950657822540708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A002262 (n + 1)

end

end A128136.P2890950657822540708

namespace A128136

/-- `A075362(n+1)-A002262(n+1)` -/
def P2890950657822540708.Spec : Prop :=
  ∀ n, P2890950657822540708.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P11766089963650563975

`A002024(n+1)*A002260(n+1)-A002262(n+1)`
-/

namespace A128136.P11766089963650563975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A002260 (n + 1) - A002262 (n + 1)

end

end A128136.P11766089963650563975

namespace A128136

/-- `A002024(n+1)*A002260(n+1)-A002262(n+1)` -/
def P11766089963650563975.Spec : Prop :=
  ∀ n, P11766089963650563975.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P11659212396107481313

`(A057944(n+1)-A056943(n+1))*A003056(n+1)`
-/

namespace A128136.P11659212396107481313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057944 (n + 1) - A056943 (n + 1)) * A003056 (n + 1)

end

end A128136.P11659212396107481313

namespace A128136

/-- `(A057944(n+1)-A056943(n+1))*A003056(n+1)` -/
def P11659212396107481313.Spec : Prop :=
  ∀ n, P11659212396107481313.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P13720785056886763198

`A002024(n+2)*A002260(n+1)-A002260(n+1)`
-/

namespace A128136.P13720785056886763198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2) * A002260 (n + 1) - A002260 (n + 1)

end

end A128136.P13720785056886763198

namespace A128136

/-- `A002024(n+2)*A002260(n+1)-A002260(n+1)` -/
def P13720785056886763198.Spec : Prop :=
  ∀ n, P13720785056886763198.a n = A128136 (n + 1)

end A128136

/-! ## A128136.P16062901933269348763

`A003056(n+1)*A209279(A185180(n+1))`
-/

namespace A128136.P16062901933269348763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) * A209279 (A185180 (n + 1)).toNat

end

end A128136.P16062901933269348763

namespace A128136

/-- `A003056(n+1)*A209279(A185180(n+1))` -/
def P16062901933269348763.Spec : Prop :=
  ∀ n, P16062901933269348763.a n = A128136 (n + 1)

end A128136

/-!
# A128137: A002260 * A128132.

The programs for A128137, the canonical program `A128137.P5492606734270784235` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128137 has offset 1).

The definition of A128137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128137.P5492606734270784235

`Δ[A025581(n)]+2*A112367(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A128137

/-- `Δ[A025581(n)]+2*A112367(n)` -/
def P5492606734270784235.Spec : Prop :=
  ∀ n, P5492606734270784235.a n = A128137 (n + 1)

theorem P5492606734270784235.correct : P5492606734270784235.Spec := by
  intro n
  simp only [A128137, Nat.add_sub_cancel]

end A128137

/-! ## A128137.P6975282205653260950

`Δ[A004736(n+1)]+2*A112367(n)`
-/

namespace A128137.P6975282205653260950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A112367 n

end

end A128137.P6975282205653260950

namespace A128137

/-- `Δ[A004736(n+1)]+2*A112367(n)` -/
def P6975282205653260950.Spec : Prop :=
  ∀ n, P6975282205653260950.a n = A128137 (n + 1)

end A128137

/-! ## A128137.P12309111671054567823

`A002378(A002262(n))+Δ[A025581(n)]`
-/

namespace A128137.P12309111671054567823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002262 n).toNat + (f1 (n + 1) - f1 n)

end

end A128137.P12309111671054567823

namespace A128137

/-- `A002378(A002262(n))+Δ[A025581(n)]` -/
def P12309111671054567823.Spec : Prop :=
  ∀ n, P12309111671054567823.a n = A128137 (n + 1)

end A128137

/-! ## A128137.P6301140731307437838

`A061885(A112367(n))+Δ[A025581(n)]`
-/

namespace A128137.P6301140731307437838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (A112367 n).toNat + (f1 (n + 1) - f1 n)

end

end A128137.P6301140731307437838

namespace A128137

/-- `A061885(A112367(n))+Δ[A025581(n)]` -/
def P6301140731307437838.Spec : Prop :=
  ∀ n, P6301140731307437838.a n = A128137 (n + 1)

end A128137

/-! ## A128137.P2909586553195427007

`A002378(A002262(n))+Δ[A004736(n+1)]`
-/

namespace A128137.P2909586553195427007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002262 n).toNat + (f1 (n + 1) - f1 n)

end

end A128137.P2909586553195427007

namespace A128137

/-- `A002378(A002262(n))+Δ[A004736(n+1)]` -/
def P2909586553195427007.Spec : Prop :=
  ∀ n, P2909586553195427007.a n = A128137 (n + 1)

end A128137

/-! ## A128137.P12266450295127176703

`A005843(A112367(n))+Δ[A004736(n+1)]`
-/

namespace A128137.P12266450295127176703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A112367 n).toNat + (f1 (n + 1) - f1 n)

end

end A128137.P12266450295127176703

namespace A128137

/-- `A005843(A112367(n))+Δ[A004736(n+1)]` -/
def P12266450295127176703.Spec : Prop :=
  ∀ n, P12266450295127176703.a n = A128137 (n + 1)

end A128137

/-! ## A128137.P2943907805118071725

`A127949(n+1)+2*A112367(n)`
-/

namespace A128137.P2943907805118071725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127949 (n + 1) + 2 * A112367 n

end

end A128137.P2943907805118071725

namespace A128137

/-- `A127949(n+1)+2*A112367(n)` -/
def P2943907805118071725.Spec : Prop :=
  ∀ n, P2943907805118071725.a n = A128137 (n + 1)

end A128137

/-! ## A128137.P14489981746644897777

`A127949(n+1)+A002378(A002262(n))`
-/

namespace A128137.P14489981746644897777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127949 (n + 1) + A002378 (A002262 n).toNat

end

end A128137.P14489981746644897777

namespace A128137

/-- `A127949(n+1)+A002378(A002262(n))` -/
def P14489981746644897777.Spec : Prop :=
  ∀ n, P14489981746644897777.a n = A128137 (n + 1)

end A128137

/-!
# A128138: A000012 * A128132.

The programs for A128138, the canonical program `A128138.P1103581948211264897` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128138 has offset 1).

The definition of A128138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128138.P8521495192275344071

`char[∑[n-1]]+n-C(∑[char[∑[n]]], 2)`
-/

namespace A128138.P8521495192275344071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ))

end

end A128138.P8521495192275344071

namespace A128138

/-- `char[∑[n-1]]+n-C(∑[char[∑[n]]], 2)` -/
def P8521495192275344071.Spec : Prop :=
  ∀ n, P8521495192275344071.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P16961661265151009773

`comp[∑[n-2]]+1-C(comp[∑[n]]-n, 2)`
-/

namespace A128138.P16961661265151009773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A128138.P16961661265151009773

namespace A128138

/-- `comp[∑[n-2]]+1-C(comp[∑[n]]-n, 2)` -/
def P16961661265151009773.Spec : Prop :=
  ∀ n, P16961661265151009773.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P13055874956553353294

`∑[char[∑[n-1]]+1-round(sqrt(2*(n+1)))*char[∑[n]]]`
-/

namespace A128138.P13055874956553353294
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128138.P13055874956553353294

namespace A128138

/-- `∑[char[∑[n-1]]+1-round(sqrt(2*(n+1)))*char[∑[n]]]` -/
def P13055874956553353294.Spec : Prop :=
  ∀ n, P13055874956553353294.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P3598998852710101385

`val(A173786(n), 2)`
-/

namespace A128138.P3598998852710101385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173786 n).toNat 2

end

end A128138.P3598998852710101385

namespace A128138

/-- `val(A173786(n), 2)` -/
def P3598998852710101385.Spec : Prop :=
  ∀ n, (P3598998852710101385.a n : ℤ) = A128138 (n + 1)

end A128138

/-! ## A128138.P1103581948211264897

`val(A099627(n)+1, 2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128138

/-- `val(A099627(n)+1, 2)` -/
def P1103581948211264897.Spec : Prop :=
  ∀ n, (P1103581948211264897.a n : ℤ) = A128138 (n + 1)

theorem P1103581948211264897.correct : P1103581948211264897.Spec := by
  intro n
  simp only [A128138, Nat.add_sub_cancel]

end A128138

/-! ## A128138.P1310086876614465338

`A023531(n)+A002262(n)`
-/

namespace A128138.P1310086876614465338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + A002262 n

end

end A128138.P1310086876614465338

namespace A128138

/-- `A023531(n)+A002262(n)` -/
def P1310086876614465338.Spec : Prop :=
  ∀ n, P1310086876614465338.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P5268070289857980669

`A051340(n)*A114219(n)`
-/

namespace A128138.P5268070289857980669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A114219 n

end

end A128138.P5268070289857980669

namespace A128138

/-- `A051340(n)*A114219(n)` -/
def P5268070289857980669.Spec : Prop :=
  ∀ n, P5268070289857980669.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P10852800542732341918

`A002262(n)+Δ[A003056(n)]`
-/

namespace A128138.P10852800542732341918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (f1 (n + 1) - f1 n)

end

end A128138.P10852800542732341918

namespace A128138

/-- `A002262(n)+Δ[A003056(n)]` -/
def P10852800542732341918.Spec : Prop :=
  ∀ n, P10852800542732341918.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P10992185010425855846

`∑[A158821(n)]-A061579(n)`
-/

namespace A128138.P10992185010425855846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061579 n

end

end A128138.P10992185010425855846

namespace A128138

/-- `∑[A158821(n)]-A061579(n)` -/
def P10992185010425855846.Spec : Prop :=
  ∀ n, P10992185010425855846.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P2556920273886985242

`A002262(n)+char[A000096(n)]`
-/

namespace A128138.P2556920273886985242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A128138.P2556920273886985242

namespace A128138

/-- `A002262(n)+char[A000096(n)]` -/
def P2556920273886985242.Spec : Prop :=
  ∀ n, P2556920273886985242.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P12303510927951838103

`A002260(A066182(n+2))-1`
-/

namespace A128138.P12303510927951838103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A066182 (n + 2)).toNat - 1

end

end A128138.P12303510927951838103

namespace A128138

/-- `A002260(A066182(n+2))-1` -/
def P12303510927951838103.Spec : Prop :=
  ∀ n, P12303510927951838103.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P16526471692551155762

`A010054(n+1)+A002262(n)`
-/

namespace A128138.P16526471692551155762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + A002262 n

end

end A128138.P16526471692551155762

namespace A128138

/-- `A010054(n+1)+A002262(n)` -/
def P16526471692551155762.Spec : Prop :=
  ∀ n, P16526471692551155762.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P3302293092113292908

`A073424(n+1)+A002262(n)`
-/

namespace A128138.P3302293092113292908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) + A002262 n

end

end A128138.P3302293092113292908

namespace A128138

/-- `A073424(n+1)+A002262(n)` -/
def P3302293092113292908.Spec : Prop :=
  ∀ n, P3302293092113292908.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P11357361431755730250

`A002260(n+1)-A023532(n)`
-/

namespace A128138.P11357361431755730250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A023532 n

end

end A128138.P11357361431755730250

namespace A128138

/-- `A002260(n+1)-A023532(n)` -/
def P11357361431755730250.Spec : Prop :=
  ∀ n, P11357361431755730250.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P7595785624800646276

`A002262(n)+1-A023532(n)`
-/

namespace A128138.P7595785624800646276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (1 - A023532 n)

end

end A128138.P7595785624800646276

namespace A128138

/-- `A002262(n)+1-A023532(n)` -/
def P7595785624800646276.Spec : Prop :=
  ∀ n, P7595785624800646276.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P3557017678415211838

`A003056(n+1)-A025581(n)`
-/

namespace A128138.P3557017678415211838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - A025581 n

end

end A128138.P3557017678415211838

namespace A128138

/-- `A003056(n+1)-A025581(n)` -/
def P3557017678415211838.Spec : Prop :=
  ∀ n, P3557017678415211838.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P17721490134321239549

`A114219(n)*A131821(n+1)`
-/

namespace A128138.P17721490134321239549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A131821 (n + 1)

end

end A128138.P17721490134321239549

namespace A128138

/-- `A114219(n)*A131821(n+1)` -/
def P17721490134321239549.Spec : Prop :=
  ∀ n, P17721490134321239549.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P4282874242992187833

`A114219(n)*A144112(n+1)`
-/

namespace A128138.P4282874242992187833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A144112 (n + 1)

end

end A128138.P4282874242992187833

namespace A128138

/-- `A114219(n)*A144112(n+1)` -/
def P4282874242992187833.Spec : Prop :=
  ∀ n, P4282874242992187833.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P347113376731990574

`A002262(n)+and(1, A130321(n))`
-/

namespace A128138.P347113376731990574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + Int.land 1 (A130321 n)

end

end A128138.P347113376731990574

namespace A128138

/-- `A002262(n)+and(1, A130321(n))` -/
def P347113376731990574.Spec : Prop :=
  ∀ n, P347113376731990574.a n = A128138 (n + 1)

end A128138

/-! ## A128138.P18214437236484364484

`A023531(n)+n-A057944(n)`
-/

namespace A128138.P18214437236484364484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n + ((n : ℤ) - A057944 n)

end

end A128138.P18214437236484364484

namespace A128138

/-- `A023531(n)+n-A057944(n)` -/
def P18214437236484364484.Spec : Prop :=
  ∀ n, P18214437236484364484.a n = A128138 (n + 1)

end A128138

/-!
# A128139: Triangle read by rows: matrix product A004736 * A128132.

The programs for A128139, the canonical program `A128139.P7396789911746890066` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128139 has offset 0).

The definition of A128139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128139.P565650827853747759

`∑[round(sqrt(2*n))²]+1-n²`
-/

namespace A128139.P565650827853747759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - (n ^ 2 : ℤ))

end

end A128139.P565650827853747759

namespace A128139

/-- `∑[round(sqrt(2*n))²]+1-n²` -/
def P565650827853747759.Spec : Prop :=
  ∀ n, P565650827853747759.a n = A128139 n

end A128139

/-! ## A128139.P9056261594565954288

`abs(∑[2*n]%comp[∑[n]]-(∑[∑[char[∑[n]]]²]%(n+1)+1+n))`
-/

namespace A128139.P9056261594565954288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) + 1 + n : ℕ) : ℤ)|

end

end A128139.P9056261594565954288

namespace A128139

/-- `abs(∑[2*n]%comp[∑[n]]-(∑[∑[char[∑[n]]]²]%(n+1)+1+n))` -/
def P9056261594565954288.Spec : Prop :=
  ∀ n, P9056261594565954288.a n = A128139 n

end A128139

/-! ## A128139.P7396789911746890066

`∑[A114327(abs(1-n))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A128139

/-- `∑[A114327(abs(1-n))]` -/
def P7396789911746890066.Spec : Prop :=
  ∀ n, P7396789911746890066.a n = A128139 n

theorem P7396789911746890066.correct : P7396789911746890066.Spec := by
  intro n
  simp only [A128139]

end A128139

/-! ## A128139.P14836085833987560730

`A077028(comp[∑[n+1]])`
-/

namespace A128139.P14836085833987560730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128139.P14836085833987560730

namespace A128139

/-- `A077028(comp[∑[n+1]])` -/
def P14836085833987560730.Spec : Prop :=
  ∀ n, P14836085833987560730.a n = A128139 n

end A128139

/-! ## A128139.P6314042846438015725

`abs(n+1-A144216(n+1))`
-/

namespace A128139.P6314042846438015725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A144216 (n + 1)|

end

end A128139.P6314042846438015725

namespace A128139

/-- `abs(n+1-A144216(n+1))` -/
def P6314042846438015725.Spec : Prop :=
  ∀ n, P6314042846438015725.a n = A128139 n

end A128139

/-! ## A128139.P17022132649652235371

`∑[A168038(n)+1-2*n]`
-/

namespace A128139.P17022132649652235371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168038 n + 1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128139.P17022132649652235371

namespace A128139

/-- `∑[A168038(n)+1-2*n]` -/
def P17022132649652235371.Spec : Prop :=
  ∀ n, P17022132649652235371.a n = A128139 n

end A128139

/-! ## A128139.P4631589417529102447

`sqrt(A082043(comp[∑[n+1]]))`
-/

namespace A128139.P4631589417529102447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082043 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A128139.P4631589417529102447

namespace A128139

/-- `sqrt(A082043(comp[∑[n+1]]))` -/
def P4631589417529102447.Spec : Prop :=
  ∀ n, P4631589417529102447.a n = (A128139 n : ℝ)

end A128139

/-! ## A128139.P3396756606228742024

`A331855(A023758(n+1))`
-/

namespace A128139.P3396756606228742024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331855 (A023758 (n + 1)).toNat

end

end A128139.P3396756606228742024

namespace A128139

/-- `A331855(A023758(n+1))` -/
def P3396756606228742024.Spec : Prop :=
  ∀ n, P3396756606228742024.a n = A128139 n

end A128139

/-! ## A128139.P6444062911944383145

`A324338(A048645(n+1))`
-/

namespace A128139.P6444062911944383145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A048645 (n + 1)).toNat

end

end A128139.P6444062911944383145

namespace A128139

/-- `A324338(A048645(n+1))` -/
def P6444062911944383145.Spec : Prop :=
  ∀ n, P6444062911944383145.a n = A128139 n

end A128139

/-! ## A128139.P15176039389573568984

`A324338(A264802(n+1))`
-/

namespace A128139.P15176039389573568984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A264802 (n + 1)).toNat

end

end A128139.P15176039389573568984

namespace A128139

/-- `A324338(A264802(n+1))` -/
def P15176039389573568984.Spec : Prop :=
  ∀ n, P15176039389573568984.a n = A128139 n

end A128139

/-! ## A128139.P12820375156823385106

`A002487(A099627(n))`
-/

namespace A128139.P12820375156823385106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A099627 n).toNat

end

end A128139.P12820375156823385106

namespace A128139

/-- `A002487(A099627(n))` -/
def P12820375156823385106.Spec : Prop :=
  ∀ n, P12820375156823385106.a n = A128139 n

end A128139

/-!
# A128140: A128132 * A004736.

The programs for A128140, the canonical program `A128140.P16645967275614612223` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128140 has offset 1).

The definition of A128140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128140.P9804407454679022838

`A091435(n)+∑[char[∑[n]]]`
-/

namespace A128140.P9804407454679022838
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128140.P9804407454679022838

namespace A128140

/-- `A091435(n)+∑[char[∑[n]]]` -/
def P9804407454679022838.Spec : Prop :=
  ∀ n, P9804407454679022838.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P11504011636533656254

`A158841(n+1)+char[comp[∑[n]]]`
-/

namespace A128140.P11504011636533656254
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158841 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128140.P11504011636533656254

namespace A128140

/-- `A158841(n+1)+char[comp[∑[n]]]` -/
def P11504011636533656254.Spec : Prop :=
  ∀ n, P11504011636533656254.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P12065937412313184865

`Δ[n²]-(comp[∑[n]]-n)*A002262(n)`
-/

namespace A128140.P12065937412313184865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)) * A002262 n

end

end A128140.P12065937412313184865

namespace A128140

/-- `Δ[n²]-(comp[∑[n]]-n)*A002262(n)` -/
def P12065937412313184865.Spec : Prop :=
  ∀ n, P12065937412313184865.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P4969826605911008152

`∑[char[∑[n+1]]]*A004736(n+1)+1`
-/

namespace A128140.P4969826605911008152
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A004736 (n + 1) + 1

end

end A128140.P4969826605911008152

namespace A128140

/-- `∑[char[∑[n+1]]]*A004736(n+1)+1` -/
def P4969826605911008152.Spec : Prop :=
  ∀ n, P4969826605911008152.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P2080313043202074958

`(A025581(n)+1)*∑[char[∑[n+1]]]+1`
-/

namespace A128140.P2080313043202074958
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A128140.P2080313043202074958

namespace A128140

/-- `(A025581(n)+1)*∑[char[∑[n+1]]]+1` -/
def P2080313043202074958.Spec : Prop :=
  ∀ n, P2080313043202074958.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P2966949821715923892

`(C(comp[C(n, 2)]-n, 2)-n)*A003056(n)+1`
-/

namespace A128140.P2966949821715923892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A003056 n + 1

end

end A128140.P2966949821715923892

namespace A128140

/-- `(C(comp[C(n, 2)]-n, 2)-n)*A003056(n)+1` -/
def P2966949821715923892.Spec : Prop :=
  ∀ n, P2966949821715923892.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P5040155346969265147

`A003991(n+1)+(C(comp[C(n, 2)]-n, 2)-(n+1))²`
-/

namespace A128140.P5040155346969265147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2

end

end A128140.P5040155346969265147

namespace A128140

/-- `A003991(n+1)+(C(comp[C(n, 2)]-n, 2)-(n+1))²` -/
def P5040155346969265147.Spec : Prop :=
  ∀ n, P5040155346969265147.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P16645967275614612223

`A003056(n)+A091435(n)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A128140

/-- `A003056(n)+A091435(n)+1` -/
def P16645967275614612223.Spec : Prop :=
  ∀ n, P16645967275614612223.a n = A128140 (n + 1)

theorem P16645967275614612223.correct : P16645967275614612223.Spec := by
  intro n
  simp only [A128140, Nat.add_sub_cancel]

end A128140

/-! ## A128140.P7814269329820450533

`A128139(n)+A095832(n+1)`
-/

namespace A128140.P7814269329820450533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + A095832 (n + 1)

end

end A128140.P7814269329820450533

namespace A128140

/-- `A128139(n)+A095832(n+1)` -/
def P7814269329820450533.Spec : Prop :=
  ∀ n, P7814269329820450533.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P13743878042752102042

`A323956(n+1)+A002262(n)`
-/

namespace A128140.P13743878042752102042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (n + 1) + A002262 n

end

end A128140.P13743878042752102042

namespace A128140

/-- `A323956(n+1)+A002262(n)` -/
def P13743878042752102042.Spec : Prop :=
  ∀ n, P13743878042752102042.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P7770517119199985300

`A095833(n+1)-A025581(n)`
-/

namespace A128140.P7770517119199985300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - A025581 n

end

end A128140.P7770517119199985300

namespace A128140

/-- `A095833(n+1)-A025581(n)` -/
def P7770517119199985300.Spec : Prop :=
  ∀ n, P7770517119199985300.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P5261332479237010023

`A094728(n+1)-A059036(n)`
-/

namespace A128140.P5261332479237010023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094728 (n + 1) - A059036 n

end

end A128140.P5261332479237010023

namespace A128140

/-- `A094728(n+1)-A059036(n)` -/
def P5261332479237010023.Spec : Prop :=
  ∀ n, P5261332479237010023.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P15725774447188313599

`A063929(n+1)-A099375(n)`
-/

namespace A128140.P15725774447188313599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) - A099375 n

end

end A128140.P15725774447188313599

namespace A128140

/-- `A063929(n+1)-A099375(n)` -/
def P15725774447188313599.Spec : Prop :=
  ∀ n, P15725774447188313599.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P6537602352328414902

`A003991(n+1)+A025581(n)²`
-/

namespace A128140.P6537602352328414902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + A025581 n ^ 2

end

end A128140.P6537602352328414902

namespace A128140

/-- `A003991(n+1)+A025581(n)²` -/
def P6537602352328414902.Spec : Prop :=
  ∀ n, P6537602352328414902.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P4054015638314056625

`A095834(n+1)+A002260(n+1)`
-/

namespace A128140.P4054015638314056625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) + A002260 (n + 1)

end

end A128140.P4054015638314056625

namespace A128140

/-- `A095834(n+1)+A002260(n+1)` -/
def P4054015638314056625.Spec : Prop :=
  ∀ n, P4054015638314056625.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P12363315354303770073

`A095834(n+1)+A002262(n)+1`
-/

namespace A128140.P12363315354303770073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) + (A002262 n + 1)

end

end A128140.P12363315354303770073

namespace A128140

/-- `A095834(n+1)+A002262(n)+1` -/
def P12363315354303770073.Spec : Prop :=
  ∀ n, P12363315354303770073.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P1094888912363137277

`A095831(n+1)+A003991(n+1)`
-/

namespace A128140.P1094888912363137277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A003991 (n + 1)

end

end A128140.P1094888912363137277

namespace A128140

/-- `A095831(n+1)+A003991(n+1)` -/
def P1094888912363137277.Spec : Prop :=
  ∀ n, P1094888912363137277.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P8836546978032435107

`A004202(n+1)-A075362(n+1)`
-/

namespace A128140.P8836546978032435107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - A075362 (n + 1)

end

end A128140.P8836546978032435107

namespace A128140

/-- `A004202(n+1)-A075362(n+1)` -/
def P8836546978032435107.Spec : Prop :=
  ∀ n, P8836546978032435107.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P1373973404226449093

`A131784(n+1)-2*A025581(n)`
-/

namespace A128140.P1373973404226449093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131784 (n + 1) - 2 * A025581 n

end

end A128140.P1373973404226449093

namespace A128140

/-- `A131784(n+1)-2*A025581(n)` -/
def P1373973404226449093.Spec : Prop :=
  ∀ n, P1373973404226449093.a n = A128140 (n + 1)

end A128140

/-! ## A128140.P6902296878081310819

`A003991(n+1)+A215630(n+1)-A075362(n+1)`
-/

namespace A128140.P6902296878081310819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) + (A215630 (n + 1) - A075362 (n + 1))

end

end A128140.P6902296878081310819

namespace A128140

/-- `A003991(n+1)+A215630(n+1)-A075362(n+1)` -/
def P6902296878081310819.Spec : Prop :=
  ∀ n, P6902296878081310819.a n = A128140 (n + 1)

end A128140

/-!
# A128141: A122432 (unsigned) * A128132.

The programs for A128141, the canonical program `A128141.P68200204376407770` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128141 has offset 1).

The definition of A128141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128141.P68200204376407770

`A101321(n)+A059036(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128141

/-- `A101321(n)+A059036(n)` -/
def P68200204376407770.Spec : Prop :=
  ∀ n, P68200204376407770.a n = A128141 (n + 1)

theorem P68200204376407770.correct : P68200204376407770.Spec := by
  intro n
  simp only [A128141, Nat.add_sub_cancel]

end A128141

/-! ## A128141.P16097545182202308286

`A062707(n)+A003991(n+1)`
-/

namespace A128141.P16097545182202308286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 n + A003991 (n + 1)

end

end A128141.P16097545182202308286

namespace A128141

/-- `A062707(n)+A003991(n+1)` -/
def P16097545182202308286.Spec : Prop :=
  ∀ n, P16097545182202308286.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P12235672416021998617

`A059036(n)+A062707(n)+1`
-/

namespace A128141.P12235672416021998617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + (A062707 n + 1)

end

end A128141.P12235672416021998617

namespace A128141

/-- `A059036(n)+A062707(n)+1` -/
def P12235672416021998617.Spec : Prop :=
  ∀ n, P12235672416021998617.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P15949952908497040145

`A104633(n+1)-A000217(A025581(n))`
-/

namespace A128141.P15949952908497040145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) - A000217 (A025581 n).toNat

end

end A128141.P15949952908497040145

namespace A128141

/-- `A104633(n+1)-A000217(A025581(n))` -/
def P15949952908497040145.Spec : Prop :=
  ∀ n, P15949952908497040145.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P8270429390486999532

`A104634(n+1)-A051925(A004736(n+1))`
-/

namespace A128141.P8270429390486999532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (n + 1) - A051925 (A004736 (n + 1)).toNat

end

end A128141.P8270429390486999532

namespace A128141

/-- `A104634(n+1)-A051925(A004736(n+1))` -/
def P8270429390486999532.Spec : Prop :=
  ∀ n, P8270429390486999532.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P11458633855516029718

`A134394(comp[∑[n]])-1`
-/

namespace A128141.P11458633855516029718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A128141.P11458633855516029718

namespace A128141

/-- `A134394(comp[∑[n]])-1` -/
def P11458633855516029718.Spec : Prop :=
  ∀ n, P11458633855516029718.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P12031922270300314827

`A062707(comp[∑[n+1]])+C(comp[∑[n]]-n, 2)-n`
-/

namespace A128141.P12031922270300314827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A128141.P12031922270300314827

namespace A128141

/-- `A062707(comp[∑[n+1]])+C(comp[∑[n]]-n, 2)-n` -/
def P12031922270300314827.Spec : Prop :=
  ∀ n, P12031922270300314827.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P2215885551200440916

`A101321(comp[∑[n+1]])+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A128141.P2215885551200440916
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A128141.P2215885551200440916

namespace A128141

/-- `A101321(comp[∑[n+1]])+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P2215885551200440916.Spec : Prop :=
  ∀ n, P2215885551200440916.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P6881774686997577444

`A062707(A007401(n+1))+A004736(n+1)`
-/

namespace A128141.P6881774686997577444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A007401 (n + 1)).toNat + A004736 (n + 1)

end

end A128141.P6881774686997577444

namespace A128141

/-- `A062707(A007401(n+1))+A004736(n+1)` -/
def P6881774686997577444.Spec : Prop :=
  ∀ n, P6881774686997577444.a n = A128141 (n + 1)

end A128141

/-! ## A128141.P5637262780594685132

`A093445(n+1)-A384125(n+1)`
-/

namespace A128141.P5637262780594685132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (n + 1) - A384125 (n + 1)

end

end A128141.P5637262780594685132

namespace A128141

/-- `A093445(n+1)-A384125(n+1)` -/
def P5637262780594685132.Spec : Prop :=
  ∀ n, P5637262780594685132.a n = A128141 (n + 1)

end A128141

/-!
# A128142: A128132 * A122432 (unsigned).

The programs for A128142, the canonical program `A128142.P9126956890442312540` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128142 has offset 1).

The definition of A128142 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128142.P9126956890442312540

`A104634(n+1)+C(A004736(n+1), 3)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128142

/-- `A104634(n+1)+C(A004736(n+1), 3)` -/
def P9126956890442312540.Spec : Prop :=
  ∀ n, P9126956890442312540.a n = A128142 (n + 1)

theorem P9126956890442312540.correct : P9126956890442312540.Spec := by
  intro n
  simp only [A128142, Nat.add_sub_cancel]

end A128142

/-! ## A128142.P10169563114302788768

`A104633(n+1)+A006002(A025581(n))`
-/

namespace A128142.P10169563114302788768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) + A006002 (A025581 n).toNat

end

end A128142.P10169563114302788768

namespace A128142

/-- `A104633(n+1)+A006002(A025581(n))` -/
def P10169563114302788768.Spec : Prop :=
  ∀ n, P10169563114302788768.a n = A128142 (n + 1)

end A128142

/-! ## A128142.P4885026049281882379

`A213500(n+1)+A000330(A025581(n))`
-/

namespace A128142.P4885026049281882379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) + A000330 (A025581 n).toNat

end

end A128142.P4885026049281882379

namespace A128142

/-- `A213500(n+1)+A000330(A025581(n))` -/
def P4885026049281882379.Spec : Prop :=
  ∀ n, P4885026049281882379.a n = A128142 (n + 1)

end A128142

/-! ## A128142.P1540028187704466343

`A004736(n+1)*A014132(n+1)-A107985(n)`
-/

namespace A128142.P1540028187704466343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A014132 (n + 1) - A107985 n

end

end A128142.P1540028187704466343

namespace A128142

/-- `A004736(n+1)*A014132(n+1)-A107985(n)` -/
def P1540028187704466343.Spec : Prop :=
  ∀ n, P1540028187704466343.a n = A128142 (n + 1)

end A128142

/-! ## A128142.P8674051970687341095

`A004736(n+1)+A104716(n+1)-A213500(n+1)`
-/

namespace A128142.P8674051970687341095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A104716 (n + 1) - A213500 (n + 1))

end

end A128142.P8674051970687341095

namespace A128142

/-- `A004736(n+1)+A104716(n+1)-A213500(n+1)` -/
def P8674051970687341095.Spec : Prop :=
  ∀ n, P8674051970687341095.a n = A128142 (n + 1)

end A128142

/-! ## A128142.P2789949933597679860

`A177877(A061579(n))+A000330(A025581(n))`
-/

namespace A128142.P2789949933597679860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177877 (A061579 n).toNat + A000330 (A025581 n).toNat

end

end A128142.P2789949933597679860

namespace A128142

/-- `A177877(A061579(n))+A000330(A025581(n))` -/
def P2789949933597679860.Spec : Prop :=
  ∀ n, P2789949933597679860.a n = A128142 (n + 1)

end A128142

/-! ## A128142.P11912474443129023913

`A062707(A007401(n+1))+A006003(A004736(n+1))`
-/

namespace A128142.P11912474443129023913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062707 (A007401 (n + 1)).toNat + A006003 (A004736 (n + 1)).toNat

end

end A128142.P11912474443129023913

namespace A128142

/-- `A062707(A007401(n+1))+A006003(A004736(n+1))` -/
def P11912474443129023913.Spec : Prop :=
  ∀ n, P11912474443129023913.a n = A128142 (n + 1)

end A128142

/-!
# A128143: Expansion of q* (psi(q^9)/phi(q^9))/ (psi(q)/phi(q)) in powers of q where psi(),phi() are Ramanujan theta functions.

The programs for A128143, there is no canonical definition to state claims against.
-/

/-! ## A128143.P16254883220429334386

`A128145(n+1)`
-/

namespace A128143.P16254883220429334386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 (n + 1)

end

end A128143.P16254883220429334386

/-! ## A128143.P17290082014211126867

`A033999(n)*A182038(n+1)`
-/

namespace A128143.P17290082014211126867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A182038 (n + 1)

end

end A128143.P17290082014211126867

/-! ## A128143.P14087519444221766641

`-A128144(n+1)`
-/

namespace A128143.P14087519444221766641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128144 (n + 1)

end

end A128143.P14087519444221766641

/-! ## A128143.P6795870444536673707

`Δ[a(n-1)-A128144(n)]` with `a(0)=1`
-/

namespace A128143.P6795870444536673707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A128144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128143.P6795870444536673707

/-! ## A128143.P16316488102212909477

`A033999(n)*A213266(n+1)`
-/

namespace A128143.P16316488102212909477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A213266 (n + 1)

end

end A128143.P16316488102212909477

/-! ## A128143.P8309572645241466914

`A128145(n)-Δ[-A128145(n)]`
-/

namespace A128143.P8309572645241466914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 n - (f1 (n + 1) - f1 n)

end

end A128143.P8309572645241466914

/-! ## A128143.P4912497069095703282

`A000007(n+1)-A128144(n+1)`
-/

namespace A128143.P4912497069095703282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A128144 (n + 1)

end

end A128143.P4912497069095703282

/-! ## A128143.P1850438906908976576

`A000038(n+1)-A128144(n+1)`
-/

namespace A128143.P1850438906908976576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A128144 (n + 1)

end

end A128143.P1850438906908976576

/-! ## A128143.P2215320154221530286

`A165326(n+1)*A213266(n+1)`
-/

namespace A128143.P2215320154221530286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A213266 (n + 1)

end

end A128143.P2215320154221530286

/-! ## A128143.P15930585924460498613

`A128144(n+1)*A153881(n+2)`
-/

namespace A128143.P15930585924460498613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 (n + 1) * A153881 (n + 2)

end

end A128143.P15930585924460498613

/-! ## A128143.P18197906938147027831

`C(n, A007088(n+1))-A128144(n+1)`
-/

namespace A128143.P18197906938147027831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A007088 (n + 1)).toNat : ℤ) - A128144 (n + 1)

end

end A128143.P18197906938147027831

/-! ## A128143.P16562138876434539316

`C(n, A111711(n+2))-A128144(n+1)`
-/

namespace A128143.P16562138876434539316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A111711 (n + 2)).toNat : ℤ) - A128144 (n + 1)

end

end A128143.P16562138876434539316

/-! ## A128143.P1281655588886521715

`(A007088(2*n)-A007088(2*n+1))*A128144(n+1)`
-/

namespace A128143.P1281655588886521715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007088 (2 * n) - A007088 (2 * n + 1)) * A128144 (n + 1)

end

end A128143.P1281655588886521715

/-! ## A128143.P5064927009329631686

`1-(A128144(n+1)+A033999(2*n))`
-/

namespace A128143.P5064927009329631686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A128144 (n + 1) + A033999 (2 * n))

end

end A128143.P5064927009329631686

/-! ## A128143.P16867939396206040099

`A033999(2*n+1)*A128144(n+1)`
-/

namespace A128143.P16867939396206040099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A128144 (n + 1)

end

end A128143.P16867939396206040099

/-! ## A128143.P3232893022525227806

`A316865(p?[A039637(n+1)])-A128144(n+1)`
-/

namespace A128143.P3232893022525227806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A128144 (n + 1)

end

end A128143.P3232893022525227806

/-! ## A128143.P2710191875660823409

`A213266(n+1)/A033999(n²)`
-/

namespace A128143.P2710191875660823409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213266 (n + 1) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A128143.P2710191875660823409

/-!
# A128144: Expansion of chi(-q)* chi(-q^2)* chi(-q^9)/( chi(-q^3)* chi(q^9)) in powers of q where chi() is a Ramanujan theta function.

The programs for A128144, there is no canonical definition to state claims against.
-/

/-! ## A128144.P8421159976006772965

`A000038(n)-A128145(n)`
-/

namespace A128144.P8421159976006772965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A128145 n

end

end A128144.P8421159976006772965

/-! ## A128144.P12419289519257711784

`A033999(n)*A213266(n)`
-/

namespace A128144.P12419289519257711784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A213266 n

end

end A128144.P12419289519257711784

/-! ## A128144.P4927412724055351960

`A128145(n)*A153881(n+1)`
-/

namespace A128144.P4927412724055351960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 n * A153881 (n + 1)

end

end A128144.P4927412724055351960

/-! ## A128144.P9110052873849641767

`A188257(and(1, a(n-1))+1)-A128145(n)` with `a(0)=1`
-/

namespace A128144.P9110052873849641767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188257 (Int.land 1 (a (n - 1)) + 1).toNat - A128145 n

end

end A128144.P9110052873849641767

/-! ## A128144.P14907228712700812919

`A000122(A000122(n)+n)-A128145(n)`
-/

namespace A128144.P14907228712700812919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A128145 n

end

end A128144.P14907228712700812919

/-! ## A128144.P7599247364726439506

`A165326(n+1)*A213266(n)`
-/

namespace A128144.P7599247364726439506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) * A213266 n

end

end A128144.P7599247364726439506

/-! ## A128144.P18285212825867257985

`A213266(n)/A165326(A165326(n)+n)`
-/

namespace A128144.P18285212825867257985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213266 n : ℚ) / (A165326 (A165326 n + (n : ℤ)).toNat : ℚ)

end

end A128144.P18285212825867257985

/-! ## A128144.P11542820250221383906

`A128145(n)*A165326(2*n)`
-/

namespace A128144.P11542820250221383906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 n * A165326 (2 * n)

end

end A128144.P11542820250221383906

/-! ## A128144.P17576310911801710262

`2*A128145(A008458(n))-A128145(n)`
-/

namespace A128144.P17576310911801710262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128145 (A008458 n).toNat - A128145 n

end

end A128144.P17576310911801710262

/-! ## A128144.P12669324569483852868

`A099837(and(n, A036542(n)))*A128145(n)`
-/

namespace A128144.P12669324569483852868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (Int.land (n : ℤ) (A036542 n)).toNat * A128145 n

end

end A128144.P12669324569483852868

/-!
# A128145: Expansion of psi(q^3)* phi(-q^3)* chi^2(-q^3)/( psi(-q)* phi(-q^18)) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A128145, there is no canonical definition to state claims against.
-/

/-! ## A128145.P2757705106549917701

`C(2, (n+1)²)-A128144(n)`
-/

namespace A128145.P2757705106549917701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 ((n + 1) ^ 2) : ℤ) - A128144 n

end

end A128145.P2757705106549917701

/-! ## A128145.P9444927017005862983

`A128143((2*n)%(n+1)+1)`
-/

namespace A128145.P9444927017005862983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (2 * n % (n + 1) + 1)

end

end A128145.P9444927017005862983

/-! ## A128145.P9319119464129093122

`A128143(lcm(1-n, n-1)+1)`
-/

namespace A128145.P9319119464129093122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1) + 1)

end

end A128145.P9319119464129093122

/-! ## A128145.P10119095984840972666

`A128143(A028310(n))`
-/

namespace A128145.P10119095984840972666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A028310 n).toNat

end

end A128145.P10119095984840972666

/-! ## A128145.P2849096309919218446

`A128143(A000007(n)+n)`
-/

namespace A128145.P2849096309919218446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A000007 n + (n : ℤ)).toNat

end

end A128145.P2849096309919218446

/-! ## A128145.P14003204494229414035

`A000038(n)-A128144(n)`
-/

namespace A128145.P14003204494229414035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A128144 n

end

end A128145.P14003204494229414035

/-! ## A128145.P11043213016008940021

`A128143(A004277(n)-n)`
-/

namespace A128145.P11043213016008940021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A004277 n - (n : ℤ)).toNat

end

end A128145.P11043213016008940021

/-! ## A128145.P9803670533300655334

`A165326(n)*A213266(n)`
-/

namespace A128145.P9803670533300655334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n * A213266 n

end

end A128145.P9803670533300655334

/-! ## A128145.P3511474768975643118

`A128143(A004275(n+1)-n)`
-/

namespace A128145.P3511474768975643118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A128145.P3511474768975643118

/-! ## A128145.P8242924784205064922

`A128144(n)*A153881(n+1)`
-/

namespace A128145.P8242924784205064922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 n * A153881 (n + 1)

end

end A128145.P8242924784205064922

/-! ## A128145.P9579545328164269105

`A128143(2-(n-A004275(n)))`
-/

namespace A128145.P9579545328164269105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (2 - ((n : ℤ) - A004275 n)).toNat

end

end A128145.P9579545328164269105

/-! ## A128145.P533082652728715171

`2*A000007(n)-A128144(n)`
-/

namespace A128145.P533082652728715171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n - A128144 n

end

end A128145.P533082652728715171

/-! ## A128145.P2788170523541431038

`A000122(A000122(n)+n)-A128144(n)`
-/

namespace A128145.P2788170523541431038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000122 n + (n : ℤ)).toNat - A128144 n

end

end A128145.P2788170523541431038

/-! ## A128145.P8762962257687469391

`A128143(A300576(n+2)/2)`
-/

namespace A128145.P8762962257687469391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (SequenceMachineLib.roundAway ((A300576 (n + 2) : ℚ) / 2)).toNat

end

end A128145.P8762962257687469391

/-! ## A128145.P3623686498554027949

`A128143(A300576(n+2)-n)`
-/

namespace A128145.P3623686498554027949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A300576 (n + 2) - (n : ℤ)).toNat

end

end A128145.P3623686498554027949

/-! ## A128145.P4958264124414187084

`A128143(A004275(n+1)²/A004275(2*n+1))`
-/

namespace A128145.P4958264124414187084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (SequenceMachineLib.roundAway ((A004275 (n + 1) ^ 2 : ℚ) / (A004275 (2 * n + 1) : ℚ))).toNat

end

end A128145.P4958264124414187084

/-! ## A128145.P14400773966803766248

`A128143(A233583(n+1))`
-/

namespace A128145.P14400773966803766248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (A233583 (n + 1)).toNat

end

end A128145.P14400773966803766248

/-! ## A128145.P11310311494856682781

`A128143(A004277(n²)/A004277(n))`
-/

namespace A128145.P11310311494856682781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128143 (SequenceMachineLib.roundAway ((A004277 (n ^ 2) : ℚ) / (A004277 n : ℚ))).toNat

end

end A128145.P11310311494856682781

/-!
# A128146: Numerators of Hankel transform of 1/J(n+1), where J(n)=A001045(n).

The programs for A128146, the canonical program `A128146.P9249707574287297203` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128146 has offset 0).

The definition of A128146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128146.P9249707574287297203

`(-1)^C(n+1, 2)*2^(C(2*(n+1), 3)/4)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128146

/-- `(-1)^C(n+1, 2)*2^(C(2*(n+1), 3)/4)` -/
def P9249707574287297203.Spec : Prop :=
  ∀ n, P9249707574287297203.a n = (A128146 n : ℝ)

end A128146

/-! ## A128146.P2207015978531028034

`(-2)^∑[n²]`
-/

namespace A128146.P2207015978531028034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128146.P2207015978531028034

namespace A128146

/-- `(-2)^∑[n²]` -/
def P2207015978531028034.Spec : Prop :=
  ∀ n, P2207015978531028034.a n = A128146 n

end A128146

/-! ## A128146.P7639436941245687525

`∏[(-2)^dr(n)²]`
-/

namespace A128146.P7639436941245687525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ SequenceMachineLib.digitalRoot (n : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128146.P7639436941245687525

namespace A128146

/-- `∏[(-2)^dr(n)²]` -/
def P7639436941245687525.Spec : Prop :=
  ∀ n, P7639436941245687525.a n = A128146 n

end A128146

/-! ## A128146.P16081112101882524023

`∏[((-2)^n)^dr(n)]`
-/

namespace A128146.P16081112101882524023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-2) ^ n) ^ SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128146.P16081112101882524023

namespace A128146

/-- `∏[((-2)^n)^dr(n)]` -/
def P16081112101882524023.Spec : Prop :=
  ∀ n, P16081112101882524023.a n = A128146 n

end A128146

/-! ## A128146.P12912170163453929638

`∏[(-2)^∑{digits}[n, #²]]`
-/

namespace A128146.P12912170163453929638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A128146.P12912170163453929638

namespace A128146

/-- `∏[(-2)^∑{digits}[n, #²]]` -/
def P12912170163453929638.Spec : Prop :=
  ∀ n, P12912170163453929638.a n = A128146 n

end A128146

/-!
# A128148: a(n) = least k such that 3^k mod k = 2^n.

The programs for A128148, there is no canonical definition to state claims against.
-/

/-! ## A128148.P2385307422936815811

`A078457(2^n)`
-/

namespace A128148.P2385307422936815811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078457 (2 ^ n)

end

end A128148.P2385307422936815811

/-! ## A128148.P2844037670288002750

`and(-1, A078457(A000079(n)))`
-/

namespace A128148.P2844037670288002750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A078457 (A000079 n).toNat)

end

end A128148.P2844037670288002750

/-!
# A128151: A002260 * A097806.

The programs for A128151, the canonical program `A128151.P9049795809156300182` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128151 has offset 1).

The definition of A128151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128151.P13867006778483750203

`(n+3-n²%(∑[char[∑[n]]]+n))%A193974(n)`
-/

namespace A128151.P13867006778483750203
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 3 : ℤ) - ((n ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℕ) : ℤ)) (A193974 n)

end

end A128151.P13867006778483750203

namespace A128151

/-- `(n+3-n²%(∑[char[∑[n]]]+n))%A193974(n)` -/
def P13867006778483750203.Spec : Prop :=
  ∀ n, P13867006778483750203.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P12777176395496322486

`A128219(n+1)+A048151(n+1)`
-/

namespace A128151.P12777176395496322486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128219 (n + 1) + A048151 (n + 1)

end

end A128151.P12777176395496322486

namespace A128151

/-- `A128219(n+1)+A048151(n+1)` -/
def P12777176395496322486.Spec : Prop :=
  ∀ n, P12777176395496322486.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P9049795809156300182

`A051340(n)+2*A048151(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128151

/-- `A051340(n)+2*A048151(n+1)` -/
def P9049795809156300182.Spec : Prop :=
  ∀ n, P9049795809156300182.a n = A128151 (n + 1)

theorem P9049795809156300182.correct : P9049795809156300182.Spec := by
  intro n
  simp only [A128151, Nat.add_sub_cancel]

end A128151

/-! ## A128151.P15705286884846511897

`2*A128219(n+1)-A051340(n)`
-/

namespace A128151.P15705286884846511897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128219 (n + 1) - A051340 n

end

end A128151.P15705286884846511897

namespace A128151

/-- `2*A128219(n+1)-A051340(n)` -/
def P15705286884846511897.Spec : Prop :=
  ∀ n, P15705286884846511897.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P5524936599186264382

`A002260(n+2)+A134199(n)-A134082(n)`
-/

namespace A128151.P5524936599186264382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 2) + (A134199 n - A134082 n)

end

end A128151.P5524936599186264382

namespace A128151

/-- `A002260(n+2)+A134199(n)-A134082(n)` -/
def P5524936599186264382.Spec : Prop :=
  ∀ n, P5524936599186264382.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P4211641247152485964

`A002260(n+1)+A002260(n+2)-A023531(n)`
-/

namespace A128151.P4211641247152485964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A002260 (n + 2) - A023531 n)

end

end A128151.P4211641247152485964

namespace A128151

/-- `A002260(n+1)+A002260(n+2)-A023531(n)` -/
def P4211641247152485964.Spec : Prop :=
  ∀ n, P4211641247152485964.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P3143711128536919134

`A134868(n+1)+A002260(n+2)-A103451(n)`
-/

namespace A128151.P3143711128536919134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1) + (A002260 (n + 2) - A103451 n)

end

end A128151.P3143711128536919134

namespace A128151

/-- `A134868(n+1)+A002260(n+2)-A103451(n)` -/
def P3143711128536919134.Spec : Prop :=
  ∀ n, P3143711128536919134.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P906846080649692806

`A002260(n+1)+A002260(n+2)*A023532(n)`
-/

namespace A128151.P906846080649692806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A002260 (n + 2) * A023532 n

end

end A128151.P906846080649692806

namespace A128151

/-- `A002260(n+1)+A002260(n+2)*A023532(n)` -/
def P906846080649692806.Spec : Prop :=
  ∀ n, P906846080649692806.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P14123667278285926926

`A002260(n+1)+A002260(n+2)-A010054(n+1)`
-/

namespace A128151.P14123667278285926926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A002260 (n + 2) - A010054 (n + 1))

end

end A128151.P14123667278285926926

namespace A128151

/-- `A002260(n+1)+A002260(n+2)-A010054(n+1)` -/
def P14123667278285926926.Spec : Prop :=
  ∀ n, P14123667278285926926.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P10758035382790054700

`A135151(n+1)+A002260(n+2)-A128174(n+1)`
-/

namespace A128151.P10758035382790054700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135151 (n + 1) + (A002260 (n + 2) - A128174 (n + 1))

end

end A128151.P10758035382790054700

namespace A128151

/-- `A135151(n+1)+A002260(n+2)-A128174(n+1)` -/
def P10758035382790054700.Spec : Prop :=
  ∀ n, P10758035382790054700.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P17981537495623278203

`comp[∑[n]]-n-Δ[A059036(n)]`
-/

namespace A128151.P17981537495623278203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - (f3 (n + 1) - f3 n)

end

end A128151.P17981537495623278203

namespace A128151

/-- `comp[∑[n]]-n-Δ[A059036(n)]` -/
def P17981537495623278203.Spec : Prop :=
  ∀ n, P17981537495623278203.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P3196625145675218003

`A056944(n+1)+char[comp[∑[n-1]]]`
-/

namespace A128151.P3196625145675218003
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056944 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128151.P3196625145675218003

namespace A128151

/-- `A056944(n+1)+char[comp[∑[n-1]]]` -/
def P3196625145675218003.Spec : Prop :=
  ∀ n, P3196625145675218003.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P15889308400296709370

`comp[∑[n]]-n-Δ[A003991(n+1)]`
-/

namespace A128151.P15889308400296709370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) - (f3 (n + 1) - f3 n)

end

end A128151.P15889308400296709370

namespace A128151

/-- `comp[∑[n]]-n-Δ[A003991(n+1)]` -/
def P15889308400296709370.Spec : Prop :=
  ∀ n, P15889308400296709370.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P16765896381200465091

`comp[∑[n]]-n-Δ[A098352(n+1)/4]`
-/

namespace A128151.P16765896381200465091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 4

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ) - (f3 (n + 1) - f3 n)

end

end A128151.P16765896381200465091

namespace A128151

/-- `comp[∑[n]]-n-Δ[A098352(n+1)/4]` -/
def P16765896381200465091.Spec : Prop :=
  ∀ n, P16765896381200465091.a n = (A128151 (n + 1) : ℚ)

end A128151

/-! ## A128151.P2688038666316987702

`n-C(∑[char[∑[n+1]]], 2)+2-A025581(n+1)`
-/

namespace A128151.P2688038666316987702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2 - A025581 (n + 1)

end

end A128151.P2688038666316987702

namespace A128151

/-- `n-C(∑[char[∑[n+1]]], 2)+2-A025581(n+1)` -/
def P2688038666316987702.Spec : Prop :=
  ∀ n, P2688038666316987702.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P14141629159873392374

`n-C(∑[char[∑[n+1]]], 2)+2-log2(A130321(n+1))`
-/

namespace A128151.P14141629159873392374
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2 : ℝ) - Real.logb 2 (A130321 (n + 1) : ℝ)

end

end A128151.P14141629159873392374

namespace A128151

/-- `n-C(∑[char[∑[n+1]]], 2)+2-log2(A130321(n+1))` -/
def P14141629159873392374.Spec : Prop :=
  ∀ n, P14141629159873392374.a n = (A128151 (n + 1) : ℝ)

end A128151

/-! ## A128151.P10653738965679388704

`A051340(n)*A158405(n+2)`
-/

namespace A128151.P10653738965679388704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051340 n * A158405 (n + 2)

end

end A128151.P10653738965679388704

namespace A128151

/-- `A051340(n)*A158405(n+2)` -/
def P10653738965679388704.Spec : Prop :=
  ∀ n, P10653738965679388704.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P736372597369241971

`A108872(n+1)-A025581(n+1)`
-/

namespace A128151.P736372597369241971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) - A025581 (n + 1)

end

end A128151.P736372597369241971

namespace A128151

/-- `A108872(n+1)-A025581(n+1)` -/
def P736372597369241971.Spec : Prop :=
  ∀ n, P736372597369241971.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P7629985901022995021

`A002024(n+1)+A056944(n+1)-A003056(n+1)`
-/

namespace A128151.P7629985901022995021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A056944 (n + 1) - A003056 (n + 1))

end

end A128151.P7629985901022995021

namespace A128151

/-- `A002024(n+1)+A056944(n+1)-A003056(n+1)` -/
def P7629985901022995021.Spec : Prop :=
  ∀ n, P7629985901022995021.a n = A128151 (n + 1)

end A128151

/-! ## A128151.P5496120945564235559

`A002024(n+1)+A002260(n+2)-A193592(n+1)`
-/

namespace A128151.P5496120945564235559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002260 (n + 2) - A193592 (n + 1))

end

end A128151.P5496120945564235559

namespace A128151

/-- `A002024(n+1)+A002260(n+2)-A193592(n+1)` -/
def P5496120945564235559.Spec : Prop :=
  ∀ n, P5496120945564235559.a n = A128151 (n + 1)

end A128151

/-!
# A128153: The number of regular pentagons found by constructing n equally-spaced points on each side of the pentagon and drawing lines parallel to the pentagon sides, as well as lines connecting vertices.

The programs for A128153, the canonical program `A128153.P13130245534919567417` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128153 has offset 0).

The definition of A128153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128153.P13130245534919567417

`∑[ceil(ratio[or(1, n)])+5*n]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128153

/-- `∑[ceil(ratio[or(1, n)])+5*n]` -/
def P13130245534919567417.Spec : Prop :=
  ∀ n, P13130245534919567417.a n = A128153 n

theorem P13130245534919567417.correct : P13130245534919567417.Spec := by
  intro n
  simp only [A128153]

end A128153

/-! ## A128153.P5066841628100432889

`∑[or(1, a(n-2)+9)]` with `a(0)=1, a(1)=8`
-/

namespace A128153.P5066841628100432889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  Nat.lor 1 (f1 (n - 2) + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128153.P5066841628100432889

namespace A128153

/-- `∑[or(1, a(n-2)+9)]` -/
def P5066841628100432889.Spec : Prop :=
  ∀ n, (P5066841628100432889.a n : ℤ) = A128153 n

end A128153

/-! ## A128153.P4226563882675840293

`∑[char[1]+or(1, 5*n+1)]`
-/

namespace A128153.P4226563882675840293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + Nat.lor 1 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128153.P4226563882675840293

namespace A128153

/-- `∑[char[1]+or(1, 5*n+1)]` -/
def P4226563882675840293.Spec : Prop :=
  ∀ n, (P4226563882675840293.a n : ℤ) = A128153 n

end A128153

/-! ## A128153.P4728183287080771567

`∑[∑[floor(a(n-2))]]` with `a(0)=1, a(1)=7, a(2)=3, a(3)=6, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A128153.P4728183287080771567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 3, 6, 4] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128153.P4728183287080771567

namespace A128153

/-- `∑[∑[floor(a(n-2))]]` -/
def P4728183287080771567.Spec : Prop :=
  ∀ n, (P4728183287080771567.a n : ℤ) = A128153 n

end A128153

/-! ## A128153.P15636628993710589622

`∑[∑[7-round(a(n-1)²/12)]]` with `a(0)=1`
-/

namespace A128153.P15636628993710589622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  7 - SequenceMachineLib.roundAway ((f2 (n - 1) ^ 2 : ℚ) / 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128153.P15636628993710589622

namespace A128153

/-- `∑[∑[7-round(a(n-1)²/12)]]` -/
def P15636628993710589622.Spec : Prop :=
  ∀ n, P15636628993710589622.a n = A128153 n

end A128153

/-! ## A128153.P16923746437283399462

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=9, a(2)=20, a(3)=37, a(4)=58`
-/

namespace A128153.P16923746437283399462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 20, 37, 58] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A128153.P16923746437283399462

namespace A128153

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16923746437283399462.Spec : Prop :=
  ∀ n, P16923746437283399462.a n = A128153 n

end A128153

/-! ## A128153.P12693885970188110421

`A266977(n)+A195016(n)`
-/

namespace A128153.P12693885970188110421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + A195016 n

end

end A128153.P12693885970188110421

namespace A128153

/-- `A266977(n)+A195016(n)` -/
def P12693885970188110421.Spec : Prop :=
  ∀ n, P12693885970188110421.a n = A128153 n

end A128153

/-! ## A128153.P14442144045261461920

`A047615(n+1)+A008253(n)`
-/

namespace A128153.P14442144045261461920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (n + 1) + A008253 n

end

end A128153.P14442144045261461920

namespace A128153

/-- `A047615(n+1)+A008253(n)` -/
def P14442144045261461920.Spec : Prop :=
  ∀ n, P14442144045261461920.a n = A128153 n

end A128153

/-! ## A128153.P17126110889491860930

`A105343(n)+A054000(n+1)`
-/

namespace A128153.P17126110889491860930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n + A054000 (n + 1)

end

end A128153.P17126110889491860930

namespace A128153

/-- `A105343(n)+A054000(n+1)` -/
def P17126110889491860930.Spec : Prop :=
  ∀ n, P17126110889491860930.a n = A128153 n

end A128153

/-! ## A128153.P5905725651126450016

`A139595(n)+A134869(n+1)`
-/

namespace A128153.P5905725651126450016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139595 n + A134869 (n + 1)

end

end A128153.P5905725651126450016

namespace A128153

/-- `A139595(n)+A134869(n+1)` -/
def P5905725651126450016.Spec : Prop :=
  ∀ n, P5905725651126450016.a n = A128153 n

end A128153

/-! ## A128153.P4896846026988308451

`A365892(n+1)+A274681(n+1)`
-/

namespace A128153.P4896846026988308451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365892 (n + 1) + A274681 (n + 1)

end

end A128153.P4896846026988308451

namespace A128153

/-- `A365892(n+1)+A274681(n+1)` -/
def P4896846026988308451.Spec : Prop :=
  ∀ n, P4896846026988308451.a n = A128153 n

end A128153

/-! ## A128153.P16423085380925793594

`A116940(2*n)+A105343(n)`
-/

namespace A128153.P16423085380925793594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 (2 * n) + A105343 n

end

end A128153.P16423085380925793594

namespace A128153

/-- `A116940(2*n)+A105343(n)` -/
def P16423085380925793594.Spec : Prop :=
  ∀ n, P16423085380925793594.a n = A128153 n

end A128153

/-! ## A128153.P1179591094748042626

`A183575(2*n+1)+A105343(n)`
-/

namespace A128153.P1179591094748042626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183575 (2 * n + 1) + A105343 n

end

end A128153.P1179591094748042626

namespace A128153

/-- `A183575(2*n+1)+A105343(n)` -/
def P1179591094748042626.Spec : Prop :=
  ∀ n, P1179591094748042626.a n = A128153 n

end A128153

/-! ## A128153.P15351050438672671163

`A000982(n)+A000982(A103517(n))`
-/

namespace A128153.P15351050438672671163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + A000982 (A103517 n).toNat

end

end A128153.P15351050438672671163

namespace A128153

/-- `A000982(n)+A000982(A103517(n))` -/
def P15351050438672671163.Spec : Prop :=
  ∀ n, P15351050438672671163.a n = A128153 n

end A128153

/-!
# A128157: a(n) = least k such that the remainder when 17^k is divided by k is n.

The programs for A128157, there is no canonical definition to state claims against.
-/

/-! ## A128157.P2018960561044993954

`or(n+2, A165780(n!))`
-/

namespace A128157.P2018960561044993954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 2 : ℤ) (A165780 (Nat.factorial n))

end

end A128157.P2018960561044993954

/-!
# A128162: a(n) = 3^n modulo Fibonacci(n).

The programs for A128162, the canonical program `A128162.P13483672336227845714` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128162 has offset 1).

The definition of A128162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128162.P13483672336227845714

`(3^(n+1))%A000045(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A128162

/-- `(3^(n+1))%A000045(n+1)` -/
def P13483672336227845714.Spec : Prop :=
  ∀ n, P13483672336227845714.a n = A128162 (n + 1)

theorem P13483672336227845714.correct : P13483672336227845714.Spec := by
  intro n
  simp only [A128162, Nat.add_sub_cancel]

end A128162

/-! ## A128162.P365732297785352402

`Δ[A007051(n+1)]%A212804(n+2)`
-/

namespace A128162.P365732297785352402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A212804 (n + 2))

end

end A128162.P365732297785352402

namespace A128162

/-- `Δ[A007051(n+1)]%A212804(n+2)` -/
def P365732297785352402.Spec : Prop :=
  ∀ n, P365732297785352402.a n = A128162 (n + 1)

end A128162

/-! ## A128162.P8279849808853149860

`(A301571(n+1)-n)%A212804(n+2)`
-/

namespace A128162.P8279849808853149860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301571 (n + 1) - (n : ℤ)) (A212804 (n + 2))

end

end A128162.P8279849808853149860

namespace A128162

/-- `(A301571(n+1)-n)%A212804(n+2)` -/
def P8279849808853149860.Spec : Prop :=
  ∀ n, P8279849808853149860.a n = A128162 (n + 1)

end A128162

/-! ## A128162.P9178939333259235716

`Δ[A003462(n+1)]%-A000045(n+1)`
-/

namespace A128162.P9178939333259235716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (-A000045 (n + 1))

end

end A128162.P9178939333259235716

namespace A128162

/-- `Δ[A003462(n+1)]%-A000045(n+1)` -/
def P9178939333259235716.Spec : Prop :=
  ∀ n, P9178939333259235716.a n = A128162 (n + 1)

end A128162

/-! ## A128162.P16570714996745518223

`A056449(2*n+1)%Δ[A000045(n+2)]`
-/

namespace A128162.P16570714996745518223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056449 (2 * n + 1)) (f1 (n + 1) - f1 n)

end

end A128162.P16570714996745518223

namespace A128162

/-- `A056449(2*n+1)%Δ[A000045(n+2)]` -/
def P16570714996745518223.Spec : Prop :=
  ∀ n, P16570714996745518223.a n = A128162 (n + 1)

end A128162

/-! ## A128162.P8069714115667231709

`A036561(A000096(n+1))%A236191(n+1)`
-/

namespace A128162.P8069714115667231709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036561 (A000096 (n + 1)).toNat) (A236191 (n + 1))

end

end A128162.P8069714115667231709

namespace A128162

/-- `A036561(A000096(n+1))%A236191(n+1)` -/
def P8069714115667231709.Spec : Prop :=
  ∀ n, P8069714115667231709.a n = A128162 (n + 1)

end A128162

/-! ## A128162.P13151387368606588148

`A175840(∑[n+1])%A212804(n+2)`
-/

namespace A128162.P13151387368606588148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175840 (∑ j ∈ Finset.range (n + 1), f1 j)) (A212804 (n + 2))

end

end A128162.P13151387368606588148

namespace A128162

/-- `A175840(∑[n+1])%A212804(n+2)` -/
def P13151387368606588148.Spec : Prop :=
  ∀ n, P13151387368606588148.a n = A128162 (n + 1)

end A128162

/-! ## A128162.P11941469729747109952

`A027465(∑[n+1])%Δ[A000045(n+2)]`
-/

namespace A128162.P11941469729747109952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027465 (∑ j ∈ Finset.range (n + 1), f1 j)) (f2 (n + 1) - f2 n)

end

end A128162.P11941469729747109952

namespace A128162

/-- `A027465(∑[n+1])%Δ[A000045(n+2)]` -/
def P11941469729747109952.Spec : Prop :=
  ∀ n, P11941469729747109952.a n = A128162 (n + 1)

end A128162

/-!
# A128163: Numbers k such that A128162(k) is prime.

The programs for A128163, there is no canonical definition to state claims against.
-/

/-! ## A128163.P2698511669699434036

`or(A175740(2*(n+2)), A196245(A124401(n+1)))`
-/

namespace A128163.P2698511669699434036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175740 (2 * (n + 2))) (A196245 (A124401 (n + 1)).toNat)

end

end A128163.P2698511669699434036

/-!
# A128164: Least k > 2 such that (n^k - 1)/(n-1) is prime, or 0 if no such prime exists.

The programs for A128164, there is no canonical definition to state claims against.
-/

/-! ## A128164.P7018317984303583166

`A247093(A000124(n)%A095299(n+1))`
-/

namespace A128164.P7018317984303583166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (Int.tmod (A000124 n) (A095299 (n + 1))).toNat

end

end A128164.P7018317984303583166

/-! ## A128164.P6943143218826705645

`A247093(∑[A028310(n)]%A095299(n+1))`
-/

namespace A128164.P6943143218826705645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A095299 (n + 1))).toNat

end

end A128164.P6943143218826705645

/-! ## A128164.P18153391683977694395

`A247093(Δ[A000125(n)]%A095299(n+1))`
-/

namespace A128164.P18153391683977694395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (Int.tmod (f1 (n + 1) - f1 n) (A095299 (n + 1))).toNat

end

end A128164.P18153391683977694395

/-! ## A128164.P4729869205104218615

`A247093(∑[n]+1)`
-/

namespace A128164.P4729869205104218615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A128164.P4729869205104218615

/-! ## A128164.P9037111620442455915

`∑{p}[A247093(A000124(n)), #]`
-/

namespace A128164.P9037111620442455915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247093 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A128164.P9037111620442455915

/-!
# A128165: Numbers k such that k divides 1 plus the sum of the first k primes.

The programs for A128165, there is no canonical definition to state claims against.
-/

/-! ## A128165.P11559460580862510675

`eq[n, A090396(n+1)]+1`
-/

namespace A128165.P11559460580862510675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A128165.P11559460580862510675

/-! ## A128165.P1546831087142984940

`A000720(A233523(n+1))`
-/

namespace A128165.P1546831087142984940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233523 (n + 1)).toNat

end

end A128165.P1546831087142984940

/-! ## A128165.P10049387235113473642

`A061395(p?[A233523(n+1)])`
-/

namespace A128165.P10049387235113473642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128165.P10049387235113473642

/-! ## A128165.P18141616436318770617

`∑{d}[A233523(n+1), A061395(#)]`
-/

namespace A128165.P18141616436318770617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A128165.P18141616436318770617

/-! ## A128165.P11714417258213248217

`A061395(∏{d}[A233523(n+1), #])`
-/

namespace A128165.P11714417258213248217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A128165.P11714417258213248217

/-!
# A128166: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^2 = 1 + A024450(k).

The programs for A128166, there is no canonical definition to state claims against.
-/

/-! ## A128166.P10241639619849836333

`A000720(A233862(n+1))`
-/

namespace A128166.P10241639619849836333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233862 (n + 1)).toNat

end

end A128166.P10241639619849836333

/-! ## A128166.P13803639306970047186

`A061395(p?[A233862(n+1)])`
-/

namespace A128166.P13803639306970047186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128166.P13803639306970047186

/-! ## A128166.P17752672563811260431

`A061395(A233862(C(n+1, n)))`
-/

namespace A128166.P17752672563811260431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A233862 (Nat.choose (n + 1) n)).toNat

end

end A128166.P17752672563811260431

/-! ## A128166.P8495676516315386278

`∑{d}[A233862(n+1), A061395(#)]`
-/

namespace A128166.P8495676516315386278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A128166.P8495676516315386278

/-! ## A128166.P13398703712576490391

`A061395(∏{d}[A233862(n+1), #])`
-/

namespace A128166.P13398703712576490391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A128166.P13398703712576490391

/-!
# A128167: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^3 = 1 + A098999(k).

The programs for A128167, there is no canonical definition to state claims against.
-/

/-! ## A128167.P17440191432856632419

`A000720(A233863(n+1))`
-/

namespace A128167.P17440191432856632419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233863 (n + 1)).toNat

end

end A128167.P17440191432856632419

/-! ## A128167.P9863876467408601368

`A061395(p?[A233863(n+1)])`
-/

namespace A128167.P9863876467408601368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128167.P9863876467408601368

/-! ## A128167.P6147885092203353064

`∑{d}[A233863(n+1), A061395(#)]`
-/

namespace A128167.P6147885092203353064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A128167.P6147885092203353064

/-! ## A128167.P8341301002321451729

`A061395(∑{p}[A233863(n+1), #])`
-/

namespace A128167.P8341301002321451729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A128167.P8341301002321451729

/-! ## A128167.P13646566047386039832

`A061395(∏{p}[A233863(n+1), #])`
-/

namespace A128167.P13646566047386039832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A128167.P13646566047386039832

/-!
# A128168: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^4 = 1 + A122102(k).

The programs for A128168, there is no canonical definition to state claims against.
-/

/-! ## A128168.P3137763639460129559

`A000720(A233893(n+1))`
-/

namespace A128168.P3137763639460129559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233893 (n + 1)).toNat

end

end A128168.P3137763639460129559

/-! ## A128168.P7031289622090691051

`A061395(p?[A233893(n+1)])`
-/

namespace A128168.P7031289622090691051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128168.P7031289622090691051

/-! ## A128168.P2700712136182176485

`∑{d}[A233893(n+1), A061395(#)]`
-/

namespace A128168.P2700712136182176485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A128168.P2700712136182176485

/-! ## A128168.P6332846292738161013

`A061395(∏{d}[A233893(n+1), #])`
-/

namespace A128168.P6332846292738161013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A128168.P6332846292738161013

/-! ## A128168.P17301469798657795878

`A061395(∑{p}[A233893(n+1), #])`
-/

namespace A128168.P17301469798657795878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A128168.P17301469798657795878

/-! ## A128168.P2841498433493410213

`A061395(∏{p}[A233893(n+1), #])`
-/

namespace A128168.P2841498433493410213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A128168.P2841498433493410213

/-! ## A128168.P10693285973945465660

`A061395(A233893(n+1)%A233883(n+1))`
-/

namespace A128168.P10693285973945465660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A233893 (n + 1)) (A233883 (n + 1))).toNat

end

end A128168.P10693285973945465660

/-! ## A128168.P3357901160583522202

`A061395(A233893(n+1))%A000032(n+2)`
-/

namespace A128168.P3357901160583522202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A233893 (n + 1)).toNat) (A000032 (n + 2))

end

end A128168.P3357901160583522202

/-! ## A128168.P2835411409181226740

`A061395(or(A064911(n+1), A233893(n+1)))`
-/

namespace A128168.P2835411409181226740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A064911 (n + 1)) (A233893 (n + 1))).toNat

end

end A128168.P2835411409181226740

/-! ## A128168.P11238433829793848803

`A063377((n+1)²)+A061395(A233893(n+1))`
-/

namespace A128168.P11238433829793848803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 ((n + 1) ^ 2) + A061395 (A233893 (n + 1)).toNat

end

end A128168.P11238433829793848803

/-!
# A128169: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^5 = 1 + A122103(k).

The programs for A128169, there is no canonical definition to state claims against.
-/

/-! ## A128169.P14003321607810402532

`A000720(A234003(n+1))`
-/

namespace A128169.P14003321607810402532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A234003 (n + 1)).toNat

end

end A128169.P14003321607810402532

/-! ## A128169.P17726650211425574552

`A061395(p?[A234003(n+1)])`
-/

namespace A128169.P17726650211425574552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128169.P17726650211425574552

/-! ## A128169.P9688911762577292569

`∑{d}[A234003(n+1), A061395(#)]`
-/

namespace A128169.P9688911762577292569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A128169.P9688911762577292569

/-! ## A128169.P16850338375141444442

`A061395(∏{d}[A234003(n+1), #])`
-/

namespace A128169.P16850338375141444442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A128169.P16850338375141444442

/-! ## A128169.P5551361717687833743

`A061395(∑{p}[A234003(n+1), #])`
-/

namespace A128169.P5551361717687833743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A128169.P5551361717687833743

/-!
# A128170: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^6.

The programs for A128170, there is no canonical definition to state claims against.
-/

/-! ## A128170.P4242884296021781159

`A000720(A233041(n+1))`
-/

namespace A128170.P4242884296021781159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233041 (n + 1)).toNat

end

end A128170.P4242884296021781159

/-! ## A128170.P12807526952579527067

`A061395(p?[A233041(n+1)])`
-/

namespace A128170.P12807526952579527067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128170.P12807526952579527067

/-! ## A128170.P14035167280175959491

`A061395(A233041(C(n+1, n)))`
-/

namespace A128170.P14035167280175959491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A233041 (Nat.choose (n + 1) n)).toNat

end

end A128170.P14035167280175959491

/-! ## A128170.P6181826955386519338

`∑{d}[A233041(n+1), A061395(#)]`
-/

namespace A128170.P6181826955386519338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A128170.P6181826955386519338

/-! ## A128170.P11357578919045380105

`∑{d}[A233041(n+1), A066328(#)]`
-/

namespace A128170.P11357578919045380105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A128170.P11357578919045380105

/-! ## A128170.P8071758190580242579

`A066328(∏{d}[A233041(n+1), #])`
-/

namespace A128170.P8071758190580242579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A128170.P8071758190580242579

/-! ## A128170.P8122530047436244600

`A061395(∑{p}[A233041(n+1), #])`
-/

namespace A128170.P8122530047436244600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A128170.P8122530047436244600

/-! ## A128170.P4482425746074928294

`A061395(A233041(n+1)+A000038(n))`
-/

namespace A128170.P4482425746074928294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A233041 (n + 1) + A000038 n).toNat

end

end A128170.P4482425746074928294

/-! ## A128170.P13759869875138747731

`A061395(A233041(n+1)%A017510(n))`
-/

namespace A128170.P13759869875138747731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A233041 (n + 1)) (A017510 n)).toNat

end

end A128170.P13759869875138747731

/-! ## A128170.P15311542030677574324

`A061395(A233041(n+1))%A173547(n)`
-/

namespace A128170.P15311542030677574324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A233041 (n + 1)).toNat) (A173547 (n + 15))

end

end A128170.P15311542030677574324

/-!
# A128171: Numbers k such that k divides 1 + Sum_{j=1..k} prime(j)^7.

The programs for A128171, there is no canonical definition to state claims against.
-/

/-! ## A128171.P9720107948718232864

`A000720(A233040(n+1))`
-/

namespace A128171.P9720107948718232864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A233040 (n + 1)).toNat

end

end A128171.P9720107948718232864

/-! ## A128171.P741079216567541458

`A061395(p?[A233040(n+1)])`
-/

namespace A128171.P741079216567541458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A128171.P741079216567541458

/-! ## A128171.P12936375289646176479

`∑{d}[A233040(n+1), A061395(#)]`
-/

namespace A128171.P12936375289646176479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A128171.P12936375289646176479

/-! ## A128171.P8555562819655397032

`A061395(∏{d}[A233040(n+1), #])`
-/

namespace A128171.P8555562819655397032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A128171.P8555562819655397032

/-! ## A128171.P18238142490587110259

`A061395(∑{p}[A233040(n+1), #])`
-/

namespace A128171.P18238142490587110259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A128171.P18238142490587110259

/-!
# A128173: Numbers in ternary reflected Gray code order.

The programs for A128173, the canonical program `A128173.P11177856239651542119` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128173 has offset 0).

The definition of A128173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128173.P11177856239651542119

`A244042(n)+2*A244042(A004526(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128173

/-- `A244042(n)+2*A244042(A004526(n))` -/
def P11177856239651542119.Spec : Prop :=
  ∀ n, P11177856239651542119.a n = A128173 n

theorem P11177856239651542119.correct : P11177856239651542119.Spec := by
  intro n
  simp only [A128173]

end A128173

/-! ## A128173.P3728995293297430868

`A244042(n)+A005843(A244042(A004526(n)))`
-/

namespace A128173.P3728995293297430868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 n + A005843 (A244042 (A004526 n).toNat).toNat

end

end A128173.P3728995293297430868

namespace A128173

/-- `A244042(n)+A005843(A244042(A004526(n)))` -/
def P3728995293297430868.Spec : Prop :=
  ∀ n, P3728995293297430868.a n = A128173 n

end A128173

/-! ## A128173.P9366916871674854850

`A244042(A007494(n))-A343766(n)`
-/

namespace A128173.P9366916871674854850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A007494 n).toNat - A343766 n

end

end A128173.P9366916871674854850

namespace A128173

/-- `A244042(A007494(n))-A343766(n)` -/
def P9366916871674854850.Spec : Prop :=
  ∀ n, P9366916871674854850.a n = A128173 n

end A128173

/-! ## A128173.P13785602590530248158

`A004396(A338242(record[A064429(n)]))`
-/

namespace A128173.P13785602590530248158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A338242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A128173.P13785602590530248158

namespace A128173

/-- `A004396(A338242(record[A064429(n)]))` -/
def P13785602590530248158.Spec : Prop :=
  ∀ n, P13785602590530248158.a n = A128173 n

end A128173

/-! ## A128173.P10579526016406610517

`A004396(A338242(A110654(n)+n))`
-/

namespace A128173.P10579526016406610517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A338242 (A110654 n + (n : ℤ)).toNat).toNat

end

end A128173.P10579526016406610517

namespace A128173

/-- `A004396(A338242(A110654(n)+n))` -/
def P10579526016406610517.Spec : Prop :=
  ∀ n, P10579526016406610517.a n = A128173 n

end A128173

/-! ## A128173.P5562851285533143828

`A004396(A338242(A110654(3*n)))`
-/

namespace A128173.P5562851285533143828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A338242 (A110654 (3 * n)).toNat).toNat

end

end A128173.P5562851285533143828

namespace A128173

/-- `A004396(A338242(A110654(3*n)))` -/
def P5562851285533143828.Spec : Prop :=
  ∀ n, P5562851285533143828.a n = A128173 n

end A128173

/-! ## A128173.P10333767876202000976

`A163528(A338086(n))`
-/

namespace A128173.P10333767876202000976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A338086 n).toNat

end

end A128173.P10333767876202000976

namespace A128173

/-- `A163528(A338086(n))` -/
def P10333767876202000976.Spec : Prop :=
  ∀ n, P10333767876202000976.a n = A128173 n

end A128173

/-! ## A128173.P16064697431139880996

`A163528(4*A037314(n))`
-/

namespace A128173.P16064697431139880996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (4 * A037314 n).toNat

end

end A128173.P16064697431139880996

namespace A128173

/-- `A163528(4*A037314(n))` -/
def P16064697431139880996.Spec : Prop :=
  ∀ n, P16064697431139880996.a n = A128173 n

end A128173

/-! ## A128173.P1546599800295024400

`A163529(4*A037314(n))`
-/

namespace A128173.P1546599800295024400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (4 * A037314 n).toNat

end

end A128173.P1546599800295024400

namespace A128173

/-- `A163529(4*A037314(n))` -/
def P1546599800295024400.Spec : Prop :=
  ∀ n, P1546599800295024400.a n = A128173 n

end A128173

/-! ## A128173.P15636276876506066412

`A163529(lcm(2, A338086(n)))`
-/

namespace A128173.P15636276876506066412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (Int.lcm 2 (A338086 n))

end

end A128173.P15636276876506066412

namespace A128173

/-- `A163529(lcm(2, A338086(n)))` -/
def P15636276876506066412.Spec : Prop :=
  ∀ n, P15636276876506066412.a n = A128173 n

end A128173

/-! ## A128173.P13186745526154837356

`A163529(A338086(2*n-n))`
-/

namespace A128173.P13186745526154837356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A338086 (2 * n - n)).toNat

end

end A128173.P13186745526154837356

namespace A128173

/-- `A163529(A338086(2*n-n))` -/
def P13186745526154837356.Spec : Prop :=
  ∀ n, P13186745526154837356.a n = A128173 n

end A128173

/-! ## A128173.P15750588744838048180

`A163529(A338086(n)+1)`
-/

namespace A128173.P15750588744838048180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A338086 n + 1).toNat

end

end A128173.P15750588744838048180

namespace A128173

/-- `A163529(A338086(n)+1)` -/
def P15750588744838048180.Spec : Prop :=
  ∀ n, P15750588744838048180.a n = A128173 n

end A128173

/-!
# A128174: Transform, (1,0,1,...) in every column.

The programs for A128174, the canonical program `A128174.P2876198316238842196` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128174 has offset 1).

The definition of A128174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128174.P4160909472560893897

`comp[∑[4*n]]%2`
-/

namespace A128174.P4160909472560893897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A128174.P4160909472560893897

namespace A128174

/-- `comp[∑[4*n]]%2` -/
def P4160909472560893897.Spec : Prop :=
  ∀ n, (P4160909472560893897.a n : ℤ) = A128174 (n + 1)

end A128174

/-! ## A128174.P14696414615518751814

`and(1, comp[∑[4*n]])`
-/

namespace A128174.P14696414615518751814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128174.P14696414615518751814

namespace A128174

/-- `and(1, comp[∑[4*n]])` -/
def P14696414615518751814.Spec : Prop :=
  ∀ n, (P14696414615518751814.a n : ℤ) = A128174 (n + 1)

end A128174

/-! ## A128174.P14919228519798404532

`2-gcd(2, comp[∑[4*n]])`
-/

namespace A128174.P14919228519798404532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)

end

end A128174.P14919228519798404532

namespace A128174

/-- `2-gcd(2, comp[∑[4*n]])` -/
def P14919228519798404532.Spec : Prop :=
  ∀ n, P14919228519798404532.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P5614697066169308038

`char[2*n-1-round(sqrt(n))]`
-/

namespace A128174.P5614697066169308038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1 - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A128174.P5614697066169308038

namespace A128174

/-- `char[2*n-1-round(sqrt(n))]` -/
def P5614697066169308038.Spec : Prop :=
  ∀ n, (P5614697066169308038.a n : ℤ) = A128174 (n + 1)

end A128174

/-! ## A128174.P8425015530739007801

`(comp[(n+1)*2*n]%2)^n`
-/

namespace A128174.P8425015530739007801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) ^ n

end

end A128174.P8425015530739007801

namespace A128174

/-- `(comp[(n+1)*2*n]%2)^n` -/
def P8425015530739007801.Spec : Prop :=
  ∀ n, (P8425015530739007801.a n : ℤ) = A128174 (n + 1)

end A128174

/-! ## A128174.P6727517566347309577

`abs((C(comp[∑[n]]-n, 2)-n)%2)`
-/

namespace A128174.P6727517566347309577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) 2|

end

end A128174.P6727517566347309577

namespace A128174

/-- `abs((C(comp[∑[n]]-n, 2)-n)%2)` -/
def P6727517566347309577.Spec : Prop :=
  ∀ n, P6727517566347309577.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P10247148400559891446

`((C(comp[∑[n]]-n, 2)+n)%2)²`
-/

namespace A128174.P10247148400559891446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n) % 2) ^ 2

end

end A128174.P10247148400559891446

namespace A128174

/-- `((C(comp[∑[n]]-n, 2)+n)%2)²` -/
def P10247148400559891446.Spec : Prop :=
  ∀ n, (P10247148400559891446.a n : ℤ) = A128174 (n + 1)

end A128174

/-! ## A128174.P10211408197397032979

`((-1)^∑[∪[2*n+1, n²]]+1)/2`
-/

namespace A128174.P10211408197397032979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2

end

end A128174.P10211408197397032979

namespace A128174

/-- `((-1)^∑[∪[2*n+1, n²]]+1)/2` -/
def P10211408197397032979.Spec : Prop :=
  ∀ n, P10211408197397032979.a n = (A128174 (n + 1) : ℚ)

end A128174

/-! ## A128174.P5164001588894728540

`abs(A369736(n))`
-/

namespace A128174.P5164001588894728540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A369736 n|

end

end A128174.P5164001588894728540

namespace A128174

/-- `abs(A369736(n))` -/
def P5164001588894728540.Spec : Prop :=
  ∀ n, P5164001588894728540.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P8868601441087991209

`log2(gcd(2, A025581(n)))`
-/

namespace A128174.P8868601441087991209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A025581 n) : ℝ)

end

end A128174.P8868601441087991209

namespace A128174

/-- `log2(gcd(2, A025581(n)))` -/
def P8868601441087991209.Spec : Prop :=
  ∀ n, P8868601441087991209.a n = (A128174 (n + 1) : ℝ)

end A128174

/-! ## A128174.P5242944349032637501

`ceil(1/A080246(n))`
-/

namespace A128174.P5242944349032637501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A080246 n : ℚ)⌉

end

end A128174.P5242944349032637501

namespace A128174

/-- `ceil(1/A080246(n))` -/
def P5242944349032637501.Spec : Prop :=
  ∀ n, P5242944349032637501.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P16116078233702903194

`ceil(1/A110814(n))`
-/

namespace A128174.P16116078233702903194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A110814 n : ℚ)⌉

end

end A128174.P16116078233702903194

namespace A128174

/-- `ceil(1/A110814(n))` -/
def P16116078233702903194.Spec : Prop :=
  ∀ n, P16116078233702903194.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P17777032425013479725

`ceil(1/A128414(n))`
-/

namespace A128174.P17777032425013479725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A128414 n : ℚ)⌉

end

end A128174.P17777032425013479725

namespace A128174

/-- `ceil(1/A128414(n))` -/
def P17777032425013479725.Spec : Prop :=
  ∀ n, P17777032425013479725.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P16933166575535802504

`ceil(1/A248811(n))`
-/

namespace A128174.P16933166575535802504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A248811 n : ℚ)⌉

end

end A128174.P16933166575535802504

namespace A128174

/-- `ceil(1/A248811(n))` -/
def P16933166575535802504.Spec : Prop :=
  ∀ n, P16933166575535802504.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P2876198316238842196

`ceil(A097807(n)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128174

/-- `ceil(A097807(n)/2)` -/
def P2876198316238842196.Spec : Prop :=
  ∀ n, P2876198316238842196.a n = A128174 (n + 1)

theorem P2876198316238842196.correct : P2876198316238842196.Spec := by
  intro n
  simp only [A128174, Nat.add_sub_cancel]

end A128174

/-! ## A128174.P6560230831462743346

`2-A131406(n+1)`
-/

namespace A128174.P6560230831462743346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A131406 (n + 1)

end

end A128174.P6560230831462743346

namespace A128174

/-- `2-A131406(n+1)` -/
def P6560230831462743346.Spec : Prop :=
  ∀ n, P6560230831462743346.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P2477936228888297184

`A053117(n*a(n-1))²` with `a(0)=1`
-/

namespace A128174.P2477936228888297184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053117 ((n : ℤ) * a (n - 1)).toNat ^ 2

end

end A128174.P2477936228888297184

namespace A128174

/-- `A053117(n*a(n-1))²` -/
def P2477936228888297184.Spec : Prop :=
  ∀ n, P2477936228888297184.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P1115906957369305512

`A000035(A082233(n))`
-/

namespace A128174.P1115906957369305512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A082233 n).toNat

end

end A128174.P1115906957369305512

namespace A128174

/-- `A000035(A082233(n))` -/
def P1115906957369305512.Spec : Prop :=
  ∀ n, P1115906957369305512.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P14444688642483132890

`A000035(A104571(n))`
-/

namespace A128174.P14444688642483132890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A104571 n).toNat

end

end A128174.P14444688642483132890

namespace A128174

/-- `A000035(A104571(n))` -/
def P14444688642483132890.Spec : Prop :=
  ∀ n, P14444688642483132890.a n = A128174 (n + 1)

end A128174

/-! ## A128174.P11272011124832115481

`A000035(A004736(n+1))`
-/

namespace A128174.P11272011124832115481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004736 (n + 1)).toNat

end

end A128174.P11272011124832115481

namespace A128174

/-- `A000035(A004736(n+1))` -/
def P11272011124832115481.Spec : Prop :=
  ∀ n, P11272011124832115481.a n = A128174 (n + 1)

end A128174

/-!
# A128175: Binomial transform of A128174.

The programs for A128175, the canonical program `A128175.P7586382992691236717` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128175 has offset 1).

The definition of A128175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128175.P14872850660534944371

`A055248(n-round(sqrt(2*n)))`
-/

namespace A128175.P14872850660534944371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A128175.P14872850660534944371

namespace A128175

/-- `A055248(n-round(sqrt(2*n)))` -/
def P14872850660534944371.Spec : Prop :=
  ∀ n, P14872850660534944371.a n = A128175 (n + 1)

end A128175

/-! ## A128175.P5407953499975362694

`A134318(n)/A232089(n)`
-/

namespace A128175.P5407953499975362694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134318 n : ℚ) / (A232089 n : ℚ)

end

end A128175.P5407953499975362694

namespace A128175

/-- `A134318(n)/A232089(n)` -/
def P5407953499975362694.Spec : Prop :=
  ∀ n, P5407953499975362694.a n = (A128175 (n + 1) : ℚ)

end A128175

/-! ## A128175.P3524587884953962267

`(A097805(n)+A055248(n))/2`
-/

namespace A128175.P3524587884953962267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097805 n + A055248 n : ℚ) / 2

end

end A128175.P3524587884953962267

namespace A128175

/-- `(A097805(n)+A055248(n))/2` -/
def P3524587884953962267.Spec : Prop :=
  ∀ n, P3524587884953962267.a n = (A128175 (n + 1) : ℚ)

end A128175

/-! ## A128175.P6299703448844438386

`gcd(A133729(n+1), A134318(n))`
-/

namespace A128175.P6299703448844438386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133729 (n + 1)) (A134318 n)

end

end A128175.P6299703448844438386

namespace A128175

/-- `gcd(A133729(n+1), A134318(n))` -/
def P6299703448844438386.Spec : Prop :=
  ∀ n, (P6299703448844438386.a n : ℤ) = A128175 (n + 1)

end A128175

/-! ## A128175.P10203837831278734673

`A128181(n+1)/A002260(n+1)`
-/

namespace A128175.P10203837831278734673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128181 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A128175.P10203837831278734673

namespace A128175

/-- `A128181(n+1)/A002260(n+1)` -/
def P10203837831278734673.Spec : Prop :=
  ∀ n, P10203837831278734673.a n = (A128175 (n + 1) : ℚ)

end A128175

/-! ## A128175.P1002251082114822673

`A133729(n+1)/A158405(n+1)`
-/

namespace A128175.P1002251082114822673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133729 (n + 1) : ℚ) / (A158405 (n + 1) : ℚ)

end

end A128175.P1002251082114822673

namespace A128175

/-- `A133729(n+1)/A158405(n+1)` -/
def P1002251082114822673.Spec : Prop :=
  ∀ n, P1002251082114822673.a n = (A128175 (n + 1) : ℚ)

end A128175

/-! ## A128175.P17661458212338508369

`(A129689(n+1)+A007318(n))/2`
-/

namespace A128175.P17661458212338508369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129689 (n + 1) + A007318 n : ℚ) / 2

end

end A128175.P17661458212338508369

namespace A128175

/-- `(A129689(n+1)+A007318(n))/2` -/
def P17661458212338508369.Spec : Prop :=
  ∀ n, P17661458212338508369.a n = (A128175 (n + 1) : ℚ)

end A128175

/-! ## A128175.P7586382992691236717

`A097805(n)+A137688(n)-∑[A097805(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A128175

/-- `A097805(n)+A137688(n)-∑[A097805(n)]` -/
def P7586382992691236717.Spec : Prop :=
  ∀ n, P7586382992691236717.a n = A128175 (n + 1)

theorem P7586382992691236717.correct : P7586382992691236717.Spec := by
  intro n
  simp only [A128175, Nat.add_sub_cancel]

end A128175

/-! ## A128175.P6858077930258151035

`A193820(∑[2*n]%comp[∑[n]])`
-/

namespace A128175.P6858077930258151035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A128175.P6858077930258151035

namespace A128175

/-- `A193820(∑[2*n]%comp[∑[n]])` -/
def P6858077930258151035.Spec : Prop :=
  ∀ n, P6858077930258151035.a n = A128175 (n + 1)

end A128175

/-! ## A128175.P9485008455183443476

`A193820(∑[char[∑[n]]]²-(n+1))`
-/

namespace A128175.P9485008455183443476
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A128175.P9485008455183443476

namespace A128175

/-- `A193820(∑[char[∑[n]]]²-(n+1))` -/
def P9485008455183443476.Spec : Prop :=
  ∀ n, P9485008455183443476.a n = A128175 (n + 1)

end A128175

/-! ## A128175.P17910454763251264166

`∑{d}[A193820(A061579(n)), A000010(#)]`
-/

namespace A128175.P17910454763251264166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193820 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A128175.P17910454763251264166

namespace A128175

/-- `∑{d}[A193820(A061579(n)), A000010(#)]` -/
def P17910454763251264166.Spec : Prop :=
  ∀ n, P17910454763251264166.a n = A128175 (n + 1)

end A128175

/-! ## A128175.P10524118476243530310

`A004525(A129689(n+1)+A007318(n))`
-/

namespace A128175.P10524118476243530310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A129689 (n + 1) + A007318 n).toNat

end

end A128175.P10524118476243530310

namespace A128175

/-- `A004525(A129689(n+1)+A007318(n))` -/
def P10524118476243530310.Spec : Prop :=
  ∀ n, P10524118476243530310.a n = A128175 (n + 1)

end A128175

/-! ## A128175.P10273273007165218145

`A152271(A129689(n+1)+A007318(n)-1)`
-/

namespace A128175.P10273273007165218145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A129689 (n + 1) + (A007318 n - 1)).toNat

end

end A128175.P10273273007165218145

namespace A128175

/-- `A152271(A129689(n+1)+A007318(n)-1)` -/
def P10273273007165218145.Spec : Prop :=
  ∀ n, P10273273007165218145.a n = A128175 (n + 1)

end A128175

/-!
# A128176: A128174 * A007318.

The programs for A128176, there is no canonical definition to state claims against.
-/

/-! ## A128176.P1430967117888123222

`A248345(n)/A140756(n+1)`
-/

namespace A128176.P1430967117888123222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248345 n : ℚ) / (A140756 (n + 1) : ℚ)

end

end A128176.P1430967117888123222

/-! ## A128176.P3128641014163871211

`(A129690(n+1)+A007318(n))/2`
-/

namespace A128176.P3128641014163871211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129690 (n + 1) + A007318 n : ℚ) / 2

end

end A128176.P3128641014163871211

/-! ## A128176.P2617819112842066436

`A007318(n+1)+A007318(n)-A135229(n+1)`
-/

namespace A128176.P2617819112842066436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A007318 n - A135229 (n + 1))

end

end A128176.P2617819112842066436

/-! ## A128176.P13960126021705061648

`A135228(n+1)+A091597(n)-A091597(n+1)`
-/

namespace A128176.P13960126021705061648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135228 (n + 1) + (A091597 n - A091597 (n + 1))

end

end A128176.P13960126021705061648

/-! ## A128176.P16349783084574826020

`A035317(A061579(n))`
-/

namespace A128176.P16349783084574826020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A061579 n).toNat

end

end A128176.P16349783084574826020

/-! ## A128176.P12814982617592338337

`A035317(A038722(n+1)-1)`
-/

namespace A128176.P12814982617592338337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A038722 (n + 1) - 1).toNat

end

end A128176.P12814982617592338337

/-! ## A128176.P13703609612412720612

`A035317(A038722(n+2))`
-/

namespace A128176.P13703609612412720612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A038722 (n + 2)).toNat

end

end A128176.P13703609612412720612

/-! ## A128176.P13091102929492849863

`A059260(comp[∑[n]])`
-/

namespace A128176.P13091102929492849863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128176.P13091102929492849863

/-! ## A128176.P4616934665554226105

`A135228(comp[∑[n]])`
-/

namespace A128176.P4616934665554226105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135228 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128176.P4616934665554226105

/-! ## A128176.P11825125581275880630

`A135229(comp[∑[n]])`
-/

namespace A128176.P11825125581275880630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135229 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128176.P11825125581275880630

/-! ## A128176.P1690516962334192954

`A135230(comp[∑[n]])`
-/

namespace A128176.P1690516962334192954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135230 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A128176.P1690516962334192954

/-! ## A128176.P5570492436476427276

`A059259(A099375(n)+n)`
-/

namespace A128176.P5570492436476427276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (A099375 n + (n : ℤ)).toNat

end

end A128176.P5570492436476427276

/-!
# A128177: A128174 * A004736 as infinite lower triangular matrices.

The programs for A128177, the canonical program `A128177.P4062566833816821859` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128177 has offset 1).

The definition of A128177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128177.P13420001802425938505

`floor(((C(comp[∑[n]]-n, 2)+1-n)/2)²)`
-/

namespace A128177.P13420001802425938505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + 1 : ℤ) - (n : ℤ) : ℚ) / 2) ^ 2⌋

end

end A128177.P13420001802425938505

namespace A128177

/-- `floor(((C(comp[∑[n]]-n, 2)+1-n)/2)²)` -/
def P13420001802425938505.Spec : Prop :=
  ∀ n, P13420001802425938505.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P14621260635994605624

`round(((C(comp[∑[n]]-n, 2)-n+1)/2)²)`
-/

namespace A128177.P14621260635994605624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1 : ℚ) / 2) ^ 2)

end

end A128177.P14621260635994605624

namespace A128177

/-- `round(((C(comp[∑[n]]-n, 2)-n+1)/2)²)` -/
def P14621260635994605624.Spec : Prop :=
  ∀ n, P14621260635994605624.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P4062566833816821859

`floor((A025581(n)/2+1)²)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A128177

/-- `floor((A025581(n)/2+1)²)` -/
def P4062566833816821859.Spec : Prop :=
  ∀ n, P4062566833816821859.a n = A128177 (n + 1)

theorem P4062566833816821859.correct : P4062566833816821859.Spec := by
  intro n
  simp only [A128177, Nat.add_sub_cancel]

end A128177

/-! ## A128177.P62586388996773640

`floor(((A004736(n+1)+1)/2)²)`
-/

namespace A128177.P62586388996773640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A004736 (n + 1) + 1 : ℚ) / 2) ^ 2⌋

end

end A128177.P62586388996773640

namespace A128177

/-- `floor(((A004736(n+1)+1)/2)²)` -/
def P62586388996773640.Spec : Prop :=
  ∀ n, P62586388996773640.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P13074678041461507797

`A002620(C(comp[∑[n]]-n, 2)-n+1)`
-/

namespace A128177.P13074678041461507797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A128177.P13074678041461507797

namespace A128177

/-- `A002620(C(comp[∑[n]]-n, 2)-n+1)` -/
def P13074678041461507797.Spec : Prop :=
  ∀ n, P13074678041461507797.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P12172012129412190180

`A024206(C(comp[∑[n]]-n, 2)-n)+1`
-/

namespace A128177.P12172012129412190180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + 1

end

end A128177.P12172012129412190180

namespace A128177

/-- `A024206(C(comp[∑[n]]-n, 2)-n)+1` -/
def P12172012129412190180.Spec : Prop :=
  ∀ n, P12172012129412190180.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P15898699777051229624

`A076921(C(comp[∑[n]]-n, 2)-n+1)`
-/

namespace A128177.P15898699777051229624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A128177.P15898699777051229624

namespace A128177

/-- `A076921(C(comp[∑[n]]-n, 2)-n+1)` -/
def P15898699777051229624.Spec : Prop :=
  ∀ n, P15898699777051229624.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P7798217264120707891

`A002620(C(comp[∑[n]]-n, 2)-(n-1))`
-/

namespace A128177.P7798217264120707891
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - ((n : ℤ) - 1)).toNat

end

end A128177.P7798217264120707891

namespace A128177

/-- `A002620(C(comp[∑[n]]-n, 2)-(n-1))` -/
def P7798217264120707891.Spec : Prop :=
  ∀ n, P7798217264120707891.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P17639366153639300024

`A008642(2*(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A128177.P17639366153639300024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))).toNat

end

end A128177.P17639366153639300024

namespace A128177

/-- `A008642(2*(C(comp[∑[n]]-n, 2)-(n+1)))` -/
def P17639366153639300024.Spec : Prop :=
  ∀ n, P17639366153639300024.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P4029319764220132306

`A008838(4*(C(comp[∑[n]]-n, 2)-n+1))`
-/

namespace A128177.P4029319764220132306
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008838 (4 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) + 1)).toNat

end

end A128177.P4029319764220132306

namespace A128177

/-- `A008838(4*(C(comp[∑[n]]-n, 2)-n+1))` -/
def P4029319764220132306.Spec : Prop :=
  ∀ n, P4029319764220132306.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P14678667850895306664

`A008642(A099375(n))`
-/

namespace A128177.P14678667850895306664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A099375 n).toNat

end

end A128177.P14678667850895306664

namespace A128177

/-- `A008642(A099375(n))` -/
def P14678667850895306664.Spec : Prop :=
  ∀ n, P14678667850895306664.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P16878201521062787693

`A087811(A004736(n+1))`
-/

namespace A128177.P16878201521062787693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A004736 (n + 1)).toNat

end

end A128177.P16878201521062787693

namespace A128177

/-- `A087811(A004736(n+1))` -/
def P16878201521062787693.Spec : Prop :=
  ∀ n, P16878201521062787693.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P12283629204611935200

`A008642(A185782(n+1))`
-/

namespace A128177.P12283629204611935200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A185782 (n + 1)).toNat

end

end A128177.P12283629204611935200

namespace A128177

/-- `A008642(A185782(n+1))` -/
def P12283629204611935200.Spec : Prop :=
  ∀ n, P12283629204611935200.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P2945207442008501122

`A086159(A143971(n+1))`
-/

namespace A128177.P2945207442008501122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086159 (A143971 (n + 1)).toNat

end

end A128177.P2945207442008501122

namespace A128177

/-- `A086159(A143971(n+1))` -/
def P2945207442008501122.Spec : Prop :=
  ∀ n, P2945207442008501122.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P2802019907537561305

`A002620(A025581(n)+2)`
-/

namespace A128177.P2802019907537561305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A025581 n + 2).toNat

end

end A128177.P2802019907537561305

namespace A128177

/-- `A002620(A025581(n)+2)` -/
def P2802019907537561305.Spec : Prop :=
  ∀ n, P2802019907537561305.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P15331791026300556877

`A087811(1-∑[A167407(n)])`
-/

namespace A128177.P15331791026300556877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128177.P15331791026300556877

namespace A128177

/-- `A087811(1-∑[A167407(n)])` -/
def P15331791026300556877.Spec : Prop :=
  ∀ n, P15331791026300556877.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P2041152474478198751

`A002620(A004736(n+1)+1)`
-/

namespace A128177.P2041152474478198751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004736 (n + 1) + 1).toNat

end

end A128177.P2041152474478198751

namespace A128177

/-- `A002620(A004736(n+1)+1)` -/
def P2041152474478198751.Spec : Prop :=
  ∀ n, P2041152474478198751.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P17163919043204841309

`A205400(n+1)-A143902(n+1)`
-/

namespace A128177.P17163919043204841309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205400 (n + 1) - A143902 (n + 1)

end

end A128177.P17163919043204841309

namespace A128177

/-- `A205400(n+1)-A143902(n+1)` -/
def P17163919043204841309.Spec : Prop :=
  ∀ n, P17163919043204841309.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P5291771665175349493

`A002620(A004202(n+1)-2*n)`
-/

namespace A128177.P5291771665175349493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004202 (n + 1) - (2 * n : ℤ)).toNat

end

end A128177.P5291771665175349493

namespace A128177

/-- `A002620(A004202(n+1)-2*n)` -/
def P5291771665175349493.Spec : Prop :=
  ∀ n, P5291771665175349493.a n = A128177 (n + 1)

end A128177

/-! ## A128177.P2160879544685253949

`floor(A055461(comp[∑[n]])/4)`
-/

namespace A128177.P2160879544685253949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055461 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 4⌋

end

end A128177.P2160879544685253949

namespace A128177

/-- `floor(A055461(comp[∑[n]])/4)` -/
def P2160879544685253949.Spec : Prop :=
  ∀ n, P2160879544685253949.a n = A128177 (n + 1)

end A128177

/-!
# A128178: a(n) = A007376(8n+3).

The programs for A128178, there is no canonical definition to state claims against.
-/

/-! ## A128178.P13752313044275220622

`A007376(8*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128178.P13752313044275220622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (8 * n + 3)

end

end A128178.P13752313044275220622

/-! ## A128178.P5732028176190845346

`A007376(A017101(n))%11`
-/

namespace A128178.P5732028176190845346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A017101 n).toNat) 11

end

end A128178.P5732028176190845346

/-! ## A128178.P10585845150019502712

`dr(A007376(Δ[A033991(n)]))`
-/

namespace A128178.P10585845150019502712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033991 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (n + 1) - f1 n).toNat)

end

end A128178.P10585845150019502712

/-! ## A128178.P14052040160593070513

`A127584(2*n)`
-/

namespace A128178.P14052040160593070513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127584 (2 * n)

end

end A128178.P14052040160593070513

/-! ## A128178.P12254342754798460393

`dr(A007376(A004767(2*n)))`
-/

namespace A128178.P12254342754798460393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A004767 (2 * n)).toNat)

end

end A128178.P12254342754798460393

/-! ## A128178.P16800190758285987050

`A033307(8*n+2)`
-/

namespace A128178.P16800190758285987050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (8 * n + 2)

end

end A128178.P16800190758285987050

/-! ## A128178.P3765425552710412985

`A127050(3*n+n+1)`
-/

namespace A128178.P3765425552710412985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127050 (3 * n + (n + 1))

end

end A128178.P3765425552710412985

/-! ## A128178.P15318696915228809065

`dr(A033307(A017089(n)))`
-/

namespace A128178.P15318696915228809065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A017089 n).toNat)

end

end A128178.P15318696915228809065

/-! ## A128178.P5053355599628039291

`dr(A033307(Δ[A002939(n)]))`
-/

namespace A128178.P5053355599628039291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (f1 (n + 1) - f1 n).toNat)

end

end A128178.P5053355599628039291

/-! ## A128178.P8491061876343451062

`dr(A033307(A016825(2*n)))`
-/

namespace A128178.P8491061876343451062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033307 (A016825 (2 * n)).toNat)

end

end A128178.P8491061876343451062

/-! ## A128178.P7481901468685174462

`A065649(8*n+3)%10`
-/

namespace A128178.P7481901468685174462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (8 * n + 3)) 10

end

end A128178.P7481901468685174462

/-! ## A128178.P3874594403177739812

`floor(A136414(8*n+3)/10)`
-/

namespace A128178.P3874594403177739812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136414 (8 * n + 3) : ℚ) / 10⌋

end

end A128178.P3874594403177739812

/-! ## A128178.P11858518897964559134

`A054899(A136414(8*n+3))`
-/

namespace A128178.P11858518897964559134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (8 * n + 3)).toNat

end

end A128178.P11858518897964559134

/-! ## A128178.P3780030657057732569

`A108202(2*(8*n+3))`
-/

namespace A128178.P3780030657057732569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * (8 * n + 3))

end

end A128178.P3780030657057732569

/-! ## A128178.P10151479295762142845

`A108712(A004770(2*n+1))`
-/

namespace A128178.P10151479295762142845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A004770 (2 * n + 1)).toNat

end

end A128178.P10151479295762142845

/-! ## A128178.P15471097972150672074

`A108712(A113770(2*n+1))`
-/

namespace A128178.P15471097972150672074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (A113770 (2 * n + 1)).toNat

end

end A128178.P15471097972150672074

/-! ## A128178.P17170893384670252774

`8*n+4-A098732(8*n+4)`
-/

namespace A128178.P17170893384670252774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 4 : ℤ) - A098732 (8 * n + 4)

end

end A128178.P17170893384670252774

/-!
# A128179: A097807 * A002260.

The programs for A128179, the canonical program `A128179.P5850376553039655428` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128179 has offset 1).

The definition of A128179 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128179.P5850376553039655428

`(1-(-1)^A004736(n+1))*A002260(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128179

/-- `(1-(-1)^A004736(n+1))*A002260(n+1)/2` -/
def P5850376553039655428.Spec : Prop :=
  ∀ n, P5850376553039655428.a n = (A128179 (n + 1) : ℚ)

end A128179

/-! ## A128179.P1631823684799656522

`(1-C(∑[char[∑[n]]], 2)+n)*(2-gcd(2, comp[∑[4*n]]))`
-/

namespace A128179.P1631823684799656522
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n) : ℤ))

end

end A128179.P1631823684799656522

namespace A128179

/-- `(1-C(∑[char[∑[n]]], 2)+n)*(2-gcd(2, comp[∑[4*n]]))` -/
def P1631823684799656522.Spec : Prop :=
  ∀ n, P1631823684799656522.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P15735744059917050633

`ceil(log2(A130125(n)+1))`
-/

namespace A128179.P15735744059917050633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A130125 n + 1 : ℝ)⌉

end

end A128179.P15735744059917050633

namespace A128179

/-- `ceil(log2(A130125(n)+1))` -/
def P15735744059917050633.Spec : Prop :=
  ∀ n, P15735744059917050633.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P17088037255877891300

`ceil(A133728(n+1)/2)`
-/

namespace A128179.P17088037255877891300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A133728 (n + 1) : ℚ) / 2⌉

end

end A128179.P17088037255877891300

namespace A128179

/-- `ceil(A133728(n+1)/2)` -/
def P17088037255877891300.Spec : Prop :=
  ∀ n, P17088037255877891300.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P14891656736601447096

`log2(ceil(2^A140756(n+1)))`
-/

namespace A128179.P14891656736601447096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (⌈(2 : ℚ) ^ (A140756 (n + 1) : ℤ)⌉ : ℝ)

end

end A128179.P14891656736601447096

namespace A128179

/-- `log2(ceil(2^A140756(n+1)))` -/
def P14891656736601447096.Spec : Prop :=
  ∀ n, P14891656736601447096.a n = (A128179 (n + 1) : ℝ)

end A128179

/-! ## A128179.P14867297164823792849

`A001057(A133728(n+1))`
-/

namespace A128179.P14867297164823792849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A133728 (n + 1)).toNat

end

end A128179.P14867297164823792849

namespace A128179

/-- `A001057(A133728(n+1))` -/
def P14867297164823792849.Spec : Prop :=
  ∀ n, P14867297164823792849.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P2693229875344740846

`A087508(A131226(n+1))`
-/

namespace A128179.P2693229875344740846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A131226 (n + 1)).toNat

end

end A128179.P2693229875344740846

namespace A128179

/-- `A087508(A131226(n+1))` -/
def P2693229875344740846.Spec : Prop :=
  ∀ n, P2693229875344740846.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P6425412837336553098

`lcm(A134199(n), A369736(n))`
-/

namespace A128179.P6425412837336553098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A134199 n) (A369736 n)

end

end A128179.P6425412837336553098

namespace A128179

/-- `lcm(A134199(n), A369736(n))` -/
def P6425412837336553098.Spec : Prop :=
  ∀ n, (P6425412837336553098.a n : ℤ) = A128179 (n + 1)

end A128179

/-! ## A128179.P3039311591210080173

`A128174(n+1)*A134199(n)`
-/

namespace A128179.P3039311591210080173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A134199 n

end

end A128179.P3039311591210080173

namespace A128179

/-- `A128174(n+1)*A134199(n)` -/
def P3039311591210080173.Spec : Prop :=
  ∀ n, P3039311591210080173.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P3914171533560733456

`A002260(n+1)*A128174(n+1)`
-/

namespace A128179.P3914171533560733456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A128174 (n + 1)

end

end A128179.P3914171533560733456

namespace A128179

/-- `A002260(n+1)*A128174(n+1)` -/
def P3914171533560733456.Spec : Prop :=
  ∀ n, P3914171533560733456.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P7610128962198146693

`(A002262(n)+1)*A128174(n+1)`
-/

namespace A128179.P7610128962198146693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A128174 (n + 1)

end

end A128179.P7610128962198146693

namespace A128179

/-- `(A002262(n)+1)*A128174(n+1)` -/
def P7610128962198146693.Spec : Prop :=
  ∀ n, P7610128962198146693.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P11021661720646882473

`A128174(n+1)*A128221(n+1)`
-/

namespace A128179.P11021661720646882473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A128221 (n + 1)

end

end A128179.P11021661720646882473

namespace A128179

/-- `A128174(n+1)*A128221(n+1)` -/
def P11021661720646882473.Spec : Prop :=
  ∀ n, P11021661720646882473.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P3876313265708696372

`A128174(n+1)*A134226(n+1)`
-/

namespace A128179.P3876313265708696372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A134226 (n + 1)

end

end A128179.P3876313265708696372

namespace A128179

/-- `A128174(n+1)*A134226(n+1)` -/
def P3876313265708696372.Spec : Prop :=
  ∀ n, P3876313265708696372.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P2309805093191712412

`A128174(n+1)*A140756(n+1)`
-/

namespace A128179.P2309805093191712412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A140756 (n + 1)

end

end A128179.P2309805093191712412

namespace A128179

/-- `A128174(n+1)*A140756(n+1)` -/
def P2309805093191712412.Spec : Prop :=
  ∀ n, P2309805093191712412.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P3856957772551750085

`A128174(n+1)*A211161(n+1)`
-/

namespace A128179.P3856957772551750085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A211161 (n + 1)

end

end A128179.P3856957772551750085

namespace A128179

/-- `A128174(n+1)*A211161(n+1)` -/
def P3856957772551750085.Spec : Prop :=
  ∀ n, P3856957772551750085.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P8706369329628226457

`(A140756(n+1)+A002260(n+1))/2`
-/

namespace A128179.P8706369329628226457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140756 (n + 1) + A002260 (n + 1) : ℚ) / 2

end

end A128179.P8706369329628226457

namespace A128179

/-- `(A140756(n+1)+A002260(n+1))/2` -/
def P8706369329628226457.Spec : Prop :=
  ∀ n, P8706369329628226457.a n = (A128179 (n + 1) : ℚ)

end A128179

/-! ## A128179.P978014447477882479

`(A133728(n+1)+A128174(n+1))/2`
-/

namespace A128179.P978014447477882479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133728 (n + 1) + A128174 (n + 1) : ℚ) / 2

end

end A128179.P978014447477882479

namespace A128179

/-- `(A133728(n+1)+A128174(n+1))/2` -/
def P978014447477882479.Spec : Prop :=
  ∀ n, P978014447477882479.a n = (A128179 (n + 1) : ℚ)

end A128179

/-! ## A128179.P9944413126222862457

`and(1, A004736(n+1))*A002260(n+1)`
-/

namespace A128179.P9944413126222862457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004736 (n + 1)) * A002260 (n + 1)

end

end A128179.P9944413126222862457

namespace A128179

/-- `and(1, A004736(n+1))*A002260(n+1)` -/
def P9944413126222862457.Spec : Prop :=
  ∀ n, P9944413126222862457.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P13083611532817870648

`and(1, A158860(n+1))*A002260(n+1)`
-/

namespace A128179.P13083611532817870648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A158860 (n + 1)) * A002260 (n + 1)

end

end A128179.P13083611532817870648

namespace A128179

/-- `and(1, A158860(n+1))*A002260(n+1)` -/
def P13083611532817870648.Spec : Prop :=
  ∀ n, P13083611532817870648.a n = A128179 (n + 1)

end A128179

/-! ## A128179.P6704375757465202146

`and(1, A158893(n+1))*A002260(n+1)`
-/

namespace A128179.P6704375757465202146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A158893 (n + 1)) * A002260 (n + 1)

end

end A128179.P6704375757465202146

namespace A128179

/-- `and(1, A158893(n+1))*A002260(n+1)` -/
def P6704375757465202146.Spec : Prop :=
  ∀ n, P6704375757465202146.a n = A128179 (n + 1)

end A128179

/-!
# A128180: Triangle read by rows: A002260 * A097807 as infinite lower triangular matrices.

The programs for A128180, the canonical program `A128180.P1090560833171990757` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128180 has offset 1).

The definition of A128180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128180.P10886894562972602461

`(and(2, comp[∑[n]]+n)-1)*A209279(n+1)`
-/

namespace A128180.P10886894562972602461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A209279 (n + 1)

end

end A128180.P10886894562972602461

namespace A128180

/-- `(and(2, comp[∑[n]]+n)-1)*A209279(n+1)` -/
def P10886894562972602461.Spec : Prop :=
  ∀ n, P10886894562972602461.a n = A128180 (n + 1)

end A128180

/-! ## A128180.P1090560833171990757

`A001057(A131307(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A128180

/-- `A001057(A131307(n+1))` -/
def P1090560833171990757.Spec : Prop :=
  ∀ n, P1090560833171990757.a n = A128180 (n + 1)

theorem P1090560833171990757.correct : P1090560833171990757.Spec := by
  intro n
  simp only [A128180, Nat.add_sub_cancel]

end A128180

/-! ## A128180.P1437195698868379280

`A097807(n)*A209279(n+1)`
-/

namespace A128180.P1437195698868379280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A209279 (n + 1)

end

end A128180.P1437195698868379280

namespace A128180

/-- `A097807(n)*A209279(n+1)` -/
def P1437195698868379280.Spec : Prop :=
  ∀ n, P1437195698868379280.a n = A128180 (n + 1)

end A128180

/-! ## A128180.P134297470124355938

`A095800(n+1)/A140756(n+1)`
-/

namespace A128180.P134297470124355938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095800 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)

end

end A128180.P134297470124355938

namespace A128180

/-- `A095800(n+1)/A140756(n+1)` -/
def P134297470124355938.Spec : Prop :=
  ∀ n, P134297470124355938.a n = (A128180 (n + 1) : ℚ)

end A128180

/-! ## A128180.P6923457634257811100

`2*A128621(n+1)-A130266(n)`
-/

namespace A128180.P6923457634257811100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128621 (n + 1) - A130266 n

end

end A128180.P6923457634257811100

namespace A128180

/-- `2*A128621(n+1)-A130266(n)` -/
def P6923457634257811100.Spec : Prop :=
  ∀ n, P6923457634257811100.a n = A128180 (n + 1)

end A128180

/-! ## A128180.P10035063379438027444

`A209279(Δ[n²]-n)/A097807(n)`
-/

namespace A128180.P10035063379438027444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209279 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / (A097807 n : ℚ)

end

end A128180.P10035063379438027444

namespace A128180

/-- `A209279(Δ[n²]-n)/A097807(n)` -/
def P10035063379438027444.Spec : Prop :=
  ∀ n, P10035063379438027444.a n = (A128180 (n + 1) : ℚ)

end A128180

/-! ## A128180.P15314718218720569599

`2*A134447(n+1)-A049777(n+1)`
-/

namespace A128180.P15314718218720569599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134447 (n + 1) - A049777 (n + 1)

end

end A128180.P15314718218720569599

namespace A128180

/-- `2*A134447(n+1)-A049777(n+1)` -/
def P15314718218720569599.Spec : Prop :=
  ∀ n, P15314718218720569599.a n = A128180 (n + 1)

end A128180

/-! ## A128180.P17133569896590338577

`A004736(A057028(n+1))*A097807(n)`
-/

namespace A128180.P17133569896590338577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A057028 (n + 1)).toNat * A097807 n

end

end A128180.P17133569896590338577

namespace A128180

/-- `A004736(A057028(n+1))*A097807(n)` -/
def P17133569896590338577.Spec : Prop :=
  ∀ n, P17133569896590338577.a n = A128180 (n + 1)

end A128180

/-! ## A128180.P2528986926009716277

`(A332104(n)+1)*(2*and(1, comp[∑[4*n]])-1)`
-/

namespace A128180.P2528986926009716277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332104 n + 1) * ((2 * Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) - 1)

end

end A128180.P2528986926009716277

namespace A128180

/-- `(A332104(n)+1)*(2*and(1, comp[∑[4*n]])-1)` -/
def P2528986926009716277.Spec : Prop :=
  ∀ n, P2528986926009716277.a n = A128180 (n + 1)

end A128180

/-! ## A128180.P15461597713157380789

`(A332104(n)+1)*A097807(n)`
-/

namespace A128180.P15461597713157380789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A332104 n + 1) * A097807 n

end

end A128180.P15461597713157380789

namespace A128180

/-- `(A332104(n)+1)*A097807(n)` -/
def P15461597713157380789.Spec : Prop :=
  ∀ n, P15461597713157380789.a n = A128180 (n + 1)

end A128180

/-!
# A128181: A007318 * A128179 as infinite lower triangular matrices.

The programs for A128181, the canonical program `A128181.P677379216419681310` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128181 has offset 1).

The definition of A128181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128181.P4074087298137083048

`(1-C(∑[char[∑[n]]], 2)+n)*A128175(n+1)`
-/

namespace A128181.P4074087298137083048
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A128175 (n + 1)

end

end A128181.P4074087298137083048

namespace A128181

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A128175(n+1)` -/
def P4074087298137083048.Spec : Prop :=
  ∀ n, P4074087298137083048.a n = A128181 (n + 1)

end A128181

/-! ## A128181.P677379216419681310

`A002260(n+1)*A128175(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128181

/-- `A002260(n+1)*A128175(n+1)` -/
def P677379216419681310.Spec : Prop :=
  ∀ n, P677379216419681310.a n = A128181 (n + 1)

theorem P677379216419681310.correct : P677379216419681310.Spec := by
  intro n
  simp only [A128181, Nat.add_sub_cancel]

end A128181

/-! ## A128181.P3452376218510604880

`(A002262(n)+1)*A128175(n+1)`
-/

namespace A128181.P3452376218510604880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A128175 (n + 1)

end

end A128181.P3452376218510604880

namespace A128181

/-- `(A002262(n)+1)*A128175(n+1)` -/
def P3452376218510604880.Spec : Prop :=
  ∀ n, P3452376218510604880.a n = A128181 (n + 1)

end A128181

/-! ## A128181.P5637613393010064216

`(A133729(n+1)+A128175(n+1))/2`
-/

namespace A128181.P5637613393010064216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133729 (n + 1) + A128175 (n + 1) : ℚ) / 2

end

end A128181.P5637613393010064216

namespace A128181

/-- `(A133729(n+1)+A128175(n+1))/2` -/
def P5637613393010064216.Spec : Prop :=
  ∀ n, P5637613393010064216.a n = (A128181 (n + 1) : ℚ)

end A128181

/-! ## A128181.P12027973132540490198

`A097285(Δ[n²])*A128175(n+1)`
-/

namespace A128181.P12027973132540490198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A128175 (n + 1)

end

end A128181.P12027973132540490198

namespace A128181

/-- `A097285(Δ[n²])*A128175(n+1)` -/
def P12027973132540490198.Spec : Prop :=
  ∀ n, P12027973132540490198.a n = A128181 (n + 1)

end A128181

/-! ## A128181.P11231939122561242164

`A057555(2*n+1)*A128175(n+1)`
-/

namespace A128181.P11231939122561242164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) * A128175 (n + 1)

end

end A128181.P11231939122561242164

namespace A128181

/-- `A057555(2*n+1)*A128175(n+1)` -/
def P11231939122561242164.Spec : Prop :=
  ∀ n, P11231939122561242164.a n = A128181 (n + 1)

end A128181

/-! ## A128181.P11968937080716548785

`A000005(A059268(n))*A128175(n+1)`
-/

namespace A128181.P11968937080716548785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A128175 (n + 1)

end

end A128181.P11968937080716548785

namespace A128181

/-- `A000005(A059268(n))*A128175(n+1)` -/
def P11968937080716548785.Spec : Prop :=
  ∀ n, P11968937080716548785.a n = A128181 (n + 1)

end A128181

/-!
# A128183: Row sums of triangle A128182.

The programs for A128183, the canonical program `A128183.P4602037080132375084` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128183 has offset 0).

The definition of A128183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128183.P4602037080132375084

`A049611(n)+A045891(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A128183

/-- `A049611(n)+A045891(n)` -/
def P4602037080132375084.Spec : Prop :=
  ∀ n, P4602037080132375084.a n = A128183 n

theorem P4602037080132375084.correct : P4602037080132375084.Spec := by
  intro n
  simp only [A128183]

end A128183

/-! ## A128183.P16355431820470402463

`A190050(n)+A049610(n)`
-/

namespace A128183.P16355431820470402463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190050 n + A049610 n

end

end A128183.P16355431820470402463

namespace A128183

/-- `A190050(n)+A049610(n)` -/
def P16355431820470402463.Spec : Prop :=
  ∀ n, P16355431820470402463.a n = A128183 n

end A128183

/-! ## A128183.P692988353737198495

`A268586(n+1)+A111297(n)`
-/

namespace A128183.P692988353737198495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 1) + A111297 n

end

end A128183.P692988353737198495

namespace A128183

/-- `A268586(n+1)+A111297(n)` -/
def P692988353737198495.Spec : Prop :=
  ∀ n, P692988353737198495.a n = A128183 n

end A128183

/-! ## A128183.P18069096873597524421

`2*A158920(n+1)-A045623(n)`
-/

namespace A128183.P18069096873597524421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158920 (n + 1) - A045623 n

end

end A128183.P18069096873597524421

namespace A128183

/-- `2*A158920(n+1)-A045623(n)` -/
def P18069096873597524421.Spec : Prop :=
  ∀ n, P18069096873597524421.a n = A128183 n

end A128183

/-! ## A128183.P5006504753746353062

`(A084851(n)+A034008(n))/2`
-/

namespace A128183.P5006504753746353062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084851 n + A034008 n : ℚ) / 2

end

end A128183.P5006504753746353062

namespace A128183

/-- `(A084851(n)+A034008(n))/2` -/
def P5006504753746353062.Spec : Prop :=
  ∀ n, P5006504753746353062.a n = (A128183 n : ℚ)

end A128183

/-! ## A128183.P15470299890305287193

`round(sqrt(((A034856(n+2)+1)*2^(n-3))²+1))`
-/

namespace A128183.P15470299890305287193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((A034856 (n + 2) + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) ^ 2 + 1 : ℝ))

end

end A128183.P15470299890305287193

namespace A128183

/-- `round(sqrt(((A034856(n+2)+1)*2^(n-3))²+1))` -/
def P15470299890305287193.Spec : Prop :=
  ∀ n, P15470299890305287193.a n = A128183 n

end A128183

/-!
# A128184: A051731 * A097806.

The programs for A128184, the canonical program `A128184.P251226975296983160` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128184 has offset 1).

The definition of A128184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128184.P251226975296983160

`gcd(A114002(n), A176702(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128184

/-- `gcd(A114002(n), A176702(n+1))` -/
def P251226975296983160.Spec : Prop :=
  ∀ n, (P251226975296983160.a n : ℤ) = A128184 (n + 1)

theorem P251226975296983160.correct : P251226975296983160.Spec := by
  intro n
  simp only [A128184, Nat.add_sub_cancel]

end A128184

/-! ## A128184.P73378771462590269

`A051731(n+1)+A051731(n+1)-A176702(n+1)`
-/

namespace A128184.P73378771462590269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A051731 (n + 1) - A176702 (n + 1))

end

end A128184.P73378771462590269

namespace A128184

/-- `A051731(n+1)+A051731(n+1)-A176702(n+1)` -/
def P73378771462590269.Spec : Prop :=
  ∀ n, P73378771462590269.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P2620701436909200732

`A114002(n)+Δ[A051731(n+1)]`
-/

namespace A128184.P2620701436909200732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114002 n + (f1 (n + 1) - f1 n)

end

end A128184.P2620701436909200732

namespace A128184

/-- `A114002(n)+Δ[A051731(n+1)]` -/
def P2620701436909200732.Spec : Prop :=
  ∀ n, P2620701436909200732.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P8990118407683255479

`A114002(n+1)-Δ[A114002(n)!]`
-/

namespace A128184.P8990118407683255479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A114002 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114002 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128184.P8990118407683255479

namespace A128184

/-- `A114002(n+1)-Δ[A114002(n)!]` -/
def P8990118407683255479.Spec : Prop :=
  ∀ n, P8990118407683255479.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P5841306590637072546

`A051731(n+1)+A051731(n+2)-A023531(n)`
-/

namespace A128184.P5841306590637072546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + (A051731 (n + 2) - A023531 n)

end

end A128184.P5841306590637072546

namespace A128184

/-- `A051731(n+1)+A051731(n+2)-A023531(n)` -/
def P5841306590637072546.Spec : Prop :=
  ∀ n, P5841306590637072546.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P14307197984379200639

`A051731(n+2)+A114002(n)-A051731(n+1)`
-/

namespace A128184.P14307197984379200639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2) + (A114002 n - A051731 (n + 1))

end

end A128184.P14307197984379200639

namespace A128184

/-- `A051731(n+2)+A114002(n)-A051731(n+1)` -/
def P14307197984379200639.Spec : Prop :=
  ∀ n, P14307197984379200639.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P9964879381623035854

`A158906(n+1)+A051731(n+2)-A158821(n)`
-/

namespace A128184.P9964879381623035854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158906 (n + 1) + (A051731 (n + 2) - A158821 n)

end

end A128184.P9964879381623035854

namespace A128184

/-- `A158906(n+1)+A051731(n+2)-A158821(n)` -/
def P9964879381623035854.Spec : Prop :=
  ∀ n, P9964879381623035854.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P18086497349421749464

`A134673(n+1)+A051731(n+2)-A127448(n+1)`
-/

namespace A128184.P18086497349421749464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134673 (n + 1) + (A051731 (n + 2) - A127448 (n + 1))

end

end A128184.P18086497349421749464

namespace A128184

/-- `A134673(n+1)+A051731(n+2)-A127448(n+1)` -/
def P18086497349421749464.Spec : Prop :=
  ∀ n, P18086497349421749464.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P8444119422588854853

`A051731(n+2)+A051731(n+1)*A191907(n+1)`
-/

namespace A128184.P8444119422588854853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2) + A051731 (n + 1) * A191907 (n + 1)

end

end A128184.P8444119422588854853

namespace A128184

/-- `A051731(n+2)+A051731(n+1)*A191907(n+1)` -/
def P8444119422588854853.Spec : Prop :=
  ∀ n, P8444119422588854853.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P4434551770347660617

`A051731(n+1)+A051127(n+2)*A051731(n+2)`
-/

namespace A128184.P4434551770347660617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A051127 (n + 2) * A051731 (n + 2)

end

end A128184.P4434551770347660617

namespace A128184

/-- `A051731(n+1)+A051127(n+2)*A051731(n+2)` -/
def P4434551770347660617.Spec : Prop :=
  ∀ n, P4434551770347660617.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P11152058433945276284

`A051731(n+1)+A051731(n+2)*A177978(n+2)`
-/

namespace A128184.P11152058433945276284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A051731 (n + 2) * A177978 (n + 2)

end

end A128184.P11152058433945276284

namespace A128184

/-- `A051731(n+1)+A051731(n+2)*A177978(n+2)` -/
def P11152058433945276284.Spec : Prop :=
  ∀ n, P11152058433945276284.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P1002536974619497035

`A051731(n+1)+A051731(n+2)*A191904(n+2)`
-/

namespace A128184.P1002536974619497035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A051731 (n + 2) * A191904 (n + 2)

end

end A128184.P1002536974619497035

namespace A128184

/-- `A051731(n+1)+A051731(n+2)*A191904(n+2)` -/
def P1002536974619497035.Spec : Prop :=
  ∀ n, P1002536974619497035.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P10545612333865595282

`A051731(n+1)+A051731(n+2)*A279907(n+2)`
-/

namespace A128184.P10545612333865595282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A051731 (n + 2) * A279907 (n + 2)

end

end A128184.P10545612333865595282

namespace A128184

/-- `A051731(n+1)+A051731(n+2)*A279907(n+2)` -/
def P10545612333865595282.Spec : Prop :=
  ∀ n, P10545612333865595282.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P3387835790022966213

`A051731(n+1)+A051731(n+2)*A349317(n+2)`
-/

namespace A128184.P3387835790022966213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) + A051731 (n + 2) * A349317 (n + 2)

end

end A128184.P3387835790022966213

namespace A128184

/-- `A051731(n+1)+A051731(n+2)*A349317(n+2)` -/
def P3387835790022966213.Spec : Prop :=
  ∀ n, P3387835790022966213.a n = A128184 (n + 1)

end A128184

/-! ## A128184.P11928958551940755587

`A051731(n+2)+1-A155029(n+1)`
-/

namespace A128184.P11928958551940755587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 2) + (1 - A155029 (n + 1))

end

end A128184.P11928958551940755587

namespace A128184

/-- `A051731(n+2)+1-A155029(n+1)` -/
def P11928958551940755587.Spec : Prop :=
  ∀ n, P11928958551940755587.a n = A128184 (n + 1)

end A128184

/-!
# A128185: A097806 * A051731.

The programs for A128185, the canonical program `A128185.P11494409003865491844` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128185 has offset 1).

The definition of A128185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128185.P12141758301281388313

`gcd(2*char[∑[n]], A177978(n+1))`
-/

namespace A128185.P12141758301281388313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ) (A177978 (n + 1))

end

end A128185.P12141758301281388313

namespace A128185

/-- `gcd(2*char[∑[n]], A177978(n+1))` -/
def P12141758301281388313.Spec : Prop :=
  ∀ n, (P12141758301281388313.a n : ℤ) = A128185 (n + 1)

end A128185

/-! ## A128185.P14205877255431697706

`abs(A177978(n+1)-A089799(n))`
-/

namespace A128185.P14205877255431697706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A177978 (n + 1) - A089799 n|

end

end A128185.P14205877255431697706

namespace A128185

/-- `abs(A177978(n+1)-A089799(n))` -/
def P14205877255431697706.Spec : Prop :=
  ∀ n, P14205877255431697706.a n = A128185 (n + 1)

end A128185

/-! ## A128185.P6786326496896252619

`ceil(A128260(n+1)/A059594(n))`
-/

namespace A128185.P6786326496896252619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128260 (n + 1) : ℚ) / (A059594 n : ℚ)⌉

end

end A128185.P6786326496896252619

namespace A128185

/-- `ceil(A128260(n+1)/A059594(n))` -/
def P6786326496896252619.Spec : Prop :=
  ∀ n, P6786326496896252619.a n = A128185 (n + 1)

end A128185

/-! ## A128185.P4090480548869791069

`ceil(A128260(n+1)/A134478(n))`
-/

namespace A128185.P4090480548869791069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128260 (n + 1) : ℚ) / (A134478 n : ℚ)⌉

end

end A128185.P4090480548869791069

namespace A128185

/-- `ceil(A128260(n+1)/A134478(n))` -/
def P4090480548869791069.Spec : Prop :=
  ∀ n, P4090480548869791069.a n = A128185 (n + 1)

end A128185

/-! ## A128185.P17232964308615300818

`2*A051731(n+1)-A177978(n+1)`
-/

namespace A128185.P17232964308615300818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051731 (n + 1) - A177978 (n + 1)

end

end A128185.P17232964308615300818

namespace A128185

/-- `2*A051731(n+1)-A177978(n+1)` -/
def P17232964308615300818.Spec : Prop :=
  ∀ n, P17232964308615300818.a n = A128185 (n + 1)

end A128185

/-! ## A128185.P14739932060253663231

`ceil(atan(A128260(n+1)/A001263(n+1)))`
-/

namespace A128185.P14739932060253663231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((A128260 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) : ℝ)⌉

end

end A128185.P14739932060253663231

namespace A128185

/-- `ceil(atan(A128260(n+1)/A001263(n+1)))` -/
def P14739932060253663231.Spec : Prop :=
  ∀ n, P14739932060253663231.a n = A128185 (n + 1)

end A128185

/-! ## A128185.P5630183191357630610

`ceil(atan(A128260(n+1))/A002260(n+1))`
-/

namespace A128185.P5630183191357630610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A128260 (n + 1) : ℝ) / (A002260 (n + 1) : ℝ)⌉

end

end A128185.P5630183191357630610

namespace A128185

/-- `ceil(atan(A128260(n+1))/A002260(n+1))` -/
def P5630183191357630610.Spec : Prop :=
  ∀ n, P5630183191357630610.a n = A128185 (n + 1)

end A128185

/-! ## A128185.P11494409003865491844

`A113704(n+1)+A051731(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A128185

/-- `A113704(n+1)+A051731(n+1)` -/
def P11494409003865491844.Spec : Prop :=
  ∀ n, P11494409003865491844.a n = A128185 (n + 1)

theorem P11494409003865491844.correct : P11494409003865491844.Spec := by
  intro n
  simp only [A128185, Nat.add_sub_cancel]

end A128185

/-! ## A128185.P3537737752002737276

`A073424(n)+A144384(A038722(n+1))²`
-/

namespace A128185.P3537737752002737276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A144384 (A038722 (n + 1)).toNat ^ 2

end

end A128185.P3537737752002737276

namespace A128185

/-- `A073424(n)+A144384(A038722(n+1))²` -/
def P3537737752002737276.Spec : Prop :=
  ∀ n, P3537737752002737276.a n = A128185 (n + 1)

end A128185

/-! ## A128185.P5706322240073742638

`A037011(A048158(n+1)!)+char[∑[n+1]]`
-/

namespace A128185.P5706322240073742638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037011 (Nat.factorial (A048158 (n + 1)).toNat) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A128185.P5706322240073742638

namespace A128185

/-- `A037011(A048158(n+1)!)+char[∑[n+1]]` -/
def P5706322240073742638.Spec : Prop :=
  ∀ n, P5706322240073742638.a n = A128185 (n + 1)

end A128185

/-!
# A128186: A051731 * A128174.

The programs for A128186, there is no canonical definition to state claims against.
-/

/-! ## A128186.P2500040502892248223

`round(A208476(n+1)/A000267(n))`
-/

namespace A128186.P2500040502892248223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A208476 (n + 1) : ℚ) / (A000267 n : ℚ))

end

end A128186.P2500040502892248223

/-! ## A128186.P8431167323619719548

`round(A208476(n+1)/A165706(n))`
-/

namespace A128186.P8431167323619719548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A208476 (n + 1) : ℚ) / (A165706 n : ℚ))

end

end A128186.P8431167323619719548

/-! ## A128186.P13694383533441560112

`round(A208476(n+1)/sqrt(A000040(n+1)))`
-/

namespace A128186.P13694383533441560112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A208476 (n + 1) : ℝ) / Real.sqrt (A000040 (n + 1) : ℝ))

end

end A128186.P13694383533441560112

/-! ## A128186.P11557169565873344008

`A318370(A286595(n+1))`
-/

namespace A128186.P11557169565873344008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318370 (A286595 (n + 1)).toNat

end

end A128186.P11557169565873344008

/-! ## A128186.P4713157950661988484

`A175358(A396158(n))`
-/

namespace A128186.P4713157950661988484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175358 (A396158 n).toNat

end

end A128186.P4713157950661988484

/-!
# A128187: Matrix product A128174 * A051731 read by rows.

The programs for A128187, there is no canonical definition to state claims against.
-/

/-! ## A128187.P14293302586966120953

`∑{e}[A247281(A129560(n+1)), #]`
-/

namespace A128187.P14293302586966120953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247281 (A129560 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A128187.P14293302586966120953

/-! ## A128187.P3631061316035567649

`dr(A147702(A000032(A106356(n+1))))`
-/

namespace A128187.P3631061316035567649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A147702 (A000032 (A106356 (n + 1)).toNat).toNat)

end

end A128187.P3631061316035567649

/-! ## A128187.P8355005624843060279

`lcm(A087267(A264659(n+1)), A158948(n+1))`
-/

namespace A128187.P8355005624843060279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087267 (A264659 (n + 1)).toNat) (A158948 (n + 1))

end

end A128187.P8355005624843060279

/-! ## A128187.P1710510350433304967

`and(A133121(n+1), A178554(A107429(n+1)))`
-/

namespace A128187.P1710510350433304967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133121 (n + 1)) (A178554 (A107429 (n + 1)).toNat)

end

end A128187.P1710510350433304967

/-! ## A128187.P18431739208017978299

`A158948(n+1)-A121373(A024450(n+1))`
-/

namespace A128187.P18431739208017978299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158948 (n + 1) - A121373 (A024450 (n + 1)).toNat

end

end A128187.P18431739208017978299

/-!
# A128188: Row sums of A128187.

The programs for A128188, the canonical program `A128188.P15787014881959309049` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128188 has offset 1).

The definition of A128188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128188.P15787014881959309049

`∏{e}[n+1, #+1]+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128188

/-- `∏{e}[n+1, #+1]+a(n-2)` -/
def P15787014881959309049.Spec : Prop :=
  ∀ n, (P15787014881959309049.a n : ℤ) = A128188 (n + 1)

theorem P15787014881959309049.correct : P15787014881959309049.Spec := by
  intro n
  simp only [A128188, Nat.add_sub_cancel]

end A128188

/-! ## A128188.P1201854425861377932

`∑{d}[n+1, gcd(n, #)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A128188.P1201854425861377932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d + a (n - 2)

end

end A128188.P1201854425861377932

namespace A128188

/-- `∑{d}[n+1, gcd(n, #)]+a(n-2)` -/
def P1201854425861377932.Spec : Prop :=
  ∀ n, (P1201854425861377932.a n : ℤ) = A128188 (n + 1)

end A128188

/-! ## A128188.P681787305956201073

`∑{d}[n+1, ceil(acot(#))]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A128188.P681787305956201073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉ + a (n - 2)

end

end A128188.P681787305956201073

namespace A128188

/-- `∑{d}[n+1, ceil(acot(#))]+a(n-2)` -/
def P681787305956201073.Spec : Prop :=
  ∀ n, P681787305956201073.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P188587804814307229

`∑{d}[n+1, ceil(1/#)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A128188.P188587804814307229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉ + a (n - 2)

end

end A128188.P188587804814307229

namespace A128188

/-- `∑{d}[n+1, ceil(1/#)]+a(n-2)` -/
def P188587804814307229.Spec : Prop :=
  ∀ n, P188587804814307229.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P10522549967725366585

`a(n-2)+∑{d}[n+1, floor(atan(#))]+1` with `a(0)=1, a(1)=2`
-/

namespace A128188.P10522549967725366585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋ + 1)

end

end A128188.P10522549967725366585

namespace A128188

/-- `a(n-2)+∑{d}[n+1, floor(atan(#))]+1` -/
def P10522549967725366585.Spec : Prop :=
  ∀ n, P10522549967725366585.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P3621179215005597723

`∑[-∑{d}[n+1, or(#, -1)]]-a(n-1)` with `a(0)=1`
-/

namespace A128188.P3621179215005597723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), Int.lor (d : ℤ) (-1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A128188.P3621179215005597723

namespace A128188

/-- `∑[-∑{d}[n+1, or(#, -1)]]-a(n-1)` -/
def P3621179215005597723.Spec : Prop :=
  ∀ n, P3621179215005597723.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P14856189948164924206

`a(n-2)+2^∑{e}[n+1, log2(#+1)]` with `a(0)=1, a(1)=2`
-/

namespace A128188.P14856189948164924206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ))

end

end A128188.P14856189948164924206

namespace A128188

/-- `a(n-2)+2^∑{e}[n+1, log2(#+1)]` -/
def P14856189948164924206.Spec : Prop :=
  ∀ n, P14856189948164924206.a n = (A128188 (n + 1) : ℝ)

end A128188

/-! ## A128188.P16704948067878709309

`a(n-2)+∑{d}[n+1, n²%#]+1` with `a(0)=1, a(1)=2`
-/

namespace A128188.P16704948067878709309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1)

end

end A128188.P16704948067878709309

namespace A128188

/-- `a(n-2)+∑{d}[n+1, n²%#]+1` -/
def P16704948067878709309.Spec : Prop :=
  ∀ n, (P16704948067878709309.a n : ℤ) = A128188 (n + 1)

end A128188

/-! ## A128188.P9347307539630061484

`∑[∑{d}[n+1, C(2, #)!]-1-a(n-1)]` with `a(0)=1`
-/

namespace A128188.P9347307539630061484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ d ∈ Nat.divisors (f2 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128188.P9347307539630061484

namespace A128188

/-- `∑[∑{d}[n+1, C(2, #)!]-1-a(n-1)]` -/
def P9347307539630061484.Spec : Prop :=
  ∀ n, P9347307539630061484.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P3974962978987099344

`∑[∏{p}[n+1, val(n+1, #)+1]-a(n-1)]` with `a(0)=1`
-/

namespace A128188.P3974962978987099344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (n + 1) p + 1) : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128188.P3974962978987099344

namespace A128188

/-- `∑[∏{p}[n+1, val(n+1, #)+1]-a(n-1)]` -/
def P3974962978987099344.Spec : Prop :=
  ∀ n, P3974962978987099344.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P3816937720634531630

`A006218(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A128188.P3816937720634531630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006218 (n + 1) - a (n - 1)

end

end A128188.P3816937720634531630

namespace A128188

/-- `A006218(n+1)-a(n-1)` -/
def P3816937720634531630.Spec : Prop :=
  ∀ n, P3816937720634531630.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P17104861165163811517

`∑[Δ[A006218(n)]-a(n-1)]` with `a(0)=1`
-/

namespace A128188.P17104861165163811517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f2 (n + 1) - f2 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128188.P17104861165163811517

namespace A128188

/-- `∑[Δ[A006218(n)]-a(n-1)]` -/
def P17104861165163811517.Spec : Prop :=
  ∀ n, P17104861165163811517.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P4997932250294723623

`A000005(n+1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A128188.P4997932250294723623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000005 (n + 1) + a (n - 2)

end

end A128188.P4997932250294723623

namespace A128188

/-- `A000005(n+1)+a(n-2)` -/
def P4997932250294723623.Spec : Prop :=
  ∀ n, P4997932250294723623.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P12623035244576241597

`∑[A000005(-xor(n, -1))-a(n-1)]` with `a(0)=1`
-/

namespace A128188.P12623035244576241597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 (-Int.xor (n : ℤ) (-1)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128188.P12623035244576241597

namespace A128188

/-- `∑[A000005(-xor(n, -1))-a(n-1)]` -/
def P12623035244576241597.Spec : Prop :=
  ∀ n, P12623035244576241597.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P9201297881454153767

`∑[A000005(Δ[n²]-n)-a(n-1)]` with `a(0)=1`
-/

namespace A128188.P9201297881454153767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128188.P9201297881454153767

namespace A128188

/-- `∑[A000005(Δ[n²]-n)-a(n-1)]` -/
def P9201297881454153767.Spec : Prop :=
  ∀ n, P9201297881454153767.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P7204046068678568391

`a(n-2)-Δ[a(n-1)-A000005(n)]` with `a(0)=1, a(1)=2`
-/

namespace A128188.P7204046068678568391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - A000005 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A128188.P7204046068678568391

namespace A128188

/-- `a(n-2)-Δ[a(n-1)-A000005(n)]` -/
def P7204046068678568391.Spec : Prop :=
  ∀ n, P7204046068678568391.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P11927116344721176200

`∑[∑{d}[n+1, A020639(2*#)]/2-a(n-1)]` with `a(0)=1`
-/

namespace A128188.P11927116344721176200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ d ∈ Nat.divisors (f2 n), A020639 (2 * d) : ℤ) : ℚ) / 2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128188.P11927116344721176200

namespace A128188

/-- `∑[∑{d}[n+1, A020639(2*#)]/2-a(n-1)]` -/
def P11927116344721176200.Spec : Prop :=
  ∀ n, P11927116344721176200.a n = (A128188 (n + 1) : ℚ)

end A128188

/-! ## A128188.P14214686259246282938

`∑[∑{d}[n+1, 1-A000010(#)]+n+1-a(n-1)]` with `a(0)=1`
-/

namespace A128188.P14214686259246282938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - A000010 d) + (n + 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128188.P14214686259246282938

namespace A128188

/-- `∑[∑{d}[n+1, 1-A000010(#)]+n+1-a(n-1)]` -/
def P14214686259246282938.Spec : Prop :=
  ∀ n, P14214686259246282938.a n = A128188 (n + 1)

end A128188

/-! ## A128188.P12100674806494901649

`A113215((n+1)²)-a(n-1)` with `a(0)=1`
-/

namespace A128188.P12100674806494901649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113215 ((n + 1) ^ 2) - a (n - 1)

end

end A128188.P12100674806494901649

namespace A128188

/-- `A113215((n+1)²)-a(n-1)` -/
def P12100674806494901649.Spec : Prop :=
  ∀ n, P12100674806494901649.a n = A128188 (n + 1)

end A128188

/-!
# A128189: Moebius transform of A128174.

The programs for A128189, the canonical program `A128189.P4693228251088959264` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128189 has offset 1).

The definition of A128189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128189.P4693228251088959264

`A134540(char[1]+n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A128189

/-- `A134540(char[1]+n)-a(n-1)` -/
def P4693228251088959264.Spec : Prop :=
  ∀ n, P4693228251088959264.a n = A128189 (n + 1)

theorem P4693228251088959264.correct : P4693228251088959264.Spec := by
  intro n
  simp only [A128189, Nat.add_sub_cancel]

end A128189

/-! ## A128189.P17502785832029662445

`A008683(A213418(n+1))^A094053(n+1)`
-/

namespace A128189.P17502785832029662445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A213418 (n + 1)).toNat : ℚ) ^ (A094053 (n + 1) : ℤ)

end

end A128189.P17502785832029662445

namespace A128189

/-- `A008683(A213418(n+1))^A094053(n+1)` -/
def P17502785832029662445.Spec : Prop :=
  ∀ n, P17502785832029662445.a n = (A128189 (n + 1) : ℚ)

end A128189

/-! ## A128189.P13661999547997401651

`A008683(A213418(n+1))^A303102(n+1)`
-/

namespace A128189.P13661999547997401651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A213418 (n + 1)).toNat : ℚ) ^ (A303102 (n + 1) : ℤ)

end

end A128189.P13661999547997401651

namespace A128189

/-- `A008683(A213418(n+1))^A303102(n+1)` -/
def P13661999547997401651.Spec : Prop :=
  ∀ n, P13661999547997401651.a n = (A128189 (n + 1) : ℚ)

end A128189

/-! ## A128189.P8746960517868586483

`A016411(A330473(n+1))`
-/

namespace A128189.P8746960517868586483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016411 (A330473 (n + 1)).toNat

end

end A128189.P8746960517868586483

namespace A128189

/-- `A016411(A330473(n+1))` -/
def P8746960517868586483.Spec : Prop :=
  ∀ n, P8746960517868586483.a n = A128189 (n + 1)

end A128189

/-! ## A128189.P3268557214949517592

`A014579(A156363(n+1))`
-/

namespace A128189.P3268557214949517592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014579 (A156363 (n + 1)).toNat

end

end A128189.P3268557214949517592

namespace A128189

/-- `A014579(A156363(n+1))` -/
def P3268557214949517592.Spec : Prop :=
  ∀ n, P3268557214949517592.a n = A128189 (n + 1)

end A128189

/-!
# A128190: Inverse of A128189.

The programs for A128190, there is no canonical definition to state claims against.
-/

/-! ## A128190.P7650066669153820268

`(1-A048158(n+1))*A000035(A316273(n+1))`
-/

namespace A128190.P7650066669153820268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A048158 (n + 1)) * A000035 (A316273 (n + 1)).toNat

end

end A128190.P7650066669153820268

/-! ## A128190.P5045870346744959304

`A000035(A316273(n+1))*A115140(A048158(n+1))`
-/

namespace A128190.P5045870346744959304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A316273 (n + 1)).toNat * A115140 (A048158 (n + 1)).toNat

end

end A128190.P5045870346744959304

/-! ## A128190.P694946836772527359

`A008683(A108087(n)*A362925(n))`
-/

namespace A128190.P694946836772527359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A108087 n * A362925 n).toNat

end

end A128190.P694946836772527359

/-! ## A128190.P6131008008266049966

`A008683(A139526(n+3)-A122204(n))`
-/

namespace A128190.P6131008008266049966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139526 (n + 3) - A122204 n).toNat

end

end A128190.P6131008008266049966

/-! ## A128190.P18082157554647591291

`A016383(A279741(n+1))`
-/

namespace A128190.P18082157554647591291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016383 (A279741 (n + 1)).toNat

end

end A128190.P18082157554647591291

/-!
# A128192: a(n) = denominator of b(n), where b(1)=1, b(n+1) = sum{k=1 to n} {b(n+1-k)/k} ({x} is the fractional part of x).

The programs for A128192, there is no canonical definition to state claims against.
-/

/-! ## A128192.P14725458010253220262

`lcm(A293606(A007956(n+1)), A323340(n))`
-/

namespace A128192.P14725458010253220262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A293606 (A007956 (n + 1)).toNat) (A323340 n)

end

end A128192.P14725458010253220262

/-! ## A128192.P17304708310266661336

`gcd(15*A216345(n!), n!)`
-/

namespace A128192.P17304708310266661336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (15 * A216345 (Nat.factorial n)) (Nat.factorial n : ℤ)

end

end A128192.P17304708310266661336

/-! ## A128192.P5170154548380847346

`A106614(n!/Δ[(n+2)*ceil((n+1)/5)])`
-/

namespace A128192.P5170154548380847346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ⌈(n + 1 : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A128192.P5170154548380847346

/-! ## A128192.P9589367914780103791

`A028310(n!/A138997(n+1))`
-/

namespace A128192.P9589367914780103791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A138997 (n + 1) : ℚ))).toNat

end

end A128192.P9589367914780103791

/-!
# A128193: First differences of values of n for Cullen primes in A005849.

The programs for A128193, there is no canonical definition to state claims against.
-/

/-! ## A128193.P11806845104638967095

`A005849(n+2)-A005849(n+1)`
-/

namespace A128193.P11806845104638967095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005849 (n + 2) - A005849 (n + 1)

end

end A128193.P11806845104638967095

/-! ## A128193.P3163760178216652037

`Δ[A005849(n+1)]`
-/

namespace A128193.P3163760178216652037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128193.P3163760178216652037

/-! ## A128193.P162147942379483242

`abs(Δ[A005849(A005555(n))])`
-/

namespace A128193.P162147942379483242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005849 (A005555 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128193.P162147942379483242

/-! ## A128193.P7227886977848760839

`abs(Δ[A005849(A291769(n))])`
-/

namespace A128193.P7227886977848760839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005849 (A291769 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128193.P7227886977848760839

/-! ## A128193.P11135688462213511945

`Δ[record[A005849(A000174(n))]]`
-/

namespace A128193.P11135688462213511945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005849 (A000174 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128193.P11135688462213511945

/-!
# A128194: Absolute value of second differences of A005849.

The programs for A128194, there is no canonical definition to state claims against.
-/

/-! ## A128194.P6464841574981442353

`abs(A128193(n+2)-A128193(n+1))`
-/

namespace A128194.P6464841574981442353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128193 (n + 2) - A128193 (n + 1)|

end

end A128194.P6464841574981442353

/-! ## A128194.P9393775571252247693

`abs(Δ[A128193(n+1)])`
-/

namespace A128194.P9393775571252247693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128194.P9393775571252247693

/-! ## A128194.P5036149049763875765

`abs(Δ[Δ[A005849(n+1)]])`
-/

namespace A128194.P5036149049763875765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005849 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A128194.P5036149049763875765

/-!
# A128195: a(n) = (2*n + 1)*(a(n - 1) + 2^n) for n >= 1, a(0) = 1.

The programs for A128195, the canonical program `A128195.P13310727631560374897` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128195 has offset 0).

The definition of A128195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(a(n-1)+2^n)` (program `A128195.P13310727631560374897`, by `A128195.P13310727631560374897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128195.P13310727631560374897

`(2*n+1)*(a(n-1)+2^n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128195

/-- `(2*n+1)*(a(n-1)+2^n)` -/
def P13310727631560374897.Spec : Prop :=
  ∀ n, (P13310727631560374897.a n : ℤ) = A128195 n

theorem P13310727631560374897.correct : P13310727631560374897.Spec := by
  intro n
  simp only [A128195]

end A128195

/-! ## A128195.P4404300303849431619

`A128196(n)*A005408(n)`
-/

namespace A128195.P4404300303849431619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128196 n * A005408 n

end

end A128195.P4404300303849431619

namespace A128195

/-- `A128196(n)*A005408(n)` -/
def P4404300303849431619.Spec : Prop :=
  ∀ n, P4404300303849431619.a n = A128195 n

end A128195

/-! ## A128195.P4192077552558144290

`A128196(n+1)-A000079(n+1)`
-/

namespace A128195.P4192077552558144290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128196 (n + 1) - A000079 (n + 1)

end

end A128195.P4192077552558144290

namespace A128195

/-- `A128196(n+1)-A000079(n+1)` -/
def P4192077552558144290.Spec : Prop :=
  ∀ n, P4192077552558144290.a n = A128195 n

end A128195

/-! ## A128195.P9104258879061896600

`(a(n-1)+2^n)*Δ[n²]` with `a(0)=1`
-/

namespace A128195.P9104258879061896600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (2 ^ n : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128195.P9104258879061896600

namespace A128195

/-- `(a(n-1)+2^n)*Δ[n²]` -/
def P9104258879061896600.Spec : Prop :=
  ∀ n, P9104258879061896600.a n = A128195 n

end A128195

/-! ## A128195.P1872076955228362813

`(Δ[2*a(n-1)]+a(n-1))*(2*n+1)` with `a(0)=1`
-/

namespace A128195.P1872076955228362813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)) * (2 * n + 1 : ℤ)

end

end A128195.P1872076955228362813

namespace A128195

/-- `(Δ[2*a(n-1)]+a(n-1))*(2*n+1)` -/
def P1872076955228362813.Spec : Prop :=
  ∀ n, P1872076955228362813.a n = A128195 n

end A128195

/-! ## A128195.P13323231306568785044

`(A000079(n)+a(n-1))*Δ[n²]` with `a(0)=1`
-/

namespace A128195.P13323231306568785044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000079 n + a (n - 1)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A128195.P13323231306568785044

namespace A128195

/-- `(A000079(n)+a(n-1))*Δ[n²]` -/
def P13323231306568785044.Spec : Prop :=
  ∀ n, P13323231306568785044.a n = A128195 n

end A128195

/-! ## A128195.P2575879008321809474

`A014480(n)/A000079(n)*A128196(n)`
-/

namespace A128195.P2575879008321809474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014480 n : ℚ) / (A000079 n : ℚ) * (A128196 n : ℚ)

end

end A128195.P2575879008321809474

namespace A128195

/-- `A014480(n)/A000079(n)*A128196(n)` -/
def P2575879008321809474.Spec : Prop :=
  ∀ n, P2575879008321809474.a n = (A128195 n : ℚ)

end A128195

/-! ## A128195.P4798447809327139477

`A001147(n+1)/A001147(n)*A128196(n)`
-/

namespace A128195.P4798447809327139477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) : ℚ) / (A001147 n : ℚ) * (A128196 n : ℚ)

end

end A128195.P4798447809327139477

namespace A128195

/-- `A001147(n+1)/A001147(n)*A128196(n)` -/
def P4798447809327139477.Spec : Prop :=
  ∀ n, P4798447809327139477.a n = (A128195 n : ℚ)

end A128195

/-! ## A128195.P1076687181817429401

`A097801(n+1)/A097801(n)*A128196(n)`
-/

namespace A128195.P1076687181817429401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097801 (n + 1) : ℚ) / (A097801 n : ℚ) * (A128196 n : ℚ)

end

end A128195.P1076687181817429401

namespace A128195

/-- `A097801(n+1)/A097801(n)*A128196(n)` -/
def P1076687181817429401.Spec : Prop :=
  ∀ n, P1076687181817429401.a n = (A128195 n : ℚ)

end A128195

/-!
# A128196: a(n) = (2*n - 1)*a(n - 1) + 2^n for n >= 1, a(0) = 1.

The programs for A128196, the canonical program `A128196.P17541814596273981861` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128196 has offset 0).

The definition of A128196 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*a(n-1)+2^n` (program `A128196.P17541814596273981861`, by `A128196.P17541814596273981861.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128196.P17541814596273981861

`(2*n-1)*a(n-1)+2^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A128196

/-- `(2*n-1)*a(n-1)+2^n` -/
def P17541814596273981861.Spec : Prop :=
  ∀ n, P17541814596273981861.a n = A128196 n

theorem P17541814596273981861.correct : P17541814596273981861.Spec := by
  intro n
  simp only [A128196]

end A128196

/-! ## A128196.P7488456099765843311

`A128195(n)/A005408(n)`
-/

namespace A128196.P7488456099765843311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128195 n : ℚ) / (A005408 n : ℚ)

end

end A128196.P7488456099765843311

namespace A128196

/-- `A128195(n)/A005408(n)` -/
def P7488456099765843311.Spec : Prop :=
  ∀ n, P7488456099765843311.a n = (A128196 n : ℚ)

end A128196

/-! ## A128196.P16379907642450731326

`2^n+a(n-1)/(2/(2-1/n)-1)` with `a(0)=1`
-/

namespace A128196.P16379907642450731326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℚ) + a (n - 1) / (2 / (2 - 1 / (n : ℚ)) - 1)

end

end A128196.P16379907642450731326

namespace A128196

/-- `2^n+a(n-1)/(2/(2-1/n)-1)` -/
def P16379907642450731326.Spec : Prop :=
  ∀ n, P16379907642450731326.a n = (A128196 n : ℚ)

end A128196

/-! ## A128196.P17016271819587230728

`2^n+a(n-1)*A004273(n)` with `a(0)=1`
-/

namespace A128196.P17016271819587230728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) + a (n - 1) * A004273 n

end

end A128196.P17016271819587230728

namespace A128196

/-- `2^n+a(n-1)*A004273(n)` -/
def P17016271819587230728.Spec : Prop :=
  ∀ n, P17016271819587230728.a n = A128196 n

end A128196

/-! ## A128196.P4989433264216650

`A000225(n)+(2*n-1)*a(n-1)+1` with `a(0)=1`
-/

namespace A128196.P4989433264216650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000225 n + (((2 * n : ℤ) - 1) * a (n - 1) + 1)

end

end A128196.P4989433264216650

namespace A128196

/-- `A000225(n)+(2*n-1)*a(n-1)+1` -/
def P4989433264216650.Spec : Prop :=
  ∀ n, P4989433264216650.a n = A128196 n

end A128196

/-! ## A128196.P14831983603895161772

`A128195(n)/(A000290(n+1)-A000290(n))`
-/

namespace A128196.P14831983603895161772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128195 n : ℚ) / (A000290 (n + 1) - A000290 n : ℚ)

end

end A128196.P14831983603895161772

namespace A128196

/-- `A128195(n)/(A000290(n+1)-A000290(n))` -/
def P14831983603895161772.Spec : Prop :=
  ∀ n, P14831983603895161772.a n = (A128196 n : ℚ)

end A128196

/-!
# A128197: Strong irregular primes. A prime is strong irregular iff it is a Bernoulli irregular prime and an Euler irregular prime.

The programs for A128197, there is no canonical definition to state claims against.
-/

/-! ## A128197.P14730430294629124343

`∩[A000928(n+1), A120337(n+1)]`
-/

namespace A128197.P14730430294629124343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128197.P14730430294629124343

/-! ## A128197.P8290816163131461340

`∩[A000040(A105018(n+1)), A120337(n+1)]`
-/

namespace A128197.P8290816163131461340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105018 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128197.P8290816163131461340

/-!
# A128198: Array read by antidiagonals. A scheme of arrangements: ArrScheme(k,n) = VarScheme(k,n-1) + k^n; ArrScheme(k,0) = 1. VarScheme(k,n) = (n*k+1)*(VarScheme(k,n-1) + k^n); VarScheme(k,0) = 1.

The programs for A128198, there is no canonical definition to state claims against.
-/

/-! ## A128198.P1831744709978565954

`A126062(n)/A077028(n)`
-/

namespace A128198.P1831744709978565954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126062 n : ℚ) / (A077028 n : ℚ)

end

end A128198.P1831744709978565954

/-! ## A128198.P16813514917586877087

`A126062(n)/sqrt(A082043(n))`
-/

namespace A128198.P16813514917586877087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A126062 n : ℝ) / Real.sqrt (A082043 n : ℝ)

end

end A128198.P16813514917586877087

/-! ## A128198.P6416559860846914452

`A126062(n)/(A004247(n)+1)`
-/

namespace A128198.P6416559860846914452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126062 n : ℚ) / (A004247 n + 1 : ℚ)

end

end A128198.P6416559860846914452

/-! ## A128198.P2864275925411649668

`A126062(n)/A000005(A117401(n))`
-/

namespace A128198.P2864275925411649668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126062 n : ℚ) / (A000005 (A117401 n).toNat : ℚ)

end

end A128198.P2864275925411649668

/-! ## A128198.P15310818602600365839

`A126062(n)/A348553(A004247(n))`
-/

namespace A128198.P15310818602600365839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126062 n : ℚ) / (A348553 (A004247 n).toNat : ℚ)

end

end A128198.P15310818602600365839

