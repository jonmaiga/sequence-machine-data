import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A037301: Numbers whose base-2 and base-3 expansions have the same digit sum.

The programs for A037301, the canonical program `A037301.P11869485949752062609` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037301 has offset 1).

The definition of A037301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037301.P11869485949752062609

`eq[0, A180017(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037301

/-- `eq[0, A180017(n)]` -/
def P11869485949752062609.Spec : Prop :=
  ∀ n, (P11869485949752062609.a n : ℤ) = A037301 (n + 1)

theorem P11869485949752062609.correct : P11869485949752062609.Spec := by
  intro n
  simp only [A037301, Nat.add_sub_cancel]

end A037301

/-! ## A037301.P3741477632964786413

`eq[A000120(n), A053735(n)]`
-/

namespace A037301.P3741477632964786413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P3741477632964786413

namespace A037301

/-- `eq[A000120(n), A053735(n)]` -/
def P3741477632964786413.Spec : Prop :=
  ∀ n, (P3741477632964786413.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P13420840234454257450

`eq[A092391(n), A230641(n)]`
-/

namespace A037301.P13420840234454257450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P13420840234454257450

namespace A037301

/-- `eq[A092391(n), A230641(n)]` -/
def P13420840234454257450.Spec : Prop :=
  ∀ n, (P13420840234454257450.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P17846038101678339323

`eq[A180018(n), A180019(n)]`
-/

namespace A037301.P17846038101678339323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P17846038101678339323

namespace A037301

/-- `eq[A180018(n), A180019(n)]` -/
def P17846038101678339323.Spec : Prop :=
  ∀ n, (P17846038101678339323.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P4522148337439713339

`eq[A093659(n), A269223(n)]`
-/

namespace A037301.P4522148337439713339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P4522148337439713339

namespace A037301

/-- `eq[A093659(n), A269223(n)]` -/
def P4522148337439713339.Spec : Prop :=
  ∀ n, (P4522148337439713339.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P7066225143098655879

`eq[2*A000120(n), A096288(n)]`
-/

namespace A037301.P7066225143098655879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P7066225143098655879

namespace A037301

/-- `eq[2*A000120(n), A096288(n)]` -/
def P7066225143098655879.Spec : Prop :=
  ∀ n, (P7066225143098655879.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P7530582535235219926

`eq[2*A053735(n), A096288(n)]`
-/

namespace A037301.P7530582535235219926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P7530582535235219926

namespace A037301

/-- `eq[2*A053735(n), A096288(n)]` -/
def P7530582535235219926.Spec : Prop :=
  ∀ n, (P7530582535235219926.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P17189520977963127564

`eq[A000120(n)+n, A230641(n)]`
-/

namespace A037301.P17189520977963127564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P17189520977963127564

namespace A037301

/-- `eq[A000120(n)+n, A230641(n)]` -/
def P17189520977963127564.Spec : Prop :=
  ∀ n, (P17189520977963127564.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P5190768485534414607

`eq[A000120(n)+1, A173523(n+1)]`
-/

namespace A037301.P5190768485534414607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P5190768485534414607

namespace A037301

/-- `eq[A000120(n)+1, A173523(n+1)]` -/
def P5190768485534414607.Spec : Prop :=
  ∀ n, (P5190768485534414607.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P4311039838294691055

`eq[A063787(n+1), A173523(n+1)]`
-/

namespace A037301.P4311039838294691055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P4311039838294691055

namespace A037301

/-- `eq[A063787(n+1), A173523(n+1)]` -/
def P4311039838294691055.Spec : Prop :=
  ∀ n, (P4311039838294691055.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P11533299384232803940

`eq[A005843(A053735(n)), A096288(n)]`
-/

namespace A037301.P11533299384232803940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053735 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P11533299384232803940

namespace A037301

/-- `eq[A005843(A053735(n)), A096288(n)]` -/
def P11533299384232803940.Spec : Prop :=
  ∀ n, (P11533299384232803940.a n : ℤ) = A037301 (n + 1)

end A037301

/-! ## A037301.P12754395327561389787

`eq[A000120(n), A000120(A006288(n))]`
-/

namespace A037301.P12754395327561389787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006288 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037301.P12754395327561389787

namespace A037301

/-- `eq[A000120(n), A000120(A006288(n))]` -/
def P12754395327561389787.Spec : Prop :=
  ∀ n, (P12754395327561389787.a n : ℤ) = A037301 (n + 1)

end A037301

/-!
# A037303: Numbers whose base-2 and base-5 expansions have the same digit sum.

The programs for A037303, the canonical program `A037303.P685693098012570098` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037303 has offset 1).

The definition of A037303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037303.P685693098012570098

`eq[A000120(n+1), A053824(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037303

/-- `eq[A000120(n+1), A053824(n+1)]+1` -/
def P685693098012570098.Spec : Prop :=
  ∀ n, (P685693098012570098.a n : ℤ) = A037303 (n + 1)

theorem P685693098012570098.correct : P685693098012570098.Spec := by
  intro n
  simp only [A037303, Nat.add_sub_cancel]

end A037303

/-! ## A037303.P13396271655164495249

`eq[A092391(n+1), A230865(n+1)]+1`
-/

namespace A037303.P13396271655164495249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037303.P13396271655164495249

namespace A037303

/-- `eq[A092391(n+1), A230865(n+1)]+1` -/
def P13396271655164495249.Spec : Prop :=
  ∀ n, (P13396271655164495249.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P2518950561971625824

`eq[A000120(n), A053824(A028310(n))]`
-/

namespace A037303.P2518950561971625824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P2518950561971625824

namespace A037303

/-- `eq[A000120(n), A053824(A028310(n))]` -/
def P2518950561971625824.Spec : Prop :=
  ∀ n, (P2518950561971625824.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P75218509603351971

`eq[A053824(n), A290107(A001316(n))]`
-/

namespace A037303.P75218509603351971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P75218509603351971

namespace A037303

/-- `eq[A053824(n), A290107(A001316(n))]` -/
def P75218509603351971.Spec : Prop :=
  ∀ n, (P75218509603351971.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P182028061253115775

`eq[A092391(A028310(n)), A230865(n)]`
-/

namespace A037303.P182028061253115775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P182028061253115775

namespace A037303

/-- `eq[A092391(A028310(n)), A230865(n)]` -/
def P182028061253115775.Spec : Prop :=
  ∀ n, (P182028061253115775.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P15453807062033495315

`eq[A000120(A000007(n)+n), A053824(n)]`
-/

namespace A037303.P15453807062033495315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P15453807062033495315

namespace A037303

/-- `eq[A000120(A000007(n)+n), A053824(n)]` -/
def P15453807062033495315.Spec : Prop :=
  ∀ n, (P15453807062033495315.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P12045735292519969895

`eq[A000120(n)-A000007(n), A053824(n)]`
-/

namespace A037303.P12045735292519969895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P12045735292519969895

namespace A037303

/-- `eq[A000120(n)-A000007(n), A053824(n)]` -/
def P12045735292519969895.Spec : Prop :=
  ∀ n, (P12045735292519969895.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P12287417297767461177

`eq[A000120(n), A053824(A004277(n)-n)]`
-/

namespace A037303.P12287417297767461177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P12287417297767461177

namespace A037303

/-- `eq[A000120(n), A053824(A004277(n)-n)]` -/
def P12287417297767461177.Spec : Prop :=
  ∀ n, (P12287417297767461177.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P1024981437345056276

`eq[A000120(A254667(n+1)-1), A053824(n)]`
-/

namespace A037303.P1024981437345056276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A254667 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P1024981437345056276

namespace A037303

/-- `eq[A000120(A254667(n+1)-1), A053824(n)]` -/
def P1024981437345056276.Spec : Prop :=
  ∀ n, (P1024981437345056276.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P18148814327011258776

`eq[A173525(n+1)+A000038(n), A000120(n)+1]`
-/

namespace A037303.P18148814327011258776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1) + A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P18148814327011258776

namespace A037303

/-- `eq[A173525(n+1)+A000038(n), A000120(n)+1]` -/
def P18148814327011258776.Spec : Prop :=
  ∀ n, (P18148814327011258776.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P2234132469045465688

`eq[A000120(A004277(n)), A053824(n)]`
-/

namespace A037303.P2234132469045465688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P2234132469045465688

namespace A037303

/-- `eq[A000120(A004277(n)), A053824(n)]` -/
def P2234132469045465688.Spec : Prop :=
  ∀ n, (P2234132469045465688.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P13776061753647915198

`eq[A000120(A065033(2*n)), A053824(n)]`
-/

namespace A037303.P13776061753647915198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P13776061753647915198

namespace A037303

/-- `eq[A000120(A065033(2*n)), A053824(n)]` -/
def P13776061753647915198.Spec : Prop :=
  ∀ n, (P13776061753647915198.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P17561308179256944790

`eq[A000120(A004277(n))+1, A173525(n+1)]`
-/

namespace A037303.P17561308179256944790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004277 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P17561308179256944790

namespace A037303

/-- `eq[A000120(A004277(n))+1, A173525(n+1)]` -/
def P17561308179256944790.Spec : Prop :=
  ∀ n, (P17561308179256944790.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P2514203548886271069

`eq[A000120(A008574(n)), A053824(n)]`
-/

namespace A037303.P2514203548886271069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P2514203548886271069

namespace A037303

/-- `eq[A000120(A008574(n)), A053824(n)]` -/
def P2514203548886271069.Spec : Prop :=
  ∀ n, (P2514203548886271069.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P9049974652342702467

`eq[A000120(A008706(n)-n), A053824(n)]`
-/

namespace A037303.P9049974652342702467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008706 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P9049974652342702467

namespace A037303

/-- `eq[A000120(A008706(n)-n), A053824(n)]` -/
def P9049974652342702467.Spec : Prop :=
  ∀ n, (P9049974652342702467.a n : ℤ) = A037303 (n + 1)

end A037303

/-! ## A037303.P3254960653381257642

`eq[A000120(n), A053824(A008706(n))]`
-/

namespace A037303.P3254960653381257642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037303.P3254960653381257642

namespace A037303

/-- `eq[A000120(n), A053824(A008706(n))]` -/
def P3254960653381257642.Spec : Prop :=
  ∀ n, (P3254960653381257642.a n : ℤ) = A037303 (n + 1)

end A037303

/-!
# A037304: Numbers whose base-2 and base-6 expansions have the same digit sum.

The programs for A037304, the canonical program `A037304.P5664488790380280954` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037304 has offset 1).

The definition of A037304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037304.P5664488790380280954

`eq[A000120(n+1), A053827(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037304

/-- `eq[A000120(n+1), A053827(n+1)]+1` -/
def P5664488790380280954.Spec : Prop :=
  ∀ n, (P5664488790380280954.a n : ℤ) = A037304 (n + 1)

theorem P5664488790380280954.correct : P5664488790380280954.Spec := by
  intro n
  simp only [A037304, Nat.add_sub_cancel]

end A037304

/-! ## A037304.P3821019109823805240

`eq[A000120(n), A053827(A028310(n))]`
-/

namespace A037304.P3821019109823805240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P3821019109823805240

namespace A037304

/-- `eq[A000120(n), A053827(A028310(n))]` -/
def P3821019109823805240.Spec : Prop :=
  ∀ n, (P3821019109823805240.a n : ℤ) = A037304 (n + 1)

end A037304

/-! ## A037304.P15218058013317313510

`eq[A033273(A001316(n)), A053827(n)]`
-/

namespace A037304.P15218058013317313510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P15218058013317313510

namespace A037304

/-- `eq[A033273(A001316(n)), A053827(n)]` -/
def P15218058013317313510.Spec : Prop :=
  ∀ n, (P15218058013317313510.a n : ℤ) = A037304 (n + 1)

end A037304

/-! ## A037304.P11634720341964701502

`eq[A000120(A000007(n)+n), A053827(n)]`
-/

namespace A037304.P11634720341964701502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P11634720341964701502

namespace A037304

/-- `eq[A000120(A000007(n)+n), A053827(n)]` -/
def P11634720341964701502.Spec : Prop :=
  ∀ n, (P11634720341964701502.a n : ℤ) = A037304 (n + 1)

end A037304

/-! ## A037304.P12899269490888555442

`eq[A000120(n)-A000007(n), A053827(n)]`
-/

namespace A037304.P12899269490888555442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P12899269490888555442

namespace A037304

/-- `eq[A000120(n)-A000007(n), A053827(n)]` -/
def P12899269490888555442.Spec : Prop :=
  ∀ n, (P12899269490888555442.a n : ℤ) = A037304 (n + 1)

end A037304

/-! ## A037304.P4194066794728550680

`eq[A000120(n), A053827(A004277(n)-n)]`
-/

namespace A037304.P4194066794728550680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P4194066794728550680

namespace A037304

/-- `eq[A000120(n), A053827(A004277(n)-n)]` -/
def P4194066794728550680.Spec : Prop :=
  ∀ n, (P4194066794728550680.a n : ℤ) = A037304 (n + 1)

end A037304

/-! ## A037304.P12984617858114426694

`eq[A000120(A004277(n)), A053827(n)]`
-/

namespace A037304.P12984617858114426694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P12984617858114426694

namespace A037304

/-- `eq[A000120(A004277(n)), A053827(n)]` -/
def P12984617858114426694.Spec : Prop :=
  ∀ n, (P12984617858114426694.a n : ℤ) = A037304 (n + 1)

end A037304

/-! ## A037304.P2609528307691772306

`eq[A000120(A008574(n)), A053827(n)]`
-/

namespace A037304.P2609528307691772306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P2609528307691772306

namespace A037304

/-- `eq[A000120(A008574(n)), A053827(n)]` -/
def P2609528307691772306.Spec : Prop :=
  ∀ n, (P2609528307691772306.a n : ℤ) = A037304 (n + 1)

end A037304

/-! ## A037304.P3520128197252189328

`eq[A000120(n), A053827(A008458(n))]`
-/

namespace A037304.P3520128197252189328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037304.P3520128197252189328

namespace A037304

/-- `eq[A000120(n), A053827(A008458(n))]` -/
def P3520128197252189328.Spec : Prop :=
  ∀ n, (P3520128197252189328.a n : ℤ) = A037304 (n + 1)

end A037304

/-!
# A037305: Numbers whose base-2 and base-7 expansions have the same digit sum.

The programs for A037305, the canonical program `A037305.P16443273878400568055` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037305 has offset 1).

The definition of A037305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037305.P16443273878400568055

`eq[A000120(n+1), A053828(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037305

/-- `eq[A000120(n+1), A053828(n+1)]+1` -/
def P16443273878400568055.Spec : Prop :=
  ∀ n, (P16443273878400568055.a n : ℤ) = A037305 (n + 1)

theorem P16443273878400568055.correct : P16443273878400568055.Spec := by
  intro n
  simp only [A037305, Nat.add_sub_cancel]

end A037305

/-! ## A037305.P17841542129794433483

`eq[A000120(n), A053828(A028310(n))]`
-/

namespace A037305.P17841542129794433483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037305.P17841542129794433483

namespace A037305

/-- `eq[A000120(n), A053828(A028310(n))]` -/
def P17841542129794433483.Spec : Prop :=
  ∀ n, (P17841542129794433483.a n : ℤ) = A037305 (n + 1)

end A037305

/-! ## A037305.P6185945864326437798

`eq[A000120(n), A053828(A004277(n)-n)]`
-/

namespace A037305.P6185945864326437798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037305.P6185945864326437798

namespace A037305

/-- `eq[A000120(n), A053828(A004277(n)-n)]` -/
def P6185945864326437798.Spec : Prop :=
  ∀ n, (P6185945864326437798.a n : ℤ) = A037305 (n + 1)

end A037305

/-! ## A037305.P10105259087883818752

`eq[A000120(A004277(n)), A053828(n)]`
-/

namespace A037305.P10105259087883818752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037305.P10105259087883818752

namespace A037305

/-- `eq[A000120(A004277(n)), A053828(n)]` -/
def P10105259087883818752.Spec : Prop :=
  ∀ n, (P10105259087883818752.a n : ℤ) = A037305 (n + 1)

end A037305

/-! ## A037305.P1729183847848067676

`eq[A000120(A008574(n)), A053828(n)]`
-/

namespace A037305.P1729183847848067676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037305.P1729183847848067676

namespace A037305

/-- `eq[A000120(A008574(n)), A053828(n)]` -/
def P1729183847848067676.Spec : Prop :=
  ∀ n, (P1729183847848067676.a n : ℤ) = A037305 (n + 1)

end A037305

/-! ## A037305.P16854906814180999058

`eq[A000120(n), A053828(A022144(n)-n)]`
-/

namespace A037305.P16854906814180999058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A022144 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037305.P16854906814180999058

namespace A037305

/-- `eq[A000120(n), A053828(A022144(n)-n)]` -/
def P16854906814180999058.Spec : Prop :=
  ∀ n, (P16854906814180999058.a n : ℤ) = A037305 (n + 1)

end A037305

/-! ## A037305.P16662423839378739950

`eq[A000120(A022144(n)), A053828(n)]`
-/

namespace A037305.P16662423839378739950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037305.P16662423839378739950

namespace A037305

/-- `eq[A000120(A022144(n)), A053828(n)]` -/
def P16662423839378739950.Spec : Prop :=
  ∀ n, (P16662423839378739950.a n : ℤ) = A037305 (n + 1)

end A037305

/-!
# A037306: Triangle T(n,k) read by rows: the number of compositions of n into k parts, modulo cyclic shifts.

The programs for A037306, there is no canonical definition to state claims against.
-/

/-! ## A037306.P2185640964527297447

`A047996(comp[∑[n]])`
-/

namespace A037306.P2185640964527297447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A037306.P2185640964527297447

/-! ## A037306.P14582635644153782205

`A035214(3*n+2)*A047996(A014132(n+1))`
-/

namespace A037306.P14582635644153782205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (3 * n + 2) * A047996 (A014132 (n + 1)).toNat

end

end A037306.P14582635644153782205

/-! ## A037306.P14813137682306012250

`A241926(A083920(n)+1)`
-/

namespace A037306.P14813137682306012250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (A083920 n + 1).toNat

end

end A037306.P14813137682306012250

/-! ## A037306.P2591210001180710517

`A241926(A122797(n+1))`
-/

namespace A037306.P2591210001180710517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (A122797 (n + 1)).toNat

end

end A037306.P2591210001180710517

/-! ## A037306.P7721756209736261366

`A241926(A271439(n)+1)`
-/

namespace A037306.P7721756209736261366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (A271439 n + 1).toNat

end

end A037306.P7721756209736261366

/-! ## A037306.P10144688969755770443

`A241926(2-A183110(n+1)+n)`
-/

namespace A037306.P10144688969755770443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (2 - A183110 (n + 1) + (n : ℤ)).toNat

end

end A037306.P10144688969755770443

/-! ## A037306.P9463822586555999095

`A000027(A047996(comp[C(n+1, 2)]))`
-/

namespace A037306.P9463822586555999095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A047996 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A037306.P9463822586555999095

/-! ## A037306.P15654220903471586229

`A047996(A014132(n+1))*A047996(∑[n])`
-/

namespace A037306.P15654220903471586229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A014132 (n + 1)).toNat * A047996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037306.P15654220903471586229

/-!
# A037307: Numbers whose base-2 and base-9 expansions have the same digit sum.

The programs for A037307, the canonical program `A037307.P14162008172469112737` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037307 has offset 1).

The definition of A037307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037307.P14162008172469112737

`eq[A053830(n), A054725(A001316(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A037307

/-- `eq[A053830(n), A054725(A001316(n))]` -/
def P14162008172469112737.Spec : Prop :=
  ∀ n, (P14162008172469112737.a n : ℤ) = A037307 (n + 1)

theorem P14162008172469112737.correct : P14162008172469112737.Spec := by
  intro n
  simp only [A037307, Nat.add_sub_cancel]

end A037307

/-! ## A037307.P14787394279370416020

`eq[A000120(C(n, n²)+n), A053830(n)]`
-/

namespace A037307.P14787394279370416020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose n (n ^ 2) + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P14787394279370416020

namespace A037307

/-- `eq[A000120(C(n, n²)+n), A053830(n)]` -/
def P14787394279370416020.Spec : Prop :=
  ∀ n, (P14787394279370416020.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P12032181480978621854

`eq[A000120(n+1), A053830(n+1)]+1`
-/

namespace A037307.P12032181480978621854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037307.P12032181480978621854

namespace A037307

/-- `eq[A000120(n+1), A053830(n+1)]+1` -/
def P12032181480978621854.Spec : Prop :=
  ∀ n, (P12032181480978621854.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P6564056812503568515

`eq[A000120(n), A053830(A028310(n))]`
-/

namespace A037307.P6564056812503568515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P6564056812503568515

namespace A037307

/-- `eq[A000120(n), A053830(A028310(n))]` -/
def P6564056812503568515.Spec : Prop :=
  ∀ n, (P6564056812503568515.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P14452830215835651184

`eq[A000120(A000038(n)+n), A053830(n)]`
-/

namespace A037307.P14452830215835651184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P14452830215835651184

namespace A037307

/-- `eq[A000120(A000038(n)+n), A053830(n)]` -/
def P14452830215835651184.Spec : Prop :=
  ∀ n, (P14452830215835651184.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P12661055145313084977

`eq[A000120(n)-A000038(n), A053830(n)]`
-/

namespace A037307.P12661055145313084977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P12661055145313084977

namespace A037307

/-- `eq[A000120(n)-A000038(n), A053830(n)]` -/
def P12661055145313084977.Spec : Prop :=
  ∀ n, (P12661055145313084977.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P1642787551112758207

`eq[A000120(n), A053830(A004277(n)-n)]`
-/

namespace A037307.P1642787551112758207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P1642787551112758207

namespace A037307

/-- `eq[A000120(n), A053830(A004277(n)-n)]` -/
def P1642787551112758207.Spec : Prop :=
  ∀ n, (P1642787551112758207.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P16506584479706162159

`eq[A000120(A004277(n)), A053830(n)]`
-/

namespace A037307.P16506584479706162159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P16506584479706162159

namespace A037307

/-- `eq[A000120(A004277(n)), A053830(n)]` -/
def P16506584479706162159.Spec : Prop :=
  ∀ n, (P16506584479706162159.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P8760853614179603162

`eq[A000120(A065033(2*n)), A053830(n)]`
-/

namespace A037307.P8760853614179603162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P8760853614179603162

namespace A037307

/-- `eq[A000120(A065033(2*n)), A053830(n)]` -/
def P8760853614179603162.Spec : Prop :=
  ∀ n, (P8760853614179603162.a n : ℤ) = A037307 (n + 1)

end A037307

/-! ## A037307.P12288271371111560858

`eq[A000120(A123108(2*n)), A053830(n)]`
-/

namespace A037307.P12288271371111560858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037307.P12288271371111560858

namespace A037307

/-- `eq[A000120(A123108(2*n)), A053830(n)]` -/
def P12288271371111560858.Spec : Prop :=
  ∀ n, (P12288271371111560858.a n : ℤ) = A037307 (n + 1)

end A037307

/-!
# A037308: Numbers whose base-2 and base-10 expansions have the same digit sum.

The programs for A037308, there is no canonical definition to state claims against.
-/

/-! ## A037308.P12467971346837447306

`eq[0, A180018(n)]`
-/

namespace A037308.P12467971346837447306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037308.P12467971346837447306

/-! ## A037308.P4924272427414114844

`eq[A000120(n), A007953(n)]`
-/

namespace A037308.P4924272427414114844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037308.P4924272427414114844

/-! ## A037308.P2283823116896933514

`eq[A062028(n), A092391(n)]`
-/

namespace A037308.P2283823116896933514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037308.P2283823116896933514

/-! ## A037308.P14442711150403425929

`eq[A057147(n), A245788(n)]`
-/

namespace A037308.P14442711150403425929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037308.P14442711150403425929

/-! ## A037308.P2002713834463648697

`eq[A001316(n), A329562(n)]`
-/

namespace A037308.P2002713834463648697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037308.P2002713834463648697

/-! ## A037308.P16418368412134973167

`eq[A000120(n)², A118881(n)]`
-/

namespace A037308.P16418368412134973167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037308.P16418368412134973167

/-! ## A037308.P2334151346674394337

`eq[log2(A001316(n)), A007953(n)]`
-/

namespace A037308.P2334151346674394337
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A037308.P2334151346674394337

/-! ## A037308.P443981611548899482

`eq[log2(A329562(n)), A000120(n)]`
-/

namespace A037308.P443981611548899482
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A037308.P443981611548899482

/-! ## A037308.P3129841349069959990

`eq[A000120(n)+n, A062028(n)]`
-/

namespace A037308.P3129841349069959990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037308.P3129841349069959990

/-! ## A037308.P17706071239177686576

`lt[dr(A108773(n)*A180018(n)), 1]`
-/

namespace A037308.P17706071239177686576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A108773 n * A180018 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037308.P17706071239177686576

/-!
# A037309: Numbers whose base-3 and base-4 expansions have the same digit sum.

The programs for A037309, the canonical program `A037309.P12344798039398078842` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037309 has offset 1).

The definition of A037309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1082 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037309.P12344798039398078842

`eq[A053735(n+1), A053737(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037309

/-- `eq[A053735(n+1), A053737(n+1)]+1` -/
def P12344798039398078842.Spec : Prop :=
  ∀ n, (P12344798039398078842.a n : ℤ) = A037309 (n + 1)

theorem P12344798039398078842.correct : P12344798039398078842.Spec := by
  intro n
  simp only [A037309, Nat.add_sub_cancel]

end A037309

/-! ## A037309.P1169596796401801371

`eq[A139352(n+1), A180017(n+1)]+1`
-/

namespace A037309.P1169596796401801371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037309.P1169596796401801371

namespace A037309

/-- `eq[A139352(n+1), A180017(n+1)]+1` -/
def P1169596796401801371.Spec : Prop :=
  ∀ n, (P1169596796401801371.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P13529467865693659682

`eq[A053735(A028310(n)), A053737(n)]`
-/

namespace A037309.P13529467865693659682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P13529467865693659682

namespace A037309

/-- `eq[A053735(A028310(n)), A053737(n)]` -/
def P13529467865693659682.Spec : Prop :=
  ∀ n, (P13529467865693659682.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P8942471653584056003

`eq[A053735(A000038(n)+n), A053737(n)]`
-/

namespace A037309.P8942471653584056003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P8942471653584056003

namespace A037309

/-- `eq[A053735(A000038(n)+n), A053737(n)]` -/
def P8942471653584056003.Spec : Prop :=
  ∀ n, (P8942471653584056003.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P10377605663638189251

`eq[A139352(A000038(n)+n), A180017(n)]`
-/

namespace A037309.P10377605663638189251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P10377605663638189251

namespace A037309

/-- `eq[A139352(A000038(n)+n), A180017(n)]` -/
def P10377605663638189251.Spec : Prop :=
  ∀ n, (P10377605663638189251.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P5868715637261624852

`eq[n, A344853(n)+A053737(A028310(n))]`
-/

namespace A037309.P5868715637261624852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n + A053737 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037309.P5868715637261624852

namespace A037309

/-- `eq[n, A344853(n)+A053737(A028310(n))]` -/
def P5868715637261624852.Spec : Prop :=
  ∀ n, (P5868715637261624852.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P16094804783150182588

`eq[A053735(n)-A000038(n), A053737(n)]`
-/

namespace A037309.P16094804783150182588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P16094804783150182588

namespace A037309

/-- `eq[A053735(n)-A000038(n), A053737(n)]` -/
def P16094804783150182588.Spec : Prop :=
  ∀ n, (P16094804783150182588.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P14244464122336290873

`eq[A139352(n)-A000038(n), A180017(n)]`
-/

namespace A037309.P14244464122336290873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P14244464122336290873

namespace A037309

/-- `eq[A139352(n)-A000038(n), A180017(n)]` -/
def P14244464122336290873.Spec : Prop :=
  ∀ n, (P14244464122336290873.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P16257286648241762888

`eq[n-A344853(n), A028310(A053737(n))]`
-/

namespace A037309.P16257286648241762888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053737 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P16257286648241762888

namespace A037309

/-- `eq[n-A344853(n), A028310(A053737(n))]` -/
def P16257286648241762888.Spec : Prop :=
  ∀ n, (P16257286648241762888.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P14101403294139793841

`eq[A053735(A008486(n)), A053737(n)]`
-/

namespace A037309.P14101403294139793841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P14101403294139793841

namespace A037309

/-- `eq[A053735(A008486(n)), A053737(n)]` -/
def P14101403294139793841.Spec : Prop :=
  ∀ n, (P14101403294139793841.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P5349239914777989698

`eq[A053735(A008574(n)-n), A053737(n)]`
-/

namespace A037309.P5349239914777989698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008574 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P5349239914777989698

namespace A037309

/-- `eq[A053735(A008574(n)-n), A053737(n)]` -/
def P5349239914777989698.Spec : Prop :=
  ∀ n, (P5349239914777989698.a n : ℤ) = A037309 (n + 1)

end A037309

/-! ## A037309.P17250561255626309440

`eq[A053735(n), A053737(A008574(n))]`
-/

namespace A037309.P17250561255626309440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037309.P17250561255626309440

namespace A037309

/-- `eq[A053735(n), A053737(A008574(n))]` -/
def P17250561255626309440.Spec : Prop :=
  ∀ n, (P17250561255626309440.a n : ℤ) = A037309 (n + 1)

end A037309

/-!
# A037310: Numbers whose base-3 and base-5 expansions have the same digit sum.

The programs for A037310, the canonical program `A037310.P12962225180508801874` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037310 has offset 1).

The definition of A037310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037310.P12962225180508801874

`eq[A053735(n+1), A053824(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037310

/-- `eq[A053735(n+1), A053824(n+1)]+1` -/
def P12962225180508801874.Spec : Prop :=
  ∀ n, (P12962225180508801874.a n : ℤ) = A037310 (n + 1)

theorem P12962225180508801874.correct : P12962225180508801874.Spec := by
  intro n
  simp only [A037310, Nat.add_sub_cancel]

end A037310

/-! ## A037310.P17436700048394180818

`eq[A230641(n+1), A230865(n+1)]+1`
-/

namespace A037310.P17436700048394180818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037310.P17436700048394180818

namespace A037310

/-- `eq[A230641(n+1), A230865(n+1)]+1` -/
def P17436700048394180818.Spec : Prop :=
  ∀ n, (P17436700048394180818.a n : ℤ) = A037310 (n + 1)

end A037310

/-! ## A037310.P6109108420690280350

`eq[A053735(A028310(n)), A053824(n)]`
-/

namespace A037310.P6109108420690280350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037310.P6109108420690280350

namespace A037310

/-- `eq[A053735(A028310(n)), A053824(n)]` -/
def P6109108420690280350.Spec : Prop :=
  ∀ n, (P6109108420690280350.a n : ℤ) = A037310 (n + 1)

end A037310

/-! ## A037310.P7271031876735721926

`eq[A230641(A000038(n)+n), A230865(n)]`
-/

namespace A037310.P7271031876735721926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037310.P7271031876735721926

namespace A037310

/-- `eq[A230641(A000038(n)+n), A230865(n)]` -/
def P7271031876735721926.Spec : Prop :=
  ∀ n, (P7271031876735721926.a n : ℤ) = A037310 (n + 1)

end A037310

/-! ## A037310.P12283664763079941029

`eq[A230641(n)-A000038(n), A230865(n)]`
-/

namespace A037310.P12283664763079941029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037310.P12283664763079941029

namespace A037310

/-- `eq[A230641(n)-A000038(n), A230865(n)]` -/
def P12283664763079941029.Spec : Prop :=
  ∀ n, (P12283664763079941029.a n : ℤ) = A037310 (n + 1)

end A037310

/-! ## A037310.P18072753337060834645

`eq[A053735(A008486(n)), A053824(n)]`
-/

namespace A037310.P18072753337060834645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037310.P18072753337060834645

namespace A037310

/-- `eq[A053735(A008486(n)), A053824(n)]` -/
def P18072753337060834645.Spec : Prop :=
  ∀ n, (P18072753337060834645.a n : ℤ) = A037310 (n + 1)

end A037310

/-! ## A037310.P4987228108686077624

`eq[A053735(n), A053824(A008706(n))]`
-/

namespace A037310.P4987228108686077624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037310.P4987228108686077624

namespace A037310

/-- `eq[A053735(n), A053824(A008706(n))]` -/
def P4987228108686077624.Spec : Prop :=
  ∀ n, (P4987228108686077624.a n : ℤ) = A037310 (n + 1)

end A037310

/-!
# A037311: Numbers whose base-3 and base-6 expansions have the same digit sum.

The programs for A037311, the canonical program `A037311.P3355334712798608875` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037311 has offset 1).

The definition of A037311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 677 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037311.P3355334712798608875

`eq[A053735(n+1), A053827(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037311

/-- `eq[A053735(n+1), A053827(n+1)]+1` -/
def P3355334712798608875.Spec : Prop :=
  ∀ n, (P3355334712798608875.a n : ℤ) = A037311 (n + 1)

theorem P3355334712798608875.correct : P3355334712798608875.Spec := by
  intro n
  simp only [A037311, Nat.add_sub_cancel]

end A037311

/-! ## A037311.P9327039815952354750

`eq[A053735(A028310(n)), A053827(n)]`
-/

namespace A037311.P9327039815952354750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P9327039815952354750

namespace A037311

/-- `eq[A053735(A028310(n)), A053827(n)]` -/
def P9327039815952354750.Spec : Prop :=
  ∀ n, (P9327039815952354750.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P2226792749419869667

`eq[A053827(A028310(n))+n, A230641(n)]`
-/

namespace A037311.P2226792749419869667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P2226792749419869667

namespace A037311

/-- `eq[A053827(A028310(n))+n, A230641(n)]` -/
def P2226792749419869667.Spec : Prop :=
  ∀ n, (P2226792749419869667.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P11263330230513298965

`eq[n, A344853(n)+A053827(A028310(n))]`
-/

namespace A037311.P11263330230513298965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n + A053827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037311.P11263330230513298965

namespace A037311

/-- `eq[n, A344853(n)+A053827(A028310(n))]` -/
def P11263330230513298965.Spec : Prop :=
  ∀ n, (P11263330230513298965.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P10500094725161226179

`eq[A028310(A230641(n)-n), A053827(n)]`
-/

namespace A037311.P10500094725161226179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A230641 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P10500094725161226179

namespace A037311

/-- `eq[A028310(A230641(n)-n), A053827(n)]` -/
def P10500094725161226179.Spec : Prop :=
  ∀ n, (P10500094725161226179.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P12365870178144470209

`eq[A028310(n)-A053827(n), A344853(n)]`
-/

namespace A037311.P12365870178144470209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A053827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P12365870178144470209

namespace A037311

/-- `eq[A028310(n)-A053827(n), A344853(n)]` -/
def P12365870178144470209.Spec : Prop :=
  ∀ n, (P12365870178144470209.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P15168757756263561556

`eq[n-2*A054861(n), A053827(A028310(n))]`
-/

namespace A037311.P15168757756263561556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A054861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P15168757756263561556

namespace A037311

/-- `eq[n-2*A054861(n), A053827(A028310(n))]` -/
def P15168757756263561556.Spec : Prop :=
  ∀ n, (P15168757756263561556.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P16585137306827197216

`eq[3*n-A346502(n), A053827(A028310(n))]`
-/

namespace A037311.P16585137306827197216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A346502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P16585137306827197216

namespace A037311

/-- `eq[3*n-A346502(n), A053827(A028310(n))]` -/
def P16585137306827197216.Spec : Prop :=
  ∀ n, (P16585137306827197216.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P5354591243751361177

`eq[A053735(A008486(n)), A053827(n)]`
-/

namespace A037311.P5354591243751361177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P5354591243751361177

namespace A037311

/-- `eq[A053735(A008486(n)), A053827(n)]` -/
def P5354591243751361177.Spec : Prop :=
  ∀ n, (P5354591243751361177.a n : ℤ) = A037311 (n + 1)

end A037311

/-! ## A037311.P13361267043533241335

`eq[A053735(n), A053827(A008458(n))]`
-/

namespace A037311.P13361267043533241335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037311.P13361267043533241335

namespace A037311

/-- `eq[A053735(n), A053827(A008458(n))]` -/
def P13361267043533241335.Spec : Prop :=
  ∀ n, (P13361267043533241335.a n : ℤ) = A037311 (n + 1)

end A037311

/-!
# A037312: Numbers whose base-3 and base-7 expansions have the same digit sum.

The programs for A037312, the canonical program `A037312.P9470529839342891948` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037312 has offset 1).

The definition of A037312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037312.P9470529839342891948

`eq[A053735(n+1), A053828(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037312

/-- `eq[A053735(n+1), A053828(n+1)]+1` -/
def P9470529839342891948.Spec : Prop :=
  ∀ n, (P9470529839342891948.a n : ℤ) = A037312 (n + 1)

theorem P9470529839342891948.correct : P9470529839342891948.Spec := by
  intro n
  simp only [A037312, Nat.add_sub_cancel]

end A037312

/-! ## A037312.P14369111350229657095

`eq[A053735(A028310(n)), A053828(n)]`
-/

namespace A037312.P14369111350229657095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037312.P14369111350229657095

namespace A037312

/-- `eq[A053735(A028310(n)), A053828(n)]` -/
def P14369111350229657095.Spec : Prop :=
  ∀ n, (P14369111350229657095.a n : ℤ) = A037312 (n + 1)

end A037312

/-! ## A037312.P4850678114997093561

`eq[A053735(A000007(n)+n), A053828(n)]`
-/

namespace A037312.P4850678114997093561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037312.P4850678114997093561

namespace A037312

/-- `eq[A053735(A000007(n)+n), A053828(n)]` -/
def P4850678114997093561.Spec : Prop :=
  ∀ n, (P4850678114997093561.a n : ℤ) = A037312 (n + 1)

end A037312

/-! ## A037312.P13374397457762067652

`eq[A053735(n)-A000007(n), A053828(n)]`
-/

namespace A037312.P13374397457762067652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037312.P13374397457762067652

namespace A037312

/-- `eq[A053735(n)-A000007(n), A053828(n)]` -/
def P13374397457762067652.Spec : Prop :=
  ∀ n, (P13374397457762067652.a n : ℤ) = A037312 (n + 1)

end A037312

/-! ## A037312.P10290211817827924630

`eq[A053735(A008486(n)), A053828(n)]`
-/

namespace A037312.P10290211817827924630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037312.P10290211817827924630

namespace A037312

/-- `eq[A053735(A008486(n)), A053828(n)]` -/
def P10290211817827924630.Spec : Prop :=
  ∀ n, (P10290211817827924630.a n : ℤ) = A037312 (n + 1)

end A037312

/-!
# A037313: Numbers whose base-3 and base-8 expansions have the same digit sum.

The programs for A037313, the canonical program `A037313.P8558036857328974010` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037313 has offset 1).

The definition of A037313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037313.P8558036857328974010

`eq[A053735(n+1), A053829(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037313

/-- `eq[A053735(n+1), A053829(n+1)]+1` -/
def P8558036857328974010.Spec : Prop :=
  ∀ n, (P8558036857328974010.a n : ℤ) = A037313 (n + 1)

theorem P8558036857328974010.correct : P8558036857328974010.Spec := by
  intro n
  simp only [A037313, Nat.add_sub_cancel]

end A037313

/-! ## A037313.P3540300573522493045

`eq[A053735(A028310(n)), A053829(n)]`
-/

namespace A037313.P3540300573522493045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037313.P3540300573522493045

namespace A037313

/-- `eq[A053735(A028310(n)), A053829(n)]` -/
def P3540300573522493045.Spec : Prop :=
  ∀ n, (P3540300573522493045.a n : ℤ) = A037313 (n + 1)

end A037313

/-! ## A037313.P12718787659835997261

`eq[A053735(A154281(n+1)+n), A053829(n)]`
-/

namespace A037313.P12718787659835997261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A154281 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037313.P12718787659835997261

namespace A037313

/-- `eq[A053735(A154281(n+1)+n), A053829(n)]` -/
def P12718787659835997261.Spec : Prop :=
  ∀ n, (P12718787659835997261.a n : ℤ) = A037313 (n + 1)

end A037313

/-! ## A037313.P10703039419695723142

`eq[A053735(A123108(2*n)), A053829(n)]`
-/

namespace A037313.P10703039419695723142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037313.P10703039419695723142

namespace A037313

/-- `eq[A053735(A123108(2*n)), A053829(n)]` -/
def P10703039419695723142.Spec : Prop :=
  ∀ n, (P10703039419695723142.a n : ℤ) = A037313 (n + 1)

end A037313

/-! ## A037313.P14583230370442946605

`eq[A053735(A008486(n)), A053829(n)]`
-/

namespace A037313.P14583230370442946605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037313.P14583230370442946605

namespace A037313

/-- `eq[A053735(A008486(n)), A053829(n)]` -/
def P14583230370442946605.Spec : Prop :=
  ∀ n, (P14583230370442946605.a n : ℤ) = A037313 (n + 1)

end A037313

/-! ## A037313.P7042300808122864181

`eq[A053735(n), A053829(A022144(n))]`
-/

namespace A037313.P7042300808122864181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037313.P7042300808122864181

namespace A037313

/-- `eq[A053735(n), A053829(A022144(n))]` -/
def P7042300808122864181.Spec : Prop :=
  ∀ n, (P7042300808122864181.a n : ℤ) = A037313 (n + 1)

end A037313

/-!
# A037314: Numbers whose base-3 and base-9 expansions have the same digit sum.

The programs for A037314, the canonical program `A037314.P11971780737559590080` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037314 has offset 0).

The definition of A037314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037314.P6254970810731139198

`A338086(n)/4`
-/

namespace A037314.P6254970810731139198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338086 n : ℚ) / 4

end

end A037314.P6254970810731139198

namespace A037314

/-- `A338086(n)/4` -/
def P6254970810731139198.Spec : Prop :=
  ∀ n, P6254970810731139198.a n = (A037314 n : ℚ)

end A037314

/-! ## A037314.P11971780737559590080

`∑[A120437(n+1)]-A120437(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037314

/-- `∑[A120437(n+1)]-A120437(n+1)` -/
def P11971780737559590080.Spec : Prop :=
  ∀ n, P11971780737559590080.a n = A037314 n

theorem P11971780737559590080.correct : P11971780737559590080.Spec := by
  intro n
  simp only [A037314]

end A037314

/-! ## A037314.P493096527391964779

`A037463(A023717(n))`
-/

namespace A037314.P493096527391964779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (A023717 n).toNat

end

end A037314.P493096527391964779

namespace A037314

/-- `A037463(A023717(n))` -/
def P493096527391964779.Spec : Prop :=
  ∀ n, P493096527391964779.a n = A037314 n

end A037314

/-! ## A037314.P1053111776820168943

`A037463(eq[0, A292373(n)])`
-/

namespace A037314.P1053111776820168943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037314.P1053111776820168943

namespace A037314

/-- `A037463(eq[0, A292373(n)])` -/
def P1053111776820168943.Spec : Prop :=
  ∀ n, P1053111776820168943.a n = A037314 n

end A037314

/-! ## A037314.P973984508638061664

`A037463(record[n-A292373(n)²])`
-/

namespace A037314.P973984508638061664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292373 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037314.P973984508638061664

namespace A037314

/-- `A037463(record[n-A292373(n)²])` -/
def P973984508638061664.Spec : Prop :=
  ∀ n, P973984508638061664.a n = A037314 n

end A037314

/-! ## A037314.P18275416723823486339

`record[(1-A292373(n))*A037463(n)]`
-/

namespace A037314.P18275416723823486339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A292373 n) * A037463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037314.P18275416723823486339

namespace A037314

/-- `record[(1-A292373(n))*A037463(n)]` -/
def P18275416723823486339.Spec : Prop :=
  ∀ n, P18275416723823486339.a n = A037314 n

end A037314

/-! ## A037314.P2074793921647213722

`A037472(A037454(n))`
-/

namespace A037314.P2074793921647213722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037472 (A037454 n).toNat

end

end A037314.P2074793921647213722

namespace A037314

/-- `A037472(A037454(n))` -/
def P2074793921647213722.Spec : Prop :=
  ∀ n, P2074793921647213722.a n = A037314 n

end A037314

/-! ## A037314.P17107910000431486685

`record[A065369(n)]`
-/

namespace A037314.P17107910000431486685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037314.P17107910000431486685

namespace A037314

/-- `record[A065369(n)]` -/
def P17107910000431486685.Spec : Prop :=
  ∀ n, P17107910000431486685.a n = A037314 n

end A037314

/-! ## A037314.P4146304698742169907

`eq[n-3, A065369(n+3)]`
-/

namespace A037314.P4146304698742169907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037314.P4146304698742169907

namespace A037314

/-- `eq[n-3, A065369(n+3)]` -/
def P4146304698742169907.Spec : Prop :=
  ∀ n, (P4146304698742169907.a n : ℤ) = A037314 n

end A037314

/-! ## A037314.P2439375141825440616

`A037475(A037455(n))`
-/

namespace A037314.P2439375141825440616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (A037455 n).toNat

end

end A037314.P2439375141825440616

namespace A037314

/-- `A037475(A037455(n))` -/
def P2439375141825440616.Spec : Prop :=
  ∀ n, P2439375141825440616.a n = A037314 n

end A037314

/-! ## A037314.P1906697292160210149

`A037477(A037456(n))`
-/

namespace A037314.P1906697292160210149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A037456 n).toNat

end

end A037314.P1906697292160210149

namespace A037314

/-- `A037477(A037456(n))` -/
def P1906697292160210149.Spec : Prop :=
  ∀ n, P1906697292160210149.a n = A037314 n

end A037314

/-! ## A037314.P11710301106019566772

`eq[A005812(n), A053830(n)]`
-/

namespace A037314.P11710301106019566772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037314.P11710301106019566772

namespace A037314

/-- `eq[A005812(n), A053830(n)]` -/
def P11710301106019566772.Spec : Prop :=
  ∀ n, (P11710301106019566772.a n : ℤ) = A037314 n

end A037314

/-! ## A037314.P14554294226857378371

`∩[A039097(n+1), A037463(n)]`
-/

namespace A037314.P14554294226857378371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037314.P14554294226857378371

namespace A037314

/-- `∩[A039097(n+1), A037463(n)]` -/
def P14554294226857378371.Spec : Prop :=
  ∀ n, (P14554294226857378371.a n : ℤ) = A037314 n

end A037314

/-! ## A037314.P15809913604838741814

`∩[A039098(n+1), A037463(n)]`
-/

namespace A037314.P15809913604838741814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037314.P15809913604838741814

namespace A037314

/-- `∩[A039098(n+1), A037463(n)]` -/
def P15809913604838741814.Spec : Prop :=
  ∀ n, (P15809913604838741814.a n : ℤ) = A037314 n

end A037314

/-! ## A037314.P16734909915662516835

`∩[A039099(n+1), A037463(n)]`
-/

namespace A037314.P16734909915662516835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037314.P16734909915662516835

namespace A037314

/-- `∩[A039099(n+1), A037463(n)]` -/
def P16734909915662516835.Spec : Prop :=
  ∀ n, (P16734909915662516835.a n : ℤ) = A037314 n

end A037314

/-! ## A037314.P15181647866412711583

`∩[A039100(n+1), A037463(n)]`
-/

namespace A037314.P15181647866412711583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037314.P15181647866412711583

namespace A037314

/-- `∩[A039100(n+1), A037463(n)]` -/
def P15181647866412711583.Spec : Prop :=
  ∀ n, (P15181647866412711583.a n : ℤ) = A037314 n

end A037314

/-! ## A037314.P4072380389475551002

`∩[A039101(n+1), A037463(n)]`
-/

namespace A037314.P4072380389475551002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037314.P4072380389475551002

namespace A037314

/-- `∩[A039101(n+1), A037463(n)]` -/
def P4072380389475551002.Spec : Prop :=
  ∀ n, (P4072380389475551002.a n : ℤ) = A037314 n

end A037314

/-! ## A037314.P5475691204521434692

`eq[A163528(2*n), A163529(2*n)]/2`
-/

namespace A037314.P5475691204521434692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A037314.P5475691204521434692

namespace A037314

/-- `eq[A163528(2*n), A163529(2*n)]/2` -/
def P5475691204521434692.Spec : Prop :=
  ∀ n, P5475691204521434692.a n = (A037314 n : ℚ)

end A037314

/-! ## A037314.P337089105321135507

`record[A105186(n)]`
-/

namespace A037314.P337089105321135507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037314.P337089105321135507

namespace A037314

/-- `record[A105186(n)]` -/
def P337089105321135507.Spec : Prop :=
  ∀ n, P337089105321135507.a n = A037314 n

end A037314

/-! ## A037314.P430735082485856523

`eq[0, A163326(n)]`
-/

namespace A037314.P430735082485856523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037314.P430735082485856523

namespace A037314

/-- `eq[0, A163326(n)]` -/
def P430735082485856523.Spec : Prop :=
  ∀ n, (P430735082485856523.a n : ℤ) = A037314 n

end A037314

/-!
# A037315: Numbers whose base-3 and base-10 expansions have the same digit sum.

The programs for A037315, the canonical program `A037315.P7198483397476573084` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037315 has offset 1).

The definition of A037315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037315.P7198483397476573084

`lt[(n*A180019(n))², n]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037315

/-- `lt[(n*A180019(n))², n]` -/
def P7198483397476573084.Spec : Prop :=
  ∀ n, (P7198483397476573084.a n : ℤ) = A037315 (n + 1)

theorem P7198483397476573084.correct : P7198483397476573084.Spec := by
  intro n
  simp only [A037315, Nat.add_sub_cancel]

end A037315

/-! ## A037315.P7819734778398450414

`eq[A000007(n), A180019(n)]`
-/

namespace A037315.P7819734778398450414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037315.P7819734778398450414

namespace A037315

/-- `eq[A000007(n), A180019(n)]` -/
def P7819734778398450414.Spec : Prop :=
  ∀ n, (P7819734778398450414.a n : ℤ) = A037315 (n + 1)

end A037315

/-! ## A037315.P8764730488279370713

`eq[A000038(n), A180019(n)]`
-/

namespace A037315.P8764730488279370713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037315.P8764730488279370713

namespace A037315

/-- `eq[A000038(n), A180019(n)]` -/
def P8764730488279370713.Spec : Prop :=
  ∀ n, (P8764730488279370713.a n : ℤ) = A037315 (n + 1)

end A037315

/-! ## A037315.P901530921594529823

`eq[A089012(n+1), A180019(n)]`
-/

namespace A037315.P901530921594529823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037315.P901530921594529823

namespace A037315

/-- `eq[A089012(n+1), A180019(n)]` -/
def P901530921594529823.Spec : Prop :=
  ∀ n, (P901530921594529823.a n : ℤ) = A037315 (n + 1)

end A037315

/-! ## A037315.P12163970808288577034

`eq[A154281(n+1), A180019(n)]`
-/

namespace A037315.P12163970808288577034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037315.P12163970808288577034

namespace A037315

/-- `eq[A154281(n+1), A180019(n)]` -/
def P12163970808288577034.Spec : Prop :=
  ∀ n, (P12163970808288577034.a n : ℤ) = A037315 (n + 1)

end A037315

/-! ## A037315.P14354463493046891944

`lt[A108773(A180019(n)²), dr(n)]`
-/

namespace A037315.P14354463493046891944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 (A180019 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037315.P14354463493046891944

namespace A037315

/-- `lt[A108773(A180019(n)²), dr(n)]` -/
def P14354463493046891944.Spec : Prop :=
  ∀ n, (P14354463493046891944.a n : ℤ) = A037315 (n + 1)

end A037315

/-! ## A037315.P11277135675895682732

`lt[dr(A180019(n))*A108773(n), n]`
-/

namespace A037315.P11277135675895682732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A180019 n) : ℤ) * A108773 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037315.P11277135675895682732

namespace A037315

/-- `lt[dr(A180019(n))*A108773(n), n]` -/
def P11277135675895682732.Spec : Prop :=
  ∀ n, (P11277135675895682732.a n : ℤ) = A037315 (n + 1)

end A037315

/-! ## A037315.P13214953380630208859

`eq[A007953(n+1), A053735(n+1)]+1`
-/

namespace A037315.P13214953380630208859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037315.P13214953380630208859

namespace A037315

/-- `eq[A007953(n+1), A053735(n+1)]+1` -/
def P13214953380630208859.Spec : Prop :=
  ∀ n, (P13214953380630208859.a n : ℤ) = A037315 (n + 1)

end A037315

/-! ## A037315.P10711311392380511264

`record[(n+1)/A160767(abs(A180019(n+1)))]`
-/

namespace A037315.P10711311392380511264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A160767 |A180019 (n + 1)|.toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037315.P10711311392380511264

namespace A037315

/-- `record[(n+1)/A160767(abs(A180019(n+1)))]` -/
def P10711311392380511264.Spec : Prop :=
  ∀ n, P10711311392380511264.a n = (A037315 (n + 1) : ℚ)

end A037315

/-! ## A037315.P9538436988954999225

`record[(n+1)/A160767(A180019(n+1)²)]`
-/

namespace A037315.P9538436988954999225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A160767 (A180019 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037315.P9538436988954999225

namespace A037315

/-- `record[(n+1)/A160767(A180019(n+1)²)]` -/
def P9538436988954999225.Spec : Prop :=
  ∀ n, P9538436988954999225.a n = (A037315 (n + 1) : ℚ)

end A037315

/-! ## A037315.P15079568643661572774

`record[(n+1)*val(A062028(n+1), A230641(n+1))]`
-/

namespace A037315.P15079568643661572774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.valuation (A062028 (n + 1)).toNat (A230641 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037315.P15079568643661572774

namespace A037315

/-- `record[(n+1)*val(A062028(n+1), A230641(n+1))]` -/
def P15079568643661572774.Spec : Prop :=
  ∀ n, (P15079568643661572774.a n : ℤ) = A037315 (n + 1)

end A037315

/-!
# A037316: Numbers whose base-4 and base-5 expansions have the same digit sum.

The programs for A037316, the canonical program `A037316.P13942600705853120331` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037316 has offset 1).

The definition of A037316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037316.P13942600705853120331

`eq[A053737(n+1), A053824(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037316

/-- `eq[A053737(n+1), A053824(n+1)]+1` -/
def P13942600705853120331.Spec : Prop :=
  ∀ n, (P13942600705853120331.a n : ℤ) = A037316 (n + 1)

theorem P13942600705853120331.correct : P13942600705853120331.Spec := by
  intro n
  simp only [A037316, Nat.add_sub_cancel]

end A037316

/-! ## A037316.P13672171610809453061

`eq[A053737(A028310(n)), A053824(n)]`
-/

namespace A037316.P13672171610809453061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P13672171610809453061

namespace A037316

/-- `eq[A053737(A028310(n)), A053824(n)]` -/
def P13672171610809453061.Spec : Prop :=
  ∀ n, (P13672171610809453061.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P3138606900082817859

`eq[A031285(A053737(n)), A173525(n+1)]`
-/

namespace A037316.P3138606900082817859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A053737 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P3138606900082817859

namespace A037316

/-- `eq[A031285(A053737(n)), A173525(n+1)]` -/
def P3138606900082817859.Spec : Prop :=
  ∀ n, (P3138606900082817859.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P1574877502512392096

`eq[A053737(A000007(n)+n), A053824(n)]`
-/

namespace A037316.P1574877502512392096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P1574877502512392096

namespace A037316

/-- `eq[A053737(A000007(n)+n), A053824(n)]` -/
def P1574877502512392096.Spec : Prop :=
  ∀ n, (P1574877502512392096.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P4997519692947227828

`eq[A053737(A000038(n)+n), A053824(n)]`
-/

namespace A037316.P4997519692947227828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P4997519692947227828

namespace A037316

/-- `eq[A053737(A000038(n)+n), A053824(n)]` -/
def P4997519692947227828.Spec : Prop :=
  ∀ n, (P4997519692947227828.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P10720083409760254352

`eq[A053824(A028310(n))+n, A230631(n)]`
-/

namespace A037316.P10720083409760254352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P10720083409760254352

namespace A037316

/-- `eq[A053824(A028310(n))+n, A230631(n)]` -/
def P10720083409760254352.Spec : Prop :=
  ∀ n, (P10720083409760254352.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P6142839179158905693

`eq[A053737(n)-A000007(n), A053824(n)]`
-/

namespace A037316.P6142839179158905693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P6142839179158905693

namespace A037316

/-- `eq[A053737(n)-A000007(n), A053824(n)]` -/
def P6142839179158905693.Spec : Prop :=
  ∀ n, (P6142839179158905693.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P4318611720149546463

`eq[A053737(n)-A000038(n), A053824(n)]`
-/

namespace A037316.P4318611720149546463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P4318611720149546463

namespace A037316

/-- `eq[A053737(n)-A000038(n), A053824(n)]` -/
def P4318611720149546463.Spec : Prop :=
  ∀ n, (P4318611720149546463.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P5756661519875319858

`eq[A028310(A230631(n)-n), A053824(n)]`
-/

namespace A037316.P5756661519875319858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A230631 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P5756661519875319858

namespace A037316

/-- `eq[A028310(A230631(n)-n), A053824(n)]` -/
def P5756661519875319858.Spec : Prop :=
  ∀ n, (P5756661519875319858.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P15878963518034972184

`eq[A053737(A008574(n)), A053824(n)]`
-/

namespace A037316.P15878963518034972184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P15878963518034972184

namespace A037316

/-- `eq[A053737(A008574(n)), A053824(n)]` -/
def P15878963518034972184.Spec : Prop :=
  ∀ n, (P15878963518034972184.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P12434619443679216293

`eq[A053737(A008706(n)-n), A053824(n)]`
-/

namespace A037316.P12434619443679216293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008706 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P12434619443679216293

namespace A037316

/-- `eq[A053737(A008706(n)-n), A053824(n)]` -/
def P12434619443679216293.Spec : Prop :=
  ∀ n, (P12434619443679216293.a n : ℤ) = A037316 (n + 1)

end A037316

/-! ## A037316.P12682113443503717418

`eq[A053737(n), A053824(A008706(n))]`
-/

namespace A037316.P12682113443503717418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037316.P12682113443503717418

namespace A037316

/-- `eq[A053737(n), A053824(A008706(n))]` -/
def P12682113443503717418.Spec : Prop :=
  ∀ n, (P12682113443503717418.a n : ℤ) = A037316 (n + 1)

end A037316

/-!
# A037317: Numbers whose base-4 and base-6 expansions have the same digit sum.

The programs for A037317, the canonical program `A037317.P4693827689343434067` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037317 has offset 1).

The definition of A037317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037317.P4693827689343434067

`eq[A053737(n+1), A053827(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037317

/-- `eq[A053737(n+1), A053827(n+1)]+1` -/
def P4693827689343434067.Spec : Prop :=
  ∀ n, (P4693827689343434067.a n : ℤ) = A037317 (n + 1)

theorem P4693827689343434067.correct : P4693827689343434067.Spec := by
  intro n
  simp only [A037317, Nat.add_sub_cancel]

end A037317

/-! ## A037317.P7129283835953414072

`eq[A053737(A028310(n)), A053827(n)]`
-/

namespace A037317.P7129283835953414072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037317.P7129283835953414072

namespace A037317

/-- `eq[A053737(A028310(n)), A053827(n)]` -/
def P7129283835953414072.Spec : Prop :=
  ∀ n, (P7129283835953414072.a n : ℤ) = A037317 (n + 1)

end A037317

/-! ## A037317.P501336602228658888

`eq[A053737(A000007(n)+n), A053827(n)]`
-/

namespace A037317.P501336602228658888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037317.P501336602228658888

namespace A037317

/-- `eq[A053737(A000007(n)+n), A053827(n)]` -/
def P501336602228658888.Spec : Prop :=
  ∀ n, (P501336602228658888.a n : ℤ) = A037317 (n + 1)

end A037317

/-! ## A037317.P16088270165140196803

`eq[A053737(n)-A000007(n), A053827(n)]`
-/

namespace A037317.P16088270165140196803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037317.P16088270165140196803

namespace A037317

/-- `eq[A053737(n)-A000007(n), A053827(n)]` -/
def P16088270165140196803.Spec : Prop :=
  ∀ n, (P16088270165140196803.a n : ℤ) = A037317 (n + 1)

end A037317

/-! ## A037317.P8259224111439597444

`eq[A053737(A008574(n)), A053827(n)]`
-/

namespace A037317.P8259224111439597444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037317.P8259224111439597444

namespace A037317

/-- `eq[A053737(A008574(n)), A053827(n)]` -/
def P8259224111439597444.Spec : Prop :=
  ∀ n, (P8259224111439597444.a n : ℤ) = A037317 (n + 1)

end A037317

/-! ## A037317.P3040876712168744632

`eq[A053737(A008486(n)+n), A053827(n)]`
-/

namespace A037317.P3040876712168744632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008486 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037317.P3040876712168744632

namespace A037317

/-- `eq[A053737(A008486(n)+n), A053827(n)]` -/
def P3040876712168744632.Spec : Prop :=
  ∀ n, (P3040876712168744632.a n : ℤ) = A037317 (n + 1)

end A037317

/-! ## A037317.P1171998256538579129

`eq[A053737(n), A053827(A008458(n))]`
-/

namespace A037317.P1171998256538579129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037317.P1171998256538579129

namespace A037317

/-- `eq[A053737(n), A053827(A008458(n))]` -/
def P1171998256538579129.Spec : Prop :=
  ∀ n, (P1171998256538579129.a n : ℤ) = A037317 (n + 1)

end A037317

/-! ## A037317.P8855154880181513620

`eq[A053737(n), A053827(A008486(2*n))]`
-/

namespace A037317.P8855154880181513620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037317.P8855154880181513620

namespace A037317

/-- `eq[A053737(n), A053827(A008486(2*n))]` -/
def P8855154880181513620.Spec : Prop :=
  ∀ n, (P8855154880181513620.a n : ℤ) = A037317 (n + 1)

end A037317

/-!
# A037318: Numbers whose base-4 and base-7 expansions have the same digit sum.

The programs for A037318, the canonical program `A037318.P8915559083621152750` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037318 has offset 1).

The definition of A037318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037318.P8915559083621152750

`eq[A053737(n+1), A053828(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037318

/-- `eq[A053737(n+1), A053828(n+1)]+1` -/
def P8915559083621152750.Spec : Prop :=
  ∀ n, (P8915559083621152750.a n : ℤ) = A037318 (n + 1)

theorem P8915559083621152750.correct : P8915559083621152750.Spec := by
  intro n
  simp only [A037318, Nat.add_sub_cancel]

end A037318

/-! ## A037318.P9569492048088755297

`eq[A053737(A028310(n)), A053828(n)]`
-/

namespace A037318.P9569492048088755297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037318.P9569492048088755297

namespace A037318

/-- `eq[A053737(A028310(n)), A053828(n)]` -/
def P9569492048088755297.Spec : Prop :=
  ∀ n, (P9569492048088755297.a n : ℤ) = A037318 (n + 1)

end A037318

/-! ## A037318.P18319607742932243946

`eq[A053737(A000007(n)+n), A053828(n)]`
-/

namespace A037318.P18319607742932243946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037318.P18319607742932243946

namespace A037318

/-- `eq[A053737(A000007(n)+n), A053828(n)]` -/
def P18319607742932243946.Spec : Prop :=
  ∀ n, (P18319607742932243946.a n : ℤ) = A037318 (n + 1)

end A037318

/-! ## A037318.P12946074990372277782

`eq[A053737(n)-A000007(n), A053828(n)]`
-/

namespace A037318.P12946074990372277782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037318.P12946074990372277782

namespace A037318

/-- `eq[A053737(n)-A000007(n), A053828(n)]` -/
def P12946074990372277782.Spec : Prop :=
  ∀ n, (P12946074990372277782.a n : ℤ) = A037318 (n + 1)

end A037318

/-! ## A037318.P1112713167433963023

`eq[A053737(A123108(2*n)), A053828(n)]`
-/

namespace A037318.P1112713167433963023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A123108 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037318.P1112713167433963023

namespace A037318

/-- `eq[A053737(A123108(2*n)), A053828(n)]` -/
def P1112713167433963023.Spec : Prop :=
  ∀ n, (P1112713167433963023.a n : ℤ) = A037318 (n + 1)

end A037318

/-! ## A037318.P8058891909503118107

`eq[A053737(A008574(n)), A053828(n)]`
-/

namespace A037318.P8058891909503118107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037318.P8058891909503118107

namespace A037318

/-- `eq[A053737(A008574(n)), A053828(n)]` -/
def P8058891909503118107.Spec : Prop :=
  ∀ n, (P8058891909503118107.a n : ℤ) = A037318 (n + 1)

end A037318

/-! ## A037318.P3321332619502270590

`eq[A053737(A008486(n)+n), A053828(n)]`
-/

namespace A037318.P3321332619502270590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008486 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037318.P3321332619502270590

namespace A037318

/-- `eq[A053737(A008486(n)+n), A053828(n)]` -/
def P3321332619502270590.Spec : Prop :=
  ∀ n, (P3321332619502270590.a n : ℤ) = A037318 (n + 1)

end A037318

/-!
# A037319: Numbers whose base-4 and base-8 expansions have the same digit sum.

The programs for A037319, the canonical program `A037319.P5983094485819459083` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037319 has offset 1).

The definition of A037319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037319.P5983094485819459083

`eq[A053737(abs(1-n)+1), A053829(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037319

/-- `eq[A053737(abs(1-n)+1), A053829(n)]` -/
def P5983094485819459083.Spec : Prop :=
  ∀ n, (P5983094485819459083.a n : ℤ) = A037319 (n + 1)

theorem P5983094485819459083.correct : P5983094485819459083.Spec := by
  intro n
  simp only [A037319, Nat.add_sub_cancel]

end A037319

/-! ## A037319.P13014623544843133965

`eq[A053737(n+1), A053829(n+1)]+1`
-/

namespace A037319.P13014623544843133965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037319.P13014623544843133965

namespace A037319

/-- `eq[A053737(n+1), A053829(n+1)]+1` -/
def P13014623544843133965.Spec : Prop :=
  ∀ n, (P13014623544843133965.a n : ℤ) = A037319 (n + 1)

end A037319

/-! ## A037319.P314819223211732808

`eq[A028310(A053737(n)), A053829(n)]`
-/

namespace A037319.P314819223211732808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053737 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037319.P314819223211732808

namespace A037319

/-- `eq[A028310(A053737(n)), A053829(n)]` -/
def P314819223211732808.Spec : Prop :=
  ∀ n, (P314819223211732808.a n : ℤ) = A037319 (n + 1)

end A037319

/-! ## A037319.P7067435103389740989

`eq[A053829(A028310(n))+n, A230631(n)]`
-/

namespace A037319.P7067435103389740989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037319.P7067435103389740989

namespace A037319

/-- `eq[A053829(A028310(n))+n, A230631(n)]` -/
def P7067435103389740989.Spec : Prop :=
  ∀ n, (P7067435103389740989.a n : ℤ) = A037319 (n + 1)

end A037319

/-! ## A037319.P1467578269838899545

`eq[A028310(A230631(n)-n), A053829(n)]`
-/

namespace A037319.P1467578269838899545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A230631 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037319.P1467578269838899545

namespace A037319

/-- `eq[A028310(A230631(n)-n), A053829(n)]` -/
def P1467578269838899545.Spec : Prop :=
  ∀ n, (P1467578269838899545.a n : ℤ) = A037319 (n + 1)

end A037319

/-!
# A037320: Numbers whose base-4 and base-9 expansions have the same digit sum.

The programs for A037320, the canonical program `A037320.P1331506852405638817` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037320 has offset 1).

The definition of A037320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037320.P1331506852405638817

`eq[A053737(n+1), A053830(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037320

/-- `eq[A053737(n+1), A053830(n+1)]+1` -/
def P1331506852405638817.Spec : Prop :=
  ∀ n, (P1331506852405638817.a n : ℤ) = A037320 (n + 1)

theorem P1331506852405638817.correct : P1331506852405638817.Spec := by
  intro n
  simp only [A037320, Nat.add_sub_cancel]

end A037320

/-! ## A037320.P3172445071467040402

`eq[A053737(A028310(n)), A053830(n)]`
-/

namespace A037320.P3172445071467040402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037320.P3172445071467040402

namespace A037320

/-- `eq[A053737(A028310(n)), A053830(n)]` -/
def P3172445071467040402.Spec : Prop :=
  ∀ n, (P3172445071467040402.a n : ℤ) = A037320 (n + 1)

end A037320

/-! ## A037320.P767553796908452100

`eq[A053830(A028310(n))+n, A230631(n)]`
-/

namespace A037320.P767553796908452100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A028310 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037320.P767553796908452100

namespace A037320

/-- `eq[A053830(A028310(n))+n, A230631(n)]` -/
def P767553796908452100.Spec : Prop :=
  ∀ n, (P767553796908452100.a n : ℤ) = A037320 (n + 1)

end A037320

/-! ## A037320.P9501155067579428778

`eq[A028310(A230631(n)-n), A053830(n)]`
-/

namespace A037320.P9501155067579428778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A230631 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037320.P9501155067579428778

namespace A037320

/-- `eq[A028310(A230631(n)-n), A053830(n)]` -/
def P9501155067579428778.Spec : Prop :=
  ∀ n, (P9501155067579428778.a n : ℤ) = A037320 (n + 1)

end A037320

/-! ## A037320.P7210017874127449750

`eq[A053737(A065033(2*n)), A053830(n)]`
-/

namespace A037320.P7210017874127449750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037320.P7210017874127449750

namespace A037320

/-- `eq[A053737(A065033(2*n)), A053830(n)]` -/
def P7210017874127449750.Spec : Prop :=
  ∀ n, (P7210017874127449750.a n : ℤ) = A037320 (n + 1)

end A037320

/-! ## A037320.P5138311845358162535

`eq[A053737(A008574(n)), A053830(n)]`
-/

namespace A037320.P5138311845358162535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037320.P5138311845358162535

namespace A037320

/-- `eq[A053737(A008574(n)), A053830(n)]` -/
def P5138311845358162535.Spec : Prop :=
  ∀ n, (P5138311845358162535.a n : ℤ) = A037320 (n + 1)

end A037320

/-! ## A037320.P5929265540125810328

`eq[A053737(A008486(n)+n), A053830(n)]`
-/

namespace A037320.P5929265540125810328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008486 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037320.P5929265540125810328

namespace A037320

/-- `eq[A053737(A008486(n)+n), A053830(n)]` -/
def P5929265540125810328.Spec : Prop :=
  ∀ n, (P5929265540125810328.a n : ℤ) = A037320 (n + 1)

end A037320

/-!
# A037321: Numbers whose base-4 and base-10 expansions have the same digit sum.

The programs for A037321, the canonical program `A037321.P15475933279029128881` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037321 has offset 1).

The definition of A037321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037321.P15475933279029128881

`eq[A007953(n+1), A053737(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037321

/-- `eq[A007953(n+1), A053737(n+1)]+1` -/
def P15475933279029128881.Spec : Prop :=
  ∀ n, (P15475933279029128881.a n : ℤ) = A037321 (n + 1)

theorem P15475933279029128881.correct : P15475933279029128881.Spec := by
  intro n
  simp only [A037321, Nat.add_sub_cancel]

end A037321

/-! ## A037321.P12131460364624647708

`eq[A139352(n+1), A180018(n+1)]+1`
-/

namespace A037321.P12131460364624647708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037321.P12131460364624647708

namespace A037321

/-- `eq[A139352(n+1), A180018(n+1)]+1` -/
def P12131460364624647708.Spec : Prop :=
  ∀ n, (P12131460364624647708.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P9100344118283814552

`eq[A007953(n), A053737(A028310(n))]`
-/

namespace A037321.P9100344118283814552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P9100344118283814552

namespace A037321

/-- `eq[A007953(n), A053737(A028310(n))]` -/
def P9100344118283814552.Spec : Prop :=
  ∀ n, (P9100344118283814552.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P6967434351241131729

`eq[A053737(n), A137735(A118881(n))]`
-/

namespace A037321.P6967434351241131729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P6967434351241131729

namespace A037321

/-- `eq[A053737(n), A137735(A118881(n))]` -/
def P6967434351241131729.Spec : Prop :=
  ∀ n, (P6967434351241131729.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P16991668637706702481

`eq[A007953(A000007(n)+n), A053737(n)]`
-/

namespace A037321.P16991668637706702481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P16991668637706702481

namespace A037321

/-- `eq[A007953(A000007(n)+n), A053737(n)]` -/
def P16991668637706702481.Spec : Prop :=
  ∀ n, (P16991668637706702481.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P4102851391543180626

`eq[A007953(A000038(n)+n), A053737(n)]`
-/

namespace A037321.P4102851391543180626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P4102851391543180626

namespace A037321

/-- `eq[A007953(A000038(n)+n), A053737(n)]` -/
def P4102851391543180626.Spec : Prop :=
  ∀ n, (P4102851391543180626.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P6191604100427808560

`eq[A139352(A000038(n)+n), A180018(n)]`
-/

namespace A037321.P6191604100427808560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P6191604100427808560

namespace A037321

/-- `eq[A139352(A000038(n)+n), A180018(n)]` -/
def P6191604100427808560.Spec : Prop :=
  ∀ n, (P6191604100427808560.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P14883904668015768682

`eq[A007953(n)-A000007(n), A053737(n)]`
-/

namespace A037321.P14883904668015768682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P14883904668015768682

namespace A037321

/-- `eq[A007953(n)-A000007(n), A053737(n)]` -/
def P14883904668015768682.Spec : Prop :=
  ∀ n, (P14883904668015768682.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P5464797030066398047

`eq[A007953(n)-A000038(n), A053737(n)]`
-/

namespace A037321.P5464797030066398047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P5464797030066398047

namespace A037321

/-- `eq[A007953(n)-A000038(n), A053737(n)]` -/
def P5464797030066398047.Spec : Prop :=
  ∀ n, (P5464797030066398047.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P5078824676391432094

`eq[A139352(n)-A000038(n), A180018(n)]`
-/

namespace A037321.P5078824676391432094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P5078824676391432094

namespace A037321

/-- `eq[A139352(n)-A000038(n), A180018(n)]` -/
def P5078824676391432094.Spec : Prop :=
  ∀ n, (P5078824676391432094.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P5165693620112190838

`eq[A007953(n), A053737(A008574(n))]`
-/

namespace A037321.P5165693620112190838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P5165693620112190838

namespace A037321

/-- `eq[A007953(n), A053737(A008574(n))]` -/
def P5165693620112190838.Spec : Prop :=
  ∀ n, (P5165693620112190838.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P6889877841002322783

`eq[A007953(n), A053737(A004273(2*n)+1)]`
-/

namespace A037321.P6889877841002322783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A004273 (2 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P6889877841002322783

namespace A037321

/-- `eq[A007953(n), A053737(A004273(2*n)+1)]` -/
def P6889877841002322783.Spec : Prop :=
  ∀ n, (P6889877841002322783.a n : ℤ) = A037321 (n + 1)

end A037321

/-! ## A037321.P11649694490574272745

`eq[A004092(A008706(n)), A053737(n)]`
-/

namespace A037321.P11649694490574272745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037321.P11649694490574272745

namespace A037321

/-- `eq[A004092(A008706(n)), A053737(n)]` -/
def P11649694490574272745.Spec : Prop :=
  ∀ n, (P11649694490574272745.a n : ℤ) = A037321 (n + 1)

end A037321

/-!
# A037322: Numbers whose base-5 and base-6 expansions have the same digit sum.

The programs for A037322, the canonical program `A037322.P18336191087936191495` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037322 has offset 1).

The definition of A037322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037322.P18336191087936191495

`eq[A053824(n+1), A053827(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037322

/-- `eq[A053824(n+1), A053827(n+1)]+1` -/
def P18336191087936191495.Spec : Prop :=
  ∀ n, (P18336191087936191495.a n : ℤ) = A037322 (n + 1)

theorem P18336191087936191495.correct : P18336191087936191495.Spec := by
  intro n
  simp only [A037322, Nat.add_sub_cancel]

end A037322

/-! ## A037322.P36171638019500953

`eq[A173525(n+2), A173526(n+2)]+1`
-/

namespace A037322.P36171638019500953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173525 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037322.P36171638019500953

namespace A037322

/-- `eq[A173525(n+2), A173526(n+2)]+1` -/
def P36171638019500953.Spec : Prop :=
  ∀ n, (P36171638019500953.a n : ℤ) = A037322 (n + 1)

end A037322

/-! ## A037322.P4672776947771962761

`eq[A053824(A028310(n)), A053827(n)]`
-/

namespace A037322.P4672776947771962761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037322.P4672776947771962761

namespace A037322

/-- `eq[A053824(A028310(n)), A053827(n)]` -/
def P4672776947771962761.Spec : Prop :=
  ∀ n, (P4672776947771962761.a n : ℤ) = A037322 (n + 1)

end A037322

/-! ## A037322.P13738611798955746967

`eq[A053824(A008706(n)), A053827(n)]`
-/

namespace A037322.P13738611798955746967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037322.P13738611798955746967

namespace A037322

/-- `eq[A053824(A008706(n)), A053827(n)]` -/
def P13738611798955746967.Spec : Prop :=
  ∀ n, (P13738611798955746967.a n : ℤ) = A037322 (n + 1)

end A037322

/-! ## A037322.P11142959991539519981

`eq[A053824(A008458(n)-n), A053827(n)]`
-/

namespace A037322.P11142959991539519981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008458 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037322.P11142959991539519981

namespace A037322

/-- `eq[A053824(A008458(n)-n), A053827(n)]` -/
def P11142959991539519981.Spec : Prop :=
  ∀ n, (P11142959991539519981.a n : ℤ) = A037322 (n + 1)

end A037322

/-! ## A037322.P7265544041186664742

`eq[A053824(n), A053827(A008458(n))]`
-/

namespace A037322.P7265544041186664742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037322.P7265544041186664742

namespace A037322

/-- `eq[A053824(n), A053827(A008458(n))]` -/
def P7265544041186664742.Spec : Prop :=
  ∀ n, (P7265544041186664742.a n : ℤ) = A037322 (n + 1)

end A037322

/-!
# A037323: Numbers whose base-5 and base-7 expansions have the same digit sum.

The programs for A037323, the canonical program `A037323.P17015445517775980560` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037323 has offset 1).

The definition of A037323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037323.P17015445517775980560

`eq[A053824(n+1), A053828(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037323

/-- `eq[A053824(n+1), A053828(n+1)]+1` -/
def P17015445517775980560.Spec : Prop :=
  ∀ n, (P17015445517775980560.a n : ℤ) = A037323 (n + 1)

theorem P17015445517775980560.correct : P17015445517775980560.Spec := by
  intro n
  simp only [A037323, Nat.add_sub_cancel]

end A037323

/-! ## A037323.P13490101895355172196

`eq[A053824(A028310(n)), A053828(n)]`
-/

namespace A037323.P13490101895355172196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037323.P13490101895355172196

namespace A037323

/-- `eq[A053824(A028310(n)), A053828(n)]` -/
def P13490101895355172196.Spec : Prop :=
  ∀ n, (P13490101895355172196.a n : ℤ) = A037323 (n + 1)

end A037323

/-! ## A037323.P10971938024491089295

`eq[A053824(A000007(n)+n), A053828(n)]`
-/

namespace A037323.P10971938024491089295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037323.P10971938024491089295

namespace A037323

/-- `eq[A053824(A000007(n)+n), A053828(n)]` -/
def P10971938024491089295.Spec : Prop :=
  ∀ n, (P10971938024491089295.a n : ℤ) = A037323 (n + 1)

end A037323

/-! ## A037323.P7980778525363758915

`eq[A053824(A000038(n)+n), A053828(n)]`
-/

namespace A037323.P7980778525363758915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037323.P7980778525363758915

namespace A037323

/-- `eq[A053824(A000038(n)+n), A053828(n)]` -/
def P7980778525363758915.Spec : Prop :=
  ∀ n, (P7980778525363758915.a n : ℤ) = A037323 (n + 1)

end A037323

/-! ## A037323.P10125771946062192237

`eq[A053824(n)-A000007(n), A053828(n)]`
-/

namespace A037323.P10125771946062192237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037323.P10125771946062192237

namespace A037323

/-- `eq[A053824(n)-A000007(n), A053828(n)]` -/
def P10125771946062192237.Spec : Prop :=
  ∀ n, (P10125771946062192237.a n : ℤ) = A037323 (n + 1)

end A037323

/-! ## A037323.P2420977036667140753

`eq[A053824(n)-A000038(n), A053828(n)]`
-/

namespace A037323.P2420977036667140753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037323.P2420977036667140753

namespace A037323

/-- `eq[A053824(n)-A000038(n), A053828(n)]` -/
def P2420977036667140753.Spec : Prop :=
  ∀ n, (P2420977036667140753.a n : ℤ) = A037323 (n + 1)

end A037323

/-! ## A037323.P9958568119565839502

`eq[A053824(A008706(n)), A053828(n)]`
-/

namespace A037323.P9958568119565839502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037323.P9958568119565839502

namespace A037323

/-- `eq[A053824(A008706(n)), A053828(n)]` -/
def P9958568119565839502.Spec : Prop :=
  ∀ n, (P9958568119565839502.a n : ℤ) = A037323 (n + 1)

end A037323

/-!
# A037324: Numbers whose base-5 and base-8 expansions have the same digit sum.

The programs for A037324, the canonical program `A037324.P67861108556400582` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037324 has offset 1).

The definition of A037324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 632 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037324.P67861108556400582

`eq[A053824(n+1), A053829(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037324

/-- `eq[A053824(n+1), A053829(n+1)]+1` -/
def P67861108556400582.Spec : Prop :=
  ∀ n, (P67861108556400582.a n : ℤ) = A037324 (n + 1)

theorem P67861108556400582.correct : P67861108556400582.Spec := by
  intro n
  simp only [A037324, Nat.add_sub_cancel]

end A037324

/-! ## A037324.P13509847095421799180

`eq[A053824(A028310(n)), A053829(n)]`
-/

namespace A037324.P13509847095421799180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037324.P13509847095421799180

namespace A037324

/-- `eq[A053824(A028310(n)), A053829(n)]` -/
def P13509847095421799180.Spec : Prop :=
  ∀ n, (P13509847095421799180.a n : ℤ) = A037324 (n + 1)

end A037324

/-! ## A037324.P14466078347070306974

`eq[A053824(A000007(n)+n), A053829(n)]`
-/

namespace A037324.P14466078347070306974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037324.P14466078347070306974

namespace A037324

/-- `eq[A053824(A000007(n)+n), A053829(n)]` -/
def P14466078347070306974.Spec : Prop :=
  ∀ n, (P14466078347070306974.a n : ℤ) = A037324 (n + 1)

end A037324

/-! ## A037324.P15053052964489766690

`eq[A053824(A000038(n)+n), A053829(n)]`
-/

namespace A037324.P15053052964489766690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037324.P15053052964489766690

namespace A037324

/-- `eq[A053824(A000038(n)+n), A053829(n)]` -/
def P15053052964489766690.Spec : Prop :=
  ∀ n, (P15053052964489766690.a n : ℤ) = A037324 (n + 1)

end A037324

/-! ## A037324.P12395527541779395718

`eq[A053824(n)-A000007(n), A053829(n)]`
-/

namespace A037324.P12395527541779395718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037324.P12395527541779395718

namespace A037324

/-- `eq[A053824(n)-A000007(n), A053829(n)]` -/
def P12395527541779395718.Spec : Prop :=
  ∀ n, (P12395527541779395718.a n : ℤ) = A037324 (n + 1)

end A037324

/-! ## A037324.P6350869189246006923

`eq[A053824(n)-A000038(n), A053829(n)]`
-/

namespace A037324.P6350869189246006923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037324.P6350869189246006923

namespace A037324

/-- `eq[A053824(n)-A000038(n), A053829(n)]` -/
def P6350869189246006923.Spec : Prop :=
  ∀ n, (P6350869189246006923.a n : ℤ) = A037324 (n + 1)

end A037324

/-! ## A037324.P3930114894875481909

`eq[A053824(A008706(n)), A053829(n)]`
-/

namespace A037324.P3930114894875481909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037324.P3930114894875481909

namespace A037324

/-- `eq[A053824(A008706(n)), A053829(n)]` -/
def P3930114894875481909.Spec : Prop :=
  ∀ n, (P3930114894875481909.a n : ℤ) = A037324 (n + 1)

end A037324

/-! ## A037324.P14672367320449039135

`eq[A053824(n), A053829(A022144(n))]`
-/

namespace A037324.P14672367320449039135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037324.P14672367320449039135

namespace A037324

/-- `eq[A053824(n), A053829(A022144(n))]` -/
def P14672367320449039135.Spec : Prop :=
  ∀ n, (P14672367320449039135.a n : ℤ) = A037324 (n + 1)

end A037324

/-!
# A037325: Numbers whose base-5 and base-9 expansions have the same digit sum.

The programs for A037325, the canonical program `A037325.P14374460937970162386` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037325 has offset 1).

The definition of A037325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037325.P14374460937970162386

`eq[A053824(n+1), A053830(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037325

/-- `eq[A053824(n+1), A053830(n+1)]+1` -/
def P14374460937970162386.Spec : Prop :=
  ∀ n, (P14374460937970162386.a n : ℤ) = A037325 (n + 1)

theorem P14374460937970162386.correct : P14374460937970162386.Spec := by
  intro n
  simp only [A037325, Nat.add_sub_cancel]

end A037325

/-! ## A037325.P16244725326997083269

`eq[A053824(A028310(n)), A053830(n)]`
-/

namespace A037325.P16244725326997083269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037325.P16244725326997083269

namespace A037325

/-- `eq[A053824(A028310(n)), A053830(n)]` -/
def P16244725326997083269.Spec : Prop :=
  ∀ n, (P16244725326997083269.a n : ℤ) = A037325 (n + 1)

end A037325

/-! ## A037325.P18060535153176920086

`eq[A053824(A000007(n)+n), A053830(n)]`
-/

namespace A037325.P18060535153176920086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037325.P18060535153176920086

namespace A037325

/-- `eq[A053824(A000007(n)+n), A053830(n)]` -/
def P18060535153176920086.Spec : Prop :=
  ∀ n, (P18060535153176920086.a n : ℤ) = A037325 (n + 1)

end A037325

/-! ## A037325.P11902709738076550433

`eq[A053824(A000038(n)+n), A053830(n)]`
-/

namespace A037325.P11902709738076550433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037325.P11902709738076550433

namespace A037325

/-- `eq[A053824(A000038(n)+n), A053830(n)]` -/
def P11902709738076550433.Spec : Prop :=
  ∀ n, (P11902709738076550433.a n : ℤ) = A037325 (n + 1)

end A037325

/-! ## A037325.P15558155545246514548

`eq[A053824(n)-A000007(n), A053830(n)]`
-/

namespace A037325.P15558155545246514548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037325.P15558155545246514548

namespace A037325

/-- `eq[A053824(n)-A000007(n), A053830(n)]` -/
def P15558155545246514548.Spec : Prop :=
  ∀ n, (P15558155545246514548.a n : ℤ) = A037325 (n + 1)

end A037325

/-! ## A037325.P9115258116954463229

`eq[A053824(n)-A000038(n), A053830(n)]`
-/

namespace A037325.P9115258116954463229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037325.P9115258116954463229

namespace A037325

/-- `eq[A053824(n)-A000038(n), A053830(n)]` -/
def P9115258116954463229.Spec : Prop :=
  ∀ n, (P9115258116954463229.a n : ℤ) = A037325 (n + 1)

end A037325

/-! ## A037325.P13770871359431828232

`eq[A053824(A065033(2*n)), A053830(n)]`
-/

namespace A037325.P13770871359431828232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037325.P13770871359431828232

namespace A037325

/-- `eq[A053824(A065033(2*n)), A053830(n)]` -/
def P13770871359431828232.Spec : Prop :=
  ∀ n, (P13770871359431828232.a n : ℤ) = A037325 (n + 1)

end A037325

/-! ## A037325.P4937866764516408483

`eq[A053824(A008706(n)), A053830(n)]`
-/

namespace A037325.P4937866764516408483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037325.P4937866764516408483

namespace A037325

/-- `eq[A053824(A008706(n)), A053830(n)]` -/
def P4937866764516408483.Spec : Prop :=
  ∀ n, (P4937866764516408483.a n : ℤ) = A037325 (n + 1)

end A037325

/-!
# A037326: Numbers whose base-5 and base-10 expansions have the same digit sum.

The programs for A037326, the canonical program `A037326.P11070516741793264278` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037326 has offset 1).

The definition of A037326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037326.P11070516741793264278

`eq[A007953(n+1), A053824(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037326

/-- `eq[A007953(n+1), A053824(n+1)]+1` -/
def P11070516741793264278.Spec : Prop :=
  ∀ n, (P11070516741793264278.a n : ℤ) = A037326 (n + 1)

theorem P11070516741793264278.correct : P11070516741793264278.Spec := by
  intro n
  simp only [A037326, Nat.add_sub_cancel]

end A037326

/-! ## A037326.P5034810649114212155

`eq[A062028(n+1), A230865(n+1)]+1`
-/

namespace A037326.P5034810649114212155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037326.P5034810649114212155

namespace A037326

/-- `eq[A062028(n+1), A230865(n+1)]+1` -/
def P5034810649114212155.Spec : Prop :=
  ∀ n, (P5034810649114212155.a n : ℤ) = A037326 (n + 1)

end A037326

/-! ## A037326.P10637249993119768540

`eq[A007953(n), A053824(A028310(n))]`
-/

namespace A037326.P10637249993119768540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037326.P10637249993119768540

namespace A037326

/-- `eq[A007953(n), A053824(A028310(n))]` -/
def P10637249993119768540.Spec : Prop :=
  ∀ n, (P10637249993119768540.a n : ℤ) = A037326 (n + 1)

end A037326

/-! ## A037326.P16166078754120577057

`eq[A062028(A028310(n)), A230865(n)]`
-/

namespace A037326.P16166078754120577057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037326.P16166078754120577057

namespace A037326

/-- `eq[A062028(A028310(n)), A230865(n)]` -/
def P16166078754120577057.Spec : Prop :=
  ∀ n, (P16166078754120577057.a n : ℤ) = A037326 (n + 1)

end A037326

/-! ## A037326.P10475080232010093390

`eq[A004092(A008706(n)), A053824(n)]`
-/

namespace A037326.P10475080232010093390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037326.P10475080232010093390

namespace A037326

/-- `eq[A004092(A008706(n)), A053824(n)]` -/
def P10475080232010093390.Spec : Prop :=
  ∀ n, (P10475080232010093390.a n : ℤ) = A037326 (n + 1)

end A037326

/-! ## A037326.P17055525125663391810

`eq[A007953(n), A053824(A008706(n))]`
-/

namespace A037326.P17055525125663391810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037326.P17055525125663391810

namespace A037326

/-- `eq[A007953(n), A053824(A008706(n))]` -/
def P17055525125663391810.Spec : Prop :=
  ∀ n, (P17055525125663391810.a n : ℤ) = A037326 (n + 1)

end A037326

/-! ## A037326.P8032447042865737792

`eq[A004092(A008706(n))+n, A230865(n)]`
-/

namespace A037326.P8032447042865737792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037326.P8032447042865737792

namespace A037326

/-- `eq[A004092(A008706(n))+n, A230865(n)]` -/
def P8032447042865737792.Spec : Prop :=
  ∀ n, (P8032447042865737792.a n : ℤ) = A037326 (n + 1)

end A037326

/-!
# A037327: Numbers whose base-6 and base-7 expansions have the same digit sum.

The programs for A037327, the canonical program `A037327.P2711885308898884377` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037327 has offset 1).

The definition of A037327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037327.P2711885308898884377

`eq[A053827(abs(1-n)+1), A053828(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037327

/-- `eq[A053827(abs(1-n)+1), A053828(n)]` -/
def P2711885308898884377.Spec : Prop :=
  ∀ n, (P2711885308898884377.a n : ℤ) = A037327 (n + 1)

theorem P2711885308898884377.correct : P2711885308898884377.Spec := by
  intro n
  simp only [A037327, Nat.add_sub_cancel]

end A037327

/-! ## A037327.P6846083953625927807

`eq[A053827(n+1), A053828(n+1)]+1`
-/

namespace A037327.P6846083953625927807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037327.P6846083953625927807

namespace A037327

/-- `eq[A053827(n+1), A053828(n+1)]+1` -/
def P6846083953625927807.Spec : Prop :=
  ∀ n, (P6846083953625927807.a n : ℤ) = A037327 (n + 1)

end A037327

/-! ## A037327.P16803396213963855345

`eq[A028310(A053827(n)), A053828(n)]`
-/

namespace A037327.P16803396213963855345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053827 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P16803396213963855345

namespace A037327

/-- `eq[A028310(A053827(n)), A053828(n)]` -/
def P16803396213963855345.Spec : Prop :=
  ∀ n, (P16803396213963855345.a n : ℤ) = A037327 (n + 1)

end A037327

/-! ## A037327.P18077509010126607994

`eq[A053827(n)+A000038(n), A053828(n)]`
-/

namespace A037327.P18077509010126607994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n + A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P18077509010126607994

namespace A037327

/-- `eq[A053827(n)+A000038(n), A053828(n)]` -/
def P18077509010126607994.Spec : Prop :=
  ∀ n, (P18077509010126607994.a n : ℤ) = A037327 (n + 1)

end A037327

/-! ## A037327.P3897146413097593032

`eq[A053828(A028310(n))+1, A173526(n+1)]`
-/

namespace A037327.P3897146413097593032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P3897146413097593032

namespace A037327

/-- `eq[A053828(A028310(n))+1, A173526(n+1)]` -/
def P3897146413097593032.Spec : Prop :=
  ∀ n, (P3897146413097593032.a n : ℤ) = A037327 (n + 1)

end A037327

/-! ## A037327.P2526475533540772486

`eq[n-5*A054895(n), A053828(A028310(n))]`
-/

namespace A037327.P2526475533540772486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * A054895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P2526475533540772486

namespace A037327

/-- `eq[n-5*A054895(n), A053828(A028310(n))]` -/
def P2526475533540772486.Spec : Prop :=
  ∀ n, (P2526475533540772486.a n : ℤ) = A037327 (n + 1)

end A037327

/-! ## A037327.P9371926056603404253

`eq[n-6*A054896(n), A053827(A028310(n))]`
-/

namespace A037327.P9371926056603404253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6 * A054896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P9371926056603404253

namespace A037327

/-- `eq[n-6*A054896(n), A053827(A028310(n))]` -/
def P9371926056603404253.Spec : Prop :=
  ∀ n, (P9371926056603404253.a n : ℤ) = A037327 (n + 1)

end A037327

/-! ## A037327.P9783076610916840953

`eq[n-5*A054895(n), A028310(n-6*A054896(n))]`
-/

namespace A037327.P9783076610916840953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * A054895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - 6 * A054896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P9783076610916840953

namespace A037327

/-- `eq[n-5*A054895(n), A028310(n-6*A054896(n))]` -/
def P9783076610916840953.Spec : Prop :=
  ∀ n, (P9783076610916840953.a n : ℤ) = A037327 (n + 1)

end A037327

/-! ## A037327.P17783404734254271065

`eq[n-6*A054896(n), A053827(A008458(n))]`
-/

namespace A037327.P17783404734254271065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6 * A054896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037327.P17783404734254271065

namespace A037327

/-- `eq[n-6*A054896(n), A053827(A008458(n))]` -/
def P17783404734254271065.Spec : Prop :=
  ∀ n, (P17783404734254271065.a n : ℤ) = A037327 (n + 1)

end A037327

/-!
# A037328: Numbers whose base-6 and base-8 expansions have the same digit sum.

The programs for A037328, the canonical program `A037328.P5898598248866345973` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037328 has offset 1).

The definition of A037328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 733 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037328.P5898598248866345973

`eq[A053827(n+1), A053829(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037328

/-- `eq[A053827(n+1), A053829(n+1)]+1` -/
def P5898598248866345973.Spec : Prop :=
  ∀ n, (P5898598248866345973.a n : ℤ) = A037328 (n + 1)

theorem P5898598248866345973.correct : P5898598248866345973.Spec := by
  intro n
  simp only [A037328, Nat.add_sub_cancel]

end A037328

/-! ## A037328.P12097469433552441268

`eq[A053827(A028310(n)), A053829(n)]`
-/

namespace A037328.P12097469433552441268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037328.P12097469433552441268

namespace A037328

/-- `eq[A053827(A028310(n)), A053829(n)]` -/
def P12097469433552441268.Spec : Prop :=
  ∀ n, (P12097469433552441268.a n : ℤ) = A037328 (n + 1)

end A037328

/-! ## A037328.P7442565072226904451

`eq[A053827(A000007(n)+n), A053829(n)]`
-/

namespace A037328.P7442565072226904451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037328.P7442565072226904451

namespace A037328

/-- `eq[A053827(A000007(n)+n), A053829(n)]` -/
def P7442565072226904451.Spec : Prop :=
  ∀ n, (P7442565072226904451.a n : ℤ) = A037328 (n + 1)

end A037328

/-! ## A037328.P5328979922446185813

`eq[A053827(A000038(n)+n), A053829(n)]`
-/

namespace A037328.P5328979922446185813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037328.P5328979922446185813

namespace A037328

/-- `eq[A053827(A000038(n)+n), A053829(n)]` -/
def P5328979922446185813.Spec : Prop :=
  ∀ n, (P5328979922446185813.a n : ℤ) = A037328 (n + 1)

end A037328

/-! ## A037328.P16582791853740893971

`eq[A053827(n)-A000007(n), A053829(n)]`
-/

namespace A037328.P16582791853740893971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037328.P16582791853740893971

namespace A037328

/-- `eq[A053827(n)-A000007(n), A053829(n)]` -/
def P16582791853740893971.Spec : Prop :=
  ∀ n, (P16582791853740893971.a n : ℤ) = A037328 (n + 1)

end A037328

/-! ## A037328.P12916355164976052865

`eq[A053827(n)-A000038(n), A053829(n)]`
-/

namespace A037328.P12916355164976052865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037328.P12916355164976052865

namespace A037328

/-- `eq[A053827(n)-A000038(n), A053829(n)]` -/
def P12916355164976052865.Spec : Prop :=
  ∀ n, (P12916355164976052865.a n : ℤ) = A037328 (n + 1)

end A037328

/-! ## A037328.P4257004150650621372

`eq[A053827(A008458(n)), A053829(n)]`
-/

namespace A037328.P4257004150650621372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037328.P4257004150650621372

namespace A037328

/-- `eq[A053827(A008458(n)), A053829(n)]` -/
def P4257004150650621372.Spec : Prop :=
  ∀ n, (P4257004150650621372.a n : ℤ) = A037328 (n + 1)

end A037328

/-! ## A037328.P5092708222596523256

`eq[A053827(n), A053829(A022144(n))]`
-/

namespace A037328.P5092708222596523256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037328.P5092708222596523256

namespace A037328

/-- `eq[A053827(n), A053829(A022144(n))]` -/
def P5092708222596523256.Spec : Prop :=
  ∀ n, (P5092708222596523256.a n : ℤ) = A037328 (n + 1)

end A037328

/-!
# A037329: Numbers whose base-6 and base-9 expansions have the same digit sum.

The programs for A037329, the canonical program `A037329.P4618377847170052962` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037329 has offset 1).

The definition of A037329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037329.P4618377847170052962

`eq[A053827(n+1), A053830(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037329

/-- `eq[A053827(n+1), A053830(n+1)]+1` -/
def P4618377847170052962.Spec : Prop :=
  ∀ n, (P4618377847170052962.a n : ℤ) = A037329 (n + 1)

theorem P4618377847170052962.correct : P4618377847170052962.Spec := by
  intro n
  simp only [A037329, Nat.add_sub_cancel]

end A037329

/-! ## A037329.P11831224276781567645

`eq[A053827(A028310(n)), A053830(n)]`
-/

namespace A037329.P11831224276781567645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037329.P11831224276781567645

namespace A037329

/-- `eq[A053827(A028310(n)), A053830(n)]` -/
def P11831224276781567645.Spec : Prop :=
  ∀ n, (P11831224276781567645.a n : ℤ) = A037329 (n + 1)

end A037329

/-! ## A037329.P14221947498177522532

`eq[A053827(A000007(n)+n), A053830(n)]`
-/

namespace A037329.P14221947498177522532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037329.P14221947498177522532

namespace A037329

/-- `eq[A053827(A000007(n)+n), A053830(n)]` -/
def P14221947498177522532.Spec : Prop :=
  ∀ n, (P14221947498177522532.a n : ℤ) = A037329 (n + 1)

end A037329

/-! ## A037329.P17673305276950865717

`eq[A053827(A000038(n)+n), A053830(n)]`
-/

namespace A037329.P17673305276950865717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037329.P17673305276950865717

namespace A037329

/-- `eq[A053827(A000038(n)+n), A053830(n)]` -/
def P17673305276950865717.Spec : Prop :=
  ∀ n, (P17673305276950865717.a n : ℤ) = A037329 (n + 1)

end A037329

/-! ## A037329.P4166323654110988376

`eq[A053827(n)-A000007(n), A053830(n)]`
-/

namespace A037329.P4166323654110988376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037329.P4166323654110988376

namespace A037329

/-- `eq[A053827(n)-A000007(n), A053830(n)]` -/
def P4166323654110988376.Spec : Prop :=
  ∀ n, (P4166323654110988376.a n : ℤ) = A037329 (n + 1)

end A037329

/-! ## A037329.P12274698473692463099

`eq[A053827(n)-A000038(n), A053830(n)]`
-/

namespace A037329.P12274698473692463099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037329.P12274698473692463099

namespace A037329

/-- `eq[A053827(n)-A000038(n), A053830(n)]` -/
def P12274698473692463099.Spec : Prop :=
  ∀ n, (P12274698473692463099.a n : ℤ) = A037329 (n + 1)

end A037329

/-! ## A037329.P15405603276417411516

`eq[A053827(A008458(n)), A053830(n)]`
-/

namespace A037329.P15405603276417411516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037329.P15405603276417411516

namespace A037329

/-- `eq[A053827(A008458(n)), A053830(n)]` -/
def P15405603276417411516.Spec : Prop :=
  ∀ n, (P15405603276417411516.a n : ℤ) = A037329 (n + 1)

end A037329

/-!
# A037330: Numbers whose base-6 and base-10 expansions have the same digit sum.

The programs for A037330, the canonical program `A037330.P5230164147977362729` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037330 has offset 1).

The definition of A037330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037330.P5230164147977362729

`eq[A007953(n+1), A053827(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037330

/-- `eq[A007953(n+1), A053827(n+1)]+1` -/
def P5230164147977362729.Spec : Prop :=
  ∀ n, (P5230164147977362729.a n : ℤ) = A037330 (n + 1)

theorem P5230164147977362729.correct : P5230164147977362729.Spec := by
  intro n
  simp only [A037330, Nat.add_sub_cancel]

end A037330

/-! ## A037330.P7272011462126111196

`eq[A007953(n), A053827(A028310(n))]`
-/

namespace A037330.P7272011462126111196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037330.P7272011462126111196

namespace A037330

/-- `eq[A007953(n), A053827(A028310(n))]` -/
def P7272011462126111196.Spec : Prop :=
  ∀ n, (P7272011462126111196.a n : ℤ) = A037330 (n + 1)

end A037330

/-! ## A037330.P9957386346901823570

`eq[A007953(A000038(n)+n), A053827(n)]`
-/

namespace A037330.P9957386346901823570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037330.P9957386346901823570

namespace A037330

/-- `eq[A007953(A000038(n)+n), A053827(n)]` -/
def P9957386346901823570.Spec : Prop :=
  ∀ n, (P9957386346901823570.a n : ℤ) = A037330 (n + 1)

end A037330

/-! ## A037330.P11462721315602303267

`eq[A007953(n)-A000038(n), A053827(n)]`
-/

namespace A037330.P11462721315602303267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037330.P11462721315602303267

namespace A037330

/-- `eq[A007953(n)-A000038(n), A053827(n)]` -/
def P11462721315602303267.Spec : Prop :=
  ∀ n, (P11462721315602303267.a n : ℤ) = A037330 (n + 1)

end A037330

/-! ## A037330.P11868132734541338953

`eq[A004092(A008706(n)), A053827(n)]`
-/

namespace A037330.P11868132734541338953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037330.P11868132734541338953

namespace A037330

/-- `eq[A004092(A008706(n)), A053827(n)]` -/
def P11868132734541338953.Spec : Prop :=
  ∀ n, (P11868132734541338953.a n : ℤ) = A037330 (n + 1)

end A037330

/-! ## A037330.P8370391731122784158

`eq[A004155(A008706(n)), A173526(n+1)]`
-/

namespace A037330.P8370391731122784158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173526 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037330.P8370391731122784158

namespace A037330

/-- `eq[A004155(A008706(n)), A173526(n+1)]` -/
def P8370391731122784158.Spec : Prop :=
  ∀ n, (P8370391731122784158.a n : ℤ) = A037330 (n + 1)

end A037330

/-! ## A037330.P15672780444631045312

`eq[A007953(n), A053827(A008458(n))]`
-/

namespace A037330.P15672780444631045312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037330.P15672780444631045312

namespace A037330

/-- `eq[A007953(n), A053827(A008458(n))]` -/
def P15672780444631045312.Spec : Prop :=
  ∀ n, (P15672780444631045312.a n : ℤ) = A037330 (n + 1)

end A037330

/-!
# A037331: Numbers whose base-7 and base-8 expansions have the same digit sum.

The programs for A037331, the canonical program `A037331.P10183187185978453703` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037331 has offset 1).

The definition of A037331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 636 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037331.P9532805600817699182

`eq[A053828(n), A053829(abs(1-n)+1)]`
-/

namespace A037331.P9532805600817699182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037331.P9532805600817699182

namespace A037331

/-- `eq[A053828(n), A053829(abs(1-n)+1)]` -/
def P9532805600817699182.Spec : Prop :=
  ∀ n, (P9532805600817699182.a n : ℤ) = A037331 (n + 1)

end A037331

/-! ## A037331.P17398722451659355909

`eq[A053828(n+1), A053829(n+1)]+1`
-/

namespace A037331.P17398722451659355909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A037331.P17398722451659355909

namespace A037331

/-- `eq[A053828(n+1), A053829(n+1)]+1` -/
def P17398722451659355909.Spec : Prop :=
  ∀ n, (P17398722451659355909.a n : ℤ) = A037331 (n + 1)

end A037331

/-! ## A037331.P10673773492460430181

`eq[A028310(A053828(n)), A053829(n)]`
-/

namespace A037331.P10673773492460430181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A053828 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037331.P10673773492460430181

namespace A037331

/-- `eq[A028310(A053828(n)), A053829(n)]` -/
def P10673773492460430181.Spec : Prop :=
  ∀ n, (P10673773492460430181.a n : ℤ) = A037331 (n + 1)

end A037331

/-! ## A037331.P10183187185978453703

`eq[A053828(A028310(n))+1, A173528(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037331

/-- `eq[A053828(A028310(n))+1, A173528(n+1)]` -/
def P10183187185978453703.Spec : Prop :=
  ∀ n, (P10183187185978453703.a n : ℤ) = A037331 (n + 1)

theorem P10183187185978453703.correct : P10183187185978453703.Spec := by
  intro n
  simp only [A037331, Nat.add_sub_cancel]

end A037331

/-! ## A037331.P12751914494825682722

`eq[n-6*A054896(n), A053829(A028310(n))]`
-/

namespace A037331.P12751914494825682722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6 * A054896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037331.P12751914494825682722

namespace A037331

/-- `eq[n-6*A054896(n), A053829(A028310(n))]` -/
def P12751914494825682722.Spec : Prop :=
  ∀ n, (P12751914494825682722.a n : ℤ) = A037331 (n + 1)

end A037331

/-! ## A037331.P7261935034776797636

`eq[n-7*A054897(n), A053828(A028310(n))]`
-/

namespace A037331.P7261935034776797636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 7 * A054897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037331.P7261935034776797636

namespace A037331

/-- `eq[n-7*A054897(n), A053828(A028310(n))]` -/
def P7261935034776797636.Spec : Prop :=
  ∀ n, (P7261935034776797636.a n : ℤ) = A037331 (n + 1)

end A037331

/-! ## A037331.P1079110066057801422

`eq[A173528(n+1)-1, A028310(n-6*A054896(n))]`
-/

namespace A037331.P1079110066057801422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173528 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - 6 * A054896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037331.P1079110066057801422

namespace A037331

/-- `eq[A173528(n+1)-1, A028310(n-6*A054896(n))]` -/
def P1079110066057801422.Spec : Prop :=
  ∀ n, (P1079110066057801422.a n : ℤ) = A037331 (n + 1)

end A037331

/-!
# A037332: Numbers whose base-7 and base-9 expansions have the same digit sum.

The programs for A037332, the canonical program `A037332.P18075326861071859961` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037332 has offset 1).

The definition of A037332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037332.P18075326861071859961

`eq[A053828(n+1), A053830(n+1)]+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037332

/-- `eq[A053828(n+1), A053830(n+1)]+1` -/
def P18075326861071859961.Spec : Prop :=
  ∀ n, (P18075326861071859961.a n : ℤ) = A037332 (n + 1)

theorem P18075326861071859961.correct : P18075326861071859961.Spec := by
  intro n
  simp only [A037332, Nat.add_sub_cancel]

end A037332

/-! ## A037332.P9185963410753093985

`eq[A053828(A028310(n)), A053830(n)]`
-/

namespace A037332.P9185963410753093985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037332.P9185963410753093985

namespace A037332

/-- `eq[A053828(A028310(n)), A053830(n)]` -/
def P9185963410753093985.Spec : Prop :=
  ∀ n, (P9185963410753093985.a n : ℤ) = A037332 (n + 1)

end A037332

/-! ## A037332.P1614048581738871306

`eq[A053828(n), A137735(A053830(n)²)]`
-/

namespace A037332.P1614048581738871306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A053830 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037332.P1614048581738871306

namespace A037332

/-- `eq[A053828(n), A137735(A053830(n)²)]` -/
def P1614048581738871306.Spec : Prop :=
  ∀ n, (P1614048581738871306.a n : ℤ) = A037332 (n + 1)

end A037332

/-! ## A037332.P16404971893237529808

`eq[A053828(A000038(n)+n), A053830(n)]`
-/

namespace A037332.P16404971893237529808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037332.P16404971893237529808

namespace A037332

/-- `eq[A053828(A000038(n)+n), A053830(n)]` -/
def P16404971893237529808.Spec : Prop :=
  ∀ n, (P16404971893237529808.a n : ℤ) = A037332 (n + 1)

end A037332

/-! ## A037332.P6684694851265053476

`eq[A053828(n)-A000038(n), A053830(n)]`
-/

namespace A037332.P6684694851265053476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037332.P6684694851265053476

namespace A037332

/-- `eq[A053828(n)-A000038(n), A053830(n)]` -/
def P6684694851265053476.Spec : Prop :=
  ∀ n, (P6684694851265053476.a n : ℤ) = A037332 (n + 1)

end A037332

/-! ## A037332.P5775980698911518004

`eq[A053828(A065033(2*n)), A053830(n)]`
-/

namespace A037332.P5775980698911518004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037332.P5775980698911518004

namespace A037332

/-- `eq[A053828(A065033(2*n)), A053830(n)]` -/
def P5775980698911518004.Spec : Prop :=
  ∀ n, (P5775980698911518004.a n : ℤ) = A037332 (n + 1)

end A037332

/-!
# A037333: Numbers whose base-7 and base-10 expansions have the same digit sum.

The programs for A037333, the canonical program `A037333.P9690759292249465831` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037333 has offset 1).

The definition of A037333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037333.P9690759292249465831

`eq[A007953(n+1), A053828(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037333

/-- `eq[A007953(n+1), A053828(n+1)]+1` -/
def P9690759292249465831.Spec : Prop :=
  ∀ n, (P9690759292249465831.a n : ℤ) = A037333 (n + 1)

theorem P9690759292249465831.correct : P9690759292249465831.Spec := by
  intro n
  simp only [A037333, Nat.add_sub_cancel]

end A037333

/-! ## A037333.P17531934796299040680

`eq[A007953(n), A053828(A028310(n))]`
-/

namespace A037333.P17531934796299040680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P17531934796299040680

namespace A037333

/-- `eq[A007953(n), A053828(A028310(n))]` -/
def P17531934796299040680.Spec : Prop :=
  ∀ n, (P17531934796299040680.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P12620137989617501428

`eq[A053828(n), A137735(A118881(n))]`
-/

namespace A037333.P12620137989617501428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P12620137989617501428

namespace A037333

/-- `eq[A053828(n), A137735(A118881(n))]` -/
def P12620137989617501428.Spec : Prop :=
  ∀ n, (P12620137989617501428.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P1367442016751185019

`eq[A171559(A053828(n)), A329562(n)]`
-/

namespace A037333.P1367442016751185019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (A053828 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P1367442016751185019

namespace A037333

/-- `eq[A171559(A053828(n)), A329562(n)]` -/
def P1367442016751185019.Spec : Prop :=
  ∀ n, (P1367442016751185019.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P5238380440969220960

`eq[A007953(n), A137735(A053828(n)²)]`
-/

namespace A037333.P5238380440969220960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A053828 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P5238380440969220960

namespace A037333

/-- `eq[A007953(n), A137735(A053828(n)²)]` -/
def P5238380440969220960.Spec : Prop :=
  ∀ n, (P5238380440969220960.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P9212687972124204487

`eq[A007953(A000007(n)+n), A053828(n)]`
-/

namespace A037333.P9212687972124204487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P9212687972124204487

namespace A037333

/-- `eq[A007953(A000007(n)+n), A053828(n)]` -/
def P9212687972124204487.Spec : Prop :=
  ∀ n, (P9212687972124204487.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P11983658336198607262

`eq[A007953(A000038(n)+n), A053828(n)]`
-/

namespace A037333.P11983658336198607262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P11983658336198607262

namespace A037333

/-- `eq[A007953(A000038(n)+n), A053828(n)]` -/
def P11983658336198607262.Spec : Prop :=
  ∀ n, (P11983658336198607262.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P11587603301962238518

`eq[A007953(n)-A000007(n), A053828(n)]`
-/

namespace A037333.P11587603301962238518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P11587603301962238518

namespace A037333

/-- `eq[A007953(n)-A000007(n), A053828(n)]` -/
def P11587603301962238518.Spec : Prop :=
  ∀ n, (P11587603301962238518.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P18380021271949158117

`eq[A007953(n)-A000038(n), A053828(n)]`
-/

namespace A037333.P18380021271949158117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P18380021271949158117

namespace A037333

/-- `eq[A007953(n)-A000038(n), A053828(n)]` -/
def P18380021271949158117.Spec : Prop :=
  ∀ n, (P18380021271949158117.a n : ℤ) = A037333 (n + 1)

end A037333

/-! ## A037333.P7865514649158694495

`eq[A004092(A008706(n)), A053828(n)]`
-/

namespace A037333.P7865514649158694495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037333.P7865514649158694495

namespace A037333

/-- `eq[A004092(A008706(n)), A053828(n)]` -/
def P7865514649158694495.Spec : Prop :=
  ∀ n, (P7865514649158694495.a n : ℤ) = A037333 (n + 1)

end A037333

/-!
# A037334: Numbers whose base-8 and base-9 expansions have the same digit sum.

The programs for A037334, the canonical program `A037334.P9109918387143520907` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037334 has offset 1).

The definition of A037334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037334.P9109918387143520907

`eq[A053829(n+1), A053830(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037334

/-- `eq[A053829(n+1), A053830(n+1)]+1` -/
def P9109918387143520907.Spec : Prop :=
  ∀ n, (P9109918387143520907.a n : ℤ) = A037334 (n + 1)

theorem P9109918387143520907.correct : P9109918387143520907.Spec := by
  intro n
  simp only [A037334, Nat.add_sub_cancel]

end A037334

/-! ## A037334.P8076247338217351619

`eq[A053829(A028310(n)), A053830(n)]`
-/

namespace A037334.P8076247338217351619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P8076247338217351619

namespace A037334

/-- `eq[A053829(A028310(n)), A053830(n)]` -/
def P8076247338217351619.Spec : Prop :=
  ∀ n, (P8076247338217351619.a n : ℤ) = A037334 (n + 1)

end A037334

/-! ## A037334.P6889099590519270839

`eq[A053829(A000007(n)+n), A053830(n)]`
-/

namespace A037334.P6889099590519270839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P6889099590519270839

namespace A037334

/-- `eq[A053829(A000007(n)+n), A053830(n)]` -/
def P6889099590519270839.Spec : Prop :=
  ∀ n, (P6889099590519270839.a n : ℤ) = A037334 (n + 1)

end A037334

/-! ## A037334.P13721826370193060768

`eq[A053829(A000038(n)+n), A053830(n)]`
-/

namespace A037334.P13721826370193060768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P13721826370193060768

namespace A037334

/-- `eq[A053829(A000038(n)+n), A053830(n)]` -/
def P13721826370193060768.Spec : Prop :=
  ∀ n, (P13721826370193060768.a n : ℤ) = A037334 (n + 1)

end A037334

/-! ## A037334.P17174194556790474657

`eq[A053829(n)-A000007(n), A053830(n)]`
-/

namespace A037334.P17174194556790474657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P17174194556790474657

namespace A037334

/-- `eq[A053829(n)-A000007(n), A053830(n)]` -/
def P17174194556790474657.Spec : Prop :=
  ∀ n, (P17174194556790474657.a n : ℤ) = A037334 (n + 1)

end A037334

/-! ## A037334.P17373940286353072568

`eq[A053829(n)-A000038(n), A053830(n)]`
-/

namespace A037334.P17373940286353072568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P17373940286353072568

namespace A037334

/-- `eq[A053829(n)-A000038(n), A053830(n)]` -/
def P17373940286353072568.Spec : Prop :=
  ∀ n, (P17373940286353072568.a n : ℤ) = A037334 (n + 1)

end A037334

/-! ## A037334.P16209243944117832562

`eq[A053829(n), A053830(A022144(n)+n)]`
-/

namespace A037334.P16209243944117832562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A022144 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P16209243944117832562

namespace A037334

/-- `eq[A053829(n), A053830(A022144(n)+n)]` -/
def P16209243944117832562.Spec : Prop :=
  ∀ n, (P16209243944117832562.a n : ℤ) = A037334 (n + 1)

end A037334

/-! ## A037334.P6818601632939794339

`eq[A053829(A065033(2*n)), A053830(n)]`
-/

namespace A037334.P6818601632939794339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P6818601632939794339

namespace A037334

/-- `eq[A053829(A065033(2*n)), A053830(n)]` -/
def P6818601632939794339.Spec : Prop :=
  ∀ n, (P6818601632939794339.a n : ℤ) = A037334 (n + 1)

end A037334

/-! ## A037334.P15871514204770659592

`eq[A053829(A022144(n)), A053830(n)]`
-/

namespace A037334.P15871514204770659592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A022144 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037334.P15871514204770659592

namespace A037334

/-- `eq[A053829(A022144(n)), A053830(n)]` -/
def P15871514204770659592.Spec : Prop :=
  ∀ n, (P15871514204770659592.a n : ℤ) = A037334 (n + 1)

end A037334

/-!
# A037335: Numbers whose base-8 and base-10 expansions have the same digit sum.

The programs for A037335, the canonical program `A037335.P16214437495867601186` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037335 has offset 1).

The definition of A037335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037335.P16214437495867601186

`eq[A007953(n+1), A053829(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037335

/-- `eq[A007953(n+1), A053829(n+1)]+1` -/
def P16214437495867601186.Spec : Prop :=
  ∀ n, (P16214437495867601186.a n : ℤ) = A037335 (n + 1)

theorem P16214437495867601186.correct : P16214437495867601186.Spec := by
  intro n
  simp only [A037335, Nat.add_sub_cancel]

end A037335

/-! ## A037335.P17361749414888522847

`eq[A007953(n), A053829(A028310(n))]`
-/

namespace A037335.P17361749414888522847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037335.P17361749414888522847

namespace A037335

/-- `eq[A007953(n), A053829(A028310(n))]` -/
def P17361749414888522847.Spec : Prop :=
  ∀ n, (P17361749414888522847.a n : ℤ) = A037335 (n + 1)

end A037335

/-! ## A037335.P8010543129855299705

`eq[A053829(n), A137735(A118881(n))]`
-/

namespace A037335.P8010543129855299705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037335.P8010543129855299705

namespace A037335

/-- `eq[A053829(n), A137735(A118881(n))]` -/
def P8010543129855299705.Spec : Prop :=
  ∀ n, (P8010543129855299705.a n : ℤ) = A037335 (n + 1)

end A037335

/-! ## A037335.P5621848777812462892

`eq[A171559(A053829(n)), A329562(n)]`
-/

namespace A037335.P5621848777812462892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171559 (A053829 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329562 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037335.P5621848777812462892

namespace A037335

/-- `eq[A171559(A053829(n)), A329562(n)]` -/
def P5621848777812462892.Spec : Prop :=
  ∀ n, (P5621848777812462892.a n : ℤ) = A037335 (n + 1)

end A037335

/-! ## A037335.P16769391484976670044

`eq[A007953(A000038(n)+n), A053829(n)]`
-/

namespace A037335.P16769391484976670044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037335.P16769391484976670044

namespace A037335

/-- `eq[A007953(A000038(n)+n), A053829(n)]` -/
def P16769391484976670044.Spec : Prop :=
  ∀ n, (P16769391484976670044.a n : ℤ) = A037335 (n + 1)

end A037335

/-! ## A037335.P15311430750714257243

`eq[A007953(n)-A000038(n), A053829(n)]`
-/

namespace A037335.P15311430750714257243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037335.P15311430750714257243

namespace A037335

/-- `eq[A007953(n)-A000038(n), A053829(n)]` -/
def P15311430750714257243.Spec : Prop :=
  ∀ n, (P15311430750714257243.a n : ℤ) = A037335 (n + 1)

end A037335

/-! ## A037335.P7602956744271302837

`eq[A004092(A008706(n)), A053829(n)]`
-/

namespace A037335.P7602956744271302837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037335.P7602956744271302837

namespace A037335

/-- `eq[A004092(A008706(n)), A053829(n)]` -/
def P7602956744271302837.Spec : Prop :=
  ∀ n, (P7602956744271302837.a n : ℤ) = A037335 (n + 1)

end A037335

/-! ## A037335.P13906662443384274202

`eq[A007953(n), A053829(A022144(n))]`
-/

namespace A037335.P13906662443384274202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037335.P13906662443384274202

namespace A037335

/-- `eq[A007953(n), A053829(A022144(n))]` -/
def P13906662443384274202.Spec : Prop :=
  ∀ n, (P13906662443384274202.a n : ℤ) = A037335 (n + 1)

end A037335

/-!
# A037336: Numbers whose base-9 and base-10 expansions have the same digit sum.

The programs for A037336, the canonical program `A037336.P7361509405523581352` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037336 has offset 1).

The definition of A037336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037336.P7361509405523581352

`eq[A007953(n+1), A053830(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037336

/-- `eq[A007953(n+1), A053830(n+1)]+1` -/
def P7361509405523581352.Spec : Prop :=
  ∀ n, (P7361509405523581352.a n : ℤ) = A037336 (n + 1)

theorem P7361509405523581352.correct : P7361509405523581352.Spec := by
  intro n
  simp only [A037336, Nat.add_sub_cancel]

end A037336

/-! ## A037336.P11382224529745716886

`eq[A007953(n), A053830(A028310(n))]`
-/

namespace A037336.P11382224529745716886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037336.P11382224529745716886

namespace A037336

/-- `eq[A007953(n), A053830(A028310(n))]` -/
def P11382224529745716886.Spec : Prop :=
  ∀ n, (P11382224529745716886.a n : ℤ) = A037336 (n + 1)

end A037336

/-! ## A037336.P14549602407589897502

`eq[A053830(n), A123108(2*A007953(n))]`
-/

namespace A037336.P14549602407589897502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037336.P14549602407589897502

namespace A037336

/-- `eq[A053830(n), A123108(2*A007953(n))]` -/
def P14549602407589897502.Spec : Prop :=
  ∀ n, (P14549602407589897502.a n : ℤ) = A037336 (n + 1)

end A037336

/-! ## A037336.P10957526605775868595

`eq[2*A053830(A028310(n)), A169805(n)]`
-/

namespace A037336.P10957526605775868595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053830 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037336.P10957526605775868595

namespace A037336

/-- `eq[2*A053830(A028310(n)), A169805(n)]` -/
def P10957526605775868595.Spec : Prop :=
  ∀ n, (P10957526605775868595.a n : ℤ) = A037336 (n + 1)

end A037336

/-! ## A037336.P8438684010599869663

`eq[A169805(A028310(n))/2, A053830(n)]`
-/

namespace A037336.P8438684010599869663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (A028310 n).toNat : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A037336.P8438684010599869663

namespace A037336

/-- `eq[A169805(A028310(n))/2, A053830(n)]` -/
def P8438684010599869663.Spec : Prop :=
  ∀ n, (P8438684010599869663.a n : ℤ) = A037336 (n + 1)

end A037336

/-! ## A037336.P2244186895814292198

`eq[A007953(A000007(n)+n), A053830(n)]`
-/

namespace A037336.P2244186895814292198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037336.P2244186895814292198

namespace A037336

/-- `eq[A007953(A000007(n)+n), A053830(n)]` -/
def P2244186895814292198.Spec : Prop :=
  ∀ n, (P2244186895814292198.a n : ℤ) = A037336 (n + 1)

end A037336

/-! ## A037336.P3487260546984872906

`eq[A007953(n)-A000007(n), A053830(n)]`
-/

namespace A037336.P3487260546984872906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037336.P3487260546984872906

namespace A037336

/-- `eq[A007953(n)-A000007(n), A053830(n)]` -/
def P3487260546984872906.Spec : Prop :=
  ∀ n, (P3487260546984872906.a n : ℤ) = A037336 (n + 1)

end A037336

/-! ## A037336.P8640044235184784008

`eq[A160942(n+1)/(n+1), A053830(A028310(n))]`
-/

namespace A037336.P8640044235184784008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160942 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A037336.P8640044235184784008

namespace A037336

/-- `eq[A160942(n+1)/(n+1), A053830(A028310(n))]` -/
def P8640044235184784008.Spec : Prop :=
  ∀ n, (P8640044235184784008.a n : ℤ) = A037336 (n + 1)

end A037336

/-! ## A037336.P4677070346346297263

`eq[A004092(A008706(n)), A053830(n)]`
-/

namespace A037336.P4677070346346297263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (A008706 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037336.P4677070346346297263

namespace A037336

/-- `eq[A004092(A008706(n)), A053830(n)]` -/
def P4677070346346297263.Spec : Prop :=
  ∀ n, (P4677070346346297263.a n : ℤ) = A037336 (n + 1)

end A037336

/-!
# A037337: Numbers whose base-9 and base-10 expansions have no digits in common.

The programs for A037337, there is no canonical definition to state claims against.
-/

/-! ## A037337.P5732802829731218577

`∑[dr(A226090(A236602(n+1)))]`
-/

namespace A037337.P5732802829731218577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A226090 (A236602 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037337.P5732802829731218577

/-! ## A037337.P7946855010440923370

`lt[A000032(A136713(n+4)), A136713(n)]`
-/

namespace A037337.P7946855010440923370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A136713 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037337.P7946855010440923370

/-! ## A037337.P2801037315294818333

`A053645(lt[A378538(n+1), A288942(2*n+3)])`
-/

namespace A037337.P2801037315294818333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037337.P2801037315294818333

/-!
# A037340: Numbers whose base-2 and base-6 expansions have no digits in common.

The programs for A037340, the canonical program `A037340.P11038555772765492057` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037340 has offset 1).

The definition of A037340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037340.P11038555772765492057

`eq[0, A276729(A202267(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037340

/-- `eq[0, A276729(A202267(n+1))]` -/
def P11038555772765492057.Spec : Prop :=
  ∀ n, (P11038555772765492057.a n : ℤ) = A037340 (n + 1)

theorem P11038555772765492057.correct : P11038555772765492057.Spec := by
  intro n
  simp only [A037340, Nat.add_sub_cancel]

end A037340

/-! ## A037340.P10384546124902423787

`eq[A007092(n), A222210(A007092(n))]`
-/

namespace A037340.P10384546124902423787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037340.P10384546124902423787

namespace A037340

/-- `eq[A007092(n), A222210(A007092(n))]` -/
def P10384546124902423787.Spec : Prop :=
  ∀ n, (P10384546124902423787.a n : ℤ) = A037340 (n + 1)

end A037340

/-! ## A037340.P4511836805398847947

`eq[A035043(A256306(n)), A256306(n)]`
-/

namespace A037340.P4511836805398847947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A256306 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037340.P4511836805398847947

namespace A037340

/-- `eq[A035043(A256306(n)), A256306(n)]` -/
def P4511836805398847947.Spec : Prop :=
  ∀ n, (P4511836805398847947.a n : ℤ) = A037340 (n + 1)

end A037340

/-! ## A037340.P604649527588794974

`eq[A084984(n+1), A222210(A084984(n+1))]`
-/

namespace A037340.P604649527588794974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A084984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037340.P604649527588794974

namespace A037340

/-- `eq[A084984(n+1), A222210(A084984(n+1))]` -/
def P604649527588794974.Spec : Prop :=
  ∀ n, (P604649527588794974.a n : ℤ) = A037340 (n + 1)

end A037340

/-! ## A037340.P18403973629154195476

`eq[A084984(n+1), A222211(A276138(n+1))]`
-/

namespace A037340.P18403973629154195476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A276138 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037340.P18403973629154195476

namespace A037340

/-- `eq[A084984(n+1), A222211(A276138(n+1))]` -/
def P18403973629154195476.Spec : Prop :=
  ∀ n, (P18403973629154195476.a n : ℤ) = A037340 (n + 1)

end A037340

/-! ## A037340.P5813243834750456612

`eq[A137386(n+1), A222210(A137386(n+1))]`
-/

namespace A037340.P5813243834750456612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A137386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037340.P5813243834750456612

namespace A037340

/-- `eq[A137386(n+1), A222210(A137386(n+1))]` -/
def P5813243834750456612.Spec : Prop :=
  ∀ n, (P5813243834750456612.a n : ℤ) = A037340 (n + 1)

end A037340

/-!
# A037341: Numbers whose base-2 and base-7 expansions have no digits in common.

The programs for A037341, the canonical program `A037341.P3346706287896231561` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037341 has offset 1).

The definition of A037341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037341.P3346706287896231561

`A249102(A248910(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037341

/-- `A249102(A248910(n+1)+1)` -/
def P3346706287896231561.Spec : Prop :=
  ∀ n, P3346706287896231561.a n = A037341 (n + 1)

theorem P3346706287896231561.correct : P3346706287896231561.Spec := by
  intro n
  simp only [A037341, Nat.add_sub_cancel]

end A037341

/-! ## A037341.P15041018257361597320

`∩[A039030(n+1), A249102(n+1)]`
-/

namespace A037341.P15041018257361597320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037341.P15041018257361597320

namespace A037341

/-- `∩[A039030(n+1), A249102(n+1)]` -/
def P15041018257361597320.Spec : Prop :=
  ∀ n, (P15041018257361597320.a n : ℤ) = A037341 (n + 1)

end A037341

/-! ## A037341.P14525833822755750816

`∩[A039030(n+1), A382412(n+1)]`
-/

namespace A037341.P14525833822755750816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037341.P14525833822755750816

namespace A037341

/-- `∩[A039030(n+1), A382412(n+1)]` -/
def P14525833822755750816.Spec : Prop :=
  ∀ n, (P14525833822755750816.a n : ℤ) = A037341 (n + 1)

end A037341

/-! ## A037341.P13777207060361563918

`∩[A249102(n+1), A382412(n+1)]`
-/

namespace A037341.P13777207060361563918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037341.P13777207060361563918

namespace A037341

/-- `∩[A249102(n+1), A382412(n+1)]` -/
def P13777207060361563918.Spec : Prop :=
  ∀ n, (P13777207060361563918.a n : ℤ) = A037341 (n + 1)

end A037341

/-! ## A037341.P5721352671739800749

`eq[A007093(n), A222210(A007093(n))]`
-/

namespace A037341.P5721352671739800749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037341.P5721352671739800749

namespace A037341

/-- `eq[A007093(n), A222210(A007093(n))]` -/
def P5721352671739800749.Spec : Prop :=
  ∀ n, (P5721352671739800749.a n : ℤ) = A037341 (n + 1)

end A037341

/-! ## A037341.P2833589822323521995

`eq[A028374(n+1), A222211(A028374(n+1))]`
-/

namespace A037341.P2833589822323521995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A028374 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037341.P2833589822323521995

namespace A037341

/-- `eq[A028374(n+1), A222211(A028374(n+1))]` -/
def P2833589822323521995.Spec : Prop :=
  ∀ n, (P2833589822323521995.a n : ℤ) = A037341 (n + 1)

end A037341

/-! ## A037341.P5318463181738255507

`eq[A168501(n+1), A222210(A168501(n+1))]`
-/

namespace A037341.P5318463181738255507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A168501 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037341.P5318463181738255507

namespace A037341

/-- `eq[A168501(n+1), A222210(A168501(n+1))]` -/
def P5318463181738255507.Spec : Prop :=
  ∀ n, (P5318463181738255507.a n : ℤ) = A037341 (n + 1)

end A037341

/-! ## A037341.P3340486905236650152

`eq[A222210(A307913(n+1)), A307913(n+1)]`
-/

namespace A037341.P3340486905236650152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A307913 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037341.P3340486905236650152

namespace A037341

/-- `eq[A222210(A307913(n+1)), A307913(n+1)]` -/
def P3340486905236650152.Spec : Prop :=
  ∀ n, (P3340486905236650152.a n : ℤ) = A037341 (n + 1)

end A037341

/-!
# A037342: Numbers whose base-2 and base-8 expansions have no digits in common.

The programs for A037342, there is no canonical definition to state claims against.
-/

/-! ## A037342.P16594195924494414999

`∩[A039050(n+1), A255805(n+1)]`
-/

namespace A037342.P16594195924494414999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037342.P16594195924494414999

/-! ## A037342.P16215475695999025402

`lt[1, A054054(A007094(n))]`
-/

namespace A037342.P16215475695999025402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037342.P16215475695999025402

/-! ## A037342.P15747949941048225824

`lt[1, A054054(record[A222253(n)])]`
-/

namespace A037342.P15747949941048225824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037342.P15747949941048225824

/-! ## A037342.P10026503926811428797

`lt[1, A054054(lt[A054055(n), 8])]`
-/

namespace A037342.P10026503926811428797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037342.P10026503926811428797

/-! ## A037342.P18055537896527911403

`lt[1, A054054(eq[n, A222254(n)])]`
-/

namespace A037342.P18055537896527911403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037342.P18055537896527911403

/-! ## A037342.P8389158598313104050

`lt[1, A054054(lt[A004185(n)%10, 8])]`
-/

namespace A037342.P8389158598313104050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 n) 10

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037342.P8389158598313104050

/-! ## A037342.P12048433912314372009

`lt[1, A054054(lt[A047842(n)%10, 8])]`
-/

namespace A037342.P12048433912314372009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037342.P12048433912314372009

/-! ## A037342.P8159306515214582028

`lt[1, A054054(lt[(n-A193581(n))%10, 8])]`
-/

namespace A037342.P8159306515214582028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A193581 n) 10

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037342.P8159306515214582028

/-! ## A037342.P1348681287391841934

`A028903(eq[n, A222254(A222210(n))])`
-/

namespace A037342.P1348681287391841934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222210 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037342.P1348681287391841934

/-! ## A037342.P18380028570987513225

`eq[A035043(A256308(n)), A256308(n)]`
-/

namespace A037342.P18380028570987513225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A256308 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037342.P18380028570987513225

/-!
# A037343: Numbers whose base-2 and base-9 expansions have no digits in common.

The programs for A037343, there is no canonical definition to state claims against.
-/

/-! ## A037343.P15596823790365415884

`lt[A332065(n+1), A055015(A265523(n))]`
-/

namespace A037343.P15596823790365415884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055015 (A265523 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037343.P15596823790365415884

/-! ## A037343.P1649978061625913375

`lt[A276326(A285189(n+1)), A062690(A265523(n))]`
-/

namespace A037343.P1649978061625913375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276326 (A285189 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 (A265523 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037343.P1649978061625913375

/-! ## A037343.P3767831113656294456

`eq[A171717(n), A222210(A171717(n))]`
-/

namespace A037343.P3767831113656294456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037343.P3767831113656294456

/-! ## A037343.P16729628338159142724

`eq[A114099(2*n), A268643(A171717(n))]`
-/

namespace A037343.P16729628338159142724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037343.P16729628338159142724

/-! ## A037343.P15396907749952945621

`eq[A114099(n)/2, A268643(A171717(n))]`
-/

namespace A037343.P15396907749952945621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114099 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A171717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A037343.P15396907749952945621

/-!
# A037347: Numbers whose base-3 and base-6 expansions have no digits in common.

The programs for A037347, there is no canonical definition to state claims against.
-/

/-! ## A037347.P1016266902934424985

`eq[2, A248034(n-n%3)]`
-/

namespace A037347.P1016266902934424985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 (n - n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037347.P1016266902934424985

/-! ## A037347.P16869730271055838023

`eq[3, A063274(∏[2-n²%3]-1)]`
-/

namespace A037347.P16869730271055838023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063274 (∏ j ∈ Finset.range (n + 1), f3 j - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A037347.P16869730271055838023

/-! ## A037347.P14237845805608427417

`lt[2, A010875(A265517(n))]`
-/

namespace A037347.P14237845805608427417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A265517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037347.P14237845805608427417

/-! ## A037347.P12196321546622329023

`record[A039573(A139094(n+1))]`
-/

namespace A037347.P12196321546622329023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039573 (A139094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037347.P12196321546622329023

/-! ## A037347.P5025878575422509198

`∩[A039573(n+1), A055572(n)]`
-/

namespace A037347.P5025878575422509198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037347.P5025878575422509198

/-!
# A037348: Numbers whose base-3 and base-7 expansions have no digits in common.

The programs for A037348, there is no canonical definition to state claims against.
-/

/-! ## A037348.P14307569009726826876

`∑[gcd(A124640(n+1), A124660(n+3))]`
-/

namespace A037348.P14307569009726826876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124640 (n + 1)) (A124660 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037348.P14307569009726826876

/-! ## A037348.P8098724305261243435

`eq[A257684(n), A367905(A293663(n+1))]`
-/

namespace A037348.P8098724305261243435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (A293663 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037348.P8098724305261243435

/-!
# A037349: Numbers whose base-3 and base-8 expansions have no digits in common.

The programs for A037349, there is no canonical definition to state claims against.
-/

/-! ## A037349.P12701395974193712705

`∑[gcd(A029518(3*n+5), A249825(n+3))]`
-/

namespace A037349.P12701395974193712705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029518 (3 * n + 5)) (A249825 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037349.P12701395974193712705

/-! ## A037349.P9829610748928975533

`∑[A078688(A286783(n))]`
-/

namespace A037349.P9829610748928975533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078688 (A286783 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037349.P9829610748928975533

/-! ## A037349.P1290511227353690389

`A201647(A265834(n))+n`
-/

namespace A037349.P1290511227353690389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201647 (A265834 n).toNat + (n : ℤ)

end

end A037349.P1290511227353690389

/-! ## A037349.P17975222922175202430

`∑[gcd(A065091(n+1), A193109(n+1))]`
-/

namespace A037349.P17975222922175202430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065091 (n + 1)) (A193109 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037349.P17975222922175202430

/-!
# A037350: Numbers whose base-3 and base-9 expansions have no digits in common.

The programs for A037350, the canonical program `A037350.P2569689792695505337` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037350 has offset 1).

The definition of A037350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037350.P9847564002459405019

`∩[A037343(n+1), A039078(n+1)]`
-/

namespace A037350.P9847564002459405019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037350.P9847564002459405019

namespace A037350

/-- `∩[A037343(n+1), A039078(n+1)]` -/
def P9847564002459405019.Spec : Prop :=
  ∀ n, (P9847564002459405019.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P3189948129095165349

`lt[2, A054054(A007095(n))]`
-/

namespace A037350.P3189948129095165349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037350.P3189948129095165349

namespace A037350

/-- `lt[2, A054054(A007095(n))]` -/
def P3189948129095165349.Spec : Prop :=
  ∀ n, (P3189948129095165349.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P15618109213937172646

`lt[2, A054054(record[A004184(n)])]`
-/

namespace A037350.P15618109213937172646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037350.P15618109213937172646

namespace A037350

/-- `lt[2, A054054(record[A004184(n)])]` -/
def P15618109213937172646.Spec : Prop :=
  ∀ n, (P15618109213937172646.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P3782376447493149163

`lt[2, A054054(lt[A054055(n), 9])]`
-/

namespace A037350.P3782376447493149163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037350.P3782376447493149163

namespace A037350

/-- `lt[2, A054054(lt[A054055(n), 9])]` -/
def P3782376447493149163.Spec : Prop :=
  ∀ n, (P3782376447493149163.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P11527576812244514449

`lt[2, A054054(comp[A011539(n+1)])]`
-/

namespace A037350.P11527576812244514449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A037350.P11527576812244514449

namespace A037350

/-- `lt[2, A054054(comp[A011539(n+1)])]` -/
def P11527576812244514449.Spec : Prop :=
  ∀ n, (P11527576812244514449.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P2569689792695505337

`eq[A055642(n), A102671(A007095(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037350

/-- `eq[A055642(n), A102671(A007095(n))]` -/
def P2569689792695505337.Spec : Prop :=
  ∀ n, (P2569689792695505337.a n : ℤ) = A037350 (n + 1)

theorem P2569689792695505337.correct : P2569689792695505337.Spec := by
  intro n
  simp only [A037350, Nat.add_sub_cancel]

end A037350

/-! ## A037350.P3531711316323178342

`eq[A055642(n), A102673(A052383(n+1))]`
-/

namespace A037350.P3531711316323178342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A052383 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037350.P3531711316323178342

namespace A037350

/-- `eq[A055642(n), A102673(A052383(n+1))]` -/
def P3531711316323178342.Spec : Prop :=
  ∀ n, (P3531711316323178342.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P4507046167829446959

`eq[A055642(n), A102671(A052413(n+1))]`
-/

namespace A037350.P4507046167829446959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A052413 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037350.P4507046167829446959

namespace A037350

/-- `eq[A055642(n), A102671(A052413(n+1))]` -/
def P4507046167829446959.Spec : Prop :=
  ∀ n, (P4507046167829446959.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P8422121223476291178

`eq[A055642(n), A102671(A052421(n+1))]`
-/

namespace A037350.P8422121223476291178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 (A052421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037350.P8422121223476291178

namespace A037350

/-- `eq[A055642(n), A102671(A052421(n+1))]` -/
def P8422121223476291178.Spec : Prop :=
  ∀ n, (P8422121223476291178.a n : ℤ) = A037350 (n + 1)

end A037350

/-! ## A037350.P6078496640132197519

`eq[A052383(n+1), A222210(A052405(n+1))]`
-/

namespace A037350.P6078496640132197519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (A052405 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037350.P6078496640132197519

namespace A037350

/-- `eq[A052383(n+1), A222210(A052405(n+1))]` -/
def P6078496640132197519.Spec : Prop :=
  ∀ n, (P6078496640132197519.a n : ℤ) = A037350 (n + 1)

end A037350

/-!
# A037351: Numbers whose base-3 and base-10 expansions have no digits in common.

The programs for A037351, there is no canonical definition to state claims against.
-/

/-! ## A037351.P11503770465697848223

`∑[A114567(A114541(∑[n+1]+2))]`
-/

namespace A037351.P11503770465697848223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 (A114541 (∑ j ∈ Finset.range (n + 1), f2 j + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037351.P11503770465697848223

/-!
# A037355: Numbers whose base-4 and base-8 expansions have no digits in common.

The programs for A037355, there is no canonical definition to state claims against.
-/

/-! ## A037355.P8170113038195915978

`lt[A369641(n+1), A279341(A250120(n))]`
-/

namespace A037355.P8170113038195915978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279341 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037355.P8170113038195915978

/-!
# A037359: Numbers whose base-5 and base-7 expansions have no digits in common.

The programs for A037359, there is no canonical definition to state claims against.
-/

/-! ## A037359.P17222813914953215933

`lt[A228085(A270339(n+1)), A049704(2*n)]`
-/

namespace A037359.P17222813914953215933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228085 (A270339 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049704 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037359.P17222813914953215933

/-! ## A037359.P8972781473151719081

`lt[A262888(2*n), A318326(A288728(n+1))]`
-/

namespace A037359.P8972781473151719081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262888 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (A288728 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037359.P8972781473151719081

/-! ## A037359.P12236364286571385742

`lt[A392364(2*(n+1)), A392357(A139710(n+1))]`
-/

namespace A037359.P12236364286571385742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392364 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392357 (A139710 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037359.P12236364286571385742

/-! ## A037359.P4815530981362363778

`lt[A159802(3*n+1), A175763(A296561(n+1))]`
-/

namespace A037359.P4815530981362363778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159802 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175763 (A296561 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037359.P4815530981362363778

/-!
# A037360: Numbers whose base-5 and base-8 expansions have no digits in common.

The programs for A037360, there is no canonical definition to state claims against.
-/

/-! ## A037360.P4102157171636320464

`lt[A073786(A280317(3*(n+1))), A318393(n+1)]`
-/

namespace A037360.P4102157171636320464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073786 (A280317 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037360.P4102157171636320464

/-!
# A037362: Numbers whose base-5 and base-10 expansions have no digits in common.

The programs for A037362, there is no canonical definition to state claims against.
-/

/-! ## A037362.P14598836430644435688

`lt[A066208(n+1), A103181(A082216(2*n+1))]`
-/

namespace A037362.P14598836430644435688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A082216 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037362.P14598836430644435688

/-! ## A037362.P9513011295634033296

`lt[A342142(A331472(2*n+1)), A351985(n)]`
-/

namespace A037362.P9513011295634033296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342142 (A331472 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351985 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037362.P9513011295634033296

/-! ## A037362.P12749863983323738032

`eq[A000010(A061494(n+1)), A102675(n)]`
-/

namespace A037362.P12749863983323738032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061494 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037362.P12749863983323738032

/-!
# A037365: Numbers whose base-6 and base-9 expansions have no digits in common.

The programs for A037365, there is no canonical definition to state claims against.
-/

/-! ## A037365.P11348794409313439170

`lt[A134374(A049502(n)), A051056(n)]`
-/

namespace A037365.P11348794409313439170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134374 (A049502 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037365.P11348794409313439170

/-!
# A037367: Numbers whose base-7 and base-8 expansions have no digits in common.

The programs for A037367, there is no canonical definition to state claims against.
-/

/-! ## A037367.P15125900551268846177

`∑[dr(A085720(A114297(n)))]`
-/

namespace A037367.P15125900551268846177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A085720 (A114297 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037367.P15125900551268846177

/-!
# A037370: Numbers whose base-8 and base-9 expansions have no digits in common.

The programs for A037370, there is no canonical definition to state claims against.
-/

/-! ## A037370.P14899343873815522765

`lt[A330195(n), A077769(n+1)]`
-/

namespace A037370.P14899343873815522765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037370.P14899343873815522765

/-! ## A037370.P18402184490425862336

`eq[A001285(A196601(n+1)), A175253(n+1)]`
-/

namespace A037370.P18402184490425862336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A196601 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037370.P18402184490425862336

/-! ## A037370.P7003313401449566295

`eq[A037831(n+1), A363003(A028422(n+1))]`
-/

namespace A037370.P7003313401449566295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363003 (A028422 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037370.P7003313401449566295

/-! ## A037370.P11563699787903972487

`lt[A037815(A001055(n+1)²²), A037831(n+1)]`
-/

namespace A037370.P11563699787903972487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 ((A001055 (n + 1) ^ 2) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037370.P11563699787903972487

/-! ## A037370.P15097896436307013101

`eq[A000045(A028422(n+1)+1)^n, A037831(n+1)]`
-/

namespace A037370.P15097896436307013101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028422 (n + 1) + 1).toNat ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037370.P15097896436307013101

/-!
# A037372: Positive numbers k such that every base-2 digit of k is a base-3 digit of k.

The programs for A037372, there is no canonical definition to state claims against.
-/

/-! ## A037372.P11765031222758717731

`lt[A043529(n), A043530(3*n+2)]`
-/

namespace A037372.P11765031222758717731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043530 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037372.P11765031222758717731

/-! ## A037372.P8619682671857303818

`lt[A212193(A005823(n+1)), A212193(n)!]`
-/

namespace A037372.P8619682671857303818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212193 (A005823 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A212193 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A037372.P8619682671857303818

/-!
# A037373: Positive numbers k such that every base-2 digit of k is a base-4 digit of k.

The programs for A037373, there is no canonical definition to state claims against.
-/

/-! ## A037373.P7972957844044321291

`record[A289813(A037385(n+1))]`
-/

namespace A037373.P7972957844044321291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A037385 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037373.P7972957844044321291

/-! ## A037373.P82033433127274963

`eq[A095269(n+1), A185682(2*(n+2))]`
-/

namespace A037373.P82033433127274963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185682 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037373.P82033433127274963

/-!
# A037374: Positive numbers k such that every base-2 digit of k is a base-5 digit of k.

The programs for A037374, there is no canonical definition to state claims against.
-/

/-! ## A037374.P7858855222709568214

`record[and((n+2)*2^n-1, A267648(n+4))]`
-/

namespace A037374.P7858855222709568214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 2) * 2 ^ n : ℤ) - 1) (A267648 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037374.P7858855222709568214

/-! ## A037374.P15763456492246948880

`record[floor(gcd(A136495(n+4)-1, n-1)-n/3)]`
-/

namespace A037374.P15763456492246948880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A136495 (n + 4) - 1) ((n : ℤ) - 1) : ℚ) - (n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037374.P15763456492246948880

/-! ## A037374.P18115141082147888871

`∑[A204123(∑[A080620(n)])]`
-/

namespace A037374.P18115141082147888871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204123 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037374.P18115141082147888871

/-! ## A037374.P4067426432606265975

`lt[A030639(n), cos(A030664(n))]`
-/

namespace A037374.P4067426432606265975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030639 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A030664 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A037374.P4067426432606265975

/-! ## A037374.P7988476007088101819

`eq[Δ[A030614(n+5)], A030639(n)]`
-/

namespace A037374.P7988476007088101819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030614 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030639 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A037374.P7988476007088101819

/-!
# A037375: Positive numbers k such that every base-2 digit of k is a base-6 digit of k.

The programs for A037375, there is no canonical definition to state claims against.
-/

/-! ## A037375.P9834886973917235747

`∑[gcd(A054866(n+1), A060186(n+3))]`
-/

namespace A037375.P9834886973917235747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054866 (n + 1)) (A060186 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037375.P9834886973917235747

/-!
# A037377: Positive numbers k such that every base-2 digit of k is a base-8 digit of k.

The programs for A037377, there is no canonical definition to state claims against.
-/

/-! ## A037377.P6269665078695556780

`∑[7^val(A174715(3*n+2)+1, 2)]`
-/

namespace A037377.P6269665078695556780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ SequenceMachineLib.valuation (A174715 (3 * n + 2) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037377.P6269665078695556780

/-! ## A037377.P2081037374032573867

`∑[A008461(A004526(n)+(2-n)^4)]`
-/

namespace A037377.P2081037374032573867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (A004526 n + (2 - (n : ℤ)) ^ 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037377.P2081037374032573867

/-! ## A037377.P17109673295345870383

`∑[gcd(A126739(n+1), A161343(n))]`
-/

namespace A037377.P17109673295345870383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126739 (n + 1)) (A161343 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037377.P17109673295345870383

/-! ## A037377.P886282858824754903

`∑[gcd(A151785(n+4), A304554(n+1))]`
-/

namespace A037377.P886282858824754903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151785 (n + 4)) (A304554 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037377.P886282858824754903

/-! ## A037377.P12395565484138376484

`A379096(n+1)%A054519(A147971(n+1))`
-/

namespace A037377.P12395565484138376484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379096 (n + 1)) (A054519 (A147971 (n + 1)).toNat)

end

end A037377.P12395565484138376484

/-!
# A037378: Positive numbers k such that every base-2 digit of k is a base-9 digit of k.

The programs for A037378, there is no canonical definition to state claims against.
-/

/-! ## A037378.P14126524256674340361

`A167621(n+1)+A109004(A051667(n))`
-/

namespace A037378.P14126524256674340361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167621 (n + 1) + A109004 (A051667 n).toNat

end

end A037378.P14126524256674340361

/-!
# A037379: Positive numbers k such that every base-2 digit of k is a base-10 digit of k.

The programs for A037379, there is no canonical definition to state claims against.
-/

/-! ## A037379.P13569176508013814553

`A028310(lt[A153152(n), A213217(n)])`
-/

namespace A037379.P13569176508013814553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037379.P13569176508013814553

/-! ## A037379.P2867214353211328959

`lt[A153152(n)+A033999(n), A213217(n)]`
-/

namespace A037379.P2867214353211328959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n + A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037379.P2867214353211328959

/-!
# A037386: Every base 3 digit of n is a base 10 digit of n.

The programs for A037386, there is no canonical definition to state claims against.
-/

/-! ## A037386.P1266671825442873591

`A114183(A114204(n))%A011756(n+1)`
-/

namespace A037386.P1266671825442873591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114183 (A114204 n).toNat) (A011756 (n + 1))

end

end A037386.P1266671825442873591

/-!
# A037387: Numbers k such that every base-4 digit of k is a base-5 digit of k.

The programs for A037387, there is no canonical definition to state claims against.
-/

/-! ## A037387.P13955848299358149941

`round((A020897(n²+1)-n)/3)`
-/

namespace A037387.P13955848299358149941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020897 (n ^ 2 + 1) - (n : ℤ) : ℚ) / 3)

end

end A037387.P13955848299358149941

/-! ## A037387.P10166963491899740340

`record[A136093(n+1)+floor(log(n+1))]`
-/

namespace A037387.P10166963491899740340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136093 (n + 1) + ⌊Real.log (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037387.P10166963491899740340

/-! ## A037387.P441367859044688094

`A346130(A076095(n+1))`
-/

namespace A037387.P441367859044688094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A076095 (n + 1)).toNat

end

end A037387.P441367859044688094

/-! ## A037387.P13969480056069560617

`∑[∑[A079343(A020072(n))]]`
-/

namespace A037387.P13969480056069560617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A020072 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037387.P13969480056069560617

/-! ## A037387.P4759016488798420258

`A156262(∑[A007498(n+1)])`
-/

namespace A037387.P4759016488798420258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037387.P4759016488798420258

/-!
# A037393: Numbers k such that every base-5 digit of k is a base-6 digit of k.

The programs for A037393, there is no canonical definition to state claims against.
-/

/-! ## A037393.P9893087121519156535

`A265564(∑[A265830(n)])`
-/

namespace A037393.P9893087121519156535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265564 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A037393.P9893087121519156535

/-! ## A037393.P4266839470069062754

`A265564(A265830(n)+A048330(n))`
-/

namespace A037393.P4266839470069062754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265564 (A265830 n + A048330 n).toNat

end

end A037393.P4266839470069062754

/-! ## A037393.P15965126322134440923

`A029952(lt[A322365(n), A071383(n+1)])`
-/

namespace A037393.P15965126322134440923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322365 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A037393.P15965126322134440923

/-! ## A037393.P7443409905447810205

`A048330(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A037393.P7443409905447810205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048330 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A037393.P7443409905447810205

/-! ## A037393.P2595931735119882699

`∑[A035103(A148933(n))]`
-/

namespace A037393.P2595931735119882699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (A148933 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037393.P2595931735119882699

/-!
# A037394: Numbers k such that every base-5 digit of k is a base-7 digit of k.

The programs for A037394, there is no canonical definition to state claims against.
-/

/-! ## A037394.P10236351094441048102

`A085701(A037430(n+1))`
-/

namespace A037394.P10236351094441048102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A037430 (n + 1)).toNat

end

end A037394.P10236351094441048102

/-! ## A037394.P8162173602642290595

`A037430(A000005(5^n))`
-/

namespace A037394.P8162173602642290595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037430 (A000005 (5 ^ n)).toNat

end

end A037394.P8162173602642290595

/-! ## A037394.P12861646491125516047

`A056926(A037430(n+1)²)`
-/

namespace A037394.P12861646491125516047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A037430 (n + 1) ^ 2).toNat

end

end A037394.P12861646491125516047

/-! ## A037394.P3071475402964977859

`A037430(A032551(n+1)+1)`
-/

namespace A037394.P3071475402964977859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037430 (A032551 (n + 1) + 1).toNat

end

end A037394.P3071475402964977859

/-!
# A037397: Every base 5 digit of n is a base 10 digit of n.

The programs for A037397, there is no canonical definition to state claims against.
-/

/-! ## A037397.P17589783727307988730

`eq[A008683(A270891(n)), A165033(n)]`
-/

namespace A037397.P17589783727307988730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A270891 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037397.P17589783727307988730

/-! ## A037397.P17815896347225661017

`lt[A165032(n), A010060(A195860(n+3))]`
-/

namespace A037397.P17815896347225661017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A195860 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A037397.P17815896347225661017

/-!
# A037398: Numbers k such that every base-6 digit of k is a base-7 digit of k.

The programs for A037398, there is no canonical definition to state claims against.
-/

/-! ## A037398.P16238367649156260169

`eq[A030101(A165051(n)), A088157(n)]`
-/

namespace A037398.P16238367649156260169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A165051 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A037398.P16238367649156260169

/-! ## A037398.P15607125603460605175

`A048331(A062399(n)+1)`
-/

namespace A037398.P15607125603460605175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048331 (A062399 n + 1).toNat

end

end A037398.P15607125603460605175

/-! ## A037398.P11587162738737691335

`A048331(A077741(n+1))`
-/

namespace A037398.P11587162738737691335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048331 (A077741 (n + 1)).toNat

end

end A037398.P11587162738737691335

/-! ## A037398.P9700174605387235223

`A085736(A048331(n+1))`
-/

namespace A037398.P9700174605387235223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A048331 (n + 1)).toNat

end

end A037398.P9700174605387235223

