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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A076100: Least common multiple of n numbers starting with n.

The programs for A076100, the canonical program `A076100.P8974903372790770740` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076100 has offset 1).

The definition of A076100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076100.P8974903372790770740

`lcm(n*(4*n+2), a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076100

/-- `lcm(n*(4*n+2), a(n-1))` -/
def P8974903372790770740.Spec : Prop :=
  ∀ n, (P8974903372790770740.a n : ℤ) = A076100 (n + 1)

theorem P8974903372790770740.correct : P8974903372790770740.Spec := by
  intro n
  simp only [A076100, Nat.add_sub_cancel]

end A076100

/-! ## A076100.P10402780328610134034

`lcm(-a(n-1), record[or(1, -n)²-n])` with `a(0)=1`
-/

namespace A076100.P10402780328610134034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(n : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A076100.P10402780328610134034

namespace A076100

/-- `lcm(-a(n-1), record[or(1, -n)²-n])` -/
def P10402780328610134034.Spec : Prop :=
  ∀ n, (P10402780328610134034.a n : ℤ) = A076100 (n + 1)

end A076100

/-! ## A076100.P18323309891021187458

`A003418(Δ[n²])`
-/

namespace A076100.P18323309891021187458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A076100.P18323309891021187458

namespace A076100

/-- `A003418(Δ[n²])` -/
def P18323309891021187458.Spec : Prop :=
  ∀ n, P18323309891021187458.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P7097809569211359333

`A081537(Δ[n²])`
-/

namespace A076100.P7097809569211359333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081537 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A076100.P7097809569211359333

namespace A076100

/-- `A081537(Δ[n²])` -/
def P7097809569211359333.Spec : Prop :=
  ∀ n, P7097809569211359333.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P12620370127536170360

`A139550(record[xor(3, n)])`
-/

namespace A076100.P12620370127536170360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A076100.P12620370127536170360

namespace A076100

/-- `A139550(record[xor(3, n)])` -/
def P12620370127536170360.Spec : Prop :=
  ∀ n, P12620370127536170360.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P1077649996654834145

`A070198(2*n)+1`
-/

namespace A076100.P1077649996654834145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (2 * n) + 1

end

end A076100.P1077649996654834145

namespace A076100

/-- `A070198(2*n)+1` -/
def P1077649996654834145.Spec : Prop :=
  ∀ n, P1077649996654834145.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P2264440493022536714

`A211168(2*(n+1))`
-/

namespace A076100.P2264440493022536714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211168 (2 * (n + 1))

end

end A076100.P2264440493022536714

namespace A076100

/-- `A211168(2*(n+1))` -/
def P2264440493022536714.Spec : Prop :=
  ∀ n, P2264440493022536714.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P1571179574420917715

`A139550(4*n+2)`
-/

namespace A076100.P1571179574420917715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (4 * n + 2)

end

end A076100.P1571179574420917715

namespace A076100

/-- `A139550(4*n+2)` -/
def P1571179574420917715.Spec : Prop :=
  ∀ n, P1571179574420917715.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P15388405942091588422

`A139554(8*n+4)`
-/

namespace A076100.P15388405942091588422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139554 (8 * n + 4)

end

end A076100.P15388405942091588422

namespace A076100

/-- `A139554(8*n+4)` -/
def P15388405942091588422.Spec : Prop :=
  ∀ n, P15388405942091588422.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P4717663216326552480

`(n+1)*A025535(n)`
-/

namespace A076100.P4717663216326552480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025535 n

end

end A076100.P4717663216326552480

namespace A076100

/-- `(n+1)*A025535(n)` -/
def P4717663216326552480.Spec : Prop :=
  ∀ n, P4717663216326552480.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P7152598886165416213

`A075059(Δ[n²])-1`
-/

namespace A076100.P7152598886165416213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A076100.P7152598886165416213

namespace A076100

/-- `A075059(Δ[n²])-1` -/
def P7152598886165416213.Spec : Prop :=
  ∀ n, P7152598886165416213.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P13141323321581156768

`A051426(Δ[n²])/2`
-/

namespace A076100.P13141323321581156768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051426 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A076100.P13141323321581156768

namespace A076100

/-- `A051426(Δ[n²])/2` -/
def P13141323321581156768.Spec : Prop :=
  ∀ n, P13141323321581156768.a n = (A076100 (n + 1) : ℚ)

end A076100

/-! ## A076100.P14549767959289874631

`lcm(2*n+1, A099996(n))`
-/

namespace A076100.P14549767959289874631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A099996 n)

end

end A076100.P14549767959289874631

namespace A076100

/-- `lcm(2*n+1, A099996(n))` -/
def P14549767959289874631.Spec : Prop :=
  ∀ n, (P14549767959289874631.a n : ℤ) = A076100 (n + 1)

end A076100

/-! ## A076100.P97636377096084091

`A065500(2*n+1)-2*n`
-/

namespace A076100.P97636377096084091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065500 (2 * n + 1) - (2 * n : ℤ)

end

end A076100.P97636377096084091

namespace A076100

/-- `A065500(2*n+1)-2*n` -/
def P97636377096084091.Spec : Prop :=
  ∀ n, P97636377096084091.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P4447131446595442980

`lcm(n+1, A003418(2*n+1))`
-/

namespace A076100.P4447131446595442980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A003418 (2 * n + 1))

end

end A076100.P4447131446595442980

namespace A076100

/-- `lcm(n+1, A003418(2*n+1))` -/
def P4447131446595442980.Spec : Prop :=
  ∀ n, (P4447131446595442980.a n : ℤ) = A076100 (n + 1)

end A076100

/-! ## A076100.P1188519071132997175

`A060401(2*n+1)-(2*n+1)`
-/

namespace A076100.P1188519071132997175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A076100.P1188519071132997175

namespace A076100

/-- `A060401(2*n+1)-(2*n+1)` -/
def P1188519071132997175.Spec : Prop :=
  ∀ n, P1188519071132997175.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P14588970573404235485

`(2*n+1)*A002944(2*n+1)`
-/

namespace A076100.P14588970573404235485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A002944 (2 * n + 1)

end

end A076100.P14588970573404235485

namespace A076100

/-- `(2*n+1)*A002944(2*n+1)` -/
def P14588970573404235485.Spec : Prop :=
  ∀ n, P14588970573404235485.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P10615722082500515707

`A051451(A065515(2*n+1))`
-/

namespace A076100.P10615722082500515707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A065515 (2 * n + 1)).toNat

end

end A076100.P10615722082500515707

namespace A076100

/-- `A051451(A065515(2*n+1))` -/
def P10615722082500515707.Spec : Prop :=
  ∀ n, P10615722082500515707.a n = A076100 (n + 1)

end A076100

/-! ## A076100.P6995345082074838507

`A066574(A238898(2*(n+1)))/2`
-/

namespace A076100.P6995345082074838507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066574 (A238898 (2 * (n + 1))).toNat : ℚ) / 2

end

end A076100.P6995345082074838507

namespace A076100

/-- `A066574(A238898(2*(n+1)))/2` -/
def P6995345082074838507.Spec : Prop :=
  ∀ n, P6995345082074838507.a n = (A076100 (n + 1) : ℚ)

end A076100

/-! ## A076100.P4308631713517478048

`A173185(2*n+1)-A173185(2*n)`
-/

namespace A076100.P4308631713517478048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 (2 * n + 1) - A173185 (2 * n)

end

end A076100.P4308631713517478048

namespace A076100

/-- `A173185(2*n+1)-A173185(2*n)` -/
def P4308631713517478048.Spec : Prop :=
  ∀ n, P4308631713517478048.a n = A076100 (n + 1)

end A076100

/-!
# A076101: Initial members of groups in A076105.

The programs for A076101, there is no canonical definition to state claims against.
-/

/-! ## A076101.P15235746553083392240

`A076105(∑[n]+1)`
-/

namespace A076101.P15235746553083392240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076101.P15235746553083392240

/-! ## A076101.P11659966576242369487

`record[A076105(A114091(n+1))]`
-/

namespace A076101.P11659966576242369487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076101.P11659966576242369487

/-! ## A076101.P7414037258474762275

`record[A076105(A257504(n+1))]`
-/

namespace A076101.P7414037258474762275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076101.P7414037258474762275

/-! ## A076101.P14260776145609422663

`record[A076105(n+1)/A116666(n+1)]`
-/

namespace A076101.P14260776145609422663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076105 (n + 1) : ℚ) / (A116666 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076101.P14260776145609422663

/-! ## A076101.P17098718008038828054

`A076105(A000124(n))%A167499(n)`
-/

namespace A076101.P17098718008038828054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076105 (A000124 n).toNat) (A167499 n)

end

end A076101.P17098718008038828054

/-! ## A076101.P4562417016238479787

`A076105(A000124(n))*A093719(2*n+3)`
-/

namespace A076101.P4562417016238479787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (A000124 n).toNat * A093719 (2 * n + 3)

end

end A076101.P4562417016238479787

/-!
# A076102: Final members of groups in A076105.

The programs for A076102, there is no canonical definition to state claims against.
-/

/-! ## A076102.P16310358280092860748

`A076105(∑[n+1])`
-/

namespace A076102.P16310358280092860748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076102.P16310358280092860748

/-!
# A076103: Sums of members of groups in A076105.

The programs for A076103, there is no canonical definition to state claims against.
-/

/-! ## A076103.P3089892723107913881

`a(n-1)*A076104(n)` with `a(0)=1`
-/

namespace A076103.P3089892723107913881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A076104 n

end

end A076103.P3089892723107913881

/-! ## A076103.P2330314304845659742

`∏[A076104(n+1)]/A076104(n+1)`
-/

namespace A076103.P2330314304845659742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076104 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A076104 (n + 1) : ℚ)

end

end A076103.P2330314304845659742

/-! ## A076103.P14953524902930036882

`A355261(A094283(n+1))`
-/

namespace A076103.P14953524902930036882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (A094283 (n + 1)).toNat

end

end A076103.P14953524902930036882

/-! ## A076103.P9566342420185406806

`∏[A159822(record[A154695(n)])]`
-/

namespace A076103.P9566342420185406806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159822 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A076103.P9566342420185406806

/-!
# A076104: Ratios of sums of successive groups in A076105.

The programs for A076104, there is no canonical definition to state claims against.
-/

/-! ## A076104.P13385855351508852121

`A076103(n+2)/A076103(n+1)`
-/

namespace A076104.P13385855351508852121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076103 (n + 2) : ℚ) / (A076103 (n + 1) : ℚ)

end

end A076104.P13385855351508852121

/-! ## A076104.P1508238435369687221

`ratio[A076103(n+1)]`
-/

namespace A076104.P1508238435369687221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076103 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A076104.P1508238435369687221

/-! ## A076104.P9260174884013116593

`A094284(n+1)^Δ[A001222(A076103(n+1))]`
-/

namespace A076104.P9260174884013116593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076103 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094284 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A076104.P9260174884013116593

/-! ## A076104.P8964267687857167950

`Δ[A072649(A005448(3*n+2))]+1`
-/

namespace A076104.P8964267687857167950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A005448 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A076104.P8964267687857167950

/-! ## A076104.P6946290975312347269

`round(ratio[A348363(A273336(n))])`
-/

namespace A076104.P6946290975312347269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 (A273336 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A076104.P6946290975312347269

/-!
# A076105: a(1)=1 (first row) and then the n-th row of this triangle contains the least set of n unused natural numbers whose sum is a multiple of the sum of the previous row.

The programs for A076105, there is no canonical definition to state claims against.
-/

/-! ## A076105.P603471674920605389

`A094280(n+1)%A258700(A054024(n+1))`
-/

namespace A076105.P603471674920605389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094280 (n + 1)) (A258700 (A054024 (n + 1)).toNat)

end

end A076105.P603471674920605389

/-! ## A076105.P11274472777155019015

`A094280(n+1)%A122599(n+1)`
-/

namespace A076105.P11274472777155019015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094280 (n + 1)) (A122599 (n + 1))

end

end A076105.P11274472777155019015

/-! ## A076105.P17798323920489970709

`A094280(A090106(n+1))`
-/

namespace A076105.P17798323920489970709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A090106 (n + 1)).toNat

end

end A076105.P17798323920489970709

/-! ## A076105.P1651074271860609011

`A000188(A094280(n+1)²)`
-/

namespace A076105.P1651074271860609011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A094280 (n + 1) ^ 2).toNat

end

end A076105.P1651074271860609011

/-! ## A076105.P3061272420605397856

`A000196(A094280(n+1)²)`
-/

namespace A076105.P3061272420605397856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094280 (n + 1) ^ 2).toNat

end

end A076105.P3061272420605397856

/-!
# A076107: First of n consecutive integers whose sum is a positive n-th power, or 0 if no such integers exist.

The programs for A076107, there is no canonical definition to state claims against.
-/

/-! ## A076107.P6031222880143621266

`A330492(2*(n+1)^n-n+2)`
-/

namespace A076107.P6031222880143621266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 ((2 * (n + 1) ^ n : ℤ) - (n : ℤ) + 2).toNat

end

end A076107.P6031222880143621266

/-!
# A076108: Least positive n-th power that is the sum of n consecutive integers, or 0 if no such n-th power exists.

The programs for A076108, the canonical program `A076108.P2131833645639796247` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076108 has offset 1).

The definition of A076108 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076109, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076108.P2131833645639796247

`A076109(n+1)^(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076108

/-- `A076109(n+1)^(n+1)` -/
def P2131833645639796247.Spec : Prop :=
  ∀ n, P2131833645639796247.a n = A076108 (n + 1)

theorem P2131833645639796247.correct : P2131833645639796247.Spec := by
  intro n
  simp only [A076108, Nat.add_sub_cancel]

end A076108

/-! ## A076108.P15059601293033539795

`(A005920(n)%A099985(n+1))^(n+1)`
-/

namespace A076108.P15059601293033539795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005920 n) (A099985 (n + 1)) ^ (n + 1)

end

end A076108.P15059601293033539795

namespace A076108

/-- `(A005920(n)%A099985(n+1))^(n+1)` -/
def P15059601293033539795.Spec : Prop :=
  ∀ n, P15059601293033539795.a n = A076108 (n + 1)

end A076108

/-! ## A076108.P1331786636934466434

`(A079097(n)%A099985(n+1))^(n+1)`
-/

namespace A076108.P1331786636934466434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079097 n) (A099985 (n + 1)) ^ (n + 1)

end

end A076108.P1331786636934466434

namespace A076108

/-- `(A079097(n)%A099985(n+1))^(n+1)` -/
def P1331786636934466434.Spec : Prop :=
  ∀ n, P1331786636934466434.a n = A076108 (n + 1)

end A076108

/-! ## A076108.P10597660892125289707

`(A075664(n+1)%A099985(n+1))^(n+1)`
-/

namespace A076108.P10597660892125289707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075664 (n + 1)) (A099985 (n + 1)) ^ (n + 1)

end

end A076108.P10597660892125289707

namespace A076108

/-- `(A075664(n+1)%A099985(n+1))^(n+1)` -/
def P10597660892125289707.Spec : Prop :=
  ∀ n, P10597660892125289707.a n = A076108 (n + 1)

end A076108

/-! ## A076108.P14355559016737918363

`(A217947(n)%A099985(n+1))^n*A217947(n)%A099985(n+1)`
-/

namespace A076108.P14355559016737918363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217947 n) (A099985 (n + 1)) ^ n * Int.tmod (A217947 n) (A099985 (n + 1))

end

end A076108.P14355559016737918363

namespace A076108

/-- `(A217947(n)%A099985(n+1))^n*A217947(n)%A099985(n+1)` -/
def P14355559016737918363.Spec : Prop :=
  ∀ n, P14355559016737918363.a n = A076108 (n + 1)

end A076108

/-!
# A076109: Least positive k such that k^n is the sum of n consecutive integers, or 0 if no such k exists.

The programs for A076109, the canonical program `A076109.P16207230652435772450` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076109 has offset 1).

The definition of A076109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076109.P16207230652435772450

`A005920(n)%A099985(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076109

/-- `A005920(n)%A099985(n+1)` -/
def P16207230652435772450.Spec : Prop :=
  ∀ n, P16207230652435772450.a n = A076109 (n + 1)

theorem P16207230652435772450.correct : P16207230652435772450.Spec := by
  intro n
  simp only [A076109, Nat.add_sub_cancel]

end A076109

/-! ## A076109.P5848940299584927665

`A064808(n)%A099985(n+1)`
-/

namespace A076109.P5848940299584927665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064808 n) (A099985 (n + 1))

end

end A076109.P5848940299584927665

namespace A076109

/-- `A064808(n)%A099985(n+1)` -/
def P5848940299584927665.Spec : Prop :=
  ∀ n, P5848940299584927665.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P10241751695116228721

`A079097(n)%A099985(n+1)`
-/

namespace A076109.P10241751695116228721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079097 n) (A099985 (n + 1))

end

end A076109.P10241751695116228721

namespace A076109

/-- `A079097(n)%A099985(n+1)` -/
def P10241751695116228721.Spec : Prop :=
  ∀ n, P10241751695116228721.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P9661259864811373615

`A143690(n)%A099985(n+1)`
-/

namespace A076109.P9661259864811373615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143690 n) (A099985 (n + 1))

end

end A076109.P9661259864811373615

namespace A076109

/-- `A143690(n)%A099985(n+1)` -/
def P9661259864811373615.Spec : Prop :=
  ∀ n, P9661259864811373615.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P17231559737914459849

`A164845(n)%A099985(n+1)`
-/

namespace A076109.P17231559737914459849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164845 n) (A099985 (n + 1))

end

end A076109.P17231559737914459849

namespace A076109

/-- `A164845(n)%A099985(n+1)` -/
def P17231559737914459849.Spec : Prop :=
  ∀ n, P17231559737914459849.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P11048144752588580589

`A217947(n)%A099985(n+1)`
-/

namespace A076109.P11048144752588580589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217947 n) (A099985 (n + 1))

end

end A076109.P11048144752588580589

namespace A076109

/-- `A217947(n)%A099985(n+1)` -/
def P11048144752588580589.Spec : Prop :=
  ∀ n, P11048144752588580589.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P6996653220775428126

`A246695(n)%A099985(n+1)`
-/

namespace A076109.P6996653220775428126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246695 n) (A099985 (n + 1))

end

end A076109.P6996653220775428126

namespace A076109

/-- `A246695(n)%A099985(n+1)` -/
def P6996653220775428126.Spec : Prop :=
  ∀ n, P6996653220775428126.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P4131268890822293081

`A039623(n+1)%A099985(n+1)`
-/

namespace A076109.P4131268890822293081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039623 (n + 1)) (A099985 (n + 1))

end

end A076109.P4131268890822293081

namespace A076109

/-- `A039623(n+1)%A099985(n+1)` -/
def P4131268890822293081.Spec : Prop :=
  ∀ n, P4131268890822293081.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P11207606592832043283

`A070262(n+1)%A099985(n+1)`
-/

namespace A076109.P11207606592832043283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070262 (n + 1)) (A099985 (n + 1))

end

end A076109.P11207606592832043283

namespace A076109

/-- `A070262(n+1)%A099985(n+1)` -/
def P11207606592832043283.Spec : Prop :=
  ∀ n, P11207606592832043283.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P497826969758763701

`A075664(n+1)%A099985(n+1)`
-/

namespace A076109.P497826969758763701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075664 (n + 1)) (A099985 (n + 1))

end

end A076109.P497826969758763701

namespace A076109

/-- `A075664(n+1)%A099985(n+1)` -/
def P497826969758763701.Spec : Prop :=
  ∀ n, P497826969758763701.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P5967807654502530105

`A075666(n+1)%A099985(n+1)`
-/

namespace A076109.P5967807654502530105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075666 (n + 1)) (A099985 (n + 1))

end

end A076109.P5967807654502530105

namespace A076109

/-- `A075666(n+1)%A099985(n+1)` -/
def P5967807654502530105.Spec : Prop :=
  ∀ n, P5967807654502530105.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P4825617884343005814

`A080512(n+1)%A099985(n+1)`
-/

namespace A076109.P4825617884343005814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080512 (n + 1)) (A099985 (n + 1))

end

end A076109.P4825617884343005814

namespace A076109

/-- `A080512(n+1)%A099985(n+1)` -/
def P4825617884343005814.Spec : Prop :=
  ∀ n, P4825617884343005814.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P18172189874863521049

`A110349(n+1)%A099985(n+1)`
-/

namespace A076109.P18172189874863521049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110349 (n + 1)) (A099985 (n + 1))

end

end A076109.P18172189874863521049

namespace A076109

/-- `A110349(n+1)%A099985(n+1)` -/
def P18172189874863521049.Spec : Prop :=
  ∀ n, P18172189874863521049.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P3825078944567542017

`A127736(n+1)%A099985(n+1)`
-/

namespace A076109.P3825078944567542017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127736 (n + 1)) (A099985 (n + 1))

end

end A076109.P3825078944567542017

namespace A076109

/-- `A127736(n+1)%A099985(n+1)` -/
def P3825078944567542017.Spec : Prop :=
  ∀ n, P3825078944567542017.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P18119435572392530020

`A152018(n+1)%A099985(n+1)`
-/

namespace A076109.P18119435572392530020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152018 (n + 1)) (A099985 (n + 1))

end

end A076109.P18119435572392530020

namespace A076109

/-- `A152018(n+1)%A099985(n+1)` -/
def P18119435572392530020.Spec : Prop :=
  ∀ n, P18119435572392530020.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P13890848593448939627

`A152020(n+1)%A099985(n+1)`
-/

namespace A076109.P13890848593448939627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152020 (n + 1)) (A099985 (n + 1))

end

end A076109.P13890848593448939627

namespace A076109

/-- `A152020(n+1)%A099985(n+1)` -/
def P13890848593448939627.Spec : Prop :=
  ∀ n, P13890848593448939627.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P9161208487070233492

`A185505(n+1)%A099985(n+1)`
-/

namespace A076109.P9161208487070233492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185505 (n + 1)) (A099985 (n + 1))

end

end A076109.P9161208487070233492

namespace A076109

/-- `A185505(n+1)%A099985(n+1)` -/
def P9161208487070233492.Spec : Prop :=
  ∀ n, P9161208487070233492.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P1919545633953804667

`A214682(n+1)%A099985(n+1)`
-/

namespace A076109.P1919545633953804667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214682 (n + 1)) (A099985 (n + 1))

end

end A076109.P1919545633953804667

namespace A076109

/-- `A214682(n+1)%A099985(n+1)` -/
def P1919545633953804667.Spec : Prop :=
  ∀ n, P1919545633953804667.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P1121368803659573106

`A219621(n+1)%A099985(n+1)`
-/

namespace A076109.P1121368803659573106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219621 (n + 1)) (A099985 (n + 1))

end

end A076109.P1121368803659573106

namespace A076109

/-- `A219621(n+1)%A099985(n+1)` -/
def P1121368803659573106.Spec : Prop :=
  ∀ n, P1121368803659573106.a n = A076109 (n + 1)

end A076109

/-! ## A076109.P8806228323430598473

`A230018(n+1)%A099985(n+1)`
-/

namespace A076109.P8806228323430598473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230018 (n + 1)) (A099985 (n + 1))

end

end A076109.P8806228323430598473

namespace A076109

/-- `A230018(n+1)%A099985(n+1)` -/
def P8806228323430598473.Spec : Prop :=
  ∀ n, P8806228323430598473.a n = A076109 (n + 1)

end A076109

/-!
# A076110: Triangle (read by rows) in which the n-th row contains first n terms of an arithmetic progression with first term 1 and common difference (n-1).

The programs for A076110, the canonical program `A076110.P10148523856418061428` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076110 has offset 1).

The definition of A076110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076110.P11542471056289111485

`A079904(n)+1`
-/

namespace A076110.P11542471056289111485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + 1

end

end A076110.P11542471056289111485

namespace A076110

/-- `A079904(n)+1` -/
def P11542471056289111485.Spec : Prop :=
  ∀ n, P11542471056289111485.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P5783972715764275794

`A144204(n+1)+2`
-/

namespace A076110.P5783972715764275794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + 2

end

end A076110.P5783972715764275794

namespace A076110

/-- `A144204(n+1)+2` -/
def P5783972715764275794.Spec : Prop :=
  ∀ n, P5783972715764275794.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P8942214613318672624

`∑[char[∑[n+1]]]*A002262(n)+1`
-/

namespace A076110.P8942214613318672624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002262 n + 1

end

end A076110.P8942214613318672624

namespace A076110

/-- `∑[char[∑[n+1]]]*A002262(n)+1` -/
def P8942214613318672624.Spec : Prop :=
  ∀ n, P8942214613318672624.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P13920337433906505265

`A162610(n+1)-∑[2*char[∑[n+1]]]`
-/

namespace A076110.P13920337433906505265
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076110.P13920337433906505265

namespace A076110

/-- `A162610(n+1)-∑[2*char[∑[n+1]]]` -/
def P13920337433906505265.Spec : Prop :=
  ∀ n, P13920337433906505265.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P11869841441365008727

`(n-C(round(sqrt(2*(n+1))), 2))*A003056(n)+1`
-/

namespace A076110.P11869841441365008727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2 : ℤ)) * A003056 n + 1

end

end A076110.P11869841441365008727

namespace A076110

/-- `(n-C(round(sqrt(2*(n+1))), 2))*A003056(n)+1` -/
def P11869841441365008727.Spec : Prop :=
  ∀ n, P11869841441365008727.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P5187845258920189821

`(A002260(n+1)-1)*comp[∑[n]]%(n+2)+1`
-/

namespace A076110.P5187845258920189821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2) : ℕ) : ℤ) + 1

end

end A076110.P5187845258920189821

namespace A076110

/-- `(A002260(n+1)-1)*comp[∑[n]]%(n+2)+1` -/
def P5187845258920189821.Spec : Prop :=
  ∀ n, P5187845258920189821.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P8742936738723558147

`A143844(n)+A077028(n)`
-/

namespace A076110.P8742936738723558147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A077028 n

end

end A076110.P8742936738723558147

namespace A076110

/-- `A143844(n)+A077028(n)` -/
def P8742936738723558147.Spec : Prop :=
  ∀ n, P8742936738723558147.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P625567667403236793

`A303273(n)+A112367(n)`
-/

namespace A076110.P625567667403236793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 n + A112367 n

end

end A076110.P625567667403236793

namespace A076110

/-- `A303273(n)+A112367(n)` -/
def P625567667403236793.Spec : Prop :=
  ∀ n, P625567667403236793.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P17884398300082531543

`A176798(n)-A057944(n)`
-/

namespace A076110.P17884398300082531543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - A057944 n

end

end A076110.P17884398300082531543

namespace A076110

/-- `A176798(n)-A057944(n)` -/
def P17884398300082531543.Spec : Prop :=
  ∀ n, P17884398300082531543.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P12755020508002221743

`A077028(n)+A002262(n)²`
-/

namespace A076110.P12755020508002221743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + A002262 n ^ 2

end

end A076110.P12755020508002221743

namespace A076110

/-- `A077028(n)+A002262(n)²` -/
def P12755020508002221743.Spec : Prop :=
  ∀ n, P12755020508002221743.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P1585438655574803323

`A004247(n)+A143844(n)+1`
-/

namespace A076110.P1585438655574803323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (A143844 n + 1)

end

end A076110.P1585438655574803323

namespace A076110

/-- `A004247(n)+A143844(n)+1` -/
def P1585438655574803323.Spec : Prop :=
  ∀ n, P1585438655574803323.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P12306762655592544430

`A162609(n+1)+A002262(n)`
-/

namespace A076110.P12306762655592544430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) + A002262 n

end

end A076110.P12306762655592544430

namespace A076110

/-- `A162609(n+1)+A002262(n)` -/
def P12306762655592544430.Spec : Prop :=
  ∀ n, P12306762655592544430.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P17044879076058435615

`A087401(n)+A112367(n)+1`
-/

namespace A076110.P17044879076058435615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n + (A112367 n + 1)

end

end A076110.P17044879076058435615

namespace A076110

/-- `A087401(n)+A112367(n)+1` -/
def P17044879076058435615.Spec : Prop :=
  ∀ n, P17044879076058435615.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P4365301035644746802

`A081493(n+1)-A003056(n)`
-/

namespace A076110.P4365301035644746802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) - A003056 n

end

end A076110.P4365301035644746802

namespace A076110

/-- `A081493(n+1)-A003056(n)` -/
def P4365301035644746802.Spec : Prop :=
  ∀ n, P4365301035644746802.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P2613176337790431878

`A075362(n+1)-A051162(n)`
-/

namespace A076110.P2613176337790431878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) - A051162 n

end

end A076110.P2613176337790431878

namespace A076110

/-- `A075362(n+1)-A051162(n)` -/
def P2613176337790431878.Spec : Prop :=
  ∀ n, P2613176337790431878.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P10148523856418061428

`A069011(n)+1-A073254(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A076110

/-- `A069011(n)+1-A073254(n)` -/
def P10148523856418061428.Spec : Prop :=
  ∀ n, P10148523856418061428.a n = A076110 (n + 1)

theorem P10148523856418061428.correct : P10148523856418061428.Spec := by
  intro n
  simp only [A076110, Nat.add_sub_cancel]

end A076110

/-! ## A076110.P3872142088419541333

`A126890(n)+1-A057944(n)`
-/

namespace A076110.P3872142088419541333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n + (1 - A057944 n)

end

end A076110.P3872142088419541333

namespace A076110

/-- `A126890(n)+1-A057944(n)` -/
def P3872142088419541333.Spec : Prop :=
  ∀ n, P3872142088419541333.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P17151583954820494612

`A159797(n)+1-A025581(n)`
-/

namespace A076110.P17151583954820494612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 n + (1 - A025581 n)

end

end A076110.P17151583954820494612

namespace A076110

/-- `A159797(n)+1-A025581(n)` -/
def P17151583954820494612.Spec : Prop :=
  ∀ n, P17151583954820494612.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P15451880755675700689

`A132111(n)+1-A069011(n)`
-/

namespace A076110.P15451880755675700689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n + (1 - A069011 n)

end

end A076110.P15451880755675700689

namespace A076110

/-- `A132111(n)+1-A069011(n)` -/
def P15451880755675700689.Spec : Prop :=
  ∀ n, P15451880755675700689.a n = A076110 (n + 1)

end A076110

/-! ## A076110.P8111091230888201143

`A086273(n+1)-A139600(n)`
-/

namespace A076110.P8111091230888201143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086273 (n + 1) - A139600 n

end

end A076110.P8111091230888201143

namespace A076110

/-- `A086273(n+1)-A139600(n)` -/
def P8111091230888201143.Spec : Prop :=
  ∀ n, P8111091230888201143.a n = A076110 (n + 1)

end A076110

/-!
# A076111: Product of terms in n-th row of A076110.

The programs for A076111, there is no canonical definition to state claims against.
-/

/-! ## A076111.P2748738670161730400

`A092985(n)*(n²+1)`
-/

namespace A076111.P2748738670161730400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092985 n * (n ^ 2 + 1 : ℤ)

end

end A076111.P2748738670161730400

/-! ## A076111.P2842042280476511634

`A153189(∑[n]+n)`
-/

namespace A076111.P2842042280476511634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A076111.P2842042280476511634

/-! ## A076111.P910559743486861896

`A002522(n)*A092985(n)`
-/

namespace A076111.P910559743486861896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A092985 n

end

end A076111.P910559743486861896

/-! ## A076111.P3035622788589577964

`record[A108044(n)*A153189(n)]`
-/

namespace A076111.P3035622788589577964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n * A153189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076111.P3035622788589577964

/-! ## A076111.P549523123183034193

`record[A153189(gcd(n, A297328(n)))]`
-/

namespace A076111.P549523123183034193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153189 (Int.gcd (n : ℤ) (A297328 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076111.P549523123183034193

/-!
# A076112: Triangle (read by rows) in which the n-th row contains first n terms of n geometric progression with first term 1 and common ratio (n-1).

The programs for A076112, the canonical program `A076112.P16955840187618448059` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076112 has offset 1).

The definition of A076112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076112.P16955840187618448059

`∑[A010054(n)]^A002262(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076112

/-- `∑[A010054(n)]^A002262(n)` -/
def P16955840187618448059.Spec : Prop :=
  ∀ n, P16955840187618448059.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P4282697217085128786

`A002024(n+1)^A002262(n)`
-/

namespace A076112.P4282697217085128786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A002262 n : ℤ)

end

end A076112.P4282697217085128786

namespace A076112

/-- `A002024(n+1)^A002262(n)` -/
def P4282697217085128786.Spec : Prop :=
  ∀ n, P4282697217085128786.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P1630307529324967565

`(A003056(n)+1)^A002262(n)`
-/

namespace A076112.P1630307529324967565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1 : ℚ) ^ (A002262 n : ℤ)

end

end A076112.P1630307529324967565

namespace A076112

/-- `(A003056(n)+1)^A002262(n)` -/
def P1630307529324967565.Spec : Prop :=
  ∀ n, P1630307529324967565.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P3178286295373133380

`A000194(2*n)^A002262(n)`
-/

namespace A076112.P3178286295373133380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000194 (2 * n) : ℚ) ^ (A002262 n : ℤ)

end

end A076112.P3178286295373133380

namespace A076112

/-- `A000194(2*n)^A002262(n)` -/
def P3178286295373133380.Spec : Prop :=
  ∀ n, P3178286295373133380.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P11160327758502815540

`A002024(n+1)^A057554(Δ[n²])`
-/

namespace A076112.P11160327758502815540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A076112.P11160327758502815540

namespace A076112

/-- `A002024(n+1)^A057554(Δ[n²])` -/
def P11160327758502815540.Spec : Prop :=
  ∀ n, P11160327758502815540.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P231577120566686324

`A002024(n+1)^(A002260(n+1)-1)`
-/

namespace A076112.P231577120566686324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A002260 (n + 1) - 1 : ℤ)

end

end A076112.P231577120566686324

namespace A076112

/-- `A002024(n+1)^(A002260(n+1)-1)` -/
def P231577120566686324.Spec : Prop :=
  ∀ n, P231577120566686324.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P13105843730333336194

`A002024(n+1)^(A057555(2*n+1)-1)`
-/

namespace A076112.P13105843730333336194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A057555 (2 * n + 1) - 1 : ℤ)

end

end A076112.P13105843730333336194

namespace A076112

/-- `A002024(n+1)^(A057555(2*n+1)-1)` -/
def P13105843730333336194.Spec : Prop :=
  ∀ n, P13105843730333336194.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P13773235818155967593

`A002024(n+1)^(A057554(2*n+1)%63)`
-/

namespace A076112.P13773235818155967593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (Int.tmod (A057554 (2 * n + 1)) 63 : ℤ)

end

end A076112.P13773235818155967593

namespace A076112

/-- `A002024(n+1)^(A057554(2*n+1)%63)` -/
def P13773235818155967593.Spec : Prop :=
  ∀ n, P13773235818155967593.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P13195509354827404952

`A002024(n+1)^(A026100(A026098(n+1))-1)`
-/

namespace A076112.P13195509354827404952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) ^ (A026100 (A026098 (n + 1)).toNat - 1 : ℤ)

end

end A076112.P13195509354827404952

namespace A076112

/-- `A002024(n+1)^(A026100(A026098(n+1))-1)` -/
def P13195509354827404952.Spec : Prop :=
  ∀ n, P13195509354827404952.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P10866116115321277913

`A139526(n+2)/A007318(n)`
-/

namespace A076112.P10866116115321277913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139526 (n + 2) : ℚ) / (A007318 n : ℚ)

end

end A076112.P10866116115321277913

namespace A076112

/-- `A139526(n+2)/A007318(n)` -/
def P10866116115321277913.Spec : Prop :=
  ∀ n, P10866116115321277913.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P16599382401996225516

`A219694(n+1)/A132159(n)`
-/

namespace A076112.P16599382401996225516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 (n + 1) : ℚ) / (A132159 n : ℚ)

end

end A076112.P16599382401996225516

namespace A076112

/-- `A219694(n+1)/A132159(n)` -/
def P16599382401996225516.Spec : Prop :=
  ∀ n, P16599382401996225516.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P3326209756322473341

`A079901(comp[∑[n-1]])`
-/

namespace A076112.P3326209756322473341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076112.P3326209756322473341

namespace A076112

/-- `A079901(comp[∑[n-1]])` -/
def P3326209756322473341.Spec : Prop :=
  ∀ n, P3326209756322473341.a n = A076112 (n + 1)

end A076112

/-! ## A076112.P10535454310265032414

`A095888(A038722(n+1))`
-/

namespace A076112.P10535454310265032414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (A038722 (n + 1)).toNat

end

end A076112.P10535454310265032414

namespace A076112

/-- `A095888(A038722(n+1))` -/
def P10535454310265032414.Spec : Prop :=
  ∀ n, P10535454310265032414.a n = A076112 (n + 1)

end A076112

/-! ## A076112.P3791628344032627472

`A095888(A002024(n+1)²-n)`
-/

namespace A076112.P3791628344032627472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095888 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A076112.P3791628344032627472

namespace A076112

/-- `A095888(A002024(n+1)²-n)` -/
def P3791628344032627472.Spec : Prop :=
  ∀ n, P3791628344032627472.a n = A076112 (n + 1)

end A076112

/-! ## A076112.P6317136792489372705

`A075363(n+1)/A002024(n+1)`
-/

namespace A076112.P6317136792489372705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075363 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A076112.P6317136792489372705

namespace A076112

/-- `A075363(n+1)/A002024(n+1)` -/
def P6317136792489372705.Spec : Prop :=
  ∀ n, P6317136792489372705.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P9424238960684254671

`A075363(n+1)/A123578(n+1)`
-/

namespace A076112.P9424238960684254671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075363 (n + 1) : ℚ) / (A123578 (n + 1) : ℚ)

end

end A076112.P9424238960684254671

namespace A076112

/-- `A075363(n+1)/A123578(n+1)` -/
def P9424238960684254671.Spec : Prop :=
  ∀ n, P9424238960684254671.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P6777079043231412339

`gcd(A055864(n+1), A075363(n+1))`
-/

namespace A076112.P6777079043231412339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055864 (n + 1)) (A075363 (n + 1))

end

end A076112.P6777079043231412339

namespace A076112

/-- `gcd(A055864(n+1), A075363(n+1))` -/
def P6777079043231412339.Spec : Prop :=
  ∀ n, (P6777079043231412339.a n : ℤ) = A076112 (n + 1)

end A076112

/-! ## A076112.P11595865729169262755

`A075363(n+1)/A068424(n+1)*A008279(n)`
-/

namespace A076112.P11595865729169262755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075363 (n + 1) : ℚ) / (A068424 (n + 1) : ℚ) * (A008279 n : ℚ)

end

end A076112.P11595865729169262755

namespace A076112

/-- `A075363(n+1)/A068424(n+1)*A008279(n)` -/
def P11595865729169262755.Spec : Prop :=
  ∀ n, P11595865729169262755.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P16641494337812883533

`A056856(n+1)/A130534(n)`
-/

namespace A076112.P16641494337812883533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056856 (n + 1) : ℚ) / (A130534 n : ℚ)

end

end A076112.P16641494337812883533

namespace A076112

/-- `A056856(n+1)/A130534(n)` -/
def P16641494337812883533.Spec : Prop :=
  ∀ n, P16641494337812883533.a n = (A076112 (n + 1) : ℚ)

end A076112

/-! ## A076112.P7108269115821339793

`A248664(n+1)/A248669(n+1)`
-/

namespace A076112.P7108269115821339793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248664 (n + 1) : ℚ) / (A248669 (n + 1) : ℚ)

end

end A076112.P7108269115821339793

namespace A076112

/-- `A248664(n+1)/A248669(n+1)` -/
def P7108269115821339793.Spec : Prop :=
  ∀ n, P7108269115821339793.a n = (A076112 (n + 1) : ℚ)

end A076112

/-!
# A076113: a(n) = n^(n*(n-1)/2).

The programs for A076113, the canonical program `A076113.P4237891289795268411` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076113 has offset 0).

The definition of A076113 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076113.P4237891289795268411

`n^(n*(n-1)/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076113

/-- `n^(n*(n-1)/2)` -/
def P4237891289795268411.Spec : Prop :=
  ∀ n, P4237891289795268411.a n = (A076113 n : ℝ)

end A076113

/-! ## A076113.P9584266557454284822

`(n^(lcm(n, n-1)/4))²`
-/

namespace A076113.P9584266557454284822
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) ^ ((Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ) / 4 : ℝ)) ^ 2

end

end A076113.P9584266557454284822

namespace A076113

/-- `(n^(lcm(n, n-1)/4))²` -/
def P9584266557454284822.Spec : Prop :=
  ∀ n, P9584266557454284822.a n = (A076113 n : ℝ)

end A076113

/-! ## A076113.P10984223154541728163

`floor(n^((n²-n)*tan(acot(2))))`
-/

namespace A076113.P10984223154541728163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ)))⌋

end

end A076113.P10984223154541728163

namespace A076113

/-- `floor(n^((n²-n)*tan(acot(2))))` -/
def P10984223154541728163.Spec : Prop :=
  ∀ n, P10984223154541728163.a n = A076113 n

end A076113

/-! ## A076113.P2769088632906893087

`ceil(n^((n²-n)*tan(acot(2))))`
-/

namespace A076113.P2769088632906893087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (((n ^ 2 : ℤ) - (n : ℤ) : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ)))⌉

end

end A076113.P2769088632906893087

namespace A076113

/-- `ceil(n^((n²-n)*tan(acot(2))))` -/
def P2769088632906893087.Spec : Prop :=
  ∀ n, P2769088632906893087.a n = A076113 n

end A076113

/-! ## A076113.P9583570878185156911

`A391482(∑[n]+n)`
-/

namespace A076113.P9583570878185156911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391482 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A076113.P9583570878185156911

namespace A076113

/-- `A391482(∑[n]+n)` -/
def P9583570878185156911.Spec : Prop :=
  ∀ n, P9583570878185156911.a n = A076113 n

end A076113

/-!
# A076115: Squares (or 0) from A076114.

The programs for A076115, there is no canonical definition to state claims against.
-/

/-! ## A076115.P14746274718436960845

`A386931(n+1)²`
-/

namespace A076115.P14746274718436960845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386931 (n + 1) ^ 2

end

end A076115.P14746274718436960845

/-! ## A076115.P18361045594830264453

`A000290(A386931(n+1)%A004823(n+1))`
-/

namespace A076115.P18361045594830264453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A386931 (n + 1)) (A004823 (n + 1))).toNat

end

end A076115.P18361045594830264453

/-! ## A076115.P13382379292814706874

`A000290(A386931(n+1))%A049202(n+1)`
-/

namespace A076115.P13382379292814706874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A386931 (n + 1)).toNat) (A049202 (n + 1))

end

end A076115.P13382379292814706874

/-! ## A076115.P6201431174189891106

`A386931(n+1)^(A089026(2*(n+1))+1)`
-/

namespace A076115.P6201431174189891106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386931 (n + 1) : ℚ) ^ (A089026 (2 * (n + 1)) + 1 : ℤ)

end

end A076115.P6201431174189891106

/-! ## A076115.P10851391145681408134

`A386931(n+1)^A002378(A089026(2*(n+1)))`
-/

namespace A076115.P10851391145681408134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386931 (n + 1) : ℚ) ^ (A002378 (A089026 (2 * (n + 1))).toNat : ℤ)

end

end A076115.P10851391145681408134

/-! ## A076115.P4774745050986279424

`A386931(n+1)^A000005(A068231(n+1))`
-/

namespace A076115.P4774745050986279424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386931 (n + 1) : ℚ) ^ (A000005 (A068231 (n + 1)).toNat : ℤ)

end

end A076115.P4774745050986279424

/-!
# A076117: Cubes (or 0) from A076116.

The programs for A076117, there is no canonical definition to state claims against.
-/

/-! ## A076117.P10774379985642071362

`A343996(n+1)^A098340(A076775(n+1))`
-/

namespace A076117.P10774379985642071362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343996 (n + 1) : ℚ) ^ (A098340 (A076775 (n + 1)).toNat : ℤ)

end

end A076117.P10774379985642071362

/-!
# A076118: a(n) = Sum_{k=n/2..n} k * (-1)^(n-k) * C(k,n-k).

The programs for A076118, the canonical program `A076118.P15904849508084757270` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076118 has offset 0).

The definition of A076118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076118.P16264661663014875013

`ogf((x-x^2)/(1-2x+3x^2-2x^3+x^4))`
-/

namespace A076118.P16264661663014875013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -2, 3, -2, 1] n

end

end A076118.P16264661663014875013

namespace A076118

/-- `ogf((x-x^2)/(1-2x+3x^2-2x^3+x^4))` -/
def P16264661663014875013.Spec : Prop :=
  ∀ n, P16264661663014875013.a n = A076118 n

end A076118

/-! ## A076118.P4886495297790427125

`n*round(sin(n%6))-a(n-1)` with `a(0)=0`
-/

namespace A076118.P4886495297790427125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ)) - a (n - 1)

end

end A076118.P4886495297790427125

namespace A076118

/-- `n*round(sin(n%6))-a(n-1)` -/
def P4886495297790427125.Spec : Prop :=
  ∀ n, P4886495297790427125.a n = A076118 n

end A076118

/-! ## A076118.P15904849508084757270

`(n*(a(n-1)-a(n-2))-a(n-1))%n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076118

/-- `(n*(a(n-1)-a(n-2))-a(n-1))%n` -/
def P15904849508084757270.Spec : Prop :=
  ∀ n, P15904849508084757270.a n = A076118 n

theorem P15904849508084757270.correct : P15904849508084757270.Spec := by
  intro n
  simp only [A076118]

end A076118

/-! ## A076118.P9335181650337973964

`A100050(n)-a(n-1)` with `a(0)=0`
-/

namespace A076118.P9335181650337973964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A100050 n - a (n - 1)

end

end A076118.P9335181650337973964

namespace A076118

/-- `A100050(n)-a(n-1)` -/
def P9335181650337973964.Spec : Prop :=
  ∀ n, P9335181650337973964.a n = A076118 n

end A076118

/-! ## A076118.P7585295241258285624

`n*A128834(n)-a(n-1)` with `a(0)=0`
-/

namespace A076118.P7585295241258285624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * A128834 n - a (n - 1)

end

end A076118.P7585295241258285624

namespace A076118

/-- `n*A128834(n)-a(n-1)` -/
def P7585295241258285624.Spec : Prop :=
  ∀ n, P7585295241258285624.a n = A076118 n

end A076118

/-! ## A076118.P1517717684648975380

`n*A163806(n)-a(n-1)` with `a(0)=0`
-/

namespace A076118.P1517717684648975380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * A163806 n - a (n - 1)

end

end A076118.P1517717684648975380

namespace A076118

/-- `n*A163806(n)-a(n-1)` -/
def P1517717684648975380.Spec : Prop :=
  ∀ n, P1517717684648975380.a n = A076118 n

end A076118

/-! ## A076118.P9233339880734976867

`n*(1-A030118(n)+n)-a(n-1)` with `a(0)=0`
-/

namespace A076118.P9233339880734976867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - A030118 n + (n : ℤ)) - a (n - 1)

end

end A076118.P9233339880734976867

namespace A076118

/-- `n*(1-A030118(n)+n)-a(n-1)` -/
def P9233339880734976867.Spec : Prop :=
  ∀ n, P9233339880734976867.a n = A076118 n

end A076118

/-! ## A076118.P9245748226051352253

`A099254(n)-A010892(n)`
-/

namespace A076118.P9245748226051352253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 n - A010892 n

end

end A076118.P9245748226051352253

namespace A076118

/-- `A099254(n)-A010892(n)` -/
def P9245748226051352253.Spec : Prop :=
  ∀ n, P9245748226051352253.a n = A076118 n

end A076118

/-! ## A076118.P16513718351129231031

`A130151(n)*A151842(n)`
-/

namespace A076118.P16513718351129231031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n * A151842 n

end

end A076118.P16513718351129231031

namespace A076118

/-- `A130151(n)*A151842(n)` -/
def P16513718351129231031.Spec : Prop :=
  ∀ n, P16513718351129231031.a n = A076118 n

end A076118

/-! ## A076118.P5125124132271110589

`A166711(n)/A122876(n)`
-/

namespace A076118.P5125124132271110589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166711 n : ℚ) / (A122876 n : ℚ)

end

end A076118.P5125124132271110589

namespace A076118

/-- `A166711(n)/A122876(n)` -/
def P5125124132271110589.Spec : Prop :=
  ∀ n, P5125124132271110589.a n = (A076118 n : ℚ)

end A076118

/-! ## A076118.P6368119408189799005

`A021823(n)+A099254(n)-1`
-/

namespace A076118.P6368119408189799005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 n + (A099254 n - 1)

end

end A076118.P6368119408189799005

namespace A076118

/-- `A021823(n)+A099254(n)-1` -/
def P6368119408189799005.Spec : Prop :=
  ∀ n, P6368119408189799005.a n = A076118 n

end A076118

/-! ## A076118.P6701958250778638429

`A128834(n)+A002264(n)*A057079(n)`
-/

namespace A076118.P6701958250778638429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A002264 n * A057079 n

end

end A076118.P6701958250778638429

namespace A076118

/-- `A128834(n)+A002264(n)*A057079(n)` -/
def P6701958250778638429.Spec : Prop :=
  ∀ n, P6701958250778638429.a n = A076118 n

end A076118

/-! ## A076118.P7901490780785844509

`A099471(n)-(A099471(n+1)+A010892(n))`
-/

namespace A076118.P7901490780785844509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 n - (A099471 (n + 1) + A010892 n)

end

end A076118.P7901490780785844509

namespace A076118

/-- `A099471(n)-(A099471(n+1)+A010892(n))` -/
def P7901490780785844509.Spec : Prop :=
  ∀ n, P7901490780785844509.a n = A076118 n

end A076118

/-! ## A076118.P6046830119599342440

`A099254(n)+A099471(n)-A099254(n+1)`
-/

namespace A076118.P6046830119599342440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 n + (A099471 n - A099254 (n + 1))

end

end A076118.P6046830119599342440

namespace A076118

/-- `A099254(n)+A099471(n)-A099254(n+1)` -/
def P6046830119599342440.Spec : Prop :=
  ∀ n, P6046830119599342440.a n = A076118 n

end A076118

/-! ## A076118.P5856044993764585972

`A099471(n)+Δ[Δ[A099471(n)]]`
-/

namespace A076118.P5856044993764585972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 n + (f1 (n + 1) - f1 n)

end

end A076118.P5856044993764585972

namespace A076118

/-- `A099471(n)+Δ[Δ[A099471(n)]]` -/
def P5856044993764585972.Spec : Prop :=
  ∀ n, P5856044993764585972.a n = A076118 n

end A076118

/-! ## A076118.P4126352103306659373

`A117373(n+1)-A099254(n+3)`
-/

namespace A076118.P4126352103306659373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117373 (n + 1) - A099254 (n + 3)

end

end A076118.P4126352103306659373

namespace A076118

/-- `A117373(n+1)-A099254(n+3)` -/
def P4126352103306659373.Spec : Prop :=
  ∀ n, P4126352103306659373.a n = A076118 n

end A076118

/-! ## A076118.P15737487571422932065

`A110666(n+1)+1-A099254(n+1)`
-/

namespace A076118.P15737487571422932065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110666 (n + 1) + (1 - A099254 (n + 1))

end

end A076118.P15737487571422932065

namespace A076118

/-- `A110666(n+1)+1-A099254(n+1)` -/
def P15737487571422932065.Spec : Prop :=
  ∀ n, P15737487571422932065.a n = A076118 n

end A076118

/-! ## A076118.P13552946242499513245

`A099470(n+2)+A099471(n)+A099254(n)`
-/

namespace A076118.P13552946242499513245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099470 (n + 2) + (A099471 n + A099254 n)

end

end A076118.P13552946242499513245

namespace A076118

/-- `A099470(n+2)+A099471(n)+A099254(n)` -/
def P13552946242499513245.Spec : Prop :=
  ∀ n, P13552946242499513245.a n = A076118 n

end A076118

/-! ## A076118.P16301679089733158139

`A099470(n+2)+A099471(n)-A099470(n+1)`
-/

namespace A076118.P16301679089733158139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099470 (n + 2) + (A099471 n - A099470 (n + 1))

end

end A076118.P16301679089733158139

namespace A076118

/-- `A099470(n+2)+A099471(n)-A099470(n+1)` -/
def P16301679089733158139.Spec : Prop :=
  ∀ n, P16301679089733158139.a n = A076118 n

end A076118

/-! ## A076118.P12707438403231857948

`A131531(n+2)+A002264(n+1)*A057079(n)`
-/

namespace A076118.P12707438403231857948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + A002264 (n + 1) * A057079 n

end

end A076118.P12707438403231857948

namespace A076118

/-- `A131531(n+2)+A002264(n+1)*A057079(n)` -/
def P12707438403231857948.Spec : Prop :=
  ∀ n, P12707438403231857948.a n = A076118 n

end A076118

/-!
# A076119: Every second sector of a dartboard, starting at the top (20) and working around clockwise.

The programs for A076119, the canonical program `A076119.P12316572973144427044` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076119 has offset 1).

The definition of A076119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076119.P12316572973144427044

`a(n-10)` with `a(0)=20, a(1)=18, a(2)=13, a(3)=10, a(4)=2, a(5)=3, a(6)=7, a(7)=8, a(8)=14, a(9)=12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076119

/-- `a(n-10)` -/
def P12316572973144427044.Spec : Prop :=
  ∀ n, (P12316572973144427044.a n : ℤ) = A076119 (n + 1)

theorem P12316572973144427044.correct : P12316572973144427044.Spec := by
  intro n
  simp only [A076119, Nat.add_sub_cancel]

end A076119

/-!
# A076124: Square roots of squares pertaining to A076123.

The programs for A076124, there is no canonical definition to state claims against.
-/

/-! ## A076124.P18321757001294440166

`A000010(A049536(n+1))*A010096(n+1)`
-/

namespace A076124.P18321757001294440166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049536 (n + 1)).toNat * A010096 (n + 1)

end

end A076124.P18321757001294440166

/-! ## A076124.P803744563216056228

`A000010(A049536(n+1))*A093875(n+1)`
-/

namespace A076124.P803744563216056228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049536 (n + 1)).toNat * A093875 (n + 1)

end

end A076124.P803744563216056228

/-! ## A076124.P8664586966478291393

`A000010(A049536(n+1))*A196050(n+2)`
-/

namespace A076124.P8664586966478291393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049536 (n + 1)).toNat * A196050 (n + 2)

end

end A076124.P8664586966478291393

/-!
# A076126: Triangle T(n,k) of associated Lah numbers, n>=2, k=1..floor(n/2).

The programs for A076126, there is no canonical definition to state claims against.
-/

/-! ## A076126.P10614233395934095696

`A206493(p?[∑[A206491(2*n+1)]])`
-/

namespace A076126.P10614233395934095696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206491 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206493 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A076126.P10614233395934095696

/-! ## A076126.P8005895999815310568

`gcd(∏[A094192(n+1)], A350299(n+5))`
-/

namespace A076126.P8005895999815310568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A350299 (n + 5))

end

end A076126.P8005895999815310568

/-! ## A076126.P4570058860073238666

`A048999(lt[A131070(n), A048999(n)])`
-/

namespace A076126.P4570058860073238666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131070 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048999 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076126.P4570058860073238666

/-!
# A076127: n-th term is binary string of length t_n with 1's at positions t_i, where t_n = n-th triangular number.

The programs for A076127, the canonical program `A076127.P10803764140409020081` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076127 has offset 0).

The definition of A076127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076127.P10803764140409020081

`1+a(n-1)*10^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076127

/-- `1+a(n-1)*10^n` -/
def P10803764140409020081.Spec : Prop :=
  ∀ n, (P10803764140409020081.a n : ℤ) = A076127 n

theorem P10803764140409020081.correct : P10803764140409020081.Spec := by
  intro n
  simp only [A076127]

end A076127

/-! ## A076127.P13128404506704324732

`lcm(10^n, a(n-1))+1` with `a(0)=0`
-/

namespace A076127.P13128404506704324732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (10 ^ n) (a (n - 1)) + 1

end

end A076127.P13128404506704324732

namespace A076127

/-- `lcm(10^n, a(n-1))+1` -/
def P13128404506704324732.Spec : Prop :=
  ∀ n, (P13128404506704324732.a n : ℤ) = A076127 n

end A076127

/-! ## A076127.P15045505372556768847

`xor(1, 10^n*a(n-1))` with `a(0)=0`
-/

namespace A076127.P15045505372556768847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (10 ^ n * a (n - 1))

end

end A076127.P15045505372556768847

namespace A076127

/-- `xor(1, 10^n*a(n-1))` -/
def P15045505372556768847.Spec : Prop :=
  ∀ n, (P15045505372556768847.a n : ℤ) = A076127 n

end A076127

/-! ## A076127.P11580509723935123454

`A101305(n)/A011557(n)`
-/

namespace A076127.P11580509723935123454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101305 n : ℚ) / (A011557 n : ℚ)

end

end A076127.P11580509723935123454

namespace A076127

/-- `A101305(n)/A011557(n)` -/
def P11580509723935123454.Spec : Prop :=
  ∀ n, P11580509723935123454.a n = (A076127 n : ℚ)

end A076127

/-! ## A076127.P12237150101549523042

`A101305(n)/A178501(n+1)`
-/

namespace A076127.P12237150101549523042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101305 n : ℚ) / (A178501 (n + 1) : ℚ)

end

end A076127.P12237150101549523042

namespace A076127

/-- `A101305(n)/A178501(n+1)` -/
def P12237150101549523042.Spec : Prop :=
  ∀ n, P12237150101549523042.a n = (A076127 n : ℚ)

end A076127

/-!
# A076128: Difference between the product of numbers up to n and the sum of numbers up to n.

The programs for A076128, the canonical program `A076128.P3680691494811182231` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076128 has offset 1).

The definition of A076128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076128.P3680691494811182231

`(n+1)!-(n+1)*(n+2)/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076128

/-- `(n+1)!-(n+1)*(n+2)/2` -/
def P3680691494811182231.Spec : Prop :=
  ∀ n, P3680691494811182231.a n = (A076128 (n + 1) : ℚ)

end A076128

/-! ## A076128.P365187673197435769

`∑[Δ[n!]-n]-n`
-/

namespace A076128.P365187673197435769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A076128.P365187673197435769

namespace A076128

/-- `∑[Δ[n!]-n]-n` -/
def P365187673197435769.Spec : Prop :=
  ∀ n, P365187673197435769.a n = A076128 (n + 1)

end A076128

/-! ## A076128.P6105099157180944999

`∏[n+1]-∑[n+1]`
-/

namespace A076128.P6105099157180944999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A076128.P6105099157180944999

namespace A076128

/-- `∏[n+1]-∑[n+1]` -/
def P6105099157180944999.Spec : Prop :=
  ∀ n, P6105099157180944999.a n = A076128 (n + 1)

end A076128

/-! ## A076128.P16531698495672800515

`(n+1)*(n!-(n+2)/2)`
-/

namespace A076128.P16531698495672800515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Nat.factorial n : ℚ) - (n + 2 : ℚ) / 2)

end

end A076128.P16531698495672800515

namespace A076128

/-- `(n+1)*(n!-(n+2)/2)` -/
def P16531698495672800515.Spec : Prop :=
  ∀ n, P16531698495672800515.a n = (A076128 (n + 1) : ℚ)

end A076128

/-! ## A076128.P8243341284809744043

`∑[Δ[n*a(n-1)]-(n+1)]` with `a(0)=0, a(1)=1`
-/

namespace A076128.P8243341284809744043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076128.P8243341284809744043

namespace A076128

/-- `∑[Δ[n*a(n-1)]-(n+1)]` -/
def P8243341284809744043.Spec : Prop :=
  ∀ n, P8243341284809744043.a n = A076128 (n + 1)

end A076128

/-! ## A076128.P10730442721102242897

`(A090586(n+1)-A090585(n+1))*A069268(n+1)`
-/

namespace A076128.P10730442721102242897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090586 (n + 1) - A090585 (n + 1)) * A069268 (n + 1)

end

end A076128.P10730442721102242897

namespace A076128

/-- `(A090586(n+1)-A090585(n+1))*A069268(n+1)` -/
def P10730442721102242897.Spec : Prop :=
  ∀ n, P10730442721102242897.a n = A076128 (n + 1)

end A076128

/-!
# A076131: a(n) = 2^n*a(n-1) + 1, a(0) = 0.

The programs for A076131, the canonical program `A076131.P2323430774688300491` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076131 has offset 0).

The definition of A076131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*a(n-1)+1` (program `A076131.P2323430774688300491`, by `A076131.P2323430774688300491.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076131.P8828096319829149324

`1+a(n-1)*2^n` with `a(0)=0`
-/

namespace A076131.P8828096319829149324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (n - 1) * 2 ^ n

end

end A076131.P8828096319829149324

namespace A076131

/-- `1+a(n-1)*2^n` -/
def P8828096319829149324.Spec : Prop :=
  ∀ n, (P8828096319829149324.a n : ℤ) = A076131 n

theorem P8828096319829149324.correct : P8828096319829149324.Spec := by
  intro n
  simp only [A076131, Nat.add_sub_cancel, A076131.P8828096319829149324.a, A076131.P2323430774688300491.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076131

/-! ## A076131.P2323430774688300491

`2^n*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076131

/-- `2^n*a(n-1)+1` -/
def P2323430774688300491.Spec : Prop :=
  ∀ n, (P2323430774688300491.a n : ℤ) = A076131 n

theorem P2323430774688300491.correct : P2323430774688300491.Spec := by
  intro n
  simp only [A076131]

end A076131

/-! ## A076131.P893111134908614001

`lcm(2^n, a(n-1))+1` with `a(0)=0`
-/

namespace A076131.P893111134908614001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (2 ^ n) (a (n - 1)) + 1

end

end A076131.P893111134908614001

namespace A076131

/-- `lcm(2^n, a(n-1))+1` -/
def P893111134908614001.Spec : Prop :=
  ∀ n, (P893111134908614001.a n : ℤ) = A076131 n

end A076131

/-! ## A076131.P4283531134513425874

`or(1, 2^n*a(n-1))` with `a(0)=0`
-/

namespace A076131.P4283531134513425874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (2 ^ n * a (n - 1))

end

end A076131.P4283531134513425874

namespace A076131

/-- `or(1, 2^n*a(n-1))` -/
def P4283531134513425874.Spec : Prop :=
  ∀ n, (P4283531134513425874.a n : ℤ) = A076131 n

end A076131

/-! ## A076131.P3928841861246450561

`xor(1, 2^n*a(n-1))` with `a(0)=0`
-/

namespace A076131.P3928841861246450561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (2 ^ n * a (n - 1))

end

end A076131.P3928841861246450561

namespace A076131

/-- `xor(1, 2^n*a(n-1))` -/
def P3928841861246450561.Spec : Prop :=
  ∀ n, (P3928841861246450561.a n : ℤ) = A076131 n

end A076131

/-!
# A076132: a(1) = 1; for n > 1, a(n) = Sum{a(n-k)^k | 0

The programs for A076132, there is no canonical definition to state claims against.
-/

/-! ## A076132.P4259790213322215777

`A342517(∑[A316770(n+1)])`
-/

namespace A076132.P4259790213322215777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076132.P4259790213322215777

/-! ## A076132.P4852012646207217218

`A255056(A180348(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A076132.P4852012646207217218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A255056 (A180348 (a (n - 1)).toNat).toNat

end

end A076132.P4852012646207217218

/-! ## A076132.P17719569691237628368

`A342517(A081494(n+1)-A000217(n))`
-/

namespace A076132.P17719569691237628368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 (A081494 (n + 1) - A000217 n).toNat

end

end A076132.P17719569691237628368

/-!
# A076133: Numbers k such that 2*k! - 1 is prime.

The programs for A076133, there is no canonical definition to state claims against.
-/

/-! ## A076133.P13690183750042080892

`eq[2, A064983(n)]`
-/

namespace A076133.P13690183750042080892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064983 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076133.P13690183750042080892

/-! ## A076133.P16800926521675565432

`A004719(lt[A064983(n), 3])`
-/

namespace A076133.P16800926521675565432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064983 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A076133.P16800926521675565432

/-! ## A076133.P2260536235581566237

`lt[A064983(A028310(n)), 3]`
-/

namespace A076133.P2260536235581566237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064983 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076133.P2260536235581566237

/-! ## A076133.P14353026908833643383

`lt[log(A064983(n)), A057427(n)]`
-/

namespace A076133.P14353026908833643383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A064983 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A076133.P14353026908833643383

/-! ## A076133.P3032664238932878517

`lt[log(A064983(n)), A168046(n)]`
-/

namespace A076133.P3032664238932878517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A064983 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A076133.P3032664238932878517

/-!
# A076136: Numbers n such that Omega(n) = Omega(n-1) + Omega(n-2), where Omega(n) (A001222) denotes the number of prime factors of n, counting multiplicity.

The programs for A076136, the canonical program `A076136.P16925837628229497617` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076136 has offset 1).

The definition of A076136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076136.P16925837628229497617

`eq[A076191(n+1), A252736(A004277(n))]+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076136

/-- `eq[A076191(n+1), A252736(A004277(n))]+2` -/
def P16925837628229497617.Spec : Prop :=
  ∀ n, (P16925837628229497617.a n : ℤ) = A076136 (n + 1)

theorem P16925837628229497617.correct : P16925837628229497617.Spec := by
  intro n
  simp only [A076136, Nat.add_sub_cancel]

end A076136

/-! ## A076136.P15893858910365249446

`eq[A001222((n+2)*(n+1)), A001222(n+3)]+3`
-/

namespace A076136.P15893858910365249446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 2) * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A076136.P15893858910365249446

namespace A076136

/-- `eq[A001222((n+2)*(n+1)), A001222(n+3)]+3` -/
def P15893858910365249446.Spec : Prop :=
  ∀ n, (P15893858910365249446.a n : ℤ) = A076136 (n + 1)

end A076136

/-!
# A076137: Numbers k such that Omega(k) = Omega(k-1) + Omega(k-2) + Omega(k-3), where Omega(n) denotes the number of prime factors of n, with multiplicity.

The programs for A076137, there is no canonical definition to state claims against.
-/

/-! ## A076137.P13955798890323776682

`A145154(A105946(n))`
-/

namespace A076137.P13955798890323776682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A105946 n).toNat

end

end A076137.P13955798890323776682

/-!
# A076138: a(1)=1; a(n+1) is the smallest integer > a(n) such that C_2k(a(n+1))=C_2k(a(n)) for k large enough, where C_m(n) is the modified Collatz map iterated m times on n ( x->x/2 if x is even x->(3x+1)/2 if x is odd).

The programs for A076138, there is no canonical definition to state claims against.
-/

/-! ## A076138.P12151651338891030707

`eq[1, A006513(n+1)]+1`
-/

namespace A076138.P12151651338891030707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076138.P12151651338891030707

/-! ## A076138.P8437724613585390324

`lt[A076182(n+1), 1]+1`
-/

namespace A076138.P8437724613585390324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076182 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A076138.P8437724613585390324

/-! ## A076138.P3976837701010603362

`lt[val(A064433(n+1), 2), A057427(n)]`
-/

namespace A076138.P3976837701010603362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064433 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A076138.P3976837701010603362

/-! ## A076138.P17580400671009124678

`eq[A000035(A064433(n+1)), A054977(n)]`
-/

namespace A076138.P17580400671009124678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A064433 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076138.P17580400671009124678

/-! ## A076138.P518096239788049378

`eq[2, A006513(A004277(n))]`
-/

namespace A076138.P518096239788049378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006513 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076138.P518096239788049378

/-! ## A076138.P15211306609513904304

`lt[A000007(n)+1, A006513(A004277(n))]`
-/

namespace A076138.P15211306609513904304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006513 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076138.P15211306609513904304

/-! ## A076138.P12271362126264571167

`eq[2, A006513(A008576(3*n))]`
-/

namespace A076138.P12271362126264571167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006513 (A008576 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076138.P12271362126264571167

/-!
# A076139: Triangular numbers that are one-third of another triangular number: T(m) such that 3*T(m) = T(k) for some k.

The programs for A076139, the canonical program `A076139.P7878364489363524839` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076139 has offset 0).

The definition of A076139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076139.P7878364489363524839

`14*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076139

/-- `14*a(n-1)-a(n-2)+1` -/
def P7878364489363524839.Spec : Prop :=
  ∀ n, P7878364489363524839.a n = A076139 n

theorem P7878364489363524839.correct : P7878364489363524839.Spec := by
  intro n
  simp only [A076139]

end A076139

/-! ## A076139.P5098459777712888667

`1/2*A217855(n)`
-/

namespace A076139.P5098459777712888667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A217855 n : ℚ)

end

end A076139.P5098459777712888667

namespace A076139

/-- `1/2*A217855(n)` -/
def P5098459777712888667.Spec : Prop :=
  ∀ n, P5098459777712888667.a n = (A076139 n : ℚ)

end A076139

/-! ## A076139.P9217177011117807786

`A061278(n)*(A061278(n)+1)/2`
-/

namespace A076139.P9217177011117807786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061278 n * (A061278 n + 1) : ℚ) / 2

end

end A076139.P9217177011117807786

namespace A076139

/-- `A061278(n)*(A061278(n)+1)/2` -/
def P9217177011117807786.Spec : Prop :=
  ∀ n, P9217177011117807786.a n = (A076139 n : ℚ)

end A076139

/-! ## A076139.P16546296490729531639

`1/3*A076140(n)`
-/

namespace A076139.P16546296490729531639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A076140 n : ℚ)

end

end A076139.P16546296490729531639

namespace A076139

/-- `1/3*A076140(n)` -/
def P16546296490729531639.Spec : Prop :=
  ∀ n, P16546296490729531639.a n = (A076139 n : ℚ)

end A076139

/-! ## A076139.P16302141932364489411

`1/8*A045899(n+1)`
-/

namespace A076139.P16302141932364489411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A045899 (n + 1) : ℚ)

end

end A076139.P16302141932364489411

namespace A076139

/-- `1/8*A045899(n+1)` -/
def P16302141932364489411.Spec : Prop :=
  ∀ n, P16302141932364489411.a n = (A076139 n : ℚ)

end A076139

/-! ## A076139.P479835960675605138

`A001353(n)*A001353(n+1)/4`
-/

namespace A076139.P479835960675605138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001353 n * A001353 (n + 1) : ℚ) / 4

end

end A076139.P479835960675605138

namespace A076139

/-- `A001353(n)*A001353(n+1)/4` -/
def P479835960675605138.Spec : Prop :=
  ∀ n, P479835960675605138.a n = (A076139 n : ℚ)

end A076139

/-! ## A076139.P4273391486481808546

`((2+sqrt(3))^(2*n+1)+(2-sqrt(3))^(2*n+1))/48-1/12`
-/

namespace A076139.P4273391486481808546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) ^ (2 * n + 1) + (2 - Real.sqrt (3 : ℝ)) ^ (2 * n + 1)) / 48 - ((1 : ℚ) / 12 : ℝ)

end

end A076139.P4273391486481808546

namespace A076139

/-- `((2+sqrt(3))^(2*n+1)+(2-sqrt(3))^(2*n+1))/48-1/12` -/
def P4273391486481808546.Spec : Prop :=
  ∀ n, P4273391486481808546.a n = (A076139 n : ℝ)

end A076139

/-! ## A076139.P14683883342706016761

`∑[ogf(x/(1-14x+x^2))]`
-/

namespace A076139.P14683883342706016761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076139.P14683883342706016761

namespace A076139

/-- `∑[ogf(x/(1-14x+x^2))]` -/
def P14683883342706016761.Spec : Prop :=
  ∀ n, P14683883342706016761.a n = A076139 n

end A076139

/-! ## A076139.P17258794463724485473

`ogf(x/(1-15x+15x^2-x^3))`
-/

namespace A076139.P17258794463724485473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -15, 15, -1] n

end

end A076139.P17258794463724485473

namespace A076139

/-- `ogf(x/(1-15x+15x^2-x^3))` -/
def P17258794463724485473.Spec : Prop :=
  ∀ n, P17258794463724485473.a n = A076139 n

end A076139

/-! ## A076139.P6578311798181219143

`∑[14*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A076139.P6578311798181219143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076139.P6578311798181219143

namespace A076139

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P6578311798181219143.Spec : Prop :=
  ∀ n, P6578311798181219143.a n = A076139 n

end A076139

/-!
# A076140: Triangular numbers T(k) that are three times another triangular number: T(k) such that T(k) = 3*T(m) for some m.

The programs for A076140, the canonical program `A076140.P8136378482754092475` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076140 has offset 0).

The definition of A076140 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076140.P8136378482754092475

`14*a(n-1)-a(n-2)+3` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076140

/-- `14*a(n-1)-a(n-2)+3` -/
def P8136378482754092475.Spec : Prop :=
  ∀ n, P8136378482754092475.a n = A076140 n

theorem P8136378482754092475.correct : P8136378482754092475.Spec := by
  intro n
  simp only [A076140]

end A076140

/-! ## A076140.P14951694642660256144

`3*A076139(n)`
-/

namespace A076140.P14951694642660256144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A076139 n

end

end A076140.P14951694642660256144

namespace A076140

/-- `3*A076139(n)` -/
def P14951694642660256144.Spec : Prop :=
  ∀ n, P14951694642660256144.a n = A076140 n

end A076140

/-! ## A076140.P8847582777562647480

`3/2*A217855(n)`
-/

namespace A076140.P8847582777562647480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A217855 n : ℚ)

end

end A076140.P8847582777562647480

namespace A076140

/-- `3/2*A217855(n)` -/
def P8847582777562647480.Spec : Prop :=
  ∀ n, P8847582777562647480.a n = (A076140 n : ℚ)

end A076140

/-! ## A076140.P8670134465117098797

`3/8*A045899(n+1)`
-/

namespace A076140.P8670134465117098797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 8 * (A045899 (n + 1) : ℚ)

end

end A076140.P8670134465117098797

namespace A076140

/-- `3/8*A045899(n+1)` -/
def P8670134465117098797.Spec : Prop :=
  ∀ n, P8670134465117098797.a n = (A076140 n : ℚ)

end A076140

/-! ## A076140.P853079102991443845

`((2+sqrt(3))^(2*n+1)+(2-sqrt(3))^(2*n+1))/16-1/4`
-/

namespace A076140.P853079102991443845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (3 : ℝ)) ^ (2 * n + 1) + (2 - Real.sqrt (3 : ℝ)) ^ (2 * n + 1)) / 16 - ((1 : ℚ) / 4 : ℝ)

end

end A076140.P853079102991443845

namespace A076140

/-- `((2+sqrt(3))^(2*n+1)+(2-sqrt(3))^(2*n+1))/16-1/4` -/
def P853079102991443845.Spec : Prop :=
  ∀ n, P853079102991443845.a n = (A076140 n : ℝ)

end A076140

/-! ## A076140.P10219553257675184717

`∑[ogf(3x/(1-14x+x^2))]`
-/

namespace A076140.P10219553257675184717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -14, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076140.P10219553257675184717

namespace A076140

/-- `∑[ogf(3x/(1-14x+x^2))]` -/
def P10219553257675184717.Spec : Prop :=
  ∀ n, P10219553257675184717.a n = A076140 n

end A076140

/-! ## A076140.P15849005414934539765

`ogf(3x/(1-15x+15x^2-x^3))`
-/

namespace A076140.P15849005414934539765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -15, 15, -1] n

end

end A076140.P15849005414934539765

namespace A076140

/-- `ogf(3x/(1-15x+15x^2-x^3))` -/
def P15849005414934539765.Spec : Prop :=
  ∀ n, P15849005414934539765.a n = A076140 n

end A076140

/-! ## A076140.P7689093239022269426

`∑[14*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=3`
-/

namespace A076140.P7689093239022269426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  14 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076140.P7689093239022269426

namespace A076140

/-- `∑[14*a(n-1)-a(n-2)]` -/
def P7689093239022269426.Spec : Prop :=
  ∀ n, P7689093239022269426.a n = A076140 n

end A076140

/-! ## A076140.P8275716639188030822

`C(A102871(n), 2)`
-/

namespace A076140.P8275716639188030822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A102871 n).toNat 2

end

end A076140.P8275716639188030822

namespace A076140

/-- `C(A102871(n), 2)` -/
def P8275716639188030822.Spec : Prop :=
  ∀ n, (P8275716639188030822.a n : ℤ) = A076140 n

end A076140

/-! ## A076140.P5950782887728188425

`C(∑[A001075(n)], 2)`
-/

namespace A076140.P5950782887728188425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A076140.P5950782887728188425

namespace A076140

/-- `C(∑[A001075(n)], 2)` -/
def P5950782887728188425.Spec : Prop :=
  ∀ n, (P5950782887728188425.a n : ℤ) = A076140 n

end A076140

/-!
# A076141: Number of times n occurs as a binary sub-pattern of n^2.

The programs for A076141, there is no canonical definition to state claims against.
-/

/-! ## A076141.P3270118390657953782

`round(1/A086063(n))`
-/

namespace A076141.P3270118390657953782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A086063 n : ℚ))

end

end A076141.P3270118390657953782

/-! ## A076141.P11985663177583355166

`char[A018826(n+1)]`
-/

namespace A076141.P11985663177583355166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A076141.P11985663177583355166

/-! ## A076141.P14430565821298195310

`1-char[A136492(n+1)]`
-/

namespace A076141.P14430565821298195310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136492 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A076141.P14430565821298195310

/-! ## A076141.P1908391505225698212

`A010051(lcm(2, A086063(n)))`
-/

namespace A076141.P1908391505225698212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.lcm 2 (A086063 n))

end

end A076141.P1908391505225698212

/-! ## A076141.P18179694437493056836

`A000045(C(2, A086063(n)))`
-/

namespace A076141.P18179694437493056836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A086063 n).toNat)

end

end A076141.P18179694437493056836

/-! ## A076141.P5902938097481588339

`char[record[A018826(A305303(n))]]`
-/

namespace A076141.P5902938097481588339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018826 (A305303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A076141.P5902938097481588339

/-! ## A076141.P13320434534347257380

`A001222(C(2, A086063(n))+1)`
-/

namespace A076141.P13320434534347257380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 2 (A086063 n).toNat + 1)

end

end A076141.P13320434534347257380

/-! ## A076141.P15549886694850843603

`A000005(C(2, A086063(n))+1)-1`
-/

namespace A076141.P15549886694850843603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose 2 (A086063 n).toNat + 1) - 1

end

end A076141.P15549886694850843603

/-! ## A076141.P15864734019445894533

`A023533(A086063(n)²)`
-/

namespace A076141.P15864734019445894533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A086063 n ^ 2).toNat

end

end A076141.P15864734019445894533

/-! ## A076141.P6967024186901967650

`C(2, A116512(A086063(n)²))`
-/

namespace A076141.P6967024186901967650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A116512 (A086063 n ^ 2).toNat).toNat

end

end A076141.P6967024186901967650

/-! ## A076141.P12121672054237358021

`C(2, A136510(A028310(n)))`
-/

namespace A076141.P12121672054237358021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A136510 (A028310 n).toNat).toNat

end

end A076141.P12121672054237358021

/-! ## A076141.P17155067040580765000

`C(2, A136510(A233583(n+1)))`
-/

namespace A076141.P17155067040580765000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A136510 (A233583 (n + 1)).toNat).toNat

end

end A076141.P17155067040580765000

/-! ## A076141.P16974435071081650079

`(2/A136510(A233583(n+1)))^A002939(n)²`
-/

namespace A076141.P16974435071081650079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A136510 (A233583 (n + 1)).toNat : ℚ)) ^ (A002939 n ^ 2 : ℤ)

end

end A076141.P16974435071081650079

/-! ## A076141.P6423137612140224684

`(2/A136510(A233583(n+1)))^A000217(n+6)²`
-/

namespace A076141.P6423137612140224684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A136510 (A233583 (n + 1)).toNat : ℚ)) ^ (A000217 (n + 6) ^ 2 : ℤ)

end

end A076141.P6423137612140224684

/-! ## A076141.P2810885877056176074

`(2/A136510(A233583(n+1)))^A000217(14*n+7)`
-/

namespace A076141.P2810885877056176074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 / (A136510 (A233583 (n + 1)).toNat : ℚ)) ^ (A000217 (14 * n + 7) : ℤ)

end

end A076141.P2810885877056176074

/-! ## A076141.P4811635001776703927

`val(A043529((n+2)²+7), A136510(A233583(n+1)))`
-/

namespace A076141.P4811635001776703927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043529 ((n + 2) ^ 2 + 7)).toNat (A136510 (A233583 (n + 1)).toNat).toNat

end

end A076141.P4811635001776703927

/-!
# A076142: a(n) = A064097(n) - A003313(n).

The programs for A076142, there is no canonical definition to state claims against.
-/

/-! ## A076142.P6091472484717078499

`A064097(n+1)-A003313(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076142.P6091472484717078499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) - A003313 (n + 1)

end

end A076142.P6091472484717078499

/-! ## A076142.P1568728608609053959

`∑[A334090(n+1)]-A003313(n+1)`
-/

namespace A076142.P1568728608609053959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003313 (n + 1)

end

end A076142.P1568728608609053959

/-! ## A076142.P17441267248085022395

`A334203(A103517(n))-A003313(n+1)`
-/

namespace A076142.P17441267248085022395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A103517 n).toNat - A003313 (n + 1)

end

end A076142.P17441267248085022395

/-! ## A076142.P1998712396516467126

`A334203(A051755(n+2))-A003313(n+1)`
-/

namespace A076142.P1998712396516467126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A051755 (n + 2)).toNat - A003313 (n + 1)

end

end A076142.P1998712396516467126

/-! ## A076142.P2257551926325395058

`A334203(A285109(n+1))-A003313(n+1)`
-/

namespace A076142.P2257551926325395058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (A285109 (n + 1)).toNat - A003313 (n + 1)

end

end A076142.P2257551926325395058

/-! ## A076142.P15984309644371844226

`A073933(n+1)-A265690(n+1)`
-/

namespace A076142.P15984309644371844226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (n + 1) - A265690 (n + 1)

end

end A076142.P15984309644371844226

/-! ## A076142.P6648383392778410554

`A064097(n+1)+1-A265690(n+1)`
-/

namespace A076142.P6648383392778410554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1) + (1 - A265690 (n + 1))

end

end A076142.P6648383392778410554

/-! ## A076142.P16415170562174969922

`A073933(A000027(n+1))%A265690(n+1)`
-/

namespace A076142.P16415170562174969922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073933 (A000027 (n + 1)).toNat) (A265690 (n + 1))

end

end A076142.P16415170562174969922

/-!
# A076144: Largest squarefree m <= sfn(n) such that m*sfn(n) is also squarefree, where sfn(n) is the n-th squarefree number.

The programs for A076144, the canonical program `A076144.P6283573199368845019` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076144 has offset 1).

The definition of A076144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076144.P6283573199368845019

`A005117(C(A029358(n), n)+n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A076144

/-- `A005117(C(A029358(n), n)+n)` -/
def P6283573199368845019.Spec : Prop :=
  ∀ n, P6283573199368845019.a n = A076144 (n + 1)

theorem P6283573199368845019.correct : P6283573199368845019.Spec := by
  intro n
  simp only [A076144, Nat.add_sub_cancel]

end A076144

/-! ## A076144.P4600742672839817044

`A005117(C(A183568(n), lcm(2, n))+n)`
-/

namespace A076144.P4600742672839817044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.choose (A183568 n).toNat (Nat.lcm 2 n) + n)

end

end A076144.P4600742672839817044

namespace A076144

/-- `A005117(C(A183568(n), lcm(2, n))+n)` -/
def P4600742672839817044.Spec : Prop :=
  ∀ n, P4600742672839817044.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P13811398062339468723

`A005117(C(A065474(n), A174920(n+1))+n)`
-/

namespace A076144.P13811398062339468723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.choose (A065474 n).toNat (A174920 (n + 1)).toNat + n)

end

end A076144.P13811398062339468723

namespace A076144

/-- `A005117(C(A065474(n), A174920(n+1))+n)` -/
def P13811398062339468723.Spec : Prop :=
  ∀ n, P13811398062339468723.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P14395046059887447266

`A005117(C(A084938(n), A384489(n+1))+n)`
-/

namespace A076144.P14395046059887447266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.choose (A084938 n).toNat (A384489 (n + 1)).toNat + n)

end

end A076144.P14395046059887447266

namespace A076144

/-- `A005117(C(A084938(n), A384489(n+1))+n)` -/
def P14395046059887447266.Spec : Prop :=
  ∀ n, P14395046059887447266.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P17631203657021055764

`A005117(round(sqrt(A230135(n)+n²)))`
-/

namespace A076144.P17631203657021055764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway (Real.sqrt (A230135 n + (n ^ 2 : ℤ) : ℝ))).toNat

end

end A076144.P17631203657021055764

namespace A076144

/-- `A005117(round(sqrt(A230135(n)+n²)))` -/
def P17631203657021055764.Spec : Prop :=
  ∀ n, P17631203657021055764.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P8348041431519491577

`A005117(n+1-ceil(A124766(n)/3))`
-/

namespace A076144.P8348041431519491577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 ((n + 1 : ℤ) - ⌈(A124766 n : ℚ) / 3⌉).toNat

end

end A076144.P8348041431519491577

namespace A076144

/-- `A005117(n+1-ceil(A124766(n)/3))` -/
def P8348041431519491577.Spec : Prop :=
  ∀ n, P8348041431519491577.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P3087336460080639231

`A005117(floor(A334465(n+1)/(n+1))+n)`
-/

namespace A076144.P3087336460080639231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (⌊(A334465 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ + (n : ℤ)).toNat

end

end A076144.P3087336460080639231

namespace A076144

/-- `A005117(floor(A334465(n+1)/(n+1))+n)` -/
def P3087336460080639231.Spec : Prop :=
  ∀ n, P3087336460080639231.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P12394301887757111703

`A079228(a(n-1))%∑[A096836(n+1)]` with `a(0)=1, a(1)=1`
-/

namespace A076144.P12394301887757111703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A079228 (a (n - 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076144.P12394301887757111703

namespace A076144

/-- `A079228(a(n-1))%∑[A096836(n+1)]` -/
def P12394301887757111703.Spec : Prop :=
  ∀ n, P12394301887757111703.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P9496755248786695404

`A088610(or(A004273(n), A089024(n+1)))`
-/

namespace A076144.P9496755248786695404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (Int.lor (A004273 n) (A089024 (n + 1))).toNat

end

end A076144.P9496755248786695404

namespace A076144

/-- `A088610(or(A004273(n), A089024(n+1)))` -/
def P9496755248786695404.Spec : Prop :=
  ∀ n, P9496755248786695404.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P13826327367841005435

`A079228(a(n-1))+A067007(A137688(n))` with `a(0)=1, a(1)=1`
-/

namespace A076144.P13826327367841005435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079228 (a (n - 1)).toNat + A067007 (A137688 n).toNat

end

end A076144.P13826327367841005435

namespace A076144

/-- `A079228(a(n-1))+A067007(A137688(n))` -/
def P13826327367841005435.Spec : Prop :=
  ∀ n, P13826327367841005435.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P2229812684095816712

`A374600(A253909(n))`
-/

namespace A076144.P2229812684095816712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374600 (A253909 n).toNat

end

end A076144.P2229812684095816712

namespace A076144

/-- `A374600(A253909(n))` -/
def P2229812684095816712.Spec : Prop :=
  ∀ n, P2229812684095816712.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P12355060820001139836

`A088610(A175019(n²))`
-/

namespace A076144.P12355060820001139836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A175019 (n ^ 2)).toNat

end

end A076144.P12355060820001139836

namespace A076144

/-- `A088610(A175019(n²))` -/
def P12355060820001139836.Spec : Prop :=
  ∀ n, P12355060820001139836.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P654614950878198833

`A079228(a(n-1))%A064986(n²)` with `a(0)=1, a(1)=1`
-/

namespace A076144.P654614950878198833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A079228 (a (n - 1)).toNat) (A064986 (n ^ 2))

end

end A076144.P654614950878198833

namespace A076144

/-- `A079228(a(n-1))%A064986(n²)` -/
def P654614950878198833.Spec : Prop :=
  ∀ n, P654614950878198833.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P12799592071309331208

`A079114(a(n-1))%A000125(n²-n)` with `a(0)=1, a(1)=1`
-/

namespace A076144.P12799592071309331208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (A079114 (a (n - 1)).toNat) (A000125 (n ^ 2 - n))

end

end A076144.P12799592071309331208

namespace A076144

/-- `A079114(a(n-1))%A000125(n²-n)` -/
def P12799592071309331208.Spec : Prop :=
  ∀ n, P12799592071309331208.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P7628593401154114038

`A088610(A152204(A074378(n)))`
-/

namespace A076144.P7628593401154114038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (A152204 (A074378 n).toNat).toNat

end

end A076144.P7628593401154114038

namespace A076144

/-- `A088610(A152204(A074378(n)))` -/
def P7628593401154114038.Spec : Prop :=
  ∀ n, P7628593401154114038.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P4675672314442554108

`A005117(A000196(n²+1+n))`
-/

namespace A076144.P4675672314442554108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A000196 (n ^ 2 + 1 + n)).toNat

end

end A076144.P4675672314442554108

namespace A076144

/-- `A005117(A000196(n²+1+n))` -/
def P4675672314442554108.Spec : Prop :=
  ∀ n, P4675672314442554108.a n = A076144 (n + 1)

end A076144

/-! ## A076144.P4993092407282582765

`A005117(A202535((n+1)²)+n)`
-/

namespace A076144.P4993092407282582765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A202535 ((n + 1) ^ 2) + (n : ℤ)).toNat

end

end A076144.P4993092407282582765

namespace A076144

/-- `A005117(A202535((n+1)²)+n)` -/
def P4993092407282582765.Spec : Prop :=
  ∀ n, P4993092407282582765.a n = A076144 (n + 1)

end A076144

/-!
# A076145: Floor of arithmetic-geometric mean of n and n^2.

The programs for A076145, there is no canonical definition to state claims against.
-/

/-! ## A076145.P17548067969624104216

`floor(A234362(n+1)/(n+1))`
-/

namespace A076145.P17548067969624104216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A234362 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A076145.P17548067969624104216

/-! ## A076145.P14091471927471260215

`floor(A231603(2*(n+1))/4)`
-/

namespace A076145.P14091471927471260215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A231603 (2 * (n + 1)) : ℚ) / 4⌋

end

end A076145.P14091471927471260215

/-! ## A076145.P5929467504554884155

`∑[A236857(A329435(n+2)²)]`
-/

namespace A076145.P5929467504554884155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236857 (A329435 (n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076145.P5929467504554884155

/-! ## A076145.P1226908002391033232

`∑[A300402(A277011(n))+A004526(n)]`
-/

namespace A076145.P1226908002391033232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300402 (A277011 n).toNat + A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076145.P1226908002391033232

/-! ## A076145.P4954524337684254280

`A394247(A072474(n+1))`
-/

namespace A076145.P4954524337684254280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A072474 (n + 1)).toNat

end

end A076145.P4954524337684254280

/-!
# A076146: a(1) = 1; a(n) = a(n-1)*prime(a(n-1)).

The programs for A076146, there is no canonical definition to state claims against.
-/

/-! ## A076146.P17018466923697168519

`A358650(2^n)`
-/

namespace A076146.P17018466923697168519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358650 (2 ^ n)

end

end A076146.P17018466923697168519

/-!
# A076147: Numbers k such that the k-th prime + k is a cube.

The programs for A076147, there is no canonical definition to state claims against.
-/

/-! ## A076147.P4400504118579107046

`eq[n, A158038(A028310(n))]`
-/

namespace A076147.P4400504118579107046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158038 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076147.P4400504118579107046

/-!
# A076148: Let b(1)=x, b(2)=y, k*b(k)=(2k-1)*b(k-1) + 3(k+1)*b(k-2); then b(n)=a(n)*x+c(n)/3*y.

The programs for A076148, the canonical program `A076148.P3082614084612231111` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076148 has offset 1).

The definition of A076148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076148.P590223247768866713

`ogf((-1+x+x^2)/(-1+x+5x^2+3x^3))`
-/

namespace A076148.P590223247768866713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -5, -3] n

end

end A076148.P590223247768866713

namespace A076148

/-- `ogf((-1+x+x^2)/(-1+x+5x^2+3x^3))` -/
def P590223247768866713.Spec : Prop :=
  ∀ n, P590223247768866713.a n = A076148 (n + 1)

end A076148

/-! ## A076148.P12435914017923341674

`3*a(n-1)+(n+2)*(-1)^n` with `a(0)=1`
-/

namespace A076148.P12435914017923341674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n + 2 : ℤ) * (-1) ^ n

end

end A076148.P12435914017923341674

namespace A076148

/-- `3*a(n-1)+(n+2)*(-1)^n` -/
def P12435914017923341674.Spec : Prop :=
  ∀ n, P12435914017923341674.a n = A076148 (n + 1)

end A076148

/-! ## A076148.P7185080959799601435

`Δ[Δ[(n+1)/(and(1, n)+1)]]+3*a(n-1)` with `a(0)=1`
-/

namespace A076148.P7185080959799601435
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 3 * a (n - 1)

end

end A076148.P7185080959799601435

namespace A076148

/-- `Δ[Δ[(n+1)/(and(1, n)+1)]]+3*a(n-1)` -/
def P7185080959799601435.Spec : Prop :=
  ∀ n, P7185080959799601435.a n = (A076148 (n + 1) : ℚ)

end A076148

/-! ## A076148.P15562473303001041398

`a(n-1)+5*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A076148.P15562473303001041398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  a (n - 1) + 5 * a (n - 2) + 3 * a (n - 3)

end

end A076148.P15562473303001041398

namespace A076148

/-- `a(n-1)+5*a(n-2)+3*a(n-3)` -/
def P15562473303001041398.Spec : Prop :=
  ∀ n, (P15562473303001041398.a n : ℤ) = A076148 (n + 1)

end A076148

/-! ## A076148.P5541915225109003715

`(5*3^(n-1)-a(n-1))%round(5*3^n/4)` with `a(0)=1`
-/

namespace A076148.P5541915225109003715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway (5 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ))) (SequenceMachineLib.roundAway (5 * ((3 ^ n : ℚ) / 4)))

end

end A076148.P5541915225109003715

namespace A076148

/-- `(5*3^(n-1)-a(n-1))%round(5*3^n/4)` -/
def P5541915225109003715.Spec : Prop :=
  ∀ n, P5541915225109003715.a n = A076148 (n + 1)

end A076148

/-! ## A076148.P18184080768188895255

`3^n-A076149(n+1)`
-/

namespace A076148.P18184080768188895255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A076149 (n + 1)

end

end A076148.P18184080768188895255

namespace A076148

/-- `3^n-A076149(n+1)` -/
def P18184080768188895255.Spec : Prop :=
  ∀ n, P18184080768188895255.a n = A076148 (n + 1)

end A076148

/-! ## A076148.P3082614084612231111

`floor(5*3^n/16-(-1)^(n+1)*(n+1)/4+1/2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076148

/-- `floor(5*3^n/16-(-1)^(n+1)*(n+1)/4+1/2)` -/
def P3082614084612231111.Spec : Prop :=
  ∀ n, P3082614084612231111.a n = A076148 (n + 1)

theorem P3082614084612231111.correct : P3082614084612231111.Spec := by
  intro n
  simp only [A076148, Nat.add_sub_cancel]

end A076148

/-!
# A076149: Expansion of x^2(3+2x)/(1-x-5x^2-3x^3).

The programs for A076149, the canonical program `A076149.P5040552321944346292` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076149 has offset 1).

The definition of A076149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x+2x^2)/(1-x-5x^2-3x^3))` (program `A076149.P5040552321944346292`, by `A076149.P5040552321944346292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076149.P5040552321944346292

`ogf((3x+2x^2)/(1-x-5x^2-3x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076149

/-- `ogf((3x+2x^2)/(1-x-5x^2-3x^3))` -/
def P5040552321944346292.Spec : Prop :=
  ∀ n, P5040552321944346292.a n = A076149 (n + 1)

theorem P5040552321944346292.correct : P5040552321944346292.Spec := by
  intro n
  simp only [A076149, Nat.add_sub_cancel]

end A076149

/-! ## A076149.P781563532237090830

`3*a(n-1)-(n+2)*(-1)^n` with `a(0)=0`
-/

namespace A076149.P781563532237090830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) - (n + 2 : ℤ) * (-1) ^ n

end

end A076149.P781563532237090830

namespace A076149

/-- `3*a(n-1)-(n+2)*(-1)^n` -/
def P781563532237090830.Spec : Prop :=
  ∀ n, P781563532237090830.a n = A076149 (n + 1)

end A076149

/-! ## A076149.P18155622932076764014

`a(n-1)+xor(1, a(n-1)+3*a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A076149.P18155622932076764014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + Nat.xor 1 (a (n - 1) + 3 * a (n - 2))

end

end A076149.P18155622932076764014

namespace A076149

/-- `a(n-1)+xor(1, a(n-1)+3*a(n-2))` -/
def P18155622932076764014.Spec : Prop :=
  ∀ n, (P18155622932076764014.a n : ℤ) = A076149 (n + 1)

end A076149

/-! ## A076149.P17912616400462578877

`2*a(n-1)-a(n-2)+2*(n%2+2*a(n-2))-1` with `a(0)=0, a(1)=3`
-/

namespace A076149.P17912616400462578877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 * a (n - 1) - a (n - 2) + (2 * (((n % 2 : ℕ) : ℤ) + 2 * a (n - 2)) - 1)

end

end A076149.P17912616400462578877

namespace A076149

/-- `2*a(n-1)-a(n-2)+2*(n%2+2*a(n-2))-1` -/
def P17912616400462578877.Spec : Prop :=
  ∀ n, P17912616400462578877.a n = A076149 (n + 1)

end A076149

/-! ## A076149.P1919215585441299400

`3^n-A076148(n+1)`
-/

namespace A076149.P1919215585441299400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A076148 (n + 1)

end

end A076149.P1919215585441299400

namespace A076149

/-- `3^n-A076148(n+1)` -/
def P1919215585441299400.Spec : Prop :=
  ∀ n, P1919215585441299400.a n = A076149 (n + 1)

end A076149

/-! ## A076149.P6879332728118376030

`Δ[3*a(n-1)-A097140(n+3)]` with `a(0)=1`
-/

namespace A076149.P6879332728118376030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1) - A097140 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076149.P6879332728118376030

namespace A076149

/-- `Δ[3*a(n-1)-A097140(n+3)]` -/
def P6879332728118376030.Spec : Prop :=
  ∀ n, P6879332728118376030.a n = A076149 (n + 1)

end A076149

/-! ## A076149.P6787535036218357110

`Δ[Δ[3*a(n-1)-A026741(n+1)]]` with `a(0)=1`
-/

namespace A076149.P6787535036218357110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * f2 (n - 1) - A026741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076149.P6787535036218357110

namespace A076149

/-- `Δ[Δ[3*a(n-1)-A026741(n+1)]]` -/
def P6787535036218357110.Spec : Prop :=
  ∀ n, P6787535036218357110.a n = A076149 (n + 1)

end A076149

/-! ## A076149.P3489196768928103963

`floor(11*3^(n+1)/48+(-1)^(n+1)*(n+1)/4+1/2)`
-/

namespace A076149.P3489196768928103963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 * 3 ^ (n + 1) : ℚ) / 48 + ((-1) ^ (n + 1) * (n + 1 : ℤ) : ℚ) / 4 + (1 : ℚ) / 2⌋

end

end A076149.P3489196768928103963

namespace A076149

/-- `floor(11*3^(n+1)/48+(-1)^(n+1)*(n+1)/4+1/2)` -/
def P3489196768928103963.Spec : Prop :=
  ∀ n, P3489196768928103963.a n = A076149 (n + 1)

end A076149

/-!
# A076150: Start of 10 consecutive composite numbers.

The programs for A076150, the canonical program `A076150.P17154060652409901030` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076150 has offset 1).

The definition of A076150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076150.P2440019249694636719

`lt[9, A007920(n)]`
-/

namespace A076150.P2440019249694636719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A076150.P2440019249694636719

namespace A076150

/-- `lt[9, A007920(n)]` -/
def P2440019249694636719.Spec : Prop :=
  ∀ n, (P2440019249694636719.a n : ℤ) = A076150 (n + 1)

end A076150

/-! ## A076150.P17154060652409901030

`lt[10, A013632(n)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076150

/-- `lt[10, A013632(n)]+1` -/
def P17154060652409901030.Spec : Prop :=
  ∀ n, (P17154060652409901030.a n : ℤ) = A076150 (n + 1)

theorem P17154060652409901030.correct : P17154060652409901030.Spec := by
  intro n
  simp only [A076150, Nat.add_sub_cancel]

end A076150

/-! ## A076150.P7342493485754181372

`A020725(lt[10, A013632(n)])`
-/

namespace A076150.P7342493485754181372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076150.P7342493485754181372

namespace A076150

/-- `A020725(lt[10, A013632(n)])` -/
def P7342493485754181372.Spec : Prop :=
  ∀ n, P7342493485754181372.a n = A076150 (n + 1)

end A076150

/-! ## A076150.P2969415463521985330

`lt[10, A175851(A210882(n+1))]`
-/

namespace A076150.P2969415463521985330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A210882 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A076150.P2969415463521985330

namespace A076150

/-- `lt[10, A175851(A210882(n+1))]` -/
def P2969415463521985330.Spec : Prop :=
  ∀ n, (P2969415463521985330.a n : ℤ) = A076150 (n + 1)

end A076150

/-! ## A076150.P1069531105920319027

`lt[A020723(A055672(n)), A013632(n)]`
-/

namespace A076150.P1069531105920319027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A055672 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076150.P1069531105920319027

namespace A076150

/-- `lt[A020723(A055672(n)), A013632(n)]` -/
def P1069531105920319027.Spec : Prop :=
  ∀ n, (P1069531105920319027.a n : ℤ) = A076150 (n + 1)

end A076150

/-!
# A076151: a(n) = (n-1)!*binomial(3*n,n)/(3*(2*n+1)).

The programs for A076151, the canonical program `A076151.P3724649270348610068` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076151 has offset 2).

The definition of A076151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076151.P3724649270348610068

`(n+1)!*C(3*(n+2), n+2)/(3*(2*(n+2)+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076151

/-- `(n+1)!*C(3*(n+2), n+2)/(3*(2*(n+2)+1))` -/
def P3724649270348610068.Spec : Prop :=
  ∀ n, P3724649270348610068.a n = (A076151 (n + 2) : ℚ)

end A076151

/-! ## A076151.P9392910726199335886

`n!*C(3*n+5, n)`
-/

namespace A076151.P9392910726199335886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (3 * n + 5) n

end

end A076151.P9392910726199335886

namespace A076151

/-- `n!*C(3*n+5, n)` -/
def P9392910726199335886.Spec : Prop :=
  ∀ n, (P9392910726199335886.a n : ℤ) = A076151 (n + 2)

end A076151

/-! ## A076151.P3861750153821098795

`A370055(n+1)/3`
-/

namespace A076151.P3861750153821098795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370055 (n + 1) : ℚ) / 3

end

end A076151.P3861750153821098795

namespace A076151

/-- `A370055(n+1)/3` -/
def P3861750153821098795.Spec : Prop :=
  ∀ n, P3861750153821098795.a n = (A076151 (n + 2) : ℚ)

end A076151

/-! ## A076151.P17095356088437570516

`n!*A013698(n+1)`
-/

namespace A076151.P17095356088437570516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A013698 (n + 1)

end

end A076151.P17095356088437570516

namespace A076151

/-- `n!*A013698(n+1)` -/
def P17095356088437570516.Spec : Prop :=
  ∀ n, P17095356088437570516.a n = A076151 (n + 2)

end A076151

/-! ## A076151.P13535765973809420335

`A000142(n)*A013698(n+1)`
-/

namespace A076151.P13535765973809420335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A013698 (n + 1)

end

end A076151.P13535765973809420335

namespace A076151

/-- `A000142(n)*A013698(n+1)` -/
def P13535765973809420335.Spec : Prop :=
  ∀ n, P13535765973809420335.a n = A076151 (n + 2)

end A076151

/-!
# A076152: Let c = Sum_{k>=0} 1/2^(k!). Sequence gives values of terms not congruent to 5 in the continued fraction for c.

The programs for A076152, there is no canonical definition to state claims against.
-/

/-! ## A076152.P16466706001429113194

`A123063(n+1)+A030392(A077168(n))`
-/

namespace A076152.P16466706001429113194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 (n + 1) + A030392 (A077168 n).toNat

end

end A076152.P16466706001429113194

/-! ## A076152.P9992392163212230510

`A050873(A103517(n)+A100938(n))`
-/

namespace A076152.P9992392163212230510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A103517 n + A100938 n).toNat

end

end A076152.P9992392163212230510

/-! ## A076152.P4277306646641738804

`gcd(A000326(A246905(n+1)), A167614(n+1))`
-/

namespace A076152.P4277306646641738804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000326 (A246905 (n + 1)).toNat) (A167614 (n + 1))

end

end A076152.P4277306646641738804

/-! ## A076152.P17092426873121125809

`gcd(A020491(4*n+2), A308690(A175142(5*n+2)))`
-/

namespace A076152.P17092426873121125809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020491 (4 * n + 2)) (A308690 (A175142 (5 * n + 2)).toNat)

end

end A076152.P17092426873121125809

/-! ## A076152.P12554242296409314925

`A013684(A301789(n+1))`
-/

namespace A076152.P12554242296409314925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013684 (A301789 (n + 1)).toNat

end

end A076152.P12554242296409314925

/-!
# A076153: Numbers n such that Omega(n) = Omega(n-1)^2, where Omega(m) (A001222) denotes the number of prime factors of m, counted with multiplicity.

The programs for A076153, the canonical program `A076153.P17044254915095114484` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076153 has offset 1).

The definition of A076153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2919 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076153.P17044254915095114484

`eq[A001222(n+1)², A001222(n+2)]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A076153

/-- `eq[A001222(n+1)², A001222(n+2)]+2` -/
def P17044254915095114484.Spec : Prop :=
  ∀ n, (P17044254915095114484.a n : ℤ) = A076153 (n + 1)

theorem P17044254915095114484.correct : P17044254915095114484.Spec := by
  intro n
  simp only [A076153, Nat.add_sub_cancel]

end A076153

/-! ## A076153.P8732614261355138199

`record[A109287(A002260(n+1))%A109308(n+1)]`
-/

namespace A076153.P8732614261355138199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109287 (A002260 (n + 1)).toNat) (A109308 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076153.P8732614261355138199

namespace A076153

/-- `record[A109287(A002260(n+1))%A109308(n+1)]` -/
def P8732614261355138199.Spec : Prop :=
  ∀ n, P8732614261355138199.a n = A076153 (n + 1)

end A076153

/-! ## A076153.P18014843096685627650

`record[A109287(A307662(n+1))%A109308(n+1)]`
-/

namespace A076153.P18014843096685627650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109287 (A307662 (n + 1)).toNat) (A109308 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076153.P18014843096685627650

namespace A076153

/-- `record[A109287(A307662(n+1))%A109308(n+1)]` -/
def P18014843096685627650.Spec : Prop :=
  ∀ n, P18014843096685627650.a n = A076153 (n + 1)

end A076153

/-! ## A076153.P4718440175066963209

`record[A109287(A000188(n+1))%A109308(n+1)]`
-/

namespace A076153.P4718440175066963209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109287 (A000188 (n + 1)).toNat) (A109308 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076153.P4718440175066963209

namespace A076153

/-- `record[A109287(A000188(n+1))%A109308(n+1)]` -/
def P4718440175066963209.Spec : Prop :=
  ∀ n, P4718440175066963209.a n = A076153 (n + 1)

end A076153

/-! ## A076153.P12812837864366206959

`A109287(A028310(n))%A280997(n+1)`
-/

namespace A076153.P12812837864366206959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109287 (A028310 n).toNat) (A280997 (n + 1))

end

end A076153.P12812837864366206959

namespace A076153

/-- `A109287(A028310(n))%A280997(n+1)` -/
def P12812837864366206959.Spec : Prop :=
  ∀ n, P12812837864366206959.a n = A076153 (n + 1)

end A076153

/-!
# A076156: Numbers n such that Omega(n+1) = Omega(n)+1, where Omega(m) (A001222) denotes the number of prime factors of m, counting multiplicity.

The programs for A076156, the canonical program `A076156.P12126611222985155867` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076156 has offset 1).

The definition of A076156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076156.P336779197617952687

`eq[A061142(2*(n+1)), A061142(n+2)]+1`
-/

namespace A076156.P336779197617952687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P336779197617952687

namespace A076156

/-- `eq[A061142(2*(n+1)), A061142(n+2)]+1` -/
def P336779197617952687.Spec : Prop :=
  ∀ n, (P336779197617952687.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P8583299849224743003

`eq[A073093(2*(n+1)), A073093(n+2)]+1`
-/

namespace A076156.P8583299849224743003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P8583299849224743003

namespace A076156

/-- `eq[A073093(2*(n+1)), A073093(n+2)]+1` -/
def P8583299849224743003.Spec : Prop :=
  ∀ n, (P8583299849224743003.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P12126611222985155867

`eq[A086436(2*(n+1)), A086436(n+2)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076156

/-- `eq[A086436(2*(n+1)), A086436(n+2)]+1` -/
def P12126611222985155867.Spec : Prop :=
  ∀ n, (P12126611222985155867.a n : ℤ) = A076156 (n + 1)

theorem P12126611222985155867.correct : P12126611222985155867.Spec := by
  intro n
  simp only [A076156, Nat.add_sub_cancel]

end A076156

/-! ## A076156.P725874467929578168

`eq[A086568(2*(n+1)), A086568(n+2)]+1`
-/

namespace A076156.P725874467929578168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P725874467929578168

namespace A076156

/-- `eq[A086568(2*(n+1)), A086568(n+2)]+1` -/
def P725874467929578168.Spec : Prop :=
  ∀ n, (P725874467929578168.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P11708989996821428857

`eq[A105560(2*(n+1)), A105560(n+2)]+1`
-/

namespace A076156.P11708989996821428857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P11708989996821428857

namespace A076156

/-- `eq[A105560(2*(n+1)), A105560(n+2)]+1` -/
def P11708989996821428857.Spec : Prop :=
  ∀ n, (P11708989996821428857.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P10509854513269179485

`eq[A130675(2*(n+1)), A130675(n+2)]+1`
-/

namespace A076156.P10509854513269179485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P10509854513269179485

namespace A076156

/-- `eq[A130675(2*(n+1)), A130675(n+2)]+1` -/
def P10509854513269179485.Spec : Prop :=
  ∀ n, (P10509854513269179485.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P2501943745306661518

`eq[A144494(2*(n+1)), A144494(n+2)]+1`
-/

namespace A076156.P2501943745306661518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P2501943745306661518

namespace A076156

/-- `eq[A144494(2*(n+1)), A144494(n+2)]+1` -/
def P2501943745306661518.Spec : Prop :=
  ∀ n, (P2501943745306661518.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P10166247882721670244

`eq[A165872(2*(n+1)), A165872(n+2)]+1`
-/

namespace A076156.P10166247882721670244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P10166247882721670244

namespace A076156

/-- `eq[A165872(2*(n+1)), A165872(n+2)]+1` -/
def P10166247882721670244.Spec : Prop :=
  ∀ n, (P10166247882721670244.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P12663444117731347915

`eq[A252736(2*(n+1)), A252736(n+2)]+1`
-/

namespace A076156.P12663444117731347915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P12663444117731347915

namespace A076156

/-- `eq[A252736(2*(n+1)), A252736(n+2)]+1` -/
def P12663444117731347915.Spec : Prop :=
  ∀ n, (P12663444117731347915.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P16033293045161719394

`eq[A001222(n+1), A086436(A004277(n))]`
-/

namespace A076156.P16033293045161719394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P16033293045161719394

namespace A076156

/-- `eq[A001222(n+1), A086436(A004277(n))]` -/
def P16033293045161719394.Spec : Prop :=
  ∀ n, (P16033293045161719394.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P359036869224805123

`eq[A001222(n+1)+1, A001222(A004277(2*n))]`
-/

namespace A076156.P359036869224805123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P359036869224805123

namespace A076156

/-- `eq[A001222(n+1)+1, A001222(A004277(2*n))]` -/
def P359036869224805123.Spec : Prop :=
  ∀ n, (P359036869224805123.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P7256792436484124209

`eq[A001222(n+1)+1, A001222(A008486(2*n))]`
-/

namespace A076156.P7256792436484124209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P7256792436484124209

namespace A076156

/-- `eq[A001222(n+1)+1, A001222(A008486(2*n))]` -/
def P7256792436484124209.Spec : Prop :=
  ∀ n, (P7256792436484124209.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P16986177965680410472

`eq[A001222(n+1)+1, A001222(A008706(2*n))]`
-/

namespace A076156.P16986177965680410472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008706 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P16986177965680410472

namespace A076156

/-- `eq[A001222(n+1)+1, A001222(A008706(2*n))]` -/
def P16986177965680410472.Spec : Prop :=
  ∀ n, (P16986177965680410472.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P399791564643970904

`eq[A001222(n+1)+1, A001222(A298026(2*n))]`
-/

namespace A076156.P399791564643970904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A298026 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P399791564643970904

namespace A076156

/-- `eq[A001222(n+1)+1, A001222(A298026(2*n))]` -/
def P399791564643970904.Spec : Prop :=
  ∀ n, (P399791564643970904.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P10623974845458257211

`eq[A001222(A004275(2*n+1)), A001222(n+1)+1]`
-/

namespace A076156.P10623974845458257211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004275 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P10623974845458257211

namespace A076156

/-- `eq[A001222(A004275(2*n+1)), A001222(n+1)+1]` -/
def P10623974845458257211.Spec : Prop :=
  ∀ n, (P10623974845458257211.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P2454052506230653172

`eq[A001222(3*n-(n-2))-1, A086436(A004277(n))]`
-/

namespace A076156.P2454052506230653172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P2454052506230653172

namespace A076156

/-- `eq[A001222(3*n-(n-2))-1, A086436(A004277(n))]` -/
def P2454052506230653172.Spec : Prop :=
  ∀ n, (P2454052506230653172.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P15187099053217396673

`eq[A061142(2*(n+1)), A061142(A004277(2*n))]`
-/

namespace A076156.P15187099053217396673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P15187099053217396673

namespace A076156

/-- `eq[A061142(2*(n+1)), A061142(A004277(2*n))]` -/
def P15187099053217396673.Spec : Prop :=
  ∀ n, (P15187099053217396673.a n : ℤ) = A076156 (n + 1)

end A076156

/-! ## A076156.P12537743905517070679

`A066532(2*n+1)+eq[A001222(n+1)+1, A001222(n+2)]`
-/

namespace A076156.P12537743905517070679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (2 * n + 1) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A076156.P12537743905517070679

namespace A076156

/-- `A066532(2*n+1)+eq[A001222(n+1)+1, A001222(n+2)]` -/
def P12537743905517070679.Spec : Prop :=
  ∀ n, P12537743905517070679.a n = A076156 (n + 1)

end A076156

/-! ## A076156.P4145852859718734178

`eq[A001222(n+1), A001222(A233583(n+1)+n)]`
-/

namespace A076156.P4145852859718734178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A233583 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076156.P4145852859718734178

namespace A076156

/-- `eq[A001222(n+1), A001222(A233583(n+1)+n)]` -/
def P4145852859718734178.Spec : Prop :=
  ∀ n, (P4145852859718734178.a n : ℤ) = A076156 (n + 1)

end A076156

/-!
# A076157: Continued fraction expansion for c = Sum_{k>=0} 1/2^(k!).

The programs for A076157, there is no canonical definition to state claims against.
-/

/-! ## A076157.P908428170926320367

`A053763(a(n-1))-1` with `a(0)=1, a(1)=3, a(2)=1, a(3)=3, a(4)=4`
-/

namespace A076157.P908428170926320367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1, 3, 4] fun n a =>
  A053763 (a (n - 1)).toNat - 1

end

end A076157.P908428170926320367

/-!
# A076158: a(n) = the least positive integer k such that Omega(n+k) = Omega(k)+n, where Omega(m) (A001222) denotes the number of prime factors of m, counting multiplicity.

The programs for A076158, there is no canonical definition to state claims against.
-/

/-! ## A076158.P15054823742626716673

`A001316(A022643(n))-(n+1)`
-/

namespace A076158.P15054823742626716673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A022643 n).toNat - (n + 1 : ℤ)

end

end A076158.P15054823742626716673

/-! ## A076158.P11417077317388834058

`A060632(A001547(n))-(n+1)`
-/

namespace A076158.P11417077317388834058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A001547 n).toNat - (n + 1 : ℤ)

end

end A076158.P11417077317388834058

/-!
# A076160: Sod_4 - sod_3 + sod_2 - sod_1, where sod_k is the sum of k-th powers of digits of n.

The programs for A076160, the canonical program `A076160.P7190906262861791826` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076160 has offset 0).

The definition of A076160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076160.P7190906262861791826

`∑{digits}[n, A060884(#)-1]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076160

/-- `∑{digits}[n, A060884(#)-1]` -/
def P7190906262861791826.Spec : Prop :=
  ∀ n, P7190906262861791826.a n = A076160 n

theorem P7190906262861791826.correct : P7190906262861791826.Spec := by
  intro n
  simp only [A076160]

end A076160

/-! ## A076160.P4131363524188440000

`2*∑{digits}[n, A071252(#)]`
-/

namespace A076160.P4131363524188440000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A071252 x).sum

end

end A076160.P4131363524188440000

namespace A076160

/-- `2*∑{digits}[n, A071252(#)]` -/
def P4131363524188440000.Spec : Prop :=
  ∀ n, P4131363524188440000.a n = A076160 n

end A076160

/-! ## A076160.P9634442731076632385

`∑{digits}[n, (#-1)*A034262(#)]`
-/

namespace A076160.P9634442731076632385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ((x : ℤ) - 1) * A034262 x).sum

end

end A076160.P9634442731076632385

namespace A076160

/-- `∑{digits}[n, (#-1)*A034262(#)]` -/
def P9634442731076632385.Spec : Prop :=
  ∀ n, P9634442731076632385.a n = A076160 n

end A076160

/-! ## A076160.P14942453686839192778

`∑{digits}[n, #²]+A055013(n)-∑{digits}[n, #^3+#]`
-/

namespace A076160.P14942453686839192778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) + (A055013 n - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 3 + x).sum : ℕ) : ℤ))

end

end A076160.P14942453686839192778

namespace A076160

/-- `∑{digits}[n, #²]+A055013(n)-∑{digits}[n, #^3+#]` -/
def P14942453686839192778.Spec : Prop :=
  ∀ n, P14942453686839192778.a n = A076160 n

end A076160

/-! ## A076160.P12216592648011447605

`∑{digits}[n, A005843(A071252(#))]`
-/

namespace A076160.P12216592648011447605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A005843 (A071252 x).toNat).sum

end

end A076160.P12216592648011447605

namespace A076160

/-- `∑{digits}[n, A005843(A071252(#))]` -/
def P12216592648011447605.Spec : Prop :=
  ∀ n, P12216592648011447605.a n = A076160 n

end A076160

/-! ## A076160.P12334965279657159952

`∑{digits}[n, A023443(A060884(#))]`
-/

namespace A076160.P12334965279657159952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A023443 (A060884 x).toNat).sum

end

end A076160.P12334965279657159952

namespace A076160

/-- `∑{digits}[n, A023443(A060884(#))]` -/
def P12334965279657159952.Spec : Prop :=
  ∀ n, P12334965279657159952.a n = A076160 n

end A076160

/-! ## A076160.P13009504372262504613

`A005408(∑{digits}[n, A071252(#)])-1`
-/

namespace A076160.P13009504372262504613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A071252 x).sum.toNat - 1

end

end A076160.P13009504372262504613

namespace A076160

/-- `A005408(∑{digits}[n, A071252(#)])-1` -/
def P13009504372262504613.Spec : Prop :=
  ∀ n, P13009504372262504613.a n = A076160 n

end A076160

/-! ## A076160.P11563725080894543152

`lcm(2, A022998(∑{digits}[n, A071252(#)]))`
-/

namespace A076160.P11563725080894543152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A022998 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A071252 x).sum.toNat)

end

end A076160.P11563725080894543152

namespace A076160

/-- `lcm(2, A022998(∑{digits}[n, A071252(#)]))` -/
def P11563725080894543152.Spec : Prop :=
  ∀ n, (P11563725080894543152.a n : ℤ) = A076160 n

end A076160

/-!
# A076161: Numbers n such that n + sum of squares of digits of n (A258881) is a prime.

The programs for A076161, the canonical program `A076161.P8640026086949226989` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076161 has offset 1).

The definition of A076161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076161.P8640026086949226989

`eq[2, ∏{e}[∑{digits}[n, #²]+n, #+1]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076161

/-- `eq[2, ∏{e}[∑{digits}[n, #²]+n, #+1]]` -/
def P8640026086949226989.Spec : Prop :=
  ∀ n, (P8640026086949226989.a n : ℤ) = A076161 (n + 1)

theorem P8640026086949226989.correct : P8640026086949226989.Spec := by
  intro n
  simp only [A076161, Nat.add_sub_cancel]

end A076161

/-! ## A076161.P13007131253429674436

`eq[2, A077982(A003132(n)+n)]`
-/

namespace A076161.P13007131253429674436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076161.P13007131253429674436

namespace A076161

/-- `eq[2, A077982(A003132(n)+n)]` -/
def P13007131253429674436.Spec : Prop :=
  ∀ n, (P13007131253429674436.a n : ℤ) = A076161 (n + 1)

end A076161

/-! ## A076161.P16912993322400844562

`record[(n+1)%A020639(A003132(n+1)+n+1)]`
-/

namespace A076161.P16912993322400844562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A003132 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076161.P16912993322400844562

namespace A076161

/-- `record[(n+1)%A020639(A003132(n+1)+n+1)]` -/
def P16912993322400844562.Spec : Prop :=
  ∀ n, P16912993322400844562.a n = A076161 (n + 1)

end A076161

/-! ## A076161.P16516365752456696817

`eq[1, A003415(A003132(n)+n)]`
-/

namespace A076161.P16516365752456696817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076161.P16516365752456696817

namespace A076161

/-- `eq[1, A003415(A003132(n)+n)]` -/
def P16516365752456696817.Spec : Prop :=
  ∀ n, (P16516365752456696817.a n : ℤ) = A076161 (n + 1)

end A076161

/-! ## A076161.P9706377007707593821

`eq[1, A032741(A003132(n)+n)]`
-/

namespace A076161.P9706377007707593821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076161.P9706377007707593821

namespace A076161

/-- `eq[1, A032741(A003132(n)+n)]` -/
def P9706377007707593821.Spec : Prop :=
  ∀ n, (P9706377007707593821.a n : ℤ) = A076161 (n + 1)

end A076161

/-! ## A076161.P16857136077539117435

`eq[1, A105700(A003132(n)+n)]`
-/

namespace A076161.P16857136077539117435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076161.P16857136077539117435

namespace A076161

/-- `eq[1, A105700(A003132(n)+n)]` -/
def P16857136077539117435.Spec : Prop :=
  ∀ n, (P16857136077539117435.a n : ℤ) = A076161 (n + 1)

end A076161

/-! ## A076161.P8441758399439439177

`eq[1, A211110(A003132(n+1)+n+1)]+1`
-/

namespace A076161.P8441758399439439177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (A003132 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076161.P8441758399439439177

namespace A076161

/-- `eq[1, A211110(A003132(n+1)+n+1)]+1` -/
def P8441758399439439177.Spec : Prop :=
  ∀ n, (P8441758399439439177.a n : ℤ) = A076161 (n + 1)

end A076161

/-! ## A076161.P3863221278476288276

`eq[A000007(n), A007920(A003132(n)+n)]`
-/

namespace A076161.P3863221278476288276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076161.P3863221278476288276

namespace A076161

/-- `eq[A000007(n), A007920(A003132(n)+n)]` -/
def P3863221278476288276.Spec : Prop :=
  ∀ n, (P3863221278476288276.a n : ℤ) = A076161 (n + 1)

end A076161

/-! ## A076161.P13969586772372694869

`eq[A057427(n), A210442(A003132(n)+n)]`
-/

namespace A076161.P13969586772372694869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076161.P13969586772372694869

namespace A076161

/-- `eq[A057427(n), A210442(A003132(n)+n)]` -/
def P13969586772372694869.Spec : Prop :=
  ∀ n, (P13969586772372694869.a n : ℤ) = A076161 (n + 1)

end A076161

/-! ## A076161.P2961518259230618511

`eq[2, A053204(A003132(n)+n)]`
-/

namespace A076161.P2961518259230618511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 (A003132 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076161.P2961518259230618511

namespace A076161

/-- `eq[2, A053204(A003132(n)+n)]` -/
def P2961518259230618511.Spec : Prop :=
  ∀ n, (P2961518259230618511.a n : ℤ) = A076161 (n + 1)

end A076161

/-!
# A076162: Primes p such that p + sum of squares of digits of p is also prime.

The programs for A076162, the canonical program `A076162.P12378569391942512575` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076162 has offset 1).

The definition of A076162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076162.P12378569391942512575

`p?[A076161(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076162

/-- `p?[A076161(n+1)]` -/
def P12378569391942512575.Spec : Prop :=
  ∀ n, P12378569391942512575.a n = A076162 (n + 1)

theorem P12378569391942512575.correct : P12378569391942512575.Spec := by
  intro n
  simp only [A076162, Nat.add_sub_cancel]

end A076162

/-! ## A076162.P466884809970040079

`∩[A000040(n+1), A076161(n+1)]`
-/

namespace A076162.P466884809970040079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P466884809970040079

namespace A076162

/-- `∩[A000040(n+1), A076161(n+1)]` -/
def P466884809970040079.Spec : Prop :=
  ∀ n, (P466884809970040079.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P16013566301027310087

`∩[A004139(n+1), A076161(n+1)]`
-/

namespace A076162.P16013566301027310087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P16013566301027310087

namespace A076162

/-- `∩[A004139(n+1), A076161(n+1)]` -/
def P16013566301027310087.Spec : Prop :=
  ∀ n, (P16013566301027310087.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P6139641466620525325

`∩[A045319(n+1), A076161(n+1)]`
-/

namespace A076162.P6139641466620525325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P6139641466620525325

namespace A076162

/-- `∩[A045319(n+1), A076161(n+1)]` -/
def P6139641466620525325.Spec : Prop :=
  ∀ n, (P6139641466620525325.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P13667186388589407432

`∩[A045344(n+1), A076161(n+1)]`
-/

namespace A076162.P13667186388589407432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P13667186388589407432

namespace A076162

/-- `∩[A045344(n+1), A076161(n+1)]` -/
def P13667186388589407432.Spec : Prop :=
  ∀ n, (P13667186388589407432.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P16427966210013709960

`∩[A051948(n+1), A076161(n+1)]`
-/

namespace A076162.P16427966210013709960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P16427966210013709960

namespace A076162

/-- `∩[A051948(n+1), A076161(n+1)]` -/
def P16427966210013709960.Spec : Prop :=
  ∀ n, (P16427966210013709960.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P2080604511230946593

`∩[A053813(n+1), A076161(n+1)]`
-/

namespace A076162.P2080604511230946593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P2080604511230946593

namespace A076162

/-- `∩[A053813(n+1), A076161(n+1)]` -/
def P2080604511230946593.Spec : Prop :=
  ∀ n, (P2080604511230946593.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P2139289586437728379

`∩[A065091(n+1), A076161(n+1)]`
-/

namespace A076162.P2139289586437728379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P2139289586437728379

namespace A076162

/-- `∩[A065091(n+1), A076161(n+1)]` -/
def P2139289586437728379.Spec : Prop :=
  ∀ n, (P2139289586437728379.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P420717806849758057

`∩[A065396(n+1), A076161(n+1)]`
-/

namespace A076162.P420717806849758057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P420717806849758057

namespace A076162

/-- `∩[A065396(n+1), A076161(n+1)]` -/
def P420717806849758057.Spec : Prop :=
  ∀ n, (P420717806849758057.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P14231611574922403979

`∩[A076161(n+1), A116974(n+1)]`
-/

namespace A076162.P14231611574922403979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P14231611574922403979

namespace A076162

/-- `∩[A076161(n+1), A116974(n+1)]` -/
def P14231611574922403979.Spec : Prop :=
  ∀ n, (P14231611574922403979.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P10508465701022266551

`∩[A076161(n+1), A119449(n+1)]`
-/

namespace A076162.P10508465701022266551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P10508465701022266551

namespace A076162

/-- `∩[A076161(n+1), A119449(n+1)]` -/
def P10508465701022266551.Spec : Prop :=
  ∀ n, (P10508465701022266551.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P1280779916912849188

`∩[A076161(n+1), A161346(n+1)]`
-/

namespace A076162.P1280779916912849188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P1280779916912849188

namespace A076162

/-- `∩[A076161(n+1), A161346(n+1)]` -/
def P1280779916912849188.Spec : Prop :=
  ∀ n, (P1280779916912849188.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P6709085519906434982

`∩[A076161(n+1), A161428(n+1)]`
-/

namespace A076162.P6709085519906434982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P6709085519906434982

namespace A076162

/-- `∩[A076161(n+1), A161428(n+1)]` -/
def P6709085519906434982.Spec : Prop :=
  ∀ n, (P6709085519906434982.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P9446228967329861757

`∩[A076161(n+1), A175787(n+1)]`
-/

namespace A076162.P9446228967329861757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P9446228967329861757

namespace A076162

/-- `∩[A076161(n+1), A175787(n+1)]` -/
def P9446228967329861757.Spec : Prop :=
  ∀ n, (P9446228967329861757.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P4620441599875612641

`∩[A076161(n+1), A182986(n+1)]`
-/

namespace A076162.P4620441599875612641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P4620441599875612641

namespace A076162

/-- `∩[A076161(n+1), A182986(n+1)]` -/
def P4620441599875612641.Spec : Prop :=
  ∀ n, (P4620441599875612641.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P5218646720713468781

`∩[A076161(n+1), A186285(n+1)]`
-/

namespace A076162.P5218646720713468781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P5218646720713468781

namespace A076162

/-- `∩[A076161(n+1), A186285(n+1)]` -/
def P5218646720713468781.Spec : Prop :=
  ∀ n, (P5218646720713468781.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P3419047004769836396

`∩[A076161(n+1), A215848(n+1)]`
-/

namespace A076162.P3419047004769836396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P3419047004769836396

namespace A076162

/-- `∩[A076161(n+1), A215848(n+1)]` -/
def P3419047004769836396.Spec : Prop :=
  ∀ n, (P3419047004769836396.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P750092219805664097

`∩[A076161(n+1), A268391(n+1)]`
-/

namespace A076162.P750092219805664097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P750092219805664097

namespace A076162

/-- `∩[A076161(n+1), A268391(n+1)]` -/
def P750092219805664097.Spec : Prop :=
  ∀ n, (P750092219805664097.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P4712955713498058687

`∩[A076161(n+1), A348283(n+1)]`
-/

namespace A076162.P4712955713498058687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P4712955713498058687

namespace A076162

/-- `∩[A076161(n+1), A348283(n+1)]` -/
def P4712955713498058687.Spec : Prop :=
  ∀ n, (P4712955713498058687.a n : ℤ) = A076162 (n + 1)

end A076162

/-! ## A076162.P11466477840494735298

`∩[A076161(n+1), A393213(n+1)]`
-/

namespace A076162.P11466477840494735298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076162.P11466477840494735298

namespace A076162

/-- `∩[A076161(n+1), A393213(n+1)]` -/
def P11466477840494735298.Spec : Prop :=
  ∀ n, (P11466477840494735298.a n : ℤ) = A076162 (n + 1)

end A076162

/-!
# A076163: Primes p such that the absolute value of p minus the sum of squares of digits of p is also prime.

The programs for A076163, there is no canonical definition to state claims against.
-/

/-! ## A076163.P244560324758642879

`A338938(A160677(n+1))`
-/

namespace A076163.P244560324758642879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338938 (A160677 (n + 1)).toNat

end

end A076163.P244560324758642879

/-!
# A076166: Primes p such that sum of cubes of even digits of p equals sum of cubes of odd digits of p.

The programs for A076166, there is no canonical definition to state claims against.
-/

/-! ## A076166.P11029821576527315044

`p?[A076165(n+1)]`
-/

namespace A076166.P11029821576527315044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076166.P11029821576527315044

/-! ## A076166.P15568819180226446018

`p?[record[A076165(A154958(n))]]`
-/

namespace A076166.P15568819180226446018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076165 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076166.P15568819180226446018

/-! ## A076166.P7866105486254164745

`p?[record[A076165(A286547(n))]]`
-/

namespace A076166.P7866105486254164745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076165 (A286547 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076166.P7866105486254164745

/-! ## A076166.P17205559880821496987

`p?[record[A076165(A286602(n))]]`
-/

namespace A076166.P17205559880821496987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076165 (A286602 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076166.P17205559880821496987

/-! ## A076166.P4898480213189359627

`record[p?[A076165(A082233(n))]]`
-/

namespace A076166.P4898480213189359627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076165 (A082233 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076166.P4898480213189359627

/-!
# A076167: Primes p such that sum of even digits of p equals sum of odd digits of p.

The programs for A076167, the canonical program `A076167.P1925826582817303362` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076167 has offset 1).

The definition of A076167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076167.P1925826582817303362

`p?[A036301(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076167

/-- `p?[A036301(n+1)]` -/
def P1925826582817303362.Spec : Prop :=
  ∀ n, P1925826582817303362.a n = A076167 (n + 1)

theorem P1925826582817303362.correct : P1925826582817303362.Spec := by
  intro n
  simp only [A076167, Nat.add_sub_cancel]

end A076167

/-! ## A076167.P6247578383840968445

`p?[record[A036301(A324343(n))]]`
-/

namespace A076167.P6247578383840968445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076167.P6247578383840968445

namespace A076167

/-- `p?[record[A036301(A324343(n))]]` -/
def P6247578383840968445.Spec : Prop :=
  ∀ n, P6247578383840968445.a n = A076167 (n + 1)

end A076167

/-! ## A076167.P4499683338901627431

`∩[A036301(n+1), A062338(n+1)]`
-/

namespace A076167.P4499683338901627431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P4499683338901627431

namespace A076167

/-- `∩[A036301(n+1), A062338(n+1)]` -/
def P4499683338901627431.Spec : Prop :=
  ∀ n, (P4499683338901627431.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P17380995727510785309

`∩[A036301(n+1), A119449(n+1)]`
-/

namespace A076167.P17380995727510785309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P17380995727510785309

namespace A076167

/-- `∩[A036301(n+1), A119449(n+1)]` -/
def P17380995727510785309.Spec : Prop :=
  ∀ n, (P17380995727510785309.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P8740701938326037628

`∩[A036301(n+1), A104213(n+1)]`
-/

namespace A076167.P8740701938326037628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P8740701938326037628

namespace A076167

/-- `∩[A036301(n+1), A104213(n+1)]` -/
def P8740701938326037628.Spec : Prop :=
  ∀ n, (P8740701938326037628.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P3901637822569989927

`p?[record[A036301(A052938(n))]]`
-/

namespace A076167.P3901637822569989927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076167.P3901637822569989927

namespace A076167

/-- `p?[record[A036301(A052938(n))]]` -/
def P3901637822569989927.Spec : Prop :=
  ∀ n, P3901637822569989927.a n = A076167 (n + 1)

end A076167

/-! ## A076167.P15724964253173042713

`∩[A000040(n+1), A036301(n+1)]`
-/

namespace A076167.P15724964253173042713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P15724964253173042713

namespace A076167

/-- `∩[A000040(n+1), A036301(n+1)]` -/
def P15724964253173042713.Spec : Prop :=
  ∀ n, (P15724964253173042713.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P7620168982546283366

`∩[A004139(n+1), A036301(n+1)]`
-/

namespace A076167.P7620168982546283366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P7620168982546283366

namespace A076167

/-- `∩[A004139(n+1), A036301(n+1)]` -/
def P7620168982546283366.Spec : Prop :=
  ∀ n, (P7620168982546283366.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P13508010583286053949

`∩[A006005(n+1), A036301(n+1)]`
-/

namespace A076167.P13508010583286053949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P13508010583286053949

namespace A076167

/-- `∩[A006005(n+1), A036301(n+1)]` -/
def P13508010583286053949.Spec : Prop :=
  ∀ n, (P13508010583286053949.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P7566471392976048578

`∩[A008578(n+1), A036301(n+1)]`
-/

namespace A076167.P7566471392976048578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P7566471392976048578

namespace A076167

/-- `∩[A008578(n+1), A036301(n+1)]` -/
def P7566471392976048578.Spec : Prop :=
  ∀ n, (P7566471392976048578.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P8142025694079276051

`∩[A036301(n+1), A045319(n+1)]`
-/

namespace A076167.P8142025694079276051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P8142025694079276051

namespace A076167

/-- `∩[A036301(n+1), A045319(n+1)]` -/
def P8142025694079276051.Spec : Prop :=
  ∀ n, (P8142025694079276051.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P4196001674334543943

`∩[A036301(n+1), A045344(n+1)]`
-/

namespace A076167.P4196001674334543943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P4196001674334543943

namespace A076167

/-- `∩[A036301(n+1), A045344(n+1)]` -/
def P4196001674334543943.Spec : Prop :=
  ∀ n, (P4196001674334543943.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P2882689841359091421

`∩[A036301(n+1), A046022(n+1)]`
-/

namespace A076167.P2882689841359091421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P2882689841359091421

namespace A076167

/-- `∩[A036301(n+1), A046022(n+1)]` -/
def P2882689841359091421.Spec : Prop :=
  ∀ n, (P2882689841359091421.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P14395506154930749222

`∩[A036301(n+1), A051948(n+1)]`
-/

namespace A076167.P14395506154930749222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P14395506154930749222

namespace A076167

/-- `∩[A036301(n+1), A051948(n+1)]` -/
def P14395506154930749222.Spec : Prop :=
  ∀ n, (P14395506154930749222.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P9192338512545644000

`∩[A036301(n+1), A053813(n+1)]`
-/

namespace A076167.P9192338512545644000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P9192338512545644000

namespace A076167

/-- `∩[A036301(n+1), A053813(n+1)]` -/
def P9192338512545644000.Spec : Prop :=
  ∀ n, (P9192338512545644000.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P357869214817182767

`∩[A036301(n+1), A054723(n+1)]`
-/

namespace A076167.P357869214817182767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P357869214817182767

namespace A076167

/-- `∩[A036301(n+1), A054723(n+1)]` -/
def P357869214817182767.Spec : Prop :=
  ∀ n, (P357869214817182767.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P6946987960976799660

`∩[A036301(n+1), A062972(n+1)]`
-/

namespace A076167.P6946987960976799660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P6946987960976799660

namespace A076167

/-- `∩[A036301(n+1), A062972(n+1)]` -/
def P6946987960976799660.Spec : Prop :=
  ∀ n, (P6946987960976799660.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P11270472769879073780

`∩[A036301(n+1), A064728(n+1)]`
-/

namespace A076167.P11270472769879073780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P11270472769879073780

namespace A076167

/-- `∩[A036301(n+1), A064728(n+1)]` -/
def P11270472769879073780.Spec : Prop :=
  ∀ n, (P11270472769879073780.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P8090269034806110740

`∩[A036301(n+1), A065091(n+1)]`
-/

namespace A076167.P8090269034806110740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P8090269034806110740

namespace A076167

/-- `∩[A036301(n+1), A065091(n+1)]` -/
def P8090269034806110740.Spec : Prop :=
  ∀ n, (P8090269034806110740.a n : ℤ) = A076167 (n + 1)

end A076167

/-! ## A076167.P6786691105288589039

`∩[A036301(n+1), A065376(n+1)]`
-/

namespace A076167.P6786691105288589039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076167.P6786691105288589039

namespace A076167

/-- `∩[A036301(n+1), A065376(n+1)]` -/
def P6786691105288589039.Spec : Prop :=
  ∀ n, (P6786691105288589039.a n : ℤ) = A076167 (n + 1)

end A076167

/-!
# A076169: Triangular numbers whose sum of prime factors (with repetition) is also triangular.

The programs for A076169, there is no canonical definition to state claims against.
-/

/-! ## A076169.P2876379655135390707

`∩[A212849(n+1), A000217(n)]`
-/

namespace A076169.P2876379655135390707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076169.P2876379655135390707

/-! ## A076169.P7639399580310327885

`eq[A059268(n), A073423(A107463(n))]`
-/

namespace A076169.P7639399580310327885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076169.P7639399580310327885

/-! ## A076169.P8027466358662336664

`eq[A002260(n+1), A073424(A107463(n))]`
-/

namespace A076169.P8027466358662336664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076169.P8027466358662336664

/-! ## A076169.P15315525381639456295

`filter[A212849(n+1), A010054(#)]`
-/

namespace A076169.P15315525381639456295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A076169.P15315525381639456295

/-! ## A076169.P9545274011437362186

`eq[A029635(A107463(n)), A208760(n+1)]`
-/

namespace A076169.P9545274011437362186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (A107463 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076169.P9545274011437362186

/-!
# A076170: Triangular numbers whose largest proper divisor is also triangular.

The programs for A076170, there is no canonical definition to state claims against.
-/

/-! ## A076170.P17098903129011203897

`record[C(∑[n+1], A325169(n²+1))]`
-/

namespace A076170.P17098903129011203897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) (A325169 (n ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076170.P17098903129011203897

/-! ## A076170.P15659824807712327476

`C(A353853(A058695(n)), A271237(n))`
-/

namespace A076170.P15659824807712327476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353853 (A058695 n).toNat).toNat (A271237 n).toNat

end

end A076170.P15659824807712327476

/-!
# A076172: Triangular numbers with a triangular number of divisors which set a new record for number of divisors.

The programs for A076172, there is no canonical definition to state claims against.
-/

/-! ## A076172.P9185323664115749191

`record[A323747(∑[A069322(n)])]`
-/

namespace A076172.P9185323664115749191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069322 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323747 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076172.P9185323664115749191

/-!
# A076174: Numerator of Sum_{i+j+k=n, i,j,k>=1} (i*j)/k.

The programs for A076174, there is no canonical definition to state claims against.
-/

/-! ## A076174.P9997071103903151487

`A213998(A052905(n))-A019590(n+1)`
-/

namespace A076174.P9997071103903151487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A052905 n).toNat - A019590 (n + 1)

end

end A076174.P9997071103903151487

/-! ## A076174.P3314734295287008245

`A213998(A052905(n))+A159075(A008619(n))`
-/

namespace A076174.P3314734295287008245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A052905 n).toNat + A159075 (A008619 n).toNat

end

end A076174.P3314734295287008245

/-! ## A076174.P12202660587748774230

`A213998(A052905(n))+A159075(A267872(n))`
-/

namespace A076174.P12202660587748774230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A052905 n).toNat + A159075 (A267872 n).toNat

end

end A076174.P12202660587748774230

/-! ## A076174.P10975433604707776849

`A213998(A052905(n))-A010054(A008818(n))`
-/

namespace A076174.P10975433604707776849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (A052905 n).toNat - A010054 (A008818 n).toNat

end

end A076174.P10975433604707776849

/-! ## A076174.P6789785455100074485

`A213998(A052905(n))%(A267872(n)-A000045(3*n))`
-/

namespace A076174.P6789785455100074485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213998 (A052905 n).toNat) (A267872 n - A000045 (3 * n))

end

end A076174.P6789785455100074485

/-!
# A076175: Denominator of Sum_{i+j+k=n, i,j,k>=1} (i*j)/k.

The programs for A076175, there is no canonical definition to state claims against.
-/

/-! ## A076175.P1605734802417880286

`A213999(∑[n+2]-1+char[1]+n)`
-/

namespace A076175.P1605734802417880286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213999 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 + (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)).toNat

end

end A076175.P1605734802417880286

/-! ## A076175.P10881047237459542958

`gcd(C(n, n²), A213999(A052905(n)))`
-/

namespace A076175.P10881047237459542958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) (A213999 (A052905 n).toNat)

end

end A076175.P10881047237459542958

/-! ## A076175.P13381699147847949784

`gcd(A003418(n), A213999(A052905(n)))`
-/

namespace A076175.P13381699147847949784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 n) (A213999 (A052905 n).toNat)

end

end A076175.P13381699147847949784

/-! ## A076175.P11913351574256852198

`A213999(A052905(n))%A087421(n)`
-/

namespace A076175.P11913351574256852198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213999 (A052905 n).toNat) (A087421 n)

end

end A076175.P11913351574256852198

/-!
# A076176: a(n) = n!*sum( i+j<=n, 1/i!/j! ) for 0 <= i <= j < n.

The programs for A076176, there is no canonical definition to state claims against.
-/

/-! ## A076176.P9117932869766995545

`A027306(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A076176.P9117932869766995545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027306 n + (n : ℤ) * a (n - 1)

end

end A076176.P9117932869766995545

/-! ## A076176.P13266992671616469376

`n*a(n-1)+A226881(n)+1` with `a(0)=1`
-/

namespace A076176.P13266992671616469376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A226881 n + 1)

end

end A076176.P13266992671616469376

/-! ## A076176.P10003024891048024349

`n*a(n-1)+A294175(n)+A001405(n)` with `a(0)=1`
-/

namespace A076176.P10003024891048024349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A294175 n + A001405 n)

end

end A076176.P10003024891048024349

/-! ## A076176.P1263792528524090247

`a(n-1)*n+A153334(n+1)-A206603(n)` with `a(0)=1, a(1)=2`
-/

namespace A076176.P1263792528524090247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * (n : ℤ) + (A153334 (n + 1) - A206603 n)

end

end A076176.P1263792528524090247

/-! ## A076176.P12264345419765389512

`ceil(A081672(n%A000203(n))/2)+n*a(n-1)` with `a(0)=1`
-/

namespace A076176.P12264345419765389512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(A081672 (Int.tmod (n : ℤ) (A000203 n)).toNat : ℚ) / 2⌉ + (n : ℤ) * a (n - 1)

end

end A076176.P12264345419765389512

/-!
# A076177: a(n) = n! * Sum_{ 0<=i<=j<=k<=n, i+j+k<=n } 1/(i!*j!*k!).

The programs for A076177, there is no canonical definition to state claims against.
-/

/-! ## A076177.P16730398060593733542

`A092255(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A076177.P16730398060593733542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092255 n + (n : ℤ) * a (n - 1)

end

end A076177.P16730398060593733542

/-! ## A076177.P2785796875128055034

`A226873(A046691(n+2))+n*a(n-1)` with `a(0)=1`
-/

namespace A076177.P2785796875128055034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226873 (A046691 (n + 2)).toNat + (n : ℤ) * a (n - 1)

end

end A076177.P2785796875128055034

/-!
# A076178: a(n) = 2*n^2 - A077071(n).

The programs for A076178, the canonical program `A076178.P4076835337858509169` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076178 has offset 0).

The definition of A076178 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077071, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076178.P4076835337858509169

`2*n²-A077071(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076178

/-- `2*n²-A077071(n)` -/
def P4076835337858509169.Spec : Prop :=
  ∀ n, P4076835337858509169.a n = A076178 n

theorem P4076835337858509169.correct : P4076835337858509169.Spec := by
  intro n
  simp only [A076178]

end A076178

/-! ## A076178.P1859573134018787470

`2-∑[a(and(n, n-1))-2]` with `a(0)=2`
-/

namespace A076178.P1859573134018787470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076178.P1859573134018787470

namespace A076178

/-- `2-∑[a(and(n, n-1))-2]` -/
def P1859573134018787470.Spec : Prop :=
  ∀ n, P1859573134018787470.a n = A076178 n

end A076178

/-! ## A076178.P5464365690195081370

`∑[(4*n)%∑[∏{e}[xor(n, -n), #]]]`
-/

namespace A076178.P5464365690195081370
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076178.P5464365690195081370

namespace A076178

/-- `∑[(4*n)%∑[∏{e}[xor(n, -n), #]]]` -/
def P5464365690195081370.Spec : Prop :=
  ∀ n, (P5464365690195081370.a n : ℤ) = A076178 n

end A076178

/-! ## A076178.P60816442406366779

`2*(∑[∑[∑{e}[xor(n, -n), 2-#]]]-n)`
-/

namespace A076178.P60816442406366779
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, (2 - (Nat.factorization (f3 n).natAbs p : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A076178.P60816442406366779

namespace A076178

/-- `2*(∑[∑[∑{e}[xor(n, -n), 2-#]]]-n)` -/
def P60816442406366779.Spec : Prop :=
  ∀ n, P60816442406366779.a n = A076178 n

end A076178

/-! ## A076178.P206904098553097890

`∑[a(floor(n/2))-(-1)^n+1]` with `a(0)=0, a(1)=0`
-/

namespace A076178.P206904098553097890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076178.P206904098553097890

namespace A076178

/-- `∑[a(floor(n/2))-(-1)^n+1]` -/
def P206904098553097890.Spec : Prop :=
  ∀ n, P206904098553097890.a n = A076178 n

end A076178

/-! ## A076178.P2182892321253584912

`2*∑[a(n-1)+1-val(n, 2)]` with `a(0)=0, a(1)=0`
-/

namespace A076178.P2182892321253584912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076178.P2182892321253584912

namespace A076178

/-- `2*∑[a(n-1)+1-val(n, 2)]` -/
def P2182892321253584912.Spec : Prop :=
  ∀ n, P2182892321253584912.a n = A076178 n

end A076178

/-! ## A076178.P3055374848674732515

`2*(∑[a(floor(n/2))+n%2]-1)` with `a(0)=1, a(1)=0`
-/

namespace A076178.P3055374848674732515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A076178.P3055374848674732515

namespace A076178

/-- `2*(∑[a(floor(n/2))+n%2]-1)` -/
def P3055374848674732515.Spec : Prop :=
  ∀ n, P3055374848674732515.a n = A076178 n

end A076178

/-! ## A076178.P8577273088877473752

`∑[a(floor(n/2))-xor(1, n)+n+1]` with `a(0)=0, a(1)=0`
-/

namespace A076178.P8577273088877473752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (Nat.xor 1 n : ℤ) + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076178.P8577273088877473752

namespace A076178

/-- `∑[a(floor(n/2))-xor(1, n)+n+1]` -/
def P8577273088877473752.Spec : Prop :=
  ∀ n, P8577273088877473752.a n = A076178 n

end A076178

/-! ## A076178.P17633218794479373467

`2*(A000788(n)-n)`
-/

namespace A076178.P17633218794479373467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000788 n - (n : ℤ))

end

end A076178.P17633218794479373467

namespace A076178

/-- `2*(A000788(n)-n)` -/
def P17633218794479373467.Spec : Prop :=
  ∀ n, P17633218794479373467.a n = A076178 n

end A076178

/-! ## A076178.P11072955665635925429

`A067699(n+1)-4*n`
-/

namespace A076178.P11072955665635925429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067699 (n + 1) - (4 * n : ℤ)

end

end A076178.P11072955665635925429

namespace A076178

/-- `A067699(n+1)-4*n` -/
def P11072955665635925429.Spec : Prop :=
  ∀ n, P11072955665635925429.a n = A076178 n

end A076178

/-! ## A076178.P5724547722296056026

`A220001(n+1)-A294456(n+1)`
-/

namespace A076178.P5724547722296056026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220001 (n + 1) - A294456 (n + 1)

end

end A076178.P5724547722296056026

namespace A076178

/-- `A220001(n+1)-A294456(n+1)` -/
def P5724547722296056026.Spec : Prop :=
  ∀ n, P5724547722296056026.a n = A076178 n

end A076178

/-! ## A076178.P3772774046638620343

`A078903(Δ[n²])-n`
-/

namespace A076178.P3772774046638620343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A076178.P3772774046638620343

namespace A076178

/-- `A078903(Δ[n²])-n` -/
def P3772774046638620343.Spec : Prop :=
  ∀ n, P3772774046638620343.a n = A076178 n

end A076178

/-! ## A076178.P4419372580818173336

`A005843(A000788(n)-n)`
-/

namespace A076178.P4419372580818173336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000788 n - (n : ℤ)).toNat

end

end A076178.P4419372580818173336

namespace A076178

/-- `A005843(A000788(n)-n)` -/
def P4419372580818173336.Spec : Prop :=
  ∀ n, P4419372580818173336.a n = A076178 n

end A076178

/-! ## A076178.P1511256898676238533

`A005843(n²-A122247(n))`
-/

namespace A076178.P1511256898676238533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n ^ 2 : ℤ) - A122247 n).toNat

end

end A076178.P1511256898676238533

namespace A076178

/-- `A005843(n²-A122247(n))` -/
def P1511256898676238533.Spec : Prop :=
  ∀ n, P1511256898676238533.a n = A076178 n

end A076178

/-!
# A076179: 2n-1 primes followed by 2n composite numbers.

The programs for A076179, the canonical program `A076179.P2951851553065995208` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076179 has offset 1).

The definition of A076179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076179.P2951851553065995208

`A067747(A074147(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076179

/-- `A067747(A074147(n+1))` -/
def P2951851553065995208.Spec : Prop :=
  ∀ n, P2951851553065995208.a n = A076179 (n + 1)

theorem P2951851553065995208.correct : P2951851553065995208.Spec := by
  intro n
  simp only [A076179, Nat.add_sub_cancel]

end A076179

/-! ## A076179.P7409107785548499112

`A067747(A116941(n)+1)`
-/

namespace A076179.P7409107785548499112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A116941 n + 1).toNat

end

end A076179.P7409107785548499112

namespace A076179

/-- `A067747(A116941(n)+1)` -/
def P7409107785548499112.Spec : Prop :=
  ∀ n, P7409107785548499112.a n = A076179 (n + 1)

end A076179

/-! ## A076179.P556486570730902841

`A073846(A116941(n)+2)`
-/

namespace A076179.P556486570730902841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A116941 n + 2).toNat

end

end A076179.P556486570730902841

namespace A076179

/-- `A073846(A116941(n)+2)` -/
def P556486570730902841.Spec : Prop :=
  ∀ n, P556486570730902841.a n = A076179 (n + 1)

end A076179

/-! ## A076179.P6555448526569752174

`A073846(A074147(n+1)+1)`
-/

namespace A076179.P6555448526569752174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A074147 (n + 1) + 1).toNat

end

end A076179.P6555448526569752174

namespace A076179

/-- `A073846(A074147(n+1)+1)` -/
def P6555448526569752174.Spec : Prop :=
  ∀ n, P6555448526569752174.a n = A076179 (n + 1)

end A076179

/-! ## A076179.P14953014782930562256

`A236675(A083197(n+1))`
-/

namespace A076179.P14953014782930562256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236675 (A083197 (n + 1)).toNat

end

end A076179.P14953014782930562256

namespace A076179

/-- `A236675(A083197(n+1))` -/
def P14953014782930562256.Spec : Prop :=
  ∀ n, P14953014782930562256.a n = A076179 (n + 1)

end A076179

/-!
# A076181: a(n) = (n^2)!/(n!)^(n+1)/(2n-1).

The programs for A076181, there is no canonical definition to state claims against.
-/

/-! ## A076181.P11299537098417450527

`A057599(n+1)/(2*n+1)`
-/

namespace A076181.P11299537098417450527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057599 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A076181.P11299537098417450527

/-!
# A076182: a(n) = A006666(n) mod 2.

The programs for A076182, there is no canonical definition to state claims against.
-/

/-! ## A076182.P7095715077780295817

`A006513(n+1)-1`
-/

namespace A076182.P7095715077780295817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006513 (n + 1) - 1

end

end A076182.P7095715077780295817

/-! ## A076182.P6594738701378137829

`log2(A006513(n+1))`
-/

namespace A076182.P6594738701378137829
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006513 (n + 1) : ℝ)

end

end A076182.P6594738701378137829

/-! ## A076182.P17697137422201165672

`A006666(n+1)%2`
-/

namespace A076182.P17697137422201165672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006666 (n + 1)) 2

end

end A076182.P17697137422201165672

/-! ## A076182.P14119056094546022517

`(A064433(n+2)-1)%2`
-/

namespace A076182.P14119056094546022517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064433 (n + 2) - 1) 2

end

end A076182.P14119056094546022517

/-! ## A076182.P3623775098594180898

`A000035(A006666(n+1))`
-/

namespace A076182.P3623775098594180898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006666 (n + 1)).toNat

end

end A076182.P3623775098594180898

/-! ## A076182.P18040965146256216644

`A059841(A064433(n+2))`
-/

namespace A076182.P18040965146256216644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A064433 (n + 2)).toNat

end

end A076182.P18040965146256216644

/-! ## A076182.P18207549435072369416

`A000328(n)%A006513(n+1)`
-/

namespace A076182.P18207549435072369416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A006513 (n + 1))

end

end A076182.P18207549435072369416

/-! ## A076182.P5106324466240683864

`A000466(n)%A006513(n+1)`
-/

namespace A076182.P5106324466240683864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A006513 (n + 1))

end

end A076182.P5106324466240683864

/-! ## A076182.P11101271967389503120

`A000605(n)%A006513(n+1)`
-/

namespace A076182.P11101271967389503120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A006513 (n + 1))

end

end A076182.P11101271967389503120

/-! ## A076182.P12239923659737345795

`A001148(n)%A006513(n+1)`
-/

namespace A076182.P12239923659737345795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A006513 (n + 1))

end

end A076182.P12239923659737345795

/-! ## A076182.P449185679963372339

`A001218(n)%A006513(n+1)`
-/

namespace A076182.P449185679963372339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A006513 (n + 1))

end

end A076182.P449185679963372339

/-! ## A076182.P5872212805281987863

`A001513(n)%A006513(n+1)`
-/

namespace A076182.P5872212805281987863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A006513 (n + 1))

end

end A076182.P5872212805281987863

/-! ## A076182.P4381868761704245594

`A001520(n)%A006513(n+1)`
-/

namespace A076182.P4381868761704245594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A006513 (n + 1))

end

end A076182.P4381868761704245594

/-! ## A076182.P13159276926052053084

`A001533(n)%A006513(n+1)`
-/

namespace A076182.P13159276926052053084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A006513 (n + 1))

end

end A076182.P13159276926052053084

/-! ## A076182.P15787649713315553028

`A001535(n)%A006513(n+1)`
-/

namespace A076182.P15787649713315553028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A006513 (n + 1))

end

end A076182.P15787649713315553028

/-! ## A076182.P14242864273402176327

`A001538(n)%A006513(n+1)`
-/

namespace A076182.P14242864273402176327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A006513 (n + 1))

end

end A076182.P14242864273402176327

/-! ## A076182.P2587313510986519175

`A008379(n)%A006513(n+1)`
-/

namespace A076182.P2587313510986519175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A006513 (n + 1))

end

end A076182.P2587313510986519175

/-! ## A076182.P7372731538939769212

`A016760(n)%A006513(n+1)`
-/

namespace A076182.P7372731538939769212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A006513 (n + 1))

end

end A076182.P7372731538939769212

/-! ## A076182.P11080565525894544632

`A016761(n)%A006513(n+1)`
-/

namespace A076182.P11080565525894544632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016761 n) (A006513 (n + 1))

end

end A076182.P11080565525894544632

/-! ## A076182.P13662727556105601069

`A016819(n)%A006513(n+1)`
-/

namespace A076182.P13662727556105601069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A006513 (n + 1))

end

end A076182.P13662727556105601069

/-!
# A076184: Graph code numbers of simple graphs in numerical order.

The programs for A076184, there is no canonical definition to state claims against.
-/

/-! ## A076184.P8502146217642834480

`record[A382757(A319849(n+1)+1)]`
-/

namespace A076184.P8502146217642834480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382757 (A319849 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076184.P8502146217642834480

/-! ## A076184.P5793259944828407320

`record[A382757(A319849(n+1))]`
-/

namespace A076184.P5793259944828407320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382757 (A319849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076184.P5793259944828407320

/-! ## A076184.P17123598982974974422

`record[A382281(n)]`
-/

namespace A076184.P17123598982974974422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076184.P17123598982974974422

/-! ## A076184.P13674173085373146064

`record[A382755(n)]`
-/

namespace A076184.P13674173085373146064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076184.P13674173085373146064

/-! ## A076184.P5175252684790061827

`eq[n, A382281(A004183(n))]`
-/

namespace A076184.P5175252684790061827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382281 (A004183 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076184.P5175252684790061827

/-!
# A076185: Numbers n such that n!! + 2 is prime.

The programs for A076185, there is no canonical definition to state claims against.
-/

/-! ## A076185.P6762749455323145640

`eq[A040001(n), A212321(A008619(n))]`
-/

namespace A076185.P6762749455323145640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212321 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076185.P6762749455323145640

/-! ## A076185.P5037749565064895021

`eq[A040001(n), A212321(A065033(n))]`
-/

namespace A076185.P5037749565064895021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212321 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076185.P5037749565064895021

/-! ## A076185.P3998765955302105361

`record[A026741(n)/A212321(A065033(n))]`
-/

namespace A076185.P3998765955302105361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 n : ℚ) / (A212321 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076185.P3998765955302105361

/-! ## A076185.P2852788461854378971

`eq[A040001(n), A212321(A032742(n+1))]`
-/

namespace A076185.P2852788461854378971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212321 (A032742 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076185.P2852788461854378971

/-! ## A076185.P2673231610093747838

`a(n!!+2)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=21, a(7)=23, a(8)=27, a(9)=57`
-/

namespace A076185.P2673231610093747838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5, 7, 9, 21, 23, 27, 57] fun n a =>
  a (Nat.factorial (Nat.factorial n) + 2)

end

end A076185.P2673231610093747838

/-!
# A076186: Numbers n such that n!! + 2^2 is prime.

The programs for A076186, there is no canonical definition to state claims against.
-/

/-! ## A076186.P6074864781806943683

`lt[2*n*A351464(n+1)²/5, 3]`
-/

namespace A076186.P6074864781806943683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((n : ℤ) * A351464 (n + 1) ^ 2 : ℚ) / 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A076186.P6074864781806943683

/-! ## A076186.P8540618445228444169

`lt[log(A342551(n+1)), ∏{e}[n+1, #+1]]`
-/

namespace A076186.P8540618445228444169
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A342551 (n + 1) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A076186.P8540618445228444169

/-! ## A076186.P9884063243495102986

`eq[A014460(n), A351464(n+1)]`
-/

namespace A076186.P9884063243495102986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014460 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076186.P9884063243495102986

/-! ## A076186.P4343701328314887925

`eq[A014658(n), A351464(n+1)]`
-/

namespace A076186.P4343701328314887925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014658 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076186.P4343701328314887925

/-! ## A076186.P16296274754555485429

`eq[A014680(n), A351464(n+1)]`
-/

namespace A076186.P16296274754555485429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014680 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351464 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076186.P16296274754555485429

/-!
# A076188: Numbers k such that k!! + 2^3 is prime.

The programs for A076188, there is no canonical definition to state claims against.
-/

/-! ## A076188.P4717345776361077631

`A307001(lt[A307025(n+1), A000030(n)])`
-/

namespace A076188.P4717345776361077631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307001 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076188.P4717345776361077631

/-! ## A076188.P14016974428589960064

`A307001(lt[A307025(n+1), A007953(n)])`
-/

namespace A076188.P14016974428589960064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307001 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076188.P14016974428589960064

/-! ## A076188.P7426624574651277482

`A307001(lt[A307025(n+1), A010888(n)])`
-/

namespace A076188.P7426624574651277482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307001 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076188.P7426624574651277482

/-! ## A076188.P14431200626278233842

`A307001(lt[A307025(n+1), A214587(n)])`
-/

namespace A076188.P14431200626278233842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307001 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076188.P14431200626278233842

/-! ## A076188.P16582275785186868981

`A307001(lt[A307025(n+1), A306997(n+3)])`
-/

namespace A076188.P16582275785186868981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306997 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307001 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076188.P16582275785186868981

/-!
# A076189: Numbers k such that k!! + 2^4 is prime.

The programs for A076189, there is no canonical definition to state claims against.
-/

/-! ## A076189.P9566567328325032872

`∑[A345936(A011772(3^n))]`
-/

namespace A076189.P9566567328325032872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345936 (A011772 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076189.P9566567328325032872

/-! ## A076189.P10649926829788209187

`record[A265509(n)%A362784(n+1)]`
-/

namespace A076189.P10649926829788209187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265509 n) (A362784 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076189.P10649926829788209187

/-! ## A076189.P11780543287903682262

`record[A026741(A125872(n+1)%A141310(n))]`
-/

namespace A076189.P11780543287903682262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A125872 (n + 1)) (A141310 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076189.P11780543287903682262

/-! ## A076189.P12753720044048046200

`A291811(∪[A053686(n+1), A353117(n+1)])`
-/

namespace A076189.P12753720044048046200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353117 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A076189.P12753720044048046200

/-! ## A076189.P5043862656245457647

`eq[A068796(A005100(3*n+1)), A331254(2*(n+2))]`
-/

namespace A076189.P5043862656245457647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068796 (A005100 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331254 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076189.P5043862656245457647

/-!
# A076190: Numbers n such that n!! + 2^5 is prime.

The programs for A076190, there is no canonical definition to state claims against.
-/

/-! ## A076190.P914670095420429501

`eq[A009531(n), A009531(A129154(n))]`
-/

namespace A076190.P914670095420429501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A129154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076190.P914670095420429501

/-! ## A076190.P17658994002403862618

`eq[A110514(n), A110514(A129154(n))]`
-/

namespace A076190.P17658994002403862618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A129154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076190.P17658994002403862618

/-!
# A076191: First differences of A001222.

The programs for A076191, the canonical program `A076191.P7568475525091306253` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076191 has offset 1).

The definition of A076191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076191.P7568475525091306253

`∑{e}[n+2, #]-∑{e}[n+1, #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076191

/-- `∑{e}[n+2, #]-∑{e}[n+1, #]` -/
def P7568475525091306253.Spec : Prop :=
  ∀ n, P7568475525091306253.a n = A076191 (n + 1)

theorem P7568475525091306253.correct : P7568475525091306253.Spec := by
  intro n
  simp only [A076191, Nat.add_sub_cancel]

end A076191

/-! ## A076191.P7775023693871019178

`Δ[A001222(n+1)]`
-/

namespace A076191.P7775023693871019178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076191.P7775023693871019178

namespace A076191

/-- `Δ[A001222(n+1)]` -/
def P7775023693871019178.Spec : Prop :=
  ∀ n, P7775023693871019178.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P16616015422579875807

`Δ[log2(A061142(n+1))]`
-/

namespace A076191.P16616015422579875807
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076191.P16616015422579875807

namespace A076191

/-- `Δ[log2(A061142(n+1))]` -/
def P16616015422579875807.Spec : Prop :=
  ∀ n, P16616015422579875807.a n = (A076191 (n + 1) : ℝ)

end A076191

/-! ## A076191.P8380278688068989939

`Δ[val(A329600(n+1), 2)]`
-/

namespace A076191.P8380278688068989939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329600 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076191.P8380278688068989939

namespace A076191

/-- `Δ[val(A329600(n+1), 2)]` -/
def P8380278688068989939.Spec : Prop :=
  ∀ n, P8380278688068989939.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P4363224974415393302

`A001222(n+2)-∑{e}[n+1, #]`
-/

namespace A076191.P4363224974415393302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A076191.P4363224974415393302

namespace A076191

/-- `A001222(n+2)-∑{e}[n+1, #]` -/
def P4363224974415393302.Spec : Prop :=
  ∀ n, P4363224974415393302.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P2154192063373021697

`Δ[ϕ*A001222(2*n-(n-1))]/ϕ`
-/

namespace A076191.P2154192063373021697
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (A001222 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / Real.goldenRatio

end

end A076191.P2154192063373021697

namespace A076191

/-- `Δ[ϕ*A001222(2*n-(n-1))]/ϕ` -/
def P2154192063373021697.Spec : Prop :=
  ∀ n, P2154192063373021697.a n = (A076191 (n + 1) : ℝ)

end A076191

/-! ## A076191.P4384191800846509653

`Δ[A022559(n+1)-A022559(n)]`
-/

namespace A076191.P4384191800846509653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) - A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076191.P4384191800846509653

namespace A076191

/-- `Δ[A022559(n+1)-A022559(n)]` -/
def P4384191800846509653.Spec : Prop :=
  ∀ n, P4384191800846509653.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P2183421960813254586

`A023816(n+1)-A023817(n+1)`
-/

namespace A076191.P2183421960813254586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 (n + 1) - A023817 (n + 1)

end

end A076191.P2183421960813254586

namespace A076191

/-- `A023816(n+1)-A023817(n+1)` -/
def P2183421960813254586.Spec : Prop :=
  ∀ n, P2183421960813254586.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P10425640415995576404

`A023978(n+1)-A023991(n+1)`
-/

namespace A076191.P10425640415995576404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (n + 1) - A023991 (n + 1)

end

end A076191.P10425640415995576404

namespace A076191

/-- `A023978(n+1)-A023991(n+1)` -/
def P10425640415995576404.Spec : Prop :=
  ∀ n, P10425640415995576404.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P10842715607879630508

`A001222(n+2)-A001222(n+1)`
-/

namespace A076191.P10842715607879630508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2) - A001222 (n + 1)

end

end A076191.P10842715607879630508

namespace A076191

/-- `A001222(n+2)-A001222(n+1)` -/
def P10842715607879630508.Spec : Prop :=
  ∀ n, P10842715607879630508.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P7298741547786535091

`A317531(2*(n+1))-A317531(2*(n+2))`
-/

namespace A076191.P7298741547786535091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (2 * (n + 1)) - A317531 (2 * (n + 2))

end

end A076191.P7298741547786535091

namespace A076191

/-- `A317531(2*(n+1))-A317531(2*(n+2))` -/
def P7298741547786535091.Spec : Prop :=
  ∀ n, P7298741547786535091.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P9972650669665439959

`A023834(n+1)-(A023986(n+1)+A023817(n+1))`
-/

namespace A076191.P9972650669665439959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023834 (n + 1) - (A023986 (n + 1) + A023817 (n + 1))

end

end A076191.P9972650669665439959

namespace A076191

/-- `A023834(n+1)-(A023986(n+1)+A023817(n+1))` -/
def P9972650669665439959.Spec : Prop :=
  ∀ n, P9972650669665439959.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P16923369152608946072

`A023981(n+1)-(A023991(n+1)+A023982(n+1))`
-/

namespace A076191.P16923369152608946072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023981 (n + 1) - (A023991 (n + 1) + A023982 (n + 1))

end

end A076191.P16923369152608946072

namespace A076191

/-- `A023981(n+1)-(A023991(n+1)+A023982(n+1))` -/
def P16923369152608946072.Spec : Prop :=
  ∀ n, P16923369152608946072.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P13738098675386825350

`A023982(n+1)-(A023991(n+1)+A023987(n+1))`
-/

namespace A076191.P13738098675386825350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023982 (n + 1) - (A023991 (n + 1) + A023987 (n + 1))

end

end A076191.P13738098675386825350

namespace A076191

/-- `A023982(n+1)-(A023991(n+1)+A023987(n+1))` -/
def P13738098675386825350.Spec : Prop :=
  ∀ n, P13738098675386825350.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P3250132500604394938

`A036987(n+1)+A339893(n+1)-A339893(n+2)`
-/

namespace A076191.P3250132500604394938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (n + 1) + (A339893 (n + 1) - A339893 (n + 2))

end

end A076191.P3250132500604394938

namespace A076191

/-- `A036987(n+1)+A339893(n+1)-A339893(n+2)` -/
def P3250132500604394938.Spec : Prop :=
  ∀ n, P3250132500604394938.a n = A076191 (n + 1)

end A076191

/-! ## A076191.P8488270143385945610

`Δ[∑{e}[n+1, #]]`
-/

namespace A076191.P8488270143385945610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076191.P8488270143385945610

namespace A076191

/-- `Δ[∑{e}[n+1, #]]` -/
def P8488270143385945610.Spec : Prop :=
  ∀ n, P8488270143385945610.a n = A076191 (n + 1)

theorem P8488270143385945610.correct : P8488270143385945610.Spec := by
  intro n
  simp only [A076191, Nat.add_sub_cancel, A076191.P8488270143385945610.f2, A076191.P8488270143385945610.f1, A076191.P8488270143385945610.a, A076191.P7568475525091306253.f1, A076191.P7568475525091306253.f2, A076191.P7568475525091306253.a, SequenceMachineLib.memo_apply]

end A076191

/-! ## A076191.P11191336497741035887

`Δ[log(∏{e}[n+1, exp(#)])]`
-/

namespace A076191.P11191336497741035887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f2 n), Real.exp (Nat.factorization (f2 n) p : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076191.P11191336497741035887

namespace A076191

/-- `Δ[log(∏{e}[n+1, exp(#)])]` -/
def P11191336497741035887.Spec : Prop :=
  ∀ n, P11191336497741035887.a n = (A076191 (n + 1) : ℝ)

end A076191

/-! ## A076191.P8201288449219742522

`log(ratio[exp(∑{e}[n+1, #])])`
-/

namespace A076191.P8201288449219742522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (f1 (n + 1) / f1 n)

end

end A076191.P8201288449219742522

namespace A076191

/-- `log(ratio[exp(∑{e}[n+1, #])])` -/
def P8201288449219742522.Spec : Prop :=
  ∀ n, P8201288449219742522.a n = (A076191 (n + 1) : ℝ)

end A076191

/-! ## A076191.P18076640981324384104

`log(ratio[∏{e}[n+1, exp(#)]])`
-/

namespace A076191.P18076640981324384104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Real.exp (Nat.factorization (f2 n) p : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (f1 (n + 1) / f1 n)

end

end A076191.P18076640981324384104

namespace A076191

/-- `log(ratio[∏{e}[n+1, exp(#)]])` -/
def P18076640981324384104.Spec : Prop :=
  ∀ n, P18076640981324384104.a n = (A076191 (n + 1) : ℝ)

end A076191

/-! ## A076191.P11325826563425063502

`Δ[∑{p}[n+1, val(n+1, #)]]`
-/

namespace A076191.P11325826563425063502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A076191.P11325826563425063502

namespace A076191

/-- `Δ[∑{p}[n+1, val(n+1, #)]]` -/
def P11325826563425063502.Spec : Prop :=
  ∀ n, P11325826563425063502.a n = A076191 (n + 1)

end A076191

/-!
# A076192: n == 1 mod 10 with property that n through n+9 contain no primes.

The programs for A076192, there is no canonical definition to state claims against.
-/

/-! ## A076192.P5167994837309049636

`A078492(n)+1`
-/

namespace A076192.P5167994837309049636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078492 n + 1

end

end A076192.P5167994837309049636

/-! ## A076192.P14502171578631802842

`10*A032352(n+1)+1`
-/

namespace A076192.P14502171578631802842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A032352 (n + 1) + 1

end

end A076192.P14502171578631802842

/-! ## A076192.P17333450066588522310

`A017281(A032352(n+1))`
-/

namespace A076192.P17333450066588522310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A032352 (n + 1)).toNat

end

end A076192.P17333450066588522310

/-! ## A076192.P12569207834416095506

`∩[A076150(n+1), A017281(n)]`
-/

namespace A076192.P12569207834416095506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076192.P12569207834416095506

/-! ## A076192.P10666376975885978685

`∩[A053178(n+1), A076150(n+1)]`
-/

namespace A076192.P10666376975885978685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076192.P10666376975885978685

/-! ## A076192.P10253022790566205152

`A192545(6*n+1)+1`
-/

namespace A076192.P10253022790566205152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192545 (6 * n + 1) + 1

end

end A076192.P10253022790566205152

/-! ## A076192.P16588821115935664771

`A004442(A078492(n))`
-/

namespace A076192.P16588821115935664771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A078492 n).toNat

end

end A076192.P16588821115935664771

/-!
# A076196: Numbers k such that k!! + 2^9 is prime.

The programs for A076196, there is no canonical definition to state claims against.
-/

/-! ## A076196.P2514435572690385026

`A349749(A280628(n)+n+1)`
-/

namespace A076196.P2514435572690385026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349749 (A280628 n + (n + 1 : ℤ)).toNat

end

end A076196.P2514435572690385026

/-! ## A076196.P10974881622905707198

`lt[A192163(A039650(n+5)), A084140(n+1)]`
-/

namespace A076196.P10974881622905707198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192163 (A039650 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084140 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A076196.P10974881622905707198

/-!
# A076197: Numbers k such that k!! + 2^10 is prime.

The programs for A076197, there is no canonical definition to state claims against.
-/

/-! ## A076197.P5214608979263792408

`A172471(A309594(n+1))-A172471(n)`
-/

namespace A076197.P5214608979263792408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A309594 (n + 1)).toNat - A172471 n

end

end A076197.P5214608979263792408

/-!
# A076198: a(n)=least s>0 such that n!!-s is prime.

The programs for A076198, there is no canonical definition to state claims against.
-/

/-! ## A076198.P13357049764041521748

`A006882(n+3)-A178607(n+3)`
-/

namespace A076198.P13357049764041521748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 3) - A178607 (n + 3)

end

end A076198.P13357049764041521748

/-! ## A076198.P16458522525472100448

`A216466(n+3)-A178607(n+3)`
-/

namespace A076198.P16458522525472100448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216466 (n + 3) - A178607 (n + 3)

end

end A076198.P16458522525472100448

/-! ## A076198.P17100114491615711218

`A106230(n+1)-A178607(n+3)%A106230(n+1)`
-/

namespace A076198.P17100114491615711218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (n + 1) - Int.tmod (A178607 (n + 3)) (A106230 (n + 1))

end

end A076198.P17100114491615711218

